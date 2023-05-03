local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingAWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Draenor Intro",{
next="Leveling Guides\\Draenor (10-60)\\Shadowmoon Valley (10-60)",
condition_suggested=function() return level >= 10 and level <= 50 and not completedq(35884) end,
image=ZGV.IMAGESDIR.."TanaanJungle",
startlevel=10,
endlevel=50,
},[[
step
talk Archmage Khadgar##78423
|tip You will only be able to accept one of these quests.
accept The Dark Portal##36881 |goto Blasted Lands/0 54.93,50.41 |or
accept Warlords of Draenor: The Dark Portal##34398 |goto Blasted Lands/0 54.93,50.41 |or
step
talk Archmage Khadgar##78558
Tell him _"FOR AZEROTH!"_
Speak with Archmage Khadgar |q 36881/1 |goto 54.93,50.41 |only if haveq(36881) or completedq(36881)
Speak with Archmage Khadgar |q 34398/1 |goto 54.93,50.41 |only if haveq(34398) or completedq(34398)
step
talk Archmage Khadgar##78558
turnin The Dark Portal##36881 |goto Assault on the Dark Portal/0 54.72,48.26 |only if haveq(36881) or completedq(36881)
turnin Warlords of Draenor: The Dark Portal##34398 |goto Assault on the Dark Portal/0 54.72,48.26 |only if haveq(34398) or completedq(34398)
accept Azeroth's Last Stand##35933 |goto Assault on the Dark Portal/0 54.72,48.26
step
kill Iron Grunt##78883+
collect Iron Horde Missive##113579 |q 35933/1 |goto 51.66,48.28
step
_Click the Complete Quest Box:_
turnin Azeroth's Last Stand##35933
accept Onslaught's End##34392
step
Enter the building |goto 52.14,41.97 < 7 |walk
click Mark of the Shadowmoon##233056
|tip Inside the building.
Disable the Northern Fel Spire |q 34392/1 |goto 51.03,41.97
step
Enter the building |goto 52.16,54.60 < 7 |walk
click Mark of the Bleeding Hollow##233057
|tip Inside the building.
Disable the Southern Fel Spire |q 34392/2 |goto 51.12,54.59
step
talk Archmage Khadgar##78558
|tip At the top of the stairs.
turnin Onslaught's End##34392 |goto 54.72,48.26
accept The Portal's Power##34393 |goto 54.72,48.26
step
Enter the building |goto 54.91,45.48 < 7 |walk
Enter Gul'dan's Prison |q 34393/1 |goto 54.91,46.76
|tip Inside the building.
step
click Mark of the Burning Blade##229598
|tip Inside the building.
Destroy the Mark of the Burning Blade |q 34393/2 |goto 56.01,46.32
step
click Mark of the Shattered Hand##229599
|tip Inside the building.
Destroy the Mark of the Shattered Hand |q 34393/3 |goto 57.26,48.18
step
click Mark of the Blackrock##229600
|tip Inside the building.
Destroy the Mark of the Blackrock |q 34393/4 |goto 56.02,50.18
step
click Stasis Rune##233104
|tip Inside the building.
Destroy the Stasis Rune |q 34393/5 |goto 55.99,48.24
step
talk Archmage Khadgar##78558
|tip At the top of the stairs.
turnin The Portal's Power##34393 |goto 54.72,48.26
accept The Cost of War##34420 |goto 54.72,48.26
step
Enter the building |goto 61.20,54.57 < 7 |walk
talk Archmage Khadgar##78558
|tip Inside the building.
turnin The Cost of War##34420 |goto 60.25,56.34
accept Blaze of Glory##34422 |goto 60.25,56.34
step
talk Rephuura##81763
accept Vengeance for the Fallen##35242 |goto 62.21,52.94
step
talk Taag##81762
accept Bled Dry##35240 |goto 62.27,52.97
stickystart "Slay_Bleeding_Hollow_Orcs"
step
use the Lucifrium Bead##113191
Burn the Bleeding Hollow Hut |q 34422/1 |goto 63.55,50.99 |count 1
step
use the Lucifrium Bead##113191
Burn the Bleeding Hollow Hut |q 34422/1 |goto 63.36,50.06 |count 2
step
use the Lucifrium Bead##113191
Burn the Bleeding Hollow Hut |q 34422/1 |goto 63.57,49.07 |count 3
step
click Bleeding Hollow Cage##229353
Open the Eastern Cage |q 35240/2 |goto 65.75,54.21
step
use the Lucifrium Bead##113191
Burn the Bleeding Hollow Hut |q 34422/1 |goto 67.36,55.16 |count 4
step
use the Lucifrium Bead##113191
Burn the Bleeding Hollow Hut |q 34422/1 |goto 66.97,56.23 |count 5
step
use the Lucifrium Bead##113191
Burn the Bleeding Hollow Hut |q 34422/1 |goto 66.03,56.42 |count 6
step
use the Lucifrium Bead##113191
Burn the Bleeding Hollow Hut |q 34422/1 |goto 61.34,60.73 |count 7
step
use the Lucifrium Bead##113191
Burn the Bleeding Hollow Hut |q 34422/1 |goto 60.77,62.25 |count 8
step
click Bleeding Hollow Cage##229353
Open the Southern Cage |q 35240/1 |goto 61.02,62.75
step
label "Slay_Bleeding_Hollow_Orcs"
Kill Bleeding Hollow enemies around this area
Slay #6# Bleeding Hollow Orcs |q 35242/1 |goto 64.94,59.76
step
talk Vindicator Maraad##78554
|tip He runs to this location.
turnin Vengeance for the Fallen##35242 |goto 71.50,62.70
step
talk Archmage Khadgar##78558
turnin Blaze of Glory##34422 |goto 71.53,62.37
turnin Bled Dry##35240 |goto 71.53,62.37
accept Altar Altercation##34423 |goto 71.53,62.37
step
talk Ariok##78556
Tell him _"Khadgar has asked us to go distract the Eye of Kilrogg."_
Speak with Ariok |q 34423/1 |goto 71.98,62.16
step
Escort Ariok to the Bleeding Altar |q 34423/2 | goto 76.66,53.88
|tip He will follow you.
step
clicknpc Blood Ritual Orb##83670
Destroy the Blood Ritual Orb |q 34423/3 |goto 76.66,53.88 |count 1
step
clicknpc Blood Ritual Orb##83670
Destroy the Blood Ritual Orb |q 34423/3 |goto 78.15,53.50 |count 2
step
Run up the stairs |goto 78.40,49.90 < 7 |only if walking
clicknpc Blood Ritual Orb##83670
Destroy the Blood Ritual Orb |q 34423/3 |goto 78.63,53.36
step
Cross the bridge |goto 72.3,46.3 < 20 |only if walking
Find Khadgar on the Tar'thog Bridge |q 34423/4 |goto 71.95,40.47
step
talk Archmage Khadgar##78558
turnin Altar Altercation##34423 |goto 71.95,40.47
accept The Kargathar Proving Grounds##34425 |goto 71.95,40.47
step
Watch the dialogue
|tip Follow Archmage Khadgar as he walks.
|tip He eventually walks to this location.
Follow Khadgar |q 34425/1 |goto 73.02,38.10
step
talk Archmage Khadgar##78558
turnin The Kargathar Proving Grounds##34425 |goto 73.02,38.10
accept A Potential Ally##34478 |goto 73.02,38.10
step
use the Frostflurry Focus##110799
Watch the dialogue
Free Exarch Maladaar |q 34478/1 |goto 68.95,33.64
step
talk Exarch Maladaar##79537
|tip He runs to this location.
turnin A Potential Ally##34478 |goto 73.23,38.86
step
talk Archmage Khadgar##78560
accept Kill Your Hundred##34429 |goto 73.02,38.10
step
Watch the dialogue
|tip Follow Archmage Khadgar as he walks.
Enter the Arena |q 34429/1 |goto 73.62,27.43
step
kill Shattered Hand Brawler##16593+
Watch the dialogue
Slay #100# Combatants in the Arena |q 34429/2 |goto 73.62,27.43
step
Enter the building |goto 68.01,20.54 < 15 |walk
Watch the dialogue
|tip Follow Archmage Khadgar as he walks.
|tip He eventually runs to this location inside the building.
Escape Kargath's Arena |q 34429/3 |goto Assault on the Dark Portal/1 81.32,50.28
step
talk Archmage Khadgar##78561
|tip Inside the building.
turnin Kill Your Hundred##34429 |goto 81.32,50.28
step
talk Vindicator Maraad##78554
|tip Inside the building.
accept The Shadowmoon Clan##34432 |goto 80.79,45.27
step
talk Luuka##79661
|tip Inside the building.
accept Masters of Shadow##34431 |goto 82.86,44.33
stickystart "Slay_Enemies_in_the_Umbral_Halls"
step
Follow the path |goto 72.17,43.94 < 7 |walk
Follow the path |goto 60.74,32.54 < 7 |walk
Find Ankova the Fallen |q 34431/3 |goto 45.48,16.19
|tip Inside the building.
step
talk Yrel##78994
|tip Inside the building.
accept Yrel##34434 |goto 45.09,15.93
step
Escort Yrel to Safety |q 34434/1 |goto 55.28,40.89
|tip She will follow you.
|tip Inside the building.
step
Watch the dialogue
talk Yrel##78994
|tip She runs to this location.
turnin Yrel##34434 |goto 50.55,48.37
step
talk Qiana Moonshadow##79316
|tip She walks around this area.
turnin The Shadowmoon Clan##34432 |goto 52.57,50.60
step
kill Ungra##79583 |q 34431/1 |goto 43.75,78.32
|tip Inside the building.
step
Follow the path |goto 46.96,30.85 < 10 |walk
kill Taskmaster Gurran##79585 |q 34431/2 |goto 56.02,20.09
|tip He walks around this area.
|tip Inside the building.
step
label "Slay_Enemies_in_the_Umbral_Halls"
Kill enemies around this area
|tip Inside the building. |notinsticky
Slay #10# Enemies in Umbral Halls |q 34432/1 |goto 45.99,50.54
step
talk Exarch Maladaar##79537
|tip Inside the building.
turnin Masters of Shadow##34431 |goto 50.29,48.21
accept Keli'dan the Breaker##34436 |goto 50.29,48.21
step
kill Keli'dan the Breaker##79702 |q 34436/1 |goto 35.19,50.25
|tip Inside the building.
step
Watch the dialogue
talk Archmage Khadgar##78562
|tip He runs to this location.
turnin Keli'dan the Breaker##34436 |goto Assault on the Dark Portal/0 49.51,14.39
step
talk Vindicator Maraad##78554
accept Prepare for Battle##35019 |goto 48.55,14.17
step
Kill Blackrock enemies around this area
click Iron Horde Weapon Rack##231816+
|tip They look like large wooden racks with weapons on them on the ground around this area.
click Iron Horde Weapon##231818+
|tip They look like various weapons on the ground around this area.
collect 30 Blackrock Weapon##112337 |q 35019/1 |goto 43.54,18.71
step
talk Vindicator Maraad##78554
turnin Prepare for Battle##35019 |goto 48.54,14.17
step
talk Cordana Felsong##78430
accept The Battle of the Forge##34439 |goto 49.49,14.21
stickystart "Kill_Blackrock_Grunts"
step
kill 3 Ogron Warcrusher##80775 |q 34439/2 |goto 43.51,19.50
step
label "Kill_Blackrock_Grunts"
kill 15 Blackrock Grunt##80786 |q 34439/1 |goto 43.51,19.50
step
talk Farseer Drek'Thar##78996
turnin The Battle of the Forge##34439 |goto 43.04,26.38
step
talk Farseer Drek'Thar##78996
accept Ga'nar of the Frostwolf##34442 |goto 43.04,26.38
step
talk Hansel Heavyhands##78569
accept The Gunpowder Plot##34987 |goto 44.09,29.57
step
talk Thaelin Darkanvil##78568
accept The Shadow of the Worldbreaker##34958 |goto 44.07,29.69
step
Kill Blackrock enemies around this area
collect Worldbreaker Schematics##117978 |q 34958/1 |goto 42.91,34.20
step
Enter the building |goto 45.53,31.72 < 7 |walk
click Blackrock Powder Keg##231119
|tip Inside the building.
collect Blackrock Powder Keg##112323 |q 34987/1 |goto 46.99,32.15
step
talk Thaelin Darkanvil##78568
turnin The Shadow of the Worldbreaker##34958 |goto 44.07,29.69
step
click Makeshift Plunger##231066
Depress the Makeshift Plunger |q 34987/2 |goto 44.11,29.61
step
talk Hansel Heavyhands##78569
turnin The Gunpowder Plot##34987 |goto 44.09,29.57
step
talk Ga'nar##79917
|tip He walks around this area.
turnin Ga'nar of the Frostwolf##34442 |goto 41.85,41.92
accept Polishing the Iron Throne##34925 |goto 41.85,41.92
step
Enter the building |goto 43.99,37.93 < 10 |walk
kill Overseer Gotrigg##80574
|tip Inside the building.
collect Ga'nar's Shackle Key##112243 |q 34925/1 |goto 45.64,39.77
step
talk Ga'nar##79917
|tip He walks around this area.
turnin Polishing the Iron Throne##34925 |goto 41.85,41.92
accept The Prodigal Frostwolf##34437 |goto 41.85,41.92
step
talk Farseer Drek'Thar##78996
turnin The Prodigal Frostwolf##34437 |goto 43.04,26.38
step
talk Archmage Khadgar##78563
accept Taking a Trip to the Top of the Tank##35747 |goto 43.14,28.74
step
talk Thaelin Darkanvil##78568
Tell him _"Yes. I need you to help me operate that enormous tank."_
Speak with Thaelin |q 35747/1 |goto 44.07,29.69
step
kill Gogluk##86039 |q 35747/2 |goto 37.40,48.31
step
Run up the chain |goto 38.14,47.43 < 10 |only if walking
Climb the Rear Chains of the Iron Worldbreaker |q 35747/3 |goto 40.11,48.43
step
talk Thaelin Darkanvil##80521
turnin Taking a Trip to the Top of the Tank##35747 |goto 40.11,48.43
accept A Taste of Iron##34445 |goto 40.11,48.43
step
click Worldbreaker Side Turret##231261
Begin Controlling the Worldbreaker Side Turret |q 34445/1 |goto 40.17,49.11
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #200# Iron Horde |q 34445/2
step
click Main Cannon Trigger##232538
Press the Main Cannon Trigger |q 34445/3 |goto 40.30,48.31
step
talk Thaelin Darkanvil##80521
turnin A Taste of Iron##34445 |goto 40.11,48.43
accept The Home Stretch##35884 |goto 40.11,48.43
step
Watch the dialogue
|tip Follow your allies as they run.
Get to the Docks |q 35884/1 |goto 44.40,80.68
step
talk Archmage Khadgar##78563
|tip He runs to this location.
turnin The Home Stretch##35884 |goto 44.40,80.68
accept Step Three: Prophet!##34575 |goto 44.40,80.68
step
Watch the dialogue
Escape the Iron Horde |goto Shadowmoon Valley D/0 27.18,7.88 < 10 |noway |c |q 34575
step
talk Prophet Velen##79206
turnin Step Three: Prophet!##34575 |goto Shadowmoon Valley D/0 26.97,8.10
accept Finding a Foothold##34582 |goto Shadowmoon Valley D/0 26.97,8.10
step
Watch the dialogue
|tip Follow Prophet Velen as he walks.
Accompany Prophet Velen to the Lunarfall Ruins |q 34582/1 |goto Lunarfall/0 18.87,36.49
step
Follow the path |goto 20.22,36.23 < 30 |only if walking
talk Vindicator Maraad##79470
turnin Finding a Foothold##34582 |goto 30.02,34.36
accept For the Alliance!##34583 |goto 30.02,34.36
step
clicknpc Alliance Banner##120954
Plant the Alliance Banner |q 34583/1 |goto 32.61,33.36
step
Watch the dialogue
|tip Wait for Baron Alexston to appear and walk to this location.
Click Here Once Baron Alexston Arrives |confirm |goto 32.71,34.04 |q 34583
step
talk Baros Alexston##79243
turnin For the Alliance!##34583 |goto 32.71,34.04
accept Looking for Lumber##34584 |goto 32.71,34.04
accept Ravenous Ravens##34616 |goto 32.71,34.04
stickystart "Kill_Lunarfall_Ravens"
step
click Tree Marking##230527+
|tip They look like poles with flags on them planted in the ground around this area.
Mark #8# Trees for Lumberjacks |q 34584/1 |goto 47.85,50.20
step
label "Kill_Lunarfall_Ravens"
kill 6 Lunarfall Raven##82037 |q 34616/1 |goto 47.85,50.20
step
talk Baros Alexston##79243
turnin Looking for Lumber##34584 |goto 32.71,34.04
turnin Ravenous Ravens##34616 |goto 32.71,34.04
step
talk Yrel##79567
accept Quakefist##34585 |goto 31.37,35.83
step
kill Quakefist##81360 |q 34585/1 |goto 40.98,77.74
step
talk Yrel##79567
turnin Quakefist##34585 |goto 31.37,35.83
step
talk Baros Alexston##79243
accept Establish Your Garrison##34586 |goto 32.71,34.04
step
talk Baros Alexston##79243
Tell him _"We have everything we need. It's time to build the garrison."_
Speak with Baros to Build your Garrison |q 34586/1 |goto 32.71,34.04
step
#include "Garrison_BAlexston"
turnin Establish Your Garrison##34586
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Shadowmoon Valley (10-60)",{
next="Leveling Guides\\Draenor (10-60)\\Gorgrond (15-60)",
condition_suggested=function() return level >= 10 and level <= 50 and not completedq(33256) end,
image=ZGV.IMAGESDIR.."ShadowmoonValleyDraenor",
startlevel=10,
},[[
stickystart "Collect_Garrison_Resources_36592"
step
#include "Garrison_BAlexston"
accept Keeping it Together##35176
accept Ship Salvage##35166
step
#include "Garrison_Maraad"
accept Pale Moonlight##35174
step
#include "Garrison_Brightstone"
Tell her _"Time to get back to work."_
Speak with Assistant Brightstone About Her Work Ethic |q 35176/1
step
#include "Garrison_DLongdrink"
fpath Lunarfall Garrison
step
#include "Garrison_Cache"
Check the Garrison Cache |q 35176/3
step
#include "Garrison_Shelly"
Tell her _"Gather Shelly's report."_
Gather Shelly's Report |q 35176/2
step
#include "Garrison_BAlexston"
turnin Keeping it Together##35176
step
Leave Your Garrison |goto Lunarfall/0 50.00,50.00 > 10000 |noway |c |q 35174
|tip Follow the road northwest.
stickystart "Kill_Pale_Devourers"
stickystart "Collect_Drudgeboat_Salvage"
step
kill Gnaw Bloodseeker##81670 |q 35174/1 |goto Shadowmoon Valley D/0 25.59,5.78
|tip He fights around this area.
step
label "Kill_Pale_Devourers"
kill 8 Pale Devourer##79205 |q 35174/2 |goto 26.55,8.76
step
label "Collect_Drudgeboat_Salvage"
Kill enemies around this area
click Drudgeboat Salvage##231851+
|tip They look like wooden barrels and boxes on the ground around this area.
collect 15 Drudgeboat Salvage##112696 |q 35166/1 |goto 27.13,5.56
step
Follow the Road to Your Garrison |goto 27.2,14.5 < 30 |c |q 35166
step
#include "Garrison_BAlexston"
turnin Ship Salvage##35166
step
#include "Garrison_Maraad"
turnin Pale Moonlight##35174
step
#include "Garrison_BAlexston"
accept Build Your Barracks##34587
step
click Garrison Blueprint: Barracks##231855
Find the Blueprints |q 34587/1 |goto Lunarfall/0 45.18,40.45
step
use Garrison Blueprint: Barracks, Level 1##111956
Learn the Blueprints |q 34587/2
step
#include "Garrison_ArchitectTable"
|tip Select the "Large" tab at the top.
|tip Drag the "Barracks" to a Large Empty Plot.
Build Your Barracks |q 34587/3
step
click Finalize Garrison Plot##236262
Finalize Your Plot |q 34587/4 |goto Lunarfall/0 44.47,43.36
step
#include "Garrison_Maraad"
turnin Build Your Barracks##34587
accept Qiana Moonshadow##34646
step
Leave Your Garrison |goto Lunarfall/0 50.00,50.00 > 10000 |noway |c |q 34646
|tip Follow the road south.
step
talk Qiana Moonshadow##79446
Speak with Qiana Moonshadow |q 34646/1 |goto Shadowmoon Valley D/0 29.93,29.20
stickystart "Slay_Pale_Creatures"
stickystart "Collect_Mushroom_Juice"
step
accept Bonus Objective: Bloodthorn Cave##34504 |goto Shadowmoon Valley D/15 78.42,34.09
|tip You will accept this quest automatically.
|tip In the entrance of the cave.
step
talk Roona##70902
|tip Inside the cave.
accept A Matter of Life and Death##33419 |goto 60.03,31.97
step
talk Diaani##78889
|tip Inside the cave.
Save Diaani |q 33419/2 |goto 52.22,54.19
step
Follow the path |goto 25.58,28.36 < 15 |walk
Follow the path up |goto 25.67,60.78 < 7 |walk
talk Arekk##78890
|tip Inside the cave.
Save Arekk |q 33419/1 |goto 32.78,52.62
step
Follow the path |goto 22.55,64.63 < 10 |walk
talk Zuulo##78891
|tip Inside the cave.
Save Zuulo |q 33419/3 |goto 50.23,68.38
step
talk Roona##70902
|tip Inside the cave.
turnin A Matter of Life and Death##33419 |goto 60.03,31.97
step
label "Slay_Pale_Creatures"
Kill enemies around this area
|tip Inside the cave. |notinsticky
Slay #12# Pale Creatures |q 34504/1 |goto 48.31,21.87
|only if haveq(34504) and level < 50
step
label "Collect_Mushroom_Juice"
clicknpc Juicy Mushroom##78904+
|tip They look like red-capped mushrooms of various size on the ground around this area.
|tip Fill up the beaker bottle at the bottom of the screen. |notinsticky
|tip Inside the cave. |notinsticky
Collect #20# Mushroom Juice |q 34504/2 |goto 48.31,21.87
|only if haveq(34504) and level < 50
step
#include "Garrison_QMoonshadow"
turnin Qiana Moonshadow##34646
step
#include "Garrison_LtThorn"
accept Delegating on Draenor##34692
step
#include "Garrison_CommandTable"
|tip Begin the "Killing the Corrupted" mission.
Use the Command Table |q 34692/1
step
#include "Garrison_LtThorn"
turnin Delegating on Draenor##34692
accept Ashran Appearance##36624
step
#include "Garrison_Yrel"
accept A Hero's Welcome##33075
step
#include "Garrison_DLongdrink"
Tell him _"Take me to Stormshield in Ashran."_
Speak with Dungar Longdrink |q 36624/1
step
Fly to Stormshield |offtaxi |goto Stormshield/0 31.23,49.26 |q 36624 |notravel
step
talk Private Tristan##86065
turnin Ashran Appearance##36624 |goto Stormshield/0 32.05,49.99
accept Host Howell##36626 |goto Stormshield/0 32.05,49.99
step
Enter the building |goto 36.14,72.77 < 7 |walk
talk Lieutenant Howell##86069
|tip Inside the building.
turnin Host Howell##36626 |goto 35.51,75.86
accept Inspiring Ashran##36629 |goto 35.51,75.86
step
talk Jaesia Rosecheer##85956
|tip Inside the building.
Speak with Jaesia Rosecheer |q 36629/1 |goto 35.71,77.89
step
Enter the building |goto 43.91,70.66 < 7 |walk
talk Vindicator Nuurem##85932
|tip Inside the building.
Speak with Vindicator Nuurem |q 36629/3 |goto 46.61,76.76
step
talk Knewbie McGreen##86148
Speak with a New Recruit |q 36629/2 |goto 62.7,41.7
step
Enter the building |goto 36.14,72.77 < 7 |walk
talk Lieutenant Howell##86069
|tip Inside the building.
turnin Inspiring Ashran##36629 |goto 35.51,75.86
accept A Surly Dwarf##36630 |goto 35.51,75.86
step
Enter the building |goto 47.37,32.01 < 7 |walk
talk Delvar Ironfist##86084
|tip Inside the building.
turnin A Surly Dwarf##36630 |goto 48.00,30.63
accept Delvar Ironfist##36633 |goto 48.00,30.63
step
Return to Your Garrison |goto Lunarfall/0 50.00,50.00 < 10000 |c |q 33075
step
Leave Your Garrison |goto Lunarfall/0 50.00,50.00 > 10000 |noway |c |q 33075
|tip Follow the road south.
step
Watch the dialogue
Find Samaara at Embaari Village |q 33075/1 |goto Shadowmoon Valley D/0 45.67,38.84
step
talk Eonor##76840
fpath Embaari Village |goto 45.68,38.86
step
talk Samaara##75005
turnin A Hero's Welcome##33075 |goto 46.04,38.92
accept Dark Enemies##33765 |goto 46.04,38.92
step
talk Efee##80196
accept Think of the Children!##33070 |goto 46.64,37.74
step
talk Vindicator Tenuum##74343
accept Closing the Door##33905 |goto 46.65,37.29
stickystart "Close_Void_Portals"
stickystart "Kill_Shadowmoon_Voidmancers"
step
Enter the building |goto 48.83,30.84 < 10 |walk
talk Hakaam##62769
|tip Inside the building.
Save Hakaam |q 33070/1 |goto 48.98,30.90
step
Enter the building |goto 51.93,32.74 < 10 |walk
talk Ariaana##71502
|tip Inside the building.
accept In Need of a Hero##33813 |goto 52.03,32.66
step
click Draenei Bucket##230883
|tip They look like small buckets of water on the ground around this area.
collect Draenei Bucket##111908 |goto 51.79,32.53 |q 33813
step
Enter the building |goto 51.92,32.75 < 10 |walk
use the Draenei Bucket##111908
|tip Use it on the blue fire.
|tip Inside the building.
Douse the Bookshelf Fire |q 33813/1 |goto 52.09,32.86
step
click Draenei Bucket##230883
|tip They look like small buckets of water on the ground around this area.
collect Draenei Bucket##111908 |goto 51.79,32.53 |q 33813
step
Enter the building |goto 51.92,32.75 < 10 |walk
use the Draenei Bucket##111908
|tip Use it on the blue fire.
|tip Inside the building.
Douse the Floor Fire |q 33813/2 |goto 52.04,32.86
step
click Draenei Bucket##230883
|tip They look like small buckets of water on the ground around this area.
collect Draenei Bucket##111908 |goto 51.79,32.53 |q 33813
step
Enter the building |goto 51.92,32.75 < 10 |walk
use the Draenei Bucket##111908
|tip Use it on the blue fire.
|tip Inside the building.
Douse the Table Fire |q 33813/3 |goto 52.02,32.93
step
talk Ariaana##71502
|tip Inside the building.
turnin In Need of a Hero##33813 |goto 52.03,32.66
Save Ariaana |q 33070/3 |goto 52.03,32.66
step
Enter the building |goto 51.81,35.95 < 10 |walk
talk Rastaak##64224
|tip Inside the building.
Save Rastaak |q 33070/2 |goto 51.94,35.99
step
label "Close_Void_Portals"
kill Shadowmoon Portalmaster##80181+
|tip They are the ones channeling on the blue swirling portals on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Close #3# Void Portals |q 33905/1 |goto 51.89,34.65
step
label "Kill_Shadowmoon_Voidmancers"
kill 8 Shadowmoon Voidmancer##80162 |q 33765/1 |goto 51.89,34.65
step
Follow the path |goto 52.79,36.30 < 30 |only if walking
talk Prophet Velen##74043
turnin Think of the Children!##33070 |goto 49.12,38.51
turnin Dark Enemies##33765 |goto 49.12,38.51
turnin Closing the Door##33905 |goto 49.12,38.51
accept Shadows Awaken##34019 |goto 49.12,38.51
step
Watch the dialogue
Confront Ner'zhul |q 34019/1 |goto 49.35,37.26
step
Watch the dialogue
kill Karnoth##75043 |q 34019/2 |goto 49.43,36.87
|tip He will drop an item for each crafting profession you currently have learned.
|tip The items will each start a quest.
|tip Gathering and Secondary professions do not get a quest item.
step
talk Prophet Velen##74043
turnin Shadows Awaken##34019 |goto 49.30,37.41
accept Into Twilight##33072 |goto 49.30,37.41
step
talk Farmer Gehaar##82256
accept The Southern Wilds##35444 |goto 49.04,38.63
step
_Open Your Profession Windows:_
|tip Open all of the profession windows below for all of the professions you have:
|tip You must do this in order for the following steps to work correctly.
Alchemy		|cast Alchemy##2259		|only if skill("Alchemy") >= 1
Engineering	|cast Engineering##4036		|only if skill("Engineering") >= 1
Jewelcrafting	|cast Jewelcrafting##25229	|only if skill("Jewelcrafting") >= 1
Blacksmithing	|cast Blacksmithing##2018	|only if skill("Blacksmithing") >= 1
Enchanting	|cast Enchanting##7411		|only if skill("Enchanting") >= 1
Tailoring	|cast Tailoring##3908		|only if skill("Tailoring") >= 1
Leatherworking	|cast Leatherworking##2108	|only if skill("Leatherworking") >= 1
Inscription	|cast Inscription##45357	|only if skill("Inscription") >= 1
|tip
Click Here After Opening Your Profession Windows |confirm |q 36100 |future
|only if skill("Alchemy") >= 1 or skill("Engineering") >= 1 or skill("Jewelcrafting") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1 or skill("Tailoring") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1
step
use the Drained Crystal Fragment##115507
accept A Power Lost##36408
|only if itemcount(115507) > 0 or haveq(36408)
step
talk Artificer Baleera##84830
turnin A Power Lost##36408 |goto Shadowmoon Valley D/0 46.96,38.65
accept Restoration##36409 |goto Shadowmoon Valley D/0 46.96,38.65
|only if haveq(36408) or completedq(36408)
step
kill Morakh Chillwhisper##85394
Retrieve the Empowered Crystal |q 36409/1 |goto 50.44,20.09
|only if haveq(36409) or completedq(36409)
step
talk Artificer Baleera##84830
turnin Restoration##36409 |goto 46.96,38.65
|only if haveq(36409) or completedq(36409)
step
use the Gnomish Location Transponder##115278
accept Transponder 047-B##36286
|only if itemcount(115278) > 0 or haveq(36286)
step
talk Goggles##84825
turnin Transponder 047-B##36286 |goto Shadowmoon Valley D/0 60.75,32.69
accept Snatch 'n' Grab##36287 |goto Shadowmoon Valley D/0 60.75,32.69
|only if haveq(36286) or completedq(36286)
step
click Pilfered Parts##234235+
|tip They look like tan bags on the ground around this area.
collect Pilfered Parts##115279 |q 36287/1 |goto 66.9,27.5
|only if haveq(36287) or completedq(36287)
step
talk Goggles##84825
turnin Snatch 'n' Grab##36287 |goto 60.78,32.68
|only if haveq(36287) or completedq(36287)
step
use the Mysterious Flask##113103
accept The Mysterious Flask##35342
|only if itemcount(113103) > 0 or haveq(35342)
step
talk Aenir##82466
turnin The Mysterious Flask##35342 |goto Lunarfall/0 47.64,45.51
accept The Young Alchemist##35343 |goto Lunarfall/0 47.61,45.46
|only if haveq(35342) or completedq(35342)
step
talk Abatha##82497
turnin The Young Alchemist##35343 |goto Shadowmoon Valley D/0 55.89,41.03
accept The Missing Father##35344 |goto Shadowmoon Valley D/0 55.93,41.06
|only if haveq(35343) or completedq(35343)
step
talk Telos##82496
turnin The Missing Father##35344 |goto 54.02,45.74
accept Shocking Assistance##35345 |goto 54.02,45.74
|only if haveq(35344) or completedq(35344)
step
kill Shockscale Eel##80653+
collect 100 Shockscale##113248 |q 35345/1 |goto 54.0,45.1
|only if haveq(35345) or completedq(35345)
step
talk Abatha##82497
turnin Shocking Assistance##35345 |goto 55.88,41.03
|only if haveq(35345) or completedq(35345)
step
use Haephest's Satchel##115343
accept The Strength of Iron##36309
|only if itemcount(115343) > 0 or haveq(36309)
step
talk Haephest##80827
turnin The Strength of Iron##36309 |goto Shadowmoon Valley D/0 45.22,38.88
accept Father and Son##36311 |goto Shadowmoon Valley D/0 45.22,38.88
|only if haveq(36309) or completedq(36309)
step
talk Duna##85083
Tell him _"Yes, come with me."_
Find Duna |q 36311/1 |goto 51.09,36.93
|only if haveq(36311) or completedq(36311)
step
talk Haephest##80827
turnin Father and Son##36311 |goto 45.22,38.87
|only if haveq(36311) or completedq(36311)
step
use the Mysterious Satchel##114984
accept A Mysterious Satchel##36239
|only if itemcount(114984) > 0 or haveq(36239)
step
talk Sha'la##84724
turnin A Mysterious Satchel##36239 |goto Shadowmoon Valley D 57.9,21.7
accept Slow and Steady##36240 |goto Shadowmoon Valley D 57.86,21.59
|only if haveq(36239) or completedq(36239)
step
kill Moonglow Sporebat##82323+
collect 5 Toxic Umbrafen Herbs##114986 |q 36240/1 |goto Shadowmoon Valley D 55.78,20.45
|only if haveq(36240) or completedq(36240)
step
talk Sha'la##84724
turnin Slow and Steady##36240 |goto Shadowmoon Valley D 57.90,21.63
accept The Power of Preservation##36241 |goto Shadowmoon Valley D 57.88,21.61
|only if haveq(36240) or completedq(36240)
step
talk Ardule D'na##84728
turnin The Power of Preservation##36241 |goto 58.31,20.84
|only if haveq(36241) or completedq(36241)
step
use the Dirty Note##114877
accept A Call for Huntsman##36176
|only if itemcount(114877) > 0 or haveq(36176)
step
talk Fanara##84385
turnin A Call for Huntsman##36176 |goto Shadowmoon Valley D/0 44.23,40.94
accept Friendly Competition##36177 |goto Shadowmoon Valley D/0 44.23,40.94
|only if haveq(36176) or completedq(36176)
stickystart "Collect_Silverwing_Talons"
step
kill Shadowmoon Stalker##82308+
|tip They are flying in the air around this area.
collect 4 Shadowmooon Hide##114900 |q 36177/1 |goto 41.62,44.76
|only if haveq(36177) or completedq(36177)
step
label "Collect_Silverwing_Talons"
kill Silverwing Kaliri##82175+
|tip They are flying in the air around this area.
collect 3 Silverwing Talon##114901 |q 36177/2 |goto 41.62,44.76
|only if haveq(36177) or completedq(36177)
step
talk Fanara##84385
turnin Friendly Competition##36177 |goto 44.23,40.94
accept Fair Trade##36185 |goto 44.23,40.94
|only if haveq(36177) or completedq(36177)
step
talk Garaal##84492
turnin Fair Trade##36185 |goto 44.98,39.18
|only if haveq(36185) or completedq(36185)
step
use the Cryptic Tome of Tailoring##114972
accept The Cryptic Tome of Tailoring##36236
|only if itemcount(114972) > 0 or haveq(36236)
step
talk Aerun##84776
turnin The Cryptic Tome of Tailoring##36236 |goto Lunarfall/0 43.0,54.8
accept Ameeka, Master Tailor##36262 |goto Lunarfall/0 43.0,54.8
|only if haveq(36236) or completedq(36236)
step
talk Ameeka##84523
turnin Ameeka, Master Tailor##36262 |goto Shadowmoon Valley D/0 58.26,26.58
accept The Clothes on Their Backs##36266 |goto Shadowmoon Valley D/0 58.26,26.56
|only if haveq(36262) or completedq(36262)
step
Kill Shadowmoon enemies around this area
|tip Only Shadowmoon Darkcasters and Ritualists will drop the quest item.
|tip Kill the totems they put on the ground as fast as you can, so they are easier to kill.
collect 10 Ceremonial Shadowmoon Robes##115013 |q 36266/1 |goto 36.9,64.3
|only if haveq(36266) or completedq(36266)
step
talk Ameeka##84523
turnin The Clothes on Their Backs##36266 |goto 58.27,26.56
accept Hexcloth##36269 |goto 58.27,26.56
|only if haveq(36266) or completedq(36266)
step
click Flytrap Ichor##236445
Create the Hexweave Swatch |q 36269/1 |goto 58.3,26.6
|only if haveq(36269) or completedq(36269)
step
talk Ameeka##84523
turnin Hexcloth##36269 |goto 58.26,26.56
|only if haveq(36269) or completedq(36269)
step
use Enchanted Highmaul Bracer##115281
|tip This item was dropped by Karnoth while doing the quest "Shadows Awaken".
accept Enchanted Highmaul Bracer##36308
|only if itemcount(115281) > 0 or haveq(36308)
step
talk Eileese Shadowsong##83491
turnin Enchanted Highmaul Bracer##36308 |goto Lunarfall/0 50.1,42.1
accept The Arakkoan Enchanter##36310 |goto Lunarfall/0 50.1,42.1
|only if haveq(36308) or completedq(36308)
step
talk Arcanist Delath##84966
turnin The Arakkoan Enchanter##36310 |goto Shadowmoon Valley D/0 37.34,72.59
accept Failed Apprentice##36313 |goto Shadowmoon Valley D/0 37.34,72.59
|only if haveq(36310) or completedq(36310)
step
talk Deema##84961
|tip She can be in any of the bubbles around this area.
Free Deema |q 36313/1 |goto 36.0,72.8
|only if haveq(36313) or completedq(36313)
step
talk Deema##84961
turnin Failed Apprentice##36313 |goto 35.70,73.80
accept Oru'kai's Staff##36315 |goto 35.70,73.80
|only if haveq(36313) or completedq(36313)
step
use Oru'kai's Ember Ring##115372
Use Oru'kai's Ember Ring to Counter the Time Field |q 36315/1 |goto 35.85,72.79
|only if haveq(36315) or completedq(36315)
step
talk Arcanist Delath##84966
turnin Oru'kai's Staff##36315 |goto 37.34,72.60
|only if haveq(36315) or completedq(36315)
step
#include "Garrison_BAlexston"
accept Building for Professions##36100
|only if skill("Jewelcrafting") >= 1 or skill("Engineering") >= 1 or skill("Alchemy") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1 or skill("Tailoring") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1
step
use the Garrison Blueprint: Gem Boutique, Level 1##111814
Click Here After Using the Blueprint |confirm |q 36100
|only if skill("Jewelcrafting") >= 1
step
use the Garrison Blueprint: Engineering Works, Level 1##109258
Click Here After Using the Blueprint |confirm |q 36100
|only if skill("Engineering") >= 1
step
use the Garrison Blueprint: Alchemy Lab, Level 1##111812
Click Here After Using the Blueprint |confirm |q 36100
|only if skill("Alchemy") >= 1
step
use the Garrison Blueprint: The Forge, Level 1##111813
Click Here After Using the Blueprint |confirm |q 36100
|only if skill("Blacksmithing") >= 1
step
use the Garrison Blueprint: Scribe's Quarters, Level 1##111815
Click Here After Using the Blueprint |confirm |q 36100
|only if skill("Inscription") >= 1
step
use the Garrison Blueprint: The Tannery, Level 1##111818
Click Here After Using the Blueprint |confirm |q 36100
|only if skill("Leatherworking") >= 1
step
use the Garrison Blueprint: Tailoring Emporium, Level 1##111816
Click Here After Using the Blueprint |confirm |q 36100
|only if skill("Tailoring") >= 1
step
use the Garrison Blueprint: Enchanter's Study, Level 1##111817
Click Here After Using the Blueprint |confirm |q 36100
|only if skill("Enchanting") >= 1
step
#include "Garrison_ArchitectTable"
|tip Click the "Small" tab.
|tip Drag your profession building to the Small Empty Plot.
Build a Profession Building |q 36100/1
|only if haveq(36100) or completedq(36100)
step
#include "Garrison_BAlexston"
turnin Building for Professions##36100
|only if haveq(36100) or completedq(36100)
step
#include "Garrison_Maraad"
accept Migrant Workers##34778
step
talk Foreman Zipfizzle##81912
Tell him _"Very good, Zipfizzle. Move out."_
Speak with Zipfizzle  |q 34778/1 |goto 44.34,51.01
step
#include "Garrison_DLongdrink"
Take a Flight to Embaari Village, Shadowmoon Valley |ontaxi |q 34778
step
Fly to Embaari Village |goto Shadowmoon Valley D/0 45.69,39.00 < 10 |c |q 34778 |notravel
step
Follow the road |goto Shadowmoon Valley D/0 48.21,40.60 < 30 |only if walking
talk Foreman Zipfizzle##81912
turnin Migrant Workers##34778 |goto Shadowmoon Valley D/0 55.99,32.61
accept Circle the Wagon##34779 |goto Shadowmoon Valley D/0 55.99,32.61
step
Locate the Missing Wagon |q 34779/1 |goto 51.32,28.50
step
Watch the dialogue
Kill the enemies that attack
|tip Be careful not to pull too many.
Defend the Camp |q 34779/2 |goto 51.32,28.50
step
Watch the dialogue
|tip Follow Vindicator Maraad and protect him as he walks.
|tip He eventually walks to this location.
Escort the Laborers |q 34779/3 |goto 55.93,32.80
step
talk Exarch Akama##80078
turnin Circle the Wagon##34779 |goto 55.97,32.85
step
talk Exarch Hataaru##80075
accept Invisible Ramparts##34780 |goto 56.24,32.62
step
click Charged Resonance Crystal
Carry the Crystal |havebuff spell:161644 |q 34780 |goto 56.80,34.28
step
Carry the Crystal to the Tertiary Pylon |q 34780/3 |goto 56.18,33.44
step
click Charged Resonance Crystal
Carry the Crystal |havebuff spell:161644 |q 34780 |goto 56.80,34.28
step
Carry the Crystal to the Secondary Pylon |q 34780/2 |goto 56.62,33.13
step
click Charged Resonance Crystal
Carry the Crystal |havebuff spell:161644 |q 34780 |goto 56.80,34.28
step
Carry the Crystal to the Primary Pylon |q 34780/1 |goto 56.25,32.76
step
Enter the building |goto 56.72,34.48 < 7 |walk
click Defense Pylon Central Control Console##230933
|tip Inside the building.
turnin Invisible Ramparts##34780 |goto 56.94,34.73
accept Defenstrations##34781 |goto 56.94,34.73
step
Kill Shadowmoon enemies around this area
Slay #8# Shadowmoon Invaders |q 34781/1 |goto 54.90,33.58
step
Enter the building |goto 56.72,34.48 < 7 |walk
click Defense Pylon Central Control Console##230933
|tip Inside the building.
turnin Defenstrations##34781 |goto 56.94,34.73
step
talk Vindicator Maraad##82348
accept The Exarch Council##34782 |goto 56.20,32.37
step
Follow the path up |goto 58.75,28.66 < 15 |only if walking
talk Exarch Othaar##80076
turnin The Exarch Council##34782 |goto 59.37,26.56
accept Naielle, The Rangari##34783 |goto 59.37,26.56
accept Hataaru, the Artificer##34785 |goto 59.37,26.56
step
talk Vamuun##81289
fpath Elodor |goto 58.69,31.93
step
talk Exarch Hataaru##80075
turnin Hataaru, the Artificer##34785 |goto 61.91,29.69
accept Shut 'er Down##35070 |goto 61.91,29.69
step
talk Apprentice Artificer Andren##81140
accept Engorged Goren##34786 |goto 61.87,29.14
stickystart "Collect_Crystallized_Goren_Scales"
step
Enter the cave |goto 61.80,28.63 < 15 |walk
click Override Lever##231657
|tip Inside the cave.
Disable the Crystal |q 35070/1 |goto 64.44,26.22
step
label "Collect_Crystallized_Goren_Scales"
Kill enemies around this area
|tip Inside the cave.
collect 20 Crystallized Goren Scale##112738 |q 34786/1 |goto 63.28,26.51
step
Run up the ramp |goto 63.03,27.06 < 5 |walk
Leave the cave |goto 61.80,28.63 < 15 |walk
talk Apprentice Artificer Andren##81140
turnin Engorged Goren##34786 |goto 61.87,29.15
step
talk Exarch Hataaru##80075
turnin Shut 'er Down##35070 |goto 61.91,29.69
step
talk Traevar Gunnermark##74233
accept The Big Haul##33084 |goto 62.47,36.82
step
accept Bonus Objective: The Hills of Valuun##34496 |goto 63.55,31.16
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Seacliff_Kaliris"
stickystart "Collect_Raw_Elekk_Steaks"
step
kill 12 Shaded Plainsstalker##75483 |q 34496/1 |goto 63.55,31.16
You can find more around [64.28,36.92]
|only if haveq(34496) or completedq(34496)
step
label "Kill_Seacliff_Kaliris"
kill 12 Seacliff Kaliri##82354 |q 34496/2 |goto 63.55,31.16
You can find more around [64.28,36.92]
|only if haveq(34496) or completedq(34496)
step
label "Collect_Raw_Elekk_Steaks"
Kill Rockhide enemies around this area
|tip They look like elephants.
collect 1000 Raw Elekk Steak##108670 |q 33084/1 |goto 62.5,35.6
step
talk Traevar Gunnermark##74233
turnin The Big Haul##33084 |goto 62.47,36.82
step
talk Paaya##76851
fpath Path of Light |goto 59.37,45.98
step
talk Exarch Naielle##80079
turnin Naielle, The Rangari##34783 |goto 56.49,23.53
accept Fun with Fungus##34784 |goto 56.49,23.53
step
talk Rangari Chel##82537
accept The Sting##34790 |goto 56.72,22.99
stickystart "Collect_Pristine_Sporebat_Stinger"
step
click Shimmershroom+
|tip They look like orange glowing mushrooms on the ground all around this area.
|tip They will give you a Shimmershroom Aura buff that lasts 30 seconds.
clicknpc Volatile Spore##82328+
|tip They look like blue floating spikey balls hovering above the ground around this area.
|tip Click them while you have the Shimmershroom Aura buff active.
Collect #12# Volatile Spores |q 34784/1 |goto 53.82,21.81
step
label "Collect_Pristine_Sporebat_Stinger"
kill Moonglow Sporebat##82323+
collect Pristine Sporebat Stinger##113256 |q 34790/1 |goto 55.04,19.23
step
talk Rangari Chel##82537
turnin The Sting##34790 |goto 56.71,22.99
step
talk Exarch Naielle##80079
turnin Fun with Fungus##34784 |goto 56.49,23.53
step
talk Exarch Akama##80078
accept Exarch Maladaar##34787 |goto 56.51,23.59
step
talk Exarch Maladaar##80073
turnin Exarch Maladaar##34787 |goto 59.52,30.37
accept Trust No One##35552 |goto 59.52,30.37
step
Enter the cave |goto 61.27,25.57 < 7 |walk
Discover the Infiltrator's Hideout |q 35552/1 |goto 61.35,24.79
|tip Inside the cave.
step
click Shadow Council Tome of Curses##233229
|tip Inside the cave.
turnin Trust No One##35552 |goto 60.92,24.43
accept Warning the Exarchs##34791 |goto 60.92,24.43
step
talk Exarch Maladaar##80073
turnin Warning the Exarchs##34791 |goto 62.44,26.28
accept Speaker for the Dead##34789 |goto 62.44,26.28
step
talk Exarch Maladaar##80073
|tip Outside, behind the building.
Tell him _"I am ready. Begin the ritual, Exarch."_
Begin the Ritual |q 34789/1 |goto 66.44,26.16
step
Watch the dialogue
Kill the enemies that attack in waves
Defend Hataaru's Spirit |q 34789/2 |goto 66.44,26.16
step
talk Exarch Maladaar##80073
|tip He's standing behind the building.
turnin Speaker for the Dead##34789 |goto 66.44,26.17
accept The Traitor's True Name##34792 |goto 66.44,26.17
step
Follow the path up |goto 63.21,23.09 < 20 |only if walking
click Maladaar's Focusing Lens
Plant the Focusing Lens |q 34792/1 |goto 60.55,20.57
step
Watch the dialogue
Reveal the Traitor |q 34792/2 |goto 60.55,20.57
step
kill Exarch Othaar##80076
|tip He will eventually transform, and then escape.
Deal with the Traitor |q 34792/3 |goto 60.48,20.70
step
talk Exarch Maladaar##80073
turnin The Traitor's True Name##34792 |goto 62.58,26.22
step
talk Exarch Naielle##80079
accept Friend of the Exarchs##34788 |goto 62.48,26.22
step
talk Vindicator Onaala##82492
|tip We recommend choosing Vindicator Onaala, since she can counter Magic Debuffs on garrison missions, which is a rare ability for followers.
|tip However, you can choose any of the 3 NPC's you prefer.
Tell her _"Onaala, I choose you!"_
Choose a Follower |q 34788/1 |goto 62.41,26.14
step
talk Exarch Naielle##80079
turnin Friend of the Exarchs##34788 |goto 62.48,26.22
accept Supply Drop##35905 |goto 62.48,26.22
step
#include "Garrison_BAlexston"
turnin Supply Drop##35905
step
#include "Garrison_DLongdrink"
Take a Flight to Embaari Village, Shadowmoon Valley |ontaxi |q 33072
step
Fly to Embaari Village |goto Shadowmoon Valley D/0 45.69,39.00 < 10 |c |q 33072 |notravel
step
talk Prophet Velen##79043
turnin Into Twilight##33072 |goto Shadowmoon Valley D/0 40.54,54.92
accept The Clarity Elixir##33076 |goto Shadowmoon Valley D/0 40.53,54.89
step
talk Rangari Veka##73425
accept Going Undercover##33080 |goto 40.58,54.84
step
talk Sylene##73106
Tell her _"I need a Shadowmoon orc illusion."_
Obtain an Orc Disguise From Sylene |q 33080/1 |goto 40.65,54.61
step
talk Gotuun##76839
fpath Twilight Glade |goto 40.73,55.28
step
talk Old Loola##71641
accept Loola's Lost Love##34876 |goto 41.30,55.12
accept A Grandmother's Remedy##33077 |goto 41.30,55.12
stickystart "Secure_Loose_Mud"
stickystart "Collect_Vials_Of_Toad_Juice"
stickystart "Collect_Engorged_Hearts"
stickystart "Collect_Swamplighter_Dust"
step
talk Rangari Navra##80378
|tip She is stealthed.
accept Rangari Roundup##34897 |goto 43.69,51.66
step
talk Hidden Rangari##80387
Find the Hidden Rangari |q 34897/1 |goto 43.94,52.67 |count 1
step
talk Hidden Rangari##80387
Find the Hidden Rangari |q 34897/1 |goto 44.76,51.23 |count 2
step
talk Hidden Rangari##80387
Find the Hidden Rangari |q 34897/1 |goto 45.03,50.40 |count 3
step
talk Hidden Rangari##80387
Find the Hidden Rangari |q 34897/1 |goto 46.38,47.87 |count 4
step
talk Hidden Rangari##80387
Find the Hidden Rangari |q 34897/1 |goto 47.39,48.92 |count 5
step
Enter the tree |goto 47.26,51.96 < 7 |walk
click Pristine Star Lily##223824
|tip Inside the tree.
collect Pristine Star Lily##111024 |q 33076/3 |goto 47.33,52.09
step
label "Secure_Loose_Mud"
click Loose Mud##230952+
|tip They look like piles of brown dirt on the ground around this area.
Search #5# Loose Mud |q 34876/1 |goto 44.51,49.50
step
label "Collect_Vials_Of_Toad_Juice"
clicknpc Belly Toad##75470+
|tip They look like green frogs on the ground around this area.
collect 6 Vial of Toad Juice##110723 |q 33077/1 |goto 44.51,49.50
step
label "Collect_Engorged_Hearts"
kill Echidnian Hydra##79020+
collect 3 Engorged Heart##105716 |q 33076/2 |goto 44.51,49.50
step
label "Collect_Swamplighter_Dust"
kill Frenzied Swamplighter##75471+
collect 6 Swamplighter Dust##104350 |q 33076/1 |goto 44.51,49.50
step
talk Rangari Veka##73425
turnin Rangari Roundup##34897 |goto 40.58,54.83
step
talk Old Loola##71641
turnin Loola's Lost Love##34876 |goto 41.29,55.11
turnin A Grandmother's Remedy##33077 |goto 41.29,55.11
step
Follow the path up |goto 39.58,53.59 < 15 |only if walking
talk Prophet Velen##79043
|tip In the entrance of the tree.
turnin The Clarity Elixir##33076 |goto 35.27,49.13
accept The Fate of Karabor##33059 |goto 35.27,49.13
step
use the Clarity Elixir##111591
Drink the Clarity Elixir |q 33059/1 |goto 35.28,49.12
step
Begin the Scenario |scenariostart |q 33059
step
Watch the dialogue
|tip Follow Prophet Velen as he walks.
Follow Prophet Velen |scenariogoal 1/24541 |goto 79.87,46.60 |q 33059
step
Watch the dialogue
kill Krull##79560 |scenariogoal 2/24539 |goto 79.86,46.58 |q 33059
step
Watch the dialogue
Witness Commander Vorka's Arrival |scenariogoal 3/24542 |goto 79.86,46.58 |q 33059
step
Watch the dialogue
|tip Follow Prophet Velen as he walks.
talk Prophet Velen##79522
|tip He walk to this location.
Tell him _"Prophet, we're being overrun!"_
Watch the dialogue
Speak to Velen on the Karabor Stairs |scenariogoal 4/24543 |goto 79.21,46.58 |q 33059
step
Watch the dialogue
Witness the Fate of Karabor |q 33059/2 |goto 79.21,46.58
step
Follow the path down |goto 37.30,54.06 < 30 |only if walking
talk Prophet Velen##79043
turnin The Fate of Karabor##33059 |goto 40.52,54.91
step
Follow the path |goto 38.66,60.08 < 15 |only if walking
Enter the building |goto 37.13,59.58 < 10 |walk
use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your Shadowmoon Orc Disguise.
|tip Void Wolves can see through your disguise, so avoid them.
clicknpc Explosives##74811
|tip Inside the building.
Plant Explosives at the Supply Hut |q 33080/2 |goto 37.17,59.25
step
Enter the building |goto 36.75,61.29 < 10 |walk
use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your Shadowmoon Orc Disguise.
|tip Void Wolves can see through your disguise, so avoid them.
clicknpc Explosives##74811
|tip Inside the building.
Plant Explosives at the Main Lodge |q 33080/3 |goto 36.35,61.44
step
use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your Shadowmoon Orc Disguise.
|tip Void Wolves can see through your disguise, so avoid them.
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground behind a huge stone.
Plant Explosives at the Chieftain's Seat |q 33080/4 |goto 39.12,62.87
step
use Sylene's Amulet of Illusion##107076
|tip Use this if you lose your Shadowmoon Orc Disguise.
|tip Void Wolves can see through your disguise, so avoid them.
clicknpc Explosives##74811
|tip It looks like a yellow bomb with bumps all over it, sitting on the ground.
Plant Explosives at the Training Pit |q 33080/5 |goto 36.53,65.50
step
talk Yrel##74877
turnin Going Undercover##33080 |goto 34.22,63.24
accept Escape From Shaz'gul##33081 |goto 34.22,63.24
step
talk Yrel##74877
|tip Choose any of the dialogue options you like, it doesn't matter.
Inspire Yrel |q 33081/1 |goto 34.22,63.24
step
Watch the dialogue
|tip Follow Yrel and protect her as she walks.
|tip She eventually walks to this location.
|tip When the large groups of enemies attack, let Yrel tank them.
|tip Focus on killing the Void Shield Totems that appear.
|tip If you don't kill the totems, the enemies will be very hard to kill.
Escape Shaz'gul with Yrel |q 33081/2 |goto 39.22,57.54
step
talk Yrel##74877
turnin Escape From Shaz'gul##33081 |goto 40.60,54.94
step
talk Prophet Velen##79043
accept Chasing Shadows##33586 |goto 40.52,54.91
step
talk Scout Valdez##81152
|tip Sometimes he doesn't spawn correctly, for some reason.
|tip If here's not here, check in your garrison.
accept Fast Expansion##33814 |goto 40.64,54.87
step
talk Loreseeker Heidii##74121
accept The Dark that Blinds Us##33078 |goto 42.14,57.36
step
accept The Burial Fields##34076 |goto 42.50,57.67
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Shadowmoon_Void_Priestesses"
stickystart "Slay_Orc_Spirits"
stickystart "Kill_Phantom_Pearltusks"
step
click Peaceful Offering##225503
|tip On the ground next to the large stone.
|tip This will give you a significant amount of experience.
click Tribal Stone##224708
Collect the Northern Stone Rubbing |q 33078/2 |goto 44.49,59.14
step
click Peaceful Offering##225503
|tip On the ground next to the large stone.
|tip This will give you a significant amount of experience.
click Tribal Stone##224708
|tip The stones are huge verical pillars through the area.
Collect the Western Stone Rubbing |q 33078/3 |goto 43.75,60.62
step
click Peaceful Offering##225503
|tip On the ground next to the large stone.
|tip This will give you a significant amount of experience.
click Tribal Stone##224708
|tip The stones are huge verical pillars through the area.
Collect the Eastern Stone Rubbing |q 33078/1 |goto 45.22,60.49
step
click Peaceful Offering##225503
|tip On the ground next to the large stone.
|tip This will give you a significant amount of experience.
click Tribal Stone##224708
|tip The stones are huge verical pillars through the area.
Collect the Southern Stone Rubbing |q 33078/4 |goto 44.48,63.57
step
label "Kill_Shadowmoon_Void_Priestesses"
kill 6 Shadowmoon Void Priestess##82196 |q 34076/1 |goto 44.56,61.62
|only if haveq(34076) or completedq(34076)
step
label "Slay_Orc_Spirits"
Kill Spirit enemies around this area
Slay #6# Orc Spirits |q 34076/2 |goto 44.56,61.62
|only if haveq(34076) or completedq(34076)
step
label "Kill_Phantom_Pearltusks"
Kill Phantom Pearltusk enemies around this area
|tip They look like purple ghost elephants.
Slay #3# Phantom Pearltusks |q 34076/3 |goto 44.56,61.62
|only if haveq(34076) or completedq(34076)
step
talk Loreseeker Heidii##74121
turnin The Dark that Blinds Us##33078 |goto 42.14,57.36
step
Enter the building |goto 57.16,57.46 < 7 |walk
talk Prelate Reenu##76200
|tip Inside the building.
turnin The Southern Wilds##35444 |goto 56.95,57.49
accept Crippled Caravan##33786 |goto 56.95,57.49
step
talk Morfax##81284
fpath The Draakorium |goto 57.02,56.63
step
Find Fiona |q 33786/1 |goto 53.60,57.28
step
talk Fiona##76204
turnin Crippled Caravan##33786 |goto 53.60,57.28
accept Fiona's Solution##33787 |goto 53.60,57.28
accept Swamplighter Queen##33808 |goto 53.60,57.28
step
talk Rangari Duula##80859
accept Rotting Riverbeasts##34996 |goto 52.60,59.70
stickystart "Collect_Swamplighter_Venom"
stickystart "Collect_Riotvines"
stickystart "Collect_Moonlit_Herbs"
stickystart "Collect_Riverbeast_Heart"
step
Enter the cave |goto 51.39,56.60 < 15 |walk
kill Swamplighter Queen##77314
|tip She flies around this area.
|tip Inside the cave.
collect Swamplighter Queen's Tail##108410 |q 33808/1 |goto 51.71,54.93
step
label "Collect_Swamplighter_Venom"
kill Swamplighter Drone##82371+
collect 2 Swamplighter Venom##108395 |q 33787/2 |goto 51.25,60.48
step
label "Collect_Riotvines"
kill Riot Blossom##82427+
collect 4 Riotvine##108396 |q 33787/3 |goto 51.25,60.48
step
label "Collect_Moonlit_Herbs"
click Moonlit Herb##225998+
|tip They look like thin plants with blue leaves on them on the ground around this area.
collect 3 Moonlit Herb##108409 |q 33787/4 |goto 51.25,60.48
step
label "Collect_Riverbeast_Heart"
kill Twilight Riverbeast##83455+
collect Riverbeast Heart##108394 |q 33787/1 |goto 51.25,60.48
step
kill 5 Blooming Mandragora##80752 |q 34996/1 |goto 51.20,63.64
step
talk Rangari Duula##80859
turnin Rotting Riverbeasts##34996 |goto 52.60,59.70
step
talk Fiona##76204
turnin Fiona's Solution##33787 |goto 53.60,57.28
turnin Swamplighter Queen##33808 |goto 53.60,57.28
accept Cooking With Unstable Herbs##33788 |goto 53.60,57.28
step
talk Fiona##76204
Tell her _"I'm ready, Fiona."_
Speak with Fiona |q 33788/1 |goto 53.60,57.28
step
Watch the dialogue
|tip Fiona will tell you the ingredients she needs as she cooks.
|tip Click each ingredient when she tells you to.
|tip You can reach all of the ingredients from this location.
click Swamplighter Venom##108395
|tip Click these when she says "toxic".
click Riotvine##108396
|tip Click these when she says "wriggle around".
click Riverbeast Heart##108394
|tip Click these when she says "something meaty".
click Moonlit Herb##225998
|tip Click these when she says "give a nice glow".
Complete the Elixir |q 33788/2 |goto 53.58,57.29
step
clicknpc Gidwin Goldbraids##80862
Use the Elixir on Gidwin |q 33788/3 |goto 53.64,57.26
step
talk Fiona##76204
turnin Cooking With Unstable Herbs##33788 |goto 53.60,57.28
accept Poison Paralysis##35006 |goto 53.60,57.28
step
talk Tarenar Sunstrike##80865
accept Punishing the Primals##34995 |goto 53.66,57.25
step
talk Rangari Arepheon##80727
accept Blademoon Bloom##35014 |goto 53.69,57.28
step
talk Beezil Linkspanner##80761
accept Forever Young##34994 |goto 53.45,57.32
step
talk Sleepy Rangari##80707
accept Slumberbloom##34997 |goto 53.13,65.38
stickystart "Destroy_Slumberblooms"
stickystart "Slay_Blademoon_Botani"
step
clicknpc Rimblat Earthshatter##80894
Cure Rimblat |q 35006/1 |goto 55.08,68.15
stickystart "Collect_Youngroots"
step
clicknpc Talren Highbeacon##80906
Cure Talren |q 35006/3 |goto 54.13,70.83
step
label "Collect_Youngroots"
click Youthvine##231152+
|tip They look like green plants with red flowers on the ground around this area.
collect 5 Youngroot##112328 |q 34994/1 |goto 54.62,70.19
step
clicknpc Argus Highbeacon##80903
Cure Argus |q 35006/2 |goto 56.78,70.42
step
talk Rangari Arepheon##80781
Speak with Rangari Arepheon |q 35014/1 |goto 55.66,71.98
step
talk Rangari Arepheon##80781
turnin Blademoon Bloom##35014 |goto 55.66,71.98
accept Gestating Genesaur##35015 |goto 55.67,71.98
step
kill Blooming Genesaur##80662 |q 35015/1 |goto 56.07,73.15
step
talk Rangari Arepheon##80781
turnin Gestating Genesaur##35015 |goto 55.67,71.98
step
label "Destroy_Slumberblooms"
use Gathered Pebbles##112332
|tip Use them on Slumberblooms.
|tip They look like small red and white plants on the ground around this area.
Destroy #8# Slumberblooms |q 34997/1 |goto 54.34,69.06
step
label "Slay_Blademoon_Botani"
Kill Botani enemies around this area
|tip You can usually find more inside the small tree houses around this area.
Slay #5# Blademoon Botani |q 34995/1 |goto 54.34,69.06
step
_Click the Complete Quest Box:_
turnin Slumberbloom##34997
step
talk Tarenar Sunstrike##80865
turnin Punishing the Primals##34995 |goto 53.66,57.25
step
talk Fiona##76204
turnin Poison Paralysis##35006 |goto 53.60,57.28
accept Fiona##35617 |goto 53.60,57.28
step
talk Beezil Linkspanner##80761
turnin Forever Young##34994 |goto 53.45,57.32
step
accept Bonus Objective: The Shimmer Moor##34728 |goto 58.16,60.37
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Collect_Iridescent_Eggs"
stickystart "Kill_Arcane_Anomalies"
step
kill Sargerei Netherbinder##79681 |q 34728/3 |goto 62.83,62.72
|only if haveq(34728) or completedq(34728)
step
label "Collect_Iridescent_Eggs"
click Lost Iridescent Egg##230613+
|tip They look like large white eggs on the ground around this area.
collect 14 Iridescent Egg##111559 |q 34728/1 |goto 60.45,65.30
|only if haveq(34728) or completedq(34728)
step
label "Kill_Arcane_Anomalies"
kill 8 Arcane Anomaly##79658 |q 34728/2 |goto 60.45,65.30
|only if haveq(34728) or completedq(34728)
step
Follow the path up |goto 45.09,28.10 < 20 |only if walking
talk Rulkan##75884
turnin Chasing Shadows##33586 |goto 45.71,26.32
accept Ancestor's Memory##33082 |goto 45.71,26.32
step
talk Wargra##76850
fpath Exile's Rise |goto 45.57,25.39
step
talk Dulga##77211
accept Forbidden Love##34847 |goto 46.11,25.47
step
talk Zukaza##80248
accept Lunarblossom##34836 |goto 46.41,25.23
step
Jump down and enter the cave |goto 46.22,27.12 < 15 |walk
click Ancestor's Totem##225918
|tip Inside the cave.
Find the Ancestor's Totem |q 33082/1 |goto 45.71,25.38
step
Watch the dialogue
|tip Inside the cave.
talk Rulkan##75884
|tip She walks to this location.
turnin Ancestor's Memory##33082 |goto 45.85,25.58
accept Darkest Night##34043 |goto 45.85,25.58
accept Rulkan##35631 |goto 45.85,25.58
stickystart "Collect_Lunarblossoms"
step
Follow the path |goto 50.96,25.39 < 30 |only if walking
Follow the path up |goto 51.21,18.59 < 20 |only if walking
Enter the cave |goto 48.22,14.08 < 10 |walk
Find Kral'za |q 34847/1 |goto 48.12,15.05
|tip Inside the cave.
step
kill Dol'mak##80250 |q 34847/2 |goto 48.12,15.05
|tip Inside the cave.
step
kill Dark Apparition##76295 |q 34847/3 |goto 48.12,15.05
|tip Inside the cave. |notinsticky
step
label "Collect_Lunarblossoms"
click Lunarblossom##230901+
|tip They look like small red flowers on the ground around this area.
collect 5 Lunarblossom##111937 |q 34836/1 |goto 50.98,17.41
step
Follow the path up |goto 50.48,23.64 < 7 |only if walking
talk Zukaza##80296
turnin Lunarblossom##34836 |goto 46.41,25.23
step
talk Dulga##77211
turnin Forbidden Love##34847 |goto 46.11,25.47
step
talk Lost Packmule##79966
|tip It walks around this area.
accept Gloomshade Game Hunter##33461 |goto 39.64,29.51
stickystart "Collect_Shadowstalker_Ribs"
stickystart "Collect_Ossified_Venom_Glands"
step
kill Gloomshade Gulper##74176+
|tip They look like frogs.
collect 3 Gulper Leg##111888 |q 33461/3 |goto 37.79,25.58
step
label "Collect_Shadowstalker_Ribs"
kill Gloomshade Howler##74169+
|tip They look like wolves.
collect 5 Shadowstalker Ribs##111884 |q 33461/1 |goto 40.02,23.62
step
label "Collect_Ossified_Venom_Glands"
kill Gloomshade Fungi##74175+
collect 5 Ossified Venom Gland##106869 |q 33461/2 |goto 41.96,16.32
step
#include "Garrison_BAlexston"
turnin Fast Expansion##33814
accept Bigger is Better##36592
step
label "Collect_Garrison_Resources_36592"
Collect #200# Garrison Resources |condition curcount(824) >= 200 |q 36592 |future
|tip You will collect them naturally as you complete quests.
|tip You will need these to upgrade your garrison to level 2.
step
#include "Garrison_ArchitectTable"
|tip Click your "Town Hall" building on the garrison architect map.
|tip Click the "Upgrade" button, at the top right.
Upgrade Your Garrison to Level 2 |q 36592/1
step
talk Arsenio Zerep##80159
|tip He walks around this area.
turnin Gloomshade Game Hunter##33461 |goto Lunarfall/0 36.87,63.96
step
#include "Garrison_KenLoggin"
accept Lost Lumberjacks##34820
step
#include "Garrison_BAlexston"
turnin Bigger is Better##36592
step
Leave Your Garrison |goto Lunarfall/0 50.00,50.00 > 10000 |noway |c |q 34820
|tip Follow the road south.
step
talk Lost Packmule##79966
|tip It walks around this area.
turnin Lost Lumberjacks##34820 |goto Shadowmoon Valley D/0 39.82,30.07
accept Gloomshade Grove##33263 |goto Shadowmoon Valley D/0 39.82,30.07
step
Search Gloomshade Grove for Clues |q 33263/1 |goto 39.28,25.63
step
talk Phlox##74667
Speak With Phlox |q 33263/2 |goto 39.28,25.63
step
click Alliance Sword##224229
Investigate the Pond |q 33263/3 |goto 39.53,22.63
step
talk Phlox##74667
Speak With Phlox |q 33263/4 |goto 39.56,22.79
step
click Alliance Shield##223720
Investigate the Field |q 33263/5 |goto 39.85,19.92
step
talk Phlox##74667
Speak With Phlox |q 33263/6 |goto 39.86,19.99
step
clicknpc Dead Packmule##74193
Investigate the Beach |q 33263/7 |goto 41.83,18.00
step
talk Phlox##74667
Speak With Phlox |q 33263/8 |goto 41.93,18.00
step
Enter the cave |goto 46.47,15.34 < 10 |walk
Investigate Gloomshade Grotto |q 33263/9 |goto 47.06,14.81
|tip Inside the cave.
step
kill Phlox##74667 |q 33263/10 |goto 47.06,14.81
|tip Inside the cave.
step
talk Jarrod Hamby##73877
|tip Inside the cave.
turnin Gloomshade Grove##33263 |goto 47.09,14.40
accept Game of Thorns##33271 |goto 47.09,14.40
step
talk Ryan Metcalf##74547
|tip Inside the cave.
accept Prune the Podlings##34806 |goto 47.04,14.34
stickystart "Slay_Podlings"
step
talk Captured Critter##77270
accept Captured Critters##33331 |goto 46.27,15.92
step
clicknpc Captured Critter##73973+
|tip They look like various small animals trapped in green vines on the ground around this area.
Free #5# Captured Critters |q 33331/1 |goto 43.33,17.76
step
_Click the Complete Quest Box:_
turnin Captured Critters##33331
step
label "Slay_Podlings"
Kill Podling enemies around this area
Slay #15# Podlings |q 34806/1 |goto 43.33,17.76
step
_Click the Complete Quest Box:_
turnin Prune the Podlings##34806
step
Follow the path up |goto 37.71,21.28 < 20 |only if walking
kill King Deathbloom##73888 |q 33271/1 |goto 35.72,19.76
step
talk Shelly Hamby##76748
turnin Game of Thorns##33271 |goto 36.39,19.26
accept Shelly Hamby##35625 |goto 36.39,19.26
step
talk Prophet Velen##77282
turnin Darkest Night##34043 |goto 35.71,36.90
accept Into Anguish##35032 |goto 35.71,36.90
step
talk Rangari Saa'to##81176
accept On the Offensive##33083 |goto 35.84,36.96
accept Harbingers of the Void##33793 |goto 35.84,36.96
accept The Great Salvation##33794 |goto 35.84,36.96
step
talk Illuminate Praavi##81173
accept Across the Stars##33795 |goto 35.37,36.95
step
use the Fragment of Anguish##112386
Open the Doorway |q 35032/1 |goto 35.04,37.92
stickystart "Collect_Star_Readings"
stickystart "Rescue_Draenei_Prisoners"
stickystart "Slay_Shadowmoon_Forces"
step
clicknpc Mark of Shadow##80742
Deactivate the Mark of Shadows |q 35032/3 |goto 34.51,41.39
step
kill Shadowmoon Prophet##80787+
|tip The ones channeling on the Essence of Shadow.
|tip Kill them will make the Essence of Shadow attackable.
kill Essence of Shadow##76209 |q 33793/1 |goto 33.92,43.24
step
Follow the path |goto 34.91,42.23 < 15 |only if walking
Enter the cave |goto 35.3,44.0 < 15 |walk
kill Essence of Anguish##76210 |q 33793/3 |goto 34.81,45.36
|tip Inside the cave.
step
clicknpc Mark of Anguish##80950
Deactivate the Mark of Anguish |q 35032/4 |goto 32.65,38.76
step
kill Shadowmoon Prophet##80787+
|tip The ones channeling on the Essence of Darkness.
|tip Kill them will make the Essence of Darkness attackable.
kill Essence of Darkness##74519 |q 33793/2 |goto 31.43,39.52
step
clicknpc Mark of Darkness##80741
Deactivate the Mark of Darkness |q 35032/2 |goto 29.49,39.75
step
_Click the Complete Quest Box:_
turnin Into Anguish##35032
accept The Dark Side of the Moon##34054
step
label "Collect_Star_Readings"
click Star Reading##223508
|tip They look like small purple rugs laying on the ground around this area.
collect 5 Star Reading##112385 |q 33795/1 |goto 32.65,39.20
step
label "Rescue_Draenei_Prisoners"
click Shadowmoon Cage##225924+
|tip They look like wooden cages on the ground around this area.
Rescue #8# Draenei Prisoners |q 33794/1 |goto 32.65,39.20
step
label "Slay_Shadowmoon_Forces"
Kill Shadowmoon enemies around this area
Slay #15# Shadowmoon Forces |q 33083/1 |goto 32.65,39.20
step
Follow the path up |goto 29.45,41.06 < 15 |only if walking
Watch the dialogue
Find Velen and Yrel at the Terrace of the Stars |q 34054/1 |goto 30.27,43.22
step
Watch the dialogue
kill Arkeddon##74632 |q 34054/2 |goto 30.98,43.88
step
Watch the dialogue
talk Prophet Velen##77282
turnin On the Offensive##33083 |goto 46.37,38.69
turnin Harbingers of the Void##33793 |goto 46.37,38.69
turnin Across the Stars##33795 |goto 46.37,38.69
step
talk Yrel##73395
turnin The Dark Side of the Moon##34054 |goto 46.38,38.61
turnin The Great Salvation##33794 |goto 46.38,38.61
step
talk Prophet Velen##77282
accept Darkness Falls##33837 |goto 46.37,38.69
step
Enter the Waning Crescent |q 33837/1 |goto 46.48,45.25
|tip In the entance of the cave.
step
Leave the cave |goto 49.93,46.25 < 15 |only if walking
Find Ner'zhul |q 33837/2 |goto 51.90,46.15
step
kill Ner'zhul##76172
|tip Kill the enemies he summons when he becomes immune to damage.
Defeat Ner'zhul |q 33837/3 |goto 51.90,46.15
step
talk Yrel##73395
turnin Darkness Falls##33837 |goto 52.22,46.15
step
Watch the dialogue
talk Vindicator Maraad##77312
|tip He flies to this location.
accept The Righteous March##33255 |goto 52.23,46.04
step
talk Vindicator Maraad##77312
Tell him _"I am ready to join the attack against the Iron Horde."_
Kill enemies around this area
|tip They are on the ground as you fly.
|tip Use the ability on your action bar.
Escort Your Garrison Army to Karabor |q 33255/1 |goto 52.23,46.04
step
Watch the dialogue
Begin the Scenario |scenariostart |q 33256 |future
step
talk Exarch Akama##72413
turnin The Righteous March##33255 |goto 77.30,38.26
accept The Defense of Karabor##33256 |goto 77.30,38.26
step
kill Arnokk the Burner##75358
|tip He runs around this area.
Defeat Arnokk the Burner |scenariogoal 1/24515 |goto 76.87,40.63 |q 33256
step
Enter the building |goto 77.2,41.7 < 7 |only if walking
Run down the stairs |goto 78.26,45.47 < 15 |only if walking
Kill enemies around this area
|tip Kill enemies as you walk, to clear a path for your allies.
Clear a Path to Karabor Harbor |scenariogoal 2/24596 |goto 79.72,46.86 |q 33256
Meet Yrel at the Karabor Harbor |scenariogoal 2/24516 |goto 79.72,46.86 |q 33256
step
Kill the enemies that attack in waves
|tip Fill up the bottom at the bottom of the screen.
Defend K'ara Until it Becomes Fully Empowered |scenariogoal 3/24517 |goto 79.66,46.62 |q 33256
step
kill Commander Vorka##74715
|tip Avoid the circles on the ground.
|tip Kill the enemies he summons quickly.
Defeat Commander Vorka |scenarioend |goto 80.54,46.57 |q 33256
step
clicknpc Raindash##80300 |goto 80.50,46.98
Return to Embaari Village |goto 46.26,38.54 < 30 |noway |c |q 33256
step
talk Yrel##73395
turnin The Defense of Karabor##33256 |goto 46.38,38.62
step
talk Cordana Felsong##80645
accept Meet Us at Starfall Outpost##33359 |goto Lunarfall/0 42.84,44.77
step
Leave Your Garrison |goto Lunarfall/0 50.00,50.00 > 10000 |noway |c |q 33359
|tip Follow the road south.
step
talk Archmage Khadgar##77184
turnin Meet Us at Starfall Outpost##33359 |goto Shadowmoon Valley D/0 29.20,25.74
accept Catching His Eye##33062 |goto Shadowmoon Valley D/0 29.20,25.74
step
talk Delas Moonfang##72623
accept Shadowmoonwell##33113 |goto 29.48,24.52
step
Follow the road |goto 25.72,26.46 < 30 |only if walking
click Lunar Rock##223239
collect Chunk of Lunar Rock##102491 |q 33113/1 |goto 23.20,20.90
step
Enter the cave |goto 22.82,16.84 < 15 |walk
kill All-Seeing Eye##72783 |q 33062/1 |goto 21.76,16.11
|tip It floats around this area.
|tip Inside the cave.
step
Follow the path |goto 25.84,19.44 < 30 |only if walking
Follow the path up |goto 27.79,24.42 < 15 |only if walking
talk Archmage Khadgar##77184
turnin Catching His Eye##33062 |goto 29.20,25.74
accept Shrouding Stones##33115 |goto 29.20,25.74
step
talk Delas Moonfang##72623
turnin Shadowmoonwell##33113 |goto 29.48,24.52
accept A Curse Upon the Woods##33120 |goto 29.48,24.52
stickystart "Slay_Fel_Cursed_Creatures"
step
click Shrouding Stone##227272
Destroy the Southern Shrouding Stone |q 33115/3 |goto 23.82,28.72
step
click Shrouding Stone##227272
Destroy the Central Shrouding Stone |q 33115/1 |goto 23.06,24.63
step
Follow the road |goto 25.30,21.11 < 30 |only if walking
click Shrouding Stone##227272
Destroy the Northern Shrouding Stone |q 33115/2 |goto 26.02,15.85
step
label "Slay_Fel_Cursed_Creatures"
Kill enemies around this area
Slay #10# Fel-cursed Creatures |q 33120/1 |goto 24.19,18.71
step
Follow the path |goto 25.84,19.44 < 30 |only if walking
Follow the path up |goto 27.79,24.42 < 15 |only if walking
talk Archmage Khadgar##77184
turnin Shrouding Stones##33115 |goto 29.20,25.74
accept Ominous Portents##33112 |goto 29.20,25.74
step
talk Delas Moonfang##72623
turnin A Curse Upon the Woods##33120 |goto 29.48,24.52
step
talk All-Seeing Eye##72871
Tell him _"Begin the compulsion of the All-Seeing Eye."_
Begin Interrogating the Demon |invehicle |goto 28.70,25.23 |q 33112
step
Watch the dialogue
|tip Use the abilities on your action bar.
|tip Use the "Vial of Moon Water" ability until the Scripture of Elune ability is available.
|tip Use the "Scripture of Elune" ability when it becomes available.
|tip Repeat this process until you complete the objective.
Compel the All-Seeing Eye |q 33112/1 |goto 28.70,25.23
step
talk Archmage Khadgar##77184
turnin Ominous Portents##33112 |goto 29.20,25.74
accept Soul Shards of Summoning##33066 |goto 29.20,25.74
step
talk Cordana Felsong##72637
accept Cleaning Up Gul'var##33269 |goto 29.26,25.71
stickystart "Slay_Gulvar_Orcs"
step
Follow the path up |goto 22.41,30.27 < 15 |only if walking
kill Grogal the Harvester##72674
collect Grogal's Shard##109187 |q 33066/2 |goto 20.84,31.55
step
kill Fel Mistress Hagra##72677
collect Hagra's Shard##109186 |q 33066/1 |goto 20.89,27.26
step
kill Corruptor Kurgoth##72647
collect Kurgoth's Shard##106986 |q 33066/3 |goto 18.26,24.12
step
label "Slay_Gulvar_Orcs"
Kill enemies around this area
Slay #20# Gul'var Orcs |q 33269/1 |goto 20.22,28.08
step
talk Image of Archmage Khadgar##77417
turnin Soul Shards of Summoning##33066 |goto 19.07,28.56
accept Heart On Fire##33168 |goto 19.07,28.56
step
kill Krosnis##77488
collect Fiery Heart##109205 |q 33168/1 |goto 17.72,27.47
step
Follow the path up |goto 19.23,27.62 < 20 |only if walking
talk Image of Archmage Khadgar##77417
turnin Heart On Fire##33168 |goto 19.07,28.56
accept Forging the Soul Trap##33114 |goto 19.07,28.56
step
use Gul'var Soul Shards##109224
Forge the Gul'dan Soul Trap |q 33114/1 |goto 19.07,28.56
step
talk Image of Archmage Khadgar##77417
turnin Forging the Soul Trap##33114 |goto 19.07,28.56
accept To Catch a Shadow##33116 |goto 19.07,28.56
step
use the Gul'dan's Soul Trap##109246
|tip Use it on Gul'dan.
Use Gul'dan's Soul Trap |q 33116/1 |goto 18.01,30.41
step
Watch the dialogue
kill Razuun##72793 |q 33116/2 |goto 17.84,30.18
step
Follow the path down |goto 22.07,30.69 < 15 |only if walking
Follow the path up |goto 27.81,24.45 < 15 |only if walking
talk Archmage Khadgar##77184
turnin To Catch a Shadow##33116 |goto 29.20,25.74
step
talk Cordana Felsong##72637
turnin Cleaning Up Gul'var##33269 |goto 29.26,25.71
step
#include "Garrison_BGrey"
accept The Secrets of Gorgrond##35556
|only if (not haveq(33533) or completedq(33533)) or (not haveq(36632) or completedq(36632)) or (not haveq(49564) or completedq(49564))
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Gorgrond (15-60)",{
next="Leveling Guides\\Draenor (10-60)\\Talador (20-60)",
condition_suggested=function() return level >= 15 and level <= 50 and not completedq(33269) end,
image=ZGV.IMAGESDIR.."Gorgrond",
startlevel=15,
},[[
step
#include "Garrison_DLongdrink"
|tip Fly to Wildwood Wash, Gorgrond.
Begin Flying to Wildwood Wash |ontaxi |c |q 33533 |only if haveq(33533) or completedq(33533)
Begin Flying to Wildwood Wash |ontaxi |c |q 35556 |only if haveq(35556) or completedq(35556)
Begin Flying to Wildwood Wash |ontaxi |c |q 36632 |only if haveq(36632) or completedq(36632)
Begin Flying to Wildwood Wash |ontaxi |c |q 49564 |only if haveq(49564) or completedq(49564)
step
Fly to Wildwood Wash |offtaxi |goto Gorgrond/0 64.10,57.50 |q 33533 |notravel |only if haveq(33533) or completedq(33533)
Fly to Wildwood Wash |offtaxi |goto Gorgrond/0 64.10,57.50 |q 35556 |notravel |only if haveq(35556) or completedq(35556)
Fly to Wildwood Wash |offtaxi |goto Gorgrond/0 64.10,57.50 |q 36632 |notravel |only if haveq(36632) or completedq(36632)
Fly to Wildwood Wash |offtaxi |goto Gorgrond/0 64.10,57.50 |q 49564 |notravel |only if haveq(49564) or completedq(49564)
step
talk Yrel##80978
turnin The Secrets of Gorgrond##33533 |goto 63.99,57.20 |only if haveq(33533) or completedq(33533)
turnin The Secrets of Gorgrond##35556 |goto 63.99,57.20 |only if haveq(35556) or completedq(35556)
turnin The Secrets of Gorgrond##36632 |goto 63.99,57.20 |only if haveq(36632) or completedq(36632)
turnin Hero's Call: Gorgrond!##49564 |goto 63.99,57.20 |only if haveq(49564) or completedq(49564)
accept Welcome to Gorgrond##35033 |goto 63.99,57.20
step
Scout Ahead for Naielle's Watch |q 35033/1 |goto 63.42,51.98
step
Find the Rangari Survivors |q 35033/2 |goto 64.15,51.54
|tip In the entrance of the cave.
step
talk Rangari D'kaan##80921
|tip Inside the cave.
turnin Welcome to Gorgrond##35033 |goto 64.21,51.95
accept A Harvester Has Come##35065 |goto 64.21,51.95
step
talk Rangari Kaalya##80922
|tip Inside the cave.
accept Wake of the Genesaur##35834 |goto 64.20,51.77
stickystart "Destroy_Wild_Overgrowth"
step
Enter the cave |goto 63.70,48.96 < 15 |walk
kill Harvester Ommru##84373 |q 35065/1 |goto 63.17,46.67
|tip Inside the cave.
step
label "Destroy_Wild_Overgrowth"
Kill enemies around this area
Destroy #9# Wild Overgrowth |q 35834/1 |goto 64.37,50.04
step
talk Rangari D'kaan##75146
turnin A Harvester Has Come##35065 |goto 63.22,52.27
accept He Drew Aggro...culture##36595 |goto 63.22,52.27
step
talk Rangari Kaalya##80987
turnin Wake of the Genesaur##35834 |goto 63.14,52.30
step
kill Aggressive Growth##84451
talk Thaelin Darkanvil##80874
Find the Pilot of the Dark Iron Tank |q 36595/1 |goto 64.99,48.54
step
talk Thaelin Darkanvil##75136
turnin He Drew Aggro...culture##36595 |goto 63.17,52.40
accept Lost Mole Machines##35055 |goto 63.17,52.40
step
talk Rangari D'kaan##75146
accept Rescue Rangari##35050 |goto 63.21,52.26
step
accept Bonus Objective: Iyun Weald##36571 |goto 62.73,53.46
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Weald_Stingers"
stickystart "Kill_Thorny_Stabbers"
step
clicknpc Thorny Leafling##85809+
|tip They look like small enemies on the ground around this area.
|tip Avoid Biolante, an elite enemy that walks around this area.
Punt #20# Thorny Leaflings |q 36571/2 |goto 62.29,53.46
|only if haveq(36571) or completedq(36571)
step
label "Kill_Weald_Stingers"
kill 6 Weald Stinger##85807 |q 36571/3 |goto 62.29,53.46
|tip Avoid Biolante, an elite enemy that walks around this area. |notinsticky
|only if haveq(36571) or completedq(36571)
step
label "Kill_Thorny_Stabbers"
kill 12 Thorny Stabber##80744 |q 36571/1 |goto 62.29,53.46
|tip Avoid Biolante, an elite enemy that walks around this area. |notinsticky
|only if haveq(36571) or completedq(36571)
step
talk Rangari Kolaan##81018
Tell him _"D'kaan is coming with help."_
Find Rangari Kolaan |q 35050/1 |goto 59.45,53.19
step
talk Rangari Rajess##81013
Tell her _"D'kaan is coming with help."_
Find Rangari Rajess |q 35050/2 |goto 57.70,54.29
step
talk Rangari Jonaa##81020
Tell him _"D'kaan is coming with help."_
Find Rangari Jonaa |q 35050/3 |goto 55.06,58.56
step
talk Glirin##84766
Find the Lost Mole Machine |q 35055/1 |goto 53.96,60.13
step
talk Glirin##84766
Tell him _"Thaelin is on his way soon."_
Watch the dialogue
Wait For Thaelin's Arrival |q 35055/2 |goto 53.96,60.13
step
talk Rangari D'kaan##75146
turnin Rescue Rangari##35050 |goto 53.48,60.43
step
talk Thaelin Darkanvil##75136
turnin Lost Mole Machines##35055 |goto 53.42,60.33
accept We Need An Outpost##35063 |goto 53.42,60.33
step
clicknpc Drafting Table##81119
|tip Choose the building that appeals to you the most.
|tip It doesn't really matter, just preference.
Select a Building |q 35063/1 |goto 53.45,60.30
step
_Which Building Did You Choose?_
|tip Click the line for the building you chose.
Highpass Logging Camp	|confirm	|or	|q 35212	|future		|next "Highpass_Logging_Camp"
Highpass Sparring Ring	|confirm	|or	|q 35686	|future		|next "Highpass_Sparring_Ring"
step
label "Highpass_Logging_Camp"
talk Trader Yula##85968
home Highpass |goto Gorgrond/0 53.23,59.79
step
talk Glirin##85119
accept Tangleheart##35708 |goto 53.02,59.81
step
talk Thaelin Darkanvil##75136
turnin We Need An Outpost##35063 |goto 53.00,59.79
accept Deeproot##35212 |goto 53.00,59.79
step
talk Rangari Rajess##81074
fpath Highpass |goto 52.82,59.33
step
talk Rangari D'kaan##75146
accept Rangari in the Red##35666 |goto 53.31,59.89
accept Seeking the Scout##36432 |goto 53.31,59.89
step
accept Bonus Objective: Mistcreep Mire##36563 |goto 52.11,66.69
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Break_Hydra_Eggs"
step
kill 5 Lernaea Vilescale##85693 |q 36563/1 |goto 52.11,66.69
|only if haveq(36563) or completedq(36563)
step
label "Break_Hydra_Eggs"
kill Hydra Egg##85786+
|tip They look like large white eggs on the ground around this area.
Break #25# Hydra Eggs |q 36563/2 |goto 52.11,66.69
|only if haveq(36563) or completedq(36563)
step
talk Glirin##82575
turnin Tangleheart##35708 |goto 55.92,71.55
accept Growing Wood##35652 |goto 55.92,71.55
accept Lost Lumberjack##36368 |goto 55.92,71.55
step
talk Frenna##82569
turnin Lost Lumberjack##36368 |goto 57.05,71.93
accept Chapter I: Plant Food##35654 |goto 57.05,71.93
accept Chapter II: The Harvest##35651 |goto 57.05,71.93
accept Chapter III: Ritual of the Charred##35650 |goto 57.05,71.93
stickystart "Slay_Ancients"
stickystart "Destroy_Pollen_Pods"
stickystart "Collect_Ancient_Growth_Sap"
step
kill Ontogen the Harvester##82372 |q 35651/1 |goto 59.88,71.10
step
label "Slay_Ancients"
Kill Ancient enemies around this area
|tip They look like walking trees.
Slay #4# Ancients |q 35650/1 |goto 59.97,69.23
step
label "Destroy_Pollen_Pods"
click Pollen Pod##235903+
|tip They look like orange spikey round plant bulbs on the ground around this area.
Destroy #8# Pollen Pods |q 35654/1 |goto 59.97,69.23
step
label "Collect_Ancient_Growth_Sap"
Kill enemies around this area
|tip Heartsting Pollinators will not drop the quest item.
collect 100 Ancient Growth Sap##113136 |q 35652/1 |goto 59.97,69.23
step
Follow the path |goto 60.83,65.50 < 20 |only if walking
talk Glirin##85130
turnin Growing Wood##35652 |goto 60.71,64.77
turnin Chapter I: Plant Food##35654 |goto 60.71,64.77
turnin Chapter II: The Harvest##35651 |goto 60.71,64.77
turnin Chapter III: Ritual of the Charred##35650 |goto 60.71,64.77
step
talk Dying Rangari##82499
accept Vengeance for the Fallen##35640 |goto 59.51,57.92
step
talk Khaano##80762
turnin Rangari in the Red##35666 |goto 59.32,56.35
accept Scout Forensics##35633 |goto 59.32,56.35
stickystart "Recover_Rangari_Pouches"
stickystart "Kill_Fungal_Lurchers"
step
Kill enemies around this area
|tip You will eventually accept this quest automatically after looting.
accept Mysterious Pod##35642 |goto 59.45,58.84
step
label "Recover_Rangari_Pouches"
clicknpc Dead Rangari##80809+
|tip They look like dead draenei on the ground around this area.
Recover #5# Rangari Pouches |q 35633/1 |goto 59.45,58.84
step
label "Kill_Fungal_Lurchers"
kill 7 Fungal Lurcher##80714 |q 35640/1 |goto 58.92,58.61
step
talk Khaano##82476
turnin Vengeance for the Fallen##35640 |goto 58.26,59.90
turnin Scout Forensics##35633 |goto 58.26,59.90
turnin Mysterious Pod##35642 |goto 58.26,59.90
accept Mercy for the Living##35644 |goto 58.26,59.90
accept The Secret of the Fungus##35645 |goto 58.26,59.90
stickystart "Kill_Fungus_Covered_Shamblers"
step
click Glowing Mushroom##231769+
|tip They look like large mushrooms with brown tops on the ground around this area.
collect 5 Glowing Mushroom##112672 |q 35645/1 |goto 57.18,60.30
step
label "Kill_Fungus_Covered_Shamblers"
kill 6 Fungus Covered Shambler##80721 |q 35644/1 |goto 57.18,60.30
step
talk Khaano##82476
turnin Mercy for the Living##35644 |goto 58.26,59.90
turnin The Secret of the Fungus##35645 |goto 58.26,59.90
accept A Grim Harvest##35647 |goto 58.26,59.90
accept A Heartfelt Search##35656 |goto 58.26,59.90
stickystart "Collect_Enlarged_Stomper_Spore_Pods"
step
click Drained Fungal Heart##233046
Inspect the Strange Fungus Site |q 35656/1 |goto 58.93,62.53
step
Watch the dialogue
talk Khaano##82477
turnin A Heartfelt Search##35656 |goto 58.97,62.52
step
label "Collect_Enlarged_Stomper_Spore_Pods"
kill Fungal Stomper##80739+
collect 3 Enlarged Stomper Spore Pod##112394 |q 35647/1 |goto 59.78,62.12
step
talk Khaano##82477
turnin A Grim Harvest##35647 |goto 58.97,62.52
accept Heart of the Fen##35659 |goto 58.97,62.52
step
Watch the dialogue
kill Khaano##86282
Stop Khaano |q 35659/1 |goto 61.23,61.85
step
talk Rangari D'kaan##75146
turnin Heart of the Fen##35659 |goto 53.32,59.89
step
talk Glirin##85119
accept Lumber, I Hardly Knew 'Er##36828 |goto 53.02,59.81
step
Follow the path up |goto 50.35,70.91 < 30 |only if walking
accept Bonus Objective: The Forgotten Caves##34724 |goto 51.35,77.75
|tip You will accept this quest automatically.
|tip In the entrance of the cave.
|only if level < 50
stickystart "Kill_Spider_Egg_Sacs"
stickystart "Slay_Pales"
step
Follow the path |goto 51.99,78.66 < 7 |walk
kill Gorg the Host##76496 |q 34724/3 |goto 53.69,79.55
|tip You may have to jump up to him.
|tip Inside the cave.
|only if haveq(34724) or completedq(34724)
step
label "Kill_Spider_Egg_Sacs"
kill Spider Egg Sac##76548+
|tip They look like large white cocoons on the ground around this area.
|tip Inside the cave. |notinsticky
Destroy #15# Egg Sacs |q 34724/2 |goto 51.87,78.94
|only if haveq(34724) or completedq(34724)
step
label "Slay_Pales"
Kill Pale enemies around this area
|tip Inside the cave. |notinsticky
Slay #12# Pales |q 34724/1 |goto 51.87,78.94
|only if haveq(34724) or completedq(34724)
step
Follow the path |goto 51.49,78.77 < 7 |walk
Leave the cave |goto 51.38,77.63 < 15 |walk
accept Bonus Objective: Ruins of the First Bastion##35881 |goto 50.34,79.11
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Slay_Frenzied_Podlings"
stickystart "Loot_Ancient_Jars"
step
Enter the building |goto 51.83,81.05 < 7 |walk
kill Malkor##83452 |q 35881/3 |goto 52.08,81.24
|tip Inside the building.
|only if haveq(35881) or completedq(35881)
step
label "Slay_Frenzied_Podlings"
Kill Frenzied enemies around this area
Slay #20# Frenzied Podlings |q 35881/1 |goto 50.34,79.11
|only if haveq(35881) or completedq(35881)
step
label "Loot_Ancient_Jars"
click Ancient Ogre Hoard Jar##233296+
|tip They look like brown and white vases on the ground around this area.
Loot #8# Ancient Jars |q 35881/2 |goto 50.34,79.11
|only if haveq(35881) or completedq(35881)
step
Follow the path |goto 49.65,80.49 < 20 |only if walking
talk Thaelin Darkanvil##81588
turnin Deeproot##35212 |goto 46.08,76.86
accept The Razorbloom##35213 |goto 46.08,76.86
step
talk Rangari Kaalya##81589
accept The Infested##35214 |goto 46.11,76.66
step
talk Rangari Nogo##81888
fpath Deeproot |goto 46.47,76.60
step
Follow the road |goto 48.19,86.65 < 30 |only if walking
accept Bonus Objective: Tailthrasher Basin##36520 |goto 45.22,91.14
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Slay_Tailthrasher_Saberons"
stickystart "Free_Jungle_Axebreaks"
step
Enter the cave |goto 44.72,90.10 < 10 |walk
kill Skull Thrash##85733 |q 36520/3 |goto 44.40,88.80
|tip Inside the cave.
|only if haveq(36520) or completedq(36520)
step
label "Slay_Tailthrasher_Saberons"
Kill Tailthrasher enemies around this area
Slay #12# Tailthrasher Saberons |q 36520/1 |goto 45.22,91.14
|only if haveq(36520) or completedq(36520)
step
label "Free_Jungle_Axebreaks"
clicknpc Rope Spike##85810+
|tip They look like bundles of wooden sticks standing upright with birds tied to them on the ground around this area.
Free #6# Jungle Axebreaks |q 36520/2 |goto 45.22,91.14
|only if haveq(36520) or completedq(36520)
step
talk Rangari Yaval##84507
fpath Bastion Rise |goto 46.40,92.41
stickystart "Slay_Infested"
step
Follow the path |goto 47.23,74.74 < 15 |only if walking
clicknpc Nori Sootstash##81675
Find Nori Sootstash |q 35213/2 |goto 48.13,73.58
step
clicknpc Lera Ashtoes##81676
Find Lera Ashtoes |q 35213/1 |goto 47.38,73.40
step
clicknpc Razzlebeard##81659
Find Razzlebeard |q 35213/3 |goto 47.60,72.78
step
click Razzlebeard's Report##231903
accept The Voice of Iyu##35215 |goto 47.60,72.74
step
Enter the tree |goto 49.33,71.48 < 7 |walk
kill Voice of Iyu##81634 |q 35215/1 |goto 49.43,71.65
|tip Inside the tree.
step
click Enriched Seeds##235129
accept Super Seeds##35216 |goto 49.46,70.94
step
label "Slay_Infested"
Kill Infested enemies around this area
Slay #6# Infested |q 35214/1 |goto 47.70,73.05
step
talk Rangari Kaalya##81589
turnin The Infested##35214 |goto 46.12,76.65
step
talk Thaelin Darkanvil##81588
turnin The Razorbloom##35213 |goto 46.08,76.86
turnin The Voice of Iyu##35215 |goto 46.08,76.86
turnin Super Seeds##35216 |goto 46.08,76.86
accept Dark Iron Down##35208 |goto 46.08,76.86
step
talk Yrel##81590
accept Bushwhacker##35206 |goto 46.04,76.67
step
talk Rangari Kaalya##81589
accept Pollen Power##35204 |goto 46.12,76.66
step
Kill enemies around this area
|tip Only enemies that looks like insects will drop the quest item.
collect 20 Potent Pollen##112909 |q 35204/1 |goto 45.01,78.56
step
Follow the path |goto 44.53,79.33 < 15 |only if walking
Enter the tree |goto 42.27,83.29 < 7 |walk
talk Burrian Coalpart##81600
|tip Inside the tree.
turnin Dark Iron Down##35208 |goto 42.11,83.44
accept Burn the Bodies##35205 |goto 42.11,83.44
accept A Green Ogron?##36523 |goto 42.11,83.44
stickystart "Burn_Bodies"
stickystart "Kill_Bloom_Weavers"
step
kill Infested Ogron##82062 |q 36523/1 |goto 42.94,80.61
step
_Next to you:_
talk Burrian Coalpart##81601
turnin A Green Ogron?##36523
step
label "Burn_Bodies"
clicknpc Mulching Body##85593+
|tip They look like various corpses on the ground and inside tree houses around this area.
Burn #6# Bodies |q 35205/1 |goto 42.79,80.67
step
_Next to you:_
talk Burrian Coalpart##81601
turnin Burn the Bodies##35205
accept Coalpart's Revenge##35207
step
label "Kill_Bloom_Weavers"
kill 9 Bloom Weaver##81575 |q 35206/1 |goto 42.79,80.67
step
Follow the path up |goto 41.76,83.01 < 20 |only if walking
kill 3 Dew Master##81553 |q 35207/1 |goto 39.77,81.51
step
_Next to you:_
talk Burrian Coalpart##81601
turnin Coalpart's Revenge##35207
accept The Life Spring##35209
step
kill Utrophis##75094
collect Waters of Utrophis##112905 |q 35209/1 |goto 40.64,81.81
step
talk Rangari Kaalya##81589
turnin Pollen Power##35204 |goto 46.11,76.66
step
talk Yrel##81590
turnin The Life Spring##35209 |goto 46.05,76.68
turnin Bushwhacker##35206 |goto 46.05,76.68
step
talk Thaelin Darkanvil##81588
accept A Heavy Helping Hand##35225 |goto 46.08,76.86
step
Enter the building |goto 47.78,93.52 < 10 |walk
Find the Dark Iron Dwarf Survivors |q 35225/1 |goto 47.54,94.09
|tip Inside the building.
step
talk Hansel Heavyhands##75710
|tip Inside the building.
turnin A Heavy Helping Hand##35225 |goto 47.54,94.09
accept Will of the Genesaur##35234 |goto 47.54,94.09
accept Down the Goren Hole##35229 |goto 47.54,94.09
accept Just In Case##35233 |goto 47.54,94.09
stickystart "Collect_Doomshot"
stickystart "Slay_Goren_Breachers"
step
Follow the path down |goto Gorgrond/16 57.22,84.39 < 7 |walk
click Will of the Genesaur##231961
|tip Downstairs inside the building.
collect Will of the Genesaur##11299 |q 35234/1 |goto Gorgrond/17 58.78,23.03
step
label "Collect_Doomshot"
click Doomshot##232492+
|tip They look like large metal bullets on the ground around this area.
|tip Inside the building.
collect 4 Doomshot##112990 |q 35233/1 |goto 63.49,65.10
step
label "Slay_Goren_Breachers"
Kill enemies around this area
|tip Inside the building.
Slay #5# Goren Breachers |q 35229/1 |goto 63.49,65.10
step
talk Hansel Heavyhands##81751
|tip Downstairs inside the building.
turnin Will of the Genesaur##35234 |goto 50.03,22.21
turnin Down the Goren Hole##35229 |goto 50.03,22.21
turnin Just In Case##35233 |goto 50.03,22.21
accept Iyu##35235 |goto 50.03,22.21
step
Follow the path up |goto 64.29,80.76 < 7 |walk
kill Iyu##78819 |q 35235/1 |goto Gorgrond/0 47.46,92.42
|tip Your allies will help you fight.
|tip Outside.
step
talk Yrel##75878
turnin Iyu##35235 |goto 47.71,93.32
accept Power of the Genesaur##35255 |goto 47.71,93.32
step
talk Rangari Kaalya##81772
accept Service of Rangari Kaalya##35262 |goto 47.78,93.27
step
Follow the road |goto 44.28,70.01 < 15 |only if walking
accept Bonus Objective: Stonemaul Arena##36566 |goto 42.12,65.30
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Destroy_Grog_Kegs"
stickystart "Slay_Stonemaul_Ogres"
step
Run up the ramp |goto 40.99,66.20 < 7 |only if walking
kill Slave Hunter Krag##79623 |q 36566/3 |goto 41.07,66.27
|tip On top of the building.
|only if haveq(36566) or completedq(36566)
step
kill Slave Hunter Brol##79621 |q 36566/4 |goto 40.53,66.70
|only if haveq(36566) or completedq(36566)
step
Run up the rocks |goto 39.70,68.11 < 7 |only if walking
Enter the building |goto 38.98,68.18 < 7 |walk
kill Slave Hunter Mol##79626 |q 36566/5 |goto 38.98,68.77
|tip Inside the building.
|only if haveq(36566) or completedq(36566)
step
label "Destroy_Grog_Kegs"
click Keg of Grog##235916+
|tip They look like large wooden barrels on the ground and inside buildings around this area.
Destroy #15# Grog Kegs |q 36566/2 |goto 39.56,66.81
|only if haveq(36566) or completedq(36566)
step
label "Slay_Stonemaul_Ogres"
Kill Stonemaul enemies around this area
Slay #20# Stonemaul Ogres |q 36566/1 |goto 39.56,66.81
|only if haveq(36566) or completedq(36566)
step
accept Bonus Objective: Affliction Ridge##36473 |goto 45.28,64.13
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Slay_Monsters"
step
clicknpc Ancient Seedbearer##82392+
|tip They look like dead tree creatures on the ground around this area.
Burn #5# Ancient Seedbearers |q 36473/2 |goto 45.28,64.13
|only if haveq(36473) or completedq(36473)
step
label "Slay_Monsters"
Kill enemies around this area
Slay #25# Monsters |q 36473/1 |goto 45.28,64.13
|only if haveq(36473) or completedq(36473)
step
accept Bonus Objective: Brimstone Springs##36603 |goto 42.21,63.09
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Sulfuric_Oozes"
stickystart "Slay_Brimfuries"
step
kill 3 Grievous Depthworm##85942 |q 36603/3 |goto 40.15,55.72
|tip In the water around this area.
|only if haveq(36603) or completedq(36603)
step
label "Kill_Sulfuric_Oozes"
kill 15 Sulfuric Ooze##85960 |q 36603/2 |goto 40.15,55.72
|tip In the water around this area. |notinsticky
|only if haveq(36603) or completedq(36603)
step
label "Slay_Brimfuries"
Kill Brimfury enemies around this area
Slay #8# Brimfuries |q 36603/1 |goto 41.15,54.91
|only if haveq(36603) or completedq(36603)
step
Follow the path up |goto 45.08,55.41 < 15 |only if walking
talk Nisha##86492
fpath Breaker's Crown |goto 45.87,54.95
step
accept Bonus Objective: South Gronn Canyon##36476 |goto 47.61,53.92
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Gromkar_Grunts"
stickystart "Slay_Goren_Or_Gronnlings"
step
clicknpc Grom'kar Peon##85540+
|tip They look like orcs laying on the ground around this area.
Execute #8# Dying Grom'kar Peons |q 36476/3 |goto 47.61,53.92
You can find more up on the plataeu around [47.85,51.88]
|only if haveq(36476) or completedq(36476)
step
label "Kill_Gromkar_Grunts"
kill 10 Grom'kar Grunt##75091 |q 36476/2 |goto 47.61,53.92
You can find more up on the plataeu around [47.85,51.88]
|only if haveq(36476) or completedq(36476)
step
label "Slay_Goren_Or_Gronnlings"
Kill enemies around this area
Slay #15# Goren or Gronnlings |q 36476/1 |goto 45.60,52.55
|only if haveq(36476) or completedq(36476)
step
accept Bonus Objective: Valley of Destruction##36480 |goto 46.79,47.93
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Goren_Nibblers"
stickystart "Kill_Canyon_Boulderbreakers"
step
Break #15# Goren Eggs |q 36480/3 |goto 46.79,47.93
|tip They look like clusters of gray eggs on the ground around this area.
|tip Walk on them to break them.
|only if haveq(36480) or completedq(36480)
step
label "Kill_Goren_Nibblers"
kill 20 Goren Nibbler##81775 |q 36480/2 |goto 46.79,47.93
|only if haveq(36480) or completedq(36480)
step
label "Kill_Canyon_Boulderbreakers"
kill 5 Canyon Boulderbreaker##81246 |q 36480/1 |goto 46.19,46.73
|only if haveq(36480) or completedq(36480)
step
Follow the path up |goto 47.65,49.81 < 15 |only if walking
talk Altauur##85426
turnin Seeking the Scout##36432 |goto 49.40,49.64
accept Plant Pruning##36436 |goto 49.40,49.64
accept Ambassador to the Ancient##36437 |goto 49.40,49.64
stickystart "Slay_Dionor_Defenders"
step
talk Birchus##81723
Tell him _"Thank you for not killing me. What duty have you failed?"_
Talk to Birchus |q 36437/1 |goto 50.28,47.51
step
label "Slay_Dionor_Defenders"
Kill enemies around this area
Slay #12# Dionor Defenders |q 36436/1 |goto 50.28,46.53
step
Enter the cave |goto 51.14,47.73 < 7 |walk
talk Altauur##85432
|tip Inside the cave.
turnin Plant Pruning##36436 |goto 51.33,47.97
turnin Ambassador to the Ancient##36437 |goto 51.33,47.97
accept Shredder vs. Saberon##36439 |goto 51.33,47.97
step
Follow the path up |goto 52.23,46.23 < 20 |only if walking
click Strong Vine Barricade##235381
|tip Walk forward after you take down the barrier.
Shred the Vine Barrier and Enter the Saberon Camp |q 36439/1 |goto 52.22,48.63
step
talk Altauur##85431
turnin Shredder vs. Saberon##36439 |goto 52.04,49.49
accept Saberon Population Reduction##36440 |goto 52.04,49.49
stickystart "Slay_Steamscar_Saberons"
step
click Saberon Stash##232311
accept Reclaiming Property##36441 |goto 51.85,50.03
step
click Saberon Stash##232311+
|tip They look like brown leather crates on the ground and in the caves around this area.
collect 8 Saberon Herb Bundle##115442 |q 36441/1 |goto 51.70,51.57
step
label "Slay_Steamscar_Saberons"
Kill Steamscar enemies around this area
Slay #10# Steamscar Saberons |q 36440/1 |goto 51.70,51.57
step
Follow the path up |goto 52.11,50.51 < 15 |only if walking
talk Altauur##85436
turnin Saberon Population Reduction##36440 |goto 52.87,51.79
turnin Reclaiming Property##36441 |goto 52.87,51.79
accept Taking the Death Bloom##36442 |goto 52.87,51.79
step
Enter the cave |goto 53.78,51.85 < 10 |walk
kill Smokemaster Snarl##81749
|tip Inside the cave.
collect Dionor's Death Bloom##113187 |q 36442/1 |goto 54.28,52.61
step
talk Birchus##82302
turnin Taking the Death Bloom##36442 |goto 50.28,47.51
accept Laying Dionor to Rest##36443 |goto 50.28,47.51
step
Complete the Ritual |q 36443/1 |goto 50.28,47.51
step
Watch the dialogue
talk Birchus##82302
turnin Laying Dionor to Rest##36443 |goto 50.28,47.51
step
Follow the path |goto 52.74,44.63 < 40 |only if walking
talk Arcanist Windlebop##84714
fpath Everbloom Wilds |goto 57.01,45.88
step
talk Vindicator Maraad##75127
turnin Power of the Genesaur##35255 |goto 52.84,59.68
accept Strike While the Iron is Hot##36575 |goto 52.84,59.68
step
talk Rangari Rajess##81074
Tell her _"I am needed urgently at the Iron Docks."_
Fly to the Iron Docks |q 36575/1 |goto 52.82,59.33
step
Begin the Scenario |scenariostart |goto 45.10,18.49 |q 36575 |notravel
step
Locate Yrel |goto 44.68,17.82 < 10 |c |q 36575
step
talk Yrel##85619
Tell her _"Let's go."_
Begin Following Yrel |goto 44.68,17.82 > 15 |c |q 36575
step
Watch the dialogue
|tip Follow Yrel as she walks.
Confront Commander Gar |scenariogoal 1/25388 |goto 44.28,16.57 |q 36575
step
Use the _"Access Artifact"_ ability
|tip Use it near enemies around this area.
|tip It appears as a button on the screen.
Kill enemies around this area
Use the Artifact to Eliminate your Enemies |scenariogoal 2/25389 |goto 44.27,16.21 |q 36575
step
Use the _"Access Artifact"_ ability
|tip Use it near enemies around this area.
|tip It appears as a button on the screen.
Kill enemies around this area
Defeat the Incoming Enemies |scenariogoal 3/25390 |goto 44.27,16.21 |q 36575
step
Use the _"Access Artifact"_ ability
|tip Use it near enemies around this area.
|tip It appears as a button on the screen.
kill Goc##85580
|tip Your allies will do most of the damage to him, so just help them.
Defeat Goc |scenariogoal 4/25391 |goto 44.27,16.21 |q 36575
step
Watch the dialogue
kill Commander Gar##85571
|tip Stay close to Yrel, and stand in the bubbles she casts.
|tip They will heal you as you fight.
Defeat Commander Gar |scenarioend |goto 44.27,16.21 |q 36575
Complete the Iron Approach |q 36575/2 |goto 44.27,16.21
step
Follow the path |goto 44.27,19.30 < 30 |only if walking
talk Nisha##84700
fpath Iron Docks |goto 43.04,20.21
step
talk Vindicator Maraad##75127
turnin Strike While the Iron is Hot##36575 |goto 52.84,59.68
accept News from Talador##36495 |goto 52.84,59.68
step
#include "Garrison_BGrey"
turnin News from Talador##36495
|next "Leveling Guides\\Draenor (10-60)\\Talador (20-60)"
step
label "Highpass_Sparring_Ring"
talk Trader Yula##85968
home Highpass |goto Gorgrond/0 53.23,59.79
step
talk Thaelin Darkanvil##75136
turnin We Need An Outpost##35063 |goto 53.00,59.78
step
talk Rangari Jonaa##81076
accept A Rediscovered Legend##34704 |goto 52.84,59.87
step
talk Vindicator Maraad##75127
accept Rage and Wisdom##35686 |goto 52.85,59.68
step
talk Rangari Rajess##81074
fpath Highpass |goto 52.82,59.33
step
talk Rangari D'kaan##75146
accept Rangari in the Red##35666 |goto 53.32,59.89
accept Seeking the Scout##36432 |goto 53.32,59.89
step
talk Rangari Rajess##81074
Tell her _"I need to meet with Rangari Erdanii."_
Ask Rangari Rajess to Fly You to Rangari Erdanii |q 35686/1 |goto 52.82,59.33
step
Fly to Rangari Erdanii |goto 46.60,66.78 < 10 |c |q 35686 |notravel
step
talk Rangari Erdanii##82610
turnin Rage and Wisdom##35686 |goto 46.26,66.70
accept Seedbearers of Bad News##35664 |goto 46.26,66.70
accept A Harsh Reminder##35693 |goto 46.26,66.70
stickystart "Slay_Denizens_Of_The_Wasteland_Sparring"
step
clicknpc Ancient Seedbearer##82392+
|tip They look like dead tree creatures on the ground around this area.
Burn #5# Ancient Seedbearers |q 35664/1 |goto 45.28,64.13
step
label "Slay_Denizens_Of_The_Wasteland_Sparring"
Kill enemies around this area
|tip Only Gronn, Goren, or Gronnling enemies will count for the quest goal.
Slay #8# Denizens of the Wasteland |q 35693/1 |goto 45.28,64.13
step
talk Rangari Erdanii##82610
turnin Seedbearers of Bad News##35664 |goto 44.90,63.95
turnin A Harsh Reminder##35693 |goto 44.90,63.95
accept We Have Company##35665 |goto 44.90,63.95
step
talk Dying Beast##81056
Choose _"Release the creature from its chains."_
Investigate the Iron Horde Camp |q 35665/1 |goto 44.24,61.60
step
Watch the dialogue
talk Rexxar##82832
turnin We Have Company##35665 |goto 44.28,61.64
accept Cauterizing Wounds##35730 |goto 44.28,61.64
step
click Iron Horde Bonfire##233180
collect Burning Log##113398 |q 35730/1 |goto 44.38,61.33
step
clicknpc Nisha##83933
Cauterize Nisha's Wounds |q 35730/2 |goto 44.24,61.60
step
talk Rexxar##82832
turnin Cauterizing Wounds##35730 |goto 44.28,61.64
accept On the Mend##35026 |goto 44.28,61.64
accept Basilisk Butcher##35870 |goto 44.28,61.64
step
talk Gladiator Akaani##79322
turnin A Rediscovered Legend##34704 |goto 42.75,62.98
accept Getting Gladiators##34699 |goto 42.75,62.98
step
talk Kash'drakor##79320
accept Slave Hunters##34698 |goto 42.76,63.07
accept Nazgrel##34700 |goto 42.76,63.07
step
talk Beatface##79331
accept Krav'ogra##34702 |goto 42.69,63.08
step
talk Prowler Sasha##75008
accept Need More Teeth##34012 |goto 41.41,66.11
stickystart "Collect_Ogre_Teeth_Sparring"
step
Run up the wooden ramp |goto 40.99,66.21 < 7 |only if walking
kill Slave Hunter Krag##79623
|tip On top of the building.
collect Pendant of Krag##111527 |q 34698/2 |goto 41.06,66.22
step
Enter the building |goto 40.39,65.05 < 7 |walk
click Shackle##233308
|tip It looks like a small metal lock.
|tip Inside the building.
Free Bruto |q 34699/3 |goto 40.31,64.81
step
kill Slave Hunter Brol##79621
collect Pendant of Brol##108899 |q 34698/1 |goto 40.53,66.70
step
click Challenge Gong##215697
|tip Click it multiple times.
|tip You will have to kill an enemy each time.
|tip Eventually, Slavemaster Ok'mok will enter the ring to fight you.
kill Slavemaster Ok'mok##75864
Slay Slavemaster Ok'mok in the Stonemaul Arena |q 34702/1 |goto 40.40,67.58
step
Enter the building |goto 39.30,66.79 < 7 |walk
click Shackle##233308
|tip It looks like a small metal lock on the wall.
|tip Inside the building.
Free Pitfighter Vaandaam |q 34699/1 |goto 39.15,67.26
step
click Shackle##233308
|tip It looks like a small metal lock on the wooden cage.
Free Y'kish |q 34699/2 |goto 39.76,67.84
step
Run up the rocks |goto 39.69,68.09 < 7 |only if walking
Enter the building |goto 38.98,68.15 < 10 |walk
kill Slave Hunter Mol##79626
|tip Inside the building.
collect Pendant of Mol##111528 |q 34698/3 |goto 38.99,68.76
step
Enter the cave |goto 38.51,67.40 < 10 |walk
Follow the path |goto 37.57,69.40 < 15 |walk
click Nazgrel's Cage##233369
|tip Inside the cave.
Rescue Nazgrel |q 34700/1 |goto 36.84,70.57
step
talk Bruto##77014
|tip Inside the cave.
turnin Getting Gladiators##34699 |goto 36.85,67.90
accept The Axe of Kor'gall##34703 |goto 36.85,67.90
step
Follow the path |goto 36.26,68.82 < 10 |walk
kill Kor'gall##77020
|tip Your allies will help you fight.
|tip Inside the cave.
collect Serathil##109023 |q 34703/1 |goto 36.46,70.08
step
label "Collect_Ogre_Teeth_Sparring"
Kill Stonemaul enemies around this area
|tip Inside the cave. |notinsticky
collect 30 Ogre Tooth##108898 |q 34012/1 |goto 37.41,68.61
step
Leave the cave |goto 38.51,67.40 < 10 |walk
talk Prowler Sasha##75008
turnin Need More Teeth##34012 |goto 41.41,66.11
step
talk Beatface##79331
turnin Krav'ogra##34702 |goto 42.69,63.08
step
talk Kash'drakor##79320
turnin Slave Hunters##34698 |goto 42.76,63.06
turnin Nazgrel##34700 |goto 42.76,63.06
step
talk Gladiator Akaani##79322
turnin The Axe of Kor'gall##34703 |goto 42.75,62.98
accept The Sparring Arena##35137 |goto 42.75,62.98
step
talk Pitfighter Vaandaam##79337
accept The Fists of Vaandaam##35883 |goto 42.75,63.01
stickystart "Collect_Quenching_Waters_Sparring"
step
kill Stoneshamble Basilisk##74962+
clicknpc Decaying Basilisk##83405+
|tip They look like dead basilisks on the ground around this area.
collect 9 Basilisk Meat##113504 |q 35870/1 |goto 44.07,59.56
step
label "Collect_Quenching_Waters_Sparring"
Kill Steamfury enemies around this area
|tip In the water around this area.
collect 100 Quenching Waters##113009 |q 35026/1 |goto 44.07,59.56
step
Foll the path up |goto 43.94,56.19 < 20 |only if walking
accept Bonus Objective: Brimstone Springs##36603 |goto 42.87,55.52
|only if level < 50
stickystart "Kill_Sulfuric_Oozes_Sparring"
stickystart "Slay_Brimfuries_Sparring"
step
kill 3 Grievous Depthworm##85942 |q 36603/3 |goto 40.15,55.72
|tip In the water around this area.
|only if haveq(36603) or completedq(36603)
step
label "Kill_Sulfuric_Oozes_Sparring"
kill 15 Sulfuric Ooze##85960 |q 36603/2 |goto 40.15,55.72
|tip In the water around this area. |notinsticky
|only if haveq(36603) or completedq(36603)
step
label "Slay_Brimfuries_Sparring"
Kill Brimfury enemies around this area
Slay #8# Brimfuries |q 36603/1 |goto 41.15,54.91
|only if haveq(36603) or completedq(36603)
step
Follow the path up |goto 45.08,55.41 < 15 |only if walking
talk Nisha##86492
fpath Breaker's Crown |goto 45.87,54.95
step
talk Nisha##81674
turnin On the Mend##35026 |goto 45.86,54.96
turnin Basilisk Butcher##35870 |goto 45.86,54.96
step
talk Rexxar##83569
accept Is This One of Yours?##36508 |goto 46.04,54.74
step
talk Rexxar##83569
Tell him _"This is one of my allies."_
Vouch for Rangari Erdanii |q 36508/1 |goto 46.04,54.74
step
Watch the dialogue
talk Rangari Erdanii##82610
turnin Is This One of Yours?##36508 |goto 46.20,55.09
accept The Crystal Shard##36208 |goto 46.20,55.09
accept Hard Shell##36210 |goto 46.20,55.09
step
talk Rexxar##80856
accept Bad at Breaking##35037 |goto 46.04,54.74
accept Nisha's Vengeance##35934 |goto 46.04,54.74
stickystart "Kill_Gromkar_Grunts_Sparring"
step
kill Mangled Boulderbreaker##85988 |q 35037/1 |goto 48.00,54.32
step
Follow the path up |goto 48.05,52.79 < 20 |only if walking
kill Gronnslaver Raz##83774 |q 35037/2 |goto 47.76,51.63
step
click Weaponization Orders##233391
accept The Gronn Strategy##35925 |goto 47.72,52.07
step
label "Kill_Gromkar_Grunts_Sparring"
kill 10 Grom'kar Grunt##75091 |q 35934/1 |goto 47.61,53.92
You can find more up on the plataeu around [47.85,51.88]
stickystart "Collect_Goren_Crystals_Sparring"
step
Kill Boneyard enemies around this area
|tip Walk next to the rumbling fissures on the ground around this area.
|tip A group of Boneyard Gorgers will appear.
collect 9 Goren Shell##112786 |q 36210/1 |goto 45.21,52.62
step
label "Collect_Goren_Crystals_Sparring"
clicknpc Longtooth Gorger##83489+
|tip They look like dead Goren on the ground around this area.
collect 25 Goren Crystal##112911 |q 36208/1 |goto 45.21,52.62
step
Follow the path up |goto 45.22,55.45 < 15 |only if walking
talk Rexxar##80856
turnin Bad at Breaking##35037 |goto 46.04,54.74
turnin Nisha's Vengeance##35934 |goto 46.04,54.74
turnin The Gronn Strategy##35925 |goto 46.04,54.74
step
talk Rangari Erdanii##82610
turnin The Crystal Shard##36208 |goto 46.20,55.09
turnin Hard Shell##36210 |goto 46.20,55.09
accept What's Under There?##36209 |goto 46.20,55.09
step
Follow the path up |goto 48.09,52.78 < 20 |only if walking
talk Altauur##85426
turnin Seeking the Scout##36432 |goto 49.40,49.64
accept Plant Pruning##36436 |goto 49.40,49.64
accept Ambassador to the Ancient##36437 |goto 49.40,49.64
stickystart "Slay_Dionor_Defenders_Sparring"
step
talk Birchus##81723
Tell him _"Thank you for not killing me. What duty have you failed?"_
Talk to Birchus |q 36437/1 |goto 50.28,47.51
step
label "Slay_Dionor_Defenders_Sparring"
Kill enemies around this area
Slay #12# Dionor Defenders |q 36436/1 |goto 50.28,46.53
step
Enter the cave |goto 51.14,47.73 < 7 |walk
talk Altauur##85432
|tip Inside the cave.
turnin Plant Pruning##36436 |goto 51.33,47.97
turnin Ambassador to the Ancient##36437 |goto 51.33,47.97
accept Beatface vs. Boulder##36438 |goto 51.33,47.97
step
Follow the path up |goto 50.26,49.73 < 15 |only if walking
click Large Boulder
Watch the dialogue
Breach the Saberon Camp |q 36438/1 |goto 50.62,51.45
step
talk Altauur##85431
turnin Beatface vs. Boulder##36438 |goto 50.88,51.39
accept Saberon Population Reduction##36440 |goto 50.88,51.39
stickystart "Slay_Steamscar_Saberons_Sparring"
step
click Saberon Stash##232311
accept Reclaiming Property##36441 |goto 51.05,51.62
step
click Saberon Stash##232311+
|tip They look like brown leather crates on the ground and in the caves around this area.
collect 8 Saberon Herb Bundle##115442 |q 36441/1 |goto 51.70,51.57
step
label "Slay_Steamscar_Saberons_Sparring"
Kill Steamscar enemies around this area
Slay #10# Steamscar Saberons |q 36440/1 |goto 51.70,51.57
step
Follow the path up |goto 52.11,50.51 < 15 |only if walking
talk Altauur##85436
turnin Saberon Population Reduction##36440 |goto 52.87,51.79
turnin Reclaiming Property##36441 |goto 52.87,51.79
accept Taking the Death Bloom##36442 |goto 52.87,51.79
step
Enter the cave |goto 53.78,51.85 < 10 |walk
kill Smokemaster Snarl##81749
|tip Inside the cave.
collect Dionor's Death Bloom##113187 |q 36442/1 |goto 54.28,52.61
step
talk Birchus##82302
turnin Taking the Death Bloom##36442 |goto 50.28,47.51
accept Laying Dionor to Rest##36443 |goto 50.28,47.51
step
Complete the Ritual |q 36443/1 |goto 50.28,47.51
step
Watch the dialogue
talk Birchus##82302
turnin Laying Dionor to Rest##36443 |goto 50.28,47.51
step
Follow the path |goto 52.74,44.63 < 40 |only if walking
talk Arcanist Windlebop##84714
fpath Everbloom Wilds |goto 57.01,45.88
step
use Goren Disguise##112958
Wear the Goren Disguise |havebuff spell:164332 |q 36209
step
Locate the Goren Tunnel |goto 46.91,55.38 < 10 |c |q 36209
step
click Goren Tunnel##236140
Begin Traveling in the Tunnel |goto 46.91,55.38 > 15 |c |q 36209
step
See Where the First Tunnel Leads |q 36209/1 |goto 45.94,50.54 |notravel
step
clicknpc Bluff Rylak##86022
Consume the Rylak |q 36209/2 |goto 45.75,50.40
step
use Goren Disguise##112958
Wear the Goren Disguise |havebuff spell:164332 |q 36209
step
Locate the Goren Tunnel |goto 45.78,50.36 < 10 |c |q 36209
step
click Goren Tunnel##236140
Begin Traveling in the Tunnel |goto 45.78,50.36 > 15 |c |q 36209
step
See Where the Second Tunnel Leads |q 36209/3 |goto 44.30,41.77 |notravel
step
use Goren Disguise##112958
Wear the Goren Disguise |havebuff spell:164332 |q 36209
step
Locate the Goren Tunnel |goto 44.31,41.78 < 10 |c |q 36209
step
click Goren Tunnel##236140
Begin Traveling in the Tunnel |goto 44.31,41.78 > 15 |c |q 36209
step
See Where the Third Tunnel Leads |q 36209/4 |goto 43.31,42.12 |notravel
step
use Goren Disguise##112958
Wear the Goren Disguise |havebuff spell:164332 |q 36209
step
clicknpc Grom'kar Messenger##84503
|tip Inside the cave.
Search the Grom'kar Messenger's Body |q 36209/5 |goto 43.16,42.30
step
use Goren Disguise##112958
Wear the Goren Disguise |havebuff spell:164332 |q 36209
step
click Goren Tunnel##236140
|tip Inside the cave.
Take the Tunnel Back to Breaker's Crown |q 36209/6 |goto 43.01,42.50
step
Tunnel Back to Breaker's Crown |goto 46.92,55.39 < 10 |c |q 36209 |notravel
step
talk Rangari Erdanii##82610
turnin What's Under There?##36209 |goto 46.20,55.09
accept Leave Every Soldier Behind##36223 |goto 46.20,55.09
step
talk Rexxar##80856
accept Fair Warning##35128 |goto 46.04,54.74
step
talk Nisha##81674
Choose _"Ride Nisha to Fissure of Fury."_
Begin Flying with Nisha |invehicle |goto 45.87,54.95 |q 35128
step
Fly to Fissure of Fury |outvehicle |goto 43.95,48.77 |q 35128 |notravel
stickystart "Kill_Ogron_Spinecrushers_Sparring"
step
Enter the cave |goto 43.50,48.07 < 15 |walk
talk Corporal Thukmar##81213
|tip Follow the spiral path down.
|tip Downstairs inside the cave.
Choose _"Put the corporal out of his misery."_
Find Corporal Thukmar |q 36223/1 |goto Gorgrond/19 44.97,86.14
step
click Thukmar's Research##233594
|tip Downstairs inside the cave.
Acquire Thukmar's Intel |q 36223/2 |goto 44.55,85.88
step
kill Borogahn##81043 |q 35128/2 |goto 30.76,75.32
|tip Downstairs inside the cave.
step
label "Kill_Ogron_Spinecrushers_Sparring"
kill 8 Ogron Spinecrusher##81240 |q 35128/1 |goto 47.78,63.15
|tip Downstairs inside the cave. |notinsticky
step
click Goren Tunnel##235115
|tip Downstairs inside the cave.
accept A Great Escape##35210 |goto 34.65,66.65
step
click Goren Tunnel##235115
|tip Downstairs inside the cave.
Take the Tunnel to Rexxar |q 35210/1 |goto 34.65,66.65
step
Tunnel Back to Rexxar |goto Gorgrond/0 43.85,48.58 < 10 |c |q 35210 |notravel
step
talk Rexxar##84131
turnin Leave Every Soldier Behind##36223 |goto Gorgrond/0 43.94,48.87
turnin Fair Warning##35128 |goto Gorgrond/0 43.94,48.87
turnin A Great Escape##35210 |goto Gorgrond/0 43.94,48.87
accept Eye in the Sky##35139 |goto Gorgrond/0 43.94,48.87
step
talk Nisha##83933
Choose _"Place your hand on Nisha's head."_
Scout with Nisha |q 35139/1 |goto 43.85,48.93
step
talk Rexxar##84131
turnin Eye in the Sky##35139 |goto 43.94,48.87
accept Chains of Iron##35702 |goto 43.94,48.87
step
accept Bonus Objective: Valley of Destruction##36480 |goto 46.79,47.93
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Goren_Nibblers_Sparring"
stickystart "Kill_Canyon_Boulderbreakers_Sparring"
step
Break #15# Goren Eggs |q 36480/3 |goto 46.79,47.93
|tip They look like clusters of gray eggs on the ground around this area.
|tip Walk on them to break them.
|only if haveq(36480) or completedq(36480)
step
label "Kill_Goren_Nibblers_Sparring"
kill 20 Goren Nibbler##81775 |q 36480/2 |goto 46.79,47.93
|only if haveq(36480) or completedq(36480)
step
label "Kill_Canyon_Boulderbreakers_Sparring"
kill 5 Canyon Boulderbreaker##81246 |q 36480/1 |goto 46.19,46.73
|only if haveq(36480) or completedq(36480)
step
Follow the path |goto 48.49,45.92 < 20 |only if walking
Kill the enemies that attack in waves
|tip Your allies will help you fight.
kill Captain Brak##81254 |q 35702/1 |goto 49.24,44.81
step
click Heart of the Magnaron##231775
Recover the Heart of the Magnaron |q 35702/2 |goto 49.73,43.85
step
Locate Nisha |goto 49.60,44.51 < 10 |c |q 35702
step
clicknpc Nisha##82118
Choose _"Ride Nisha to your outpost."_
Ride with Nisha |goto 49.60,44.51 > 15 |c |q 35702
step
Return to Highpass |goto 52.88,59.34 < 10 |c |q 35702 |notravel
step
talk Vindicator Maraad##75127
turnin Chains of Iron##35702 |goto 52.84,59.68
step
talk Rangari Jonaa##81076
turnin The Sparring Arena##35137 |goto 52.84,59.87
turnin Proof of Strength: Gronn Eye##36081 |goto 52.84,59.87 |only if haveq(36081) or completedq(36081)
step
talk Rangari Erdanii##85278
accept May I Be of Service?##36833 |goto 53.31,59.73
step
accept Bonus Objective: Mistcreep Mire##36563 |goto 52.11,66.69
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Break_Hydra_Eggs_Sparring"
step
kill 5 Lernaea Vilescale##85693 |q 36563/1 |goto 52.11,66.69
|only if haveq(36563) or completedq(36563)
step
label "Break_Hydra_Eggs_Sparring"
kill Hydra Egg##85786+
|tip They look like large white eggs on the ground around this area.
Break #25# Hydra Eggs |q 36563/2 |goto 52.11,66.69
|only if haveq(36563) or completedq(36563)
step
Follow the path up |goto 50.36,70.87 < 30 |only if walking
accept Bonus Objective: The Razorbloom##36500 |goto 49.43,71.66
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Squish_Toxic_Slimemolds_Sparring"
stickystart "Slay_Infested_Sparring"
step
Enter the tree |goto 49.33,71.48 < 7 |walk
kill Voice of Iyu##81634 |q 36500/2 |goto 49.43,71.65
|tip Inside the tree.
|only if haveq(36500) or completedq(36500)
step
label "Squish_Toxic_Slimemolds_Sparring"
Squish #25# Toxic Slimemold |q 36500/3 |goto 47.94,72.73
|tip They look like small green slimes on the ground around this area.
|tip Walk on them to squish them.
|only if haveq(36500) or completedq(36500)
step
label "Slay_Infested_Sparring"
Kill Infested enemies around this area
Slay #12# Infested |q 36500/1 |goto 47.94,72.73
|only if haveq(36500) or completedq(36500)
step
talk Rangari Nogo##81888
fpath Deeproot |goto 46.48,76.60
step
Follow the path down |goto 49.71,72.59 < 30 |only if walking
Follow the path up |goto 53.64,69.08 < 50 |only if walking
accept Bonus Objective: Tangleheart##36564 |goto 55.82,71.34
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Destroy_Pollen_Pods_Sparring"
stickystart "Kill_Tangleheart_Cultivators_Sparring"
step
kill Ontogen the Harvester##82372 |q 36564/3 |goto 59.88,71.10
|only if haveq(36564) or completedq(36564)
step
label "Destroy_Pollen_Pods_Sparring"
click Pollen Pod##235903+
|tip They look like orange spikey round plant bulbs on the ground around this area.
Destroy #10# Pollen Pods |q 36564/2 |goto 59.97,69.23
|only if haveq(36564) or completedq(36564)
step
label "Kill_Tangleheart_Cultivators_Sparring"
kill 7 Tangleheart Cultivator##82322 |q 36564/1 |goto 59.97,69.23
|only if haveq(36564) or completedq(36564)
step
talk Dying Rangari##82499
accept Vengeance for the Fallen##35640 |goto 59.51,57.92
step
talk Khaano##80762
turnin Rangari in the Red##35666 |goto 59.32,56.35
accept Scout Forensics##35633 |goto 59.32,56.35
stickystart "Recover_Rangari_Pouches"
stickystart "Kill_Fungal_Lurchers"
step
Kill enemies around this area
|tip You will eventually accept this quest automatically after looting.
accept Mysterious Pod##35642 |goto 59.45,58.84
step
label "Recover_Rangari_Pouches"
clicknpc Dead Rangari##80809+
|tip They look like dead draenei on the ground around this area.
Recover #5# Rangari Pouches |q 35633/1 |goto 59.45,58.84
step
label "Kill_Fungal_Lurchers"
kill 7 Fungal Lurcher##80714 |q 35640/1 |goto 58.92,58.61
step
talk Khaano##82476
turnin Vengeance for the Fallen##35640 |goto 58.26,59.90
turnin Scout Forensics##35633 |goto 58.26,59.90
turnin Mysterious Pod##35642 |goto 58.26,59.90
accept Mercy for the Living##35644 |goto 58.26,59.90
accept The Secret of the Fungus##35645 |goto 58.26,59.90
stickystart "Kill_Fungus_Covered_Shamblers"
step
click Glowing Mushroom##231769+
|tip They look like large mushrooms with brown tops on the ground around this area.
collect 5 Glowing Mushroom##112672 |q 35645/1 |goto 57.18,60.30
step
label "Kill_Fungus_Covered_Shamblers"
kill 6 Fungus Covered Shambler##80721 |q 35644/1 |goto 57.18,60.30
step
talk Khaano##82476
turnin Mercy for the Living##35644 |goto 58.26,59.90
turnin The Secret of the Fungus##35645 |goto 58.26,59.90
accept A Grim Harvest##35647 |goto 58.26,59.90
accept A Heartfelt Search##35656 |goto 58.26,59.90
stickystart "Collect_Enlarged_Stomper_Spore_Pods"
step
click Drained Fungal Heart##233046
Inspect the Strange Fungus Site |q 35656/1 |goto 58.93,62.53
step
Watch the dialogue
talk Khaano##82477
turnin A Heartfelt Search##35656 |goto 58.97,62.52
step
label "Collect_Enlarged_Stomper_Spore_Pods"
kill Fungal Stomper##80739+
collect 3 Enlarged Stomper Spore Pod##112394 |q 35647/1 |goto 59.78,62.12
step
talk Khaano##82477
turnin A Grim Harvest##35647 |goto 58.97,62.52
accept Heart of the Fen##35659 |goto 58.97,62.52
step
Watch the dialogue
kill Khaano##86282
Stop Khaano |q 35659/1 |goto 61.23,61.85
step
talk Rangari D'kaan##75146
turnin Heart of the Fen##35659 |goto 53.32,59.89
step
accept Bonus Objective: The Forgotten Caves##34724 |goto 51.35,77.75
|tip You will accept this quest automatically.
|tip In the entrance of the cave.
|only if level < 50
stickystart "Kill_Spider_Egg_Sacs_Sparring"
stickystart "Slay_Pales_Sparring"
step
Follow the path |goto 51.99,78.66 < 7 |walk
kill Gorg the Host##76496 |q 34724/3 |goto 53.69,79.55
|tip You may have to jump up to him.
|tip Inside the cave.
|only if haveq(34724) or completedq(34724)
step
label "Kill_Spider_Egg_Sacs_Sparring"
kill Spider Egg Sac##76548+
|tip They look like large white cocoons on the ground around this area.
|tip Inside the cave. |notinsticky
Destroy #15# Egg Sacs |q 34724/2 |goto 51.87,78.94
|only if haveq(34724) or completedq(34724)
step
label "Slay_Pales_Sparring"
Kill Pale enemies around this area
|tip Inside the cave. |notinsticky
Slay #12# Pales |q 34724/1 |goto 51.87,78.94
|only if haveq(34724) or completedq(34724)
step
Follow the path |goto 51.49,78.77 < 7 |walk
Leave the cave |goto 51.38,77.63 < 15 |walk
accept Bonus Objective: Ruins of the First Bastion##35881 |goto 50.34,79.11
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Slay_Frenzied_Podlings_Sparring"
stickystart "Loot_Ancient_Jars_Sparring"
step
Enter the building |goto 51.83,81.05 < 7 |walk
kill Malkor##83452 |q 35881/3 |goto 52.08,81.24
|tip Inside the building.
|only if haveq(35881) or completedq(35881)
step
label "Slay_Frenzied_Podlings_Sparring"
Kill Frenzied enemies around this area
Slay #20# Frenzied Podlings |q 35881/1 |goto 50.34,79.11
|only if haveq(35881) or completedq(35881)
step
label "Loot_Ancient_Jars_Sparring"
click Ancient Ogre Hoard Jar##233296+
|tip They look like brown and white vases on the ground around this area.
Loot #8# Ancient Jars |q 35881/2 |goto 50.34,79.11
|only if haveq(35881) or completedq(35881)
step
Follow the path |goto 49.76,80.27 < 15 |only if walking
Follow the road |goto 48.19,86.65 < 30 |only if walking
accept Bonus Objective: Tailthrasher Basin##36520 |goto 45.22,91.14
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Saly_Tailthrasher_Saberons_Sparring"
stickystart "Free_Jungle_Axebreaks_Sparring"
step
Enter the cave |goto 44.72,90.10 < 10 |walk
kill Skull Thrash##85733 |q 36520/3 |goto 44.40,88.80
|tip Inside the cave.
|only if haveq(36520) or completedq(36520)
step
label "Saly_Tailthrasher_Saberons_Sparring"
Kill Tailthrasher enemies around this area
Slay #12# Tailthrasher Saberons |q 36520/1 |goto 45.22,91.14
|only if haveq(36520) or completedq(36520)
step
label "Free_Jungle_Axebreaks_Sparring"
clicknpc Rope Spike##85810+
|tip They look like bundles of wooden sticks standing upright with birds tied to them on the ground around this area.
Free #6# Jungle Axebreaks |q 36520/2 |goto 45.22,91.14
|only if haveq(36520) or completedq(36520)
step
talk Rangari Yaval##84507
fpath Bastion Rise |goto 46.40,92.41
step
accept Bonus Objective: Evermorn Springs##36504 |goto 44.35,79.42
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Bloom_Weavers_Sparring"
step
kill Infested Ogron##82062 |q 36504/2 |goto 42.94,80.61
|only if haveq(36504) or completedq(36504)
step
label "Kill_Bloom_Weavers_Sparring"
kill 10 Bloom Weaver##81575 |q 36504/1 |goto 42.79,80.67
|only if haveq(36504) or completedq(36504)
step
Follow the path up |goto 41.76,83.01 < 20 |only if walking
kill 3 Dew Master##81553 |q 36504/3 |goto 39.77,81.51
|only if haveq(36504) or completedq(36504)
step
talk Rangari Jonaa##81076
turnin Proof of Strength: Botani Bloom##36084 |goto 52.84,59.87
step
talk Vindicator Maraad##75127
accept Strike While the Iron is Hot##36576 |goto 52.84,59.68
step
talk Rangari Rajess##81074
Tell her _"I am needed urgently at the Iron Docks."_
Fly to the Iron Docks |q 36576/1 |goto 52.82,59.33
step
Begin the Scenario |scenariostart |goto 45.10,18.49 |q 36576 |notravel
step
Locate Yrel |goto 44.68,17.82 < 10 |c |q 36576
step
talk Yrel##85619
Tell her _"Let's go."_
Begin Following Yrel |goto 44.68,17.82 > 15 |c |q 36576
step
Watch the dialogue
|tip Follow Yrel as she walks.
Confront Commander Gar |scenariogoal 1/25388 |goto 44.28,16.57 |q 36576
step
Use the _"Access Artifact"_ ability
|tip Use it near enemies around this area.
|tip It appears as a button on the screen.
Kill enemies around this area
Use the Artifact to Eliminate your Enemies |scenariogoal 2/25389 |goto 44.27,16.21 |q 36576
step
Use the _"Access Artifact"_ ability
|tip Use it near enemies around this area.
|tip It appears as a button on the screen.
Kill enemies around this area
Defeat the Incoming Enemies |scenariogoal 3/25390 |goto 44.27,16.21 |q 36576
step
Use the _"Access Artifact"_ ability
|tip Use it near enemies around this area.
|tip It appears as a button on the screen.
kill Goc##85580
|tip Your allies will do most of the damage to him, so just help them.
Defeat Goc |scenariogoal 4/25391 |goto 44.27,16.21 |q 36576
step
Watch the dialogue
kill Commander Gar##85571
|tip Stay close to Yrel, and stand in the bubbles she casts.
|tip They will heal you as you fight.
Defeat Commander Gar |scenarioend |goto 44.27,16.21 |q 36576
step
Follow the path |goto 44.27,19.30 < 30 |only if walking
talk Nisha##84700
fpath Iron Docks |goto 43.04,20.21
step
talk Vindicator Maraad##75127
turnin Strike While the Iron is Hot##36576 |goto 52.84,59.68
accept News from Talador##36495 |goto 52.84,59.68
step
#include "Garrison_BGrey"
turnin News from Talador##36495
|next "Leveling Guides\\Draenor (10-60)\\Talador (20-60)"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Talador (20-60)",{
next="Leveling Guides\\Draenor (10-60)\\Spires of Arak (30-60)",
condition_suggested=function() return level >= 20 and level <= 50 and not completedq(34707) end,
image=ZGV.IMAGESDIR.."Talador",
startlevel=20,
},[[
step
#include "Garrison_BGrey"
accept The Critical Path##37183
|only if completedq(36576)
step
#include "Garrison_DLongdrink"
Tell him _"Take me to my base in Talador."_
Take a Flight to Talador |ontaxi |q 37183 |only if haveq(37183) or completedq(37183)
Take a Flight to Talador |ontaxi |q 34676 |only if haveq(34676) or completedq(34676)
Take a Flight to Talador |ontaxi |q 49565 |only if haveq(49565) or completedq(49565)
|only if haveq(37183) or haveq(34676) or haveq(49565)
step
Fly to Talador |offtaxi |goto Talador/0 68.28,20.57 |q 37183 |notravel |only if haveq(37183) or completedq(37183)
Fly to Talador |offtaxi |goto Talador/0 68.28,20.57 |q 34676 |notravel |only if haveq(34676) or completedq(34676)
Fly to Talador |offtaxi |goto Talador/0 68.28,20.57 |q 49565 |notravel |only if haveq(49565) or completedq(49565)
|only if haveq(37183) or haveq(34676) or haveq(49565)
step
talk Foreman Eksos##79133
turnin The Critical Path##34676 |goto 69.88,20.81 |only if haveq(34676) or completedq(34676)
turnin The Critical Path##37183 |goto 69.88,20.81 |only if haveq(37183) or completedq(37183)
turnin Hero's Call: Talador!##49565 |goto 69.88,20.81 |only if haveq(49565) or completedq(49565)
accept At Your Command##34558 |goto 69.88,20.81
step
clicknpc Drafting Table##81119
Use the Drafting Table |q 34558/1 |goto 69.79,20.69
step
clicknpc Drafting Table##81119
|tip Choose the building that appeals to you the most.
|tip We recommend the Wrynn Artillery Tower, for the artillery ability.
|tip Other than that, it doesn't really matter, just preference.
Select a Building |q 34558/2 |goto 69.79,20.69
step
talk Foreman Eksos##79133
turnin At Your Command##34558 |goto 69.87,20.81
step
_Which Building Did You Choose?_
|tip Click the line for the building you chose.
Wrynn Artillery Tower	|confirm	|or	|q 34563	|future		|next "Wrynn_Artillery_Tower"
Arcane Sanctum		|confirm	|or	|q 34631	|future		|next "Arcane_Sanctum"
step
label "Wrynn_Artillery_Tower"
talk Foreman Eksos##79133
accept The Quarry Quandary##34563 |goto Talador/0 69.87,20.81
step
Find Master Smith Ared |q 34563/1 |goto 69.27,19.29
step
talk Apprentice Miall##79159
turnin The Quarry Quandary##34563 |goto 69.27,19.29
accept In Ared's Memory##35045 |goto 69.27,19.29
step
Enter the building |goto 69.72,21.68 < 7 |walk
talk Olivia Abbington##81358
home Fort Wrynn |goto 69.73,21.77
step
Enter the building |goto 69.91,20.47 < 7 |walk
Meet with Miall at the Armory |q 35045/1 |goto 70.15,20.10
|tip Inside the building.
step
talk Miall##79329
|tip Inside the building.
turnin In Ared's Memory##35045 |goto 70.15,20.10
accept Out of Jovite##34571 |goto 70.15,20.10
accept Iridium Recovery##34573 |goto 70.15,20.10
accept Gas Guzzlers##34624 |goto 70.15,20.10
stickystart "Collect_Igneous_Elemental_Chunks"
stickystart "Collect_Jovite_Ore"
step
Enter the mine |goto 75.23,22.45 < 10 |walk
Kill Glowgullet enemies around this area
|tip Inside the mine.
use the Goren Gas Extractor##111910
|tip Use it next to their corpses.
Gather #6# Goren Gas Samples |q 34624/1 |goto 77.22,18.93
step
label "Collect_Igneous_Elemental_Chunks"
kill Iridium Geode##80072+
|tip Inside the mine.
collect 8 Igneous Elemental Chunk##107472 |q 34573/1 |goto 77.22,18.93
step
label "Collect_Jovite_Ore"
click Jovite Ore##230268+
|tip They look like bright green ore nodes on the ground around this area
|tip Inside the mine.
collect 12 Jovite Ore##111906 |q 34571/1 |goto 77.22,18.93
step
Enter the building |goto 69.91,20.47 < 7 |walk
talk Miall##79329
|tip Inside the building.
turnin Out of Jovite##34571 |goto 70.15,20.10
turnin Iridium Recovery##34573 |goto 70.15,20.10
turnin Gas Guzzlers##34624 |goto 70.15,20.10
accept Going to the Gordunni##34578 |goto 70.15,20.10
step
talk Sloan McCoy##86442
accept One Step Ahead##36801 |goto 69.61,20.80
step
talk Quartermaster O'Riley##79963
accept Why Is The Brew Gone?##34773 |goto 69.60,21.60
stickystart "Collect_Footman_Longswords"
step
click Thunderbrew Keg##230753+
|tip They look like wood and metal barrels on the ground around this area.
collect 5 Thunderbrew Keg##111809 |q 34773/2 |goto 72.29,19.67
step
label "Collect_Footman_Longswords"
click Footman's Longsword##230752+
|tip They look like swords on the ground around this area.
collect 5 Footman Longsword##111808 |q 34773/1 |goto 72.29,19.67
step
talk Quartermaster O'Riley##79963
turnin Why Is The Brew Gone?##34773 |goto 69.60,21.59
accept Not In Your House##34804 |goto 69.60,21.59
step
kill Ripgut##80058 |q 34804/1 |goto 67.32,20.85
step
talk Quartermaster O'Riley##79963
turnin Not In Your House##34804 |goto 69.60,21.59
step
talk Vindicator Maraad##75803
turnin One Step Ahead##36801 |goto 63.04,25.88
accept Through the Looking Glass##34087 |goto 63.04,25.88
step
talk Nomaeaa##81061
fpath Redemption Rise |goto 63.29,25.72
step
clicknpc Thaelin's Observicopter##77335
Look Through Thaelin's Observicopter |q 34087/1 |goto 63.06,26.21
step
talk Vindicator Maraad##75803
turnin Through the Looking Glass##34087 |goto 63.04,25.88
accept Too Many Irons in the Fire##34088 |goto 63.04,25.88
step
talk Yrel##75804
accept In Short Supply##34089 |goto 63.06,25.83
step
talk Thaelin Darkanvil##75874
accept Thaelin's Quick Fix##34090 |goto 63.08,26.12
stickystart "Collect_Iron_Horde_Explosives"
stickystart "Slay_Iron_Horde"
step
use Thaelin's Quick Fix##109161
Destroy the Thunderlord Cache |q 34090/1 |goto 66.51,26.73
step
use Thaelin's Quick Fix##109161
Destroy the Forge |q 34090/2 |goto 64.83,32.77
step
label "Collect_Iron_Horde_Explosives"
click Iron Horde Explosives##225731+
|tip They look like wooden boxes with metal bands around them on the ground around this area.
collect 6 Iron Horde Explosives##107855 |q 34089/1 |goto 64.35,30.59
step
click Iron Shredder Decommission Orders##225726
accept Decommissioned Mission##34091 |goto 61.79,27.53
step
use Thaelin's Quick Fix##109161
Destroy the Log Storage |q 34090/3 |goto 60.91,26.74
step
kill Engineer Trak##77387 |q 34091/1 |goto 63.04,23.65
step
clicknpc Decommissioned Iron Shredder##75809
Steal the Decommissioned Iron Shredder |q 34091/2 |goto 63.18,23.70
step
Transport the Decommissioned Iron Shredder to Redemption Rise |q 34091/3 |goto 63.20,25.91
step
label "Slay_Iron_Horde"
Kill enemies around this area
Slay #15# Iron Horde |q 34088/1 |goto 64.43,29.53
step
talk Yrel##75804
turnin In Short Supply##34089 |goto 63.06,25.83
accept Iron Them Out##34095 |goto 63.06,25.83
step
talk Vindicator Maraad##75803
turnin Too Many Irons in the Fire##34088 |goto 63.04,25.89
accept Dreadpiston##34959 |goto 63.04,25.89
step
talk Thaelin Darkanvil##75874
turnin Thaelin's Quick Fix##34090 |goto 63.08,26.12
turnin Decommissioned Mission##34091 |goto 63.08,26.12
accept Vol. X Pages ?##34094 |goto 63.08,26.12
stickystart "Collect_Iron_Shredder_Operation_Manual_Vol_X_Pages"
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 34095/1 |goto 59.42,29.30 |count 1
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 34095/1 |goto 58.42,29.59 |count 2
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 34095/1 |goto 57.19,31.17 |count 3
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 34095/1 |goto 56.47,29.11 |count 4
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 34095/1 |goto 55.76,29.16 |count 5
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 34095/1 |goto 55.78,28.46 |count 6
step
kill Dreadpiston##80576 |q 34959/1 |goto 56.45,27.35
step
talk Ahm##77031
accept Dying Wish##33973 |goto 56.90,25.96
step
Enter the building |goto 56.95,24.58 < 10 |walk
kill Blademaster Bralok##76981
|tip He's walks around this area.
|tip Inside the building.
collect Ahm's Heirloom##108825 |q 33973/1 |goto 57.05,24.35
step
talk Ahm##77031
turnin Dying Wish##33973 |goto 56.90,25.96
step
label "Collect_Iron_Shredder_Operation_Manual_Vol_X_Pages"
Kill enemies around this area
collect 20 Iron Shredder Operation Manual Vol. X Page ?##107843 |q 34094/1 |goto 56.10,26.95
step
talk Thaelin Darkanvil##75874
turnin Vol. X Pages ?##34094 |goto 63.08,26.12
step
talk Vindicator Maraad##75803
turnin Dreadpiston##34959 |goto 63.04,25.89
step
talk Yrel##75804
turnin Iron Them Out##34095 |goto 63.06,25.83
step
talk Thaelin Darkanvil##75874
accept An Eye for a Spy##34096 |goto 63.08,26.12
step
clicknpc Thaelin's Observicopter##77335
Look Through Thaelin's Observicopter |q 34096/1 |goto 63.06,26.21
step
talk Thaelin Darkanvil##75874
turnin An Eye for a Spy##34096 |goto 63.08,26.12
accept Born to Shred##34097 |goto 63.08,26.12
step
clicknpc Iron Shredder Prototype##75721
Take Control of the Iron Shredder |q 34097/1 |goto 63.08,26.36
step
Follow the path |goto 62.97,39.48 < 20 |only if walking
Kill enemies around this area
|tip Use the abilities on your action bar.
Kill #100# Iron Horde |q 34097/2 |goto 60.74,37.98
step
talk Iron Shredder Prototype##75968
|tip Click your character.
turnin Born to Shred##34097
accept Engineering Her Demise##34098
step
Watch the dialogue
kill Ketya Shrediron##75986 |q 34098/1 |goto 61.06,38.76
step
talk Vindicator Maraad##75803
turnin Engineering Her Demise##34098 |goto 63.04,25.89
accept Khadgar's Plan##34963 |goto 63.04,25.89
step
accept Bonus Objective: Orunai Coast##35236 |goto 60.13,21.91
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Collect_Lumber"
step
kill 6 Iron Shredder##75815 |q 35236/1 |goto 57.35,12.97
|only if haveq(35236) or completedq(35236)
step
label "Collect_Lumber"
click Lumber##231962+
|tip They look like piles of logs on the ground around this area.
collect 20 Lumber##112994 |q 35236/2 |goto 57.35,12.97
|only if haveq(35236) or completedq(35236)
step
talk Archmage Khadgar##75805
turnin Khadgar's Plan##34963 |goto 54.19,36.43
accept The Battle for Shattrath##34099 |goto 54.19,36.43
step
Begin the Scenario |scenariostart |goto 50.69,35.35 |q 34099
step
talk Thaelin Darkanvil##77192
Tell him _"Thanks. I'll meet them at the docks."_
Speak with Thaelin |scenariogoal 1/25835 |goto Shattrath City 2/0 74.71,74.45 |q 34099
step
clicknpc Iron Star##86671
Enter the Iron Star |scenariogoal 2/25177 |goto 74.66,74.58 |q 34099
step
Reach the Harbor |scenariogoal 3/25176 |goto 62.97,52.27 |q 34099
step
talk Archmage Khadgar##77195
Tell him _"Begin your spell. I'll protect you!"_
Speak with Archmage Khadgar |scenariogoal 3/25186 |goto 63.03,50.89 |q 34099
step
Kill enemies around this area
|tip Stand in the circles on the ground.
|tip They will heal you.
Protect Khadgar |scenariogoal 4/24351 |goto 63.08,47.52 |q 34099
step
Confront Blackhand |scenariogoal 5/25178 |goto 66.16,42.21 |q 34099
step
Watch the dialogue
talk Archmage Khadgar##77195
Tell him _"I am ready to teleport to the ship."_
Speak with Khadgar to Teleport to the Battleship |scenariogoal 5/24679 |goto 66.16,42.21 |q 34099
step
Reach the Battleship |goto 72.38,23.96 < 10 |c |q 34099 |notravel
step
Kill enemies around this area
|tip Kill all of the enemies on the ship.
kill Machinist B'randt##80962
Defeat Machinist B'randt |scenariogoal 5/24352 |goto 70.26,23.46 |q 34099
step
talk Archmage Khadgar##77195
Tell him _"Then let's hurry!"_
Speak with Khadgar to Teleport to the Flagship |scenariogoal 6/24680 |goto 70.30,24.03 |q 34099
step
Reach the Flagship |goto 64.28,33.30 < 10 |c |q 34099 |notravel
step
Watch the dialogue
kill Blackhand##77256
Survive Blackhand's Onslaught |scenariogoal 6/24678 |goto 65.60,37.93 |q 34099
Complete the Battle for Shattrath |q 34099/1 |goto 65.60,37.93
step
click Portal to Talador |goto 65.68,42.41
Return to Fort Wrynn |goto Talador/0 69.68,21.00 < 10 |noway |c |q 34099
step
talk Yrel##79608
turnin The Battle for Shattrath##34099 |goto 69.67,21.10
step
talk Defender Illona##79979
accept Gatekeepers of Auchindoun##34777 |goto 57.42,51.11
step
talk Soulbinder Halaari##79977
Tell her _"So be it."_
kill Soulbinder Halaari##79977
|tip She will eventually surrender.
Defeat Soulbinder Halaari |q 34777/2 |goto 57.34,52.69
step
talk Vindicator Dalu##79970
Tell him _"Very well. Let us fight."_
kill Vindicator Dalu##79970
|tip He will eventually surrender.
Defeat Vindicator Dalu |q 34777/1 |goto 57.37,52.75
step
talk Defender Illona##79979
turnin Gatekeepers of Auchindoun##34777 |goto 57.42,51.11
accept The True Path##36519 |goto 57.42,51.11
step
talk Niaa##81077
fpath Exarch's Refuge | goto 54.79,68.80
step
talk Miall##80628
turnin Going to the Gordunni##34578 |goto 62.57,67.86
accept Dropping Bombs##34976 |goto 62.57,67.86
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Base Catapult |q 34976/1|goto 63.52,69.17
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Central Catapult |q 34976/2 |goto 65.53,68.91
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Summit Catapult |q 34976/3 |goto 66.73,68.12
step
click Grappling Hook and Rope##241659
Use the Grappling Hook |q 34976/4 |goto 69.05,69.06
step
talk Miall##80628
turnin Dropping Bombs##34976 |goto 69.63,69.84
accept Supply Recovery##34977 |goto 69.63,69.84
accept Punching Through##34979 |goto 69.63,69.84
accept Prized Repossessions##34978 |goto 69.63,69.84
stickystart "Obtain_Iron_Horde_Shipments"
stickystart "Collect_Shattrath_Guardian_Maces"
step
Run up the stairs |goto 68.55,79.04 < 10 |only if walking
Enter the building |goto 68.61,82.51 < 7 |walk
kill Vizier Vorgorsh##80294 |q 34979/1 |goto 68.54,82.87
|tip Inside the building.
step
Enter the building |goto 67.11,77.45 < 7 |walk
kill Vizier Zulmork##80292 |q 34979/2 |goto 67.1,77.0
|tip Inside the building.
step
Enter the building |goto 66.15,80.72 < 7 |walk
kill Vizier Cromaug##80295 |q 34979/3 |goto 66.19,81.15
|tip Inside the building.
step
label "Obtain_Iron_Horde_Shipments"
clicknpc Iron Horde Shipment##80957+
|tip They look like wooden and metal chests on the ground around this area.
Obtain #6# Iron Horde Shipment |q 34977/1 |goto 68.14,79.20
step
label "Collect_Shattrath_Guardian_Maces"
Kill Gordunni enemies around this area
collect 6 Shattrath Guardian Mace##112504 |q 34978/1 |goto 68.14,79.20
step
_Next to you:_
talk Miall##80630
turnin Supply Recovery##34977
turnin Punching Through##34979
turnin Prized Repossessions##34978
accept The Lord of the Gordunni##34980
step
Run up the stairs |goto 65.44,80.11 < 10 |only if walking
use the Emergency Rocket Pack##112307
|tip Use it as you fight Witch Lord Morkurk.
|tip Use it when he is almost finished casting Astral Annihilation.
|tip It will launch you up, to avoid taking damage.
kill Witch Lord Morkurk##80335 |q 34980/1 |goto 63.99,81.79
step
talk Miall##80630
turnin The Lord of the Gordunni##34980 |goto 64.52,81.77
accept The Only Way to Travel##34981 |goto 64.52,81.77
step
Watch the dialogue
|tip Miall will teleport you.
Return to Fort Wrynn |goto 69.60,20.96 < 10 |noway |c |q 34981
step
talk Miall##80968
turnin The Only Way to Travel##34981 |goto 69.78,20.74
accept Armor Up##34982 |goto 69.78,20.74
step
talk Kalaam##79573
accept As the Smoke Rises##34685 |goto 69.45,21.46
step
talk Vindicator Icia##79618
accept Speaker for the Dead##34701 |goto 69.66,21.61
step
Follow the path up |goto 75.11,30.76 < 20 |only if walking
talk Dominic Arlington##80932
fpath Zangarra |goto 80.42,25.32
step
accept Bonus Objective: Zangarra##37422 |goto 80.63,26.12
|tip You will accept this quest automatically.
|only if level < 50
step
clicknpc Khadgar's Portal##95699
Teleport to Khadgar's Tower |ontaxi |goto 80.63,26.12 |q 37422
|only if haveq(37422) or completedq(37422)
step
Reach Khadgar's Tower |offtaxi |goto 83.63,30.97 |q 37422 |notravel
|only if haveq(37422) or completedq(37422)
stickystart "Kill_Invasive_Shamblers"
step
kill Encroaching Giant##79333 |q 37422/2 |goto 82.40,28.72
|tip They are rarer, so just walk around until you find one.
|only if haveq(37422) or completedq(37422)
step
label "Kill_Invasive_Shamblers"
kill 6 Invasive Shambler##79335 |q 37422/1 |goto 81.80,28.09
|only if haveq(37422) or completedq(37422)
step
clicknpc Khadgar's Portal##95699
Return to Camp |ontaxi |goto 83.57,30.92
|only if dist("Talador/0 83.57,30.92") < 250 and walking
step
Follow the road |goto 74.77,31.37 < 30 |only if walking
talk Crystal-Shaper Barum##75896
turnin As the Smoke Rises##34685 |goto 73.07,38.73
accept Burning Sky##33740 |goto 73.07,38.73
accept Pieces of Us##33734 |goto 73.07,38.73
stickystart "Slay_Adherent_Invaders"
step
click Barum's Notes##225778
accept Barum's Notes##33761 |goto 76.27,42.77
step
click Polished Crystal##225774
Test the Polished Crystal |q 33761/2 |goto 76.16,42.81
step
Enter the building |goto 75.84,43.93 < 7 |walk
click Harmonic Crystal##225776
|tip Inside the building.
Test the Harmonic Crystal |q 33761/3 |goto 75.59,43.99
step
click Annals of Aruuna##225748
|tip Inside the building.
collect Annals of Aruuna##107859 |q 33734/3 |goto 75.44,44.13
step
click Honed Crystal##225773
Test the Honed Crystal |q 33761/1 |goto 76.17,44.26
step
click Crystal-Shaper's Tools##225745
collect Crystal-Shaper's Tools##107851 |q 33734/1 |goto 77.54,41.24
step
click Melani's Doll##225746
collect Melani's Doll##107856 |q 33734/2 |goto 77.92,42.98
step
talk Raksi##75311
accept Pyrophobia##33578 |goto 77.73,43.96
step
Enter the building |goto 77.82,44.30 < 7 |walk
kill Sun-Sage Kairyx##75302 |q 33578/1 |goto 78.45,45.24
|tip Inside the building.
step
talk Raksi##75311
turnin Pyrophobia##33578 |goto 77.73,43.96
accept What the Draenei Found##33579 |goto 77.73,43.96
step
label "Slay_Adherent_Invaders"
Kill Adherent enemies around this area
Slay #12# Adherent Invaders |q 33740/1 |goto 77.72,43.89
step
Enter the mine |goto 78.24,35.56 < 10 |walk
Cross the bridge |goto 81.35,37.59 < 7 |walk
click Ancient Prism##224825
|tip Inside the mine.
Examine the Ancient Prism |q 33579/1 |goto 82.70,37.88
step
talk Raksi##75469
|tip Inside the mine.
turnin What the Draenei Found##33579 |goto 82.64,37.78
step
Watch the dialogue
|tip You will be teleported automatically.
|tip Inside the mine.
Reach Terokkar Refuge |goto 70.43,56.80 < 10 |noway |c
|only if dist("Talador/0 82.64,37.78") < 100
step
talk Shadow-Sage Iskar##75288
accept The Purge of Veil Shadar##33580 |goto 70.50,56.85
step
talk Skytalon Inuz##81354
fpath Terokkar Refuge |goto 70.33,57.10
step
talk Darkscryer Raastok##75323
accept Forbidden Knowledge##33581 |goto 70.51,57.34
step
talk Kura the Blind##75324
accept Kura's Vengeance##33582 |goto 70.77,56.78
step
talk Elumm##79724
|tip He walks around this area on the road.
accept Seek Out the Seer##33871 |goto 71.41,47.60
Also check around [67.19,42.90]
step
talk Torben Zapblast##79901
accept Clear!##34761 |goto 62.86,50.33
step
kill Lakebottom Zapper##79636+
|tip Underwater around this area.
collect 6 Zapper Sac##111637 |q 34761/1 |goto 61.75,45.75
step
talk Torben Zapblast##79901
turnin Clear!##34761 |goto 62.86,50.33
step
Watch the dialogue
talk Pleasure-Bot 8000##79853
accept New Owner##35239 |goto 62.88,50.45
step
talk Seer Malune##76665
turnin Seek Out the Seer##33871 |goto 65.43,50.73
accept Dust of the Dead##33872 |goto 65.43,50.73
accept Cure of Aruunem##33873 |goto 65.43,50.73
stickystart "Collect_Handfuls_Of_Duskwing_Dust"
step
click Aruunem Berry Bush##226888+
|tip They look like bushes with small red berries on them on the ground around this area.
collect 60 Aruunem Berries##108655 |q 33873/1 |goto 66.87,52.70
step
label "Collect_Handfuls_Of_Duskwing_Dust"
Kill enemies around this area
collect 7 Handful of Duskwing Dust##108645 |q 33872/1 |goto 66.87,52.70
step
talk Seer Malune##76665
turnin Dust of the Dead##33872 |goto 65.43,50.73
turnin Cure of Aruunem##33873 |goto 65.43,50.73
accept Aruumel's Rest##33874 |goto 65.43,50.73
step
use the Elixir of Memories##108749
Enter the Spirit World |havebuff spell:155161 |goto 65.43,50.73 |q 33874
step
kill Aruumel##76824 |q 33874/1 |goto 68.93,55.01
step
talk Seer Malune##76665
turnin Aruumel's Rest##33874 |goto 65.43,50.73
step
accept Aruuna's Desolation##34639 |goto 76.25,48.97
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Calm_Young_Prowlers"
step
kill Frenzied Ancient##79409 |q 34639/1 |goto 76.25,48.97
|tip He looks like a burning tree that walks around this area.
|only if haveq(34639) or completedq(34639)
step
label "Calm_Young_Prowlers"
clicknpc Panicked Young Prowler##79432+
|tip They look like tigers running on the ground around this area.
Calm #7# Young Prowlers |q 34639/2 |goto 76.25,48.97
|only if haveq(34639) or completedq(34639)
step
talk Crystal-Shaper Barum##75913
turnin Pieces of Us##33734 |goto 76.71,55.24
turnin Burning Sky##33740 |goto 76.71,55.24
turnin Barum's Notes##33761 |goto 76.71,55.24
stickystart "Collect_Shadow_Tomes"
stickystart "Evacuate_Outcasts"
step
Enter the cave |goto 80.23,61.76 < 10 |walk
kill Wing-Guard Kuuan##75353 |q 33582/1 |goto 80.34,64.01
|tip He walks around this area.
|tip Inside the cave.
step
label "Collect_Shadow_Tomes"
click Shadow Tome+
|tip They look like small red books with various names on the ground around this area.
collect 6 Shadow Tome##107391 |q 33581/1 |goto 76.67,62.15
You can find more inside the caves at: |notinsticky
[80.34,64.01]
[75.15,64.99]
[74.58,65.44]
step
label "Evacuate_Outcasts"
talk Outcast NPC+
|tip They look like bird people with various names standing on the ground around this area.
Evacuate #8# Outcasts |q 33580/1 |goto 76.67,62.15
You can find more inside the caves at: |notinsticky
[80.34,64.01]
[75.15,64.99]
[74.58,65.44]
step
talk Shadow-Sage Iskar##75288
turnin The Purge of Veil Shadar##33580 |goto 70.64,57.41
step
talk Darkscryer Raastok##75323
turnin Forbidden Knowledge##33581 |goto 70.51,57.34
step
talk Kura the Blind##75324
turnin Kura's Vengeance##33582 |goto 70.78,56.78
step
talk Aeun##79689
|tip He walks around this area.
accept Every Bit Counts##34709 |goto 55.98,68.28
step
talk Exarch Maladaar##75119
turnin Speaker for the Dead##34701 |goto 55.66,67.71
accept Holding the Line##34407 |goto 55.66,67.71
step
talk Vindicator Kaluud##81789
accept Powering the Defenses##34458 |goto 55.63,67.77
step
talk Soulbinder Nyami##78519
accept The Heart of Auchindoun##33920 |goto 56.51,67.13
stickystart "Slay_Demons_34407"
step
talk Vindicator Nobundo##78482
|tip He fights around this area.
accept Disrupting the Flow##33917 |goto 56.81,66.04
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 57.27,64.10 |count 1
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 56.36,63.34 |count 2
step
kill O'mogg Blackheart##76876 |q 33920/1 |goto 56.53,62.80
step
click Karab'uun##229269
collect Karab'uun##108733 |q 33920/2 |goto 56.69,62.48
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 55.58,64.24 |count 3
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 54.86,62.34 |count 4
step
label "Slay_Demons_34407"
Kill enemies around this area
Slay #15# Demons |q 34407/1 |goto 55.81,63.98
step
talk Vindicator Nobundo##78482
|tip He fights around this area.
turnin Disrupting the Flow##33917 |goto 56.81,66.04
step
talk Soulbinder Nyami##78519
turnin The Heart of Auchindoun##33920 |goto 56.51,67.13
step
talk Exarch Maladaar##75119
turnin Holding the Line##34407 |goto 55.66,67.71
step
Enter the building |goto 58.58,65.06 < 7 |walk
talk Soulbinder Tuulani##77737
|tip Inside the building.
turnin Powering the Defenses##34458 |goto Talador/13 68.40,19.34
accept We Must Construct Additional Pylons##34351 |goto Talador/13 68.40,19.34
step
click Arkonite Crystal##229422
|tip Inside the building.
collect Arkonite Crystal##110253 |q 34351/1 |goto 62.79,27.98 |count 1
step
click Arkonite Crystal##229422
|tip Inside the building.
collect Arkonite Crystal##110253 |q 34351/1 |goto 54.21,34.63 |count 2
step
talk Yuuri##76790
|tip Inside the building.
accept Nightmare in the Tomb##33530 |goto 52.19,38.90
step
click Arkonite Crystal##229422
|tip Inside the building.
collect Arkonite Crystal##110253 |q 34351/1 |goto 53.85,42.79 |count 3
step
Investigate the Ritual |q 33530/1 |goto 58.47,52.61
|tip Inside the building.
step
click Arkonite Crystal##229422
|tip Inside the building.
collect Arkonite Crystal##110253 |q 34351/1 |goto 58.46,61.21 |count 4
step
kill Tagar Spinebreaker##76745 |q 33530/2 |goto 64.54,68.69
|tip Inside the building.
step
click Arkonite Crystal##229422
|tip Inside the building.
collect Arkonite Crystal##110253 |q 34351/1 |goto 45.01,39.86 |count 5
step
click Arkonite Crystal##229422
|tip Inside the building.
collect Arkonite Crystal##110253 |q 34351/1 |goto 39.61,37.39 |count 6
step
click Arkonite Pylon##229034
|tip Inside the building.
collect Arkonite Pylon##110271 |q 34351/2 |goto 31.97,48.50
step
Follow the path up and leave the building |goto 48.44,25.60 < 7 |walk
talk Exarch Maladaar##75119
turnin Nightmare in the Tomb##33530 |goto Talador/0 55.66,67.71
step
talk Soulbinder Tuulani##78520
turnin We Must Construct Additional Pylons##34351 |goto 55.12,67.41
step
talk Exarch Maladaar##75119
accept Light's Rest##34452 |goto 55.66,67.71
step
talk Exarch Maladaar##75250
turnin Light's Rest##34452 |goto 57.23,77.05
step
talk Soulbinder Nyami##75256
accept Into the Hollow##33958 |goto 57.18,76.93
step
talk Soulbinder Tuulani##78028
accept Antivenin##33967 |goto 57.23,76.91
step
talk Vindicator Namuun##78102
accept Vile Defilers##33969 |goto 57.56,76.69
stickystart "Collect_Deathweb_Fangs"
step
click Defiling Crystal##228051
Destroy the Defiling Crystal |q 33969/1 |goto 59.13,80.86 |count 1
step
click Defiling Crystal##228051
Destroy the Defiling Crystal |q 33969/1 |goto 61.59,81.71 |count 2
stickystop "Collect_Deathweb_Fangs"
step
Enter the mine |goto 61.12,83.98 < 10 |walk
click Defiling Crystal##228051
|tip Inside the mine.
Destroy the Defiling Crystal |q 33969/1 |goto 64.01,85.59 |count 3
step
click Defiling Crystal##228051
|tip Inside the mine.
Destroy the Defiling Crystal |q 33969/1 |goto 65.30,85.43 |count 4
step
kill Xanatos the Defiler##75294 |q 33958/1 |goto 65.63,86.87
|tip Inside the mine.
step
click Sha'tari##229596
|tip Inside the mine.
collect Sha'tari##110683 |q 33958/2 |goto 65.77,86.87
step
click Defiling Crystal##228051
|tip Inside the mine.
Destroy the Defiling Crystal |q 33969/1 |goto 64.85,86.93 |count 5
step
Follow the path and leave the mine |goto 63.26,84.37 < 7 |c |q 33967
step
label "Collect_Deathweb_Fangs"
Kill enemies around this area
collect 9 Deathweb Fang##109744 |q 33967/1 |goto 60.53,83.24
step
talk Vindicator Namuun##78102
turnin Vile Defilers##33969 |goto 57.56,76.69
step
talk Soulbinder Tuulani##78028
turnin Antivenin##33967 |goto 57.23,76.91
step
talk Soulbinder Nyami##75256
turnin Into the Hollow##33958 |goto 57.18,76.93
step
talk Exarch Maladaar##75250
accept Scheduled Pickup##34240 |goto 57.23,77.05
step
accept Zorkra's Fall##34660 |goto 53.99,88.84
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Shattered_Hand_Grunts"
step
clicknpc Zorka's Void Gate##79520+
|tip They look like blue and pink swirling portals on the ground around this area.
Seal #4# of Zorka's Void Gates |q 34660/1 |goto 53.99,88.84
|only if haveq(34660) or completedq(34660)
step
label "Kill_Shattered_Hand_Grunts"
kill 6 Shattered Hand Grunt##79544 |q 34660/2 |goto 53.99,88.84
|only if haveq(34660) or completedq(34660)
step
talk Soulbinder Tuulani##77869
turnin Scheduled Pickup##34240 |goto 50.42,87.52
accept Restalaan, Captain of the Guard##34508 |goto 50.42,87.52
step
talk Defender Artaal##78083
accept Never Forget##34013 |goto 50.52,87.55
step
talk Vindicator Kaluud##78082
accept Payback##34234 |goto 50.40,87.32
stickystart "Rout_Telmor_Invaders"
step
click Hastily Written Note##227069
accept Invasion of the Soul Eaters##33988 |goto 49.18,88.05
step
click Telmor Registry##227054
collect Telmor Registry##108896 |q 34013/1 |goto 49.26,87.82
step
click Forge##227067
collect Auchenai Torch##108886 |q 33988/1 |goto 49.30,87.83
step
clicknpc Body Pile##77003
Burn the Pile of Bodies |q 33988/2 |goto 48.47,88.65 |count 1
step
clicknpc Body Pile##77003
Burn the Pile of Bodies |q 33988/2 |goto 49.62,89.08 |count 2
step
clicknpc Body Pile##77003
Burn the Pile of Bodies |q 33988/2 |goto 48.74,89.97 |count 3
step
Enter the building |goto 48.94,90.55 < 7 |walk
click Auchenai Prayerbook##227959
|tip Inside the building.
collect Auchenai Prayerbook##109622 |q 34013/2 |goto 49.35,90.80
step
clicknpc Body Pile##77003
Burn the Pile of Bodies |q 33988/2 |goto 47.83,90.35 |count 4
step
_Click the Complete Quest Box:_
turnin Invasion of the Soul Eaters##33988
step
Enter the building |goto 47.80,89.50 < 7 |walk
click Leafshadow##227055
|tip Inside the building.
collect Leafshadow##108897 |q 34013/3 |goto 47.50,88.91
step
Enter the building |goto 45.36,90.37 < 10 |walk
talk Restalaan##77082
|tip Inside the building.
turnin Restalaan, Captain of the Guard##34508 |goto 44.84,90.49
accept The Final Piece##33976 |goto 44.84,90.49
step
kill Vorpil Ribcleaver##77051 |q 33976/1 |goto 44.50,90.88
|tip Inside the building.
step
click Auch'naaru##229654
|tip Inside the building.
collect Auch'naaru##109197 |q 33976/2 |goto 44.50,90.89
step
talk Restalaan##77082
|tip Inside the building.
turnin The Final Piece##33976 |goto 44.84,90.49
accept Changing the Tide##34326 |goto 44.84,90.49
step
label "Rout_Telmor_Invaders"
Kill enemies around this area
Rout #12# Telmor Invaders |q 34234/1 |goto 48.09,90.04
step
talk Vindicator Kaluud##78082
turnin Payback##34234 |goto 50.39,87.32
step
talk Defender Artaal##78083
turnin Never Forget##34013 |goto 50.52,87.55
step
talk Beldos##81068
|tip Inside the building.
fpath Retribution Point |goto 42.10,76.79
step
talk Restalaan##77799
turnin Changing the Tide##34326 |goto 43.43,75.95
accept Desperate Measures##34092 |goto 43.43,75.95
step
talk Exarch Maladaar##75392
accept Ogre Diplomacy##35227 |goto 42.92,76.11
stickystart "Slay_Angorosh"
step
kill Mok'war the Terrible##77350
collect Ango'rosh Spellbook##109163 |q 34092/1 |goto 39.47,83.60
step
kill Dur'gol the Ruthless##77349
collect Grimoire of Binding##109162 |q 34092/2 |goto 42.69,84.88
step
clicknpc Altar of Ango'rosh##77393
Watch the dialogue
Perform the Ritual |q 34092/3 |goto 41.17,82.45
step
label "Slay_Angorosh"
Kill enemies around this area
Slay #10# Ango'rosh |q 35227/1 |goto 41.08,83.81
step
talk Exarch Maladaar##75392
turnin Ogre Diplomacy##35227 |goto 42.92,76.11
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.43,75.95
step
talk Exarch Maladaar##75392
accept Retribution for the Light##35254 |goto 42.92,76.11
accept Into the Heart of Madness##34157 |goto 42.92,76.11
stickystart "Slay_Demons_35254"
step
click Shadow Council Communicator##227737
accept Hiding in the Shadows##34163 |goto 37.25,79.40
step
clicknpc Shadow Orb##40469
|tip At the top of the tower.
Destroy the Eastern Shadow Orb |q 34163/1 |goto 37.79,77.32
step
clicknpc Shadow Orb##40469
|tip At the top of the tower.
Destroy the Southern Shadow Orb |q 34163/2 |goto 35.62,79.85
step
talk Kor'thos Dawnfury##77629
accept Book Burning##34164 |goto 34.01,73.97
stickystart "Collect_Shadow_Council_Spellbooks"
step
clicknpc Shadow Orb##40469
|tip At the top of the tower.
Destroy the Northern Shadow Orb |q 34163/3 |goto 34.46,70.38
step
_Click the Complete Quest Box:_
turnin Hiding in the Shadows##34163
step
label "Collect_Shadow_Council_Spellbooks"
kill Shadowborne Dementor##77548+
collect 3 Shadow Council Spellbook##109259 |goto 34.96,74.88 |q 34164
step
click Roaring Fire
|tip Click it 3 times.
Burn #3# Books |q 34164/1 |goto 34.14,74.22
step
talk Kor'thos Dawnfury##77629
turnin Book Burning##34164 |goto 34.01,73.97
step
label "Slay_Demons_35254"
Kill enemies around this area
Slay #15# Demons |q 35254/1 |goto 34.96,74.88
step
Follow the path up |goto 32.87,74.54 < 15 |only if walking
Enter the cave |goto 31.87,74.55 < 10 |walk
talk Soulbinder Nyami##77582
|tip Inside the cave.
turnin Into the Heart of Madness##34157 |goto 31.21,73.60
accept Destination: Unknown##34154 |goto 31.21,73.60
step
clicknpc Demonic Gateway##77571
|tip Inside the cave.
Take the Portal |q 34154/1 |goto 30.91,73.15
step
_Inside the Remains of Xandros:_
Watch the dialogue
kill Mongrethod##77579 |q 34154/2
|tip Your allies will help you fight.
step
_Inside the Remains of Xandros:_
clicknpc Demonic Gateway##77571
Take the Portal |q 34154/3
step
talk Exarch Maladaar##75250
turnin Retribution for the Light##35254 |goto Talador/0 45.69,74.05
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34154 |goto 46.32,74.09
accept Together We Are Strong##36512 |goto 46.32,74.09
step
talk Exarch Maladaar##77581
accept Come Together##34707 |goto 45.69,74.05
step
Run up the stairs |goto 44.55,74.64 < 15 |only if walking
talk Caleb##76826
accept Just Peachicky##33882 |goto 36.20,65.05
accept Sher'KHAAAAAAANNNN!##33884 |goto 36.20,65.05
stickystart "Rescue_Frightened_Peachicks"
stickystart "Kill_Sharpfang_Stalkers"
step
Follow the path up |goto 32.33,67.14 < 15 |only if walking
Enter the cave |goto 32.04,69.06 < 10 |walk
kill Sher'khaan##76687 |q 33884/2 |goto 31.00,71.18
|tip Inside the cave.
step
click Ricky##226987
|tip Inside the cave.
accept And the Elekk Too?!##33944 |goto 30.89,70.82
step
label "Rescue_Frightened_Peachicks"
clicknpc Frightened Peachick##76722+
|tip They look like tiny pink birds on the ground around this area.
Rescue #7# Frightened Peachicks |q 33882/1 |goto 34.72,65.50
step
label "Kill_Sharpfang_Stalkers"
kill 8 Sharpfang Stalker##76685 |q 33884/1 |goto 34.72,65.50
step
talk Caleb##76826
turnin Just Peachicky##33882 |goto 36.20,65.05
turnin Sher'KHAAAAAAANNNN!##33884 |goto 36.20,65.05
turnin And the Elekk Too?!##33944 |goto 36.20,65.05
step
accept Bonus Objective: Court of Souls##34667 |goto 41.43,63.80
|tip You will accept this quest automatically.
|only if level < 50
step
clicknpc Auchenai Ballista##79523
Control the Auchenai Ballista |invehicle |goto 41.43,63.80 |q 34667
|only if haveq(34667) or completedq(34667)
step
kill Shadowgaze Batrider##79514+
|tip They are flying in the air nearby.
|tip Use the ability on your action bar.
Shoot Down #4# Shadowgaze Batriders |q 34667/3 |goto 41.43,63.80
|only if haveq(34667) or completedq(34667)
step
Stop Control the Auchenai Ballista |outvehicle |q 34667
|tip Click the yellow arrow on your action bar.
|only if haveq(34667) or completedq(34667)
stickystart "Slay_Demons_34667"
step
kill Warlock Soulstealer##79482+
|tip They are channeling a purple spell on draenei on the ground around this area.
Release #8# Draenei Spirits |q 34667/1 |goto Talador/0 42.51,61.61
You can find more inside the building at [Talador/14 49.19,89.77]
|only if haveq(34667) or completedq(34667)
step
label "Slay_Demons_34667"
Kill enemies around this area
Slay #10# Demons |q 34667/2 |goto Talador/0 42.51,61.61
You can find more inside the building at [Talador/14 49.19,89.77]
|only if haveq(34667) or completedq(34667)
step
talk Ageilaa##78534
turnin Every Bit Counts##34709 |goto 49.89,56.16
accept Trouble In The Mine##34399 |goto 49.89,56.16
accept Frenzied Manafeeders##34400 |goto 49.89,56.16
step
kill Frenzied Manafeeder##78390+
|tip Don't kill them, just weaken them to 35% Health or less.
|tip Stop attacking them once they are weakened.
use the Dissipation Crystal##110468
|tip Use it on weakened Frenzied Manafeeders.
Soothe #8# Frenzied Manafeeders |q 34400/1 |goto 50.39,53.76
step
talk Ageilaa##78534
turnin Frenzied Manafeeders##34400 |goto 49.89,56.16
step
Enter the mine |goto 51.01,51.83 < 10 |walk
talk Vindicator Doruu##78538
|tip Inside the mine.
turnin Trouble In The Mine##34399 |goto 51.62,50.47
step
talk Archmage Elandra##78513
|tip Inside the mine.
accept Arcane Essence##34403 |goto 51.65,50.52
accept Caught In The Chaos##34406 |goto 51.65,50.52
stickystart "Collect_Arcane_Essences"
step
Kill enemies around this area
|tip Kill the ones attacking the friendly draenei NPCs.
|tip Inside the mine.
Save #8# Injured Miners |q 34406/1 |goto 52.16,49.73
step
label "Collect_Arcane_Essences"
Kill enemies around this area
|tip Inside the mine.
collect 6 Arcane Essence##110390|q 34403/1 |goto 52.16,49.73
step
Run up the ramp |goto 52.63,50.48 < 7 |walk
talk Archmage Elandra##78513
|tip Inside the mine.
turnin Arcane Essence##34403 |goto 51.65,50.52
turnin Caught In The Chaos##34406 |goto 51.65,50.52
accept An'dure The Giant##34415 |goto 51.65,50.52
step
kill An'dure the Awakened##78372
|tip Inside the mine.
collect Crystal Giant Heart##110418 |q 34415/1 |goto 54.23,50.02
step
Run up the ramp |goto 52.63,50.48 < 7 |walk
talk Archmage Elandra##78513
|tip Inside the mine.
turnin An'dure The Giant##34415 |goto 51.65,50.52
accept Kaelynara Sunchaser##34448 |goto 51.65,50.52
step
talk Archmage Elandra##78513
|tip Inside the mine.
Tell her _"I am ready to confront Kaelynara."_
Speak with Elandra |q 34448/1 |goto 51.65,50.52
step
Watch the dialogue |goto 51.65,50.52
|tip You will be teleported automatically.
Teleport to Kaelynara Sunchaser |goto 52.22,47.74 < 10 |noway |c |q 34448
step
kill Kaelynara Sunchaser##78501 |q 34448/2 |goto 52.10,47.55
step
talk Archmage Elandra##78741 |goto 52.11,47.72
Tell her _"I am ready to return to the Jorune Mine."_
Return to Jorune Mine |goto 51.56,50.51 < 10 |noway |c |q 34448
step
talk Vindicator Doruu##78538
|tip Inside the mine.
turnin Kaelynara Sunchaser##34448 |goto 51.62,50.47
step
talk Vindicator Icia##79618
turnin Come Together##34707 |goto 69.66,21.61
accept News from Spires of Arak##35554 |goto 69.66,21.61
|next "Leveling Guides\\Draenor (10-60)\\Spires of Arak (30-60)"
step
label "Arcane_Sanctum"
talk Foreman Eksos##79133
accept An Audience With The Archmage##34631 |goto Talador/0 69.88,20.81
step
Enter the building |goto 69.72,21.68 < 7 |walk
talk Olivia Abbington##81358
home Fort Wrynn |goto 69.73,21.77
step
talk Nomaeaa##81061
fpath Redemption Rise |goto 63.29,25.72
step
Follow the road |goto 59.91,24.52 < 30 |only if walking
accept Orunai Coast##35236 |goto 60.13,21.91
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Collect_Lumber_AS"
step
kill 6 Iron Shredder##75815 |q 35236/1 |goto 57.35,12.97
|only if haveq(35236) or completedq(35236)
step
label "Collect_Lumber_AS"
click Lumber##231962+
|tip They look like piles of logs on the ground around this area.
collect 20 Lumber##112994 |q 35236/2 |goto 57.35,12.97
|only if haveq(35236) or completedq(35236)
step
accept Kuuro's Claim##37421 |goto 75.24,22.43
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Slay_Goren_AS"
step
kill 6 Iridium Geode##80072 |q 37421/2 |goto 75.24,22.43
|tip Inside the cave.
|only if haveq(37421) or completedq(37421)
step
label "Slay_Goren_AS"
Kill Glowgullet enemies around this area
|tip Inside and outside the cave.
Slay #8# Goren |q 37421/1 |goto 75.24,22.43
|only if haveq(37421) or completedq(37421)
step
Follow the road |goto 73.62,28.04 < 40 |only if walking
talk Archmage Khadgar##80142
turnin An Audience With The Archmage##34631 |goto 74.99,31.20
accept Making Acquaintances##34815 |goto 74.99,31.20
step
talk Dominic Arlington##80932
fpath Zangarra |goto 80.42,25.32
step
clicknpc Khadgar's Portal##45454
Take Khadgar's Portal |q 34815/1 |goto 80.63,26.12
step
Reach Khadgar's Tower |offtaxi |goto 83.63,30.97 |q 34815 |notravel
step
talk Magister Serena##79392
turnin Making Acquaintances##34815 |goto 84.97,30.97
accept Creating the Ink##34609 |goto 84.97,30.97
accept Forming the Scroll##34612 |goto 84.97,30.97
accept Gathering the Spark##34619 |goto 84.97,30.97
stickystart "Prune_Slumbering_Protectos_AS"
stickystart "Collect_Pulsating_Pustules_AS"
step
clicknpc Arcane Vortex##87570
Harvest the Energy |q 34619/1 |goto 83.25,28.68 |count 1
step
clicknpc Arcane Vortex##87570
Harvest the Energy |q 34619/1 |goto 81.74,29.23 |count 2
step
clicknpc Arcane Vortex##87570
Harvest the Energy |q 34619/1 |goto 82.73,27.10 |count 3
step
_Next to you:_
talk Magister Serena##80260
turnin Gathering the Spark##34619
step
label "Prune_Slumbering_Protectos_AS"
clicknpc Slumbering Protector##79330+
|tip They look like large tree creatures on the ground around this area.
Prune #3# Slumbering Protectors |q 34612/1 |goto 81.94,28.12
step
label "Collect_Pulsating_Pustules_AS"
Kill enemies around this area
collect 30 Pulsating Pustule##111322 |q 34609/1 |goto 81.94,28.12
step
_Next to you:_
talk Magister Serena##80260
turnin Creating the Ink##34609
turnin Forming the Scroll##34612
accept Next Steps##34875
step
talk Magister Serena##80966
turnin Next Steps##34875 |goto 69.60,21.07
accept The Foot of the Fortress##34908 |goto 69.60,21.07
step
talk Sloan McCoy##86442
accept One Step Ahead##36801 |goto 69.61,20.80
step
talk Quartermaster O'Riley##79963
accept Why Is The Brew Gone?##34773 |goto 69.60,21.60
stickystart "Collect_Footman_Longswords_AS"
step
click Thunderbrew Keg##230753+
|tip They look like wood and metal barrels on the ground around this area.
collect 5 Thunderbrew Keg##111809 |q 34773/2 |goto 72.29,19.67
step
label "Collect_Footman_Longswords_AS"
click Footman's Longsword##230752+
|tip They look like swords on the ground around this area.
collect 5 Footman Longsword##111808 |q 34773/1 |goto 72.29,19.67
step
talk Quartermaster O'Riley##79963
turnin Why Is The Brew Gone?##34773 |goto 69.60,21.59
accept Not In Your House##34804 |goto 69.60,21.59
step
kill Ripgut##80058 |q 34804/1 |goto 67.32,20.85
step
talk Quartermaster O'Riley##79963
turnin Not In Your House##34804 |goto 69.60,21.59
step
talk Vindicator Maraad##75803
turnin One Step Ahead##36801 |goto 63.04,25.88
accept Through the Looking Glass##34087 |goto 63.04,25.88
step
clicknpc Thaelin's Observicopter##77335
Look Through Thaelin's Observicopter |q 34087/1 |goto 63.06,26.21
step
talk Vindicator Maraad##75803
turnin Through the Looking Glass##34087 |goto 63.04,25.88
accept Too Many Irons in the Fire##34088 |goto 63.04,25.88
step
talk Yrel##75804
accept In Short Supply##34089 |goto 63.06,25.83
step
talk Thaelin Darkanvil##75874
accept Thaelin's Quick Fix##34090 |goto 63.08,26.12
stickystart "Collect_Iron_Horde_Explosives_AS"
stickystart "Slay_Iron_Horde_AS"
step
use Thaelin's Quick Fix##109161
Destroy the Thunderlord Cache |q 34090/1 |goto 66.51,26.73
step
use Thaelin's Quick Fix##109161
Destroy the Forge |q 34090/2 |goto 64.83,32.77
step
label "Collect_Iron_Horde_Explosives_AS"
click Iron Horde Explosives##225731+
|tip They look like wooden boxes with metal bands around them on the ground around this area.
collect 6 Iron Horde Explosives##107855 |q 34089/1 |goto 64.35,30.59
step
click Iron Shredder Decommission Orders##225726
accept Decommissioned Mission##34091 |goto 61.79,27.53
step
use Thaelin's Quick Fix##109161
Destroy the Log Storage |q 34090/3 |goto 60.91,26.74
step
kill Engineer Trak##77387 |q 34091/1 |goto 63.04,23.65
step
clicknpc Decommissioned Iron Shredder##75809
Steal the Decommissioned Iron Shredder |q 34091/2 |goto 63.18,23.70
step
Transport the Decommissioned Iron Shredder to Redemption Rise |q 34091/3 |goto 63.20,25.91
step
label "Slay_Iron_Horde_AS"
Kill enemies around this area
Slay #15# Iron Horde |q 34088/1 |goto 64.43,29.53
step
talk Yrel##75804
turnin In Short Supply##34089 |goto 63.06,25.83
accept Iron Them Out##34095 |goto 63.06,25.83
step
talk Vindicator Maraad##75803
turnin Too Many Irons in the Fire##34088 |goto 63.04,25.89
accept Dreadpiston##34959 |goto 63.04,25.89
step
talk Thaelin Darkanvil##75874
turnin Thaelin's Quick Fix##34090 |goto 63.08,26.12
turnin Decommissioned Mission##34091 |goto 63.08,26.12
accept Vol. X Pages ?##34094 |goto 63.08,26.12
stickystart "Collect_Iron_Shredder_Operation_Manual_Vol_X_Pages_AS"
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 34095/1 |goto 59.42,29.30 |count 1
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 34095/1 |goto 58.42,29.59 |count 2
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 34095/1 |goto 57.19,31.17 |count 3
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 34095/1 |goto 56.47,29.11 |count 4
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 34095/1 |goto 55.76,29.16 |count 5
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 34095/1 |goto 55.78,28.46 |count 6
step
kill Dreadpiston##80576 |q 34959/1 |goto 56.45,27.35
step
talk Ahm##77031
accept Dying Wish##33973 |goto 56.90,25.96
step
Enter the building |goto 56.95,24.58 < 10 |walk
kill Blademaster Bralok##76981
|tip He's walks around this area.
|tip Inside the building.
collect Ahm's Heirloom##108825 |q 33973/1 |goto 57.05,24.35
step
talk Ahm##77031
turnin Dying Wish##33973 |goto 56.90,25.96
step
label "Collect_Iron_Shredder_Operation_Manual_Vol_X_Pages_AS"
Kill enemies around this area
collect 20 Iron Shredder Operation Manual Vol. X Page ?##107843 |q 34094/1 |goto 56.10,26.95
step
talk Thaelin Darkanvil##75874
turnin Vol. X Pages ?##34094 |goto 63.08,26.12
step
talk Vindicator Maraad##75803
turnin Dreadpiston##34959 |goto 63.04,25.89
step
talk Yrel##75804
turnin Iron Them Out##34095 |goto 63.06,25.83
step
talk Thaelin Darkanvil##75874
accept An Eye for a Spy##34096 |goto 63.08,26.12
step
clicknpc Thaelin's Observicopter##77335
Look Through Thaelin's Observicopter |q 34096/1 |goto 63.06,26.21
step
talk Thaelin Darkanvil##75874
turnin An Eye for a Spy##34096 |goto 63.08,26.12
accept Born to Shred##34097 |goto 63.08,26.12
step
clicknpc Iron Shredder Prototype##75721
Take Control of the Iron Shredder |q 34097/1 |goto 63.08,26.36
step
Follow the path |goto 62.97,39.48 < 20 |only if walking
Kill enemies around this area
|tip Use the abilities on your action bar.
Kill #100# Iron Horde |q 34097/2 |goto 60.74,37.98
step
talk Iron Shredder Prototype##75968
|tip Click your character.
turnin Born to Shred##34097
accept Engineering Her Demise##34098
step
Watch the dialogue
kill Ketya Shrediron##75986 |q 34098/1 |goto 61.06,38.76
step
talk Vindicator Maraad##75803
turnin Engineering Her Demise##34098 |goto 63.04,25.89
accept Khadgar's Plan##34963 |goto 63.04,25.89
step
talk Archmage Khadgar##75805
turnin Khadgar's Plan##34963 |goto 54.19,36.43
accept The Battle for Shattrath##34099 |goto 54.19,36.43
step
Begin the Scenario |scenariostart |goto 50.69,35.35 |q 34099
step
talk Thaelin Darkanvil##77192
Tell him _"Thanks. I'll meet them at the docks."_
Speak with Thaelin |scenariogoal 1/25835 |goto Shattrath City 2/0 74.71,74.45 |q 34099
step
clicknpc Iron Star##86671
Enter the Iron Star |scenariogoal 2/25177 |goto 74.66,74.58 |q 34099
step
Reach the Harbor |scenariogoal 3/25176 |goto 62.97,52.27 |q 34099
step
talk Archmage Khadgar##77195
Tell him _"Begin your spell. I'll protect you!"_
Speak with Archmage Khadgar |scenariogoal 3/25186 |goto 63.03,50.89 |q 34099
step
Kill enemies around this area
|tip Stand in the circles on the ground.
|tip They will heal you.
Protect Khadgar |scenariogoal 4/24351 |goto 63.08,47.52 |q 34099
step
Confront Blackhand |scenariogoal 5/25178 |goto 66.16,42.21 |q 34099
step
Watch the dialogue
talk Archmage Khadgar##77195
Tell him _"I am ready to teleport to the ship."_
Speak with Khadgar to Teleport to the Battleship |scenariogoal 5/24679 |goto 66.16,42.21 |q 34099
step
Reach the Battleship |goto 72.38,23.96 < 10 |c |q 34099 |notravel
step
Kill enemies around this area
|tip Kill all of the enemies on the ship.
kill Machinist B'randt##80962
Defeat Machinist B'randt |scenariogoal 5/24352 |goto 70.26,23.46 |q 34099
step
talk Archmage Khadgar##77195
Tell him _"Then let's hurry!"_
Speak with Khadgar to Teleport to the Flagship |scenariogoal 6/24680 |goto 70.30,24.03 |q 34099
step
Reach the Flagship |goto 64.28,33.30 < 10 |c |q 34099 |notravel
step
Watch the dialogue
kill Blackhand##77256
Survive Blackhand's Onslaught |scenariogoal 6/24678 |goto 65.60,37.93 |q 34099
Complete the Battle for Shattrath |q 34099/1 |goto 65.60,37.93
step
click Portal to Talador |goto 65.68,42.41
Return to Fort Wrynn |goto Talador/0 69.68,21.00 < 10 |noway |c |q 34099
step
talk Yrel##79608
turnin The Battle for Shattrath##34099 |goto 69.67,21.10
step
talk Defender Illona##79979
accept Gatekeepers of Auchindoun##34777 |goto 57.42,51.11
step
talk Soulbinder Halaari##79977
Tell her _"So be it."_
kill Soulbinder Halaari##79977
|tip She will eventually surrender.
Defeat Soulbinder Halaari |q 34777/2 |goto 57.34,52.69
step
talk Vindicator Dalu##79970
Tell him _"Very well. Let us fight."_
kill Vindicator Dalu##79970
|tip He will eventually surrender.
Defeat Vindicator Dalu |q 34777/1 |goto 57.37,52.75
step
talk Defender Illona##79979
turnin Gatekeepers of Auchindoun##34777 |goto 57.42,51.11
accept The True Path##36519 |goto 57.42,51.11
step
talk Niaa##81077
fpath Exarch's Refuge | goto 54.79,68.80
step
talk Magister Serena##80607
turnin The Foot of the Fortress##34908 |goto 62.26,68.29
accept Dropping In##34913 |goto 62.26,68.29
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Catapult |q 34913/1|goto 63.52,69.17 |count 1
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Catapult |q 34913/1 |goto 65.53,68.91 |count 2
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Catapult |q 34913/1 |goto 66.73,68.12 |count 3
step
Meet Serena at the Gate |q 34913/2 |goto 69.16,69.46
step
Watch the dialogue
clicknpc Serena's Portal##45454
Take the Portal |q 34913/3 |goto 69.16,69.45
step
talk Magister Serena##80608
turnin Dropping In##34913 |goto 69.95,69.46
accept While We're in the Neighborhood##34909 |goto 69.95,69.46
accept Vicious Viziers##34910 |goto 69.95,69.46
accept Orbs of Power##34911 |goto 69.95,69.46
stickystart "Collect_Gordunni_Runebeads_AS"
step
click Astral Ward##230960
Destroy the Astral Ward |q 34911/1 |goto 70.22,72.32 |count 1
step
click Astral Ward##230960
Destroy the Astral Ward |q 34911/1 |goto 68.19,76.36 |count 2
step
click Astral Ward##230960
Destroy the Astral Ward |q 34911/1 |goto 69.43,79.67 |count 3
step
Run up the stairs |goto 68.55,79.04 < 10 |only if walking
click Astral Ward##230960
Destroy the Astral Ward |q 34911/1 |goto 69.01,82.08 |count 4
step
Enter the building |goto 68.61,82.51 < 7 |walk
kill Vizier Vorgorsh##80294 |q 34910/1 |goto 68.54,82.87
|tip Inside the building.
step
click Astral Ward##230960
Destroy the Astral Ward |q 34911/1 |goto 67.51,77.93 |count 5
step
_Next to you:_
talk Magister Serena
turnin Orbs of Power##34911
step
Enter the building |goto 67.11,77.45 < 7 |walk
kill Vizier Zulmork##80292 |q 34910/2 |goto 67.1,77.0
|tip Inside the building.
step
Enter the building |goto 66.15,80.72 < 7 |walk
kill Vizier Cromaug##80295 |q 34910/3 |goto 66.19,81.15
|tip Inside the building.
step
_Next to you:_
talk Magister Serena
turnin Vicious Viziers##34910
step
label "Collect_Gordunni_Runebeads_AS"
Kill Gordunni enemies around this area
collect 8 Gordunni Runebeads##112088 |q 34909/1 |goto 68.14,79.20
step
_Next to you:_
talk Magister Serena
turnin While We're in the Neighborhood##34909
accept The Final Step##34912
step
Run up the stairs |goto 65.44,80.11 < 10 |only if walking
use the Scroll of Mass Teleportation##112543
|tip This will summon allies to help you fight Witch Lord Morkurk.
|tip Run into the blue bubble when your helpers tell you to take cover within the shield.
|tip This will protect you from Witch Lord Morkurk's powerful attack.
kill Witch Lord Morkurk##80335 |q 34912/1 |goto 64.07,81.79
step
click Arcane Nexus##231056
collect Arcane Nexus##112196 |q 34912/2 |goto 64.27,81.79
step
_Next to you:_
talk Magister Serena
turnin The Final Step##34912
accept Due Cause to Celebrate##34711
step
Watch the dialogue
|tip Magister Serena will teleport you.
Return to Fort Wrynn |goto 69.69,20.87 < 10 |noway |c |q 34711
step
talk Magister Serena##80672
turnin Due Cause to Celebrate##34711 |goto 69.74,20.78
accept Joining the Ranks##34993 |goto 69.74,20.78
step
talk Kalaam##79573
accept As the Smoke Rises##34685 |goto 69.45,21.46
step
talk Vindicator Icia##79618
accept Speaker for the Dead##34701 |goto 69.66,21.61
step
talk Crystal-Shaper Barum##75896
turnin As the Smoke Rises##34685 |goto 73.07,38.73
accept Burning Sky##33740 |goto 73.07,38.73
accept Pieces of Us##33734 |goto 73.07,38.73
stickystart "Slay_Adherent_Invaders_AS"
step
click Barum's Notes##225778
accept Barum's Notes##33761 |goto 76.27,42.77
step
click Polished Crystal##225774
Test the Polished Crystal |q 33761/2 |goto 76.16,42.81
step
Enter the building |goto 75.84,43.93 < 7 |walk
click Harmonic Crystal##225776
|tip Inside the building.
Test the Harmonic Crystal |q 33761/3 |goto 75.59,43.99
step
click Annals of Aruuna##225748
|tip Inside the building.
collect Annals of Aruuna##107859 |q 33734/3 |goto 75.44,44.13
step
click Honed Crystal##225773
Test the Honed Crystal |q 33761/1 |goto 76.17,44.26
step
click Crystal-Shaper's Tools##225745
collect Crystal-Shaper's Tools##107851 |q 33734/1 |goto 77.54,41.24
step
click Melani's Doll##225746
collect Melani's Doll##107856 |q 33734/2 |goto 77.92,42.98
step
talk Raksi##75311
accept Pyrophobia##33578 |goto 77.73,43.96
step
Enter the building |goto 77.82,44.30 < 7 |walk
kill Sun-Sage Kairyx##75302 |q 33578/1 |goto 78.45,45.24
|tip Inside the building.
step
talk Raksi##75311
turnin Pyrophobia##33578 |goto 77.73,43.96
accept What the Draenei Found##33579 |goto 77.73,43.96
step
label "Slay_Adherent_Invaders_AS"
Kill Adherent enemies around this area
Slay #12# Adherent Invaders |q 33740/1 |goto 77.72,43.89
step
Enter the mine |goto 78.24,35.56 < 10 |walk
Cross the bridge |goto 81.35,37.59 < 7 |walk
click Ancient Prism##224825
|tip Inside the mine.
Examine the Ancient Prism |q 33579/1 |goto 82.70,37.88
step
talk Raksi##75469
|tip Inside the mine.
turnin What the Draenei Found##33579 |goto 82.64,37.78
step
Watch the dialogue
|tip You will be teleported automatically.
|tip Inside the mine.
Reach Terokkar Refuge |goto 70.43,56.80 < 10 |noway |c
|only if dist("Talador/0 82.64,37.78") < 100
step
talk Shadow-Sage Iskar##75288
accept The Purge of Veil Shadar##33580 |goto 70.50,56.85
step
talk Skytalon Inuz##81354
fpath Terokkar Refuge |goto 70.33,57.10
step
talk Darkscryer Raastok##75323
accept Forbidden Knowledge##33581 |goto 70.51,57.34
step
talk Kura the Blind##75324
accept Kura's Vengeance##33582 |goto 70.77,56.78
step
talk Elumm##79724
|tip He walks around this area on the road.
accept Seek Out the Seer##33871 |goto 71.41,47.60
Also check around [67.19,42.90]
step
talk Torben Zapblast##79901
accept Clear!##34761 |goto 62.86,50.33
step
kill Lakebottom Zapper##79636+
|tip Underwater around this area.
collect 6 Zapper Sac##111637 |q 34761/1 |goto 61.75,45.75
step
talk Torben Zapblast##79901
turnin Clear!##34761 |goto 62.86,50.33
step
Watch the dialogue
talk Pleasure-Bot 8000##79853
accept New Owner##35239 |goto 62.88,50.45
step
talk Seer Malune##76665
turnin Seek Out the Seer##33871 |goto 65.43,50.73
accept Dust of the Dead##33872 |goto 65.43,50.73
accept Cure of Aruunem##33873 |goto 65.43,50.73
stickystart "Collect_Handfuls_Of_Duskwing_Dust_AS"
step
click Aruunem Berry Bush##226888+
|tip They look like bushes with small red berries on them on the ground around this area.
collect 60 Aruunem Berries##108655 |q 33873/1 |goto 66.87,52.70
step
label "Collect_Handfuls_Of_Duskwing_Dust_AS"
Kill enemies around this area
collect 7 Handful of Duskwing Dust##108645 |q 33872/1 |goto 66.87,52.70
step
talk Seer Malune##76665
turnin Dust of the Dead##33872 |goto 65.43,50.73
turnin Cure of Aruunem##33873 |goto 65.43,50.73
accept Aruumel's Rest##33874 |goto 65.43,50.73
step
use the Elixir of Memories##108749
Enter the Spirit World |havebuff spell:155161 |goto 65.43,50.73 |q 33874
step
kill Aruumel##76824 |q 33874/1 |goto 68.93,55.01
step
talk Seer Malune##76665
turnin Aruumel's Rest##33874 |goto 65.43,50.73
step
accept Aruuna's Desolation##34639 |goto 76.25,48.97
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Calm_Young_Prowlers_AS"
step
kill Frenzied Ancient##79409 |q 34639/1 |goto 76.25,48.97
|tip He looks like a burning tree that walks around this area.
|only if haveq(34639) or completedq(34639)
step
label "Calm_Young_Prowlers_AS"
clicknpc Panicked Young Prowler##79432+
|tip They look like tigers running on the ground around this area.
Calm #7# Young Prowlers |q 34639/2 |goto 76.25,48.97
|only if haveq(34639) or completedq(34639)
step
talk Crystal-Shaper Barum##75913
turnin Pieces of Us##33734 |goto 76.71,55.24
turnin Burning Sky##33740 |goto 76.71,55.24
turnin Barum's Notes##33761 |goto 76.71,55.24
stickystart "Collect_Shadow_Tomes_AS"
stickystart "Evacuate_Outcasts_AS"
step
Enter the cave |goto 80.23,61.76 < 10 |walk
kill Wing-Guard Kuuan##75353 |q 33582/1 |goto 80.34,64.01
|tip He walks around this area.
|tip Inside the cave.
step
label "Collect_Shadow_Tomes_AS"
click Shadow Tome+
|tip They look like small red books with various names on the ground around this area.
collect 6 Shadow Tome##107391 |q 33581/1 |goto 76.67,62.15
You can find more inside the caves at: |notinsticky
[80.34,64.01]
[75.15,64.99]
[74.58,65.44]
step
label "Evacuate_Outcasts_AS"
talk Outcast NPC+
|tip They look like bird people with various names standing on the ground around this area.
Evacuate #8# Outcasts |q 33580/1 |goto 76.67,62.15
You can find more inside the caves at: |notinsticky
[80.34,64.01]
[75.15,64.99]
[74.58,65.44]
step
talk Shadow-Sage Iskar##75288
turnin The Purge of Veil Shadar##33580 |goto 70.64,57.41
step
talk Darkscryer Raastok##75323
turnin Forbidden Knowledge##33581 |goto 70.51,57.34
step
talk Kura the Blind##75324
turnin Kura's Vengeance##33582 |goto 70.78,56.78
step
talk Aeun##79689
|tip He walks around this area.
accept Every Bit Counts##34709 |goto 55.98,68.28
step
talk Exarch Maladaar##75119
turnin Speaker for the Dead##34701 |goto 55.66,67.71
accept Holding the Line##34407 |goto 55.66,67.71
step
talk Vindicator Kaluud##81789
accept Powering the Defenses##34458 |goto 55.63,67.77
step
talk Soulbinder Nyami##78519
accept The Heart of Auchindoun##33920 |goto 56.51,67.13
stickystart "Slay_Demons_34407_AS"
step
talk Vindicator Nobundo##78482
|tip He fights around this area.
accept Disrupting the Flow##33917 |goto 56.81,66.04
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 57.27,64.10 |count 1
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 56.36,63.34 |count 2
step
kill O'mogg Blackheart##76876 |q 33920/1 |goto 56.53,62.80
step
click Karab'uun##229269
collect Karab'uun##108733 |q 33920/2 |goto 56.69,62.48
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 55.58,64.24 |count 3
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 54.86,62.34 |count 4
step
label "Slay_Demons_34407_AS"
Kill enemies around this area
Slay #15# Demons |q 34407/1 |goto 55.81,63.98
step
talk Vindicator Nobundo##78482
|tip He fights around this area.
turnin Disrupting the Flow##33917 |goto 56.81,66.04
step
talk Soulbinder Nyami##78519
turnin The Heart of Auchindoun##33920 |goto 56.51,67.13
step
talk Exarch Maladaar##75119
turnin Holding the Line##34407 |goto 55.66,67.71
step
Enter the building |goto 58.58,65.06 < 7 |walk
talk Soulbinder Tuulani##77737
|tip Inside the building.
turnin Powering the Defenses##34458 |goto Talador/13 68.40,19.34
accept We Must Construct Additional Pylons##34351 |goto Talador/13 68.40,19.34
step
click Arkonite Crystal##229422
|tip Inside the building.
collect Arkonite Crystal##110253 |q 34351/1 |goto 62.79,27.98 |count 1
step
click Arkonite Crystal##229422
|tip Inside the building.
collect Arkonite Crystal##110253 |q 34351/1 |goto 54.21,34.63 |count 2
step
talk Yuuri##76790
|tip Inside the building.
accept Nightmare in the Tomb##33530 |goto 52.19,38.90
step
click Arkonite Crystal##229422
|tip Inside the building.
collect Arkonite Crystal##110253 |q 34351/1 |goto 53.85,42.79 |count 3
step
Investigate the Ritual |q 33530/1 |goto 58.47,52.61
|tip Inside the building.
step
click Arkonite Crystal##229422
|tip Inside the building.
collect Arkonite Crystal##110253 |q 34351/1 |goto 58.46,61.21 |count 4
step
kill Tagar Spinebreaker##76745 |q 33530/2 |goto 64.54,68.69
|tip Inside the building.
step
click Arkonite Crystal##229422
|tip Inside the building.
collect Arkonite Crystal##110253 |q 34351/1 |goto 45.01,39.86 |count 5
step
click Arkonite Crystal##229422
|tip Inside the building.
collect Arkonite Crystal##110253 |q 34351/1 |goto 39.61,37.39 |count 6
step
click Arkonite Pylon##229034
|tip Inside the building.
collect Arkonite Pylon##110271 |q 34351/2 |goto 31.97,48.50
step
Follow the path up and leave the building |goto 48.44,25.60 < 7 |walk
talk Exarch Maladaar##75119
turnin Nightmare in the Tomb##33530 |goto Talador/0 55.66,67.71
step
talk Soulbinder Tuulani##78520
turnin We Must Construct Additional Pylons##34351 |goto 55.12,67.41
step
talk Exarch Maladaar##75119
accept Light's Rest##34452 |goto 55.66,67.71
step
talk Exarch Maladaar##75250
turnin Light's Rest##34452 |goto 57.23,77.05
step
talk Soulbinder Nyami##75256
accept Into the Hollow##33958 |goto 57.18,76.93
step
talk Soulbinder Tuulani##78028
accept Antivenin##33967 |goto 57.23,76.91
step
talk Vindicator Namuun##78102
accept Vile Defilers##33969 |goto 57.56,76.69
stickystart "Collect_Deathweb_Fangs_AS"
step
click Defiling Crystal##228051
Destroy the Defiling Crystal |q 33969/1 |goto 59.13,80.86 |count 1
step
click Defiling Crystal##228051
Destroy the Defiling Crystal |q 33969/1 |goto 61.59,81.71 |count 2
stickystop "Collect_Deathweb_Fangs_AS"
step
Enter the mine |goto 61.12,83.98 < 10 |walk
click Defiling Crystal##228051
|tip Inside the mine.
Destroy the Defiling Crystal |q 33969/1 |goto 64.01,85.59 |count 3
step
click Defiling Crystal##228051
|tip Inside the mine.
Destroy the Defiling Crystal |q 33969/1 |goto 65.30,85.43 |count 4
step
kill Xanatos the Defiler##75294 |q 33958/1 |goto 65.63,86.87
|tip Inside the mine.
step
click Sha'tari##229596
|tip Inside the mine.
collect Sha'tari##110683 |q 33958/2 |goto 65.77,86.87
step
click Defiling Crystal##228051
|tip Inside the mine.
Destroy the Defiling Crystal |q 33969/1 |goto 64.85,86.93 |count 5
step
Follow the path and leave the mine |goto 63.26,84.37 < 7 |c |q 33967
step
label "Collect_Deathweb_Fangs_AS"
Kill enemies around this area
collect 9 Deathweb Fang##109744 |q 33967/1 |goto 60.53,83.24
step
talk Vindicator Namuun##78102
turnin Vile Defilers##33969 |goto 57.56,76.69
step
talk Soulbinder Tuulani##78028
turnin Antivenin##33967 |goto 57.23,76.91
step
talk Soulbinder Nyami##75256
turnin Into the Hollow##33958 |goto 57.18,76.93
step
talk Exarch Maladaar##75250
accept Scheduled Pickup##34240 |goto 57.23,77.05
step
accept Zorkra's Fall##34660 |goto 53.99,88.84
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Shattered_Hand_Grunts_AS"
step
clicknpc Zorka's Void Gate##79520+
|tip They look like blue and pink swirling portals on the ground around this area.
Seal #4# of Zorka's Void Gates |q 34660/1 |goto 53.99,88.84
|only if haveq(34660) or completedq(34660)
step
label "Kill_Shattered_Hand_Grunts_AS"
kill 6 Shattered Hand Grunt##79544 |q 34660/2 |goto 53.99,88.84
|only if haveq(34660) or completedq(34660)
step
talk Soulbinder Tuulani##77869
turnin Scheduled Pickup##34240 |goto 50.42,87.52
accept Restalaan, Captain of the Guard##34508 |goto 50.42,87.52
step
talk Defender Artaal##78083
accept Never Forget##34013 |goto 50.52,87.55
step
talk Vindicator Kaluud##78082
accept Payback##34234 |goto 50.40,87.32
stickystart "Rout_Telmor_Invaders_AS"
step
click Hastily Written Note##227069
accept Invasion of the Soul Eaters##33988 |goto 49.18,88.05
step
click Telmor Registry##227054
collect Telmor Registry##108896 |q 34013/1 |goto 49.26,87.82
step
click Forge##227067
collect Auchenai Torch##108886 |q 33988/1 |goto 49.30,87.83
step
clicknpc Body Pile##77003
Burn the Pile of Bodies |q 33988/2 |goto 48.47,88.65 |count 1
step
clicknpc Body Pile##77003
Burn the Pile of Bodies |q 33988/2 |goto 49.62,89.08 |count 2
step
clicknpc Body Pile##77003
Burn the Pile of Bodies |q 33988/2 |goto 48.74,89.97 |count 3
step
Enter the building |goto 48.94,90.55 < 7 |walk
click Auchenai Prayerbook##227959
|tip Inside the building.
collect Auchenai Prayerbook##109622 |q 34013/2 |goto 49.35,90.80
step
clicknpc Body Pile##77003
Burn the Pile of Bodies |q 33988/2 |goto 47.83,90.35 |count 4
step
_Click the Complete Quest Box:_
turnin Invasion of the Soul Eaters##33988
step
Enter the building |goto 47.80,89.50 < 7 |walk
click Leafshadow##227055
|tip Inside the building.
collect Leafshadow##108897 |q 34013/3 |goto 47.50,88.91
step
Enter the building |goto 45.36,90.37 < 10 |walk
talk Restalaan##77082
|tip Inside the building.
turnin Restalaan, Captain of the Guard##34508 |goto 44.84,90.49
accept The Final Piece##33976 |goto 44.84,90.49
step
kill Vorpil Ribcleaver##77051 |q 33976/1 |goto 44.50,90.88
|tip Inside the building.
step
click Auch'naaru##229654
|tip Inside the building.
collect Auch'naaru##109197 |q 33976/2 |goto 44.50,90.89
step
talk Restalaan##77082
|tip Inside the building.
turnin The Final Piece##33976 |goto 44.84,90.49
accept Changing the Tide##34326 |goto 44.84,90.49
step
label "Rout_Telmor_Invaders_AS"
Kill enemies around this area
Rout #12# Telmor Invaders |q 34234/1 |goto 48.09,90.04
step
talk Vindicator Kaluud##78082
turnin Payback##34234 |goto 50.39,87.32
step
talk Defender Artaal##78083
turnin Never Forget##34013 |goto 50.52,87.55
step
talk Beldos##81068
|tip Inside the building.
fpath Retribution Point |goto 42.10,76.79
step
talk Restalaan##77799
turnin Changing the Tide##34326 |goto 43.43,75.95
accept Desperate Measures##34092 |goto 43.43,75.95
step
talk Exarch Maladaar##75392
accept Ogre Diplomacy##35227 |goto 42.92,76.11
stickystart "Slay_Angorosh_AS"
step
kill Mok'war the Terrible##77350
collect Ango'rosh Spellbook##109163 |q 34092/1 |goto 39.47,83.60
step
kill Dur'gol the Ruthless##77349
collect Grimoire of Binding##109162 |q 34092/2 |goto 42.69,84.88
step
clicknpc Altar of Ango'rosh##77393
Watch the dialogue
Perform the Ritual |q 34092/3 |goto 41.17,82.45
step
label "Slay_Angorosh_AS"
Kill enemies around this area
Slay #10# Ango'rosh |q 35227/1 |goto 41.08,83.81
step
talk Exarch Maladaar##75392
turnin Ogre Diplomacy##35227 |goto 42.92,76.11
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.43,75.95
step
talk Exarch Maladaar##75392
accept Retribution for the Light##35254 |goto 42.92,76.11
accept Into the Heart of Madness##34157 |goto 42.92,76.11
stickystart "Slay_Demons_35254_AS"
step
click Shadow Council Communicator##227737
accept Hiding in the Shadows##34163 |goto 37.25,79.40
step
clicknpc Shadow Orb##40469
|tip At the top of the tower.
Destroy the Eastern Shadow Orb |q 34163/1 |goto 37.79,77.32
step
clicknpc Shadow Orb##40469
|tip At the top of the tower.
Destroy the Southern Shadow Orb |q 34163/2 |goto 35.62,79.85
step
talk Kor'thos Dawnfury##77629
accept Book Burning##34164 |goto 34.01,73.97
stickystart "Collect_Shadow_Council_Spellbooks_AS"
step
clicknpc Shadow Orb##40469
|tip At the top of the tower.
Destroy the Northern Shadow Orb |q 34163/3 |goto 34.46,70.38
step
_Click the Complete Quest Box:_
turnin Hiding in the Shadows##34163
step
label "Collect_Shadow_Council_Spellbooks_AS"
kill Shadowborne Dementor##77548+
collect 3 Shadow Council Spellbook##109259 |goto 34.96,74.88 |q 34164
step
click Roaring Fire
|tip Click it 3 times.
Burn #3# Books |q 34164/1 |goto 34.14,74.22
step
talk Kor'thos Dawnfury##77629
turnin Book Burning##34164 |goto 34.01,73.97
step
label "Slay_Demons_35254_AS"
Kill enemies around this area
Slay #15# Demons |q 35254/1 |goto 34.96,74.88
step
Follow the path up |goto 32.87,74.54 < 15 |only if walking
Enter the cave |goto 31.87,74.55 < 10 |walk
talk Soulbinder Nyami##77582
|tip Inside the cave.
turnin Into the Heart of Madness##34157 |goto 31.21,73.60
accept Destination: Unknown##34154 |goto 31.21,73.60
step
clicknpc Demonic Gateway##77571
|tip Inside the cave.
Take the Portal |q 34154/1 |goto 30.91,73.15
step
_Inside the Remains of Xandros:_
Watch the dialogue
kill Mongrethod##77579 |q 34154/2
|tip Your allies will help you fight.
step
_Inside the Remains of Xandros:_
clicknpc Demonic Gateway##77571
Take the Portal |q 34154/3
step
clicknpc Exarch Maladaar##75250
turnin Retribution for the Light##35254 |goto Talador/0 45.69,74.05
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34154 |goto 46.32,74.09
accept Together We Are Strong##36512 |goto 46.32,74.09
step
talk Exarch Maladaar##77581
accept Come Together##34707 |goto 45.69,74.05
step
Run up the stairs |goto 44.55,74.64 < 15 |only if walking
talk Caleb##76826
accept Just Peachicky##33882 |goto 36.20,65.05
accept Sher'KHAAAAAAANNNN!##33884 |goto 36.20,65.05
stickystart "Rescue_Frightened_Peachicks_AS"
stickystart "Kill_Sharpfang_Stalkers_AS"
step
Follow the path up |goto 32.33,67.14 < 15 |only if walking
Enter the cave |goto 32.04,69.06 < 10 |walk
kill Sher'khaan##76687 |q 33884/2 |goto 31.00,71.18
|tip Inside the cave.
step
click Ricky##226987
|tip Inside the cave.
accept And the Elekk Too?!##33944 |goto 30.89,70.82
step
label "Rescue_Frightened_Peachicks_AS"
clicknpc Frightened Peachick##76722+
|tip They look like tiny pink birds on the ground around this area.
Rescue #7# Frightened Peachicks |q 33882/1 |goto 34.72,65.50
step
label "Kill_Sharpfang_Stalkers_AS"
kill 8 Sharpfang Stalker##76685 |q 33884/1 |goto 34.72,65.50
step
talk Caleb##76826
turnin Just Peachicky##33882 |goto 36.20,65.05
turnin Sher'KHAAAAAAANNNN!##33884 |goto 36.20,65.05
turnin And the Elekk Too?!##33944 |goto 36.20,65.05
step
accept Bonus Objective: Court of Souls##34667 |goto 41.43,63.80
|tip You will accept this quest automatically.
|only if level < 50
step
clicknpc Auchenai Ballista##79523
Control the Auchenai Ballista |invehicle |goto 41.43,63.80 |q 34667
|only if haveq(34667) or completedq(34667)
step
kill Shadowgaze Batrider##79514+
|tip They are flying in the air nearby.
|tip Use the ability on your action bar.
Shoot Down #4# Shadowgaze Batriders |q 34667/3 |goto 41.43,63.80
|only if haveq(34667) or completedq(34667)
step
Stop Control the Auchenai Ballista |outvehicle |q 34667
|tip Click the yellow arrow on your action bar.
|only if haveq(34667) or completedq(34667)
stickystart "Slay_Demons_34667_AS"
step
kill Warlock Soulstealer##79482+
|tip They are channeling a purple spell on draenei on the ground around this area.
Release #8# Draenei Spirits |q 34667/1 |goto Talador/0 42.51,61.61
You can find more inside the building at [Talador/14 49.19,89.77]
|only if haveq(34667) or completedq(34667)
step
label "Slay_Demons_34667_AS"
Kill enemies around this area
Slay #10# Demons |q 34667/2 |goto Talador/0 42.51,61.61
You can find more inside the building at [Talador/14 49.19,89.77]
|only if haveq(34667) or completedq(34667)
step
talk Ageilaa##78534
turnin Every Bit Counts##34709 |goto 49.89,56.16
accept Trouble In The Mine##34399 |goto 49.89,56.16
accept Frenzied Manafeeders##34400 |goto 49.89,56.16
step
kill Frenzied Manafeeder##78390+
|tip Don't kill them, just weaken them to 35% Health or less.
|tip Stop attacking them once they are weakened.
use the Dissipation Crystal##110468
|tip Use it on weakened Frenzied Manafeeders.
Soothe #8# Frenzied Manafeeders |q 34400/1 |goto 50.39,53.76
step
talk Ageilaa##78534
turnin Frenzied Manafeeders##34400 |goto 49.89,56.16
step
Enter the mine |goto 51.01,51.83 < 10 |walk
talk Vindicator Doruu##78538
|tip Inside the mine.
turnin Trouble In The Mine##34399 |goto 51.62,50.47
step
talk Archmage Elandra##78513
|tip Inside the mine.
accept Arcane Essence##34403 |goto 51.65,50.52
accept Caught In The Chaos##34406 |goto 51.65,50.52
stickystart "Collect_Arcane_Essences_AS"
step
Kill enemies around this area
|tip Kill the ones attacking the friendly draenei NPCs.
|tip Inside the mine.
Save #8# Injured Miners |q 34406/1 |goto 52.16,49.73
step
label "Collect_Arcane_Essences_AS"
Kill enemies around this area
|tip Inside the mine.
collect 6 Arcane Essence##110390|q 34403/1 |goto 52.16,49.73
step
Run up the ramp |goto 52.63,50.48 < 7 |walk
talk Archmage Elandra##78513
|tip Inside the mine.
turnin Arcane Essence##34403 |goto 51.65,50.52
turnin Caught In The Chaos##34406 |goto 51.65,50.52
accept An'dure The Giant##34415 |goto 51.65,50.52
step
kill An'dure the Awakened##78372
|tip Inside the mine.
collect Crystal Giant Heart##110418 |q 34415/1 |goto 54.23,50.02
step
Run up the ramp |goto 52.63,50.48 < 7 |walk
talk Archmage Elandra##78513
|tip Inside the mine.
turnin An'dure The Giant##34415 |goto 51.65,50.52
accept Kaelynara Sunchaser##34448 |goto 51.65,50.52
step
talk Archmage Elandra##78513
|tip Inside the mine.
Tell her _"I am ready to confront Kaelynara."_
Speak with Elandra |q 34448/1 |goto 51.65,50.52
step
Watch the dialogue |goto 51.65,50.52
|tip You will be teleported automatically.
Teleport to Kaelynara Sunchaser |goto 52.22,47.74 < 10 |noway |c |q 34448
step
kill Kaelynara Sunchaser##78501 |q 34448/2 |goto 52.10,47.55
step
talk Archmage Elandra##78741 |goto 52.11,47.72
Tell her _"I am ready to return to the Jorune Mine."_
Return to Jorune Mine |goto 51.56,50.51 < 10 |noway |c |q 34448
step
talk Vindicator Doruu##78538
|tip Inside the mine.
turnin Kaelynara Sunchaser##34448 |goto 51.62,50.47
step
talk Vindicator Icia##79618
turnin Come Together##34707 |goto 69.66,21.61
accept News from Spires of Arak##35554 |goto 69.66,21.61
|next "Leveling Guides\\Draenor (10-60)\\Spires of Arak (30-60)"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Spires of Arak (30-60)",{
next="Leveling Guides\\Draenor (10-60)\\Nagrand (35-60)",
condition_suggested=function() return level >= 30 and level <= 50 and not completedq(35704) end,
image=ZGV.IMAGESDIR.."SpiresOfArak",
startlevel=30,
},[[
step
#include "Garrison_BGrey"
turnin News from Spires of Arak##35554 |only if haveq(35554) or completedq(35554)
accept Arakkoa Exodus##34653
step
#include "Garrison_DLongdrink"
Tell him _"Please fly me to Spires of Arak."_
Take a Flight to Spires of Arak |ontaxi |q 34653 |only if haveq(34653) or haveq(34653)
Take a Flight to Spires of Arak |ontaxi |q 36951 |only if haveq(36951) or haveq(36951)
step
Fly to Spires of Arak |offtaxi |goto Spires of Arak/0 37.34,14.94 |q 34653 |notravel |only if haveq(34653) or haveq(34653)
Fly to Spires of Arak |offtaxi |goto Spires of Arak/0 37.34,14.94 |q 36951 |notravel |only if haveq(36951) or haveq(36951)
step
talk Azik##79539
turnin Arakkoa Exodus##36951 |goto 37.89,18.03 |only if haveq(36951) or completedq(36951)
turnin Arakkoa Exodus##34653 |goto 37.89,18.03 |only if haveq(34653) or completedq(34653)
accept The Shadows of Skettis##34655 |goto 37.89,18.03
step
Follow the path |goto 38.08,20.40 < 20 |only if walking
talk Reshad##79519
|tip Inside the building.
Tell him _"Shadows gather..."_
Speak the Password to Reshad |q 34655/1 |goto 43.65,12.92
step
talk Reshad##79519
|tip Inside the building.
turnin The Shadows of Skettis##34655 |goto 43.65,12.91
accept Hidden in Plain Sight##34656 |goto 43.65,12.91
accept Adherents of the Sun God##34657 |goto 43.65,12.91
stickystart "Kill_Adherent_Bladewings"
step
click Weathered Wingblades##230529
collect Weathered Wingblades##111485 |q 34656/1 |goto 41.23,16.27
step
click Ragged Mask##230568
collect Ragged Mask##111524 |q 34656/2 |goto 44.93,15.15
step
label "Kill_Adherent_Bladewings"
kill 8 Adherent Bladewing##79598 |q 34657/1 |goto 43.72,14.57
step
talk Reshad##79519
|tip Inside the building.
turnin Hidden in Plain Sight##34656 |goto 43.65,12.92
turnin Adherents of the Sun God##34657 |goto 43.65,12.92
accept Orders From On High##34658 |goto 43.65,12.92
step
Follow the path up |goto 46.15,14.50 < 10 |only if walking
kill Sun-Sage Rathyx##79516
collect Adherent Proclamation##111575 |q 34658/1 |goto 45.91,15.40
step
talk Reshad##79519
turnin Orders From On High##34658 |goto 45.39,18.26
accept The Crone##34659 |goto 45.39,18.26
step
talk Ornekka##79890
Tell him _"Shadows gather..."_
Speak the Password to Ornekka |q 34659/1 |goto 51.62,31.37
step
talk Ornekka##79890
turnin The Crone##34659 |goto 51.62,31.37
accept A Charming Deception##34756 |goto 51.62,31.37
accept All Due Respect##35636 |goto 51.62,31.37
step
Watch the dialogue
talk Reshad##79519
|tip He walks to this location.
accept Echo Hunters##34805 |goto 51.57,31.37
step
talk Darkscreech##84515
fpath Crow's Crook |goto 51.81,31.05
stickystart "Collect_Illusion_Charms"
stickystart "Kill_Echo_Hunters"
step
clicknpc Syth##80047
collect Feather of Syth##111850 |q 35636/1 |goto 50.25,36.38
step
Enter the building |goto 50.12,36.67 < 7 |walk
click Syth's Bookcase##233073
|tip Inside the building.
Watch the dialogue
Kill the enemies that attack in waves
collect The Saga of Terokk##111892 |q 35636/2 |goto 50.02,36.73
step
talk Reshad##82621
turnin All Due Respect##35636 |goto 50.28,36.71
accept Syth's Secret##35668 |goto 50.28,36.71
step
label "Collect_Illusion_Charms"
click Illusion Charm##230714+
|tip They look like purple and brown wooden objects leaning against trees on the ground around this area.
Collect #5# Illusion Charm |q 34756/1 |goto 50.52,36.58
step
label "Kill_Echo_Hunters"
kill 10 Echo Hunter##79895 |q 34805/1 |goto 50.28,37.71
step
Enter the cave |goto 49.04,41.27 < 7 |walk
kill Sun-Talon Oberyx##82623
|tip Inside the cave.
collect The Eye of Anzu##113282 |q 35668/1 |goto 48.33,42.86
step
Follow the road |goto 48.85,40.40 < 20 |only if walking
talk Reshad##81770
turnin A Charming Deception##34756 |goto 48.57,44.48
turnin Syth's Secret##35668 |goto 48.57,44.48
turnin Echo Hunters##34805 |goto 48.56,44.48
accept A Gathering of Shadows##35671 |goto 48.57,44.48
step
Watch the dialogue
|tip Follow Reshad as he walks.
|tip He eventually walks to this location.
Enter Veil Terokk with Reshad |q 35671/1 |goto 46.55,45.55
step
talk Shadow-Sage Iskar##80153
turnin A Gathering of Shadows##35671 |goto 46.51,45.61
step
talk Skytalon Meshaal##84498
fpath Veil Terokk |goto 46.17,44.12
step
talk Jasper Fel##81891
accept One of Our Own##35274 |goto 45.89,46.36
step
talk Shadow-Sage Iskar##80153
Tell him _"Your prisoner is with me. He means your people no harm."_
Convince Shadow-Sage Iskar |q 35274/1 |goto 46.51,45.61
step
talk Jasper Fel##81891
turnin One of Our Own##35274 |goto 45.89,46.36
accept Inspecting the Troops##35276 |goto 45.89,46.36
step
Follow the road |goto 41.71,49.98 < 50 |only if walking
talk Jasper Fel##81915
turnin Inspecting the Troops##35276 |goto 39.99,60.47
step
talk Lieutenant Willem##81929
|tip He walks around this area.
accept Orders, Commander?##35286 |goto 39.89,60.87
step
Enter the building |goto 40.11,61.39 < 7 |walk
talk Elria Willowfall##84134
|tip Inside the building.
home Southport |goto 40.12,61.49
step
clicknpc Drafting Table##81119
Use the Drafting Table |q 35286/1 |goto 39.69,60.85
step
clicknpc Drafting Table##81119
|tip Select the building you would like to make.
|tip We recommend the Stoktron Brewery, for the XP buff.
|tip Otherwise, it doesn't matter, just preference.
Select a Building |q 35286/2 |goto 39.69,60.85
step
_Which Building Did You Choose?_
|tip Click the line below for the building you chose to build.
Stoktron Brewery	|confirm	|next "Stocktron_Brewery"
Smuggler's Den		|confirm	|next "Smugglers_Den"
step
label "Stocktron_Brewery"
talk Lieutenant Willem##81929
|tip He walks around this area.
turnin Orders, Commander?##35286 |goto 39.89,60.87
accept Befriending the Locals##37327 |goto 39.89,60.87
step
talk Jasper Fel##81949
accept Old Friends##35293 |goto 39.78,60.67
|next "Merge"
step
label "Smugglers_Den"
talk Lieutenant Willem##81929
|tip He walks around this area.
turnin Orders, Commander?##35286 |goto 39.89,60.87
step
talk Jasper Fel##81949
accept Old Friends##35293 |goto 39.78,60.67
step
Enter the building |goto 39.62,61.08 < 7 |walk
talk Milly Osworth##82709
|tip Inside the building.
accept Peace Offering##35699 |goto 39.51,61.32
|next "Merge"
step
label "Merge"
talk Percy##79748
accept Return to Veil Terokk##35611 |goto 40.18,60.26
step
talk Firn Swiftbreeze##83567
fpath Southport |goto 39.08,61.80
step
Follow the road |goto 42.13,58.22 < 60 |only if walking
accept Bloodmane Pridelands##36660 |goto 45.53,62.91
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Free_Captured_Ravenspeakers"
stickystart "Slay_Bloodmane_Saberons"
step
kill Brokenfang##86076 |q 36660/3 |goto 44.94,64.69
|tip He walks around this area.
|only if haveq(36660) or completedq(36660)
step
kill Ralshira##86135 |q 36660/4 |goto 49.36,70.04
|only if haveq(36660) or completedq(36660)
step
Follow the path |goto 47.99,73.39 < 40 |only if walking
kill Shadowclaw##86138 |q 36660/5 |goto 50.53,77.02
|only if haveq(36660) or completedq(36660)
step
label "Free_Captured_Ravenspeakers"
clicknpc Prisoner Post##86159+
|tip They look like wooden poles with bird people tied to them on the ground around this area.
|tip You can find more inside the caves around this area.
Free #6# Captured Ravenspeakers |q 36660/2 |goto 48.05,73.47
|only if haveq(36660) or completedq(36660)
step
label "Slay_Bloodmane_Saberons"
Kill Bloodmane enemies around this area
Slay #15# Bloodmane Saberons |q 36660/1 |goto 48.05,73.47
|only if haveq(36660) or completedq(36660)
step
Follow the road |goto 41.93,52.49 < 30 |only if walking
talk Jasper Fel##81960
turnin Old Friends##35293 |goto 39.15,48.94
accept I See Dead People##35329 |goto 39.15,48.94
step
Kill enemies around this area
|tip Outside the fence surrounding the town.
collect Bryan Finn's Schematic##113095 |q 35329/1 |goto 37.09,49.15
You can find more around:
[39.73,50.48]
[39.63,52.39]
step
talk Bryan Finn##82065
|tip He walks around this area.
Choose _"Show the Schematic to Bryan."_
Show the Schematic to Bryan Finn |q 35329/2 |goto 38.94,48.84
step
talk Bryan Finn##82065
|tip He walks around this area.
turnin I See Dead People##35329 |goto 38.94,48.84
accept A Parting Favor##35339 |goto 38.94,48.84
step
Kill enemies around this area
collect 6 Spectral Essence##113106 |q 35339/1 |goto 37.68,51.93
step
Enter the building |goto 37.71,51.30 < 7 |walk
talk Alice Finn##82110
|tip Upstairs inside the building.
Choose _"Show the spectral essences to Alice."_
Free Alice Finn's Mind |q 35339/2 |goto 37.68,51.10
step
talk Alice Finn##82110
|tip Upstairs inside the building.
turnin A Parting Favor##35339 |goto 37.69,51.07
accept A Piece of the Puzzle##35353 |goto 37.69,51.07
step
kill Watch Commander Branson##82136 |q 35353/1 |goto 37.46,51.03
|tip Downstairs inside the building.
step
talk Alice Finn##82126
|tip Inside the building.
turnin A Piece of the Puzzle##35353 |goto 37.54,50.76
accept Second in Command##35380 |goto 37.54,50.76
step
Enter the building |goto 37.40,53.46 < 7 |walk
talk Sir Edward##82194
|tip Inside the building.
turnin Second in Command##35380 |goto 37.70,53.81
accept Punishable by Death##35407 |goto 37.70,53.81
step
talk Lady Claudia##82212
|tip Inside the building.
accept Prime the Cannons##35408 |goto 37.65,53.87
stickystart "Collect_Armory_Cannonballs"
stickystart "Slay_Traitors"
step
click Armory Cannon##232401
collect Armory Cannon##113127 |q 35408/2 |goto 36.44,53.53
step
label "Collect_Armory_Cannonballs"
click Cannonball##232360+
|tip They look like dark gray balls on the ground around this area.
collect 10 Armory Cannonball##113122 |q 35408/1 |goto 36.64,53.27
step
label "Slay_Traitors"
Kill enemies around this area
Slay #8# Traitors |q 35407/1 |goto 36.79,53.04
step
Enter the building |goto 37.40,53.46 < 10 |walk
talk Sir Edward##82194
|tip Inside the building.
turnin Punishable by Death##35407 |goto 37.70,53.81
step
talk Lady Claudia##82212
|tip Inside the building.
turnin Prime the Cannons##35408 |goto 37.65,53.87
accept Admiral Taylor##35482 |goto 37.65,53.87
step
Find Admiral Taylor |q 35482/1 |goto 36.82,56.95
step
Watch the dialogue
kill Soulscythe##82314 |q 35482/2 |goto 36.82,56.95
step
kill Ephial##82320 |q 35482/3 |goto 36.82,57.34
step
talk Admiral Taylor##82375
turnin Admiral Taylor##35482 |goto 36.82,56.95
step
talk Jasper Fel##82403
accept Honoring a Hero##35549 |goto 36.86,56.74
step
Follow the road |goto 39.02,47.90 < 50 |only if walking
accept The Writhing Mire##35649 |goto 36.46,44.49
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Varashian_Vilefangs"
stickystart "Slay_Shattered_Hand"
stickystart "Destroy_Barrels_Of_Harvested_Toxin"
step
kill Taskmaster Banegore##85219 |q 35649/1 |goto 32.34,47.38
|only if haveq(35649) or completedq(35649)
step
label "Kill_Varashian_Vilefangs"
kill 5 Varashian Vilefang##85429 |q 35649/3 |goto 33.74,44.40
|only if haveq(35649) or completedq(35649)
step
label "Destroy_Barrels_Of_Harvested_Toxin"
click Barrel of Harvested Toxin##233035+
|tip They look like wooden barrels with an orange ring around them on the ground around this area.
Destroy #3# Barrels of Harvested Toxin |q 35649/2 |goto 33.74,44.40
|only if haveq(35649) or completedq(35649)
step
label "Slay_Shattered_Hand"
accept Bonus Objective: The Writhing Mire##35649
Kill Shattered Hand enemies around this area
Slay #20# Shattered Hand |q 35649/4 |goto 33.74,44.40
|only if haveq(35649) or completedq(35649)
step
Run up the path |goto 30.83,37.57 < 20 |only if walking
accept Bladefist Hold##36792 |goto 30.03,31.56
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Slay_Bladefist_Skitterers"
step
Enter the cave |goto 30.03,31.56 < 7 |walk
kill Brood Mother Xylax##86455 |q 36792/4 |goto 30.76,29.65
|tip Inside the cave.
|tip You may need help with this.
|only if haveq(36792) or completedq(36792)
step
label "Slay_Bladefist_Skitterers"
kill 12 Bladefist Skitterer##86294 |q 36792/2 |goto 29.86,32.94
|tip You can find more inside the caves in the ground around this area. |notinsticky
|only if haveq(36792) or completedq(36792)
stickystart "Detonate_Iron_Grenades"
stickystart "Slay_Shattered_Hand_Orcs"
step
Follow the path up |goto 30.36,31.56 < 15 |only if walking
kill Bagdoth Goredrinker##86461 |q 36792/5 |goto 30.49,27.62
|tip He walks around this area.
|tip You may need help with this.
|only if haveq(36792) or completedq(36792)
step
Enter the building |goto 28.12,27.38 < 7 |only if walking
kill Val'dune Fleshcrafter##86482 |q 36792/6 |goto 27.91,26.85
|tip At the top of the tower.
|tip You may need help with this.
|only if haveq(36792) or completedq(36792)
step
label "Detonate_Iron_Grenades"
clicknpc Iron Grenade##86524+
|tip They look like spiked metal balls on the ground around this area.
|tip After picking them up, click the button that appears on your screen and throw it before it explodes.
Detonate #6# Iron Grenades |q 36792/3 |goto 28.48,28.47
You can find more around [30.50,28.77]
|only if haveq(36792) or completedq(36792)
step
label "Slay_Shattered_Hand_Orcs"
Kill enemies around this area
Slay #25# Shattered Hand Orcs |q 36792/1 |goto 29.48,27.46
|only if haveq(36792) or completedq(36792)
step
talk Lieutenant Willem##81929
|tip He walks around this area.
turnin Honoring a Hero##35549 |goto 39.88,60.85
step
talk Admiral Taylor##85080
accept For Old Times' Sake##36353 |goto 39.98,60.65
step
talk Watchman Kovak##85550
accept Pinchwhistle Gearworks##35619 |goto 39.64,60.62
step
talk Firn Swiftbreeze##83567
Tell him _"Take me to the Pinchwhistle Gearworks."_
Travel to Pinchwhistle Gearworks |q 35619/1 |goto 39.08,61.80
step
Fly to Pinchwhistle Gearworks |offtaxi |goto 60.80,73.40 |q 35619 |notravel
step
talk Kwiven Quickcog##82511
fpath Pinchwhistle Gearworks |goto 60.88,73.30
step
talk Engineer Gazwitz##81128
accept Spore-be-Gone##35079 |goto 61.45,72.96
step
talk Kimzee Pinchwhistle##81109
turnin Pinchwhistle Gearworks##35619 |goto 61.47,72.94
accept Defungination##35077 |goto 61.47,72.94
step
talk Exterminator Lemmy##85062
accept Unwanted Pests##36179 |goto 62.56,73.91
stickystart "Activate_Turrets"
stickystart "Slay_Sponge_Creatures"
step
use the QR58 Flame Blaster##112683
|tip Use it next to Spore Pustules.
|tip They looks like yellow balls on the ground around this area.
Burn #20# Spore Pustules |q 35077/1 |goto 63.59,75.52
step
label "Activate_Turrets"
clicknpc Spore-be-Gone Turret##81135+
|tip They look like silver and orange metal objects on the ground around this area.
Activate #6# Turrets |q 35079/1 |goto 63.59,75.52
step
label "Slay_Sponge_Creatures"
Kill enemies around this area
Slay #10# Spore Creatures |q 36179/1 |goto 63.59,75.52
step
talk Kimzee Pinchwhistle##81109
turnin Defungination##35077 |goto 61.47,72.94
step
talk Engineer Gazwitz##81128
turnin Spore-be-Gone##35079 |goto 61.45,72.96
turnin Unwanted Pests##36179 |goto 61.45,72.96
step
talk Kimzee Pinchwhistle##81109
accept The Mother Lode##35080 |goto 61.47,72.94
step
Meet Up with Kimzee Pinchwhistle |q 35080/1 |goto 59.12,79.17
step
talk Kimzee Pinchwhistle##81773
turnin The Mother Lode##35080 |goto 59.12,79.17
accept Getting the Crew Back Together##35082 |goto 59.12,79.17
step
talk Engineer Gazwitz##81784
accept Clearing Out Before Cleaning Up##35081 |goto 59.09,79.22
stickystart "Kill_Crimsonwing_Wasps"
step
clicknpc Injured Crewman##81131+
|tip They look like goblins laying on the ground around this area.
Revive #6# Injured Crew |q 35082/1 |goto 60.24,81.23
step
label "Kill_Crimsonwing_Wasps"
kill 8 Crimsonwing Wasp##85403 |q 35081/1 |goto 59.93,81.44
step
talk Kimzee Pinchwhistle##81773
turnin Getting the Crew Back Together##35082 |goto 59.12,79.17
step
talk Engineer Gazwitz##81784
turnin Clearing Out Before Cleaning Up##35081 |goto 59.09,79.22
accept Follow that Hotrod!##35285 |goto 59.09,79.22
step
talk Kimzee Pinchwhistle##81972
turnin Follow that Hotrod!##35285 |goto 58.48,92.33
accept The Right Parts for the Job##35090 |goto 58.48,92.33
accept Skimming Off The Top##35089 |goto 58.48,92.33
step
talk Krixel Pinchwhistle##81443
accept Field Trial##36384 |goto 58.48,92.20
stickystart "Collect_Serviceable_Gears"
stickystart "Collect_Volatile_Oils"
step
use the Vial of Untested Serum##115475
|tip Use it on an Infested Lumberjack.
|tip They look like goblins around this area.
Test the Serum |q 36384/1 |goto 58.00,87.80
step
label "Collect_Serviceable_Gears"
use the G-14 Buster Rocket##112698
|tip Use it near Broken Shredders.
|tip They look like large metal machines on the ground around this area.
click Serviceable Gear##231811
|tip They look like metal parts that appear on the ground.
collect 16 Serviceable Gear##112634 |q 35090/1 |goto 58.22,89.76
step
label "Collect_Volatile_Oils"
kill Volatile Sludge##81524+
collect 6 Volatile Oil##112906 |q 35089/1 |goto 59.02,89.37
step
talk Krixel Pinchwhistle##81443
turnin Field Trial##36384 |goto 58.49,92.20
step
talk Kimzee Pinchwhistle##81978
turnin The Right Parts for the Job##35090 |goto 58.82,92.84
turnin Skimming Off The Top##35089 |goto 58.82,92.84
accept Sporicide##35091 |goto 58.82,92.84
step
talk Krixel Pinchwhistle##81443
accept Preventing the Worst##35211 |goto 58.49,92.20
accept Curing With Force##36428 |goto 58.49,92.20
step
kill 6 Spore Shambler##82265 |q 35091/1 |goto 56.76,93.30
You can find more around [55.29,88.41]
step
talk Kimzee Pinchwhistle##81978
turnin Sporicide##35091 |goto 58.82,92.84
stickystart "Cure_Infected_Goblins"
step
Enter the building |goto 56.67,91.44 < 7 |walk
clicknpc Firebomb##81632
|tip Inside the building.
Place the Firebomb |q 35211/1 |goto 56.75,91.58 |count 1
step
Enter the building |goto 56.30,91.47 < 7 |walk
clicknpc Firebomb##81632
|tip Inside the building.
Place the Firebomb |q 35211/1 |goto 56.29,91.61 |count 2
step
Enter the building |goto 55.67,90.99 < 7 |walk
clicknpc Firebomb##81632
|tip Upstairs inside the building.
Place the Firebomb |q 35211/1 |goto 55.66,91.01 |count 3
step
clicknpc Firebomb##81632
Place the Firebomb |q 35211/1 |goto 56.46,89.45 |count 4
step
Enter the building |goto 56.66,89.83 < 7 |walk
clicknpc Firebomb##81632
|tip Inside the building.
Place the Firebomb |q 35211/1 |goto 56.62,89.98 |count 5
step
label "Cure_Infected_Goblins"
Kill Infected enemies around this area
|tip Don't kill them, just weaken them to below 35% health, then stop fighting them.
|tip They look like goblins.
use the Vial of Refined Serum##115533
|tip Use it on weakened Infected Bruisers.
Cure #6# Infected Goblins |q 36428/1 |goto 57.43,88.90
step
talk Krixel Pinchwhistle##81443
turnin Preventing the Worst##35211 |goto 58.49,92.20
turnin Curing With Force##36428 |goto 58.49,92.20
accept Flame On##35298 |goto 58.49,92.20
step
click Firebomb Plunger##231910
Activate the Plunger |q 35298/1 |goto 58.51,92.24
step
clicknpc Repaired Flying Machine##81567
Ride on Kimzee's Flying Machine |q 35298/2 |goto 58.88,92.87
step
Fly with Kimzee |goto 62.33,71.89 < 10 |c |q 35298 |notravel
step
talk Kimzee Pinchwhistle##82468
turnin Flame On##35298 |goto 61.59,72.85
accept Kimzee Pinchwhistle##36062 |goto 61.59,72.85
step
talk Reshad##81770
|tip Inside the building.
turnin Return to Veil Terokk##35611 |goto 45.87,45.74
accept Talon Watch##34998 |goto 45.87,45.74
accept The Kaliri Whisperer##34884 |goto 45.87,45.74
step
talk Shadow-Sage Iskar##80153
|tip Inside the building.
accept Last of the Talonpriests##34827 |goto 45.93,45.78
step
clicknpc Skizzik##80233
Choose _"Search him for the gavel."_
collect Worn Gavel##115482 |q 34884/1 |goto 45.42,36.31
step
clicknpc Skizzik##80233
accept Mother of Thorns##34885 |goto 45.42,36.31
step
clicknpc Kaliri Egg##80470
accept Ikky's Egg##34838 |goto 45.39,36.74
step
clicknpc Kaliri Egg##80470
Hatch Ikky |q 34838/1 |goto 45.39,36.74
step
talk Ikky##80469
turnin Ikky's Egg##34838 |goto 45.39,36.74
accept Baby Bird##34886 |goto 45.39,36.74
stickystart "Collect_Ravager_Grubs"
stickystart "Kill_Shadeback_Ravagers"
step
kill Shadeback Thornmother##80224 |q 34885/2 |goto 44.18,38.33
|tip She walks around this area.
step
label "Collect_Ravager_Grubs"
clicknpc Ravager Grub##80472+
|tip They look like small white slugs on the ground around this area.
collect 8 Ravager Grub##111934 |q 34886/1 |goto 45.17,37.88
step
label "Kill_Shadeback_Ravagers"
kill 5 Shadeback Ravager##78931 |q 34885/1 |goto 45.04,37.96
step
talk Ikky##80469
turnin Baby Bird##34886 |goto 45.39,36.74
step
use the Elixir of Shadows##112100
Imbibe the Elixir of Shadows |q 34827/1 |goto 48.02,34.76
step
talk Talonpriest Ishaal##80232
turnin Last of the Talonpriests##34827 |goto 48.02,34.76
accept Ishaal's Orb##34828 |goto 48.02,34.76
accept New Neighbors##34829 |goto 48.02,34.76
stickystart "Slay_Shattered_Hand_Orcs_34829"
step
clicknpc Ravager Egg##85425
accept Egg Punt##36425 |goto 47.14,31.67
stickystart "Kick_Ravager_Eggs"
step
Enter the building |goto 48.04,28.56 < 7 |walk
click Ishaal's Orb##230988
|tip Inside the building.
collect Ishaal's Orb##112101 |q 34828/1 |goto 48.09,28.47
step
label "Kick_Ravager_Eggs"
clicknpc Ravager Egg##85425+
|tip They look like spiked blue eggs on the ground around this area.
Kick #10# Ravager Eggs |q 36425/1 |goto 47.13,29.75
step
_Click the Complete Quest Box:_
turnin Egg Punt##36425
step
label "Slay_Shattered_Hand_Orcs_34829"
Kill Shattered Hand enemies around this area
Slay #15# Shattered Hand Orcs |q 34829/1 |goto 46.80,30.41
step
talk Talonpriest Ishaal##80232
turnin Ishaal's Orb##34828 |goto 48.02,34.76
turnin New Neighbors##34829 |goto 48.02,34.76
accept Behind the Veil##34830 |goto 48.02,34.76
step
use the Major Elixir of Shadows##112099
Imbibe the Major Elixir of Shadows |q 34830/1 |goto 44.49,24.00
step
talk Talonpriest Zellek##80508
turnin Behind the Veil##34830 |goto 44.49,24.00
accept Blades in the Dark##34882 |goto 44.49,24.00
accept A Feast of Shadows##34883 |goto 44.49,24.00
stickystart "Collect_Shadow_Dust"
step
kill Malrok Thornscar##80509 |q 34882/1 |goto 42.53,26.73
|tip He walks around this area.
step
label "Collect_Shadow_Dust"
Kill enemies around this a rea
|tip Pull them away from the purple circles on the ground.
|tip They will heal in the purple circles.
collect 10 Shadow Dust##112195 |q 34883/1 |goto 43.39,25.21
step
talk Talonpriest Zellek##80508
turnin Blades in the Dark##34882 |goto 44.49,24.00
turnin A Feast of Shadows##34883 |goto 44.49,24.00
accept Back from Beyond##34942 |goto 44.49,24.00
step
talk Darkscryer Raastok##85598
accept Power Unearthed##35257 |goto 44.39,23.98
step
talk Darkscryer Raastok##80157
turnin Power Unearthed##35257 |goto 36.86,24.54
accept Hardly Working##35260 |goto 36.86,24.54
accept Legacy of the Apexis##35258 |goto 36.86,24.54
step
talk Kura the Blind##80155
accept Sol Sisters##35259 |goto 36.95,24.44
step
talk Skytalon Kuris##84509
fpath Apexis Excavation |goto 37.00,24.62
stickystart "Free_Enslaved_Outcasts"
stickystart "Collect_Apexis_Cores"
step
Follow the path up |goto 33.98,25.29 < 10 |only if walking
Enter the cave |goto 32.51,25.96 < 7 |walk
kill Sol-Shaper Krashyx##81934 |q 35259/2 |goto 32.11,25.64
|tip Inside the cave.
step
Enter the cave |goto 34.11,28.28 < 10 |walk
kill Sol-Shaper Veoryx##81933 |q 35259/1 |goto 32.77,28.84
|tip Inside the cave.
step
talk Inactive Apexis Destroyer##82123
|tip Inside the cave.
turnin Sol Sisters##35259 |goto 32.58,29.04
accept Shot-Caller##35261 |goto 32.58,29.04
step
Leave the cave |goto 34.11,28.28 < 10 |walk
Follow the path up |goto 33.36,25.90 < 10 |only if walking
kill Overseer Akrath##82145
collect Apexis Interface##113121 |q 35261/1 |goto 33.45,30.26
step
click Overseer's Chair##232362
turnin Shot-Caller##35261 |goto 35.49,32.04
accept Hot Seat##35273 |goto 35.49,32.04
step
click Overseer's Chair##232362
Take Control of the Apexis Turret |invehicle |goto 35.49,32.04 |q 35273
stickystop "Free_Enslaved_Outcasts"
stickystop "Collect_Apexis_Cores"
stickystart "Kill_Adherent_Sol_Shapers"
step
kill 20 Apexis Destroyer##82229 |q 35273/1 |goto 35.49,32.04
|tip They attack from the ground.
|tip Use the abilties on your action bar.
|tip If you fail, click the chair again.
step
label "Kill_Adherent_Sol_Shapers"
kill 30 Adherent Sol-Shaper##82245 |q 35273/2 |goto 35.49,32.04
|tip They attack from the air.
|tip Use the abilties on your action bar. |notinsticky
|tip If you fail, click the chair again. |notinsticky
stickystart "Collect_Apexis_Cores"
step
label "Free_Enslaved_Outcasts"
use the Illusion Effigies##113084
|tip Use them near Enslaved Outcasts.
|tip They look like friendly bird people on the ground around this area.
Free #10# Enslaved Outcasts |q 35260/1 |goto 34.07,26.16
You can find more inside the cave at [34.63,25.86]
step
label "Collect_Apexis_Cores"
kill Apexis Guardian##81875+
collect 5 Apexis Core##113081 |q 35258/1 |goto 34.26,26.79
step
talk Darkscryer Raastok##80157
turnin Hardly Working##35260 |goto 36.86,24.54
turnin Legacy of the Apexis##35258 |goto 36.86,24.54
step
talk Kura the Blind##80155
turnin Hot Seat##35273 |goto 36.95,24.44
step
talk Darkscryer Raastok##80157
accept Control is King##35634 |goto 36.86,24.54
step
talk Shadow-Sage Iskar##80153
turnin Back from Beyond##34942 |goto 46.59,46.53
step
talk Reshad##81770
turnin The Kaliri Whisperer##34884 |goto 46.49,46.66
turnin Mother of Thorns##34885 |goto 46.49,46.66
accept Rites of the Talonpriests##35733 |goto 46.49,46.66
step
talk Effigy of Terokk##82813
turnin Rites of the Talonpriests##35733 |goto 46.63,46.75
accept The Talon King##35734 |goto 46.63,46.75
step
talk Effigy of Terokk##82813
Choose _"Touch the wingblades to witness one of Terokk's legends."_
Become the Talon King |invehicle |goto 46.63,46.75 |q 35734
stickystart "Slay_Mature_Bloodmane_Saberons"
stickystart "Kill_Bloodmane_Shortfangs"
step
Follow the path |goto 48.52,74.76 < 50 |only if walking
kill Pridelord Karash##82950 |q 35734/3 |goto 45.84,66.36
step
label "Slay_Mature_Bloodmane_Saberons"
Kill Bloodmane enemies around this area
|tip Bloodmane Shortfangs will not count for the quest goal.
Slay #20# Mature Bloodmane Saberons |q 35734/2 |goto 47.73,71.50
step
label "Kill_Bloodmane_Shortfangs"
kill 30 Bloodmane Shortfang##82946 |q 35734/1 |goto 47.73,71.50
step
Watch the dialogue
|tip You will teleport automatically.
Return to Veil Terokk |outvehicle |q 35734
step
talk Reshad##81770
turnin The Talon King##35734 |goto 46.49,46.66
step
talk Ikky##85320
accept Ikky##34898 |goto 46.20,45.70
step
Enter the building |goto 47.05,45.84 < 7 |walk
talk Darkscryer Raastok##82509
|tip Inside the building.
turnin Control is King##35634 |goto 47.12,45.85
step
talk Skytalon Meshaal##84498
Tell him _"Fly me to Talon Watch."_
Take a Flight to Talon Watch |ontaxi |goto 46.17,44.12 |q 34998
step
Fly to Talon Watch |offtaxi |goto 61.89,42.84 |q 34998 |notravel
step
talk Skytalon Karaz##84504
fpath Talon Watch |goto 61.90,42.62
step
talk Talon Guard Kurekk##80758
turnin Talon Watch##34998 |goto 62.23,42.67
accept Banished From the Sky##35000 |goto 62.23,42.67
step
talk Kazu##81514
accept Hatred Undying##34999 |goto 61.90,42.22
stickystart "Collect_Congealed_Blood_Of_Sethe"
step
clicknpc Cursed Arakkoa##81584+
|tip They look like friendly bird people on the ground around this area.
Rescue #8# Cursed Arakkoa |q 35000/1 |goto 63.73,40.70
step
label "Collect_Congealed_Blood_Of_Sethe"
kill Spiteful Animate##80637+
collect 15 Congealed Blood of Sethe##112335 |q 34999/1 |goto 63.73,40.40
step
talk Kazu##81514
turnin Hatred Undying##34999 |goto 61.90,42.22
step
talk Talon Guard Kurekk##80758
turnin Banished From the Sky##35000 |goto 62.23,42.67
accept Gaze of the Raven God##35001 |goto 62.23,42.67
accept Sons of Sethe##35002 |goto 62.23,42.67
stickystart "Collect_Wind_Serpent_Wings"
step
use The Eye of Anzu##117396
|tip Use it near Wind Serpent Nests.
|tip They like bird nests with red domes over them on the ground around this area.
Destroy #4# Wind Serpent Nests |q 35001/1 |goto 66.83,45.61
step
label "Collect_Wind_Serpent_Wings"
kill Sethekk Wind Serpent##80643+
collect 6 Wind Serpent Wing##112336 |q 35002/1 |goto 66.72,45.30
step
click Offering Bowl##231184
turnin Sons of Sethe##35002 |goto 66.80,51.38
step
click Place Eye of Anzu##231183
turnin Gaze of the Raven God##35001 |goto 66.60,51.69
step
talk Talon Guard Kurekk##86475
accept The False Talon King##35011 |goto 66.75,51.58
step
talk Anzu##80648
|tip Up on the broken pillar.
accept Servants of a Dead God##35004 |goto 66.82,51.74
accept Ritual Severance##35003 |goto 66.82,51.74
stickystart "Kill_Sethekk_Chosen"
stickystart "Kill_Sethekk_Prophets"
step
Follow the path up |goto 68.65,41.37 < 10 |only if walking
kill Talon King Ikiss##80815
collect Scuffed Bangle##117493 |q 35011/1 |goto 70.04,40.93
step
Stomp Out the Southern Ritual |q 35003/1 |goto 68.97,41.84
|tip Run around on the red symbol on the ground.
step
Stomp Out the Central Ritual |q 35003/2 |goto 67.56,40.55
|tip Run around on the red symbol on the ground.
step
Stomp Out the Northern Ritual |q 35003/3 |goto 67.01,38.25
|tip Run around on the red symbol on the ground.
step
label "Kill_Sethekk_Chosen"
kill 6 Sethekk Chosen##80640 |q 35004/1 |goto 67.84,41.61
step
label "Kill_Sethekk_Prophets"
kill 6 Sethekk Prophet##80638 |q 35004/2 |goto 67.84,41.61
step
talk Anzu##86355
turnin Servants of a Dead God##35004 |goto 64.31,37.08
turnin Ritual Severance##35003 |goto 64.31,37.08
step
talk Talon Guard Kurekk##86475
turnin The False Talon King##35011 |goto 64.10,36.99
accept Lithic's Gift##35013 |goto 64.10,36.99
step
talk Anzu##86355
accept Sethe, the Dead God##35012 |goto 64.31,37.08
step
talk Anzu##85614
Tell him _"I am ready Anzu, we will not fail."_
Watch the dialogue
Kill the enemies that attack in waves
|tip Anzu will begin channeling on Sethe nearby.
|tip Kill the Seething Bloods that attack Anzu.
|tip Arrakoas will run to Sethe, on the left and right of him, and begin channeling on him.
|tip Kill them quickly, so they can't heal him.
kill Sethe##80644 |q 35012/1 |goto 62.53,35.94
step
Travel to Lithic's Rest |q 35013/1 |goto 60.47,38.74
step
talk Memory of Lithic##80834
turnin Lithic's Gift##35013 |goto 60.47,38.74
accept A Sentimental Relic##35245 |goto 60.47,38.74
step
talk Anzu##80648
turnin Sethe, the Dead God##35012 |goto 60.48,39.00
step
Follow the path |goto 58.49,32.72 < 40 |only if walking
accept The Howling Crag##36590 |goto 61.50,25.06
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Slay_Pale_Orcs"
step
click Rylak Egg##236010+
|tip They look like a large gray eggs sitting in birds nests on the ground around this area.
Destroy #5# Rylak Eggs |q 36590/2 |goto 61.76,20.17
You can find more around: |notinsticky
[62.65,22.95]
[64.31,27.01]
[67.09,28.14]
|only if haveq(36590) or completedq(36590)
step
Enter the cave |goto 64.69,23.99 < 15 |walk
kill Insane Nullifier##85902
|tip Inside the cave.
Distrupt the Ritual of the Void |q 36590/4 |goto 63.01,23.22
|only if haveq(36590) or completedq(36590)
step
Enter the cave |goto 64.92,25.64 < 10 |walk
kill Apexis Assault Construct##86035
|tip Inside the cave.
collect 1 Apexis Keystone##116766 |goto 64.24,26.73 |q 36590
|only if haveq(36590) or completedq(36590)
step
kill Apexis Assault Construct##86035
|tip Inside the cave.
collect 2 Apexis Keystone##116766 |goto 63.44,27.51 |q 36590
|only if haveq(36590) or completedq(36590)
step
kill Apexis Assault Construct##86035
|tip Inside the cave.
collect 3 Apexis Keystone##116766 |goto 64.24,26.73 |q 36590
|only if haveq(36590) or completedq(36590)
step
click Apexis Pylon+
|tip They look like large yellow floating crystals around this area.
|tip There are 3 of them.
|tip Inside the cave.
kill Stored Projection##85887 |q 36590/6 |goto 64.05,27.61
|only if haveq(36590) or completedq(36590)
step
Leave the cave |goto 64.92,25.64 < 10 |walk
Enter the cave |goto 66.89,26.46 < 15 |walk
kill Vile Siphonmaster##85898
|tip Inside the cave.
Disrupt the Ritual of Siphoning |q 36590/3 |goto 68.73,26.33
|only if haveq(36590) or completedq(36590)
step
Enter the cave |goto 65.36,27.05 < 15 |walk
kill Crazed Obliterator##85901
|tip Inside the cave.
Disrupt the Ritual of Destruction |q 36590/5 |goto 63.56,26.12
|only if haveq(36590) or completedq(36590)
step
label "Slay_Pale_Orcs"
Kill enemies around this area
|tip They are mostly inside the caves around this area.
Slay #15# Pale Orcs |q 36590/1 |goto 65.55,24.79
You can find more around [66.12,26.90]
|only if haveq(36590) or completedq(36590)
step
talk Reshad##81770
turnin A Sentimental Relic##35245 |goto 46.49,46.67
accept The Missing Piece##35897 |goto 46.49,46.67
step
talk Effigy of Terokk##82813
turnin The Missing Piece##35897 |goto 46.63,46.74
accept Terokk's Fall##35895 |goto 46.63,46.74
step
talk Effigy of Terokk##82813
Choose _"Touch the bangle to witness Terokk's fall."_
Enter the Memory |invehicle |goto 46.63,46.74 |q 35895
step
Find Lithic |q 35895/1 |goto 64.09,40.61
stickystart "Kill_Crazed_Outcasts"
step
Rally #5# Talon Guards |q 35895/2 |goto 65.14,43.39
|tip Use the "Talon King's Command" ability on your action bar.
|tip Use it on Outcast Talon Guards.
|tip They look like friendly bird people on the ground around this area.
step
label "Kill_Crazed_Outcasts"
kill 20 Crazed Outcast##83600 |q 35895/3 |goto 65.14,43.39
|tip Use the abilties on your action bar.
step
click The Eye of Anzu##233382
Use the Eye of Anzu |q 35895/4 |goto 66.93,45.26
step
Watch the dialogue
|tip You will be teleported automatically.
Leave the Memory |outvehicle |q 35895
step
talk Reshad##81770
turnin Terokk's Fall##35895 |goto 46.49,46.67
step
talk Shadow-Sage Iskar##80153
accept A Worthy Vessel##36059 |goto 46.59,46.53
step
talk Effigy of Terokk##82813 |goto 46.63,46.74
Choose _"Call upon Terokk."_
Enter the Spirit Realm |goto 46.46,45.67 < 10 |noway |c |q 36059
step
kill Terokk##83960
Subdue Terokk |q 36059/1 |goto 46.63,46.74
step
talk Shade of Terokk##84122
turnin A Worthy Vessel##36059 |goto 46.63,46.74
accept The Avatar of Terokk##35896 |goto 46.63,46.74
step
talk Shade of Terokk##84122
Choose _"Accept Terokk's power."_
Enter the Memory |invehicle |goto 46.63,46.74 |q 35896
stickystart "Kill_Shattered_Hand_Combatants"
step
kill 4 Bladefist Ravager##84058 |q 35896/2 |goto 30.53,27.62
|tip Use the ability on your action bar.
step
label "Kill_Shattered_Hand_Combatants"
Kill Shattered Hand enemies around this area
|tip Use the ability on your action bar. |notinsticky
Slay #25# Shattered Hand Combatants |q 35896/1 |goto 30.53,27.62
step
Watch the dialogue
kill Kargath Bladefist##84053 |q 35896/3 |goto 30.29,27.03
|tip Use the ability on your action bar. |notinsticky
step
Watch the dialogue
|tip You will be teleported automatically.
Leave the Memory |outvehicle |q 35896
step
talk Reshad##81770
turnin The Avatar of Terokk##35896 |goto 46.49,46.67
|next "Stoktron_Brewery_2"	|only if haveq(37327) or completedq(37327)
|next "Smugglers_Den_2"		|only if haveq(35699) or completedq(35699)
step
label "Stoktron_Brewery_2"
talk Dusk-Seer Irizzar##83463
turnin Befriending the Locals##37327 |goto 43.90,48.91
accept A Lack of Wasps##37296 |goto 43.90,48.91
step
kill 8 Widow Wasp##84865 |q 37296/1 |goto 43.69,48.55
step
talk Dusk-Seer Irizzar##83463
turnin A Lack of Wasps##37296 |goto 43.90,48.91
accept Not Here, Not Now##37329 |goto 43.90,48.91
step
talk Lieutenant Willem##81929
|tip He walks around this area.
turnin Not Here, Not Now##37329 |goto 39.88,60.85
step
talk Hulda Shadowblade##83549
accept Attempted Murder##35915 |goto 39.65,60.85
step
talk Firn Swiftbreeze##83567
Tell him _"Take me to Shadow's Vigil."_
Secure a Flight to Shadow's Vigil |q 35915/1 |goto 39.08,61.81
step
Fly to Shadow's Vigil |offtaxi |goto 52.37,23.40 |q 35915 |notravel
step
talk Hulda Shadowblade##83609
|tip Inside the building.
turnin Attempted Murder##35915 |goto 52.09,23.56
accept Assassin's Mark##35926 |goto 52.09,23.56
step
clicknpc Vigilant Outcast##83633+
|tip They look like dead bird people on the ground around this area.
collect Assassin's Mark##113577 |q 35926/1 |goto 54.42,23.51
step
talk Hulda Shadowblade##83773
turnin Assassin's Mark##35926 |goto 53.57,27.51
accept The Power of Poison##35959 |goto 53.57,27.51
accept Extrinsic Motivation##36023 |goto 53.57,27.51
stickystart "Kill_Shattered_Hand_Harvesters"
stickystart "Kill_Shattered_Hand_Sightless"
step
use the Vial of Wracking Poison##113587
Apply the Persuasive Venom |havebuff spell:167565 |goto 55.18,28.51 |q 35959
step
Kill enemies around this area
|tip You will question them to gain information as you fight them.
|tip One of them will eventually tell you the information you need.
Learn the Name and Location of G.V. |q 35959/1 |goto 55.18,28.51
step
kill Shattered Hand Blood-Singer##83760 |q 36023/3 |goto 54.50,28.43
|tip They are rare around this area.
step
label "Kill_Shattered_Hand_Harvesters"
kill 3 Shattered Hand Harvester##83706 |q 36023/2 |goto 54.91,28.15
step
label "Kill_Shattered_Hand_Sightless"
kill 4 Shattered Hand Sightless##83749 |q 36023/1 |goto 54.91,28.15
step
talk Hulda Shadowblade##83773
turnin The Power of Poison##35959 |goto 53.57,27.51
turnin Extrinsic Motivation##36023 |goto 53.57,27.51
accept Gardul Venomshiv##36029 |goto 53.57,27.51
step
kill Gardul Venomshiv##83834
|tip He will eventually escape.
Defeat Gardul Venomshiv |q 36029/1 |goto 56.25,33.98
step
talk Hulda Shadowblade##83900
turnin Gardul Venomshiv##36029 |goto 57.14,34.49
accept We Have Him Now##36048 |goto 57.14,34.49
stickystart "Collect_Poison_Barrels"
step
Follow the path up |goto 58.38,35.57 < 20 |only if walking
kill Gardul Venomshiv##83923
collect Venomshiv's Secret Formula##113635 |q 36048/1 |goto 58.16,33.33
step
label "Collect_Poison_Barrels"
kill Shattered Hand Brewer##83940+
click Poison Barrel##233599+
|tip They look like wooden barrels with a green ring around them on the ground around this area.
collect 6 Poison Barrel##113630 |q 36048/2 |goto 58.55,35.19
step
talk Hulda Shadowblade##83904
turnin We Have Him Now##36048 |goto 57.14,34.49
accept No Time to Waste##36165 |goto 57.14,34.49
step
talk Kolrigg Stoktron##84261
Choose _"Administer the antidote to Kolrigg."_
Administer the Spiresalve |q 36165/1 |goto 39.67,60.88
step
talk Kolrigg Stoktron##84261
turnin No Time to Waste##36165 |goto 39.67,60.88
step
Watch the dialogue
talk Hulda Shadowblade##88195
|tip It takes a while for her to appear.
accept Standing United##37281 |goto 39.73,60.91
|next "Merge_2"
step
label "Smugglers_Den_2"
talk Dusk-Seer Irizzar##83463
Tell him _"I have brought this as a peace offering. I hope we can become close allies."_
Deliver the Peace Offering |q 35699/1 |goto 43.90,48.92
step
talk Dusk-Seer Irizzar##83463
turnin Peace Offering##35699 |goto 43.90,48.92
accept A Lack of Wasps##37296 |goto 43.90,48.92
step
kill 8 Widow Wasp##84865 |q 37296/1 |goto 43.69,48.55
step
talk Dusk-Seer Irizzar##83463
turnin A Lack of Wasps##37296 |goto 43.90,48.92
accept Not Here, Not Now##37331 |goto 43.90,48.92
step
talk Lieutenant Willem##81929
|tip He walks around this area.
turnin Not Here, Not Now##37331 |goto 39.88,60.85
step
Enter the building |goto 39.62,61.08 < 7 |walk
talk Milly Osworth##82709
|tip Inside the building.
accept The Tinkertoss Twins##35713 |goto 39.51,61.32
step
talk Filbert Tinkertoss##82759
turnin The Tinkertoss Twins##35713 |goto 56.21,42.50
accept Sticky Situation##35716 |goto 56.21,42.50
accept Safety Measures##35878 |goto 56.21,42.50
stickystart "Slay_Surly_Bog_Denizens"
step
click Submerged Battery##233147
Save the Submerged Battery |q 35716/1 |goto 57.02,49.07 |count 1
step
click Submerged Battery##233147
Save the Submerged Battery |q 35716/1 |goto 56.44,48.08 |count 2
step
click Submerged Battery##233147
Save the Submerged Battery |q 35716/1 |goto 56.39,45.11 |count 3
step
click Submerged Battery##233147
Save the Submerged Battery |q 35716/1 |goto 55.09,42.17 |count 4
step
click Submerged Battery##233147
Save the Submerged Battery |q 35716/1 |goto 54.77,39.29 |count 5
step
label "Slay_Surly_Bog_Denizens"
Kill enemies around this area
Slay #15# Bog Denizens |q 35878/1 |goto 55.62,43.26
step
talk Filbert Tinkertoss##82759
turnin Sticky Situation##35716 |goto 56.21,42.50
turnin Safety Measures##35878 |goto 56.21,42.50
accept Back on Track##35719 |goto 56.21,42.50
step
talk Dilbert Tinkertoss##82788
turnin Back on Track##35719 |goto 60.20,53.15
accept All Natural##35739 |goto 60.20,53.15
accept I See Dead Arakkoa##35782 |goto 60.20,53.15
stickystart "Collect_Fresh_Charcoal"
step
use the Ghostogrifier 12000##113438
Watch the dialogue
kill Talonpriest Zekk##82887 |q 35782/1 |goto 60.92,58.17
step
label "Collect_Fresh_Charcoal"
kill Smoldering Ancient##82805+
collect 30 Fresh Charcoal##113404 |q 35739/1 |goto 59.91,55.37
step
talk Dilbert Tinkertoss##82788
turnin All Natural##35739 |goto 60.20,53.15
turnin I See Dead Arakkoa##35782 |goto 60.20,53.15
accept The Ebon Hunter##35835 |goto 60.20,53.15
step
kill The Ebon Hunter##82933
collect Organic Laser Apparatus##113441 |q 35835/1 |goto 65.15,61.33
step
talk Dilbert Tinkertoss##82788
turnin The Ebon Hunter##35835 |goto 60.08,53.65
|next "Merge_2"
step
label "Merge_2"
talk Anzu##80648
accept Cult of the Ravenspeakers##34921 |goto Spires of Arak/0 46.88,46.07
step
click Offering Basket##231118
Place the Offering |q 34921/1 |goto 48.94,48.91
step
Watch the dialogue
talk Iktis of the Flock##80639
|tip He walks to this location.
turnin Cult of the Ravenspeakers##34921 |goto 48.99,48.97
accept To the... Rescue?##34991 |goto 48.99,48.97
step
kill Stonescale##80694
|tip He walks around this area.
collect "Tillik" of the Flock##112331 |n
Rescue "Tillik" |q 34991/1 |goto 48.65,51.40
step
talk Iktis of the Flock##80639
turnin To the... Rescue?##34991 |goto 48.99,48.97
accept The High Ravenspeaker##35010 |goto 48.99,48.97
step
Locate High Ravenspeaker Krikka |q 35010/1 |goto 52.12,49.92
step
talk High Ravenspeaker Krikka##80481
turnin The High Ravenspeaker##35010 |goto 52.12,49.92
accept Rendezvous with the Ritualists##35007 |goto 52.12,49.92
step
talk Ravenspeaker Sekara##80740
turnin Rendezvous with the Ritualists##35007 |goto 54.87,54.24
accept The Bloodmane##34923 |goto 54.87,54.24
accept Words of the Raven Mother##34922 |goto 54.87,54.24
stickystart "Collect_Ravenspeaker_Scroll_Fragments"
stickystart "Kill_Bloodmane_Razorclaws"
step
kill Huntmaster Sorrowfang##83896 |q 34923/2 |goto 56.85,56.95
|tip He walks around this area with a boar.
step
label "Collect_Ravenspeaker_Scroll_Fragments"
click Ravenspeaker Scroll##231065+
|tip They look like large white rolled-up scrolls on the ground around this area.
collect 8 Ravenspeaker Scroll Fragment##112199 |q 34922/1 |goto 55.73,55.47
step
label "Kill_Bloodmane_Razorclaws"
kill 10 Bloodmane Razorclaw##80455 |q 34923/1 |goto 55.73,55.47
step
talk Ravenspeaker Sekara##80740
turnin The Bloodmane##34923 |goto 54.87,54.24
turnin Words of the Raven Mother##34922 |goto 54.87,54.24
accept Ralshiara's Demise##34938 |goto 54.87,54.24
step
talk Vakora of the Flock##80863
accept The Egg Thieves##34924 |goto 54.84,54.14
step
talk High Ravenspeaker Krikka##80860
accept Declawing The Bloodmane##34939 |goto 54.86,54.33
step
Follow the path |goto 51.25,54.05 < 20 |only if walking
talk Mortally Wounded Initiate##86381
accept The Initiate's Revenge##36790 |goto 50.95,55.95
stickystart "Collect_Dread_Raven_Eggs"
stickystart "Slay_Bloodmane_Saberons_36790"
stickystart "Collect_Bloodmane_Earthbinder_Paws"
step
Follow the path |goto 49.31,57.79 < 30 |only if walking
use the Strange Crystal Shard##112681
|tip Use it on Ralshiara as you fight.
|tip This will distract him temporarily.
kill Ralshiara##80502 |q 34938/1 |goto 50.04,59.79
step
label "Collect_Dread_Raven_Eggs"
click Dread Raven Egg##231016+
|tip They look like large dark gray eggs with blue swirls on them on the ground around this area.
|tip They can find more inside the caves around this area.
collect 8 Dread Raven Egg##112135 |q 34924/1 |goto 49.87,59.91
step
label "Slay_Bloodmane_Saberons_36790"
Kill Bloodmane enemies around this area
Slay #18# Bloodmane Saberons |q 36790/1 |goto 50.58,59.86
step
label "Collect_Bloodmane_Earthbinder_Paws"
kill Bloodmane Earthbinder##80448+
collect 6 Bloodmane Earthbinder Paw##112204 |q 34939/1 |goto 50.48,57.72
step
talk High Ravenspeaker Krikka##80481
turnin Ralshiara's Demise##34938 |goto 52.12,49.92
turnin Declawing The Bloodmane##34939 |goto 52.12,49.92
step
talk Vakora of the Flock##80746
turnin The Egg Thieves##34924 |goto 52.09,49.40
turnin The Initiate's Revenge##36790 |goto 52.09,49.40
step
talk High Ravenspeaker Krikka##80481
accept Call of the Raven Mother##35009 |goto 52.12,49.92
step
talk High Ravenspeaker Krikka##80481
Tell him _"I'm ready, High Ravenspeaker."_
Speak to Krikka |q 35009/1 |goto 52.12,49.92
step
Watch the dialogue
|tip Click the items when Ravenspeaker calls them out.
|tip You can reach all of the items from this location.
click Blessed Waters
|tip He will say "splash the flames".
click Sacred Feathers
|tip He will say "throw the sacred feathers".
click Scroll of the Ravens
|tip He will say "inspire us with a reading".
click Aromatic Incense
|tip He will say "Put something fragrant".
Complete the Ritual |q 35009/2 |goto 51.66,50.39
|tip Fill the bar at the bottom of the screen.
step
Watch the dialogue
talk Ka'alu##77857
|tip She flies to this location.
turnin Call of the Raven Mother##35009 |goto 51.18,50.56
step
talk Reshad##84276
accept On Ebon Wings##36085 |goto 51.35,50.28
step
talk Ka'alu##77857
Tell her _"I am ready to fly, Ka'alu."_
Speak to Ka'alu |q 36085/1 |goto 51.18,50.56
step
Fly with Ka'alu to the Windswept Terrace |outvehicle |goto 46.62,54.44 |q 36085 |notravel
stickystart "Kill_Adherent_Skystrikers"
step
kill Windkeeper Koreyx##84001 |q 36085/3 |goto 45.63,53.25
step
label "Kill_Adherent_Skystrikers"
kill 8 Adherent Skystriker##84111 |q 36085/2 |goto 45.64,53.70
step
talk Reshad##84262
turnin On Ebon Wings##36085 |goto 46.51,54.29
accept When All Is Aligned##35704 |goto 46.51,54.29
step
clicknpc Ka'alu##86254
Begin Flying with Ka'alu |invehicle |goto 46.56,54.57 |q 35704
step
_As You Fly:_
Kill Adherent enemies around this area
|tip They are flying in the air and on the platforms around this area.
|tip Use the ability on your action bar.
Slay #80# Adherents |q 35704/1
step
talk Reshad##81770
turnin When All Is Aligned##35704 |goto 46.49,46.66
step
talk Talonpriest Ishaal##83959
accept Talonpriest Ishaal##37141 |goto 46.51,46.81
step
talk Shadow-Sage Iskar##80153
accept News from Nagrand##36601 |goto 46.59,46.53
|next "Leveling Guides\\Draenor (10-60)\\Nagrand (35-60)"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Nagrand (35-60)",{
condition_suggested=function() return level >= 35 and level <= 50 and not completedq(35396) end,
image=ZGV.IMAGESDIR.."NagrandDraenor",
startlevel=35,
endlevel=50,
},[[
step
#include "Garrison_BGrey"
turnin News from Nagrand##36601
accept Taking the Fight to Nagrand##37184
step
#include "Garrison_DLongdrink"
Tell him _"I need a flight to the border of Nagrand."_
Take a Flight to Nagrand |ontaxi |q 37184 |only if haveq(37184) or haveq(37184)
Take a Flight to Nagrand |ontaxi |q 34674 |only if haveq(34674) or haveq(34674)
step
Fly to Nagrand |offtaxi |goto Nagrand D/0 91.04,72.06 |q 37184 |notravel |only if haveq(37184) or haveq(37184)
Fly to Nagrand |offtaxi |goto Nagrand D/0 91.04,72.06 |q 34674 |notravel |only if haveq(34674) or haveq(34674)
step
talk Lieutenant Balfor##79263
turnin Taking the Fight to Nagrand##37184 |goto 86.38,66.20 |or |only if haveq(37184) or completedq(37184)
turnin Taking the Fight to Nagrand##34674 |goto 86.38,66.20 |or |only if haveq(34674) or completedq(34674)
accept The Might of the Warsong##34675 |goto 86.38,66.20
step
talk Biggy Warprofits##83924
fpath The Ring of Trials |goto 79.82,49.72
step
talk John Shelby##82309
fpath Telaari Station |goto 63.64,61.56
step
talk Rangari D'kaan##79576
turnin The Might of the Warsong##34675 |goto 63.52,61.89
accept Up and Running##34678 |goto 63.52,61.89
step
click Prop Rotor##231884
collect Prop Rotor##112957 |q 34678/2 |goto 63.78,61.56
step
Enter the building |goto 63.52,62.24 < 7 |walk
click Transmission Flywheel##231885
|tip Inside the building.
collect Transmission Flywheel##112962 |q 34678/3 |goto 63.68,62.37
step
click Assorted Engineering Parts##231886
collect Assorted Engineering Parts##112963 |q 34678/1 |goto 62.09,62.15
step
talk Thaelin Darkanvil##79674
turnin Up and Running##34678 |goto 63.06,61.95
accept Operation: Surprise Party##34682 |goto 63.06,61.95
step
clicknpc Thaelin's Copter##79676
Use Thaelin's Copter |q 34682/1 |goto 63.01,61.98
step
Begin Flying to Rangari Overlook |invehicle |goto 63.01,61.98 |q 34682
step
Fly to Rangari Overlook |outvehicle |goto 65.42,68.95 |q 34682 |notravel
step
talk Rangari Ogir##79722
turnin Operation: Surprise Party##34682 |goto 65.88,68.63
accept Mo'mor Might Know##34716 |goto 65.88,68.63
accept Operation: Just Arrowhead##34717 |goto 65.88,68.63
stickystart "Slay_Warsong_Forces_At_Telaar"
step
click Rappelling Rope##215689
Rappel Down the Cliff |invehicle |goto 65.89,68.56 |q 34716
step
Rappel to the Ground |outvehicle |goto 65.98,68.38 |q 34716
step
Enter the building |goto 66.75,68.29 < 7 |walk
talk Vindicator Mo'mor##79743
|tip Inside the building.
turnin Mo'mor Might Know##34716 |goto 66.77,68.67
accept The Others##34718 |goto 66.77,68.67
accept ... and My Hammer##34719 |goto 66.77,68.67
step
Enter the building |goto 68.18,66.92 < 7 |walk
talk Caregiver Felaani##79758
|tip Inside the building.
Rescue Caregiver Felaani & Isel |q 34718/2 |goto 68.51,67.04
step
talk Hansel Heavyhands##79762
Rescue Hansel Heavyhands |q 34718/3 |goto 67.63,64.50
step
click Mo'mor's Holy Hammer##230652
collect Mo'mor's Holy Hammer##111577 |q 34719/1 |goto 65.86,62.92
step
Enter the building |goto 65.60,65.48 < 7 |only if walking
talk Arbiter Khan##79761
|tip Outside, on the balcony of the building.
Choose _"Check for a pulse."_
Rescue Arbiter Khan |q 34718/1 |goto 65.28,65.07
step
label "Slay_Warsong_Forces_At_Telaar"
Kill enemies around this area
Slay #15# Warsong Forces at Telaar |q 34717/1 |goto 66.50,66.15
step
Enter the building |goto 66.75,68.28 < 7 |walk
talk Vindicator Mo'mor##79743
|tip Inside the building.
turnin The Others##34718 |goto 66.77,68.67
turnin ... and My Hammer##34719 |goto 66.77,68.67
accept Shields Down!##34746 |goto 66.77,68.67
step
kill Packleader Kargora##79839
collect Garrison Blueprints##111619 |q 34746/2 |goto 66.80,65.68
step
clicknpc Arkonite Crystal##79919
Destroy the Arkonite Crystal |q 34746/1 |goto 66.80,65.53
step
talk Rangari D'kaan##79576
turnin Operation: Just Arrowhead##34717 |goto 63.52,61.89
step
Enter the building |goto 63.52,62.24 < 7 |walk
talk Caregiver Felaani##80006
|tip Inside the building.
home Telaari Station |goto 63.59,62.53
step
talk Thaelin Darkanvil##79674
turnin Shields Down!##34746 |goto 63.06,61.94
accept A Choice to Make##34769 |goto 63.06,61.94
step
clicknpc Drafting Table##81119
|tip Choose the building you want to build.
|tip We recommend choosing the Rangari Corral.
|tip This will give you a mount that you can ride, even while in combat.
Choose Between Corral & Tankworks |q 34769/1 |goto 63.05,61.98
step
talk Rangari D'kaan##79576
turnin A Choice to Make##34769 |goto 63.52,61.89
step
talk Hansel Heavyhands##79954
accept Trouble at the Overwatch##35148 |goto 63.54,61.83
accept The Friend o' My Enemy##34952 |goto 63.54,61.83
step
talk Vindicator Mo'mor##80624
accept They Call Him Lantresor of the Blade##34951 |goto 63.49,61.86
step
talk Kia Herman##82092
accept That Pounding Sound##35337 |goto 63.55,61.41
step
talk Rangari Laara##82094
accept Shooting the Breeze##35338 |goto 63.49,61.40
stickystart "Accept_Someones_Missing_Arrow"
stickystart "Collect_Pairs_Of_Leatherhide_Ears"
step
Kill Breezestrider enemies around this area
|tip They look like talbuks.
collect 24 Breezestrider Horn##113102 |q 35338/1 |goto 67.14,58.66
You can find more around [73.57,44.97]
step
label "Accept_Someones_Missing_Arrow"
Kill Breezestrider enemies around this area |notinsticky
|tip They look like talbuks. |notinsticky
accept Someone's Missing Arrow##35356 |goto 67.14,58.66
|tip You will eventually automatically accept this quest after looting.
You can find more around [73.57,44.97]
step
label "Collect_Pairs_Of_Leatherhide_Ears"
Kill Leatherhide enemies around this area
|tip They look like horned clefthooves.
collect 12 Pair of Leatherhide Ears##113100 |q 35337/1 |goto 74.12,56.54
You can find more around [73.57,44.97]
step
talk Rangari Laara##82094
turnin Shooting the Breeze##35338 |goto 63.49,61.40
turnin Someone's Missing Arrow##35356 |goto 63.49,61.40
accept King of the Breezestriders##35357 |goto 63.49,61.40
step
talk Kia Herman##82092
turnin That Pounding Sound##35337 |goto 63.55,61.41
accept Queen of the Clefthoof##35350 |goto 63.55,61.41
step
kill Tall Buck##82116
collect Tall Buck's Tail##113104 |q 35357/1 |goto 57.86,69.27
step
map Nagrand D
path loose; loop; curved; dist 50
path	62.9,57.3	61.6,53.6	63.4,49.8
path	64.6,45.4	67.7,44.2	71.5,47.1
path	72.4,51.5	69.2,56.4	65.5,57.8
kill Banthar##82119
|tip She looks like a giant dark colored clefthoof that wanders in a path around this area.
|tip Follow the path around the cliffs to find her.
collect Horn of Banthar##113105 |q 35350/1
step
talk Kia Herman##82092
turnin Queen of the Clefthoof##35350 |goto 63.55,61.41
step
talk Rangari Laara##82094
turnin King of the Breezestriders##35357 |goto 63.49,61.40
step
Follow the path up |goto 67.93,58.70 < 30 |only if walking
Continue up the path |goto 71.22,65.49 < 30 |only if walking
talk Rangari Eleena##79282
turnin Trouble at the Overwatch##35148 |goto 78.79,69.23
accept Obtaining Ogre Offensive Orders##34593 |goto 78.79,69.23
accept Obliterating Ogres##34572 |goto 78.79,69.23
stickystart "Slay_Ogres_At_Margok_Overwatch"
step
click Ogre Scrolls##231901
accept Removing the Paper Trail##34597 |goto 81.33,70.35
stickystart "Destroy_Boxes_Of_Ogre_Research"
step
Enter the building |goto 82.89,70.38 < 7 |walk
kill Thulgork##79266
|tip Inside the building.
collect Thulgork's Orders##111065 |q 34593/2 |goto 83.21,70.38
step
Run up the stairs |goto 82.00,72.05 < 15 |only if walking
Enter the building |goto 83.77,72.90 < 7 |walk
kill Crulgorosh##79267
|tip Inside the building.
collect Crulgorosh's Orders##111066 |q 34593/1 |goto 84.14,73.67
step
label "Destroy_Boxes_Of_Ogre_Research"
click Box of Ogre Research##230650+
|tip They look like a wooden boxes with white scrolls in them on the ground around this area.
Destroy #8# Boxes of Ogre Research |q 34597/1 |goto 82.40,73.26
step
label "Slay_Ogres_At_Margok_Overwatch"
Kill Gorian enemies around this area
Slay #15# Ogres at Mar'gok's Overwatch |q 34572/1 |goto 82.36,74.18
step
Run up the stairs |goto 83.40,75.58 < 15 |only if walking
talk Rangari Mirana##81144
turnin Obtaining Ogre Offensive Orders##34593 |goto 84.06,76.84
accept Reglakk's Research##34596 |goto 84.06,76.84
turnin Obliterating Ogres##34572 |goto 84.06,76.84
turnin Removing the Paper Trail##34597 |goto 84.06,76.84
accept Removing the Reinforcements##34877 |goto 84.06,76.84
step
clicknpc Portal to Highmaul##81374
Destroy the Portal to Highmaul |q 34877/1 |goto 82.61,81.08
step
kill Grand Magister Reglakk##79105
|tip He will eventually escape.
Watch the dialogue
kill Bulgorg the Wind Slayer##79927
Stop Reglakk |q 34596/1 |goto 81.52,76.71
step
talk Rangari D'kaan##79576
turnin Reglakk's Research##34596 |goto 63.52,61.89
step
talk Thaelin Darkanvil##79674
turnin Removing the Reinforcements##34877 |goto 63.06,61.95
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to complete some upcoming quests.
|tip Use the Leveling guides to accomplish this.
step
talk Dexyl Deadblade##79188
accept Ring of Trials: Crushmaul##34662 |goto 79.44,50.30
step
talk Digrem Orebar##81955
accept Tastes Like Chicken##34869 |goto 79.23,52.65
step
talk Gabby Goldsnap##80184
accept Gazmolf Futzwangler and the Highmaul Crusade##34810 |goto 79.87,48.85
step
talk Pyxni Pennypocket##79310
accept The Missing Caravan##34598 |goto 78.58,48.57
accept Declawing The Competition##34512 |goto 78.58,48.57
step
talk Marybelle Walsh##84632
accept The Good Doctor##35146 |goto 77.43,47.36
accept Whacking Weeds##36273 |goto 77.43,47.36
step
Follow the path |goto 78.98,49.39 < 15 |only if walking
talk Guzrug the Tiny##79189
|tip You can't be in the Telaari Siege Engine.
Tell him _"I am ready to begin the first Trial of The Ring."_
Speak with Guzrug to Begin the Fight |q 34662/1 |goto 77.62,49.55
step
Watch the dialogue
|tip Save your cooldowns for the end of the fight, when he enrages.
kill Crushmaul##76702 |q 34662/2 |goto 77.70,49.83
step
talk Dexyl Deadblade##79188
turnin Ring of Trials: Crushmaul##34662 |goto 79.44,50.30
accept Ring of Trials: Raketalon##34663 |goto 79.44,50.30
step
talk Guzrug the Tiny##79189
Tell him _"I am ready to begin the second Trial of The Ring."_
Speak with Guzrug to Begin the Fight |q 34663/1 |goto 77.62,49.55
step
Watch the dialogue
kill Raketalon##82670 |q 34663/2 |goto 78.13,50.66
step
talk Dexyl Deadblade##79188
turnin Ring of Trials: Raketalon##34663 |goto 79.44,50.30
accept Ring of Trials: Hol'yelaa##34664 |goto 79.44,50.30
step
talk Guzrug the Tiny##79189
Tell him _"I am ready to begin the third Trial of The Ring."_
Speak with Guzrug to Begin the Fight |q 34664/1 |goto 77.62,49.55
step
Watch the dialogue
kill Hol'yelaa##86146 |q 34664/2 |goto 77.91,50.50
step
talk Dexyl Deadblade##79188
turnin Ring of Trials: Hol'yelaa##34664 |goto 79.44,50.30
accept Ring of Trials: Captain Boomspark##34665 |goto 79.44,50.30
step
talk Guzrug the Tiny##79189
Tell him _"I am ready to begin the fourth Trial of The Ring."_
Speak with Guzrug to Begin the Fight |q 34665/1 |goto 77.62,49.55
step
Watch the dialogue
|tip Run away from the machine right before it dies.
|tip It will immediately explode, dealing huge damage, so be careful.
kill The Burninator##79690 |q 34665/2 |goto 77.94,50.54
step
talk Dexyl Deadblade##79188
turnin Ring of Trials: Captain Boomspark##34665 |goto 79.44,50.30
accept Ring of Trials: Roakk the Zealot##34666 |goto 79.44,50.30
step
talk Guzrug the Tiny##79189
Tell him _"I am ready to begin the fifth Trial of The Ring."_
Speak with Guzrug to Begin the Fight |q 34666/1 |goto 77.62,49.55
step
Watch the dialogue
|tip Turn away from him whenever he casts Blinding Radiance.
kill Roakk the Zealot##79490 |q 34666/2 |goto 77.94,50.54
step
talk Dexyl Deadblade##79188
turnin Ring of Trials: Roakk the Zealot##34666 |goto 79.44,50.30
step
click Bounty Board##230303
accept WANTED: Razorpaw!##34513 |goto 78.97,58.93
step
talk Greezlex Fizzpinch##79312
turnin The Missing Caravan##34598 |goto 78.98,58.87
accept Gobnapped##34515 |goto 78.98,58.87
accept They've Got The Goods!##34514 |goto 78.98,58.87
stickystart "Rescue_Goblin_Traders"
stickystart "Collect_Stolen_Goods"
stickystart "Collect_Saberon_Claws"
step
talk Bazwix##79899
|tip He appears next to you.
accept My Precious!##34516 |goto 76.38,59.43
step
Follow the path up |goto 75.15,61.27 < 10 |only if walking
Enter the cave |goto 75.05,61.99 < 7 |walk
kill Razorpaw##79002 |q 34513/1 |goto 75.14,62.49
|tip Inside the cave.
step
click Bazwix's Treasure##230712
Watch the dialogue
Find Bazwix's Stolen Treasure |q 34516/1 |goto 74.71,61.55
step
talk Bazwix##79897
turnin My Precious!##34516 |goto 74.76,61.56
step
label "Rescue_Goblin_Traders"
click Sabermaw Cage##230115+
|tip They look like wooden cages on the ground around this area.
|tip You can find more inside the caves around this area. |notinsticky
Rescue #6# Goblin Traders |q 34515/1 |goto 74.87,61.60
step
label "Collect_Stolen_Goods"
clicknpc Stolen Goods##87389+
|tip They look like small tan bags on the ground around this area.
|tip You can find more inside the caves around this area. |notinsticky
collect 10 Stolen Goods##110719 |q 34514/1 |goto 74.82,61.54
step
label "Collect_Saberon_Claws"
Kill Sabermaw enemies around this area
|tip You can find more inside the caves around this area. |notinsticky
collect 10 Saberon Claw##110714 |q 34512/1 |goto 75.07,61.01
step
Kill Windroc enemies around this area
|tip They look like birds.
collect 10 Raw Windroc##113085 |q 34869/1 |goto 69.11,60.47
You can find more around [71.91,65.56]
step
talk Digrem Orebar##81955
turnin Tastes Like Chicken##34869 |goto 79.23,52.65
accept Fruitful Ventures##34819 |goto 79.23,52.65
step
talk Pyxni Pennypocket##79310
turnin Declawing The Competition##34512 |goto 78.57,48.57
turnin WANTED: Razorpaw!##34513 |goto 78.57,48.57
turnin They've Got The Goods!##34514 |goto 78.57,48.57
turnin Gobnapped##34515 |goto 78.57,48.57
stickystart "Collect_Nagrand_Cherries"
step
talk Gazmolf Futzwangler##79201
turnin Gazmolf Futzwangler and the Highmaul Crusade##34810 |goto 71.13,52.34
accept A Lesson in Minerology##34809 |goto 71.13,52.34
step
talk Trixi Leroux##82658
accept Good Help is Hard to Find##34811 |goto 71.11,52.42
step
label "Collect_Nagrand_Cherries"
click Nagrand Cherry##232100+
|tip They look like large orange apples on the ground near trees around this area.
collect 15 Nagrand Cherry##113083 |q 34819/1 |goto 69.66,57.17
stickystart "Collect_Earthen_Cores"
step
click Loose Soil##241606+
|tip They look like brown piles of dirt with shovels stuck in them on the ground around this area.
collect 8 Nagrand Antiquity##111891 |q 34811/1 |goto 66.60,53.51
step
label "Collect_Earthen_Cores"
kill Raging Crusher##80144+
collect 4 Earthen Core##111874 |q 34809/1 |goto 66.52,52.86
step
Follow the path up |goto 71.98,50.19 < 20 |only if walking
talk Trixi Leroux##82658
turnin Good Help is Hard to Find##34811 |goto 71.11,52.41
step
click Gold-O-Matic 9000##230882
turnin A Lesson in Minerology##34809 |goto 71.06,52.31
step
talk Gazmolf Futzwangler##79201
accept A Lesson in Teamwork##35663 |goto 71.13,52.34
accept A Lesson in Archaeology##35632 |goto 71.13,52.34
stickystart "Collect_Mysterious_Artifacts"
step
Follow the path |goto 68.67,52.53 < 30 |only if walking
Enter the mine |goto Nagrand D/11 14.01,76.89 < 15 |walk
Follow the path |goto 56.61,70.74 < 10 |walk
use the Teleportation Beacon##113217
|tip Inside the mine.
Place the Beacon |q 35632/1 |goto Nagrand D/11 67.51,42.76
step
Watch the dialogue
|tip Inside the mine.
Recover the Mysterious Artifact |q 35632/2 |goto 69.51,42.47
step
label "Collect_Mysterious_Artifacts"
Kill Highmaul enemies around this area
|tip Inside and outside the mine.
click Ancient Reliquary##233053+
|tip They look like large stone boxes and small stone birds on the ground around this area.
collect 10 Mysterious Artifact##113272 |q 35663/1 |goto 13.63,76.82
step
Leave the cave and follow the path up |goto Nagrand D/0 67.65,52.46 < 50 |only if walking
Follow the path up |goto Nagrand D/0 71.98,50.19 < 20 |only if walking
talk Gazmolf Futzwangler##79201
turnin A Lesson in Teamwork##35663 |goto Nagrand D/0 71.13,52.34
turnin A Lesson in Archaeology##35632 |goto Nagrand D/0 71.13,52.34
step
talk Digrem Orebar##81955
turnin Fruitful Ventures##34819 |goto 79.23,52.65
accept New Babies##34900 |goto 79.23,52.65
step
clicknpc Tenderhoof Meadowstomper##78459
Coax the Tenderhoof Meadowstomper |q 34900/1 |goto 77.86,60.94 |count 1
step
clicknpc Tenderhoof Meadowstomper##78459
Coax the Tenderhoof Meadowstomper |q 34900/1 |goto 77.67,60.44 |count 2
step
clicknpc Tenderhoof Meadowstomper##78459
Coax the Tenderhoof Meadowstomper |q 34900/1 |goto 77.16,58.69 |count 3
step
clicknpc Tenderhoof Meadowstomper##78459
Coax the Tenderhoof Meadowstomper |q 34900/1 |goto 76.40,57.96 |count 4
step
clicknpc Tenderhoof Meadowstomper##78459
Coax the Tenderhoof Meadowstomper |q 34900/1 |goto 74.34,57.57 |count 5
step
talk Digrem Orebar##81955
turnin New Babies##34900 |goto 79.23,52.65
step
accept Hemet's Happy Hunting Grounds##35379 |goto 85.63,47.92
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Loup"
stickystart "Kill_Nagrand_Prowlers"
step
Follow the path up |goto 87.87,48.51 < 15 |only if walking
kill Lupe##82205 |q 35379/2 |goto 87.64,45.48
|tip It looks like a wolf that runs around this area.
|only if haveq(35379) or completedq(35379)
step
label "Kill_Loup"
kill Loup##82209 |q 35379/3 |goto 87.64,45.48
|tip It looks like a wolf that runs around this area. |notinsticky
|only if haveq(35379) or completedq(35379)
step
kill Big Pete##82202 |q 35379/4 |goto 88.70,43.88
|only if haveq(35379) or completedq(35379)
step
label "Kill_Nagrand_Prowlers"
kill 15 Nagrand Prowler##81902 |q 35379/1 |goto 87.22,48.37
|only if haveq(35379) or completedq(35379)
step
Follow the path up |goto 86.86,51.77 < 15 |only if walking
Enter the building |goto 85.53,54.97 < 7 |walk
talk Lantresor of the Blade##80161
|tip Inside the building.
turnin They Call Him Lantresor of the Blade##34951 |goto 85.42,54.59
accept The Blade Itself##34954 |goto 85.42,54.59
accept Not Without My Honor##34955 |goto 85.42,54.59
stickystart "Slay_Burning_Blades_Forces_At_Hallvalor"
step
kill Instructor Luhk##80236
collect Lantresor's Blade##111938 |q 34954/1 |goto 86.01,53.79
step
click Burning Blade Locker##233815+
|tip They look like wooden and metal chests on the ground inside the buildings around this area.
collect Blademaster's Banner##111947 |q 34955/1 |goto 86.70,54.80
step
label "Slay_Burning_Blades_Forces_At_Hallvalor"
Kill enemies around this area
Slay #15# Burning Blade Forces at Hallvalor |q 34952/1 |goto 86.59,56.34
step
Enter the building |goto 85.53,54.97 < 7 |walk
talk Lantresor of the Blade##80161
|tip Inside the building.
turnin The Blade Itself##34954 |goto 85.42,54.59
turnin Not Without My Honor##34955 |goto 85.42,54.59
accept Meet Me in the Cavern##34956 |goto 85.42,54.59
step
Enter the cave |goto 88.09,55.45 < 15 |walk
talk Lantresor of the Blade##80319
|tip Inside the cave.
turnin Meet Me in the Cavern##34956 |goto Nagrand D/10 44.92,19.86
accept Challenge of the Masters##34957 |goto Nagrand D/10 44.92,19.86
step
click Burning Blade Sword##230948
|tip Inside the cave.
Kill the enemies that attack in waves
kill Warlord Dharl of the Thrice-Bloodied Blade##80327
Win the Challenge |q 34957/2 |goto 53.32,68.72
step
talk Rangari D'kaan##79576
turnin Challenge of the Masters##34957 |goto Nagrand D/0 63.52,61.89
accept Along the Riverside##35059 |goto Nagrand D/0 63.52,61.89
accept Nobundo Sends Word##35332 |goto Nagrand D/0 63.52,61.89
step
talk Hansel Heavyhands##79954
turnin The Friend o' My Enemy##34952 |goto 63.54,61.84
step
talk Lantresor of the Blade##81790
accept The Honor of a Blademaster##34747 |goto 64.25,59.55
step
Follow the path |goto 61.23,51.36 < 50 |only if walking
talk Vindicator Yrel##81039
turnin Along the Riverside##35059 |goto 61.96,40.56
accept Terms of Surrender##35060 |goto 61.96,40.56
step
talk Felicia Maline##81250
fpath Yrel's Watch |goto 62.66,40.65
step
Enter the building |goto 55.54,42.81 < 7 |walk
talk Uruk Foecleaver##81086
|tip Inside the building.
turnin Terms of Surrender##35060 |goto 55.50,42.08
accept The Pride of Lok-rath##35061 |goto 55.50,42.08
step
talk Lieutenant K. K. Lee##81097
|tip Inside the building.
accept Silence the War Machines##35067 |goto 55.44,42.08
accept If They Won't Surrender...##35068 |goto 55.44,42.08
stickystart "Slay_Lokrath_Enemy_Forces"
step
clicknpc Iron Horde War Machine##81050
Destroy the War Machine |q 35067/1 |goto 55.97,43.03 |count 1
step
clicknpc Fallen Alliance Soldier##81134
accept Terror of Nagrand##35069 |goto 56.11,43.80
step
Enter the cave |goto 57.04,42.66 < 10 |walk
kill Shagor##80263
|tip He walks around this area.
|tip Inside the cave.
collect Shagor's Collar##112620 |q 35069/1 |goto 58.26,43.40
step
clicknpc Iron Horde War Machine##81050
Destroy the War Machine |q 35067/1 |goto 55.76,46.53 |count 2
step
Enter the building |goto 55.62,47.56 < 7 |walk
kill Uruk Foecleaver##80264 |q 35061/1 |goto 55.63,47.73
|tip Inside the building.
step
clicknpc Iron Horde War Machine##81050
Destroy the War Machine |q 35067/1 |goto 54.54,44.89 |count 3
step
label "Slay_Lokrath_Enemy_Forces"
Kill enemies around this area
Slay #10# Lok-rath Enemy Forces |q 35068/1 |goto 55.42,44.92
step
Follow the road |goto 57.40,46.13 < 20 |only if walking
talk Vindicator Yrel##81039
turnin The Pride of Lok-rath##35061 |goto 61.96,40.56
accept Lok-rath is Secured##35062 |goto 61.96,40.56
accept THAELIN!##35140 |goto 61.96,40.56
step
talk Captain "Victorious" Chong##81123
turnin Silence the War Machines##35067 |goto 62.13,40.42
turnin If They Won't Surrender...##35068 |goto 62.13,40.42
turnin Terror of Nagrand##35069 |goto 62.13,40.42
step
clicknpc Baby Goren##81255+
|tip They look like small creatures on the ground around this area.
Capture #15# Baby Goren |q 35140/1 |goto 62.27,40.45
step
talk Vindicator Yrel##81039
turnin THAELIN!##35140 |goto 61.96,40.56
accept Carrier Has Arrived##35141 |goto 61.96,40.56
step
talk Rangari D'kaan##79576
turnin Lok-rath is Secured##35062 |goto 63.52,61.90
accept And Justice for Thrall##35169 |goto 63.52,61.90
step
talk Thaelin Darkanvil##79674
turnin Carrier Has Arrived##35141 |goto 63.06,61.95
step
Follow the path up |goto 68.00,58.63 < 30 |only if walking
Begin the Scenario |scenariostart |goto 74.56,69.56 |q 35169
step
talk Vindicator Yrel##81404
Tell her _"Yrel, let's blow open those gates and take Grommashar."_
Speak with Vindicator Yrel at the Gates of Grommashar |scenariostage 1 |goto 74.56,69.56 |q 35169
step
talk Rangari D'kaan##81405
Tell him _"I agree. A flanking maneuver will buy you the time you need to move most of our forces closer to Garrosh."_
Speak with Rangari D'kaan inside Grommashar |scenariogoal 2/25156 |goto 74.72,76.36 |q 35169
step
kill Packmaster Grokglok##82131
Defeat Packmaster Grokglok |scenariogoal 3/24795 |goto 71.94,79.19 |q 35169
step
Follow the path up |goto 70.11,81.39 < 20 |only if walking
talk Vindicator Yrel##83407
Tell her _"Like it or not, we need to move ahead. What's the situation?"_
Speak with Vindicator Yrel at the Rally Point Up the Hill |scenariogoal 4/25130 |goto 75.18,77.50 |q 35169
step
kill Durn the Hungerer##82132 |scenariogoal 5/24796 |goto 75.66,81.47 |q 35169
step
talk Vindicator Yrel##83407
|tip She runs to this location.
Tell her _"Give the order, Yrel. Destroy the gates and get us in there."_
Speak with Vindicator Yrel at the Final Gate |scenariogoal 6/25160 |goto 72.87,81.83 |q 35169
step
Watch the dialogue
|tip Follow Vindicator Yrel as she walks.
kill Garrosh Hellscream##82133
Bring Warlord Garrosh Hellscream to Justice |scenariogoal 7/24797 |goto 71.40,84.59 |q 35169
step
Reach the Stones of Prophecy |goto 66.88,33.93 < 10 |noway |c |q 35169
step
talk Vindicator Yrel##81412
turnin And Justice for Thrall##35169 |goto 66.96,33.76
step
talk Joz Navarix##88668
fpath Joz's Rylaks |goto 62.22,32.88
step
talk Gixmo Moneycash##82844
fpath Throne of the Elements |goto 73.70,26.65
step
talk Vindicator Nobundo##82138
turnin Nobundo Sends Word##35332 |goto 71.72,19.65
accept Called to the Throne##35331 |goto 71.72,19.65
step
talk Vindicator Nobundo##82138
Tell him _"I am ready to commune with the furies."_
Speak with Vindicator Nobundo |q 35331/1 |goto 71.72,19.65
step
Watch the dialogue
Commune with the Furies |q 35331/2 |goto 71.72,19.65
step
talk Vindicator Nobundo##82138
turnin Called to the Throne##35331 |goto 71.72,19.65
accept Elemental Attunement##35333 |goto 71.72,19.65
step
talk Kalandrios##80595
accept An Old Friend##34943 |goto 72.78,19.71
step
talk Incineratus##80593
accept Earth, Wind and Fire...and Water##34881 |goto 71.34,17.87
accept Guardians of the Plateau##34893 |goto 71.34,17.87
step
Follow the path up |goto 73.94,16.22 < 15 |only if walking
talk Gar'rok##80434
turnin An Old Friend##34943 |goto 75.07,22.74
accept A Rare Bloom##34894 |goto 75.07,22.74
stickystart "Collect_Living_Earth"
stickystart "Collect_Living_Wind"
step
Follow the path up |goto 76.01,21.06 < 15 |only if walking
Follow the path |goto 79.61,15.25 < 30 |only if walking
click Pillar of Earth##230961
Attune to the Earth |q 35333/1	|goto 79.29,11.68
step
kill Unstable Earth Guardian##80374 |q 34893/1 |goto 81.51,14.44
step
label "Collect_Living_Earth"
kill Unstable Earth Spirit##80382+
collect 4 Living Earth##112084 |q 34881/1 |goto 79.96,15.51
stickystop "Collect_Living_Wind"
stickystart "Collect_Living_Water"
stickystart "Collect_Living_Fire"
step
Follow the path up |goto 78.40,15.43 < 20 |only if walking
Follow the path up |goto 75.24,12.89 < 15 |only if walking
kill Tainted Water Guardian##80377 |q 34893/4 |goto 75.31,14.07
step
click Pillar of Water##230964
Attune to the Water |q 35333/4 |goto 73.83,10.49
step
label "Collect_Living_Water"
kill Tumultous Water Spirit##80379+
click Living Water##230979+
|tip They look like blue orbs of steam shooting water upward in the water around this area.
collect 4 Living Water##112083 |q 34881/4 |goto 74.54,11.30
step
Follow the path down |goto 71.05,8.13 < 20 |only if walking
click Pillar of Flame##230963
Attune to the Flame |q 35333/3 |goto 67.46,9.16
step
kill Volatile Flame Guardian##80376 |q 34893/3 |goto 66.56,8.36
step
label "Collect_Living_Fire"
kill Volatile Fire Spirit##80380+
clicknpc Living Flame##80421+
|tip They look like tiny fire elementals on the ground around this area.
collect 4 Living Flame##112082 |q 34881/3 |goto 67.06,10.66
step
Enter the cave |goto 68.89,10.32 < 10 |walk
kill Magmire##80586
|tip Inside the cave.
accept A Wrong of Earth and Fire##33928 |goto 70.33,9.63
|tip You will automatically accept this quest after looting.
step
click Ember Blossom##231093
|tip Inside the cave.
collect Ember Blossom##112089 |q 34894/1 |goto 70.66,9.98
stickystart "Collect_Living_Wind"
step
Leave the cave and follow the path up |goto 68.35,9.88 < 15 |walk
Follow the path down |goto 76.74,14.21 < 20 |only if walking
Follow the path up |goto 81.38,16.43 < 20 |only if walking
click Pillar of Wind##230962
Attune to the Wind |q 35333/2 |goto 78.30,24.37
step
kill Corrupted Wind Guardian##80375 |q 34893/2 |goto 79.73,25.26
step
label "Collect_Living_Wind"
kill Living Wind##82889+
clicknpc Living Wind##82889+
|tip They look like thin, barely visible, clouds floating on the ground around this area.
collect 4 Living Wind##112085 |q 34881/2 |goto 79.23,23.06
step
Follow the path down |goto 78.30,28.20 < 20 |only if walking
talk Murgok##88500
accept The Dead Do Not Forget...##37318 |goto 79.46,30.29
step
accept Snarlpaw Ledge##37280 |goto 79.83,30.12
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Slay_Snarlpaw_Saberons"
stickystart "Release_Frightened_Spirits"
step
kill Boneseer Cold-Eye##88361 |q 37280/3 |goto 79.83,30.12
|only if haveq(37280) or completedq(37280)
step
click Ancient Snarlpaw Skull##238850+
|tip They look like white animal skulls with large tusks on the ground around this area.
|tip You can find more inside the caves around this area.
collect 10 Ancient Snarlpaw Skull##119184 |q 37318/1 |goto 79.22,27.55
step
label "Slay_Snarlpaw_Saberons"
Kill Snarlpaw enemies around this area
Slay #15# Snarlpaw Saberons |q 37280/2 |goto 79.11,30.96
|only if haveq(37280) or completedq(37280)
step
label "Release_Frightened_Spirits"
talk Frightened Spirit##88811+
|tip They look like ghosts running scared on the ground around this area.
|tip You will have to kill the ghost attacking them to release some of them.
Tell them _"The saberon attack is over. Go now, and rest in peace."_
Release #6# Frightened Spirits |q 37280/1 |goto 78.92,30.10
|only if haveq(37280) or completedq(37280)
step
click Boneseer's Cauldron##237705
turnin The Dead Do Not Forget...##37318 |goto 79.73,30.21
stickystart "Slay_Spiteleaf_Podlings"
step
Follow the path |goto 82.73,32.87 < 30 |only if walking
Enter the cave |goto 84.03,24.36 < 7 |walk
talk Dr. Hadley Ricard##84633
|tip Inside the cave.
Tell him _"Marybelle Walsh sent me to rescue you. Go and I'll protect you!"_
Rescue Dr. Hadley Ricard |q 35146/1 |goto 83.21,22.62
step
label "Slay_Spiteleaf_Podlings"
Kill Spiteleaf enemies around this area
Slay #20# Spiteleaf Podlings |q 36273/1 |goto 84.19,25.47
step
talk Dr. Hadley Ricard##84861
turnin The Good Doctor##35146 |goto 86.66,28.31
accept The Search For Research##36275 |goto 86.66,28.31
accept A Fascinating Fungus##36284 |goto 86.66,28.31
stickystart "Collect_Fungal_Spores"
step
click Expedition Supplies##234176
collect Expedition Supplies##115275 |q 36275/2 |goto 86.01,20.50
step
click Research Journal##234178
collect Research Journal##115272 |q 36275/1 |goto 88.87,19.79
step
click Anti-fungal Boots##234169
collect Anti-Fungal Boots##115274 |q 36275/3 |goto 91.78,21.75
step
label "Collect_Fungal_Spores"
kill Spore Giant##84706+
click Spore Sac##234101+
|tip They look like green bulbs with yellow glowing holes in them growing out of the ground and underwater around this area.
collect 12 Fungal Spores##115276 |q 36284/1 |goto 87.66,20.01
step
talk Dr. Hadley Ricard##84861
turnin The Search For Research##36275 |goto 86.66,28.31
turnin A Fascinating Fungus##36284 |goto 86.66,28.31
accept Dirgemire##36285 |goto 86.66,28.31
step
Enter the underwater cave |goto 86.29,16.32 < 30 |walk
kill Dirgemire##84649
|tip He walks around this area.
|tip Inside the underwater cave.
collect Fungal Brain##115277 |q 36285/1 |goto 84.38,17.14
step
talk Dr. Hadley Ricard##84861
turnin Dirgemire##36285 |goto 86.66,28.31
step
talk Vindicator Nobundo##82138
turnin Elemental Attunement##35333 |goto 71.72,19.65
step
talk Incineratus##80593
turnin A Wrong of Earth and Fire##33928 |goto 71.34,17.87
turnin Earth, Wind and Fire...and Water##34881 |goto 71.34,17.87
turnin Guardians of the Plateau##34893 |goto 71.34,17.87
step
Follow the path up |goto 74.05,16.11 < 15 |only if walking
talk Gar'rok##80434
turnin A Rare Bloom##34894 |goto 75.07,22.74
accept Guise of the Deceiver##34932 |goto 75.07,22.74
step
Follow the path up |goto 75.98,21.10 < 15 |only if walking
Enter the cave |goto 77.60,23.20 < 7 |walk
talk Challe##80483
|tip Inside the cave.
Tell her _"I wish to know the truth about Dahaka. What do you know of her death?"_
|tip She will attack you.
Speak with Challe |q 34932/1 |goto 77.96,23.32
step
Watch the dialogue
|tip Inside the cave.
kill Challe##80483
Defeat Challe |q 34932/2 |goto 77.96,23.32
step
talk Gar'rok##80434
turnin Guise of the Deceiver##34932 |goto 75.07,22.74
accept The Debt We Share##34941 |goto 75.07,22.74
step
talk Gar'rok##80434
Tell him _"I stand with you, Gar'rok. Rest with honor."_
Witness the Passing of Gar'rok |q 34941/1 |goto 75.07,22.74
step
talk Kalandrios##80595
turnin The Debt We Share##34941 |goto 72.79,19.71
step
talk Vindicator Nobundo##82138
accept The Ritual of Binding##35330 |goto 71.72,19.65
step
talk Kalandrios##80595
Tell him _"I am ready to begin the Ritual of Binding."_
Speak with Kalandrios |q 35330/1 |goto 72.79,19.71
step
talk Vindicator Nobundo##82138
turnin The Ritual of Binding##35330 |goto 71.72,19.65
accept The Call of Oshu'gun##35372 |goto 71.72,19.65
step
talk Gixmo Moneycash##82844
Tell him _"Fly me to the Spirit Woods near Oshu'gun."_
Speak with Gixmo Moneycash |q 35372/1 |goto 73.70,26.65
step
Take a Flight to the Spirit Woods |invehicle |goto 73.70,26.65 |q 35372
step
Fly to the Spirit Woods |outvehicle |goto 55.61,55.86 |q 35372 |notravel
step
Meet Nobundo in the Spirit Woods |q 35372/2 |goto 55.61,55.86
step
talk Vindicator Nobundo##82179
turnin The Call of Oshu'gun##35372 |goto 55.51,55.92
accept Spiritual Matters##35393 |goto 55.51,55.92
accept The Pale Threat##35397 |goto 55.51,55.92
accept Dark Binding##35398 |goto 55.51,55.92
step
click Shamanstone##233263
accept Silence the Call##35084 |goto 55.45,55.91
accept Disrupt the Rituals##35083 |goto 55.45,55.91
stickystart "Slay_Pale_Orcs"
step
Follow the path |goto 56.64,57.90 < 15 |only if walking
Kill enemies around this area
|tip Pale Skulkers will not count for the quest goal.
|tip Pale Skulkers are stealthed, so be careful.
Liberate #8# Elemental Spirits |q 35398/1 |goto 57.72,62.03
step
label "Slay_Pale_Orcs"
Kill Pale enemies around this area
|tip Pale Skulkers are stealthed, so be careful. |notinsticky
Slay #6# Pale Orcs |q 35397/2 |goto 57.72,62.03
step
Enter the cave |goto Nagrand D/12 92.76,34.14 < 15 |walk
kill Greyseer##81309 |q 35397/1 |goto Nagrand D/12 66.24,17.79
|tip Inside the cave.
step
talk Vindicator Nobundo##82181
|tip Inside the cave.
turnin The Pale Threat##35397 |goto 46.07,32.71
turnin Dark Binding##35398 |goto 46.07,32.71
accept The Fate of Gordawg##35395 |goto 46.07,32.71
accept The Dark Heart of Oshu'gun##35396 |goto 46.07,32.71
step
kill Gordawg##80592
|tip Inside the cave.
collect Heart of the Fury##113077 |q 35395/1 |goto 41.12,40.47
step
Follow the path up |goto 32.11,58.00 < 10 |walk
Enter the Sanctum of the Naaru |q 35396/1 |goto 19.81,62.71
step
Watch the dialogue
kill Decimatus##81989 |q 35396/2 |goto 15.22,67.77
stickystart "Slay_Warsong_Shamans"
step
Run up the ramp |goto 22.64,65.84 < 7 |walk
Follow the path up |goto Nagrand D/0 47.26,64.48 < 7 |walk
Leave the cave |goto Nagrand D/0 47.05,61.98 < 7 |walk
click Warsong Attack Plans##232024
|tip It looks like a brown rolled-up scroll sitting on top of a barrel.
accept The Warsong Threat##35386 |goto Nagrand D/0 51.87,62.10
step
clicknpc Ritual Totem##81705
Destroy the Gra'ah Totem |q 35083/2 |goto 52.18,62.96 |count 1
step
clicknpc Ritual Totem##81705
Destroy the Gra'ah Totem |q 35083/2 |goto 52.40,63.94 |count 2
step
Enter the building |goto 54.58,67.25 < 7 |walk
kill Ritualist Kuhlrath##81142 |q 35084/1 |goto 54.69,67.10
|tip Inside the building.
step
click Nagrand Scouting Report##232025
|tip Inside the building.
collect Nagrand Scouting Report##113552 |q 35386/4 |goto 54.57,67.07
step
Enter the building |goto 51.93,67.98 < 7 |walk
click Warsong Outrider Orders##233349
|tip Inside the building.
collect Warsong Outrider Orders##113551 |q 35386/3 |goto 51.86,67.75
step
clicknpc Ritual Totem##81705
Destroy the Kag'ah Totem |q 35083/3 |goto 50.47,70.01 |count 1
step
clicknpc Ritual Totem##81705
Destroy the Kag'ah Totem |q 35083/3 |goto 50.38,71.05 |count 2
step
Enter the building |goto 52.27,55.77 < 7 |walk
click Warsong Command Brief##233350
|tip Inside the building.
collect Warsong Command Brief##113550 |q 35386/1 |goto 52.51,55.80
step
clicknpc Ritual Totem##81705
Destroy the Mok'gor Totem |q 35083/1 |goto 48.45,58.72 |count 1
step
clicknpc Ritual Totem##81705
Destroy the Mok'gor Totem |q 35083/1 |goto 47.78,58.73 |count 2
step
Enter the building |goto 47.14,56.26 < 7 |walk
click Mixed Unit Tactics##233351
|tip Inside the building.
collect Mixed Unit Tactics##113549 |q 35386/2 |goto 47.08,56.02
step
click Shamanstone##233263
turnin Disrupt the Rituals##35083 |goto 46.80,57.50
step
label "Slay_Warsong_Shamans"
Kill Warsong enemies around this area
|tip Warsong Outriders will not count for the quest goal.
Slay #10# Warsong Shamans |q 35084/2 |goto 51.77,58.79
step
click Shamanstone##233263
turnin Silence the Call##35084 |goto 51.77,58.79
accept Through the Nether##35085 |goto 51.77,58.79
step
click Nether Beacon##232147
Travel Into the Twisting Nether |q 35085/1 |goto 52.09,63.50
step
click Shamanstone##233263
turnin Through the Nether##35085 |goto 51.77,58.79
accept The Nether Approaches##35087 |goto 51.77,58.79
accept The Void March##35086 |goto 51.77,58.79
stickystart "Kill_Void_Terrors"
stickystart "Kill_Void_Tendrils"
step
click Void Portal##231892+
|tip They look like blue swirling portals on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Collapse #6# Void Portals |q 35087/1 |goto 49.58,58.86
You can find more around [51.64,68.31]
step
label "Kill_Void_Terrors"
kill 10 Void Terror##81216 |q 35086/1 |goto 51.72,62.39
step
label "Kill_Void_Tendrils"
kill 15 Void Tendril##81230 |q 35086/2 |goto 51.72,62.39
step
click Shamanstone##233263
turnin The Nether Approaches##35087 |goto 51.77,58.79
turnin The Void March##35086 |goto 51.77,58.79
accept The Shadow of the Void##35088 |goto 51.77,58.79
step
click Void Crystal##232396
kill Invalidus##81215 |q 35088/1 |goto 48.10,58.57
step
click Shamanstone##233263
turnin The Shadow of the Void##35088 |goto 46.81,57.52
step
talk Gar'rok##80864
turnin Spiritual Matters##35393 |goto 40.43,56.79
accept Lighting The Darkness##35022 |goto 40.43,56.79
step
talk Dahaka##80866
accept Echoes of the Past##35023 |goto 40.40,56.74
stickystart "Kill_Tormented_Echoes"
step
click Ceremonial Pyre##231210
Light the Ceremonial Pyre |q 35022/1 |goto 39.31,57.28 |count 1
step
click Ceremonial Pyre##231210
Light the Ceremonial Pyre |q 35022/1 |goto 38.30,57.26 |count 2
step
click Ceremonial Pyre##231210
Light the Ceremonial Pyre |q 35022/1 |goto 38.64,56.07 |count 3
step
click Ceremonial Pyre##231210
Light the Ceremonial Pyre |q 35022/1 |goto 38.69,54.61 |count 4
step
click Ceremonial Pyre##231210
Light the Ceremonial Pyre |q 35022/1 |goto 39.48,53.16 |count 5
step
click Ceremonial Pyre##231210
Light the Ceremonial Pyre |q 35022/1 |goto 37.48,53.07 |count 6
step
label "Kill_Tormented_Echoes"
kill 8 Tormented Echo##80749 |q 35023/1 |goto 38.59,54.65
step
talk Dahaka##80866
turnin Echoes of the Past##35023 |goto 40.40,56.74
step
talk Gar'rok##80864
turnin Lighting The Darkness##35022 |goto 40.43,56.79
accept Golmash Hellscream##35024 |goto 40.43,56.79
step
kill Golmash Hellscream##80747 |q 35024/1 |goto 37.21,55.66
step
talk Gar'rok##80864
turnin Golmash Hellscream##35024 |goto 40.43,56.79
step
accept Ironfist Harbor##34723 |goto 44.06,74.83
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Slay_Orc_Soldiers"
step
Enter the building |goto 38.08,71.16 < 15 |only if walking
kill General Kull'krosh##79588 |q 34723/4 |goto 37.72,71.82
|tip Upstairs, on the roof of the building.
|only if haveq(34723) or completedq(34723)
step
kill Rezlorg##79651 |q 34723/3 |goto 38.24,73.67
|tip He walks around this area.
|only if haveq(34723) or completedq(34723)
step
click Iron Supply Crate##230653+
|tip They look like wooden and metal boxes on the ground around this area.
Destroy #12# Dock Suppy Crates |q 34723/2 |goto 37.64,77.52
|only if haveq(34723) or completedq(34723)
step
label "Slay_Orc_Soldiers"
Kill enemies around this area
Slay #30# Orc Soldiers |q 34723/1 |goto 40.31,73.87
|only if haveq(34723) or completedq(34723)
step
Follow the path up |goto 46.35,75.83 < 15 |c
|only if completedq(34723)
step
talk Nivek Lee##88653
fpath Nivek's Overlook |goto 49.38,75.92
step
talk Captain Washburn##82252
turnin The Warsong Threat##35386 |goto 62.12,62.11
step
talk Marybelle Walsh##84632
turnin Whacking Weeds##36273 |goto 77.43,47.36
step
talk Kalandrios##80595
turnin The Fate of Gordawg##35395 |goto 72.79,19.71
step
talk Vindicator Nobundo##82214
turnin The Dark Heart of Oshu'gun##35396 |goto 71.54,19.76
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Tanaan Jungle (40-60)",{
description="\nThis guide will walk you through completing the main questline for the level 40 Tanaan Jungle zone.",
condition_suggested=function() return level == 40 and not completedq(38578) end,
},[[
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip Use the Garrison Leveling guide to accomplish this.
step
Enter Your Garrison:
accept Garrison Campaign: War Council##38253 |goto Lunarfall/0 32.0,31.9
|tip You will automatically accept this quest.
step
talk King Varian Wrynn##92219
turnin Garrison Campaign: War Council##38253 |goto Lunarfall/0 32.0,31.9
accept We Need a Shipwright##38257 |goto Lunarfall/0 32.0,31.9
step
talk Dungar Longdrink##81103 |goto Lunarfall/0 48.0,49.8
Tell him _"I am needed urgently at the Iron Docks."_
Travel to the Iron Docks |goto Gorgrond/0 52.9,9.6 < 100 |noway |c |q 38257
accept Clearing the Docks##37921
|tip You will accept this quest automatically when you arrive at the Iron Docks.
step
talk Exarch Naielle##90180
turnin We Need a Shipwright##38257 |goto Gorgrond/0 52.6,9.8
accept Derailment##38254 |goto Gorgrond/0 52.6,9.8
stickystart "clearing_the_docks"
step
_Run across this bridge |goto Gorgrond/0 51.7,13.2 < 30 |only if walking
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground next to a wall.
collect Detonator##122516 |q 38254/2 |goto Gorgrond/0 51.4,14.3
step
Run across this bridge |goto Gorgrond/0 50.1,14.3 < 30 |only if walking
click Explosive Charges##240517
|tip It looks like a big basket full of metal bombs, on the ground next to a small wall.
collect Explosive Charges##122515 |q 38254/1 |goto Gorgrond/0 49.8,12.7
step
label "clearing_the_docks"
kill Iron Grunt##91599+, Iron Rearguard##89952+, Ogron Lifter##89951+
|tip Kill any mobs you see.
clicknpc Iron Siege Ram##93174+
|tip Destroy siege weapons.
clicknpc Iron Horde Transport##93147+
|tip Sink transports. They are boats floating next to walls in the water.
kill Felsworn Prophet##91596+
Disrupt the Iron Horde Evacuation |q 37921/1 |goto Gorgrond/0 52.3,11.0
|tip You will see a progress bar in your quest tracking area.
step
Follow the path |goto Gorgrond/0 52.9,17.8 < 30 |only if walking
talk Exarch Yrel##90177
turnin Derailment##38254 |goto Gorgrond/0 56.8,17.2
accept The Train Gang##38255 |goto Gorgrond/0 56.8,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the First Explosive |q 38255/1 |goto Gorgrond/0 56.9,16.9
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Second Explosive |q 38255/2 |goto Gorgrond/0 56.9,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Third Explosive |q 38255/3 |goto Gorgrond/0 56.9,17.4
step
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground.
Blow Open the Train |q 38255/4 |goto Gorgrond/0 56.8,17.2
Watch the dialogue
Recruit Solog Roark |q 38255/5 |goto Gorgrond/0 56.8,17.2
step
talk Solog Roark##91242
turnin The Train Gang##38255 |goto Gorgrond/0 56.8,17.2
accept Hook, Line, and... Sink Him!##38256 |goto Gorgrond/0 56.8,17.2
step
Follow the path |goto Gorgrond/0 52.9,17.8 < 30 |only if walking
click Blackrock Grapple##241130
|tip It looks like a metal cannon pointing upward.
Grapple to Knar's Bunker |q 38256/1 |goto Gorgrond/0 50.7,16.1
step
Enter the building |goto Gorgrond/0 50.6,17.0 < 20 |walk
kill Admiral Knar##92191
collect Roark's Shipyard Blueprints##123867 |q 38256/2 |goto Gorgrond/0 50.6,17.6
step
talk Solog Roark##91242
turnin Hook, Line, and... Sink Him!##38256 |goto Gorgrond/0 50.6,16.7
accept Nothing Remains##38258 |goto Gorgrond/0 50.6,16.7
step
talk King Varian Wrynn##92219
turnin Nothing Remains##38258 |goto Lunarfall/0 32.0,31.9
accept All Hands on Deck##38259 |goto Lunarfall/0 32.0,31.9
step
Go through the doorway |goto Lunarfall/0 26.8,48.9 < 20 |only if walking
talk Solog Roark##91242
turnin All Hands on Deck##38259 |goto Shadowmoon Valley D/0 27.5,11.3
step
talk Merreck Vonder##93822
accept Let's Get To Work##39082 |goto Shadowmoon Valley D/0 28.2,10.6
step
talk Solog Roark##94429
turnin Let's Get To Work##39082 |goto Shadowmoon Valley D/0 29.8,10.6
accept Shipbuilding##39054 |goto Shadowmoon Valley D/0 29.8,10.6
step
use Ship Blueprint: Transport##127268
Learn the Ship Blueprint: Transport |q 39054/1
step
talk Solog Roark##94429
turnin Shipbuilding##39054 |goto Shadowmoon Valley D/0 29.8,10.6
accept Strange Tools##39276 |goto Shadowmoon Valley D/0 29.8,10.6
step
talk Yanas Seastrike##95002
turnin Strange Tools##39276 |goto Shadowmoon Valley D/0 29.8,10.7
accept Ship Shape##39055 |goto Shadowmoon Valley D/0 29.8,10.7
step
talk Yanas Seastrike##95002
Tell him _"Start construction on our first transport."_
Click _Start Work Order_ in the window
Start Construction on a Transport Ship |q 39055/1 |goto Shadowmoon Valley D/0 29.8,10.7
step
click Transport Ship##243699
|tip It looks like a huge wooden ship sitting on the beach.
Interact with the Transport Once Construction is Complete |q 39055/2 |goto Shadowmoon Valley D/0 30.0,10.7
|tip It takes 1 minute to build after you begin the work order.
step
talk Yanas Seastrike##95002
turnin Ship Shape##39055 |goto Shadowmoon Valley D/0 29.8,10.7
accept The Invasion of Tanaan##38435 |goto Shadowmoon Valley D/0 29.8,10.7
step
Meet with Khadgar |q 38435/1 |goto Shadowmoon Valley D/0 27.6,10.3
step
talk Exarch Yrel##90177
Tell her _"Let us begin the invasion."_
Speak with Yrel |q 38435/2 |goto Shadowmoon Valley D/0 27.6,10.2
step
talk Exarch Yrel##91913
turnin The Invasion of Tanaan##38435 |goto Tanaan Jungle/0 73.4,71.1
accept Obstacle Course##38436 |goto Tanaan Jungle/0 73.4,71.1
step
Follow the road |goto Tanaan Jungle/0 72.3,64.8 < 30 |only if walking
Enter the building |goto Tanaan Jungle/0 69.3,64.2 < 20 |walk
click Letter from Kilrogg##240888
|tip It looks like a tan rolled up scroll laying on the floor inside this building.
Find Information on the Bleeding Hollow |q 38436/1 |goto Tanaan Jungle/0 68.9,64.9
step
Follow the dirt path |goto Tanaan Jungle/0 71.3,57.6 < 30 |only if walking
Enter the building |goto Tanaan Jungle/0 73.5,56.6 < 20 |walk
click Magril's Journal##240889
|tip It looks like a big purple book laying on a bed inside this building.
Find Information on the Cultists |q 38436/2 |goto Tanaan Jungle/0 74.0,56.1
step
Follow the road |goto Tanaan Jungle/0 71.1,57.5 < 40 |only if walking
talk Exarch Naielle##91923
turnin Obstacle Course##38436 |goto Tanaan Jungle/0 69.5,53.0
accept In, Through, and Beyond!##38444 |goto Tanaan Jungle/0 69.5,53.0
step
Follow the path up |goto Tanaan Jungle/0 63.6,52.7 < 20 |only if walking
Reach the Fel Defense Cannon |q 38444/1 |goto Tanaan Jungle/0 63.6,52.1
step
click Ammunition Pile##240914
|tip It looks like a pile of huge metal spiked bombs.
Destroy the Fel Defense Cannon |q 38444/2 |goto Tanaan Jungle/0 64.3,51.6
step
Meet Up with Exarch Naielle |q 38444/3 |goto Tanaan Jungle/0 62.5,54.2
step
talk Exarch Naielle##91923
turnin In, Through, and Beyond!##38444 |goto Tanaan Jungle/0 62.5,54.2
accept The Assault Base##38445 |goto Tanaan Jungle/0 62.5,54.2
step
Follow the dirt path up |goto Tanaan Jungle/0 58.0,53.3 < 30 |only if walking
Continue following the path up |goto Tanaan Jungle/0 57.1,55.9 < 20 |only if walking
Follow Naielle |q 38445/1 |goto Tanaan Jungle/0 57.6,59.2
step
clicknpc Alliance Banner##120954
|tip It looks like a yellow hanging flag with the Alliance lion logo on it.
Plant the Flag to Build the Base |q 38445/2 |goto Tanaan Jungle/0 57.5,59.2
step
talk Skyguard Thann##90960
fpath Lion's Watch |goto Tanaan Jungle/0 57.6,58.8
step
talk Angar Steelbellow##90963
accept Bring the Reinforcements##39313 |goto Tanaan Jungle/0 58.1,58.7
step
talk Angar Steelbellow##90963
Tell him _"Call to Arms."_
|tip This will give you one of the zone abilities you earned while questing in Draenor. You can change the ability you choose at any time after this quest by talking to him again.
Choose Your Reinforcements |q 39313/1 |goto Tanaan Jungle/0 58.1,58.7
step
talk Angar Steelbellow##90963
turnin Bring the Reinforcements##39313 |goto Tanaan Jungle/0 58.1,58.7
step
talk Dawn-Seeker Krisek##95424
accept Unknowable Power##39432 |goto Tanaan Jungle/0 58.0,59.3
step
Enter the building |goto Tanaan Jungle/0 58.2,60.0 < 20 |walk
talk Exarch Yrel##90309
turnin The Assault Base##38445 |goto Tanaan Jungle/0 58.5,60.3
accept The Battle for the West##38581 |goto Tanaan Jungle/0 58.5,60.3
accept Shipyard Report##39422 |goto Tanaan Jungle/0 58.5,60.3 |condition completedq(39056)
step
talk Shima Islebreeze##90971
home The Lion's Den |goto Tanaan Jungle/0 58.6,60.3
step
talk Skyguard Thann##90960
Talk to Thann to Fly to the Iron Front |q 38581/1 |goto Tanaan Jungle/0 57.5,58.8
Tell him _"Take me to the Iron Front."_
Fly to the Iron Front |goto Tanaan Jungle/0 10.0,53.2 < 100 |noway |c |q 38581
step
talk Skyguard Blann##91940
fpath The Iron Front |goto Tanaan Jungle/0 10.0,53.1
step
talk Exarch Maladaar##91935
Speak with Maladaar |q 38581/2 |goto Tanaan Jungle/0 9.8,53.6
step
talk Exarch Maladaar##91935
turnin The Battle for the West##38581 |goto Tanaan Jungle/0 9.8,53.6
accept Commander in the Field!##38446 |goto Tanaan Jungle/0 9.8,53.6
step
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Footsoldier##90443+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags make of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q 38866/1 |goto Tanaan Jungle/0 11.4,56.1
|tip You will see a progress bar in your quest tracking area.
step
Follow the road |goto Tanaan Jungle/0 18.5,59.0 < 30 |only if walking
Run on the dirt path |goto Tanaan Jungle/0 28.1,59.1 < 30 |only if walking
talk Rangari Sha'ana##92809
fpath Sha'naari Refuge |goto Tanaan Jungle/0 29.5,63.1
step
talk Altauur##91942
Speak with the Scout in Southwest Tanaan Jungle |q 38446/1 |goto Tanaan Jungle/0 29.6,63.0
step
Follow the road |goto Tanaan Jungle/0 28.1,59.0 < 30 |only if walking
Follow the dirt path |goto Tanaan Jungle/0 29.8,50.4 < 30 |only if walking
Run up the path |goto Tanaan Jungle/0 27.6,47.0 < 20 |only if walking
Continue up the path |goto Tanaan Jungle/0 27.8,44.3 < 20 |only if walking
Keep following the path and head left |goto Tanaan Jungle/0 30.5,42.7 < 20 |only if walking
Run up the dirt path |goto Tanaan Jungle/0 29.0,40.3 < 20 |only if walking
talk Skytalon Kariz##90560
fpath Aktar's Post |goto Tanaan Jungle/0 26.1,38.9
step
talk Rangari Laara##91945
Speak with the Scout in Northwest Tanaan Jungle |q 38446/2 |goto Tanaan Jungle/0 26.0,38.8
step
talk Sun-Sage Chakkis##94686
accept Mastery Of Taladite##39176 |goto Tanaan Jungle/0 25.9,39.9
only if skill("Jewelcrafting") >= 1
step
Follow the path |goto Tanaan Jungle/0 24.2,39.7 < 30 |only if walking
Run down the dirt path |goto Tanaan Jungle/0 21.9,40.6 < 20 |only if walking
Swim in the water here |goto Tanaan Jungle/0 19.6,40.9 < 30 |only if walking
Get out of the water here |goto Tanaan Jungle/0 18.0,44.6 < 20 |only if walking
talk Apexis Gemcutter##94605
turnin Mastery Of Taladite##39176 |goto Tanaan Jungle/0 17.5,45.2
accept Ruined Construct##39177 |goto Tanaan Jungle/0 17.5,45.2
only if skill("Jewelcrafting") >= 1
step
talk Apexis Gemcutter##94605
Choose _<Insert 1000 Apexis Crystals.>_
Repair the Apexis Gemcutter Construct |q 39177/1 |goto Tanaan Jungle/0 17.5,45.2
|tip You need 1,000 Apexis Crystals to do this, but you should have at least that many by now.
only if skill("Jewelcrafting") >= 1
step
Swim in the water here |goto Tanaan Jungle/0 18.0,44.6 < 20 |only if walking
Get out of the water here |goto Tanaan Jungle/0 19.6,40.9 < 20 |only if walking
Run up the dirt path |goto Tanaan Jungle/0 20.3,41.5 < 20 |only if walking
Follow the path |goto Tanaan Jungle/0 24.3,39.8 < 30 |only if walking
talk Sun-Sage Chakkis##94686
turnin Ruined Construct##39177 |goto Tanaan Jungle/0 25.9,39.9
only if skill("Jewelcrafting") >= 1
step
Follow the road |goto Tanaan Jungle/0 30.9,62.3 < 30 |only if walking
Continue following the path |goto Tanaan Jungle/0 35.4,67.3 < 30 |only if walking
Keep following the road |goto Tanaan Jungle/0 42.1,71.5 < 30 |only if walking
Run up the path |goto Tanaan Jungle/0 46.0,70.4 < 30 |only if walking
talk Urtol Skyshear##90562
fpath Vault of the Earth |goto Tanaan Jungle/0 47.0,70.3
step
Follow the path |goto Tanaan Jungle/0 47.8,66.6 < 30 |only if walking
Run along the dirt path |goto Tanaan Jungle/0 54.4,69.2 < 30 |only if walking
kill Broodlord Ixkor##92429
|tip It may take a few minutes to respawn if someone else killed it recently.
collect Fel-Corrupted Apexis Fragment##128346 |q 39432/1 |goto Tanaan Jungle/0 57.8,67.3
step
Follow the path |goto Tanaan Jungle/0 56.2,66.5 < 30 |only if walking
Run up the dirt path |goto Tanaan Jungle/0 55.0,63.6 < 30 |only if walking
Continue up the path |goto Tanaan Jungle/0 55.9,60.4 < 30 |only if walking
talk Dawn-Seeker Krisek##95424
turnin Unknowable Power##39432 |goto Tanaan Jungle/0 58.0,59.4
step
Run on the wide stone road |goto Tanaan Jungle/0 55.6,52.7 < 30 |only if walking
Follow the dirt road |goto Tanaan Jungle/0 48.1,51.0 < 40 |only if walking
Continue following the dirt road |goto Tanaan Jungle/0 43.7,47.5 < 30 |only if walking
Run up the path |goto Tanaan Jungle/0 42.8,41.3 < 20 |only if walking
talk Goi'orsh##90584
accept A Message of Terrible Import##38578 |goto Tanaan Jungle/0 44.2,41.5
step
talk Rocketmaster Malo##92808
fpath Malo's Lookout |goto Tanaan Jungle/0 43.4,42.2
step
talk Amber Kearnen##91968
Speak with the Scout in Northeast Tanaan Jungle |q 38446/3 |goto Tanaan Jungle/0 43.3,42.1
step
Enter the building |goto Tanaan Jungle/0 58.1,60.0 < 20 |walk
talk Exarch Yrel##90309
turnin Commander in the Field!##38446 |goto Tanaan Jungle/0 58.5,60.4
step
Go to the Vault of the Earth |q 38578/1 |goto Tanaan Jungle/0 47.1,70.2
step
talk Lagar the Wise##90644
Tell him _"You are Lagar? I bring words from a shaman of your order. He says..."_
Speak with Lagar the Wise |q 38578/2 |goto Tanaan Jungle/0 47.3,70.5
step
talk Lagar the Wise##90644
turnin A Message of Terrible Import##38578 |goto Tanaan Jungle/0 47.3,70.5
step
Congratulations, you've completed the Tanaan Jungle Main Questline!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Loremaster\\Loremaster of Draenor",{
achieveid={9833},
patch='60100',
description="\nComplete the Draenor quest achievements.",
},[[
step
Use these Draenor Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
condition achieved(9833) |next
Shadowmoon Valley |condition achieved(9833,1) |confirm always |next "Leveling Guides\\Draenor (10-60)\\Shadowmoon Valley (10-60)"
Gorgrond |confirm |condition achieved(9833,2) |confirm always |next "Leveling Guides\\Draenor (10-60)\\Gorgrond (15-60)"
Talador |condition achieved(9833,3) |confirm always |next "Leveling Guides\\Draenor (10-60)\\Talador (20-60)"
Spires of Arak |condition achieved(9833,4) |confirm always |next "Leveling Guides\\Draenor (10-60)\\Spires of Arak (30-60)"
Nagrand |condition achieved(9833,5) |confirm always |next "Leveling Guides\\Draenor (10-60)\\Nagrand (35-60)"
step
Congratulations, you earned the _Loremaster of Draenor_ Achievement!
]])
