local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "WOD"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Draenor Intro",{
next="Leveling Guides\\Draenor (10-60)\\Frostfire Ridge (10-60)",
condition_suggested=function() return level >= 10 and level <= 50 and not completedq(34446) end,
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
talk Ashka##81761
accept Vengeance for the Fallen##35241 |goto 62.21,52.92
step
talk Korag##78573
accept Bled Dry##34421 |goto 62.28,52.96
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
Open the Eastern Cage |q 34421/1 |goto 65.75,54.21
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
Open the Southern Cage |q 34421/2 |goto 61.02,62.75
step
label "Slay_Bleeding_Hollow_Orcs"
Kill Bleeding Hollow enemies around this area
Slay #6# Bleeding Hollow Orcs |q 35241/1 |goto 64.94,59.76
step
talk Thrall##78553
|tip He runs to this location.
turnin Vengeance for the Fallen##35241 |goto 71.94,62.06
step
talk Archmage Khadgar##78559
turnin Blaze of Glory##34422 |goto 71.54,62.37
turnin Bled Dry##34421 |goto 71.54,62.37
accept Altar Altercation##34423 |goto 71.54,62.37
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
accept A Potential Ally##34427 |goto 73.02,38.10
step
use the Frostflurry Focus##110799
Watch the dialogue
Free Farseer Drek'Thar |q 34427/1 |goto 68.95,33.64
step
talk Farseer Drek'Thar##78996
|tip He runs to this location.
turnin A Potential Ally##34427 |goto 73.19,38.94
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
talk Luuka##79661
|tip Inside the building.
accept Masters of Shadow##34737 |goto 82.85,44.32
step
talk Thrall##78553
|tip Inside the building.
accept The Shadowmoon Clan##34739 |goto 81.52,44.69
stickystart "Slay_Enemies_in_the_Umbral_Halls"
step
Follow the path |goto 72.17,43.94 < 7 |walk
Follow the path |goto 60.74,32.54 < 7 |walk
Find Ankova the Fallen |q 34737/3 |goto 45.48,16.19
|tip Inside the building.
step
talk Yrel##78994
|tip Inside the building.
accept Yrel##34740 |goto 45.09,15.93
step
Escort Yrel to Safety |q 34740/1 |goto 55.28,40.89
|tip She will follow you.
|tip Inside the building.
step
Watch the dialogue
talk Yrel##78994
|tip She runs to this location.
|tip Inside the building.
turnin Yrel##34740 |goto 50.55,48.37
step
talk Qiana Moonshadow##79316
|tip She walks around this area.
|tip Inside the building.
turnin The Shadowmoon Clan##34432 |goto 52.57,50.60
step
kill Ungra##79583 |q 34737/1 |goto 43.75,78.32
|tip Inside the building.
step
Follow the path |goto 46.96,30.85 < 10 |walk
kill Taskmaster Gurran##79585 |q 34737/2 |goto 56.02,20.09
|tip He walks around this area.
|tip Inside the building.
step
label "Slay_Enemies_in_the_Umbral_Halls"
Kill enemies around this area
|tip Inside the building. |notinsticky
Slay #10# Enemies in Umbral Halls |q 34739/1 |goto 45.99,50.54
step
talk Lady Liadrin##79675
|tip Inside the building.
turnin Masters of Shadow##34737 |goto 50.21,48.21
step
talk Olin Umberhide##79315
|tip Inside the building.
turnin The Shadowmoon Clan##34739 |goto 51.18,46.74
step
talk Lady Liadrin##79675
|tip Inside the building.
accept Keli'dan the Breaker##34741 |goto 50.21,48.21
step
kill Keli'dan the Breaker##79702 |q 34741/1 |goto 35.19,50.25
|tip Inside the building.
step
Watch the dialogue
talk Archmage Khadgar##78562
|tip He runs to this location.
turnin Keli'dan the Breaker##34741 |goto Assault on the Dark Portal/0 49.51,14.39
step
talk Thrall##78553
accept Prepare for Battle##35005 |goto 50.06,13.34
step
Kill Blackrock enemies around this area
click Iron Horde Weapon Rack##231816+
|tip They look like large wooden racks with weapons on them on the ground around this area.
click Iron Horde Weapon##231818+
|tip They look like various weapons on the ground around this area.
collect 30 Blackrock Weapon##112337 |q 35005/1 |goto 43.54,18.71
step
talk Thrall##78553
turnin Prepare for Battle##35005 |goto 50.06,13.34
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
accept The Home Stretch##34446 |goto 40.11,48.43
step
Watch the dialogue
|tip Follow your allies as they run.
Get to the Docks |q 34446/1 |goto 44.40,80.68
step
talk Archmage Khadgar##78563
|tip He runs to this location.
turnin The Home Stretch##34446 |goto 44.40,80.68
accept The Home of the Frostwolves##33868 |goto 44.40,80.68
step
talk Farseer Drek'Thar##76411
turnin The Home of the Frostwolves##33868 |goto Frostfire Ridge/0 40.79,67.08
accept A Song of Frost and Fire##33815 |goto Frostfire Ridge/0 40.79,67.08
step
Watch the dialogue
|tip Follow Farseer Drek'Thar as he walks.
Get Introduced to Durotan |q 33815/1 |goto 41.82,69.65
step
talk Durotan##78272
turnin A Song of Frost and Fire##33815 |goto 41.82,69.65
accept Of Wolves and Warriors##34402 |goto 41.82,69.65
step
talk Thrall##70859
|tip He runs to this location.
turnin Of Wolves and Warriors##34402 |goto Frostwall/0 51.21,43.26
accept For the Horde!##34364 |goto Frostwall/0 51.21,43.26
step
clicknpc Horde Banner##120955
Plant the Horde Banner |q 34364/1 |goto 50.69,39.46
step
Watch the dialogue
talk Gazlowe##78466
turnin For the Horde!##34364 |goto 51.23,39.58
accept Back to Work##34375 |goto 51.23,39.58
accept A Gronnling Problem##34592 |goto 51.23,39.58
stickystart "Kill_Frostfire_Gronnlings"
step
click Tree Marking##230527+
|tip They look like poles with flags on them planted in the ground around this area.
Mark #6# Trees for Peons |q 34375/1 |goto 53.45,51.01
step
label "Kill_Frostfire_Gronnlings"
kill 8 Frostfire Gronnling##79529 |q 34592/1 |goto 53.45,51.01
step
talk Gazlowe##78466
turnin Back to Work##34375 |goto 51.23,39.58
turnin A Gronnling Problem##34592 |goto 51.23,39.58
accept The Den of Skog##34765 |goto 51.23,39.58
step
Enter the cave |goto 52.74,74.12 < 40 |walk
kill Skog##79903 |q 34765/1 |goto 48.77,85.88
|tip Inside the cave.
step
talk Gazlowe##78466
turnin The Den of Skog##34765 |goto 51.23,39.58
accept Establish Your Garrison##34378 |goto 51.23,39.58
step
click Master Surveyor
Use the Master Surveyor to Watch Your Garrison Be Constructed |q 34378/1 |goto 35.48,52.59
step
talk Bron Skyhorn##79407
fpath Frostwall Garrison |goto Frostwall/0 45.75,50.90
step
#include "Garrison_Gazlowe"
turnin Establish Your Garrison##34378
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Frostfire Ridge (10-60)",{
next="Leveling Guides\\Draenor (10-60)\\Gorgrond (15-60)",
condition_suggested=function() return level >= 10 and level <= 50 and not completedq(34075) end,
image=ZGV.IMAGESDIR.."FrostfireRidge",
startlevel=10.0,
},[[
stickystart "Collect_Garrison_Resources_36567"
step
#include "Garrison_Gazlowe"
accept What We Got##34824
accept What We Need##34822
step
#include "Garrison_Rokhan"
accept The Ogron Live?##34823
step
#include "Garrison_Cache"
Investigate your Garrison Cache |q 34824/2
step
talk Senior Peon II##86775
Tell him _"Gazlowe needs you."_
Speak with Senior Peon II |q 34824/3 |goto Frostwall/0 49.27,16.38
step
talk Skaggit##80225
Tell him _"Get the peons back to work."_
Watch the dialogue
Instruct Skaggit to Release the Peons |q 34824/1 |goto Frostwall/0 40.99,50.75
step
#include "Garrison_Gazlowe"
turnin What We Got##34824
step
Leave Your Garrison |goto Frostwall/0 50.00,50.00 > 10000 |noway |c |q 34822
|tip Follow the road north.
stickystart "Collect_Drudgeboat_Salvage"
step
Enter the cave |goto Frostfire Ridge/0 40.25,60.23 < 15 |walk
kill Groog##80167 |q 34823/1 |goto Frostfire Ridge/0 41.92,59.18
|tip Inside the cave.
step
label "Collect_Drudgeboat_Salvage"
kill Pack Boar##80174+
click Drudgeboat Salvage##230880+
|tip They look like wooden boxes on the ground around this area.
collect 10 Drudgeboat Salvage##111907 |q 34822/1 |goto 40.90,61.31
step
#include "Garrison_Rokhan"
turnin The Ogron Live?##34823
step
#include "Garrison_Gazlowe"
turnin What We Need##34822
accept Build Your Barracks##34461
step
click Garrison Blueprint: Barracks##231012
Find Gazlowe's Missing Blueprints |q 34461/1 |goto Frostwall/0 59.82,49.93
step
use Garrison Blueprint: Barracks, Level 1##111956
Learn the Garrison Blueprints: Barracks 1 |q 34461/2
step
#include "Garrison_ArchitectTable"
|tip Select the "Large" tab at the top.
|tip Drag the "Barracks" to a Large Empty Plot.
Use the Architect's Table to Begin Constructing Your Barracks |q 34461/3
step
Follow Gazlowe to the Construction Site |q 34461/4 |goto Frostwall/0 57.41,48.37
|tip He runs to this location.
step
click Finalize Garrison Plot##233250
Finalize Your Plot |q 34461/5 |goto Frostwall/0 58.14,48.40
step
talk Gazlowe##78466
turnin Build Your Barracks##34461 |goto Frostwall/0 57.41,48.37
accept We Need An Army##34861 |goto Frostwall/0 57.41,48.37
step
#include "Garrison_WarmasterZog"
turnin We Need An Army##34861
accept Winds of Change##34462
step
Leave Your Garrison |goto Frostwall/0 50.00,50.00 > 10000 |noway |c |q 34462
|tip Follow the road north.
step
Follow the path |goto Frostfire Ridge/0 53.2,64.1 < 20 |only if walking
click Icevine##231100
accept The Land Provides##34960 |goto Frostfire Ridge/0 54.23,67.52
step
click Icevine##231100+
|tip They look like dead grey bushes on the ground around this area.
collect 30 Frozen Plant Matter##112266 |q 34960/1 |goto 54.89,70.38
step
Follow the path up |goto 56.17,62.37 < 15 |only if walking
Enter the cave |goto 56.75,62.59 < 7 |walk
clicknpc Olin Umberhide##80577
|tip Inside the cave.
Rescue Olin Umberhide |q 34462/1 |goto 57.32,62.92
step
#include "Garrison_WarmasterZog"
turnin Winds of Change##34462
accept Mission Probable##34775
step
#include "Garrison_CommandTable"
|tip Begin the "Gronnlings Abound" mission.
Use the Command Table to Send Olin Umberhide on a Mission |q 34775/1
step
#include "Garrison_WarmasterZog"
turnin Mission Probable##34775
step
#include "Garrison_Gazlowe"
turnin The Land Provides##34960
step
#include "Garrison_Farseer_Drek'Thar"
accept Den of Wolves##34379
step
clicknpc Frostwolf Rylak##78320
Ride the Frostwolf Rylak to Wor'gol |q 34379/1 |goto Frostwall/0 46.88,49.73
step
Fly to Wor'gol |outvehicle |goto Frostfire Ridge/0 21.58,56.08 |q 34379 |notravel
step
talk Pul Windcarver##76782
fpath Wor'gol |goto 21.57,56.14
step
talk Durotan##70860
turnin Den of Wolves##34379 |goto 20.74,57.97
accept Rally the Frostwolves##34380 |goto 20.74,57.97
step
talk Farseer Drek'Thar##80456
|tip He runs to this location.
accept Honor Has Its Rewards##33816 |goto 21.03,57.93
step
Receive the Blessing from the Shamanstone |q 33816/1 |goto 17.50,56.63
step
click Frostwolf Shamanstone##226468
Choose _"Spirit of the Wolf"_
Gain the Spirit the Wolf |havebuff spell:155347 |goto 17.50,56.63 |q 33816
step
talk Farseer Drek'Thar##76616
turnin Honor Has Its Rewards##33816 |goto 17.68,56.70
step
Follow the path up |goto 19.65,60.07 < 15 |only if walking
talk Draka##78971
Ask Draka to Sound the War Horn |q 34380/1 |goto 19.36,60.09
step
talk Durotan##76557
|tip He walks to this location.
turnin Rally the Frostwolves##34380 |goto 20.93,57.91
accept Gormaul Watch##33784 |goto 20.93,57.91
step
Follow the path |goto 23.25,56.33 < 15 |only if walking
Follow the path up |goto 24.03,48.22 < 15 |only if walking
Meet Durotan at Gormaul Tower |q 33784/1 |goto 21.02,43.74
step
Kill enemies around this area
|tip Follow Durotan and help him fight.
Overrun the Ruin |q 33784/3 |goto 19.71,44.60
step
Kill the enemies that attack
Defeat the Counter-Attack |q 33784/4 |goto 19.71,44.60
step
kill Razortusk the Untamed##76208 |q 33784/5 |goto 18.86,45.29
step
talk Durotan##76240
turnin Gormaul Tower##33784 |goto 19.74,44.76
accept These Colors Don't Run##33526 |goto 19.74,44.76
step
Follow the path |goto 21.12,42.03 < 30 |only if walking
Kill enemies around this area
use the Frostwolf Banner##107279
|tip Use it near their corpses.
Plant #8# Frostwolf Banners |q 33526/1 |goto Frostfire Ridge/1 16.19,59.79
step
Enter the building |goto 32.29,47.67 < 15 |walk
talk Durotan##75177
|tip Inside the building.
turnin These Colors Don't Run##33526 |goto 43.56,23.08
accept Deeds Left Undone##33546 |goto 43.56,23.08
step
click Barrel of Frostwolf Oil##225681
|tip Inside the building.
collect Frostwolf Oil##107361 |q 33546/1 |goto 44.14,32.31 |count 1
step
Follow the path |goto 36.70,33.68 < 7 |walk
click Barrel of Frostwolf Oil##225681
|tip Inside the building.
collect Frostwolf Oil##107361 |q 33546/1 |goto 35.10,32.33 |count 2
step
click Barrel of Frostwolf Oil##225681
|tip Inside the building.
collect Frostwolf Oil##107361 |q 33546/1 |goto 36.67,38.55 |count 3
step
click Barrel of Frostwolf Oil##225681
|tip Inside the building.
collect Frostwolf Oil##107361 |q 33546/1 |goto 40.71,53.98 |count 4
step
click Barrel of Frostwolf Oil##225681
|tip Inside the building.
collect Frostwolf Oil##107361 |q 33546/1 |goto 50.49,47.36 |count 5
step
Follow the path |goto 52.92,49.49 < 7 |walk
talk Gol'kosh the Axe##75167
|tip Inside the building.
Take the Oil to Gol'kosh |q 33546/2 |goto 56.02,43.73
step
Leave the building |goto 32.29,47.67 < 15 |walk
talk Durotan##75177
turnin Deeds Left Undone##33546 |goto 34.25,72.97
accept Great Balls of Fire!##33408 |goto 34.25,72.97
step
Ascend the Ramp |q 33408/1 |goto 50.40,89.50
|tip Avoid the molten boulders.
step
Enter the building |goto Frostfire Ridge/2 66.99,79.98 < 7 |walk
talk Thrall##75186
|tip Inside the building.
turnin Great Balls of Fire!##33408 | goto Frostfire Ridge/2 70.70,78.57
accept The Butcher of Bladespire##33410 |goto Frostfire Ridge/2 70.70,78.57
step
kill Dorogg the Ruthless##74254 |q 33410/1 |goto 53.05,72.32
|tip He fights around this area.
|tip He will drop an item for each crafting profession you currently have learned.
|tip The items will each start a quest.
|tip Gathering and Secondary professions do not get a quest item.
step
Enter the building |goto 66.99,79.98 < 7 |walk
talk Thrall##75186
|tip Inside the building.
turnin The Butcher of Bladespire##33410 |goto 70.70,78.57
accept To the Slaughter##33622 |goto 70.70,78.57
accept Armed and Dangerous##33344 |goto 70.70,78.57
stickystart "Slay_Bladespire_Ogres"
step
Enter the building |goto 62.14,68.90 < 15 |walk
talk Frostwolf Slave##76543+
|tip They look like orcs hammering on things on the ground around this area.
|tip Inside the building.
Arm #10# Frostwolf Slaves |q 33344/1 |goto 53.05,41.65
step
label "Slay_Bladespire_Ogres"
Kill Bladespire enemies around this area
|tip Inside the building. |notinsticky
Slay #10# Bladespire Ogres |q 33622/1 |goto 53.05,41.65
step
talk Durotan##75177
|tip Inside the building.
turnin To the Slaughter##33622 |goto 50.32,32.66
turnin Armed and Dangerous##33344 |goto 50.32,32.66
accept Last Steps##33527 |goto 50.32,32.66
step
click Ladder##268797
|tip Inside the building.
Climb the Chain |q 33527/1 |goto 50.10,31.66
step
kill Gorr'thog##74105 |q 33527/2 |goto Frostfire Ridge/3 49.18,67.88
|tip Inside the building.
step
talk Durotan##75188
|tip Inside the building.
turnin Last Steps##33527 |goto 66.54,56.46
accept Moving In##33657 |goto 66.54,56.46
step
clicknpc Frost Wolf Howler##78894
|tip Inside the building.
Ride the Frost Wolf |q 33657/1 |goto 66.64,55.58
step
Begin Riding the Frost Wolf |invehicle |q 33657
step
Return to Durotan |outvehicle |goto Frostfire Ridge/1 42.30,42.83 |q 33657 |notravel
step
talk Durotan##70860
|tip Inside the building.
turnin Moving In##33657 |goto 43.15,41.29
accept Save Wolf Home##33468 |goto 43.15,41.29
step
talk Der'shway##76746
|tip Inside the building.
home Bladespire Citadel |goto 42.97,44.64 |q 32795 |future
step
talk Snowrunner Rolga##81678
accept Mopping Up##33412 |goto 28.26,45.71
step
talk Roark the Airwolf##76781
fpath Bladespire Citadel |goto 19.94,51.77
step
talk Guse##78222
accept Slavery and Strife##33119 |goto 20.10,52.83
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
Click Here After Opening Your Profession Windows |confirm |q 37669 |future
|only if skill("Alchemy") >= 1 or skill("Engineering") >= 1 or skill("Jewelcrafting") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1 or skill("Tailoring") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1
step
use the Intricate Crimson Pendant##115287
accept The Intricate Pendant##36314
|only if itemcount(115287) > 0 or haveq(36314)
step
talk "Appraiser" Sazsel Stickyfingers##84967
turnin The Intricate Pendant##36314 |goto Frostwall/0 57.20,53.71
accept Locating the Lapidarist##36352 |goto Frostwall/0 57.20,53.71
|only if haveq(36314) or completedq(36314)
step
#include "Garrison_Flightmaster"
Fly to Wor'gol, Frostfire Ridge |ontaxi |q 36314
|only if haveq(36314) or completedq(36314)
step
Take a Flight to Wor'gol |offtaxi |goto Frostfire Ridge/0 21.68,56.08 |q 36314 |notravel
|only if haveq(36314) or completedq(36314)
step
Enter the building |goto 20.14,56.66 < 7 |walk
Locate the Pendant Owner |q 36352/1 |goto 20.08,56.39
|tip Inside the building.
|only if haveq(36352) or completedq(36352)
step
talk Gem Grinder Orolak##85106
|tip Inside the building.
turnin Locating the Lapidarist##36352 |goto 20.08,56.39
accept No Pressure, No Diamonds##36378 |goto 20.08,56.39
|only if haveq(36352) or completedq(36352)
stickystart "Collect_Marvelous_Lava_Diamonds"
stickystart "Collect_Rough_Lava_Diamonds"
step
Follow the path down |goto Frostfire Ridge/1 20.43,38.83 < 15 |only if walking
Follow the path |goto 18.36,32.53 < 10 |only if walking
kill Massive Lava Slime##85185 |q 36378/1 |goto Frostfire Ridge/0 20.45,32.68
|tip Kill Lava Slimes around this area.
|tip If you have a pet, make sure you (not your pet) get the killing blow on the Lava Slimes.
|tip You will gain a 45 second buff that protects you from the lava.
|tip Kill killing them to maintain the buff while you're in this area with the lava.
|only if haveq(36378) or completedq(36378)
step
label "Collect_Marvelous_Lava_Diamonds"
kill Massive Lava Slime##85185 |notinsticky
collect Marvelous Lava Diamond##115461 |q 36378/3 |goto 20.45,32.68
|only if haveq(36378) or completedq(36378)
step
label "Collect_Rough_Lava_Diamonds"
kill Lava Slime##79630+
collect 3 Rough Lava Diamond##115445 |q 36378/2 |goto 17.88,31.91
|only if haveq(36378) or completedq(36378)
step
Follow the path up |goto 20.33,31.15 < 20 |only if walking
Enter the building |goto 20.14,56.66 < 7 |walk
talk Gem Grinder Orolak##85106
|tip Inside the building.
turnin No Pressure, No Diamonds##36378 |goto 20.08,56.39
accept Diamonds Are Forever##36380 |goto 20.08,56.39
|only if haveq(36378) or completedq(36378)
step
Watch the dialogue
|tip Inside the building.
Wait for Orolak to Assemble the Pendant |q 36380/1 |goto 20.08,56.39
|only if haveq(36380) or completedq(36380)
step
talk Gem Grinder Orolak##85106
|tip Inside the building.
turnin Diamonds Are Forever##36380 |goto 20.08,56.39
|only if haveq(36380) or completedq(36380)
step
use the Burned-Out Hand Cannon##116438
accept Heavy Arms##36589
|only if itemcount(116438) > 0 or haveq(36589)
step
talk Blixthraz Blastcharge##85882
turnin Heavy Arms##36589 |goto Frostwall/0 60.03,38.60
accept "Spare" Parts##36594 |goto Frostwall/0 60.03,38.60
|only if haveq(36314) or completedq(36314)
step
Leave Your Garrison |goto Frostwall/0 50.00,50.00 > 500 |noway |c |q 36594
|tip Follow the road north, and head east to the canyon.
|only if haveq(36594) or completedq(36594)
stickystart "Collect_Siege_Cannon_Parts"
step
Follow the path up |goto Frostfire Ridge/0 55.53,65.51 < 7 |only if walking
kill Iron Cannoneer##85822+
click Iron Horde Ammunition Crate##236012+
|tip They look like wooden boxes filled with black balls on the ground around this area.
collect 20 Black Iron Shell##116434 |q 36594/1 |goto Frostfire Ridge/0 57.50,71.62
You can find more around [61.90,73.00]
|only if haveq(36594) or completedq(36594)
step
label "Collect_Siege_Cannon_Parts"
use Blixthraz's Tools##116645
|tip Use it next to Siege Cannons.
|tip They look like huge metal cannon machines on the ground around this area.
click Iron Cannon Scraps##236045+
|tip They look like metal parts that appear on the ground when you blow up a Siege Cannon.
collect 50 Siege Cannon Parts##116430 |q 36594/2 |goto 57.50,71.62
You can find more around [61.90,73.00]
|only if haveq(36594) or completedq(36594)
step
Follow the path up |goto 53.04,63.68 < 40 |only if walking
talk Blixthraz Blastcharge##85882
turnin "Spare" Parts##36594 |goto Frostwall/0 60.03,38.60
accept Big Frostfire Gun##36627 |goto Frostwall/0 60.03,38.60
|only if haveq(36594) or completedq(36594)
step
Follow the path up |goto Frostwall/0 68.11,63.90
|tip Make sure you are mounted. If you don't make it, there's a small path that you'll fall on that you can just run back up.
use Blixthraz's Frightening Grudgesolver##116759
|tip Use it on Gentle Clefthoofs.
Subdue #5# Clefthoofs |q 36627/1 |goto Frostfire Ridge/0 52.31,73.45
|only if haveq(36627) or completedq(36627)
step
talk Blixthraz Blastcharge##85882
turnin Big Frostfire Gun##36627 |goto Frostwall/0 60.03,38.60
|only if haveq(36627) or completedq(36627)
step
use the Mysterious Flask##112566
accept The Mysterious Flask##35058
|only if itemcount(112566) > 0 or haveq(35058)
step
talk Refugee Lo'nash##81166
turnin The Mysterious Flask##35058 |goto Frostwall/0 45.12,51.02
accept The Alchemist##35103 |goto Frostwall/0 45.12,51.02
|only if haveq(35058) or completedq(35058)
step
#include "Garrison_Flightmaster"
Fly to Stonefang Outpost, Frostfire Ridge |ontaxi |q 35103
|only if haveq(35103) or completedq(35103)
step
Take a Flight to Stonefang Outpost |offtaxi |goto Frostfire Ridge/0 40.13,51.94 |q 35103 |notravel
|only if haveq(35103) or completedq(35103)
step
Follow the path |goto Frostfire Ridge/0 37.14,50.23 < 30 |only if walking
talk Kadar##81209
turnin The Alchemist##35103 |goto Frostfire Ridge/0 38.03,47.43
accept The Apprentice##35104 |goto Frostfire Ridge/0 38.03,47.43
|only if haveq(35103) or completedq(35103)
step
Enter the building |goto 37.84,47.62 < 7 |walk
click Rubble##227026
|tip Inside the building.
Remove the Rubble |q 35104/1 |goto 37.84,47.44
|only if haveq(35104) or completedq(35104)
step
talk Ang'kra##81210
|tip Inside the building.
turnin The Apprentice##35104 |goto 37.84,47.44
accept Avenge and Reclaim##35106 |goto 37.84,47.44
|only if haveq(35104) or completedq(35104)
stickystart "Collect_Book_Of_Alchemical_Secrets"
step
kill Or'Nak##81243 |q 35106/1 |goto 41.56,40.44
|only if haveq(35106) or completedq(35106)
step
label "Collect_Book_Of_Alchemical_Secrets"
collect Book of Alchemical Secrets##112655 |q 35106/2 |goto 41.56,40.44
|only if haveq(35106) or completedq(35106)
step
Enter the building |goto 37.84,47.62 < 7 |walk
talk Ang'kra##81210
|tip Inside the building.
turnin Avenge and Reclaim##35106 |goto 37.84,47.44
|only if haveq(35106) or completedq(35106)
step
use the Fractured Forge Hammer##114965
accept The Fractured Hammer##36205
|only if itemcount(114965) > 0 or haveq(36205)
step
talk Axe-Shaper Kugra##78989
turnin The Fractured Hammer##36205 |goto Frostfire Ridge/0 41.20,52.88
accept Waruk the Frostforger##36207 |goto Frostfire Ridge/0 41.20,52.88
|only if haveq(36205) or completedq(36205)
step
Follow the path |goto 42.36,48.53 < 30 |only if walking
Locate Waruk's Gravesite |q 36207/1 |goto 46.09,48.73
|only if haveq(36207) or completedq(36207)
step
talk Waruk the Frostforger##84494
turnin Waruk the Frostforger##36207 |goto 46.09,48.73
accept The Restless Spirit##36230 |goto 46.09,48.73
|only if haveq(36207) or completedq(36207)
stickystart "Collect_Kurgthuks_Task_Masters"
stickystart "Collect_Salvaged_Draenic_Metal"
step
kill Kurgthuk the Merciless##84506 |q 36230/1 |goto 60.51,27.01
|tip He walks around this area.
|only if haveq(36230) or completedq(36230)
step
label "Collect_Kurgthuks_Task_Masters"
kill Kurgthuk the Merciless##84506 |notinsticky
|tip He walks around this area. |notinsticky
collect Kurgthuk's Task Masters##114964 |q 36230/2 |goto 60.51,27.01
|only if haveq(36230) or completedq(36230)
step
label "Collect_Salvaged_Draenic_Metal"
Kill Thunderlord enemies around this area
use Waruk's Fractured Hammer##114969
|tip Use it near their corpses.
collect 50 Salvaged Draenic Metal##114977 |q 36230/3 |goto 60.36,26.52
|only if haveq(36230) or completedq(36230)
step
Follow the path |goto 49.43,47.63 < 30 |only if walking
talk Waruk the Frostforger##84494
turnin The Restless Spirit##36230 |goto 46.09,48.73
accept Mending A Broken Heart##36238 |goto 46.09,48.73
|only if haveq(36230) or completedq(36230)
step
Follow the path |goto 42.34,48.64 < 30 |only if walking
talk Axe-Shaper Kugra##78989
turnin Mending A Broken Heart##36238 |goto 41.20,52.88
|only if haveq(36238) or completedq(36238)
step
use the Illegible Sootstained Notes##115593
accept Unintelligible Intelligence##36435
|only if itemcount(115593) > 0 or haveq(36435)
step
Enter the building |goto Frostfire Ridge/0 20.99,56.74 < 7 |walk
Search Wor'gol For Help Translating the Note |q 36435/1 |goto Frostfire Ridge/0 21.07,56.09
|tip Inside the building.
|only if haveq(36435) or completedq(36435)
step
talk Raleigh Puule##85439
|tip Inside the building.
turnin Unintelligible Intelligence##36435 |goto 21.07,56.09
accept Bypassing Security##36457 |goto 21.07,56.09
|only if haveq(36435) or completedq(36435)
step
talk Pul Windcarver##76782
|tip Don't hearth to your garrison.
|tip We want to save your garrison hearthstone to use soon.
Take a Flight to Frostwall Garrison, Frostfire Ridge |ontaxi |goto 21.57,56.14 |q 36457
|only if haveq(36457) or completedq(36457)
step
Fly to Frostwall |offtaxi |goto Frostwall/0 45.7,50.3 |q 36457 |notravel
|only if haveq(36457) or completedq(36457)
step
Leave Your Garrison |goto Frostwall/0 50.00,50.00 > 500 |noway |c |q 36457
|tip Follow the road north, and head east to the canyon.
|only if haveq(36457) or completedq(36457)
step
Follow the path up |goto Frostfire Ridge/0 55.52,65.52 < 10 |only if walking
Follow the path |goto 57.48,71.53 < 30 |only if walking
use the Prestige Card: The Turn##116063
|tip You will become disguised while in the Grom'gar area.
|tip Use it again, if you lose your disguise.
Locate the Master Scribe |q 36457/1 |goto Frostfire Ridge/0 61.27,71.20
|only if haveq(36457) or completedq(36457)
step
talk Nicholaus Page##85440
turnin Bypassing Security##36457 |goto 61.27,71.20
accept Stealing the Declaration##36475 |goto 61.27,71.20
|only if haveq(36457) or completedq(36457)
step
Enter the building |goto 63.02,75.57 < 7 |only if walking
click Uratok's Strongbox##235638
|tip Inside the building.
collect Misappropriate Draenic Texts##116069 |q 36475/1 |goto 63.10,75.76
collect Blackened Iron Key##116072 |q 36475/2 |goto 63.10,75.76
|only if haveq(36475) or completedq(36475)
step
talk Nicholaus Page##85440
turnin Stealing the Declaration##36475 |goto 61.27,71.20
|only if haveq(36475) or completedq(36475)
step
use the Tattered Frostwolf Shroud##116173
accept A Warrior's Shroud##36505
|only if itemcount(116173) > 0 or haveq(36505)
step
Follow the path up |goto Frostfire Ridge/0 19.75,58.99 < 10 |only if walking
talk Gaoda Hidecleaver##85751
|tip Outside, behind the building.
turnin A Warrior's Shroud##36505 |goto Frostfire Ridge/0 20.70,60.22
accept Cut 'Em Out!##36516 |goto Frostfire Ridge/0 20.70,60.22
|only if haveq(36505) or completedq(36505)
step
Follow the path down |goto Frostfire Ridge/1 20.32,38.74 < 15 |only if walking
kill Wooly Clefthoof##72162+
use Bloodstained Skinning Knife##116246
|tip Use it on their corpses.
collect 4 Pristine Clefthoof Hide##116195 |q 36516/1 |goto Frostfire Ridge/0 25.15,44.23
|only if haveq(36516) or completedq(36516)
step
click Sootweed##235888+
|tip They look like scraggly plants on the ground around this area.
collect 15 Sootweed Pitch##116351 |q 36516/2 |goto 26.01,41.73
|only if haveq(36516) or completedq(36516)
step
Follow the path up |goto Frostfire Ridge/1 20.28,31.40 < 20 |only if walking
Follow the path up |goto Frostfire Ridge/0 19.75,58.99 < 10 |only if walking
talk Gaoda Hidecleaver##85751
|tip Outside, behind the building.
turnin Cut 'Em Out!##36516 |goto Frostfire Ridge/0 20.70,60.22
|only if haveq(36516) or completedq(36516)
step
use the Frostwolf Tailoring Kit##114973
accept Trega's Tailoring Kit##36301
|only if itemcount(114973) > 0 or haveq(36301)
step
Follow the path up |goto Frostfire Ridge/0 19.73,58.97 < 10 |only if walking
Enter the building |goto Frostfire Ridge/0 20.38,60.64 < 7 |walk
talk Trega##84689
|tip Inside the building.
turnin Trega's Tailoring Kit##36301 |goto Frostfire Ridge/0 20.47,60.60
accept From Their Cold Dead Hands##36417 |goto Frostfire Ridge/0 20.47,60.60
|only if haveq(36301) or completedq(36301)
step
Follow the path down |goto Frostfire Ridge/1 20.32,38.74 < 15 |only if walking
Kill enemies around this area
collect 10 Damaged Hexweave##115590 |q 36417/1 |goto Frostfire Ridge/0 26.55,40.97
|only if haveq(36417) or completedq(36417)
step
Follow the path up |goto Frostfire Ridge/1 20.28,31.40 < 20 |only if walking
Follow the path up |goto Frostfire Ridge/0 19.73,58.97 < 10 |only if walking
Enter the building |goto Frostfire Ridge/0 20.38,60.64 < 7 |walk
talk Trega##84689
|tip Inside the building.
turnin From Their Cold Dead Hands##36417 |goto Frostfire Ridge/0 20.47,60.60
accept Dyed in the Fur##36419 |goto Frostfire Ridge/0 20.47,60.60
|only if haveq(36417) or completedq(36417)
step
click Flytrap Ichor##236445
|tip Inside the building.
Create the Hexweave Swatch |q 36419/1 |goto 20.47,60.67
|only if haveq(36419) or completedq(36419)
step
talk Trega##84689
|tip Inside the building.
turnin Dyed in the Fur##36419 |goto 20.47,60.60
|only if haveq(36419) or completedq(36419)
step
use the Enchanted Highmaul Bracer##115008
accept Enchanted Highmaul Bracer##36255
|only if itemcount(115008) > 0 or haveq(36255)
step
talk Yu'rina the Mystic##83482
turnin Enchanted Highmaul Bracer##36255 |goto Frostwall/0 47.12,38.21
accept The Arakkoan Enchanter##36256 |goto Frostwall/0 47.12,38.21
|only if haveq(36255) or completedq(36255)
step
Leave Your Garrison |goto Frostwall/0 50.00,50.00 > 500 |noway |c
|tip Follow the road north.
|only if haveq(36256) or completedq(36256)
step
Follow the path |goto Frostfire Ridge/0 49.89,56.95 < 30 |only if walking
talk Arcanist Delath##84739
turnin The Arakkoan Enchanter##36256 |goto Frostfire Ridge/0 54.39,51.74
accept Failed Apprentice##36257 |goto Frostfire Ridge/0 54.39,51.74
|only if haveq(36256) or completedq(36256)
step
talk Torag Stonefury##84834
Free Torag Stonefury |q 36257/1 |goto 55.90,48.57
|only if haveq(36257) or completedq(36257)
step
talk Torag Stonefury##84747
turnin Failed Apprentice##36257 |goto 55.90,48.57
accept Oru'kai's Scepter##36260 |goto 55.90,48.57
|only if haveq(36257) or completedq(36257)
step
use Oru'kai's Ember Ring##115011
collect Oru'kai's Scepter##114990 |q 36260/1 |goto 55.58,49.22
|only if haveq(36260) or completedq(36260)
step
talk Arcanist Delath##84739
turnin Oru'kai's Scepter##36260 |goto 54.39,51.74
|only if haveq(36260) or completedq(36260)
step
#include "Garrison_Gazlowe"
accept Building for Professions##37669
|only if skill("Jewelcrafting") >= 1 or skill("Engineering") >= 1 or skill("Alchemy") >= 1 or skill("Leatherworking") >= 1 or skill("Inscription") >= 1 or skill("Tailoring") >= 1 or skill("Blacksmithing") >= 1 or skill("Enchanting") >= 1
step
use the Garrison Blueprint: Gem Boutique, Level 1##111814
Click Here After Using the Blueprint |confirm |q 37669
|only if skill("Jewelcrafting") >= 1
step
use the Garrison Blueprint: Engineering Works, Level 1##109258
Click Here After Using the Blueprint |confirm |q 37669
|only if skill("Engineering") >= 1
step
use the Garrison Blueprint: Alchemy Lab, Level 1##111812
Click Here After Using the Blueprint |confirm |q 37669
|only if skill("Alchemy") >= 1
step
use the Garrison Blueprint: The Tannery, Level 1##111818
Click Here After Using the Blueprint |confirm |q 37669
|only if skill("Leatherworking") >= 1
step
use the Garrison Blueprint: Scribe's Quarters, Level 1##111815
Click Here After Using the Blueprint |confirm |q 37669
|only if skill("Inscription") >= 1
step
use the Garrison Blueprint: Tailoring Emporium, Level 1##111816
Click Here After Using the Blueprint |confirm |q 37669
|only if skill("Tailoring") >= 1
step
use the Garrison Blueprint: The Forge, Level 1##111813
Click Here After Using the Blueprint |confirm |q 37669
|only if skill("Blacksmithing") >= 1
step
use the Garrison Blueprint: Enchanter's Study, Level 1##111817
Click Here After Using the Blueprint |confirm |q 37669
|only if skill("Enchanting") >= 1
step
#include "Garrison_ArchitectTable"
|tip Click the "Small" tab.
|tip Drag your profession building to the Small Empty Plot.
Build a Profession Building |q 37669/1
|only if haveq(37669) or completedq(37669)
step
#include "Garrison_Gazlowe"
turnin Building for Professions##37669
|only if haveq(37669) or completedq(37669)
step
Follow the path down |goto Frostfire Ridge/1 20.32,38.74 < 15 |only if walking
talk Gol'kosh the Axe##76662
accept Slaying Slavers##33898 |goto Frostfire Ridge/0 24.14,39.31
stickystart "Slay_Sootstained_Ogres"
step
click Ball and Chain##207079
Free the Frostwolf Slave |q 33119/1 |goto 24.97,38.80 |count 1
step
click Ball and Chain##207079
Free the Frostwolf Slave |q 33119/1 |goto 25.79,39.82 |count 2
step
click Ball and Chain##207079
Free the Frostwolf Slave |q 33119/1 |goto 26.10,40.70 |count 3
step
click Ball and Chain##207079
Free the Frostwolf Slave |q 33119/1 |goto 27.00,41.36 |count 4
step
click Ball and Chain##207079
Free the Frostwolf Slave |q 33119/1 |goto 27.08,42.92 |count 5
step
label "Slay_Sootstained_Ogres"
Kill Sootstained enemies around this area
Slay #12# Sootstained Ogres |q 33898/1 |goto 27.40,42.30
step
Follow the path |goto 29.92,42.42 < 15 |only if walking
Find Mulverick |q 33119/2 |goto 30.79,41.51
step
talk Mulverick##72890
turnin Slavery and Strife##33119 |goto 30.79,41.51
accept Mulverick's Plight##33483 |goto 30.79,41.51
step
Enter the mine |goto 29.64,41.73 < 10 |walk
kill Sootstained Taskmaster##76706
|tip Inside the mine.
collect Mulverick's Axe##107066 |q 33483/1 |goto Frostfire Ridge/4 60.47,58.56
step
Follow the path |goto 50.73,58.52 < 15 |walk
Follow the path up |goto 37.14,23.78 < 15 |only if walking
kill Slavemaster Turgall##72873
|tip He walks around this area.
|tip Inside the mine.
collect Turgall's Key##107075 |q 33483/2 |goto 50.26,33.20
step
Leave the mine |goto Frostfire Ridge/0 29.64,41.73 < 10 |walk
Unlock Mulverick's Cage |q 33483/3 |goto Frostfire Ridge/0 30.79,41.51
step
Watch the dialogue
talk Mulverick##79047
turnin Mulverick's Plight##33483 |goto 30.76,41.46
accept The Slavemaster's Demise##33484 |goto 30.76,41.46
accept Mulverick's Offer of Service##34732 |goto 30.76,41.46
step
talk Gol'kosh the Axe##76662
turnin Slaying Slavers##33898 |goto 24.14,39.31
step
Follow the road |goto 23.15,32.37 < 50 |only if walking
Enter the building |goto 24.52,29.42 < 7 |walk
talk Igrim the Resolute##74635
|tip Inside the building.
turnin Mopping Up##33412 |goto 24.50,28.40
accept The Warlord's Guard##33450 |goto 24.50,28.40
accept The Cure##33454 |goto 24.50,28.40
step
kill Bladespire Geomancer##74697+
collect Winterwasp Antidote##106958+ |n
clicknpc Frostwolf Gladiator##74672+
|tip They look like orcs kneeling on the ground around this area.
|tip You need a Winterwasp Antidote to be able to click them.
Cure #5# Frostwolf Gladiators |q 33454/1 |goto 26.71,27.08
step
Enter the building |goto 27.03,25.49 < 7 |walk
kill Thunk##74704
|tip Inside the building.
collect Head of Thunk##106943 |q 33450/1 |goto 26.85,24.90
step
Enter the cave |goto 27.86,24.80 < 7 |walk
kill Gullok##74707
|tip Inside the cave.
collect Head of Gullok##106944 |q 33450/2 |goto 27.95,23.49
step
Enter the building |goto 28.24,26.21 < 7 |walk
kill Splorg##74706
|tip Inside the building.
collect Head of Splorg##106942 |q 33450/3 |goto 28.65,26.12
step
Enter the building |goto 24.52,29.42 < 7 |walk
talk Igrim the Resolute##74635
|tip Inside the building.
turnin The Warlord's Guard##33450 |goto 24.44,29.03
turnin The Cure##33454 |goto 24.44,29.03
accept The Fall of the Warlord##33467 |goto 24.44,29.03
step
Run down the stairs behind the building |goto 24.32,27.24 < 10 |only if walking
click Ogre Spike##227291
|tip You will be attacked.
kill Warlord Bult##73763 |q 33467/1 |goto 23.36,26.11
step
Follow the path up |goto Frostfire Ridge/1 19.44,32.99 < 20 |only if walking
talk Snowrunner Rolga##81678
turnin The Fall of the Warlord##33467 |goto Frostfire Ridge/1 28.26,45.68
step
talk Guse##78222
turnin The Slavemaster's Demise##33484 |goto 20.1,52.8
step
Follow the path down |goto Frostfire Ridge/0 21.27,44.26 |only if walking
accept Forbidden Glacier##34505 |goto Frostfire Ridge/0 26.12,51.50
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Malevolent_Breaths"
step
clicknpc Frost Wolf Howler##78894+
|tip They look like wolves frozen in ice on the ground around this area.
clicknpc Frostwolf Grunt##78870+
|tip They look like orcs frozen in ice on the ground around this area.
Thaw #12# Frostwolves |q 34505/2 |goto 26.12,51.50
You can find more inside the cave at [25.32,51.68]
|only if haveq(34505) or completedq(34505)
step
label "Kill_Malevolent_Breaths"
kill 10 Malevolent Breath##78791 |q 34505/1 |goto 26.12,51.50
You can find more inside the cave at [25.32,51.68]
|only if haveq(34505) or completedq(34505)
step
Go to Wor'gol |q 33468/1 |goto Frostfire Ridge/0 23.23,56.36
stickystart "Slay_Thunderlords"
step
kill Giantslayer Zhakta##74702 |q 33468/4 |goto 21.97,57.38
|tip She fights around this area.
step
talk Wor'gol Defender##74507
accept Free Our Brothers and Sisters##33807 |goto 21.76,56.40
stickystart "Free_Villagers_And_Frostwolves"
step
kill Gronnstalker Korhol##74700 |q 33468/2 |goto 19.08,58.22
|tip He fights around this area.
step
Follow the path up |goto 19.67,59.88 < 10 |only if walking
kill Beastmaster Trokar##74708 |q 33468/3 |goto 19.81,61.64
|tip He fights around this area.
step
label "Free_Villagers_And_Frostwolves"
clicknpc Wor'gol Villager##84781+
|tip They look like orcs caught in nets on the ground around this area.
clicknpc Frost Wolf##74544+
|tip They look like white wolves chained on the ground around this area.
Free #6# Villagers and Frostwolves |q 33807/1 |goto 20.82,57.94
step
label "Slay_Thunderlords"
Kill Thunderlord enemiesa around this area
Slay #15# Thunderlords |q 33468/5 |goto 20.96,58.50
step
talk Draka##74651
turnin Free Our Brothers and Sisters##33807 |goto 20.80,57.93
turnin Save Wolf Home##33468 |goto 20.80,57.93
accept The Farseer##33469 |goto 20.80,57.93
step
Enter the cave |goto 18.21,55.94 < 10 |walk
kill Warleader Gargrak##74653 |q 33469/1 |goto 16.78,57.79
|tip Inside the cave.
step
talk Farseer Drek'Thar##74272
|tip Inside the cave.
turnin The Farseer##33469 |goto 16.79,57.84
accept Pool of Visions##33470 |goto 16.79,57.84
step
talk Farseer Drek'Thar##74272
|tip Inside the cave.
Tell him _"I am ready for the ritual, farseer."_
Witness the Ritual of Vision |q 33470/1 |goto 16.79,57.84
step
talk Farseer Drek'Thar##74272
|tip Inside the cave.
turnin Pool of Visions##33470 |goto 16.79,57.84
accept Back to Bladespire Citadel##33473 |goto 16.79,57.84
step
talk Pul Windcarver##76782
Tell him _"Pul, I need to quickly return to Bladespire Citadel."_
Fly Back to Bladespire Citadel |q 33473/1 |goto 21.57,56.14
step
Fly to Bladespire Citadel |offtaxi |goto Frostfire Ridge/1 20.68,52.16 |q 33473 |notravel
step
Enter the building |goto 32.39,47.58 < 20 |walk
talk Durotan##70860
|tip Inside the building.
turnin Back to Bladespire Citadel##33473 |goto 43.16,41.28
accept Ga'nar's Vengeance##32783 |goto 43.16,41.28
accept Securing the South##32989 |goto 43.16,41.28
step
Follow the path down |goto 20.43,41.93 < 15 |only if walking
talk Ga'nar##70909
turnin Ga'nar's Vengeance##32783 |goto Frostfire Ridge/0 30.89,25.83
accept Let the Hunt Begin!##32791 |goto Frostfire Ridge/0 30.89,25.83
step
talk Ga'nar##70878
Tell him _"I am ready!"_
Tell Ga'nar You are Ready |q 32791/1 |goto 30.89,25.83
step
Watch the dialogue
|tip Follow Ga'nar as he walks.
|tip He eventually walks to this location.
Confront Grotan |q 32791/2 |goto 34.38,26.34
stickystart "Wait_For_Ligras_Reinforcements_To_Arrive"
step
Kill the enemies that attack in waves
Wait for Kal'gor's Reinforcements to Arrive |q 32791/3 |goto 35.25,25.60
step
label "Wait_For_Ligras_Reinforcements_To_Arrive"
Kill the enemies that attack in waves |notinsticky
Wait for Ligra's Reinforcements to Arrive |q 32791/4 |goto 35.25,25.60
step
talk Ga'nar##74000
turnin Let the Hunt Begin!##32791 |goto 36.00,25.78
accept Leave Nothing Behind!##32792 |goto 36.00,25.78
step
talk Ligra the Unyielding##74222
accept They Rely on Numbers##32929 |goto 35.92,25.71
stickystart "Slay_Thunderlord_Orcs_32929"
step
kill Kur'ak the Binder##71669 |q 32792/2 |goto 37.90,28.89
|tip He walks around this area.
step
click Thunderlord Ballista##220568
Destroy the Thunderlord Ballistae |q 32792/1 |goto 38.79,30.08
step
Enter the cave |goto 41.85,32.36 < 15 |walk
click Thunderlord Supplies##220578
|tip Inside the cave.
Destroy the Thunderlord Supplies |q 32792/3 |goto 42.28,34.02
step
label "Slay_Thunderlord_Orcs_32929"
Kill Thunderlord enemies around this area
Slay #15# Thunderlord Orcs |q 32929/1 |goto 41.27,30.35
step
Follow the path up |goto 42.65,30.63 < 10 |only if walking
talk Kal'gor the Honorable##74223
turnin They Rely on Numbers##32929 |goto 46.40,32.05
accept Articles of the Fallen##32804 |goto 46.40,32.05
step
talk Ga'nar##70910
turnin Leave Nothing Behind!##32792 |goto 46.40,32.15
accept Wrath of Gronn##32794 |goto 46.40,32.15
stickystart "Collect_Fallen_Frostwolf_Artifacts"
step
kill Thunderlord Beastwrangler##74160+
|tip They look like orcs chained to large brown creatures on the ground around this area.
|tip Kill them to release the captive gronns.
Release #3# Captive Gronns |q 32794/1 |goto 47.42,33.58
step
label "Collect_Fallen_Frostwolf_Artifacts"
click Frostwolf Traveler's Pack##220621+
|tip They look like small tan bags on the ground around this area.
click Frostwolf Collar##220623+
|tip They look like small dog collars on the ground around this area.
click Frostwolf Axe##220622+
|tip They look like small hatchets on the ground around this area.
collect 10 Fallen Frostwolf Artifact##100899 |q 32804/1 |goto 47.6,33.8
step
talk Kal'gor the Honorable##74223
turnin Articles of the Fallen##32804 |goto 46.40,32.05
step
Enter the cave |goto Frostfire Ridge/7 50.10,30.13 < 20 |walk
Follow the path down |goto Frostfire Ridge/7 35.79,20.44 < 15 |walk
talk Ga'nar##70941
|tip Downstairs inside the cave.
turnin Wrath of Gronn##32794 |goto Frostfire Ridge/8 50.62,54.35
accept The Eldest##32795 |goto Frostfire Ridge/8 50.62,54.35
step
talk Ga'nar##70941
|tip Downstairs inside the cave.
Choose _"<Assist Ga'nar in battle.>"_
Watch the dialogue
|tip Follow Ga'nar as he walks.
Confront Hatock |q 32795/1 |goto 50.62,54.35
stickystart "Kill_Hatock_The_Gronnmaster"
step
Watch the dialogue
|tip Downstairs inside the cave.
kill Grulloc##70863 |q 32795/2 |goto 52.47,66.25
step
label "Kill_Hatock_The_Gronnmaster"
kill Hatock the Gronnmaster##74006 |q 32795/3 |goto 52.47,66.25
|tip Downstairs inside the cave. |notinsticky
step
talk Ga'nar##70941
|tip Downstairs inside the cave.
turnin The Eldest##32795 |goto 51.89,65.35
accept To the Garrison##32796 |goto 51.89,65.35
step
#include "Garrison_Durotan"
turnin To the Garrison##32796
step
#include "Garrison_Gazlowe"
accept Bigger is Better##36567
step
label "Collect_Garrison_Resources_36567"
Collect #200# Garrison Resources |condition curcount(824) >= 200 |q 36567 |future
|tip You will collect them naturally as you complete quests.
|tip You will need these to upgrade your garrison to level 2.
step
#include "Garrison_ArchitectTable"
|tip Click your "Great Hall" building on the garrison architect map.
|tip Click the "Upgrade" button, at the top right.
Upgrade Your Garrison to Level 2 |q 36567/1
step
#include "Garrison_Gazlowe"
turnin Bigger is Better##36567
accept Ashran Appearance##36706
step
#include "Garrison_Flightmaster"
Tell him _"Take me to Ashran."_
Speak with Bron Skyhorn |q 36706/1
step
Fly to Warspear |offtaxi |goto Warspear/0 43.85,34.46 |q 36706 |notravel
step
talk Stomphoof##86315
turnin Ashran Appearance##36706 |goto 45.60,34.65
accept Warspear Welcome##36707 |goto 45.60,34.65
step
Enter the building |goto 46.66,43.66 < 7 |walk
talk Lieutenant Kragil##86312
|tip Inside the building.
turnin Warspear Welcome##36707 |goto 44.15,45.46
accept Inspiring Ashran##36708 |goto 44.15,45.46
step
talk Narnin Dawnglow##86307
|tip Inside the building.
Speak with Narnin Dawnglow |q 36708/1 |goto 44.96,43.24
step
Enter the building |goto 52.45,58.25 < 7 |walk
talk Beska Redtusk##86036
|tip Inside the building.
Speak with Beska Redtusk |q 36708/3 |goto 53.92,62.55
step
Enter the building |goto 57.59,50.08 < 7 |walk
talk Zarjhin##86318
|tip Inside the building.
Speak with Zarjhin |q 36708/2 |goto 58.86,52.03
step
Enter the building |goto 46.66,43.66 < 7 |walk
talk Lieutenant Kragil##86312
|tip Inside the building.
turnin Inspiring Ashran##36708 |goto 44.15,45.46
accept Burning Beauty##36709 |goto 44.15,45.46
step
talk Vivianne##81765
turnin Burning Beauty##36709 |goto 62.12,23.00
accept The Dark Lady's Gift##35243 |goto 62.12,23.00
step
talk Lokra##72274
turnin Securing the South##32989 |goto Frostfire Ridge/0 38.53,52.43
accept They Who Held Fast##32990 |goto Frostfire Ridge/0 38.53,52.43
step
talk Skyhunter Donmor'gan##76879
fpath Stonefang Outpost |goto 40.11,51.84
step
talk Frostwolf Warrior##72449
Look for Karg Bloodfury |q 32990/1 |goto 41.38,52.80
step
Enter the building |goto 41.49,52.88 < 7 |walk
talk Wounded Frostwolf Shaman##74358
|tip Inside the building.
accept Of Fire and Thunder##33013 |goto 41.61,52.91
step
talk Matron Suma##72383
|tip Inside the building.
Speak with Matron Suma |q 32990/2 |goto 41.64,52.91
step
talk Rota Surehide##72381
Speak with Rota Surehide |q 32990/3 |goto 39.93,52.78
step
talk Dungar Frostmane##72380
Speak with Dungar Frostmane |q 32990/4 |goto 39.18,52.46
step
talk Lokra##72274
turnin They Who Held Fast##32990 |goto 38.53,52.43
accept Into the Boneslag##32991 |goto 38.53,52.43
step
clicknpc Roknor##72400
Find Roknor |q 32991/1 |goto 40.43,49.04
step
talk Makar Stonebinder##72399
Find Makar Stonebinder |q 32991/2 |goto 41.11,44.73
step
click Siege Munitions##221379
Inspect the Siege Munitions |q 33013/1 |goto 43.17,44.38
step
talk Gana Surehide##72494
Choose _"Break the chains."_
Find Gana Surehide |q 32991/3 |goto 44.30,43.01
step
click Heavy Plating##221378
Inspect the Heavy Plating |q 33013/2 |goto 44.71,43.42
step
_Click the Complete Quest Box:_
turnin Of Fire and Thunder##33013
step
talk Lokra##72274
turnin Into the Boneslag##32991 |goto 47.56,45.57
accept Moving Target##32992 |goto 47.56,45.57
step
Find Lokra in Icewind Drifts |q 32992/1 |goto 55.48,56.63
step
Watch the dialogue
talk Lokra##72274
|tip She walks to this location.
turnin Moving Target##32992 |goto 55.48,56.63
accept The Strength of Our Bonds##32993 |goto 55.48,56.63
step
Locate Karg Bloodfury |q 32993/1 |goto 63.22,60.04
step
talk Karg Bloodfury##72373
turnin The Strength of Our Bonds##32993 |goto 63.22,60.04
step
_Next to you:_
talk Karg Bloodfury##73097
|tip He will appear next to you.
accept Where's My Wolf?!##33826
accept Karg Unchained##33785
stickystart "Slay_Thunderlord_Orcs_33785"
step
kill Beastmaster Torash##72864 |q 33826/1 |goto 65.81,61.42
step
clicknpc Nerok##72500
|tip He walks around this area.
Free Nerok |q 33826/2 |goto 61.02,64.98
step
_Next to you:_
talk Karg Bloodfury##73097
turnin Where's My Wolf?!##33826
accept Enfilade##32994
step
_Next to you:_
talk Lokra##72940
accept The Master Siegesmith##33828
stickystart "Destroy_Iron_Horde_Cannons"
step
kill Master Siegesmith Uratok##76594 |q 33828/1 |goto 62.45,75.19
step
_Next to you:_
talk Lokra##72940
turnin The Master Siegesmith##33828
step
label "Destroy_Iron_Horde_Cannons"
Kill enemies around this area
click Blackrock Blasting Powder+
|tip They look like wooden boxes with small black balls in them on the ground around this area.
collect Blackrock Blasting Powder##104039+ |n
clicknpc Iron Horde Cannon##74936+
|tip They look like metal artillery machines on the ground around this area.
Destroy #5# Iron Horde Cannons |q 32994/1 |goto 62.58,73.30
step
label "Slay_Thunderlord_Orcs_33785"
Kill Thunderlord enemies around this area
|tip You can find more inside the buildings around this area. |notinsticky
Slay #25# Thunderlord Orcs |q 33785/1 |goto 62.69,65.90
step
_Next to you:_
talk Karg Bloodfury##73097
turnin Enfilade##32994
turnin Karg Unchained##33785
step
_Next to you:_
talk Lokra##72940
accept Return to the Pack##33493
step
#include "Garrison_Durotan"
turnin Return to the Pack##33493
accept Thunderlord Invasion!##37291
step
#include "Garrison_Grimjaw"
Tell him _"Prepare to battle the Iron Horde."_
Speak with Sergeant Grimjaw |q 37291/1
step
Watch the dialogue
|tip Follow Sergeant Grimjaw as he walks.
Follow the Sergeant |scenariogoal 1/25172 |q 37291
step
Kill the enemies that attack in waves
Defeat the Scouting Party |scenariostage 2 |goto Frostwall/0 54.02,20.77 |q 37291
step
Kill enemies around this area
|tip They will appear on your minimap as red dots.
|tip Also, heal your allies that become wounded.
|tip They will appear on your minimap as green crosses.
|tip You have to survive until the timer in your quest tracker area finishes.
Endure the Iron Horde Assault |scenariostage 3 |goto Frostwall/0 51.06,40.60 |q 37291
step
Kill enemies around this area
|tip They will appear on your minimap as red dots.
|tip Also, heal your allies that become wounded.
|tip They will appear on your minimap as green crosses.
|tip You have to kill all of the remaining enemies.
Defeat the Remaining Thunderlord Forces |scenariostage 4 |goto Frostwall/0 51.06,40.60 |q 37291
step
Return to the Town Center |scenariostage 5 |goto Frostwall/0 51.22,33.70 |q 37291
step
Watch the dialogue
kill Aggar Thunder-Reaver##79609
Defeat the Boss |scenariostage 6 |goto Frostwall/0 52.31,28.88 |q 37291
Repel the Invasion |q 37291/2 |goto Frostwall/0 52.31,28.88
step
#include "Garrison_Grimjaw"
turnin Thunderlord Invasion!##37291
step
#include "Garrison_Durotan"
accept The Iron Wolf##33010
step
Leave Your Garrison |goto Frostwall/0 50.00,50.00 > 500 |noway |c |q 33010
|tip Follow the road north, and head east to the canyon.
step
Follow the path up |goto Frostfire Ridge/0 55.52,65.50 < 10 |only if walking
Enter the building |goto Frostfire Ridge/0 63.31,65.68 < 15 |walk
Watch the dialogue
|tip Follow Durotan as he walks and help him fight.
|tip Kill all of the enemies around this area.
|tip Inside the building.
kill The Iron Wolf##74225 |q 33010/1 |goto Frostfire Ridge/6 61.72,58.49
step
talk Thrall##76720
|tip He runs to this location.
|tip Inside the building.
turnin The Iron Wolf##33010 |goto 53.25,56.17
accept To Thunder Pass##34123 |goto 53.25,56.17
step
Follow the path and leave the building |goto 41.28,25.93 < 7 |walk
talk Lokra##76487
turnin To Thunder Pass##34123 |goto Frostfire Ridge/0 73.43,58.83
step
talk Windhunter##87707
fpath Wolf's Stand |goto 73.63,60.03
step
talk Ja'kana##78699
fpath Darkspear's Edge |goto 51.70,41.13
step
talk Shadow Hunter Mala##78209
accept Frosted Fury##34346 |goto 52.51,40.42
step
talk Shadow Hunter Rala##78208
accept Lurkers##34344 |goto 52.63,40.42
accept Poulticide##34345 |goto 52.63,40.42
stickystart "Collect_Doses_Of_Lurker_Venom"
stickystart "Collect_Frostshards"
step
click Frostblossom##228991
|tip They look like small thorny vines on the ground around this area.
collect 10 Frostbloom Leaves##110227 |q 34345/1 |goto 55.75,38.11
step
label "Collect_Doses_Of_Lurker_Venom"
Kill Lurker enemies around this area
|tip They look like large centipedes.
collect 8 Dose of Lurker Venom##110226 |q 34344/1 |goto 54.34,35.83
You can find more around [59.27,35.26]
step
label "Collect_Frostshards"
kill Ice Fury##78214+
collect 3 Frostshard##110228 |q 34346/1 |goto 58.49,35.53
step
talk Gronnstalker Rokash##79229
accept Only the Winner##32981 |goto 59.45,31.80
step
click Broken Chains
accept Thunderlord for a Day##33462 |goto 58.37,31.09
stickystart "Collect_Coils_Of_Chains"
stickystart "Collect_Vicious_Grapples"
step
Run up the ramp |goto 60.91,26.63 < 7 |only if walking
kill Sky-Singer Strag##74598
|tip Inside the building.
collect Sky-Singer Strag's Totem##113101 |q 32981/1 |goto 62.69,27.67
step
label "Collect_Coils_Of_Chains"
click Coil of Chains+
|tip They look like piles of grey metal chains on the ground around this area.
collect 5 Coil of Chain##101691 |q 33462/1 |goto 59.36,28.74
step
label "Collect_Vicious_Grapples"
Kill Thunderlord enemies around this area
collect 5 Vicious Grapple##101690 |q 33462/2 |goto 59.36,28.74
step
click Chaincrafter's Anvil
turnin Thunderlord for a Day##33462 |goto 60.28,27.19
step
talk Gronnstalker Rokash##79229
turnin Only the Winner##32981 |goto 59.45,31.80
accept Defection of Gronnstalker Rokash##35341 |goto 59.45,31.80
step
talk Shadow Hunter Rala##78208
turnin Lurkers##34344 |goto 52.63,40.41
turnin Poulticide##34345 |goto 52.63,40.41
step
talk Shadow Hunter Mala##78209
turnin Frosted Fury##34346 |goto 52.51,40.42
step
talk Shadow Hunter Rala##78208
accept The Real Prey##34348 |goto 52.63,40.41
step
Find Iceblister Den |q 34348/1 |goto 53.95,29.39
step
use the Vial of "Ogron Be-Gone"##110270
|tip Use it on Grosh the Mighty.
|tip This will weaken him.
|tip Inside the cave.
kill Grosh the Mighty##78230 |q 34348/2 |goto 51.77,29.22
step
Leave the cave |goto 53.97,29.36 < 20 |walk
talk Brenna Skymoor##76787
fpath Bloodmaul Slag Mines |goto 51.45,21.45
step
Enter the cave |goto Frostfire Ridge/9 29.74,25.63 < 15 |walk
accept Bonus Objective: Frostbite Hollow##34501 |goto Frostfire Ridge/9 39.56,34.66
|tip You will accept this quest automatically.
|tip Inside the cave.
|only if level < 50
stickystart "Slay_Shiverblood_Pale_Ones"
step
kill Maggle##78896|q 34501/1 |goto 55.66,30.17
|tip Inside the cave.
|only if haveq(34501) or completedq(34501)
step
Follow the path |goto 75.51,27.32 < 10 |walk
kill Frostscreamer Raeger##78764 |q 34501/3 |goto 67.89,58.31
|tip Inside the cave.
|only if haveq(34501) or completedq(34501)
step
Follow the path |goto 55.31,56.55 < 10 |walk
kill Feagel the Biter##78893 |q 34501/2 |goto 46.37,45.02
|tip Inside the cave.
|only if haveq(34501) or completedq(34501)
step
label "Slay_Shiverblood_Pale_Ones"
Kill Shiverblood enemies around this area
|tip Inside the cave.
Slay #10# Shiverblood Pale Ones |q 34501/4 |goto 62.87,60.26
|only if haveq(34501) or completedq(34501)
step
talk Shadow Hunter Rala##78208
turnin The Real Prey##34348 |goto Frostfire Ridge/0 52.63,40.42
accept Oath of Shadow Hunter Rala##34731 |goto Frostfire Ridge/0 52.63,40.42
step
talk Outrider Urukag##72976
accept A Proper Parting##33125 |goto 66.03,49.09
accept Gut Guttra##33132 |goto 66.03,49.09
step
accept Bonus Objective: Grimfrost Hill##33145 |goto 66.03,49.09
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Free_Captured_Frostwolves"
stickystart "Slay_Grimfrost_Ogres"
step
Follow the path up |goto 67.35,48.22 < 20 |only if walking
Enter the building |goto 67.98,45.93 < 7 |walk
kill Guttra Wolfchew##72967 |q 33132/1 |goto 68.32,45.49
|tip Inside the building.
step
label "Free_Captured_Frostwolves"
clicknpc Captured Frost Wolf##73284+
|tip They look like grey wolves chained on the ground around this area.
|tip You can find more inside the buildings around this area. |notinsticky
Free #3# Captured Frostwolves |q 33145/2 |goto 67.15,47.37
|only if haveq(33145) or completedq(33145)
step
label "Slay_Grimfrost_Ogres"
Kill Grimfrost enemies around this area
|tip You can find more inside the buildings around this area. |notinsticky
Slay #8# Grimfrost Ogres |q 33145/1 |goto 67.15,47.37
|only if haveq(33145) or completedq(33145)
step
talk Outrider Urukag##72976
turnin Gut Guttra##33132 |goto 66.03,49.09
step
clicknpc Outrider Balul##73466
Burn Outrider Balulu's Corpse |q 33125/3 |goto 62.53,50.83
step
clicknpc Outrider Vorg##73482
Burn Outrider Vorg's Corpse |q 33125/1 |goto 62.04,50.28
step
clicknpc Outrider Lukar##73467
Burn Outrider Lukar's Corpse |q 33125/2 |goto 61.66,47.10
step
talk Outrider Urukag##72976
turnin A Proper Parting##33125 |goto 66.03,49.09
step
talk Lokra##76487
accept The Battle of Thunder Pass##34124 |goto 73.43,58.82
step
Begin the Scenario |scenariostart |goto 74.99,55.77 |q 34124
step
talk Durotan##76484
Speak with Durotan |q 34124/1 |goto 74.99,55.77
step
talk Durotan##76484
Tell him _"Let's move forward."_
Speak with Durotan |scenariogoal 1/24323 |goto 74.99,55.77 |q 34124
step
Watch the dialogue
Kill the enemies that attack
Defeat the First Wave |scenariogoal 2/24324 |goto 76.01,55.10 |q 34124
step
Watch the dialogue
Kill the enemies that attack
Defeat the Second Wave |scenariogoal 2/24325 |goto 76.01,55.10 |q 34124
step
kill Iron Clusterpult##76629 |scenariogoal 3/24315 |goto 77.61,53.98 |q 34124
step
Kill the enemies that attack
Defeat the First Wave |scenariogoal 4/24326 |goto 76.01,55.10 |q 34124
step
Kill the enemies that attack
Defeat the Second Wave |scenariogoal 4/24327 |goto 76.01,55.10 |q 34124
step
Kill enemies around this area
|tip Kill the enemies near Farseer Drek'Thar.
Protect Drek'Thar |scenariogoal 5/24317 |goto 77.4,55.7 |q 34124
step
Kill the enemies that attack
|tip Focus on killing the Vicious Longtusk.
Defeat the First Wave |scenariogoal 6/24329 |goto 76.01,55.10 |q 34124
step
Kill the enemies that attack
|tip Focus on killing the Vicious Longtusk.
Defeat the Second Wave |scenariogoal 6/24328 |goto 76.01,55.10 |q 34124
step
kill Malgrim Stormhand##76630 |scenariogoal 7/24319 |goto 77.62,53.96 |q 34124
step
Kill the enemies that attack
Defeat the First Wave |scenariogoal 8/24330 |goto 76.01,55.10 |q 34124
step
Kill the enemies that attack
Defeat the Second Wave |scenariogoal 8/24331 |goto 76.01,55.10 |q 34124
step
kill Maggoc##20600 |scenariogoal 9/24302 |goto 77.38,53.92 |q 34124
Defend Frostfire Ridge from the Iron Horde |q 34124/2 |goto 77.38,53.92
step
talk Durotan##76484
turnin The Battle of Thunder Pass##34124 |goto 76.15,55.16
accept The Secrets of Gorgrond##34867 |goto 76.15,55.16
step
talk Makar Stonebinder##76730
accept The Frostwolves Stand Ready##37563 |goto 76.32,54.98
step
_Make a Choice to Recruit a Follower:_
|tip Talk to any of the 3 NPC's at this location.
|tip It doesn't matter, just personal preference.
talk Kal'gor the Honorable##76724
talk Greatmother Geyah##88655
talk Lokra##76487
Tell them _"I choose you!"_
Choose a Follower |q 37563/1 |goto 76.36,54.94
step
talk Makar Stonebinder##76730
turnin The Frostwolves Stand Ready##37563 |goto 76.32,54.98
step
Enter the tunnel |goto 78.45,55.04 < 7 |only if walking
fpath Thunder Pass |goto 83.62,60.89
step
Follow the path |goto 82.79,61.78 < 15 |only if walking
talk Scout Ruk'Gan##77210
accept Savage Vengeance##34066 |goto 83.22,62.77
stickystart "Kill_Iron_Thunderguards"
step
click Barbed Thunderlord Spear##230858
accept Getting the Points##34069 |goto 84.16,65.14
step
click Barbed Thunderlord Spear##230858+
|tip They look like spears sticking out of the ground around this area.
collect 5 Barbed Thunderlord Spear##109056 |q 34069/1 |goto 84.53,67.09
step
label "Kill_Iron_Thunderguards"
kill 10 Iron Thunderguard##77147 |q 34066/1 |goto 83.62,68.80
step
talk Scout Ruk'Gan##77210
turnin Savage Vengeance##34066 |goto 82.61,69.75
turnin Getting the Points##34069 |goto 82.61,69.75
accept A Collection of Coils##34264 |goto 82.61,69.75
step
kill Thunderlord Wrangler##77106+
collect 5 Coil of Sturdy Rope##109055 |q 34264/1 |goto 83.59,67.00
step
talk Scout Ruk'Gan##77210
turnin A Collection of Coils##34264 |goto 82.61,69.75
accept Tar Get of Opportunity##34072 |goto 82.61,69.75
accept At the End of Your Rope##34070 |goto 82.61,69.75
step
use the Barbed Harpoon##109082
|tip Use it on Thunderlord War Rylaks.
|tip They look like winged creature flying in the air around this area.
|tip It will pull the rider down to you.
kill 5 Thunderlord Sky Rider##77111 |q 34070/1 |goto 84.63,68.99
step
kill Black Tar##81692+
collect 5 Glob of Sticky Tar##109080 |q 34072/1 |goto 85.45,71.36
step
talk Scout Ruk'Gan##77210
turnin Tar Get of Opportunity##34072 |goto 82.61,69.75
accept Burn Them Down##34073 |goto 82.61,69.75
turnin At the End of Your Rope##34070 |goto 82.61,69.75
step
click Battle-Worn Frostwolf Banner##227806
accept The Mark of Defiance##34102 |goto 82.64,69.83
stickystart "Impale_Thunderlord_Orc_Corpses"
step
clicknpc North Incubator Cage##77539
Destroy the North Incubator Cage |q 34073/1 |goto 81.86,71.68
step
clicknpc South Incubator Cage##77703
Burn the South Incubator Cage |q 34073/3 |goto 83.38,75.10
step
clicknpc West Incubator Cage##77702
Destroy the West Incubator Cage |q 34073/2 |goto 82.03,73.96
step
label "Impale_Thunderlord_Orc_Corpses"
Kill enemies around this area
use the Battle-Worn Frostwolf Banner##109196
|tip Use it near their corpses.
Impale #6# Thunderlord Orc Corpses |q 34102/1 |goto 82.96,74.46
step
talk Scout Ruk'Gan##77210
turnin Burn Them Down##34073 |goto 82.83,76.34
turnin The Mark of Defiance##34102 |goto 82.83,76.34
accept Vul'gaths End##34075 |goto 82.83,76.34
step
kill General Vul'gath##77104 |q 34075/1 |goto 83.85,74.96
step
talk Scout Ruk'Gan##77210
turnin Vul'gaths End##34075 |goto 82.83,76.34
|next "Leveling Guides\\Draenor (10-60)\\Gorgrond (15-60)"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Gorgrond (15-60)",{
next="Leveling Guides\\Draenor (10-60)\\Talador (20-60)",
condition_suggested=function() return level >= 15 and level <= 50 and not completedq(34681) end,
image=ZGV.IMAGESDIR.."Gorgrond",
startlevel=15,
},[[
step
talk Durotan##74594
turnin The Secrets of Gorgrond##34867 |goto Gorgrond/0 37.28,77.01 |only if haveq(34867) or completedq(34867)
accept The Laughing Skull##33543 |goto Gorgrond/0 37.28,77.01
step
Watch the dialogue
Peacefully Approach Deadgrin |q 33543/1 |goto 38.18,74.87
step
talk Ripfist##84176
turnin The Laughing Skull##33543 |goto 38.77,73.61
accept Goren, Goren, Gone!##33544 |goto 38.77,73.61
stickystart "Kill_Acidtooth_Devourers"
step
Enter the building |goto 39.31,72.25 < 7 |walk
talk Kaz the Shrieker##76987
|tip Inside the building.
accept We Die Laughing!##33548 |goto 39.33,71.98
step
clicknpc Dead Laughing Skull##75164+
|tip They look like dead orcs on the ground around this area.
collect 5 Laughing Skull Mask##107338 |q 33548/1 |goto 39.96,72.83
step
label "Kill_Acidtooth_Devourers"
kill 8 Acidtooth Devourer##79416 |q 33544/1 |goto 40.06,73.08
step
_Click the Complete Quest Box:_
turnin Goren, Goren, Gone!##33544
step
talk Limbflayer##74611
accept Eye Candy##33563 |goto 40.48,71.95
step
Enter the building |goto 41.27,72.61 < 7 |walk
kill Skothwa##79500
|tip Inside the building.
collect Skothwa's Eye##114229 |q 33563/1 |goto 41.45,72.71
step
talk Kaz the Shrieker##74606
turnin We Die Laughing!##33548 |goto 41.45,74.10
step
talk Limbflayer##74611
turnin Eye Candy##33563 |goto 41.48,74.14
step
talk Durotan##74594
accept A Flare for the Dramatic##33593 |goto 41.49,74.08
step
use Penny's Flare Gun##115534
Fire Penny's Flare Gun |q 33593/1 |goto 41.49,74.08
step
talk Durotan##74594
turnin A Flare for the Dramatic##33593 |goto 41.49,74.08
accept Penny From Heaven##36434 |goto 41.49,74.08
step
talk Penny Clobberbottom##85147
turnin Penny From Heaven##36434 |goto 45.68,70.60
accept Just Another Stick in the Wall##36460 |goto 45.68,70.60
step
click Penny's Plunger##234558
Use Penny's Plunger |q 36460/1 |goto 45.67,70.59
step
talk Durotan##74594
|tip He runs to this location.
turnin Just Another Stick in the Wall##36460 |goto 45.86,70.30
accept Your Base, Your Choice##35151 |goto 45.86,70.30
step
talk Durotan##74594
Tell him _"I am ready to make my choice."_
|tip Choose the building that appeals to you the most.
|tip It doesn't really matter, just preference.
Select a Building |q 35151/1 |goto 45.86,70.30
step
_Which Building Did You Choose?_
|tip Click the line for the building you chose.
Lowlands Lumber Yard	|confirm	|or	|q 36474	|future		|next "Lowlands_Lumber_Yard"
Savage Fight Club	|confirm	|or	|q 35880	|future		|next "Savage_Fight_Club"
step
label "Lowlands_Lumber_Yard"
talk Durotan##74594
turnin Your Base, Your Choice##35151 |goto Gorgrond/0 46.10,70.19
accept The Razorbloom##36474 |goto Gorgrond/0 46.10,70.19
step
talk Licefeaster##85967
home Beastwatch |q 35416 |future |goto 45.98,69.72
step
talk Grinslicer##81055
fpath Beastwatch |goto 45.98,69.22
step
talk Penny Clobberbottom##85077
accept Tangleheart##35707 |goto 46.36,69.65
step
talk Draka##74593
turnin The Razorbloom##36474 |goto 46.58,71.48
accept The Infested##35400 |goto 46.58,71.48
step
talk Kaz the Shrieker##74606
accept Mossy Fate##35399 |goto 46.58,71.53
accept The Voice of Iyu##35402 |goto 46.58,71.53
stickystart "Slay_Infested_Orcs"
step
clicknpc Meka the Face Chewer##82215
Find Meka the Face Chewer |q 35399/1 |goto 47.89,72.99
step
clicknpc Torg Earkeeper##82193
Find Torg Earkeeper |q 35399/3 |goto 47.35,73.37
step
clicknpc Chag the Noseless##82217
Find Chag the Noseless |q 35399/2 |goto 48.24,73.83
step
Enter the tree |goto 49.33,71.48 < 7 |walk
kill Voice of Iyu##81634 |q 35402/1 |goto 49.43,71.65
|tip Inside the tree.
step
click Enriched Seeds##235129
accept Super Seeds##35406 |goto 49.46,70.94
step
label "Slay_Infested_Orcs"
Kill Infested enemies around this area
Slay #6# Infested Orcs |q 35400/1 |goto 47.70,73.05
step
talk Kaz the Shrieker##74606
turnin Mossy Fate##35399 |goto 46.58,71.53
turnin The Voice of Iyu##35402 |goto 46.58,71.53
turnin Super Seeds##35406 |goto 46.58,71.53
accept Pollen Power##35429 |goto 46.58,71.53
step
talk Draka##74593
turnin The Infested##35400 |goto 46.58,71.48
accept Bushwhacker##35432 |goto 46.58,71.48
step
talk Kaz the Shrieker##74606
accept Cutter##35430 |goto 46.58,71.53
step
Kill enemies around this area
|tip Only enemies that looks like insects will drop the quest item.
collect 20 Potent Pollen##112909 |q 35429/1 |goto 45.11,79.19
step
accept Ruins of the First Bastion##35881 |goto 49.24,80.87
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
Follow the path |goto 50.54,77.94 < 15 |only if walking
accept The Forgotten Caves##34724 |goto 51.35,77.75
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
Leave the cave |goto 51.35,77.64 < 10 |c |q 35430
|only if completedq(34724)
stickystart "Kill_Bloom_Weavers"
step
Follow the path |goto 44.45,79.36 < 15 |only if walking
Enter the tree |goto 43.52,83.55 < 10 |walk
talk Cutter##82254
|tip Inside the tree.
turnin Cutter##35430 |goto 43.72,84.00
accept A Green Ogron?##36482 |goto 43.72,84.00
accept We Burn the Dead##35487 |goto 43.72,84.00
stickystart "Burn_Bodies"
step
kill Infested Ogron##82062 |q 36482/1 |goto 42.94,80.61
step
_Next to you:_
talk Cutter##82254
turnin A Green Ogron?##36482
step
label "Burn_Bodies"
clicknpc Mulching Body##85593+
|tip They look like various corpses on the ground and inside tree houses around this area.
Burn #6# Bodies |q 35487/1 |goto 42.79,80.67
step
label "Kill_Bloom_Weavers"
kill 9 Bloom Weaver##81575 |q 35432/1 |goto 42.79,80.67
step
_Next to you:_
talk Cutter##82254
turnin We Burn the Dead##35487
accept Secrets of the Botani##35536
step
Follow the path up |goto 41.59,83.11 < 20 |only if walking
talk Draka##82233
turnin Bushwhacker##35432 |goto 42.06,85.83
step
talk Kaz the Shrieker##82228
turnin Pollen Power##35429 |goto 42.07,85.92
turnin Secrets of the Botani##35536 |goto 42.07,85.92
accept The Life Spring##35434 |goto 42.07,85.92
step
talk Draka##82233
accept Cut Them Down##35433 |goto 42.06,85.83
step
Follow the path up |goto 41.78,87.28 < 15 |only if walking
fpath Evermorn Springs |goto 41.31,87.17
stickystart "Kill_Dew_Masters"
step
Follow the path |goto 40.31,83.50 < 20 |only if walking
kill Utrophis##75094
collect Waters of Utrophis##112905 |q 35434/1 |goto 40.64,81.81
step
label "Kill_Dew_Masters"
kill 3 Dew Master##81553 |q 35433/1 |goto 39.77,81.51
step
Follow the path |goto 40.07,83.06 < 20 |only if walking
talk Draka##82233
turnin Cut Them Down##35433 |goto 42.06,85.83
step
talk Kaz the Shrieker##82228
turnin The Life Spring##35434 |goto 42.07,85.92
accept Thieving Dwarves##36488 |goto 42.07,85.92
step
Follow the path up |goto 41.88,87.83 < 15 |only if walking
accept Tailthrasher Basin##36520 |goto 43.24,90.02
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
talk Cutter##85601
turnin Thieving Dwarves##36488 |goto 46.48,93.57
accept Will of the Genesaur##35509 |goto 46.48,93.57
accept Down the Goren Hole##35507 |goto 46.48,93.57
stickystart "Slay_Goren_Breachers"
step
Enter the building |goto 47.78,93.52 < 10 |walk
click Doomshot##232492
|tip Inside the building.
accept Doomshot##35501 |goto Gorgrond/16 47.15,29.67
stickystart "Collect_Doomshot"
step
Follow the path down |goto Gorgrond/16 57.22,84.39 < 7 |walk
click Will of the Genesaur##231961
|tip Downstairs inside the building.
collect Will of the Genesaur##11299 |q 35509/1 |goto Gorgrond/17 58.78,23.03
step
talk Cutter##82334
|tip He runs to this location.
|tip Downstairs inside the building.
turnin Will of the Genesaur##35509 |goto 49.96,22.22
step
label "Collect_Doomshot"
click Doomshot##232492+
|tip They look like large metal bullets on the ground around this area.
|tip Inside the building.
collect 4 Doomshot##112990 |q 35501/1 |goto 63.49,65.10
step
label "Slay_Goren_Breachers"
Kill enemies around this area
|tip Inside the building.
Slay #7# Goren Breachers |q 35507/1 |goto 63.49,65.10
step
click Weapon Loader##232489
|tip Downstairs inside the building.
turnin Doomshot##35501 |goto 44.33,25.56
step
talk Cutter##82334
|tip Downstairs inside the building.
turnin Down the Goren Hole##35507 |goto 49.96,22.22
accept Iyu##35510 |goto 49.96,22.22
step
Follow the path up |goto 64.29,80.76 < 7 |walk
kill Iyu##78819 |q 35510/1 |goto Gorgrond/0 47.46,92.42
|tip Your allies will help you fight.
|tip Outside.
step
talk Draka##82337
turnin Iyu##35510 |goto 47.71,93.31
accept Power of the Genesaur##35416 |goto 47.71,93.31
step
talk Kaz the Shrieker##82338
accept Kaz the Shrieker##35511 |goto 47.77,93.27
step
talk Windscreamer##84508
fpath Bastion Rise |goto 47.43,90.79
step
talk Durotan##74594
turnin Power of the Genesaur##35416 |goto 46.10,70.20
step
talk Marrow##82732
accept Reagents from Rakthoth##33694 |goto 46.29,69.98
accept Skulltakers in Crimson Fen##35667 |goto 46.29,69.98
step
accept Mistcreep Mire##36563 |goto 49.52,69.51
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
talk Grulkor##81218
turnin Skulltakers in Crimson Fen##35667 |goto 54.46,66.66
accept Basic Skulltaking##35016 |goto 54.46,66.66
stickystart "Accept_Mysterious_Pod"
step
talk Dying Skulltaker##81185
accept Skulltaker's Revenge##35017 |goto 54.82,65.29
stickystart "Kill_Fungal_Lurchers"
step
clicknpc Dead Skulltaker##80807+
|tip They look like orc corpses on the ground around this area.
collect 5 Skulltaker Skull##112640 |q 35016/1 |goto 55.67,63.64
step
talk Grulkor##80757
turnin Basic Skulltaking##35016 |goto 57.20,61.95
step
label "Accept_Mysterious_Pod"
Kill enemies around this area
accept Mysterious Pod##35021 |goto 55.73,64.20
|tip You will eventually automatically accept this quest after looting.
You can find more around [59.07,58.72]
step
label "Kill_Fungal_Lurchers"
kill 7 Fungal Lurcher##80714 |q 35017/1 |goto 55.73,64.20
You can find more around [59.07,58.72]
step
talk Grulkor##80757
turnin Skulltaker's Revenge##35017 |goto 57.20,61.95
turnin Mysterious Pod##35021 |goto 57.20,61.95
accept Clearing the Way##35027 |goto 57.20,61.95
accept The Secret of the Fungus##35029 |goto 57.20,61.95
stickystart "Kill_Fungus_Covered_Shamblers"
step
click Glowing Mushroom##231769+
|tip They look like large mushrooms with brown tops on the ground around this area.
collect 5 Glowing Mushroom##112672 |q 35029/1 |goto 57.18,60.30
step
label "Kill_Fungus_Covered_Shamblers"
kill 6 Fungus Covered Shambler##80721 |q 35027/1 |goto 57.18,60.30
step
talk Grulkor##80757
turnin Clearing the Way##35027 |goto 57.20,61.95
turnin The Secret of the Fungus##35029 |goto 57.20,61.95
accept A Grim Harvest##35030 |goto 57.20,61.95
accept A Heartfelt Search##35031 |goto 57.20,61.95
stickystart "Collect_Enlarged_Stomper_Spore_Pods"
step
click Drained Fungal Heart##233046
Inspect the Strange Fungus Site |q 35031/1 |goto 58.93,62.53
step
Watch the dialogue
talk Grulkor##81241
turnin A Heartfelt Search##35031 |goto 58.91,62.53
step
label "Collect_Enlarged_Stomper_Spore_Pods"
kill Fungal Stomper##80739+
collect 3 Enlarged Stomper Spore Pod##112394 |q 35030/1 |goto 59.78,62.12
step
talk Grulkor##81241
turnin A Grim Harvest##35030 |goto 58.91,62.53
accept Heart of the Fen##35040 |goto 58.91,62.53
step
kill Grulkor##86157
Stop Grulkor |q 35040/1 |goto 61.23,61.86
step
Follow the path up |goto 59.47,58.28 < 20 |only if walking
Follow the path |goto 59.52,53.36 < 20 |only if walking
accept Iyun Weald##36571 |goto 62.73,53.46
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
Follow the path up |goto 56.06,64.03 < 50 |only if walking
Continue up the path |goto 54.23,66.56 < 50 |only if walking
talk Penny Clobberbottom##82574
turnin Tangleheart##35707 |goto 55.93,71.54
accept Growing Wood##35506 |goto 55.93,71.54
step
talk Thuldren##84811
accept Lost Lumberjack##35505 |goto 55.92,71.58
step
talk Frenna##82569
turnin Lost Lumberjack##35505 |goto 57.06,71.93
accept Chapter I: Plant Food##35508 |goto 57.06,71.93
accept Chapter II: The Harvest##35527 |goto 57.06,71.93
accept Chapter III: Ritual of the Charred##35524 |goto 57.06,71.93
stickystart "Slay_Ancients"
stickystart "Destroy_Pollen_Pods"
stickystart "Collect_Ancient_Growth_Sap"
step
kill Ontogen the Harvester##82372 |q 35527/1 |goto 59.88,71.10
step
label "Slay_Ancients"
Kill Ancient enemies around this area
|tip They look like walking trees.
Slay #4# Ancients |q 35524/1 |goto 59.97,69.23
step
label "Destroy_Pollen_Pods"
click Pollen Pod##235903+
|tip They look like orange spikey round plant bulbs on the ground around this area.
Destroy #8# Pollen Pods |q 35508/1 |goto 59.97,69.23
step
label "Collect_Ancient_Growth_Sap"
Kill enemies around this area
|tip Heartsting Pollinators will not drop the quest item.
collect 100 Ancient Growth Sap##113136 |q 35506/1 |goto 59.97,69.23
step
Follow the path |goto 60.83,65.50 < 20 |only if walking
talk Penny Clobberbottom##82574
turnin Growing Wood##35506 |goto 60.71,64.78
turnin Chapter I: Plant Food##35508 |goto 60.71,64.78
turnin Chapter II: The Harvest##35527 |goto 60.71,64.78
turnin Chapter III: Ritual of the Charred##35524 |goto 60.71,64.78
step
click Dark Iron Mole Machine##237721
Ride the Dark Iron Mole Machine |invehicle |goto 60.71,64.84 |q 35040
step
Arrive at Beastwatch |outvehicle |goto 46.39,69.73 |noway |q 35040
step
talk Penny Clobberbottom##85077
accept Penny For Your Thoughts##36812 |goto 46.36,69.65
step
talk Marrow##82732
turnin Heart of the Fen##35040 |goto 46.29,69.98
step
Follow the path |goto 44.30,69.99 < 15 |only if walking
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
talk Rakthoth##81731
turnin Reagents from Rakthoth##33694 |goto 49.37,49.70
accept Plant Pruning##33689 |goto 49.37,49.70
accept Ambassador to the Ancient##33685 |goto 49.37,49.70
stickystart "Slay_Dionor_Defenders"
step
talk Birchus##81723
Tell him _"Thank you for not killing me. What duty have you failed?"_
Talk to Birchus |q 33685/1 |goto 50.28,47.51
step
label "Slay_Dionor_Defenders"
Kill enemies around this area
Slay #12# Dionor Defenders |q 33689/1 |goto 50.28,46.53
step
Enter the cave |goto 51.14,47.73 < 7 |walk
talk Rakthoth##85089
|tip Inside the cave.
turnin Plant Pruning##33689 |goto 51.29,48.02
turnin Ambassador to the Ancient##33685 |goto 51.29,48.02
accept Shredder vs. Saberon##33663 |goto 51.29,48.02
step
Follow the path up |goto 52.23,46.23 < 20 |only if walking
click Strong Vine Barricade##235381
|tip Walk forward after you take down the barrier.
Shred the Vine Barrier and Enter the Saberon Camp |q 33663/1 |goto 52.22,48.63
step
talk Rakthoth##82222
turnin Shredder vs. Saberon##33663 |goto 52.29,48.98
accept Steamscar "Reagents"##33661 |goto 52.29,48.98
stickystart "Collect_Saberon_Hearts"
step
click Saberon Stash##232311
accept The Sacking of the Saberon##33660 |goto 51.85,50.03
step
click Saberon Stash##232311+
|tip They look like brown leather crates on the ground and in the caves around this area.
collect 8 Saberon Herb Bundle##115442 |q 33660/1 |goto 51.70,51.57
step
label "Collect_Saberon_Hearts"
Kill Steamscar enemies around this area
collect 10 Saberon Heart##115443 |q 33661/1 |goto 51.70,51.57
step
Follow the path up |goto 52.11,50.51 < 15 |only if walking
talk Rakthoth##82222
turnin Steamscar "Reagents"##33661 |goto 52.86,51.77
turnin The Sacking of the Saberon##33660 |goto 52.86,51.77
accept Taking the Death Bloom##33695 |goto 52.86,51.77
step
Enter the cave |goto 53.78,51.85 < 10 |walk
kill Smokemaster Snarl##81749
|tip Inside the cave.
collect Dionor's Death Bloom##113187 |q 33695/1 |goto 54.28,52.61
step
talk Birchus##82302
turnin Taking the Death Bloom##33695 |goto 50.28,47.51
accept Laying Dionor to Rest##33706 |goto 50.28,47.51
step
Complete the Ritual |q 33706/1 |goto 50.28,47.51
step
Watch the dialogue
talk Birchus##82302
turnin Laying Dionor to Rest##33706 |goto 50.28,47.51
step
Follow the path |goto 52.74,44.63 < 40 |only if walking
talk Arcanist Windlebop##84714
fpath Everbloom Wilds |goto 57.01,45.88
step
talk Durotan##74594
accept Strike While the Iron is Hot##36574 |goto 46.10,70.20
step
talk Grinslicer##81055
Tell her _"I am needed urgently at the Iron Docks."_
Fly to the Iron Docks |q 36574/1 |goto 45.98,69.22
step
Begin the Scenario |scenariostart |goto 45.10,18.49 |q 36574 |notravel
step
Locate Draka |goto 44.68,17.82 < 10 |c |q 36574
step
talk Draka##86401
Tell her _"Let's go."_
Begin Following Draka |goto 44.68,17.82 > 15 |c |q 36574
step
Watch the dialogue
|tip Follow Draka as she walks.
Confront Commander Gar |scenariogoal 1/25388 |goto 44.28,16.57 |q 36574
step
Use the _"Access Artifact"_ ability
|tip Use it near enemies around this area.
|tip It appears as a button on the screen.
Kill enemies around this area
Use the Artifact to Eliminate your Enemies |scenariogoal 2/25389 |goto 44.27,16.21 |q 36574
step
Use the _"Access Artifact"_ ability
|tip Use it near enemies around this area.
|tip It appears as a button on the screen.
Kill enemies around this area
Defeat the Incoming Enemies |scenariogoal 3/25390 |goto 44.27,16.21 |q 36574
step
Use the _"Access Artifact"_ ability
|tip Use it near enemies around this area.
|tip It appears as a button on the screen.
kill Goc##85580
|tip Your allies will do most of the damage to him, so just help them.
Defeat Goc |scenariogoal 4/25391 |goto 44.27,16.21 |q 36574
step
Watch the dialogue
kill Commander Gar##85571
Defeat Commander Gar |scenarioend |goto 44.27,16.21 |q 36574
Complete the Iron Approach |q 36574/2 |goto 44.27,16.21
step
Follow the path |goto 44.27,19.30 < 30 |only if walking
talk Nisha##84700
fpath Iron Docks |goto 43.04,20.21
step
talk Durotan##74594
turnin Strike While the Iron is Hot##36574 |goto 46.10,70.20
accept News from Talador##36494 |goto 46.10,70.20
step
#include "Garrison_Rokhan"
turnin News from Talador##36494
|next "endguide"
step
label "Savage_Fight_Club"
talk Durotan##74594
turnin Your Base, Your Choice##35151 |goto Gorgrond/0 46.10,70.19
accept Rage and Wisdom##35880 |goto Gorgrond/0 46.10,70.19
step
talk Licefeaster##85967
home Beastwatch |goto 45.98,69.72
step
fpath Beastwatch |goto 45.98,69.23
step
talk Limbflayer##76688
accept A Rediscovered Legend##34697 |goto 46.33,69.70
step
talk Marrow##82732
accept Skulltakers in Crimson Fen##35667 |goto 46.29,69.98
accept Reagents from Rakthoth##33694 |goto 46.29,69.98
step
Follow the path |goto 44.29,70.01 < 15 |only if walking
talk Bony Xuk##81202
turnin Rage and Wisdom##35880 |goto 43.56,65.02
accept A Harsh Reminder##35248 |goto 43.56,65.02
accept Seedbearers of Bad News##35035 |goto 43.56,65.02
step
talk Kash'drakor##79320
turnin A Rediscovered Legend##34697 |goto 42.76,63.06
accept Slave Hunters##34698 |goto 42.76,63.06
accept Nazgrel##34700 |goto 42.76,63.06
step
talk Beatface##79331
accept Krav'ogra##34702 |goto 42.70,63.08
step
talk Gladiator Akaani##79322
accept Getting Gladiators##34699 |goto 42.75,62.97
stickystart "Slay_Denizens_Of_The_Wasteland_Savage"
step
clicknpc Ancient Seedbearer##82392+
|tip They look like dead tree creatures on the ground around this area.
Burn #5# Ancient Seedbearers |q 35035/1 |goto 44.50,64.49
step
label "Slay_Denizens_Of_The_Wasteland_Savage"
Kill enemies around this area
|tip Only Gronn, Goren, or Gronnling enemies will count for the quest goal.
Slay #8# Denizens of the Wasteland |q 35248/1 |goto 45.28,64.13
step
talk Bony Xuk##81202
turnin A Harsh Reminder##35248 |goto 43.56,65.02
turnin Seedbearers of Bad News##35035 |goto 43.56,65.02
accept We Have Company##35025 |goto 43.56,65.02
step
talk Prowler Sasha##75008
accept Need More Teeth##34012 |goto 41.42,66.11
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
turnin Krav'ogra##34702 |goto 42.70,63.08
step
talk Gladiator Akaani##79322
turnin The Axe of Kor'gall##34703 |goto 42.75,62.98
step
talk Kash'drakor##79320
turnin Slave Hunters##34698 |goto 42.76,63.06
turnin Nazgrel##34700 |goto 42.76,63.06
accept The Sparring Arena##35152 |goto 42.76,63.06
step
talk Bruto##77014
accept The Interest of Bruto##35882 |goto 42.75,62.91
step
talk Dying Beast##81056
Choose _"Release the creature from its chains."_
Investigate the Iron Horde Camp |q 35025/1 |goto 44.24,61.60
step
Watch the dialogue
talk Rexxar##82832
turnin We Have Company##35025 |goto 44.28,61.64
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
stickystart "Collect_Quenching_Waters_Savage"
step
kill Stoneshamble Basilisk##74962+
clicknpc Decaying Basilisk##83405+
|tip They look like dead basilisks on the ground around this area.
collect 9 Basilisk Meat##113504 |q 35870/1 |goto 44.07,59.56
step
label "Collect_Quenching_Waters_Savage"
Kill Steamfury enemies around this area
|tip In the water around this area.
collect 100 Quenching Waters##113009 |q 35026/1 |goto 44.07,59.56
step
Foll the path up |goto 43.94,56.19 < 20 |only if walking
accept Brimstone Springs##36603 |goto 42.87,55.52
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
accept Is This One of Yours?##35036 |goto 46.04,54.74
step
talk Rexxar##83569
Tell him _"This is one of my allies."_
Vouch for Bony Xuk |q 35036/1 |goto 46.04,54.74
step
Watch the dialogue
talk Bony Xuk##84743
turnin Is This One of Yours?##35036 |goto 46.20,55.09
accept What the Bony Xuk?##35038 |goto 46.20,55.09
accept Xuk Me, Right?##35202 |goto 46.20,55.09
step
talk Rexxar##80856
accept Bad at Breaking##35037 |goto 46.04,54.74
accept Nisha's Vengeance##35934 |goto 46.04,54.74
stickystart "Kill_Gromkar_Grunts_Savage"
step
kill Mangled Boulderbreaker##85988 |q 35037/1 |goto 48.00,54.32
step
Follow the path up |goto 48.05,52.79 < 20 |only if walking
kill Gronnslaver Raz##83774 |q 35037/2 |goto 47.76,51.63
step
click Weaponization Orders##233391
accept The Gronn Strategy##35925 |goto 47.72,52.07
step
label "Kill_Gromkar_Grunts_Savage"
kill 10 Grom'kar Grunt##75091 |q 35934/1 |goto 47.61,53.92
You can find more up on the plataeu around [47.85,51.88]
stickystart "Collect_Goren_Crystals_Savage"
step
Kill Boneyard enemies around this area
|tip Walk next to the rumbling fissures on the ground around this area.
|tip A group of Boneyard Gorgers will appear.
collect 9 Goren Shell##112786 |q 35202/1 |goto 45.21,52.62
step
label "Collect_Goren_Crystals_Savage"
clicknpc Longtooth Gorger##83489+
|tip They look like dead Goren on the ground around this area.
collect 25 Goren Crystal##112911 |q 35038/1 |goto 45.21,52.62
step
Follow the path up |goto 45.22,55.45 < 15 |only if walking
talk Rexxar##80856
turnin Bad at Breaking##35037 |goto 46.04,54.74
turnin Nisha's Vengeance##35934 |goto 46.04,54.74
turnin The Gronn Strategy##35925 |goto 46.04,54.74
step
talk Bony Xuk##84743
turnin What the Bony Xuk?##35038 |goto 46.20,55.09
turnin Xuk Me, Right?##35202 |goto 46.20,55.09
accept Xuk It!##35041 |goto 46.20,55.09
step
use Goren Disguise##112958
Wear the Goren Disguise |havebuff spell:164332 |q 35041
step
Locate the Goren Tunnel |goto 46.91,55.38 < 10 |c |q 35041
step
click Goren Tunnel##236140
Begin Traveling in the Tunnel |goto 46.91,55.38 > 15 |c |q 35041
step
See Where the First Tunnel Leads |q 35041/1 |goto 45.94,50.54 |notravel
step
clicknpc Bluff Rylak##86022
Consume the Rylak |q 35041/2 |goto 45.75,50.40
step
use Goren Disguise##112958
Wear the Goren Disguise |havebuff spell:164332 |q 35041
step
Locate the Goren Tunnel |goto 45.78,50.36 < 10 |c |q 35041
step
click Goren Tunnel##236140
Begin Traveling in the Tunnel |goto 45.78,50.36 > 15 |c |q 35041
step
See Where the Second Tunnel Leads |q 35041/3 |goto 44.30,41.77 |notravel
step
use Goren Disguise##112958
Wear the Goren Disguise |havebuff spell:164332 |q 35041
step
Locate the Goren Tunnel |goto 44.31,41.78 < 10 |c |q 35041
step
click Goren Tunnel##236140
Begin Traveling in the Tunnel |goto 44.31,41.78 > 15 |c |q 35041
step
See Where the Third Tunnel Leads |q 35041/4 |goto 43.31,42.12 |notravel
step
use Goren Disguise##112958
Wear the Goren Disguise |havebuff spell:164332 |q 35041
step
clicknpc Grom'kar Messenger##84503
|tip Inside the cave.
Search the Grom'kar Messenger's Body |q 35041/5 |goto 43.16,42.30
step
use Goren Disguise##112958
Wear the Goren Disguise |havebuff spell:164332 |q 35041
step
click Goren Tunnel##236140
|tip Inside the cave.
Take the Tunnel Back to Breaker's Crown |q 35041/6 |goto 43.01,42.50
step
Tunnel Back to Breaker's Crown |goto 46.92,55.39 < 10 |c |q 35041 |notravel
step
talk Rexxar##80856
turnin Xuk It!##35041 |goto 46.04,54.74
accept Leave Every Soldier Behind##35129 |goto 46.04,54.74
accept Fair Warning##35128 |goto 46.04,54.74
step
Locate Nisha |goto 45.87,54.95 < 10 |c |q 35128
step
talk Nisha##81674
Choose _"Ride Nisha to Fissure of Fury."_
Begin Flying with Nisha |invehicle |goto 45.87,54.95 |q 35128
step
Fly to Fissure of Fury |outvehicle |goto 43.95,48.77 |q 35128 |notravel
step
talk Bony Xuk##84748
accept Zero Xuks Given##35247 |goto 43.90,48.85
step
talk Bony Xuk##84748
Tell him _"You may commune with Gro the Uncreator."_
Speak to Bony Xuk |q 35247/1 |goto 43.90,48.85
step
talk Spirit of Bony Xuk##85980
turnin Zero Xuks Given##35247 |goto 44.11,48.82
accept Get the Xuk Outta Here!##36832 |goto 44.11,48.82
stickystart "Kill_Ogron_Spinecrushers_Savage"
step
Enter the cave |goto 43.50,48.07 < 15 |walk
talk Corporal Thukmar##81213
|tip Follow the spiral path down.
|tip Downstairs inside the cave.
Choose _"Put the corporal out of his misery."_
Find Corporal Thukmar |q 35129/1 |goto Gorgrond/19 44.97,86.14
step
click Thukmar's Research##233594
|tip Downstairs inside the cave.
Acquire Thukmar's Intel |q 35129/2 |goto 44.55,85.88
step
kill Borogahn##81043 |q 35128/2 |goto 30.76,75.32
|tip Downstairs inside the cave.
step
label "Kill_Ogron_Spinecrushers_Savage"
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
turnin Leave Every Soldier Behind##35129 |goto Gorgrond/0 43.94,48.87
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
accept Chains of Iron##35136 |goto 43.94,48.87
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
kill Captain Brak##81254 |q 35136/1 |goto 49.24,44.81
step
click Heart of the Magnaron##231775
Recover the Heart of the Magnaron |q 35136/2 |goto 49.73,43.85
step
Follow the path up |goto 50.40,44.12 < 20 |only if walking
talk Rakthoth##81731
turnin Reagents from Rakthoth##33694 |goto 49.37,49.70
accept Plant Pruning##33689 |goto 49.37,49.70
accept Ambassador to the Ancient##33685 |goto 49.37,49.70
stickystart "Slay_Dionor_Defenders_Savage"
step
talk Birchus##81723
Tell him _"Thank you for not killing me. What duty have you failed?"_
Talk to Birchus |q 33685/1 |goto 50.28,47.51
step
label "Slay_Dionor_Defenders_Savage"
Kill enemies around this area
Slay #12# Dionor Defenders |q 33689/1 |goto 50.28,46.53
step
Enter the cave |goto 51.14,47.73 < 7 |walk
talk Rakthoth##85089
|tip Inside the cave.
turnin Plant Pruning##33689 |goto 51.29,48.02
turnin Ambassador to the Ancient##33685 |goto 51.29,48.02
accept Beatface vs. Boulder##33662 |goto 51.29,48.02
step
Follow the path up |goto 50.26,49.73 < 15 |only if walking
click Large Boulder
Watch the dialogue
Breach the Saberon Camp |q 33662/1 |goto 50.62,51.45
step
talk Rakthoth##85089
turnin Beatface vs. Boulder##33662 |goto 50.91,51.43
accept Steamscar "Reagents"##33661 |goto 50.91,51.43
stickystart "Collect_Saberon_Hearts_Savage"
step
click Saberon Stash##232311
accept The Sacking of the Saberon##33660 |goto 51.04,51.62
step
click Saberon Stash##232311+
|tip They look like brown leather crates on the ground and in the caves around this area.
collect 8 Saberon Herb Bundle##115442 |q 33660/1 |goto 51.70,51.57
step
label "Collect_Saberon_Hearts_Savage"
Kill Steamscar enemies around this area
collect 10 Saberon Heart##115443 |q 33661/1 |goto 51.70,51.57
step
Follow the path up |goto 52.11,50.51 < 15 |only if walking
talk Rakthoth##82222
turnin Steamscar "Reagents"##33661 |goto 52.86,51.77
turnin The Sacking of the Saberon##33660 |goto 52.86,51.77
accept Taking the Death Bloom##33695 |goto 52.86,51.77
step
Enter the cave |goto 53.78,51.85 < 10 |walk
kill Smokemaster Snarl##81749
|tip Inside the cave.
collect Dionor's Death Bloom##113187 |q 33695/1 |goto 54.28,52.61
step
talk Birchus##82302
turnin Taking the Death Bloom##33695 |goto 50.28,47.51
accept Laying Dionor to Rest##33706 |goto 50.28,47.51
step
Complete the Ritual |q 33706/1 |goto 50.28,47.51
step
Watch the dialogue
talk Birchus##82302
turnin Laying Dionor to Rest##33706 |goto 50.28,47.51
step
Follow the path |goto 52.74,44.63 < 40 |only if walking
talk Arcanist Windlebop##84714
fpath Everbloom Wilds |goto 57.01,45.88
step
talk Limbflayer##76688
turnin The Sparring Arena##35152 |goto 46.33,69.70
step
talk Durotan##74594
turnin Chains of Iron##35136 |goto 46.10,70.19
step
accept The Razorbloom##36500 |goto 48.46,70.99
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Squish_Toxic_Slimemolds_Savage"
stickystart "Slay_Infested_Savage"
step
Enter the tree |goto 49.33,71.48 < 7 |walk
kill Voice of Iyu##81634 |q 36500/2 |goto 49.43,71.65
|tip Inside the tree.
|only if haveq(36500) or completedq(36500)
step
label "Squish_Toxic_Slimemolds_Savage"
Squish #25# Toxic Slimemold |q 36500/3 |goto 47.94,72.73
|tip They look like small green slimes on the ground around this area.
|tip Walk on them to squish them.
|only if haveq(36500) or completedq(36500)
step
label "Slay_Infested_Savage"
Kill Infested enemies around this area
Slay #12# Infested |q 36500/1 |goto 47.94,72.73
|only if haveq(36500) or completedq(36500)
step
accept Mistcreep Mire##36563 |goto 50.80,69.72
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Break_Hydra_Eggs_Savage"
step
kill 5 Lernaea Vilescale##85693 |q 36563/1 |goto 52.11,66.69
|only if haveq(36563) or completedq(36563)
step
label "Break_Hydra_Eggs_Savage"
kill Hydra Egg##85786+
|tip They look like large white eggs on the ground around this area.
Break #25# Hydra Eggs |q 36563/2 |goto 52.11,66.69
|only if haveq(36563) or completedq(36563)
step
talk Grulkor##81218
turnin Skulltakers in Crimson Fen##35667 |goto 54.46,66.66
accept Basic Skulltaking##35016 |goto 54.46,66.66
stickystart "Accept_Mysterious_Pod_Savage"
step
talk Dying Skulltaker##81185
accept Skulltaker's Revenge##35017 |goto 54.82,65.29
stickystart "Kill_Fungal_Lurchers_Savage"
step
clicknpc Dead Skulltaker##80807+
|tip They look like orc corpses on the ground around this area.
collect 5 Skulltaker Skull##112640 |q 35016/1 |goto 55.67,63.64
step
talk Grulkor##80757
turnin Basic Skulltaking##35016 |goto 57.20,61.95
step
label "Accept_Mysterious_Pod_Savage"
Kill enemies around this area
accept Mysterious Pod##35021 |goto 55.73,64.20
|tip You will eventually automatically accept this quest after looting.
You can find more around [59.07,58.72]
step
label "Kill_Fungal_Lurchers_Savage"
kill 7 Fungal Lurcher##80714 |q 35017/1 |goto 55.73,64.20
You can find more around [59.07,58.72]
step
talk Grulkor##80757
turnin Skulltaker's Revenge##35017 |goto 57.20,61.95
turnin Mysterious Pod##35021 |goto 57.20,61.95
accept Clearing the Way##35027 |goto 57.20,61.95
accept The Secret of the Fungus##35029 |goto 57.20,61.95
stickystart "Kill_Fungus_Covered_Shamblers_Savage"
step
click Glowing Mushroom##231769+
|tip They look like large mushrooms with brown tops on the ground around this area.
collect 5 Glowing Mushroom##112672 |q 35029/1 |goto 57.18,60.30
step
label "Kill_Fungus_Covered_Shamblers_Savage"
kill 6 Fungus Covered Shambler##80721 |q 35027/1 |goto 57.18,60.30
step
talk Grulkor##80757
turnin Clearing the Way##35027 |goto 57.20,61.95
turnin The Secret of the Fungus##35029 |goto 57.20,61.95
accept A Grim Harvest##35030 |goto 57.20,61.95
accept A Heartfelt Search##35031 |goto 57.20,61.95
stickystart "Collect_Enlarged_Stomper_Spore_Pods_Savage"
step
click Drained Fungal Heart##233046
Inspect the Strange Fungus Site |q 35031/1 |goto 58.93,62.53
step
Watch the dialogue
talk Grulkor##81241
turnin A Heartfelt Search##35031 |goto 58.91,62.53
step
label "Collect_Enlarged_Stomper_Spore_Pods_Savage"
kill Fungal Stomper##80739+
collect 3 Enlarged Stomper Spore Pod##112394 |q 35030/1 |goto 59.78,62.12
step
talk Grulkor##81241
turnin A Grim Harvest##35030 |goto 58.91,62.53
accept Heart of the Fen##35040 |goto 58.91,62.53
step
kill Grulkor##86157
Stop Grulkor |q 35040/1 |goto 61.23,61.86
step
Follow the path up |goto 59.47,58.28 < 20 |only if walking
Follow the path |goto 59.52,53.36 < 20 |only if walking
accept Iyun Weald##36571 |goto 62.73,53.46
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Weald_Stingers_Savage"
stickystart "Kill_Thorny_Stabbers_Savage"
step
clicknpc Thorny Leafling##85809+
|tip They look like small enemies on the ground around this area.
|tip Avoid Biolante, an elite enemy that walks around this area.
Punt #20# Thorny Leaflings |q 36571/2 |goto 62.29,53.46
|only if haveq(36571) or completedq(36571)
step
label "Kill_Weald_Stingers_Savage"
kill 6 Weald Stinger##85807 |q 36571/3 |goto 62.29,53.46
|tip Avoid Biolante, an elite enemy that walks around this area. |notinsticky
|only if haveq(36571) or completedq(36571)
step
label "Kill_Thorny_Stabbers_Savage"
kill 12 Thorny Stabber##80744 |q 36571/1 |goto 62.29,53.46
|tip Avoid Biolante, an elite enemy that walks around this area. |notinsticky
|only if haveq(36571) or completedq(36571)
step
talk Marrow##82732
turnin Heart of the Fen##35040 |goto 46.29,69.98
step
talk Durotan##74594
accept Strike While the Iron is Hot##36573 |goto 46.10,70.20
step
talk Grinslicer##81055
Tell her _"I am needed urgently at the Iron Docks."_
Fly to the Iron Docks |q 36573/1 |goto 45.98,69.22
step
Begin the Scenario |scenariostart |goto 45.10,18.49 |q 36573 |notravel
step
Locate Draka |goto 44.68,17.82 < 10 |c |q 36573
step
talk Draka##86401
Tell her _"Let's go."_
Begin Following Draka |goto 44.68,17.82 > 15 |c |q 36573
step
Watch the dialogue
|tip Follow Draka as she walks.
Confront Commander Gar |scenariogoal 1/25388 |goto 44.28,16.57 |q 36573
step
Use the _"Access Artifact"_ ability
|tip Use it near enemies around this area.
|tip It appears as a button on the screen.
Kill enemies around this area
Use the Artifact to Eliminate your Enemies |scenariogoal 2/25389 |goto 44.27,16.21 |q 36573
step
Use the _"Access Artifact"_ ability
|tip Use it near enemies around this area.
|tip It appears as a button on the screen.
Kill enemies around this area
Defeat the Incoming Enemies |scenariogoal 3/25390 |goto 44.27,16.21 |q 36573
step
Use the _"Access Artifact"_ ability
|tip Use it near enemies around this area.
|tip It appears as a button on the screen.
kill Goc##85580
|tip Your allies will do most of the damage to him, so just help them.
Defeat Goc |scenariogoal 4/25391 |goto 44.27,16.21 |q 36573
step
Watch the dialogue
kill Commander Gar##85571
Defeat Commander Gar |scenarioend |goto 44.27,16.21 |q 36573
Complete the Iron Approach |q 36573/2 |goto 44.27,16.21
step
Follow the path |goto 44.27,19.30 < 30 |only if walking
talk Nisha##84700
fpath Iron Docks |goto 43.04,20.21
step
talk Durotan##74594
turnin Strike While the Iron is Hot##36573 |goto 46.10,70.20
step
accept Evermorn Springs##36504 |goto 44.35,79.42
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Kill_Bloom_Weavers_Savage"
step
kill Infested Ogron##82062 |q 36504/2 |goto 42.94,80.61
|only if haveq(36504) or completedq(36504)
step
label "Kill_Bloom_Weavers_Savage"
kill 10 Bloom Weaver##81575 |q 36504/1 |goto 42.79,80.67
|only if haveq(36504) or completedq(36504)
step
Follow the path up |goto 41.76,83.01 < 20 |only if walking
kill 3 Dew Master##81553 |q 36504/3 |goto 39.77,81.51
|only if haveq(36504) or completedq(36504)
step
Follow the path up |goto 41.78,87.28 < 15 |only if walking
talk Chucklespine##84495
fpath Evermorn Springs |goto 41.31,87.17
step
Follow the path up |goto 41.88,87.83 < 15 |only if walking
accept Tailthrasher Basin##36520 |goto 43.24,90.02
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Slay_Tailthrasher_Saberons_Savage"
stickystart "Free_Jungle_Axebreaks_Savage"
step
Enter the cave |goto 44.72,90.10 < 10 |walk
kill Skull Thrash##85733 |q 36520/3 |goto 44.40,88.80
|tip Inside the cave.
|only if haveq(36520) or completedq(36520)
step
label "Slay_Tailthrasher_Saberons_Savage"
Kill Tailthrasher enemies around this area
Slay #12# Tailthrasher Saberons |q 36520/1 |goto 45.22,91.14
|only if haveq(36520) or completedq(36520)
step
label "Free_Jungle_Axebreaks_Savage"
clicknpc Rope Spike##85810+
|tip They look like bundles of wooden sticks standing upright with birds tied to them on the ground around this area.
Free #6# Jungle Axebreaks |q 36520/2 |goto 45.22,91.14
|only if haveq(36520) or completedq(36520)
step
talk Windscreamer##84508
fpath Bastion Rise |goto 47.43,90.79
step
accept Ruins of the First Bastion##35881 |goto 49.24,80.87
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Slay_Frenzied_Podlings_Savage"
stickystart "Loot_Ancient_Jars_Savage"
step
Enter the building |goto 51.83,81.05 < 7 |walk
kill Malkor##83452 |q 35881/3 |goto 52.08,81.24
|tip Inside the building.
|only if haveq(35881) or completedq(35881)
step
label "Slay_Frenzied_Podlings_Savage"
Kill Frenzied enemies around this area
Slay #20# Frenzied Podlings |q 35881/1 |goto 50.34,79.11
|only if haveq(35881) or completedq(35881)
step
label "Loot_Ancient_Jars_Savage"
click Ancient Ogre Hoard Jar##233296+
|tip They look like brown and white vases on the ground around this area.
Loot #8# Ancient Jars |q 35881/2 |goto 50.34,79.11
|only if haveq(35881) or completedq(35881)
step
Follow the path |goto 50.54,77.94 < 15 |only if walking
accept The Forgotten Caves##34724 |goto 51.35,77.75
|tip You will accept this quest automatically.
|tip In the entrance of the cave.
|only if level < 50
stickystart "Kill_Spider_Egg_Sacs_Savage"
stickystart "Slay_Pales_Savage"
step
Follow the path |goto 51.99,78.66 < 7 |walk
kill Gorg the Host##76496 |q 34724/3 |goto 53.69,79.55
|tip You may have to jump up to him.
|tip Inside the cave.
|only if haveq(34724) or completedq(34724)
step
label "Kill_Spider_Egg_Sacs_Savage"
kill Spider Egg Sac##76548+
|tip They look like large white cocoons on the ground around this area.
|tip Inside the cave. |notinsticky
Destroy #15# Egg Sacs |q 34724/2 |goto 51.87,78.94
|only if haveq(34724) or completedq(34724)
step
label "Slay_Pales_Savage"
Kill Pale enemies around this area
|tip Inside the cave. |notinsticky
Slay #12# Pales |q 34724/1 |goto 51.87,78.94
|only if haveq(34724) or completedq(34724)
step
Leave the cave |goto 51.35,77.64 < 10 |walk
Follow the path up |goto 51.91,75.78 < 20 |only if walking
accept Bonus Objective: Tangleheart##36564 |goto 55.86,71.35
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
talk Durotan##74594
accept News from Talador##36494 |goto 46.10,70.20
step
#include "Garrison_Rokhan"
turnin News from Talador##36494
|next "endguide"
step
label "endguide"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Talador (20-60)",{
next="Leveling Guides\\Draenor (10-60)\\Spires of Arak (30-60)",
condition_suggested=function() return level >= 20 and level <= 50 and not completedq(34706) end,
image=ZGV.IMAGESDIR.."Talador",
startlevel=20,
},[[
step
#include "Garrison_Rokhan"
accept It's a Matter of Strategy##34681
step
#include "Garrison_Flightmaster"
Tell him _"Take me to my base in Talador."_
Take a Flight to Talador |ontaxi |q 34681 |only if haveq(34681) or completedq(34681)
Take a Flight to Talador |ontaxi |q 36953 |only if haveq(36953) or completedq(36953)
Take a Flight to Talador |ontaxi |q 49547 |only if haveq(49547) or completedq(49547)
|only if haveq(34681) or haveq(36953) or haveq(49547)
step
Fly to Talador |offtaxi |goto Talador/0 71.98,28.26 |q 34681 |notravel |only if haveq(34681) or completedq(34681)
Fly to Talador |offtaxi |goto Talador/0 71.98,28.26 |q 36953 |notravel |only if haveq(36953) or completedq(36953)
Fly to Talador |offtaxi |goto Talador/0 71.98,28.26 |q 49547 |notravel |only if haveq(49547) or completedq(49547)
|only if haveq(34681) or haveq(36953) or haveq(49547)
step
talk Foreman Grobash##79176
turnin It's a Matter of Strategy##34681 |goto 71.06,29.75
accept At Your Command##34566 |goto 71.06,29.75
step
clicknpc Drafting Table##79177
Use the Drafting Table |q 34566/1 |goto 71.10,30.05
step
clicknpc Drafting Table##79177
|tip Choose the building that appeals to you the most.
|tip We recommend Vol'jin's Arsenal, for the artillery ability.
|tip Other than that, it doesn't really matter, just preference.
Select a Building |q 34566/2 |goto 71.10,30.05
step
talk Foreman Grobash##79176
turnin At Your Command##34566 |goto 71.06,29.75
step
_Which Building Did You Choose?_
|tip Click the line for the building you chose.
Vol'jin's Arsenal	|confirm	|or	|q 34563	|future		|next "Voljins_Arsenal"
Arcane Sanctum		|confirm	|or	|q 34631	|future		|next "Arcane_Sanctum"
step
label "Voljins_Arsenal"
talk Foreman Grobash##79176
accept The Quarry Quandary##34569 |goto Talador/0 71.06,29.75
step
Enter the building |goto 71.86,29.92 < 7 |walk
talk Paoni Softhoof##81359
|tip Inside the building.
home Vol'jin's Pride |goto 71.97,30.02
step
talk Morketh Bladehowl##79210
turnin The Quarry Quandary##34569 |goto 71.88,29.45
accept Unleashed Steel##35102 |goto 71.88,29.45
step
Watch the dialogue
|tip Follow Morketh Bladehowl as he walks.
|tip He eventually walks to this location.
|tip Inside the building.
Follow Morketh to the Armory |q 35102/1 |goto 70.89,30.49
step
talk Morketh Bladehowl##79356
|tip Inside the building.
turnin Unleashed Steel##35102 |goto 70.89,30.49
accept Out of Jovite##34577 |goto 70.89,30.49
accept Iridium Recovery##34576 |goto 70.89,30.49
accept Gas Guzzlers##34579 |goto 70.89,30.49
stickystart "Collect_Igneous_Dust"
stickystart "Collect_Jovite_Ore"
step
Enter the mine |goto 75.23,22.45 < 10 |walk
Kill Glowgullet enemies around this area
|tip Inside the mine.
use the Goren Gas Extractor##111910
|tip Use it next to their corpses.
Gather #6# Goren Gas Samples |q 34579/1 |goto 77.22,18.93
step
label "Collect_Igneous_Dust"
kill Iridium Geode##80072+
|tip Inside the mine.
collect 8 Iridium Dust##110898 |q 34576/1 |goto 77.22,18.93
step
label "Collect_Jovite_Ore"
click Jovite Ore##230268+
|tip They look like bright green ore nodes on the ground around this area
|tip Inside the mine.
collect 12 Jovite Ore##111906 |q 34577/1 |goto 77.22,18.93
step
Enter the building |goto 71.00,30.25 < 7 |walk
talk Morketh Bladehowl##79356
|tip Inside the building.
turnin Out of Jovite##34577 |goto 70.89,30.49
turnin Iridium Recovery##34576 |goto 70.89,30.49
turnin Gas Guzzlers##34579 |goto 70.89,30.49
accept Going to the Gordunni##34837 |goto 70.89,30.49
step
talk Shadow Hunter Kajassa##79627
accept One Step Ahead##34683 |goto 71.24,29.95
step
talk Provisioner Naya##79921
accept Logistical Nightmare##34766 |goto 71.19,29.43
stickystart "Collect_Garrison_Records"
step
click Sack of Supplies##230729+
|tip They look like large brown bags hanging from objects and on the ground around this area.
collect 5 Sack of Supplies##111735 |q 34766/1 |goto 69.01,29.24
step
label "Collect_Garrison_Records"
click Garrison Records##230735+
|tip They look like piles of books and papers on the ground around this area.
collect 5 Garrison Records##111736 |q 34766/2 |goto 69.01,29.24
step
accept Mor'gran Logworks##35237 |goto 64.77,30.97
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Collect_Lumber"
step
kill 6 Iron Shredder##75815 |q 35237/1 |goto 64.77,30.97
|only if haveq(35237) or completedq(35237)
step
label "Collect_Lumber"
click Lumber##231962+
|tip They look like piles of logs on the ground around this area.
collect 20 Lumber##112994 |q 35237/2 |goto 64.77,30.97
|only if haveq(35237) or completedq(35237)
step
talk Provisioner Naya##79921
turnin Logistical Nightmare##34766 |goto 71.19,29.43
accept Send Them Running##34803 |goto 71.19,29.43
step
kill Vicegnaw##80053 |q 34803/1 |goto 70.53,27.62
step
talk Provisioner Naya##79921
turnin Send Them Running##34803 |goto 71.19,29.43
step
Follow the road |goto 66.61,20.80 < 50 |only if walking
talk Gazlowe##75873
accept Gazlowe's Solution##33721 |goto 62.06,10.40
step
talk Draka##75808
accept In Short Supply##33735 |goto 62.01,10.99
step
talk Durotan##75806
turnin One Step Ahead##34683 |goto 61.51,10.95
accept Through the Looking Glass##33754 |goto 61.51,10.95
step
click Gazlowe's Eye 'n' Ear##225769
Look Through Gazlowe's Eye 'n' Ear |q 33754/1 |goto 61.55,11.06
step
talk Durotan##75806
turnin Through the Looking Glass##33754 |goto 61.51,10.95
accept Old Friends, New Enemies##35226 |goto 61.51,10.95
accept Too Many Irons in the Fire##33722 |goto 61.51,10.95
stickystart "Collect_Iron_Horde_Explosives"
stickystart "Slay_Iron_Horde"
step
use Gazlowe's Solution##107899
Destroy the Blackrock Forge |q 33721/3 |goto 57.85,15.40
step
use Gazlowe's Solution##107899
Destroy the Munitions Landing |q 33721/2 |goto 56.23,12.34
step
use Gazlowe's Solution##107899
Destroy the Thunderlord Cache |q 33721/1 |goto 56.66,9.70
step
label "Collect_Iron_Horde_Explosives"
click Iron Horde Explosives##235141+
|tip They look like wooden boxes with metal bands around them on the ground around this area.
collect 6 Iron Horde Explosives##107855 |q 33735/1 |goto 56.33,12.51
step
label "Slay_Iron_Horde"
Kill enemies around this area
Slay #15# Iron Horde |q 33722/1 |goto 57.44,12.69
step
Enter the building |goto 54.52,7.02 < 7 |walk
Meet Durotan at Orunai Coast |q 35226/1 |goto 53.86,7.02
|tip Inside the building.
step
Watch the dialogue
|tip Outside, on the balcony of the building.
Confront Orgrim |q 35226/2 |goto 52.92,7.06
step
kill Lieutenant Dilka
Slay the Grom'kar Lieutenant |q 35226/3 |goto 52.92,7.06
step
click Iron Shredder Decommission Orders##225726
accept Decommissioned Mission##33720 |goto 59.96,16.49
step
Enter the cave |goto 61.65,14.42 < 10 |walk
kill Engineer Draxen##76791 |q 33720/1 |goto 63.16,14.49
|tip Inside the cave.
step
clicknpc Decommissioned Iron Shredder##75869
|tip Inside the cave.
Steal the Decommissioned Iron Shredder |q 33720/2 |goto 63.24,14.56
step
Enter the cave |goto 59.91,20.17 < 7 |walk
Transport the Decommissioned Iron Shredder to Draka's Den |q 33720/3 |goto 59.21,20.33
|tip Inside the cave.
step
talk Draka##75808
|tip Inside the cave.
turnin In Short Supply##33735 |goto 58.92,20.15
accept Iron Them Out##33736 |goto 58.92,20.15
step
talk Durotan##75958
|tip Inside the cave.
turnin Old Friends, New Enemies##35226 |goto 58.91,20.20
turnin Too Many Irons in the Fire##33722 |goto 58.91,20.20
accept Dreadpiston##34950 |goto 58.91,20.20
step
talk Gazlowe##75924
|tip Inside the cave.
turnin Gazlowe's Solution##33721 |goto 58.95,20.72
turnin Decommissioned Mission##33720 |goto 58.95,20.72
accept Vol. X Pages ?##33724 |goto 58.95,20.72
stickystart "Collect_Iron_Shredder_Operational_Manual_Vol_X_Pages"
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 33736/1 |goto 59.42,29.30 |count 1
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 33736/1 |goto 58.42,29.59 |count 2
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 33736/1 |goto 57.19,31.17 |count 3
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 33736/1 |goto 56.47,29.11 |count 4
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 33736/1 |goto 55.76,29.16 |count 5
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 33736/1 |goto 55.78,28.46 |count 6
step
kill Dreadpiston##80576 |q 34950/1 |goto 56.45,27.35
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
label "Collect_Iron_Shredder_Operational_Manual_Vol_X_Pages"
Kill enemies around this area
collect 20 Iron Shredder Operation Manual Vol. X Page ?##107843 |q 33724/1 |goto 56.10,26.95
step
talk Tega Skyblade##81058
fpath Durotan's Grasp |goto 55.42,40.82
step
talk Draka##75808
turnin Iron Them Out##33736 |goto 55.55,40.98
step
talk Durotan##75959
turnin Dreadpiston##34950 |goto 55.59,40.95
step
talk Gazlowe##75941
turnin Vol. X Pages ?##33724 |goto 55.68,41.16
accept An Eye for a Spy##33728 |goto 55.68,41.16
step
click Gazlowe's Eye 'n' Ear##225769
Look Through Gazlowe's Eye 'n' Ear |q 33728/1 |goto 55.76,41.09
step
talk Gazlowe##75941
turnin An Eye for a Spy##33728 |goto 55.68,41.16
accept Born to Shred##33729 |goto 55.68,41.16
step
clicknpc Iron Shredder Prototype##75721
Take Control of the Iron Shredder |q 33729/1 |goto 55.40,41.14
step
Cross the bridge |goto 57.33,37.67 < 15 |walk
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #100# Iron Horde in Tuurem |q 33729/2 |goto 60.74,37.98
step
talk Iron Shredder Prototype##75968
|tip Click your character.
turnin Born to Shred##33729
accept Engineering Her Demise##33730
step
Watch the dialogue
kill Ketya Shrediron##75986 |q 33730/1 |goto 61.06,38.76
step
talk Durotan##75959
turnin Engineering Her Demise##33730 |goto 55.59,40.95
accept Khadgar's Plan##34962 |goto 55.59,40.95
step
talk Archmage Khadgar##75805
turnin Khadgar's Plan##34962 |goto 54.18,36.43
accept The Battle for Shattrath##33731 |goto 54.18,36.43
step
Begin the Scenario |scenariostart |goto 50.69,35.35 |q 33731
step
talk Gazlowe##77191
Tell him _"Thanks. I'll meet them at the docks."_
Speak with Gazlowe |scenariogoal 1/25835 |goto Shattrath City 2/0 74.76,74.68 |q 33731
step
clicknpc Iron Star##86671
Enter the Iron Star |scenariogoal 2/25177 |goto 74.66,74.58 |q 33731
step
Reach the Harbor |scenariogoal 3/25176 |goto 62.97,52.27 |q 33731
step
talk Archmage Khadgar##77195
Tell him _"Begin your spell. I'll protect you!"_
Speak with Archmage Khadgar |scenariogoal 3/25186 |goto 63.03,50.89 |q 33731
step
Kill enemies around this area
|tip Stand in the circles on the ground.
|tip They will heal you.
Protect Khadgar |scenariogoal 4/24351 |goto 63.08,47.52 |q 33731
step
Confront Blackhand |scenariogoal 5/25178 |goto 66.16,42.21 |q 33731
step
Watch the dialogue
talk Archmage Khadgar##77195
Tell him _"I am ready to teleport to the ship."_
Speak with Khadgar to Teleport to the Battleship |scenariogoal 5/24679 |goto 66.16,42.21 |q 33731
step
Reach the Battleship |goto 72.38,23.96 < 10 |c |q 33731 |notravel
step
Kill enemies around this area
|tip Kill all of the enemies on the ship.
kill Machinist B'randt##80962
Defeat Machinist B'randt |scenariogoal 5/24352 |goto 70.26,23.46 |q 33731
step
talk Archmage Khadgar##77195
Tell him _"Then let's hurry!"_
Speak with Khadgar to Teleport to the Flagship |scenariogoal 6/24680 |goto 70.30,24.03 |q 33731
step
Reach the Flagship |goto 64.28,33.30 < 10 |c |q 33731 |notravel
step
Watch the dialogue
kill Blackhand##77256
Survive Blackhand's Onslaught |scenariogoal 6/24678 |goto 65.60,37.93 |q 33731
Complete the Battle for Shattrath |q 33731/1 |goto 65.60,37.93
step
click Portal to Talador |goto 65.68,42.41
Return to Vol'jin's Pride |goto Talador/0 71.36,29.62 < 10 |noway |c |q 33731
step
talk Durotan##79604
turnin The Battle for Shattrath##33731 |goto 71.43,29.61
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
talk Crystal-Shaper Barum##75896
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
accept Seek Out the Seer##34721 |goto 71.41,47.60
Also check around [67.19,42.90]
step
talk Ziz Fizziks##79870
accept Clear!##34751 |goto 64.21,47.71
step
kill Lakebottom Zapper##79636+
|tip Underwater.
collect 6 Zapper Sac##111637 |q 34751/1 |goto 61.75,45.75
step
talk Ziz Fizziks##79870
turnin Clear!##34751 |goto 64.21,47.71
step
Watch the dialogue
talk Pleasure-Bot 8000##79853
accept New Owner##35238 |goto 64.24,47.80
step
talk Seer Malune##76665
turnin Seek Out the Seer##34721 |goto 65.43,50.73
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
turnin Burning Sky##33740 |goto 76.71,55.24
turnin Pieces of Us##33734 |goto 76.71,55.24
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
Run up the stairs |goto 62.74,65.07 < 20 |only if walking
talk Morketh Bladehowl##80229
turnin Going to the Gordunni##34837 |goto 62.13,69.22
accept Dropping Bombs##34840 |goto 62.13,69.22
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Base Catapult |q 34840/1 |goto 63.52,69.17
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Central Catapult |q 34840/2 |goto 65.53,68.91
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Summit Catapult |q 34840/3 |goto 66.73,68.12
step
click Grappling Hook and Rope##241659
Use the Grappling Hook |q 34840/4 |goto 68.68,69.77
step
talk Morketh Bladehowl##80339
turnin Dropping Bombs##34840 |goto 68.77,70.52
step
_Next to you:_
talk Morketh Bladehowl
accept Punching Through##34855
accept Prized Repossessions##34858
accept Supply Recovery##34860
stickystart "Obtain_Iron_Horde_Shipments"
stickystart "Collect_Gordunni_Toothpicks"
step
Run up the stairs |goto 68.55,79.04 < 10 |only if walking
Enter the building |goto 68.61,82.51 < 7 |walk
kill Vizier Vorgorsh##80294 |q 34855/1 |goto 68.54,82.87
|tip Inside the building.
step
Enter the building |goto 67.11,77.45 < 7 |walk
kill Vizier Zulmork##80292 |q 34855/2 |goto 67.1,77.0
|tip Inside the building.
step
Enter the building |goto 66.15,80.72 < 7 |walk
kill Vizier Cromaug##80295 |q 34855/3 |goto 66.19,81.15
|tip Inside the building.
step
_Next to you:_
talk Morketh Bladehowl
turnin Punching Through##34855
step
label "Obtain_Iron_Horde_Shipments"
clicknpc Iron Horde Shipment##80957+
|tip They look like wooden and metal chests on the ground around this area.
Obtain #6# Iron Horde Shipment |q 34860/1 |goto 68.14,79.20
step
label "Collect_Gordunni_Toothpicks"
Kill Gordunni enemies around this area
collect 6 Gordunni "Toothpick"##112006 |q 34858/1 |goto 68.14,79.20
step
_Next to you:_
talk Morketh Bladehowl
turnin Prized Repossessions##34858
turnin Supply Recovery##34860
accept The Lord of the Gordunni##34870
stickystart "Collect_Fury_Of_The_Forge"
step
Run up the stairs |goto 65.44,80.11 < 10 |only if walking
use the Emergency Rocket Pack##112307
|tip Use it as you fight Witch Lord Morkurk.
|tip Use it when he is almost finished casting Astral Annihilation.
|tip It will launch you up, to avoid taking damage.
kill Witch Lord Morkurk##80335 |q 34870/1 |goto 63.99,81.79
step
label "Collect_Fury_Of_The_Forge"
kill Witch Lord Morkurk##80335 |notinsticky
collect Fury of the Forge##112308 |q 34870/2 |goto 63.99,81.79
step
Watch the dialogue
talk Morketh Bladehowl##80342
|tip He runs to this location.
turnin The Lord of the Gordunni##34870 |goto 64.50,81.62
accept The Only Way to Travel##34971 |goto 64.50,81.62
step
Watch the dialogue
|tip Morketh Bladehowl will teleport you.
Return to Vol'jin's Pride |goto 71.27,29.68 < 10 |noway |c |q 34971
step
talk Morketh Bladehowl##80623
turnin The Only Way to Travel##34971 |goto 71.19,29.90
accept Armor Up##34972 |goto 71.19,29.90
step
talk Knight-Lord Dranarus##79612
accept The Lady of Light##34696 |goto 71.84,29.75
step
Run up the stairs |goto 62.76,65.07 < 20 |only if walking
talk Vindicator Nobundo##78482
|tip He fights around this area.
accept Disrupting the Flow##33917 |goto 56.81,66.04
step
talk Soulbinder Nyami##78519
accept The Heart of Auchindoun##33920 |goto 56.51,67.13
step
talk Lady Liadrin##75121
turnin The Lady of Light##34696 |goto 55.49,67.67
accept Holding the Line##34418 |goto 55.49,67.67
step
talk Mehlar Dawnblade##78577
|tip He walks around this area.
accept Powering the Defenses##35249 |goto 55.55,66.99
step
talk Ranger Belonis##79696
accept Every Bit Counts##34710 |goto 55.38,66.78
step
talk Roka##81078
fpath Exarch's Refuge |goto 54.54,67.82
stickystart "Slay_Demons_34407"
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 54.86,62.34 |count 1
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 55.58,64.24 |count 2
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 56.28,63.32 |count 3
step
kill O'mogg Blackheart##76876 |q 33920/1 |goto 56.53,62.80
step
click Karab'uun##229269
collect Karab'uun##108733 |q 33920/2 |goto 56.69,62.48
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 57.24,64.01 |count 4
step
label "Slay_Demons_34407"
Kill enemies around this area
Slay #15# Demons |q 34418/1 |goto 55.81,63.98
step
talk Vindicator Nobundo##78482
|tip He fights around this area.
turnin Disrupting the Flow##33917 |goto 56.81,66.04
step
talk Soulbinder Nyami##78519
turnin The Heart of Auchindoun##33920 |goto 56.51,67.13
step
talk Lady Liadrin##75121
turnin Holding the Line##34418 |goto 55.49,67.67
step
Enter the building |goto 58.58,65.06 < 7 |walk
talk Soulbinder Tuulani##77737
|tip Inside the building.
turnin Powering the Defenses##35249 |goto Talador/13 68.40,19.34
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
talk Lady Liadrin##75121
turnin Nightmare in the Tomb##33530 |goto Talador/0 55.49,67.67
step
talk Soulbinder Tuulani##78520
turnin We Must Construct Additional Pylons##34351 |goto 55.12,67.41
step
talk Lady Liadrin##75121
accept Sunsworn Camp##34451 |goto 55.49,67.67
step
talk Lady Liadrin##75246
turnin Sunsworn Camp##34451 |goto 61.01,72.54
step
talk Soulbinder Nyami##75256
accept Into the Hollow##33970 |goto 60.92,72.45
step
talk Soulbinder Tuulani##78028
accept Antivenin##33971 |goto 60.91,72.54
step
talk Mehlar Dawnblade##75249
accept Vile Defilers##33972 |goto 60.52,72.40
stickystart "Collect_Deathweb_Fangs"
step
click Defiling Crystal##228051
Destroy the Defiling Crystal |q 33972/1 |goto 59.13,80.86 |count 1
step
click Defiling Crystal##228051
Destroy the Defiling Crystal |q 33972/1 |goto 61.59,81.71 |count 2
stickystop "Collect_Deathweb_Fangs"
step
Enter the mine |goto 61.12,83.98 < 10 |walk
click Defiling Crystal##228051
|tip Inside the mine.
Destroy the Defiling Crystal |q 33972/1 |goto 64.01,85.59 |count 3
step
click Defiling Crystal##228051
|tip Inside the mine.
Destroy the Defiling Crystal |q 33972/1 |goto 65.30,85.43 |count 4
step
kill Xanatos the Defiler##75294 |q 33970/1 |goto 65.63,86.87
|tip Inside the mine.
step
click Sha'tari##229596
|tip Inside the mine.
collect Sha'tari##110683 |q 33970/2 |goto 65.77,86.87
step
click Defiling Crystal##228051
|tip Inside the mine.
Destroy the Defiling Crystal |q 33972/1 |goto 64.85,86.93 |count 5
step
Follow the path and leave the mine |goto 63.26,84.37 < 7 |c |q 33971
step
label "Collect_Deathweb_Fangs"
Kill enemies around this area
collect 9 Deathweb Fang##109744 |q 33971/1 |goto 60.53,83.24
step
talk Mehlar Dawnblade##75249
turnin Vile Defilers##33972 |goto 60.52,72.40
step
talk Soulbinder Tuulani##78028
turnin Antivenin##33971 |goto 60.91,72.54
step
talk Soulbinder Nyami##75256
turnin Into the Hollow##33970 |goto 60.92,72.45
step
talk Lady Liadrin##75246
accept Scheduled Pickup##34242 |goto 61.01,72.54
step
accept Zorkra's Fall##34660 |goto 54.10,86.23
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
turnin Scheduled Pickup##34242 |goto 50.42,87.52
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
talk Lady Liadrin##75389
accept Ogre Diplomacy##34122 |goto 42.96,76.24
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
Slay #10# Ango'rosh |q 34122/1 |goto 41.08,83.81
step
talk Lady Liadrin##75389
turnin Ogre Diplomacy##34122 |goto 42.96,76.24
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.43,75.95
step
talk Lady Liadrin##75389
accept Retribution for the Light##34144 |goto 42.96,76.24
step
talk Exarch Maladaar##75392
accept Into the Heart of Madness##34157 |goto 42.92,76.12
stickystart "Slay_Demons_34144"
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
label "Slay_Demons_34144"
Kill enemies around this area
Slay #15# Demons |q 34144/1 |goto 34.96,74.88
step
Follow the path up |goto 32.87,74.54 < 15 |only if walking
Enter the cave |goto 31.87,74.55 < 10 |walk
talk Soulbinder Nyami##77582
|tip Inside the cave.
turnin Into the Heart of Madness##34157 |goto 31.21,73.60
accept Destination: Unknown##34564 |goto 31.21,73.60
step
clicknpc Demonic Gateway##77571
|tip Inside the cave.
Take the Portal |q 34564/1 |goto 30.91,73.15
step
_Inside the Remains of Xandros:_
Watch the dialogue
kill Mongrethod##77579 |q 34564/2
|tip Your allies will help you fight.
step
_Inside the Remains of Xandros:_
clicknpc Demonic Gateway##77571
Take the Portal |q 34564/3
step
talk Lady Liadrin##77580
turnin Retribution for the Light##34144 |goto Talador/0 45.70,74.46
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34564 |goto 46.32,74.09
accept Together We Are Strong##36512 |goto 46.32,74.09
step
talk Lady Liadrin##77580
accept Come Together##34706 |goto 45.70,74.46
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
turnin Every Bit Counts##34710 |goto 49.89,56.16
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
talk Manduil Skycaller##78515
|tip Inside the mine.
accept Arcane Essence##34401 |goto 51.65,50.52
accept Caught In The Chaos##34404 |goto 51.65,50.52
stickystart "Collect_Arcane_Essences"
step
click Jorune Crystals+
|tip They look like wooden carts and buckets with purple crystals in them on the ground around this area.
|tip Inside the mine.
click Arcane Crystals+
|tip They look like piles of purple crystals on the ground around this area.
collect 10 Unrefined Power Crystals##110391 |q 34404/1 |goto 52.16,49.73
step
label "Collect_Arcane_Essences"
Kill enemies around this area
|tip Inside the mine.
collect 6 Arcane Essence##110390|q 34401/1 |goto 52.16,49.73
step
Run up the ramp |goto 52.63,50.48 < 7 |walk
talk Manduil Skycaller##78515
|tip Inside the mine.
turnin Arcane Essence##34401 |goto 51.65,50.52
turnin Caught In The Chaos##34404 |goto 51.65,50.52
accept An'dure The Giant##34414 |goto 51.65,50.52
step
kill An'dure the Awakened##78372
|tip Inside the mine.
collect Crystal Giant Heart##110418 |q 34414/1 |goto 54.23,50.02
step
Run up the ramp |goto 52.63,50.48 < 7 |walk
talk Manduil Skycaller##78515
|tip Inside the mine.
turnin An'dure The Giant##34414 |goto 51.65,50.52
accept Kaelynara Sunchaser##34447 |goto 51.65,50.52
step
talk Manduil Skycaller##78515
|tip Inside the mine.
Tell him _"I am ready to confront Kaelynara."_
Speak with Manduil |q 34447/1 |goto 51.65,50.52
step
Watch the dialogue |goto 51.65,50.52
|tip You will be teleported automatically.
Teleport to Kaelynara Sunchaser |goto 52.22,47.74 < 10 |noway |c |q 34447
step
kill Kaelynara Sunchaser##78501 |q 34447/2 |goto 52.10,47.55
step
talk Manduil Skycaller##78740 |goto 52.11,47.72
Tell him _"I am ready to return to the Jorune Mine."_
Return to Jorune Mine |goto 51.56,50.51 < 10 |noway |c |q 34447
step
talk Vindicator Doruu##78538
|tip Inside the mine.
turnin Kaelynara Sunchaser##34447 |goto 51.62,50.47
step
talk Knight-Lord Dranarus##79612
turnin Come Together##34706 |goto 71.84,29.75
step
talk Shadow Hunter Kajassa##79627
accept News from Spires of Arak##35537 |goto 71.24,29.95
|next "Leveling Guides\\Draenor (10-60)\\Spires of Arak (30-60)"
step
label "Arcane_Sanctum"
talk Foreman Grobash##79176
accept An Audience With The Archmage##34632 |goto Talador/0 71.06,29.75
step
Enter the building |goto 71.86,29.92 < 7 |walk
talk Paoni Softhoof##81359
|tip Inside the building.
home Vol'jin's Pride |goto 71.97,30.02
step
talk Archmage Khadgar##80142
turnin An Audience With The Archmage##34632 |goto 74.99,31.20
accept Making Acquaintances##34814 |goto 74.99,31.20
step
talk Dominic Arlington##80932
fpath Zangarra |goto 80.42,25.32
step
clicknpc Khadgar's Portal##45454
Take Khadgar's Portal |q 34814/1 |goto 80.63,26.12
step
Reach Khadgar's Tower |offtaxi |goto 83.63,30.97 |q 34814 |notravel
step
talk Magister Krelas##79393
turnin Making Acquaintances##34814 |goto 84.19,30.30
accept Creating the Ink##34634 |goto 84.19,30.30
accept Forming the Scroll##34635 |goto 84.19,30.30
accept Gathering the Spark##34636 |goto 84.19,30.30
stickystart "Prune_Slumbering_Protectos_Sanctum"
stickystart "Collect_Pulsating_Pustules_Sanctum"
step
clicknpc Arcane Vortex##87570
Harvest the Energy |q 34636/1 |goto 83.25,28.68 |count 1
step
clicknpc Arcane Vortex##87570
Harvest the Energy |q 34636/1 |goto 81.74,29.23 |count 2
step
clicknpc Arcane Vortex##87570
Harvest the Energy |q 34636/1 |goto 82.73,27.10 |count 3
step
_Next to you:_
talk Magister Krelas
turnin Gathering the Spark##34636
step
label "Prune_Slumbering_Protectos_Sanctum"
clicknpc Slumbering Protector##79330+
|tip They look like large tree creatures on the ground around this area.
Prune #3# Slumbering Protectors |q 34635/1 |goto 81.94,28.12
step
label "Collect_Pulsating_Pustules_Sanctum"
Kill enemies around this area
collect 30 Pulsating Pustule##111322 |q 34634/1 |goto 81.94,28.12
step
_Next to you:_
talk Magister Krelas
turnin Creating the Ink##34634
turnin Forming the Scroll##34635
accept Next Steps##34874
step
clicknpc Khadgar's Portal##95699
Return to Camp |ontaxi |goto 83.57,30.92
|only if dist("Talador/0 83.57,30.92") < 250 and walking
step
talk Magister Krelas##80965
turnin Next Steps##34874 |goto 71.33,29.60
accept The Foot of the Fortress##34878 |goto 71.33,29.60
step
talk Provisioner Naya##79921
accept Logistical Nightmare##34766 |goto 71.19,29.44
step
talk Shadow Hunter Kajassa##79627
accept One Step Ahead##34683 |goto 71.24,29.94
stickystart "Collect_Garrison_Records_Sanctum"
step
click Sack of Supplies##230729+
|tip They look like large brown bags hanging from objects and on the ground around this area.
collect 5 Sack of Supplies##111735 |q 34766/1 |goto 69.01,29.24
step
label "Collect_Garrison_Records_Sanctum"
click Garrison Records##230735+
|tip They look like piles of books and papers on the ground around this area.
collect 5 Garrison Records##111736 |q 34766/2 |goto 69.01,29.24
step
talk Provisioner Naya##79921
turnin Logistical Nightmare##34766 |goto 71.19,29.44
accept Send Them Running##34803 |goto 71.19,29.44
step
kill Vicegnaw##80053 |q 34803/1 |goto 70.53,27.62
step
talk Provisioner Naya##79921
turnin Send Them Running##34803 |goto 71.19,29.43
step
Follow the road |goto 66.61,20.80 < 50 |only if walking
talk Gazlowe##75873
accept Gazlowe's Solution##33721 |goto 62.06,10.40
step
talk Draka##75808
accept In Short Supply##33735 |goto 62.01,10.99
step
talk Durotan##75806
turnin One Step Ahead##34683 |goto 61.51,10.95
accept Through the Looking Glass##33754 |goto 61.51,10.95
step
click Gazlowe's Eye 'n' Ear##225769
Look Through Gazlowe's Eye 'n' Ear |q 33754/1 |goto 61.55,11.06
step
talk Durotan##75806
turnin Through the Looking Glass##33754 |goto 61.51,10.95
accept Old Friends, New Enemies##35226 |goto 61.51,10.95
accept Too Many Irons in the Fire##33722 |goto 61.51,10.95
stickystart "Collect_Iron_Horde_Explosives_Sanctum"
stickystart "Slay_Iron_Horde_Sanctum"
step
use Gazlowe's Solution##107899
Destroy the Blackrock Forge |q 33721/3 |goto 57.85,15.40
step
use Gazlowe's Solution##107899
Destroy the Munitions Landing |q 33721/2 |goto 56.23,12.34
step
use Gazlowe's Solution##107899
Destroy the Thunderlord Cache |q 33721/1 |goto 56.66,9.70
step
label "Collect_Iron_Horde_Explosives_Sanctum"
click Iron Horde Explosives##235141+
|tip They look like wooden boxes with metal bands around them on the ground around this area.
collect 6 Iron Horde Explosives##107855 |q 33735/1 |goto 56.33,12.51
step
label "Slay_Iron_Horde_Sanctum"
Kill enemies around this area
Slay #15# Iron Horde |q 33722/1 |goto 57.44,12.69
step
Enter the building |goto 54.52,7.02 < 7 |walk
Meet Durotan at Orunai Coast |q 35226/1 |goto 53.86,7.02
|tip Inside the building.
step
Watch the dialogue
|tip Outside, on the balcony of the building.
Confront Orgrim |q 35226/2 |goto 52.92,7.06
step
kill Lieutenant Dilka
Slay the Grom'kar Lieutenant |q 35226/3 |goto 52.92,7.06
step
click Iron Shredder Decommission Orders##225726
accept Decommissioned Mission##33720 |goto 59.96,16.49
step
Enter the cave |goto 61.65,14.42 < 10 |walk
kill Engineer Draxen##76791 |q 33720/1 |goto 63.16,14.49
|tip Inside the cave.
step
clicknpc Decommissioned Iron Shredder##75869
|tip Inside the cave.
Steal the Decommissioned Iron Shredder |q 33720/2 |goto 63.24,14.56
step
Enter the cave |goto 59.91,20.17 < 7 |walk
Transport the Decommissioned Iron Shredder to Draka's Den |q 33720/3 |goto 59.21,20.33
|tip Inside the cave.
step
talk Draka##75808
|tip Inside the cave.
turnin In Short Supply##33735 |goto 58.92,20.15
accept Iron Them Out##33736 |goto 58.92,20.15
step
talk Durotan##75958
|tip Inside the cave.
turnin Old Friends, New Enemies##35226 |goto 58.91,20.20
turnin Too Many Irons in the Fire##33722 |goto 58.91,20.20
accept Dreadpiston##34950 |goto 58.91,20.20
step
talk Gazlowe##75924
|tip Inside the cave.
turnin Gazlowe's Solution##33721 |goto 58.95,20.72
turnin Decommissioned Mission##33720 |goto 58.95,20.72
accept Vol. X Pages ?##33724 |goto 58.95,20.72
stickystart "Collect_Iron_Shredder_Operational_Manual_Vol_X_Pages_Sanctum"
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 33736/1 |goto 59.42,29.30 |count 1
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 33736/1 |goto 58.42,29.59 |count 2
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 33736/1 |goto 57.19,31.17 |count 3
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 33736/1 |goto 56.47,29.11 |count 4
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 33736/1 |goto 55.76,29.16 |count 5
step
click Iron Horde Siege Engine##225760
Destroy the Siege Weapon |q 33736/1 |goto 55.78,28.46 |count 6
step
kill Dreadpiston##80576 |q 34950/1 |goto 56.45,27.35
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
label "Collect_Iron_Shredder_Operational_Manual_Vol_X_Pages_Sanctum"
Kill enemies around this area
collect 20 Iron Shredder Operation Manual Vol. X Page ?##107843 |q 33724/1 |goto 56.10,26.95
step
talk Tega Skyblade##81058
fpath Durotan's Grasp |goto 55.42,40.82
step
talk Draka##75808
turnin Iron Them Out##33736 |goto 55.55,40.98
step
talk Durotan##75959
turnin Dreadpiston##34950 |goto 55.59,40.95
step
talk Gazlowe##75941
turnin Vol. X Pages ?##33724 |goto 55.68,41.16
accept An Eye for a Spy##33728 |goto 55.68,41.16
step
click Gazlowe's Eye 'n' Ear##225769
Look Through Gazlowe's Eye 'n' Ear |q 33728/1 |goto 55.76,41.09
step
talk Gazlowe##75941
turnin An Eye for a Spy##33728 |goto 55.68,41.16
accept Born to Shred##33729 |goto 55.68,41.16
step
clicknpc Iron Shredder Prototype##75721
Take Control of the Iron Shredder |q 33729/1 |goto 55.40,41.14
step
Cross the bridge |goto 57.33,37.67 < 15 |walk
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #100# Iron Horde in Tuurem |q 33729/2 |goto 60.74,37.98
step
talk Iron Shredder Prototype##75968
|tip Click your character.
turnin Born to Shred##33729
accept Engineering Her Demise##33730
step
Watch the dialogue
kill Ketya Shrediron##75986 |q 33730/1 |goto 61.06,38.76
step
talk Durotan##75959
turnin Engineering Her Demise##33730 |goto 55.59,40.95
accept Khadgar's Plan##34962 |goto 55.59,40.95
step
talk Archmage Khadgar##75805
turnin Khadgar's Plan##34962 |goto 54.18,36.43
accept The Battle for Shattrath##33731 |goto 54.18,36.43
step
Begin the Scenario |scenariostart |goto 50.69,35.35 |q 33731
step
talk Gazlowe##77191
Tell him _"Thanks. I'll meet them at the docks."_
Speak with Gazlowe |scenariogoal 1/25835 |goto Shattrath City 2/0 74.76,74.68 |q 33731
step
clicknpc Iron Star##86671
Enter the Iron Star |scenariogoal 2/25177 |goto 74.66,74.58 |q 33731
step
Reach the Harbor |scenariogoal 3/25176 |goto 62.97,52.27 |q 33731
step
talk Archmage Khadgar##77195
Tell him _"Begin your spell. I'll protect you!"_
Speak with Archmage Khadgar |scenariogoal 3/25186 |goto 63.03,50.89 |q 33731
step
Kill enemies around this area
|tip Stand in the circles on the ground.
|tip They will heal you.
Protect Khadgar |scenariogoal 4/24351 |goto 63.08,47.52 |q 33731
step
Confront Blackhand |scenariogoal 5/25178 |goto 66.16,42.21 |q 33731
step
Watch the dialogue
talk Archmage Khadgar##77195
Tell him _"I am ready to teleport to the ship."_
Speak with Khadgar to Teleport to the Battleship |scenariogoal 5/24679 |goto 66.16,42.21 |q 33731
step
Reach the Battleship |goto 72.38,23.96 < 10 |c |q 33731 |notravel
step
Kill enemies around this area
|tip Kill all of the enemies on the ship.
kill Machinist B'randt##80962
Defeat Machinist B'randt |scenariogoal 5/24352 |goto 70.26,23.46 |q 33731
step
talk Archmage Khadgar##77195
Tell him _"Then let's hurry!"_
Speak with Khadgar to Teleport to the Flagship |scenariogoal 6/24680 |goto 70.30,24.03 |q 33731
step
Reach the Flagship |goto 64.28,33.30 < 10 |c |q 33731 |notravel
step
Watch the dialogue
kill Blackhand##77256
Survive Blackhand's Onslaught |scenariogoal 6/24678 |goto 65.60,37.93 |q 33731
Complete the Battle for Shattrath |q 33731/1 |goto 65.60,37.93
step
click Portal to Talador |goto 65.68,42.41
Return to Vol'jin's Pride |goto Talador/0 71.36,29.62 < 10 |noway |c |q 33731
step
talk Durotan##79604
turnin The Battle for Shattrath##33731 |goto 71.43,29.61
step
talk Crystal-Shaper Barum##75896
accept Burning Sky##33740 |goto 73.07,38.73
accept Pieces of Us##33734 |goto 73.07,38.73
stickystart "Slay_Adherent_Invaders_Sanctum"
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
label "Slay_Adherent_Invaders_Sanctum"
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
accept Seek Out the Seer##34721 |goto 71.41,47.60
Also check around [67.19,42.90]
step
talk Ziz Fizziks##79870
accept Clear!##34751 |goto 64.21,47.71
step
kill Lakebottom Zapper##79636+
|tip Underwater.
collect 6 Zapper Sac##111637 |q 34751/1 |goto 61.75,45.75
step
talk Ziz Fizziks##79870
turnin Clear!##34751 |goto 64.21,47.71
step
Watch the dialogue
talk Pleasure-Bot 8000##79853
accept New Owner##35238 |goto 64.24,47.80
step
talk Seer Malune##76665
turnin Seek Out the Seer##34721 |goto 65.43,50.73
accept Dust of the Dead##33872 |goto 65.43,50.73
accept Cure of Aruunem##33873 |goto 65.43,50.73
stickystart "Collect_Handfuls_Of_Duskwing_Dust_Sanctum"
step
click Aruunem Berry Bush##226888+
|tip They look like bushes with small red berries on them on the ground around this area.
collect 60 Aruunem Berries##108655 |q 33873/1 |goto 66.87,52.70
step
label "Collect_Handfuls_Of_Duskwing_Dust_Sanctum"
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
stickystart "Calm_Young_Prowlers_Sanctum"
step
kill Frenzied Ancient##79409 |q 34639/1 |goto 76.25,48.97
|tip He looks like a burning tree that walks around this area.
|only if haveq(34639) or completedq(34639)
step
label "Calm_Young_Prowlers_Sanctum"
clicknpc Panicked Young Prowler##79432+
|tip They look like tigers running on the ground around this area.
Calm #7# Young Prowlers |q 34639/2 |goto 76.25,48.97
|only if haveq(34639) or completedq(34639)
step
talk Crystal-Shaper Barum##75913
turnin Burning Sky##33740 |goto 76.71,55.24
turnin Pieces of Us##33734 |goto 76.71,55.24
turnin Barum's Notes##33761 |goto 76.71,55.24
stickystart "Collect_Shadow_Tomes_Sanctum"
stickystart "Evacuate_Outcasts_Sanctum"
step
Enter the cave |goto 80.23,61.76 < 10 |walk
kill Wing-Guard Kuuan##75353 |q 33582/1 |goto 80.34,64.01
|tip He walks around this area.
|tip Inside the cave.
step
label "Collect_Shadow_Tomes_Sanctum"
click Shadow Tome+
|tip They look like small red books with various names on the ground around this area.
collect 6 Shadow Tome##107391 |q 33581/1 |goto 76.67,62.15
You can find more inside the caves at: |notinsticky
[80.34,64.01]
[75.15,64.99]
[74.58,65.44]
step
label "Evacuate_Outcasts_Sanctum"
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
Run up the stairs |goto 62.74,65.07 < 20 |only if walking
talk Magister Krelas##80396
turnin The Foot of the Fortress##34878 |goto 62.25,68.29
accept Dropping In##34879 |goto 62.25,68.29
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Catapult |q 34879/1 |goto 63.52,69.17 |count 1
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Catapult |q 34879/1 |goto 65.53,68.91 |count 2
step
clicknpc Gordunni Boulderthrower##80428
Destroy the Catapult |q 34879/1 |goto 66.73,68.12 |count 3
step
Meet Krelas at the Gate |q 34879/2 |goto 68.81,69.43
step
click Krelas' Portal
Take the Portal |q 34879/3 |goto 68.61,69.72
step
talk Magister Krelas##80390
turnin Dropping In##34879 |goto 68.30,70.33
accept While We're in the Neighborhood##34887 |goto 68.30,70.33
accept Vicious Viziers##34888 |goto 68.30,70.33
accept Orbs of Power##34889 |goto 68.30,70.33
stickystart "Collect_Gordunni_Runebeads_Sanctum"
step
click Astral Ward##230960
Destroy the Astral Ward |q 34889/1 |goto 70.22,72.32 |count 1
step
click Astral Ward##230960
Destroy the Astral Ward |q 34889/1 |goto 68.19,76.36 |count 2
step
click Astral Ward##230960
Destroy the Astral Ward |q 34889/1 |goto 69.43,79.67 |count 3
step
Run up the stairs |goto 68.55,79.04 < 10 |only if walking
click Astral Ward##230960
Destroy the Astral Ward |q 34889/1 |goto 69.01,82.08 |count 4
step
Enter the building |goto 68.61,82.51 < 7 |walk
kill Vizier Vorgorsh##80294 |q 34888/1 |goto 68.54,82.87
|tip Inside the building.
step
click Astral Ward##230960
Destroy the Astral Ward |q 34889/1 |goto 67.51,77.93 |count 5
step
_Next to you:_
talk Magister Krelas
turnin Orbs of Power##34889
step
Enter the building |goto 67.11,77.45 < 7 |walk
kill Vizier Zulmork##80292 |q 34888/2 |goto 67.1,77.0
|tip Inside the building.
step
Enter the building |goto 66.15,80.72 < 7 |walk
kill Vizier Cromaug##80295 |q 34888/3 |goto 66.19,81.15
|tip Inside the building.
step
_Next to you:_
talk Magister Krelas
turnin Vicious Viziers##34888
step
label "Collect_Gordunni_Runebeads_Sanctum"
Kill Gordunni enemies around this area
collect 8 Gordunni Runebeads##112088 |q 34887/1 |goto 68.14,79.20
step
_Next to you:_
talk Magister Krelas
turnin While We're in the Neighborhood##34887
accept The Final Step##34890
step
Run up the stairs |goto 65.44,80.11 < 10 |only if walking
use the Scroll of Mass Teleportation##112543
|tip This will summon allies to help you fight Witch Lord Morkurk.
|tip Run into the blue bubble when your helpers tell you to take cover within the shield.
|tip This will protect you from Witch Lord Morkurk's powerful attack.
kill Witch Lord Morkurk##80335 |q 34890/1 |goto 64.07,81.79
step
click Arcane Nexus##231056
collect Arcane Nexus##112196 |q 34890/2 |goto 64.27,81.79
step
_Next to you:_
talk Magister Krelas
turnin The Final Step##34890
accept Due Cause to Celebrate##34712
step
Watch the dialogue
|tip Magister Krelas will teleport you.
Return to Vol'jin's Pride |goto 71.21,29.79 < 10 |noway |c |q 34712
step
talk Magister Krelas##80553
turnin Due Cause to Celebrate##34712 |goto 71.17,29.88
accept Joining the Ranks##34949 |goto 71.17,29.88
step
talk Knight-Lord Dranarus##79612
accept The Lady of Light##34696 |goto 71.84,29.75
step
Run up the stairs |goto 62.76,65.07 < 20 |only if walking
talk Vindicator Nobundo##78482
|tip He fights around this area.
accept Disrupting the Flow##33917 |goto 56.81,66.04
step
talk Soulbinder Nyami##78519
accept The Heart of Auchindoun##33920 |goto 56.51,67.13
step
talk Lady Liadrin##75121
turnin The Lady of Light##34696 |goto 55.49,67.67
accept Holding the Line##34418 |goto 55.49,67.67
step
talk Mehlar Dawnblade##78577
|tip He walks around this area.
accept Powering the Defenses##35249 |goto 55.55,66.99
step
talk Ranger Belonis##79696
accept Every Bit Counts##34710 |goto 55.38,66.78
step
talk Roka##81078
fpath Exarch's Refuge |goto 54.54,67.82
stickystart "Slay_Demons_34407"
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 54.86,62.34 |count 1
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 55.58,64.24 |count 2
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 56.28,63.32 |count 3
step
kill O'mogg Blackheart##76876 |q 33920/1 |goto 56.53,62.80
step
click Karab'uun##229269
collect Karab'uun##108733 |q 33920/2 |goto 56.69,62.48
step
click Burning Resonator##229139
Destroy the Burning Resonator |q 33917/1 |goto 57.24,64.01 |count 4
step
label "Slay_Demons_34407"
Kill enemies around this area
Slay #15# Demons |q 34418/1 |goto 55.81,63.98
step
talk Vindicator Nobundo##78482
|tip He fights around this area.
turnin Disrupting the Flow##33917 |goto 56.81,66.04
step
talk Soulbinder Nyami##78519
turnin The Heart of Auchindoun##33920 |goto 56.51,67.13
step
talk Lady Liadrin##75121
turnin Holding the Line##34418 |goto 55.49,67.67
step
Enter the building |goto 58.58,65.06 < 7 |walk
talk Soulbinder Tuulani##77737
|tip Inside the building.
turnin Powering the Defenses##35249 |goto Talador/13 68.40,19.34
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
talk Lady Liadrin##75121
turnin Nightmare in the Tomb##33530 |goto Talador/0 55.49,67.67
step
talk Soulbinder Tuulani##78520
turnin We Must Construct Additional Pylons##34351 |goto 55.12,67.41
step
talk Lady Liadrin##75121
accept Sunsworn Camp##34451 |goto 55.49,67.67
step
talk Lady Liadrin##75246
turnin Sunsworn Camp##34451 |goto 61.01,72.54
step
talk Soulbinder Nyami##75256
accept Into the Hollow##33970 |goto 60.92,72.45
step
talk Soulbinder Tuulani##78028
accept Antivenin##33971 |goto 60.91,72.54
step
talk Mehlar Dawnblade##75249
accept Vile Defilers##33972 |goto 60.52,72.40
stickystart "Collect_Deathweb_Fangs"
step
click Defiling Crystal##228051
Destroy the Defiling Crystal |q 33972/1 |goto 59.13,80.86 |count 1
step
click Defiling Crystal##228051
Destroy the Defiling Crystal |q 33972/1 |goto 61.59,81.71 |count 2
stickystop "Collect_Deathweb_Fangs"
step
Enter the mine |goto 61.12,83.98 < 10 |walk
click Defiling Crystal##228051
|tip Inside the mine.
Destroy the Defiling Crystal |q 33972/1 |goto 64.01,85.59 |count 3
step
click Defiling Crystal##228051
|tip Inside the mine.
Destroy the Defiling Crystal |q 33972/1 |goto 65.30,85.43 |count 4
step
kill Xanatos the Defiler##75294 |q 33970/1 |goto 65.63,86.87
|tip Inside the mine.
step
click Sha'tari##229596
|tip Inside the mine.
collect Sha'tari##110683 |q 33970/2 |goto 65.77,86.87
step
click Defiling Crystal##228051
|tip Inside the mine.
Destroy the Defiling Crystal |q 33972/1 |goto 64.85,86.93 |count 5
step
Follow the path and leave the mine |goto 63.26,84.37 < 7 |c |q 33971
step
label "Collect_Deathweb_Fangs"
Kill enemies around this area
collect 9 Deathweb Fang##109744 |q 33971/1 |goto 60.53,83.24
step
talk Mehlar Dawnblade##75249
turnin Vile Defilers##33972 |goto 60.52,72.40
step
talk Soulbinder Tuulani##78028
turnin Antivenin##33971 |goto 60.91,72.54
step
talk Soulbinder Nyami##75256
turnin Into the Hollow##33970 |goto 60.92,72.45
step
talk Lady Liadrin##75246
accept Scheduled Pickup##34242 |goto 61.01,72.54
step
accept Zorkra's Fall##34660 |goto 54.10,86.23
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
turnin Scheduled Pickup##34242 |goto 50.42,87.52
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
talk Lady Liadrin##75389
accept Ogre Diplomacy##34122 |goto 42.96,76.24
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
Slay #10# Ango'rosh |q 34122/1 |goto 41.08,83.81
step
talk Lady Liadrin##75389
turnin Ogre Diplomacy##34122 |goto 42.96,76.24
step
talk Restalaan##77799
turnin Desperate Measures##34092 |goto 43.43,75.95
step
talk Lady Liadrin##75389
accept Retribution for the Light##34144 |goto 42.96,76.24
step
talk Exarch Maladaar##75392
accept Into the Heart of Madness##34157 |goto 42.92,76.12
stickystart "Slay_Demons_34144"
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
label "Slay_Demons_34144"
Kill enemies around this area
Slay #15# Demons |q 34144/1 |goto 34.96,74.88
step
Follow the path up |goto 32.87,74.54 < 15 |only if walking
Enter the cave |goto 31.87,74.55 < 10 |walk
talk Soulbinder Nyami##77582
|tip Inside the cave.
turnin Into the Heart of Madness##34157 |goto 31.21,73.60
accept Destination: Unknown##34564 |goto 31.21,73.60
step
clicknpc Demonic Gateway##77571
|tip Inside the cave.
Take the Portal |q 34564/1 |goto 30.91,73.15
step
_Inside the Remains of Xandros:_
Watch the dialogue
kill Mongrethod##77579 |q 34564/2
|tip Your allies will help you fight.
step
_Inside the Remains of Xandros:_
clicknpc Demonic Gateway##77571
Take the Portal |q 34564/3
step
talk Lady Liadrin##77580
turnin Retribution for the Light##34144 |goto Talador/0 45.70,74.46
step
talk Soulbinder Tuulani##79434
turnin Destination: Unknown##34564 |goto 46.32,74.09
accept Together We Are Strong##36512 |goto 46.32,74.09
step
talk Lady Liadrin##77580
accept Come Together##34706 |goto 45.70,74.46
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
turnin Every Bit Counts##34710 |goto 49.89,56.16
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
talk Manduil Skycaller##78515
|tip Inside the mine.
accept Arcane Essence##34401 |goto 51.65,50.52
accept Caught In The Chaos##34404 |goto 51.65,50.52
stickystart "Collect_Arcane_Essences"
step
click Jorune Crystals+
|tip They look like wooden carts and buckets with purple crystals in them on the ground around this area.
|tip Inside the mine.
click Arcane Crystals+
|tip They look like piles of purple crystals on the ground around this area.
collect 10 Unrefined Power Crystals##110391 |q 34404/1 |goto 52.16,49.73
step
label "Collect_Arcane_Essences"
Kill enemies around this area
|tip Inside the mine.
collect 6 Arcane Essence##110390|q 34401/1 |goto 52.16,49.73
step
Run up the ramp |goto 52.63,50.48 < 7 |walk
talk Manduil Skycaller##78515
|tip Inside the mine.
turnin Arcane Essence##34401 |goto 51.65,50.52
turnin Caught In The Chaos##34404 |goto 51.65,50.52
accept An'dure The Giant##34414 |goto 51.65,50.52
step
kill An'dure the Awakened##78372
|tip Inside the mine.
collect Crystal Giant Heart##110418 |q 34414/1 |goto 54.23,50.02
step
Run up the ramp |goto 52.63,50.48 < 7 |walk
talk Manduil Skycaller##78515
|tip Inside the mine.
turnin An'dure The Giant##34414 |goto 51.65,50.52
accept Kaelynara Sunchaser##34447 |goto 51.65,50.52
step
talk Manduil Skycaller##78515
|tip Inside the mine.
Tell him _"I am ready to confront Kaelynara."_
Speak with Manduil |q 34447/1 |goto 51.65,50.52
step
Watch the dialogue |goto 51.65,50.52
|tip You will be teleported automatically.
Teleport to Kaelynara Sunchaser |goto 52.22,47.74 < 10 |noway |c |q 34447
step
kill Kaelynara Sunchaser##78501 |q 34447/2 |goto 52.10,47.55
step
talk Manduil Skycaller##78740 |goto 52.11,47.72
Tell him _"I am ready to return to the Jorune Mine."_
Return to Jorune Mine |goto 51.56,50.51 < 10 |noway |c |q 34447
step
talk Vindicator Doruu##78538
|tip Inside the mine.
turnin Kaelynara Sunchaser##34447 |goto 51.62,50.47
step
talk Knight-Lord Dranarus##79612
turnin Come Together##34706 |goto 71.84,29.75
step
talk Shadow Hunter Kajassa##79627
accept News from Spires of Arak##35537 |goto 71.24,29.95
|next "Leveling Guides\\Draenor (10-60)\\Spires of Arak (30-60)"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Spires of Arak (30-60)",{
next="Leveling Guides\\Draenor (10-60)\\Nagrand (35-60)",
condition_suggested=function() return level >= 30 and level <= 50 and not completedq(35704) end,
image=ZGV.IMAGESDIR.."SpiresOfArak",
startlevel=30,
},[[
step
#include "Garrison_Rokhan"
turnin News from Spires of Arak##35537
accept Arakkoa Exodus##34653
step
#include "Garrison_Flightmaster"
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
talk Shadow Hunter Ukambe##81890
accept One of Our Own##35272 |goto 45.90,46.36
step
talk Shadow-Sage Iskar##80153
Tell him "_Your prisoner is with me. He means your people no harm._"
Convince Shadow-Sage Iskar |q 35272/1 |goto 46.51,45.61
step
talk Shadow Hunter Ukambe##81890
turnin One of Our Own##35272 |goto 45.90,46.36
accept Inspecting the Troops##35275 |goto 45.90,46.36
step
Follow the path |goto 41.88,48.44 < 40 |only if walking
talk Shadow Hunter Ukambe##81913
turnin Inspecting the Troops##35275 |goto 40.07,44.04
step
talk Taskmaster Gornek##81920
accept Orders, Commander?##35277 |goto 40.18,43.50
step
clicknpc Drafting Table##79177
Use the Drafting Table |q 35277/1 |goto 40.16,43.39
step
clicknpc Drafting Table##79177
|tip Select the building you would like to make.
|tip We recommend the Hearthfire Tavern, for the XP buff.
|tip Otherwise, it doesn't matter, just preference.
Select a Building |q 35277/2 |goto 40.16,43.39
step
_Which Building Did You Choose?_
|tip Click the line below for the building you chose to build.
Hearthfire Tavern	|confirm	|next "Hearthfire_Tavern"
Smuggler's Den		|confirm	|next "Smugglers_Den"
step
label "Hearthfire_Tavern"
talk Taskmaster Gornek##81920
turnin Orders, Commander?##35277 |goto Spires of Arak/0 40.18,43.50
accept Befriending the Locals##37326 |goto Spires of Arak/0 40.18,43.50
step
talk Shadow Hunter Ukambe##81959
accept What's Theirs is Ours##35295 |goto 40.28,43.38
step
talk Percy##79748
accept Return to Veil Terokk##35611 |goto 40.08,44.00
|next "Merge"
step
label "Smugglers_Den"
talk Taskmaster Gornek##81920
turnin Orders, Commander?##35277 |goto Spires of Arak/0 40.18,43.50
step
talk Shadow Hunter Ukambe##81959
accept What's Theirs is Ours##35295 |goto 40.27,43.38
step
talk Provisioner Galgar##82691
accept Peace Offering##35697 |goto 40.06,43.19
step
talk Percy##79748
accept Return to Veil Terokk##35611 |goto 40.09,43.99
|next "Merge"
step
label "Merge"
Enter the building |goto 40.37,43.10 < 7 |walk
talk Taz'jari##84213
|tip Inside the building.
home Axefall |goto Spires of Arak/0 40.42,42.98 |future |q 35550
step
talk Hutou Featherwind##82612
fpath Axefall |goto 39.51,43.37
step
talk Shadow Hunter Ukambe##81961
turnin What's Theirs is Ours##35295 |goto 39.15,48.94
accept I See Dead People##35322 |goto 39.15,48.94
step
Kill enemies around this area
|tip Outside the fence surrounding the town.
collect Bryan Finn's Schematic##113095 |q 35322/1 |goto 37.09,49.15
You can find more around:
[39.73,50.48]
[39.63,52.39]
step
talk Bryan Finn##82065
|tip He walks around this area.
Choose _"Show the Schematic to Bryan."_
Show the Schematic to Bryan Finn |q 35322/2 |goto 38.94,48.84
step
talk Bryan Finn##82065
|tip He walks around this area.
turnin I See Dead People##35322 |goto 38.94,48.84
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
talk Benjamin Gibb##86597
accept Three Feet Under##36864 |goto 35.76,52.19
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
accept Admiral Taylor##36183 |goto 37.65,53.87
step
Find Admiral Taylor |q 36183/1 |goto 36.82,56.95
step
Watch the dialogue
kill Soulscythe##82314 |q 36183/2 |goto 36.82,56.95
step
kill Ephial##82320 |q 36183/3 |goto 36.82,57.34
step
talk Admiral Taylor##82375
turnin Admiral Taylor##36183 |goto 36.82,56.95
step
talk Shadow Hunter Ukambe##82402
accept Surviving in a Savage Land##35550 |goto 36.86,56.75
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
talk Taskmaster Gornek##81920
turnin Surviving in a Savage Land##35550 |goto 40.18,43.50
step
talk Scout Cel##85566
accept Pinchwhistle Gearworks##35620 |goto 40.02,43.97
step
talk Hutou Featherwind##82612
Tell him _"Take me to the Pinchwhistle Gearworks."_
Travel to Pinchwhistle Gearworks |q 35620/1 |goto 39.51,43.37
step
Fly to Pinchwhistle Gearworks |offtaxi |goto 60.80,73.40 |q 35620 |notravel
step
talk Kwiven Quickcog##82511
fpath Pinchwhistle Gearworks |goto 60.88,73.30
step
talk Engineer Gazwitz##81128
accept Spore-be-Gone##35079 |goto 61.45,72.96
step
talk Kimzee Pinchwhistle##81109
turnin Pinchwhistle Gearworks##35620 |goto 61.47,72.94
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
accept Bloodmane Pridelands##36660 |goto 52.57,73.77
|tip You will accept this quest automatically.
|only if level < 50
stickystart "Free_Captured_Ravenspeakers"
stickystart "Slay_Bloodmane_Saberons"
step
kill Shadowclaw##86138 |q 36660/5 |goto 50.53,77.02
|only if haveq(36660) or completedq(36660)
step
Follow the path |goto 48.00,73.34 < 50 |only if walking
kill Ralshira##86135 |q 36660/4 |goto 49.36,70.04
|only if haveq(36660) or completedq(36660)
step
kill Brokenfang##86076 |q 36660/3 |goto 44.94,64.69
|tip He walks around this area.
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
|next "Hearthfire_Tavern2"	|only if haveq(37326) or completedq(37326)
|next "Smugglers_Den_2"		|only if haveq(35697) or completedq(35697)
step
label "Hearthfire_Tavern2"
talk Dusk-Seer Irizzar##83463
turnin Befriending the Locals##37326 |goto Spires of Arak/0 43.90,48.91
accept A Lack of Wasps##37296 |goto Spires of Arak/0 43.90,48.91
step
kill 8 Widow Wasp##84865 |q 37296/1 |goto 43.69,48.55
step
talk Dusk-Seer Irizzar##83463
turnin A Lack of Wasps##37296 |goto 43.90,48.91
accept Not Here, Not Now##37328 |goto 43.90,48.91
step
Follow the path |goto 41.86,48.42 < 40 |only if walking
talk Taskmaster Gornek##81920
turnin Not Here, Not Now##37328 |goto 40.18,43.50
step
talk Dark Ranger Velonara##83529
accept Attempted Murder##35907 |goto 40.08,43.28
step
talk Hutou Featherwind##82612
Tell him _"Take me to Shadow's Vigil."_
Secure a Flight to Shadow's Vigil |q 35907/1 |goto 39.50,43.37
step
Fly to Shadow's Vigil |offtaxi |goto 52.37,23.40 |q 35907 |notravel
step
talk Dark Ranger Velonara##83608
|tip Inside the building.
turnin Attempted Murder##35907 |goto 52.10,23.56
accept Assassin's Mark##35924 |goto 52.10,23.56
step
clicknpc Vigilant Outcast##83633+
|tip They look like dead bird people on the ground around this area.
collect Assassin's Mark##113577 |q 35924/1 |goto 54.42,23.51
step
talk Dark Ranger Velonara##83772
turnin Assassin's Mark##35924 |goto 53.57,27.51
accept The Power of Poison##35947 |goto 53.57,27.51
accept Extrinsic Motivation##36022 |goto 53.57,27.51
stickystart "Kill_Shattered_Hand_Harvesters"
stickystart "Kill_Shattered_Hand_Sightless"
step
use the Vial of Wracking Poison##113587
Apply the Persuasive Venom |havebuff spell:167565 |goto 55.18,28.51 |q 35947
step
Kill enemies around this area
|tip You will question them to gain information as you fight them.
|tip One of them will eventually tell you the information you need.
Learn the Name and Location of G.V. |q 35947/1 |goto 55.18,28.51
step
kill Shattered Hand Blood-Singer##83760 |q 36022/3 |goto 54.50,28.43
|tip They are rare around this area.
step
label "Kill_Shattered_Hand_Harvesters"
kill 3 Shattered Hand Harvester##83706 |q 36022/2 |goto 54.91,28.15
step
label "Kill_Shattered_Hand_Sightless"
kill 4 Shattered Hand Sightless##83749 |q 36022/1 |goto 54.91,28.15
step
talk Dark Ranger Velonara##83772
turnin The Power of Poison##35947 |goto 53.57,27.51
turnin Extrinsic Motivation##36022 |goto 53.57,27.51
accept Gardul Venomshiv##36028 |goto 53.57,27.51
step
kill Gardul Venomshiv##83834
|tip He will eventually escape.
Defeat Gardul Venomshiv |q 36028/1 |goto 56.25,33.98
step
talk Dark Ranger Velonara##83899
|tip She runs to this location.
turnin Gardul Venomshiv##36028 |goto 57.14,34.49
accept We Have Him Now##36047 |goto 57.14,34.49
stickystart "Collect_Poison_Barrels"
step
Follow the path up |goto 58.38,35.57 < 20 |only if walking
kill Gardul Venomshiv##83923
collect Venomshiv's Secret Formula##113635 |q 36047/1 |goto 58.16,33.33
step
label "Collect_Poison_Barrels"
kill Shattered Hand Brewer##83940+
click Poison Barrel##233599+
|tip They look like wooden barrels with a green ring around them on the ground around this area.
collect 6 Poison Barrel##113630 |q 36047/2 |goto 58.55,35.19
step
talk Dark Ranger Velonara##83899
turnin We Have Him Now##36047 |goto 57.14,34.49
accept No Time to Waste##36166 |goto 57.14,34.49
step
talk Lunzul##84259
Choose _"Administer the antidote to Lunzul."_
Administer the Spiresalve |q 36166/1 |goto 40.11,43.26
step
talk Lunzul##84259
turnin No Time to Waste##36166 |goto 40.11,43.26
step
Watch the dialogue
talk Dark Ranger Velonara##88179
|tip It takes a while for her to appear.
accept Standing United##37276 |goto 40.04,43.33
|next "Merge_2"
step
label "Smugglers_Den_2"
talk Dusk-Seer Irizzar##83463
Tell him _"I have brought this as a peace offering. I hope we can become close allies."_
Deliver the Peace Offering |q 35697/1 |goto Spires of Arak/0 43.90,48.91
step
talk Dusk-Seer Irizzar##83463
turnin Peace Offering##35697 |goto 43.90,48.91
accept A Lack of Wasps##37296 |goto 43.90,48.91
step
kill 8 Widow Wasp##84865 |q 37296/1 |goto 43.69,48.55
step
talk Dusk-Seer Irizzar##83463
turnin A Lack of Wasps##37296 |goto 43.90,48.91
accept Not Here, Not Now##37330 |goto 43.90,48.91
step
Follow the path |goto 41.86,48.42 < 40 |only if walking
talk Taskmaster Gornek##81920
turnin Not Here, Not Now##37330 |goto 40.18,43.50
step
talk Provisioner Galgar##82691
accept Best Deals Anywhere##35705 |goto 40.06,43.18
step
talk Mixxy Weldblast##82713
turnin Best Deals Anywhere##35705 |goto 56.02,40.88
accept Sticky Situation##35706 |goto 56.02,40.88
accept Safety Measures##35879 |goto 56.02,40.88
stickystart "Slay_Surly_Bog_Denizens"
step
click Submerged Battery##233147
Save the Submerged Battery |q 35706/1 |goto 57.02,49.07 |count 1
step
click Submerged Battery##233147
Save the Submerged Battery |q 35706/1 |goto 56.44,48.08 |count 2
step
click Submerged Battery##233147
Save the Submerged Battery |q 35706/1 |goto 56.39,45.11 |count 3
step
click Submerged Battery##233147
Save the Submerged Battery |q 35706/1 |goto 55.09,42.17 |count 4
step
click Submerged Battery##233147
Save the Submerged Battery |q 35706/1 |goto 54.77,39.29 |count 5
step
label "Slay_Surly_Bog_Denizens"
Kill enemies around this area
Slay #15# Bog Denizens |q 35879/1 |goto 55.62,43.26
step
talk Mixxy Weldblast##82713
turnin Sticky Situation##35706 |goto 56.02,40.88
turnin Safety Measures##35879 |goto 56.02,40.88
accept Back on Track##35718 |goto 56.02,40.88
step
talk Trixxy Weldblast##82786
turnin Back on Track##35718 |goto 60.20,53.15
accept All Natural##35738 |goto 60.20,53.15
accept I See Dead Arakkoa##35766 |goto 60.20,53.15
stickystart "Collect_Fresh_Charcoal"
step
use the Ghostogrifier 12000##113438
Watch the dialogue
kill Talonpriest Zekk##82887 |q 35766/1 |goto 60.92,58.17
step
label "Collect_Fresh_Charcoal"
kill Smoldering Ancient##82805+
collect 30 Fresh Charcoal##113404 |q 35738/1 |goto 59.91,55.37
step
talk Trixxy Weldblast##82786
turnin All Natural##35738 |goto 60.20,53.15
turnin I See Dead Arakkoa##35766 |goto 60.20,53.15
accept The Ebon Hunter##35797 |goto 60.20,53.15
step
kill The Ebon Hunter##82933
collect Organic Laser Apparatus##113441 |q 35797/1 |goto 65.15,61.33
step
talk Trixxy Weldblast##82786
turnin The Ebon Hunter##35797 |goto 60.08,53.65
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
accept News from Nagrand##36602 |goto 46.59,46.53
|next "Leveling Guides\\Draenor (10-60)\\Nagrand (35-60)"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Nagrand (35-60)",{
image=ZGV.IMAGESDIR.."NagrandDraenor",
condition_suggested=function() return level >= 35 and level <= 50 and not completedq(35171) end,
startlevel=35,
endlevel=50,
},[[
step
#include "Garrison_Rokhan"
turnin News from Nagrand##36602 |only if haveq(36602) or completedq(36602)
turnin News from Nagrand##36607 |only if haveq(36607) or completedq(36607)
accept Taking the Fight to Nagrand##34794
step
#include "Garrison_Flightmaster"
Tell him _"I need a flight to the border of Nagrand."_
Take a Flight to Nagrand |ontaxi |q 34794 |only if haveq(34794) or completedq(34794)
Take a Flight to Nagrand |ontaxi |q 36952 |only if haveq(36952) or completedq(36952)
step
Fly to Nagrand |offtaxi |goto Nagrand D/0 91.07,72.08 |notravel |only if haveq(34794) or completedq(34794)
Fly to Nagrand |offtaxi |goto Nagrand D/0 91.07,72.08 |notravel |only if haveq(36952) or haveq(36952)
step
talk Stone Guard Brox##80001
turnin Taking the Fight to Nagrand##34794 |goto 86.38,66.20 |only if haveq(34794) or completedq(34794)
turnin Taking the Fight to Nagrand##36952 |goto 86.38,66.20 |only if haveq(36952) or completedq(36952)
accept The Might of the Warsong##34795 |goto 86.38,66.20
step
Follow the road |goto 81.42,58.36 < 50 |only if walking
talk Thrall##80003
turnin The Might of the Warsong##34795 |goto 82.84,45.08
accept More Lazy Peons##34808 |goto 82.84,45.08
step
talk Tal##82346
fpath Wor'var |goto 83.31,44.68
step
Enter the building |goto 82.81,45.25 < 7 |walk
talk Elathriel Sunstriker##82345
|tip Inside the building.
home Wor'var |goto 82.57,45.42 |q 35375 |future
step
clicknpc Lazy Peon##79906+
|tip They look like smaller green orcs on the ground around this area.
|tip You can find more inside the buildings.
Motivate #8# Lazy Peons |q 34808/1 |goto 83.05,44.67
step
talk Foreman Thazz'ril##80140
turnin More Lazy Peons##34808 |goto 82.93,44.14
accept They Call Him Lantresor of the Blade##34818 |goto 82.93,44.14
step
talk Thrall##80003
accept The Friend of My Enemy##34826 |goto 82.84,45.08
step
accept Bonus Objective: Hemet's Happy Hunting Grounds##35379 |goto 85.19,45.01
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
turnin They Call Him Lantresor of the Blade##34818 |goto 85.42,54.59
accept The Blade Itself##34849 |goto 85.42,54.59
accept Not Without My Honor##34850 |goto 85.42,54.59
stickystart "Slay_Burning_Blades_Forces_At_Hallvalor"
step
kill Instructor Luhk##80236
collect Lantresor's Blade##111938 |q 34849/1 |goto 86.01,53.79
step
click Burning Blade Locker##233815+
|tip They look like wooden and metal chests on the ground inside the buildings around this area.
collect Blademaster's Banner##111947 |q 34850/1 |goto 86.70,54.80
step
label "Slay_Burning_Blades_Forces_At_Hallvalor"
Kill enemies around this area
Slay #15# Burning Blade Forces at Hallvalor |q 34826/1 |goto 86.59,56.34
step
Enter the building |goto 85.53,54.97 < 7 |walk
talk Lantresor of the Blade##80161
|tip Inside the building.
turnin The Blade Itself##34849 |goto 85.42,54.59
turnin Not Without My Honor##34850 |goto 85.42,54.59
accept Meet Me in the Cavern##34866 |goto 85.42,54.59
step
Enter the cave |goto 88.09,55.45 < 15 |walk
talk Lantresor of the Blade##80319
|tip Inside the cave.
turnin Meet Me in the Cavern##34866 |goto Nagrand D/10 44.92,19.86
accept Challenge of the Masters##34868 |goto Nagrand D/10 44.92,19.86
step
click Burning Blade Sword##230948
|tip Inside the cave.
Kill the enemies that attack in waves
kill Warlord Dharl of the Thrice-Bloodied Blade##80327
Win the Challenge |q 34868/2 |goto 53.32,68.72
step
click Garrison Blueprints##230946
|tip It appears on the ground next to where you killed Warlord Dharl of the Thrice-Bloodied Blade.
|tip Inside the cave.
collect Garrison Blueprints##112020 |q 34868/3 |goto 53.32,68.72
step
talk Thrall##80003
turnin The Friend of My Enemy##34826 |goto Nagrand D/0 82.84,45.08
step
talk Foreman Thazz'ril##80140
turnin Challenge of the Masters##34868 |goto 82.93,44.13
accept A Choice to Make##34899 |goto 82.93,44.13
step
clicknpc Drafting Table##81119
|tip Choose the building you want to build.
|tip We recommend choosing the Wor'var Corral.
|tip This will give you a mount that you can ride, even while in combat.
Choose Between Corral & Tankworks |q 34899/1 |goto 82.95,44.10
step
talk Thrall##80003
turnin A Choice to Make##34899 |goto 82.84,45.08
step
talk Draka##81319
accept Trouble at the Overwatch##35150 |goto 82.86,45.01
step
talk Aggra##81189
accept Target of Opportunity: Telaar##34914 |goto 82.87,45.07
step
talk Lantresor of the Blade##81790
accept The Honor of a Blademaster##34770 |goto 82.59,46.74
step
talk Biggy Warprofits##83924
fpath The Ring of Trials |goto 79.82,49.72
step
talk Akrosh##79281
turnin Trouble at the Overwatch##35150 |goto 83.06,67.97
accept Obtaining Ogre Offensive Orders##35157 |goto 83.06,67.97
accept Obliterating Ogres##35155 |goto 83.06,67.97
stickystart "Slay_Ogres_At_Margok_Overwatch"
step
click Ogre Scrolls##231901
accept Removing the Paper Trail##35156 |goto 81.33,70.35
stickystart "Destroy_Boxes_Of_Ogre_Research"
step
Enter the building |goto 82.89,70.38 < 7 |walk
kill Thulgork##79266
|tip Inside the building.
collect Thulgork's Orders##111065 |q 35157/2 |goto 83.21,70.38
step
Run up the stairs |goto 82.00,72.05 < 15 |only if walking
Enter the building |goto 83.77,72.90 < 7 |walk
kill Crulgorosh##79267
|tip Inside the building.
collect Crulgorosh's Orders##111066 |q 35157/1 |goto 84.14,73.67
step
label "Destroy_Boxes_Of_Ogre_Research"
click Box of Ogre Research##230650+
|tip They look like a wooden boxes with white scrolls in them on the ground around this area.
Destroy #8# Boxes of Ogre Research |q 35156/1 |goto 82.40,73.26
step
label "Slay_Ogres_At_Margok_Overwatch"
Kill Gorian enemies around this area
Slay #15# Ogres at Mar'gok's Overwatch |q 35155/1 |goto 82.36,74.18
step
Run up the stairs |goto 83.40,75.58 < 15 |only if walking
talk Dalgorsh##81361
turnin Obtaining Ogre Offensive Orders##35157 |goto 83.79,76.84
accept Reglakk's Research##35158 |goto 83.79,76.84
turnin Obliterating Ogres##35155 |goto 83.79,76.84
turnin Removing the Paper Trail##35156 |goto 83.79,76.84
accept Removing the Reinforcements##35159 |goto 83.79,76.84
step
clicknpc Portal to Highmaul##81374
Destroy the Portal to Highmaul |q 35159/1 |goto 82.61,81.08
step
kill Grand Magister Reglakk##79105
|tip He will eventually escape.
Watch the dialogue
kill Bulgorg the Wind Slayer##79927
Stop Reglakk |q 35158/1 |goto 81.52,76.71
step
talk Thrall##80003
turnin Reglakk's Research##35158 |goto 82.84,45.08
step
talk Foreman Thazz'ril##80140
turnin Removing the Reinforcements##35159 |goto 82.93,44.13
step
talk Stalker Ogka##82080
accept Shooting the Breeze##35376 |goto 82.60,43.94
step
talk Shadow Hunter Taz##82078
accept That Pounding Sound##35374 |goto 82.54,43.98
stickystart "Accept_Someones_Missing_Axe"
stickystart "Collect_Pairs_Of_Leatherhide_Ears"
step
Kill Breezestrider enemies around this area
|tip They look like talbuks.
collect 24 Breezestrider Horn##113102 |q 35376/1 |goto 80.08,44.25
You can find more around [74.18,41.10]
step
label "Accept_Someones_Missing_Axe"
Kill Breezestrider enemies around this area |notinsticky
|tip They look like talbuks. |notinsticky
accept Someone's Missing Axe##35377 |goto 80.08,44.25
|tip You will eventually automatically accept this quest after looting.
You can find more around [74.18,41.10]
step
label "Collect_Pairs_Of_Leatherhide_Ears"
Kill Leatherhide enemies around this area
|tip They look like horned clefthooves.
collect 12 Pair of Leatherhide Ears##113100 |q 35374/1 |goto 73.57,44.97
You can find more around [74.12,56.54]
step
talk Shadow Hunter Taz##82078
turnin That Pounding Sound##35374 |goto 82.54,43.98
accept Queen of the Clefthoof##35375 |goto 82.54,43.98
step
talk Stalker Ogka##82080
turnin Shooting the Breeze##35376 |goto 82.60,43.94
turnin Someone's Missing Axe##35377 |goto 82.60,43.94
accept King of the Breezestriders##35378 |goto 82.60,43.94
step
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
step
Follow the path |goto 77.26,30.93 < 40 |only if walking
talk Gixmo Moneycash##82844
fpath Throne of the Elements |goto 73.70,26.65
step
talk Farseer Drek'Thar##80597
accept Called to the Throne##34965 |goto 71.71,19.64
step
talk Farseer Drek'Thar##80597
Tell him _"I am ready to commune with the furies."_
Speak with Farseer Drek'Thar |q 34965/1 |goto 71.71,19.64
step
Watch the dialogue
Commune with the Furies |q 34965/2 |goto 71.71,19.64
step
talk Farseer Drek'Thar##80597
turnin Called to the Throne##34965 |goto 71.71,19.64
accept Elemental Attunement##34891 |goto 71.71,19.64
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
Attune to the Earth |q 34891/1	|goto 79.29,11.68
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
Attune to the Water |q 34891/4 |goto 73.83,10.49
step
label "Collect_Living_Water"
kill Tumultous Water Spirit##80379+
click Living Water##230979+
|tip They look like blue orbs of steam shooting water upward in the water around this area.
collect 4 Living Water##112083 |q 34881/4 |goto 74.54,11.30
step
Follow the path down |goto 71.05,8.13 < 20 |only if walking
click Pillar of Flame##230963
Attune to the Flame |q 34891/3 |goto 67.46,9.16
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
Attune to the Wind |q 34891/2 |goto 78.30,24.37
step
kill Corrupted Wind Guardian##80375 |q 34893/2 |goto 79.73,25.26
step
label "Collect_Living_Wind"
kill Living Wind##82889+
clicknpc Living Wind##82889+
|tip They look like thin, barely visible, clouds floating on the ground around this area.
collect 4 Living Wind##112085 |q 34881/2 |goto 79.23,23.06
step
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
talk Farseer Drek'Thar##80597
turnin Elemental Attunement##34891 |goto 71.71,19.65
step
talk Incineratus##80593
turnin Earth, Wind and Fire...and Water##34881 |goto 71.34,17.87
turnin Guardians of the Plateau##34893 |goto 71.34,17.87
turnin A Wrong of Earth and Fire##33928 |goto 71.34,17.87
step
talk Farseer Drek'Thar##80597
accept The Ritual of Binding##35265 |goto 71.71,19.65
step
talk Kalandrios##80595
Tell him _"I am ready to begin the Ritual of Binding."_
Speak with Kalandrios |q 35265/1 |goto 72.79,19.71
step
talk Farseer Drek'Thar##80597
turnin The Ritual of Binding##35265 |goto 71.71,19.65
accept The Call of Oshu'gun##35232 |goto 71.71,19.65
step
talk Gixmo Moneycash##82844
Tell him _"Fly me to the Spirit Woods near Oshu'gun."_
Speak with Gixmo Moneycash |q 35232/1 |goto 73.70,26.65
step
Take a Flight to the Spirit Woods |invehicle |goto 73.70,26.65 |q 35232
step
Fly to the Spirit Woods |outvehicle |goto 55.61,55.86 |q 35232 |notravel
step
Meet Drek'Thar in the Spirit Woods |q 35232/2 |goto 55.61,55.86
step
talk Farseer Drek'Thar##81335
turnin The Call of Oshu'gun##35232 |goto 55.53,55.91
accept Spiritual Matters##35231 |goto 55.53,55.91
accept Dark Binding##35144 |goto 55.53,55.91
accept The Pale Threat##35145 |goto 55.53,55.91
step
click Shamanstone##233263
accept Silence the Call##35084 |goto 55.45,55.90
accept Disrupt the Rituals##35083 |goto 55.45,55.90
stickystart "Slay_Pale_Orcs"
step
Follow the path |goto 56.64,57.90 < 15 |only if walking
Kill enemies around this area
|tip Pale Skulkers will not count for the quest goal.
|tip Pale Skulkers are stealthed, so be careful.
Liberate #8# Elemental Spirits |q 35144/1 |goto 57.72,62.03
step
label "Slay_Pale_Orcs"
Kill Pale enemies around this area
|tip Pale Skulkers are stealthed, so be careful. |notinsticky
Slay #6# Pale Orcs |q 35145/2 |goto 57.72,62.03
step
Enter the cave |goto Nagrand D/12 92.76,34.14 < 15 |walk
kill Greyseer##81309 |q 35145/1 |goto Nagrand D/12 66.24,17.79
|tip Inside the cave.
step
talk Farseer Drek'Thar##81953
|tip Inside the cave.
turnin Dark Binding##35144 |goto 46.07,32.71
turnin The Pale Threat##35145 |goto 46.07,32.71
accept The Fate of Gordawg##34271 |goto 46.07,32.71
accept The Dark Heart of Oshu'gun##35317 |goto 46.07,32.71
step
kill Gordawg##80592
|tip Inside the cave.
collect Heart of the Fury##113077 |q 34271/1 |goto 41.12,40.47
step
Follow the path up |goto 32.11,58.00 < 10 |walk
Enter the Sanctum of the Naaru |q 35317/1 |goto 19.81,62.71
step
Watch the dialogue
kill Decimatus##81989 |q 35317/2 |goto 15.22,67.77
stickystart "Slay_Warsong_Shamans"
step
Run up the ramp |goto 22.64,65.84 < 7 |walk
Follow the path up |goto Nagrand D/0 47.26,64.48 < 7 |walk
Leave the cave |goto Nagrand D/0 47.05,61.98 < 7 |walk
click Warsong Attack Plans##232024
|tip It looks like a brown rolled-up scroll sitting on top of a barrel.
accept The Warsong Threat##35271 |goto Nagrand D/0 51.87,62.10
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
collect Nagrand Scouting Report##113552 |q 35271/4 |goto 54.57,67.07
step
Enter the building |goto 51.93,67.98 < 7 |walk
click Warsong Outrider Orders##233349
|tip Inside the building.
collect Warsong Outrider Orders##113551 |q 35271/3 |goto 51.86,67.75
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
collect Warsong Command Brief##113550 |q 35271/1 |goto 52.51,55.80
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
collect Mixed Unit Tactics##113549 |q 35271/2 |goto 47.08,56.02
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
talk Omu Spiritbreeze##82340
fpath Riverside Post |goto 49.55,48.06
step
talk Blood Guard Ehanes##81193
turnin The Warsong Threat##35271 |goto 49.44,47.81
step
talk Mankrik##72822
accept Lost in Nagrand##35167 |goto 49.30,47.97
step
talk Durotan##81186
accept Terms of Surrender##35096 |goto 48.60,48.23
step
Enter the building |goto 55.53,42.82 < 7 |walk
talk Uruk Foecleaver##81086
|tip Inside the building.
turnin Terms of Surrender##35096 |goto 55.50,42.08
accept The Pride of Lok-rath##35097 |goto 55.50,42.08
step
talk Senior Sergeant Igerdes##81194
|tip Inside the building.
accept Silence the War Machines##35099 |goto 55.44,42.09
accept If They Won't Surrender...##35100 |goto 55.44,42.09
stickystart "Slay_Lokrath_Enemy_Forces"
step
clicknpc Iron Horde War Machine##81050
Destroy the War Machine |q 35099/1 |goto 55.97,43.03 |count 1
step
clicknpc Fallen Horde Soldier##81195
accept Terror of Nagrand##35101 |goto 56.11,43.80
step
Enter the cave |goto 57.04,42.66 < 10 |walk
kill Shagor##80263
|tip He walks around this area.
|tip Inside the cave.
collect Shagor's Collar##112620 |q 35101/1 |goto 58.26,43.40
step
clicknpc Iron Horde War Machine##81050
Destroy the War Machine |q 35099/1 |goto 55.76,46.53 |count 2
step
Enter the building |goto 55.62,47.56 < 7 |walk
kill Uruk Foecleaver##80264 |q 35097/1 |goto 55.63,47.73
|tip Inside the building.
step
clicknpc Iron Horde War Machine##81050
Destroy the War Machine |q 35099/1 |goto 54.54,44.89 |count 3
step
label "Slay_Lokrath_Enemy_Forces"
Kill enemies around this area
Slay #10# Lok-rath Enemy Forces |q 35100/1 |goto 55.42,44.92
step
talk Blood Guard Ehanes##81193
turnin Silence the War Machines##35099 |goto 49.44,47.81
turnin If They Won't Surrender...##35100 |goto 49.44,47.81
turnin Terror of Nagrand##35101 |goto 49.44,47.81
step
talk Durotan##81186
turnin The Pride of Lok-rath##35097 |goto 48.60,48.23
accept Lok-rath is Secured##35098 |goto 48.60,48.23
step
talk Rilzit Mugshot##87395
fpath Rilzit's Holdfast |goto 50.75,30.64
step
talk Joz Navarix##88668
fpath Joz's Rylaks |goto 62.23,32.88
step
talk Gar'rok##80864
turnin Spiritual Matters##35231 |goto 40.43,56.79
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
kill Tall Buck##82116
collect Tall Buck's Tail##113104 |q 35378/1 |goto 57.86,69.27
step
talk Thrall##80003
turnin Lok-rath is Secured##35098 |goto 82.84,45.08
step
talk Stalker Ogka##82080
turnin King of the Breezestriders##35378 |goto 82.60,43.94
step
talk Lucy Brokerblast##83606
accept Bread and Circuses##35922 |goto 82.84,46.83
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to complete some upcoming quests.
|tip Use the Leveling guides to accomplish this.
step
talk Gabby Goldsnap##80184
accept Gazmolf Futzwangler and the Highmaul Crusade##34810 |goto 79.87,48.85
step
talk Dexyl Deadblade##79188
turnin Bread and Circuses##35922 |goto 79.44,50.30
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
talk Shadow Hunter Kajassa##80429
turnin Target of Opportunity: Telaar##34914 |goto 68.54,64.52
accept I Help Ya Kill Dem##34915 |goto 68.54,64.52
accept The Blessing of Samedi##34916 |goto 68.54,64.52
step
talk Rangari Keilnei##80451
accept Shields Up!##34917 |goto 68.59,64.56
stickystart "Slay_Warsong_Forces_At_Telaar"
step
Cross the bridge |goto 67.68,64.79 < 15 |only if walking
Enter the building |goto 68.17,66.91 < 7 |walk
use the Samedi Fetish##112166
|tip Inside the building.
Bless Shadow Hunter Spar'kuhl |q 34916/3 |goto 68.52,67.00
step
click Telaari Crystal##231070
Activate the Southeast Crystal |q 34917/3 |goto 68.01,67.95
step
Enter the building |goto 66.76,68.27 < 7 |walk
use the Samedi Fetish##112166
|tip Inside the building.
Bless Shadow Hunter Maloa |q 34916/2 |goto 66.58,68.63
step
click Telaari Crystal##231070
Activate the Southwest Crystal |q 34917/4 |goto 64.79,67.80
step
Enter the building |goto 65.61,65.47 < 7 |walk
use the Samedi Fetish##112166
|tip Inside the building.
Bless Shadow Hunter J'wan |q 34916/1 |goto 65.25,65.08
step
click Telaari Crystal##231070
Activate the Northwest Crystal |q 34917/2 |goto 65.14,63.66
step
click Telaari Crystal##231070
Activate the Northeast Crystal |q 34917/1 |goto 66.46,62.25
step
label "Slay_Warsong_Forces_At_Telaar"
Kill enemies around this area
Slay #12# Warsong Forces at Telaar |q 34915/1 |goto 66.83,65.49
step
talk Shadow Hunter Kajassa##80429
turnin I Help Ya Kill Dem##34915 |goto 68.55,64.51
turnin The Blessing of Samedi##34916 |goto 68.55,64.51
turnin Shields Up!##34917 |goto 68.55,64.51
accept Shields Down!##34918 |goto 68.55,64.51
step
kill Packleader Kargora##79839 |q 34918/1 |goto 66.80,65.68
step
click Arkonite Crystal
Destroy the Arkonite Shield |q 34918/2 |goto 66.80,65.53
step
talk Thrall##80003
turnin Shields Down!##34918 |goto 82.84,45.08
accept And Justice for Thrall##35171 |goto 82.84,45.08
step
talk Digrem Orebar##81955
turnin Tastes Like Chicken##34869 |goto 79.23,52.65
accept Fruitful Ventures##34819 |goto 79.23,52.65
step
talk Pyxni Pennypocket##79310
turnin WANTED: Razorpaw!##34513 |goto 78.58,48.57
turnin Gobnapped##34515 |goto 78.58,48.57
turnin Declawing The Competition##34512 |goto 78.58,48.57
turnin They've Got The Goods!##34514 |goto 78.58,48.57
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
map Nagrand D
path loose; loop; curved; dist 50
path	62.9,57.3	61.6,53.6	63.4,49.8
path	64.6,45.4	67.7,44.2	71.5,47.1
path	72.4,51.5	69.2,56.4	65.5,57.8
kill Banthar##82119
|tip She looks like a giant dark colored clefthoof that wanders in a path around this area.
|tip Follow the path around the cliffs to find her.
collect Horn of Banthar##113105 |q 35375/1
step
Follow the path up |goto 70.80,63.98 < 30 |only if walking
Begin the Scenario |scenariostart |goto 74.60,69.50 |q 35171
step
talk Durotan##81414
Tell him _"Durotan, let's blow open those gates and take Grommashar."_
Speak with Durotan at the Gates of Grommashar |scenariostage 1 |goto 74.60,69.50 |q 35171
step
talk Aggra##81416
Tell him _"I agree. A flanking maneuver will buy you the time you need to move most of our forces closer to Garrosh."_
Speak with Aggra inside Grommashar |scenariogoal 2/25159 |goto 74.73,76.33 |q 35171
step
kill Packmaster Grokglok##82131
Defeat Packmaster Grokglok |scenariogoal 3/24795 |goto 71.94,79.19 |q 35171
step
Follow the path up |goto 70.11,81.39 < 20 |only if walking
talk Durotan##84443
Tell him _"Like it or not, we need to move ahead. What's the situation?"_
Speak with Durotan at the Rally Point Up the Hill |scenariogoal 4/25130 |goto 75.19,77.58 |q 35171
step
kill Durn the Hungerer##82132 |scenariogoal 5/24796 |goto 75.66,81.47 |q 35171
step
talk Durotan##84443
|tip He runs to this location.
Tell him _"Give the order, Durotan. Destroy the gates and get us in there."_
Speak with Durotan at the Final Gate |scenariogoal 6/25160 |goto 72.87,81.83 |q 35171
step
Watch the dialogue
|tip Follow Durotan as he walks.
kill Garrosh Hellscream##82133
Bring Warlord Garrosh Hellscream to Justice |scenariogoal 7/24797 |goto 71.40,84.59 |q 35171
step
Reach the Stones of Prophecy |goto 66.88,33.93 < 10 |noway |c |q 35171
step
talk Durotan##81415
turnin And Justice for Thrall##35171 |goto 66.89,33.70
step
talk Olgra##82688
turnin Lost in Nagrand##35167 |goto 74.16,37.51
accept Consumed by Vengeance##35170 |goto 74.16,37.51
step
kill Worgskin the Savage##82702 |q 35170/1 |goto 70.57,35.72
step
talk Kalandrios##80595
turnin The Fate of Gordawg##34271 |goto 72.79,19.71
step
talk Farseer Drek'Thar##82070
turnin The Dark Heart of Oshu'gun##35317 |goto 71.71,19.65
step
talk Shadow Hunter Taz##82078
turnin Queen of the Clefthoof##35375 |goto 82.54,43.98
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
talk Marybelle Walsh##84632
turnin Whacking Weeds##36273 |goto 77.43,47.35
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
talk Mankrik##72822
turnin Consumed by Vengeance##35170 |goto 49.30,47.97
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Draenor (10-60)\\Tanaan Jungle (40)",{
description="\nThis guide will walk you through completing the main questline for the level 40 Tanaan Jungle zone.",
condition_suggested=function() return level == 40 and not completedq(38578) end,
},[[
step
Upgrade your Garrison to Level 3 |condition garrisonlvl(3)
|tip Use the Garrison Leveling guide to accomplish this.
step
Enter Your Garrison:
accept Garrison Campaign: War Council##38567 |goto Frostwall/0 40.1,54.0
|tip You will automatically accept this quest.
step
talk Vol'jin##92400
turnin Garrison Campaign: War Council##38567 |goto Frostwall/0 39.1,54.8
accept We Need a Shipwright##38568 |goto Frostwall/0 39.1,54.8
step
talk Bron Skyhorn##79407 |goto Frostwall/0 45.8,50.9
Tell him _"I am needed urgently at the Iron Docks."_
Travel to the Iron Docks |goto Gorgrond/0 56.0,6.7 < 100 |noway |c |q 38568
accept Clearing the Docks##38569
|tip You will accept this quest automatically when you arrive at the Iron Docks.
step
talk Sammy Fivefingers##89937
turnin We Need a Shipwright##38568 |goto Gorgrond/0 56.1,6.7
accept Derailment##38570 |goto Gorgrond/0 56.1,6.7
stickystart "clearing_the_docks"
step
Go through the doorway |goto Gorgrond/0 56.3,8.2 < 20 |only if walking
Follow the path |goto Gorgrond/0 56.8,10.3 < 30 |only if walking
Run up the ramp |goto Gorgrond/0 56.7,11.5 < 20 |only if walking
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground next to a wall.
collect Detonator##122516 |q 38570/2 |goto Gorgrond/0 56.5,11.6
step
Run up the ramp |goto Gorgrond/0 56.9,14.1 < 30 |only if walking
click Explosive Charges##240517
|tip It looks like a big basket full of metal bombs, on the ground between 2 huge metal loops.
collect Explosive Charges##122515 |q 38570/1 |goto Gorgrond/0 56.4,15.1
step
label "clearing_the_docks"
kill Iron Grunt##91599+, Iron Rearguard##89952+, Ogron Lifter##89951+
|tip Kill any mobs you see.
clicknpc Iron Siege Ram##93174+
|tip Destroy siege weapons.
clicknpc Iron Horde Transport##93147+
|tip Sink transports. They are boats floating next to walls in the water.
kill Felsworn Prophet##91596+
Disrupt the Iron Horde Evacuation |q 38569/1 |goto Gorgrond/0 56.9,12.0
|tip You will see a progress bar in your quest tracking area.
step
talk Durotan##92401
turnin Derailment##38570 |goto Gorgrond/0 56.8,17.2
accept The Train Gang##38571 |goto Gorgrond/0 56.8,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the First Explosive |q 38571/1 |goto Gorgrond/0 56.9,16.9
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Second Explosive |q 38571/2 |goto Gorgrond/0 56.9,17.2
step
clicknpc Explosive Charge##93209
|tip It looks like a yellow spiked bomb sitting up on the train.
Plant the Third Explosive |q 38571/3 |goto Gorgrond/0 56.9,17.4
step
click Detonator##240518
|tip It's a wooden box with a handle on top of it, on the ground.
Blow Open the Train |q 38571/4 |goto Gorgrond/0 56.8,17.2
Watch the dialogue
Recruit Solog Roark |q 38571/5 |goto Gorgrond/0 56.8,17.2
step
talk Solog Roark##91242
turnin The Train Gang##38571 |goto Gorgrond/0 56.8,17.2
accept Hook, Line, and... Sink Him!##38572 |goto Gorgrond/0 56.8,17.2
step
Follow the path |goto Gorgrond/0 52.9,17.8 < 30 |only if walking
click Blackrock Grapple##241130
|tip It looks like a metal cannon pointing upward.
Grapple to Knar's Bunker |q 38572/1 |goto Gorgrond/0 50.7,16.1
step
Enter the building |goto Gorgrond/0 50.6,17.0 < 20 |walk
kill Admiral Knar##92191
collect Roark's Shipyard Blueprints##123867 |q 38572/2 |goto Gorgrond/0 50.6,17.6
step
talk Solog Roark##91242
turnin Hook, Line, and... Sink Him!##38572 |goto Gorgrond/0 50.6,16.7
accept Nothing Remains##38573 |goto Gorgrond/0 50.6,16.7
step
talk Vol'jin##92400
turnin Nothing Remains##38573 |goto Frostwall/0 39.1,54.8
accept All Hands on Deck##38574 |goto Frostwall/0 39.1,54.8
step
Follow the path |goto Frostwall/0 36.5,40.9 < 30 |only if walking
Go through the doorway |goto Frostwall/0 27.0,55.4 < 20 |only if walking
talk Solog Roark##91242
turnin All Hands on Deck##38574 |goto Frostfire Ridge/0 41.5,69.9
step
talk Rolosh Wavechaser##94789
accept Let's Get To Work##39236 |goto Frostfire Ridge/0 41.6,72.3
step
talk Solog Roark##94429
turnin Let's Get To Work##39236 |goto Frostfire Ridge/0 40.7,70.3
accept Shipbuilding##39241 |goto Frostfire Ridge/0 40.7,70.3
step
use Ship Blueprint: Transport##127268
Learn the Ship Blueprint: Transport |q 39241/1
step
talk Solog Roark##94429
turnin Shipbuilding##39241 |goto Frostfire Ridge/0 40.7,70.3
accept Ship Shape##39242 |goto Frostfire Ridge/0 40.7,70.3
step
talk Solog Roark##94429
Tell him _"Start construction on our first transport."_
Click _Start Work Order_ in the window
Start Construction on a Transport Ship |q 39242/1 |goto Frostfire Ridge/0 40.7,70.3
step
click Transport Ship##243699
|tip It looks like a huge wooden ship sitting on the beach.
Interact with the Transport once Construction is Complete |q 39242/2 |goto Frostfire Ridge/0 40.4,70.0
|tip It takes 1 minute to build after you begin the work order.
step
talk Solog Roark##94429
turnin Ship Shape##39242 |goto Frostfire Ridge/0 40.7,70.3
accept The Invasion of Tanaan##37889 |goto Frostfire Ridge/0 40.7,70.3
step
Follow the path |goto Frostfire Ridge/0 41.5,72.1 < 30 |only if walking
Meet With Khadgar |q 37889/1 |goto Frostfire Ridge/0 40.8,73.3
step
talk Draka##90481
Tell her _"Let us begin the invasion."_
Speak With Draka |q 37889/2 |goto Frostfire Ridge/0 40.7,73.3
step
talk Draka##89822
turnin The Invasion of Tanaan##37889 |goto Tanaan Jungle/0 73.4,71.1
accept Obstacle Course##37890 |goto Tanaan Jungle/0 73.4,71.1
step
Follow the road |goto Tanaan Jungle/0 72.3,64.8 < 30 |only if walking
Enter the building |goto Tanaan Jungle/0 69.3,64.2 < 20 |walk
click Letter from Kilrogg##240888
|tip It looks like a tan rolled up scroll laying on the floor inside this building.
Find Information on the Bleeding Hollow |q 37890/1 |goto Tanaan Jungle/0 68.9,64.9
step
Follow the dirt path |goto Tanaan Jungle/0 71.3,57.6 < 30 |only if walking
Enter the building |goto Tanaan Jungle/0 73.5,56.6 < 20 |walk
click Magril's Journal##240889
|tip It looks like a big purple book laying on a bed inside this building.
Find Information on the Cultists |q 37890/2 |goto Tanaan Jungle/0 74.0,56.1
step
Follow the road |goto Tanaan Jungle/0 71.1,57.5 < 40 |only if walking
talk Shadow Hunter Mutumba##90238
turnin Obstacle Course##37890 |goto Tanaan Jungle/0 69.5,54.2
accept In, Through, and Beyond!##37934 |goto Tanaan Jungle/0 69.5,54.2
step
Follow the path up |goto Tanaan Jungle/0 63.6,52.7 < 20 |only if walking
Reach the Fel Defense Cannon |q 37934/1 |goto Tanaan Jungle/0 63.6,52.1
step
click Ammunition Pile##240914
|tip It looks like a pile of huge metal spiked bombs.
Destroy the Fel Defense Cannon |q 37934/2 |goto Tanaan Jungle/0 64.3,51.6
step
Run down the path |goto Tanaan Jungle/0 63.4,51.6 < 20 |only if walking
Meet up with Shadow Hunter Mutumba |q 37934/3 |goto Tanaan Jungle/0 62.6,50.9
step
talk Shadow Hunter Mutumba##90238
turnin In, Through, and Beyond!##37934 |goto Tanaan Jungle/0 62.6,50.9
accept The Assault Base##37935 |goto Tanaan Jungle/0 62.6,50.9
step
Follow the path |goto Tanaan Jungle/0 61.7,51.2 < 20 |only if walking
Run up the path |goto Tanaan Jungle/0 60.3,49.9 < 20 |only if walking
Follow Mutumba |q 37935/1 |goto Tanaan Jungle/0 60.9,47.1
step
clicknpc Horde Banner##120955
|tip It looks like a yellow hanging flag with the Horde logo on it.
Plant the Flag to Build the Base |q 37935/2 |goto Tanaan Jungle/0 60.9,47.0
step
talk Gargash the Diver##90550
fpath Vol'mar |goto Tanaan Jungle/0 60.4,46.4
step
talk Dawn-Seeker Krisek##95424
accept Unknowable Power##39432 |goto Tanaan Jungle/0 60.4,46.7
step
Enter the building |goto Tanaan Jungle/0 61.2,46.1 < 10 |walk
talk Draka##90481
turnin The Assault Base##37935 |goto Tanaan Jungle/0 61.5,45.8
accept The Battle for the West##38577 |goto Tanaan Jungle/0 61.5,45.8
accept Shipyard Report##39423 |goto Tanaan Jungle/0 61.5,45.8
step
talk Retho Quillmane##90989
home Vol'mar Hold |goto Tanaan Jungle/0 61.5,46.2
step
talk Fraggs##90993
accept Bring the Reinforcements##39315 |goto Tanaan Jungle/0 59.9,47.5
step
talk Fraggs##90993
Tell him _"Call to Arms."_
|tip This will give you one of the zone abilities you earned while questing in Draenor. You can change the ability you choose at any time after this quest by talking to him again.
Choose your Reinforcements |q 39315/1 |goto Tanaan Jungle/0 59.9,47.5
step
talk Fraggs##90993
turnin Bring the Reinforcements##39315 |goto Tanaan Jungle/0 59.9,47.5
step
talk Gargash the Diver##90550
Talk to Gargash to Fly to the Iron Front |q 38577/1 |goto Tanaan Jungle/0 60.4,46.4
Tell him _"Take me to the Iron Front."_
Fly to the Iron Front |goto Tanaan Jungle/0 9.3,55.9 < 100 |noway |c |q 38577
step
talk Durotan##90553
Speak with Durotan |q 38577/2 |goto Tanaan Jungle/0 9.7,56.2
step
talk Durotan##90553
turnin The Battle for the West##38577 |goto Tanaan Jungle/0 9.7,56.2
accept Commander in the Field!##38001 |goto Tanaan Jungle/0 9.7,56.2
step
click Medical Supplies##239971
|tip They look like wooden crates with red crosses on them on the ground all around this area.
collect First Aid Bandages##122139 |n
clicknpc Wounded Grunt##90452+
|tip You need First Aid Bandages in order to heal them.
clicknpc Iron Horde Banner##90433
|tip They look like vertical flags make of cloth and bone all around this area.
kill Felsworn Soultwister##92873+, Felsworn Berserker##90482+, Felsworn Bulwark##91251+, Iron Wargronn##90585+, Iron Sniper##77767+
Aid the Battle at the Iron Front |q 38865/1 |goto Tanaan Jungle/0 11.4,56.1
|tip You will see a progress bar in your quest tracking area.
step
Follow the road |goto Tanaan Jungle/0 18.5,59.0 < 30 |only if walking
Run on the dirt path |goto Tanaan Jungle/0 28.1,59.1 < 30 |only if walking
talk Rangari Sha'ana##92809
fpath Sha'naari Refuge |goto Tanaan Jungle/0 29.5,63.1
step
talk Cutter##90581
Speak with the Scout in Southwest Tanaan Jungle |q 38001/1 |goto Tanaan Jungle/0 29.4,63.0
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
talk Shadow Hunter Zel'duk##90563
Speak With the Scout in Northwest Tanaan Jungle |q 38001/2 |goto Tanaan Jungle/0 25.9,38.8
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
Run on the dirt path |goto Tanaan Jungle/0 54.8,63.6 < 30 |only if walking
Continue following the path |goto Tanaan Jungle/0 52.9,58.0 < 30 |only if walking
Follow the path up |goto Tanaan Jungle/0 59.0,49.8 < 30 |only if walking
talk Dawn-Seeker Krisek##95424
turnin Unknowable Power##39432 |goto Tanaan Jungle/0 60.4,46.8
step
Run on the wide stone road |goto Tanaan Jungle/0 57.5,52.4 < 40 |only if walking
Follow the dirt road |goto Tanaan Jungle/0 48.1,51.0 < 40 |only if walking
Continue following the dirt road |goto Tanaan Jungle/0 43.7,47.5 < 30 |only if walking
Run up the path |goto Tanaan Jungle/0 42.8,41.3 < 20 |only if walking
talk Goi'orsh##90584
accept A Message of Terrible Import##38578 |goto Tanaan Jungle/0 44.2,41.5
step
talk Rocketmaster Malo##92808
fpath Malo's Lookout |goto Tanaan Jungle/0 43.4,42.2
step
talk Malgurk##90548
Speak with the Scout in Northeast Tanaan Jungle |q 38001/3 |goto Tanaan Jungle/0 43.7,42.4
step
Enter the building |goto Tanaan Jungle/0 61.1,46.1 |walk
talk Draka##90481
turnin Commander in the Field!##38001 |goto Tanaan Jungle/0 61.5,45.8
step
Go to the Vault of the Earth |q 38578/1 |goto Tanaan Jungle/0 47.1,70.2
step
talk Lagar the Wise##90644
Tell him _"You are Lagar? I bring words from a shaman of your order. He says..."_
Speak With Lagar the Wise |q 38578/2 |goto Tanaan Jungle/0 47.3,70.5
step
talk Lagar the Wise##90644
turnin A Message of Terrible Import##38578 |goto Tanaan Jungle/0 47.3,70.5
step
Congratulations, you've completed the Tanaan Jungle Main Questline!
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Loremaster\\Loremaster of Draenor",{
achieveid={9923},
patch='60100',
description="\nComplete the Draenor quest achievements.",
},[[
step
Use these Draenor Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
condition achieved(9923) |next
Frostfire Ridge |condition achieved(9923,4) |confirm always |next "Leveling Guides\\Draenor (10-60)\\Frostfire Ridge (10-60)"
Gorgrond |condition achieved(9923,5) |confirm always |next "Leveling Guides\\Draenor (10-60)\\Gorgrond (15-60)"
Talador |condition achieved(9923,1) |confirm always |next "Leveling Guides\\Draenor (10-60)\\Talador (20-60)"
Spires of Arak |condition achieved(9923,2) |confirm always |next "Leveling Guides\\Draenor (10-60)\\Spires of Arak (30-60)"
Nagrand |condition achieved(9923,3) |confirm always |next "Leveling Guides\\Draenor (10-60)\\Nagrand (35-60)"
step
Congratulations, you earned the _Loremaster of Draenor_ Achievement!
]])
