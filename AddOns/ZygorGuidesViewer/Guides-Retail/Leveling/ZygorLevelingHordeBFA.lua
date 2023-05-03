local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Zuldazar (10-60)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Zuldazar storylines:\n\nAudience with the King\nPort of Zandalar\nWeb of Lies\nThe Zanchuli Council\nPortents and Prophecies\nWarport Rastari\nAmong the People\nMarch of the Loa",
condition_suggested=function() return level >= 10 and not completedq(49681) and completedq(52131) end,
startlevel=10.0,
endlevel=50.0,
image=ZGV.IMAGESDIR.."Zuldazar",
next="Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Nazmir (10-60)",
},[[
step
talk Warchief's Herald##49750
accept Battle for Azeroth: Mission Statement##51443 |goto Orgrimmar/1 49.39,76.57
|only if not haveq(60361) and not completedq(60361)
step
Speak to Warchief Sylvanas Windrunner in Orgrimmar |q 51443/1 |goto 49.69,75.07
|only if haveq(51443)
step
Enter the building |goto 53.42,78.87 < 7 |walk
Meet Your Team |q 51443/2 |goto 54.44,78.43
|tip Inside the building.
|only if haveq(51443)
step
talk Nathanos Blightcaller##135205
|tip Inside the building.
turnin Battle for Azeroth: Mission Statement##51443 |goto 54.44,78.43
|only if haveq(51443) or completedq(51443)
step
talk Nathanos Blightcaller##135205
|tip Inside the building.
accept The Stormwind Extraction##50769 |goto 54.44,78.42
step
click Blightcaller's Easy Death##289645
|tip Inside the building.
Take a Potion |q 50769/1 |goto 54.58,78.36 |or |next "Stormwind_Jail_Break"
_Or_
Click Here to Skip the Stormwind Extraction Scenario |or |confirm |next "Skip_Stormwind_Jail_Break"
|tip This will allow you to skip the intro scenario if you've already completed it on another character.
step
label "Skip_Stormwind_Jail_Break"
talk Nathanos Blightcaller##135205
|tip Inside the building.
Tell him _"I have heard this story before. (Skip the Scenario and port to Zuldazar Harbor in Zandalar)"_
Skip the Stormwind Extraction |condition readyq(50769) |goto 54.44,78.42 |or |future |next "Stormwind_Jail_Break_Completed"
step
label "Stormwind_Jail_Break"
clicknpc Skyhorn Eagle##135211
|tip On top of the building.
Begin Flying with the Skyhorn Eagle |invehicle |goto 51.20,83.54 |q 50769
step
Watch the dialogue
Take the Transport from the Ramparts |q 50769/2
step
Begin the "The Stormwind Extraction" Scenario |scenariostart |q 50769
step
Watch the dialogue
Infiltrate Stormwind City |scenariogoal 1/39765 |goto Stormwind City BFA/0 47.22,59.58 |q 50769 |notravel
step
clicknpc Padlock##134070+
|tip They look like dark metal locks on the wooden door on the ground.
|tip There are 2 of them.
Destroy the Padlocks |scenariogoal 2/39768 |goto 46.24,58.13 |q 50769
step
Enter the Stockades |scenariogoal 2/39766 |goto 46.27,58.09 |q 50769
|tip Jump down into the swirling portal.
step
Enter the Stormwind Stockades |goto Stockcades Scenario/0 25.18,52.52 < 10 |noway |c |q 50769
step
Meet Up With Rokhan |scenariostage 3 |goto 52.11,40.12 |q 50769
step
click Cell Door
Open Saurfang's Cell Door |scenariogoal 4/40211 |goto 51.01,39.66 |q 50769
step
talk High Overlord Saurfang##134120
Ask him _"What do you mean?"_
Watch the dialogue
Release Saurfang |scenariogoal 4/39780 |goto 48.01,33.48 |q 50769
step
click Cell Door
|tip Follow your allies as they walk.
Release the Other Prisoners |scenariogoal 5/39781 |goto 55.98,64.10 |q 50769
step
Watch the dialogue
|tip Follow your allies as they walk.
clicknpc Stormwind Sewer Access##139948
Escape the Stockades |scenariogoal 5/39786 |goto 87.05,23.22 |q 50769
step
talk Rokhan##134038
Tell him _"Let's go."_
Watch the dialogue
|tip Follow your allies as they walk.
|tip Stay within the circle on the ground beneath Rokhan as you walk.
Begin Following Rokhan |goto Stormwind City BFA/0 71.09,46.71 > 15 |c |q 50769
step
Watch the dialogue
|tip Follow your allies as they walk.
|tip Stay within the circle on the ground beneath Rokhan as you walk.
|tip Jump off the bridge into the water when your allies tell you to.
|tip Talk to Rokhan again when he stops, to get him to continue walking.
Follow Rokhan |scenariostage 6 |goto Stormwind City BFA/0 55.81,56.85 |q 50769
step
Kill the enemies that attack
Defeat the Worgen Ambush |scenariogoal 7/39795 |goto 55.81,56.85 |q 50769
step
Watch the dialogue
|tip Follow your allies as they walk.
talk Nathanos Blightcaller##134039
Tell him _"I'm ready."_
Escape Cathedral Square |scenariostage 7 |goto 45.44,43.18 |q 50769
step
Watch the dialogue
|tip Follow your allies as they walk.
kill Icy Barrier##134881
Escape Jaina's Wrath |scenariostage 8 |goto 39.76,40.63 |q 50769
step
Watch the dialogue
|tip Follow your allies as they walk.
Reach Talanji's Ship |scenariostage 9 |goto 20.60,25.75 |q 50769
step
Watch the dialogue
talk Princess Talanji##134092
|tip At the top of the ship.
Tell her _"Not at all."_
Escape Stormwind Harbor |scenarioend |goto 20.54,28.94 |q 50769
step
Complete the "The Stormwind Extraction" Scenario |q 50769/3 |next "Stormwind_Jail_Break_Completed"
step
label "Stormwind_Jail_Break_Completed"
Travel to Zuldazar |goto Zuldazar/0 57.98,62.80 < 10 |c |noway |q 50769
step
talk Nathanos Blightcaller##121210
turnin The Stormwind Extraction##50769 |goto 57.95,62.76
|next "Welcome_To_Zuldazar"
step
label "Welcome_To_Zuldazar"
talk Princess Talanji##132332
accept Welcome to Zuldazar##46957 |goto 57.95,62.46
step
Watch the dialogue
|tip Follow Princess Talanji as she walks.
Follow Princess Talanji |q 46957/1 |goto Dazar'alor/0 49.98,82.60
step
talk General Jakra'zet##122661
turnin Welcome to Zuldazar##46957 |goto 49.98,82.33
accept Rastakhan##46930 |goto 49.98,82.33
step
talk Ripa the Wind Ripper##121252
fpath Port of Zandalar |goto 52.10,90.12
step
clicknpc Enforcer's Pterrordax##135438
Ride the Enforcer's Pterrordax to the Throne |q 46930/1 |goto 49.98,82.17
step
Watch the dialogue
Ride to the Throne |goto 48.03,44.45 < 7 |c |q 46930 |notravel
step
talk Princess Talanji##135440
|tip On top of the building.
Tell her _"Take me to King Rastakhan."_
Speak with Princess Talanji |q 46930/2 |goto 48.82,44.64
step
Watch the dialogue
talk King Rastakhan##120740
|tip On top of the building.
turnin Rastakhan##46930 |goto 49.91,42.72
accept Speaker of the Horde##46931 |goto 49.91,42.72
step
Locate Zolani |goto 49.47,44.66 < 10 |c |q 46931
step
Watch the dialogue
|tip Follow Zolani as she walks.
|tip She eventually walks to this location inside the building.
Follow Zolani |q 46931/1 |goto Dazar'alor/2 25.91,73.81
step
click Horde Banner
|tip Ride the elevator down, or jump down a level.
Summon the Horde |q 46931/2 |goto Dazar'alor/0 49.93,39.49
step
Enter the building |goto 49.94,42.14 < 10 |walk
Watch the dialogue
|tip Downstairs inside the building.
Explore the Hall of Ancient Paths |q 46931/4 |goto Dazar'alor/1 66.92,72.06
step
Watch the dialogue
|tip Downstairs inside the building.
Explore the Great Seal |q 46931/3 |goto 49.09,70.79
step
Watch the dialogue
|tip Downstairs inside the building.
Explore the Royal Treasury |q 46931/5 |goto Dazar'alor/0 48.76,45.89 |notravel
step
Enter the building |goto 49.95,42.12 < 10 |walk
talk Princess Talanji##133050
|tip Inside the building.
turnin Speaker of the Horde##46931 |goto Dazar'alor/2 41.31,66.65
step
talk Paku'ai Rokota##122689
fpath The Great Seal |goto Dazar'alor/0 51.92,41.20
step
click Scouting Map
|tip Click the "Zuldazar" quest icon on the map.
|tip Inside the building.
accept Zuldazar##47514 |goto Dazar'alor/2 41.65,69.21
step
talk Princess Talanji##133050
|tip Inside the building.
turnin Zuldazar##47514 |goto 41.14,66.73
step
talk Princess Talanji##133050
|tip Inside the building.
accept Trust of a King##49615 |goto Dazar'alor/2 41.19,66.74
step
talk Brillin the Beauty##122690
|tip Inside the building.
home The Great Seal |goto Dazar'alor/1 48.86,72.64 |q 47226 |future
step
talk King Rastakhan##120740
|tip Outside, on top of the building.
|tip Ride the elevator up, on either side, inside the building.
turnin Trust of a King##49615 |goto Dazar'alor/0 49.93,46.61
accept Tal'gurub##49488 |goto Dazar'alor/0 49.93,46.61
step
talk Zolani##122915
|tip Outside, on top of the building.
accept The Port of Zandalar##50835 |goto 49.81,46.56
step
talk Yazma##122641
|tip Outside, on top of the building.
accept The Zanchuli Council##47445 |goto 49.72,46.51
step
talk Zolani##135441
turnin The Port of Zandalar##50835 |goto 50.06,85.07
accept Shakedown##46926 |goto 50.06,85.07
step
talk Yazma##126684
accept The Word of Zul##46846 |goto 50.05,84.76
step
talk Witch Doctor Jala##126148
accept The Red Market##48452 |goto 44.25,82.15
stickystart "Collect_Dark_Fetishes"
step
Follow the stairs down and enter the building |goto 42.80,83.58 < 10 |walk
click Chalice of Calling
|tip Inside the building.
Destroy the Chalice of Calling |q 48452/2 |goto 43.08,83.14
step
label "Collect_Dark_Fetishes"
Kill Crimson enemies around this area
collect 3 Dark Fetishes##152461 |q 48452/1 |goto 42.29,83.76
step
Run up the stairs |goto 42.81,78.72 < 15 |only if walking and subzone("The Old Seawall")
talk Witch Doctor Jala##126148
turnin The Red Market##48452 |goto 44.25,82.15
accept Evidence of Evil##48454 |goto 44.25,82.15
stickystart "Slay_Dockside_Thugs"
step
talk Dockmaster Cobo##126009
Choose _<Show him the Word of Zul.>_
Show Dockmaster Cobo the Message |q 46846/3 |goto 45.31,79.78
step
label "Slay_Dockside_Thugs"
Kill Thug enemies around this area
Slay #15# Dockside Thugs |q 46926/1 |goto 47.91,83.03
step
talk Zolani##135441
turnin Shakedown##46926 |goto 50.05,85.06
turnin Evidence of Evil##48454 |goto 50.07,85.07
accept Deterrent##46929 |goto 50.05,85.06
step
talk Yazma##126684
accept Punishment of Tal'farrak##46928 |goto 50.05,84.76
step
talk Nokali the Scarred##125485
Choose _<Show him the Word of Zul.>_
Show Nokali the Message |q 46846/1 |goto 51.52,91.04
step
talk Doomsayer Volkini##125489
Choose _<Show her the Word of Zul.>_
Show Volkini the Message |q 46846/2 |goto 53.90,91.10
step
talk Toki##134346
accept Make Loh Go##52472 |goto 56.15,91.58
step
talk Toki##135795
Tell him _"I am ready."_
Speak with Toki |q 52472/1 |goto 56.15,91.58
step
Guide Loh to the First Goal |q 52472/2 |goto 56.57,91.69
|tip Move Loh to the finish line marker in the middle of the piles of small boxes.
|tip Use the abilities on your action bar.
step
Guide Loh Through All the Points Without Crossing His Own Path |q 52472/3 |goto 56.57,91.69
|tip Move Loh to the treasure chest, then the finish line marker.
|tip Use the abilities on your action bar.
step
_Click the Completed Quest Box:_
|tip In the quest tracker area.
turnin Make Loh Go##52472
step
talk Scrollsage Rooka##125312
accept The Scamps##48404 |goto 55.95,88.84
step
clicknpc Street Scamp##126034+
|tip They look like small blue children running on the ground around this area.
Stop #5# Street Scamps |q 48404/1 |goto 49.94,89.97
step
talk Scrollsage Rooka##125312
turnin The Scamps##48404 |goto 55.95,88.83
accept Mista Nice##48405 |goto 55.95,88.83
step
Run up the stairs and enter the building |goto 57.20,87.96 < 10 |walk
Track Down Lair of the Scamps |q 48405/1 |goto 57.20,87.36
|tip Inside the building.
|tip You will be attacked.
step
kill Mista Nice##125996 |q 48405/2 |goto 57.20,87.36
|tip Inside the building.
step
talk Scrollsage Rooka##125312
turnin Mista Nice##48405 |goto 55.95,88.83
step
talk Yazma##126684
turnin The Word of Zul##46846 |goto 50.04,84.76
accept Punishment of Tal'aman##46927 |goto 50.04,84.76
stickystart "Collect_Amani_Heads"
step
Follow the path |goto 50.59,77.92 < 30 |only if walking and not subzone("Tal'aman")
click Ancient Gong
|tip Click it again after you kill each enemy.
Watch the dialogue
Kill the enemies that attack
Defeat #4# Amani Disciples |q 46927/1 |goto 56.18,87.47
step
label "Collect_Amani_Heads"
Kill Amani enemies around this area
collect 6 Amani Head##160107 |q 46929/1 |goto 56.16,80.58
stickystart "Collect_Sandfury_Heads"
step
click Ancient Gong##280611
kill Gahz'ragon
collect 3 Tongue of Gahz'ragon##152184 |q 46928/1 |goto 46.62,73.92
step
label "Collect_Sandfury_Heads"
Kill Sandfury enemies around this area
collect 6 Sandfury Head##158898 |q 46929/2 |goto 46.47,75.58
step
talk Yazma##126684
turnin Punishment of Tal'aman##46927 |goto 50.05,84.76
turnin Punishment of Tal'farrak##46928 |goto 50.05,84.76
step
talk Zolani##135441
turnin Deterrent##46929 |goto 50.05,85.07
accept Royal Report##50881 |goto 50.05,85.07
step
talk Habutu##125953
|tip Outside, on top of the building.
turnin Royal Report##50881 |goto Dazar'alor/0 50.04,46.54
step
talk Natal'hakata##131287
|tip Inside the building.
accept The Missing Handler##50538 |goto Dazar'alor/2 67.30,71.66
step
talk Zena the Feeder##133242
fpath The Sliver |goto Dazar'alor/0 53.16,19.36
step
talk Wardruid Loti##126560
|tip Run up the stairs.
turnin The Zanchuli Council##47445 |goto 45.25,24.02
accept Forbidden Practices##47423 |goto 45.25,24.02
step
talk Nokano##127665
accept Pests##47441 |goto 40.27,19.07
step
kill 8 Thieving Snapper##126331 |q 47441/1 |goto 39.28,19.45
step
click Mysterious Trashpile##282667
Follow the Big One |q 47441/2 |goto 35.34,7.65
step
talk Jani##126334
turnin Pests##47441 |goto 35.34,7.65
accept Curse of Jani##47442 |goto 35.34,7.65
step
Reach Nokano |q 47442/1 |goto 40.27,19.06
|tip Use the ability on your action bar.
|tip Avoid the trolls and spiders around this area.
step
kill Nokano##127669
|tip Attack him.
Watch the dialogue
Bite Nokano |q 47442/2 |goto 40.27,19.06
step
Watch the dialogue
Return to Jani |goto 35.46,7.71 < 30 |noway |c |q 47442
step
talk Jani##126334
turnin Curse of Jani##47442 |goto 35.46,7.71
step
use Loti's Totem##152627
|tip Use it next to Zanchuli Acolytes around this area.
|tip They may turn into Crimson Cultists and attack you.
kill 9 Crimson Cultist##138249 |q 47423/1 |goto 50.68,16.48
step
talk Hexlord Raal##126564
turnin Forbidden Practices##47423 |goto 51.90,11.88
accept Offensively Defensive##47433 |goto 51.90,11.88
step
talk Hexlord Raal##126564
Tell him _"Ready to patrol."_
Speak with Hexlord Raal |q 47433/1 |goto 51.90,11.88
step
clicknpc Ata the Winglord##126822
Fly the Skies with Hexlord Raal |q 47433/2 |goto 53.06,11.63
step
Place #6# Farseer Totems |q 47433/3 |goto 58.83,1.60 |notravel
|tip Use the "Farseer Totem" ability on your action bar.
|tip Use it on the yellow circles on the ground as you fly.
step
Watch the dialogue
Return to Zanchul |complete subzone("Zanchul") |goto 46.32,18.99 |q 47433 |notravel
step
talk Wardruid Loti##126560
turnin Offensively Defensive##47433 |goto 46.21,19.26
accept Restraining Order##47434 |goto 46.21,19.26
accept Pterrortorial Dispute##47435 |goto 46.21,19.26
stickystart "Slay_Bloodraged_Pterrordaxes"
step
Shoo #20# Pterrordax Hatchlings |q 47434/1 |goto 41.73,16.97
|tip They look like smaller red dinosaur birds flying low to the ground around this area.
|tip Walk next to them and they will fly away in fear.
step
label "Slay_Bloodraged_Pterrordaxes"
kill 6 Bloodraged Pterrordax##126618 |q 47435/1 |goto 41.73,16.97
step
talk Hexlord Raal##126564
|tip Next to the entrance of the building.
turnin Restraining Order##47434 |goto 40.93,11.31
turnin Pterrortorial Dispute##47435 |goto 40.93,11.31
accept Competitive Devotion##47437 |goto 40.93,11.31
step
Enter the building |goto 41.16,10.98 < 10 |walk
kill Guardian of the Tombs##127072 |q 47437/1 |goto Dazar'alor/4 65.51,69.04
|tip Inside the building.
step
Run up the stairs |goto 45.77,39.28 < 10 |walk |only if not subzone("Council Chambers")
kill Guardian of the Rites##127073 |q 47437/2 |goto Dazar'alor/3 65.93,30.68
|tip Upstairs inside the building.
step
Follow the path and leave the building |goto 77.47,87.57 < 10 |walk |only if _G.IsIndoors()
kill Guardian of the Dead##127074 |q 47437/3 |goto Dazar'alor/0 44.27,16.70
step
talk Wardruid Loti##126560
|tip Run up the stairs.
turnin Competitive Devotion##47437 |goto 46.11,13.06
accept Dire Situation##47422 |goto 46.11,13.06
step
kill Dregada##127079 |q 47422/1 |goto 43.63,7.38
|tip At the top of the building.
|tip Your allies will help you fight.
step
talk Wardruid Loti##126560
|tip She runs to this location.
|tip At the top of the building.
turnin Dire Situation##47422 |goto 42.29,9.10
accept Picking a Side##47438 |goto 42.29,9.10
step
_You Must Make a Choice:_
click Gonk
|tip Choosing Gonk will provide you with many totems around the city to allow you to run faster and take less falling damage in Dazar'alor.
_Or_
click Pa'ku
|tip Choosing Pa'ku will provide you with a few totems around the city to allow you to fly to certain locations around Dazar'alor.
Choose a Loa |q 47438/1 |goto 42.55,9.12
step
talk Wardruid Loti##126560
|tip At the top of the building.
turnin Picking a Side##47438 |goto 42.29,9.10
step
_Which Loa Did You Choose?_
|tip Click the line with the name of loa you chose.
Gonk |confirm |next "Gonk" |or |q 47439 |future
Pa'ku |confirm |next "Paku" |or |q 47440 |future
step
label "Gonk"
talk Wardruid Loti##126560
|tip At the top of the building.
accept Gonk, Lord of the Pack##47439 |goto 42.29,9.10
step
Follow the path up |goto 35.43,4.91 < 20 |only if walking
talk Gonk##127444
Tell him _"We have a bargain."_
Bargain with Gonk |q 47439/1 |goto 48.17,32.27
step
talk Wardruid Loti##127576
|tip Up on the temple.
turnin Gonk, Lord of the Pack##47439 |goto Dazar'alor/0 49.91,33.41
accept The Bargain is Struck##48897 |goto Dazar'alor/0 49.91,33.41
step
talk Huntmaster Kil'ja##130785
|tip Run up the stairs.
|tip Next to the flight master.
accept Nesingwary's Trek##49768 |goto 52.00,41.39
step
talk King Rastakhan##120740
|tip On top of the building.
|tip Ride an elevator up inside the building.
turnin The Bargain is Struck##48897 |goto 49.93,46.61
|next "Both_Loa_Continue"
step
label "Paku"
talk Hexlord Raal##126564
|tip At the top of the building.
accept Pa'ku, Master of Winds##47440 |goto Dazar'alor/0 42.54,9.49
step
clicknpc Ata the Winglord##127414
Begin Riding Ata the Winglord |invehicle |goto 42.48,10.06 |q 47440
step
Ride Ata the Winglord |q 47440/1 |goto Zuldazar/0 70.45,49.07 |notravel
step
talk Pa'ku##127377
Bargain with Pa'ku |q 47440/2 |goto 71.50,49.32
step
Jump Off the Cliff |q 47440/3 |goto 71.82,49.24
|tip You won't die.
step
Watch the dialogue
|tip You will fly automatically.
Return to Dazar'alor |goto Dazar'alor/0 50.09,34.52 < 30 |c |q 47440 |notravel
step
talk Hexlord Raal##127489
turnin Pa'ku, Master of Winds##47440 |goto Dazar'alor/0 49.92,33.40
accept The Bargain is Struck##47432 |goto Dazar'alor/0 49.92,33.40
step
click Totem of Pa'ku |goto 49.54,32.83
Fly to the Top of the Building |goto 49.91,39.56 < 10 |noway |c |q 47432
step
talk King Rastakhan##120740
|tip On top of the building.
|tip Ride an elevator up inside the building.
turnin The Bargain is Struck##47432 |goto 49.93,46.62
step
talk Huntmaster Kil'ja##130785
|tip Next to the flight master.
accept Nesingwary's Trek##49768 |goto 52.00,41.39
|next "Both_Loa_Continue"
step
label "Both_Loa_Continue"
talk Zul the Prophet##129907
turnin Tal'gurub##49488 |goto Zuldazar/0 62.82,32.56
accept Needs a Little Body##49489 |goto Zuldazar/0 62.82,32.56
accept The Urn of Voices##49490 |goto Zuldazar/0 62.82,32.56
step
talk Izita's Spirit##130706
accept Fuel for the Voodoo##49491 |goto 63.62,31.76
stickystart "Collect_Voodoo_Totems"
stickystart "Gather_Ounces_of_Soul"
step
Run up the stairs and enter the building |goto 64.93,33.11 < 10 |walk
clicknpc Atal'jamba Ungo##130089
|tip Inside the building.
"Improve" the Concoction |q 49489/1 |goto 65.02,32.99 |count 1
step
Enter the building |goto 63.07,29.06 < 10 |walk
clicknpc Atal'jamba Iri##130109
|tip Inside the building.
"Improve" the Concoction |q 49489/1 |goto 63.20,29.06 |count 2
step
label "Collect_Voodoo_Totems"
click Voodoo Totem##154901+
|tip They look like wooden glowing green totems on the ground around this area.
collect 8 Voodoo Totem##154901 |q 49491/1 |goto 63.56,30.85
step
label "Gather_Ounces_of_Soul"
Kill enemies around this area
Gather #30# Ounces of Soul |q 49490/1 |goto 63.56,30.85
step
click Brazier##278452
turnin Fuel for the Voodoo##49491 |goto 62.74,28.47
step
talk Zul the Prophet##129907
turnin Needs a Little Body##49489 |goto 62.86,28.24
turnin The Urn of Voices##49490 |goto 62.86,28.24
accept Arrogance of Vol'jamba##49492 |goto 62.86,28.24
step
clicknpc Voice of Vol'jamba##130209
Silence the Voice of Vol'jamba |q 49492/1 |goto 62.90,28.02
step
clicknpc Eyes of Vol'jamba##130208
Blind the Eyes of Vol'jamba |q 49492/2 |goto 63.55,28.07
step
clicknpc Spite of Vol'jamba##130197
Thwart the Spite of Vol'jamba |q 49492/3 |goto 64.12,28.38
step
Watch the dialogue
talk Zul the Prophet##129907
|tip He walks to this location.
turnin Arrogance of Vol'jamba##49492 |goto 64.38,28.55
accept Zul's Ethical Dilemma##49493 |goto 64.38,28.55
accept Zuvembi Brew##49494 |goto 64.38,28.55
stickystart "Free_Mindslaves"
step
click Jambani Stockpile##290750
accept Preparing for the Fall##51663 |goto 65.28,28.22
stickystart "Destroy_Jambani_Stockpiles"
step
kill Zuvembi Brewer Zekal##130260 |q 49494/1 |goto 64.89,27.01
step
label "Free_Mindslaves"
use the Mindbreaker Chant##155458
|tip Use it next to Mindslaved enemies around this area.
Free #9# Mindslaves |q 49493/1 |goto 65.24,28.67
step
label "Destroy_Jambani_Stockpiles"
click Jambani Stockpile##290750+
|tip They look like stacks of brown baskets on the ground around this area.
Destroy #8# Jambani Stockpiles |q 51663/1 |goto 65.24,28.67
step
talk Zul the Prophet##129907
|tip At the top of the stairs.
turnin Zul's Ethical Dilemma##49493 |goto 65.71,30.21
turnin Zuvembi Brew##49494 |goto 65.71,30.21
turnin Preparing for the Fall##51663 |goto 65.71,30.21
accept Enforcing Fate##49495 |goto 65.71,30.21
step
click Gong of Command##279349
Place the Seal of Implacable Fate |q 49495/1 |goto 65.89,31.08
step
click Urn of Voices##279353
|tip You will be attacked.
Place the Urn of Voices |q 49495/2 |goto 65.89,30.67
step
Watch the dialogue
|tip This quest is weird, it takes a moment for the quest goal to become completable.
click Urn of Voices##279353
Adjust the Urn of Voices |q 49495/3 |goto 65.86,30.65
step
click Mysterious Brew
Swap the Potion |q 49495/4 |goto 65.56,31.30
step
talk Zul the Prophet##129907
turnin Enforcing Fate##49495 |goto 65.70,30.21
accept Plot Twist##49905 |goto 65.70,30.21
step
Watch the dialogue
Confront Vol'jamba |q 49905/1 |goto 65.62,30.55
step
kill Vol'jamba##131241 |q 49905/2 |goto 65.68,31.03
|tip Allies will help you fight.
step
talk Zul the Prophet##129907
turnin Plot Twist##49905 |goto 65.58,30.51
accept False Prophecies##49663 |goto 65.58,30.51
step
talk Witch Doctor Jangalar##130929
accept Monstrous Matchmaker##49810 |goto 64.13,35.38
step
use Jangalar's Voodoo Totem##155911
|tip Use it on Gentle Ben'jin.
Voo-doo Gentle Ben'jin |q 49810/1 |goto 63.06,37.12
step
use Jangalar's Voodoo Totem##155911
|tip Use it on the Irritable Maka'fon.
Voo-doo the Irritable Maka'fon |q 49810/2 |goto 64.21,39.37
step
talk Witch Doctor Jangalar##130929
turnin Monstrous Matchmaker##49810 |goto 64.13,35.38
accept The Scent for a Brutosaur##49814 |goto 64.13,35.38
accept They Say It's a Delicacy##50154 |goto 64.13,35.38
step
talk Cala Cruzpot##130905
accept Aggressive Mating Strategy##49801 |goto 64.07,35.47
stickystart "Collect_Partially_Digested_Pods"
step
click Zandalari Rushes+
|tip They look like green plants growing in and around the water on the ground around this area.
collect 7 Fragrant Rushes##155916 |q 49814/1 |goto 62.54,37.15
step
label "Collect_Partially_Digested_Pods"
Kill Diemetradon enemies around this area
collect 25 Partially Digested Pod##155917 |q 50154/1 |goto 62.54,37.15
step
kill Invasive Razorwing##131554+
collect 8 Razorwing Bile Sac##155904 |q 49801/1 |goto 63.44,41.96
step
talk Cala Cruzpot##130905
turnin Aggressive Mating Strategy##49801 |goto 64.07,35.47
step
talk Witch Doctor Jangalar##130929
turnin The Scent for a Brutosaur##49814 |goto 64.13,35.37
turnin They Say It's a Delicacy##50154 |goto 64.13,35.37
accept Setting the Mood##50150 |goto 64.13,35.37
step
talk Cala Cruzpot##130905
accept Brutal Boost##50074 |goto 64.07,35.46
step
use the Aggression Formula##156475
|tip Use it on Gentle Ben'jin.
Watch the dialogue
Administer the Aggression Formula |q 50074/1 |goto 63.05,37.13
step
click Romantic Brutosaur Meal
Offer the Romantic Meal |q 50150/2 |goto 64.03,39.03
step
click Voodoo Lore Incense
Place the Voodoo Love Incense |q 50150/1 |goto 64.30,38.93
step
Watch the dialogue
Get Flung Away |goto 64.30,38.93 > 10 |c |q 50150
step
Land Safely |goto 63.63,35.90 < 7 |c |q 50150
step
talk Cala Cruzpot##130905
turnin Brutal Boost##50074 |goto 64.07,35.47
step
talk Witch Doctor Jangalar##130929
turnin Setting the Mood##50150 |goto 64.13,35.37
accept Mating Season Halftime##50252 |goto 64.13,35.37
step
talk Witch Doctor Jangalar##130929
Ask her _"Can Cala's science help?"_
Speak to Jangalar |q 50252/2 |goto 64.13,35.38
step
talk Cala Cruzpot##130905
Ask her _"Can you work with Jangalar to solve this problem?"_
Speak to Cala |q 50252/1 |goto 64.07,35.47
step
talk Witch Doctor Jangalar##130929
turnin Mating Season Halftime##50252 |goto 64.12,35.37
step
talk Cala Cruzpot##130905
accept Give it a Little Juice##50268 |goto 64.07,35.47
step
clicknpc Voodoo Cauldron##133167
Apply the Voodoo'ed Aggression Formula |q 50268/1 |goto 64.14,35.32
step
talk Cala Cruzpot##130905
turnin Give it a Little Juice##50268 |goto 64.07,35.47
accept Size Matters##49870 |goto 64.07,35.47
step
use the Voodoo'ed Aggression Formula##156867
|tip Use it on Tiny Sleeping Ben'jin.
Watch the dialogue
Administer the Voodoo'ed Aggression Formula |q 49870/1 |goto 63.06,37.11
step
Travel to Gloomtail's Cave |q 49870/2 |goto 63.99,41.94
step
Enter the cave |goto 64.56,42.07 < 15 |walk
kill Gloomtail##131555
|tip Inside the cave.
collect Gloomtail's Head##156922 |q 49870/3 |goto 65.01,42.09
step
talk Witch Doctor Jangalar##130929
turnin Size Matters##49870 |goto 64.12,35.37
accept The Head of Her Enemy##50297 |goto 64.12,35.37
step
Follow Jangalar and Cala |q 50297/1 |goto 64.17,39.10
step
clicknpc Gloomtail's Head##133300
Offer Gloomtail's Head |q 50297/2 |goto 64.17,39.10
step
Watch the dialogue
Confirm the Brutosaur Match |q 50297/3 |goto 64.26,38.98
step
talk Witch Doctor Jangalar##130929
turnin The Head of Her Enemy##50297 |goto 64.12,35.37
step
clicknpc Handler Bazkoji##139311
|tip Follow the road up.
turnin The Missing Handler##50538 |goto 65.57,41.22
step
clicknpc Direhorn Hatchling##122939
accept The Orphaned Hatchling##47226 |goto 65.65,41.35
step
talk Beastlord L'kala##121706
|tip Up on the hill.
turnin The Orphaned Hatchling##47226 |goto 66.81,42.51
accept Direhorn Daycare##47259 |goto 66.81,42.51
accept Ravenous Landsharks##48527 |goto 66.81,42.51
step
talk Jes'tri##123062
|tip Inside the building.
home Beastcaller Inn |goto 66.56,42.35 |q 49917 |future
step
talk Paku'ai Verraki##123060
fpath Warbeast Kraal |goto 67.26,43.03
stickystart "Kill_Irritable_Diemetradons"
step
click Soothing Lilybud##270918+
|tip They look like small green plants on the ground around this area.
Sate the Direhorn Hatchling's Hunger |q 47259/1 |goto 68.76,44.83
step
label "Kill_Irritable_Diemetradons"
kill 9 Irritable Diemetradon##126562 |q 48527/1 |goto 68.76,44.83
step
talk Beastlord L'kala##121706
|tip Up on the hill.
turnin Direhorn Daycare##47259 |goto 66.81,42.51
turnin Ravenous Landsharks##48527 |goto 66.81,42.51
accept Headbutting 101##47311 |goto 66.81,42.51
step
talk Trader Alexxi Cruzpot##122129
accept Direhorn Growth Hormone##47272 |goto 66.81,42.58
step
click Wanted: Poacher
accept WANTED: Jabra'kan##51980 |goto 69.05,40.85
step
talk Wingrider Nivek##125486
accept Queenfeather##47312 |goto 69.02,40.69
stickystart "Collect_Steaming_Fresh_Carrion"
stickystart "Command_Hatchling_to_Fight"
step
kill Queenfeather##139365
|tip She looks like a larger white raptor.
|tip She walks around this area.
collect Queenfeather's Plume##160945 |q 47312/1 |goto 71.17,40.30
step
label "Collect_Steaming_Fresh_Carrion"
click Steaming Fresh Carrion##291235+
|tip They look like red piles of bones and organs on the ground around this area.
collect 10 Steaming Fresh Carrion##150347 |q 47272/1 |goto 70.58,40.04
step
label "Command_Hatchling_to_Fight"
Command the Hatchling to Fight #12# Times |q 47311/1 |goto 70.58,40.04
|tip Use the "Mark for Attack!" ability on enemies around this area.
|tip It appears as a button on the screen.
step
kill Jabra'kan the Poacher##139440 |q 51980/1 |goto 67.11,37.36
|tip He walks around this area.
|tip If you have trouble, try to find help, or skip the quest.
step
talk Wingrider Nivek##125486
turnin WANTED: Jabra'kan##51980 |goto 69.02,40.70
turnin Queenfeather##47312 |goto 69.02,40.70
step
talk Trader Alexxi Cruzpot##122129
turnin Direhorn Growth Hormone##47272 |goto 66.81,42.58
step
talk Beastlord L'kala##121706
turnin Headbutting 101##47311 |goto 66.81,42.51
accept Wings for the Kraal##51990 |goto 66.81,42.51
step
talk Trader Alexxi Cruzpot##122129
accept DGH: Now With Real Direhorn##51998 |goto 66.81,42.58
stickystart "Collect_Partially_Digested_Direhorn_Flesh"
step
click Nearly-hatching Pterrordax Egg##270040+
|tip They look like large white eggs on the ground around this area.
collect 8 Nearly-hatching Pterrordax Egg##150272 |q 51990/1 |goto 67.20,33.24
step
label "Collect_Partially_Digested_Direhorn_Flesh"
Kill enemies around this area
|tip Only enemies that look like pterodactyls will drop the quest item.
collect 8 Partially Digested Direhorn Flesh##160975 |q 51998/1 |goto 67.20,33.24
step
talk Scroll of Flight##136331
fpath Scaletrader Post |goto 70.78,29.59
step
talk Beastlord L'kala##121706
turnin Wings for the Kraal##51990 |goto 66.81,42.51
step
talk Trader Alexxi Cruzpot##122129
turnin DGH: Now With Real Direhorn##51998 |goto 66.81,42.58
accept Growing Pains##47418 |goto 66.82,42.58
step
clicknpc Direhorn Hatchling##139643
Watch the dialogue
Feed the Hatchling DGH |q 47418/1 |goto 66.85,42.44
step
talk Trader Alexxi Cruzpot##122129
turnin Growing Pains##47418 |goto 66.81,42.58
step
talk Beastlord L'kala##121706
accept How to Train Your Direhorn##47261 |goto 66.81,42.51
step
talk Kraal Master B'khor##122009
Tell him _"I'm ready to train."_
Talk to Training Master B'khor |q 47261/1 |goto 67.56,43.45
step
Watch the dialogue
|tip You will be attacked and have to run away from Pinky, so be ready.
Meet Pinky |q 47261/2 |goto 69.14,45.13
step
Escape Out the North Gate |q 47261/3 |goto 69.72,43.85
step
Follow the path up |goto 70.12,43.32 < 20 |only if walking
Run For Help |q 47261/4 |goto 70.25,44.96
|tip Use the ability on your action bar as often as possible.
|tip Run over the green glowing plants on the ground to heal your Direhorn.
step
Cross the bridge |goto 69.60,46.74 < 20 |only if walking
Follow the path down |goto 68.48,47.53 < 20 |only if walking
Run For More Help |q 47261/5 |goto 67.18,44.18
|tip Use the abilities on your action bar as often as possible.
|tip Use the "Sprint" ability on your action bar to bust through the wooden gates.
|tip Run over the green glowing plants on the ground to heal your Direhorn.
step
Watch the dialogue
Return to Kraal Master B'khor |q 47261/6 |goto 67.56,43.45
step
Release the Direhorn |outvehicle |goto 67.56,43.45 |q 47261
|tip Click the red arrow on your action bar.
step
talk Kraal Master B'khor##122009
turnin How to Train Your Direhorn##47261 |goto 67.56,43.45
accept A Good Spanking##48581 |goto 67.56,43.45
step
kill Pinky##126732
|tip He will eventually surrender.
Subdue Pinky |q 48581/1 |goto 67.84,44.89
step
talk Beastlord L'kala##121706
|tip Up on the hill.
turnin A Good Spanking##48581 |goto 66.81,42.51
accept Naptime##47310 |goto 66.81,42.51
step
click Gate
Stable the Direhorn Juvenile |q 47310/1 |goto 68.22,42.09
step
talk Beastlord L'kala##121706
|tip Up on the hill.
turnin Naptime##47310 |goto 66.81,42.51
step
talk King Rastakhan##120740
|tip Ride an elevator up inside the building.
|tip On top of the building.
turnin False Prophecies##49663 |goto Dazar'alor/0 49.93,46.61
accept A Port in Peril##49122 |goto Dazar'alor/0 49.93,46.61
step
click Hunter's Board##271706
accept Hunt for King K'tal##47706 |goto Zuldazar/0 67.44,17.92
accept WANTED: Ten'gor and Nol'ixwan##51091 |goto Zuldazar/0 67.44,17.92
step
talk Hemet Nesingwary##123005
turnin Nesingwary's Trek##49768 |goto 67.50,17.71
accept He's Gone Mad!##50466 |goto 67.50,17.71
step
talk Tracker Burke##123022
accept Die, Die, Diemetradon##47583 |goto 67.57,17.73
step
talk Erak the Aloof##123026
accept A Thorn in the Side##47584 |goto 67.45,17.72
step
talk Lasa the Galerider##123006
fpath Nesingwary's Gameland |goto 66.19,17.60
step
talk Trapper Custer##123118
accept Predatory##47585 |goto 68.85,19.44
stickystart "Collect_Skull_Of_Ktal"
stickystart "Slay_Venemous_Diemetradons"
stickystart "Slay_Ankylodons"
step
clicknpc Marksman Julyen##123113
Find Marksman Julyen |q 47585/2 |goto 67.81,25.04
step
kill Wildtusk##123653 |q 50466/1 |goto 70.94,26.46
|tip He walks around this area.
step
clicknpc Ranger Paalu##123117
Find Ranger Paalu |q 47585/1 |goto 70.64,22.09
step
label "Collect_Skull_Of_Ktal"
kill King K'tal##123502
|tip He looks like a large brown and gold tyrannosarus rex that walks around this area.
|tip He will appear on your minimap as a yellow dot.
|tip If you have trouble, try to find help, or skip the quest.
collect Skull of K'tal##151169 |q 47706/1 |goto 70.19,22.51
step
label "Slay_Venemous_Diemetradons"
kill 8 Venomous Diemetradon##123098 |q 47583/1 |goto 68.25,25.06
step
label "Slay_Ankylodons"
Kill Ankylodon enemies around this area
Slay #12# Ankylodons |q 47584/1 |goto 68.56,23.01
step
click Tracker Burke's Hat##291013
turnin Die, Die, Diemetradon##47583 |goto 67.49,18.89
step
talk Erak the Aloof##141948
turnin A Thorn in the Side##47584 |goto 68.01,18.03
step
talk Huntmaster Vol'ka##123019
turnin Predatory##47585 |goto 67.50,17.62
turnin Hunt for King K'tal##47706 |goto 67.50,17.62
turnin He's Gone Mad!##50466 |goto 67.50,17.62
accept Hunting the Hunter##47586 |goto 67.50,17.62
step
click Nesingwary's Campfire##293499
Find Nesingwary's Last Camp |q 47586/1 |goto 63.66,19.79 |goto 62.45,19.27
step
click Dwarf Trap##271561
Find the Suspicious Trap |q 47586/2 |goto 61.48,17.95
step
click Nesingwary's Favorite Rifle##271558
Find Nesingwary's Prized Possession |q 47586/3 |goto 62.32,16.87
step
talk Hemet Nesingwary##138669
|tip Inside the building.
turnin Hunting the Hunter##47586 |goto 63.50,16.15
accept Headhunter Jo##47587 |goto 63.50,16.15
step
kill Headhunter Jo##123007 |q 47587/1 |goto 62.96,15.81
step
talk Hemet Nesingwary##138669
|tip Inside the building.
turnin Headhunter Jo##47587 |goto 63.50,16.15
stickystart "Slay_Tengor"
step
kill Nol'ixwan##130741 |q 51091/1 |goto 61.69,25.44
|tip If you have trouble, try to find help, or skip the quest.
step
label "Slay_Tengor"
kill Ten'gor##130713 |q 51091/2 |goto 61.94,25.40
|tip If you have trouble, try to find help, or skip the quest. |notinsticky
step
talk Huntmaster Vol'ka##123019
turnin WANTED: Ten'gor and Nol'ixwan##51091 |goto 67.50,17.62
step
Cross the bridge |goto Dazar'alor/0 42.59,81.74 < 20 |only if walking and not subzone("The Mugambala")
talk Paku'ai Chal##148157
fpath The Mugambala |goto Zuldazar/0 53.34,57.33
step
talk Zolani##127815
|tip Follow the main road to him.
turnin A Port in Peril##49122 |goto Zuldazar/0 47.92,60.44
accept Wrath of the Zandalari##49144 |goto Zuldazar/0 47.92,60.44
step
talk Habutu##127814
accept No Troll Left Behind##49145 |goto 47.87,60.44
step
talk Paku'ai Ja'nessa##127818
fpath Warport Rastari |goto 48.22,60.34
step
talk Examiner Tae'shara Bloodwatcher##131582
|tip Follow the main road to him.
accept The Bloodwatcher Legacy##47329 |goto 43.91,72.11
step
clicknpc Dirt Pile##131799
Reveal the Fossil |q 47329/1 |goto 43.96,72.12 |count 11
step
clicknpc Carefully Calibrated Sweeper##131749
Watch the dialogue
Reveal the Fossil |q 47329/1 |goto 43.97,72.01
step
talk Apprentice Telemancer Astrandis##131580
turnin The Bloodwatcher Legacy##47329 |goto 43.91,72.14
accept Scrying for the Eye##47235 |goto 43.91,72.14
accept Archaeological Efficiency##50043 |goto 43.91,72.14
step
talk Examiner Tae'shara Bloodwatcher##131582
accept Xibalan Ecology##47228 |goto 43.91,72.11
step
click Wanted: Dark Chronicler##287229
accept WANTED: Dark Chronicler##51087 |goto 44.31,72.17
step
talk Alitha Duskwing##124458
home Xibala |goto 44.61,71.76 |q 51539 |future
step
talk Eliara Duskwing##123817
fpath Xibala |goto 44.84,72.25
stickystart "Collect_Xibalan_Fossil_Fragments"
stickystart "Slay_Xibalan_Predators"
step
clicknpc Essence Collector##136173
Complete the Outer Ruins Scrying |q 47235/1 |goto 42.49,72.24
step
clicknpc Essence Collector##136173
Complete the Inner Ruins Scrying |q 47235/2 |goto 42.82,73.90
step
clicknpc Essence Collector##136173
Complete "The Foot" Scrying |q 47235/3 |goto 41.37,75.40
step
Follow the path up |goto 42.39,77.28 < 20 |only if walking and not subzone("Throat of Xibala")
Enter the cave |goto 43.25,76.40 < 10 |walk |only if not subzone("Throat of Xibala")
kill Dark Chronicler##136428 |q 51087/1 |goto 44.12,76.50
|tip Inside the cave.
|tip If you have trouble, try to find help, or skip the quest.
step
label "Collect_Xibalan_Fossil_Fragments"
Leave the cave |goto 43.25,76.40 < 10 |walk |only if subzone("Throat of Xibala")
use the Sweeper Beacon##156596
|tip Use it near Dirt Piles on the ground around this area.
|tip They look like brown piles of dirt on the ground around this area.
Watch the dialogue
click Xibalan Fossil##280497+
|tip They look like piles of white bones on the ground around this area.
|tip They appear after you use the Sweeper Beacon next to the Dirt Piles.
|tip Make sure you loot the piles for fragments.
|tip If there are no more dirt piles, but you don't have 50 fragments, abandon and reacquire the quest Archaeological Efficiency from Apprentice Telemancer Astrandis.
collect 50 Xibalan Fossil Fragment##156597 |q 50043/1 |goto 42.14,73.84
step
label "Slay_Xibalan_Predators"
Leave the cave |goto 43.25,76.40 < 10 |walk |only if subzone("Throat of Xibala")
Kill Xibalan enemies around this area
Slay #8# Xibalan Predators |q 47228/1 |goto 42.14,73.84
step
Leave the cave |goto 43.25,76.40 < 10 |walk |only if subzone("Throat of Xibala")
talk Examiner Tae'shara Bloodwatcher##131582
turnin Xibalan Ecology##47228 |goto 43.91,72.11
turnin WANTED: Dark Chronicler##51087 |goto 43.91,72.11
step
talk Apprentice Telemancer Astrandis##131580
turnin Scrying for the Eye##47235 |goto 43.91,72.14
turnin Archaeological Efficiency##50043 |goto 43.91,72.14
accept A Nose for Magic##48317 |goto 43.91,72.14
step
talk Apprentice Telemancer Astrandis##131878
Tell him _"Let's begin."_
Speak to Astrandis in the Western Ruins |q 48317/1 |goto 41.02,77.14
step
clicknpc Essence Collector##136173
Place the First Scrying Vessel |q 48317/2 |goto 40.70,76.89
step
Kill the enemies that attack
Complete the First Scrying |q 48317/3 |goto 40.70,76.89
step
clicknpc Essence Collector##136173
Place the Second Scrying Vessel |q 48317/4 |goto 40.31,77.06
step
Kill the enemies that attack
Complete the Second Scrying |q 48317/5 |goto 40.31,77.06
step
clicknpc Essence Collector##136173
Place the Third Scrying Vessel |q 48317/6 |goto 39.92,77.06
step
Kill the enemies that attack
Complete the Third Scrying Vessel |q 48317/7 |goto 39.92,77.06
step
Watch the dialogue
talk Apprentice Telemancer Astrandis##131580
|tip He walks to this location.
turnin A Nose for Magic##48317 |goto 40.03,76.53
accept A Dark (Iron) Tide##48399 |goto 40.03,76.53
accept Grand Theft Telemancy##48400 |goto 40.03,76.53
stickystart "Slay_Dark_Iron_Dwarves"
step
kill Urda Direflame##132189 |q 48400/1 |goto 39.11,72.45
|tip She will appear on your minimap as a yellow dot.
step
clicknpc Telemancy Beacon##136179
Place the Telemancy Beacon |q 48400/2 |goto 39.10,72.45
step
label "Slay_Dark_Iron_Dwarves"
Kill enemies around this area
Slay #7# Dark Iron Dwarves |q 48399/1 |goto 38.92,72.72
step
talk Apprentice Telemancer Astrandis##131580
turnin A Dark (Iron) Tide##48399 |goto 44.42,72.11
turnin Grand Theft Telemancy##48400 |goto 44.42,72.11
step
talk Kaza'jin the Wavebinder##127837
accept Spirits' Belongings##49146 |goto 47.14,60.47
stickystart "Rally_Rastari_Defenders"
stickystart "Slay_Mogu_Invaders"
step
click Grimoire of the Other Side##277886
collect Grimoire of the Other Side##153526 |q 49146/2 |goto 46.80,61.87
step
click Reclaimed Bijous##277444
|tip Upstairs on the building.
|tip Next to the wall.
collect Reclaimed Bijous##153525 |q 49146/1 |goto 45.61,60.36
step
click Venerated Remains##277447
|tip On top of the wall.
collect Venerated Remains##153527 |q 49146/3 |goto 45.81,62.46
step
label "Rally_Rastari_Defenders"
click Crude Barricade+
|tip They look like wooden barriers in the entrances of buildings around this area.
use the Rastari Skull Whistle##153524
|tip Use it near Rastari Defenders around this area.
|tip They look like friendly Trolls standing on the ground around this area.
Rally #12# Rastari Defenders |q 49145/1 |goto 45.78,60.90
step
label "Slay_Mogu_Invaders"
Kill enemies around this area
Slay #8# Mogu Invaders |q 49144/1 |goto 45.78,60.90
step
talk Habutu##127814
turnin No Troll Left Behind##49145 |goto 47.87,60.44
step
talk Zolani##127815
turnin Wrath of the Zandalari##49144 |goto 47.92,60.44
step
talk Kaza'jin the Wavebinder##127837
turnin Spirits' Belongings##49146 |goto 48.08,60.38
accept Embrace the Voodoo##49149 |goto 48.08,60.38
step
talk Zolani##127815
accept Crumbling Apart##49148 |goto 47.92,60.44
step
talk Habutu##127814
accept Show of Strength##49147 |goto 47.87,60.44
stickystart "Kill_Stormbound_Conquerors"
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.22,61.86 |count 1
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.97,63.07 |count 2
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 46.71,63.66 |count 3
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.45,65.14 |count 4
step
kill Jao-Ti the Thunderous##128474 |q 49147/1 |goto 48.12,64.49
step
click Spirit Obelisk##277313
|tip Run up the stairs.
Activate the Spirit Obelisk |q 49149/1 |goto 47.48,66.76 |count 5
step
kill Subjugator Zheng##128472 |q 49147/2 |goto 45.83,66.52
step
label "Kill_Stormbound_Conquerors"
kill Kao-Tien Stormbinder##127778+
collect Condensed Thunder##153529+ |n
|tip These will give you a "Thundering Blast" ability for a short time.
|tip Use the "Thundering Blast" ability on Stormbound Conquerors and Inert Conquerors around this area.
|tip It appears as a button on the screen.
kill 10 Stormbound Conqueror##128447 |q 49148/1 |goto 46.99,67.08
|tip Stand in the blue circles on the ground that appear while fighting them.
|tip These will help you kill them faster.
step
talk Kaza'jin the Wavebinder##127837
turnin Embrace the Voodoo##49149 |goto 49.59,64.48
turnin Crumbling Apart##49148 |goto 49.59,64.48
turnin Show of Strength##49147 |goto 49.59,64.48
accept Thunder's Fall##49309 |goto 49.59,64.48
step
kill Warlord Kao##127766 |q 49309/1 |goto 50.20,65.37
|tip On the deck of the ship.
step
talk Kaza'jin the Wavebinder##127837
turnin Thunder's Fall##49309 |goto 49.59,64.48
accept The Prophet's Ploy##49310 |goto 49.59,64.48
step
clicknpc Scarbeak##133960
Ride Scarbeak to King Rastakhan's Throne |q 49310/1 |goto 49.51,64.35
step
Watch the dialogue
Return to The Golden Throne |complete zone("Dazar'alor") |q 49310
step
Enter the building |goto Dazar'alor/0 49.94,42.14 < 10 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin The Prophet's Ploy##49310 |goto Dazar'alor/2 41.45,72.29
accept Terrace of the Chosen##47509 |goto Dazar'alor/2 41.45,72.29
accept The Wounded King##51101 |goto Dazar'alor/2 41.45,72.29
step
talk Nok'tal##130932
|tip Inside the building.
accept Kaja'mite? Kaja'must!##49917 |goto 67.20,83.81
step
Cross the bridge |goto Dazar'alor/0 41.07,60.91 < 30 |only if walking and not subzone("Village in the Vines")
talk Bently Greaseflare##132267
turnin Kaja'mite? Kaja'must!##49917 |goto Zuldazar/0 51.60,50.57
accept Kaja'mite Ore Bust##49919 |goto Zuldazar/0 51.60,50.57
accept King Da'ka##49922 |goto Zuldazar/0 51.60,50.57
step
talk Shado##137331
|tip Inside the building.
home Village in the Vines |goto 51.28,51.24 |q 47738 |future
step
talk Tsunga##130947
accept Gorilla Warfare##49920 |goto 50.18,54.57
stickystart "Scan_Kajamite_Steam_Vents"
stickystart "Release_Peace_Loving_Gorillas"
step
label "Scan_Kajamite_Steam_Vents"
click Kaja'mite Steam Vent##279389+
|tip They look like steam rising out of piles of grey rocks on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Scan #5# Kaja'mite Steam Vents |q 49919/1 |goto 49.15,54.07
step
label "Release_Peace_Loving_Gorillas"
click Cages
|tip They look like brown stick cages on the ground around this area.
Release #6# Peace-Loving Gorillas |q 49920/1 |goto 49.15,54.07
step
Follow the path up |goto 48.59,52.38 < 20 |only if walking
talk Tsunga##131258
turnin Gorilla Warfare##49920 |goto 47.42,52.43
step
Enter the cave |goto 47.15,51.59 < 10 |walk |only if not (subzone("Gorilla Gorge") and _G.IsIndoors())
kill King Da'ka##130948 |q 49922/1 |goto 46.73,50.47
|tip Inside the cave.
step
use the Hearthstone##6948
Hearth to Village in the Vines |complete subzone("Village in the Vines") |q 608
|only if subzone("Gorilla Gorge")
step
talk Bently Greaseflare##132617
turnin Kaja'mite Ore Bust##49919 |goto 51.60,50.57
turnin King Da'ka##49922 |goto 51.60,50.57
step
click Wanted: Dangerous Beasts##287189
accept WANTED: Prime Thumpknuckle##51072 |goto 51.62,45.45
accept WANTED: Sabertusk Empress##51071 |goto 51.62,45.45
step
kill Prime Thumpknuckle##136334 |q 51072/1 |goto 52.68,45.00
|tip It walks around this area.
|tip It will appear on your minimap as a yellow dot.
|tip If you have trouble, try to find help, or skip the quest.
step
kill Sabertusk Empress##129323 |q 51071/1 |goto 52.41,47.76
|tip If you have trouble, try to find help, or skip the quest.
step
talk Shaz'ki##131187
turnin WANTED: Prime Thumpknuckle##51072 |goto 51.65,50.53
turnin WANTED: Sabertusk Empress##51071 |goto 51.65,50.53
step
talk Kaza the Skyblade##129483
|tip Follow the road.
fpath Temple of the Prophet |goto 49.81,44.59
step
Run up the stairs |goto Dazar'alor/0 51.75,19.08 < 15 |only if walking
talk Kaza'jin the Wavebinder##124629
turnin Terrace of the Chosen##47509 |goto Dazar'alor/0 42.64,21.42
accept Zanchuli Traitors##47897 |goto Dazar'alor/0 42.64,21.42
accept Rescuing the Taken##47915 |goto Dazar'alor/0 42.64,21.42
stickystart "Slay_Zanchuli_Traitors"
step
kill Hexmother Kala##133297
collect Fetish of Loti##156923 |q 47915/1 |goto 43.52,17.68
step
label "Slay_Zanchuli_Traitors"
Kill enemies around this area
Slay #10# Zanchuli Traitors |q 47897/1 |goto 40.91,16.06
step
talk Wardruid Loti##123335
turnin Zanchuli Traitors##47897 |goto 39.29,13.84
turnin Rescuing the Taken##47915 |goto 39.29,13.84
step
_Next to you:_
talk Wardruid Loti
accept Raal##47518
accept Walls Have Ears##47520
stickystart "Slay_Eyes_and_Ears_of_Yazma"
step
Enter the building |goto 41.10,11.05 < 10 |only if walking
Run up the stairs |goto Dazar'alor/4 45.67,39.19 < 10 |only if walking
Follow the path and leave the building |goto Dazar'alor/3 77.53,87.18 < 10 |only if walking
Run up the stairs |goto Dazar'alor/0 46.02,15.89 < 15 |only if walking
kill Crazzak the Heretic##124652 |q 47518/1 |goto Dazar'alor/0 43.46,7.06
|tip At the top of the building.
step
talk Hexlord Raal##133324
|tip At the top of the building.
turnin Raal##47518 |goto 43.62,7.35
step
label "Slay_Eyes_and_Ears_of_Yazma"
Kill Yazma enemies around this area
|tip You can find them on top of the building, outside on the lower levels, or inside the building. |notinsticky
Slay #8# Eyes and Ears of Yazma |q 47520/1 |goto 43.46,7.06
step
_Next to you:_
talk Wardruid Loti
turnin Walls Have Ears##47520
step
talk Hexlord Raal##133324
|tip On top of the building.
accept Midnight in the Garden of the Loa##47521 |goto 42.55,9.49
step
clicknpc Ata the Winglord##127414
|tip On top of the building.
Mount Ata the Winglord |invehicle |goto 42.48,10.05 |q 47521
step
Ride with Ata the Winglord |q 47521/1 |goto Zuldazar/0 50.73,29.57 |notravel
step
Watch the dialogue
talk Wardruid Loti##122760
turnin Midnight in the Garden of the Loa##47521 |goto 50.70,29.65
accept The Hunter##47522 |goto 50.70,29.65
step
talk Hexlord Raal##133653
accept The Ancient One##47963 |goto 50.69,29.57
step
Rescue Gonk |q 47522/1 |goto 48.63,31.86
step
Watch the dialogue
talk Gonk##124827
turnin The Hunter##47522 |goto 48.39,32.12
step
kill Shadra Betrayer##133735+
|tip Kill the enemies channeling on Pa'ku.
Rescue Pa'ku |q 47963/1 |goto 52.10,32.81
step
talk Pa'ku##124756
turnin The Ancient One##47963 |goto 52.10,32.81
step
_Next to you:_
talk Acolyte Mali
accept Mistress of Lies##47528
step
Enter the building |goto 47.72,28.87 < 10 |walk |only if not (subzone("Shrine of Shadra") and _G.IsIndoors())
kill Vol'kaal##122866
|tip Inside the building.
Defeat Vol'kaal |q 47528/1 |goto 47.09,27.85
step
Watch the dialogue
|tip Inside the building.
Defeat Yazma |q 47528/2 |goto 47.21,27.72
step
Leave the building |goto 47.71,28.87 < 10 |walk |only if subzone("Shrine of Shadra") and _G.IsIndoors()
talk Wardruid Loti##122760
turnin Mistress of Lies##47528 |goto 48.58,26.78
step
talk Paku'ai Rip'nata##130787
fpath Garden of the Loa |goto 49.72,26.27
step
talk Zolani##124083
|tip Run around the mountain and follow the road.
turnin The Wounded King##51101 |goto 76.69,16.26
accept In Bwonsamdi's Shadow##51680 |goto 76.69,16.26
step
talk Jamil Abul'housin##132637
|tip Inside the building.
Ask him _"How goes the mending?"_
Speak to Jamil Abul'housin |q 51680/1 |goto 76.47,16.00
step
talk Jol the Ancient##124063
|tip Inside the building.
Ask him _"How goes the mending?"_
Speak to Jol the Ancient |q 51680/2 |goto 76.44,16.16
step
talk Jol the Ancient##124063
|tip Inside the building.
turnin In Bwonsamdi's Shadow##51680 |goto 76.44,16.17
accept Ancient Tortollan Remedies##47735 |goto 76.44,16.17
step
talk Jamil Abul'housin##132637
|tip Inside the building.
accept The Scent of Vengeance##47739 |goto 76.47,16.00
step
talk Zolani##124083
accept No Safe Haven##50235 |goto 76.69,16.26
step
talk Paku'ai Jasi##124456
fpath Zeb'ahari |goto 77.36,15.35
stickystart "Rescue_Zebahari_Villagers"
stickystart "Collect_Traitors_Bloods"
step
clicknpc Laelani##132681
collect Brutosaur Scale##156824 |q 47735/2 |goto 78.59,13.13
step
label "Rescue_Zebahari_Villagers"
click Zeb'ahari NPC's
|tip They look like friendly blue trolls on the ground and fighting enemies around this area.
Rescue #12# Zeb'ahari Villagers |q 50235/1 |goto 80.19,14.76
step
clicknpc Spiny Puffer##133162
collect Envenomed Puffer Spine##156809 |q 47735/1 |goto 79.79,16.53
step
talk Zeb'ahari Villager##138520
accept The Loa-Speaker's Betrayal##47733 |goto 79.35,16.77
step
kill Loa-Speaker Kihara##132979 |q 47733/1 |goto 78.53,20.28
step
kill Ol' Bubbly##132650
collect Aged Crab Foam##156827 |q 47735/3 |goto 79.55,21.62
step
label "Collect_Traitors_Bloods"
Kill enemies around this area
collect 12 Traitor's Blood##156834 |q 47739/1 |goto 78.60,19.47
step
talk Zolani##124083
turnin No Safe Haven##50235 |goto 76.69,16.26
turnin The Loa-Speaker's Betrayal##47733 |goto 76.69,16.26
step
talk Jamil Abul'housin##132637
|tip Inside the building.
turnin The Scent of Vengeance##47739 |goto 76.47,16.00
step
talk Jol the Ancient##124063
|tip Inside the building.
turnin Ancient Tortollan Remedies##47735 |goto 76.44,16.16
accept Mending Body and Soul##51677 |goto 76.44,16.16
step
talk Jol the Ancient##124063
Tell him _"I am ready, Jol."_
Speak to Jol |q 51677/1 |goto 76.44,16.16
step
Watch the dialogue
click Astringent Spices
|tip Inside the building.
collect Astringent Spices##160566 |goto 76.56,15.95 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Astringent Spices>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 18
step
Watch the dialogue
click Sea Urchin Brine
|tip Inside the building.
collect Sea Urchin Brine##160567 |goto 76.46,16.25 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Sea Urchin Brine>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 36
step
Watch the dialogue
click Jol's Preserved Notes
|tip Inside the building.
collect Ancient Tortollan Scroll##160568 |goto 76.27,16.01 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Ancient Tortollan Scroll>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 54
step
Watch the dialogue
click Odoriferous Stew
|tip Inside the building.
Assist Jol |q 51677/2 |goto 76.49,15.93 |count 72
step
Watch the dialogue
click Clotting Powder
|tip Inside the building.
collect Clotting Powder##160569 |goto 76.36,16.16 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Clotting Powder>_
Assist Jol |q 51677/2 |goto 76.50,16.08 |count 90
step
Watch the dialogue
|tip Inside the building.
Assist Jol |q 51677/2 |goto 76.50,16.08 |count 100
step
Watch the dialogue
talk Jol the Ancient##138598
|tip He walks to this location.
|tip Inside the building.
turnin Mending Body and Soul##51677 |goto 76.44,16.17
step
talk Jamil Abul'housin##132637
|tip Inside the building.
accept The Will of the Loa##47738 |goto 76.47,16.00
step
click Idol of Rezan##281024
Place the Idol of Rezan |q 47738/1 |goto 76.85,13.23
step
Watch the dialogue
talk Rezan##133068
|tip He walks to this location.
Tell him _"Rastakhan is injured and will not wake. We need your help."_
Speak to Rezan |q 47738/2 |goto 77.12,13.24
step
Watch the dialogue
clicknpc King Rastakhan##133107
Retrieve Rastakhan's Soul |q 47738/3 |goto 76.89,13.23
step
Watch the dialogue
clicknpc King Rastakhan##132631
|tip Inside the building.
Restore Rastakhan's Soul to His Body |q 47738/4 |goto 76.46,16.07
step
Watch the dialogue
talk King Rastakhan##124062
|tip He walks to this location.
turnin The Will of the Loa##47738 |goto 76.66,16.13
accept Zul's Mutiny##47742 |goto 76.66,16.13
accept Rastakhan's Might##51678 |goto 76.66,16.13
step
talk Zolani##124083
accept A Strange Port of Call##51679 |goto 76.65,16.18
step
talk Jol the Ancient##124063
|tip Inside the building.
home Zeb'ahari Inn |goto 76.42,16.08
stickystart "Slay_Mutinous_Zandalaris"
step
click Rope |goto 80.81,20.48
Climb Onto the Ship |goto 80.85,20.30 < 2 |noway |c |q 51678
step
click Rope |goto 80.85,20.29
Board the Ship |goto 80.88,20.39 < 2 |noway |c |q 51678
step
kill Windcaller Ula'jan##133140
|tip At the top of the ship.
collect Skull of Windcaller Ula'jan##156861 |q 51678/1 |goto 81.30,19.59
step
click Temple of Rezan Map##290996
|tip Inside the ship, on the deck level.
Search the Navigation Chamber |q 51679/1 |goto 81.27,19.74
step
Search the Hold |q 51679/2 |goto Zuldazar/1 52.51,77.91
|tip Downstairs one level inside the ship.
step
clicknpc Chronicler To'kini##138728
|tip Downstairs two levels inside the ship.
Search the Crew Quarters |q 51679/3 |goto Zuldazar/2 47.39,44.05
step
label "Slay_Mutinous_Zandalaris"
Kill enemies around this area
Slay #10# Mutinous Zandalari |q 47742/1 |goto 49.68,44.95
step
talk King Rastakhan##124062
turnin Zul's Mutiny##47742 |goto Zuldazar/0 76.66,16.13
turnin Rastakhan's Might##51678 |goto Zuldazar/0 76.66,16.13
turnin A Strange Port of Call##51679 |goto Zuldazar/0 76.66,16.13
accept The Temple of Rezan##47737 |goto Zuldazar/0 76.66,16.13
step
talk King Rastakhan##124655
|tip Run around the mountain and follow the road.
turnin The Temple of Rezan##47737 |goto 72.03,21.03
accept House of the King##47740 |goto 72.03,21.03
step
talk Zolani##124656
accept Heads Will Roll##47736 |goto 72.09,21.20
stickystart "Collect_Traitorous_Zandalari_Heads"
step
click Corrupting Totem##281216+
|tip There are three around this area.
Cleanse Rezan the Hunter |q 47740/1 |goto 72.16,23.80
step
click Corrupting Totem##281216+
|tip There are three around this area.
Cleanse Rezan the King |q 47740/3 |goto 73.82,22.94
step
click Corrupting Totem##281216+
|tip There are three around this area.
Cleanse Rezan the Conqueror |q 47740/2 |goto 73.68,25.76
step
label "Collect_Traitorous_Zandalari_Heads"
Kill enemies around this area
|tip Kao-Tien enemies will not drop the quest item.
collect 12 Traitorous Zandalari Head##151384 |q 47736/1 |goto 73.61,25.18
step
talk Zolani##124656
turnin Heads Will Roll##47736 |goto 74.85,24.90
step
talk King Rastakhan##124655
turnin House of the King##47740 |goto 74.87,24.94
accept Partners in Heresy##47734 |goto 74.87,24.94
step
kill Darkweaver Ji'tan##124085 |q 47734/1 |goto 75.16,23.16
step
kill Soulrender Gao'tan##124088 |q 47734/2 |goto 75.12,26.56
|tip Inside the building.
|tip Stand in the blue circle that appear under him.
step
talk King Rastakhan##124655
turnin Partners in Heresy##47734 |goto 74.87,24.94
accept To Sacrifice a Loa##47741 |goto 74.87,24.94
step
Watch the dialogue
|tip After you attack Vilnak'dor, King Rastakhan will remove his damage reduction buffs.
kill Vilnak'dor##133570 |q 47741/1 |goto 75.99,24.91
step
Watch the dialogue
Disrupt the Loa Sacrifice Ritual |q 47741/2 |goto 76.06,24.90
step
Locate King Rastakhan |goto 76.06,24.90 < 10 |c |q 47741
step
talk King Rastakhan##124655
Tell him _"Let's get out of here!"_
Watch the dialogue
Begin Following King Rastakhan |goto 76.06,24.90 > 10 |c |q 47741
step
Watch the dialogue
|tip Follow King Rastakhan as he walks.
|tip He eventually walks to this location.
Escape the Temple of Rezan |q 47741/3 |goto 73.37,28.20
step
talk Rezan##124948
turnin To Sacrifice a Loa##47741 |goto 70.83,29.90
step
talk King Rastakhan##124915
accept King or Prey##51111 |goto 70.98,29.91
step
Enter the building |goto Dazar'alor/0 49.99,41.88 < 10 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin King or Prey##51111 |goto Dazar'alor/2 41.43,72.44
accept Hunting Zul##49421 |goto Dazar'alor/2 41.43,72.44
accept Keep Them On Task##51555 |goto Dazar'alor/2 41.43,72.44
accept Sending Out An SOS##52210 |goto Dazar'alor/2 41.43,72.44
step
talk Brillin the Beauty##122690
|tip Inside the building.
home The Great Seal |goto Dazar'alor/1 48.65,71.99
step
talk Captain Grez'ko##140590
turnin Sending Out An SOS##52210 |goto Dazar'alor/0 46.15,94.59
accept Send the Signal!##49758 |goto Dazar'alor/0 46.15,94.59
step
clicknpc Fleet Scout##140566
Take the Fleet Scout to the Far Island |q 49758/1 |goto 46.40,94.63
step
Fly to the Isle of Fangs |complete subzone("Isle of Fangs") |goto Zuldazar/0 54.57,86.73 |q 49758 |notravel
step
talk Bo'tzun Maset##135576
turnin Send the Signal!##49758 |goto 54.42,87.01
accept Key to the Brig##49775 |goto 54.42,87.01
step
talk Paku'ai Leti##140650
fpath Isle of Fangs |goto 54.45,87.06
step
kill Quartermaster Garza##130795
|tip She walks around this area on the main deck level.
|tip Inside the ship.
collect Brig Key##155882 |q 49775/1 |goto 51.56,86.88
step
talk Wavemaster Lanfa##130821
|tip Downstairs inside the ship.
turnin Key to the Brig##49775 |goto Zuldazar/3 44.05,50.74
accept Not "Only Zul"##49754 |goto Zuldazar/3 44.05,50.74
step
Kill enemies around this area
|tip Anywhere on the ship, on all deck levels.
Purge #10# of Zul's Forces |q 49754/1 |goto 41.99,44.51
step
talk Wavemaster Lanfa##130821
|tip Leave the ship.			|only if subzone("Breath of Pa'ku")
turnin Not "Only Zul"##49754 |goto Zuldazar/0 54.38,87.02
accept Against the Tide##49871 |goto Zuldazar/0 54.38,87.02
step
kill Warlord Xiar##130742 |q 49871/1 |goto 54.69,90.50
|tip Up on the mountain.
|tip He walks around this area.
|tip The Lightning Rods that line this path will stun you.
|tip Click the Lightning Rods to gain a stackable buff to help you kill him easier.
step
use the Empowered Fire Mojo##156473
Light the Signal Fire |q 49871/2 |goto 54.74,90.21
step
Watch the dialogue
talk Captain Grez'ko##130750
|tip He falls to this location.
turnin Against the Tide##49871 |goto 54.69,89.71
accept Destroy the Weapon##49785 |goto 54.69,89.71
step
clicknpc Harli the Swift##130759
Ride with Harli the Swift |invehicle |goto 54.64,89.67 |q 49785
step
Fly to Tusk Isle |complete subzone("Tusk Isle") |goto 59.38,78.09 |q 49785 |notravel
step
talk Paku'ai Jetar##140653
fpath Tusk Isle |goto 59.39,77.94
step
Investigate the Weapon |q 49785/1 |goto 57.92,76.53
step
kill Reo'kah##130725 |q 49785/2 |goto 57.44,75.60
|tip On the deck of the ship.
step
talk Captain Grez'ko##130833
turnin Destroy the Weapon##49785 |goto 57.81,76.64
accept Hope's Blue Light##49884 |goto 57.81,76.64
step
clicknpc Captain Grez'ko##130833
Ride with Captain Grez'ko |invehicle |goto 57.81,76.64 |q 49884
step
Watch the dialogue
|tip Use the "Igniting..." ability on your action bar.
Light the Signal Fire |q 49884/1 |goto 60.82,75.25 |notravel
step
Return to the Port of Zandalar |complete subzone("Port of Zandalar") |goto Dazar'alor/0 45.98,94.38 |q 49884 |notravel
step
talk Captain Rez'okun##123000
turnin Hope's Blue Light##49884 |goto 44.48,95.46
step
talk Wavesinger De'zan##133538
Tell him _"Seeker's Outpost: Dreadpearl Shallows"_
Begin Riding the Boat |invehicle |goto 52.84,95.76 |q 49285 |future
step
Watch the dialogue
Ride the Boat to Seekers' Outpost |complete subzone("Seekers' Outpost") |goto Zuldazar/0 69.86,65.88 |q 49285 |future |notravel
step
talk Koba##128888
|tip He walks around this area.
accept Tiny Treasures##49285 |goto Zuldazar/0 70.29,65.07
step
clicknpc Scroll of Flight##134008
fpath Seeker's Outpost |goto 70.45,65.31
step
talk Batu##129586
|tip He walks around this area.
accept Perfect Tidings##49284 |goto 70.54,65.21
step
click Tortollan Traveling Pack##278336
Find the First Clue |q 49284/1 |goto 71.20,64.57
step
click Amphibious Lab Enclosure##278231
collect Amphibious Lab Enclosure##156865 |q 49285/1 |goto 71.66,64.15
step
click Tortollan Scroll##278348
Find the Second Clue |q 49284/2 |goto 72.65,63.05
step
clicknpc Spitzy##133192
Find Spitzy |q 49285/3 |goto 73.08,64.86
step
click Hatchling's First Alchemy Stone##278233
collect Hatchling's First Alchemy Stone##156866 |q 49285/2 |goto 73.19,67.22
step
click Tortollan Scroll Case##278349
Find the Third Clue |q 49284/3 |goto 74.02,62.08
step
talk Choa##133417
turnin Tiny Treasures##49285 |goto 73.65,60.96
step
talk Deyon##128889
turnin Perfect Tidings##49284 |goto 73.65,60.96
accept Caged Wisdom##49286 |goto 73.65,60.96
step
Enter the cave |goto 73.63,60.62 < 10 |walk |only if not subzone("Dreadpearl Cavern")
kill Sli'thrus##128728
|tip He walks around this area inside the cave.
collect Nazeshi Cage Key##154708 |q 49286/1 |goto 74.48,59.80
step
Leave the cave |goto 73.63,60.62 < 10 |walk |only if subzone("Dreadpearl Cavern")
click Jailer Cage##277859
Open the Cage |q 49286/2 |goto 73.66,60.97
step
talk Deyon##128889
turnin Caged Wisdom##49286 |goto 73.66,60.97
accept Lost Chelonians##49287 |goto 73.66,60.97
accept Scrollhunters##49288 |goto 73.66,60.97
stickystart "Recover_Tortollan_Scrolls"
step
click Nazeshi Cage##281219
Free Kono |q 49287/1 |goto 73.94,65.87
step
click Nazeshi Cage##281219
Free Rauloo |q 49287/2 |goto 75.15,66.53
step
click Nazeshi Cage##281219
Free Akru |q 49287/3 |goto 77.05,66.45
step
click Nazeshi Cage##281219
Free Crosh |q 49287/4 |goto 77.29,64.36
step
label "Recover_Tortollan_Scrolls"
kill Nazeshi Tempest-Wielder##128604+
Recover #5# Tortollan Scrolls |q 49288/1 |goto 76.91,64.94
step
talk Deyon##128925
turnin Lost Chelonians##49287 |goto 75.22,61.48
turnin Scrollhunters##49288 |goto 75.22,61.48
accept A Special Stone##49289 |goto 75.22,61.48
step
use the Scroll of Storm Control##157539
|tip Use it to gain the "Stormstruck" ability.
kill Tidemistress Nazesh##128712
|tip She walks around this area.
|tip Use the "Stormstruck" ability on her as you fight her.
|tip It appears as a button on the screen.
collect Report from Zuldazar##157543 |q 49289/1 |goto 76.64,61.22
step
click Fractured Azerite##289519
collect Stone Fragment##157554 |q 49289/2 |goto 76.68,61.39
step
talk Deyon##128925
turnin A Special Stone##49289 |goto 75.22,61.48
step
Watch the dialogue
talk Deyon##128925
accept Find Their Words##51407 |goto 75.22,61.48
step
Watch the dialogue
clicknpc Outpost Portal##140342
Teleport to Seekers' Outpost |complete subzone("Seekers' Outpost") |goto 75.19,61.46 |q 51407
step
talk Akru##129717
turnin Find Their Words##51407 |goto 70.56,64.89
accept A Different Outcome##50331 |goto 70.56,64.89
step
talk Wavesinger Zara##137645
Tell her _"Atal'Gral"_
Begin Riding the Boat to Atal'gral |invehicle |goto 69.49,66.99 |q 50331
step
Watch the dialogue
Take Boat Service to Atal'gral |q 50331/1 |goto 82.27,47.18 |notravel
step
talk Rokor##125047
turnin A Different Outcome##50331 |goto 81.35,45.79
accept The Scrolls of Gral##48015 |goto 81.35,45.79
accept Clear the Riffraff##48014 |goto 81.35,45.79
stickystart "Slay_Brackfin_Giblins"
step
click Waves of Power##272562
collect Waves of Power##151853 |q 48015/1 |goto 80.52,45.01
step
click Scroll of Purify##272561
collect Scroll of Purify##151854 |q 48015/2 |goto 79.99,44.45
step
click Edicts of Gral##272563
collect Edicts of Gral##151852 |q 48015/3 |goto 80.76,43.28
step
label "Slay_Brackfin_Giblins"
Kill Brackfin enemies around this area
Slay #6# Brackfin Gilbins |q 48014/1 |goto 80.72,43.96
step
talk Trader Kro##125039
turnin Clear the Riffraff##48014 |goto 79.22,42.28
step
talk Scrollsage Goji##125041
turnin The Scrolls of Gral##48015 |goto 79.20,42.10
accept Saving for Later##48025 |goto 79.20,42.10
step
talk Trader Kro##125039
accept Awaken a God##49969 |goto 79.22,42.28
step
clicknpc Scroll of Flight##134011
fpath Atal'Gral |goto 79.97,41.40
stickystart "Collect_Chunks_of_Naga_Flesh"
step
use the Scroll of Illusion##151859
|tip Use it next to Gral's Tooth.
Disguise Gral's Tooth |q 48025/4 |goto 81.75,41.21
step
use the Scroll of Illusion##151859
|tip Use it next to the Voice of the Ocean.
|tip Underwater.
Disguise the Voice of the Ocean |q 48025/5 |goto 83.52,39.96
step
use the Scroll of Illusion##151859
|tip Use it next to the Cask of Blessed Water.
Disguise the Cask of Blessed Water |q 48025/3 |goto 81.38,39.00
step
use the Scroll of Illusion##151859
|tip Use it next to the Chest of Pearls.
|tip Underwater.
Disguise the Chest of Pearls |q 48025/2 |goto 79.67,36.73
step
use the Scroll of Illusion##151859
|tip Use it next to the Fetishes of Gral.
|tip Inside the tent.
Disguise the Fetishes of Gral |q 48025/1 |goto 78.31,37.07
step
label "Collect_Chunks_of_Naga_Flesh"
Kill Dreadcoil enemies around this area
|tip Dreadcoil Brutes will not drop the quest item.
collect 12 Chunk of Naga Flesh##156539 |q 49969/1 |goto 78.72,38.51
step
talk Scrollsage Goji##125041
turnin Saving for Later##48025 |goto 79.20,42.10
step
click Offering Vessel##279705
|tip Underwater.
turnin Awaken a God##49969 |goto 82.77,42.32
step
clicknpc Shrine of Gral##131475
|tip Underwater.
accept Beneath the Waves##48026 |goto 82.85,42.33
stickystart "Slay_Summoner_Siavass"
step
kill Whispering Horror##131487 |q 48026/2 |goto 83.60,44.27
|tip Underwater.
step
label "Slay_Summoner_Siavass"
kill Summoner Siavass##125087 |q 48026/1 |goto 83.72,44.61
|tip Underwater. |notinsticky
step
_Next to you:_
talk Spirit of Gral
turnin Beneath the Waves##48026
accept Word from the Deep##51538
step
talk Scrollsage Goji##125041
turnin Word from the Deep##51538 |goto 79.20,42.10
accept Inform the Horde!##51539 |goto 79.20,42.10
step
talk Lieutenant Dennis Grimtale##137075
|tip Follow the road.
turnin Keep Them On Task##51555 |goto 76.61,48.53
accept The Wreckoning##51246 |goto 76.61,48.53
accept The Things They Carried##51247 |goto 76.61,48.53
step
talk Teekay Treadlebobbin##135855
accept Productive Pests##51248 |goto 76.42,48.71
step
talk J'eebi##135803
accept Crabulous Feast##51249 |goto 76.38,48.75
stickystart "Collect_Bugs"
stickystart "Collect_Large_Lump_Of_Crab_Meat"
stickystart "Slay_7th_Legion_Sailors"
step
kill Sergeant Wayne##137089
collect Ship's Manifest##159835 |q 51247/3 |goto 74.55,51.71
step
kill Sailor Jaseon##137084
collect Scouting Map##159836 |q 51247/2 |goto 76.69,50.98
step
kill Medic Hunt##137082
collect Unsent Letter##159837 |q 51247/1 |goto 76.50,52.75
step
label "Collect_Bugs"
clicknpc Mosquito##137200+
|tip They look like small flying bugs on the ground around this area.
clicknpc Sand Borer##137834+
|tip They look like small beetles on the ground around this area.
Collect #5# Bugs |q 51248/1 |goto 75.83,51.97
step
label "Collect_Large_Lump_Of_Crab_Meat"
kill Derelict Hexapod##137255+
collect 7 Large Lump of Crab Meat##159934 |q 51249/1 |goto 75.83,51.97
step
label "Slay_7th_Legion_Sailors"
Kill 7th Legion enemies around this area
Slay #10# 7th Legion Sailors |q 51246/1 |goto 75.83,51.97
step
talk J'eebi##135803
turnin Crabulous Feast##51249 |goto 76.38,48.75
step
talk Teekay Treadlebobbin##135855
turnin Productive Pests##51248 |goto 76.42,48.72
step
talk Lieutenant Dennis Grimtale##137075
turnin The Wreckoning##51246 |goto 76.61,48.52
turnin The Things They Carried##51247 |goto 76.61,48.52
accept Stop the Evacuation##51286 |goto 76.61,48.52
step
click Inconspicuous Seaforium Bomb
Place the Seaforium Bomb |q 51286/1 |goto 80.16,57.05
step
kill Captain Sarai Naut##141521 |q 51286/2 |goto 79.95,57.24
step
talk Lieutenant Dennis Grimtale##137075
turnin Stop the Evacuation##51286 |goto 76.61,48.53
step
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin Inform the Horde!##51539 |goto Dazar'alor/2 41.46,72.16
step
talk King Rastakhan##129491
turnin Hunting Zul##49421 |goto Dazar'alor/0 38.92,27.15
accept The Warpack##49965 |goto Dazar'alor/0 38.92,27.15
step
Watch the dialogue
clicknpc Wardruid Loti##134132
Ride with Wardruid Loti |invehicle |goto 38.81,27.02 |q 49965
step
Watch the dialogue
|tip You will run automatically.
Ride with the Warpack |q 49965/1 |goto Zuldazar/0 49.19,44.79 |notravel
step
talk Gonk##129740
turnin The Warpack##49965 |goto 49.27,44.32
accept Heretics##49422 |goto 49.27,44.32
step
talk Wardruid Loti##129561
accept The Full Prophecy##49424 |goto 49.34,44.35
stickystart "Bring_Ruin"
step
click The Word of Zul III##280350
Read The Word of Zul III |q 49424/3 |goto 48.81,42.76
step
click The Word of Zul II##280349
|tip Inside the building.
Read The Word of Zul II |q 49424/2 |goto 49.01,40.57
step
click The Word of Zul I##280348
Read The Word of Zul I |q 49424/1 |goto 48.75,39.40
step
_Next to you:_
talk Wardruid Loti
turnin The Full Prophecy##49424
step
label "Bring_Ruin"
Kill enemies around this area
clicknpc Skykiller Ballista##129540+
|tip They look like wooden crossbow machines on the ground around this area.
Bring Ruin |q 49422/1 |goto 49.07,39.36
|tip Fill the bar in the quest tracker area.
step
talk Hexlord Raal##129703
turnin Heretics##49422 |goto 49.65,37.98
accept City of Gold##49425 |goto 49.65,37.98
step
clicknpc Ata the Winglord##129701
Ride Ata the Winglord |q 49425/1 |goto 49.64,37.91
step
Watch the dialogue
Kill enemies around this area
|tip They are on the ground around this area as you fly.
|tip Use the ability on your action bar.
Slay #75# Forces of Zul |q 49425/2 |goto 45.97,36.79
step
Watch the dialogue
Travel to Atal'Dazar |complete subzone("Atal'Dazar") |goto 43.77,39.08 |q 49425 |notravel
step
talk Rezan##131049
turnin City of Gold##49425 |goto 43.70,39.45
accept The King's Gambit##49426 |goto 43.70,39.45
step
March on Atal'Dazar |q 49426/1 |goto 42.08,39.52
|tip Follow Rezan as he walks.
step
talk King Rastakhan##131070
Ask him _"What now?"_
Watch the dialogue
Speak with King Rastakhan |q 49426/2 |goto 42.08,39.52
step
talk King Rastakhan##139633
Tell him _"Time to leave!"_
|tip King Rastakhan will begin following you.
Click Here Once He Starts Following You |confirm |goto 41.94,39.49 |q 49426
step
Watch the dialogue
|tip Run up the stairs.
|tip Follow your allies as they run.
Get Rastakhan to Safety |q 49426/3 |goto 42.73,37.65
step
talk King Rastakhan##129757
turnin The King's Gambit##49426 |goto 42.73,37.65
accept Atal'Dazar: Yazma the Fallen Priestess##49901 |goto 42.73,37.65
accept Of Dark Deeds and Dark Days##50963 |goto 42.73,37.65
step
talk Loz the Paku'ai##130790
|tip Cross the bridge.
fpath Atal'dazar |goto 46.16,35.81
step
Enter the building |goto Dazar'alor/0 49.95,42.14 < 10 |walk
talk Princess Talanji##133050
|tip Inside the building.
turnin Of Dark Deeds and Dark Days##50963 |goto Dazar'alor/2 41.26,66.71
step
talk Natal'hakata##131287
|tip Inside the building.
accept Sandscar Breach##49940 |goto 67.34,71.59
step
talk Bladeguard Sonji##130450
turnin Sandscar Breach##49940 |goto Zuldazar/0 47.25,24.95
accept I Spy a Spire##49678 |goto Zuldazar/0 47.25,24.95
accept Skycaller Soltok##49680 |goto Zuldazar/0 47.25,24.95
step
talk Beastmother Jabati##131354
accept The Sethrak Incursion##49679 |goto 47.33,25.14
stickystart "Destroy_Sethrak_Spires"
stickystart "Slay_Sethrak_Invaders"
step
talk Lil' Tika##130468
accept Lil' Tika##49681 |goto 46.23,23.33
step
click Sethrak Cage##277876
Release Lil' Tika |q 49681/1 |goto 46.23,23.33
step
clicknpc Chief Chan'Tika##130482
|tip Inside the building.
Find Lil' Tika's Master |q 49681/2 |goto 45.37,26.40
step
kill Skycaller Soltok##130412 |q 49680/1 |goto 45.30,26.23
|tip On top of the building.
step
label "Destroy_Sethrak_Spires"
click Sethrak Spire##278583+
|tip They look like large stone pillars with enemies channeling lightning on them on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #4# Sethrak Spires |q 49678/1 |goto 45.22,25.42
step
label "Slay_Sethrak_Invaders"
Kill enemies around this area
Slay #12# Sethrak Invaders |q 49679/1 |goto 45.73,24.41
step
talk Bladeguard Sonji##130450
turnin I Spy a Spire##49678 |goto 47.25,24.95
turnin Skycaller Soltok##49680 |goto 47.25,24.95
step
talk Beastmother Jabati##131354
turnin The Sethrak Incursion##49679 |goto 47.33,25.14
turnin Lil' Tika##49681 |goto 47.33,25.14
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Nazmir (10-60)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Nazmir storylines:\n\nDeep in the Swamp\nUndercover Sista\nA Friend of the Frogs\nBring the Boom\nA Pact with Death\nTurtle Power\nEverything Contained\nBleeding the Blood Trolls",
condition_suggested=function() return level >= 10 and not completedq(50808) and completedq(52131) end,
startlevel=10.0,
endlevel=50.0,
image=ZGV.IMAGESDIR.."Nazmir",
next="Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Vol'dun (10-60)",
},[[
step
click Scouting Map
|tip Click the "Nazmir" quest icon on the map.
|tip Inside the building.
accept Nazmir##47512 |goto Dazar'alor/2 41.65,69.21
step
talk Princess Talanji##133050
|tip Inside the building.
turnin Nazmir##47512 |goto 41.18,66.77
accept Journey to Nazmir##47103 |goto 41.18,66.77
step
talk Rokhan##126549
turnin Journey to Nazmir##47103 |goto Dazar'alor/0 51.66,41.29
accept Nazmir, the Forbidden Swamp##48535 |goto Dazar'alor/0 51.66,41.29
step
talk Paku'ai Rokota##122689
Tell her _"Get me as close as you can to Nazmir."_
Begin Flying to the Nazmir Outskirts |ontaxi |goto 51.91,41.20 |q 48535
step
Take a Flight to the Nazmir Outskirts |q 48535/1 |goto Zuldazar/0 50.93,21.49 |notravel
step
Meet with Princess Talanji |q 48535/2 |goto Nazmir/0 43.36,86.52
step
talk Princess Talanji##120904
turnin Nazmir, the Forbidden Swamp##48535 |goto 43.00,86.03
accept Into The Darkness##47105 |goto 43.00,86.03
step
Scout Ahead |q 47105/1 |goto 46.94,80.18
step
talk Princess Talanji##130844
|tip She runs to this location.
turnin Into The Darkness##47105 |goto 47.25,79.74
accept Improper Burial##47130 |goto 47.25,79.74
accept Leave None Standing##47264 |goto 47.25,79.74
stickystart "Slay_Blood_Trolls"
step
use the Ceremonial Torch##154724
|tip Use it on Dead Zandalari around this area.
|tip They look like Troll corpses laying on the ground around this area.
Burn #5# Dead Zandalari |q 47130/1 |goto 48.96,78.41
step
label "Slay_Blood_Trolls"
Kill Blood Troll enemies around this area
Slay #8# Blood Trolls |q 47264/1 |goto 48.96,78.41
step
talk Princess Talanji##121241
turnin Improper Burial##47130 |goto 45.65,74.79
turnin Leave None Standing##47264 |goto 45.65,74.79
accept Ending the Blood Trolls##47262 |goto 45.65,74.79
step
kill Grand Ma'da Ateena##121504
|tip Run up the stairs.
|tip She will eventually escape.
|tip Princess Talanji will help you fight.
Watch the dialogue
Slay Grand Ma'da Ateena |q 47262/1 |goto 44.91,71.65
step
Watch the dialogue
talk Princess Talanji##130844
|tip She runs to this location.
turnin Ending the Blood Trolls##47262 |goto 45.21,71.04
accept A Time of Revelation##47263 |goto 45.21,71.04
step
Watch the dialogue
talk Princess Talanji##131146
|tip She runs to this location.
Tell her _"We need to move, we shouldn't stay here."_
Speak with Talanji at the Overlook |q 47263/1 |goto 45.57,68.65
step
Watch the dialogue
|tip You will run automatically.
Travel to Zul'jan Ruins |complete subzone("Zul'jan Ruins") |goto 39.41,76.65 |q 47263 |notravel
step
talk Princess Talanji##121288
turnin A Time of Revelation##47263 |goto 39.14,79.07
accept The Aid of the Loa##47188 |goto 39.14,79.07
step
talk Princess Talanji##121288
Tell her _"Let's discuss what we can do to fight the blood trolls."_
Watch the dialogue
Listen to Talanji and Rokhan |q 47188/1 |goto 39.15,79.07
step
talk Princess Talanji##121288
turnin The Aid of the Loa##47188 |goto 39.15,79.07
accept The Shadow of Death##47241 |goto 39.15,79.07
step
click Scouting Report##287232
accept WANTED: Tojek##51089 |goto 39.56,79.95
step
talk Crazy Vaza##121840
|tip Inside the building.
home Zul'jan Ruins |goto 38.62,78.66 |q 49902 |future
step
talk Zabar##121828
fpath Zul'jan |goto 38.85,78.14
step
talk Sur'jan##126713
accept Urok, Terror of the Wetlands##48669 |goto 38.83,77.71
step
talk Sur'jan##126713
Tell him _"Show me Urok, the Terror of the Wetlands."_
Watch the dialogue
Observe Urok, Terror of the Wetlands |q 48669/1 |goto 38.83,77.71
step
talk Sur'jan##126713
turnin Urok, Terror of the Wetlands##48669 |goto 38.83,77.71
accept Crocolisk Life##48573 |goto 38.83,77.71
accept Pulling Fangs##48574 |goto 38.83,77.71
stickystart "Collect_Saurid_Teeth"
step
kill Primal Snapjaw##126723+
use Sur'jan's Ritual Dagger##152596
|tip Use it near their corpses.
Absorb #8# Snapjaw Mojo |q 48573/1 |goto 36.33,75.99
step
label "Collect_Saurid_Teeth"
kill Sickly Saurid##126689+
collect 40 Saurid Teeth##152595 |q 48574/1 |goto 34.84,79.30
step
talk Sur'jan##126713
turnin Crocolisk Life##48573 |goto 34.08,78.57
turnin Pulling Fangs##48574 |goto 34.08,78.57
step
Watch the dialogue
talk Sur'jan##126713
accept Safe Flying##48576 |goto 34.08,78.57
accept Terrorizing their Eggs##48577 |goto 34.08,78.57
accept There's No Eye in Skyterror##48578 |goto 34.08,78.57
stickystart "kill_Primal_Skyterrors"
stickystart "Destroy_Skyterror_Eggs"
step
kill Jarkadiax##126703
|tip On top of the mountain.
collect Jarkadiax's Eye##152600 |q 48578/1 |goto 33.83,86.03
step
label "kill_Primal_Skyterrors"
use Sur'jan's Grappling Hook##152610
|tip Use it on Primal Skyterrors around this area.
|tip They are flying in the air around this area.
kill 8 Primal Skyterror##126702 |q 48576/1 |goto 34.19,84.02
step
label "Destroy_Skyterror_Eggs"
click Skyterror Egg##273827+
|tip They look like large white eggs in nests on the ground around this area.
Destroy #5# Skyterror Egg |q 48577/1 |goto 34.19,84.02
step
talk Sur'jan##126713
turnin Safe Flying##48576 |goto 34.08,78.57
turnin Terrorizing their Eggs##48577 |goto 34.08,78.57
turnin There's No Eye in Skyterror##48578 |goto 34.08,78.57
step
Watch the dialogue
talk Sur'jan##126713
accept The Blood of My Enemies##48584 |goto 34.08,78.57
accept My Head and Shoulders##48590 |goto 34.08,78.57
stickystart "Collect_Coagulated_Dreadtick_Blood"
step
clicknpc Sur'jan's Helm##141728
collect Sur'jan's Helm##156621 |q 48590/1 |goto 31.62,73.48
step
clicknpc Sur'jan's Left Shoulderpad##141858
collect Sur'jan's Left Shoulderpad##156620 |q 48590/2 |goto 31.05,71.38
step
clicknpc Sur'jan's Right Shoulderpad##141860
collect Sur'jan's Right Shoulderpad##156619 |q 48590/3 |goto 28.73,76.76
step
label "Collect_Coagulated_Dreadtick_Blood"
use Sur'jan's Dreadtick Gasser##156618
|tip Use it on Dreadtick Latchers around this area.
kill Dreadtick Latcher##126749+
collect 45 Coagulated Dreadtick Blood##152611 |q 48584/1 |goto 29.29,74.01
step
talk Sur'jan##126713
turnin The Blood of My Enemies##48584 |goto 28.76,72.64
turnin My Head and Shoulders##48590 |goto 28.76,72.64
step
Watch the dialogue
talk Sur'jan##126713
accept Urok's True Death##48591 |goto 28.76,72.64
step
Enter the cave |goto 26.85,73.16 < 20 |walk
kill Urok##123757 |q 48591/1 |goto 25.78,73.53
|tip Inside the cave.
|tip Sur'jan will help you fight.
step
talk Sur'jan##131872
turnin Urok's True Death##48591 |goto 28.76,72.64
step
kill Tojek##136381 |q 51089/1 |goto 26.98,67.13
|tip It looks like a large yellow and brown triceratops that walks around this area.
|tip If you have trouble, try to find help, or skip the quest.
step
Enter the building |goto 37.73,63.11 < 10 |walk
click Broken Spear##271170
|tip Inside the building.
Investigate the Abandoned Ruins |q 47241/2 |goto 37.50,63.06
step
click Weathered Shrine##270902
Investigate the Weathered Shrine |q 47241/1 |goto 39.61,64.97
step
talk Shinga Deathwalker##130481
accept Bwonsamdi's Deliverance##48468 |goto 39.06,60.67
accept Respecting the Rites##48473 |goto 39.06,60.67
stickystart "Light_Ritual_Torches"
stickystart "Burn_Defiled_Corpses"
step
click Ritual Powder##281361
|tip Outside, next to the building.
|tip Up in the ruins.
collect Ritual Powder##157793 |q 48473/2 |goto 41.30,62.58
step
label "Light_Ritual_Torches"
click Ritual Torch##277693+
|tip They look like wooden sticks with red tips coming out of the ground around this area.
|tip They will appear on your minimap as yellow dots.
Light #5# Ritual Torches |q 48473/1 |goto 41.55,63.90
step
label "Burn_Defiled_Corpses"
Kill Defiled enemies around this area
use the Cremation Torch##153178
|tip Use it on their corpses.
|tip You can burn the corpses of enemies other players killed.
Burn #10# Defiled Corpses |q 48468/1 |goto 41.44,63.50
step
talk Shinga Deathwalker##126080
turnin Bwonsamdi's Deliverance##48468 |goto 38.93,59.91
turnin Respecting the Rites##48473 |goto 38.93,59.91
accept Kel'vax's Home##48478 |goto 38.93,59.91
step
talk Kol'jun Deathwalker##126079
accept Bones for Protection##48479 |goto 39.00,59.93
step
use Spirit Powder##154130
Begin the Spirit Journey |havebuff 134380 |goto 39.00,59.92 |q 48478
stickystart "Collect_Cursed_Bones"
step
click Ancient Phylactery##278341
collect Ancient Phylactery##154136 |q 48478/2 |goto 39.39,57.47
step
click Pristine Phylactery##278343
collect Pristine Phylactery##154137 |q 48478/3 |goto 38.32,54.39
step
click Repaired Phylactery##278337
collect Repaired Phylactery##152468 |q 48478/1 |goto 40.99,51.97
step
label "Collect_Cursed_Bones"
Kill enemies around this area
|tip Only the enemies that look like skeletons will drop the quest item.
collect 40 Cursed Bone##153346 |q 48479/1 |goto 39.52,55.43
step
talk Kol'jun Deathwalker##126079
turnin Bones for Protection##48479 |goto 39.00,59.92
step
talk Shinga Deathwalker##126080
turnin Kel'vax's Home##48478 |goto 38.93,59.92
accept The Fall of Kel'vax##48480 |goto 38.93,59.92
step
kill Kel'vax Deathwalker##126126 |q 48480/1 |goto 42.21,57.49
|tip Run up the stairs.
step
talk Shinga Deathwalker##126080
turnin The Fall of Kel'vax##48480 |goto 38.93,59.91
step
clicknpc Blood Scavenger##122094
Investigate the Shrine of Bones |q 47241/3 |goto 35.62,58.58
step
Watch the dialogue
talk Hanzabu##122102
turnin The Shadow of Death##47241 |goto 36.62,53.93
accept A Culling of Souls##47244 |goto 36.62,53.93
step
kill Blood Witch Najima##122204 |q 47244/1 |goto 38.55,49.98
step
talk Hanzabu##124428
turnin A Culling of Souls##47244 |goto 39.52,43.83
accept Spiritual Restoration##49278 |goto 39.52,43.83
step
clicknpc Drained Spirit##134363
Restore the Drained Spirit |q 49278/1 |goto 39.04,43.90 |count 1
step
clicknpc Drained Spirit##134363
Restore the Drained Spirit |q 49278/1 |goto 38.86,43.50 |count 2
step
talk Du'ba##122191
fpath Zo'bal Ruins |goto 40.18,42.83
step
clicknpc Drained Spirit##134363
|tip Inside the building.
Restore the Drained Spirit |q 49278/1 |goto 40.89,43.54 |count 3
step
talk Hanzabu##124428
turnin Spiritual Restoration##49278 |goto 39.52,43.83
step
Watch the dialogue
talk Witch Doctor Kejabu##122795
|tip He flies down and lands at this location.
accept Blood Troll on the Outside##49440 |goto 39.63,43.87
step
talk Witch Doctor Kejabu##122795
accept The Necropolis##47868 |goto 39.52,43.83
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.41,43.53 |count 1
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.57,43.74 |count 2
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.74,43.52 |count 3
step
talk Witch Doctor Kejabu##122795
Tell him _"I'm ready to begin the ritual to disguise myself as a blood troll."_
Watch the dialogue
Speak to Witch Doctor Kejabu to Complete the Ritual |q 49440/2 |goto 39.63,43.86
step
Watch the dialogue
talk Witch Doctor Kejabu##122795
turnin Blood Troll on the Outside##49440 |goto 39.63,43.86
accept Sneaking into Zalamar##48699 |goto 39.63,43.86
step
talk Hanzabu##124513
turnin The Necropolis##47868 |goto 39.58,32.58
accept A Tribute for Death##47880 |goto 39.58,32.58
step
Draw the Ritual Circle |q 47880/1 |goto 39.58,32.35
|tip Walk on top of the dashed lines on the ground to trace them.
step
click Drum of Spirits##270997
Watch the dialogue
Sound the Drum of Spirits |q 47880/2 |goto 39.59,31.84
step
Enter the building |goto 39.56,26.73 < 10 |walk |only if not ((subzone("The Necropolis") or subzone("The Edge of Oblivion")) and _G.IsIndoors())
Watch the dialogue
talk Bwonsamdi##122688
|tip Inside the building.
turnin A Tribute for Death##47880 |goto 39.57,24.66
accept That Which Haunts the Dead##47247 |goto 39.57,24.66
accept Remnants of the Damned##47491 |goto 39.57,24.66
accept A Desecrated Temple##49348 |goto 39.57,24.66
stickystart "Collect_Decaying_Bloodstones"
step
Leave the building |goto 39.56,26.73 < 10 |walk |only if (subzone("The Necropolis") or subzone("The Edge of Oblivion")) and _G.IsIndoors()
talk Theurgist Salazae##122706
accept 'Til Death Do Us Part##47248 |goto 36.66,27.40
step
kill Hex Priestess Tizeja##122666 |q 47247/2 |goto 36.09,29.88
|tip Kill the enemies channeling on her to be able to attack her.
step
Enter the crypt |goto 40.37,28.80 < 10 |walk
click Ancient Urn##270991
|tip Inside the crypt.
collect Valjabu's Tusk Ring##150754 |q 47248/1 |goto 40.37,26.52
stickystart "Destroy_Vile_Desecrations"
step
kill Warlord Malaja##122664 |q 47247/1 |goto 43.42,30.02
|tip Leave the crypt and run up the stairs.
step
talk Keula##126588
accept The Forlorn Soul##49432 |goto 42.58,31.46
step
label "Destroy_Vile_Desecrations"
clicknpc Vile Desecration##129086+
|tip They look like red bubbles on the walls around this area.
Destroy #5# Vile Desecration |q 49348/1 |goto 42.61,29.77
step
Enter the crypt |goto 39.59,31.66 < 10 |walk
click Sarcophagus Lid##278692
|tip Inside the crypt.
Find Keula's Mother |q 49432/1 |goto 39.59,34.95
step
Watch the dialogue
kill The Matron Shaazula##126616
|tip Inside the crypt.
Subdue Matron Shaazula |q 49432/2 |goto 39.65,35.00
step
label "Collect_Decaying_Bloodstones"
Kill Horror enemies around this area
collect 6 Decaying Bloodstone##150753 |q 47491/1 |goto 39.60,30.29
step
talk Theurgist Salazae##122706
turnin 'Til Death Do Us Part##47248 |goto 36.66,27.40
step
Enter the building |goto 39.56,26.73 < 10 |walk |only if not ((subzone("The Necropolis") or subzone("The Edge of Oblivion")) and _G.IsIndoors())
talk Bwonsamdi##122688
|tip Inside the building.
turnin That Which Haunts the Dead##47247 |goto 39.56,24.68
turnin Remnants of the Damned##47491 |goto 39.56,24.68
turnin A Desecrated Temple##49348 |goto 39.56,24.68
turnin The Forlorn Soul##49432 |goto 39.56,24.68
accept Soulbound##47249 |goto 39.56,24.68
step
Leave the building |goto 39.56,26.73 < 10 |walk |only if (subzone("The Necropolis") or subzone("The Edge of Oblivion")) and _G.IsIndoors()
talk Bwonsamdi##126707
Tell him _"Let's begin."_
Watch the dialogue
Begin the Ritual |q 47249/1 |goto 39.58,30.21
step
Watch the dialogue
kill Grand Ma'da Ateena##122711 |q 47249/2 |goto 39.57,30.96
|tip She will jump down and attack you.
|tip She will eventually escape.
step
talk Bwonsamdi##122766
turnin Soulbound##47249 |goto 39.58,30.22
accept We'll Meet Again##47250 |goto 39.58,30.22
step
talk Rovash the One Eyed##135740
turnin WANTED: Tojek##51089 |goto 39.12,79.86
step
talk Hanzabu##127004
turnin We'll Meet Again##47250 |goto 39.52,43.83
step
talk Bloodseeker Jo'chunga##127128
Tell him _"Kejabu sent me."_
Find Bloodseeker Jo'chunga |q 48699/1 |goto 32.37,46.17
step
talk Bloodseeker Jo'chunga##127391
|tip He runs to this location.
|tip Inside the building.
turnin Sneaking into Zalamar##48699 |goto 33.35,45.74
accept Isolating Zalamar##48801 |goto 33.35,45.74
accept How to Be a Blood Troll##48890 |goto 33.35,45.74
stickystart "Test_Unproven_Drudges"
step
talk Wardrummer Sheej##129380
|tip At the top of the tower.
Tell him _"Da camp be needin' more stone. Go an' recover only da purest of rocks within Nazmir. Sixty of dem."_
Remove Wardrummer Sheej |q 48801/2 |goto 35.30,46.80
step
talk Wardrummer Gix##129381
|tip At the top of the tower.
Tell him _"We be needin' fifty pristine crocolisk hides. Go an' retrieve dem, and don' be comin' back 'til you have dem all."_
Remove Wardrummer Gix |q 48801/3 |goto 31.16,49.75
step
label "Test_Unproven_Drudges"
clicknpc Unproven Drudge##126933+
|tip They look like blood trolls that are tied up to poles around this area.
Test #5# Unproven Drudge |q 48890/1 |goto 31.59,45.66
step
talk Wardrummer Saljo##127999
|tip At the top of the tower.
Tell him _"Da camp be needin' more wood. Go an' retrieve thirty pieces of only da most pristine lumber!"_
Remove Wardrummer Saljo |q 48801/1 |goto 31.49,43.26
step
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Isolating Zalamar##48801 |goto 33.35,45.74
turnin How to Be a Blood Troll##48890 |goto 33.35,45.74
step
Watch the dialogue
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
accept Mark of the Bat##48800 |goto 33.35,45.74
accept Poisoning the Brood##49078 |goto 33.35,45.74
stickystart "Poison_Tamed_Warspawns"
step
kill Blood Witch Yialu##126891
|tip Inside the building.
collect Yialu's Talisman##153671 |q 48800/1 |goto 33.65,49.33
step
kill Blood Priestess Zu'Anji##126890
|tip Inside the raised building.
collect Zu'Anji's Talisman##153674 |q 48800/3 |goto 32.68,49.51
step
kill Blood Witch Vashera##126888
|tip Inside the raised building.
collect Vashera's Talisman##153672 |q 48800/2 |goto 30.70,45.28
step
label "Poison_Tamed_Warspawns"
use the Poisoned Mojo Flask##153012
|tip Use it on Tamed Warspawns around this area.
|tip They look like large bats hanging upside down from poles and buildings around this area.
Poison #5# Tamed Warspawns |q 49078/1 |goto 31.02,48.14
step
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Mark of the Bat##48800 |goto 33.35,45.74
turnin Poisoning the Brood##49078 |goto 33.35,45.74
step
Watch the dialogue
talk Jo'chunga##129378
|tip Inside the building.
accept Hir'eek, the Bat Loa##49079 |goto 33.35,45.74
step
talk Jo'chunga
|tip Next to you.
Tell him _"Jo'chunga, I'm ready. Let's enact our plan to stop Hir'eek."_
Watch the dialogue
Speak with Jo'chunga Within the Blood Ritual Pool |q 49079/1 |goto 32.18,46.31
step
Watch the dialogue
Weaken Hir'eek |q 49079/2 |goto 31.99,46.30
|tip Use the ability on your action bar.
|tip Use it repeatedly.
step
Watch the dialogue
Fall into Hir'eek's Lair |complete subzone("The Fall") |goto 31.41,46.97 |q 49079
step
Watch the dialogue
talk Jo'chunga##128276
|tip Inside the cave.
turnin Hir'eek, the Bat Loa##49079 |goto 31.23,46.80
accept To Kill a Loa##49081 |goto 31.23,46.80
step
kill Hir'eek##128074 |q 49081/1 |goto 29.14,46.57
|tip Inside the cave.
step
talk Jo'chunga##128276
|tip Inside the cave.
turnin To Kill a Loa##49081 |goto 31.25,46.81
accept Upward and Onward##49082 |goto 31.25,46.81
step
clicknpc Hir'eek Spawnling##128291
|tip Inside the cave.
Secure a Flight Out of Hir'eek's Lair |q 49082/1 |goto 31.26,46.72
step
Reach the Outskirts of Zalamar |offtaxi |goto 36.11,47.65 |q 49082 |notravel
step
talk Witch Doctor Kejabu##122795
Tell him _"Jo'chunga is alive, the loa Hir'eek though..."_
Inform Witch Doctor Kejabu |q 49082/2 |goto 39.63,43.86
step
talk Witch Doctor Kejabu##122795
turnin Upward and Onward##49082 |goto 39.63,43.86
accept Hunting Zardrax##49314 |goto 39.63,43.86
step
talk Princess Talanji##127961
accept Catching Up##49185 |goto 39.39,44.00
step
talk Princess Talanji##127961
Choose _(Tell Talanji about getting Bwonsamdi's aid and killing Hir'eek.)_
Tell Talanji About Bwonsamdi and Hir'eek |q 49185/1 |goto 39.40,44.00
step
talk Princess Talanji##127961
turnin Catching Up##49185 |goto 39.39,44.00
step
talk Lashk##127960
accept Torga, the Turtle Loa##49064 |goto 39.45,44.02
step
talk Shadow Hunter Da'jul##127215
turnin Hunting Zardrax##49314 |goto 31.05,52.08
step
talk Zardrax the Empowerer##127216
accept Offer of Power##48854 |goto 30.97,52.18
step
talk Zardrax the Empowerer##127216
Tell him _"Alright, lich, tell me your offer."_
Listen to Zardrax |q 48854/1 |goto 30.97,52.18
step
Watch the dialogue
clicknpc Zardrax the Empowerer##127216
Break Free of Zardrax's Control |q 48854/2 |goto 30.97,52.17
step
talk Shadow Hunter Da'jul##127215
turnin Offer of Power##48854 |goto 31.05,52.08
accept Projection Destruction##48823 |goto 31.05,52.08
step
talk Kal'dran##127212
accept Power Denied##48825 |goto 30.92,52.03
step
talk Shadow Hunter Da'jul##127215
Tell him _"I'm ready to receive your fire mojo to destroy the burial mounds."_
Watch the dialogue
Gain the Fire Mojo |q 48823/1 |goto 31.05,52.08
step
use Da'jul's Fire Mojo##152727
Destroy the Skeletal Mound |q 48823/2 |goto 30.89,55.16 |count 1
step
use Da'jul's Fire Mojo##152727
Destroy the Skeletal Mound |q 48823/2 |goto 32.14,55.45 |count 2
step
use Da'jul's Fire Mojo##152727
Destroy the Skeletal Mound |q 48823/2 |goto 32.81,56.94 |count 3
step
kill Hexxer Nana'kwug##127225
collect Blood Fetish##153482 |q 48825/1 |goto 33.07,58.81
step
talk Shadow Hunter Da'jul##127215
turnin Projection Destruction##48823 |goto 31.05,52.08
turnin Power Denied##48825 |goto 31.05,52.08
accept Humbling the Terrors##48855 |goto Nazmir/0 31.05,52.08
accept Conduit Interruption##48856 |goto 31.05,52.08
step
talk Kal'dran##127212
accept All Hope is Lost##48857 |goto 30.91,52.04
step
talk Kal'dran##127212
Tell him _"Calm down, Kal'dran. We can still defeat Zardrax."_
Calm Down Kal'dran |q 48857/1 |goto 30.91,52.03
stickystart "Kill_Reconstructed_Terrors"
stickystart "Kill_Zardrax_Conduits"
step
Enter the cave |goto 29.36,57.00 < 15 |walk
kill Empowered Kal'dran##127394 |q 48857/2 |goto 29.09,56.74
|tip Inside the cave.
step
label "Kill_Reconstructed_Terrors"
use the Modified Blood Fetish##153483
|tip Use it on Reconstructed Terrors around this area.
|tip They will become easy to kill.
kill 3 Reconstructed Terror##127253 |q 48855/1 |goto 30.86,60.32
step
label "Kill_Zardrax_Conduits"
kill 8 Zardrax Conduit##127255 |q 48856/1 |goto 30.21,58.37
step
talk Shadow Hunter Da'jul##127215
turnin Humbling the Terrors##48855 |goto 30.96,52.12
turnin Conduit Interruption##48856 |goto 30.96,52.12
turnin All Hope is Lost##48857 |goto 30.96,52.12
accept Payback's a Lich##48869 |goto 30.96,52.12
step
kill Zardrax the Empowerer##127298 |q 48869/1 |goto 31.58,57.87
|tip Kill the enemies around him when he casts a bubble around himself.
|tip On top of the hill.
step
talk Shadow Hunter Da'jul##127215
turnin Payback's a Lich##48869 |goto 30.96,52.12
step
clicknpc Imperial Guard##135784
accept An Unfortunate Event##50933 |goto 29.21,52.06
step
talk Zaluto##130930
turnin An Unfortunate Event##50933 |goto 24.13,53.20
accept On The Run##49777 |goto 24.13,53.20
step
talk Jin'Tiki##131231
accept Won't Leaf Him to Die##49774 |goto 24.11,53.14
accept No Problem Tar Can't Solve##49776 |goto 24.11,53.14
stickystart "Collect_Sticky_Tar"
stickystart "Collect_Sweetleaves"
step
talk Mojoba##131132
Tell him _"I know who you are, Mojoba. Proceed to Vol'dun and live out your exile in peace."_
Watch the dialogue
|tip He will attack you.
Exile Mojoba |q 49777/2 |goto 23.59,47.68
step
clicknpc Teshyambi##131129
Choose _(Leave)_
Exile Teshyambi |q 49777/3 |goto 21.32,50.40
step
talk Razjuto##131135
Tell him _"I'm sorry, but you've been exiled to Vol'dun for your crimes."_
Exile Razjuto |q 49777/1 |goto 21.56,55.03
step
label "Collect_Sticky_Tar"
kill Tar Ooze##130720+
collect 6 Sticky Tar##155913 |q 49776/1 |goto 22.39,54.72
step
label "Collect_Sweetleaves"
click Sweetleaf Bush##279293+
|tip They look like green bushes on the ground around this area.
collect 8 Sweetleaf##155912 |q 49774/1 |goto 22.39,54.72
step
talk Jin'Tiki##131231
turnin Won't Leaf Him to Die##49774 |goto 24.11,53.15
turnin No Problem Tar Can't Solve##49776 |goto 24.11,53.15
step
talk Zaluto##130930
turnin On The Run##49777 |goto 24.13,53.20
step
talk Jin'Tiki##131231
accept Don't Go into the Light##49778 |goto 24.11,53.15
step
talk Zaluto##130930
Tell him _"Hold still, Zaluto. We are going to cure your infection."_
Watch the dialogue
Cure Zaluto |q 49778/1 |goto 24.13,53.20
step
talk Jin'Tiki##131231
turnin Don't Go into the Light##49778 |goto 24.11,53.14
accept Recovering Ancient Fire##49780 |goto 24.11,53.14
step
talk Zaluto##130930
accept Bad To The Bone##49779 |goto 24.13,53.20
stickystart "Kill_Bone_Raptors"
step
use Jin'Tiki's Fetish##156480
Absorb the Fire Mojo |q 49780/1 |goto 25.54,51.54 |count 1
step
use Jin'Tiki's Fetish##156480
Absorb the Fire Mojo |q 49780/1 |goto 24.70,50.18 |count 2
step
use Jin'Tiki's Fetish##156480
Absorb the Fire Mojo |q 49780/1 |goto 26.08,47.71 |count 3
step
use Jin'Tiki's Fetish##156480
Absorb the Fire Mojo |q 49780/1 |goto 24.81,45.15 |count 4
step
label "Kill_Bone_Raptors"
kill 10 Bone Raptor##130735 |q 49779/1 |goto 24.27,47.72
step
talk Jin'Tiki##131231
turnin Recovering Ancient Fire##49780 |goto 24.11,53.14
step
talk Zaluto##130930
turnin Bad To The Bone##49779 |goto 24.13,53.21
accept Catch Me if You Can##49781 |goto 24.13,53.21
step
clicknpc Riding Raptor##134395
Ride the Riding Raptor |invehicle |goto 24.17,53.37 |q 49781
step
Find Zulajin |goto 23.85,52.47 < 7 |c |q 49781
step
Get Zulajin's Attention |goto 23.85,52.47 > 10 |c |q 49781
|tip Use the ability on your action bar.
step
Watch the dialogue
kill Zulajin##134436
|tip Use the ability on your action bar on him.
|tip Spam it.
Ride Zaluto's Raptor to Defeat Zulajin |q 49781/1 |goto 28.24,52.06
step
talk Jin'Tiki##130928
turnin Catch Me if You Can##49781 |goto 28.36,52.03
step
talk Chadwick Paxton##126289
accept Getting a Leg Up##48492 |goto 28.62,43.74
step
click Paxton's Legs
Recover Chadwick Paxton's Legs |q 48492/1 |goto 28.64,43.73
step
talk Chadwick Paxton##126289
Ask him _"Alright, I've got your... legs. What next?"_
Watch the dialogue
Fix Chadwick Paxton |q 48492/2 |goto 28.61,43.76
step
talk Chadwick Paxton##126346
turnin Getting a Leg Up##48492 |goto 28.62,43.78
accept Reuniting the Company##48496 |goto 28.62,43.78
accept Show of Force##48497 |goto 28.62,43.78
stickystart "Slay_Sethrak_Forces"
step
click Sethrak Cage
Rescue Clayton Backston |q 48496/3 |goto 27.40,41.22
step
click Sethrak Cage
Rescue Anna Bizrim |q 48496/1 |goto 26.16,40.46
step
click Sethrak Cage
Rescue Timothy Zartlin |q 48496/2 |goto 27.44,38.56
step
click Sethrak Cage
Rescue Ingrid Bellix |q 48496/4 |goto 26.60,37.92
step
talk Ingrid Bellix##126377
accept No Mercy for Sithis##48498 |goto 26.60,37.92
step
Enter the cave |goto 25.92,38.17 < 10 |walk
kill Fangcaller Sithis##126316
|tip Inside the cave.
collect Skycaller Gem##154892 |q 48498/1 |goto 25.40,37.65
step
label "Slay_Sethrak_Forces"
Kill Sethrak enemies around this area
Slay #10# Sethrak Forces |q 48497/1 |goto 26.52,38.69
step
talk Chadwick Paxton##126346
turnin Reuniting the Company##48496 |goto 25.82,36.02
turnin Show of Force##48497 |goto 25.82,36.02
turnin No Mercy for Sithis##48498 |goto 25.82,36.02
accept Didn't Stop to Think if They Should##49479 |goto 25.82,36.02
step
talk Ingrid Bellix##126376
Tell her _"I need you to empower the Skycaller Gem."_
Watch the dialogue
Empower the Skycaller Gem |q 49479/1 |goto 25.80,35.91
step
talk Chadwick Paxton##126346
turnin Didn't Stop to Think if They Should##49479 |goto 25.83,36.02
step
Watch the dialogue
talk Chadwick Paxton##126346
accept Return to Dust##48499 |goto 25.83,36.02
step
Kill Enraged Sethrak enemies around this area
|tip Use the "Skycaller Gem" ability.
|tip It appears as a button on the screen.
Slay #20# Enraged Sethraks |q 48499/1 |goto 26.66,38.88
step
Overload the Skycaller Gem |q 48499/2 |goto 26.66,38.88
|tip Use the "Overloaded Skycaller Gem" ability.
|tip It appears as a button on the screen.
step
talk Chadwick Paxton##126346
turnin Return to Dust##48499 |goto 25.82,36.02
step
talk Kisha##127958
|tip Follow the road.
Tell her _"Lashk said you could tell me where I can find Torga."_
Meet Kisha |q 49064/1 |goto 55.65,39.40
step
talk Kajosh##124666
accept Profanity Filter##47924 |goto 55.15,36.71
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto 54.18,36.02 |count 1
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto 54.32,33.42 |count 2
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto 54.16,32.34 |count 3
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto 53.23,31.70 |count 4
step
use the Scroll of Inferno##151849
Destroy the Profane Totem |q 47924/1 |goto 52.68,33.61 |count 5
step
talk Kajosh##124933
Ask him _"Some of the totems are destroyed, will your spell work now?"_
Watch the dialogue
Complete Kajosh's Spell |q 47924/2 |goto 51.76,33.25
step
talk Kajosh##124933
turnin Profanity Filter##47924 |goto 51.76,33.24
accept Just Say No to Cannibalism##47919 |goto 51.76,33.24
accept Shoak's on the Menu##47925 |goto 51.76,33.24
accept Killing Cannibals##47998 |goto 51.76,33.24
stickystart "Kill_Nathavor_Cannibals"
step
kill Corpse Monger Nog'shra##124978 |q 47919/1 |goto 49.21,33.08
|tip Up on the hill.
|tip Inside the building.
step
kill Corpse Monger Yon'gi##124977 |q 47919/2 |goto 50.70,35.67
|tip Inside the building.
step
kill Corpse Monger Jal'aka##124976 |q 47919/3 |goto 49.49,38.39
|tip Inside the building.
step
talk Shoak##124774
Tell him _"Kajosh sent me. I'll handle the mawfiends."_
Watch the dialogue
Kill the enemies that attack in waves
kill Poz'ga the Butcher Queen##124801
Rescue Shoak |q 47925/1 |goto 49.43,39.23
step
label "Kill_Nathavor_Cannibals"
kill 10 Natha'vor Cannibal##124688 |q 47998/1 |goto 50.15,39.04
step
talk Kajosh##125024
turnin Just Say No to Cannibalism##47919 |goto 55.84,32.35
turnin Killing Cannibals##47998 |goto 55.84,32.35
step
talk Shoak##124737
turnin Shoak's on the Menu##47925 |goto 55.81,32.24
step
Locate Torga |q 49064/2 |goto 55.59,28.59
step
Watch the dialogue
talk Princess Talanji##127961
|tip She runs to this location.
turnin Torga, the Turtle Loa##49064 |goto 56.57,26.67
accept Beseeching Bwonsamdi##49067 |goto 56.57,26.67
step
talk Princess Talanji##127961
Tell her _"I'm ready to try and summon Bwonsamdi."_
Watch the dialogue
Beseech Bwonsamdi for Aid |q 49067/1 |goto 56.57,26.67
step
talk Princess Talanji##127961
turnin Beseeching Bwonsamdi##49067 |goto 56.57,26.67
accept Cease all Summoning##49080 |goto 56.57,26.67
step
talk Lashk##127960
accept Dreadtick Combustion##49071 |goto 56.51,26.65
step
talk Bwonsamdi##128096
accept Souls for the Death Loa##49070 |goto 56.66,26.52
stickystart "Blow_Up_Dreadtick_Leechers"
stickystart "Claim_Blood_Troll_Souls"
step
Enter the cave |goto 58.71,24.64 < 20 |walk
kill Summoner Yarz##127935 |q 49080/1 |goto 61.05,18.08
|tip Inside the cave.
step
label "Blow_Up_Dreadtick_Leechers"
use the Scroll of Combustion##153024
|tip Use it on Dreadtick Leecher around this area inside the cave.
Blow Up #5# Dreadtick Leechers |q 49071/1 |goto 60.15,21.06
step
label "Claim_Blood_Troll_Souls"
Kill Loa-Gutter enemies around this area
|tip Inside the cave.
Claim #10# Blood Troll Souls |q 49070/1 |goto 60.15,21.06
step
talk Bwonsamdi##128096
turnin Souls for the Death Loa##49070 |goto 56.66,26.53
step
talk Princess Talanji##127961
turnin Cease all Summoning##49080 |goto 56.57,26.67
step
talk Lashk##127960
turnin Dreadtick Combustion##49071 |goto 56.52,26.65
step
talk Bwonsamdi##128096
accept Speaking with the Dead##49120 |goto 56.66,26.52
step
talk Bwonsamdi##128096
Tell him _"Bwonsamdi, we're ready for you to summon Torga's spirit."_
Watch the dialogue
Hear Torga's Wisdom |q 49120/1 |goto 56.66,26.52
step
talk Princess Talanji##127961
turnin Speaking with the Dead##49120 |goto 56.57,26.67
step
talk Kisha##127958
accept Negative Blood##49125 |goto 56.59,26.75
stickystart "Destroy_Corrupted_Loa_Blood"
step
click Scroll of Fate's Hand##280347
|tip On the ground next to the cage.
collect Damaged Scroll of Fate's Hand##156568 |q 49125/2 |goto 62.28,24.58
step
label "Destroy_Corrupted_Loa_Blood"
use the Scroll of Purification##160559
|tip Use it on Corrupted Loa Blood.
|tip They look like large red balls floating above the ground around this area.
Destroy #8# Corrupted Loa Blood |q 49125/1 |goto 62.23,24.06
step
Enter the cave |goto 65.45,17.92 < 10 |walk
talk Kisha##127958
|tip Inside the cave.
turnin Negative Blood##49125 |goto 65.72,17.96
accept Forcing Fate's Hand##49126 |goto 65.72,17.96
step
Summon the Hand of Fate |q 49126/1 |goto 65.26,17.94
|tip Use the "Scroll of Fate's Hand" ability.
|tip It appears as a button on the screen.
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy #50# Undead |q 49126/2 |goto 63.16,15.57
step
Return to Kisha |outvehicle |goto 59.07,13.69 |q 49126
|tip You will run automatically.
step
talk Kisha##127958
turnin Forcing Fate's Hand##49126 |goto 58.48,13.78
accept Loa-Free Diet##49130 |goto 58.48,13.78
step
talk Princess Talanji##127961
accept Sanctifying Ground##49131 |goto 58.47,13.85
step
talk Lashk##127960
accept Crushing the Skullcrushers##49132 |goto 58.52,13.88
stickystart "Collect_Parts_Of_Torga"
stickystart "Kill_Loa_Gutter_Skullcrushers"
step
clicknpc Sanctifying Totem##128179+
|tip They look like small wooden totems with red fire swirling around them on the ground around this area.
Place #4# Sanctifying Totem |q 49131/1 |goto 56.59,20.22
step
label "Collect_Parts_Of_Torga"
Kill Loa-Gutter enemies around this area
|tip Loa-Gutter Skullcrushers will not drop the quest item.
collect 6 Parts of Torga##153070 |q 49130/1 |goto 56.59,20.22
step
label "Kill_Loa_Gutter_Skullcrushers"
kill 4 Loa-Gutter Skullcrusher##127919 |q 49132/1 |goto 56.59,20.22
step
talk Lashk##127960
turnin Crushing the Skullcrushers##49132 |goto 56.51,26.65
step
talk Princess Talanji##127961
turnin Sanctifying Ground##49131 |goto 56.57,26.67
step
talk Kisha##127958
turnin Loa-Free Diet##49130 |goto 56.59,26.76
step
talk Princess Talanji##127961
accept Jungo, Herald of G'huun##49136 |goto 56.57,26.67
step
Enter the cave |goto 58.72,24.55 < 20 |walk |only if not subzone("Torga's Innards")
Watch the dialogue
kill Jungo, Herald of the Blood God##128184 |q 49136/1 |goto 61.13,17.68
|tip Inside the cave.
|tip Your allies will help you fight.
step
talk Princess Talanji##127961
turnin Jungo, Herald of G'huun##49136 |goto 56.57,26.67
step
talk Lashk##127960
accept Torga's Eternal Return##49160 |goto 56.51,26.65
step
use the Scroll of Eternal Return##153131
Watch the dialogue
Put Torga's Spirit to Rest |q 49160/1 |goto 56.51,26.65
step
talk Kisha##127958
turnin Torga's Eternal Return##49160 |goto 56.59,26.75
accept To Gloom Hollow##49902 |goto 56.59,26.75
step
talk Crez##131208
Choose _(Tell Crez about what happened to Torga, and the chance for new stories to be told if he goes to Gloom Hollow.)_
Recruit the Tortollan |q 49902/1 |goto 55.74,39.72 |count 1
step
talk Korkush##131209
Choose _(Tell Korkush there's a great story to be had if he helps the Horde fight the blood trolls and save the Zandalari.)_
Recruit the Tortollan |q 49902/1 |goto 60.23,46.18 |count 2
step
talk Yash##131210
Choose _(Tell Yash if he wants to live a crazy story that he should go to Gloom Hollow to help stop the blood trolls and their god.)_
Recruit the Tortollan |q 49902/1 |goto 63.87,47.74 |count 3
step
talk Rokhan##131213
turnin To Gloom Hollow##49902 |goto 67.43,42.31
accept Getting the Message##47245 |goto 67.43,42.31
step
talk Shadow Hunter Mutumba##122991
accept Staying Hidden##47525 |goto 67.41,42.06
step
talk Korkush##131988
|tip He walks around this area.
home Gloom Hollow |goto 67.76,41.85 |q 49382 |future
step
click Wanted Poster##282448
accept WANTED: Ayame##52477 |goto 67.23,40.82
step
clicknpc Cuja##121207
fpath Gloom Hollow |goto 66.98,43.78
step
click Message Rocket##272409
Investigate the Disturbance |q 47245/1 |goto 68.52,43.82
step
talk Rokhan##131213
turnin Getting the Message##47245 |goto 67.43,42.31
accept Rendezvous with the Libation##47631 |goto 67.43,42.31
step
Investigate The Frogmarsh |q 47525/1 |goto 68.58,46.51
step
talk Witch Doctor Zentimo##124376
turnin Staying Hidden##47525 |goto 68.59,46.74
accept Hunt the Hunter##47659 |goto 68.59,46.74
accept Fallen Idols##47660 |goto 68.59,46.74
stickystart "Collect_Stolen_Idols_of_Krag'wa"
step
clicknpc Mag'ash the Poisonous##126039
accept A Poisonous Touch##48402 |goto 69.16,50.46
stickystart "Poison_Bloodhunter_Trolls"
step
kill Warmother Boatema##123328 |q 47659/1 |goto 68.24,51.58
step
label "Collect_Stolen_Idols_of_Krag'wa"
click Stolen Idol of Krag'wa##271648+
|tip They look like stone statues on the ground around this area.
collect 8 Stolen Idol of Krag'wa##151113 |q 47660/1 |goto 68.45,50.66
step
label "Poison_Bloodhunter_Trolls"
Kill Bloodhunter enemies around this area
|tip Use the "Poison Tipped Dart" ability.
|tip It appears as a button on the screen.
Poison #6# Bloodhunter Trolls |q 48402/1 |goto 68.45,50.66
step
Enter the cave |goto 73.40,53.77 < 70 |walk |only if not subzone("Krag'wa's Burrow")
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin Hunt the Hunter##47659 |goto 75.42,56.61
turnin Fallen Idols##47660 |goto 75.42,56.61
turnin A Poisonous Touch##48402 |goto 75.42,56.61
accept The Last Witch Doctor of Krag'wa##47623 |goto 75.42,56.61
step
clicknpc Scepter of Rebirth##133900
|tip Inside the cave.
Retrieve the Scepter of Rebirth |q 47623/1 |goto 75.13,56.69
step
clicknpc Witch Doctor Zentimo##124559
|tip Inside the cave.
Perform the Ritual |q 47623/2 |goto 75.13,56.70
step
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin The Last Witch Doctor of Krag'wa##47623 |goto 75.42,56.61
accept A True Loa Feast##47621 |goto 75.42,56.61
accept A Magical Glow##47622 |goto 75.42,56.61
stickystart "Collect_Chunky_Meat"
step
use the Glowfly Bottle##151237
|tip Use it next to Glowflies around this area.
|tip They look like small yellow and blue insects flying above the ground around this area.
Collect #25# Beautiful Glowflies |q 47622/1 |goto 75.89,45.98
step
label "Collect_Chunky_Meat"
Kill enemies around this area
collect 35 Chunky Meat##151040 |q 47621/1 |goto 75.77,45.37
step
Enter the cave |goto 73.40,53.77 < 70 |walk |only if not subzone("Krag'wa's Burrow")
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin A True Loa Feast##47621 |goto 75.43,56.62
turnin A Magical Glow##47622 |goto 75.43,56.62
accept Totemic Restoration##47540 |goto 75.43,56.62
step
click Frog Totem Pile##272391
|tip Inside the cave.
Activate the Frog Totem Pile |q 47540/1 |goto 75.21,56.69 |count 1
step
click Frog Totem Pile##272391
|tip Inside the cave.
Activate the Frog Totem Pile |q 47540/1 |goto 75.33,56.38 |count 2
step
click Frog Totem Pile##272391
|tip Inside the cave.
Activate the Frog Totem Pile |q 47540/1 |goto 75.65,56.35 |count 3
step
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin Totemic Restoration##47540 |goto 75.42,56.62
accept Krag'wa the Terrible##47696 |goto 75.43,56.62
step
Meet Krag'wa at Razorjaw River |q 47696/1 |goto 67.14,56.16
step
talk Krag'wa the Huge##124637
Tell him _"I am ready to fight the blood trolls."_
Speak with Krag'wa the Huge |invehicle |goto 67.14,56.16 |q 47696
stickystart "Slay_Blood_Troll_Forces"
step
kill Ren'Zuli##124628 |q 47696/3 |goto 60.05,53.30
|tip He's mounted on a tyrannosaurus rex.
|tip Use the abilities on your action bar.
step
label "Slay_Blood_Troll_Forces"
Kill Bloodhunter enemies around this area
|tip Use the abilities on your action bar.
Slay #100# Blood Troll Forces |q 47696/2 |goto 62.13,56.73
step
Watch the dialogue
Return to The Frogmarsh |outvehicle |goto 72.98,52.55 |q 47696 |notravel
step
Enter the cave |goto 73.40,53.77 < 70 |walk |only if not subzone("Krag'wa's Burrow")
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin Krag'wa the Terrible##47696 |goto 75.43,56.63
accept To Serve Krag'wa##47918 |goto 75.43,56.63
step
talk Shadow Hunter Mutumba##124641
|tip Inside the cave.
accept Krag'wa's Aid##47697 |goto 75.17,56.67
step
Leave the cave |goto 73.40,53.77 < 70 |walk |only if subzone("Krag'wa's Burrow")
talk Shadow Hunter Narez##125317
turnin To Serve Krag'wa##47918 |goto 77.74,53.17
accept Krag'wa's Chosen##48090 |goto 77.74,53.17
accept Vengeance of the Frogs##48092 |goto 77.74,53.17
step
use the Empowerment Potion##158071
|tip Use it on Wok'grug the Clever.
Rescue Wok'grug the Clever |q 48090/3 |goto 79.37,53.85
step
use the Empowerment Potion##158071
|tip Use it on Krol'dra the Wise.
Rescue Krol'dra the Wise |q 48090/2 |goto 80.35,50.31
step
use the Empowerment Potion##158071
|tip Use it on Wag'shash the Bold.
Rescue Wag'shash the Bold |q 48090/1 |goto 82.36,55.79
step
kill Priestess Zaldraxia##125328 |q 48092/1 |goto 85.33,54.90
step
talk Shadow Hunter Narez##125317
turnin Krag'wa's Chosen##48090 |goto 77.74,53.17
turnin Vengeance of the Frogs##48092 |goto 77.74,53.17
step
Return to Gloom Hollow |q 47697/1 |goto 67.42,42.24
step
talk Princess Talanji##126213
turnin Krag'wa's Aid##47697 |goto 67.42,42.24
step
talk Yash##131993
accept A Chance Sighting##50934 |goto 66.84,41.94
step
Locate Patch |q 47631/1 |goto 74.59,38.86
step
talk Patch##123178
turnin Rendezvous with the Libation##47631 |goto 74.59,38.86
accept No Goblin Left Behind##47597 |goto 74.59,38.86
step
talk Ticker##123436
accept Revenge: Served Hot##47599 |goto 74.76,39.01
stickystart "Kill_Vilescale_Behemoths"
step
click Airtight Escape Pod##271664
Rescue Newt |q 47597/2 |goto 79.30,36.73
step
clicknpc Grit##123233
Rescue Grit |q 47597/1 |goto 76.99,32.65
step
click Naga Cage##279661
Rescue Volt |q 47597/3 |goto 79.97,32.39
step
label "Kill_Vilescale_Behemoths"
use Ticker's Rocket Launcher##151363
|tip Use it on Vilescale Behemoths around this area.
kill 4 Vilescale Behemoth##123461 |q 47599/1 |goto 79.96,33.05
step
talk Zibir the Wingmaster##122198
fpath Forlorn Ruins |goto 82.15,26.69
step
talk Patch##123544
|tip Inside the building.
turnin No Goblin Left Behind##47597 |goto 82.37,27.29
step
talk Ticker##123548
|tip Inside the building.
turnin Revenge: Served Hot##47599 |goto 82.39,27.20
accept There Is No Plan "B"##47596 |goto 82.39,27.20
step
talk Patch##123544
|tip Inside the building.
accept Head of the Viper##47711 |goto 82.37,27.30
step
talk Newt##123545
|tip Inside the building.
accept Pilfering and Fencing##47598 |goto 82.28,27.41
stickystart "Collect_Ancient_Titan_Relics"
step
click Broken Elevating Gear##271747
collect Broken Elevating Gears##151209 |q 47596/2 |goto 79.15,27.43
step
kill Lord Slithin##123550 |q 47711/1 |goto 78.64,25.15
step
click Damaged Artillery Barrel##271746
collect Damaged A.M.O.D. Barrel##151208 |q 47596/1 |goto 77.67,25.28
step
click Shattered Firing Mechanism##271748
collect Shattered Firing Mechanism##151210 |q 47596/3 |goto 79.57,22.25
step
label "Collect_Ancient_Titan_Relics"
Kill Vilescale enemies around this area
collect 20 Ancient Titan Relics##151202 |q 47598/1 |goto 79.14,22.83
step
talk Ticker##123548
|tip Inside the building.
turnin There Is No Plan "B"##47596 |goto 82.39,27.20
step
talk Patch##123544
|tip Inside the building.
turnin Head of the Viper##47711 |goto 82.37,27.29
step
talk Newt##123545
|tip Inside the building.
turnin Pilfering and Fencing##47598 |goto 82.28,27.41
step
talk Patch##123544
|tip Inside the building.
accept Field Evaluation##47601 |goto 82.37,27.30
step
clicknpc A.M.O.D.##123637
Mount the A.M.O.D. |q 47601/1 |goto 81.45,26.02
step
Watch the dialogue
Kill Vilescale enemies around this area
|tip They look like nagas.
|tip Use the abilities on your action bar.
Slay #40# Naga Forces |q 47601/2
step
kill Grobathan##123486
|tip He looks like a large giant.
|tip Use the abilities on your action bar.
Slay Grobathan |q 47601/3
step
talk Patch##123878
turnin Field Evaluation##47601 |goto 81.34,26.09
accept Ready For Action##47602 |goto 81.34,26.09
step
Watch the dialogue
clicknpc Newt's Emergency Rocket##125244
Choose _Let's ride out of here._
Obtain a Ride From Newt's Emergency Rocket |q 47602/1 |goto 81.31,26.22
step
Travel to Gloom Hollow |complete subzone("Gloom Hollow") |goto 67.16,43.42 |q 47602 |notravel
step
Return to Talanji |q 47602/2 |goto 67.42,42.24
step
talk Princess Talanji##126213
turnin Ready For Action##47602 |goto 67.42,42.24
step
talk Lashk##131978
accept Slumber No More##49932 |goto 67.49,41.96
step
clicknpc Deactivated Titan Keeper##131299
Awaken the Deactivated Titan Keeper |q 49932/1 |goto 66.91,38.87
step
click Titan Keeper Data Core##280480
collect Damaged Core##156593 |q 49932/2 |goto 66.95,38.79
step
clicknpc Deactivated Titan Keeper##131299
Install the Core |q 49932/3 |goto 66.92,38.86
step
Watch the dialogue
talk Titan Keeper Hezrel##131253
turnin Slumber No More##49932 |goto 66.90,38.91
accept How to Repair a Titan Keeper##49935 |goto 66.90,38.91
accept Recovering Remnants##49937 |goto 66.90,38.91
accept Corrupted Earth##49938 |goto 66.90,38.91
stickystart "Kill_Blood_Infused_Lashers"
stickystart "Collect_Titan_Plating"
step
click Keeper Shavras's Core##281417
collect Keeper Shavras's Core##156521 |q 49935/1 |goto 69.25,39.77
step
clicknpc Titan Keeper Bolcan##131256
Watch the dialogue
kill Titan Keeper Bolcan##131256
collect Keeper Bolcan's Core##156522 |q 49935/2 |goto 66.19,33.65
step
label "Kill_Blood_Infused_Lashers"
kill 25 Blood-Infused Lasher##131168 |q 49938/1 |goto 66.72,34.96
step
label "Collect_Titan_Plating"
kill Naz'wathan Spectre##131169+
collect 25 Titan Plating##156524 |q 49937/1 |goto 66.72,34.96
step
talk Titan Keeper Hezrel##131253
turnin How to Repair a Titan Keeper##49935 |goto 68.68,35.11
turnin Recovering Remnants##49937 |goto 68.68,35.11
turnin Corrupted Earth##49938 |goto 68.68,35.11
accept Bone Procession##49941 |goto 68.68,35.11
accept Unwelcome Undead##49949 |goto 68.68,35.11
stickystart "Slay_Naz'wathan_Undead"
step
clicknpc Minor Corruption##133941
accept Blood Purification##49950 |goto 69.25,33.81
stickystart "Collect_Reanimated_Monstrosity_Bones"
step
clicknpc Corrupted Energy##131286+
|tip They look like red orbs floating above the ground around this area.
Destroy #4# Corrupted Energy |q 49950/1 |goto 69.77,31.30
step
label "Slay_Naz'wathan_Undead"
Kill Naz'wathan enemies around this area
Slay #15# Naz'wathan Undead |q 49949/1 |goto 69.77,31.30
step
label "Collect_Reanimated_Monstrosity_Bones"
use the Titan Manipulator##156528
|tip Use it on Reanimated Monstrosities around this area.
|tip It will make them easier to kill.
kill Reanimated Monstrosity##131285+
collect 25 Reanimated Monstrosity Bone##156527 |q 49941/1 |goto 69.77,31.30
step
talk Titan Keeper Hezrel##131253
turnin Bone Procession##49941 |goto 68.68,35.11
turnin Unwelcome Undead##49949 |goto 68.68,35.11
turnin Blood Purification##49950 |goto 68.68,35.11
accept Not Fit for This Plane##49955 |goto 68.68,35.11
accept Void is Prohibited##49956 |goto 68.68,35.11
accept Protocol Recovery##49957 |goto 68.68,35.11
stickystart "Destroy_Faceless_Ones"
step
use the Void Disruptor##156542
|tip Use it next to Void Portals.
|tip They look like swirling purple and black portals on the ground around this area.
Seal #4# Void Portal |q 49956/1 |goto 71.63,30.72
step
label "Destroy_Faceless_Ones"
Kill Faceless enemies around this area
Destroy #6# Faceless Ones |q 49955/1 |goto 71.63,30.72
step
Enter the building |goto 71.89,30.29 < 10 |walk
kill Overlord Kraxis##131153
|tip Inside the building.
collect Containment Protocol##156537 |q 49957/1 |goto 72.83,28.94
step
Watch the dialogue
talk Titan Keeper Hezrel##131253
|tip He walks to this location.
|tip Inside the building.
turnin Not Fit for This Plane##49955 |goto 72.47,29.37
turnin Void is Prohibited##49956 |goto 72.47,29.37
turnin Protocol Recovery##49957 |goto 72.47,29.37
accept Containment Procedure##49980 |goto 72.47,29.37
step
talk Titan Keeper Hezrel##131253
|tip Inside the building.
Tell him _"Hezrel, begin your scans to find a solution to the Old God corruption with Nazmir."_
Watch the dialogue
Speak to Titan Keeper Hezrel |q 49980/1 |goto 72.47,29.36
step
kill Grand Ma'da Ateena##131515
|tip Inside the building.
|tip Princess Talanji will help you fight her.
|tip Run inside the yellow bubble Titan Keeper Hezrel casts around himself during the fight.
|tip She will eventually escape.
Defeat Grand Ma'da Ateena |q 49980/2 |goto 72.82,28.92
step
talk Titan Keeper Hezrel##131253
|tip Inside the building.
turnin Containment Procedure##49980 |goto 72.47,29.36
accept Return to Gloom Hollow##49985 |goto 72.47,29.36
step
clicknpc Titan Keeper Hezrel##131501
|tip Outside the building.
Jump onto Titan Keeper Hezrel |invehicle |goto 71.85,30.39 |q 49985
step
Watch the dialogue
Ride Titan Keeper Hezrel back to Gloom Hollow |q 49985/1 |goto 66.01,39.13 |notravel
step
kill Ayame##133980
|tip It looks like a large snake that slithers around this area.
|tip If you have trouble, try to find help, or skip the quest.
collect Ayame's Head##162118 |q 52477/1 |goto 58.29,34.16
step
talk Korkush##131988
turnin WANTED: Ayame##52477 |goto 67.76,41.85
step
talk Princess Talanji##126213
turnin Return to Gloom Hollow##49985 |goto 67.43,42.24
accept Down by the Riverside##49569 |goto 67.43,42.24
step
click Vial of Antidote##278197
turnin A Chance Sighting##50934 |goto 64.01,50.39
accept Aid the Wounded##49366 |goto 64.01,50.39
step
use the Vial of Liquid##153676
|tip Use it next to Guard Satao.
Administer the Antidote |q 49366/1 |goto 63.99,50.39
step
Watch the dialogue
talk Guard Satao##129165
|tip He runs to this location.
|tip Under the bridge.
turnin Aid the Wounded##49366 |goto 63.16,52.69
accept Rescue the Chronicler##49370 |goto 63.16,52.69
accept Bad Juju##49380 |goto 63.16,52.69
accept Off With Her Head##49377 |goto 63.16,52.69
step
click Cage Anchor##280952
Release Chronicler Jabari |q 49370/1 |goto 62.53,53.56
step
Watch the dialogue
talk Chronicler Jabari##129164
turnin Rescue the Chronicler##49370 |goto 62.72,53.58
accept Earn Their Trust##49378 |goto 62.72,53.58
accept Crawg Free Zone##49379 |goto 62.72,53.58
step
use the Sample Bottle##153678
Drain the Eastern Blood Orb |q 49380/2 |goto 62.17,54.40
step
clicknpc Crawgling##128808
Bond with a Crawgling |q 49378/1 |goto 61.80,52.53
stickystart "Feed_The_Crawgling"
stickystart "Kill_Battle_Crawgs"
step
use the Sample Bottle##153678
Drain the Western Blood Orb |q 49380/1 |goto 60.21,53.42
step
use the Sample Bottle##153678
Drain the Southern Blood Orb |q 49380/3 |goto 60.48,55.77
step
kill Warmother Nagla##128770
collect Nagla's Head##153572 |q 49377/1 |goto 62.15,57.34
step
label "Feed_The_Crawgling"
Kill enemies around this area
Feed the Crawgling #10# Times |q 49378/2 |goto 61.84,56.79
step
label "Kill_Battle_Crawgs"
kill 5 Battle Crawg##128780 |q 49379/1 |goto 61.84,56.79
step
talk Guard Satao##129165
|tip Under the bridge.
turnin Off With Her Head##49377 |goto 63.15,52.70
turnin Bad Juju##49380 |goto 63.15,52.70
step
talk Chronicler Jabari##129164
|tip Under the bridge.
turnin Earn Their Trust##49378 |goto 63.17,52.75
turnin Crawg Free Zone##49379 |goto 63.17,52.75
accept It Seems You've Made a Friend##49382 |goto 63.17,52.75
step
Enter the cave |goto 73.40,53.77 < 70 |walk |only if not subzone("Krag'wa's Burrow")
Seek Out Krag'wa |q 49382/1 |goto 74.72,55.95
|tip Inside the cave.
step
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin It Seems You've Made a Friend##49382 |goto 75.43,56.64
step
talk Patch##130056
Tell him _"I'm ready, let's hop on this barge and get back to Zul'jan."_
Speak with Patch to Board the Barge |q 49569/1 |goto 65.71,45.10
step
Watch the dialogue
Kill enemies around this area
|tip They are all along the river banks as you sail.
|tip Kill the hydra in the water when you stop sailing.
|tip Use the abilities on your action bar.
Sail Down the River |q 49569/2
step
talk Crazy Vaza##121840
|tip Inside the building.
home Zul'jan Ruins |goto 38.62,78.66 |q 50808 |future
step
talk Princess Talanji##121288
turnin Down by the Riverside##49569 |goto 39.40,78.15
accept Rally the Warriors##50076 |goto 39.40,78.15
step
click Ancient Gong##280611
Ring the Ancient Gong |q 50076/1 |goto 39.37,77.48
step
Watch the dialogue
Hear Talanji's Speech |q 50076/2 |goto 39.34,77.68
step
talk Princess Talanji##121288
turnin Rally the Warriors##50076 |goto 39.34,77.69
accept The Battle of Bloodfire Ravine##50138 |goto 39.34,77.69
step
Meet Talanji at Bloodfire Ravine |q 50138/1 |goto 42.29,72.47
step
_Next to you:_
talk Princess Talanji
accept Undying Totems##50078
stickystart "Slay_Blood_Trolls_2"
step
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.46,72.26 |count 1
step
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.16,71.29 |count 2
step
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.75,71.19 |count 3
step
_Next to you:_
talk Princess Talanji
turnin Undying Totems##50078
step
label "Slay_Blood_Trolls_2"
Kill Bloodfire enemies around this area
Slay #8# Blood Trolls |q 50138/2 |goto 43.56,71.26
step
Watch the dialogue
kill Warmother Molaka##132230 |q 50138/3 |goto 44.74,68.64
step
talk Princess Talanji##132333
turnin The Battle of Bloodfire Ravine##50138 |goto 44.95,68.62
accept The Road of Pain##50081 |goto 44.95,68.62
step
talk Patch##132988
accept Boom goes the Bomb##50079 |goto 44.97,68.34
stickystart "Heal_Zandalari_Soldiers"
step
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Watch the dialogue
Destroy the First Barricade |q 50079/1 |goto 44.45,66.80
step
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Watch the dialogue
Destroy the Second Barricade |q 50079/2 |goto 44.18,64.98
step
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Watch the dialogue
Destroy the Third Barricade |q 50079/3 |goto 44.16,63.59
step
label "Heal_Zandalari_Soldiers"
clicknpc Zandalari Soldier##132985+
|tip They look like injured trolls laying on the ground around this area.
Heal #6# Zandalari Soldiers |q 50081/1 |goto 44.13,64.36
step
Watch the dialogue
talk Princess Talanji##133125
|tip She runs to this location.
turnin Boom goes the Bomb##50079 |goto 44.19,62.85
turnin The Road of Pain##50081 |goto 44.19,62.85
accept Target of Opportunity##50082 |goto 44.19,62.85
step
Watch the dialogue
talk Princess Talanji##133401
Tell her _"I'm ready."_
Meet with Talanji |q 50082/1 |goto 44.98,60.95
step
Watch the dialogue
Kill the enemies that attack in waves
kill Decaying Hulk##133400
Confront Grand Ma'da Ateena |q 50082/2 |goto 45.58,59.85
step
talk Princess Talanji##133125
turnin Target of Opportunity##50082 |goto 45.21,60.54
step
Watch the dialogue
talk Princess Talanji##133125
accept Petitioning Krag'wa##52073 |goto 45.21,60.54
step
talk Rokhan##133471
accept The Crawg Ma'da##50083 |goto 45.40,58.59
step
kill Vicious War Crawg##133173+
collect Crawg Poison Gland##156868 |q 50083/1 |goto 46.71,55.59
step
use the Crawg Poison Gland##156868
|tip Use it on Amaka the Crawg Ma'da.
|tip It will make her easier to kill.
|tip Inside the building.
kill Amaka the Crawg Ma'da##133172 |q 50083/2 |goto 46.91,54.11
step
talk Rokhan##133338
|tip Follow the path up.
turnin The Crawg Ma'da##50083 |goto 48.31,53.54
accept A Message of Blood and Fire##50085 |goto 48.31,53.54
step
use the Wand of Embers##156931
|tip Use it on the buildings around this area.
Burn #8# Blood Troll Huts |q 50085/1 |goto 48.60,52.31
step
talk Rokhan##133475
turnin A Message of Blood and Fire##50085 |goto 44.35,54.10
step
talk Krag'wa the Huge##140283
Tell him _"Krag'wa, the leader of the blood trolls has fled to the large structure in the distance. Please, lend us your assistance."_
Petition Krag'wa for Aid |q 52073/1 |goto 45.14,60.79
step
talk Krag'wa the Huge##140283
Tell him _"I am ready to go, Krag'wa."_
Ride with Krag'wa |invehicle |goto 45.19,60.70 |q 52073
step
Watch the dialogue
Ride Krag'wa |q 52073/2 |goto 48.85,56.54
step
talk Princess Talanji##133476
turnin Petitioning Krag'wa##52073 |goto 49.39,57.18
accept Ateena's Fall##50087 |goto 49.39,57.18
step
kill Grand Ma'da Ateena##133472 |q 50087/1 |goto 50.80,57.91
|tip Follow her when she teleports around.
|tip Avoid the pools of blood on the ground.
step
Watch the dialogue
talk Princess Talanji##133480
turnin Ateena's Fall##50087 |goto 50.60,58.47
step
Watch the dialogue
talk Rokhan##140656
accept What Rots Beneath##51244 |goto 50.51,58.34
step
talk Rokhan##140656
Tell him _"Let's fly down and meet with Titan Keeper Hezrel."_
Fly Down to the Altar of Rot |q 51244/1 |goto 50.51,58.35
step
Watch the dialogue
Fly with Rokhan |offtaxi |goto 53.14,69.22 |q 51244 |notravel
step
talk Titan Keeper Hezrel##137112
|tip Follow the path down.
|tip Inside the cave.
Speak to Titan Keeper Hezrel |q 51244/2 |goto 51.75,65.70
step
talk Titan Keeper Hezrel##137112
|tip Inside the cave.
turnin What Rots Beneath##51244 |goto 51.75,65.70
accept The Underrot: Sealing G'huun's Corruption##51302 |goto 51.75,65.70
step
talk Rokhan##137113
|tip Inside the cave.
accept Halting the Empire's Fall##50808 |goto 51.89,65.54
step
talk Rokhan##137113
|tip Inside the cave.
Tell him _"Take me back to Zul'jan."_
Secure a Flight to Zul'jan |invehicle |goto 51.89,65.55 |q 50808
step
Fly Back to Zul'jan |outvehicle |goto 38.98,77.99 |q 50808 |notravel
step
Enter the building |goto Dazar'alor/0 49.97,42.11 < 10 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin Halting the Empire's Fall##50808 |goto Dazar'alor/2 41.41,72.22
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Vol'dun (10-60)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Voldun storylines:\n\nDangers in the Desert\nA City of Secrets\nStorming the Spire\nUnlikely Allies\nThe Warguard's Fate\nThe Three Keepers\nAtul'Aman",
condition_suggested=function() return level >= 10 and not completedq(49040) and completedq(52131) end,
startlevel=10.0,
endlevel=50.0,
image=ZGV.IMAGESDIR.."Vol'dun",
},[[
step
click Scouting Map
|tip Click the "Nazmir" quest icon on the map.
|tip Inside the building.
accept Vol'dun##47513 |goto Dazar'alor/2 41.65,69.21
step
talk Princess Talanji##133050
turnin Vol'dun##47513 |goto 41.14,66.73
accept Discreet Discussions##47313 |goto 41.14,66.73
step
talk Enforcer Sekal##122229
Ask her _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto Dazar'alor/0 50.09,37.45 |count 1
step
talk Enforcer Gortok##123243
Ask him _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto 52.19,37.52 |count 2
step
talk Enforcer Dakanji##122231
Ask him _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto 54.27,35.85 |count 3
step
Find Someone Willing to Talk |q 47313/2 |goto 51.58,31.82
step
talk Bladeguard Kaja##122817
turnin Discreet Discussions##47313 |goto 51.58,31.82
accept Rumors of Exile##47314 |goto 51.58,31.82
step
Watch the dialogue
talk Bladeguard Kaja##122320
|tip She walks to this location.
|tip At the entrance of the building.
turnin Rumors of Exile##47314 |goto 49.92,31.65
accept Into the Dunes##47315 |goto 49.92,31.65
step
clicknpc Pterrordax##122347
Mount the Pterrordax |q 47315/1 |goto 50.03,31.67
step
Watch the dialogue
Fly into Vol'dun |q 47315/2 |goto Vol'dun/0 66.08,36.43 |notravel
step
Watch the dialogue
talk Nisha##130455
|tip She walks to this location.
|tip Inside the cave.
turnin Into the Dunes##47315 |goto 65.98,36.65
accept Armed and Ready##51357 |goto 65.98,36.65
step
click Sethrak Scythe
|tip Inside the cave.
Choose a Weapon |q 51357/1 |goto 65.95,36.65
step
talk Nisha##130455
|tip Inside the cave.
turnin Armed and Ready##51357 |goto 65.98,36.65
step
_Next to you:_
talk Nisha
accept Answering Their Attacks##47327
accept Dressed for Battle##49676
stickystart "Slay_Sethraks"
step
Follow the path up and leave the cave |goto 64.90,36.23 < 15 |walk |only if subzone("Shrouded Hollow")
click Stolen Vulpera Banner##278686
Find the Banner |q 49676/1 |goto 64.67,33.91
step
click Sethrak Skull##278685
Find the Helmet |q 49676/2 |goto 63.63,32.70
step
click Explosives
Find the Explosives |q 49676/3 |goto 61.88,33.78
step
_Next to you:_
talk Nisha
turnin Dressed for Battle##49676
accept Plans for Attack##49677
step
label "Slay_Sethraks"
Kill Sethrak enemies around this area
Slay #12# Sethrak |q 47327/1 |goto 61.72,33.41
step
_Next to you:_
talk Nisha
turnin Answering Their Attacks##47327
step
kill Fangcaller Sraka##130466
collect Nisha's Attack Plans##158651 |q 49677/1 |goto 60.88,32.66
step
_Next to you:_
talk Nisha
turnin Plans for Attack##49677
accept An Explosive Exit##51364
step
Watch the dialogue
Find Nisha's Wagon |q 51364/1 |goto 60.06,34.58
step
clicknpc Nisha's Wagon##137492
Board Nisha's Wagon |q 51364/2 |goto 60.06,34.58
step
Watch the dialogue
|tip Use the "Volatile Potion" ability on the enemies that attack.
|tip It appears as a button on the screen.
Defend Nisha's Wagon |q 51364/3 |goto 58.23,40.55
step
Watch the dialogue
Ride to Vulpera Hideaway |q 51364/4 |goto 57.08,50.38 |notravel
step
talk Kiro##123586
turnin An Explosive Exit##51364 |goto 56.79,50.54
accept Restorative Venom##47319 |goto 56.79,50.54
step
talk Meerah##122583
accept Freshly Squeezed##51574 |goto 56.76,50.52
step
talk Hagashi##124108
home Vulpera Hideaway |goto 56.78,49.81 |q 48895 |future
step
talk Narishi##124107
fpath Vulpera Hideaway |goto 56.96,49.25
step
talk Vivi##135012
accept Missing Business##50739 |goto 55.20,48.38
stickystart "Revive_Sable_Polecats"
stickystart "Collect_Sandstinger_Venom_Glands"
step
clicknpc Vibrant Pricklevine##138107+
|tip They look like small red plants with teeth and green leaves on the ground around this area.
|tip You may be able to click them multiple times.
collect 8 Pricklevine Juice##160448 |q 51574/1 |goto 53.92,50.35
step
label "Revive_Sable_Polecats"
clicknpc Sable Polecat##135004+
|tip They look like small sleeping ferrets on the ground around this area.
Revive #7# Sable Polecats |q 50739/1 |goto 53.92,50.35
step
label "Collect_Sandstinger_Venom_Glands"
Kill Sandstinger enemies around this area
collect 15 Sandstinger Venom Gland##160441 |q 47319/1 |goto 53.92,50.35
step
talk Vivi##135012
turnin Missing Business##50739 |goto 55.20,48.38
step
talk Meerah##122583
turnin Freshly Squeezed##51574 |goto 56.76,50.52
step
talk Kiro##123586
turnin Restorative Venom##47319 |goto 56.79,50.54
accept A Balm to Calm##47320 |goto 56.79,50.54
step
use the Restorative Balm##150759
|tip Use it on Bladeguard Kaja.
Apply the Restorative Balm |q 47320/1 |goto 56.83,50.53
step
Watch the dialogue
talk Bladeguard Kaja##130341
turnin A Balm to Calm##47320 |goto 56.83,50.52
accept Searching for Survivors##47317 |goto 56.83,50.52
step
talk Kiro##123586
accept Knickknack Takeback##47321 |goto 56.79,50.53
step
talk Meerah##122583
accept Secrets in the Sand##47316 |goto 56.76,50.53
step
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 55.78,48.68 |count 1
step
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 56.33,43.90 |count 2
step
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 52.80,46.41 |count 3
step
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 52.78,41.80 |count 4
step
talk Neri##137631
accept Aided Escape##47322 |goto 54.69,42.49
step
talk Mekaru##137629
accept A Meal for Birds##50755 |goto 54.75,42.40
step
Kill enemies around this area
Feed the Buzzards #8# Times |q 50755/1 |goto 57.77,42.33
step
clicknpc Bladeguard Jorana##122729
Find Jorana |q 47317/2 |goto 57.42,40.62
stickystart "Collect_Knickknacks"
step
click Sethrak Cage##277876
Rescue Hakasi |q 47322/1 |goto 56.41,39.31
step
click Sethrak Cage
Rescue Kipp |q 47322/2 |goto 54.77,40.29
step
Enter the cave |goto 54.84,39.66 < 10 |walk
click Tarkaj's Warblade##271014
|tip Inside the cave.
Find Tarkaj |q 47317/1 |goto 54.61,39.38
step
label "Collect_Knickknacks"
Kill enemies around this area
Collect #6# Knickknacks |q 47321/1 |goto 55.11,40.05
step
talk Mekaru##137629
turnin A Meal for Birds##50755 |goto 54.75,42.40
step
talk Neri##137631
turnin Aided Escape##47322 |goto 54.69,42.49
step
talk Kiro##123586
turnin Knickknack Takeback##47321 |goto 56.79,50.54
step
talk Bladeguard Kaja##130341
turnin Secrets in the Sand##47316 |goto 56.83,50.52
turnin Searching for Survivors##47317 |goto 56.83,50.52
accept The Warguard's Trail##47959 |goto 56.83,50.52
step
talk Meerah##122583
Tell her _"We're ready to leave."_
Speak to Meerah |q 47959/1 |goto 56.76,50.53
step
Watch the dialogue
Ride Meerah's Caravan |q 47959/2 |goto 53.48,65.95 |notravel
step
talk Jorak##126696
turnin The Warguard's Trail##47959 |goto 52.97,66.53
accept Grozztok the Blackheart##48549 |goto 52.97,66.53
accept Stolen Satchels##48550 |goto 52.97,66.53
stickystart "Collect_Weathered_Satchels"
step
click Ranah's Wrench##291143
accept Ranah's Wrench##51829 |goto 50.70,64.66
step
Watch the dialogue
|tip At the entrance of the building.
kill Grozztok the Blackheart##126697 |q 48549/1 |goto 49.19,64.74
step
label "Collect_Weathered_Satchels"
Kill Sandfury enemies around this area
collect 5 Weathered Satchel##152660 |q 48550/1 |goto 49.45,65.34
step
talk Bladeguard Kaja##122289
turnin Grozztok the Blackheart##48549 |goto 53.19,66.05
step
talk Jorak##126696
turnin Stolen Satchels##48550 |goto 53.34,66.00
step
talk Bladeguard Kaja##122289
accept On the Move##48684 |goto 53.19,66.06
step
talk Ranah##126814
turnin Ranah's Wrench##51829 |goto 53.87,69.39
accept Wither Without Water##48551 |goto 53.87,69.39
accept Let it Flow##48553 |goto 53.87,69.39
accept We Can Salvage the Seeds##48555 |goto 53.87,69.39
stickystart "Plant_Thistlevine_Seeds"
stickystart "Water_Withered_Thistlevines"
step
click Terrace Fountain##291008
Fix the North Fountain |q 48553/1 |goto 53.45,67.84
step
click Terrace Fountain##291008
Fix the South Fountain |q 48553/2 |goto 52.91,71.91
step
label "Plant_Thistlevine_Seeds"
Kill Carnivorous enemies around this area
collect Thistlevine Seeds##152644 |n
clicknpc Fertile Soil###126886+
|tip They look like brown piles of fresh dirt inside square planters on the ground around this area.
|tip You must have Thistlevine Seeds in order to plant them.
Plant #8# Thistlevine Seeds |q 48555/1 |goto 52.95,70.05
step
label "Water_Withered_Thistlevines"
use Ranah's Watering Can##152630
|tip Use it on Withered Thistlevines around this area.
|tip They look like small dead brown plants on the ground around this area.
Water #10# Withered Thistlevines |q 48551/1 |goto 52.95,70.05
step
talk Ranah##126814
turnin Wither Without Water##48551 |goto 53.87,69.39
turnin Let it Flow##48553 |goto 53.87,69.39
turnin We Can Salvage the Seeds##48555 |goto 53.87,69.39
accept The Source of the Problem##48554 |goto 53.87,69.39
step
Follow the path up the mountain |goto 53.86,68.38 < 15 |only if walking
click Loose Boulder##273995
|tip Up on the mountain.
|tip You will be attacked.
Inspect the Reservoir |q 48554/1 |goto 55.38,69.36
step
kill Colossal Water Cobra##127169 |q 48554/2 |goto 55.38,69.36
step
talk Ranah##126814
turnin The Source of the Problem##48554 |goto 53.87,69.39
step
talk Meerah##126235
Tell her _"We're ready to leave."_
Speak to Meerah |q 48684/1 |goto 53.22,66.04
step
Watch the dialogue
Ride Meerah's Caravan |q 48684/2 |goto 52.88,89.12 |notravel
step
talk Jorak##127691
turnin On the Move##48684 |goto 52.83,89.23
accept The Perfect Offering##48895 |goto 52.83,89.23
step
talk Akunda the Exalted##127992
turnin The Perfect Offering##48895 |goto 53.18,90.29
accept Vile Infestation##48991 |goto 53.18,90.29
accept Sacred Remains##48992 |goto 53.18,90.29
accept Powerful Conductors##48993 |goto 53.18,90.29
step
talk Jorak##127691
accept Fond Farewells##49040 |goto 52.83,89.23 |or
'|accept Fond Farewells##49731 |goto 52.83,89.23 |or
step
talk Akunda the Bountiful##127431
|tip Inside the building.
home Temple of Akunda |goto 51.92,89.83 |q 50561 |future
step
talk Akunda the Tamer##127427
fpath Temple of Akunda |goto 53.72,89.17
stickystart "Collect_Sacred_Remains"
stickystart "Kill_Ranishu_Gorgers"
step
Enter the cave |goto 55.01,86.20 < 10 |walk |only if not subzone("Redrock Cavern")
kill Rorgog the Devourer##134052
|tip Downstairs inside the cave.
collect Rorgog's Antennae##153029 |q 48993/1 |goto 56.12,83.45
step
label "Collect_Sacred_Remains"
Follow the path up and leave the cave |goto 55.04,86.20 < 10 |walk |only if subzone("Redrock Cavern")
click Sacred Remains##277285+
|tip They look like white bones on the ground around this area.
collect 6 Sacred Remains##153028 |q 48992/1 |goto 54.60,86.07
step
label "Kill_Ranishu_Gorgers"
Follow the path up and leave the cave |goto 55.04,86.20 < 10 |walk |only if subzone("Redrock Cavern")
kill 12 Ranishu Gorger##133565 |q 48991/1 |goto 54.60,86.07
step
Follow the path up and leave the cave |goto 55.04,86.20 < 10 |walk |only if subzone("Redrock Cavern")
talk Akunda the Exalted##127992
turnin Vile Infestation##48991 |goto 53.18,90.29
turnin Sacred Remains##48992 |goto 53.18,90.29
turnin Powerful Conductors##48993 |goto 53.18,90.29
accept Cleanse the Mind##48887 |goto 53.18,90.29
accept It Springs Eternal##48888 |goto 53.18,90.29
stickystart "Slay_Redrock_Scavenger"
step
Enter the cave |goto 52.16,83.78 < 10 |walk
click Shrine of Thunder##276460
|tip Inside the cave.
|tip You will be attacked.
Meditate at the Shrine of Thunder |q 48887/1 |goto 52.17,83.36
step
label "Slay_Redrock_Scavenger"
Kill Redrock enemies around this area
Slay #8# Redrock Scavenger |q 48888/1 |goto 52.13,84.48
step
talk Akunda the Exalted##127992
turnin Cleanse the Mind##48887 |goto 53.18,90.30
turnin It Springs Eternal##48888 |goto 53.18,90.30
accept Trial of Truth##48894 |goto 53.18,90.30
step
talk Akunda the Exalted##127992
Tell him "_My name is Akunda the Nimble."_
|tip You can choose whichever Akunda name you like, it doesn't matter.
|tip You cannot choose to have your name remain unchanged.
Speak Your True Name to Akunda the Exalted |q 48894/1 |goto 53.18,90.29
step
talk Akunda the Exalted##127966
turnin Trial of Truth##48894 |goto 53.18,90.29
step
talk Bladeguard Kaja##127570
accept Akunda Awaits##48715 |goto 53.16,90.20
step
Watch the dialogue
|tip Inside the building.
Investigate the Temple of Akunda |q 48715/1 |goto 53.18,91.26
step
Watch the dialogue
talk Bladeguard Kaja##135066
|tip She runs to this location.
|tip Inside the building.
turnin Akunda Awaits##48715 |goto 53.58,91.65
step
talk Akunda the Sensible##127980
|tip Inside the building.
accept Valley of Sorrows##48987 |goto 53.58,91.34
step
talk Meijani##127989
turnin Valley of Sorrows##48987 |goto 53.01,78.77
accept Memory Breach##48988 |goto 53.01,78.77
accept Shattered and Broken##49005 |goto 53.01,78.77
stickystart "Search_Unwanted_Memories"
stickystart "Kill_Fractured_Memories"
step
kill 4 Distorted Memory##138198 |q 49005/1 |goto 53.49,76.85
step
label "Search_Unwanted_Memories"
clicknpc Unwanted Memory##122683+
|tip They look like grey vases on the ground around this area.
Search #8# Unwanted Memories |q 48988/1 |goto 52.71,76.94
You can find more around [54.43,76.24]
step
label "Kill_Fractured_Memories"
kill 8 Fractured Memory##138199 |q 49005/2 |goto 53.49,76.85
step
talk Meijani##127989
turnin Memory Breach##48988 |goto 53.01,78.77
turnin Shattered and Broken##49005 |goto 53.01,78.77
accept Repairing the Past##48889 |goto 53.01,78.77
step
Enter the cave |goto 52.60,79.18 < 10 |walk
Kill the enemies that attack in waves
|tip Inside the cave.
Watch the dialogue
Protect Meijani |q 48889/1 |goto 52.31,79.74
step
talk Akunda##138382
|tip Inside the cave.
turnin Repairing the Past##48889 |goto 52.22,79.89
accept Ending the Madness##48996 |goto 52.22,79.89
step
kill Akunda the Exalted##128147 |q 48996/1 |goto 53.18,91.25
|tip Inside the building.
|tip Use the "Tempest" ability.
|tip It appears as a button on the screen.
step
Watch the dialogue
talk Akunda##128152
|tip Inside the building.
turnin Ending the Madness##48996 |goto 53.19,91.65
accept Akunda's Blessing##50913 |goto 53.19,91.65
step
click Altar of Akunda##290773
|tip Inside the building.
Visit the Altar of Akunda |q 50913/1 |goto 53.18,92.12
step
talk Akunda##128152
|tip Inside the building.
turnin Akunda's Blessing##50913 |goto 53.19,91.65
step
talk Warguard Rakera##130660
|tip Inside the building.
accept Clearing the Fog##47874 |goto 53.61,91.66
step
Watch the dialogue
talk Warguard Rakera##130667
|tip She walks to this location.
turnin Clearing the Fog##47874 |goto 52.81,89.24
accept Knowledge of the Past##48896 |goto 52.81,89.24
step
talk Meerah##126235
Tell her _"We're ready to leave."_
Speak to Meerah |q 48896/1 |goto 52.70,89.30
step
Watch the dialogue
Ride Meerah's Caravan |q 48896/2 |goto 47.91,82.38 |notravel
step
kill 3 Sandfury Assassin##128209 |q 48896/3 |goto 47.67,81.99
step
_Next to you:_
talk Warguard Rakera
turnin Knowledge of the Past##48896
accept Searching the Ruins##47716
step
Watch the dialogue
Search for Julwaba |q 47716/1 |goto 46.60,76.05
step
Enter the building |goto 46.77,75.72 < 20 |only if walking
Watch the dialogue
talk Julwaba##134162
|tip Inside the building.
turnin Searching the Ruins##47716 |goto 47.07,75.66
step
talk Kiro##135154
|tip Inside the building.
accept Nature's Remedy##48313 |goto 47.05,75.60
accept Creeping Death##48314 |goto 47.05,75.60
stickystart "Collect_Scorpashi_Stingers"
step
click Prickly Plum##273193
|tip They look like green spiky plants on the ground around this area.
collect 6 Prickly Plum Cactus##152393 |q 48313/1 |goto 46.00,73.43
step
label "Collect_Scorpashi_Stingers"
Kill Scorpashi enemies around this area
collect 7 Scorpashi Stinger##152397 |q 48314/1 |goto 46.57,70.76
step
Enter the building |goto 46.77,75.72 < 20 |only if walking
talk Kiro##135154
|tip Inside the building.
turnin Nature's Remedy##48313 |goto 47.06,75.60
turnin Creeping Death##48314 |goto 47.06,75.60
accept Effective Antivenom##50770 |goto 47.06,75.60
step
use the Antivenom##158678
|tip Use it on Serrik.
|tip Inside the building.
Apply the Restorative Balm |q 50770/1 |goto 47.06,75.72
step
Watch the dialogue
talk Serrik##134533
|tip Inside the building.
turnin Effective Antivenom##50770 |goto 47.06,75.71
accept The Secrets of Zul'Ahjin##50539 |goto 47.06,75.71
step
Run up the stairs |goto 46.87,74.21 < 15 |only if walking
talk Maaz##134148
|tip Inside the building.
accept Magic Decoder Device##50536 |goto 47.32,72.73
step
clicknpc Scepter of Prescience##134245
|tip Inside the building.
Test the Device |q 50536/1 |goto 47.36,72.66
step
clicknpc Keeper Korthek##134089
|tip Run around the wall.
Inspect the Statue of Korthek  |q 50536/2 |goto 48.05,74.97
step
clicknpc Keeper Vorrik##134067
Inspect the Statue of Vorrik |q 50536/3 |goto 48.89,76.34
step
clicknpc Keeper Sulthis##134090
Inspect the Statue of Sulthis |q 50536/4 |goto 49.74,74.98
step
click Crumbling Statue##281639
turnin The Secrets of Zul'Ahjin##50539 |goto 48.90,74.49
accept Hollow, Empty Eyes##48315 |goto 48.90,74.49
step
talk Foreman Jethek##134408
|tip He walks around this area.
|tip You must have the "Avatar of the Desert" buff, and look like a snake, to be able to talk to him.
accept Exterminate the Vermin##50596 |goto 49.75,76.26
step
click Sethrak Shackle+
|tip They look like grey metal ball and chains tied to the legs of small fox men around this area.
Free #3# Excavators |q 50596/1 |goto 48.63,77.29
step
click Glittering Sapphire##281558
collect Glittering Sapphire##157864 |q 48315/1 |goto 49.85,73.19 |count 1
step
Run up the stairs |goto 50.46,71.81 < 15 |only if walking
click Glittering Sapphire##281558
collect Glittering Sapphire##157864 |q 48315/1 |goto 51.05,72.34 |count 2
step
click Crumbling Statue##281639
turnin Hollow, Empty Eyes##48315 |goto 48.90,74.49
step
Watch the dialogue
click Ancient Reliquary##281583
accept Sulthis' Stone##50561 |goto 48.90,74.25
step
talk Maaz##134148
|tip Inside the building.
turnin Magic Decoder Device##50536 |goto 47.32,72.73
accept Rescue the Relics##48871 |goto 47.32,72.73
step
talk Amre##134164
|tip He walks around this area inside the building.
turnin Exterminate the Vermin##50596 |goto 47.32,72.60
accept Expedite the Excavation##48872 |goto 47.32,72.60
stickystart "Slay_Sethraks_2"
step
click Relic of the Keepers##281608+
|tip They look like small blue orb-shaped stone statues on the ground around this area.
collect 8 Relic of the Keepers##152787 |q 48871/1 |goto 48.89,73.91
step
label "Slay_Sethraks_2"
Kill Sethrak enemies around this area
Slay #12# Sethraks |q 48872/1 |goto 48.89,73.91
step
talk Maaz##134148
|tip Inside the building.
turnin Rescue the Relics##48871 |goto 47.32,72.73
step
talk Amre##134164
|tip He walks around this area inside the building.
turnin Expedite the Excavation##48872 |goto 47.32,72.60
step
talk Maaz##134148
|tip Inside the building.
accept Power of the Overseer##50535 |goto 47.32,72.73
step
kill Overseer Nerzet##134121
|tip He walks around this area.
|tip On the platform, up the stairs.
collect Azerite Shard##157855 |q 50535/1 |goto 48.89,76.71
step
talk Maaz##134148
|tip Inside the building.
turnin Power of the Overseer##50535 |goto 47.32,72.74
step
Enter the building |goto 46.73,75.70 < 20 |walk
talk Serrik##134533
|tip Inside the building.
turnin Sulthis' Stone##50561 |goto 47.06,75.71
accept Unlikely Allies##47324 |goto 47.06,75.71
step
talk Julwaba##134162
|tip Inside the building.
accept Seeking Shelter##50794 |goto 47.07,75.66
step
talk Makaanji##135654
fpath Scorched Sands Outpost |goto 43.90,75.92
step
talk Mozesha##135655
home Scorched Sands Outpost |goto 43.04,76.46 |q 47324 |future
step
talk Razgaji##126576
turnin Seeking Shelter##50794 |goto 43.39,75.36
accept I've Got Your Back##51573 |goto 43.39,75.36
step
talk Razgaji##126576
Tell him _"I'm ready. Let's go."_
Speak with Razgaji |q 51573/1 |goto 43.40,75.36
step
Watch the dialogue
|tip Follow Razgaji as he walks.
Escort Razgaji |q 51573/2 |goto 43.39,74.03
step
talk Razgaji##126576
|tip He walks to this location.
|tip You can turn in and accept quests as he walks.
turnin I've Got Your Back##51573 |goto 43.39,75.37
accept Hungry Mouths To Feed##48529 |goto 43.39,75.37
accept I Heard You Lost the Herd##48530 |goto 43.39,75.37
step
talk Sezahjin##126108
turnin Hungry Mouths To Feed##48529 |goto 43.70,76.78
accept Mystery Meat##48531 |goto 43.70,76.78
accept Vol'duni Fried Chicken##48533 |goto 43.70,76.78
step
talk Mugjabu##126085
turnin I Heard You Lost the Herd##48530 |goto 42.12,76.20
accept Alpacas Gone Wild##48532 |goto 42.12,76.20
step
use Sezahjin's Trusty Vulture Bow##152572
|tip Use it on Fattened Buzzard around this area.
|tip Some of them are flying in the air around this area.
kill Fattened Buzzard##126502+
collect 8 Roasted Buzzard##152571 |q 48533/1 |goto 43.43,74.30
step
talk Sezahjin##126108
turnin Vol'duni Fried Chicken##48533 |goto 43.70,76.78
stickystart "Collect_Dung_Beetle_Innards"
stickystart "Herd_Alpacas"
step
click Backpack##282438
accept Wasteland Survivor##48585 |goto 40.43,73.63
stickystart "Collect_Scavenged_Supplies"
step
label "Collect_Dung_Beetle_Innards"
kill Vol'duni Dunecrawler##126645+
collect 10 Dung Beetle Innards##152566 |q 48531/1 |goto 39.49,72.37
step
label "Herd_Alpacas"
use the Alpaca Whistle##152570
|tip Use it next to Lost Alpacas around this area.
|tip They may attack you.
Herd #6# Alpacas |q 48532/1 |goto 39.44,70.62
step
label "Collect_Scavenged_Supplies"
click Supply Pouch##273837+
|tip They look like tiny brown bags and boxes laying next to piles of bones on the ground around this area.
collect 10 Scavenged Supplies##152601 |q 48585/1 |goto 39.28,72.41
step
talk Mugjabu##126085
turnin Alpacas Gone Wild##48532 |goto 42.13,76.20
step
talk Sezahjin##126108
turnin Mystery Meat##48531 |goto 43.70,76.78
accept The Chef's Apprentice##48655 |goto 43.70,76.78
step
talk Razgaji##126576
turnin Wasteland Survivor##48585 |goto 43.39,75.37
step
talk Mugjabu##126085
accept Snarltooth's Last Laugh##48534 |goto 42.13,76.20
step
Jump down and enter the building |goto 43.40,79.20 < 10 |walk
click Junji##276187
|tip Inside the building.
turnin The Chef's Apprentice##48655 |goto 43.39,78.65
accept Savage Saurolisks##48656 |goto 43.39,78.65
accept They Might Be Delicious##48657 |goto 43.39,78.65
stickystart "Collect_Saurolisk_Eggs"
stickystart "Kill_Scaleclaw_Saurolisks"
step
Enter the cave |goto 43.44,82.49 < 10 |walk |only if not subzone("Snarlfang Den")
kill Snarltooth##126644
|tip Inside the cave.
collect Snarltooth's Head##152573 |q 48534/1 |goto 42.82,84.36
step
label "Collect_Saurolisk_Eggs"
Leave the cave |goto 43.46,82.53 < 10 |walk |only if subzone("Snarlfang Den")
click Saurolisk Egg##275099+
|tip They look like large white eggs on the ground around this area.
collect 10 Saurolisk Egg##152647 |q 48657/1 |goto 43.69,81.21
step
label "Kill_Scaleclaw_Saurolisks"
Leave the cave |goto 43.46,82.53 < 10 |walk |only if subzone("Snarlfang Den")
kill 8 Scaleclaw Saurolisk##126984 |q 48656/1 |goto 43.69,81.21
step
Leave the cave |goto 43.46,82.53 < 10 |walk |only if subzone("Snarlfang Den")
Enter the building |goto 43.40,79.19 < 10 |walk
click Junji##276187
|tip Inside the building.
turnin Savage Saurolisks##48656 |goto 43.39,78.65
turnin They Might Be Delicious##48657 |goto 43.39,78.65
step
Run up the stairs |goto 42.97,79.31 < 15 |only if walking and subzone("Arid Basin")
talk Mugjabu##126085
turnin Snarltooth's Last Laugh##48534 |goto 42.13,76.20
step
talk Zauljin##125862
accept Liquid Motivation##48846 |goto 43.24,76.96
step
talk Taz'jin##127578
|tip Inside the building.
buy Zanchuli Reserve##160499 |q 48846/1 |goto 42.86,76.31
step
talk Zauljin##125862
Tell him _"Here's the rum. Tell me what you heard."_
Deliver the Rum to Zauljin |q 48846/2 |goto 43.24,76.96
step
talk Razgaji##126576
turnin Liquid Motivation##48846 |goto 43.39,75.37
accept Stolen Goods##48790 |goto 43.39,75.37
accept Tongo##48850 |goto 43.39,75.37
accept Bandit Blades##51602 |goto 43.39,75.37
stickystart "Collect_Sandworn_Blades"
stickystart "Collect_Stolen_Supplies"
step
Enter the building |goto 40.58,76.04 < 10 |walk
kill Tongo##135326
|tip Inside the building.
collect Tongo's Head##158875 |q 48850/1 |goto 40.85,76.02
step
label "Collect_Sandworn_Blades"
kill Zandalari Exile##135311+
click Sandworn Blade##290712+
|tip They look like swords sticking out of the ground around this area.
collect 8 Sandworn Blade##160515 |q 51602/1 |goto 40.15,75.89
step
label "Collect_Stolen_Supplies"
click Stolen Items
|tip They look like various shaped different named objects on the ground and inside buildings around this area.
|tip They will appear on your minimap as yellow dots.
Collect #6# Stolen Supplies |q 48790/1 |goto 40.15,75.89
step
talk Razgaji##126576
turnin Stolen Goods##48790 |goto 43.39,75.37
turnin Tongo##48850 |goto 43.39,75.37
turnin Bandit Blades##51602 |goto 43.39,75.37
accept Arming the Tribe##48847 |goto 43.39,75.37
step
talk Scorched Sands Outcast##138395
|tip Inside the building.
Tell him _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.86,76.08 |count 1
step
talk Scorched Sands Outcast##138395
|tip Inside the building.
Tell her _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.86,76.58 |count 2
step
talk Scorched Sands Outcast##138395
Tell him _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 43.61,76.98 |count 3
step
talk Scorched Sands Outcast##138395
Tell her _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 43.82,77.84 |count 4
step
talk Scorched Sands Outcast##138395
Tell him _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.97,77.84 |count 5
step
talk Scorched Sands Outcast##138395
Tell her _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.56,76.67 |count 6
step
talk Scorched Sands Outcast##138395
Tell him _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.52,76.35 |count 7
step
talk Scorched Sands Outcast##138395
Tell her _"The battle is approaching. Take this sword and remain vigilant."_
Arm the Villager |q 48847/1 |goto 42.14,76.01 |count 8
step
talk Razgaji##126576
turnin Arming the Tribe##48847 |goto 43.39,75.37
accept Mojambo##51668 |goto 43.39,75.37
step
use Tongo's Head##160525
|tip Use it on Mojambo.
kill Mojambo##138113 |q 51668/1 |goto 43.41,73.87
step
talk Razgaji##126576
turnin Mojambo##51668 |goto 43.40,75.37
accept The Ashvane Threat##51773 |goto 43.40,75.37
step
click Wanted: Za'roco##287398
accept WANTED: Za'roco##51161 |goto 43.14,76.57
step
talk Sezahjin##126108
accept The Tortaka Tribe##51772 |goto 43.70,76.78
step
talk Mugjabu##126085
accept Camp Lastwind##51775 |goto 42.13,76.20
step
talk Norah##125904
turnin Camp Lastwind##51775 |goto 38.88,77.32
accept Lost in Zem'lan##48324 |goto 38.88,77.32
step
click Wanted: Taz'raka##287440
accept WANTED: Taz'raka the Traitor##51162 |goto 38.85,76.97
step
clicknpc Meeki##136287
turnin Lost in Zem'lan##48324 |goto 35.46,83.48
step
talk First Mate Jamboya##128261
accept The Day the Port Fell##51053 |goto 35.44,83.82
step
use First Mate Jamboya's Medallion##159747
Witness Jamboya's Memory |q 51053/1 |goto 34.11,85.48
step
talk First Mate Jamboya##128261
turnin The Day the Port Fell##51053 |goto 35.44,83.82
accept Overdue Mutiny##51054 |goto 35.44,83.82
step
clicknpc First Mate Jamboya##136583
Free First Mate Jamboya |q 51054/1 |goto 35.44,83.83
step
Watch the dialogue
talk First Mate Jamboya##136309
|tip He runs to this location.
turnin Overdue Mutiny##51054 |goto 35.31,83.20
accept The Yard Arm of the Law##51055 |goto 35.31,83.20
accept My Last Day Alive##51056 |goto 35.31,83.20
step
Enter the building |goto 36.92,78.62 < 20 |walk
clicknpc Quartermaster Tulmac##136434
|tip Inside the building.
Free Quartermaster Tulmac |q 51055/1 |goto 36.92,78.08
step
Enter the building |goto 35.92,78.21 < 10 |walk
use First Mate Jamboya's Medallion##159757
Witness the Throne Room Memory |q 51056/1 |goto 36.05,78.02
step
clicknpc Gunner Bosanya##136435
Free Gunner Bosanya |q 51055/2 |goto 35.13,77.98
step
Enter the building |goto 34.88,76.81 < 10 |walk
clicknpc Jukanga the Snitch##136441
|tip Inside the building.
Free Jukanga the Snitch |q 51055/3 |goto 34.65,77.13
step
use First Mate Jamboya's Medallion##159757
Witness the Battlefield Memory |q 51056/2 |goto 35.83,75.31
step
Enter the building |goto 35.72,70.77 < 10 |walk
kill Taz'raka the Traitor##136595 |q 51162/1 |goto 35.50,70.86
|tip Inside the building.
|tip If you have trouble, try to find help, or skip the quest.
step
talk Norah##125904
turnin WANTED: Taz'raka the Traitor##51162 |goto 38.88,77.31
step
talk First Mate Jamboya##136309
turnin The Yard Arm of the Law##51055 |goto 35.31,83.20
turnin My Last Day Alive##51056 |goto 35.31,83.20
accept The Grinning Idols##47499 |goto 35.31,83.20
accept Maroon 'em with Fire##51057 |goto 35.31,83.20
stickystart "Burn_Pillaging_Canoes"
step
click Captain Gulnaku's Treasure Map##289728
accept Captain Gulnaku's Treasure##49138 |goto 35.04,80.41
step
kill Quartermaster Boonzali##128346
collect Idol of Binding##153351 |q 47499/1 |goto 33.87,81.25
step
kill Da Cabin Boy##128454
collect Idol of Immortality##151021 |q 47499/2 |goto 34.36,77.60
step
kill Master Gunner Torwec##136446
|tip He walks around this area.
collect Idol of Sacrifice##153352 |q 47499/3 |goto 32.95,78.09
step
Find the Buried Treasure |q 49138/1 |goto 31.76,79.28
step
kill Captain Gulnaku##128299
collect Captain Gulnaku's Key##153419 |q 49138/2 |goto 31.75,79.26
step
click Captain Gulnaku's Treasure##277530
turnin Captain Gulnaku's Treasure##49138 |goto 31.76,79.28
step
label "Burn_Pillaging_Canoes"
use the Undying Torch##159774
|tip Use it on Pillaging Canoes around this area.
|tip They look like large wooden canoes in the water along the shore around this area.
Burn #8# Pillaging Canoes |q 51057/1 |goto 32.69,80.37
step
talk First Mate Jamboya##136310
|tip Under the bridge.
turnin The Grinning Idols##47499 |goto 33.28,81.77
turnin Maroon 'em with Fire##51057 |goto 33.28,81.77
accept The Golden Isle##51059 |goto 33.28,81.77
step
clicknpc Jamboya's Boat##136773
|tip Under the bridge.
Begin Riding Jamboya's Boat |invehicle |goto 33.25,81.85 |q 51059
step
Watch the dialogue
Ride Jamboya's Boat |q 51059/1 |goto 30.28,86.36 |notravel
step
talk First Mate Jamboya##136779
turnin The Golden Isle##51059 |goto 30.24,86.51
accept Our Share of the Plunder##51060 |goto 30.24,86.51
accept The First Time I Died##51061 |goto 30.24,86.51
stickystart "Collect_Cursed_Treasure_of_Zem'lan"
step
click Cursed Altar of Zem'lan##289734
Place the Idols on the Altar |q 51061/1 |goto 29.73,87.95
step
click Idol of Binding##288154
Attack the Idol of Binding |q 51061/2 |goto 29.71,87.98
step
_Next to you:_
talk First Mate Jamboya
turnin The First Time I Died##51061
step
label "Collect_Cursed_Treasure_of_Zem'lan"
Kill enemies around this area
click Cursed Treasure##287493+
|tip They look like large and small brown sacks with treasure in them on the ground around this area.
collect 12 Cursed Treasure of Zem'lan##152659 |q 51060/1 |goto 29.63,87.57
step
_Next to you:_
talk First Mate Jamboya
turnin Our Share of the Plunder##51060
accept This Be Mutiny##48326
step
click Gong of Zem'lan##289733
Ring the Gong of Zem'lan |q 48326/1 |goto 28.59,88.68
step
Watch the dialogue
kill Pirate-King Zem'lan##127025 |q 48326/2 |goto 28.58,88.37
step
talk First Mate Jamboya##136779
turnin This Be Mutiny##48326 |goto 30.24,86.51
accept Escaping Zem'lan##51062 |goto 30.24,86.51
step
clicknpc Jamboya's Boat##136773
Begin Riding Jamboya's Boat |invehicle |goto 30.27,86.32 |q 51062
step
Watch the dialogue
Ride Jamboya's Boat |q 51062/1 |goto 37.69,82.68 |notravel
step
talk Norah##125904
turnin Escaping Zem'lan##51062 |goto 38.88,77.31
accept A Strange Delivery##48327 |goto 38.88,77.31
step
Enter the building |goto 47.01,73.34 < 20 |walk
kill Za'roco the Grifter##136601 |q 51161/1 |goto 47.30,73.70
|tip Inside the building.
|tip If you have trouble, try to find help, or skip the quest.
step
talk Razgaji##126576
turnin WANTED: Za'roco##51161 |goto 43.39,75.37
step
talk Randall Redmond##124468
|tip Up on the hill, under the rock bridge.
turnin The Ashvane Threat##51773 |goto 45.65,82.32
accept Dead Men Tell No Tales##47870 |goto 45.65,82.32
accept Seafaring Necessities##47871 |goto 45.65,82.32
stickystart "Collect_Ashvane_Garb"
step
kill Expedition Leader Augustus##124593
collect Seafaring Hat##151628 |q 47871/1 |goto 46.18,86.47
step
kill Gunner Erikson##124647 |q 47870/1 |goto 46.72,87.36
step
click Weathered Spyglass##272294
collect Weathered Spyglass##151631 |q 47871/3 |goto 46.72,87.29
step
kill First Mate Perry##124650 |q 47870/3 |goto 46.89,87.95
|tip She walks around this area.
step
kill Boatswain Hendricks##124648 |q 47870/2 |goto 48.08,86.90
step
click Nautical Map##272292
collect Nautical Map##151629 |q 47871/2 |goto 47.97,87.05
step
talk Keerin##128422
accept If the Key Fits...##47939 |goto 47.60,86.16
step
Kill enemies around this area
collect 6 Ashvane Trader Key##151777 |q 47939/1 |goto 47.52,87.23
step
label "Collect_Ashvane_Garb"
Kill enemies around this area
collect 5 Ashvane Garb##160735 |goto 47.52,87.23 |q 47939 |future
step
talk Keerin##128422
turnin If the Key Fits...##47939 |goto 47.60,86.15
accept The Master Key##49227 |goto 47.60,86.15
step
Enter the cave |goto 47.89,88.18 < 15 |walk |only if not subzone("Redrock Mines")
kill Overseer Morrison##128418
|tip Downstairs inside the cave.
collect Morrison's Master Key##153420 |q 49227/1 |goto 49.67,88.35
step
use the Ashvane Garb##160735+
Equip the Ashvane Garb |condition hasbuff("spell:266248") or hasbuff("spell:247642") |q 49227
step
clicknpc Vulpera Captive##128421+
|tip They look like friendly fox NPC's mining inside the cave around this area.
Free #8# Vulpera Captives |q 49227/2 |goto 48.50,88.90
step
Leave the cave |goto 47.87,88.11 < 15 |walk |only if subzone("Redrock Mines")
talk Keerin##128422
turnin The Master Key##49227 |goto 47.60,86.15
step
talk Randall Redmond##124468
turnin Dead Men Tell No Tales##47870 |goto 44.65,86.99
turnin Seafaring Necessities##47871 |goto 44.65,86.99
accept Captain Hartford##51810 |goto 44.65,86.99
step
Kill enemies around this area
collect 5 Ashvane Garb##160735 |goto 45.24,88.25 |q 49261 |future |or
'|condition hasbuff("spell:266248") or hasbuff("spell:247642") |or
step
use the Ashvane Garb##160735+
Equip the Ashvane Garb |condition hasbuff("spell:266248") or hasbuff("spell:247642") |q 49261 |future
step
talk Dockmaster Herrington##128618
accept Crabby Crew Stew##49261 |goto 44.60,88.23
accept Gang Bustin'##49262 |goto 44.60,88.23
step
talk Shady Deckhand##128617+
|tip Avoid Ashvane Overseers, they can see through your disguise.
|tip If you lose your disguise, kill enemies for Ashvane Garbs to create another one.
Tell them _"I know you've been stealing from the company. I'm here to make sure it doesn't happen again..."_
Confront #8# Shady Deckhands |q 49262/1 |goto 45.05,90.68
step
kill Sand Scuttler##124567+
collect 8 Lumpy Crab Meat##151627 |q 49261/1 |goto 43.00,87.31
step
talk Dockmaster Herrington##128618
|tip If you can't talk to him, kill enemies around this area for Ashvane Garb to create another disguise.
|tip Once you have 5 of them, use them to wear the disgusie.
turnin Crabby Crew Stew##49261 |goto 44.60,88.23
turnin Gang Bustin'##49262 |goto 44.60,88.23
step
kill Captain Hartford##139164 |q 51810/1 |goto 43.14,90.80
|tip At the top of the ship.
step
talk Captain Redmond##139070
|tip Inside the ship, on the top interior level.
turnin Captain Hartford##51810 |goto 43.20,90.89
accept The Captain's Cache##47873 |goto 43.20,90.89
step
click Captain Hartford's Lockbox##282746
|tip Inside the ship, on the top interior level.
turnin The Captain's Cache##47873 |goto 43.20,90.77
step
clicknpc Serrik's Pterrordax##134544
Mount the Pterrordax |q 47324/1 |goto 46.79,75.45
step
Watch the dialogue
Fly to the Sanctuary of the Devoted |q 47324/2 |goto 27.24,54.09 |notravel
step
Watch the dialogue
talk Serrik##128687
turnin Unlikely Allies##47324 |goto 27.22,53.94
accept A Powerful Prisoner##49334 |goto 27.22,53.94
step
talk Zissiah##128696
accept Break Their Ranks##50641 |goto 27.20,53.86
accept Push Them Back!##49327 |goto 27.20,53.86
step
click Wanted: Sandscout Vesarik##287441
|tip Inside the building.
accept WANTED: Sandscout Vesarik##51165 |goto 26.98,52.72
step
talk Issik##128693
|tip Inside the building.
home Sanctuary of the Devoted |goto 26.87,52.22 |q 51772 |future
step
talk Vethiss##128695
fpath Sanctuary of the Devoted |goto 27.65,50.33
stickystart "Burn_Sethrak_Banners"
stickystart "Crush_Sethrak_Cannons"
stickystart "Shatter_Sethrak_Spires"
stickystart "Slay_Faithless"
step
click Sethrak Cage##277910
Rescue Vorrik |q 49334/1 |goto 30.02,51.98
step
click Desert Flute##282498
accept A Lost Flute##50818 |goto 28.97,54.65
step
label "Burn_Sethrak_Banners"
click Sethrak War Banner##277899+
|tip They look like wooden poles with red flags on the ground around this area.
Burn #4# Banners |q 49327/1 |goto 29.38,53.59
step
label "Crush_Sethrak_Cannons"
clicknpc Sethrak Cannon##129076+
|tip They look like stone cannons on the ground around this area.
Crush #2# Cannons |q 49327/2 |goto 29.38,53.59
step
label "Shatter_Sethrak_Spires"
click Sethrak Spire##278583+
|tip They look like large stone towers with lighting striking them on the ground around this area.
Shatter #2# Spires |q 49327/3 |goto 29.38,53.59
step
label "Slay_Faithless"
Kill Faithless enemies around this area
Slay #10# Faithless |q 50641/1 |goto 29.38,53.59
step
talk Zissiah##128696
|tip In front of the building entrance.
turnin Push Them Back!##49327 |goto 27.20,53.85
turnin Break Their Ranks##50641 |goto 27.20,53.85
step
talk Vorrik##129519
|tip Inside the building.
turnin A Powerful Prisoner##49334 |goto 27.62,52.57
accept The Keepers' Keys##49340 |goto 27.62,52.57
step
talk Vorrik##129519
|tip Inside the building.
Choose _<Give Vorrik Sulthis' Stone.>_
Watch the dialogue
Speak to Vorrik |q 49340/1 |goto 27.62,52.57
step
talk Vorrik##128694
|tip Upstairs inside the building.
turnin The Keepers' Keys##49340 |goto 27.12,52.56
accept The Missing Key##49662 |goto 27.12,52.56
step
talk Jenoh##135400
turnin A Lost Flute##50818 |goto 29.52,59.35
accept A Charming Tail##50817 |goto 29.52,59.35
accept Just a Nip##50979 |goto 29.52,59.35
stickystart "Collect_Atrivax_Gel_Samples"
step
use the Charming Flute##158883
|tip Use it near Strand Cobra Hatchlings around this area.
|tip They look like small friendly snakes on the ground around this area.
Send #15# Strand Cobras Home |q 50817/1 |goto 29.14,63.02
step
label "Collect_Atrivax_Gel_Samples"
Kill Atrivax enemies around this area
collect 10 Atrivax Gel Sample##159675 |q 50979/1 |goto 29.14,63.02
step
talk Jenoh##135400
turnin A Charming Tail##50817 |goto 29.52,59.35
turnin Just a Nip##50979 |goto 29.52,59.35
accept My Hungry Neighbor##50980 |goto 29.52,59.35
step
kill Territorial Hydra##140050 |q 50980/1 |goto 27.92,61.20
|tip On top of the mountain.
step
talk Jenoh##135400
turnin My Hungry Neighbor##50980 |goto 29.52,59.35
accept Keep It Down!##50834 |goto 29.52,59.35
step
talk Merd Archfeld##135179
|tip On the beach, next to the water.
turnin Keep It Down!##50834 |goto 26.20,73.65
accept Calldown: Cleaner##50771 |goto 26.20,73.65
accept Get Us Some Beach##50775 |goto 26.20,73.65
accept Power Problems##52129 |goto 26.20,73.65
stickystart "Collect_Piles_Of_Sand"
step
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 27.72,74.72 |count 1
step
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 27.21,71.43 |count 2
step
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 25.44,70.24 |count 3
step
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 24.20,66.49 |count 4
step
use the Target Painter##158725
|tip Use it on the Dense Stone.
Watch the dialogue
Identify the Target |q 50771/1 |goto 25.42,68.07 |count 5
step
label "Collect_Piles_Of_Sand"
kill Siroccan##135006+
collect 20 Pile of Sand##158707 |q 50775/1 |goto 25.68,67.24
step
Follow the path up |goto 27.68,67.13 < 20 |only if walking
talk Rozzy##140046
|tip She walks around this area.
turnin Power Problems##52129 |goto 28.45,68.59
accept Charging the Batteries##51991 |goto 28.45,68.59
step
clicknpc Lectric Frequency Modulator##143377
Use the Lectric Frequency Modulator |q 51991/1 |goto 28.66,68.69
step
Kill enemies around this area
|tip Roll over them to kill them.
Feed Lashers to the Ranishu |q 51991/2 |goto 29.45,67.68
step
talk Rozzy##140046
|tip She walks around this area.
turnin Charging the Batteries##51991 |goto 28.44,68.60
step
talk Merd Archfeld##135179
turnin Calldown: Cleaner##50771 |goto 26.20,73.65
turnin Get Us Some Beach##50775 |goto 26.20,73.65
step
talk Nerin Solvis##135180
accept Awakened Elements##50812 |goto 26.19,73.70
step
Investigate the Disturbance to the North |q 50812/1 |goto 25.57,64.62
step
kill Enraged Azermental##135349 |q 50812/2 |goto 25.79,64.85
step
talk Nerin Solvis##135180
|tip On the beach, next to the water.
turnin Awakened Elements##50812 |goto 26.19,73.70
step
Cross the bridge |goto 30.64,50.20 < 30 |only if walking and not subzone("Forward Camp")
talk Izarn##128691
accept Building Our Arsenal##49333 |goto 32.31,48.39
accept Skycaller Slaughter##49335 |goto 32.31,48.39
step
talk Seriah##134611
accept Risky Rescue##50656 |goto 32.68,48.44
stickystart "Collect_Sethrak_Weapons"
stickystart "Kill_Faithless_Skycallers"
step
click Sethrak Cage##273680+
|tip They look like metal cages on the ground around this area.
Rescue #4# Temple Defenders |q 50656/1 |goto 36.65,47.58
step
label "Collect_Sethrak_Weapons"
click Sethrak Weapon##278190
|tip They look weapons on racks on the ground around this area.
collect 20 Sethrak Weapon##153556 |q 49333/1 |goto 36.65,47.58
step
label "Kill_Faithless_Skycallers"
kill 6 Faithless Skycaller##128678 |q 49335/1 |goto 36.65,47.58
step
talk Izarn##128691
turnin Building Our Arsenal##49333 |goto 32.31,48.39
turnin Skycaller Slaughter##49335 |goto 32.31,48.39
step
talk Seriah##134611
turnin Risky Rescue##50656 |goto 32.68,48.44
step
kill Sandscout Vesarik##136596 |q 51165/1 |goto 42.34,46.09
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
|tip If you have trouble, try to find help, or skip the quest.
step
talk Vorrik##137970
turnin The Missing Key##49662 |goto 42.92,35.75
accept Infiltrating the Empire##50745 |goto 42.92,35.75
step
Run up the stairs and cross the bridge |goto 42.91,33.89 < 20 |only if walking
talk Lugo the Windrider##135385
fpath Vorrik's Sanctum |goto 47.30,35.23
step
Enter the cave |goto 47.95,35.57 < 10 |walk
talk Vorrik##135172
|tip Inside the cave.
turnin Infiltrating the Empire##50745 |goto 47.96,36.39
accept Allies in Anarchy##49664 |goto 47.96,36.39
step
talk Meerah##135355
|tip Inside the cave.
accept The Little Ones##49667 |goto 47.99,36.51
step
talk Zareen##134613
|tip He walks around this area.
|tip Inside the building.
turnin WANTED: Sandscout Vesarik##51165 |goto 26.79,52.86
step
talk Nisha##135090
turnin Allies in Anarchy##49664 |goto 46.14,33.22
accept Ready to Riot##49665 |goto 46.14,33.22
accept Make Them Fear Us##49666 |goto 46.14,33.22
stickystart "Plant_Vulpera_Banners"
stickystart "Arm_Slaves"
step
kill Appraiser Versik##130396 |q 49667/1 |goto 48.47,32.19
step
label "Plant_Vulpera_Banners"
Kill Faithless enemies around this area
use the Vulpera Banners##158884
|tip Use it near their corpses.
Plant #12# Vulpera Banners |q 49666/1 |goto 47.60,32.31
step
label "Arm_Slaves"
click Faithless Weapon Rack##287006+
|tip They look like wooden racks with weapons on them on the ground around this area.
collect Faithless Scimitar##159470+ |n
talk Vulpera Slave##130342+
|tip They look like friendly fox NPCs around this area.
Choose _<Free the slave and give them a weapon to fight with.>_
|tip You must have a Faithless Scimitar to be able to arm them.
Arm #8# Slaves |q 49665/1 |goto 47.60,32.31
step
Follow the path up |goto 47.17,33.86 < 20 |only if walking and subzone("Crater of Conquerors")
talk Nisha##135090
turnin Ready to Riot##49665 |goto 46.15,33.22
turnin Make Them Fear Us##49666 |goto 46.15,33.22
accept Crater Conquered##50746 |goto 46.15,33.22
step
talk Kiro##137981
accept Light Up the Gulch##49668 |goto 46.10,33.26
step
Follow the path up and enter the cave |goto 47.95,35.61 < 10 |walk |only if not (subzone("Vorrik's Sanctum") and _G.IsIndoors())
talk Vorrik##135172
|tip Inside the cave.
turnin Crater Conquered##50746 |goto 47.96,36.39
accept Diplomacy and Dominance##49141 |goto 47.96,36.39
accept Don't Drop It... Yet##50748 |goto 47.96,36.39
step
talk Meerah##135355
|tip Inside the cave.
turnin The Little Ones##49667 |goto 47.99,36.51
stickystart "Collect_Volatile_Lightning_Bombs"
step
Leave the cave |goto 47.94,35.55 < 10 |walk |only if subzone("Vorrik's Sanctum") and _G.IsIndoors()
Follow the path up the mountain |goto 49.62,35.27 < 20 |only if walking and not subzone("Crackling Ridge")
click Suppression Spire##290707+
|tip They look like tall stone towers on the ground around this area.
|tip Up on the mountain.
Drain #6# Suppression Spires |q 49141/1 |goto 47.80,36.98
step
label "Collect_Volatile_Lightning_Bombs"
Kill Ridge enemies around this area
|tip Up on the mountain. |notinsticky
collect 6 Volatile Lightning Bomb##154896 |q 50748/1 |goto 47.80,36.98
step
Follow the path up |goto 46.36,37.59 < 15 |only if walking
click Faithless Trapper's Spear##278447
|tip At the top of the mountain.
accept Forced Grounding##49002 |goto 47.10,38.71
step
use the Faithless Trapper's Spear##154893
|tip Use it on Hrillik's Pterrordax.
|tip He's flying in the air nearby.
|tip He will appear on your minimap as a yellow dot.
kill Hrillik's Pterrordax##129856
kill Fangcaller Hrillik##129848 |q 49002/1 |goto 47.33,38.54
step
talk Vorrik##135110
turnin Diplomacy and Dominance##49141 |goto 47.20,39.15
turnin Don't Drop It... Yet##50748 |goto 47.20,39.15
accept Vengeance From Above##49003 |goto 47.20,39.15
step
talk Rakjan the Unbroken##129763
turnin Forced Grounding##49002 |goto 47.16,39.34
step
clicknpc Rakjan the Unbroken##138547
Mount Rakjan the Unbroken |q 49003/1 |goto 47.16,39.34
step
Kill Faithless enemies around this area
|tip Use the "Lightning Bomb" ability on your action bar.
|tip They are on the ground around this area as you fly.
Slay #60# Faithless |q 49003/2 |goto 48.13,32.14
step
Destroy the Spire Barrier |q 49003/3 |goto 51.95,32.61
|tip Use the "Vorrik's Barrage" ability on your action bar.
step
talk Vorrik##135111
turnin Vengeance From Above##49003 |goto 51.95,28.69
accept Infuriating the Emperor##50750 |goto 51.95,28.69
accept Relics of Sethraliss##50752 |goto 51.95,28.69
stickystart "Purge_Faithless"
step
click Rebirth Creed##282451
collect Rebirth Creed##158722 |q 50752/1 |goto 49.89,28.50
step
click Skull of the First Skycaller##290755
collect Skull of the First Skycaller##160526 |q 50752/2 |goto 50.25,26.69
step
click Sethraliss Sight Stone##290756
collect Sethraliss Sight Stone##160527 |q 50752/3 |goto 48.24,26.15
step
click Blood of the Fallen Loa##290757
collect Blood of the Fallen Loa##160528 |q 50752/4 |goto 49.56,24.36
step
label "Purge_Faithless"
Kill Faithless enemies around this area
|tip Run near them.
|tip Run over the Lightning Orbs that appear on the ground to recharge the ability bar.
Purge #75# Faithless |q 50750/1 |goto 49.66,25.28
step
talk Vorrik##135111
turnin Infuriating the Emperor##50750 |goto 51.94,28.69
turnin Relics of Sethraliss##50752 |goto 51.94,28.69
step
Watch the dialogue
talk Vorrik##135111
accept The Fall of Emperor Korthek##50550 |goto 51.94,28.69
step
talk Vorrik##138411
Tell him _"Vorrik, I'm ready to face Emperor Korthek."_
Watch the dialogue
Speak with Vorrik |q 50550/1 |goto 51.95,28.69
step
kill Emperor Korthek##134601 |q 50550/2 |goto 51.96,27.25
|tip Your allies will help you fight.
step
Watch the dialogue
talk Vorrik##135390
|tip He runs to this location.
turnin The Fall of Emperor Korthek##50550 |goto 51.98,27.72
accept Sanctuary Under Siege##50751 |goto 51.98,27.72
step
use Kiro's Torch##158896
|tip Jump down carefully.
|tip Use it on the Jars of Oil.
Burn the West Slave Market |q 49668/1 |goto 50.75,32.84
step
use Kiro's Torch##158896
|tip Use it on the Jars of Oil.
Burn the Central Slave Market |q 49668/2 |goto 52.32,33.05
step
use Kiro's Torch##158896
|tip Use it on the Jars of Oil.
Burn the East Slave Market |q 49668/3 |goto 53.46,33.22
step
click Tattered Note##278368
accept Tattered Note##49437 |goto 54.36,34.27
step
talk Kiro##135099
turnin Light Up the Gulch##49668 |goto 55.43,35.03
accept Unleash the Beasts##49669 |goto 55.43,35.03
accept Untame Slaughter##50757 |goto 55.43,35.03
stickystart "Slay_Faithless_3"
step
kill Shath'kar##129754 |q 49437/1 |goto 54.46,33.16
|tip He walks around this area.
|tip Up on the ledge.
step
Enter the cave |goto 55.84,32.17 < 15 |walk
kill Crawg Tamer Traskniss##135042 |q 49669/1 |goto 55.29,30.75
|tip Inside the cave.
step
label "Slay_Faithless_3"
Kill Faithless enemies around this area
Slay #8# Faithless |q 50757/1 |goto 56.26,33.81
step
talk Kiro##135099
turnin Unleash the Beasts##49669 |goto 55.43,35.03
turnin Untame Slaughter##50757 |goto 55.43,35.03
accept Free Ride##50749 |goto 55.43,35.03
step
clicknpc Battle Krolusk##135998
Steal the Battle Krolusk |q 50749/1 |goto 55.24,35.22
step
Follow the path |goto 59.17,35.70 < 30 |only if walking and not subzone("Tortaka Refuge")
talk Torka##134098
turnin The Tortaka Tribe##51772 |goto 62.03,22.33
accept They Came From The Sea##47577 |goto 62.03,22.33
accept Hidden Motives##47570 |goto 62.03,22.33
step
talk Churka##134128
accept Crab Trapping##47943 |goto 61.98,22.15
step
talk Scroll of Flight##135387
fpath Tortaka Refuge |goto 61.90,21.66
step
talk Tuka##138917
home Tortaka Refuge |goto 61.50,20.54
stickystart "Trap_Clampclaw_Clackers"
stickystart "Interrogate_Spirits"
step
kill Overseer Zarjish##134250
collect Invasion Plans##157866 |q 47570/1 |goto 64.57,22.94
step
label "Trap_Clampclaw_Clackers"
use the Crab Trap##151763
|tip Use it on Clampclaw Clackers around this area.
|tip They look like red crabs on the ground around this area.
Trap #8# Clampclaw Clackers |q 47943/1 |goto 64.41,24.14
step
label "Interrogate_Spirits"
Kill Stormcoil enemies around this area
use the Soulcaller Scroll##160585
|tip Use it on their corpses.
Interrogate #8# Spirits |q 47577/1 |goto 64.41,24.14
step
Follow the path up |goto 62.13,23.37 < 15 |only if walking and subzone("Darkwood Shoal")
talk Churka##134128
turnin Crab Trapping##47943 |goto 61.98,22.15
step
talk Torka##134098
turnin Hidden Motives##47570 |goto 62.03,22.33
turnin They Came From The Sea##47577 |goto 62.03,22.33
accept The Elder's Wisdom##47571 |goto 62.03,22.33
step
talk Elder Kuppaka##123063
Tell him _"Torka asked me to deliver this to you."_
Deliver the Plans |q 47571/1 |goto 61.60,20.54
step
talk Elder Kuppaka##123063
turnin The Elder's Wisdom##47571 |goto 61.60,20.54
accept The Ruined Temple##47965 |goto 61.60,20.54
step
Follow the path |goto 59.62,19.22 < 30 |only if walking and not (subzone("Terrace of the Fang") or subzone("Temple of Kimbul"))
talk Teekcha##134133
|tip Up the stairs on the temple.
turnin The Ruined Temple##47965 |goto 58.55,11.82
accept Blessing of Kimbul##47581 |goto 58.55,11.82
step
talk Tulu##134134
|tip Up the stairs on the temple.
accept Jungleweb Infestation##47573 |goto 58.50,11.73
accept All Webbed Up##47574 |goto 58.50,11.73
stickystart "Squish_Hatchlings"
stickystart "Free_Tortakas"
stickystart "Kill_Jungleweb_Crawlers"
step
click Statue of Eraka No Kimbul##281536
|tip Inside the building.
Tell it _"I seek the loa's blessing."_
Tell it _"Act with courage in all matters."_
Tell it _"An indomitable will."_
Tell it _"A life lived with honor."_
Tell it _"They see that they belong to nature."_
Complete the Trial of Wisdom |q 47581/1 |goto 61.14,15.14
step
clicknpc Ring of Tides##138797
|tip Inside the building.
collect Ring of Tides##160657 |q 47581/2 |goto 61.15,15.16
step
label "Squish_Hatchlings"
Squish #30# Hatchlings |q 47573/2 |goto 60.76,14.54
|tip They look like small baby spiders on the ground around this area.
|tip Walk over them to squish them.
step
label "Free_Tortakas"
kill Jungleweb Victim##137167+
|tip They look like squirming white cocoons on the ground around this area.
|tip You may be attacked.
Free #8# Tortakas |q 47574/1 |goto 60.76,14.54
step
label "Kill_Jungleweb_Crawlers"
kill 6 Jungleweb Crawler##123813 |q 47573/1 |goto 60.76,14.54
step
talk Tulu##134134
|tip Up the stairs on the temple.
turnin Jungleweb Infestation##47573 |goto 58.50,11.73
turnin All Webbed Up##47574 |goto 58.50,11.73
step
talk Teekcha##134133
|tip Up the stairs on the temple.
turnin Blessing of Kimbul##47581 |goto 58.55,11.82
accept Offering for the Loa##47928 |goto 58.55,11.82
step
Enter the building |goto 57.45,11.57 < 15 |walk
talk Kimbul##123052
|tip Inside the building.
Tell him _"Great loa, this offering is from the Tortaka tribe."_
Deliver the Offering |q 47928/1 |goto 56.57,10.24
step
talk Kimbul##123052
|tip Inside the building.
turnin Offering for the Loa##47928 |goto 56.57,10.24
accept The Curse of Mepjila##47580 |goto 56.57,10.24
step
use the Spirit Mask##151826
Wear the Spirit Mask |q 47580/1
step
kill Summoner Mepjila##131633 |q 47580/2 |goto 60.89,13.19
step
Return to the Realm of the Living |nobuff 135462 |goto 57.55,11.73 |q 47580
|tip Up the stairs on the temple.
|tip At the entrance of the building.
step
talk Kimbul##123052
|tip Inside the building.
turnin The Curse of Mepjila##47580 |goto 56.57,10.24
accept Wrath of the Tiger##47576 |goto 56.57,10.24
step
talk Kimbul##123052
|tip Inside the building.
Tell him _"Send me to the battlefield."_
Speak with Kimbul |q 47576/1 |goto 56.57,10.24
step
Watch the dialogue
Reach the Battlefield |goto 61.89,13.15 < 30 |c |q 47576 |notravel
step
Kill Stormcoil enemies around this area
|tip Use the abilities on your action bar.
Slay #45# Naga |q 47576/2 |goto 62.10,14.35
step
Watch the dialogue
Return to the Temple of Kimbul |goto 56.66,10.38 < 30 |c |q 47576 |notravel
step
talk Kimbul##123052
|tip Inside the building.
turnin Wrath of the Tiger##47576 |goto 56.57,10.24
accept Mark of the Loa##47578 |goto 56.57,10.24
step
click Altar of Kimbul##292535
|tip Inside the building.
Receive the Blessing |q 47578/1 |goto 56.27,9.80
step
talk Kimbul##123052
|tip Inside the building.
turnin Mark of the Loa##47578 |goto 56.57,10.24
step
Enter the cave |goto 47.94,35.59 < 10 |walk |only if not (subzone("Vorrik's Sanctum") and _G.IsIndoors())
Watch the dialogue
talk Kiro##137982
|tip He runs to this location.
|tip Inside the cave.
turnin Free Ride##50749 |goto 48.02,36.44
step
talk Meerah##135355
|tip Inside the cave.
turnin Tattered Note##49437 |goto 47.98,36.51
step
talk Vorrik##129588
|tip Upstairs inside the building.
turnin Sanctuary Under Siege##50751 |goto 27.10,52.56
accept Atul'Aman##50617 |goto 27.10,52.56
step
talk Vorrik##135625
|tip Near the entrance of the cave.
turnin Atul'Aman##50617 |goto 43.05,68.21
accept The Abandoned Passage##50904 |goto 43.05,68.21
step
talk Vorrik##135625
Tell him _"I'm ready. Let's go find the others."_
Speak with Vorrik |q 50904/1 |goto 43.05,68.21
step
Enter the cave |goto Vol'dun/1 30.77,82.26 < 10 |walk |only if not subzone("Fetid Crypt")
clicknpc Entangling Tendrils##135695
|tip Inside the cave.
Find Kaja |q 50904/2 |goto Vol'dun/1 42.87,91.97
step
Follow the path |goto 46.61,79.79 < 10 |walk
clicknpc Entangling Tendrils##135695
|tip Inside the cave.
Find Rakera |q 50904/3 |goto 51.65,67.31
step
talk Warguard Rakera##134803
|tip Inside the cave.
turnin The Abandoned Passage##50904 |goto 55.62,36.28
accept Defeat Jakra'zet##50702 |goto 55.62,36.28
step
Watch the dialogue
kill General Jakra'zet##134846 |q 50702/1 |goto 67.86,35.89
|tip Inside the cave.
|tip Your allies will help you fight.
step
Watch the dialogue
talk Warguard Rakera##135133
|tip Upstairs inside the building.
turnin Defeat Jakra'zet##50702 |goto Vol'dun/0 27.09,52.64
accept Informing the Horde##50703 |goto 27.09,52.64 |or
'|accept Informing the Horde##52023 |goto 27.09,52.64 |or
'|accept Informing the Horde##52024 |goto 27.09,52.64 |or
step
talk Vorrik##129588
|tip Upstairs inside the building.
accept Temple of Sethraliss: Avatar of the Loa##50551 |goto 27.09,52.56
step
Enter the cave |goto 43.08,60.82 < 10 |walk |only if not subzone("Goldtusk Inn")
talk Rhan'ka##122723
|tip Inside the cave.
turnin A Strange Delivery##48327 |goto 43.51,60.21
accept Meet the Goldtusk Gang##47497 |goto 43.51,60.21
step
click Volni##271744
|tip Inside the cave.
Ask her _"Umm... Hello?"_
Meet Volni |q 47497/2 |goto 43.38,60.15
step
click Man'zul##271792
|tip Inside the cave.
Tell him _"Your eyepatch is very fearsome."_
Meet Man'zul |q 47497/3 |goto 43.64,59.93
step
click Wanted: Cobra Excursion Participants##287442
|tip Inside the cave.
accept WANTED: Cobra Excursion Participants##51164 |goto 43.65,59.95
step
click Grenja##271793
|tip Inside the cave.
Tell her _"Well met!"_
Meet Grenja |q 47497/1 |goto 43.65,60.34
step
talk Rhan'ka##122723
|tip Inside the cave.
turnin Meet the Goldtusk Gang##47497 |goto 43.51,60.21
accept Rhan'ka's Lost Friend##47498 |goto 43.51,60.21
accept Dirty Work for Dirty Drinks##47501 |goto 43.51,60.21
step
kill Sevriss##136593 |q 51164/1 |goto 39.90,59.16
|tip It looks like a large orange and white snake that slithers around this area.
|tip It will appear on your minimap as a yellow dot.
|tip If you have trouble, try to find help, or skip the quest.
stickystart "Collect_Caustic_Scorpid_Blood"
step
Enter the cave up on the mountain |goto 36.69,50.77 < 10 |walk
click Zulsan##271794
|tip Inside the cave.
collect Zulsan's Cracked Skull##150916|q 47498/1 |goto 36.92,50.45
step
label "Collect_Caustic_Scorpid_Blood"
Kill Deathsnap enemies around this area
collect 20 Caustic Scorpid Blood##150923 |q 47501/1 |goto 36.43,51.42
step
talk Rhan'ka##138749
turnin Rhan'ka's Lost Friend##47498 |goto 37.41,51.10
turnin Dirty Work for Dirty Drinks##47501 |goto 37.41,51.10
accept The Great Cranium Caper##47502 |goto 37.41,51.10
accept Gozda'kun the Slaver##47503 |goto 37.41,51.10
accept The Best Honey In Vol'dun##51717 |goto 37.41,51.10
step
talk Rikati##133833
turnin The Best Honey In Vol'dun##51717 |goto 40.45,55.35
accept Harvesting "Honey"##51718 |goto 40.45,55.35
step
Kill Bilewing enemies around this area
collect 12 Bilewing Stinger##157541 |q 51718/1 |goto 41.44,54.85
step
talk Rikati##133833
turnin Harvesting "Honey"##51718 |goto 40.45,55.35
accept Unconventional Aromatics##50328 |goto 40.45,55.35
step
click Volni##271795
collect Volni's Skull##151219 |q 47502/2 |goto 46.46,57.87
step
click Grenja##271793
collect Grenja's Skull##151220 |q 47502/3 |goto 47.39,58.09
step
kill Gozda'kun the Slaver##133924 |q 47503/1 |goto 47.33,58.81
step
click Man'zul##271792
collect Man'zul's Skull##151218 |q 47502/1 |goto 47.09,59.74
step
Enter the cave |goto 43.08,60.82 < 10 |walk |only if not subzone("Goldtusk Inn")
talk Rhan'ka##122723
|tip Inside the cave.
turnin The Great Cranium Caper##47502 |goto 43.70,60.24
turnin Gozda'kun the Slaver##47503 |goto 43.70,60.24
turnin Unconventional Aromatics##50328 |goto 43.70,60.24
step
Watch the dialogue
talk Rhan'ka##122723
|tip He walks to this location.
|tip Inside the cave.
turnin WANTED: Cobra Excursion Participants##51164 |goto 43.70,60.24
accept Powerful Spirits##47638 |goto 43.70,60.24
step
click Boiled Scorpid Blood##271869
|tip Inside the cave.
Drink the Boiled Scorpid Blood |q 47638/1 |goto 43.51,60.43
step
Watch the dialogue
talk Rhan'ka##122723
|tip He walks to this location.
|tip Inside the cave.
turnin Powerful Spirits##47638 |goto 43.51,60.21
step
talk Man'zul##123730
|tip Inside the cave.
accept Creative Marketing##48321 |goto 43.58,59.88
step
talk Zulsan##122725
|tip Inside the cave.
accept Restocking the Buffet##47564 |goto 43.71,60.22
step
talk Volni##123729
accept The Best Kill is Overkill##48320 |goto 42.75,61.07
stickystart "Collect_Whistlebloom_Juicy_Fruit"
stickystart "Slay_Whistlebloom_Predators"
step
kill Bloodcrest##133853
|tip He will jump down onto you.
collect Bloodcrest's Giant Rib##153593 |q 48321/1 |goto 42.52,63.69
step
label "Collect_Whistlebloom_Juicy_Fruit"
click Whistlebloom Juicy Fruit##278242+
|tip They look like green plants with purple bulbs on them on the ground around this area.
collect 10 Whistlebloom Juicy Fruit##151022 |q 47564/1 |goto 42.45,62.35
step
label "Slay_Whistlebloom_Predators"
Kill Whistlebloom enemies around this area
Slay #15# Whistlebloom Predators |q 48320/1 |goto 42.45,62.35
step
talk Volni##123729
turnin The Best Kill is Overkill##48320 |goto 42.75,61.07
step
talk Volni##129365
fpath Goldtusk Inn |goto 42.75,61.07
step
Enter the cave |goto 43.08,60.82 < 10 |walk |only if not subzone("Goldtusk Inn")
talk Zulsan##122725
|tip Inside the cave.
turnin Restocking the Buffet##47564 |goto 43.71,60.22
step
talk Man'zul##123730
|tip Inside the cave.
turnin Creative Marketing##48321 |goto 43.58,59.88
step
talk Rhan'ka##122723
|tip Inside the cave.
accept A Goldtusk Greeting##48322 |goto 43.51,60.21
step
clicknpc Bladeguard Tarkaj##129319
Resuscitate Bladeguard Tarkaj |q 48322/1 |goto 43.17,61.51
step
Enter the cave |goto 43.08,60.82 < 10 |walk |only if not subzone("Goldtusk Inn")
click Oasis Water##278276
|tip Inside the cave.
Hydrate Bladeguard Tarkaj |q 48322/2 |goto 43.50,60.41
step
click Sandy Tortillas##278277
|tip Inside the cave.
Feed Bladeguard Tarkaj |q 48322/4 |goto 43.39,60.09
step
click Box of Slightly Used Bandages##278278
|tip Inside the cave.
Bandage Bladeguard Tarkaj |q 48322/3 |goto 43.67,60.08
step
click Very Uncomfortable Bed##278279
|tip Inside the cave.
Show Bladeguard Tarkaj His Bed |q 48322/5 |goto 43.41,59.96
step
talk Rhan'ka##122723
|tip Inside the cave.
turnin A Goldtusk Greeting##48322 |goto 43.51,60.21
accept Ruins-Level Marketing##48840 |goto 43.51,60.21
step
talk Kenzou##129453
turnin Ruins-Level Marketing##48840 |goto 45.39,46.18
accept Inconvenient Spirits##49001 |goto 45.39,46.18
step
talk Tacha##129450
accept They've Got Golems##48334 |goto 45.39,46.15
step
talk Omi##129451
accept Ranishu Are Resources##48332 |goto 45.37,46.16
stickystart "Collect_Ranishu_Stomachs"
stickystart "Kill_Tortured_Spirits"
step
kill Malfunctioning Golem##138923
|tip It walks around this area.
Reveal the Golem Power Source |q 48334/1 |goto 47.05,50.54
step
label "Collect_Ranishu_Stomachs"
Kill Ranishu enemies around this area
collect 25 Ranishu Stomach##154713 |q 48332/1 |goto 46.66,49.27
step
label "Kill_Tortured_Spirits"
kill 8 Tortured Spirit##129672 |q 49001/1 |goto 46.66,49.27
step
talk Kenzou##129453
turnin Inconvenient Spirits##49001 |goto 45.39,46.18
step
talk Tacha##129450
turnin They've Got Golems##48334 |goto 45.39,46.15
step
talk Omi##129451
turnin Ranishu Are Resources##48332 |goto 45.37,46.16
accept An Army's Arsenal##49139 |goto 45.37,46.16
step
talk Tacha##129450
accept Siphoning Souls##48331 |goto 45.39,46.15
step
talk Kenzou##129453
accept The Strongest Rope in Vol'dun##48335 |goto 45.39,46.18
stickystart "Siphon_Golem_Souls"
stickystart "Collect_Sandspinner_Silk"
step
kill Specter of Mugabu##129506 |q 49139/2 |goto 46.11,42.69
|tip Inside the building.
step
kill Specter of Jam'jen##129507 |q 49139/1 |goto 48.33,44.41
|tip Inside the building.
step
label "Siphon_Golem_Souls"
use the Salvaged Soulcatcher Totem##154051
kill Soul-Trapped Guardian##129436+
|tip Kill them near the totems you place on the ground.
Siphon #5# Golem Souls |q 48331/1 |goto 47.73,44.41
step
label "Collect_Sandspinner_Silk"
Kill Sandspinner enemies around this area
collect 6 Sandspinner Silk##153699 |q 48335/1 |goto 47.73,44.41
step
talk Kenzou##129453
turnin The Strongest Rope in Vol'dun##48335 |goto 45.39,46.18
step
talk Tacha##129450
turnin Siphoning Souls##48331 |goto 45.39,46.15
step
talk Omi##129451
turnin An Army's Arsenal##49139 |goto 45.37,46.15
accept Zandalari Treasure Trove##48330 |goto 45.37,46.15
step
Watch the dialogue
|tip Inside the building.
kill Zak'rajan the Undying##129434 |q 48330/1 |goto 47.27,41.67
|tip Your allies will help you fight.
step
talk Omi##129451
turnin Zandalari Treasure Trove##48330 |goto 45.37,46.15
step
talk B'wizati##127664
|tip Run up the stairs.
turnin Fond Farewells##49040 |goto Dazar'alor/0 40.35,19.10 |only if haveq(49040) or completedq(49040)
turnin Fond Farewells##49731 |goto Dazar'alor/0 40.35,19.10 |only if haveq(49731) or completedq(49731)
step
Enter the building |goto 49.96,42.12 < 15 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin Informing the Horde##50703 |goto Dazar'alor/2 41.38,72.34 |only if haveq(50703) or completedq(50703)
turnin Informing the Horde##52023 |goto Dazar'alor/2 41.38,72.34 |only if haveq(52023) or completedq(52023)
turnin Informing the Horde##52024 |goto Dazar'alor/2 41.38,72.34 |only if haveq(52024) or completedq(52024)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Mechagon Island",{
author="support@zygorguides.com",
description="\nThis guide will walk you through establishing a foothold with the Rustbolt Resistance and fortifying its position.",
condition_suggested=function() return level >= 50 end,
condition_end=function() return completedq(56305) end,
},[[
step
Complete the "Save a Friend" Quest |condition completedq(55500)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
talk Disgruntled Laborer##156187
accept Rumors of Mechagon##57024 |goto Nazjatar/0 48.44,60.64
step
talk Gazlowe##152522
|tip Outside the building.
turnin Rumors of Mechagon##57024 |goto Dazar'alor/0 53.08,43.27
accept The Legend of Mechagon##55646 |goto 53.08,43.27
step
Follow the path |goto Tiragarde Sound/0 68.78,57.39 < 30 |only if walking
Continue following the path |goto 65.97,62.27 < 15 |only if walking
talk Gazlowe##152578
turnin The Legend of Mechagon##55646 |goto 65.63,64.61
accept A Quick Ear Hustle##55647 |goto 65.63,64.61
step
click Fake Rock
Hide Behind the Fake Rock |q 55647/1 |goto 65.62,64.62
step
Watch the dialogue
Spy on the Alliance |q 55647/2 |goto 65.62,64.62
step
talk Gazlowe##152578
turnin A Quick Ear Hustle##55647 |goto 65.63,64.60
accept This is Our Vault Now##55648 |goto 65.63,64.60
step
click Vault Door |goto 65.58,65.14
Watch the dialogue
Secure the Vault |q 55648/1 |goto 65.82,66.36
step
talk Gazlowe##149809
|tip Inside the vault.
turnin This is Our Vault Now##55648 |goto 65.82,66.36
accept Let's Get It Started##55630 |goto 65.82,66.36
step
click Gear Controls
|tip Inside the vault.
Repair the Gears |q 55630/1 |goto 65.66,66.51
step
click Electrode
|tip Inside the vault.
Activate Electrode |q 55630/2 |goto 66.02,65.83
step
click Alpha Wire
|tip Inside the vault.
Grab the Alpha Wire |havebuff 136101 |goto 66.04,65.84 |q 55630
step
click Alpha Pylon
|tip Inside the vault.
Attach the Alpha Wire to Alpha Pylon |q 55630/3 |goto 66.14,66.25
step
click Beta Wire
|tip Inside the vault.
Grab the Beta Wire |havebuff 136101 |goto 66.00,65.81 |q 55630
step
click Beta Pylon
|tip Inside the vault.
Attach the Beta Wire to Beta Pylon |q 55630/4 |goto 65.92,66.45
step
talk Gazlowe##149809
|tip Inside the vault.
turnin Let's Get It Started##55630 |goto 65.82,66.35
accept You Must be This Height##55632 |goto 65.82,66.35
step
talk Gazlowe##149809
|tip Inside the vault.
Tell him _"I'm ready. Activate the device."_
Speak with Gazlowe |q 55632/1 |goto 65.82,66.35
step
Watch the dialogue
Discover the Purpose of the Device |q 55632/2
step
click Tri-dimensional Coordinates##325907
|tip Inside the vault.
collect Tri-dimensional Coordinates##168218 |q 55632/3 |goto 65.89,66.46
step
clicknpc Gazlowe##152652
|tip Inside the vault.
turnin You Must be This Height##55632 |goto 65.90,66.41
accept Machinations for Mechagon##55649 |goto 65.90,66.41
step
clicknpc Greasemonkey Skysneaker##152665
Ride the Greasemonkey Skysneaker |q 55649/1 |goto 65.21,64.52
step
Watch the dialogue
talk Gazlowe##152504
turnin Machinations for Mechagon##55649 |goto Dazar'alor/0 42.06,87.84
step
talk Skaggit##152505
accept Only the Best Will Do##55650 |goto 42.19,87.83
step
Watch the dialogue
talk Shuga Blastcaps##131840
Tell her _"Gazlowe needs supplies for a big expedition to Mechagon."_
Order Supplies |q 55650/1 |goto 45.14,40.59
step
talk Ricket##152748
Tell her _"Gazlowe found Mechagon!"_
Recruit Ricket |q 55650/3 |goto 42.40,25.71
step
talk Greasemonkey Union Rep##152766
|tip Inside the building.
Tell her _"Gazlowe's got a new job for the crew."_
Complete the Union Negotiations |q 55650/2 |goto 35.86,16.63
step
talk Skaggit##152505
turnin Only the Best Will Do##55650 |goto 42.20,87.84
step
talk Gazlowe##152504
accept To Mechagon!##55651 |goto 42.06,87.84
step
talk Captain Krooz##152506
Tell her _"We're ready. Take us to Mechagon!"_
Talk to Captain Krooz |q 55651/1 |goto 41.84,87.60
step
Arrive in Mechagon |goto Mechagon Island/0 76.21,14.91 < 1000 |c |noway |q 55651
step
talk Gazlowe##152783
turnin To Mechagon!##55651 |goto 76.17,15.30
accept Prospectus Bay##55652 |goto 76.17,15.30
step
click Goblin Gangplank
Grab a Jetpack |q 55652/1 |goto 76.01,15.42
step
talk Lazz of Leisure##150634
fpath Prospectus Bay |goto 73.48,25.80
step
Watch the dialogue
talk Gazlowe##152845
turnin Prospectus Bay##55652 |goto 73.69,25.94
accept We Come in Peace... and Profit##55685 |goto 73.69,25.94
step
Watch the dialogue
Explore Rustbolt |q 55685/1 |goto 71.09,38.33
step
talk Prince Erazmin##152851
turnin Princely Visit##55685 |goto 71.09,38.32
accept The Resistance Needs YOU!##55729 |goto 71.09,38.32
step
Watch the dialogue
clicknpc Symmetry##153572
Ride with Prince Erazmin |q 55729/1 |goto 71.02,36.99
step
Watch the dialogue
Arrive at Junkwatt Depot |outvehicle |q 55729 |goto 59.09,54.99
step
talk Prince Erazmin##152820
turnin The Resistance Needs YOU!##55729 |goto 59.01,54.89
accept Rescuing the Resistance##55730 |goto 59.01,54.89
accept My Father's Armies##55731 |goto 59.01,54.89
stickystart "Slay_Mechagon_Enemies"
step
click Broken Drill Rig
accept We Can Fix It##55995 |goto 56.71,60.00
stickystart "Collect_Spare_Parts_55995"
step
click Mechagon Suspension Chamber
Rescue the Scientists |q 55730/1 |goto 56.69,63.15
step
click Mechanized Chest##332623
collect Energy Cell##170500 |q 55995/2 |goto 52.49,61.73
step
Run up the ramp |goto 52.72,61.69 < 15 |only if walking
click Mechagon Suspension Chamber
Rescue the Tinkerers |q 55730/2 |goto 52.12,63.37
step
Run up the ramp |goto 52.88,57.47 < 15 |only if walking
click Mechagon Suspension Chamber
Rescue the Engineers |q 55730/3 |goto 53.50,55.79
step
label "Slay_Mechagon_Enemies"
Kill enemies around this area
Slay #12# Mechagon Enemies |q 55731/1 |goto 56.13,59.84
step
label "Collect_Spare_Parts_55995"
Kill enemies around this area
collect 90 Spare Parts##166846 |q 55995 |goto 56.13,59.84
|tip You will need 50 of these later.
step
_Next to you:_
talk Prince Erazmin##153670
turnin Rescuing the Resistance##55730
turnin My Father's Armies##55731
turnin We Can Fix It##55995
accept Drill Rig Construction##55734
step
click Broken Drill Rig
View the Construction |q 55734/1 |goto 56.70,60.02
step
click Broken Drill Rig
|tip Click the "Contribute 10" button on the left five times.
Contribute #40# Spare Parts |q 55734/2 |goto 56.70,60.02
step
click Broken Drill Rig
|tip Click the "Contribute 1" button on the right once.
Contribute an Energy Cell |q 55734/3 |goto 56.70,60.02
step
Construct the Drill Rig |q 55734/4 |goto 56.70,60.02
step
Watch the dialogue
Rescue Pascal-K1N6 |q 55734/5 |goto 56.70,60.02
step
_Next to you:_
talk Prince Erazmin##153670
turnin Drill Rig Construction##55734
accept Send My Father a Message##55096
step
Run up the ramp |goto 57.72,62.35 < 15 |only if walking
click Mechagon Projector
Hack the Mechagon Projector |q 55096/1 |goto 61.15,60.23
step
kill Overcharged Coilbearer##154276
|tip Click the orbs that they drop to damage the Oppression Unit.
Repel the HK-8 Aerial Oppression Unit |q 55096/2 |goto 61.32,60.77
step
Jump down carefully here |goto 60.55,60.50 < 5 |only if walking
Follow the road |goto 65.44,41.90 < 20 |only if walking
talk Prince Erazmin##151947
turnin Send My Father a Message##55096 |goto 71.28,35.87
accept Welcome to the Resistance##55736 |goto 71.28,35.87
step
Tour Rustbolt with Prince Erazmin |q 55736/1 |goto 74.12,37.00
|tip Stand here and wait for him to join you.
step
talk Prince Erazmin##149816
turnin Welcome to the Resistance##55736 |goto 74.12,37.00
step
talk Pascal##152295
accept Junkyard Tinkering and You##55101 |goto 71.21,32.32
step
talk Pascal-K1N6##150359
_<Create 1 Scrap Grenade>_
Craft a Scrap Grenade |q 55101/1 |goto 71.35,32.29
step
talk Pascal##152295
turnin Junkyard Tinkering and You##55101 |goto 71.21,32.32
step
collect 250 Spare Parts##166846 |q 56740 |future
|tip These drop from mobs and chests all over Mechagon Island.
step
talk Pascal##152295
accept S.P.A.R.E. Crates##56740 |goto 71.21,32.32
step
talk Christy Punchcog##152747
accept Upgraded##55708 |goto 69.76,32.34
step
talk Recycler Kerchunk##150573
accept Shop Project##55608 |goto 71.50,38.76
stickystart "Collect_Microcogs"
step
Follow the path |goto 73.47,30.93 < 20 |only if walking
kill Sparkweaver Ohm##152315
collect 1 Multi-Leg Chaindrive##168113 |q 55608/3 |goto 86.54,27.74
step
label "Collect_Microcogs"
Kill enemies around this area
collect 20 Microcogs##168250 |q 55708/1 |goto 85.72,24.95
step
Follow the path |goto 75.28,30.66 < 20 |only if walking
talk Christy Punchcog##152747
turnin Upgraded##55708 |goto 69.76,32.34
accept First One's Free##55707 |goto 69.76,32.34
step
Follow the path |goto 64.65,35.55 < 20 |only if walking
talk Cork Stuttguard##152321
buy 1 Mechanobot Ignition##168115 |q 55608/1 |goto 63.34,42.94
step
Follow the path |goto 70.23,55.93 < 20 |only if walking
Continue up the path |goto 80.26,58.03 < 15 |only if walking
kill Steelplated Hardshell##152319
collect Shellsteel Casing##168114 |q 55608/2 |goto 79.91,55.66
step
Follow the path |goto 75.42,46.62 < 20 |only if walking
talk Recycler Kerchunk##150573
turnin Shop Project##55608 |goto 71.49,38.77
step
Follow the path |goto 66.11,34.80 < 20 |only if walking
Continue following the path |goto 60.16,33.41 < 30 |only if walking
talk Koupal Oilshins##153750
accept Do Not Drink##56328 |goto 59.06,31.62
|only if not completedq(55707)
step
click Stolen Oil##327673+
|tip They look like clusters of oil cans on the ground around this area.
kill Scrapbone Oilspewer##151667+
collect 12 Stolen Oil##168608 |q 56328/1 |goto 58.93,28.42
|only if not completedq(55707)
step
talk Koupal Oilshins##153750
turnin Do Not Drink##56328 |goto 59.06,31.62
|only if not completedq(55707)
step
Enter the cave |goto 53.14,30.71 < 20 |walk
kill Moch'k Eight-Thumbs##152779
|tip Inside the cave.
collect 1 Punchcard Satchel##168252 |q 55707/1 |goto 51.30,28.56
step
talk Christy Punchcog##152747
turnin First One's Free##55707 |goto 69.76,32.34
step
talk Waren Gearhart##150555
accept Collaborative Construction##55153 |goto 73.12,33.36
step
talk Flip Quickcharge##150630
accept Batteries Not Included##55210 |goto 70.84,39.13
step
click Destroyed Security Alarm##322762+
|tip They look like spinning pillars with spotlights on top around this area.
click Destroyed Scraphound##322764+
|tip They look like broken robots on the ground around this area.
click Destroyed Security Turret##322748+
|tip They look like small sparking pillars on the ground around this area.
collect 10 Damaged Energy Cell##167233 |q 55210/1 |goto 71.75,37.07
step
talk Flip Quickcharge##150630
turnin Batteries Not Included##55210 |goto 70.84,39.13
accept Your First Charge is Free!##56320 |goto 70.84,39.13
step
Follow the path |goto 65.90,34.82 < 15 |only if walking
Find Charging Station |q 56320/1 |goto 61.23,37.39
step
Kill enemies around this area
|tip Shoot down Stolen Parts crates hovering above the ground.
collect 25 Spare Parts##166846 |goto 60.53,46.40
step
talk Flux##154534
accept Your First Charge Ain't Free!##56324 |goto 61.24,37.41 |q 56320
step
talk Flux##154534
Buy Access from Flux |q 56320/2 |goto 61.24,37.41
step
Watch the dialogue
click Charging Station
Charge the Energy Cell |q 56320/3 |goto 61.19,37.54
step
talk Pristy Quickcharge##150631
turnin Your First Charge is Free!##56320 |goto 70.74,38.42
step
talk Recycler Kerchunk##150573
|tip You will have to wait until the next daily reset to accept this quest.
accept Right Bot for the Job##54086 |goto 71.50,38.76
step
Deliver #3# Repeating Wrenchbots to Recycler Kerchunk |q 54086/1 |goto 68.12,41.32
|tip Use the "Bot Re-Energizer" ability that appears on-screen near Wrenchbots around this area.
|tip Wrenchbots look like broken robots on the ground around this area.
Deliver the bots here [71.52,38.40]
step
talk Recycler Kerchunk##150573
turnin Right Bot for the Job##54086 |goto 71.50,38.76
step
talk Recycler Kerchunk##150573
|tip You will have to wait until the next daily reset to accept this quest.
accept Ready to Rumble##54929 |goto 71.50,38.76
step
talk Bondo Bigblock##150760
Tell him _"I need a sixteen spring servo-actuator."_
Speak with Bondo Bigblock |q 54929/1 |goto 61.20,39.27
step
kill 15 Pistonhead Recycler##150842 |q 54929/2 |goto 61.82,39.78
|tip Stand here and kill enemies that attack you.
step
kill Knuckles##150940 |q 54929/3 |goto 61.78,39.96
|tip It will attack you.
step
collect Strongbox Key##167176 |q 54929
|tip Loot Knuckles' corpse.
step
click Bondo's Strongbox
collect Sixteen-Servo-Actuator##167175 |q 54929/4 |goto 61.96,39.99
step
talk Recycler Kerchunk##150573
turnin Ready to Rumble##54929 |goto 71.50,38.76
step
talk Recycler Kerchunk##150573
|tip You will have to wait until the next daily reset to accept this quest.
accept Knock 'Em Out The Box##55373 |goto 71.50,38.76
stickystart "Collect_Spiderspring_Gear"
step
kill 10 Steelarm Pillager##150997+ |q 55373/2 |goto 62.12,43.97
step
label "Collect_Spiderspring_Gear"
kill Stolen Parts##150766+
click Stolen Parts##322664+
collect 10 Spiderspring Gear##167745 |q 55373/1 |goto 62.12,43.97
step
talk Recycler Kerchunk##150573
turnin Knock 'Em Out The Box##55373 |goto 71.50,38.76
step
talk Recycler Kerchunk##150573
accept A Little Leg Work##55697 |goto 71.50,38.76
|tip You will have to wait until the next daily reset to accept this quest.
stickystart "Collect_Toe_Springs"
step
Kill Scrapbone enemies around this area
click Toe Spring##326074+
|tip They look like large coil springs on the ground around this area.
collect 12 Toe Spring##168299 |q 55697/2 |goto 58.16,31.81
step
label "Collect_Toe_Springs"
click Mechacrawler Legs##326065+
|tip They look like broken robot legs on the ground around this area.
collect 4 Mechaspider Leg##168281 |q 55697/1 |goto 58.16,31.81
step
talk Recycler Kerchunk##150573
turnin A Little Leg Work##55697 |goto 71.50,38.76
step
talk Recycler Kerchunk##150573
accept The Nuts and Bolts of It##54922 |goto 71.50,38.76
|tip You will have to wait until the next daily reset to accept this quest.
step
collect 1000 Spare Parts##166846 |q 54922/1 |goto 71.50,38.76
step
talk Recycler Kerchunk##150573
turnin The Nuts and Bolts of It##54922 |goto 71.50,38.76
step
talk Recycler Kerchunk##150573
accept Factory Refurbished##56168 |goto 71.50,38.76
|tip You will need to wait until the next daily reset to accept this quest.
stickystart "Collect_Tempered_Plating"
stickystart "Collect_Machined_Gear_Assembly"
step
Kill enemies around this area
collect 30 Hardened Spring##168217 |goto 56.22,60.42 |q 56168
step
label "Collect_Tempered_Plating"
Kill enemies around this area
collect 10 Tempered Plating##168216 |goto 56.22,60.42 |q 56168
step
label "Collect_Machined_Gear_Assembly"
Kill enemies around this area
collect 5 Machined Gear Assembly##168215 |goto 56.22,60.42 |q 56168
step
use the Hardened Spring##168952
Collect Scraps to Create a Bundle of Recycled Parts |q 56168/1 |goto 56.22,60.42
step
accept Recyclable Parts##56117 |goto 56.18,60.23
|tip You will accept this quest automatically.
step
click Recyclerizer DX-82
turnin Recyclable Parts##56117 |goto 55.84,62.63
step
use the Recycling Requisition##168264
collect Recycled Crawler Manifold##169153 |q 56168/2 |goto 56.22,60.42
step
talk Recycler Kerchunk##150573
turnin Factory Refurbished##56168 |goto 71.50,38.76
step
talk Grizzek Fizzwrench##149815
accept Grease The Wheels##54083 |goto 71.56,38.74
|tip You will need to wait until the next daily reset to accept this quest.
step
use the Grease Trap##167076
kill Congealed Oil##150698+
|tip Kill them near your Grease Trap.
Collect #12# Cog Grease |q 54083/1 |goto 73.11,60.25
step
talk Grizzek Fizzwrench##149815
turnin Grease The Wheels##54083 |goto 71.56,38.74
step
talk Recycler Kerchunk##150573
accept Emission Free##56175 |goto 71.50,38.77
|tip You will need to wait until the next daily reset to accept this quest.
step
collect 30 Empty Energy Cell##166971 |q 56175/1
|tip These drop from chests and enemies all over the island.
step
talk Recycler Kerchunk##150573
turnin Emission Free##56175 |goto 71.50,38.77
accept Test Drive##55696 |goto 71.50,38.76
|tip You will need to wait until the next daily reset to accept this quest.
stickystart "Reach_Maximum_Speed"
step
Follow the path |goto 67.43,34.89 < 30 |only if walking
Continue following the path |goto 63.52,45.19 < 30 |only if walking
Continue up the path |goto 46.58,43.34 < 30 |only if walking
Continue up the path |goto 42.73,51.00 < 30 |only if walking
Reach Checkpoint One |q 55696/3 |goto 43.34,56.91
|tip Spam the "Pedal to the Metal" ability.
step
Follow the path up |goto 46.13,61.06 < 30 |only if walking
Reach Checkpoint Two |q 55696/4 |goto 52.85,75.43
step
label "Reach_Maximum_Speed"
Reach Maximum Speed |q 55696/1
|tip Spam the "Pedal to the Metal" ability.
step
Emergency Brake at Speed |q 55696/2 |goto 52.85,75.43
|tip Use the "Emergency Brake" ability on your vehicle bar.
step
Exit the Vehicle |outvehicle |goto 71.50,38.76 |q 55696
|tip Click the "Exit" button on your vehicle bar.
step
talk Recycler Kerchunk##150573
turnin Test Drive##55696 |goto 71.50,38.76
step
talk Recycler Kerchunk##150573
accept Knock His Bot Off##55753 |goto 71.49,38.76
|tip You will need to wait until the next daily reset to accept this quest.
step
talk Bondo Bigblock##153782
Ask him _"Could I borrow your powercore schematics?"_
Speak with Bondo Bigblock |q 55753/1 |goto 61.20,39.28
step
Kill enemies in the circle
Defeat #6# Robots |q 55753/2 |goto 61.81,39.96
step
kill 2 Clockwork Giant##150935 |q 55753/3 |goto 61.81,39.96
step
talk Bondo Bigblock##153782
Ask him _"Now can I borrow those powercore schematics?"_
Speak with Bondo Bigblock |q 55753/4 |goto 61.18,39.27
step
Obtain the Power Core Schematics |q 55753/5 |goto 61.18,39.27
step
talk Recycler Kerchunk##150573
turnin Knock His Bot Off##55753 |goto 71.49,38.76
step
talk Recycler Kerchunk##150573
accept Drive It Away Today##55622 |goto 71.49,38.76
|tip You will need to wait until the next daily reset to accept this quest.
step
talk Pascal-K1N6##150359
_<Create 8 S.P.A.R.E. Crate>_
|tip You will need 2,000 Spare Parts for this.
|tip Spare parts drop from mobs and chests and are awarded for quest completion on Mechagon Island.
collect 8 S.P.A.R.E. Crate##169610 |goto 71.35,32.28 |q 55622
step
collect 5 Energy Cell##166970 |goto 61.19,37.59 |q 55622
|tip You will need to charge five Empty Energy Cells at the Charging Station.
step
collect 8 Chain Ignitercoil##168327 |goto 64.35,47.25 |q 55622
|tip These are acquired from world quests, daily quests, chests, and rares around Mechagon Island.
step
talk Pascal-K1N6##150359
_<Create 1 500S-Cybergenic Powercore>_
collect 1 500S-Cybergenic Powercore##167064 |q 55622/1 |goto 71.35,32.28
step
talk Recycler Kerchunk##150573
turnin Drive It Away Today##55622 |goto 71.50,38.76
step
Contribute to a Construction Project |q 55153/1
|tip Construction projects look like various clickable objects around Mechagon Island.
|tip To contribute, you will need at least 10 spare parts.
step
talk Waren Gearhart##150555
turnin Collaborative Construction##55153 |goto 73.12,33.36
step
Reach Honored with the Rustbolt Resistance |condition rep('Rustbolt Resistance') >= Honored
step
talk Pristy Quickcharge##150631
accept The Quickcharge Contract##56319 |goto 70.75,38.41
step
talk Pristy Quickcharge##150631
Tell her _"I'm ready to test the NRG-100."_
Speak with Pristy Quickcharge |q 56319/1 |goto 70.75,38.41
step
talk Pristy Quickcharge##150631
turnin The Quickcharge Contract##56319 |goto 70.75,38.41
accept Recharging Rustbolt##55211 |goto 70.75,38.41
step
click NRG-100
Equip the NRG-100 |q 55211/1 |goto 70.69,38.47
step
Kill Malfunctioning enemies around this area
use the NRG-100##168122
|tip Use it on Malfunctioning enemy corpses.
Charge #6# NRG-100 Cells |q 55211/2 |goto 71.89,42.07
step
talk Pristy Quickcharge##150631
turnin Recharging Rustbolt##55211 |goto 70.75,38.41
step
talk Danielle Anglers##151462
accept Fishing For Something Bigger##55298 |goto 37.04,47.15
step
cast Fishing##131474
|tip Fish in the water.
collect Jarmouthed Goby##167670 |q 55298/2 |goto 36.93,46.57
step
kill Scrapbone Fisherman##151602
collect Suction Tube##167669 |q 55298/3 |goto 47.43,38.16
step
cast Fishing##131474
|tip Fish in the water.
collect Anodized Sentry Fish##167671 |q 55298/1 |goto 78.28,49.38
step
talk Danielle Anglers##151462
turnin Fishing For Something Bigger##55298 |goto 37.04,47.15
accept w##55339 |goto 37.04,47.15
step
collect 200 Ionized Minnow##167562 |q 55339/1 |goto 33.61,50.54
|tip Use the "Minnow Vac" ability on-screen and target Ionized Minnows schools.
|tip They look like small rippling pools in the water around this area.
step
talk Danielle Anglers##151462
turnin Tidying Up##55339 |goto 37.04,47.15
accept Build A Bigger Fish Trap##55055 |goto 37.04,47.15
step
talk Pascal-K1N6##150359
_<Create 1 S.P.A.R.E. Crate>_
|tip This will require 250 Spare Parts, which can be looted all over Mechagon Island.
collect 1 S.P.A.R.E. Crate##169610 |goto 71.35,32.29 |q 55055
step
talk Pascal-K1N6##150359
_<Create 1 Hundred-Fathom Lure>_
collect 1 Hundred-Fathom Lure##167649 |q 55055/1 |goto 71.35,32.29
step
talk Danielle Anglers##151462
turnin Build A Bigger Fish Trap##55055 |goto 37.04,47.15
accept Let's Fish!##56305 |goto 37.04,47.15
step
click Hundred-Fathom Lure
Watch the dialogue
kill Deepwater Maw##151569 |q 56305/1 |goto 37.26,43.77
step
talk Danielle Anglers##151462
turnin Let's Fish!##56305 |goto 37.04,47.15
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Nazjatar\\Nazjatar",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Nazjatar storyline quests.",
condition_suggested=function() return level >= 50 end,
condition_end=function() return completedq(56351) end,
},[[
step
talk Nathanos Blightcaller##135691
accept Send the Fleet##56044 |goto Zuldazar/0 58.44,62.67
step
talk Captain Rez'okun##123000
Tell him _"I'm ready to depart."_
Speak to Captain Rez'okun to Set Sail |q 56044/1 |goto Dazar'alor/0 44.48,95.45
step
talk Nathanos Blightcaller##150187
turnin Send the Fleet##56044 |goto Nazjatar/0 36.79,93.53
accept Upheaval##55054 |goto 36.79,93.53
step
talk Chief Telemancer Oculeth##150206
|tip Oculeth will catch you before you fall.
turnin Upheaval##55054 |goto 36.69,86.94
accept Descent##54018 |goto 36.69,86.94
step
Watch the dialogue
talk Lor'themar Theron##150207
turnin Descent##54018 |goto 36.33,82.10
accept The First Arcanist##54021 |goto 36.33,82.10
step
Enter the cave |goto 41.86,79.92 < 15 |walk
talk First Arcanist Thalyssra##150196
|tip Inside the cave.
turnin The First Arcanist##54021 |goto 41.97,80.69
accept Fortunate Souls##54012 |goto 41.97,80.69
accept Disruption of Power##55092 |goto 41.97,80.69
accept Dark Tides##56063 |goto 41.97,80.69
stickystart "Destroy_Ley_Line_Accumulators"
stickystart "Rescue_7th_Legion_Captives"
step
kill Tidemistress Ethendriss##153934 |q 56063/1 |goto 42.90,76.85
|tip Up on the platform.
step
label "Destroy_Ley_Line_Accumulators"
click Ley Line Accumulator+
|tip They look like large blue orbs on pedestals on the ground around this area.
Destroy #5# Ley Line Accumulators |q 55092/1 |goto 44.28,78.63
step
label "Rescue_7th_Legion_Captives"
kill Zanj'ir Trapper##153962+
Rescue #9# Honorbound Captives |q 54012/1 |goto 44.28,78.63
step
Enter the cave |goto 41.86,79.92 < 15 |walk
talk First Arcanist Thalyssra##150196
|tip Inside the cave.
turnin Fortunate Souls##54012 |goto 41.97,80.69
turnin Disruption of Power##55092 |goto 41.97,80.69
turnin Dark Tides##56063 |goto 41.97,80.69
accept In Deep##54015 |goto 41.97,80.69
step
talk First Arcanist Thalyssra##150196
|tip Next to the road.
turnin In Deep##54015 |goto 38.56,76.13
accept Up Against It##56429 |goto 38.56,76.13
step
Investigate the Noise |q 56429/1 |goto 38.65,74.12
step
Move Ahead with Thalyssra and Lor'themar |q 56429/2 |goto 37.66,67.67
step
click Sharas'dal, Scepter of Tides
Inspect the Scepter |q 56429/3 |goto 36.25,67.95
step
_Next to you:_
talk Nightborne Arcanist##155137
turnin Up Against It##56429
step
Watch the dialogue
talk Neri Sharpfin##150209
|tip She runs to this location.
accept Stay Low, Stay Fast!##55094 |goto 37.29,67.35
step
Move Ahead with Neri |q 55094/1 |goto 42.11,61.10
step
Watch the dialogue
|tip Follow Neri Sharpfin as she runs.
Follow Neri Sharpfin |q 55094/2 |goto 44.27,61.48
step
Go to Newhome |q 55094/3 |goto 48.13,62.35
step
Watch the dialogue
talk First Arcanist Thalyssra##151849
|tip She walks to this location.
turnin Stay Low, Stay Fast!##55094 |goto 48.54,62.29
step
talk Chief Telemancer Oculeth##151851
accept A Way Home##55053 |goto 48.50,62.37
step
Watch the dialogue
|tip Use the "Heart of Azeroth" ability.
|tip It appears as a button on the screen.
Assist Oculeth |q 55053/1 |goto 47.27,62.78
step
talk Iina Bluegill##153772
fpath Newhome |goto 47.48,63.25
step
talk Chief Telemancer Oculeth##151851
turnin A Way Home##55053 |goto 48.50,62.37
step
talk Magni Bronzebeard##154167
accept Essential Empowerment##55851 |goto 48.27,62.47
step
talk Earthen Guardian##154465
accept A Dying World##53028 |goto Dazar'alor/0 50.38,41.79
step
talk Magni Bronzebeard##130216
turnin A Dying World##53028 |goto Silithus/0 42.22,44.28
accept The Heart of Azeroth##51211 |goto 42.22,44.28
step
click Titan Translocator
Use the Device in Silithus to Travel to the Chamber of the Heart |q 51211/1 |goto 43.20,44.52
step
talk Magni Bronzebeard##130216
Ask him _"What does Azeroth want of me, Magni?"_
Speak to Magni within the Chamber of Heart |q 51211/3 |goto Chamber of Heart/0 50.17,53.66
step
talk Magni Bronzebeard##136907
turnin The Heart of Azeroth##51211 |goto 50.17,53.66
accept Infusing the Heart##52428 |goto 50.17,53.66
step
Absorb the Azerite Wounds |q 52428/1 |goto 50.22,64.22
|tip Use the "Heart of Azeroth" ability.
|tip It appears as a button on the screen.
|tip Use it next to Azerite Cracks.
|tip They look like dark colored ore nodes on the ground around this area.
|tip Fill the bar in the quest tracker area.
step
Watch the dialogue
|tip Use the "Heart of Azeroth" ability.
|tip It appears as a button on the screen.
Use the Heart of Azeroth to Mend the Seal |q 52428/3 |goto 50.22,64.22
step
talk Magni Bronzebeard##136907
turnin Infusing the Heart##52428 |goto 50.17,53.66
step
talk Magni Bronzebeard##152206
|tip You may have to leave the chamber and enter again to make him appear correctly.
turnin Essential Empowerment##55851 |goto Chamber of Heart/1 50.13,59.20
accept MOTHER Knows Best##55533 |goto Chamber of Heart/1 50.13,59.20
step
talk MOTHER##152194
Ask her _"MOTHER, what have you discovered?"_
Speak to MOTHER |q 55533/1 |goto 48.17,72.47
step
talk MOTHER##152194
turnin MOTHER Knows Best##55533 |goto 48.18,72.40
accept A Disturbance Beneath the Earth##55374 |goto 48.18,72.40
step
talk MOTHER##152194
Tell her _"I am ready to travel to Highmountain."_
Speak to MOTHER to Travel to Highmountain |q 55374/1 |goto 48.17,72.47
step
talk Spiritwalker Ebonhorn##151641
Tell him _"I'm investigating unusual magical activity in the area."_
Investigate the Location |q 55374/2 |goto Highmountain/0 49.54,68.36
step
talk Spiritwalker Ebonhorn##151641
turnin A Disturbance Beneath the Earth##55374 |goto 49.54,68.36
accept Take My Hand##55400 |goto 49.54,68.36
step
talk Navarrogg##151643
Tell him _"I am ready to go."_
Speak to Navarrogg |q 55400/1 |goto 49.63,68.40
step
Watch the dialogue
Enter the Dragon's Spine |complete zone("The Dragon's Spine") |q 55400
step
talk Spiritwalker Ebonhorn##151695
turnin Take My Hand##55400 |goto The Dragon's Spine/0 26.75,46.17
accept Calming the Spine##55407 |goto The Dragon's Spine/0 26.75,46.17
step
Seal the Fissure |q 55407/1 |goto 23.77,51.03 |count 1
|tip Use the "Seal Fissure" ability.
|tip It appears as a button on the screen.
step
Seal the Fissure |q 55407/1 |goto 17.44,49.20 |count 2
|tip Use the "Seal Fissure" ability.
|tip It appears as a button on the screen.
step
Seal the Fissure |q 55407/1 |goto 19.67,55.74 |count 3
|tip Use the "Seal Fissure" ability.
|tip It appears as a button on the screen.
step
Seal the Fissure |q 55407/1 |goto 17.57,62.10 |count 4
|tip Use the "Seal Fissure" ability.
|tip It appears as a button on the screen.
step
_Next to you:_
talk Spiritwalker Ebonhorn
turnin Calming the Spine##55407
accept Dominating the Indomitable##55425
step
_Next to you:_
talk Spiritwalker Ebonhorn
Tell him _"I am ready."_
Speak to Ebonhorn to Confront Ma'haat |q 55425/1
step
Watch the dialogue
|tip Spiritwalker Ebonhorn will help you fight.
kill Ma'haat the Indomitable##151739 |q 55425/2 |goto 16.94,64.78
step
Watch the dialogue
click Petrified Dragon Scale##324039
collect Petrified Ebony Scale##167830 |q 55425/3 |goto 18.96,58.09
step
_Next to you:_
talk Spiritwalker Ebonhorn
turnin Dominating the Indomitable##55425
accept A Friendly Face##55497
step
talk Navarrogg##151963
|tip Up on the ledge.
Tell him _"I am ready to go."_
Leave The Dragon's Spine |complete zone("Highmountain") |goto 12.54,55.84 |q 55497
step
talk Spiritwalker Ebonhorn##151964
Tell him _"Let's go meet Magni."_
Meet Spiritwalker Ebonhorn in the Chamber of Heart |q 55497/2 |goto Chamber of Heart/1 48.16,39.02
step
talk Magni Bronzebeard##152206
turnin A Friendly Face##55497 |goto 50.12,59.18
step
talk MOTHER##152194
accept The Heart Forge##55618 |goto 48.15,72.42
step
talk MOTHER##152194
Tell her _"Begin the activation sequence."_
Speak with MOTHER |q 55618/1 |goto 48.22,72.31
step
Watch the dialogue
Activate the Heart Forge |q 55618/2
step
Watch the dialogue
talk MOTHER##152194
|tip She walks to this location.
turnin The Heart Forge##55618 |goto 48.15,72.42
accept Harnessing the Power##57010 |goto 48.15,72.42
step
use the Petrified Ebony Scale##168611
Activate the Petrified Ebony Scale |q 57010/1 |goto 50.22,64.04
step
Infuse the Essence into the Heart of Azeroth |q 57010/2 |goto 50.22,64.04
|tip Select an Essence ability from the list.
|tip Activate it by clicking on an empty socket.
step
talk Magni Bronzebeard##152206
turnin Harnessing the Power##57010 |goto 50.12,59.18
step
talk Magni Bronzebeard##152206
accept Back Out to Sea##56161 |goto 50.13,59.26
step
talk Lor'themar Theron##151848
turnin Back Out to Sea##56161 |goto Nazjatar/0 48.50,62.18
accept Scouting the Palace##55481 |goto 48.50,62.18
step
talk Spiritwalker Ussoh##152529
Ask him _"Spiritwalker Ussoh, can you show us the area around the palace?"_
Witness the Vision |q 55481/1 |goto 48.35,62.16
step
talk Lor'themar Theron##151848
turnin Scouting the Palace##55481 |goto 48.50,62.18
step
talk Neri Sharpfin##149904
|tip Inside the cave.
accept Settling In##55384 |goto 49.73,64.65
step
talk Telur##151909
Ask him _"Can you set up the calling conch in the cave?"_
Ask Telur to Move the Calling Conch |q 55384/1 |goto 49.21,62.98
step
click Elven Cookpot
|tip Inside the cave.
Take a Swig of Slen's Elixir |q 55384/2 |goto 50.86,64.89
step
talk Asme Seapearl##151618
|tip Inside the cave.
home Newhome |goto 50.97,65.32 |q 55384
step
talk Vim Brineheart##149906
|tip Inside the cave.
Tell him _"Checking in!"_
Check in with Vim |q 55384/3 |goto 49.47,65.31
step
click Calling Conch
|tip Inside the cave.
Test the Calling Conch |q 55384/4 |goto 49.84,64.64
step
_Next to you:_
Watch the dialogue
talk Neri Sharpfin
turnin Settling In##55384
accept Scouting the Pens##55385
step
clicknpc Nelu Darkclaw##152045
|tip Follow the road.
|tip Avoid Mezzamere as you travel here.
Find Nelu Darkclaw |q 55385/1 |goto 43.66,43.48
step
Find Sandel Fin |q 55385/2 |goto 40.64,45.41
|tip You will be attacked.
step
Find Poen Gillbrack |q 55385/3 |goto 38.87,42.42
step
_Next to you:_
talk Neri Sharpfin
turnin Scouting the Pens##55385
step
talk Poen Gillbrack##152047
accept Save A Friend##55500 |goto 38.87,42.41
step
Enter the cave |goto 37.44,42.75 < 10 |walk |only if not subzone("Void Chamber")
kill Herald of the Queen##154950 |q 55500/1 |goto 35.59,42.96
|tip Inside the cave.
step
clicknpc Mak##152065
|tip Inside the cave.
Heal Mak |q 55500/2 |goto 35.54,43.43
step
talk Poen Gillbrack##149902
|tip Inside the cave.
turnin Save A Friend##55500 |goto 50.10,65.27
step
talk Atolia Seapearl##154002
|tip Inside the cave.
accept Becoming a Friend##57005 |goto 50.98,65.25
step
click Calling Conch
Use the Calling Conch |q 57005/1 |goto 49.81,64.60
step
Choose a Friend |q 57005/2 |goto 49.81,64.60
step
talk Finder Pruc##153512
|tip He walks around this area.
accept Scrying Stones##56210 |goto 49.20,62.25
step
talk Lor'themar Theron##151848
accept Down Into Nazjatar##56235 |goto 48.50,62.18
step
use the Scrying Stone##169817
Use the Scrying Stone |q 56210/1
step
Follow the path down |goto 50.07,58.08 < 20 |only if walking
Continue down the path |goto 51.25,52.66 < 20 |only if walking
click Glimmering Chest##327578
|tip Click the button that appears on-screen to reveal it.
Discover the Hidden Treasure |q 56210/2 |goto 46.86,55.93 |count 1
step
click Glimmering Chest##327578
|tip Click the button that appears on-screen to reveal it.
Discover the Hidden Treasure |q 56210/2 |goto 43.46,53.64 |count 2
step
click Glimmering Chest##327578
|tip Click the button that appears on-screen to reveal it.
Discover the Hidden Treasure |q 56210/2 |goto 40.30,49.06 |count 3
step
talk Finder Pruc##153512
|tip He walks around this area.
turnin Scrying Stones##56210 |goto 49.20,62.25
step
Complete #3# Unshackled Daily Quests |q 57005/3
|tip Complete bodyguard quests using the "Nazjatar World Quest" guide.
|tip You can also complete the "Kelya's Grave" guide while you wait to unlock the Flight Master's Whistle and flight path.
|tip You will also accomplish this later in this guide.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Becoming a Friend##57005 |goto 50.98,65.26
step
Reach Rank 3 with an Unshackled Ally |q 56235/1
|tip This is required to continue the Nazjatar storyline.
|tip Complete bodyguard quests using the "Nazjatar World Quest" guide.
|tip You can also complete the "Kelya's Grave" guide while you wait to unlock the Flight Master's Whistle and flight path.
|tip You will also accomplish this later in this guide.
step
talk Lor'themar Theron##151848
turnin Down Into Nazjatar##56235 |goto 48.50,62.18
accept Insight into Our Enemies##55862 |goto 48.50,62.18
step
talk Neri Sharpfin##149904
|tip Inside the cave.
|tip Next to you if Neri is your current bodyguard.
turnin Insight into Our Enemies##55862 |goto 50.20,64.96
accept Deteriorating Knowledge##55863 |goto 50.20,64.96
accept The Price is Death##55864 |goto 50.20,64.96
stickystart "Slay_Naga_Forces"
stickystart "Rescue_Fenn"
stickystart "Rescue_Esma"
stickystart "Rescue_Kono"
step
label "Rescue_Fenn"
Follow the path down |goto 51.63,55.71 < 20 |only if walking
Follow the road up |goto 48.96,45.07 < 30 |only if walking
Follow the path |goto 43.14,42.83 < 20 |only if walking
Enter the cave |goto 41.31,37.87 < 15 |walk
Kill Mind-Shackled enemies around this area
|tip They appear on your minimap as yellow dots.
Rescue Fenn |q 55863/1 |goto Nazjatar/10 54.82,47.20
step
label "Rescue_Esma"
Kill Mind-Shackled enemies around this area
|tip They appear on your minimap as yellow dots.
Rescue Esma |q 55863/3 |goto 54.82,47.20
step
label "Rescue_Kono"
Kill Mind-Shackled enemies around this area
|tip They appear on your minimap as yellow dots.
Rescue Kono |q 55863/2 |goto 54.82,47.20
step
Leave the cave |goto Nazjatar/0 38.73,35.88 < 15 |walk
click Broken Abyssal Focus
accept Ancient Technology##56354 |goto 38.10,37.00 |or
|tip
Click Here if this Quest is Not Available |confirm |or
|tip This quest requires at least 150 skill in a Zandalari crafting profession.
step
label "Slay_Naga_Forces"
Kill Zanj'ir enemies around this area
Slay #10# Naga Forces |q 55864/1 |goto 37.66,35.87
step
Follow the path |goto 37.16,32.72 < 15 |only if walking
Enter the cave |goto 38.26,30.90 < 15 |walk
talk Dash##153495
|tip Inside the cave.
turnin The Price is Death##55864 |goto 39.01,30.41
step
talk Fenn##153492
|tip Inside the cave.
turnin Deteriorating Knowledge##55863 |goto 38.98,30.39
accept What We Know of the Naga##55865 |goto 38.98,30.39
step
clicknpc Kono Kelpcurl##153952
|tip Inside the cave.
Bandage Kono |q 55865/2 |goto 39.00,30.47
step
clicknpc Esma Lostfin##153951
Bandage Esma |q 55865/1 |goto 38.96,30.35
step
talk Fenn##153492
turnin What We Know of the Naga##55865 |goto 38.98,30.39
accept Scouting Undercover##55866 |goto 38.98,30.39
step
clicknpc Zoatroid##153941
Obtain a Disguise |q 55866/1 |goto 38.91,30.30
step
Follow the path down |goto 37.23,29.74 < 20 |only if walking
talk Overseer Hajeer##153936
turnin Scouting Undercover##55866 |goto 36.98,27.02
accept Sating Snapdragons##55967 |goto 36.98,27.02
accept Working with Purpose##56046 |goto 36.98,27.02
stickystart "Collect_Iridescent_Pearls"
step
Follow the path down |goto 39.13,25.88 < 20 |only if walking
Continue down the path |goto 39.55,19.93 < 20 |only if walking
Kill Chitterspine enemies around this area
collect 8 Chitterspine Roe##168753 |goto 40.71,15.26 |q 55967
step
label "Collect_Iridescent_Pearls"
click Chittershell Clam+
|tip They look like giant clam shells on the ground around this area.
click Iridescent Pearl##327198+
|tip They are inside the clams.
collect 6 Iridescent Pearl##168810 |q 56046/1 |goto 40.71,15.23
step
Follow the path up |goto 39.63,16.94 < 20 |only if walking
use the Chitterspine Roe##168753
|tip Throw it at Savage Snapdragons.
Feed #8# Savage Snapdragons |q 55967/1 |goto 38.85,22.95
step
talk Overseer Hajeer##153936
turnin Sating Snapdragons##55967 |goto 36.98,27.02
turnin Working with Purpose##56046 |goto 36.98,27.02
accept We Can't Have Dull Weapons##56047 |goto 36.98,27.02
step
Follow the path down |goto 39.23,25.52 < 20 |only if walking
click Weapon Rack
turnin We Can't Have Dull Weapons##56047 |goto 34.68,21.11
accept Stealing the Naga's Secrets##56045 |goto 34.68,21.11
step
click Azerite Trident##326611
collect Azerite Trident##168516 |q 56045/1 |goto 34.68,21.11
step
Kill Zanj'ir enemies around this area
Slay #15# Zanj'ir Forces |q 56045/2 |goto 36.06,20.46
step
Follow the path up |goto 39.23,25.52 < 20 |only if walking
Continue up the path |goto 37.68,29.02 < 20 |only if walking
Enter the cave |goto 38.29,30.91 < 15 |walk
talk Lor'themar Theron##153421
|tip Inside the cave.
turnin Stealing the Naga's Secrets##56045 |goto 38.90,30.54
step
talk Chief Telemancer Oculeth##153422
|tip Inside the cave.
accept Sea Slug Liquidation##55870 |goto 38.86,30.42
accept Coveted Crystals##55867 |goto 38.86,30.42
stickystart "Collect_Bioluminescent_Oozes"
step
Follow the path up |goto 36.22,31.65 < 15 |only if walking
Continue up the path |goto 32.02,33.72 < 10 |only if walking
Continue up the path |goto 28.31,30.25 < 15 |only if walking
Enter the cave |goto 27.10,27.98 < 10 |walk
kill Hoarder Moarrgl##153250
|tip Inside the cave.
collect Deepsea Crystal##168540 |q 55867/1 |goto 27.02,26.82
step
label "Collect_Bioluminescent_Oozes"
clicknpc Luminescent Slug##153149+
|tip They look like tiny glowing slugs on the ground around this area.
collect 8 Bioluminescent Ooze##168539 |q 55870/1 |goto 28.96,31.24
step
Follow the path down |goto 27.87,29.48 < 20 |only if walking
Continue down the path |goto 31.70,32.56 < 10 |only if walking
Continue up the path |goto 32.26,35.89 < 20 |only if walking
click Strange Crystal
accept A Curious Discovery##56560 |goto 32.81,39.59
step
talk Droobie##153762
fpath Ashen Strand |goto 34.45,37.32
step
Follow the path down |goto 35.25,32.78 < 20 |only if walking
Enter the cave |goto 38.33,30.90 < 10 |walk
talk Chief Telemancer Oculeth##153422
|tip Inside the cave.
turnin Sea Slug Liquidation##55870 |goto 38.86,30.42
turnin Coveted Crystals##55867 |goto 38.86,30.42
accept Let the Residue Lead You##55868 |goto 38.86,30.42
step
Follow the path down |goto 51.71,55.49 < 20 |only if walking
Continue down the path |goto 49.83,45.68 < 20 |only if walking
Locate the Azerite Weapons Cache |q 55868/1 |goto 46.10,51.98
step
click Azerite Weapons Cache
turnin Let the Residue Lead You##55868 |goto 46.10,51.98
accept Clearing Out the Cache##55869 |goto 46.10,51.98
step
click Azerite Trident
|tip Inside the cave.
Aquire Azerite Weapons |havebuff 2032579 |goto 45.14,53.49 |q 55869
step
Kill enemies that attack in waves
Defeat Ashvane's Forces |q 55869/1 |goto 44.23,53.12
step
Leave the cave |goto 45.91,52.14 < 15 |walk
talk Mrrl##152084
accept A Safer Place##55530 |goto 48.19,45.34
step
Follow the path up |goto 50.57,45.65 < 20 |only if walking
Continue up the path |goto 51.97,52.74 < 20 |only if walking
Continue following the path |goto 50.53,57.31 < 20 |only if walking
Escort Mrrl to Newhome |q 55530/1 |goto 47.42,61.49
step
talk Mrrl##152084
turnin A Safer Place##55530 |goto 46.95,61.45
accept No Backs##55529 |goto 46.95,61.45
step
talk Flrgrrl##151952
|tip It swims around the pond.
buy 1 Unidentified Mass##167912 |q 55529/2 |goto 47.00,62.51
step
talk Hurlgrl##151953
buy 1 Sweet Sea Vegetable##167915 |q 55529/1 |goto 47.78,63.12
step
talk Mrrglrlr##151950
|tip It runs in a circle around this area.
buy 1 Slimy Naga Eyeball##167896 |q 55529/4 |goto 48.41,62.30
step
talk Lor'themar Theron##151848
turnin Clearing Out the Cache##55869 |goto 48.50,62.18
accept Down But Not Out##56236 |goto 48.50,62.18
step
talk Narv##154393
turnin A Curious Discovery##56560 |goto 49.15,61.46
step
talk Rolm##154408
turnin Ancient Technology##56354 |goto 49.30,61.88
|only if haveq(56346)
step
Watch the dialogue
talk Rolm##154408
accept An Abyssal Opportunity##56353 |goto 49.30,61.88 |or
|tip
Click Here if this Quest is Not Available |confirm |or
|tip This quest requires at least 150 skill in a Zandalari crafting profession.
step
talk Grrmrlg##151951
buy Flatulent Fish##167906 |q 55529/3 |goto 47.72,61.43
step
talk Mrrl##152084
turnin No Backs##55529 |goto 46.95,61.45
step
Gain #3000# Experience for Your Unshackled Allies |q 56236/1
|tip This is required to continue the Nazjatar storyline.
|tip You only need 3,000 total between all three bodyguards.
|tip Complete bodyguard quests using the "Nazjatar World Quest" guide.
|tip You can also complete the "Kelya's Grave" guide while you wait to unlock the Flight Master's Whistle and flight path.
|tip You will also accomplish this later in this guide.
step
talk Lor'themar Theron##151848
turnin Down But Not Out##56236 |goto 48.50,62.18
accept To Zin-Azshari##55469 |goto 48.51,62.18
step
Follow the path |goto 50.57,57.30 < 20 |only if walking
Continue up the path |goto 55.12,53.06 < 30 |only if walking
Continue following the path |goto 60.40,49.35 < 30 |only if walking
Run up the stairs |goto 63.49,51.90 < 15 |only if walking
talk First Arcanist Thalyssra##152066
turnin To Zin-Azshari##55469 |goto 64.22,52.09
accept Making the Connection##55482 |goto 64.22,52.09
step
talk Ekka Crimsonscale##153863
fpath Ekka's Hideaway |goto 63.98,51.81
step
Jump down here |goto 64.15,51.34 < 5 |only if walking
Jump down here |goto 64.20,47.68 < 10 |only if walking
click Shattered Staff##327542
|tip Inside the building.
collect Discarded Staff##169148 |q 55482/2 |goto 63.14,48.44
step
click Cracked Sphere##327543
|tip Inside the building.
collect Cracked Sphere##169147 |q 55482/3 |goto 64.84,46.29
step
Enter the building |goto 63.56,41.61 < 10 |walk
click Stack of Scrolls##325420
|tip Upstairs inside the building.
collect Arcane Scroll##168002 |q 55482/1 |goto 63.56,40.78
step
Follow the path up |goto 66.49,44.88 < 30 |only if walking
talk Collector Kojo##154143
accept Legacy of Nar'anan##56095 |goto 66.47,47.33
accept Snap Back##56118 |goto 66.47,47.33
step
Run up the stairs |goto 63.51,51.93 < 10 |only if walking
Watch the dialogue
Return to Thalyssra |q 55482/4 |goto 64.21,52.10
step
talk First Arcanist Thalyssra##152066
turnin Making the Connection##55482 |goto 64.21,52.10
accept Terrors in the Deep##55485 |goto 64.21,52.10
stickystart "Test_Scroll_Of_Bursting_Power"
stickystart "Slay_Snapdragons"
step
Jump down here |goto 64.15,51.34 < 5 |only if walking
Follow the path |goto 66.54,47.91 < 15 |only if walking
click Memory Pylon
Witness the Memory |q 56095/1 |goto 67.47,47.14 |count 1
step
Follow the path |goto 69.40,49.62 < 20 |only if walking
click Memory Pylon
Witness the Memory |q 56095/1 |goto 70.66,50.86 |count 2
step
click Memory Pylon
Witness the Memory |q 56095/1 |goto 71.86,50.44 |count 3
step
label "Test_Scroll_Of_Bursting_Power"
use Scroll of Bursting Power##168947
|tip Use it on sleeping Snapdragon Terrormaws.
|tip This will reduce their health.
kill Snapdragon Terrormaw##152358+
Test #3# Scrolls of Bursting Power |q 56118/1 |goto 69.77,50.00
step
label "Slay_Snapdragons"
Kill Snapdragon enemies around this area
Slay #10# Snapdragons |q 56118/2 |goto 69.77,50.00
stickystart "Slay_Corrupted_Creatures"
step
Follow the path down |goto 70.97,47.99 < 15 |only if walking
Continue following the path |goto 68.35,41.59 < 20 |only if walking
Follow the path down |goto 69.32,32.21 < 15 |only if walking
kill Eye of the Corruptor##152116 |q 55485/2 |goto 70.22,27.55
step
label "Slay_Corrupted_Creatures"
Kill enemies around this area
Slay #10# Corrupted Creatures |q 55485/1 |goto 72.91,32.90
step
talk Kelya Moonfall##154574
accept The High Life##56304 |goto 74.16,24.93
step
Run up the stairs |goto 75.34,26.48 < 10 |only if walking
Follow the path up |goto 77.30,26.60 < 10 |only if walking
click Ruined Mixing Stand
kill Varel Pansong##154509
Investigate the Bakery |q 56304/1 |goto 77.93,26.35
step
Jump down here |goto 77.77,27.28 < 5 |only if walking
Enter the building |goto 77.66,29.64 < 5 |walk
click Corin's Mug
|tip Inside the building.
talk Kelya Moonfall##154514
Investigate the Inn |q 56304/2 |goto 77.28,30.01
step
Run up the stairs |goto 76.84,29.00 < 10 |only if walking
Watch the dialogue
Find the Communication Crystal |q 55485/3 |goto 76.56,29.70
step
talk Image of Thalyssra##152316
turnin Terrors in the Deep##55485 |goto 76.48,29.88
accept Secrets of Telemancy##55486 |goto 76.48,29.88
accept Speak with the Dead##55488 |goto 76.48,29.88
step
Follow the path |goto 78.50,30.58 < 15 |only if walking
Investigate the Gardens |q 56304/3 |goto 80.01,30.89
step
Watch the dialogue
talk Kelya Moonfall##154514
turnin The High Life##56304 |goto 80.10,31.43
accept Saving Corin##56321 |goto 80.10,31.43
step
kill Shadowcaster Vixtris##154548 |q 56321/1 |goto 80.69,32.04
step
Watch the dialogue
talk Kelya Moonfall##154601
turnin Saving Corin##56321 |goto 80.21,31.90
accept On Ghostly Wings##56422 |goto 80.21,31.90
step
Enter the building |goto 79.68,29.69 < 10 |walk
click Pristine Chest##325898
|tip Inside the building.
Watch the dialogue
collect Oculeth's Notes##168201 |q 55486/1 |goto 79.57,28.78
step
talk Highborne Magus##152069
talk Highborne Guardian##152070
talk Highborne Erudite##152071
|tip All over this area.
Ask it _"What do you know of the Tidestone?"_
Gather the First Clue |q 55488/1 |goto 77.61,28.64
step
talk Highborne Magus##152069
talk Highborne Guardian##152070
talk Highborne Erudite##152071
|tip All over this area.
Ask it _"What is the strongest magic left in Zin-Azshari?"_
Gather the Second Clue |q 55488/2 |goto 77.61,28.64
step
talk Highborne Magus##152069
talk Highborne Guardian##152070
talk Highborne Erudite##152071
|tip All over this area.
Ask it _"What do you know of the Javelins?"_
Gather the Third Clue |q 55488/3 |goto 77.61,28.64
step
Run up the stairs |goto 76.86,28.97 < 15 |only if walking
talk Image of Thalyssra##152316
turnin Secrets of Telemancy##55486 |goto 76.47,29.88
turnin Speak with the Dead##55488 |goto 76.47,29.88
accept The Handmaiden's Tale##55489 |goto 76.47,29.88
step
Follow the path |goto 76.06,26.32 < 15 |only if walking
talk Kelya Moonfall##154574
turnin On Ghostly Wings##56422 |goto 74.16,24.92
step
talk Kelya Moonfall##154574
fpath Kelya's Grave |goto 74.16,24.92
step
Follow the path |goto 75.76,30.56 < 30 |only if walking
Continue following the path |goto 77.72,32.42 < 30 |only if walking
Run up the stairs |goto 78.84,35.89 < 20 |only if walking
kill Lady Silazsi##152203
|tip She walks around this area.
collect Javelin of Suramar##168212 |q 55489/1 |goto 76.06,34.81
step
Run down the stairs |goto 78.22,35.81 < 20 |only if walking
talk Gizzik Kelpears##153864
fpath Zin'Azshari |goto 79.52,37.93
step
Run up the stairs |goto 79.56,43.03 < 15 |only if walking
Cross the bridge |goto 80.88,41.02 < 10 |only if walking
talk Image of Thalyssra##152316
|tip Upstairs inside the building.
turnin The Handmaiden's Tale##55489 |goto 79.88,38.89
accept We'll Poke Their Eye Out##55490 |goto 79.88,38.89
step
talk Collector Kojo##154143
turnin Legacy of Nar'anan##56095 |goto 66.47,47.33
turnin Snap Back##56118 |goto 66.47,47.33
accept The Fate of Professor Elryna##56143 |goto 66.47,47.35
step
use Scroll of Bursting Power##169209
|tip Use it on the Snapdragon Matriarch.
kill Snapdragon Matriarch##154422 |q 56143/1 |goto 68.24,50.75
|tip Inside the building.
step
click Waterlogged Chest##327583
collect Memory Core##169207 |q 56143/2 |goto 68.24,50.67
step
click Memory Pylon
Witness the Fate of Professor Elryna |q 56143/3 |goto 66.48,47.27
step
Watch the dialogue
talk Collector Kojo##154143
turnin The Fate of Professor Elryna##56143 |goto 66.47,47.34
step
Follow the path |goto 68.18,43.67 < 20 |only if walking
Continue following the path |goto 71.53,43.59 < 20 |only if walking
Continue following the path |goto 73.59,45.02 < 20 |only if walking
talk First Arcanist Thalyssra##154520
accept City of Drowned Friends##56310 |goto 73.45,47.80
step
Enter the building |goto 75.67,47.36 < 10 |walk
kill Weeping Sanya##154670 |q 56310/1 |goto 75.92,48.19
|tip Upstairs inside the building.
step
talk Swiftfingered Tynala##154686
Ask her _"Have you seen Arcanist Sivara?"_
Speak with Swiftfingered Tynala |q 56310/2 |goto 73.67,43.78
step
kill Merchant Renrotta##154674 |q 56310/3 |goto 71.54,41.93
step
Watch the dialogue
talk First Arcanist Thalyssra##154661
turnin City of Drowned Friends##56310 |goto 73.98,41.75
accept The Ever Drowning##56312 |goto 73.98,41.75
step
talk First Arcanist Thalyssra##154661
Tell her _"Ready when you are."_
Speak with First Arcanist Thalyssra |q 56312/1 |goto 73.98,41.75
step
Wait in the bubble here |goto 74.58,41.92 < 5 |walk
Wait in the bubble here |goto 75.28,42.82 < 5 |walk
Wait in the bubble here |goto 76.12,42.67 < 5 |walk
Follow the path |goto 78.56,44.72 < 30 |only if walking
Escort First Arcanist Thalyssra |q 56312/2 |goto 79.77,44.94
|tip Avoid Fleeing Civilians or they will knock you down.
step
talk First Arcanist Thalyssra##155325
turnin The Ever Drowning##56312 |goto 79.77,44.94
accept The Warbringer##56314 |goto 79.77,44.94
step
click Memory of the Pact
Witness the Vision |q 56314/1 |goto 80.40,45.10
step
talk First Arcanist Thalyssra##155325
turnin The Warbringer##56314 |goto 79.77,44.94
accept They Made Their Choice##56316 |goto 79.77,44.94
step
kill Abyssal Commander Sivara##155144
|tip You will only have to fight it for a short period of time.
Watch the dialogue
Confront Abyssal Commander Sivara |q 56316/1 |goto 80.95,44.82
step
talk First Arcanist Thalyssra##155325
turnin They Made Their Choice##56316 |goto 79.77,44.94
step
talk Lor'themar Theron##151848
turnin We'll Poke Their Eye Out##55490 |goto 48.50,62.18
accept The Tide Turns##55799 |goto 48.50,62.18
step
Follow the path down |goto 51.56,55.64 < 20 |only if walking
Continue down the path |goto 51.87,50.90 < 15 |only if walking
Watch the dialogue
talk Lor'themar Theron##153182
Tell him _"I am ready. Sound the advance!"_
Sound the Advance |q 55799/1 |goto 50.19,44.71
step
Follow the path down |goto 49.16,43.50 < 15 |only if walking
click Barricade+
|tip They look like crude barriers on the ground around this area.
Kill enemies around this area
Assault the Gorgonian Overlook |q 55799/2 |goto 51.90,35.16
step
kill Commander Kresh##153019 |q 55799/3 |goto 51.34,32.33
step
Throw the Javelin of Suramar |q 55799/4 |goto 51.21,32.27
|tip Click the action button that appears on-screen.
step
kill Lady Zharessa##153468 |q 55799/5 |goto 50.50,24.65
step
talk First Arcanist Thalyssra##153183
turnin The Tide Turns##55799 |goto 50.25,23.41
step
talk Lor'themar Theron##153251
accept The Eternal Palace: Queen's Gambit##56356 |goto 50.60,24.16
step
talk Kobo Rayfriend##154738
fpath The Tidal Conflux |goto 51.11,23.63
step
talk Lor'themar Theron##151848
accept Create Your Own Strength##57003 |goto 48.50,62.18
step
clicknpc Voidbinder Zorlan##156151
|tip You will need 20 Prismatic Manapearls and a piece of Benthic Armor.
|tip Benthic gear tokens come from world quests and rare spawns in Nazjatar.
Upgrade a Piece of Benthic Armor |q 57003/2 |goto 49.10,61.96
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Create Your Own Strength##57003 |goto 50.98,65.26
step
talk Finder Pruc##153512
buy 15 Abyssal Shard##169326 |q 56353/1 |goto 49.20,62.25
|tip These cost five Prismatic Manapearls each.
|tip Prismatic Manapearls can be aquired by completing world quests and daily quests in Nazjatar.
|only if haveq(56353)
step
talk Rolm##154408
turnin An Abyssal Opportunity##56353 |goto 49.30,61.88
|only if haveq(56353)
step
Watch the dialogue
talk Rolm##154408
accept The Eternal Palace: We Can Make It Stronger...##56352 |goto 49.30,61.88
step
collect 20 Eternal Ornament##169329 |q 56352/1
|tip These drop from raid bosses in The Eternal Palace.
|tip The Eternal Palace does not open until July 9.
step
talk Rolm##154408
turnin The Eternal Palace: We Can Make It Stronger...##56352 |goto 49.30,61.88
step
Watch the dialogue
talk Rolm##154408
accept The Eternal Palace: Pushing the Limits##56351 |goto 49.30,61.88
step
collect 200 Eternal Ornament##169329 |q 56351/1
|tip These drop from raid bosses in The Eternal Palace.
step
talk Rolm##154408
turnin The Eternal Palace: Pushing the Limits##56351 |goto 49.30,61.88
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Nazjatar\\Kelya's Grave",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the questline to unlock the Kelya's Grave flight path and "..
"the use of the Flight Master's Whistle in Najatar",
condition_suggested=function() return level >= 50 end,
condition_end=function() return completedq(56422) end,
},[[
step
talk Kelya Moonfall##154574
accept The High Life##56304 |goto Nazjatar/0 74.16,24.93
step
Run up the stairs |goto 75.34,26.48 < 10 |only if walking
Follow the path up |goto 77.30,26.60 < 10 |only if walking
click Ruined Mixing Stand
kill Varel Pansong##154509
Investigate the Bakery |q 56304/1 |goto 77.93,26.35
step
Jump down here |goto 77.77,27.28 < 5 |only if walking
Enter the building |goto 77.66,29.64 < 5 |walk
click Corin's Mug
|tip Inside the building.
talk Kelya Moonfall##154514
Investigate the Inn |q 56304/2 |goto 77.28,30.01
step
Follow the path |goto 78.50,30.58 < 15 |only if walking
Investigate the Gardens |q 56304/3 |goto 80.01,30.89
step
Watch the dialogue
talk Kelya Moonfall##154514
turnin The High Life##56304 |goto 80.10,31.43
accept Saving Corin##56321 |goto 80.10,31.43
step
kill Shadowcaster Vixtris##154548 |q 56321/1 |goto 80.69,32.04
step
Watch the dialogue
talk Kelya Moonfall##154601
turnin Saving Corin##56321 |goto 80.21,31.90
accept On Ghostly Wings##56422 |goto 80.21,31.90
step
Run down the stairs |goto 76.06,26.32 < 15 |only if walking
talk Kelya Moonfall##154574
turnin On Ghostly Wings##56422 |goto 74.16,24.92
step
talk Kelya Moonfall##154574
fpath Kelya's Grave |goto 74.16,24.92
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Nazjatar\\Nazjatar Dropped Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing quests associated with the following item drops in Nazjatar:\n\n."..
"Silver Knife\nBrinestone Pickaxe\nGerminating Seed\nChum",
condition_suggested=function() return level >= 50 end,
condition_end=function() return completedq(56248) and completedq(55531) and completedq(55426) and completedq(55602) end,
},[[
step
label "Collect_Dropped_Items"
collect Silver Knife##169216 |next "Strange_Silver_Knife" |only if not completedq(56248) |or
|tip This drops from Arcane Chests across Nazjatar. |only if not completedq(56248)
collect Brinestone Pickaxe##168081 |next "What_Will_It_Mine" |only if not completedq(55531) |or
|tip This drops from Arcane Chests across Nazjatar as well as Mining nodes. |only if not completedq(55531)
collect Germinating Seed##167786 |next "What_Will_It_Grow" |only if not completedq(55426) |or
|tip This drops from Arcane Chests across Nazjatar as well as Zin'anthid nodes. |only if not completedq(55426)
collect Chum##168155 |next "What_Will_It_Lure" |only if not completedq(55602) |or
|tip This drops from Arcane Chests across Nazjatar as well as random mobs. |only if not completedq(55602)
'|condition completedq(56248) and completedq(55531) and completedq(55426) and completedq(55602) |next "End" |or
step
label "Strange_Silver_Knife"
talk Finder Palta##153514
turnin Strange Silver Knife##56240 |goto Nazjatar/0 49.23,62.08
accept Preserved Clues##56242 |goto 49.23,62.08
step
Follow the path |goto 78.74,42.91 < 20 |only if walking
click Preserved Journal
turnin Preserved Clues##56242 |goto 81.45,45.50
accept Diaries of the Dead##56244 |goto 81.45,45.50
step
Run up the stairs |goto 80.72,43.90 < 10 |only if walking
click Preserved Journal
Find Another Journal in the City Ruins |q 56244/1 |goto 83.24,32.86
step
Run down the stairs |goto 82.37,39.23 < 15 |only if walking
Follow the path |goto 80.46,43.20 < 5 |only if walking
click Preserved Journal
Continue Searching the City Ruins |q 56244/2 |goto 81.32,40.04
step
Run down the stairs |goto 80.22,43.39 < 10 |only if walking
Run down the stairs |goto 79.17,41.52 < 5 |walk
click Enchanted Lock
|tip Inside the building.
turnin Diaries of the Dead##56244 |goto 78.90,41.14
accept Enchanted Lock##56245 |goto 78.90,41.14
step
click Arcane Device
|tip Inside the building.
|tip The objective is to click a rune to swap it with another, placing three purple runes together.
Match 3 Purple Runes to Unlock the Lock |q 56245/1 |goto 78.95,41.26
step
click Enchanted Lock
|tip Inside the building.
turnin Enchanted Lock##56245 |goto 78.90,41.14
accept Treasure Tale##56248 |goto 78.90,41.14
step
talk Finder Palta##153514
turnin Treasure Tale##56248 |goto 49.23,62.08
step
label "What_Will_It_Grow"
click Fertile Soil
Plant the Germinating Seed |q 55426/1 |goto 54.71,41.72
step
click Bloated Seafly
Catch a Bloated Seafly |q 55426/2 |goto 54.86,42.03
step
clicknpc Carnivorous Lasher##151769
|tip Use the "Bloated Seafly" ability that appears on-screen.
Feed the Carnivorous Lasher |q 55426/3 |goto 54.70,41.71
step
click Bloated Seafly+
clicknpc Carnivorous Lasher##151769
|tip Use the "Bloated Seafly" ability that appears on-screen.
Keep Feeding #9# Times |q 55426/4 |goto 54.70,41.71
step
kill Carnivorous Lasher##151769
collect Coral Petal##167785 |q 55426/5 |goto 54.72,41.69 |next "Artisan_Okata_Turnin"
step
label "What_Will_It_Lure"
use the Chum##168159
Toss the Chum into Eel Infested Waters |q 55602/1 |goto 48.32,24.24
step
kill Skittering Eel##150462
collect Chum##168159 |q 55602/2 |goto 48.32,24.24
step
use the Chum##168159
kill Skittering Eel##150462
Toss the Chum |q 55602/3 |goto 48.32,24.24 |count 1
step
collect Chum##168159 |goto 48.32,24.24
|tip Loot the corpse.
step
use the Chum##168159
kill Skittering Eel##150462
Toss the Chum |q 55602/3 |goto 48.32,24.24 |count 2
step
collect Chum##168159 |goto 48.32,24.24
|tip Loot the corpse.
step
use the Chum##168159
Toss the Chum |q 55602/3 |goto 48.32,24.24 |count 3
step
kill Shimmerscale Eel##150464
collect Shimmering Eel Skin##168157 |q 55602/4 |goto 48.32,24.24 |next "Artisan_Okata_Turnin"
step
label "What_Will_It_Mine"
click Brinestone Deposit##325615+
|tip They look like dark colored mineral deposits.
|tip They appear on your minimap as yellow dots.
Collect #5# Brinestone Shards |q 55531/1 |goto 35.97,11.84
step
click Violet Brinestone Shard
Place the Violet Brinestone Shard |q 55531/2 |goto 36.79,11.32 |count 1
step
click Fiery Brinestone Shard
Place the Fiery Brinestone Shard |q 55531/2 |goto 36.95,11.46 |count 2
step
click Amber Brinestone Shard
Place the Amber Brinestone Shard |q 55531/2 |goto 37.11,11.25 |count 3
step
click Jade Brinestone Shard
Place the Jade Brinestone Shard |q 55531/2 |goto 37.01,10.99 |count 4
step
click Azure Brinestone Shard
Place the Azure Brinestone Shard |q 55531/2 |goto 36.82,11.01 |count 5
step
kill Brinestone Elemental##150308
collect Brinestone Core##168038 |q 55531/3 |goto 36.92,11.21 |next "Artisan_Okata_Turnin"
step
label "Artisan_Okata_Turnin"
talk Finder Pruc##153512
turnin What Will It Grow?##55426 |goto 49.08,62.19 |only if haveq(55426) and readyq(55426)
turnin What Will It Mine?##55531 |goto 49.08,62.19 |only if haveq(55531) and readyq(55531)
turnin What Will It Lure?##55602 |goto 49.08,62.19 |only if haveq(55602) and readyq(55602)
|condition not readyq(55426,55531,55602) |next "Collect_Dropped_Items"
step
label "End"
You have completed this guide
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\War Campaign",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the Horde War Campaign for Battle for Azeroth.",
condition_suggested=function() return level >= 35 and level <= 60 and not completedq(54282) and completedq(52131) end,
image=ZGV.IMAGESDIR.."WarCampaign",
},[[
step
Reach Level 35 |ding 35
|tip Use the Leveling guides to accomplish this
step
talk Nathanos Blightcaller##120170
|tip Inside the building.
accept The War Campaign##52749 |goto Dazar'alor/2 40.18,71.70
|only if not haveq(52746) and not completedq(52746)
step
talk Nathanos Blightcaller##135691
turnin The War Campaign##52749 |goto Zuldazar/0 58.44,62.67 |only if haveq(52749) or completedq(52749)
accept The War Cache##52746 |goto Zuldazar/0 58.44,62.67
step
Gather #100# War Resources |q 52746/1
|tip Gather these mainly from treasure chests.
|tip You will also occasionally get some from completing quests as you level.
|tip Treasure chests appear in random locations in leveling zones.
|tip As you complete quests, look for silver treasure chest icons on your minimap.
|tip Also look for silver arrows around the edge of your minimap.
|tip These silver arrows point you to nearby treasure chests.
step
_Click the Complete Quest Box:_
|tip In the quest tracker area.
turnin The War Cache##52746
accept Time for War##53333
step
talk Nathanos Blightcaller##135691
turnin Time for War##53333 |goto 58.44,62.67
step
talk Nathanos Blightcaller##135691
accept Mission from the Warchief##51770 |goto 58.44,62.67
step
Watch the dialogue
talk Garona Halforcen##138708
|tip She walks to this location.
|tip On the deck of the ship.
turnin Mission from the Warchief##51770 |goto Dazar'alor/0 51.69,99.68
accept War of Shadows##51771 |goto Dazar'alor/0 51.69,99.68
step
clicknpc Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip This mission will take 2 hours to complete.
|tip Start the mission now, and you will complete it and turn the quest in later.
|tip If the mission is complete and the quest is ready to turn in before the guide tells you, you can turn it in.
Click Here to Continue |confirm |goto 51.60,99.55 |q 51771
step
talk Nathanos Blightcaller##135691
accept The Kul Tiras Campaign##51803 |goto Zuldazar/0 58.44,62.67
step
click Kul Tiras Campaign
|tip You will only be able to accept one of these quests.
|tip Pick whichever one you like, it doesn't matter.
#include "Choose_Foothold_1"
step
label "Tiragarde_Sound_Foothold_1"
#include "Tiragarde_Sound_Foothold_Quests"
step
|next "Adapting_Our_Tactics"
step
label "Drustvar_Foothold_1"
#include "Drustvar_Foothold_Quests"
step
|next "Adapting_Our_Tactics"
step
label "Stormsong_Valley_Foothold_1"
#include "Stormsong_Valley_Foothold_Quests"
step
|next "Adapting_Our_Tactics"
step
label "Adapting_Our_Tactics"
talk Eitrigg##143913
accept Adapting Our Tactics##53602 |goto Zuldazar/0 58.56,62.72
step
talk Eitrigg##143913
Tell him _"Show me our recruitment and research options."_
Choose an Upgrade to Pursue |q 53602/1 |goto 58.56,62.72
step
talk Eitrigg##143913
turnin Adapting Our Tactics##53602 |goto 58.56,62.72
step
talk Nathanos Blightcaller##135691
turnin Deeper Into Kul Tiras##53050 |goto 58.44,62.67 |only if haveq(53050) or completedq(53050)
accept The Ongoing Campaign##51979 |goto 58.44,62.67
step
click Kul Tiras Campaign
|tip You will only be able to accept one of these quests.
|tip Pick whichever one you like, it doesn't matter.
#include "Choose_Foothold_2"
step
label "Tiragarde_Sound_Foothold_2"
#include "Tiragarde_Sound_Foothold_Quests"
step
|next "Reach_Level_40"
step
label "Drustvar_Foothold_2"
#include "Drustvar_Foothold_Quests"
step
|next "Reach_Level_40"
step
label "Stormsong_Valley_Foothold_2"
#include "Stormsong_Valley_Foothold_Quests"
step
|next "Reach_Level_40"
step
label "Reach_Level_40"
Reach Level 40 |ding 40
|tip You must be at least level 40 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Nathanos Blightcaller##135691
turnin The Azerite Advantage##53062 |goto Zuldazar/0 58.44,62.67 |only if haveq(53062) or completedq(53062)
accept Island Expedition##51870 |goto Zuldazar/0 58.44,62.67 |or |next "Start_Island_Expedition_Intro"
|tip
_NOTE:_
|tip You can only complete the Island Expedition introduction quest on one character.
|tip You may not be able to accept this quest.
Click Here If You Are Unable to Accept the Quest |confirm |q 52444 |future |or |next "The_Final_Foothold"
step
label "Start_Island_Expedition_Intro"
talk Captain Rez'okun##123000
turnin Island Expedition##51870 |goto Dazar'alor/0 44.80,95.46
accept Island Expedition##51888 |goto Dazar'alor/0 44.80,95.46
step
talk Captain Rez'okun##123000
Tell him _"Let's go!"_
Use the Expedition Map |q 51888/1 |goto 44.80,95.46
step
Watch the dialogue
|tip The waypoint arrow does not work on island expedition maps.
|tip Use your world map and minimap to complete the scenario objectives.
|tip The scenario is simple to do, everything is nearby and easy to find.
Explore the Uncharted Island |q 51888/2
step
talk Captain Rez'okun##123000
turnin Island Expedition##51888 |goto Dazar'alor/0 44.80,95.45
step
talk Nathanos Blightcaller##135691
turnin Pushing Our Influence##53056 |goto Zuldazar/0 58.44,62.67 |only if haveq(53056) or completedq(53056)
step
label "The_Final_Foothold"
talk Nathanos Blightcaller##135691
accept The Final Foothold##52444 |goto Zuldazar/0 58.44,62.67
step
click Kul Tiras Campaign
|tip Pick the last available quest.
#include "Choose_Foothold_3"
step
label "Tiragarde_Sound_Foothold_3"
#include "Tiragarde_Sound_Foothold_Quests"
|next "Uniting_Zandalar"
step
label "Drustvar_Foothold_3"
#include "Drustvar_Foothold_Quests"
|next "Uniting_Zandalar"
step
label "Stormsong_Valley_Foothold_3"
#include "Stormsong_Valley_Foothold_Quests"
|next "Uniting_Zandalar"
step
label "Uniting_Zandalar"
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Earthen Guardian##154465
accept A Dying World##53028 |goto Dazar'alor/0 50.38,41.79
step
talk Magni Bronzebeard##130216
turnin A Dying World##53028 |goto Silithus/0 42.22,44.28
accept The Heart of Azeroth##51211 |goto 42.22,44.28
step
click Titan Translocator
Use the Device in Silithus to Travel to the Chamber of the Heart |q 51211/1 |goto 43.20,44.52
step
talk Magni Bronzebeard##130216
Ask him _"What does Azeroth want of me, Magni?"_
Speak to Magni within the Chamber of Heart |q 51211/3 |goto Chamber of Heart/0 50.17,53.66
step
talk Magni Bronzebeard##136907
turnin The Heart of Azeroth##51211 |goto 50.17,53.66
accept Infusing the Heart##52428 |goto 50.17,53.66
step
Absorb the Azerite Wounds |q 52428/1 |goto 50.22,64.22
|tip Use the "Heart of Azeroth" ability.
|tip It appears as a button on the screen.
|tip Use it next to Azerite Cracks.
|tip They look like dark colored ore nodes on the ground around this area.
|tip Fill the bar in the quest tracker area.
step
Watch the dialogue
|tip Use the "Heart of Azeroth" ability.
|tip It appears as a button on the screen.
Use the Heart of Azeroth to Mend the Seal |q 52428/3 |goto 50.22,64.22
step
talk Magni Bronzebeard##136907
turnin Infusing the Heart##52428 |goto 50.17,53.66
step
talk Nathanos Blightcaller##135691
|tip You will only be able to accept one of these quests.
accept Uniting Zandalar##51916 |goto Zuldazar/0 58.44,62.67 |or
'|accept Uniting Zandalar##52451 |goto Zuldazar/0 58.44,62.67 |or
step
Reach Friendly Reputation with the Zandalari Empire in Zuldazar |q 51916/1
|tip Use the "Zuldazar" leveling guide to accomplish this.
|only if haveq(51916)
step
Reach Friendly Reputation with Talanji's Expedition in Nazmir |q 51916/2
|tip Use the "Nazmir" leveling guide to accomplish this.
|only if haveq(51916)
step
Reach Friendly Reputation with the Voldunai in Vol'dun |q 51916/3
|tip Use the "Vol'dun" leveling guide to accomplish this.
|only if haveq(51916)
step
talk Nathanos Blightcaller##135691
turnin Uniting Zandalar##51916 |goto 58.44,62.67 |only if haveq(51916) or completedq(51916)
turnin Uniting Zandalar##52451 |goto 58.44,62.67 |only if haveq(52451) or completedq(52451)
step
talk Nathanos Blightcaller##135691
accept Breaking Kul Tiran Will##51589 |goto 58.44,62.67
step
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Set sail for Tiragarde Sound."_
Speak with Tattersail to Sail to Tiragarde Sound |q 51589/1 |goto 58.46,62.98
step
Travel to Tirigarde Sound |complete zone("Tiragarde Sound") |q 51589
step
talk Nathanos Blightcaller##138285
turnin Breaking Kul Tiran Will##51589 |goto Tiragarde Sound/0 87.37,50.51
accept Into the Heart of Tiragarde##51590 |goto Tiragarde Sound/0 87.37,50.51
step
talk Nathanos Blightcaller##138285
|tip On top of the mountain.
turnin Into the Heart of Tiragarde##51590 |goto 71.19,50.91
accept Our Mountain Now##51591 |goto 71.19,50.91
step
Kill Roughneck enemies around this area
Slay #10# Roughneck Goons |q 51591/1 |goto 71.95,51.67
step
Watch the dialogue
talk Nathanos Blightcaller##138285
|tip He runs to this location.
turnin Our Mountain Now##51591 |goto 72.02,51.85
accept Making Ourselves at Home##51592 |goto 72.02,51.85
step
talk Lilian Voss##138287
accept Bridgeport Investigation##51593 |goto 72.05,51.77
step
talk Michaela Reed##133861
fpath Timberfell Outpost |goto 72.18,51.91 |q 51593
stickystart "Collect_Lenghts_of_Chain"
stickystart "Collect_Sail_Canvas"
step
Watch the dialogue
|tip Inside the building.
Investigate the Watchpost Cabin |q 51593/2 |goto 73.45,48.26
step
Watch the dialogue
|tip On the ground, under the bridge.
Investigate the Harbor Terrace |q 51593/1 |goto 74.63,49.68
step
Watch the dialogue
|tip Watch out for the Bridgeport Guards that patrol around this area.
Investigate the Outdoor Workshop |q 51593/3 |goto 75.31,51.13
step
label "Collect_Lenghts_of_Chain"
click Anchor Chain+
|tip They look like brown rectangular boxes on the ground around this area.
|tip They can also look like metal chains with anchors hanging from them on the backs of boats and on the docks.
collect 7 Length of Chain##160511 |q 51592/1 |goto 75.31,51.11
step
label "Collect_Sail_Canvas"
click Crate of Canvas##290709+
|tip They look like brown square boxes on the ground around this area.
click Canvas Bolt##290710+
|tip They look like purple pieces of fabric wrapped around planks of wood on the ground around this area.
collect 7 Sail Canvas##160512 |q 51592/2 |goto 75.31,51.11
step
talk Nathanos Blightcaller##138285
|tip On top of the mountain.
turnin Making Ourselves at Home##51592 |goto 72.02,51.85
step
talk Lilian Voss##138287
turnin Bridgeport Investigation##51593 |goto 72.05,51.77
accept Explosives in the Foundry##51594 |goto 72.05,51.77
step
talk Lilian Voss##138287
turnin Explosives in the Foundry##51594 |goto 77.50,49.93
accept Explosivity##51595 |goto 77.50,49.93
step
Test the Bomb's Explosiveness |q 51595/1 |goto 77.69,49.78
|tip Use the "Torch" ability.
|tip It appears as a button on the screen.
step
talk Lilian Voss##138287
turnin Explosivity##51595 |goto 77.50,49.93
accept Ammunition Acquisition##51596 |goto 77.50,49.93
accept Gunpowder Research##51597 |goto 77.50,49.93
accept A Bit of Chaos##51598 |goto 77.50,49.93
stickystart "Slay_Ashvane_Workers"
stickystart "Collect_Ashvane_Explosives"
step
kill Taskmaster Williams##123264
|tip He walks around this area inside the building.
collect Gunpowder Manufacturing Guide##160552 |q 51597/2 |goto 79.11,46.94
step
kill Forgemaster Farthing##134328
|tip He walks around this area.
collect Ashvane Explosives Formula##160553 |q 51597/1 |goto 82.18,48.63
step
label "Slay_Ashvane_Workers"
Kill enemies around this area
Slay #15# Ashvane Workers |q 51598/1 |goto 81.78,49.02
step
label "Collect_Ashvane_Explosives"
click Gunpowder Crate##290776+
|tip They look like open brown crates with bombs in them on the ground around this area.
collect 8 Ashvane Explosives##160555 |q 51596/1 |goto 81.78,49.02
step
talk Lilian Voss##138287
turnin Ammunition Acquisition##51596 |goto 77.50,49.92
turnin Gunpowder Research##51597 |goto 77.50,49.92
turnin A Bit of Chaos##51598 |goto 77.50,49.92
accept Death Trap##51599 |goto 77.50,49.92
step
click Gunpowder Crate##290776+
Place #8# Gunpowder Crates |q 51599/1 |goto 74.24,52.93
step
talk Lilian Voss##138287
turnin Death Trap##51599 |goto 77.01,49.19
accept The Bridgeport Ride##51601 |goto 77.01,49.19
step
clicknpc Stolen Horse##138552
Ride the Stolen Horse |invehicle |goto 76.99,49.22 |q 51601
stickystart "Ride_Past_Captain_Amalia_Stone"
step
Follow the path |goto 76.44,48.96 < 30 |only if walking
Ride Past #10# Bridgeport Guards |q 51601/1 |goto 75.66,50.99
|tip Run next to guards around this area.
step
label "Ride_Past_Captain_Amalia_Stone"
Ride Past Captain Amalia Stone |q 51601/2 |goto 75.63,49.85
|tip You will likely ride near her while running around this area.
step
Cross the bridge |goto 75.65,51.79 < 30 |only if walking
Watch the dialogue
Complete the Bridgeport Ride |q 51601/3 |goto 74.49,53.29
step
talk Nathanos Blightcaller##138285
|tip On top of the mountain.
turnin The Bridgeport Ride##51601 |goto 72.02,51.85
step
talk Skinny Tim##128224
fpath Castaway Point |goto 86.42,80.81
step
talk Rodrigo##129098
|tip At the top of the tower.
|tip Run around the mountain.
fpath Freehold |goto 77.04,82.89
step
talk Kip Wingnut##142740
|tip Up on the mountain.
fpath Waning Glacier |goto 39.68,18.55
step
talk Bertram##135025
fpath Whitegrove Chapel |goto Drustvar/0 25.75,16.56
step
talk Allabas##138251
fpath Windfall Cavern |goto Stormsong Valley/0 60.84,27.12
step
Follow the path up |goto 70.81,28.28 < 30 |only if walking
Run up the stairs |goto 72.02,29.79 < 20 |only if walking
Enter the building |goto 74.34,30.61 < 15 |only if walking
Leave the building |goto 74.42,28.32 < 15 |only if walking
talk Dark Ranger Allanah##134853
|tip At the top of the mountain.
fpath Shrine of the Storm |goto 77.90,24.06
step
talk Kudra Windblade##134848
fpath Diretusk Hollow |goto 54.27,49.35
step
talk Chulani Cloudbreath##134850
|tip Up on the mountain.
fpath Ironmaul Overlook |goto 75.87,64.14
step
Follow the path |goto 40.35,49.02 < 50 |only if walking
talk Scroll of Flight##137318
fpath Seekers Vista |goto 40.02,37.32
step
clicknpc Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
Complete "The Shadow War" Mission |q 51771/1 |goto Dazar'alor/0 51.60,99.55
|tip This mission takes 2 hours to complete.
step
talk Garona Halforcen##138708
turnin War of Shadows##51771 |goto 51.69,99.68
accept Reinforcements##53079 |goto 51.69,99.68
step
talk Garona Halforcen##138708
Tell her _"I require reinforcements."_
|tip Recruit 1 Horde Troop.
Order Troops |q 53079/1 |goto 51.69,99.69
step
talk Garona Halforcen##138708
turnin Reinforcements##53079 |goto 51.69,99.68
step
talk Nathanos Blightcaller##135691
|tip On the deck of the ship.
turnin Operation: Grave Digger##53065 |goto Zuldazar/0 58.44,62.67 |only if haveq(53065) or completedq(53065)
accept A Stroll Through a Cemetery##51784 |goto Zuldazar/0 58.44,62.67
step
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Set sail for Drustvar."_
Speak with Tattersail to Sail to Drustvar |q 51784/1 |goto 58.46,62.99
step
Follow the road |goto Drustvar/0 46.26,35.48 < 30 |only if walking
Meet Nathanos at Barrowknoll Cemetery |q 51784/2 |goto Drustvar/0 61.37,51.10
|tip Avoid Fallhaven as you travel here.
step
talk Nathanos Blightcaller##139061
turnin A Stroll Through a Cemetery##51784 |goto 61.37,51.09
accept Examining the Epitaphs##51785 |goto 61.37,51.09
accept State of Unrest##51786 |goto 61.37,51.09
step
talk Lilian Voss##139062
accept Our Lot in Life##51787 |goto 61.32,51.03
stickystart "Collect_Graveblooms"
stickystart "Kill_Enraged_Spirits"
step
click Grave Plaque##291129
Read the Grave Plaque |q 51785/1 |goto 61.11,48.87 |count 1
step
click Grave Plaque##291129
Read the Grave Plaque |q 51785/1 |goto 61.91,47.86 |count 2
step
click Grave Plaque##291129
Read the Grave Plaque |q 51785/1 |goto 59.55,47.30 |count 3
step
click Grave Plaque##291129
Read the Grave Plaque |q 51785/1 |goto 60.32,44.97 |count 4
step
label "Collect_Graveblooms"
click Gravebloom##273537+
|tip They look like small plants with blue flowers and purple leaves on the ground around this area.
collect 10 Gravebloom##152480 |q 51787/1 |goto 60.67,45.44
step
label "Kill_Enraged_Spirits"
kill 8 Enraged Spirit##126264 |q 51786/1 |goto 60.67,45.44
step
talk Nathanos Blightcaller##139061
turnin Examining the Epitaphs##51785 |goto 61.37,51.10
turnin State of Unrest##51786 |goto 61.37,51.10
step
talk Lilian Voss##139062
turnin Our Lot in Life##51787 |goto 61.32,51.03
step
talk Nathanos Blightcaller##139061
accept The Crypt Keeper##51788 |goto 61.37,51.09
step
kill Brutus Thornton##139136
|tip He walks around this area.
collect Valentine's Key##160736 |q 51788/1 |goto 59.17,49.19
step
talk Nathanos Blightcaller##139061
turnin The Crypt Keeper##51788 |goto 61.37,51.09
accept What Remains of Marshal M. Valentine##51789 |goto 61.37,51.09
step
click Crypt Door##278295
Open the Crypt Door |q 51789/1 |goto 61.11,48.87
step
Kill the enemies that attack in waves
kill Echo of Marshal M. Valentine##140124 |q 51789/2 |goto 61.13,48.63
step
Watch the dialogue
Search the Crypt |q 51789/3 |goto 61.11,48.87
step
Watch the dialogue
Uncover Valentine's Log |q 51789/4 |goto 61.11,48.87
step
click Valentine's Log##291277
|tip Inside the building.
collect Valentine's Log##160939 |q 51789/5 |goto 61.11,48.99
step
talk Nathanos Blightcaller##140105
turnin What Remains of Marshal M. Valentine##51789 |goto 61.18,48.74
step
talk Nathanos Blightcaller##135691
turnin Operation: Water Wise##53066 |goto Zuldazar/0 58.44,62.67 |only if haveq(53066) or completedq(53066)
accept Tracking Tidesages##51797 |goto Zuldazar/0 58.44,62.67
step
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Set sail for Stormsong Valley."_
Speak with Tattersail to Sail to Stormsong Valley |q 51797/1 |goto 58.46,62.99
step
Enter the building |goto Stormsong Valley/0 51.78,33.56 < 10 |walk
talk Rexxar##138876
|tip Inside the building.
turnin Tracking Tidesages##51797 |goto Stormsong Valley/0 52.13,33.65
accept No Price Too High##51798 |goto Stormsong Valley/0 52.13,33.65
step
Follow the path |goto 52.52,32.85 < 20 |only if walking
talk Rexxar##139102
Ask him _"Any clues on where we can find a tidesage?"_
Watch the dialogue
Help Rexxar Locate a Tidesage |q 51798/1 |goto 59.30,30.18
step
talk Thomas Zelling##139098
Tell him _"I'm here to ask for your help, not to kill you."_
Watch the dialogue
Locate the Tidesage |q 51798/2 |goto 62.64,31.87
step
talk Lilian Voss##139101
turnin No Price Too High##51798 |goto 62.65,31.95
accept They Will Know Fear##51805 |goto 62.65,31.95
step
talk Thomas Zelling##139098
accept Commander and Captain##51818 |goto 62.64,31.88
step
talk Rexxar##139102
accept Scattering Our Enemies##51819 |goto 62.69,31.81
stickystart "Terrorize_Civilians"
stickystart "Slay_Alliance_And_Kul_Tiran_Forces"
step
Follow the path up |goto 59.50,36.39 < 15 |only if walking
Enter the building |goto 58.71,36.14 < 10 |walk
kill Commander Augustine##139143
|tip Inside the building.
collect Book of Forbidden Magics##160745 |q 51818/2 |goto 58.24,35.52
step
Leave the building |goto 58.72,36.16 < 10 |walk
kill Captain Malia##139133 |q 51818/1 |goto 62.69,39.54
step
label "Terrorize_Civilians"
use the Val'kyr Horn##160901
|tip Use it next to NPCs around this area.
|tip Only the non-hostile ones will count for this quest goal.
Terrorize #20# Civilians |q 51805/1 |goto 60.94,39.67
step
label "Slay_Alliance_And_Kul_Tiran_Forces"
Kill enemies around this area
Slay #10# Alliance and Kul Tiran Forces |q 51819/1 |goto 60.94,39.67
step
talk Rexxar##139102
turnin Scattering Our Enemies##51819 |goto 62.68,31.82
step
talk Thomas Zelling##139098
turnin Commander and Captain##51818 |goto 62.65,31.88
step
talk Lilian Voss##139101
turnin They Will Know Fear##51805 |goto 62.65,31.94
step
talk Thomas Zelling##139098
accept Zelling's Potential##51830 |goto 62.64,31.88
step
Kill enemies around this area
Fill the Void Font within Port Fogtide |q 51830/1 |goto 67.01,40.77
|tip It will appear as a blue bar on the screen.
step
Activate the Empowered Essence within Port Fogtide |q 51830/2 |goto 66.93,41.49
|tip Use the "Activate Void Essence" ability.
|tip It appears as a button on the screen.
step
Return to the Tidebreak Foothills |goto 64.76,38.20 < 30 |c |q 51830
step
talk Thomas Zelling##139098
turnin Zelling's Potential##51830 |goto 62.64,31.87
step
talk Lilian Voss##139101
accept Whatever Will Be##51837 |goto 62.65,31.94
step
talk Thomas Zelling##139098
Tell him _"Zelling, we need you to locate Marshal Valentine's corpse for us."_
Watch the dialogue
Speak to Thomas Zelling |q 51837/1 |goto 62.64,31.88
step
talk Lilian Voss##139101
turnin Whatever Will Be##51837 |goto 62.65,31.94
accept To Be Forsaken##52122 |goto 62.65,31.94
step
talk Lilian Voss##139991
Tell her _"Watch the encounter between Zelling and his family."_
Watch the dialogue
Find Thomas Zelling |q 52122/1 |goto 59.93,30.42
step
talk Nathanos Blightcaller##135691
turnin To Be Forsaken##52122 |goto Zuldazar/0 58.44,62.67
step
talk Nathanos Blightcaller##135691
turnin Operation: Bottom Feeder##53067 |goto Zuldazar/0 58.44,62.67 |only if haveq(53067) or completedq(53067)
accept Journey to the Middle of Nowhere##52764 |goto Zuldazar/0 58.44,62.67
step
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Take us to Marshal Valentine's shipwreck, in the middle of the Great Sea."_
Speak with Tattersail to Sail to the Great Sea |q 52764/1 |goto 58.46,62.99
step
talk Nathanos Blightcaller##141644
turnin Journey to the Middle of Nowhere##52764 |goto The Great Sea/0 40.29,67.27
accept Deep Dive##52765 |goto The Great Sea/0 40.29,67.27
step
talk Hobart Grapplehammer##141645
Tell him _"Yes, I'm paying attention."_
Speak with Hobart to Dive into the Great Sea |q 52765/1 |goto 41.63,67.62
step
Reach the Ocean Floor |q 52765/2 |goto 41.40,68.24
step
Test Your Headlamp |q 52765/3 |goto 41.40,68.24
|tip Use the "Headlamp" ability.
|tip It appears as a button on the screen.
step
Click the Completed Quest Box:
turnin Deep Dive##52765
accept Seafloor Shipwreck##52766
step
Find the Shipwreck |q 52766/1 |goto 47.02,69.07
step
Click the Completed Quest Box:
turnin Seafloor Shipwreck##52766
accept Checking Dog Tags##52767
step
clicknpc Drowned Sailor##141672
|tip Underwater.
Find the Ship's Captain |q 52767/1 |goto 48.66,70.79
step
Click the Completed Quest Box:
turnin Checking Dog Tags##52767
accept The Sunken Graveyard##52768
step
Find Another Shipwreck |q 52768/1 |goto 54.81,51.15
step
Click the Completed Quest Box:
turnin The Sunken Graveyard##52768
accept Captain By Captain##52769
stickystart "Accept_Biolumi_Nuisance"
stickystart "Slay_Bioluminescent_Creatures"
step
clicknpc Drowned Sailor##141673
|tip Floating higher up, near the top of the sunken ship mast.
Identify the First Sea Captain |q 52769/1 |goto 54.50,49.66
step
clicknpc Drowned Sailor##141674
Identify the Second Sea Captain |q 52769/2 |goto 56.44,45.03
step
clicknpc Drowned Sailor##141795
Identify the Third Sea Captain |q 52769/3 |goto 66.52,42.29
step
Click the Completed Quest Box:
turnin Captain By Captain##52769
step
label "Accept_Biolumi_Nuisance"
accept Biolumi-Nuisance##52770 |goto 65.46,53.79
|tip You will eventually automatically accept this quest.
step
label "Slay_Bioluminescent_Creatures"
Kill enemies around this area
Slay #10# Bioluminescent Creatures |q 52770/1 |goto 59.93,50.68
|only if haveq(52770) or completedq(52770)
step
Click the Completed Quest Box:
turnin Biolumi-Nuisance##52770
accept The Undersea Ledge##52772
step
Find the Shipwreck on the Ledge |q 52772/1 |goto 68.42,54.26
step
Click the Completed Quest Box:
turnin The Undersea Ledge##52772
accept Water-Breathing Dragon##52773
step
kill Daenistrasz##141677 |q 52773/1 |goto 68.38,55.07
step
Click the Completed Quest Box:
turnin Water-Breathing Dragon##52773
accept Grab and Go##52774
step
clicknpc Drowned Sailor##141686
Choose _<Gather Marshal Valentine's body.>_
Gather Marshal M. Valentine's Body |q 52774/1 |goto 68.25,55.58
step
clicknpc Drowned Sailor##141687
Choose _<Gather Derek Proudmoore's Body>_
Gather the Other Sailor's Body |q 52774/2 |goto 68.71,55.95
step
talk Lilian Voss##141654
|tip On the deck of the ship.
|tip Click the Rope Ladder on the side of the boat to board the ship.
|tip The Rope Ladder is at the surface of the water.
accept Siege of Boralus##53121 |goto 41.56,66.49
step
talk Nathanos Blightcaller##141644
|tip Downstairs inside the ship.
|tip Click the Rope Ladder on the side of the boat to board the ship.
|tip The Rope Ladder is at the surface of the water.
turnin Grab and Go##52774 |goto 40.12,68.00
accept With Prince in Tow##52978 |goto 40.12,68.00
step
talk Dread-Admiral Tattersail##141651
|tip At the top of the ship.
Tell her _"Let's return to Zuldazar."_
Speak with Dread-Admiral Tattersail to Return |q 52978/1 |goto 39.91,68.30
step
talk Nathanos Blightcaller##135691
turnin With Prince in Tow##52978 |goto Zuldazar/0 58.44,62.67
step
talk Nathanos Blightcaller##135691
turnin Operation: Hook and Line##53068 |goto Zuldazar/0 58.44,62.67 |only if haveq(53068) or completedq(53068)
accept When a Plan Comes Together##52183 |goto Zuldazar/0 58.44,62.67
step
talk Nathanos Blightcaller##135691
Tell him _"Tell me your plan, Nathanos."_
Watch the dialogue
Listen to Nathanos' Plan |q 52183/1 |goto 58.44,62.67
step
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Set sail for Tiragarde Sound."_
Speak with Tattersail to Sail to Tiragarde Sound |q 52183/2 |goto 58.46,62.99
step
Run up the stairs |goto Tiragarde Sound/0 87.62,51.39 < 15 |only if walking
Meet Nathanos in Plunder Harbor |q 52183/3 |goto Tiragarde Sound/0 87.04,52.86
step
talk Nathanos Blightcaller##140485
|tip Inside the cave.
turnin When a Plan Comes Together##52183 |goto 86.91,53.14
accept The Bulk of the Guard##52186 |goto 86.91,53.14
step
talk Captain Amalia Stone##140484
|tip Inside the cave.
accept Old Colleagues##52187 |goto 86.96,53.11
step
talk Hobart Grapplehammer##141010 |goto 87.23,52.72
Tell him _"Send me to the flagship."_
Fly to the Flagship |goto 92.18,49.79 < 10 |noway |c |q 52187
stickystart "Kill_Proudmoore_Guards"
step
kill Guard-Commander Trunksal##141122 |q 52187/2 |goto 92.09,49.65
|tip Downstairs, on the bottom floor, inside the ship.
step
Follow the path |goto 91.45,48.44 < 5 |walk
kill Captain Gastrod##141065 |q 52187/1 |goto 91.40,47.94
|tip Upstairs inside the ship.
step
talk Hobart Grapplehammer##141010 |goto 92.19,49.85
|tip On the deck of the ship.
Tell him _"Send me to the smaller ship."_
Fly to the Smaller Ship |goto 91.60,52.11 < 10 |noway |c |q 52187
step
kill Helmsman Miria##141099 |q 52187/3 |goto 92.27,51.12
|tip At the top of the ship.
step
label "Kill_Proudmoore_Guards"
kill 12 Proudmoore Guard##141035 |q 52186/1 |goto 92.06,51.38
step
Enter the cave |goto 87.05,52.86 < 15 |only if walking
talk Captain Amalia Stone##140484
|tip Inside the cave.
turnin Old Colleagues##52187 |goto 86.96,53.12
step
talk Nathanos Blightcaller##140485
|tip Inside the cave.
turnin The Bulk of the Guard##52186 |goto 86.91,53.14
accept A Well Placed Portal##52185 |goto 86.91,53.14
step
click Portal to Boralus
|tip Inside the building.
Take the Portal to Boralus |q 52185/1 |goto 86.94,52.47
step
talk Thomas Zelling##140487
|tip Inside the building.
turnin A Well Placed Portal##52185 |goto Boralus/0 71.19,84.76
accept Relics of Ritual##52184 |goto Boralus/0 71.19,84.76
accept Forfeit Souls##52189 |goto Boralus/0 71.19,84.76
accept Tidesage Teachings##52188 |goto Boralus/0 71.19,84.76
stickystart "Collect_Tomes_Of_Tidesage_Research"
stickystart "Slay_Tidesages"
step
Follow the path |goto 70.16,85.55 < 10 |walk
kill Archivist Medira##140606
collect Compass of Clarity##161336 |q 52184/1 |goto 67.69,81.73
step
kill Brother Marrin##140572
collect Curio of the Depths##161335 |q 52184/2 |goto 64.01,80.12
step
kill Unleashed Tidebreaker##140586
|tip Kill the enemies channeling on him to be able to attack him.
collect Key of the Sea##161334 |q 52184/3 |goto 59.66,86.44
step
label "Collect_Tomes_Of_Tidesage_Research"
click Tome of Tidesage Research+
|tip They look like thick books sitting on objects on the ground around this area.
collect 5 Tome of Tidesage Research##162106 |q 52188/1 |goto 64.60,79.51
step
label "Slay_Tidesages"
Kill enemies around this area
|tip Boralus Militia will not count for this quest goal.
Slay #8# Tidesages |q 52189/1 |goto 64.60,79.51
step
Run down the stairs |goto 70.16,85.54 < 10 |walk
talk Thomas Zelling##140487
|tip Inside the building.
turnin Relics of Ritual##52184 |goto 71.18,84.77
turnin Forfeit Souls##52189 |goto 71.18,84.77
turnin Tidesage Teachings##52188 |goto 71.18,84.77
accept Gaining the Upper Hand##52190 |goto 71.18,84.77
step
talk Thomas Zelling##140487
|tip Inside the building.
Tell him _"I'm ready to go."_
Talk to Zelling |q 52190/1 |goto 71.18,84.77
step
Follow the path |goto 70.15,85.52 < 10 |walk
Enter the building |goto 70.66,82.23 < 10 |walk
click Key of the Sea
|tip Downstairs inside the building.
Begin the Ritual |q 52190/2 |goto 71.16,82.59
step
Watch the dialogue
|tip Downstairs inside the building.
Kill the enemies that attack in waves
Protect Zelling |q 52190/3 |goto 71.14,82.12
step
click Abyssal Scepter
|tip Downstairs inside the building.
collect Abyssal Scepter##162579 |q 52190/4 |goto 71.16,82.62
step
_Next to you:_
talk Thomas Zelling
turnin Gaining the Upper Hand##52190
accept Return to the Harbor##52990
step
Leave the building |goto 70.70,82.25 < 5 |walk
Run down the stairs |goto 70.15,85.52 < 10 |walk
click Portal to Plunder Harbor
|tip Downstairs inside the building.
Take the Portal to Plunder Harbor |q 52990/1 |goto 70.87,84.34
step
Enter the cave |goto Tiragarde Sound/0 87.05,52.85 < 10 |walk
talk Nathanos Blightcaller##140485
|tip Inside the cave.
turnin Return to the Harbor##52990 |goto Tiragarde Sound/0 86.91,53.15
accept Life Held Hostage##52191 |goto Tiragarde Sound/0 86.91,53.15
step
Watch the dialogue
|tip Follow Nathanos Blightcaller as he walks.
Walk with Nathanos |q 52191/1 |goto 87.21,52.12
step
kill General Cadarin##141808 |q 52191/2 |goto 87.52,52.12
step
Enter the cave |goto 87.04,52.86 < 15 |walk
talk Nathanos Blightcaller##140485
|tip Inside the cave.
turnin Life Held Hostage##52191 |goto 86.91,53.14
accept The Aid of the Tides##52192 |goto 86.91,53.14
step
talk Nathanos Blightcaller##140485
|tip Inside the cave.
Tell him _"Let's get out of here."_
Speak with Nathanos |q 52192/1 |goto 86.91,53.14
step
talk Nathanos Blightcaller##135691
turnin The Aid of the Tides##52192 |goto Zuldazar/0 58.44,62.67
accept A Cycle of Hatred##53003 |goto Zuldazar/0 58.44,62.67
step
talk Lilian Voss##141961
accept Champion: Lilian Voss##52861 |goto 58.41,62.73
step
Enter the building |goto Orgrimmar/1 49.92,75.64 < 10 |walk
talk Lady Sylvanas Windrunner##134711
|tip Inside the building.
turnin A Cycle of Hatred##53003 |goto Orgrimmar/1 48.33,71.16
step
talk Nathanos Blightcaller##135691
accept Our War Continues##53851 |goto Zuldazar/0 58.44,62.67
step
talk Lady Sylvanas Windrunner##149269
Ask her _"What did you want to speak to me about, Warchief?"_
Speak with Sylvanas Windrunner |q 53851/1 |goto 58.44,62.55
step
talk Nathanos Blightcaller##135691
turnin Our War Continues##53851 |goto 58.44,62.67
accept Azerite Denied##53852 |goto 58.44,62.67
step
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Tell her _"Set sail for Tiragarde Sound."_
Speak with Dread-Admiral Tattersail to Sail to Tiragarde Sound |q 53852/1 |goto 58.46,62.99
step
Follow the path down |goto Tiragarde Sound/0 39.78,19.88 < 15 |only if walking
Follow the road |goto Tiragarde Sound/0 42.02,24.12 < 20 |only if walking
Continue following the road |goto Tiragarde Sound/0 44.49,22.97 < 20 |only if walking
Cross the bridge |goto Tiragarde Sound/0 46.51,22.11 < 20 |only if walking
talk Rexxar##139102
turnin Azerite Denied##53852 |goto Tiragarde Sound/0 47.51,21.76
accept The Fury of the Horde##53856 |goto Tiragarde Sound/0 47.51,21.76
step
talk Rexxar##139102
Tell him _"Signal the warriors, Rexxar. It is time to attack Norwington Estate."_
Watch the dialogue
Deploy the Horde Army |q 53856/1 |goto 47.51,21.76
step
Jump down carefully here |goto 47.72,21.94 < 10 |only if walking
talk Rexxar##139102
turnin The Fury of the Horde##53856 |goto 48.92,24.99
accept Cleaning Out the Estate##53879 |goto 48.92,24.99
step
_Next to you:_
talk Thomas Zelling
accept Machines of War and Azerite##53880
stickystart "Disrupt_Estate_Defenders"
stickystart "Collect_Azerite_Bomb_Clusters"
step
click Azerite Weapon Cache##310513
collect Azerite Rifle##165225 |q 53880/2 |goto 49.97,25.85 |count 1
step
click Azerite Weapon Cache##310513
collect Azerite Rifle##165225 |q 53880/2 |goto 50.86,26.00 |count 2
step
click Azerite Weapon Cache##310513
collect Azerite Rifle##165225 |q 53880/2 |goto 51.85,26.05 |count 3
step
label "Collect_Azerite_Bomb_Clusters"
click Azerite Bombs##307683
|tip They looks like large wooden crates full of bombs on the ground around this area.
collect 4 Azerite Bomb Cluster##164917 |q 53880/1 |goto 50.47,26.24
step
label "Disrupt_Estate_Defenders"
Kill enemies around this area
Disrupt the Estate Defenders |q 53879/1 |goto 50.47,26.24
step
_Next to you:_
talk Thomas Zelling
turnin Machines of War and Azerite##53880
step
_Next to you:_
talk Rexxar
turnin Cleaning Out the Estate##53879
accept With Honor##53913
step
_Next to you:_
talk Rexxar
Tell him _"Rexxar, I'm ready to face Cole and his Azerite tank."_
Watch the dialogue
Speak with Rexxar to Face Lieutenant Cole |q 53913/1
step
kill Azerite Tank##145923
kill Lieutenant Cole##145922 |q 53913/2 |goto 50.98,26.93
step
_Next to you:_
talk Rexxar
turnin With Honor##53913
accept The Hunt Never Ends##53912
step
Follow the road up |goto 51.24,29.50 < 20 |only if walking
Continue following the road |goto 52.61,28.86 < 20 |only if walking
Approach Norwington Manor |q 53912/1 |goto 52.89,30.33
step
talk Rexxar##145422
turnin The Hunt Never Ends##53912 |goto 53.02,30.49
step
talk Rexxar##145422
accept Ride Out to Meet Them##53973 |goto 53.02,30.49
step
clicknpc Goblin Gyrocopter##146500
Board the Goblin Gyrocopter |q 53973/1 |goto 53.04,30.32
step
Kill enemies around this area
|tip Use the abilities on your action bar.
|tip They are on the ground around this area as you fly.
Defeat the Alliance Army |q 53973/2 |goto 50.34,26.96
step
Watch the dialogue
Return to Westwind Weald |goto 47.51,21.80 < 15 |c |q 53973
step
talk Rexxar##145422
turnin Ride Out to Meet Them##53973 |goto 47.41,21.81
accept The Day is Won##53981 |goto 47.41,21.81
step
talk Nathanos Blightcaller##135691
turnin The Day is Won##53981 |goto Zuldazar/0 58.44,62.67
step
talk Nathanos Blightcaller##135691
accept A Mech for a Goblin##53941 |goto Zuldazar/0 58.44,62.67
step
Follow the path |goto 38.81,72.21 < 20 |only if walking
talk Trade Prince Gallywix##145751
turnin A Mech for a Goblin##53941 |goto 36.31,72.02
accept It Belongs in my Mech!##54123 |goto 36.31,72.02
step
talk Patch##148339
accept Avoiding Lawsuits 101##54124 |goto 36.25,72.02
stickystart "Fuel_The_Azerite_Pack"
step
clicknpc Uninsured Goblin Worker##146725+
|tip They look like goblins laying on the ground around this area.
Heal #8# Uninsured Goblin Workers |q 54124/1 |goto 34.96,71.12
step
label "Fuel_The_Azerite_Pack"
use the Azerite Vacuumizer##166309
|tip Use it next to Azerite Mucks around this area.
Fuel the Azerite Pack |q 54123/1 |goto 34.96,71.12
step
talk Patch##148339
turnin Avoiding Lawsuits 101##54124 |goto 36.25,72.02
step
talk Trade Prince Gallywix##145751
turnin It Belongs in my Mech!##54123 |goto 36.31,72.02
accept The Right Mech for the Job##53942 |goto 36.31,72.02
step
clicknpc G.M.O.D##145752
Watch the dialogue
Fly the G.M.O.D to Drustvar |q 53942/1 |goto 36.29,72.13
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Eliminate #30# Mechs within Krazzlefrazz Outpost |q 53942/2 |goto Drustvar/0 37.13,27.68
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Repel #50# of the Mech Army within Arom's Crossing |q 53942/3 |goto 38.00,34.95
step
Watch the dialogue
|tip Use the "Big Red Button" ability on your action bar.
|tip You can use it anywhere around this area.
Push the Big Red Button |q 53942/4 |goto 38.00,34.95
step
Return to Krazzlefrazz Outpost |goto 37.31,26.01 < 15 |c |q 53942
step
talk Professor Krazzlefrazz##145786
turnin The Right Mech for the Job##53942 |goto 37.16,25.86
step
talk G.M.O.D##145816
accept Necessary Precautions##54128 |goto 37.31,26.01
step
talk G.M.O.D##145816
Choose _<Open the G.M.O.D manual and review its systems._
Watch the dialogue
Review the G.M.O.D |q 54128/1 |goto 37.31,26.01
step
talk G.M.O.D##145816
turnin Necessary Precautions##54128 |goto 37.31,26.01
accept Test Case #1 - Mech vs. Mekkatorque##54004 |goto 37.31,26.01
step
clicknpc Unknown##148445
Ride the G.M.O.D |invehicle |goto 37.31,26.01 |q 54004
step
clicknpc Unknown##148445
Watch the dialogue
|tip Use the button on your action bar when you see the chat message to use the big red button.
Ride the G.M.O.D to Face Mekkatorque |q 54004/1 |goto 63.95,26.29 |notravel
step
talk Trade Prince Gallywix##146073
turnin Test Case #1 - Mech vs. Mekkatorque##54004 |goto Tiragarde Sound/0 54.60,64.58
accept Insurance Policy##54007 |goto 54.60,64.58
step
clicknpc G.M.O.D##146074
Call for Roadside Assistance |q 54007/1 |goto 54.62,64.44
step
clicknpc G.M.O.D##146074
Try Calling Roadside Assistance Again |q 54007/2 |goto 54.62,64.44
step
clicknpc G.M.O.D##146074
Keep Pushing Buttons Until Something Happens |q 54007/3 |goto 54.63,64.41
step
talk Trade Prince Gallywix##146073
turnin Insurance Policy##54007 |goto 54.60,64.58
accept Insurance Renewal##54008 |goto 54.60,64.58
accept Killing on the Side##54009 |goto 54.60,64.58
stickystart "Accept_Mekkatorques_Battle_Plans"
stickystart "Slay_Alliance_And_Kul_Tiran_Forces_54009"
step
click Prisoner Cage
Rescue Fizzle |q 54008/1 |goto 56.21,64.50
step
click Prisoner Cage
Rescue Scowler Scampy |q 54008/3 |goto 57.08,62.87
step
Follow the path down |goto 57.77,61.31 < 20 |only if walking
click Prisoner Cage
Rescue Puggi Blasthops |q 54008/2 |goto 58.28,60.71
step
label "Accept_Mekkatorques_Battle_Plans"
Kill enemies around this area
accept Mekkatorque's Battle Plans##54022 |goto 58.61,61.70
|tip You will eventually automatically accept this quest after looting.
step
click Mekkatorque's Battle Plans##309916
|tip Inside the tent.
collect Mekkatorque's Battle Plans##164989 |q 54022/1 |goto 59.10,61.80
step
label "Slay_Alliance_And_Kul_Tiran_Forces_54009"
Kill enemies around this area
Slay #15# Alliance and Kul Tiran Forces |q 54009/1 |goto 58.61,61.70
step
Follow the road up |goto 58.26,60.48 < 30 |only if walking
Follow the path up |goto 55.28,62.32 < 20 |only if walking
talk Trade Prince Gallywix##146073
turnin Insurance Renewal##54008 |goto 54.60,64.58
turnin Killing on the Side##54009 |goto 54.60,64.58
turnin Mekkatorque's Battle Plans##54022 |goto 54.60,64.58
accept Mech versus Airship##54028 |goto 54.60,64.58
step
clicknpc G.M.O.D##148507
Board the G.M.O.D |q 54028/1 |goto 54.61,64.66
step
_As You Fly:_
Watch the dialogue
Wreck the Alliance Airship |q 54028/2
|tip Use the "Azerite Cannon" ability on your action bar.
|tip Use it repeatedly on the airship you fly to.
step
talk G.M.O.D##146561
Tell it _"Sound the fake SOS to lure Mekkatorque here."_
Speak with Gallywix to sound the SOS |q 54028/3 |goto 68.05,84.11
step
kill High Tinker Mekkatorque##146589
|tip He will eventually escape and spawn an Ultra Magnetizer on the deck of the ship.
|tip Kill the Ultra Magnetizer to free the G.M.O.D.
|tip You will automatically fly back to base after the encounter.
Confront Mekkatorque |q 54028/4 |goto 67.62,84.45
step
talk G.M.O.D##146623
turnin Mech versus Airship##54028 |goto 87.63,53.47
accept A Goblin's Definition of Success##54094 |goto 87.63,53.47
step
talk Nathanos Blightcaller##135691
turnin A Goblin's Definition of Success##54094 |goto Zuldazar/0 58.44,62.67
step
talk Nathanos Blightcaller##135691
accept Breaking Out Ashvane##54121 |goto Zuldazar/0 58.44,62.67
step
talk Dread-Admiral Tattersail##135690
|tip At the top of the ship.
Choose _"Set sail for Tiragarde Sound."_
Speak with Dread-Admiral Tattersail to Sail to Tiragarde Sound |q 54121/1 |goto 58.46,62.99
step
Run up the stairs |goto Tiragarde Sound/0 87.61,51.42 < 15 |only if walking
Follow the path up |goto Tiragarde Sound/0 87.13,52.07 < 15 |only if walking
Cross the bridge |goto Tiragarde Sound/0 85.22,51.76 < 15 |only if walking
talk Arcanist Valtrois##147088
turnin Breaking Out Ashvane##54121 |goto Tiragarde Sound/0 82.94,49.54
accept Face Your Enemy##54175 |goto Tiragarde Sound/0 82.94,49.54
accept Be More Uniform##54176 |goto Tiragarde Sound/0 82.94,49.54
step
talk Rexxar##146931
accept A Brilliant Distraction##54177 |goto 82.99,49.64
stickystart "Collect_Volatile_Azerite"
stickystart "Collect_Proudmoore_Equipment"
step
use the Shard of Vesara##165702
|tip Use it on Ollie Oakman.
|tip He walks around this area.
Send Ollie Oakman |q 54175/3 |goto 81.57,48.46
step
Follow the path |goto 81.58,49.63 < 20 |only if walking
Continue following the path |goto 79.95,50.12 < 30 |only if walking
use the Shard of Vesara##165702
|tip Use it on Drusilla Whiteblade.
Send Drusilla Whiteblade |q 54175/1 |goto 79.30,49.57
step
Follow the path |goto 78.95,48.87 < 20 |only if walking
Enter the building |goto 79.21,47.03 < 15 |walk
kill Captain Serafina##147044
|tip She walks around inside the building.
collect Captain's Overcoat##165697 |q 54176/2 |goto 79.11,46.95
step
Follow the path up |goto 79.65,46.13 < 20 |only if walking
use the Shard of Vesara##165702
|tip Use it on Rosie Walker.
|tip She walks around this area.
Send Rosie Walker |q 54175/2 |goto 80.40,45.96
step
label "Collect_Volatile_Azerite"
click Volatile Azerite Weapons##311174+
|tip They look like small clusters of bombs with blue smoke coming from them on the ground around this area.
collect 8 Volatile Azerite##165690 |q 54177/1 |goto 79.84,47.31
step
label "Collect_Proudmoore_Equipment"
Kill enemies around this area
Collect #12# Proudmoore Equipment |q 54176/1 |goto 79.84,47.31
step
Follow the path up |goto 81.91,46.27 < 20 |only if walking
talk Rexxar##146931
turnin A Brilliant Distraction##54177 |goto 82.99,49.64
step
talk Arcanist Valtrois##147088
turnin Face Your Enemy##54175 |goto 82.94,49.54
turnin Be More Uniform##54176 |goto 82.94,49.54
accept Catching a Ride##54178 |goto 82.94,49.54
step
talk Nathanos Blightcaller##147135
turnin Catching a Ride##54178 |goto 88.21,50.75
accept Through the Front Door##54179 |goto 88.21,50.75
step
talk Nathanos Blightcaller##147135
Tell him _"Ready."_
Watch the dialogue
Begin the Scenario |scenariostart |goto 88.21,50.75 |q 54179
step
Follow the road up |goto Tol Dagor Scenario/0 30.17,72.25 < 20 |only if walking
talk Warden Amical##147205
Tell him _"Delivering a prisoner."_
Watch the dialogue
Speak to Warden Amical |scenariogoal 1/43525 |goto 38.94,70.57 |q 54179
step
Watch the dialogue
Enter Tol Dagor |goto Tol Dagor Scenario/1 46.68,88.61 < 20 |noway |c |q 54179
step
talk Proudmoore Defender##147892
Tell him _"The warden needs you right away! Better get going!"_
click Master Key
|tip On the corner of the small table next to you.
collect Master Key##165734 |scenariogoal 2/43541 |goto Tol Dagor Scenario/1 50.64,83.10 |q 54179
step
Watch the dialogue
click Cell Door
Release Lady Ashvane |scenariogoal 3/43557 |goto 57.74,58.03 |q 54179
step
click Cell Door+
|tip They look like metal gates along the walls around this area.
|tip On both sides of the room.
Free #10# Ashvane Prisoners |scenariogoal 4/43554 |goto 46.59,58.18 |q 54179
step
Follow the path |goto 49.53,35.54 < 5 |walk
Run down the stairs |goto Tol Dagor Scenario/2 53.09,20.59 < 5 |c |q 54179
step
Run down the stairs |goto 66.15,37.76 < 5 |walk
Follow the path |goto 50.58,34.33 < 10 |walk
Follow the path |goto 36.97,63.78 < 5 |walk
click Volatile Azerite Weapons
Set Explosives in the Drain |scenariogoal 5/43535 |goto 33.21,71.31 |count 1 |q 54179
step
click Volatile Azerite Weapons
Set Explosives in the Drain |scenariogoal 5/43535 |goto 46.10,86.21 |count 2 |q 54179
step
click Volatile Azerite Weapons
Set Explosives in the Drain |scenariogoal 5/43535 |goto 59.47,61.17 |count 3 |q 54179
step
click Volatile Azerite Weapons
Set Explosives in the Drain |scenariogoal 5/43535 |goto 63.83,44.82 |count 4 |q 54179
step
Escape Through the Drain |scenariogoal 5/43555 |goto Tol Dagor Scenario/0 51.48,47.79 |q 54179
step
Watch the dialogue
kill Warden Amical##147205 |scenariogoal 6/43546 |goto 55.04,55.37 |q 54179
step
Watch the dialogue
Deliver Ashvane |scenariogoal 7/43800 |goto 45.18,76.46 |q 54179
step
Complete the Scenario |scenarioend |goto 40.28,91.01 |q 54179
step
Complete the "Escape from Tol Dagor" Scenario |q 54179/1
step
talk Nathanos Blightcaller##135691
turnin Through the Front Door##54179 |goto Zuldazar/0 58.44,62.67
step
talk Nathanos Blightcaller##135691
accept War Is Here##54139 |goto Zuldazar/0 58.44,62.67
step
Enter the building |goto Dazar'alor/0 49.93,42.13 < 15 |only if walking
talk King Rastakhan##145412
|tip Inside the building.
Tell him _"We're here, King Rastakhan. What is the situation with the Alliance attack?"_
Speak with King Rastakhan |q 54139/1 |goto Dazar'alor/2 39.86,70.10
step
talk Princess Talanji##133050
turnin War Is Here##54139 |goto 41.33,66.70
accept Ride of the Zandalari##54140 |goto 41.33,66.70
step
talk Captain Rez'okun##123000
Tell him _"The Kul Tiran fleet is off the coast of Nazmir, get the fleet mobilized and attack them."_
Speak with Captain Rez'okun to Mobilize the Fleet |q 54140/1 |goto Dazar'alor/0 49.09,41.29
step
Follow the path down |goto Zuldazar/0 49.58,45.30 < 20 |only if walking
Continue following the road |goto Zuldazar/0 51.46,43.96 < 20 |only if walking
Cross the bridge |goto Zuldazar/0 52.67,42.63 < 15 |only if walking
talk General Rakera##146812
Tell him _"The Alliance are attacking us in Nazmir, we need your forces to move out and support Princess Talanji."_
Speak with General Rakera to Mobilize the Army |q 54140/2 |goto Zuldazar/0 52.94,40.16
step
Run up the stairs |goto Dazar'alor/0 51.74,19.05 < 15 |only if walking
Follow the path |goto 46.69,21.90 < 20 |only if walking
talk Hexlord Raal##146851
Tell him _"Alliance forces are attacking us in Nazmir. We need every one of your riders to fly out and stop them."_
Speak with Hexlord Raal to Mobilize the Aerial Forces |q 54140/3 |goto 52.83,11.86
step
clicknpc Ata the Winglord##149505
Ride on Ata |invehicle |goto 52.97,11.63 |q 54140
step
talk Princess Talanji##146921
turnin Ride of the Zandalari##54140 |goto Zuldazar/0 57.95,21.25
accept No One Left Behind##54157 |goto Zuldazar/0 57.95,21.25
step
talk General Rakera##147075
accept A Path of Blood##54156 |goto 57.96,21.31
stickystart "Slay_Alliance_Forces_54156"
step
kill Blademaster Telaamon##147090
|tip He will eventually escape.
Rescue Rokhan |q 54157/1 |goto 59.06,18.48
step
label "Slay_Alliance_Forces_54156"
Kill enemies around this area
Slay #15# Alliance Forces |q 54156/1 |goto 58.49,19.63
step
talk Princess Talanji##146921
turnin No One Left Behind##54157 |goto 57.95,21.25
step
talk General Rakera##147075
turnin A Path of Blood##54156 |goto 57.96,21.30
accept Retaking the Outpost##54207 |goto 57.96,21.30
step
Cross the bridge |goto 58.00,17.57 < 20 |only if walking
talk Hexlord Raal##147139
turnin Retaking the Outpost##54207 |goto Nazmir/0 50.26,78.47
step
talk Patch##147155
accept Putting the Gob in Gob Squad##54211 |goto 50.30,78.41
accept Re-rebuilding the A.F.M.O.D##54212 |goto 50.30,78.41
stickystart "Collect_AFMOD_Parts"
step
clicknpc Ticker##147172
Find Ticker |q 54211/1 |goto 49.47,79.74
step
clicknpc Newt##147197
Find Newt |q 54211/2 |goto 48.25,78.99
step
clicknpc Grit##147198
Find Grit |q 54211/3 |goto 47.16,77.65
step
clicknpc Volt##147196
Find Volt |q 54211/4 |goto 47.93,76.93
step
label "Collect_AFMOD_Parts"
Kill enemies around this area
collect 10 A.F.M.O.D Part##165710 |q 54212/1 |goto 48.18,78.62
step
talk Patch##147155
turnin Putting the Gob in Gob Squad##54211 |goto 50.30,78.42
turnin Re-rebuilding the A.F.M.O.D##54212 |goto 50.30,78.42
accept It's Alive!##54213 |goto 50.30,78.42
step
talk Princess Talanji##146921
Ask her _"Princess Talanji, can you use your power to jump start the A.F.M.O.D.?"_
Watch the dialogue
Speak with Talanji to Power Up the A.F.M.O.D |q 54213/1 |goto 50.36,78.46
step
talk Patch##147155
turnin It's Alive!##54213 |goto 50.30,78.41
step
talk Princess Talanji##146921
accept The Battle of Zul'jan Ruins##54224 |goto 50.36,78.46
step
clicknpc A.F.M.O.D##147223
Pilot the A.F.M.O.D |invehicle |goto 50.22,78.20 |q 54224
step
kill 60 Gilnean Ambusher##147275 |q 54224/1 |goto 46.86,78.75
|tip Use the abilities on your action bar.
step
kill 80 Night Elf Sentinel##147274 |q 54224/2 |goto 41.00,78.76
|tip Use the abilities on your action bar.
step
Exit A.F.M.O.D. |outvehicle |q 54224
|tip Click the "Leave Vehicle" button on-screen.
step
Watch the dialogue
talk Princess Talanji##146921
turnin The Battle of Zul'jan Ruins##54224 |goto 39.27,78.20
accept We Have Them Cornered##54244 |goto 39.27,78.20
step
clicknpc Riding Raptor##147318
Mount the Riding Raptor |invehicle |goto 39.19,78.01 |q 54244
step
Watch the dialogue
Ride to Zalamar on the Riding Raptor |q 54244/1 |goto 31.08,51.93 |notravel
step
talk Princess Talanji##146921
turnin We Have Them Cornered##54244 |goto 30.90,51.87
accept Zandalari Justice##54249 |goto 30.90,51.87
step
talk General Rakera##147075
accept None Shall Escape##54269 |goto 30.82,51.80
accept Breaking Mirrors##54270 |goto 30.82,51.80
stickystart "Slay_Alliance_Forces_54249"
step
click Dark Iron Mole Machine
Destroy the Mole Machine |q 54269/1 |goto 30.78,48.34 |count 1
step
click Dark Iron Mole Machine
Destroy the Mole Machine |q 54269/1 |goto 32.12,48.24 |count 2
step
click Dark Iron Mole Machine
Destroy the Mole Machine |q 54269/1 |goto 32.92,47.32 |count 3
step
kill Telaamon's Mirror Image##147595
|tip Inside the building.
Aid Jo'chunga |q 54270/2 |goto 33.37,45.97
step
click Dark Iron Mole Machine
Destroy the Mole Machine |q 54269/1 |goto 32.58,44.50 |count 4
step
Run up the ramp |goto 31.40,45.57 < 10 |only if walking
kill Telaamon's Mirror Image##147594
|tip Inside the building.
Aid Witch Doctor Kejabu |q 54270/1 |goto 30.97,45.13
step
label "Slay_Alliance_Forces_54249"
Kill enemies around this area
Slay #15# Alliance Forces |q 54249/1 |goto 30.94,51.82
step
Follow the path down |goto 31.57,46.68 < 15 |walk
talk Rokhan##147233
|tip Inside the cave, at the bottom.
turnin Zandalari Justice##54249 |goto 31.25,46.82
turnin None Shall Escape##54269 |goto 31.25,46.82
turnin Breaking Mirrors##54270 |goto 31.25,46.82
accept Telaamon's Purge##54271 |goto 31.25,46.82
step
kill Blademaster Telaamon##147646 |q 54271/1 |goto 29.05,46.60
|tip Inside the cave.
step
talk Rokhan##147233
|tip Inside the cave.
turnin Telaamon's Purge##54271 |goto 31.25,46.81
accept Parting Mists##54275 |goto 31.25,46.81
step
Use Rokhan's Mojo to Fly Out of Hir'eek's Lair |q 54275/1 |goto 31.42,47.00
|tip Step into the tornado.
|tip Inside the cave.
step
clicknpc Riding Raptor##147686
Mount the Riding Raptor |invehicle |q 54275 |goto 31.78,45.45
step
Watch the dialogue
Ride Out to Destroy the Fog Voodoo |q 54275/2 |goto 31.51,31.90
step
talk Princess Talanji##146921
Tell her _"Princess Talanji, I'm ready to face the Alliance, let's recover the Abyssal Scepter."_
Watch the dialogue
Ask Talanji to Nullify the Abyssal Scepter |q 54275/3 |goto 31.63,31.77
step
talk Princess Talanji##146921
turnin Parting Mists##54275 |goto 31.63,31.77
step
Watch the dialogue
talk General Rakera##147075
accept Fly Out to Meet Them##54280 |goto 31.36,31.95
step
clicknpc Hexlord Raal##147707
Ride with Hexlord Raal |invehicle |goto 31.47,32.04 |q 54280
step
Watch the dialogue
Ride Back to Zuldazar with Hexlord Raal |q 54280/1 |goto Dazar'alor/0 36.86,5.26 |notravel
step
talk Princess Talanji##146921
turnin Fly Out to Meet Them##54280 |goto 37.03,5.23
accept Battle of Dazar'alor##54282 |goto 37.03,5.23
step
talk Nathanos Blightcaller##135691
accept The King's Death##54164 |goto Zuldazar/0 58.44,62.67
step
click Rastakhan's Altar
Watch the dialogue
Pay Respects to King Rastakhan |q 54164/1 |goto Dazar'alor/0 49.93,39.10
step
talk Lady Sylvanas Windrunner##145411
|tip She walks to this location.
turnin The King's Death##54164 |goto 49.98,38.90
accept The Return of Derek Proudmoore##54165 |goto 49.98,38.90
step
Watch the dialogue
Observe Lady Sylvanas Windrunner and Princess Talanji |q 54165/1 |goto 49.98,38.90
step
talk Lady Sylvanas Windrunner##147048
Ask her _"What are you planning to do?"_
Speak with Lady Sylvanas Windrunner at the Banshee's Wail |q 54165/2 |goto Zuldazar/0 58.42,62.51
step
talk Nathanos Blightcaller##135691
turnin The Return of Derek Proudmoore##54165 |goto 58.44,62.67
step
Complete "The Fate of Saurfang" Guide |condition completedq(54754,54109)
|tip You must complete this questline to continue.
|tip Use "The Fate of Saurfang" guide to accomplish this.
step
talk Bluffwatcher Proudscar##150433
accept Righting Wrongs##55124 |goto Dazar'alor/0 49.82,95.99 |only if completedq(54109)
accept Righting Wrongs##54961 |goto Dazar'alor/0 49.82,95.99 |only if completedq(54754)
step
talk Nathanos Blightcaller##135691
Tell him _"Baine Bloodhoof has requested that I help him with a secret task."_
|tip Choosing this will continue your loyalty to Sylvanas.
|tip
|tip Or
|tip
Choose _Nevermind. <Don't report Baine's request.>_
|tip Confirming this choice will cause you to switch to Saurfang's side.
Report to Nathanos Blightcaller |q 54961/1 |goto Zuldazar/0 58.44,62.67
|only if haveq(54961)
step
talk Dread-Admiral Tattersail##135690
Tell her _"Set sail for Tiragarde Sound."_
Sail to Tiragarde Sound |q 55124/1 |goto Zuldazar/0 58.46,62.99 |only if haveq(55124)
Sail to Tiragarde Sound |q 54961/2 |goto Zuldazar/0 58.46,62.99 |only if haveq(54961)
step
Run down the stairs |goto Tiragarde Sound/0 87.47,50.10 < 10 |only if walking
Watch the dialogue
talk Baine Bloodhoof##150309
turnin Righting Wrongs##55124 |goto 87.30,49.63 |only if haveq(55124)
turnin Righting Wrongs##54961 |goto 87.30,49.63 |only if haveq(54961)
accept Ships in the Night##54958 |goto 87.30,49.63
step
click Zelling's Boat
Get in the Boat |invehicle |goto 87.54,49.30 |q 54958
step
Watch the dialogue
Take Zelling's Boat to the Swift Vengeance |q 54958/1 |goto 87.18,45.20
step
Use the Grappling Hook |q 54958/2 |goto 87.18,45.20
|tip Click the action button that appears on-screen.
step
click Aft Door
Breach the Aft Door |q 54958/3 |goto 86.55,45.15
step
kill Jailer Hatewell##150516
|tip Downstairs inside the ship.
Find Derek Proudmoore |q 54958/4 |goto 85.98,45.85
step
_Next to you:_
talk Baine Bloodhoof##149842
turnin Ships in the Night##54958 |goto 85.89,45.89
accept Under Lock and Keys##54959 |goto 85.89,45.89
accept Dead in the Water##54997 |goto 85.89,45.89
stickystart "Slay_9_Swift_Vengeance_Crew"
step
Run up the stairs |goto 86.38,45.80 < 5 |walk
Continue up the stairs |goto 86.66,45.33 < 5 |walk
Continue up the stairs |goto 86.53,45.26 < 5 |walk
kill Captain Lightpast##149976
collect Captain's Key##167074 |q 54959/1 |goto 86.73,45.28
step
Run up the stairs |goto 86.39,45.54 < 10 |only if walking
click Navigator's Keys##322064
collect Navigator's Key##167072 |q 54959/3 |goto 86.71,45.26
step
Run up the stairs |goto 85.82,45.81 < 5 |only if walking
click Apothecary's Journal
Choose _<Take the key.>_
collect Apothecary's Key##167073 |q 54959/2 |goto 85.76,46.07
step
label "Slay_9_Swift_Vengeance_Crew"
Kill enemies around this area
|tip Upstairs on the deck of the ship
Slay #9# Swift Vengeance Crew |q 54997/1 |goto 86.03,45.81
step
Run up the stairs |goto 86.17,45.44 < 15 |only if walking
Enter the ship |goto 86.46,45.33 < 10 |walk
click Reinforced Cage
|tip Downstairs inside the ship.
Unlock the Reinforced Cage |q 54959/4 |goto 85.88,45.90
step
_Next to you:_
talk Baine Bloodhoof##149842
turnin Under Lock and Keys##54959
turnin Dead in the Water##54997
accept A Bitter Reunion##54960
step
Watch the dialogue
talk Thomas Zelling##150311
|tip Upstairs on the deck of the ship.
Tell him _"Set sail to Theramore."_
Speak with Thomas Zelling |q 54960/1 |goto 86.09,45.51
step
Arrive in Dustwallow Marsh |goto Dustwallow Marsh/0 76.89,43.42 |c |noway |q 54960
step
talk Baine Bloodhoof##150309
turnin A Bitter Reunion##54960 |goto 76.56,42.89
step
talk Thomas Zelling##150311
Accept Under False Colors |condition haveq(54999,55034) or completedq(54999,55034)
'|accept Under False Colors##54999 |goto 76.34,42.76 |or
'|accept Under False Colors##55034 |goto 76.34,42.76 |or
step
use the Charm of Returning##167228
Use the Charm of Returning |q 54999/1 |only if haveq(54999) or completedq(54999)
Use the Charm of Returning |q 55034/1 |only if haveq(55034) or completedq(55034)
step
click Mission Commander Table
|tip Start the mission "Casting the Bait."
|tip It will take up to 24 hours to complete.
Start the Mission "Casting the Bait" |q 54999/2 |goto Dazar'alor/0 51.58,99.57 |only if haveq(54999) or completedq(54999)
Start the Mission "Casting the Bait" |q 55034/2 |goto Dazar'alor/0 51.58,99.57 |only if haveq(55034) or completedq(55034)
step
talk Nathanos Blightcaller##135691
turnin Under False Colors##54999 |goto Zuldazar/0 58.44,62.67 |only if haveq(54999) or completedq(54999)
turnin Under False Colors##55034 |goto Zuldazar/0 58.44,62.67 |only if haveq(55034) or completedq(55034)
step
talk Dark Ranger Alina##146013
accept Securing Warfang Hold##55047 |goto 58.40,62.72
|only if completedq(54999)
step
talk Nathanos Blightcaller##135691
accept Securing Warfang Hold##55052 |goto 58.44,62.67
|only if completedq(55034)
step
talk Boss Mida##150690
turnin Securing Warfang Hold##55047 |goto Stormsong Valley/0 50.98,32.87 |only if haveq(55047) or completedq(55047)
turnin Securing Warfang Hold##55052 |goto Stormsong Valley/0 50.98,32.87 |only if haveq(55052) or completedq(55052)
accept Spy Games##55048 |goto 50.98,32.87
accept Communication Breakdown##55049 |goto 50.98,32.87
step
talk Kazit##150691
accept Tickets, Please?##55050 |goto 50.97,32.81
stickystart "Kill_SI:7_Spies"
stickystart "Eject_Ticketless_Spectators"
step
Follow the path up |goto 52.50,32.93 < 20 |only if walking
click SI:7 Listening Device
Destroy the SI:7 Listening Device |q 55049/1 |goto 52.18,31.76 |count 1
step
Cross the bridge |goto 50.36,33.57 < 20 |only if walking
Follow the path up |goto 51.24,37.26 < 20 |only if walking
click SI:7 Listening Device
Destroy the SI:7 Listening Device |q 55049/1 |goto 52.24,36.40 |count 2
step
Follow the path up |goto 47.36,35.66 < 20 |only if walking
click SI:7 Listening Device
Destroy the SI:7 Listening Device |q 55049/1 |goto 48.46,34.63 |count 3
step
label "Kill_SI:7_Spies"
use the Electronic Mayhem Projector##167078
|tip Use it near Dead Lumberjacks and Alliance Field Packs to reveal SI:7 Agents.
kill 10 SI:7 Technician##150579 |q 55048/1 |goto 50.38,36.29
step
label "Eject_Ticketless_Spectators"
talk Visiting Spectator##150592
Tell them _"I'll need to see your ticket."_
|tip The ones with no ticket may attack you.
Eject #5# Ticketless Spectators |q 55050/1 |goto 50.72,32.41
step
talk Kazit##150691
turnin Tickets, Please?##55050 |goto 50.97,32.81
step
talk Boss Mida##150690
turnin Spy Games##55048 |goto 50.98,32.86
turnin Communication Breakdown##55049 |goto 50.98,32.86
accept A Display of Power##55051 |goto 50.98,32.86
step
talk Nathanos Blightcaller##150669
Choose _<Observe the meeting.>_
Speak to Nathanos Blightcaller |q 55051/1 |goto 50.62,32.66
step
talk Lor'themar Theron##150678
turnin A Display of Power##55051 |goto 50.75,32.33
step
accept The Warchief's Order##56030 |goto Dazar'alor/1 48.99,75.26
|tip You will accept this quest automatically.
step
talk Nathanos Blightcaller##135691
turnin The Warchief's Order##56030 |goto Zuldazar/0 58.44,62.67
accept Send the Fleet##56044 |goto 58.44,62.67
step
talk Captain Rez'okun##123000
Tell him _"I'm ready to depart."_
Speak to Captain Rez'okun to Set Sail |q 56044/1 |goto Dazar'alor/0 44.48,95.45
step
talk Nathanos Blightcaller##150187
turnin Send the Fleet##56044 |goto Nazjatar/0 36.79,93.53
accept Upheaval##55054 |goto 36.79,93.53
step
talk Chief Telemancer Oculeth##150206
|tip Oculeth will catch you before you fall.
turnin Upheaval##55054 |goto 36.69,86.94
accept Descent##54018 |goto 36.69,86.94
step
Watch the dialogue
talk Lor'themar Theron##150207
turnin Descent##54018 |goto 36.33,82.10
accept The First Arcanist##54021 |goto 36.33,82.10
step
Cross the bridge |goto 39.70,81.61 < 20 |only if walking
Enter the cave |goto 41.86,79.92 < 10 |walk
talk First Arcanist Thalyssra##150196
|tip Inside the cave.
turnin The First Arcanist##54021 |goto 41.97,80.69
accept Fortunate Souls##54012 |goto 41.97,80.69
accept Disruption of Power##55092 |goto 41.97,80.69
accept Dark Tides##56063 |goto 41.97,80.69
stickystart "Destroy_Ley_Line_Accumulators"
stickystart "Rescue_7th_Legion_Captives"
step
Run up the stairs |goto 43.05,74.89 < 10 |only if walking
kill Tidemistress Ethendriss##153934 |q 56063/1 |goto 42.90,76.85
step
label "Destroy_Ley_Line_Accumulators"
click Ley Line Accumulator+
|tip They look like large blue orbs on pedestals on the ground around this area.
Destroy #5# Ley Line Accumulators |q 55092/1 |goto 44.28,78.63
step
label "Rescue_7th_Legion_Captives"
kill Zanj'ir Trapper##153962+
Rescue #9# Honorbound Captives |q 54012/1 |goto 44.28,78.63
step
Enter the cave |goto 41.86,79.92 < 10 |walk
talk First Arcanist Thalyssra##150196
|tip Inside the cave.
turnin Fortunate Souls##54012 |goto 41.97,80.69
turnin Disruption of Power##55092 |goto 41.97,80.69
turnin Dark Tides##56063 |goto 41.97,80.69
accept In Deep##54015 |goto 41.97,80.69
step
Follow the path up |goto 41.25,75.96 < 20 |only if walking
talk First Arcanist Thalyssra##150196
turnin In Deep##54015 |goto 38.56,76.13
accept Up Against It##56429 |goto 38.56,76.13
step
Investigate the Noise |q 56429/1 |goto 38.65,74.12
step
Move ahead with Thalyssra and Lor'themar |q 56429/2 |goto 37.66,67.67
step
click Sharas'dal, Scepter of Tides
Inspect the Scepter |q 56429/3 |goto 36.25,67.95
step
Watch the dialogue
_Next to you:_
talk Nightborne Arcanist##155137
turnin Up Against It##56429
step
Watch the dialogue
talk Neri Sharpfin##150209
accept Stay Low, Stay Fast!##55094 |goto 37.29,67.35
step
Follow the road down |goto 40.67,64.05 < 20 |only if walking
Move Ahead with Neri |q 55094/1 |goto 42.11,61.10
step
Follow Neri Sharpfin |q 55094/2 |goto 44.27,61.48
step
Go to Newhome |q 55094/3 |goto 48.13,62.35
step
Watch the dialogue
talk First Arcanist Thalyssra##151849
turnin Stay Low, Stay Fast!##55094 |goto 48.54,62.29
step
talk Chief Telemancer Oculeth##151851
accept A Way Home##55053 |goto 48.50,62.37
step
Watch the dialogue
Assist Oculeth |q 55053/1 |goto 47.27,62.78
|tip Click the "Heart of Azeroth" button that appears on-screen.
step
talk Iina Bluegill##153772
fpath Newhome |goto 47.48,63.25
step
talk Chief Telemancer Oculeth##151851
turnin A Way Home##55053 |goto 48.50,62.37
step
talk Magni Bronzebeard##154167
accept Essential Empowerment##55851 |goto 48.27,62.47
step
talk Magni Bronzebeard##152206
turnin Essential Empowerment##55851 |goto Chamber of Heart/0 50.13,59.20
accept MOTHER Knows Best##55533 |goto 50.13,59.20
step
talk MOTHER##152194
Ask her _"MOTHER, what have you discovered?"_
Speak to MOTHER |q 55533/1 |goto 48.17,72.47
step
talk MOTHER##152194
turnin MOTHER Knows Best##55533 |goto 48.18,72.40
accept A Disturbance Beneath the Earth##55374 |goto 48.18,72.40
step
talk MOTHER##152194
Tell her _"I am ready to travel to Highmountain."_
Speak to MOTHER to Travel to Highmountain |q 55374/1 |goto 48.17,72.47
step
talk Spiritwalker Ebonhorn##151641
Tell him _"I'm investigating unusual magical activity in the area."_
Investigate the Location |q 55374/2 |goto Highmountain/0 49.54,68.36
step
talk Spiritwalker Ebonhorn##151641
turnin A Disturbance Beneath the Earth##55374 |goto 49.54,68.36
accept Take My Hand##55400 |goto 49.54,68.36
step
talk Navarrogg##151643
Tell him _"I am ready to go."_
Speak to Navarrogg |q 55400/1 |goto 49.63,68.40
step
Watch the dialogue
Enter the Dragon's Spine |goto The Dragon's Spine/0 27.28,45.57 < 1000 |c |noway |q 55400
step
talk Spiritwalker Ebonhorn##151695
turnin Take My Hand##55400 |goto 26.75,46.17
accept Calming the Spine##55407 |goto 26.75,46.17
step
Seal the Fissure |q 55407/1 |goto 23.77,51.03 |count 1
|tip Click the "Seal Fissure" button that appears on-screen.
step
Seal the Fissure |q 55407/1 |goto 17.44,49.20 |count 2
|tip Click the "Seal Fissure" button that appears on-screen.
step
Seal the Fissure |q 55407/1 |goto 19.67,55.74 |count 3
|tip Click the "Seal Fissure" button that appears on-screen.
step
Seal the Fissure |q 55407/1 |goto 17.57,62.10 |count 4
|tip Click the "Seal Fissure" button that appears on-screen.
step
_Next to you:_
turnin Calming the Spine##55407
accept Dominating the Indomitable##55425
step
_Next to you:_
talk Spiritwalker Ebonhorn##152385
Tell him _"I am ready."_
Speak to Ebonhorn to Confront Ma'haat |q 55425/1
step
Watch the dialogue
kill Ma'haat the Indomitable##151739 |q 55425/2 |goto 17.24,63.02
step
Watch the dialogue
click Petrified Dragon Scale##324039
collect Petrified Ebony Scale##167830 |q 55425/3 |goto 18.85,58.04
step
_Next to you:_
turnin Dominating the Indomitable##55425
accept A Friendly Face##55497
step
Follow the path up |goto 14.70,52.57 < 15 |only if walking
talk Navarrogg##151963 |goto 12.54,55.84
Tell him _"I am ready to go."_
Leave The Dragon's Spine |goto Highmountain/0 49.60,68.37 < 1000 |c |noway |q 55497
step
talk Spiritwalker Ebonhorn##151964
Tell him _"Let's go meet Magni."_
Meet Spiritwalker Ebonhorn in the Chamber of Heart |q 55497/2 |goto Chamber of Heart/0 48.16,39.02
step
talk Magni Bronzebeard##152206
turnin A Friendly Face##55497 |goto 50.12,59.18
step
talk MOTHER##152194
accept The Heart Forge##55618 |goto 48.15,72.42
step
talk MOTHER##152194
Tell her _"Begin the activation sequence."_
Speak with MOTHER |q 55618/1 |goto 48.22,72.31
step
Watch the dialogue
Activate the Heart Forge |q 55618/2
step
talk MOTHER##152194
turnin The Heart Forge##55618 |goto 48.15,72.42
accept Harnessing the Power##57010 |goto 48.15,72.42
step
use the Petrified Ebony Scale##168611
Activate the Petrified Ebony Scale |q 57010/1 |goto 50.22,64.04
step
Infuse the Essence into the Heart of Azeroth |q 57010/2 |goto 50.22,64.04
|tip Select an essence ability and activate it by clicking on an empty socket.
step
talk Magni Bronzebeard##152206
turnin Harnessing the Power##57010 |goto 50.12,59.18
step
talk Magni Bronzebeard##152206
accept Back Out to Sea##56161 |goto 50.13,59.26
step
talk Lor'themar Theron##151848
turnin Back Out to Sea##56161 |goto Nazjatar/0 48.50,62.18
accept Scouting the Palace##55481 |goto 48.50,62.18
step
talk Spiritwalker Ussoh##152529
Ask him _"Spiritwalker Ussoh, can you show us the area around the palace?"_
Witness the Vision |q 55481/1 |goto 48.35,62.16
step
talk Lor'themar Theron##151848
turnin Scouting the Palace##55481 |goto 48.50,62.18
step
talk Neri Sharpfin##149904
|tip Inside the cave.
accept Settling In##55384 |goto 49.73,64.65
step
talk Telur##151909
Ask him _"Can you set up the calling conch in the cave?"_
Ask Telur to Move the Calling Conch |q 55384/1 |goto 49.21,62.98
step
click Elven Cookpot
|tip Inside the cave.
Take a Swig of Slen's Elixir |q 55384/2 |goto 50.86,64.89
step
talk Vim Brineheart##149906
|tip Inside the cave.
Tell him _"Checking in!"_
Check in with Vim |q 55384/3 |goto 49.47,65.31
step
click Calling Conch
|tip Inside the cave.
Test the Calling Conch |q 55384/4 |goto 49.84,64.64
step
_Next to you:_
talk Neri Sharpfin##152108
turnin Settling In##55384
accept Scouting the Pens##55385
step
Follow the path down |goto 51.69,55.41 < 20 |only if walking
Continue up the path |goto 49.67,45.06 < 20 |only if walking
clicknpc Nelu Darkclaw##152045
Find Nelu Darkclaw |q 55385/1 |goto 43.66,43.48
step
Find Sandel Fin |q 55385/2 |goto 40.64,45.41
step
Find Poen Gillbrack |q 55385/3 |goto 38.87,42.42
step
_Next to you:_
talk Neri Sharpfin##152108
turnin Scouting the Pens##55385
step
talk Lor'themar Theron##151848
accept Visions of Danger##55778 |goto Nazjatar/0 48.50,62.18
step
talk Spiritwalker Ussoh##152529
Ask him _"Lor'themar said you had a vision you wished to share with me?"_
Watch the dialogue
Speak with Spiritwalker Ussoh |q 55778/1 |goto 48.36,62.16
step
talk Lor'themar Theron##151848
turnin Visions of Danger##55778 |goto Nazjatar/0 48.50,62.18
Accept Old Allies |condition haveq(55781,55780) or completedq(55781,55780) |goto 48.50,62.18 |or
'|accept Old Allies##55781 |or
'|accept Old Allies##55780 |or
step
talk Nathanos Blightcaller##135691
Tell him _"Lor'themar is building a team to free Baine."_
Inform Nathanos of Lor'themar's Plan |q 55780/1 |goto 50.88,45.62 |or
|tip
Click Here to Change Loyalty |confirm |or
|tip Skipping this objective will cause you to change your loyalty from Sylvanas to Saurfang.
|only if haveq(55780) or completedq(55780)
step
talk Thrall##152977
Tell him _"I am with you."_
Speak with Thrall |q 55781/1 |goto Orgrimmar/2 56.13,68.00 |only if haveq(55781) or completedq(55781)
Speak with Thrall |q 55780/2 |goto Orgrimmar/2 56.13,68.00 |only if haveq(55780) or completedq(55780)
step
talk Thrall##152977
turnin Old Allies##55781 |goto 56.13,68.00 |only if haveq(55781) or completedq(55781)
turnin Old Allies##55780 |goto 56.13,68.00 |only if haveq(55780) or completedq(55780)
Accept Stay of Execution |condition haveq(55779,55782) or completedq(55779,55782) |goto 56.13,68.00 |or
'|accept Stay of Execution##55779 |or
'|accept Stay of Execution##55782 |or
step
talk Thrall##152977 |goto 56.13,68.00
Tell him _"I am ready to go."_
Enter the Scenario |goto Baine Rescue/0 15.78,83.74 < 1000 |c |noway |q 55779 |only if haveq(55779) or completedq(55779)
Enter the Scenario |goto Baine Rescue/0 15.78,83.74 < 1000 |c |noway |q 55782 |only if haveq(55782) or completedq(55782)
step
Watch the dialogue
kill 2 Underhold Elite Guard##152282 |scenariogoal 1/45190 |goto 22.54,61.91 |q 55779 |only if haveq(55779) or completedq(55779)
kill 2 Underhold Elite Guard##152282 |scenariogoal 1/45190 |goto 22.54,61.91 |q 55782 |only if haveq(55782) or completedq(55782)
step
talk Thrall##152155
Tell him _"Understood. I'll stick close."_
Speak with Thrall |scenariogoal 2/45101 |goto 23.04,61.80 |q 55779 |only if haveq(55779) or completedq(55779)
Speak with Thrall |scenariogoal 2/45101 |goto 23.04,61.80 |q 55782 |only if haveq(55782) or completedq(55782)
step
Cross the Room with Thrall and Saurfang |scenariogoal 2/44886 |q 55779 |only if haveq(55779) or completedq(55779)
Cross the Room with Thrall and Saurfang |scenariogoal 2/44886 |q 55782 |only if haveq(55782) or completedq(55782)
|tip Stay close to Thrall.
step
talk Thrall##152155
Tell him _"I can keep them busy."_
Devise a Plan with Thrall |scenariogoal 3/44895 |goto 30.35,37.97 |q 55779 |only if haveq(55779) or completedq(55779)
Devise a Plan with Thrall |scenariogoal 3/44895 |goto 30.35,37.97 |q 55782 |only if haveq(55782) or completedq(55782)
step
talk Dark Ranger Lenara##152333
Ask her _"Yes I would. Care to duel?"_
Duel Lenara |scenariogoal 4/44931 |goto 38.53,21.37 |q 55779 |only if haveq(55779) or completedq(55779)
Duel Lenara |scenariogoal 4/44931 |goto 38.53,21.37 |q 55782 |only if haveq(55782) or completedq(55782)
|tip Talk to her again after the duel.
step
talk Dark Ranger##152409
Tell him _"Well done."_
Inspect the Troops |scenariogoal 5/45192 |goto 36.69,21.73 |count 1 |q 55779
|only if haveq(55779) or completedq(55779)
step
talk Dark Ranger##152409
Tell him _"Well done."_
Inspect the Troops |scenariogoal 5/45192 |goto 37.23,22.08 |count 2 |q 55779
|only if haveq(55779) or completedq(55779)
step
talk Dark Ranger##152409
Tell her _"Well done."_
Inspect the Troops |scenariogoal 5/45192 |goto 37.71,22.45 |count 3 |q 55779
|only if haveq(55779) or completedq(55779)
step
talk Dark Ranger##152409
Tell her _"Well done."_
Inspect the Troops |scenariogoal 5/45192 |goto 38.07,22.84 |count 4 |q 55779
|only if haveq(55779) or completedq(55779)
step
Follow Lenara |scenariogoal 5/45092 |goto 31.92,28.23 |q 55782
|only if haveq(55782) or completedq(55782)
step
talk Dark Ranger Lenara##152333
Tell her _"For the Horde."_
Speak with Lenara About the Traitors |scenariogoal 5/45091 |goto 31.92,28.23 |q 55782
|only if haveq(55782) or completedq(55782)
step
Continue Deeper into the Underhold |scenariogoal 6/44933 |goto 46.32,31.43 |q 55779 |only if haveq(55779) or completedq(55779)
Continue Deeper into the Underhold |scenariogoal 6/44933 |goto 46.32,31.43 |q 55782 |only if haveq(55782) or completedq(55782)
step
talk Thrall##152155
Tell him any dialogue choice
Speak with Thrall |scenariogoal 7/45027 |goto 50.12,32.82 |q 55779 |only if haveq(55779) or completedq(55779)
Speak with Thrall |scenariogoal 7/45027 |goto 50.12,32.82 |q 55782 |only if haveq(55782) or completedq(55782)
step
Watch the dialogue
Follow the path |goto 61.86,23.60 < 20 |walk
Reach the End of the Corridor |scenariogoal 7/44937 |goto 68.28,33.17 |q 55779 |only if haveq(55779) or completedq(55779)
Reach the End of the Corridor |scenariogoal 7/44937 |goto 68.28,33.17 |q 55782 |only if haveq(55782) or completedq(55782)
step
kill Rowa Bloodstrike##152202 |scenariogoal 8/45006 |goto 72.37,42.79 |q 55779 |only if haveq(55779) or completedq(55779)
kill Rowa Bloodstrike##152202 |scenariogoal 8/45006 |goto 72.37,42.79 |q 55782 |only if haveq(55782) or completedq(55782)
step
Reach Baine Bloodhoof |scenariogoal 9/44961 |goto 80.02,59.49 |q 55779 |only if haveq(55779) or completedq(55779)
Reach Baine Bloodhoof |scenariogoal 9/44961 |goto 80.02,59.49 |q 55782 |only if haveq(55782) or completedq(55782)
step
Kill enemies around this area
|tip Pull them to the group in the center of the room for assistance.
Defeat #3# of Sylvanas's Forces |scenariogoal 10/44962 |goto 83.45,66.89 |count 3 |q 55779 |only if haveq(55779) or completedq(55779)
Defeat #3# of Sylvanas's Forces |scenariogoal 10/44962 |goto 83.45,66.89 |count 3 |q 55782 |only if haveq(55782) or completedq(55782)
step
kill Elite Battlemage##153031
click Inhibitor Crystal
Destroy the Inhibitor Crystal |scenariogoal 10/44964 |goto 78.51,66.67 |count 1 |q 55779 |only if haveq(55779) or completedq(55779)
Destroy the Inhibitor Crystal |scenariogoal 10/44964 |goto 78.51,66.67 |count 1 |q 55782 |only if haveq(55782) or completedq(55782)
step
kill Elite Battlemage##153031
click Inhibitor Crystal
Destroy the Inhibitor Crystal |scenariogoal 10/44964 |goto 82.44,76.08 |count 2 |q 55779 |only if haveq(55779) or completedq(55779)
Destroy the Inhibitor Crystal |scenariogoal 10/44964 |goto 82.44,76.08 |count 2 |q 55782 |only if haveq(55782) or completedq(55782)
step
kill Elite Battlemage##153031
click Inhibitor Crystal
Destroy the Inhibitor Crystal |scenariogoal 10/44964 |goto 89.11,69.44 |count 3 |q 55779 |only if haveq(55779) or completedq(55779)
Destroy the Inhibitor Crystal |scenariogoal 10/44964 |goto 89.11,69.44 |count 3 |q 55782 |only if haveq(55782) or completedq(55782)
step
kill Elite Battlemage##153031
click Inhibitor Crystal
Destroy the Inhibitor Crystal |scenariogoal 10/44964 |goto 85.07,60.40 |count 4 |q 55779 |only if haveq(55779) or completedq(55779)
Destroy the Inhibitor Crystal |scenariogoal 10/44964 |goto 85.07,60.40 |count 4 |q 55782
step
kill Magister Hathorel##152199 |scenariogoal 10/44962 |goto 81.52,62.51 |count 4 |q 55779 |only if haveq(55779) or completedq(55779)
kill Magister Hathorel##152199 |scenariogoal 10/44962 |goto 81.52,62.51 |count 4 |q 55782 |only if haveq(55782) or completedq(55782)
|tip Click the button that appears on-screen during Annihilation.
step
Leave the Scenario |scenarioend |q 55779 |only if haveq(55779) or completedq(55779)
Leave the Scenario |scenarioend |q 55782 |only if haveq(55782) or completedq(55782)
step
talk Lor'themar Theron##151848
Tell him _"We were successful in rescuing Baine..."_
Speak with Lor'themar |q 55782/2 |goto Nazjatar/0 48.50,62.18
|only if haveq(55782) or completedq(55782)
step
talk Lor'themar Theron##151848
turnin Stay of Execution##55779 |goto Nazjatar/0 48.50,62.18
|only if haveq(55779) or completedq(55779)
step
talk Nathanos Blightcaller##153949
turnin Stay of Execution##55782 |goto 50.89,45.62
|only if haveq(55782) or completedq(55782)
step
You are a Saurfang Loyalist |condition completedq(55779) |only if completedq(55779)
You are a Sylvanas Loyalist |condition completedq(55782) |next "Sylvanas_Loyalist_8.2.5" |only if completedq(55782)
step
talk Lor'themar Theron##155789
accept The Eve of Battle##56496 |goto Dazar'alor/0 50.19,96.03
step
talk Lor'themar Theron##155789
Ask him _"What is Saurfang's plan?"_
Listen to Lor'themar |q 56496/1 |goto 50.19,96.03
step
talk First Arcanist Thalyssra##156119
Tell her _"Teleport me to Razor Hill."_
Ask Thalyssra for a Teleport |q 56496/2 |goto 50.25,95.99
step
label "Saurfang_Loyalist_8.2.5"
talk Varok Saurfang##155786
|tip Inside the building.
turnin Not My Warchief##57147 |goto Durotar/0 54.08,42.41
|only if haveq(57147)
step
Enter the building |goto Durotar/0 53.26,42.60 < 10 |walk
talk Varok Saurfang##155786
|tip Inside the building.
turnin The Eve of Battle##56496 |goto 54.08,42.41 |only if haveq(56496) or completedq(56496)
accept This Ain't Mine##57088 |goto 54.08,42.41
step
Leave the building |goto 53.26,42.60 < 10
click Mine-Bot 5000 Control Console
Control the Mine-Bot 5000 |q 57088/1 |goto 52.71,40.49
stickystart "Detonate_Land_Mines"
step
Follow the path |goto 52.37,36.75 < 20 |walk
Continue following the path |goto 51.74,31.77 < 20 |walk
Destroy #7# Boulders |q 57088/2 |goto 51.43,31.29
|tip Use the "Boulder Annihilation" ability on giant boulders along the narrow pass around this area.
step
label "Detonate_Land_Mines"
Detonate #9# Land Mines |q 57088/3 |goto 51.43,31.29
|tip Use the "Z.A.P.S." ability on Land Mines along the narrow pass.
|tip Keep some distance so you don't take explosive damage.
|tip They look like small machines with red blinking circular lights along the narrow pass around this area.
step
Self Destruct to Destroy the Impassable Boulders |q 57088/4 |goto 50.80,30.45
|tip Use the "Self Destruct" ability on your vehicle bar.
step
clicknpc Armored Wyvern##156366
Ride the Wyvern to the Front Line |invehicle |goto 52.09,40.02 |q 57088
step
Watch the dialogue
Reach the Front Line |outvehicle |q 57088
step
talk Varok Saurfang##155786
|tip Inside the building.
Speak with Varok Saurfang |q 57088/6 |goto Durotar War Campaign/0 41.65,55.76
step
talk Varok Saurfang##155786
|tip Inside the building.
turnin This Ain't Mine##57088 |goto 41.65,55.76
accept Saving the Siege##57090 |goto 41.65,55.76
accept Already Among Us##57091 |goto 41.65,55.76
accept Strategic Deployment##57092 |goto 41.65,55.76
stickystart "Remove_Suspicious_Crates"
stickystart "Slay_Loyalist_Combatants"
step
talk First Arcanist Thalyssra##156119
Tell her _"Saurfang has tasked you and the Lord Admiral with shielding our army against magical assault."_
Speak with First Arcanist Thalyssra |q 57092/1 |goto 48.99,55.59
step
talk Lor'themar Theron##155789
Tell him _"Saurfang and King Wrynn have assigned your forces to the northern gate."_
Speak with Lor'themar |q 57092/3 |goto 36.11,64.12
step
talk Mayla Highmountain##156120
Tell her _"High Chieftain, you  have been tasked with defending the skies above Thunder Bluff."_
Speak with Mayla Highmountain |q 57092/2 |goto 32.08,82.73
step
label "Remove_Suspicious_Crates"
click Suspicious Crate+
|tip They look like small brown crates smoking purple on the ground around this area.
Remove #8# Suspicious Crates |q 57090/1 |goto 42.66,66.25
step
label "Slay_Loyalist_Combatants"
Kill enemies around this area
Slay #10# Loyalist combatants |q 57091/1 |goto 42.66,66.25
step
talk Varok Saurfang##155786
|tip Inside the building.
turnin Saving the Siege##57090 |goto 41.62,55.74
turnin Already Among Us##57091 |goto 41.62,55.74
turnin Strategic Deployment##57092 |goto 41.62,55.74
accept Before the Gates of Orgrimmar##57093 |goto 41.62,55.74
step
talk Varok Saurfang##155786
|tip Inside the building.
Tell him _"I am ready. For the Horde!"_
Speak with Saurfang to Begin the Battle |q 57093/1 |goto 41.62,55.74
step
talk Lor'themar Theron##155789
turnin Before the Gates of Orgrimmar##57093 |goto Durotar War Campaign/0 36.11,64.10
accept The Price of Victory##57094 |goto 36.11,64.10
step
talk Baine Bloodhoof##156181
|tip Inside the building.
Tell him _"Saurfang challenged Sylvanas to mak'gora. And then..."_
Speak with Baine Bloodhoof |q 57094/1 |goto Thunder Bluff/0 76.46,29.12
step
Return to Orgrimmar |goto Orgrimmar/1 51.79,58.54 < 500 |c |q 57094
step
talk Lor'themar Theron##155789
turnin The Price of Victory##57094 |goto Durotar War Campaign/0 34.92,60.10
accept Old Soldier##57095 |goto 34.92,60.10
step
talk Lor'themar Theron##155789
Tell him _"Lead on."_
Speak with Lor'themar to Begin Honoring Saurfang |q 57095/1 |goto 34.92,60.10
step
talk Thrall##155787
turnin Old Soldier##57095 |goto Orgrimmar/1 50.03,76.57 |next "Defeat_Jaina_Proudmoore"
step
label "Sylvanas_Loyalist_8.2.5"
step
talk Nathanos Blightcaller##135691
accept They Move Against Us##56495 |goto Zuldazar/0 58.44,62.67
step
Enter the building |goto Orgrimmar/1 49.83,75.46
Meet Sylvanas in Orgrimmar |goto Orgrimmar War Campaign/0 48.52,70.81 < 1000 |noway |c |q 56495
step
talk Lady Sylvanas Windrunner##156423
|tip Inside the building.
Tell her _"Reporting for duty."_
Speak with Sylvanas in Orgrimmar |q 56495/1 |goto Orgrimmar War Campaign/0 48.52,70.81
step
talk Dark Ranger Lenara##156425
|tip Inside the building.
Ask her _"What is Saurfang's plan?"_
Listen to Lenara's Report |q 56495/2 |goto 48.46,71.07
step
talk Lady Sylvanas Windrunner##156423
turnin They Move Against Us##56495 |goto 48.52,70.81
accept Leaders of the Horde##56833 |goto 48.52,70.81
step
talk Overlord Geya'rah##156123
Ask her _"Have you completed your preparations for the battle?"_
Speak with Overlord Geya'rah |q 56833/1 |goto 51.05,82.99
step
talk Trade Prince Gallywix##156122
Ask him _"Have you completed your preparations for the battle?"_
Speak with Gallywix |q 56833/2 |goto 36.63,78.00
step
Enter the building |goto 72.15,45.18 < 10 |walk
talk Eitrigg##156124
|tip Inside the building.
Tell him _"You were seen meeting with Saurfang in secret."_
Then tell him _"Never, traitor!"_
|tip
|tip Or
|tip
Tell him _"This is madness. We must leave Orgrimmar at once."_
|tip Choosing this dialogue option will cause you to switch loyalty from Sylvanas to Saurfang.
Speak with Eitrigg |q 56833/3 |goto 74.21,46.08
step
talk Eitrigg##156124
|tip Inside the building.
turnin Leaders of the Horde##56833 |goto 74.21,46.08
accept Traitors In Our Midst##57130 |goto 74.21,46.08 |only if questpossible
accept Not My Warchief##57147 |goto 74.21,46.08 |only if questpossible
'|condition haveq(57130,57147)
step
talk Eitrigg##156124
|tip Inside the building.
Speak with Eltrigg |q 57147/1 |goto 74.21,46.08
|only if haveq(57147)
step
Reach the Flightmaster |q 57147/2 |goto 49.69,58.96
|only if haveq(57147)
step
kill Deathguard Razza##156847 |q 57147/3 |goto 50.03,58.37
|only if haveq(57147)
step
talk Doras##156845
Take a Wyvern to Razor Hill |q 57147/4 |goto 49.69,58.96 |next "Saurfang_Loyalist_8.2.5"
|only if haveq(57147)
step
talk Eitrigg##156124
|tip Inside the building.
Tell him _"I will not allow you to betray the Horde. For the Dark Lady!"_
Speak with Eitrigg |q 57130/1 |goto 74.21,46.08
step
kill Eitrigg##Eitrigg |q 57130/2 |goto 74.21,46.08
|tip Inside the building.
step
talk Eitrigg##156124
|tip Inside the building.
Ask him _"On your feet! Or do I have to drag you?"_
Restrain Eitrigg |q 57130/3 |goto 73.86,46.08
step
Drag the traitor before Nathanos |q 57130/4 |goto 50.44,76.20
step
talk Nathanos Blightcaller##156440
turnin Traitors In Our Midst##57130 |goto 50.44,76.21
accept Siegebreakers##57148 |goto 50.44,76.21
accept Propaganda Takedown##57149 |goto 50.44,76.21
accept Militia##57150 |goto 50.44,76.21
stickystart "Rally_30_Citizens"
step
click WANTED: Another Warchief!
Burn the Propaganda |q 57149/1 |goto 53.02,77.79 |count 1
step
click Dark Rangers, Dark Times
Burn the Propaganda |q 57149/1 |goto 46.33,76.66 |count 2
step
click Warchief or War Criminal?
Burn the Propaganda |q 57149/1 |goto 43.49,72.75 |count 3
step
click The Death of the Horde
Burn the Propaganda |q 57149/1 |goto 42.94,69.60 |count 4
step
click Dark Rangers, Dark Times
Burn the Propaganda |q 57149/1 |goto 40.72,76.08 |count 5
step
click Do Not Trust Sylvanas!
|tip In the tunnel.
Burn the Propaganda |q 57149/1 |goto 35.29,67.47 |count 6
step
label "Rally_30_Citizens"
Rally #30# Citizens |q 57150/1 |goto 47.11,75.66
|tip Use the "Rallying Cry" ability on-screen near groups of Orgrimmar Citizens.
step
use Put on Disguise##171365
Put on the Disguise |havebuff spell:306920 |q 57148
step
click Explosive Crate+
|tip They look like small square crates on the ground around this area.
|tip Avoid the Overlord's Guard with big circles around them or they will remove your disguise.
Set #8# Bombs |q 57148/1 |goto Durotar War Campaign/0 34.93,71.36
step
talk Nathanos Blightcaller##156440
turnin Siegebreakers##57148 |goto Orgrimmar War Campaign/0 50.12,91.30
turnin Propaganda Takedown##57149 |goto 50.12,91.30
turnin Militia##57150 |goto 50.12,91.30
accept A Line in the Sand##57151 |goto 50.12,91.30
step
talk Nathanos Blightcaller##156440
Tell him _"I am ready. For the Horde!"_
Speak with Nathanos |q 57151/1 |goto 50.12,91.30
step
talk Dark Ranger Lenara##156425
turnin A Line in the Sand##57151 |goto 49.97,91.34
accept Most Loyal##57152 |goto 49.97,91.34
step
use the Cracked Hearthstone##172203
Use Cracked Hearthstone to Reach Tranquillien |q 57152/2
step
talk Lady Sylvanas Windrunner##156507
Tell her _"I am here as you requested."_
Speak with Sylvanas Windrunner |q 57152/1 |goto Ghostlands/0 18.80,58.54
step
talk Dark Ranger Lenara##156425
turnin Most Loyal##57152 |goto 18.65,58.36
step
label "Defeat_Jaina_Proudmoore"
_Enter the Battle of Dazar'alor Raid:_
|tip Use the Group Finder to enter the "Victory or Death" wing of the Battle of Dazar'alor raid.
|tip You can also form your own group and enter the raid manually.
kill Lady Jaina Proudmoore##147494
|tip She is the final boss in the raid.
Defeat Jaina Proudmoore in the Battle of Dazar'alor |q 54282/1
step
talk Nathanos Blightcaller##135691
turnin Battle of Dazar'alor##54282 |goto Zuldazar/0 58.44,62.67
step
_Congratulations!_
You completed the War Campaign.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Warfronts\\Arathi Highlands Warfront Extra Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various quests in Arathi Highlands"..
"when your faction cannot access the warfront.",
condition_suggested=function() return level >= 50 and not completedq(53150) and completedq(53212) end,
condition_valid=function() return completedq(53212) end,
condition_valid_msg="You must first complete the \"Warfronts Introduction Quests\" guide!",
condition_end=function() return completedq(53150) end,
},[[
step
talk Druza Netherfang##143388
accept The League Will Lose##53154 |goto Dazar'alor/0 51.83,94.45
accept Twice-Exiled##53193 |goto 51.83,94.45
accept Executing Exorcisms##53190 |goto 51.83,94.45
accept Boulderfist Beatdown##53148 |goto 51.83,94.45
accept Sins of the Syndicate##53173 |goto 51.83,94.45
accept Wiping Out the Witherbark##53150 |goto 51.83,94.45
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Travel to the Present |condition ZGV.InPhase('New Arathi') |goto Arathi Highlands/0 38.25,90.09 |q 53150
step
kill 20 Vengeful Ghost##142723 |q 53190/1 |goto 19.41,64.46
step
Kill Boulderfist enemies around this area
Slay #20# Boulderfist Clan Ogres |q 53148/1 |goto 48.35,76.77
step
Kill Witherbark enemies around this area
Slay #20# Witherbark Tribe Trolls |q 53150/1 |goto 64.65,71.65
step
Kill Syndicate enemies around this area
Slay #20# Syndicate Members |q 53173/1 |goto 52.89,58.02
step
Kill Thundering enemies around this area
Slay #20# Elementals |q 53193/1 |goto 46.26,52.00
step
Kill Arathor enemies around this area
Slay #20# League of Arathor |q 53154/1 |goto 49.73,39.24
step
talk Druza Netherfang##143381
turnin The League Will Lose##53154 |goto 27.30,29.80
turnin Twice-Exiled##53193 |goto 27.30,29.80
turnin Executing Exorcisms##53190 |goto 27.30,29.80
turnin Boulderfist Beatdown##53148 |goto 27.30,29.80
turnin Sins of the Syndicate##53173 |goto 27.30,29.80
turnin Wiping Out the Witherbark##53150 |goto 27.30,29.80
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Warfronts\\Darkshore Warfront Extra Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various quests in Darkshore"..
"when your faction cannot access the warfront.",
condition_suggested=function() return level >= 50 and not completedq(54845) and completedq(53212) and completedq(54416) end,
condition_valid=function() return completedq(53212) and completedq(54416) end,
condition_valid_msg="You must first complete the \"Warfronts Introduction Quests\" and \"Trouble in Darkshore\" guides!",
condition_end=function() return completedq(54845) end,
},[[
step
talk Zarvik Blastwix##149412
accept Buzzkill##54845 |goto Darkshore/0 46.40,35.11
step
talk Deathstalker Commander Belmont##149410
accept Remaining Threats##54843 |goto 46.99,35.53
step
talk Dark Ranger Velonara##149411
accept Tapping the Breach##54844 |goto 47.93,36.20
step
kill Thelar Moonstrike##147435 |q 54843/1 |goto 62.13,16.52 |count 1
step
kill Athrikus Narassin##147708 |q 54843/1 |goto 58.51,24.35 |count 2
step
click Buzzbox 854##319207
|tip Kill the Automated Sentry Bots that attack.
Destroy Buzzbox 854 |q 54845/1 |goto 55.58,23.89 |count 1
step
kill Alash'anir##148787 |q 54843/1 |goto 56.46,30.76 |count 3
step
Kill Twilight enemies around this area
Slay #10# Twilight Elementalists |q 54844/1 |goto 52.50,29.81 |count 10
step
kill Hydrath##147240 |q 54843/1 |goto 52.42,32.18 |count 4
step
kill Shattershard##147751 |q 54843/1 |goto 43.47,29.41 |count 5
step
kill Scalefiend##149665 |q 54843/1 |goto 47.63,44.52 |count 6
step
click Buzzbox 111##319208
|tip Kill the Automated Sentry Bots that attack.
Destroy Buzzbox 111 |q 54845/1 |goto 41.25,47.66 |count 2
step
Kill Twilight enemies around this area
Slay #10# Twilight Elementalists |q 54844/1 |goto 44.07,52.94 |count 20
step
kill Cyclarus##147241 |q 54843/1 |goto 43.72,53.57 |count 7
step
Enter the cave |goto 47.18,56.01 < 10 |walk
kill Granokk##147261 |q 54843/1 |goto 47.57,55.82 |count 8
step
kill Stonebinder Ssra'vess##147332 |q 54843/1 |goto 45.50,58.98 |count 9
step
click Buzzbox 627##319209
|tip Kill the Automated Sentry Bots that attack.
Destroy Buzzbox 627 |q 54845/1 |goto 36.92,65.48 |count 3
step
kill Onu##147758 |q 54843/1 |goto 45.22,74.94 |count 10
step
click Buzzbox 456##319210
|tip Kill the Automated Sentry Bots that attack.
Destroy Buzzbox 456 |q 54845/1 |goto 40.83,81.18 |count 4
step
Destroy #4# Buzzboxes |q 54845/1
step
kill Twilight Prophet Graeme##147942 |q 54843/1 |goto 40.61,82.69 |count 11
step
kill Soggoth the Slitherer##147897 |q 54843/1 |goto 40.61,85.33 |count 12
step
talk Dark Ranger Velonara##149411
turnin Tapping the Breach##54844 |goto 47.93,36.20
step
talk Deathstalker Commander Belmont##149410
turnin Remaining Threats##54843 |goto 46.99,35.53
step
talk Zarvik Blastwix##149412
turnin Buzzkill##54845 |goto 46.40,35.11
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Warfronts\\Warfronts Introduction Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the Warfronts Introduction quests for Battle for Azeroth.",
condition_suggested=function() return level >= 50 and not completedq(53212) end,
},[[
step
Reach Level 50 |ding 50
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(52450)
|tip Use the "War Campaign" guide to accomplish this.
step
talk Throk##138949
turnin The Warfront Looms##53207 |goto Dazar'alor/0 52.93,94.49 |only if haveq(53207) or completedq(53207)
accept To the Front##53208 |goto Dazar'alor/0 52.93,94.49
step
Does the Horde Currently Control the Warfront?
|tip The following quests change slightly, depending if your faction controls the warfront or not.
Yes |confirm |or |next "Horde_Controls_Warfront" |q 53212
No |confirm |or |next "Horde_Doesnt_Control_Warfront" |q 53212
step
label "Horde_Controls_Warfront"
talk Druza Netherfang##143388 |goto Dazar'alor/0 51.83,94.46
Tell her _"Send me to Arathi Highlands!"_
Teleport to Ar'gorok |goto Arathi Highlands/0 27.40,29.97 < 10 |noway |c |q 53208
step
talk Wistel Silversnitch##143019
turnin To the Front##53208 |goto 27.53,31.84
accept Touring the Front##53210 |goto 27.53,31.84
step
talk Flightgineer Krazzle##143323
Tell him _"Wistel said you could give me a tour of the area."_
Begin Riding the Rocket |invehicle |goto 25.88,29.61 |q 53210
step
Watch the dialogue
View the Battleground with Flightgineer Krazzle |q 53210/3 |goto 25.68,35.79
step
Watch the dialogue
Return to the Ground |outvehicle |goto 25.89,29.97 |q 53210
step
Enter the mine |goto 33.80,36.64 < 10 |walk
Follow the path down |goto 34.23,35.03 < 10 |walk
Run down the stairs |goto 32.90,35.40 < 10 |walk
talk Foreman Drogg##143372
|tip Inside the mine.
Tell him _"Thank you."_
Check on Foreman Drogg |q 53210/1 |goto 33.25,38.04
step
Run up the stairs |goto 32.80,36.72 < 10 |walk
Follow the path up |goto 33.32,35.21 < 10 |walk
Leave the mine |goto 33.72,36.72 < 10 |c |q 53210
step
talk Graul##143373
Tell him _"Thank you."_
Check on Graul |q 53210/2 |goto 18.14,28.76
step
talk Wistel Silversnitch##143019
turnin Touring the Front##53210 |goto 27.53,31.84
accept Back to Zuldazar##53212 |goto 27.53,31.84
step
talk Druza Netherfang##143381 |goto 27.29,29.80
Tell her _"Send me to Zuldazar!"_
Return to Zuldazar |goto Dazar'alor/0 51.93,94.20 < 10 |noway |c |q 53212
|next "Warfront_Intro_End"
step
label "Horde_Doesnt_Control_Warfront"
talk Druza Netherfang##143388 |goto Dazar'alor/0 51.83,94.46
Tell her _"Send me to Arathi Highlands!"_
Teleport to Ar'gorok |goto Arathi Highlands/0 26.38,35.77 < 10 |noway |c |q 53208
step
talk Wistel Silversnitch##143019
turnin To the Front##53208 |goto 26.07,35.56
accept Touring the Front##53210 |goto 26.07,35.56
step
talk Flightgineer Krazzle##143323
Tell him _"Wistel said you could give me a tour of the area."_
Begin Riding the Rocket |invehicle |goto 25.96,36.12 |q 53210
step
Watch the dialogue
View the Battleground with Flightgineer Krazzle |q 53210/3 |goto 25.68,35.79
step
Watch the dialogue
Return to the Ground |outvehicle |goto 26.07,36.34 |q 53210
step
talk Foreman Drogg##143372
Tell him _"Thank you."_
Check on Foreman Drogg |q 53210/1 |goto 33.30,36.30
step
talk Graul##143373
Tell him _"Thank you."_
Check on Graul |q 53210/2 |goto 20.91,25.91
step
talk Wistel Silversnitch##143019
turnin Touring the Front##53210 |goto 26.07,35.56
accept Back to Zuldazar##53212 |goto 26.07,35.56
step
talk Druza Netherfang##143381 |goto 26.67,35.79
Tell her _"Send me to Zuldazar!"_
Return to Zuldazar |goto Dazar'alor/0 51.93,94.20 < 10 |noway |c |q 53212
|next "Warfront_Intro_End"
step
label "Warfront_Intro_End"
talk Throk##138949
turnin Back to Zuldazar##53212 |goto Dazar'alor/0 52.92,94.52
step
_Congratulations!_
You unlocked Warfronts.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Advanced Adventurer Augment",{
author="support@zygorguides.com",
description="\nThis blueprint can be purchased from the Stolen Royal Vendorbot on Mechagon Island for 2,000 gold, adjusted for reputation, after "..
"reaching Honored with the Rustbolt Resistance.",
condition_suggested=function() return level >= 50 and not completedq(56145) end,
condition_end=function() return completedq(56145) end,
},[[
step
Reach Honored with the Rustbolt Resistance |condition rep('Rustbolt Resistance') >= Honored
|tip Use the "Rustbolt Resistance" reputation to accomplish this.
step
talk Stolen Royal Vendorbot##150716
buy 1 Blueprint: Advanced Adventurer Augment##169112 |goto Mechagon Island/0 73.69,36.89 |q 56145 |future
|tip This blueprint costs 2,000 gold, adjusted for reputation.
step
use the Blueprint: Advanced Adventurer Augment##169112
accept Blueprint: Advanced Adventurer Augment##56145
step
talk Pascal-K1N6##150359
turnin Blueprint: Advanced Adventurer Augment##56145 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Advanced Adventurer Augment" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Annoy-o-Tron Gang",{
author="support@zygorguides.com",
description="\nTo collect this blueprint, you will farm machine parts at Junkwatt Depot and exchange them for Recycling Requisitions.",
condition_suggested=function() return level >= 50 and not completedq(55083) end,
condition_end=function() return completedq(55083) end,
},[[
step
label "Farm_Recyclable_Parts_Materials"
Kill enemies around this area
collect 30 Hardened Spring##168217 |goto Mechagon Island/0 55.56,60.24 |or 3
collect 10 Tempered Plating##168216 |goto 55.56,60.24 |or 3
collect 5 Machined Gear Assembly##168215 |goto 55.56,60.24 |or 3
'|condition completedq(55083) |next "Congratulations_Step" |or
step
use the Hardened Spring##168217
collect 1 Bundle of Recyclable Parts##168946
step
click Recyclerizer DX-82
accept More Recycling##55743 |goto 55.85,62.67 |only if default
accept Even More Recycling##56116 |goto 55.85,62.67 |only if completedq(55743)
step
use the Strange Recycling Requisition##168266 |only if itemcount (168266) >= 1
use the Recycling Requisition##168264 |only if itemcount (168264) >= 1
collect 1 Blueprint: Annoy-o-Tron Gang##169175 |or
'|condition itemcount(168266) == 0 and itemcount(168264) == 0 |next "Farm_Recyclable_Parts_Materials" |or
step
use the Blueprint: Annoy-o-Tron Gang##169175
accept Blueprint: Annoy-o-Tron Gang##55083
step
talk Pascal-K1N6##150359
turnin Blueprint: Annoy-o-Tron Gang##55083 |goto 71.35,32.28
step
label "Congratulations_Step"
_Congratulations!_
You Learned the "Annoy-o-Tron Gang" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Anti-Gravity Pack",{
author="support@zygorguides.com",
description="\nThis blueprint drops from Rustfeather. Rustfeather is a rare spawn with a timer of 30-60 minutes.",
condition_suggested=function() return level >= 50 and not completedq(55081) end,
condition_end=function() return completedq(55081) end,
},[[
step
kill Rustfeather##152182
|tip Rustfeather is a rare spawn with a timer of 30-60 minutes.
collect 1 Blueprint: Anti-Gravity Pack##169173 |goto Mechagon Island/0 65.84,79.14 |q 55081 |future
|tip This blueprint is common, but not a guaranteed drop.
step
use the Blueprint: Anti-Gravity Pack##169173
accept Blueprint: Anti-Gravity Pack##55081
step
talk Pascal-K1N6##150359
turnin Blueprint: Anti-Gravity Pack##55081 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Anti-Gravity Pack" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Battle Box",{
author="support@zygorguides.com",
description="\nThis blueprint can be purchased from the Stolen Royal Vendorbot on Mechagon Island for 1,000 gold, adjusted for reputation, after "..
"reaching Exalted with the Rustbolt Resistance.",
condition_suggested=function() return level >= 50 and not completedq(55072) end,
condition_end=function() return completedq(55072) end,
},[[
step
Reach Exalted with the Rustbolt Resistance |condition rep('Rustbolt Resistance') >= Exalted
|tip Use the "Rustbolt Resistance" reputation to accomplish this.
step
talk Stolen Royal Vendorbot##150716
buy 1 Blueprint: Battle Box##168493 |goto Mechagon Island/0 73.69,36.89 |q 55072 |future
|tip This blueprint costs 1,000 gold, adjusted for reputation.
step
use the Blueprint: Battle Box##168493
accept Blueprint: Battle Box##55072
step
talk Pascal-K1N6##150359
turnin Blueprint: Battle Box##55072 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Battle Box" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: BAWLD-371",{
author="support@zygorguides.com",
description="\nThis blueprint drops from the rare spawn Mr. Fixthis in Junkwatt Depot.",
condition_suggested=function() return level >= 50 and not completedq(55068) end,
condition_end=function() return completedq(55068) end,
},[[
step
kill Mr. Fixthis##151627
|tip On top of the tower.
collect 1 Blueprint: BAWLD-371##168248 |goto Mechagon Island/0 61.03,61.48 |q 55068 |future
|tip This blueprint is common, but not a guaranteed drop.
step
use the Blueprint: BAWLD-371##168248
accept Blueprint: BAWLD-371##55068
step
talk Pascal-K1N6##150359
turnin Blueprint: BAWLD-371##55068 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "BAWLD-371" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Beastbot Powerpack",{
author="support@zygorguides.com",
description="\nThis blueprint can be collected when the Malfunctioning Beastbot has spawned in Bondo's Yard on Mechagon Island.",
condition_suggested=function() return level >= 50 and not completedq(55066) end,
condition_end=function() return completedq(55066) end,
},[[
step
click Powerpack Blueprints
|tip This blueprint is only available to loot when the Malfunctioning Beastbot rare mob has spawned.
|tip Malfunctioning Beastbot is under the small hanger to the left of the blueprints.
collect Blueprint: Beastbot Powerpack##168219 |goto Mechagon Island/0 60.88,41.49 |q 55066 |future
step
use the Blueprint: Beastbot Powerpack##168219
accept Blueprint: Beastbot Powerpack##55066
step
talk Pascal-K1N6##150359
turnin Blueprint: Beastbot Powerpack##55066 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Beastbot Powerpack" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Blue Spraybot",{
author="support@zygorguides.com",
description="\nThis blueprint can be collected from the Crazed Trogg rare when it has spawned hating the color blue on Mechagon Island.",
condition_suggested=function() return level >= 50 and not completedq(55077) end,
condition_end=function() return completedq(55077) end,
},[[
step
kill Crazed Trogg##152570
|tip Inside the cave.
|tip Whichever color the trogg says he hates is the color paint you need to cover yourself in.
|tip To get this blueprint, you will need to wait until he spawns hating the color blue.
Get the paint here [63.39,41.67]
collect Blueprint: Blue Spraybot##169169 |goto Mechagon Island/0 82.45,20.96 |q 55077 |future
step
use the Blueprint: Blue Spraybot##169169
accept Blueprint: Blue Spraybot##55077
step
talk Pascal-K1N6##150359
turnin Blueprint: Blue Spraybot##55077 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Blue Spraybot" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Canned Minnows",{
author="support@zygorguides.com",
description="\nThis blueprint drops from Deepwater Maw. Deepwater Maw is a rare spawn summoned with a Hundred-Fathom Lure.",
condition_suggested=function() return level >= 50 and not completedq(55057) end,
condition_end=function() return completedq(55057) end,
},[[
step
click Hundred-Fathom Lure |goto Mechagon Island/0 35.26,42.90
|tip You will need a Hundred-Fathom Lure to summon this rare.
|tip These can be crafted with the schematic at Pascal-K1N6 in Rustbolt for 1 S.P.A.R.E. Crate and 200 Ionized Minnows.
|tip The final portion of the "Mechagon Island" leveling guide details this questline.
|tip You can also wait for someone else to summon it.
kill Deepwater Maw##151569
collect 1 Blueprint: Canned Minnows##167836 |goto 34.78,43.36 |q 55057 |future
|tip This blueprint is common, but not a guaranteed drop.
step
use the Blueprint: Canned Minnows##167836
accept Blueprint: Canned Minnows##55057
step
talk Pascal-K1N6##150359
turnin Blueprint: Canned Minnows##55057 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Canned Minnows" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Emergency Powerpack",{
author="support@zygorguides.com",
description="\nThis blueprint has a chance to drop from Cogfrenzy's Construction Toolkit after completing the "..
"\"Cogfrenzy's Construction Frenzy\" daily quest.",
condition_suggested=function() return level >= 50 and not completedq(55060) end,
condition_end=function() return completedq(55060) end,
},[[
step
label "Accept_Cogfrenzy's_Construction_Frenzy"
talk Walton Cogfrenzy##154967
accept Cogfrenzy's Construction Frenzy##56405 |goto Mechagon Island/0 73.49,33.39 |or
|tip This is a daily quest and will not always be available.
'|condition completedq(56405) |next "Congratulations_Step" |or
stickystart "Complete_A_Construction_Project"
step
Contribute to Construction Projects |q 56405/1
|tip Construction projects can be found all over Mechagon Island.
|tip You will need spare parts and/or energy cells.
step
label "Complete_A_Construction_Project"
Complete a Construction Project |q 56405/2
|tip Construction projects can be found all over Mechagon Island.
|tip You will need spare parts and/or energy cells.
step
talk Walton Cogfrenzy##154967
turnin Cogfrenzy's Construction Frenzy##56405 |goto 73.49,33.39
step
use Cogfrenzy's Construction Toolkit##169471
collect 1 Blueprint: Emergency Powerpack##167845 |or
'|condition itemcount(169471) == 0 |next "Accept_Cogfrenzy's_Construction_Frenzy" |or
step
use the Blueprint: Emergency Powerpack##167845
accept Blueprint: Emergency Powerpack##55060
step
talk Pascal-K1N6##150359
turnin Blueprint: Emergency Powerpack##55060 |goto 71.35,32.28
step
label "Congratulations_Step"
_Congratulations!_
You Learned the "Emergency Powerpack" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Emergency Repair Kit",{
author="support@zygorguides.com",
description="\nThis blueprint has a chance to drop from Cogfrenzy's Construction Toolkit after completing the "..
"\"Cogfrenzy's Construction Frenzy\" daily quest.",
condition_suggested=function() return level >= 50 and not completedq(55059) end,
condition_end=function() return completedq(55059) end,
},[[
step
label "Accept_Cogfrenzy's_Construction_Frenzy"
talk Walton Cogfrenzy##154967
accept Cogfrenzy's Construction Frenzy##56405 |goto Mechagon Island/0 73.49,33.39 |or
|tip This is a daily quest and will not always be available.
'|condition completedq(55059) |next "Congratulations_Step" |or
stickystart "Complete_A_Construction_Project"
step
Contribute to Construction Projects |q 56405/1
|tip Construction projects can be found all over Mechagon Island.
|tip You will need spare parts and/or energy cells.
step
label "Complete_A_Construction_Project"
Complete a Construction Project |q 56405/2
|tip Construction projects can be found all over Mechagon Island.
|tip You will need spare parts and/or energy cells.
step
talk Walton Cogfrenzy##154967
turnin Cogfrenzy's Construction Frenzy##56405 |goto 73.49,33.39
step
use Cogfrenzy's Construction Toolkit##169471
collect 1 Blueprint: Emergency Repair Kit##167844 |or
'|condition itemcount(167844) == 0 |next "Accept_Cogfrenzy's_Construction_Frenzy" |or
step
use the Blueprint: Emergency Repair Kit##167844
accept Blueprint: Emergency Repair Kit##55059
step
talk Pascal-K1N6##150359
turnin Blueprint: Emergency Repair Kit##55059 |goto 71.35,32.28
step
label "Congratulations_Step"
_Congratulations!_
You Learned the "Emergency Repair Kit" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Emergency Rocket Chicken",{
author="support@zygorguides.com",
description="\n.",
condition_suggested=function() return level >= 50 and not completedq(55071) end,
condition_end=function() return completedq(55071) end,
},[[
step
Confirm that Oglethorpe Obnoticus is in town
|tip This rare will only spawn when he is in town for the day.
Click Here When He Is |confirm |goto Mechagon Island/0 72.79,37.98 |q 55071 |future
step
kill OOX-Fleetfoot/MG##151159
|tip This is a small mechanical chicken that runs all over the main island.
|tip You will need to search for and kill it.
|tip It will keep running, so keep it snared.
|tip An Anti-Gravity pack is best for this.
Click Here When the Alarm Sounds |confirm |goto 64.21,47.12 |q 55071 |future
|tip OOX will yell "KRAAKAAWW!!"
step
kill OOX-Avenger/MG##151296
collect 1 Blueprint: Emergency Rocket Chicken##168492 |goto 56.77,39.89 |q 55071 |future
step
use the Blueprint: Emergency Rocket Chicken##168492
accept Blueprint: Emergency Rocket Chicken##55071
step
talk Pascal-K1N6##150359
turnin Blueprint: Emergency Rocket Chicken##55071 |goto Mechagon Island/0 71.35,32.28
step
_Congratulations!_
You Learned the "Emergency Rocket Chicken" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Encrypted Black Market Radio",{
author="support@zygorguides.com",
description="\nThis blueprint is offered as a follow-up quest from Steelsage Gao after completing three of the four possible daily quests she offers.",
condition_suggested=function() return level >= 50 and not completedq(55084) end,
condition_end=function() return completedq(55084) end,
},[[
step
label "Accept_Other_Interests"
talk Steelsage Gao##152575
accept Other Interests##56174 |only if questpossible
accept Other Interests##55815 |only if questpossible
accept Other Interests##56172 |only if questpossible
accept Other Interests##56173 |only if questpossible
Accept a Quest from Gao |condition false |goto Mechagon Island/0 71.77,35.33 |or
|tip She has a chance to visit Rustbolt each day.
|tip You must complete three of the four possible "Other Interests" quests she offers.
'|condition completedq(55084) |next "Congratulations_Step" |or
step
talk Hurlgrl##151953
buy 20 Sweet Sea Vegetable##167915 |goto Nazjatar/0 47.78,63.12 |q 56174
|only if haveq(56174)
step
talk Mrrglrlr##151950
|tip It runs around the fire.
buy 5 Disintegrating Sand Sculpture##167903 |q 56174/1 |goto 48.62,62.51
|only if haveq(56174)
step
talk Grrmrlg##151951
buy 105 Flatulent Fish##167906 |goto 47.72,61.43 |q 55815
|only if haveq(55815)
step
talk Flrgrrl##151952
|tip It swims around in the water.
buy 15 Bag of Who-Knows-What##167910 |goto 46.99,62.52 |q 55815
|only if haveq(55815)
step
talk Hurlgrl##151953
buy 15 Jar of Fish Faces##167914 |goto 47.78,63.12 |q 55815
|only if haveq(55815)
step
talk Mrrglrlr##151950
|tip It runs around the fire.
buy 5 Particularly Dense Rock##167902 |q 55815/1 |goto 48.15,62.38
|only if haveq(55815)
step
talk Mrrglrlr##151950
|tip It runs around the fire.
buy 15 Slimy Naga Eyeball##167896 |goto 48.15,62.38 |q 56172
|only if haveq(56172)
step
talk Grrmrlg##151951
buy 5 Curious Murloc Horn##167905 |q 56172/1 |goto 47.72,61.44
|only if haveq(56172)
step
talk Flrgrrl##151952
|tip It swims around in the water.
buy 5 Unidentified Mass##167912 |q 56173/1 |goto 46.99,62.52
|only if haveq(56173)
step
talk Steelsage Gao##152575
turnin Other Interests##56174 |goto 73.55,34.29 |only if haveq(56174) or completedq(56174)
turnin Other Interests##55815 |goto 73.55,34.29 |only if haveq(55815) or completedq(55815)
turnin Other Interests##56172 |goto 73.55,34.29 |only if haveq(56172) or completedq(56172)
turnin Other Interests##56173 |goto 73.55,34.29 |only if haveq(56173) or completedq(56173)
step
talk Steelsage Gao##152575
accept Blueprint: Encrypted Black Market Radio##55084 |goto Mechagon Island/0 73.56,34.29 |or
|tip You must complete three of the four possible "Other Interests" quests she offers.
|tip This guide will automatically reset when she has another chance to appear.
'|condition not completedq(56174,55815,56172,56173) |next "Accept_Other_Interests" |or
step
talk Pascal-K1N6##150359
turnin Blueprint: Encrypted Black Market Radio##55084 |goto 71.35,32.28
step
label "Congratulations_Step"
_Congratulations!_
You Learned the "Encrypted Black Market Radio" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Experimental Adventurer Augment",{
author="support@zygorguides.com",
description="\nThis blueprint has a small chance to drop from any rare enemy on Mechagon Island.",
condition_suggested=function() return level >= 50 and not completedq(56087) end,
condition_end=function() return completedq(56087) end,
},[[
step
Kill Rare enemies on Mechagon Island
|tip Use the POI system to find and kill them.
|tip This blueprint has a small chance to drop from any rare enemy on Mechagon Island.
collect Blueprint: Experimental Adventurer Augment##168908 |goto Mechagon Island/0 71.77,35.33 |q 56087 |future
step
use the Blueprint: Experimental Adventurer Augment##168908
accept Blueprint: Experimental Adventurer Augment##56087
step
talk Pascal-K1N6##150359
turnin Blueprint: Experimental Adventurer Augment##56087 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Experimental Adventurer Augment" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Extraordinary Adventurer Augment",{
author="support@zygorguides.com",
description="\nThis blueprint can be purchased from the Stolen Royal Vendorbot on Mechagon Island for 2,000 gold, adjusted for reputation, after "..
"reaching Revered with the Rustbolt Resistance.",
condition_suggested=function() return level >= 50 and not completedq(56165) end,
condition_end=function() return completedq(56165) end,
},[[
step
Reach Revered with the Rustbolt Resistance |condition rep('Rustbolt Resistance') >= Revered
|tip Use the "Rustbolt Resistance" reputation to accomplish this.
step
talk Stolen Royal Vendorbot##150716
buy 1 Blueprint: Extraordinary Adventurer Augment##169134 |goto Mechagon Island/0 73.69,36.89 |q 56165 |future
|tip This blueprint costs 2,000 gold, adjusted for reputation.
step
use the Blueprint: Extraordinary Adventurer Augment##169134
accept Blueprint: Extraordinary Adventurer Augment##56165
step
talk Pascal-K1N6##150359
turnin Blueprint: Extraordinary Adventurer Augment##56165 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Extraordinary Adventurer Augment" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: G99.99 Landshark",{
author="support@zygorguides.com",
description="\nThis blueprint drops from the rare spawn Foul Manifestation in The Heaps.",
condition_suggested=function() return level >= 50 and not completedq(55063) end,
condition_end=function() return completedq(55063) end,
},[[
step
Complete the circuit
|tip Check for an active circuit breaker.
|tip If it is active, you must activate it and drag the wires to nearby pylons.
|tip Match the wires with the appropriate pylons.
|tip When the Alpha, Beta, and Delta pylons are activated, the rare will spawn in a few seconds.
kill Foul Manifestation##151202 |goto Mechagon Island/0 65.62,51.64
The Circuit Breaker is here [67.33,55.53]
|tip
collect 1 Blueprint: G99.99 Landshark##167871 |q 55063 |future
|tip This blueprint is common, but not a guaranteed drop.
step
accept Blueprint: G99.99 Landshark##55063
|tip You will accept this quest automatically.
step
talk Pascal-K1N6##150359
turnin Blueprint: G99.99 Landshark##55063 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "G99.99 Landshark" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Green Spraybot",{
author="support@zygorguides.com",
description="\nThis blueprint can be collected from the Crazed Trogg rare when it has spawned hating the color green on Mechagon Island.",
condition_suggested=function() return level >= 50 and not completedq(55076) end,
condition_end=function() return completedq(55076) end,
},[[
step
kill Crazed Trogg##152570
|tip Inside the cave.
|tip Whichever color the trogg says he hates is the color paint you need to cover yourself in.
|tip To get this blueprint, you will need to wait until he spawns hating the color green.
Get the paint here [63.39,41.67]
collect Blueprint: Green Spraybot##169168 |goto Mechagon Island/0 82.45,20.96 |q 55076 |future
step
use the Blueprint: Green Spraybot##169168
accept Blueprint: Green Spraybot##55076
step
talk Pascal-K1N6##150359
turnin Blueprint: Green Spraybot##55076 |goto Mechagon Island/0 71.35,32.28
step
_Congratulations!_
You Learned the "Green Spraybot" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Holographic Digitalization Relay",{
author="support@zygorguides.com",
description="\nThis blueprint has a chance to drop from various Data Anomalies when Archivist Bitbyte is visiting Rustbolt for the day.",
condition_suggested=function() return level >= 50 and not completedq(56086) end,
condition_end=function() return completedq(56086) end,
},[[
step
label "Accept_Discs_of_Norgannon"
talk Archivist Bitbyte##154982
|tip It randomly appears at the daily server reset.
accept Discs of Norgannon##56410 |goto Mechagon Island/0 72.01,36.55 |or
'|condition completedq(56086) |or
step
Kill enemies around this area
collect Corrupted Data Disc##169474 |q 56410/1 |goto 70.18,60.21 |or
'|condition completedq(56086) |or
step
talk R33-DR##154122
Tell it _"I have a Corrupted Data Disc."_
Deliver the Corrupted Data Disc to R33-DR |q 56410/2 |goto 63.50,56.95 |or
'|condition completedq(56086) |or
step
kill Data Anomaly##152976
|tip After killing it for the quest, you can group with others or hope for drop.
|tip Items randomly drop on the island while this daily quest is available which offer elite versions of this quest.
|tip This guide will reset when you can accept this quest again.
collect 1 Blueprint: Holographic Digitalization Relay##168906 |goto 62.86,56.72 |q 56086 |future |or
'|condition not readyq(56410) or not completedq(56410) |next "Accept_Discs_of_Norgannon" |or
step
use the Blueprint: Holographic Digitalization Relay##168906
accept Blueprint: Holographic Digitalization Relay##56086
step
talk Pascal-K1N6##150359
turnin Blueprint: Holographic Digitalization Relay##56086 |goto Mechagon Island/0 71.35,32.28
step
_Congratulations!_
You Learned the "Holographic Digitalization Relay" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Hundred-Fathom Lure",{
author="support@zygorguides.com",
description="\nThis blueprint can be learned after completing the \"Build A Bigger Fish Trap\" quest on Mechagon Island.",
condition_suggested=function() return level >= 50 and not completedq(55055) end,
condition_end=function() return completedq(55055) end,
},[[
step
talk Danielle Anglers##151462
accept Fishing For Something Bigger##55298 |goto Mechagon Island/0 37.04,47.15
step
cast Fishing##131474
|tip Fish in the water.
collect Jarmouthed Goby##167670 |q 55298/2 |goto 36.93,46.57
step
kill Scrapbone Fisherman##151602
collect Suction Tube##167669 |q 55298/3 |goto 47.43,38.16
step
cast Fishing##131474
|tip Fish in the water.
collect Anodized Sentry Fish##167671 |q 55298/1 |goto 78.28,49.38
step
talk Danielle Anglers##151462
turnin Fishing For Something Bigger##55298 |goto 37.04,47.15
accept Tidying Up##55339 |goto 37.04,47.15
step
collect 200 Ionized Minnow##167562 |q 55339/1 |goto 33.61,50.54
|tip Use the "Minnow Vac" ability on-screen and target Ionized Minnows schools.
|tip They look like small rippling pools in the water around this area.
step
talk Danielle Anglers##151462
turnin Tidying Up##55339 |goto 37.04,47.15
accept Build A Bigger Fish Trap##55055 |goto 37.04,47.15
step
talk Pascal-K1N6##150359
_<Create 1 S.P.A.R.E. Crate>_
|tip This will require 250 Spare Parts, which can be looted all over Mechagon Island.
collect 1 S.P.A.R.E. Crate##169610 |goto 71.35,32.29 |q 55055
step
talk Pascal-K1N6##150359
_<Create 1 Hundred-Fathom Lure>_
collect 1 Hundred-Fathom Lure##167649 |q 55055/1 |goto 71.35,32.29
step
talk Danielle Anglers##151462
turnin Build A Bigger Fish Trap##55055 |goto 37.04,47.15
step
_Congratulations!_
You Learned the "Hundred-Fathom Lure" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Mechano-Treat",{
author="support@zygorguides.com",
description="\nThis blueprint has a chance to drop from the following rare spawns:\n\nThe Scrap King\nOl' Big Tusk\n"..
"Bonepicker\nGorged Gear-Cruncher.",
condition_suggested=function() return level >= 50 and not completedq(55061) end,
condition_end=function() return completedq(55061) end,
},[[
step
label "Kill_The_Scrap_King"
kill The Scrap King##151623
|tip He walks around on top of the hill.
collect 1 Blueprint: Mechano-Treat##167846 |goto Mechagon Island/0 72.35,49.92 |q 55061 |future |or
|tip
Click Here if this Rare is Not Available |confirm |or
step
Enter the cave |goto 65.90,26.56 < 20 |walk
kill Bonepicker##152001
|tip Inside the cave.
collect 1 Blueprint: Mechano-Treat##167846 |goto 65.74,22.82 |q 55061 |future |or
|tip
Click Here if this Rare is Not Available |confirm |or
step
Complete the Drill Rig DR-TR28 project
|tip The rig will only spawn on days when these construction projects are available.
|tip To start the rig, you will need 500 Spare Parts and 2 Energy Cells.
|tip The broadcast text "Drill Rig DR-TR28 has been activated!" will appear one minute before Ol' Big Tusk is revealed.
kill Ol' Big Tusk##153206
|tip Inside the cave.
collect 1 Blueprint: Mechano-Treat##167846 |goto 55.54,39.53 |q 55061 |future |or
|tip
Click Here if this Rare is Not Available |confirm |or
step
Complete the Drill Rig DR-CC61 project
|tip The rig will only spawn on days when these construction projects are available.
|tip To start the rig, you will need 500 Spare Parts and 2 Energy Cells.
|tip The broadcast text "Drill Rig DR-CC61 has been activated!" will appear one minute before Gorged Gear-Cruncher is revealed.
kill Gorged Gear-Cruncher##154701
|tip Inside the cave.
collect 1 Blueprint: Mechano-Treat##167846 |goto 73.01,54.17 |q 55061 |future |or
|tip
Click Here if this Rare is Not Available |confirm |next "Kill_The_Scrap_King" |or
step
use the Blueprint: Mechano-Treat##167846
accept Blueprint: Mechano-Treat##55061
step
talk Pascal-K1N6##150359
turnin Blueprint: Mechano-Treat##55061 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Mechano-Treat" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Mechanocat Laser Pointer",{
author="support@zygorguides.com",
description="\nThis blueprint can be purchased from Cork Stutterguard on Mechagon Island.",
condition_suggested=function() return level >= 50 and not completedq(55056) end,
condition_end=function() return completedq(55056) end,
},[[
step
talk Cork Stuttguard##152321
buy 1 Blueprint: Mechanocat Laser Pointer##167787 |goto Mechagon Island/0 63.34,42.94 |q 55056 |future
|tip This blueprint costs 500 gold.
step
use the Blueprint: Mechanocat Laser Pointer##167787
accept Blueprint: Mechanocat Laser Pointer##55056
step
talk Pascal-K1N6##150359
turnin Blueprint: Mechanocat Laser Pointer##55056 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Mechanocat Laser Pointer" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Microbot XD",{
author="support@zygorguides.com",
description="\nThis blueprint has a small chance to drop from the Rustbolt Supplies paragon reputation cache.",
condition_suggested=function() return level >= 50 and not completedq(55079) end,
condition_end=function() return completedq(55079) end,
},[[
step
use the Rustbolt Supplies##170061
|tip These are rewarded for completing the "Supplies from the Rustbolt Resistance" paragon quest.
|tip Each one requires 10,000 reputation after reaching Exalted with the Rustbolt Reistance faction.
collect 1 Blueprint: Microbot XD##169171 |goto Mechagon Island/0 71.70,36.47 |q 55079 |future
|tip This blueprint has a small chance to drop.
step
use the Blueprint: Microbot XD##169171
accept Blueprint: Microbot XD##55079
step
talk Pascal-K1N6##150359
turnin Blueprint: Microbot XD##55079 |goto Mechagon Island/0 71.35,32.28
step
_Congratulations!_
You Learned the "Microbot XD" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Orange Spraybot",{
author="support@zygorguides.com",
description="\nThis blueprint can be collected from the Crazed Trogg rare when it has spawned hating the color orange on Mechagon Island.",
condition_suggested=function() return level >= 50 and not completedq(55075) end,
condition_end=function() return completedq(55075) end,
},[[
step
kill Crazed Trogg##152570
|tip Inside the cave.
|tip Whichever color the trogg says he hates is the color paint you need to cover yourself in.
|tip To get this blueprint, you will need to wait until he spawns hating the color orange.
Get the paint here [63.39,41.67]
collect Blueprint: Orange Spraybot##169167 |goto Mechagon Island/0 82.45,20.96 |q 55075 |future
step
use the Blueprint: Orange Spraybot##169167
accept Blueprint: Orange Spraybot##55075
step
talk Pascal-K1N6##150359
turnin Blueprint: Orange Spraybot##55075 |goto Mechagon Island/0 71.35,32.28
step
_Congratulations!_
You Learned the "Orange Spraybot" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Perfectly Timed Differential",{
author="support@zygorguides.com",
description="\nThis blueprint is dropped by King Mechagon in the Operation: Mechagon mythic dungeon.",
condition_suggested=function() return level >= 50 and not completedq(55080) end,
condition_end=function() return completedq(55080) end,
},[[
step
Enter Operation: Mechagon with your Group |goto Mechagon/3 0.00,0.00 |c < 1000 |q 55080 |future
|tip This dungeon is Mythic only and cannot be queued in the LFG tool.
step
kill King Mechagon##155438
|tip Don't touch "Plasma Orbs."
|tip Position yourself away from other players when targeted by "Giga-Zap."
|tip Use the "Operation: Mechagon" dungeon guide to complete the dungeon.
collect 1 Blueprint: Perfectly Timed Differential##169172 |goto Mechagon/0 21.28,64.61 |q 55080 |future
step
use the Blueprint: Perfectly Timed Differential##169172
accept Blueprint: Perfectly Timed Differential##55080
step
talk Pascal-K1N6##150359
turnin Blueprint: Perfectly Timed Differential##55080 |goto Mechagon Island/0 71.35,32.28
step
_Congratulations!_
You Learned the "Perfectly Timed Differential" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Personal Time Displacer",{
author="support@zygorguides.com",
description="\nThis blueprint can be collected after killing Bondo Bigblock during the daily quest \"The Other Place\" on Mechagon Island.",
condition_suggested=function() return level >= 50 and not completedq(55070) end,
condition_end=function() return completedq(55070) end,
},[[
step
Gain the Time Displacement Buff |havebuff 413583 |goto Mechagon Island/0 70.21,30.92 |q 55070 |future
|tip You will need to accept the daily quest "The Other Place."
|tip This quest is not always available.
step
kill Bondo Bigblock##153984
collect Blueprint: Personal Time Displacer##168491 |goto 61.81,39.66 |q 55070 |future
step
use the Blueprint: Personal Time Displacer##168491
accept Blueprint: Personal Time Displacer##55070
step
talk Pascal-K1N6##150359
turnin Blueprint: Personal Time Displacer##55070 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Personal Time Displacer" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Protocol Transference Device",{
author="support@zygorguides.com",
description="\nThis blueprint drops from the rare spawn Mechagonian Nullifier in Junkwatt Depot.",
condition_suggested=function() return level >= 50 and not completedq(55069) end,
condition_end=function() return completedq(55069) end,
},[[
step
click Hackable Nullifier Relay
|tip You will need a DNT-Smashed Transport Relay to hack this.
|tip This rarely drops from mobs that spawn during the Boilburn and Gemicide drill rig events.
|tip You can also obtain a Remote Circuit Bypasser from The Scrap King and socket it into your Mechagon trinket.
kill Mechagonian Nullifier##151124
collect 1 Blueprint: Protocol Transference Device##168490 |goto Mechagon Island/0 56.94,52.07 |q 55069 |future
|tip This blueprint is common, but not a guaranteed drop.
step
use the Blueprint: Protocol Transference Device##168490
accept Blueprint: Protocol Transference Device##55069
step
talk Pascal-K1N6##150359
turnin Blueprint: Protocol Transference Device##55069 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Protocol Transference Device" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Re-Procedurally Generated Punchcard",{
author="support@zygorguides.com",
description="\nTo collect this blueprint, you will farm machine parts at Junkwatt Depot and exchange them for Recycling Requisitions.",
condition_suggested=function() return level >= 50 and not completedq(55067) end,
condition_end=function() return completedq(55067) end,
},[[
step
label "Farm_Recyclable_Parts_Materials"
Kill enemies around this area
collect 30 Hardened Spring##168217 |goto Mechagon Island/0 55.56,60.24 |or 3
collect 10 Tempered Plating##168216 |goto 55.56,60.24 |or 3
collect 5 Machined Gear Assembly##168215 |goto 55.56,60.24 |or 3
'|condition completedq(55067) |next "Congratulations_Step" |or
step
use the Hardened Spring##168217
collect 1 Bundle of Recyclable Parts##168946
step
click Recyclerizer DX-82
accept More Recycling##55743 |goto 55.85,62.67 |only if default
accept Even More Recycling##56116 |goto 55.85,62.67 |only if completedq(55743)
step
use the Strange Recycling Requisition##168266 |only if itemcount (168266) >= 1
use the Recycling Requisition##168264 |only if itemcount (168264) >= 1
collect 1 Blueprint: Re-Procedurally Generated Punchcard##168220 |or
'|condition itemcount(168266) == 0 and itemcount(168264) == 0 |next "Farm_Recyclable_Parts_Materials" |or
step
use the Blueprint: Re-Procedurally Generated Punchcard##168220
accept Blueprint: Re-Procedurally Generated Punchcard##55067
step
talk Pascal-K1N6##150359
turnin Blueprint: Re-Procedurally Generated Punchcard##55067 |goto 71.35,32.28
step
label "Congratulations_Step"
_Congratulations!_
You Learned the "Re-Procedurally Generated Punchcard" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Rustbolt Gramophone",{
author="support@zygorguides.com",
description="\nThis blueprint can be collected after killing the Steel Singer Freza rare on Mechagon Island.",
condition_suggested=function() return level >= 50 and not completedq(55064) end,
condition_end=function() return completedq(55064) end,
},[[
step
kill Steel Singer Freza##153226
|tip Freza is a rare spawn with a timer of 30-60 minutes.
collect Blueprint: Rustbolt Gramophone##168062 |goto Mechagon Island/0 25.45,77.34 |q 55064 |future
step
use the Blueprint: Rustbolt Gramophone##168062
accept Blueprint: Rustbolt Gramophone##55064
step
talk Pascal-K1N6##150359
turnin Blueprint: Rustbolt Gramophone##55064 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Rustbolt Gramophone" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Rustbolt Kegerator",{
author="support@zygorguides.com",
description="\nThis blueprint drops from the rare spawn Seaspit. Seaspit respawns in 20-60 minutes.",
condition_suggested=function() return level >= 50 and not completedq(55065) end,
condition_end=function() return completedq(55065) end,
},[[
step
kill Seaspit##150937
|tip Seaspit respawns in 20-60 minutes.
collect 1 Blueprint: Rustbolt Kegerator##168063 |goto Mechagon Island/0 19.45,79.90  |q 55065 |future
|tip This blueprint is common, but not a guaranteed drop.
step
use the Blueprint: Rustbolt Kegerator##168063
accept Blueprint: Rustbolt Kegerator##55065
step
talk Pascal-K1N6##150359
turnin Blueprint: Rustbolt Kegerator##55065 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Rustbolt Kegerator" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Rustbolt Pocket Turret",{
author="support@zygorguides.com",
description="\nThis blueprint drops from the rare spawn Enforcer KX-T57.",
condition_suggested=function() return level >= 50 and not completedq(55082) end,
condition_end=function() return completedq(55082) end,
},[[
step
kill Enforcer KX-T57##154153
|tip This is a rare spawn and will not always be available.
collect 1 Blueprint: Rustbolt Pocket Turret##169174 |goto Mechagon Island/0 52.49,62.92 |q 55082 |future
|tip This blueprint is common, but not a guaranteed drop.
step
accept Blueprint: Rustbolt Pocket Turret##55082
|tip You will accept this quest automatically.
step
talk Pascal-K1N6##150359
turnin Blueprint: Rustbolt Pocket Turret##55082 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Rustbolt Pocket Turret" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Rustbolt Resistance Insignia",{
author="support@zygorguides.com",
description="\nThis blueprint has a small chance to drop from the Rustbolt Supplies paragon reputation cache.",
condition_suggested=function() return level >= 50 and not completedq(55073) end,
condition_end=function() return completedq(55073) end,
},[[
step
use the Rustbolt Supplies##170061
|tip These are rewarded for completing the "Supplies from the Rustbolt Resistance" paragon quest.
|tip Each one requires 10,000 reputation after reaching Exalted with the Rustbolt Reistance faction.
collect 1 Blueprint: Rustbolt Resistance Insignia##168494 |goto Mechagon Island/0 71.70,36.47 |q 55073 |future
|tip This blueprint has a small chance to drop.
step
use the Blueprint: Rustbolt Resistance Insignia##168494
accept Blueprint: Rustbolt Resistance Insignia##55073
step
talk Pascal-K1N6##150359
turnin Blueprint: Rustbolt Resistance Insignia##55073 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Rustbolt Resistance Insignia" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Rustbolt Requisitions",{
author="support@zygorguides.com",
description="\nThis blueprint drops from the Irradiated Box of Assorted Parts awarded from the hardmode Reclamation Rig event.",
condition_suggested=function() return level >= 50 and not completedq(55074) end,
condition_end=function() return completedq(55074) end,
},[[
step
use the Irradiated Box of Assorted Parts##168395
|tip These are received after completing the hardmode of the Reclamaition Rig event.
|tip To activate the hardmode, you need the Supercollider weapon awarded from completing the "Toys for Destruction" daily quest four times.
|tip Use the special action button on-screen on every Irradiated Elemental for the entire event.
|tip If done correctly, 3 large red Unstable Irradiated Golems spawn at the end of the event.
collect 1 Blueprint: Rustbolt Requisitions##168495 |goto Mechagon Island/0 69.85,61.49  |q 55074 |future
|tip This blueprint is common, but not a guaranteed drop.
step
use the Blueprint: Rustbolt Requisitions##168495
accept Blueprint: Rustbolt Requisitions##55074
step
talk Pascal-K1N6##150359
turnin Blueprint: Rustbolt Requisitions##55074 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Rustbolt Requisitions" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Scrap Grenade",{
author="support@zygorguides.com",
description="\nThis blueprint is obtained after completing the quest \"Junkyard Tinkering and You\" during the Mechagon questline.",
condition_suggested=function() return level >= 50 and not completedq(55101) end,
condition_end=function() return completedq(55101) end,
},[[
step
Complete the "Save a Friend" Quest |condition completedq(55500)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
talk Disgruntled Laborer##156187
accept Rumors of Mechagon##57024 |goto Nazjatar/0 48.44,60.64
step
talk Gazlowe##152522
turnin Rumors of Mechagon##57024 |goto Dazar'alor/0 53.08,43.27
accept The Legend of Mechagon##55646 |goto 53.08,43.27
step
Follow the path |goto Tiragarde Sound/0 68.78,57.39 < 30 |only if walking
Continue following the path |goto 65.97,62.27 < 15 |only if walking
talk Gazlowe##152578
turnin The Legend of Mechagon##55646 |goto 65.63,64.61
accept A Quick Ear Hustle##55647 |goto 65.63,64.61
step
click Fake Rock
Hide Behind the Fake Rock |q 55647/1 |goto 65.62,64.62
step
Watch the dialogue
Spy on the Alliance |q 55647/2 |goto 65.62,64.62
step
talk Gazlowe##152578
turnin A Quick Ear Hustle##55647 |goto 65.63,64.60
accept This is Our Vault Now##55648 |goto 65.63,64.60
step
click Vault Door |goto 65.58,65.14
Watch the dialogue
Secure the Vault |q 55648/1 |goto 65.82,66.36
step
talk Gazlowe##149809
|tip Inside the vault.
turnin This is Our Vault Now##55648 |goto 65.82,66.36
accept Let's Get It Started##55630 |goto 65.82,66.36
step
click Gear Controls
|tip Inside the vault.
Repair the Gears |q 55630/1 |goto 65.66,66.51
step
click Electrode
|tip Inside the vault.
Activate Electrode |q 55630/2 |goto 66.02,65.83
step
click Alpha Wire
|tip Inside the vault.
Grab the Alpha Wire |havebuff 136101 |goto 66.04,65.84 |q 55630
step
click Alpha Pylon
|tip Inside the vault.
Attach the Alpha Wire to Alpha Pylon |q 55630/3 |goto 66.14,66.25
step
click Beta Wire
|tip Inside the vault.
Grab the Beta Wire |havebuff 136101 |goto 66.00,65.81 |q 55630
step
click Beta Pylon
|tip Inside the vault.
Attach the Beta Wire to Beta Pylon |q 55630/4 |goto 65.92,66.45
step
talk Gazlowe##149809
|tip Inside the vault.
turnin Let's Get It Started##55630 |goto 65.82,66.35
accept You Must be This Height##55632 |goto 65.82,66.35
step
talk Gazlowe##149809
|tip Inside the vault.
Tell him _"I'm ready. Activate the device."_
Speak with Gazlowe |q 55632/1 |goto 65.82,66.35
step
Watch the dialogue
Discover the Purpose of the Device |q 55632/2
step
click Tri-dimensional Coordinates##325907
|tip Inside the vault.
collect Tri-dimensional Coordinates##168218 |q 55632/3 |goto 65.89,66.46
step
clicknpc Gazlowe##152652
|tip Inside the vault.
turnin You Must be This Height##55632 |goto 65.90,66.41
accept Machinations for Mechagon##55649 |goto 65.90,66.41
step
clicknpc Greasemonkey Skysneaker##152665
Ride the Greasemonkey Skysneaker |q 55649/1 |goto 65.21,64.52
step
Watch the dialogue
talk Gazlowe##152504
turnin Machinations for Mechagon##55649 |goto Dazar'alor/0 42.06,87.84
step
talk Skaggit##152505
accept Only the Best Will Do##55650 |goto 42.19,87.83
step
Watch the dialogue
talk Shuga Blastcaps##131840
Tell her _"Gazlowe needs supplies for a big expedition to Mechagon."_
Order Supplies |q 55650/1 |goto 45.14,40.59
step
talk Ricket##152748
Tell her _"Gazlowe found Mechagon!"_
Recruit Ricket |q 55650/3 |goto 42.40,25.71
step
talk Greasemonkey Union Rep##152766
|tip Inside the building.
Tell her _"Gazlowe's got a new job for the crew."_
Complete the Union Negotiations |q 55650/2 |goto 35.86,16.63
step
talk Skaggit##152505
turnin Only the Best Will Do##55650 |goto 42.20,87.84
step
talk Gazlowe##152504
accept To Mechagon!##55651 |goto 42.06,87.84
step
talk Captain Krooz##152506
Tell her _"We're ready. Take us to Mechagon!"_
Talk to Captain Krooz |q 55651/1 |goto 41.84,87.60
step
Arrive in Mechagon |goto Mechagon Island/0 76.21,14.91 < 1000 |c |noway |q 55651
step
talk Gazlowe##152783
turnin To Mechagon!##55651 |goto 76.17,15.30
accept Prospectus Bay##55652 |goto 76.17,15.30
step
click Goblin Gangplank
Grab a Jetpack |q 55652/1 |goto 76.01,15.42
step
talk Lazz of Leisure##150634
fpath Prospectus Bay |goto 73.48,25.80
step
Watch the dialogue
talk Gazlowe##152845
turnin Prospectus Bay##55652 |goto 73.69,25.94
accept We Come in Peace... and Profit##55685 |goto 73.69,25.94
step
Watch the dialogue
Explore Rustbolt |q 55685/1 |goto 71.09,38.33
step
talk Prince Erazmin##152851
turnin Princely Visit##55685 |goto 71.09,38.32
accept The Resistance Needs YOU!##55729 |goto 71.09,38.32
step
Watch the dialogue
clicknpc Symmetry##153572
Ride with Prince Erazmin |q 55729/1 |goto 71.02,36.99
step
Watch the dialogue
Arrive at Junkwatt Depot |outvehicle |q 55729 |goto 59.09,54.99
step
talk Prince Erazmin##152820
turnin The Resistance Needs YOU!##55729 |goto 59.01,54.89
accept Rescuing the Resistance##55730 |goto 59.01,54.89
accept My Father's Armies##55731 |goto 59.01,54.89
stickystart "Slay_Mechagon_Enemies"
step
click Broken Drill Rig
accept We Can Fix It##55995 |goto 56.71,60.00
stickystart "Collect_Spare_Parts_55995"
step
click Mechagon Suspension Chamber
Rescue the Scientists |q 55730/1 |goto 56.69,63.15
step
click Mechanized Chest##332623
collect Energy Cell##170500 |q 55995/2 |goto 52.49,61.73
step
Run up the ramp |goto 52.72,61.69 < 15 |only if walking
click Mechagon Suspension Chamber
Rescue the Tinkerers |q 55730/2 |goto 52.12,63.37
step
Run up the ramp |goto 52.88,57.47 < 15 |only if walking
click Mechagon Suspension Chamber
Rescue the Engineers |q 55730/3 |goto 53.50,55.79
step
label "Slay_Mechagon_Enemies"
Kill enemies around this area
Slay #12# Mechagon Enemies |q 55731/1 |goto 56.13,59.84
step
label "Collect_Spare_Parts_55995"
Kill enemies around this area
collect 90 Spare Parts##166846 |q 55995 |goto 56.13,59.84
|tip You will need 50 of these later.
step
_Next to you:_
talk Prince Erazmin##153670
turnin Rescuing the Resistance##55730
turnin My Father's Armies##55731
turnin We Can Fix It##55995
accept Drill Rig Construction##55734
step
click Broken Drill Rig
View the Construction |q 55734/1 |goto 56.70,60.02
step
click Broken Drill Rig
|tip Click the "Contribute 10" button on the left five times.
Contribute #40# Spare Parts |q 55734/2 |goto 56.70,60.02
step
click Broken Drill Rig
|tip Click the "Contribute 1" button on the right once.
Contribute an Energy Cell |q 55734/3 |goto 56.70,60.02
step
Construct the Drill Rig |q 55734/4 |goto 56.70,60.02
step
Watch the dialogue
Rescue Pascal-K1N6 |q 55734/5 |goto 56.70,60.02
step
_Next to you:_
talk Prince Erazmin##153670
turnin Drill Rig Construction##55734
accept Send My Father a Message##55096
step
Run up the ramp |goto 57.72,62.35 < 15 |only if walking
click Mechagon Projector
Hack the Mechagon Projector |q 55096/1 |goto 61.15,60.23
step
kill Overcharged Coilbearer##154276
|tip Click the orbs that they drop to damage the Oppression Unit.
Repel the HK-8 Aerial Oppression Unit |q 55096/2 |goto 61.32,60.77
step
Jump down carefully here |goto 60.55,60.50 < 5 |only if walking
Follow the road |goto 65.44,41.90 < 20 |only if walking
talk Prince Erazmin##151947
turnin Send My Father a Message##55096 |goto 71.28,35.87
accept Welcome to the Resistance##55736 |goto 71.28,35.87
step
Tour Rustbolt with Prince Erazmin |q 55736/1 |goto 74.12,37.00
|tip Stand here and wait for him to join you.
step
talk Prince Erazmin##149816
turnin Welcome to the Resistance##55736 |goto 74.12,37.00
step
talk Pascal##152295
accept Junkyard Tinkering and You##55101 |goto 71.21,32.32
step
talk Pascal-K1N6##150359
_<Create 1 Scrap Grenade>_
Craft a Scrap Grenade |q 55101/1 |goto 71.35,32.29
step
talk Pascal##152295
turnin Junkyard Tinkering and You##55101 |goto 71.21,32.32
step
_Congratulations!_
You Learned the "Scrap Grenade" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Scrap Trap",{
author="support@zygorguides.com",
description="\nThis blueprint can be collected after killing the Boilburn or Earthbreaker Gulroc rares on Mechagon Island.",
condition_suggested=function() return level >= 50 and not completedq(55030) end,
condition_end=function() return completedq(55030) end,
},[[
step
label "Kill_Mechagonian_Nullifier"
click Hackable Nullifier Relay
|tip You will need a DNT-Smashed Transport Relay to hack this.
|tip This rarely drops from mobs that spawn during the Boilburn and Gemicide drill rig events.
|tip You can also obtain a Remote Circuit Bypasser from The Scrap King and socket it into your Mechagon trinket.
kill Mechagonian Nullifier##151124
collect Blueprint: Scrap Trap##167042 |goto Mechagon Island/0 56.94,52.07 |q 55030 |future |or
|tip This blueprint is common, but not a guaranteed drop.
|tip
Click Here to Check for Earthbreaker Gulroc |confirm |next |or
step
Complete the Drill Rig DR-TR35 project
|tip The rig will only spawn on days when these construction projects are available.
|tip To start the rig, you will need 500 Spare Parts and 2 Energy Cells.
|tip The broadcast text "Drill Rig DR-TR35 has been activated!" will appear one minute before Earthbreaker Gulroc is revealed.
kill Earthbreaker Gulroc##150342
|tip Inside the cave.
collect Blueprint: Scrap Trap##167042 |goto 64.15,24.23 |q 55030 |future |or
|tip This blueprint is common, but not a guaranteed drop.
|tip
Click Here to Check for Mechagonian Nullifier |confirm |next "Kill_Mechagonian_Nullifier" |or
step
use the Blueprint: Scrap Trap##167042
accept Blueprint: Scrap Trap##55030
step
talk Pascal-K1N6##150359
turnin Blueprint: Scrap Trap##55030 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Scrap Trap" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Scrapmaster's Blowtorch",{
author="support@zygorguides.com",
description="\nThis blueprint can be learned from Pascal for free upon reaching Revered reputation status with the Rustbolt Resistance.",
condition_suggested=function() return level >= 50 and not completedq(56181) end,
condition_end=function() return completedq(56181) end,
},[[
step
Reach Honored with the Rustbolt Resistance |condition rep('Rustbolt Resistance') >= Honored
|tip Use the "Rustbolt Resistance" reputation to accomplish this.
step
talk Pascal##152295
accept This One's on Me##56181 |goto Mechagon Island/0 71.21,32.31
step
_Congratulations!_
You Learned the "Scrapmaster's Blowtorch" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: S.P.A.R.E. Crate",{
author="support@zygorguides.com",
description="\nThis blueprint is obtained after completing the quest \"S.P.A.R.E. Crates\" during the Mechagon questline.",
condition_suggested=function() return level >= 50 and not completedq(56740) end,
condition_end=function() return completedq(56740) end,
},[[
step
Complete the "Save a Friend" Quest |condition completedq(55500)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
talk Disgruntled Laborer##156187
accept Rumors of Mechagon##57024 |goto Nazjatar/0 48.44,60.64
step
talk Gazlowe##152522
turnin Rumors of Mechagon##57024 |goto Dazar'alor/0 53.08,43.27
accept The Legend of Mechagon##55646 |goto 53.08,43.27
step
Follow the path |goto Tiragarde Sound/0 68.78,57.39 < 30 |only if walking
Continue following the path |goto 65.97,62.27 < 15 |only if walking
talk Gazlowe##152578
turnin The Legend of Mechagon##55646 |goto 65.63,64.61
accept A Quick Ear Hustle##55647 |goto 65.63,64.61
step
click Fake Rock
Hide Behind the Fake Rock |q 55647/1 |goto 65.62,64.62
step
Watch the dialogue
Spy on the Alliance |q 55647/2 |goto 65.62,64.62
step
talk Gazlowe##152578
turnin A Quick Ear Hustle##55647 |goto 65.63,64.60
accept This is Our Vault Now##55648 |goto 65.63,64.60
step
click Vault Door |goto 65.58,65.14
Watch the dialogue
Secure the Vault |q 55648/1 |goto 65.82,66.36
step
talk Gazlowe##149809
|tip Inside the vault.
turnin This is Our Vault Now##55648 |goto 65.82,66.36
accept Let's Get It Started##55630 |goto 65.82,66.36
step
click Gear Controls
|tip Inside the vault.
Repair the Gears |q 55630/1 |goto 65.66,66.51
step
click Electrode
|tip Inside the vault.
Activate Electrode |q 55630/2 |goto 66.02,65.83
step
click Alpha Wire
|tip Inside the vault.
Grab the Alpha Wire |havebuff 136101 |goto 66.04,65.84 |q 55630
step
click Alpha Pylon
|tip Inside the vault.
Attach the Alpha Wire to Alpha Pylon |q 55630/3 |goto 66.14,66.25
step
click Beta Wire
|tip Inside the vault.
Grab the Beta Wire |havebuff 136101 |goto 66.00,65.81 |q 55630
step
click Beta Pylon
|tip Inside the vault.
Attach the Beta Wire to Beta Pylon |q 55630/4 |goto 65.92,66.45
step
talk Gazlowe##149809
|tip Inside the vault.
turnin Let's Get It Started##55630 |goto 65.82,66.35
accept You Must be This Height##55632 |goto 65.82,66.35
step
talk Gazlowe##149809
|tip Inside the vault.
Tell him _"I'm ready. Activate the device."_
Speak with Gazlowe |q 55632/1 |goto 65.82,66.35
step
Watch the dialogue
Discover the Purpose of the Device |q 55632/2
step
click Tri-dimensional Coordinates##325907
|tip Inside the vault.
collect Tri-dimensional Coordinates##168218 |q 55632/3 |goto 65.89,66.46
step
clicknpc Gazlowe##152652
|tip Inside the vault.
turnin You Must be This Height##55632 |goto 65.90,66.41
accept Machinations for Mechagon##55649 |goto 65.90,66.41
step
clicknpc Greasemonkey Skysneaker##152665
Ride the Greasemonkey Skysneaker |q 55649/1 |goto 65.21,64.52
step
Watch the dialogue
talk Gazlowe##152504
turnin Machinations for Mechagon##55649 |goto Dazar'alor/0 42.06,87.84
step
talk Skaggit##152505
accept Only the Best Will Do##55650 |goto 42.19,87.83
step
Watch the dialogue
talk Shuga Blastcaps##131840
Tell her _"Gazlowe needs supplies for a big expedition to Mechagon."_
Order Supplies |q 55650/1 |goto 45.14,40.59
step
talk Ricket##152748
Tell her _"Gazlowe found Mechagon!"_
Recruit Ricket |q 55650/3 |goto 42.40,25.71
step
talk Greasemonkey Union Rep##152766
|tip Inside the building.
Tell her _"Gazlowe's got a new job for the crew."_
Complete the Union Negotiations |q 55650/2 |goto 35.86,16.63
step
talk Skaggit##152505
turnin Only the Best Will Do##55650 |goto 42.20,87.84
step
talk Gazlowe##152504
accept To Mechagon!##55651 |goto 42.06,87.84
step
talk Captain Krooz##152506
Tell her _"We're ready. Take us to Mechagon!"_
Talk to Captain Krooz |q 55651/1 |goto 41.84,87.60
step
Arrive in Mechagon |goto Mechagon Island/0 76.21,14.91 < 1000 |c |noway |q 55651
step
talk Gazlowe##152783
turnin To Mechagon!##55651 |goto 76.17,15.30
accept Prospectus Bay##55652 |goto 76.17,15.30
step
click Goblin Gangplank
Grab a Jetpack |q 55652/1 |goto 76.01,15.42
step
talk Lazz of Leisure##150634
fpath Prospectus Bay |goto 73.48,25.80
step
Watch the dialogue
talk Gazlowe##152845
turnin Prospectus Bay##55652 |goto 73.69,25.94
accept We Come in Peace... and Profit##55685 |goto 73.69,25.94
step
Watch the dialogue
Explore Rustbolt |q 55685/1 |goto 71.09,38.33
step
talk Prince Erazmin##152851
turnin Princely Visit##55685 |goto 71.09,38.32
accept The Resistance Needs YOU!##55729 |goto 71.09,38.32
step
Watch the dialogue
clicknpc Symmetry##153572
Ride with Prince Erazmin |q 55729/1 |goto 71.02,36.99
step
Watch the dialogue
Arrive at Junkwatt Depot |outvehicle |q 55729 |goto 59.09,54.99
step
talk Prince Erazmin##152820
turnin The Resistance Needs YOU!##55729 |goto 59.01,54.89
accept Rescuing the Resistance##55730 |goto 59.01,54.89
accept My Father's Armies##55731 |goto 59.01,54.89
stickystart "Slay_Mechagon_Enemies"
step
click Broken Drill Rig
accept We Can Fix It##55995 |goto 56.71,60.00
stickystart "Collect_Spare_Parts_55995"
step
click Mechagon Suspension Chamber
Rescue the Scientists |q 55730/1 |goto 56.69,63.15
step
click Mechanized Chest##332623
collect Energy Cell##170500 |q 55995/2 |goto 52.49,61.73
step
Run up the ramp |goto 52.72,61.69 < 15 |only if walking
click Mechagon Suspension Chamber
Rescue the Tinkerers |q 55730/2 |goto 52.12,63.37
step
Run up the ramp |goto 52.88,57.47 < 15 |only if walking
click Mechagon Suspension Chamber
Rescue the Engineers |q 55730/3 |goto 53.50,55.79
step
label "Slay_Mechagon_Enemies"
Kill enemies around this area
Slay #12# Mechagon Enemies |q 55731/1 |goto 56.13,59.84
step
label "Collect_Spare_Parts_55995"
Kill enemies around this area
collect 90 Spare Parts##166846 |q 55995 |goto 56.13,59.84
|tip You will need 50 of these later.
step
_Next to you:_
talk Prince Erazmin##153670
turnin Rescuing the Resistance##55730
turnin My Father's Armies##55731
turnin We Can Fix It##55995
accept Drill Rig Construction##55734
step
click Broken Drill Rig
View the Construction |q 55734/1 |goto 56.70,60.02
step
click Broken Drill Rig
|tip Click the "Contribute 10" button on the left five times.
Contribute #40# Spare Parts |q 55734/2 |goto 56.70,60.02
step
click Broken Drill Rig
|tip Click the "Contribute 1" button on the right once.
Contribute an Energy Cell |q 55734/3 |goto 56.70,60.02
step
Construct the Drill Rig |q 55734/4 |goto 56.70,60.02
step
Watch the dialogue
Rescue Pascal-K1N6 |q 55734/5 |goto 56.70,60.02
step
_Next to you:_
talk Prince Erazmin##153670
turnin Drill Rig Construction##55734
accept Send My Father a Message##55096
step
Run up the ramp |goto 57.72,62.35 < 15 |only if walking
click Mechagon Projector
Hack the Mechagon Projector |q 55096/1 |goto 61.15,60.23
step
kill Overcharged Coilbearer##154276
|tip Click the orbs that they drop to damage the Oppression Unit.
Repel the HK-8 Aerial Oppression Unit |q 55096/2 |goto 61.32,60.77
step
Jump down carefully here |goto 60.55,60.50 < 5 |only if walking
Follow the road |goto 65.44,41.90 < 20 |only if walking
talk Prince Erazmin##151947
turnin Send My Father a Message##55096 |goto 71.28,35.87
accept Welcome to the Resistance##55736 |goto 71.28,35.87
step
Tour Rustbolt with Prince Erazmin |q 55736/1 |goto 74.12,37.00
|tip Stand here and wait for him to join you.
step
talk Prince Erazmin##149816
turnin Welcome to the Resistance##55736 |goto 74.12,37.00
step
talk Pascal##152295
accept Junkyard Tinkering and You##55101 |goto 71.21,32.32
step
talk Pascal-K1N6##150359
_<Create 1 Scrap Grenade>_
Craft a Scrap Grenade |q 55101/1 |goto 71.35,32.29
step
talk Pascal##152295
turnin Junkyard Tinkering and You##55101 |goto 71.21,32.32
step
collect 250 Spare Parts##166846 |q 56740 |future
|tip These drop from mobs and chests all over Mechagon Island.
step
talk Pascal##152295
accept S.P.A.R.E. Crates##56740 |goto 71.21,32.32
step
_Congratulations!_
You Learned the "S.P.A.R.E. Crate" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Ultrasafe Transporter - Mechagon",{
author="support@zygorguides.com",
description="\nThis blueprint has a chance to drop from the rare spawn Gear Checker Cogstar.",
condition_suggested=function() return level >= 50 and not completedq(55062) end,
condition_end=function() return completedq(55062) end,
},[[
step
kill Gear Checker Cogstar##153228
|tip Cogstar will only spawn when a specific number of Upgraded Sentries die.
|tip He can spawn anywhere on the island with these sentries.
|tip When he spawns, Cogstar will yell "Distress message received! Gear Checker Cogstar reinforcing target area."
collect 1 Blueprint: Ultrasafe Transporter: Mechagon##167847 |goto Mechagon Island/0 59.80,52.70 |q 55062 |future
|tip This blueprint is common, but not a guaranteed drop.
|tip
Upgraded Sentries can be found here [59.62,55.68]
And here [47.22,40.19]
And here [22.07,76.55]
step
use the Blueprint: Ultrasafe Transporter: Mechagon##167847
accept Blueprint: Ultrasafe Transporter - Mechagon##55062
step
talk Pascal-K1N6##150359
turnin Blueprint: Ultrasafe Transporter - Mechagon##55062 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Ultrasafe Transporter - Mechagon" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Utility Mechanoclaw",{
author="support@zygorguides.com",
description="\nThis blueprint has a chance to drop from the rare Caustic Mechaslime on days when Drill Rigs are active.",
condition_suggested=function() return level >= 50 and not completedq(55078) end,
condition_end=function() return completedq(55078) end,
},[[
step
Complete the Drill Rig DR-CC73 project
|tip The rig will only spawn on days when these construction projects are available.
|tip To start the rig, you will need 500 Spare Parts and 2 Energy Cells.
|tip The broadcast text "Drill Rig DR-CC73 has been activated!" will appear one minute before Caustic Mechaslime is revealed.
kill Caustic Mechaslime##154739
|tip Inside the cave.
collect 1 Blueprint: Utility Mechanoclaw##169170 |goto Mechagon Island/0 65.80,58.40 |q 55078 |future
|tip This blueprint is common, but not a guaranteed drop.
step
use the Blueprint: Utility Mechanoclaw##169170
accept Blueprint: Utility Mechanoclaw##55078
step
talk Pascal-K1N6##150359
turnin Blueprint: Utility Mechanoclaw##55078 |goto Mechagon Island/0 71.35,32.28
step
_Congratulations!_
You Learned the "Utility Mechanoclaw" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Blueprints\\Blueprint: Vaultbot Key",{
author="support@zygorguides.com",
description="\nThis blueprint can be collected after killing the Armored Vaultbot rare on Mechagon Island.",
condition_suggested=function() return level >= 50 and not completedq(55058) end,
condition_end=function() return completedq(55058) end,
},[[
step
kill Armored Vaultbot##150394 |goto Mechagon Island/0 58.86,42.07
Bring it to this location [63.25,38.87]
|tip Inside the circle.
collect Blueprint: Armored Vaultbot Key##167843 |q 55058 |future
step
use the Blueprint: Armored Vaultbot Key##167843
accept Blueprint: Vaultbot Key##55058
step
talk Pascal-K1N6##150359
turnin Blueprint: Vaultbot Key##55058 |goto 71.35,32.28
step
_Congratulations!_
You Learned the "Vaultbot Key" Blueprint.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Swiftwind Post (Drustvar)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Swiftwind Post outpost in Drustvar.",
condition_suggested=function() return level >= 50 and rep('The Honorbound') >= Honored and not completedq(53103) end,
condition_end=function() return completedq(53103) end,
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Honored Reputation with The Honorbound |condition rep('The Honorbound') >= Honored
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
accept Expanding our Influence##54494 |goto Zuldazar/0 58.06,62.65
step
talk Ransa Greyfeather##135447
buy Scouting Report: Swiftwind Post##162536 |goto 58.06,62.65 |q 52275 |future
step
talk Ransa Greyfeather##135447
turnin Expanding our Influence##54494 |goto 58.06,62.65
step
use the Scouting Report: Swiftwind Post##162536
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52275 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Swiftwind Post" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Swiftwind Post##52275 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Swiftwind Post##52275 |goto Zuldazar/0 58.44,62.67
accept Swiftwind Post##52276 |goto Zuldazar/0 58.44,62.67
step
Follow the path |goto Drustvar/0 38.27,34.55 < 30 |only if walking
Follow the road |goto Drustvar/0 46.13,35.82 < 30 |only if walking
Follow the road |goto Drustvar/0 47.91,30.36 < 30 |only if walking
Follow the road |goto Drustvar/0 61.70,39.96 < 30 |only if walking
click Horde Banner
Claim the Outpost |q 52276/1 |goto Drustvar/0 66.05,59.45
step
talk Windtamer Loka##140772
fpath Swiftwind Post |goto 66.46,59.32
step
talk Toska Eaglehorn##140778
turnin Swiftwind Post##52276 |goto 66.11,59.59
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Nature Calls" mission.
|tip You may have to wait for this mission to appear.
|tip This mission will take 6 hours to complete.
accept Mission Report: Nature Calls##53102 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Nature Calls##53102 |goto Zuldazar/0 58.44,62.67
accept Wicker Magic##53103 |goto 58.44,62.67
step
talk Toska Eaglehorn##140778
turnin Wicker Magic##53103 |goto Drustvar/0 66.12,59.59
step
_Congratulations!_
You unlocked the Swiftwind Post outpost in Drustvar.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Wolf's Den (Tiragarde Sound)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Grimwatt's Crash outpost in Nazmir.",
condition_suggested=function() return level >= 50 and rep('The Honorbound') >= Honored and not completedq(53152) end,
condition_end=function() return completedq(53152) end,
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Honored Reputation with The Honorbound |condition rep('The Honorbound') >= Honored
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
accept Expanding our Influence##54494 |goto Zuldazar/0 58.06,62.65
step
talk Ransa Greyfeather##135447
buy Scouting Report: Wolf's Den##162530 |goto 58.06,62.65 |q 52005 |future
step
talk Ransa Greyfeather##135447
turnin Expanding our Influence##54494 |goto 58.06,62.65
step
use the Scouting Report: Wolf's Den##162530
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52005 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "The Wolf's Den" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: The Wolf's Den##52005 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: The Wolf's Den##52005 |goto Zuldazar/0 58.44,62.67
accept The Wolf's Den##52127 |goto Zuldazar/0 58.44,62.67
step
Follow the path |goto Tiragarde Sound/0 41.46,23.62 < 30 |only if walking
Follow the path |goto Tiragarde Sound/0 53.74,15.85 < 30 |only if walking
click Horde Banner
Claim the Outpost |q 52127/1 |goto Tiragarde Sound/0 62.24,13.46
step
talk Narkalt##133331
fpath Wolf's Den |goto 62.11,13.57
step
talk Mukkral Blackvein##139561
|tip Inside the cave.
turnin The Wolf's Den##52127 |goto 62.49,12.48
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Wolves For The Den" mission.
|tip You may have to wait for this mission to appear.
|tip This mission will take 6 hours to complete.
accept Mission Report: Wolves For The Den##53151 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Wolves For The Den##53151 |goto Zuldazar/0 58.44,62.67
accept Wolves for the Den##53152 |goto 58.44,62.67
step
Enter the cave |goto Tiragarde Sound/0 62.54,12.84 < 15 |walk
talk Mukkral Blackvein##139561
|tip Inside the cave.
turnin Wolves for the Den##53152 |goto 62.49,12.48
step
_Congratulations!_
You unlocked the Wolf's Den outpost in Tiragarde Sound.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Hillcrest Pasture (Stormsong Valley)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Hillcrest Pasture outpost in Stormsong Valley.",
condition_suggested=function() return level >= 50 and rep('The Honorbound') >= Revered and not completedq(52479) end,
condition_end=function() return completedq(52479) end,
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with The Honorbound |condition rep('The Honorbound') >= Revered
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
buy Scouting Report: Hillcrest Pasture##162533 |goto Zuldazar/0 58.06,62.65 |q 52478 |future
step
use the Scouting Report: Hillcrest Pasture##162533
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52478 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Hillcrest Pasture" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Hillcrest Pasture##52478 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Hillcrest Pasture##52478 |goto Zuldazar/0 58.44,62.67
accept Hillcrest Pasture##52479 |goto Zuldazar/0 58.44,62.67
step
Follow the road |goto Stormsong Valley/0 53.76,53.15 < 30 |only if walking
Continue following the road |goto Stormsong Valley/0 54.26,58.56 < 30 |only if walking
Continue following the road |goto Stormsong Valley/0 51.16,62.32 < 30 |only if walking
Follow the path |goto Stormsong Valley/0 52.92,75.36 < 30 |only if walking
click Horde Banner
Claim the Outpost |q 52479/1 |goto Stormsong Valley/0 53.42,77.66
step
Follow the path up |goto 53.51,79.73 < 20 |only if walking
talk Hosan Cloudhoof##134842
fpath Hillcrest Pasture |goto 52.76,80.13
step
talk Ruknoz Greyfang##141308
turnin Hillcrest Pasture##52479 |goto 54.19,78.65
step
_Congratulations!_
You unlocked the Hillcrest Pasture outpost in Stormsong Valley.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Mudfisher Cove (Drustvar)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Mudfisher Cove outpost in Drustvar.",
condition_suggested=function() return level >= 50 and rep('The Honorbound') >= Revered and not completedq(53126) end,
condition_end=function() return completedq(53126) end,
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with The Honorbound |condition rep('The Honorbound') >= Revered
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
buy Scouting Report: Mudfisher Cove##162535 |goto Zuldazar/0 58.06,62.65 |q 52313 |future
step
use the Scouting Report: Mudfisher Cove##162535
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52313 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Mudfisher Cove" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Mudfisher Cove##52313 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Mudfisher Cove##52313 |goto Zuldazar/0 58.44,62.67
accept Mudfisher Cove##52314 |goto Zuldazar/0 58.44,62.67
step
Follow the path |goto Tiragarde Sound/0 39.78,33.48 < 20 |only if walking
click Horde Banner
Claim the Outpost |q 52314/1 |goto Drustvar/0 61.83,16.32
step
talk Drasha Windspear##140939
fpath Mudfisher Cove |goto 62.03,16.88
step
talk Garn Blackwolf##140947
turnin Mudfisher Cove##52314 |goto 62.43,17.01
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Wicker Defense" mission.
|tip You may have to wait for this mission to appear.
|tip This mission will take 6 hours to complete.
accept The Wicker Totem##53126 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Into The Wicker##53125 |goto Zuldazar/0 58.44,62.67
accept The Wicker Totem##53126 |goto 58.44,62.67
step
talk Garn Blackwolf##140947
turnin The Wicker Totem##53126 |goto Drustvar/0 62.42,17.01
step
_Congratulations!_
You unlocked the Mudfisher Cove outpost in Drustvar.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Stonefist Watch (Tiragarde Sound)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Stonefist Watch outpost in Tiragarde Sound.",
condition_suggested=function() return level >= 50 and rep('The Honorbound') >= Revered and not completedq(53082) end,
condition_end=function() return completedq(53082) end,
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with The Honorbound |condition rep('The Honorbound') >= Revered
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
buy Scouting Report: Stonefist Watch##162531 |goto Zuldazar/0 58.06,62.65 |q 52221 |future
step
use the Scouting Report: Stonefist Watch##162531
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52221 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Stonefist Watch" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Stonefist Watch##52221 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Stonefist Watch##52221 |goto Zuldazar/0 58.44,62.67
accept Stonefist Watch##52222 |goto Zuldazar/0 58.44,62.67
step
Follow the path up |goto Tiragarde Sound/0 51.98,57.97 < 20 |only if walking
click Horde Banner
Claim the Outpost |q 52222/1 |goto Tiragarde Sound/0 53.29,63.26
step
talk Munovuth Boldcleaver##140533
fpath Stonefist Watch |goto 53.14,63.16
step
talk Kora Gorekill##140531
|tip Inside the cave.
turnin Stonefist Watch##52222 |goto 53.63,63.34
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Spare Parts" mission.
|tip You may have to wait for this mission to appear.
|tip This mission will take 6 hours to complete.
accept Mission Report: Spare Parts##53081 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Spare Parts##53081 |goto Zuldazar/0 58.44,62.67
accept Spare Parts##53082 |goto 58.44,62.67
step
talk Grizvek Gearsnap##143015
turnin Spare Parts##53082 |goto Tiragarde Sound/0 52.86,62.25
step
_Congratulations!_
You unlocked the Stonefist Watch outpost in Tiragarde Sound.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Stonetusk Watch (Stormsong Valley)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Stonetusk Watch outpost in Stormsong Valley.",
condition_suggested=function() return level >= 50 and rep('The Honorbound') >= Revered and not completedq(53101) end,
condition_end=function() return completedq(53101) end,
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with The Honorbound |condition rep('The Honorbound') >= Revered
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
buy Scouting Report: Stonetusk Watch##162534 |goto Zuldazar/0 58.06,62.65 |q 52776 |future
step
use the Scouting Report: Stonetusk Watch##162534
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52776 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Stonetusk Watch" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Stonetusk Watch##52776 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Stonetusk Watch##52776 |goto Zuldazar/0 58.44,62.67
accept Stonetusk Watch##52777 |goto Zuldazar/0 58.44,62.67
step
Follow the road |goto Stormsong Valley/0 53.77,53.29 < 30 |only if walking
Follow the road |goto Stormsong Valley/0 54.23,58.69 < 30 |only if walking
Follow the road |goto Stormsong Valley/0 50.81,61.84 < 30 |only if walking
Follow the path up |goto Stormsong Valley/0 39.62,63.44 < 30 |only if walking
Follow the path up |goto Stormsong Valley/0 39.08,65.32 < 20 |only if walking
Enter the cave |goto Stormsong Valley/0 39.11,67.00 < 15 |walk
click Horde Banner
|tip Inside the cave.
Claim the Outpost |q 52777/1 |goto Stormsong Valley/0 39.38,68.34
step
talk Rasha Stonetusk##141598
|tip Inside the cave.
turnin Stonetusk Watch##52777 |goto 39.41,68.59
step
Leave the cave |goto 39.06,66.93 < 10 |walk
talk Wyna Breezehorn##134844
fpath Stonetusk Watch |goto 38.84,66.64
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Giant Slaying" mission.
|tip You may have to wait for this mission to appear.
|tip This mission will take 6 hours to complete.
accept Mission Report: Stonetusk Watch##52776 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Stonetusk Watch##52776 |goto Zuldazar/0 58.44,62.67
accept Nettin' Ettin##53101 |goto 58.44,62.67
step
talk Wyna Breezehorn##134844
turnin Nettin' Ettin##53101 |goto Stormsong Valley/0 38.84,66.64
step
_Congratulations!_
You unlocked the Stonetusk Watch outpost in Stormsong Valley.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Windfall Cavern (Stormsong Valley)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Windfall Cavern outpost in Stormsong Valley.",
condition_suggested=function() return level >= 50 and rep('The Honorbound') >= Revered and not completedq(52320) end,
condition_end=function() return completedq(52320) end,
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51916)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with The Honorbound |condition rep('The Honorbound') >= Revered
|tip Use the "World Quests" guides to complete "The Honorbound" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Horde".
step
talk Ransa Greyfeather##135447
buy Scouting Report: Windfall Cavern##162532 |goto Zuldazar/0 58.06,62.65 |q 52319 |future
step
use the Scouting Report: Windfall Cavern##162532
|tip It will seem like nothing has happened after you use it.
|tip It adds a mission to your mission table.
Click Here After Using The Scouting Report |confirm |q 52319 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Windfall Cavern" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Windfall Cavern##52319 |goto Dazar'alor/0 51.52,99.61
|tip You will accept this quest automatically after you complete the mission.
step
talk Nathanos Blightcaller##135691
turnin Mission Report: Windfall Cavern##52319 |goto Zuldazar/0 58.44,62.67
accept Windfall Cavern##52320 |goto Zuldazar/0 58.44,62.67
step
Follow the path |goto Stormsong Valley/0 52.50,32.84 < 20 |only if walking
Follow the path up |goto Stormsong Valley/0 59.53,29.97 < 30 |only if walking
Enter the cave |goto Stormsong Valley/0 60.68,26.73 < 15 |walk
click Horde Banner
|tip Inside the cave.
Claim the Outpost |q 52320/1 |goto Stormsong Valley/0 60.33,25.28
step
talk Morn Ironhorn##141087
|tip Inside the cave.
turnin Windfall Cavern##52320 |goto 60.21,24.97
step
Leave the cave |goto 60.69,26.69 < 10 |walk
talk Allabas##138251
fpath Windfall Cavern |goto 60.84,27.12
step
_Congratulations!_
You unlocked the Windfall Cavern outpost in Stormsong Valley.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Heart of Azeroth\\Essential Empowerment",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various questlines associated with the Heart Forge.",
condition_suggested=function() return level >= 50 and not completedq(55752) end,
condition_end=function() return completedq(55752) end,
},[[
step
Complete the "Back to the Sea" Quest in the Nazjatar guide |condition completedq(56161)
|tip Refer to the "Nazjatar" Guide to accomplish this.
step
Reach Azerite Level 54
|tip Complete world quests, Island Expeditions, and daily quests to gain Azerite power.
Click Here to Continue |confirm |q 55398 |future
step
talk Kalecgos##152365
accept In Darkness, I Dream##55390 |goto Chamber of Heart/0 52.52,69.89
step
Enter the building |goto Val'sharah/0 51.95,57.33 < 10 |walk
talk Merithra of the Dream##151682
turnin In Darkness, I Dream##55390 |goto 51.61,57.22
accept Enter the Dreamway##55392 |goto 51.61,57.22
step
talk Merithra of the Dream##151682
Tell her _"I'm ready."_
Speak with Merithra to Enter the Dreamway |q 55392/1 |goto 51.61,57.22
step
Enter the Emerald Dreamway |goto The Emerald Dreamway/0 44.64,28.59 < 1000 |c |noway |q 55392
step
talk Merithra of the Dream##151693
turnin Enter the Dreamway##55392 |goto 44.05,30.69
accept Shards of Emerald##55394 |goto 44.05,30.69
accept Null the Void##55393 |goto 44.05,30.69
stickystart "Slay_Void_Invaders"
step
talk Valithria Dreamwalker##151704
accept Don't Close Your Eyes##55395 |goto 27.07,55.89
stickystart "Waken_Thessera"
step
click Emerald Shard##324070+
|tip They are next to the Drained Emerald Drakes.
collect 7 Emerald Shard##167802 |q 55394/1 |goto 36.84,47.42
You can find more around: [61.02,44.74]
step
label "Waken_Thessera"
clicknpc Thessera##151708
|tip You must collect an Emerald Shard and receive the Emerald Empowerment buff to waken Thessera. |only if not hasbuff("spell:296126")
Get the Emerald Empowerment buff |complete hasbuff("spell:296126") |only if not hasbuff("spell:296126") |q 55394/1
Wake Thessera |q 55395/1 |goto 28.51,75.92
step
clicknpc Verdisa##151707
|tip You must collect an Emerald Shard and receive the Emerald Empowerment buff to waken Thessera. |only if not hasbuff("spell:296126")
Get the Emerald Empowerment buff |complete hasbuff("spell:296126") |only if not hasbuff("spell:296126") |q 55394/1
Wake Verdisa |q 55395/2 |goto 44.79,50.54
step
Follow the path |goto 52.48,44.14 < 15 |walk
clicknpc Karkarius##151705
|tip You must collect an Emerald Shard and receive the Emerald Empowerment buff to waken Thessera. |only if not hasbuff("spell:296126")
Get the Emerald Empowerment buff |complete hasbuff("spell:296126") |only if not hasbuff("spell:296126") |q 55394/1
Wake Karkarius |q 55395/3 |goto 71.37,46.61
step
label "Slay_Void_Invaders"
Kill enemies around this area
Slay #20# Void Invaders |q 55393/1 |goto 36.84,47.42
step
Follow the path |goto 52.25,44.37 < 15 |walk
talk Merithra of the Dream##151693
turnin Shards of Emerald##55394 |goto 44.05,30.69
turnin Null the Void##55393 |goto 44.05,30.69
turnin Don't Close Your Eyes##55395 |goto 44.05,30.69
accept We Must Go Deeper##55465 |goto 44.05,30.69
step
talk Merithra of the Dream##151693
Tell her _"I'm ready to go deeper into the Emerald Dream."_
Speak to Merithra to Travel Deeper into the Dream |q 55465/1 |goto 44.05,30.69
step
Go Deeper into the Emerald Dreamway |goto The Emerald Dreamway/1 34.71,23.92 < 1000 |c |noway |q 55465
step
talk Merithra of the Dream##151825
turnin We Must Go Deeper##55465 |goto 46.52,39.64
accept Before I Wake##55397 |goto 46.52,39.64
step
kill Grip of Horror##151872 |q 55397/1 |goto 60.49,44.50 |count 1
step
kill Grip of Horror##151872 |q 55397/1 |goto 55.02,73.63 |count 2
step
kill Grip of Horror##151872 |q 55397/1 |goto 42.30,62.27 |count 3
step
kill Void Horror##151836 |q 55397/2 |goto 47.87,50.63
step
talk Merithra of the Dream##151825
turnin Before I Wake##55397 |goto 46.53,39.63
accept The Stuff Dreams Are Made Of##55396 |goto 46.53,39.63
step
use the Emerald Shards##167831
Toss the Shards in the Lake |q 55396/1 |goto 51.63,49.86
step
Watch the dialogue
Complete the Reforging Ritual |q 55396/2 |goto 51.63,49.86
step
click Reforged Emerald Essence##324410
collect Reforged Dreamglow Dragonscale##167875 |q 55396/3 |goto 50.51,49.37
step
talk Merithra of the Dream##151887
turnin The Stuff Dreams Are Made Of##55396 |goto 46.58,39.68
accept The Long Awake##55398 |goto 46.58,39.68
step
talk Merithra of the Dream##151887 |goto 46.58,39.68
Tell her _"Send me back to Val'sharah."_
Return to Val'sharah |goto Val'sharah/0 51.66,57.17 < 1000 |c |noway |q 55398
step
talk Merithra of the Dream##151949
turnin The Long Awake##55398 |goto Chamber of Heart/0 53.92,62.19
step
Reach Azerite Level 55
|tip Complete world quests, Island Expeditions, and daily quests to gain Azerite power.
Click Here to Continue |confirm |q 55521 |future
step
talk Magni Bronzebeard##152206
accept A Fresh Trauma##55519 |goto 50.12,59.18
step
talk Magni Bronzebeard##152095
turnin A Fresh Trauma##55519 |goto Mount Hyjal/0 62.03,24.92
accept Healing Nordrassil##55520 |goto 62.03,24.92
step
clicknpc Frantic Faerie Dragon##152100+
|tip They look like multicolored drakes flying near the ground around this area.
Kill Azerite enemies around this area
Heal Azerite wounds
|tip Use the "Heal Wound" ability that appears on-screen while standing in glowing blue patches on the ground.
Restore Nordassil |q 55520/1 |goto 61.58,27.38
step
kill Azerite Leviathan##152572 |q 55520/2 |goto 60.81,25.90
step
talk Magni Bronzebeard##152095
turnin Healing Nordrassil##55520 |goto 62.03,24.92
accept Do It the Azerite Way##55521 |goto 62.03,24.92
step
talk MOTHER##152194
turnin Do It the Azerite Way##55521 |goto Chamber of Heart/0 48.18,72.49
step
Reach Azerite Level 60
|tip Complete world quests, Island Expeditions, and daily quests to gain Azerite power.
Click Here to Continue |confirm |q 55657 |future
step
talk Kalecgos##152365
accept Investigating the Highlands##56167 |goto 52.55,69.91
step
talk Kalecgos##152720
turnin Investigating the Highlands##56167 |goto Twilight Highlands/0 35.96,50.49
accept In the Shadow of Crimson Wings##55657 |goto 35.96,50.49
step
talk Kalecgos##152720
Tell him _"I'm ready to travel to the Vermillion Redoubt."_
Speak with Kalecgos |q 55657/1 |goto 35.96,50.49
step
Enter the Scenario |scenariostart |q 55657
|tip Accept the queue when it appears on-screen.
step
click Dragon Egg+
|tip They look large rough eggs on the ground around this area.
|tip Clicking them will summon a couple of whelps.
Kill Void-Twisted enemies around this area
Reduce the Twilight Threat |scenariostage 1 |goto Vermillion Redoubt/0 55.49,20.81 |q 55657
step
Follow the path up |goto 60.67,28.68 < 20 |only if walking
talk Alexstrasza the Life-Binder##151714
Tell her _"Whatever happens, I stand by your side, Life-Binder."_
Reach Alexstrasza |q 55657/2 |goto 64.19,29.92
step
Meet Alexstrasza Atop the Vermillion Redoubt |scenariogoal 2/44838 |goto 64.19,29.92 |q 55657
step
Watch the dialogue
Discover the Threat |q 55657/3 |goto 66.84,39.03
step
clicknpc Vermillion Sentinel##154356+
|tip They look like fallen dragons on the ground around this area.
Rescue #5# Vermillion Sentinels |scenariogoal 3/45306 |goto 67.06,39.89 |q 55657
step
Watch the dialogue
clicknpc Kalecgos##151715
Mount Kalecgos |scenariogoal 4/44898 |goto 62.83,44.05 |q 55657
step
Watch the dialogue
Ride with Kalecgos |outvehicle |goto 51.16,85.80 |q 55657
step
kill Void-Twisted Corruptor##154347+
|tip Kill the ones channeling to remove Vexiona's invulnerability.
kill Vexiona##151798
Confront Vexiona |q 55657/4 |goto 46.72,86.12
step
kill Void-Twisted Corruptor##154347+
|tip Kill the ones channeling to remove Vexiona's invulnerability.
kill Vexiona##151798
Confront Vexiona |scenariogoal 5/44840 |goto 46.72,86.12 |q 55657
step
click Blazing Scale##328341
collect Lost Scale of the Scarlet Broodmother##168280 |q 55657/5 |goto 45.82,86.22
step
clicknpc Vermillion Sentinel##153148
Ride a Drake to Silithus |q 55657/6 |goto 46.44,86.43
step
Watch the dialogue
Return to Silithus |goto Silithus/0 42.73,44.83 < 40 |c |noway |q 55657
step
talk Alexstrasza the Life-Binder##152769
turnin In the Shadow of Crimson Wings##55657 |goto Chamber of Heart/0 54.15,65.96
step
Reach Azerite Level 65
|tip Complete world quests, Island Expeditions, and daily quests to gain Azerite power.
Click Here to Continue |confirm |q 55737 |future
step
talk Magni Bronzebeard##152206
accept An Old Scar##55732 |goto 50.13,59.25
step
talk MOTHER##152194
Tell her _"I'm ready to travel to the Maelstrom."_
Speak to MOTHER to Travel to the Maelstrom |q 55732/1 |goto 48.18,72.50
step
Enter The Maelstrom |goto The Maelstrom HoA/0 33.17,55.23 < 1000 |c |noway |q 55732
step
talk Magni Bronzebeard##152815
turnin An Old Scar##55732 |goto 33.73,54.58
accept Defending the Maelstrom##55735 |goto 33.73,54.58
stickystart "Kill_Azerite_Giant"
step
clicknpc Overloaded Totem##154284+
|tip They look like totems with glowing smoke emitting from the tops around this area.
Kill Azerite enemies around this area
clicknpc Injured Geomancer##152842+
|tip They look like injured Shamans kneeling on the ground around this area.
Heal Azerite wounds
|tip Use the "Heal Wound" ability that appears on-screen while standing in glowing blue patches on the ground.
Defend the Maelstrom |q 55735/1 |goto 29.09,39.47
step
label "Kill_Azerite_Giant"
kill Azerite Giant##152833 |q 55735/2 |goto 29.88,52.99
step
talk Magni Bronzebeard##152815
turnin Defending the Maelstrom##55735 |goto 33.73,54.58
accept At the Azerite Time##55737 |goto 33.73,54.58
step
click Chamber of Heart Waygate |goto 33.17,55.23
Return to the Chamber of Heart |goto Chamber of Heart/0 50.23,35.97 < 1000 |c |noway |q 55737
step
talk MOTHER##152194
turnin At the Azerite Time##55737 |goto 48.20,72.49
step
Reach Azerite Level 70
|tip Complete world quests, Island Expeditions, and daily quests to gain Azerite power.
Click Here to Continue |confirm |q 56260 |future
step
talk Earthen Guardian##154464
accept Unlocking the Power##56260 |goto Dazar'alor/0 50.99,88.87
step
talk Magni Bronzebeard##152206
turnin Unlocking the Power##56260 |goto Chamber of Heart/0 50.11,59.13
step
talk Kalecgos##152365
accept A Bolt from the Blue##56401 |goto 52.50,69.89
step
Meet Kalecgos at the Top of the Nexus |q 56401/1 |goto Borean Tundra/0 27.97,26.27
|tip On the uppermost platform.
step
Reveal the Charged Scale of the Blue Aspect |q 56401/2 |goto 27.97,26.27
|tip Use the "Claim Charged Scale" ability that appears on-screen.
step
click Charged Scale of the Blue Aspect
|tip You will need to be mounted to reach it.
collect Charged Scale of the Blue Aspect##169292 |q 56401/3 |goto 27.54,26.72
step
talk Kalecgos##152720
turnin A Bolt from the Blue##56401 |goto 27.97,26.27
step
talk Kalecgos##152720 |goto 27.97,26.27
Ask him _"May I get a quick lift back to the Chamber of Heart?"_
Return to the Chamber of Heart |goto Chamber of Heart/0 50.14,35.75 |c |noway |q 55752 |future
step
talk Magni Bronzebeard##152206
accept We Stand United##55752 |goto 50.13,59.10
step
talk Magni Bronzebeard##152206
Tell him _"I'm ready to receive the gift of the dragonflights."_
Speak to Magni |q 55752/1 |goto 50.13,59.10
step
talk Magni Bronzebeard##152206
turnin We Stand United##55752 |goto 50.13,59.10
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Nightborne Race Unlock",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the new Nightborne allied race.",
condition_suggested=function() return achieved(11340) and not achieved(12244) end,
image=ZGV.IMAGESDIR.."NightborneUnlock",
},[[
step
Load the "Suramar (45-60)" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Suramar (45-60)"
|tip Click the line above to load the guide.
|tip You must progress through the Suramar guide until you complete the "Felborne No More" quest.
Earn the "Insurrection" Achievement |achieve 11340
step
accept The Call for Allies##49930
|tip You will automatically accept this quest.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 10 |walk
talk Lady Sylvanas Windrunner##126065
|tip Inside the building.
turnin The Call for Allies##49930 |goto Orgrimmar/1 37.78,81.15
accept A Choice of Allies##50242 |goto Orgrimmar/1 37.78,81.15
step
talk Eitrigg##126066
|tip Inside the building.
Ask him _"What do we know about the Mag'har orcs?"_
Speak with Eitrigg about the Mag'har Orcs |q 50242/3 |goto 37.80,80.56
step
talk Lady Liadrin##126062
|tip Inside the building.
Ask her _"What do we know about the nightborne?"_
Speak with Liadrin about the Nightborne |q 50242/2 |goto Orgrimmar/1 37.98,80.56
step
talk Baine Bloodhoof##125285
|tip Inside the building.
Ask him _"What do we know about the Hightmountain tauren?"_
Speak with Baine about the Highmountain Tauren |q 50242/1 |goto 38.18,81.10
step
talk Lady Sylvanas Windrunner##126065
|tip Inside the building.
turnin A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Liadrin##126062
accept Thalyssra's Estate##49973 |goto 37.98,80.56
step
talk Lady Liadrin##131478
turnin Thalyssra's Estate##49973 |goto Suramar/0 65.88,63.72
accept Silvermoon City##49613 |goto 65.88,63.72
step
talk Lady Liadrin##130133
turnin Silvermoon City##49613 |goto Silvermoon City/0 58.12,19.88
accept Remember the Sunwell##49354 |goto 58.12,19.88
step
click Portal to the Sunwell |goto 53.95,19.49
Enter the Scenario |scenariostart |q 49354 |future |q 49354 |future
step
Meet with Liadrin |scenariogoal Meet with Liadrin.##1/38106 |goto Shrine of the Eclipse/1 61.10,71.48 |q 49354 |future
step
Follow the path |goto 56.52,73.29 < 7 |walk
Walk with Thalyssra |scenariogoal Walk with Thalyssra##2/38160 |goto 50.09,66.13 |q 49354 |future
step
Kill enemies around this area
Defeat the Sunwell Guardians |scenariogoal Defeat the Sunwell Guardians##3/38161 |goto 50.09,66.13 |q 49354 |future
step
kill Aruun the Darkener##129659 |scenariogoal Aruun the Darkener slain##4/38162 |goto 48.69,66.06 |q 49354 |future
step
Close the Void Rift |scenariogoal Void rift closed##5/38519 |q 49354 |future
|tip Wait for the dialogue to complete.
step
Follow the path |goto 58.09,65.52 < 7 |walk
click Silvermoon Translocator |goto 62.30,67.03
Leave the Sunwell |scenariogoal Leave the Sunwell##6/38163 |q 49354 |future
step
click Silvermoon Translocator |goto 62.30,67.03
Leave the Sunwell |scenariogoal Leave the Sunwell##6/38163 |goto Silvermoon City/0 58.25,19.35 < 1000 |noway |c |q 49354 |future
step
talk Lady Liadrin##130133
turnin Remember the Sunwell##49354 |goto 58.45,19.09
accept The Nightborne##49614 |goto 58.45,19.09
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Nightborne##49614 |goto 37.77,81.16
step
_Congratulations!_
You unlocked the Nightborne Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Highmountain Tauren Race Unlock",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the new Highmountain Tauren allied race.",
condition_suggested=function() return achieved(10059) and not achieved(12245) end,
image=ZGV.IMAGESDIR.."HighmountainTaurenUnlock",
},[[
step
Load the "Highmountain" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Highmountain"
|tip Click the line above to load the guide.
|tip You must progress through the Highmountain guide until you earn the "Ain't No Mountain High Enough" achievement.
Earn the "Ain't No Mountain High Enough" Achievement |achieve 10059
step
accept The Call for Allies##49930
|tip You will automatically accept this quest.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 10 |walk
talk Lady Sylvanas Windrunner##126065
|tip Inside the building.
turnin The Call for Allies##49930 |goto Orgrimmar/1 37.78,81.15
accept A Choice of Allies##50242 |goto Orgrimmar/1 37.78,81.15
step
talk Eitrigg##126066
|tip Inside the building.
Ask him _"What do we know about the Mag'har orcs?"_
Speak with Eitrigg about the Mag'har Orcs |q 50242/3 |goto 37.80,80.56
step
talk Lady Liadrin##126062
|tip Inside the building.
Ask her _"What do we know about the nightborne?"_
Speak with Liadrin about the Nightborne |q 50242/2 |goto Orgrimmar/1 37.98,80.56
step
talk Baine Bloodhoof##125285
|tip Inside the building.
Ask him _"What do we know about the Hightmountain tauren?"_
Speak with Baine about the Highmountain Tauren |q 50242/1 |goto 38.18,81.10
step
talk Lady Sylvanas Windrunner##126065
|tip Inside the building.
turnin A Choice of Allies##50242 |goto 37.77,81.16
step
talk Baine Bloodhoof##125285
accept A Feast for Our Kin##48066 |goto 38.17,81.10
step
Enter the building |goto Thunder Bluff/0 59.84,51.69 < 7 |walk
talk Baine Bloodhoof##93844
turnin A Feast for Our Kin##48066 |goto 61.65,52.10
step
talk Baine Bloodhoof##129914
|tip Wait for the dialogue to complete.
accept Shadow Over Thunder Bluff##48067 |goto Thunder Bluff/0 61.52,51.75
stickystart "Dark_Tendril"
step
kill Shadow of Uul##125141+ |q 48067/2 |goto 55.36,51.33
step
label "Dark_Tendril"
kill Dark Tendril##125136+ |q 48067/1 |goto 55.36,51.33
step
talk Baine Bloodhoof##130773
|tip Next to you.
turnin Shadow Over Thunder Bluff##48067 |goto 55.20,51.05
accept Dark Forces##49756 |goto 55.20,51.05
step
kill Qy'telek##130726
|tip He walks around.
Slay Qy'telek |q 49756/1 |goto 38.17,61.81
step
talk Baine Bloodhoof##130773
|tip Next to you.
turnin Dark Forces##49756 |goto 38.04,60.65
accept Return to Highmountain##48079 |goto 38.04,60.65
step
talk Mayla Highmountain##108434
turnin Return to Highmountain##48079 |goto Thunder Totem/6 68.82,71.21
step
talk Spiritwalker Graysky##105085
accept Dark Tales##41884 |goto 68.38,72.97
step
Follow the path |goto Highmountain/0 36.58,65.92 < 10 |only if walking
Follow the path |goto 37.43,66.55 < 15 |only if walking
Follow the path |goto 38.73,67.99 < 15 |only if walking
Enter the building |goto 38.65,68.66 < 7 |walk
talk Spiritwalker Graysky##125454
turnin Dark Tales##41884 |goto 38.51,69.10
accept Walking in Their Footsteps##41764 |goto 38.51,69.10
step
click Water of Vision##248865
Use the Water of Vision |q 41764/1 |goto 38.53,69.17
stickystart "Shadow_Lurker"
step
Leave the building |goto 38.66,68.64 < 7 |walk
Follow the path |goto 39.57,69.43 < 7 |walk
Follow the path |goto 40.28,71.22 < 15 |only if walking
Enter the cave |goto 41.45,72.57 < 10 |walk
Follow the path |goto 42.01,72.77 < 10 |walk
Follow the path |goto 42.34,72.33 < 10 |walk
kill Shadow of Uul##125141 |q 41764/3 |goto 43.52,73.29
step
label "Shadow_Lurker"
kill Shadow Lurker##105069 |q 41764/2 |goto 43.52,73.29
step
Follow the path |goto 43.67,74.02 < 10 |walk
Follow the path up |goto 44.19,74.95 < 7 |walk
Follow the path |goto 44.12,75.96 < 7 |walk
Follow the path |goto 44.98,76.40 < 10 |walk
Follow the path |goto 45.64,75.85 < 10 |walk
Follow the path |goto 46.25,74.80 < 10 |walk
click Bitestone Ward
Place the Bitestone Ward |q 41764/4 |goto 46.16,73.66
step
talk Spiritwalker Graysky##125454
turnin Walking in Their Footsteps##41764 |goto 38.51,69.10
accept Shadow of the Sepulcher##48185 |goto 38.51,69.10
step
Follow the path |goto 53.17,45.95 < 10 |only if walking
Follow the path |goto 54.36,46.73 < 10 |only if walking
Follow the path down |goto 54.63,45.69 < 10 |only if walking
Follow the path |goto 56.31,45.61 < 10 |only if walking
Enter the building |goto 56.81,46.05 < 7 |walk
talk Spiritwalker Graysky##125459
turnin Shadow of the Sepulcher##48185 |goto 57.01,46.21
accept Minions of the Darkness##41799 |goto 57.01,46.21
step
click Water of Vision##248865
Use the Water of Vision |q 41799/1 |goto 57.05,46.16
step
kill Dark Spirit##104872+
|tip Use the abilities on your bar.
Slay #12# Dark Spirits |q 41799/2 |goto 55.98,45.52
step
Enter the cave |goto 55.15,44.27 < 7 |walk
Follow the path |goto 54.61,43.62 < 7 |walk
Follow the path |goto 54.46,43.11 < 7 |walk
Follow the path |goto 54.65,42.71 < 7 |walk
Follow the path |goto 55.11,41.88 < 7 |walk
Follow the path |goto 54.53,41.71 < 7 |walk
Follow the path |goto 54.37,42.83 < 7 |walk
Follow the path |goto 54.98,43.34 < 7 |walk
Follow the path |goto 55.31,42.14 < 7 |walk
Follow the path |goto 55.01,41.24 < 7 |walk
kill 6 Shadowy Tendril##130418 |q 41799/3 |goto 54.74,41.15
step
Enter the cave |goto 55.21,41.84 < 7 |walk
kill Shadow of the Darkness##132090 |q 41799/4 |goto 55.36,40.85
step
click Sepulcher Ward
Place the Sepulcher Ward |q 41799/5 |goto 54.74,40.62
step
talk Spiritwalker Graysky##125459
turnin Minions of the Darkness##41799 |goto 57.01,46.21
accept Huln's Mountain##48190 |goto 57.01,46.21
step
Follow the path |goto 58.56,64.47 < 7 |only if walking
Cross the bridge |goto 57.92,63.60 < 7 |only if walking
Follow the path up |goto 57.22,63.34 < 10 |only if walking
Follow the path up |goto 56.11,63.55 < 10 |only if walking
Follow the path up |goto 54.83,63.69 < 10 |only if walking
Follow the path |goto 53.42,63.46 < 10 |only if walking
talk Spiritwalker Graysky##125466
turnin Huln's Mountain##48190 |goto 53.32,64.01
accept Servants of the Darkness##41800 |goto 53.32,64.01
step
clicknpc Spiritwalker Graysky##125829
Use the Water of Vision |q 41800/1 |goto 53.32,64.01
step
Follow the path |goto 53.97,64.84 < 10 |only if walking
Cross the bridge |goto 53.70,65.84 < 7 |only if walking
kill 10 Necrodark Defiler##104888 |q 41800/2 |goto 53.16,66.45
step
Follow the path |goto 52.63,66.61 < 10 |walk
kill Necrogg the Darkspeaker##104890
|tip He patrols up and down the hill
Slay Necrogg the Darkspeaker |q 41800/3 |goto 52.46,67.44
step
Follow the path up |goto 52.39,69.08 < 10 |only if walking
Follow the path up |goto 52.98,69.43 < 10 |only if walking
Enter the building |goto 53.23,69.35 < 7 |only if walking
click Snowmane Ward##3365
Place the Snowmane Ward |q 41800/4 |goto 53.33,69.48
step
talk Spiritwalker Graysky##125466
turnin Servants of the Darkness##41800 |goto 53.32,64.01
accept How Fares Ebonhorn?##48434 |goto 53.32,64.01
step
talk Spiritwalker Ebonhorn##124252
turnin How Fares Ebonhorn?##48434 |goto Thunder Totem/6 67.77,71.40
step
talk Mayla Highmountain##108434
accept Curse of the Necrodark##41815 |goto 68.72,71.03
step
Follow the path down |goto Highmountain/0 56.00,85.20 < 7 |only if walking
Cross the water |goto 55.34,84.21 < 15 |only if walking
Follow the path up |goto 56.07,82.00 < 10 |only if walking
Follow the path |goto 56.46,80.99 < 10 |only if walking
Follow the path |goto 56.03,80.03 < 10 |only if walking
Follow the path |goto 54.61,80.33 < 10 |only if walking
Follow the path up |goto 52.38,83.64 < 10 |only if walking
Follow the path up |goto 52.38,85.75 < 10 |only if walking
Follow the path up |goto 53.60,87.50 < 10 |only if walking
Cross the bridge |goto 56.22,89.05 < 7 |only if walking
talk Baine Bloodhoof##130423
turnin Curse of the Necrodark##41815 |goto 56.49,89.23
accept Ice and Shadow##41840 |goto 56.49,89.23
step
talk Jale Rivermane##97662
accept Whispers of the Darkness##41882 |goto 56.46,89.33
stickystart "Collect_Shadowice_Shards"
step
clicknpc Highmountain Protector##132212+
Free #6# Highmountain Protectors |q 41882/1 |goto 57.01,90.90
step
label "Collect_Shadowice_Shards"
Kill Necrodark enemies around this area
collect 20 Shadowice Shard##136400 |q 41840/1 |goto 57.67,92.72
step
talk Spiritwalker Ebonhorn##105213
turnin Whispers of the Darkness##41882 |goto 57.55,92.34
turnin Ice and Shadow##41840 |goto 57.55,92.34
accept The Final Ward##41841 |goto 57.55,92.34
step
Enter the cave |goto 57.40,92.28 < 7 |walk
Follow the path |goto 57.12,92.13 < 7 |walk
click Summit Ward
Place the Summit Ward |q 41841/1 |goto 56.49,91.44
step
talk Spiritwalker Ebonhorn##105213
turnin The Final Ward##41841 |goto 56.81,92.02
accept The Darkness##48403 |goto 56.81,92.02
step
Leave the cave |goto 57.49,92.32 < 7 |walk
kill Uul'gyneth##126001 |q 48403/1 |goto 57.87,91.07
step
Follow the path |goto 57.43,92.71 < 7 |only if walking
Follow the path up |goto 57.10,92.17 < 7 |only if walking
Follow the path up |goto 56.86,92.63 < 7 |only if walking
talk Mayla Highmountain##104997
turnin The Darkness##48403 |goto 56.66,92.71
step
talk Baine Bloodhoof##126134
accept Together We Are the Horde!##48433 |goto 56.71,92.76
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin Together We Are the Horde!##48433 |goto 37.77,81.16
step
_Congratulations!_
You unlocked the Highmountain Tauren Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Mag'har Orc Race Unlock",{
author="support@zygorguides.com",
description="\nTo unlock the new Mag'har Orc allied race, you will need to earn exalted reputation with The Honorbound and complete the Horde War Campaign.",
condition_suggested=function() return achieved(12509) and not achieved(12518) end,
condition_end=function() return achieved(12518) end,
image=ZGV.IMAGESDIR.."MagHarOrcUnlock",
},[[
step
Load the "War Campaign" Leveling Guide |confirm |next "Leveling Guides\\Battle for Azeroth (10-60)\\War Campaign"
|tip Click the line above to load the guide.
|tip You must complete the "A Cycle of Hatred" quest.
Earn the "Ready for War" Achievement |achieve 12509
step
accept The Call for Allies##49930
|tip You will automatically accept this quest.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 10 |walk
talk Lady Sylvanas Windrunner##126065
|tip Inside the building.
turnin The Call for Allies##49930 |goto Orgrimmar/1 37.78,81.15
accept A Choice of Allies##50242 |goto Orgrimmar/1 37.78,81.15
step
talk Eitrigg##126066
|tip Inside the building.
Ask him _"What do we know about the Mag'har orcs?"_
Speak with Eitrigg about the Mag'har Orcs |q 50242/3 |goto 37.80,80.56
step
talk Lady Liadrin##126062
|tip Inside the building.
Ask her _"What do we know about the nightborne?"_
Speak with Liadrin about the Nightborne |q 50242/2 |goto Orgrimmar/1 37.98,80.56
step
talk Baine Bloodhoof##125285
|tip Inside the building.
Ask him _"What do we know about the Hightmountain tauren?"_
Speak with Baine about the Highmountain Tauren |q 50242/1 |goto 38.18,81.10
step
talk Lady Sylvanas Windrunner##126065
|tip Inside the building.
turnin A Choice of Allies##50242 |goto 37.77,81.16
step
talk Eitrigg##126066
|tip Inside the building.
accept Vision of Time##53466 |goto 37.79,80.53
step
talk Chief Telemancer Oculeth##131443
|tip Inside the building.
turnin Vision of Time##53466 |goto Dazar'alor/1 67.15,73.79
accept Caverns of Time##53467 |goto Dazar'alor/1 67.15,73.79
step
Follow the path down |goto Tanaris/17 63.83,30.21 < 20 |walk
talk Anachronos##15192
|tip Downstairs inside the Caverns of Time cave.
turnin Caverns of Time##53467 |goto Tanaris/18 41.78,49.91
accept Echo of Gul'dan##53354 |goto Tanaris/18 41.78,49.91
step
click Time Rift
Watch the dialogue
kill Echo of Gul'dan##143505 |q 53354/1 |goto Blasted Lands/0 54.43,50.45
step
talk Anachronos##143692
turnin Echo of Gul'dan##53354 |goto 54.39,50.09
accept Echo of Warlord Zaela##53353 |goto 54.39,50.09
step
Enter the building |goto Kun-Lai Summit/0 68.63,45.98 < 15 |walk
click Time Rift
|tip Inside the building.
Watch the dialogue
kill Echo of Warlord Zaela##143504 |q 53353/1 |goto Kun-Lai Summit/0 68.81,43.69
step
talk Anachronos##143692
|tip Inside the building.
turnin Echo of Warlord Zaela##53353 |goto 68.90,43.97
accept Echo of Garrosh Hellscream##53355 |goto 68.90,43.97
step
talk Anachronos##144225
Tell him _"I am ready to seek the Echo of Garrosh."_
|tip You will be teleported to the Inner Sanctum Pandaria raid.
Meet Anachronos Outside Orgrimmar |q 53355/1 |goto Durotar/0 40.80,16.36
step
click Time Rift
|tip Inside the Inner Sanctum Pandaria raid.
|tip Jump down next to the yellow dragon, into the big room below.
|tip It will appear on your minimap as a yellow dot.
Watch the dialogue
kill Echo of Garrosh Hellscream##143425 |q 53355/2
step
Leave The Inner Sanctum |goto Durotar/0 40.81,16.39 |c |noway |q 53355
|tip Right-click your character portrait and choose "Leave instance group."
step
talk Chief Telemancer Oculeth##131443
|tip Inside the building.
turnin Echo of Garrosh Hellscream##53355 |goto Dazar'alor/1 67.15,73.79
step
talk Eitrigg##126066
|tip Inside the building.
accept Restoring Old Bonds##52942 |goto 70.60,69.21
step
talk Chief Telemancer Oculeth##131443
|tip Inside the building.
Tell him _"I am ready to go to Draenor."_
Speak with Oculeth to go to Draenor |q 52942/1 |goto 67.15,73.79
step
Travel to Gorgrond |goto Gorgrond Maghar Scenario/0 41.13,53.19 < 20 |noway |c |q 52942
step
Follow Eitrigg |goto 41.60,53.32 < 15 |c |q 52942
step
Watch the dialogue
|tip You will be taken here automatically.
Meet the Overlord |q 52942/2 |goto 44.90,53.04
step
talk Eitrigg##126066
turnin Restoring Old Bonds##52942 |goto 44.94,53.12
accept Calling Out the Clans##52943 |goto 44.94,53.12
step
Watch the dialogue
click Blackrock Banner
Salute the Blackrock Clan |q 52943/1 |goto 45.16,52.66
step
Watch the dialogue
click Warsong Banner
Salute the Warsong Clan |q 52943/2 |goto 45.48,51.95
step
Watch the dialogue
click Frostwolf Banner
Salute the Frostwolf Clan |q 52943/3 |goto 44.82,52.00
step
Watch the dialogue
talk Overlord Geya'rah##142109
turnin Calling Out the Clans##52943 |goto 45.14,52.13
step
Watch the dialogue
talk Grommash Hellscream
accept Bonds Forged Through Battle##52945 |goto 45.26,52.09
step
Follow the path |goto 45.03,53.87 < 20 |only if walking
Cross the bridge |goto 44.46,54.68 < 15 |only if walking
Follow the path |goto 43.28,56.42 < 20 |only if walking
Follow the path |goto 42.24,57.21 < 15 |only if walking
Continue following the path |goto 41.99,62.16 < 30 |only if walking
Continue following the path |goto 41.73,64.73 < 15 |only if walking
Follow the path up |goto 40.26,65.09 < 15 |only if walking
Follow the path |goto 38.91,66.33 < 15 |only if walking
Enter the cave |goto 38.58,67.38 < 15 |walk
Kill Kor'gall enemies around this area
|tip You can find more outside the cave.
Slay #10# Kor'gall Defectors |q 52945/1 |goto 37.69,68.39
step
Cross the bridge |goto 36.79,68.07 < 10 |walk
Follow the path |goto 36.29,68.67 < 10 |walk
Watch the dialogue
kill Kor'gall, Greatson of Kor'gal##140949 |q 52945/2 |goto 36.48,70.05
|tip Inside the cave.
step
_Next to you:_
talk Overlord Geya'rah##142109
turnin Bonds Forged Through Battle##52945
accept Tyranny of the Light##52955
step
Begin the "Tryanny of the Light" Scenario |scenariostart |q 52955
step
Jump down here |goto 36.97,69.18 < 10 |walk
Follow the path |goto 37.92,68.18 < 10 |walk
Leave the cave |goto 38.55,67.39 < 15 |walk
Follow the path |goto 41.66,64.80 < 20 |only if walking
Continue following the path |goto 43.22,66.34 < 30 |only if walking
Accompany Geya'rah to Beastwatch |scenariostage 1 |goto 43.85,69.35 |q 52955
step
Follow the path |goto 44.58,71.72 < 20 |only if walking
Kill enemies around this area
click Lightbound Battery+
|tip They look like white and gold artillery machines on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Defend Beastwatch Against the Lightbound Assault |scenariostage 2 |goto 45.11,74.33 |q 52955
step
Look for Exarch Orelis in Evermorn Hold |scenariostage 3 |goto 45.50,78.57 |q 52955
step
kill Exarch Orelis##142511 |scenariostage 4 |goto 45.27,80.34 |q 52955
step
Follow the path |goto 45.53,78.52 < 20 |only if walking
Meet with Grommash |scenariostage 5 |goto 44.55,71.38 |q 52955
step
Watch the dialogue
Await Orders from the Warchief |scenariostage 6 |goto 44.55,71.38 |q 52955
step
Enter the building |goto 43.70,71.08 < 10 |walk
click Mag'har Turret
|tip At the top of the tower.
Kill enemies around this area
|tip Use the abilities on your action bar.
|tip They are on the ground nearby.
Defeat the Lightbound Soldiers |scenariostage 7 |goto 43.63,71.43 |q 52955
step
Watch the dialogue
Return to the Warchief and Await Further Orders |scenariostage 8 |goto 44.55,71.37 |q 52955
step
Watch the dialogue
Escape from Draenor |scenarioend |goto 44.55,71.37 |q 52955
step
Travel to Durotar |goto Durotar/0 40.75,17.24 < 20 |noway |c |q 52955
step
talk Overlord Geya'rah##143845
turnin Tyranny of the Light##52955 |goto Durotar/0 41.25,16.77
accept The Uncorrupted##51479 |goto Durotar/0 41.25,16.77
step
Enter the building |goto Orgrimmar/1 38.58,80.12 < 15 |walk
talk Lady Sylvanas Windrunner##126065
|tip Inside the building.
turnin The Uncorrupted##51479 |goto Orgrimmar/1 37.78,81.15
step
_Congratulations!_
You unlocked the Mag'har Orc Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Vulpera Race Unlock",{
author="support@zygorguides.com",
description="To unlock the new Vulpera allied race, you will need to earn the \"Secrets in the Sands\" achievement.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
condition_suggested=function() return achieved(12478) and not achieved(13206) end,
condition_end=function() return achieved(13206) end,
image=ZGV.IMAGESDIR.."VulperaUnlock",
},[[
step
Earn the "Secrets in the Sands" Achievement |achieve 12478
|tip Complete the "Vol'dun" leveling guide to earn this achievement.
step
talk Ji Firepaw##133523
|tip Inside the building.
accept Guests at Grommash Hold##53870 |goto Orgrimmar/1 37.77,81.17
step
Enter the building |goto 49.93,75.63 < 15 |walk
talk Kiro##145416
|tip Inside the building.
turnin Guests at Grommash Hold##53870 |goto 48.90,72.76
accept A Declaration of Intent##53889 |goto 48.90,72.76
step
Watch the dialogue
Witness Kiro's declaration |q 53889/1 |goto 48.90,72.76
step
talk Kiro##145416
|tip Inside the building.
turnin A Declaration of Intent##53889 |goto 48.90,72.76
accept New Allies, New Problems##53890 |goto 48.90,72.76
step
talk Commander Dresh##145532
|tip Inside the building.
Ask him _"Why have you come here?"_
Question Commander Dresh |q 53890/1 |goto 48.21,71.74
step
talk First Arcanist Thalyssra##145531
|tip Inside the building.
Ask her _"Why have you come here?"_
Question First Arcanist Thalyssra |q 53890/3 |goto 48.65,71.27
step
talk Bladeguard Sonji##145533
|tip Inside the building.
Ask her _"Why have you come here?"_
Question Bladeguard Sonji |q 53890/2 |goto 48.68,71.63
step
talk Kiro##145416
|tip Inside the building.
turnin New Allies, New Problems##53890 |goto 48.90,72.76
accept No Problem Too Small##53891 |goto 48.90,72.76
step
talk Kiro##145641
turnin No Problem Too Small##53891 |goto Twilight Highlands/0 44.11,73.48
accept Where Are the Workers?##53892 |goto 44.11,73.48
step
Follow Kiro |q 53892/1 |goto 46.82,66.23
step
Watch the dialogue
|tip Downstairs inside the hideout.
Investigate the Peon Hideout |q 53892/2 |goto 46.13,65.63
step
talk Crushblow Peon##145717+
|tip Downstairs inside the hideout.
Ask them _"Why aren't you working?"_
Question #3# Peons |q 53892/3 |goto 46.04,65.56
step
talk Kiro##145641
turnin Where Are the Workers?##53892 |goto 46.81,66.22
accept A Little Goodwill##53893 |goto 46.81,66.22
accept Worthwhile Repairs##53894 |goto 46.81,66.22
accept Peon Promotions!##53895 |goto 46.81,66.22
step
talk Crushblow Peon##145717
|tip Downstairs inside the hideout.
Tell him _"Job well done. You've been promoted to Peon, Rank 2."_
Promote the Peon |q 53895/1 |goto 46.09,65.64 |count 1
step
talk Crushblow Peon##145717
|tip Downstairs inside the hideout.
Tell him _"Good work. You've been promoted to Senior Peon."_
Promote the Peon |q 53895/1 |goto 46.09,65.56 |count 2
step
talk Crushblow Peon##145717
|tip Downstairs inside the hideout.
Tell him _"Congratulations! You've been promoted to Lead Peon."_
Promote the Peon |q 53895/1 |goto 46.12,65.53 |count 3
stickystart "Collect_Worg_Meat"
stickystart "Collect_Clucker_Tidbits"
stickystart "Collect_Twilight_Ore"
step
use the Enlarging Totem##171356
|tip Use it on Twilight Prowlers around this area.
kill Twilight Prowler##145736+
collect 100 Saber Flank##164926 |q 53893/1 |goto 45.48,67.06
step
label "Collect_Worg_Meat"
use the Enlarging Totem##171356
|tip Use it on Highland Worgs around this area.
kill Highland Worg##157589+
collect 100 Worg Meat##171357 |q 53893/2 |goto 51.02,73.77
step
label "Collect_Clucker_Tidbits"
use the Enlarging Totem##171356
|tip Use it on Highlands Cluckers around this area.
kill Highlands Clucker##157590+
collect 100 Clucker Tidbits##171358 |q 53893/3 |goto 45.48,67.06
step
label "Collect_Twilight_Ore"
click Twilight Ore##307836+
|tip They look like blue and gray colored mining veins around this area.
collect 15 Twilight Ore##164927 |q 53894/1 |goto 45.48,67.06
step
talk Kiro##145641
turnin A Little Goodwill##53893 |goto 46.81,66.22
turnin Worthwhile Repairs##53894 |goto 46.81,66.22
turnin Peon Promotions!##53895 |goto 46.81,66.22
accept A Party in Your Honor##53897 |goto 46.81,66.22
step
talk Foreman Magrok##145651
|tip Downstairs inside the hideout.
Tell him _"The Horde are throwing a party in your honor."_
Invite Foreman Magrok |q 53897/1 |goto 45.92,65.50
step
talk Kiro##145641
turnin A Party in Your Honor##53897 |goto 45.05,76.24
accept Strength and Honor##53898 |goto 45.05,76.24
step
talk Foreman Magrok##145978
Tell him _"I challenge you to battle!"_
Confront Foreman Magrok |q 53898/1 |goto 45.66,76.42
step
kill Foreman Magrok##145978
Defeat Foreman Magrok |q 53898/2 |goto 45.66,76.42
step
talk Kiro##145641
turnin Strength and Honor##53898 |goto 45.05,76.24
accept Job's Done##54026 |goto 45.05,76.24
step
Enter the building |goto Orgrimmar/1 49.93,75.67 < 15 |walk
talk Commander Dresh##145532
|tip Inside the building.
turnin Job's Done##54026 |goto 48.21,71.73
step
talk Kiro##146261
|tip Inside the building.
accept On the Outskirts##53899 |goto 49.02,73.67
step
talk Nisha##145980
turnin On the Outskirts##53899 |goto Zuldazar/0 74.86,63.03
accept We'll Use Their Weapons##53900 |goto 74.86,63.03
accept Explosions Always Work##53901 |goto 74.86,63.03
accept Destroying the Source##58087 |goto 74.86,63.03
stickystart "Collect_Nazeshi_Weaponry"
step
click Nazeshi Powercell+
|tip They look like large blue orbs on the ground around this area.
|tip They appear on your minimap as yellow dots.
Destroy #3# Nazeshi Powercells |q 58087/1 |goto 76.51,65.11
step
click Volatile Explosives+
|tip They look like glowing yellow bundles of dynamite on the harpoon launchers around this area.
|tip Harpoon launchers can be found along this beach.
Place #8# Explosives |q 53901/1 |goto 74.77,67.72
step
Detonate the Explosives |q 53901/2 |goto 74.42,67.66
|tip Use the "Detonate" ability that appears on-screen.
step
label "Collect_Nazeshi_Weaponry"
Kill Nazeshi enemies around this area
Collect #15# Nazeshi Weaponry |q 53900/1 |goto 74.74,65.82
step
talk Nisha##145980
turnin We'll Use Their Weapons##53900 |goto 74.86,63.03
turnin Explosions Always Work##53901 |goto 74.86,63.03
turnin Destroying the Source##58087 |goto 74.86,63.03
accept Taking Out the Tidecaller##53902 |goto 74.86,63.03
step
kill Nazeshi Tidebreaker##157735 |q 53902/1 |goto 77.19,65.36
step
_Next to you:_
talk Nisha##158672
turnin Taking Out the Tidecaller##53902
accept Threat Contained##54027
step
Enter the building |goto Orgrimmar/1 49.89,75.56 < 15 |walk
talk Bladeguard Sonji##145533
|tip Inside the building.
turnin Threat Contained##54027 |goto 48.67,71.62
step
talk Kiro##146261
|tip Inside the building.
accept Meet with Meerah##53903 |goto 49.02,73.67
step
talk Meerah##146264
turnin Meet with Meerah##53903 |goto Suramar/0 58.93,55.08
accept The Vintner's Assistants##53904 |goto 58.93,55.08
step
talk Boss Mida##146277
Ask her _"What are you tasked with?"_
Speak to Boss Mida |q 53904/2 |goto 60.69,56.37
step
talk Micah Broadhoof##146276
|tip Inside the building.
Ask him _"What are you tasked with?"_
Speak to Micah Broadhoof |q 53904/1 |goto 61.22,55.15
step
talk Nomi##146273
Ask him _"What are you tasked with?"_
Speak to Nomi |q 53904/3 |goto 62.42,57.64
step
talk Meerah##146264
turnin The Vintner's Assistants##53904 |goto 58.93,55.08
accept Playing to Their Strengths##53905 |goto 58.93,55.08
step
talk Boss Mida##146277
Tell her _"You should be obtaining ingredients."_
Assign Boss Mida |q 53905/2 |goto 60.69,56.37
step
talk Micah Broadhoof##146276
|tip Inside the building.
Tell him _"You should be stomping fruit."_
Assign Micah Broadhoof |q 53905/1 |goto 61.22,55.15
step
talk Nomi##146273
Tell him _"You should be creating the recipe."_
Assign Nomi |q 53905/3 |goto 62.42,57.64
step
talk Vintner Iltheux##146270
|tip Inside the building.
Tell him _"We've made some adjustments to your production pipeline."_
Inform Vintner Iltheux |q 53905/4 |goto 58.79,55.42
step
talk Meerah##146264
|tip Inside the building.
turnin Playing to Their Strengths##53905 |goto 58.80,55.53
step
talk Vintner Iltheux##146270
|tip Inside the building.
Tell him _"We've made some adjustments to your production pipeline."_
Inform Vintner Iltheux |q 53905/4 |goto 58.78,55.42
step
talk Meerah##157668
|tip Inside the building.
turnin Playing to Their Strengths##53905 |goto 58.80,55.54
accept A Particular Process##54036 |goto 58.80,55.54
step
talk Nomi##146301
turnin A Particular Process##54036 |goto 60.60,56.22
accept Fermented for the Horde##53906 |goto 60.60,56.22
step
talk Boss Mida##146305
|tip Inside the building.
buy 10 Fermented Firebloom##165013 |q 53906/2 |goto 61.37,55.36
step
kill Tattered Silkwing##146321+
collect 20 Silkwing Fibers##165012 |q 53906/1 |goto 62.38,57.57
step
talk Nomi##146301
turnin Fermented for the Horde##53906 |goto 60.60,56.22
accept Sip and Savor##53907 |goto 60.60,56.22
step
click Nightborne Vat##310243
collect Nomi's Wine##165014 |q 53907/1 |goto 60.60,56.36
step
talk Vintner Iltheux##146270
|tip Inside the building.
Choose _<Give Vintner Iltheux the sample of Nomi's Wine.>_
Watch the dialogue
Deliver the Sample to Vintner Iltheux |q 53907/2 |goto 58.79,55.42
step
talk Meerah##157685
|tip Inside the building.
turnin Sip and Savor##53907 |goto 58.80,55.53
accept Awaiting Our Arrival##53908 |goto 58.80,55.53
step
Enter the building |goto Orgrimmar/1 49.90,75.60 < 15 |walk
talk Baine Bloodhoof##145424
|tip Inside the building.
turnin Awaiting Our Arrival##53908 |goto 48.30,71.07
accept New Allies Among Us##57448 |goto 48.30,71.07
step
Watch the dialogue
|tip Inside the building.
Witness Baine Welcome the Vulpera to the Horde |q 57448/1 |goto 48.30,71.07
step
talk Kiro##157693
|tip Inside the building.
turnin New Allies Among Us##57448 |goto 48.44,71.50
step
_Congratulations!_
You unlocked the Vulpera Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Zandalari Troll Race Unlock",{
author="support@zygorguides.com",
description="\nTo unlock the new Zandalari Troll allied race, you will need to earn the \"Zandalar Forever!\" "..
"and \"Tides of Vengeance\" achievements.",
condition_suggested=function() return (achieved(13466) and achieved(12479)) and not achieved(13161) end,
condition_end=function() return achieved(13161) end,
image=ZGV.IMAGESDIR.."ZandalariTrollUnlock",
},[[
step
Earn the "Tides of Vengeance" Achievement |achieve 13466
|tip Use the "War Campaign" guide to earn this achievement.
step
Earn the "Zandalar Forever!" Achievement |achieve 12479
|tip Use the "Zandalar Forever!" achievement guide to earn this achievement.
step
Enter the building |goto Orgrimmar/1 38.57,80.13 < 10 |walk
talk Ji Firepaw##133523
|tip Inside the building.
accept A Royal Occasion##53831 |goto Orgrimmar/1 37.77,81.16
step
Meet the Zandalari Emissary |q 53831/2 |goto Dazar'alor/1 48.62,22.02
step
talk Natal'hakata##145414
|tip Inside the building.
turnin A Royal Occasion##53831 |goto 48.62,22.02
accept A Queen's Entourage##53823 |goto 48.62,22.02
step
Run up the stairs |goto Dazar'alor/0 51.74,19.05 < 10 |only if walking
Continue up the stairs |goto 46.27,22.55 < 10 |only if walking
talk Princess Talanji##145359
turnin A Queen's Entourage##53823 |goto 42.59,22.81
step
talk High Prelate Rata##148096
accept The Rite of Kings and Queens##53824 |goto 42.58,22.54
step
clicknpc Ceremonial Warbeast##146033
Ride the Ceremonial Warbeast |q 53824/1 |goto 42.48,23.26
step
Watch the dialogue
Ride in Procession with Talanji |q 53824/2 |goto 39.85,12.64
step
talk High Prelate Rata##148096
turnin The Rite of Kings and Queens##53824 |goto 40.28,12.23
step
Watch the dialogue
talk Zolani##145360
accept The Instigator Among Us##53826 |goto 40.27,12.45
accept Quelling the Masses##54419 |goto 40.27,12.45
stickystart "Kill_12_Rioting_Speakers"
step
Jump down here |goto 37.30,10.95 < 15 |only if walking
kill Enforcer Malzon##147777 |q 53826/1 |goto 37.29,10.40
step
label "Kill_12_Rioting_Speakers"
kill Rioting Speaker##147779+
talk Rioting Zocalo Drudge##147781
Tell them _"I am not your enemy. Let me help you."_
Subdue #12# Rioters |q 54419/1 |goto 36.28,12.04
step
Run up the stairs |goto 42.58,22.44 < 15 |only if walking
talk Princess Talanji##145359
turnin The Instigator Among Us##53826 |goto 40.51,11.91
turnin Quelling the Masses##54419 |goto 40.51,11.91
accept Talanji's Mercy##54301 |goto 40.51,11.91
step
talk Zolani##145360
accept Breaking the Faith##54300 |goto 40.50,12.42
step
talk High Prelate Rata##148096
accept Heresy!##54925 |goto 40.18,11.91
stickystart "Subdue_12_Angered_Faithful"
stickystart "Evacuate_12_Innocent_Bystanders"
step
Follow the path |goto 44.06,19.36 < 20 |only if walking
Run down the stairs |goto 47.35,17.80 < 20 |only if walking
Jump down here |goto 49.66,16.49 < 15 |only if walking
kill Prelate Kaj'ra##147452 |q 54925/1 |goto 50.72,14.96
|tip She walks around this area.
step
label "Subdue_12_Angered_Faithful"
Kill Furious Raptari enemies around this area
Subdue #12# Angered Faithful |q 54300/1 |goto 51.17,9.60
step
label "Evacuate_12_Innocent_Bystanders"
clicknpc Raptari Druid##147913+
clicknpc Priest of Kimbul##147919+
clicknpc Torcalin Cleric##147918+
|tip They look like weeping and scared trolls around this area.
Evacuate #12# Innocent Bystanders |q 54301/1 |goto 51.17,9.60
step
Run up the stairs |goto 48.76,15.73 < 20 |only if walking
Follow the path |goto 44.46,19.31 < 20 |only if walking
talk Zolani##145360
turnin Breaking the Faith##54300 |goto 40.42,11.95
step
talk High Prelate Rata##148096
turnin Heresy!##54925 |goto 40.49,11.85
step
talk Princess Talanji##145359
turnin Heresy!##54925 |goto 40.56,11.97
turnin Talanji's Mercy##54301 |goto 40.56,11.97
accept The New Zanchuli Council##53825 |goto 40.56,11.97
step
Enter the building |goto 41.15,10.96 < 10 |walk
Run up the stairs |goto Dazar'alor/4 45.89,39.15 < 10 |walk
Continue up the stairs |goto 45.60,17.27 < 10 |walk
Meet the New Zanchuli Council |q 53825/1 |goto Dazar'alor/3 64.46,34.29
step
talk Wardruid Loti##145361
|tip Inside the building.
Greet Wardruid Loti |q 53825/2 |goto 63.00,24.46
step
talk Lashk##146030
|tip Inside the building.
Greet Lashk |q 53825/3 |goto 64.47,26.44
step
talk Jo'nok, Bulwark of Torcali##146124
|tip Inside the building.
Greet Jo'nok |q 53825/4 |goto 66.91,31.57
step
talk General Rakera##145366
|tip Inside the building.
Greet General Rakera |q 53825/5 |goto 68.30,34.03
step
talk Hexlord Raal##145362
|tip Inside the building.
Greet Hexlord Raal |q 53825/6 |goto 69.68,35.93
step
Watch the dialogue
talk Princess Talanji##145359
|tip Inside the building.
turnin The New Zanchuli Council##53825 |goto 60.43,38.75
accept The Council Has Spoken##53827 |goto 60.43,38.75
step
Watch the dialogue
Give the Zanchuli Blessing |q 53827/1 |goto 60.30,38.76
step
Kill enemies that attack in waves
Survive the Ambush |q 53827/2 |goto 60.30,38.76
step
kill Samara##146164 |q 53827/3 |goto 64.59,32.90
|tip Inside the building.
step
Watch the dialogue
talk Princess Talanji##145359
turnin The Council Has Spoken##53827 |goto 60.46,38.77
accept Gaze of the Loa##53828 |goto 60.46,38.77
step
Follow the path |goto 66.81,69.66 < 10 |walk
Leave the building |goto Dazar'alor/0 45.45,13.05 < 10 |walk
Follow Talanji |q 53828/1 |goto 44.58,14.37
step
talk Unknown##146263
turnin Gaze of the Loa##53828 |goto 44.58,14.37
step
talk Krag'wa the Huge##146208
accept Gaze of the Loa: Krag'wa##54031 |goto 44.26,14.85
step
talk Krag'wa the Huge##146208
Tell it _"I am ready."_
Speak to Krag'wa |q 54031/1 |goto 44.26,14.85
step
Watch the dialogue
Complete Krag'wa's Trial |q 54031/2 |goto 44.40,15.98
|tip Keep moving constantly away from frogs that spawn, using the "Dash" ability as needed.
step
Watch the dialogue
talk Krag'wa the Huge##146208
turnin Gaze of the Loa: Krag'wa##54031 |goto 44.29,14.80
accept Gaze of the Loa: Gonk##54033 |goto 44.29,14.80
step
Run up the stairs |goto 46.05,15.89 < 10 |only if walking
Follow Talanji |q 54033/1 |goto 46.33,12.25
step
talk Gonk##146214
Tell it _"As you wish."_
Speak to Gonk |q 54033/2 |goto 46.53,12.01
step
Watch the dialogue
talk Gonk##146214
turnin Gaze of the Loa: Gonk##54033 |goto 46.51,12.03
accept Gaze of the Loa: Pa'ku##54032 |goto 46.51,12.03
step
Follow Talanji |q 54032/1 |goto 44.72,9.10
step
talk Pa'ku##146209
Tell it _"I am ready."_
Speak to Pa'ku |q 54032/2 |goto 44.60,8.92
step
Complete Pa'ku's Trial |q 54032/3 |goto 44.60,8.92
|tip Run up the stairs, moving left and right as needed to dodge the tornadoes.
step
talk Pa'ku##146209
turnin Gaze of the Loa: Pa'ku##54032 |goto 44.62,8.95
accept Gaze of the Loa: Bwonsamdi##54034 |goto 44.62,8.95
step
Watch the dialogue
Follow Talanji |q 54034/1 |goto 43.61,7.37
step
talk Bwonsamdi##146215
Tell him _"Yes."_
Watch the dialogue
Speak to Bwonsamdi |q 54034/2 |goto 43.28,6.88
step
Watch the dialogue
talk Princess Talanji##145359
turnin Gaze of the Loa: Bwonsamdi##54034 |goto 42.72,8.74
accept Queen of the Zandalari##53830 |goto 42.72,8.74
step
talk Princess Talanji##145359
Tell her _"Yes."_
Witness Talanji's Address |q 53830/1 |goto 42.72,8.74
step
Watch the dialogue
talk Queen Talanji##146335
turnin Queen of the Zandalari##53830 |goto 42.41,9.22
accept Allegiance of the Zandalari##53719 |goto 42.41,9.22
step
Jump down here |goto 42.16,9.60 < 10 |only if walking
talk Lady Sylvanas Windrunner##145374
Tell her _"Queen Talanji asked to speak with you."_
Extend Talanji's Invitation |q 53719/1 |goto 41.42,10.63
step
Attend the Meeting |q 53719/2 |goto Dazar'alor/0 49.92,46.27
|tip At the top The Great Seal.
step
Watch the dialogue
talk Lady Sylvanas Windrunner##145374
turnin Allegiance of the Zandalari##53719 |goto 49.93,46.27
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Zuldazar Loremaster (Story Quest Only)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Zuldazar storylines:\n\nAudience with the King\nPort of Zandalar\nWeb of Lies\nThe Zanchuli Council\nPortents and Prophecies\nWarport Rastari\nAmong the People\nMarch of the Loa",
condition_suggested=function() return level >= 50 and not achieved(11861) and completedq(52131) end,
condition_end=function() return achieved(11861) end,
startlevel=10.0,
endlevel=50.0,
image=ZGV.IMAGESDIR.."Zuldazar",
},[[
step
click Scouting Map
|tip Inside the building.
accept Zuldazar##47514 |goto Dazar'alor/2 41.71,69.41
step
talk Princess Talanji##133050
|tip Inside the building.
turnin Zuldazar##47514 |goto 41.14,66.73
accept Trust of a King##49615 |goto 41.19,66.74
step
talk Brillin the Beauty##122690
|tip Inside the building.
home The Great Seal |goto Dazar'alor/1 48.86,72.64 |q 49615
step
Ride the Elevator Up |goto Dazar'alor/2 22.58,72.07 < 10 |walk
talk King Rastakhan##120740
|tip On top of the building.
turnin Trust of a King##49615 |goto Dazar'alor/0 49.93,46.61
accept Tal'gurub##49488 |goto Dazar'alor/0 49.93,46.61
step
talk Zolani##122915
|tip On top of the building.
accept The Port of Zandalar##50835 |goto 49.81,46.56
step
talk Yazma##122641
|tip On top of the building.
accept The Zanchuli Council##47445 |goto 49.72,46.51
step
talk Paku'ai Rokota##122689
fpath The Great Seal |goto 51.91,41.20
step
talk Zolani##135441
turnin The Port of Zandalar##50835 |goto 50.06,85.07
accept Shakedown##46926 |goto 50.06,85.07
step
talk Yazma##126684
accept The Word of Zul##46846 |goto 50.05,84.76
step
talk Witch Doctor Jala##126148
accept The Red Market##48452 |goto 44.25,82.15
stickystart "Collect_Dark_Fetishes"
step
Run down the stairs |goto 42.83,80.86 < 10 |only if walking
Follow the path |goto 41.83,78.98 < 15 |only if walking
Enter the building |goto 42.80,83.58 < 10 |walk
click Chalice of Calling
|tip Inside the building.
Destroy the Chalice of Calling |q 48452/2 |goto 43.08,83.14
step
label "Collect_Dark_Fetishes"
Kill Crimson enemies around this area
collect 3 Dark Fetishes##152461 |q 48452/1 |goto 42.29,83.76
step
Run up the stairs |goto 42.81,78.72 < 10 |only if walking
Run up the stairs |goto 43.43,81.69 < 10 |only if walking
talk Witch Doctor Jala##126148
turnin The Red Market##48452 |goto 44.25,82.15
accept Evidence of Evil##48454 |goto 44.25,82.15
stickystart "Slay_Dockside_Thugs"
step
talk Dockmaster Cobo##126009
Choose _<Show him the Word of Zul.>_
Show Dockmaster Cobo the Message |q 46846/3 |goto 45.31,79.78
step
label "Slay_Dockside_Thugs"
Kill Thug enemies around this area
Slay #15# Dockside Thugs |q 46926/1 |goto 47.91,83.03
step
talk Zolani##135441
turnin Shakedown##46926 |goto 50.05,85.06
turnin Evidence of Evil##48454 |goto 50.07,85.07
accept Deterrent##46929 |goto 50.05,85.06
step
talk Yazma##126684
accept Punishment of Tal'farrak##46928 |goto 50.05,84.76
step
Follow the path |goto 51.22,85.69 < 15 |only if walking
talk Nokali the Scarred##125485
Choose _<Show him the Word of Zul.>_
Show Nokali the Message |q 46846/1 |goto 51.52,91.04
step
Jump down here |goto 53.49,89.73 < 10 |only if walking
talk Doomsayer Volkini##125489
Choose _<Show her the Word of Zul.>_
Show Volkini the Message |q 46846/2 |goto 53.90,91.10
step
Run up the stairs |goto 50.04,88.70 < 15 |only if walking
talk Yazma##126684
turnin The Word of Zul##46846 |goto 50.04,84.76
accept Punishment of Tal'aman##46927 |goto 50.04,84.76
stickystart "Collect_Amani_Heads"
step
Run up the stairs |goto 50.01,81.39 < 20 |only if walking
Follow the path |goto 50.64,77.93 < 15 |only if walking
Continue following the path |goto 56.21,81.37 < 15 |only if walking
click Ancient Gong
Watch the dialogue
kill Disciple of Jan'alai##120950
|tip This enemy may be different.
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 1
step
click Ancient Gong
Watch the dialogue
kill Disciple of Halazzi##120951
|tip This enemy may be different.
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 2
step
click Ancient Gong
Watch the dialogue
kill Disciple of Akil'zon##120946
|tip This enemy may be different.
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 3
step
click Ancient Gong
Watch the dialogue
kill Disciple of Nalorakk##120949
|tip This enemy may be different.
Defeat the Amani Disciple |q 46927/1 |goto 56.18,87.47 |count 4
step
label "Collect_Amani_Heads"
Kill Amani enemies around this area
collect 6 Amani Head##160107 |q 46929/1 |goto 56.16,80.58
stickystart "Collect_Sandfury_Heads"
step
Follow the path |goto 51.95,77.93 < 20 |only if walking
Continue following the path |goto 46.84,77.05 < 20 |only if walking
click Ancient Gong##280611
kill Gahz'ragon
collect 3 Tongue of Gahz'ragon##152184 |q 46928/1 |goto 46.62,73.92
step
label "Collect_Sandfury_Heads"
Kill Sandfury enemies around this area
collect 6 Sandfury Head##158898 |q 46929/2 |goto 46.47,75.58
step
Run down the stairs |goto 49.72,78.71 < 20 |only if walking
talk Yazma##126684
turnin Punishment of Tal'aman##46927 |goto 50.05,84.76
turnin Punishment of Tal'farrak##46928 |goto 50.05,84.76
step
talk Zolani##135441
turnin Deterrent##46929 |goto 50.05,85.07
accept Royal Report##50881 |goto 50.05,85.07
step
Ride the Elevator Up |goto Dazar'alor/2 22.52,72.25 < 7 |walk
Leave the building |goto Dazar'alor/0 48.69,45.19 < 5 |walk
Follow the path |goto Dazar'alor/0 49.39,44.48 < 10 |only if walking
talk Habutu##125953
|tip On top of the building.
turnin Royal Report##50881 |goto Dazar'alor/0 50.04,46.54
step
Run down the stairs |goto Dazar'alor/0 50.96,40.32 < 15 |only if walking
Run down the stairs |goto Dazar'alor/0 56.26,29.56 < 15 |only if walking
Run down the stairs |goto Dazar'alor/0 57.29,22.65 < 15 |only if walking
Cross the bridge |goto Dazar'alor/0 54.28,25.31 < 20 |only if walking
Run up the stairs |goto Dazar'alor/0 51.88,20.29 < 15 |only if walking
talk Zena the Feeder##133242
fpath The Sliver |goto Dazar'alor/0 53.16,19.36
step
Run up the stairs |goto 51.75,19.06 < 15 |only if walking
Run up the stairs |goto 46.29,22.58 < 15 |only if walking
talk Wardruid Loti##126560
turnin The Zanchuli Council##47445 |goto 45.25,24.02
accept Forbidden Practices##47423 |goto 45.25,24.02
step
use Loti's Totem##152627
|tip Use it next to NPC's around this area.
|tip Some of them will turn into Crimson Cultists.
kill 9 Crimson Cultist##138249 |q 47423/1 |goto 50.68,16.48
step
talk Hexlord Raal##126564
turnin Forbidden Practices##47423 |goto 51.90,11.88
accept Offensively Defensive##47433 |goto 51.90,11.88
step
talk Hexlord Raal##126564
Tell him _"Ready to patrol."_
Speak with Hexlord Raal |q 47433/1 |goto 51.90,11.88
step
clicknpc Ata the Winglord##126822
Fly the Skies with Hexlord Raal |q 47433/2 |goto 53.06,11.63
step
Place #6# Farseer Totems |q 47433/3 |goto 58.83,1.60 |notravel
|tip Use the "Farseer Totem" ability on your action bar.
|tip Use it on the yellow circles on the ground as you fly.
step
Watch the dialogue
Return to Zanchul |goto 46.32,18.99 < 7 |c |q 47433 |notravel
step
talk Wardruid Loti##126560
turnin Offensively Defensive##47433 |goto 46.21,19.26
accept Pterrortorial Dispute##47435 |goto 46.21,19.26
accept Restraining Order##47434 |goto 46.21,19.26
stickystart "Slay_Bloodraged_Pterrordaxes"
step
Shoo #20# Pterrordax Hatchlings |q 47434/1 |goto 41.73,16.97
|tip They look like smaller red dinosaur birds flying low to the ground around this area.
|tip Walk next to them.
step
label "Slay_Bloodraged_Pterrordaxes"
kill 6 Bloodraged Pterrordax##126618 |q 47435/1 |goto 41.73,16.97
step
Follow the path |goto 39.87,12.88 < 20 |only if walking
talk Hexlord Raal##126564
turnin Pterrortorial Dispute##47435 |goto 40.93,11.31
turnin Restraining Order##47434 |goto 40.93,11.31
accept Competitive Devotion##47437 |goto 40.93,11.31
step
Enter the building |goto 41.16,10.98 < 7 |walk
kill Guardian of the Tombs##127072 |q 47437/1 |goto Dazar'alor/4 65.51,69.04
|tip Inside the building.
step
Run up the stairs |goto 45.77,39.28 < 10 |walk
kill Guardian of the Rites##127073 |q 47437/2 |goto Dazar'alor/3 65.93,30.68
|tip Upstairs inside the building.
step
Follow the path |goto 64.21,66.43 < 10 |walk
Leave the building |goto 77.47,87.57 < 10 |walk
kill Guardian of the Dead##127074 |q 47437/3 |goto Dazar'alor/0 44.27,16.70
step
Run up the stairs |goto 46.03,16.14 < 15 |only if walking
talk Wardruid Loti##126560
turnin Competitive Devotion##47437 |goto 46.11,13.06
accept Dire Situation##47422 |goto 46.11,13.06
step
Run up the stairs |goto 46.10,11.85 < 15 |only if walking
kill Dregada##127079 |q 47422/1 |goto 43.63,7.38
|tip At the top of the building.
|tip Your allies will help you fight him.
step
talk Wardruid Loti##126560
|tip At the top of the building.
turnin Dire Situation##47422 |goto 42.29,9.10
accept Picking a Side##47438 |goto 42.29,9.10
step
_You Must Make a Choice:_
click Gonk
|tip Choosing Gonk will provide you with many totems around the city to allow you to run faster and take less falling damage in Dazar'alor.
_Or_
click Pa'ku
|tip Choosing Pa'ku will provide you with a few totems around the city to allow you to fly to certain locations around Dazar'alor.
Choose a Loa |q 47438/1 |goto 42.55,9.12
step
talk Wardruid Loti##126560
turnin Picking a Side##47438 |goto 42.29,9.10
step
_Which Loa Did You Choose?_
|tip Click the line with the name of loa you chose.
Gonk |confirm |next "Gonk" |or |q 47439 |future
Pa'ku |confirm |next "Paku" |or |q 47440 |future
step
label "Gonk"
talk Wardruid Loti##126560
accept Gonk, Lord of the Pack##47439 |goto 42.29,9.10
step
Jump down here |goto 41.76,9.06 < 10 |only if walking
Jump down here |goto 38.18,7.16 < 10 |only if walking
Follow the path up |goto 35.43,4.91 < 20 |only if walking
Follow the path |goto Zuldazar/0 50.62,30.63 < 20 |only if walking
Follow the path |goto Zuldazar/0 49.32,31.36 < 20 |only if walking
talk Gonk##127444
Tell him _"We have a bargain."_
Bargain with Gonk |q 47439/1 |goto 48.17,32.27
step
Follow the road |goto 49.42,31.28 < 20 |only if walking
Follow the road |goto 50.80,30.58 < 20 |only if walking
Continue following the road |goto Dazar'alor/0 36.03,5.49 < 20 |only if walking
Continue following the road |goto Dazar'alor/0 36.53,15.17 < 20 |only if walking
Cross the bridge |goto Dazar'alor/0 42.33,26.94 < 20 |only if walking
Run up the stairs |goto Dazar'alor/0 44.40,30.57 < 15 |only if walking
Run up the stairs |goto Dazar'alor/0 45.10,36.21 < 15 |only if walking
Follow the path |goto Dazar'alor/0 47.03,37.50 < 15 |only if walking
talk Wardruid Loti##127576
turnin Gonk, Lord of the Pack##47439 |goto Dazar'alor/0 49.91,33.41
accept The Bargain is Struck##48897 |goto Dazar'alor/0 49.91,33.41
step
Run up the stairs |goto 49.85,35.41 < 15 |only if walking
Run up the stairs |goto 48.44,36.85 < 15 |only if walking
Run up the stairs |goto 50.22,37.74 < 15 |only if walking
talk Huntmaster Kil'ja##130785
accept Nesingwary's Trek##49768 |goto 52.00,41.39
step
Enter the building |goto 49.98,41.92 < 10 |only if walking
Ride the Elevator Up |goto Dazar'alor/2 22.94,72.17 < 7 |only if walking
Leave the building |goto Dazar'alor/0 48.68,45.19 < 7 |only if walking
Follow the path |goto Dazar'alor/0 49.38,44.43 < 10 |only if walking
talk King Rastakhan##120740
|tip Upstairs inside the building.
turnin The Bargain is Struck##48897 |goto 49.93,46.61
|next "Both_Loa_Continue"
step
label "Paku"
talk Hexlord Raal##126564
accept Pa'ku, Master of Winds##47440 |goto Dazar'alor/0 42.54,9.49
step
clicknpc Ata the Winglord##127414
Begin Riding Ata the Winglord |invehicle |goto 42.48,10.06 |q 47440
step
Ride Ata the Winglord |q 47440/1 |goto Zuldazar/0 70.45,49.07 |notravel
step
Follow the path up |goto Zuldazar/0 70.66,48.84 < 15 |only if walking
talk Pa'ku##127377
Bargain with Pa'ku |q 47440/2 |goto 71.50,49.32
step
Jump Off the Cliff |q 47440/3 |goto 71.82,49.24
|tip You won't die.
step
Watch the dialogue
Return to Dazar'alor |goto Dazar'alor/0 49.82,34.59 < 20 |c |q 47440 |notravel
step
talk Hexlord Raal##127489
turnin Pa'ku, Master of Winds##47440 |goto Dazar'alor/0 49.92,33.40
accept The Bargain is Struck##47432 |goto Dazar'alor/0 49.92,33.40
step
click Totem of Pa'ku |goto 49.54,32.83
Fly to the Top of the Building |goto 49.91,39.56 < 10 |noway |c |q 47432
step
Enter the building |goto 49.95,42.14 < 10 |walk
Ride the Elevator Up |goto Dazar'alor/2 23.06,72.35 < 7 |c |q 47432
step
Leave the building |goto 29.08,59.61 < 7 |walk
Run up the stairs |goto Dazar'alor/0 48.88,44.61 < 10 |only if walking
talk King Rastakhan##120740
|tip On top of the building.
turnin The Bargain is Struck##47432 |goto 49.93,46.62
|next "Both_Loa_Continue"
step
label "Both_Loa_Continue"
Cross the bridge |goto Dazar'alor/0 51.54,21.33 < 20 |only if walking
Run up the stairs |goto 54.98,25.49 < 20 |only if walking
Run down the stairs |goto 58.16,21.93 < 20 |only if walking
Jump down here |goto 59.44,9.93 < 10 |only if walking
talk Zul the Prophet##129907
turnin Tal'gurub##49488 |goto Zuldazar/0 62.82,32.56
accept Needs a Little Body##49489 |goto Zuldazar/0 62.82,32.56
accept The Urn of Voices##49490 |goto Zuldazar/0 62.82,32.56
step
talk Izita's Spirit##130706
accept Fuel for the Voodoo##49491 |goto 63.62,31.76
stickystart "Collect_Voodoo_Totems"
stickystart "Gather_Ounces_of_Soul"
step
Run up the stairs |goto 63.65,32.07 < 15 |only if walking
Enter the building |goto 64.93,33.11 < 10 |walk
clicknpc Atal'jamba Ungo##130089
|tip Inside the building.
"Improve" the Concoction |q 49489/1 |goto 65.02,32.99 |count 1
step
Cross the bridge |goto 64.39,33.17 < 15 |only if walking
Follow the path |goto 63.44,30.56 < 20 |only if walking
Enter the building |goto 63.07,29.06 < 10 |walk
clicknpc Atal'jamba Iri##130109
|tip Inside the building.
"Improve" the Concoction |q 49489/1 |goto 63.20,29.06 |count 2
step
label "Collect_Voodoo_Totems"
click Voodoo Totem##154901+
|tip They look like wooden glowing green totems on the ground around this area.
collect 8 Voodoo Totem##154901 |q 49491/1 |goto 63.56,30.85
step
label "Gather_Ounces_of_Soul"
Kill enemies around this area
Gather #30# Ounces of Soul |q 49490/1 |goto 63.56,30.85
step
click Brazier##278452
turnin Fuel for the Voodoo##49491 |goto 62.74,28.47
step
talk Zul the Prophet##129907
turnin Needs a Little Body##49489 |goto 62.86,28.24
turnin The Urn of Voices##49490 |goto 62.86,28.24
accept Arrogance of Vol'jamba##49492 |goto 62.86,28.24
step
clicknpc Voice of Vol'jamba##130209
Silence the Voice of Vol'jamba |q 49492/1 |goto 62.90,28.02
step
clicknpc Eyes of Vol'jamba##130208
Blind the Eyes of Vol'jamba |q 49492/2 |goto 63.55,28.07
step
clicknpc Spite of Vol'jamba##130197
Thwart the Spite of Vol'jamba |q 49492/3 |goto 64.12,28.38
step
Watch the dialogue
talk Zul the Prophet##129907
turnin Arrogance of Vol'jamba##49492 |goto 64.38,28.55
accept Zul's Ethical Dilemma##49493 |goto 64.38,28.55
accept Zuvembi Brew##49494 |goto 64.38,28.55
stickystart "Free_Mindslaves"
step
click Jambani Stockpile##290750
accept Preparing for the Fall##51663 |goto 65.28,28.22
stickystart "Destroy_Jambani_Stockpiles"
step
kill Zuvembi Brewer Zekal##130260 |q 49494/1 |goto 64.89,27.01
step
label "Free_Mindslaves"
use the Mindbreaker Chant##155458
|tip Use it next to Mindslaved enemies around this area.
Free #9# Mindslaves |q 49493/1 |goto 65.24,28.67
step
label "Destroy_Jambani_Stockpiles"
click Jambani Stockpile##290750+
|tip They look like stacks of brown baskets on the ground around this area.
Destroy #8# Jambani Stockpiles |q 51663/1 |goto 65.24,28.67
step
Run up the stairs |goto 65.32,29.09 < 20 |only if walking
talk Zul the Prophet##129907
turnin Zul's Ethical Dilemma##49493 |goto 65.71,30.21
turnin Zuvembi Brew##49494 |goto 65.71,30.21
turnin Preparing for the Fall##51663 |goto 65.71,30.21
accept Enforcing Fate##49495 |goto 65.71,30.21
step
click Gong of Command##279349
Place the Seal of Implacable Fate |q 49495/1 |goto 65.89,31.08
step
click Urn of Voices##279353
Place the Urn of Voices |q 49495/2 |goto 65.89,30.67
step
Watch the dialogue
click Urn of Voices##279353
Adjust the Urn of Voices |q 49495/3 |goto 65.86,30.65
step
click Mysterious Brew
Swap the Potion |q 49495/4 |goto 65.56,31.30
step
talk Zul the Prophet##129907
turnin Enforcing Fate##49495 |goto 65.70,30.21
accept Plot Twist##49905 |goto 65.70,30.21
step
Watch the dialogue
Confront Vol'jamba |q 49905/1 |goto 65.62,30.55
step
kill Vol'jamba##131241 |q 49905/2 |goto 65.68,31.03
step
talk Zul the Prophet##129907
turnin Plot Twist##49905 |goto 65.58,30.51
accept False Prophecies##49663 |goto 65.58,30.51
step
Ride the Elevator Up |goto Dazar'alor/2 23.06,72.35 < 7 |walk
Leave the building |goto Dazar'alor/2 29.08,59.61 < 7 |walk
Run up the stairs |goto Dazar'alor/0 48.88,44.61 < 10 |only if walking
talk King Rastakhan##120740
|tip On top of the building.
turnin False Prophecies##49663 |goto Dazar'alor/0 49.93,46.61
accept A Port in Peril##49122 |goto Dazar'alor/0 49.93,46.61
step
Follow the path |goto Dazar'alor/0 51.18,85.38 < 20 |only if walking
Cross the bridge |goto Dazar'alor/0 42.59,81.74 < 20 |only if walking
Follow the road |goto Zuldazar/0 51.07,56.32 < 20 |only if walking
talk Zolani##127815
turnin A Port in Peril##49122 |goto Zuldazar/0 47.92,60.44
accept Wrath of the Zandalari##49144 |goto Zuldazar/0 47.92,60.44
step
talk Habutu##127814
accept No Troll Left Behind##49145 |goto 47.87,60.44
step
talk Paku'ai Ja'nessa##127818
fpath Warport Rastari |goto 48.22,60.34
step
Enter the tunnel |goto 47.38,59.70 < 15 |only if walking
Leave the tunnel |goto 45.49,61.58 < 15 |only if walking
Follow the road |goto 43.21,66.34 < 20 |only if walking
talk Eliara Duskwing##123817
fpath Xibala |goto 44.84,72.25
step
talk Kaza'jin the Wavebinder##127837
accept Spirits' Belongings##49146 |goto 47.14,60.47
stickystart "Rally_Rastari_Defenders"
stickystart "Slay_Mogu_Invaders"
step
click Grimoire of the Other Side##277886
collect Grimoire of the Other Side##153526 |q 49146/2 |goto 46.80,61.87
step
Run up the stairs |goto 46.45,61.71 < 10 |only if walking
click Reclaimed Bijous##277444
collect Reclaimed Bijous##153525 |q 49146/1 |goto 45.61,60.36
step
click Venerated Remains##277447
collect Venerated Remains##153527 |q 49146/3 |goto 45.81,62.46
step
label "Rally_Rastari_Defenders"
click Crude Barricade+
|tip They look like wooden barriers in the entrances of buildings around this area.
use the Rastari Skull Whistle##153524
|tip Use it near Rastari Defenders around this area.
|tip They look like friendly Trolls standing on the ground around this area.
Rally #12# Rastari Defenders |q 49145/1 |goto 45.78,60.90
step
label "Slay_Mogu_Invaders"
Kill enemies around this area
Slay #8# Mogu Invaders |q 49144/1 |goto 45.78,60.90
step
talk Habutu##127814
turnin No Troll Left Behind##49145 |goto 47.87,60.44
step
talk Zolani##127815
turnin Wrath of the Zandalari##49144 |goto 47.92,60.44
step
talk Kaza'jin the Wavebinder##127837
turnin Spirits' Belongings##49146 |goto 48.08,60.38
accept Embrace the Voodoo##49149 |goto 48.08,60.38
step
talk Zolani##127815
accept Crumbling Apart##49148 |goto 47.92,60.44
step
talk Habutu##127814
accept Show of Strength##49147 |goto 47.87,60.44
stickystart "Kill_Stormbound_Conquerors"
step
Follow the path |goto 47.81,61.84 < 15 |only if walking
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.22,61.86 |count 1
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.97,63.07 |count 2
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 46.71,63.66 |count 3
step
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.45,65.14 |count 4
step
kill Jao-Ti the Thunderous##128474 |q 49147/1 |goto 48.12,64.49
step
Run up the stairs |goto 47.88,66.66 < 15 |only if walking
click Spirit Obelisk##277313
Activate the Spirit Obelisk |q 49149/1 |goto 47.48,66.76 |count 5
step
kill Subjugator Zheng##128472 |q 49147/2 |goto 45.83,66.52
step
label "Kill_Stormbound_Conquerors"
kill Kao-Tien Stormbinder##127778+
collect Condensed Thunder##153529+ |n
|tip These will give you a "Thundering Blast" ability for a short time.
|tip Use the "Thundering Blast" ability on Stormbound Conquerors and Inert Conquerors around this area.
|tip It appears as a button on the screen.
kill 10 Stormbound Conqueror##128447 |q 49148/1 |goto 46.99,67.08
|tip Stand in the blue circles on the ground that appear while fighting them.
|tip These will help you kill them faster.
step
Run down the stairs |goto 47.86,67.28 < 15 |only if walking
talk Kaza'jin the Wavebinder##127837
turnin Embrace the Voodoo##49149 |goto 49.59,64.48
turnin Crumbling Apart##49148 |goto 49.59,64.48
turnin Show of Strength##49147 |goto 49.59,64.48
accept Thunder's Fall##49309 |goto 49.59,64.48
step
kill Warlord Kao##127766 |q 49309/1 |goto 50.20,65.37
step
talk Kaza'jin the Wavebinder##127837
turnin Thunder's Fall##49309 |goto 49.59,64.48
accept The Prophet's Ploy##49310 |goto 49.59,64.48
step
clicknpc Scarbeak##133960
Ride Scarbeak to King Rastakhan's Throne |q 49310/1 |goto 49.51,64.35
step
Watch the dialogue
Return to The Golden Throne |goto Dazar'alor/0 49.92,39.65 < 7 |c |notravel |q 49310
step
Enter the building |goto Dazar'alor/0 49.94,42.14 < 10 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin The Prophet's Ploy##49310 |goto Dazar'alor/2 41.45,72.29
accept Terrace of the Chosen##47509 |goto Dazar'alor/2 41.45,72.29
accept The Wounded King##51101 |goto Dazar'alor/2 41.45,72.29
step
Cross the bridge |goto Dazar'alor/0 39.07,26.87 < 20 |only if walking
Cross the bridge |goto Zuldazar/0 52.68,40.69 < 20 |only if walking
Follow the road up |goto Zuldazar/0 51.96,43.85 < 30 |only if walking
talk Kaza the Skyblade##129483
fpath Temple of the Prophet |goto Zuldazar/0 49.81,44.59
step
Run up the stairs |goto Dazar'alor/0 51.75,19.08 < 15 |only if walking
Follow the path |goto Dazar'alor/0 45.37,23.80 < 15 |only if walking
talk Kaza'jin the Wavebinder##124629
turnin Terrace of the Chosen##47509 |goto Dazar'alor/0 42.64,21.42
accept Zanchuli Traitors##47897 |goto Dazar'alor/0 42.64,21.42
accept Rescuing the Taken##47915 |goto Dazar'alor/0 42.64,21.42
stickystart "Slay_Zanchuli_Traitors"
step
Run up the stairs |goto 41.48,19.35 < 15 |only if walking
kill Hexmother Kala##133297
collect Fetish of Loti##156923 |q 47915/1 |goto 43.52,17.68
step
label "Slay_Zanchuli_Traitors"
Kill enemies around this area
Slay #10# Zanchuli Traitors |q 47897/1 |goto 40.91,16.06
step
talk Wardruid Loti##123335
turnin Zanchuli Traitors##47897 |goto 39.29,13.84
turnin Rescuing the Taken##47915 |goto 39.29,13.84
step
_Next to you:_
talk Wardruid Loti
accept Raal##47518
accept Walls Have Ears##47520
stickystart "Slay_Eyes_and_Ears_of_Yazma"
step
Enter the building |goto 41.10,11.05 < 10 |walk
Run up the stairs |goto Dazar'alor/4 45.67,39.19 < 10 |walk
Follow the path |goto Dazar'alor/3 39.28,27.61 < 10 |c |q 47518
step
Follow the path |goto 64.33,66.36 < 10 |walk
Leave the building |goto 77.39,87.50 < 10 |walk
Run up the stairs |goto Dazar'alor/0 46.02,15.89 < 15 |only if walking
Run up the stairs |goto Dazar'alor/0 46.18,11.54 < 20 |only if walking
kill Crazzak the Heretic##124652 |q 47518/1 |goto Dazar'alor/0 43.46,7.06
|tip At the top of the building.
step
talk Hexlord Raal##133324
turnin Raal##47518 |goto 43.62,7.35
step
label "Slay_Eyes_and_Ears_of_Yazma"
Kill Yazma enemies around this area
|tip Inside and outside the building.
Slay #8# Eyes and Ears of Yazma |q 47520/1 |goto 43.46,7.06
step
_Next to you:_
talk Wardruid Loti
turnin Walls Have Ears##47520
step
talk Hexlord Raal##133324
accept Midnight in the Garden of the Loa##47521 |goto 42.55,9.49
step
clicknpc Ata the Winglord##127414
Mount Ata the Winglord |invehicle |goto 42.48,10.05 |q 47521
step
Ride with Ata the Winglord |q 47521/1 |goto Zuldazar/0 50.73,29.57 |notravel
step
Watch the dialogue
talk Wardruid Loti##122760
turnin Midnight in the Garden of the Loa##47521 |goto 50.70,29.65
accept The Hunter##47522 |goto 50.70,29.65
step
talk Hexlord Raal##133653
accept The Ancient One##47963 |goto 50.69,29.57
step
Rescue Gonk |q 47522/1 |goto 48.63,31.86
step
talk Gonk##124827
turnin The Hunter##47522 |goto 48.39,32.12
step
Run up the stairs |goto 50.50,31.76 < 15 |only if walking
kill Shadra Betrayer##133735+
|tip Kill all of the ones channeling on Pa'ku.
Rescue Pa'ku |q 47963/1 |goto 52.10,32.81
step
talk Pa'ku##124756
turnin The Ancient One##47963 |goto 52.10,32.81
step
_Next to you:_
talk Acolyte Mali
accept Mistress of Lies##47528
step
Run up the stairs |goto 49.12,30.52 < 15 |only if walking
Enter the building |goto 47.72,28.87 < 10 |walk
kill Vol'kaal##122866
|tip Inside the building.
Defeat Vol'kaal |q 47528/1 |goto 47.09,27.85
step
Watch the dialogue
Defeat Yazma |q 47528/2 |goto 47.21,27.72
step
Leave the building |goto 47.71,28.87 < 10 |walk
talk Wardruid Loti##122760
turnin Mistress of Lies##47528 |goto 48.58,26.78
step
talk Paku'ai Rip'nata##130787
fpath Garden of the Loa |goto 49.72,26.27
step
Cross the bridge |goto 53.55,23.67 < 20 |only if walking
Follow the road down |goto 54.60,28.16 < 30 |only if walking
Cross the bridge |goto 58.86,22.92 < 20 |only if walking
Follow the road |goto 61.56,24.52 < 30 |only if walking
Follow the path |goto 64.32,21.47 < 20 |only if walking
Follow the path |goto 64.75,20.67 < 30 |only if walking
Follow the path |goto 67.04,21.23 < 30 |only if walking
Follow the path up |goto 68.12,19.49 < 30 |only if walking
talk Lasa the Galerider##123006
fpath Nesingwary's Gameland |goto 66.19,17.60
step
Follow the path down |goto 67.53,18.44 < 20 |only if walking
Follow the road |goto 70.43,22.13 < 30 |only if walking
Follow the path |goto 76.07,19.92 < 30 |only if walking
talk Zolani##124083
turnin The Wounded King##51101 |goto 76.69,16.26
accept In Bwonsamdi's Shadow##51680 |goto 76.69,16.26
step
talk Jamil Abul'housin##132637
|tip Inside the building.
Ask him _"How goes the mending?"_
Speak to Jamil Abul'housin |q 51680/1 |goto 76.47,16.00
step
talk Jol the Ancient##124063
|tip Inside the building.
Ask him _"How goes the mending?"_
Speak to Jol the Ancient |q 51680/2 |goto 76.44,16.16
step
talk Jol the Ancient##124063
|tip Inside the building.
turnin In Bwonsamdi's Shadow##51680 |goto 76.44,16.17
accept Ancient Tortollan Remedies##47735 |goto 76.44,16.17
step
talk Jamil Abul'housin##132637
|tip Inside the building.
accept The Scent of Vengeance##47739 |goto 76.47,16.00
step
talk Zolani##124083
accept No Safe Haven##50235 |goto 76.69,16.26
step
talk Paku'ai Jasi##124456
fpath Zeb'ahari |goto 77.36,15.35
stickystart "Rescue_Zebahari_Villagers"
stickystart "Collect_Traitors_Bloods"
step
clicknpc Laelani##132681
collect Brutosaur Scale##156824 |q 47735/2 |goto 78.59,13.13
step
label "Rescue_Zebahari_Villagers"
click Zeb'ahari NPC's
|tip They look like friendly blue trolls on the ground and fighting enemies around this area.
Rescue #12# Zeb'ahari Villagers |q 50235/1 |goto 80.19,14.76
step
talk Zeb'ahari Villager##138520
accept The Loa-Speaker's Betrayal##47733 |goto 79.35,16.77
step
clicknpc Spiny Puffer##133162
collect Envenomed Puffer Spine##156809 |q 47735/1 |goto 79.79,16.53
step
kill Loa-Speaker Kihara##132979 |q 47733/1 |goto 78.53,20.28
step
kill Ol' Bubbly##132650
collect Aged Crab Foam##156827 |q 47735/3 |goto 79.55,21.62
step
label "Collect_Traitors_Bloods"
Kill enemies around this area
collect 12 Traitor's Blood##156834 |q 47739/1 |goto 78.60,19.47
step
talk Zolani##124083
turnin No Safe Haven##50235 |goto 76.69,16.26
turnin The Loa-Speaker's Betrayal##47733 |goto 76.69,16.26
step
talk Jamil Abul'housin##132637
|tip Inside the building.
turnin The Scent of Vengeance##47739 |goto 76.47,16.00
step
talk Jol the Ancient##124063
|tip Inside the building.
turnin Ancient Tortollan Remedies##47735 |goto 76.44,16.16
accept Mending Body and Soul##51677 |goto 76.44,16.16
step
talk Jol the Ancient##124063
Tell him _"I am ready, Jol."_
Speak to Jol |q 51677/1 |goto 76.44,16.16
step
Watch the dialogue
click Astringent Spices
|tip Inside the building.
collect Astringent Spices##160566 |goto 76.56,15.95 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Astringent Spices>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 18
step
Watch the dialogue
click Sea Urchin Brine
|tip Inside the building.
collect Sea Urchin Brine##160567 |goto 76.46,16.25 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Sea Urchin Brine>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 36
step
Watch the dialogue
click Jol's Preserved Notes
|tip Inside the building.
collect Ancient Tortollan Scroll##160568 |goto 76.27,16.01 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Ancient Tortollan Scroll>_
Assist Jol |q 51677/2 |goto 76.44,16.17 |count 54
step
Watch the dialogue
click Odoriferous Stew
|tip Inside the building.
Assist Jol |q 51677/2 |goto 76.49,15.93 |count 72
step
Watch the dialogue
click Clotting Powder
|tip Inside the building.
collect Clotting Powder##160569 |goto 76.36,16.16 |q 51677
step
talk Jol the Ancient##138598
|tip Inside the building.
Choose _<Offer Clotting Powder>_
Assist Jol |q 51677/2 |goto 76.50,16.08 |count 90
step
Watch the dialogue
Assist Jol |q 51677/2 |goto 76.50,16.08 |count 100
step
talk Jol the Ancient##138598
|tip Inside the building.
turnin Mending Body and Soul##51677 |goto 76.44,16.17
step
talk Jamil Abul'housin##132637
|tip Inside the building.
accept The Will of the Loa##47738 |goto 76.47,16.00
step
click Idol of Rezan##281024
Place the Idol of Rezan |q 47738/1 |goto 76.85,13.23
step
Watch the dialogue
talk Rezan##133068
Tell him _"Rastakhan is injured and will not wake. We need your help."_
Speak to Rezan |q 47738/2 |goto 77.12,13.24
step
Watch the dialogue
clicknpc King Rastakhan##133107
Retrieve Rastakhan's Soul |q 47738/3 |goto 76.89,13.23
step
clicknpc King Rastakhan##132631
|tip Inside the building.
Restore Rastakhan's Soul to His Body |q 47738/4 |goto 76.46,16.07
step
Watch the dialogue
talk King Rastakhan##124062
turnin The Will of the Loa##47738 |goto 76.66,16.13
accept Zul's Mutiny##47742 |goto 76.66,16.13
accept Rastakhan's Might##51678 |goto 76.66,16.13
step
talk Zolani##124083
accept A Strange Port of Call##51679 |goto 76.65,16.18
step
talk Jol the Ancient##124063
|tip Inside the building.
home Zeb'ahari Inn |goto 76.42,16.08 |q 51679
stickystart "Slay_Mutinous_Zandalaris"
step
click Rope |goto 80.81,20.48
Climb Onto the Ship |goto 80.85,20.30 < 2 |noway |c |q 51678
step
click Rope |goto 80.85,20.29
Board the Ship |goto 80.88,20.39 < 2 |noway |c |q 51678
step
kill Windcaller Ula'jan##133140
|tip At the top of the ship.
collect Skull of Windcaller Ula'jan##156861 |q 51678/1 |goto 81.30,19.59
step
click Temple of Rezan Map##290996
|tip Inside the ship, on the deck level.
Search the Navigation Chamber |q 51679/1 |goto 81.27,19.74
step
Search the Hold |q 51679/2 |goto Zuldazar/1 52.51,77.91
|tip Downstairs one level inside the ship.
step
clicknpc Chronicler To'kini##138728
|tip Downstairs two levels inside the ship.
Search the Crew Quarters |q 51679/3 |goto Zuldazar/2 47.39,44.05
step
label "Slay_Mutinous_Zandalaris"
Kill enemies around this area
Slay #10# Mutinous Zandalari |q 47742/1 |goto 49.68,44.95
step
talk King Rastakhan##124062
turnin Zul's Mutiny##47742 |goto Zuldazar/0 76.66,16.13
turnin Rastakhan's Might##51678 |goto Zuldazar/0 76.66,16.13
turnin A Strange Port of Call##51679 |goto Zuldazar/0 76.66,16.13
accept The Temple of Rezan##47737 |goto Zuldazar/0 76.66,16.13
step
Follow the path up |goto 77.41,16.65 < 20 |only if walking
Follow the road |goto 75.72,20.17 < 30 |only if walking
talk King Rastakhan##124655
turnin The Temple of Rezan##47737 |goto 72.03,21.03
accept House of the King##47740 |goto 72.03,21.03
step
talk Zolani##124656
accept Heads Will Roll##47736 |goto 72.09,21.20
stickystart "Collect_Traitorous_Zandalari_Heads"
step
click Corrupting Totem##281216+
|tip There are three Corrupting Totems around this area.
Cleanse Rezan the Hunter |q 47740/1 |goto 72.16,23.80
step
click Corrupting Totem##281216+
|tip There are three Corrupting Totems around this area.
Cleanse Rezan the King |q 47740/3 |goto 73.82,22.94
step
Run up the stairs |goto 73.04,24.34 < 15 |only if walking
click Corrupting Totem##281216+
|tip There are three Corrupting Totems around this area.
Cleanse Rezan the Conqueror |q 47740/2 |goto 73.68,25.76
step
label "Collect_Traitorous_Zandalari_Heads"
Kill enemies around this area
|tip Kao-Tien enemies will not count for this quest goal.
collect 12 Traitorous Zandalari Head##151384 |q 47736/1 |goto 73.61,25.18
step
Run up the stairs |goto 74.33,24.94 < 15 |only if walking
talk Zolani##124656
turnin Heads Will Roll##47736 |goto 74.85,24.90
step
talk King Rastakhan##124655
turnin House of the King##47740 |goto 74.87,24.94
accept Partners in Heresy##47734 |goto 74.87,24.94
step
kill Darkweaver Ji'tan##124085 |q 47734/1 |goto 75.16,23.16
step
kill Soulrender Gao'tan##124088 |q 47734/2 |goto 75.12,26.56
|tip Inside the building.
|tip Stand in the blue circle when he casts it beneath his feet.
step
talk King Rastakhan##124655
turnin Partners in Heresy##47734 |goto 74.87,24.94
accept To Sacrifice a Loa##47741 |goto 74.87,24.94
step
Run up the stairs |goto 75.31,24.55 < 15 |only if walking
kill Vilnak'dor##133570 |q 47741/1 |goto 75.99,24.91
step
Watch the dialogue
Disrupt the Loa Sacrifice Ritual |q 47741/2 |goto 76.03,24.92
step
talk King Rastakhan##124655
Tell him _"Let's get out of here!"_
Watch the dialogue
Begin Following King Rastakhan |goto 76.06,24.90 > 10 |c |q 47741
step
Watch the dialogue
|tip Follow King Rastakhan as he walks.
Escape the Temple of Rezan |q 47741/3 |goto 73.37,28.20
step
talk Rezan##124948
turnin To Sacrifice a Loa##47741 |goto 70.83,29.90
step
talk King Rastakhan##124915
accept King or Prey##51111 |goto 70.98,29.91
step
talk Scroll of Flight##136331
fpath Scaletrader Post |goto 70.78,29.60
step
Enter the building |goto Dazar'alor/0 49.99,41.88 < 10 |walk
talk Baine Bloodhoof##141555
|tip Inside the building.
turnin King or Prey##51111 |goto Dazar'alor/2 41.43,72.44
accept Hunting Zul##49421 |goto Dazar'alor/2 41.43,72.44
step
Leave the building |goto Dazar'alor/0 49.94,42.10 < 10 |walk
Run up the stairs |goto Dazar'alor/0 51.75,19.10 < 15 |only if walking
Follow the path |goto Dazar'alor/0 45.36,23.81 < 15 |only if walking
talk King Rastakhan##129491
turnin Hunting Zul##49421 |goto Dazar'alor/0 38.92,27.15
accept The Warpack##49965 |goto Dazar'alor/0 38.92,27.15
step
Watch the dialogue
clicknpc Wardruid Loti##134132
Ride with Wardruid Loti |invehicle |goto 38.81,27.02 |q 49965
step
Watch the dialogue
Ride with the Warpack |q 49965/1 |goto Zuldazar/0 49.19,44.79 |notravel
step
talk Gonk##129740
turnin The Warpack##49965 |goto 49.27,44.32
accept Heretics##49422 |goto 49.27,44.32
step
talk Wardruid Loti##129561
accept The Full Prophecy##49424 |goto 49.34,44.35
stickystart "Bring_Ruin"
step
click The Word of Zul III##280350
Read The Word of Zul III |q 49424/3 |goto 48.81,42.76
step
Run up the stairs |goto 49.75,42.48 < 15 |only if walking
click The Word of Zul II##280349
|tip Inside the building.
Read The Word of Zul II |q 49424/2 |goto 49.01,40.57
step
Cross the bridge |goto 49.73,40.44 < 15 |only if walking
click The Word of Zul I##280348
Read The Word of Zul I |q 49424/1 |goto 48.75,39.40
step
_Next to you:_
talk Wardruid Loti
turnin The Full Prophecy##49424
step
label "Bring_Ruin"
Kill enemies around this area
clicknpc Skykiller Ballista##129540+
|tip They look like wooden crossbow machines on the ground around this area.
Bring Ruin |q 49422/1 |goto 49.07,39.36
step
talk Hexlord Raal##129703
turnin Heretics##49422 |goto 49.65,37.98
accept City of Gold##49425 |goto 49.65,37.98
step
clicknpc Ata the Winglord##129701
Ride Ata the Winglord |q 49425/1 |goto 49.64,37.91
step
Watch the dialogue
Kill enemies around this area
|tip Use the "Explosive Wrath Totem" ability on your action bar.
|tip They are on the ground around this area as you fly.
Slay #75# Forces of Zul |q 49425/2 |goto 45.97,36.79
step
Watch the dialogue
Travel to Atal'Dazar |goto 43.77,39.08 < 7 |c |q 49425 |notravel
step
talk Rezan##131049
turnin City of Gold##49425 |goto 43.70,39.45
accept The King's Gambit##49426 |goto 43.70,39.45
step
March on Atal'Dazar |q 49426/1 |goto 42.10,39.28
step
talk King Rastakhan##131070
Ask him _"What now?"_
Watch the dialogue
Speak with King Rastakhan |q 49426/2 |goto 42.08,39.52
step
Run up the stairs |goto 42.10,38.71 < 15 |only if walking
Run up the stairs |goto 42.33,37.58 < 15 |only if walking
Watch the dialogue
Get Rastakhan to Safety |q 49426/3 |goto 42.73,37.65
step
talk King Rastakhan##129757
turnin The King's Gambit##49426 |goto 42.73,37.65
step
Follow the path up |goto 42.64,35.85 < 15 |only if walking
Jump down carefully here |goto 43.79,36.93 < 15 |only if walking
Follow the road |goto 44.33,38.54 < 20 |only if walking
Cross the bridge |goto 46.12,38.00 < 15 |only if walking
talk Loz the Paku'ai##130790
fpath Atal'dazar |goto 46.16,35.81
step
_Congratulations!_
You completed the Zuldazar Loremaster (Story Quest Only) leveling guide.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Nazmir Loremaster (Story Quest Only)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Nazmir storylines:\n\nDeep in the Swamp\nUndercover Sista\nA Friend of the Frogs\nBring the Boom\nA Pact with Death\nTurtle Power\nEverything Contained\nBleeding the Blood Trolls",
condition_suggested=function() return level >= 50 and not achieved(11868) and completedq(52131) end,
condition_end=function() return achieved(11868) end,
startlevel=10.0,
endlevel=50.0,
image=ZGV.IMAGESDIR.."Nazmir",
},[[
step
click Scouting Map
|tip Inside the building.
accept Nazmir##47512 |goto Dazar'alor/2 41.71,69.41
step
talk Princess Talanji##133050
|tip Inside the building.
turnin Nazmir##47512 |goto 41.14,66.73
accept Journey to Nazmir##47103 |goto 41.18,66.77
step
Leave the building |goto Dazar'alor/0 49.97,42.15 < 10 |walk
talk Rokhan##126549
turnin Journey to Nazmir##47103 |goto Dazar'alor/0 51.66,41.29
accept Nazmir, the Forbidden Swamp##48535 |goto Dazar'alor/0 51.66,41.29
step
talk Paku'ai Rokota##122689
Tell her _"Get me as close as you can to Nazmir."_
Take a Flight to Nazmir Outskirts |q 48535/1 |goto 51.91,41.20
step
Cross the bridge |goto Zuldazar/0 52.71,20.65 < 15 |only if walking
Meet with Princess Talanji |q 48535/2 |goto Nazmir/0 43.36,86.52
step
talk Princess Talanji##120904
turnin Nazmir, the Forbidden Swamp##48535 |goto 43.00,86.03
accept Into The Darkness##47105 |goto 43.00,86.03
step
Scout Ahead |q 47105/1 |goto 46.94,80.18
step
Watch the dialogue
talk Princess Talanji##130844
turnin Into The Darkness##47105 |goto 47.25,79.74
accept Leave None Standing##47264 |goto 47.25,79.74
accept Improper Burial##47130 |goto 47.25,79.74
stickystart "Slay_Blood_Trolls"
step
use the Ceremonial Torch##154724
|tip Use it on Dead Zandalari around this area.
|tip They look like Troll corpses laying on the ground around this area.
Burn #5# Dead Zandalari |q 47130/1 |goto 48.96,78.41
step
label "Slay_Blood_Trolls"
Kill Blood Troll enemies around this area
Slay #8# Blood Trolls |q 47264/1 |goto 48.96,78.41
step
talk Princess Talanji##121241
turnin Leave None Standing##47264 |goto 45.65,74.79
turnin Improper Burial##47130 |goto 45.65,74.79
accept Ending the Blood Trolls##47262 |goto 45.65,74.79
step
Run up the stairs |goto 45.61,73.48 < 15 |only if walking
kill Grand Ma'da Ateena##121504
|tip She will eventually escape.
Watch the dialogue
Slay Grand Ma'da Ateena |q 47262/1 |goto 44.91,71.65
step
Watch the dialogue
talk Princess Talanji##130844
turnin Ending the Blood Trolls##47262 |goto 45.21,71.04
accept A Time of Revelation##47263 |goto 45.21,71.04
step
Watch the dialogue
talk Princess Talanji##131146
Tell her _"We need to move, we shouldn't stay here."_
Speak with Talanji at the Overlook |q 47263/1 |goto 45.57,68.65
step
Watch the dialogue
Travel to Zul'jan Ruins |goto 39.41,76.65 < 7 |c |q 47263 |notravel
step
talk Zabar##121828
fpath Zul'jan |goto 38.85,78.14
step
talk Crazy Vaza##121840
|tip Inside the building.
home Zul'jan Ruins |goto 38.62,78.66 |q 49902 |future
step
talk Princess Talanji##121288
turnin A Time of Revelation##47263 |goto 39.14,79.07
accept The Aid of the Loa##47188 |goto 39.14,79.07
step
talk Princess Talanji##121288
Tell her _"Let's discuss what we can do to fight the blood trolls."_
Watch the dialogue
Listen to Talanji and Rokhan |q 47188/1 |goto 39.15,79.07
step
talk Princess Talanji##121288
turnin The Aid of the Loa##47188 |goto 39.15,79.07
accept The Shadow of Death##47241 |goto 39.15,79.07
step
Follow the path |goto 37.50,71.21 < 30 |only if walking
Enter the building |goto 37.73,63.11 < 10 |walk
click Broken Spear##271170
|tip Inside the building.
Investigate the Abandoned Ruins |q 47241/2 |goto 37.50,63.06
step
click Weathered Shrine##270902
Investigate the Weathered Shrine |q 47241/1 |goto 39.61,64.97
step
clicknpc Blood Scavenger##122094
Investigate the Shrine of Bones |q 47241/3 |goto 35.62,58.58
step
Watch the dialogue
talk Hanzabu##122102
turnin The Shadow of Death##47241 |goto 36.62,53.93
accept A Culling of Souls##47244 |goto 36.62,53.93
step
kill Blood Witch Najima##122204 |q 47244/1 |goto 38.55,49.98
step
talk Hanzabu##124428
turnin A Culling of Souls##47244 |goto 39.52,43.83
accept Spiritual Restoration##49278 |goto 39.52,43.83
step
clicknpc Drained Spirit##134363
Restore the Drained Spirit |q 49278/1 |goto 39.04,43.90 |count 1
step
clicknpc Drained Spirit##134363
Restore the Drained Spirit |q 49278/1 |goto 38.86,43.50 |count 2
step
talk Du'ba##122191
fpath Zo'bal Ruins |goto 40.18,42.83
step
clicknpc Drained Spirit##134363
|tip Inside the building.
Restore the Drained Spirit |q 49278/1 |goto 40.89,43.54 |count 3
step
talk Du'ba##122191
turnin Spiritual Restoration##49278 |goto 39.52,43.83
step
Watch the dialogue
talk Witch Doctor Kejabu##122795
accept Blood Troll on the Outside##49440 |goto 39.63,43.87
step
talk Witch Doctor Kejabu##122795
accept The Necropolis##47868 |goto 39.52,43.83
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.41,43.53 |count 1
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.57,43.74 |count 2
step
clicknpc Blood Troll Skull##129223
Place the Ritual Component |q 49440/1 |goto 39.74,43.52 |count 3
step
talk Witch Doctor Kejabu##122795
Tell him _"I'm ready to begin the ritual to disguise myself as a blood troll."_
Watch the dialogue
Speak to Witch Doctor Kejabu to Complete the Ritual |q 49440/2 |goto 39.63,43.86
step
Watch the dialogue
talk Witch Doctor Kejabu##122795
turnin Blood Troll on the Outside##49440 |goto 39.63,43.86
accept Sneaking into Zalamar##48699 |goto 39.63,43.86
step
talk Hanzabu##124513
turnin The Necropolis##47868 |goto 39.58,32.58
accept A Tribute for Death##47880 |goto 39.58,32.58
step
Draw the Ritual Circle |q 47880/1 |goto 39.58,32.35
|tip Walk on top of the dashed lines on the ground to trace them.
step
click Drum of Spirits##270997
Sound the Drum of Spirits |q 47880/2 |goto 39.59,31.84
step
Enter the building |goto 39.56,26.73 < 10 |walk
Watch the dialogue
talk Bwonsamdi##122688
|tip Inside the building.
turnin A Tribute for Death##47880 |goto 39.57,24.66
accept Remnants of the Damned##47491 |goto 39.57,24.66
accept A Desecrated Temple##49348 |goto 39.57,24.66
accept That Which Haunts the Dead##47247 |goto 39.57,24.66
stickystart "Collect_Decaying_Bloodstones"
step
Leave the building |goto 39.59,26.56 < 10 |walk
kill Hex Priestess Tizeja##122666 |q 47247/2 |goto 36.09,29.88
|tip Kill the enemies channeling on her to be able to attack her.
stickystart "Destroy_Vile_Desecrations"
step
Follow the path |goto 37.59,28.17 < 15 |only if walking
kill Warlord Malaja##122664 |q 47247/1 |goto 43.42,30.02
step
talk Keula##126588
accept The Forlorn Soul##49432 |goto 42.58,31.46
step
label "Destroy_Vile_Desecrations"
clicknpc Vile Desecration##129086+
|tip They look like red bubbles on the walls around this area.
Destroy #5# Vile Desecration |q 49348/1 |goto 42.61,29.77
step
Enter the crypt |goto 39.59,31.66 < 10 |walk
click Sarcophagus Lid##278692
|tip Inside the crypt.
Find Keula's Mother |q 49432/1 |goto 39.59,34.95
step
Watch the dialogue
kill The Matron Shaazula##126616
|tip Inside the crypt.
Subdue Matron Shaazula |q 49432/2 |goto 39.65,35.00
step
Leave the crypt |goto 39.59,31.73 < 10 |c |q 47491
step
label "Collect_Decaying_Bloodstones"
Kill Horror enemies around this area
collect 6 Decaying Bloodstone##150753 |q 47491/1 |goto 39.60,30.29
step
Enter the building |goto 39.56,26.73 < 10 |walk
talk Bwonsamdi##122688
|tip Inside the building.
turnin Remnants of the Damned##47491 |goto 39.56,24.68
turnin A Desecrated Temple##49348 |goto 39.56,24.68
turnin That Which Haunts the Dead##47247 |goto 39.56,24.68
turnin The Forlorn Soul##49432 |goto 39.56,24.68
accept Soulbound##47249 |goto 39.56,24.68
step
Leave the building |goto 39.60,26.53 < 10 |walk
talk Bwonsamdi##126707
Tell him _"Let's begin."_
Watch the dialogue
Begin the Ritual |q 47249/1 |goto 39.58,30.21
step
Watch the dialogue
kill Grand Ma'da Ateena##122711 |q 47249/2 |goto 39.57,30.96
|tip She will eventually escape.
step
talk Bwonsamdi##122766
turnin Soulbound##47249 |goto 39.58,30.22
accept We'll Meet Again##47250 |goto 39.58,30.22
step
talk Hanzabu##127004
turnin We'll Meet Again##47250 |goto 39.52,43.83
step
Follow the path |goto 36.94,47.53 < 30 |only if walking
talk Bloodseeker Jo'chunga##127128
Tell him _"Kejabu sent me."_
Find Bloodseeker Jo'chunga |q 48699/1 |goto 32.37,46.17
step
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Sneaking into Zalamar##48699 |goto 33.35,45.74
accept Isolating Zalamar##48801 |goto 33.35,45.74
accept How to Be a Blood Troll##48890 |goto 33.35,45.74
stickystart "Test_Unproven_Drudges"
step
talk Wardrummer Sheej##129380
|tip At the top of the tower.
Tell him _"Da camp be needin' more stone. Go an' recover only da purest of rocks within Nazmir. Sixty of dem."_
Remove Wardrummer Sheej |q 48801/2 |goto 35.30,46.80
step
talk Wardrummer Gix##129381
|tip At the top of the tower.
Tell him _"We be needin' fifty pristine crocolisk hides. Go an' retrieve dem, and don' be comin' back 'til you have dem all."_
Remove Wardrummer Gix |q 48801/3 |goto 31.16,49.75
step
label "Test_Unproven_Drudges"
clicknpc Unproven Drudge##126933+
|tip They look like blood trolls that are tied up to poles around this area.
Test #5# Unproven Drudge |q 48890/1 |goto 31.59,45.66
step
talk Wardrummer Saljo##127999
|tip At the top of the tower.
Tell him _"Da camp be needin' more wood. Go an' retrieve thirty pieces of only da most pristine lumber!"_
Remove Wardrummer Saljo |q 48801/1 |goto 31.49,43.26
step
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Isolating Zalamar##48801 |goto 33.35,45.74
turnin How to Be a Blood Troll##48890 |goto 33.35,45.74
step
Watch the dialogue
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
accept Poisoning the Brood##49078 |goto 33.35,45.74
accept Mark of the Bat##48800 |goto 33.35,45.74
stickystart "Poison_Tamed_Warspawns"
step
kill Blood Witch Yialu##126891
|tip Inside the building.
collect Yialu's Talisman##153671 |q 48800/1 |goto 33.65,49.33
step
kill Blood Priestess Zu'Anji##126890
|tip Inside the building.
collect Zu'Anji's Talisman##153674 |q 48800/3 |goto 32.68,49.51
step
kill Blood Witch Vashera##126888
|tip Inside the building.
collect Vashera's Talisman##153672 |q 48800/2 |goto 30.70,45.28
step
label "Poison_Tamed_Warspawns"
use the Poisoned Mojo Flask##153012
|tip Use it on Tamed Warspawns around this area.
|tip They look like large bats hanging upside down from poles and buildings around this area.
Poison #5# Tamed Warspawns |q 49078/1 |goto 31.02,48.14
step
talk Bloodseeker Jo'chunga##127391
|tip Inside the building.
turnin Poisoning the Brood##49078 |goto 33.35,45.74
turnin Mark of the Bat##48800 |goto 33.35,45.74
step
Watch the dialogue
talk Jo'chunga##129378
|tip Inside the building.
accept Hir'eek, the Bat Loa##49079 |goto 33.35,45.74
step
Reach the Blood Ritual Pool |goto 32.18,46.31 < 5 |c |q 49079
step
_Next to you:_
talk Jo'chunga
Tell him _"Jo'chunga, I'm ready. Let's enact our plan to stop Hir'eek."_
Watch the dialogue
Speak with Jo'chunga Within the Blood Ritual Pool |q 49079/1 |goto 32.18,46.31
step
Watch the dialogue
Weaken Hir'eek |q 49079/2 |goto 31.99,46.30
|tip Use the ability on your action bar.
|tip Use it repeatedly.
step
Watch the dialogue
Fall into Hir'eek's Lair |goto 31.41,46.97 < 3 |c |q 49079
step
Watch the dialogue
talk Jo'chunga##128276
|tip Inside the cave.
turnin Hir'eek, the Bat Loa##49079 |goto 31.23,46.80
accept To Kill a Loa##49081 |goto 31.23,46.80
step
kill Hir'eek##128074 |q 49081/1 |goto 29.14,46.57
|tip Inside the cave.
step
talk Jo'chunga##128276
|tip Inside the cave.
turnin To Kill a Loa##49081 |goto 31.25,46.81
accept Upward and Onward##49082 |goto 31.25,46.81
step
clicknpc Hir'eek Spawnling##128291
|tip Inside the cave.
Secure a Flight Out of Hir'eek's Lair |q 49082/1 |goto 31.26,46.72
step
Reach the Outskirts of Zalamar |goto 36.11,47.65 < 7 |c |q 49082
step
talk Witch Doctor Kejabu##122795
Tell him _"Jo'chunga is alive, the loa Hir'eek though..."_
Inform Witch Doctor Kejabu |q 49082/2 |goto 39.63,43.86
step
talk Witch Doctor Kejabu##122795
turnin Upward and Onward##49082 |goto 39.63,43.86
step
talk Princess Talanji##127961
accept Catching Up##49185 |goto 39.39,44.00
step
talk Princess Talanji##127961
Choose _(Tell Talanji about getting Bwonsamdi's aid and killing Hir'eek.)_
Tell Talanji About Bwonsamdi and Hir'eek |q 49185/1 |goto 39.40,44.00
step
talk Princess Talanji##127961
turnin Catching Up##49185 |goto 39.39,44.00
step
talk Lashk##127960
accept Torga, the Turtle Loa##49064 |goto 39.45,44.02
step
Follow the path |goto 40.15,45.72 < 30 |only if walking
talk Kisha##127958
Tell her _"Lashk said you could tell me where I can find Torga."_
Meet Kisha |q 49064/1 |goto 55.65,39.40
step
Locate Torga |q 49064/2 |goto 55.59,28.59
step
Watch the dialogue
talk Princess Talanji##127961
turnin Torga, the Turtle Loa##49064 |goto 56.57,26.67
accept Beseeching Bwonsamdi##49067 |goto 56.57,26.67
step
talk Princess Talanji##127961
Tell her _"I'm ready to try and summon Bwonsamdi."_
Beseech Bwonsamdi for Aid |q 49067/1 |goto 56.57,26.67
step
talk Princess Talanji##127961
turnin Beseeching Bwonsamdi##49067 |goto 56.57,26.67
accept Cease all Summoning##49080 |goto 56.57,26.67
step
talk Lashk##127960
accept Dreadtick Combustion##49071 |goto 56.51,26.65
step
talk Bwonsamdi##128096
accept Souls for the Death Loa##49070 |goto 56.66,26.52
stickystart "Blow_Up_Dreadtick_Leechers"
stickystart "Claim_Blood_Troll_Souls"
step
Enter the cave |goto 58.71,24.64 < 15 |walk
kill Summoner Yarz##127935 |q 49080/1 |goto 61.05,18.08
|tip Inside the cave.
step
label "Blow_Up_Dreadtick_Leechers"
use the Scroll of Combustion##153024
|tip Use it on Dreadtick Leecher around this area inside the cave.
Blow Up #5# Dreadtick Leechers |q 49071/1 |goto 60.15,21.06
step
label "Claim_Blood_Troll_Souls"
Kill Loa-Gutter enemies around this area
|tip Inside the cave.
Claim #10# Blood Troll Souls |q 49070/1 |goto 60.15,21.06
step
Leave the cave |goto 58.70,24.87 < 15 |walk
talk Bwonsamdi##128096
turnin Souls for the Death Loa##49070 |goto 56.66,26.53
step
talk Princess Talanji##127961
turnin Cease all Summoning##49080 |goto 56.57,26.67
step
talk Lashk##127960
turnin Dreadtick Combustion##49071 |goto 56.52,26.65
step
talk Bwonsamdi##128096
accept Speaking with the Dead##49120 |goto 56.66,26.52
step
talk Bwonsamdi##128096
Tell him _"Bwonsamdi, we're ready for you to summon Torga's spirit."_
Watch the dialogue
Hear Torga's Wisdom |q 49120/1 |goto 56.66,26.52
step
talk Princess Talanji##127961
turnin Speaking with the Dead##49120 |goto 56.57,26.67
step
talk Kisha##127958
accept Negative Blood##49125 |goto 56.59,26.75
stickystart "Destroy_Corrupted_Loa_Blood"
step
click Scroll of Fate's Hand##280347
collect Damaged Scroll of Fate's Hand##156568 |q 49125/2 |goto 62.28,24.58
step
label "Destroy_Corrupted_Loa_Blood"
use the Scroll of Purification##160559
|tip Use it on Corrupted Loa Blood around this area.
|tip They look like large red balls floating above the ground around this area.
Destroy #8# Corrupted Loa Blood |q 49125/1 |goto 62.23,24.06
step
Enter the cave |goto 65.45,17.92 < 10 |walk
talk Kisha##127958
|tip Inside the cave.
turnin Negative Blood##49125 |goto 65.72,17.96
accept Forcing Fate's Hand##49126 |goto 65.72,17.96
step
Summon the Hand of Fate |q 49126/1 |goto 65.72,17.96
|tip Use the "Scroll of Fate's Hand" ability.
|tip It appears as a button on the screen.
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy #50# Undead |q 49126/2 |goto 63.16,15.57
step
Return to Kisha |goto 59.07,13.69 < 15 |c |q 49126
step
talk Kisha##127958
turnin Forcing Fate's Hand##49126 |goto 58.48,13.78
accept Loa-Free Diet##49130 |goto 58.48,13.78
step
talk Princess Talanji##127961
accept Sanctifying Ground##49131 |goto 58.47,13.85
step
talk Lashk##127960
accept Crushing the Skullcrushers##49132 |goto 58.52,13.88
stickystart "Collect_Parts_Of_Torga"
stickystart "Kill_Loa_Gutter_Skullcrushers"
step
clicknpc Sanctifying Totem##128179+
|tip They look like small wooden totems with red fire swirling around them on the ground around this area.
Place #4# Sanctifying Totem |q 49131/1 |goto 56.59,20.22
step
label "Collect_Parts_Of_Torga"
Kill Loa-Gutter enemies around this area
|tip Loa-Gutter Skullcrushers will not drop the quest item.
collect 6 Parts of Torga##153070 |q 49130/1 |goto 56.59,20.22
step
label "Kill_Loa_Gutter_Skullcrushers"
kill 4 Loa-Gutter Skullcrusher##127919 |q 49132/1 |goto 56.59,20.22
step
Follow the path |goto 55.31,23.72 < 20 |only if walking
talk Lashk##127960
turnin Crushing the Skullcrushers##49132 |goto 56.51,26.65
step
talk Princess Talanji##127961
turnin Sanctifying Ground##49131 |goto 56.57,26.67
step
talk Kisha##127958
turnin Loa-Free Diet##49130 |goto 56.59,26.76
step
talk Princess Talanji##127961
accept Jungo, Herald of G'huun##49136 |goto 56.57,26.67
step
Enter the cave |goto 58.72,24.55 < 15 |walk
Watch the dialogue
kill Jungo, Herald of the Blood God##128184 |q 49136/1 |goto 61.13,17.68
|tip Inside the cave.
step
Leave the cave |goto 58.70,24.87 < 15 |walk
talk Princess Talanji##127961
turnin Jungo, Herald of G'huun##49136 |goto 56.57,26.67
step
talk Lashk##127960
accept Torga's Eternal Return##49160 |goto 56.51,26.65
step
use the Scroll of Eternal Return##153131
Watch the dialogue
Put Torga's Spirit to Rest |q 49160/1 |goto 56.51,26.65
step
talk Kisha##127958
turnin Torga's Eternal Return##49160 |goto 56.59,26.75
accept To Gloom Hollow##49902 |goto 56.59,26.75
step
Follow the path |goto 55.59,28.61 < 30 |only if walking
talk Crez##131208
Choose _(Tell Crez about what happened to Torga, and the chance for new stories to be told if he goes to Gloom Hollow.)_
Recruit the Tortollan |q 49902/1 |goto 55.74,39.72 |count 1
step
talk Korkush##131209
Choose _(Tell Korkush there's a great story to be had if he helps the Horde fight the blood trolls and save the Zandalari.)_
Recruit the Tortollan |q 49902/1 |goto 60.23,46.18 |count 2
step
talk Yash##131210
Choose _(Tell Yash if he wants to live a crazy story that he should go to Gloom Hollow to help stop the blood trolls and their god.)_
Recruit the Tortollan |q 49902/1 |goto 63.87,47.74 |count 3
step
talk Rokhan##131213
turnin To Gloom Hollow##49902 |goto 67.43,42.31
accept Getting the Message##47245 |goto 67.43,42.31
step
talk Shadow Hunter Mutumba##122991
accept Staying Hidden##47525 |goto 67.41,42.06
step
talk Korkush##131988
|tip He walks around this area.
home Gloom Hollow |goto 67.76,41.85 |q 47525
step
clicknpc Cuja##121207
fpath Gloom Hollow |goto 66.98,43.78
step
click Message Rocket##272409
Investigate the Disturbance |q 47245/1 |goto 68.52,43.82
step
talk Rokhan##131213
turnin Getting the Message##47245 |goto 67.43,42.31
accept Rendezvous with the Libation##47631 |goto 67.43,42.31
step
Investigate The Frogmarsh |q 47525/1 |goto 68.58,46.51
step
talk Witch Doctor Zentimo##124376
turnin Staying Hidden##47525 |goto 68.59,46.74
accept Hunt the Hunter##47659 |goto 68.59,46.74
accept Fallen Idols##47660 |goto 68.59,46.74
stickystart "Collect_Stolen_Idols_of_Krag'wa"
step
clicknpc Mag'ash the Poisonous##126039
accept A Poisonous Touch##48402 |goto 69.16,50.46
stickystart "Poison_Bloodhunter_Trolls"
step
kill Warmother Boatema##123328 |q 47659/1 |goto 68.24,51.58
step
label "Collect_Stolen_Idols_of_Krag'wa"
click Stolen Idol of Krag'wa##271648+
|tip They look like stone statues on the ground around this area.
collect 8 Stolen Idol of Krag'wa##151113 |q 47660/1 |goto 68.45,50.66
step
label "Poison_Bloodhunter_Trolls"
Kill Bloodhunter enemies around this area
|tip Use the "Poison Tipped Dart" ability.
|tip It appears as a button on the screen.
Poison #6# Bloodhunter Trolls |q 48402/1 |goto 68.45,50.66
step
Enter the cave |goto 73.40,53.77 < 15 |walk
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin Hunt the Hunter##47659 |goto 75.42,56.61
turnin Fallen Idols##47660 |goto 75.42,56.61
turnin A Poisonous Touch##48402 |goto 75.42,56.61
accept The Last Witch Doctor of Krag'wa##47623 |goto 75.42,56.61
step
clicknpc Scepter of Rebirth##133900
Retrieve the Scepter of Rebirth |q 47623/1 |goto 75.13,56.69
step
clicknpc Witch Doctor Zentimo##124559
Perform the Ritual |q 47623/2 |goto 75.13,56.70
step
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin The Last Witch Doctor of Krag'wa##47623 |goto 75.42,56.61
accept A True Loa Feast##47621 |goto 75.42,56.61
accept A Magical Glow##47622 |goto 75.42,56.61
stickystart "Collect_Chunky_Meat"
step
Leave the cave |goto 73.40,53.77 < 15 |walk
Follow the path up |goto 73.75,49.87 < 20 |only if walking
use the Glowfly Bottle##151237
|tip Use it next to Glowflies around this area.
|tip They look like small yellow and blue insects flying above the ground around this area.
Collect #25# Beautiful Glowflies |q 47622/1 |goto 75.89,45.98
step
label "Collect_Chunky_Meat"
Kill enemies around this area
collect 35 Chunky Meat##151040 |q 47621/1 |goto 75.77,45.37
step
Follow the path down |goto 73.71,48.66 < 20 |only if walking
Enter the cave |goto 73.40,53.77 < 15 |walk
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin A True Loa Feast##47621 |goto 75.43,56.62
turnin A Magical Glow##47622 |goto 75.43,56.62
accept Totemic Restoration##47540 |goto 75.43,56.62
step
click Frog Totem Pile##272391
|tip Inside the cave.
Activate the Frog Totem Pile |q 47540/1 |goto 75.21,56.69 |count 1
step
click Frog Totem Pile##272391
|tip Inside the cave.
Activate the Frog Totem Pile |q 47540/1 |goto 75.33,56.38 |count 2
step
click Frog Totem Pile##272391
|tip Inside the cave.
Activate the Frog Totem Pile |q 47540/1 |goto 75.65,56.35 |count 3
step
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin Totemic Restoration##47540 |goto 75.42,56.62
accept Krag'wa the Terrible##47696 |goto 75.43,56.62
step
Leave the cave |goto 73.40,53.77 < 15 |walk
Meet Krag'wa at Razorjaw River |q 47696/1 |goto 67.14,56.16
step
talk Krag'wa the Huge##124637
Tell him _"I am ready to fight the blood trolls."_
Speak with Krag'wa the Huge |invehicle |goto 67.14,56.16 |q 47696
stickystart "Slay_Blood_Troll_Forces"
step
kill Ren'Zuli##124628 |q 47696/3 |goto 60.05,53.30
|tip He's mounted on a tyrannosaurus rex.
|tip Use the abilities on your action bar.
step
label "Slay_Blood_Troll_Forces"
Kill Bloodhunter enemies around this area
|tip Use the abilities on your action bar.
Slay #100# Blood Troll Forces |q 47696/2 |goto 62.13,56.73
step
Watch the dialogue
Return to The Frogmarsh |goto 72.98,52.55 < 7 |c |q 47696
step
Enter the cave |goto 73.40,53.77 < 15 |walk
talk Krag'wa the Huge##120551
|tip Inside the cave.
turnin Krag'wa the Terrible##47696 |goto 75.43,56.63
step
talk Shadow Hunter Mutumba##124641
|tip Inside the cave.
accept Krag'wa's Aid##47697 |goto 75.17,56.67
step
Return to Gloom Hollow |q 47697/1 |goto 67.42,42.24
step
talk Princess Talanji##126213
turnin Krag'wa's Aid##47697 |goto 67.42,42.24
step
Locate Patch |q 47631/1 |goto 74.59,38.86
step
talk Patch##123178
turnin Rendezvous with the Libation##47631 |goto 74.59,38.86
accept No Goblin Left Behind##47597 |goto 74.59,38.86
step
talk Ticker##123436
accept Revenge: Served Hot##47599 |goto 74.76,39.01
stickystart "Kill_Vilescale_Behemoths"
step
click Airtight Escape Pod##271664
Rescue Newt |q 47597/2 |goto 79.30,36.73
step
clicknpc Grit##123233
Rescue Grit |q 47597/1 |goto 76.99,32.65
step
click Naga Cage##279661
Rescue Volt |q 47597/3 |goto 79.97,32.39
step
label "Kill_Vilescale_Behemoths"
use Ticker's Rocket Launcher##151363
|tip Use it on Vilescale Behemoths around this area.
kill 4 Vilescale Behemoth##123461 |q 47599/1 |goto 79.96,33.05
step
talk Zibir the Wingmaster##122198
fpath Forlorn Ruins |goto 82.15,26.69
step
talk Patch##123544
|tip Inside the building.
turnin No Goblin Left Behind##47597 |goto 82.37,27.29
step
talk Ticker##123548
|tip Inside the building.
turnin Revenge: Served Hot##47599 |goto 82.39,27.20
accept There Is No Plan "B"##47596 |goto 82.39,27.20
step
talk Patch##123544
|tip Inside the building.
accept Head of the Viper##47711 |goto 82.37,27.30
step
talk Newt##123545
|tip Inside the building.
accept Pilfering and Fencing##47598 |goto 82.28,27.41
stickystart "Collect_Ancient_Titan_Relics"
step
click Broken Elevating Gear##271747
collect Broken Elevating Gears##151209 |q 47596/2 |goto 79.15,27.43
step
kill Lord Slithin##123550 |q 47711/1 |goto 78.64,25.15
step
click Damaged Artillery Barrel##271746
collect Damaged A.M.O.D. Barrel##151208 |q 47596/1 |goto 77.67,25.28
step
click Shattered Firing Mechanism##271748
collect Shattered Firing Mechanism##151210 |q 47596/3 |goto 79.57,22.25
step
label "Collect_Ancient_Titan_Relics"
Kill Vilescale enemies around this area
collect 20 Ancient Titan Relics##151202 |q 47598/1 |goto 79.14,22.83
step
talk Ticker##123548
|tip Inside the building.
turnin There Is No Plan "B"##47596 |goto 82.39,27.20
step
talk Patch##123544
|tip Inside the building.
turnin Head of the Viper##47711 |goto 82.37,27.29
step
talk Newt##123545
|tip Inside the building.
turnin Pilfering and Fencing##47598 |goto 82.28,27.41
step
talk Patch##123544
|tip Inside the building.
accept Field Evaluation##47601 |goto 82.37,27.30
step
clicknpc A.M.O.D.##123637
Mount the A.M.O.D. |q 47601/1 |goto 81.45,26.02
step
Watch the dialogue
Kill Vilescale enemies around this area
|tip Use the abilities on your action bar.
Slay #40# Naga Forces |q 47601/2
step
kill Grobathan##123486
|tip Use the abilities on your action bar.
Slay Grobathan |q 47601/3
step
talk Patch##123878
turnin Field Evaluation##47601 |goto 81.34,26.09
accept Ready For Action##47602 |goto 81.34,26.09
step
Watch the dialogue
clicknpc Newt's Emergency Rocket##125244
Choose _Let's ride out of here._
Obtain a Ride From Newt's Emergency Rocket |q 47602/1 |goto 81.31,26.22
step
Travel to Gloom Hollow |goto 67.16,43.42 < 7 |c |q 47602 |notravel
step
Return to Talanji |q 47602/2 |goto 67.42,42.24
step
talk Princess Talanji##126213
turnin Ready For Action##47602 |goto 67.42,42.24
step
talk Lashk##131978
accept Slumber No More##49932 |goto 67.49,41.96
step
clicknpc Deactivated Titan Keeper##131299
Awaken the Deactivated Titan Keeper |q 49932/1 |goto 66.91,38.87
step
click Titan Keeper Data Core##280480
collect Damaged Core##156593 |q 49932/2 |goto 66.95,38.79
step
clicknpc Deactivated Titan Keeper##131299
Install the Core |q 49932/3 |goto 66.92,38.86
step
Watch the dialogue
talk Titan Keeper Hezrel##131253
turnin Slumber No More##49932 |goto 66.90,38.91
accept Recovering Remnants##49937 |goto 66.90,38.91
accept Corrupted Earth##49938 |goto 66.90,38.91
accept How to Repair a Titan Keeper##49935 |goto 66.90,38.91
stickystart "Kill_Blood_Infused_Lashers"
stickystart "Collect_Titan_Plating"
step
click Keeper Shavras's Core##281417
collect Keeper Shavras's Core##156521 |q 49935/1 |goto 69.25,39.77
step
clicknpc Titan Keeper Bolcan##131256
Watch the dialogue
kill Titan Keeper Bolcan##131256
collect Keeper Bolcan's Core##156522 |q 49935/2 |goto 66.19,33.65
step
label "Kill_Blood_Infused_Lashers"
kill 25 Blood-Infused Lasher##131168 |q 49938/1 |goto 66.72,34.96
step
label "Collect_Titan_Plating"
kill Naz'wathan Spectre##131169+
collect 25 Titan Plating##156524 |q 49937/1 |goto 66.72,34.96
step
talk Titan Keeper Hezrel##131253
turnin Recovering Remnants##49937 |goto 68.68,35.11
turnin Corrupted Earth##49938 |goto 68.68,35.11
turnin How to Repair a Titan Keeper##49935 |goto 68.68,35.11
accept Bone Procession##49941 |goto 68.68,35.11
accept Unwelcome Undead##49949 |goto 68.68,35.11
stickystart "Slay_Naz'wathan_Undead"
step
clicknpc Minor Corruption##133941
accept Blood Purification##49950 |goto 69.25,33.81
stickystart "Collect_Reanimated_Monstrosity_Bones"
step
clicknpc Corrupted Energy##131286+
|tip They look like red orbs floating above the ground around this area.
Destroy #4# Corrupted Energy |q 49950/1 |goto 69.77,31.30
step
label "Slay_Naz'wathan_Undead"
Kill Naz'wathan enemies around this area
Slay #15# Naz'wathan Undead |q 49949/1 |goto 69.77,31.30
step
label "Collect_Reanimated_Monstrosity_Bones"
use the Titan Manipulator##156528
|tip Use it on Reanimated Monstrosities around this area.
kill Reanimated Monstrosity##131285+
collect 25 Reanimated Monstrosity Bone##156527 |q 49941/1 |goto 69.77,31.30
step
talk Titan Keeper Hezrel##131253
turnin Bone Procession##49941 |goto 68.68,35.11
turnin Unwelcome Undead##49949 |goto 68.68,35.11
turnin Blood Purification##49950 |goto 68.68,35.11
accept Not Fit for This Plane##49955 |goto 68.68,35.11
accept Void is Prohibited##49956 |goto 68.68,35.11
accept Protocol Recovery##49957 |goto 68.68,35.11
stickystart "Destroy_Faceless_Ones"
step
Run up the stairs |goto 70.68,31.75 < 15 |only if walking
use the Void Disruptor##156542
|tip Use it next to Void Portals around this area.
|tip They look like swirling purple and black portals on the ground around this area.
Seal #4# Void Portal |q 49956/1 |goto 71.63,30.72
step
label "Destroy_Faceless_Ones"
Kill Faceless enemies around this area
Destroy #6# Faceless Ones |q 49955/1 |goto 71.63,30.72
step
Enter the building |goto 71.89,30.29 < 10 |walk
kill Overlord Kraxis##131153
|tip Inside the building.
collect Containment Protocol##156537 |q 49957/1 |goto 72.83,28.94
step
Watch the dialogue
talk Titan Keeper Hezrel##131253
|tip Inside the building.
turnin Not Fit for This Plane##49955 |goto 72.47,29.37
turnin Void is Prohibited##49956 |goto 72.47,29.37
turnin Protocol Recovery##49957 |goto 72.47,29.37
accept Containment Procedure##49980 |goto 72.47,29.37
step
talk Titan Keeper Hezrel##131253
|tip Inside the building.
Tell him _"Hezrel, begin your scans to find a solution to the Old God corruption with Nazmir."_
Watch the dialogue
Speak to Titan Keeper Hezrel |q 49980/1 |goto 72.47,29.36
step
kill Grand Ma'da Ateena##131515 |q 49980/2 |goto 72.82,28.92
|tip Inside the building.
|tip Princess Talanji will help you fight her.
|tip Run inside the yellow bubble Titan Keeper Hezrel casts around himself during the fight.
step
talk Titan Keeper Hezrel##131253
|tip Inside the building.
turnin Containment Procedure##49980 |goto 72.47,29.36
accept Return to Gloom Hollow##49985 |goto 72.47,29.36
step
clicknpc Titan Keeper Hezrel##131501
Jump onto Titan Keeper Hezrel |invehicle |goto 71.85,30.39 |q 49985
step
Watch the dialogue
Ride Titan Keeper Hezrel back to Gloom Hollow |q 49985/1 |goto 66.01,39.13 |notravel
step
talk Princess Talanji##126213
turnin Return to Gloom Hollow##49985 |goto 67.43,42.24
accept Down by the Riverside##49569 |goto 67.43,42.24
step
talk Patch##130056
Tell him _"I'm ready, let's hop on this barge and get back to Zul'jan."_
Speak with Patch to Board the Barge |q 49569/1 |goto 65.71,45.10
step
Watch the dialogue
Kill enemies around this area
|tip They are all along the river banks as you sail.
|tip Kill the hydra in the water when you stop sailing.
|tip Use the abilities on your action bar.
Sail Down the River |q 49569/2
step
Travel to the Shattered River |goto 39.89,84.92 < 7 |noway |c |q 49569
step
talk Princess Talanji##121288
turnin Down by the Riverside##49569 |goto 39.40,78.15
accept Rally the Warriors##50076 |goto 39.40,78.15
step
click Ancient Gong##280611
Ring the Ancient Gong |q 50076/1 |goto 39.37,77.48
step
Watch the dialogue
Hear Talanji's Speech |q 50076/2 |goto 39.34,77.68
step
talk Princess Talanji##121288
turnin Rally the Warriors##50076 |goto 39.34,77.69
accept The Battle of Bloodfire Ravine##50138 |goto 39.34,77.69
step
Meet Talanji at Bloodfire Ravine |q 50138/1 |goto 42.29,72.47
step
_Next to you:_
talk Princess Talanji
accept Undying Totems##50078
stickystart "Slay_Blood_Trolls_2"
step
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.46,72.26 |count 1
step
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.16,71.29 |count 2
step
clicknpc Reanimating Totem##132342
Destroy the Reanimating Totem |q 50078/1 |goto 43.75,71.19 |count 3
step
_Next to you:_
talk Princess Talanji
turnin Undying Totems##50078
step
label "Slay_Blood_Trolls_2"
Kill Bloodfire enemies around this area
Slay #8# Blood Trolls |q 50138/2 |goto 43.56,71.26
step
Watch the dialogue
kill Warmother Molaka##132230 |q 50138/3 |goto 44.74,68.64
step
talk Princess Talanji##132333
turnin The Battle of Bloodfire Ravine##50138 |goto 44.95,68.62
accept The Road of Pain##50081 |goto 44.95,68.62
step
talk Patch##132988
accept Boom goes the Bomb##50079 |goto 44.97,68.34
stickystart "Heal_Zandalari_Soldiers"
step
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Destroy the First Barricade |q 50079/1 |goto 44.45,66.80
step
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Destroy the Second Barricade |q 50079/2 |goto 44.18,64.98
step
use the Seaforium Smoke Grenade##156847
|tip Use it on the barricade.
Destroy the Third Barricade |q 50079/3 |goto 44.16,63.59
step
label "Heal_Zandalari_Soldiers"
clicknpc Zandalari Soldier##132985+
|tip They look like injured trolls laying on the ground around this area.
Heal #6# Zandalari Soldiers |q 50081/1 |goto 44.13,64.36
step
Watch the dialogue
talk Princess Talanji##133125
turnin The Road of Pain##50081 |goto 44.19,62.85
turnin Boom goes the Bomb##50079 |goto 44.19,62.85
accept Target of Opportunity##50082 |goto 44.19,62.85
step
Watch the dialogue
talk Princess Talanji##133401
Tell her _"I'm ready."_
Meet with Talanji |q 50082/1 |goto 44.98,60.95
step
Watch the dialogue
Kill the enemies that attack in waves
kill Decaying Hulk##133400
Confront Grand Ma'da Ateena |q 50082/2 |goto 45.58,59.85
step
talk Princess Talanji##133125
turnin Target of Opportunity##50082 |goto 45.21,60.54
step
Watch the dialogue
talk Princess Talanji##133125
accept Petitioning Krag'wa##52073 |goto 45.21,60.54
step
talk Krag'wa the Huge##140283
Tell him _"Krag'wa, the leader of the blood trolls has fled to the large structure in the distance. Please, lend us your assistance."_
Petition Krag'wa for Aid |q 52073/1 |goto 45.14,60.79
step
talk Krag'wa the Huge##140283
Tell him _"I am ready to go, Krag'wa."_
Ride with Krag'wa |invehicle |goto 45.19,60.70 |q 52073
step
Watch the dialogue
Ride Krag'wa |q 52073/2 |goto 48.85,56.54
step
talk Princess Talanji##133476
turnin Petitioning Krag'wa##52073 |goto 49.39,57.18
accept Ateena's Fall##50087 |goto 49.39,57.18
step
kill Grand Ma'da Ateena##133472 |q 50087/1 |goto 50.80,57.91
|tip Follow her when she teleports around.
|tip Avoid the pools of blood on the ground.
step
Watch the dialogue
talk Princess Talanji##133480
turnin Ateena's Fall##50087 |goto 50.60,58.47
step
_Congratulations!_
You completed the Nazmir Loremaster (Story Quest Only) leveling guide.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Vol'dun Loremaster (Story Quest Only)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Voldun storylines:\n\nDangers in the Desert\nA City of Secrets\nStorming the Spire\nUnlikely Allies\nThe Warguard's Fate\nThe Three Keepers\nAtul'Aman",
condition_suggested=function() return level >= 50 and not achieved(12478) and completedq(52131) end,
condition_end=function() return achieved(12478) end,
startlevel=10.0,
endlevel=50.0,
image=ZGV.IMAGESDIR.."Vol'dun",
},[[
step
click Scouting Map
|tip Inside the building.
accept Vol'dun##47513 |goto Dazar'alor/2 41.71,69.41
step
talk Princess Talanji##133050
|tip Inside the building.
turnin Vol'dun##47513 |goto 41.14,66.73
accept Discreet Discussions##47313 |goto 41.14,66.73
step
Leave the building |goto Dazar'alor/0 49.96,42.14 < 10 |walk
Run down the stairs |goto 51.01,40.31 < 15 |only if walking
talk Enforcer Sekal##122229
Ask her _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto Dazar'alor/0 50.09,37.45 |count 1
step
talk Enforcer Gortok##123243
Ask him _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto 52.19,37.52 |count 2
step
talk Enforcer Dakanji##122231
Ask him _"What can you tell me about General Jakra'zet?"_
Question the Enforcer |q 47313/1 |goto 54.27,35.85 |count 3
step
Find Someone Willing to Talk |q 47313/2 |goto 51.58,31.82
step
talk Bladeguard Kaja##122817
turnin Discreet Discussions##47313 |goto 51.58,31.82
accept Rumors of Exile##47314 |goto 51.58,31.82
step
Watch the dialogue
|tip Follow Bladeguard Kaja as she walks.
talk Bladeguard Kaja##122320
turnin Rumors of Exile##47314 |goto 49.92,31.65
accept Into the Dunes##47315 |goto 49.92,31.65
step
clicknpc Pterrordax##122347
Mount the Pterrordax |q 47315/1 |goto 50.03,31.67
step
Watch the dialogue
Fly into Vol'dun |q 47315/2 |goto Vol'dun/0 66.08,36.43 |notravel
step
Watch the dialogue
talk Nisha##130455
|tip Inside the cave.
turnin Into the Dunes##47315 |goto 65.98,36.65
accept Armed and Ready##51357 |goto 65.98,36.65
step
click Sethrak Scythe
|tip Inside the cave.
Choose a Weapon |q 51357/1 |goto 65.95,36.65
step
talk Nisha##130455
|tip Inside the cave.
turnin Armed and Ready##51357 |goto 65.98,36.65
step
_Next to you:_
talk Nisha
accept Answering Their Attacks##47327
accept Dressed for Battle##49676
stickystart "Slay_Sethraks"
step
Follow the path up |goto 65.52,37.27 < 10 |walk
Leave the cave |goto 64.90,36.23 < 10 |walk
click Stolen Vulpera Banner##278686
Find the Banner |q 49676/1 |goto 64.67,33.91
step
click Sethrak Skull##278685
Find the Helmet |q 49676/2 |goto 63.63,32.70
step
click Explosives
Find the Explosives |q 49676/3 |goto 61.88,33.78
step
_Next to you:_
talk Nisha
turnin Dressed for Battle##49676
accept Plans for Attack##49677
step
label "Slay_Sethraks"
Kill Sethrak enemies around this area
Slay #12# Sethrak |q 47327/1 |goto 61.72,33.41
step
_Next to you:_
talk Nisha
turnin Answering Their Attacks##47327
step
kill Fangcaller Sraka##130466
collect Nisha's Attack Plans##158651 |q 49677/1 |goto 60.88,32.66
step
_Next to you:_
talk Nisha
turnin Plans for Attack##49677
accept An Explosive Exit##51364
step
Watch the dialogue
Find Nisha's Wagon |q 51364/1 |goto 60.06,34.58
step
clicknpc Nisha's Wagon##137492
Board Nisha's Wagon |q 51364/2 |goto 60.06,34.58
step
Watch the dialogue
|tip Use the "Volatile Potion" ability on the enemies that attack.
|tip It appears as a button on the screen.
Defend Nisha's Wagon |q 51364/3 |goto 58.23,40.55
step
Watch the dialogue
Ride to Vulpera Hideaway |q 51364/4 |goto 57.08,50.38 |notravel
step
talk Kiro##123586
turnin An Explosive Exit##51364 |goto 56.79,50.54
accept Restorative Venom##47319 |goto 56.79,50.54
step
talk Meerah##122583
accept Freshly Squeezed##51574 |goto 56.76,50.52
step
talk Hagashi##124108
home Vulpera Hideaway |goto 56.78,49.81 |q 48895 |future
step
talk Narishi##124107
fpath Vulpera Hideaway |goto 56.96,49.25
stickystart "Collect_Sandstinger_Venom_Glands"
step
Follow the path |goto 55.08,48.65 < 20 |only if walking
clicknpc Vibrant Pricklevine##138107+
|tip They look like small red plants with teeth and green leaves on the ground around this area.
collect 8 Pricklevine Juice##160448 |q 51574/1 |goto 53.92,50.35
step
label "Collect_Sandstinger_Venom_Glands"
Kill Sandstinger enemies around this area
collect 15 Sandstinger Venom Gland##160441 |q 47319/1 |goto 53.92,50.35
step
Follow the path |goto 54.90,48.64 < 15 |only if walking
talk Meerah##122583
turnin Freshly Squeezed##51574 |goto 56.76,50.52
step
talk Kiro##123586
turnin Restorative Venom##47319 |goto 56.79,50.54
accept A Balm to Calm##47320 |goto 56.79,50.54
step
use the Restorative Balm##150759
|tip Use it on Bladeguard Kaja.
Apply the Restorative Balm |q 47320/1 |goto 56.83,50.53
step
Watch the dialogue
talk Bladeguard Kaja##130341
turnin A Balm to Calm##47320 |goto 56.83,50.52
accept Searching for Survivors##47317 |goto 56.83,50.52
step
talk Kiro##123586
accept Knickknack Takeback##47321 |goto 56.79,50.53
step
talk Meerah##122583
accept Secrets in the Sand##47316 |goto 56.76,50.53
step
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 55.78,48.68 |count 1
step
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 56.33,43.90 |count 2
step
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 52.80,46.41 |count 3
step
Follow the path |goto 51.62,43.03 < 15 |only if walking
click Rakera's Journal Page##271844
Recover the Journal Page |q 47316/1 |goto 52.78,41.80 |count 4
step
clicknpc Bladeguard Jorana##122729
Find Jorana |q 47317/2 |goto 57.42,40.62
stickystart "Collect_Knickknacks"
step
Enter the cave |goto 54.84,39.66 < 10 |walk
click Tarkaj's Warblade##271014
|tip Inside the cave.
Find Tarkaj |q 47317/1 |goto 54.61,39.38
step
label "Collect_Knickknacks"
Kill enemies around this area
Collect #6# Knickknacks |q 47321/1 |goto 55.11,40.05
step
talk Kiro##123586
turnin Knickknack Takeback##47321 |goto 56.79,50.54
step
talk Bladeguard Kaja##130341
turnin Searching for Survivors##47317 |goto 56.83,50.52
turnin Secrets in the Sand##47316 |goto 56.83,50.52
accept The Warguard's Trail##47959 |goto 56.83,50.52
step
talk Meerah##122583
Tell her _"We're ready to leave."_
Speak to Meerah |q 47959/1 |goto 56.76,50.53
step
Watch the dialogue
Ride Meerah's Caravan |q 47959/2 |goto 53.48,65.95 |notravel
step
talk Jorak##126696
turnin The Warguard's Trail##47959 |goto 52.97,66.53
accept Grozztok the Blackheart##48549 |goto 52.97,66.53
accept Stolen Satchels##48550 |goto 52.97,66.53
stickystart "Collect_Weathered_Satchels"
step
Follow the path up |goto 50.76,64.50 < 30 |only if walking
Watch the dialogue
kill Grozztok the Blackheart##126697 |q 48549/1 |goto 49.19,64.74
step
label "Collect_Weathered_Satchels"
Kill Sandfury enemies around this area
collect 5 Weathered Satchel##152660 |q 48550/1 |goto 49.45,65.34
step
talk Bladeguard Kaja##122289
turnin Grozztok the Blackheart##48549 |goto 53.19,66.05
step
talk Jorak##126696
turnin Stolen Satchels##48550 |goto 53.34,66.00
step
talk Bladeguard Kaja##122289
accept On the Move##48684 |goto 53.19,66.06
step
talk Meerah##126235
Tell her _"We're ready to leave."_
Speak to Meerah |q 48684/1 |goto 53.22,66.04
step
Watch the dialogue
Ride Meerah's Caravan |q 48684/2 |goto 52.88,89.12 |notravel
step
talk Jorak##127691
turnin On the Move##48684 |goto 52.83,89.23
accept The Perfect Offering##48895 |goto 52.83,89.23
step
talk Akunda the Exalted##127992
turnin The Perfect Offering##48895 |goto 53.18,90.29
accept Powerful Conductors##48993 |goto 53.18,90.29
accept Sacred Remains##48992 |goto 53.18,90.29
accept Vile Infestation##48991 |goto 53.18,90.29
step
talk Akunda the Bountiful##127431
|tip Inside the building.
home Temple of Akunda |goto 51.92,89.83 |q 50561 |future
step
talk Akunda the Tamer##127427
fpath Temple of Akunda |goto 53.72,89.17
stickystart "Collect_Sacred_Remains"
stickystart "Kill_Ranishu_Gorgers"
step
Enter the cave |goto 55.01,86.20 < 10 |walk
Follow the path down |goto 55.75,86.01 < 10 |walk
kill Rorgog the Devourer##134052
|tip Inside the cave.
collect Rorgog's Antennae##153029 |q 48993/1 |goto 56.12,83.45
step
Follow the path up |goto 55.75,86.01 < 10 |walk
Leave the cave |goto 55.04,86.20 < 10 |c |q 48992
step
label "Collect_Sacred_Remains"
click Sacred Remains##277285+
|tip They look like white bones on the ground around this area.
collect 6 Sacred Remains##153028 |q 48992/1 |goto 54.60,86.07
step
label "Kill_Ranishu_Gorgers"
kill 12 Ranishu Gorger##133565 |q 48991/1 |goto 54.60,86.07
step
talk Akunda the Exalted##127992
turnin Powerful Conductors##48993 |goto 53.18,90.29
turnin Sacred Remains##48992 |goto 53.18,90.29
turnin Vile Infestation##48991 |goto 53.18,90.29
accept Cleanse the Mind##48887 |goto 53.18,90.29
accept It Springs Eternal##48888 |goto 53.18,90.29
stickystart "Slay_Redrock_Scavenger"
step
Follow the path down |goto 53.11,84.99 < 15 |only if walking
Enter the cave |goto 52.16,83.78 < 10 |walk
click Shrine of Thunder##276460
|tip Inside the cave.
Meditate at the Shrine of Thunder |q 48887/1 |goto 52.17,83.36
step
kill Inner Demon##138292 |q 48887/2 |goto 52.17,83.36
|tip Inside the cave.
step
label "Slay_Redrock_Scavenger"
Kill Redrock enemies around this area
Slay #8# Redrock Scavenger |q 48888/1 |goto 52.13,84.48
step
Follow the path up |goto 53.79,83.57 < 15 |only if walking
talk Akunda the Exalted##127992
turnin Cleanse the Mind##48887 |goto 53.18,90.30
turnin It Springs Eternal##48888 |goto 53.18,90.30
accept Trial of Truth##48894 |goto 53.18,90.30
step
talk Akunda the Exalted##127992
Tell him "_My name is Akunda the Nimble."_
|tip You can choose whichever Akunda name you like, it doesn't matter.
|tip You cannot choose to have your name remain unchanged.
Speak Your True Name to Akunda the Exalted |q 48894/1 |goto 53.18,90.29
step
talk Akunda the Exalted##127966
turnin Trial of Truth##48894 |goto 53.18,90.29
step
talk Bladeguard Kaja##127570
accept Akunda Awaits##48715 |goto 53.16,90.20
step
Watch the dialogue
|tip Inside the building.
Investigate the Temple of Akunda |q 48715/1 |goto 53.18,91.26
step
Watch the dialogue
talk Bladeguard Kaja##135066
|tip Inside the building.
turnin Akunda Awaits##48715 |goto 53.58,91.65
step
talk Akunda the Sensible##127980
|tip Inside the building.
accept Valley of Sorrows##48987 |goto 53.58,91.34
step
Follow the path down |goto 53.12,85.01 < 20 |only if walking
Follow the path down |goto 53.80,80.18 < 20 |only if walking
talk Meijani##127989
turnin Valley of Sorrows##48987 |goto 53.01,78.77
accept Memory Breach##48988 |goto 53.01,78.77
accept Shattered and Broken##49005 |goto 53.01,78.77
stickystart "Kill_Distorted_Memories"
stickystart "Kill_Fractured_Memories"
step
clicknpc Unwanted Memory##122683+
|tip They look like grey vases on the ground around this area.
Search #8# Unwanted Memories |q 48988/1 |goto 52.71,76.94
You can find more around [54.43,76.24]
step
label "Kill_Distorted_Memories"
kill 4 Distorted Memory##138198 |q 49005/1 |goto 53.49,76.85
step
label "Kill_Fractured_Memories"
kill 8 Fractured Memory##138199 |q 49005/2 |goto 53.49,76.85
step
talk Meijani##127989
turnin Memory Breach##48988 |goto 53.01,78.77
turnin Shattered and Broken##49005 |goto 53.01,78.77
accept Repairing the Past##48889 |goto 53.01,78.77
step
Enter the cave |goto 52.60,79.18 < 10 |walk
Kill the enemies that attack in waves
|tip Inside the cave.
Watch the dialogue
Protect Meijani |q 48889/1 |goto 52.31,79.74
step
talk Akunda##138382
|tip Inside the cave.
turnin Repairing the Past##48889 |goto 52.22,79.89
accept Ending the Madness##48996 |goto 52.22,79.89
step
Follow the path |goto 53.12,89.65 < 15 |only if walking
kill Akunda the Exalted##128147 |q 48996/1 |goto 53.18,91.25
|tip Inside the building.
|tip Use the "Tempest" ability.
|tip It appears as a button on the screen.
step
Watch the dialogue
talk Akunda##128152
|tip Inside the building.
turnin Ending the Madness##48996 |goto 53.19,91.65
accept Akunda's Blessing##50913 |goto 53.19,91.65
step
click Altar of Akunda##290773
|tip Inside the building.
Visit the Altar of Akunda |q 50913/1 |goto 53.18,92.12
step
talk Akunda##128152
|tip Inside the building.
turnin Akunda's Blessing##50913 |goto 53.19,91.65
step
talk Warguard Rakera##130660
|tip Inside the building.
accept Clearing the Fog##47874 |goto 53.61,91.66
step
Watch the dialogue
|tip Follow Warguard Rakera as she walks.
talk Warguard Rakera##130667
turnin Clearing the Fog##47874 |goto 52.81,89.24
accept Knowledge of the Past##48896 |goto 52.81,89.24
step
talk Meerah##126235
Tell her _"We're ready to leave."_
Speak to Meerah |q 48896/1 |goto 52.70,89.30
step
Watch the dialogue
Ride Meerah's Caravan |q 48896/2 |goto 47.91,82.38 |notravel
step
kill 3 Sandfury Assassin##128209 |q 48896/3 |goto 47.67,81.99
step
_Next to you:_
talk Warguard Rakera
turnin Knowledge of the Past##48896
accept Searching the Ruins##47716
step
Watch the dialogue
Search for Julwaba |q 47716/1 |goto 46.60,76.05
step
Enter the building |goto 46.77,75.72 < 20 |only if walking
Watch the dialogue
talk Julwaba##134162
|tip Inside the building.
turnin Searching the Ruins##47716 |goto 47.07,75.66
step
talk Kiro##135154
|tip Inside the building.
accept Creeping Death##48314 |goto 47.05,75.60
accept Nature's Remedy##48313 |goto 47.05,75.60
stickystart "Collect_Scorpashi_Stingers"
step
click Prickly Plum##273193
|tip They look like green spiky plants on the ground around this area.
collect 6 Prickly Plum Cactus##152393 |q 48313/1 |goto 46.00,73.43
step
label "Collect_Scorpashi_Stingers"
Kill Scorpashi enemies around this area
collect 7 Scorpashi Stinger##152397 |q 48314/1 |goto 46.00,73.43
step
talk Makaanji##135654
fpath Scorched Sands Outpost |goto 43.90,75.92
step
Enter the building |goto 46.77,75.72 < 20 |only if walking
talk Kiro##135154
|tip Inside the building.
turnin Creeping Death##48314 |goto 47.06,75.60
turnin Nature's Remedy##48313 |goto 47.06,75.60
accept Effective Antivenom##50770 |goto 47.06,75.60
step
use the Antivenom##158678
|tip Use it on Serrik.
|tip Inside the building.
Apply the Restorative Balm |q 50770/1 |goto 47.06,75.72
step
Watch the dialogue
talk Serrik##134533
|tip Inside the building.
turnin Effective Antivenom##50770 |goto 47.06,75.71
accept The Secrets of Zul'Ahjin##50539 |goto 47.06,75.71
step
Run up the stairs |goto 46.87,74.21 < 15 |only if walking
Follow the path |goto 47.90,73.85 < 20 |only if walking
click Crumbling Statue##281639
turnin The Secrets of Zul'Ahjin##50539 |goto 48.90,74.49
accept Hollow, Empty Eyes##48315 |goto 48.90,74.49
step
click Glittering Sapphire##281558
collect Glittering Sapphire##157864 |q 48315/1 |goto 49.85,73.19 |count 1
step
Run up the stairs |goto 50.46,71.81 < 15 |only if walking
click Glittering Sapphire##281558
collect Glittering Sapphire##157864 |q 48315/1 |goto 51.05,72.34 |count 2
step
click Crumbling Statue##281639
turnin Hollow, Empty Eyes##48315 |goto 48.90,74.49
step
Watch the dialogue
click Ancient Reliquary##281583
accept Sulthis' Stone##50561 |goto 48.90,74.25
step
Jump down here |goto 47.02,73.97 < 15 |only if walking
Enter the building |goto 46.73,75.70 < 20 |walk
talk Serrik##134533
|tip Inside the building.
turnin Sulthis' Stone##50561 |goto 47.06,75.71
accept Unlikely Allies##47324 |goto 47.06,75.71
step
clicknpc Serrik's Pterrordax##134544
Mount the Pterrordax |q 47324/1 |goto 46.79,75.45
step
Watch the dialogue
Fly to the Sanctuary of the Devoted |q 47324/2 |goto 27.24,54.09 |notravel
step
Watch the dialogue
talk Serrik##128687
turnin Unlikely Allies##47324 |goto 27.22,53.94
accept A Powerful Prisoner##49334 |goto 27.22,53.94
step
talk Zissiah##128696
accept Break Their Ranks##50641 |goto 27.20,53.86
accept Push Them Back!##49327 |goto 27.20,53.86
step
talk Issik##128693
|tip Inside the building.
home Sanctuary of the Devoted |goto 26.87,52.22 |q 49327
step
talk Vethiss##128695
fpath Sanctuary of the Devoted |goto 27.65,50.33
stickystart "Burn_Sethrak_Banners"
stickystart "Crush_Sethrak_Cannons"
stickystart "Shatter_Sethrak_Spires"
stickystart "Slay_Faithless"
step
click Sethrak Cage##277910
Rescue Vorrik |q 49334/1 |goto 30.02,51.98
step
label "Burn_Sethrak_Banners"
click Sethrak War Banner##277899+
|tip They look like wooden poles with red flags on the ground around this area.
Burn #4# Banners |q 49327/1 |goto 29.38,53.59
step
label "Crush_Sethrak_Cannons"
clicknpc Sethrak Cannon##129076+
|tip They look like stone cannons on the ground around this area.
Crush #2# Cannons |q 49327/2 |goto 29.38,53.59
step
label "Shatter_Sethrak_Spires"
click Sethrak Spire##278583+
|tip They look like large stone towers with lighting striking them on the ground around this area.
Shatter #2# Spires |q 49327/3 |goto 29.38,53.59
step
label "Slay_Faithless"
Kill Faithless enemies around this area
Slay #10# Faithless |q 50641/1 |goto 29.38,53.59
step
Run up the stairs |goto 28.83,54.05 < 15 |only if walking
talk Zissiah##128696
turnin Break Their Ranks##50641 |goto 27.20,53.85
turnin Push Them Back!##49327 |goto 27.20,53.85
step
talk Vorrik##129519
|tip Inside the building.
turnin A Powerful Prisoner##49334 |goto 27.62,52.57
accept The Keepers' Keys##49340 |goto 27.62,52.57
step
talk Vorrik##129519
|tip Inside the building.
Choose _<Give Vorrik Sulthis' Stone.>_
Watch the dialogue
Speak to Vorrik |q 49340/1 |goto 27.62,52.57
step
talk Vorrik##128694
|tip Upstairs inside the building.
turnin The Keepers' Keys##49340 |goto 27.12,52.56
accept The Missing Key##49662 |goto 27.12,52.56
step
Cross the bridge |goto 30.71,50.12 < 20 |only if walking
Follow the path |goto 35.68,45.14 < 30 |only if walking
Follow the path |goto 40.26,44.74 < 30 |only if walking
Cross the bridge |goto 42.95,39.14 < 20 |only if walking
talk Vorrik##137970
turnin The Missing Key##49662 |goto 42.92,35.75
accept Infiltrating the Empire##50745 |goto 42.92,35.75
step
Run up the stairs |goto 42.91,33.89 < 15 |only if walking
talk Lugo the Windrider##135385
fpath Vorrik's Sanctum |goto 47.30,35.23
step
Enter the cave |goto 47.95,35.57 < 10 |walk
talk Vorrik##135172
|tip Inside the cave.
turnin Infiltrating the Empire##50745 |goto 47.96,36.39
accept Allies in Anarchy##49664 |goto 47.96,36.39
step
Leave the cave |goto 47.94,35.54 < 10 |walk
talk Nisha##135090
turnin Allies in Anarchy##49664 |goto 46.14,33.22
accept Ready to Riot##49665 |goto 46.14,33.22
accept Make Them Fear Us##49666 |goto 46.14,33.22
stickystart "Arm_Slaves"
step
Kill Faithless enemies around this area
use the Vulpera Banners##158884
|tip Use it near their corpses.
Plant #12# Vulpera Banners |q 49666/1 |goto 47.60,32.31
step
label "Arm_Slaves"
click Faithless Weapon Rack##287006+
|tip They look like wooden racks with weapons on them on the ground around this area.
collect Faithless Scimitar##159470+ |n
talk Vulpera Slave##130342+
Choose _<Free the slave and give them a weapon to fight with.>_
|tip They look like friendly fox NPCs around this area.
|tip You must have a Faithless Scimitar to be able to arm them.
Arm #8# Slaves |q 49665/1 |goto 47.60,32.31
step
Follow the path up |goto 47.17,33.86 < 15 |only if walking
talk Nisha##135090
turnin Ready to Riot##49665 |goto 46.15,33.22
turnin Make Them Fear Us##49666 |goto 46.15,33.22
accept Crater Conquered##50746 |goto 46.15,33.22
step
Follow the path up |goto 46.86,34.71 < 20 |only if walking
Enter the cave |goto 47.95,35.61 < 10 |walk
talk Vorrik##135172
|tip Inside the cave.
turnin Crater Conquered##50746 |goto 47.96,36.39
accept Diplomacy and Dominance##49141 |goto 47.96,36.39
accept Don't Drop It... Yet##50748 |goto 47.96,36.39
stickystart "Collect_Volatile_Lightning_Bombs"
step
Leave the cave |goto 47.94,35.55 < 10 |walk
Follow the path up |goto 49.68,34.95 < 15 |only if walking
click Suppression Spire##290707+
|tip They look like tall stone towers on the ground around this area.
Drain #6# Suppression Spires |q 49141/1 |goto 47.80,36.98
step
label "Collect_Volatile_Lightning_Bombs"
Kill Ridge enemies around this area
collect 6 Volatile Lightning Bomb##154896 |q 50748/1 |goto 47.80,36.98
step
Follow the path up |goto 46.40,37.48 < 10 |only if walking
talk Vorrik##135110
|tip At the top of the mountain.
turnin Diplomacy and Dominance##49141 |goto 47.20,39.15
turnin Don't Drop It... Yet##50748 |goto 47.20,39.15
accept Vengeance From Above##49003 |goto 47.20,39.15
step
clicknpc Rakjan the Unbroken##138547
Mount Rakjan the Unbroken |q 49003/1 |goto 47.16,39.34
step
Kill Faithless enemies around this area
|tip Use the "Lightning Bomb" ability on your action bar.
|tip They are on the ground around this area as you fly.
Slay #60# Faithless |q 49003/2 |goto 48.13,32.14
step
Destroy the Spire Barrier |q 49003/3 |goto 51.95,32.61
|tip Use the "Vorrik's Barrage" ability on your action bar.
step
talk Vorrik##135111
turnin Vengeance From Above##49003 |goto 51.95,28.69
accept Infuriating the Emperor##50750 |goto 51.95,28.69
accept Relics of Sethraliss##50752 |goto 51.95,28.69
stickystart "Purge_Faithless"
step
click Rebirth Creed##282451
collect Rebirth Creed##158722 |q 50752/1 |goto 49.89,28.50
step
click Skull of the First Skycaller##290755
collect Skull of the First Skycaller##160526 |q 50752/2 |goto 50.25,26.69
step
click Sethraliss Sight Stone##290756
collect Sethraliss Sight Stone##160527 |q 50752/3 |goto 48.24,26.15
step
click Blood of the Fallen Loa##290757
collect Blood of the Fallen Loa##160528 |q 50752/4 |goto 49.56,24.36
step
label "Purge_Faithless"
Kill Faithless enemies around this area
|tip Run near them.
|tip Run over the Lightning Orbs that appear on the ground to recharge the ability bar.
Purge #75# Faithless |q 50750/1 |goto 49.66,25.28
step
talk Vorrik##135111
turnin Infuriating the Emperor##50750 |goto 51.94,28.69
turnin Relics of Sethraliss##50752 |goto 51.94,28.69
step
Watch the dialogue
talk Vorrik##135111
accept The Fall of Emperor Korthek##50550 |goto 51.94,28.69
step
talk Vorrik##138411
Tell him _"Vorrik, I'm ready to face Emperor Korthek."_
Watch the dialogue
Speak with Vorrik |q 50550/1 |goto 51.95,28.69
step
kill Emperor Korthek##134601 |q 50550/2 |goto 51.96,27.25
step
Watch the dialogue
talk Vorrik##135390
turnin The Fall of Emperor Korthek##50550 |goto 51.98,27.72
accept Sanctuary Under Siege##50751 |goto 51.98,27.72
step
talk Vorrik##129588
|tip Upstairs inside the building.
turnin Sanctuary Under Siege##50751 |goto 27.10,52.56
accept Atul'Aman##50617 |goto 27.10,52.56
step
talk Vorrik##135625
turnin Atul'Aman##50617 |goto 43.05,68.21
accept The Abandoned Passage##50904 |goto 43.05,68.21
step
talk Vorrik##135625
Tell him _"I'm ready. Let's go find the others."_
Speak with Vorrik |q 50904/1 |goto 43.05,68.21
step
Enter the cave |goto Vol'dun/1 30.77,82.26 < 10 |walk
Follow the path |goto Vol'dun/1 37.29,77.10 < 10 |walk
clicknpc Entangling Tendrils##135695
|tip Inside the cave.
Find Kaja |q 50904/2 |goto Vol'dun/1 42.87,91.97
step
Follow the path |goto 46.61,79.79 < 10 |walk
clicknpc Entangling Tendrils##135695
|tip Inside the cave.
Find Rakera |q 50904/3 |goto 51.65,67.31
step
talk Warguard Rakera##134803
|tip Inside the cave.
turnin The Abandoned Passage##50904 |goto 55.62,36.28
accept Defeat Jakra'zet##50702 |goto 55.62,36.28
step
Watch the dialogue
kill General Jakra'zet##134846 |q 50702/1 |goto 67.86,35.89
|tip Inside the cave.
step
Watch the dialogue
talk Warguard Rakera##135133
|tip Upstairs inside the building.
turnin Defeat Jakra'zet##50702 |goto Vol'dun/0 27.09,52.64
step
_Congratulations!_
You completed the Vol'dun Loremaster (Story Quest Only) leveling guide.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Mysterious Letter Questline",{
author="support@zygorguides.com",
description="\nFind the author of the Mysterious Letter.",
condition_end=function() return completedq(53099) end,
},[[
step
Enter the building |goto Stormsong Valley/0 50.23,31.73 < 10 |walk
click Crumbling Letter##281348
|tip Inside the building.
accept Ruin Has Come##50417 |goto 49.95,31.79
step
Jump down here |goto 77.49,63.17 < 15 |only if walking
Cross the water |goto 77.16,61.41 < 20 |only if walking
Follow the path up |goto 77.28,53.78 < 20 |only if walking
Enter the building |goto 78.98,54.40 < 10 |only if walking
talk Wayne the Ancestral##133640
|tip He walks around inside the building.
turnin Ruin Has Come##50417 |goto 78.60,54.97
accept Flush Them Out##50386 |goto 78.60,54.97
step
Follow the path down |goto 79.49,56.35 < 20 |only if walking
Enter the cave |goto 80.53,56.58 < 20 |walk
Kill enemies around this area
|tip Inside the cave.
Purge the Area |q 50386/1 |goto 79.89,55.57 |count 1
step
Follow the path up |goto 81.14,56.20 < 20 |only if walking
Enter the building |goto 83.76,53.93 < 15 |walk
Kill enemies around this area
|tip Inside the building.
Purge the Area |q 50386/1 |goto 84.44,53.80 |count 2
step
Leave the building |goto 84.40,51.86 < 15 |walk
Follow the path down |goto 85.63,49.25 < 20 |only if walking
Enter the building |goto 86.47,52.21 < 15 |walk
Kill enemies around this area
|tip Inside the building.
Purge the Area |q 50386/1 |goto 86.16,52.98 |count 3
step
Follow the path up |goto 86.14,49.83 < 20 |only if walking
Follow the path down |goto 83.09,51.28 < 30 |only if walking
Enter the building |goto 80.93,50.75 < 15 |walk
Kill enemies around this area
|tip Inside the building.
Purge the Area |q 50386/1 |goto 81.43,50.18 |count 4
step
Follow the path up |goto 79.52,52.56 < 15 |only if walking
Enter the building |goto 79.00,54.40 < 10 |only if walking
talk Wayne the Ancestral##133640
|tip He walks around inside the building.
|tip You will have to wait 24 hours to accept the next quest.
turnin Flush Them Out##50386 |goto 78.60,54.97
accept Despondent Ablutions##53097 |goto 78.60,54.97
step
Follow the path |goto 79.36,53.67 < 20 |only if walking
click Purifying Effigy##294032
Inspect the Purifying Effigy |q 53097/1 |goto 76.24,50.64
step
kill Violent Expurgation##142996 |q 53097/2 |goto 76.33,50.78
step
Enter the building |goto 78.99,54.40 < 10 |only if walking
talk Wayne the Ancestral##133640
|tip He walks around inside the building.
|tip You will have to wait 24 hours to accept the next quest.
turnin Despondent Ablutions##53097 |goto 78.60,54.97
accept Trinkets and Baubles##50387 |goto 78.60,54.97
step
Follow the path up |goto 80.44,54.02 < 20 |only if walking
Enter the building |goto 83.77,53.93 < 10 |walk
click Stolen Supplies##281312
|tip Inside the building.
collect Stolen Supplies##157784 |q 50387/1 |goto 84.61,54.05 |count 1
step
Leave the building |goto 84.40,51.87 < 15 |walk
Follow the path down |goto 81.35,47.16 < 20 |only if walking
Enter the building |goto 82.06,44.56 < 10 |walk
click Stolen Supplies##281312
|tip Inside the building.
collect Stolen Supplies##157784 |q 50387/1 |goto 82.82,43.96 |count 2
step
Jump down here |goto 80.74,46.37 < 20 |only if walking
Jump down here |goto 80.15,47.94 < 20 |only if walking
Enter the building |goto 80.91,50.76 < 15 |walk
click Stolen Supplies##281312
|tip Inside the building.
collect Stolen Supplies##157784 |q 50387/1 |goto 81.55,49.83 |count 3
step
Follow the path up |goto 79.01,53.20 < 20 |only if walking
Enter the building |goto 79.00,54.40 < 10 |only if walking
talk Wayne the Ancestral##133640
|tip He walks around inside the building.
|tip You will have to wait 24 hours to accept the next quest.
turnin Trinkets and Baubles##50387 |goto 78.60,54.97
accept The Weight of My Ambition##50388 |goto 78.60,54.97
step
Follow the path down |goto 79.08,53.11 < 20 |only if walking
Continue following the path |goto 79.53,47.18 < 20 |only if walking
kill Drowned Captain##133785 |q 50388/1 |goto 79.24,43.49
|tip Underwater on the deck of the ship.
step
Follow the path |goto 79.53,47.18 < 20 |only if walking
Follow the path up |goto 79.08,53.11 < 20 |only if walking
Enter the building |goto 79.00,54.40 < 10 |only if walking
talk Wayne the Ancestral##133640
|tip He walks around inside the building.
|tip You will have to wait 24 hours to accept the next quest.
turnin The Weight of My Ambition##50388 |goto 78.60,54.97
accept Misplaced Faith##53105 |goto 78.60,54.97
step
Follow the path down |goto 79.49,56.35 < 20 |only if walking
Enter the cave |goto 80.53,56.58 < 20 |walk
use the Cleansing Thurible##163212
|tip Stand in the dark swirling patch on the ground inside the cave.
Purge the Source of Corruption |q 53105/1 |goto 79.95,55.52 |count 1
step
use the Cleansing Thurible##163212
|tip Stand in the dark swirling patch on the ground inside the cave.
Purge the Source of Corruption |q 53105/1 |goto 79.61,55.79 |count 2
step
Follow the path up |goto 81.14,56.20 < 20 |only if walking
use the Cleansing Thurible##163212
|tip Stand in the dark swirling patch on the ground.
Purge the Source of Corruption |q 53105/1 |goto 82.50,53.56 |count 3
step
Enter the building |goto 83.76,53.93 < 15 |walk
use the Cleansing Thurible##163212
|tip Stand in the dark swirling patch on the ground inside the building.
Purge the Source of Corruption |q 53105/1 |goto 84.23,53.55 |count 4
step
use the Cleansing Thurible##163212
|tip Stand in the dark swirling patch on the ground inside the building.
Purge the Source of Corruption |q 53105/1 |goto 84.46,53.87 |count 5
step
Leave the building |goto 84.40,51.86 < 15 |walk
Follow the path down |goto 85.63,49.25 < 20 |only if walking
Enter the building |goto 86.47,52.21 < 15 |walk
use the Cleansing Thurible##163212
|tip Stand in the dark swirling patch on the ground inside the building.
Purge the Source of Corruption |q 53105/1 |goto 86.05,53.39 |count 6
step
use the Cleansing Thurible##163212
|tip Stand in the dark swirling patch on the ground inside the building.
Purge the Source of Corruption |q 53105/1 |goto 85.72,52.65 |count 7
step
use the Cleansing Thurible##163212
|tip Stand in the dark swirling patch on the ground.
Purge the Source of Corruption |q 53105/1 |goto 87.14,52.22 |count 8
step
Follow the path up |goto 86.50,50.79 < 15 |only if walking
use the Cleansing Thurible##163212
|tip Stand in the dark swirling patch on the ground.
Purge the Source of Corruption |q 53105/1 |goto 85.53,50.15 |count 9
step
Follow the path up |goto 84.71,49.41 < 20 |only if walking
Continue up the path |goto 83.37,50.82 < 20 |only if walking
use the Cleansing Thurible##163212
|tip Stand in the dark swirling patch on the ground.
Purge the Source of Corruption |q 53105/1 |goto 82.75,50.34 |count 10
step
Jump down here |goto 82.90,50.60 < 10 |only if walking
Follow the path down |goto 81.83,51.92 < 20 |only if walking
Enter the building |goto 80.90,50.76 < 15 |walk
use the Cleansing Thurible##163212
|tip Stand in the dark swirling patch on the ground inside the building.
Purge the Source of Corruption |q 53105/1 |goto 81.05,50.26 |count 11
step
use the Cleansing Thurible##163212
|tip Stand in the dark swirling patch on the ground inside the building.
Purge the Source of Corruption |q 53105/1 |goto 81.78,50.10 |count 12
step
use the Cleansing Thurible##163212
|tip Stand in the dark swirling patch on the ground.
Purge the Source of Corruption |q 53105/1 |goto 80.32,50.56 |count 13
step
Follow the path up |goto 79.52,52.56 < 15 |only if walking
Enter the building |goto 79.00,54.40 < 10 |only if walking
talk Wayne the Ancestral##133640
|tip He walks around inside the building.
|tip You will have to wait 24 hours to accept the next quest.
turnin Misplaced Faith##53105 |goto 78.60,54.97
accept Indefatigable Purpose##50385 |goto 78.60,54.97
step
Follow the path down |goto 79.49,56.35 < 20 |only if walking
Enter the cave |goto 80.53,56.58 < 20 |walk
click Drowned Altar
|tip Inside the cave.
Cleanse the Drowned Altar |q 50385/1 |goto 79.73,55.56 |count 1
step
Follow the path up |goto 81.14,56.20 < 20 |only if walking
Continue up the path |goto 82.74,52.08 < 20 |only if walking
Follow the path down |goto 84.37,50.12 < 20 |only if walking
Enter the building |goto 86.48,52.21 < 10 |walk
click Drowned Altar
|tip Inside the building.
Cleanse the Drowned Altar |q 50385/1 |goto 86.27,53.44 |count 2
step
Follow the path up |goto 85.89,49.51 < 20 |only if walking
Follow the path down |goto 83.00,51.37 < 20 |only if walking
Enter the building |goto 80.91,50.77 < 10 |walk
click Drowned Altar
|tip Inside the building.
Cleanse the Drowned Altar |q 50385/1 |goto 81.69,50.24 |count 3
step
Follow the path up |goto 79.52,52.56 < 15 |only if walking
Enter the building |goto 79.00,54.40 < 10 |only if walking
talk Wayne the Ancestral##133640
|tip He walks around inside the building.
|tip You will have to wait 24 hours to accept the next quest.
turnin Indefatigable Purpose##50385 |goto 78.60,54.97
accept Malign Inspiration##50389 |goto 78.60,54.97
step
Follow the path |goto 82.06,53.55 < 20 |only if walking
Continue following the path |goto 83.66,51.04 < 20 |only if walking
kill Enchanting Siren##133786 |q 50389/1 |goto 85.20,50.30
|tip It flies around the burning brazier.
step
Follow the path |goto 82.06,53.55 < 20 |only if walking
Enter the building |goto 79.00,54.40 < 10 |only if walking
talk Wayne the Ancestral##133640
|tip He walks around inside the building.
|tip You will have to wait 24 hours to accept the next quest.
turnin Malign Inspiration##50389 |goto 78.60,54.97
accept A Mote of Cosmic Truth##53099 |goto 78.60,54.97
step
Follow the path |goto 82.06,53.55 < 20 |only if walking
Continue following the path |goto 83.66,51.04 < 20 |only if walking
click Eye of Revelation
kill Voidborne Ascendant##143017 |q 53099/1 |goto 84.31,50.70
step
Follow the path |goto 82.06,53.55 < 20 |only if walking
Enter the building |goto 79.00,54.40 < 10 |only if walking
talk Wayne the Ancestral##133640
|tip He walks around inside the building.
turnin A Mote of Cosmic Truth##53099 |goto 78.60,54.97
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Heritage Armor\\Blood Elf Heritage Armor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the questline to unlock the Blood Elf Heritage Armor.",
condition_valid=function() return raceclass('BloodElf') end,
condition_valid_msg="You must be a Blood Elf to complete this guide!",
condition_end=function() return completedq(54096) end,
startlevel=50,
},[[
step
Become Exalted with Silvermoon City |condition rep('Silvermoon City') == Exalted
|tip Use the "Silvermoon City" reputation guide to accomplish this.
step
talk Ambassador Dawnsworn##146939
accept The Pride of the Sin'dorei##53791 |goto Orgrimmar/1 39.13,79.01
step
talk Lor'themar Theron##16802
|tip Inside the building.
turnin The Pride of the Sin'dorei##53791 |goto Silvermoon City/0 53.81,20.24
accept Walk Among Ghosts##53734 |goto Silvermoon City/0 53.81,20.24
step
Leave the building |goto 57.54,24.59 < 15 |walk
Follow the path |goto 72.82,44.08 < 20 |only if walking
Follow the path |goto 75.49,58.69 < 15 |only if walking
Continue following the path |goto 72.14,85.53 < 20 |only if walking
talk Lor'themar Theron##145015
turnin Walk Among Ghosts##53734 |goto Ghostlands/0 46.29,31.99
accept Writing on the Wall##53882 |goto Ghostlands/0 46.29,31.99
step
Follow the road |goto 43.50,44.38 < 30 |only if walking
Continue following the road |goto 45.47,72.32 < 30 |only if walking
click Lamp
Light the First Flame |q 53882/1 |goto 47.74,84.01
step
_Next to you:_
Watch the dialogue
talk Lor'themar Theron
turnin Writing on the Wall##53882
accept The First to Fall##53735
step
Follow the path down |goto 44.85,70.37 < 30 |only if walking
Shed Light on the First Battlefield |q 53735/1 |goto 37.08,65.51
|tip Use the "Light the Way" ability.
|tip It appears as a button on the screen.
step
Kill enemies around this area
Fight Back the Undead |q 53735/2 |goto 36.90,67.18
step
_Next to you:_
talk Lor'themar Theron
turnin The First to Fall##53735
accept Lament of the Highborne##53736
step
Follow the road |goto 24.94,56.44 < 30 |only if walking
Follow the road up |goto 18.68,58.41 < 30 |only if walking
kill 6 Tormented Ranger##148014 |q 53736/1 |goto 12.43,56.92
step
click Lamp
|tip At the top of the structure.
Light the Second Flame |q 53736/2 |goto 12.40,56.86
step
_Next to you:_
Watch the dialogue
talk Lor'themar Theron
turnin Lament of the Highborne##53736
accept The Day Hope Died##53737
step
Shed Light at Sylvanas' Fall |q 53737/1 |goto Eversong Woods/0 51.21,69.28
|tip Use the "Light the Way" ability.
|tip It appears as a button on the screen.
step
clicknpc Silvermoon Ballista##147006
Man a Silvermoon Ballista |q 53737/2 |goto 51.44,69.04
step
Kill enemies around this area
|tip Use the ability on your action bar.
Kill #50# Undead |q 53737/3 |goto 51.44,68.88
step
_Next to you:_
talk Lor'themar Theron
turnin The Day Hope Died##53737
accept Defense of Quel'Danas##53738
step
Follow the path up |goto 48.52,71.91 < 20 |only if walking
talk Skymaster Brightdawn##44036
Tell him _"I need a direct flight to Quel'danas."_
Talk to Skymaster Brightdawn |q 53738/1 |goto 43.94,69.98
step
Arrive at the Isle of Quel'danas |goto Isle of Quel'Danas/0 48.37,25.07 < 20 |c |q 53738 |notravel
step
talk Lady Liadrin##145793
turnin Defense of Quel'Danas##53738 |goto 48.36,35.98
accept A People Shattered##53725 |goto 48.36,35.98
step
click Lamp
Light the Final Flame |q 53725/1 |goto 48.56,37.15
step
Watch the dialogue
talk Lady Liadrin##145793
|tip She walks around this area.
turnin A People Shattered##53725 |goto 48.36,36.00
accept The Setting Sun##53853 |goto 48.36,36.00
step
Follow the path |goto 43.45,31.77 < 30 |only if walking
Continue following the path |goto 37.24,39.21 < 30 |only if walking
Continue following the path |goto 37.42,51.94 < 20 |only if walking
Continue following the path |goto 46.65,72.96 < 30 |only if walking
Continue following the path |goto 50.20,84.61 < 30 |only if walking
Shed Light on Anasterian's Fall |q 53853/1 |goto 53.48,87.16
|tip Use the "Light the Way" ability.
|tip It appears as a button on the screen.
step
Watch the dialogue
kill Blightgut##145811 |q 53853/2 |goto 53.20,86.22
step
Follow the path |goto 50.20,84.61 < 30 |only if walking
Continue following the path |goto 46.65,72.96 < 30 |only if walking
Continue following the path |goto 37.42,51.94 < 30 |only if walking
Continue following the path |goto 37.24,39.21 < 30 |only if walking
Continue following the path |goto 43.45,31.77 < 30 |only if walking
talk Lady Liadrin##145793
turnin The Setting Sun##53853 |goto 48.36,36.00
accept The Fall of the Sunwell##54096 |goto 48.36,36.00
step
Cross the bridge |goto 47.67,38.40 < 20 |only if walking
Begin the "Fall of the Sunwell" Scenario |scenariostart |goto 44.27,45.67 |q 54096
step
Shine the Lantern |scenariogoal 1/43404 |goto Shrine of the Eclipse/1 46.63,23.82 |q 54096
|tip Use the "Light the Way" ability.
|tip It appears as a button on the screen.
step
Kill the enemies that attack in waves
Hold the Line Against the Scourge |scenariostage 2 |goto 46.63,23.82 |q 54096
step
Watch the dialogue
kill Seer Drannix##146443
Defeat Seer Drannix |scenariogoal 3/43406 |goto 46.53,23.99 |q 54096
step
Watch the dialogue
|tip Use the "For Anasterian!" ability.
|tip It appears as a button on the screen.
Defeat Arthas |scenariogoal 4/43407 |goto 50.19,17.54 |q 54096
step
Shine the Lantern on Kael'thas' Decision |scenariogoal 5/43534 |goto 48.34,20.53 |q 54096
|tip Use the "Light the Way" ability.
|tip It appears as a button on the screen.
step
Follow the path down |goto 27.78,61.96 < 20 |walk
Continue following the path |goto 45.27,87.35 < 20 |walk
Watch the dialolgue
Escort Prince Kael'thas to the Sunwell |scenariogoal 6/43408 |goto 50.49,68.47 |q 54096
|tip Follow Kael'thas Sunstrider as he walks.
|tip Kill any enemies that attack you.
step
Watch the dialogue
Kill enemies around this area
Protect the Magisters |scenarioend |goto 50.49,68.47 |q 54096
step
Watch the dialogue
click Portal to Silvermoon City |goto 55.44,72.22
Return to Silvermoon City |goto Silvermoon City/0 72.15,42.75 < 20 |noway |c |q 54096
step
Run up the ramp |goto Silvermoon City/0 63.82,32.43 < 20 |only if walking
talk Lor'themar Theron##16802
turnin The Fall of the Sunwell##54096 |goto Silvermoon City/0 60.38,28.10
step
_Congratulations!_
You unlocked the Blood Elf Heritage Armor.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Heritage Armor\\Goblin Heritage Armor",{
author="support@zygorguides.com",
description="This guide will walk you through completing the questline to unlock the Goblin Heritage Armor.",
condition_valid=function() return raceclass('Goblin') end,
condition_valid_msg="You must be a Goblin to complete this guide!",
condition_end=function() return completedq(57080) end,
startlevel=50,
},[[
step
Reach Level 50 |ding 50
|tip Use various leveling guides to accomplish this.
step
Reach Exalted with the "Bilgewater Cartel" |condition rep("Bilgewater Cartel") == Exalted
|tip Use the "Bilgewater Cartel" reputation guide to accomplish this.
step
talk Izzy##156358
accept Old Friends, New Opportunities##57043 |goto Orgrimmar/1 39.49,80.28
step
talk Sassy Hardwrench##156396
turnin Old Friends, New Opportunities##57043 |goto The Cape of Stranglethorn/0 34.61,28.58
accept A Special Delivery##57045 |goto 34.61,28.58
step
click Goblin Flying Machine##156405
Travel to Crapopolis |q 57045/1 |goto 32.84,26.15
step
Arrive in Crapopolis |goto Crapopolis/0 50.95,92.92 < 500 |c |noway |q 57045
step
Follow the path |goto 54.63,69.46 < 30 |only if walking
talk Hobart Grapplehammer##156520
turnin A Special Delivery##57045 |goto 53.58,61.94
accept A Simple Experiment##57047 |goto 53.58,61.94
step
Watch the dialogue
Listen to Hobart Grapplehammer |q 57047/1 |goto 53.05,58.91
step
talk Hobart Grapplehammer##156520
|tip Inside the building.
Tell him _"Let's begin the experiment."_
Speak with Hobart Grapplehammer |q 57047/2 |goto 52.99,58.59
step
click Freezing Console
|tip Inside the building.
Watch the dialogue
Activate the Freezing Console |q 57047/3 |goto 52.50,60.43
step
click Flame Console
|tip Inside the building.
Watch the dialogue
Activate the Flame Console |q 57047/4 |goto 53.27,60.12
step
click Explosive Console
|tip Inside the building.
Watch the dialogue
Activate the Explosive Console |q 57047/5 |goto 54.04,59.85
step
talk Hobart Grapplehammer##156520
|tip Inside the building.
turnin A Simple Experiment##57047 |goto 52.99,58.59
accept Shopping For Parts##57048 |goto 52.99,58.59
step
talk Crank Greasefuse##156542
turnin Shopping For Parts##57048 |goto 56.08,78.20
accept Debt Collection!##57051 |goto 56.08,78.20
step
talk Shady Thug##156881
Tell them _"Crank Greasefuse sent me. It's time to pay up!"_
|tip Some of them may attack you.
collect 8 Unpaid Debt##171089 |q 57051/1 |goto 54.68,71.88
step
talk Crank Greasefuse##156542
turnin Debt Collection!##57051 |goto 56.08,78.20
accept I've Got What You Need##57052 |goto 56.08,78.20
step
Follow the path |goto 54.28,66.30 < 20 |only if walking
talk Hobart Grapplehammer##156520
|tip Inside the building.
turnin I've Got What You Need##57052 |goto 58.74,60.84
accept Blunt Force Testing##57053 |goto 58.74,60.84
step
use the X-52 Personnel Armor##171114
Equip the X-52 Body Armor |q 57053/1 |goto 53.25,60.14
step
click Test Console
|tip Inside the building.
Activate the Mechanized Lab Assistant |q 57053/2 |goto 53.27,60.13
step
kill Mechanized Lab Assistant##156908 |q 57053/3 |goto 53.13,59.62
|tip Inside the building.
|tip Use the X-52 Personnel Armor button on-screen to gain temporary shielding.
step
talk Hobart Grapplehammer##156520
|tip Inside the building.
turnin Blunt Force Testing##57053 |goto 58.74,60.84
accept Fun With Landmines##57058 |goto 58.74,60.84
step
use X-52 Personnel Armor##174059
Equip the X-52 Personnel Armor |q 57058/1 |goto 58.73,60.85
step
Follow the path up |goto 49.94,53.64 < 20 |only if walking
click Refreshing Coconut Beverage
Get a Refreshing Coconut Beverage |q 57058/2 |goto 45.99,48.22
step
Follow the path |goto 56.18,58.94 < 20 |only if walking
talk Hobart Grapplehammer##156520
|tip Upstairs inside the building.
turnin Fun With Landmines##57058 |goto 52.09,59.36
accept Let's Rumble!##57059 |goto 52.09,59.36
step
kill 8 Hired Scoundrel##157433 |q 57059/1 |goto 52.09,59.36
|tip Inside the building.
step
talk Trade Prince Gallywix##157060
|tip Inside the building.
Tell him _"I think it's time for you to leave, Gallywix."_
Speak with Gallywix |q 57059/2 |goto 53.30,60.27
step
talk Hobart Grapplehammer##156520
|tip Upstairs inside the building.
turnin Let's Rumble!##57059 |goto 52.09,59.36
accept Buyers Wanted!##57077 |goto 52.09,59.36
step
Follow the path |goto 54.57,70.91 < 30 |only if walking
Cross the bridge |goto 51.67,86.80 < 20 |only if walking
click Goblin Flying Machine
Take the Flying Machine |q 57077/1 |goto 50.74,94.58
step
talk Sassy Hardwrench##156396
turnin Buyers Wanted!##57077 |goto The Cape of Stranglethorn/0 34.61,28.58
accept The VIP List##57078 |goto 34.61,28.58
step
talk Marin Noggenfogger##38532
Choose _"Deliver Sassy's Invitation to Noggenfogger."_
Invite Noggenfogger |q 57078/1 |goto Tanaris/0 51.20,29.97
step
Enter the building |goto Thousand Needles/0 76.01,75.24 < 10 |walk
talk Pozzik##40028
|tip Inside the building.
Choose _"Deliver Sassy's Invitation to Pozzik."_
Invite Pozzik |q 57078/2 |goto 75.93,74.71
step
talk Gazlowe##3391
|tip Inside the building.
Choose _"Deliver Sassy's Invitation to Gazlowe."_
Invite Gazlowe |q 57078/3 |goto Northern Barrens/0 68.41,69.06
step
talk Sassy Hardwrench##156396
turnin The VIP List##57078 |goto The Cape of Stranglethorn/0 34.61,28.58
accept Beat The Crapopolis Outta Him!##57079 |goto 34.61,28.58
step
click Goblin Flying Machine
Enter the Scenario |scenariostart |goto 32.82,26.14 |q 57079
step
talk Gazlowe##157459
Ask him _"What's the situation here?"_
Speak with Gazlowe at the dock |scenariogoal 1/46477 |goto Crapopolis Scenario/0 52.31,84.73 |q 57079
step
Follow the path |goto 54.80,71.29 < 20 |only if walking
kill Dax Blitzblaster##157455
|tip Inside the building.
Rescue Hobart Grapplehammer |scenariogoal 2/46478 |goto 53.09,59.33 |q 57079
step
click Grapplehammer's Chest
|tip Inside the building.
Equip the X-52 Body Armor |scenariogoal 3/46479 |goto 52.57,58.88 |q 57079
step
Follow the path up |goto 50.11,54.37 < 30 |only if walking
kill Trade Prince Gallywix##157456 |scenariogoal 4/46480 |goto 46.31,48.18
|tip Lead Gallywix over crawler mines stuck in the ground.
|tip Use the special action button on-screen to gain temporary armor.
|tip When Gallywix reaches zero health, use the button that appears on-screen.
step
talk Hobart Grapplehammer##157491
turnin Beat The Crapopolis Outta Him!##57079 |goto 47.86,50.57
accept A Fitting Reward##57080 |goto 47.86,50.57
step
talk Hobart Grapplehammer##157491
turnin A Fitting Reward##57080 |goto 47.86,50.57
step
_Congratulations!_
You unlocked the Goblin Heritage Armor.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Heritage Armor\\Tauren Heritage Armor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the questline to unlock the Tauren Heritage Armor.",
condition_valid=function() return raceclass('Tauren') end,
condition_valid_msg="You must be a Tauren to complete this guide!",
condition_end=function() return completedq(54765) end,
startlevel=50,
},[[
step
Become Exalted with Thunder Bluff |condition rep('Thunder Bluff') == Exalted
|tip Use the "Thunder Bluff" reputation guide to accomplish this.
step
Reach Level 50 |ding 50
step
Complete the "Stay of Execution" Scenario |condition completedq(55779)
|tip Use the "War Campaign" guide to accomplish this.
step
talk Spiritwalker Isahi##149088
accept When Spirits Whisper##54759 |goto Orgrimmar/1 39.13,78.99
step
talk Baine Bloodhoof##36648
|tip Inside the building.
turnin When Spirits Whisper##54759 |goto Thunder Bluff/0 60.26,51.67
accept The Spiritwalkers##54760 |goto 60.26,51.67
step
talk Spiritwalker Ussoh##149084
turnin The Spiritwalkers##54760 |goto Camp Narache/0 12.17,31.27
accept Spirit Guide##54761 |goto 12.17,31.27
step
click Spiritwalker's Incense
Watch the dialogue
Light the Spiritwalker's Incense |q 54761/1 |goto 12.56,31.28
step
talk Spiritwalker Ussoh##149084
turnin Spirit Guide##54761 |goto 12.17,31.27
accept A Small Retreat##54762 |goto 12.17,31.27
step
talk Spiritwalker Ussoh##149529
|tip Inside the building.
turnin A Small Retreat##54762 |goto Stonetalon Mountains/0 49.17,60.92
accept Crossing Over##54763 |goto 49.17,60.92
step
use the Spiritwalker's Hallowed Vessel##166899
Enter the Spirit Realm |q 54763/1 |goto 49.17,60.92
step
Follow the path |goto 49.64,61.59 < 10 |only if walking
Cross the bridge |goto 49.32,62.96 < 10 |only if walking
Continue up the path |goto 48.14,63.11 < 10 |only if walking
Continue up the path |goto 48.14,64.63 < 10 |only if walking
Continue up the path |goto 48.95,65.39 < 10 |only if walking
kill Necrofiend##149452+
Watch the dialogue
Follow the Spirit Guide |q 54763/2 |goto 50.05,65.69
step
talk Spiritwalker Ussoh##149529
|tip Inside the building.
turnin Crossing Over##54763 |goto 49.17,60.92
accept Storm in Bloodhoof##54764 |goto 49.17,60.92
step
Travel to Bloodhoof Village |q 54764/1 |goto Mulgore/0 47.40,58.65
step
Kill enemies around this area
clicknpc Bloodhoof Villager##149614+
|tip They look like frightened Tauren villagers around this area.
clicknpc Trapped Kodo##150225+
|tip They look like subdued kodo around this area.
Save the People of Bloodhoof Village |q 54764/2 |goto 47.40,58.65
step
talk Baine Bloodhoof##149528
turnin Storm in Bloodhoof##54764 |goto Thunder Bluff/0 58.25,51.80
accept Answer the Call##54766 |goto Thunder Bluff/0 58.25,51.80
step
talk Baine Bloodhoof##149528 |goto 58.17,51.77
Tell him _"Attack!"_
kill Malevolent Spirit##149547 |q 54766/1 |goto 55.70,51.52
|tip Run into the glowing yellow patches on the ground for a damage boost.
step
Watch the dialogue
talk Baine Bloodhoof##36648
|tip Inside the building.
turnin Answer the Call##54766 |goto 60.26,51.67
accept Thank Your Guide##54765 |goto 60.26,51.67
step
click Spirit Offering
Watch the dialogue
Present the Offering |q 54765/1 |goto Mulgore/0 33.96,38.62
step
click Ceremonial Tauren Garb
turnin Thank Your Guide##54765 |goto 34.00,38.65
step
_Congratulations!_
You unlocked the Tauren Heritage Armor.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Xal'atath's Gambit",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the \"Xal'atath's Gambit\" questline "..
"in preparation for Crucible of the Storms.",
condition_suggested=function() return level >= 50 and not completedq(53766) end,
condition_visible=function() return not raceclass('Priest') end,
condition_end=function() return completedq(53766) end,
},[[
step
collect 1 Azsharan Medallion##165668 |q 54172 |future
|tip This drops from Naga invaders during the "Naga Attack!" world quest.
|tip Locate this quest and use the world quest guides to complete it.
step
accept The Azsharan Medallion##54172
step
talk Collector Kojo##134345
turnin The Azsharan Medallion##54172 |goto Zuldazar/0 71.50,30.35
accept Orders from Azshara##54174 |goto 71.50,30.35
step
click Ominous Whispering Knife##307091
collect 1 Xal'atath, Blade of the Black Empire##164761 |q 54174/1 |goto 71.44,30.27
step
Cross the water |goto 79.08,39.81 < 20 |only if walking
Find the Makeshift Altar |q 54174/2 |goto 78.06,36.72
step
click Xal'atath, Blade of the Black Empire
Place Xal'atath |q 54174/3 |goto 78.06,36.72
step
click Xal'atath, Blade of the Black Empire
turnin Orders from Azshara##54174 |goto 78.06,36.72
accept Every Little Death Helps##54117 |goto 78.06,36.72
step
Kill Darktide enemies around this area
|tip Kill them until the "Souls Gathered" bar that appears on-screen reaches 100.
Feed Xal'atath |q 54117/1 |goto 78.50,38.14
step
click Xal'atath, Blade of the Black Empire
turnin Every Little Death Helps##54117 |goto 78.06,36.72
accept Unintended Consequences##53760 |goto 78.06,36.72
step
Follow the path up |goto Drustvar/0 20.63,46.47 < 20 |only if walking
Follow the road up |goto 22.72,44.88 < 20 |only if walking
Follow the path down |goto 21.17,37.65 < 20 |only if walking
Find the Void Stone |q 53760/1 |goto 20.14,36.69
step
kill Inanis##145052 |q 53760/2 |goto 20.14,35.76
step
click Void Stone##309505
collect 1 Void Stone##164911 |q 53760/3 |goto 20.12,35.84
step
Activate the Void Stone |q 53760/4 |goto 20.12,35.84
|tip Click the extra action button that appears on-screen.
step
Watch the dialogue
talk Xal'atath##144773
turnin Unintended Consequences##53760 |goto 19.91,36.25
accept The Pirate's Treasure##53761 |goto 19.91,36.25
step
Cross the bridge |goto Tiragarde Sound/0 75.57,82.54 < 15 |only if walking
Follow the path |goto 75.44,78.18 < 20 |only if walking
Find the Pirate's Den |q 53761/1 |goto 74.87,78.81
step
kill Lieutenant Elsbeth Wavecutter##145230
collect 1 Skeleton Key##164976 |q 53761/2 |goto 74.87,78.81
step
click Ocean Chest
collect Trident of Deep Ocean##164763 |q 53761/3 |goto 74.90,78.91
step
talk Xal'atath##145396
turnin The Pirate's Treasure##53761 |goto 75.04,77.67
accept The Tempest Crown##53762 |goto 75.04,77.67
step
Cross the bridge |goto Vol'dun/0 61.04,21.03 < 20 |only if walking
Follow the path up |goto 59.24,19.61 < 20 |only if walking
Continue following the path |goto 55.52,14.86 < 20 |only if walking
Follow the path down |goto 54.13,12.57 < 15 |only if walking
Enter the cave |goto 51.81,13.31 < 15 |walk
Find Toatana's Cave |q 53762/1 |goto 52.07,14.09
step
kill Toatana##147493 |q 53762/2 |goto 53.46,13.11
|tip Inside the cave.
step
collect 1 Tempest Caller##165018 |q 53762/3 |goto 53.46,13.11
|tip Loot the corpse.
step
talk Xal'atath##146384
|tip Xal'atath can re-appear anywhere in the cave.
turnin The Tempest Crown##53762 |goto 52.49,14.22
accept Twist the Knife##53763 |goto 52.49,14.22
step
Jump down here |goto Stormsong Valley/0 77.35,63.23 < 20 |only if walking
Cross the water |goto 77.20,61.35 < 20 |only if walking
Follow the path up |goto 81.07,56.38 < 20 |only if walking
Continue following the path |goto 82.63,52.69 < 20 |only if walking
Find Xal'atath |q 53763/1 |goto 83.91,47.60
step
Enter the Crucible of Storms |q 53763/2 |goto 83.90,46.91
|tip Step through the portal in front of you.
step
click Void Stone
Place the Void Stone |q 53763/3 |goto Crucible of Storms/0 27.98,54.59
step
click Trident of Deep Ocean
Place the Trident of Deep Ocean |q 53763/4 |goto 27.96,53.36
step
click Tempest Caller
Place the Tempest Caller |q 53763/5 |goto 27.85,51.89
step
Watch the dialogue
Receive the Gift |q 53763/6
step
talk Princess Talanji##133050
|tip Inside the building.
turnin Twist the Knife##53763 |goto Dazar'alor/2 41.16,66.82
accept His Eye Upon You##53766 |goto 41.16,66.82
step
Run up the stairs |goto Dazar'alor/0 51.76,18.99 < 20 |only if walking
Run up the stairs |goto 42.64,22.72 < 20 |only if walking
Run down the stairs |goto 47.35,17.83 < 20 |only if walking
Enter the building |goto 48.31,13.98 < 15 |walk
talk Nailok##146776
|tip Inside the building.
Tell him _"Please remove this curse."_
|tip This will permanantly remove the "Gift of N'Zoth" buff.
Meet Nailok |q 53766/1 |goto 45.30,14.02
step
Watch the dialogue
Remove the Curse |q 53766/2 |goto 45.30,14.02
step
talk Nailok##146776
turnin His Eye Upon You##53766 |goto 45.30,14.02
step
talk Princess Talanji##133050
|tip Inside the building.
accept Crucible of Storms: Relics of Shadow##54439 |goto Dazar'alor/2 41.16,66.82
step
kill Uu'nat##145371 |q 54439/1
|tip Inside the "Crucible of Storms" raid.
step
talk Brother Pike##146902
|tip Inside the building.
turnin Crucible of Storms: Relics of Shadow##54439 |goto 41.16,66.82
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Xal'atath's Gambit - Priest",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the \"Xal'atath's Gambit\" questline "..
"in preparation for Crucible of the Storms as a Priest.",
condition_suggested=function() return level >= 50 and not completedq(53766) and raceclass('Priest') end,
condition_visible=function() return raceclass('Priest') end,
condition_end=function() return completedq(53766) end,
},[[
step
collect 1 Azsharan Medallion##165668 |q 54172 |future
|tip This drops from Naga invaders during the "Naga Attack!" world quest.
|tip Locate this quest and use the world quest guides to complete it.
step
accept The Azsharan Medallion##54172
step
talk Collector Kojo##134345
turnin The Azsharan Medallion##54172 |goto Zuldazar/0 71.50,30.35
accept Orders from Azshara##54433 |goto 71.50,30.35
step
click Ominous Whispering Knife##307091
collect 1 Xal'atath, Blade of the Black Empire##164761 |q 54433/1 |goto 71.44,30.27
step
Cross the water |goto 79.08,39.81 < 20 |only if walking
Find the Makeshift Altar |q 54433/2 |goto 78.06,36.72
step
click Xal'atath, Blade of the Black Empire
Place Xal'atath |q 54433/3 |goto 78.06,36.72
step
click Xal'atath, Blade of the Black Empire
turnin Orders from Azshara##54433 |goto 78.06,36.72
accept Every Little Death Helps##54118 |goto 78.06,36.72
step
Kill Darktide enemies around this area
|tip Kill them until the "Souls Gathered" bar that appears on-screen reaches 100.
Feed Xal'atath |q 54118/1 |goto 78.50,38.14
step
click Xal'atath, Blade of the Black Empire
turnin Every Little Death Helps##54118 |goto 78.06,36.72
accept Unintended Consequences##54058 |goto 78.06,36.72
step
Follow the path up |goto Drustvar/0 20.63,46.47 < 20 |only if walking
Follow the road up |goto 22.72,44.88 < 20 |only if walking
Follow the path down |goto 21.17,37.65 < 20 |only if walking
Find the Void Stone |q 54058/1 |goto 20.14,36.69
step
kill Inanis##145052 |q 54058/2 |goto 20.14,35.76
step
click Void Stone##309505
collect 1 Void Stone##164911 |q 54058/3 |goto 20.12,35.84
step
Activate the Void Stone |q 54058/4 |goto 20.12,35.84
|tip Click the extra action button that appears on-screen.
step
Watch the dialogue
talk Xal'atath##144773
turnin Unintended Consequences##54058 |goto 19.91,36.25
accept The Pirate's Treasure##53761 |goto 19.91,36.25
step
Cross the bridge |goto Tiragarde Sound/0 75.57,82.54 < 15 |only if walking
Follow the path |goto 75.44,78.18 < 20 |only if walking
Find the Pirate's Den |q 53761/1 |goto 74.87,78.81
step
kill Lieutenant Elsbeth Wavecutter##145230
collect 1 Skeleton Key##164976 |q 53761/2 |goto 74.87,78.81
step
click Ocean Chest
collect Trident of Deep Ocean##164763 |q 53761/3 |goto 74.90,78.91
step
talk Xal'atath##145396
turnin The Pirate's Treasure##53761 |goto 75.04,77.67
accept The Tempest Crown##53762 |goto 75.04,77.67
step
Cross the bridge |goto Vol'dun/0 61.04,21.03 < 20 |only if walking
Follow the path up |goto 59.24,19.61 < 20 |only if walking
Continue following the path |goto 55.52,14.86 < 20 |only if walking
Follow the path down |goto 54.13,12.57 < 15 |only if walking
Enter the cave |goto 51.81,13.31 < 15 |walk
Find Toatana's Cave |q 53762/1 |goto 52.07,14.09
step
kill Toatana##147493 |q 53762/2 |goto 53.46,13.11
|tip Inside the cave.
step
collect 1 Tempest Caller##165018 |q 53762/3 |goto 53.46,13.11
|tip Loot the corpse.
step
talk Xal'atath##146384
|tip Xal'atath can re-appear anywhere in the cave.
turnin The Tempest Crown##53762 |goto 53.02,13.66
accept Twist the Knife##53763 |goto 53.02,13.66
step
Jump down here |goto Stormsong Valley/0 77.35,63.23 < 20 |only if walking
Cross the water |goto 77.20,61.35 < 20 |only if walking
Follow the path up |goto 81.07,56.38 < 20 |only if walking
Continue following the path |goto 82.63,52.69 < 20 |only if walking
Xal'atath found |q 53763/1 |goto 83.91,47.60
step
Enter the Crucible of Storms |q 53763/2 |goto 83.90,46.91
|tip Step through the portal in front of you.
step
click Void Stone
Place the Void Stone |q 53763/3 |goto Crucible of Storms/0 27.98,54.59
step
click Trident of Deep Ocean
Place the Trident of Deep Ocean |q 53763/4 |goto 27.96,53.36
step
click Tempest Caller
Place the Tempest Caller |q 53763/5 |goto 27.85,51.89
step
Watch the dialogue
Receive the Gift |q 53763/6
step
talk Princess Talanji##133050
|tip Inside the building.
turnin Twist the Knife##53763 |goto Dazar'alor/2 41.16,66.82
accept His Eye Upon You##53766 |goto 41.16,66.82
step
Run up the stairs |goto Dazar'alor/0 51.76,18.99 < 20 |only if walking
Run up the stairs |goto 42.64,22.72 < 20 |only if walking
Run down the stairs |goto 47.35,17.83 < 20 |only if walking
Enter the building |goto 48.31,13.98 < 15 |walk
talk Nailok##146776
|tip Inside the building.
Tell him _"Please remove this curse."_
|tip This will permanantly remove the "Gift of N'Zoth" buff.
Meet Nailok |q 53766/1 |goto 45.30,14.02
step
Watch the dialogue
Remove the Curse |q 53766/2 |goto 45.30,14.02
step
talk Nailok##146776
turnin His Eye Upon You##53766 |goto 45.30,14.02
step
talk Princess Talanji##133050
|tip Inside the building.
accept Crucible of Storms: Relics of Shadow##54439 |goto Dazar'alor/2 41.16,66.82
step
kill Uu'nat##145371 |q 54439/1
|tip Inside the "Crucible of Storms" raid.
step
talk Brother Pike##146902
|tip Inside the building.
turnin Crucible of Storms: Relics of Shadow##54439 |goto 41.16,66.82
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Hati's Sacrifice",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the \"Hati's Sacrifice\" questline. "..
"This will allow you to tame different Hati skins.",
condition_suggested=function() return level >= 50 and not completedq(55195) and raceclass('Hunter') end,
condition_visible=function() return raceclass('Hunter') end,
condition_end=function() return completedq(55195) end,
},[[
step
talk Image of Mimiron##152002
accept Spark of Genius##54913 |goto Dazar'alor/0 47.83,89.37
step
Enter the building |goto The Storm Peaks/0 37.72,45.22 < 15 |walk
talk Image of Mimiron##149736
|tip Inside the building.
turnin Spark of Genius##54913 |goto 37.53,46.52
accept Telemetry Online##54915 |goto 37.53,46.52
step
Kill enemies that attack in waves
|tip Defend Mimiron until the end.
Assist Mimiron |q 54915/1 |goto 37.50,46.73
step
talk Image of Mimiron##149736
|tip Inside the building.
turnin Telemetry Online##54915 |goto 37.53,46.52
accept The Huntsman's Creed##54916 |goto 37.53,46.52
step
talk Grif Wildheart##149870
|tip At the very top of the large spire.
Tell him _"I'm ready."_
Speak to Grif Wildheart at the Temple of Storms |q 54916/1 |goto 33.63,58.57
step
kill Essence of Hati##149831
use the Thunderspark##166895
|tip Use it on Essence of Hati when it is around 20% health.
|tip Interrupt "Titan Spark" whenever possible.
|tip Use "Concussive Shot" and run away during "Essence of Rage."
|tip "Electric Wave" will deal damage in a straight line.
Absorb Hati's Essence |q 54916/2 |goto 33.39,58.32
step
Watch the dialogue
Rendezvous with Thorim |q 54916/3 |goto 33.39,58.32
step
talk Grif Wildheart##149870
|tip At the very top of the large spire.
turnin The Huntsman's Creed##54916 |goto 33.63,58.57
accept Paid in Blood##54917 |goto 33.63,58.57
step
talk Zidormi##128607
Ask her _"Can you return me to the present time?"_
Travel to the Present |condition not ZGV.InPhase('Old Silithus') |goto Silithus/0 78.93,21.97 |q 54917
step
talk Grif Wildheart##149896
Tell him _"I'm ready."_
Speak to Grif Wildheart in Silithus |q 54917/1 |goto 38.71,72.20
step
kill Essence of Hati##149903
use the Thunderspark##167061
|tip Use it on Essence of Hati when it is around 20% health.
|tip Interrupt "Titan Spark" whenever possible.
|tip When rooted by "lightning Tether", use "Disengage" to free yourself and run from Encroaching Sparks.
Absorb Hati's Essence |q 54917/2 |goto 39.09,71.26
step
Watch the dialogue
Rendezvous with Mimiron |q 54917/3 |goto 39.30,71.71
step
talk Image of Mimiron##150391
turnin Paid in Blood##54917 |goto 39.30,71.71
accept Spark of Imagination##54918 |goto 39.30,71.71
step
click Teleportation Pad
Use the Teleportation Pad |q 54918/1 |goto The Storm Peaks/0 41.38,18.23
step
Enter Ulduar |goto Ulduar L/2 43.27,78.68 |c |noway |q 54918
step
Run down the stairs |goto 43.65,60.02 < 20 |walk
Continue down the stairs |goto 43.65,49.59 < 20 |walk
talk Mimiron##151061
turnin Spark of Imagination##54918 |goto 43.29,38.79
accept Bonds of Thunder##54919 |goto 43.29,38.79
step
click Console
|tip Step into the circle directly in front of you.
Watch the dialogue
Reform Hati |q 54919/1 |goto 43.65,39.12
step
talk Mimiron##151061
turnin Bonds of Thunder##54919 |goto 43.30,38.81
accept Homeward Bound##54920 |goto 43.30,38.81
step
click Teleportation Pad |goto 42.68,38.66
Leave Ulduar |goto The Storm Peaks/0 41.70,18.23 |c |noway |q 54920
step
talk Thorim##29445
|tip At the very top of the large spire.
turnin Homeward Bound##54920 |goto 33.42,57.93
accept Reverberation##55195 |goto 33.42,57.93
step
click Thunderspark
Place the Thunderspark |q 55195/1 |goto 33.39,58.32
step
talk Thunderspark##151131
|tip Choose the dialogue that corresponds to the Hati skin you wish to tame.
|tip You can tame all of them.
Call the Essence of Hati |q 55195/2 |goto 33.39,58.32
step
talk Thorim##29445
|tip At the very top of the large spire.
turnin Reverberation##55195 |goto 33.42,57.93
step
_Congratulations!_
You Completed the "Hati's Sacrifice" Questline. |goto 33.39,58.32
|tip You can continue to summon and tame other Hati skins.
Click here for additional Hati skins |confirm
step
talk Thunderspark##151131
|tip Choose the dialogue that corresponds to the Hati skin you wish to tame.
|tip You can tame all of them.
Call the Essence of Hati |goto The Storm Peaks/0 33.39,58.32
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Before the Storm Questline",{
author="support@zygorguides.com",
description="\nThis questline will reveal the fate of two characters from the \"Before the Storm\" book.",
condition_suggested=function() return level >= 50 and not completedq(53820) end,
condition_end=function() return completedq(53820) end,
},[[
step
talk Trade Prince Gallywix##136683
|tip Inside the ship on the middle deck.
accept Whatever Happened to Grizzek Fizzwrench?##53817 |goto Zuldazar/0 58.45,62.64
step
talk Gazlowe##151138
Ask him _"Yeah? What kind of deal?"_
Speak with Gazlowe |q 53817/1 |goto Dazar'alor/0 50.33,99.02
step
talk Feathers##151132
turnin Whatever Happened to Grizzek Fizzwrench?##53817 |goto Tanaris/0 62.18,45.34
accept Some Reassembly Required##53816 |goto 62.18,45.34
step
Kill Venture enemies around this area
collect 100 Mechanical Parts##167232 |q 53816/1 |goto 62.63,44.79
step
talk Feathers##151132
turnin Some Reassembly Required##53816 |goto 62.18,45.34
accept Re-parrot##53818 |goto 62.18,45.34
step
talk Feathers##151132
Choose _"<Begin debugging.>"_
Begin Debugging |invehicle |q 53818 |goto 62.18,45.34
step
Debug Feathers' Programming |q 53818/1 |goto 62.18,45.34
|tip Follow the on-screen text instructions, using the three abilities on your action bar.
step
Watch the dialogue
talk Feathers##151132
turnin Re-parrot##53818 |goto 62.18,45.34
accept Return to the Nest##53819 |goto 62.18,45.34
step
talk Feathers##151132
Choose _"<Activate the recall subroutine.>"_
Activate the Recall Subroutine |q 53819/1 |goto 62.18,45.34
step
Watch the dialogue
Ride with Feathers |q 53819/2 |goto 27.16,59.91
step
talk Sapphronetta Flivvers##151129
turnin Return to the Nest##53819 |goto 27.13,60.07
step
talk Grizzek Fizzwrench##151130
accept He's Dead, Jastor##53821 |goto 27.16,60.08
step
talk Trade Prince Gallywix##136683
|tip Inside the ship on the middle deck.
Ask him _"He's dead. Where's my payment?"_
Speak with Gallywix |q 53821/1 |goto Zuldazar/0 58.45,62.64
step
talk Gazlowe##137313
turnin He's Dead, Jastor##53821 |goto Dazar'alor/0 44.77,89.70
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Horrific Vision of Stormwind",{
author="support@zygorguides.com",
description="This guide will walk you through completing the \"Horrific Vision of Stormwind\" scenario.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
condition_suggested=function() return level >= 50 and haveq(57374) or completedq(57374) end,
condition_valid=function() return haveq(57374) or completedq(57374) end,
condition_valid_msg="You must first complete the quest \"Into the Darkest Depths\" in the \"Magni's Plan\" leveling guide.",
},[[
step
label "Begin_Vision"
collect 1 Vessel of Horrific Visions##173363
|tip These can be obtained weekly from Black Empire assaults.
|tip They can also be purchased from Wrathion in the Chamber of Heart for 10,000 Coalescing Visions.
step
clicknpc Tenebrous Gateway##161897
Enter the Horrific Vision of Stormwind |scenariostart |goto Chamber of Heart/0 50.18,73.06
step
clicknpc Altar of the Pained##161000
turnin Mask of the Pained##58317 |goto Stormwind Vision/0 52.73,52.41
|only if readyq(58317)
step
clicknpc Altar of the Burned Bridge##160967
turnin Mask of the Burned Bridge##58314 |goto 52.35,50.71
|only if readyq(58314)
step
clicknpc Altar of the Daredevil##160998
turnin Mask of the Daredevil##58297 |goto 54.18,50.70
|only if readyq(58297)
step
clicknpc Altar of the Dark Imagination##160961
turnin Mask of the Dark Imagination##58316 |goto 53.82,52.40
|only if readyq(58316)
step
clicknpc Altar of the Long Night##160999
turnin Mask of the Long Night##58318 |goto 53.26,49.70
|only if readyq(58318)
stickystart "Scenario_Information"
step
talk Image of Wrathion##155604
Tell him _"I am ready to enter the vision."_
Speak with the Image of Wrathion |scenariogoal 1/44998 |goto 53.28,51.18
step
Follow the path |goto 53.04,55.48 < 20 |only if walking
Enter the tunnel |goto 58.37,51.30 < 10 |only if walking
Cross the bridge |goto 59.78,46.34 < 10 |only if walking
accept Dwarven District##57153 |goto 61.53,43.93
|tip You will accept this quest automatically.
step
Kill the three Gnomes
Defeat the Brainwashed Gnomes |q 57153/1 |goto 61.53,43.65 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
Follow the path |goto 59.52,40.95 < 10 |only if walking
|tip Click the Vision Barrier to pass.
click Bomb Location
Place the Explosives |q 57153/2 |goto 61.61,38.44 |count 1 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Bomb Location
Place the Explosives |q 57153/2 |goto 61.15,33.43 |count 2 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Bomb Location
Place the Explosives |q 57153/2 |goto 61.70,30.65 |count 3 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Bomb Location
Place the Explosives |q 57153/2 |goto 64.12,31.33 |count 4 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Bomb Location
Place the Explosives |q 57153/2 |goto 65.88,33.92 |count 5 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Bomb Location
Place the Explosives |q 57153/2 |goto 62.74,35.57 |count 6 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Bomb Location
Place the Explosives |q 57153/2 |goto 63.31,37.87 |count 7 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Bomb Location
Place the Explosives |q 57153/2 |goto 66.36,38.38 |count 8 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Detonator
Detonate the Explosives |q 57153/3 |goto 65.71,39.56 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
kill Therum Deepforge##156577 |q 57153/4 |goto 67.30,42.92 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|condition completedq(57153) |or
'|scenarioend |next "Begin_Vision" |or
step
Cross the bridge |goto 68.03,50.58 < 15 |only if walking
accept Old Town##57216 |goto 70.07,53.16 |or
|tip You will accept this quest automatically.
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
Watch the dialogue
Rendezvous with Valeera |q 57216/1 |goto 70.07,53.16 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
Enter the tunnel |goto 70.07,53.16 < 15 |only if walking
|tip Click the Vision Barrier to pass.
kill Armsmaster Terenson##156949
Obtain Terenson's Key |q 57216/2 |goto 70.48,58.43 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
Follow the path |goto 72.84,55.12 < 20 |only if walking
Continue following the path |goto 76.37,59.39 < 20 |walk
kill Alx'kov the Infested##152809
Obtain Alx'kov's Key |q 57216/3 |goto 75.76,63.52 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Security Monolith
Bypass Shaw's Security |q 57216/4 |goto 76.64,66.05 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
kill Overlord Mathias Shaw##158157 |q 57216/5 |goto 79.47,66.42 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|condition completedq(57216) |or
'|scenarioend |next "Begin_Vision" |or
step
Run down the stairs |goto 76.52,64.96 < 10 |only if walking
|tip Click the Gate to pass.
Enter the tunnel |goto 71.67,60.39 < 10 |only if walking
Cross the bridge |goto 69.09,62.18 < 10 |only if walking
accept Trade District##57271 |goto 65.41,65.01 |or
|tip You will accept this quest automatically.
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
Enter the tunnel |goto 65.89,64.22 < 10 |only if walking
|tip Click the Vision Barrier to pass.
kill Inquisitor Darkspeak##158136 |q 57271/1 |goto 67.56,72.51 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
Follow the path |goto 64.50,70.11 < 10 |only if walking
kill Slavemaster Ul'rok##153541 |q 57271/2 |goto 65.41,75.81 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Prison Cage
Rescue the Captive |q 57271/3 |goto 66.04,75.73 |count 1 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Prison Cage
Rescue the Captive |q 57271/3 |goto 65.49,76.84 |count 2 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Prison Cage
Rescue the Captive |q 57271/3 |goto 63.62,74.31 |count 3 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Prison Cage
Rescue the Captive |q 57271/3 |goto 63.02,71.27 |count 4 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Prison Cage
Rescue the Captive |q 57271/3 |goto 62.13,69.05 |count 5 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Prison Cage
Rescue the Captive |q 57271/3 |goto 61.92,75.89 |count 6 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Prison Cage
Rescue the Captive |q 57271/3 |goto 59.50,68.89 |count 7 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
click Prison Cage
Rescue the Captive |q 57271/3 |goto 61.36,66.92 |count 8 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|condition completedq(57271) |or
'|scenarioend |next "Begin_Vision" |or
step
Enter the tunnel |goto 59.88,71.73 < 10 |only if walking
Cross the bridge |goto 57.32,73.60 < 10 |only if walking
accept Mage Quarter##57282 |goto 55.58,76.55 |or
|tip You will accept this quest automatically.
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
Enter the tunnel |goto 55.58,76.55 < 10 |only if walking
|tip Click the Vision Barrier to pass.
Follow the path |goto 53.62,78.88 < 10 |only if walking
Continue following the path |goto 50.33,78.57 < 10 |only if walking
Continue following the path |goto 45.77,78.37 < 10 |only if walking
kill Portal Keeper##159275
Close the Void Portal |q 57282/1 |goto 47.11,80.53 |count 1 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
Follow the path |goto 45.61,78.51 < 10 |only if walking
kill Zardeth of the Black Claw##158371
Close the Void Portal |q 57282/1 |goto 43.67,80.58 |count 2 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
Follow the path down |goto 43.88,84.92 < 10 |only if walking
kill Portal Keeper##159275+
Close the Void Portal |q 57282/1 |goto 47.82,87.54 |count 3 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
kill Portal Master##159266
Close the Void Portal |q 57282/1 |goto 51.25,88.54 |count 4 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
Enter the building |goto 51.84,84.49 < 10 |walk
Leave the building |goto 52.65,83.48 < 10 |walk
kill Portal Master##159266
Close the Void Portal |q 57282/1 |goto 52.48,80.78 |count 5 |or
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|scenarioend |next "Begin_Vision" |or
step
Enter the building |goto 52.78,83.31 < 10 |walk
Leave the building |goto 51.77,84.58 < 10 |walk
Run up the ramp |goto 49.99,87.62 < 10 |only if walking
kill Magister Umbric##158035 |q 57282/2 |goto 48.90,87.82 |or
|tip Inside the Mage Tower beyond the portal.
'|goto 54.52,54.18 < 50 |c |next "KIll_Alleria_Windrunner" |or
'|condition completedq(57282) |or
'|scenarioend |next "Begin_Vision" |or
step
click Portal to Cathedral District |goto 49.97,85.93
|tip Inside the Mage Tower.
Teleport to the Cathedral District |goto 54.52,54.18 < 100 |c |noway
step
label "KIll_Alleria_Windrunner"
Enter the building |goto 52.95,51.01 < 10 |walk
|tip Kill the Fallen Riftwalkers.
kill Alleria Windrunner##152718 |scenariogoal 2/46474 |goto 50.07,45.67
|tip Inside the building.
step
Collect Your Rewards and Exit the Vision |scenarioend |goto 41.16,34.12 |next "Begin_Vision"
|tip Loot the Corrupted Chests and click the Tenebrous Gateway to leave the vision.
step
label "Scenario_Information"
Your sanity meter serves as the scenario timer
|tip Mob and boss special abilities and ground effects will reduce your sanity.
|tip You will gain sanity for killing certain special mobs for objectives.
|tip The "Sanity Restoration Orb" will restore a full sanity bar upon use if you have unlocked it.
|tip At any time you can click a "Portal to Cathedral District" to complete the final objective.
|tip Portals are opened after completing each bonus objective.
|tip You can also enter the final objective chamber to load that portion of the guide.
|tip The final objective is to kill Alleria in the Stormwind Cathedral near the starting area.
'|scenarioend |next "Begin_Vision"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Horrific Vision of Orgrimmar",{
author="support@zygorguides.com",
description="This guide will walk you through completing the \"Horrific Vision of Orgrimmar\" scenario.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
condition_suggested=function() return level >= 50 and haveq(57374) or completedq(57374) end,
condition_valid=function() return haveq(57374) or completedq(57374) end,
condition_valid_msg="You must first complete the quest \"Into the Darkest Depths\" in the \"Magni's Plan\" leveling guide.",
},[[
step
label "Begin_Vision"
collect 1 Vessel of Horrific Visions##173363
|tip These can be obtained weekly from Black Empire assaults.
|tip They can also be purchased from Wrathion in the Chamber of Heart for 10,000 Coalescing Visions.
step
clicknpc Tenebrous Gateway##161897
Enter the Horrific Vision of Orgrimmar |scenariostart |goto Chamber of Heart/0 50.18,73.06
step
clicknpc Altar of the Pained##161000
turnin Mask of the Pained##58317 |goto Orgrimmar Vision/0 51.47,84.72
|only if readyq(58317)
step
clicknpc Altar of the Burned Bridge##160967
turnin Mask of the Burned Bridge##58314 |goto 51.15,83.00
|only if readyq(58314)
step
clicknpc Altar of the Long Night##160999
turnin Mask of the Long Night##58318 |goto 52.04,82.10
|only if readyq(58318)
step
clicknpc Altar of the Daredevil##160998
turnin Mask of the Daredevil##58297 |goto 52.93,82.94
|only if readyq(58297)
step
clicknpc Altar of the Dark Imagination##160961
turnin Mask of the Dark Imagination##58316 |goto 52.62,84.73
|only if readyq(58316)
stickystart "Scenario_Information"
step
talk Image of Wrathion##155604
Tell him _"I am ready to enter the vision."_
Speak with the Image of Wrathion |scenariogoal 1/46136 |goto 52.05,83.62
step
Follow the path |goto 50.37,80.85 < 20 |only if walking
Run up the ramp |goto 44.55,75.13 < 10 |only if walking
accept Valley of Spirits##57039 |goto 43.60,73.13 |or
|tip You will accept this quest automatically.
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
Kill enemies around this area
Assist Zekhan |q 57039/1 |goto 41.88,69.68 |or
|tip Click the Vision Barrier to pass.
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
Enter the tunnel |goto 39.71,64.45 < 10 |walk
Enter the Valley of Spirits |q 57039/2 |goto 37.08,64.69 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
clicknpc Conversion Totem##153881
Free Zor Lonetree |q 57039/3 |goto 34.50,65.19 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
clicknpc Conversion Totem##153881
Free Witch Doctor Umbu |q 57039/4 |goto 33.98,68.27 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
clicknpc Conversion Totem##153881
Free Terga Earthbreaker |q 57039/5 |goto 37.04,74.86 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
clicknpc Conversion Totem##153881
Free Sian'tsu |q 57039/6 |goto 36.18,77.69 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
kill Oblivion Elemental##153244 |q 57039/7 |goto 39.98,78.53 |or
|tip Avoid the waves of shadow that wash over the area.
|tip Run to the gold orb when you get silenced.
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|condition completedq(57039) |or
'|scenarioend |next "Begin_Vision" |or
step
Follow the path |goto 42.06,75.83 < 20 |only if walking
Continue following the path |goto 40.46,64.36 < 20 |only if walking
|tip Click the Vision Barrier to pass.
accept Valley of Wisdom##57129 |goto 42.23,56.31 |or
|tip You will accept this quest automatically.
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
Kill enemies around this area
Defeat Enemies in the Valley of Wisdom |q 57129/1 |goto 45.73,48.84 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
kill Vez'okk the Lightless##152874 |q 57129/2 |goto 44.36,48.80 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|condition completedq(57129) |or
'|scenarioend |next "Begin_Vision" |or
step
click Gusting Winds Totem |goto 43.90,47.69
Return to the Entrance |goto 50.47,85.50 < 100 |c |noway
'|scenarioend |next "Begin_Vision" |or
step
Follow the path up |goto 52.03,75.35 < 20 |only if walking
Continue following the path |goto 51.16,66.13 < 20 |only if walking
|tip Click the Vision Barrier to pass.
accept The Drag##57372 |goto 53.78,64.18 |or
|tip You will accept this quest automatically.
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
kill Annihilator Lak'hal##153942 |q 57372/1 |goto 55.13,65.11 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
talk Garona Halforcen##152993
Tell her _"You have my aid. <Help Garona up>"_
Speak with Garona |q 57372/2 |goto 54.88,64.90 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
click Barricade
talk Gotri##155486
Choose _<Check pulse>_
Check Gotri's Traveling Gear |q 57372/3 |goto 57.88,61.72 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
click Barricade
kill Snang##153022
|tip Inside the building.
Check Magar's Cloth Goods |q 57372/4 |goto 59.49,59.02 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
click Barricade
Check Orgrimmar Orphanage |q 57372/5 |goto 57.83,58.09 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
click Barricade
Check Nogg's Machine Shop |q 57372/6 |goto 57.38,56.10 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
click Barricade
Check Kodohide Leatherworkers |q 57372/7 |goto 60.15,55.25 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
kill Inquisitor Gnshal##156161 |q 57372/8 |goto 56.91,51.28 |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|condition completedq(57372) |or
'|scenarioend |next "Begin_Vision" |or
step
Enter the tunnel |goto 60.54,49.70 < 15 |only if walking
|tip Click the Vision Barrier to pass.
accept Valley of Honor##57001 |goto 62.12,48.22 |or
|tip You will accept this quest automatically.
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall" |or
'|scenarioend |next "Begin_Vision" |or
step
Follow the path |goto 63.60,50.91 < 15 |only if walking
Cross the bridge |goto 67.48,44.42 < 15 |only if walking
Follow the path up |goto 69.10,34.49 < 15 |only if walking
kill Rexxar##155098 |q 57001/1 |goto 63.18,33.06 |or
|tip Inside the building. |or
'|goto 49.90,75.66 < 15 |c |next "Kill_Thrall"
'|condition completedq(57001) |or
'|scenarioend |next "Begin_Vision" |or
step
click Gusting Winds Totem |goto 67.63,33.00
Return to the Entrance |goto 50.47,85.50 < 100 |c |noway
step
label "Kill_Thrall"
Enter the building |goto 49.90,75.66 < 7 |walk
|tip Kill the Voidbound Honor Guard to pass.
kill Thrall##152089 |scenariogoal 2/44866 |goto 48.40,71.47
|tip Inside the building.
|tip Run to the gold orb when you get silenced.
|tip Don't stand in front of Thrall when he casts "Seismic Slam."
step
Collect Your Rewards and Exit the Vision |scenarioend |goto 48.06,58.53 |next "Begin_Vision"
|tip Loot the Corrupted Chests and click the Tenebrous Gateway to leave the vision.
step
label "Scenario_Information"
Your sanity meter serves as the scenario timer
|tip Mob and boss special abilities and ground effects will reduce your sanity.
|tip You will gain sanity for killing certain special mobs for objectives.
|tip The "Sanity Restoration Orb" will restore a full sanity bar upon use if you have unlocked it.
|tip At any time you can click a "Gusting Winds Totem" to complete the final objective.
|tip Totems are opened after completing each bonus objective.
|tip You can also enter the final objective chamber to load that portion of the guide.
|tip The final objective is to kill Thrall in Grommash Hold near the starting area.
'|scenarioend |next "Begin_Vision"
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Heart of Azeroth\\Magni's Plan",{
author="support@zygorguides.com",
description="This guide will walk you through completing Magni's Plan for the Chamber of Heart.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Return","of","the","Black","Prince"},
condition_suggested=function() return level >= 50 and not completedq(58632) end,
condition_end=function() return completedq(58632) end,
},[[
step
Complete the Quest "We Need Each Other" |condition completedq(52131)
|tip Use the "Intro & Quest Zone Choice" leveling guide to accomplish this.
step
Complete the Quest "Uniting Zandalar" |condition completedq(51916,52451)
|tip Use the "War Campaign" leveling guide to accomplish this.
step
Complete the Quest "Harnessing the Power" |condition completedq(57010)
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
accept Return of the Black Prince##58582 |goto Dazar'alor/1 48.73,72.07
|tip You will accept this quest automatically.
step
talk Valeera Sanguinar##161458
Tell her _"Tell me what you saw."_
Speak with Valeera Sanguinar |q 58582/1 |goto 56.03,30.40
step
talk Valeera Sanguinar##161458
turnin Return of the Black Prince##58582 |goto 56.03,30.40
accept Where the Heart Is##58583 |goto 56.03,30.40
step
talk Magni Bronzebeard##152206
turnin Where the Heart Is##58583 |goto Chamber of Heart/0 50.13,59.21
accept Network Diagnostics##58506 |goto 50.13,59.21
step
Watch the dialogue
click Diagnostic Console: Uldir
Activate Diagnostic Console: Uldir |q 58506/1 |goto 52.35,61.96
step
click Diagnostic Console: Uldaman
Activate Diagnostic Console: Uldaman |q 58506/2 |goto 52.42,67.34
step
click Diagnostic Console: Ulduar
Activate Diagnostic Console: Ulduar |q 58506/3 |goto 48.12,67.38
step
click Diagnostic Console: Uldum
Activate Diagnostic Console: Uldum |q 58506/4 |goto 48.07,62.07
step
talk Magni Bronzebeard##152206
turnin Network Diagnostics##58506 |goto 50.13,59.21
accept A Titanic Problem##56374 |goto 50.13,59.21
step
Enter the building |goto Uldum New/0 71.67,52.19 < 20 |walk
talk Magni Bronzebeard##154532
|tip Inside the building.
turnin A Titanic Problem##56374 |goto 69.85,52.18
accept The Halls of Origination##56209 |goto 69.85,52.18
step
Enter the Halls of Origination |scenariostart |goto 69.10,53.15 |q 56209 |or
_Or_
talk Magni Bronzebeard##154532
|tip Inside the building.
Tell him _"I've heard this tale before..."_
|tip This will allow you to skip the scenario if you've already completed it on another character.
Skip the Halls of Origination |condition readyq(56209) |or |next "Turnin_The_Halls_of_Origination"
step
Run up the stairs |goto Halls of Origination S/0 48.28,81.19 < 20 |only if walking
Run up the ramp |goto 50.15,70.56 < 20 |only if walking
Reach the Inner Chambers |scenariogoal 1/45294 |goto 52.61,63.03 |q 56209
step
Run down the stairs |goto 54.50,59.81 < 10 |walk
click Forge Defense Console
Deactivate Forge Defense Consoles |scenariogoal 2/45363 |goto 57.92,59.41 |count 1 |q 56209
step
click Forge Defense Console
Deactivate Forge Defense Consoles |scenariogoal 2/45363 |goto 58.53,59.41 |count 2 |q 56209
step
Follow the path |goto 55.78,62.96 < 20 |only if walking
click Forge Defense Console
Deactivate Forge Defense Consoles |scenariogoal 2/45363 |goto 57.91,66.67 |count 3 |q 56209
step
click Forge Defense Console
Deactivate Forge Defense Consoles |scenariogoal 2/45363 |goto 58.53,66.66 |count 4 |q 56209
step
Run up the stairs |goto 55.37,66.12 < 10 |only if walking
Cross the bridge |goto 53.90,63.04 < 10 |only if walking
Follow the path |goto 66.02,63.11 < 20 |only if walking
Reach the Lift |scenariogoal 3/45337 |goto 67.47,53.34 |q 56209
step
kill Watcher Aum-ka##154619
Watch the dialogue
Activate the Lift |scenariogoal 4/45338 |goto 67.49,49.78 |q 56209
step
Run up the stairs |goto 62.95,49.78 < 20 |only if walking
Run down the stairs |goto 56.14,45.79 < 20 |only if walking
Run up the stairs |goto 54.49,32.56 < 30
Locate the Power Console |scenariogoal 5/46662 |goto 48.27,32.53 |q 56209
step
click Power Console##154642+
|tip Clicking a console beneath a pillar that a light beam is touching will change its direction.
|tip Click the northeast console twice.
|tip Click the northwest console twice.
|tip Click the west console three times.
|tip Click the east console once.
|tip Click the southeast console once.
|tip Click the far southeast console once.
|tip Direct the light beams down both sides of the room.
Reroute Power to Lifts |scenariogoal 6/45339 |goto 57.35,19.74 |q 56209
step
kill Sun Prophet Tenhamen##154727 |scenariogoal 7/45340 |goto 56.13,22.21 |q 56209
step
Watch the dialogue
Run up the stairs |goto 56.14,43.72 < 20 |only if walking
click Lift Controls |goto 66.52,48.39
Choose _<Take the lift to the third floor>_
|tip Make sure you are standing on the platform before choosing.
|tip It will take a moment to reach the third floor.
Reach the Third Floor |goto Halls of Origination S/2 47.22,49.57 < 200 |c |noway |q 56209
step
Watch the dialogue
click Power Terminal |goto 45.14,43.04
|tip The one on the left.
click Power Terminal |goto 49.17,43.06
|tip The one on the right.
Watch the dialogue
click Main Console
Reactivate the Forge of Origination |scenariogoal 8/45364 |goto 47.11,44.19 |q 56209
step
_Next to you:_
talk Magni Bronzebeard##154533
turnin The Halls of Origination##56209
accept To Ramkahen##56375
step
Watch the dialogue
Jump on the Teleporter |goto 47.18,53.20
Return to the First Floor |goto Halls of Origination S/0 48.24,83.31 < 100 |c |noway |q 56375
step
Enter the portal |goto 50.95,93.73
Leave the Halls of Origination |goto Uldum New/0 71.05,52.18 < 200 |c |noway |q 56375
step
label "Turnin_The_Halls_of_Origination"
talk Magni Bronzebeard##154533
|tip Inside the building.
turnin The Halls of Origination##56209 |goto 69.85,52.18
accept To Ramkahen##56375 |goto 69.85,52.18
step
talk King Phaoris##155095
|tip Inside the building.
turnin To Ramkahen##56375 |goto 54.91,32.76
accept The Uldum Accord##56472 |goto 54.91,32.76
step
click Sands of Shifting Visions
|tip Inside the building.
Examine the Sands of Shifting Visions |q 56472/1 |goto 54.90,32.96
step
talk King Phaoris##155095
|tip Inside the building.
Tell him _"I will join you."_
Watch the dialogue
Establish Relations with the Uldum Accord |q 56472/2 |goto 54.91,32.75
step
talk King Phaoris##155095
|tip Inside the building.
turnin The Uldum Accord##56472 |goto 54.91,32.76
accept Surfacing Threats##56376 |goto 54.91,32.76
step
talk High Commander Kamses##155096
|tip Inside the building.
Tell him _"Show me the current assault."_
Speak to High Commander Kamses |q 56376/1 |goto 54.83,32.97
step
Repel the Current Assault |q 56376/2
|tip Use the "Uldum Assaults" guide to accomplish this.
step
use the Cache of the Black Empire##173372 |only if itemcount(173372) >= 1
use the Cache of the Aqir Swarm##174960 |only if itemcount(174960) >= 1
use the Cache of the Amathet##174961 |only if itemcount(174961) >= 1
accept Curious Corruption##58991
|tip You will accept this quest automatically.
step
talk King Phaoris##155095
|tip Inside the building.
turnin Surfacing Threats##56376 |goto 54.91,32.76
accept Forging Onward##56377 |goto 54.91,32.76
step
talk Wrathion##155496
Ask him _"Can you tell me anything about this corrupted item?"_
Ask Wrathion About the Corrupt Item |q 58991/1 |goto Chamber of Heart/0 46.12,64.07
step
talk MOTHER##152194
|tip She walks between the forge and her usual spot.
Tell her _"Tell me about the Titanic Purification process."_
Speak with MOTHER to Learn About Corruption |q 58991/2 |goto 48.18,72.39
step
talk MOTHER##152194
turnin Curious Corruption##58991 |goto 48.18,72.39
step
Watch the dialogue
Hear Magni's Plan |q 56377/1 |goto 50.13,59.15
step
talk Magni Bronzebeard##152206
turnin Forging Onward##56377 |goto 50.13,59.15
accept It's Never Easy##56536 |goto 50.13,59.15
step
Watch the dialogue
Meet with Magni |q 56536/1 |goto Kun-Lai Summit/0 59.62,39.19
step
talk Mogu Warrior##155336
Tell it _"Lead the way."_
Speak to the Mogu Warrior |q 56536/2 |goto 59.62,39.19
step
Kill enemies that attack around this area
Watch the dialogue
Defeat the Mantid Ambush |q 56536/3 |goto 59.69,39.11
step
talk Magni Bronzebeard##154532
turnin It's Never Easy##56536 |goto 59.81,39.06
step
talk Mogu Warrior##155336
accept The Mysterious Sigil##56537 |goto 59.61,39.19
step
Enter the building |goto Vale of Eternal Blossoms New/0 81.92,29.44 < 10 |walk
|tip High up on the balcony.
talk Lorewalker Cho##156003
|tip Inside the building.
turnin The Mysterious Sigil##56537 |goto 83.80,27.16
accept Clans of the Mogu##56538 |goto 83.80,27.16
step
click The Serpent Masters
|tip Inside the building.
Read the Serpent Masters |q 56538/1 |goto 83.73,27.96
step
click Power Through Blood
|tip Inside the building.
Read Power Through Blood |q 56538/2 |goto 83.10,26.96
step
click Will of Stone
|tip Inside the building.
Read the Will of Stone |q 56538/3 |goto 83.27,28.43
step
click Origins of the Mogu
|tip Inside the building.
Read the Origins of the Mogu |q 56538/4 |goto 84.26,29.16
step
talk Lorewalker Cho##156003
|tip Inside the building.
turnin Clans of the Mogu##56538 |goto 83.80,27.17
accept Finding the Rajani##56539 |goto 83.80,27.17
step
Kill Zan-Tien enemies around this area
collect Mogu Scouting Report##170384 |q 56539/1 |goto 46.99,19.91
step
Enter the building |goto Vale of Eternal Blossoms New/0 81.92,29.44 < 10 |walk
|tip High up on the balcony.
talk Lorewalker Cho##156003
|tip Inside the building.
turnin Finding the Rajani##56539 |goto 83.80,27.17
step
talk Magni Bronzebeard##154532
|tip Inside the building.
accept Time-Lost Warriors##56771 |goto 83.10,27.31
step
talk Ryuxi##154805
fpath Mistfall Village |goto 38.90,72.74
step
Find the Rajani |q 56771/1 |goto 39.83,75.32
step
talk Stormspeaker Qian##154444
Tell him _<Show Stormspeaker Tian the sigil>_
Walk with Stormspeaker Tian |q 56771/2 |goto 39.83,75.32
step
talk Ra-den##154418
|tip Inside the building.
Tell him _"I need the Engine of Nalak'sha to safeguard Azeroth from N'Zoth's corruption."_
Speak with Ra-Den |q 56771/3 |goto 45.31,74.34
step
talk Stormspeaker Qian##154444
|tip Inside the building.
turnin Time-Lost Warriors##56771 |goto 44.72,73.91
accept Proof of Tenacity##56540 |goto 44.72,73.91
step
collect Conqueror's Trophy##170385 |q 56540/1
|tip Complete the current Vale of Eternal Blossoms assault quest.
step
Enter the building |goto 40.23,75.25 < 15 |walk
talk Ra-den##154418
|tip Inside the building.
turnin Proof of Tenacity##56540 |goto 45.31,74.34
accept The Engine of Nalak'sha##56541 |goto 45.31,74.34
step
Enter the Mogu'Shan Palace |scenariostart |goto 81.72,29.74 |q 56541
_Or_
talk Ra-den##154418
|tip Inside the building.
Tell him _"I've heard this tale before..."_
|tip This will allow you to skip the scenario if you've already completed it on another character.
Skip the Mogu'Shan Palace Scenario |condition readyq(56541) |or |next "Turnin_The_Engine_of_Nalak'sha" |q 56541
step
Follow the path |goto Mogu Palace New/1 40.33,26.13 < 20 |only if walking
|tip Avoid any spear tiles on the ground when possible.
kill Animated Guardian##155797+
|tip The statues will animate and attack you.
|tip Defeat each group of four to open the doors.
Find a Way to the Lower Levels |scenariogoal 1/45931 |goto 40.29,54.20 |q 56541
step
Follow the path |goto 40.31,67.41 < 2 |only if walking
|tip Up three tiles to white.
Continue following the path |goto 39.26,68.99 < 2 |only if walking
|tip Jump diagonal two tiles to yellow.
Continue following the path |goto 39.25,71.37 < 2 |only if walking
|tip Up three tiles to yellow.
Continue following the path |goto 39.76,72.13 < 2 |only if walking
|tip Jump diagonal one tile to white.
Continue following the path |goto 40.31,72.18 < 2 |only if walking
|tip Over one tile to red.
click Ancient Lever
Activate the Ancient Lever |scenariogoal 2/45932 |goto 40.30,70.72 |q 56541
step
Run down the stairs |goto 50.32,69.93 < 7 |only if walking
Continue down the stairs |goto Mogu Palace New/0 55.04,18.87 < 10 |walk
Continue down the stairs |goto 37.45,18.85 < 10 |walk
Continue down the stairs |goto 28.67,32.94 < 10 |walk
clicknpc Mogue Statue##155525
|tip It will move in the direction you are facing.
|tip Move it to the empty stone pad to hold the door open.
Find a Way to Open the Door |scenariogoal 3/45933 |goto 26.64,46.45 |q 56541
step
Follow the path |goto 15.26,44.30 < 2 |walk
Enter The Repository |goto Mogu Vaults New/1 52.96,54.45 < 200 |c |noway |q 56541
step
kill Depthcaller Xith'el##155684
Reach the Mogu'shan Vaults |scenariogoal 4/45934 |goto 36.28,52.02 |q 56541
step
click Summoned Tentacle
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 41.87,72.68 |count 10 |q 56541
step
click Summoned Maw
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 38.11,64.96 |count 43 |q 56541
step
click Summoned Tentacle
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 32.54,62.04 |count 53 |q 56541
step
click Summoned Eye
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 24.98,60.57 |count 58 |q 56541
step
click Summoned Eye
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 25.95,58.36 |count 63 |q 56541
step
click Summoned Eye
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 42.44,39.58 |count 68 |q 56541
step
click Summoned Eye
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 41.69,38.99 |count 73 |q 56541
step
click Summoned Tentacle
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 38.00,34.38 |count 83 |q 56541
step
Run up the stairs |goto 33.69,40.66 < 10 |walk
click Summoned Eye
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 29.90,26.79 |count 88 |q 56541
step
Run down the stairs |goto 33.72,31.57 < 10 |walk
click Summoned Tentacle
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 30.27,43.67 |count 98 |q 56541
step
click Summoned Eye
Destroy the Manifestations of N'Zoth |scenariogoal 5/0 |goto 26.64,46.43 |q 56541
step
Watch the dialogue
Run down the stairs |goto Mogu Vaults New/1 27.32,51.86 < 10 |walk
Continue down the stairs |goto Mogu Vaults New/0 61.02,13.94 < 10 |walk
Follow the path |goto 68.52,23.68 < 10 |walk
Cross the bridge |goto 66.37,41.36 < 15 |walk
Follow the path |goto 48.78,50.46 < 10 |walk
kill Swarmguard Kzaz##155723
Reach the Engine of Nalak'sha |scenariogoal 6/45936 |goto 34.03,51.37 |q 56541
step
kill Yox'ith##155706 |scenariogoal 7/45937 |goto 26.76,51.42 |q 56541
|tip Killing Tentacles will also deal damage to Yox'ith.
step
Watch the dialogue
click Titan Console
Link the Engine of Nalak'sha to the Chamber of Heart |scenariogoal 8/45938 |goto 27.02,51.38 |q 56541
step
Step onto the teleporter |goto 14.46,51.42
Return to The Gilden Foyer |goto Mogu Palace New/1 45.14,17.60 < 200 |noway |c |q 56541
step
Follow the path |goto 27.23,20.34 < 10 |walk
Leave The Gilden Foyer |goto Vale of Eternal Blossoms New/0 80.92,30.83 < 200 |c |noway |q 56541
step
label "Turnin_The_Engine_of_Nalak'sha"
Enter the building |goto 40.23,75.25 < 15 |walk
talk Ra-den##154418
|tip Inside the building.
turnin The Engine of Nalak'sha##56541 |goto 45.31,74.34
accept Restored Hope##56542 |goto 45.31,74.34
step
talk Ra-den##154418
|tip Inside the building.
Tell him _"Take us to the Chamber of Heart."_
Watch the dialogue
Return to the Chamber of Heart |q 56542/1 |goto 45.31,74.34
step
Watch the dialogue
talk Magni Bronzebeard##152206
turnin Restored Hope##56542 |goto Chamber of Heart/0 50.12,59.22
accept Magni's Findings##58737 |goto 50.12,59.22
step
talk Magni Bronzebeard##152206
Tell him _"Show me what you've discovered."_
Watch the dialogue
Learn About Magni's Findings |q 58737/1 |goto 50.12,59.22
step
talk Magni Bronzebeard##152206
turnin Magni's Findings##58737 |goto 50.12,59.22
accept Power Protocol Initiation##57220 |goto 50.12,59.22
step
click Chamber of Heart Relay
Activate the Chamber of Heart Relay |q 57220/1 |goto 56.91,64.73
step
click Engine of Nalak'sha Relay
Activate the Engine of Nalak'sha Relay |q 57220/2 |goto 50.11,74.77
step
click Forge of Origination Relay
Activate the Forge of Origination Relay |q 57220/3 |goto 43.40,64.66
step
talk MOTHER##152194
Tell her _"Reroute auxiliary systems and power up the Forge of Origination."_
Watch the dialogue
Speak with MOTHER to Power the Forge |q 57220/4 |goto 48.19,72.44
step
talk Magni Bronzebeard##152206
turnin Power Protocol Initiation##57220 |goto 50.12,59.22
accept Re-Origination##57221 |goto 50.12,59.22
step
Enter the building |goto Uldum New/0 71.63,52.18 < 20 |walk
talk Magni Bronzebeard##154532
|tip Inside the building.
turnin Re-Origination##57221 |goto 68.96,52.74
accept Investigating the Halls##57222 |goto 68.96,52.74
step
Run into the portal |goto 69.10,53.15
Enter the Halls of Origination |goto Halls of Origination S/0 50.73,93.59 < 200 |c |noway |q 57222
step
Watch the dialogue
Investigate the Entry Halls |q 57222/1 |goto 48.21,87.23
step
Watch the dialogue
Arrive in the Chamber |goto Halls of Origination S/1 66.06,49.66 < 200 |noway |c |q 57222
step
click Vision of the Halls of Origination
Investigate the Anomaly |q 57222/2 |goto 38.95,49.55
step
Attempt to Calm the Whispers |q 57222/3 |goto 39.47,49.55
|tip Wait for your sanity bar to drop so you will be teleported out.
step
Return to the Chamber of Heart |goto Chamber of Heart/0 50.16,37.88 < 200 |c |noway |q 57222
step
talk Wrathion##155496
turnin Investigating the Halls##57222 |goto 46.11,64.05
accept Beginning the Descent##57290 |goto 46.11,64.05
step
Discover the Location of the Object Mentioned by Wrathion |scenariostart |goto Burning Steppes/0 22.98,26.48 |q 57290
|tip Enter Blackwing Descent.
|tip Outside Blackrock Mountain towards the top.
step
Follow the path |goto BWD Scenario/1 46.91,42.37 < 15 |only if walking
|tip Kill the Darkwhisper Cultists to lower the barrier.
Ride the Elevator Down |goto BWD Scenario/0 47.37,90.03 |noway |c |q 57290
step
Watch the dialogue
Access the Vault of the Shadowflame |scenariogoal 1/46461 |goto 47.38,84.21 |q 57290
step
talk Wrathion##157664
Tell him _"Something must be done."_
Speak with Wrathion |scenariogoal 2/46990 |goto 47.72,84.12 |q 57290
step
Run up the stairs |goto 58.57,69.74 < 20 |only if walking
kill Darkwhisper Cultist##157333
|tip This will remove the barrier.
kill Extractor Thelsara##157356 |scenariogoal 3/46457 |goto 71.44,69.75 |q 57290
step
Run down the stairs |goto 60.42,69.77 < 20 |only if walking
Follow the path |goto 47.27,55.93 < 30 |only if walking
Run up the stairs |goto 36.36,69.73 < 20 |only if walking
kill Darkwhisper Cultist##157333
|tip This will remove the barrier.
kill Spawn of Shad'har##157337 |scenariogoal 3/46458 |goto 22.29,69.93 |q 57290
|tip Kill the three cultists to free Shad'har.
step
Run down the stairs |goto 34.34,69.80 < 20 |only if walking
Run up the stairs |goto 47.20,53.53 < 30 |only if walking
Watch the dialogue
Meet Wrathion at the Barrier |scenariogoal 4/47029 |goto 47.38,46.80 |q 57290
step
Kill enemies that attack in waves
Defend Wrathion |scenariogoal 5/46573 |goto 47.32,49.45 |q 57290
step
kill Darkwhisper Disciple##157275+
Watch the dialogue
Investigate the Athenaeum |scenariogoal 6/46473 |goto 47.49,33.42 |q 57290
step
kill Darkwhisper Cultist##162238
|tip This will free Velnaria.
kill Velnaria##157368 |scenariogoal 7/46475 |goto 45.02,31.04 |q 57290
step
kill Darkwhisper Cultist##162238
|tip This will free Dreliana.
kill Dreliana##157709 |scenariogoal 7/46516 |goto 49.92,31.17 |q 57290
step
Run down the stairs |goto 47.40,50.51 < 20 |only if walking
kill Darkwhisper Ritualist##162030 |scenariogoal 8/47004 |goto 42.12,60.76 |count 1 |q 57290
step
kill Darkwhisper Ritualist##162030 |scenariogoal 8/47004 |goto 39.35,70.16 |count 2 |q 57290
step
Follow the path |goto 46.27,55.29 < 30 |only if walking
kill Darkwhisper Ritualist##162030 |scenariogoal 8/47004 |goto 52.70,60.72 |count 3 |q 57290
step
kill Darkwhisper Ritualist##162030 |scenariogoal 8/47004 |goto 55.44,70.08 |count 4 |q 57290
step
Run down the stairs |goto 54.59,76.04 < 15
Watch the dialogue
talk Wrathion##157664
Tell him _"Let us begin the ritual."_
Complete the Ritual of Flame |scenariogoal 9/46472 |goto 47.64,78.20 |q 57290
step
click Dragon Remains
Destroy the Remains of Onyxia and Nefarian |q 57290/2 |goto 47.97,68.09
step
click Corrupt Black Dragonscales
collect Corrupt Black Dragonscales##171219 |scenariogoal 11/46464 |goto 47.50,68.53 |q 57290
step
Watch the dialogue
clicknpc Failed Experiment##162709
Mount the Failed Experiment |invehicle |goto 48.24,66.27 |q 57290
step
Watch the dialogue
Return to Magni's Encampment |outvehicle |q 57290
step
talk Wrathion##155496
turnin Beginning the Descent##57290 |goto Chamber of Heart/0 46.11,64.05
accept Deeper Into the Darkness##57362 |goto 46.11,64.05
step
talk MOTHER##152194
Tell her _"Return me to the Halls of Origination."_
Return to the Halls of Origination |q 57362/1 |goto 48.17,72.39 |goto 48.17,72.39
step
Begin the Scenario |scenariostart |goto Halls of Origination S/1 63.55,51.77 |q 57362
step
Follow the path |goto 53.51,49.54
click Vision of the Halls of Origination
Re-enter the Vision of the Halls of Origination |scenariogoal 1/46488 |goto 38.94,49.53 |q 57362
step
Reach the Tunnel |goto Halls of Origination S/1 30.30,49.38 < 30 |c |q 57362
step
click Descent Into Madness
Breach the Lower Hallway |scenariogoal 2/46489 |goto Halls of Origination S/0 87.90,49.77 |q 57362
step
kill Terror Tendril##157137 |scenariogoal 3/46490 |goto 69.09,49.77 |q 57362
|tip Don't step in the pool or you will instantly die.
step
click Lift Controls
Choose _<Bring elevator to third floor>_
|tip It will take a moment to reach the third floor.
|tip Make sure you are standing on the platform before choosing.
Locate the Anomaly |scenariogoal 4/46493 |goto 66.53,48.38 |q 57362
step
kill Ysedra the Darkener##157483 |scenariogoal 5/46492 |goto Halls of Origination S/2 47.18,44.42 |q 57362
step
Watch the dialogue
Jump in the teleporter |goto 47.14,53.05
Return to the Chamber of Heart |goto Chamber of Heart/0 50.22,35.92 < 200 |c |noway |q 57362
step
talk Wrathion##155496
turnin Deeper Into the Darkness##57362 |goto 46.11,64.05
accept Descending Into Madness##57373 |goto 46.11,64.05
step
Explore a Vision of N'Zoth |q 57373/1
|tip Use the "Lesser Visions of N'Zoth" guide to accomplish this.
step
talk Wrathion##155496
turnin Descending Into Madness##57373 |goto Chamber of Heart/0 46.11,64.05
accept Opening the Gateway##58634 |goto 46.11,64.05
step
talk MOTHER##152194
Tell her _"Begin the conduit's activation sequence."_
Speak with MOTHER to Begin the Activation Sequence |q 58634/1 |goto 48.22,72.38
step
clicknpc Tenebrous Gateway##161897
Activate the Tenebrous Gateway |q 58634/2 |goto 50.14,73.05
step
Watch the dialogue
talk Wrathion##155496
turnin Opening the Gateway##58634 |goto 46.11,64.05
accept Into the Darkest Depths##57374 |goto 46.11,64.05
step
collect Vessel of Horrific Visions##173363 |q 57374/1 |goto 46.11,64.05
|tip These can be obtained weekly from Black Empire assaults.
|tip They can also be purchased from Wrathion in the Chamber of Heart for 10,000 Coalescing Visions.
step
Witness a Vision of Azeroth's Future |q 57374/2
|tip Use the "Horrific Vision of Orgrimmar" and "Horrific Vision of Stormwind" guides to accomplish this.
|tip You don't need to complete an entire vision, credit will be given as soon as you zone in.
step
talk Wrathion##155496
turnin Into the Darkest Depths##57374 |goto CoH Scenario/0 46.51,62.01
step
talk Magni Bronzebeard##161805
accept Whispers in the Dark##58615 |goto 50.15,57.62
step
click Fragment of Void
Find N'Zoth's Whispers |q 58615/1 |goto 50.14,72.92
step
Kill enemies around this area
click Reach of N'Zoth+
|tip They look like large wiggling tentacles around the room.
clicknpc Black Empire Obelisk##156268+
|tip They look like stone pillars floating above the ground around the room.
Defend the Chamber of Heart |q 58615/2 |goto 50.27,62.96
step
Watch the dialogue
Defend the Chamber of Heart |goto Chamber of Heart/0 48.82,66.73 < 1000 |c |noway |q 58615
step
Watch the dialogue
talk Magni Bronzebeard##161805
turnin Whispers in the Dark##58615 |goto 50.12,59.22
accept Into Dreams##58631 |goto 50.12,59.22
step
talk Wrathion##155496
accept Accessing the Archives##57524 |goto 46.11,64.05
accept Remnants of a Shattered World##57378 |goto 46.11,64.05
step
talk MOTHER##152194
Tell her _"Bring the archives online."_
Watch the dialogue
Speak with MOTHER to Bring the Database Online |q 57524/1 |goto 48.20,72.48
step
Watch the dialogue
clicknpc Titanic Research Archive##161989
Examine the Titanic Research Archive |q 57524/2 |goto 46.35,70.42
step
talk MOTHER##152194
turnin Accessing the Archives##57524 |goto 48.23,72.35
step
talk MOTHER##152194
Tell her _"Magni needs help tracking Ra-den."_
Watch the dialogue
Speak to MOTHER |q 58631/1 |goto 48.23,72.35
step
Watch the dialogue
Discover Ra-den's Location |q 58631/2
step
talk Magni Bronzebeard##161805
turnin Into Dreams##58631 |goto 50.12,59.22
accept Ny'alotha, the Waking City: The Corruptor's End##58632 |goto 50.12,59.22
step
collect The Curse of Stone##174777 |q 57378/1
|tip This drops from the main objective chest in Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Remnants of a Shattered World##57378 |goto 46.11,64.05
accept Reconstructing "The Curse of Stone"##57391 |goto 46.11,64.05
step
collect 1 Torn Page of "The Curse of Stone"##171353 |q 57391/1
|tip This drops from the main objective chest in Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Reconstructing "The Curse of Stone"##57391 |goto 46.11,64.05
|tip If you receive a "Duplicate item found" message, use the Corrupting Core in your bags on your legendary cloak.
step
talk Wrathion##155496
accept Reconstructing "The Curse of Stone"##57392 |goto 46.11,64.05
step
collect 1 Torn Page of "The Curse of Stone"##171353 |q 57392/1
|tip This drops from the main objective chest in Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Reconstructing "The Curse of Stone"##57392 |goto 46.11,64.05
|tip If you receive a "Duplicate item found" message, use the Corrupting Core in your bags on your legendary cloak.
step
talk Wrathion##155496
accept Reconstructing "The Curse of Stone"##57402 |goto 46.11,64.05
step
collect 1 Torn Page of "The Curse of Stone"##171353 |q 57402/1
|tip This drops from the main objective chest in Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Reconstructing "The Curse of Stone"##57402 |goto 46.11,64.05
|tip If you receive a "Duplicate item found" message, use the Corrupting Core in your bags on your legendary cloak.
step
talk Wrathion##155496
accept Stepping Through the Darkness##57393 |goto 46.11,64.05
step
collect 1 Fear and Flesh##174782 |q 57393/1
|tip These drop from the "Lost" area bonus objective chests in Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Stepping Through the Darkness##57393 |goto 46.11,64.05
step
talk Wrathion##155496
accept Reconstructing "Fear and Flesh"##57394 |goto 46.11,64.05
step
collect 2 Torn Page of "Fear and Flesh"##174783 |q 57394/1
|tip These drop from the "Lost" and "Corrupted" area bonus objective chests in Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Reconstructing "Fear and Flesh"##57394 |goto 46.11,64.05
|tip If you receive a "Duplicate item found" message, use the Corrupting Core in your bags on your legendary cloak.
step
talk Wrathion##155496
accept Reconstructing "Fear and Flesh"##57395 |goto 46.11,64.05
step
collect 2 Torn Page of "Fear and Flesh"##174783 |q 57395/1
|tip These drop from the "Lost" and "Corrupted" area bonus objective chests in Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Reconstructing "Fear and Flesh"##57395 |goto 46.11,64.05
|tip If you receive a "Duplicate item found" message, use the Corrupting Core in your bags on your legendary cloak.
step
talk Wrathion##155496
accept Reconstructing "Fear and Flesh"##57396 |goto 46.11,64.05
step
collect 4 Torn Page of "Fear and Flesh"##174783 |q 57396/1
|tip These drop from the "Lost" and "Corrupted" area bonus objective chests in Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Reconstructing "Fear and Flesh"##57396 |goto 46.11,64.05
|tip If you receive a "Duplicate item found" message, use the Corrupting Core in your bags on your legendary cloak.
step
talk Wrathion##155496
accept Reconstructing "Fear and Flesh"##57403 |goto 46.11,64.05
step
collect 6 Torn Page of "Fear and Flesh"##174783 |q 57403/1
|tip These drop from the "Lost" and "Corrupted" area bonus objective chests in Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Reconstructing "Fear and Flesh"##57403 |goto 46.11,64.05
|tip If you receive a "Duplicate item found" message, use the Corrupting Core in your bags on your legendary cloak.
step
talk Wrathion##155496
accept Reconstructing "Fear and Flesh"##57397 |goto 46.11,64.05
step
collect 8 Torn Page of "Fear and Flesh"##174783 |q 57397/1
|tip These drop from the "Lost" and "Corrupted" area bonus objective chests in Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Reconstructing "Fear and Flesh"##57397 |goto 46.11,64.05
|tip If you receive a "Duplicate item found" message, use the Corrupting Core in your bags on your legendary cloak.
step
talk Wrathion##155496
accept Walking in the Darkness##57398 |goto 46.11,64.05
step
collect 1 The Final Truth##174784 |q 57398/1
|tip This drops from any of the bonus chests at the end of Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Walking in the Darkness##57398 |goto 46.11,64.05
step
talk Wrathion##155496
accept Reconstructing "The Final Truth"##57399 |goto 46.11,64.05
step
collect 6 Torn Page of "The Final Truth"##174785 |q 57399/1
|tip These drop from the "Lost" area bonus objective chests in Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Reconstructing "The Final Truth"##57399 |goto 46.11,64.05
step
talk Wrathion##155496
accept Reconstructing "The Final Truth"##57400 |goto 46.11,64.05
step
collect 12 Torn Page of "The Final Truth"##174785 |q 57400/1
|tip These drop from the "Lost" area bonus objective chests in Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Reconstructing "The Final Truth"##57400 |goto 46.11,64.05
step
talk Wrathion##155496
accept Reconstructing "The Final Truth"##57401 |goto 46.11,64.05
step
collect 18 Torn Page of "The Final Truth"##174785 |q 57401/1
|tip These drop from the "Lost" area bonus objective chests in Horrific Visions.
|tip Use the Horrific Vision guides to accomplish this.
step
talk Wrathion##155496
turnin Reconstructing "The Final Truth"##57401 |goto 46.11,64.05
step
Slay N'Zoth, the Corruptor |q 58632/1
|tip Use the "Ny'alotha, the Waking City - The Waking Dream" raid guide to accomplish this.
step
talk Magni Bronzebeard##161805
turnin Ny'alotha, the Waking City: The Corruptor's End##58632 |goto 50.12,59.22
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Exile's Reach (1-10)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the Exile's Reach\n"..
"\nquestline.\n",
condition_suggested=function() return level >= 1 and level <= 10 and ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
startlevel=1.0,
endlevel=10.0,
image=ZGV.IMAGESDIR.."BfAIntro",
},[[
step
_On the Deck of the Ship:_
talk Warlord Breka Grimaxe##166573
accept Warming Up##59926
step
_Nearby on the Deck of the Ship:_
kill Combat Dummy##160737
Practice Combat on a Combat Dummy |q 59926/1
step
_Nearby on the Deck of the Ship:_
talk Warlord Breka Grimaxe##166573
turnin Warming Up##59926
step
_Nearby on the Deck of the Ship:_
talk Grunt Throg##166583
accept Stand Your Ground##59927
step
_Nearby on the Deck of the Ship:_
Watch the dialogue
kill Grunt Throg##166583
|tip He runs across the deck of the ship nearby.
Spar with Grunt Throg |q 59927/1
step
_Nearby on the Deck of the Ship:_
Watch the dialogue
talk  Grunt Throg##166583
|tip He walks across the deck of the ship nearby.
turnin Stand Your Ground##59927
accept Brace for Impact##59928
step
_Nearby on the Deck of the Ship:_
Watch the dialogue
talk Warlord Breka Grimaxe##166573
turnin Brace for Impact##59928
step
Reach the Murloc Hideaway |complete subzone("Murloc Hideaway") |q 59929 |future
step
talk Warlord Breka Grimaxe##166782
accept Murloc Mania##59929 |goto Exile's Reach/0 61.88,82.89
step
Kill Murloc enemies around this area
Recover #6# First Aid Kits from Defeated Murlocs |q 59929/1 |goto 60.64,79.50
step
talk Warlord Breka Grimaxe##166782
turnin Murloc Mania##59929 |goto 61.88,82.89
accept Emergency First Aid##59930 |goto 61.88,82.89
step
use the First Aid Kit##168410
|tip Use it on Bo.
Use the First Aid Kit on Bo |q 59930/2 |goto 61.73,83.50
step
use the First Aid Kit##168410
|tip Use it on Mithdran Dawntracker.
Use the First Aid Kit on Mithdran Dawntracker |q 59930/3 |goto 61.37,82.60
step
use the First Aid Kit##168410
|tip Use it on Lana Jordan.
Use the First Aid Kit on Lana Jordan |q 59930/1 |goto 61.55,82.24
step
talk Warlord Breka Grimaxe##166782
turnin Emergency First Aid##59930 |goto 61.88,82.89
accept Finding the Lost Expedition##59931 |goto 61.88,82.89
step
Travel North to Find Any Expedition Survivors |q 59931/1 |goto 58.36,74.47
step
talk Won'sa##166854
turnin Finding the Lost Expedition##59931 |goto 58.36,74.47
step
talk Warlord Breka Grimaxe##166906
accept Cooking Meat##59932 |goto 58.37,74.64
step
Kill enemies around this area
collect 5 Raw Meat##174072 |q 59932/1 |goto 59.47,72.73
step
click Campfire
Cook the Meat on the Campfire |q 59932/2 |goto 58.32,74.58
step
talk Won'sa##166854
turnin Cooking Meat##59932 |goto 58.36,74.47
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Druid
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Druid
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.37,74.63
|only if Druid
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Druid
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Druid
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Hunter
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.86
accept Taming the Wilds##59937 |goto 62.72,69.86
|only if Hunter
step
Watch the dialogue
Learn Tame Beast from Mithdran |q 59937/1 |goto 62.72,69.86
|only if Hunter
step
Tame Any Wildlife Beast |q 59937/2 |goto 61.07,71.37
|tip Use your "Tame Beast" ability on any beast enemy around this area.
|only if Hunter
step
talk Mithdran Dawntracker##166996
turnin Taming the Wilds##59937 |goto 62.72,69.86
|only if Hunter
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.63
|only if Mage
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Mage
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.38,74.63
|only if Mage
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Mage
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Mage
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59934 |goto 58.38,74.64
|only if Monk
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Use Tiger Palm #6# Times on Warlord Grimaxe |q 59934/1
Use Blackout Kick #3# Times on Warlord Grimaxe |q 59934/2
|only if Monk
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59934 |goto 58.38,74.64
|only if Monk
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Monk
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Monk
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Paladin
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Paladin
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Paladin
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Paladin
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Paladin
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.37,74.64
|only if Priest
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Priest
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.37,74.64
|only if Priest
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Priest
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Priest
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Rogue
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Rogue
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Rogue
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Rogue
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Rogue
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Shaman
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Shaman
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Shaman
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Shaman
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Shaman
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.63
|only if Warlock
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Warlock
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.38,74.63
|only if Warlock
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Warlock
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Warlock
step
talk Warlord Breka Grimaxe##166906
accept Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Warrior
step
Watch the dialogue
|tip Follow Warlord Breka Grimaxe as she walks.
|tip She doesn't always run to the same location.
kill Warlord Breka Grimaxe##166906
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Warlord Grimaxe |q 59933/1
|only if Warrior
step
talk Warlord Breka Grimaxe##166906
turnin Enhanced Combat Tactics##59933 |goto 58.38,74.64
|only if Warrior
step
talk Won'sa##166854
accept Northbound##59935 |goto 58.36,74.47
|only if Warrior
step
talk Mithdran Dawntracker##166996
turnin Northbound##59935 |goto 62.72,69.87
|only if Warrior
step
talk Mithdran Dawntracker##166996
accept Down with the Quilboar##59938 |goto 62.72,69.86
accept Forbidden Quilboar Necromancy##59939 |goto 62.72,69.86
stickystart "Slay_Quilboars"
step
Follow the path |goto 61.53,62.70 < 20 |only if walking
kill Geolord Grek'og##151091 |q 59938/1 |goto 58.90,63.02
step
label "Slay_Quilboars"
Kill Quilboar enemies around this area
Slay #7# Quilboars |q 59939/1 |goto 61.03,61.27
step
talk Mithdran Dawntracker##166996
turnin Forbidden Quilboar Necromancy##59939 |goto 56.26,59.17
step
talk Cork Fizzlepop##167019
turnin Down with the Quilboar##59938 |goto 56.17,59.12
accept The Choppy Booster Mk. 5##59940 |goto 56.17,59.12
step
Watch the dialogue
clicknpc Choppy Booster Mk 5##167027
Begin Flying with The Choppy Booster Mk. 5 |invehicle |goto 56.05,58.80 |q 59940
step
Watch the dialogue
Use The Choppy Booster Mk. 5 to Scout the Area |q 59940/1 |goto 55.04,54.20 |notravel
step
Watch the dialogue
Return to Cork Fizzlepop |outvehicle |goto 56.07,58.80 |q 59940 |notravel
step
talk Cork Fizzlepop##167019
turnin The Choppy Booster Mk. 5##59940 |goto 56.17,59.12
accept Re-sizing the Situation##59941 |goto 56.17,59.12
step
use the Re-Sizer v9.0.1##178051
|tip Use it on Wandering Boars.
Test the Re-Sizer v9.0.1 on #3# Wandering Boars |q 59941/1 |goto 57.00,58.02
step
talk Warlord Breka Grimaxe##167021
turnin Re-sizing the Situation##59941 |goto 56.25,59.04
step
talk Cork Fizzlepop##167019
accept The Re-Deather##59942 |goto 56.17,59.13
step
clicknpc Choppy Booster Mk 5##167027
Ride The Choppy Booster Mk. 5 |q 59942/1 |goto 56.05,58.80
step
_As You Fly:_
kill 8 Monstrous Cadaver##157091 |q 59942/2
|tip They look like the larger undead enemies on the ground around this area.
|tip Use the ability on your action bar.
step
kill Torgok##162817 |q 59942/3 |goto 51.01,52.80
|tip Inside the building.
step
Watch the dialogue
talk Shuja Grimaxe##167128
turnin The Re-Deather##59942 |goto 52.59,53.35
step
talk Warlord Breka Grimaxe##167212
accept Stocking Up on Supplies##59950 |goto 52.18,55.35
step
talk Provisioner Jin'hake##167213
|tip Buy any item you want that he has for sale.
Purchase Any Item from Provisioner Jin'hake |q 59950/1 |goto 52.46,55.67
step
talk Provisioner Jin'hake##167213
|tip Sell any items in your bags that you don't want.
Sell Any Item to Provisioner Jin'hake |q 59950/2 |goto 52.46,55.67
step
talk Warlord Breka Grimaxe##167212
turnin Stocking Up on Supplies##59950 |goto 52.18,55.35
step
talk Grunt Throg##167216
accept A Paladin's Service##59958 |goto 52.03,55.45
|only if Paladin
step
talk Grunt Throg##167216
accept A Priest's End##59961 |goto 52.04,55.44
|only if Priest
step
Look for the Corpses of the First Expedition Recruits |q 59961/1 |goto 56.10,53.69
|only if Priest
step
talk Sha'zul##167188
turnin A Priest's End##59961 |goto 56.11,53.70
accept Resurrecting the Recruits##59965 |goto 56.11,53.70
|only if Priest
step
Resurrect the Expedition Recruit |q 59965/1 |goto 56.18,52.99 |count 1
|tip Use your "Resurrection" ability on the First Expedition Recruit.
|only if Priest
step
Resurrect the Expedition Recruit |q 59965/1 |goto 56.25,53.44 |count 2
|tip Use your "Resurrection" ability on the First Expedition Recruit.
|only if Priest
step
Resurrect the Expedition Recruit |q 59965/1 |goto 56.48,53.66 |count 3
|tip Use your "Resurrection" ability on the First Expedition Recruit.
|only if Priest
step
talk Sha'zul##167188
turnin Resurrecting the Recruits##59965 |goto 56.10,53.69
|only if Priest
step
talk Grunt Throg##167216
accept A Rogue's End##59967 |goto 52.03,55.45
|only if Rogue
step
talk Drizza Sidestabber##167184
|tip Use your "Stealth" ability to sneak by the elite bear that walks around this area.
Tell her _"I'm in. How do I make this poison?"_
Find the First Expedition's Rogue |q 59967/1 |goto 45.64,56.12
|only if Rogue
step
click Withering Hemlock
|tip Use your "Stealth" ability to sneak by the elite bear that walks around this area.
|tip Make sure the bear is far away, you will become unstealthed when you loot the plant.
collect Withering Hemlock##174916 |q 59967/2 |goto 44.77,56.43 |count 1
|only if Rogue
step
click Withering Hemlock
|tip Use your "Stealth" ability to sneak by the elite bear that walks around this area.
|tip Make sure the bear is far away, you will become unstealthed when you loot the plant.
collect Withering Hemlock##174916 |q 59967/2 |goto 45.18,55.69 |count 2
|only if Rogue
step
click Withering Hemlock
|tip Use your "Stealth" ability to sneak by the elite bear that walks around this area.
|tip Make sure the bear is far away, you will become unstealthed when you loot the plant.
collect Withering Hemlock##174916 |q 59967/2 |goto 45.09,54.67 |count 3
|only if Rogue
step
talk Drizza Sidestabber##167184
turnin A Rogue's End##59967 |goto 45.65,56.13
accept The Deadliest of Poisons##59968 |goto 45.65,56.13
|only if Rogue
step
Cast Instant Poison |q 59968/1
|tip Use your "Instant Poison" ability.
|only if Rogue
step
kill Gutgruk the Tough |q 59968/2 |goto 48.85,51.51
|tip He walks around this area along the road.
|only if Rogue
step
talk Grunt Throg##167216
turnin The Deadliest of Poisons##59968 |goto 52.03,55.44
|only if Rogue
step
talk Ghost Wolf##163329
accept A Shaman's Duty##59002 |goto 52.30,55.65
|only if Shaman
step
click Veil Blossom
collect 1 Veil Blossom##174968 |q 59002/1 |goto 52.12,51.65
|only if Shaman
step
click Veil Blossom
collect 2 Veil Blossom##174968 |q 59002/1 |goto 51.86,51.14
|only if Shaman
step
click Veil Blossom
collect 3 Veil Blossom##174968 |q 59002/1 |goto 52.52,51.01
|only if Shaman
step
click Veil Blossom
collect 4 Veil Blossom##174968 |q 59002/1 |goto 53.21,51.37
|only if Shaman
step
click Campfire
Burn the Blossoms on the Campfire |q 59002/2 |goto 52.24,55.53
|only if Shaman
step
clicknpc Ghost Wolf##163338
Free the Captured Ghost Wolf |q 59002/3 |goto 54.39,58.46 |count 1
|only if Shaman
step
clicknpc Ghost Wolf##163338
Free the Captured Ghost Wolf |q 59002/3 |goto 55.27,52.80 |count 2
|only if Shaman
step
clicknpc Ghost Wolf##163338
Free the Captured Ghost Wolf |q 59002/3 |goto 55.40,50.79 |count 3
|only if Shaman
step
talk Ghost Wolf##163329
turnin A Shaman's Duty##59002 |goto 52.30,55.65
|only if Shaman
step
talk Grunt Throg##167216
accept A Warlock's Bargain##59970 |goto 52.03,55.45
|only if Warlock
step
talk Sprag Buzzboom##167478
Choose _<Rise and retrieve the warlock's grimoire and finish the ritual to summon a voidwalker.>_
Investigate the Dead Warlock's Body |q 59970/1 |goto 52.52,45.86
|only if Warlock
step
click Old Grimoire
Recover the Old Grimoire |q 59970/2 |goto 52.60,45.85
|only if Warlock
step
use the Old Grimoire##174947
Summon the Voidwalker with the Grimoire |q 59970/3 |goto 52.60,45.85
|only if Warlock
step
talk Summoned Voidwalker##163246
turnin A Warlock's Bargain##59970 |goto 52.61,45.44
|only if Warlock
step
talk Grunt Throg##167216
accept A Warrior's End##59971 |goto 52.03,55.45
|only if Warrior
step
Follow the path |goto 50.04,54.28 < 20 |only if walking
talk Hjalmar the Undying##162943
|tip He walks around this area on the bridge.
turnin A Warrior's End##59971 |goto 51.48,47.86
accept Hjalmar's Final Execution##59972 |goto 51.48,47.86
|only if Warrior
step
talk Hjalmar the Undying##162943
|tip He walks around this area on the bridge.
Tell him _"I'm ready to fight you, Hjalmar. I'll give you your warrior's death with Execute."_
Slay Hjalmar the Undying with Execute |q 59972/1 |goto 51.48,47.86
|tip Use your "Execute" ability for the final blow to kill him.
|only if Warrior
step
talk Grunt Throg##167216
turnin Hjalmar's Final Execution##59972 |goto 52.03,55.45
|only if Warrior
step
talk Lana Jordan##167221
accept Westward Bound##59948 |goto 52.90,56.45
step
Watch the dialogue
talk Lana Jordan##167225
|tip She runs to this location.
turnin Westward Bound##59948 |goto 51.11,59.51
accept Who Lurks in the Pit##59949 |goto 51.11,59.51
step
Run down the spiral ramp and enter the cave |goto 51.03,60.45 < 7 |walk
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto 52.05,60.01 |count 1
step
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto 50.28,58.69 |count 2
step
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto 49.69,61.95 |count 3
step
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto 51.97,60.72 |count 4
step
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 59949/1 |goto 50.89,58.10 |count 5
step
kill Hrun the Exiled##156900
|tip Inside the cave.
Defeat Hrun to Rescue Crenna Earth-Daughter |q 59949/2 |goto 47.41,60.48
step
Watch the dialogue
|tip Inside the cave.
talk Crenna Earth-Daughter##167250
|tip She will take you out of the cave.
Ride Crenna Earth-Daughter to Escape |q 59949/3 |goto 47.78,60.28
step
talk Warlord Breka Grimaxe##167212
turnin Who Lurks in the Pit##59949 |goto 52.18,55.35
step
talk Crenna Earth-Daughter##166575
accept A Druid's Form##59951 |goto 52.32,55.43
|only if Druid
step
click Druid Stone
Commune with the Druid Stone |q 59951/1 |goto 45.38,49.24
|only if Druid
step
talk Crenna Earth-Daughter##167473
turnin A Druid's Form##59951 |goto 45.50,49.27
|only if Druid
step
talk Shuja Grimaxe##167219
accept The Harpy Problem##59943 |goto 53.79,52.18
step
talk Lightspawn##157114
accept Freeing the Light##54933 |goto 58.19,50.21
step
click Ritual Pedestal
Disperse the First Necrotic Energy |q 54933/1 |goto 57.44,49.69
step
click Ritual Pedestal
Disperse the Second Necrotic Energy |q 54933/2 |goto 58.47,49.17
step
click Ritual Pedestal
Disperse the Third Necrotic Energy |q 54933/3 |goto 58.99,50.66
step
click Ritual Pedestal
Disperse the Fourth Necrotic Energy |q 54933/4 |goto 57.84,51.19
step
talk Daelya Twilightsbane##167179
Ask her _"What does the Light wish of me?"_
Speak with the Ghost Paladin |q 59958/1 |goto 57.57,52.21
|only if Paladin
step
talk Daelya Twilightsbane##167179
turnin A Paladin's Service##59958 |goto 57.57,52.21
accept The Divine's Shield##60174 |goto 57.57,52.21
|only if Paladin
step
Use Divine Shield |q 60174/1
|tip Use your "Divine Shield" ability.
|tip HURRY in the next step.
|only if Paladin
step
click Necrotic Altar
Destroy the Necrotic Altar |q 60174/2 |goto 57.15,52.66
|only if Paladin
step
talk Daelya Twilightsbane##167179
turnin The Divine's Shield##60174 |goto 57.57,52.21
|only if Paladin
step
Watch the dialogue
talk Lightspawn##157114
turnin Freeing the Light##54933 |goto 58.19,50.21
step
talk Bo##167291
turnin The Harpy Problem##59943 |goto 56.93,46.23
accept Harpy Culling##59945 |goto 56.93,46.23
accept Purge the Totems##59946 |goto 56.93,46.23
step
talk Shuja Grimaxe##167290
accept The Rescue of Herbert Gloomburst##59944 |goto 56.82,46.18
stickystart "Slay_Harpies_And_Cohorts"
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto 58.21,44.49 |count 1
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto 58.85,42.94 |count 2
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto 61.23,41.30 |count 3
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto 59.00,39.08 |count 4
step
click Harpy Totem
Burn the Harpy Totem |q 59946/1 |goto 57.17,42.21 |count 5
step
talk Herbert Gloomburst##167298
Tell him _"I'll fight the harpies that come. Can you use your magic to break free?"_
Kill the enemies that attack in waves
|tip Your allies will help you fight.
kill Bloodbeak##153964
|tip It looks like a large bird that flies down and attacks you.
Rescue Herbert Gloomburst |q 59944/1 |goto 54.29,41.61
step
label "Slay_Harpies_And_Cohorts"
Kill enemies around this area
Slay #10# Harpies and Cohorts |q 59945/1 |goto 57.17,42.21
step
talk Herbert Gloomburst##167182
turnin The Rescue of Herbert Gloomburst##59944 |goto 56.91,46.14
step
talk Bo##167291
turnin Harpy Culling##59945 |goto 56.94,46.24
turnin Purge the Totems##59946 |goto 56.94,46.24
step
talk Shuja Grimaxe##167290
accept Message to Base##59947 |goto 56.83,46.18
step
talk Warlord Breka Grimaxe##167212
turnin Message to Base##59947 |goto 52.18,55.34
step
talk Mithdran Dawntracker##167215
accept A Hunter's Trap##59952 |goto 52.56,55.43
|only if Hunter
step
talk Herbert Gloomburst##167309
|tip He runs to this location.
Ask him _"Herbert, do you have an ice mote I could have?"_
Receive an Ice Mote from Herbert Gloomburst |q 59952/1 |goto 52.16,55.48
|only if Hunter
step
click Rusted Chains
collect Rusted Chain##175981 |q 59952/2 |goto 52.24,53.03
|only if Hunter
step
click Old Spring
collect Old Spring##175980 |q 59952/3 |goto 51.83,51.63
|only if Hunter
step
talk Mithdran Dawntracker##167215
turnin A Hunter's Trap##59952 |goto 52.56,55.43
accept Hunting the Stalker##59953 |goto 52.56,55.43
|only if Hunter
step
cast Freezing Trap##187650
Watch the dialogue
Capture the Stalker |q 59953/1 |goto 52.40,54.36
|only if Hunter
step
Watch the dialogue
talk Mithdran Dawntracker##167215
|tip He walks back to this location.
turnin Hunting the Stalker##59953 |goto 52.56,55.44
accept The Art of Taming##60162 |goto 52.56,55.44
|only if Hunter
step
cast Dismiss Pet##2641
Temporarily Dismiss Your Current Pet |q 60162/1 |goto 52.56,55.44
|only if Hunter
step
talk Mithdran Dawntracker##167215
Tell him _"I'm ready to tame my pet, call them out."_
Watch the dialogue
cast Tame Beast##1515
|tip Cast it on the beast that appears nearby.
Speak with Mithdran to Summon and Tame Your New Pet |q 60162/2 |goto 52.56,55.44
|only if Hunter
step
talk Mithdran Dawntracker##167215
Tell him _"I'd like to stable my pet here."_
Speak with Mithdran to Learn About Pet Stables |q 60162/3 |goto 52.56,55.44
|only if Hunter
step
talk Mithdran Dawntracker##167215
turnin The Art of Taming##60162 |goto 52.56,55.44
|only if Hunter
step
talk Herbert Gloomburst##167309
accept A Mage's Knowledge##59954 |goto 52.16,55.49
|only if Mage
step
click Herbert's Spellbook
|tip Underwater.
Recover Herbert's Book from the Lake |q 59954/1 |goto 51.95,49.84
|only if Mage
step
talk Herbert Gloomburst##167309
turnin A Mage's Knowledge##59954 |goto 52.16,55.49
|only if Mage
step
Watch the dialogue
talk Herbert Gloomburst##167309
accept The Best Way to Use Sheep##59955 |goto 52.16,55.49
|only if Mage
step
talk Herbert Gloomburst##167309
Tell him _"I'm ready to practice polymorph."_
Speak with Herbert to Begin Sparring |q 59955/1 |goto 52.16,55.49
|only if Mage
step
Practice Polymorph with Throg |q 59955/2 |goto 53.27,54.12
|tip Use your "Polymorph" ability on Grunt Throg.
|tip Attack him when Herbert tells you to.
|only if Mage
step
talk Meredy Huntswell##156886
turnin The Best Way to Use Sheep##59955 |goto 52.16,55.49
|only if Mage
step
talk Bo##167308
accept A Monk's Focus##59956 |goto 52.03,55.21
|only if Monk
step
talk Bo##167308
Tell him _"I'm ready, let's begin to meditate."_
Watch the dialogue
Meditate with Bo |q 59956/1 |goto 52.62,49.49
|only if Monk
step
talk Bo##167308
turnin A Monk's Focus##59956 |goto 52.62,49.49
accept One Last Spar##59957 |goto 52.62,49.49
|only if Monk
step
kill Bo##167537
|tip Use your "Touch of Death" ability on him when he has lower health than you.
|tip You will see the ability glow on your action bar when you are able to use it.
Use Touch of Death on Bo |q 59957/1 |goto 53.48,49.92
|only if Monk
step
talk Warlord Breka Grimaxe##167212
turnin One Last Spar##59957 |goto 52.18,55.34
|only if Monk
step
talk Warlord Breka Grimaxe##167212
accept To Darkmaul Citadel##59975 |goto 52.17,55.34
step
click Danger Sign##330627
accept Killclaw the Terrible##56839 |goto Exile's Reach/0 48.76,54.24
step
kill Killclaw the Terrible##153266 |q 56839/1 |goto 46.19,55.09
|tip He looks like a large elite bear.
|tip He walks around this area.
|tip If you have trouble, try to find someone to help you, or skip the quest.
step
Enter the cave |goto 44.28,52.79 < 20 |walk
click Hidden Treasure Chest##155733
|tip Inside the cave.
|tip He respawns quickly, so leave the valley when you've looted the chest.
turnin Killclaw the Terrible##56839 |goto 43.45,51.06
step
Leave Killclaw's Lair |goto 47.88,54.28 < 40 |only if walking and subzone("Killclaw's Lair")
talk Warlord Breka Grimaxe##167596
|tip She runs to this location.
turnin To Darkmaul Citadel##59975 |goto 48.95,49.33
accept Right Beneath Their Eyes##59978 |goto 48.95,49.33
step
talk Herbert Gloomburst##167598
Tell him _"I'm ready, transform me into an ogre and I'll sneak into their citadel."_
Watch the dialogue
Ask Herbert to Perform Ogre Transformation Spell |q 59978/1 |goto 48.93,49.46
step
Enter Darkmaul Citadel |q 59978/2 |goto 45.66,44.57
step
Find the Ogre Cooking Area |q 59978/3 |goto 45.69,37.57
step
Wave to Gor'groth |script DoEmote("WAVE") |q 59978/4 |goto 45.69,37.57
|tip Perform the "/wave" emote while targeting Gor'groth.
step
Reach the Citadel Entrance |q 59978/6 |goto 41.04,32.92
step
Watch the dialogue
talk Warlord Breka Grimaxe##167633
turnin Right Beneath Their Eyes##59978 |goto 40.29,32.46
accept Controlling their Stones##59981 |goto 40.29,32.46
step
talk Shuja Grimaxe##167632
accept Like Ogres to the Slaughter##59979 |goto 40.25,32.56
step
talk Herbert Gloomburst##167631
accept Catapult Destruction##59980 |goto 40.36,32.42
stickystart "Slay_Ogres"
step
Enter the building |goto 44.20,36.39 < 10 |walk
kill Wug##153582
|tip Inside the building.
Recover Wug's Ward Stone |q 59981/2 |goto 44.16,37.34
step
Enter the building |goto 47.17,34.94 < 10 |walk
kill Jugnug##153583
|tip Inside the building.
Recover Jugnug's Ward Stone |q 59981/1 |goto 47.55,34.19
step
click Catapult
Destroy the Catapult |q 59980/1 |goto 47.01,36.55 |count 1
step
click Catapult
Destroy the Catapult |q 59980/1 |goto 46.04,39.66 |count 2
step
click Catapult
Destroy the Catapult |q 59980/1 |goto 45.08,41.59 |count 3
step
click Catapult
Destroy the Catapult |q 59980/1 |goto 43.61,42.80 |count 4
step
Enter the building |goto 43.35,41.15 < 10 |walk
kill Grunk##153581
|tip Inside the building.
Recover Grunk's Ward Stone |q 59981/3 |goto 42.82,40.97
step
label "Slay_Ogres"
Kill Ogre enemies around this area
Slay #8# Ogres |q 59979/1 |goto 45.75,39.09
step
talk Herbert Gloomburst##167631
turnin Catapult Destruction##59980 |goto 40.36,32.43
step
talk Shuja Grimaxe##167632
turnin Like Ogres to the Slaughter##59979 |goto 40.25,32.56
step
click Ogre Runestone
Disable the Rune Holding Warlord Thunderwalker |q 59981/4 |goto 39.96,32.44 |count 1
step
click Ogre Runestone
Disable the Rune Holding Warlord Thunderwalker |q 59981/4 |goto 39.75,32.07 |count 2
step
click Ogre Runestone
Disable the Rune Holding Warlord Thunderwalker |q 59981/4 |goto 40.05,31.98 |count 3
step
Watch the dialogue
talk Warlord Mulgrin Thunderwalker##167183
turnin Controlling their Stones##59981 |goto 39.93,32.15
accept Dungeon: Darkmaul Citadel##59984 |goto 39.93,32.15
step
Open the Group Finder
|tip Press "I" to open the Group Finder.
Enter the Darkmaul Citadel Dungeon |q 59984/1
step
_Inside the Dungeon:_
kill Ravnyr##156501
|tip He is the final boss of the dungeon.
|tip Follow Warlord Grimaxe through the dungeon.
Stop Gor'groth's Final Ritual |q 59984/2
step
_Inside the Dungeon:_
talk Warlord Grimaxe##167663
|tip Nearby, after killing the final boss.
Tell her _"Let's get out of the citadel and figure out how to get back home."_
Speak with Warlord Grimaxe to Leave Darkmaul Citadel |q 59984/3
step
Watch the dialogue
talk Warlord Breka Grimaxe##167675
turnin Dungeon: Darkmaul Citadel##59984 |goto Exile's Reach/0 39.65,31.98
accept An End to Beginnings##59985 |goto Exile's Reach/0 39.65,31.98
step
Watch the dialogue
clicknpc Horde Wyvern##167669
Ride the Horde Wyvern Back to Orgrimmar |q 59985/1 |goto 40.38,32.63
step
Reach Orgrimmar |offtaxi |q 59985
step
talk Warlord Breka Grimaxe##168431
turnin An End to Beginnings##59985 |goto Orgrimmar/1 52.51,88.11
accept Welcome to Orgrimmar##60343 |goto Orgrimmar/1 52.51,88.11 |or |next "Welcome_To_Orgrimmar" |noautoaccept
_Or_
Tell her _"I know my way around Orgrimmar. <Skip the city tour and choose a Timewalking Campaign.>"_
accept Adventurers Wanted: Chromie's Call##62568 |goto Orgrimmar/1 52.51,88.11 |or |next "Leveling Guides\\Starter Guides\\Chromie Time" |noautoaccept
step
label "Welcome_To_Orgrimmar"
talk Cork Fizzlepop##168441
turnin Welcome to Orgrimmar##60343 |goto 51.93,85.39
accept Finding Your Way##60344 |goto 51.93,85.39
step
talk Orgrimmar Grunt##168459
Tell them _"Stable Master"_
Ask a Guard for Directions to the Stable Master |q 60344/1 |goto 52.47,84.22
step
talk Cork Fizzlepop##168441
Tell him _"Let's head to the stables."_
Speak with Cork Fizzlepop |q 60344/2 |goto 52.25,84.41
step
Watch the dialogue
|tip Follow Cork Fizzlepop as he walks.
|tip Stay close to him.
|tip He eventually walks to this location.
Follow Cork Fizzlepop to the Stable Master |q 60344/3 |goto 62.02,33.31
step
talk Rohaka Tuskmaul##168540
turnin Finding Your Way##60344 |goto 61.43,32.77
accept License to Ride##60345 |goto 61.43,32.77
step
talk Kildar##4752
Learn the Apprentice Riding Skill |q 60345/1 |goto 61.32,34.59
step
talk Rohaka Tuskmaul##168540
turnin License to Ride##60345 |goto 61.43,32.77
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60346
|only if Druid
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Telotha Pinegrove##168553
|tip Inside the building.
Speak with Telotha Pinegrove to learn about specializations |q 60346/1 |goto 72.93,43.25
|only if Druid
step
Activate a Combat Specialization |q 60346/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Druid
step
talk Telotha Pinegrove##168553
|tip Inside the building.
turnin What's Your Specialty?##60346 |goto 72.93,43.25
|only if Druid
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60347
|only if Hunter
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Tamanji##168551
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Tamanji to Learn About Specializations |q 60347/1 |goto 73.90,43.59
|only if Hunter
step
Activate a Combat Specialization |q 60347/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Hunter
step
talk Tamanji##168551
|tip Inside the building.
turnin What's Your Specialty?##60347 |goto 73.90,43.59
|only if Hunter
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60348
|only if Mage
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Feenix Arcshine##168626
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Feenix Arcshin to Learn About Specializations |q 60348/1 |goto 74.69,43.60
|only if Mage
step
Activate a Combat Specialization |q 60348/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Mage
step
talk Feenix Arcshine##168626
|tip Inside the building.
turnin What's Your Specialty?##60348 |goto 74.69,43.60
|only if Mage
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60349
|only if Monk
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Huinli Wingpaw##168619
|tip Inside the building.
Tell her _"Tell me about my specialization options."_
Speak with Huinli Wingpaw to Learn About Specializations |q 60349/1 |goto 75.68,43.58
|only if Monk
step
Activate a Combat Specialization |q 60349/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Monk
step
talk Huinli Wingpaw##168619
|tip Inside the building.
turnin What's Your Specialty?##60349 |goto 75.68,43.58
|only if Monk
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60350
|only if Paladin
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Avaros Dawnglaive##168597
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Avaros Dawnglaive to Learn About Specializations |q 60350/1 |goto 73.19,47.42
|only if Paladin
step
Activate a Combat Specialization |q 60350/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Paladin
step
talk Avaros Dawnglaive##168597
|tip Inside the building.
turnin What's Your Specialty?##60350 |goto 73.19,47.42
|only if Paladin
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60351
|only if Priest
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Martin Goodchilde##168621
|tip Inside the building.
Tell her _"Tell me about my specialization options."_
Speak with Martin Goodchilde to Learn About Specializations |q 60351/1 |goto 72.64,46.92
|only if Priest
step
Activate a Combat Specialization |q 60351/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Priest
step
talk Martin Goodchilde##168621
|tip Inside the building.
turnin What's Your Specialty?##60351 |goto 72.64,46.92
|only if Priest
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60352
|only if Rogue
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Veruca Darkstream##164946
|tip Inside the building.
Tell her _"Tell me about my specialization options."_
Speak with Veruca Darkstream to Learn About Specializations |q 60352/1 |goto 75.46,47.50
|only if Rogue
step
Activate a Combat Specialization |q 60352/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Rogue
step
talk Veruca Darkstream##164946
|tip Inside the building.
turnin What's Your Specialty?##60352 |goto 75.46,47.50
|only if Rogue
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##59592
|only if Shaman
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Hretar Riverspeaker##168628
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Mulric Boldrock to Learn About Specializations |q 59592/1 |goto 73.40,43.09
|only if Shaman
step
Activate a Combat Specialization |q 59592/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Shaman
step
talk Hretar Riverspeaker##168628
|tip Inside the building.
turnin What's Your Specialty?##59592 |goto 73.40,43.09
|only if Shaman
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60355
|only if Warlock
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Kazak Darkscream##168623
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Kazak Darkscream to Learn About Specializations |q 60355/1 |goto 74.62,47.42
|only if Warlock
step
Activate a Combat Specialization |q 60355/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Warlock
step
talk Kazak Darkscream##168623
|tip Inside the building.
turnin What's Your Specialty?##60355 |goto 74.62,47.42
|only if Warlock
step
_Next to you:_
talk Cork Fizzlepop##168545
accept What's Your Specialty?##60357
|only if Warrior
step
Enter the building |goto 72.29,45.16 < 10 |walk
talk Gormok Ogrefist##168596
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Gormok Ogrefist to Learn About Specializations |q 60357/1 |goto 73.76,47.12
|only if Warrior
step
Activate a Combat Specialization |q 60357/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Warrior
step
talk Gormok Ogrefist##168596
|tip Inside the building.
turnin What's Your Specialty?##60357 |goto 73.76,47.12
|only if Warrior
step
_Next to you:_
talk Cork Fizzlepop##168545
accept Home Is Where the Hearth Is##60359
step
Enter the building |goto 70.34,48.98 < 10 |walk |only if not subzone("The Wyvern's Tail")
talk Innkeeper Nufa##46642
|tip Inside the building.
Choose _"Make this inn your home."_
Make the Wyvern's Tail Your Home |q 60359/1 |goto 71.31,49.95
step
talk Innkeeper Nufa##46642
|tip Inside the building.
turnin Home Is Where the Hearth Is##60359 |goto 71.31,49.95
step
talk Shuja Grimaxe##168771
|tip She runs to this location.
|tip Inside the building.
accept An Urgent Meeting##60360 |goto 70.87,49.54
step
talk Cork Fizzlepop##168441
|tip Inside the building.
Tell him _"The Warchief has summoned me to Grommash Hold."_
Speak with Cork Fizzlepop |q 60360/1 |goto 71.53,49.51
step
Enter the building |goto 49.93,75.72 < 10 |walk
Find Warlord Breka Grimaxe at Grommash Hold |q 60360/2 |goto 48.26,71.39
|tip Inside the building.
step
talk Warlord Breka Grimaxe##168431
|tip Inside the building.
turnin An Urgent Meeting##60360 |goto 48.26,71.39
accept Battle for Azeroth: Mission Statement##60361 |goto 48.26,71.39
step
Watch the dialogue
|tip Inside the building.
Meet with Warchief Sylvanas Windrunner |q 60361/1 |goto Orgrimmar/1 48.26,71.38
step
talk Nathanos Blightcaller##168808
|tip Inside the building.
Tell him _"I'll make my way to a wyvern to rendezvous with Princess Talanji's boat."_
Speak with Nathanos Blightcaller |q 60361/2 |goto 48.51,71.20
step
talk Warlord Breka Grimaxe##168431
|tip Inside the building.
Tell her _"I have received my order. I must go."_
Speak with Warlord Breka Grimaxe |q 60361/3 |goto 48.26,71.39
step
clicknpc Sturdy Wyvern##174453
Watch the dialogue
Ride the Wyvern to Princess Talanji's Boat |q 60361/4 |goto 51.32,77.43
step
Travel to Zuldazar |complete zone("Zuldazar") |q 60361
step
talk Nathanos Blightcaller##121210
turnin Battle for Azeroth: Mission Statement##60361 |goto Zuldazar/0 57.96,62.76
step
talk Princess Talanji##132332
accept Welcome to Zuldazar##46957 |goto 57.95,62.46
step
Watch the dialogue
|tip Follow Princess Talanji as she walks.
|tip She eventually walks to this location.
Follow Princess Talanji |q 46957/1 |goto Dazar'alor/0 49.98,82.60
step
talk General Jakra'zet##122661
turnin Welcome to Zuldazar##46957 |goto 49.98,82.33
accept Rastakhan##46930 |goto 49.98,82.33
step
talk Ripa the Wind Ripper##121252
fpath Port of Zandalar |goto 52.10,90.12
step
clicknpc Enforcer's Pterrordax##135438
Ride the Enforcer's Pterrordax to the Throne |q 46930/1 |goto 49.98,82.17
step
Watch the dialogue
Ride to the Throne |complete subzone("The Golden Throne") |goto 48.03,44.45 |q 46930 |notravel
step
talk Princess Talanji##135440
|tip On top of the building.
Tell her _"Take me to King Rastakhan."_
Speak with Princess Talanji |q 46930/2 |goto 48.82,44.64
step
Watch the dialogue
talk King Rastakhan##120740
|tip On top of the building.
turnin Rastakhan##46930 |goto 49.91,42.72
accept Speaker of the Horde##46931 |goto 49.91,42.72
step
Locate Zolani |goto 49.47,44.66 < 10 |c |q 46931
step
Watch the dialogue
|tip Follow Zolani as she walks.
|tip She eventually walks to this location inside the building.
Follow Zolani |q 46931/1 |goto Dazar'alor/2 25.91,73.81
step
click Horde Banner
|tip Ride the elevator down, or jump down a level.
Summon the Horde |q 46931/2 |goto Dazar'alor/0 49.93,39.49
step
Enter the building |goto 49.94,42.14 < 10 |walk
Watch the dialogue
|tip Downstairs inside the building.
Explore the Hall of Ancient Paths |q 46931/4 |goto Dazar'alor/1 66.92,72.06
step
Watch the dialogue
|tip Downstairs inside the building.
Explore the Great Seal |q 46931/3 |goto 49.09,70.79
step
Watch the dialogue
|tip Downstairs inside the building.
Explore the Royal Treasury |q 46931/5 |goto Dazar'alor/0 48.76,45.89 |notravel
step
talk Princess Talanji##133050
|tip Inside the building.
turnin Speaker of the Horde##46931 |goto Dazar'alor/2 41.31,66.65
step
talk Paku'ai Rokota##122689
fpath The Great Seal |goto Dazar'alor/0 51.92,41.20
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Nightborne Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Azuremyst",
condition_valid=function() return raceclass('Nightborne') and not raceclass('DeathKnight') end,
condition_valid_msg="Nightborne only.",
condition_suggested=function() return raceclass('Nightborne') and level < 10.5 and not completedq(50303) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk First Arcanist Thalyssra##131326
accept For the Horde##49933 |goto Suramar/0 59.33,85.53
step
talk Ambassador Blackguard##133407
turnin For the Horde##49933 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##50303 |goto Orgrimmar/1 39.40,79.56
step
click Warchief's Command Board
Find the Warchief's Command Board |q 50303/1 |goto 49.67,76.47
step
talk Melitier Vahlouran##131328
turnin Stranger in a Strange Land##50303 |goto 49.79,76.41
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Highmountain Tauren Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Azuremyst",
condition_valid=function() return raceclass('HighmountainTauren') and not raceclass('DeathKnight') end,
condition_valid_msg="Highmountain Tauren only.",
condition_suggested=function() return raceclass('HighmountainTauren') and level < 10.5 and not completedq(50319) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Mayla Highmountain##93826
|tip Downstairs inside the building.
accept For the Horde##49773 |goto Thunder Totem/6 54.81,63.23
step
talk Ambassador Blackguard##133407
turnin For the Horde##49773 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##50319 |goto Orgrimmar/1 39.40,79.56
step
click Warchief's Command Board
Find the Warchief's Command Board |q 50319/1 |goto 49.67,76.47
step
talk Halian Shlavahawk##131201
turnin Stranger in a Strange Land##50319 |goto 49.79,76.41
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Mag'har Orc Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Azuremyst",
condition_valid=function() return raceclass('MagharOrc') and not raceclass('DeathKnight') end,
condition_valid_msg="Mag'har Orc only.",
condition_suggested=function() return raceclass('MagharOrc') and level < 10.5 and not completedq(53502) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Overlord Geya'rah##143845
accept For the Horde##51485 |goto Orgrimmar/1 70.45,44.52
step
talk Ambassador Blackguard##133407
turnin For the Horde##51485 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##53502 |goto Orgrimmar/1 39.40,79.56
step
click Warchief's Command Board
Find the Warchief's Command Board |q 53502/1 |goto 49.67,76.47
step
talk Limbflayer Lasha##143979
turnin Stranger in a Strange Land##53502 |goto 49.79,76.41
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Zandalari Troll Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Azuremyst",
condition_valid=function() return raceclass('ZandalariTroll') and not raceclass('DeathKnight') end,
condition_valid_msg="Zandalari Troll only.",
condition_suggested=function() return raceclass('ZandalariTroll') and level < 10.5 and not completedq(55138) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Queen Talanji##146335
accept For the Horde##55137 |goto Dazar'alor/0 49.93,46.60
step
click Portal to Orgrimmar
Take the Portal to Orgrimmar |q 55137/1 |goto 49.94,43.85
step
talk Ambassador Blackguard##133407
turnin For the Horde##55137 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##55138 |goto Orgrimmar/1 39.40,79.56
step
click Warchief's Command Board
Find the Warchief's Command Board |q 55138/1 |goto 49.67,76.47
step
talk Natal'hakata##150909
turnin Stranger in a Strange Land##55138 |goto 49.79,76.41
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Vulpera Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Azuremyst",
condition_valid=function() return raceclass('Vulpera') and not raceclass('DeathKnight') end,
condition_valid_msg="Vulpera only.",
condition_suggested=function() return raceclass('Vulpera') and level == 10 and not completedq(58124) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Nilsa##160452
accept For the Horde##58122 |goto Orgrimmar/1 64.64,46.51
step
talk Ambassador Blackguard##133407
turnin For the Horde##58122 |goto Orgrimmar/1 39.40,79.56
accept Stranger in a Strange Land##58124 |goto Orgrimmar/1 39.40,79.56
step
click Warchief's Command Board
Find the Warchief's Command Board |q 58124/1 |goto 49.67,76.47
step
talk Nilsa##160452
turnin Stranger in a Strange Land##58124 |goto 64.64,46.51
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Race Death Knight Starter",{
author="support@zygorguides.com",
description="This guide will walk you through completing the brief introduction for Pandaren and Allied Race Death Knights.",
condition_suggested=function() return raceclass{'pandaren','highmountaintauren','zandalaritroll','nightborne','magharorc','vulpera'} and raceclass('DeathKnight') and level < 10.5 end,
condition_suggested_exclusive=true,
condition_valid="suggested",
condition_valid_msg="You must be a Pandaren or Allied Race Death Knight to complete this guide!",
condition_end=function() return completedq(58903) end,
},[[
step
talk The Lich King##163016
accept Death's Power Grows##58877 |goto The Frozen Throne/0 49.51,90.71
step
Use the _"Swear Fealty"_ ability
|tip It appears as a button on the screen.
Swear Fealty |q 58877/1 |goto 49.51,90.71
step
talk The Lich King##163016
turnin Death's Power Grows##58877 |goto 49.51,90.71
accept Defender of Azeroth##58903 |goto 49.51,90.71
step
talk Highlord Darion Mograine##161709
Tell him _"Reporting for duty."_
Speak with Highlord Darion Mograine |q 58903/1 |goto 50.70,71.16
step
click Death Gate
Use the Death Gate |q 58903/3 |goto 49.97,38.80
step
click Warchief's Command Board
Use the Warchief's Command Board |q 58903/4 |goto Orgrimmar/0 49.66,76.46
step
Click the Complete Quest Box:
turnin Defender of Azeroth##58903
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Chromie Time",{
author="support@zygorguides.com",
description="\nThis guide will assist you in changing the expansion you will\n"..
"\nlevel up in by speaking with Chromie.\n",
condition_suggested=function() return level >= 10 and level <= 50 end,
startlevel=10.0,
endlevel=50.0,
image=ZGV.IMAGESDIR.."BfAIntro",
},[[
step
_Are You Eligible For Chromie Time?_
|tip If you have another character who reached max level previously, you are eligible for Chromie Time.
|tip If not, you must level through the Battle for Azeroth zones before moving on to the Dragon Isles.
|tip Chromie Time allows you to choose a different expansion to level up to 60 in, before moving on to the Dragon Isles.
No - Level in Battle for Azeroth Zones	|confirm	|or	|next "Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Zuldazar (10-60)"
Yes - Choose a Different Expansion	|confirm	|or	|next "Chromie_Time_Start"
step
label "Chromie_Time_Start"
talk Chromie##167032
Tell her _"Select a timeline."_
_Or_
Tell her _"I'd like to return to the present timeline, Chromie."_
|tip If you've already selected a different expansion, but want to return to leveling in the Battle for Azeroth zones, choose this.
Click Here After Choosing an Expansion |confirm |goto Orgrimmar/1 40.82,80.14
step
_Which Expansion Did You Choose?_
Battle for Azeroth	|confirm	|or	|next "Leveling Guides\\Battle for Azeroth (10-60)\\Zandalar\\Zuldazar (10-60)"
The Cataclysm		|confirm	|or	|next "The_Cataclysm"
Burning Crusade		|confirm	|or	|next "Burning_Crusade"
Wrath of the Lich King	|confirm	|or	|next "Wrath_Of_The_Lich_King"
Mists of Pandaria	|confirm	|or	|next "Mists_Of_Pandaria"
Warlords of Draenor	|confirm	|or	|next "Warlords_Of_Draenor"
Legion			|confirm	|or	|next "Legion"
step
label "The_Cataclysm"
accept Onward to Adventure: Kalimdor##60887
|tip You will accept this quest automatically.
step
click Warchief's Command Board
Find the Warchief's Command Board |q 60887/1 |goto Orgrimmar/1 49.67,76.47
step
talk Chromie##172387
turnin Onward to Adventure: Eastern Kingdoms##60891 |goto 49.02,76.46
step
_Choose a Leveling Zone:_
|tip Browse your world map for Eastern Kingdoms and Kalimdor.
|tip Choose any zone that fits your character's level, and load the Leveling guide for that zone using the guide menu.
|tip Keep doing this until you reach level 50.
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Burning_Crusade"
accept To Outland!##60123 |or
accept Onward to Adventure: Outland##60959 |or
|tip You will accept one of these quests automatically.
step
Enter the building |goto Orgrimmar/1 53.48,90.40 < 10 |walk
talk Thrallmar Mage##150131
|tip Downstairs inside the building.
Tell him _"I must report to the Dark Portal."_
Talk to the Thrallmar Mage |q 60123/1 |goto Orgrimmar/1 57.15,90.71
|only if haveq(60123)
step
Go Through the Dark Portal |q 60123/2 |goto Blasted Lands/0 55.01,54.17
|tip Walk into the huge green swirling portal.
|only if haveq(60123)
step
Travel to Hellfire Peninsula |q 60959/1 |goto Hellfire Peninsula/0 87.00,49.00
|only if haveq(60959)
step
Click the Complete Quest Box:
turnin To Outland!##60123 |only if haveq(60123) or completedq(60123)
turnin Onward to Adventure: Outland##60959 |only if haveq(60959) or completedq(60959)
step
_Begin Leveling in Burning Crusade:_
Click Here to Load the "Hellfire Peninsula (10-60)" Leveling Guide |confirm |next "Leveling Guides\\The Burning Crusade (10-60)\\Hellfire Peninsula (10-60)"
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Wrath_Of_The_Lich_King"
accept To Northrend!##60097			|or |only if haveq(60097)
accept Onward to Adventure: Northrend##60963	|or |only if haveq(60963)
|tip You will accept one of these quests automatically.
step
_Which Zone Do You Want to Start In?_
|tip You can start leveling in Wrath of the Lich King in either Borean Tundra or Howling Fjord.
|tip It doesn't matter, just preference.
Borean Tundra |confirm |next "Borean_Tundra"
Howling Fjord |confirm |next "Howling_Fjord"
step
label "Borean_Tundra"
talk Auctioneer Ralinza##44867
|tip Inside the building.
buy Overcharged Capacitor##39682 |n
|tip This is needed for a future quest.
|tip If you can't get one, you can skip it.
collect Overcharged Capacitor##39682 |goto Orgrimmar/1 53.97,72.99 |q 11650 |future
step
Locate the Zeppelin to Borean Tundra |goto 44.73,62.33 < 10 |c |q 60097
|tip You may have to wait for the zeppelin to arrive.
|tip At the top of the tower.
|only if haveq(60097)
step
Take the Zeppelin to Northrend |q 60097/1
|tip Ride the zeppelin to Borean Tundra.
|only if haveq(60097)
step
Travel to Northrend |q 60963/1 |goto Borean Tundra/0 41.62,53.99
|only if haveq(60963)
step
Click the Complete Quest Box:
turnin To Northrend!##60097 |only if haveq(60097) or completedq(60097)
turnin Onward to Adventure: Northrend##60963 |only if haveq(60963) or completedq(60963)
step
_Begin Leveling in Wrath of the Lich King:_
Click Here to Load the "Borean Tundra (10-60)" Leveling Guide |confirm |next "Leveling Guides\\Wrath of the Lich King (10-60)\\Borean Tundra (10-60)"
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Howling_Fjord"
Locate the Zeppelin to Borean Tundra |goto 44.73,62.33 < 10 |c |q 60097
|tip You will sail to Borean Tundra, then fly to Howling Fjord.
|tip You may have to wait for the zeppelin to arrive.
|tip At the top of the tower.
|only if haveq(60097)
step
Take the Zeppelin to Northrend |q 60097/1
|tip Ride the zeppelin to Borean Tundra.
|only if haveq(60097)
step
Travel to Northrend |q 60963/1 |goto Howling Fjord/0 78.54,28.98
|only if haveq(60963)
step
Click the Complete Quest Box:
turnin To Northrend!##60097 |only if haveq(60097) or completedq(60097)
turnin Onward to Adventure: Northrend##60963 |only if haveq(60963) or completedq(60963)
step
_Begin Leveling in Wrath of the Lich King:_
Click Here to Load the "Howling Fjord (10-60)" Leveling Guide |confirm |next "Leveling Guides\\Wrath of the Lich King (10-60)\\Howling Fjord (10-60)"
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Mists_Of_Pandaria"
accept To Pandaria!##60126
|tip You will accept this quest automatically.
step
Visit Grommash Hold |q 60126/1 |goto Orgrimmar/1 49.88,75.55
step
talk General Nazgrim##54870
|tip Inside the building.
turnin To Pandaria!##60126 |goto 48.67,70.36
accept All Aboard!##31853 |goto 48.67,70.36
step
talk Doras##3310
Tell him _"I need a flight to Hellscream's Fist."_
Secure a Flight to Hellscream's Fist |invehicle |q 31853 |goto 49.66,59.22
step
Fly to Hellscream's Fist |outvehicle |q 31853
step
talk General Nazgrim##55054
|tip On the flying ship.
Tell her _"I am ready to depart."_
Speak to General Nazgrim on Hellscream's Fist |q 31853/2 |goto Azshara/0 37.88,95.77
step
talk General Nazgrim##55054
turnin All Aboard!##31853 |goto 37.88,95.77
step
_Begin Leveling in Mists of Pandaria:_
Click Here to Load "The Jade Forest (10-60)" Leveling Guide |confirm |next "Leveling Guides\\Pandaria (10-60)\\The Jade Forest (10-60)"
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Warlords_Of_Draenor"
accept Warlords of Draenor: The Dark Portal##34398
|tip You will accept this quest automatically.
step
Enter the building |goto Orgrimmar/1 53.48,90.40 < 10 |walk
talk Vanguard Battlemage##149626
|tip Downstairs inside the building.
Tell her _"I must help Khadgar. Send me to the Blasted Lands!."_
Talk to the Vanguard Battlemage |q 34398/1 |goto Orgrimmar/1 55.82,91.45
|only if haveq(34398)
step
talk Zidormi##141489
Tell her _"Take me back to the present."_
Travel to the Present |complete not ZGV.InPhase("Old Blasted Lands") |goto Blasted Lands/0 48.16,7.28 |q 34398
step
talk Ameri Windblade##85734
fpath Shattered Landing |goto Blasted Lands/0 72.95,48.64
step
talk Archmage Khadgar##78423
Tell him _"FOR AZEROTH!"_
Speak with Archmage Khadgar |q 34398/2 |goto 54.93,50.41
step
talk Archmage Khadgar##78558
turnin Warlords of Draenor: The Dark Portal##34398 |goto Assault on the Dark Portal/0 54.79,48.27
step
_Begin Leveling in Warlords of Draenor:_
Click Here to Load the "Draenor Intro" Leveling Guide |confirm |next "Leveling Guides\\Draenor (10-60)\\Draenor Intro"
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Legion"
accept The Legion Returns##43926 |or
accept Onward to Adventure: Broken Isles##60970 |or
|tip You will accept one of these quests automatically.
step
_Begin Leveling in Legion:_
Click Here to Load the "Death KnightIntro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Death Knight\\Death Knight Intro & Artifacts" |only if DeathKnight
Click Here to Load the "Demon HunterIntro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Demon Hunter\\Demon Hunter Intro & Artifacts" |only if DemonHunter
Click Here to Load the "Druid Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Druid\\Druid Intro & Artifacts" |only if Druid
Click Here to Load the "Hunter Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Hunter\\Hunter Intro & Artifacts" |only if Hunter
Click Here to Load the "Mage Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Mage\\Mage Intro & Artifacts" |only if Mage
Click Here to Load the "Monk Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Monk\\Monk Intro & Artifacts" |only if Monk
Click Here to Load the "Paladin Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Paladin\\Paladin Intro & Artifacts" |only if Paladin
Click Here to Load the "Priest Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Priest\\Priest Intro & Artifacts" |only if Priest
Click Here to Load the "Rogue Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Rogue\\Rogue Intro & Artifacts" |only if Rogue
Click Here to Load the "Shaman Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Shaman\\Shaman Intro & Artifacts" |only if Shaman
Click Here to Load the "Warlock Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Warlock\\Warlock Intro & Artifacts" |only if Warlock
Click Here to Load the "Warrior Intro & Artifacts" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-60)\\Warrior\\Warrior Intro & Artifacts" |only if Warrior
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
]])
