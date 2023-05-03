local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("LevelingNMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Pandaren (1-15)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."WanderingIsle",
condition_suggested=function() return raceclass('Pandaren') and level <= 15 and not completedq(31450) and not raceclass("DeathKnight") and not ZGV.InPhase("exilesreach") end,
startlevel=1,
endlevel=15,
next="Leveling Guides\\Starter Guides\\Chromie Time",
},[[
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30038 |goto The Wandering Isle/0 56.66,18.20
|only if Pandaren Warrior
step
click Weapon Rack##210016
collect Trainee's Axe##76391 |goto 56.87,19.68 |q 30038
collect Trainee's Shield##73213 |goto 56.87,19.68 |q 30038
|only if Pandaren Warrior
step
'|equipped Trainee's Axe##76391 |n
Equip the Trainee's Axe |q 30038/1
|only if Pandaren Warrior
step
'|equipped Trainee's Shield##73213 |n
Equip the Trainee's Shield |q 30038/2
|only if Pandaren Warrior
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30038 |goto 56.66,18.20
accept The Lesson of the Sandy Fist##29406 |next "All_Class_Start" |goto 56.66,18.20
|only if Pandaren Warrior
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30034 |goto 56.66,18.20
|only if Pandaren Hunter
step
click Weapon Rack##210016
collect Trainee's Crossbow##73211 |goto 56.87,19.68 |q 30034
|only if Pandaren Hunter
step
'|equipped Trainee's Crossbow##73211 |n
Equip the Trainee's Crossbow |q 30034/1
|only if Pandaren Hunter
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30034 |goto 56.66,18.20
accept The Lesson of the Sandy Fist##29406 |next "All_Class_Start" |goto 56.66,18.20
|only if Pandaren Hunter
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30036 |goto 56.66,18.20
|only if Pandaren Rogue
step
click Weapon Rack##210016
collect Trainee's Dagger##73208 |goto 56.87,19.68 |q 30036
collect Trainee's Dagger##73212 |goto 56.87,19.68 |q 30036
|only if Pandaren Rogue
step
'|equipped Trainee's Dagger##73208 |n
Equip the Mainhand Dagger |q 30036/1
|only if Pandaren Rogue
step
'|equipped Trainee's Dagger##73212 |n
Equip the Offhand Dagger |q 30036/2
|only if Pandaren Rogue
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30036
accept The Lesson of the Sandy Fist##29406 |next "All_Class_Start"
|only if Pandaren Rogue
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30035 |goto 56.66,18.20
|only if Pandaren Priest
step
click Weapon Rack##210016
collect Trainee's Mace##73207 |goto 56.87,19.68 |q 30035
collect Trainee's Book of Prayers##76393 |goto 56.87,19.68 |q 30035
|only if Pandaren Priest
step
'|equipped Trainee's Mace##73207 |n
Equip the Trainee's Mace |q 30035/1
|only if Pandaren Priest
step
'|equipped Trainee's Book of Prayers##76393 |n
Equip the Trainee's Book of Prayers |q 30035/2
|only if Pandaren Priest
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30035 |goto 56.66,18.20
accept The Lesson of the Sandy Fist##29406 |next "All_Class_Start" |goto 56.66,18.20
|only if Pandaren Priest
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30037 |goto 56.66,18.20
|only if Pandaren Shaman
step
click Weapon Rack##210016
collect Trainee's Axe##76391 |goto 56.87,19.68 |q 30037
collect Trainee's Shield##73213 |goto 56.87,19.68 |q 30037
|only if Pandaren Shaman
step
'|equipped Trainee's Axe##76391 |n
Equip the Trainee's Axe |q 30037/1
|only if Pandaren Shaman
step
'|equipped Trainee's Shield##73213 |n
Equip the Trainee's Shield |q 30037/2
|only if Pandaren Shaman
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30037 |goto 56.66,18.20
accept The Lesson of the Sandy Fist##29406 |next "All_Class_Start" |goto 56.66,18.20
|only if Pandaren Shaman
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30033 |goto 56.66,18.20
|only if Pandaren Mage
step
click Weapon Rack##210016
collect Trainee's Hand-Fan##76392 |goto 56.87,19.68 |q 30033
collect Trainee's Spellblade##76390 |goto 56.87,19.68 |q 30033
|only if Pandaren Mage
step
'|equipped Trainee's Spellblade##76390 |n
Equip the Trainee's Spellblade |q 30033/1
|only if Pandaren Mage
step
'|equipped Trainee's Hand-Fan##76392 |n
Equip the Trainee's Hand-Fan |q 30033/2
|only if Pandaren Mage
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30033 |goto 56.66,18.20
accept The Lesson of the Sandy Fist##29406 |goto 56.66,18.20 |next "All_Class_Start"
|only if Pandaren Mage
step
talk Master Shang Xi##53566
accept The Lesson of the Iron Bough##30027 |goto 56.66,18.20
|only if Pandaren Monk
step
click Weapon Rack##210016
collect Trainee's Staff##73209 |goto 56.87,19.68 |q 30027
|only if Pandaren Monk
step
'|equipped Trainee's Staff##73209 |n
Equip the Trainee's Staff |q 30027/1
|only if Pandaren Monk
step
talk Master Shang Xi##53566
turnin The Lesson of the Iron Bough##30027 |goto 56.66,18.20
accept The Lesson of the Sandy Fist##29406 |next "All_Class_Start" |goto 56.66,18.20
|only if Pandaren Monk
step
label "All_Class_Start"
kill 5 Training Target##53714 |q 29406/1 |goto 57.33,18.92
|tip They look like green punching bags around this area.
step
talk Master Shang Xi##53566
turnin The Lesson of the Sandy Fist##29406 |goto 56.66,18.20
accept The Lesson of Stifled Pride##29524 |goto 56.66,18.20
step
Kill Trainee enemies around this area
|tip Inside the building.
Defeat #6# Sparring Trainees |q 29524/1 |goto 60.33,19.42
step
talk Master Shang Xi##53566
turnin The Lesson of Stifled Pride##29524 |goto 59.68,19.11
accept The Lesson of the Burning Scroll##29408 |goto 59.68,19.11
step
Run up the stairs |goto 60.0,18.5 < 5 |walk
Follow the path around |goto 60.45,20.22 < 7 |q 29408
step
Continue up the stairs |goto 60.01,18.57 < 5 |walk
click Edict of Temperance##210986
|tip Upstairs inside the building.
Burn the Edict of Temperance |q 29408/2 |goto 59.95,20.41
step
talk Master Shang Xi##53566
|tip Downstairs inside the building.
turnin The Lesson of the Burning Scroll##29408 |goto 59.68,19.11
accept The Disciple's Challenge##29409 |goto 59.68,19.11
step
kill Jaomin Ro##54611
Defeat Jaomin Ro |q 29409/1 |goto 67.78,22.76
step
talk Master Shang Xi##53566
turnin The Disciple's Challenge##29409 |goto 65.97,22.81
accept Aysa of the Tushui##29410 |goto 65.97,22.81
step
talk Merchant Lorvo##54943
turnin Aysa of the Tushui##29410 |goto 55.09,32.84
accept Items of Utmost Importance##29424 |goto 55.09,32.84
accept The Missing Driver##29419 |goto 55.09,32.84
stickystart "Collect_Stolen_Training_Supplies"
step
kill Amberleaf Scamp##54130+
Rescue the Cart Driver |q 29419/1 |goto 54.01,20.91
step
label "Collect_Stolen_Training_Supplies"
kill Amberleaf Scamp##54130+
collect 6 Stolen Training Supplies##72071 |q 29424/1 |goto 54.01,20.91
step
talk Merchant Lorvo##54943
turnin Items of Utmost Importance##29424 |goto 55.11,32.40
turnin The Missing Driver##29419 |goto 55.11,32.40
step
talk Aysa Cloudsinger##54567
accept The Way of the Tushui##29414 |goto 55.11,32.55
step
kill Amberleaf Troublemaker##59637+
|tip Inside the cave.
|tip They continuously run into the cave.
Protect Aysa While She Meditates |q 29414/1 |goto 57.89,36.55
|tip You can see a progress bar in your quest tracking area.
step
talk Master Shang Xi##54608
turnin The Way of the Tushui##29414 |goto 57.54,34.69
accept Ji of the Huojin##29522 |goto 57.54,34.69
step
talk Ji Firepaw##54568
turnin Ji of the Huojin##29522 |goto 50.24,21.26
accept The Way of the Huojin##29417 |goto 50.24,21.26
step
Kill Fe-Feng enemies around this area
Slay #8# Hozen Attackers |q 29417/1 |goto 49.75,22.50
step
talk Ji Firepaw##54568
turnin The Way of the Huojin##29417 |goto 50.24,21.26
accept Kindling the Fire##29418 |goto 50.24,21.26
accept Fanning the Flames##29523 |goto 50.24,21.26
stickystart "Collect_Dry_Dogwood_Root"
step
use Wind Stone##72109
kill Living Air##54631
|tip It appears after using the stone.
collect Fluttering Breeze##72112 |q 29523/1 |goto 47.37,31.15
step
label "Collect_Dry_Dogwood_Root"
click Loose Dogwood Root##209327+
|tip They look like brown pieces of root sticking out of the ground near the base of trees around this area.
collect 5 Dry Dogwood Root##72111 |q 29418/1 |goto 47.37,31.15
step
talk Ji Firepaw##54568
turnin Kindling the Fire##29418 |goto 50.24,21.26
turnin Fanning the Flames##29523 |goto 50.24,21.26
step
talk Master Shang Xi##54609
accept The Spirit's Guardian##29420 |goto 50.28,21.47
step
Enter the cave |goto 41.46,25.02 < 7 |walk
talk Master Li Fei##54135
|tip Inside the cave.
|tip Avoid the fire patches on the ground.
turnin The Spirit's Guardian##29420 |goto 38.80,25.50
accept The Challenger's Fires##29664 |goto 38.80,25.50
step
click Brazier of the Flickering Flame
|tip Inside the cave.
Light the Challenge Torch |q 29664/1 |goto 38.71,25.40
step
click Brazier of the Violet Flame
|tip Inside the cave.
Light the Violet Brazier |q 29664/4 |goto 38.25,24.86
step
click Brazier of the Red Flame
|tip Inside the cave.
Light the Red Brazier |q 29664/2 |goto 38.99,23.49
step
click Brazier of the Blue Flame
|tip Inside the cave.
Light the Blue Brazier |q 29664/3 |goto 39.19,25.42
step
talk Master Li Fei##54135
|tip Inside the cave.
turnin The Challenger's Fires##29664 |goto 38.80,25.50
accept Only the Worthy Shall Pass##29421 |goto 38.80,25.50
step
kill Master Li Fei##54734
|tip Inside the cave.
Defeat Master Li Fei |q 29421/1 |goto 38.87,24.62
step
talk Master Li Fei##54135
|tip Inside the cave.
turnin Only the Worthy Shall Pass##29421 |goto 38.80,25.50
accept Huo, the Spirit of Fire##29422 |goto 38.80,25.50
step
use Huo's Offerings##72583
|tip Inside the cave.
Reignite the Spirit of Fire |q 29422/1 |goto 39.42,29.55
step
talk Huo##54787
|tip Inside the cave.
turnin Huo, the Spirit of Fire##29422 |goto 39.41,29.55
accept The Passion of Shen-zin Su##29423 |goto 39.41,29.55
step
Leave the cave |goto 41.46,25.02 < 7 |walk
Run up the stairs |goto 51.05,30.55 < 10 |only if walking
Bring the Spirit of Fire to the Temple of Five Dawns |q 29423/1 |goto 51.41,46.39
|tip Inside the building.
step
talk Master Shang Xi##54786
|tip Inside the building.
turnin The Passion of Shen-zin Su##29423 |goto 51.41,46.39
accept The Singing Pools##29521 |goto 51.41,46.39
step
talk Jojo Ironbrow##55021
accept Something Tough##29662 |goto 63.50,41.93
step
talk Aysa Cloudsinger##54975
turnin The Singing Pools##29521 |goto 65.59,42.61
accept The Lesson of Dry Fur##29661 |goto 65.59,42.61
accept The Lesson of the Balanced Rock##29663 |goto 65.59,42.61
step
clicknpc Balance Pole##66946
|tip You can't click it if you're in the water and have been turned into a frog.
Jump on a Balance Pole |invehicle |goto 63.37,45.18 |q 29663
step
clicknpc Balance Pole##66946+
|tip They look like wooden poles with red rope around them all around this area in the water of this pond.
|tip Click other Balance Poles to move around.
kill Tushui Monk##55019+
Defeat #6# Tushui Monks |q 29663/1 |goto 62.53,44.84
step
clicknpc Balance Pole##66946+
|tip Click other Balance Poles to move around.
Reach the Center Stone |goto 61.38,47.86 < 5 |q 29661
step
click Training Bell
Ring the Training Bell |q 29661/1 |goto 61.38,47.86
step
click Hard Tearwood Reeds##209507+
|tip They look like small bamboo stalks with green leaves at the top of them, sticking up out of the water around this area.
collect 8 Hard Tearwood Reed##73178 |q 29662/1 |goto 62.53,44.84
step
talk Jojo Ironbrow##55021
turnin Something Tough##29662 |goto 63.50,41.93
step
talk Aysa Cloudsinger##54975
turnin The Lesson of Dry Fur##29661 |goto 65.59,42.61
turnin The Lesson of the Balanced Rock##29663 |goto 65.59,42.61
accept Finding an Old Friend##29676 |goto 65.59,42.61
step
talk Old Man Liang##55020
turnin Finding an Old Friend##29676 |goto 70.62,38.73
accept The Sun Pearl##29677 |goto 70.62,38.73
accept The Sting of Learning##29666 |goto 70.62,38.73
step
kill 6 Water Pincer##60411+ |q 29666/1 |goto 73.89,39.80
step
click Ancient Clam##209584
|tip Underwater.
collect Sun Pearl##73184 |q 29677/1 |goto 76.25,46.85
step
talk Old Man Liang##55020
turnin The Sun Pearl##29677 |goto 78.48,42.86
turnin The Sting of Learning##29666 |goto 78.48,42.86
accept Shu, the Spirit of Water##29678 |goto 78.48,42.86
step
Step onto the blue circle |goto 79.62,41.87 < 5 |walk
Cross to the Pool of Reflection |q 29678/1 |goto 79.78,39.06
step
use the Sun Pearl##73791
Coax Shu, the Water Spirit |q 29678/2 |goto 79.60,38.64
step
Click the Complete Quest Box:
turnin Shu, the Spirit of Water##29678
step
talk Aysa Cloudsinger##54975
accept A New Friend##29679 |goto 79.81,39.31
step
Play with the Spirit of Water #5# Times |q 29679/1 |goto 78.78,37.73
|tip Walk into the blue splashing spots in the water and shoot up into the air.
step
talk Aysa Cloudsinger##54975
turnin A New Friend##29679 |goto 79.82,39.30
accept The Source of Our Livelihood##29680 |goto 79.82,39.30
step
clicknpc Delivery Cart##57710
|tip It looks like a wooden wagon sitting on the side of the road with a grey ox in front of it.
Hitch a Ride on the Cart |invehicle |goto 79.15,45.33 |q 29680
step
Watch the dialogue
Ride the Cart to the Dai-Lo Farmstead |outvehicle |goto 70.68,65.85 |q 29680
step
talk Ji Firepaw##55477
turnin The Source of Our Livelihood##29680 |goto 68.89,64.98
accept Rascals##29769 |goto 68.89,64.98
step
talk Gao Summerdraft##55479
accept Still Good!##29770 |goto 68.12,66.41
stickystart "Slay_Plump_Virmen"
step
click Uprooted Turnip##209640
|tip They look like round purple-pink vegetables with long leafy stems sitting on the ground all around this area.
collect 3 Uprooted Turnip##74295+ |q 29770/1 |goto The Wandering Isle/0 69.49,80.41
step
Enter the cave |goto 71.79,70.55 < 5 |walk
kill Plump Carrotcruncher##55504+
click Stolen Carrot##209641+
|tip They look like big orange carrots laying around this area inside the cave.
collect 3 Stolen Carrot##74296 |q 29770/2 |goto 74.66,71.91
step
click Pilfered Pumpkin##209645+
|tip They look like various colored pumpkins at the base of trees around this area.
collect 3 Pilfered Pumkin##74297+ |q 29770/3 |goto 77.99,70.92
step
label "Slay_Plump_Virmen"
kill 10 Plump Virmen##55483 |q 29769/1 |goto 72.06,72.99
step
talk Gao Summerdraft##55479
turnin Still Good!##29770 |goto 68.12,66.41
step
talk Ji Firepaw##55477
turnin Rascals##29769 |goto 68.89,64.98
accept Missing Mallet##29768 |goto 68.89,64.98
step
talk Jojo Ironbrow##55478
accept Stronger Than Wood##29771 |goto 69.15,66.71
stickystart "Collect_Discarded_Wood_Planks"
step
click Dai-Lo Recess Mallet##214406
|tip It looks like a wooden handle with a yellow ball at the top, sitting on a wooden barrel in front of this small building.
collect Dai-Lo Recess Mallet##74298 |q 29768/1 |goto 62.63,77.03
step
label "Collect_Discarded_Wood_Planks"
click Discarded Wood Plank##209646+
|tip They look like small piles of brown wooden boards on the ground around this area.
collect 12 Discarded Wood Plank##74301 |q 29771/1 |goto 63.36,77.11
step
talk Jojo Ironbrow##55478
turnin Stronger Than Wood##29771 |goto 69.15,66.71
step
talk Ji Firepaw##55477
turnin Missing Mallet##29768 |goto 68.89,64.98
accept Raucous Rousing##29772 |goto 68.89,64.98
step
click Break Gong##209626
|tip It looks like a dark colored metal circle hanging from a wooden structure.
Ring the Town Gong |q 29772/1 |goto 68.94,64.87
step
talk Ji Firepaw##55477
turnin Raucous Rousing##29772 |goto 68.89,64.98
accept Not In the Face!##29774 |goto 68.89,64.98
step
talk Shu##55556
Tell it _"Shu, can you wake up Wuguo for me?"_
Ask Shu for Help |q 29774/1 |goto 68.98,62.91
step
Watch the dialogue
Wake Wugou |q 29774/2 |goto 68.83,65.40
step
talk Ji Firepaw##55477
turnin Not In the Face!##29774 |goto 68.89,64.98
accept The Spirit and Body of Shen-zin Su##29775 |goto 68.89,64.98
step
clicknpc Delivery Cart##59497
Hitch a Ride on the Cart |invehicle |goto 67.86,67.26 |q 29775
step
Watch the dialogue
Ride the Cart to the Temple of Five Dawns |outvehicle |goto 51.96,58.58 |q 29775
step
talk Master Shang Xi##54786
|tip Inside the building.
turnin The Spirit and Body of Shen-zin Su##29775 |goto 51.58,48.34
accept Morning Breeze Village##29776 |goto 51.58,48.34
step
Cross the bridge |goto 50.16,48.63 < 10 |only if walking
talk Ji Firepaw##55583
turnin Morning Breeze Village##29776 |goto 30.98,36.73
accept Rewritten Wisdoms##29778 |goto 30.98,36.73
step
talk Elder Shaopai##55588
accept Tools of the Enemy##29777 |goto 31.78,39.71
step
talk Jojo Ironbrow##55585
accept Stronger Than Stone##29783 |goto 29.90,39.76
stickystart "Collect_Abandoned_Stone_Blocks"
stickystart "Collect_Paint_Soaked_Brushes"
step
click Defaced Scroll of Wisdom##209663+
|tip They look like white banners with red paint on them hanging on large boulders around this area.
Burn #5# Defaced Scrolls of Wisdom |q 29778/1 |goto 30.59,49.76
step
label "Collect_Abandoned_Stone_Blocks"
click Abandoned Stone Block##209665+
|tip They look like piles of gray blocks on the ground around this area.
collect 12 Abandoned Stone Block##74624 |q 29783/1 |goto 30.60,50.94
step
label "Collect_Paint_Soaked_Brushes"
kill Hozen Wiseman##55601+
collect 8 Paint Soaked Brush##74615 |q 29777/1 |goto 30.59,49.76
step
talk Elder Shaopai##55588
turnin Tools of the Enemy##29777 |goto 31.78,39.71
step
talk Jojo Ironbrow##55585
turnin Something Really Tough##29783 |goto 29.90,39.76
step
talk Ji Firepaw##55583
turnin Rewritten Wisdoms##29778 |goto 30.98,36.73
accept The Direct Solution##29779 |goto 30.98,36.73
accept Do No Evil##29780 |goto 30.98,36.73
accept Monkey Advisory Warning##29781 |goto 30.98,36.73
step
Follow the path up |goto 30.15,39.26 < 10 |only if walking
click Jade Tiger Pillar##209673
accept Stronger Than Bone##29782 |goto 26.44,33.68
stickystart "Stolen_Firework_Bundles"
stickystart "Slay_FeFeng_Hozen"
step
kill Ruk-Ruk##55634 |q 29780/1 |goto 21.03,34.37
step
label "Stolen_Firework_Bundles"
click Stolen Fireworks##209669+
|tip They look like small dark colored pots on wooden slabs on the ground around this area.
collect 8 Stolen Firework Bundle##74631 |q 29781/1 |goto 24.23,30.71
step
label "Slay_FeFeng_Hozen"
Kill Fe-Feng enemies around this area
Slay #20# Fe-Feng Hozen |q 29779/1 |goto 24.23,30.71
step
_Next to you:_
talk Ji Firepaw##56134
turnin The Direct Solution##29779
turnin Do No Evil##29780
turnin Monkey Advisory Warning##29781
accept Balanced Perspective##29784
step
talk Jojo Ironbrow##55585
turnin Stronger Than Bone##29782 |goto 29.90,39.76
step
Walk carefully on the brown ropes |goto 31.15,36.78 < 3 |only if walking
talk Aysa Cloudsinger##55595
turnin Balanced Perspective##29784 |goto 32.94,35.61
accept Dafeng, the Spirit of Air##29785 |goto 32.94,35.61
step
Enter the building |goto 28.20,64.06 < 7 |walk
|tip Wait until the wind is not blowing, then run through.
Locate Dafeng |q 29785/1 |goto 24.64,69.80
|tip Inside the building.
step
talk Dafeng##55592
|tip Inside the building.
turnin Dafeng, the Spirit of Air##29785 |goto 24.64,69.80
step
talk Aysa Cloudsinger##55595
|tip Inside the building.
accept Battle for the Skies##29786 |goto 24.78,69.77
step
click Firework Launcher##210004+
|tip They look like dark colored pots on the ground around this area.
|tip You can use the Firework Launchers to help you defeat Zhao-Ren.
kill Zhao-Ren##55786 |q 29786/1 |goto 30.18,61.86
step
talk Master Shang Xi##55586
turnin Battle for the Skies##29786 |goto 30.00,60.36
accept Worthy of Passing##29787 |goto 30.00,60.36
step
Follow the path |goto 28.91,53.36 < 30 |only if walking
kill Guardian of the Elders##56274 |q 29787/1 |goto 22.71,52.80
step
talk Master Shang Xi##55672
turnin Worthy of Passing##29787 |goto 19.45,51.22
accept Unwelcome Nature##29788 |goto 19.45,51.22
accept Small, But Significant##29789 |goto 19.45,51.22
stickystart "Slay_Thornbranch_Scamps"
step
click Kun-pai Ritual Charm##209774+
|tip They look like red ropes hanging from tree branches around this area.
collect 8 Kun-Pai Ritual Charm##74634 |q 29789/1 |goto 21.52,54.59
step
label "Slay_Thornbranch_Scamps"
kill 8 Thornbranch Scamp##55640 |q 29788/1 |goto 21.45,60.59
step
talk Master Shang Xi##55672
turnin Unwelcome Nature##29788 |goto 19.45,51.22
turnin Small, But Significant##29789 |goto 19.45,51.22
accept Passing Wisdom##29790 |goto 19.45,51.22
step
Watch the dialogue
Listen to Master Shang Xi |q 29790/1 |goto 19.45,51.22
step
talk Aysa Cloudsinger##56662
turnin Passing Wisdom##29790 |goto 15.79,49.11
accept The Suffering of Shen-zin Su##29791 |goto 15.79,49.11
step
clicknpc Shang Xi's Hot Air Balloon##55918
Board the Hot Air Balloon |q 29791/1 |goto 15.57,48.91
step
Watch the dialogue
Uncover the Source of Shen-zin Su's Pain |q 29791/2
step
Return to Mandori Village |outvehicle |goto 49.16,58.55 |q 29791
step
talk Elder Shaopai##56012
|tip Inside the building.
turnin The Suffering of Shen-zin Su##29791 |goto 51.30,48.28
accept Bidden to Greatness##29792 |goto 51.30,48.28
step
Watch the dialogue
Open the Mandori Village Gate |q 29792/1 |goto 51.62,60.91
step
Watch the dialogue
Open the Pei-Wu Forest Gate |q 29792/2 |goto 52.27,68.19
step
talk Wei Palerage##55943
turnin Bidden to Greatness##29792 |goto 50.06,76.64
accept Preying on the Predators##30591 |goto 50.06,76.64
step
talk Korga Strongmane##60042
accept Stocking Stalks##29795 |goto 50.22,76.65
stickystart "Slay_PeiWu_Tigers"
step
click Broken Bamboo Stalk##211400+
|tip They look like thin shorter bamboo stalks and stumps all around the tall bamboo stalks in this area.
collect 10 Broken Bamboo Stalk##80806+ |q 29795/1 |goto 52.85,79.76
step
label "Slay_PeiWu_Tigers"
kill 9 Pei-Wu Tiger##55946 |q 30591/1 |goto 52.85,79.76
step
talk Wei Palerage##55943
turnin Preying on the Predators##30591 |goto 50.06,76.64
step
talk Korga Strongmane##60042
turnin Stocking Stalks##29795 |goto 50.22,76.65
accept Wrecking the Wreck##30589 |goto 50.22,76.65
step
talk Makael Bay##60055
turnin Wrecking the Wreck##30589 |goto 36.31,72.36
accept Handle With Care##30590 |goto 36.31,72.36
step
talk Ji Firepaw##55942
accept Evil from the Seas##29793 |goto 36.37,72.53
stickystart "Darkened_Terrors_Or_Horrors"
step
click Packed Explosion Charge##9539+
|tip They look like small bundles of red dynamite on the ground around this area.
collect 6 Packed Explosion Charge##74955 |q 30590/1 |goto 38.32,74.00
step
label "Darkened_Terrors_Or_Horrors"
Kill Darkened enemies around this area
Slay #8# Darkened Terrors or Horrors |q 29793/1 |goto 40.23,73.93
step
talk Makael Bay##60055
turnin Handle With Care##30590 |goto 36.31,72.36
step
talk Ji Firepaw##55942
turnin Evil from the Seas##29793 |goto 36.37,72.53
accept Urgent News##29796 |goto 36.37,72.53
step
talk Delora Lionheart##55944
turnin Urgent News##29796 |goto 42.22,86.54
accept None Left Behind##29794 |goto 42.22,86.54
accept Medical Supplies##29797 |goto 42.22,86.54
step
talk Jojo Ironbrow##55940
accept From Bad to Worse##29665 |goto 42.29,86.36
stickystart "Collect_Alliance_Medical_Supplies"
stickystart "Slay_Deepscale_Tormentors"
step
label "Rescue_Injured_Sailors"
clicknpc Injured Sailor##55999
|tip They look like dead Alliance bodies on the ground around this area.
Start Carrying a Sailor |complete hasbuff("spell:129340") or hasbuff("spell:105520") |goto 38.52,86.34 |q 29794 |or
'|complete readyq(29794) |or
step
Rescue #3# Injured Sailors |q 29794/1 |goto 42.14,86.70 |or
'|complete not (hasbuff("spell:129340") or hasbuff("spell:105520")) and not (readyq(29794) or completedq(29794)) |next "Rescue_Injured_Sailors" |or
step
label "Collect_Alliance_Medical_Supplies"
click Alliance Medical Crate##209793+
|tip They look like wooden boxes with red crosses on them on the ground and in the broken ship around this area.
collect 8 Alliance Medical Supplies##74958 |q 29797/1 |goto 38.52,86.34
step
label "Slay_Deepscale_Tormentors"
kill 8 Deepscale Tormentor##56360 |q 29665/1 |goto 37.68,84.98
step
talk Delora Lionheart##55944
turnin None Left Behind##29794 |goto 42.22,86.54
turnin Medical Supplies##29797 |goto 42.22,86.54
step
talk Jojo Ironbrow##55940
turnin From Bad to Worse##29665 |goto 42.29,86.36
accept An Ancient Evil##29798 |goto 42.29,86.36
step
kill Vordraka, the Deep Sea Nightmare##56009 |q 29798/1 |goto 36.93,84.29
|tip He will randomly target you with two different attacks, both of which are aoe's and can be avoided, so try to stay moving.
|tip He also spawns adds occasionally.
step
talk Aysa Cloudsinger##56416
turnin An Ancient Evil##29798 |goto 36.49,84.22
accept Risking It All##30767 |goto 36.49,84.22
step
Watch the dialogue
|tip Follow Aysa Cloudsinger to the top of the crashed airship.
Remove Shen-zin Su's Thorn |q 30767/1 |goto 36.38,87.14
step
talk Ji Firepaw##56418
turnin Risking It All##30767 |goto 39.30,86.20
accept The Healing of Shen-zin Su##29799 |goto 39.30,86.20
step
clicknpc Horde Druid##60834+
clicknpc Alliance Priest##60878+
|tip They are on the ground laying under sheets of gray metal around this area.
|tip They will appear on your minimap as yellow dots.
|tip Go to them and revive them, focus on keeping them alive.
Protect the Healers |q 29799/1 |goto 40.71,86.35
|tip Run around this area and keep reviving the druids and priest until the bar on the bottom of your screen fills.
step
talk Ji Firepaw##56418
turnin The Healing of Shen-zin Su##29799 |goto 39.30,86.20
step
Watch the dialogue
talk Ji Firepaw##57739
accept New Allies##29800 |goto 38.77,86.32
step
clicknpc Delivery Cart##57741
Hitch a Ride on the Cart |invehicle |goto 41.64,85.49 |q 29800
step
Watch the dialogue
Ride the Cart to Mandori Village |outvehicle |goto 51.62,59.07 |q 29800
step
talk Spiwrit of Master Shang Xi##56013
|tip Inside the building.
turnin New Allies##29800 |goto 51.45,48.27
accept A New Fate##31450 |goto 51.45,48.27
step
talk Spirit of Master Shang Xi##56013 |goto 51.45,48.27
|tip Inside the building.
Tell him _"I'm ready to decide."_
|tip You will have to choose whether you will side with the Alliance or the Horde.
Join the Alliance |condition rep("Stormwind") >= Friendly |next "Alliance" |or
_Or_
Join The Horde |condition rep("Orgrimmar") >= Friendly |next "Horde" |or
step
label "Alliance"
talk Aysa Cloudsinger##60566
turnin A New Fate##31450 |goto Stormwind City/0 74.19,91.97
accept Joining the Alliance##30987 |goto 74.19,91.97
|only if rep('Stormwind') >= Friendly
step
talk Anduin Wrynn##107574
|tip Inside the building.
turnin Joining the Alliance##30987 |goto 85.92,31.57
|only if rep('Stormwind') >= Friendly
step
label "Horde"
talk Ji Firepaw##60570
turnin A New Fate##31450 |goto Durotar/0 45.58,12.61
accept Joining the Horde##31012 |goto 45.58,12.61
|only if rep('Orgrimmar') >= Friendly
step
talk Garrosh Hellscream##39605
|tip Inside the building.
turnin Joining the Horde##31012 |goto Orgrimmar/1 48.76,70.77
accept The Horde Way##31013 |goto 48.76,70.77
|only if rep('Orgrimmar') >= Friendly
step
Watch the dialogue
|tip Inside the building.
|tip Follow Garrosh Hellscream.
Walk with Garrosh Hellscream |q 31013/1
|only if rep('Orgrimmar') >= Friendly
step
talk Garrosh Hellscream##62092
|tip Inside the building.
turnin The Horde Way##31013 |goto 48.75,70.81
|only if rep('Orgrimmar') >= Friendly
]])
if UnitFactionGroup("player")~="Neutral" then return end
ZygorGuidesViewer:RegisterGuide("Alliance Loremaster Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Dungeon Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Alliance Gear Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Alliance Professions Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guides\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Titles\\Your guides will load after you choose a faction.",{},[[]])
ZygorGuidesViewer:RegisterGuide("Reputations Guides\\Your guides will load after you choose a faction.",{},[[]])
