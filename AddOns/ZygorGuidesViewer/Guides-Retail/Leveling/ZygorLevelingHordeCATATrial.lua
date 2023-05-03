local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHCATA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Blood Elf (1-5)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Eversong 1-5",
condition_valid=function() return raceclass('BloodElf') end,
condition_valid_msg="Blood Elf only.",
condition_suggested=function() return raceclass('BloodElf') and level <= 5 and not completedq(8338) and not raceclass("DeathKnight") and not ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Eversong Woods (1-60)",
startlevel=1,
endlevel=5,
},[[
step
talk Magistrix Erona##15278
accept Reclaiming Sunstrider Isle##8325 |goto Sunstrider Isle/0 61.03,45.13
step
kill 6 Mana Wyrm##15274 |q 8325/1 |goto 56.81,47.91
step
talk Magistrix Erona##15278
turnin Reclaiming Sunstrider Isle##8325 |goto 61.03,45.13
accept Unfortunate Measures##8326 |goto 61.03,45.13
step
Kill Springpaw enemies around this area
collect 8 Lynx Collar##20797 |q 8326/1 |goto 67.11,37.51
You can find more around
[54.49,55.64]
[57.70,65.91]
[66.95,33.60]
[63.78,33.46]
step
talk Magistrix Erona##15278
turnin Unfortunate Measures##8326 |goto 61.03,45.13
accept Report to Lanthan Perilon##8327 |goto 61.03,45.13
step
talk Well Watcher Solanian##15295
|tip Upstairs inside the building.
accept The Shrine of Dath'Remar##37442 |goto 63.96,42.83
accept Solanian's Belongings##37443 |goto 63.96,42.83
step
talk Arcanist Ithanas##15296
accept A Fistful of Slivers##37440 |goto 61.82,39.34
only if BloodElf
step
talk Arcanist Helion##15297
accept Thirst Unending##37439 |goto 58.47,38.79
only if BloodElf
step
Unleash the Arcane Torrent |q 37439/1 |goto 55.86,43.44
|tip Use your "Arcane Torrent" ability on your action bar on a Mana Wyrm.
|tip Make sure to be within 8 yards of the Wyrm when casting the spell.
only if BloodElf
step
kill Mana Wyrm##15274+
collect 6 Arcane Sliver##20482 |q 37440/1 |goto 50.60,41.32
only if BloodElf
step
click Shrine of Dath'Remar##180516
Read the Shrine of Dath'Remar |q 37442/1 |goto 35.26,40.21
step
click Scroll of Scourge Magic##180511
collect Scroll of Scourge Magic##20471 |q 37443/2 |goto 40.44,50.47
step
click Solanian's Scrying Orb##180510
collect Solanian's Scrying Orb##20470 |q 37443/1 |goto 52.17,69.41
step
click Solanian's Journal##180512
collect Solanian's Journal##20472 |q 37443/3 |goto 60.04,57.13
step
talk Well Watcher Solanian##15295
|tip Upstairs inside the building.
turnin The Shrine of Dath'Remar##37442 |goto 63.96,42.83
turnin Solanian's Belongings##37443 |goto 63.96,42.83
step
talk Arcanist Ithanas##15296
turnin A Fistful of Slivers##37440 |goto 61.82,39.34
only if BloodElf
step
talk Arcanist Helion##15297
turnin Thirst Unending##37439 |goto 58.47,38.79
only if BloodElf
step
talk Lanthan Perilon##15281
turnin Report to Lanthan Perilon##8327 |goto 52.88,49.79
accept Aggression##8334 |goto 52.88,49.79
stickystart "Slay_Feral_Tenders"
step
kill 7 Tender##15271 |q 8334/1 |goto 43.70,55.05
step
label "Slay_Feral_Tenders"
kill 7 Feral Tender##15294 |q 8334/2 |goto 43.70,55.05
step
talk Lanthan Perilon##15281
turnin Aggression##8334 |goto 52.88,49.79
accept Felendren the Banished##8335 |goto 52.88,49.79
stickystart "Accept_Tainted_Arcane_Sliver"
stickystart "Slay_Arcane_Wraiths"
stickystart "Slay_Tainted_Arcane_Wraiths"
step
Run up the ramps |goto 44.39,59.05 < 15 |only if walking
Continue up the ramps |goto 38.75,61.71 < 15 |only if walking
kill Felendren the Banished##15367
|tip At the top of the floating structures.
collect Felendren's Head##20799 |q 8335/3 |goto 38.93,63.98
step
label "Accept_Tainted_Arcane_Sliver"
Kill Arcane enemies around this area
collect Tainted Arcane Sliver##20483 |n
accept Tainted Arcane Sliver##8338 |goto 38.85,63.92
|tip You will eventually automatically accept this quest after looting.
only if BloodElf
step
label "Slay_Arcane_Wraiths"
kill 8 Arcane Wraith##15273 |q 8335/1 |goto 38.85,63.92
step
label "Slay_Tainted_Arcane_Wraiths"
kill 2 Tainted Arcane Wraith##15298 |q 8335/2 |goto 38.85,63.92
step
talk Lanthan Perilon##15281
turnin Felendren the Banished##8335 |goto 52.88,49.79
accept Aiding the Outrunners##8347 |goto 52.88,49.79
step
talk Arcanist Helion##15297
turnin Tainted Arcane Sliver##8338 |goto 58.47,38.79
only if BloodElf
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Death Knight (8-10)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Death Knight",
condition_valid=function() return raceclass('DeathKnight') end,
condition_valid_msg="Death Knight only.",
condition_suggested=function() return raceclass{'Orc','Undead','Tauren','Troll','BloodElf','Goblin'} and raceclass('DeathKnight') and not completedq(13189) and level < 15 and not ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(13189) end,
startlevel=8,
endlevel=10,
},[[
step
talk The Lich King##25462
accept In Service Of The Lich King##12593 |goto Plaguelands: The Scarlet Enclave/0 51.34,35.21
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin In Service Of The Lich King##12593 |goto 48.24,28.26
accept The Emblazoned Runeblade##12619 |goto 48.24,28.26
step
click Battle-worn Sword##190584
collect Battle-worn Sword##38607 |goto 47.39,30.96 |q 12619
step
use Battle-worn Sword##38607
collect Runebladed Sword##38631 |q 12619/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Emblazoned Runeblade##12619 |goto 48.24,28.26
accept Runeforging: Preparation For Battle##12842 |goto 48.24,28.26
step
cast Runeforging##53428
|tip Use your "Runeforging" ability near the Runeforge.
|tip Open your character's equipment window and engrave your weapon with a rune.
Emblazon Your Weapon |q 12842/1 |goto 47.39,31.24
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin Runeforging: Preparation For Battle##12842 |goto 48.24,28.26
accept The Endless Hunger##12848 |goto 48.24,28.26
step
click Acherus Soul Prison##8115
|tip They look like horned skulls on the wall, chaining the prisoners around this area.
Watch the dialogue
kill Unworthy Initiate##29565
Dominate an Unworthy Initiate |q 12848/1 |goto 48.33,28.98
step
talk Instructor Razuvious##28357
|tip He walks around this area.
turnin The Endless Hunger##12848 |goto 48.24,28.26
accept The Eye Of Acherus##12636 |goto 48.24,28.26
step
talk The Lich King##25462
turnin The Eye Of Acherus##12636 |goto 51.34,35.21
accept Death Comes From On High##12641 |goto 51.34,35.21
step
click Eye of Acherus Control Mechanism##191609
Take Control of the Eye of Acherus |havebuff 136224 |goto 52.16,35.18 |q 12641
step
_Go Northeast:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the blacksmith building with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Forge |q 12641/1
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the big fort building with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Scarlet Hold |q 12641/3
step
_Go West:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the town hall building with a clock tower, with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the New Avalon Town Hall |q 12641/2
step
_Go South:_
|tip If you stay floating high enough, the soldiers will not attack you.
|tip Go to the small church building with a floating red arrow above it.
Use the "Siphon of Acherus" ability |petaction 1
|tip Get near the floating red arrow.
Analyze the Chapel of the Crimson Flame |q 12641/4
step
Use the "Recall Eye of Acherus" ability |petaction 5
Click here when you return to Ebon Hold |confirm |q 12641
step
talk The Lich King##25462
turnin Death Comes From On High##12641 |goto 51.34,35.21
accept The Might Of The Scourge##12657 |goto 51.34,35.21
step
Walk onto the teleport pad |goto 50.49,33.37
Teleport Upstairs |goto 50.15,32.54 < 10 |noway |q 12657
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
turnin Report To Scourge Commander Thalanor##12850 |goto 51.21,34.90
accept The Scarlet Harvest##12670 |goto 51.21,34.90
step
clicknpc Scourge Gryphon##29488 |goto 50.96,36.15
Arrive at Death's Breach |goto 53.19,31.15 < 10 |noway |q 12670
step
talk Prince Valanar##28377
turnin The Scarlet Harvest##12670 |goto 52.28,33.96
accept If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.28,33.96
step
talk Salanar the Horseman##28653
|tip He walks around this area.
accept Grand Theft Palomino##12680 |goto 52.51,34.54
step
talk Olrun the Battlecaller##29047
|tip She flies around this area.
accept Death's Challenge##12733 |goto 54.63,33.95
step
talk Death Knight Initiate##28406
|tip They are all around this area.
Tell them _"I challenge you, death knight!"_
kill Death Knight Initiate##28392+
Defeat #5# Death Knights in a Duel |q 12733/1 |goto 53.21,33.54
step
talk Olrun the Battlecaller##29047
|tip She flies around this area.
turnin Death's Challenge##12733 |goto 54.63,33.95
step
talk Orithos the Sky Darkener##28647
|tip He walks around this area.
accept Tonight We Dine In Havenshire##12679 |goto 53.42,36.65
stickystart "Slay_Scarlet_Crusaders"
stickystart "Slay_Citizens_Of_Havenshire"
step
Follow the path down |goto 50.66,38.32 < 15 |only if walking
Continue down the path |goto 52.21,43.78 < 10 |only if walking
click Abandoned Mail##190917
|tip It looks like a roll of parchment on top of the mailbox.
accept Abandoned Mail##12711 |goto 55.27,46.17
step
label "Slay_Scarlet_Crusaders"
Kill Scarlet enemies around this area
Slay #10# Scarlet Crusaders |q 12678/1 |goto 54.25,44.45
stickystart "Collect_Saronite_Arrows"
step
label "Slay_Citizens_Of_Havenshire"
kill 10 Citizen of Havenshire##28660 |q 12678/2 |goto 54.25,44.45
step
label "Collect_Saronite_Arrows"
click Saronite Arrow##190691+
|tip They look like yellow and green arrows stuck in the ground around this area.
collect 15 Saronite Arrow##39160 |q 12679/1 |goto 56.41,50.97
step
click Havenshire Horse
|tip They are all around this area.
|tip Watch out for Stable Master Kitrik, he's elite and will pull you off the horse.
Ride the Havenshire Horse |invehicle |goto 55.74,43.39 |q 12680
step
Follow the path up |goto 53.05,43.28 < 20 |only if walking
Continue up the path |goto 50.61,40.72 < 20 |only if walking
Follow the path |goto 50.92,36.79 < 20 |only if walking
Use the "Deliver Stolen Horse" ability next to Salanar the Horseman
|tip He walks around this area.
Successfully Steal the Horse |goto 52.26,34.96 |q 12680/1
step
talk Salanar the Horseman##28653
|tip He walks around this area.
turnin Grand Theft Palomino##12680 |goto 52.51,34.54
accept Into the Realm of Shadows##12687 |goto 52.51,34.54
step
Follow the path down |goto 50.66,38.32 < 20 |only if walking
Follow the path down |goto 52.21,43.78 < 30 |only if walking
kill Dark Rider of Acherus##28768
|tip They ride around on horses around this area.
clicknpc Acherus Deathcharger##28302
|tip It's the horse they were riding on before you killed them.
Steal an Acherus Deathcharger |invehicle |goto 55.67,42.41 |q 12687
step
Follow the path up |goto 53.05,43.28 < 20 |only if walking
Use the "Horseman's Call" ability
Watch the dialogue
Complete the Horseman's Challenge |q 12687/1 |goto 50.88,41.74
step
Follow the path up |goto 50.61,40.72 < 20 |only if walking
talk Salanar the Horseman##28653
|tip He walks around this area.
turnin Into the Realm of Shadows##12687 |goto 52.51,34.54
step
talk Prince Valanar##28377
turnin If Chaos Drives, Let Suffering Hold The Reins##12678 |goto 52.28,33.96
step
talk Orithos the Sky Darkener##28647
|tip He walks around this area.
turnin Tonight We Dine In Havenshire##12679 |goto 53.42,36.65
step
talk Prince Valanar##28377
accept Gothik the Harvester##12697 |goto 52.28,33.96
step
talk Gothik the Harvester##28658
turnin Gothik the Harvester##12697 |goto 54.07,35.03
accept The Gift That Keeps On Giving##12698 |goto 54.07,35.03
step
Follow the path down |goto 54.94,31.35 < 20 |only if walking
Enter the mine |goto 58.30,30.94 < 5 |walk
use Gift of the Harvester##39253
|tip Use it on Scarlet Miners.
|tip Inside the mine.
|tip Some will turn into Scarlet Ghosts and attack you.
|tip It has a pretty low success rate, just keep trying.
Click Here When 5 Scarlet Ghouls Are Following You |confirm |goto 59.77,31.37 |q 12698
step
Follow the path up |goto 57.03,31.24 < 20 |only if walking
Return #5# Scarlet Ghouls |q 12698/1 |goto 54.07,35.03
step
talk Gothik the Harvester##28658
turnin The Gift That Keeps On Giving##12698 |goto 54.07,35.03
accept An Attack Of Opportunity##12700 |goto 54.07,35.03
step
talk Prince Valanar##28377
turnin An Attack Of Opportunity##12700 |goto 52.28,33.96
accept Massacre At Light's Point##12701 |goto 52.28,33.96
step
click Inconspicuous Mine Car##190767
Ride in the Inconspicuous Mine Cart |invehicle |goto 58.50,33.03 |q 12701
step
Ride to the Scarlet Fleet Ship |goto 67.81,38.67 < 10 |q 12701
step
click Scarlet Cannon##176216
Mount the Cannon |invehicle |goto 67.70,39.02 |q 12701
step
kill Scarlet Fleet Defender##28834+
|tip Use the abilities on your action bar.
Slay #100# Scarlet Defenders |q 12701/1 |goto 65.78,39.79
step
Escape to Death's Breach |goto 52.57,34.45 < 10 |noway |q 12701
|tip Use the "Skeletal Gryphon Escape" ability on your action bar.
step
talk Prince Valanar##28377
turnin Massacre At Light's Point##12701 |goto 52.28,33.96
accept Victory At Death's Breach!##12706 |goto 52.28,33.96
step
clicknpc Scourge Gryphon##29501 |goto 53.09,32.48
Fly Up to Archerus |goto 51.11,34.67 < 10 |noway |q 12706
step
talk Highlord Darion Mograine##28444
turnin Victory At Death's Breach!##12706 |goto 48.87,29.76
accept The Will Of The Lich King##12714 |goto 48.87,29.76
step
clicknpc Scourge Gryphon##29488 |goto 50.96,36.15
Arrive at Death's Breach |goto 53.19,31.15 < 10 |noway |q 12714
step
talk Prince Valanar##28907
turnin The Will Of The Lich King##12714 |goto 53.47,36.55
accept The Crypt of Remembrance##12715 |goto 53.47,36.55
step
Follow the path down |goto 50.75,38.22 < 20 |only if walking
talk Noth the Plaguebringer##28919
accept The Plaguebringer's Request##12716 |goto 55.89,52.39
step
Enter the crypt |goto 54.20,58.14 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin The Crypt of Remembrance##12715 |goto 54.30,57.31
accept Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
accept Lambs To The Slaughter##12722 |goto 54.66,57.43
stickystart "Slay_Scarlet_Crusade_Soldiers"
stickystart "Collect_Crusader_Skulls"
stickystart "Slay_Citizens_Of_New_Avalaon"
step
Enter the building |goto 57.67,64.41 < 7 |walk
Run down the stairs |goto 57.55,62.37 < 5 |walk
click Empty Cauldron##190937
|tip Downstairs inside the building.
collect Empty Cauldron##39324 |q 12716/1 |goto 57.86,61.84
step
Enter the building |goto 61.49,60.72 < 5 |walk
click Iron Chain##190938
|tip Inside the building.
collect Iron Chain##39326 |q 12716/2 |goto 62.05,60.24
step
Enter the building |goto 53.13,71.07 < 5 |walk
kill Mayor Quimby##28945 |q 12719/1 |goto 52.24,71.17
|tip Inside the building.
step
click New Avalon Registry##190947
|tip Inside the building.
collect New Avalon Registry##39362 |q 12719/2 |goto 52.45,71.00
step
label "Slay_Scarlet_Crusade_Soldiers"
Kill Scarlet enemies around this area
Slay #10# Scarlet Crusade Soldiers |q 12722/1 |goto 54.27,70.15
step
label "Collect_Crusader_Skulls"
Kill Scarlet enemies around this area
kill Citizen of New Avalon##28942+
|tip Inside and outside the buildings around this area.
collect 10 Crusader Skull##39328 |q 12716/3 |goto 54.27,70.15
step
label "Slay_Citizens_Of_New_Avalaon"
kill 15 Citizen of New Avalon##28942 |q 12722/2 |goto 54.27,70.15
|tip Inside and outside the buildings around this area.
step
Enter the crypt |goto 54.20,58.14 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin Nowhere To Run And Nowhere To Hide##12719 |goto 54.30,57.31
accept How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
step
talk Baron Rivendare##28910
|tip Downstairs inside the crypt.
turnin Lambs To The Slaughter##12722 |goto 54.66,57.43
step
talk Noth the Plaguebringer##28919
turnin The Plaguebringer's Request##12716 |goto 55.89,52.39
accept Noth's Special Brew##12717 |goto 55.89,52.39
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
Kill Scarlet enemies around this area
|tip Try not to kill them too fast, and stop attacking them when they start talking.
|tip Eventually one of the enemies will give you information.
Watch the dialogue
Reveal the "Crimson Dawn" |q 12720/1 |goto 57.60,66.63
step
Equip Your Normal Weapon
Click Here After Equipping Your Normal Weapon |confirm |c |q 12720
step
Enter the crypt |goto 54.20,58.14 < 7 |walk
talk Prince Keleseth##28911
|tip Downstairs inside the crypt.
turnin How To Win Friends And Influence Enemies##12720 |goto 54.30,57.31
accept Behind Scarlet Lines##12723 |goto 54.30,57.31
step
Enter the building |goto 56.14,79.97 < 3 |walk
Run up the stairs |goto 56.45,79.62 < 5 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Behind Scarlet Lines##12723 |goto 56.26,79.84
accept The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
accept Brothers In Death##12725 |goto 56.27,80.15
step
Enter the building |goto 61.98,68.18 < 5 |walk
Run down the stairs |goto 62.76,68.63 < 5 |walk
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
Follow the path |goto 63.17,68.70 < 5 |walk
Run up the stairs |goto 62.70,68.61 < 5 |q 12724
step
Run up the stairs |goto 63.15,68.36 < 5 |walk
Run up the ramp |goto 62.44,69.10 < 5 |walk
click New Avalon Patrol Schedule##191084
|tip Upstairs inside the building.
collect New Avalon Patrol Schedule##39504 |q 12724/1 |goto 62.99,68.31
step
Enter the building |goto 56.14,79.97 < 5 |walk
Run up the stairs |goto 56.45,79.62 < 5 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Path Of The Righteous Crusader##12724 |goto 56.26,79.84
step
talk Thassarian##28913
|tip Upstairs inside the building.
turnin Bloody Breakout##12727 |goto 56.27,80.15
accept A Cry For Vengeance!##12738 |goto 56.27,80.15
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Cry For Vengeance!##12738 |goto 53.04,81.84
accept A Special Surprise##12742 |goto 53.04,81.84 |only if Human
accept A Special Surprise##12743 |goto 53.04,81.84 |only if NightElf
accept A Special Surprise##12744 |goto 53.04,81.84 |only if Dwarf
accept A Special Surprise##12745 |goto 53.04,81.84 |only if Gnome
accept A Special Surprise##12746 |goto 53.04,81.84 |only if Draenei
accept A Special Surprise##28649 |goto 53.04,81.84 |only if Worgen
accept A Special Surprise##12739 |goto 53.04,81.84 |only if Tauren
accept A Special Surprise##12747 |goto 53.04,81.84 |only if BloodElf
accept A Special Surprise##12748 |goto 53.04,81.84 |only if Orc
accept A Special Surprise##12749 |goto 53.04,81.84 |only if Troll
accept A Special Surprise##12750 |goto 53.04,81.84 |only if Scourge
accept A Special Surprise##28650 |goto 53.04,81.84 |only if Goblin
step
Enter the building |goto 54.46,83.20 < 5 |walk
Watch the dialogue
kill Valok the Righteous##29070 |q 12746/1 |goto 54.55,83.42
|tip Inside the building.
only if Draenei
step
Enter the building |goto 54.46,83.20 < 5 |walk
Watch the dialogue
kill Yazmina Oakenthorn##29065 |q 12743/1 |goto 54.25,83.92
|tip Inside the building.
only if NightElf
step
Enter the building |goto 54.46,83.20 < 5 |walk
Watch the dialogue
kill Goby Blastenheimer##29068 |q 12745/1 |goto 53.93,83.82
|tip Inside the building.
only if Gnome
step
Enter the building |goto 54.46,83.20 < 5 |walk
Watch the dialogue
kill Ellen Stanbridge##29061 |q 12742/1 |goto 53.53,83.79
|tip Inside the building.
only if Human
step
Enter the building |goto 54.46,83.20 < 5 |walk
Watch the dialogue
kill Donovan Pulfrost##29067 |q 12744/1 |goto 54.02,83.27
|tip Inside the building.
only if Dwarf
step
Enter the building |goto 54.46,83.20 < 5 |walk
Watch the dialogue
kill Lord Harford##49355 |q 28649/1 |goto 54.14,83.26
|tip Inside the building.
only if Worgen
step
Enter the building |goto 54.46,83.20 < 5 |walk
Watch the dialogue
kill Malar Bravehorn##29032 |q 12739/1 |goto 54.51,83.87
|tip Inside the building.
only if Tauren
step
Enter the building |goto 54.46,83.20 < 5 |walk
Watch the dialogue
kill Lady Eonys##29074 |q 12747/1 |goto 54.28,83.28
|tip Inside the building.
only if BloodElf
step
Enter the building |goto 54.46,83.20 < 5 |walk
Watch the dialogue
kill Kug Ironjaw##29072 |q 12748/1 |goto 53.77,83.26
|tip Inside the building.
only if Orc
step
Enter the building |goto 54.46,83.20 < 5 |walk
Watch the dialogue
kill Iggy Darktusk##29073 |q 12749/1 |goto 53.80,83.78
|tip Inside the building.
only if Troll
step
Enter the building |goto 54.46,83.20 < 5 |walk
Watch the dialogue
kill Antoine Brack##29071 |q 12750/1 |goto 53.53,83.30
|tip Inside the building.
only if Scourge
step
Enter the building |goto 54.46,83.20 < 5 |walk
Watch the dialogue
kill Gally Lumpstain##49356 |q 28650/1 |goto 54.12,83.77
|tip Inside the building.
only if Goblin
step
talk Knight Commander Plaguefist##29053
|tip He walks around this area.
turnin A Special Surprise##12742 |goto 53.04,81.84 |only if Human
turnin A Special Surprise##12743 |goto 53.04,81.84 |only if NightElf
turnin A Special Surprise##12744 |goto 53.04,81.84 |only if Dwarf
turnin A Special Surprise##12745 |goto 53.04,81.84 |only if Gnome
turnin A Special Surprise##12746 |goto 53.04,81.84 |only if Draenei
turnin A Special Surprise##28649 |goto 53.04,81.84 |only if Worgen
turnin A Special Surprise##12739 |goto 53.04,81.84 |only if Tauren
turnin A Special Surprise##12747 |goto 53.04,81.84 |only if BloodElf
turnin A Special Surprise##12748 |goto 53.04,81.84 |only if Orc
turnin A Special Surprise##12749 |goto 53.04,81.84 |only if Troll
turnin A Special Surprise##12750 |goto 53.04,81.84 |only if Scourge
turnin A Special Surprise##28650 |goto 53.04,81.84 |only if Goblin
accept A Sort Of Homecoming##12751 |goto 53.04,81.84
step
Enter the building |goto 56.14,79.97 < 5 |walk
talk Thassarian##28913
|tip Upstairs inside the building.
turnin A Sort Of Homecoming##12751 |goto 56.27,80.15
step
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
accept Ambush At The Overlook##12754 |goto 56.26,79.84
stickystart "Collect_Scarlet_Couriers_Message"
step
use Makeshift Cover##39645
kill Scarlet Courier##29076
collect Scarlet Courier's Belongings##39646 |q 12754/1 |goto 59.92,78.25
step
label "Collect_Scarlet_Couriers_Message"
kill Scarlet Courier##29076
collect Scarlet Courier's Message##39647 |q 12754/2 |goto 59.92,78.25
step
Enter the building |goto 56.14,79.97 < 5 |walk
Run up the stairs |goto 56.45,79.62 < 5 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin Ambush At The Overlook##12754 |goto 56.26,79.84
accept A Meeting With Fate##12755 |goto 56.26,79.84
step
talk High General Abbendis##29077
turnin A Meeting With Fate##12755 |goto 65.65,83.82
accept The Scarlet Onslaught Emerges##12756 |goto 65.65,83.82
step
Follow the path up |goto 63.31,85.32 < 15 |only if walking
Enter the building |goto 56.14,79.97 < 5 |walk
Run up the stairs |goto 56.45,79.62 < 5 |walk
talk Orbaz Bloodbane##28914
|tip Upstairs inside the building.
turnin The Scarlet Onslaught Emerges##12756 |goto 56.26,79.84
accept Scarlet Armies Approach...##12757 |goto 56.26,79.84
step
click Portal to Acherus##8046 |goto 56.18,80.05
|tip Upstairs inside the building.
Teleport to Acherus |goto 50.18,32.61 < 5 |noway |q 12757
step
talk Highlord Darion Mograine##28444
turnin Scarlet Armies Approach...##12757 |goto 48.89,29.77
accept The Scarlet Apocalypse##12778 |goto 48.89,29.77
step
clicknpc Scourge Gryphon##29488 |goto 52.10,35.05
Arrive at Death's Breach |goto 53.20,31.14 < 5 |noway |q 12778
step
talk The Lich King##29110
turnin The Scarlet Apocalypse##12778 |goto 53.57,36.85
accept An End To All Things...##12779 |goto 53.57,36.85
step
use Horn of the Frostbrood##39700
Summon a Dragon to Ride |invehicle |q 12779
stickystart "Destroy_Scarlet_Ballistas"
step
kill 150 Scarlet Soldier##4286 |q 12779/1 |goto 55.90,61.84
|tip Use the abilities on your action bar.
step
label "Destroy_Scarlet_Ballistas"
Destroy #10# Scarlet Ballistas |q 12779/2 |goto 57.03,60.81
|tip They look like big wooden crossbow machines around this area.
|tip Use the abilities on your action bar.
step
Return to Death's Breach |goto 52.75,38.13 < 30 |q 12779
step
Click the yellow arrow on your action bar |outvehicle |goto 52.75,38.13 |q 12779
step
talk The Lich King##29110
turnin An End To All Things...##12779 |goto 53.57,36.85
accept The Lich King's Command##12800 |goto 53.57,36.85
step
Enter the tunnel |goto 49.13,28.35 < 15 |only if walking
Leave the tunnel |goto 47.35,24.82 < 15 |only if walking
Follow the path down |goto 40.02,19.25 < 15 |only if walking
Follow the path |goto 36.04,24.04 < 20 |only if walking
talk Scourge Commander Thalanor##31082
|tip He walks around this area.
turnin The Lich King's Command##12800 |goto 33.99,30.36
accept The Light of Dawn##12801 |goto 33.99,30.36
step
talk Highlord Darion Mograine##29173
|tip If he's not here, then the battle has already started.
|tip You may be able to join the battle.  Skip to the next step, try to do it, and see if it works.
|tip If you're unable to join the battle, skip back to this step and wait for Highlord Darion Mograine to respawn.
Tell him _"I am ready, Highlord. Let the siege of Light's Hope begin!"_
|tip If he's here, but you can't choose this dialogue, that just means someone else already did it.
|tip Now you just need to wait for the battle to start.
|tip The battle starts 5 minutes after someone initiates this dialogue with him.
Click Here When the Battle Begins |confirm |goto 34.44,31.10 |q 12801
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
Travel to Ebon Hold |goto Eastern Plaguelands/0 83.72,50.03 < 10 |noway |q 13165
step
talk Highlord Darion Mograine##29173
turnin Taking Back Acherus##13165 |goto 83.44,49.46
accept The Battle For The Ebon Hold##13166 |goto 83.44,49.46
step
Walk onto the teleport pad |goto 83.19,48.90
Teleport Downstairs |goto 82.68,47.79 < 10 |noway |q 13166
stickystart "Slay_Scourge"
step
kill Patchwerk##31099 |q 13166/1 |goto 81.99,46.37 |notravel
step
label "Slay_Scourge"
Kill enemies around this area
Slay #10# Scourge |q 13166/2 |goto 82.35,47.13 |notravel
step
Walk onto the teleport pad |goto 83.28,49.12
Teleport Upstairs |goto 83.28,49.12 < 10 |noway |q 13166
step
talk Highlord Darion Mograine##31084
turnin The Battle For The Ebon Hold##13166 |goto 83.44,49.46
accept Saurfang's Blessing##13189 |goto 83.44,49.46
step
clicknpc Portal to Orgrimmar##103191 |goto 84.55,50.46
Teleport to Orgrimmar |goto Durotar/0 45.6,13.5 < 1000 |c |noway |q 13189
step
Enter the building |goto Orgrimmar/1 49.90,75.62 < 5 |walk
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Saurfang's Blessing##13189 |goto 48.52,70.72
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Goblin (1-10)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."BilgeWater",
condition_suggested=function() return raceclass('Goblin') and level <= 13 and not completedq(25267) and not raceclass("DeathKnight") and not ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
condition_end=function() return completedq(25267) or raceclass("DeathKnight") end,
condition_valid=function() return raceclass('Goblin')  end,
condition_valid_msg="Goblin only.",
next="Leveling Guides\\Classic (1-60)\\Kalimdor\\Northern Barrens (5-60)",
startlevel=1,
endlevel=10,
},[[
step
talk Sassy Hardwrench##34668
|tip Inside the building.
accept Taking Care of Business##14138 |goto Kezan/0 56.42,76.95
step
talk Foreman Dampwick##36471
turnin Taking Care of Business##14138 |goto 60.14,74.56
accept Trouble in the Mines##14075 |goto 60.14,74.56
accept Good Help is Hard to Find##14069 |goto 60.14,74.56
step
clicknpc Defiant Troll##34830+
|tip They look like trolls who are not working around this area.
Adjust #8# Attitudes |q 14069/1 |goto 69.15,81.75
step
kill 6 Tunneling Worm##34865+ |q 14075/1 |goto Kezan/7 58.94,52.44
|tip Inside the mine.
step
talk Foreman Dampwick##36471
turnin Trouble in the Mines##14075 |goto Kezan/0 60.14,74.56
turnin Good Help is Hard to Find##14069 |goto 60.14,74.56
accept Kaja'Cola##25473 |goto 60.14,74.56
step
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Kaja'Cola##25473 |goto 56.42,76.95
accept Megs in Marketing##28349 |goto 56.42,76.95
step
talk Megs Dreadshredder##34874
turnin Megs in Marketing##28349 |goto 58.30,76.44
accept Cruising##14071 |goto 58.30,76.44
step
use Keys to the Hotrod##46856
Enter the Hot Rod |invehicle |q 14071
step
Pick Up Izzy |q 14071/2 |goto 58.16,86.20
step
Pick Up Gobber |q 14071/4 |goto 59.92,49.73
step
Pick Up Ace |q 14071/3 |goto 47.96,37.73
step
talk Megs Dreadshredder##34874
turnin Rolling with my Homies##14071 |goto 58.31,76.45
accept Report for Tryouts##24567 |goto 58.31,76.45
step
talk Sassy Hardwrench##34668
|tip Inside the building.
accept Do it Yourself##14070 |goto 56.42,76.95
step
talk Candy Cane##35053
|tip Inside the building.
accept Off to the Bank##26712 |goto 56.31,77.11
only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
|tip Inside the building.
accept Off to the Bank##26711 |goto 56.31,76.77
only if _G['UnitSex']("player")==3
step
use Keys to the Hotrod##46856
Enter the Hot Rod |invehicle |q 24567
step
talk Coach Crosscheck##37106
turnin Report for Tryouts##24567 |goto 48.82,57.57
accept The Replacements##24488 |goto 48.82,57.57
step
click Replacement Parts##201603
|tip They look like yellow and silver metal crates on the ground around this area.
|tip You can do this while in your Hot Rod.
collect 6 Replacement Parts##49752 |q 24488/1 |goto 48.97,60.22
step
talk Coach Crosscheck##38738
turnin The Replacements##24488 |goto 48.82,57.57
accept Necessary Roughness##24502 |goto 48.82,57.57
step
clicknpc Bilgewater Buccaneer##48526
Take Control of a Bilgewater Buccaneer |invehicle |goto 47.70,57.75 |q 24502
step
Footbomb #8# Steamwheedle Sharks |q 24502/2 |goto 47.70,57.75
|tip Use the "Throw Footbomb" ability on your action bar on Steamwheedle Sharks.
|tip They look like shredders walking toward you on the footbomb field.
step
Click the Complete Quest Box:
turnin Necessary Roughness##24502
accept Fourth and Goal##24503
step
Kick a Footbomb Through the Smokestacks |q 24503/1
|tip Use the "Kick Footbomb" ability on your action bar.
|tip Aim through the 2 tall gray chimney smokestacks.
|tip The smokestacks look like 2 tall metal chimneys on top of a building with a green roof.
step
talk Coach Crosscheck##38738
turnin Fourth and Goal##24503 |goto 48.82,57.57
accept Give Sassy the Good News##24520 |goto 48.82,57.57
step
kill Bruno Flameretardant##34835
Beat Down Bruno Flameretardant |q 14070/1 |goto 45.25,74.72
step
kill Sudsy Magee##34878
Beat Down Sudsy Magee |q 14070/4 |goto 41.64,81.92
step
kill Jack the Hammer##34877
Beat Down Jack the Hammer |q 14070/3 |goto 35.05,77.84
step
kill Frankie Gearslipper##34876
Beat Down Frankie Gearslipper |q 14070/2 |goto 36.84,69.93
step
talk FBoK Bank Teller##35120
|tip Inside the building.
turnin Off to the Bank##26712 |goto 30.11,71.92 |only if _G['UnitSex']("player")==2
turnin Off to the Bank##26711 |goto 30.11,71.92 |only if _G['UnitSex']("player")==3
accept The New You##14109 |goto 30.11,71.92 |or |only if _G['UnitSex']("player")==2
accept The New You##14110 |goto 30.11,71.92 |or |only if _G['UnitSex']("player")==3
step
talk Szabo##35128
Tell him _"Szabo, I need a hip, new outfit for the party I'm throwing!"_
collect Hip New Outfit##47046 |q 14109/2 |goto 37.64,55.46 |only if _G['UnitSex']("player")==2
collect Hip New Outfit##47046 |q 14110/2 |goto 37.64,55.46 |only if _G['UnitSex']("player")==3
step
talk Gappy Silvertooth##35126
Tell him _"Set me up with the phattest, shiniest bling you got!"_
collect Shiny Bling##47045 |q 14109/1 |goto 34.88,45.73 |only if _G['UnitSex']("player")==2
collect Shiny Bling##47045 |q 14110/1 |goto 34.88,45.73 |only if _G['UnitSex']("player")==3
step
talk Missa Spekkies##35130
Tell her _"I need some cool shades.  What will two stacks of macaroons get me?"_
collect Cool Shades##47047 |q 14109/3 |goto 40.43,45.77 |only if _G['UnitSex']("player")==2
collect Cool Shades##47047 |q 14110/3 |goto 40.43,45.77 |only if _G['UnitSex']("player")==3
step
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Give Sassy the Good News##24520 |goto 56.42,76.95
turnin Do It Yourself##14070 |goto 56.42,76.95
step
talk Candy Cane##39426
|tip Inside the building.
turnin The New You##14109 |goto 56.31,77.11
only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
|tip Inside the building.
turnin The New You##14110 |goto 56.31,76.77
only if _G['UnitSex']("player")==3
step
talk Candy Cane##39426
accept Life of the Party##14113 |goto 56.31,77.11
only if _G['UnitSex']("player")==2
step
talk Chip Endale##35054
accept Life of the Party##14153 |goto 56.31,76.77
only if _G['UnitSex']("player")==3
step
Use the "Bubbly" ability on your action bar
|tip Use it next to goblins that are drinking.
Use the "Bucket" ability on your action bar
|tip Use it next to goblins that look dazed.
Use the "Dance" ability on your action bar
|tip Use it next to goblins that are dancing.
Use the "Fireworks" ability on your action bar
|tip Use it next to goblins that are holding orange fireworks.
Use the "Hors D'oeuvres" ability on your action bar
|tip Use it next to goblins that are eating.
Entertain #10# Partygoers |q 14113/1 |goto 59.32,80.77 |only if _G['UnitSex']("player")==2
Entertain #10# Partygoers |q 14153/1 |goto 59.32,80.77 |only if _G['UnitSex']("player")==3
step
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Life of the Party##14113 |goto 56.42,76.95 |only if _G['UnitSex']("player")==2
turnin Life of the Party##14153 |goto 56.42,76.95 |only if _G['UnitSex']("player")==3
accept Pirate Party Crashers##14115
step
kill 12 Pirate Party Crasher##35200+ |q 14115/1 |goto 59.91,81.89
step
talk Sassy Hardwrench##34668
|tip Inside the building.
turnin Pirate Party Crashers##14115 |goto 56.42,76.95
accept The Uninvited Guest##14116 |goto 56.42,76.95
step
talk Trade Prince Gallywix##39582
|tip Upstairs inside the building.
turnin The Uninvited Guest##14116 |goto 56.71,76.94
accept A Bazillion Macaroons?!##14120 |goto 56.71,76.94
step
talk Sassy Hardwrench##34668
turnin A Bazillion Macaroons?!##14120 |goto 59.61,77.04
accept The Great Bank Heist##14122 |goto 59.61,77.04
step
talk Slinky Sharpshiv##36729
|tip She walks around this area.
accept Waltz Right In##14123 |goto 58.98,76.77
step
talk Megs Dreadshredder##34874
accept Robbing Hoods##14121 |goto 60.00,78.17
step
talk Foreman Dampwick##36471
accept Liberating the Kaja'mite##14124 |goto 62.96,77.81
step
use Kablooey Bombs##48768
|tip Use it on Kaja'mite Deposits.
|tip They look like green mining nodes around this area.
click Kaja'mite Chunk##195492+
|tip They appear on the ground.
collect 12 Kaja'mite Chunk##48766 |q 14124/1 |goto 69.53,86.02
step
talk Foreman Dampwick##36471
turnin Liberating the Kaja'mite##14124 |goto 62.96,77.81
step
use Keys to the Hotrod##46856
Enter the Hot Rod |invehicle |q 14121
step
Run Over Hired Looters with your Hot Rod
|tip They look like pirates throwing explosives in the streets around this area.
collect 12 Stolen Loot##47530 |q 14121/1 |goto 40.68,52.33
step
clicknpc First Bank of Kezan Vault##35486
|tip Inside the building.
Access the First Bank of Kezan Vault |q 14122/1 |goto 30.19,71.23
step
Use the abilities on your action bar
|tip Use them in the correct order when it tells you to.
|tip Just match the icons that come up on-screen with your skill icons on your action bar.
collect Personal Riches##46858 |q 14122/2 |goto 30.19,71.23
step
Reach This Location |goto 23.71,40.18 < 10 |q 14123
|tip You will become disguised automatically.
|tip Avoid the Keensnout Potbellies in this area, they will remove your Mook Disguise.
step
click The Ultimate Bomb##195518
|tip It looks like a huge red spiked bomb inside the building.
collect The Ultimate Bomb##48941 |q 14123/3 |goto 19.93,30.66
|tip Avoid the Keensnout Potbellies in this area, they will remove your Mook Disguise.
step
click The Goblin Lisa##195516
|tip It looks like a painting of a goblin inside the building.
collect The Goblin Lisa##48939 |q 14123/2 |goto 12.85,35.18
|tip Avoid the Keensnout Potbellies in this area, they will remove your Mook Disguise.
step
click Maldy's Falcon##195515
|tip It looks like a stone bird statue upstairs inside the building.
collect Maldy's Falcon##48937 |q 14123/1 |goto 16.70,46.35
|tip Avoid the Keensnout Potbellies in this area, they will remove your Mook Disguise.
step
talk Slinky Sharpshiv##36729
|tip She walks around this area.
turnin Waltz Right In##14123 |goto 58.98,76.77
step
talk Sassy Hardwrench##34668
turnin The Great Bank Heist##14122 |goto 59.61,77.04
step
talk Megs Dreadshredder##34874
turnin Robbing Hoods##14121 |goto 60.02,78.15
step
talk Sassy Hardwrench##34668
accept 447##14125 |goto 59.61,77.04
step
click Defective Generator##201735
|tip It looks like a huge electric coil inside the building.
Overload the Defective Generator |q 14125/1 |goto 56.07,76.64
step
click Leaky Stove##201733
|tip It looks like a gray metal furnace inside the building.
Activate the Leaky Stove |q 14125/2 |goto 56.05,74.68
step
click Flammable Bed##201734
|tip It looks like a red bed upstairs inside the building.
Drop a Cigar on the Flammable Bed |q 14125/3 |goto 56.62,75.02
step
click Gasbot Control Panel##356
Set the KTC Headquarters Ablaze with Gasbot |q 14125/4 |goto 59.36,76.81
step
talk Claims Adjuster##37602
turnin 447##14125 |goto 59.59,76.63
step
talk Sassy Hardwrench##34668
accept Life Savings##14126 |goto 59.60,77.05
step
talk Sassy Hardwrench##34668 |goto 59.61,77.04
Tell her _"Okay, Sassy, I'm ready to go."_
Ride with Sassy |goto 59.61,77.04 > 30 |noway |q 14126
step
Travel to Gallywix's Yacht |goto 21.38,13.24 < 10 |q 14126
step
talk Trade Prince Gallywix##39582
turnin Life Savings##14126 |goto 20.84,13.71
step
Watch the dialogue
talk Doc Zapnozzle##36608
accept Don't Go Into the Light!##14239 |goto The Lost Isles/0 24.60,77.94
step
talk Geargrinder Gizmo##36600
|tip You will be offered one of these two quests.
accept Goblin Escape Pods##14001 |goto 24.65,77.94 |or
accept Goblin Escape Pods##14474 |goto 24.65,77.94 |or
step
click Goblin Escape Pod##195188+
|tip They look like red barrels floating in the water around this area.
Rescue #6# Goblin Survivors |q 14001/1 |goto 25.12,79.73
only if haveq(14001)
step
click Goblin Escape Pod##195188+
|tip They look like red barrels floating in the water around this area.
Rescue #6# Goblin Survivors |q 14474/1 |goto 25.12,79.73
only if haveq(14474)
step
talk Sassy Hardwrench##35650
turnin Goblin Escape Pods##14001 |goto 27.88,75.54 |only if haveq(14001) or completedq(14001)
turnin Goblin Escape Pods##14474 |goto 27.88,75.54 |only if haveq(14474) or completedq(14474)
accept Get Our Stuff Back!##14014 |goto 27.88,75.54
step
talk Grimy Greasefingers##36496
home Shipwreck Shore |goto 28.01,75.79 |q 14014
step
talk Bamm Megabomb##35758
accept Monkey Business##14019 |goto 27.94,74.43
step
talk Maxx Avalanche##35786
accept It's Our Problem Now##14473 |goto 27.85,74.29
stickystart "Slay_Teraptor_Hatchlings"
stickystart "Collect_Crates_Of_Tools"
step
clicknpc Bomb-Throwing Monkey##34699+
|tip They look like small gray monkeys on the ground around this area.
use Nitro-Potassium Bananas##49028
|tip Use it on Bomb-Throwing Monkeys around this area.
Feed #10# Bomb-Throwing Monkeys |q 14019/1 |goto 28.19,72.85
step
label "Slay_Teraptor_Hatchlings"
kill 6 Teraptor Hatchling##36740 |q 14473/1 |goto 28.05,72.06
step
label "Collect_Crates_Of_Tools"
click Crate of Tools##195201+
|tip They look like small yellow and silver metal crates on the ground around this area.
collect 8 Crate of Tools##46828 |q 14014/1 |goto 28.39,72.00
step
talk Maxx Avalanche##35786
turnin It's Our Problem Now##14473 |goto 27.85,74.29
step
talk Bamm Megabomb##35758
turnin Monkey Business##14019 |goto 27.95,74.42
step
talk Sassy Hardwrench##35650
turnin Get Our Stuff Back!##14014 |goto 27.88,75.54
accept Help Wanted##14248 |goto 27.88,75.54
step
talk Foreman Dampwick##35769
turnin Help Wanted##14248 |goto 31.27,79.26
accept Miner Troubles##14021 |goto 31.27,79.26
accept Capturing the Unknown##14031 |goto 31.27,79.26
stickystart "Make_Kajamite_Ore_Success"
step
use KTC Snapflash##49887
|tip Inside the cave.
Capture Cave Painting 1 |q 14031/1 |goto The Lost Isles/1 51.68,71.19
step
use KTC Snapflash##49887
|tip Inside the cave.
Capture Cave Painting 2 |q 14031/2 |goto 62.49,70.03
step
use KTC Snapflash##49887
|tip Inside the cave.
Capture Cave Painting 3 |q 14031/3 |goto 86.82,44.36
step
use KTC Snapflash##49887
|tip Inside the cave.
Capture the Pygmy Altar |q 14031/4 |goto 44.82,25.20
step
label "Make_Kajamite_Ore_Success"
Escort the Frightened Miner
|tip Stay close to him and protect him from enemies.
|tip Inside the cave.
Make the Kaja'mite Ore Mining a Success |q 14021/1 |goto 50.84,16.88
step
talk Dead Orc Scout##35837
|tip Inside the cave.
accept Orcs Can Write?##14233 |goto 41.50,25.47
step
talk Foreman Dampwick##35769
turnin Miner Troubles##14021 |goto The Lost Isles/0 31.27,79.26
step
talk Sassy Hardwrench##35650
turnin Capturing the Unknown##14031 |goto 27.88,75.54
turnin Orcs Can Write?##14233 |goto 27.88,75.54
accept The Enemy of My Enemy##14234 |goto 27.88,75.54
step
talk Aggra##35875
turnin The Enemy of My Enemy##14234 |goto 37.63,78.03
accept The Vicious Vale##14235 |goto 37.63,78.03
step
talk Kilag Gorefang##35893
turnin The Vicious Vale##14235 |goto 35.43,75.71
accept Weed Whacker##14236 |goto 35.43,75.71
step
use Weed Whacker##49108
Become a Weed Whacker |havebuff 132369 |q 14236
step
Mow Down #100# Deadly Jungle Plants |q 14236/1 |goto 34.62,73.67
step
talk Kilag Gorefang##35893
turnin Weed Whacker##14236 |goto 35.44,75.70
accept Back to Aggra##14303 |goto 35.44,75.70
step
talk Aggra##35875
turnin Back to Aggra##14303 |goto 37.63,78.04
accept Forward Movement##14237 |goto 37.63,78.04
step
talk Kilag Gorefang##35893
turnin Forward Movement##14237 |goto 34.62,66.85
accept Infrared = Infradead##14238 |goto 34.62,66.85
step
use Infrared Heat Focals##49611
Wear the Infrared Heat Focals |havebuff 133149 |q 14238
step
kill 10 SI:7 Assassin##36092 |q 14238/1 |goto 31.87,65.71
|tip They will appear on your minimap as red dots.
step
talk Kilag Gorefang##35917
turnin Infrared = Infradead##14238 |goto 34.61,66.85
accept To the Cliffs##14240 |goto 34.61,66.85
step
Travel to Scout Brax |goto 25.34,59.85 < 10 |q 14240
step
talk Scout Brax##36112
turnin To the Cliffs##14240 |goto 25.29,59.84
accept Get to the Gyrochoppa!##14241 |goto 25.29,59.84
step
kill SI:7 Operative##36103+
collect Gyrochoppa Keys##49424 |q 14241/1 |goto 24.56,64.40
step
clicknpc Gyrochoppa##36127
turnin Get to the Gyrochoppa!##14241 |goto 23.23,67.52
accept Precious Cargo##14242 |goto 23.23,67.52
step
Fly to the Ship |goto 12.87,63.44 < 10 |q 14242
step
talk Thrall##36161
|tip Downstairs in the ship.
Locate the Precious Cargo |q 14242/1 |goto 11.80,62.75
step
talk Thrall##36161
|tip Downstairs in the ship.
turnin Precious Cargo##14242 |goto 11.80,62.75
accept Meet Me Up Top##14326 |goto 11.80,62.75
step
talk Thrall##36161
|tip On the deck of the ship.
turnin Meet Me Up Top##14326 |goto 12.41,63.12
accept Warchief's Revenge##14243 |goto 12.41,63.12
step
kill 50 Alliance Sailor##36176 |q 14243/1 |goto 12.84,61.62
|tip Use the "Lightning Strike" ability on your action bar.
|tip They are in the water below you as you fly around in the tornado.
step
talk Thrall##36188
turnin Warchief's Revenge##14243 |goto 35.92,66.72
accept Farewell, For Now##14445 |goto 35.92,66.72
step
talk Sassy Hardwrench##36425
turnin Farewell, For Now##14445 |goto 36.03,67.53
accept Up, Up & Away!##14244 |goto 36.03,67.53
step
click Rocket Sling##196439
Choose _"Up, Up & Away!"_
Survive the Rocket Sling Trip |q 14244/1 |goto 36.29,66.59
step
talk Foreman Dampwick##36470
turnin Up, Up & Away!##14244 |goto 44.54,64.36
accept It's a Town-In-A-Box##14245 |goto 44.54,64.36
step
click Town-In-A-Box Plunger##9277
|tip On top of the big pile of explosives.
Set Off the Town-In-A-Box |q 14245/1 |goto 45.49,65.36
step
talk Foreman Dampwick##36471
turnin It's a Town-In-A-Box##14245 |goto 45.36,64.74
accept Hobart Needs You##27139 |goto 45.36,64.74
step
talk Hobart Grapplehammer##38120
turnin Hobart Needs You##27139 |goto 45.34,65.22
accept Cluster Cluck##24671 |goto 45.34,65.22
step
clicknpc Wild Clucker##38111+
|tip They look like little robotic chickens walking around this area.
Capture #10# Wild Cluckers |q 24671/1 |goto 46.09,64.42
step
talk Hobart Grapplehammer##38120
turnin Cluster Cluck##24671 |goto 45.34,65.22
step
talk Bamm Megabomb##38122
accept Trading Up##24741 |goto 45.25,64.85
step
use Wild Clucker Eggs##50232
|tip Use it near Raptor Traps.
|tip They look like big spiked metal traps on the ground around this area.
|tip Make sure Spiny Raptors are nearby when you use it.
|tip Don't kill the Spiny Raptors by attacking them.
click Raptor Egg##201974+
|tip They appear under the Raptor Traps when you catch a Spiny Raptor.
collect 5 Spiny Raptor Egg##50239 |q 24741/1 |goto 49.43,69.11
step
talk Bamm Megabomb##38122
turnin Trading Up##24741 |goto 45.25,64.85
step
talk Hobart Grapplehammer##38120
accept The Biggest Egg Ever##24744 |goto 45.34,65.21
step
kill Mechachicken##38224
|tip It's a big robot chicken that walks around this area.
click The Biggest Egg Ever##201977
|tip It appears after you kill the Mechachicken.
collect The Biggest Egg Ever##50261 |q 24744/1 |goto 45.41,56.08
step
talk Hobart Grapplehammer##38120
turnin The Biggest Egg Ever##24744 |goto 45.34,65.22
accept Who's Top of the Food Chain Now?##24816 |goto 45.34,65.22
step
kill Ravenous Lurker##36681+
|tip Underwater.
|tip Avoid "The Hammer" elite shark while killing Ravenous Lurkers.
collect 6 Shark Parts##50381 |q 24816/1 |goto 42.25,63.45
step
talk Assistant Greely##39199
turnin Who's Top of the Food Chain Now?##24816 |goto 45.27,65.56
accept A Goblin in Shark's Clothing##24817 |goto 45.27,65.56
step
click Mechashark X-Steam Controller##202108
Use the Mechashark X-Steam Controller |q 24817/1 |goto 43.63,65.09
step
kill The Hammer##36682 |q 24817/2 |goto 42.1,66.3
|tip Use the abilities on your action bar.
step
talk Hobart Grapplehammer##38120
turnin A Goblin in Shark's Clothing##24817 |goto 45.34,65.21
accept Invasion Imminent!##24856 |goto 45.34,65.21
step
talk Megs Dreadshredder##38432
turnin Invasion Imminent!##24856 |goto 52.20,73.15
accept Bilgewater Cartel Represent##24858 |goto 52.20,73.15
step
talk Brett "Coins" McQuid##38381
accept Naga Hide##24859 |goto 52.20,73.22
stickystart "Replace_Naga_Banners"
step
Kill Vashj'elan enemies around this area
collect 5 Intact Naga Hide##50437 |q 24859/1 |goto 54.14,79.24
step
label "Replace_Naga_Banners"
click Naga Banner##246389+
|tip They look like purple flags hanging from golden rods around this area.
Replace #10# Naga Banners |q 24858/1 |goto 54.14,79.24
step
talk Brett "Coins" McQuid##38381
turnin Naga Hide##24859 |goto 52.20,73.22
step
talk Megs Dreadshredder##38432
turnin Bilgewater Cartel Represent##24858 |goto 52.20,73.14
accept Irresistible Pool Pony##24864 |goto 52.20,73.14
step
use Irresistible Pool Pony##50602
Ride the Irresistible Pool Pony |havebuff 132261 |goto 58.09,80.33 |q 24864
step
talk Naga Hatchling##44589
|tip They look like tiny naga swimming underwater around this area.
Lure #12# Naga Hatchlings |q 24864/1 |goto 59.87,83.59
step
talk Megs Dreadshredder##38432
turnin Irresistible Pool Pony##24864 |goto 52.20,73.14
accept Surrender or Else!##24868 |goto 52.20,73.14
step
kill Faceless of the Deep##38448
|tip Follow Ace as he runs with the Naga Hatchlings.
Deal with the Leader of the Naga |q 24868/1 |goto 54.17,91.28
step
talk Megs Dreadshredder##38432
turnin Surrender or Else!##24868 |goto 52.20,73.14
accept Get Back to Town##24897 |goto 52.20,73.14
step
talk Sassy Hardwrench##38387
turnin Get Back to Town##24897 |goto 45.18,64.91
accept Town-In-A-Box: Under Attack##24901 |goto 45.18,64.91
step
clicknpc B.C. Eliminator##38526
Mount the Turret |invehicle |goto 45.69,64.94 |q 24901
step
Defeat #30# Oomlot Warriors |q 24901/1 |goto 46.82,65.32
|tip Use the "Fire Cannon" ability on your action bar.
step
talk Sassy Hardwrench##38869
turnin Town-In-A-Box: Under Attack##24901 |goto 45.18,64.91
accept Oomlot Village##24924 |goto 45.18,64.91
step
talk Izzy##38647
turnin Oomlot Village##24924 |goto 56.57,71.96
accept Free the Captives##24925 |goto 56.57,71.96
accept Send a Message##24929 |goto 56.57,71.96
stickystart "Free_Goblin_Captives"
step
Follow the path up |goto 59.07,68.59 < 10 |only if walking
kill Yngwie##38696 |q 24929/1 |goto 62.92,68.53
step
label "Free_Goblin_Captives"
kill Oomlot Shaman##38644+
|tip Only kill the Oomlot Shamans that are casting a green spell on Goblin Captives.
Free #5# Goblin Captives |q 24925/1 |goto 60.92,70.46
step
talk Izzy##38647
turnin Free the Captives##24925 |goto 56.57,71.96
turnin Send a Message##24929 |goto 56.57,71.96
accept Oomlot Dealt With##24937 |goto 56.57,71.96
step
talk Sassy Hardwrench##38387
turnin Oomlot Dealt With##24937 |goto 45.17,64.90
accept Up the Volcano##24940 |goto 45.17,64.90
step
talk Coach Crosscheck##38738
turnin Up the Volcano##24940 |goto 51.79,47.11
accept Zombies vs. Super Booster Rocket Boots##24942 |goto 51.79,47.11
step
talk Foreman Dampwick##36471
accept Three Little Pygmies##24945 |goto 51.86,47.20
step
talk Assistant Greely##39199
accept Rockin' Powder##24946 |goto 51.72,47.39
step
use Super Booster Rocket Boot##52013
Wear the Super Booster Rocket Boots |havebuff 133029 |q 24946
stickystart "Collect_Rockin_Powder"
stickystart "Slay_Goblin_Zombies"
step
kill Gaahl##38808 |q 24945/1 |goto 59.60,40.19
step
kill Malmo##38809 |q 24945/2 |goto 58.78,47.20
step
kill Teloch##38810 |q 24945/3 |goto 63.62,52.77
step
label "Collect_Rockin_Powder"
click Rockin' Powder##202351+
|tip They look like brown piles of dirt on the ground around this area.
collect 5 Rockin' Powder##52024 |q 24946/1 |goto 59.37,43.76
step
label "Slay_Goblin_Zombies"
use Super Booster Rocket Boots##52013
|tip Use it near Goblin Zombies around this area.
kill 50 Goblin Zombie##38816+ |q 24942/1 |goto 57.99,45.28
step
talk Coach Crosscheck##38738
turnin Zombies vs. Super Booster Rocket Boots##24942 |goto 51.79,47.11
step
talk Foreman Dampwick##36471
turnin Three Little Pygmies##24945 |goto 51.85,47.19
step
talk Assistant Greely##38124
turnin Rockin' Powder##24946 |goto 51.73,47.38
step
talk Coach Crosscheck##38738
accept Rocket Boot Boost##24952 |goto 51.79,47.11
step
use Rockin' Powder Infused Rocket Boots##52032
Use the Rockin' Powder Infused Rocket Boots |q 24952/1 |goto 51.80,47.10
step
talk Hobart Grapplehammer##38120
turnin Rocket Boot Boost##24952 |goto 68.93,46.44
accept Children of a Turtle God##24954 |goto 68.93,46.44
step
kill Child of Volcanoth##38845+
collect 10 Fire Gland##52035 |q 24954/1 |goto 68.06,43.97
step
talk Hobart Grapplehammer##38120
turnin Children of a Turtle God##24954 |goto 68.93,46.44
accept Volcanoth!##24958 |goto 68.93,46.44
step
clicknpc Volcanoth##38855
use Bootzooka##52043
|tip Use it on Volcanoth repeatedly.
|tip Inside the cave.
kill Volcanoth##38855 |q 24958/1 |goto The Lost Isles/2 55.69,36.16
|tip Take cover behind the rock on the left when Volcanoth casts "Volcanic Breath".
step
talk Sassy Hardwrench##38928
|tip Inside the cave.
turnin Volcanoth!##24958 |goto 62.70,49.84
accept Old Friends##25023 |goto 62.70,49.84
step
Watch the dialogue
Fly to Warchief's Lookout |goto The Lost Isles/0 37.62,43.06 < 10 |q 25023 |notravel
step
talk Thrall##38935
turnin Old Friends##25023 |goto 36.79,43.13
accept Repel the Paratroopers##25024 |goto 36.79,43.13
step
talk Aggra##39065
accept The Heads of the SI:7##25093 |goto 36.26,43.37
step
talk Sassy Hardwrench##38387
accept Mine Disposal, the Goblin Way##25058 |goto 37.36,41.91
stickystart "Slay_Alliance_Paratroopers"
stickystart "Detonate_Land_Mines"
step
kill Commander Arrington##39141
collect Commander Arrington's Head##52346 |q 25093/1 |goto 32.29,42.87
step
kill Alexi Silenthowl##39143
collect Alexi Silenthowl's Head##52349 |q 25093/3 |goto 30.80,33.93
step
kill Darkblade Cyn##39142
collect Darkblade Cyn's Head##52347 |q 25093/2 |goto 33.43,27.87
step
label "Slay_Alliance_Paratroopers"
kill 15 Alliance Paratrooper##39069+ |q 25024/1 |goto 33.24,39.61
step
label "Detonate_Land_Mines"
use Satchel of Grenades##52280
|tip Use it on land mines.
|tip They look like silver objects on the ground around this area.
Detonate #10# Land Mines |q 25058/1 |goto 33.24,39.61
step
talk Thrall##38935
turnin Repel the Paratroopers##25024 |goto 36.79,43.13
step
talk Aggra##39065
turnin The Heads of the SI:7##25093 |goto 36.27,43.37
step
talk Sassy Hardwrench##38387
turnin Mine Disposal, the Goblin Way##25058 |goto 37.35,41.92
accept The Pride of Kezan##25066 |goto 37.35,41.92
step
talk Sassy Hardwrench##38869
Tell her _"Get me up into the skies, Sassy!"_
Pilot the Airplane |invehicle |c |q 25066 |goto 37.35,41.92
step
Kill Gnomeregan Stealth Fighters
|tip The look like airplanes flying around in the sky around this area.
|tip Use your abilities on your action bar.
Shoot Down #10# Gnomeregan Stealth Fighters |q 25066/1 |goto 31.53,36.54
step
Click the yellow arrow on your action bar |outvehicle |goto 37.39,42.08 |q 25066 |notravel
|tip You will drop out of the airplane without a parachute, so make sure you are close to the ground.
step
talk Sassy Hardwrench##38387
turnin The Pride of Kezan##25066 |goto 37.36,41.92
accept The Warchief Wants You##25098 |goto 37.36,41.92
step
talk Thrall##38935
turnin The Warchief Wants You##25098 |goto 36.79,43.13
accept Borrow Bastia##25099 |goto 36.79,43.13
step
talk Kilag Gorefang##35893
turnin Borrow Bastia##25099 |goto 33.79,38.78
accept Let's Ride##25100 |goto 33.79,38.78
step
Travel to Slinky Sharpshiv |goto 53.67,34.81 < 10 |q 25100
step
talk Slinky Sharpshiv##38517
turnin Let's Ride##25100 |goto 53.72,34.93
accept The Gallywix Labor Mine##25109 |goto 53.72,34.93
step
Enter the cave |goto 54.1,36.0 < 7 |walk
Jump down here |goto 55.12,33.91 < 5 |walk
talk Assistant Greely##38124
|tip Downstairs inside the cave.
turnin The Gallywix Labor Mine##25109 |goto 53.16,36.54
accept Kaja'Cola Gives You IDEAS! (TM)##25110 |goto 53.16,36.54
step
click Kaja'Cola Zero-One##229285
|tip Downstairs inside the cave.
|tip They look like soda cans around this area.
|tip They can also drop off Brute Overseers.
collect Kaja'Cola Zero-One##52483 |q 25110/1 |goto 54.80,36.02
step
talk Assistant Greely##38124
|tip Inside the cave.
turnin Kaja'Cola Gives You IDEAS! (TM)##25110 |goto 53.16,36.54
step
_Next to you:_
talk Assistant Greely##39199
accept Morale Boost##25122
accept Throw It On the Ground!##25123
stickystart "Kill_Blastshadow"
step
click Kaja'Cola Zero-One##229285
|tip Downstairs inside the cave.
|tip They look like soda cans around this area.
|tip They can also drop off Brute Overseers.
collect Kaja'Cola Zero-One##52484 |goto 54.64,36.09 |n
use Kaja'Cola Zero-One##52484
|tip Use it on Kezan Citizens and Goblin Survivors.
|tip They look like goblins mining throughout the cave.
Free #6# Other Goblin's Minds |q 25122/4
step
label "Kill_Blastshadow"
kill Blastshadow the Brutemaster##39194
|tip He walks around this area with a succubus.
|tip The succubis dies when Blastshadow does.
click Blastshadow's Soulstone##202574
|tip It's a dark purple orb that floats above his corpse.
|tip He respawns quickly.
collect Blastshadow's Soulstone##52481 |goto 55.57,32.13 |q 25123
step
clicknpc Blastshadow the Brutemaster##39194
use Blastshadow's Soulstone##52481
|tip Use it on Blastshadow the Brutemaster's corpse.
Destroy Blastshadow's Soulstone |q 25123/1 |goto 55.57,32.13
step
_Next to you:_
talk Assistant Greely##39199
turnin Throw It On the Ground!##25123
step
Follow the path |goto 55.33,36.36 < 10 |walk
collect Kaja'Cola Zero-One##52484 |n
clicknpc Izzy##38647
|tip Downstairs inside the cave.
use Kaja'Cola Zero-One##52484
Free Izzy's Mind |q 25122/2 |goto 57.01,35.03
step
collect Kaja'Cola Zero-One##52484 |n
clicknpc Ace##38441
|tip Downstairs inside the cave.
use Kaja'Cola Zero-One##52484
Free Ace's Mind |q 25122/1 |goto 56.99,37.15
step
collect Kaja'Cola Zero-One##52484 |n
clicknpc Gobber##38746
|tip Downstairs inside the cave.
use Kaja'Cola Zero-One##52484
Free Gobber's Mind |q 25122/3 |goto 57.04,32.15
step
_Next to you:_
talk Assistant Greely##39199
turnin Morale Boost##25122
accept Light at the End of the Tunnel##25125
step
Follow the path |goto 57.01,30.51 < 20 |walk
Leave the mine |goto 56.58,28.43 < 15 |walk
clicknpc Mine Cart##39341
turnin Light at the End of the Tunnel##25125 |goto 56.29,27.32
accept Wild Mine Cart Ride##25184 |goto 56.29,27.32
step
Travel to Bilgewater Lumber Yard |goto 54.26,17.10 < 10 |q 25184
step
talk Assistant Greely##38124
turnin Wild Mine Cart Ride##25184 |goto 54.39,16.94
accept Shredder Shutdown##25200 |goto 54.39,16.94
step
talk Coach Crosscheck##38738
accept The Ultimate Footbomb Uniform##25201 |goto 54.44,16.93
stickystart "Collect_Spare_Shredder_Parts"
step
kill 8 Steamwheedle Shark##39354 |q 25200/1 |goto 54.13,20.33
step
label "Collect_Spare_Shredder_Parts"
click Spare Shredder Parts##202608+
|tip They look like inactive shredders around this area.
collect 8 Spare Shredder Parts##52530 |q 25201/1 |goto 54.13,20.33
step
talk Assistant Greely##38124
turnin Shredder Shutdown##25200 |goto 54.39,16.94
step
talk Coach Crosscheck##38738
turnin The Ultimate Footbomb Uniform##25201 |goto 54.44,16.93
step
talk Assistant Greely##38124
accept Release the Valves##25204 |goto 54.39,16.94
step
talk Ace##38441
accept What Kind of Name is Chip, Anyway?##25203 |goto 54.16,17.20
only if _G['UnitSex']("player")==2
step
talk Izzy##38647
accept The Fastest Way to His Heart##25202 |goto 53.99,16.99
only if _G['UnitSex']("player")==3
step
Run up the ramp |goto 50.90,15.99 < 10 |only if walking
click Valve #1##202609
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #1 |q 25204/1 |goto 50.72,13.80
step
click Valve #3##202611
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #3 |q 25204/3 |goto 50.52,13.12
step
click Valve #2##202610
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #2 |q 25204/2 |goto 50.18,11.75
step
click Valve #4##202612
|tip It looks like a red wheel with steam flowing out of it on the side of the wall.
Release Valve #4 |q 25204/4 |goto 49.87,12.71
step
kill Chip Endale##39363 |q 25203/1 |goto 49.86,13.89
only if haveq(25203)
step
kill Chip Endale##39363
collect Still-Beating Heart##52531 |q 25202/1 |goto 49.86,13.89
only if haveq(25202)
step
click Platform Control Panel##202613
turnin Release the Valves##25204 |goto 51.41,13.11
accept Good-bye, Sweet Oil##25207 |goto 51.41,13.11
step
click Big Red Button##339
Destroy the KTC Oil Platform |q 25207/1 |goto 51.41,13.11
step
talk Assistant Greely##38124
turnin Good-bye, Sweet Oil##25207 |goto 54.39,16.94
step
talk Ace##38441
turnin What Kind of Name is Chip, Anyway?##25203 |goto 54.16,17.20
only if haveq(25203)
step
talk Izzy##38647
turnin The Fastest Way to His Heart##25202 |goto 54.00,16.98
only if haveq(25202)
step
talk Assistant Greely##38124
accept The Slave Pits##25213 |goto 54.39,16.94
step
Travel to Sassy Hardwrench |goto 43.95,25.37 < 10 |q 25213
step
talk Sassy Hardwrench##38869
turnin The Slave Pits##25213 |goto 43.63,25.31
accept She Loves Me, She Loves Me NOT!##25243 |goto 43.63,25.31 |only if _G['UnitSex']("player")==2
accept What Kind of Name is Candy, Anyway?##25244 |goto 43.63,25.31 |only if _G['UnitSex']("player")==3
step
talk Hobart Grapplehammer##38120
accept Escape Velocity##25214 |goto 43.85,25.29
stickystart "Launch_Cages"
step
kill Candy Cane##39426
collect Fickle Heart##52559 |q 25243/1 |goto 39.68,27.16
only if haveq(25243)
step
kill Candy Cane##39426 |q 25244/1 |goto 39.68,27.16
only if haveq(25244)
step
label "Launch_Cages"
clicknpc Captured Goblin##39456+
|tip They look like wooden cages around this area.
Launch #8# Cages |q 25214/1 |goto 40.22,26.24
step
talk Hobart Grapplehammer##38120
turnin Escape Velocity##25214 |goto 43.85,25.29
step
talk Sassy Hardwrench##38869
turnin She Loves Me, She Loves Me NOT!##25243 |goto 43.63,25.31 |only if haveq(25243)
turnin What Kind of Name is Candy, Anyway?##25244 |goto 43.63,25.31 |only if haveq(25244)
accept Final Confrontation##25251 |goto 43.63,25.31
step
clicknpc Ultimate Footbomb Uniform##39592
Pilot the Ultimate Footbomb Uniform |q 25251/1 |goto 43.85,25.18
step
Follow the path up |goto 42.30,18.63 < 10 |only if walking
kill Trade Prince Gallywix##39582
|tip Use the abilities on your action bar.
|tip Stand behind Trade Prince Gallywix when you are fighting him.
Deal with Trade Prince Gallywix |q 25251/2 |goto 43.5,20.0
step
Click the yellow arrow on your action bar |outvehicle |goto 43.69,25.25 |q 25251
|tip Run to this location first, since you run faster in the shredder.
step
talk Sassy Hardwrench##38869
turnin Final Confrontation##25251 |goto 43.63,25.32
accept Victory!##25265 |goto 43.63,25.32
step
Travel to Thrall |goto 42.08,17.47 < 10 |q 25265
step
talk Thrall##38935
turnin Victory!##25265 |goto 42.15,17.37
accept Warchief's Emissary##25266 |goto 42.15,17.37
step
talk Sassy Hardwrench##38869 |goto 42.58,16.37
Tell her _"Sassy, let's set sail for Orgrimmar before the island blows for good!"_
Leave the Lost Isles |goto Durotar |noway |q 25266
step
talk Darkspear Loyalist##86884
turnin Warchief's Emissary##25266 |goto Durotar/0 57.65,9.77
accept Message for Saurfang##25267 |goto 57.65,9.77
step
Travel to Orgrimmar |goto Orgrimmar/1 50.39,76.97 < 10 |q 25267
step
talk High Overlord Saurfang##14720
|tip Inside the building.
turnin Message for Saurfang##25267 |goto 48.52,70.72
step
talk Eitrigg##3144
|tip Inside the building.
accept Missing Reports##26803 |goto 49.22,72.29
accept Report to the Labor Captain##25275 |goto 49.22,72.29
step
Ride the elevator up |goto 51.22,63.07 < 10 |only if walking
talk Doras##3310
turnin Missing Reports##26803 |goto 49.66,59.22
accept Flight to Razor Hill##26804 |goto 49.66,59.22
step
talk Gar'Thok##3139
|tip Upstairs inside the building.
turnin Flight to Razor Hill##26804 |goto Durotar/0 51.95,43.50
accept Reports to Orgrimmar##26806 |goto 51.95,43.50
step
talk Burok##41140
turnin Reports to Orgrimmar##26806 |goto 53.10,43.58
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Orc (1-5)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Durotar Orc 1-5",
condition_valid=function() return raceclass('Orc') end,
condition_valid_msg="Orc only.",
condition_suggested=function() return raceclass('Orc') and level <= 5 and not completedq(25132) and not raceclass("DeathKnight") and not ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-60)\\Kalimdor\\Durotar (1-60)",
startlevel=1,
endlevel=5,
},[[
step
talk Kaltunk##10176
accept Your Place In The World##25152 |goto Valley of Trials/0 45.18,68.40
step
talk Gornek##3143
turnin Your Place In The World##25152 |goto 44.93,66.42
accept Cutting Teeth##25126 |goto 44.93,66.42
step
kill 6 Mottled Boar##3098 |q 25126/1 |goto 51.98,54.41
step
talk Gornek##3143
turnin Cutting Teeth##25126 |goto 44.93,66.42
accept Invaders in Our Home##25172 |goto 44.93,66.42
step
kill 7 Northwatch Scout##39317 |q 25172/1 |goto 47.86,75.23
|tip They are stealthed around this area.
step
talk Gornek##3143
turnin Invaders in Our Home##25172 |goto 44.93,66.42
accept Sting of the Scorpid##25127 |goto 44.93,66.42
step
talk Galgar##9796
accept Galgar's Cactus Apple Surprise##25136 |goto 42.97,62.43
stickystart "Collect_Cactus_Apples"
step
Follow the path |goto 46.14,63.29 < 15 |only if walking
Follow the path |goto 49.48,53.39 < 20 |only if walking
kill Scorpid Worker##3124+
collect 8 Scorpid Worker Tail##4862 |q 25127/1 |goto 49.42,44.59
step
label "Collect_Cactus_Apples"
click Cactus Apple##171938+
|tip They look like smaller cacti with red balls on them around this area.
collect 6 Cactus Apple##11583 |q 25136/1 |goto 49.42,44.59
step
talk Hana'zua##3287
accept Sarkoth##25129 |goto 34.62,44.20
step
Follow the path up |goto 35.07,53.97 < 15 |only if walking
kill Sarkoth##3281
|tip It's a bigger, darker scorpion that walks around this area.
collect Sarkoth's Mangled Claw##4905 |q 25129/1 |goto 34.13,62.70
step
Follow the path down |goto 34.48,58.37 < 20 |only if walking
talk Hana'zua##3287
turnin Sarkoth##25129 |goto 34.62,44.20
accept Back to the Den##25130 |goto 34.62,44.20
step
Follow the path |goto 46.40,57.99 < 10 |only if walking
talk Gornek##3143
turnin Sting of the Scorpid##25127 |goto 44.93,66.42
turnin Back to the Den##25130 |goto 44.93,66.42
step
talk Galgar##9796
turnin Galgar's Cactus Apple Surprise##25136 |goto 42.97,62.43
step
talk Zureetha Fargaze##3145
accept Vile Familiars##25131 |goto 45.82,63.44
step
talk Foreman Thazz'ril##11378
accept Lazy Peons##37446 |goto 46.16,63.26
stickystart "Slay_Vile_Familiars"
step
clicknpc Lazy Peon##10556+
|tip You can find them all around this area, and along the mountainside.
use Foreman's Blackjack##16114
|tip Use it on Lazy Peons around this area.
|tip You may have to stand next to them and wait for them to go to sleep, if they are all chopping trees, but it doesn't take too long.
Waken #4# Peons |q 37446/1 |goto 54.26,56.93
step
label "Slay_Vile_Familiars"
kill 8 Vile Familiar##3101 |q 25131/1 |goto 55.05,26.82
step
talk Foreman Thazz'ril##11378
turnin Lazy Peons##37446 |goto 46.14,63.28
step
talk Zureetha Fargaze##3145
turnin Vile Familiars##25131 |goto 45.82,63.44
accept Burning Blade Medallion##25132 |goto 45.82,63.44
step
talk Foreman Thazz'ril##11378
accept Thazz'ril's Pick##25135 |goto 46.14,63.28
stickystart "Kill_Felstalkers"
step
Follow the path |goto 48.56,56.33 < 20 |only if walking
Follow the path |goto 49.08,41.46 < 20 |only if walking
Follow the path |goto Durotar/8 72.33,78.27 < 15 |walk
Follow the path down |goto Durotar/8 54.40,68.40 < 15 |walk
click Thazz'ril's Pick##178087
|tip Inside the cave.
collect Thazz'ril's Pick##16332 |q 25135/1 |goto Durotar/8 40.73,52.56
step
Follow the path |goto 44.02,69.81 < 15 |walk
Follow the path down |goto 39.36,87.07 < 15 |walk
Continue following the path down |goto 23.27,76.02 < 15 |walk
kill Yarrog Baneshadow##3183
|tip Inside the cave.
collect Burning Blade Medallion##4859 |q 25132/2 |goto 14.91,46.66
step
label "Kill_Felstalkers"
kill 5 Felstalker##3102 |q 25132/1 |goto 45.30,60.62
|tip Inside the cave.
step
talk Foreman Thazz'ril##11378
turnin Thazz'ril's Pick##25135 |goto Valley of Trials/0 46.16,63.29
step
talk Zureetha Fargaze##3145
turnin Burning Blade Medallion##25132 |goto 45.82,63.44
accept Report to Sen'jin Village##25133 |goto 45.82,63.44
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Tauren (1-4)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Mulgore 1-4",
condition_valid=function() return raceclass('Tauren') end,
condition_valid_msg="Tauren only.",
condition_suggested=function() return raceclass('Tauren') and level <= 4 and not completedq(23733) and not raceclass("DeathKnight") and not ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-60)\\Kalimdor\\Mulgore (1-60)",
startlevel=1,
endlevel=4,
},[[
step
talk Chief Hawkwind##2981
accept The First Step##14449 |goto Camp Narache/0 27.73,28.30
step
talk Grull Hawkwind##2980
turnin The First Step##14449 |goto 39.44,37.24
accept Rite of Strength##14452 |goto 39.44,37.24
step
kill 6 Bristleback Invader##36943 |q 14452/1 |goto 46.56,42.64
step
talk Grull Hawkwind##2980
turnin Rite of Strength##14452 |goto 39.44,37.24
accept Our Tribe, Imprisoned##24852 |goto 39.44,37.24
step
click Quilboar Cage##201577+
|tip They look like yellow wooden cages around this area.
Free #4# Braves |q 24852/1 |goto 49.39,35.36
step
talk Grull Hawkwind##2980
turnin Our Tribe, Imprisoned##24852 |goto 39.44,37.24
accept Go to Adana##14458 |goto 39.44,37.24
step
talk Adana Thunderhorn##36694
turnin Go to Adana##14458 |goto 30.92,50.57
accept Rite of Courage##14456 |goto 30.92,50.57
accept Stop the Thorncallers##14455 |goto 30.92,50.57
stickystart "Slay_Bristleback_Thorncallers"
step
kill Bristleback Gun Thief##36708+
collect 7 Stolen Rifle##49535 |q 14456/1 |goto 34.94,61.75
step
label "Slay_Bristleback_Thorncallers"
kill 7 Bristleback Thorncaller##36697 |q 14455/1 |goto 34.83,69.85
step
talk Adana Thunderhorn##36694
turnin Rite of Courage##14456 |goto 30.92,50.57
turnin Stop the Thorncallers##14455 |goto 30.92,50.57
accept The Battleboars##14459 |goto 30.92,50.57
accept Feed of Evil##14461 |goto 30.92,50.57
stickystart "Slay_Armored_Battleboars"
step
use Adana's Torch##49539
|tip Use it next to the trough.
|tip It looks like a wooden bathtub full of pink meat.
Burn the First Trough |q 14461/1 |goto 26.38,66.29
step
use Adana's Torch##49539
|tip Use it next to the trough.
|tip It looks like a wooden bathtub full of pink meat.
Burn the Second Trough |q 14461/2 |goto 25.16,69.16
step
use Adana's Torch##49539
|tip Use it next to the trough.
|tip It looks like a wooden bathtub full of pink meat.
Burn the Third Trough |q 14461/3 |goto 28.22,70.42
step
label "Slay_Armored_Battleboars"
kill 10 Armored Battleboar##36696 |q 14459/1 |goto 26.94,69.16
step
talk Adana Thunderhorn##36694
turnin The Battleboars##14459 |goto 30.92,50.57
turnin Feed of Evil##14461 |goto 30.92,50.57
accept Rite of Honor##14460 |goto 30.92,50.57
step
kill Chief Squealer Thornmantle##36712
collect Mane of Thornmantle##50473 |q 14460/1 |goto 15.27,46.71
step
talk Chief Hawkwind##2981
turnin Rite of Honor##14460 |goto 27.73,28.29
accept Last Rites, First Rites##24861 |goto 27.73,28.29
step
use Water Pitcher##50465
Place the Offering |q 24861/1 |goto 27.60,27.77
step
talk Chief Hawkwind##2981
turnin Last Rites, First Rites##24861 |goto 27.73,28.29
accept Rites of the Earthmother##23733 |goto 27.73,28.29
step
Follow the path up |goto 20.67,34.26 < 15 |only if walking
Continue up the path |goto 16.04,28.03 < 10 |only if walking
Continue up the path |goto 11.75,28.10 < 10 |only if walking
talk Dyami Windsoar##36803
turnin Rites of the Earthmother##23733 |goto 15.6,30.31
accept Rite of the Winds##24215 |goto 15.6,30.31
step
use Water of Vision##49652 |goto 15.42,30.30
Drink the Water of Vision |goto 15.42,30.30 > 30 |noway |q 24215
step
Fly to Bloodhoof Village |goto Mulgore/0 47.82,59.87 < 10 |notravel |q 24215
step
talk Ahmo Thunderhorn##36644
turnin Rite of the Winds##24215 |goto 47.66,59.59
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Troll (1-5)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Durotar Troll 1-5",
condition_valid=function() return raceclass('Troll') end,
condition_valid_msg="Troll only.",
condition_suggested=function() return raceclass('Troll') and level <= 5 and not completedq(24814) and not raceclass("DeathKnight") and not ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-60)\\Kalimdor\\Durotar (1-60)",
startlevel=1,
endlevel=5,
},[[
step
talk Jin'thala##37951
accept The Rise of the Darkspear##31159 |goto Echo Isles/0 42.82,53.44 |only if Troll Monk
accept The Rise of the Darkspear##24776 |goto 42.82,53.44 |only if Troll Hunter
accept The Rise of the Darkspear##24607 |goto 42.82,53.44 |only if Troll Warrior
accept The Rise of the Darkspear##24770 |goto 42.82,53.44 |only if Troll Rogue
accept The Rise of the Darkspear##24782 |goto 42.82,53.44 |only if Troll Priest
accept The Rise of the Darkspear##24764 |goto 42.82,53.44 |only if Troll Druid
accept The Rise of the Darkspear##26272 |goto 42.82,53.44 |only if Troll Warlock
accept The Rise of the Darkspear##24750 |goto 42.82,53.44 |only if Troll Mage
accept The Rise of the Darkspear##24758 |goto 42.82,53.44 |only if Troll Shaman
step
talk Nekali##38242
turnin The Rise of the Darkspear##24758 |goto 50.07,52.75
accept The Basics: Hitting Things##24759 |goto 50.07,52.75
only if Troll Shaman
step
talk Soratha##38246
turnin The Rise of the Darkspear##24750 |goto 59.68,52.06
accept The Basics: Hitting Things##24751 |goto 59.68,52.06
only if Troll Mage
step
talk Voldreka##42618
turnin The Rise of the Darkspear##26272 |goto 50.04,49.94
accept The Basics: Hitting Things##26273 |goto 50.04,49.94
only if Troll Warlock
step
talk Zen'tabra##38243
turnin The Rise of the Darkspear##24764 |goto 58.06,54.03
accept The Basics: Hitting Things##24765 |goto 58.06,54.03
only if Troll Druid
step
talk Tunari##38245
turnin The Rise of the Darkspear##24782 |goto 58.04,49.26
accept The Basics: Hitting Things##24783 |goto 58.04,49.26
only if Troll Priest
step
talk Legati##38244
turnin The Rise of the Darkspear##24770 |goto 52.89,49.90
accept The Basics: Hitting Things##24771 |goto 52.89,49.90
only if Troll Rogue
step
talk Ortezza##38247
turnin The Rise of the Darkspear##24776 |goto 56.36,50.08
accept The Basics: Hitting Things##24777 |goto 56.36,50.08
only if Troll Hunter
step
talk Nortet##38037
turnin The Rise of the Darkspear##24607 |goto 52.56,53.66
accept The Basics: Hitting Things##24639 |goto 52.56,53.66
only if Troll Warrior
step
talk Zabrax##63310
turnin The Rise of the Darkspear##31159 |goto 52.57,51.85
accept The Basics: Hitting Things##31158 |goto 52.57,51.85
only if Troll Monk
step
kill 6 Tiki Target##38038 |q 24759/1 |goto 49.83,54.17
only if Troll Shaman
step
kill 6 Tiki Target##38038 |q 24771/1 |goto 52.53,48.93
only if Troll Rogue
step
kill 6 Tiki Target##38038 |q 24639/1 |goto 53.11,53.34
only if Troll Warrior
step
kill 6 Tiki Target##38038 |q 26273/1 |goto 50.47,48.84
only if Troll Warlock
step
kill 6 Tiki Target##38038 |q 24751/1 |goto 60.83,53.01
only if Troll Mage
step
kill 6 Tiki Target##38038 |q 24777/1 |goto 56.64,49.84
only if Troll Hunter
step
kill 6 Tiki Target##38038 |q 24765/1 |goto 58.76,53.89
only if Troll Druid
step
kill 6 Tiki Target##38038 |q 24783/1 |goto 58.29,47.98
only if Troll Priest
step
kill 6 Tiki Target##38038 |q 31158/1 |goto 52.82,50.83
only if Troll Monk
step
talk Nekali##38242
turnin The Basics: Hitting Things##24759 |goto 50.07,52.75
accept A Rough Start##24761 |goto 50.07,52.75
only if Troll Shaman
step
talk Soratha##38246
turnin The Basics: Hitting Things##24751 |goto 59.68,52.06
accept A Rough Start##24753 |goto 59.68,52.06
only if Troll Mage
step
talk Voldreka##42618
turnin The Basics: Hitting Things##26273 |goto 50.04,49.94
accept A Rough Start##26275 |goto 50.04,49.94
only if Troll Warlock
step
talk Zen'tabra##38243
turnin The Basics: Hitting Things##24765 |goto 58.06,54.03
accept A Rough Start##24767 |goto 58.06,54.03
only if Troll Druid
step
talk Tunari##38245
turnin The Basics: Hitting Things##24783 |goto 58.04,49.26
accept A Rough Start##24785 |goto 58.04,49.26
only if Troll Priest
step
talk Legati##38244
turnin The Basics: Hitting Things##24771 |goto 52.89,49.90
accept A Rough Start##24773 |goto 52.89,49.90
only if Troll Rogue
step
talk Ortezza##38247
turnin The Basics: Hitting Things##24777 |goto 56.36,50.08
accept A Rough Start##24779 |goto 56.36,50.08
only if Troll Hunter
step
talk Nortet##38037
turnin The Basics: Hitting Things##24639 |goto 52.56,53.66
accept A Rough Start##24641 |goto 52.56,53.66
only if Troll Warrior
step
talk Zabrax##63310
turnin The Basics: Hitting Things##31158 |goto 52.57,51.85
accept A Rough Start##31160 |goto 52.57,51.85
only if Troll Monk
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24767/1 |goto 57.17,43.26
only if Troll Druid
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24785/1 |goto 57.17,43.26
only if Troll Priest
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24753/1 |goto 57.17,43.26
only if Troll Mage
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24779/1 |goto 57.17,43.26
only if Troll Hunter
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24761/1 |goto 47.99,49.85
only if Troll Shaman
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24641/1 |goto 47.99,49.85
only if Troll Warrior
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 26275/1 |goto 47.99,49.85
only if Troll Warlock
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 24773/1 |goto 47.99,49.85
only if Troll Rogue
step
kill Wildmane Cat##38046+
collect 6 Wildmane Cat Pelt##50222 |q 31160/1 |goto 47.99,49.85
only if Troll Monk
step
talk Nekali##38242
turnin A Rough Start##24761 |goto 50.07,52.75
accept Proving Pit##24762 |goto 50.07,52.75
only if Troll Shaman
step
talk Soratha##38246
turnin A Rough Start##24753 |goto 59.68,52.06
accept Proving Pit##24754 |goto 59.68,52.06
only if Troll Mage
step
talk Voldreka##42618
turnin A Rough Start##26275 |goto 50.04,49.94
accept Proving Pit##26276 |goto 50.04,49.94
only if Troll Warlock
step
talk Zen'tabra##38243
turnin A Rough Start##24767 |goto 58.06,54.03
accept Proving Pit##24768 |goto 58.06,54.03
only if Troll Druid
step
talk Tunari##38245
turnin A Rough Start##24785 |goto 58.04,49.26
accept Proving Pit##24786 |goto 58.04,49.26
only if Troll Priest
step
talk Legati##38244
turnin A Rough Start##24773 |goto 52.89,49.90
accept Proving Pit##24774 |goto 52.89,49.90
only if Troll Rogue
step
talk Ortezza##38247
turnin A Rough Start##24779 |goto 56.36,50.08
accept Proving Pit##24780 |goto 56.36,50.08
only if Troll Hunter
step
talk Nortet##38037
turnin A Rough Start##24641 |goto 52.56,53.66
accept Proving Pit##24642 |goto 52.56,53.66
only if Troll Warrior
step
talk Zabrax##63310
turnin A Rough Start##31160 |goto 52.57,51.85
accept Proving Pit##31161 |goto 52.57,51.85
only if Troll Monk
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to the Darkspear Jailor |q 24754/1 |goto 57.49,52.66
only if Troll Mage
step
kill Captive Spitescale Scout##38142+ |q 24754/2 |goto 57.28,51.82
only if Troll Mage
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to the Darkspear Jailor |q 24768/1 |goto 57.49,52.66
only if Troll Druid
step
kill Captive Spitescale Scout##38142+ |q 24768/2 |goto 57.28,51.82
only if Troll Druid
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to the Darkspear Jailor |q 24786/1 |goto 57.49,52.66
only if Troll Priest
step
kill Captive Spitescale Scout##38142+ |q 24786/2 |goto 57.28,51.82
only if Troll Priest
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to the Darkspear Jailor |q 24780/1 |goto 57.49,52.66
only if Troll Hunter
step
kill Captive Spitescale Scout##38142+ |q 24780/2 |goto 57.28,51.82
only if Troll Hunter
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to the Darkspear Jailor |q 24774/1 |goto 57.49,52.66
only if Troll Rogue
step
kill Captive Spitescale Scout##38142+ |q 24774/2 |goto 57.28,51.82
only if Troll Rogue
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to the Darkspear Jailor |q 24642/1 |goto 57.49,52.66
only if Troll Warrior
step
kill Captive Spitescale Scout##38142+ |q 24642/2 |goto 57.28,51.82
only if Troll Warrior
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to the Darkspear Jailor |q 26276/1 |goto 57.49,52.66
only if Troll Warlock
step
kill Captive Spitescale Scout##38142+ |q 26276/2 |goto 57.28,51.82
only if Troll Warlock
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to the Darkspear Jailor |q 24762/1 |goto 57.49,52.66
only if Troll Shaman
step
kill Captive Spitescale Scout##38142+ |q 24762/2 |goto 57.28,51.82
only if Troll Shaman
step
talk Darkspear Jailor##39062
Tell him _"I'm ready to face my challenge."_
Speak to the Darkspear Jailor |q 31161/1 |goto 57.49,52.66
only if Troll Monk
step
kill Captive Spitescale Scout##38142+ |q 31161/2 |goto 57.28,51.82
only if Troll Monk
step
talk Nekali##38242
turnin Proving Pit##24762 |goto 50.07,52.75
only if Troll Shaman
step
talk Soratha##38246
turnin Proving Pit##24754 |goto 59.68,52.06
only if Troll Mage
step
talk Voldreka##42618
turnin Proving Pit##26276 |goto 50.04,49.94
only if Troll Warlock
step
talk Zen'tabra##38243
turnin Proving Pit##24768 |goto 58.06,54.03
only if Troll Druid
step
talk Tunari##38245
turnin Proving Pit##24786 |goto 58.04,49.26
only if Troll Priest
step
talk Legati##38244
turnin Proving Pit##24774 |goto 52.89,49.90
only if Troll Rogue
step
talk Ortezza##38247
turnin Proving Pit##24780 |goto 56.36,50.08
only if Troll Hunter
step
talk Nortet##38037
turnin Proving Pit##24642 |goto 52.56,53.66
only if Troll Warrior
step
talk Zabrax##63310
turnin Proving Pit##31161 |goto 52.57,51.85
only if Troll Monk
step
talk Vol'jin##38966
|tip Inside the building.
turnin More Than Expected##24781 |goto 61.55,65.85 |only if Troll Hunter
turnin More Than Expected##24643 |goto 61.55,65.85 |only if Troll Warrior
turnin More Than Expected##24775 |goto 61.55,65.85 |only if Troll Rogue
turnin More Than Expected##24787 |goto 61.55,65.85 |only if Troll Priest
turnin More Than Expected##24769 |goto 61.55,65.85 |only if Troll Druid
turnin More Than Expected##26277 |goto 61.55,65.85 |only if Troll Warlock
turnin More Than Expected##24755 |goto 61.55,65.85 |only if Troll Mage
turnin More Than Expected##24763 |goto 61.55,65.85 |only if Troll Shaman
turnin More Than Expected##31163 |goto 61.55,65.85 |only if Troll Monk
accept Moraya##25064 |goto 61.55,65.85
step
talk Tora'jin##39007
accept Crab Fishin'##25037 |goto 60.54,62.90
step
kill Pygmy Surf Crawler##39004+
collect 5 Fresh Crawler Meat##52080 |q 25037/1 |goto 67.35,56.04
step
talk Tora'jin##39007
turnin Crab Fishin'##25037 |goto 60.54,62.90
step
talk Moraya##38005
turnin Moraya##25064 |goto 56.85,63.69
accept A Troll's Truest Companion##24622 |goto 56.85,63.69
step
talk Kijara##37969
|tip She walks around this area.
turnin A Troll's Truest Companion##24622 |goto 45.57,85.10
accept Saving the Young##24623 |goto 45.57,85.10
step
talk Tegashi##37987
accept Mercy for the Lost##24624 |goto 45.70,85.02
accept Consort of the Sea Witch##24625 |goto 45.70,85.02
stickystart "Slay_Corrupted_Bloodtalons"
stickystart "Rescue_Bloodtalon_Hatchlings"
step
kill Naj'tess##39072
|tip He walks around this area.
collect Naj'tess' Orb of Corruption##50018 |q 24625/1 |goto 36.54,69.14
step
label "Slay_Corrupted_Bloodtalons"
kill 8 Corrupted Bloodtalon##37961+ |q 24624/1 |goto 38.55,68.82
step
label "Rescue_Bloodtalon_Hatchlings"
use Bloodtalon Whistle##52283
|tip Use it near Lost Bloodtalon Hatchlings.
|tip They look like tiny red raptors around this area.
Rescue #12# Bloodtalon Hatchlings |q 24623/1 |goto 38.37,72.89
step
talk Kijara##37969
|tip She walks around this area.
turnin Saving the Young##24623 |goto 45.57,85.10
step
talk Tegashi##37987
turnin Mercy for the Lost##24624 |goto 45.70,85.00
turnin Consort of the Sea Witch##24625 |goto 45.70,85.00
step
talk Kijara##37969
|tip She walks around this area.
accept Young and Vicious##24626 |goto 45.57,85.10
step
clicknpc Swiftclaw##38002
use Bloodtalon Lasso##50053
|tip Use it on Swiftclaw.
|tip Swiftclaw is a dark colored raptor that runs really fast around this area.
Capture Swiftclaw |q 24626/1 |goto 41.85,86.25
step
_While Riding Swiftclaw:_
Return Swiftclaw to the Raptor Pens |q 24626/2 |goto 52.57,65.46
step
talk Moraya##38005
turnin Young and Vicious##24626 |goto 56.85,63.69
step
talk Tortunga##38440
accept Breaking the Line##25035 |goto 58.95,66.82
step
talk Jornun##38989 |goto 59.06,66.91
Tell him _"Yes. Do you have a raptor that can take me there?"_
Secure a Ride to Spitescale Cove |goto 59.06,66.91 > 30 |noway |q 25035
step
Ride the Raptor to Spitescale Cove |goto 58.69,23.42 < 10 |q 25035
step
talk Morakki##38442
turnin Breaking the Line##25035 |goto 58.90,23.09
accept No More Mercy##24812 |goto 58.90,23.09
accept Territorial Fetish##24813 |goto 58.90,23.09
stickystart "Place_Territorial_Fetishes"
step
Kill Spitescale enemies around this area
|tip Inside this cave.
|tip Stay near the entrance of the cave, if you can.
Slay #12# Spitescale Naga |q 24812/1 |goto Echo Isles/9 65.19,64.10
step
label "Place_Territorial_Fetishes"
use Territorial Fetish##52065
|tip Use it next to Spitescale Flags.
|tip They look like red penant flags on blue-ish tridents stuck in the ground all around inside this cave.
|tip Stay near the entrance of the cave, if you can.
Place #8# Territorial Fetishes |q 24813/1 |goto 66.25,58.46
step
talk Morakki##38442
turnin No More Mercy##24812 |goto Echo Isles/0 58.91,23.06
turnin Territorial Fetish##24813 |goto 58.91,23.06
accept An Ancient Enemy##24814 |goto 58.91,23.06
step
talk Vol'jin##10540
Speak with Vol'jin at Spitescale Cove |q 24814/1 |goto 62.23,18.01
step
talk Vol'jin##10540 |goto 62.23,18.01
Tell him _"I am ready, Vol'jin."_
Follow Your Allies into Battle |goto 61.44,16.88 < 7 |noway |q 24814
|tip Follow Vol'jin and Vanira as they walk.
step
Watch the dialogue
kill Zar'jira##38306 |q 24814/2 |goto 60.41,15.35
|tip Click the 3 braziers behind Zar'jira when the message displays on the screen telling you to stamp them out.
step
Watch the dialogue
talk Vanira##39027 |goto 60.26,15.80
Tell her _"Take me back to Darkspear Hold if you would, Vanira."_
Return to Darkspear Hold |goto 59.53,63.24 < 10 |noway |q 24814
step
talk Vol'jin##38966
|tip Inside the building.
turnin An Ancient Enemy##24814 |goto 61.55,65.85
accept Sen'jin Village##25073 |goto 61.55,65.85
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Undead (1-10)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Tirisfal 1-11",
condition_valid=function() return raceclass('Scourge') end,
condition_valid_msg="Scourge only.",
condition_suggested=function() return raceclass('Scourge') and level <= 10 and not completedq(25012) and not raceclass("DeathKnight") and not ZGV.InPhase("exilesreach") end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Silverpine Forest (5-60)",
startlevel=1,
endlevel=10,
},[[
step
talk Agatha##49044
accept Fresh out of the Grave##24959 |goto Deathknell/0 40.51,78.53
only if Scourge
step
talk Undertaker Mordo##1568
turnin Fresh out of the Grave##24959 |goto 43.44,79.93
accept The Shadow Grave##28608 |goto 43.44,79.93
only if Scourge
step
Enter the crypt |goto 44.52,83.00 < 5 |walk
click Thick Embalming Fluid##207255
|tip Downstairs inside the crypt.
|tip It looks like a green globe sitting on the table.
collect Thick Embalming Fluid##64582 |q 28608/1 |goto Tirisfal Glades/0 29.67,71.97
step
click Corpse-Stitching Twine##207256
|tip Downstairs inside the crypt.
|tip It looks like a red spool of thread sitting on the table.
collect Corpse-Stitching Twine##64581 |q 28608/2 |goto 29.65,71.99
only if Scourge
step
talk Undertaker Mordo##1568
turnin The Shadow Grave##28608 |goto Deathknell/0 43.44,79.93
accept Those That Couldn't Be Saved##26799 |goto 43.44,79.93
only if Scourge
step
talk Caretaker Caice##2307
accept The Wakening##24960 |goto 45.93,80.46
only if Scourge
stickystart "Slay_Mindless_Zombies"
step
talk Valdred Moray##49231
Tell him _"Don't you remember? You died."_
Speak with Valdred Moray |q 24960/3 |goto 40.70,72.97
only if Scourge
step
talk Lilian Voss##38895
Tell her _"I'm not an abomination, I'm simply undead. I just want to speak with you."_
Speak with Lilian Voss |q 24960/1 |goto 44.22,70.61
only if Scourge
step
talk Marshal Redpath##49230
Tell him _"I'm not here to fight. I've only been asked to speak with you."_
Speak with Marshal Redpath |q 24960/2 |goto 46.55,71.11
only if Scourge
step
label "Slay_Mindless_Zombies"
kill 6 Mindless Zombie##1501 |q 26799/1 |goto 45.08,74.54
only if Scourge
step
talk Undertaker Mordo##1568
turnin Those That Couldn't Be Saved##26799 |goto 43.44,79.93
only if Scourge
step
talk Caretaker Caice##2307
turnin The Wakening##24960 |goto 45.93,80.46
accept Beyond the Graves##25089 |goto 45.93,80.46
only if Scourge
step
talk Deathguard Saltain##1740
|tip He walks around this area.
turnin Beyond the Graves##25089 |goto 49.95,56.33
accept Recruitment##26800 |goto 49.95,56.33
only if Scourge
step
talk Shadow Priest Sarvis##1569
|tip Inside the building.
accept Scourge on our Perimeter##26801 |goto 46.62,58.81
stickystart "Gather_Scarlet_Corpses"
step
Kill enemies around this area
Slay #8# Deathknell Scourge |q 26801/1 |goto 53.80,45.07
step
label "Gather_Scarlet_Corpses"
clicknpc Scarlet Corpse##49340+
|tip They look like dead humans in red outfits laying on the ground around this area.
Gather #6# Scarlet Corpses |q 26800/1 |goto 52.22,50.26
step
talk Deathguard Saltain##1740
|tip He walks around this area.
turnin Recruitment##26800 |goto 49.95,56.33
only if Scourge
step
talk Shadow Priest Sarvis##1569
|tip Inside the building.
turnin Scourge on our Perimeter##26801 |goto 46.62,58.81
accept Novice Elreth##28651 |goto 46.62,58.81
step
talk Novice Elreth##1661
|tip Inside the building.
turnin Novice Elreth##28651 |goto 46.73,58.20
accept The Truth of the Grave##24961 |goto 46.73,58.20
step
talk Lilian Voss##38910
|tip Inside the building.
Tell her _"You're not hideous, Lillian... you're one of us. Here, look in this mirror, see for yourself."_
|tip If she's not on the ground floor, she can also be found on the upper level of the building at the same location.
Show Lilian Her Reflection |q 24961/1 |goto 54.35,56.97
step
talk Novice Elreth##1661
|tip Inside the building.
turnin The Truth of the Grave##24961 |goto 46.73,58.20
accept The Executor In the Field##28672 |goto 46.73,58.20
step
talk Executor Arren##1570
turnin The Executor In the Field##28672 |goto 55.48,37.79
accept The Damned##26802 |goto 55.48,37.79
stickystart "Collect_Duskbat_Wings"
step
Kill Scavenger enemies around this area
collect 4 Scavenger Paw##3265 |q 26802/1 |goto 67.70,24.59
step
label "Collect_Duskbat_Wings"
Kill Duskbat enemies around this area
collect 4 Duskbat Wing##3264 |q 26802/2 |goto 55.36,33.33
step
talk Executor Arren##1570
turnin The Damned##26802 |goto 55.48,37.79
accept Night Web's Hollow##24973 |goto 55.48,37.79
step
kill 8 Young Night Web Spider##1504 |q 24973/1 |goto 35.50,28.87
step
kill 5 Night Web Spider##1505 |q 24973/2 |goto Deathknell/12 59.78,59.13
|tip Inside the mine.
step
talk Executor Arren##1570
turnin Night Web's Hollow##24973 |goto Deathknell/0 55.48,37.79
accept No Better Than the Zombies##24970 |goto 55.48,37.79
step
talk Darnell##49425
turnin No Better Than the Zombies##24970 |goto 67.03,42.37
accept Assault on the Rotbrain Encampment##24971 |goto 67.03,42.37
stickystart "Slay_Rotbrain_Undead"
step
kill Marshal Redpath##49424 |q 24971/1 |goto 70.06,69.72
step
label "Slay_Rotbrain_Undead"
Kill enemies around this area
Slay #8# Rotbrain Undead |q 24971/2 |goto 74.54,69.12
step
talk Shadow Priest Sarvis##1569
|tip Inside the building.
turnin Assault on the Rotbrain Encampment##24971 |goto 46.62,58.81
accept Vital Intelligence##24972 |goto 46.62,58.81
step
talk Deathguard Simmer##1519
|tip Inside the building.
turnin Vital Intelligence##24972 |goto Tirisfal Glades/0 44.75,53.68
accept Reaping the Reapers##24978 |goto 44.75,53.68
step
talk Apothecary Johaan##1518
|tip Inside the building.
accept Fields of Grief##24975 |goto 44.62,53.79
step
talk Sedrick Calston##38925
|tip Upstairs inside the building.
accept Ever So Lonely##24974 |goto 44.75,53.65
stickystart "Collect_Tirisfal_Pumpkins"
step
Kill enemies around this area
Slay #10# Tirisfal Farmers |q 24978/1 |goto 37.60,51.22
step
label "Collect_Tirisfal_Pumpkins"
click Tirisfal Pumpkin##375+
|tip They look like large orange pumpkins on the ground around this area.
collect 10 Tirisfal Pumpkin##2846 |q 24975/1 |goto 37.60,51.22
step
Kill Vile Fin enemies around this area
use Murloc Leash##52059
|tip Use it on a Vile Fin murloc when they are weak.
Capture a Vile Fin |q 24974/1 |goto 35.58,43.54
step
talk Deathguard Simmer##1519
|tip Inside the building.
turnin Reaping the Reapers##24978 |goto 44.75,53.68
accept The Scarlet Palisade##24980 |goto 44.75,53.68
step
talk Apothecary Johaan##1518
|tip Inside the building.
turnin Fields of Grief##24975 |goto 44.62,53.79
accept Variety is the Spice of Death##24976 |goto 44.62,53.79
step
Return the Vile Fin |q 24974/2 |goto 44.75,53.65
|tip Upstairs inside the building.
|tip The murloc has to get close to the bed.
step
talk Sedrick Calston##38925
|tip Upstairs inside the building.
turnin Ever So Lonely##24974 |goto 44.75,53.65
step
click Marrowpetal Stalk##202422+
|tip They look like red plants underwater around this area.
collect 4 Marrowpetal##52067 |q 24976/1 |goto 49.02,54.26
step
click Xavren's Thorn##202421+
|tip They look like small yellow plants on the hills around this area.
collect 4 Xavren's Thorn##52066 |q 24976/2 |goto 39.66,36.89
step
clicknpc Briny Sea Cucumber##38933+
|tip They look like small pink and yellow grubs underwater around this area.
collect 8 Briny Sea Creature##52068 |q 24976/3 |goto 35.38,39.72
stickystart "Slay_Scarlet_Warriors"
step
kill Scarlet Warrior##1535+
collect A Scarlet Letter##52079 |n
accept A Scarlet Letter##24979 |goto 33.00,48.24
|tip You will eventually automatically accept this quest after looting.
step
talk Lilian Voss##38999
|tip At the top of the tower.
Tell her _"I'm here to rescue you."_
Watch the dialogue
Find the Scarlet Prisoner |q 24979/1 |goto 31.67,46.33
step
label "Slay_Scarlet_Warriors"
kill 10 Scarlet Warrior##1535 |q 24980/1 |goto 33.00,48.24
step
talk Deathguard Simmer##1519
|tip Inside the building.
turnin The Scarlet Palisade##24980 |goto 44.75,53.68
turnin A Scarlet Letter##24979 |goto 44.75,53.68
step
talk Apothecary Johaan##1518
|tip Inside the building.
turnin Variety is the Spice of Death##24976 |goto 44.62,53.79
accept Johaan's Experiment##24977 |goto 44.62,53.79
step
talk Captured Scarlet Zealot##1931
turnin Johaan's Experiment##24977 |goto 44.70,52.62
step
talk Gordo##10666
|tip He walks around this area.
accept Gordo's Task##25038 |goto 44.16,53.84
step
clicknpc Gloom Weed##175566+
|tip They look like wilted green and purple plants underwater around this area.
collect 3 Gloom Weed##12737 |q 25038/1 |goto 49.37,54.75
step
talk Deathguard Dillinger##1496
accept A Putrid Task##25090 |goto 52.55,54.81
accept The New Forsaken##24982 |goto 52.55,54.81
step
Kill enemies around this area
collect 7 Putrid Claw##2855 |q 25090/1 |goto 53.32,48.92
step
talk Deathguard Dillinger##1496
turnin A Putrid Task##25090 |goto 52.54,54.82
step
talk Anette Williams##43124
fpath Brill |goto 58.84,51.94
step
talk Deathguard Morris##1745
accept Supplying Brill##6321 |goto 60.13,52.40
only if Scourge
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
turnin Gordo's Task##25038 |goto 60.07,52.81
accept Darkhound Pounding##24990 |goto 60.07,52.81
step
talk Executor Zygand##1515
accept A Thorn in our Side##24981 |goto 60.54,51.86
step
talk Innkeeper Renee##5688
|tip Inside the building.
home Brill |goto 60.87,51.50 |q 24981
step
talk Magistrate Sevren##1499
|tip He walks around upstairs inside the building.
turnin The New Forsaken##24982 |goto 60.99,50.57
accept Forsaken Duties##24983 |goto 60.99,50.57
stickystart "Collect_Darkhound_Blood"
step
kill Cursed Darkhound##1548+
|tip A Worgen will appear and give you a quest when you kill a Cursed Darkhound.
|tip Be careful not to kill the Cursed Darkhounds too fast.
accept Escaped From Gilneas##24992 |goto 58.12,60.74
|tip You will eventually accept this quest automatically.
step
label "Collect_Darkhound_Blood"
kill Cursed Darkhound##1548+
collect 5 Darkhound Blood##2858 |q 24990/1 |goto 58.12,60.74
stickystart "Slay_Scarlet_Missionaries"
stickystart "Collect_Urgent_Scarlet_Memorandum"
step
kill 3 Scarlet Zealot##1537 |q 24981/1 |goto 51.47,67.69
step
label "Slay_Scarlet_Missionaries"
kill 3 Scarlet Missionary##1536 |q 24981/2 |goto 51.47,67.69
step
label "Collect_Urgent_Scarlet_Memorandum"
Kill enemies around this area
collect Urgent Scarlet Memorandum##52077 |q 24981/3 |goto 51.47,67.69
step
talk Executor Zygand##1515
turnin A Thorn in our Side##24981 |goto 60.54,51.87
turnin Escaped From Gilneas##24992 |goto 60.54,51.87
accept Annihilate the Worgen##24993 |goto 60.54,51.87
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
turnin Darkhound Pounding##24990 |goto 60.07,52.81
accept Holland's Experiment##24996 |goto 60.07,52.81
step
talk Captured Mountaineer##2211
|tip Upstairs inside the building.
turnin Holland's Experiment##24996 |goto 60.04,52.87
step
talk Junior Apothecary Holland##10665
|tip He walks around inside the building, on both floors.
accept Garren's Haunt##24991 |goto 60.07,52.81
step
talk Anette Williams##43124
turnin Supplying Brill##6321 |goto 58.84,51.94
accept Ride to the Undercity##6323 |goto 58.84,51.94
only if Scourge
step
talk Gordon Wendham##4556
turnin Ride to the Undercity##6323 |goto Undercity/0 61.47,41.81
accept Michael Garrett##6322 |goto 61.47,41.81
only if Scourge
step
talk Michael Garrett##4551
turnin Michael Garrett##6322 |goto 63.26,48.57
accept Return to Morris##6324 |goto 63.26,48.57
only if Scourge
step
talk Deathguard Morris##1745
turnin Return to Morris##6324 |goto Tirisfal Glades/0 60.13,52.40
only if Scourge
step
kill 5 Worgen Infiltrator##38949 |q 24993/1 |goto 60.14,51.89
|tip They walk around stealthed around this area.
|tip Look for little puffs of dust moving along the ground to spot them easily.
step
talk Executor Zygand##1515
turnin Annihilate the Worgen##24993 |goto 60.54,51.87
step
talk Deathguard Linnea##1495
turnin Forsaken Duties##24983 |goto 65.49,60.26
step
talk Gretchen Dedmar##1521
accept The Chill of Death##24988 |goto 65.25,60.42
step
Kill Duskbat enemies around this area
collect 5 Duskbat Pelt##2876 |q 24988/1 |goto 65.64,57.02
step
talk Gretchen Dedmar##1521
turnin The Chill of Death##24988 |goto 65.25,60.42
step
talk Deathguard Linnea##1495
accept Return to the Magistrate##24989 |goto 65.49,60.26
step
talk Magistrate Sevren##1499
|tip He walks around upstairs inside the building.
turnin Return to the Magistrate##24989 |goto 60.99,50.57
step
talk Apothecary Jerrod##38977
turnin Garren's Haunt##24991 |goto 61.65,34.55
accept Doom Weed##24994 |goto 61.65,34.55
step
talk Apprentice Crispin##38978
accept Graverobbers##24997 |goto 61.61,34.39
stickystart "Collect_Doom_Weed"
stickystart "Slay_Rot_Hide_Mongrels"
stickystart "Collect_Embalming_Ichor"
step
kill 8 Rot Hide Graverobber##1941 |q 24997/1 |goto 55.18,42.38
step
label "Collect_Doom_Weed"
click Doom Weed##176753+
|tip They look like small green and purple plants on the ground around this area.
collect 10 Doom Weed##13702 |q 24994/1 |goto 56.83,39.52
step
label "Slay_Rot_Hide_Mongrels"
kill 5 Rot Hide Mongrel##1675 |q 24997/2 |goto 57.64,34.87
step
label "Collect_Embalming_Ichor"
Kill Rot Hide enemies around this area
collect 6 Embalming Ichor##2834 |q 24997/3 |goto 57.36,39.34
step
talk Apothecary Jerrod##38977
turnin Doom Weed##24994 |goto 61.65,34.55
accept Off the Scales##24995 |goto 61.65,34.55
step
talk Apprentice Crispin##38978
turnin Graverobbers##24997 |goto 61.61,34.39
accept Maggot Eye##24998 |goto 61.61,34.39
accept Planting the Seed of Fear##24999 |goto 61.61,34.39
step
kill Maggot Eye##1753
|tip Inside the building.
collect Maggot Eye's Paw##3635 |q 24998/1 |goto 58.66,30.74
stickystart "Collect_Vile_Fin_Scales"
step
Frighten #12# Vile Fin Tadpoles |q 24999/1 |goto 59.76,27.74
|tip Run next to Vile Fin Tadpoles to frighten them.
|tip Keep chasing them when they run away.
You can find more around [65.01,28.62]
step
label "Collect_Vile_Fin_Scales"
Kill Vile Fin enemies around this area
collect 5 Vile Fin Scale##2859 |q 24995/1 |goto 61.20,27.42
step
talk Apprentice Crispin##38978
turnin Maggot Eye##24998 |goto 61.61,34.39
turnin Planting the Seed of Fear##24999 |goto 61.61,34.39
step
talk Apothecary Jerrod##38977
turnin Off the Scales##24995 |goto 61.65,34.56
accept Head for the Mills##25031 |goto 61.65,34.56
step
talk Coleman Farthing##1500
turnin Head for the Mills##25031 |goto 54.59,29.90
accept The Family Crypt##25003 |goto 54.59,29.90
stickystart "Slay_Rotting_Ancestors"
step
kill 8 Wailing Ancestor##1534 |q 25003/1 |goto 52.08,29.69
step
label "Slay_Rotting_Ancestors"
kill 8 Rotting Ancestor##1530 |q 25003/2 |goto 52.08,29.69
step
talk Coleman Farthing##1500
turnin The Family Crypt##25003 |goto 54.59,29.90
accept The Mills Overrun##25004 |goto 54.59,29.90
accept Deaths in the Family##25029 |goto 54.59,29.90
stickystart "Collect_Notched_Ribs"
stickystart "Collect_Blackened_Skulls"
step
kill Thurman Agamand##1656
|tip He walks around this area.
collect Thurman's Remains##2830 |q 25029/3 |goto 46.04,30.22
step
kill Gregor Agamand##1654
|tip He walks around this area.
collect Gregor's Remains##2829 |q 25029/2 |goto 45.63,29.58
step
kill Devlin Agamand##1657
collect Devlin's Remains##2831 |q 25029/4 |goto 48.95,33.92
step
kill Nissa Agamand##1655
|tip Inside the building.
|tip She can either be upstairs or downstairs.
collect Nissa's Remains##2828 |q 25029/1 |goto 49.67,36.15
step
label "Collect_Notched_Ribs"
kill Cracked Skull Soldier##1523+
collect 5 Notched Rib##3162 |q 25004/1 |goto 46.62,31.46
step
label "Collect_Blackened_Skulls"
kill Darkeye Bonecaster##1522+
collect 3 Blackened Skull##3163 |q 25004/2 |goto 46.62,31.46
step
talk Coleman Farthing##1500
turnin The Mills Overrun##25004 |goto 54.59,29.90
turnin Deaths in the Family##25029 |goto 54.59,29.90
accept Speak with Sevren##25005 |goto 54.59,29.90
step
talk Magistrate Sevren##1499
|tip He walks around upstairs inside the building.
turnin Speak with Sevren##25005 |goto 60.99,50.57
accept The Grasp Weakens##25006 |goto 60.99,50.57
step
talk Shadow Priestess Malia##39117 |goto 62.03,52.95
|tip Inside the building.
Tell her _"I am ready."_
Follow Her Upstairs |goto 62.03,53.25 < 5 |noway |q 25006
step
Watch the dialogue
kill Spirit of Devlin Agamand##38980
|tip Upstairs inside the building.
Complete the Procedure |q 25006/1 |goto 62.08,52.79
step
Enter the building |goto 60.82,51.86 < 5 |walk
Run up the stairs |goto 61.11,51.21 < 5 |walk
talk Magistrate Sevren##1499
|tip He walks around upstairs inside the building.
turnin The Grasp Weakens##25006 |goto 60.99,50.57
accept East... Always to the East##25007 |goto 60.99,50.57
step
talk High Executor Derrington##10837
turnin East... Always to the East##25007 |goto 83.26,68.99
accept At War With The Scarlet Crusade##25009 |goto 83.26,68.99
step
talk Apothecary Dithers##11057
accept Grisly Grizzlies##25056 |goto 83.28,69.23
step
talk Timothy Cunningham##37915
fpath The Bulwark |goto 83.57,69.94
step
talk Provisioner Elda##46271
home The Bulwark |goto 83.08,72.00 |q 25009
step
kill Plagued Bruin##39049+
collect 5 Plagued Bruin Hide##52270 |q 25056/1 |goto 77.73,66.45
stickystart "Slay_Scarlet_Friars"
step
kill 3 Scarlet Zealot##1537 |q 25009/1 |goto 79.81,56.11
step
label "Slay_Scarlet_Friars"
kill 4 Scarlet Friar##1538 |q 25009/2 |goto 79.81,56.11
step
talk Apothecary Dithers##11057
turnin Grisly Grizzlies##25056 |goto 83.28,69.23
accept A Little Oomph##25013 |goto 83.28,69.23
step
talk High Executor Derrington##10837
turnin At War With The Scarlet Crusade##25009 |goto 83.26,68.99
accept A Deadly New Ally##25010 |goto 83.26,68.99
step
kill Vicious Night Web Spider##1555+
collect 4 Vicious Night Web Spider Venom##2872 |q 25013/1 |goto 85.74,52.56
step
talk Lieutenant Sanders##13158
|tip He's hanging upside down from a chain.
turnin A Deadly New Ally##25010 |goto 87.50,43.30
accept A Daughter's Embrace##25046 |goto 87.50,43.30
step
Follow the path |goto 81.52,43.10 < 20 |only if walking
Follow the road |goto 78.82,38.17 < 20 |only if walking
Watch the dialogue
|tip Inside of the tower.
Accomplish Lillian's Mission |q 25046/1 |goto 79.49,25.35
step
talk High Executor Derrington##10837
turnin A Daughter's Embrace##25046 |goto 83.26,68.99
accept To Bigger and Better Things##25011 |goto 83.26,68.99
step
talk Apothecary Dithers##11057
turnin A Little Oomph##25013 |goto 83.28,69.23
step
talk Timothy Cunningham##37915
turnin To Bigger and Better Things##25011 |goto 83.57,69.94
accept Take to the Skies##25012 |goto 83.57,69.94
step
talk Timothy Cunningham##37915 |goto 83.57,69.94
Tell him _"I'll take that flight to Brill now."_
Take a Flight to Brill |goto 58.89,51.94 < 10 |noway |q 25012
step
talk Executor Zygand##1515
turnin Take to the Skies##25012 |goto 60.53,51.87
accept Warchief's Command: Silverpine Forest!##26964 |goto 60.53,51.87
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Eversong Woods (1-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Ghostlands (1-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Silverpine Forest (5-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Eastern Kingdoms\\Hillsbrad Foothills (7-60)")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Durotar (1-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Mulgore (1-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Northern Barrens (5-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Classic (1-60)\\Kalimdor\\Azshara (5-60)")
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
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Wrath of the Lich King (10-60)\\Icecrown (25-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Wrath of the Lich King (10-60)\\The Storm Peaks (25-60)")
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
