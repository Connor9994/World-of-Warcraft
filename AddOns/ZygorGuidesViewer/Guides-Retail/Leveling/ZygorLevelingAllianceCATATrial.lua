local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingACATA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Death Knight Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Death Knight 55-58",
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="Death Knight only.",
condition_suggested=function() return (raceclass('DeathKnight') and not completedq(13188)) end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(13188) end,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=8,
endlevel=50
},[[
step
talk The Lich King##25462
accept In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.18
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin In Service Of The Lich King##12593 |goto 48,28.5
accept The Emblazoned Runeblade##12619 |goto 48,28.5
step
click Battle-worn Sword##190584
collect Battle-worn Sword##38607 |c |goto 47.4,31 |q 12619
step
use the Battle-worn Sword##38607
|tip Use it next to the Runeforge.
collect Runebladed Sword##38631 |q 12619/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Emblazoned Runeblade##12619 |goto 48,28.5
accept Runeforging: Preparation For Battle##12842 |goto 48,28.5
step
Use the Runeforging ability near the Runeforge |cast Runeforging##53428
|tip Open your character's equipment window and engrave your weapon with a rune.
Emblazon Your Weapon |q 12842/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin Runeforging: Preparation For Battle##12842 |goto 48,28.5
accept The Endless Hunger##12848 |goto 48,28.5
step
click Acherus Soul Prison##8115
|tip They look like horned skulls on the wall, chaining the prisoners around this area.
Watch the dialogue
kill Unworthy Initiate##29565
Dominate an Unworthy Initiate |q 12848/1 |goto 48.50,28.98
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Endless Hunger##12848 |goto 48,28.5
accept The Eye Of Acherus##12636 |goto 48,28.5
step
Follow the path |goto 49.81,31.94 < 20 |walk
talk The Lich King##25462
turnin The Eye Of Acherus##12636 |goto 51.34,35.18
accept Death Comes From On High##12641 |goto 51.34,35.18
step
click Eye of Acherus Control Mechanism##191609
Take Control of the Eye of Acherus |havebuff The Eye of Acherus |goto 52.13,35.21 |q 12641
step
_Go Northeast:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the blacksmith building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Forge |q 12641/1
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the big fort building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Scarlet Hold |q 12641/3
step
_Go West:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the town hall building with a clock tower, with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Town Hall |q 12641/2
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the small church building with a floating red arrow above it.
Use the Siphon of Acherus ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Chapel of the Crimson Flame |q 12641/4
step
Use the Recall Eye of Acherus ability |petaction 5
Click Here After You Return to Ebon Hold |confirm |c |q 12641
step
talk The Lich King##25462
turnin Death Comes From On High##12641 |goto 51.34,35.18
accept The Might Of The Scourge##12657 |goto 51.34,35.18
step
Walk onto the teleport pad |goto 50.49,33.37 |n
Teleport Upstairs |goto 50.13,32.49 < 10 |noway |c |q 12657
step
talk Highlord Darion Mograine##28444
turnin The Might Of The Scourge##12657 |goto 48.88,29.76
accept Report To Scourge Commander Thalanor##12850 |goto 48.88,29.76
step
talk Lord Thorval##28472
accept The Power Of Blood, Frost And Unholy##12849 |goto 47.48,26.56
step
talk Scourge Commander Thalanor##28510
|tip He walks around this area.
turnin Report To Scourge Commander Thalanor##12850 |goto 50.70,35.09
accept The Scarlet Harvest##12670 |goto 50.70,35.09
step
clicknpc Scourge Gryphon##29488 |goto 50.96,36.15
Arrive at Death's Breach |goto 53.2,31.1 < 20 |noway |c |q 12670
step
talk Prince Valanar##28377
turnin The Scarlet Harvest##12670 |goto 52.28,33.96
accept If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.28,33.96
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
accept Grand Theft Palomino##12680 |goto 52.5,34.6
step
talk Olrun the Battlecaller##29047
|tip She flies around this small area.
accept Death's Challenge##12733 |goto 54.63,33.95
step
talk Death Knight Initiate##28406
|tip They are all around this area.
Tell them _"I challenge you, death knight!"_
kill Death Knight Initiate##28392+
Defeat #5# Death Knights in a Duel |q 12733/1 |goto 53.48,33.15
step
talk Olrun the Battlecaller##29047
|tip She flies around this small area.
turnin Death's Challenge##12733 |goto 54.63,33.95
step
talk Orithos the Sky Darkener##28647
|tip He paces around this area.
accept Tonight We Dine In Havenshire##12679 |goto 53.2,36.9
stickystart "Slay_Scarlet_Crusaders"
stickystart "Citizens_Of_Havenshire"
step
Follow the path down |goto 50.66,38.32 < 20 |only if walking
Follow the path down |goto 52.21,43.78 < 15 |only if walking
click Abandoned Mail##190917
|tip It looks like a roll of parchment on top of the mailbox.
accept Abandoned Mail##12711 |goto 55.26,46.15
step
label "Slay_Scarlet_Crusaders"
Kill Scarlet enemies around this area
Slay #10# Scarlet Crusaders |q 12678/1 |goto 52.2,45.9
stickystart "Saronite_Arrows"
step
label "Citizens_Of_Havenshire"
kill 10 Citizen of Havenshire##28660 |q 12678/2 |goto 56.4,45
step
label "Saronite_Arrows"
click Saronite Arrow##190691
|tip They look like yellow and green arrows stuck in the ground around this area.
collect 15 Saronite Arrow##39160 |q 12679/1 |goto 56.2,49.4
step
click Havenshire Horse
|tip They are all around this area.
|tip Watch out for Stable Master Kitrik, he's elite and will pull you off the horse.
Ride the Havenshire Horse |invehicle |goto 55.74,43.39 |c |q 12680
step
Follow the path up |goto 53.05,43.28 < 20 |only if walking
Continue up the path |goto 50.61,40.72 < 20 |only if walking
Follow the path |goto 50.92,36.79 < 20 |only if walking
Use the Deliver Stolen Horse ability next to Salanar the Horseman
|tip He walks back and forth along this path.
Successfully Steal the Horse |goto 52.8,34.1 |q 12680/1
step
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Grand Theft Palomino##12680 |goto 52.5,34.6
accept Into the Realm of Shadows##12687 |goto 52.5,34.6
step
Follow the path down |goto 50.66,38.32 < 20 |only if walking
Follow the path down |goto 52.21,43.78 < 30 |only if walking
kill Dark Rider of Acherus##28768
|tip They ride around on horses around this area.
clicknpc Acherus Deathcharger##28302
|tip It's the horse they were riding on before you killed them.
Click Here After You Steal an Acherus Deathcharger |confirm |c |goto 55.6,43.2 |q 12687
step
Follow the path up |goto 53.05,43.28 < 20 |only if walking
Use the Horseman's Call ability
Watch the dialogue
Complete the Horseman's Challenge |q 12687/1 |goto 50.88,41.74
step
Follow the path up |goto 50.61,40.72 < 20 |only if walking
Follow the path |goto 50.92,36.79 < 20 |only if walking
talk Salanar the Horseman##28653
|tip He walks back and forth along this path.
turnin Into the Realm of Shadows##12687 |goto 52.5,34.6
step
talk Prince Valanar##28377
turnin If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.3,34
step
talk Orithos the Sky Darkener##28647
|tip He paces around this area.
turnin Tonight We Dine In Havenshire##12679 |goto 53.2,36.9
step
talk Prince Valanar##28377
accept Gothik the Harvester##12697 |goto 52.3,34
step
talk Gothik the Harvester##28658
turnin Gothik the Harvester##12697 |goto 54.07,35.03
accept The Gift That Keeps On Giving##12698 |goto 54.07,35.03
step
Follow the path down |goto 54.94,31.35 < 20 |only if walking
use the Gift of the Harvester##39253
|tip Use it on Scarlet Miners.
|tip They appear at the entrance of the mine.
|tip Some will turn into Scarlet Ghosts and attack you.
|tip It has a pretty low success rate, just keep trying.
Click Here When 5 Scarlet Ghouls Are Following You |confirm |c |goto 58.18,31.01 |q 12698
|tip The ghouls that count for the quest are more brown in color and have yellow circles around their feet.
step
Follow the path up |goto 57.03,31.24 < 20 |only if walking
Follow the path |goto 54.69,31.79 < 20 |only if walking
Return #5# Scarlet Ghouls |q 12698/1 |goto 54.07,35.03
step
talk Gothik the Harvester##28658
turnin The Gift That Keeps On Giving##12698 |goto 54.1,35
accept An Attack Of Opportunity##12700 |goto 54.1,35
step
talk Prince Valanar##28377
turnin An Attack Of Opportunity##12700 |goto 52.3,34
accept Massacre At Light's Point##12701 |goto 52.3,34
step
Follow the path down |goto 54.94,31.35 < 20 |only if walking
Follow the path |goto 57.13,31.39 < 20 |only if walking
Follow the path |goto 58.05,33.31 < 15 |only if walking
Find the Inconspicuous Mine Cart |goto 58.50,33.03 < 15 |c |q 12701
step
click Inconspicuous Mine Car##190767
Ride in the Inconspicuous Mine Cart |goto 58.50,33.03 > 30 |c |q 12701
step
Ride to the Scarlet Fleet Ship |goto 67.80,38.65 < 20 |c |q 12701
step
click Scarlet Cannon##176216
kill Scarlet Fleet Defender##28834+
|tip Use the abilities on your action bar to shoot the soldiers on the beach.
Slay #100# Scarlet Defenders |q 12701/1 |goto 67.73,39.01
step
Escape to Death's Breach |goto 52.57,34.45 < 10 |noway |c |q 12701
|tip Use the "Skeletal Gryphon Escape" ability on your action bar.
step
talk Prince Valanar##28377
turnin Massacre At Light's Point##12701 |goto 52.3,34
accept Victory At Death's Breach!##12706 |goto 52.3,34
step
clicknpc Scourge Gryphon##29501 |goto 53.09,32.48
Fly Up to Archerus |goto 51.09,34.63 < 10 |noway |c |q 12706
step
talk Highlord Darion Mograine##28444
turnin Victory At Death's Breach!##12706 |goto 48.87,29.76
accept The Will Of The Lich King##12714 |goto 48.87,29.76
step
clicknpc Scourge Gryphon##29488 |goto 50.96,36.15
Arrive at Death's Breach |goto 53.19,31.15 < 10 |noway |c |q 12714
step
talk Prince Valanar##28907
turnin The Will Of The Lich King##12714 |goto 53.47,36.55
accept The Crypt of Remembrance##12715 |goto 53.47,36.55
step
Follow the path down |goto 50.75,38.22 < 20 |only if walking
Continue down the path |goto 50.62,40.87 < 20 |only if walking
Follow the path |goto 52.83,45.08 < 20 |only if walking
talk Noth the Plaguebringer##28919
accept The Plaguebringer's Request##12716 |goto 55.9,52.4
step
Enter the crypt |goto 54.3,58.1 < 10 |walk
Run down the stairs |goto 53.60,58.05 < 7 |walk
Continue down the stairs |goto 53.69,57.41 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin The Crypt of Remembrance##12715 |goto 54.30,57.31
accept Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
accept Lambs To The Slaughter##12722 |goto 54.66,57.43
stickystart "Slay_Scarlet_Crusade_Soldiers"
stickystart "Crusader_Skulls"
stickystart "Citizens_Of_New_Avalaon"
step
Run up the stairs |goto 53.96,57.42 < 7 |walk
Continue up the stairs |goto 53.60,57.57 < 7 |walk
Continue up the stairs |goto 53.71,58.15 < 7 |walk
Leave the crypt |goto 54.36,58.15 < 10 |walk
Follow the path up |goto 55.96,59.90 < 20 |only if walking
Enter the building |goto 57.67,64.41 < 10 |walk
click Empty Cauldron##190937
|tip Downstairs inside the building.
collect Empty Cauldron##39324 |q 12716/1 |goto 57.8,61.8
step
Leave the building |goto 57.67,64.41 < 10 |walk
Follow the path |goto 58.48,64.68 < 15 |only if walking
click Iron Chain##190938
|tip Inside the building.
collect Iron Chain##39326 |q 12716/2 |goto 62.05,60.24
step
Follow the path |goto 59.66,61.13 < 20 |only if walking
Follow the path |goto 58.24,65.68 < 20 |only if walking
Run up the stairs |goto 54.23,70.21 < 15 |only if walking
kill Mayor Quimby##28945 |q 12719/1 |goto 52.24,71.17
|tip Inside the building.
step
click New Avalon Registry##190947
collect New Avalon Registry##39362 |q 12719/2 |goto 52.45,71.00
step
label "Slay_Scarlet_Crusade_Soldiers"
Kill Scarlet enemies around this area
Slay #10# Scarlet Crusade Soldiers |q 12722/1 |goto 54.27,70.15
step
label "Crusader_Skulls"
Kill Scarlet enemies around this area
kill Citizen of New Avalon##28942+
|tip Usually inside the buildings around this area.
collect 10 Crusader Skull##39328 |q 12716/3 |goto 54.27,70.15
step
label "Citizens_Of_New_Avalaon"
kill 15 Citizen of New Avalon##28942 |q 12722/2 |goto 54.27,70.15
|tip Usually inside the buildings around this area.
step
Follow the path down |goto 56.04,61.53 < 20 |only if walking
Enter the crypt |goto 54.3,58.1 < 10 |walk
Run down the stairs |goto 53.60,58.05 < 7 |walk
Continue down the stairs |goto 53.69,57.41 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
accept How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
turnin Lambs To The Slaughter##12722 |goto 54.66,57.43
step
Run up the stairs |goto 53.96,57.42 < 7 |walk
Continue up the stairs |goto 53.60,57.57 < 7 |walk
Continue up the stairs |goto 53.71,58.15 < 7 |walk
Leave the crypt |goto 54.36,58.15 < 10 |walk
talk Noth the Plaguebringer##28919
turnin The Plaguebringer's Request##12716 |goto 55.9,52.4
accept Noth's Special Brew##12717 |goto 55.9,52.4
step
click Plague Cauldron##190936
turnin Noth's Special Brew##12717 |goto 56.15,51.98
step
use Ornate Jeweled Box##39418
collect Keleseth's Persuader##39371 |q 12720 |only if Frost
collect Keleseth's Persuader##142274 |q 12720 |only if Blood or Unholy
step
Equip Keleseth's Persuaders |equipped Keleseth's Persuader##39371 |q 12720 |only if Frost
Equip Keleseth's Persuader |equipped Keleseth's Persuader##142274 |q 12720 |only if Blood or Unholy
|tip Equip the two Keleseth's Persuaders in your bag. |only if Frost
|tip Equip the Keleseth's Persuader in your bag. |only if Blood or Unholy
step
Follow the path up |goto 55.96,59.90 < 20 |only if walking
Kill Scarlet enemies around this area
|tip Try not to kill them too fast, and stop attacking them when they start talking.
|tip Eventually one of the enemies will give you information.
Reveal the "Crimson Dawn" |q 12720/1 |goto 55.8,65.8
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |c |q 12720
step
Follow the path down |goto 56.04,61.53 < 20 |only if walking
Enter the crypt |goto 54.3,58.1 < 10 |walk
Run down the stairs |goto 53.60,58.05 < 7 |walk
Continue down the stairs |goto 53.69,57.41 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
accept Behind Scarlet Lines##12723 |goto 54.30,57.31
step
Run up the stairs |goto 53.96,57.42 < 7 |walk
Continue up the stairs |goto 53.60,57.57 < 7 |walk
Continue up the stairs |goto 53.71,58.15 < 7 |walk
Leave the crypt |goto 54.36,58.15 < 10 |walk
Follow the path up |goto 55.96,59.90 < 20 |only if walking
Continue following the path |goto 56.29,68.44 < 20 |only if walking
Follow the path |goto 57.12,75.46 < 20 |only if walking
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Behind Scarlet Lines##12723 |goto 56.26,79.84
accept The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
accept Brothers In Death##12725 |goto 56.27,80.15
step
Follow the path |goto 57.00,77.83 < 20 |only if walking
Enter the building |goto 61.10,68.06 < 15 |walk
Follow the path |goto 62.22,68.69 < 10 |walk
Follow the path |goto 62.40,69.32 < 10 |walk
Run down the stairs |goto 62.77,68.63 < 7 |walk
talk Koltira Deathweaver##28912
|tip Downstairs in the building.
turnin Brothers In Death##12725 |goto 62.96,67.85
accept Bloody Breakout##12727 |goto 62.96,67.85
step
Kill the enemies that attack in waves
kill High Inquisitor Valroth##29001
|tip Stay inside the bubble Koltira Deathweaver forms.
|tip It reduces spell damage done to you, so you'll live.
click High Inquisitor Valroth's Remains##191092
|tip It will be wherever you ended up killing High Inquisitor Valroth.
collect Valroth's Head##39510 |q 12727/1 |goto 62.91,68.10
step
click New Avalon Patrol Schedule##191084
|tip It looks like a thick book sitting on a long table upstairs in a big open room in the fort.
collect New Avalon Patrol Schedule##39504|q 12724/1 |goto 63.0,68.3
step
Leave the building |goto 61.08,68.08 < 15 |walk
Follow the path up |goto 58.70,71.30 < 20 |only if walking
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin Bloody Breakout##12727 |goto 56.27,80.15
accept A Cry For Vengeance!##12738 |goto 56.27,80.15
step
Follow the path |goto 52.66,80.93 < 15 |only if walking
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Cry For Vengeance!##12738 |goto 52.9,81.5
accept A Special Surprise##12742 |goto 52.9,81.5 |only Human
accept A Special Surprise##12743 |goto 52.9,81.5 |only NightElf
accept A Special Surprise##12744 |goto 52.9,81.5 |only Dwarf
accept A Special Surprise##12745 |goto 52.9,81.5 |only Gnome
accept A Special Surprise##12746 |goto 52.9,81.5 |only Draenei
accept A Special Surprise##28649 |goto 52.9,81.5 |only Worgen
accept A Special Surprise##12739 |goto 52.9,81.5 |only Tauren
accept A Special Surprise##12747 |goto 52.9,81.5 |only BloodElf
accept A Special Surprise##12748 |goto 52.9,81.5 |only Orc
accept A Special Surprise##12749 |goto 52.9,81.5 |only Troll
accept A Special Surprise##12750 |goto 52.9,81.5 |only Scourge
accept A Special Surprise##28650 |goto 52.9,81.5 |only Goblin
step
Watch the dialogue
kill Valok the Righteous##29070 |q 12746/1 |goto 54.5,83.4
|tip Inside the building.
|only Draenei
step
Watch the dialogue
kill Yazmina Oakenthorn##29065 |q 12743/1 |goto 54.2,83.9
|tip Inside the building.
|only NightElf
step
Watch the dialogue
kill Goby Blastenheimer##29068 |q 12745/1 |goto 53.9,83.8
|tip Inside the building.
|only Gnome
step
Watch the dialogue
kill Ellen Stanbridge##29061 |q 12742/1 |goto 53.5,83.8
|tip Inside the building.
|only Human
step
Watch the dialogue
kill Donovan Pulfrost##29067 |q 12744/1 |goto 54,83.3
|tip Inside the building.
|only Dwarf
step
Watch the dialogue
kill Lord Harford##49355 |q 28649/1 |goto 54.14,83.29
|tip Inside the building.
|only Worgen
step
Watch the dialogue
kill Malar Bravehorn##29032 |q 12739/1 |goto 54.50,83.85
|tip Inside the building.
|only Tauren
step
Watch the dialogue
kill Lady Eonys##29074 |q 12747/1 |goto 54.28,83.31
|tip Inside the building.
|only BloodElf
step
Watch the dialogue
kill Kug Ironjaw##29072 |q 12748/1 |goto 53.77,83.27
|tip Inside the building.
|only Orc
step
Watch the dialogue
kill Iggy Darktusk##29073 |q 12749/1 |goto 53.80,83.75
|tip Inside the building.
|only Troll
step
Watch the dialogue
kill Antoine Brack##29071 |q 12750/1 |goto 53.54,83.30
|tip Inside the building.
|only Scourge
step
Watch the dialogue
kill Gally Lumpstain##49356 |q 28650/1 |goto 54.11,83.77
|tip Inside the building.
|only Goblin
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Special Surprise##12742 |goto 52.9,81.5 |only Human
turnin A Special Surprise##12743 |goto 52.9,81.5 |only NightElf
turnin A Special Surprise##12744 |goto 52.9,81.5 |only Dwarf
turnin A Special Surprise##12745 |goto 52.9,81.5 |only Gnome
turnin A Special Surprise##12746 |goto 52.9,81.5 |only Draenei
turnin A Special Surprise##28649 |goto 52.9,81.5 |only Worgen
turnin A Special Surprise##12739 |goto 52.9,81.5 |only Tauren
turnin A Special Surprise##12747 |goto 52.9,81.5 |only BloodElf
turnin A Special Surprise##12748 |goto 52.9,81.5 |only Orc
turnin A Special Surprise##12749 |goto 52.9,81.5 |only Troll
turnin A Special Surprise##12750 |goto 52.9,81.5 |only Scourge
turnin A Special Surprise##28650 |goto 52.9,81.5 |only Goblin
accept A Sort Of Homecoming##12751 |goto 52.9,81.5
step
Follow the path |goto 52.72,80.46 < 15 |only if walking
talk Thassarian##28913
|tip Upstairs inside the building.
turnin A Sort Of Homecoming##12751 |goto 56.27,80.15
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
accept Ambush At The Overlook##12754 |goto 56.26,79.84
step
use the Makeshift Cover##39645
kill Scarlet Courier##29076
collect Scarlet Courier's Belongings##39646 |q 12754/1 |goto 59.97,78.57
collect Scarlet Courier's Message##39647 |q 12754/2 |goto 59.97,78.57
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Ambush At The Overlook##12754 |goto 56.26,79.84
accept A Meeting With Fate##12755 |goto 56.26,79.84
step
Follow the path down |goto 60.13,76.98 < 15 |only if walking
Follow the path down |goto 60.47,80.43 < 20 |only if walking
Follow the path |goto 62.90,85.29 < 20 |only if walking
talk High General Abbendis##29077
turnin A Meeting With Fate##12755 |goto 65.65,83.82
accept The Scarlet Onslaught Emerges##12756 |goto 65.65,83.82
step
Follow the path up |goto 63.40,85.39 < 20 |only if walking
Continue up the path |goto 61.76,83.29 < 20 |only if walking
Continue up the path |goto 60.55,79.94 < 20 |only if walking
Follow the path up |goto 60.30,77.04 < 15 |only if walking
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Scarlet Onslaught Emerges##12756 |goto 56.26,79.84
accept Scarlet Armies Approach...##12757 |goto 56.26,79.84
step
click Portal to Acherus##8046 |goto 56.18,80.04 |n
Teleport to Acherus |goto 50.2,32.6 < 20 |noway |c |q 12757
step
talk Highlord Darion Mograine##28444
turnin Scarlet Armies Approach...##12757 |goto 48.89,29.77
accept The Scarlet Apocalypse##12778 |goto 48.89,29.77
step
clicknpc Scourge Gryphon##29488 |goto 52.08,35.03 |n
Arrive at Death's Breach |goto 53.2,31.1 < 20 |noway |c |q 12778
step
Run up the ramp |goto 53.31,36.37 < 10 |only if walking
talk The Lich King##29110
turnin The Scarlet Apocalypse##12778 |goto 53.57,36.85
accept An End To All Things...##12779 |goto 53.57,36.85
step
use the Horn of the Frostbrood##39700
Summon a Dragon to Ride |invehicle |c |q 12779
stickystart "Destroy_Scarlet_Ballistas"
step
kill 150 Scarlet Soldier##4286 |q 12779/1 |goto 55.8,61
|tip Use the abilities on your action bar.
step
label "Destroy_Scarlet_Ballistas"
Destroy #10# Scarlet Ballistas |q 12779/2 |goto 55.8,61
|tip They look like big wooden crossbow machines around this area.
|tip Use the abilities on your action bar.
step
Return to Death's Breach |goto 52.47,37.18 < 20 |c |q 12779
|tip Don't click the red arrow to stop controlling the Frostbrood Vanquisher yet.
step
Stop Controlling the Frostbrood Vanquisher |outvehicle |c |goto 52.53,37.39 |q 12779
|tip Click the red arrow on your action bar.
step
Run up the ramp |goto 53.31,36.37 < 10 |only if walking
talk The Lich King##29110
turnin An End To All Things...##12779 |goto 53.57,36.85
accept The Lich King's Command##12800 |goto 53.57,36.85
step
Follow the path |goto 50.16,31.36 < 20 |only if walking
Enter the tunnel |goto 49.13,28.43 < 15 |only if walking
Leave the tunnel |goto 47.35,24.82 < 15 |only if walking
Follow the path |goto 46.77,22.04 < 15 |only if walking
Follow the path down |goto 40.02,19.25 < 15 |only if walking
Follow the path |goto 36.04,24.04 < 20 |only if walking
talk Scourge Commander Thalanor##31082
|tip He paces back and forth.
turnin The Lich King's Command##12800 |goto 33.99,30.36
accept The Light of Dawn##12801 |goto 33.99,30.36
step
talk Highlord Darion Mograine##29173
|tip If he's not here, then the battle has already started.
|tip You may be able to join the battle.  Skip to the next step, try to do it, and see if it works.
|tip If you're unable to join the battle, skip back to this step and wait for Highlord Darion Mograine to respawn.
Tell him _"I am ready, Highlord.  Let the siege of Light's Hope begin!"_
|tip If he's here, but you can't choose this dialogue, that just means someone else already did it.
|tip Now you just need to wait for the battle to start.
|tip The battle starts 5 minutes after someone initiates this dialogue with him.
Click Here When the Battle Begins |confirm |c |goto 34.44,31.10 |q 12801
step
Kill enemies around this area
|tip Follow your allies into battle.
Watch the dialogue
Uncover The Light of Dawn |q 12801/1 |goto 38.79,38.34
step
talk Highlord Darion Mograine##29173
turnin The Light of Dawn##12801 |goto 39.11,39.16
accept Taking Back Acherus##13165 |goto 39.11,39.16
step
Use your Death Gate spell |cast Death Gate##50977
|tip Click the purple Death Gate portal that appears nearby.
Travel to Ebon Hold |goto Eastern Plaguelands/0 83.7,50.0 < 20 |noway |c |q 13165
step
talk Highlord Darion Mograine##29173
turnin Taking Back Acherus##13165 |goto 83.44,49.46
accept The Battle For The Ebon Hold##13166 |goto 83.44,49.46
step
Walk onto the teleport pad |goto 83.19,48.90 |n
Teleport Downstairs |goto 82.68,47.79 < 10 |noway |c |q 13166
step
Kill enemies around this area
Slay #10# Scourge |q 13166/2 |goto 81.99,46.37
step
kill Patchwerk##31099 |q 13166/1 |goto 81.99,46.37
step
Walk onto the teleport pad |goto 83.28,49.12 |n
Teleport Upstairs |goto 83.28,49.12 < 5 |noway |c |q 13166
step
talk Highlord Darion Mograine##31084
turnin The Battle For The Ebon Hold##13166 |goto 83.44,49.46
accept Where Kings Walk##13188 |goto 83.44,49.46
step
clicknpc Portal to Stormwind##103186 |goto 83.65,51.34
Teleport to Stormwind City |goto Elwynn Forest/0 33.4,52 < 1000 |noway |c |q 13188
step
Enter the building |goto Stormwind City/0 80.60,37.89 < 15 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin Where Kings Walk##13188 |goto Stormwind City/0 85.8,31.7
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Draenei Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Azuremyst",
condition_valid=function() return raceclass('Draenei') end,
condition_valid_msg="Draenei only.",
condition_suggested=function() return raceclass('Draenei') and level <= 5 and not completedq(9312) and not raceclass("DeathKnight") and not ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-60)\\Kalimdor\\Azuremyst Isle (1-60)",
startlevel=1,
endlevel=50
},[[
step
talk Megelon##16475 |goto Ammen Vale/0 61.2,29.5
accept You Survived!##9279
|only if Draenei
step
talk Proenitus##16477
turnin You Survived!##9279 |only Draenei |goto 52.8,35.9
accept Replenishing the Healing Crystals##9280 |only if Draenei |goto 52.8,35.9
accept Replenishing the Healing Crystals##9369 |only if not Draenei |goto 52.8,35.9
step
kill Vale Moth##16520+
collect 6 Vial of Moth Blood##22889 |q 9280/1 |only if Draenei |goto 50.9,28.8
collect 6 Vial of Moth Blood##22899 |q 9369/1 |only if not Draenei |goto 50.9,28.8
step
talk Proenitus##16477
turnin Replenishing the Healing Crystals##9280 |only if Draenei |goto 52.8,35.9
accept Urgent Delivery!##9409 |only Draenei |goto 52.8,35.9
turnin Replenishing the Healing Crystals##9369 |only if not Draenei |goto 52.8,35.9
accept Urgent Delivery!##9409 |only if not Draenei |goto 52.8,35.9
step
talk Zalduun##16502
|tip He walks around inside the building.
turnin Urgent Delivery!##9409 |only if Draenei |goto 51.71,42.12
accept Rescue the Survivors!##9283 |only if Draenei |goto 51.71,42.12
accept Learning the Word##26970 |only if Draenei Priest |goto 51.71,42.12
turnin Urgent Delivery!##9409 |only if not Draenei |goto 51.71,42.12
step
Leave the building |goto 52.53,37.69 < 10 |walk
talk Proenitus##16477
accept Botanist Taerix##9371 |goto 52.73,35.90
step
talk Botanist Taerix##16514
turnin Botanist Taerix##9371 |goto 49.9,37.4
accept Volatile Mutations##10302 |goto 49.9,37.4
stickystart "Kill_Volatile_Mutations"
step
Cast Gift of the Naaru on a Draenei Survivor |cast Gift of the Naaru##28880
|tip They look like Draenei laying on the ground around this area.
Save a Draenei Survivor |q 9283/1 |goto 48.3,30.4
|only if haveq(9283)
step
label "Kill_Volatile_Mutations"
kill 8 Volatile Mutation##16516 |q 10302/1 |goto 48.3,30.4
step
talk Botanist Taerix##16514
turnin Volatile Mutations##10302 |goto 49.9,37.4
accept What Must Be Done...##9293 |goto 49.9,37.4
step
talk Apprentice Vishael##20233
accept Botanical Legwork##9799 |goto 49.7,37.5
step
talk Zalduun##16502
|tip He walks around inside the building.
turnin Rescue the Survivors!##9283 |goto 51.71,42.12
|only if Draenei
step
talk Technician Zhanaa##17071
|tip Outside the building.
accept Spare Parts##37445 |goto 50.5,47.9
step
talk Vindicator Aldar##16535 |goto 50.6,48.7
accept Inoculation##37444
stickystart "Corrupted_Flowers"
step
kill Mutated Root Lasher##16517+
collect 10 Lasher Sample##22934 |q 9293/1 |goto 36.6,48.5
step
label "Corrupted_Flowers"
click Corrupted Flower##182127
|tip They look like flowers with red petals around this area.
collect 3 Corrupted Flower##24416 |q 9799/1 |goto 36.6,48.5
step
Follow the path up |goto 43.55,40.34 < 20 |only if walking
Follow the path |goto 45.82,42.29 < 20 |only if walking
talk Apprentice Vishael##20233
turnin Botanical Legwork##9799 |goto 49.7,37.5
step
talk Botanist Taerix##16514
turnin What Must Be Done...##9293 |goto 49.9,37.4
accept Healing the Lake##9294 |goto 49.9,37.4
step
Follow the path |goto 47.35,40.79 < 20 |only if walking
Jump down here |goto 47.28,49.40 < 20 |only if walking
Follow the path |goto 45.67,59.65 < 20 |only if walking
use the Neutralizing Agent##22955
|tip Use it next to the giant pink crystal in the water.
Disperse the Neutralizing Agent |q 9294/1 |goto 45.5,64.7
stickystart "Inoculate_Nestlewood_Owlkins"
step
Follow the path |goto 48.85,63.98 < 15 |only if walking
Follow the path up |goto 54.34,65.32 < 15 |only if walking
Continue up the path |goto 56.96,66.83 < 15 |only if walking
Follow the path |goto 58.06,69.60 < 15 |only if walking
Enter the tunnel |goto 58.48,71.19 < 15 |only if walking
Leave the tunnel |goto 61.14,78.24 < 15 |only if walking
click Emitter Spare Part##181283
|tip They look like pink crystals with gold parts spinning around them on the ground around this area.
collect 4 Emitter Spare Part##22978 |q 37445/1 |goto 62.71,80.74
step
label "Inoculate_Nestlewood_Owlkins"
use the Inoculating Crystal##22962
|tip Use it on Nestlewood Owlkins.
|tip They look like yellow owlkins around this area.
Inoculate #6# Nestlewood Owlkins |q 37444/1 |goto 62.71,80.74
step
Enter the tunnel |goto 61.12,78.22 < 15 |only if walking
Leave the tunnel |goto 58.33,70.90 < 15 |only if walking
Follow the path down |goto 57.97,69.36 < 15 |only if walking
Continue down the path |goto 56.68,66.62 < 15 |only if walking
Follow the path |goto 53.85,64.92 < 20 |only if walking
Follow the path |goto 47.37,59.24 < 20 |only if walking
Continue following the path |goto 45.29,50.84 < 20 |only if walking
Continue following the path |goto 42.63,44.33 < 20 |only if walking
Follow the path up |goto 43.70,40.38 < 20 |only if walking
Follow the path |goto 45.99,42.01 < 20 |c |q 9294
|only if not Draenei
step
talk Botanist Taerix##16514
turnin Healing the Lake##9294 |goto 49.9,37.4
accept Vindicator Aldar##10304 |goto 49.9,37.4
step
Follow the path |goto 47.11,42.00 < 20 |only if walking
Follow the path |goto 48.63,47.38 < 20 |only if walking
talk Technician Zhanaa##17071
turnin Spare Parts##37445 |goto 50.50,47.86
step
talk Vindicator Aldar##16535
turnin Vindicator Aldar##10304 |goto 50.6,48.7
turnin Inoculation##37444 |goto 50.6,48.7
accept The Missing Scout##9309 |goto 50.6,48.7
step
Follow the path |goto 48.30,52.47 < 20 |only if walking
Continue following the path |goto 37.25,60.85 < 20 |only if walking
talk Tolaan##16546
turnin The Missing Scout##9309 |goto 33.9,69.3
accept The Blood Elves##10303 |goto 33.9,69.3
step
Follow the path |goto 31.80,69.89 < 20 |only if walking
Follow the path up |goto 28.41,73.22 < 15 |only if walking
kill 10 Blood Elf Scout##16521 |q 10303/1 |goto 26.79,75.87
step
Follow the path |goto 31.37,70.02 < 20 |only if walking
talk Tolaan##16546
turnin The Blood Elves##10303 |goto 33.9,69.3
accept Blood Elf Spy##9311 |goto 33.9,69.3
step
Follow the path |goto 31.80,69.89 < 20 |only if walking
Follow the path up |goto 28.41,73.22 < 15 |only if walking
Follow the path up |goto 26.51,77.25 < 15 |only if walking
kill Surveyor Candress##16522 |q 9311/1 |goto 27.8,80.4
|tip You will automatically accept a quest after looting her.
accept Blood Elf Plans##9798 |goto 27.8,80.4
step
Follow the path down |goto 26.67,78.47 < 15 |only if walking
Follow the path down |goto 26.96,74.73 < 15 |only if walking
Follow the path |goto 29.77,71.82 < 20 |only if walking
Continue following the path |goto 34.32,64.22 < 20 |only if walking
Continue following the path |goto 42.16,56.27 < 20 |only if walking
Follow the path up |goto 48.71,51.79 < 20 |only if walking
talk Vindicator Aldar##16535
turnin Blood Elf Spy##9311 |goto 50.6,48.7
turnin Blood Elf Plans##9798 |goto 50.6,48.7
accept The Emitter##9312 |goto 50.6,48.7
step
talk Technician Zhanaa##17071
turnin The Emitter##9312 |goto 50.50,47.85
accept Travel to Azure Watch##9313 |goto 50.50,47.85
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Dwarf Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Dun Morogh",
condition_valid=function() return raceclass('Dwarf') end,
condition_valid_msg="Dwarf only.",
condition_suggested=function() return raceclass('Dwarf') and level <= 5 and not completedq(24493) and not raceclass("DeathKnight") and not ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Dun Morogh (1-60)",
startlevel=1,
endlevel=50
},[[
step
talk Joren Ironstock##37081
accept Hold the Line!##24469 |goto Coldridge Valley 67.1,41.3
step
kill 6 Rockjaw Invader##37070 |q 24469/1 |goto 63.6,50.7
step
talk Joren Ironstock##37081
turnin Hold the Line!##24469 |goto 67.1,41.3
accept Give 'em What-For##24470 |goto 67.1,41.3
step
talk Sten Stoutarm##658
|tip He paces back and forth.
accept Aid for the Wounded##24471 |goto 65.55,41.99
stickystart "Rockjaw_Goons"
step
use Sten's First Aid Kit##49743
|tip Use it on Wounded Coldridge Mountaineers.
|tip They look like dwarves kneeling in the snow around this area.
Aid #4# Wounded Coldridge Mountaineers |q 24471/1 |goto 69.3,55.2
step
label "Rockjaw_Goons"
kill 3 Rockjaw Goon##37073 |q 24470/1 |goto 63.29,57.04
step
talk Joren Ironstock##37081
turnin Give 'em What-For##24470 |goto 67.1,41.3
step
talk Sten Stoutarm##658
|tip He paces back and forth.
turnin Aid for the Wounded##24471 |goto 65.55,41.99
step
talk Joren Ironstock##37081
accept Lockdown in Anvilmar##24473 |goto 67.1,41.3
step
Enter the building |goto 61.65,31.22 < 15 |walk
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin Lockdown in Anvilmar##24473 |goto 60.6,21.0
accept First Things First: We're Gonna Need Some Beer##24474
step
talk Grundel Harkin##1104
accept Dwarven Artifacts##24477 |goto 61.7,22.1
step
Leave the building |goto 61.71,31.13 < 15 |only if walking
click Keg of Gnomenbrau##201611
collect Cask of Gnomenbrau##49746 |q 24474/3 |goto 68.2,27.9
step
click Keg of Stormhammer Stout##201610
collect Cask of Stormhammer Stout##49744 |q 24474/1 |goto 56.7,28.3
step
click Keg of Theramore Pale Ale##201609
collect Cask of Theramore Pale Ale##49745 |q 24474/2 |goto 39.82,29.36
step
click Forgotten Dwarven Artifacts##201608
|tip They look like stone tablet pieces on the ground around this area.
collect 5 Forgotten Dwarven Artifact##49749 |q 24477/1 |goto 32.11,31.98
step
Enter the building |goto 61.65,31.22 < 15 |walk
talk Grundel Harkin##1104
turnin Dwarven Artifacts##24477 |goto 61.7,22.1
accept Make Hay While the Sun Shine##24486 |goto 61.7,22.1
step
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin First Things First: We're Gonna Need Some Beer##24474 |goto 61.8,22.5
accept All the Other Stuff##24475 |goto 61.8,22.5
stickystart "Raggedyoungwolf"
stickystart "Boarhaunch"
step
Leave the building |goto 61.71,31.13 < 15 |only if walking
kill Rockjaw Scavenger##37105+
collect 5 Priceless Rockjaw Artifact##49751 |q 24486/1 |goto 51.6,47.6
step
label "Raggedyoungwolf"
kill Ragged Young Wolf##705+
collect 4 Ragged Wolf Hide##49748 |q 24475/2 |goto 49.5,57.7
step
label "Boarhaunch"
kill Small Crag Boar##708+
collect 3 Boar Haunch##49747 |q 24475/1 |goto 33.89,65.23
step
Enter the building |goto 61.65,31.22 < 15 |walk
talk Grundel Harkin##1104
turnin Make Hay While the Sun Shine##24486 |goto 61.7,22.1
step
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
turnin All the Other Stuff##24475 |goto 61.8,22.5
accept Whitebeard Needs Ye##24487 |goto 61.8,22.5
step
Leave the building |goto 61.71,31.13 < 15 |only if walking
talk Grelin Whitebeard##786
turnin Whitebeard Needs Ye##24487 |goto 42.7,62.2
accept The Troll Menace##182 |goto 42.7,62.2
step
talk Apprentice Soren##1354
accept Trolling for Information##24489 |goto 43.2,63.1
step
talk Felix Whindlebolt##8416
accept A Refugee's Quandary##3361 |goto 41.9,63.5
stickystart "Frostmane_Troll_Whelps"
step
click Felix's Box##148499
collect Felix Box##10438 |q 3361/1 |goto 21.4,64.1
step
Watch the dialogue
Scout Soothsayer Mirim'koa |q 24489/3 |goto 21.23,66.03
step
click Felix's Chest##178084
collect Felix Chest##16313 |q 3361/2 |goto 30.97,84.02
step
Watch the dialogue
Scout Soothsayer Rikkari |q 24489/2 |goto 30.61,84.75
step
click Felix's Bucket of Bolt##4991
collect Felix's Bucket of Bolts##16314 |q 3361/3 |goto 49.14,80.37
step
Watch the dialogue
Scout Soothsayer Shi'kala |q 24489/1 |goto 49.14,80.37
step
label "Frostmane_Troll_Whelps"
kill 10 Frostmane Troll Whelp##706+ |q 182/1 |goto 49.14,80.37
step
talk Apprentice Soren##1354
turnin Trolling for Information##24489 |goto 43.2,63.1
step
talk Grelin Whitebeard##786
turnin The Troll Menace##182 |goto 42.7,62.2
accept Ice and Fire##218 |goto 42.7,62.2
step
talk Felix Whindlebolt##8416
turnin A Refugee's Quandary##3361 |goto 41.9,63.5
stickystart "Frostmane_Blades"
stickystart "Frostmane_Novices"
step
Enter the cave |goto Coldridge Valley/0 51.55,83.72 |walk
kill Wayward Fire Elemental##37112 |q 218/2 |goto Coldridge Valley/9 66.7,29.2
|tip It paces around on the frozen pond inside the cave.
step
kill Grik'nir the Cold##808 |q 218/1 |goto 76.1,30.8
step
label "Frostmane_Blades"
kill 6 Frostmane Blade##37507 |q 218/4 |goto 76.12,24.16
|tip They are all around this cave.
step
label "Frostmane_Novices"
kill 3 Frostmane Novice##946 |q 218/3 |goto 76.12,24.16
|tip They are all around this cave.
step
Leave the cave |goto Coldridge Valley/0 51.55,83.72 |walk
talk Grelin Whitebeard##786
turnin Ice and Fire##218 |goto Coldridge Valley/0 42.7,62.2
accept A Trip to Ironforge##24490 |goto Coldridge Valley/0 42.7,62.2
step
talk Hands Springsprocket##6782
turnin A Trip to Ironforge##24490 |goto 87.53,44.47
accept Follow that Gyro-Copter!##24491 |goto 87.53,44.47
step
talk Milo Geartwinge##37113
turnin Follow that Gyro-Copter##24491 |goto 69.9,44.21
accept Pack Your Bags##24492 |goto 69.9,44.21
step
Enter the building |goto 61.65,31.22 < 15 |walk
talk Jona Ironstock##37087
|tip She walks around the forge at the center of the room.
accept Don't Forget About Us##24493 |goto 61.8,22.5
step
click Leftover Boar Meat##201704
|tip On the table.
collect Leftover Boar Meat##49756 |q 24492/3 |goto 62.14,23.58
step
click Beer Barrel##201706
collect Coldridge Beer Flagon##49754 |q 24492/1 |goto 62.45,23.47
step
click Wolf-Hide Cloaks##201705
collect Ragged Wolf-Hide Cloak##57541 |q 24492/2 | goto 62.21,23.98
step
Leave the building |goto 61.71,31.13 < 15 |only if walking
talk Milo Geartwinge##37113
turnin Pack Your Bags##24492 |goto 69.9,44.21
step
Fly to Kharanos |goto Dun Morogh/0 53.3,49.8 < 50 |noway |c |q 24493
step
talk Tharek Blackstone##1872
turnin Don't Forget About Us##24493 |goto Dun Morogh/0 53.1,50.0
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Gnome Starter",{
author="support@zygorguides.com",
condition_valid=function() return raceclass('Gnome') end,
condition_valid_msg="Gnome only.",
condition_suggested=function() return raceclass('Gnome') and level <= 5 and not completedq(26364) and not raceclass("DeathKnight") and not ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Dun Morogh (1-60)",
startlevel=1,
endlevel=5
},[[
step
next "normalstart" |only Gnome
next "oddstart" |only if not Gnome
step
label "normalstart"
talk Nevin Twistwrench##45966
accept Pinned Down##27670 |goto Dun Morogh/10 34.0,32.2
step
kill 6 Crazed Leper Gnome##46391+ |q 27670/1 |goto 43.89,32.84
step
talk Nevin Twistwrench##45966
turnin Pinned Down##27670 |goto 34.0,32.2
accept Report to Carvo Blastbolt##28167 |goto 34.0,32.2
step
Run up the ramp |goto 47.32,32.39 < 15 |walk
talk Carvo Blastbolt##47250
turnin Report to Carvo Blastbolt##28167 |goto 50.9,31.9
accept See to the Survivors##27671 |goto 50.9,31.9
step
use the Teleport Beacon##62057
|tip Use it on Survivors.
|tip They look like cowering, unclothed gnomes around this area.
Rescue #6# Survivors |q 27671/1 |goto 61.3,34.8
step
Run up the ramp |goto 58.77,33.89 < 15 |walk
talk Carvo Blastbolt##47250
turnin See to the Survivors##27671 |goto 50.9,31.9
accept Withdraw to the Loading Room!##28169 |goto 50.9,31.9
step
Follow the path |goto 52.63,37.08 < 15 |walk
Run up the stairs |goto 52.14,63.97 < 15 |walk
Follow the path |goto 54.00,74.87 < 15 |walk
talk Gaffer Coilspring##46274
turnin Withdraw to the Loading Room!##28169 |goto 53.1,82.2
accept Decontamination##27635 |goto 53.1,82.2
step
clicknpc Sanitron 500##46185
Start the Decontamination Process |q 27635/1 |goto 58.8,81.7
step
talk Technician Braggle##46255
turnin Decontamination##27635 |goto 66.3,81.6
accept To the Surface##27674 |goto 66.3,81.6
step
talk Torben Zapblast##46293
Tell him _"Send me to the surface, Torben."_
Speak to Torben Zapblast |q 27674/1 |goto 67.2,84.0
step
talk Nevin Twistwrench##42396
turnin To the Surface##27674 |goto New Tinkertown/0 39.50,38.39
accept The Future of Gnomeregan##26202 |goto New Tinkertown/0 39.50,38.39 |only Gnome Warlock
accept The Future of Gnomeregan##26197 |goto New Tinkertown/0 39.50,38.39 |only Gnome Mage
accept The Future of Gnomeregan##26203 |goto New Tinkertown/0 39.50,38.39 |only Gnome Warrior
accept The Future of Gnomeregan##26206 |goto New Tinkertown/0 39.50,38.39 |only Gnome Rogue
accept The Future of Gnomeregan##26199 |goto New Tinkertown/0 39.50,38.39 |only Gnome Priest
accept The Future of Gnomeregan##31135 |goto New Tinkertown/0 39.50,38.39 |only Gnome Monk
accept The Future of Gnomeregan##41217 |goto New Tinkertown/0 39.50,38.39 |only Gnome Hunter
step
talk "Doc" Cogspin##42323
turnin The Future of Gnomeregan##26199 |goto 39.4,28.4
accept Meet the High Tinker##26422 |goto 39.4,28.4
|only Gnome Priest
step
talk Kelsey Steelspark##42366
turnin The Future of Gnomeregan##26206 |goto 38.0,33.6
accept Meet the High Tinker##26423 |goto 38.0,33.6
|only Gnome Rogue
step
talk Drill Sergeant Steamcrank##42324
turnin The Future of Gnomeregan##26203 |goto 40.6,35.4
accept Meet the High Tinker##26425 |goto 40.6,35.4
|only Gnome Warrior
step
talk Bipsi Frostflinger##42331
turnin he Future of Gnomeregan##26197 |goto 41.1,29.1
accept Meet the High Tinker##26421 |goto 41.1,29.1
|only Gnome Mage
step
Leave the building |goto 39.58,37.35 < 10 |only if walking
talk Alamar Grimm##460
turnin The Future of Gnomeregan##26202 |goto 37.7,38.0
accept Meet the High Tinker##26424 |goto 37.7,38.0
|only Gnome Warlock
step
talk Xi, Friend to the Small##63238
turnin The Future of Gnomeregan##31135 |goto 40.1,35.6
accept Meet the High Tinker##31137 |goto 40.1,35.6
|only Gnome Monk
step
talk Muffinus Chromebrew##103614
turnin The Future of Gnomeregan##41217 |goto 41.9,31.6
accept Meet the High Tinker##41218 |goto 41.9,31.6
|only Gnome Hunter
step
talk High Tinker Mekkatorque##42317
turnin Meet the High Tinker##31137 |goto 38.7,32.8 |only Gnome Monk
turnin Meet the High Tinker##26424 |goto 38.7,32.8 |only Gnome Warlock
turnin Meet the High Tinker##26421 |goto 38.7,32.8 |only Gnome Mage
turnin Meet the High Tinker##26425 |goto 38.7,32.8 |only Gnome Warrior
turnin Meet the High Tinker##26423 |goto 38.7,32.8 |only Gnome Rogue
turnin Meet the High Tinker##26422 |goto 38.7,32.8 |only Gnome Priest
turnin Meet the High Tinker##41218 |goto 38.7,32.8 |only Gnome Hunter
accept The Fight Continues##26208 |goto 38.7,32.8
step
Watch the dialogue
Learn about Operation: Gnomeregan |q 26208/1 |goto 38.64,32.90
step
talk High Tinker Mekkatorque##42317
turnin The Fight Continues##26208 |goto 38.64,32.90
accept A Triumph of Gnomish Ingenuity##26566 |goto 38.64,32.90
step
talk Engineer Grindspark##42553
turnin A Triumph of Gnomish Ingenuity##26566 |goto 40.6,28.1
accept Scrounging for Parts##26222 |goto 40.6,28.1
step
click Spare Part##203964
|tip They look like metal machine parts on the ground all around this area, and inside buildings.
collect 7 Spare Part##57764 |q 26222/1 |goto 39.74,30.27
step
talk Engineer Grindspark##42553
turnin Scrounging for Parts##26222 |goto 40.6,28.1
accept A Job for the Multi-Bot##26205 |goto 40.6,28.1
step
talk Tock Sprysprocket##42611
accept What's Left Behind##26264 |goto 39.2,26.6
step
talk Corporal Fizzwhistle##42630
|tip He's outside, behind the building.
accept Dealing with the Fallout##26265 |goto 38.2,40.2
stickystart "Kill_Living_Contaminants"
stickystart "Collect_Recovered_Possessions"
step
Stand Next to Toxic Geysers
|tip They look like green spots that spew up green liquid in the green pools around this area.
Clean Up #5# Toxic Geysers |q 26205/1 |goto 37.1,50.6
step
label "Kill_Living_Contaminants"
kill 6 Living Contamination##42185+ |q 26265/1 |goto 37.1,50.6
step
label "Collect_Recovered_Possessions"
kill Toxic Sludge##42184+
collect 6 Recovered Possession##57987 |q 26264/1 |goto 37.1,50.6
step
talk Corporal Fizzwhistle##42630
turnin Dealing with the Fallout##26265 |goto 38.2,40.2
step
talk Engineer Grindspark##42553
turnin A Job for the Multi-Bot##26205 |goto 40.6,28.1
step
talk Tock Sprysprocket##42611
turnin What's Left Behind##26264 |goto 39.2,26.6
step
talk Captain Tread Sparknozzle##42489
accept What's Keeping Kharmarn?##26316 |goto 38.4,33.5
step
talk Kharmarn Palegrip##42708
turnin What's Keeping Kharmarn?##26316 |goto 37.3,65.2
accept Get Me Explosives Back!##26285 |goto 37.3,65.2
accept Missing in Action##26284 |goto 37.3,65.2
stickystart "Stolen_Powder_Kegs"
step
click Makeshift Cages
|tip They look like bone cages with brown animal hides laying on them around this area.
Rescue #6# Captured Demolitionists |q 26284/1 |goto 36.8,68.4
step
label "Stolen_Powder_Kegs"
Kill enemies around this area
collect 7 Stolen Powder Keg##58202 |q 26285/1 |goto 36.8,68.4
step
talk Kharmarn Palegrip##42708
turnin Get Me Explosives Back!##26285 |goto 37.3,65.2
turnin Missing in Action##26284 |goto 37.3,65.2
accept Finishin' the Job##26318 |goto 37.3,65.2
step
Follow the path |goto New Tinkertown/8 85.64,49.92 < 15 |walk
Follow the path |goto New Tinkertown/8 74.56,37.15 < 15 |walk
Continue following the path |goto New Tinkertown/8 60.62,74.15 < 15 |walk
kill Boss Bruggor##42773 |q 26318/2 |goto New Tinkertown/8 29.6,49.5
|tip He paces in the back of the cave.
step
click Detonator##240525
Detonate the Trogg Tunnel |q 26318/1 |goto 35.4,40.9
step
Follow the path up |goto 33.13,70.69 < 15 |walk
Continue up the path |goto 63.44,71.08 < 15 |walk
Follow the path |goto 77.85,36.62 < 15 |walk
talk Kharmarn Palegrip##42708
turnin Finishin' the Job##26318 |goto New Tinkertown/0 37.3,65.2
accept One More Thing##26329 |goto New Tinkertown/0 37.3,65.2
step
talk High Tinker Mekkatorque##42317
turnin One More Thing##26329 |goto 38.8,32.7
accept Crushcog's Minions##26331 |goto 38.8,32.7
step
talk Hinkles Fastblast##42491
accept No Tanks!##26333 |goto 38.2,33.7
stickystart "Kill_Crushcogs_Minions"
step
Follow the road |goto 44.15,32.43 < 20 |only if walking
use the Techno-Grenade##58200
|tip Use it on Repaired Mechano-Tanks.
|tip They look like yellow crab machines around this area.
Destroy #5# Repaired Mechano-Tanks |q 26333/1 |goto 53.2,24.0
step
label "Kill_Crushcogs_Minions"
Kill enemies around this area
Kill #8# Crushcog's Minions |q 26331/1 |goto 53.2,24.0
step
Follow the road |goto 47.22,31.77 < 20 |only if walking
talk High Tinker Mekkatorque##42317
turnin Crushcog's Minions##26331 |goto 38.8,32.7
step
talk Hinkles Fastblast##42491
turnin No Tanks!##26333 |goto 38.2,33.7
step
talk Kelsey Steelspark##42366
accept Staging in Brewnall##26339 |goto 38.0,33.6
step
talk Jarvi Shadowstep##42353
turnin Staging in Brewnall##26339 |goto 48.7,52.9
accept Paint it Black##26342 |goto 48.7,52.9
step
use the Paintinator##58203
|tip Use it on Crushcog Sentry-Bots.
Blind #5# Crushcog's Sentry-Bots |q 26342/1 |goto 53.5,45.8
step
talk Jarvi Shadowstep##42353
turnin Paint it Black##26342 |goto 48.7,52.9
accept Down with Crushcog!##26364 |goto 48.7,52.9
step
talk High Tinker Mekkatorque##42849
Talk to High Tinker Mekkatorque |q 26364/1 |goto 57.2,47.5
step
talk High Tinker Mekkatorque##42849
Tell him _"I'm ready to start the assault."_
|tip Follow your allies into battle.
use the Orbital Targeting Device##58253
|tip Use it on Razlo Crushcog.
Defeat Razlo Crushcog |q 26364/2 |goto 57.2,47.5
step
talk Jarvi Shadowstep##42353
turnin Down with Crushcog!##26364 |goto 48.7,52.9
accept On to Kharanos##26373 |goto 48.7,52.9
step
label "oddstart"
Follow the road |goto 52.98,57.95 < 20 |only if walking
Continue following the road |goto 64.55,53.51 < 20 |only if walking
talk Ciara Deepstone##42933
accept Bound for Kharanos##26380 |goto Dun Morogh 49.9,45.0
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Human Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Elwynn Forest",
condition_valid=function() return raceclass('Human') end,
condition_valid_msg="Human only.",
condition_suggested=function() return raceclass('Human') and level <= 5 and not completedq(26390) and not raceclass("DeathKnight") and not ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Elwynn Forest (1-60)",
startlevel=1,
endlevel=5
},[[
step
talk Marshal McBride##197
accept Beating them Back!##28757 |goto Northshire/0 33.6,53.0 |only Human Mage
accept Beating them Back!##28762 |goto Northshire/0 33.6,53.0 |only Human Paladin
accept Beating them Back!##28763 |goto Northshire/0 33.6,53.0 |only Human Priest
accept Beating them Back!##28764 |goto Northshire/0 33.6,53.0 |only Human Rogue
accept Beating them Back!##28765 |goto Northshire/0 33.6,53.0 |only Human Warlock
accept Beating them Back!##28766 |goto Northshire/0 33.6,53.0 |only Human Warrior
accept Beating them Back!##28767 |goto Northshire/0 33.6,53.0 |only Human Hunter
accept Beating Them Back!##31139 |goto Northshire/0 33.6,53.0 |only Human Monk
accept Beating Them Back!##29078 |goto Northshire/0 33.6,53.0 |only if not Human
step
kill 6 Blackrock Battle Worg##49871 |q 28757/1 |goto 29.0,42.9 |only Human Mage
kill 6 Blackrock Battle Worg##49871 |q 28762/1 |goto 29.0,42.9 |only Human Paladin
kill 6 Blackrock Battle Worg##49871 |q 28763/1 |goto 29.0,42.9 |only Human Priest
kill 6 Blackrock Battle Worg##49871 |q 28764/1 |goto 29.0,42.9 |only Human Rogue
kill 6 Blackrock Battle Worg##49871 |q 28765/1 |goto 29.0,42.9 |only Human Warlock
kill 6 Blackrock Battle Worg##49871 |q 28766/1 |goto 29.0,42.9 |only Human Warrior
kill 6 Blackrock Battle Worg##49871 |q 28767/1 |goto 29.0,42.9 |only Human Hunter
kill 6 Blackrock Battle Worg##49871 |q 31139/1 |goto 29.0,42.9 |only Human Monk
kill 6 Blackrock Battle Worg##49871 |q 29078/1 |goto 29.0,42.9 |only if not Human
step
talk Marshal McBride##197
turnin Beating them Back!##28757 |goto 33.6,53.0 |only Human Mage
accept Lions for Lambs##28769 |goto 33.6,53.0 |only Human Mage
turnin Beating them Back!##28762 |goto 33.6,53.0 |only Human Paladin
accept Lions for Lambs##28770 |goto 33.6,53.0 |only Human Paladin
turnin Beating them Back!##28763 |goto 33.6,53.0 |only Human Priest
accept Lions for Lambs##28771 |goto 33.6,53.0 |only Human Priest
turnin Beating them Back!##28764 |goto 33.6,53.0 |only Human Rogue
accept Lions for Lambs##28772 |goto 33.6,53.0 |only Human Rogue
turnin Beating them Back!##28765 |goto 33.6,53.0 |only Human Warlock
accept Lions for Lambs##28773 |goto 33.6,53.0 |only Human Warlock
turnin Beating them Back!##28766 |goto 33.6,53.0 |only Human Warrior
accept Lions for Lambs##28774 |goto 33.6,53.0 |only Human Warrior
turnin Beating them Back!##28767 |goto 33.6,53.0 |only Human Hunter
accept Lions for Lambs##28759 |goto 33.6,53.0 |only Human Hunter
turnin Beating Them Back!##31139 |goto 33.6,53.0 |only Human Monk
accept Lions for Lambs##31140 |goto 33.6,53.0 |only Human Monk
turnin Beating Them Back!##29078 |goto 33.6,53.0 |only if not Human
accept Lions for Lambs##29079 |goto 33.6,53.0 |only if not Human
step
kill 8 Blackrock Spy##49874 |q 28769/1 |goto 25.4,41.1 |only Human Mage
kill 8 Blackrock Spy##49874 |q 28770/1 |goto 25.4,41.1 |only Human Paladin
kill 8 Blackrock Spy##49874 |q 28771/1 |goto 25.4,41.1 |only Human Priest
kill 8 Blackrock Spy##49874 |q 28772/1 |goto 25.4,41.1 |only Human Rogue
kill 8 Blackrock Spy##49874 |q 28773/1 |goto 25.4,41.1 |only Human Warlock
kill 8 Blackrock Spy##49874 |q 28774/1 |goto 25.4,41.1 |only Human Warrior
kill 8 Blackrock Spy##49874 |q 28759/1 |goto 25.4,41.1 |only Human Hunter
kill 8 Blackrock Spy##49874 |q 31140/1 |goto 25.4,41.1 |only Human Monk
kill 8 Blackrock Spy##49874 |q 29079/1 |goto 25.4,41.1 |only if not Human
|tip They creep around near the trees around this area.
step
talk Marshal McBride##197
turnin Lions for Lambs##28769 |goto 33.6,53.0 |only Human Mage
accept Join the Battle!##28784 |only Human Mage
turnin Lions for Lambs##28770 |goto 33.6,53.0 |only Human Paladin
accept Join the Battle!##28785 |only Human Paladin
turnin Lions for Lambs##28771 |goto 33.6,53.0 |only Human Priest
accept Join the Battle!##28786 |only Human Priest
turnin Lions for Lambs##28772 |goto 33.6,53.0 |only Human Rogue
accept Join the Battle!##28787 |only Human Rogue
turnin Lions for Lambs##28773 |goto 33.6,53.0 |only Human Warlock
accept Join the Battle!##28788 |only Human Warlock
turnin Lions for Lambs##28774 |goto 33.6,53.0 |only Human Warrior
accept Join the Battle!##28789 |only Human Warrior
turnin Lions for Lambs##28759 |goto 33.6,53.0 |only Human Hunter
accept Join the Battle!##28780 |only Human Hunter
turnin Lions for Lambs##31140 |goto 33.6,53.0 |only Human Monk
accept Join the Battle!##31143 |only Human Monk
turnin Lions for Lambs##29079 |goto 33.6,53.0 |only if not Human
accept Join the Battle!##29080 |goto 33.6,53.0 |only if not Human
step
talk Sergeant Willem##823
turnin Join the Battle!##28789 |goto 35.7,39.8 |only Human Warrior
accept They Sent Assassins##28797 |goto 35.7,39.8 |only Human Warrior
turnin Join the Battle!##28785 |goto 35.7,39.8 |only Human Paladin
accept They Sent Assassins##28793 |goto 35.7,39.8 |only Human Paladin
turnin Join the Battle!##28780 |goto 35.7,39.8 |only Human Hunter
accept They Sent Assassins##28791 |goto 35.7,39.8 |only Human Hunter
turnin Join the Battle!##28786 |goto 35.7,39.8 |only Human Priest
accept They Sent Assassins##28794 |goto 35.7,39.8 |only Human Priest
turnin Join the Battle!##28788 |goto 35.7,39.8 |only Human Warlock
accept They Sent Assassins##28796 |goto 35.7,39.8 |only Human Warlock
turnin Join the Battle!##28784 |goto 35.7,39.8 |only Human Mage
accept They Sent Assassins##28792 |goto 35.7,39.8 |only Human Mage
turnin Join the Battle!##28787 |goto 35.7,39.8 |only Human Rogue
accept They Sent Assassins##28795 |goto 35.7,39.8 |only Human Rogue
turnin Join the Battle!##31143 |goto 35.7,39.8 |only Human Monk
accept They Sent Assassins##31144 |goto 35.7,39.8 |only Human Monk
turnin Join the Battle!##29080 |goto 35.7,39.8 |only if not Human
accept They Sent Assassins##29081 |goto 35.7,39.8 |only if not Human
step
talk Brother Paxton##951
accept Fear No Evil##28813 |goto 35.01,38.26 |only Human Warrior
accept Fear No Evil##28809 |goto 35.01,38.26 |only Human Paladin
accept Fear No Evil##28806 |goto 35.01,38.26 |only Human Hunter
accept Fear No Evil##28810 |goto 35.01,38.26 |only Human Priest
accept Fear No Evil##28812 |goto 35.01,38.26 |only Human Warlock
accept Fear No Evil##28808 |goto 35.01,38.26 |only Human Mage
accept Fear No Evil##28811 |goto 35.01,38.26 |only Human Rogue
accept Fear No Evil##29082 |goto 35.01,38.26 |only if not Human
|only if not Monk
stickystart "injuredsoldiers"
step
kill 8 Goblin Assassin##50039 |q 28797/1 |goto 30.7,29.1 |only Human Warrior
kill 8 Goblin Assassin##50039 |q 28793/1 |goto 30.7,29.1 |only Human Paladin
kill 8 Goblin Assassin##50039 |q 28791/1 |goto 30.7,29.1 |only Human Hunter
kill 8 Goblin Assassin##50039 |q 28794/1 |goto 30.7,29.1 |only Human Priest
kill 8 Goblin Assassin##50039 |q 28796/1 |goto 30.7,29.1 |only Human Warlock
kill 8 Goblin Assassin##50039 |q 28792/1 |goto 30.7,29.1 |only Human Mage
kill 8 Goblin Assassin##50039 |q 28795/1 |goto 30.7,29.1 |only Human Rogue
kill 8 Goblin Assassin##50039 |q 29081/1 |goto 30.7,29.1 |only if not Human
step
label "injuredsoldiers"
clicknpc Injured Stormwind Infantry##50047+
|tip They look like dead Alliance soldiers laying on the ground around this area.
Revive #4# Injured Soldiers |q 28813/1 |goto 30.7,29.1 |only Human Warrior
Revive #4# Injured Soldiers |q 28809/1 |goto 30.7,29.1 |only Human Paladin
Revive #4# Injured Soldiers |q 28806/1 |goto 30.7,29.1 |only Human Hunter
Revive #4# Injured Soldiers |q 28810/1 |goto 30.7,29.1 |only Human Priest
Revive #4# Injured Soldiers |q 28812/1 |goto 30.7,29.1 |only Human Warlock
Revive #4# Injured Soldiers |q 28808/1 |goto 30.7,29.1 |only Human Mage
Revive #4# Injured Soldiers |q 28811/1 |goto 30.7,29.1 |only Human Rogue
Revive #4# Injured Soldiers |q 29082/1 |goto 30.7,29.1 |only if not Human
|only if not Monk
step
talk Brother Paxton##951
turnin Fear No Evil##28813 |goto 35.01,38.26 |only Human Warrior
turnin Fear No Evil##28809 |goto 35.01,38.26 |only Human Paladin
turnin Fear No Evil##28806 |goto 35.01,38.26 |only Human Hunter
turnin Fear No Evil##28810 |goto 35.01,38.26 |only Human Priest
turnin Fear No Evil##28812 |goto 35.01,38.26 |only Human Warlock
turnin Fear No Evil##28808 |goto 35.01,38.26 |only Human Mage
turnin Fear No Evil##28811 |goto 35.01,38.26 |only Human Rogue
turnin Fear No Evil##29082 |goto 35.01,38.26 |only if not Human
|only if not Monk
step
talk Sergeant Willem##823
turnin They Sent Assassins##28797 |goto 35.7,39.8 |only Human Warrior
accept The Rear is Clear##28823 |goto 35.7,39.8 |only Human Warrior
turnin They Sent Assassins##28793 |goto 35.7,39.8 |only Human Paladin
accept The Rear is Clear##28819 |goto 35.7,39.8 |only Human Paladin
turnin They Sent Assassins##28791 |goto 35.7,39.8 |only Human Hunter
accept The Rear is Clear##28817 |goto 35.7,39.8 |only Human Hunter
turnin They Sent Assassins##28794 |goto 35.7,39.8 |only Human Priest
accept The Rear is Clear##28820 |goto 35.7,39.8 |only Human Priest
turnin They Sent Assassins##28796 |goto 35.7,39.8 |only Human Warlock
accept The Rear is Clear##28822 |goto 35.7,39.8 |only Human Warlock
turnin They Sent Assassins##28792 |goto 35.7,39.8 |only Human Mage
accept The Rear is Clear##28818 |goto 35.7,39.8 |only Human Mage
turnin They Sent Assassins##28795 |goto 35.7,39.8 |only Human Rogue
accept The Rear is Clear##28821 |goto 35.7,39.8 |only Human Rogue
turnin They Sent Assassins##31144 |goto 35.7,39.8 |only Human Monk
accept The Rear is Clear##31145 |goto 35.7,39.8 |only Human Monk
turnin They Sent Assassins##29081 |goto 35.7,39.8 |only if not Human
accept The Rear is Clear##29083 |goto 35.7,39.8 |only if not Human
step
talk Marshal McBride##197
|tip Standing at the entrance of the building.
turnin The Rear is Clear##28823 |goto 33.6,53.0 |only Human Warrior
turnin The Rear is Clear##28819 |goto 33.6,53.0 |only Human Paladin
turnin The Rear is Clear##28817 |goto 33.6,53.0 |only Human Hunter
turnin The Rear is Clear##28820 |goto 33.6,53.0 |only Human Priest
turnin The Rear is Clear##28822 |goto 33.6,53.0 |only Human Warlock
turnin The Rear is Clear##28818 |goto 33.6,53.0 |only Human Mage
turnin The Rear is Clear##28821 |goto 33.6,53.0 |only Human Rogue
turnin The Rear is Clear##31145 |goto 33.6,53.0 |only Human Monk
turnin The Rear is Clear##29083 |goto 33.6,53.0 |only if not Human
accept Blackrock Invasion##26389 |goto 33.6,53.0
step
talk Milly Osworth##9296
accept Extinguishing Hope##26391 |goto 33.4,54.7
stickystart "Collect_Blackrock_Orc_Weapons"
step
use the Milly's Fire Extinguisher##58362
|tip Use it on Fires around the area.
Extinguish #8# Vineyard Fires |q 26391/1 |goto 54.4,78.6
step
label "Collect_Blackrock_Orc_Weapons"
Kill enemies around this area
collect 8 Blackrock Orc Weapon##58361 |q 26389/1 |goto 54.4,78.6
step
talk Milly Osworth##9296
turnin Extinguishing Hope##26391 |goto 33.4,54.7
step
talk Marshal McBride##197
turnin Blackrock Invasion##26389 |goto 33.6,53.0
accept Ending the Invasion!##26390 |goto 33.6,53.0
step
Follow the path |goto 36.65,58.37 < 20 |only if walking
kill Kurtok the Slayer##42938 |q 26390/1 |goto 65.1,48.1
step
Follow the path |goto 40.35,60.10 < 20 |only if walking
talk Marshal McBride##197
turnin Ending the Invasion!##26390 |goto 33.6,53.0
accept Report to Goldshire##54 |goto 33.6,53.0
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Night Elf Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."NightElf",
condition_valid=function() return raceclass('NightElf') end,
condition_valid_msg="Night Elf only.",
condition_suggested=function() return raceclass('NightElf') and level <= 5 and not completedq(14039) and not raceclass("DeathKnight") and not ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-60)\\Kalimdor\\Darkshore (5-60)",
startlevel=1,
endlevel=50
},[[
step
talk Ilthalaine##2079
accept The Balance of Nature##28713 |goto Shadowglen/0 45.6,74.6
step
kill 6 Young Nightsaber##2031 |q 28713/1 |goto 45.2,80.8
step
talk Ilthalaine##2079
turnin The Balance of Nature##28713 |goto 45.6,74.6
accept Fel Moss Corruption##28714 |goto 45.6,74.6
step
talk Melithar Staghelm##2077
accept Demonic Thieves##28715 |goto 46.0,72.9
stickystart "Collect_Melithars_Stolen_Bags"
step
kill Grell##1988+
collect 6 Fel Moss##3297 |q 28714/1 |goto 36.9,78.2
step
label "Collect_Melithars_Stolen_Bags"
click Melithar's Stolen Bag##323+
|tip They look like tan leather sacks on the ground around this area.
collect 5 Melithar's Stolen Bags##46700 |q 28715/1 |goto 36.9,78.2
step
talk Melithar Staghelm##2077
turnin Demonic Thieves##28715 |goto 46.0,72.9
step
talk Ilthalaine##2079
turnin Fel Moss Corruption##28714 |goto 46.3,73.5
accept Priestess of the Moon##28723 |goto 46.3,73.5
step
Follow the path |goto 41.19,62.71 < 20 |only if walking
talk Dentaria Silverglade##49479
turnin Priestess of the Moon##28723 |goto 42.5,50.6
accept Iverron's Antidote##28724 |goto 42.5,50.6
|only NightElf
step
click Moonpetal Lily##207346
|tip They are all around these ponds.
collect 7 Moonpetal Lily##10641 |q 28724/1 |goto 42.49,50.54
|only if haveq(28724)
step
talk Dentaria Silverglade##49479
turnin Iverron's Antidote##28724 |goto 42.5,50.6
accept The Woodland Protector##28725 |goto 42.5,50.6
|only NightElf
step
talk Tarindrella##49480
|tip She will appear next to you when you reach the entrance of the cave.
turnin The Woodland Protector##28725 |goto Teldrassil/2 44.5,82.2
accept Webwood Corruption##28726 |goto Teldrassil/2 44.5,82.2
|only NightElf
step
kill 12 Webwood Spider##1986 |q 28726/1 |goto 46.02,60.91
|tip They are all around inside this cave.
|only if haveq(28726) or completedq(28726)
step
_Next to you:_
talk Tarindrella##49480
turnin Webwood Corruption##28726
accept Vile Touch##28727
|only NightElf
step
Follow the path down |goto 46.12,55.06 < 15 |walk
Follow the path up |goto 39.27,31.34 < 15 |walk
Continue up the path |goto 34.42,16.19 < 15 |walk
kill Githyiss the Vile##1994 |q 28727/1 |goto 44.9,28.1
|only if haveq(28727)
step
_Next to you:_
talk Tarindrella##49480
turnin Vile Touch##28727
accept Signs of Things to Come##28728
|only NightElf
step
talk Dentaria Silverglade##49479
turnin Signs of Things to Come##28728 |goto Shadowglen/0 42.50,50.47
accept Teldrassil: Crown of Azeroth##28729 |goto Shadowglen/0 42.50,50.47
|only NightElf
step
use the Crystal Phial##5185
|tip Use it near the water.
collect Filled Crystal Phial##5184 |q 28729/1 |goto 50.3,33.7
|only if haveq(28729)
step
talk Dentaria Silverglade##49479
turnin Teldrassil: Crown of Azeroth##28729 |goto 42.50,50.49
accept Precious Waters##28730 |goto 42.50,50.49
|only NightElf
step
Follow the ramp up |goto 41.90,63.50 < 15 |only if walking
Continue up the ramp |goto 46.05,54.07 < 15 |only if walking
Continue up the ramp |goto 45.65,61.04 < 15 |only if walking
talk Tenaron Stormgrip##3514
|tip In a room at the top of the tree.
turnin Precious Waters##28730 |goto 47.2,55.9
accept Teldrassil: Passing Awareness##28731 |goto 47.2,55.9
|only NightElf
step
Jump onto the roof of the house below |goto 47.96,59.95 < 15 |only if walking
talk Porthannius##6780
accept Dolanaar Delivery##2159 |goto 54.6,84.7
step
Reach Level 1 |ding 1
|tip Kill a few enemies if needed.
step
Follow the path |goto Teldrassil/0 60.77,45.61 < 15 |only if walking
talk Zenn Foulhoof##2150
accept Zenn's Bidding##488 |goto Teldrassil/0 59.52,49.17
stickystart "Webwood_Spider_Silk"
step
kill Nightsaber##2042+
collect 2 Nightsaber Fang##3409 |q 488/1 |goto 60.5,52.5
There are more around [57.7,52.5]
step
label "Webwood_Spider_Silk"
kill Webwood Lurker##1998+
collect 2 Webwood Spider Silk##3412 |q 488/3 |goto 60.5,52.5
There are more around [57.7,52.5]
step
kill Strigid Owl##1995+
collect 2 Strigid Owl Feather##3411 |q 488/2 |goto 57.7,52.5
step
talk Zenn Foulhoof##2150
turnin Zenn's Bidding##488 |goto 59.55,49.24
step
talk Syral Bladeleaf##2083
accept Seek Redemption!##489 |goto 55.77,50.44
step
talk Tallonkai Swiftroot##3567
accept The Emerald Dreamcatcher##2438 |goto 55.55,49.98
step
talk Fidelio##40553
fpath Dolanaar |goto 55.5,50.4
step
talk Athridas Bearmantle##2078
accept A Troubling Breeze##475 |goto 55.7,52.0
step
talk Innkeeper Keldamyr##6736
turnin Dolanaar Delivery##2159 |goto 55.37,52.23
step
talk Innkeeper Keldamyr##6736
home Dolanaar |goto 55.37,52.23 |future |q 289
step
talk Corithras Moonrage##3515
turnin Teldrassil: Passing Awareness##28731 |goto 55.8,53.9
accept Teldrassil: The Refusal of the Aspects##929 |goto 55.8,53.9
|only NightElf
step
click Fel Cone##1673
|tip They look like big pine cones with green gas floating out of them on the ground around this area.
collect 3 Fel Cone##3418 |q 489/1 |goto 51.8,53.2
step
Follow the road |goto 55.88,50.63 < 20 |only if walking
talk Zenn Foulhoof##2150
turnin Seek Redemption!##489 |goto 59.5,49.2
step
use the Jade Phial##5619
|tip Use it near the water.
collect Filled Jade Phial##5639 |q 929/1 |goto 62.1,50.8
|only if haveq(929)
step
Follow the path |goto 62.82,50.10 < 20 |only if walking
talk Gaerolas Talvethren##2107
|tip Upstairs in the house.
turnin A Troubling Breeze##475 |goto 64.6,51.2
accept Gnarlpine Corruption##476 |goto 64.6,51.2
step
click Tallonkai's Dresser##126158
|tip Inside the small house.
collect Emerald Dreamcatcher##8048 |q 2438/1 |goto 66.1,52.1
step
Follow the path |goto 65.02,50.87 < 20 |only if walking
Follow the road |goto 60.16,49.29 < 20 |only if walking
talk Syral Bladeleaf##2083
accept Nature's Reprisal##13946 |goto 55.77,50.44
step
talk Tallonkai Swiftroot##3567
turnin The Emerald Dreamcatcher##2438 |goto 55.55,49.98
accept Ferocitas the Dream Eater##2459 |goto 55.55,49.98
accept Twisted Hatred##932 |goto 55.55,49.98
step
talk Athridas Bearmantle##2078
turnin Gnarlpine Corruption##476 |goto 55.7,52.0
accept The Relics of Wakening##483 |goto 55.7,52.0
step
talk Sentinel Kyra Starsong##2081
accept Resident Danger##13945 |goto 55.66,51.98
step
talk Corithras Moonrage##3515
turnin Teldrassil: The Refusal of the Aspects##929 |goto 55.8,53.9
|only NightElf
step
talk Nyoma##4265
accept Reminders of Home##6344 |goto 56.73,53.51
|only NightElf
stickystart "Kill_Gnarlpine_Mystics"
step
Follow the path |goto 63.46,47.40 < 20 |only if walking
kill Ferocitas the Dream Eater##7234
collect Tallonkai's Jewel##8050 |q 2459/2 |goto 67.25,46.87
step
label "Kill_Gnarlpine_Mystics"
kill 7 Gnarlpine Mystic##7235 |q 2459/1 |goto 66.62,46.63
step
Follow the path |goto 65.13,47.47 < 20 |only if walking
Follow the road |goto 61.65,47.39 < 20 |only if walking
Continue following the road |goto 59.08,50.12 < 20 |only if walking
talk Tallonkai Swiftroot##3567
turnin Ferocitas the Dream Eater##2459 |goto 55.55,49.98
stickystart "Seeds"
step
Follow the road |goto 55.25,51.05 < 20 |only if walking
Follow the path |goto 52.81,49.44 < 20 |only if walking
Follow the path |goto 53.77,46.89 < 15 |only if walking
Follow the path |goto Teldrassil/3 75.64,64.97 < 15 |walk
Follow the path |goto Teldrassil/3 62.88,55.85 < 15 |walk
Continue following the path |goto Teldrassil/3 51.47,26.13 < 15 |walk
Continue following the path |goto Teldrassil/3 39.09,28.22 < 15 |walk
Follow the path |goto Teldrassil/3 29.29,19.10 < 15 |walk
kill Lord Melenas##2038
collect Melenas' Head##5221 |q 932/1 |goto Teldrassil/3 21.21,43.19
step
label "Seeds"
use the Ireroot Seeds##46716
|tip Use it on Sprites in the area.
|tip They're all around inside this cave.
Kill #12# Fel Rock Grellkin with Ireroot Seeds |q 13946/1 |goto 15.8,52.4
step
talk Syral Bladeleaf##2083
turnin Nature's Reprisal##13946 |goto Teldrassil/0 55.76,50.45
step
talk Tallonkai Swiftroot##3567
turnin Twisted Hatred##932 |goto 55.55,49.99
step
Approach Citarre Mapleheart |goto 55.58,51.70 < 10 |c |q 13945
step
talk Citarre Mapleheart##34761 |goto 55.58,51.70 |n
Tell her _"I'm ready to depart for Ban'ethil Barrow Den."_
Begin Riding to the Ban'ethil Barrow Den |goto 55.6,51.7 > 30 |noway |c |q 13945
step
Ride to the Ban'ethil Barrow Den |goto 45.68,50.49 < 15 |c |q 13945
stickystart "Slay_Banethil_Gnarlpine"
stickystart "Shaman_Voodoo_Charm"
step
Follow the spiral path down |goto Teldrassil/4 47.43,17.72 < 10 |walk
Continue following the path down |goto Teldrassil/4 34.65,27.83 < 10 |walk
Cross the bridge |goto Teldrassil/4 39.61,60.69 < 10 |walk
talk Oben Rageclaw##7317
accept The Sleeping Druid##2541 |goto Teldrassil/4 41.17,83.85
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Rune of Nesting?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of Nesting##2742
collect Rune of Nesting##3408 |q 483/4
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Black Feather Quill?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Black Feather##2739
collect Black Feather Quill##3406 |q 483/2
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Sapphire of Sky?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Sky##2741
collect Sapphire of Sky##3407 |q 483/3
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Where is the Raven Claw Talisman?"_
|tip Follow the green mist trail that appears.
|tip You can ask her as many times as you need to.
click Chest of the Raven Claw##2740
collect Raven Claw Talisman##3405 |q 483/1
step
label "Shaman_Voodoo_Charm"
kill Gnarlpine Shaman##2009+
|tip All throughout the cave.
collect Shaman Voodoo Charm##8363 |q 2541/1
step
_Next to you:_
talk Sentinel Huntress##34249
Ask her _"Can you lead me to the exit?"_
|tip Follow the green mist trail that appears, until you see an area with 2 bridges.
|tip Don't actually leave the cave.
talk Oben Rageclaw##7317
turnin The Sleeping Druid##2541 |goto 41.30,83.78
accept Druid of the Claw##2561 |goto 41.30,83.78
step
Cross the bridge |goto 43.57,74.13 < 10 |walk
Cross the bridge |goto 41.30,57.11 < 10 |walk
kill Rageclaw##7318
|tip The doors will open as you approach them.
|tip You will be attacked immediately, so be ready.
use the Voodoo Charm##8149
|tip Use it on Rageclaw's corpse.
Release Oben Rageclaw's Spirit |q 2561/1 |goto 58.74,66.56
step
Cross the bridge |goto 51.61,62.33 < 10 |walk
Cross the bridge |goto 39.70,60.89 < 10 |walk
talk Oben Rageclaw##7317
turnin Druid of the Claw##2561 |goto 41.35,83.78
step
label "Slay_Banethil_Gnarlpine"
Kill enemies inside the cave
Slay #20# Ban'ethil Gnarlpine |q 13945/1
step
talk Athridas Bearmantle##2078
turnin The Relics of Wakening##483 |goto Teldrassil/0 55.7,52.0
accept Ursal the Mauler##486 |goto Teldrassil/0 55.7,52.0
step
talk Sentinel Kyra Starsong##2081
turnin Resident Danger##13945 |goto 55.66,51.99
step
talk Fidelio##40553
turnin Reminders of Home##6344 |goto 55.47,50.42
accept To Darnassus##6341 |goto 55.47,50.42
|only NightElf
step
talk Sister Aquinne##7316
turnin To Darnassus##6341 |goto Darnassus/0 36.1,53.5
accept An Unexpected Gift##6342 |goto Darnassus/0 36.1,53.5
|only NightElf
step
talk Leora##40552
turnin An Unexpected Gift##6342 |goto 36.6,47.9
accept Return to Nyoma##6343 |goto 36.6,47.9
|only NightElf
step
talk Nyoma##4265
turnin Return to Nyoma##6343 |goto Teldrassil/0 56.73,53.52
|only NightElf
step
Follow the road |goto 55.76,50.83 < 20 |only if walking
Continue following the road |goto 54.23,51.03 < 20 |only if walking
Continue following the road |goto 51.19,49.24 < 20 |only if walking
talk Moon Priestess Amara##2151
accept The Road to Darnassus##487 |goto 49.35,44.67
stickystart "Kill_Gnarlpine_Ambushers"
step
Follow the path up |goto 49.40,42.83 < 15 |only if walking
Continue up the path |goto 50.38,37.98 < 15 |only if walking
Follow the path up |goto 50.63,36.38 < 15 |only if walking
kill Ursal the Mauler##2039 |q 486/1 |goto 51.70,39.29
step
label "Kill_Gnarlpine_Ambushers"
kill 8 Gnarlpine Ambusher##2152 |q 487/1 |goto 51.33,37.36
step
Follow the path down |goto 50.47,36.66 < 15 |only if walking
Continue down the path |goto 49.71,42.02 < 15 |only if walking
talk Moon Priestess Amara##2151
turnin The Road to Darnassus##487 |goto 49.35,44.67
step
Follow the road |goto 49.60,45.62 < 20 |only if walking
Continue following the road |goto 51.07,49.17 < 20 |only if walking
talk Athridas Bearmantle##2078
turnin Ursal the Mauler##486 |goto 55.7,52.0
step
talk Syral Bladeleaf##2083
accept Denalan's Earth##997 |goto 55.76,50.44
step
Follow the path down |goto 56.57,54.97 < 20 |only if walking
Follow the path |goto 59.32,57.73 < 20 |only if walking
talk Denalan##2080
turnin Denalan's Earth##997 |goto 59.93,59.76
Watch the dialogue
accept Timberling Seeds##918 |goto 59.93,59.76
accept Timberling Sprouts##919 |goto 59.93,59.76
stickystart "Collect_Timberling_Sprouts"
stickystart "Collect_Timberling_Seeds"
step
Follow the path |goto 59.17,61.58 < 20 |only if walking
click Strange Fruited Plant##6751
accept The Glowing Fruit##930 |goto 57.6,62.9
step
label "Collect_Timberling_Seeds"
kill Timberling##2022+
collect 6 Timberling Seed##5168 |q 918/1 |goto 57.55,62.45
step
label "Collect_Timberling_Sprouts"
click Timberling Sprout##4608
|tip They look like balls of green vines on the ground around this area.
collect 10 Timberling Sprout##5169 |q 919/1 |goto 57.55,62.45
step
Follow the path |goto 58.64,62.53 < 20 |only if walking
talk Denalan##2080
turnin Timberling Seeds##918 |goto 59.93,59.76
accept Rellian Greenspyre##922 |goto 59.93,59.76
turnin Timberling Sprouts##919 |goto 59.93,59.76
turnin The Glowing Fruit##930 |goto 59.93,59.76
step
Follow the path |goto 59.57,58.10 < 20 |only if walking
Follow the path up |goto 56.89,55.93 < 20 |only if walking
talk Corithras Moonrage##3515
accept Teldrassil: The Burden of the Kaldorei##7383 |goto 55.8,53.9
step
Follow the road |goto 54.37,51.06 < 20 |only if walking
Continue following the road |goto 51.17,49.21 < 20 |only if walking
Continue following the road |goto 48.02,43.36 < 20 |only if walking
Cross the bridge |goto 45.74,44.12 < 20 |only if walking
talk Rellian Greenspyre##3517
turnin Rellian Greenspyre##922 |goto 43.96,44.16
accept Mossy Tumors##923 |goto 43.96,44.16
step
Follow the path |goto 43.08,43.51 < 20 |only if walking
Follow the path |goto 42.18,40.24 < 20 |only if walking
Kill Timberling enemies around this area
|tip Follow the water north.
collect 5 Mossy Tumor##5170 |q 923/1 |goto 44.27,34.55
step
Follow the path up |goto 43.29,29.80 < 30 |only if walking
Follow the path |goto 41.65,30.68 < 20 |only if walking
use the Amethyst Phial##18152
|tip Use it near the water.
collect Filled Amerthyst Phial##18151 |q 7383/1 |goto 40.5,29.9
step
talk Sentinel Arynia Cloudsbreak##3519
accept The Enchanted Glade##937 |goto 39.50,29.86
step
talk Priestess A'moora##7313
|tip She walks around.
accept Tears of the Moon##2518 |goto 39.25,29.73
stickystart "Collect_Bloodfeather_Belts"
step
click Strange Fronded Plant##6752
accept The Shimmering Frond##931 |goto 37.3,25.5
step
label "Collect_Bloodfeather_Belts"
Kill Bloodfeather enemies around this area
collect 6 Bloodfeather Belt##5204 |q 937/1 |goto 37.3,25.5
step
Follow the path |goto 37.34,23.61 < 20 |only if walking
Follow the path |goto 39.16,22.16 < 20 |only if walking
kill Lady Sathrah##7319
|tip She's a gray spider that walks around this small area.
collect Silvery Spinnerets##8344 |q 2518/1 |goto 40.7,22.1
step
Follow the path |goto 40.59,23.09 < 20 |only if walking
Follow the path |goto 39.61,26.36 < 20 |only if walking
talk Priestess A'moora##7313
|tip She walks around.
turnin Tears of the Moon##2518 |goto 39.19,29.88
step
talk Sentinel Arynia Cloudsbreak##3519
turnin The Enchanted Glade##937 |goto 39.50,29.86
step
Follow the path |goto 40.59,36.67 < 20 |only if walking
talk Corithras Moonrage##3515
|tip He paces around.
turnin Teldrassil: The Burden of the Kaldorei##7383 |goto 41.07,45.73
accept Teldrassil: The Coming Dawn##933 |goto 41.07,45.73
step
talk Rellian Greenspyre##3517
turnin Mossy Tumors##923 |goto 44.0,44.2
step
talk Denalan##2080
turnin The Shimmering Frond##931 |goto 43.94,44.20
accept Oakenscowl##2499 |goto 43.94,44.20
step
Follow the path |goto 42.05,47.43 < 20 |only if walking
Follow the path |goto 42.67,50.64 < 20 |only if walking
Continue following the path |goto 42.65,54.71 < 20 |only if walking
use the Tourmaline Phial##5621
|tip Use it near the water.
collect Filled Tourmaline Phial##5645 |q 933/1 |goto 43.76,58.55
step
talk Tarindrella##1992
turnin Teldrassil: The Coming Dawn##933 |goto 42.51,58.19
accept The Vengeance of Elune##14005 |goto 42.51,58.19
step
Follow the path |goto 42.39,60.15 < 20 |only if walking
Follow the path |goto 43.10,62.21 < 20 |only if walking
Continue following the path |goto 42.74,68.78 < 20 |only if walking
Follow the path |goto 41.91,69.75 < 20 |only if walking
kill Bough of Corruption##34521 |q 14005/1 |goto 40.7,69.3
|tip Use the abilities on your action bar.
step
Follow the path |goto 41.47,69.90 < 20 |only if walking
Continue following the path |goto 42.89,68.30 < 20 |only if walking
Follow the path |goto 43.16,64.59 < 20 |only if walking
talk Tarindrella##1992
turnin The Vengeance of Elune##14005 |goto 42.5,58.2
accept The Waters of Teldrassil##935 |goto 42.5,58.2
step
Follow the path |goto 40.81,51.73 < 20 |only if walking
Follow the road |goto 40.30,47.60 < 20 |only if walking
talk Corithras Moonrage##3515
|tip He paces around.
turnin The Waters of Teldrassil##935 |goto 41.05,45.69
accept Home of the Kaldorei##14039 |goto 41.05,45.69
step
Cross the bridge |goto 45.43,44.61 < 20 |only if walking
Follow the path |goto 46.81,42.29 < 20 |only if walking
Follow the path |goto 47.23,39.41 < 20 |only if walking
kill Oakenscowl##2166
|tip He's a red and green elemental that walks around this area.
collect Gargantuan Tumor##8136 |q 2499/1 |goto 47.4,35.2
step
Follow the path up |goto 47.00,36.94 < 20 |only if walking
Follow the path |goto 47.17,40.43 < 20 |only if walking
Cross the bridge |goto 45.74,44.13 < 20 |only if walking
talk Denalan##2080
turnin Oakenscowl##2499 |goto 43.94,44.20
step
click Hero's Call Board##250720
accept Hero's Call: Darkshore!##28490 |goto Darnassus/0 44.96,49.87
|only Draenei,Dwarf,Gnome,Human
step
talk Sentinel Cordressa Briarbow##42936
|tip Upstairs inside the building.
accept Breaking Waves of Change##26383 |goto 43.9,76.1
|only NightElf
step
talk Genn Greymane##48736
accept Breaking Waves of Change##26385 |goto 48.2,14.7
|only Worgen
step
talk Tyrande Whisperwind##7999
|tip Upstairs inside the building.
turnin Home of the Kaldorei##14039 |goto 43.0,78.1
step
Enter the Pink Portal |goto 36.90,50.40 |n
Reach Rut'theran Village |goto Teldrassil/0 55.10,88.53 |noway |c |q 26383 |only if haveq(26383)
Reach Rut'theran Village |goto Teldrassil/0 55.10,88.53 |noway |c |q 26385 |only if haveq(26385)
Reach Rut'theran Village |goto Teldrassil/0 55.10,88.53 |noway |c |q 28490 |only if haveq(28490)
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Worgen Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Gilneas",
condition_suggested=function() return raceclass('Worgen') and level <= 5 and not completedq(28517) and not raceclass("DeathKnight") and not ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(28517) or raceclass("DeathKnight") end,
condition_valid=function() return raceclass('Worgen') end,
condition_valid_msg="Worgen only.",
next="Leveling Guides\\Classic (1-60)\\Kalimdor\\Darkshore (5-60)",
startlevel=1,
endlevel=50
},[[
step
talk Prince Liam Greymane##34850
accept Lockdown!##14078 |goto Gilneas City/0 59.14,23.88
step
talk Lieutenant Walden##34863
turnin Lockdown!##14078 |goto 54.63,16.72
accept Something's Amiss##14091 |goto 54.63,16.72
step
talk Prince Liam Greymane##34913
turnin Something's Amiss##14091 |goto 59.82,22.18
accept All Hell Breaks Loose##14093 |goto 59.82,22.18
accept Evacuate the Merchant Square##14098 |goto 59.82,22.18
step
talk Gwen Armstead##34936
accept Salvage the Supplies##14094 |goto 59.56,26.78
stickystart "Collect_Salvaged_Supplies"
stickystart "Evacuate_Market_Homes"
step
kill 8 Rampaging Worgen##34884 |q 14093/1 |goto 60.86,32.45
step
label "Collect_Salvaged_Supplies"
click Supply Crate##234563+
|tip They look like wooden crates on the ground around this area.
collect 4 Salvaged Supplies##46896 |q 14094/1 |goto 58.45,28.96
step
label "Evacuate_Market_Homes"
click Merchant Square Door##195327+
|tip They look like the wooden doors of the buildings around this area.
Evacuate #3# Market Homes |q 14098/1 |goto 63.20,34.78
step
talk Gwen Armstead##34936
turnin Salvage the Supplies##14094 |goto 59.56,26.78
step
talk Prince Liam Greymane##34913
turnin All Hell Breaks Loose##14093 |goto 59.82,22.18
turnin Evacuate the Merchant Square##14098 |goto 59.82,22.18
accept Royal Orders##14099 |goto 59.82,22.18
step
Run down the stairs |goto 69.25,45.30 < 15 |only if walking
talk Gwen Armstead##35840
turnin Royal Orders##14099 |goto 70.77,55.04
accept Your Instructor##14265 |goto 70.77,55.04 |only Worgen Warrior
accept Someone's Looking for You##14269 |goto 70.77,55.04 |only Worgen Rogue
accept Shady Associates##14273 |goto 70.77,55.04 |only Worgen Warlock
accept Someone's Keeping Track of You##14275 |goto 70.77,55.04 |only Worgen Hunter
accept Arcane Inquiries##14277 |goto 70.77,55.04 |only Worgen Mage
accept Seek the Sister##14278 |goto 70.77,55.04 |only Worgen Priest
accept The Winds Know Your Name... Apparently##14280 |goto 70.77,55.04 |only Worgen Druid
step
talk Sergeant Cleese##35839
turnin Your Instructor##14265 |goto 67.56,64.27
accept Safety in Numbers##14286 |goto 67.56,64.27
only Worgen Warrior
step
talk Loren the Fence##35871
turnin Someone's Looking for You##14269 |goto 71.39,65.74
accept Safety in Numbers##14285 |goto 71.39,65.74
only Worgen Rogue
step
talk Vitus Darkwalker##35869
turnin Shady Associates##14273 |goto 71.44,64.43
accept Safety in Numbers##14287 |goto 71.44,64.43
only Worgen Warlock
step
talk Huntsman Blake##35874
turnin Someone's Keeping Track of You##14275 |goto 71.50,61.31
accept Safety in Numbers##14290 |goto 71.50,61.31
only Worgen Hunter
step
talk Myriam Spellwaker##35872
turnin Arcane Inquiries##14277 |goto 68.01,64.69
accept Safety in Numbers##14288 |goto 68.01,64.69
only Worgen Mage
step
talk Sister Almyra##35870
turnin Seek the Sister##14278 |goto 70.41,65.55
accept Safety in Numbers##14289 |goto 70.41,65.55
only Worgen Priest
step
talk Celestine of the Harvest##35873
turnin The Winds Know Your Name... Apparently##14280 |goto 70.18,65.90
accept Safety in Numbers##14291 |goto 70.18,65.90
only Worgen Druid
step
talk King Genn Greymane##35112
turnin Safety in Numbers##14286 |goto 65.79,77.68 |only Worgen Warrior
turnin Safety in Numbers##14285 |goto 65.79,77.68 |only Worgen Rogue
turnin Safety in Numbers##14287 |goto 65.79,77.68 |only Worgen Warlock
turnin Safety in Numbers##14290 |goto 65.79,77.68 |only Worgen Hunter
turnin Safety in Numbers##14288 |goto 65.79,77.68 |only Worgen Mage
turnin Safety in Numbers##14289 |goto 65.79,77.68 |only Worgen Priest
turnin Safety in Numbers##14291 |goto 65.79,77.68 |only Worgen Druid
accept Old Divisions##14157 |goto 65.79,77.68
step
talk Lord Godfrey##35115
accept While You're At It##24930 |goto 65.29,77.61
step
kill 5 Bloodfang Worgen##35118 |q 24930/1 |goto 60.77,70.91
step
Enter the building |goto 57.75,73.32 < 7 |walk
talk Captain Broderick##50371
|tip Inside the building.
turnin Old Divisions##14157 |goto 57.93,75.57
accept The Prison Rooftop##28850 |goto 57.93,75.57
step
Run up the stairs |goto 56.93,75.79 < 7 |walk
Follow the path |goto 56.22,73.33 < 7 |only if walking
talk Lord Darius Crowley##35077
turnin The Prison Rooftop##28850 |goto 55.22,62.93
accept By the Skin of His Teeth##14154 |goto 55.22,62.93
step
Kill the enemies that attack in waves
Survive While Holding Back the Worgen for 2 Minutes |q 14154/1 |goto 55.22,62.93
|tip You will receive a buff that lets you know how much time is remaining.
step
talk Lord Darius Crowley##35077
turnin By the Skin of His Teeth##14154 |goto 55.22,62.93
accept Brothers In Arms##26129 |goto 55.22,62.93
step
Follow the path |goto 53.35,67.52 < 7 |only if walking
Run down the stairs |goto 57.80,75.84 < 7 |only if walking
talk Lord Godfrey##35115
turnin While You're At It##24930 |goto 65.29,77.61
step
talk King Genn Greymane##35112
turnin Brothers In Arms##26129 |goto 65.79,77.68
accept The Rebel Lord's Arsenal##14159 |goto 65.79,77.68 |noobsolete
step
Click the Cellar Door |goto 55.70,81.57 < 5 |walk
Run down the stairs |goto 56.93,81.37 < 5 |walk
talk Josiah Avery##35369
|tip Downstairs inside the cellar.
turnin The Rebel Lord's Arsenal##14159 |goto 56.76,85.44
step
talk Lorna Crowley##35378
|tip Downstairs inside the cellar.
accept From the Shadows##14204 |goto 56.87,81.44
step
kill 6 Bloodfang Lurker##35463 |q 14204/1 |goto 48.14,76.57
|tip Use the "Mastiff's Attack Lurker" ability on your pet action bar to help you find the Bloodfang Lurkers.
step
Run down the stairs |goto 55.94,81.48 < 5 |walk
talk Lorna Crowley##35378
|tip Downstairs inside the cellar.
turnin From the Shadows##14204 |goto 56.87,81.44
accept Message to Greymane##14214 |goto 56.87,81.44
step
Leave the cellar |goto 55.94,81.48 < 5 |walk
talk King Genn Greymane##35550
turnin Message to Greymane##14214 |goto 59.23,83.75
accept Save Krennan Aranas##14293 |goto 59.23,83.75
step
_While Riding the Horse:_
|tip You will begin riding a horse automatically.
Use the Rescue Krennan ability
|tip Spam the "Rescue Krennan" ability on your action bar when your horse takes a big leap.
|tip You should see Krennan Aranas dangling in a tree.
Rescue Krennan Aranas |q 14293/1
step
Return to Lord Godfrey |goto 56.49,78.26 < 15 |q 14293
step
talk Lord Godfrey##35906
turnin Save Krennan Aranas##14293 |goto 55.70,80.70
accept Time to Regroup##14294 |goto 55.70,80.70
step
Cross the bridge |goto 44.59,83.19 < 15 |only if walking
talk King Genn Greymane##35911
turnin Time to Regroup##14294 |goto 30.39,73.15
step
talk Lord Darius Crowley##35552
accept Sacrifices##14212 |goto 31.10,72.36
step
clicknpc Click Crowley's Horse##44429
Ride Crowley's Horse |invehicle |goto 31.28,72.66 |q 14212
step
_While Riding the Horse:_
|tip You will begin riding a horse automatically.
Use the Throw Torch ability on Bloodfang Stalkers
|tip They will chase you.
Round Up #30# Bloodfang Stalkers |q 14212/1
step
Reach Tobias Mantle |goto 40.25,39.55 < 15 |q 14212
step
talk Tobias Mistmantle##35618
turnin Sacrifices##14212 |goto 40.55,39.42
accept By Blood and Ash##14218 |goto 40.55,39.42
step
clicknpc Rebel Cannon##35317
Get in the Cannon |invehicle |goto 38.79,37.41 |q 14218
step
kill 80 Bloodfang Stalker##35229 |q 14218/1 |goto 37.66,35.58
|tip Use the "Rebel Cannon" ability on your action bar.
step
talk Tobias Mistmantle##35618
turnin By Blood and Ash##14218 |goto 40.55,39.42
accept Never Surrender, Sometimes Retreat##14221 |goto 40.55,39.42
step
Enter the building |goto 40.76,40.33 < 5 |walk
talk Lord Darius Crowley##35566
|tip Inside the building.
turnin Never Surrender, Sometimes Retreat##14221 |goto 48.93,52.77
accept Last Stand##14222 |goto 48.93,52.77
step
kill 8 Frenzied Stalker##35627 |q 14222/1 |goto 42.70,43.28
|tip Inside the building.
step
talk Lord Darius Crowley##35566
|tip Inside the building.
turnin Last Stand##14222 |goto 48.93,52.77
step
Watch the dialogue
talk King Genn Greymane##36332
accept Last Chance at Humanity##14375 |goto Gilneas 2/0 36.41,61.25
step
talk Lord Godfrey##36170
accept Among Humans Again##14313 |goto 36.51,62.26
step
talk Krennan Aranas##36132
|tip Inside the building.
turnin Among Humans Again##14313 |goto 37.41,63.24
accept In Need of Ingredients##14320 |goto 37.41,63.24
step
click Crate of Mandrake Essence##196394
turnin In Need of Ingredients##14320 |goto 32.77,66.40
step
clicknpc Slain Watchman##36205
|tip You may need to relog to interact with this NPC.
accept Invasion##14321 |goto 32.76,66.15
step
talk Gwen Armstead##34571
|tip Inside the building.
turnin Invasion##14321 |goto 37.41,63.35
accept Kill or Be Killed##14336 |goto 37.41,63.35
step
talk Prince Liam Greymane##36140
|tip He walks around this area.
turnin Kill or Be Killed##14336 |goto 35.45,66.44
accept Hold the Line##14347 |goto 35.45,66.44
accept You Can't Take 'Em Alone##14348 |goto 35.45,66.44
stickystart "Slay_Forsaken_Invaders"
step
click Black Gunpowder Kegs##196403+
|tip They look like brown barrels on the ground around this area.
collect Black Gunpowder Keg##49202 |n
use the Black Gunpowder Keg##49202
|tip Use it on Horrid Abominations.
|tip They look like big flesh monsters around this area.
Throw Gunpowder Kegs at #4# Horrid Abominations |q 14348/1 |goto 34.18,68.01
step
label "Slay_Forsaken_Invaders"
kill 10 Forsaken Invader##34511 |q 14347/1 |goto 35.76,67.06
step
talk Prince Liam Greymane##36140
|tip He walks around this area.
turnin Hold the Line##14347 |goto 35.45,66.44
turnin You Can't Take 'Em Alone##14348 |goto 35.45,66.44
accept Holding Steady##14366 |goto 35.45,66.44
step
talk Gwen Armstead##34571
|tip Inside the building.
turnin Holding Steady##14366 |goto 37.41,63.35
accept The Allens' Storm Cellar##14367 |goto 37.41,63.35
step
Run down the stairs |goto 28.44,64.27 < 5 |walk
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
turnin The Allens' Storm Cellar##14367 |goto 28.97,63.93
accept Unleash the Beast##14369 |goto 28.97,63.93
accept Two By Sea##14382 |goto 28.97,63.93
step
talk Melinda Hammond##36291
|tip Downstairs inside the cellar.
accept Save the Children!##14368 |goto 28.93,64.02
stickystart "Slay_Forsaken_Combatants"
step
talk James##36289
|tip He walks around this area.
Rescue James |q 14368/3 |goto 28.58,66.75
step
talk Ashley##36288
|tip Upstairs inside the building.
Rescue Ashley |q 14368/2 |goto 27.89,66.66
step
talk Cynthia##36287
Rescue Cynthia |q 14368/1 |goto 29.59,69.31
step
kill Forsaken Machinist##36292
clicknpc Forsaken Catapult##36283
Take Control of a Forsaken Catapult |invehicle |goto 26.24,70.70 |q 14382
step
_Aim at the Ship:_
Launch Yourself Onto the Deck of the Forsaken Ship |goto 24.68,75.90 < 30 |q 14382
|tip Use the "Launch" ability on your action bar.
step
Run down the stairs |goto 24.72,76.32 < 7 |walk
kill Captain Anson##36397 |q 14382/1 |goto 23.77,74.70
|tip Downstairs in the ship.
step
kill Forsaken Machinist##36292
clicknpc Forsaken Catapult##36283
Take Control of a Forsaken Catapult |invehicle |goto 29.60,74.13 |q 14382
step
_Aim at the Ship:_
Launch Yourself Onto the Deck of the Forsaken Ship |goto 27.81,80.73 < 30 |q 14382
|tip Use the "Launch" ability on your action bar.
step
Run down the stairs |goto 27.85,81.12 < 7 |walk
kill Captain Morris##36399 |q 14382/2 |goto 26.85,79.32
|tip Downstairs in the ship.
step
label "Slay_Forsaken_Combatants"
Kill Forsaken enemies around this area
Slay #8# Forsaken Combatants |q 14369/1 |goto 25.29,70.30
step
Run down the stairs |goto 28.44,64.27 < 7 |walk
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
turnin Unleash the Beast##14369 |goto 28.97,63.93
turnin Two By Sea##14382 |goto 28.97,63.93
step
talk Melinda Hammond##36291
|tip Downstairs inside the cellar.
turnin Save the Children!##14368 |goto 28.93,64.02
step
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
accept Leader of the Pack##14386 |goto 28.97,63.93
step
use the Mastiff Whistle##49240
|tip Use it near Dark Ranger Thyala.
kill Dark Ranger Thyala##36312 |q 14386/1 |goto 23.48,67.53
step
Run down the stairs |goto 28.44,64.27 < 7 |walk
talk Lord Godfrey##36290
|tip Downstairs inside the cellar.
turnin Leader of the Pack##14386 |goto 28.97,63.93
accept As the Land Shatters##14396 |goto 28.97,63.93
step
talk Prince Liam Greymane##36451
turnin As the Land Shatters##14396 |goto 29.04,65.04
accept Gasping for Breath##14395 |goto 29.04,65.04
step
label "Find_Drowning_Watchmen"
clicknpc Drowning Watchman##36440+
|tip They look like humans underwater around this area.
Start Carrying a Drowning Watchman |havebuff spell:68735 |goto 27.26,69.77 |q 14395
step
Rescue #4# Drowning Watchmen |q 14395/1 |goto 29.04,65.04
Click here to find another Drowning Watchman |confirm |next "Find_Drowning_Watchmen"
step
talk Prince Liam Greymane##36451
turnin Gasping for Breath##14395 |goto 29.04,65.04
accept Evacuation##14397 |goto 29.04,65.04
step
talk Gwen Armstead##36452
turnin Evacuation##14397 |goto 37.63,65.23
accept Grandma Wahl##14398 |goto 37.63,65.23
accept The Hayward Brothers##14403 |goto 37.63,65.23
accept The Crowley Orchard##14406 |goto 37.63,65.23
step
talk Lorna Crowley##36457
turnin The Crowley Orchard##14406 |goto 37.68,72.75
accept The Hungry Ettin##14416 |goto 37.68,72.75
step
clicknpc Mountain Horse##36540
Ride a Mountain Horse |invehicle |goto 39.70,79.03 |q 14416
step
clicknpc Mountain Horse##36540+
|tip Use the Round Up Horse ability on your action bar.
|tip Watch out for the elite Ettin walking around this area.
Round Up 4 Other Mountain Horses
confirm |q 14416
step
Rescue #5# Mountain Horses |q 14416/1 |goto 37.68,72.75
step
talk Lorna Crowley##36457
turnin The Hungry Ettin##14416 |goto 37.68,72.75
step
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma Wahl##14398 |goto 32.52,75.48
accept Grandma's Lost It Alright##14399 |goto 32.52,75.48
step
click Linen-Wrapped Book##196473
|tip It looks like a yellow book on the ground.
collect Linen-Wrapped Book##49280 |q 14399/1 |goto 33.96,77.37
step
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma's Lost It Alright##14399 |goto 32.52,75.48
accept I Can't Wear This##14400 |goto 32.52,75.48
step
click Grandma's Good Clothes##196472
collect Grandma's Good Clothes##49279 |q 14400/1 |goto 32.03,75.45
step
talk Grandma Wahl##36458
|tip Inside the building.
turnin I Can't Wear This##14400 |goto 32.52,75.48
accept Grandma's Cat##14401 |goto 32.52,75.48
step
clicknpc Chance##36459
kill Lucius the Cruel##36461
collect Chance the Cat##49281 |q 14401/1 |goto 35.16,74.82
step
talk Grandma Wahl##36458
|tip Inside the building.
turnin Grandma's Cat##14401 |goto 32.52,75.48
step
talk Sebastian Hayward##36456
turnin The Hayward Brothers##14403 |goto 36.88,84.19
accept Not Quite Shipshape##14404 |goto 36.88,84.19
accept Washed Up##14412 |goto 36.88,84.19
stickystart "Slay_Forsaken_Castaways"
step
click Planks of Wood##196809
collect Planks of Wood##49338 |q 14404/2 |goto 36.10,86.49
step
click Shipwright's Tools##196810
|tip Inside the building.
collect Shipwright's Tools##49337 |q 14404/1 |goto 37.46,87.15
step
click Barrel of Coal Tar##196808
collect Coal Tar##49339 |q 14404/3 |goto 37.57,85.97
step
label "Slay_Forsaken_Castaways"
kill 6 Forsaken Castaway##36488 |q 14412/1 |goto 36.88,85.00
step
talk Sebastian Hayward##36456
turnin Not Quite Shipshape##14404 |goto 36.88,84.19
turnin Washed Up##14412 |goto 36.88,84.19
accept Escape By Sea##14405 |goto 36.88,84.19
step
talk Gwen Armstead##36452
turnin Escape By Sea##14405 |goto 37.63,65.23
accept To Greymane Manor##14465 |goto 37.63,65.23
step
Travel to Greymane Manor |goto 29.23,54.17 < 20 |q 14465
step
Follow the path up |goto 29.90,53.51 < 20 |only if walking
talk Queen Mia Greymane##36606
|tip Inside the building.
turnin To Greymane Manor##14465 |goto Gilneas 2/2 62.09,49.58
accept The King's Observatory##14466 |goto 62.09,49.58
step
Follow the path |goto Gilneas 2/3 48.57,51.18 < 10 |walk
Run up the stairs |goto 49.54,34.12 < 10 |walk
Continue up the stairs |goto 39.48,14.81 < 10 |walk
talk King Genn Greymane##36743
|tip At the top of the tower.
turnin The King's Observatory##14466 |goto 41.94,20.21
accept Alas, Gilneas##14467 |goto 41.94,20.21
step
talk King Genn Greymane##36743
|tip At the top of the tower.
accept Exodus##24438 |goto 41.94,20.21
step
Run down the stairs |goto 46.51,22.78 < 7 |walk
clicknpc Stagecoach Carriage##44928
Ride in the Stagecoach Carriage |invehicle |goto Gilneas 2/0 28.88,54.19 |q 24438
step
Travel to the Stagecoach Crash Site |goto 51.6,80.0 < 20 |q 24438
step
talk Prince Liam Greymane##37065
turnin Exodus##24438 |goto 51.81,80.49
accept Stranded at the Marsh##24468 |goto 51.81,80.49
step
kill Swamp Crocolisk##37078+
Rescue #5# Crash Survivors |q 24468/1 |goto 52.76,72.38
step
talk Prince Liam Greymane##37065
turnin Stranded at the Marsh##24468 |goto 51.81,80.49
accept Introductions Are in Order##24472 |goto 51.81,80.49
stickystart "Slay_Ogre_Minions"
step
Follow the path up |goto 50.81,83.32 < 15 |only if walking
click Koroth's Banner##201594
collect Koroth's Banner##49742 |q 24472/2 |goto 46.75,83.20
step
label "Slay_Ogre_Minions"
kill 4 Ogre Minion##36293 |q 24472/1 |goto 46.73,86.38
step
talk Prince Liam Greymane##37065
turnin Introductions Are in Order##24472 |goto 51.81,80.49
accept Stormglen##24483 |goto 51.81,80.49
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Stormglen##24483 |goto 59.86,91.70
accept Pest Control##24484 |goto 59.86,91.70
step
talk Willa Arnes##38792
|tip Inside the building.
home Stormglen Village |goto 60.06,91.67 |q 24495 |future
step
talk Lorna Crowley##37815
|tip Inside the building.
accept Pieces of the Past##24495 |goto 60.26,91.85
stickystart "Collect_Old_Journal_Pages"
step
kill 6 Vilebrood Skitterer##36813 |q 24484/1 |goto 65.03,90.82
step
label "Collect_Old_Journal_Pages"
click Old Journal Page##201607+
|tip They look like pieces of paper laying on the ground and on boxes around this area.
collect 6 Old Journal Page##49760 |q 24495/1 |goto 65.03,90.82
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Pest Control##24484 |goto 59.86,91.70
accept Queen-Sized Troubles##24501 |goto 59.86,91.70
step
talk Lorna Crowley##37815
|tip Inside the building.
turnin Pieces of the Past##24495 |goto 60.26,91.85
step
kill Rygna##37045 |q 24501/1 |goto 68.35,81.66
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Queen-Sized Troubles##24501 |goto 59.86,91.70
step
talk Lorna Crowley##37815
|tip Inside the building.
accept The Blackwald##24578 |goto 60.26,91.85
step
talk Belrysa Starbreeze##37822
|tip Inside the building.
turnin The Blackwald##24578 |goto 63.34,82.91
accept Losing Your Tail##24616 |goto 63.34,82.91
step
use Belrysa's Talisman##49944
|tip Use it to Break Free.
|tip Walk over the Freezing Trap lying in the road first.
kill Dark Scout##37953 |q 24616/1 |goto 63.96,81.28
step
talk Belrysa Starbreeze##37822
|tip Inside the building.
turnin Losing Your Tail##24616 |goto 63.35,82.91
accept Tal'doren, the Wild Home##24617 |goto 63.35,82.91
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Tal'doren, the Wild Home##24617 |goto 68.71,73.25
accept At Our Doorstep##24627 |goto 68.71,73.25
step
talk Vassandra Stormclaw##37873
|tip Inside the hollow tree.
accept Preparations##24628 |goto 69.30,72.97
stickystart "Collect_Moonleaves"
step
kill 6 Howling Banshee##37757 |q 24627/1 |goto 60.54,76.46
step
label "Collect_Moonleaves"
click Moonleaf##201914+
|tip They look like small plants at the base of trees around this area.
collect 6 Moonleaf##50017 |q 24628/1 |goto 60.54,76.46
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin At Our Doorstep##24627 |goto 68.71,73.25
accept Take Back What's Ours##24646 |goto 68.71,73.25
step
talk Vassandra Stormclaw##37873
|tip Inside the hollow tree.
turnin Preparations##24628 |goto 69.30,72.97
step
use the Horn of Tal'doren##50134
|tip Use it near the Veteran Dark Rangers.
click Worn Coffer##201939
|tip Inside the building.
collect Mysterious Artifact##10442 |q 24646/1 |goto 57.51,75.58
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Take Back What's Ours##24646 |goto 68.71,73.25
accept Neither Human Nor Beast##24593 |goto 68.71,73.25
step
click Well of Fury##201950
|tip Inside the hollow tree.
Activate the Well of Fury |q 24593/1 |goto 68.97,72.81
step
click Well of Tranquility##201951
|tip Inside the hollow tree.
Activate the Well of Tranquility |q 24593/2 |goto 69.25,73.10
step
click Well of Balance##201952
|tip Inside the hollow tree.
Activate the Well of Balance |q 24593/3 |goto 69.14,73.52
step
talk Lord Darius Crowley##37195
|tip Inside the hollow tree.
turnin Neither Human Nor Beast##24593 |goto 68.71,73.25
accept Return to Stormglen##24673 |goto 68.71,73.25
step
talk Gwen Armstead##37102
|tip Inside the building.
turnin Return to Stormglen##24673 |goto 59.86,91.71
accept Onwards and Upwards##24672 |goto 59.86,91.71
step
Follow the path up |goto 68.33,86.72 < 15 |only if walking
talk Krennan Aranas##37874
turnin Onwards and Upwards##24672 |goto 72.73,80.04
accept Betrayal at Tempest's Reach##24592 |goto 72.73,80.04
step
use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff 132320 |goto 76.49,75.62 |q 24592
step
Cross the bridge |goto 82.65,69.20 < 15 |only if walking
kill Baron Ashbury##37735 |q 24592/1 |goto 85.29,74.27
|tip He walks around this area.
|tip Avoid the Mountain Mastiffs, they can still detect you and will attack.
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
step
use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff 132320 |q 24592
step
Cross the bridge |goto 84.11,72.74 < 15 |only if walking
kill Lord Walden##37733 |q 24592/2 |goto 78.16,66.03
|tip He walks around this area and inside the building.
|tip Avoid the Mountain Mastiffs, they can still detect you and will attack.
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
step
use Krennan's Potion of Stealth##50218
Become Stealthed |havebuff 132320 |q 24592
step
talk King Genn Greymane##37876
|tip Use Krennan's Potion of Stealth again, if you accidentally lose stealth.
turnin Betrayal at Tempest's Reach##24592 |goto 78.27,72.07
accept Flank the Forsaken##24677 |goto 78.27,72.07
step
talk Lord Hewell##38764 |goto 78.33,71.88
Tell him _"I need a horse."_
Borrow a Horse |invehicle |goto 78.33,71.88 |q 24677
step
Travel to Livery Outpost |goto 71.61,39.59 < 20 |q 24677
step
talk Lorna Crowley##37783
turnin Flank the Forsaken##24677 |goto 70.87,39.84
accept Liberation Day##24575 |goto 70.87,39.84
step
talk Magda Whitewall##38143
accept Last Meal##24675 |goto 70.65,39.70
step
talk Marcus##37803
|tip He walks around this area.
accept Slaves to No One##24674 |goto 70.81,40.04
step
kill Brown Stag##37786+
collect 10 Side of Stag Meat##50219 |q 24675/1 |goto 73.04,44.20
You can find more around [76.85,44.98]
stickystart "Free_Enslaved_Gilneans"
step
Follow the path |goto Gilneas 2/1 28.00,61.14 < 15 |walk |notravel
Continue following the path |goto Gilneas 2/1 34.98,47.96 < 15 |walk |notravel
Follow the path |goto Gilneas 2/1 33.60,31.82 < 15 |walk |notravel
Follow the path |goto Gilneas 2/1 40.64,27.71 < 15 |walk |notravel
Continue on the path |goto Gilneas 2/1 53.69,33.93 < 15 |walk |notravel
Follow the path down |goto Gilneas 2/1 59.64,44.86 < 15 |walk |notravel
kill Brothogg the Slavemaster##37802 |q 24674/1 |goto Gilneas 2/1 54.36,81.07 |notravel
|tip Inside the mine.
step
label "Free_Enslaved_Gilneans"
kill Forsaken Slavedriver##37701+
collect Slaver's Key##49881+ |n
click Ball and Chain##207079
|tip They look like silver balls attached to the Enslaved Villagers' legs inside the mine.
Free #5# Enslaved Gilnean |q 24575/1 |goto 60.77,55.58 |notravel
step
talk Lorna Crowley##37783
turnin Liberation Day##24575 |goto Gilneas 2/0 70.87,39.84
step
talk Magda Whitewall##38143
turnin Last Meal##24675 |goto 70.65,39.70
step
talk Marcus##37803
|tip He walks around this area.
turnin Slaves to No One##24674 |goto 70.81,40.04
step
talk Lorna Crowley##37783
accept Push Them Out##24676 |goto 70.87,39.84
stickystart "Slay_Forsaken_Infantry"
step
kill Executor Cornell##37686 |q 24676/2 |goto 72.85,28.42
step
kill Valnov the Mad##37685 |q 24676/3 |goto 74.15,27.38
step
label "Slay_Forsaken_Infantry"
kill 4 Forsaken Infantry##37692 |q 24676/1 |goto 73.49,29.14
step
talk Lorna Crowley##37783
turnin Push Them Out##24676 |goto 70.87,39.84
accept The Battle for Gilneas City##24904 |goto 70.87,39.84
step
Cross the bridge |goto 69.83,41.54 < 10 |only if walking
Run down the stairs |goto Gilneas City/0 69.23,45.35 < 10 |only if walking
clicknpc Damaged Catapult##38377
Take Control of the Damaged Catapult |invehicle |goto 60.11,77.28 |q 24904
step
kill Gorerot##38331 |q 24904/1 |goto 62.56,73.61
|tip He walks around this area.
|tip Use the "Fiery Boulder" ability on your action bar.
step
Cross the bridge |goto 44.61,83.08 < 10 |only if walking
use the Rapier of the Gilnean Patriots##50334
|tip Use it to heal your Allies around this area.
kill Soultethered Banshee##38473+
|tip Kill the Soultethered Banshees to damage Lady Sylvanas Windrunner.
kill Lady Sylvanas Windrunner##38469
Complete the Battle for Gilneas City |q 24904/2 |goto 36.12,62.62
step
Watch the dialogue
talk Lorna Crowley##38611
|tip Inside the building.
turnin The Battle for Gilneas City##24904 |goto 38.59,60.23
accept The Hunt For Sylvanas##24902 |goto 38.59,60.23
step
Follow Tobias Mistmantle
|tip He will appear on your minimap as a yellow dot.
Watch the dialogue
|tip Inside the building.
Hunt for Sylvanas |q 24902/1 |goto 45.08,52.46
step
talk Lorna Crowley##38611
|tip Inside the building.
turnin The Hunt For Sylvanas##24902 |goto 38.59,60.23
accept Vengeance or Survival##24903 |goto 38.59,60.23
step
talk King Genn Greymane##38539
|tip Inside the building.
turnin Vengeance or Survival##24903 |goto 32.36,57.01
accept Slowing the Inevitable##24920 |goto 32.36,57.01
step
clicknpc Captured Riding Bat##38540
Ride the Captured Riding Bat |invehicle |goto 30.27,60.95 |q 24920
stickystart "Slay_Invading_Forsaken"
step
kill 6 Forsaken Catapult##38287 |q 24920/1 |goto Gilneas/0 55.52,32.28 |notravel
|tip Use the "Iron Bomb" ability on your action bar.
step
label "Slay_Invading_Forsaken"
kill 40 Invading Forsaken##38364 |q 24920/2 |goto Gilneas/0 55.52,32.28 |notravel
|tip Use the "Iron Bomb" ability on your action bar.
step
Return to Greymane Court |goto Gilneas City/0 30.27,60.95 < 10 |notravel |q 24920
|tip Use the "Fly Back" ability on your action bar.
step
talk King Genn Greymane##38539
|tip Inside the building.
turnin Slowing the Inevitable##24920 |goto 32.36,57.01
accept Knee-Deep##24678 |goto 32.36,57.01
step
Run down the stairs |goto 33.00,57.55 < 5 |walk
Continue down the stairs |goto 33.79,56.69 < 5 |walk
Follow the path |goto 22.53,62.21 > 10000 |walk
Run up the ramp |goto Gilneas 2/0 52.32,55.57 < 15 |walk
Run up the stairs |goto Gilneas 2/0 49.87,57.20 < 7 |walk
use the Half-Burnt Torch##50220
|tip Use it repeatedly to keep the rats and spiders from attacking you.
Enter the House |goto Gilneas 2/0 49.78,57.95 < 10 |q 24678
step
talk Krennan Aranas##38144
turnin Knee-Deep##24678 |goto 49.82,56.93
accept Laid to Rest##24602 |goto 49.82,56.93
step
click Disturbed Soil##201871+
|tip They look like piles of dirt on the ground around this area.
collect 5 Unearthed Memento##49921 |q 24602/1 |goto 48.29,55.48
step
talk Krennan Aranas##38144
turnin Laid to Rest##24602 |goto 49.82,56.93
accept Patriarch's Blessing##24679 |goto 49.82,56.93
step
use the Blessed Offerings##51956
Place the Offering |q 24679/1 |goto 48.87,53.05
step
talk Krennan Aranas##38144
turnin Patriarch's Blessing##24679 |goto 49.82,56.93
accept Keel Harbor##24680 |goto 49.82,56.93
step
talk Lord Darius Crowley##38149
turnin Keel Harbor##24680 |goto 41.93,37.63
accept They Have Allies, But So Do We##24681 |goto 41.93,37.63
step
clicknpc Glaive Thrower##38150
Take Control of a Glaive Thrower |invehicle |goto 42.41,37.81 |q 24681
stickystart "Slay_Wolfmaw_Outriders"
stickystart "Slay_Orcish_War_Machines"
step
kill 40 Orc Raider##37916 |q 24681/1 |goto 33.93,36.89
|tip Use the abilities on your action bar.
step
label "Slay_Wolfmaw_Outriders"
kill 8 Wolfmaw Outrider##37938 |q 24681/2 |goto 33.93,36.89
|tip Use the abilities on your action bar.
step
label "Slay_Orcish_War_Machines"
kill 4 Orcish War Machine##37921 |q 24681/3 |goto 26.95,32.33
|tip They look like wooden siege vehicles spread out around this area.
|tip Use the abilities on your action bar.
step
Return to Keel Harbor |goto 39.39,37.99 < 20 |q 24681
step
Click the yellow arrow on your action bar |outvehicle |q 24681
step
talk Lord Darius Crowley##38149
turnin They Have Allies, But So Do We##24681 |goto 41.93,37.63
step
talk Lorna Crowley##43727
accept Endgame##26706 |goto 41.65,36.51
step
Watch the dialogue
clicknpc Hippogryph##43747
|tip Wait until Tobias Mistmantle says "Hop on a hippogryph, now's our chance!" nearby.
Ride the Hippogryph |invehicle |goto 41.65,36.18 |q 26706
step
Watch the dialogue
|tip Click the Coiled Rope to be lowered down, then follow and protect Lorna Crowley.
|tip She will go to the bottom level of the gunship and plant explosives.
kill Korm Bonegrind##43567
Destroy the Gunship |q 26706/1
step
Return to Keel Harbor |goto 42.65,38.26 < 20 |q 26706
step
talk Lorna Crowley##43727
turnin Endgame##26706 |goto 41.65,36.51
step
talk Admiral Nightwind##36616
accept Rut'theran Village##14434 |goto 42.59,35.95
step
talk Krennan Aranas##42968
accept The Howling Oak##28517 |goto Teldrassil/0 55.23,89.18
step
talk Genn Greymane##48736
|tip Inside the hollow tree.
turnin The Howling Oak##28517 |goto Darnassus/0 48.13,14.42
accept Breaking Waves of Change##26385 |goto 48.13,14.42
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Dun Morogh (1-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Elwynn Forest (1-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Loch Modan (5-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Westfall (5-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Redridge Mountains (7-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Duskwood (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Wetlands (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Arathi Highlands (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Northern Stranglethorn (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\The Cape of Stranglethorn (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\The Hinterlands (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Western Plaguelands (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Badlands (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Blasted Lands (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Burning Steppes (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Eastern Plaguelands (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Searing Gorge (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Swamp of Sorrows (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Azuremyst Isle (1-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Bloodmyst Isle (1-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Darkshore (5-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Ashenvale (7-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Stonetalon Mountains (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Southern Barrens (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Desolace (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Dustwallow Marsh (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Feralas (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Felwood (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Silithus (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Tanaris (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Thousand Needles (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Un'Goro Crater (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Winterspring (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (10-60)\\Hellfire Peninsula (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (10-60)\\Zangarmarsh (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (10-60)\\Terokkar Forest (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (10-60)\\Nagrand (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (10-60)\\Blade's Edge Mountains (20-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (10-60)\\Netherstorm (25-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Burning Crusade (10-60)\\Shadowmoon Valley (25-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Wrath of the Lich King (10-60)\\Borean Tundra (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Wrath of the Lich King (10-60)\\Howling Fjord (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Wrath of the Lich King (10-60)\\Dragonblight (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Wrath of the Lich King (10-60)\\Grizzly Hills (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Wrath of the Lich King (10-60)\\Zul'Drak (20-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Wrath of the Lich King (10-60)\\Sholazar Basin (20-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Wrath of the Lich King (10-60)\\The Storm Peaks (25-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Wrath of the Lich King (10-60)\\Icecrown (25-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Cataclysm (10-60)\\Mount Hyjal (30-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Cataclysm (10-60)\\Vashj'ir (30-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Cataclysm (10-60)\\Deepholm (30-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Cataclysm (10-60)\\Uldum (30-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Cataclysm (10-60)\\Twilight Highlands (30-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Loremaster\\Loremaster of Eastern Kingdoms")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Loremaster\\Loremaster of Kalimdor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Loremaster\\Loremaster of Outland")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Loremaster\\Loremaster of Northrend")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Loremaster\\Loremaster of Cataclysm")
