local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\The Jade Forest (10-60)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."JadeForest",
next="Leveling Guides\\Pandaria (10-60)\\Valley of the Four Winds (15-60)",
condition_suggested=function() return level >= 10 and level <= 50 and not completedq(30648) end,
startlevel=10,
endlevel=50,
},[[
step
click Hero's Call Board
accept Hero's Call: Jade Forest!##49556 |goto Stormwind City/0 62.25,29.93
|tip You may need to accept several other zone quests to get this to appear.
|tip After choosing Jade Forest, you can abandon the other quests.
|only if not completedq(60125)
step
Visit Stormwind Keep |q 49556/1 |goto Stormwind City/0 81.08,37.34
|only if not completedq(60125)
step
talk Rell Nightwind##55789
turnin Hero's Call: Jade Forest!##49556 |goto 78.95,39.82 |only if not completedq(60125)
accept The Mission##29548 |goto 78.95,39.82
step
talk Loretta Banks##165505
Tell her _"I need a flight to The Skyfire."_
Secure a Flight to The Skyfire |invehicle |q 29548 |goto 77.70,39.26
step
Fly to the Skyfire |outvehicle |q 29548
step
talk Sky Admiral Rogers##66292
|tip On the flying ship.
Tell her _"I am ready to depart."_
Speak to Admiral Rogers on The Skyfire Gunship |q 29548/2 |goto Eastern Kingdoms/0 41.47,70.19
step
talk to Sky Admiral Rogers##66292
|tip On the air ship.
turnin The Mission##29548 |goto The Jade Forest/0 42.03,92.75 |only if haveq(29548) or completedq(29548)
accept Unleash Hell##31732 |goto The Jade Forest/0 42.03,92.75
step
clicknpc Skyfire Gyrocopter##66473
|tip On the air ship.
Control the Skyfire Gyrocopter |invehicle |goto 42.02,92.51 |q 31732
stickystart "Kill_Garroshar_Shredders"
step
Kill Garrosh'ar enemy around this area
|tip Use the abilities on your action bar. |notinsticky
|tip They are on the ground around this area as you fly. |notinsticky
Slay #60# Garrosh'ar Horde |q 31732/1 |goto 44.15,93.64
step
label "Kill_Garroshar_Shredders"
kill 8 Garrosh'ar Shredder##66397 |q 31732/2 |goto 44.15,93.64
|tip Use the abilities on your action bar. |notinsticky
|tip They are on the ground around this area as you fly. |notinsticky
step
Sink the Bladefist Reaper |q 31732/3 |goto 44.18,98.79 |notravel
|tip Use the abilities on your action bar near the ship.
step
Sink the Stygian Scar |q 31732/4 |goto 41.12,100.37 |notravel
|tip Use the abilities on your action bar near the ship.
step
Watch the dialogue
Return to the Skyfire |goto 42.03,92.51 < 10 |c |q 31732 |notravel
step
talk to Sky Admiral Rogers##66292
|tip On the air ship.
turnin Unleash Hell##31732 |goto 42.03,92.75
accept Touching Ground##31733 |goto 42.03,92.75
step
click Skyfire Parachute##240210
|tip On the air ship.
Equip a Skyfire Parachute |q 31733/1 |goto 42.31,92.79
step
Watch the dialogue
Parachute to the Ground |goto 43.52,90.71 < 10 |c |q 31733 |notravel
step
talk Sully 'The Pickle' McLeary##54616
turnin Touching Ground##31733 |goto 43.58,90.70
accept No Plan Survives Contact with the Enemy##30069 |goto 43.58,90.70
accept Welcome Wagons##31734 |goto 43.58,90.70
stickystart "Kill_Garroshar_Grunts"
stickystart "Kill_Garroshar_Gear_Greasers"
step
use Sully's Flaregun##89612
|tip Use it next to Horde War Wagons.
|tip They look like large wooden carts with bone horns and wooden barrels on them on the ground around this area.
Destroy #5# Horde War Wagons |q 31734/1 |goto 44.36,93.99
step
label "Kill_Garroshar_Grunts"
kill 6 Garrosh'ar Grunt##66398 |q 30069/1 |goto 44.36,93.99
step
label "Kill_Garroshar_Gear_Greasers"
kill 6 Garrosh'ar Gear-Greaser##66290 |q 30069/2 |goto 44.36,93.99
step
talk Rell Nightwind##54617
turnin No Plan Survives Contact with the Enemy##30069 |goto 45.17,94.99
turnin Welcome Wagons##31734 |goto 45.17,94.99
accept The Right Tool For The Job##31735 |goto 45.17,94.99
step
use Sully's Flaregun##89624
Destroy the First Barricade |q 31735/1 |goto 45.60,95.21
step
use Sully's Flaregun##89624
Destroy the Second Barricade |q 31735/2 |goto 45.95,95.84
step
Watch the dialogue
Confront Ga'trul |q 31735/3 |goto 46.53,96.37
step
talk Rell Nightwind##54617
turnin The Right Tool For The Job##31735 |goto 46.47,96.30
step
Watch the dialogue
talk Rell Nightwind##54617
accept Envoy of the Alliance##31736 |goto 46.47,96.41
accept The Cost of War##31737 |goto 46.47,96.41
step
kill 10 Sha Haunt##66423 |q 31737/1 |goto 44.52,93.58
step
kill 5 Sha Harbinger##66424 |q 31737/2 |goto 44.52,93.58
step
Find the Leader of Paw'don Village |q 31736/1 |goto 46.25,84.80
step
talk Taran Zhu##67012
turnin The Cost of War##31737 |goto 46.25,84.80
step
talk Sunke Khang##65910
turnin Envoy of the Alliance##31736 |goto 46.26,84.72
accept Pillaging Peons##31738 |goto 46.26,84.72
step
talk Teng Applebloom##64596
accept Priorities!##31739 |goto 46.22,84.68
step
talk Mishka##54614
accept Critical Condition##29552 |goto 46.13,84.57
step
talk Wing Kyo##66023
fpath Paw'Don Village |goto 46.04,85.14
step
Enter the building |goto 44.88,84.57 < 7 |walk
talk Jiayi Applebloom##65907
|tip Inside the building.
home Paw'don Village |goto 44.88,84.34
stickystart "Revive_Wounded_Pilots"
stickystart "Slay_Twinspire_Peons"
step
click Applebloom Cider##215134+
|tip They look like wooden barrels with red rope wrapped around them on the ground around this area.
collect 6 Applebloom Cider##215133 |q 31739/1 |goto 42.67,87.54
step
label "Revive_Wounded_Pilots"
clicknpc Wounded Pilot##61492+
|tip They look like dead human soldiers on the ground around this area.
Revive #6# Wounded Pilots |q 29552/1 |goto 42.67,87.54
step
label "Slay_Twinspire_Peons"
Kill Twinspire enemies around this area
Slay #12# Twinspire Peons |q 31738/1 |goto 42.67,87.54
step
talk Lin Applebloom##66199
turnin Priorities!##31739 |goto 39.55,90.03
accept Koukou's Rampage##31740 |goto 39.55,90.03
step
kill Koukou##66213 |q 31740/1 |goto 39.30,89.75
|tip He walks around this small area.
step
Leave the building |goto 44.88,84.56 < 5 |walk
talk Mishka##54614
turnin Critical Condition##29552 |goto 46.14,84.56
step
talk Sunke Khang##65910
turnin Pillaging Peons##31738 |goto 46.26,84.73
turnin Koukou's Rampage##31740 |goto 46.26,84.73
accept Twinspire Keep##31741 |goto 46.26,84.73
accept Unfair Trade##31744 |goto 46.26,84.73
step
talk Rell Nightwind##54617
accept Fractured Forces##31742 |goto 46.20,84.81
accept Smoke Before Fire##31743 |goto 46.20,84.81
stickystart "Slay_Twinspire_Horde"
stickystart "Free_Captive_Pandaren_Cubs"
step
use the Alliance Flare##89602
|tip Use it on the bubble on the ground filled with Wild Imps.
Bomb the Wild Imps |q 31743/4 |goto 43.14,81.44
step
use the Alliance Flare##89602
|tip Use it on a Twinspire Demolisher.
Bomb the Twinspire Demolishers |q 31743/2 |goto 41.61,81.60
step
use the Alliance Flare##89602
|tip Use it on the big red bomb with spikes on it.
Bomb the Twinspire Munitions Stockpile |q 31743/1 |goto 40.90,82.37
step
use the Alliance Flare##89602
|tip Use it on Xhu'daggab.
Bomb Xhu'daggab |q 31743/3 |goto 40.10,81.61
step
kill Dalgan##66274 |q 31742/1 |goto 41.18,80.21
|tip He walks around this small area up on the platform.
step
kill Bellandra Felstorm##66275 |q 31742/2 |goto 41.81,80.26
|tip Up on the platform.
step
talk Sully 'The Pickle' McLeary##54616
|tip Up on the platform, next to a doorway.
turnin Unfair Trade##31744 |goto 41.39,79.57
turnin Fractured Forces##31742 |goto 41.39,79.57
turnin Smoke Before Fire##31743 |goto 41.39,79.57
step
label "Slay_Twinspire_Horde"
Kill enemies around this area
Slay #15# Twinspire Horde |q 31741/1 |goto 41.55,81.61
step
label "Free_Captive_Pandaren_Cubs"
kill Eyes of Ga'trul##66367+
|tip Kill the ones next to Captive Pandaren Cubs around this area.
|tip They look like scared panda children on the ground around this area.
Free #8# Captive Pandaren Cubs |q 31744/1 |goto 41.55,81.61
step
talk Sully 'The Pickle' McLeary##54616
|tip Up on the platform, next to a doorway.
turnin Twinspire Keep##31741 |goto 41.39,79.57
accept The Fall of Ga'trul##30070 |goto 41.39,79.57
step
Enter the building |goto 41.46,79.43 < 5 |walk
kill Ga'trul##66396 |q 30070/1 |goto 41.46,77.58
|tip He walks around this small area inside the building.
|tip Click on the portals after he uses them to teleport to him.
step
talk Rell Nightwind##54617
|tip Inside the building.
turnin The Fall of Ga'trul##30070 |goto 41.46,79.14
accept Onward and Inward##31745 |goto 41.46,79.14
step
Leave the building |goto 41.46,79.50 < 5 |walk
clicknpc Rell's Gyrocopter##67067
Fly in Rell's Gyrocopter |invehicle |goto 41.51,79.75 |q 31745
step
Return to Paw'don Village |q 31745/1 |goto 46.06,84.59 |notravel
step
talk Sky Admiral Rogers##66292
turnin Onward and Inward##31745 |goto 48.05,88.39
accept The White Pawn##29555 |goto 48.05,88.39
accept Hozen Aren't Your Friends, Hozen Are Your Enemies##29556 |goto 48.05,88.39
stickystart "Slay_Hozen"
step
clicknpc Alliance Bodyguard##55168
|tip On the deck of the ship.
Find the Clue |q 29555/1 |goto 49.80,90.19 |count 1
step
Run down the stairs |goto 49.83,90.04 < 3 |walk
Follow the path |goto 49.79,89.88 < 3 |walk
clicknpc Fine Leather Journal##55155
|tip Downstairs inside the ship.
Find the Clue |q 29555/1 |goto 50.0,90.3 |count 2
step
Follow the path |goto 49.98,90.33 < 3 |walk
Follow the path |goto 49.96,90.59 < 3 |walk
clicknpc Alliance Banner##55167
|tip Downstairs inside the ship.
Find the Clue |q 29555/1 |goto 50.15,90.77 |count 3
step
kill Hozen Diver##66148
|tip He swims around this small area downstairs inside the ship.
collect Encoded Captain's Log##89603 |q 29555/2 |goto 50.23,90.85
step
label "Slay_Hozen"
Follow the path |goto 49.96,90.59 < 3 |walk
Follow the path |goto 49.97,90.32 < 3 |walk
Run up the stairs |goto 49.76,89.92 < 3 |c |q 29556
step
Follow the path |goto 49.84,90.04 < 3 |walk
Kill Hozen enemies around this area
Slay #14# Hozen |q 29556/1 |goto 50.06,89.60
step
talk Nodd Codejack##54615
turnin The White Pawn##29555 |goto 50.41,88.26
turnin Hozen Aren't Your Friends, Hozen Are Your Enemies##29556 |goto 50.41,88.26
accept The Missing Admiral##29553 |goto 50.41,88.26
step
talk Admiral Taylor##59022
turnin The Missing Admiral##29553 |goto 54.22,82.50
step
talk Bold Karasshi##55196
accept The Path of War##29558 |goto 54.18,82.41
accept Freeing Our Brothers##29559 |goto 54.18,82.41
accept Ancient Power##29560 |goto 54.18,82.41
stickystart "Free_Prisoners"
stickystart "Collect_Ancient_Hozen_Skulls"
step
Kill Slingtail enemies around this area
Slay #12# Slingtail Hozen |q 29558/1 |goto 53.90,80.82
step
label "Free_Prisoners"
Kill Slingtail enemies around this area
collect Bamboo Key##74260+ |n
click Hozen Cage##209586+
|tip They look like dark wooden cages on the ground around this area.
Free #6# Prisoners |q 29559/1 |goto 53.90,80.82
step
label "Collect_Ancient_Hozen_Skulls"
click Hozen Skull##209595+
|tip They look like white skulls on the ground around this area.
collect 8 Ancient Hozen Skull##74033 |q 29560/1 |goto 53.90,80.82
step
talk Bold Karasshi##55196
turnin The Path of War##29558 |goto 54.18,82.41
turnin Freeing Our Brothers##29559 |goto 54.18,82.41
turnin Ancient Power##29560 |goto 54.18,82.41
accept Kung Din##29759 |goto 54.18,82.41
step
kill Kung Din##59037
|tip He walks around this small area.
collect Slingtail Key##79753 |q 29759/1 |goto 54.64,80.08
step
talk Bold Karasshi##55196
turnin Kung Din##29759 |goto 54.18,82.41
accept Jailbreak##29562 |goto 54.18,82.41
step
kill 10 Slingtail Fishripper##55195 |q 29562/1 |goto 55.78,80.61
step
talk Ut-Nam##56737
fpath Pearlfin Village |goto 57.95,82.51
step
talk Bold Karasshi##56222
turnin Jailbreak##29562 |goto 58.97,81.69
step
Watch the dialogue
talk Rell Nightwind##66949
accept The Pearlfin Situation##29883 |goto 58.93,81.93
accept Road Rations##29885 |goto 58.93,81.93
step
talk Pearlkeeper Fujin##59058
Tell him _"Please allow us a chance to prove our friendship. We wish you no harm."_
Speak to Pearlkeeper Fujin |q 29883/1 |goto 58.76,81.28
step
talk Elder Lusshan##54960
Tell him _"I come from the Alliance. We wish to be allies, not enemies."_
Speak to Elder Lusshan |q 29883/4 |goto 58.04,80.56
step
talk Ot-Temmdo##56693
Ask him _"What are you doing?"_
Speak to Watersmith Ot-Temmdo |q 29883/2 |goto 59.91,83.92
step
talk Instructor Sharpfin##56690
Tell him _"My friends and I come with peaceful intentions."_
Speak to Instructor Sharpfin |q 29883/3 |goto 58.79,84.58
step
kill Pearly Tortoise##59084+
|tip Underwater around this area.
collect 6 Tortoise Flank##73368 |q 29885/1 |goto 59.86,80.84
step
talk Rell Nightwind##66949
turnin The Pearlfin Situation##29883 |goto 58.93,81.93
turnin Road Rations##29885 |goto 58.93,81.93
step
talk Pearlkeeper Fujin##59058
accept The Elder's Instruments##29887 |goto 58.76,81.28
step
talk Bold Karasshi##56222
accept Family Heirlooms##29762 |goto 58.97,81.69
step
Enter the building |goto 59.49,83.22 < 7 |walk
talk Cheerful Jessu##61599
|tip Inside the building.
home Pearlfin Village |goto 59.61,83.21
stickystart "Collect_Ceremonial_Robes"
stickystart "Collect_Jade_Crown"
stickystart "Collect_Rosewood_Beads"
stickystart "Collect_Glassfin_Heirlooms"
step
Leave the building |goto 59.47,83.25 < 3 |walk
kill Slingtail Stickypaw##55110+
collect Waterspeaker's Staff##79807 |q 29887/1 |goto 66.70,87.25
step
label "Collect_Ceremonial_Robes"
kill Slingtail Stickypaw##55110+
collect Ceremonial Robes##25510 |q 29887/2 |goto 66.70,87.25
step
label "Collect_Jade_Crown"
kill Slingtail Stickypaw##55110+
collect Jade Crown##79809 |q 29887/3 |goto 66.70,87.25
step
label "Collect_Rosewood_Beads"
kill Slingtail Stickypaw##55110+
collect Rosewood Beads##79810 |q 29887/4 |goto 66.70,87.25
step
label "Collect_Glassfin_Heirlooms"
clicknpc Pearlfin Villager##56233+
|tip They look like dead fish men on the ground around this area.
collect 8 Glassfin Heirloom##79811 |q 29762/1 |goto 66.70,87.25
step
Leave the building |goto 59.47,83.25 < 3 |walk
talk Bold Karasshi##56222
turnin Family Heirlooms##29762 |goto 58.97,81.69
step
talk Pearlkeeper Fujin##59058
turnin The Elder's Instruments##29887 |goto 58.76,81.28
accept Spirits of the Water##29894 |goto 58.76,81.28
step
talk Elder Lusshan##54960
Tell him _"I have brought the items for the ceremony."_
Speak to Elder Lusshan |q 29894/1 |goto 58.58,82.89
step
Watch the dialogue
Witness the Waterspeaking Ceremony |q 29894/2 |goto 58.58,82.89
step
talk Bold Karasshi##56222
turnin Spirits of the Water##29894 |goto 58.97,81.70
step
talk Rell Nightwind##66949
accept SI:7 Report: Lost in the Woods##29733 |goto 58.98,81.82
step
Control Rell Nightwind |invehicle |goto 58.98,81.82 |q 29733
step
Watch the dialogue
talk Amber Kearnen##55343
Tell her _"You did well, Agent Kearnen. Now save your energy... we'll fend them off."_
Kill the enemies that attack in wave
|tip Use the abilities on your action bar.
Listen to Rell's Report |q 29733/1 |goto 49.87,70.76
step
Watch the dialogue
Return to Pearlfin Village |outvehicle |q 29733
step
talk Rell Nightwind##55333
turnin SI:7 Report: Lost in the Woods##29733 |goto 58.98,81.82
step
talk Sully 'The Pickle' McLeary##55282
|tip He walks around this small area.
accept SI:7 Report: Fire From the Sky##29725 |goto 58.86,81.80
step
Control Sully 'The Pickle' McLeary |invehicle |goto 58.86,81.80 |q 29725
step
Watch the dialogue
Kill the enemies that attack
|tip Use the ability on your action bar.
Scout the Southeastern Shrine |q 29725/1 |goto 50.43,62.08
step
Follow the path |goto 50.09,61.56 < 7 |walk
Continue following the path |goto 49.66,61.24 < 7 |walk
Continue following the path |goto 48.70,59.51 < 7 |walk
Kill the enemies that attack
|tip Use the ability on your action bar.
Scout the Northern Shrine |q 29725/3 |goto 47.87,58.53
step
Follow the path |goto 47.02,59.78 < 7 |walk
Kill the enemies that attack
|tip Use the ability on your action bar.
Scout the Southwestern Shrine |q 29725/2 |goto 46.35,61.79
step
Follow the path |goto 47.36,62.54 < 7 |walk
Cross the bridge |goto 47.69,63.12 < 7 |walk
Follow the path |goto 48.59,63.51 < 10 |walk
Follow the path down |goto 49.57,64.73 < 10 |walk
Follow the path |goto 50.24,65.00 < 7 |walk
Continue following the path |goto 50.65,64.71 < 7 |walk
Kill the enemies that attack
|tip Use the ability on your action bar.
Return to Camp |q 29725/4 |goto 50.92,63.12
step
Watch the dialogue
Return to Pearlfin Village |outvehicle |q 29725
step
talk Sully 'The Pickle' McLeary##55282
|tip He walks around this small area.
turnin SI:7 Report: Fire From the Sky##29725 |goto 58.86,81.80
step
talk Little Lu##55284
accept SI:7 Report: Hostile Natives##29726 |goto 59.07,81.89
step
Control Little Lu |invehicle |goto 59.07,81.89 |q 29726
step
Watch the dialogue
click STAY OUT - NO VISITORS##209615
Inspect the Sign |q 29726/1 |goto 38.31,45.40
step
clicknpc Lifelike Jade Statue##55378
Inspect the Lifelike Statue |q 29726/2 |goto 38.86,45.92
step
clicknpc Suspicious Jade Statue##55430
Inspect the Suspicious Jade Statue |q 29726/3 |goto 38.95,46.36
step
Watch the dialogue
talk Widow Greenpaw##55381
Ask her _"Can you help us? Our friend is injured."_
Speak with Widow Greenpaw |q 29726/4 |goto 39.24,46.21
step
Watch the dialogue
Return to Pearlfin Village |outvehicle |q 29726
step
talk Little Lu##55284
turnin SI:7 Report: Hostile Natives##29726 |goto 59.07,81.89
step
talk Amber Kearnen##55283
accept SI:7 Report: Take No Prisoners##29727 |goto 58.93,81.93
step
Control Amber Kearnen |invehicle |goto 58.93,81.93 |q 29727
step
Follow the path up |goto 29.17,54.38 < 7 |walk
Continue up the path |goto 28.90,54.57 < 7 |walk
Watch the dialogue
click Sniper Rifle##209621 |goto 28.58,54.46
Control the Sniper Rifle |goto 26.95,50.60 < 5 |noway |c |q 29727
step
Watch the dialogue
Kill enemies around this area
|tip Right-click them.
|tip You will see a yellow crosshair icon on them.
|tip The screen will move on it's own.
Help Sully Move Ahead |goto 26.73,50.13 < 3 |noway |c |q 29727
step
Watch the dialogue
Kill enemies around this area
|tip Right-click them.
|tip You will see a yellow crosshair icon on them.
|tip Yellow arrows will appear above their heads.
|tip The screen will move on it's own.
Help Sully Move Ahead |goto 26.89,50.26 < 3 |noway |c |q 29727
step
Watch the dialogue
click Sully's Bomb Barrel##209633+
|tip The look like wooden barrels that Sully "The Pickle" McLeary places on the ground around this area.
|tip There are 3 of them.
|tip You will see a yellow crosshair icon on them.
|tip Yellow arrows will appear above them.
|tip The screen will move on it's own.
Help Sully Move Ahead |goto 27.64,51.14 < 3 |noway |c |q 29727
step
Watch the dialogue
Kill enemies around this area
|tip Right-click them.
|tip You will see a yellow crosshair icon on them.
|tip Yellow arrows will appear above their heads.
|tip The screen will move on it's own.
Help Sully Move Ahead |goto 27.64,51.14 > 3 |noway |c |q 29727
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Protect Sully "The Pickle" McLeary.
|tip Right-click them.
|tip You will see a yellow crosshair icon on them.
|tip The screen will move on it's own.
Help Sully Move Ahead |goto 28.32,51.01 < 3 |noway |c |q 29727
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Protect Sully "The Pickle" McLeary.
kill Hellscream's Vanguard##66634+
|tip Right-click them.
|tip You will see a yellow crosshair icon on them.
|tip Yellow arrows will appear above their heads.
|tip The screen will move on it's own.
Watch the dialogue
Guide Sully Through the Hozen Camp |q 29727/1
step
Watch the dialogue
Return to Pearlfin Village |goto 58.93,81.86 < 5 |noway |c |q 29727
step
talk Amber Kearnen##55283
turnin SI:7 Report: Take No Prisoners##29727 |goto 58.93,81.93
step
talk Admiral Taylor##60970
accept A Perfect Match##29903 |goto 58.87,81.68
step
talk Bold Karasshi##56222
accept The Ancient Master##29888 |goto 58.97,81.69
step
talk Pearlfin Aqualyte##56592+
|tip They will appear as yellow dots on your minimap.
|tip Look at the weapon they are holding to figure out what weapon to give them.
Tell them _"You might need a shield."_
|tip Choose this if they have a single sword.
Tell them _"Take this book of healing prayers."_
|tip Choose this is they have a red and silver staff.
Tell them _"This spellcaster's staff is for you."_
|tip Choose this if they have a blue and gold staff.
Ask them _"Will these daggers help?"_
|tip Choose this if they have 2 long daggers with red handles.
Equip #9# Pearlfin Aqualytes |q 29903/1 |goto 59.17,83.98
step
talk Admiral Taylor##60970
turnin A Perfect Match##29903 |goto 58.87,81.67
accept Bigger Fish to Fry##29904 |goto 58.87,81.67
step
Kill enemies around this area
Slay #24# Bamboo Wilds Wildlife |q 29904/1 |goto 61.0,74.0
step
Leave the building |goto 59.47,83.25 < 3 |walk
talk Admiral Taylor##60970
turnin Bigger Fish to Fry##29904 |goto 58.87,81.67
accept Let Them Burn##29905 |goto 58.87,81.67
accept Carp Diem##29906 |goto 58.87,81.67
stickystart "Kill_Slingtail_Recruits"
step
kill Chief Gukgut##54868 |q 29906/1 |goto 54.69,80.06
|tip Run away from him when he starts casting "Monkey Tantrum".
step
label "Kill_Slingtail_Recruits"
kill 15 Slingtail Recruit##61760 |q 29905/1 |goto 54.37,81.67
step
talk Elder Lusshan##54960
turnin Let Them Burn##29905 |goto 58.90,81.48
turnin Carp Diem##29906 |goto 58.90,81.48
step
click Mouthwatering Brew##209847
turnin The Ancient Master##29888 |goto 53.71,91.51
accept Borrowed Brew##29889 |goto 53.71,91.51
step
click Mouthwatering Brew##209847
Watch the dialogue
Taste the Mouthwatering Brew |q 29889/1 |goto 53.70,91.49
step
talk Lorewalker Cho##54961
turnin Borrowed Brew##29889 |goto 53.66,91.41
accept A Visit with Lorewalker Cho##31130 |goto 53.66,91.41
step
Watch the dialogue
click Shapeless Tree
Trim the Tree |q 31130/1 |goto 53.73,90.98
step
Watch the dialogue
click Cho's "Art"##211661
|tip Choose whichever dialogue option you like, it doesn't matter.
Paint the Wall |q 31130/2 |goto 54.08,90.67
step
Watch the dialogue
click Bird Feed
Feed the Birds |q 31130/3 |goto 54.03,91.34
step
talk Lorewalker Cho##61218
turnin A Visit with Lorewalker Cho##31130 |goto 54.02,91.19
accept Potency##29891 |goto 54.02,91.19
accept Body##29892 |goto 54.02,91.19
accept Hue##29893 |goto 54.02,91.19
stickystart "Collect_Pristine_Crocolisk_Eyes"
stickystart "Kill_Mist_Creepers"
stickystart "Kill_Mist_Horror"
step
kill Glittering Amberfly##54559+
use the Delicate Shearing Knife##76128
|tip Use it on their corpses.
collect 8 Amberfly Wing##76115 |q 29893/1 |goto 58.11,90.01
step
label "Collect_Pristine_Crocolisk_Eyes"
kill Bog Crocolisk##54558+
collect 5 Pristine Crocolisk Eye##76107 |q 29892/1 |goto 58.11,90.01
step
label "Kill_Mist_Creepers"
kill 8 Mist Creeper##56304 |q 29891/1 |goto 58.11,90.01
step
label "Kill_Mist_Horror"
kill Mist Horror##56310
|tip It appears after you kill 8 Mist Creepers.
collect Mist Horror Heart##76129 |q 29891/2 |goto 58.11,90.01
step
talk Lorewalker Cho##56287
turnin Potency##29891 |goto 53.78,90.63
turnin Body##29892 |goto 53.78,90.63
turnin Hue##29893 |goto 53.78,90.63
step
Watch the dialogue
talk Lorewalker Cho##56287
accept Finding Your Center##29890 |goto 53.78,90.63
step
Watch the dialogue
click Potent Dream Brew##213754
Begin Meditating |invehicle |goto 54.68,92.05 |q 29890
step
Meditate at the Pagoda |q 29890/1 |goto 54.57,91.88
|tip Try to keep the marker in the middle of the bar at the bottom of your screen.
|tip Use the abilities on your action bar.
step
Leave the building |goto 59.46,83.26 < 3 |walk
talk Anduin Wrynn##56434
turnin Finding Your Center##29890 |goto 65.91,79.27
accept Sacred Waters##29898 |goto 65.91,79.27
step
talk Ren Whitepaw##56432
accept Rest in Peace##29899 |goto 65.98,79.28
step
talk Lina Whitepaw##56433
accept The Vale of Eternal Blossoms##29900 |goto 65.98,79.38
stickystart "Kill_Tortured_Spirits"
step
Enter the cave |goto 66.24,82.16 < 7 |walk
click Restorative Body##209885
|tip Inside the cave.
Collect the Waters of Restorative Body |q 29898/1 |goto 66.84,82.08
step
Follow the path up |goto 66.75,82.64 < 5 |walk
Follow the path |goto 66.94,82.95 < 5 |walk
Run up the ramp |goto 67.08,82.51 < 5 |walk
Follow the path |goto 67.08,82.12 < 5 |walk
click Restorative Mind##209888
|tip Inside the cave.
Collect the Waters of Restorative Mind |q 29898/2 |goto 67.27,81.61
step
Run up the ramp |goto 67.58,81.69 < 5 |walk
Follow the path |goto 67.74,81.71 < 5 |walk
click Restorative Spirit##209889
|tip Inside the cave.
Collect the Waters of Restorative Spirit |q 29898/3 |goto 68.04,81.86
step
Follow the path down |goto 67.72,81.71 < 5 |walk
Follow the path |goto 67.54,81.68 < 5 |walk
Run up the ramp |goto 67.18,81.30 < 5 |walk
Follow the path |goto 67.09,80.95 < 5 |walk
kill Shade of Ling Heartfist##56441 |q 29900/1 |goto 66.73,80.31
|tip He walks around this small area inside the cave.
step
click Scroll of Sorrow##209582
|tip Inside the cave.
collect Song of the Vale##79875 |q 29900/2 |goto 66.48,80.53
step
click Restorative Heart##209890
|tip Inside the cave.
Collect the Waters of Restorative Heart |q 29898/4 |goto 66.43,80.00
step
Follow the path down |goto 66.66,80.83 < 5 |walk
Follow the path |goto 66.67,81.89 < 5 |walk
Follow the path |goto 66.51,82.13 < 5 |walk
Leave the cave |goto 66.20,82.16 < 7 |c |q 29898
step
label "Kill_Tortured_Spirits"
kill 6 Tortured Spirit##56444 |q 29899/1 |goto 65.86,82.12
step
talk Lina Whitepaw##56433
turnin Sacred Waters##29898 |goto 65.98,79.38
step
talk Ren Whitepaw##56432
turnin Rest in Peace##29899 |goto 65.98,79.28
turnin The Vale of Eternal Blossoms##29900 |goto 65.98,79.28
step
accept Anduin's Decision##29901 |goto 65.98,79.28
|tip You will automatically accept this quest.
step
talk Anduin Wrynn##56434
Tell him _"It is time to go home, Prince Anduin."_
Speak to Anduin |q 29901/1 |goto 65.91,79.27
step
talk Admiral Taylor##60970
turnin Anduin's Decision##29901 |goto 58.87,81.68
step
talk Elder Lusshan##54960
accept In Search of Wisdom##29922 |goto 58.90,81.48
step
talk Ut-Nam##56737
Tell him _"I would like to travel to Dawn's Blossom."_
Speak to Kitemaster Ot-Nam |q 29922/1 |goto 57.95,82.52
step
Travel to Dawn's Blossom |goto 47.03,46.19 < 10 |c |q 29922 |notravel
step
talk Keg Runner Lee##59186
fpath Dawn's Blossom |goto 47.05,46.24
step
talk Lorewalker Cho##63577
turnin In Search of Wisdom##29922 |goto 46.82,46.14
step
Watch the dialogue
talk Toya##56348
accept Welcome to Dawn's Blossom##31230 |goto 47.15,46.17
step
talk Kai Wanderbrew##59173
Speak with Kai Wanderbrew |q 31230/3 |goto 46.72,45.81
step
Enter the building |goto 46.10,43.91 < 7 |walk
talk Peiji Goldendraft##55809
|tip Inside the building.
Speak with Peiji Goldendraft |q 31230/2 |goto 45.72,43.70
step
talk Peiji Goldendraft##55809
|tip Inside the building.
accept Temple of the White Tiger##31392 |goto 45.72,43.70
step
talk Messenger Grummle##63778
|tip Inside the building.
accept The Road to Kun-Lai##31254 |goto 45.72,43.80
step
talk Bolo##56774
|tip Inside the building.
accept His Name Was... Stormstout##32018 |goto 45.78,44.00
step
talk Lin Windfur##55233
|tip Upstairs inside the building.
home The Drunken Hozen |goto 45.62,43.94
step
Leave the building |goto 46.11,43.92 < 5 |walk
Enter the building |goto 48.13,44.80 < 7 |walk
talk Master Windfur##59160
|tip Inside the building.
Speak with Master Windfur |q 31230/1 |goto 48.49,44.49
step
Leave the building |goto 48.12,44.81 < 5 |walk
talk Old Man Misteye##59383
accept An Air of Worry##29576 |goto 48.32,46.06
step
talk Apprentice Yufi##54998
accept Tian Monastery##29617 |goto 49.65,45.83
step
talk Toya##56348
turnin Welcome to Dawn's Blossom##31230 |goto 47.16,46.17
step
talk An Windfur##55234
|tip She walks around this area.
accept The Double Hozu Dare##29716 |goto 46.49,45.75
step
talk Tzu the Ironbelly##56062
accept The Silkwood Road##29865 |goto 46.46,45.80
step
talk Lo Wanderbrew##59178
accept The Threads that Stick##29866 |goto 46.63,45.31
stickystart "Collect_Pristine_Silk_Strands"
step
kill 8 Silkwood Stalker##56070 |q 29865/1 |goto 43.76,49.30
step
label "Collect_Pristine_Silk_Strands"
click Silk Patch##209951+
|tip They look like white eggs on the ground around this area.
collect 7 Pristine Silk Strand##75023 |q 29866/1 |goto 43.76,49.30
step
talk An Windfur##55274
|tip She appears next to you.
accept Down Kitty!##29717 |goto 37.83,45.03
stickystart "Kill_Jade_Guardians"
step
clicknpc Scared Pandaren Cub##55267+
|tip They look like panda children clinging to trees low to the ground around this area.
Tell them _"It's safe now. You can come down."_
Rescue #6# Cubs |q 29716/1 |goto 38.12,45.49
step
label "Kill_Jade_Guardians"
kill 8 Jade Guardian##55236 |q 29717/1 |goto 38.12,45.49
step
_Next to you:_
talk An Windfur##55234
turnin The Double Hozu Dare##29716
turnin Down Kitty!##29717
accept The Jade Witch##29723
step
Enter the building |goto 39.30,46.22 < 7 |walk
talk Widow Greenpaw##55368
|tip If someone else already talked to her, she will be behind the building.
Ask her _"Where is Shin?"_
Watch the dialogue
|tip Follow Widow Greenpaw as she walks.
kill Widow Greenpaw##55368
Confront the Jade Witch |q 29723/1 |goto 39.34,46.22
step
Leave the building |goto 46.12,43.92 < 5 |walk
talk Tzu the Ironbelly##56062
turnin The Silkwood Road##29865 |goto 46.46,45.80
step
talk An Windfur##55413
|tip She walks around this area.
turnin The Jade Witch##29723 |goto 46.49,45.75
step
talk Toya##56348
accept All We Can Spare##29925 |goto 47.16,46.17
step
talk Lo Wanderbrew##59178
turnin The Threads that Stick##29866 |goto 46.63,45.31
step
talk Kai Wanderbrew##59173
|tip He walks around this area.
accept Find the Boy##29993 |goto 47.05,46.01
step
talk Inkmaster Wei##56065
|tip He walks around this area.
turnin Find the Boy##29993 |goto 55.00,44.87
accept Shrine of the Dawn##29995 |goto 55.00,44.87
step
talk Inkmaster Glenzu##56064
accept The Perfect Color##29881 |goto 54.88,45.31
step
talk Inkmaster Jo Po##56063
accept Quill of Stingers##29882 |goto 55.40,45.28
step
talk Injar'i Lakebloom##59732
fpath The Arboretum |goto 57.01,44.03
step
talk Elder Anli##58564
accept Wild Things##30134 |goto 57.64,44.95
stickystart "Collect_Wasp_Stingers"
step
click Freshly Fallen Petals##209836+
|tip They look like small red flowers on the ground around this area.
collect 8 Freshly Fallen Petals##75219 |q 29881/1 |goto 54.10,45.35
step
label "Collect_Wasp_Stingers"
kill Orchard Wasp##56201+
collect 6 Wasp Stinger##75221 |q 29882/1 |goto 53.6,44.5
step
talk Inkmaster Glenzu##56064
turnin The Perfect Color##29881 |goto 54.88,45.31
step
talk Inkmaster Jo Po##56063
turnin Quill of Stingers##29882 |goto 55.27,45.23
step
talk Syra Goldendraft##56708
turnin Shrine of the Dawn##29995 |goto 52.57,38.12
accept Getting Permission##29920 |goto 52.57,38.12
step
talk Pandriarch Bramblestaff##56209
Choose _"Challenge the Pandriarch."_
kill Pandriarch Bramblestaff##56209
|tip He will eventually surrender.
Defeat Pandriarch Bramblestaff |q 29920/2 |goto 54.09,38.46
step
talk Pandriarch Goldendraft##56210
Choose _"Challenge the Pandriarch."_
kill Pandriarch Goldendraft##56210
|tip He will eventually surrender.
Defeat Pandriarch Goldendraft |q 29920/3 |goto 53.59,36.73
step
talk Pandriarch Windfur##56206
Choose _"Challenge the Pandriarch."_
kill Pandriarch Windfur##56206
|tip He will eventually surrender.
Defeat Pandriarch Windfur |q 29920/1 |goto 52.54,35.57
step
talk Lo Wanderbrew##55788
turnin Getting Permission##29920 |goto 52.59,38.12
step
talk Lorewalker Cho##56345
turnin All We Can Spare##29925 |goto 50.91,27.08
step
talk Foreman Mann##56346
accept I Have No Jade And I Must Scream##29928 |goto 50.94,27.03
step
talk Supplier Towsa##59735
fpath Emperor's Omen |goto 50.82,26.80
step
kill Puckish Sprite##56349+
click Chunk of Jade##209863+
|tip They look like green rocks that appear on the ground after you kill Puckish Sprites.
collect 15 Chunk of Jade##76209 |q 29928/1 |goto 48.33,31.10
step
talk Foreman Mann##56346
turnin I Have No Jade And I Must Scream##29928 |goto 50.94,27.03
step
Watch the dialogue
talk Foreman Mann##56346
accept Calamity Jade##29926 |goto 50.94,27.03
accept Mann's Man##29927 |goto 50.94,27.03
step
clicknpc Outcast Sprite##55438
accept The Sprites' Plight##29745 |goto 48.67,24.93
stickystart "Kill_Stonebound_Destroyers"
step
Find the Source of the Simulacra |q 29745/2 |goto 48.61,20.26
step
label "Kill_Stonebound_Destroyers"
kill 10 Stonebound Destroyer##55288 |q 29745/1 |goto 48.80,21.60
step
Click the Complete Quest Box:
turnin The Sprites' Plight##29745
accept Break the Cycle##29747
step
click Shattered Destroyer##214871
accept Simulacrumble##29748 |goto 48.57,20.62
stickystart "Kick_Vacant_Destroyers"
step
kill 8 Shan'ze Spiritbinder##55279 |q 29747/1 |goto 48.07,17.12
step
label "Kick_Vacant_Destroyers"
click Vacant Destroyer##214873+
|tip They look like stone orc-like statues holding weapons around this area.
Kick #6# Vacant Destroyers |q 29748/1 |goto 48.07,17.12
step
Click the Complete Quest Box:
turnin Simulacrumble##29748
step
Click the Complete Quest Box:
turnin Break the Cycle##29747
accept An Urgent Plea##29749
step
click Staff of Pei-Zhi##209662
collect Staff of Pei-Zhi##74258 |q 29749/1 |goto 44.23,14.91
step
kill Ancient Spirit##55489+
|tip Try to kill them before they reach the swirling purple orb.
|tip Kill them until the bar at the bottom of your screen fills up.
|tip When the bar reaches about half full, regular enemies will attack you.
Interrupt the Ritual of Spiritbinding |q 29749/2 |goto 44.36,15.35
step
Watch the dialogue
talk Pei-Zhi##55614
turnin An Urgent Plea##29749 |goto 44.23,15.03
accept Ritual Artifacts##29751 |goto 44.23,15.03
accept Vessels of the Spirit##29750 |goto 44.23,15.03
accept The Wayward Dead##29752 |goto 44.23,15.03
stickystart "Collect_Spirit_Bottles"
stickystart "Recover_Wayward_Ancestors"
step
click Jade Cong##209699
collect Jade Cong##74762 |q 29751/1 |goto 42.68,15.76
step
click Pungent Ritual Candle##209701
collect Pungent Ritual Candle##74761 |q 29751/3 |goto 42.26,17.09
step
click Chipped Ritual Bowl##209700
collect Chipped Ritual Bowl##74760 |q 29751/2 |goto 41.62,14.32
step
label "Collect_Spirit_Bottles"
kill Shan'ze Spiritclaw##55291+
collect 8 Spirit Bottle##74763 |q 29750/1 |goto 42.07,15.74
step
label "Recover_Wayward_Ancestors"
use the Staff of Pei-Zhi##74771
|tip Use it on Wayward Ancestors around this area.
Recover #10# Wayward Ancestors |q 29752/1 |goto 42.07,15.74
step
talk Pei-Zhi##55614
turnin Ritual Artifacts##29751 |goto 44.23,15.03
turnin Vessels of the Spirit##29750 |goto 44.23,15.03
turnin The Wayward Dead##29752 |goto 44.23,15.03
accept Back to Nature##29753 |goto 44.23,15.03
accept A Humble Offering##29756 |goto 44.23,15.03
stickystart "Collect_Tidemist_Caps"
step
use the Spirit Bottles##74808
|tip You can use it repeatedly in the same spot.
kill Raging Beast Spirit##55790
|tip They appear after you use the Spirit Bottles.
|tip Some of them will be friendly and run off.
Return #8# Beast Spirits to Nature |q 29753/1 |goto 38.41,10.90
step
label "Collect_Tidemist_Caps"
click Tidemist Cap##209825+
|tip They look like clusters of white mushrooms with long stems sprouting out of the ground and sides of trees around this area.
collect 10 Tidemist Cap##75214 |q 29756/1 |goto 39.76,11.48
step
talk Pei-Zhi##55614
turnin Back to Nature##29753 |goto 44.23,15.03
turnin A Humble Offering##29756 |goto 44.23,15.03
accept To Bridge Earth and Sky##29754 |goto 44.23,15.03
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Protect Pei-Zhi until the bar at the bottom of your screen fills up.
Protect Pei-Zhi During His Ritual |q 29754/1 |goto 43.7,12.9
step
Click the Complete Quest Box:
turnin To Bridge Earth and Sky##29754
accept Pei-Back##29755
step
kill Stonebound Colossus##56595
|tip He walks around this area.
|tip When your spirit is ripped from your body, click your body at the location you were at to return to your body.
|tip He will regenerate health when you're out-of-body.
kill Shan Jitong##56596 |q 29755/1 |goto 42.52,10.45
|tip He appears once the Stonebound Colossus is at low health.
step
talk Pei-Zhi##59492
turnin Pei-Back##29755 |goto 43.84,12.52
step
talk Studious Chu##59736
fpath Tian Monastery |goto 43.58,24.53
step
talk Lin Tenderpaw##54913
turnin Tian Monastery##29617 |goto 44.99,24.95
accept The High Elder##29618 |goto 44.99,24.95
step
talk High Elder Cloudfall##54914
|tip Upstairs on the balcony outside the building.
turnin The High Elder##29618 |goto 45.22,25.07
step
talk Lin Tenderpaw##54913
accept A Courteous Guest##29619 |goto 44.99,24.95
step
Enter the building |goto 41.61,23.33 < 7 |walk
talk Bolo the Elder##62867
|tip Inside the building.
home Paur's Pub |goto 41.72,23.16
step
Leave the building |goto 41.62,23.34 < 5 |walk
kill Greenwood Thief##54930+
|tip They will only drop them if they are carrying oranges.
click Ripe Orange##209436+
|tip They look like small orange balls on the ground around this area.
collect 8 Ripe Orange##72589 |q 29619/1 |goto 45.73,27.35
step
Enter the mine |goto 46.01,29.04 < 7 |walk
Follow the path down |goto The Jade Forest/6 70.00,21.32 < 7 |walk
Locate Hao Mann |q 29927/1 |goto The Jade Forest/6 60.96,36.74
|tip Inside the mine.
step
talk Hao Mann##56347
|tip Inside the mine.
turnin Mann's Man##29927 |goto 60.96,36.74
accept Trapped!##29929 |goto 60.96,36.74
stickystart "Kill_Greenstone_Nibblers"
stickystart "Free_Greenstone_Miners"
step
Follow the path |goto 56.35,45.34 < 7 |walk
Run down the stairs |goto 51.24,40.45 < 5 |walk
Run down the stairs |goto 41.46,34.55 < 5 |walk |notravel
Run down the stairs |goto The Jade Forest/7 50.63,54.29 < 5 |walk |notravel
kill 6 Greenstone Gorger##56404 |q 29926/2 |goto The Jade Forest/7 53.54,62.47
|tip Inside the mine.
step
label "Kill_Greenstone_Nibblers"
kill 12 Greenstone Nibbler##56401 |q 29926/1 |goto 53.54,62.47
|tip Inside the mine.
step
label "Free_Greenstone_Miners"
talk Greenstone Miner##56464+
|tip They look like pandas inside piles of big rocks on the ground around this area inside the mine.
Free #8# Greenstone Miners |q 29929/1 |goto 53.54,62.47
step
Run up the stairs |goto 52.86,56.73 < 5 |walk
Leave the mine |goto The Jade Forest/0 46.10,29.18 < 7 |walk
talk Hao Mann##56467
turnin Trapped!##29929 |goto The Jade Forest/0 46.30,29.39
accept What's Mined Is Yours##29930 |goto The Jade Forest/0 46.30,29.39
step
clicknpc Jade Cart##56527
Ride in the Jade Cart |invehicle |goto 46.27,29.48 |q 29930
step
Watch the dialogue
Kill the enemies that attack in waves
Deliver the Jade |q 29930/1 |goto 51.21,26.72 |notravel
step
talk Foreman Mann##56346
turnin Calamity Jade##29926 |goto 50.94,27.03
turnin What's Mined Is Yours##29930 |goto 50.94,27.03
step
Watch the dialogue
talk Foreman Mann##56346
accept The Serpent's Heart##29931 |goto 50.94,27.03
step
talk Lin Tenderpaw##54913
turnin A Courteous Guest##29619 |goto 44.99,24.95
accept The Great Banquet##29620 |goto 44.99,24.95
step
talk High Elder Cloudfall##54914
Tell him _"I'm ready to be introduced to the instructors, High Elder."_
Watch the dialogue
|tip Follow High Elder Cloudfall as he walks.
Speak with High Elder Cloudfall |q 29620/1 |goto 42.74,23.17
step
talk High Elder Cloudfall##54914
turnin The Great Banquet##29620 |goto 42.74,23.17
step
Watch the dialogue
talk Xiao##54926
accept Your Training Starts Now##29622 |goto 43.13,23.63
accept Groundskeeper Wu##29626 |goto 43.13,23.63
step
talk Master Stone Fist##54922
accept Becoming Battle-Ready##29632 |goto 43.23,24.75
step
talk Tian Pupil##54944+
Tell them _"Let's fight!"_
kill Tian Pupil##54944+
|tip They will eventually surrender.
Defeat #8# Monastic Pupils |q 29632/1 |goto 43.73,24.99
step
talk Master Stone Fist##54922
turnin Becoming Battle-Ready##29632 |goto 43.24,24.76
accept Zhi-Zhi, the Dextrous##29633 |goto 43.24,24.76
accept Husshun, the Wizened##29634 |goto 43.24,24.76
step
talk Zhi-Zhi##54924
Ask him _"Wanna fight?"_
kill Zhi-Zhi##54924
|tip He will eventually surrender.
Defeat Zhi-Zhi |q 29633/1 |goto 43.06,25.99
step
talk Husshun##54925
Tell him _"I challenge you to a fight, Husshun!"_
kill Husshun##54925
|tip He will eventually surrender.
Defeat Husshun |q 29634/1 |goto 44.56,24.05
step
talk Master Stone Fist##54922
turnin Zhi-Zhi, the Dextrous##29633 |goto 43.24,24.75
turnin Husshun, the Wizened##29634 |goto 43.24,24.75
accept Xiao, the Eater##29635 |goto 43.24,24.75
step
talk Xiao##54926
Tell him _"Put down your fork, and pick up your fists! I challenge you!"_
kill Xiao##54926
|tip He will eventually surrender.
Defeat Xiao |q 29635/1 |goto 43.13,23.63
step
talk Master Stone Fist##54922
turnin Xiao, the Eater##29635 |goto 43.24,24.75
accept A Test of Endurance##29636 |goto 43.24,24.75
step
talk Groundskeeper Wu##54915
turnin Groundskeeper Wu##29626 |goto 41.62,23.70
accept A Proper Weapon##29627 |goto 41.62,23.70
step
talk June Whiteblossom##54981
buy Black Walnut Extract##72954 |q 29627/2 |goto 41.39,24.15
step
talk Brewmaster Lei Kanglei##54982
buy 3 Triple-Bittered Ale##72979 |q 29627/3 |goto 41.77,24.61
step
click Rattan Switch##209464+
|tip They look like thin twigs with leaves at the top of them growing out of the ground around this area.
collect 6 Rattan Switch##72926 |q 29627/1 |goto 41.09,24.78
step
talk Groundskeeper Wu##54915
turnin A Proper Weapon##29627 |goto 41.62,23.70
accept A Strong Back##29628 |goto 41.62,23.70
accept A Steady Hand##29629 |goto 41.62,23.70
accept And a Heavy Fist##29630 |goto 41.62,23.70
step
talk Instructor Myang##54918
turnin A Test of Endurance##29636 |goto 38.97,24.04
accept The Rumpus##29637 |goto 38.97,24.04
step
use the Monastary Fireworks##73369
Kill the enemies that attack in waves
Survive the Melee |q 29637/1 |goto 38.97,23.27
step
talk Instructor Myang##54918
turnin The Rumpus##29637 |goto 38.97,24.04
step
talk Guard Shan Long##55094
accept Burning Bright##29631 |goto 38.01,23.80
stickystart "Kill_Waxwood_Hunters"
step
click Blushleaf Cluster+
|tip They look like small red plants on the ground around this area.
collect 80 Blushleaf Extract##73193 |q 29629/1 |goto 35.1,22.1
step
label "Kill_Waxwood_Hunters"
Kill Waxwood enemies around this area
Slay #6# Waxwood Hunters |q 29631/1
step
kill 10 Greenwood Trickster##54987 |q 29630/1 |goto 37.79,20.14
step
click Boiling Cauldron##209551
|tip Do not mount after clicking it, or you will lose the cauldron.
Obtain the Boiling Cauldron |q 29628/1 |goto 37.75,17.59
step
Follow the path up |goto 37.98,18.52 < 7 |walk
Follow the path |goto 37.75,19.50 < 7 |walk
Continue following the path |goto 37.68,20.78 < 7 |walk
Continue following the path |goto 36.59,22.74 < 7 |walk
Follow the path up |goto 37.42,23.29 < 7 |walk
talk Guard Shan Long##55094
|tip Do not mount, or you will lose the cauldron.
turnin Burning Bright##29631 |goto 38.0,23.8
step
Follow the path |goto 38.28,24.35 < 7 |walk
Follow the path |goto 39.07,24.90 < 7 |walk
Continue following the path |goto 39.80,23.96 < 7 |walk
Run up the stairs |goto 41.09,24.17 < 7 |walk
Run up the stairs |goto 41.19,23.63 < 7 |walk
Return the Boiling Cauldron |q 29628/2 |goto 41.61,23.69
|tip Do not mount, or you will lose the cauldron.
step
talk Groundskeeper Wu##54915
turnin A Strong Back##29628 |goto 41.61,23.69
turnin A Steady Hand##29629 |goto 41.61,23.69
turnin And a Heavy Fist##29630 |goto 41.61,23.69
step
talk Instructor Xann##54917
turnin Your Training Starts Now##29622 |goto 41.60,28.33
accept Perfection##29623 |goto 41.60,28.33
step
Run down the stairs |goto 41.82,28.07 < 7 |walk
Complete #12# Practice Strikes |q 29623/1 |goto 41.40,27.90
|tip Watch the Tian Instructor as he makes motions.
|tip Use the abilities on your action bar to mimic his motions.
step
Run up the stairs |goto 41.69,27.87 < 7 |walk
Follow the path |goto 41.85,28.13 < 7 |walk
talk Instructor Xann##54917
turnin Perfection##29623 |goto 41.60,28.33
accept Attention##29624 |goto 41.60,28.33
step
kill 2 Training Bag##55184 |q 29624/1 |goto 41.66,26.97
|tip You will see "LEFT!" and "RIGHT!" messages on your screen.
|tip Attack the bag on whichever side the message says.
step
talk Instructor Xann##54917
turnin Attention##29624 |goto 41.60,28.33
accept Flying Colors##29639 |goto 41.60,28.33
step
talk High Elder Cloudfall##54914
turnin Flying Colors##29639 |goto 42.74,23.17
step
talk Gingo Alebottom##59733
fpath Sri-La Village |goto 55.38,23.73
step
talk Instructor Tong##58225
turnin Wild Things##30134 |goto 65.33,31.65
accept Beating the Odds##30135 |goto 65.33,31.65
accept Empty Nests##30136 |goto 65.33,31.65
accept Egg Collection##30137 |goto 65.33,31.65
stickystart "Slay_Slitherscale_Sauroks"
step
use the Silken Rope##78947
|tip Use it on Windward Hatchlings around this area.
|tip Get 6 of them following you.
|tip You can fly without losing them.
Return #6# Windward Hatchlings to Their Nests |q 30136/1 |goto 64.60,31.26
Bring the Windward Hatchlings to [65.78,31.24]
step
label "Slay_Slitherscale_Sauroks"
kill Slitherscale Eggdrinker##63532
Slay #8# Slitherscale Sauroks |q 30135/1 |goto 64.60,31.26
step
talk Instructor Tong##58225
turnin Beating the Odds##30135 |goto 65.33,31.65
turnin Empty Nests##30136 |goto 65.33,31.65
step
click Serpent Egg##210240+
|tip They look like blue, orange, and green balls on the ground around this area.
collect 6 Serpent Egg##78959 |q 30137/1 |goto 68.03,27.62
step
talk Instructor Tong##58225
turnin Egg Collection##30137 |goto 65.33,31.65
accept Choosing the One##30138 |goto 65.33,31.65
step
talk Instructor Tong##58225
turnin Choosing the One##30138 |goto 65.33,31.65
accept The Rider's Journey##30139 |goto 65.33,31.65 |or
'|accept The Rider's Journey##30140 |goto 65.33,31.65 |or
'|accept The Rider's Journey##30141 |goto 65.33,31.65 |or
step
talk Instructor Skythorn##58228
turnin The Rider's Journey##30139 |goto 57.56,45.10 |only if haveq(30139) or completedq(30139)
turnin The Rider's Journey##30140 |goto 57.56,45.10 |only if haveq(30140) or completedq(30140)
turnin The Rider's Journey##30141 |goto 57.56,45.10 |only if haveq(30141) or completedq(30141)
accept It's A...##30142 |goto 57.56,45.10
step
Watch the dialogue
Witness the Egg Hatch |q 30142/1 |goto 57.45,45.14
step
talk Instructor Skythorn##58228
turnin It's A...##30142 |goto 57.56,45.10
step
talk Foreman Raike##59391
turnin The Serpent's Heart##29931 |goto 48.31,61.35
accept Love's Labor##30495 |goto 48.31,61.35
step
talk Historian Dinh##59395
Tell him _"I've got a new jade shipment for you."_
Complete the Delivery to Historian Dinh |q 30495/1 |goto 46.36,61.80
step
talk Surveyor Sawa##59401
Tell him _"I've got your jade right here."_
Complete the Delivery to Surveyor Sawa |q 30495/2 |goto 46.94,60.35
step
talk Kitemaster Shoku##59392
Tell him _"I've got a jade delivery for you."_
Complete the Delivery to Kitemaster Shoku |q 30495/3 |goto 48.17,60.02
step
talk Kitemaster Shoku##59392
Tell him _"I need a ride to the top of the statue."_
Ride a kite to the top of the statue |goto 48.18,60.02 < 5
talk Taskmaster Emi##59397
|tip On a platform at the top of the statue.
Ask her _"Did someone say they needed jade?"_
Complete the Delivery to Taskmaster Emi |q 30495/4 |goto 47.58,60.67
step
talk Kitemaster Inga##59400
Tell her _"I need a ride to the bottom of the statue."_
Ride a kite to the bottom of the statue |goto 47.45,60.51 < 5
talk Foreman Raike##59391
turnin Love's Labor##30495 |goto 48.31,61.35
accept The Temple of the Jade Serpent##29932 |goto 48.31,61.35
step
Cross the bridge |goto 49.83,54.50 < 10 |only if walking
talk Elder Sage Wind-Yi##57242
|tip She walks around this area.
Tell her _"I have a message for the Jade Serpent."_
Speak to Elder Sage Wind-Yi |q 29932/1 |goto 54.99,56.89
She can sometimes be found here [goto The Jade Forest/0 55.84,57.07]
step
Watch the dialogue
talk Elder Sage Rain-Zhu##56782
turnin The Temple of the Jade Serpent##29932 |goto 58.13,58.66
accept The Scryer's Dilemma##29997 |goto 58.13,58.66
accept The Librarian's Quandary##29998 |goto 58.13,58.66
step
talk Fei##56784
accept The Rider's Bind##29999 |goto 58.03,59.01
accept Lighting Up the Sky##30005 |goto 58.03,59.01
stickystart "Launch_Fireworks"
step
clicknpc Playful Crimson Serpent##56852
|tip It walks around this small area.
Find the Playful Crimson Serpent |q 29999/2 |goto 58.18,61.39
stickystop "Launch_Fireworks"
step
Enter the building |goto 57.40,60.99 < 7 |walk
talk Lorewalker Stonestep##56786
|tip Inside the building.
turnin The Librarian's Quandary##29998 |goto 56.26,60.43
accept Moth-Ridden##30001 |goto 56.26,60.43
accept Pages of History##30002 |goto 56.26,60.43
stickystart "Squash_Bookworms"
stickystart "Kill_Dappled_Moths"
step
clicknpc Playful Gold Serpent##56850
|tip It walks around this small area inside the building.
Find the Playful Gold Serpent |q 29999/4 |goto 56.00,60.32
step
label "Squash_Bookworms"
click Infested Book##209594+
|tip They look like big green books on the ground around this area inside the building.
kill Bookworm##57237+
|tip You can right-click them repeatedly to kill them quickly.
Squash #12# Bookworms |q 30002/1 |goto 56.00,60.32
step
label "Kill_Dappled_Moths"
kill 8 Dappled Moth##57232 |q 30001/1 |goto 56.00,60.32
|tip Inside the building.
step
talk Lorewalker Stonestep##56786
|tip Inside the building.
turnin Moth-Ridden##30001 |goto 56.26,60.44
turnin Pages of History##30002 |goto 56.26,60.44
accept Everything In Its Place##30004 |goto 56.26,60.44
step
Follow the path |goto 55.78,60.06 < 5 |walk
Run up the stairs |goto 55.89,59.76 < 5 |walk
Cross the bridge |goto 56.69,60.24 < 5 |walk
Follow the path |goto 56.44,61.04 < 5 |walk
Follow the path |goto 55.59,60.57 < 5 |c |q 29999
step
Run down the stairs |goto 55.91,59.31 < 5 |walk
Follow the path |goto 56.32,59.31 < 5 |walk
Leave the building |goto 56.47,58.73 < 7 |walk
clicknpc Playful Emerald Serpent##56851
|tip It walks around this small area.
Find the Playful Emerald Serpent |q 29999/3 |goto 56.54,58.38
step
Enter the building |goto 56.78,57.29 < 7 |walk
Run down the stairs |goto 56.79,56.73 < 5 |walk
Follow the path |goto 56.43,56.45 < 5 |walk
Run down the stairs |goto 56.69,55.66 < 7 |walk
Run up the ramp |goto 57.22,55.72 < 7 |walk
Follow the path |goto 57.51,55.62 < 5 |walk
kill Water Fiend##56820+
|tip Inside the building.
collect Scryer's Staff##76725 |q 29997/1 |goto 57.46,55.98
step
talk Wise Mari##56787
|tip Inside the building.
turnin The Scryer's Dilemma##29997 |goto 57.57,56.03
accept A New Vision##30011 |goto 57.57,56.03
stickystart "Launch_Fireworks"
step
Run up the stairs |goto 58.03,56.25 < 7 |walk
Leave the building |goto 58.43,56.45 < 7 |walk
clicknpc Playful Azure Serpent##56853
|tip It walks around this small area.
Find the Playful Azure Serpent |q 29999/1 |goto 59.21,56.73
step
label "Launch_Fireworks"
click Firework Launcher##209672+
|tip They look like metal pots sitting on wooden pallets on the ground around this area.
Launch #8# Fireworks |q 30005/1 |goto 57.46,58.50
step
talk Elder Sage Rain-Zhu##56782
turnin A New Vision##30011 |goto 58.14,58.66
turnin Everything In Its Place##30004 |goto 58.14,58.66
step
talk Fei##56784
turnin The Rider's Bind##29999 |goto 58.03,59.01
turnin Lighting Up the Sky##30005 |goto 58.03,59.01
accept The Jade Serpent##30000 |goto 58.03,59.01
step
Watch the dialogue
Listen to the Jade Serpent |q 30000/1
step
talk Elder Sage Wind-Yi##57242
turnin The Jade Serpent##30000 |goto 55.84,57.08
step
accept Get Back Here!##30498
|tip You will automatically accept this quest.
step
talk Ginsa Arroweye##59727
fpath Jade Temple Grounds |goto 54.57,61.76
step
talk Ginsa Arroweye##59727 |goto 54.57,61.76
Tell her _"I could use a kite to Pearlfin Village."_
Travel to Pearlfin Village |goto 58.24,84.22 < 10 |q 30498
step
talk Sully 'The Pickle' McLeary##59550
accept An Unexpected Advantage##30565 |goto 58.55,82.30
step
talk Admiral Taylor##55122
turnin Get Back Here!##30498 |goto 58.07,80.65
accept Helping the Cause##30568 |goto 58.07,80.65
step
talk Pearlfin Recruit##59572
Tell them _"Let's see what you've got."_
kill Pearlfin Recruit##59572
|tip They will eventually surrender.
Challenge a Pearlfin Recruit |q 30568/1 |goto 59.34,84.18
step
clicknpc Wounded Pearlfin##59609+
|tip They look like dead fish men on the ground around this area.
Assist #3# Wounded Pearlfins |q 30568/3 |goto 60.33,87.22
stickystart "Collect_Rusty_Locking_Bolts"
step
kill Slingtail Ambusher##59554+
collect 4 Water-Damaged Gear##80176 |q 30565/1 |goto 63.23,77.34
step
label "Collect_Rusty_Locking_Bolts"
kill Slingtail Ambusher##59554+
collect 4 Rusty Locking Bolt##80177 |q 30565/2 |goto 63.23,77.34
step
talk Amber Kearnen##59563
Ask her _"What can I do to help?"_
kill Hozen Captive##59560
|tip It appears in the pit nearby.
Defeat the Captive Hozen |q 30568/2 |goto 54.81,79.75
step
talk Sully 'The Pickle' McLeary##59550
turnin An Unexpected Advantage##30565 |goto 58.55,82.30
step
talk Admiral Taylor##55122
turnin Helping the Cause##30568 |goto 58.07,80.65
step
talk Lorewalker Cho##59620
accept Last Piece of the Puzzle##31362 |goto 58.85,81.11
step
talk Mishi##64475 |goto 58.83,81.08
Tell him _"I am ready to leave."_
Fly to Serpent's Overlook |goto 44.65,67.24 < 10 |noway |c |q 31362
step
talk Sky Dancer Ji##64310
fpath Serpent's Overlook |goto 43.10,68.49
step
use the Cho Family Heirloom##80071
Watch the dialogue
Place the Heirloom at the Cho Family Shrine |q 31362/1 |goto 44.50,66.93
step
talk Lorewalker Cho##59411
turnin Last Piece of the Puzzle##31362 |goto 44.77,67.09
accept The Seal is Broken##31303 |goto 44.77,67.09
step
talk Mishi##64475
Tell him _"Let's do this, Mishi!"_
Fly with Mishi |invehicle |goto 44.77,67.04 |q 31303
step
Seal #12# Sha Fissures |q 31303/1 |goto 47.30,58.20
|tip Use the ability on your action bar on the smoke pillars around this area.
|tip They look like spots white smoke rising out of them on the ground around this area.
step
talk Lorewalker Cho##59418
turnin The Seal is Broken##31303 |goto 49.30,61.48
accept Residual Fallout##30500 |goto 49.30,61.48
accept Jaded Heart##30502 |goto 49.30,61.48
accept Emergency Response##31319 |goto 49.30,61.48
stickystart "Kill_Sha_Echoes"
stickystart "Kill_Sha_Remnants"
step
use Cho's Fireworks##86511
Recover Admiral Taylor |q 31319/1 |goto 47.70,62.05
step
use Cho's Fireworks##86511
Recover Mishka |q 31319/2 |goto 46.36,61.66
step
use Cho's Fireworks##86511
Recover Sully |q 31319/3 |goto 47.53,59.19
step
label "Kill_Sha_Echoes"
kill 12 Sha Echo##59417 |q 30500/1 |goto 46.93,60.72
step
label "Kill_Sha_Remnants"
click Celestial Jade##210921+
|tip They look like small green rocks on the ground around this area.
collect Celestial Jade##80074+ |n
use the Celestial Jade##80074
|tip Use it on Sha Remnants around this area.
|tip They become non-elite.
kill 6 Sha Remnant##59434 |q 30502/1 |goto 46.93,60.72
step
talk Lorewalker Cho##59418
turnin Residual Fallout##30500 |goto 49.30,61.48
turnin Jaded Heart##30502 |goto 49.30,61.48
turnin Emergency Response##31319 |goto 49.30,61.48
step
talk Fei##59899
accept Moving On##30648 |goto 49.30,61.42
step
talk Shao the Defiant##54697
turnin An Air of Worry##29576 |goto 43.48,75.92
accept Defiance##29578 |goto 43.48,75.92
accept Rally the Survivors##29579 |goto 43.48,75.92
step
Enter the building |goto 43.40,75.93 < 3 |walk
talk Gentle Mother Hanae##54854
|tip She walks around this area inside the building.
accept Spitfire##29585 |goto 43.24,76.01
accept Orchard-Supplied Hardware##29580 |goto 43.24,76.01
stickystart "Kill_Gormali_Incinerators"
stickystart "Kill_Gormali_Raiders"
stickystart "Rescue_Survivors"
stickystart "Collect_Orchard_Tools"
step
Leave the building |goto 43.41,75.92 < 3 |walk
use the Nectarbreeze Cider##72578
|tip Use it near fires while facing them around this area.
Put Out #12# Orchard Fires |q 29585/1 |goto 44.01,74.31
step
label "Kill_Gormali_Incinerators"
kill 8 Gormali Incinerator##54703 |q 29578/2 |goto 44.01,74.31
step
label "Kill_Gormali_Raiders"
kill 8 Gormali Raider##54702 |q 29578/1 |goto 44.01,74.31
step
label "Rescue_Survivors"
talk Nectarbreeze Farmer##54763+
Tell them _"Get to Hanae's house. It's safe there."_
Rescue #5# Survivors |q 29579/1 |goto 44.01,74.31
step
label "Collect_Orchard_Tools"
click Orchard Tool##209345+
|tip They look like various farm tools with long brown wooden handles on the ground around this area.
collect 6 Orchard Tool##72133 |q 29580/1 |goto 44.01,74.31
step
talk Shao the Defiant##54697
turnin Defiance##29578 |goto 43.48,75.92
turnin Rally the Survivors##29579 |goto 43.48,75.92
step
Enter the building |goto 43.40,75.93 < 3 |walk
talk Gentle Mother Hanae##54854
|tip She walks around this area inside the building.
turnin Spitfire##29585 |goto 43.24,76.01
turnin Orchard-Supplied Hardware##29580 |goto 43.24,76.01
step
talk Traumatized Nectarbreeze Farmer##55209
|tip Inside the building.
accept The Splintered Path##29586 |goto 43.21,75.94
step
Leave the building |goto 43.40,75.93 < 3 |walk
Discover Camp Mogu |q 29586/1 |goto 41.00,73.97
step
talk Shao the Defiant##55009
turnin The Splintered Path##29586 |goto 41.00,73.97
accept Unbound##29587 |goto 41.00,73.97
accept Getting Down to Business##29670 |goto 41.00,73.97
stickystart "farmerfree"
step
kill Subjugator Gormal##55016 |q 29670/1 |goto 37.80,76.18
step
label "farmerfree"
clicknpc Captured Nectarbreeze Farmer##54990+
|tip They look like panda caught in nets on the ground around this area.
kill Gormali Slaver##54989+
|tip Kill the ones dragging a prisoner behind them.
Set #10# Farmers Free |q 29587/1 |goto 39.91,74.79
step
talk Shao the Defiant##55009
turnin Unbound##29587 |goto 41.00,73.97
turnin Getting Down to Business##29670 |goto 41.00,73.97
step
talk Fei##59899
Tell her _"I am ready to leave."_
Begin Flying to the Valley of the Four Winds |invehicle |goto 49.30,61.42 |q 30648
step
Watch the dialogue
Travel to the Valley of the Four Winds |q 30648/1 |goto Valley of the Four Winds/0 85.97,21.72 |notravel
step
Click the Complete Quest Box:
turnin Moving On##30648
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Valley of the Four Winds (15-60)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."ValleyOfTheFourWinds",
next="Leveling Guides\\Pandaria (10-60)\\Krasarang Wilds (15-60)",
condition_suggested=function() return level >= 15 and level <= 50 and not completedq(30186) end,
startlevel=15,
endlevel=50,
},[[
step
talk Chen Stormstout##56133
turnin His Name Was... Stormstout##32018 |goto Valley of the Four Winds/0 85.94,22.10 |only if haveq(32018) or completedq(32018)
accept Chen and Li Li##29907 |goto Valley of the Four Winds/0 85.94,22.10
step
talk Princeton##60230
fpath Pang's Stead |goto 84.49,21.06
step
Watch the dialogue
Follow Chen and Li Li to Pang's Stead |q 29907/1 |goto 83.78,21.17
step
talk Pang Thunderfoot##56204
turnin Chen and Li Li##29907 |goto 83.70,21.03
accept A Seemingly Endless Nuisance##29908 |goto 83.70,21.03
step
Enter the building |goto 83.61,20.83 < 3 |walk
talk Nan Thunderfoot##65528
|tip Inside the building.
home Thunderfoot Inn |goto 83.76,20.19 |q 29877 |future
stickystart "Slay_Large_Virmen"
stickystart "Slay_Virmen_Pesterers"
step
Leave the building |goto 83.50,20.16 < 5 |walk
talk Muno the Farmhand##56440
accept A Poor Grasp of the Basics##29877 |goto 82.70,21.24
step
clicknpc Plow Plant##56281+
|tip They look like plows sticking up out of dirt piles around this area.
clicknpc Hoe Tree##56280+
|tip They look like hoes sticking up out of dirt piles around this area.
clicknpc Rake Tree##56279+
|tip They look like rakes sticking up out of dirt piles around this area.
clicknpc Barrow Bush##56278+
|tip They look like wheelbarrow handles sticking up out of dirt piles around this area.
Find #7# Buried Farm Equipment |q 29877/1 |goto 80.71,21.45
step
label "Slay_Large_Virmen"
Kill Snagtooth enemies around this area
|tip Kill the larger looking rat enemies around this area.
Slay #8# Large Virmen |q 29908/1 |goto 80.71,21.45
step
label "Slay_Virmen_Pesterers"
kill Snagtooth Pesterling##65504+
Slay #18# Virmen Pesterers |q 29908/2 |goto 80.71,21.45
step
talk Muno the Farmhand##56440
turnin A Poor Grasp of the Basics##29877 |goto 82.70,21.24
step
talk Pang Thunderfoot##56204
turnin A Seemingly Endless Nuisance##29908 |goto 83.70,21.03
accept Low Turnip Turnout##29909 |goto 83.70,21.03
step
talk Xiao##56110
accept The Search for the Hidden Master##30086 |goto 84.08,21.04
step
talk Xiao##56110
turnin The Search for the Hidden Master##30086 |goto 84.08,21.05
accept Ken-Ken##29873 |goto 84.08,21.05
accept Clever Ashyo##29871 |goto 84.08,21.05
accept Kang Bramblestaff##29874 |goto 84.08,21.05
accept Lin Tenderpaw##29872 |goto 84.08,21.05
step
talk Ang Thunderfoot##56207
|tip He walks around this area.
turnin Low Turnip Turnout##29909 |goto 81.59,25.22
accept Taking a Crop##29940 |goto 81.59,25.22
step
talk Ana Thunderfoot##56465
|tip She walks around this area.
accept Rampaging Rodents##29910 |goto 82.14,26.62
stickystart "Fill_Marmot_Holes"
step
clicknpc Plump Marmot##56203+
|tip They look like brown rodents running on the ground around this area.
Move #6# Plump Marmots |q 29910/1 |goto 82.38,25.15
step
label "Fill_Marmot_Holes"
click Marmot Hole##209835+
|tip They look like piles of dirt on the ground around this area.
Fill #6# Marmot Holes |q 29910/2 |goto 82.38,25.15
step
talk Ana Thunderfoot##56465
|tip She walks around this area.
turnin Rampaging Rodents##29910 |goto 82.14,26.62
step
Enter the cave |goto 86.50,28.08 < 5 |walk
Follow the path |goto 85.90,27.88 < 5 |walk
click Stolen Turnip##209891+
|tip They look like round white vegetables with green leaves on the ground around this area inside the cave.
collect 5 Stolen Turnip##76297 |q 29940/1 |goto 84.62,26.58
step
Follow the path up |goto 85.80,27.79 < 5 |walk
Leave the cave |goto 86.56,28.08 < 5 |walk
click Stolen Watermelon##209899+
|tip They look like watermelons floating in the water with flags stick in them around this area.
collect 5 Stolen Watermelon##76298 |q 29940/2 |goto 85.56,33.13
step
talk Ang Thunderfoot##56207
|tip He walks around this area.
turnin Taking a Crop##29940 |goto 81.59,25.22
accept Practically Perfect Produce##29911 |goto 81.59,25.22
step
talk Pang Thunderfoot##56204
turnin Practically Perfect Produce##29911 |goto 83.70,21.02
accept The Fabulous Miss Fanny##29912 |goto 83.70,21.02
step
click Ang's Giant Pink Turnip##209844
collect Ang's Giant Pink Turnip##75259 |goto 84.28,21.89 |q 29912 |future
step
click Ang's Summer Watermelon##209843
collect Ang's Summer Watermelon##75258 |goto 84.16,22.07 |q 29912 |future
step
click Pang's Extra-Spicy Tofu##209842
collect Pang's Extra-Spicy Tofu##75256 |goto 84.04,22.00 |q 29912 |future
step
talk Miss Fanny##56192
Tell her _"Hit it with average power."_
Launch a Pink Turnip |q 29912/1 |goto 83.00,21.36
step
talk Miss Fanny##56192
Tell her _"Hit it very softly."_
Launch a Watermelon |q 29912/2 |goto 83.00,21.36
step
talk Miss Fanny##56192
Tell her _"Hit it as hard as possible."_
Launch the Extra-Spicy Tofu |q 29912/3 |goto 83.00,21.36
step
talk Liang Thunderfoot##56205
turnin The Fabulous Miss Fanny##29912 |goto 75.22,24.05
accept The Meat They'll Eat##29913 |goto 75.22,24.05
accept Back to the Sty##29914 |goto 75.22,24.05
stickystart "Collect_Turtle_Meat_Scraps"
stickystart "Collect_Mushan_Shoulder_Steaks"
step
talk Kim of the Mountain Winds##62658
fpath Grassy Cline |goto 70.82,24.10
step
clicknpc Jian##56253
|tip She looks like a grey pig that walks around this area.
Find Jian |q 29914/1 |goto 70.39,24.05
step
clicknpc Smelly##56255
|tip She looks like a pink pig that walks around this area.
Find Smelly |q 29914/3 |goto 70.56,28.36
step
clicknpc Ling##56254
|tip She looks like a grey pig that walks around this area.
Find Ling |q 29914/2 |goto 67.08,29.74
step
label "Collect_Turtle_Meat_Scraps"
kill Wyrmhorn Turtle##56256+
collect 80 Turtle Meat Scrap##75276 |q 29913/2 |goto 67.87,29.22
step
label "Collect_Mushan_Shoulder_Steaks"
kill Adolescent Mushan##56239+
collect 4 Mushan Shoulder Steak##75275 |q 29913/1 |goto 71.90,29.94
step
talk Liang Thunderfoot##56205
turnin The Meat They'll Eat##29913 |goto 75.22,24.06
turnin Back to the Sty##29914 |goto 75.22,24.06
accept A Neighbor's Duty##29915 |goto 75.22,24.07
step
talk Francis the Shepherd Boy##56208
turnin A Neighbor's Duty##29915 |goto 78.12,32.91
accept Piercing Talons and Slavering Jaws##29916 |goto 78.12,32.91
accept Lupello##29917 |goto 78.12,32.91
stickystart "Kill_Thieving_Wolves"
stickystart "Slay_Thieving_Plainshawks"
step
kill Lupello##56357
|tip He looks like a black wolf that walks around this area.
Slay Lupello |q 29917/1 |goto 81.76,39.85
step
label "Kill_Thieving_Wolves"
kill 6 Thieving Wolf##56106 |q 29916/2 |goto 81.64,35.01
step
label "Slay_Thieving_Plainshawks"
kill Thieving Plainshawk##56034+
|tip They look like brown birds perched in trees or flying in the air around this area.
Slay #5# Thieving Plainshawks |q 29916/1 |goto 81.64,35.01
step
talk Francis the Shepherd Boy##56208
turnin Piercing Talons and Slavering Jaws##29916 |goto 78.12,32.91
turnin Lupello##29917 |goto 78.12,32.91
step
Watch the dialogue
talk Shang Thunderfoot##56312
accept A Lesson in Bravery##29918 |goto 78.18,32.82
step
use the Rancher's Lariat##75208
|tip Use it on Great White Plainshawk around this area.
|tip They look like larger white birds flying in the air around this area.
kill Great White Plainshawk##56171 |q 29918/1 |goto 79.40,34.76
|tip Kill it while flying around on its back.
|tip Use the ability that appears as a button on the screen.
|tip You will see a message on the screen.
step
talk Shang Thunderfoot##56312
|tip He walks around this area.
turnin A Lesson in Bravery##29918 |goto 74.56,34.61
step
talk Chen Stormstout##56133
accept Great Minds Drink Alike##29919 |goto 75.28,35.50
step
talk Chen Stormstout##56133
Tell him _"I'm ready. Let's hit the road."_
Watch the dialogue
Follow Chen and Li Li |goto 75.28,35.50 > 12 |c |q 29919
step
Watch the dialogue
|tip Follow them as they walk.
|tip Make sure to stay close to them.
Escort Chen and Li Li |q 29919/1 |goto 68.87,43.15
step
talk Mudmug##56474
turnin Great Minds Drink Alike##29919 |goto 68.72,43.12
step
talk Chen Stormstout##56133
accept Leaders Among Breeders##29944 |goto 68.87,43.15
step
talk Li Li##56138
accept Yellow and Red Make Orange##29945 |goto 68.89,43.32
stickystart "Collect_Vial_Animal_Bloods"
step
click Meadow Marigold##209907+
|tip They look like yellow flowers on the ground around this area.
collect 10 Meadow Marigold##76334 |q 29945/1 |goto 70.53,47.94
step
label "Collect_Vial_Animal_Bloods"
Kill enemies around this area
collect 40 Vial of Animal Blood##76335 |q 29945/2 |goto 70.53,47.94
step
talk Li Li##56138
turnin Yellow and Red Make Orange##29945 |goto 68.88,43.30
accept Crouching Carrot, Hidden Turnip##29947 |goto 68.87,43.31
stickystart "Trick_Virmen_With_Orange_Painted_Turnips"
step
kill Aiyu the Skillet##56520
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
Slay Aiyu the Skillet |q 29944/1 |goto 68.29,38.01
step
kill Jinanya the Clawblade##56513
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
Slay Jinanya the Clawblade |q 29944/2 |goto 65.97,37.39
step
kill Frenzyhop##56514
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
Slay Frenzyhop |q 29944/3 |goto 64.53,40.65
step
label "Trick_Virmen_With_Orange_Painted_Turnips"
use the Orange-Painted Turnip##76370
|tip Use it on Twitchheel enemies around this area.
Trick #12# Virmen with Orange-Painted Turnips |q 29947/1 |goto 67.63,36.61
step
talk Chen Stormstout##56133
turnin Leaders Among Breeders##29944 |goto 68.88,43.15
accept The Warren-Mother##29946 |goto 68.86,43.16
step
talk Mudmug##56474
accept Thieves to the Core##29948 |goto 68.71,43.12
step
talk Li Li##56138
turnin Crouching Carrot, Hidden Turnip##29947 |goto 68.88,43.32
stickystart "Collect_Stolen_Sack_Of_Hops"
step
Enter the cave |goto 69.07,39.98 < 5 |walk
Follow the path |goto 69.07,39.11 < 5 |walk
Follow the path |goto 68.98,37.31 < 5 |walk
Continue following the path |goto 68.63,36.65 < 5 |walk
Continue following the path |goto 68.21,36.80 < 5 |walk
kill Chufa##56537 |q 29946/1 |goto 67.90,37.44
|tip Inside the cave.
step
label "Collect_Stolen_Sack_Of_Hops"
Follow the path |goto 68.20,36.72 < 5 |walk
click Stolen Sack of Hops##211696+
|tip They look like tan bags filled with green balls on the ground around this area inside the cave.
collect 6 Stolen Sack of Hops##76337 |q 29948/1 |goto 68.98,36.62
step
Follow the path up |goto 69.06,37.54 < 5 |walk
Continue up the path |goto 69.02,38.72 < 5 |walk
Leave the cave |goto 69.06,40.01 < 5 |walk
talk Mudmug##56474
turnin Thieves to the Core##29948 |goto 68.71,43.12
step
talk Chen Stormstout##56133
turnin The Warren-Mother##29946 |goto 68.88,43.15
accept Legacy##29949 |goto 68.88,43.14
step
Watch the dialogue
talk Li Li##56138
turnin Legacy##29949 |goto 68.77,43.44
accept Li Li's Day Off##29950 |goto 68.77,43.44
step
talk Mudmug##56474
accept Muddy Water##29951 |goto 68.7,43.1
step
use Li Li's Wishing-Stone##76350
|tip Use it if she's not following you.
Bring Li Li to Huangtze Falls |q 29950/3 |goto 74.34,42.73
step
use Li Li's Wishing-Stone##76350
|tip Use it if she's not following you.
Bring Li Li to New Cifera |q 29950/2 |goto 61.90,35.36
step
talk Clever Ashyo##56113
turnin Clever Ashyo##29871 |goto 61.23,34.22
accept Ashyo's Vision##29577 |goto 61.23,34.22
step
talk Yan##56773
accept Bottletoads##29757 |goto 60.61,33.69
step
talk Gladecaster Lang##58736
accept Watery Woes##30267 |goto 60.97,32.88
step
kill Manglemaw##58754
kill Manglemaw's Mother##58755
|tip She appears after you kill Manglemaw.
collect Enormous Crocolisk Tail##79238 |goto 57.48,25.79 |q 30275 |future
step
use the Enormous Crocolisk Tail##79238
accept A Crocolisk Tale##30275
stickystart "Collect_Glade_Glimmers"
step
Kill Glade enemies around this area
collect 5 Spindly Bloodfeather##79198 |q 30267/2 |goto 57.03,33.27
step
label "Collect_Glade_Glimmers"
clicknpc Glade Glimmer##57301+
|tip They look like tiny yellow bugs in the air around this area.
collect 18 Glade Glimmer##79197 |q 30267/1 |goto 57.03,33.27
step
talk Gladecaster Lang##58736
turnin Watery Woes##30267 |goto 60.98,32.89
step
talk Yan##56773
turnin A Crocolisk Tale##30275 |goto 60.62,33.70
step
talk Zhang Yue##56802
accept Snap Judgment##29600 |goto 59.83,27.93
step
talk Clever Ashyo##56113
Tell him _"Go ahead and speak with the water, Ashyo."_
Witness Ashyo's Vision |q 29577/1 |goto 59.26,27.56
step
talk Zhang Yue##56802
turnin Ashyo's Vision##29577 |goto 59.83,27.93
accept The Golden Dream##29581 |goto 59.82,27.95
stickystart "Kill_Razorback_Snappers"
stickystart "Scoop_Toad_Eggs"
step
kill Krosh##56833
accept Guess Who's Back##29758 |goto 65.32,25.73
|tip You will automatically accept this quest after looting.
step
click Dreamleaf Bush##209987
collect Sprig of Dreamleaf##76973 |q 29581/1 |goto 65.26,26.29
step
label "Kill_Razorback_Snappers"
kill 16 Razorback Snapper##56832 |q 29600/1 |goto 63.15,26.42
step
label "Scoop_Toad_Eggs"
click Gurgling Toadspawn##209950+
|tip They look like bubbles in the water around this area.
Scoop #8# Toad Eggs |q 29757/1 |goto 63.15,26.42
step
talk Zhang Yue##56802
turnin Snap Judgment##29600 |goto 59.83,27.95
step
talk Yan##56773
turnin The Golden Dream##29581 |goto 60.61,33.69
step
Watch the dialogue
talk Yan##56773
turnin Bottletoads##29757 |goto 60.61,33.69
turnin Guess Whose Back##29758 |goto 60.61,33.69
step
talk Wing Nga##60231
fpath Halfhill |goto 56.50,50.36
step
Enter the building |goto 55.38,50.31 < 5 |walk
talk Innkeeper Lei Lan##59582
|tip She walks around this area and upstairs inside the building.
home The Lazy Turnip |goto 55.11,50.55 |q 32035 |future
step
Leave the building |goto 55.38,50.31 < 5 |walk
talk Stonecarver Mac##64315
accept Children of the Water##32045 |goto 55.14,47.39
step
talk Lolo Lio##59585
accept Got Silk?##32035 |goto 55.59,52.06
step
use Li Li's Wishing-Stone##76350
|tip Use it if she's not following you.
Bring Li Li to the Silken Fields |q 29950/1 |goto 61.79,58.85
step
talk Silkmaster Tsai##57405
turnin Got Silk?##32035 |goto 62.66,59.74
accept Where Silk Comes From##30072 |goto 62.66,59.75
step
talk Journeyman Chu##57424
accept The Moth Rebellion##30059 |goto 63.55,58.45
stickystart "Kill_Tiny_Mutated_Silkmoths"
step
kill 6 Mutated Silkmoth##57422 |q 30059/1 |goto 65.17,59.68
|tip They look like large white moths flying in the air around this area.
step
label "Kill_Tiny_Mutated_Silkmoths"
kill 8 Tiny Mutated Silkmoth##65984 |q 30059/2 |goto 65.17,59.68
step
click Muddy Water##209921+
|tip They look like green spots on the water around this area.
collect Stoppered Vial of Muddy Water##76356 |q 29951/1 |goto 71.61,56.13
step
click Mulberry Barrel##210080
|tip They look like wooden buckets on the ground around this area.
collect Mulberry Leaves##77455 |q 30072/1 |goto 62.48,55.19
step
clicknpc Hungry Silkworm##57403+
|tip They look like green caterpillars on the ground around this area.
Feed #5# Hungry Silkworms |q 30072/2 |goto 61.28,61.04
step
Enter the building |goto 62.48,61.63 < 5 |walk
click Silk Cocoon Bucket##210088
|tip Inside the building.
collect Raw Silk##77456 |q 30072/3 |goto 62.37,62.49
step
Leave the building |goto 62.48,61.63 < 5 |walk
talk Silkmaster Tsai##57405
turnin Where Silk Comes From##30072 |goto 62.66,59.75
step
talk Journeyman Chu##57424
turnin The Moth Rebellion##30059 |goto 63.54,58.45
step
talk Master Goh##57407
accept Mothallus!##30058 |goto 63.62,58.53
step
click Mothallus Bait##210117
Watch the dialogue
kill Mothallus##57421
Bait and Kill Mothallus |q 30058/1 |goto 64.38,57.97
step
talk Master Goh##57407
turnin Mothallus!##30058 |goto 63.62,58.53
step
talk Li Li##56138
turnin Li Li's Day Off##29950 |goto 68.78,43.43
step
talk Mudmug##56474
turnin Muddy Water##29951 |goto 68.71,43.12
step
Watch the dialogue
talk Chen Stormstout##56133
accept Broken Dreams##29952 |goto 68.85,43.41
step
talk Chen Stormstout##56133 |goto 68.85,43.41
Ask him _"What happened, Chen?"_
Enter Chen's Story |invehicle |goto 68.85,43.41 |q 29952
step
Run up the ramp |goto 32.39,71.35 < 5 |walk
Follow the path |goto 32.93,71.13 < 5 |walk
Watch the dialogue
kill Unruly Alemental##56684
|tip Inside the building.
|tip Use the ability on your action bar.
Click Here After Killing the Unruly Alemental |confirm |goto 34.25,70.57 |q 29952
step
Follow the path |goto 35.03,70.98 < 5 |walk
Follow the path |goto 35.64,71.91 < 5 |walk
Watch the dialogue
kill Wuk-Wuk##56691
|tip Use the ability on your action bar.
Click Here After Killing Wuk-Wuk |confirm |goto 35.87,72.72 |q 29952
step
Follow the path up |goto 36.13,72.60 < 5 |walk
Follow the path |goto 36.48,72.46 < 5 |walk
Follow the path up |goto 36.65,71.94 < 5 |walk
Follow the path |goto 36.54,71.38 < 5 |walk
Enter the building |goto 36.11,71.13 < 5 |walk
Follow the path |goto 35.21,71.07 < 7 |walk
Watch the dialogue
|tip Inside the building.
Listen to Chen's Story |q 29952/1 |goto 34.55,70.75
step
talk Chen Stormstout##56133
turnin Broken Dreams##29952 |goto 68.85,43.40
accept Chen's Resolution##30046 |goto 68.85,43.40
step
talk Chen Stormstout##56133
turnin Chen's Resolution##30046 |goto 55.89,49.44
accept Hop Hunting##30053 |goto 55.89,49.44
accept Li Li and the Grain##30048 |goto 55.89,49.44
accept Doesn't Hold Water##30049 |goto 55.89,49.44
step
talk Mudmug##56474
|tip He walks around this small area.
turnin Doesn't Hold Water##30049 |goto 54.28,38.74
accept The Great Water Hunt##30051 |goto 54.28,38.74
step
talk Mudmug##56474
|tip He walks around this small area.
Tell him _"I'm ready to go, Mudmug."_
Click Here Once Mudmug Begins Following You |confirm |goto 54.28,38.74 |q 30051
stickystart "Gather_Gladewaters"
step
kill Kracor##67128 |q 32045/1 |goto 56.05,33.85
step
label "Gather_Gladewaters"
Gather #30# Gladewater |q 30051/1 |goto 54.14,31.20
|tip Bring Mudmug near Swirling Pools around this area.
|tip They look like dark blue glittering spots on the ground around this area.
step
_Next to you:_
talk Mudmug##58785
turnin The Great Water Hunt##30051
accept Barreling Along##30172
step
kill Thundergill##67125
|tip He looks like a big blue fish that swims underwater around this area.
Slay Thundergill |q 32045/2 |goto 54.94,25.22
step
kill Succula##67099
|tip She looks like a big red and yellow stealthed spider that walks around this area.
Slay Succula |q 32045/3 |goto 51.3,26.9
step
Lead Mudmug Back to Halfhill |q 30172/1 |goto 55.89,49.43
If he's not following you, you can find Mudmug around [54.28,38.74]
step
talk Chen Stormstout##56133
turnin Barreling Along##30172 |goto 55.89,49.43
step
talk Stonecarver Mac##64315
turnin Children of the Water##32045 |goto 55.14,47.38
step
talk Gardener Fran##62377
accept Gardener Fran and the Watering Can##30050 |goto 48.31,33.48
step
talk Gardener Fran##62377
Tell her _"I'm ready to go!"_
Water #60# Vegetables |q 30050/1 |goto 48.31,33.48
|tip Use the "Water Plants" ability near vegetables around this area.
|tip It appears as a button on the screen.
|tip She tells you what vegetables need to be watered.
|tip The type of vegetables that need to be watered will sparkle.
|tip All of the patches you need to water will be north of her location, around the big hill.
step
talk Gardener Fran##62377
turnin Gardener Fran and the Watering Can##30050 |goto 48.31,33.48
step
talk Gardener Fran##62377
Tell her _"I'm helping a friend brew some beer, and we need hops. Do you have any to spare?"_
Speak with Gardener Fran |q 30053/1 |goto 48.31,33.48
step
talk Den Mudclaw##62385
accept The Farmer's Daughter##30056 |goto 44.26,34.21
step
talk Den Mudclaw##62385
Ask him _"Do you have any hops you can spare?"_
Speak with Den Mudclaw |q 30053/3 |goto 44.26,34.21
step
talk Mung-Mung##57401
accept Enough is Ookin' Enough##30054 |goto 44.17,34.24
stickystart "Collect_Virmen_Teeth"
step
Enter the cave |goto 43.55,35.19 < 5 |walk
Follow the path down |goto 43.46,36.05 < 5 |walk
Follow the path |goto 42.37,38.13 < 7 |walk
Follow the path up |goto 41.44,38.63 < 3 |walk
talk Mina Mudclaw##57408
|tip Inside the cave.
turnin The Farmer's Daughter##30056 |goto 41.32,38.14
accept Seeing Orange##30057 |goto 41.32,38.14
step
label "Collect_Virmen_Teeth"
Kill Springtail enemies around this area
|tip Inside the cave.
collect 100 Virmen Tooth##77379 |q 30054/1 |goto 42.82,38.20
step
Follow the path up |goto 43.33,36.41 < 5 |walk
Continue up the path |goto 43.53,35.84 < 5 |walk
Leave the cave |goto 43.55,35.09 < 5 |walk
Bring Mina Mudclaw Home to Her Father |q 30057/1 |goto 44.27,34.21
step
talk Den Mudclaw##62385
turnin Seeing Orange##30057 |goto 44.27,34.21
step
talk Mung-Mung##57401
turnin Enough is Ookin' Enough##30054 |goto 44.17,34.24
step
talk Gai Lan##57385
Ask him _"Can I buy some hops from you?"_
Speak with Gai Lan |q 30053/2 |goto 38.59,51.71
step
Click the Complete Quest Box:
turnin Hop Hunting##30053
step
talk Gai Lan##57385
accept Weed War##30052 |goto 38.59,51.71
step
talk Gai Lan##57385
Ask him _"What weeds?"_
Watch the dialogue
clicknpc Ugly Weed##57306+
clicknpc Nasty Weed##57308+
click Weed-B-Gone Gas Bomb##210057+
Pull #100# Weeds |q 30052/1 |goto 38.59,51.71
|tip Run over the small blue weeds that appear on the ground around this area.
|tip You can do this while mounted.
step
talk Gai Lan##57385
turnin Weed War##30052 |goto 38.59,51.71
step
accept Stormstout's Hops##30055 |goto 38.59,51.71
|tip You will automatically accept this quest.
step
talk Chen Stormstout##56133
turnin Stormstout's Hops##30055 |goto 55.89,49.45
step
talk Li Li##56138
turnin Li Li and the Grain##30048 |goto 52.69,62.83
accept Taste Test##30031 |goto 52.69,62.83
step
talk Grainlord Kai##57211
accept Wee Little Shenanigans##30029 |goto 52.73,62.99
step
talk Grainer Pan##57209
accept Out of Sprite##30030 |goto 52.61,62.97
stickystart "Kill_Tricky_Maizer"
step
Enter the building |goto 51.68,64.13 < 5 |walk
|tip He runs around this area upstairs inside the building.
kill Cornan##57213 |q 30030/1 |goto 51.47,64.42
step
Leave the building |goto 51.70,64.09 < 3 |walk
click Malted Grain##210023
Taste the Malted Grain |q 30031/3 |goto 50.80,63.61
step
click Aged Grain##210021
Taste the Aged Grain |q 30031/1 |goto 51.17,60.79
step
click Light Grain##210024
Taste the Light Grain |q 30031/2 |goto 53.73,63.31
step
click Fresh Grain##210022
Taste the Fresh Grain |q 30031/4 |goto 53.59,64.58
step
label "Kill_Tricky_Maizer"
Kill Maizerly enemies around this area
Slay #8# Tricky Maizers |q 30029/1 |goto 52.30,62.29
step
talk Li Li##56138
turnin Taste Test##30031 |goto 52.69,62.83
step
talk Grainer Pan##57209
turnin Out of Sprite##30030 |goto 52.60,62.97
step
talk Grainlord Kai##57211
turnin Wee Little Shenanigans##30029 |goto 52.74,62.99
accept The Quest for Better Barley##30032 |goto 52.74,62.99
accept Grain Recovery##30028 |goto 52.74,62.99
step
kill Maizerly Thief##57267+
click Stolen Barley Sack##210002+
|tip They look like big white bags on the ground around this area.
collect 8 Sack of Grain##77033 |q 30028/1 |goto 56.17,64.96
step
talk Grainlord Kai##57211
turnin Grain Recovery##30028 |goto 52.73,63.00
step
click Rappeling Rope##7548
Use the Cliff Harness |q 30032/1 |goto 51.26,77.50
step
Enter the cave |goto 53.60,76.34 < 5 |walk
click Malted Cave Barley##210037
|tip They look like small bushes on the ground inside this cave.
collect Malted Cave Barley##77034 |q 30032/2 |goto 53.56,74.79
step
Leave the cave |goto 53.60,76.34 < 5 |walk
talk Li Li##56138
turnin The Quest for Better Barley##30032 |goto 52.69,62.83
accept The Chen Taste Test##30047 |goto 52.69,62.83
step
talk Chen Stormstout##56133
turnin The Chen Taste Test##30047 |goto 55.89,49.45
accept The Emperor##30073 |goto 55.89,49.45
step
Watch the dialogue
Help Chen Brew His Beer |q 30073/1 |goto 55.89,49.45
step
talk Chen Stormstout##56133
turnin The Emperor##30073 |goto 55.84,49.35
accept Knocking on the Door##30074 |goto 55.84,49.35
step
talk Chen Stormstout##56133
turnin Knocking on the Door##30074 |goto 32.25,68.55
step
Watch the dialogue
talk Mudmug##56474
accept The Fanciest Water##30076 |goto 32.26,68.28
step
talk Li Li##56138
accept Barrels, Man##30077 |goto 32.33,68.47
step
talk Chen Stormstout##56133
accept Clear the Way##30075 |goto 32.11,68.34
stickystart "Kill_Ale_Addled_Hozen_Or_Mischievous_Virmen"
stickystart "Collect_Spritewater_Essences"
step
clicknpc Barreled Pandaren##57662+
|tip Avoid Ook-Ook.
|tip He runs up and down the road around this area.
|tip If he catches you, use the "Break Barrel" ability.
|tip It appears as a button on the screen.
Free #7# Barreled Pandaren |q 30077/1 |goto 35.95,66.10
step
label "Kill_Ale_Addled_Hozen_Or_Mischievous_Virmen"
Kill enemies around this area
Slay #10# Ale-Addled Hozen or Mischievous Virmen |q 30075/1 |goto 35.95,66.10
step
label "Collect_Spritewater_Essences"
kill Curious Water Sprite##57673+
collect 3 Spritewater Essence##77471 |q 30076/1 |goto 35.95,66.10
step
talk Li Li##56138
turnin Barrels, Man##30077 |goto 36.13,69.05
step
talk Mudmug##56474
turnin The Fanciest Water##30076 |goto 36.0,69.1
step
talk Chen Stormstout##56133
turnin Clear the Way##30075 |goto 36.04,68.99
accept Cleaning House##30078 |goto 36.04,68.99
step
talk Chen Stormstout##56133
Choose _"<Crack your knuckles and nod your head.>"_
Enter the Stormstout Brewery |goto 36.04,68.99 > 10 |q 30078
step
Find Mudmug |goto 34.89,70.31 < 5 |c |q 30078
|tip Inside the building.
step
talk Mudmug##58027
|tip Inside the building.
Tell him _"Calm down, Mudmug. Let's go."_
Follow Mudmug |goto 34.9,70.3 > 10 |c |q 30078
step
kill Eddy##58014 |q 30078/1 |goto 33.83,70.75
|tip Inside the building.
|tip Run over the bubbles on the ground to weaken his Water Shield.
|tip Click the bubble around him when his Watery Shield is weakened.
step
Find Li Li |goto 32.98,71.11 < 5 |c |q 30078
step
talk Li Li##58028
|tip Inside the building.
Tell her _"I'll help."_
kill Jooga##58015 |q 30078/2 |goto 32.98,71.11
|tip Inside the building.
|tip Click the Empty Kegs on the ground around this area inside the room.
|tip He will stop moving, so you can hit him.
|tip Avoid the bananas.
step
Find Chen Stormstout |goto 38.35,67.74 < 5 |c |q 30078
step
talk Chen Stormstout##58029
|tip Inside the building.
Tell him _"Let's do this, Chen."_
Follow Chen Stormstout |goto 38.35,67.74 > 10 |c |q 30078
step
kill Fizzy Yellow Spirit##58253+
|tip Inside the building.
kill Fizzy Yellow Alemental##58253 |q 30078/3 |goto 38.77,69.65
step
Leave the Stormstout Brewery |goto 36.05,68.89 < 10 |noway |c |q 30078
step
talk Chen Stormstout##56133
turnin Cleaning House##30078 |goto 36.00,69.12
step
talk Emmi##61026
accept Stoneplow Thirsts##30117 |goto 36.20,68.29
step
talk "Dragonwing" Dan##58843
fpath Stoneplow |goto 20.30,58.67
step
talk Lin Tenderpaw##56111
turnin Lin Tenderpaw##29872 |goto 19.87,56.92
accept Stemming the Swarm##29981 |goto 19.87,56.92
step
talk Loon Mai##56720
turnin Stoneplow Thirsts##30117 |goto 19.55,56.88
accept Evacuation Orders##29982 |goto 19.55,56.88
step
Enter the building |goto 19.73,56.25 < 5 |walk
talk Nan the Mason Mug##62878
|tip Inside the building.
home Stone Mug Tavern |goto 19.71,55.87 |q 29981 |future
step
Leave the building |goto 19.73,56.25 < 5 |walk
talk Haiyun Greentill##57123
Tell him _"Loon Mai has issued evacuation orders."_
Evacuate the Greentil Family |q 29982/3 |goto 15.84,56.28
step
talk Mia Marlfur##57127
Tell her _"Loon Mai has issued evacuation orders."_
Evacuate the Marlfur Family |q 29982/4 |goto 15.48,54.90
stickystart "Kill_Ikthink_Mantids"
step
talk Feng Spadepaw##57121
Tell him _"Yes, Commander Mai sent me, and I carry his evacuation orders."_
Evacuate the Spadepaw Family |q 29982/2 |goto 12.85,55.71
step
talk Wei Blacksoil##57120
Tell him _"Loon Mai has issued evacuation orders."_
Kill the enemy that attacks
talk Wei Blacksoil##57120
Tell him _"Yes, they're right here. Let's go."_
Evacuate the Blacksoil Family |q 29982/1 |goto 7.15,54.83
step
label "Kill_Ikthink_Mantids"
Kill Ik'thik enemies around this area
Slay #14# Ik'thik Mantids |q 29981/1 |goto 11.80,56.66
step
talk Loon Mai##56720
turnin Stemming the Swarm##29981 |goto 19.55,56.88
turnin Evacuation Orders##29982 |goto 19.55,56.88
accept The Hidden Master##29983 |goto 19.55,56.88
step
talk Master Bruised Paw##56714
turnin The Hidden Master##29983 |goto 18.29,31.24
accept Unyielding Fists: Trial of Bamboo##29984 |goto 18.29,31.24
step
talk Master Bruised Paw##56714
Tell him _"I'm ready for the trial of bamboo."_
Begin the Trial of Bamboo |invehicle |goto 18.29,31.23 |q 29984
step
Watch the dialogue
|tip Use the "Unyielding Fist" ability on your action bar.
|tip Use it when it the circle at the bottom of your screen is full and glowing.
Strike #3# Stacks of Bamboo Reeds |q 29984/1 |goto 18.34,32.13
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Bamboo##29984 |goto 18.29,31.24
step
Watch the dialogue
talk Master Bruised Paw##56714
accept They Will Be Mist##29985 |goto 18.29,31.24
accept Fog Wards##29986 |goto 18.29,31.24
step
talk Lin Tenderpaw##56111
accept Tenderpaw By Name, Tender Paw By Reputation##29992 |goto 18.06,31.01
stickystart "Kill_Mist_Incarnations"
stickystart "Collect_Jademoon_Leaves"
step
click Northern Fog Ward##209945
Light the Northern Fog Ward |q 29986/1 |goto 16.01,32.11
step
click Western Fog Ward##209946
Light the Western Fog Ward |q 29986/2 |goto 14.86,36.82
step
click Southern Fog Ward##209947
Light the Southern Fog Ward |q 29986/3 |goto 18.10,41.46
step
label "Kill_Mist_Incarnations"
kill 12 Mist Incarnation##56740 |q 29985/1 |goto 16.99,35.63
step
label "Collect_Jademoon_Leaves"
click Jademoon Leaf##11006+
|tip They look like small green plants on the grey rocks on the ground around this area.
collect 18 Jademoon Leaf##76499 |q 29992/1 |goto 16.99,35.63
step
talk Lin Tenderpaw##56111
turnin Tenderpaw By Name, Tender Paw By Reputation##29992 |goto 18.06,31.01
step
talk Master Bruised Paw##56714
turnin They Will Be Mist##29985 |goto 18.29,31.24
turnin Fog Wards##29986 |goto 18.29,31.24
accept Unyielding Fists: Trial of Wood##29987 |goto 18.29,31.24
step
talk Master Bruised Paw##56714
Tell him _"My fists are ready. Bring on the trial of wood."_
Begin the Trial of Wood |invehicle |goto 18.29,31.24 |q 29987
step
Watch the dialogue
|tip Use the "Unyielding Fist" ability on your action bar.
|tip Use it when it the circle at the bottom of your screen is full and glowing.
Strike #4# Stacks of Wooden Boards |q 29987/1 |goto 18.25,32.18
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Wood##29987 |goto 18.29,31.24
accept A Taste For Eggs##29988 |goto 18.29,31.24
stickystart "Collect_Whitefisher_Crane_Eggs"
stickystart "Collect_Emperor_Tern_Eggs"
step
Enter the cave |goto 26.42,40.06 < 5 |walk
click Hornbill Strider Egg##209955
|tip Inside the small cave.
collect Hornbill Strider Egg##76516 |q 29988/3 |goto 26.98,39.05
step
label "Collect_Whitefisher_Crane_Eggs"
Leave the cave |goto 26.42,40.06 < 5 |walk
click Whitefisher Crane Egg##209954+
|tip They look like small white eggs on the ground around this area.
collect 4 Whitefisher Crane Egg##76503 |q 29988/2 |goto 25.36,43.15
step
label "Collect_Emperor_Tern_Eggs"
click Emperor Tern Egg##209953+
|tip They look like small purple eggs on the ground around this area.
collect 10 Emperor Tern Egg##76501 |q 29988/1 |goto 25.36,43.15
step
talk Master Bruised Paw##56714
turnin A Taste For Eggs##29988 |goto 18.29,31.24
step
Watch the dialogue
talk Master Bruised Paw##56714
accept Unyielding Fists: Trial of Stone##29989 |goto 18.29,31.24
step
talk Master Bruised Paw##56714
Tell him _"I've done all that you've asked of me. I'm ready for the trial of stone."_
Begin the Trial of Stone |invehicle |goto 18.29,31.24 |q 29989
step
Watch the dialogue
|tip Use the "Unyielding Fist" ability on your action bar.
|tip Use it when it the circle at the bottom of your screen is full and glowing.
Strike #5# Stacks of Stone Blocks |q 29989/1 |goto 18.16,32.15
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Stone##29989 |goto 18.29,31.24
step
talk Lin Tenderpaw##56111
accept Training and Discipline##29990 |goto 18.06,31.01
step
talk Loon Mai##56720
turnin Training and Discipline##29990 |goto 19.55,56.88
step
talk Tani##63822
|tip She walks around this area.
accept Stalker Mastery##30183 |goto 16.20,82.53
step
talk Hemet Nesingwary Jr.##58422
accept Mushan Mastery##30181 |goto 16.07,82.62
stickystart "Slay_Dustback_Mushans"
step
kill 15 Gorge Stalker##58432 |q 30183/1 |goto 12.77,75.08
step
label "Slay_Dustback_Mushans"
Kill Dustback Mushan enemies around this area
Slay #15# Dustback Mushans |q 30181/1 |goto 12.77,75.08
step
talk Tani##63822
|tip She walks around this area.
turnin Stalker Mastery##30183 |goto 16.20,82.53
accept Fox Mastery##30182 |goto 16.20,82.53
step
talk Hemet Nesingwary Jr.##58422
turnin Mushan Mastery##30181 |goto 16.07,82.62
step
talk Hemet Nesingwary##58421
accept Mushan Mastery: Darkhide##30184 |goto 16.01,82.49
step
talk Matt "Lucky" Gotcher##58434
accept Stag Mastery##32038 |goto 15.89,82.24
stickystart "Kill_Wilderland_Stags"
stickystart "Kill_Shadow_Foxes"
step
kill Darkhide##58435
|tip You may need help with this.
collect Darkhide's Head###79058 |q 30184/1 |goto 26.20,75.48
step
label "Kill_Wilderland_Stags"
Kill Wilderland enemies around this area
Slay #10# Wilderland Stag |q 32038/1 |goto 28.74,81.86
step
label "Kill_Shadow_Foxes"
Kill Sly enemies around this area
|tip They are stealthed around this area.
Slay #15# Sly Foxes |q 30182/1 |goto 27.68,71.08
step
talk Tani##63822
|tip She walks around this area.
turnin Fox Mastery##30182 |goto 16.20,82.53
step
talk Hemet Nesingwary##58421
turnin Mushan Mastery: Darkhide##30184 |goto 16.01,82.49
step
talk Hemet Nesingwary Jr.##58422
accept Tortoise Mastery##30185 |goto 16.07,82.62
step
talk Matt "Lucky" Gotcher##58434
turnin Stag Mastery##32038 |goto 15.89,82.24
step
kill Bulgeback Tortoise##58431+
collect 5 Intact Tortoise Shell##79059 |q 30185/1 |goto 19.91,75.66
step
talk Hemet Nesingwary Jr.##58422
turnin Tortoise Mastery##30185 |goto 19.91,75.66
accept Parental Mastery##30186 |goto 19.91,75.66
step
Enter the underwater cave |goto 21.27,74.40 < 5 |walk
talk Hemet Nesingwary Jr.##58461
|tip Inside the underwater cave.
Choose _"<Try shaking Hemet.>"_
Watch the dialogue
kill Torjar's Bane##58439
Rescue Hemet Nesingwary Jr. |q 30186/1 |goto 24.54,74.64
step
Leave the underwater cave |goto 21.27,74.40 < 5 |walk
talk Hemet Nesingwary##58421
turnin Parental Mastery##30186 |goto 16.01,82.49
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Krasarang Wilds (15-60)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."KrasarangWilds",
next="Leveling Guides\\Pandaria (10-60)\\Kun-Lai Summit (20-60)",
condition_suggested=function() return level >= 15 and level <= 50 and not completedq(30628) end,
startlevel=15,
endlevel=50,
},[[
step
talk Ken-Ken##56115
turnin Ken-Ken##29873 |goto Krasarang Wilds/0 76.22,7.06
accept What's Eating Zhu's Bastion?##30079 |goto Krasarang Wilds/0 76.22,7.06
step
Enter the building |goto 75.93,7.47 < 5 |walk
talk Rude Sho##62879
|tip Inside the building.
home Wilds' Edge Inn |goto 75.74,7.21
step
Leave the building |goto 75.93,7.47 < 5 |walk
talk Mei Barrelbottom##57744
Speak with Mei |q 30079/4 |goto 75.84,7.60
step
talk Mei Barrelbottom##57744
accept Finding Yi-Mo##30080 |goto 75.84,7.60
step
talk Despondent Warden of Zhu##57457
Speak with Despondent Warden of Zhu |q 30079/1 |goto 76.01,8.30
step
talk Gee Hung##60232
fpath Zhu's Watch |goto 76.74,8.38
step
Enter the building |goto 77.31,8.67 < 5 |walk
talk Sunni##57830
|tip Inside the building.
Speak with Sunni |q 30079/2 |goto 77.47,8.53
step
Leave the building |goto 77.31,8.67 < 3 |walk
Enter the building |goto 75.55,9.11 < 5 |walk
talk Yun##57825
|tip Inside the building.
Speak with Yun |q 30079/3 |goto 75.48,9.39
step
Leave the building |goto 75.55,9.11 < 3 |walk
talk Ken-Ken##56115
turnin What's Eating Zhu's Bastion?##30079 |goto 76.22,7.06
step
talk Yi-Mo Longbrow##58376
Find Yi-Mo Longbrow |q 30080/1 |goto 81.31,6.84
step
talk Yi-Mo Longbrow##58376
turnin Finding Yi-Mo##30080 |goto 81.31,6.84
accept Cheer Up, Yi-Mo##30082 |goto 81.31,6.84
step
talk Yi-Mo Longbrow##58376
Tell him _"Please, Yi-Mo: your aunt's worried sick about you."_
Tell him _"I don't have time for this. Move your ass or I'll move it for you."_
clicknpc Yi-Mo Longbrow##57310
|tip Stand next to him so that you are facing west while looking at him.
Follow Yi-Mo and Continue Moving Him West |goto 81.34,6.83 > 10 |c |q 30082
step
clicknpc Yi-Mo Longbrow##57310
|tip Stand next to him so that you are facing west while looking at him.
|tip Click him repeatedly.
Kill the enemies that attack in waves
Bring Yi-Mo to Zhu's Watch |q 30082/1 |goto 76.73,7.69 |notravel
step
talk Mei Barrelbottom##57744
turnin Cheer Up, Yi-Mo##30082 |goto 75.84,7.60
accept Tears of Pandaria##30091 |goto 75.84,7.60
step
talk Ken-Ken##56115
accept Materia Medica##30081 |goto 76.22,7.06
stickystart "Collect_Salty_Cores"
stickystart "Kill_Weeping_Horrors"
stickystart "Collect_Chunks_Of_Honeycomb"
step
click Slick Mudfish##210186+
|tip They look like small fish on the ground around this area.
collect 4 Slick Mudfish##78877 |q 30081/2 |goto 75.38,10.91
You can find more around [71.86,10.76]
step
label "Collect_Salty_Cores"
kill Weeping Horror##57649+
collect 4 Salty Core##78880+ |q 30081/1 |goto 75.38,10.91
You can find more around [71.86,10.76]
step
label "Kill_Weeping_Horrors"
kill 12 Weeping Horror##57649 |q 30091/1 |goto 75.38,10.91
You can find more around [71.86,10.76]
step
label "Collect_Chunks_Of_Honeycomb"
click Rain-Slick Honeycomb##210188+
|tip They look like orange glowing balls hanging low to the ground from trees around this area.
collect 4 Chunk of Honeycomb##78881 |q 30081/3 |goto 72.65,9.11
step
talk Mei Barrelbottom##57744
turnin Tears of Pandaria##30091 |goto 75.84,7.61
accept Securing the Province##30083 |goto 75.84,7.61
accept Borderlands##30084 |goto 75.84,7.61
step
talk Ken-Ken##56115
turnin Materia Medica##30081 |goto 76.22,7.07
accept Why So Serious?##30088 |goto 76.22,7.07
stickystart "Slay_Wildscale_Sauroks"
step
Enter the cave |goto Valley of the Four Winds/0 77.11,57.29 < 5 |walk
Follow the path |goto Valley of the Four Winds/0 76.59,56.79 < 5 |walk
Follow the path up |goto Valley of the Four Winds/0 76.68,55.88 < 5 |walk
Follow the path |goto Valley of the Four Winds/0 76.41,55.32 < 5 |walk
Follow the path up |goto Valley of the Four Winds/0 76.04,55.84 < 5 |walk
Follow the path |goto Valley of the Four Winds/0 75.72,56.65 < 5 |walk
Follow the path up |goto Valley of the Four Winds/0 74.84,56.60 < 5 |walk
Follow the path |goto Valley of the Four Winds/0 74.51,56.47 < 5 |walk
click Jar of Pigment##210228
|tip Inside the cave.
collect Jar of Pigment##78942 |q 30088/2 |goto Valley of the Four Winds/0 73.88,56.41
step
label "Slay_Wildscale_Sauroks"
Follow the path down |goto 74.65,56.50 < 5 |walk
Follow the path down |goto 75.77,56.60 < 5 |walk
Follow the path |goto 76.24,55.45 < 5 |walk
Follow the path down |goto 76.64,55.47 < 5 |walk
Kill Wildscale enemies around this area
|tip Inside the cave.
Slay #10# Wildscale Sauroks |q 30083/1 |goto 76.53,56.96
stickystart "Collect_Huge_Panther_Fangs"
step
Leave the cave |goto 77.19,57.35 < 5 |walk
use the Flame of Zhu's Watch##78928
Light the Memorial Flame of Rin |q 30084/3 |goto Krasarang Wilds/0 71.28,17.47
step
use the Flame of Zhu's Watch##78928
Light the Memorial Flame of Zhu |q 30084/1 |goto 72.70,18.11
step
use the Flame of Zhu's Watch##78928
Light the Memorial Flame of Po |q 30084/2 |goto 73.88,16.95
step
label "Collect_Huge_Panther_Fangs"
kill Krasari Stalker##58221+
|tip They can be stealthed around this area.
collect 18 Huge Panther Fang##78941 |q 30088/1 |goto 72.28,17.29
step
talk Mei Barrelbottom##57744
turnin Securing the Province##30083 |goto 75.84,7.60
turnin Borderlands##30084 |goto 75.84,7.60
step
talk Ken-Ken##56115
turnin Why So Serious?##30088 |goto 76.22,7.07
accept Apply Directly to the Forehead##30089 |goto 76.22,7.07
step
use Ken-Ken's Mask##79021
|tip Use it on Despondent Wardens of Zhu around this area.
kill Manifestation of Despair##58312+
Cure #8# Despondent Wardens of Zhu |q 30089/1 |goto 76.44,8.55
step
talk Ken-Ken##56115
turnin Apply Directly to the Forehead##30089 |goto 76.22,7.07
accept Zhu's Despair##30090 |goto 76.22,7.07
step
kill 8 Essence of Despair##58409 |q 30090/1 |goto 76.40,8.58
step
use Ken-Ken's Mask##79057
|tip Use it on Yi-Mo Longbrow.
kill Quintessence of Despair##58360
Cure Yi-Mo |q 30090/2 |goto 76.49,8.77
step
Watch the dialogue
talk Ken-Ken##56115
turnin Zhu's Despair##30090 |goto 76.21,7.07
step
talk Mei Barrelbottom##57744
accept Into the Wilds##30178 |goto 75.84,7.59
step
talk Daggle Bombstrider##58779
accept Crane Mastery##30352 |goto 67.63,25.73
accept Profit Mastery##30353 |goto 67.63,25.73
step
accept The Arcanic Oubliette##30274 |goto 66.94,28.69
|tip You will automatically accept this quest.
step
talk Zhu's Watch Courier##59151
Choose _"Take the supplies."_
Find the Zhu's Watch Courier |q 30178/1 |goto 66.27,30.92
step
click Northwest Oubliette Shackle##210533
Destroy the Northwest Oubliette Shackle |q 30274/2 |goto 66.69,31.58
step
talk Kang Bramblestaff##56114
turnin Kang Bramblestaff##29874 |goto 66.41,32.54
step
click Southwest Oubliette Shackle##210535
Destroy the Southwest Oubliette Shackle |q 30274/3 |goto 66.69,33.69
step
click Northeast Oubliette Shackle##210527
Destroy the Northeast Oubliette Shackle |q 30274/1 |goto 67.95,31.54
step
talk Tylen Moonfeather##59049
fpath The Incursion |goto 67.77,32.50
step
talk Lorekeeper Vaeldrin##58745
turnin The Arcanic Oubliette##30274 |goto 67.45,32.64
accept The Lost Dynasty##30344 |goto 67.45,32.64
step
talk Lyalia##58735
accept Blind Them!##30384 |goto 67.45,32.70
step
talk Kang Bramblestaff##56114
accept Squirmy Delight##30350 |goto 67.36,32.75
stickystart "Kill_Carp_Hunters"
stickystart "Collect_Vials_Of_Tiger_Blood"
stickystart "Collect_Intact_Skitterer_Glands"
step
kill Sunwalker Scout##58850 |q 30384/1 |goto 64.60,24.77
|tip He walks along this path around this area.
|tip He looks like a tauren riding a kodo.
step
label "Kill_Carp_Hunters"
kill 12 Carp Hunter##58116 |q 30352/1 |goto 64.06,29.35
step
label "Collect_Vials_Of_Tiger_Blood"
kill Krasari Huntress##58070+
|tip They look like tigers, usually stealthed around this area.
collect 12 Vial of Tiger Blood##78914 |q 30353/1 |goto 64.06,29.35
step
label "Collect_Intact_Skitterer_Glands"
kill Jungle Skitterer##58067+
collect 5 Intact Skitterer Glands##78911 |q 30350/1 |goto Krasarang Wilds/0 62.99,22.03
step
talk Daggle Bombstrider##58779
turnin Crane Mastery##30352 |goto 67.63,25.73
accept Crane Mastery: Needlebeak##31262 |goto 67.63,25.73
turnin Profit Mastery##30353 |goto 67.63,25.73
accept Profit Mastery: Chasheen##31260 |goto 67.63,25.73
step
kill Chasheen##63767
|tip He walks around this area.
collect Ancient Tiger's Blood##85774 |q 31260/1 |goto 61.89,32.00
step
kill Needlebeak##63796
|tip He walks around this area.
collect The Needlebeak##85854 |q 31262/1 |goto 62.90,20.17
step
click Ancient Dynastic Tablet##210620+
|tip They look like stone tablets and broken pieces of stone tablets on the ground around this area.
collect 6 Dynastic Tablet##79713 |q 30344/1 |goto 68.37,22.12
step
talk Daggle Bombstrider##58779
turnin Crane Mastery: Needlebeak##31262 |goto 67.63,25.73
turnin Profit Mastery: Chasheen##31260 |goto 67.63,25.73
step
talk Kang Bramblestaff##56114
turnin Squirmy Delight##30350 |goto 67.36,32.75
step
talk Lyalia##58735
turnin Blind Them!##30384 |goto 67.45,32.70
step
talk Lorekeeper Vaeldrin##58745
turnin The Lost Dynasty##30344 |goto 67.45,32.64
accept Where are the Pools##30346 |goto 67.45,32.64
step
talk Lyalia##58735
accept Threat from Dojan##30349 |goto 67.45,32.70
step
talk Kang Bramblestaff##56114
accept Lotus Tea##30351 |goto 67.36,32.75
stickystart "Kill_Dojani_Enforcers"
stickystart "Kill_Dojani_Reclaimers"
stickystart "Kill_Dojani_Surveyors"
stickystart "Collect_Imperial_Lotus_Leaves"
step
kill Dojani Dominator##58165
collect Dojani Orders##78917 |q 30346/1 |goto 55.51,34.46
step
Click the Complete Quest Box:
turnin Where are the Pools##30346
accept The Pools of Youth##30347
step
talk Na Lek##55597
Choose _"Attempt to free Na Lek from his prison."_
Watch the dialogue
Kill the enemies that attack
click Water of Youth##210229+
|tip They look like blue spots in the water around this area.
|tip They appear after you kill the enemies that attack.
collect The Water of Youth##78934 |q 30347/1 |goto 51.91,32.72
step
label "Kill_Dojani_Enforcers"
kill 4 Dojani Enforcer##65626 |q 30349/3 |goto 54.56,38.41
step
label "Kill_Dojani_Reclaimers"
kill 6 Dojani Reclaimer##58117 |q 30349/2 |goto 54.56,38.41
step
label "Kill_Dojani_Surveyors"
kill 8 Dojani Surveyor##58068 |q 30349/1 |goto 54.56,38.41
step
label "Collect_Imperial_Lotus_Leaves"
click Imperial Lotus##210209+
|tip They look like plants with white flowers on them on the ground around this area.
collect 20 Imperial Lotus Leaves##78918 |q 30351/1 |goto 54.56,38.41
step
_Next to you:_
talk Kang Bramblestaff##58814
turnin Lotus Tea##30351 |goto goto 67.39,32.68
|tip If you can't turn it in, try relogging.
step
talk Lyalia##58735
turnin Threat from Dojan##30349 |goto 67.48,32.63
step
talk Lorekeeper Vaeldrin##58745
turnin The Pools of Youth##30347 |goto 67.48,32.57
accept Immortality?##30348 |goto 67.48,32.57
step
Watch the dialogue
Observe Lorekeeper Vaeldrin's Ritual |q 30348/1 |goto 67.48,32.57
step
talk Lorekeeper Vaeldrin##58745
turnin Immortality?##30348 |goto 67.45,32.64
step
talk Lyalia##58735
accept Going on the Offensive##30363 |goto 67.45,32.70
step
talk Koro Mistwalker##59138
turnin Into the Wilds##30178 |goto 44.20,42.89
accept Unsafe Passage##30269 |goto 44.20,42.89
step
clicknpc Incursion Sentinel##59137
collect Sentinel Scout's Report##79332 |q 30363/1 |goto 43.93,43.39
step
talk Koro Mistwalker##58978
Tell him _"I'm ready, Koro."_
Watch the dialogue
Begin Following Koro |goto 44.20,42.89 > 25 |c |q 30269
step
Watch the dialogue
|tip Follow Koro and protect him as he walks.
Kill the enemies that attack in waves
|tip Click Koro when he says he's pinned down to help him back up.
Accompany Koro to Crane Wing Refuge |q 30269/1 |goto 43.88,36.85
step
talk Koro Mistwalker##59138
turnin Unsafe Passage##30269 |goto 40.58,33.68
accept Blinding the Riverblades##30270 |goto 40.58,33.68
accept Tread Lightly##30694 |goto 40.58,33.68
step
talk Ni the Merciful##62869
home Crane Wing Refuge |goto 40.76,34.52 |q 30117 |future
step
talk Anduin Wrynn##58609
accept The Murksweats##30268 |goto 40.49,34.65
stickystart "Poke_Traps"
stickystart "Kill_Riverblade_Pathstalkers"
step
kill Murkscale Striker##58631+
|tip Underwater around this area.
collect 6 Murkscale Head##79199 |q 30268/1 |goto 35.81,38.05
You can find more around [39.46,36.36]
step
label "Poke_Traps"
click Riverblade Spike Trap+
|tip They look like spiked metal balls on the ground around this area.
|tip Don't get too close to them, they explode.
Poke #10# Traps |q 30694/1 |goto 44.65,35.01
step
label "Kill_Riverblade_Pathstalkers"
kill 8 Riverblade Pathstalker##58858 |q 30270/1 |goto 44.65,35.01
step
talk Anduin Wrynn##58609
turnin The Murksweats##30268 |goto 40.49,34.65
step
talk Koro Mistwalker##59138
turnin Blinding the Riverblades##30270 |goto 40.58,33.68
turnin Tread Lightly##30694 |goto 40.58,33.68
accept Ahead on the Way##30695 |goto 40.58,33.68
accept Striking the Rain##30272 |goto 40.58,33.68
step
_Next to you:_
talk Anduin Wrynn##59189
accept Sha Can Awe##30271
stickystart "Inspire_Hopeless_Crane_Wing_Defenders"
stickystart "Slay_Sha_Manifestations"
step
kill Maw of Despair##59315
|tip It walks around this area.
Cleanse the West Pagoda |q 30695/1 |goto 37.79,54.16
step
kill Maw of Despair##59315
|tip It walks around this area.
Cleanse the East Pagoda |q 30695/2 |goto 43.04,54.29
step
_Next to you:_
talk Anduin Wrynn##59608
turnin Ahead on the Way##30695
step
label "Inspire_Hopeless_Crane_Wing_Defenders"
Inspire #10# Hopeless Crane Wing Defenders |q 30271/1 |goto 40.48,49.41
|tip Kill enemies near Hopeless Crane Wing Defenders around this area.
step
label "Slay_Sha_Manifestations"
Kill enemies around this area
Slay #18# Sha Manifestations |q 30272/1 |goto 40.48,49.41
step
_Next to you:_
talk Anduin Wrynn##59608
turnin Striking the Rain##30272
turnin Sha Can Awe##30271
accept In the House of the Red Crane##30273
step
Enter the building |goto 40.42,53.39 < 7 |walk
Run down the stairs |goto 40.43,55.91 < 7 |walk
Continue down the stairs |goto 40.58,57.32 < 5 |walk
Continue down the stairs |goto 40.92,56.91 < 5 |q 30273
step
talk Chi-Ji##59653
|tip Downstairs inside the building.
Choose _<Reach out and touch Chi-Ji.>_
Watch the dialogue
kill Sha of Despair##59651 |q 30273/1 |goto 40.44,54.49
|tip Kill the enemies he spawns also.
step
Run up the stairs |goto 40.65,55.46 < 5 |walk
Continue up the stairs |goto 40.83,57.21 < 5 |walk
Continue up the stairs |goto 40.43,57.09 < 5 |walk
Follow the path |goto 40.42,55.87 < 5 |q 30273
step
Run up the stairs |goto 40.42,54.03 < 5 |walk
Leave the building |goto 40.44,53.23 < 7 |walk
talk Chi-Ji##59719
turnin In the House of the Red Crane##30273 |goto 40.42,49.22
step
talk Feather Keeper Li##65189
fpath Cradle of Chi-Ji |goto 31.14,63.16
step
talk Tony Tuna##60182
accept Particular Plumage##30667 |goto 51.66,75.30
step
talk Jay Cloudfall##60173
accept Sudden, Unexpected Crocolisk Aggression##30666 |goto 51.53,76.85
step
talk Nan-Po##60441
fpath Marista |goto 52.48,76.60
stickystart "Collect_Emerald_Tailfeathers"
stickystart "Collect_Dusky_Tailfeathers"
stickystart "Slay_Mortbreath_Crocolisks"
step
kill Crimson Lory##60198+
collect 6 Crimson Tailfeather##80678 |q 30667/2 |goto 45.15,68.68
step
label "Collect_Emerald_Tailfeathers"
kill Emerald Lory##60200+
collect 6 Emerald Tailfeather##80677 |q 30667/1 |goto 45.15,68.68
step
label "Collect_Dusky_Tailfeathers"
kill Dusky Lory##60196+
collect 6 Dusky Tailfeather##80679 |q 30667/3 |goto 45.15,68.68
step
label "Slay_Mortbreath_Crocolisks"
Kill Mortbreath enemies around this area
Slay #8# Mortbreath Crocolisks |q 30666/1 |goto 45.15,68.68
step
talk Tony Tuna##60182
turnin Particular Plumage##30667 |goto 51.66,75.30
step
talk Jay Cloudfall##60173
turnin Sudden, Unexpected Crocolisk Aggression##30666 |goto 51.53,76.85
accept Build Your Own Raft##30668 |goto 51.53,76.85
step
click Spare Plank##211379
collect 4 Spare Plank##80685 |q 30668/1 |goto 52.40,76.15
step
click Tough Kelp##211382
collect Tough Kelp##80804 |q 30668/2 |goto 52.25,77.90
step
talk Jay Cloudfall##60173
turnin Build Your Own Raft##30668 |goto 51.53,76.85
accept The Lorewalker on the Lake##30669 |goto 51.53,76.85
step
click Your Raft##211392
Pick Up Your Raft |q 30669/1 |goto 51.67,76.56
step
talk Wise Ana Wu##60139
turnin The Lorewalker on the Lake##30669 |goto 45.98,78.91
accept Wisdom Has A Price##30671 |goto 45.98,78.91
accept Misery##30691 |goto 45.98,78.91
stickystart "Collect_Shark_Fillets"
step
Enter the underwater cave |goto 46.04,79.77 < 5 |walk
kill Nahassa##60203
|tip Inside the underwater cave.
|tip Don't worry about the crocolisks that appear.
Put Nahassa out of His Misery |q 30691/1 |goto 46.20,83.46
step
Click the Complete Quest Box:
turnin Misery##30691
step
label "Collect_Shark_Fillets"
Leave the underwater cave |goto 46.04,79.77 < 5 |walk
Kill enemies around this area
|tip Underwater around this area.
collect 5 Shark Fillet##80810 |q 30671/1 |goto 46.61,78.63
step
talk Wise Ana Wu##60139
turnin Wisdom Has A Price##30671 |goto 45.98,78.91
accept Balance##30672 |goto 45.98,78.91
stickystart "Accept_Buried_Hozen_Treasure"
stickystart "Kill_Unga_Fish_Getters"
step
accept Balance Without Violence##30674 |goto 45.12,84.91
|tip You will automatically accept this quest.
stickystart "Throw_Flailing_Carps_Back_Into_The_Water"
step
label "Accept_Buried_Hozen_Treasure"
Kill Unga enemies around this area
accept Buried Hozen Treasure##30675 |goto 45.12,84.91
|tip You will eventually automatically accept this quest after looting.
stickystart "Collect_Buried_Hozen_Treasure"
step
label "Throw_Flailing_Carps_Back_Into_The_Water"
clicknpc Flailing Carp##60367+
|tip They look like flopping fish on the ground around this area.
|tip They are usually next to piles of fish on the ground around this area.
Throw #6# Flailing Carp Back into the Water |q 30674/1 |goto 45.12,84.91
step
label "Kill_Unga_Fish_Getters"
kill 10 Unga Fish-Getter##60299 |q 30672/1 |goto 45.12,84.91
step
label "Collect_Buried_Hozen_Treasure"
click Lump of Sand##211420+
|tip They look like brown piles of dirt on the ground around this area.
collect Buried Hozen Treasure##80817 |q 30675/1 |goto 48.47,87.12
|only if haveq(30675) or completedq(30675)
step
Click the Complete Quest Box:
turnin Buried Hozen Treasure##30675
step
Click the Complete Quest Box:
turnin Balance Without Violence##30674
step
talk Jay Cloudfall##60173
turnin Balance##30672 |goto 51.53,76.85
step
talk Tired Shushen##58278
accept Thieving Raiders##30168 |goto 29.67,39.06
accept Raid Leader Slovan##30169 |goto 29.67,39.06
stickystart "Collect_Pillaged_Jinyu_Loot"
step
Enter the cave |goto 32.07,30.56 < 10 |walk
kill Slovan##58285 |q 30169/1 |goto 31.80,28.99
|tip Inside the cave.
step
label "Collect_Pillaged_Jinyu_Loot"
kill Riverblade Flesh-hunter##58274+
|tip Inside the cave.
collect 5 Pillaged Jinyu Loot##78958 |q 30168/1 |goto 32.61,29.46
step
talk Tired Shushen##58278
turnin Thieving Raiders##30168 |goto 29.67,39.06
turnin Raid Leader Slovan##30169 |goto 29.67,39.06
step
talk Maylen Moonfeather##59048
fpath Sentinel Basecamp |goto 25.14,33.46
step
talk Lyalia##58821
turnin Going on the Offensive##30363 |goto 24.71,34.03
accept No Sister Left Behind##30354 |goto 24.71,34.03
accept Sever Their Supply Line##30356 |goto 24.71,34.03
step
talk Kang Bramblestaff##56114
accept Re-Reclaim##30355 |goto 25.20,34.54
stickystart "Kill_Korjan_Reclaimers"
stickystart "Collect_Mogu_Artifacts"
step
clicknpc Captive Sentinel##58639+
|tip They look like red glowing terrified night elves on the ground around this area.
Free #8# Captives |q 30354/1 |goto 24.66,42.04
step
label "Kill_Korjan_Reclaimers"
kill 8 Korjan Reclaimer##58614 |q 30356/1 |goto 24.66,42.04
step
label "Collect_Mogu_Artifacts"
click Mogu Artifact##212765+
|tip They look like various shaped golden objects on the ground around this area.
collect 10 Mogu Artifact##79120 |q 30355/1 |goto 24.66,42.04
step
talk Kang Bramblestaff##56114
turnin Re-Reclaim##30355 |goto 25.20,34.54
step
talk Lyalia##58821
turnin No Sister Left Behind##30354 |goto 24.71,34.03
turnin Sever Their Supply Line##30356 |goto 24.71,34.03
step
talk Ambassador Han##58630
accept The Mantid##30361 |goto 24.87,34.37
stickystart "Slay_Ikthik_Mantids"
step
talk Lorekeeper Vaeldrin##58745
accept The Stoneplow Convoy##30357 |goto 15.09,39.42
step
clicknpc Stoneplow Envoy##58955+
|tip They look like dead Pandarens on the ground around this area.
Save #7# Stoneplow Envoys |q 30357/1 |goto 13.93,36.68
step
label "Slay_Ikthik_Mantids"
Kill Ik'thik enemies around this area
Slay #10# Ik'thik Mantids |q 30361/1 |goto 13.93,36.68
step
talk Lorekeeper Vaeldrin##58745
turnin The Stoneplow Convoy##30357 |goto 15.09,39.42
step
talk Ambassador Len##58954
turnin The Mantid##30361 |goto 15.69,39.71
step
talk Lorekeeper Vaeldrin##58745
accept The Lord Reclaimer##30359 |goto 15.09,39.42
step
talk Lyalia##58976
Choose _<Try to untie Lyalia.>_
Watch the dialogue
kill Groundbreaker Brojai##58224 |q 30359/1 |goto 23.58,48.84
|tip Kill the enemies he summons.
step
talk Lorekeeper Vaeldrin##58745
turnin The Lord Reclaimer##30359 |goto 24.70,33.99
accept The Waters of Youth##30445 |goto 24.70,33.99
step
Watch the dialogue
Observe Vaeldrin's Ritual |q 30445/1 |goto 24.70,33.99
step
talk Lyalia##58821
turnin The Waters of Youth##30445 |goto 24.71,34.04
accept Warn Stoneplow##30360 |goto 24.71,34.04
step
talk Loon Mai##56720
turnin Warn Stoneplow##30360 |goto Valley of the Four Winds/0 19.55,56.88
step
Watch the dialogue
talk Mei Barrelbottom##59855
accept The Mantidote##30623 |goto 17.96,56.45
step
talk Loon Mai##56720
accept The Swarm Begins##30622 |goto 17.84,56.23
step
talk Mudmug##56474
|tip He walks around this area.
accept It Does You No Good In The Keg##30624 |goto 18.16,55.73
step
Enter the building |goto 19.74,56.25 < 5 |walk
talk Nan the Mason Mug##62878
|tip Inside the building.
home Stone Mug Tavern |goto 19.71,55.87 |q 30624 |future
stickystart "Use_Ken_Kens_Mask_On_Ikthik_Wing_Commanders"
stickystart "Slay_Ikthallik_Infestors_Or_Warriors"
step
Leave the building |goto 19.74,56.25 < 3 |walk
Deliver Beer to Zhu's Wardens |q 30624/1 |goto 17.40,50.32
step
Deliver Beer to the Night Elf Settlers |q 30624/4 |goto 15.06,50.75
step
Deliver Beer to the Crane Wing Priests |q 30624/2 |goto 15.15,54.93
step
Deliver Beer to the Shado-Pan |q 30624/3 |goto 10.75,55.65
step
Click the Complete Quest Box:
turnin It Does You No Good In The Keg##30624
step
label "Use_Ken_Kens_Mask_On_Ikthik_Wing_Commanders"
use Ken-Ken's Mask##80337
|tip Use it on Ik'thik Wing Commanders around this area.
|tip Make sure they have the "Lashing Out in Fear" buff.
kill Manifestation of Fear##59874+
Use Ken-Ken's Mask on #5# Ik'thik Wing Commanders |q 30623/1 |goto 12.93,54.85
step
Click the Complete Quest Box:
turnin The Mantidote##30623
step
label "Slay_Ikthallik_Infestors_Or_Warriors"
Kill Ik'thallik enemies around this area
Slay #15# Ik'thallik Infestors or Warriors |q 30622/1 |goto 12.93,54.85
step
talk Guard Captain Oakenshield##57198
turnin The Swarm Begins##30622 |goto 11.60,49.52
accept Students No More##30625 |goto 11.60,49.52
step
Watch the dialogue
|tip Follow your allies and kill enemies around this area.
|tip They may already be in the battlefield, so you may have to find them.
|tip They will yell at you to come over to them when you are near them.
kill Ik'thik Bloodrager |q 30625/1 |goto 8.96,54.21
kill Ik'thik Incubator |q 30625/2 |goto 8.96,54.21
kill Ik'thik Tendon-Slicer |q 30625/3 |goto 8.96,54.21
kill Ik'thik Fearmonger |q 30625/4 |goto 8.96,54.21
step
talk Guard Captain Oakenshield##57198
turnin Students No More##30625 |goto 11.60,49.52
accept Retreat!##30626 |goto 11.60,49.52
step
talk Loon Mai##56720
turnin Retreat!##30626 |goto 17.84,56.23
step
talk Master Bruised Paw##59856
accept The Savior of Stoneplow##30627 |goto 17.91,55.75
step
talk Miss Fanny##59857
Tell her _"Let's go, Miss Fanny."_
Ride Miss Fanny |invehicle |goto 17.93,56.69 |q 30627
step
Reach the Mantid Colossus |goto 7.55,54.76 < 10 |c |q 30627 |notravel
step
Watch the dialogue
|tip Use the ability on your action bar when the circle at the bottom of your screen is full and glowing.
|tip You will have to use the ability multiple times.
kill Mantid Colossus##56703 |q 30627/1 |goto 7.55,54.76
step
Return to Stoneplow |goto 17.89,56.11 < 10 |c |q 30627 |notravel
step
talk Loon Mai##56720
turnin The Savior of Stoneplow##30627 |goto 17.84,56.23
accept The Gratitude of Stoneplow##30628 |goto 17.84,56.23
step
Enter the building |goto 19.74,56.25 < 5 |walk
click The Commander's Cache##211316
|tip Upstairs inside the building..
turnin The Gratitude of Stoneplow##30628 |goto 19.82,55.92
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Kun-Lai Summit (20-60)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."KunLai",
next="Leveling Guides\\Pandaria (10-60)\\Townlong Steppes (25-60)",
condition_suggested=function() return level >= 20 and level <= 50 and not completedq(30752) end,
startlevel=20,
endlevel=50,
},[[
step
talk Highroad Grummle##62738
Speak with Highroad Grummle |q 31254/1 |goto Valley of the Four Winds/0 70.05,23.47
|only if haveq(31254) or completedq(31254)
step
talk Shin the Weightless##61759
fpath Tavern in the Mists |goto The Veiled Stair/0 56.72,75.75
step
Enter the building |goto 55.04,73.16 < 5 |walk
talk Tong the Fixer##62917
|tip Inside the building.
home Tavern in the Mists |goto 55.07,72.40
step
Leave the building |goto 55.04,73.16 < 3 |walk
talk Len the Whisperer##63484
accept Robbing Robbers of Robbers##31286 |goto 53.51,65.76
accept Educating Saurok##31287 |goto 53.51,65.76
stickystart "Collect_Black_Market_Merchandise"
step
Enter the cave |goto 55.20,55.31 < 7 |walk
Follow the path |goto 52.53,53.73 < 7 |walk
Follow the path |goto 51.76,51.22 < 7 |walk
Continue following the path |goto 52.97,48.03 < 7 |walk
Follow the path down |goto 52.52,46.28 < 7 |walk
Follow the path |goto 51.27,45.66 < 7 |walk
Follow the path up |goto 46.41,47.61 < 7 |walk
Continue up the path |goto 44.24,47.34 < 7 |walk
Continue up the path |goto 43.77,45.90 < 7 |walk
Follow the path |goto 44.47,44.60 < 7 |walk
Follow the path |goto 46.48,44.48 < 7 |walk
Continue following the path |goto 48.08,43.18 < 7 |walk
Continue following the path |goto 48.76,41.48 < 7 |walk
kill Leechfingers##63494 |q 31287/1 |goto 51.12,43.38
|tip Inside the cave.
step
label "Collect_Black_Market_Merchandise"
click Various Objects
|tip They look like various shaped objects on the ground around this area inside the cave.
collect 7 Black Market Merchandise##85891 |q 31286/1 |goto 51.58,45.46
step
Follow the path |goto 51.58,45.46 < 7 |walk
Continue following the path |goto 52.94,46.54 < 7 |walk
Continue following the path |goto 51.71,51.05 < 7 |walk
Continue following the path |goto 52.12,53.42 < 7 |walk
Leave the cave |goto 55.39,55.53 < 7 |walk
talk Len the Whisperer##63484
turnin Robbing Robbers of Robbers##31286 |goto 53.51,65.76
turnin Educating Saurok##31287 |goto 53.51,65.76
step
talk Brewmaster Boof##63367
Speak with Brewmaster Boof |q 31254/2 |goto 51.91,43.74
step
talk Brewmaster Boof##63367
accept The Spring Drifter##31285 |goto 51.91,43.74
step
clicknpc The Spring Drifter##63517
Ride the Spring Drifter |invehicle |goto 52.03,43.08 |q 31285
step
Watch the dialogue
Survive a Ride on the Spring Drifter |q 31285/1 |goto Kun-Lai Summit/0 72.66,93.10 |notravel
step
talk Brewmaster Boof##63367
turnin The Spring Drifter##31285 |goto Kun-Lai Summit/0 72.66,93.02
step
talk Jo the Wind Watcher##61474
fpath Binan Village |goto 72.54,94.17
step
talk Apothecary Cheng##59077
accept Hit Medicine##30460 |goto 71.57,92.83
step
talk Mayor Bramblestaff##59073
turnin The Road to Kun-Lai##31254 |goto 72.27,91.86
accept Call Out Their Leader##30457 |goto 72.27,91.86
step
Enter the building |goto 72.48,91.97 < 5 |walk
talk Puli the Even Handed##62871
home Binan Brew & Stew |goto 72.67,92.34 |q 30460 |future
step
Leave the building |goto 72.48,91.97 < 5 |walk
talk Commander Hsieh##59076
accept All of the Arrows##30459 |goto 70.75,90.36
stickystart "Heal_Injured_Binan_Warriors"
stickystart "Collect_Arrows_Of_Commander_Hsieh"
step
Kill Bataari enemies around this area
Slay #10# Bataari Tribe Members |q 30457/1 |goto 69.23,89.76
step
Watch the dialogue
|tip He appears at this location.
kill Bataari Fire-Warrior##59083 |q 30457/2 |goto 68.01,88.63
step
label "Heal_Injured_Binan_Warriors"
use the Dit Da Jow##79819
|tip Use it on Injured Binan Warriors around this area.
Heal #8# Injured Binan Warriors |q 30460/1 |goto 69.23,89.76
step
label "Collect_Arrows_Of_Commander_Hsieh"
click Arrow of Commander Hsieh##210759+
|tip They look like the back feathers of arrows sticking out of the ground around this area.
collect 12 Arrow of Commander Hsieh##79806 |q 30459/1 |goto 69.23,89.76
step
talk Commander Hsieh##59076
turnin All of the Arrows##30459 |goto 70.75,90.36
step
talk Mayor Bramblestaff##59073
turnin Call Out Their Leader##30457 |goto 72.27,91.86
step
talk Apothecary Cheng##59077
turnin Hit Medicine##30460 |goto 71.57,92.83
accept Admiral Taylor has Awakened##30508 |goto 71.57,92.83
step
Enter the building |goto 71.63,92.92 < 3 |walk
talk Admiral Taylor##59441
|tip Upstairs inside the building.
turnin Admiral Taylor has Awakened##30508 |goto 71.54,93.08
accept Westwind Rest##30512 |goto 71.54,93.08
step
Leave the building |goto 71.63,92.92 < 3 |walk
talk Merchant Shi##59263
accept Reposesssion##30469 |goto 74.96,88.86
accept My Son...##30467 |goto 74.96,88.86
step
talk Swordmistress Mei##59273
accept Enraged Vengeance##30468 |goto 74.79,88.68
step
talk Waterspeaker Gorai##60973
accept The Waterspeaker's Staff##30496 |goto 75.13,87.94
accept Free the Dissenters##30967 |goto 75.13,87.94
stickystart "Slay_Enraged_Jinyus"
stickystart "Help_Inkgill_Dissenters_Escape"
stickystart "Collect_Stolen_Supplies"
step
talk Wu-Peng##59272
turnin My Son...##30467 |goto 74.68,76.93
accept Father and Child Reunion##30834 |goto 74.68,76.93
step
kill Orachi##59180
|tip He walks around this area.
|tip He will appear as a yellow dot on your minimap.
collect Stolen Inkgill Ritual Staff##81385 |q 30496/1 |goto 74.45,78.53
step
label "Slay_Enraged_Jinyus"
Kill Enraged enemies around this area
Slay #15# Enraged Jinyus |q 30468/1 |goto 74.61,82.83
step
label "Help_Inkgill_Dissenters_Escape"
talk Inkgill Dissenter##61566+
Tell them _"There's still hope - Gorai is still alive, to the south. Go!"_
Help #6# Inkgill Dissenters Escape |q 30967/1 |goto 74.61,82.83
step
label "Collect_Stolen_Supplies"
click Untainted Supplies##210889+
|tip They look like green and silver metal containers on the ground around this area.
collect 8 Stolen Supplies##79880 |q 30469/1 |goto 74.61,82.83
You can find more around [74.35,78.34]
step
talk Waterspeaker Gorai##60973
turnin The Waterspeaker's Staff##30496 |goto 75.20,88.26
turnin Free the Dissenters##30967 |goto 75.20,88.26
step
Watch the dialogue
Reunite Wu-Peng and Merchant Shi |q 30834/1 |goto 74.96,88.86
step
talk Merchant Shi##59263
turnin Reposesssion##30469 |goto 74.96,88.86
turnin Father and Child Reunion##30834 |goto 74.96,88.86
step
talk Swordmistress Mei##59273
turnin Enraged Vengeance##30468 |goto 74.79,88.68
step
talk Waterspeaker Gorai##60973
accept The Ritual##30480 |goto 75.20,88.26
step
talk Waterspeaker Gorai##60973
Tell him _"I'm ready. Begin the ritual."_
Speak to Waterspeaker Gorai to Begin the Ritual |q 30480/1 |goto 75.20,88.26
step
Watch the dialogue
|tip Follow Waterspeaker Gorai as he walks.
Lay the Dead Inkgill to Rest |q 30480/2 |goto 74.90,88.58
step
kill Explosive Hatred##61530
Complete the Ritual |q 30480/3 |goto 74.90,88.58
step
talk Waterspeaker Gorai##60973
turnin The Ritual##30480 |goto 74.90,88.58
accept Cleansing the Mere##30828 |goto 74.90,88.58
step
clicknpc Pool of Corruption##61500+
|tip They look like spots of smoke rising out of the water around this area.
Watch the dialogue
kill Boiling Rage##59170+
Cleanse #6# Pools of Corruption |q 30828/1 |goto 71.54,85.29
step
_Next to you:_
talk Waterspeaker Gorai##61065
turnin Cleansing the Mere##30828
accept The Fall of Shai Hu##30855
step
kill Shai Hu##61069 |q 30855/1 |goto 71.24,82.53
|tip You will 5% of your health every 5 seconds.
|tip Kill Explosive Hatred enemies around this area near him to hurt him.
step
talk Waterspeaker Gorai##60973
turnin The Fall of Shai Hu##30855 |goto 74.91,88.58
step
talk Farmhand Bo##63754
Tell him _"I'm from the Alliance. We're here to save you and rebuild your village."_
Speak with Farmhand Bo |q 30512/1 |goto 58.87,80.47
step
talk Elder Tsulan##63542
Tell him _"I'm from the Alliance. We're here to save you and rebuild your village."_
Speak with Elder Tsulan |q 30512/2 |goto 56.35,84.40
step
talk Elder Tsulan##63542
turnin Westwind Rest##30512 |goto 56.35,84.40
accept Challenge Accepted##30514 |goto 56.35,84.40
step
click Yaungol Banner##210933
Watch the dialogue
kill Ur-Bataar##59483 |q 30514/1 |goto 58.19,84.10
step
talk Elder Tsulan##63542
turnin Challenge Accepted##30514 |goto 54.70,84.22
step
Watch the dialogue
Enter the building |goto 53.88,82.90 < 5 |walk
talk Admiral Taylor##59441
|tip Inside the building.
accept Round 'Em Up##30575 |goto 53.77,82.67
step
Leave the building |goto 53.88,82.90 < 5 |walk
talk Kai the Restless##62882
home Westwind Rest |goto 54.08,82.87 |q 30575 |future
step
talk Sully 'The Pickle' McLeary##59450
accept Blue Dwarf Needs Food Badly##30583 |goto 54.17,83.27
step
talk Elder Tsulan##63542
accept Mogu?! Oh No-gu!##30619 |goto 54.17,83.42
step
talk Tabo the Flyer##61744
fpath Westwind Rest |goto 53.98,84.26
step
talk Farmhand Bo##63754
accept Trouble on the Farmstead##30569 |goto 53.79,84.11
step
talk Mishka##59451
|tip She walks around this area.
accept Deanimate the Reanimated##30593 |goto 53.67,83.27
stickystart "Collect_Kun_Lai_Meaty_Bits"
step
clicknpc Wild Plains Yak##59610+
Round Up #3# Yaks |q 30575/1 |goto 51.32,84.93
Bring them to [53.91,84.10]
step
label "Collect_Kun_Lai_Meaty_Bits"
Kill enemies around this area
collect 160 Kun-Lai Meaty Bits##80245 |q 30583/1 |goto 51.32,84.93
step
talk Sully 'The Pickle' McLeary##59450
turnin Blue Dwarf Needs Food Badly##30583 |goto 54.17,83.27
step
Enter the building |goto 53.87,82.89 < 5 |walk
talk Admiral Taylor##59441
|tip Inside the building.
turnin Round 'Em Up##30575 |goto 53.77,82.67
step
Leave the building |goto 53.88,82.90 < 5 |walk
talk Farmer Chow##59573
turnin Trouble on the Farmstead##30569 |goto 60.24,85.79
accept Farmhand Freedom##30571 |goto 60.24,85.79
step
talk Uyen Chow##59636
accept ... and the Pot, Too!##30581 |goto 60.17,85.91
stickystart "Collect_Root_Vegetables"
step
kill Ordo Overseer##59580+
Free #12# Farmstead Slaves |q 30571/1 |goto 58.61,89.25
step
label "Collect_Root_Vegetables"
kill Wascally Wirmen##59655+
click Root Vegetable##211019+
|tip They look like green leafy vegetable stalks sticking out of the ground around this area.
collect 12 Root Vegetable##80227 |q 30581/1 |goto 58.61,89.25
step
Enter the building |goto 60.09,88.23 < 5 |walk
click Cast Iron Pot##211023
|tip Inside the building.
collect Cast Iron Pot##80230 |q 30581/2 |goto 60.02,88.44
step
Leave the building |goto 60.09,88.23 < 3 |walk
talk Uyen Chow##59636
turnin ... and the Pot, Too!##30581 |goto 60.17,85.91
step
talk Farmer Chow##59573
turnin Farmhand Freedom##30571 |goto 60.24,85.79
accept Back to Westwind Rest##31252 |goto 60.24,85.79
step
talk Bao Jian##59821
accept Profiting off of the Past##30595 |goto 59.61,78.22
stickystart "Destroy_Terracotta_Guardians_Or_Warriors"
stickystart "Collect_Mogu_Relics"
step
kill Mogujia Soul-Caller##59797 |q 30619/1 |goto 58.12,70.89
step
label "Destroy_Terracotta_Guardians_Or_Warriors"
Kill Terracotta enemies around this area
Destroy #14# Terracotta Guardians or Warriors |q 30593/1 |goto 58.58,75.71
step
label "Collect_Mogu_Relics"
Kill Terracotta enemies around this area
click Mogu Relic##211148+
|tip They look like various shaped stone objects on the ground around this area.
collect 12 Mogu Relic##80294 |q 30595/1 |goto 58.58,75.71
step
talk Bao Jian##59821
turnin Profiting off of the Past##30595 |goto 59.61,78.22
step
talk Elder Tsulan##63542
turnin Mogu?! Oh No-gu!##30619 |goto 54.16,83.43
step
talk Mishka##59451
|tip She walks around this area.
turnin Deanimate the Reanimated##30593 |goto 53.67,83.27
step
talk Farmhand Bo##63754
turnin Back to Westwind Rest##31252 |goto 53.79,84.11
step
talk Elder Tsulan##63542
accept Pandaren Prisoners##30650 |goto 54.16,83.43
step
talk Sully 'The Pickle' McLeary##59450
accept Barrels of Fun##30651 |goto 54.17,83.27
step
Enter the building |goto 53.88,82.90 < 5 |walk
talk Admiral Taylor##59441
|tip Inside the building.
accept In Tents Channeling##30652 |goto 53.77,82.67
stickystart "Rescue_Pandaren_Prisoners"
step
Leave the building |goto 53.88,82.90 < 5 |walk
clicknpc Explosives Barrel##60095
collect Explosives Barrel##80528 |q 30651 |goto 51.23,79.31
step
use the Explosives Barrel##80528
Destroy the Eastern Oil Rig |q 30651/1 |goto 51.05,79.41
step
clicknpc Explosives Barrel##60095
collect Explosives Barrel##80528 |q 30651 |goto 51.23,79.31
step
kill Musaan the Blazecaster##59969 |q 30652/1 |goto 50.45,78.59
|tip Inside the tent.
step
kill Harala the Firespeaker##60030 |q 30652/3 |goto 49.43,78.48
|tip Inside the tent.
step
use the Explosives Barrel##80528
Destroy the Southern Oil Rig |q 30651/2 |goto 49.61,80.94
step
clicknpc Explosives Barrel##60095
collect Explosives Barrel##80528 |q 30651 |goto 49.34,81.10
step
kill Pao-kun the Pyromancer##60031 |q 30652/4 |goto 49.13,80.31
|tip Inside the tent.
step
kill Akonu the Embercaller##60032 |q 30652/2 |goto 47.71,80.01
|tip Inside the tent.
step
Click the Complete Quest Box:
turnin In Tents Channeling##30652
accept The Ordo Warbringer##30660
step
use the Explosives Barrel##80528
Destroy the Western Oil Rig |q 30651/3 |goto 47.87,81.39
step
label "Rescue_Pandaren_Prisoners"
clicknpc Pandaren Prisoner##60038+
|tip They look like panda people with ball and chains on their legs and inside wooden prisons around this area.
Rescue #8# Pandaren Prisoners |q 30650/1 |goto 49.88,79.97
step
Enter the cave |goto 48.93,76.91 < 5 |walk
kill Ordo Warbringer##60127 |q 30660/1 |goto 48.35,76.72
|tip Inside the small cave.
|tip When his shield appears, kill the enemies that appear to remove it.
step
Leave the cave |goto 48.93,76.91 < 5 |walk
talk Admiral Taylor##59441
|tip He walks around this area.
turnin Pandaren Prisoners##30650 |goto 53.69,83.50
turnin The Ordo Warbringer##30660 |goto 53.69,83.50
step
talk Sully 'The Pickle' McLeary##59450
turnin Barrels of Fun##30651 |goto 54.17,83.27
step
talk Elder Tsulan##63542
accept Beyond the Wall##31695 |goto 54.17,83.42
step
talk Admiral Taylor##59441
|tip He walks around this area.
accept The Shado-Pan##31455 |goto 53.69,83.50
step
talk Mishka##59451
|tip She walks around this area.
accept Cho's Missive##31460 |goto 53.55,83.32
step
talk Farmhand Bo##63754
accept Muskpaw Ranch##31456 |goto 53.79,84.11
step
talk Lao Muskpaw##59353
|tip He walks around this area.
turnin Muskpaw Ranch##31456 |goto 71.40,69.77
accept The Missing Muskpaw##30488 |goto 71.40,69.77
accept Fresh Needle Scent##30489 |goto 71.40,69.77
stickystart "Collect_Pungent_Sprite_Needles"
step
Enter the cave |goto 72.99,73.44 < 5 |walk
Follow the path |goto Kun-Lai Summit/9 18.66,38.99 < 5 |walk
Follow the path |goto Kun-Lai Summit/9 17.90,53.27 < 5 |walk
Continue following the path |goto Kun-Lai Summit/9 27.02,60.78 < 5 |walk
Continue following the path |goto Kun-Lai Summit/9 39.52,48.71 < 5 |walk
Continue following the path |goto Kun-Lai Summit/9 45.75,30.79 < 5 |walk
Follow the path down |goto Kun-Lai Summit/9 55.57,32.08 < 5 |walk
Follow the path |goto Kun-Lai Summit/9 71.97,52.43 < 5 |walk
talk Muskpaw Jr.##61693
|tip He runs around this small area inside the cave.
|tip Kill the enemies attacking him to be able to talk to him.
turnin The Missing Muskpaw##30488 |goto Kun-Lai Summit/9 64.23,61.16
accept At the Yak Wash##30491 |goto Kun-Lai Summit/9 64.23,61.16
step
clicknpc Tuffi##61874
|tip Inside the cave.
Ride Tuffi |invehicle |goto 65.54,58.89 |q 30491
step
Wash an Escaped Yak |q 30491/1 |goto Kun-Lai Summit/0 71.36,69.15 |count 1 |notravel
step
label "Collect_Pungent_Sprite_Needles"
kill Needle Sprite##55593+
|tip You can find more inside the cave nearby.
collect 100 Pungent Sprite Needles##79952 |q 30489/1 |goto 72.58,73.05
step
accept Yakity Yak##30587 |goto 69.41,74.15
|tip You will automatically accept this quest.
stickystart "Kill_Burilgi_Despoilers"
stickystart "Accept_The_Late_Mrs_Muskpaw"
step
clicknpc Escaped Yak##59319+
Wash #6# Escaped Yaks |q 30491/1 |goto 68.17,73.63
Ride them to [71.36,69.15]
step
talk Muskpaw Jr.##59354
turnin At the Yak Wash##30491 |goto 71.39,69.28
step
talk Lao Muskpaw##59353
|tip He walks around this area.
turnin Fresh Needle Scent##30489 |goto 71.51,69.94
turnin The Late Mrs. Muskpaw##30582 |goto 71.51,69.94
accept The Fearmaster##30804 |goto 71.51,69.94
step
kill The Fearmaster##59656 |q 30804/1 |goto 67.84,73.99
step
label "Kill_Burilgi_Despoilers"
kill 9 Burilgi Despoiler##59335 |q 30587/1 |goto 68.17,73.63
step
label "Accept_The_Late_Mrs_Muskpaw"
kill Burilgi Despoiler##59335+
accept The Late Mrs. Muskpaw##30582 |goto 68.17,73.63
|tip You will eventually automatically accept this quest after looting.
step
talk Lao Muskpaw##59353
|tip He walks around this area.
turnin The Fearmaster##30804 |goto 71.51,69.94
turnin Yakity Yak##30587 |goto 71.51,69.94
step
talk Muskpaw Jr.##59354
accept Back in Yak##30492 |goto 71.39,69.28
step
Bring the Yak Herd to Lucky Eightcoins |q 30492/1 |goto 65.38,61.71
step
talk Slimy Inkstain##59402
accept Oil Stop##30614 |goto 65.49,60.82
step
talk Smokey Sootassle##59597
accept Traffic Issues##30616 |goto 64.88,60.49
step
Enter the building |goto 64.37,61.26 < 5 |walk
talk Li Goldendraft##59405
|tip Inside the building.
home The Two Fisted Brew |goto 64.24,61.39
step
Leave the building |goto 64.37,61.26 < 3 |walk
talk Lucky Eightcoins##59371
turnin Back in Yak##30492 |goto 64.71,61.76
accept A Grummle's Luck##30808 |goto 64.71,61.76
stickystart "Slay_Ruqin_Yaungols"
stickystart "Collect_Stolen_Luckydos"
step
click Yaungol Oil Derrick##211531
collect Filled Oil Vial##80311 |q 30614/1 |goto 63.32,68.45
step
label "Slay_Ruqin_Yaungols"
Kill Ruqin enemies around this area
Slay #8# Ruqin Yaungols |q 30616/1 |goto 62.80,67.52
step
label "Collect_Stolen_Luckydos"
click Stolen Bag of Luckydos##211538+
|tip They look like tan bags on the ground and inside huts around this area.
collect 8 Stolen Luckydos##81293 |q 30808/1 |goto 62.80,67.52
step
talk Lucky Eightcoins##59371
turnin A Grummle's Luck##30808 |goto 64.71,61.76
step
talk Slimy Inkstain##59402
turnin Oil Stop##30614 |goto 65.49,60.82
step
talk Smokey Sootassle##59597
turnin Traffic Issues##30616 |goto 64.88,60.50
accept Roadside Assistance##30617 |goto 64.88,60.50
step
click Lucky Burlap Incense##211539+
|tip They look like thin sticks stuck in the ground along the road around this area.
Light #8# Lucky Burlap Incense |q 30617/1 |goto 60.19,65.28
step
talk Brother Lintpocket##59701
|tip Don't accept the "The Burlap Trail: To Burlap Waystation" quest.
turnin Roadside Assistance##30617 |goto 58.09,61.47
step
talk Little Cleankite##61504
fpath One Keg |goto 57.73,59.69
step
Enter the building |goto 57.50,60.18 < 5 |walk
talk Chiyo Mistpaw##59688
|tip She walks around this small area inside the building.
home The Lucky Traveller |goto 57.37,60.00 |q 30621 |future
step
Leave the building |goto 57.50,60.18 < 3 |walk
talk Lorewalker Cho##61847
turnin Cho's Missive##31460 |goto 57.34,61.69
accept Path Less Traveled##30999 |goto 57.34,61.69
step
talk Uncle Cloverleaf##59696
turnin Path Less Traveled##30999 |goto 57.22,61.20
accept Instant Courage##30601 |goto 57.22,61.20
step
Enter the building |goto 57.69,61.62 < 5 |walk
talk Big Sal##59695
|tip Inside the building.
accept Resupplying Onekeg##30618 |goto 57.72,61.77
step
Leave the building |goto 57.69,61.62 < 3 |walk
Enter the building |goto 57.50,60.18 < 5 |walk
talk Ji-Lu the Lucky##59716
|tip Inside the building.
accept They Stole My Luck!##30621 |goto 57.32,60.20
stickystart "Collect_Lucky_Four_Winds_Clover"
stickystart "Collect_Lucky_Gold_Coin"
stickystart "Collect_Lucky_Yak_Shoe"
stickystart "Inspire_Hiding_Guides"
stickystart "Collect_Stolen_Supplies_30618"
step
Leave the building |goto 57.50,60.18 < 3 |walk
Enter the cave |goto 59.14,53.19 < 7 |walk
Follow the path |goto Kun-Lai Summit/8 69.26,82.13 < 7 |walk
Continue following the path |goto Kun-Lai Summit/8 66.42,74.36 < 7 |walk
Continue following the path |goto Kun-Lai Summit/8 56.20,73.91 < 7 |walk
Continue following the path |goto Kun-Lai Summit/8 49.14,63.62 < 7 |walk
kill Mischievous Snow Sprite##59693+
|tip Inside the cave.
collect Lucky Virmen's Foot##80316 |q 30621/1 |goto Kun-Lai Summit/8 49.72,58.13
step
label "Collect_Lucky_Four_Winds_Clover"
kill Mischievous Snow Sprite##59693+
|tip Inside the cave.
collect Lucky Four Winds Clover##90318 |q 30621/3 |goto 49.72,58.13
step
label "Collect_Lucky_Gold_Coin"
kill Mischievous Snow Sprite##59693+
|tip Inside the cave.
collect Lucky "Gold" Coin##80319 |q 30621/4 |goto 49.72,58.13
step
label "Collect_Lucky_Yak_Shoe"
kill Mischievous Snow Sprite##59693+
|tip Inside the cave.
collect Lucky Yak Shoe##80317 |q 30621/2 |goto 49.72,58.13
step
label "Inspire_Hiding_Guides"
talk Hiding Guide##59818+
|tip They look like larger wicker baskets with red stripes and moving covers on the ground around this area inside the cave.
Ask them _"Are you sure you don't want to come with me?"_
Inspire #3# Hiding Guides |q 30601/1 |goto 49.72,58.13
step
label "Collect_Stolen_Supplies_30618"
click Stolen Supplies##211270+
|tip They look like various shaped objects on the ground around this area inside the cave.
collect 8 Stolen Supplies##80315 |q 30618/1 |goto 49.72,58.13
step
talk Ji-Lu the Lucky##59716
|tip Inside the building.
turnin They Stole My Luck!##30621 |goto Kun-Lai Summit/0 57.32,60.20
step
Leave the building |goto 57.49,60.16 < 3 |walk
talk Uncle Cloverleaf##59696
turnin Instant Courage##30601 |goto 57.22,61.20
step
Enter the building |goto 57.70,61.62 < 5 |walk
talk Big Sal##59695
|tip Inside the building.
turnin Resupplying Onekeg##30618 |goto 57.72,61.77
step
Leave the building |goto 57.70,61.62 < 3 |walk
talk Uncle Cloverleaf##59696
accept Comin' Round the Mountain##30487 |goto 57.22,61.20
step
clicknpc Ji-Lu's Cart##60094
Jump in Ji-Lu's Cart |q 30487/1 |goto 57.32,61.58
step
Kill the enemies that attack in waves
|tip Use the abilities on your action bar.
Survive the Mountain Pass |q 30487/2 |goto 48.10,49.01 |notravel
step
talk Lucky Bluestring##60175
turnin Comin' Round the Mountain##30487 |goto 48.14,49.04
accept One Traveler's Misfortune##30683 |goto 48.14,49.04
step
click Abandoned Wreckage##212903
Search the Abandoned Wreckage for Supplies |q 30683/1 |goto 50.06,49.24
step
Watch the dialogue
Kill the enemies that attack
kill General Sho Lien##60769 |q 30683/2 |goto 50.06,49.24
step
talk Lucky Bluestring##60175
turnin One Traveler's Misfortune##30683 |goto 48.14,49.04
|tip You will only be able to accept one of these quests.
accept Seeker's Folly##30684 |goto 48.14,49.04 |or
accept Seeker's Folly##31306 |goto 48.14,49.04 |or
step
click Shrine of the Seeker's Body##211597
|tip Avoid the falling snowballs around this area.
Honor the Shrine of the Seeker's Body |q 30684/1 |goto 44.79,49.17 |only if haveq(30684) or completedq(30684)
Honor the Shrine of the Seeker's Body |q 31306/1 |goto 44.79,49.17 |only if haveq(31306) or completedq(31306)
step
click Shrine of the Seeker's Breath##211601
|tip Avoid the tornados around this area.
Honor the Shrine of the Seeker's Breath |q 30684/2 |goto 42.69,50.02 |only if haveq(30684) or completedq(30684)
Honor the Shrine of the Seeker's Breath |q 31306/2 |goto 42.69,50.02 |only if haveq(31306) or completedq(31306)
step
click Shrine of the Seeker's Heart##211602
Honor the Shrine of the Seeker's Heart |q 30684/3 |goto 43.18,51.98 |only if haveq(30684) or completedq(30684)
Honor the Shrine of the Seeker's Heart |q 31306/3 |goto 43.18,51.98 |only if haveq(31306) or completedq(31306)
step
talk Lorewalker Cho##60795
turnin Seeker's Folly##30684 |or |goto 43.79,51.05 |only if haveq(30684) or completedq(30684)
turnin Seeker's Folly##31306 |or |goto 43.79,51.05 |only if haveq(31306) or completedq(31306)
accept The Tongue of Ba-Shon##30829 |goto 43.79,51.05
step
talk Lorewalker Cho##60795
Tell him _"Go ahead with the binding, Cho."_
Watch the dialogue
kill Reclaimer Zuan##61305
Bind the Tongue of Ba-Shon |q 30829/1 |goto 43.79,51.05
step
talk Lorewalker Cho##60795
turnin The Tongue of Ba-Shon##30829 |goto 43.76,51.11
accept Staying Connected##30795 |goto 43.76,51.11
step
talk Mishi##60796 |goto 43.74,51.32
Tell her _"I'm ready to leave."_
Fly to the Valley of Emperors |goto 57.87,48.97 < 10 |noway |c |q 30795
step
use The Tongue of Ba-Sho##81712
Use the Tongue of Ba-Shon in the Valley of Emperors |q 30795/1 |goto 57.87,48.97
step
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin Staying Connected##30795
accept An End to Everything##30796
step
click Curious Text##211780
accept It Was Almost Alive##30797 |goto 57.11,47.90
stickystart "Kill_Tormented_Spirits"
step
click Curious Text##211780
collect Torn Page##81892 |q 30797/1 |goto 57.11,47.90
step
label "Kill_Tormented_Spirits"
kill 5 Tormented Spirits##60825 |q 30796/1 |goto 57.12,47.44
step
use The Tongue of Ba-Sho##81712
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin An End to Everything##30796
turnin It Was Almost Alive##30797
accept The Tomb of Shadows##30799
step
Enter the building |goto 55.89,46.18 < 7 |walk
Follow the path |goto 56.12,45.62 < 5 |walk
Run up the stairs |goto 56.95,43.82 < 5 |walk
click Shen Dynasty Tablet##211770
|tip Inside the building.
collect Shen Dynasty Rubbing##82393 |q 30799/1 |goto 57.14,43.49
step
Follow the path |goto 56.95,43.88 < 5 |walk
click Qiang Dynasty Tablet##211794
|tip Inside the building.
collect Qiang Dynasty Rubbing##82394 |q 30799/3 |goto 57.07,45.04
step
Follow the path |goto 57.03,44.63 < 5 |walk
click Wai Dynasty Tablet##211793
|tip Inside the building.
collect Wai Dynasty Rubbing##82395 |q 30799/2 |goto 56.37,43.43
step
use The Tongue of Ba-Sho##81712
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin The Tomb of Shadows##30799
accept Breaking the Emperor's Shield##30798
step
Follow the path |goto 56.57,44.50 < 7 |walk
Run up the stairs |goto 56.09,45.68 < 5 |walk
Leave the building |goto 55.88,46.20 < 5 |walk
Enter the building |goto 53.34,49.27 < 7 |walk
Follow the path |goto 53.22,49.91 < 5 |walk
Watch the dialogue
Kill the enemies that attack in waves
|tip Inside the building.
kill Nakk'rakas##60572
Interrupt the Spiritbinding Ritual |q 30798/1 |goto 52.96,51.39
step
use The Tongue of Ba-Sho##81712
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin Breaking the Emperor's Shield##30798
accept Stealing Their Thunder... King##30800
step
Run up the stairs |goto 53.22,49.88 < 5 |walk
Leave the building |goto 53.33,49.28 < 5 |walk
Enter the building |goto 52.96,46.58 < 7 |walk
Run down the stairs |goto Kun-Lai Summit/17 88.11,54.94 < 5 |walk
Follow the path |goto Kun-Lai Summit/17 84.86,60.16 < 5 |walk
Run down the stairs |goto Kun-Lai Summit/17 83.29,65.42 < 5 |walk
Run down the stairs |goto Kun-Lai Summit/17 82.19,74.10 < 5 |walk
Follow the path |goto Kun-Lai Summit/17 73.05,74.74 < 5 |walk
click King's Coffer##211967
|tip Inside the building.
collect Bottom Fragment of Lei Shen's Tablet##82764 |q 30800/1 |goto Kun-Lai Summit/17 58.65,72.68
step
Follow the path |goto 49.61,71.32 < 5 |walk
Follow the path |goto 40.00,69.94 < 5 |walk
click Top Fragment of Lei Shen's Tablet##211968
|tip Inside the building.
Repair the Tablet of Thunder |q 30800/2 |goto 34.15,61.48
step
use The Tongue of Ba-Sho##81712
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin Stealing Their Thunder... King##30800
accept Lessons from History##30801
step
click Tablet of Thunder
|tip Inside the building.
Read the Tablet of Thunder |q 30801/1 |goto Kun-Lai Summit/17 34.15,61.48
step
Watch the dialogue
use The Tongue of Ba-Sho##81712
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin Lessons from History##30801
accept Chasing the Storm##30802
step
Follow the path |goto 39.81,69.94 < 5 |walk
kill Zandalari Warrior##61842+
|tip Inside the building.
collect Blood-Revealed Map##81890 |q 30802/1 |goto 59.51,72.19
step
use The Tongue of Ba-Sho##81712
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin Chasing the Storm##30802
accept Fisherman's Tale##30935
step
Follow the path |goto 68.11,74.10 < 5 |walk
Run up the stairs |goto 74.28,74.97 < 5 |walk
Run up the stairs |goto 82.75,72.77 < 5 |walk
Follow the path |goto 83.42,64.81 < 5 |walk
Run up the stairs |goto 85.05,59.52 < 5 |walk
Follow the path |goto 88.28,54.68 < 5 |walk
Leave the building |goto Kun-Lai Summit/0 52.98,46.55 < 5 |walk
talk Mishi##61382
Tell her _"I'm ready to leave."_
Speak to Mishi Outside of Lei Shen's Tomb |q 30935/1 |goto Kun-Lai Summit/0 52.97,46.39
step
Fly to the Path of Conquerors |goto 63.92,47.85 < 10 |c |q 31392 |notravel
step
Follow the path up |goto 63.93,48.60 < 5 |walk
Leave the building |goto 63.93,49.87 < 5 |walk
talk Big Greenfeather##61118
fpath Temple of the White Tiger |goto 66.31,50.66
step
Enter the building |goto 68.62,46.00 < 7 |walk
talk Anduin Wrynn##64540
|tip Inside the building.
turnin Temple of the White Tiger##31392 |goto 68.78,43.13
accept A Celestial Experience##31394|goto 68.78,43.13
step
talk Xuen##64528
|tip Inside the building.
Speak to Xuen |q 31394/1 |goto 68.88,42.79
step
Watch the dialogue
|tip Inside the building.
kill Spirit of Violence##64656
Pass the First Test |q 31394/2 |goto 68.78,43.98
step
Watch the dialogue
|tip Inside the building.
kill Spirit of Anger##64684
Pass the Second Test |q 31394/3 |goto 68.78,43.98
step
Watch the dialogue
|tip Inside the building.
kill Spirit of Hatred##64744
Pass the Third Test |q 31394/4 |goto 68.78,43.98
step
talk Anduin Wrynn##64540
|tip Inside the building.
turnin A Celestial Experience##31394 |goto 68.78,43.13
accept A Witness to History##31512 |goto 68.78,43.13
step
Leave the building |goto 68.60,46.07 < 5 |walk
talk Shin Whispercloud##61380
Tell him _"I'm ready to leave."_
Speak to Anduin at the Gate of the August Celestials |q 30935/2 |goto 63.32,40.22
step
Fly to the Zouchin Province |goto 63.59,34.88 < 10 |c |q 30935 |notravel
step
talk Bo the Wind Claimer##61511
fpath Zouchin Village |goto 62.42,30.12
step
Enter the building |goto 62.37,29.23 < 7 |walk
talk Lorewalker Cho##61371
|tip Inside the building.
turnin Fisherman's Tale##30935 |goto 62.32,29.06
accept It Takes A Village##30944 |goto 62.32,29.06
step
talk Liu Ze##60605
|tip Inside the building.
home North Wind Tavern |goto 62.49,28.78 |q 30816 |future
step
Leave the building |goto 62.37,29.23 < 5 |walk
talk Li Hai##60436
accept Checking In##30816 |goto 63.17,29.37
step
Enter the building |goto 63.33,28.94 < 7 |walk
talk Elder Shu##61495
|tip He walks around this area inside the building, as well as upstairs.
accept Handle With Care##30943 |goto 63.37,28.75
step
Leave the building |goto 63.33,28.98 < 3 |walk
talk Steelbender Doshu##61496
|tip He walks around this area.
accept What's Yours Is Mine##30945 |goto 63.36,30.74
step
talk Shomi##61503
|tip Under the building.
accept Make A Fighter Out of Me##30942 |goto 63.73,30.71
stickystart "Kill_Amani_Skirmishers"
step
talk Exhausted Defender##61417+
Tell them _"I'll cover your post. Go rest and be with your family."_
Relieve #5# Exhausted Defenders |q 30944/1 |goto 64.35,29.07
step
label "Kill_Amani_Skirmishers"
kill 4 Amani Skirmisher##629 |q 30942/1 |goto 64.35,29.07
stickystart "Kill_Gurubashi_Hexxers"
stickystart "Kill_Drakkari_Frostweavers"
stickystart "Collect_Handful_Of_Volatile_Blooms"
step
Kill enemies around this area
collect 8 Blood-Stained Blade##82299 |q 30945/1 |goto 69.94,27.15
step
label "Kill_Gurubashi_Hexxers"
kill 4 Gurubashi Hexxer##64202 |q 30942/2 |goto 69.94,27.15
step
label "Kill_Drakkari_Frostweavers"
kill 3 Drakkari Frostweaver##66707 |q 30942/3 |goto 69.94,27.15
step
label "Collect_Handful_Of_Volatile_Blooms"
click Volatile Blooms##211684+
|tip They look like red bushes on the ground around this area.
collect 50 Handful of Volatile Blooms##82298 |q 30943/1 |goto 69.94,27.15
step
_Next to you:_
talk Shomi##61534
turnin Make A Fighter Out of Me##30942
step
talk Lorewalker Cho##61371
|tip Inside the building.
turnin It Takes A Village##30944 |goto 62.33,29.06
step
Leave the building |goto 62.37,29.24 < 3 |walk
Enter the building |goto 63.33,28.96 < 5 |walk
talk Elder Shu##61495
|tip He walks around this area inside the building, as well as upstairs.
turnin Handle With Care##30943 |goto 63.37,28.75
step
Leave the building |goto 63.33,28.96 < 3 |walk
talk Steelbender Doshu##61496
|tip He walks around this area.
turnin What's Yours Is Mine##30945 |goto 63.36,30.74
step
Enter the building |goto 62.37,29.24 < 5 |walk
talk Lorewalker Cho##61371
|tip Inside the building.
accept Enemies At Our Door##31011 |goto 62.33,29.06
stickystart "Kill_Zandalari_Bloodriders"
stickystart "Kill_Zandalari_Berserkers"
step
Leave the building |goto 62.32,28.71 < 3 |walk
clicknpc Blasting Barrel##62591+
|tip They look like wooden barrels on the ground around this area.
kill 5 Zandalari Behemoth##63516 |q 31011/2 |goto 61.18,29.05
step
label "Kill_Zandalari_Bloodriders"
kill 3 Zandalari Bloodrider##62362 |q 31011/3 |goto 64.12,29.39
|tip They are riding on raptors around this area.
step
label "Kill_Zandalari_Berserkers"
kill 10 Zandalari Berserker##62299 |q 31011/1 |goto 62.77,30.10
step
Enter the building |goto 62.37,29.24 < 5 |walk
talk Lorewalker Cho##61371
|tip Inside the building.
turnin Enemies At Our Door##31011 |goto 62.33,29.06
accept Revelations##30946 |goto 62.33,29.06
step
talk Zandalari Prisoner##62629
|tip Upstairs inside the building.
Ask him _"Where have the Thunder King's Remains been taken?!"_
Watch the dialogue
Question the Zandalari Prisoner |q 30946/1 |goto 62.48,28.84
step
talk Lorewalker Cho##63750
|tip Inside the building.
turnin Revelations##30946 |goto 62.32,29.06
accept Prophet Khar'zul##31228 |goto 62.32,29.06
step
Leave the building |goto 62.32,28.71 < 3 |walk
talk Sage Liao##60694
turnin Checking In##30816 |goto 60.61,21.34
accept Emergency Care##30794 |goto 60.61,21.34
step
Enter the building |goto 60.91,21.54 < 5 |walk
click Sage Liao's Belongings##211510
|tip Inside the building.
collect Pandaren Healing Draught##81177 |goto 61.02,21.52 |q 30794
step
Leave the building |goto 60.91,21.54 < 3 |walk
use the Pandaren Healing Draught##81177
|tip Use it on Sage Liao.
Heal Sage Liao |q 30794/1 |goto 60.61,21.34
step
talk Sage Liao##60785
turnin Emergency Care##30794 |goto 60.61,21.34
accept Justice##30805 |goto 60.61,21.34
accept The Scent of Life##30806 |goto 60.61,21.34
accept By the Falls, For the Fallen##30807 |goto 60.61,21.34
step
click Waterfall-Polished Stone##211526+
|tip They look like large grey rocks underwater around this area.
collect 3 Waterfall-Polished Stone##81269 |q 30807/1 |goto 59.05,27.22
stickystart "Slay_Blackmane_Mercenaries"
stickystart "Collect_Stolen_Pandaren_Spices"
stickystart "Collect_Opalescent_Blue_Crab_Shells"
step
kill Captain Ripflesh##60767 |q 30805/1 |goto 62.13,23.57
|tip He walks around this area.
step
label "Slay_Blackmane_Mercenaries"
Kill Blackmane enemies around this area
Slay #6# Blackmane Mercenaries |q 30805/2 |goto 62.52,21.25
step
label "Collect_Stolen_Pandaren_Spices"
Kill Blackmane enemies around this area
click Blackmane Booty Barrel##211521+
|tip They look like dark brown wooden barrels on the ground around this area.
collect 8 Stolen Pandaren Spices##81261 |q 30806/2 |goto 62.52,21.25
step
label "Collect_Opalescent_Blue_Crab_Shells"
kill Azure Prickly Crawler##60437+
|tip Underwater and along the beach around this area.
collect Opalescent Blue Crab Shell##80907 |q 30806/1 |goto 60.15,20.45
step
talk Sage Liao##60785
turnin Justice##30805 |goto 60.61,21.34
turnin The Scent of Life##30806 |goto 60.61,21.34
turnin By the Falls, For the Fallen##30807 |goto 60.61,21.34
accept Preparing the Remains##30819 |goto 60.61,21.34
step
talk Li Hai##60436
turnin Preparing the Remains##30819 |goto 63.17,29.37
accept Honoring the Dead##30820 |goto 63.17,29.37
step
click Incense of Life##211545
Light the Incense of Life |q 30820/1 |goto 66.94,33.32
step
talk Sage Liao##60757
turnin A Funeral##30820 |goto 67.04,33.35
step
talk Mishi##65855
Tell her _"I'm ready to leave."_
Speak with Mishi in Zouchin Village |q 31228/1 |goto 62.30,29.32
step
Fly to the Isle of Reckoning |goto 76.48,19.38 < 10 |c |q 31228 |notravel
stickystart "Slay_Zandalari_Forces"
step
kill Prophet Khar'zul##61541 |q 31228/2 |goto 76.43,9.05
|tip Jump onto the stone table when the floor turns purple.
step
label "Slay_Zandalari_Forces"
Kill enemies around this area
Slay #12# Zandalari Forces |q 31228/3 |goto 76.25,13.40
step
Enter the building |goto 62.37,29.23 < 5 |walk
talk Lorewalker Cho##63784
|tip Inside the building.
turnin Prophet Khar'zul##31228 |goto 62.32,29.06
step
Leave the building |goto 62.37,29.23 < 3 |walk
talk Brother Lintpocket##59701
accept The Burlap Trail: To Burlap Waystation##30592 |goto 58.09,61.47
step
Locate the Grummles
|tip They look like a group of small friendly npc's that walk along this road heading west.
|tip They appear at this location when they die, if they aren't protected.
|tip You can either wait here until they appear, or you can try to find them along the road.
Click Here After You Locate the Grummles |confirm |goto 58.13,61.46 |q 30592
step
Kill the enemies that attack in waves
|tip Follow the Grummles and protect them as they walk.
Watch the dialogue
Escort the Grummles to the Burlap Waystation |q 30592/1 |goto 52.92,66.58
step
talk Brother Trailscenter##59703
turnin The Burlap Trail: To Burlap Waystation##30592 |goto 51.66,67.83
accept The Rabbitsfoot##30602 |goto 51.66,67.83
step
talk Brother Rabbitsfoot##59806
Rescue Brother Rabbitsfoot |q 30602/1 |goto 49.10,70.45
step
talk Brother Rabbitsfoot##59806
accept The Broketooth Ravage##30603 |goto 49.10,70.45
step
Enter the cave |goto 48.11,73.06 < 5 |walk
kill Mo Mo##59805
|tip Inside the small cave.
collect Rabbitsfoot's Luckydo##81137 |q 30603/1 |goto 48.02,73.27
step
Leave the cave |goto 48.07,73.13 < 3 |walk
talk Brother Rabbitsfoot##59452
turnin The Rabbitsfoot##30602 |goto 51.97,67.21
turnin The Broketooth Ravage##30603 |goto 51.97,67.21
accept A Monkey Idol##30599 |goto 51.97,67.21
accept No Pack Left Behind##30600 |goto 51.97,67.21
accept Breaking Broketooth##30604 |goto 51.97,67.21
stickystart "Collect_Grummlepacks"
stickystart "Kill_Broketooth_Tossers"
stickystart "Kill_Broketooth_Chargers"
step
kill Hateful Ko Ko##59430
|tip He walks around this area.
collect Corpse of Ko Ko##80429 |goto 52.37,71.40 |q 30599
step
click Ko Ko's Altar##211275
Destroy Ko Ko's Altar |q 30599/2 |goto 52.26,71.43
step
Enter the cave |goto 52.87,71.22 < 5 |walk
Follow the path |goto Kun-Lai Summit/11 56.68,22.30 < 5 |walk
kill Dak Dak##59424
|tip He walks up and down this path inside the cave.
collect Corpse Of Dak Dak##80428 |goto Kun-Lai Summit/11 62.34,46.30 |q 30599
step
Follow the path down |goto 62.34,46.30 < 7 |walk
Continue down the path |goto 58.55,63.85 < 7 |walk
Follow the path |goto Kun-Lai Summit/12 41.64,52.26 < 5 |walk
Follow the path |goto Kun-Lai Summit/12 41.45,42.99 < 5 |walk
click Dak Dak's Altar##210931
|tip Downstairs inside the cave.
Destroy Dak Dak's Altar |q 30599/1 |goto Kun-Lai Summit/12 49.55,39.77
step
label "Collect_Grummlepacks"
clicknpc Dead Packer##59896+
|tip They look like dead grummles on the ground around this area inside the cave.
collect 8 Grummlepack##80307 |q 30600/1 |goto 41.60,41.02
step
Follow the path up |goto 41.37,41.07 < 7 |walk
Continue up the path |goto 42.73,54.69 < 7 |walk
Continue up the path |goto Kun-Lai Summit/11 60.26,62.13 < 7 |walk
Follow the path |goto Kun-Lai Summit/11 62.43,42.85 < 7 |walk
Follow the path |goto Kun-Lai Summit/11 56.77,19.55 < 5 |walk
Leave the cave |goto Kun-Lai Summit/0 52.87,71.22 < 5 |walk
kill Tak Tak##59958
|tip He walks around this area.
collect Corpse of Tak Tak##80430 |goto Kun-Lai Summit/0 56.74,70.98 |q 30599
step
click Tak Tak's Altar##211276
Destroy Tak Tak's Altar |q 30599/3 |goto 56.83,70.98
step
label "Kill_Broketooth_Tossers"
kill 6 Broketooth Tosser##59416 |q 30604/2 |goto 53.78,69.91
|tip You can find more inside the caves around this area.
step
label "Kill_Broketooth_Chargers"
kill 8 Broketooth Charger##59414 |q 30604/1 |goto 53.78,69.91
|tip You can find more inside the caves around this area.
step
talk Brother Rabbitsfoot##59452
turnin A Monkey Idol##30599 |goto 51.97,67.21
turnin No Pack Left Behind##30600 |goto 51.97,67.21
accept Bros before Hozen##30605 |goto 51.97,67.21
turnin Breaking Broketooth##30604 |goto 51.97,67.21
step
clicknpc Mok Mok##60008
Rescue Brother Yakshoe |q 30605/1 |goto 50.53,64.19
step
talk Brother Yakshoe##59894
turnin Bros before Hozen##30605 |goto 50.57,64.07
accept Hozen Love Their Keys##30607 |goto 50.57,64.07
accept The Snackrifice##30608 |goto 50.57,64.07
accept Thumping Knucklethump##30606 |goto 50.57,64.07
stickystart "Slay_Silverback_Hozens"
stickystart "Rescue_Imprisoned_Grummles"
step
Enter the cave |goto 50.43,61.90 < 5 |walk
Follow the path |goto Kun-Lai Summit/10 73.33,87.23 < 5 |walk
Follow the path |goto Kun-Lai Summit/10 78.87,72.38 < 5 |walk
Continue following the path |goto Kun-Lai Summit/10 74.97,57.00 < 5 |walk
Continue following the path |goto Kun-Lai Summit/10 59.23,56.77 < 5 |walk
Continue following the path |goto Kun-Lai Summit/10 46.87,69.62 < 5 |walk
Continue following the path |goto Kun-Lai Summit/10 38.10,59.31 < 5 |walk
Follow the path |goto Kun-Lai Summit/10 32.92,41.08 < 5 |walk
kill Cho Cho the Wicked##60090
|tip He walks around this area inside the cave.
collect Yeti Shackle Key##80535 |q 30607/1 |goto Kun-Lai Summit/10 33.44,13.54
step
click Ball and Chain##207079
|tip Inside the cave.
Release Old Poot Poot |q 30607/2 |goto 38.67,22.85
step
Watch the dialogue
Return to Brother Yakshoe |goto Kun-Lai Summit/0 52.09,67.42 < 10 |c |q 30607 |notravel
step
talk Brother Yakshoe##59894
turnin Hozen Love Their Keys##30607 |goto Kun-Lai Summit/0 52.02,67.18
step
label "Slay_Silverback_Hozens"
Kill Knucklethump enemies around this area
|tip You can find more inside the nearby cave.
Slay #8# Silverback Hozens |q 30606/1 |goto 50.61,63.03
step
label "Rescue_Imprisoned_Grummles"
clicknpc Prisoner Bindings##60027+
|tip They look like ropes tied to Imprisoned Grummles hanging from trees around this area.
click Grummle Cage##211307+
|tip They look like wooden cages on the ground around this area.
|tip You can find more inside the caves around this area.
Rescue #5# Imprisoned Grummles |q 30608/1 |goto 50.61,63.03
step
talk Brother Yakshoe##59894
turnin The Snackrifice##30608 |goto 52.02,67.18
accept Grummle! Grummle! Grummle!##30610 |goto 52.02,67.18
step
talk Brother Rabbitsfoot##59452
turnin Thumping Knucklethump##30606 |goto 51.97,67.21
accept Unleash The Yeti!##30611 |goto 51.97,67.21
stickystart "Pack_Packers"
step
kill 4 Cagemaster##60169 |q 30611/1 |goto 46.10,64.11
step
label "Pack_Packers"
click Grummle Gear##211686+
|tip They look like wooden boxes on the ground around this area.
Pack #5# Packers |q 30610/1 |goto 46.10,64.11
step
talk Brother Yakshoe##59894
turnin Grummle! Grummle! Grummle!##30610 |goto 45.94,64.05
step
talk Brother Rabbitsfoot##59452
turnin Unleash The Yeti!##30611 |goto 45.91,64.05
accept The Leader Hozen##30612 |goto 45.91,64.05
step
Watch the dialogue
Enrage Chomp Chomp |q 30612/1 |goto 46.04,63.18
step
Watch the dialogue
kill The Ook of Dook##60188 |q 30612/2 |goto 46.04,63.18
step
talk Brother Rabbitsfoot##59452
turnin The Leader Hozen##30612 |goto 51.97,67.21
step
talk Brother Trailscenter##59703
accept The Burlap Trail: To Kota Basecamp##30692 |goto 51.66,67.83
step
Locate the Grummles
|tip They look like a group of small friendly npc's that walk along this road heading west.
|tip They appear at this location when they die, if they aren't protected.
|tip You can either wait here until they appear, or you can try to find them along the road.
Click Here After You Locate the Grummles |confirm |goto 51.69,67.70 |q 30692
step
Kill the enemies that attack in waves
|tip Follow the Grummles and protect them as they walk.
Watch the dialogue
Escort Grummles to the Kota Basecamp |q 30692/1 |goto 43.76,68.91
step
talk Uncle Eastwind##60416
fpath Kota Basecamp |goto 42.81,69.63
step
talk Clover Keeper##60420
home Kota Basecamp |goto 42.67,69.76 |q 30742 |future
step
talk Cousin Gootfur##60596
|tip He walks around this area.
accept Shut it Down##30742 |goto 42.34,69.78
accept Gourmet Kafa##30743 |goto 42.34,69.78
step
talk Uncle Keenbean##60503
accept Kota Blend##30744 |goto 42.42,69.66
accept Trouble Brewing##30745 |goto 42.42,69.66
step
talk Brother Oilyak##59755
turnin The Burlap Trail: To Kota Basecamp##30692 |goto 42.45,68.91
stickystart "Kill_Kafa_Crazed_Yetis"
stickystart "Kill_Kafa_Crazed_Mountain_Goats"
stickystart "Mark_Kafagoot_Deposits"
step
Enter the cave |goto 37.48,77.93 < 5 |walk
Follow the path |goto 37.02,77.47 < 5 |walk
Follow the path |goto 37.10,77.09 < 5 |walk
Continue following the path |goto 36.77,76.75 < 5 |walk
Continue following the path |goto 36.44,76.91 < 5 |walk
Continue following the path |goto 36.17,77.66 < 5 |walk
Continue following the path |goto 35.84,77.62 < 5 |walk
click Kafa'kota Berries##211480+
|tip They look like small piles of red berries on the ground around this area inside the cave.
collect 100 Kafa'kota Berry##81054 |q 30744/1 |goto 35.35,76.89
step
label "Kill_Kafa_Crazed_Yetis"
kill 8 Kafa-Crazed Yeti##60564 |q 30745/1 |goto 35.35,76.89
|tip Inside the cave.
step
Click the Complete Quest Box:
turnin Kota Blend##30744
accept A Fair Trade##30746
step
label "Kill_Kafa_Crazed_Mountain_Goats"
Follow the path |goto 35.35,76.96 < 7 |walk
Follow the path up |goto 35.73,77.53 < 5 |walk
Follow the path up |goto 36.17,77.69 < 5 |walk
Follow the path |goto 36.44,76.98 < 5 |walk
Follow the path |goto 36.88,76.77 < 5 |walk
Continue following the path |goto 37.06,77.16 < 5 |walk
Continue following the path |goto 37.05,77.63 < 5 |walk
Leave the cave |goto 37.51,77.99 < 5 |walk
kill 12 Kafa-Crazed Mountain Goat##60493 |q 30742/1 |goto 38.84,73.28
step
label "Mark_Kafagoot_Deposits"
click Kafa'goot "Deposit"##211456+
|tip They look like small piles of poop on the ground around this area.
Mark #15# Kafa'goot "Deposits" |q 30743/1 |goto 38.84,73.28
step
Enter the cave |goto 37.23,75.91 < 5 |walk
talk Nephew Burrberry##60679
|tip Inside the small cave.
turnin A Fair Trade##30746 |goto 36.93,76.22
step
Watch the dialogue
Ride with Kota Kon |invehicle |goto 36.93,76.22 |q 30742
step
Return to Kota Basecamp |goto 42.68,70.09 < 10 |c |q 30742 |notravel
step
talk Uncle Keenbean##60503
turnin Trouble Brewing##30745 |goto 42.53,69.43
step
talk Nephew Burrberry##60679
accept The Burlap Grind##30747 |goto 42.52,69.34
step
talk Cousin Gootfur##60596
turnin Shut it Down##30742 |goto 42.46,69.35
turnin Gourmet Kafa##30743 |goto 42.46,69.35
step
talk Kota Kon##60587
Choose _<Unscrew the flask and offer it to her.>_
Ride with Kota Kon |invehicle |goto 42.62,69.16 |q 30747
step
Follow the path |goto 43.83,68.59 < 10 |walk
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #100# Burlap Trail Hozens |q 30747/1 |goto 48.80,68.13
step
Stop Riding with Kota Kon |outvehicle |q 30747
|tip Get to a safe place first.
|tip Click the red arrow on your action bar.
step
talk Nephew Burrberry##60679
turnin The Burlap Grind##30747 |goto 42.52,69.34
step
talk Anduin Wrynn##64848
Tell him _"Let's find out!"_
Speak to Anduin at the Gate of the August Celestials |q 31512/1 |goto 55.10,91.74
step
talk Sharinga Springrunner##61121
fpath Shrine of Seven Stars |goto Vale of Eternal Blossoms/0 84.61,62.41
step
Enter the building |goto 85.57,67.41 < 5 |walk
talk Matron Vi Vinh##64149
|tip Inside the building.
turnin A Witness to History##31512 |goto Shrine of Seven Stars/1 36.38,66.67
step
Follow the path |goto 26.23,56.87 < 3 |walk
Leave the building |goto Vale of Eternal Blossoms/0 85.56,67.37 < 3 |c |q 31455
step
talk Kite Master Ni##61473
fpath Shado-Pan Fallback |goto Kun-Lai Summit/0 43.91,89.54
step
Click the Ancient Guo Lai Door and enter the building |goto 44.50,89.09 < 3 |walk
talk Shado-Master Chong##60161
|tip Inside the building.
turnin The Shado-Pan##31455 |goto 44.48,89.93
accept Turnabout##30670 |goto 44.48,89.93
accept The Defense of Shado-Pan Fallback##30665 |goto 44.48,89.93
stickystart "Collect_Blind_Rage_Essences"
stickystart "Kill_Sha_Infested_Yaungols"
step
Click the Ancient Guo Lai Door and leave the building |goto 44.50,89.13 < 3 |walk
Enter the building |goto 43.16,88.33 < 5 |walk
talk Sya Zhong##60178
|tip Inside the building.
accept Holed Up##30682 |goto 42.93,88.31
step
Rescue Sya Zhong |q 30682/4 |goto 42.93,88.31
step
Leave the building |goto 43.16,88.33 < 3 |walk
Enter the building |goto 41.25,87.12 < 5 |walk
talk Ya Firebough##60189
|tip Inside the building.
Tell him _"...That's enough. Let's go"._
Rescue Ya Firebough |q 30682/2 |goto 41.04,86.96
step
Leave the building |goto 41.25,87.12 < 3 |walk
Enter the building |goto 42.75,85.89 < 5 |walk
talk Old Lady Fung##60190
|tip Inside the building.
Tell her _"Yes... why don't you "escort" me out of here."_
Rescue Old Lady Fung |q 30682/3 |goto 42.84,85.70
step
Leave the building |goto 42.75,85.89 < 3 |walk
Enter the building |goto 43.80,86.35 < 5 |walk
talk Jin Warmkeg##60187
|tip Inside the building.
Tell him _"Let's get out of here."_
Rescue Jin Warmkeg |q 30682/1 |goto 43.87,86.17
step
label "Collect_Blind_Rage_Essences"
Leave the building |goto 43.80,86.35 < 3 |walk
kill Blind Rage##61224+
collect 5 Blind Rage Essence##81713 |q 30670/1 |goto 43.31,87.02
step
label "Kill_Sha_Infested_Yaungols"
kill 15 Sha-Infested Yaungol##60164 |q 30665/1 |goto 44.82,87.44
step
Click the Ancient Guo Lai Door and enter the building |goto 44.50,89.09 < 3 |walk
talk Shado-Master Chong##60161
|tip Inside the building.
turnin Turnabout##30670 |goto 44.48,89.93
turnin The Defense of Shado-Pan Fallback##30665 |goto 44.48,89.93
turnin Holed Up##30682 |goto 44.48,89.93
accept Unmasking the Yaungol##30690 |goto 44.48,89.93
step
Click the Ancient Guo Lai Door and leave the building |goto 44.50,89.13 < 3 |walk
use the Blinding Rage Trap##81741
|tip Lure Kobai into it after you use it.
|tip He walks around this area.
|tip Use the "Steal Mask" ability on Kobai after you lure him into the trap.
|tip It appears as a button on the screen.
Lure Kobai into the Trap and Steal His Mask |q 30690/1 |goto 45.51,86.32
step
kill Malevolent Fury##61333 |q 30690/2 |goto 45.51,86.32
|tip It appears after you steal Kobai's mask.
step
Click the Ancient Guo Lai Door and enter the building |goto 44.50,89.09 < 3 |walk
talk Shado-Master Chong##60161
|tip Inside the building.
turnin Unmasking the Yaungol##30690 |goto 44.48,89.93
accept To Winter's Blossom##30699 |goto 44.48,89.93
step
talk Lin Silentstrike##61816
turnin To Winter's Blossom##30699 |goto 34.95,59.40
accept Honor, Even in Death##30723 |goto 34.95,59.40
step
talk Ban Bearheart##61819
accept A Line Unbroken##30715 |goto 35.12,59.65
step
talk Kite Master Len##61512
fpath Winter's Blossom |goto 34.54,59.12
step
talk Kite Master Len##61512
accept Better Dead than Dread##31847 |goto 34.54,59.12
stickystart "Kill_Kun_Lai_Corpsepickers"
step
clicknpc Shado-Master Zhiyao##61808
Release Shado-Master Zhiyao from His Oath |q 30715/1 |goto 30.34,60.05
step
clicknpc Liu of the Thousand Blows##61806
Release Liu of the Thousand Blows from His Oath |q 30715/2 |goto 30.18,62.47
step
clicknpc Shiya Boldblade##61810
Release Shiya Boldblade from Her Oath |q 30715/3 |goto 29.97,64.44
step
label "Kill_Kun_Lai_Corpsepickers"
kill 12 Kun-Lai Corpsepicker##61843 |q 30723/1 |goto 30.85,62.22
|tip They are also flying in the air around this area.
step
talk Ban Bearheart##61819
turnin A Line Unbroken##30715 |goto 35.12,59.65
step
talk Lin Silentstrike##61816
turnin Honor, Even in Death##30723 |goto 34.95,59.30
accept To the Wall!##30724 |goto 34.95,59.30
step
talk Kite Master Len##61512
Tell him _"I need a kite to get up to the wall!"_
Speak to Kite-Master Len to Take a Kite to the Wall |q 30724/1 |goto 34.54,59.12
step
Travel to Serpent's Spine |goto 29.30,62.32 < 10 |c |q 30724 |notravel
step
talk Suna Silentstrike##61454
|tip Inside the building.
turnin To the Wall!##30724 |goto 29.30,62.29
accept Off the Wall!##30750 |goto 29.30,62.29
step
talk Lao-Chin the Iron Belly##61820
|tip Inside the building.
accept A Terrible Sacrifice##30751 |goto 29.24,62.30
stickystart "Slay_Veteran_Archers_Or_Fire_Warriors"
step
Leave the building |goto 28.94,61.84 < 3 |walk
click Yaungol Oil Barrel##212003+
|tip They look like brown and blue barrels on the ground around this area.
collect 6 Yaungol Oil Barrel##82799 |q 30751/1 |goto 27.53,60.70
step
label "Slay_Veteran_Archers_Or_Fire_Warriors"
Kill Osul enemies around this area
Slay #12# Veteran Archers or Fire-Warriors |q 30750/1 |goto 27.53,60.70
step
Enter the building |goto 28.94,61.84 < 5 |walk
talk Lao-Chin the Iron Belly##61820
|tip Inside the building.
turnin A Terrible Sacrifice##30751 |goto 29.24,62.30
step
talk Suna Silentstrike##61454
|tip Inside the building.
turnin Off the Wall!##30750 |goto 29.30,62.29
accept Lao-Chin's Gambit##30994 |goto 29.30,62.29
step
talk Suna Silentstrike##61454
|tip Inside the building.
Tell her _"Alright, I'm ready to get back to the front."_
Talk with Suna Silentstrike to Take a Kite to Lao-Chin |q 30994/1 |goto 29.30,62.29
step
Return to Winter's Blossom |goto 31.85,60.18 < 10 |c |q 30994 |notravel
step
talk Lao-Chin the Iron Belly##61820
turnin Lao-Chin's Gambit##30994 |goto 31.82,60.11
accept Do a Barrel Roll!##30991 |goto 31.82,60.11
stickystart "Kill_Osul_Treelaunchers"
step
clicknpc Keg Bomb##60553
|tip You will likely need to do this repeatedly.
kill 50 Osul Invader##60455 |q 30991/1 |goto 32.06,60.58
|tip Use the ability on your action bar near enemies as you roll down the hill.
step
label "Kill_Osul_Treelaunchers"
clicknpc Keg Bomb##60553
|tip You will likely need to do this repeatedly.
kill 4 Osul Treelauncher##60483 |q 30991/2 |goto 32.06,60.58
|tip Use the ability on your action bar near enemies as you roll down the hill.
step
talk Lao-Chin the Iron Belly##61820
turnin Do a Barrel Roll!##30991 |goto 31.82,60.11
accept Finish This!##30992 |goto 31.82,60.11
step
Watch the dialogue
kill Gong Da##62165
|tip He runs around this area.
Complete the Battle for The Ox Gate |q 30992/1 |goto 31.19,61.76
step
talk Ban Bearheart##61819
turnin Finish This!##30992 |goto 31.29,61.50
accept Where are My Reinforcements?##30993 |goto 31.29,61.50
step
talk Ban Bearheart##61819
Tell him _"I'm ready to leave. Let's go!"_
Tell Ban You are Ready to Leave |q 30993/1 |goto 31.29,61.50
step
talk Ban Bearheart##61819
Tell him _"Alright, let's go up to the monastery."_
Watch the dialogue
Ride Ban's Balloon to the Shado-Pan Monastery |q 30993/2 |goto 33.96,58.61
step
talk Ban Bearheart##61819
turnin Where are My Reinforcements?##30993 |goto 35.31,49.55
accept Unbelievable!##30752 |goto 35.31,49.55
step
talk Shado-Pan Sentinel##62220
Tell him _"I am here with Ban Bearheart, and we demand an audience with Taran Zhu!"_
Watch the dialogue
kill Shado-Pan Sentinel##62220
Gain Access to the Monastery |q 30752/1 |goto 36.69,47.72
step
_Next to you:_
talk Ban Bearheart##61819
turnin Unbelievable!##30752
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Townlong Steppes (25-60)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."TownlongSteppes",
next="Leveling Guides\\Pandaria (10-60)\\Dread Wastes (30-60)",
condition_suggested=function() return level >= 25 and level <= 50 and not completedq(30928) end,
startlevel=25,
endlevel=50,
},[[
step
talk Taran Zhu##60688
turnin Beyond the Wall##31695 |goto Townlong Steppes/0 71.15,56.69 |only if haveq(31695) or completedq(31695)
accept A Foot in the Door##30814 |goto Townlong Steppes/0 71.15,56.69
step
talk Kite Master Wong##62901
fpath Longying Outpost |goto 71.08,57.31
step
Enter the building |goto 71.03,57.73 < 5 |walk
talk Saito the Sleeping Shadow##62873
|tip Inside the building.
home Longying Outpost |goto 71.07,57.92 |q 30814 |future
step
Leave the building |goto 71.03,57.73 < 3 |walk
kill 8 Osul Charger##60713 |q 30814/1 |goto 70.00,53.66
step
talk Taran Zhu##60688
turnin A Foot in the Door##30814 |goto 71.15,56.69
accept First Assault##30769 |goto 71.15,56.69
accept Running Rampant##30770 |goto 71.15,56.69
accept Perfect Pitch##30771 |goto 71.15,56.69
stickystart "Kill_Osul_Sharphorns"
stickystart "Collect_Dark_Pitches"
step
clicknpc Long-Haired Yak##60669+
|tip They look like brown bison animals on the ground around this area.
clicknpc Steppebeast##60739+
|tip They look like blue dinosaur animals on the ground around this area.
Free #8# Yaks or Steppebeasts |q 30770/1 |goto 68.25,53.38
step
label "Kill_Osul_Sharphorns"
kill 6 Osul Sharphorn##60647 |q 30769/1 |goto 68.25,53.38
step
label "Collect_Dark_Pitches"
click Pitch Pot##211507+
|tip They look like brown and blue pots on the ground around this area.
collect 8 Dark Pitch##81174 |q 30771/1 |goto 68.25,53.38
step
talk Suna Silentstrike##60684
turnin First Assault##30769 |goto 67.25,52.22
step
talk Ban Bearheart##60687
turnin Running Rampant##30770 |goto 67.20,52.27
turnin Perfect Pitch##30771 |goto 67.20,52.27
accept Pitching In##30773 |goto 67.20,52.27
step
talk Suna Silentstrike##60684
accept Seeing Red##30772 |goto 67.25,52.22
accept Ranger Rescue##30774 |goto 67.25,52.22
stickystart "Destroy_Osul_Ballistas"
stickystart "Rescue_Longying_Rangers"
stickystart "Slay_Osul_Marauders"
step
talk Katak the Defeated##60735
accept The Exile##30775 |goto 67.00,51.41
step
kill Battat##60728 |q 30775/1 |goto 65.70,51.65
|tip Inside the building.
step
kill Urang##60725 |q 30775/2 |goto 64.79,50.13
|tip Inside the building.
step
talk Lin Silentstrike##60899
Choose _"Examine the body."_
Free Lin Silentstrike |q 30774/2 |goto 66.59,49.16
step
kill Ku-Tong##60726 |q 30775/3 |goto 66.96,48.24
|tip Inside the building.
step
label "Destroy_Osul_Ballistas"
use Ban's Explosives##81193
|tip Use it on Osul Ballistas around this area.
|tip They look like smaller wooden machines with wheels on the ground around this area.
Destroy #6# Osul Ballistas |q 30773/1 |goto 66.87,49.81
step
label "Rescue_Longying_Rangers"
Kill Osul enemies around this area
collect Stone Key##81178+ |n
click Drywood Cage+
|tip They look like small brown wooden buildings on the ground around this area.
Rescue #4# Longying Rangers |q 30774/1 |goto 66.87,49.81
step
label "Slay_Osul_Marauders"
Kill Osul enemies around this area
Slay #8# Osul Marauders |q 30772/1 |goto 66.87,49.81
step
talk Katak the Defeated##60735
turnin The Exile##30775 |goto 67.00,51.41
step
talk Ban Bearheart##60687
turnin Pitching In##30773 |goto 67.20,52.27
turnin Seeing Red##30772 |goto 67.20,52.27
turnin Ranger Rescue##30774 |goto 67.20,52.27
step
talk Suna Silentstrike##60684
accept Jung Duk##30776 |goto 67.25,52.22
step
click Ceremonial Pile##211524
kill Jung Duk##60801 |q 30776/1 |goto 66.66,51.01
step
talk Ban Bearheart##60687
turnin Jung Duk##30776 |goto 71.02,56.56
accept In Search of Suna##30777 |goto 71.02,56.56
step
clicknpc Shado-Pan Caravan##61205
Ride the Shado-Pan Caravan |invehicle |goto 70.70,56.53 |q 30777
step
Watch the dialogue
Travel to Hatred's Vice |goto 82.44,73.51 < 10 |c |q 30777 |notravel
step
talk Ban Bearheart##61261
turnin In Search of Suna##30777 |goto 82.68,73.02
accept Dust to Dust##30778 |goto 82.68,73.02
accept Slaying the Scavengers##30779 |goto 82.68,73.02
step
talk Yalia Sagewhisper##60864
accept Totemic Research##30780 |goto 82.59,73.02
step
talk Xiao Tu##60903
accept Last Toll of the Yaungol##30781 |goto 82.71,73.17
stickystart "Burn_Palewind_Villagers"
stickystart "Kill_Ashfang_Hyenas"
stickystart "Collect_Palewind_Totems"
step
Watch the dialogue
Examine the Southern Smoke Trail |q 30781/3 |goto 83.51,78.49
step
Watch the dialogue
Examine the Eastern Smoke Trail |q 30781/1 |goto 84.83,71.50
step
Watch the dialogue
Examine the Northwestern Smoke Trail |q 30781/4 |goto 84.02,70.89
step
Watch the dialogue
Examine the Western Smoke Trail |q 30781/2 |goto 81.29,72.13
step
label "Burn_Palewind_Villagers"
use the Shado-Pan Torch##81356
|tip Use it on Palewind Villagers around this area.
|tip They look like dead buffalo men on the ground around this area.
Burn #20# Palewind Villagers |q 30778/1 |goto 83.03,74.05
step
label "Kill_Ashfang_Hyenas"
kill 12 Ashfang Hyena##60932 |q 30779/1 |goto 83.03,74.05
step
label "Collect_Palewind_Totems"
click Palewind Totem##211566+
|tip They look like short wooden totem poles with horned skulls on them on the ground around this area.
collect 9 Palewind Totem##81355 |q 30780/1 |goto 83.03,74.05
step
talk Yalia Sagewhisper##60864
turnin Totemic Research##30780 |goto 82.59,73.02
step
talk Ban Bearheart##61261
turnin Dust to Dust##30778 |goto 82.68,73.02
turnin Slaying the Scavengers##30779 |goto 82.68,73.02
turnin Last Toll of the Yaungol##30781 |goto 82.68,73.02
step
talk Yalia Sagewhisper##60864
accept What Lies Beneath##30827 |goto 82.59,73.02
step
talk Yalia Sagewhisper##60864
Tell her _"I am ready to begin the ritual."_
Speak to Yalia Sagewhisper |q 30827/1 |goto 82.59,73.02
step
Watch the dialogue
clicknpc Totem of Tranquility##60990
Activate the Totem of Tranquility |q 30827/3 |goto 82.41,73.56
step
clicknpc Totem of Serenity##60991
Activate the Totem of Serenity |q 30827/4 |goto 82.69,73.63
step
clicknpc Totem of Kindness##60933
Activate the Totem of Kindness |q 30827/2 |goto 82.58,73.25
step
Watch the dialogue
Complete the Ritual |q 30827/5 |goto 82.58,73.25
step
talk Yalia Sagewhisper##60864
turnin What Lies Beneath##30827 |goto 82.59,73.02
accept Hatred Becomes Us##30783 |goto 82.59,73.02
step
talk Ban Bearheart##61261
accept Spiteful Spirits##30782 |goto 82.68,73.02
stickystart "Kill_Spiteful_Spirits"
step
use the Totem of Harmony##81417
|tip Use it on Crazed Shado-Pan Rangers around this area.
|tip Stand in the Pools of Harmony that appear to reduce the Hatred bar at the bottom of the screen.
kill Seething Hatred##61054+
Purify #8# Crazed Shado-Pan Rangers |q 30783/1 |goto 83.29,73.65
step
label "Kill_Spiteful_Spirits"
use the Totem of Harmony##81417
|tip Use it on the ground as you walk around.
|tip Stand in the Pools of Harmony that appear to reduce the Hatred bar at the bottom of the screen.
kill 10 Spiteful Spirit##63839 |q 30782/1 |goto 83.29,73.65
step
talk Ban Bearheart##61261
turnin Spiteful Spirits##30782 |goto 82.68,73.02
step
talk Yalia Sagewhisper##60864
turnin Hatred Becomes Us##30783 |goto 82.59,73.02
step
talk Ban Bearheart##61261
accept The Point of No Return##30784 |goto 82.68,73.02
step
use the Totem of Harmony##81430
|tip Use it on the ground.
|tip Stand in the circles on the ground it creates to gain a buff.
kill Suna Silentstrike##61055
|tip Inside the building.
|tip She will eventually surrender.
Find Suna Silentstrike |q 30784/1 |goto 84.08,70.54
step
talk Ban Bearheart##61261
turnin The Point of No Return##30784 |goto 82.68,73.02
accept Gao-Ran Battlefront##30785 |goto 82.68,73.02
step
talk Yalia Sagewhisper##60864
accept A Delicate Balance##31894 |goto 82.59,73.02
step
talk Orbiss##60857
turnin A Delicate Balance##31894 |goto 67.94,67.67
accept A Spear Through My Side, A Chain Through My Soul##30786 |goto 67.94,67.67
step
kill Dmong Naruuk##60683 |q 30786/1 |goto 68.42,71.46
step
talk Orbiss##60857
turnin A Spear Through My Side, A Chain Through My Soul##30786 |goto 67.94,67.67
accept The Torches##30787 |goto 67.94,67.67
step
kill Osul Mist-Shaman##60697+
|tip Kill the ones next to a Mist-Shaman's Torch around this area.
clicknpc Mist-Shaman's Torch##60698+
|tip They look like poles with fire at the top of them sticking in the ground around this area.
collect 6 Mist-Shaman's Torch##81176 |q 30787/1 |goto 65.81,68.87
step
talk Orbiss##60857
turnin The Torches##30787 |goto 67.94,67.67
accept Golgoss##30788 |goto 67.94,67.67
accept Arconiss##30789 |goto 67.94,67.67
step
click Peat Clump##211513
Kill the enemies that attack in waves
Summon Golgoss |q 30788/1 |goto 70.51,69.65
step
click Peat Mound##211515
Kill the enemies that attack in waves
Summon Arconiss |q 30789/1 |goto 71.49,72.29
step
talk Orbiss##60857
turnin Golgoss##30788 |goto 67.94,67.67
turnin Arconiss##30789 |goto 67.94,67.67
accept The Death of Me##30815 |goto 67.94,67.67
step
talk Orbiss##60857
Choose _<Remove the spear from Orbiss' side.>_
Remove the Spear from Orbiss |q 30815/1 |goto 67.94,67.67
step
talk Orbiss##60622
turnin The Death of Me##30815 |goto 67.94,67.67
step
talk Orbiss##60622
accept Golgoss Hungers##30790 |goto 67.94,67.67
accept Arconiss Thirsts##30791 |goto 67.94,67.67
accept Orbiss Fades##30792 |goto 67.94,67.67
stickystart "Collect_Clotted_Rodents_Blood"
stickystart "Collect_Gushing_Mist"
step
click Snarlvine##211518+
|tip They look like small bushes with purple flowers on them on the ground around this area.
collect 10 Snarlvine##81250 |q 30790/1 |goto 72.85,71.13
step
label "Collect_Clotted_Rodents_Blood"
kill Swamp Rodent##60733+
collect 4 Clotted Rodent's Blood##81260+ |q 30791/1 |goto 72.85,71.13
step
label "Collect_Gushing_Mist"
Collect #8# Gushing Mist |q 30792/1 |goto 72.85,71.13
|tip Stand in the small clouds of steam on the ground around this area.
step
talk Orbiss##60622
turnin Golgoss Hungers##30790 |goto 67.94,67.67
turnin Arconiss Thirsts##30791 |goto 67.94,67.67
turnin Orbiss Fades##30792 |goto 67.94,67.67
accept Mists' Opportunity##30793 |goto 67.94,67.67
step
kill Jahesh of Osul##60802
Watch the dialogue
Slay Jahesh of Osul |q 30793/1 |goto 76.68,72.89
step
talk Orbiss##60622
turnin Mists' Opportunity##30793 |goto 76.19,72.91
step
talk Taran Zhu##61066
turnin Gao-Ran Battlefront##30785 |goto 76.42,82.43
accept Behind the Blockade##30884 |goto 76.42,82.43
step
talk Kim the Quiet##62875
home Gao-Ran Battlefront |goto 75.96,82.91 |q 30884 |future
step
talk Septi the Herbalist##61470
accept Treatment for the Troops##30891 |goto 75.86,83.14
step
talk Kite Master Nenshi##62903
fpath Gao-Ran Battlefront |goto 74.39,81.46
step
talk Taoshi##61469
turnin Behind the Blockade##30884 |goto 76.94,78.79
accept Unwelcome Intruders##30887 |goto 76.94,78.79
stickystart "Kill_Krikthik_Deep_Scouts"
step
click Violet Citron##211721+
|tip They look like bushes with blue flowers on them on the ground around this area.
collect 10 Violet Citron##82342 |q 30891/1 |goto 77.81,77.22
step
label "Kill_Krikthik_Deep_Scouts"
kill 12 Krik'thik Deep-Scout##61374 |q 30887/1 |goto 77.81,77.22
step
talk Septi the Herbalist##61470
turnin Treatment for the Troops##30891 |goto 75.86,83.14
step
talk Taoshi##61468
turnin Unwelcome Intruders##30887 |goto 79.46,84.46
accept Breach in the Defenses##30888 |goto 79.46,84.46
accept The Restless Watch##30890 |goto 79.46,84.46
step
talk Mao the Lookout##61467
accept Trap Setting##30889 |goto 79.38,84.44
stickystart "Kill_Krikthik_Scentlayers"
stickystart "Rearm_Shadow_Pan_Spike_Traps"
step
talk Scout Jai-gan##61397
Tell him _"I have orders for you to return to the battlefront."_
Deliver Orders to Scout Jai-gan |q 30890/4 |goto 79.01,90.16
step
talk Scout Ying##61396
Tell her _"I have orders for you to return to the battlefront."_
Deliver Orders to Scout Ying |q 30890/3 |goto 82.52,89.55
step
talk Scout Long##61395
Tell her _"I have orders for you to return to the battlefront."_
Deliver Orders to Scout Long |q 30890/2 |goto 81.27,86.18
step
talk Scout Wei-Chin##61378
Tell him _"I have orders for you to return to the battlefront."_
Deliver Orders to Scout Wei-Chin |q 30890/1 |goto 82.21,84.12
step
label "Kill_Krikthik_Scentlayers"
use the Shado-Pan Flare##81925
|tip Use it near the moving trails of yellow smoke on the ground around this area.
kill 10 Krik'thik Scentlayer##61373 |q 30888/1 |goto 80.79,86.06
step
label "Rearm_Shadow_Pan_Spike_Traps"
clicknpc Shado-Pan Spike Trap##61426+
|tip They look like spiked metal balls on the ground around this area.
Rearm #8# Shado-Pan Spike Traps |q 30889/1 |goto 80.79,86.06
step
talk Mao the Lookout##61467
turnin Trap Setting##30889 |goto 79.38,84.44
step
talk Taoshi##61468
turnin Breach in the Defenses##30888 |goto 79.46,84.46
turnin The Restless Watch##30890 |goto 79.46,84.46
accept Returning from the Pass##30960 |goto 79.46,84.46
step
talk Taran Zhu##61066
turnin Returning from the Pass##30960 |goto 76.42,82.43
accept The Endless Swarm##30893 |goto 76.42,82.43
step
talk Septi the Herbalist##61470
accept Back on Their Feet##30892 |goto 75.86,83.14
accept Rummaging Through the Remains##30894 |goto 75.86,83.14
stickystart "Slay_Krikthik_Attackers"
stickystart "Collect_Krikthik_Limbs"
step
use the Citron-Infused Bandages##82787
|tip Use them on Injured Gao-Ran Blackguards around this area.
|tip They look like dead pandaren on the ground around this area.
Heal #8# Injured Gao-Ran Blackguards |q 30892/1 |goto 74.20,86.57
step
label "Slay_Krikthik_Attackers"
Kill Krik'thik enemies around this area
Slay #12# Krik'thik Attackers |q 30893/1 |goto 74.20,86.57
step
label "Collect_Krikthik_Limbs"
Kill Krik'thik enemies around this area
click Krik'thik Limb##214820+
|tip They look like insect arms and legs on the ground around this area.
|tip They appear on the ground after you kill Krik'thik enemies.
collect 22 Krik'thik Limb##82722 |q 30894/1 |goto 74.20,86.57
step
talk Septi the Herbalist##61470
turnin Back on Their Feet##30892 |goto 75.86,83.14
turnin Rummaging Through the Remains##30894 |goto 75.86,83.14
step
talk Taran Zhu##61066
turnin The Endless Swarm##30893 |goto 76.42,82.43
accept Improvised Ammunition##30895 |goto 76.42,82.43
step
talk Initiate Chao##61880
accept In the Wrong Hands##30897 |goto 70.34,86.67
step
talk Initiate Feng##61881
accept Thieves and Troublemakers##30896 |goto 70.45,86.37
stickystart "Slay_Agitated_Root_Sprites"
stickystart "Collect_Volatile_Dread_Orbs"
step
kill Needlebottom##61818
collect Initiate Chao's Sword##82783 |q 30897/1 |goto 63.07,87.68
step
label "Slay_Agitated_Root_Sprites"
Kill Agitated enemies around this area
Slay #10# Agitated Root Sprites |q 30896/1 |goto 66.93,87.01
step
label "Collect_Volatile_Dread_Orbs"
Kill Agitated enemies around this area
click Dread Orb##211873+
|tip They look like smaller orange globes on the tree roots on the ground around this area.
collect 16 Volatile Dread Orb##82723 |q 30895/1 |goto 66.93,87.01
step
talk Initiate Feng##61881
turnin Thieves and Troublemakers##30896 |goto 70.45,86.37
step
talk Initiate Chao##61880
turnin In the Wrong Hands##30897 |goto 70.34,86.67
step
talk Taran Zhu##61066
turnin Improvised Ammunition##30895 |goto 76.42,82.43
accept Cutting the Swarm##30898 |goto 76.42,82.43
step
clicknpc Dragon Launcher##61746
Control the Dragon Launcher |invehicle |goto 74.81,84.69 |q 30898
step
Kill Krik'thik enemies around this area
|tip They are on the battlefield nearby.
|tip Use the abilities on your action bar.
Slay #50# Krik'thik Drones |q 30898/1 |goto 74.81,84.69
step
talk Taoshi##62444
turnin Cutting the Swarm##30898 |goto 74.23,85.04
accept Terror of the Dread Wastes##30900 |goto 74.23,85.04
step
kill Norvakess##62324 |q 30900/1 |goto 74.18,87.42
step
talk Taran Zhu##61066
turnin Terror of the Dread Wastes##30900 |goto 76.42,82.43
accept Along the Southern Front##30901 |goto 76.42,82.43
step
talk Taoshi##62436
turnin Along the Southern Front##30901 |goto 67.32,80.85
accept Enraged By Hatred##30970 |goto 67.32,80.85
step
talk Initiate Pao-Me##62124
accept Taking Stock##30971 |goto 67.36,80.68
stickystart "Kill_Seething_Fleshrippers"
step
click Shado-Pan Fire Arrows##212136+
|tip They look like bundles of arrows on the ground around this area.
collect 120 Shado-Pan Fire Arrows##83024 |q 30971/1 |goto 66.00,82.44
step
label "Kill_Seething_Fleshrippers"
kill 9 Seething Fleshripper##61299 |q 30970/1 |goto 66.00,82.44
step
talk Taoshi##62436
turnin Enraged By Hatred##30970 |goto 67.32,80.85
step
talk Initiate Pao-Me##62124
turnin Taking Stock##30971 |goto 67.36,80.68
accept Joining the Fight##30972 |goto 67.36,80.68
step
talk Lao-Chin the Iron Belly##61016
turnin Joining the Fight##30972 |goto 61.59,79.35
step
talk Taran Zhu##62273
accept Up In Flames##30973 |goto 61.64,79.32
step
clicknpc Keg Bomb##62192+
|tip They look like wooden barrels on the ground around this area.
|tip Face enemies before you click them.
|tip The barrels will roll into enemies and make them weaker, if you aim well.
kill 10 Kor'thik Timberhusk##61355 |q 30973/1 |goto 58.8,79.8
step
talk Taran Zhu##62273
turnin Up In Flames##30973 |goto 61.64,79.32
step
talk Lao-Chin the Iron Belly##61016
accept The Taking of Dusklight Bridge##30975 |goto 61.59,79.35
step
click Tasty Brew##214848+
|tip They look like wooden barrels that appear on the ground around this area.
|tip To heal yourself, run through the green bubbles that appear.
kill 12 Kor'thik Bloodletter##62680 |q 30975/1 |goto Dread Wastes/0 44.87,9.87
|tip Let Lao-Chin tank the enemies for you.
step
kill Hulking Kor'thik Fleshrender##62686 |q 30975/2 |goto 44.87,9.87
step
talk Taran Zhu##62736
turnin The Taking of Dusklight Bridge##30975 |goto Townlong Steppes/0 61.11,83.06
accept Joining the Hunt##30976 |goto Townlong Steppes/0 61.11,83.06
step
talk Taran Zhu##62274
turnin Joining the Hunt##30976 |goto 54.03,78.06
accept In Skilled Hands##30899 |goto 54.03,78.06
step
talk Rensai Oakhide##62278
accept Grounded Welcome##30977 |goto 53.93,78.12
step
talk Kite Master Li-Sen##62898
fpath Rensai's Watchpost |goto 54.29,79.05
stickystart "Kill_Korthik_Fleetwings"
step
talk Marksman Ye##62573
accept Choking the Skies##31032 |goto 51.26,83.02
stickystart "Burn_Korthik_Fleetwing_Corpses"
step
talk Hawkmaster Nurong##61020
turnin In Skilled Hands##30899 |goto 51.66,87.25
accept Hostile Skies##30978 |goto 51.66,87.25
stickystop "Kill_Korthik_Fleetwings"
stickystop "Burn_Korthik_Fleetwing_Corpses"
step
clicknpc Nurong's Cannon##62747
Control Nurong's Cannon |invehicle |goto 51.67,87.32 |q 30978
step
Use the abilities on your new hotbar to do the following:
kill Kor'thik Swarmer##62300+
|tip They are flying across the canyon nearby.
|tip Use the ability on your action bar.
Shoot Down #50# Korthi'thik Swarmers |q 30978/1 |goto 51.7,87.3
step
kill Voress'thalik##62269
|tip It looks like a huge orange insect flying across the canyon nearby.
|tip Use the ability on your action bar.
Shoot Down Voress'thalik |q 30978/2 |goto 51.7,87.3
step
Stop Controlling Nurong's Cannon |outvehicle |q 30978
|tip Click the yellow arrow on your action bar.
step
talk Hawkmaster Nurong##61020
turnin Hostile Skies##30978 |goto 51.66,87.25
accept Devastation Below##30979 |goto 51.66,87.25
step
kill Voress'thalik##62270 |q 30979/1 |goto 53.77,87.39
|tip It walks around this area.
step
talk Hawkmaster Nurong##62786
turnin Devastation Below##30979 |goto 53.99,86.97
accept Heroes of the Shado-Pan##30980 |goto 53.99,86.97
stickystart "Kill_Korthik_Fleetwings"
step
label "Burn_Korthik_Fleetwing_Corpses"
kill Kor'thik Fleetwing##62128+
use the Wu Kao Torch##83768
|tip Use it near their corpses.
Burn #10# Kor'thik Fleetwing Corpses |q 31032/1 |goto 51.36,84.20
step
label "Kill_Korthik_Fleetwings"
kill 12 Kor'thik Fleetwing##62128 |q 30977/1 |goto 51.36,84.20
step
talk Marksman Ye##62573
turnin Choking the Skies##31032 |goto 51.26,83.02
step
talk Rensai Oakhide##62278
turnin Grounded Welcome##30977 |goto 53.93,78.12
step
talk Taran Zhu##62274
turnin Heroes of the Shado-Pan##30980 |goto 54.06,77.87
accept Buried Beneath##31065 |goto 54.06,77.87
step
click Wukao Spyglass
Watch the dialogue
Look Through Taoshi's Spyglass |q 31065/1 |goto 53.50,77.41
step
talk Taran Zhu##62274
turnin Buried Beneath##31065 |goto 54.06,77.87
accept Taoshi and Korvexxis##30981 |goto 54.06,77.87
accept Lao-Chin and Serevex##31063 |goto 54.06,77.87
accept Nurong and Rothek##31064 |goto 54.06,77.87
step
talk Rensai Oakhide##62278
accept Thinning the Sik'thik##31687 |goto 53.93,78.12
accept The Search for Restless Leng##31688 |goto 53.93,78.12
stickystart "Slay_Sikthik_Mantids"
stickystart "Search_Sikthik_Cages"
stickystart "Find_Restless_Leng"
step
kill Korvexxis##62579 |q 30981/1 |goto 46.60,83.06
|tip An ally will help you fight him.
step
kill Serevex##62580 |q 31063/1 |goto 45.38,77.42
|tip An ally will help you fight him.
step
kill Rothek##62581 |q 31064/1 |goto 39.84,75.59
|tip An ally will help you fight him.
step
label "Slay_Sikthik_Mantids"
Kill Sik'thik enemies around this area
Slay #12# Sik'thik Mantids |q 31687/1 |goto 43.32,77.01
step
label "Search_Sikthik_Cages"
click Sik'thik Cage##214734+
|tip They look like pointed metal structures with yellow windows on the ground around this area.
Search #8# Sik'thik Cages |q 31688/1 |goto 43.32,77.01
step
label "Find_Restless_Leng"
click Sik'thik Cage##214734+
|tip They look like pointed metal structures with yellow windows on the ground around this area.
Find Restless Leng |q 31688/2 |goto 43.32,77.01
step
talk Taran Zhu##62275
turnin Taoshi and Korvexxis##30981 |goto 47.48,78.87
turnin Lao-Chin and Serevex##31063 |goto 47.48,78.87
turnin Nurong and Rothek##31064 |goto 47.48,78.87
accept The Sha of Hatred##30968 |goto 47.48,78.87
step
Watch the dialogue
Enter the building |goto 47.33,79.24 < 5 |walk
Run down the stairs |goto 47.01,80.06 < 5 |walk
Follow the path |goto 46.52,81.32 < 5 |walk
kill Sha of Hatred##62541 |q 30968/1 |goto 45.92,82.86
|tip Inside the building.
|tip Avoid the circled on the ground.
|tip Kill the enemies it summons.
step
talk Taoshi##62802
|tip Inside the building.
turnin The Sha of Hatred##30968 |goto 46.12,82.46
step
Follow the path |goto 46.36,81.73 < 5 |walk
Run up the stairs |goto 46.57,81.19 < 5 |walk
Follow the path |goto 47.00,80.05 < 5 |walk
Leave the building |goto 47.32,79.25 < 5 |walk
talk Rensai Oakhide##62278
turnin Thinning the Sik'thik##31687 |goto 53.92,78.12
turnin The Search for Restless Leng##31688 |goto 53.92,78.12
step
talk Kite Master Yao-Li##62909
fpath Shado-Pan Garrison |goto 50.08,71.98
step
talk Provisioner Bamfu##61625
|tip He walks around this area.
accept Natural Antiseptic##30922 |goto 49.14,71.32
accept The Field Armorer##30963 |goto 49.14,71.32
accept A Proper Poultice##30964 |goto 49.14,71.32
step
talk Tai Ho##61482
accept The Motives of the Mantid##30921 |goto 49.13,71.24
accept Set the Mantid Back##30923 |goto 49.13,71.24
step
talk Kali the Night Watcher##62874
home Shado-Pan Garrison |goto 48.84,70.83 |q 30921 |future
stickystart "Discover_The_First_Clue"
stickystart "Discover_The_Second_Clue"
stickystart "Discover_The_Third_Clue"
stickystart "Discover_The_Fourth_Clue"
step
use the Gunpowder Casks##81891
Explode the Kri'thik Supplies |q 30923/2 |goto 56.59,54.02
step
use the Gunpowder Casks##81891
Explode the Kri'thik Weapons |q 30923/1 |goto 55.42,53.13
step
label "Discover_The_First_Clue"
Kill Kri'thik enemies around this area
Discover the First Clue |q 30921/1 |goto 56.46,52.65
step
label "Discover_The_Second_Clue"
Kill Kri'thik enemies around this area
Discover the Second Clue |q 30921/2 |goto 56.46,52.65
step
label "Discover_The_Third_Clue"
Kill Kri'thik enemies around this area
Discover the Third Clue |q 30921/3 |goto 56.46,52.65
step
label "Discover_The_Fourth_Clue"
Kill Kri'thik enemies around this area
Discover the Fourth Clue |q 30921/4 |goto 56.46,52.65
stickystart "Collect_Rankbite_Shell_Fragments"
stickystart "Collect_Full_Mushan_Bladders"
step
click Mao-Willow##211779+
|tip They look like purple plants with white fluffy bulbs at the top of them on the ground around this area.
collect 11 Mao-Willow##82389 |q 30964/1 |goto 60.35,53.59
step
label "Collect_Rankbite_Shell_Fragments"
Kill Rankbite enemies around this area
collect 120 Rankbite Shell Fragment##82388 |q 30963/1 |goto 60.35,53.59
step
label "Collect_Full_Mushan_Bladders"
kill Longshadow Mushan##61618+
collect 5 Full Mushan Bladder##82387 |q 30922/1 |goto 60.35,53.59
step
talk Tai Ho##61482
turnin The Motives of the Mantid##30921 |goto 49.14,71.23
turnin Set the Mantid Back##30923 |goto 49.14,71.23
accept The Wisdom of Niuzao##30924 |goto 49.14,71.23
step
talk Provisioner Bamfu##61625
|tip He walks around this area.
turnin Natural Antiseptic##30922 |goto 49.14,71.32
turnin The Field Armorer##30963 |goto 49.14,71.32
turnin A Proper Poultice##30964 |goto 49.14,71.32
step
talk Ku-Mo##61539
accept My Father's Crossbow##30931 |goto 43.87,65.76
step
kill Et'kil##61540
collect Father's Crossbow##82332 |q 30931/1 |goto 38.67,65.31
step
talk Ku-Mo##61539
turnin My Father's Crossbow##30931 |goto 43.87,65.76
step
talk Sentinel Commander Qipan##61584
accept Father's Footsteps##30932 |goto 39.41,61.96
step
talk Ogo the Younger##61581
turnin The Wisdom of Niuzao##30924 |goto 39.33,62.22
accept Niuzao's Price##30925 |goto 39.33,62.22
step
talk Bluesaddle##61161
accept Bad Yak##30929 |goto 39.21,62.01
step
clicknpc Ruthers##61163
Gently Pet Ruthers |q 30929/1 |goto 39.27,61.93
step
clicknpc Ruthers##61163
Offer Ruthers an Apple |q 30929/2 |goto 39.27,61.93
step
clicknpc Ruthers##61163
Lightly Nudge Ruthers |q 30929/3 |goto 39.27,61.93
step
clicknpc Ruthers##61163
Attempt to Mount Ruthers |q 30929/4 |goto 39.27,61.93
step
talk Bluesaddle##61161
turnin Bad Yak##30929 |goto 39.21,62.01
step
clicknpc Sentinel Yalo##61683
|tip He walks around this area.
Find Sentinel Yalo |q 30932/4 |goto 39.19,61.07
step
click Father's Shield##211836
Find Father's Shield |q 30932/2 |goto 37.54,61.37
step
Enter the building |goto 37.51,61.16 < 3 |walk
click Father's Bedroll##211837
|tip Inside the building.
Find Father's Bedroll |q 30932/1 |goto 37.36,60.90
step
Leave the building |goto 37.56,61.25 < 3 |walk
clicknpc Ha-Cha##61685
Find Ha-Cha |q 30932/3 |goto 37.66,63.95
step
talk Ku-Mo##61539
turnin Father's Footsteps##30932 |goto 39.45,61.93
step
talk Bluesaddle##61161
accept Pick a Yak##30930 |goto 35.40,56.65
step
use the Yak Lasso##82468
|tip Use it on Wild Townlong Yaks around this area.
kill Wild Townlong Yak##61635+
Find a Suitable Yak |q 30930/1 |goto 34.92,49.25
step
talk Bluesaddle##61161
turnin Pick a Yak##30930 |goto 35.40,56.65
stickystart "Find_The_Statuette_Body"
stickystart "Find_The_Statuette_Legs"
stickystart "Find_The_Statuette_Tail"
step
Kill Sra'thik enemies around this area
Find the Statuette Head |q 30925/1 |goto 41.86,46.06
step
label "Find_The_Statuette_Body"
Kill Sra'thik enemies around this area
Find the Statuette Body |q 30925/2 |goto 41.86,46.06
step
label "Find_The_Statuette_Legs"
Kill Sra'thik enemies around this area
Find the Statuette Legs |q 30925/3 |goto 41.86,46.06
step
label "Find_The_Statuette_Tail"
Kill Sra'thik enemies around this area
Find the Statuette Tail |q 30925/4 |goto 41.86,46.06
step
talk Ogo the Younger##61581
turnin Niuzao's Price##30925 |goto 39.34,62.21
step
talk Ogo the Elder##61580
accept The Terrible Truth##30926 |goto 39.35,62.29
step
talk Yak-Keeper Kyana##61585
accept A Trail of Fear##30928 |goto 39.15,62.07
step
talk Sentinel Commander Qipan##61584
accept Give Them Peace##30927 |goto 39.41,61.96
step
Find the Catacombs |q 30926/1 |goto 32.84,61.12
stickystart "Kill_Dreadlings"
stickystart "Give_Fear_Stricken_Sentinels_Peace"
step
Enter the cave |goto 32.84,61.12 < 7 |walk
Follow the path |goto 33.25,61.46 < 5 |walk
Follow the path |goto Townlong Steppes/13 23.21,68.80 < 5 |walk
Follow the path |goto Townlong Steppes/13 28.71,68.46 < 5 |walk
Follow the path down |goto Townlong Steppes/13 31.70,58.55 < 5 |walk
Follow the path |goto Townlong Steppes/13 34.82,54.12 < 5 |walk
Continue following the path |goto Townlong Steppes/13 42.88,51.88 < 5 |walk
Continue following the path |goto Townlong Steppes/13 49.90,57.35 < 5 |walk
Continue following the path |goto Townlong Steppes/13 54.02,65.48 < 5 |walk
Follow the path up |goto Townlong Steppes/13 59.64,68.40 < 5 |walk
Follow the path |goto Townlong Steppes/13 66.25,66.00 < 5 |walk
Follow the path |goto Townlong Steppes/13 72.34,59.02 < 5 |walk
Follow the path down |goto Townlong Steppes/13 70.51,50.06 < 5 |walk
Follow the path |goto Townlong Steppes/13 64.58,42.43 < 5 |walk
Investigate the Niuzao Catacombs |q 30926/2 |goto Townlong Steppes/13 60.71,40.22
|tip Inside the cave.
step
kill Dread Shadow##62307 |q 30926/3 |goto 50.25,24.92
|tip Inside the cave.
step
talk Tai Ho##61482
|tip Inside the cave.
turnin The Terrible Truth##30926 |goto 56.15,20.22
step
label "Kill_Dreadlings"
kill 12 Dreadling##62306 |q 30928/1 |goto 60.71,40.22
|tip Inside the cave.
step
label "Give_Fear_Stricken_Sentinels_Peace"
clicknpc Fear-Stricken Sentinel##62276+
|tip They look like dead pandaren on the ground around this area inside the cave.
Give #10# Fear-Stricken Sentinels Peace |q 30927/1 |goto 60.71,40.22
step
talk Sentinel Commander Qipan##61584
turnin Give Them Peace##30927 |goto Townlong Steppes/0 39.41,61.96
step
talk Yak-Keeper Kyana##61585
turnin A Trail of Fear##30928 |goto 39.15,62.07
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Dread Wastes (30-60)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."DreadWastes",
condition_suggested=function() return level >= 30 and level <= 50 and not completedq(31179) end,
startlevel=30,
endlevel=50,
},[[
step
talk Jin the Flying Keg##63500
fpath The Sunset Brewgarden |goto Dread Wastes/0 50.21,12.24
step
talk Mai of the Wall##63497
fpath Serpent's Spine |goto Vale of Eternal Blossoms/0 14.22,79.28
step
talk Bowmistress Li##62112
turnin Better Dead than Dread##31847 |goto 14.15,76.96 |only if haveq(31847) or completedq(31847)
accept Falling Down##31001 |goto 14.15,76.96
accept Nope##31002 |goto 14.15,76.96
stickystart "Kill_Dreadspinner_Tenders"
step
use the Shado-Pan Dragon Gun##82807
|tip Use it on Dreadspinner Eggs around this area.
|tip They look like groups of white eggs on the ground around this area.
Destroy #20# Dreadspinner Eggs |q 31002/1 |goto Dread Wastes/0 72.96,22.81
step
label "Kill_Dreadspinner_Tenders"
kill 6 Dreadspinner Tender##61981 |q 31002/2 |goto 72.96,22.81
step
talk Marksman Lann##62166
Find Marksman Lann |q 31001/1 |goto 72.56,28.67
step
talk Marksman Lann##62166
turnin Falling Down##31001 |goto 72.56,28.67
turnin Nope##31002 |goto 72.56,28.67
accept Psycho Mantid##31003 |goto 72.56,28.67
step
Enter the cave |goto 72.90,27.94 < 7 |walk
kill Adjunct Kree'zot##62301 |q 31003/1 |goto 73.47,27.48
|tip Inside the cave.
step
talk Klaxxi'va Tik##62203
|tip Inside the cave.
turnin Psycho Mantid##31003 |goto 73.67,27.58
accept Preserved in Amber##31004 |goto 73.67,27.58
step
Leave the cave |goto 72.90,27.94 < 5 |walk
click Ancient Amber Chunk##212980
Use the Klaxxi Tuning Fork on the Amber |q 31004/1 |goto 70.24,25.70
step
Watch the dialogue
talk Kil'ruk the Wind-Reaver##62202
turnin Preserved in Amber##31004 |goto 70.20,25.64
accept Wakening Sickness##31005 |goto 70.20,25.64
accept Ancient Vengeance##31676 |goto 70.20,25.64
stickystart "Kill_Vengeful_Gurthani_Spirits"
step
kill Sapfly##62386+
collect 100 Sapfly Bits##83075 |q 31005/1 |goto 67.75,29.72
step
label "Kill_Vengeful_Gurthani_Spirits"
kill 6 Vengeful Gurthani Spirit##65452 |q 31676/1 |goto 67.75,29.72
You can find more around [71.43,36.86]
step
talk Kil'ruk the Wind-Reaver##62202
turnin Wakening Sickness##31005 |goto 70.20,25.64
turnin Ancient Vengeance##31676 |goto 70.20,25.64
accept The Klaxxi Council##31006 |goto 70.20,25.64
step
talk Kil'ruk the Wind-Reaver##62413
Tell him _"Take me to Klaxxi'vess."_
Begin Flying to Klaxxi'vess |invehicle |goto 70.20,25.64 |q 31006
step
Watch the dialogue
Travel to Klaxxi'vess |q 31006/1 |goto 55.01,33.99 |notravel
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Klaxxi Council##31006 |goto 54.98,34.05
accept The Dread Clutches##31007 |goto 54.98,34.05
accept Not Fit to Swarm##31660 |goto 54.98,34.05
step
talk Kor'ik##64815
accept Dead Zone##31009 |goto 54.77,34.06
step
talk Ambersmith Zikk##64599
accept Amber Arms##31008 |goto 55.02,35.56
step
talk Kik'tik##63501
fpath Klaxxi'vess |goto 55.83,34.88
step
talk Zit'tix##65220
home Klaxxi'vess |goto 55.92,32.32 |q 31010 |future
step
talk Kil'ruk the Wind-Reaver##62538
Tell him _"Please fly me to the Clutches of Shek'zeer."_
Begin Flying to the Clutches of Shek'zeer |invehicle |goto 54.98,34.05 |q 31009
step
Fly to the Clutches of Shek'zeer |goto 39.01,40.52 < 10 |q 31009 |notravel
stickystart "Collect_Amber_Blades"
stickystart "Kill_Shekzeer_Clutch_Keepers"
stickystart "Kill_Shekzeer_Swarmborn"
step
use the Klaxxi Resonating Crystal##83276
Activate the Sonic Relay |q 31009/1 |goto 40.03,39.05
step
Click the Complete Quest Box:
turnin Dead Zone##31009
accept In Her Clutch##31010
step
click Sha-Haunted Crystal##214562
accept A Source of Terrifying Power##31661 |goto 44.59,41.36
step
click Ancient Amber Chunk##212980
Watch the dialogue
Kill the enemies that attack in waves
Waken the Paragon |q 31010/1 |goto 44.74,41.55
step
label "Collect_Amber_Blades"
kill Shek'zeer Bladesworn##62563+
collect 6 Amber Blade##83135 |q 31008/1 |goto 43.29,43.41
step
label "Kill_Shekzeer_Clutch_Keepers"
kill 6 Shek'zeer Clutch-Keeper##64559 |q 31007/1 |goto 44.43,41.77
step
label "Kill_Shekzeer_Swarmborn"
kill 30 Shek'zeer Swarmborn##62582 |q 31660/1 |goto 44.43,41.77
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Dread Clutches##31007 |goto 54.99,34.04
turnin Not Fit to Swarm##31660 |goto 54.99,34.04
step
talk Malik the Unscathed##62774
turnin In Her Clutch##31010 |goto 54.94,34.13
step
talk Kor'ik##64815
accept A Cry From Darkness##31066 |goto 54.77,34.06
step
talk Ambersmith Zikk##64599
turnin Amber Arms##31008 |goto 55.02,35.56
turnin A Source of Terrifying Power##31661 |goto 55.02,35.56
accept Concentrated Fear##31108 |goto 55.02,35.56
step
talk Malik the Unscathed##62774
accept The Dreadsworn##31689 |goto 55.06,35.47
accept Citizens of a New Empire##31107 |goto 55.06,35.47
stickystart "Collect_Vorthik_Eggs"
stickystart "Collect_Dread_Amber_Focuses"
stickystart "Kill_Vorthik_Dreadsworn"
step
kill Qi'tar the Deathcaller##62863 |q 31066/1 |goto 59.36,18.41
step
label "Collect_Vorthik_Eggs"
click Vor'thik Egg##214170+
|tip They look like squirming yellow cocoons on the ground around this area.
collect 10 Vor'thik Eggs##86598 |q 31107/1 |goto 59.65,16.99
step
label "Collect_Dread_Amber_Focuses"
kill Vor'thik Fear-Shaper##62814+
collect 4 Dread Amber Focus##86616 |q 31108/1 |goto 58.16,14.62
step
label "Kill_Vorthik_Dreadsworn"
kill 6 Vor'thik Dreadsworn##62813 |q 31689/1 |goto 58.16,14.62
step
talk Kor'ik##64815
turnin A Cry From Darkness##31066 |goto 54.77,34.06
accept Extending Our Coverage##31087 |goto 54.77,34.06
step
talk Malik the Unscathed##62774
turnin The Dreadsworn##31689 |goto 55.06,35.47
turnin Citizens of a New Empire##31107 |goto 55.06,35.47
step
talk Ambersmith Zikk##64599
turnin Concentrated Fear##31108 |goto 55.02,35.56
step
talk Kil'ruk the Wind-Reaver##62538
accept Amber Is Life##31019 |goto 55.06,35.85
stickystart "Kill_Mistblade_Rippers"
stickystart "Collect_Mantid_Relics"
step
kill Mistblade Ripper##61970+
accept Relics of the Swarm##31023 |goto 62.23,57.58
|tip You will eventually automatically accept this quest after looting.
step
label "Kill_Mistblade_Rippers"
kill 7 Mistblade Ripper##61970 |q 31019/1 |goto 65.38,63.64
step
label "Collect_Mantid_Relics"
click Mantid Relic##212079+
|tip They look like broken stone tablets on the ground around this area.
collect 8 Mantid Relic##82867 |q 31023/1 |goto 65.38,63.64
|only if haveq(31023) or completedq(31023)
step
Enter the cave |goto 66.75,63.78 < 5 |walk
Follow the path down |goto 66.82,64.36 < 5 |walk
kill Mistblade Scale-Lord##63179 |q 31019/2 |goto 66.42,66.11
|tip Inside the cave.
step
clicknpc Ancient Amber Chunk##65354
|tip Inside the cave.
turnin Amber Is Life##31019 |goto 66.84,65.39
step
Watch the dialogue
_Next to you:_
talk Korven the Prime##62232
|tip Inside the cave.
accept Feeding the Beast##31020 |goto 66.84,65.39
accept Living Amber##31021 |goto 66.84,65.39
stickystart "Kill_Coldbite_Crocolisks"
step
Follow the path up |goto 66.72,64.81 < 5 |walk
Follow the path up |goto 66.80,64.23 < 5 |walk
Leave the cave |goto 66.75,63.76 < 3 |walk
click Amber Fragment##212011+
|tip They look like orange rocks on the ground underwater around this area.
collect Living Amber##82864+ |n
use the Living Amber##82864
Feed Korven the Prime #9# Living Amber |q 31021/1 |goto 65.19,58.75
step
label "Kill_Coldbite_Crocolisks"
kill 8 Coldbite Crocolisk##62023 |q 31020/1 |goto 65.19,58.75
|tip Underwater around this area.
step
_Next to you:_
talk Korven the Prime##62232
turnin Feeding the Beast##31020
turnin Living Amber##31021
accept Kypari Zar##31022
step
click Sonar Tower##212933
Examine the Sonar Tower |q 31022/1 |goto 59.81,59.47
step
Watch the dialogue
Kill the enemies that attack in waves
Defend Korven the Prime |q 31022/2 |goto 59.98,59.40
step
_Next to you:_
talk Korven the Prime##62232
turnin Kypari Zar##31022
accept The Root of the Problem##31026
step
Follow the path down |goto 59.31,58.38 < 7 |walk
Enter the cave |goto 58.64,59.48 < 5 |walk
Follow the path down |goto 58.24,59.22 < 5 |walk
kill Coldbite Matriarch##62008 |q 31026/1 |goto 57.36,57.78
|tip Inside the cave.
step
_Next to you:_
talk Korven the Prime##62232
turnin The Root of the Problem##31026
step
Follow the path up |goto 58.06,58.96 < 5 |walk
Follow the path up |goto 58.32,59.30 < 5 |walk
Leave the cave |goto 58.68,59.51 < 3 |walk
Follow the path |goto 59.37,58.30 < 7 |walk
Enter the building |goto 46.24,53.14 < 7 |walk
Locate Amberglow Hollow |q 31087/1 |goto 46.54,52.60
|tip Inside the building.
step
Run down the stairs |goto 46.68,52.36 < 5 |walk
Follow the path |goto 47.38,51.11 < 5 |walk
kill Adjunct Zet'uk##65478 |q 31087/2 |goto 48.09,49.77
|tip Inside the building.
step
click Silent Beacon##213250
|tip Inside the building.
Use the Resonating Crystal on the Silent Beacon |q 31087/3 |goto 48.16,49.75
step
talk Kor'ik##65365
|tip Inside the building.
turnin Extending Our Coverage##31087 |goto 48.11,49.64
accept Isolating the Frequency##31088 |goto 48.11,49.64
accept The Color of Our Energy##31090 |goto 48.11,49.64
stickystart "Kill_Ikthik_Harvesters"
step
Follow the path |goto 47.57,50.78 < 5 |walk
Run up the stairs |goto 47.27,51.32 < 5 |walk
Follow the path |goto 46.65,52.39 < 5 |walk
Leave the building |goto 46.25,53.12 < 5 |walk
click Amber Collector##212923+
|tip They look like orange bags hanging on the side of trees around this area.
collect 7 Amber-Filled Jar##85159 |q 31090/1 |goto 40.84,51.34
step
label "Kill_Ikthik_Harvesters"
kill 8 Ik'thik Harvester##63206 |q 31088/1 |goto 40.84,51.34
step
talk Infiltrator Ik'thal##65511
fpath The Briny Muck |goto 42.53,55.75
step
Enter the building |goto 46.24,53.14 < 7 |walk
Run down the stairs |goto 46.68,52.36 < 5 |walk
Follow the path |goto 47.38,51.11 < 5 |walk
talk Kor'ik##65365
|tip Inside the building.
turnin Isolating the Frequency##31088 |goto 48.11,49.64
turnin The Color of Our Energy##31090 |goto 48.11,49.64
accept By the Sea, Nevermore##31089 |goto 48.11,49.64
step
Follow the path |goto 47.57,50.78 < 5 |walk
Run up the stairs |goto 47.27,51.32 < 5 |walk
Follow the path |goto 46.65,52.39 < 5 |walk
Leave the building |goto 46.25,53.12 < 5 |walk
use the Klaxxi Tuning Fork##84119
Awaken Kaz'tik the Manipulator |q 31089/1 |goto 43.50,63.26
step
Watch the dialogue
talk Kaz'tik the Manipulator##63758
turnin By the Sea, Nevermore##31089 |goto 43.32,63.49
accept Reunited##31091 |goto 43.32,63.49
step
talk Kaz'tik the Manipulator##63876
Tell him _"I'm ready to help you find your weapon."_
Watch the dialogue
Follow Kaz'tik the Manipulator |goto 43.32,63.49 > 12 |c |q 31091
step
Watch the dialogue
|tip Follow Kaz'tik the Manipulator and protect him as he walks.
Escort Kaz'tik the Manipulator to the Undisturbed Dirt |q 31091/1 |goto 41.76,72.02
step
Watch the dialogue
Find Kaz'tik's Greatest Weapon |q 31091/2 |goto 41.76,72.02
step
talk Kaz'tik the Manipulator##63876
turnin Reunited##31091 |goto 41.76,72.02
accept The Kunchong Whisperer##31359 |goto 41.76,72.02
accept Feed or Be Eaten##31092 |goto 41.76,72.02
stickystart "Feed_Succulent_Turtle_Filets_To_Kovok"
stickystart "Slay_Muckscale_Tribe_Members"
step
kill Oracle Hiss'ir##63998 |q 31359/1 |goto 41.93,63.77
|tip He walks around this area.
step
click Glowing Amber##214062
accept Falling to Pieces##31398 |goto 41.88,63.72
step
label "Feed_Succulent_Turtle_Filets_To_Kovok"
Kill Brineshell enemies around this area
collect Succulent Turtle Filet##86489+ |n
use the Succulent Turtle Filet##86489+
Feed #6# Succulent Turtle Filets to Kovok |q 31092/1 |goto 37.63,62.58
step
label "Slay_Muckscale_Tribe_Members"
Kill Muckscale enemies around this area
Slay #10# Muckscale Tribe Members |q 31359/2 |goto 37.63,62.58
step
talk Kaz'tik the Manipulator##63758
turnin The Kunchong Whisperer##31359 |goto 54.25,35.78
turnin Feed or Be Eaten##31092 |goto 54.25,35.78
turnin Falling to Pieces##31398 |goto 54.25,35.78
step
talk Ambersmith Zikk##64599
turnin Relics of the Swarm##31023 |goto 55.02,35.56
accept Gambling Problem##31727 |goto 55.02,35.56
step
talk Kil'ruk the Wind-Reaver##62538
accept A Not So Friendly Request##31730 |goto 55.06,35.85
step
talk Sapmaster Vu##62666
turnin A Not So Friendly Request##31730 |goto 51.21,11.39
accept The Heavens Hum With War##31067 |goto 51.21,11.39
step
Enter the building |goto 53.60,15.45 < 7 |walk
Run down the stairs |goto 53.44,14.49 < 5 |walk
Follow the path |goto 53.19,12.96 < 5 |walk
click Scroll of Auspice##212389
|tip Inside the building.
accept Sacred Recipe##31068 |goto 53.09,12.36
step
kill Azzix K'tai##62843 |q 31067/1 |goto 52.74,10.27
|tip He walks around this area inside the building.
step
Follow the path |goto 53.11,12.52 < 5 |walk
Run up the stairs |goto 53.21,13.15 < 5 |walk
Follow the path |goto 53.44,14.51 < 5 |walk
Leave the building |goto 53.59,15.47 < 5 |walk
talk Lya of Ten Songs##62667
turnin Sacred Recipe##31068 |goto 50.73,11.71
step
Watch the dialogue
talk Lya of Ten Songs##62667
accept Rending Daggers##31072 |goto 50.73,11.71
step
talk Sapmaster Vu##62666
turnin The Heavens Hum With War##31067 |goto 51.21,11.39
accept Bound With Shade##31069 |goto 51.21,11.39
step
talk Olon##62668
accept Daggers of the Great Ones##31070 |goto 51.16,11.22
step
talk Thirsty Missho##62859
accept I Bring Us Great Shame##31071 |goto 51.13,11.11
step
talk Chen Stormstout##62779
accept Fate of the Stormstouts##31129 |goto 50.45,12.05
step
talk Lya of Ten Songs##62667
Ask her _"Have you seen any Stormstouts here in the Brewgarden?"_
Speak with Lya of Ten Songs |q 31129/2 |goto 50.73,11.71
step
talk Big Dan Stormstout##62845
Ask him _"Is your name really Stormstout?"_
Speak with Big Dan Stormstout |q 31129/3 |goto 50.90,11.36
step
talk Sapmaster Vu##62666
Ask him _"Have you seen anybody named Stormstout come through here?"_
Speak with Sapmaster Vu |q 31129/1 |goto 51.21,11.39
step
talk Chen Stormstout##62779
turnin Fate of the Stormstouts##31129 |goto 50.45,12.05
stickystart "Harvest_Shade"
step
talk Chen Stormstout##62779
accept Evie Stormstout##31077 |goto 54.11,20.48
step
kill Kz'Kzik##62832
|tip He walks around this area.
collect Blade of Kz'Kzik##84111 |q 31072/1 |goto 53.29,19.98
step
click Lost Keg##212540
collect Lost Keg##83781 |q 31071/2 |goto 54.43,20.27
step
click Lost Picnic Supplies##212556
collect Lost Picnic Supplies##83783 |q 31071/3 |goto 56.01,19.44
step
label "Harvest_Shade"
Kill enemies around this area
Harvest #100# Shade |q 31069/1 |goto 55.21,18.18
step
click Lost Mug##212548
collect Lost Mugs##83782 |q 31071/1 |goto 51.70,19.07
step
kill Ilikkax##62833
|tip He walks around this area.
collect Blade of Ilikkax##84112 |q 31072/2 |goto 50.98,21.02
step
kill Frightened Mushan##62760+
collect 3 Large Mushan Tooth##84107 |q 31070/1 |goto 49.15,19.15
step
talk Lya of Ten Songs##62667
turnin Rending Daggers##31072 |goto 50.73,11.71
accept Wood and Shade##31074 |goto 50.73,11.71
step
talk Sapmaster Vu##62666
turnin Bound With Shade##31069 |goto 51.21,11.39
step
talk Olon##62668
turnin Daggers of the Great Ones##31070 |goto 51.16,11.22
step
talk Thirsty Missho##62859
turnin I Bring Us Great Shame##31071 |goto 51.13,11.11
step
talk Sapmaster Vu##62666
accept Bound With Wood##31073 |goto 51.21,11.39
step
talk Defender Azzo##63218
accept Kor'thik Aggression##31133 |goto 50.19,12.44
step
Meet up with Chen |q 31077/1 |goto 50.18,10.20
step
Watch the dialogue
Eulogize Evie |q 31077/2 |goto 50.18,10.20
step
talk Chen Stormstout##62779
turnin Evie Stormstout##31077 |goto 50.18,10.20
accept Han Stormstout##31078 |goto 50.18,10.20
stickystart "Slay_Korthik_Mantids"
step
Enter the building |goto 47.00,16.82 < 7 |walk
Run down the stairs |goto 46.35,16.80 < 5 |walk
Follow the path |goto 45.31,16.77 < 5 |walk
Follow the path |goto 44.90,16.89 < 5 |walk
Continue following the path |goto 44.71,17.49 < 3 |walk
Continue following the path |goto 45.31,18.45 < 3 |walk
Continue following the path |goto 45.56,18.87 < 3 |walk
Follow the path |goto 45.31,19.00 < 3 |walk
Follow the path |goto 44.66,17.99 < 3 |walk
Follow the path |goto 44.45,17.72 < 3 |walk
Continue following the path |goto 43.52,17.77 < 3 |walk
Continue following the path |goto 42.66,18.98 < 3 |walk
Continue following the path |goto 42.52,18.66 < 3 |walk
Follow the path |goto 43.22,17.69 < 3 |walk
Follow the path |goto 43.40,17.38 < 3 |walk
clicknpc Han Stormstout##62776
|tip Inside the building.
Find Han Stormstout |q 31078/1 |goto 43.75,16.75
step
Follow the path |goto 44.15,16.75 < 5 |walk
talk Chen Stormstout##62779
|tip Inside the building.
turnin Han Stormstout##31078 |goto 44.41,16.81
step
Follow the path |goto 44.99,16.76 < 5 |walk
Run up the stairs |goto 45.44,16.78 < 5 |walk
Follow the path |goto 46.37,16.79 < 5 |walk
Leave the building |goto 47.02,16.82 < 5 |walk
Enter the building |goto 44.79,15.86 < 3 |walk
Run down the stairs |goto 44.74,16.00 < 3 |walk
Follow the path |goto 44.62,16.39 < 3 |walk
Find the Mark of the Empress |q 31074/1 |goto 44.51,16.78
|tip Inside the building.
step
Follow the path |goto 44.60,16.46 < 3 |walk
Run up the stairs |goto 44.65,16.34 < 3 |walk
Leave the building |goto 44.77,15.89 < 3 |walk
Enter the building |goto 43.05,14.00 < 3 |walk
Run down the stairs |goto 43.05,14.12 < 3 |walk
Follow the path |goto 43.09,14.58 < 3 |walk
Find the Heartroot of Kypari Kor |q 31074/2 |goto 43.22,14.96
|tip Inside the building.
step
Follow the path |goto 43.10,14.63 < 3 |walk
Run up the stairs |goto 43.09,14.50 < 3 |walk
Leave the building |goto 43.05,14.02 < 3 |walk
clicknpc Withered Husk##62876+
|tip They look like dead trees chopped in half on the ground around this area.
collect 8 Fragrant Corewood##84118 |q 31073/1 |goto 45.31,12.78
step
label "Slay_Korthik_Mantids"
Kill Kor'thik enemies around this area
Slay #17# Kor'thik Mantids |q 31133/1 |goto 45.31,12.78
step
talk Defender Azzo##63218
turnin Kor'thik Aggression##31133 |goto 50.19,12.44
step
talk Lya of Ten Songs##62667
turnin Wood and Shade##31074 |goto 50.73,11.71
step
talk Sapmaster Vu##62666
turnin Bound With Wood##31073 |goto 51.21,11.39
accept Sunset Kings##31075 |goto 51.21,11.39
step
talk Sapmaster Vu##62666
turnin Sunset Kings##31075 |goto 38.18,17.18
step
talk Olon##62668
accept Fiery Wings##31080 |goto 38.20,17.12
step
talk Boggeo##62772
accept The Horror Comes A-Rising##31079 |goto 38.16,17.34
step
talk Lya of Ten Songs##62667
accept Incantations Fae and Primal##31081 |goto 38.30,17.13
step
talk Chief Rikkitun##62771
accept Great Vessel of Salvation##31082 |goto 38.65,17.25
stickystart "Collect_Flittering_Dust"
stickystart "Kill_Shuffling_Mistlurkers"
stickystart "Kill_Kyparites"
step
kill Mygoness##62766 |q 31081/2 |goto 32.92,19.36
|tip He walks around this area.
step
kill Ahgunoss##62765 |q 31081/1 |goto 32.10,17.37
step
use the Rikkitun Bell##84267
clicknpc Motherseed##62601+
|tip They look like huge acorns with yellow crystals in them on the ground around this area.
Bring #3# Motherseeds Back to the Motherseed Pit |q 31082/1 |goto 36.65,20.29
Bring them to [36.88,17.22]
step
label "Collect_Flittering_Dust"
clicknpc Rikkilea Flitterling##62764+
|tip Run behind them after you click them.
collect 88 Flitterling Dust##84239 |q 31080/1 |goto 37.91,24.05
step
label "Kill_Shuffling_Mistlurkers"
kill 7 Shuffling Mistlurker##65404 |q 31079/1 |goto 34.70,20.99
step
label "Kill_Kyparites"
kill 2 Kyparite##63007 |q 31079/2 |goto 36.0,23.0
|tip They look like spots of brown splashing water moving across the ground around this area.
|tip Get close to them and they will come out of the ground.
step
talk Boggeo##62772
turnin The Horror Comes A-Rising##31079 |goto 38.16,17.33
step
talk Olon##62668
turnin Fiery Wings##31080 |goto 38.20,17.12
step
talk Lya of Ten Songs##62667
turnin Incantations Fae and Primal##31081 |goto 38.30,17.13
step
talk Chief Rikkitun##62771
turnin Great Vessel of Salvation##31082 |goto 38.65,17.25
accept Bind the Glamour##31084 |goto 38.65,17.25
step
talk Chief Rikkitun##62771
Tell him _"The forked blade is ready, and we have given our gift. Please perform your incantation."_
Watch the dialogue
Follow Chief Rikkitum |goto 38.65,17.25 > 10 |c |q 31084
step
Watch the dialogue
|tip Follow Chief Rikkitum as he walks.
Allow Chief Rikkitun to Enchant the Forked Blade |q 31084/1 |goto 39.67,23.18
step
talk Chief Rikkitun##62771
turnin Bind the Glamour##31084 |goto 38.65,17.25
step
talk Lya of Ten Songs##62667
accept Fires and Fears of Old##31085 |goto 38.30,17.13
step
talk Sapmaster Vu##62666
accept Blood of Ancients##31086 |goto 38.18,17.18
step
click Solidified Amber##212902
collect Chunk of Solidified Amber##84779 |q 31086/1 |goto 30.22,30.58
step
click Enormous Landslide
Click Here After the Landslide Moves |confirm |goto 30.06,30.89 |q 31085
step
Enter the building |goto 30.18,31.69 < 5 |walk
Run down the stairs |goto 30.75,32.17 < 5 |walk
Follow the path |goto 31.65,32.97 < 5 |walk
use the Ruining Fork##84771
|tip Inside the building.
Use the Ruining Fork on Iyyokuk the Lucid |q 31085/1 |goto 32.39,33.65
step
Watch the dialogue
Kill the enemies that attack
|tip They appear and start channeling on Iyyokuk the Lucid inside the building.
Protect Iyyokuk the Lucid Until He Escapes |q 31085/2 |goto 32.39,33.65
step
Follow the path |goto 31.94,33.23 < 5 |walk
Run up the stairs |goto 31.55,32.88 < 5 |walk
Follow the path |goto 30.75,32.18 < 5 |walk
Leave the building |goto 30.25,31.73 < 5 |walk
talk Lya of Ten Songs##62667
turnin Fires and Fears of Old##31085 |goto 50.28,12.07
step
talk Sapmaster Vu##62666
turnin Blood of Ancients##31086 |goto 50.22,12.11
step
talk Min the Breeze Rider##63498
fpath Soggy's Gamble |goto 56.10,70.18
step
Enter the building |goto 55.28,71.14 < 5 |walk
talk San the Sea Calmer##63016
|tip Inside the building.
home The Chum Bucket |goto 55.15,71.11
step
Leave the building |goto 55.28,71.14 < 3 |walk
talk Deck Boss Arie##63349
turnin Soggy's Gamble##31727 |goto 54.72,72.17
accept Mazu's Breath##31265 |goto 54.72,72.17
step
use the Potion of Mazu's Breath##85869
Drink the Potion of Mazu's Breath |q 31265/1 |goto 54.72,72.17
step
talk Deck Boss Arie##63349
turnin Mazu's Breath##31265 |goto 54.72,72.17
accept Fresh Pots##31181 |goto 54.72,72.17
accept You Otter Know##31182 |goto 54.72,72.17
stickystart "Bait_Crab_Pots"
step
use the Bag of Clams##85231
|tip Use it on Coldwhisker Otters underwater around this area.
Feed #8# Coldwhisker Otters |q 31182/1 |goto 59.48,81.84
step
label "Bait_Crab_Pots"
kill Sea Monarch##63470+
|tip Underwater around this area.
collect Sea Monarch Chunks##85230+ |n
click Empty Crab Pot+
|tip They look like cages on the ground underwater around this area.
|tip You need 2 Sea Monarch Chunks to bait each crab pot.
Bait #10# Crab Pots |q 31181/1 |goto 59.48,81.84
step
talk Deck Boss Arie##63349
turnin Fresh Pots##31181 |goto 54.72,72.16
turnin You Otter Know##31182 |goto 54.72,72.16
accept Meet the Cap'n##31183 |goto 54.72,72.16
step
Enter the building |goto 55.68,72.34 < 5 |walk
talk Captain "Soggy" Su-Dao##63317
|tip Inside the building.
turnin Meet the Cap'n##31183 |goto 55.66,72.50
accept Walking Dog##31185 |goto 55.66,72.50
accept Old Age and Treachery##31184 |goto 55.66,72.50
step
Leave the building |goto 55.67,72.31 < 3 |walk
talk Deck Boss Arie##63349
accept On the Crab##31187 |goto 54.72,72.16
accept Shark Week##31188 |goto 54.72,72.16
step
use the Dog's Whistle##85955
_Next to you:_
talk Dog##63955
accept Dog Food##31186 |goto 50.72,78.38
stickystart "Feed_Dog"
stickystart "Collect_Thresher_Teeth"
stickystart "Send_Full_Crab_Pots_To_The_Surface"
step
Bring Dog to the Silt Vents |q 31185/1 |goto 46.40,74.06
|tip Underwater.
step
Bring Dog to the Wreck of the Mist-Hopper |q 31185/2 |goto 44.9,78.0
|tip Underwater.
step
click Soggy's Footlocker##213454
|tip It looks like a small brown wooden chest on the ground underwater on this sunken ship.
|tip It can appear in other locations on this sunken ship.
collect Sealed Charter Tube##85886 |q 31184/1 |goto 44.73,78.66
step
Bring Dog to the Whale Corpse |q 31185/3 |goto 40.08,78.68
|tip Underwater.
step
label "Feed_Dog"
kill Rockshell Snapclaw##63369+
|tip Underwater around this area.
Feed Dog #10# Times |q 31186/1 |goto 44.75,76.21
step
label "Collect_Thresher_Teeth"
kill Longfin Thresher##63944+
|tip Underwater around this area.
collect Thresher Jaw##85998+ |n
use the Thresher Jaw##85998+
collect 200 Thresher Teeth##85999 |q 31188/1 |goto 44.75,76.21
step
label "Send_Full_Crab_Pots_To_The_Surface"
click Full Crab Pot##213508+
|tip They look like cages on the ground underwater around this area.
Send #8# Full Crab Pots to the Surface |q 31187/1 |goto 44.75,76.21
step
_Next to you:_
talk Dog##63955
turnin Dog Food##31186
step
talk Deck Boss Arie##63349
turnin On the Crab##31187 |goto 54.72,72.16
turnin Shark Week##31188 |goto 54.72,72.16
step
Enter the building |goto 55.68,72.33 < 5 |walk
talk Captain "Soggy" Su-Dao##63317
|tip Inside the building.
turnin Walking Dog##31185 |goto 55.66,72.50
turnin Old Age and Treachery##31184 |goto 55.66,72.50
step
Leave the building |goto 55.68,72.33 < 3 |walk
talk Deck Boss Arie##63349
accept Reeltime Strategy##31189 |goto 54.72,72.16
step
talk Master Angler Ju Lien##64259
Speak with Master Angler Ju Lien |q 31189/1 |goto 53.64,76.05
step
talk Master Angler Ju Lien##64259
Tell him _"Deck Boss said you needed some help."_
Watch the dialogue
|tip Click the various fishing rods nearby.
|tip They look like fishing poles leaning on wooden stands next to Master Angler Ju Lien.
Kill the enemies that attack
Assist Master Angler Ju Lien |q 31189/2 |goto 53.64,76.05
step
talk Deck Boss Arie##63349
turnin Reeltime Strategy##31189 |goto 54.72,72.16
step
talk Captain "Soggy" Su-Dao##63317
accept The Mariner's Revenge##31190 |goto 54.77,72.11
step
clicknpc Mist-Hopper Jr.##64350
Control the Mist-Hopper Jr. |invehicle |goto 56.17,76.29 |q 31190
stickystart "Complete_Port_Side_Hits"
stickystart "Complete_Starboard_Hits"
stickystart "Complete_Stern_Hits"
step
Complete #25# Bow Hits |q 31190/1 |goto 53.35,80.89
|tip Use the abilities on your action bar.
|tip Aim at the red crosshairs on the huge octopus in the water.
step
label "Complete_Port_Side_Hits"
Complete #25# Port Side Hits |q 31190/2 |goto 53.35,80.89
|tip Use the abilities on your action bar.
|tip Aim at the red crosshairs on the huge octopus in the water.
step
label "Complete_Starboard_Hits"
Complete #25# Starboard Hits |q 31190/3 |goto 53.35,80.89
|tip Use the abilities on your action bar.
|tip Aim at the red crosshairs on the huge octopus in the water.
step
label "Complete_Stern_Hits"
Complete #25# Stern Hits |q 31190/4 |goto 53.35,80.89
|tip Use the abilities on your action bar.
|tip Aim at the red crosshairs on the huge octopus in the water.
step
Stop Controlling the Mist-Hopper Jr. |outvehicle |goto 56.2,76.3 |q 31190
|tip Click the yellow arrow on your action bar.
step
talk Captain "Soggy" Su-Dao##63317
turnin The Mariner's Revenge##31190 |goto 56.57,75.92
step
talk Deck Boss Arie##63349
accept Mazu's Bounty##31354 |goto 56.57,75.82
step
talk Master Angler Ju Lien##64259
turnin Mazu's Bounty##31354 |goto 54.90,72.83
accept Once in a Hundred Lifetimes##32030 |goto 54.90,72.83
step
talk Klaxxi'va Ik##65395
turnin Once in a Hundred Lifetimes##32030 |goto 54.71,34.75
accept Overthrone##31782 |goto 54.71,34.75
step
Watch the dialogue
Witness the Klaxxi Ritual |q 31782/1 |goto 54.71,34.75
step
talk Klaxxi'va Vor##62519
turnin Overthrone##31782 |goto 55.11,34.27
step
talk Kor'ik##64815
accept The Zan'thik Dig##31605 |goto 54.77,34.06
step
talk Kil'ruk the Wind-Reaver##62538
accept Skeer the Bloodseeker##31175 |goto 55.06,35.85
step
Enter the underwater cave |goto 25.76,53.85 < 7 |walk
click Ancient Amber Chunk##212980
|tip Inside the underwater cave.
Awaken Skeer the Bloodseeker |q 31175/1 |goto 25.70,50.40
step
Watch the dialogue
talk Skeer the Bloodseeker##63071
|tip Inside the underwater cave.
turnin Skeer the Bloodseeker##31175 |goto 25.71,50.30
accept A Strange Appetite##31176 |goto 25.71,50.30
accept Fine Dining##31177 |goto 25.71,50.30
accept A Bloody Delight##31178 |goto 25.71,50.30
stickystart "Collect_Clacker_Tails"
stickystart "Collect_Starfish_Meat"
step
Leave the underwater cave |goto 25.72,53.98 < 7 |walk
kill Dread Remora##63353+
|tip Underwater around this area.
collect 100 Volatile Blood##85229 |q 31178/1 |goto 25.02,61.12
step
label "Collect_Clacker_Tails"
kill Briny Clacker##63348+
|tip Underwater around this area.
collect 8 Clacker Tail##85212 |q 31177/1 |goto 25.02,61.12
step
label "Collect_Starfish_Meat"
click Spiny Starfish##212988+
|tip They look like pink starfish on the ground underwater around this area.
collect 12 Starfish Meat##85211 |q 31176/1 |goto 25.02,61.12
step
Enter the underwater cave |goto 25.76,53.85 < 7 |walk
talk Skeer the Bloodseeker##63071
|tip Inside the underwater cave.
turnin A Strange Appetite##31176 |goto 25.71,50.62
turnin Fine Dining##31177 |goto 25.71,50.62
turnin A Bloody Delight##31178 |goto 25.71,50.62
accept The Scent of Blood##31179 |goto 25.71,50.62
step
Kill the enemies that attack
kill 12 Muckscale Flesheater##63465 |q 31179/1 |goto 25.71,50.97
|tip Inside the underwater cave.
step
Watch the dialogue
|tip Inside the underwater cave.
kill Muckscale Serpentus##63466 |q 31179/2 |goto 25.71,50.97
step
Leave the underwater cave |goto 25.76,53.85 < 7 |walk
talk Rik'kal the Dissector##65253
turnin The Zan'thik Dig##31605 |goto 31.80,88.95
accept The Dissector Wakens##31606 |goto 31.80,88.95
step
Kill the enemies that attack
Waken the Paragon |q 31606/1 |goto 31.80,88.95
step
talk Rik'kal the Dissector##65253
turnin The Dissector Wakens##31606 |goto 31.80,88.95
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Scent of Blood##31179 |goto 55.06,35.85
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Daily",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Serenity_Peak",
monkquest=10,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31840) or not completedq(31841) or not completedq(31842) or not completedq(31843) or not completedq(31844) or not completedq(31845) or not completedq(31846) and level >= 10 end,
condition_end=function() return completedq(31840) end,
description="\nThis guide will walk you through the Monk daily for extra experience.",
},[[
step
talk Master Hight##66260
accept Practice Makes Perfect: Master Cheng##31840 |or |goto Kun-Lai Summit/0 48.6,42.7
accept Practice Makes Perfect: Master Woo##31841 |or |goto 48.6,42.7
accept Practice Makes Perfect: Master Kistane##31842 |or |goto 48.6,42.7
accept Practice Makes Perfect: Master Yoon##31843 |or |goto 48.6,42.7
accept Practice Makes Perfect: Master Cheng##31844 |or |goto 48.6,42.7
accept Practice Makes Perfect: Master Tsang##31845 |or |goto 48.6,42.7
accept Practice Makes Perfect: Master Hsu##31846 |or |goto 48.6,42.7
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31840/1 |goto 47.1,40.1
|only if haveq(31840)
step
talk Master Woo##65960
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Woo##65960
Complete Master Cheng's Training |q 31841/1 |goto 48.6,39.6
|only if haveq(31841)
step
talk Master Kistane##65899
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Kistane##65899
Complete Master Kistane's Training |q 31842/1 |goto 48.0,40.2
|only if haveq(31842)
step
talk Master Yoon##66073
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Yoon##66073
Complete Master Yoon's Training |q 31843/1 |goto 48.0,40.2
|only if haveq(31843)
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31844/1 |goto 47.1,40.1
|only if haveq(31844)
step
talk Master Tsang##66149
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Tsang##66149
Complete Master Tsang's Training |q 31845/1 |goto 47.1,40.1
|only if haveq(31845)
step
talk Master Hsu##65977
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Hsu##65977
Complete Master Hsu's Training |q 31846/1 |goto 47.1,40.1
|only if haveq(31846)
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Cheng##31840 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Woo##31841 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Kistane##31842 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Yoon##31843 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Cheng##31844 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Tsang##31845 |or |goto 48.6,42.7
turnin Practice Makes Perfect: Master Hsu##31846 |or |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 10",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Serenity_Peak",
monkquest=10,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31834) and level >= 10 end,
condition_end=function() return completedq(31834) end,
description="\nThis guide will walk you through the Monk daily for extra experience.",
},[[
step
accept The Peak of Serenity - Begin Your Training##31856
|tip You will accept this automatically when you reach level 10.
|only if not completedq(31834)
step
talk Master Hight##66260
|tip Inside the building.
turnin The Peak of Serenity - Begin Your Training##31856 |goto Kun-Lai Summit/0 48.59,42.70
accept Begin Your Training: Master Cheng##31834 |goto 48.59,42.70
step
talk Master Cheng##66138
Tell him _"I wish to challenge you."_
|tip Follow him to the center of the Training Grounds after selecting the dialogue.
Bow to Master Cheng to Begin |script DoEmote("BOW")
kill Master Cheng##66138
Complete Master Cheng's Training |q 31834/1 |goto 47.07,40.15
step
talk Master Hight##66260
|tip Inside the building.
turnin Begin Your Training: Master Cheng##31834 |goto 48.59,42.70
accept Practice Makes Perfect: Master Cheng##31840 |goto 48.59,42.70
step
talk Master Cheng##66138
Tell him _"I wish to challenge you."_
|tip Follow him to the center of the Training Grounds after selecting the dialogue.
Bow to Master Cheng to Begin |script DoEmote("BOW")
kill Master Cheng##66138
Complete Master Cheng's Training |q 31840/1 |goto 47.07,40.15
step
talk Master Hight##66260
|tip Inside the building.
turnin Practice Makes Perfect: Master Cheng##31840 |goto 48.59,42.70
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 10",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Serenity_Peak",
monkquest=10,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31835) and level >= 10 end,
condition_end=function() return completedq(31835) end,
description="\nThis guide will walk you through the Monk quest at level 10.",
},[[
step
Upon reaching level 10 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31857
|only if not completedq(31835)
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31857 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Kistane##31835 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Kistane##65899
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Kistane##65899
Complete Master Kistane's Training |q 31835/1 |goto 48.0,40.2
step
talk Master Hight##66260
turnin Continue Your Training: Master Kistane##31835 |goto 48.6,42.7
accept Practice Makes Perfect: Master Kistane##31842 |goto 48.6,42.7
step
talk Master Kistane##65899
Tell her you wish to challenge her
Follow her to the center of the area and fight her
kill Master Kistane##65899
Complete Master Kistane's Training |q 31842/1 |goto 48.0,40.2
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Kistane##31842 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 15",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Serenity_Peak",
monkquest=15,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31836) and level >= 15 end,
condition_end=function() return completedq(31836) end,
description="\nThis guide will walk you through the Monk quest at level 15.",
},[[
step
Upon reaching level 15 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31858
|only if not completedq(31836)
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31858 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Yoon##31836 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Yoon##66073
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Yoon##66073
Complete Master Yoon's Training |q 31836/1 |goto 48.0,40.2
step
talk Master Hight##66260
turnin Continue Your Training: Master Yoon##31836 |goto 48.6,42.7
accept Practice Makes Perfect: Master Yoon##31843 |goto 48.6,42.7
step
talk Master Yoon##66073
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Yoon##66073
Complete Master Yoon's Training |q 31843/1 |goto 48.0,40.2
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Yoon##31843 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 20",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Serenity_Peak",
monkquest=20,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31837) and level >= 20 end,
condition_end=function() return completedq(31837) end,
description="\nThis guide will walk you through the Monk quest at level 20.",
},[[
step
Upon reaching level 20 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31859
|only if not completedq(31837)
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31859 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Cheng##31837 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31837/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Continue Your Training: Master Cheng##31837 |goto 48.6,42.7
accept Practice Makes Perfect: Master Cheng##31844 |goto 48.6,42.7
step
talk Master Cheng##66138
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Cheng##66138
Complete Master Cheng's Training |q 31844/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Cheng##31844 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 25",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Serenity_Peak",
monkquest=25,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31838) and level >= 25 end,
condition_end=function() return completedq(31838) end,
description="\nThis guide will walk you through the Monk quest at level 25.",
},[[
step
Upon reaching level 25 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31860
|only if not completedq(31838)
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31860 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Tsang##31838 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Tsang##66149
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Tsang##66149
Complete Master Tsang's Training |q 31838/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Continue Your Training: Master Tsang##31838 |goto 48.6,42.7
accept Practice Makes Perfect: Master Tsang##31845 |goto 48.6,42.7
step
talk Master Tsang##66149
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Tsang##66149
Complete Master Tsang's Training |q 31845/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Tsang##31845 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 30",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Serenity_Peak",
monkquest=30,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31861) and level >= 30 end,
condition_end=function() return completedq(31861) end,
description="\nThis guide will walk you through the Monk quest at level 30.",
},[[
step
Upon reaching level 30 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Continue Your Training##31861
|only if not completedq(31839)
step
talk Master Hight##66260
turnin The Peak of Serenity - Continue Your Training##31861 |goto Kun-Lai Summit 48.6,42.7
accept Continue Your Training: Master Hsu##31839 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Hsu##65977
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Hsu##65977
Complete Master Hsu's Training |q 31839/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Continue Your Training: Master Hsu##31839 |goto 48.6,42.7
accept Practice Makes Perfect: Master Hsu##31846 |goto 48.6,42.7
step
talk Master Hsu##65977
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Hsu##65977
Complete Master Hsu's Training |q 31846/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Practice Makes Perfect: Master Hsu##31846 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 35",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Serenity_Peak",
monkquest=35,
condition_valid=function() return raceclass('Monk') end,
condition_valid_msg="Monk only.",
condition_suggested=function() return raceclass('Monk') and not completedq(31844) and level >= 35 end,
condition_end=function() return completedq(31844) end,
description="\nThis guide will walk you through the Monk quest at level 35.",
},[[
step
Upon reaching level 35 as a Monk, you will automatically accept a class quest:
accept The Peak of Serenity - Complete Your Training##31889
|only if not completedq(31844)
step
talk Master Hight##66260
turnin The Peak of Serenity - Complete Your Training##31889 |goto Kun-Lai Summit 48.6,42.7
accept Complete Your Training: The Final Test##31844 |goto Kun-Lai Summit 48.6,42.7
step
talk Master Hight##66260
Tell him you wish to challenge him
Follow him to the center of the area and fight him
kill Master Hight##66260
Complete Master Hight's Training |q 31844/1 |goto 47.1,40.1
step
talk Master Hight##66260
turnin Complete Your Training: The Final Test##31844 |goto 48.6,42.7
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\The Loremaster\\Loremaster of Pandaria",{
achieveid={6541},
patch='50004',
description="\nComplete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Pandaria Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Jade Forest Quests |achieve 6300 |loadguide "Leveling Guides\\Pandaria (10-60)\\The Jade Forest (10-60)"
Valley of the Four Winds Quests |achieve 6301 |loadguide "Leveling Guides\\Pandaria (10-60)\\Valley of the Four Winds (15-60)"
Townlong Steppes Quests |achieve 6539 |loadguide "Leveling Guides\\Pandaria (10-60)\\Townlong Steppes (25-60)"
Dread Wastes Quests |achieve 6540 |loadguide "Leveling Guides\\Pandaria (10-60)\\Dread Wastes (30-60)"
Krasarang Wilds Quests |achieve 6535 |loadguide "Leveling Guides\\Pandaria (10-60)\\Krasarang Wilds (15-60)"
Kun-Lai Summit Quests |achieve 6537 |loadguide "Leveling Guides\\Pandaria (10-60)\\Kun-Lai Summit (20-60)"
step
Congratulations, you have _earned_ the _Loremaster of Pandaria_ achievement!
]])
