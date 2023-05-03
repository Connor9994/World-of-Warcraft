local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "MOP"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\The Jade Forest (10-60)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."JadeForest",
next="Leveling Guides\\Pandaria (10-60)\\Valley of the Four Winds (15-60)",
condition_suggested=function() return level >= 10 and level <= 50 and not completedq(29670) end,
startlevel=10,
endlevel=50,
},[[
step
click Warchief's Command Board
accept Warchief's Command: Jade Forest!##49538 |goto Orgrimmar/1 49.67,76.45
|tip You may need to accept several other zone quests to get this to appear.
|tip After choosing Jade Forest, you can abandon the other quests.
|only if not completedq(60126)
step
Visit Grommash Hold |q 49538/1 |goto Orgrimmar/1 49.88,75.55
|only if haveq(49538) or completedq(49538)
step
talk General Nazgrim##54870
|tip Inside the building.
turnin Warchief's Command: Jade Forest!##49538 |goto 48.67,70.36 |only if haveq(49538) or completedq(49538)
accept All Aboard!##31853 |goto Orgrimmar/1 48.67,70.36
step
talk Doras##3310
Tell him _"I need a flight to Hellscream's Fist."_
Secure a Flight to Hellscream's Fist |q 31853/1 |goto 49.66,59.21
step
Fly to Hellscream's Fist |goto Azshara/0 37.89,95.99 < 10 |noway |c |q 31853
step
talk General Nazgrim##55054
|tip On the flying ship.
Speak to General Nazgrim Aboard Hellscream's Fist |q 31853/2 |goto 37.88,95.77
step
talk General Nazgrim##55054
|tip On the flying ship.
turnin All Aboard!##31853 |goto 37.88,95.77
accept Into the Mists##29690 |goto 37.88,95.77
step
talk General Nazgrim##55054
|tip On the flying ship.
Tell him _"I'm ready to go, General."_
Discover Pandaria |q 29690/1 |goto 37.88,95.77
step
talk General Nazgrim##55135
turnin Into the Mists##29690 |goto The Jade Forest/0 30.78,10.22
accept Paint it Red!##31765 |goto The Jade Forest/0 30.78,10.22
step
Run down the ramp |goto 31.37,11.07 < 7 |walk
clicknpc Gunshit Turret##66677
|tip On the lower level of the ship.
Enter the Turret |invehicle |goto 31.53,11.01 |q 31765
stickystart "Destroy_Thunder_Hold_Cannons"
step
Kill Thunder Hold enemies around this area
Slay 80 Thunder Hold Troops |q 31765/1 |goto 33.03,10.61
|tip Use the abilities on your action bar.
step
label "Destroy_Thunder_Hold_Cannons"
kill 9 Thunder Hold Cannons##66203 |q 31765/2 |goto 33.03,10.61
|tip Use the abilities on your action bar.
step
talk Rivett Clutchpop##67250
|tip On the lower level of the ship.
turnin Paint it Red!##31765 |goto 31.01,11.02
accept Touching Ground##31766 |goto 31.01,11.02
step
click Rappelling Rope##215689
|tip On the lower level of the ship.
Rappel into Honeydew Glade |q 31766/1 |goto 31.51,11.11
step
talk General Nazgrim##55135
|tip He walks around this area.
turnin Touching Ground##31766 |goto 31.64,11.33
accept Finish Them!##31767 |goto 31.64,11.33
accept Fire Is Always the Answer##31768 |goto 31.64,11.33
stickystart "Destroy_Thunder_Hold_Munitions"
step
Kill Thunder Hold enemies around this area
Slay 15 Thunder Hold Troops |q 31767/1 |goto 32.71,6.91
You can find more around [33.77,12.87]
step
label "Destroy_Thunder_Hold_Munitions"
use Nazgrim's Flare Gun##89605
|tip Use it near Thunder Hold Munitions.
|tip They look like big piles of crates and barrels around this area.
Destroy #10# Thunder Hold Munitions |q 31768/1 |goto 32.71,6.91
You can find more around [33.77,12.87]
step
Enter the building |goto 33.68,10.61 < 10 |walk
talk General Nazgrim##66646
|tip Inside the building.
turnin Finish Them!##31767 |goto 34.78,10.63
turnin Fire Is Always the Answer##31768 |goto 34.78,10.63
accept The Final Blow!##31769 |goto 34.78,10.63
step
use Nazgrim's Flare Gun##89769
Destroy the First Barricade |q 31769/1 |goto 34.01,9.94
|tip Inside the building.
step
use Nazgrim's Flare Gun##89769
Destroy the Second Barricade |q 31769/2 |goto 34.73,9.93
|tip Inside the building.
step
use Nazgrim's Flare Gun##89769
Destroy the Third Barricade |q 31769/3 |goto 34.94,10.63
|tip Inside the building.
step
Watch the dialogue
Find Captain Doren |q 31769/4 |goto 33.73,10.61
step
talk General Nazgrim##66656
turnin The Final Blow!##31769 |goto 33.65,10.61
step
Watch the dialogue
talk General Nazgrim##66656
accept You're Either With Us Or...##31770 |goto 33.65,10.61
accept Higher Ground##29694 |goto 33.65,10.61
step
talk Taran Zhu##66657
accept Face to Face With Consequence##31771 |goto 33.71,10.61
step
talk Ellie Honeypaw##66660
accept Priorities!##31772 |goto 30.55,7.14
step
talk Sue-Ji the Tender##66659
accept Prowler Problems##31773 |goto 30.53,7.49
stickystart "Slay_Sha_Harbingers"
step
kill 20 Sha Haunt##66425 |q 31771/1 |goto 33.56,7.31
You can find more around [33.01,10.61]
step
label "Slay_Sha_Harbingers"
kill 7 Sha Harbinger##66424 |q 31771/2 |goto 33.56,7.31
You can find more around [33.01,10.61]
stickystart "Slay_Sha-Infested_Prowlers"
stickystart "Find_6_Barrels_of_Honeybrew"
step
talk Rivett Clutchpop##55146
Tell him _"Quit messing around and use your knife! Nazgrim wants you to report to the village immediately."_
Rescue Rivett Clutchpop |q 29694/2 |goto 30.53,7.21
step
talk Shokia##55170
Tell her _"On your feet! Nazgrim is organizing a counter-attack. We're regrouping in the village."_
Rescue Shokia |q 29694/4 |goto 29.43,8.48
step
label "Slay_Sha-Infested_Prowlers"
kill 10 Sha-Infested Prowler##66668 |q 31773/1 |goto 30.27,10.94
You can find more around [29.06,9.38]
step
label "Find_6_Barrels_of_Honeybrew"
click Barrel of Honeybrew##215695+
|tip They look like small grey barrels on the ground around this area.
Find #6# Barrels of Honeybrew |q 31772/1 |goto 30.27,10.94
You can find more around [29.06,9.38]
step
talk Sergeant Gorrok##55162
Tell him _"We need to regroup. Sergeant! Go to the nearby village."_
Rescue Sergeant Gorrok |q 29694/3 |goto 30.58,11.65
step
talk Shademaster Kiryn##55141
Tell her _"Snap out of it! You're alive! Nazgrim has ordered us to report to the nearby village."_
Rescue Shademaster Kiryn |q 29694/1 |goto 32.06,13.35
step
talk Ellie Honeypaw##66848
turnin Priorities!##31772 |goto 29.38,13.58
step
talk Sergeant Gorrok##66845
turnin Regroup!##29694 |goto 29.13,13.72
step
talk Mayor Honeydew##66220
turnin You're Either With Us Or...##31770 |goto 29.18,13.79
step
talk Taran Zhu##66657
turnin Face to Face With Consequence##31771 |goto 29.13,13.84
turnin Prowler Problems##31773 |goto 29.13,13.84
step
talk Sergeant Gorrok##66845
accept Seeking Zin'jun##31774 |goto 29.13,13.72
step
Enter the building |goto 28.58,13.35 < 5 |walk
talk Brewmother Kiki##66236
|tip Inside the building.
home Honeydew Village |goto 28.51,13.34 |q 31241 |future
step
talk Wing Hya##66227
fpath Honeydew Village |goto 28.10,15.62
step
talk Zin'Jun##55403
turnin Seeking Zin'jun##31774 |goto 31.14,17.53
accept Cryin' My Eyes Out##29765 |goto 31.14,17.53
step
click Ancient Statue##212181
accept Monstrosity##29743 |goto 30.89,17.49
stickystart "Collect_Zin'Juns_Rifle"
stickystart "Collect_Zin'Juns_Left_Eye"
stickystart "Collect_Zin'Juns_Right_Eye"
stickystart "Collect_Snuffs_Corpse"
step
click Ancient Statue Torso##212182
Choose _<Create a sketch of the statue piece.>_
Sketch the Statue Torso |q 29743/1 |goto 29.36,18.90
step
click Ancient Statue Arm##212183
Choose _<Create a sketch of the statue piece.>_
Sketch the Statue Arm |q 29743/2 |goto 30.12,21.35
step
click Ancient Statue Head##212186
Choose _<Create a sketch of the statue piece.>_
Sketch the Statue Head |q 29743/4 |goto 29.95,22.37
step
click Ancient Statue Shoulder##212184
Choose _<Create a sketch of the statue piece.>_
Sketch the Statue Shoulder |q 29743/3 |goto 28.58,22.16
step
Click the Complete Quest Box:
turnin Monstrosity##29743
step
label "Collect_Zin'Juns_Rifle"
kill Hozen Groundpounder##55470+
collect Zin'Jun's Rifle##74160 |q 29765/1 |goto 29.79,20.83
step
label "Collect_Zin'Juns_Left_Eye"
kill Hozen Groundpounder##55470+
collect Zin'Jun's Left Eye##74161 |q 29765/2 |goto 29.79,20.83
step
label "Collect_Zin'Juns_Right_Eye"
kill Hozen Groundpounder##55470+
collect Zin'Jun's Right Eye##74162 |q 29765/3 |goto 29.79,20.83
step
label "Collect_Snuffs_Corpse"
kill Hozen Groundpounder##55470+
collect Snuff's Corpse##74163 |q 29765/4 |goto 29.79,20.83
step
_Next to you:_
talk Zin'Jun##55403
turnin Cryin' My Eyes Out##29765
accept Seein' Red##29804
step
Enter the cave |goto 31.56,21.81 < 7 |walk
kill Konk##55509 |q 29804/1 |goto 31.94,22.20
|tip Inside the cave.
step
talk General Nazgrim##66656
turnin Seein' Red##29804 |goto 31.66,21.91
accept Assault on the Airstrip##31775 |goto 31.66,21.91
accept Strongarm Tactics##31776 |goto 31.66,21.91
step
talk Merchant Zin##65998
accept Unreliable Allies##31778 |goto 31.41,21.76
step
talk Rivett Clutchpop##55521
accept Choppertunity##31777 |goto 31.14,21.58
stickystart "Free_Pandaren"
stickystart "Slay_Strongarm_Troops"
step
kill Gyro-Mechanic Lavenderp##65883, Master Engineer Cogswing##65882
Slay Master Engineer Cogswing and Gyro-Mechanic Lavenderp |q 31776/1 |goto 30.33,24.26
step
kill Morgus Grimhatchet##65880 |q 31776/2 |goto 29.66,23.11
|tip He walks around the area.
|tip He may appear on your mini map as a yellow dot.
step
kill Corporal Jackson Silver##65881 |q 31776/3 |goto 27.78,22.92
|tip At the bottom of the tower.
step
click Requisitioned Firework Launcher##214962
|tip They look like small bronze dragon-shaped rocket launchers on the ground around this area.
collect Requisitioned Firework Launcher##89163 |goto 28.33,25.00 |q 31777
step
clicknpc Strongarm Gyrocopter##65843+
|tip They look like Alliance ships flying around this area.
use Requisitioned Firework Launcher##89163
Shoot Down #12# Strongarm Gyrocopters |q 31777/1 |goto 27.77,24.24
|tip You will need multiple Firework Launchers to complete this quest objective.
step
label "Free_Pandaren"
talk Pandaren Volunteer##67090+
Tell them _"You can go home now. I'll cover your back."_
Free 12 Pandaren |q 31778/1 |goto 28.83,23.97
step
label "Slay_Strongarm_Troops"
Kill Strongarm enemies around this area
Slay #15# Strongarm Troops |q 31775/1 |goto 28.83,23.97
step
talk Rivett Clutchpop##55521
turnin Choppertunity##31777 |goto 31.14,21.58
step
talk Merchant Zin##65998
turnin Unreliable Allies##31778 |goto 31.41,21.76
step
talk General Nazgrim##66656
turnin Assault on the Airstrip##31775 |goto 31.66,21.91
turnin Strongarm Tactics##31776 |goto 31.66,21.91
accept The Darkness Within##31779 |goto 31.66,21.91
step
Cross the bridge |goto The Jade Forest/0 27.41,25.12 < 10
Enter the cave |goto 25.98,24.37 < 7 |walk
kill Captain Doren##66052 |q 31779/1 |goto 25.75,23.64
|tip Inside the cave.
step
click Flagpole##215844
turnin The Darkness Within##31779 |goto 27.57,24.28
accept Nazgrim's Command##31999 |goto 27.57,24.28
step
talk General Nazgrim##55172
turnin Nazgrim's Command##31999 |goto 28.42,24.94
step
talk Shademaster Kiryn##55180
accept Forensic Science##29815 |goto 28.19,24.82
step
talk Rivett Clutchpop##55521
accept Missed Me By... That Much!##29821 |goto 28.10,24.70
step
clicknpc Empty Package##62923
turnin Missed Me By... That Much!##29821 |goto 22.87,30.59
accept They're So Thorny!##31112 |goto 22.87,30.59
stickystart "Collect_Emergency_Supplies"
step
clicknpc Lurching Blossom##55610+
|tip They look like small, moving, blue-green plants around this area.
|tip You can do this while mounted.
collect 8 Viscous Chlorophyll##74621 |q 29815/1 |goto 25.63,26.77
step
label "Collect_Emergency_Supplies"
kill Water Sprite##62930+
collect 5 Emergency Supplies##74623 |q 31112/1 |goto 25.99,26.20
step
talk Rivett Clutchpop##55521
turnin They're So Thorny!##31112 |goto 28.10,24.70
step
talk Shademaster Kiryn##55180
turnin Forensic Science##29815 |goto 28.19,24.82
accept Acid Rain##29827 |goto 28.19,24.82
step
clicknpc Recovered Gyrocopter##55674
Fly With the Gyrocopter |invehicle |goto 28.07,24.78 |q 29827
stickystart "Slay_Hozen_Nibstabbers"
step
kill 25 Hozen Gutripper##55707 |q 29827/1 |goto 28.67,27.39
|tip Use the abilities on your action bar.
step
label "Slay_Hozen_Nibstabbers"
kill 25 Hozen Nibstabber##55701 |q 29827/2 |goto 28.67,27.39
|tip Use the abilities on your action bar.
step
talk Shademaster Kiryn##55180
turnin Acid Rain##29827 |goto 28.19,24.82
step
talk General Nazgrim##55172
accept Lay of the Land##29822 |goto 28.42,24.94
step
Visit the Shrine of the Sun |q 29822/1 |goto 31.91,27.95
step
kill Dook Ookem##55622 |q 29822/3 |goto 27.81,30.31
step
Visit the Shrine of the Moon |q 29822/2 |goto 26.23,32.30
step
Enter the cave |goto 27.38,32.14 < 10 |walk
talk Lorewalker Cho##55768
|tip Inside the cave.
turnin Lay of the Land##29822 |goto 27.59,32.69
accept Stay a While, and Listen##31121 |goto 27.59,32.69
step
click Cho's Teapot
|tip Inside the cave.
Watch the dialogue
Listen to Lorewalker Cho |q 31121/1 |goto 27.67,32.56
step
talk Lorewalker Cho##55768
|tip Inside the cave.
turnin Stay a While, and Listen##31121 |goto 27.59,32.69
accept A Mile in My Shoes##31132 |goto 27.59,32.69
step
talk Lorewalker Cho##63217
|tip You may have to wait for him to walk here from the previous step.
turnin A Mile in My Shoes##31132 |goto 30.84,34.06
accept If These Stones Could Speak##31134 |goto 30.84,34.06
step
click Stone Monolith
Translate the First Stone Monolith |q 31134/1 |goto 30.88,33.70
step
click Stone Monolith
kill Bloodthirsty Saurok##63279
Translate the Second Stone Monolith |q 31134/2 |goto 30.64,33.78
step
click Stone Monolith
Translate the Third Stone Monolith |q 31134/3 |goto 30.59,34.14
step
talk Lorewalker Cho##63217
turnin If These Stones Could Speak##31134 |goto 30.84,34.06
accept Peering Into the Past##31152 |goto 30.84,34.06
step
Follow Lorewalker Cho
Watch the dialogue
Escort Lorewalker Cho to the Circle of Stone |q 31152/1 |goto 28.83,32.55
step
talk Lorewalker Cho##63307
turnin Peering Into the Past##31152 |goto 28.82,32.62
accept Family Tree##31167 |goto 28.82,32.62
step
click Incense Bundle##245682
Light the Incense |q 31167/1 |goto 28.79,32.48
step
talk Lorewalker Cho##63307
turnin Family Tree##31167 |goto 28.82,32.62
accept Swallowed Whole##29879 |goto 28.82,32.62
stickystart "Collect_Speckled_Trout"
step
kill 5 Engorged Crocolisk##56183 |q 29879/1 |goto 22.94,35.02
|tip Underwater.
step
label "Collect_Speckled_Trout"
clicknpc Speckled Trout##56180+
|tip They look like small blue and white fish underwater around this area.
collect 5 Speckled Trout##75202 |q 29879/2 |goto 22.94,35.02
step
talk Tooki Tooki##56313
turnin Swallowed Whole##29879 |goto 26.28,37.33
accept Orders are Orders##29935 |goto 26.28,37.33
step
talk Bo Bo##56351
accept The Bees' Knees##29933 |goto 25.88,37.99
step
talk Nibi Nibi##56327
accept Kill Kher Shan##29924 |goto 25.96,38.73
step
talk Jeek Jeek##63748
accept Wicked Wikkets##31241 |goto 28.18,38.97
step
Enter the cave |goto 33.34,42.36 < 10 |walk
kill Kher Shan##56329 |q 29924/1 |goto 33.35,41.65
|tip Inside the cave.
step
Click the Complete Quest Box:
turnin Kill Kher Shan##29924
stickystart "Collect_Alliance_Service_Medallions"
step
kill Jack Arrow##63809
|tip Attack him from the back and he won't hurt you.
|tip Avoid the pink circles on the ground.
collect Captain Jack's Head##85783 |goto 30.82,41.27 |q 31261 |future
step
use Captain Jack's Head##85783
accept Captain Jack's Dead##31261 |goto 30.82,41.27
step
label "Collect_Alliance_Service_Medallions"
kill Battleworn Paratrooper##63782+
collect 6 Alliance Service Medallion##85784+ |q 31241/1 |goto 30.82,40.78
step
kill Tigerfly##56283+
collect 30 Bug Leg##76173+ |q 29933/1 |goto 29.43,44.67
You can find more around [31.51,45.57]
step
talk Chief Kah Kah##56336
turnin Orders are Orders##29935 |goto 27.99,47.20
accept Instant Messaging##29936 |goto 27.99,47.20
turnin The Bees' Knees##29933 |goto 27.99,47.20
turnin Captain Jack's Dead##31261 |goto 27.99,47.20
turnin Wicked Wikkets##31241 |goto 27.99,47.20
step
talk Grookin Bed-Haver##62975
|tip Inside the building.
home Grookin Hill |goto 27.99,47.43 |q 30015 |future
step
clicknpc Signal Flare##56413
Watch the cinematic
Signal the Survivors |q 29936/1 |goto 27.98,46.79
step
talk General Nazgrim##56339
turnin Instant Messaging##29936 |goto 28.26,47.78
accept Beyond the Horizon##29941 |goto 28.26,47.78
step
talk Grookin Flapmaster##60952
fpath Grookin Hill |goto 27.82,47.90
step
talk Shokia##56340
Tell her _"Nazgrim has assigned you to scout the region, Shokia. You are to depart shortly."_
Dispatch Shokia |q 29941/1 |goto 28.35,46.97
step
talk Chief Kah Kah##56336
Tell him _"Big Chief Kah Kah, we will be exploring your lands and could use a good guide. Will you help us?"_
Parlay with Kah Kah |q 29941/4 |goto 27.99,47.20
step
talk Shademaster Kiryn##56478
Tell her _"Nazgrim has assigned you to the scouting party, Kiryn. You are to depart shortly."_
Dispatch Shademaster Kiryn |q 29941/3 |goto 27.10,48.98
step
talk Sergeant Gorrok##56477
|tip He walks around this area.
Tell him _"Nazgrim has assigned you to help scout the region, Gorrok. You are to depart shortly."_
Dispatch Sergeant Gorrok |q 29941/2 |goto 27.63,50.48
step
talk General Nazgrim##56339
turnin Beyond the Horizon##29941 |goto 28.26,47.78
step
talk Rivett Clutchpop##56406
accept Furious Fowl##29937 |goto 28.30,47.79
step
talk Chief Kah Kah##56336
accept What's in a Name Name?##31239 |goto 27.99,47.20
step
kill 7 Riverstride Jinyu##56289+ |q 31239/1 |goto 28.79,46.01
You can find more around [31.08,47.16]
step
talk Chief Kah Kah##56336
turnin What's in a Name Name##31239 |goto 27.99,47.20
step
kill Hungry Bloodtalon##56396+
collect 6 Fistful of Bird Guts##76225 |q 29937/1 |goto 30.51,50.99
You can find more around [27.91,52.38]
step
talk Rivett Clutchpop##56406
turnin Furious Fowl##29937 |goto 27.23,50.78
accept Easy Pickings##29939 |goto 27.23,50.78
step
talk Eekle Eekle##56358
accept Silly Wikket, Slickies are for Hozen##29942 |goto 27.03,50.84
stickystart "Collect_Snapper_Steaks"
step
use the Gut Bomb##76262
|tip Use it to throw a bomb into the water.
click Dead Deepriver Slicky##209877+
|tip They look like small dead fish floating in the water after using the Gut Bomb.
collect 5 Exploded Slicky##76260 |q 29939/1 |goto 26.71,55.39
step
label "Collect_Snapper_Steaks"
kill Muck Snapper##56447+
|tip Underwater.
collect 4 Snapper Steak##76420+ |q 29942/1 |goto 26.88,55.92
step
talk Eekle Eekle##56358
turnin Silly Wikket, Slickies are for Hozen##29942 |goto 27.03,50.84
step
talk Rivett Clutchpop##56406
turnin Easy Pickings##29939 |goto 27.23,50.78
accept The Scouts Return##29971 |goto 27.23,50.78
step
talk Shokia##55647
turnin The Scouts Return##29971 |goto 28.64,47.37
step
talk Riko##55648
accept Scouting Report: Hostile Natives##29730 |goto 28.60,47.43
step
click STAY OUT - NO VISITORS##209615
Inspect the Warning Sign |q 29730/1 |goto 38.30,45.39
step
clicknpc Lifelike Jade Statue##55378
|tip They look like small green Pandaren statues on the ground around this area.
Inspect a Lifelike Jade Statue |q 29730/2 |goto 38.93,46.00
step
talk Widow Greenpaw##55381
Tell her _"I am an orc, ma'am. Would you mind if I asked you a few questions?"_
Speak with Widow Greenpaw |q 29730/3 |goto 39.24,46.21
step
talk Riko##55648
turnin Scouting Report: Hostile Natives##29730 |goto 28.60,47.43
step
talk Shademaster Kiryn##55646
accept Scouting Report: On the Right Track##29731 |goto 28.65,47.46
step
Watch the dialogue
Search the Serpent's Spine for Signs of Life |q 29731/1 |goto 48.59,60.11
|tip Use the "Smoke Bomb" ability on your action bar to mark enemies for Shokia to kill.
step
talk Shademaster Kiryn##55646
turnin Scouting Report: On the Right Track##29731 |goto 28.65,47.46
step
talk Riko##55648
accept Scouting Report: The Friend of My Enemy##29823 |goto 28.60,47.43
step
talk Shademaster Kiryn##55688
Tell her _"Never! Riko protect you to death!"_
Kill the enemies that attack in waves
kill Alliance Scout##55693
Listen to Riko's Report |q 29823/1 |goto The Jade Forest 49.82,70.51
|tip Use the abilities on your action bar.
step
talk Riko##55648
turnin Scouting Report: The Friend of My Enemy##29823 |goto 28.60,47.43
step
talk Shokia##55647
accept Scouting Report: Like Jinyu in a Barrel##29824 |goto 28.64,47.37
step
click Sniper Rifle##209691
Kill Pearlfin enemies
|tip Right click them to kill them as you look through the sniper scope.
|tip After clearing out the enemies Shademaster Kiryn will plant 3 poison barrels for you to shoot.
|tip There's one next to each building and one next to the central fountain.
|tip Then you'll have to kill more waves of Pearlfin enemies again.
Escort Shademaster Kiryn Through the Camp |q 29824/1 |goto 62.55,82.15
step
talk Shokia##55647
turnin Scouting Report: Like Jinyu in a Barrel##29824 |goto 28.64,47.37
step
Watch the dialogue
talk General Nazgrim##56339
accept Guerrillas in our Midst##29943 |goto 28.67,47.53
step
talk Rivett Clutchpop##56406
accept Green-ish Energy##29968 |goto 30.79,52.26
stickystart "Collect_Green_Branches"
step
kill 8 Alliance Infiltrator##56303 |q 29943/1 |goto 30.47,51.64
step
_Next to you:_
talk General Nazgrim##56490
turnin Guerrillas in our Midst##29943
accept Burning Down the House##29966
step
label "Collect_Green_Branches"
click Green Branch##209903+
|tip They look like brown logs on the ground around this area.
collect 7 Green Branch##76333 |q 29968/1 |goto 30.47,51.64
step
use Nazgrim's Grog##76336
Destroy the Alliance Camp |q 29966/1 |goto 29.44,54.20
step
talk Rivett Clutchpop##56406
turnin Green-ish Energy##29968 |goto 27.23,50.78
accept Boom Goes the Doonamite!##29967 |goto 27.23,50.78
step
talk Rivett Clutchpop##56525
Tell him _"Okay, Rivett. I'm ready!"_
Speak with Rivett |invehicle |goto 28.98,49.08 |q 29967
step
Kill Jinyu enemies around this area
Slay #10# Jinyu Attackers |q 29967/1 |goto 29.79,49.20
|tip Use the "Throw Methane Bomb" on your action bar.
|tip If they get too close and knock you out talk to Rivett again.
step
talk Rivett Clutchpop##56525
turnin Boom Goes the Doonamite!##29967 |goto 28.98,49.08
step
talk General Nazgrim##56339
turnin Burning Down the House##29966 |goto 28.67,47.53
accept Dawn's Blossom##30015 |goto 28.67,47.53
step
talk Grookin Flapmaster##60952 |goto 27.82,47.90 |walk
Tell him _"Send me to Dawn's Blossom."_
Fly to Dawn's Blossom |goto 47.03,46.16 < 5 |noway |q 30015
step
talk Keg Runner Lee##59186
fpath Dawn's Blossom |goto 47.05,46.24
step
talk Lorewalker Cho##63577
turnin Dawn's Blossom##30015 |goto 46.82,46.14
step
talk Toya##56348
accept Welcome to Dawn's Blossom##31230 |goto 47.16,46.17
step
talk Kai Wanderbrew##59173
|tip He walks around this area.
Speak with Kai Wanderbrew |q 31230/3 |goto 47.09,46.01
step
talk Master Windfur##59160
|tip Inside the building.
Speak with Master Windfur |q 31230/1 |goto 48.49,44.49
step
talk Peiji Goldendraft##55809
|tip Inside the building.
Speak with Peiji Goldendraft |q 31230/2 |goto 45.72,43.70
step
talk Peiji Goldendraft##55809
|tip Inside the building.
home The Dunken Hozen |goto 45.72,43.70 |q 29670 |future
step
talk Toya##56348
turnin Welcome to Dawn's Blossom##31230 |goto 47.16,46.17
step
talk An Windfur##55413
|tip She walks around this area.
accept The Double Hozu Dare##29716 |goto 46.65,46.15
step
talk Tzu the Ironbelly##56062
accept The Silkwood Road##29865 |goto 46.46,45.80
step
talk Lo Wanderbrew##59178
accept The Threads that Stick##29866 |goto 46.63,45.31
stickystart "Slay_Silkwood_Stalkers"
step
click Silk Patch##209951+
|tip They look like white cocoons on the ground around this area.
collect 7 Pristine Silk Strand##75023 |q 29866/1 |goto 43.44,49.36
step
label "Slay_Silkwood_Stalkers"
kill 8 Silkwood Stalker##56070 |q 29865/1 |goto 43.44,49.36
step
_Next to you:_
talk An Windfur##55274
accept Down Kitty!##29717 |goto 40.12,48.40
stickystart "Slay_Jade_Guardians"
step
talk Scared Pandaren Cub##55267
Tell them _"It's safe now. You can come down."_
Rescue #6# Cubs |q 29716/1 |goto 39.05,47.82
You can find more around [38.28,44.73]
step
label "Slay_Jade_Guardians"
kill 8 Jade Guardian##55236 |q 29717/1 |goto 39.27,47.72
You can find more around [38.28,44.73]
step
_Next to you:_
talk An Windfur##55274
turnin The Double Hozu Dare##29716
accept The Jade Witch##29723
turnin Down Kitty!##29717
step
talk Widow Greenpaw##55368
|tip Inside the building.
Ask her _"Where is Shin?"_
|tip Follow her behind the house.
kill Widow Greenpaw##55368
Confront the Jade Witch |q 29723/1 |goto 39.34,46.22
step
talk Lo Wanderbrew##59178
turnin The Threads that Stick##29866 |goto 46.63,45.31
step
talk Tzu the Ironbelly##56062
turnin The Silkwood Road##29865 |goto 46.46,45.80
step
talk An Windfur##55413
|tip She walks around this area.
turnin The Jade Witch##29723 |goto 46.65,46.15
step
talk Kai Wanderbrew##59173
|tip He walks around this area.
accept Find the Boy##29993 |goto 47.09,46.01
step
talk Toya##56348
accept All We Can Spare##29925 |goto 47.16,46.17
step
talk Inkmaster Wei##56065
|tip He walks around this area.
turnin Find the Boy##29993 |goto 54.91,45.12
accept Shrine of the Dawn##29995 |goto 54.91,45.12
step
talk Inkmaster Glenzu##56064
accept The Perfect Color##29881 |goto 54.89,45.31
step
talk Inkmaster Jo Po##56063
|tip He walks around this area.
accept Quill of Stingers##29882 |goto 55.31,45.31
step
talk Injar'i Lakebloom##59732
fpath The Arboretum |goto 57.01,44.03
stickystart "Collect_Freshly_Fallen_Petals"
step
kill Orchard Wasp##56201+
collect 6 Wasp Stinger##75221+ |q 29882/1 |goto 53.88,45.85
step
label "Collect_Freshly_Fallen_Petals"
click Freshly Fallen Petals##209836+
|tip They look like small red flowers on the ground around this area.
collect 8 Freshly Fallen Petal##75219+ |q 29881/1 |goto 53.88,45.85
step
talk Inkmaster Glenzu##56064
turnin The Perfect Color##29881 |goto 54.89,45.31
step
talk Inkmaster Jo Po##56063
|tip He walks around this area.
turnin Quill of Stingers##29882 |goto 55.31,45.31
step
talk Syra Goldendraft##56708
turnin Shrine of the Dawn##29995 |goto 52.57,38.12
accept Getting Permission##29920 |goto 52.57,38.12
step
talk Pandriarch Bramblestaff##56209
Choose _Challenge the Pandriarch._
kill Pandriarch Bramblestaff##56209
Defeat Pandriarch Bramblestaff |q 29920/2 |goto 54.09,38.45
step
talk Pandriarch Goldendraft##56210
Choose _Challenge the Pandriarch._
kill Pandriarch Goldendraft##56210
Defeat Pandriarch Goldendraft |q 29920/3 |goto 53.59,36.73
step
talk Pandriarch Windfur##56206
Choose _Challenge the Pandriarch._
kill Pandriarch Windfur##56206
Defeat Pandriarch Windfur |q 29920/1 |goto 52.54,35.57
step
talk Lo Wanderbrew##55788
turnin Getting Permission##29920 |goto 52.59,38.12
step
talk Lorewalker Cho##56345
turnin All We Can Spare##29925 |goto 50.91,27.07
step
talk Foreman Mann##56346
accept I Have No Jade And I Must Scream##29928 |goto 50.94,27.03
step
talk Supplier Towsa##59735
fpath Emperor's Omen |goto 50.82,26.80
step
kill Puckish Sprite##56349+
click Chunk of Jade##209863+
|tip They look like small teal chunks of ore that spawn after killing a Puckish Sprite.
collect 15 Chunk of Jade##76209 |q 29928/1 |goto 48.19,31.41
step
talk Foreman Mann##56346
turnin I Have No Jade And I Must Scream##29928 |goto 50.94,27.03
accept Calamity Jade##29926 |goto 50.94,27.03
accept Mann's Man##29927 |goto 50.94,27.03
step
clicknpc Outcast Sprite##55438
accept The Sprites' Plight##29745 |goto 48.67,24.94
step
Find the Source of the Destroyers |q 29745/2 |goto 48.45,20.27
step
kill 10 Stonebound Destroyer##55288+ |q 29745/1 |goto 49.59,20.14
You can find more around [47.43,20.83]
step
Click the Complete Quest Box:
turnin The Sprites' Plight##29745
accept Break the Cycle##29747
step
clicknpc Shattered Simulacrum##55472
accept Simulacrumble##29748 |goto 48.57,20.62
stickystart "Slay_Shan'ze_Spiritbinders"
step
clicknpc Vacant Destroyer##55289+
|tip They look like Stone Statues holding big maces around this area.
Destroy 6 Vacant Destroyer |q 29748/1 |goto 48.33,18.25
You can find more around [47.16,16.40]
step
label "Slay_Shan'ze_Spiritbinders"
kill 8 Shan'ze Spiritbinder##55279 |q 29747/1 |goto 48.33,18.25
You can find more around [47.16,16.40]
step
Click the Complete Quest Box:
turnin Simulacrumble##29748
turnin Break the Cycle##29747
accept An Urgent Plea##29749
step
click Staff of Pei-Zhi##209662
collect Staff of Pei-Zhi##74258 |q 29749/1 |goto 44.23,14.91
step
kill Ancient Spirit##55489+
Interrupt the Ritual of Spiritbinding |q 29749/2 |goto 44.36,15.35
step
talk Pei-Zhi##55614
|tip If he does not appear, you may have to log out and log back in to get him to show up.
turnin An Urgent Plea##29749 |goto 44.23,15.02
accept Ritual Artifacts##29751 |goto 44.23,15.02
accept Vessels of the Spirit##29750 |goto 44.23,15.02
accept The Wayward Dead##29752 |goto 44.23,15.02
stickystart "Collect_Spirit_Bottles"
stickystart "Recover_Wayward_Ancestors"
step
click Pungent Ritual Candle##209701
collect Pungent Ritual Candle##74761 |q 29751/3 |goto 42.27,17.09
step
click Jade Cong##209699+
collect Jade Cong##74762 |q 29751/1 |goto 42.68,15.74
step
click Chipped Ritual Bowl##209700
collect Chipped Ritual Bowl##74760 |q 29751/2 |goto 41.63,14.30
step
label "Collect_Spirit_Bottles"
kill Shan'ze Spiritclaw##55291+
collect 8 Spirit Bottle##74763+ |q 29750/1 |goto 41.98,15.85
step
label "Recover_Wayward_Ancestors"
clicknpc Wayward Ancestor##55290+
|tip They look like green spirits that float around this area.
use Staff of Pei-Zhi##74771
|tip Use it on Wayward Ancestors.
Recover 10 Wayward Ancestors |q 29752/1 |goto 40.64,14.69
step
talk Pei-Zhi##55614
turnin Ritual Artifacts##29751 |goto 44.23,15.02
turnin Vessels of the Spirit##29750 |goto 44.23,15.02
accept Back to Nature##29753 |goto 44.23,15.02
turnin The Wayward Dead##29752 |goto 44.23,15.02
accept A Humble Offering##29756 |goto 44.23,15.02
stickystart "Collect_Tidemist_Caps"
step
use Spirit Bottles##74808
kill Raging Beast Spirit##55790+
Return 8 Beast Spirits to Nature |q 29753/1 |goto 38.55,10.82
step
label "Collect_Tidemist_Caps"
click Tidemist Cap##209825+
|tip They look like small clusters of white mushrooms on the ground and at the base of tree trunks around this area.
collect 10 Tidemist Cap##75214+ |q 29756/1 |goto 39.83,11.45
step
talk Pei-Zhi##55614
turnin Back to Nature##29753 |goto 44.23,15.02
turnin A Humble Offering##29756 |goto 44.23,15.02
accept To Bridge Earth and Sky##29754 |goto 44.23,15.02
step
kill Shan'ze Spiritclaw##55902+
Protect Pei-Zhi During His Ritual |q 29754/1 |goto 43.76,12.61
step
Click the Complete Quest Box:
turnin To Bridge Earth and Sky##29754
accept Pei-Back##29755
step
kill Stonebound Colossus##56595
clicknpc Your Body##56600
|tip Click your body to return to it when your spirit gets separated from you.
kill Shan Jitong##56596 |q 29755/1 |goto 42.51,10.61
step
talk Pei-Zhi##59492
turnin Pei-Back##29755 |goto 43.84,12.52
step
talk Studious Chu##59736
fpath Tian Monastery |goto 43.57,24.53
step
talk Lin Tenderpaw##54913
accept The High Elder##29618 |goto 44.99,24.96
step
talk High Elder Cloudfall##54914
|tip Upstairs inside the building.
|tip He's on a balcony on the second level.
turnin The High Elder##29618 |goto 45.22,25.07
step
talk Lin Tenderpaw##54913
accept A Courteous Guest##29619 |goto 44.99,24.96
step
click Ripe Orange##209436+
|tip They look like small oranges on the ground around a tree.
|tip If the Greenwood Thieves are holding an orange, you can kill them and loot it off them.
collect 8 Ripe Orange##72589 |q 29619/1 |goto 45.71,27.19
step
talk Lin Tenderpaw##54913
turnin A Courteous Guest##29619 |goto 44.99,24.96
accept The Great Banquet##29620 |goto 44.99,24.96
step
talk High Elder Cloudfall##54914
Tell him _"I don't need any introductions, old man. Let's skip ahead to the good part."_
Speak with High Elder Cloudfall |q 29620/1 |goto 42.74,23.17
step
talk High Elder Cloudfall##54914
turnin The Great Banquet##29620 |goto 42.74,23.17
step
talk Xiao##54926
accept Your Training Starts Now##29622 |goto 43.13,23.63
accept Groundskeeper Wu##29626 |goto 43.13,23.63
step
talk Master Stone Fist##54922
accept Becoming Battle-Ready##29632 |goto 43.24,24.76
step
talk Tian Pupil##54944+
Tell them _"Let's fight!"_
kill Tian Pupil##54944+
Defeat #8# Tian Pupils |q 29632/1 |goto 43.69,24.97
step
talk Master Stone Fist##54922
turnin Becoming Battle-Ready##29632 |goto 43.24,24.76
accept Zhi-Zhi, the Dextrous##29633 |goto 43.24,24.76
accept Husshun, the Wizened##29634 |goto 43.24,24.76
step
talk Husshun##54925
Tell him _"I challenge you to a fight, Husshun!"_
kill Husshun##54925
Defeat Husshan |q 29634/1 |goto 44.56,24.05
step
talk Zhi-Zhi##54924
Ask him _"Wanna fight?"_
kill Zhi-Zhi##54924
Defeat Zhi-Zhi |q 29633/1 |goto 43.05,25.99
step
talk Master Stone Fist##54922
turnin Zhi-Zhi, the Dextrous##29633 |goto 43.24,24.76
turnin Husshun, the Wizened##29634 |goto 43.24,24.76
accept Xiao, the Eater##29635 |goto 43.24,24.76
step
talk Xiao##54926
Tell him _"Put down your fork, and pick up you fists! I challenge you!"_
kill Xiao##54926
Defeat Xiao |q 29635/1 |goto 43.13,23.63
step
talk Master Stone Fist##54922
turnin Xiao, the Eater##29635 |goto 43.24,24.76
accept A Test of Endurance##29636 |goto 43.24,24.76
step
talk Groundskeeper Wu##54915
turnin Groundskeeper Wu##29626 |goto 41.62,23.70
accept A Proper Weapon##29627 |goto 41.62,23.70
step
talk June Whiteblossom##54981
buy Black Walnut Extract##72954 |q 29627/2 |goto 41.39,24.15
step
talk Brewmaster Lei Kanglei##54982
buy 3 Triple-Bittered Ale##72979 |q 29627/3 |goto 41.77,24.60
step
click Rattan Switch##209464+
|tip They look like tall thin plants with leaves at the top next to trees around this area.
collect 6 Rattan Switch##72926 |q 29627/1 |goto 41.47,25.33
You can find more around [41.86,24.87]
step
talk Groundskeeper Wu##54915
turnin A Proper Weapon##29627 |goto 41.62,23.70
accept A Strong Back##29628 |goto 41.62,23.70
accept A Steady Hand##29629 |goto 41.62,23.70
accept And a Heavy Fist##29630 |goto 41.62,23.70
step
talk Instructor Xann##54917
turnin Your Training Starts Now##29622 |goto 41.60,28.33
accept Perfection##29623 |goto 41.60,28.33
step
Mimic the Tian Instructor:
|tip Use the abilities on your action bar.
Practice #12# Strikes |q 29623/1 |goto 41.36,27.84
step
talk Instructor Xann##54917
turnin Perfection##29623 |goto 41.60,28.33
accept Attention##29624 |goto 41.60,28.33
step
kill 2 Training Bag##55183+ |q 29624/1 |goto 41.14,27.97
|tip Each bag has a lot of health and only one is vulnerable at a time.
|tip Listen for the Instructor's directions and hit the bag he calls for.
|tip If you're attacking the wrong bag you'll only do 1% damage.
step
talk Instructor Xann##54917
turnin Attention##29624 |goto 41.60,28.33
step
talk Instructor Myang##54918
turnin A Test of Endurance##29636 |goto 38.96,24.05
accept The Rumpus##29637 |goto 38.96,24.05
step
use Monastery Fireworks##73369
Kill the enemies that attack in waves
Survive for 2 Minutes |q 29637/1 |goto 39.02,23.36
step
talk Guard Shan Long##55094
accept Burning Bright##29631 |goto 38.01,23.80
step
talk Instructor Myang##54918
turnin The Rumpus##29637 |goto 38.96,24.05
step
click Boiling Cauldron##209551
Obtain the Boiling Cauldron |q 29628/1 |goto 37.76,17.57
step
_Do Not Mount:_
|tip The cauldron cannot keep up if you mount; you will lose it and have to restart.
|tip Nearby Greenwood enemies will attack you when you get close while draging the cauldron.
Return with the Boiling Cauldron |q 29628/2 |goto 41.62,23.70
step
talk Groundskeeper Wu##54915
turnin A Strong Back##29628 |goto 41.62,23.70
step
kill 10 Greenwood Trickster##54987 |q 29630/1 |goto 37.78,19.83
stickystart "Collect_Blushleaf_Extracts"
step
Kill Waxwood enemies around this area
Slay #6# Waxwood Hunters |q 29631/1 |goto 34.58,21.65
step
label "Collect_Blushleaf_Extracts"
click Blushleaf Clusters
|tip They look like small bushes with red leaves around this area.
|tip This is a channeled spell that determines how many extracts you obtain per plant so try to not get interrupted or move.
collect 80 Blushleaf Extract##73193 |q 29629/1 |goto 34.58,21.65
step
talk Guard Shan Long##55094
turnin Burning Bright##29631 |goto 38.01,23.80
step
talk Groundskeeper Wu##54915
turnin A Steady Hand##29629 |goto 41.62,23.70
turnin And a Heavy Fist##29630 |goto 41.62,23.70
accept Flying Colors##29646 |goto 41.62,23.70
step
talk High Elder Cloudfall##54914
turnin Flying Colors##29646 |goto 42.74,23.17
step
Enter the cave |goto 45.97,28.98 < 7 |walk
Locate Hao Mann |q 29927/1 |goto The Jade Forest/6 60.88,36.85
step
talk Hao Mann##56347
|tip Inside the cave.
turnin Mann's Man##29927 |goto 60.88,36.85
accept Trapped!##29929 |goto 60.88,36.85
stickystart "Slay_Greenstone_Gorgers"
stickystart "Slay_Greenstone_Nibblers"
step
clicknpc Greenstone Miner##56464+
|tip They look like friendly Pandaren trapped by piles of rocks around this area inside the cave.
Free #8# Gemstone Miners |q 29929/1 |goto The Jade Forest/7 54.14,44.11
step
label "Slay_Greenstone_Gorgers"
kill 6 Greenstone Gorger##56404 |q 29926/2 |goto The Jade Forest/7 54.14,44.11
|tip Inside the cave.
step
label "Slay_Greenstone_Nibblers"
kill 12 Greenstone Nibbler##56401 |q 29926/1 |goto The Jade Forest/7 54.14,44.11
|tip Inside the cave.
step
Run up the stairs |goto 50.68,54.23 < 5 |walk
talk Hao Mann##56467
turnin Trapped!##29929 |goto The Jade Forest/0 46.30,29.40 |notravel
accept What's Mined Is Yours##29930 |goto 46.30,29.40 |notravel
step
clicknpc Jade Cart##56527
Jump in the Cart |invehicle |goto 46.28,29.46 |q 29930
step
Kill the enemies that attack
Deliver the Jade |q 29930/1 |goto 51.21,26.72
step
talk Foreman Mann##56346
turnin Calamity Jade##29926 |goto 50.94,27.03
turnin What's Mined Is Yours##29930 |goto 50.94,27.03
accept The Serpent's Heart##29931 |goto 50.94,27.03
step
talk Foreman Raike##59391
turnin The Serpent's Heart##29931 |goto 48.31,61.35
accept Love's Labor##30495 |goto 48.31,61.35
step
talk Historian Dinh##59395
Tell him _"I've got a new jade shipment for you."_
Complete Historian Dinh's Delivery |q 30495/1 |goto 46.36,61.80
step
talk Surveyor Sawa##59401
Tell him _"I've got your jade right here."_
Complete Surveyor Sawa's Delivery |q 30495/2 |goto 46.94,60.36
step
talk Kitemaster Shoku##59392
Tell him _"I've got a jade delivery for you."_
Complete Kitemaster Shoku's Delivery |q 30495/3 |goto 48.18,60.02
step
talk Kitemaster Shoku##59392
Tell him _"I need a ride to the top of the statue."_
Ride a kite to the top of the statue |goto 48.18,60.02 < 5
talk Taskmaster Emi##59397
|tip At the top of the big jade statue.
Ask her _"Did someone say they needed jade?"_
Complete Taskmaster Emi's Delivery |q 30495/4 |goto 47.58,60.67
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
Tell her _"I have a message for the Jade Serpent."_
Speak to Elder Sage Wind-Yi |q 29932/1 |goto 54.99,56.88
She can sometimes be found here [goto The Jade Forest/0 55.84,57.07]
step
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
clicknpc Playful Emerald Serpent##56859
|tip It floats around this area.
Find the Playful Emerald Serpent |q 29999/3 |goto 56.53,58.36
stickystop "Launch_Fireworks"
step
Enter the building |goto 56.42,58.92 < 7 |walk
talk Lorewalker Stonestep##56786
|tip Inside the building.
turnin The Librarian's Quandary##29998 |goto 56.27,60.44
accept Moth-Ridden##30001 |goto 56.27,60.44
accept Pages of History##30002 |goto 56.27,60.44
step
clicknpc Playful Gold Serpent##56850
|tip It floats around this area inside the building.
Find the Playful Gold Serpent |q 29999/4 |goto 56.04,60.34
stickystart "Slay_Dappled_Moths"
step
click Infested Book##209594+
|tip They look like large green books laying on the ground inside the building.
kill 12 Bookworm##57237 |q 30002/1 |goto 55.62,60.07
step
label "Slay_Dappled_Moths"
kill 8 Dappled Moth##57232 |q 30001/1 |goto 55.89,60.26
|tip They look like small grey moths flying around inside the building.
step
talk Lorewalker Stonestep##56786
|tip Inside the building.
turnin Moth-Ridden##30001 |goto 56.27,60.44
turnin Pages of History##30002 |goto 56.27,60.44
accept Everything In Its Place##30004 |goto 56.27,60.44
stickystart "Launch_Fireworks"
step
clicknpc Playful Crimson Serpent##56852
|tip It floats around this area.
Find the Playful Crimson Serpent |q 29999/2 |goto 58.17,61.38
step
talk Elder Sage Rain-Zhu##56782
turnin Everything In Its Place##30004 |goto 58.13,58.66
step
clicknpc Playful Azure Serpent##56853
|tip It floats around this area.
Find the Playful Azure Serpent |q 29999/1 |goto 59.19,56.75
step
kill Water Fiend##56820+
|tip Inside the building.
collect Scryer's Staff##76725 |q 29997/1 |goto 57.15,55.83
step
talk Wise Mari##56787
|tip Inside the building.
turnin The Scryer's Dilemma##29997 |goto 57.57,56.03
accept A New Vision##30011 |goto 57.57,56.03
step
label "Launch_Fireworks"
click Firework Launcher##210004+
|tip They look like stone urns sitting on wooden stands on the ground around this area.
Launch #8# Fireworks |q 30005/1 |goto 57.70,57.81
step
talk Elder Sage Rain-Zhu##56782
turnin A New Vision##30011 |goto 58.13,58.66
step
talk Fei##56784
turnin The Rider's Bind##29999 |goto 58.03,59.01
turnin Lighting Up the Sky##30005 |goto 58.03,59.01
accept The Jade Serpent##30000 |goto 58.03,59.01
step
Watch the dialogue
Listen to the Jade Dragon's Tale |q 30000/1
step
talk Elder Sage Wind-Yi##57242
turnin The Jade Serpent##30000 |goto 55.84,57.08
accept Get Back Here!##30499 |goto 55.84,57.08
step
talk Ginsa Arroweye##59727
fpath Jade Temple Grounds |goto 54.57,61.75
step
talk General Nazgrim##57108
turnin The Time For War##30499 |goto 28.03,47.19
accept Gauging Our Progress##30484 |goto 28.03,47.19
accept Sufficient Motivation##30466 |goto 28.03,47.19
stickystart "Motivate_Hozen"
step
click Barrel of Slickies##209974
collect Bucket of Slicky Water##79884 |q 30466/2 |goto 28.11,47.39
step
talk Rivett Clutchpop##59305
Tell him _"General Nazgrim needs an update on your progress."_
collect Rivett Clutchpop's Report##80014 |q 30484/2 |goto 28.41,47.79
step
talk Shademaster Kiryn##56841
Tell her _"General Nazgrim wants an update on your progress."_
collect Shademaster Kiryn's Report##80013 |q 30484/1 |goto 29.16,50.89
stickystop "Motivate_Hozen"
step
talk Shokia##56838
|tip She walks around this area.
Tell her _"General Nazgrim needs your training report."_
collect Shokia's Report##80015 |q 30484/3 |goto 28.39,51.93
step
talk Riko##56840
Tell him _"General Nazgrim wants to know the status of the supplies."_
collect Riko's Report##80061 |q 30484/4 |goto 27.00,54.94
step
label "Motivate_Hozen"
use Bucket of Slicky Water##79884
|tip Use it on Lazy Hozen around this area.
|tip They look like sleeping monkies on the ground around this area.
Motivate #10# Hozen |q 30466/1 |goto 28.53,49.47
step
talk General Nazgrim##57108
turnin Gauging Our Progress##30484 |goto 28.03,47.19
turnin Sufficient Motivation##30466 |goto 28.03,47.19
step
talk Lorewalker Cho##59377
accept Last Piece of the Puzzle##30485 |goto 28.22,46.72
step
talk Mishi##64207 |goto 28.19,46.72
Tell him _"I am ready to leave."_
Fly to Serpent's Overlook |goto 44.65,67.24 < 5 |noway |q 30485
step
talk Sky Dancer Ji##64310
fpath Serpent's Overlook |goto 43.10,68.49
step
use the Cho Family Heirloom##80071
Watch the cutscene
Reveal the Mystery of the Frescos |q 30485/1 |goto 44.51,66.94
step
talk Lorewalker Cho##59411
turnin Last Piece of the Puzzle##30485 |goto 44.77,67.09
accept The Seal is Broken##31303 |goto 44.77,67.09
step
talk Mishi##64244
Tell him _"Let's do this, Mishi!"_
Start Riding Mishi |invehicle |goto 44.77,67.04 |q 31303
step
Seal #12# Sha Fissures |q 31303/1
|tip They look like white circles with pillars of smoke coming out of them around this area.
|tip Use the "Shoot Cannon" ability on your action bar.
step
talk Lorewalker Cho##59418
turnin The Seal is Broken##31303 |goto 49.30,61.48
accept Residual Fallout##30500 |goto 49.30,61.48
accept Jaded Heart##30502 |goto 49.30,61.48
accept Emergency Response##30504 |goto 49.30,61.48
stickystart "Slay_Sha_Remnants"
stickystart "Slay_Sha_Echoes"
step
use Cho's Fireworks##86467
Rescue General Nazgrim |q 30504/1 |goto 48.13,61.77
step
|use Cho's Fireworks##86467
Rescue Shademaster Kiryn |q 30504/2 |goto 47.24,62.54
step
|use Cho's Fireworks##86467
Rescue Shokia |q 30504/3 |goto 46.87,60.71
step
|use Cho's Fireworks##86467
Rescue Rivett Clutchpop |q 30504/4 |goto 48.02,59.08
step
label "Slay_Sha_Remnants"
click Celestial Jade##210921+
|tip They look like small teal chunks of ore on the ground around this area.
use Celestial Jade##80074
|tip Use them on Sha Remnants to weaken them.
kill 6 Sha Remnant##59434 |q 30502/1 |goto 48.4,60.2
step
label "Slay_Sha_Echoes"
kill 10 Sha Echo##59417 |q 30500/1 |goto 48.4,60.2
step
talk Lorewalker Cho##59418
turnin Residual Fallout##30500 |goto 49.30,61.48
turnin Jaded Heart##30502 |goto 49.30,61.48
turnin Emergency Response##30504 |goto 49.30,61.48
step
talk Fei##59899
accept Moving Forward##30648 |goto 49.30,61.42
step
talk Fei##59899 |goto 49.30,61.42
Tell her _"I am ready to leave."_
Begin Flying With Yu'lon |goto 48.58,60.23 < 15 |noway |q 30648
step
Watch the dialogue
Travel to the Valley of the Four Winds |q 30648/1 |goto Valley of the Four Winds/0 86.02,21.72 |notravel
step
Click the Complete Quest Box:
turnin Moving On##30648
step
talk Shao the Defiant##54697
accept Defiance##29578 |goto The Jade Forest/0 43.48,75.92
accept Rally the Survivors##29579 |goto 43.48,75.92
step
talk Gentle Mother Hanae##54854
|tip She walks around inside the building.
accept Spitfire##29585 |goto 43.25,76.01
accept Orchard-Supplied Hardware##29580 |goto 43.25,76.01
stickystart "Collect_Orchard_Tools"
stickystart "Put_Out_Orchard_Fires"
stickystart "Slay_Gormali_Incinerators"
stickystart "Slay_Gormali_Raiders"
step
talk Nectarbreeze Farmer##54763+
|tip They look like friendly Pandaren fighting around this area.
Tell them _"Get to Hanae's house. It's safe there."_
Rescue #5# Survivors |q 29579/1 |goto 43.42,75.38
step
label "Collect_Orchard_Tools"
click Orchard Tool##209345+
|tip They look like small wooden shovels and rakes laying on the ground around this area.
collect 6 Orchard Tool##72133 |q 29580/1 |goto 44.02,73.03
step
label "Put_Out_Orchard_Fires"
use Nectarbreeze Cider##72578
|tip Use it to put out fires around this area.
|tip You must be facing the fire and standing close to it for this to work.
Put Out #12# Orchard Fires |q 29585/1 |goto 44.02,73.03
step
label "Slay_Gormali_Incinerators"
kill 8 Gormali Incinerator##54703 |q 29578/2 |goto 44.02,73.03
step
label "Slay_Gormali_Raiders"
kill 8 Gormali Raider##54702 |q 29578/1 |goto 44.02,73.03
step
talk Shao the Defiant##54697
turnin Defiance##29578 |goto 43.48,75.92
turnin Rally the Survivors##29579 |goto 43.48,75.92
step
talk Gentle Mother Hanae##54854
|tip She walks around inside the building.
turnin Orchard-Supplied Hardware##29580 |goto 43.25,76.01
turnin Spitfire##29585 |goto 43.25,76.01
step
talk Traumatized Nectarbreeze Farmer##55209
|tip Inside the building.
accept The Splintered Path##29586 |goto 43.21,75.94
step
Discover Camp Mogu |q 29586/1 |goto 41.00,73.97
step
talk Shao the Defiant##55009
turnin The Splintered Path##29586 |goto 41.00,73.97
accept Unbound##29587 |goto 41.00,73.97
accept Getting Down to Business##29670 |goto 41.00,73.97
stickystart "Free_Farmers"
step
kill Subjugator Gormal##55016 |q 29670/1 |goto 37.80,76.18
step
label "Free_Farmers"
kill Gormali Slaver##54989+
clicknpc Captured Nectarbreeze Farmer##54990+
|tip They look like friendly Pandaren trapped in nets or chained to Gormali Slavers around this area.
Free #10# Farmers |q 29587/1 |goto 39.85,74.79
You can find more around [37.84,76.88]
step
talk Shao the Defiant##55009
turnin Unbound##29587 |goto 41.00,73.97
turnin Getting Down to Business##29670 |goto 41.00,73.97
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Valley of the Four Winds (15-60)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."ValleyOfTheFourWinds",
next="Leveling Guides\\Pandaria (10-60)\\Krasarang Wilds (15-60)",
condition_suggested=function() return level >= 15 and level <= 50 and not completedq(29990) end,
startlevel=15,
endlevel=50,
},[[
step
talk Chen Stormstout##56133
accept Chen and Li Li##29907 |goto Valley of the Four Winds/0 85.93,22.11
step
Follow Chen Stormstout to Pang's Stead |q 29907/1 |goto 83.70,21.02
step
talk Pang Thunderfoot##56204
turnin Chen and Li Li##29907 |goto 83.70,21.02
accept A Seemingly Endless Nuisance##29908 |goto 83.70,21.02
step
talk Princeton##60230
fpath Pang's Stead |goto 84.49,21.06
step
talk Muno the Farmhand##56440
accept A Poor Grasp of the Basics##29877 |goto 82.70,21.2
stickystart "Slay_Virmen_Pesterlings"
stickystart "Find_Buried_Farm_Equipment"
step
Kill Virmen enemies around this area
Slay #8# Large Virmen |q 29908/1 |goto 80.98,20.81
step
label "Slay_Virmen_Pesterlings"
kill Snagtooth Pesterling##65504+
Slay #18# Virmen Pesterlings |q 29908/2 |goto 80.98,20.81
step
label "Find_Buried_Farm_Equipment"
clicknpc Barrow Bush##56278+
clicknpc Rake Tree##56279+
clicknpc Hoe Tree##56280+
|tip They look like metal tools stuck in piles of dirt on the ground around this area.
Find #7# Buried Farm Equipment |q 29877/1 |goto 79.41,22.98
You can find more around [82.37,19.09]
step
talk Muno the Farmhand##56440
turnin A Poor Grasp of the Basics##29877 |goto 82.70,21.24
step
talk Pang Thunderfoot##56204
turnin A Seemingly Endless Nuisance##29908 |goto 83.70,21.02
accept Low Turnip Turnout##29909 |goto 83.70,21.02
step
talk Xiao##56110
accept The Search for the Hidden Master##30086 |goto 84.09,21.04
step
talk Xiao##56110
turnin The Search for the Hidden Master##30086 |goto 84.09,21.04
accept Ken-Ken##29873 |goto 84.09,21.04
accept Clever Ashyo##29871 |goto 84.09,21.04
accept Kang Bramblestaff##29875 |goto 84.09,21.04
accept Lin Tenderpaw##29872 |goto 84.09,21.04
step
talk Ang Thunderfoot##56207
|tip He walks around inside the building.
turnin Low Turnip Turnout##29909 |goto 81.41,24.92
accept Taking a Crop##29940 |goto 81.41,24.92
step
talk Ana Thunderfoot##56465
|tip She walks around this area.
accept Rampaging Rodents##29910 |goto 81.86,25.76
stickystart "Fill_Marmot_Holes"
step
clicknpc Plump Marmot##56203+
|tip They look like small brown animals that walk around this area.
Move #6# Plump Marmots |q 29910/1 |goto 82.21,25.96
step
label "Fill_Marmot_Holes"
click Marmot Hole##209835+
|tip They look like small holes in the ground around this area.
Fill #6# Marmot Holes |q 29910/2 |goto 82.21,25.96
step
talk Ana Thunderfoot##56465
|tip She walks around this area.
turnin Rampaging Rodents##29910 |goto 81.86,25.76
step
Enter the tunnel |goto 86.47,28.05 < 7 |walk
click Stolen Turnip##209891
|tip They look like large vegetables on the ground inside the tunnel.
collect 5 Stolen Turnip##76297 |q 29940/1 |goto 85.06,27.03
step
click Stolen Watermelon##209899+
|tip They look like large watermelons in the water around this area.
collect 5 Stolen Watermelon##76298 |q 29940/2 |goto 85.59,32.87
step
talk Ang Thunderfoot##56207
|tip He walks around inside the building.
turnin Taking a Crop##29940 |goto 81.41,24.92
accept Practically Perfect Produce##29911 |goto 81.41,24.92
step
talk Pang Thunderfoot##56204
turnin Practically Perfect Produce##29911 |goto 83.70,21.02
accept The Fabulous Miss Fanny##29912 |goto 83.70,21.02
step
click Ang's Giant Pink Turnip##209844
collect Ang's Giant Pink Turnip##75259 |goto 84.30,21.86 |q 29912
step
click Ang's Summer Watermelon##209843
collect Ang's Summer Watermelon##75258 |goto 84.14,21.97 |q 29912
step
click Pang's Extra-Spicy Tofu##209842
collect Pang's Extra-Spicy Tofu##75256 |goto 84.05,22.00 |q 29912
step
talk Miss Fanny##56192
Choose _Hit it with average power._
Launch a Pink Turnip |q 29912/1 |goto 83.02,21.40
step
talk Miss Fanny##56192
Choose _Hit it very softly._
Launch a Watermelon |q 29912/2 |goto 83.02,21.40
step
talk Miss Fanny##56192
Choose _Hit it as hard as possible._
Launch the Extra-Spicy Tofu |q 29912/3 |goto 83.02,21.40
step
talk Liang Thunderfoot##56205
turnin The Fabulous Miss Fanny##29912 |goto 75.22,24.05
accept The Meat They'll Eat##29913 |goto 75.22,24.05
accept Back to the Sty##29914 |goto 75.22,24.05
step
talk Kim of the Mountain Winds##62658
fpath Grassy Cline |goto 70.82,24.10
stickystart "Collect_Turtlemeat_Scraps"
stickystart "Collect_Mushan_Shoulder_Steaks"
step
clicknpc Jian##56253
Find Jian |q 29914/1 |goto 70.21,23.92
|tip It looks like a pig that walks around this area.
step
clicknpc Smelly##56255
Find Smelly |q 29914/3 |goto 70.20,28.53
|tip It looks like a pig that walks around this area.
step
clicknpc Ling##56254
Find Ling |q 29914/2 |goto 66.89,29.16
|tip It looks like a pig that walks around this area.
step
label "Collect_Turtlemeat_Scraps"
kill Wyrmhorn Turtle##56256+
collect 80 Turtlemeat Scrap##75276 |q 29913/2 |goto 67.49,28.94
step
label "Collect_Mushan_Shoulder_Steaks"
kill Adolescent Mushan##56239+
collect 4 Mushan Shoulder Steak##75275 |q 29913/1 |goto 70.67,31.09
You can find more around [72.90,26.53]
step
talk Liang Thunderfoot##56205
turnin The Meat They'll Eat##29913 |goto 75.22,24.05
turnin Back to the Sty##29914 |goto 75.22,24.05
accept A Neighbor's Duty##29915 |goto 75.22,24.05
step
talk Francis the Shepherd Boy##56208
turnin A Neighbor's Duty##29915 |goto 78.12,32.91
accept Piercing Talons and Slavering Jaws##29916 |goto 78.12,32.91
accept Lupello##29917 |goto 78.12,32.91
stickystart "Slay_Thieving_Wolves"
stickystart "Slay_Thieving_Plainshawks"
step
kill Lupello##56357 |q 29917/1 |goto 81.83,39.63
|tip It walks up and down the shoreline around this area.
|tip It will appear on your minimap as a yellow dot.
step
label "Slay_Thieving_Wolves"
kill 6 Thieving Wolf##56106 |q 29916/2 |goto 82.78,34.00
You can find more around [78.30,35.82]
step
label "Slay_Thieving_Plainshawks"
kill 5 Thieving Plainshawk##56034 |q 29916/1 |goto 82.78,34.00
You can find more around [78.30,35.82]
step
talk Francis the Shepherd Boy##56208
turnin Piercing Talons and Slavering Jaws##29916 |goto 78.12,32.91
turnin Lupello##29917 |goto 78.12,32.91
step
talk Shang Thunderfoot##56312
accept A Lesson in Bravery##29918 |goto 78.18,32.81
step
clicknpc Great White Plainshawk##56171
|tip They look like large white birds that fly around this area.
use Rancher's Lariat##75208
kill Great White Plainshawk##56171 |q 29918/1 |goto 78.78,31.42
|tip Use the "Escape Claws" ability that appears on screen when it grabs you.
step
talk Shang Thunderfoot##56312
|tip He walks around this area.
turnin A Lesson in Bravery##29918 |goto 74.59,34.62
step
talk Chen Stormstout##56133
accept Great Minds Drink Alike##29919 |goto 75.28,35.51
step
talk Chen Stormstout##56133
Tell him _"I'm ready. Let's hit the road."_
Watch the dialogue |goto 75.28,35.51
Click Here to Continue |confirm  |q 29919
step
Watch the dialogue
Escort Chen and Li Li |q 29919/1 |goto 68.88,43.15 |notravel
|tip Make sure you stay close to them or the quest may fail.
step
talk Mudmug##56474
turnin Great Minds Drink Alike##29919 |goto 68.71,43.12
step
talk Chen Stormstout##56133
accept Leaders Among Breeders##29944 |goto 68.88,43.15
step
talk Li Li##56138
accept Yellow and Red Make Orange##29945 |goto 68.88,43.31
stickystart "Collect_Vials_of_Animal_Blood"
stickystart "Collect_Meadow_Marigold"
step
kill Jinanya the Clawblade##56513 |q 29944/2 |goto 66.64,38.87
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
step
kill Aiyu the Skillet##56520 |q 29944/1 |goto 69.11,37.13
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
step
kill Frenzyhop##56514 |q 29944/3 |goto 64.62,40.69
|tip He will appear on your minimap as a yellow dot.
step
label "Collect_Vials_of_Animal_Blood"
Kill enemies around this area
|tip Only Beast type enemies will drop this quest item.
collect 40 Vial of Animal Blood##76335+ |q 29945/2 |goto 66.94,38.49
You can find more around [70.19,48.15]
step
label "Collect_Meadow_Marigold"
click Meadow Marigold##209907+
|tip They look like large golden petals on the ground around this area.
collect 10 Meadow Marigold##76334 |q 29945/1 |goto 67.31,39.90
You can find more around [70.19,48.15]
step
talk Li Li##56138
turnin Yellow and Red Make Orange##29945 |goto 68.88,43.31
accept Crouching Carrot, Hidden Turnip##29947 |goto 68.88,43.31
step
talk Chen Stormstout##56133
turnin Leaders Among Breeders##29944 |goto 68.88,43.15
accept The Warren-Mother##29946 |goto 68.88,43.15
step
talk Mudmug##56474
accept Thieves to the Core##29948 |goto 68.71,43.12
stickystart "Trick_Virmen_With_Orange-Painted_Turnips"
stickystart "Collect_Stolen_Sacks_of_Hops"
step
Enter the tunnel |goto 69.07,39.83 < 7 |walk
kill Chufa##56537 |q 29946/1 |goto 67.90,37.43
|tip Inside the tunnel.
|tip He is elite, but Chen will come help you fight him.
step
label "Trick_Virmen_With_Orange-Painted_Turnips"
use Orange-Painted Turnip##76370
|tip Throw them near Twitchheel enemies inside the tunnel.
Trick #12# Virmen with Orange-Painted Turnips |q 29947/1 |goto 68.99,36.96
step
label "Collect_Stolen_Sacks_of_Hops"
click Stolen Sack of Hops##211696+
|tip They look like brown paper sacks full of vegetables around this area inside the tunnel.
collect 6 Stolen Sack of Hops##76337 |q 29948/1 |goto 68.99,36.96
step
talk Mudmug##56474
turnin Thieves to the Core##29948 |goto 68.71,43.12
step
talk Li Li##56138
turnin Crouching Carrot, Hidden Turnip##29947 |goto 68.88,43.31
step
talk Chen Stormstout##56133
turnin The Warren-Mother##29946 |goto 68.88,43.15
accept Legacy##29949 |goto 68.88,43.15
step
talk Li Li##56138
turnin Legacy##29949 |goto 68.77,43.43
accept Li Li's Day Off##29950 |goto 68.77,43.43
step
Bring Li Li to Huangtze Falls |q 29950/3 |goto 74.85,42.41
|tip If she's no longer with you summon her again using Li Li's Wishing-Stone.
step
Bring Li Li to New Cifera |q 29950/2 |goto 62.04,34.93
|tip If she's no longer with you summon her again using Li Li's Wishing-Stone.
step
talk Clever Ashyo##56113
turnin Clever Ashyo##29871 |goto 61.23,34.23
accept Ashyo's Vision##29577 |goto 61.23,34.23
step
talk Gladecaster Lang##58736
accept Watery Woes##30267 |goto 60.97,32.86
step
talk Yan##56773
accept Bottletoads##29757 |goto 60.61,33.70
step
kill Manglemaw##58754
|tip He walks around this area.
|tip After Manglemaw dies, his mother comes out.
kill Manglemaw's Mother##58755
collect 1 Enormous Crocolisk Tail##79238 |goto 57.42,26.41 |q 30275 |future
step
use Enormous Crocolisk Tail##79238
accept A Crocolisk Tale##30275
stickystart "Collect_Glade_Glimmer"
step
Kill Glade enemies around this area
collect 5 Spindly Bloodfeather##79198 |q 30267/2 |goto 57.34,34.29
step
label "Collect_Glade_Glimmer"
clicknpc Glade Glimmer##57301+
|tip They look like small bugs that fly around this area.
collect 18 Glade Glimmer##79197 |q 30267/1 |goto 57.34,34.29
step
talk Yan##56773
turnin A Crocolisk Tale##30275 |goto 60.61,33.70
step
talk Gladecaster Lang##58736
turnin Watery Woes##30267 |goto 60.97,32.86
step
talk Zhang Yue##56802
accept Snap Judgment##29600 |goto 59.82,27.94
step
talk Clever Ashyo##56113
Tell him _"Go ahead and speak with the water, Ashyo."_
Observe Ashyo's Vision |q 29577/1 |goto 59.25,27.56
step
talk Zhang Yue##56802
turnin Ashyo's Vision##29577 |goto 59.82,27.94
accept The Golden Dream##29581 |goto 59.82,27.94
stickystart "Slay_Razorback_Snappers"
stickystart "Scoop_Toad_Eggs"
step
kill Krosh##56833
collect Krosh's Back##83767 |goto 65.33,25.74 |q 29758 |future
step
use Krosh's Back##83767
accept Guess Whose Back##29758
step
click Dreamleaf Bush##209987
collect Sprig of Dreamleaf####76973 |q 29581/1 |goto 65.28,26.19
step
label "Slay_Razorback_Snappers"
kill 16 Razorback Snapper##56832 |q 29600/1 |goto 63.18,26.04
step
label "Scoop_Toad_Eggs"
click Gurgling Toadspawn##209950+
|tip They look like bubbling spots in the water around this area.
Scoop #8# Toad Eggs |q 29757/1 |goto 64.67,26.51
step
talk Zhang Yue##56802
turnin Snap Judgment##29600 |goto 59.82,27.94
step
talk Yan##56773
turnin The Golden Dream##29581 |goto 60.61,33.70
turnin Bottletoads##29757 |goto 60.61,33.70
turnin Guess Who's Back##29758 |goto 60.61,33.70
step
talk Innkeeper Lei Lan##59582
|tip She walks around inside the building.
home The Lazy Turnip |goto 55.24,50.67 |q 30117 |future
step
talk Wing Nga##60231
fpath Halfhill |goto 56.50,50.36
step
talk Stonecarver Mac##64315
accept Children of the Water##32045 |goto 55.14,47.37
step
talk Lolo Lio##59585
accept Got Silk?##32035 |goto 55.59,52.07
step
Bring Li Li to the Silkmasters |q 29950/1 |goto 62.29,59.01
|tip If she's no longer with you summon her again using Li Li's Wishing-Stone.
step
talk Silkmaster Tsai##57405
turnin Got Silk?##32035 |goto 62.67,59.75
accept Where Silk Comes From##30072 |goto 62.67,59.75
step
talk Journeyman Chu##57424
accept The Moth Rebellion##30059 |goto 63.55,58.45
step
click Mulberry Barrel##210080
collect Mulberry Leaves##77455 |q 30072/1 |goto 62.48,55.19
stickystart "Collect_Raw_Silks"
step
clicknpc Hungry Silkworm##57403+
|tip They look like little green insects underneath the building.
Feed #5# Hungry Silkworms |q 30072/2 |goto 62.43,56.56
step
label "Collect_Raw_Silks"
click Silk Cocoon Bucket##210088
|tip Inside the building.
collect Raw Silk##77456 |q 30072/3 |goto 62.37,62.49
step
talk Silkmaster Tsai##57405
turnin Where Silk Comes From##30072 |goto 62.67,59.75
stickystart "Slay_Tiny_Mutated_Silkmoths"
step
kill 6 Mutated Silkmoth##57422 |q 30059/1 |goto 64.30,60.14
You can find more around [67.43,55.89]
step
label "Slay_Tiny_Mutated_Silkmoths"
kill 8 Tiny Mutated Silkmoth##65984 |q 30059/2 |goto 64.30,60.14
You can find more around [67.43,55.89]
step
talk Journeyman Chu##57424
turnin The Moth Rebellion##30059 |goto 63.55,58.45
step
talk Master Goh##57407
accept Mothallus!##30058 |goto 63.63,58.53
step
click Mothallus Bait##210117
|tip When Mothallus flies up into the air, attack and break the cocoons so the Mothfighters can pull her back down.
kill Mothallus##57421 |q 30058/1 |goto 64.37,57.97
step
talk Master Goh##57407
turnin Mothallus!##30058 |goto 63.63,58.53
step
talk Li Li##56138
turnin Li Li's Day Off##29950 |goto 68.77,43.43
step
talk Mudmug##56474
accept Muddy Water##29951 |goto 68.71,43.12
step
talk Chen Stormstout##56133
accept Broken Dreams##29952 |goto 68.86,43.41
step
talk Chen Stormstout##56133
Ask him _"What happened, Chen?"_
Begin the Story |invehicle |goto 68.86,43.41 |q 29952
step
Follow Uncle Gao through Stormstout Brewery
Kill the enemies that attack
Listen to Chen's Story |q 29952/1
|tip Use the abilities on your action bar.
step
talk Chen Stormstout##56133
turnin Broken Dreams##29952 |goto 68.86,43.41
step
click Muddy Water##209921
|tip They look like green spots floating on top of the water around this area.
Start Gathering Mud |havebuff spell:106284 |goto 68.47,61.55 |q 29951
step
click Muddy Water##209921+
|tip They look like green spots floating on top of the water around this area.
|tip You will slowly lose mud as you move.
|tip When you find piles of Muddy Water there are usually multiple piles right near each other.
|tip Make sure to grab them all before trying to move to another.
Completely Fill the Mud Bar Vial |q 29951/1 |goto 72.66,55.38
step
talk Mudmug##56474
turnin Muddy Water##29951 |goto 68.71,43.12
step
talk Chen Stormstout##56133
accept Chen's Resolution##30046 |goto 68.86,43.41
step
talk Chen Stormstout##56133
turnin Chen's Resolution##30046 |goto 55.89,49.44
accept Hop Hunting##30053 |goto 55.89,49.44
accept Li Li and the Grain##30048 |goto 55.89,49.44
accept Doesn't Hold Water##30049 |goto 55.89,49.44
step
talk Mudmug##56474
turnin Doesn't Hold Water##30049 |goto 54.28,38.74
accept The Great Water Hunt##30051 |goto 54.28,38.74
stickystart "Gather_Gladewater"
step
talk Mudmug##56474 |goto 54.28,38.74
Tell him _"I'm ready to go, Mudmug."_
confirm |q 30051
step
kill Kracor##67128 |q 32045/1 |goto 56.04,33.85
|tip It will appear on your minimap as a yellow dot.
step
kill Thundergill##67125 |q 32045/2 |goto 54.93,25.45
|tip It swims around this area.
|tip It will appear on your minimap as a yellow dot.
step
kill Succula##67099 |q 32045/3 |goto 51.42,26.69
|tip She is stealthed at the edge of the water.
step
label "Gather_Gladewater"
While Mudmug is following you:
Run through Swirling Pools
|tip They look like dark blue pools on the water's surface around this area.
Gather #30# Gladewater |q 30051/1 |goto 55.01,32.29
step
_Next to you:_
talk Mudmug##58785
turnin The Great Water Hunt##30051
accept Barreling Along##30172
step
talk Gardener Fran##62377
Tell her _"I'm helping a friend brew some beer, and we need hops. Do you have any to spare?"_
Speak with Gardener Fran |q 30053/1 |goto Valley of the Four Winds 48.3,33.5
step
talk Gardener Fran##62377
accept Gardener Fran and the Watering Can##30050 |goto 48.31,33.48
step
talk Gardener Fran##62377
Tell her _"I'm ready to go!"_
Obtain Fran's Watering Can |havebuff spell:108123 |goto 48.31,33.48 |q 30050
step
use Water Plants
|tip It appears as a button on the screen.
|tip Follow the on-screen instructions to water the different gardens.
|tip They are laid out around the large central hill.
|tip The correct plants will be sparkling.
|tip You can do this while mounted.
Water #60# Vegetables |q 30050/1 |goto 49.64,29.76
step
talk Gardener Fran##62377
turnin Gardener Fran and the Watering Can##30050 |goto 48.31,33.48
step
talk Den Mudclaw##62385
Ask him _"Do you have any hops you can spare?"_
Speak with Den Mudclaw |q 30053/3 |goto 44.26,34.21
step
talk Den Mudclaw##62385
accept The Farmer's Daughter##30056 |goto 44.26,34.21
step
talk Mung-Mung##57401
accept Enough is Ookin' Enough##30054 |goto 44.16,34.23
stickystart "Collect_Virmen_Teeth"
step
Enter the tunnel |goto 43.55,35.27 < 7 |walk
talk Mina Mudclaw##57408
|tip Inside the tunnel.
turnin The Farmer's Daughter##30056 |goto 41.33,38.14
accept Seeing Orange##30057 |goto 41.33,38.14
step
label "Collect_Virmen_Teeth"
Kill Springtail enemies around this area
collect 100 Virmen Tooth##77379 |q 30054/1 |goto 42.76,37.78
step
talk Mung-Mung##57401
turnin Enough is Ookin' Enough##30054 |goto 44.16,34.23
step
talk Den Mudclaw##62385
turnin Seeing Orange##30057 |goto 44.26,34.21
step
talk Gai Lan##57385
Ask him _"Can I buy some hops from you?"_
Speak with Gai Lan |q 30053/2 |goto 38.58,51.72
step
Click the Complete Quest Box:
turnin Hop Hunting##30053
step
talk Gai Lan##57385
accept Weed War##30052 |goto 38.58,51.72
step
talk Gai Lan##57385
Ask him "What weeds?"
Click Weeds that spawn
|tip There will be smaller ones that you must walk over.
click Weed-B-Gone Gas Bomb##210057
|tip Gai Lan will throw these down on the ground every once in a while.
use Weed-B-Gone Gas Bomb
|tip It appears as a button on the screen after picking up a  Weed-B-Gone Gas Bomb.
Pull #100# Weeds |q 30052/1 |goto 38.58,51.72
step
talk Gai Lan##57385
turnin Weed War##30052 |goto 38.58,51.72
step
Click the Complete Accept Box:
accept Stormstout's Hops##30055
step
Lead Mudmug Back to Halfhill |q 30172/1 |goto 55.96,49.34
If he's no longer with you, talk to him at [54.28,38.74]
step
talk Chen Stormstout##56133
turnin Stormstout's Hops##30055 |goto 55.89,49.44
turnin Barreling Along##30172 |goto 55.89,49.44
step
talk Stonecarver Mac##64315
turnin Children of the Water##32045 |goto 55.14,47.37
step
talk Li Li##56138
turnin Li Li and the Grain##30048 |goto 52.69,62.83
accept Taste Test##30031 |goto 52.69,62.83
step
talk Grainer Pan##57209
accept Out of Sprite##30030 |goto 52.60,62.97
step
talk Grainlord Kai##57211
accept Wee Little Shenanigans##30029 |goto 52.73,62.99
stickystart "Slay_Tricky_Maizers"
step
click Light Grain##210024
Taste Light Grain |q 30031/2 |goto 53.70,63.30
step
click Fresh Grain##210022
Taste Fresh Grain |q 30031/4 |goto 53.56,64.57
step
click Aged Grain##210021
Taste Aged Grain |q 30031/1 |goto 51.22,60.83
step
click Malted Grain##210023
Taste Malted Grain |q 30031/3 |goto 50.72,61.94
step
kill Cornan##57213 |q 30030/1 |goto 51.54,64.34
|tip He runs around upstairs inside the building.
|tip He will appear on your minimap as a yellow dot.
step
label "Slay_Tricky_Maizers"
Kill Maizer enemies around this area
Slay #8# Tricky Maizers |q 30029/1 |goto 52.14,63.43
step
talk Li Li##56138
turnin Taste Test##30031 |goto 52.69,62.83
step
talk Grainer Pan##57209
turnin Out of Sprite##30030 |goto 52.60,62.97
step
talk Grainlord Kai##57211
turnin Wee Little Shenanigans##30029 |goto 52.73,62.99
accept The Quest for Better Barley##30032 |goto 52.73,62.99
accept Grain Recovery##30028 |goto 52.73,62.99
step
Click Stolen Sacks around this area
|tip They look like big white sacks with brown symbols on them on the ground around this area.
collect 8 Sack of Grain##77033 |q 30028/1 |goto 54.67,67.76
You can find more around [56.95,60.88]
step
click Rappeling Rope##210039
Use the Cliff Harness |q 30032/1 |goto 51.25,77.50
step
Enter the cave |goto 53.59,76.23 < 7 |walk
click Malted Cave Barley##210037
|tip Inside the cave.
collect Malted Cave Barley##77034 |q 30032/2 |goto 53.32,74.81
step
talk Li Li##56138
turnin The Quest for Better Barley##30032 |goto 52.69,62.83
accept The Chen Taste Test##30047 |goto 52.69,62.83
step
talk Grainlord Kai##57211
turnin Grain Recovery##30028 |goto 52.73,62.99
step
talk Chen Stormstout##56133
turnin The Chen Taste Test##30047 |goto 55.89,49.44
accept The Emperor##30073 |goto 55.89,49.44
step
Watch the dialogue
Help Chen brew his beer |q 30073/1 |goto 55.97,49.55
step
talk Chen Stormstout##56133
turnin The Emperor##30073 |goto 55.84,49.35
accept Knocking on the Door##30074 |goto 55.84,49.35
step
talk Chen Stormstout##56133
turnin Knocking on the Door##30074 |goto 32.25,68.56
step
Watch the dialogue
talk Mudmug##56474
accept The Fanciest Water##30076 |goto 32.25,68.28
step
talk Li Li##56138
accept Barrels, Man##30077 |goto 32.34,68.47
step
talk Chen Stormstout##56133
accept Clear the Way##30075 |goto 32.12,68.33
stickystart "Slay_Ale-Addled_Hozen_or_Mischievous_Virmen"
stickystart "Collect_Spritewater_Essences"
step
clicknpc Barreled Pandaren##57662+
|tip They look like small shaking wooden barrels on the ground around this area.
Free #7# Barreled Pandaren |q 30077/1 |goto 35.41,66.57
You can find more around [37.37,65.08]
step
label "Slay_Ale-Addled_Hozen_or_Mischievous_Virmen"
kill Mischievous Virmen##57671, Ale-Addled Hozen##57672
Slay #10# Ale-Addled Hozen or Mischievous Virmen |q 30075/1 |goto 35.41,66.57
step
label "Collect_Spritewater_Essences"
kill Curious Water Sprite##57673+
collect 3 Spritewater Essence##77471 |q 30076/1 |goto 37.03,68.75
You can find more around [37.37,65.08]
step
talk Li Li##56138
turnin Barrels, Man##30077 |goto 36.13,69.05
step
talk Mudmug##56474
turnin The Fanciest Water##30076 |goto 36.00,69.10
step
talk Chen Stormstout##56133
turnin Clear the Way##30075 |goto 36.04,68.98
accept Cleaning House##30078 |goto 36.04,68.98
step
talk Chen Stormstout##56133 |goto 36.04,68.98
Choose _<Crack your knuckles and nod your head.>_
Start the Brawl |goto Valley of the Four Winds/0 35.06,70.24 < 5 |or |noway |next "Cleaning_House_Mudmug" |q 30078
'|goto 32.20,71.43 < 5 |or |noway |next "Cleaning_House_Lili"
'|goto 38.22,67.66 < 5 |or |noway |next "Cleaning_House_Chen"
step
label "Cleaning_House_Mudmug"
kill Eddy##58014 |q 30078/1 |goto 33.84,70.73
|tip When Eddy activates his Watery Shield run over bubbles on the ground until it is weakened, then click the bubble to pop it.
'|condition completedq(30078) |or |next "Cleaning_House_Done"
'|goto 32.20,71.43 < 5 |or |noway |next "Cleaning_House_Lili" |q 30078
'|goto 38.22,67.66 < 5 |or |noway |next "Cleaning_House_Chen" |q 30078
'|goto 36.05,68.89 < 5 |or |noway |next "Cleaning_House_Done" |q 30078
step
label "Cleaning_House_Lili"
kill Jooga##58015 |q 30078/2 |goto 34.58,70.47
|tip You can keep Jooga pinned down by clicking the Empty Kegs around the room.
|tip Dodge the bananas that he throws at you.
'|condition completedq(30078) |or |next "Cleaning_House_Done"
'|goto 35.06,70.24 < 5 |or |noway |next "Cleaning_House_Mudmug" |q 30078
'|goto 38.22,67.66 < 5 |or |noway |next "Cleaning_House_Chen" |q 30078
'|goto 36.05,68.89 < 5 |or |noway |next "Cleaning_House_Done" |q 30078
step
label "Cleaning_House_Chen"
kill Fizzy Yellow Spirit##58253+
kill Fizzy Yellow Alemental##58017 |q 30078/3 |goto 38.75,69.55
|tip It spawns after killing all of the Fizzy Yellow Spirits.
'|condition completedq(30078) |or |next "Cleaning_House_Done"
'|goto 35.06,70.24 < 5 |or |noway |next "Cleaning_House_Mudmug" |q 30078
'|goto 32.20,71.43 < 5 |or |noway |next "Cleaning_House_Lili" |q 30078
'|goto 36.05,68.89 < 5 |or |noway |next "Cleaning_House_Done" |q 30078
step
label "Cleaning_House_Done"
talk Chen Stormstout##56133
turnin Cleaning House##30078 |goto 36.00,69.11
step
talk Emmi##61026
accept Stoneplow Thirsts##30117 |goto 36.19,68.29
step
talk "Dragonwing" Dan##58843
fpath Stoneplow |goto 20.30,58.67
step
talk Lin Tenderpaw##56111
turnin Lin Tenderpaw##29872 |goto 19.87,56.92
accept Stemming the Swarm##29981 |goto 19.87,56.92
step
talk Loon Mai##56720
turnin Stoneplow Thirsts##30117 |goto 19.55,56.87
accept Evacuation Orders##29982 |goto 19.55,56.87
step
talk Nan the Mason Mug##62878
|tip Inside the building.
home Stone Mug Tavern |goto 19.71,55.87 |q 29990 |future
stickystart "Slay_Ik'thik_Mantid"
step
talk Haiyun Greentill##57123
Tell him _"Loon Mai has issued evacuation orders."_
Evacuate the Greentil Family |q 29982/3 |goto 15.83,56.27
step
talk Mia Marlfur##57127
Tell her _"Loon Mai has issued evacuation orders."_
Evacuate the Marlfur Family |q 29982/4 |goto 15.48,54.91
step
talk Feng Spadepaw##57121
Tell him _"Yes, Commander Mai sent me, and I carry his evacuation orders."_
Evacuate the Spadepaw Family |q 29982/2 |goto 12.84,55.72
step
talk Wei Blacksoil##57120
Tell him _"Loon Mai has issued evacuation orders."_
kill Ik'thik Ambusher##57134
talk Wei Blacksoil##57120
Tell him _"Yes, they're right here. Let's go."_
Evacuate the Blacksoil Family |q 29982/1 |goto 7.15,54.83
step
label "Slay_Ik'thik_Mantid"
Kill Ik'thik enemies around this area
Slay #14# Ik'thik Mantid |q 29981/1 |goto 12.51,53.27
You can find more around [10.07,48.97]
step
talk Loon Mai##56720
turnin Stemming the Swarm##29981 |goto 19.55,56.87
turnin Evacuation Orders##29982	|goto 19.55,56.87
accept The Hidden Master##29983	|goto 19.55,56.87
step
talk Master Bruised Paw##56714
turnin The Hidden Master##29983 |goto 18.29,31.23
accept Unyielding Fists: Trial of Bamboo##29984 |goto 18.29,31.23
step
talk Master Bruised Paw##56714
Tell him _"I'm ready for the trial of bamboo."_
Begin the Trial |invehicle |goto 18.29,31.23 |q 29984
step
Strike #3# Stacks of Bamboo Reeds |q 29984/1
|tip Follow the on-screen instructions.
|tip Use the "Unyielding Fist" ability on your action bar when the Fist Bar icon is filled up.
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Bamboo##29984 |goto 18.29,31.23
step
talk Master Bruised Paw##56714
accept They Will Be Mist##29985 |goto 18.29,31.23
accept Fog Wards##29986 |goto 18.29,31.23
step
talk Lin Tenderpaw##56111
accept Tenderpaw By Name, Tender Paw By Reputation##29992 |goto 18.06,31.00
stickystart "Slay_Mist_Incarnations"
step
click Northern Fog Ward##209945
Light the Northern Fog Ward |q 29986/1 |goto 16.01,32.11
step
click Western Fog Ward##209946
Light the Western Fog Ward |q 29986/2 |goto 14.85,36.82
step
click Southern Fog Ward##209947
Light the Southern Fog Ward |q 29986/3 |goto 18.10,41.46
step
click Jademoon##209952+
|tip They look like small green clusters of circular leaves on the ground around this area.
collect 18 Jademoon Leaf##76499 |q 29992/1 |goto 17.02,36.70
step
label "Slay_Mist_Incarnations"
kill 12 Mist Incarnation##56740 |q 29985/1 |goto 17.02,36.70
step
talk Lin Tenderpaw##56111
turnin Tenderpaw By Name, Tender Paw By Reputation##29992 |goto 18.06,31.00
step
talk Master Bruised Paw##56714
turnin They Will Be Mist##29985 |goto 18.29,31.23
turnin Fog Wards##29986 |goto 18.29,31.23
accept Unyielding Fists: Trial of Wood##29987 |goto 18.29,31.23
step
talk Master Bruised Paw##56714
Tell him _"My fists are ready. Bring on the trial of wood."_
Begin the Trial |invehicle |goto 18.29,31.23 |q 29987
step
Strike #4# Stacks of Wooden Boards |q 29987/1
|tip Follow the on-screen instructions.
|tip Use the "Unyielding Fist" ability on your action bar when the Fist Bar icon is filled up.
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Wood##29987 |goto 18.29,31.23
accept A Taste For Eggs##29988 |goto 18.29,31.23
step
Enter the cave |goto 26.44,40.07 < 7 |walk
click Hornbill Strider Egg##209955
|tip Inside the cave.
collect Hornbill Strider Egg##76516 |q 29988/3 |goto 26.98,39.05
stickystart "Collect_Emperor_Tern_Eggs"
step
click Whitefisher Crane Egg##209954+
|tip They look like small white eggs next to plants near the water around this area.
|tip Nearby Whitefisher Cranes may attack you when you loot them.
collect 4 Whitefisher Crane Egg##76503 |q 29988/2 |goto 25.43,43.88
step
label "Collect_Emperor_Tern_Eggs"
click Emperor Tern Egg##209953+
|tip They look like small groups of purple eggs next to plants near the water around this area.
|tip Nearby groups of Emperor Terns may attack you when you loot them.
collect 10 Emperor Tern Egg##76501 |q 29988/1 |goto 25.43,43.88
step
talk Master Bruised Paw##56714
turnin A Taste For Eggs##29988 |goto 18.29,31.23
step
talk Master Bruised Paw##56714
accept Unyielding Fists: Trial of Stone##29989 |goto 18.29,31.23
step
talk Master Bruised Paw##56714
Tell him _"I've done all that you've asked of me. I'm ready for the trial of stone."_
Begin the Trial |invehicle |goto 18.29,31.23 |q 29989
step
Strike #5# Stacks of Stone Blocks |q 29989/1
|tip Follow the on-screen instructions.
|tip Use the "Unyielding Fist" ability on your action bar when the Fist Bar icon is filled up.
step
talk Master Bruised Paw##56714
turnin Unyielding Fists: Trial of Stone##29989 |goto 18.29,31.23
step
talk Lin Tenderpaw##56111
accept Training and Discipline##29990 |goto 18.06,31.00
step
_DO NOT_ turn in the quest _Training and Discipline_
|tip You will need it later to move on to the next zone.
talk Tani##63822
accept Tiger Mastery##30183 |goto 16.20,82.54
step
talk Hemet Nesingwary Jr.##58422
accept Mushan Mastery##30181 |goto 16.07,82.62
stickystart "Slay_Gorge_Stalkers"
step
kill 15 Dustback Mushan##58424 |q 30181/1 |goto 12.77,76.79
|tip Young Dustback Mushans also count for this quest objective.
You can find more around [14.13,69.77]
step
label "Slay_Gorge_Stalkers"
kill 15 Gorge Stalker##58432 |q 30183/1 |goto 12.77,76.79
You can find more around [14.13,69.77]
step
talk Tani##63822
turnin Tiger Mastery##30183 |goto 16.20,82.54
accept Fox Mastery##30182 |goto 16.20,82.54
step
talk Hemet Nesingwary Jr.##58422
turnin Mushan Mastery##30181 |goto 16.07,82.62
step
talk Hemet Nesingwary##58421
accept Mushan Mastery: Darkhide##30184 |goto 16.01,82.49
step
talk Matt "Lucky" Gotcher##58434
accept Stag Mastery##32038 |goto 15.89,82.25
stickystart "Slay_Wilderland_Stags"
stickystart "Slay_Sly_Foxes"
step
kill Darkhide##58435
|tip He is Elite but he is easy to kill.
collect Darkhide's Head###79058 |q 30184/1 |goto 26.09,75.50
step
label "Slay_Wilderland_Stags"
kill 10 Wilderland Stag##58489 |q 32038/1 |goto 22.65,81.00
You can find more around [24.16,69.45]
step
label "Slay_Sly_Foxes"
Kill Sly enemies around this area
|tip They are usually stealthed.
Slay #15# Sly Foxes |q 30182/1 |goto 22.65,81.00
You can find more around [24.16,69.45]
step
talk Hemet Nesingwary##58421
turnin Mushan Mastery: Darkhide##30184 |goto 16.01,82.49
step
talk Matt "Lucky" Gotcher##58434
turnin Stag Mastery##32038 |goto 15.89,82.25
step
talk Tani##63822
turnin Fox Mastery##30182 |goto 16.20,82.54
step
talk Hemet Nesingwary Jr.##58422
accept Tortoise Mastery##30185 |goto 16.07,82.62
step
kill Bulgeback Tortoise##58431
|tip They will hide in their shells if you use stealth.
collect 5 Intact Tortoise Shell##79059 |q 30185/1 |goto 19.39,76.91
You can find more around [20.85,71.66]
step
talk Hemet Nesingwary Jr.##58422
turnin Tortoise Mastery##30185 |goto 19.91,75.66
accept Parental Mastery##30186 |goto 19.91,75.66
step
Enter the underwater cave |goto 21.20,74.36 < 5 |walk
clicknpc Hemet Nesingwary Jr.##58461
|tip Inside the underwater cave.
Choose _<Try shaking Hemet.>_
kill Torjar's Bane##58439
Rescue Hemet Nesingwary Jr. |q 30186/1 |goto 24.54,74.64
step
talk Hemet Nesingwary##58421
turnin Parental Mastery##30186 |goto 16.01,82.49
step
talk Loon Mai##56720
turnin Training and Discipline##29990 |goto 19.55,56.87
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
talk "Dragonwing" Dan##58843 |goto Valley of the Four Winds 20.31,58.68
Tell him _"I need to meet up with Ken-Ken, the hozen."_
Fly to Zhu's Watch |goto Krasarang Wilds 76.43,7.62 < 5 |noway |q 29873
step
talk Gee Hung##60232
fpath Zhu's Watch |goto 76.77,8.27
step
talk Ken-Ken##56115
turnin Ken-Ken##29873 |goto 76.24,6.95
accept What's Eating Zhu's Bastion?##30079 |goto 76.24,6.95
step
talk Mei Barrelbottom##57744
Speak with Mei |q 30079/4 |goto 75.87,7.50
step
talk Mei Barrelbottom##57744
accept Finding Yi-Mo##30080 |goto 75.87,7.50
step
talk Rude Sho##62879
|tip Inside the building.
home Wilds' Edge Inn |goto 75.76,7.11 |q 30179 |future
step
talk Despondent Warden of Zhu##57457
Speak with a Despondent Warden of Zhu |q 30079/1 |goto 76.53,8.06
step
talk Yun##57825
|tip Inside the building.
Speak with Yun |q 30079/3 |goto 75.50,9.28
step
talk Sunni##57830
|tip She walks around inside the building.
Speak with Sunni |q 30079/2 |goto 77.49,8.43
step
talk Ken-Ken##56115
turnin What's Eating Zhu's Bastion?##30079 |goto 76.24,6.95
step
talk Yi-Mo Longbrow##57310
Find Yi-Mo |q 30080/1 |goto 81.33,6.73
step
talk Yi-Mo Longbrow##57310
turnin Finding Yi-Mo##30080 |goto 81.33,6.73
accept Cheer Up, Yi-Mo##30082 |goto 81.33,6.73
step
talk Yi-Mo Longbrow##57310 |goto 81.33,6.73
Tell him _"Please, Yi-Mo: your aunt's worried sick about you."_
Then _"I don't have time for this. Move your ass or I'll move it for you."_
confirm |q 30082
step
clicknpc Yi-Mo Longbrow##57310
|tip Click him to kick him back to Zhu's Watch.
kill Thunderbird##58111+
|tip You won't be able to move him if you're in combat.
Bring Yi-Mo to Zhu's Watch |q 30082/1 |goto 76.77,7.75
step
talk Mei Barrelbottom##57744
turnin Cheer Up, Yi-Mo##30082 |goto 75.87,7.50
accept Tears of Pandaria##30091 |goto 75.87,7.50
step
talk Ken-Ken##56115
accept Materia Medica##30081 |goto 76.24,6.95
stickystart "Collect_Salty_Cores"
stickystart "Collect_Slick_Mudfish"
stickystart "Collect_Chunks_of_Honeycombs"
step
kill 12 Weeping Horror##57649 |q 30091/1 |goto 75.40,10.76
You can find more around [71.88,10.76]
step
label "Collect_Salty_Cores"
kill Weeping Horror##57649+
collect 4 Salty Core##78880 |q 30081/1 |goto 75.40,10.76
You can find more around [71.88,10.76]
step
label "Collect_Slick_Mudfish"
click Slick Murdfish##210186+
|tip They look like small green and blue fish laying on the ground around this area.
collect 4 Slick Mudfish##78877 |q 30081/2 |goto 75.40,10.76
You can find more around [71.88,10.76]
step
label "Collect_Chunks_of_Honeycombs"
click Rain-Slick Honeycomb##210188+
|tip They look like golden honeycombs on the sides of trees around this area.
collect 4 Chunk of Honeycomb##78881 |q 30081/3 |goto 75.26,11.75
You can find more around [73.08,9.41]
step
talk Mei Barrelbottom##57744
turnin Tears of Pandaria##30091 |goto 75.87,7.50
accept Securing the Province##30083 |goto 75.87,7.50
accept Borderlands##30084 |goto 75.87,7.50
step
talk Ken-Ken##56115
turnin Materia Medica##30081 |goto 76.24,6.95
accept Why So Serious?##30088 |goto 76.24,6.95
stickystart "Slay_Wildscale_Saurok"
step
Enter the cave |goto Valley of the Four Winds/0 77.25,57.37 < 7 |walk
click Jar of Pigment##210228
|tip Inside the cave.
collect Jar of Pigment##78942 |q 30088/2 |goto 73.88,56.41
step
label "Slay_Wildscale_Saurok"
Kill Wildscale enemies around this area
|tip Inside the cave.
Slay #10# Wildscale Saurok |q 30083/1 |goto 75.45,56.63
You can find more around [Krasarang Wilds/0 70.72,9.47]
stickystart "Collect_Huge_Panther_Fangs"
step
use Flame of Zhu's Bastion##78928
Light the Memorial Flame of Rin |q 30084/3 |goto Krasarang Wilds/0 71.26,17.31
step
use Flame of Zhu's Bastion##78928
Light the Memorial Flame of Zhu |q 30084/1 |goto 72.66,18.11
step
use Flame of Zhu's Bastion##78928
Light the Memorial Flame of Po |q 30084/2 |goto 73.86,16.76
step
label "Collect_Huge_Panther_Fangs"
kill Krasari Stalker##58221+
collect 18 Huge Panther Fang##78941 |q 30088/1 |goto 72.21,16.85
step
talk Ken-Ken##56115
turnin Why So Serious?##30088 |goto 76.24,6.95
accept Apply Directly to the Forehead##30089 |goto 76.24,6.95
step
clicknpc Despondent Warden of Zhu##57457+
use Ken-Ken's Mask##79021
|tip Use it on Despondent Wardens of Zhu around this area.
kill Manifestation of Despair##58312+
Cure #8# Despondent Wardens of Zhu |q 30089/1 |goto 76.3,8.9
step
talk Ken-Ken##56115
turnin Apply Directly to the Forehead##30089 |goto 76.24,6.95
accept Zhu's Despair##30090 |goto 76.24,6.95
step
kill 8 Essence of Despair##58409 |q 30090/1 |goto 76.90,8.75
step
clicknpc Yi-Mo Longbrow##58410
use Ken-Ken's Mask##79057
|tip Use it on Yi-Mo Longbrow.
kill Quintessence of Despair##58360
Cure Yi-Mo |q 30090/2 |goto 76.52,8.67
step
talk Ken-Ken##56115
turnin Zhu's Despair##30090 |goto 76.24,6.95
step
talk Mei Barrelbottom##57744
turnin Securing the Province##30083 |goto 75.87,7.50
turnin Borderlands##30084 |goto 75.87,7.50
accept Into the Wilds##30133 |goto 75.87,7.50
step
talk Chezin Dawnchaser##58160
accept Poisoned!##30179 |goto 68.83,22.15
step
Kill Krasari enemies around this area
collect 5 Mogu Poisoned Blade##79252 |q 30179/1 |goto 67.80,22.63
step
talk Daggle Bombstrider##58779
accept Crane Mastery##30352 |goto 67.66,25.65
accept Profit Mastery##30353 |goto 67.66,25.65
step
clicknpc Zhu's Watch Courier##59151
Choose _Take the supplies._
Find the Zhu's Watch Courier |q 30133/1 |goto 62.58,25.38
stickystart "Slay_Carp_Hunters"
step
kill Krasari Huntress##59116+
|tip They are usually stealthed.
collect 12 Vial of Tiger Blood##+|q 30353/1 |goto 64.15,29.51
You can find more around [62.46,33.00]
step
label "Slay_Carp_Hunters"
kill 12 Carp Hunter##58116 |q 30352/1 |goto 64.15,29.51
You can find more around [62.46,33.00]
step
talk Daggle Bombstrider##58779
turnin Crane Mastery##30352 |goto 67.66,25.65
accept Crane Mastery: Needlebeak##31262 |goto 67.66,25.65
turnin Profit Mastery##30353 |goto 67.66,25.65
accept Profit Mastery: Chasheen##31260 |goto 67.66,25.65
step
kill Chasheen##63767
|tip It walks around this area.
|tip It will appear on your minimap as a yellow dot.
collect Ancient Tiger's Blood##85774 |q 31260/1 |goto 61.84,32.07
step
kill Needlebeak##63796
|tip It walks around this area.
|tip It will appear on your minimap as a yellow dot.
collect The Needlebeak##85854 |q 31262/1 |goto 62.99,20.15
step
talk Daggle Bombstrider##58779
turnin Crane Mastery: Needlebeak##31262 |goto 67.66,25.65
turnin Profit Mastery: Chasheen##31260 |goto 67.66,25.65
step
talk Kang Bramblestaff##56112
turnin Kang Bramblestaff##29875 |goto 60.12,24.92
step
talk Sunwalker Dezco##58113
turnin Poisoned!##30179 |goto 59.92,24.62
step
talk Kor Bloodtusk##58114
accept Blind Them!##30124 |goto 59.91,24.73
step
talk Kang Bramblestaff##56112
accept Skitterer Stew##30123 |goto 60.12,24.92
step
talk Lira Skysplitter##59046
fpath Thunder Cleft |goto 59.23,24.60
step
talk Malaya Dawnchaser##58184
|tip Inside the building.
home Thunder Cleft |goto 60.94,24.83 |q 30628 |future
step
kill Jungle Skitterer##58067+
collect 5 Intact Skitterer Gland##78911 |q 30123/1 |goto 62.20,22.19
You can find more around [63.03,29.79]
step
kill Darnassian Outrider##58857 |q 30124/1 |goto 61.80,30.48
|tip It walks around this area.
|tip It will appear on your minimap as a yellow dot.
step
talk Kang Bramblestaff##56112
turnin Skitterer Stew##30123 |goto 60.12,24.92
step
talk Kor Bloodtusk##58114
turnin Blind Them!##30124 |goto 59.91,24.73
accept Threat from Dojan##30127 |goto 59.91,24.73
step
talk Sunwalker Dezco##58113
accept Herbal Remedies##30130 |goto 59.92,24.62
step
talk Kang Bramblestaff##56112
accept The Mogu Agenda##30129 |goto 60.12,24.92
step
kill Dojani Dominator##58165
collect Dojani Orders##78917 |q 30129/1 |goto 55.54,34.42
step
_Next to you:_
talk Kang Bramblestaff##58206
turnin The Mogu Agenda##30129
accept The Pools of Youth##30128
stickystart "Slay_Dojani_Enforcers"
stickystart "Slay_Dojani_Reclaimers"
stickystart "Slay_Dojani_Surveyors"
stickystart "Collect_Imperial_Lotus_Leaves"
step
talk Na Lek##55597
Choose _Attempt to free Na'Lek from his prison._
kill Sleeping Guardian##58419w
click Water of Youth##210229
|tip They look like dark blue spots in the water.
collect The Water of Youth##78934 |q 30128/1 |goto 51.95,32.66
step
label "Slay_Dojani_Enforcers"
kill 4 Dojani Enforcer##65626 |q 30127/3 |goto 55.23,38.67
step
label "Slay_Dojani_Reclaimers"
kill 6 Dojani Reclaimer##58117 |q 30127/1 |goto 55.23,38.67
step
label "Slay_Dojani_Surveyors"
kill 8 Dojani Surveyor##58068 |q 30127/2 |goto 55.23,38.67
step
label "Collect_Imperial_Lotus_Leaves"
click Imperial Lotus##210209+
|tip They look like golden flowers on the ground around this area.
collect 20 Imperial Lotus Leaves##78918 |q 30130/1 |goto 55.4,39.0
step
talk Kor Bloodtusk##58114
turnin Threat from Dojan##30127 |goto 59.91,24.73
step
talk Sunwalker Dezco##58113
turnin Herbal Remedies##30130 |goto 59.92,24.62
turnin The Pools of Youth##30128 |goto 59.92,24.62
accept Life##30131 |goto 59.92,24.62
step
talk Sunwalker Dezco##58113
Tell him _"Go, stand by your wife's side. I will protect the tent from invaders."_
Stand by Dezco's Side |q 30131/1 |goto 59.92,24.62
step
talk Sunwalker Dezco##58113
|tip Inside the building.
turnin Life##30131 |goto 60.45,25.50
accept Going West##30132 |goto 60.45,25.50
step
talk Koro Mistwalker##58547
turnin Into the Wilds##30133 |goto 44.24,42.84
accept Unsafe Passage##30269 |goto 44.24,42.84
step
clicknpc Sunwalker Scout##59136
collect Sunwalker Scout's Report##79745 |q 30132/1 |goto 43.83,42.73
step
talk Koro Mistwalker##58547
Tell him _"I'm ready, Koro."_
Begin Escorting the Refugees |havebuff spell:113066 |goto 44.24,42.84 |q 30269
step
Watch the dialogue
|tip Follow Koro and protect him as he walks.
Kill the enemies that attack in waves
|tip Click Koro when he says he's pinned down to help him back up.
Accompany Koro to Crane Wing Refuge |q 30269/1 |goto 43.88,36.85
step
talk Koro Mistwalker##59138
turnin Unsafe Passage##30269 |goto 40.63,33.62
accept Blinding the Riverblades##30270 |goto 40.63,33.62
accept Tread Lightly##30694 |goto 40.63,33.62
step
talk Anduin Wrynn##58609
accept The Murksweats##30268 |goto 40.52,34.58
stickystart "Slay_Riverblade_Pathstalkers"
step
click Riverblade Spike Traps
|tip They look like spiked metal balls on the ground around this area.
|tip Don't get too close to them, they explode.
Poke #10# Traps |q 30694/1 |goto 45.15,36.56
You can find more around [41.21,41.49]
step
label "Slay_Riverblade_Pathstalkers"
kill 8 Riverblade Pathstalker##58858 |q 30270/1 |goto 45.15,36.56
You can find more around [41.21,41.49]
step
kill Murkscale Striker##58631+
|tip Underwater around this area.
collect 6 Murkscale Head##79199 |q 30268/1 |goto 39.93,36.98
step
talk Anduin Wrynn##58609
turnin The Murksweats##30268 |goto 40.52,34.58
step
talk Koro Mistwalker##59138
turnin Blinding the Riverblades##30270 |goto 40.63,33.62
turnin Tread Lightly##30694 |goto 40.63,33.62
accept Ahead on the Way##30695 |goto 40.63,33.62
accept Striking the Rain##30272 |goto 40.63,33.62
step
Watch the dialogue
talk Anduin Wrynn##59189
accept Sha Can Awe##30271 |goto 40.67,33.67
stickystart "Inspire_Hopeless_Crane_Wing_Defenders"
stickystart "Slay_Sha_Manifestations"
step
kill Maw of Despair##59315
Cleanse the West Pagoda |q 30695/1 |goto 37.86,54.27
step
kill Maw of Despair##59237
Cleanse the East Pagoda |q 30695/2 |goto 43.10,54.26
step
label "Inspire_Hopeless_Crane_Wing_Defenders"
Kill Despair enemies around this area
|tip Kill them near Hopeless Crane Wind Defenders.
|tip They look like friendly Pandaren kneeling or slowing walking around this area.
Inspire #10# Hopeless Crane Wing Defenders |q 30271/1 |goto 40.5,47.1
step
label "Slay_Sha_Manifestations"
Kill Despair enemies around this area
Slay #18# Sha Manifestations |q 30272/1 |goto 40.5,47.1
step
_Next to you:_
talk Anduin Wrynn##59608
turnin Ahead on the Way##30695
turnin Striking the Rain##30272
turnin Sha Can Awe##30271
accept In the House of the Red Crane##30273
step
Enter the building |goto 40.45,52.06 < 10 |walk
Run down the stairs |goto 40.47,55.90 < 7 |walk
talk Chi-Ji##59653
|tip Downstairs inside the building.
Choose _<Reach out to touch Chi-Ji.>_
kill Sha of Despair##59651 |q 30273/1 |goto 40.47,54.44
|tip The adds he spawns will heal you if you're close enough to them when they die.
step
talk Chi-Ji##59719
turnin In the House of the Red Crane##30273 |goto 40.46,49.18
step
talk Munch Windhoof##59047
fpath Dawnchaser Retreat |goto 29.04,50.27
step
talk Kor Bloodtusk##58114
turnin Going West##30132 |goto 28.73,50.85
accept For the Tribe##30163 |goto 28.73,50.85
accept The Greater Danger##30229 |goto 28.73,50.85
step
talk Kang Bramblestaff##56112
accept Re-Reclaim##30230 |goto 28.88,50.54
step
talk Nan-Po##60441
fpath Marista |goto 52.51,76.61
step
talk Jay Cloudfall##60173
accept Sudden, Unexpected Crocolisk Aggression##30666 |goto 51.56,76.85
step
talk Tony Tuna##60182
accept Particular Plumage##30667 |goto 51.69,75.30
stickystart "Collect_Emerald_Tailfeathers"
stickystart "Collect_Dusky_Tailfeathers"
stickystart "Slay_Mortbreath_Crocolisks"
step
kill Crimson Lory##60198+
collect 6 Crimson Tailfeather##80678 |q 30667/2 |goto 45.09,68.58
step
label "Collect_Emerald_Tailfeathers"
kill Emerald Lory##60200+
collect 6 Emerald Tailfeather##80677 |q 30667/1 |goto 45.09,68.58
step
label "Collect_Dusky_Tailfeathers"
kill Dusky Lory##60196+
collect 6 Dusky Tailfeather##80679 |q 30667/3 |goto 45.09,68.58
step
label "Slay_Mortbreath_Crocolisks"
Kill Mortbreath enemies around this area
Slay #8# Mortbreath Crocolisks |q 30666/1 |goto 45.09,68.58
step
talk Tony Tuna##60182
turnin Particular Plumage##30667 |goto 51.69,75.30
step
talk Jay Cloudfall##60173
turnin Sudden, Unexpected Crocolisk Aggression##30666 |goto 51.56,76.85
accept Build Your Own Raft##30668 |goto 51.56,76.85
stickystart "Collect_Spare_Planks"
step
click Tough Kelp##211382
collect Tough Kelp##80804 |q 30668/2 |goto 52.29,77.90
step
label "Collect_Spare_Planks"
click Spare Plank##211379
collect 4 Spare Plank##80685 |q 30668/1 |goto 52.44,76.15
step
talk Jay Cloudfall##60173
turnin Build Your Own Raft##30668 |goto 51.56,76.85
accept The Lorewalker on the Lake##30669 |goto 51.56,76.85
step
click Your Raft##211392
Pick Up Your Raft |q 30669/1 |goto 51.70,76.57
step
talk Wise Ana Wu##60139
turnin The Lorewalker on the Lake##30669 |goto 46.02,78.92
accept Wisdom Has A Price##30671 |goto 46.02,78.92
accept Misery##30691 |goto 46.02,78.92
stickystart "Collect_Shark_Fillets"
step
Enter the underwater cave |goto 46.06,79.54 < 7 |walk
kill Nahassa##60203+
|tip Inside the underwater cave.
Put Nahassa Out of His Misery |q 30691/1 |goto 46.24,83.46
step
Click the Complete Quest Box:
turnin Misery##30691
step
label "Collect_Shark_Fillets"
Kill Shark enemies around this area
collect 5 Shark Fillet##80810 |q 30671/1 |goto 46.80,79.62
step
talk Wise Ana Wu##60139
turnin Wisdom Has A Price##30671 |goto 46.02,78.92
accept Balance##30672 |goto 46.02,78.92
step
Click the Accept Quest Box:
accept Balance Without Violence##30674 |goto 45.15,84.95
step
kill Unga Fish-Getter##60299+
accept Buried Hozen Treasure##30675 |goto 45.15,84.95
|tip You will eventually automatically accept this quest after looting.
stickystart "Collect_Buried_Hozen_Treasures"
stickystart "Slay_Unga_Fish-Getters"
step
clicknpc Flailing Carp##60367+
|tip They look like wiggling green fish on the beach around this area.
Throw #6# Flailing Carp Back Into the Water |q 30674/1 |goto 46.14,86.77
step
Click the Complete Quest Box:
turnin Balance Without Violence##30674
step
label "Collect_Buried_Hozen_Treasures"
click Lump of Sand##211420+
|tip They look like mounds of dirt on the beach around this area.
collect Buried Hozen Treasure##80817 |q 30675/1 |goto 48.22,87.01
step
Click the Complete Quest Box:
turnin Buried Hozen Treasure##30675
step
label "Slay_Unga_Fish-Getters"
kill 10 Unga Fish-Getter##60299 |q 30672/1 |goto 44.79,85.06
You can find more around [49.49,84.49]
step
talk Jay Cloudfall##60173
turnin Balance##30672 |goto 51.56,76.85
step
talk Tired Shushen##58278
accept Thieving Raiders##30168 |goto 29.71,39.00
accept Raid Leader Slovan##30169 |goto 29.71,39.00
stickystart "Collect_Pillaged_Jinyu_Loot"
step
kill Slovan##58285 |q 30169/1 |goto 31.84,28.92
|tip Inside the slight overhanging cave.
step
label "Collect_Pillaged_Jinyu_Loot"
kill Riverblade Flesh-hunter##58274+
collect 5 Pillaged Jinyu Loot##78958 |q 30168/1 |goto 32.50,29.10
You can find more around [34.60,28.05]
step
talk Tired Shushen##58278
turnin Thieving Raiders##30168 |goto 29.71,39.00
turnin Raid Leader Slovan##30169 |goto 29.71,39.00
stickystart "Slay_Korjan_Reclaimers"
stickystart "Collect_Mogu_Artifacts"
step
clicknpc Dawnchaser Captive##58608+
|tip They look like friendly Tauren NPC's mining with pickaxes around this area.
Rescue #8# Captives |q 30163/1 |goto 24.83,39.34
You can find more around [25.12,45.46]
step
label "Slay_Korjan_Reclaimers"
kill 8 Korjan Reclaimer##58614 |q 30229/1 |goto 24.83,39.34
You can find more around [25.12,45.46]
step
label "Collect_Mogu_Artifacts"
click Mogu Artifact##212765+
|tip They look like large brown maces and artifacts on the ground around this area.
collect 10 Mogu Artifact##79120 |q 30230/1 |goto 24.83,39.34
You can find more around [23.15,44.53]
step
talk Kang Bramblestaff##56112
turnin Re-Reclaim##30230 |goto 28.88,50.54
step
talk Kor Bloodtusk##58114
turnin For the Tribe##30163 |goto 28.73,50.85
turnin The Greater Danger##30229 |goto 28.73,50.85
step
talk Ambassador Han##58630
accept The Mantid##30175 |goto 29.10,51.10
step
talk Sunwalker Dezco##58607
accept The Stoneplow Convoy##30164 |goto 16.01,39.73
stickystart "Slay_Ik'thallik_Mantid"
step
clicknpc Stoneplow Envoy##58955+
|tip They look like sleeping Pandaren on the ground around this area.
Save #7# Stoneplow Envoy |q 30164/1 |goto 15.47,35.43
You can find more around [16.94,42.67]
step
label "Slay_Ik'thallik_Mantid"
Kill Ik'thallik enemies around this area
Slay #10# Ik'thallik Mantid |q 30175/1 |goto 13.91,38.19
step
talk Ambassador Len##58954
turnin The Mantid##30175 |goto 15.73,39.66
step
talk Sunwalker Dezco##58607
turnin The Stoneplow Convoy##30164 |goto 16.01,39.73
accept For Family##30174 |goto 16.01,39.73
step
talk Kor Bloodtusk##58670
Choose _<Try to free Kor Bloodtusk from his bonds.>_
kill Groundbreaker Brojai##58224 |q 30174/1 |goto 23.68,48.79
step
talk Sunwalker Dezco##58607
turnin For Family##30174 |goto 28.94,50.83
accept Warn Stoneplow##30241 |goto 28.94,50.83
step
talk Loon Mai##56720
turnin Warn Stoneplow##30241 |goto Valley of the Four Winds/0 19.55,56.87
step
talk Mudmug##56474
accept It Does You No Good In The Keg##30653 |goto 18.08,55.68
step
talk Loon Mai##56720
accept The Swarm Begins##30622 |goto 17.85,56.23
step
talk Mei Barrelbottom##59855
accept The Mantidote##30623 |goto 17.96,56.45
stickystart "Slay_Ik'thallik_Infestors_or_Warriors"
stickystart "Use_Ken-Kens_Mask_on_Ik'thik_Wing_Commanders"
step
Deliver Beer to Zhu's Wardens |q 30653/1 |goto 17.45,50.27
step
Deliver Beer to Crane Wing Priests |q 30653/2 |goto 15.14,55.43
step
Deliver Beer to Tauren Settlers |q 30653/4 |goto 12.99,55.98
step
Deliver Beer to Shado-Pan |q 30653/3 |goto 10.63,55.58
step
Click the Complete Quest Box:
turnin It Does You No Good In The Keg##30653
step
label "Slay_Ik'thallik_Infestors_or_Warriors"
Kill Ik'thallik enemies around this area
Slay #15# Ik'thallik Infestors or Warriors |q 30622/1 |goto 13.21,53.87
step
label "Use_Ken-Kens_Mask_on_Ik'thik_Wing_Commanders"
use Ken-Ken's Mask##80337
|tip Use it on Ik'thik Wing Commanders around this area.
kill Manifestation of Fear##59874+
Use Ken-Ken's Mask on #5# Ik'thik Wing Commanders |q 30623/1 |goto 13.21,53.87
step
Click the Complete Quest Box:
turnin The Mantidote##30623
step
talk Guard Captain Oakenshield##57198
turnin The Swarm Begins##30622 |goto 11.60,49.52
accept Students No More##30625 |goto 11.60,49.52
stickystart "Slay_Ik'thallik_Fearmonger"
stickystart "Slay_Ik'thallik_Bloodrager"
stickystart "Slay_Ik'thallik_Incubator"
step
Find the Martial Arts Students:
|tip They are a group of five friendly NPC's that fight enemies around this area.
|tip They must be with you in order to kill the enemies for this quest.
|tip Follow them around and assist them until you've killed all four quest enemies.
kill Ik'thallik Tendon-Slicer##59888 |q 30625/3 |goto 9.50,54.05
step
label "Slay_Ik'thallik_Fearmonger"
Find the Martial Arts Students:
|tip Follow them around and assist them until you've killed all four quest enemies.
kill Ik'thallik Fearmonger##59889 |q 30625/4 |goto 9.55,58.20
step
label "Slay_Ik'thallik_Bloodrager"
Find the Martial Arts Students:
|tip Follow them around and assist them until you've killed all four quest enemies.
kill Ik'thallik Bloodrager##59887 |q 30625/1 |goto 8.90,54.10
step
label "Slay_Ik'thallik_Incubator"
Find the Martial Arts Students:
|tip Follow them around and assist them until you've killed all four quest enemies.
kill Ik'thik Incubator##59890 |q 30625/2 |goto 8.92,51.03
step
talk Guard Captain Oakenshield##57198
turnin Students No More##30625 |goto 11.60,49.52
accept Retreat!##30626 |goto 11.60,49.52
step
talk Loon Mai##56720
turnin Retreat!##30626 |goto 17.85,56.23
step
talk Master Bruised Paw##59856
accept The Savior of Stoneplow##30627 |goto 17.91,55.74
step
talk Miss Fanny##59857
Tell her _"Let's go, Miss Fanny."_
Mount Miss Fanny |invehicle |goto 17.97,56.66 |q 30627
step
kill Mantid Colossus##56703 |q 30627/1
|tip Use the "Unyielding Fist" ability on your action bar when the icon on your screen flashes orange.
step
talk Loon Mai##56720
turnin The Savior of Stoneplow##30627 |goto 17.85,56.23
accept The Gratitude of Stoneplow##30628 |goto 17.85,56.23
step
click The Commander's Cache##211316
|tip Upstairs inside the building.
turnin The Gratitude of Stoneplow##30628 |goto 19.84,55.93
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
talk Messenger Grummle##63778
|tip He walks around this area.
accept The Road to Kun-Lai##31255 |goto Valley of the Four Winds/0 18.39,57.08
step
talk Highroad Grummle##62738
Speak with the Highroad Grummle |q 31255/1 |goto 70.05,23.46
step
talk Shin the Weightless##61759
fpath Tavern in the Mists |goto The Veiled Stair/0 56.72,75.75
step
talk Len the Whisperer##63484
accept Robbing Robbers of Robbers##31286 |goto 53.51,65.76
accept Educating Saurok##31287 |goto 53.51,65.76
stickystart "Collect_Black_Market_Merchandise"
step
Enter the cave |goto 55.08,55.20 < 7 |walk
Follow the path |goto 51.16,49.69 < 10 |only if walking
Follow the path up |goto 45.04,47.80 < 10 |only if walking
Continue following the path |goto 48.21,43.01 < 10 |only if walking
kill Leechfingers##63494 |q 31287/1 |goto 51.12,43.40
|tip Inside the cave.
step
label "Collect_Black_Market_Merchandise"
Click objects inside the cave around this area
|tip They look like various stone objects on the ground inside the cave.
collect 7 Black Market Merchandise##85891 |q 31286/1 |goto 49.56,47.16
step
talk Len the Whisperer##63484
turnin Robbing Robbers of Robbers##31286 |goto 53.51,65.76
turnin Educating Saurok##31287 |goto 53.51,65.76
step
talk Brewmaster Boof##63367
Speak with Brewmaster Boof |q 31255/2 |goto 51.91,43.73
step
talk Brewmaster Boof##63367
accept The Spring Drifter##31285 |goto 51.91,43.73
step
clicknpc The Spring Drifter##63517
Get in the Boat |invehicle |goto 52.07,43.20 |q 31285
step
Watch the dialogue
Survive a Ride on the Spring Drifter |q 31285/1 |goto Kun-Lai Summit/0 72.65,93.13 |notravel
step
talk Brewmaster Boof##63367
turnin The Spring Drifter##31285 |goto 72.66,93.02
step
talk Jo the Wind Watcher##61474
fpath Binan Village |goto 72.54,94.17
step
talk Mayor Bramblestaff##59073
turnin The Road to Kun-Lai##31255 |goto 72.27,91.86
accept Call Out Their Leader##30457 |goto 72.27,91.86
step
talk Puli the Even Handed##62871
|tip Inside the building.
home Binan Brew & Stew |goto 72.67,92.34 |q 30515 |future
step
talk Apothecary Cheng##59077
accept Hit Medicine##30460 |goto 71.57,92.84
step
talk Commander Hsieh##59076
accept All of the Arrows##30459 |goto 70.75,90.36
stickystart "Collect_Arrows_of_Commander_Hsieh"
stickystart "Heal_Injured_Binan_Warriors"
step
Kill Bataari enemies around this area
Slay #10# Bataari Tribe Members |q 30457/1 |goto 69.41,89.07
step
kill Bataari Fire-Warrior##59083 |q 30457/2 |goto 69.41,89.07
|tip It walks up and down the road.
step
label "Collect_Arrows_of_Commander_Hsieh"
click Arrow of Commander Hsieh##210759+
|tip They look like tiny arrows buried in the ground around this area.
collect 12 Arrow of Commander Hsieh##79806 |q 30459/1 |goto 69.41,89.07
step
label "Heal_Injured_Binan_Warriors"
use Dit Da Jow##79819
|tip Use it on Injured Binan Warriors.
|tip They look like friendly Pandaren kneeling on the ground around this area.
Heal #8# Injured Binan Warriors |q 30460/1 |goto 69.41,89.07
step
talk Commander Hsieh##59076
turnin All of the Arrows##30459 |goto 70.75,90.36
step
talk Mayor Bramblestaff##59073
turnin Call Out Their Leader##30457 |goto 72.27,91.86
step
talk Apothecary Cheng##59077
turnin Hit Medicine##30460 |goto 71.57,92.84
accept General Nazgrim has Awakened##30511 |goto 71.57,92.84
step
talk General Nazgrim##59442
|tip Upstairs inside the building.
turnin General Nazgrim has Awakened##30511 |goto 71.65,93.10
accept Eastwind Rest##30513 |goto 71.65,93.10
step
talk Merchant Shi##59263
accept Reposesssion##30469 |goto 74.97,88.86
accept My Son...##30467 |goto 74.97,88.86
step
talk Swordmistress Mei##59273
accept Enraged Vengeance##30468 |goto 74.79,88.68
step
talk Waterspeaker Gorai##60973
accept The Waterspeaker's Staff##30496 |goto 75.13,87.94
accept Free the Dissenters##30967 |goto 75.13,87.94
step
talk Wu-Peng##59272
turnin My Son...##30467 |goto 74.68,76.93
accept Father and Child Reunion##30834 |goto 74.68,76.93
stickystart "Slay_Enraged_Jinyu"
stickystart "Help_Inkgill_Dissenters_Escape"
stickystart "Collect_Stolen_Supplies"
step
kill Orachi##59180
|tip He walks around this area.
collect Stolen Inkgill Ritual Staff##81385 |q 30496/1 |goto 74.41,78.52
step
label "Slay_Enraged_Jinyu"
Kill Enraged enemies around this area
Slay #15# Enraged Jinyu |q 30468/1 |goto 74.20,78.09
You can find more around [74.40,82.79]
step
label "Help_Inkgill_Dissenters_Escape"
talk Inkgill Dissenter##61566+
|tip They look like friendly NPC's cowering around this area.
Tell them _"There's still hope - Goral is still alive, to the south. Go!"_
Help #6# Inkgill Dissenters Escape |q 30967/1 |goto 74.40,78.83
You can find more around [73.93,83.51]
step
label "Collect_Stolen_Supplies"
click Untainted Supplies##210889+
|tip They look like grey stone urns on the ground around this area.
collect 8 Stolen Supplies##79880 |q 30469/1 |goto 74.40,78.83
You can find more around [73.93,83.51]
step
Reunite Wu-Peng and Merchant Shi |q 30834/1 |goto 74.97,88.78
step
talk Merchant Shi##59263
turnin Reposesssion##30469 |goto 74.97,88.86
turnin Father and Child Reunion##30834 |goto 74.97,88.86
step
talk Swordmistress Mei##59273
turnin Enraged Vengeance##30468 |goto 74.79,88.68
step
talk Waterspeaker Gorai##60973
turnin The Waterspeaker's Staff##30496 |goto 75.20,88.26
turnin Free the Dissenters##30967 |goto 75.20,88.26
accept The Ritual##30480 |goto 75.20,88.26
step
talk Waterspeaker Gorai##60973
Tell him _"I'm ready. Begin the ritual."_
Begin the Ritual |q 30480/1 |goto 75.20,88.26
step
Follow Waterspeaker Gorai
Watch the dialogue
Lay the Dead Inkgill to Rest |q 30480/2 |goto 74.85,88.55
step
kill Explosive Hatred##61530
Complete the Ritual |q 30480/3 |goto 74.85,88.55
step
talk Waterspeaker Gorai##60973
turnin The Ritual##30480 |goto 74.90,88.59
accept Cleansing the Mere##30828 |goto 74.90,88.59
step
clicknpc Pool of Corruption##61500+
|tip They look like pillars of white and black smoke coming out of pools on the surface of the water around this area.
kill Boiling Rage##59170+
Cleanse #6# Pools of Corruption |q 30828/1 |goto 71.78,85.57
You can find more around [69.67,82.57]
step
_Next to you:_
talk Waterspeaker Gorai##61065
turnin Cleansing the Mere##30828
accept The Fall of Shai Hu##30855
step
kill Explosive Hatred##61070+
|tip Lure them close to Shai Hu and then kill them to damage Shai Hu.
kill Shai Hu##61069 |q 30855/1 |goto 71.24,82.53
step
talk Waterspeaker Gorai##60973
turnin The Fall of Shai Hu##30855 |goto 74.90,88.59
step
talk Farmhand Ko##63751
Tell him _"I'm from the Horde. We're here to save you and rebuild your village."_
Speak with Farmhand Ko |q 30513/1 |goto 63.68,86.65
step
talk Farmhand Ko##63751
accept Temple of the White Tiger##31393 |goto 63.68,86.65
step
talk Elder Shiao##63535
Tell him _"I'm from the Horde. We're here to save you and rebuild your village."_
Speak with Elder Shiao |q 30513/2 |goto 61.20,82.22
step
talk Elder Shiao##63535
turnin Eastwind Rest##30513 |goto 61.20,82.22
accept Challenge Accepted##30515 |goto 61.20,82.22
step
click Yaungol Banner##210933
kill Ur-Bataar##59483 |q 30515/1 |goto 58.19,84.09
step
talk Elder Shiao##63535
turnin Challenge Accepted##30515 |goto 61.57,80.19
step
talk General Nazgrim##59442
|tip Inside the building.
accept Round 'Em Up##31256 |goto 63.00,80.20
step
talk Rivett Clutchpop##59448
accept Best Meals Anywhere!##31251 |goto 62.79,79.90
step
talk Farmhand Ko##63751
accept Trouble on the Farmstead##30570 |goto 62.54,79.44
step
talk Elder Shiao##63535
accept Mogu?! Oh No-gu!##30620 |goto 62.34,79.61
step
talk Soaring Paw##61745
fpath Eastwind Rest |goto 62.44,80.72
step
talk Shademaster Kiryn##59449
accept Deanimate the Reanimated##30594 |goto 62.70,80.72
step
talk Mai the Sleepy##62883
home Eastwind Rest |goto 62.73,80.49 |q 30999 |future
stickystart "Collect_Kun_Lai-Meaty_Bits"
step
clicknpc Wild Plains Yak##59610+
|tip They look like small brown and white yaks around this area.
|tip You can do this while mounted.
Capture 3 Wild Plains Yacks |havebuff 3 spell:114661 |goto 64.95,82.54 |q 31256
You can find more around [65.76,77.22]
step
label "Collect_Kun_Lai-Meaty_Bits"
Kill enemies around this area
|tip Only Beast enemies will drop this quest item.
collect 160 Kun Lai-Meaty Bits##80245 |q 31251/1 |goto 65.07,81.02
You can find more around [66.91,76.65]
step
talk Rivett Clutchpop##59448
turnin Best Meals Anywhere!##31251 |goto 62.79,79.90
step
Round Up #3# Yaks |q 31256/1 |goto 62.82,80.21
step
talk General Nazgrim##59442
|tip Inside the building.
turnin Round 'Em Up##31256 |goto 63.00,80.20
step
talk Farmer Chow##59573
turnin Trouble on the Farmstead##30570 |goto 60.24,85.79
accept Farmhand Freedom##30571 |goto 60.24,85.79
step
talk Uyen Chow##59636
accept ... and the Pot, Too!##30581 |goto 60.17,85.91
stickystart "Collect_Root_Vegetables"
step
kill Ordo Overseer##59580+
Free #12# Farmstead Slaves |q 30571/1 |goto 58.75,89.31
step
label "Collect_Root_Vegetables"
kill Wascally Wirmen##59655+
click Root Vegetable##211019+
|tip They look like white carrots with green leaves sticking out of the ground around this area.
collect 12 Root Vegetable##80227 |q 30581/1 |goto 58.60,89.28
step
click Cast Iron Pot##211023
|tip Inside the building.
collect Cast Iron Pot##80230 |q 30581/2 |goto 60.02,88.44
step
talk Uyen Chow##59636
turnin ... and the Pot, Too!##30581 |goto 60.17,85.91
step
talk Farmer Chow##59573
turnin Farmhand Freedom##30571 |goto 60.24,85.79
accept Back to Eastwind Rest##31253 |goto 60.24,85.79
step
talk Farmhand Ko##63751
turnin Back to Eastwind Rest##31253 |goto 62.54,79.44
step
talk Bao Jian##59821
accept Profiting off of the Past##30595 |goto 59.61,78.22
stickystart "Slay_Terracotta_Guardians_or_Warriors"
stickystart "Collect_Mogu_Relics"
step
kill Mogujia Soul-Caller##59797 |q 30620/1 |goto 58.11,70.90
step
label "Slay_Terracotta_Guardians_or_Warriors"
Kill Terracotta enemies around this area
Slay #14# Terracotta Guardians or Warriors |q 30594/1 |goto 58.26,75.18
step
label "Collect_Mogu_Relics"
Kill Terracotta enemies around this area
click Mogu Relic##211148+
|tip They look like stone objects on the ground around this area.
collect 12 Mogu Relic##80294 |q 30595/1 |goto 58.26,75.18
step
talk Bao Jian##59821
turnin Profiting off of the Past##30595 |goto 59.61,78.22
step
talk Elder Shiao##63535
turnin Mogu?! Oh No-gu!##30620 |goto 62.34,79.61
accept Pandaren Prisoners##30655 |goto 62.34,79.61
step
talk Rivett Clutchpop##59448
accept Barrels of Fun##30656 |goto 62.79,79.90
step
talk General Nazgrim##59442
|tip Inside the building.
accept In Tents Channeling##30657 |goto 63.00,80.20
step
talk Shademaster Kiryn##59449
turnin Deanimate the Reanimated##30594 |goto 62.70,80.72
stickystart "Rescue_Pandaren_Prisoners"
step
clicknpc Explosives Barrel##60095
collect Explosives Barrel##80528 |goto 51.24,79.29 |q 30656
step
use the Explosives Barrel##80528
Destroy the Eastern Oil Rig |q 30656/1 |goto 51.05,79.49
step
clicknpc Explosives Barrel##60095
collect Explosives Barrel##80528 |goto 51.24,79.29 |q 30656
step
kill Musaan the Blazecaster##59969 |q 30657/1 |goto 50.45,78.60
step
kill Harala the Firespeaker##60030 |q 30657/3 |goto 49.42,78.48
step
kill Pao-kun the Pyromancer##60031 |q 30657/4 |goto 49.12,80.31
step
use the Explosives Barrel##80528
Destroy the Southern Oil Rig |q 30656/2 |goto 49.61,80.98
step
clicknpc Explosives Barrel##60095
collect Explosives Barrel##80528 |goto 49.35,81.06 |q 30656
step
use the Explosives Barrel##80528
Destroy the Western Oil Rig |q 30656/3 |goto 47.86,81.40
step
kill Akonu the Embercaller##60032 |q 30657/2 |goto 47.71,80.00
step
Click the Complete Quest Box:
turnin In Tents Channeling##30657
accept The Ordo Warbringer##30661
step
Enter the cave |goto 48.95,76.91 < 7 |walk
kill Ordo Warbringer##60127 |q 30661/1 |goto 48.35,76.72
|tip Inside the cave.
|tip When he becomes invulnerable, kill the enemies he spawns to break his shield.
step
label "Rescue_Pandaren_Prisoners"
clicknpc Pandaren Prisoner##60038+
|tip They look like friendly Pandaren in wooden cages or standing around working on things around this area.
Rescue #8# Pandaren Prisoners |q 30655/1 |goto 49.63,78.96
You can find more around [48.03,80.15]
step
talk Rivett Clutchpop##59448
turnin Barrels of Fun##30656 |goto 62.79,79.90
step
talk General Nazgrim##59442
|tip He walks around this area.
turnin Pandaren Prisoners##30655 |goto 62.31,80.63
turnin The Ordo Warbringer##30661 |goto 62.31,80.63
accept The Shado-Pan##31453 |goto 62.31,80.63
step
talk Elder Shiao##63535
accept Beyond the Wall##31695 |goto 62.34,79.61
step
talk Farmhand Ko##63751
accept Muskpaw Ranch##31457 |goto 62.54,79.44
step
talk Shademaster Kiryn##59449
accept Cho's Missive##31459 |goto 62.70,80.72
step
talk Lao Muskpaw##59353
|tip He walks around this area.
turnin Muskpaw Ranch##31457 |goto 71.34,69.68
accept The Missing Muskpaw##30488 |goto 71.34,69.68
accept Fresh Needle Scent##30489 |goto 71.34,69.68
stickystart "Collect_Pungent_Sprite_Needles"
step
Enter the cave |goto 73.13,73.53 < 7 |walk
Follow the path |goto Kun-Lai Summit/9 40.71,41.60 < 7 |walk
kill Needle Sprite##61697+
|tip Kill the Needle Sprites attached to Muskpaw Jr.
talk Muskpaw Jr.##61693
|tip Inside the cave.
turnin The Missing Muskpaw##30488 |goto 64.38,60.55
accept At the Yak Wash##30491 |goto 64.38,60.55
step
clicknpc Tuffi##61874
|tip Inside the cave.
Ride Tuffi |invehicle |goto 65.84,59.03 |q 30491
stickystop "Collect_Pungent_Sprite_Needles"
step
Click the Accept Quest Box:
accept Yakity Yak##30587 |goto Kun-Lai Summit/0 69.87,73.00
stickystart "Slay_Burilgi_Despoilers"
step
kill Burilgi Despoiler##59335+
collect Muskpaw's Keepsake##80241 |goto 69.06,73.29 |q 30582 |future
You can find more around [66.49,71.20]
step
use Muskpaw's Keepsake##80241
accept The Late Mrs. Muskpaw##30582
step
label "Slay_Burilgi_Despoilers"
kill 9 Burilgi Despoiler##59335 |q 30587/1 |goto 69.06,73.29
You can find more around [66.49,71.20]
step
label "Find_Escaped_Yaks"
clicknpc Escaped Yak##59319+
|tip They look like small brown and white yaks around this area.
Ride the Yak |invehicle |goto 69.26,73.07 |q 30491
step
Wash #6# Escaped Yaks |q 30491/1 |goto 71.34,69.17
|tip Use the "Rush" ability on your action bar to get a burst of speed.
Click here to find another Escaped Yak |confirm |next "Find_Escaped_Yaks"
step
talk Muskpaw Jr.##59354
turnin At the Yak Wash##30491 |goto 71.39,69.28
step
label "Collect_Pungent_Sprite_Needles"
kill Needle Sprite##55593+
collect 100 Pungent Sprite Needles##79952 |q 30489/1 |goto 72.42,72.90
step
talk Lao Muskpaw##59353
|tip He walks around this area.
turnin Fresh Needle Scent##30489 |goto 71.34,69.68
turnin Yakity Yak##30587 |goto 71.34,69.68
turnin The Late Mrs. Muskpaw##30582 |goto 71.34,69.68
accept The Fearmaster##30804 |goto 71.34,69.68
step
talk Muskpaw Jr.##59354
accept Back in Yak##30492 |goto 71.39,69.28
step
kill The Fearmaster##59656 |q 30804/1 |goto 67.83,74.00
step
talk Lao Muskpaw##59353
|tip He walks around this area.
turnin The Fearmaster##30804 |goto 71.34,69.68
step
Bring the Yak Herd to Lucky Eightcoins |q 30492/1 |goto 64.82,61.52
step
talk Lucky Eightcoins##59371
turnin Back in Yak##30492 |goto 64.71,61.76
accept A Grummle's Luck##30808 |goto 64.71,61.76
step
talk Slimy Inkstain##59402
accept Oil Stop##30614 |goto 65.49,60.82
step
talk Smokey Sootassle##59597
accept Traffic Issues##30616 |goto 64.88,60.49
stickystart "Slay_Ruqin_Yaungols"
stickystart "Collect_Stolen_Luckydos"
step
click Yaungol Oil Derrick##211531
collect Filled Oil Vial##80311 |q 30614/1 |goto 63.31,68.43
step
label "Slay_Ruqin_Yaungols"
Kill Ruqin enemies around this area
Slay #8# Ruqin Yaungols |q 30616/1 |goto 63.00,67.96
step
label "Collect_Stolen_Luckydos"
click Stolen Bag of Luckydos##211538+
|tip They look like small white and brown bags on the ground near buildings around this area.
collect 8 Stolen Luckydos##81293 |q 30808/1 |goto 62.06,68.73
You can find more around [63.73,67.34]
step
talk Lucky Eightcoins##59371
turnin A Grummle's Luck##30808 |goto 64.71,61.76
step
talk Slimy Inkstain##59402
turnin Oil Stop##30614 |goto 65.49,60.82
step
talk Smokey Sootassle##59597
turnin Traffic Issues##30616 |goto 64.88,60.49
accept Roadside Assistance##30617 |goto 64.88,60.49
step
click Lucky Burlap Incense##211539+
|tip They look like wooden poles all along the road around this area.
|tip You can do this while mounted.
Light #8# Lucky Burlap Incense |q 30617/1 |goto 62.80,63.78
You can find more around [59.35,65.10]
step
talk Brother Lintpocket##59701
turnin Roadside Assistance##30617 |goto 58.09,61.46
step
talk Lorewalker Cho##61847
turnin Cho's Missive##31459 |goto 57.34,61.69
accept Path Less Traveled##30999 |goto 57.34,61.69
step
talk Uncle Cloverleaf##59696
turnin Path Less Traveled##30999 |goto 57.22,61.20
accept Instant Courage##30601 |goto 57.22,61.20
step
talk Big Sal##59695
|tip Inside the building.
accept Resupplying Onekeg##30618 |goto 57.72,61.77
step
talk Ji-Lu the Lucky##59716
|tip Inside the building.
accept They Stole My Luck!##30621 |goto 57.32,60.20
step
talk Chiyo Mistpaw##59688
|tip Inside the building.
home The Lucky Traveller |goto 57.37,60.00 |q 30935 |future
step
talk Little Cleankite##61504
fpath One Keg |goto 57.73,59.69
stickystart "Collect_Lucky_Four_Winds_Clover"
stickystart "Collect_Lucky_Gold_Coin"
stickystart "Collect_Lucky_Yak_Shoe"
stickystart "Inspire_Hiding_Guides"
stickystart "Collect_Stolen_Supplies"
step
Enter the cave |goto 59.15,52.92 < 10 |walk
kill Mischievous Snow Sprite##59693+
|tip Inside the cave.
collect Lucky Virmen's Foot##80316 |q 30621/1 |goto Kun-Lai Summit/8 49.44,60.86
step
label "Collect_Lucky_Four_Winds_Clover"
kill Mischievous Snow Sprite##59693+
|tip Inside the cave.
collect Lucky Four Winds Clover##90318 |q 30621/3 |goto 49.44,60.86
step
label "Collect_Lucky_Gold_Coin"
kill Mischievous Snow Sprite##59693+
|tip Inside the cave.
collect Lucky "Gold" Coin##80319 |q 30621/4 |goto 49.44,60.86
step
label "Collect_Lucky_Yak_Shoe"
kill Mischievous Snow Sprite##59693+
|tip Inside the cave.
collect Lucky Yak Shoe##80317 |q 30621/2 |goto 49.44,60.86
step
label "Inspire_Hiding_Guides"
use Fire Lotus Incense##80308
|tip Use it next to Hiding Guides.
|tip They look like large brown and red baskets around this area inside the cave.
Inspire #3# Hiding Guides |q 30601/1 |goto 49.44,60.86
step
label "Collect_Stolen_Supplies"
click Stolen Supplies##211270+
|tip They look like small brown and red baskets around this area inside the cave.
collect 12 Stolen Supplies##80315 |q 30618/1 |goto 49.44,60.86
step
talk Ji-Lu the Lucky##59716
|tip Inside the building.
turnin They Stole My Luck!##30621 |goto Kun-Lai Summit/0 57.32,60.20
step
talk Uncle Cloverleaf##59696
turnin Instant Courage##30601 |goto 57.22,61.20
step
talk Big Sal##59695
|tip Inside the building.
turnin Resupplying Onekeg##30618 |goto 57.72,61.77
step
talk Uncle Cloverleaf##59696
accept Comin' Round the Mountain##30487 |goto 57.22,61.20
step
clicknpc Ji-Lu's Cart##60094
Jump in Ji-Lu's Cart |q 30487/1 |goto 57.30,61.60
step
Kill the enemies that attack
|tip Use the abilities on your action bar.
Survive the Mountain Pass |q 30487/2 |goto 48.13,48.92 |notravel
step
talk Lucky Bluestring##60175
turnin Comin' Round the Mountain##30487 |goto 48.14,49.04
accept One Traveler's Misfortune##30683 |goto 48.14,49.04
step
click Abandoned Wreckage##212903
Search the Abandoned Wreckage for Supplies |q 30683/1 |goto 50.06,49.24
step
Kill the enemies that attack
kill General Sho Lien##60769 |q 30683/2 |goto 50.22,49.48
step
talk Lucky Bluestring##60175
turnin One Traveler's Misfortune##30683 |goto 48.14,49.04
accept Seeker's Folly##30684 |goto 48.14,49.04 |or
'|accept Seeker's Folly##31306 |goto 48.14,49.04 |or
step
click Shrine of the Seeker's Body##211597
Reflect at the Shrine of the Seeker's Body |q 30684/1 |goto 44.78,49.17 |only if haveq(30684) or completedq(30684)
Reflect at the Shrine of the Seeker's Body |q 31306/1 |goto 44.78,49.17 |only if haveq(31306) or completedq(31306)
|tip Watch out for the falling snow.
step
click Shrine of the Seeker's Breath##211601
Reflect at the Shrine of the Seeker's Breath |q 30684/2 |goto 42.69,50.02 |only if haveq(30684) or completedq(30684)
Reflect at the Shrine of the Seeker's Breath |q 31306/2 |goto 42.69,50.02 |only if haveq(31306) or completedq(31306)
|tip Watch out for the freezing winds; they look like tornados.
step
click Shrine of the Seeker's Heart##211602
Reflect at the Shrine of the Seeker's Heart |q 30684/3 |goto 43.18,51.98 |only if haveq(30684) or completedq(30684)
Reflect at the Shrine of the Seeker's Heart |q 31306/3 |goto 43.18,51.98 |only if haveq(31306) or completedq(31306)
step
talk Lorewalker Cho##60795
turnin Seeker's Folly##30684 |or |goto 43.79,51.05 |only if haveq(30684) or completedq(30684)
turnin Seeker's Folly##31306 |or |goto 43.79,51.05 |only if haveq(31306) or completedq(31306)
accept The Tongue of Ba-Shon##30829 |goto 43.79,51.05
step
talk Lorewalker Cho##60795
Tell him _"Go ahead with the binding, Cho."_
kill Reclaimer Zuan##61305
Bind the Tongue of Ba-Shon |q 30829/1 |goto 43.79,51.05
step
talk Lorewalker Cho##60795
turnin The Tongue of Ba-Shon##30829 |goto 43.76,51.11
accept Staying Connected##30795 |goto 43.76,51.11
step
talk Mishi##60796 |goto 43.74,51.31
Tell him _"I'm ready to leave."_
Fly to the Valley of Emperors |goto 57.87,48.97 < 5 |noway |q 30795
step
use The Tongue of Ba-Sho##81712
Use the Tongue of Ba-Shon in the Valley of Emperors |q 30795/1 |goto 57.87,48.97
step
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin Staying Connected##30795
accept An End to Everything##30796
stickystart "Slay_Tormented_Spirits"
step
click Curious Text##211780
accept It Was Almost Alive##30797 |goto 57.11,47.89
step
click Curious Text##211780
collect Torn Page##81892 |q 30797/1 |goto 57.11,47.89
step
label "Slay_Tormented_Spirits"
kill 5 Tormented Spirits##60825 |q 30796/1 |goto 56.99,47.97
step
use The Tongue of Ba-Sho##81712
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin An End to Everything##30796
turnin It Was Almost Alive##30797
accept The Tomb of Shadows##30799
step
Enter the tomb |goto 55.89,46.18 < 7 |walk
click Shen Dynasty Tablet##211770
|tip Inside the tomb.
collect Shen Dynasty Rubbing##82393 |q 30799/1 |goto 57.14,43.49
step
click Qiang Dynasty Rubbing
|tip Inside the tomb.
collect Qiang Dynasty Rubbing##82394 |q 30799/3 |goto 57.07,45.04
step
click Wai Dynasty Tablet##211793
|tip Inside the tomb.
collect Wai Dynasty Rubbing##82395 |q 30799/2 |goto 56.34,43.42
step
use The Tongue of Ba-Sho##81712
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin The Tomb of Shadows##30799
accept Breaking the Emperor's Shield##30798
step
Enter the tomb |goto 53.33,49.29 < 7 |walk
kill Nakk'rakas##60572
|tip Inside the tomb.
|tip When he casts his shield, kill the Imperial Guards until he is vulnerable again.
Interrupt the Spiritbinding Ritual |q 30798/1 |goto 52.96,51.39
step
use The Tongue of Ba-Sho##81712
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin Breaking the Emperor's Shield##30798
accept Stealing Their Thunder... King##30800
step
Enter the tomb |goto 52.96,46.60 < 5 |walk
click King's Coffer##211967
|tip Inside the tomb.
collect Bottom Fragment of Lei Shen's Tablet##82764 |q 30800/1 |goto Kun-Lai Summit/17 58.51,72.71
step
click Top Fragment of Lei Shen's Tablet##211968
|tip Inside the tomb.
Repair the Tablet of Thunder |q 30800/2 |goto 34.21,61.48
step
use The Tongue of Ba-Sho##81712
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin Stealing Their Thunder... King##30800
accept Lessons from History##30801
step
click Tablet of Thunder
|tip Inside the tomb.
Read the Tablet of Thunder |q 30801/1 |goto 34.21,61.48
step
use The Tongue of Ba-Sho##81712
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin Lessons from History##30801
accept Chasing the Storm##30802
step
kill Zandalari Warrior##61842+
|tip Inside the tomb.
collect Blood-Revealed Map##81890 |q 30802/1 |goto 64.01,73.38
step
use The Tongue of Ba-Sho##81712
_Next to you:_
talk Image of Lorewalker Cho##61297
turnin Chasing the Storm##30802
accept Fisherman's Tale##30935
step
Run up the stairs |goto 74.65,74.92 < 7 |walk
Leave the tomb |goto 88.19,54.88 < 7 |notravel |q 31393
step
talk Mishi##61382
Tell him _"I'm ready to leave."_
Speak to Mishi Outside Lei Shen's Tomb |q 30935/1 |goto Kun-Lai Summit/0 52.97,46.39
step
talk Big Greenfeather##61118
fpath Temple of the White Tiger |goto 66.30,50.67
step
Enter the building |goto 68.61,46.11 < 10 |walk
talk Sunwalker Dezco##64542
|tip Inside the building.
turnin Temple of the White Tiger##31393 |goto 68.73,43.01
accept A Celestial Experience##31395 |goto 68.73,43.01
step
talk Xuen##64528
|tip Inside the building.
Speak to Xuen |q 31395/1 |goto 68.88,42.79
step
Watch the dialogue
kill Spirit of Violence##64656
|tip Inside the building.
Pass the First Test |q 31395/2 |goto 68.79,43.80
step
kill Spirit of Anger##64684
|tip Inside the building.
Pass the Second Test |q 31395/3 |goto 68.79,43.80
step
kill Spirit of Hatred##64742
|tip Inside the building.
Pass the Third Test |q 31395/4 |goto 68.79,43.80
step
talk Sunwalker Dezco##64542
|tip Inside the building.
turnin A Celestial Experience##31395 |goto 68.73,43.01
accept A Witness to History##31511 |goto 68.73,43.01
step
Enter the cave |goto 63.95,49.78 < 10 |only if walking
talk Shin Whispercloud##61380
Tell him _"I'm ready to leave."_
Speak to Shin Whispercloud to Access Zouchin Province |q 30935/2 |goto 63.32,40.22
step
Watch the dialogue
Fly to Zouchin Province |goto 63.51,34.77 < 5 |q 30935 |notravel
step
talk Bo the Wind Claimer##61511
fpath Zouchin Village |goto 62.42,30.12
step
talk Lorewalker Cho##61371
|tip Inside the building.
turnin Fisherman's Tale##30935 |goto 62.33,29.06
accept It Takes A Village##30944 |goto 62.33,29.06
step
talk Liu Ze##60605
|tip Inside the building.
home North Wind Tavern |goto 62.49,28.78 |q 30612 |future
step
talk Li Hai##60436
accept Checking In##30816 |goto 63.17,29.37
step
talk Elder Shu##61495
|tip He walks around inside the building.
|tip He may be upstairs.
accept Handle With Care##30943 |goto 63.33,28.74
step
talk Shomi##61503
accept Make A Fighter Out of Me##30942 |goto 63.73,30.71
step
talk Steelbender Doshu##61496
|tip He walks around this area.
accept What's Yours Is Mine##30945 |goto 63.36,30.63
stickystart "Slay_Amani_Skirmishers"
step
talk Exhausted Defender##61417+
|tip They look like Pandaren fighting enemies around this area.
Tell them _"You're exhausted. Go rest and prepare for the battle to come."_
Relieve #5# Exhausted Defenders |q 30944/1 |goto 63.83,28.51
You can find more around [62.01,29.52]
step
label "Slay_Amani_Skirmishers"
kill 4 Amani Skirmisher##66165 |q 30942/1 |goto 63.83,28.51
You can find more around [62.01,29.52]
stickystart "Slay_Gurubashi_Hexxers"
stickystart "Slay_Drakkari_Frostweavers"
stickystart "Collect_Handfuls_of_Volatile_Blooms"
step
Kill Amani enemies around this area
collect 6 Blood-Stained Blade##82299 |q 30945/1 |goto 70.35,27.25
You can find more around [72.94,30.97]
step
label "Slay_Gurubashi_Hexxers"
kill 4 Gurubashi Hexxer##64202 |q 30942/2 |goto 70.35,27.25
You can find more around [72.94,30.97]
step
label "Slay_Drakkari_Frostweavers"
kill 3 Drakkari Frostweaver##66707 |q 30942/3 |goto 70.35,27.25
You can find more around [72.94,30.97]
step
label "Collect_Handfuls_of_Volatile_Blooms"
click Volatile Blooms##211684+
|tip They look like orange bushes on the ground around this area.
collect 50 Handful of Volatile Blooms##82298 |q 30943/1 |goto 70.35,27.25
You can find more around [72.94,30.97]
step
_Next to you:_
talk Shomi##61534
turnin Make A Fighter Out of Me##30942
step
talk Steelbender Doshu##61496
|tip He walks around this area.
turnin What's Yours Is Mine##30945 |goto 63.36,30.63
step
talk Elder Shu##61495
|tip He walks around inside the building.
|tip He may be upstairs.
turnin Handle With Care##30943 |goto 63.33,28.74
step
talk Lorewalker Cho##61371
|tip Inside the building.
turnin It Takes A Village##30944 |goto 62.33,29.06
accept Enemies At Our Door##31011 |goto 62.33,29.06
stickystart "Slay_Gurubashi_Bloodriders"
stickystart "Slay_Amani_Behemoths"
step
kill 10 Amani Berserker##62299 |q 31011/1 |goto 63.04,29.52
step
label "Slay_Gurubashi_Bloodriders"
kill 3 Gurubashi Bloodrider##62362 |q 31011/3 |goto 64.13,29.62
You can find more around [64.40,32.04]
step
label "Slay_Amani_Behemoths"
clicknpc Blasting Barrel##62591+
|tip The barrels will roll and kill the Behemoths.
kill 5 Amani Behemoth##63516 |q 31011/2 |goto 61.18,29.05
step
talk Lorewalker Cho##63750
|tip Inside the building.
turnin Enemies At Our Door##31011 |goto 62.33,29.06
accept Revelations##30946 |goto 62.33,29.06
step
talk Zandalari Prisoner##62629
|tip Upstairs inside the building.
Ask him _"Where have the Thunder King's Remains been taken?!"_
Question the Zandalari Prisoner |q 30946/1 |goto 62.48,28.84
step
talk Lorewalker Cho##63750
|tip Inside the building.
turnin Revelations##30946 |goto 62.33,29.06
accept Prophet Khar'zul##31228 |goto 62.33,29.06
step
talk Sage Liao##60694
turnin Checking In##30816 |goto 60.60,21.35
accept Emergency Care##30794 |goto 60.60,21.35
step
click Sage Liao's Belongings##211510
|tip Inside the building.
collect Pandaren Healing Draught##81177 |goto 61.01,21.52 |q 30794
step
clicknpc Sage Liao##60694
use Pandaren Healing Draught##81177
|tip Use it on Sage Liao.
Heal Sage Liao |q 30794/1 |goto 60.6,21.3
step
talk Sage Liao##60785
turnin Emergency Care##30794 |goto 60.60,21.35
accept Justice##30805 |goto 60.60,21.35
accept The Scent of Life##30806 |goto 60.60,21.35
accept By the Falls, For the Fallen##30807 |goto 60.60,21.35
step
click Waterfall-Polished Stone##211526+
|tip They look like grey stones underwater at the base of the waterfall.
collect 3 Waterfall-Polished Stone##81269 |q 30807/1 |goto 59.05,27.27
stickystart "Slay_Blackmane_Mercenaries"
stickystart "Collect_Stolen_Pandaren_Spices"
stickystart "Collect_Opalescent_Blue_Crab_Shell"
step
kill Captain Ripflesh##60767 |q 30805/1 |goto 62.04,23.34
|tip He walks around this area.
step
label "Slay_Blackmane_Mercenaries"
Kill Blackmane enemies around this area
Slay #6# Blackmane Mercenaries |q 30805/2 |goto 63.03,21.57
step
label "Collect_Stolen_Pandaren_Spices"
click South Sea Booty Barrel##211521+
|tip They look like dark brown wooden barrels around this area.
collect 8 Stolen Pandaren Spices##81261 |q 30806/2 |goto 63.03,21.57
step
label "Collect_Opalescent_Blue_Crab_Shell"
kill Azure Prickly Crawler##60437+
collect Opalescent Blue Crab Shell##80907 |q 30806/1 |goto 63.03,21.57
You can find more around [60.31,21.37]
step
talk Sage Liao##60785
turnin Justice##30805 |goto 60.60,21.35
turnin The Scent of Life##30806 |goto 60.60,21.35
turnin By the Falls, For the Fallen##30807 |goto 60.60,21.35
accept Preparing the Remains##30819 |goto 60.60,21.35
step
talk Li Hai##60436
turnin Preparing the Remains##30819 |goto 63.17,29.37
accept A Funeral##30820 |goto 63.17,29.37
step
click Incense of Life##211545
Light the Incense of Life |q 30820/1 |goto 66.95,33.32
step
talk Sage Liao##60757
turnin A Funeral##30820 |goto 67.05,33.35
step
talk Mishi##61382 |goto 62.3,29.4
Tell him _"I'm ready to leave."_
Speak with Mishi in Zouchin Village |q 31228/1 |goto 62.30,29.32
step
Fly to the Isle of Reckoning |goto 76.48,19.38 < 5 |q 31228 |notravel
stickystart "Slay_Zandalari_Forces"
step
kill Prophet Khar'zul##61541 |q 31228/2 |goto 76.42,9.05
|tip Stay on top of the Altar when he causes the floor to turn purple.
|tip Try to interrupt his "Crow Storm" AoE ability, if he uses it.
step
label "Slay_Zandalari_Forces"
Kill enemies around this area
Slay #12# Zandalari Forces |q 31228/3 |goto 75.75,12.05
You can find more around [76.35,17.10]
step
talk Lorewalker Cho##63784
|tip Inside the building.
turnin Prophet Khar'zul##31228 |goto 62.33,29.06
step
talk Brother Lintpocket##59701
accept The Burlap Trail: To Burlap Waystation##30592 |goto 58.09,61.46
step
Join up with the Convoy |goto 58.43,64.81 < 10 |walk
Follow and protect the Trail Packers
Escort the Grummles to the Burlap Waystation |q 30592/1 |goto 53.01,66.57
step
talk Brother Trailscenter##59703
turnin The Burlap Trail: To Burlap Waystation##30592 |goto 51.66,67.83
accept The Rabbitsfoot##30602 |goto 51.66,67.83
step
talk Brother Rabbitsfoot##59452
Rescue Brother Rabbitsfoot |q 30602/1 |goto 49.10,70.44
step
talk Brother Rabbitsfoot##59452
accept The Broketooth Ravage##30603 |goto 49.10,70.44
step
Enter the building |goto 48.08,73.12 < 7 |walk
kill Mo Mo##59805
|tip Inside the building.
collect Rabbitsfoot's Luckydo##81137 |q 30603/1 |goto 48.01,73.27
step
talk Brother Rabbitsfoot##59452
turnin The Rabbitsfoot##30602 |goto 51.97,67.21
turnin The Broketooth Ravage##30603 |goto 51.97,67.21
accept A Monkey Idol##30599 |goto 51.97,67.21
accept No Pack Left Behind##30600 |goto 51.97,67.21
accept Breaking Broketooth##30604 |goto 51.97,67.21
stickystart "Collect_Grummlepacks"
stickystart "Slay_Broketooth_Tossers"
stickystart "Slay_Broketooth_Chargers"
step
kill Tak Tak##59958
|tip He walks around this area.
collect 1 Corpse of Tak Tak##80430 |goto 56.68,70.94 |condition itemcount(80430) == 1 or completedq("30599/3")
step
click Tak Tak's Altar##211276
|tip It looks like a small knife embedded into a stone slab.
Destroy Tak Tak's Altar |q 30599/3 |goto 56.83,70.98
step
kill Hateful Ko Ko##59430
|tip He walks around this area.
collect 1 Corpse of Ko Ko##80429 |goto 52.39,71.42 |condition itemcount(80429) == 1 or completedq("30599/2")
step
click Ko Ko's Altar##211275
|tip It looks like a small knife embedded into a stone slab.
Destroy Ko Ko's Altar |q 30599/2 |goto 52.27,71.44
step
Enter the cave |goto 52.85,71.53 < 7 |walk
kill Dak Dak##59424
|tip He walks around this area inside the cave.
collect 1 Corpse Of Dak Dak##80428 |goto Kun-Lai Summit/12 50.83,42.59 |condition itemcount(80428) == 1 or completedq("30599/1")
step
click Dak Dak's Altar##210931
|tip Inside the cave.
Destroy Dak Dak's Altar |q 30599/1 |goto 49.59,39.76
step
label "Collect_Grummlepacks"
clicknpc Dead Packer##59896+
|tip They look like dead Grummles laying on the ground around this area inside the cave.
|tip More can be found outside.
collect 8 Grummlepack##80307 |q 30600/1 |goto 50.83,42.59
step
label "Slay_Broketooth_Tossers"
kill 6 Broketooth Tosser##59416 |q 30604/2 |goto 50.83,42.59
|tip Outside and inside the cave.
step
label "Slay_Broketooth_Chargers"
kill 8 Broketooth Charger##59414 |q 30604/1 |goto 50.83,42.59
|tip Outside and inside the cave.
step
talk Brother Rabbitsfoot##59452
turnin A Monkey Idol##30599 |goto Kun-Lai Summit/0 51.97,67.21
turnin No Pack Left Behind##30600 |goto 51.97,67.21
accept Bros before Hozen##30605 |goto 51.97,67.21
turnin Breaking Broketooth##30604 |goto 51.97,67.21
step
clicknpc Mok Mok##60008
Rescue the Brother Yakshoe |q 30605/1 |goto 50.53,64.19
step
talk Brother Yakshoe##59894
turnin Bros before Hozen##30605 |goto 50.57,64.07
accept Hozen Love Their Keys##30607 |goto 50.57,64.07
accept The Snackrifice##30608 |goto 50.57,64.07
accept Thumping Knucklethump##30606 |goto 50.57,64.07
stickystart "Slay_Silverback_Hozen"
stickystart "Rescue_Imprisoned_Grummle"
step
Enter the cave |goto 50.31,61.68 < 7 |walk
kill Cho Cho the Wicked##60090
|tip Inside the cave.
collect Yeti Shackle Key##80535 |q 30607/1 |goto Kun-Lai Summit/10 33.59,13.46
step
label "Slay_Silverback_Hozen"
Kill Knucklethump enemies around this area
|tip Outside and inside the cave.
Slay #8# Silverback Hozen |q 30606/1 |goto 63.41,55.31
step
label "Rescue_Imprisoned_Grummle"
click Grummle Cage##211307+
|tip They look like wooden cages around this area inside the cave.
Rescue #5# Imprisoned Grummle |q 30608/1 |goto 36.7,14.4
step
click Ball and Chain##207079
|tip Inside the cave.
Release Old Poot Poot |q 30607/2 |goto 42.67,26.66
step
talk Brother Yakshoe##59894
turnin Hozen Love Their Keys##30607 |goto Kun-Lai Summit/0 52.01,67.18
turnin The Snackrifice##30608 |goto 52.01,67.18
accept Grummle! Grummle! Grummle!##30610 |goto 52.01,67.18
step
talk Brother Rabbitsfoot##59452
turnin Thumping Knucklethump##30606 |goto 51.97,67.21
accept Unleash The Yeti!##30611 |goto 51.97,67.21
stickystart "Slay_Cagemasters"
step
click Grummle Gear##211686+
|tip They look like small silver and gray boxes on the ground around this area.
Send #5# Packers Packing |q 30610/1 |goto 46.40,64.11
step
label "Slay_Cagemasters"
kill 4 Cagemaster##60169 |q 30611/1 |goto 46.32,63.89
|tip They are standing around the large dome.
step
talk Brother Yakshoe##59894
turnin Grummle! Grummle! Grummle!##30610 |goto 45.94,64.05
step
talk Brother Rabbitsfoot##59452
turnin Unleash The Yeti!##30611 |goto 45.91,64.06
accept The Leader Hozen##30612 |goto 45.91,64.06
step
Watch the dialogue
Enrage Chomp Chomp |q 30612/1 |goto 46.00,63.27
step
kill The Ook of Dook##60188 |q 30612/2 |goto 46.12,62.82
step
talk Brother Rabbitsfoot##59452
turnin The Leader Hozen##30612 |goto 51.97,67.21
step
talk Brother Trailscenter##59703
accept The Burlap Trail: To Kota Basecamp##30692 |goto 51.66,67.83
step
Join up with the Convoy |goto 50.71,67.39 < 10 |walk
Follow and protect the Trail Packers
Escort the Grummles to Kota Basecamp |q 30692/1 |goto 43.95,68.91
step
talk Uncle Eastwind##60416
fpath Kota Basecamp |goto 42.81,69.63
step
talk Clover Keeper##60420
home Kota Basecamp |goto 42.67,69.75 |q 30752 |future
step
talk Uncle Keenbean##60503
accept Kota Blend##30744 |goto 42.42,69.65
accept Trouble Brewing##30745 |goto 42.42,69.65
step
talk Cousin Gootfur##60596
|tip He walks around this area.
accept Shut it Down##30742 |goto 42.34,69.78
accept Gourmet Kafa##30743 |goto 42.34,69.78
step
talk Brother Oilyak##59755
turnin The Burlap Trail: To Kota Basecamp##30692 |goto 42.45,68.91
stickystart "Collect_Kafa'kota_Berries"
step
Enter the cave |goto 37.33,77.81 < 10 |walk
kill 8 Kafa-Crazed Yeti##60564 |q 30745/1 |goto 35.41,77.00
|tip Inside the cave.
step
label "Collect_Kafa'kota_Berries"
click Kafa'Kota Berries##211480+
|tip They look like clusters of tiny red berries around this area inside the cave.
collect 100 Kafa'kota Berry##81054 |q 30744/1 |goto 35.41,77.00
step
Click the Complete Quest Box:
turnin Kota Blend##30744
accept A Fair Trade##30746
stickystart "Slay_Kafa-Crazed_Mountain_Goats"
step
click Kafa'goot "Deposit"##211456+
|tip They look like small piles of poop surrounded by flies around this area.
Mark #15# Kafa'goot "Deposits" |q 30743/1 |goto 38.57,78.03
You can find more around [40.40,77.32]
step
label "Slay_Kafa-Crazed_Mountain_Goats"
kill 12 Kafa-Crazed Mountain Goat##60493 |q 30742/1 |goto 38.57,78.03
You can find more around [40.40,77.32]
step
Enter the cave |goto 37.18,75.97 < 7 |walk
talk Nephew Burrberry##60679
|tip Inside the cave.
turnin A Fair Trade##30746 |goto 36.93,76.22
step
talk Cousin Gootfur##60596
turnin Shut it Down##30742 |goto 42.46,69.35
turnin Gourmet Kafa##30743 |goto 42.46,69.35
step
talk Uncle Keenbean##60503
turnin Trouble Brewing##30745 |goto 42.53,69.44
step
talk Nephew Burrberry##60679
accept The Burlap Grind##30747 |goto 42.52,69.33
step
talk Kota Kon##60587
Choose _<Unscrew the flask and offer it to her.>_
Start Riding with Kota Kon |invehicle |goto 42.61,69.17 |q 30747
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #100# Burlap Trail Hozen |q 30747/1 |goto 50.27,67.81
step
Click the red arrow on your action bar |outvehicle |q 30747
step
talk Nephew Burrberry##60679
turnin The Burlap Grind##30747 |goto 42.52,69.33
step
talk Sunwalker Dezco##64853
Tell him _"There's only one way to find out..."_
Speak with Dezco at the Gate of the August Celestials |q 31511/1 |goto 56.18,91.56
step
Follow the path |goto 55.54,92.45 < 10 |only if walking
Enter the building |goto Vale of Eternal Blossoms/0 63.47,17.00 < 7 |walk
Enter the building |goto Vale of Eternal Blossoms New/0 63.73,14.33 < 7 |walk
talk Madam Vee Luo##62996
|tip Inside the building.
turnin A Witness to History##31511 |goto Shrine of Two Moons/1 68.45,47.64
turnin A Witness to History##31511 |goto Vale of Eternal Blossoms New/0 62.92,11.94
step
talk Tania Summerbreeze##61122
fpath Shrine of Two Moons |goto Vale of Eternal Blossoms/0 62.85,21.79
step
click Ancient Guo Lai Door
Enter the building |goto Kun-Lai Summit/0 45.04,89.97 < 5 |walk
talk Shado-Master Chong##60161
|tip Inside the building.
turnin The Shado-Pan##31453 |goto 44.48,89.93
accept Turnabout##30670 |goto 44.48,89.93
accept The Defense of Shado-Pan Fallback##30665 |goto 44.48,89.93
step
Run up the stairs |goto 44.28,89.69 < 5 |walk
talk Kite Master Ni##61473
fpath Shado-Pan Fallback |goto 43.91,89.55
stickystart "Collect_Blind_Rage_Essences"
stickystart "Slay_Sha-Infested_Yaungols"
step
talk Sya Zhong##60178
|tip Inside the building.
accept Holed Up##30682 |goto 42.94,88.32
step
Watch the dialogue
|tip Inside the building.
Rescue Sya Zhong |q 30682/4 |goto 42.94,88.32
step
talk Ya Firebough##60189
|tip Inside the building.
Tell him _"...That's enough. Let's go."_
Rescue Ya Firebough |q 30682/2 |goto 41.04,86.96
step
talk Old Lady Fung##60190
|tip Inside the building.
Tell her _"Yes... why don't you 'escort' me out of here."_
Rescue Old Lady Fung |q 30682/3 |goto 42.83,85.70
step
talk Jin Warmkeg##60187
|tip Inside the building.
Tell him _"Let's get out of here."_
Rescue Jin Warmkeg |q 30682/1 |goto 43.87,86.17
step
label "Collect_Blind_Rage_Essences"
kill Blind Rage##61224+
collect 5 Blind Rage Essence##81713 |q 30670/1 |goto 43.21,86.73
step
label "Slay_Sha-Infested_Yaungols"
kill 15 Sha-Infested Yaungol##60164 |q 30665/1 |goto 44.70,87.98
step
click Ancient Guo Lai Door
Enter the building |goto 44.50,89.09 < 5 |walk
talk Shado-Master Chong##60161
|tip Inside the building.
turnin Turnabout##30670 |goto 44.48,89.93
turnin The Defense of Shado-Pan Fallback##30665 |goto 44.48,89.93
accept Unmasking the Yaungol##30690 |goto 44.48,89.93
turnin Holed Up##30682 |goto 44.48,89.93
step
talk Zidormi##163463
Ask her _"Can you show me what the Vale was like before the Black Empire assault?"_
Explore the Vale's Past |condition ZGV.InPhase("Old Vale") |goto Vale of Eternal Blossoms New/0 80.97,29.48 |q 30690
|only if level >= 50 and completedq(56541)
step
use Blinding Rage Trap##81741
|tip Use it in front of Kobai.
|tip He walks around this area.
|tip He will walk into the trap and be stunned.
clicknpc Kobai##61303
use Steal Mask
|tip It appears as a button on the screen.
Lure Kobai into the Trap and Steal His Mask|q 30690/1 |goto Kun-Lai Summit/0 45.33,85.99
step
kill Malevolent Fury##61333 |q 30690/2 |goto 45.33,85.99
step
click Ancient Guo Lai Door
Enter the building |goto 44.50,89.09 < 5 |walk
talk Shado-Master Chong##60161
|tip Inside the building.
turnin Unmasking the Yaungol##30690 |goto 44.48,89.93
accept To Winter's Blossom##30699 |goto 44.48,89.93
step
talk Lin Silentstrike##61816
turnin To Winter's Blossom##30699 |goto 34.96,59.40
accept Honor, Even in Death##30723 |goto 34.96,59.40
step
talk Ban Bearheart##61819
accept A Line Unbroken##30715 |goto 35.12,59.66
step
talk Kite Master Len##61512
fpath Winter's Blossom |goto 34.54,59.12
stickystart "Slay_Kun-Lai_Corpsepickers"
step
clicknpc Shado-Master Zhiyao##61808
Release Shado-Master Zhiyao From His Oath |q 30715/1 |goto 30.35,60.05
step
clicknpc Liu of the Thousand Blows##61806
Release Liu of the Thousand Blows From His Oath |q 30715/2 |goto 30.17,62.50
step
clicknpc Shiya Boldblade##61810
Release Shiya Boldblade From Her Oath |q 30715/3 |goto 29.97,64.43
step
label "Slay_Kun-Lai_Corpsepickers"
kill 12 Kun-Lai Corpsepicker##61843 |q 30723/1 |goto 30.77,62.01
step
talk Ban Bearheart##61819
turnin A Line Unbroken##30715 |goto 35.12,59.66
step
talk Lin Silentstrike##61816
turnin Honor, Even in Death##30723 |goto 34.95,59.30
accept To the Wall!##30724 |goto 34.95,59.30
step
talk Kite Master Len##61512
Tell him _"I need a kite to get up to the wall!"_
Speak to Kite-Master Len to Take a Kite to the Wall |q 30724/1 |goto 34.54,59.12
step
Fly to the Wall |goto 29.30,62.32 < 5 |q 30724 |notravel
step
talk Suna Silentstrike##61454
turnin To the Wall!##30724 |goto 29.30,62.29
accept Off the Wall!##30750 |goto 29.30,62.29
step
talk Lao-Chin the Iron Belly##61820
accept A Terrible Sacrifice##30751 |goto 29.24,62.31
stickystart "Slay_Veteran_Archers_or_Fire-Warriors"
step
click Yaungol Oil Barrel##212003+
|tip They look like tan jugs along the wall around this area.
collect 6 Yaungol Oil Barrel##82799 |q 30751/1 |goto 26.60,59.78
step
label "Slay_Veteran_Archers_or_Fire-Warriors"
Kill Osul enemies around this area
Slay #12# Veteran Archers or Fire-Warriors |q 30750/1 |goto 26.60,59.78
step
talk Lao-Chin the Iron Belly##61820
turnin A Terrible Sacrifice##30751 |goto 29.24,62.31
step
talk Suna Silentstrike##61454
turnin Off the Wall!##30750 |goto 29.30,62.29
accept Lao-Chin's Gambit##30994 |goto 29.30,62.29
step
talk Suna Silentstrike##61454
Tell her _"Alright, I'm ready to get back to the front."_
Talk with Suna Silentstrike to Take a Kite to Lao-Chin |q 30994/1 |goto 29.30,62.29
step
Fly to Lao-Chin |goto 31.85,60.18 < 5 |q 30994 |notravel
step
talk Lao-Chin the Iron Belly##61820
turnin Lao-Chin's Gambit##30994 |goto 31.82,60.11
accept Do a Barrel Roll!##30991 |goto 31.82,60.11
stickystart "Slay_Osul_Treelaunchers"
step
clicknpc Keg Bomb##60553+
kill 50 Osul Invader##60455 |q 30991/1 |goto 32.06,60.59
|tip Use the "Ignite Keg" ability on your action bar.
step
label "Slay_Osul_Treelaunchers"
clicknpc Keg Bomb##60553+
kill 4 Osul Treelauncher##60483 |q 30991/2 |goto 32.06,60.59
|tip Use the "Ignite Keg" ability on your action bar.
step
talk Lao-Chin the Iron Belly##61820
turnin Do a Barrel Roll!##30991 |goto 31.82,60.11
accept Finish This!##30992 |goto 31.82,60.11
step
kill Gong Da##62165
Complete the Battle for The Ox Gate |q 30992/1 |goto 31.26,61.66
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
Ride Ban's Balloon to the Shado-Pan Monastery |q 30993/2 |goto 33.96,58.62
step
talk Ban Bearheart##61819
turnin Where are My Reinforcements?##30993 |goto 35.31,49.55
accept Unbelievable!##30752 |goto 35.31,49.55
step
talk Shado-Pan Sentinel##62220
Tell him _"I am here with Ban Bearheart, and we demand an audience with Taran Zhu!"_
kill Shado-Pan Sentinel##62220
Gain access to the Monastery |q 30752/1 |goto 36.69,47.72
step
_Next to you:_
talk Ban Bearheart##61819
turnin Unbelievable!##30752
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (10-60)\\Townlong Steppes (25-60)",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."TownlongSteppes",
next="Leveling Guides\\Pandaria (10-60)\\Dread Wastes (30-60)",
condition_suggested=function() return level >= 25 and level <= 80 and not completedq(30928) end,
startlevel=25,
endlevel=50,
},[[
step
talk Taran Zhu##60688
turnin Beyond the Wall##31695 |goto Townlong Steppes/0 71.15,56.70
accept A Foot in the Door##30814 |goto 71.15,56.70
step
talk Kite Master Wong##62901
fpath Longying Outpost |goto 71.08,57.32
step
talk Saito the Sleeping Shadow##62873
|tip Inside the building.
home Longying Outpost |goto 71.08,57.91 |q 30785 |future
step
kill 8 Osul Charger##60713 |q 30814/1 |goto 70.74,51.60
step
talk Taran Zhu##60688
turnin A Foot in the Door##30814 |goto 71.15,56.70
accept First Assault##30769 |goto 71.15,56.70
accept Running Rampant##30770 |goto 71.15,56.70
accept Perfect Pitch##30771 |goto 71.15,56.70
stickystart "Collect_Dark_Pitches"
stickystart "Slay_Osul_Sharphorns"
step
Click Yaks and Steppebeasts around this area
Free #8# Yaks or Steppebeasts |q 30770/1 |goto 67.13,54.44
step
label "Collect_Dark_Pitches"
click Pitch Pot##211507+
|tip They look like small tan and blue pots on the ground and inside tents around this area.
collect 8 Dark Pitch##81174 |q 30771/1 |goto 68.35,53.22
step
label "Slay_Osul_Sharphorns"
kill 6 Osul Sharphorn##60647 |q 30769/1 |goto 68.35,53.22
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
step
talk Katak the Defeated##60735
accept The Exile##30775 |goto 66.99,51.42
stickystart "Destroy_Osul_Ballistas"
stickystart "Slay_Osul_Spearguards"
stickystart "Rescue_Longying_Rangers"
step
kill Battat##60728 |q 30775/1 |goto 65.71,51.64
|tip Inside the building.
step
kill Urang##60725 |q 30775/2 |goto 64.78,50.14
|tip Inside the building.
step
kill Ku-Tong##60726 |q 30775/3 |goto 66.96,48.26
|tip Inside the building.
step
label "Destroy_Osul_Ballistas"
use Ban's Explosives##81193
|tip Use them on Ballistas.
|tip They look like wooden catapults around this area.
Destroy #6# Osul Ballistas |q 30773/1 |goto 66.17,52.68
You can find more around [67.06,44.46]
step
label "Slay_Osul_Spearguards"
kill 12 Osul Spearguard##60692 |q 30772/1 |goto 66.98,49.78
step
label "Rescue_Longying_Rangers"
Kill Osul enemies around this area
collect Stone Key##81178+ |n
click Drywood Cages
|tip They look like wooden cages around this area.
Rescue #4# Longying Rangers |q 30774/1 |goto 67.28,49.50
step
clicknpc Lin Silentstrike##60899
Choose _Examine the body._
Free Lin Silentstrike |q 30774/2 |goto 66.58,49.14
step
talk Katak the Defeated##60735
turnin The Exile##30775 |goto 66.99,51.42
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
kill Jung Duk##60801 |q 30776/1 |goto 66.65,50.99
step
talk Ban Bearheart##60687
turnin Jung Duk##30776 |goto 71.02,56.56
accept In Search of Suna##30777 |goto 71.02,56.56
step
talk Orbiss##60857
accept A Spear Through My Side, A Chain Through My Soul##30786 |goto 67.94,67.67
step
kill Dmong Naruuk##60683 |q 30786/1 |goto 68.42,71.45
step
talk Orbiss##60857
turnin A Spear Through My Side, A Chain Through My Soul##30786 |goto 67.94,67.67
accept The Torches##30787 |goto 67.94,67.67
step
kill Osul Mist-Shaman##60697+
clicknpc Mist-Shaman's Torch##60698+
|tip They look like small wooden poles channeling arcs of blue energy around this area.
collect 6 Mist-Shaman's Torch##81176 |q 30787/1 |goto 65.63,68.79
step
talk Orbiss##60857
turnin The Torches##30787 |goto 67.94,67.67
accept Golgoss##30788 |goto 67.94,67.67
accept Arconiss##30789 |goto 67.94,67.67
step
click Peat Clump##211513
Kill the enemies that attack
Summon Golgoss |q 30788/1 |goto 70.51,69.65
step
click Peat Mound##211515
Kill the enemies that attack
Summon Arconiss |q 30789/1 |goto 71.49,72.29
step
talk Orbiss##60857
turnin Golgoss##30788 |goto 67.94,67.67
turnin Arconiss##30789 |goto 67.94,67.67
accept The Death of Me##30815 |goto 67.94,67.67
step
talk Orbiss##60857
Choose _<Remove the spear from Orbiss' side.>_
Remove the Spear From Orbiss |q 30815/1 |goto 67.94,67.67
step
talk Orbiss##60857
turnin The Death of Me##30815 |goto 67.94,67.67
accept Golgoss Hungers##30790 |goto 67.94,67.67
accept Arconiss Thirsts##30791 |goto 67.94,67.67
accept Orbiss Fades##30792 |goto 67.94,67.67
stickystart "Collect_Clotted_Rodents_Bloods"
stickystart "Collect_Gushing_Mists"
step
click Snarlvine##211518+
|tip They look like green bushes with purple petals around this area.
collect 10 Snarlvine##81250 |q 30790/1 |goto 71.20,70.85
You can find more around [73.86,71.99]
step
label "Collect_Clotted_Rodents_Bloods"
kill Swamp Rodent##60733+
collect 4 Clotted Rodent's Blood##81260 |q 30791/1 |goto 71.20,70.85
You can find more around [73.86,71.99]
step
label "Collect_Gushing_Mists"
Walk through puffs of steam
|tip They look like grey smoke floating above the ground around this area.
|tip You can do this while mounted.
Collect #8# Gushing Mist |q 30792/1 |goto 71.20,70.85
You can find more around [73.86,71.99]
step
talk Orbiss##60622
turnin Golgoss Hungers##30790 |goto 67.94,67.67
turnin Arconiss Thirsts##30791 |goto 67.94,67.67
turnin Orbiss Fades##30792 |goto 67.94,67.67
accept Mists' Opportunity##30793 |goto 67.94,67.67
step
kill Jahesh of Osul##60802
Watch the dialogue
Slay Jahesh of Osul |q 30793/1 |goto 76.68,72.90
step
talk Orbiss##60622
turnin Mists' Opportunity##30793 |goto 76.19,72.91
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
accept Last Toll of the Yaungol##30781 |goto 82.70,73.16
stickystart "Collect_Palewind_Totems"
stickystart "Burn_Palewind_Villagers"
stickystart "Slay_Ashfang_Hyenas"
step
Watch the dialogue
Examine the Southern Smoke Trail |q 30781/3 |goto 83.56,78.39
step
Watch the dialogue
Examine the Eastern Smoke Trail |q 30781/1 |goto 84.86,71.48
step
Watch the dialogue
Examine the Northwestern Smoke Trail |q 30781/4 |goto 84.03,70.83
step
Watch the dialogue
Examine the Western Smoke Trail |q 30781/2 |goto 81.11,72.03
step
label "Collect_Palewind_Totems"
click Palewind Totem##211566+
|tip They look like brown and grey wooden totems with small skulls on the ground around this area.
collect 9 Palewind Totem##81355 |q 30780/1 |goto 83.52,73.94
step
label "Burn_Palewind_Villagers"
use Shado-Pan Torch##81356
|tip Use it on Palewild Villagers.
|tip They look like dead bodies laying on the ground around this area.
Burn #20# Palewind Villagers |q 30778/1 |goto 83.52,73.94
step
label "Slay_Ashfang_Hyenas"
kill 12 Ashfang Hyena##60932 |q 30779/1 |goto 83.52,73.94
step
talk Ban Bearheart##61261
turnin Dust to Dust##30778 |goto 82.68,73.02
turnin Slaying the Scavengers##30779 |goto 82.68,73.02
turnin Last Toll of the Yaungol##30781 |goto 82.68,73.02
step
talk Yalia Sagewhisper##60864
turnin Totemic Research##30780 |goto 82.59,73.02
accept What Lies Beneath##30827 |goto 82.59,73.02
step
talk Yalia Sagewhisper##60864
Tell her _"I am ready to begin the ritual."_
Speak With Yalia Sagewhisper |q 30827/1 |goto 82.59,73.02
step
clicknpc Totem of Tranquility##60990
Activate the Totem of Tranquility |q 30827/3 |goto 82.42,73.56
step
clicknpc Totem of Serenity##60991
Activate the Totem of Serenity |q 30827/4 |goto 82.69,73.63
step
clicknpc Totem of Kindness##60933
Activate the Totem of Kindness |q 30827/2 |goto 82.58,73.25
step
Complete the Ritual |q 30827/5 |goto 82.56,73.48
step
talk Yalia Sagewhisper##60864
turnin What Lies Beneath##30827 |goto 82.59,73.02
accept Hatred Becomes Us##30783 |goto 82.59,73.02
step
talk Ban Bearheart##61261
accept Spiteful Spirits##30782 |goto 82.68,73.02
stickystart "Slay_Spiteful_Spirits"
step
_Don't let your Hatred bar reach 100_
|tip You can lower it by standing near Totems of Harmony.
use Totem of Harmony##81417
|tip Use it on Crazed Shado-Pan Rangers.
|tip They look like Pandaren fighting enemies around this area.
kill Seething Hatred##61054+
Purify #8# Crazed Shado-Pan Rangers |q 30783/1 |goto 81.87,72.56
You can find more around [83.46,76.21]
step
label "Slay_Spiteful_Spirits"
kill 10 Spiteful Spirit##63839 |q 30782/1 |goto 81.87,72.56
You can find more around [83.46,76.21]
step
talk Yalia Sagewhisper##60864
turnin Hatred Becomes Us##30783 |goto 82.59,73.02
step
talk Ban Bearheart##61261
turnin Spiteful Spirits##30782 |goto 82.68,73.02
accept The Point of No Return##30784 |goto 82.68,73.02
step
use Totem of Harmony##81430
kill Suna Silentstrike##61055 |q 30784/1 |goto 84.08,70.55
|tip Inside the building.
step
talk Ban Bearheart##61261
turnin The Point of No Return##30784 |goto 82.68,73.02
accept Gao-Ran Battlefront##30785 |goto 82.68,73.02
step
talk Taran Zhu##61066
turnin Gao-Ran Battlefront##30785 |goto 76.42,82.44
accept Behind the Blockade##30884 |goto 76.42,82.44
step
talk Kim the Quiet##62875
home Gao-Ran Battlefront |goto 75.95,82.91 |q 31688 |future
step
talk Septi the Herbalist##61470
accept Treatment for the Troops##30891 |goto 75.86,83.14
step
talk Kite Master Nenshi##62903
fpath Gao-Ran Battlefront |goto 74.39,81.46
step
talk Taoshi##61469
turnin Behind the Blockade##30884 |goto 76.94,78.78
accept Unwelcome Intruders##30887 |goto 76.94,78.78
stickystart "Slay_Krik'thik_Deep-Scouts"
step
click Violet Citron##211721+
|tip They look like small blue bushes near trees around this area.
collect 10 Violet Citron##82342 |q 30891/1 |goto 77.72,76.60
step
label "Slay_Krik'thik_Deep-Scouts"
kill 12 Krik'thik Deep-Scout##61374 |q 30887/1 |goto 78.20,78.45
step
talk Septi the Herbalist##61470
turnin Treatment for the Troops##30891 |goto 75.86,83.14
step
talk Taoshi##61468
turnin Unwelcome Intruders##30887 |goto 79.47,84.46
accept Breach in the Defenses##30888 |goto 79.47,84.46
accept The Restless Watch##30890 |goto 79.47,84.46
step
talk Mao the Lookout##61467
accept Trap Setting##30889 |goto 79.39,84.45
stickystart "Slay_Krik'thik_Scentlayers"
stickystart "Rearm_Shado_Pan_Spike_Traps"
step
talk Scout Jai-Gan##61397
Tell him _"I have orders for you to return to the battlefront."_
Deliver Orders to Scout Jai-Gan |q 30890/4 |goto 79.01,90.16
step
talk Scout Ying##61396
Tell her _"I have orders for you to return to the battlefront."_
Deliver Orders to Scout Ying |q 30890/3 |goto 82.52,89.55
step
talk Scout Long##61395
Tell her _"I have orders for you to return to the battlefront."_
Deliver Orders to Scout Long |q 30890/2 |goto 81.28,86.18
step
talk Scout Wei-Chin##61378
Tell him _"I have orders for you to return to the battlefront."_
Deliver Orders to Scout Wei-Chin |q 30890/1 |goto 82.21,84.11
step
label "Slay_Krik'thik_Scentlayers"
use Shado-Pan Flare##81925
|tip Use it to reveal Scentlayers.
|tip They look like small clouds of dirt on the ground around this area.
kill 10 Krik'thik Scentlayer##61373 |q 30888/1 |goto 80.84,86.16
step
label "Rearm_Shado_Pan_Spike_Traps"
clicknpc Shado-Pan Spike Trap##61426+
|tip They look like small gray balls with spikes coming out of them on the ground around this area.
Rearm #8# Shado-Pan Spike Traps |q 30889/1 |goto 80.84,86.16
step
talk Mao the Lookout##61467
turnin Trap Setting##30889 |goto 79.39,84.45
step
talk Taoshi##61468
turnin Breach in the Defenses##30888 |goto 79.47,84.46
turnin The Restless Watch##30890 |goto 79.47,84.46
accept Returning from the Pass##30960 |goto 79.47,84.46
step
talk Taran Zhu##61066
turnin Returning from the Pass##30960 |goto 76.42,82.44
accept The Endless Swarm##30893 |goto 76.42,82.44
step
talk Septi the Herbalist##61470
accept Back on Their Feet##30892 |goto 75.86,83.14
accept Rummaging Through the Remains##30894 |goto 75.86,83.14
stickystart "Collect_Krik'thik_Limbs"
stickystart "Heal_Injured_Gao-Ran_Blackguards"
step
Slay Krik'thik enemies around this area
Kill #12# Kirk'thik Attackers |q 30893/1 |goto 74.19,87.00
step
label "Collect_Krik'thik_Limbs"
click Krik'thik Limb##214820+
|tip They look like Kirk'thik arms and legs that spawn after killing Kirk'thik enemies around this area.
collect 22 Krik'thik Limb##82722 |q 30894/1 |goto 74.19,87.00
step
label "Heal_Injured_Gao-Ran_Blackguards"
use Citron-Infused Bandages##82787
|tip Use it on Injured Gao-Ran Blackguards.
|tip They look like wounded Pandaren laying on the ground around this area.
Heal #8# Injured Gao-Ran Blackguards |q 30892/1 |goto 74.19,87.00
step
talk Septi the Herbalist##61470
turnin Back on Their Feet##30892 |goto 75.86,83.14
turnin Rummaging Through the Remains##30894 |goto 75.86,83.14
step
talk Taran Zhu##61066
turnin The Endless Swarm##30893 |goto 76.42,82.44
accept Improvised Ammunition##30895 |goto 76.42,82.44
step
talk Initiate Feng##61881
accept Thieves and Troublemakers##30896 |goto 70.45,86.38
step
talk Initiate Chao##61880
accept In the Wrong Hands##30897 |goto 70.34,86.67
stickystart "Slay_Agitated_Root_Sprites"
stickystart "Collect_Volatile_Dread_Orbs"
step
kill Needlebottom##61818
collect Initiate Chao's Sword##82783 |q 30897/1 |goto 63.08,87.68
step
label "Slay_Agitated_Root_Sprites"
Kill Agitated enemies around this area
Slay #10# Agitated Root Sprites |q 30896/1 |goto 65.08,88.21
step
label "Collect_Volatile_Dread_Orbs"
Kill Agitated enemies around this area
click Dread Orb##211873+
|tip They look like small orange orbs near trees around this area.
collect 16 Volatile Dread Orb##82723 |q 30895/1 |goto 65.08,88.21
step
talk Initiate Feng##61881
turnin Thieves and Troublemakers##30896 |goto 70.45,86.38
step
talk Initiate Chao##61880
turnin In the Wrong Hands##30897 |goto 70.34,86.67
step
talk Taran Zhu##61066
turnin Improvised Ammunition##30895 |goto 76.42,82.44
accept Cutting the Swarm##30898 |goto 76.42,82.44
step
clicknpc Dragon Launcher##62024
Get into the Turret |invehicle |goto 74.79,84.74 |q 30898
step
Kill Krik'thik enemies around this area
|tip Use the "Dragon Cannon" ability on your action bar.
Slay #50# Krik'thik Drones |q 30898/1 |goto 75.53,80.35
step
talk Taoshi##62444
turnin Cutting the Swarm##30898 |goto 74.23,85.04
accept Terror of the Dread Wastes##30900 |goto 74.23,85.04
step
kill Norvakess##62324 |q 30900/1 |goto 74.18,87.46
|tip When it casts Sonic Field avoid the pulsing yellow circles on the ground.
|tip When it burrows underground kill the adds that spawn.
step
talk Taran Zhu##61066
turnin Terror of the Dread Wastes##30900 |goto 76.42,82.44
accept Along the Southern Front##30901 |goto 76.42,82.44
step
talk Taoshi##62436
turnin Along the Southern Front##30901 |goto 67.32,80.85
accept Enraged By Hatred##30970 |goto 67.32,80.85
step
talk Initiate Pao-Me##62124
accept Taking Stock##30971 |goto 67.36,80.68
stickystart "Slay_Seething_Fleshrippers"
step
click Shado-Pan Fire Arrows##212136+
|tip They look like small bundles of arrows on the ground around this area.
collect 120 Shado-Pan Fire Arrows##83024 |q 30971/1 |goto 66.39,82.50
More can be found inside the tunnel at [66.86,83.46]
step
label "Slay_Seething_Fleshrippers"
kill 9 Seething Fleshripper##61299 |q 30970/1 |goto 66.39,82.50
More can be found inside the tunnel at [66.86,83.46]
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
accept Up In Flames##30973 |goto 61.63,79.32
step
clicknpc Keg Bomb##62192+
|tip They look like brown wooden barrels on the ground around this area.
kill 10 Kor'thik Timberhusk##61355 |q 30973/1 |goto 60.80,78.95
|tip Hit them with Keg Bombs to remove their Timberhusk buff.
You can find more around [60.44,83.06]
step
talk Taran Zhu##62273
turnin Up In Flames##30973 |goto 61.63,79.32
step
talk Lao-Chin the Iron Belly##61016
accept The Taking of Dusklight Bridge##30975 |goto 61.59,79.35
step
kill 12 Kor'thik Bloodletter##62680 |q 30975/1 |goto Dread Wastes/0 44.72,10.22
step
kill Hulking Kor'thik Fleshrender##62686 |q 30975/2 |goto 44.72,10.22
step
talk Taran Zhu##62736
turnin The Taking of Dusklight Bridge##30975 |goto Townlong Steppes/0 61.10,83.07
accept Joining the Hunt##30976 |goto 61.10,83.07
step
talk Kite Master Li-Sen##62898
fpath Rensai's Watchpost |goto 54.30,79.05
step
talk Taran Zhu##62274
turnin Joining the Hunt##30976 |goto 54.02,78.06
accept In Skilled Hands##30899 |goto 54.02,78.06
step
talk Rensai Oakhide##62278
accept Grounded Welcome##30977 |goto 53.93,78.12
step
talk Marksman Ye##62573
accept Choking the Skies##31032 |goto 51.26,83.03
step
talk Hawkmaster Nurong##61020
turnin In Skilled Hands##30899 |goto 51.67,87.24
accept Hostile Skies##30978 |goto 51.67,87.24
step
clicknpc Nurong's Cannon##62747
Pick up the Cannon |invehicle |goto 51.66,87.30 |q 30978
step
kill Kor'thik Swarmer##62300+
|tip Use the "Nurong's Cannon Shot" ability on your action bar.
Shoot Down #50# Korthi'thik Swarmers |q 30978/1 |goto 54.44,86.22
step
kill Voress'thalik##62269
|tip Use the "Nurong's Cannon Shot" ability on your action bar.
Shoot Down Voress'thalik |q 30978/2 |goto 54.30,88.23
step
talk Hawkmaster Nurong##61020
turnin Hostile Skies##30978 |goto 51.67,87.24
accept Devastation Below##30979 |goto 51.67,87.24
step
kill Voress'thalik##62270 |q 30979/1 |goto 53.95,87.30
|tip He walks around this area.
step
talk Hawkmaster Nurong##62786
turnin Devastation Below##30979 |goto 53.99,86.96
accept Heroes of the Shado-Pan##30980 |goto 53.99,86.96
step
use Wu Kao Torch##83768
|tip Use it near Korth'thik Fleetwing corpses on the ground around this area.
Burn #10# Kor'thik Fleetwing Corpses |q 31032/1 |goto 53.07,85.36
step
kill 12 Kor'thik Fleetwing##62128 |q 30977/1 |goto 51.51,84.65
step
talk Marksman Ye##62573
turnin Choking the Skies##31032 |goto 51.26,83.03
step
talk Rensai Oakhide##62278
turnin Grounded Welcome##30977 |goto 53.93,78.12
step
talk Taran Zhu##62274
turnin Heroes of the Shado-Pan##30980 |goto 54.07,77.87
accept Buried Beneath##31065 |goto 54.07,77.87
step
click Wukao Spyglass
Look Through Taoshi's Spyglass |q 31065/1 |goto 53.50,77.41
step
talk Taran Zhu##62274
turnin Buried Beneath##31065 |goto 54.07,77.87
accept Taoshi and Korvexxis##30981 |goto 54.07,77.87
accept Lao-Chin and Serevex##31063 |goto 54.07,77.87
accept Nurong and Rothek##31064 |goto 54.07,77.87
step
talk Rensai Oakhide##62278
accept Thinning the Sik'thik##31687 |goto 53.93,78.12
accept The Search for Restless Leng##31688 |goto 53.93,78.12
stickystart "Slay_Sik'thik_Mantids"
stickystart "Search_Sik'thik_Cages"
step
kill Korvexxis##62579 |q 30981/1 |goto 46.60,83.06
|tip Avoid the red circles on the ground.
step
kill Serevex##62580 |q 31063/1 |goto 45.37,77.42
|tip Avoid the red circles on the ground.
step
kill Rothek##62581 |q 31064/1 |goto 39.84,75.60
|tip Avoid the red circles on the ground.
step
label "Slay_Sik'thik_Mantids"
Kill Sik'thik enemies around this area
Slay #12# Sik'thik Mantids |q 31687/1 |goto 41.99,78.50
You can find more around [46.89,76.58]
step
label "Search_Sik'thik_Cages"
click Sik'thik Cage##214734+
|tip They look like metal amber cages on the ground around this area.
Search #8# Sik'thik Cages |q 31688/1 |goto 41.99,78.50
You can find more around [46.89,76.58]
step
click Sik'thik Cage##214734+
|tip They look like metal amber cages on the ground around this area.
Find Restless Leng |q 31688/2 |goto 41.99,78.50
|tip He's in the last Sik'thik Cage that you search.
step
talk Taran Zhu##62275
turnin Taoshi and Korvexxis##30981 |goto 47.49,78.87
turnin Lao-Chin and Serevex##31063 |goto 47.49,78.87
turnin Nurong and Rothek##31064 |goto 47.49,78.87
accept The Sha of Hatred##30968 |goto 47.49,78.87
step
Watch the dialogue
Enter the Sik'vess' Lair |goto 47.30,79.28 < 7 |walk
|tip Follow Taran Zhu and Ban Bearheart.
kill Sha of Hatred##62541 |q 30968/1 |goto 45.92,82.87
|tip Inside Sik'vess' Lair.
|tip Move out of the circles that appear on the ground.
|tip Kill the adds that spawn so you do not get overwhelmed.
step
talk Taoshi##62802
|tip Inside Sik'vess' Lair.
turnin The Sha of Hatred##30968 |goto 46.12,82.46
accept The Threat in the South##31656 |goto 46.12,82.46
step
talk Rensai Oakhide##62278
turnin Thinning the Sik'thik##31687 |goto 53.93,78.12
turnin The Search for Restless Leng##31688 |goto 53.93,78.12
step
talk Kite Master Yao-Li##62909
fpath Shado-Pan Garrison |goto 50.08,71.98
step
talk Tai Ho##61482
accept The Motives of the Mantid##30921 |goto 49.14,71.23
accept Set the Mantid Back##30923 |goto 49.14,71.23
step
talk Provisioner Bamfu##61625
|tip He walks around this area.
accept Natural Antiseptic##30922 |goto 49.14,71.32
accept The Field Armorer##30963 |goto 49.14,71.32
accept A Proper Poultice##30964 |goto 49.14,71.32
step
talk Kali the Night Watcher##62874
home Shado-Pan Garrison |goto 48.84,70.83 |q 30928 |future
step
use Gunpowder Casks##81891
|tip Use it to blow up the Kri'thik Supplies.
|tip They look like eggs on the ground.
Blow up the Kri'thik Supplies |q 30923/2 |goto 56.60,54.03
step
use Gunpowder Casks##81891
|tip Use it to blow up the Kri'thik Weapons.
|tip They look like a group of weapon racks.
Blow up the Kri'thik Weapons |q 30923/1 |goto 55.44,53.15
step
Kill Kri'thik enemies around this area
Discover the First Clue |q 30921/1 |goto 56.11,53.25
step
Kill Kri'thik enemies around this area
Discover the Second Clue |q 30921/2 |goto 56.11,53.25
step
Kill Kri'thik enemies around this area
Discover the Third Clue |q 30921/3 |goto 56.11,53.25
step
Kill Kri'thik enemies around this area
Discover the Fourth Clue |q 30921/4 |goto 56.11,53.25
stickystart "Collect_Rankbite_Shell_Fragments"
stickystart "Collect_Full_Mushan_Bladders"
step
click Mao-Willow##211779+
|tip They look like small cluster of pink grass with a few white reeds sticking up out of them around this area.
collect 11 Mao-Willow##82389 |q 30964/1 |goto 50.99,60.23
You can find more around [55.54,66.69]
step
label "Collect_Rankbite_Shell_Fragments"
Kill Rankbite enemies around this area
collect 120 Rankbite Shell Fragment##82388 |q 30963/1 |goto 50.99,60.23
You can find more around [55.54,66.69]
step
label "Collect_Full_Mushan_Bladders"
Kill Longshadow enemies around this area
collect 5 Full Mushan Bladder##82387 |q 30922/1 |goto 50.99,60.23
You can find more around [55.54,66.69]
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
accept My Father's Crossbow##30931 |goto 43.86,65.77
step
kill Et'kil##61540
collect Father's Crossbow##82332 |q 30931/1 |goto 38.67,65.31
step
talk Ku-Mo##61539
turnin My Father's Crossbow##30931 |goto 43.86,65.77
step
talk Sentinel Commander Qipan##61584
accept Father's Footsteps##30932 |goto 39.42,61.96
step
talk Ogo the Younger##61581
turnin The Wisdom of Niuzao##30924 |goto 39.33,62.21
accept Niuzao's Price##30925 |goto 39.33,62.21
step
talk Bluesaddle##61161
accept Bad Yak##30929 |goto 39.21,62.01
step
clicknpc Ruthers##61163
Gently Pet Ruthers |q 30929/1 |goto 39.28,61.92
step
clicknpc Ruthers##61163
|tip You must be standing in front of him.
Offer Ruthers an Apple |q 30929/2 |goto 39.23,61.97
step
clicknpc Ruthers##61163
Lightly Nudge Ruthers |q 30929/3 |goto 39.28,61.92
step
clicknpc Ruthers##61163
Attempt to Mount Ruthers |q 30929/4 |goto 39.28,61.92
step
talk Bluesaddle##61161
turnin Bad Yak##30929 |goto 39.21,62.01
step
clicknpc Sentinel Yalo##61683
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
Find Sentinel Yalo |q 30932/4 |goto 39.16,60.97
step
click Father's Shield##211836
Find Father's Shield |q 30932/2 |goto 37.53,61.37
step
click Father's Bedroll##211837
|tip Inside the building.
Find Father's Bedroll |q 30932/1 |goto 37.36,60.91
step
clicknpc Ha-Cha##61685
Find Ha-Cha |q 30932/3 |goto 37.66,63.96
step
talk Ku-Mo##61539
turnin Father's Footsteps##30932 |goto 39.45,61.93
step
talk Bluesaddle##61161
accept Pick a Yak##30930 |goto 35.40,56.65
step
use Yak Lasso##82468
|tip Use it on Wild Townlong Yaks.
|tip They look like friendly tan yaks around this area.
|tip It will probably take a few tries to find a Suitable Yak.
kill Wild Townlong Yak##61635+
Find a Suitable Yak |q 30930/1 |goto 33.86,52.16
You can find more around [34.61,48.66]
step
talk Bluesaddle##61161
turnin Pick a Yak##30930 |goto 35.40,56.65
stickystart "Find_the_Statuette_Body"
stickystart "Find_the_Statuette_Legs"
stickystart "Find_the_Statuette_Tail"
step
Kill Sra'thik enemies around this area
Find the Statuette Head |q 30925/1 |goto 43.25,48.82
You can find more around [41.98,45.83]
step
label "Find_the_Statuette_Body"
Kill Sra'thik enemies around this area
Find the Statuette Body |q 30925/2 |goto 43.25,48.82
You can find more around [41.98,45.83]
step
label "Find_the_Statuette_Legs"
Kill Sra'thik enemies around this area
Find the Statuette Legs |q 30925/3 |goto 43.25,48.82
You can find more around [41.98,45.83]
step
label "Find_the_Statuette_Tail"
Kill Sra'thik enemies around this area
Find the Statuette Tail |q 30925/4 |goto 43.25,48.82
You can find more around [41.98,45.83]
step
talk Ogo the Younger##61581
turnin Niuzao's Price##30925 |goto 39.33,62.21
step
talk Ogo the Elder##61580
accept The Terrible Truth##30926 |goto 39.35,62.30
step
talk Yak-Keeper Kyana##61585
accept A Trail of Fear##30928 |goto 39.15,62.07
step
talk Sentinel Commander Qipan##61584
accept Give Them Peace##30927 |goto 39.42,61.96
step
Find the Catacombs |q 30926/1 |goto 32.83,61.17
stickystart "Slay_Dreadlings"
stickystart "Give_Peace_to_Fear-Stricken Sentinels"
step
Follow the path |goto Townlong Steppes/13 54.11,65.64 < 10 |walk
Follow the path down |goto 69.29,48.56 < 7 |walk
Investigate the Niuzao Catacombs |q 30926/2 |goto 62.47,41.39
|tip Inside the cave.
step
kill Dread Shadow##62307 |q 30926/3 |goto 50.25,24.91
|tip Inside the cave.
step
talk Tai Ho##61482
|tip Inside the cave.
turnin The Terrible Truth##30926 |goto 56.18,20.20
step
label "Slay_Dreadlings"
kill 12 Dreadling##62306 |q 30928/1 |goto 66.85,65.60
|tip Inside the cave.
step
label "Give_Peace_to_Fear-Stricken Sentinels"
clicknpc Fear-Stricken Sentinel##62276+
|tip They look like Pandaren bodies on the ground inside the cave around this area.
Give Peace to #10# Fear-Stricken Sentinels |q 30927/1 |goto 66.85,65.60
step
talk Sentinel Commander Qipan##61584
turnin Give Them Peace##30927 |goto Townlong Steppes/0 39.42,61.96
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
talk Bowmistress Li##62112
turnin The Threat in the South##31656 |goto Vale of Eternal Blossoms/0 14.14,76.97
accept Falling Down##31001 |goto 14.14,76.97
accept Nope##31002 |goto 14.14,76.97
step
click Shado-Pan Rope##215393
Ride the Rope Down the Wall |invehicle |goto 14.20,76.72 |q 31001
stickystart "Slay_Dreadspinner_Tenders"
step
use Shado-Pan Dragon Gun##82807
|tip Use it on Dreadspinner Eggs.
|tip They look like white wiggling cocoons on the ground around this area.
|tip You can move while using it, even though it is channeled.
Destroy #20# Dreadspinner Eggs |q 31002/1 |goto Dread Wastes/0 73.11,22.76
step
label "Slay_Dreadspinner_Tenders"
kill 6 Dreadspinner Tender##61981 |q 31002/2 |goto 73.11,22.76
step
talk Marksman Lann##62166
Find Marksman Lann |q 31001/1 |goto 72.55,28.67
step
talk Marksman Lann##62166
turnin Falling Down##31001 |goto 72.55,28.67
turnin Nope##31002 |goto 72.55,28.67
accept Psycho Mantid##31003 |goto 72.55,28.67
step
Enter the cave |goto 73.00,27.86 < 7 |walk
kill Adjunct Kree'zot##62301 |q 31003/1 |goto 73.47,27.48
|tip Inside the cave.
step
talk Klaxxi'va Tik##62203
|tip Inside the cave.
turnin Psycho Mantid##31003 |goto 73.68,27.58
accept Preserved in Amber##31004 |goto 73.68,27.58
step
click Ancient Amber Chunk##212980
Use the Klaxxi Tuning Fork on Amber |q 31004/1 |goto 70.22,25.67
step
talk Kil'ruk the Wind-Reaver##62202
turnin Preserved in Amber##31004 |goto 70.20,25.64
accept Wakening Sickness##31005 |goto 70.20,25.64
accept Ancient Vengeance##31676 |goto 70.20,25.64
stickystart "Collect_Sapfly_Bits"
step
kill 6 Vengeful Gurthani Spirit##65452 |q 31676/1 |goto 66.52,29.43
step
label "Collect_Sapfly_Bits"
kill Sapfly##62386+
collect 100 Sapfly Bits##83075 |q 31005/1 |goto 67.11,29.88
You can find more around [71.29,29.47]
step
talk Kil'ruk the Wind-Reaver##62202
turnin Wakening Sickness##31005 |goto 70.20,25.64
turnin Ancient Vengeance##31676 |goto 70.20,25.64
accept The Klaxxi Council##31006 |goto 70.20,25.64
step
talk Kil'ruk the Wind-Reaver##62202
Tell him _"Take me to Klaxxi'vess."_
Begin Flying with Kil'ruk |invehicle |goto 70.20,25.64 |q 31006
step
Watch the dialogue
Travel to Klaxxi'vess |goto 55.01,33.99 |q 31006/1 |notravel
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Klaxxi Council##31006 |goto 54.99,34.05
accept The Dread Clutches##31007 |goto 54.99,34.05
accept Not Fit to Swarm##31660 |goto 54.99,34.05
step
talk Kor'ik##64815
accept Dead Zone##31009 |goto 54.77,34.06
step
talk Ambersmith Zikk##64599
accept Amber Arms##31008 |goto 55.02,35.55
step
talk Kik'tik##63501
fpath Klaxxi'vess |goto 55.83,34.87
step
talk Zit'tix##65220
home Klaxxi'vess |goto 55.92,32.32 |q 31179 |future
step
talk Kil'ruk the Wind-Reaver##62538
Tell him _"Please fly me to the Clutches of Shek'zeer"_
Begin Flying with Kil'ruk |invehicle |goto 54.99,34.05 |q 31009
step
Watch the dialogue
Fly to the Clutches of Shek'zeer |goto 39.01,40.52 < 5 |q 31009 |notravel
step
use Klaxxi Resonating Crystal##83276
Activate the Sonic Relay |q 31009/1 |goto 40.03,39.06
step
Click the Complete Quest Box:
turnin Dead Zone##31009
accept In Her Clutch##31010
stickystart "Slay_Shek'zeer_Clutch-Keepers"
stickystart "Slay_Shek'zeer_Swarmborns"
step
click Ancient Amber Chunk##212038
Kill the enemies that attack in waves
Awaken the Paragon |q 31010/1 |goto 44.75,41.60
step
click Sha-Haunted Crystal##214562
accept A Source of Terrifying Power##31661 |goto 44.58,41.33
step
kill Shek'zeer Bladesworn##62563+
collect 6 Amber Blade##83135 |q 31008/1 |goto 47.88,42.21
You can find more around [41.85,43.39]
step
label "Slay_Shek'zeer_Clutch-Keepers"
kill 6 Shek'zeer Clutch-Keeper##64559 |q 31007/1 |goto 43.64,40.72
You can find more around [43.27,44.56]
step
label "Slay_Shek'zeer_Swarmborns"
kill 30 Shek'zeer Swarmborn##62582 |q 31660/1 |goto 44.06,41.40
You can find more around [45.88,42.27]
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Dread Clutches##31007 |goto 54.99,34.05
turnin Not Fit to Swarm##31660 |goto 54.99,34.05
step
talk Malik the Unscathed##62774
turnin In Her Clutch##31010 |goto 54.94,34.14
step
talk Kor'ik##64815
accept A Cry From Darkness##31066 |goto 54.77,34.06
step
talk Ambersmith Zikk##64599
turnin Amber Arms##31008 |goto 55.02,35.55
turnin A Source of Terrifying Power##31661 |goto 55.02,35.55
accept Concentrated Fear##31108 |goto 55.02,35.55
step
talk Malik the Unscathed##62774
accept The Dreadsworn##31689 |goto 55.06,35.48
accept Citizens of a New Empire##31107 |goto 55.06,35.48
stickystart "Collect_Dread_Amber_Focuses"
stickystart "Slay_Vor'thik_Dreadsworn"
stickystart "Collect_Vor'thik_Eggs"
step
kill Qi'tar the Deathcaller##62863 |q 31066/1 |goto 59.37,18.41
step
label "Collect_Dread_Amber_Focuses"
kill Vor'thik Fear-Shaper##62814+
collect 4 Dread Amber Focus##86616 |q 31108/1 |goto 57.70,15.39
You can find more around [58.31,18.24]
step
label "Slay_Vor'thik_Dreadsworn"
kill 6 Vor'thik Dreadsworn##62813 |q 31689/1 |goto 58.31,15.49
step
label "Collect_Vor'thik_Eggs"
click Vor'thik Eggs##214170+
|tip They look like small gold eggs on the ground around this area.
collect 10 Vor'thik Eggs##86598 |q 31107/1 |goto 59.18,16.95
You can find more around [58.57,18.88]
step
talk Kor'ik##64815
turnin A Cry From Darkness##31066 |goto 54.77,34.06
accept Extending Our Coverage##31087 |goto 54.77,34.06
step
talk Malik the Unscathed##62774
turnin The Dreadsworn##31689 |goto 55.06,35.48
turnin Citizens of a New Empire##31107 |goto 55.06,35.48
step
talk Ambersmith Zikk##64599
turnin Concentrated Fear##31108 |goto 55.02,35.55
step
talk Kil'ruk the Wind-Reaver##62538
accept Amber Is Life##31019 |goto 55.06,35.85
stickystart "Slay_Mistblade_Rippers"
step
kill Mistblade Ripper##61970+
collect Strange Relic##82870 |goto 62.22,57.46 |q 31023 |future
step
use Strange Relic##82870
accept Relics of the Swarm##31023
step
click Mantid Relic##212079+
|tip They look like broken stone tablets on the shore and underwater around this area.
collect 8 Mantid Relic##82867 |q 31023/1 |goto 67.11,59.40
step
label "Slay_Mistblade_Rippers"
kill 7 Mistblade Ripper##61970 |q 31019/1 |goto 67.11,59.40
step
Enter the tunnel |goto 66.77,63.90 < 7 |walk
kill Mistblade Scale-Lord##63179 |q 31019/2 |goto 66.43,66.11
|tip Inside the tunnel.
step
clicknpc Ancient Amber Chunk##65354
|tip Inside the tunnel.
turnin Amber Is Life##31019 |goto 66.87,65.35
step
_Next to you:_
talk Korven the Prime##62232
accept Feeding the Beast##31020
accept Living Amber##31021
stickystart "Slay_Coldbite_Crocolisks"
step
click Amber Fragment##212011+
|tip They look like golden chunks of amber underwater around this area.
collect 9 Living Amber##82864 |n
use Living Amber##82864
Feed Korven the Prime #9# Living Amber |q 31021/1 |goto 65.53,59.11
step
label "Slay_Coldbite_Crocolisks"
kill 8 Coldbite Crocolisk##62023 |q 31020/1 |goto 65.18,58.49
|tip Underwater.
step
_Next to you:_
talk Korven the Prime##62232
turnin Feeding the Beast##31020
turnin Living Amber##31021
accept Kypari Zar##31022
step
click Sonar Tower##212933
Examine the Sonar Tower |q 31022/1 |goto 59.80,59.48
step
Watch the dialogue
Kill the enemies that attack in waves
Defend Korven the Prime |q 31022/2 |goto 59.87,59.43
step
_Next to you:_
talk Korven the Prime##62232
turnin Kypari Zar##31022
accept The Root of the Problem##31026
step
Enter the tunnel |goto 58.56,59.43 < 7 |walk
kill Coldbite Matriarch##62008 |q 31026/1 |goto 57.37,57.79
|tip Inside the tunnel.
step
_Next to you:_
talk Korven the Prime##62232
turnin The Root of the Problem##31026
step
Enter the building |goto 46.25,53.14 < 10 |walk
Locate Amberglow Hollow |q 31087/1 |goto 46.41,52.84
step
kill Adjunct Zet'uk##65478 |q 31087/2 |goto 48.09,49.76
|tip Inside the building.
step
click Silent Beacon##213250
|tip Inside the building.
Use the Resonating Crystal on the Silent Beacon |q 31087/3 |goto 48.15,49.74
step
talk Kor'ik##65365
|tip Inside the building.
turnin Extending Our Coverage##31087 |goto 48.11,49.64
accept Isolating the Frequency##31088 |goto 48.11,49.64
accept The Color of Our Energy##31090 |goto 48.11,49.64
stickystart "Slay_Ik'thik_Harvesters"
step
click Amber Collector##212923+
|tip They look like metal objects on the side of trees around this area.
collect 7 Amber-Filled Jar##85159 |q 31090/1 |goto 44.96,57.97
You can find more around [39.56,52.04]
step
label "Slay_Ik'thik_Harvesters"
kill 8 Ik'thik Harvester##63206 |q 31088/1 |goto 44.77,55.56
You can find more around [37.55,52.05]
step
Enter the building |goto 46.23,53.17 < 7 |walk
talk Kor'ik##65365
|tip Inside the building.
turnin Isolating the Frequency##31088 |goto 48.11,49.64
turnin The Color of Our Energy##31090 |goto 48.11,49.64
accept By the Sea, Nevermore##31089 |goto 48.11,49.64
step
use Klaxxi Tuning Fork##84119
Awaken Kaz'tik the Manipulator |q 31089/1 |goto 43.39,63.18
step
talk Kaz'tik the Manipulator##62540
turnin By the Sea, Nevermore##31089 |goto 43.32,63.50
accept Reunited##31091 |goto 43.32,63.50
step
talk Kaz'tik the Manipulator##63876 |goto 43.32,63.50
Tell him _"I'm ready to help you find your weapon."_
Begin Walking with Kaz'tik |goto 43.38,64.41 < 7 |noway |q 31091
step
Follow and protect Kaz'tik the Manipulator
Escort Kaz'tik to the Undisturbed Dirt |q 31091/1 |goto 41.34,71.27
step
Watch the dialogue
Find Kaz'tik's Greatest Weapon |q 31091/2 |goto 41.34,71.27
step
talk Kaz'tik the Manipulator##64344
turnin Reunited##31091 |goto 41.76,72.03
accept The Kunchong Whisperer##31359 |goto 41.76,72.03
accept Feed or Be Eaten##31092 |goto 41.76,72.03
step
kill Oracle Hiss'ir##63998 |q 31359/1 |goto 41.94,63.77
step
click Glowing Amber##214062
accept Falling to Pieces##31398 |goto 41.87,63.71
stickystart "Slay_Muckscale_Tribe_Members"
step
Kill Brineshell enemies around this area
collect 6 Succulent Turtle Filet##86489 |n
use Succulent Turtle Filet##86489
Feed #6# Succulent Turtle Filets to Kovok |q 31092/1 |goto 38.12,57.32
You can find more around [32.95,62.69]
step
label "Slay_Muckscale_Tribe_Members"
Kill Muckscale enemies around this area
Slay #10# Muckscale Tribe Members |q 31359/2 |goto 38.09,57.68
You can find more around [41.16,58.08]
step
talk Kaz'tik the Manipulator##63758
turnin Feed or Be Eaten##31092 |goto 54.25,35.78
turnin The Kunchong Whisperer##31359 |goto 54.25,35.78
turnin Falling to Pieces##31398 |goto 54.25,35.78
step
talk Ambersmith Zikk##64599
turnin Relics of the Swarm##31023 |goto 55.02,35.55
accept Gambling Problem##31727 |goto 55.02,35.55
step
talk Kil'ruk the Wind-Reaver##62538
accept A Not So Friendly Request##31730 |goto 55.06,35.85
step
talk Sapmaster Vu##62666
turnin A Not So Friendly Request##31730 |goto 51.21,11.39
accept The Heavens Hum With War##31067 |goto 51.21,11.39
step
talk Jin the Flying Keg##63500
fpath The Sunset Brewgarden |goto 50.21,12.24
step
Enter the building |goto 53.60,15.51 < 10 |walk
click Scroll of Auspice##212389
|tip Inside the building.
accept Sacred Recipe##31068 |goto 53.08,12.36
step
kill Azzix K'tai##62843 |q 31067/1 |goto 52.70,10.14
|tip He walks around this area inside the building.
step
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
accept Daggers of the Great Ones##31070 |goto 51.16,11.21
step
talk Thirsty Missho##62859
accept I Bring Us Great Shame##31071 |goto 51.13,11.12
step
talk Chen Stormstout##62779
accept Fate of the Stormstouts##31129 |or |goto 50.45,12.05
'|accept Fate of the Stormstouts##31076 |or |goto 50.45,12.05
step
talk Lya of Ten Songs##62667
Ask her _"Have you seen any Stormstouts here in Brewgarden?"_
Speak with Lya of Ten Songs |q 31129/2 |goto 50.73,11.71 |only if haveq(31129) or completedq(31129)
Speak with Lya of Ten Songs |q 31076/2 |goto 50.73,11.71 |only if haveq(31076) or completedq(31076)
step
talk Sapmaster Vu##62666
Ask him _"Have you seen anybody named Stormstout come through here?"_
Speak with Sapmaster Vu |q 31129/1 |goto 51.21,11.39 |only if haveq(31129) or completedq(31129)
Speak with Sapmaster Vu |q 31076/1 |goto 51.21,11.39 |only if haveq(31076) or completedq(31076)
step
talk Big Dan Stormstout##62845
Ask him _"Is your name really Stormstout?"_
Speak with Big Dan Stormstout |q 31129/3 |goto 50.91,11.37 |only if haveq(31129) or completedq(31129)
Speak with Big Dan Stormstout |q 31076/3 |goto 50.91,11.37 |only if haveq(31076) or completedq(31076)
step
talk Chen Stormstout##62779
turnin Fate of the Stormstouts##31129 |or |goto 50.45,12.05 |only if haveq(31129) or completedq(31129)
turnin Fate of the Stormstouts##31076 |or |goto 50.45,12.05 |only if haveq(31076) or completedq(31076)
step
talk Chen Stormstout##62779
accept Evie Stormstout##31077 |goto 54.10,20.48
stickystart "Harvest_Shade"
step
click Lost Keg##212540
collect Lost Keg##83781 |q 31071/2 |goto 54.41,20.33
step
click Lost Picnic Supplies##212556
collect Lost Picnic Supplies##83783 |q 31071/3 |goto 56.02,19.44
step
click Lost Mug##212548
collect Lost Mugs##83782 |q 31071/1 |goto 51.72,19.07
step
kill Ilikkax##62833
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
collect Blade of Ilikkax##84112 |q 31072/2 |goto 50.72,20.49
step
kill Kz'Kzik##62832
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
collect Blade of Kz'Kzik##84111 |q 31072/1 |goto 52.63,20.64
step
label "Harvest_Shade"
Kill Dread enemies around this area
Harvest #100# Shade |q 31069/1 |goto 55.82,18.23
step
kill Frightened Mushan##62760+
collect 3 Large Mushan Tooth##84107 |q 31070/1 |goto 51.56,16.43
You can find more around [48.68,20.15]
step
talk Lya of Ten Songs##62667
turnin Rending Daggers##31072 |goto 50.73,11.71
accept Wood and Shade##31074 |goto 50.73,11.71
step
talk Sapmaster Vu##62666
turnin Bound With Shade##31069 |goto 51.21,11.39
step
talk Olon##62668
turnin Daggers of the Great Ones##31070 |goto 51.16,11.21
step
talk Thirsty Missho##62859
turnin I Bring Us Great Shame##31071 |goto 51.13,11.12
step
talk Sapmaster Vu##62666
accept Bound With Wood##31073 |goto 51.21,11.39
step
talk Defender Azzo##63218
accept Kor'thik Aggression##31133 |goto 50.19,12.45
step
Meet up with Chen |q 31077/1 |goto 50.18,10.20
step
Watch the dialogue
Listen to Chen's Eulogy |q 31077/2 |goto 50.18,10.20
step
talk Chen Stormstout##62779
turnin Evie Stormstout##31077 |goto 50.18,10.20
accept Han Stormstout##31078 |goto 50.18,10.20
stickystart "Slay_Kor'thik_Mantids"
step
_This quest may be bugged_ for level 50+ players due to the N'Zoth Invasions |only if level >= 50
Enter the building |goto Dread Wastes/0 44.79,15.86 < 7 |walk
Find the Mark of the Empress |q 31074/1 |goto 44.52,16.78
|tip Inside the building.
step
_This quest may be bugged_ for level 50+ players due to the N'Zoth Invasions |only if level >= 50
Enter the building |goto 43.05,13.98 < 7 |walk
Find the Heartroot of Kypari Kor |q 31074/2 |goto 43.11,14.98
|tip Inside the building.
step
Enter the building |goto 47.06,16.80 < 10 |walk
clicknpc Han Stormstout##62776
|tip Inside the building.
|tip Run around the outside of the room to avoid the beams of amber.
Find Han Stormstout |q 31078/1 |goto 43.77,16.73
step
talk Chen Stormstout##62779
|tip Inside the building.
turnin Han Stormstout##31078 |goto 44.41,16.81
step
_This quest is bugged_ for level 50+ players due to the N'Zoth Invasions |only if level >= 50
clicknpc Withered Husk##62876+
|tip They look like Tree Ent bodies laying on the ground around this area.
|tip You can do this while mounted.
collect 8 Fragrant Corewood##84118 |q 31073/1 |goto 43.37,8.63
You can find more around [46.81,14.54]
step
label "Slay_Kor'thik_Mantids"
_This quest is bugged_ for level 50+ players due to the N'Zoth Invasions |only if level >= 50
Kill Kor'thik enemies around this area
Slay #17# Kor'thik Mantid |q 31133/1 |goto 43.67,12.20
You can find more around [45.13,13.21]
step
talk Defender Azzo##63218
turnin Kor'thik Aggression##31133 |goto 50.19,12.45
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
talk Boggeo##62772
accept The Horror Comes A-Rising##31079 |goto 38.16,17.33
step
talk Olon##62668
accept Fiery Wings##31080 |goto 38.19,17.12
step
talk Lya of Ten Songs##62667
accept Incantations Fae and Primal##31081 |goto 38.30,17.14
step
talk Chief Rikkitun##62771
accept Great Vessel of Salvation##31082 |goto 38.65,17.25
stickystart "Slay_Shuffling_Mistlurkers"
step
kill Mygoness##62766 |q 31081/2 |goto 32.84,19.33
|tip It walks around this area.
|tip It will appear on your minimap as a yellow dot.
step
kill Ahgunoss##62765 |q 31081/1 |goto 32.10,17.36
|tip It will appear on your minimap as a yellow dot.
stickystart "Collect_Flitterling_Dust"
stickystart "Slay_Kyparites"
step
label "Slay_Shuffling_Mistlurkers"
kill 7 Shuffling Mistlurker##65404 |q 31079/1 |goto 34.89,17.94
You can find more around [36.60,15.64]
step
label "Collect_Flitterling_Dust"
clicknpc Rikkilea Flitterling##62764+
|tip They look like purple and teal dragon faeries flying around this area.
|tip Click them and then run behind them to catch the dust.
collect 88 Flitterling Dust##84239 |q 31080/1 |goto 36.05,22.88
You can find more around [37.36,19.04]
step
label "Slay_Kyparites"
kill 2 Kyparite##63007 |q 31079/2 |goto 34.42,21.23
|tip They look like large worms that leave a trail of dust and rubble as they burrow around this area.
step
label "Gather_a_Motherseed"
use Rikkitun Bell##84267
clicknpc Motherseed##62601+ |goto 36.04,20.36
|tip They look like large acorns on the ground around this area.
Gather a Motherseed
confirm |q 31082
step
Bring #3# Motherseed Back to the Motherseed Pit |q 31082/1 |goto 36.87,17.54
Click here to find another Motherseed |confirm |next "Gather_a_Motherseed"
step
talk Boggeo##62772
turnin The Horror Comes A-Rising##31079 |goto 38.16,17.33
step
talk Olon##62668
turnin Fiery Wings##31080 |goto 38.19,17.12
step
talk Lya of Ten Songs##62667
turnin Incantations Fae and Primal##31081 |goto 38.30,17.14
step
talk Chief Rikkitun##62771
turnin Great Vessel of Salvation##31082 |goto 38.65,17.25
accept Bind the Glamour##31084 |goto 38.65,17.25
step
talk Chief Rikkitun##62771 |goto 38.65,17.25
Tell him _"The forked blade is ready, and we have given our gift. Please perform your incantation."_
Begin Following Chief Rikkitun |goto 38.47,17.67 < 7 |noway |q 31084
step
Follow Chief Rikkitun
Watch the dialogue
Allow Chief Rikkitun to Enchant the Forked Blade |q 31084/1 |goto 39.60,23.17
step
talk Chief Rikkitun##62771
turnin Bind the Glamour##31084 |goto 38.65,17.25
step
talk Lya of Ten Songs##62667
accept Fires and Fears of Old##31085 |goto 38.30,17.14
step
talk Sapmaster Vu##62666
accept Blood of Ancients##31086 |goto 38.18,17.18
step
click Solidified Amber##212902
collect Chunk of Solidified Amber##84779 |q 31086/1 |goto 30.22,30.58
step
click Enormous Landslide
Enter the building |goto 30.20,31.69 < 7 |walk
use Ruining Fork##84771
Use the Ruining Fork on Iyyokuk the Lucid |q 31085/1 |goto 32.41,33.64
|tip Inside the building.
step
Kill the Adjunct enemies that spawn
|tip Inside the building.
Protect Iyyokuk the Lucid Until he Escapes |q 31085/2 |goto 33.22,34.33
step
talk Lya of Ten Songs##62667
turnin Fires and Fears of Old##31085 |goto 50.28,12.06
step
talk Sapmaster Vu##62666
turnin Blood of Ancients##31086 |goto 50.22,12.10
step
talk Min the Breeze Rider##63498
fpath Soggy's Gamble |goto 56.10,70.18
step
talk Deck Boss Arie##63349
turnin Soggy's Gamble##31727 |goto 54.72,72.17
accept Mazu's Breath##31265 |goto 54.72,72.17
step
use Potion of Mazu's Breath##85869
Drink the Potion of Mazu's Breath |q 31265/1
step
talk Deck Boss Arie##63349
turnin Mazu's Breath##31265 |goto 54.72,72.17
accept Fresh Pots##31181 |goto 54.72,72.17
accept You Otter Know##31182 |goto 54.72,72.17
stickystart "Bait_Crab_Pots"
step
clicknpc Coldwhisker Otter##63376+
|tip They look like small friendly otters underwater around this area.
use Bag of Clams##85231
|tip Use it on Coldwhisker Otters.
Feed #8# Coldwhisker Otters |q 31182/1 |goto 59.36,81.97
step
label "Bait_Crab_Pots"
kill Sea Monarch##63470+
|tip Underwater around this area.
collect Sea Monarch Chunks##85230+ |n
click Empty Crab Pot+
|tip They look like cages on the ground underwater around this area.
|tip You need 2 Sea Monarch Chunks to bait each crab pot.
Bait #10# Crab Pots |q 31181/1 |goto 59.36,81.97
step
talk Deck Boss Arie##63349
turnin Fresh Pots##31181 |goto 54.72,72.17
turnin You Otter Know##31182 |goto 54.72,72.17
accept Meet the Cap'n##31183 |goto 54.72,72.17
step
talk Captain "Soggy" Su-Dao##63317
|tip Inside the building.
turnin Meet the Cap'n##31183 |goto 55.66,72.50
accept Walking Dog##31185 |goto 55.66,72.50
accept Old Age and Treachery##31184 |goto 55.66,72.50
step
talk Deck Boss Arie##63349
accept On the Crab##31187 |goto 54.72,72.17
accept Shark Week##31188 |goto 54.72,72.17
step
use Dog's Whistle##85955
_Next to you:_
talk Dog##63955
accept Dog Food##31186 |goto 50.9,78.1
stickystart "Feed_Dog_10_Times"
stickystart "Collect_Thresher_Teeth"
stickystart "Send_Full_Crab_Pots_to_the_Surface"
step
Bring Dog to the Silt Vents |q 31185/1 |goto 46.43,73.99
|tip Underwater.
step
Bring Dog to the Wreck of the Mist-Hopper |q 31185/2 |goto 44.9,78.0
|tip Underwater.
step
click Soggy's Footlocker##213454
|tip Underwater.
collect Sealed Charter Tube##85886 |q 31184/1 |goto 44.73,78.66
step
Bring Dog to the Whale Corpse |q 31185/3 |goto 40.15,78.99
|tip Underwater.
step
label "Feed_Dog_10_Times"
kill Rockshell Snapclaw##63369+
|tip Underwater around this area.
Feed Dog #10# Times |q 31186/1 |goto 45.49,76.02
step
label "Collect_Thresher_Teeth"
kill Longfin Thresher##63944+
|tip Underwater around this area.
collect Thresher Jaw##85998 |n
use Thresher Jaw##85998
collect 200 Thresher Teeth##85999 |q 31188/1 |goto 45.49,76.02
step
label "Send_Full_Crab_Pots_to_the_Surface"
click Full Crab Pot##213508+
|tip They look like red and brown cages on the sea floor around this area.
Send #8# Full Crab Pots to the Surface |q 31187/1 |goto 45.49,76.02
step
_Next to you:_
talk Dog##63955
|tip If he's not next to you, use Dog's Whistle while swimming to summon him again.
turnin Dog Food##31186
step
talk Deck Boss Arie##63349
turnin On the Crab##31187 |goto 54.72,72.17
turnin Shark Week##31188 |goto 54.72,72.17
step
talk Captain "Soggy" Su-Dao##63317
|tip Inside the building.
turnin Walking Dog##31185 |goto 55.66,72.50
turnin Old Age and Treachery##31184 |goto 55.66,72.50
step
talk Deck Boss Arie##63349
accept Reeltime Strategy##31189 |goto 54.72,72.17
step
talk Master Angler Ju Lien##64259
Speak with Master Angler Ju Lien |q 31189/1 |goto 53.64,76.05
step
talk Master Angler Ju Lien##64259
Tell him _"Deck Boss said you needed some help."_
Click each rod next to him and fight the Jiao Spawns.
kill Jiao Spawn##64273+
Assist Master Angler Ju Lien |q 31189/2 |goto 53.64,76.05
step
talk Deck Boss Arie##63349
turnin Reeltime Strategy##31189 |goto 54.72,72.17
step
talk Captain "Soggy" Su-Dao##63317
accept The Mariner's Revenge##31190 |goto 54.77,72.11
step
clicknpc Mist-Hopper Jr.##64350
Get in the Mist Hopper |invehicle |goto 56.14,76.33 |q 31190
stickystart "Get_Port_Side_Hits"
stickystart "Get_Starboard_Hits"
stickystart "Get_Stern_Hits"
step
Get #25# Bow Hits |q 31190/1 |goto 54.35,79.93
|tip Use the "Harpoon Cannon" ability on your action bar.
|tip Shoot the red targets on Jiao.
step
label "Get_Port_Side_Hits"
Get #25# Port Side Hits |q 31190/2 |goto 54.35,79.93
|tip Use the "Harpoon Cannon" ability on your action bar.
|tip Shoot the red targets on Jiao.
step
label "Get_Starboard_Hits"
Get #25# Starboard Hits |q 31190/3 |goto 54.35,79.93
|tip Use the "Harpoon Cannon" ability on your action bar.
|tip Shoot the red targets on Jiao.
step
label "Get_Stern_Hits"
Get #25# Stern Hits |q 31190/4 |goto 54.35,79.93
|tip Use the "Harpoon Cannon" ability on your action bar.
|tip Shoot the red targets on Jiao.
step
Click the yellow arrow on your action bar |outvehicle |q 31190
step
talk Captain "Soggy" Su-Dao##63317
turnin The Mariner's Revenge##31190 |goto 56.58,75.92
step
talk Deck Boss Arie##63349
accept Mazu's Bounty##31354 |goto 56.57,75.82
step
talk Master Angler Ju Lien##64259
turnin Mazu's Bounty##31354 |goto 54.90,72.83
accept Once in a Hundred Lifetimes##32030 |goto 54.90,72.83
step
talk Klaxxi'va Ik##65395
turnin Once in a Hundred Lifetimes##32030 |goto 54.72,34.74
accept Overthrone##31782 |goto 54.72,34.74
step
Witness the Klaxxi Ritual |q 31782/1
step
talk Klaxxi'va Vor##62519
turnin Overthrone##31782 |goto 55.11,34.25
step
talk Kil'ruk the Wind-Reaver##62538
accept Skeer the Bloodseeker##31175 |goto 55.06,35.85
step
talk Kor'ik##64815
accept The Zan'thik Dig##31605 |goto 54.77,34.06
step
Enter the underwater cave |goto 25.79,54.15 < 10 |walk
click Ancient Amber Chunk##212980
|tip Inside the underwater cave.
Awaken Skeer the Bloodseeker |q 31175/1 |goto 25.72,50.35
step
talk Skeer the Bloodseeker##63071
|tip Inside the underwater cave.
turnin Skeer the Bloodseeker##31175 |goto 25.71,50.30
accept A Strange Appetite##31176 |goto 25.71,50.30
accept Fine Dining##31177 |goto 25.71,50.30
accept A Bloody Delight##31178 |goto 25.71,50.30
stickystart "Collect_Clacker_Tails"
stickystart "Collect_Starfish_Meats"
step
kill Dread Remora##63353+
|tip Underwater around this area.
collect 100 Volatile Blood##85229 |q 31178/1 |goto 26.36,58.23
You can find more around [25.28,63.53]
step
label "Collect_Clacker_Tails"
kill Briny Clacker##63348+
|tip Underwater around this area.
collect 8 Clacker Tail##85212 |q 31177/1 |goto 26.36,58.23
You can find more around [25.28,63.53]
step
label "Collect_Starfish_Meats"
click Spiny Starfish##212988+
|tip They look like little pink starfish on the sea floor around this area.
collect 12 Starfish Meat##85211 |q 31176/1 |goto 26.36,58.23
You can find more around [25.28,63.53]
step
Enter the underwater cave |goto 25.79,54.15 < 10 |walk
talk Skeer the Bloodseeker##63071
|tip Inside the underwater cave.
turnin A Strange Appetite##31176 |goto 25.71,50.60
turnin Fine Dining##31177 |goto 25.71,50.60
turnin A Bloody Delight##31178  |goto 25.71,50.60
accept The Scent of Blood##31179 |goto 25.71,50.60
step
kill 12 Muckscale Flesheater##63465 |q 31179/1 |goto 25.70,51.00
|tip Inside the underwater cave.
step
kill Muckscale Serpentus##63466 |q 31179/2 |goto 25.70,51.00
|tip Inside the underwater cave.
step
talk Rik'kal the Dissector##65253
turnin The Zan'thik Dig##31605 |goto 31.80,88.94
accept The Dissector Wakens##31606 |goto 31.80,88.94
step
Kill the enemies that attack in waves
Awaken the Paragon |q 31606/1 |goto 31.80,88.94
step
talk Rik'kal the Dissector##65253
turnin The Dissector Wakens##31606 |goto 31.80,88.94
step
talk Kil'ruk the Wind-Reaver##62538
turnin The Scent of Blood##31179 |goto 55.06,35.85
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
Jade Forest Quests |achieve 6534 |loadguide "Leveling Guides\\Pandaria (10-60)\\The Jade Forest (10-60)"
Valley of the Four Winds Quests |achieve 6301 |loadguide "Leveling Guides\\Pandaria (10-60)\\Valley of the Four Winds (15-60)"
Townlong Steppes Quests |achieve 6539 |loadguide "Leveling Guides\\Pandaria (10-60)\\Townlong Steppes (25-60)"
Dread Wastes Quests |achieve 6540 |loadguide "Leveling Guides\\Pandaria (10-60)\\Dread Wastes (30-60)"
Krasarang Wilds Quests |achieve 6536 |loadguide "Leveling Guides\\Pandaria (10-60)\\Krasarang Wilds (15-60)"
Kun-Lai Summit Quests |achieve 6538 |loadguide "Leveling Guides\\Pandaria (10-60)\\Kun-Lai Summit (20-60)"
step
_Congratulations!_
You Eearned the "Loremaster of Pandaria" Achievement
]])
