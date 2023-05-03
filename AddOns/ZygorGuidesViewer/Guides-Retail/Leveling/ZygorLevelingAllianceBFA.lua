local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Tiragarde Sound (10-60)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Tiragarde Sound storylines:\n\nA Nation Divided\nCastaways and Cutouts\nDefenders of Daelin's Gate\nThe Norwington Estate\nThe Ashvane Trading Company\nFreehold\nThe Shadow Over Anglepoint",
condition_suggested=function() return level >= 10 and not completedq(50972) end,
image=ZGV.IMAGESDIR.."TiragardeSound",
next="Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Drustvar (20-60)",
},[[
step
talk Hero's Herald##49748
accept Tides of War##46727 |goto Stormwind City/0 62.17,30.14
|only if not haveq(59641) and not completedq(59641)
step
Enter the building |goto 80.62,37.89 < 15 |walk
Watch the dialogue
|tip Inside the building.
Attend the War Council |q 46727/1 |goto 80.27,33.13
|only if haveq(46727)
step
click Vision of Sailor's Memory
|tip Inside the building.
Witness the Vision of the Sailor's Memory |q 46727/2 |goto 80.48,33.50
|only if haveq(46727)
step
talk Anduin Wrynn##120756
|tip Inside the building.
turnin Tides of War##46727 |goto 80.26,33.13
accept The Nation of Kul Tiras##46728 |goto 80.26,33.13
|only if (haveq(46727) or completedq(46727)) and not completedq(46728)
step
talk Lady Jaina Proudmoore##120590
Tell her _"I'm ready to set sail!"_
_Or_
Tell her _"I've heard this tale before... <Skip the Kul Tiras introductory quests and begin your journey in Boralus.>"_
|tip You will only be able to select this option if you've already completed the introductory quests on a previous character.
Speak with Lady Jaina Proudmoore |q 46728/1 |goto 22.79,24.69
|only if haveq(46728)
step
Travel to Boralus |goto Boralus/0 65.73,50.63 < 10 |noway |c |q 46728
|only if haveq(46728)
step
talk Lady Jaina Proudmoore##120922
turnin The Nation of Kul Tiras##46728 |goto Boralus/0 65.57,50.75 |only if haveq(46728) or completedq(46728)
accept Daughter of the Sea##51341 |goto Boralus/0 65.57,50.75
step
Watch the dialogue
|tip You will be teleported automatically.
Attend the Audience with Katherine Proudmoore |q 51341/1
step
Travel to Tol Dagor |complete zone("Tol Dagor Isle") |q 51341
step
talk Flynn Fairwind##121239
|tip He walks to this location.
|tip Inside the building.
turnin Daughter of the Sea##51341 |goto Tol Dagor Isle/0 47.38,46.26
accept Out Like Flynn##47098 |goto Tol Dagor Isle/0 47.38,46.26
step
Watch the dialogue
|tip Inside the building.
clicknpc Flynn Fairwind##121239
|tip He walks to this location.
Punch Flynn |q 47098/1 |goto 46.63,45.52
step
Watch the dialogue
|tip Inside the building.
click Cell Block Lever
Pull the Cell Block Lever |q 47098/2 |goto 46.60,41.15
step
click Equipment Locker##213651
|tip Inside the building.
Recover the Equipment |q 47098/3 |goto 46.95,44.47
step
kill Block Warden Carmine##124024 |q 47098/4 |goto 40.28,54.77
|tip Inside the building.
step
click Glittering Gunpowder
|tip Inside the building.
collect Glittering Gunpowder##160326 |q 47098/5 |goto 43.57,54.08
step
click Cell Block Gate
|tip Inside the building.
Watch the dialogue
Open the Cell Block Gate |q 47098/6 |goto 43.09,36.95
step
Run down the stairs |goto 44.58,35.82 < 10 |walk
Enter the Sewers |q 47098/7 |goto 39.10,51.40
|tip Walk into the tunnel.
|tip Downstairs inside the building.
step
Follow the path through the tunnel to the exit |goto 51.12,47.46 < 10 |walk
clicknpc Getaway Boat##124030
|tip Run around the mountain.
Board the Getaway Boat |q 47098/8 |goto 60.98,26.32
step
Watch the dialogue
Travel to Boralus |complete zone("Boralus") |q 47098
step
talk Taelia##121235
turnin Out Like Flynn##47098 |goto Boralus/0 75.70,23.59
accept Get Your Bearings##47099 |goto Boralus/0 75.70,23.59
step
Watch the dialogue
Visit the Ferry Dock |q 47099/1 |goto 74.25,24.58
step
Run up the stairs and enter the building |goto 75.57,19.08 < 10 |walk
Watch the dialogue
|tip Inside the building.
Visit the Tradewinds Counting House |q 47099/2 |goto 75.57,17.92
step
Enter the building |goto 73.55,13.71 < 10 |walk
Watch the dialogue
|tip Inside the building.
Visit the Snug Harbor Tavern |q 47099/3 |goto 73.63,13.05
step
talk Wesley Rockhold##135153
|tip Inside the building.
home The Snug Harbor |goto 74.12,12.68 |q 47189 |future
step
Watch the dialogue
Visit the Flight Master |q 47099/4 |goto 67.14,15.35
step
talk Joan Weber##124725
fpath Tradewinds Market |goto 66.97,15.01
step
_Next to you:_
talk Taelia
turnin Get Your Bearings##47099
accept The Old Knight##46729
step
Jump down and enter the building |goto 68.83,21.11 < 10 |walk
Watch the dialogue
|tip Inside the building.
Find Cyrus Crestfall |q 46729/1 |goto 67.08,23.47
step
Watch the dialogue
|tip Inside the building.
talk Cyrus Crestfall##122370
Choose _<Shake his hand.>_
Speak with Cyrus Crestfall |q 46729/2 |goto 68.01,21.89
step
Watch the dialogue
|tip Inside the building.
Hear Cyrus' Tale |q 46729/3 |goto 68.01,21.89
step
talk Taelia##121235
|tip Inside the building.
turnin The Old Knight##46729 |goto 68.17,21.97
accept Sanctum of the Sages##47186 |goto 68.17,21.97
step
Watch the dialogue
talk Cyrus Crestfall##122370
|tip Inside the building.
accept Ferry Pass##52128 |goto 68.01,21.89
step
talk Cyrus Crestfall##122370
|tip Inside the building.
turnin Ferry Pass##52128 |goto 68.01,21.89
step
talk Cyrus Crestfall##122370
|tip Inside the building.
turnin Ferry Pass##52128 |goto 68.01,21.89
step
Enter the building |goto 70.40,17.68 < 10 |walk
talk 7th Legion Magus##137066
|tip Inside the building.
Tell her _"The local authority has given us permission to open portals here."_
Speak with the 7th Legion Magus |q 47186/1 |goto 70.74,16.31
step
Enter the building |goto 68.83,21.11 < 10 |walk
talk Taelia##121235
|tip Inside the building.
turnin Sanctum of the Sages##47186 |goto  68.17,21.97
accept A Nation Divided##47189 |goto 68.17,21.97
step
Watch the dialogue
click Scouting Map
|tip Inside the building.
Inspect the Scouting Map |q 47189/1 |goto 68.38,22.10
step
talk Taelia##121235
|tip Inside the building.
turnin A Nation Divided##47189 |goto 68.17,21.97
step
click Scouting Map
|tip Inside the building.
accept Tiragarde Sound##47960 |goto 68.38,22.06
step
talk Taelia##121235
|tip Inside the building.
turnin Tiragarde Sound##47960 |goto 68.17,21.97
step
talk Flynn Fairwind##121239
|tip Inside the building.
accept The Smoking Gun##47181 |goto 67.59,22.22
step
Use Flynn's Pistol
|tip It appears as a button on the screen.
|tip Inside the building.
Shoot the Water Barrel |q 47181/1 |goto 67.59,22.22
step
talk Flynn Fairwind##121239
|tip Inside the building.
turnin The Smoking Gun##47181 |goto 67.59,22.22
step
talk Cyrus Crestfall##122370
|tip Inside the building.
accept The Ashvane Trading Company##47485 |goto 68.01,21.89
step
talk Donald Harris##124289
accept A Bundle of Furs##51144 |goto 72.18,16.02
step
Cross the bridge |goto 52.55,18.80 < 20 |only if walking
talk Davey Brindle##134776
accept Worker's Rights##50699 |goto Tiragarde Sound/0 67.40,24.14
step
talk Mariah McKee##133210
fpath Hatherford |goto 66.93,23.07
step
click WANTED: Gryphon 'Nappers
accept WANTED: Gryphon 'Nappers##51358 |goto 66.85,24.36
step
Enter the building |goto 66.43,24.42 < 10 |walk
talk Dandy Jones##133214
|tip Inside the building.
turnin A Bundle of Furs##51144 |goto 66.27,24.29
step
talk Dandy Jones##133214
|tip Inside the building.
home Hatherford |goto 66.27,24.29 |q 48903 |future
step
talk Hatherford Guard##139089
accept Drust in Time##50700 |goto 66.32,24.81
step
click Formal Invitation
accept The Norwington Festival##48070 |goto 67.14,24.80
step
Enter the cave |goto 67.36,22.01 < 10 |walk
kill Lindel the Snatcher##137367 |q 51358/1 |goto 67.27,21.82
kill Silent Boris##137369 |q 51358/2 |goto 67.27,21.82
|tip Inside the cave.
|tip If you have trouble, try to find someone to help you, or skip the quest.
step
Enter the building |goto 68.89,20.43 < 10 |walk
talk Maynard Algerson##129613
|tip Inside the building.
turnin Worker's Rights##50699 |goto 68.93,20.59
accept Maximizing Resources##49465 |goto 68.93,20.59
accept Inventory Deficit##49452 |goto 68.93,20.59
step
talk Benjamin Algerson##129669
accept Time Off Requests##49451 |goto 68.89,19.84
stickystart "Collect_Reclaimed_Axes"
stickystart "Collect_Wood_Adorned_Skulls"
step
talk Lyssa Treewarden##129670
accept Give a Dam##49453 |goto 66.62,17.32
accept Sowing Saplings##48557 |goto 66.62,17.32
stickystart "Grow_Trees_In_Loamy_Soil"
step
clicknpc Woodchewing Beaver##129724+
Shoo #6# Woodchewing Beavers |q 49453/1 |goto 66.66,16.64
step
label "Grow_Trees_In_Loamy_Soil"
click Loamy Soil+
|tip They look like piles of green and brown dirt on the ground around this area.
Grow #4# Trees in Loamy Soil |q 48557/1 |goto 66.66,16.64
step
talk Lyssa Treewarden##129670
turnin Give a Dam##49453 |goto 66.62,17.32
turnin Sowing Saplings##48557 |goto 66.62,17.32
step
clicknpc Entangled Lumberjack##129745+
|tip They look like standing humans trapped in brown tree roots on the ground around this area.
Free #5# Entangled Lumberjacks |q 49451/1 |goto 68.28,18.29
step
label "Collect_Reclaimed_Axes"
click Abandoned Axe##281909+
|tip They look like metal hatchets on the ground around this area.
collect 5 Reclaimed Axe##158063 |q 49452/1 |goto 68.28,18.29
step
label "Collect_Wood_Adorned_Skulls"
Kill enemies around this area
|tip Timberfang Summonlings will not drop the quest item.
collect 5 Wood-Adorned Skull##154993 |q 49465/1 |goto 68.28,18.29
step
Enter the building |goto 68.89,20.43 < 10 |walk
talk Maynard Algerson##129613
|tip Inside the building.
turnin Maximizing Resources##49465 |goto 68.93,20.59
turnin Inventory Deficit##49452 |goto 68.93,20.59
turnin Time Off Requests##49451 |goto 68.93,20.59
accept Emergent Strategy##48369 |goto 68.93,20.59
step
talk Benjamin Algerson##129669
turnin Emergent Strategy##48369 |goto 70.09,18.58
accept Required Webinar##49468 |goto 70.09,18.58
accept Pest Prevention##49454 |goto 70.09,18.58
accept Incident Reports##49450 |goto 70.09,18.58
stickystart "Free_Webbed_Lumberjacks"
stickystart "Destroy_Mossfang_Eggs"
stickystart "Slay_Enthralled_Beasts"
step
talk Terrence Foster##134325
accept The Witch's Pet##50058 |goto 72.96,17.54
stickystop "Free_Webbed_Lumberjacks"
stickystop "Destroy_Mossfang_Eggs"
stickystop "Slay_Enthralled_Beasts"
step
Enter the cave |goto 73.04,17.85 < 15 |walk
kill Mossfang Matriarch##129833 |q 50058/1 |goto 73.50,18.74
|tip Inside the cave.
step
_Click the Complete Quest Box:_
|tip In the quest tracker area.
turnin The Witch's Pet##50058
stickystart "Destroy_Mossfang_Eggs"
stickystart "Slay_Enthralled_Beasts"
step
label "Free_Webbed_Lumberjacks"
clicknpc Webbed Lumberjack##134122+
|tip They look like squirming cocoons on the ground around this area.
Free #5# Webbed Lumberjacks |q 49468/1 |goto 71.11,17.75
step
label "Destroy_Mossfang_Eggs"
clicknpc Mossfang Egg##129842+
|tip They look like large white eggs on the ground around this area.
Destroy #12# Mossfang Eggs |q 49454/1 |goto 71.11,17.75
step
label "Slay_Enthralled_Beasts"
Kill Enthralled enemies around this area
Slay #10# Enthralled Beasts |q 49450/1 |goto 71.11,17.75
step
talk Benjamin Algerson##129669
turnin Required Webinar##49468 |goto 70.09,18.58
turnin Pest Prevention##49454 |goto 70.09,18.58
turnin Incident Reports##49450 |goto 70.09,18.58
accept Witch of the Woods##49467 |goto 70.09,18.58
step
kill Witch of the Woods##129625
collect Petula's Locket##155586 |q 49467/1 |goto 70.45,13.75
step
talk Maynard Algerson##129613
turnin Witch of the Woods##49467 |goto 68.85,13.17
step
talk Dandy Jones##133214
|tip Inside the building.
turnin WANTED: Gryphon 'Nappers##51358 |goto 66.27,24.29
step
talk Drogrin Alewhisker##128381
turnin Drust in Time##50700 |goto 62.73,29.95
accept Chasing the Leader##49225 |goto 62.72,29.95
accept The Ruins Fought Back##49229 |goto 62.72,29.95
step
talk Recruit Brutis##130101
accept A Marine Out of Water##49234 |goto 62.95,29.91
stickystart "Kill_Ancient_Protectors"
step
Enter the cave |goto 62.87,27.34 < 15 |walk
talk Birch Tomlin##128354
|tip Inside the cave.
accept I'm a Druid, Not a Priest##49233 |goto Tiragarde Sound/1 50.36,70.29
step
talk Pendi Cranklefuse##128353
|tip Inside the cave.
accept Salvaging a Disaster##49232 |goto 51.26,70.58
stickystart "Recover_Drust_Relics"
stickystart "Free_Cursed_Raiders"
step
Follow the path |goto 62.92,55.44 < 15 |walk
talk Hilde Firebreaker##128349
|tip Inside the cave.
turnin Chasing the Leader##49225 |goto 58.68,37.79
accept Backup While I Pack Up##49260 |goto 58.68,37.79
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Inside the cave.
kill Fallen Keeper##128608
Defend Firebreaker |q 49260/1 |goto 60.16,38.76
step
Watch the dialogue
talk Hilde Firebreaker##128349
|tip Inside the cave.
turnin Backup While I Pack Up##49260 |goto 58.68,37.79
step
Follow the path up to the top of the cave |goto 55.80,52.70 < 15 |walk
kill Awakened Guardian##128302 |q 49234/1 |goto Tiragarde Sound/2 64.20,11.34
|tip Inside the cave, on the top floor.
step
label "Recover_Drust_Relics"
click Packaged Relics##277427+
|tip They look like wooden boxes on the ground.
|tip Inside the cave. |notinsticky
collect 6 Drust Relic##153349 |q 49232/1 |goto Tiragarde Sound/1 50.61,63.01
step
label "Free_Cursed_Raiders"
use the Repurposed Gilnean Staff##153350
|tip Use it on Cursed Raiders.
|tip They look like skeletons.
|tip Inside the cave. |notinsticky
Free #5# Cursed Raiders |q 49233/1 |goto 50.61,63.01
step
label "Kill_Ancient_Protectors"
kill 6 Ancient Protector##128285 |q 49229/1 |goto 50.61,63.01
|tip They look like armored elementals.
|tip Inside the cave. |notinsticky
step
talk Pendi Cranklefuse##128353
|tip Inside the cave.
turnin Salvaging a Disaster##49232 |goto 51.25,70.62
step
talk Birch Tomlin##128354
|tip Inside the cave.
turnin I'm a Druid, Not a Priest##49233 |goto 50.37,70.39
step
Follow the path up to the cave exit |goto 46.15,64.93 < 15 |walk |only if subzone("Gol Thovas")
Leave the cave |goto Tiragarde Sound/0 62.87,27.34 < 15 |walk |only if subzone("Gol Thovas")
talk Recruit Brutis##130101
turnin A Marine Out of Water##49234 |goto Tiragarde Sound/0 62.82,29.87
step
talk Drogrin Alewhisker##128381
turnin The Ruins Fought Back##49229 |goto 62.73,29.95
step
talk Jenny Swiftbrook##140752
accept She Sells Seashells##52258 |goto 60.99,30.85
stickystart "Collect_Sparkling_Tidescales"
step
clicknpc Gleaming Seacrab##140755+
|tip They look like small crabs with spiral shells.
collect 4 Gleaming Spiral##161439 |q 52258/1 |goto 58.70,32.79
step
label "Collect_Sparkling_Tidescales"
click Sparkling Tidescale##161440+
|tip They look like white and brown seashells.
collect 6 Sparkling Tidescale##161440 |q 52258/2 |goto 58.70,32.79
step
talk Jenny Swiftbrook##140752
turnin She Sells Seashells##52258 |goto 60.99,30.86
step
talk Abbey Watkins##125309
turnin The Norwington Festival##48070 |goto 55.45,24.67
accept The Stoat Hunt##48077 |goto 55.45,24.67
step
talk Harold Beckett##125398
accept An Element of Danger##48080 |goto 55.51,24.59
accept Bolas and Birds##48616 |goto 55.51,24.59
stickystart "Collect_Soft_Stoat_Pelts"
stickystart "Shoot_Down_Hollowbeak_Falcons"
stickystart "Collect_Rugged_Boar_Tusks"
step
talk Caleb Batharen##127803
accept Settle the Score##48965 |goto 58.29,25.40
step
Enter the cave |goto 61.22,22.10 < 15 |walk |only if not (subzone("Foxhollow Woods") and _G.IsIndoors())
kill Chartusk##127800 |q 48965/1 |goto 61.70,22.73
|tip He looks like a larger boar.
|tip He walks around this area inside the cave.
step
Leave the cave |goto 61.18,22.05 < 15 |walk |only if not subzone("Foxhollow Woods") and _G.IsIndoors()
clicknpc Caleb Batharen##127803
turnin Settle the Score##48965 |goto 58.29,25.40
step
label "Collect_Soft_Stoat_Pelts"
clicknpc Stoat Den##127016+
|tip They look like low piles of brown dirt on the ground around this area.
kill Faintstep Stoat##125327+
|tip They appear on the ground after you click the dens.
collect 5 Soft Stoat Pelt##152642 |q 48077/1 |goto 57.99,25.19
step
label "Shoot_Down_Hollowbeak_Falcons"
use the Bola Launcher##152643
|tip Use it on Hollowbeak Falcons.
|tip They look like brown birds flying in the air around this area.
Shoot Down #6# Hollowbeak Falcons |q 48616/1 |goto 57.99,25.19
step
label "Collect_Rugged_Boar_Tusks"
kill Mudbrush Boar##125347+
collect 8 Rugged Boar Tusk##151913 |q 48080/1 |goto 57.99,25.19
step
talk Harold Beckett##125398
turnin An Element of Danger##48080 |goto 55.52,24.59
turnin Bolas and Birds##48616 |goto 55.52,24.59
step
talk Abbey Watkins##125309
turnin The Stoat Hunt##48077 |goto 55.45,24.67
step
talk Melissa Kenny##127006
accept Runaway Rider##48670 |goto 55.59,24.60
step
talk Melissa Kenny##127144
turnin Runaway Rider##48670 |goto 54.48,19.39
accept Following Eddie's Trail##48196 |goto 54.48,19.39
accept Troublesome Troglodytes##48195 |goto 54.48,19.39
stickystart "Kill_Grimestone_Throwers"
stickystart "Kill_Grimestone_Bullies"
step
talk Trapped Saurolisk##126804
accept Saurolisk Escape##48597 |goto 55.95,17.51
stickystart "Free_Trapped_Saurolisks"
step
clicknpc Hotshot##127149
|tip It looks like a dead horse.
Find Hotshot |q 48196/1 |goto 56.09,17.96
step
click Recipe Rock
accept Stone Soup##48778 |goto 56.16,17.96
stickystart "Collect_Unidentifiable_Meat"
stickystart "Collect_Saurolisk_Scale"
stickystart "Collect_Soup_Stones"
step
click Bag of Horse Treats
Find the Bag of Horse Treats |q 48196/2 |goto 56.21,16.14
step
Enter the cave |goto 55.99,15.37 < 15 |walk
kill Boneface the Giant##125475
|tip He looks like a larger trogg.
|tip Inside the cave.
collect Boneface's "Key"##152109 |q 48196/3 |goto 55.68,14.30
step
click Trogg Cage
|tip It looks like a wooden cage.
|tip Inside the cave.
Free Eddie Norwington |q 48196/4 |goto 55.60,14.57
step
talk Eddie Norwington##127091
|tip Inside the cave.
turnin Following Eddie's Trail##48196 |goto 55.60,14.57
step
click Stirring Bone
collect Stirring Bone##152678 |q 48778/4 |goto 58.07,14.57
step
label "Collect_Unidentifiable_Meat"
kill Grimestone Chef##127150+
|tip They look like troggs wearing white hats.
collect 2 Unidentifiable Meat##152671 |q 48778/2 |goto 57.52,15.14
step
label "Collect_Saurolisk_Scale"
kill Grimestone Handler##127203+
|tip They look like troggs riding on lizards.
collect Saurolisk Scale##152675 |q 48778/3 |goto 57.52,15.14
step
label "Collect_Soup_Stones"
click Soup Stone##276270+
|tip They look like grey rocks on the ground around this area.
collect 4 Soup Stone##152670 |q 48778/1 |goto 57.52,15.14
step
click Bubbling Cauldron
turnin Stone Soup##48778 |goto 56.54,15.55
step
label "Free_Trapped_Saurolisks"
click Post##278813+
|tip They look like wooden poles with large lizard creatures tied to them.
Free #6# Trapped Saurolisks |q 48597/1 |goto 56.17,15.83
step
label "Kill_Grimestone_Throwers"
kill 3 Grimestone Thrower##125469 |q 48195/2 |goto 56.17,15.83
|tip They look like troggs with white hair.
step
label "Kill_Grimestone_Bullies"
kill 8 Grimestone Bully##125467 |q 48195/1 |goto 56.17,15.83
|tip They look like troggs with black hair.
step
talk Melissa Kenny##127144
turnin Troublesome Troglodytes##48195 |goto 54.47,19.39
turnin Saurolisk Escape##48597 |goto 54.47,19.39
accept The Lord's Behest##48003 |goto 54.47,19.39
step
talk Lord Aldrius Norwington##124802
turnin The Lord's Behest##48003 |goto 51.57,27.27
accept Be Our Guest##48005 |goto 51.57,27.27
step
talk Dolan Northfield##125035
Visit the Stables |q 48005/1 |goto 51.45,26.10
step
talk Joma##127586
accept Lucky Charm##48898 |goto 51.31,25.90
accept Monstrous Energy##48902 |goto 51.31,25.90
step
talk Majo##127492
accept Safety First##48899 |goto 51.29,25.87
step
talk Arthur Seville##126600
Visit the Catering |q 48005/2 |goto 49.74,25.22
stickystart "Collect_Durable_Seashells"
stickystart "Collect_Pulsating_Extracts"
step
kill Lucktail##130600
|tip He will eventually run away.
Find Lucktail Near the Bridge |q 48898/1 |goto 48.67,28.17
step
kill Lucktail##130600
|tip He will eventually run away.
Find Lucktail on the Island |q 48898/2 |goto 48.10,25.41
step
kill Lucktail##127602
|tip He will die this time.
collect Lucktail's Tail##152848 |q 48898/3 |goto 50.69,22.18
step
label "Collect_Durable_Seashells"
click Durable Seashell##276496+
|tip They look like white seashells on the ground around this area.
collect 8 Durable Seashell##152847 |q 48899/1 |goto 49.69,22.69
step
label "Collect_Pulsating_Extracts"
kill Slithering Fangtongue##127600+
|tip They look like snakes with fins, standing upright.
collect 6 Pulsating Extract##152849 |q 48902/1 |goto 49.69,22.69
step
talk Majo##127492
turnin Safety First##48899 |goto 51.29,25.87
step
talk Joma##127586
turnin Lucky Charm##48898 |goto 51.31,25.90
turnin Monstrous Energy##48902 |goto 51.31,25.90
step
talk Majo##127492
accept The Perfect Horse, of Course##48903 |goto 51.29,25.88
step
Watch the dialogue
|tip Follow Majo as he walks.
Follow Majo to the Stables |q 48903/1 |goto 51.58,26.01
step
clicknpc Goldie##128476
Inspect Goldie |q 48903/2 |goto 51.68,25.67
step
Watch the dialogue
clicknpc Scout##128478
Inspect Scout |q 48903/3 |goto 51.79,25.83
step
Watch the dialogue
clicknpc Avalon##124847
Inspect Avalon |q 48903/4 |goto 51.87,25.98
step
Watch the dialogue
clicknpc Maxwell##127618
Inspect Maxwell |q 48903/5 |goto 51.83,26.32
step
Watch the dialogue
_Next to you:_
clicknpc Majo
Help Majo Mount |q 48903/6
step
talk Joma##127614
turnin The Perfect Horse, of Course##48903 |goto 51.81,26.36
step
click Job Flyer
accept The Roughnecks##49393 |goto 51.67,29.68
step
talk Hestia Strongbolt##134685
fpath Norwington Estate |goto 52.91,28.80
step
click WANTED: Raging Earthguard
accept WANTED: Raging Earthguard##51367 |goto 53.11,28.39
step
click HELP WANTED
accept Anglepoint Wharf##48347 |goto 53.11,28.38
step
Enter the building |goto 53.20,28.23 < 10 |walk
talk Terry Rigglesmith##136459
|tip Inside the building.
Visit the Inn |q 48005/4 |goto 53.31,28.29
step
talk Terry Rigglesmith##136459
|tip Inside the building.
home Norwington Estate |goto 53.31,28.29 |q 49393 |future
step
talk George Mitchell##123648
|tip He walks around this area.
Visit the Smithy |q 48005/3 |goto 53.48,28.75
step
talk Lord Aldrius Norwington##124802
turnin Be Our Guest##48005 |goto 51.57,27.27
accept Beginner Equitation##48004 |goto 51.57,27.27
step
clicknpc Cooper##127718
Mount Cooper |q 48004/1 |goto 51.65,26.20
step
Jab #6# Gnoll Targets |q 48004/2 |goto 51.11,26.76
|tip Use the "Harpoon Jab" ability on your action bar on Targets around this area.
|tip They look like yellow puppets in wooden barrels on the ground around this area.
step
Shoot Down #2# Paper Zeppelins |q 48004/3 |goto 51.11,26.76
|tip Use the "Bolas" ability on your action bar on Paper Zeppelins around this area.
|tip They look like small grey blimps flying in the air around this area.
step
Jump #8# Fences |q 48004/4 |goto 51.11,26.76
|tip Jump over the fences around this area.
|tip They look like brown wooden fences on the ground around this area.
step
Stop Riding Cooper |outvehicle |q 48004
|tip Click the yellow arrow on your action bar.
step
talk Lord Aldrius Norwington##124802
turnin Beginner Equitation##48004 |goto 51.57,27.27
accept Equine Retrieval##48087 |goto 51.57,27.27
accept Show Me What You've Got##48939 |goto 51.57,27.27
step
clicknpc Cooper##127718
Mount Cooper |q 48939/1 |goto 51.65,26.20
step
Score 150 Points |q 48939/2 |goto 51.01,26.43
|tip Jump over fences to keep the stacks of Style as high as possible.
|tip Use the "Harpoon Jab" ability on your action bar while facing Targets around this area.
|tip They look like a yellow puppets in wooden barrels on the ground around this area.
|tip You will hear "Zeppelin out!" yelled nearby, then a Paper Zeppelin will appear, flying overhead.
|tip Use the "Bolas" ability on your action bar on the Paper Zeppelins.
|tip They look like small blimps flying in the air around this area.
|tip The zeppelins count for a lot of points, so don't miss any.
step
Stop Riding Cooper |outvehicle |q 48939
|tip Click the yellow arrow on your action bar.
step
talk Lord Aldrius Norwington##124802
turnin Show Me What You've Got##48939 |goto 51.57,27.27
step
clicknpc Rose##127534
Mount Rose |q 48087/1 |goto 53.16,30.70
step
Bring Rose to Lord Norwington |q 48087/2 |goto 52.53,28.50
step
talk Lord Aldrius Norwington##127559
turnin Equine Retrieval##48087 |goto 52.53,28.50
accept No Party Like a Trogg Party##48088 |goto 52.53,28.50
step
talk Gora Layton##125042
accept Mountain Sounds##48089 |goto 52.49,28.55
step
clicknpc Cooper##127718
Ride Cooper |invehicle |goto 52.53,28.61 |q 48088
stickystart "Slay_Grimestone_Intruders"
step
Rally #8# Kul Tirans |q 48089/1 |goto 51.67,27.78
|tip Use the "Battlehorn of the Mountain" ability on your action bar near neutral (yellow) NPCs around this area.
step
label "Slay_Grimestone_Intruders"
Kill Grimestone enemies around this area
|tip Use the "Harpoon Jab" ability on your action bar near them while facing them.
Slay #20# Grimestone Intruders |q 48088/1 |goto 51.67,27.78
step
Return to Gora Layton |goto 52.49,28.55 < 15 |q 48088
step
Stop Riding Cooper |outvehicle |q 48088
|tip Click the yellow arrow on your action bar.
step
talk Gora Layton##125042
turnin Mountain Sounds##48089 |goto 52.48,28.55
step
talk Lord Aldrius Norwington##127559
turnin No Party Like a Trogg Party##48088 |goto 52.54,28.49
step
Watch the dialogue
talk Lord Aldrius Norwington##124802
|tip He appears at this location.
accept Best In Show##49036 |goto 51.57,27.27
|tip If you find this quest too difficult, you can skip it.
|tip This quest is not needed for the Tiragarde Sound storyline achievement.
step
clicknpc Cooper##127718
Mount Cooper |q 49036/1 |goto 51.65,26.20
step
Score 300 Points |q 49036/2 |goto 51.01,26.43
|tip Jump over fences to keep the stacks of Style as high as possible.
|tip Use the "Harpoon Jab" ability on your action bar while facing Targets around this area.
|tip They look like a yellow puppets in wooden barrels on the ground around this area.
|tip You will hear "Zeppelin out!" yelled nearby, then a Paper Zeppelin will appear, flying overhead.
|tip Use the "Bolas" ability on your action bar on the Paper Zeppelins.
|tip They look like small blimps flying in the air around this area.
|tip The zeppelins count for a lot of points, so don't miss any.
step
Stop Riding Cooper |outvehicle |q 49036
|tip Click the yellow arrow on your action bar.
step
talk Lord Aldrius Norwington##124802
turnin Best In Show##49036 |goto 51.57,27.27
step
talk Thomas Pinker##131627
accept Save Our Shipmates##50026 |goto 49.46,31.27
step
kill Living Earthguard##137426 |q 51367/1 |goto 47.25,32.35
|tip At the top of the hill.
|tip If you have trouble, try to find someone to help you, or skip the quest.
step
talk Lord Aldrius Norwington##124802
turnin WANTED: Raging Earthguard##51367 |goto 51.57,27.26
step
talk Henry Hardwick##123415
turnin Save Our Shipmates##50026 |goto 50.32,37.23
accept Shipwreck Recovery Crew##50009 |goto 50.36,36.83 |only if level < 60
|tip You will automatically accept this quest. |only if level < 60
accept Captured and Enraptured##47755 |goto 50.32,37.23
accept A Very Precious Cargo##50002 |goto 50.32,37.23
stickystart "Free_Enthralled_Sailors"
stickystart "Kill_Creatures_And_Collect_Cargo"
step
talk Earless Joe##131775
accept Can't Hear A Thing##50059 |goto 51.10,35.80
step
Enter the cave |goto 53.79,33.39 < 30 |walk
kill Anthemusa##130360 |q 50059/1 |goto 53.64,32.69
|tip Inside the cave.
step
label "Free_Enthralled_Sailors"
use the Stein of Grog##151135
|tip Use it on Enthralled Sailors.
|tip They look like human swashbucklers around this area.
Free #6# Enthralled Sailors |q 47755/1 |goto 53.95,34.04
step
label "Kill_Creatures_And_Collect_Cargo"
Kill enemies around this area
|tip Enthralled Sailors will not count for this quest goal.
click Shipwrecked Supplies##245350+
|tip They look like wooden boxes on the ground.
click Siren Wind Chimes##280992+
|tip They look like chains topped with blue crystals, hanging from objects.
Kill Creatures and Collect Cargo |q 50009/1 |goto 53.95,34.04
|tip Fill the bar in the quest tracker area.
|only if haveq(50009) or completedq(50009)
step
Find the Precious Cargo |q 50002/1 |goto 55.49,35.93
step
talk Penny "Precious" Hardwick##131684
turnin A Very Precious Cargo##50002 |goto 55.49,35.93
accept Hold My Hand##50005 |goto 55.49,35.93
step
Watch the dialogue
|tip Follow Penny "Precious" Hardwick and protect her as she walks.
|tip Stay close to her.
Follow Penny Through Fogcliff Strand |goto 51.22,34.56 < 10 |c |q 50005
stickystart "Escort_Penny_To_Her_Father"
step
talk Earless Joe##131775
turnin Can't Hear A Thing##50059 |goto 51.10,35.80
step
label "Escort_Penny_To_Her_Father"
Watch the dialogue
|tip Follow Penny "Precious" Hardwick  and protect her as she walks.
|tip Stay close to her.
|tip She eventually walks to this location.
Watch the dialogue
Escort Penny to Her Father |q 50005/1 |goto 50.31,37.10
step
talk Henry Hardwick##123415
turnin Hold My Hand##50005 |goto 50.31,37.23
turnin Captured and Enraptured##47755 |goto 50.31,37.23
step
talk Tagart##129003
turnin The Roughnecks##49393 |goto 42.36,22.27
accept Hold Still##49394 |goto 42.36,22.27
accept The Bears and the Bees##49395 |goto 42.36,22.27
step
talk Dagin##129163
fpath Roughneck Camp |goto 42.48,23.02
step
click WANTED: The Hornet
accept WANTED: The Hornet##51368 |goto 42.16,22.99
step
talk Egert Tominson##129159
|tip In the doorway of the building.
home Roughneck Camp |goto 42.06,22.85 |q 48009 |future
stickystart "Collect_Sticky_Bee_Honey"
stickystart "Collect_Goat_Fur"
stickystart "Kill_Scruffhide_Bears"
step
Enter the cave |goto 47.35,18.18 < 15 |walk
kill The Hornet##137450 |q 51368/1 |goto 47.09,18.21
|tip Inside the cave.
|tip If you have trouble, try to find someone to help you, or skip the quest.
step
talk "Helpless" Henry##129392
accept Helping Henry##49412 |goto 47.70,17.63
step
kill Brawr##129398 |q 49412/1 |goto 48.20,18.03
step
talk "Helpless" Henry##129392
turnin Helping Henry##49412 |goto 47.70,17.63
step
label "Collect_Sticky_Bee_Honey"
click Beehive##278257+
|tip They look like orange balls hanging from trees.
|tip They can also be on the ground.
collect 6 Sticky Bee Honey##153595 |q 49395/1 |goto 46.73,19.52
step
label "Collect_Goat_Fur"
clicknpc Gentle Goat##129110+
|tip They look like sheep with horns.
|tip They may attack you.
collect 6 Goat Fur##155681 |q 49394/1 |goto 46.73,19.52
step
label "Kill_Scruffhide_Bears"
kill 8 Scruffhide Bear##129002 |q 49395/2 |goto 46.73,19.52
|tip They look like brown bears.
step
talk Tagart##129003
turnin Hold Still##49394 |goto 42.36,22.27
turnin The Bears and the Bees##49395 |goto 42.36,22.27
turnin WANTED: The Hornet##51368 |goto 42.36,22.27
step
talk Rulf##129170
accept Protect the Nests##49735 |goto 42.49,22.72
accept An Offering of Eggs##49710 |goto 42.49,22.72
stickystart "Kill_Hungry_Dewscales"
step
click Spotted Gryphon Egg##278777+
|tip They look like white and brown eggs in large bird nests on the ground around this area.
collect 4 Spotted Gryphon Egg##155828 |q 49710/1 |goto 44.43,19.00
step
label "Kill_Hungry_Dewscales"
kill 7 Hungry Dewscale##130668 |q 49735/1 |goto 44.43,19.00
|tip They look like large lizards.
step
talk Shawn McClinter##129578
turnin Protect the Nests##49735 |goto 47.85,16.38
step
click Gryphon Nest
|tip It looks like a large bird nest.
turnin An Offering of Eggs##49710 |goto 47.90,16.45
step
talk Shawn McClinter##129578
accept Roughneck Riders##49417 |goto 47.85,16.39
step
use the Tether Shot##153679
|tip Use it on Greatfeather.
|tip He looks like a large eagle flying in the air around this area to the south.
|tip Wait here until he gets close enough to use it.
Ride Greatfeather |invehicle |goto 47.89,16.70 |q 49417
step
Wrangle Greatfeather |q 49417/1 |goto 47.89,16.70
|tip Use all 3 abilities on your action bar on cooldown.
|tip He will eventually surrender.
step
Return to Roughneck Camp |complete subzone("Roughneck Camp") |goto 42.51,22.66 |q 49417 |notravel
step
talk Tagart##129003
turnin Roughneck Riders##49417 |goto 42.36,22.27
accept Big Boss##49418 |goto 42.36,22.27
step
Follow the path up |goto 43.43,19.02 < 30 |only if walking and not subzone("Waning Glacier")
talk Boss Tak##129291
turnin Big Boss##49418 |goto 41.99,16.76
accept Wendies##49433 |goto 41.99,16.76
accept Where'd They Go?##49435 |goto 41.99,16.76
stickystart "Slay_Wendigos"
step
click Bloodied Boot
Find Evidence of the Missing Roughnecks |q 49435/1 |goto 42.27,15.49
step
talk "Helpless" Henry##130424
|tip He looks like a human frozen in blue ice.
accept Frozen##49419 |goto 43.68,15.24
stickystop "Slay_Wendigos"
step
click Roughneck Supplies
Find the Supply Cart |q 49435/2 |goto 43.73,14.65
step
talk Griddon##130478
accept Warm and Cozy##49431 |goto 44.91,15.49
stickystart "Collect_Steamy_Essences"
step
kill Prince Rathaw##129590
|tip He looks like a large magma elemental.
collect Fiery Essence##154171 |q 49419/1 |goto 48.67,14.62
step
label "Collect_Steamy_Essences"
kill Steam Elemental##129484+
click Steam Shard##278339+
|tip They look like chunks of white ice on the ground around this area.
collect 99 Steamy Essence##153697 |q 49431/1 |goto 47.12,14.31
step
talk Griddon##130478
turnin Warm and Cozy##49431 |goto 44.91,15.50
stickystart "Slay_Wendigos"
step
talk "Helpless" Henry##130424
|tip He looks like a human frozen in blue ice.
turnin Frozen##49419 |goto 43.68,15.25
step
click Roughneck Axe
|tip On top of the hill.
Search for More Clues |q 49435/3 |goto 41.57,13.97
step
click Discarded Rucksack
Find the Roughneck's Last Location |q 49435/4 |goto 39.67,13.35
step
_Next to you:_
talk Boss Tak
turnin Where'd They Go?##49435
accept Boss' Revenge##49439
step
Enter the cave |goto 39.67,12.96 < 15 |walk |only if not subzone("Whompus' Lair")
kill Whompus##129570 |q 49439/1 |goto 39.07,12.16
|tip Inside the cave.
step
_Next to you:_
talk Boss Tak
turnin Boss' Revenge##49439
step
label "Slay_Wendigos"
Leave the cave |goto 39.73,13.06 < 15 |walk |only if subzone("Whompus' Lair")
Kill Wendigo enemies around this area
|tip They look like yetis.
Slay #10# Wendigos |q 49433/1 |goto 41.38,14.10
step
_Next to you:_
talk Boss Tak
turnin Wendies##49433
accept Getting Paid##49719
step
talk Tagart##129003
turnin Getting Paid##49719 |goto 42.36,22.27
step
talk Brother Therold##125922
|tip On the dock next to the water.
|tip Follow the path down the mountain, if you don't want to jump down.
turnin Anglepoint Wharf##48347 |goto 42.28,29.31
accept Aiding the Wharf##48540 |goto 42.28,29.31
step
click Jar of Blubber
|tip It looks like a small grey jar.
collect Seal Blubber##152585 |q 48540/3 |goto 41.79,30.04
step
talk Hera Copeland##126675
Ask her _"Do you have any seaweed? Therold needs it for an antidote."_
Obtain a Satchel of Seaweed |q 48540/1 |goto 41.93,30.26
step
click Bundle of Vellum
|tip It looks like a small stack of white papers on a barrel.
collect Bundle of Vellum##152586 |q 48540/2 |goto 43.23,29.67
step
talk Brother Therold##125922
turnin Aiding the Wharf##48540 |goto 42.28,29.31
accept A Cure from the Sea##48352 |goto 42.28,29.31
accept Sharks in the Water##49268 |goto 42.28,29.31
step
talk Okri Putterwrench##128680
accept Stinging Barbs##48348 |goto 42.19,29.32
stickystart "Collect_Intact_Venemous_Barbs"
stickystart "Kill_Invading_Dreadmaws"
step
click Harbor Seaweed##273270+
|tip They look like bushy plants.
|tip Underwater around this area.
collect 8 Bunch of Seaweed##152401 |q 48352/1 |goto 41.09,29.77
step
label "Collect_Intact_Venemous_Barbs"
kill Barbtail Stingray##128676+
|tip Underwater around this area. |notinsticky
collect 4 Intact Venomous Barb##153486 |q 48348/1 |goto 41.09,29.77
step
label "Kill_Invading_Dreadmaws"
kill 6 Invading Dreadmaw##126006 |q 49268/1 |goto 41.09,29.77
|tip They look like sharks.
|tip Underwater around this area. |notinsticky
step
talk Okri Putterwrench##128680
|tip On the dock.
turnin Stinging Barbs##48348 |goto 42.19,29.32
step
talk Brother Therold##125922
turnin A Cure from the Sea##48352 |goto 42.28,29.31
turnin Sharks in the Water##49268 |goto 42.28,29.31
accept Algae Shakes##49292 |goto 42.28,29.31
accept Pulse of the Wharf##48353 |goto 42.28,29.31
stickystart "Treat_Nauseated_Villagers"
step
click WANTED: Quartermaster Ssylis
|tip In front of the building.
accept WANTED: Quartermaster Ssylis##51384 |goto 42.29,27.25
step
talk Ginger Freelin##125947
|tip Inside the building.
Ask her _"Noticed anything strange?"_
Check Ginger Freelin |q 48353/2 |goto 42.24,27.43
step
talk Julian Nichols##125950
Ask him _"Have you noticed anything out of the ordinary?"_
Check Julian Nichols |q 48353/1 |goto 42.30,26.62
step
talk Aaron Gutier##125945
Ask him _"Have you been receiving your shipments?"_
Watch the dialogue
kill Aaron Gutier##125945
Check Aaron Gutier |q 48353/3 |goto 41.68,26.98
step
label "Treat_Nauseated_Villagers"
clicknpc Nauseated Villager##128941+
|tip They look like humans kneeling on the ground around this area.
|tip You will be attacked.
Treat #6# Nauseated Villagers |q 49292/1 |goto 42.00,27.03
step
talk Brother Therold##125922
turnin Algae Shakes##49292 |goto 41.29,27.00
turnin Pulse of the Wharf##48353 |goto 41.29,27.00
accept Evacuate the Premises##48355 |goto 41.29,27.00
accept Tainted Shipments##48354 |goto 41.29,27.00
stickystart "Evacuate_Anglepoint_Firepackers"
step
clicknpc Barrel of Fish##126060+
|tip They look like wooden barrels on the ground around this area.
|tip You will be attacked.
Check #5# Barrels of Fish |q 48354/1 |goto 40.28,26.69
step
label "Evacuate_Anglepoint_Firepackers"
Evacuate #8# Anglepoint Fishpackers |q 48355/1 |goto 40.28,26.69
|tip Use the "Evacuate!" ability near Anglepoint Firepackers.
|tip They look like humans.
|tip It appears as a button on the screen.
step
talk Brother Therold##125922
turnin Evacuate the Premises##48355 |goto 39.50,26.68
turnin Tainted Shipments##48354 |goto 39.50,26.68
accept Possessive Headgear##48356 |goto 39.50,26.68
step
talk Keegan Alby##126308
accept The Young Lord Stormsong##48365 |goto 39.52,26.75
accept Betrayal of the Guard##48009 |goto 39.52,26.75
stickystart "Slay_Parasitic_Mindstealers"
stickystart "Kill_Mind_Addled_Enforcers"
step
Enter the building |goto 37.97,29.47 < 10 |walk
talk Manager Yerold##125962
|tip Inside the building.
accept Dangerous Cargo##48008 |goto 37.56,29.54
accept Enemy Within##49299 |goto 37.56,29.54
stickystart "Burn_Infested_Cargo"
step
kill Overseer Bates##125960 |q 49299/1 |goto 37.24,28.83
|tip At the top of the stairs.
step
Run up the stairs and enter the building |goto 39.36,31.49 < 10 |walk
kill Brother Conway##125961 |q 48365/1 |goto 39.49,31.68
|tip Inside the building.
step
label "Burn_Infested_Cargo"
click Infested Cargo##273212+
|tip They look like small wooden barrels.
|tip They can also be inside buildings around this area.
Burn #5# Infested Cargo |q 48008/1 |goto 37.87,30.03
step
label "Slay_Parasitic_Mindstealers"
kill Possessed Dockworker##125957+
|tip They look like humans with an octopus on their head.
kill 10 Parasitic Mindstealer##125959 |q 48356/1 |goto 37.88,30.19
|tip They appear after you kill the Possessed Dockworkers.
step
label "Kill_Mind_Addled_Enforcers"
kill 10 Mind-addled Enforcer##126170 |q 48009/1 |goto 38.10,29.32
|tip They look like humans.
step
talk Manager Yerold##125962
|tip Inside the building.
turnin Dangerous Cargo##48008 |goto 37.56,29.54
turnin Enemy Within##49299 |goto 37.56,29.54
step
talk Brother Therold##125922
turnin Possessive Headgear##48356 |goto 39.50,26.68
step
talk Keegan Alby##126308
turnin Betrayal of the Guard##48009 |goto 39.52,26.75
turnin The Young Lord Stormsong##48365 |goto 39.52,26.75
step
talk Brannon Stormsong##126298
accept Paddle to Safety##48366 |goto 39.54,26.69
step
clicknpc Escape Rowboat##126437
Use the Rowboat |q 48366/1 |goto 39.61,26.95
step
Watch the dialogue
Travel to Outrigger Point |goto 35.15,25.06 < 10 |c |q 48366 |notravel
step
talk Gregory Mussler##134749
fpath Outrigger Post |goto 35.55,24.90
step
talk Tom Fishbury##136465
home Outrigger Post |goto 35.33,24.22 |q 50531 |future
step
talk Brannon Stormsong##126298
turnin Paddle to Safety##48366 |goto 35.20,24.19
accept Creature Corruption##49300 |goto 35.20,24.19 |only if level < 60
|tip You will automatically accept this quest. |only if level < 60
accept Eldritch Invocations##48372 |goto 35.20,24.19
step
talk Keegan Alby##126308
accept Death in the Depths##48370 |goto 35.25,24.17
step
talk Brother Therold##125922
accept Deep Sea Defilement##48368 |goto 35.24,24.27
step
talk Rosaline Madison##128679
accept Those Aren't Fish Eggs##48367 |goto 34.95,24.21
stickystart "Destroy_Corrupted_Eggs"
stickystart "Slay_Deepwarden_Followers"
stickystart "Purge_The_Corruption"
step
Enter the underwater cave |goto 33.95,25.47 < 30 |walk
click Corrupting Pylon
|tip It looks like a grey stone statue.
|tip Inside the underwater cave.
Destroy the Eastern Corrupting Pylon |q 48368/2 |goto 35.37,24.33
step
Enter the underwater cave |goto 31.30,29.25 < 30 |walk
click Corrupting Pylon
|tip It looks like a grey stone statue.
|tip Inside the underwater cave.
Destroy the Southern Corrupting Pylon |q 48368/1 |goto 30.37,31.15
step
Enter the underwater cave |goto 30.83,21.54 < 30 |walk
kill Director Deepwarden##126184 |q 48372/1 |goto 30.02,19.42
|tip Inside the underwater cave.
step
click Corrupting Pylon
|tip It looks like a grey stone statue.
|tip Inside the underwater cave.
Destroy the Western Corrupting Pylon |q 48368/3 |goto 29.99,19.37
step
label "Destroy_Corrupted_Eggs"
kill Corrupted Egg##126285+
|tip They look like large purple eggs on the ground.
|tip Underwater around this area. |notinsticky
Destroy #30# Corrupted Eggs |q 48367/1 |goto 32.52,25.57
step
label "Slay_Deepwarden_Followers"
Kill enemies around this area
|tip Only Merciless Aberrations, K'thir Harbingers, and Willing Cultists will count for this quest goal. |notinsticky
|tip Underwater around this area. |notinsticky
Slay #8# Deepwarden Followers |q 48370/1 |goto 32.57,24.95
step
label "Purge_The_Corruption"
Kill enemies around this area
|tip Only Voidtouched Bloodseekers, Mindbent Thrashnecks, and Distorted Scaleterrors will count for the quest goal. |notinsticky
|tip Underwater around this area.
Purge the Corruption |q 49300/1 |goto 32.57,24.95
|tip Fill the bar in the quest tracker area.
|only if haveq(49300) or completedq(49300)
step
Run around the mountain and enter the cave |goto 30.73,18.17 < 30 |walk
kill Quartermaster Ssylis##137519 |q 51384/1 |goto 30.40,17.99
|tip He walks around this area inside the cave.
|tip If you have trouble, try to find help, or skip the quest.
step
talk Brother Therold##125922
turnin Deep Sea Defilement##48368 |goto 35.24,24.26
step
talk Keegan Alby##126308
turnin WANTED: Quartermaster Ssylis##51384 |goto 35.24,24.17
step
talk Brannon Stormsong##126298
turnin Eldritch Invocations##48372 |goto 35.20,24.19
turnin Death in the Depths##48370 |goto 35.20,24.19
step
talk Rosaline Madison##128679
turnin Those Aren't Fish Eggs##48367 |goto 34.95,24.21
step
Watch the dialogue
talk Rosaline Madison##128679
accept The Deadliest Catch##49302 |goto 34.95,24.21
step
talk Okri Putterwrench##128680
Tell him _"Let's fly!"_
Speak to Okri for a Ride |q 49302/1 |goto 35.29,24.57
step
Watch the dialogue
Fly to Anglepoint Bay |goto 36.34,29.93 < 30 |c |q 49302 |notravel
step
clicknpc Outrigger Cannon##129494
Mount an Outrigger Cannon |q 49302/2 |goto 36.31,29.81
step
Shoot Down #10# Erupting Darkness |q 49302/3 |goto 36.30,29.84
|tip They look like big purple orbs flying towards you.
|tip Use the ability on your action bar.
step
talk Outrigger Engineer##143896
Tell him _"Fire!"_
Watch the dialogue
Repel Viq'Goth |q 49302/4 |goto 36.37,29.45
step
clicknpc Outrigger Gryphon##129580
Ride the Outrigger Gryphon to Town |q 49302/5 |goto 36.77,29.72
step
Watch the dialogue
Return to Anglepoint Wharf |complete subzone("Anglepoint Wharf") |goto 42.52,29.51 |q 49302 |notravel
step
talk Brannon Stormsong##126298
turnin The Deadliest Catch##49302 |goto 42.46,29.35
step
talk Barry Oliver##132039
|tip Open the boat travel map.
|tip This will let us learn what boat travel stops you have unlocked.
Click Here to Continue |confirm |goto 42.15,30.67 |q 47485
step
talk Will Melborne##135064
Take the Ferry to Eastpoint Station |q 47485/1 |goto Boralus/0 74.17,24.81
step
talk Will Melborne##135064
|tip Choose Eastpoint Station on the boat map.
|tip It's almost directly south of Boralus.
Take the Ferry to Eastpoint Station |ontaxi |goto 74.17,24.81 |q 47485
step
Arrive in Eastpoint Station |complete subzone("Eastpoint Station") |goto Tiragarde Sound/0 74.28,44.34 |q 47485 |notravel
step
talk Cagney##122671
turnin The Ashvane Trading Company##47485 |goto Tiragarde Sound/0 76.84,43.43
accept Suspicious Shipments##47486 |goto Tiragarde Sound/0 76.84,43.43
accept Labor Dispute##47487 |goto Tiragarde Sound/0 76.84,43.43
step
talk Olive##122672
accept Small Haulers##47488 |goto 76.82,43.49
stickystart "Free_Urchin_Workers"
stickystart "Inspect_Marked_Goods"
stickystart "Slay_Ashvane_Company_Guards"
step
click Posted Notice
accept Message from the Management##50573 |goto 79.02,45.77
step
Enter the building |goto 79.19,47.02 < 10 |walk
kill Taskmaster Williams##123264
|tip He walks around inside the building.
collect Note to Taskmaster Williams##158066 |q 50573/2 |goto 79.11,46.92
step
kill Forgemaster Farthing##134328
|tip He walks around this area.
collect Note to Forgemaster Farthing##158065 |q 50573/1 |goto 82.18,48.59
step
label "Free_Urchin_Workers"
talk Urchin Worker##122681+
|tip They look like children.
Tell them _"Head down to the water. There is a boat waiting to take you to safety."_
Free #6# Urchin Workers |q 47488/1 |goto 80.38,47.86
step
label "Inspect_Marked_Goods"
click Marked Goods##271616+
|tip They look like rectangle boxes covered in grey cloth on the ground around this area.
|tip They will appear as yellow dots on your minimap.
Inspect #5# Marked Goods |q 47486/1 |goto 80.38,48.00
step
label "Slay_Ashvane_Company_Guards"
Kill Company enemies around this area
|tip They look like humans.
Slay #10# Ashvane Company Guards |q 47487/1 |goto 80.38,48.00
step
talk Flynn Fairwind##121239
turnin Suspicious Shipments##47486 |goto 78.11,47.94
turnin Small Haulers##47488 |goto 78.11,47.94
turnin Message from the Management##50573 |goto 78.11,47.94
step
talk Cagney##122671
turnin Labor Dispute##47487 |goto 78.10,47.84
step
talk Flynn Fairwind##121239
accept Under Their Noses##50531 |goto 78.11,47.95
step
talk Flynn Fairwind##134166
turnin Under Their Noses##50531 |goto 75.84,49.14
accept Sampling the Goods##53041 |goto 75.84,49.14
step
talk Jeb Johnson##134226
fpath Bridgeport |goto 75.79,48.59
step
talk Dockmaster Leighton##136576
accept Left at the Port##51149 |goto 75.07,49.72
step
click Raw Azerite Sample
|tip It looks like a brown sack with blue crystals in it.
collect Raw Azerite Sample##163034 |q 53041/2 |goto 74.76,50.13
step
click Chemist's Notes
|tip It looks like a piece of paper on the table.
|tip Inside the building.
Choose _<Take the notes.>_
collect Chemist's Notes##163032 |q 53041/1 |goto 75.17,50.76
step
talk Junior Miner Joe##133550
accept An Overrun Mine##50349 |goto 75.70,50.63
step
Enter the building |goto 75.78,50.42 < 10 |walk
talk Lidia Plank##136468
|tip Inside the building.
home Bridgeport |goto 75.88,50.64 |q 49218 |q 49218 |future
step
click Help Wanted Poster
|tip It looks like a piece of paper hanging on the side of the pillar.
accept The Hunters of Kennings Lodge##50544 |goto 75.55,49.94
step
talk Flynn Fairwind##134166
turnin Sampling the Goods##53041 |goto 75.84,49.14
accept Stow and Go##47489 |goto 75.84,49.14
step
talk Chief Miner Theock##133551
turnin An Overrun Mine##50349 |goto 78.15,55.93
accept Miner Operation##50351 |goto 78.15,55.93
step
talk Head Chemist Walters##133552
accept Pinch of Azerite##50352 |goto 78.12,56.01
stickystart "Collect_Azerite_Dust"
step
Enter the building |goto 76.23,57.23 < 10 |walk
click Walters' Chemistry Kit
|tip It looks like a brown backpack hanging on the wall.
|tip Inside the building.
collect Walters' Chemistry Kit##157857 |q 50352/2 |goto 76.10,57.43
step
Run up the stairs |goto 76.99,58.64 < 10 |only if walking
talk Civil Technician Alena##133553
|tip Up on the wooden platform.
Tell her _"Theock wants to retake the mine."_
Watch the dialogue
Locate Civil Technician Alena |q 50351/1 |goto 76.97,57.79
step
Follow the path up and enter the mine |goto 77.23,60.39 < 10 |walk
talk Ordnance Handler Prim##133554
|tip Inside the small mine.
Tell her _"Theock wants to retake the mine."_
Watch the dialogue
Locate Ordnance Handler Prim |q 50351/2 |goto 77.31,60.49
step
label "Collect_Azerite_Dust"
Kill Azerite enemies around this area
|tip The Bubbling Azerites will not drop the quest item.
collect 45 Azerite Dust##157778 |q 50352/1 |goto 76.54,58.79
step
Enter the building |goto 75.60,59.27 < 10 |walk
talk Ordnance Handler Prim##133621
|tip Inside the building.
turnin Miner Operation##50351 |goto 75.56,59.36
turnin Pinch of Azerite##50352 |goto 75.56,59.36
step
talk Civil Technician Alena##134628
|tip Inside the building.
accept Rock Meet Dynamite##50356 |goto 75.53,59.29
step
Enter the mine |goto 76.12,59.93 < 15 |walk |only if not subzone("Winterdeep Mine")
kill Earthshaper Brugaw##134212 |q 50356/1 |goto 74.96,59.94
|tip Inside the mine, on the bottom floor.
|tip Follow the path to the end of the mine.
|tip Your allies will help you fight.
|tip Use the Azerite-Infused Dynamite ability on enemies as you walk through the mine.
|tip It appears as a button on the screen.
step
Follow the path up and leave the mine |goto 76.12,59.88 < 15 |walk |only if subzone("Winterdeep Mine")
talk Chief Miner Theock##133551
turnin Rock Meet Dynamite##50356 |goto 78.15,55.93
step
Enter the building |goto 75.75,64.81 < 10 |walk
talk Heather Morgan##136437
|tip Inside the building.
home Kennings Lodge |goto 75.67,64.52 |q 49897 |future
step
talk Alanna Holton##127161
|tip In the doorway of the building.
turnin The Hunters of Kennings Lodge##50544 |goto 75.84,65.86
accept Pardon Our Rust##48874 |goto 75.84,65.86
step
talk Lord Kennings##127646
accept A Grizzly End##48873 |goto 75.82,65.78
accept A Hunt for Hawk Eggs##48879 |goto 75.82,65.78
step
click Weathered Job List
|tip It looks like a piece of paper hanging on the post.
accept A Sweater for Rupert##49028 |goto 76.13,65.52
accept WANTED: Ol' Frostclaw##49069 |goto 76.13,65.52
step
talk Finnia Hawkshot##134465
fpath Kennings Lodge |goto 76.67,65.42
stickystart "Collect_Fuzzy_Tails"
stickystart "Collect_Sturdy_Quills"
stickystart "Arm_Sprung_Beartraps"
step
clicknpc Hawk Nest##93699+
|tip They look like bird nests on the ground with eggs in them.
collect 12 Hawk Egg##152817 |q 48879/1 |goto 76.09,62.07
step
label "Collect_Fuzzy_Tails"
kill Mountain Raccoon##126625+
collect 4 Fuzzy Tail##152988 |q 49028/2 |goto 73.83,62.84
step
label "Collect_Sturdy_Quills"
kill Guarded Quillrat##126991+
|tip They look like porcupines.
collect 2 Sturdy Quills |q 49028/1 |goto 73.83,62.84
stickystart "Collect_Grizzly_Pelts"
step
Enter the cave |goto 79.36,65.67 < 15 |walk
kill Old Frostclaw##128093 |q 49069/1 |goto 80.03,65.61
|tip Inside the cave.
|tip You may need help with this.
step
label "Arm_Sprung_Beartraps"
click Sprung Beartrap##276447+
|tip They look like silver metal traps clamped shut with spiked teeth.
Arm #5# Sprung Beartraps |q 48874/1 |goto 77.58,64.47
step
label "Collect_Grizzly_Pelts"
kill Monstrous Grizzly##126929+
|tip They look like brown bears.
use the Simple Skinning Knife##152800
|tip Use it near their corpses.
Skin #6# Monstrous Grizzlies |q 48873/1 |goto 78.14,65.47
step
talk Kolta##127217
turnin A Sweater for Rupert##49028 |goto 76.69,65.03
step
talk Lord Kennings##127646
turnin A Hunt for Hawk Eggs##48879 |goto 75.82,65.78
step
talk Alanna Holton##127161
|tip In the doorway of the building.
turnin Pardon Our Rust##48874 |goto 75.85,65.85
turnin A Grizzly End##48873 |goto 75.85,65.85
turnin WANTED: Ol' Frostclaw##49069 |goto 75.85,65.85
accept Westward Noble##49072 |goto 75.85,65.85
step
talk Lord Kennings##127481
turnin Westward Noble##49072 |goto 70.89,61.99
accept The Start of a Monster Hunt##49039 |goto 70.89,61.99
step
click Smashed Crate
|tip It looks like a brown broken wooden box.
Investigate the Smashed Crate |q 49039/1 |goto 70.88,61.69
step
click Disturbed Trap
|tip It looks like a closed silver metal bear trap.
Investigate the Disturbed Trap |q 49039/3 |goto 70.80,61.43
step
click Bloody Trail
|tip It looks like red blood on the ground.
Investigate the Bloody Trail |q 49039/2 |goto 70.68,61.96
step
talk Lord Kennings##127481
turnin The Start of a Monster Hunt##49039 |goto 70.90,61.98
accept Noble Responsibilities##48909 |goto 70.90,61.98
step
_Next to you:_
talk Lord Kennings
accept Encase of Emergency##49066
stickystart "Collect_Pristine_Ice_Chunks"
step
clicknpc Cold Corpse##127648
|tip It looks like a dead elk.
Follow the Attacker's Trail |q 48909/1 |goto 70.32,62.93
step
clicknpc Hunter Corpse##127673
|tip It looks like a dead human.
Follow the Attacker's Trail |q 48909/2 |goto 69.23,62.42
step
clicknpc Dead Quillrat##127677
|tip It looks like a dead porcupine.
Follow the Attacker's Trail |q 48909/3 |goto 68.89,63.92
step
clicknpc Fresh Stag Corpse##127680
|tip It looks like a dead elk.
Follow the Attacker's Trail |q 48909/4 |goto 68.19,65.15
step
Enter the cave |goto 68.18,65.76 < 15 |walk |only if not (subzone("Stagheart Wash") and _G.IsIndoors())
kill Kurek the Lost##127413
|tip Inside the cave.
Kill the Wendigo |q 48909/5 |goto 68.08,66.65
step
label "Collect_Pristine_Ice_Chunks"
Leave the cave |goto 68.19,65.72 < 15 |walk |only if subzone("Stagheart Wash") and _G.IsIndoors()
click Humming Ice##277262+
|tip They look like large nodes of green ice.
|tip You will be attacked.
kill Agitated Ice Shardling##128062+
Gather #20# Pristine Ice Chunks |q 49066/1 |goto 68.72,63.64
step
_Next to you:_
talk Lord Kennings
turnin Encase of Emergency##49066
step
Leave the cave |goto 68.19,65.72 < 15 |walk |only if subzone("Stagheart Wash") and _G.IsIndoors()
talk Alanna Holton##127161
turnin Noble Responsibilities##48909 |goto 75.84,65.86
step
talk Lead Guide Zipwrench##134509
accept An Explosive Opportunity##50542 |goto 66.69,50.03
step
talk Dockmaster Tyndall##129956
turnin Left at the Port##51149 |goto 65.84,50.10
step
talk Wulferd Fizzbracket##129858
turnin An Explosive Opportunity##50542 |goto 67.50,55.81
accept The Beauty of Marketing##49531 |goto 67.50,55.81
accept Making Mysteries##49897 |goto 67.50,55.81
step
accept Spring Cleaning##49529 |goto 67.49,55.81
|tip You will automatically accept this quest.
|tip It may take a moment to complete.
|only if level < 60
stickystart "Catch_Unassuming_Chickens"
stickystart "Clean_Fizzspring_Resort"
step
use the Loaned S.E.L.F.I.E. Camera##155009
|tip Position yourself so that your character's face and the Rustfur Wolf nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
|tip There are other Rustfur Wolves around this area, if this one isn't here.
|tip They look like brown wolves.
Capture a Rustfur Wolf |q 49531/5 |goto 66.28,56.01
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 49531
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Loaned S.E.L.F.I.E. Camera##155009
|tip Position yourself so that your character's face and the Midland Stag nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
|tip There are other Midland Stags around this area, if this one isn't here.
|tip They look like elk.
Capture a Midland Stag |q 49531/1 |goto 66.32,56.97
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 49531
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Loaned S.E.L.F.I.E. Camera##155009
|tip Position yourself so that your character's face and the Geyser in the water nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Geyser |q 49531/2 |goto 66.32,56.97
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 49531
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Loaned S.E.L.F.I.E. Camera##155009
|tip Position yourself so that your character's face and the Ruined Robot nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Ruined Robot |q 49531/4 |goto 65.23,60.79
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 49531
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
talk Parin Tinklocket##137694
|tip At the entrance of the cave.
accept Inspection Gadget##51426 |goto 64.99,60.61
accept Reverse Tinkering##51430 |goto 64.99,60.61
stickystop "Catch_Unassuming_Chickens"
stickystart "Collect_V_300_Serial_Plates"
step
use the R.A.D.A.R.##160245
|tip Use it multiple times.
Survey #100# Percent of the Rusted Vault |q 51426/1 |goto 64.46,62.39
step
label "Collect_V_300_Serial_Plates"
kill V-300 SENTRY##137743+
|tip They look like robot dogs.
collect 4 V-300 Serial Plate##160317 |q 51430/1 |goto 64.75,62.98
step
talk Parin Tinklocket##137694
|tip At the entrance of the cave.
turnin Inspection Gadget##51426 |goto 64.99,60.61
turnin Reverse Tinkering##51430 |goto 64.99,60.61
stickystart "Catch_Unassuming_Chickens"
step
use the Loaned S.E.L.F.I.E. Camera##155009
|tip Position yourself so that your character's face and the Waterfall nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Waterfall |q 49531/3 |goto 70.13,55.31
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 49531
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
label "Clean_Fizzspring_Resort"
kill Hissing Swell##128768+
click Volatile Bubble+
|tip They look like big clear balls floating a little off the ground.
click Soaked Plank+
|tip They look like groups of wooden boards floating in the water and on the ground.
click Rusted Debris+
|tip They look like groups of metal nuts and bolts on the ground.
Clean Fizzspring Resort |q 49529/1 |goto 67.06,57.76
|only if haveq(49529) or completedq(49529)
step
label "Catch_Unassuming_Chickens"
clicknpc Unassuming Chicken##131174+
|tip They look like small white and brown chickens.
Catch #5# Unassuming Chickens |q 49897/1 |goto 67.06,57.76
step
talk Wulferd Fizzbracket##129858
turnin The Beauty of Marketing##49531 |goto 67.50,55.81
turnin Making Mysteries##49897 |goto 67.50,55.81
step
talk Flynn Fairwind##134166
Tell him _"Let's go."_
Speak with Flynn |q 47489/1 |goto 75.84,49.14
step
Board the Maiden's Virtue |q 47489/2 |goto 75.25,48.33
|tip Walk onto the deck of the ship.
step
click Barrel of Fish
|tip On the deck of the ship.
Hide in the Barrel of Fish |q 47489/3 |goto 75.49,48.10
step
Watch the dialogue
Travel to the Wailing Tideway |goto 85.53,85.10 < 10 |noway |c |q 47489
step
talk Beachcomber Bob##128377
|tip He walks around this area.
turnin Stow and Go##47489 |goto 85.74,83.54
accept The Castaways##49218 |goto 85.74,83.54
accept Lured and Allured##48419 |goto 85.74,83.54
step
talk Stabby Jane##128229
|tip Up in the camp.
turnin The Castaways##49218 |goto 85.47,80.82
accept My Favorite Things##49178 |goto 85.47,80.82
accept Silencing the Sisters##49226 |goto 85.47,80.82
step
talk Stabby Jane##128229
Choose _<Ask if she has seen Flynn.>_
Ask Stabby Jane About Flynn |q 48419/1 |goto 85.47,80.82
step
talk Hungry Sam##128228
accept Local Flavor##49230 |goto 85.47,80.72
step
talk Hungry Sam##128228
Ask him _"What's your favorite thing you lost in the wreck?"_
Speak with Hungry Sam |q 49178/1 |goto 85.47,80.72
step
talk Friendly Pete##128233
Ask him _"What's your favorite thing you lost in the wreck?"_
Speak with Friendly Pete |q 49178/2 |goto 85.26,80.32
step
talk Friendly Pete##128233
home Castaway Point |goto 85.26,80.32 |q 49398 |future
step
talk Handy Bill##128227
Ask him _"What's your favorite thing you lost in the wreck?"_
Speak with Handy Bill |q 49178/3 |goto 86.44,81.30
step
talk Skinny Tim##128224
fpath Castaway Point |goto 86.42,80.81
step
talk Captain Keelson##136966
accept Blood in the Tides##48421 |goto 86.36,79.74
stickystart "Collect_Juicy_Lurker_Tails"
stickystart "Kill_Wailing_Sirens"
step
click Silver Compass
collect Silver Compass##153186 |q 49178/5 |goto 88.26,78.15
step
click Tin Robot
|tip It looks like a small red humanoid robot.
collect Tin Robot##153187 |q 49178/6 |goto 87.69,75.12
step
click Glimmering Seaweed
|tip It looks like a green bush.
accept Glimmering Locket##49181 |goto 87.97,75.01
step
Search the Wailing Tideway for Flynn |q 48419/2 |goto 90.13,74.38
step
kill Lugeia##126157 |q 48419/3 |goto 90.13,74.38
|tip She looks like a larger flying mermaid.
|tip Ignore the sailors she summons.
|tip They will become friendly when you kill her.
step
click Steel Lunchbox
|tip It looks like a small dark metal chest.
collect Steel Lunchbox##153185 |q 49178/4 |goto 88.28,72.92
step
Enter the cave |goto 87.00,72.60 < 20 |walk |only if not (subzone("The Wailing Tideway") and _G.IsIndoors())
kill Nolpe##128408 |q 49226/2 |goto 86.44,72.93
kill Patheope##128407 |q 49226/1 |goto 86.48,72.55
|tip They will attack together.
|tip Inside the cave.
step
label "Collect_Juicy_Lurker_Tails"
Leave the cave |goto 87.00,72.60 < 20 |walk |only if subzone("The Wailing Tideway") and _G.IsIndoors()
kill Tide Lurker##126237+
|tip They look like large armored insects.
collect 5 Juicy Lurker Tail##153348 |q 49230/1 |goto 88.03,76.75
step
label "Kill_Wailing_Sirens"
Leave the cave |goto 87.00,72.60 < 20 |walk |only if subzone("The Wailing Tideway") and _G.IsIndoors()
kill 8 Wailing Siren##126440 |q 48421/1 |goto 88.91,76.05
|tip They look like flying mermaids.
step
Leave the cave |goto 87.00,72.60 < 20 |walk |only if subzone("The Wailing Tideway") and _G.IsIndoors()
talk Captain Keelson##125342
turnin Blood in the Tides##48421 |goto 85.72,76.63
step
talk Hungry Sam##128228
|tip Up in the camp.
turnin Local Flavor##49230 |goto 85.47,80.72
step
talk Stabby Jane##128229
turnin My Favorite Things##49178 |goto 85.46,80.82
turnin Glimmering Locket##49181 |goto 85.46,80.82
turnin Silencing the Sisters##49226 |goto 85.46,80.82
step
talk Flynn Fairwind##126158
turnin Lured and Allured##48419 |goto 84.90,76.06
accept Lovesick and Lost##48505 |goto 84.90,76.06
step
_NOTE:_
During the Escort Quest
|tip You are about to complete an escort quest.
|tip While doing the escort quest, you will complete another quest at the same time.
|tip Follow Flynn Fairwind and do the side quest, but don't lose track of him.
|tip He will appear on your minimap as a yellow dot.
|tip He will wait on you while you fight.
Click Here to Continue |confirm |q 48516 |future
step
talk Flynn Fairwind##126158
Choose _<Help him up.>_
Watch the dialogue
Begin Following Flynn Fairwind |goto 84.90,76.06 > 10 |c |q 48505
stickystart "Escort_Flynn_To_Freehold"
step
talk Skinner MacGuff##126511
accept Toxic Community##48516 |goto 82.72,72.75
step
Kill enemies around this area
|tip They look like lizards and flying insects.
collect 50 Toxic Stinger##152514 |q 48516/1 |goto 82.63,73.10
step
talk Skinner MacGuff##126511
turnin Toxic Community##48516 |goto 82.72,72.75
step
label "Escort_Flynn_To_Freehold"
Watch the dialogue
|tip Follow Flynn Fairwind as he walks.
|tip If he stops, walk close to him to make him start walking again.
|tip He will appear on your minimap as a yellow dot.
|tip He will wait on you while you fight.
|tip He will eventually walk to this location. |notinsticky
Escort Flynn to Freehold |q 48505/1 |goto 80.72,74.85
step
Watch the dialogue
talk Flynn Fairwind##126620
turnin Lovesick and Lost##48505 |goto 80.20,75.26
accept Freehold##48539 |goto 80.20,75.26
step
click Flynn's Spyglass
Use Flynn's Spyglass |q 48539/1 |goto 80.17,75.30
step
Watch the dialogue
talk Flynn Fairwind##126620
turnin Freehold##48539 |goto 80.20,75.25
accept Papers, Please##48773 |goto 80.20,75.25
accept The Irontide Crew##48558 |goto 80.20,75.25
step
talk Geraldine##127537
accept The Beatings Will Continue##48774 |goto 79.19,76.32
accept Rig Robbing##48776 |goto 79.19,76.32
stickystart "Collect_Azerite_Cutlasses"
stickystart "Collect_Trickshots_Azerite_Powder_Horns"
stickystart "Kill_Irontide_Ruffians"
stickystart "Kill_Irontide_Overseers"
step
Run up the stairs |goto 78.83,78.52 < 10 |only if walking
kill Dockmaster Marl##127143
|tip He walks around this area.
collect Dockmaster's Key##152722 |goto 78.91,79.00 |q 48558
step
click Dockmaster's Strongbox
|tip It looks like a treasure chest.
|tip Under the canopy.
collect Dockmaster's Records##152721 |q 48773/1 |goto 79.14,78.78
step
Run up the stairs |goto 79.07,77.85 < 10 |only if walking
click Azerite Cannonball##276488
|tip Upstairs inside the building.
accept Loaded for Bear##48606 |goto 78.61,77.86
step
click Ashvane Cannon##126927
kill Ashvane Co. Supplies##127059+
|tip They look like piles of wooden boxes and barrels on the ships in the water nearby.
|tip Use the ability on your action bar.
click Azerite Cannonball##276488+
|tip They look like grey round balls with blue smoke rising out of them on the ground.
|tip You can find more downstairs around this area.
collect Azerite Cannonball##152628+ |n
|tip You can fire the cannon once with each cannonball.
Destroy #6# Ashvane Co. Supplies |q 48606/1 |goto 78.44,77.68
You can find another cannon and more cannonballs upstairs around [77.73,76.63]
step
_Click the Complete Quest Box:_
|tip In the quest tracker area.
turnin Loaded for Bear##48606
step
click Tangled Rigging
|tip After you click it, run away from it.
|tip Pull the items floating in the water to shore.
|tip Repeat this process.
click "Sea Dog" Grog
|tip It will appear on the ground on the fifth try.
collect "Sea Dog" Grog##152667 |q 48776/1 |goto 77.04,76.27
step
label "Collect_Azerite_Cutlasses"
kill Irontide Cutthroat##126719+
|tip They look like humans with swords.
collect 3 Azerite Cutlass##152719 |q 48558/1 |goto 78.38,76.85
step
label "Collect_Trickshots_Azerite_Powder_Horns"
kill Irontide Trickshot##126774+
|tip They look like humans with rifles.
collect 2 Trickshot's Azerite Powder Horn##152720 |q 48558/2 |goto 78.38,76.85
step
label "Kill_Irontide_Ruffians"
kill 5 Irontide Ruffian##126720 |q 48774/1 |goto 78.38,76.85
|tip They look like muscular humans.
step
label "Kill_Irontide_Overseers"
kill 2 Irontide Overseer##126770 |q 48774/2 |goto 78.38,76.85
|tip They look like humans riding on horses.
step
talk Geraldine##127537
turnin The Beatings Will Continue##48774 |goto 79.19,76.33
turnin Rig Robbing##48776 |goto 79.19,76.33
step
talk Flynn Fairwind##126620
turnin The Irontide Crew##48558 |goto 80.35,81.46
turnin Papers, Please##48773 |goto 80.35,81.46
accept Dress to Impress##49239 |goto 80.35,81.46
step
Wear the Irontide Recruit Disguise |havebuff 2055038 |q 49239
|tip Use the "Irontide Recruit" ability.
|tip It appears as a button on the screen.
step
talk Roko##128702
accept Aged to Perfection##49290 |goto 79.70,81.85
step
talk Irontide Recruiter##128700
|tip He walks around this area.
Tell him _"We want to join the Irontide Raiders. We brought our own hats."_
Speak with the Irontide Recruiter |q 49239/1 |goto 79.79,82.53
step
Cross the bridge and enter the building |goto 77.33,84.14 < 10 |walk
Enter the Dead Man's Tale |q 49239/2 |goto 77.31,84.02
|tip Inside the building.
step
Watch the dialogue
talk Flynn Fairwind##126620
|tip Inside the building.
turnin Dress to Impress##49239 |goto 77.33,83.96
accept Rodrigo's Roost##49401 |goto 77.33,83.96
step
talk  Venrik##128927
|tip Inside the building.
accept Raise a Glass!##49398 |goto 77.36,83.92
step
talk  Venrik##128927
|tip Inside the building.
Tell him _"Milk... in a skull mug."_
Order a Drink From Venrik |q 49398/1 |goto 77.36,83.92
step
use the Goat's Milk in a Skull Mug##153601
Have a Drink |q 49398/2 |goto 77.36,83.92
step
talk  Venrik##128927
|tip Inside the building.
turnin Raise a Glass!##49398 |goto 77.36,83.92
step
talk Jill McHoonigan##136479
|tip Inside the building.
home Freehold |goto 77.39,83.97 |q 49757 |future
step
talk Rodrigo##129098
|tip On top of the building.
fpath Freehold |goto 77.04,82.89
step
talk Rodrigo##129098
|tip On top of the building.
accept Flew the Coop##49402 |goto 77.04,82.89
stickystart "Feed_Runaway_Macaws"
step
talk Rodrigo##129098
|tip On top of the building.
Ask him _"Can you send this letter to Taelia in Boralus?"_
Send the Letter to Taelia |q 49401/1 |goto 77.04,82.90
step
Enter the building |goto 77.25,83.82 < 10 |walk
talk Flynn Fairwind##126620
|tip Inside the building.
turnin Rodrigo's Roost##49401 |goto 77.33,83.97
accept The Big Job##49399 |goto 77.33,83.97
step
talk Venrik##128927
|tip Inside the building.
accept Recruiting Efforts##49400 |goto 77.36,83.92
stickystart "Tear_Down_Irontide_Recruiting_Posters"
step
click Sternly Worded Letter
|tip It looks like a long piece of paper hanging on the column.
accept Missing Treasure!##49409 |goto 77.20,84.85
stickystart "Collect_Blacktooth_Bruiser_Orders"
stickystart "Collect_Bilge_Rat_Orders"
stickystart "Collect_Cutwater_Corsair_Orders"
step
label "Feed_Runaway_Macaws"
use Rodrigo's Birdseed Biscuit##154878
|tip Use it on Runaway Macaws.
|tip They look like birds flying slower in the air around this area.
|tip You don't need to target them.
|tip Get near them and spam the use item button until it works.
Feed #6# Runaway Macaws |q 49402/1 |goto 77.35,84.75
step
Run up the stairs and enter the building |goto 77.77,85.22 < 10 |walk
talk Ned##129967
|tip Upstairs inside the building.
Ask him _"<Show the poster.> What do you know about this buried treasure?"_
Ask Ned |q 49409/1 |goto 77.78,85.01
step
Run up the stairs |goto 77.40,85.71 < 10 |only if walking
Enter the building |goto 76.98,86.05 < 10 |walk
talk Carentan##128903
|tip Inside the building.
turnin Aged to Perfection##49290 |goto 76.89,85.97
accept Trixie Business##49407 |goto 76.89,85.97
step
label "Tear_Down_Irontide_Recruiting_Posters"
click Irontide Recruiting Poster##278308+
|tip They look like scrolls hanging on walls and posts.
Use the Irontide Recruit Disguise
|tip You will lose your disguise when tearing down the posters, if there are any Irontide friendly NPC's nearby.
|tip It appears as a button on the screen.
Tear Down #6# Irontide Recruiting Posters |q 49400/1 |goto 77.29,84.74
step
Run up the stairs and enter the building |goto 76.37,84.54 < 10 |walk
talk Nub Nub##129960
|tip Inside the building.
Ask him _"<Show the poster.> What do you know about this buried treasure?"_
Ask Nub Nub |q 49409/2 |goto 76.38,84.32
step
talk Nance Barmy##129968
Ask her _"<Show the poster.> What do you know about this buried treasure?"_
Ask Nance Barmy |q 49409/3 |goto 76.13,83.05
step
Locate First Mate Trixie Tornsail |goto 76.48,82.63 < 10 |c |q 49407
step
talk First Mate Trixie Tornsail##129887
Tell her _"Yarr! Some brine-brained scalawag be sullyin' the good name of the Irontide Raiders! Just over there, behind that building!"_
Watch the dialogue
Begin Following First Mate Trixie Tornsail |goto 76.48,82.63 > 10 |c |q 49407
step
Watch the dialogue
|tip Follow First Mate Trixie Tornsail as she walks.
|tip Stay close to her, she must be able to see you, or she won't attack you.
kill First Mate Trixie Tornsail##129887 |q 49407/1 |goto 77.07,83.36
step
Wear the Irontide Recruit Disguise |havebuff 2055038 |q 49399
|tip Use the "Irontide Recruit" ability.
|tip It appears as a button on the screen.
step
label "Collect_Blacktooth_Bruiser_Orders"
Kill Blacktooth enemies around this area
|tip They look like humans.
collect Blacktooth Bruiser Orders##153682 |q 49399/3 |goto 76.40,83.42
step
label "Collect_Bilge_Rat_Orders"
Kill enemies around this area
|tip Only Ookin Crewman and Vulpera enemies will drop the quest item.
|tip They look like monkeys and fox people.
collect Bilge Rat Orders##153680 |q 49399/1 |goto 76.40,83.42
step
label "Collect_Cutwater_Corsair_Orders"
Kill Cutwater enemies around this area
|tip They look like humans.
collect Cutwater Corsair Orders##153681 |q 49399/2 |goto 76.40,83.42
step
Run up the stairs |goto 76.80,83.61 < 10 |only if walking
talk Rodrigo##129098
|tip On top of the building.
turnin Flew the Coop##49402 |goto 77.03,82.90
accept Rodrigo's Revenge##49403 |goto 77.03,82.90
step
clicknpc Riding Macaw##143068
|tip On top of the building.
Mount the Riding Macaw |invehicle |goto 77.06,82.63 |q 49403
step
Bomb #100# Pirates |q 49403/1 |goto 76.01,83.41
|tip Use the ability on your action bar.
|tip They look likr humans on the ground as you fly.
step
Return to Rodrigo |goto 77.06,82.90 < 10 |c |q 49403 |notravel
step
Stop Flying with the Riding Macaw |outvehicle |goto 77.06,82.90 |q 49403
|tip Click the red arrow on your action bar.
step
talk Rodrigo##129098
|tip On top of the building.
turnin Rodrigo's Revenge##49403 |goto 77.03,82.90
step
Enter the building |goto 77.25,83.82 < 10 |walk
talk Venrik##128927
|tip Inside the building.
turnin The Big Job##49399 |goto 77.36,83.92
accept Fairwind's "Friends"##49404 |goto 77.36,83.92
turnin Recruiting Efforts##49400 |goto 77.36,83.92
step
Run up the stairs |goto 77.40,85.71 < 10 |only if walking
Enter the building |goto 76.98,86.05 < 10 |walk
talk Carentan##128903
|tip Inside the building.
turnin Trixie Business##49407 |goto 76.89,85.97
accept Carentan's Payment##49522 |goto 76.89,85.97
step
click Dusty Crate
|tip It looks like a wooden crate.
|tip Inside the building.
Open the Dusty Crate |q 49522/1 |goto 76.82,85.97
step
_Click the Complete Quest Box:_
|tip In the quest tracker area.
turnin Carentan's Payment##49522
accept A Bad Deal##49523
step
click Sandy Seaweed-covered Chest
|tip It looks like an open treasure chest.
Find the Sandy Seaweed-Covered Chest |q 49409/4 |goto 75.63,80.57
step
click Dirty Diamond
|tip It looks like a tiny white jewel on the ground.
Find the Missing Treasure |q 49409/5 |goto 76.30,80.77
step
_Click the Complete Quest Box:_
|tip In the quest tracker area.
turnin Missing Treasure!##49409
step
Enter the Ring of Booty |q 49404/1 |goto 74.09,83.43
|tip You will be attacked by a group of enemies.
step
Kill the enemies that attack
clicknpc Flynn Fairwind##130081
Untie Flynn |q 49404/2 |goto 73.84,83.43
step
Watch the dialogue
Kill the enemies that attack in waves
|tip There are 3 waves.
Survive Harlan's Game |q 49404/3 |goto 73.88,83.43
step
Watch the dialogue
|tip You will fly automatically.
Escape on the Tiragarde Great Gryphon |invehicle |goto 73.88,83.43 |q 49404
step
Watch the dialogue
Escape the Ring of Booty |goto 76.99,82.96 < 10 |c |q 49404 |notravel
step
talk Taelia##130159
|tip At the top of the building.
turnin Fairwind's "Friends"##49404 |goto 77.14,82.90
accept Defenders of Daelin's Gate##49405 |goto 77.14,82.90
step
clicknpc Galeheart##130158
|tip At the top of the building.
Mount Galeheart |q 49405/1 |goto 77.14,82.90
step
Watch the dialogue
Ride to Vigil Hill |q 49405/2 |goto 61.59,57.84 |notravel
step
talk Vigil Hill Refugee##141078
turnin Defenders of Daelin's Gate##49405 |goto 60.92,59.17
accept No-Landing Zone##52431 |goto 60.92,59.17
step
kill Burnsy the Blade##141107 |q 52431/1 |goto 61.21,61.25
kill Wiley Jaki##141108 |q 52431/2 |goto 61.21,61.23
kill Skullcrusher Cotner##141113 |q 52431/3 |goto 61.19,61.27
|tip They will attack one at a time.
|tip They will be dropped off by a boat nearby.
step
talk Vigil Hill Refugee##141078
turnin No-Landing Zone##52431 |goto 60.92,59.17
accept A Desperate Defense##49869 |goto 60.92,59.17
step
talk Lieutenant Tarenfold##131048
turnin A Desperate Defense##49869 |goto 56.68,61.18
accept Farmers Who Fight##52750 |goto 56.69,61.18
accept Air Raid##49737 |goto 56.69,61.18
step
talk Taelia##121235
accept Numbing the Pain##52787 |goto 56.47,61.73
stickystart "Kill_Irontide_Skyriders"
stickystart "Collect_Evermoss_Clumps"
step
talk Vigil Hill Farmer##141519+
|tip They look like friendly humans.
Recruit #6# Vigil Hill Farmers |q 52750/1 |goto 56.16,59.79
step
label "Kill_Irontide_Skyriders"
kill 6 Irontide Skyrider##141485 |q 49737/1 |goto 56.16,59.79
|tip They look like humans riding large birds.
step
label "Collect_Evermoss_Clumps"
click Evermoss+
|tip They look like stringy green plants hanging from the side of tree trunks.
collect 5 Evermoss Clump##162522 |q 52787/1 |goto 56.16,59.79
step
talk Lieutenant Tarenfold##131048
turnin Farmers Who Fight##52750 |goto 56.68,61.18
turnin Air Raid##49737 |goto 56.67,61.18
accept Hands Off My Booty!##49738 |goto 56.67,61.18
step
talk Taelia##121235
turnin Numbing the Pain##52787 |goto 56.47,61.73
step
talk Sky Marshal Sanders##130599
fpath Vigil Hill |goto 57.74,61.53
step
Enter the building |goto 57.82,61.85 < 10 |walk
talk Gordon Fine##136482
|tip Inside the building.
home Vigil Hill |goto 57.95,62.09 |q 50972 |future
step
talk Meredith##131654
accept Cat on a Hot Copper Roof##49757 |goto 58.60,61.52
step
click Ring##130703
|tip They look like metal loops hanging all over the sides of this building.
|tip You may have to jump to reach it.
Grab the Climbing Ring |havebuff 1360761 |goto 58.79,61.30 |q 49757
step
click Ring##130703+
|tip They look like metal loops hanging all over the sides of this building.
|tip Keep clicking the rings so that you reach the balcony at the top of the building.
|tip You have 30 seconds until you lose your grip every time you switch rings.
|tip Wait for the falling debris to fall, and quickly click the rings to move past where it falls.
|tip Debris falls on the eastern and northern sides of the building.
Click Here After You Reach the Balcony |confirm |goto 58.79,61.29 |q 49757
step
clicknpc Scratchy##130746
|tip It looks like a cat.
|tip Upstairs on the balcony of the building.
|tip Click it twice.
collect Scratchy##155858 |q 49757/1 |goto 58.85,61.34
step
talk Meredith##131654
turnin Cat on a Hot Copper Roof##49757 |goto 58.60,61.52
step
clicknpc Vigil Hill Cannon##131220
|tip At the top of the hill.
Control the Vigil Hill Cannon |invehicle |goto 56.17,64.42 |q 49738
step
Kill enemies around this area
|tip They look like humans on the ground below.
|tip Use the ability on your action bar.
Slay #20# Looters |q 49738/1 |goto 56.18,64.47
step
talk Lieutenant Tarenfold##131048
turnin Hands Off My Booty!##49738 |goto 56.68,61.18
accept For Kul Tiras!##49736 |goto 56.68,61.18
accept Cease Fire!##49740 |goto 56.68,61.18
step
talk Taelia##142393
accept Righteous Retribution##49741 |goto 56.47,61.73
stickystart "Inspire_Vigil_Hill_Defenders"
step
accept Enemies at the Gate##49739 |goto 58.09,64.02
|tip You will accept this quest automatically.
|only if level < 60
stickystart "Defend_Daelins_Gate"
step
click Captured Cannon
Destroy the Captured Cannon |q 49740/1 |goto 57.66,67.41 |count 1
step
Follow the path up |goto 57.02,70.70 < 10 |only if walking
click Captured Cannon
|tip Up on the platform.
Destroy the Captured Cannon |q 49740/1 |goto 57.21,70.11 |count 2
step
click Captured Cannon
|tip Up on the platform.
Destroy the Captured Cannon |q 49740/1 |goto 57.38,69.70 |count 3
step
Jump up here |goto 56.57,69.77 < 7 |only if walking
click Captured Cannon
|tip Up on the platform.
Destroy the Captured Cannon |q 49740/1 |goto 56.58,69.21 |count 4
step
Board the ship |goto 55.69,67.95 < 10 |only if walking
click Azerite Bombs
|tip It looks like a wooden box full of bombs.
|tip On the deck of the ship.
Steal the Azerite Bombs |q 49741/1 |goto 55.39,67.83
step
Bomb The Plunder Runner |q 49741/2 |goto 55.84,67.54
|tip Use the "Azerite Bomb" ability.
|tip It appears as a button on the screen.
step
label "Inspire_Vigil_Hill_Defenders"
use the Proudmoore Battle Standard##156520
|tip Use it near Vigil Hill NPCs.
|tip They look like friendly humans around this area.
Inspire #15# Vigil Hill Defenders |q 49736/1 |goto 57.28,66.07
step
label "Defend_Daelins_Gate"
Kill enemies around this area
click Sack of Booty+
|tip They look like large tan bags on the ground.
clicknpc Inactive Harvest Thresher##141559+
|tip They look like broken down metal machines.
|tip They will appear on your minimap as yellow dots.
Defend Daelin's Gate |q 49739/1 |goto 57.28,66.07
|only if haveq(49739) or completedq(49739)
step
click Landing Boat
Board the Landing Boat |q 49741/3 |goto 59.04,66.55
step
Bomb The Bloodwake |q 49741/4 |goto 59.69,67.90
|tip Use the "Azerite Bomb" ability.
|tip It appears as a button on the screen.
step
Return to Shore |goto 57.29,71.81 < 7 |c |q 49741 |notravel
step
clicknpc Galeheart##141838
Mount Galeheart |q 49741/5 |goto 57.56,71.58
step
Ignite #5# Powder Barrels |q 49741/6 |goto 55.94,75.78
|tip They look like wooden barrels on the ship below as you fly.
|tip Use the ability on your action bar.
step
Return to Shore |goto 57.56,71.58 < 10 |c |q 49741
step
talk Lieutenant Tarenfold##131048
turnin For Kul Tiras!##49736 |goto 56.68,61.18
turnin Cease Fire!##49740 |goto 56.68,61.18
step
talk Taelia##142393
turnin Righteous Retribution##49741 |goto 56.50,61.25
accept Bearers of Bad News##50110 |goto 56.50,61.25
step
clicknpc Galeheart##142407
Mount Galeheart |q 50110/1 |goto 56.51,61.26
step
Watch the dialogue
Travel to Unity Square |goto Boralus/0 49.05,75.75 < 10 |c |q 50110 |notravel
step
talk Taelia##135259
turnin Bearers of Bad News##50110 |goto Boralus/0 49.10,75.73
accept Prepare for Trouble##50795 |goto Boralus/0 49.10,75.73
step
talk Proudmoore Guard##135075+
|tip They look like armored humans.
Tell them _"The Lord Admiral is in danger. Come with us!"_
Rally #4# Proudmoore Guards |q 50795/1 |goto 47.50,80.92
step
_Next to you:_
talk Taelia
turnin Prepare for Trouble##50795
accept Make Our Case##50787
step
Watch the dialogue
Reveal Lady Ashvane's Treason |q 50787/1 |goto 49.21,85.42
step
talk Taelia##135259
turnin Make Our Case##50787 |goto 50.01,87.58
accept Enemies Within##50788 |goto 50.01,87.58
accept Clear the Air##50789 |goto 50.01,87.58
stickystart "Slay_Ashvane_Combatants"
step
click Smoking Payload
|tip It looks like a barrel with smoke pouring out of it.
Destroy the Smoking Payload |q 50789/1 |goto 49.45,87.08 |count 1
step
click Smoking Payload
|tip It looks like a barrel with smoke pouring out of it.
Destroy the Smoking Payload |q 50789/1 |goto 48.64,85.61 |count 2
step
click Smoking Payload
|tip It looks like a barrel with smoke pouring out of it.
Destroy the Smoking Payload |q 50789/1 |goto 49.50,84.78 |count 3
step
click Smoking Payload
|tip It looks like a barrel with smoke pouring out of it.
Destroy the Smoking Payload |q 50789/1 |goto 48.19,82.63 |count 4
step
label "Slay_Ashvane_Combatants"
Kill Ashvane enemies around this area
|tip They look like hostile humans.
Slay #6# Ashvane Combatants |q 50788/1 |goto 49.21,85.39
step
_Click the Complete Quest Box:_
|tip In the quest tracker area.
turnin Clear the Air##50789
turnin Enemies Within##50788
accept Hot Pursuit##50790
step
clicknpc Proudmoore Charger##135672
|tip It looks like a horse.
Mount the Proudmoore Charger |q 50790/1 |goto 47.75,81.39
step
Watch the dialogue
|tip Spam both of the abilities on your action bar as you ride the horse.
Pursue Priscilla Ashvane |q 50790/2 |goto 39.91,51.36 |notravel
step
Watch the dialogue
Return to Unity Square |goto 47.85,81.36 < 10 |noway |c |q 50790
step
talk Taelia##135259
turnin Hot Pursuit##50790 |goto 48.29,80.60
step
talk Katherine Proudmoore##121144
accept Proudmoore's Parley##50972 |goto 48.42,80.86
step
talk Jessica Clarke##143535
fpath Proudmoore Keep |goto 47.75,65.43
step
talk Roko##129940
|tip He walks around this area.
|tip Run around the buildings.
turnin A Bad Deal##49523 |goto 70.45,11.19
step
talk Courier Gerald##130377
accept Trouble at Southport Watch##49715 |goto 69.25,11.35
step
Enter the building |goto 73.50,13.81 < 10 |walk
talk Wesley Rockhold##135153
|tip Inside the building.
home Snug Harbor Inn |goto 74.12,12.68
step
talk Will Melborne##135064
|tip Choose Eastpoint Station on the boat map.
|tip It's almost directly south of Boralus.
Take the Ferry to Eastpoint Station |ontaxi |goto 74.17,24.81 |q 49715
step
Arrive in Eastpoint Station |complete subzone("Eastpoint Station") |goto Tiragarde Sound/0 74.28,44.34 |q 49715 |notravel
step
Enter the building |goto Tiragarde Sound/0 81.08,42.41 < 10 |walk
talk Tallis Skyheart##130375
|tip Inside the building.
turnin Trouble at Southport Watch##49715 |goto Tiragarde Sound/0 81.10,42.48
accept Patching Up the Rear##49733 |goto Tiragarde Sound/0 81.10,42.48
step
talk Hawkmaster Lloyd##132720
accept Death from Two Sides##51226 |goto 80.62,42.09
stickystart "Kill_Brinefang_Saurolisks"
step
talk Injured Marine##130556+
|tip They look like humans kneeling and laying on the ground.
Bandage #5# Injured Marines |q 49733/1 |goto 81.96,42.10
step
label "Kill_Brinefang_Saurolisks"
kill 8 Brinefang Saurolisk##136901 |q 51226/1 |goto 82.19,42.47
|tip They look like large lizards.
step
talk Hawkmaster Lloyd##132720
turnin Death from Two Sides##51226 |goto 80.62,42.09
step
Enter the building |goto 81.08,42.42 < 10 |walk
talk Tallis Skyheart##130375
|tip Inside the building.
turnin Patching Up the Rear##49733 |goto 81.10,42.48
accept Targeting a Turncoat##49734 |goto 81.10,42.48
accept A Lesson on Trust##49716 |goto 81.10,42.48
step
talk Officer Jovan##133035
|tip Inside the building.
accept A Boralus Triple Threat##50249 |goto 81.11,42.50
step
talk Hawkmaster Lloyd##132720
accept Free Bird##49720 |goto 80.62,42.09
stickystart "Free_Falcons"
stickystart "Collect_Marine_Identification_Badges"
step
Enter Greystone Keep |goto 79.91,39.50 < 15 |only if walking
Run down the stairs |goto 78.89,39.18 < 10 |only if walking
Run up the stairs |goto 78.51,37.27 < 15 |only if walking
kill Hayden the Madshot##133028 |q 50249/3 |goto 78.16,36.71
|tip He walks around this area.
step
kill Stablemaster Diana##133024 |q 50249/2 |goto 80.14,37.38
|tip She walks around this area on a horse.
step
kill Overseer Howling##133021 |q 50249/1 |goto 78.75,38.82
step
label "Free_Falcons"
click Falcon Cage##278774+
|tip They look like metal bird cages.
Free #5# Falcons |q 49720/1 |goto 79.38,38.27
step
label "Collect_Marine_Identification_Badges"
Kill Mutinous enemies around this area
|tip They look like humans.
|tip Use the "Call Leonard" ability on enemies to kill them easier.
|tip It appears as a button on the screen.
collect 8 Marine Identification Badge##156599 |q 49716/1 |goto 79.38,38.27
step
Run up the stairs |goto 79.73,37.79 < 10 |only if walking
kill Fernn the Turncoat##130369 |q 49734/1 |goto 80.13,38.89
step
talk Hawkmaster Lloyd##132720
turnin Free Bird##49720 |goto 80.63,42.09
step
Enter the building |goto 81.08,42.42 < 10 |walk
talk Tallis Skyheart##130375
|tip Inside the building.
turnin Targeting a Turncoat##49734 |goto 81.10,42.48
turnin A Lesson on Trust##49716 |goto 81.10,42.48
turnin A Boralus Triple Threat##50249 |goto 81.10,42.48
step
Enter the building |goto Boralus/0 68.83,21.11 < 10 |walk
talk Genn Greymane##120788
|tip Inside the building.
turnin Proudmoore's Parley##50972 |goto Boralus/0 68.05,22.18
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Drustvar (20-60)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Drustvar storylines:\n\nThe Final Effigy\nAn Airtight Alibi\nA New Order\nStorming the Manor\nFighting With Fire\nThe Burden of Proof\nThe Order of Embers\nBreak on Through\nClear Victory\nStick It To 'Em!",
condition_suggested=function() return level >= 20 and not completedq(50588) and completedq(47189) end,
image=ZGV.IMAGESDIR.."Drustvar",
next="Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Stormsong Valley (30-60)",
},[[
step
click Scouting Map
|tip Inside the building.
accept Drustvar##47961 |goto Boralus/0 68.38,22.09
step
talk Taelia##121235
|tip Inside the building.
turnin accept 47961 |goto Boralus/0 68.17,21.97
accept The Vanishing Lord##48622 |goto Boralus/0 68.17,21.97
step
talk Will Melborne##135064
Tell him _"I need a ferry to Drustvar."_
Take the Ferry to Drustvar |q 48622/1 |goto Boralus/0 74.17,24.78
step
Watch the dialogue
Ride the Ferry to Drustvar |goto Drustvar/0 61.79,36.54 < 10 |c |q 48622 |notravel
step
talk Cyril White##130419
Choose _<Look for the source of the spell.>_
Meet with Cyril White |q 48622/2 |goto 56.14,35.29
step
click Cursed Effigy
Destroy the Effigy |q 48622/3 |goto 55.87,35.06
step
click Cursed Effigy
turnin The Vanishing Lord##48622 |goto 55.87,35.07
step
click Mayor's Bulletin
|tip It looks like a scroll hanging on the wooden post.
accept Signs and Portents##47968 |goto 56.14,35.30
stickystart "Accept_Fallhavens_Curse"
stickystart "Combat_The_Curse"
step
click Rancher's Letter
|tip It looks like a piece of paper on the ground.
Read the Rancher's Letter |q 47968/2 |goto 57.96,35.69
step
label "Accept_Fallhavens_Curse"
accept Fallhaven's Curse##47969 |goto 57.19,35.85 |only if level < 60
|tip You will automatically accept this quest. |only if level < 60
step
label "Combat_The_Curse"
Kill enemies around this area
|tip The Fallhaven Pigs respawn quickly, so this is the best place to get the quest completed fast.
click Tainted Pig Feed+
|tip They look like small yellow piles of dirt on the ground.
click Cursed Charm+
|tip They look like dreamcatcher ornaments hanging from the buildings and trees.
Combat the Curse |q 47969/1 |goto 58.11,34.13
|only if haveq(47969) or completedq(47969)
step
Enter the building |goto 55.27,35.50 < 10 |walk |only if not (subzone("Fallhaven") and _G.IsIndoors())
click Ava's Note
|tip It looks like a bundle of papers sitting on a small barrel.
|tip Inside the building.
Read Ava's Note |q 47968/3 |goto 55.21,35.98
step
Leave the building |goto 55.27,35.48 < 10 |walk |only if subzone("Fallhaven") and _G.IsIndoors()
click Farmer's Journal
|tip It looks like a book sitting on a wooden crate.
Read the Farmer's Journal |q 47968/1 |goto 53.21,35.13
step
click Fallhaven Log
|tip It looks like a book sitting on a table.
turnin Signs and Portents##47968 |goto 55.64,35.76
accept The Wayward Crone##47978 |goto 55.64,35.76
step
Enter the building |goto 60.62,31.45 < 10 |walk
talk Helena Gentle##124922
|tip Inside the building.
turnin The Wayward Crone##47978 |goto 60.51,31.65
accept Witch Hunt##47979 |goto 60.51,31.65
step
click Stool
|tip Inside the building.
Take a Seat |q 47979/1 |goto 60.48,31.58
step
Watch the dialogue
click Gentle's Spellbook
|tip Inside the building.
accept Cracking the Curse##47981 |goto 60.58,31.47
step
clicknpc Fallhaven Villager##125093
accept Furious Familiars##47980 |goto 60.85,30.65
stickystart "Slay_Enthralled_Wildlife"
step
click Lesser Effigy
|tip Up on the hill.
Destroy the Lesser Effigy |q 47981/1 |goto 59.54,28.30 |count 1
step
kill Helena Gentle##124953 |q 47979/2 |goto 57.81,28.15
step
_Click the Complete Quest Box:_
|tip In the quest tracker area.
turnin Witch Hunt##47979
step
click Lesser Effigy
Destroy the Lesser Effigy |q 47981/1 |goto 57.66,27.81 |count 2
step
click Lesser Effigy
Destroy the Lesser Effigy |q 47981/1 |goto 57.55,30.07 |count 3
step
click Lesser Effigy
Destroy the Lesser Effigy |q 47981/1 |goto 56.18,29.13 |count 4
step
label "Slay_Enthralled_Wildlife"
Kill enemies around this area
|tip Only enemies that look like birds and wolves will count for the quest goal.
Slay #10# Enthralled Wildlife |q 47980/1 |goto 56.84,29.08
step
_Click the Complete Quest Box:_
|tip In the quest tracker area.
turnin Furious Familiars##47980
step
click Cursed Effigy
turnin Cracking the Curse##47981 |goto 55.87,35.07
accept The Final Effigy##47982 |goto 55.87,35.07
step
click Cursed Effigy
|tip You will be attacked.
Break the Cursed Effigy |q 47982/1 |goto 55.87,35.07
step
kill Deathcursed Terror##128345 |q 47982/2 |goto 55.92,35.08
step
Watch the dialogue
talk Cyril White##124417
turnin The Final Effigy##47982 |goto 55.87,35.13
accept The Waycrest Daughter##48108 |goto 55.87,35.13
step
click Wanted Poster
accept WANTED: Rindlewoe##51547 |goto 55.73,34.98
step
talk Elijah Eggleton##128467
accept To Market, To Market##47945 |goto 55.56,34.79
step
Enter the building |goto 55.37,34.50 < 10 |walk
talk Dinah Wellard##129992
|tip Inside the building.
home The Swine's Larder |goto 55.50,34.26 |q 47945 |future
step
talk Clarence Page##124466
fpath Fallhaven |goto 55.13,34.69
step
talk Maude Rifthold##128457
accept The North Pass Caverns##48948 |goto 55.16,35.16
step
talk Thomas Staughton##124786
turnin To Market, To Market##47945 |goto 63.24,27.04
accept Save Their Bacon##47946 |goto 63.24,27.04
accept Big Bad Wolves##47947 |goto 63.24,27.04
accept Pork Chop##47948 |goto 63.24,27.04
stickystart "Slay_Spellbound_Beasts"
step
clicknpc Trevor Hightide##124844
|tip He looks like a pig.
Free Trevor Hightide |q 47946/1 |goto 64.24,28.31
step
clicknpc Travis Daybreak##129488
|tip He looks like a pig.
Free Travis Daybreak |q 47946/2 |goto 63.61,29.33
step
Enter the building |goto 63.49,30.26 < 15 |walk
click Pig Effigy
|tip Inside the building.
accept That's Not My Fetish##47949 |goto 63.35,30.10
step
kill Roland Hacksaw##124882 |q 47948/1 |goto 63.85,31.14
step
clicknpc Burke Stevenson##129490
|tip He looks like a pig.
Free Burke Stevenson |q 47946/4 |goto 64.06,31.52
step
clicknpc Kyle Sailford##129489
|tip He looks like a pig.
Free Kyle Sailford |q 47946/3 |goto 64.71,30.17
step
label "Slay_Spellbound_Beasts"
kill Hexed Howler##124814+
|tip They look like wolves.
Slay #10# Spellbound Beasts |q 47947/1 |goto 64.14,29.33
step
talk Thomas Staughton##124786
turnin Save Their Bacon##47946 |goto 63.24,27.04
turnin Big Bad Wolves##47947 |goto 63.24,27.04
turnin Pork Chop##47948 |goto 63.24,27.04
turnin That's Not My Fetish##47949 |goto 63.24,27.04
accept Cured Ham##47950 |goto 63.24,27.04
step
use the Pig Fetish##153432
|tip Use it on the campfire.
Burn the Pig Effigy |q 47950/1 |goto 63.29,27.02
step
talk Thomas Staughton##124786
turnin Cured Ham##47950 |goto 63.24,27.04
step
talk David Maldus##127296
accept Wicker Worship##48677 |goto 62.54,23.94
step
talk Anna Ridgeley##129984
fpath Barbthorn Ridge |goto 62.61,23.99
step
talk Lord Autumnvale##127080
turnin Wicker Worship##48677 |goto 59.45,21.91
accept Questionable Offerings##48678 |goto 59.45,21.91
step
click Entrails
|tip It looks like a bowl of red blood and organs on the ground.
Click Here Once You Are Carrying the Entrails |confirm |goto 59.86,21.98 |q 48678
step
Give the Offering |q 48678/1 |goto 59.39,21.92 |count 1
step
click Bundle of Wicker
|tip It looks like a bundle of sticks on the ground.
Click Here Once You Are Carrying the Bundle of Wicker |confirm |goto 59.88,21.99 |q 48678
step
Give the Offering |q 48678/1 |goto 59.39,21.92 |count 2
step
click Bones
|tip It looks like a brown-ish colored skeleton ribcage on the ground.
Click Here Once You Are Carrying the Bones |confirm |goto 59.89,21.96 |q 48678
step
Give the Offering |q 48678/1 |goto 59.39,21.92 |count 3
step
Watch the dialogue
Witness Autumnvale's Ritual |q 48678/2 |goto 59.46,21.97
step
talk Lord Autumnvale##127080
turnin Questionable Offerings##48678 |goto 59.45,21.92
accept Not the Bees!##48680 |goto 59.45,21.92 |only if level < 60
|tip You will automatically accept this quest. |only if level < 60
accept Mind the Hives##48679 |goto 59.45,21.92
stickystart "Drive_Back_The_Barbthorn_Swarm"
step
Enter the cave |goto 60.66,18.17 < 15 |walk |only if not subzone("Barbthorn Cave")
Find Edwin |q 48679/1 |goto 60.60,17.60
|tip Inside the cave.
step
Watch the dialogue
Kill the enemies that attack in waves
|tip Inside the cave.
Save Edwin |q 48679/2 |goto 60.60,17.60
step
label "Drive_Back_The_Barbthorn_Swarm"
Leave the cave |goto 60.66,18.20 < 10 |walk |only if subzone("Barbthorn Cave")
Kill Barbthorn enemies around this area
click Barbthorn Hive+
|tip They look like yellow bee hives hanging on trees.
click Abandoned Effigy+
|tip They look like statues with antlered skull heads on them.
Drive Back the Barbthorn Swarm |q 48680/1 |goto 60.29,19.31
|only if haveq(48680) or completedq(48680)
step
talk Initiate Peony##127396
turnin Mind the Hives##48679 |goto 59.03,22.37
accept A Simple Sacrifice##48682 |goto 59.03,22.37
step
Enter the cave |goto 57.81,23.47 < 15 |walk |only if not subzone("The Wicker Altar")
Watch the dialogue
kill Lord Autumnvale##127419
|tip Inside the cave.
Save Edwin, Again |q 48682/1 |goto 56.57,23.98
step
talk Edwin Maldus##127418
|tip Inside the cave.
turnin A Simple Sacrifice##48682 |goto 56.49,24.01
accept Changing Seasons##48683 |goto 56.49,24.01
step
Leave the cave |goto 57.78,23.47 < 15 |walk |only if subzone("The Wicker Altar")
Watch the dialogue
Follow Edwin |q 48683/1 |goto 59.35,21.98
step
click Wicker Man
Burn the Wicker Man |q 48683/2 |goto 59.26,21.95
step
talk Edwin Maldus##126979
turnin Changing Seasons##48683 |goto 59.35,21.98
step
talk Maude Rifthold##128457
accept The North Pass Caverns##48948 |goto 55.15,35.16
step
Follow the path up the mountain |goto 57.94,20.21 < 30 |only if walking and subzone("Autumnvale")
talk Thaddeus "Gramps" Rifthold##127015
turnin The North Pass Caverns##48948 |goto 53.92,26.99
accept Menace to Society##48792 |goto 53.92,26.99
accept The Adventurer's Society##48793 |goto 53.92,26.99
step
kill Rindlewoe##129783 |q 51547/1 |goto 52.79,29.63
|tip He walks in the water around this area.
|tip If you have trouble, try to find help, or skip the quest.
stickystart "Slay_Bonegnasher_Troggs"
step
click Child-sized Backpack
|tip Up on the hill.
Choose _<Inspect Backpack>_
Find the Backpack |q 48793/1 |goto 53.37,25.79
step
Enter the cave |goto 53.33,23.39 < 15 |walk
click Beginner's Guide to Archaeology
|tip Inside the small cave.
collect A Beginner's Guide to Archaeology##152677 |q 48793/2 |goto 53.51,23.24
step
Enter the cave |goto 52.94,22.68 < 15 |walk
click Is it a Rock? How to Identify Relics
|tip Inside the small cave.
collect Is it a Rock? How to Identify Relics##152685 |q 48793/3 |goto 53.05,22.43
step
click Half-eaten Journal
collect Half-eaten Journal##152676 |q 48793/4 |goto 51.81,24.15
step
label "Slay_Bonegnasher_Troggs"
Kill Bonegnasher enemies around this area
|tip They look like troggs.
Slay #10# Bonegnasher Troggs |q 48792/1 |goto 51.78,22.95
step
talk Marcus Howlingdale##127157
turnin Menace to Society##48792 |goto 51.37,23.27
turnin The Adventurer's Society##48793 |goto 51.37,23.27
accept Mistakes Were Made##48804 |goto 51.37,23.27
step
click Excavation Inventory
accept Research Recovery##48805 |goto 51.81,22.81
step
click "Ancient Potsherds"
collect "Ancient Potsherds"##152699 |q 48805/3 |goto 51.14,22.53
step
clicknpc Euphemia Batten-Chase##127160
Save Euphemia Batten-Chase |q 48804/3 |goto 50.63,22.11
step
click "Genuine Titan Disc"
collect "Genuine Titan Disc"##152703 |q 48805/2 |goto 51.60,21.92
step
clicknpc Amelia Tidecrest##127159
|tip Standing up on the rocks.
|tip You can reach her from the ground.
Watch the dialogue
Save Amelia Tidecrest |q 48804/2 |goto 51.73,21.53
step
Enter the cave |goto 52.41,21.00 < 15 |walk
clicknpc Jonathan "Johnny" Presterby##127158
|tip Inside the cave.
Save Jonathan Presterby |q 48804/1 |goto 52.68,20.97
step
click "Relic of the Makers"
collect "Relic of the Makers"##152704 |q 48805/1 |goto 50.75,20.23
step
talk Marcus Howlingdale##127157
turnin Mistakes Were Made##48804 |goto 50.61,24.31
turnin Research Recovery##48805 |goto 50.61,24.31
accept Terminal Degree##48853 |goto 50.61,24.31
step
Enter the cave |goto 50.35,23.81 < 15 |walk
kill Cragg the Stoneshaker##127125 |q 48853/1 |goto 49.67,23.52
|tip Inside the cave.
step
clicknpc Nigel Rifthold##127156
|tip Inside the cave.
Free Nigel Rifthold |q 48853/2 |goto 49.40,23.38
step
talk Thaddeus "Gramps" Rifthold##127015
turnin Terminal Degree##48853 |goto 50.59,24.43
step
talk Cyril White##124417
turnin WANTED: Rindlewoe##51547 |goto 55.87,35.13
step
talk Abby Lewis##121603
|tip She walks around this area.
accept Teddies and Tea##47289 |goto 54.35,39.21
step
Enter the building |goto 55.43,39.58 < 10 |walk
click Trunksy
|tip Inside the building.
Find Trunksy |q 47289/2 |goto 55.39,39.75
step
click Mr. Munchykins
Find Mr. Munchykins |q 47289/1 |goto 55.61,38.55
step
click Mayor Striggs
Find Mayor Striggs |q 47289/3 |goto 56.28,38.19
step
_Next to you:_
talk Abby Lewis
turnin Teddies and Tea##47289
accept Kitty?##47428
step
clicknpc Smoochums##121684
turnin Kitty?##47428 |goto 55.60,41.18
accept The Accursed Thicket##45972 |goto 55.60,41.18 |only if level < 60
|tip You will automatically accept this quest. |only if level < 60
step
click Glenbrook Register
accept The Village of Glenbrook##45079 |goto 55.62,41.19
stickystart "Purge_The_Woods"
step
Enter the cave |goto 53.54,44.06 < 15 |walk
click Mary's Book
|tip Inside the cave.
Find Mary Hayes |q 45079/1 |goto 53.14,44.44
step
click Hawthorne's Hoe
Find Samuel Hawthorne |q 45079/3 |goto 55.49,45.29
step
Enter the cave |goto 56.74,46.64 < 15 |walk
clicknpc Jonathan Hayes##122491
|tip Inside the cave.
Choose _<Investigate the body for identification.>_
Find Jonathan Hayes |q 45079/2 |goto 57.17,46.41
step
label "Purge_The_Woods"
Kill enemies around this area
click Bewitching Fetish+
|tip They look like statues with antlered skull heads on the ground around this area.
click Disturbing Charm+
|tip They look like wood and bone ornaments hanging from trees around this area.
Purge the Woods |q 45972/1 |goto 55.34,44.36
|only if haveq(45972) or completedq(45972)
step
Enter the cave |goto 54.86,48.69 < 15 |walk
talk Annie Warren##122493
|tip Inside the cave.
turnin The Village of Glenbrook##45079 |goto 54.74,49.14
accept Tea Party##44785 |goto 54.74,49.14
step
Watch the dialogue
|tip Follow Abby Lewis as she walks.
|tip She eventually walks to this location.
Follow Abby Lewis |q 44785/1 |goto 56.40,49.06
step
click Teapot
|tip You will be attacked.
Pour the Tea |q 44785/2 |goto 58.18,47.91
step
kill Conjured Horror##122673 |q 44785/3 |goto 58.18,47.91
step
talk Annie Warren##123123
turnin Tea Party##44785 |goto 57.71,47.75
step
talk Caretaker Allen##126210
accept Seeing Spirits##48475 |goto 62.62,42.98
step
accept Crypt Keepers##48474 |goto 61.20,44.84 |only if level < 60
|tip You will automatically accept this quest. |only if level < 60
stickystart "Cleanse_The_Cemetery"
step
click Gravebloom+
|tip They look like green flowers on the ground around this area.
collect 10 Gravebloom##152480 |q 48475/1 |goto 61.20,44.84
step
label "Cleanse_The_Cemetery"
Kill enemies around this area
click Neglected Headstone+
|tip They look like stone grave markers on the ground around this area.
click Minor Corrupting Circle+
|tip They look like black scratch marks on the ground next to tombestones.
Cleanse the Cemetery |q 48474/1 |goto 60.30,45.50
|only if haveq(48474) or completedq(48474)
step
click Ritual Urn
Create and Apply the Salve |q 48475/2 |goto 59.99,45.84
step
click Major Corrupting Circle
|tip It looks like large black scratches on the ground.
Free Aaron Cresterly |q 48475/3 |goto 60.77,46.62
step
talk Aaron Cresterly##126225
turnin Seeing Spirits##48475 |goto 60.77,46.62
accept Split Party##48476 |goto 60.77,46.62
step
kill Wicker-Bound Hunter##126262
Free Bridget Fairwater |q 48476/1 |goto 60.31,48.49
step
Enter the building |goto 59.99,48.96 < 10 |walk
talk Bridget Fairwater##126240
|tip Inside the building.
turnin Split Party##48476 |goto 59.80,48.93
accept Looking For One More##48477 |goto 59.80,48.93
step
kill Sister Westwood##126245 |q 48477/1 |goto 58.86,50.70
step
Watch the dialogue
talk Mercy Fairwater##126253
|tip She runs to this location.
turnin Looking For One More##48477 |goto 59.50,51.21
step
accept Nooooope##48181 |goto 64.58,54.80
|tip You will automatically accept this quest.
|only if level < 60
stickystart "Kill_Spiders_And_Egg_Sacs"
step
talk Rebecca Hale##125457
accept Deliverance##52074 |goto 64.58,54.80
step
label "Kill_Spiders_And_Egg_Sacs"
Kill enemies around this area
|tip Only enemies that look like spiders will count for this quest goal.
|tip You can walk over the tiny spiders to kill them.
click Egg Sac+
|tip They look like groups of smaller white eggs on the ground next to trees around this area.
Kill Spiders and Egg Sacs |q 48181/1 |goto 64.98,54.62
|only if haveq(48181) or completedq(48181)
step
talk Ranger Wons##139912
turnin Deliverance##52074 |goto 61.91,59.29
accept Rescue Rangers##48179 |goto 61.91,59.29
accept Boned##52075 |goto 61.91,59.29
step
talk Thornspeaker Birchgrove##139926
accept Total Cairnage##48182 |goto 61.88,59.32
accept The Hills Are Alive##48183 |goto 61.88,59.32
stickystart "Collect_Runic_Power_Cores"
stickystart "Heal_Injured"
stickystart "Kill_Vengeful_Bones"
step
click Minor Ancient Cairn
Destroy the Minor Ancient Cairn |q 48182/1 |goto 60.91,60.97 |count 1
step
click Minor Ancient Cairn
Destroy the Minor Ancient Cairn |q 48182/1 |goto 62.51,64.65 |count 2
step
click Minor Ancient Cairn
Destroy the Minor Ancient Cairn |q 48182/1 |goto 59.36,66.29 |count 3
step
click Minor Ancient Cairn
Destroy the Minor Ancient Cairn |q 48182/1 |goto 59.45,63.79 |count 4
step
talk Arthur Tradewind##140048
accept Really Big Problem##48180 |goto 58.44,63.18
step
kill Ancient Sentinel##126542 |q 48180/1 |goto 58.52,64.45
|tip He walks around this area.
step
click Major Ancient Cairn
Destroy the Major Ancient Cairn |q 48182/2 |goto 59.15,67.88
step
label "Collect_Runic_Power_Cores"
kill Awoken Guardian##126355+
collect 8 Runic Power Core##152394 |q 48183/1 |goto 61.24,64.22
step
label "Heal_Injured"
clicknpc Injured NPC+
|tip They look like dead friendly NPC's ground around this area.
|tip They have various names.
Heal #10# Injured |q 48179/1 |goto 61.24,64.22
step
label "Kill_Vengeful_Bones"
kill 8 Vengeful Bones##128703 |q 52075/1 |goto 60.99,64.19
step
talk Thornspeaker Birchgrove##139926
turnin Really Big Problem##48180 |goto 61.88,59.32
turnin Total Cairnage##48182 |goto 61.88,59.32
turnin The Hills Are Alive##48183 |goto 61.88,59.32
step
talk Ranger Wons##139912
turnin Rescue Rangers##48179 |goto 61.91,59.29
turnin Boned##52075 |goto 61.91,59.29
step
talk Thornspeaker Birchgrove##139926
accept The High Thornspeaker##53110 |goto 61.88,59.32
step
talk Aaron Ridgeley##128576
fpath Hangman's Point |goto Drustvar/0 71.05,40.88
step
talk Constable Henry Framer##125394
turnin The Waycrest Daughter##48108 |goto 70.09,42.94
accept Standing Accused##48283 |goto 70.09,42.94
step
talk Lucille Waycrest##125380
Tell her _"I'm here to rescue you."_
Speak with Lucille Waycrest |q 48283/1 |goto 70.07,42.83
step
talk Marshal Everit Reade##125385
turnin Standing Accused##48283 |goto 69.67,43.18
accept The Woods Have Eyes##48109 |goto 69.67,43.18
accept In Case of Ambush##48110 |goto 69.67,43.18
stickystart "Kill_Watchful_Ravens"
stickystart "Kill_Darkmaw_Prowlers"
step
click Place Trap+
|tip They look like metal bear traps on the ground around this area.
Place #6# Traps |q 48110/1 |goto 68.07,43.71
step
label "Kill_Watchful_Ravens"
kill 4 Watchful Raven##125411 |q 48109/1 |goto 68.07,43.71
step
label "Kill_Darkmaw_Prowlers"
kill 6 Darkmaw Prowler##125464 |q 48109/2 |goto 68.07,43.71
step
talk Marshal Everit Reade##125385
turnin The Woods Have Eyes##48109 |goto 69.67,43.18
turnin In Case of Ambush##48110 |goto 69.67,43.18
step
talk Lucille Waycrest##125380
accept Trial by Superstition##48111 |goto 70.07,42.83
step
talk Fletcher's Hollow Villager##125400+
Ask them _"How can you prove someone is not a witch?"_
Question #5# Villagers |q 48111/1 |goto 69.95,42.99
step
talk Lucille Waycrest##125380
turnin Trial by Superstition##48111 |goto 70.07,42.83
accept A Pungent Solution##48113 |goto 70.07,42.83
accept Harmful If Swallowed##48165 |goto 70.07,42.83
accept Once Bitten, Twice Shy##48170 |goto 70.07,42.83
step
click Bug-Catching Jar
Collect a Bug-Catching Jar |q 48170/1 |goto 69.52,43.87
stickystart "Collect_Intact_Venom_Glands"
step
click Hovering Bloodflies+
|tip They look like groups of small insects flying low to the ground around this area.
Catch #6# Bloodflies |q 48170/2 |goto 68.84,40.72
step
label "Collect_Intact_Venom_Glands"
kill Shallows Saurolisk##125452+
collect 5 Intact Venom Gland##151935 |q 48165/1 |goto 68.84,40.72
step
talk Adela Hawthorne##128494
accept Quill or Be Quilled##49242 |goto 66.93,42.16
stickystart "Kill_Invasive_Quillrats"
step
click Onion+
|tip They look like white vegetables half-buried in the ground around this area.
collect Juicy Onion##151934 |q 48113/1 |goto 66.24,42.23
step
label "Kill_Invasive_Quillrats"
kill 6 Invasive Quillrat##125401 |q 49242/1 |goto 66.24,42.23
step
talk Adela Hawthorne##128494
turnin Quill or Be Quilled##49242 |goto 66.93,42.16
step
talk Lucille Waycrest##125380
turnin A Pungent Solution##48113 |goto 70.07,42.83
turnin Harmful If Swallowed##48165 |goto 70.07,42.83
turnin Once Bitten, Twice Shy##48170 |goto 70.07,42.83
accept The Burden of Proof##48198 |goto 70.07,42.83
step
talk Constable Henry Framer##125394
Tell him _"We're ready to begin the trial."_
Watch the dialogue
Speak with Constable Framer |q 48198/1 |goto 70.09,42.94
step
clicknpc Lucille Waycrest##128529
Watch the dialogue
Give the First Test |q 48198/2 |goto 70.08,42.83
step
clicknpc Lucille Waycrest##128529
Watch the dialogue
Give the Second Test |q 48198/3 |goto 70.08,42.83
step
clicknpc Lucille Waycrest##128529
Watch the dialogue
Give the Third Test |q 48198/4 |goto 70.08,42.83
step
talk Lucille Waycrest##125380
turnin The Burden of Proof##48198 |goto 70.08,42.83
accept The Curse of Fletcher's Hollow##48171 |goto 70.08,42.83
step
talk Art Hughie##127558
accept Mean Gulls##48880 |goto 71.80,50.41
accept Take the Bait##48904 |goto 71.80,50.41
step
click Intact Mudfish
accept I Like Fish Guts and I Cannot Lie##48882 |goto 70.75,50.74
stickystart "Collect_Snapclaw_Meat"
stickystart "Collect_Mudfish_Innards"
stickystart "Kill_Ravenous_Gulls"
step
click Fishing Rod
accept The Reel Deal##48881 |goto 71.14,52.35
step
click Fishing Rod
Reel in the Fishing Rod |q 48881/1 |goto 71.24,51.69 |count 1
step
click Fishing Rod
Reel in the Fishing Rod |q 48881/1 |goto 71.08,52.83 |count 2
step
click Fishing Rod
Reel in the Fishing Rod |q 48881/1 |goto 70.83,53.45 |count 3
step
click Fishing Rod
Reel in the Fishing Rod |q 48881/1 |goto 70.49,54.15 |count 4
step
click Fishing Rod
Reel in the Fishing Rod |q 48881/1 |goto 70.11,55.06 |count 5
step
_Click the Complete Quest Box:_
|tip In the quest tracker area.
turnin The Reel Deal##48881
step
label "Collect_Snapclaw_Meat"
kill Scavenging Snapclaw##127526+
collect 15 Snapclaw Meat##152865 |q 48904/1 |goto 71.03,53.21
step
label "Collect_Mudfish_Innards"
click Intact Mudfish+
|tip They look like small fish on the ground around this area.
collect 9 Mudfish Innards##152845 |q 48882/1 |goto 70.76,52.30
step
label "Kill_Ravenous_Gulls"
kill 10 Ravenous Gull##127530 |q 48880/1 |goto 70.76,52.30
step
talk Art Hughie##127558
turnin Mean Gulls##48880 |goto 71.80,50.41
turnin Take the Bait##48904 |goto 71.80,50.41
turnin I Like Fish Guts and I Cannot Lie##48882 |goto 71.80,50.41
accept Big Gulls Won't Die##48883 |goto 71.80,50.41
step
kill Brinebeak##127553 |q 48883/1 |goto 71.47,49.09
step
talk Art Hughie##127558
turnin Big Gulls Won't Die##48883 |goto 71.81,50.41
step
talk Evelyn Pare##126310
turnin The Curse of Fletcher's Hollow##48171 |goto 70.07,60.27
accept Save Who We Can##48518 |goto 70.07,60.27
accept Clear-Cutting##49295 |goto 70.07,60.27
step
talk Bridget Bran##126724
fpath Fletcher's Hollow |goto 70.22,60.45
stickystart "Kill_Curseformed_Familiars"
step
talk Frightened Woodsman##126159+
Rally #6# Frightened Woodsmen |q 48518/1 |goto 70.94,59.26
step
label "Kill_Curseformed_Familiars"
kill 8 Curseformed Familiar##126151 |q 49295/1 |goto 70.94,59.26
step
talk Evelyn Pare##126310
turnin Save Who We Can##48518 |goto 70.07,60.27
turnin Clear-Cutting##49295 |goto 70.07,60.27
accept Hope They Can't Swim##48519 |goto 70.07,60.27
step
Watch the dialogue
Kill the enemies that attack in waves
kill Grotesque Butcher##137914
Defend the Villagers |q 48519/1 |goto 69.42,60.34
step
talk Evelyn Pare##126310
turnin Hope They Can't Swim##48519 |goto 70.07,60.27
accept Break Them to Splinters##48525 |goto 70.07,60.27 |only if level < 60
|tip You will automatically accept this quest. |only if level < 60
accept The Three Sisters##48520 |goto 70.07,60.27
stickystart "Reclaim_Fletchers_Hollow"
step
click Bladed Charm
accept Charming the Lifeless##48521 |goto 70.07,62.99
stickystart "Control_A_Dormant_Ravager"
step
kill Sister Early##126522 |q 48520/2 |goto 70.52,63.15
step
Enter the building |goto 70.00,62.19 < 10 |walk
kill Sister Mooring##126523 |q 48520/3 |goto 70.13,62.12
|tip Inside the building.
step
Enter the building |goto 68.67,63.68 < 10 |walk
kill Sister Ashwell##126144 |q 48520/1 |goto 68.52,63.55
|tip She walks around this area.
|tip Inside the building.
accept A Revealing Missive##48522 |goto 68.52,63.55
|tip You will automatically accept this quest after looting.
step
label "Control_A_Dormant_Ravager"
use the Wicker Charm##152590
|tip Use it on Dormant Ravagers around this area.
|tip Eventually, one of them will become friendly.
Control a Dormant Ravager |q 48521/1 |goto 69.31,62.79
step
label "Reclaim_Fletchers_Hollow"
Kill enemies around this area
clicknpc Captured Villager##126629+
|tip They look like humans tied to wooden posts.
click Ensorcelled Pig Heart+
|tip They look like black beating hearts sitting in wooden buckets.
Reclaim Fletcher's Hollow |q 48525/1 |goto 69.31,62.79
|only if haveq(48525) or completedq(48525)
step
talk Evelyn Pare##126310
turnin The Three Sisters##48520 |goto 70.07,60.27
turnin Charming the Lifeless##48521 |goto 70.07,60.27
turnin A Revealing Missive##48522 |goto 70.07,60.27
accept The Murderous Matron##48523 |goto 70.07,60.27
accept Culling the Coven##48524 |goto 70.07,60.27
step
clicknpc Dormant Ravager##126415
Control the Dormant Ravager |q 48523/1 |goto 69.93,60.39
step
Enter the mine |goto 69.85,66.95 < 10 |walk |only if not subzone("Elderstone Mine")
Kill enemies around this area
|tip Downstairs inside the mine.
|tip Use the abilities on your action bar.
Slay #25# Heartsbane Minions |q 48524/1 |goto 69.66,66.03
step
Kill the enemies that attack
|tip Inside the mine.
Watch the dialogue
kill Matron Levae##126441 |q 48523/2 |goto 68.57,67.25
step
Watch the dialogue
|tip You will be teleported automatically.
Return to Timbered Strand |complete subzone("Timbered Strand") |q 48523
step
talk Evelyn Pare##126310
turnin The Murderous Matron##48523 |goto 70.07,60.28
turnin Culling the Coven##48524 |goto 70.07,60.28
accept An Airtight Alibi##48538 |goto 70.07,60.28
step
talk Constable Henry Framer##125394
turnin An Airtight Alibi##48538 |goto 70.09,42.94
step
talk Lucille Waycrest##125380
accept And Justice For All##49259 |goto 70.08,42.83
step
Watch the dialogue
Untie Lucille |q 49259/1 |goto 70.08,42.83
step
Kill the enemies that attack in waves
kill Sister Widdowson##128582
Defeat the Heartsbane Ambush |q 49259/2 |goto 69.55,43.28
step
Watch the dialogue
talk Lucille Waycrest##125380
turnin And Justice For All##49259 |goto 69.62,43.33
accept A Slight Detour##48941 |goto 69.62,43.33
step
talk Lucille Waycrest##127715
turnin A Slight Detour##48941 |goto 46.11,33.42
accept Yeti to Rumble##48942 |goto 46.11,33.42
accept Salvage Rights##48943 |goto 46.11,33.42
stickystart "Kill_Chillfur_Yetis"
step
click Wrapped Supplies
Collect the Wrapped Supplies |q 48943/1 |goto 45.60,34.38
step
kill Awakened Dead##136490+
accept If Bones Could Talk##51134 |goto 45.08,33.42
|tip You will eventually automatically accept this quest after looting.
stickystart "Collect_Pristine_Rune_Etched_Bones"
step
click Cask of Salted Fish
Collect the Cask of Salted Fish |q 48943/2 |goto 45.04,32.49
step
click Hardened Lockbox
Collect the Hardened Lockbox |q 48943/3 |goto 43.54,30.79
step
click Bucket of Grain
Collect the Bucket of Grain |q 48943/4 |goto 45.53,30.07
step
label "Collect_Pristine_Rune_Etched_Bones"
kill Awakened Dead##136490+
collect Pristine Rune-Etched Bone##159746 |q 51134/1 |goto 45.06,30.48
step
label "Kill_Chillfur_Yetis"
kill 8 Chillfur Yeti##127682 |q 48942/1 |goto 45.06,30.48
step
talk Lucille Waycrest##127715
turnin Yeti to Rumble##48942 |goto 44.80,28.56
turnin Salvage Rights##48943 |goto 44.80,28.56
turnin If Bones Could Talk##51134 |goto 44.80,28.56
accept Diversionary Tactics##48963 |goto 44.80,28.56
step
kill Frostmange##127794 |q 48963/1 |goto 45.25,28.61
step
Enter the building |goto 45.11,27.89 < 10 |walk
talk Lucille Waycrest##127715
|tip Inside the building.
turnin Diversionary Tactics##48963 |goto 45.01,27.77
accept Unlocking History##48944 |goto 45.01,27.77
step
click Wall Sconce
|tip Inside the building.
Choose _<Pull on the torch>_
Find the Secret Passage |q 48944/1 |goto 44.94,27.57
step
Watch the dialogue
talk Lucille Waycrest##127715
|tip Inside the building.
turnin Unlocking History##48944 |goto 44.97,27.53
accept The Ruins of Gol Var##48945 |goto 44.97,27.53
step
Watch the dialogue
|tip Follow Lucille Waycrest and protect her as she walks.
|tip Stay near her or she may reset.
|tip She eventually walks to this location inside the cave.
click Debris
kill Stonebound Guardian##127975
Escort Lucille into Gol Var |q 48945/1 |goto 42.39,25.53
step
talk Lucille Waycrest##127715
|tip Inside the cave.
turnin The Ruins of Gol Var##48945 |goto 42.59,25.23
accept The Order of Embers##48946 |goto 42.59,25.23
step
click Tome of Silver and Ash
|tip Inside the cave.
collect Tome of Silver and Ash##153053 |q 48946/1 |goto 42.64,25.25
step
talk Lucille Waycrest##127715
|tip Inside the cave.
turnin The Order of Embers##48946 |goto 42.59,25.23
accept Take the High Road##48986 |goto 42.59,25.23
step
Follow the path up to leave the cave and building |goto 43.96,25.70 < 10 |walk |only if subzone("Gol Var")
Leave the cave |goto 44.74,27.34 < 10 |walk |only if subzone("Gol Var")
talk Arthur Tradewind##143161
Tell him _"I am ready to go!"_
Meet Arthur Tradewind |q 53110/1 |goto 43.63,39.12
step
clicknpc Arthur Tradewind##143162
Ride on Arthur Tradewind |invehicle |goto 43.63,39.12 |q 53110
step
Watch the dialogue
Ride Up to Ulfar's Den |q 53110/2 |goto 46.04,45.32 |notravel
step
talk Ulfar##141159
|tip Inside the cave.
turnin The High Thornspeaker##53110 |goto 45.21,45.84
step
Leave the cave and follow the path down the mountain |goto 46.11,45.28 < 15 |walk |only if subzone("Ulfar's Den")
click Wanted Poster
accept WANTED: The Rime Huntress##52033 |goto 41.25,40.98
step
kill The Rime Huntress##136697 |q 52033/1 |goto 44.21,40.35
|tip She looks like a large wolf that walks stealthed around this area.
|tip She will appear as a yellow dot on your minimap.
|tip You may need help with this.
step
Enter the building |goto 37.46,48.70 < 10 |walk
talk Owen Northwood##136480
|tip Inside the building.
home Northwood Home |goto 37.43,48.56 |q 52033
step
talk Guardsman Hayles##139714
turnin WANTED: The Rime Huntress##52033 |goto 37.13,49.38
step
Enter the building |goto 37.13,50.19 < 10 |walk
talk Lucille Waycrest##129642
|tip Inside the building.
turnin Take the High Road##48986 |goto 36.86,50.14
accept A Lesson in Witch Hunting##49443 |goto 36.86,50.14
step
click Candle+
|tip They look like half-melted green candles sitting on objects inside the building.
Light #6# Candles |q 49443/1 |goto 36.89,50.06
step
click Lucille's Notes
|tip Inside the building.
Watch the dialogue
Take Notes |q 49443/2 |goto 36.84,50.12
step
click Lucille's Pack
|tip Inside the building.
collect Lucille's Sewing Kit##156515 |q 49443/3 |goto 36.97,50.05
step
talk Lucille Waycrest##129642
|tip Inside the building.
turnin A Lesson in Witch Hunting##49443 |goto 36.86,50.14
accept Sharp Thinking##49804 |goto 36.86,50.14
step
talk Marshal Everit Reade##129643
|tip Inside the building.
accept Changing of the Guard##49803 |goto 36.96,50.09
step
click Heartsbane Grimoire
accept Implements of Ill Intent##49805 |goto 37.72,50.38
stickystart "Accept_Hidden_Dealings"
stickystart "Test_Corlain_Refugees"
stickystart "Destroy_Heartsbane_Objects"
step
talk Ensign Yorrick##122112
Choose _<Hand over Marshal Reade's orders.>_
Recruit Ensign Yorrick |q 49803/2 |goto 35.26,53.13
step
talk Jess Albury##135023
fpath Arom's Stand |goto 38.14,52.54
step
talk Falconer Notley##122110
Choose _<Hand over Marshal Reade's orders.>_
Recruit Falconer Notley |q 49803/5 |goto 38.74,52.46
step
talk Ensign Mace##122115
Choose _<Hand over Marshal Reade's orders.>_
Recruit Ensign Mace |q 49803/4 |goto 39.04,51.51
step
talk Lieutenant Sterntide##131111
Choose _<Hand over Marshal Reade's orders.>_
Recruit Lieutenant Sterntide |q 49803/3 |goto 39.90,50.18
step
talk Captain Joan Cleardawn##131103
Choose _<Hand over Marshal Reade's orders.>_
Recruit Captain Cleardawn |q 49803/1 |goto 37.54,48.77
step
label "Accept_Hidden_Dealings"
use Lucille's Sewing Needle##156518
|tip Use it on Corlain Refugees around this area.
|tip They may attack you.
kill Unmasked Witch##129575+
accept Hidden Dealings##49806 |goto 37.88,50.34
|tip You will eventually automatically accept this quest after looting.
step
Enter the cellar |goto 38.40,53.16 < 7 |walk
talk Suspicious Refugee##131359
|tip Underground in the cellar.
Ask her _"What's going on down here?"_
Watch the dialogue
|tip You will be attacked.
Explore the Cellar |q 49806/1 |goto 38.37,53.69
step
kill Sister Littlefield##131359 |q 49806/2 |goto 38.37,53.59
|tip Inside the building.
step
label "Test_Corlain_Refugees"
use Lucille's Sewing Needle##156518
|tip Use it on Corlain Refugees around this area.
|tip Some of them will attack you.
Test #10# Corlain Refugees |q 49804/1 |goto 37.88,50.37
step
label "Destroy_Heartsbane_Objects"
click Heartsbane Object+
|tip They look like various objects with Heartsbane names on the ground, and hanging from trees and buildings around this area.
Destroy #12# Heartsbane Objects |q 49805/1 |goto 37.88,50.37
step
Enter the building |goto 37.13,50.19 < 10 |walk
talk Lucille Waycrest##129642
|tip Inside the building.
turnin Sharp Thinking##49804 |goto 36.86,50.14
turnin Implements of Ill Intent##49805 |goto 36.86,50.14
turnin Hidden Dealings##49806 |goto 36.86,50.14
step
talk Marshal Everit Reade##129643
|tip Inside the building.
turnin Changing of the Guard##49803 |goto 36.96,50.09
step
talk Lucille Waycrest##129642
|tip Inside the building.
accept A New Order##49807 |goto 36.86,50.14
step
use the Inquisitor's Regalia##156532
|tip Use it on Falconer Notley.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.94,50.00 |count 1
step
use the Inquisitor's Regalia##156532
|tip Use it on Ensign Mace.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.91,49.99 |count 2
step
use the Inquisitor's Regalia##156532
|tip Use it on Inquisitor Cleardawn.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.89,49.98 |count 3
step
use the Inquisitor's Regalia##156532
|tip Use it on Ensign Yorrick.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.86,49.98 |count 4
step
use the Inquisitor's Regalia##156532
|tip Use it on Lieutenant Sterntide.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.82,49.97 |count 5
step
Watch the dialogue
|tip Inside the building.
Issue Lucille's Orders |q 49807/2 |goto 36.89,50.08
step
talk Lucille Waycrest##129642
|tip Inside the building.
turnin A New Order##49807 |goto 36.89,50.08
step
talk Marshal Everit Reade##129643
|tip Inside the building.
accept The Road to Corlain##49926 |goto 36.96,50.09
step
talk Inquisitor Cleardawn##135021
accept Through the Old Roads##48504 |goto 37.27,50.35
step
talk Inquisitor Cleardawn##129983
|tip Up on the mountain.
turnin Through the Old Roads##48504 |goto 40.23,56.50
accept Pieces of History##48184 |goto 40.23,56.50
accept Honorable Discharge##48517 |goto 40.23,56.50
step
talk Captain Lilian Nottley##135085
accept Clear Victory##49898 |goto 39.69,57.98
stickystart "Release_Weary_Spirits"
stickystart "Slay_Drust_Skeletons"
step
click First Carved Stone
Examine the First Stone |q 48184/1 |goto 38.50,58.38
step
click Second Carved Stone
Examine the Second Stone |q 48184/2 |goto 36.56,58.03
step
click Third Carved Stone
Examine the Third Stone |q 48184/3 |goto 39.27,61.15
step
click Fourth Carved Stone
Examine the Fourth Stone |q 48184/4 |goto 37.83,64.67
step
click Fifth Carved Stone
Examine the Fifth Stone |q 48184/5 |goto 36.53,61.27
step
_Next to you:_
talk Inquisitor Cleardawn
turnin Pieces of History##48184
step
label "Release_Weary_Spirits"
clicknpc Weary Spirit##135055+
|tip They look like ghost soldiers kneeling on the ground around this area.
Release #10# Weary Spirits |q 48517/1 |goto 37.68,61.50
step
label "Slay_Drust_Skeletons"
Kill enemies around this area
|tip Only enemies that look like skeletons will count for the quest goal.
Slay #15# Drust Skeletons |q 49898/1 |goto 37.68,61.50
step
_Next to you:_
talk Inquisitor Cleardawn
turnin Honorable Discharge##48517
accept Drustfall##49890
step
Enter the cave |goto 39.48,62.39 < 15 |walk |only if not (subzone("Gol Osigr") and _G.IsIndoors())
click Ritual Stone
|tip Inside the cave.
Watch the dialogue
Investigate the Cave |q 49890/1 |goto 40.60,62.66
step
Watch the dialogue
|tip Inside the cave.
kill Runekeeper Construct##130946 |q 49890/2 |goto 40.60,62.66
step
_Next to you:_
talk Inquisitor Cleardawn
turnin Drustfall##49890
accept To Falconhurst!##49896
step
Leave the cave |goto 39.42,62.38 < 15 |walk |only if subzone("Gol Osigr") and _G.IsIndoors()
talk Captain Lilian Nottley##135085
turnin Clear Victory##49898 |goto 39.69,57.98
step
talk Adalyn Forestwatcher##135861
accept Saplings in the Snow##51543 |goto 33.44,65.09
step
clicknpc Mountain Sapling##138003+
|tip They look like small twig trees on the ground around this area.
|tip Run away from them after you click them to gather them.
collect 6 Mountain Sapling##160406 |q 51543/1 |goto 33.49,63.50
step
talk Adalyn Forestwatcher##135861
turnin Saplings in the Snow##51543 |goto 33.43,65.09
accept Greenstalker##50953 |goto 33.43,65.09
step
Enter the cave |goto 33.72,62.41 < 15 |walk |only if not (subzone("Snowmelt Foothills") and _G.IsIndoors())
use the Tranquil Charm##159143
|tip Use it on Greenstalker.
|tip Inside the cave.
kill Greenstalker##135868 |q 50953/1 |goto 34.57,61.54
step
Leave the cave |goto 33.72,62.38 < 15 |walk |only if subzone("Snowmelt Foothills") and _G.IsIndoors()
talk Adalyn Forestwatcher##135861
turnin Greenstalker##50953 |goto 33.43,65.09
step
talk Zallestrasza##137732
accept Life Preserver##51472 |goto 33.52,65.14
step
Watch the dialogue
clicknpc Zallestrasza##138074
Ride with Zallestrasza |invehicle |goto 33.64,65.11 |q 51472
step
Watch the dialogue
Travel to Vadekius's Rest |q 51472/1 |goto 41.88,81.98 |notravel
step
Watch the dialogue
talk Zallestrasza##137732
Tell her _"I am ready. Begin your ritual."_
Tell Zallestrasza to Begin |q 51472/2 |goto 42.04,81.98
step
Watch the dialogue
kill Danir Emberlight##137828
Protect Zallestrasza |q 51472/3 |goto 41.88,81.98
step
talk Zallestrasza##137732
turnin Life Preserver##51472 |goto 42.04,81.98
step
talk Inquisitor Cleardawn##131879
turnin To Falconhurst!##49896 |goto 26.91,65.81
accept Breaking Hag##50001 |goto 26.91,65.81
step
talk Captive Villager##131579
accept Spell Bound##50251 |goto 26.15,66.49
stickystart "Slay_Briarwood_Monsters"
step
click Binding Rune+
|tip They look like black symbols with small candles with blue flames and friendly Captive Villages nearby on the ground around this area.
Destroy #8# Binding Runes |q 50251/1 |goto 26.17,68.10
step
label "Slay_Briarwood_Monsters"
Kill Briarwood enemies around this area
Slay #15# Briarwood Monsters |q 50001/1 |goto 26.17,68.10
step
talk Inquisitor Cleardawn##131879
turnin Breaking Hag##50001 |goto 25.79,70.26
turnin Spell Bound##50251 |goto 25.79,70.26
accept Hold The Barricade!##50177 |goto 25.79,70.26
step
talk Inquisitor Cleardawn##131879
Tell her _"Stand firm! We'll hold the line!"_
Speak with Inquisitor Cleardawn |q 50177/1 |goto 25.79,70.26
step
Watch the dialogue
Kill the enemies that attack in waves
kill Briarwood Siegebreaker##131898
|tip It will walk to you.
Survive the Assault |q 50177/2 |goto 25.78,70.20
step
talk Inquisitor Cleardawn##131879
turnin Hold The Barricade!##50177 |goto 25.79,70.26
accept So Long, Sister##49939 |goto 25.79,70.26
step
Enter the building |goto 25.23,71.61 < 10 |walk
kill Sister Noella Briarwood##132395 |q 49939/1 |goto 25.02,71.83
|tip Inside the building.
step
talk Leandro Royston##131442
turnin So Long, Sister##49939 |goto 26.67,72.19
step
Enter the building |goto 26.71,72.26 < 10 |walk
talk Alisha Darkwater##136655
|tip Inside the building.
home Falcon's Roost |goto 26.67,72.56
step
talk Viviana Swailes##134866
fpath Falconhurst |goto 26.99,72.39
step
Enter the building |goto 26.88,71.39 < 10 |walk
talk Lynn Sweet##132966
|tip Inside the building.
accept Bramblethorn##50238 |goto 26.99,71.39
step
click Wanted Poster
accept WANTED: The Crimson Cutthroats##51390 |goto 26.43,72.19
step
talk Marten Webb##131469
accept A Missing Master##50903 |goto 25.53,70.10
step
Enter the cellar outside the building |goto 24.78,69.01 < 7 |walk
kill Bramblethorn##132734
|tip Underground in the cellar.
collect Lord Sharptooth##156830 |q 50238/1 |goto 24.80,68.91
step
Enter the cellar outside the building |goto 25.59,68.01 < 7 |walk
Find Master Ashton |q 50903/1 |goto 25.42,67.79
|tip Underground in the cellar.
step
talk Warren Ashton##131448
|tip Underground in the cellar.
Tell him _"Master Ashton, we need your help."_
Speak to Master Ashton |q 50903/2 |goto 25.29,67.89
step
talk Warren Ashton##131448
|tip Underground in the cellar.
turnin A Missing Master##50903 |goto 25.29,67.89
accept Curiously Strong##50092 |goto 25.29,67.89
stickystart "Extinguish_Fires"
step
talk Leandro Royston##131442
accept Building Defenses##50090 |goto 25.55,70.13
stickystart "Collect_Lumber"
step
Enter the cave |goto 28.85,66.42 < 15 |walk
kill Mareen Sherwood##137551 |q 51390/1 |goto 29.77,65.50
kill Wallis Crowder##137550 |q 51390/2 |goto 29.90,65.34
kill Thorn Sutton##137548 |q 51390/3 |goto 29.79,65.60
|tip Inside the cave.
|tip Try to pull them by themselves to fight them each alone.
|tip If you have trouble, try to find help, or skip the quest.
step
label "Collect_Lumber"
click Wooden Plank+
|tip They look like wooden boards leaning on objects and laying on the ground around this area.
Collect #10# Lumber |q 50090/1 |goto 25.77,69.00
step
label "Extinguish_Fires"
use the Frost Potion##156828
|tip Use it on fires around this area.
Extinguish #20# Fires |q 50092/1 |goto 25.77,69.00
step
click Barricade
Place the Defenses |q 50090/2 |goto 26.63,67.07 |count 1
step
click Barricade
Place the Defenses |q 50090/2 |goto 26.59,66.99 |count 2
step
click Barricade
Place the Defenses |q 50090/2 |goto 26.48,66.74 |count 3
step
click Barricade
Place the Defenses |q 50090/2 |goto 26.30,66.88 |count 4
step
talk Warren Ashton##131448
turnin Curiously Strong##50092 |goto 25.23,67.16
accept A Weapon of Old##50036 |goto 25.23,67.16
step
talk Warren Ashton##131448
Tell him _"I am ready to begin!"_
Speak with Warren Ashton |q 50036/1 |goto 25.23,67.16
step
Watch the dialogue
|tip Click the 4 objects nearby when he tells you to.
|tip The order is random, he will tell you which object to click.
Help Create a Liquid Fire Potion |q 50036/2 |goto 25.17,67.18
step
Watch the dialogue
talk Warren Ashton##131448
turnin A Weapon of Old##50036 |goto 25.23,67.16
accept Fighting With Fire##50063 |goto 25.23,67.16
step
use the Liquid Fire Flask##156710
|tip Use it on Briarwood Bulwarks.
|tip They look like large muscular trees around this area.
|tip Use it repeatedly to kill them easier.
kill 3 Briarwood Bulwark##133072 |q 50063/1 |goto 23.68,66.34
step
talk Marten Webb##131469
turnin Fighting With Fire##50063 |goto 25.13,67.39
step
talk Inquisitor Cleardawn##131879
accept Into the Crimsonwood##50172 |goto 25.13,67.43
step
talk Leandro Royston##131442
turnin Building Defenses##50090 |goto 25.55,70.13
turnin WANTED: The Crimson Cutthroats##51390 |goto 25.55,70.13
step
Enter the building |goto 26.88,71.39 < 10 |walk
talk Lynn Sweet##132966
|tip Inside the building.
turnin Bramblethorn##50238 |goto 26.99,71.39
step
talk Inquisitor Cleardawn##133098
turnin Into the Crimsonwood##50172 |goto 20.64,57.46
accept Saving Master Ashton##50265 |goto 20.64,57.46
step
talk Marten Webb##133126
accept Odds and Ends##50306 |goto 20.64,57.51
stickystart "Collect_Bags_Of_Reagents"
stickystart "Collect_Organic_Matter_Samples"
step
kill Hexwood Binder##133112+
collect Cage Key##156859 |goto 21.28,56.36 |q 50265
step
click Cage
Free Master Ashton |q 50265/1 |goto 21.05,55.29
step
talk Samantha Sweet##133101
accept Bittersweet##50266 |goto 21.17,55.07
step
click Cage
Release Samantha Sweet |q 50266/1 |goto 21.17,55.07
step
click Gauntlet
Recover the Gauntlet |q 50266/4 |goto 21.94,55.95
step
click Sword
Recover the Sword |q 50266/3 |goto 21.95,57.08
step
click Boots
Recover the Boots |q 50266/2 |goto 21.35,57.04
step
click Cuirass
Recover the Cuirass |q 50266/5 |goto 21.11,57.54
step
talk Samantha Sweet##133101
Tell her _"I found your gear. <Hand Samantha her gear>"_
Return Samantha's Gear |q 50266/6 |goto 21.15,55.15
step
label "Collect_Bags_Of_Reagents"
kill Hexwood Seer##133111+
collect 3 Bag of Reagents##156951 |q 50306/2 |goto 22.00,56.57
step
label "Collect_Organic_Matter_Samples"
kill Timber Mongrel##133116+
collect 4 Organic Matter Sample##156950 |q 50306/1 |goto 22.00,56.57
step
talk Samantha Sweet##133252
turnin Bittersweet##50266 |goto 20.60,57.49
step
talk Marten Webb##133126
turnin Odds and Ends##50306 |goto 20.64,57.51
step
talk Inquisitor Cleardawn##133098
turnin Saving Master Ashton##50265 |goto 20.64,57.46
step
talk Marten Webb##133126
accept A Little 'Pick Me Up'##50327 |goto 20.64,57.51
step
talk Warren Ashton##133105
Choose _<Hand the potion to Master Ashton>_
Give Master Ashton the Potion |q 50327/1 |goto 20.60,57.55
step
Watch the dialogue
Listen to Master Ashton |q 50327/2 |goto 20.60,57.55
step
talk Warren Ashton##133105
turnin A Little 'Pick Me Up'##50327 |goto 20.59,57.54
step
talk Inquisitor Cleardawn##133098
accept Deeper into the Woods##50370 |goto 20.64,57.46
step
Go Deeper Into the Woods |q 50370/1 |goto 24.58,56.65
step
talk Inquisitor Cleardawn##133098
turnin Deeper into the Woods##50370 |goto 24.57,56.65
accept Stopping the Grand Rite##50325 |goto 24.57,56.65
accept Witch Way Out?##50530 |goto 24.57,56.65
step
talk Warren Ashton##133105
accept Matrons of the Crimsonwood##50329 |goto 24.58,56.72
accept Controlling the Situation##50445 |goto 24.58,56.72
stickystart "Free_Captive_Villagers"
stickystart "Collect_Control_Charms"
step
click Witch Effigy
Destroy the First Focus |q 50325/1 |goto 24.60,59.29
step
click Witch Effigy
Destroy the Third Focus |q 50325/3 |goto 26.44,52.00
step
Follow the path |goto 25.42,52.66 < |only if walking
click Witch Effigy
Destroy the Second Focus |q 50325/2 |goto 25.23,50.02
step
label "Free_Captive_Villagers"
click Cage+
|tip They look like rounded wooden cages on the ground around this area.
Free #10# Captive Villagers |q 50530/1 |goto 24.76,51.61
step
label "Collect_Control_Charms"
kill Haunted Servitor##137587+
collect 5 Control Charm##157821 |q 50445/1 |goto 24.76,51.61
step
use Weakening Potion##158175
|tip Use it on the three Matron enemies around this area.
|tip Use it repeatedly to kill them faster.
kill Matron Elsbeth Garrick##133103 |q 50329/1 |goto 19.53,53.69
kill Matron Stefania Denholm##137594 |q 50329/2 |goto 19.53,53.69
kill Matron Wilona Blackwood##137596 |q 50329/3 |goto 19.53,53.69
step
talk Inquisitor Cleardawn##133098
turnin Stopping the Grand Rite##50325 |goto 24.57,56.66
turnin Witch Way Out?##50530 |goto 24.57,56.66
step
talk Warren Ashton##133105
turnin Matrons of the Crimsonwood##50329 |goto 24.58,56.72
turnin Controlling the Situation##50445 |goto 24.58,56.72
step
talk Inquisitor Cleardawn##133098
accept In the Hall of the Drust King##50481 |goto 24.57,56.65
step
Enter the cave |goto 27.02,58.45 < 10 |walk |only if not subzone("Gol Inath")
Watch the dialogue
|tip Inside the cave.
Travel to Gorak Tul |goto 27.22,60.32 < 10 |c |q 50481
step
kill Gorak Tul##134004 |q 50481/1 |goto 27.54,59.37
|tip Downstairs inside the cave.
|tip He will eventually surrender.
|tip Your allies will help you fight.
step
Watch the dialogue
|tip Run up the stairs toward the exit of the cave.
|tip Inside the cave.
Escape the Chamber |q 50481/2 |goto 27.30,59.19
step
_Next to you:_
talk Inquisitor Cleardawn
turnin In the Hall of the Drust King##50481
accept Stick It To 'Em!##50533
step
use the Greater Control Charm##158064
|tip Use it next to the Crimsonwood Demolisher.
Use the Greater Control Charm |q 50533/1 |goto 27.18,57.91
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy the Witch Forces |q 50533/2 |goto 22.26,56.58
step
Reach the Signal Point |q 50533/3 |goto 19.39,51.02
step
talk Cesi Loosecannon##136234
accept An Economic Opportunity##50988 |goto 22.88,46.24
step
talk Cesi Loosecannon##136234
turnin An Economic Opportunity##50988 |goto 20.62,46.19
step
talk Fixi Slyshiv##136227
accept Cutthroat Business Practices##51020 |goto 20.85,46.19
step
talk Klause Fairwind##136233
accept She's Got it Where it Counts##51019 |goto 19.89,44.25
step
click Ball & Chain
Free Miranda |q 51019/1 |goto 20.61,43.57
step
Enter the cave |goto 21.19,43.90 < 15 |walk
kill Gary Cofferdam##136294 |q 51020/1 |goto 21.49,43.56
|tip Inside the cave.
step
talk Klause Fairwind##136233
turnin She's Got it Where it Counts##51019 |goto 19.89,44.26
step
talk Fixi Slyshiv##136227
turnin Cutthroat Business Practices##51020 |goto 20.85,46.19
step
talk Cesi Loosecannon##136234
accept Out With the Old Boss##50978 |goto 20.62,46.19
step
kill Richard Tornsail##136474 |q 50978/1 |goto 19.29,43.65
step
Watch the dialogue
talk Cesi Loosecannon##136234
|tip Upstairs inside the building.
turnin Out With the Old Boss##50978 |goto 19.20,43.51
step
talk Tan Lotuswind##135988
|tip At the top of the ship.
fpath Anyport |goto 19.14,43.30
step
talk Clonk Greaseybit##136140
accept Every Day I'm Smugglin'##51001 |goto 20.92,43.64
step
talk Kane Carlyle##136184
accept Asking for a Friend##51018 |goto 20.83,46.02
step
talk Xun Xun Sweetflower##136141
Ask her _"You have an extensive pantry. Is there anything missing from your spice rack?"_
Ask Xun Xun |q 51018/1 |goto 20.67,45.58
step
talk Merchant Kooda##136282
buy Century Sauce##159678 |n
Obtain the Century Sauce |q 51018/2 |goto 20.18,43.28
step
click Wanted Poster
accept WANTED: Anchorface##51240 |goto 19.55,43.61
stickystart "Collect_Smuggled_Goods"
step
kill Anchorface##137011 |q 51240/1 |goto 18.00,43.79
|tip He looks like a large shark that swims underwater around this area.
|tip If you have trouble, try to find help, or skip the quest.
step
label "Collect_Smuggled_Goods"
click Smuggled Goods+
|tip They look like wooden crates floating in the water around this area.
collect 5 Smuggled Goods##159680 |q 51001/1 |goto 18.44,46.03
step
Run up the stairs |goto 19.67,44.71 < 15 |only if walking
talk Cesi Loosecannon##136579
|tip Upstairs inside the building.
turnin WANTED: Anchorface##51240 |goto 19.20,43.51
step
talk Clonk Greaseybit##136140
turnin Every Day I'm Smugglin'##51001 |goto 20.92,43.65
step
talk Kane Carlyle##136184
turnin Asking for a Friend##51018 |goto 20.83,46.02
step
Follow the path up and out of Anyport |goto 20.57,46.57 < 15 |only if walking and subzone("Anyport")
talk Inquisitor Cleardawn##133098
|tip Up on the cliff.
Tell her _"Send the signal. Let's get out of here!"_
Tell Cleardawn to Send the Signal |q 50533/4 |goto 19.30,50.74
step
Watch the dialogue
clicknpc Waycrest Guard's Mount##134925
Ride the Waycrest Guard's Mount |invehicle |goto 19.35,50.51 |q 50533
step
Return to Arom's Stand |complete subzone("Arom's Stand") |goto 37.85,49.99 |q 50533 |notravel
step
talk Inquisitor Cleardawn##135021
turnin Stick It To 'Em!##50533 |goto 37.87,50.09
step
talk Morwin Gladeheart##135976
accept Lost in the Woods##50967 |goto 29.92,40.44
accept A Farmer's Fate##50970 |goto 29.92,40.44
stickystart "Accept_Those_Who_Remain"
stickystart "Collect_Ashenwood_Relics"
step
click Mark of Ash
Gain the Mark of Ash |q 50970/1 |goto 26.69,41.92
step
label "Accept_Those_Who_Remain"
Kill Bloodbough enemies around this area
accept Those Who Remain##50965 |goto 26.69,41.92
|tip You will eventually accept this quest after looting.
step
click Mark of Yew
Gain the Mark of Yew |q 50970/2 |goto 25.21,41.84
step
click Mark of Alder
Gain the Mark of Alder |q 50970/3 |goto 24.02,40.68
step
kill Lichenlord Ripp##135914
|tip In the entrance of the cave.
Save Amalie Oakseeker |q 50967/1 |goto 23.42,39.09
step
label "Collect_Ashenwood_Relics"
Kill Bloodbough enemies around this area
collect 8 Ashenwood Relic##160027 |q 50965/1 |goto 25.23,41.00
|only if haveq(50965) or completedq(50965)
step
talk Morwin Gladeheart##135976
turnin Those Who Remain##50965 |goto 29.92,40.44
turnin Lost in the Woods##50967 |goto 29.92,40.44
turnin A Farmer's Fate##50970 |goto 29.92,40.44
step
talk Marshal Everit Reade##131636
turnin The Road to Corlain##49926 |goto 32.06,30.94
accept The First Watch##50003 |goto 32.06,30.94
step
Watch the dialogue
Enter the building |goto 31.35,30.00 < 10 |walk
kill Sister Adela##131671 |q 50003/1 |goto 31.18,29.81
|tip Upstairs inside the building.
step
Watch the dialogue
talk Marshal Everit Reade##131636
|tip Upstairs inside the building.
turnin The First Watch##50003 |goto 31.26,29.88
accept A Weather Eye##50149 |goto 31.26,29.88
step
talk Ensign Wallace##135024
fpath Watchman's Rise |goto 31.87,30.45
step
talk Inquisitor Notley##131640
|tip Behind the building.
Tell him _"I need your help scouting the surrounding area."_
collect Falconer's Whistle##156855 |q 50149/1 |goto 30.96,29.56
step
clicknpc Winston##131705
Watch the dialogue
Begin Scouting |q 50149/2 |goto 30.79,29.36
step
Watch the dialogue
Scout the Upper Corlain Gate |q 50149/3 |goto 30.85,21.08
|tip Fly into the floating yellow globe.
step
Watch the dialogue
Scout Corlain Town |q 50149/4 |goto 29.18,27.31
|tip Fly into the floating yellow globe.
step
Watch the dialogue
Scout the Armory |q 50149/5 |goto 25.01,35.84
|tip Fly into the floating yellow globe.
step
Watch the dialogue
Return to Watchman's Rise |goto 30.84,29.42 < 10 |c |q 50149 |notravel
step
talk Marshal Everit Reade##131636
turnin A Weather Eye##50149 |goto 31.35,30.29
accept A Steady Ballast##50151 |goto 31.35,30.29
step
talk Lucille Waycrest##131638
accept Precious Metals##50173 |goto 31.43,30.25
stickystart "Collect_Silver_Nuggets"
step
Enter the building |goto 34.40,30.74 < 10 |walk
talk Elsie Wright##132374
|tip Inside the building.
accept An Eight-Legged Curse##50175 |goto 34.60,30.73
accept All Wrapped Up##50174 |goto 34.60,30.73
stickystart "Slay_Bilefang_Spiders"
step
kill Writhing Cocoon##132345+
|tip They look like large squirming white eggs on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Rescue #8# Miners |q 50174/1 |goto 35.15,31.52
You can find more in the mine at [36.01,31.68]
step
label "Collect_Silver_Nuggets"
click Silver Nugget+
|tip They look like groups of small silver rocks on objects and on the ground around this area.
collect 10 Silver Nugget##156722 |q 50173/1 |goto 35.15,31.52
You can find more in the mine at [36.01,31.68]
step
label "Slay_Bilefang_Spiders"
Kill Bilefang enemies around this area
Slay #20# Bilefang Spiders |q 50175/1 |goto 35.15,31.52
step
Enter the building |goto 34.40,30.74 < 10 |walk
talk Elsie Wright##132374
|tip Inside the building.
turnin An Eight-Legged Curse##50175 |goto 34.60,30.73
turnin All Wrapped Up##50174 |goto 34.60,30.73
step
talk Lucille Waycrest##131638
turnin Precious Metals##50173 |goto 31.43,30.25
step
Enter the building |goto 31.36,30.00 < 10 |walk
talk Quartermaster Rickard##137455
|tip Inside the building.
home Watchman's Tower |goto 31.19,29.76 |q 50588 |future
step
talk Inquisitor Yorrick##131641
accept Digging for Scraps##50152 |goto 26.23,36.10
step
kill Hexthralled Guardsman##131530+
click Quality Salvage+
|tip They look like swords and various pieces of armor laying on objects and on the ground around this area.
collect 10 Quality Salvage##156663 |q 50152/1 |goto 24.88,36.30
step
Enter the cellar |goto 24.46,37.25 < 7 |walk
Watch the dialogue
talk Angus Ballaster##132193
|tip Underground in the cellar.
Tell him _"We could use a blacksmith to help fight the coven."_
Find Angus Ballaster |q 50151/1 |goto 24.46,37.21
step
Watch the dialogue
|tip Underground in the cellar.
Kill the enemies that attack
Defeat the Coven Ambush |q 50151/2 |goto 24.52,36.83
step
talk Marshal Everit Reade##131636
turnin A Steady Ballast##50151 |goto 31.35,30.30
turnin Digging for Scraps##50152 |goto 31.35,30.30
step
talk Lucille Waycrest##131638
accept An Improvised Arsenal##50253 |goto 31.43,30.25
step
talk Angus Ballaster##132193
Ask him _"Can you make a weapon out of this silver?"_
Watch the dialogue
Speak with Angus Ballaster |q 50253/1 |goto 31.72,29.55
step
click Assorted Salvage
collect Battered Hand Cannon##156853 |q 50253/2 |goto 31.93,29.73
step
click Place Hand Cannon
Place the Hand Cannon |q 50253/3 |goto 31.63,29.51
step
Watch the dialogue
Modify the Hand Cannon |q 50253/4 |goto 31.63,29.51
step
talk Angus Ballaster##132193
turnin An Improvised Arsenal##50253 |goto 31.78,29.56
step
talk Lucille Waycrest##131638
accept Witchrending##50446 |goto 31.43,30.25
accept To Have Loved and Lost##50754 |goto 31.43,30.25
step
click Wanted Poster
accept WANTED: Sister Lilias##51356 |goto 31.75,30.79
step
clicknpc Corlain Townsperson##134009
accept Remembering the Fallen##50447 |goto 29.29,29.81
stickystart "Collect_Personal_Keepsakes"
step
kill Matron Adeline##133350 |q 50446/2 |goto 30.38,28.83
|tip Use the "Witchrend" ability on her to kill her easier.
|tip It appears as a button on the screen.
step
kill Matron Ceridwen##133307 |q 50446/1 |goto 29.11,27.64
|tip Use the "Witchrend" ability on her to kill her easier.
|tip It appears as a button on the screen.
step
kill Matron Letitia##133351 |q 50446/3 |goto 27.09,29.31
|tip Use the "Witchrend" ability on her to kill her easier.
|tip It appears as a button on the screen.
step
label "Collect_Personal_Keepsakes"
clicknpc Corlain Townsperson##134023+
|tip They look like dead humans on the ground around this area.
collect 8 Personal Keepsake##157806 |q 50447/1 |goto 28.11,27.88
step
talk Inquisitor Mace##131639
accept Reeking Refuge##50449 |goto 28.54,25.65
step
Enter the building |goto 27.28,25.24 < 10 |walk
Investigate the Farm |q 50449/1 |goto 27.06,25.23
|tip Inside the building.
step
talk Harris Hocking##133839
|tip Inside the building.
turnin Reeking Refuge##50449 |goto 27.06,25.23
accept Eating Through the Defenses##50451 |goto 27.06,25.23
accept An Offensive Harvest##50450 |goto 27.06,25.23
stickystart "Kill_Scavenging_Boars"
step
click Aromatic Onion+
|tip They look like white onions with green fumes rising off of them half-buried in the ground around this area.
collect 7 Aromatic Onion##157807 |q 50450/1 |goto 27.65,24.73
step
label "Kill_Scavenging_Boars"
kill 8 Scavenging Boar##133822 |q 50451/1 |goto 27.65,24.73
step
Enter the building |goto 27.28,25.24 < 10 |walk
talk Harris Hocking##133839
|tip Inside the building.
turnin Eating Through the Defenses##50451 |goto 27.06,25.23
turnin An Offensive Harvest##50450 |goto 27.06,25.23
accept Potent Protection##50452 |goto 27.06,25.23
step
kill Sister Lilias##137371
|tip Use the "Witchrend" ability on her to kill her easier.
|tip It appears as a button on the screen.
|tip Pull her toward the small bridge nearby to make the ability button appear again, if it disappears when you approach her.
|tip If you have trouble, try to find help, or skip the quest.
collect Sister Lilias' Head##160026 |q 51356/1 |goto 27.07,19.54
step
talk Bertram##135025
fpath Whitegrove Chapel |goto 25.75,16.56
step
click Simple Gravestone
Place the Flowers |q 50754/1 |goto 23.26,17.47
step
Watch the dialogue
talk Alexander Treadward##135200
turnin To Have Loved and Lost##50754 |goto 23.30,17.42
accept Painful Memories##50758 |goto 23.30,17.42
step
click Forgotten Bones
Find Treadward's Ring |q 50758/1 |goto 23.31,12.60
step
Watch the dialogue
talk Alexander Treadward##134953
turnin Painful Memories##50758 |goto 23.29,12.59
accept Running Late##50759 |goto 23.29,12.59
step
Enter the building |goto 23.85,14.98 < 10 |only if walking
Watch the dialogue
talk Lord Arthur Waycrest##132994
|tip Upstairs inside the building.
Tell him _"The ceremony is ready to begin."_
Speak to Lord Waycrest |q 50759/1 |goto 24.31,14.94
step
click Rug
|tip Upstairs inside the building.
collect Lord Waycrest's Notes##158719 |q 50759/2 |goto 24.27,15.03
step
talk Lord Arthur Waycrest##132994
|tip Upstairs inside the building.
turnin Running Late##50759 |goto 24.31,14.94
step
talk Alexander Treadward##134953
accept From This Day Forward##50760 |goto 23.29,12.59
step
click Church Pew
Watch the dialogue
Observe the Ceremony |q 50760/1 |goto 23.26,12.95
step
talk Lord Arthur Waycrest##132994
turnin From This Day Forward##50760 |goto 23.25,12.70
accept Blood in the Chapel##50761 |goto 23.25,12.70
step
kill 10 Red Hand Assassin##134926 |q 50761/1 |goto 23.57,13.80
step
talk Lord Arthur Waycrest##132994
turnin Blood in the Chapel##50761 |goto 23.25,12.70
accept The Lady's Fate##50762 |goto 23.25,12.70
step
Enter the building |goto 23.85,14.98 < 10 |only if walking
Watch the dialogue
|tip Downstairs inside the building.
|tip You will be attacked.
Find Lady Waycrest |q 50762/1 |goto 24.28,15.13
step
Watch the dialogue
|tip Downstairs inside the building.
kill Roland the Knife##134992
Watch the dialogue
Slay Roland the Knife |q 50762/2 |goto 24.28,15.13
step
click Assassin's Orders
|tip Downstairs inside the building.
collect Assassin's Orders##158914 |q 50762/3 |goto 24.25,15.01
step
talk Alexander Treadward##135200
turnin The Lady's Fate##50762 |goto 23.30,17.42
accept One Last Request##50763 |goto 23.30,17.42
step
click Ship's Log
|tip At the top of the ship.
accept Sweete's Orders##50960 |goto 27.45,11.61
step
talk Lucille Waycrest##131638
turnin Witchrending##50446 |goto 31.43,30.25
turnin One Last Request##50763 |goto 31.43,30.25
turnin Remembering the Fallen##50447 |goto 31.43,30.25
turnin Potent Protection##50452 |goto 31.43,30.25
turnin Sweete's Orders##50960 |goto 31.43,30.25
step
talk Lieutenant Course##137368
turnin WANTED: Sister Lilias##51356 |goto 31.49,30.07
step
talk Angus Ballaster##132193
accept Barrier Buster##50453 |goto 31.78,29.56
step
talk Marshal Everit Reade##131636
accept A Traitor's Death##50454 |goto 31.35,30.29
step
talk Inquisitor Notley##131640
accept Hexed Hatchlings##50456 |goto 31.27,22.72
accept Leaving the Nest##50455 |goto 31.27,22.72
stickystart "Open_Falcon_Cages"
step
use the Falconer's Whistle##157845
|tip Use the ability on your action bar on Wicker Charms around this area.
|tip They look like dreamcatcher objects hanging from the buildings around this area.
Destroy #7# Wicker Charms |q 50456/1 |goto 31.83,23.92
step
Stop Controlling the Falcon |outvehicle |q 50456
|tip Click the yellow arrow on your action bar.
step
label "Open_Falcon_Cages"
click Falcon Cage+
|tip They look like dark metal bird cages sitting on objects and on the ground around this area.
Open #5# Falcon Cages |q 50455/1 |goto 31.79,24.53
step
talk Inquisitor Notley##131640
turnin Hexed Hatchlings##50456 |goto 31.27,22.72
turnin Leaving the Nest##50455 |goto 31.27,22.72
stickystart "Collect_Blasting_Powder"
step
kill Captain Goodspeed##133841 |q 50454/1 |goto 28.94,19.07
step
label "Collect_Blasting_Powder"
click Blasting Powder+
|tip They look like brown leather sacks sitting on objects and on the ground around this area.
collect 5 Blasting Powder##157800 |q 50453/1 |goto 29.33,20.78
step
talk Inquisitor Sterntide##131642
|tip On top of the wall.
turnin Barrier Buster##50453 |goto 30.63,21.63
accept Break On Through##50457 |goto 30.63,21.63
step
click Rampart Cannon
Watch the dialogue
Destroy the Corlain Barrier |q 50457/1 |goto 30.56,21.64
step
Watch the dialogue
talk Lucille Waycrest##131638
|tip She runs to this location.
turnin Break On Through##50457 |goto 31.01,20.25
accept To the Other Side##50583 |goto 31.01,20.25
step
talk Marshal Everit Reade##131636
turnin A Traitor's Death##50454 |goto 31.03,20.26
accept Hexecutioner##50585 |goto 31.03,20.26
accept Ruinous Rituals##50584 |goto 31.03,20.26
stickystart "Kill_Blighted_Horrors"
stickystart "Slay_Heartsbane_Witches"
step
click Corlain Citizen's Journal
accept The Fall of Corlain##50586 |goto 30.75,19.57
step
click Corlain Citizen's Journal
Read the Corlain Journal |q 50586/1 |goto 30.75,19.57 |count 1
step
click Corlain Citizen's Journal
Read the Corlain Journal |q 50586/1 |goto 30.21,18.37 |count 2
step
click Gate
Open the East Gate |q 50583/1 |goto 29.85,17.92
step
click Corlain Citizen's Journal
Read the Corlain Journal |q 50586/1 |goto 31.98,18.27 |count 3
step
click Corlain Citizen's Journal
Read the Corlain Journal |q 50586/1 |goto 31.99,20.44 |count 4
step
click Gate
Open the South Gate |q 50583/2 |goto 32.52,20.52
step
click Corlain Citizen's Journal
Read the Corlain Journal |q 50586/1 |goto 32.68,20.01 |count 5
step
click Gate
Open the West Gate |q 50583/3 |goto 33.74,20.95
step
click Corlain Citizen's Journal
Read the Corlain Journal |q 50586/1 |goto 33.97,18.51 |count 6
step
label "Kill_Blighted_Horrors"
kill 4 Blighted Horror##137568 |q 50584/1 |goto 33.42,18.32
|tip Attack the Heartsbane Disciples next to them around this area.
|tip They will appear on your minimap as yellow dots.
step
label "Slay_Heartsbane_Witches"
Kill enemies around this area
|tip Only Heartsbane and Coven enemies will count toward this quest goal.
Slay #13# Heartsbane Witches |q 50585/1 |goto 33.42,18.32
step
talk Marshal Everit Reade##131636
turnin Hexecutioner##50585 |goto 31.03,20.26
turnin Ruinous Rituals##50584 |goto 31.03,20.26
step
talk Lucille Waycrest##131638
turnin To the Other Side##50583 |goto 31.00,20.25
turnin The Fall of Corlain##50586 |goto 31.00,20.25
accept Storming the Manor##50588 |goto 31.00,20.25
step
Watch the dialogue
|tip Follow Lucille Waycrest as she runs.
Begin Following Lucille Waycrest |goto 31.00,20.25 > 10 |c |q 50588
step
Watch the dialogue
|tip Follow Lucille Waycrest as she runs.
Follow Lucille |q 50588/1 |goto 32.67,15.35
step
Watch the dialogue
kill Marshal Everit Reade##134366 |q 50588/2 |goto 32.88,15.33
step
Watch the dialogue
talk Lucille Waycrest##131638
|tip She walks to this location.
turnin Storming the Manor##50588 |goto 32.82,15.34
accept Waycrest Manor: The Fallen Mother##50639 |goto 32.82,15.34
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Stormsong Valley (30-60)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Stormsong Valley storylines:\n\nThe Tidesages of Stormsong\nThe Growing Tempest\nCycle of Hatred\nBriarback Kraul\nA House in Peril\nAt the Edge of Madness\nFrom the Depths They Come\nTreasure in Deadwash",
condition_suggested=function() return level >= 30 and not completedq(50733) and completedq(47189) end,
startlevel=35,
endlevel=50,
image=ZGV.IMAGESDIR.."StormsongValley",
},[[
step
click Scouting Map
|tip Inside the building.
accept Stormsong Valley##47962 |goto Boralus/0 68.38,22.09
step
talk Taelia##121235
|tip Inside the building.
turnin Stormsong Valley##47962 |goto 68.17,21.97
accept The Missing Fleet##47952 |goto 68.17,21.97
step
talk Will Melborne##135064
Tell him _"We need a ferry to the Stormsong Monastery."_
Charter a Ferry to Stormsong Monastery |q 47952/1 |goto 74.17,24.80
step
Watch the dialogue
Travel to Stormsong Monastery |complete subzone("Stormsong Monastery") |goto 65.20,68.70 |notravel |q 47952
step
_Next to you:_
talk Taelia
turnin The Missing Fleet##47952
accept Searching for Answers##51487
step
talk Sister Adrianna##133974
Ask her _"Can you tell me anything about the missing fleet?"_
Question Sister Adrianna |q 51487/1 |goto 68.44,74.23
step
talk Brother Darrel##133976
Ask him _"Can you tell me anything about the missing fleet?"_
Question Brother Darrel |q 51487/2 |goto 60.49,85.25
step
talk Sister Celicia##134033
Ask her _"Can you tell me anything about the missing fleet?"_
Question Sister Celicia |q 51487/3 |goto 66.18,84.97
step
_Next to you:_
talk Taelia
turnin Searching for Answers##51487
accept Archived Knowledge##51488
step
talk Brother Alen##133951
Ask him _"Can you tell me anything about the missing fleet?"_
Question Brother Alen |q 51488/1 |goto 68.40,81.49
step
Watch the dialogue
|tip Follow Brother Alen as he walks.
|tip He eventually walks to this location.
|tip Downstairs inside the building.
Follow Brother Alen into the Archives |q 51488/2 |goto Tiragarde Sound/0 73.72,39.54
step
Watch the dialogue
|tip Downstairs inside the building.
kill Lieutenant Wade##138318 |q 51488/3 |goto 73.65,39.49
step
Watch the dialogue
|tip Downstairs inside the building.
Learn the Secret |q 51488/4 |goto 73.71,39.54
step
_Next to you:_
talk Taelia
turnin Archived Knowledge##51488
accept Time to Leave##51489
step
clicknpc Galeheart##137978
|tip At the top of the tower.
Watch the dialogue
Begin Flying to Stormsong Valley |invehicle |goto Boralus/0 71.78,78.90 |q 51489
step
Watch the dialogue
Fly with Galeheart to Stormsong Valley |q 51489/1 |goto Stormsong Valley/0 57.86,86.05 |notravel
step
talk Taelia##137866
turnin Time to Leave##51489 |goto Stormsong Valley/0 57.89,85.92
accept Border Issues##51490 |goto Stormsong Valley/0 57.89,85.92
step
talk Stormsong NPCs
|tip They look like armored humans.
Tell them _"Open this pass at once."_
|tip They may attack you.
|tip If they attack, they will eventually surrender.
Clear the Blockade |q 51490/1 |goto 57.65,85.44
|tip Fill the bar in the quest tracker area.
step
talk Taelia##137866
turnin Border Issues##51490 |goto 57.89,85.92
accept Carry On##51401 |goto 57.89,85.92
step
Watch the dialogue
talk Taelia##129999
turnin Carry On##51401 |goto 59.17,69.49
accept A Risky Ploy##49725 |goto 59.17,69.49
step
use the Military Whistle##155859
Disperse the Crowd |q 49725/1 |goto 59.11,69.06
step
Watch the dialogue
kill Brennadam Citizen##134241
Subdue the Brennadam Citizen |q 49725/2 |goto 59.14,69.09
step
talk Brother Pike##130576
turnin A Risky Ploy##49725 |goto 59.23,68.63
accept House Stormsong##49703 |goto 59.23,68.63
step
Enter the building |goto 58.76,70.45 < 10 |walk
talk "Nasty" Buck##138221
|tip He walks around this area inside the building.
home The Golden Flagon |goto 58.58,70.31 |q 50802 |future
step
talk Anna Skyspirit##134704
fpath Brennadam |goto 59.73,70.57
step
talk Marilyn Hood##141769
accept Circle the Wagons##52793 |goto 60.18,70.49
accept Sometimes Less Is More##52796 |goto 60.18,70.49
stickystart "Kill_Stonejaw_Saurolisks"
step
talk Lorraine Hood##141622
Tell her _"You are safe now."_
Find Lorraine |q 52793/1 |goto 63.79,73.80
step
talk Mallory Hood##141603
Tell her _"I will take care of it."_
Find Mallory |q 52793/3 |goto 64.89,76.77
step
talk Mallory Hood##141603
accept A Saur Point##52795 |goto 64.89,76.77
step
Enter the cave |goto 65.24,77.58 < 15 |walk
kill Sourtooth##141599 |q 52795/1 |goto 65.42,77.99
|tip Inside the cave.
step
talk Mallory Hood##141603
turnin A Saur Point##52795 |goto 64.89,76.77
step
talk Darion Hood##141604
Tell him _"I'll see they are safe."_
Find Darion |q 52793/2 |goto 63.31,77.71
step
label "Kill_Stonejaw_Saurolisks"
Kill Stonejaw enemies around this area
|tip Stonejaw Younglings will not count for this quest goal.
Slay #8# Stonejaw Saurolisks |q 52796/1 |goto 63.31,76.25
step
talk Marilyn Hood##141769
turnin Circle the Wagons##52793 |goto 60.18,70.49
turnin Sometimes Less Is More##52796 |goto 60.18,70.49
step
talk Mayor Roz##130694
accept You Have Their Orders##49745 |goto 57.63,66.49
accept Dousing the Flames##49746 |goto 57.63,66.49
step
talk Sergeant Calvin##130190
accept Bombs, Away##49744 |goto 57.61,66.41
stickystart "Collect_Horde_Explosives"
stickystart "Douse_Fires"
step
kill Champion Lockjaw##138028
|tip He walks around this area.
|tip Behind the building.
collect Warchief's Orders##133510 |q 49745/1 |goto 54.43,61.33
step
label "Collect_Horde_Explosives"
click Sapper Charge+
|tip They look like metal spikey bombs that appear on the ground around this area.
|tip They have a timer counting down to explosion.
|tip Click them before they explode.
click Horde Explosive+
|tip They look like red spikey balls half-buried in the ground around this area.
|tip These do not explode.
collect 8 Horde Explosive##155877 |q 49744/1 |goto 56.02,62.91
step
click Planted Explosives
Destroy the Demolisher |q 49744/2 |goto 55.71,60.68 |count 1
step
click Planted Explosives
Destroy the Demolisher |q 49744/2 |goto 54.63,60.89 |count 2
step
label "Douse_Fires"
click Water Bucket+
|tip They look like small wooden buckets on the ground next to water around this area.
|tip Use the "Douse Flames" ability on fires around this area.
|tip It appears as a button on the screen.
Douse #15# Fires |q 49746/1 |goto 56.52,64.70
step
talk Sergeant Calvin##130190
turnin Bombs, Away##49744 |goto 57.61,66.41
step
talk Mayor Roz##130694
|tip She runs to this location.
turnin You Have Their Orders##49745 |goto 57.63,66.49
turnin Dousing the Flames##49746 |goto 57.63,66.49
accept Heavy Artillery##49755 |goto 57.63,66.49
step
Follow the path up |goto 57.72,60.94 < 20 |only if walking
kill Tank Engineer##138125+
kill Commander Wormwood##130899 |q 49755/1 |goto 56.17,58.40
|tip He appears after you kill the Tank Engineers.
step
clicknpc Experimental War Machine##138055
Control the Experimental War Machine |invehicle |goto 56.13,58.41 |q 49755
step
Kill enemies around this area
|tip They are to the northwest.
|tip Use the "Azerite Cannon" ability on your action bar.
Destroy the Horde Forces |q 49755/2 |goto 56.10,58.28
step
Activate the Self Destruct |q 49755/3 |goto 56.10,58.28
|tip Use the "Self Destruct" ability on your action bar.
step
talk Mayor Roz##130694
turnin Heavy Artillery##49755 |goto 57.63,66.49
accept There's Gold in Them There Fields##50157 |goto 57.63,66.49
accept Checking Out the Collapse##50158 |goto 57.63,66.49
step
talk Sergeant Calvin##130190
accept Survivors##52067 |goto 57.61,66.41
step
talk Squire Augustus III##131004
accept Trouble at Fort Daelin##49818 |goto 59.51,69.95
step
talk Farmer Max##137094
accept Raiders of the Lost Crop##51310 |goto 54.97,67.97
accept Grain Drain##51314 |goto 54.97,67.97
stickystart "Kill_Orc_Raiders"
step
click Sack of Grain+
|tip They look like tan bags with yellow grain in them on the ground around this area.
collect 8 Sack of Grain##155878 |q 51314/1 |goto 54.54,67.07
step
label "Kill_Orc_Raiders"
kill 6 Orc Raider##137104 |q 51310/1 |goto 54.54,67.07
step
talk Farmer Max##137094
turnin Raiders of the Lost Crop##51310 |goto 54.97,67.97
turnin Grain Drain##51314 |goto 54.97,67.97
step
talk Houndmaster Archibald##131656
|tip He walks around this area.
accept Follow Your Nose##49886 |goto 51.02,70.19
accept Sic 'Em!##49960 |goto 51.02,70.19
step
talk Karla Fairweather##134963
fpath The Amber Waves |goto 50.75,70.21
step
kill 5 Panicked Tunneler##131646 |q 49886/1 |goto 51.89,68.79
|tip Use the "Go Get Them!" ability on the clouds of brown dirt on the ground around this area.
|tip It appears as a button on the screen.
step
Enter the cave |goto 53.22,66.79 < 15 |walk |only if not (subzone("Briarback Warrens") and _G.IsIndoors())
kill Foreman Razorgnarl##131496 |q 49960/1 |goto 51.59,68.14
|tip He walks around this area inside the cave.
step
Leave the cave |goto 53.22,66.79 < 15 |walk |only if subzone("Briarback Warrens") and _G.IsIndoors()
talk Farmer Burton##132118
turnin Checking Out the Collapse##50158 |goto 51.58,65.96
accept Gadgets and Gizmos Aplenty##50134 |goto 51.58,65.96
accept Stop Vining!##50135 |goto 51.58,65.96
stickystart "Collect_Harvester_Gizmos"
step
Enter the underground cave |goto 48.06,65.79 < 15 |walk
kill Vinemaster Smagh##132160 |q 50135/3 |goto 47.93,67.22
|tip Inside the cave.
step
Enter the underground cave |goto 46.64,64.37 < 15 |walk
kill Vinemaster Orgsteen##132161 |q 50135/2 |goto 46.19,64.56
|tip She walks around this area inside the cave.
step
Enter the underground cave |goto 48.24,63.68 < 10 |walk
kill Vinemaster Guff##132162 |q 50135/1 |goto 48.35,62.92
|tip She walks around this area inside the cave.
step
label "Collect_Harvester_Gizmos"
clicknpc Malfunctioning Harvester##132123+
|tip They look like broken down mechanical scarecrows on the ground around this area.
Gather #10# Harvester Gizmos |q 50134/1 |goto 49.43,65.32
step
talk Farmer Burton##132118
turnin Gadgets and Gizmos Aplenty##50134 |goto 51.58,65.96
turnin Stop Vining!##50135 |goto 51.58,65.96
accept Farming Stimulator##50136 |goto 51.58,65.96
step
clicknpc Repaired Farmhand##132297
Control the Repaired Farmhand |invehicle |goto 51.57,65.91 |q 50136
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #30# Enemies |q 50136/1 |goto 49.31,65.03
step
Return to Farmer Burton |outvehicle |goto 51.57,65.91 |q 50136
|tip You will automatically stop controlling the Repaired Farmhand when you reach this location.
step
talk Farmer Burton##132118
turnin Farming Stimulator##50136 |goto 51.58,65.96
step
talk Houndmaster Archibald##131656
|tip He walks around this area.
turnin Follow Your Nose##49886 |goto 51.02,70.18
turnin Sic 'Em!##49960 |goto 51.02,70.18
step
talk Farmer Goldfield##129808
|tip On top of the building.
turnin There's Gold in Them There Fields##50157 |goto 50.76,73.14
accept A Pocketful of Shells##50041 |goto 50.76,73.14
stickystart "Collect_Salvaged_Azerite_Ammunition"
step
click Dirty Pocketwatch
accept A Reason to Stay##50065 |goto 49.85,73.53
step
click Battered Sword
|tip On the ground, at the base of the tree.
Find the Keepsake |q 50065/1 |goto 50.04,71.44 |count 2
step
Enter the building |goto 48.93,71.09 < 10 |walk
click Tarnished Locket
|tip Inside the building.
Find the Keepsake |q 50065/1 |goto 48.88,71.23 |count 3
step
label "Collect_Salvaged_Azerite_Ammunition"
Kill enemies around this area
|tip Click their corpses.
collect 20 Salvaged Azerite Ammunition##156583 |q 50041/1 |goto 50.07,72.22
step
talk Farmer Goldfield##129808
|tip On top of the building.
turnin A Pocketful of Shells##50041 |goto 50.76,73.14
turnin A Reason to Stay##50065 |goto 50.76,73.14
accept Goldfield's War##50069 |goto 50.76,73.14
step
click Spare Rifles
Pick Up a Spare Rifle |invehicle |goto 50.75,73.00 |q 50069
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Invaders |q 50069/1 |goto 50.72,73.00
step
kill Brug Housesmash##131980 |q 50069/2 |goto 50.72,73.00
|tip Use the abilities on your action bar.
step
talk Farmer Goldfield##129808
turnin Goldfield's War##50069 |goto 50.76,73.15
accept Golden Fields Forever##50088 |goto 50.76,73.15
step
click River Carnations
collect River Carnations##160558 |q 50088/1 |goto 51.60,75.16
step
talk Farmer Goldfield##129808
turnin Golden Fields Forever##50088 |goto 50.67,77.02
accept Deal's Off##50622 |goto 50.67,77.02
step
talk Mayor Roz##134752
|tip Inside the building.
turnin Deal's Off##50622 |goto 58.64,70.43
accept Look Out!##50354 |goto 58.64,70.43
step
click Wanted Poster
accept WANTED: Thundersnout##49730 |goto 46.08,61.85
step
Enter the building |goto  45.01,64.46 < 10 |walk
talk Sergeant Calvin##133953
|tip Inside the building.
accept Boaring Company##50353 |goto 44.73,64.61
stickystart "Accept_Anger_In_A_Bottle"
stickystart "Collect_Foul_Smelling_Samples"
stickystart "Kill_Briarback_Lookouts"
step
Follow the path up into Brarback Kraul |goto 42.45,67.52 < 15 |only if walking and not subzone("Briarback Kraul")
click Brambleguard Totem
accept Totems, Totems, Totems!##50111 |goto 44.04,72.44
step
click Brambleguard Totem
Destroy the Northern Totem |q 50111/1 |goto 44.04,72.44
step
label "Accept_Anger_In_A_Bottle"
Kill enemies around this area
accept Anger in a Bottle##50367 |goto 43.90,72.05
|tip You will eventually automatically accept this quest after looting.
step
Enter the cave |goto 41.02,72.71 < 15 |walk
kill Thundersnout##135293
|tip She walks around this area inside the cave.
|tip You may need help with this.
collect Thundersnout's Snout##158300 |q 49730/1 |goto 40.40,71.27
stickystart "Rescue_Farmers"
step
click Earthen Pillar
Rescue Farmer Deal |q 50353/2 |goto 46.17,72.04
step
click Brambleguard Totem
Destroy the Central Totem |q 50111/3 |goto 46.41,72.10
step
click Brambleguard Totem
Destroy the Eastern Totem |q 50111/2 |goto 47.00,70.22
step
click Brambleguard Totem
Destroy the Southern Totem |q 50111/4 |goto 46.07,74.50
step
label "Rescue_Farmers"
click Earthen Pillar+
|tip They look like wooden spikes with squirming humans tied to them on the ground around this area.
|tip They will appear on your minimap as yellow dots.
|tip They can also be in the caves around this area.
Rescue #7# Farmers |q 50353/1 |goto 45.94,72.63
step
label "Collect_Foul_Smelling_Samples"
Kill Briarback enemies around this area
|tip Hulking Kraulguards will also drop the quest item.
collect 10 Foul-Smelling Sample##157850 |q 50367/1 |goto 45.94,72.63
|only if haveq(50367) or completedq(50367)
step
label "Kill_Briarback_Lookouts"
use the Sedative Quill##156516
|tip Use it on Briarback Lookouts when they begin casting their "Sound the Alarm" ability.
|tip This will prevent them from calling for help from nearby enemies.
kill 6 Briarback Lookout##130073 |q 50354/1 |goto 45.94,72.63
step
talk Sergeant Calvin##133953
|tip On top of the hill, above the quillboar area.
turnin Look Out!##50354 |goto 46.66,73.83
turnin Boaring Company##50353 |goto 46.66,73.83
turnin Anger in a Bottle##50367 |goto 46.66,73.83
turnin Totems, Totems, Totems!##50111 |goto 46.66,73.83
accept War Pigs##50363 |goto 46.66,73.83
accept Run For the Hills##50365 |goto 46.66,73.83
Calvin can also be found at [57.61,66.41]			|only if not subzone("Briarback Kraul")
|tip He sometimes appears on the bridge in Brennadam.		|only if not subzone("Briarback Kraul")
stickystart "Capture_Grazing_Battle_Piglets"
step
click Empty Crate
|tip Next to the entrance of a cave.
accept Steal Them Back##50340 |goto 46.31,77.01
step
Enter the cave |goto 46.37,77.14 < 10 |walk
click Stolen Stormsong Supplies
|tip Upstiars inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 47.40,77.05 |count 1
step
Enter the cave |goto 44.87,77.32 < 10 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 44.51,78.69 |count 2
step
click Quill Venom
|tip Inside the cave.
Destroy the Central Stockpile |q 50365/2 |goto 44.64,78.93
step
Enter the cave up on the hill |goto 46.29,78.08 < 10 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 46.55,79.50 |count 3
step
click Preserved Bramble Spores
|tip Inside the cave.
Destroy the Eastern Stockpile |q 50365/1 |goto 46.82,79.60
step
Enter the cave |goto 45.64,78.20 < 10 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 46.44,80.16 |count 4
step
Enter the cave |goto 43.63,78.49 < 10 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 42.71,78.81 |count 5
step
click Giant-Sized Totem
|tip Inside the cave.
Destroy the Western Stockpile |q 50365/3 |goto 42.48,79.21
step
label "Capture_Grazing_Battle_Piglets"
clicknpc Grazing Battle-Piglet##134014+
|tip They look like small pigs on the ground around this area.
Kill enemies around this area
clicknpc Bewildered Battle-Piglet##139937+
|tip They look like small pigs that sometimes appear after killing enemies around this area.
Capture #8# Grazing Battle-Piglets |q 50363/1 |goto 45.23,77.97
step
talk Sergeant Calvin##133953
turnin War Pigs##50363 |goto 46.66,73.83
turnin Run For the Hills##50365 |goto 46.66,73.83
step
Watch the dialogue
talk Sergeant Calvin##133953
turnin Steal Them Back##50340 |goto 46.66,73.83
accept Terror of the Kraul##50368 |goto 46.66,73.83
step
Enter the cave |goto Stormsong Valley/3 89.73,23.51 < 15 |walk
use the Flask of Enraging Vapors##155824
|tip Upstairs inside the cave.
Become Enraged |havebuff spell:265508 |goto Stormsong Valley/3 35.22,46.52 |q 50368
step
kill Bramblefist the Maddened##129847 |q 50368/1 |goto 17.78,32.32
|tip Upstairs inside the cave.
step
talk Sergeant Calvin##133953
|tip Inside the cave.
turnin Terror of the Kraul##50368 |goto 71.25,52.16
accept A Question of Quillpower##50640 |goto 71.25,52.16
step
clicknpc Ornery Battleboar##134542
|tip Inside the cave.
Escape the Kraul |q 50640/1 |goto 71.83,53.01
step
Begin Riding the Boar to Safety |invehicle |q 50640
step
Watch the dialogue
Ride the Battleboar to Safety |outvehicle |goto Stormsong Valley/0 48.59,70.04 |q 50640 |notravel
step
talk Malorian Tailwind##134832
fpath Deadwash |goto 42.72,57.39
step
talk Leo Shealds##134720
accept Two-Faced Pirate Scum##50674 |goto 42.97,56.60
accept Iron Low Tide##50802 |goto 42.97,56.60
accept Break 'Em Out##50810 |goto 42.97,56.60
stickystart "Slay_Irontide_Pirates"
step
kill Two Faced Tom##138792 |q 50674/1 |goto 41.09,56.81
|tip He walks around this area.
step
talk Leo Shealds##134720
turnin Two-Faced Pirate Scum##50674 |goto 42.97,56.60
step
click Ball and Chain+
|tip They look like silver balls chained to the ankles of humans on the ground around this area.
Break #10# Chains |q 50810/1 |goto 43.94,58.58
step
label "Slay_Irontide_Pirates"
Kill Irontide enemies around this area
Slay #10# Irontide Pirates |q 50802/1 |goto 43.94,58.58
step
talk Leo Shealds##134720
turnin Iron Low Tide##50802 |goto 42.97,56.60
turnin Break 'Em Out##50810 |goto 42.97,56.60
accept Treasure Hunting##50675 |goto 42.97,56.60
step
talk Nedly Grinner##134702
turnin Treasure Hunting##50675 |goto 44.47,55.53
accept Not On Our Payroll##50691 |goto 44.47,55.53
accept Anchors Aweigh Too Much##50704 |goto 44.47,55.53
step
_Next to you:_
talk Moxie Lockspinner
accept Fun With Magnets##50696
accept Bomb Beats Rock##50697
stickystart "Find_Lost_Coins"
stickystart "Collect_Old_Ship_Parts"
stickystart "Kill_Restless_Stones"
step
click Moxie's Bombs
Watch the dialogue
Open the Western Cave |q 50697/2 |goto 48.73,56.56
step
click Moxie's Bombs
|tip On the other side of the mountain.
Open the Eastern Cave |q 50697/1 |goto 50.87,58.19
step
_Next to you:_
talk Moxie Lockspinner
turnin Bomb Beats Rock##50697
step
Enter the cave |goto 50.86,58.09 < 15 |walk
click Large Pile of Gold
|tip Inside the cave.
accept Share the Wealth##51140 |goto 50.86,56.74
step
label "Find_Lost_Coins"
use the Magnetized Metal Collector##158226
|tip Use it next to the small glints of white light on the ground around this area.
Find #60# Lost Coins |q 50696/1	|goto 51.26,59.78
You can find more around: |notinsticky
[52.33,56.15]
[47.56,57.31]
[49.92,52.93]
[46.73,53.23]
step
_Next to you:_
talk Moxie Lockspinner
turnin Fun With Magnets##50696
step
label "Collect_Old_Ship_Parts"
click Old Ship Part+
|tip They look like various-shaped silver metal objects on the ground around this area.
collect 12 Old Ship Parts##158724 |q 50704/1 |goto 51.11,59.20
step
label "Kill_Restless_Stones"
kill 10 Restless Stone##134966 |q 50691/1 |goto 51.11,59.20
step
talk Patrick Eckhart##135682
turnin Survivors##52067 |goto 57.85,55.31
accept Smells like Trouble##50908 |goto 57.85,55.31
accept Dangerous Game##50910 |goto 57.85,55.31
step
talk Lea Martinel##135874
accept Never Outgunned##50909 |goto 57.95,55.58
step
click Wanted: Yarsel'ghun
accept WANTED: Yarsel'ghun##51217 |goto 57.84,55.83
stickystart "Collect_Weapons"
stickystart "Kill_Forsaken_Keenblades"
step
click Cannon
accept Bring out the Big Gun##51159 |goto 60.17,54.61
step
Deliver the Cannon |q 51159/1 |goto 57.92,55.41
step
talk Lea Martinel##135874
turnin Bring out the Big Gun##51159 |goto 57.95,55.57
step
label "Collect_Weapons"
kill Horde Axethrower##136584+
click Rebel Weaponry+
|tip They look like various weapons on the ground around this area.
Collect #15# Weapons |q 50909/1 |goto 60.27,52.44
step
label "Kill_Forsaken_Keenblades"
kill 8 Forsaken Keenblade##136439 |q 50910/1 |goto 60.27,52.44
|tip They can be stealthed around this area.
step
Enter the cave up on the mountain |goto 59.18,49.00 < 15 |walk
kill Durmok Darkmane##135883 |q 50908/2 |goto 59.03,48.53
|tip Inside the cave.
step
Enter the cave higher up on the mountain |goto 56.63,47.32 < 15 |walk
kill Ogarth Axefall##135882 |q 50908/1 |goto 56.81,46.88
|tip Inside the cave.
step
kill Yarsel'ghun##136942 |q 51217/1 |goto 55.72,39.95
|tip On top of the mountain.
|tip If you have trouble, try to find help, or skip the quest.
step
talk Patrick Eckhart##135682
turnin Smells like Trouble##50908 |goto 57.85,55.32
turnin Dangerous Game##50910 |goto 57.85,55.32
step
talk Lea Martinel##135874
turnin Never Outgunned##50909 |goto 57.95,55.57
turnin WANTED: Yarsel'ghun##51217 |goto 57.95,55.57
step
talk Patrick Eckhart##135682
accept Worse Than It Looks##52065 |goto 57.85,55.32
step
talk Leo Shealds##134720
turnin Share the Wealth##51140 |goto 42.97,56.60
step
talk Nedly Grinner##134702
turnin Not On Our Payroll##50691 |goto 44.47,55.53
turnin Anchors Aweigh Too Much##50704 |goto 44.47,55.53
accept Don't Turtle##50741 |goto 44.47,55.53
step
talk Grettle Haribull##135367
|tip Outside, next to the building.
accept A Horrible Place##50814 |goto 44.20,54.10
step
talk Moxie Lockspinner##135067
Ask her _"What's the plan?"_
Speak to Moxie |q 50741/1 |goto 42.68,54.31
step
talk Maokka##135033
Ask him _"That box?"_
Tell him _"I'll get the meat."_
Speak to Maokka |q 50741/2 |goto 42.54,54.36
step
talk Moxie Lockspinner##135067
turnin Don't Turtle##50741 |goto 42.68,54.31
accept Earl-E Bot Gets the Worm##50753 |goto 42.68,54.31
stickystart "Collect_Wetshell_Turtles"
step
use the Remote Earl-E Designator##158635
|tip Use it on the clouds of brown dirt on the ground around this area.
kill Mud Feeder##135135+
collect 8 Mud Worm Meat##158636 |q 50753/1 |goto 40.40,53.68
step
label "Collect_Wetshell_Turtles"
clicknpc Wetshell Turtle##135407+
|tip They look like tiny turtles on the ground around this area.
Collect #6# Wetshell Turtles |q 50814/1 |goto 40.40,53.68
step
talk Maokka##135033
turnin Earl-E Bot Gets the Worm##50753 |goto 42.54,54.36
accept A Turtle's Invitation##50797 |goto 42.54,54.36
step
talk Moxie Lockspinner##135067
accept No Bot Left Behind##50774 |goto 42.68,54.31
step
talk Grettle Haribull##135367
turnin A Horrible Place##50814 |goto 44.20,54.10
step
kill Mud Burrow Guardian##135236 |q 50774/1 |goto 39.50,51.48
Save Earl-E |q 50774/2 |goto 39.50,51.48
step
talk Moxie Lockspinner##135067
turnin No Bot Left Behind##50774 |goto 42.67,54.31
accept Cave Commotion##50793 |goto 42.67,54.31
step
talk Nedly Grinner##135330
turnin Cave Commotion##50793 |goto 41.12,54.09
accept I Want It All Now##50803 |goto 41.12,54.09
step
_Next to you:_
talk Moxie Lockspinner
accept We're Not Friends##50955
accept The Proof of Piracy##52132
stickystart "Destroy_Irontide_Rum_Stashes"
stickystart "Collect_Irontide_Coin_Bags"
step
kill Captain Calico McGee##138169 |q 50955/1 |goto 36.73,56.86
step
_Next to you:_
talk Moxie Lockspinner
turnin We're Not Friends##50955
step
click Irontide Loot
accept All Laid Out For Us##50742 |goto 35.87,56.10
step
talk Big Find Balor##138934
Tell him _"I need your help."_
Get Big Find Balor |q 50742/3 |goto 35.22,54.74
step
label "Destroy_Irontide_Rum_Stashes"
Destroy #6# Irontide Rum Stashes |q 52132/1 |goto 36.56,54.89
|tip They look like brown wooden barrels on the ground around this area.
|tip Use the "Barrel Buster Bomb" ability on them.
|tip It appears as a button on the screen.
step
_Next to you:_
talk Moxie Lockspinner
turnin The Proof of Piracy##52132
step
talk Toothless Eddard##135782
Tell him _"I need your help."_
Get Toothless Eddard |q 50742/1 |goto 37.81,54.03
step
talk Chopper Darry##138928
Tell her _"I need your help."_
Get Chopper Darry |q 50742/2 |goto 38.80,58.54
step
click Irontide Loot
Take the Loot |q 50742/4 |goto 35.87,56.09
step
label "Collect_Irontide_Coin_Bags"
Kill Irontide enemies around this area
click Irontide Coin Bag+
|tip They look like grey sacks on the ground around this area.
collect 12 Irontide Coin Bag##160481 |q 50803/1 |goto 38.75,57.08
step
talk Nedly Grinner##135330
turnin I Want It All Now##50803 |goto 41.12,54.08
step
talk Leo Shealds##134720
turnin All Laid Out For Us##50742 |goto 42.97,56.60
accept Helping Out, Somewhere Else##52068 |goto 42.97,56.60
step
click Small Coin Bag
accept Walking-Around Money##50956 |goto 43.02,56.53 |instant
step
talk Felecia Gladstone##138735
|tip Up on the hill.
turnin Worse Than It Looks##52065 |goto 46.88,47.68
accept Having a Blast##51711 |goto 46.88,47.68
accept Grizzled##51752 |goto 46.88,47.68
step
click Wanted: War Gore
accept WANTED: War Gore##52876 |goto 46.74,48.13
step
click Bundle of Dynamite
collect Bundle of Dynamite##160738 |q 51711/1 |goto 47.65,38.36
step
Follow the path up |goto 47.23,35.52 < 20 |only if walking and not subzone("The Screaming Pit")
Enter the cave |goto 48.46,33.19 < 15 |walk |only if not subzone("The Screaming Pit")
kill War Gore##141984 |q 52876/1 |goto 47.37,33.97
|tip Inside the cave.
|tip If you have trouble, try to find help, or skip the quest.
stickystart "Kill_Mine_Technicians"
stickystart "Slay_Warfang_Miners"
step
Leave the cave |goto 48.43,33.20 < 10 |walk |only if subzone("The Screaming Pit")
Enter the mine |goto 46.62,36.20 < 15 |walk |only if not (subzone("Saltstone Mine") and _G.IsIndoors())
talk Holger Nash##138924
|tip Inside the mine.
accept Get Out of Here##51726 |goto Stormsong Valley/4 66.33,38.48
stickystart "Free_Captured_Miners"
step
click Cracked Mine Sweeper
|tip Inside the mine.
accept The Mine Sweeper##51881 |goto 47.19,15.59
step
kill Chief Engineer Grizz##138581 |q 51752/1 |goto 35.51,38.93
|tip Up on the ledge.
|tip Inside the mine.
step
label "Kill_Mine_Technicians"
kill 4 Mine Technician##138521 |q 51711/3 |goto 41.37,17.76
|tip Inside the mine.
step
label "Free_Captured_Miners"
clicknpc Captured Miner##136333+
|tip They look like humans mining next to the walls around this area inside the mine.
Free #6# Captured Miners |q 51726/1 |goto 66.38,38.44
step
label "Slay_Warfang_Miners"
Kill enemies around this area.
|tip Inside the mine.
|tip Use the "Toss Dynamite" ability.
|tip It appears as a button on the screen.
|tip Use it on Blackpowder Ore nodes next to enemies, and on enemies, around this area inside the mine.
|tip They look like large rocky black ore nodes on the ground around this area inside the mine.
Slay #16# Warfang Miners |q 51711/2 |goto 66.38,38.44
step
talk Holger Nash##138924
|tip Inside the mine.
turnin Get Out of Here##51726 |goto 66.38,38.44
step
Leave the mine |goto Stormsong Valley/0 46.60,36.17 < 15 |walk |only if subzone("Saltstone Mine") and _G.IsIndoors()
talk Felecia Gladstone##138735
turnin Having a Blast##51711 |goto Stormsong Valley/0 46.40,36.98
turnin Grizzled##51752 |goto Stormsong Valley/0 46.40,36.98
turnin The Mine Sweeper##51881 |goto Stormsong Valley/0 46.40,36.98
accept Burn It All Down##51728 |goto Stormsong Valley/0 46.40,36.98
accept Get Shredded##51720 |goto Stormsong Valley/0 46.40,36.98
accept Saw Dusted##51723 |goto Stormsong Valley/0 46.40,36.98
stickystart "Burn_Lumber_Piles"
stickystart "Collect_Energized_Core"
stickystart "Kill_Warfang_Lumberjacks"
step
Burn the Siege Tower |q 51728/2 |goto 49.05,37.43 |count 1
|tip Use the "Flamethrower" ability.
|tip Use it next to the Siege Tower.
|tip It appears as a button on the screen.
step
Burn the Siege Tower |q 51728/2 |goto 49.65,38.08 |count 2
|tip Use the "Flamethrower" ability.
|tip Use it next to the Siege Tower.
|tip It appears as a button on the screen.
step
label "Burn_Lumber_Piles"
Burn #6# Lumber Piles |q 51728/1 |goto 50.00,37.89
|tip They look like stacks of large logs on the ground around this area.
|tip Use the "Flamethrower" ability next to Lumber Piles around this area.
|tip It appears as a button on the screen.
step
label "Collect_Energized_Core"
kill Goblin Shredder##137915+
collect Energized Core##160595 |q 51720/1 |goto 50.00,37.89
step
label "Kill_Warfang_Lumberjacks"
kill 10 Warfang Lumberjack##135981 |q 51723/1 |goto 50.62,37.34
|tip Use the "Flamethrower" ability.
|tip It appears as a button on the screen. |notinsticky
step
talk Felecia Gladstone##138735
turnin Burn It All Down##51728 |goto 51.29,36.95
turnin Saw Dusted##51723 |goto 51.29,36.95
step
talk Prototype Shredder MK-03##138777
turnin Get Shredded##51720 |goto 51.25,36.72
step
talk Felecia Gladstone##138735
accept Eye for an Eye##51712 |goto 51.29,36.96
step
clicknpc Prototype Shredder MK-03##138904
Pilot the Prototype Shredder |q 51712/1 |goto 51.24,36.72
stickystart "Burn_Warfang_Buildings"
stickystart "Slay_Horde_Soldiers"
step
Follow the path up |goto 49.90,32.54 < 20 |only if walking
kill General Blackstone##138683 |q 51712/3 |goto 49.14,34.46
|tip Use the abilties on your action bar.
step
label "Burn_Warfang_Buildings"
Burn #8# Warfang Buildings |q 51712/2 |goto 50.17,32.61
|tip Use the "Flamethrower" ability on your action bar next to buildings around this area.
|tip The buildings you can burn can be seen on your minimap.
|tip They will appear on your minimap as yellow dots.
step
label "Slay_Horde_Soldiers"
Kill enemies around this area
|tip Use the abilties on your action bar.
Slay #30# Horde Soldiers |q 51712/4 |goto 50.17,32.61
step
Return to Felecia Gladstone |goto 51.29,36.96 < 10 |c |q 51712
step
Stop Piloting the Prototype Shredder |outvehicle |goto 51.29,36.96 |q 51712
|tip Click the yellow arrow on your action bar.
step
talk Felecia Gladstone##138735
turnin Eye for an Eye##51712 |goto 51.29,36.96
step
talk Matthew Gandorian##139635
|tip Inside the tent.
turnin WANTED: War Gore##52876 |goto 46.67,47.98
step
talk Maokka##136710
turnin A Turtle's Invitation##50797 |goto 40.72,45.70
step
talk Scrollsage Nola##135794
accept Cleaning Bills##51339 |goto 40.68,45.60
accept Swimming Lessons##51343 |goto 40.68,45.60
step
talk Toki##135795
accept Don't Play with Matches##51352 |goto 40.59,45.46
stickystart "Clean_Sandbills"
stickystart "Kill_Venture_Co_Oilers"
stickystart "Kill_Venture_Co_Firestarters"
step
click Tortollan Chest
collect Scroll of Harmonious Fins##160327 |q 51343/3 |goto 38.69,44.54
step
Enter the cave |goto 39.05,39.28 < 10 |walk
click Tortollan Chest
|tip Inside the cave.
collect Scroll of Endless Tides##160329 |q 51343/1 |goto 38.71,39.34
step
talk Scroll of Flight##137318
fpath Seekers Vista |goto 40.02,37.32
step
click Tortollan Chest
collect Scroll of Graceful Breaths##160270 |q 51343/2 |goto 34.34,36.42
step
label "Clean_Sandbills"
clicknpc Oily Sandbill Piper##137248+
|tip They look like dark colored birds on the ground around this area.
Clean #8# Sandbills |q 51339/1 |goto 36.28,38.40
step
label "Kill_Venture_Co_Oilers"
kill 2 Venture Co. Oiler##137065 |q 51352/2 |goto 36.28,38.40
step
label "Kill_Venture_Co_Firestarters"
kill 10 Venture Co. Firestarter##138093 |q 51352/1 |goto 36.28,38.40
step
talk Toki##135795
turnin Don't Play with Matches##51352 |goto 40.19,37.65
accept Make Loh Go##53369 |goto 40.19,37.65
step
talk Toki##135795
Tell him _"I am ready."_
Speak with Toki |q 53369/1 |goto 40.19,37.65
step
Guide Loh to the First Goal |q 53369/2
|tip Move Loh to the finish line marker in the middle of the piles of small boxes.
|tip Make sure Loh doesn't cross his own path.
|tip Use the abilities on your action bar.
step
Guide Loh Through All the Points Without Crossing His Own Path |q 53369/3
|tip Move Loh to the treasure chest, then the finish line marker.
|tip Make sure Loh doesn't cross his own path.
|tip Use the abilities on your action bar.
step
_Click the Completed Quest Box:_
|tip In the quest tracker area.
turnin Make Loh Go##53369
step
talk Scrollsage Nola##135794
turnin Cleaning Bills##51339 |goto 40.41,36.94
turnin Swimming Lessons##51343 |goto 40.41,36.94
accept Cave of Ai'twen##51353 |goto 40.41,36.94
step
Enter the underwater cave |goto 37.17,32.60 < 30 |walk |only if not (subzone("The Jeweled Coast") and _G.IsIndoors())
talk Loroja##137453
|tip Inside the underwater cave.
turnin Cave of Ai'twen##51353 |goto 35.68,31.24
accept Response Required##51221 |goto 35.68,31.24
accept Flavorable Offering##51371 |goto 35.68,31.24
stickystart "Collect_Seaweed"
step
Leave the underwater cave |goto 37.17,32.60 < 30 |walk |only if subzone("The Jeweled Coast") and _G.IsIndoors()
click Bot Buster Bomb
|tip Underwater.
accept Explosive Situation##51540 |goto 37.85,28.51
step
kill Lithia Costcutter's Shredder##141953
|tip She walks around this area in a metal shredder machine.
kill Lithia Costcutter##137055 |q 51221/1 |goto 36.95,29.46
|tip She appears after you kill her shredder.
step
click Bot Buster Bomb+
|tip They look like red spikey balls on the ground underwater around this area.
collect 5 Bot Buster Bomb##160397 |q 51540/1 |goto 38.26,28.29
step
label "Collect_Seaweed"
Kill enemies around this area
|tip Underwater.
click Seaweed+
|tip They look like tall stringy plants on the ground underwater around this area.
collect 50 Seaweed##160055 |q 51371/1 |goto 38.26,28.29
step
Enter the underwater cave |goto 37.17,32.60 < 30 |walk |only if not (subzone("The Jeweled Coast") and _G.IsIndoors())
talk Loroja##137453
|tip Inside the underwater cave.
turnin Response Required##51221 |goto 35.68,31.24
turnin Flavorable Offering##51371 |goto 35.68,31.24
turnin Explosive Situation##51540 |goto 35.68,31.24
accept I like Turtles##51427 |goto 35.68,31.24
accept Breaker Bad##51545 |goto 35.68,31.24
step
click Seaweed offering
|tip Inside the underwater cave.
Place the Offering |q 51427/1 |goto 35.71,31.01
step
talk Loroja##137453
|tip Inside the underwater cave.
turnin I like Turtles##51427 |goto 35.68,31.24
accept Deep Sea Venture##51220 |goto 35.68,31.24
step
talk Toki##137677
|tip Inside the underwater cave.
accept What's Yours is Mined##51222 |goto 35.74,31.31
stickystart "Steal_Mines"
stickystart "Kill_Venture_Co_Seawrenches"
step
Leave the underwater cave |goto 37.17,32.60 < 30 |walk |only if subzone("The Jeweled Coast") and _G.IsIndoors()
Destroy the Reef Breaker |q 51545/1 |goto 35.39,27.76
|tip Use the "Bot Cluster Bomb" ability on the metal machine.
|tip It appears as a button on the screen.
|tip If no button appears, you may have to abandon and re-accept the quest in the underwater cave.
step
label "Steal_Mines"
clicknpc Venture Co. Sea Mine##137482+
|tip They look like grey metal spikey balls floating on chains underwater around this area.
Steal #10# Sea Mines |q 51222/1 |goto 36.46,25.23
step
label "Kill_Venture_Co_Seawrenches"
kill 6 Venture Co. Seawrench##137544 |q 51220/1 |goto 36.46,25.23
|tip Underwater around this area.
step
talk Toki##137554
turnin Deep Sea Venture##51220 |goto 34.37,26.32
turnin What's Yours is Mined##51222 |goto 34.37,26.32
accept Battle Victorious##51386 |goto 34.37,26.32
step
clicknpc Ai'twen##137560
Mount Ai'twen |q 51386/1 |goto 34.33,25.95
step
Watch the dialogue
Kill enemies around this area
|tip They are on the boats and floating platforms in the water.
|tip Use the "Sea Mine Toss" ability on your action bar.
Slay #40# Venture Co. Forces |q 51386/2 |goto 38.12,23.91
step
Watch the dialogue
Return to Seekers' Vista |outvehicle |goto 40.10,35.49 |q 51386 |notravel
step
talk Toki##135795
turnin Battle Victorious##51386 |goto 40.20,37.65
step
Enter the underwater cave |goto 37.17,32.60 < 30 |walk |only if not (subzone("The Jeweled Coast") and _G.IsIndoors())
talk Loroja##137453
|tip Inside the underwater cave.
turnin Breaker Bad##51545 |goto 35.68,31.24
step
click Marie's Package
accept Undelivered Package##51218 |goto 38.47,63.03
step
talk Alexa Davenport##138180
fpath Millstone Hamlet |goto 30.75,66.56
step
Enter the building |goto 31.45,67.07 < 10 |walk
talk Carol Netley##143328
|tip Inside the building.
home Millstone Hamlet |goto 31.51,67.27 |q 50635 |future
step
Enter the building |goto 30.47,66.89 < 10 |walk
talk Marie Davenport##136658
|tip Inside the building.
turnin Undelivered Package##51218 |goto 30.34,66.81
accept Be A Dear##51214 |goto 30.34,66.81
step
click Water Bucket
Gather a Water Bucket |q 51214/1 |goto 30.67,67.60
step
click Bulletin Board
accept WANTED: Razorclaw Alpha##51204 |goto 30.69,68.14
step
talk Charles Davenport##136574
accept Aww, Rats!##51205 |goto 29.79,67.11
accept Basement Dwellers##51251 |goto 29.79,67.11
accept Gunpowder Plot##51492 |goto 29.79,67.11
step
click Logs
Gather Logs |q 51214/3 |goto 29.79,67.06
stickystart "Collect_Gunpowder"
step
use the Bug Zapper##159882
|tip Use it on Bilge Rats around this area.
clicknpc Bilge Rat##136686+
Collect #8# Bilge Rats |q 51205/1 |goto 28.15,66.36
step
label "Collect_Gunpowder"
kill Volatile Rat##137126+
collect 100 Gunpowder##159776 |q 51492/1 |goto 28.15,66.36
stickystart "Collect_Spider_Silk"
step
click Sack of Flour
|tip On the ground next to the cart.
Gather a Sack of Flour |q 51214/2 |goto 29.27,69.66
step
label "Collect_Spider_Silk"
kill Cellar Crawler##137000+
collect 8 Spider Silk##159839 |q 51251/1 |goto 28.88,69.25
step
talk Charles Davenport##136574
turnin Aww, Rats!##51205 |goto 29.79,67.11
turnin Basement Dwellers##51251 |goto 29.79,67.11
step
Enter the building |goto 30.19,66.71 < 10 |walk
talk Marie Davenport##136658
|tip Inside the building.
turnin Be A Dear##51214 |goto 30.34,66.81
turnin Gunpowder Plot##51492 |goto 30.34,66.81
accept Milking Goats##51215 |goto 30.34,66.81
step
talk Shepherd Milbrooke##136414
accept The Black Sheep##51200 |goto 31.86,69.52
accept Cry Wolf##51203 |goto 31.86,69.52
stickystart "Collect_Mountain_Goat_Milk"
stickystart "Kill_Feral_Razorclaws"
step
clicknpc Millie##136734
Rescue Millie |q 51200/1 |goto 26.54,75.35
step
Enter the cave |goto 28.00,77.92 < 15 |walk
kill Razorclaw Alpha##136417 |q 51204/1 |goto 28.03,79.73
|tip Inside the cave.
|tip If you have trouble, try to find help, or skip the quest.
step
label "Collect_Mountain_Goat_Milk"
clicknpc Mother Goat##136939+
|tip They look like larger white goats walking with small baby goats on the ground around this area.
collect 6 Mountain Goat Milk##159781 |q 51215/1 |goto 29.01,73.23
step
label "Kill_Feral_Razorclaws"
kill 10 Feral Razorclaw##136416 |q 51203/1 |goto 29.01,73.23
step
talk Shepherd Milbrooke##136414
turnin The Black Sheep##51200 |goto 31.86,69.52
turnin Cry Wolf##51203 |goto 31.86,69.52
turnin WANTED: Razorclaw Alpha##51204 |goto 31.86,69.52
step
talk Marie Davenport##136658
|tip Inside the building.
turnin Milking Goats##51215 |goto 30.33,66.81
accept Cookies and Cream##51335 |goto 30.33,66.81
step
click Dining Chair
|tip Inside the building.
Sit in Dining Chair |q 51335/1 |goto 30.37,66.92
step
Watch the dialogue
click Plate of Cookies
|tip Inside the building.
Eat the Cookies |q 51335/3 |goto 30.37,66.92
step
click Warm Goat Milk
|tip Inside the building.
Drink the Warm Goat Milk |q 51335/2 |goto 30.37,66.92
step
talk Marie Davenport##136658
|tip Inside the building.
turnin Cookies and Cream##51335 |goto 30.34,66.80
accept Ettin It Done##51207 |goto 30.34,66.80
accept Cookie Delivery##51504 |goto 30.34,66.80
stickystart "Slay_Ettins"
step
talk Charles Davenport##136574
turnin Cookie Delivery##51504 |goto 36.21,74.72
accept Wheat A Minute##51208 |goto 36.21,74.72
accept Mighty Grokkfist##51209 |goto 36.21,74.72
stickystart "Gather_Grain_Sacks"
step
use the Pack of Rats##160063
|tip It will summon a bunch of rats to help you fight.
kill Grokkfist##136420 |q 51209/1 |goto 38.78,72.02
|tip He walks around this area.
|tip On top of the mountain.
|tip He will appear on your minimap as a yellow dot.
step
label "Gather_Grain_Sacks"
click Grain Sack+
|tip They look like tan rectangle bags on the ground around this area.
Gather #10# Grain Sacks |q 51208/1 |goto 36.65,74.97
step
label "Slay_Ettins"
use the Flour Bomb##160052
|tip Use it on Ettin enemies around this area.
|tip It will damage them a lot.
Kill Ettin enemies around this area
Slay #8# Ettins |q 51207/1 |goto 36.65,74.97
step
talk Charles Davenport##136574
|tip Inside the building.
turnin Wheat A Minute##51208 |goto 30.42,66.92
turnin Mighty Grokkfist##51209 |goto 30.42,66.92
step
talk Marie Davenport##136658
|tip Inside the building.
turnin Ettin It Done##51207 |goto 30.33,66.80
step
talk Lieutenant Bauer##131002
turnin Trouble at Fort Daelin##49818 |goto 30.16,59.20
turnin Helping Out, Somewhere Else##52068 |goto 30.16,59.20
accept Freedom for the Sea##50614 |goto 30.16,59.20
accept A Bit of a Bind##50616 |goto 30.16,59.20
accept Caught in the Net##50621 |goto 30.16,59.20
stickystart "Free_Villagers"
stickystart "Kill_Bound_Seasurges"
step
kill Binder Sa'thress##134341 |q 50616/1 |goto 27.73,62.40
collect Songstone##156472 |q 50616/2 |goto 27.73,62.40
step
label "Free_Villagers"
Kill Zeth'jir enemies around this area
collect Fishbone Key##159752+ |n
click Naga Cage+
|tip They look like yellow cages on the ground around this area.
Free #5# Villagers |q 50621/1 |goto 27.85,61.24
step
label "Kill_Bound_Seasurges"
kill 6 Bound Seasurge##134340 |q 50614/1 |goto 27.85,61.24
step
talk Coxswain Hook##133576
|tip On top of the building.
accept Deadliest Cache: Reel Big Fish##50376 |goto 26.00,55.22
step
talk Coxswain Hook##133576
Ask him _"And then what happened?"_
Listen to Coxswain Hook's Tale |q 50376/1 |goto 26.00,55.22
step
Watch the dialogue
kill 12 Land Shark##133613 |q 50376/2 |goto 26.01,55.50
|tip Use the abilities on your action bar.
step
kill Tidemaw##133650
|tip Use the abilities on your action bar.
Slay the Land Shark Alpha |q 50376/3 |goto 26.34,52.69
step
Watch the dialogue
Return to Coxswain Hook |goto 26.00,55.38 < 7 |noway |c |q 50376
|tip You will be transported automatically.
step
talk Coxswain Hook##133576
turnin Deadliest Cache: Reel Big Fish##50376 |goto 26.00,55.22
step
talk Master Gunner Line##133577
accept Deadliest Cache: Gun Fishin'##50391 |goto 25.90,55.17
step
talk Master Gunner Line##133577
Ask him _"And then what happened?"_
Listen to Master Gunner Line's Tale |q 50391/1 |goto 25.90,55.17
step
Watch the dialogue
click Slagshot Slammer
Gather the Fishin' Rod |q 50391/2 |goto 25.92,55.18
stickystart "Kill_Drowned_Horrors"
step
click Slagshot Fishflayer+
|tip They look like metal cannons on the wooden docks around this area.
|tip They will appear on your minimap as yellow dots.
Create #3# Mountains of Fish |q 50391/3 |goto 25.60,54.81
step
label "Kill_Drowned_Horrors"
kill 25 Drowned Horror##140524 |q 50391/4 |goto 25.60,54.81
|tip Use the abilities on your action bar.
step
kill 4 Writhing Horror##133792 |q 50391/5 |goto 25.87,54.47
|tip They are in the water.
|tip Use the abilties on your action bar.
step
kill Ozumat##133797 |q 50391/6 |goto 25.87,54.47
|tip It is further out in the water.
|tip Use the ability on your action bar.
step
Watch the dialogue
Return to Master Gunner Line |goto 26.00,55.38 < 7 |noway |c |q 50391
|tip You will be transported automatically.
step
talk Master Gunner Line##133577
turnin Deadliest Cache: Gun Fishin'##50391 |goto 25.90,55.17
step
talk "Sinker"##133578
accept Deadliest Cache: Sink and Swim##50418 |goto 25.84,55.23
step
talk "Sinker"##133578
Ask him _"And then what happened?"_
Mph Mph |q 50418/1 |goto 25.84,55.23
step
Watch the dialogue
Mph, Mph Mph Mph |q 50418/2 |goto 25.97,55.14
|tip Use the ability on your action bar.
step
clicknpc Experimental Tideskipper##140818
|tip Underwater.
Mph Mph Mph |q 50418/3 |goto 25.54,52.84
stickystart "Slay_Mph_Mph_Mph"
step
Destroy the Western Mph |q 50418/5 |goto 22.83,50.24
|tip Use the "Bombs Away!" ability on your action bar next to the Abyssal Idol.
|tip It looks like a tall rock underwater.
step
Destroy the Southern Mph |q 50418/6 |goto 25.39,48.29
|tip Use the "Bombs Away!" ability on your action bar next to the Abyssal Idol.
|tip It looks like a tall rock underwater.
step
Destroy the Eastern Mph |q 50418/7 |goto 23.50,46.35
|tip Use the "Bombs Away!" ability on your action bar next to the Abyssal Idol.
|tip It looks like a tall rock underwater.
step
label "Slay_Mph_Mph_Mph"
Kill enemies around this area
|tip Underwater.
|tip Use the abilities on your action bar.
Slay #15# Mph Mph Mph |q 50418/4 |goto 23.85,46.86
step
Watch the dialogue
Return to "Sinker" |goto 25.97,55.33 < 7 |noway |c |q 50418
|tip You will be transported automatically.
step
talk "Sinker"##133578
turnin Deadliest Cache: Sink and Swim##50418 |goto 25.84,55.24
step
talk Coxswain Hook##133576
accept Deadliest Cache: Carpe Diem##52130 |goto 26.01,55.22
step
talk Coxswain Hook##133576
Ask him _"And then what happened?"_
Listen to Coxswain Hook's Tale |q 52130/1 |goto 26.01,55.22
step
Watch the dialogue
click Signal Fire
Light the Southern Signal Fire |q 52130/3 |goto 25.04,54.26
step
click Signal Fire
Light the Northern Signal Fire |q 52130/2 |goto 26.34,52.81
step
click Spyglass
|tip On the upper level of the dock.
Watch the dialogue
Scan the Horizon |q 52130/4 |goto 26.26,54.58
step
Make the Final Stand |q 52130/5 |goto 26.26,54.58
|tip Use the ability on your action bar.
step
Watch the dialogue
Jump Down Barathruum's Gullet |q 52130/6 |goto 26.26,54.58
Cut Up Barathruum from the Inside Out |q 52130/7 |goto 26.26,54.58
Earn Eternal Honor and Glory |q 52130/8 |goto 26.26,54.58
step
Watch the dialogue
Return to Coxswain Hook |goto 26.00,55.38 < 7 |noway |c |q 52130
|tip You will be transported automatically.
step
talk Coxswain Hook##133576
turnin Deadliest Cache: Carpe Diem##52130 |goto 26.00,55.22
step
talk Lieutenant Bauer##131002
turnin Freedom for the Sea##50614 |goto 30.16,59.20
turnin A Bit of a Bind##50616 |goto 30.16,59.20
turnin Caught in the Net##50621 |goto 30.16,59.20
accept The Shifting Tides##50635 |goto 30.16,59.20
step
talk Rikal##131014
turnin The Shifting Tides##50635 |goto 35.02,47.67
accept Eeling in a Big One##50645 |goto 35.02,47.67
accept Filching from Thieves##50649 |goto 35.02,47.67
step
talk Specialist Wembley##131003
accept Facing the Invaders##50644 |goto 34.58,47.16
accept Reclaiming our Defenses##50653 |goto 34.58,47.16
step
talk Misty Koret##138193
fpath Fort Daelin |goto 34.28,47.23
stickystart "Collect_Tide_Beacons"
stickystart "Collect_Abyssal_Fangs"
stickystart "Slay_Northern_Naga_Forces"
step
clicknpc Stranded Battalion Soldier##131409+
|tip They look like human soldiers kneeling and floating while kicking their legs on the ground around this area.
|tip You can find more downstairs on the beaches around this area.
Save #8# Battalion Soldiers |q 50653/1 |goto 33.34,43.37
step
label "Collect_Tide_Beacons"
click Tidal Beacon+
|tip They look like small metal lanterns sitting in blue circles on the ground around this area.
|tip You can find more downstairs on the beaches around this area. |notinsticky
collect 7 Tidal Beacon##158183 |q 50649/1 |goto 33.34,43.37
step
label "Collect_Abyssal_Fangs"
kill Abyssal Eel##129980+
|tip You can find more downstairs on the beaches around this area. |notinsticky
collect 16 Abyssal Fang##158181 |q 50645/1 |goto 33.34,43.37
step
label "Slay_Northern_Naga_Forces"
Kill Zeth'jir enemies around this area
|tip Zeth'jir Attackers will not count for this quest goal.
|tip You can find more downstairs on the beaches around this area. |notinsticky
Slay #15# Northern Naga Forces |q 50644/1 |goto 33.34,43.37
step
talk Specialist Wembley##131003
|tip Up in the fort.
turnin Facing the Invaders##50644 |goto 34.58,47.16
turnin Reclaiming our Defenses##50653 |goto 34.58,47.16
accept Any Ammo Will Do##50672 |goto 34.58,47.16
accept Piercing the Shield##50679 |goto 34.58,47.16
accept Problem Solving with Gunpowder##50698 |goto 34.58,47.16
step
talk Rikal##131014
turnin Eeling in a Big One##50645 |goto 35.02,47.67
turnin Filching from Thieves##50649 |goto 35.02,47.67
accept You're a Shark##50773 |goto 35.02,47.67
step
talk Rikal##131014
Tell him _"Start casting the spell, Rikal."_ |goto 35.02,47.67
Become a Shark |complete subzone("Eventide Trench") |goto 27.73,34.47 |q 50773
step
kill 20 Zeth'jir Attacker##141263 |q 50773/1 |goto 26.80,35.74
|tip Underwater.
|tip Swim into them to kill them.
step
Return to Fort Daelin |complete subzone("Fort Daelin") |q 50773
step
talk Rikal##131014
turnin You're a Shark##50773 |goto 35.01,47.68
stickystart "Arm_Explosive_Traps"
stickystart "Collect_Zethjir_Harpoons"
step
kill Zeth'jir Seacaller##130824+
|tip You can find more downstairs on the beach.
collect Zeth'jir Channeling Rod##158200 |q 50679/1 |goto 31.00,47.36
step
label "Arm_Explosive_Traps"
click Live Explosive Trap+
|tip They look like small spikey balls on the ground around this area.
|tip You can find more downstairs on the beach. |notinsticky
Arm #5# Explosive Traps |q 50698/1 |goto 31.00,47.36
step
label "Collect_Zethjir_Harpoons"
kill Shoalbreach Lance##129972+
click Zeth'jir Harpoon+
|tip They look like harpoons stuck in the ground and in walls around this area.
|tip You can find more downstairs on the beach. |notinsticky
collect 20 Zeth'jir Harpoon##156482 |q 50672/1 |goto 31.00,47.36
step
talk Specialist Wembley##131003
|tip Up in the fort.
turnin Any Ammo Will Do##50672 |goto 34.58,47.16
turnin Piercing the Shield##50679 |goto 34.58,47.16
turnin Problem Solving with Gunpowder##50698 |goto 34.58,47.16
accept A Snake with Three Heads##50705 |goto 34.58,47.16
accept Clearing the Delta##50706 |goto 34.58,47.16
stickystart "Slay_Zethjir_Forces"
step
use Zeth'jir Channeling Rod##158332
|tip Use it on Binder Ser'less.
kill Binder Ser'less##134809 |q 50705/2 |goto 32.64,53.96
step
use Zeth'jir Channeling Rod##158332
|tip Use it on Lady Rash'iss.
kill Lady Rash'iss##134401 |q 50705/1 |goto 32.14,55.03
step
use Zeth'jir Channeling Rod##158332
|tip Use it on Binder Nalashj.
kill Binder Nalashj##134813 |q 50705/3 |goto 32.68,55.97
step
label "Slay_Zethjir_Forces"
Kill Zeth'jir enemies around this area
Slay #15# Zeth'jir Forces |q 50706/1 |goto 31.32,54.72
step
talk Commander Kellam##131000
|tip On the bridge.
turnin A Snake with Three Heads##50705 |goto 34.11,54.87
turnin Clearing the Delta##50706 |goto 34.11,54.87
accept From the Depths##49831 |goto 34.11,54.87
step
Watch the dialogue
click Cannon+
|tip There will be yellow timers above them that count down to when they are ready to shoot again.
|tip Keep clicking them until the enemy dies.
kill Pride of Azshara##131199 |q 49831/1 |goto 33.93,54.77
step
talk Commander Kellam##131000
turnin From the Depths##49831 |goto 34.11,54.87
accept Back to Brennadam##49908 |goto 34.11,54.87
step
Enter the building |goto 58.76,70.46 < 10 |walk
talk Mayor Roz##134752
|tip Inside the building.
turnin WANTED: Thundersnout##49730 |goto 58.63,70.43
turnin A Question of Quillpower##50640 |goto 58.63,70.43
step
talk Squire Augustus III##131004
turnin Back to Brennadam##49908 |goto 59.51,69.95
step
talk Brother Pike##130714
turnin House Stormsong##49703 |goto 63.43,64.76
accept Unnecessary Duress##49705 |goto 63.43,64.76
accept Proclamation Investigation##49706 |goto 63.43,64.76
step
talk Taelia##130715
accept Haywire Harvesters##49704 |goto 63.46,64.94
stickystart "Rejuvenate_Laborers"
stickystart "Collect_Drenched_Mainspring"
step
click Stormsong Proclamation+
|tip They look like paper scrolls nailed to the sides of objects and buildings around this area.
Read #3# Stormsong Proclamations |q 49706/1 |goto 62.23,64.54
step
label "Rejuvenate_Laborers"
use the Imbued Tidewater##155893
|tip Use it near Exhausted Laborers around this area.
Rejuvenate #8# Laborers |q 49705/1 |goto 62.23,64.54
step
label "Collect_Drenched_Mainspring"
kill Rewired Harvester##130131+
collect Drenched Mainspring##155829 |q 49704/1 |goto 62.23,64.54
step
talk Brother Pike##130714
turnin Unnecessary Duress##49705 |goto 63.43,64.76
turnin Proclamation Investigation##49706 |goto 63.43,64.76
step
talk Taelia##130715
turnin Haywire Harvesters##49704 |goto 63.46,64.94
accept The Rising Tide##49794 |goto 63.46,64.94
step
talk Brother Pike##130714
accept Lost, Not Forgotten##49791 |goto 63.42,64.76
accept Means to an End##49793 |goto 63.42,64.76
stickystart "Recover_Souls"
step
talk Samuel Williams##130904
accept Forced Labor##49887 |goto 64.60,62.11
step
clicknpc Anchor of Binding##131124
Free Samuel Williams |q 49887/1 |goto 64.70,62.09
step
Watch the dialogue
talk Samuel Williams##130904
turnin Forced Labor##49887 |goto 64.60,62.11
accept Bound and Oppressed##49792 |goto 64.60,62.11
stickystart "Destroy_Anchors_Of_Binding"
step
kill Sister Ava##130952 |q 49794/1 |goto 65.56,60.74
|tip On the deck of the ship.
step
click Wavecaller's Mantle
Recover the Wavecaller's Mantle |q 49793/3 |goto 66.87,60.61
step
click Abyssal Beacon
Recover the Abyssal Beacon |q 49793/2 |goto 64.75,57.89
step
click Tidal Kris
Recover the Tidal Kris |q 49793/1 |goto 63.25,59.54
step
label "Destroy_Anchors_Of_Binding"
clicknpc Anchor of Binding##130895+
|tip They look like large metal vases with water bubbling out of the top of them on the ground around this area.
Destroy #8# Anchors of Binding |q 49792/1 |goto 65.80,59.26
step
label "Recover_Souls"
Kill enemies around this area
use the Dead Ringer##155919
|tip Use it next to their corpses.
|tip It will only work on human enemies.
Recover #12# Souls |q 49791/1 |goto 65.80,59.26
step
_Next to you:_
talk Brother Pike
turnin Lost, Not Forgotten##49791
turnin Means to an End##49793
step
click Help Wanted
accept Make it Mildenhall##51582 |goto 66.35,57.23
step
talk Taelia##131249
turnin The Rising Tide##49794 |goto 66.49,56.51
step
talk Samuel Williams##131248
turnin Bound and Oppressed##49792 |goto 66.49,56.44
step
talk Brother Pike##130714
accept Rest in the Depths##49975 |goto 66.34,56.51
step
use the Dead Ringer##157859
Watch the dialogue
Release the Souls |q 49975/1 |goto 66.34,56.51
step
talk Brother Pike##130714
turnin Rest in the Depths##49975 |goto 66.34,56.51
step
talk Taelia##131249
accept Rearmament##49996 |goto 66.50,56.52
step
talk Samuel Williams##131248
accept Fabricated Fabrications##49995 |goto 66.49,56.44
step
click Charred Note
accept The Missing Link##50139 |goto 68.70,54.40
stickystart "Collect_Stormfused_Weapons"
stickystart "Collect_Warship_Blueprints"
step
kill Tideguard Pontus##132163
collect Architect's Cipher##156629 |q 50139/1 |goto 70.16,49.92
step
label "Collect_Stormfused_Weapons"
click Tidal Blade+
|tip They look like swords laying on objects and on the ground around this area.
click Harpoons+
|tip They look like groups of spears leaning on wooden racks on the ground around this area.
click Abyssal Spear+
|tip They look like pointed poles leaning on objects on the ground around this area.
click Thundershot Rifle+
|tip They look like wooden and metal rifles sitting on objects on the ground around this area.
collect 12 Stormfused Weapon##156609 |q 49996/1 |goto 69.75,51.08
step
label "Collect_Warship_Blueprints"
Kill enemies around this area
collect 8 Warship Blueprint##156607 |q 49995/1 |goto 69.75,51.08
step
talk Samuel Williams##131248
turnin Fabricated Fabrications##49995 |goto 66.49,56.44
turnin The Missing Link##50139 |goto 66.49,56.44
step
talk Taelia##131249
turnin Rearmament##49996 |goto 66.49,56.51
step
talk Brother Pike##130714
accept Storm's Judgment##49997 |goto 66.34,56.51
step
talk Brother Pike##132173
Tell him _"I am ready."_
Speak to Brother Pike |q 49997/1 |goto 69.28,58.71
step
Watch the dialogue
Kill the enemies that attack in waves
kill Riptide##132171
Confront Wavespeaker Reid |q 49997/2 |goto 70.19,57.90
step
talk Colony Caretaker##142060
fpath Mildenhall Meadery |goto 68.54,64.99
step
talk Ancel Mildenhall##131793
turnin Make it Mildenhall##51582 |goto 68.88,65.16
accept Mayhem at Mildenhall Meadery##50343 |goto 68.88,65.16
step
Investigate the Meadery |q 50343/1 |goto 68.45,67.47
step
_Next to you:_
talk Ancel Mildenhall
turnin Mayhem at Mildenhall Meadery##50343
accept Detective Mildenhall##50070
accept Cleanup Duty##50359
stickystart "Kill_Flowing_Honey"
stickystart "Kill_Bubbling_Mead"
step
click Honey Soaked Boot
Find the Clue |q 50070/1 |goto 68.52,69.00 |count 1
step
click Brewmaster's Treatise Vol. 1
Find the Clue |q 50070/1 |goto 69.16,69.34 |count 2
step
click Misplaced Flask
Find the Clue |q 50070/1 |goto 67.92,70.94 |count 3
step
click Rough Map
Find the Clue |q 50070/1 |goto 69.24,70.77 |count 4
step
click Crystalized Honey Fragment
|tip Inside the building.
Find the Clue |q 50070/1 |goto 70.83,69.67 |count 5
step
label "Kill_Flowing_Honey"
kill 4 Flowing Honey##131663 |q 50359/1 |goto 70.34,69.46
step
label "Kill_Bubbling_Mead"
kill 4 Bubbling Mead##133429 |q 50359/2 |goto 70.34,69.46
step
_Next to you:_
talk Ancel Mildenhall
turnin Detective Mildenhall##50070
turnin Cleanup Duty##50359
accept Don't Go in the Basement##50064
step
Enter the cellar outside the building |goto 70.75,69.13 < 7 |walk
click Mead Barrel
|tip Underground inside the cellar.
|tip You will be attacked.
Examine Mead Barrel |q 50064/1 |goto 70.82,69.07
step
kill The Brue##131861 |q 50064/2 |goto 70.82,69.07
|tip Underground inside the cellar.
step
talk Ancel Mildenhall##132647
|tip Underground inside the cellar.
turnin Don't Go in the Basement##50064 |goto 71.05,69.24
accept Recovering Raimond##50161 |goto 71.05,69.24
step
click Honey Soaked Boot
collect Sticky Boot##156717 |q 50161/1 |goto 71.63,67.98 |count 2
step
click Discarded Pages
collect Journal Pages##156808 |q 50161/2 |goto 72.42,68.64 |count 1
step
click Discarded Pages
collect Journal Pages##156808 |q 50161/2 |goto 72.32,70.56 |count 2
step
click Discarded Pages
collect Journal Pages##156808 |q 50161/2 |goto 73.37,72.27 |count 3
step
Enter the cave |goto 73.83,72.44 < 10 |walk
talk Raimond Mildenhall##132292
|tip Inside the cave.
turnin Recovering Raimond##50161 |goto 74.13,72.74
accept Royal Succession##50168 |goto 74.13,72.74
accept Sticky Situation##50162 |goto 74.13,72.74
stickystart "Collect_Royal_Jelly"
step
Enter the cave |goto 74.62,71.07 < 10 |walk
kill Hive Mother##132341
|tip Inside the cave.
collect Hive Mother's Stinger##157839 |q 50168/1 |goto 74.81,71.51
step
label "Collect_Royal_Jelly"
Kill enemies around this area
click Bee Hive+
|tip They look like small rope huts wih handles on top of them sitting on wooden boxes on the ground around this area.
collect 60 Royal Jelly##156709 |q 50162/1 |goto 73.52,69.77
step
Enter the cave |goto 73.81,72.44 < 10 |walk
talk Raimond Mildenhall##132292
|tip Inside the cave.
turnin Royal Succession##50168 |goto 74.13,72.74
turnin Sticky Situation##50162 |goto 74.13,72.74
accept Honey Glazed Sam##50504 |goto 74.13,72.74
step
clicknpc Sam Robinson##134013
Rescue Sam Robinson |q 50504/1 |goto 72.80,72.25
step
talk Sam Robinson##134028
turnin Honey Glazed Sam##50504 |goto 72.80,72.25
accept Free the Farmhands##50264 |goto 72.80,72.25
accept Fetching Wrex##50493 |goto 72.80,72.25
step
_Next to you:_
talk Raimond Mildenhall
accept The Bee Team##50165
accept Wendigo Away##50534
stickystart "Rescue_Wrex"
stickystart "Rescue_Honey_Encased_Farmhands"
stickystart "Slay_Highlands_Maulers"
step
Enter the cave |goto 66.91,77.82 < 15 |walk
use the Bee Pheromones##157851
|tip Use it on Bonerender inside the cave.
kill Bonerender##131537 |q 50534/1 |goto 65.87,79.43
step
_Next to you:_
talk Raimond Mildenhall
turnin Wendigo Away##50534
step
label "Rescue_Wrex"
click Crystallized Honey+
|tip They look like big yellow rocks on the ground inside the caves around this area.
|tip He will eventually be in one of them, it's random.
|tip They will appear on your minimap as yellow dots.
Rescue Wrex |q 50493/1 |goto 68.44,74.73
step
label "Rescue_Honey_Encased_Farmhands"
clicknpc Honey Encased Farmhand##133154+
|tip They look like people frozen in yellow globs on the ground around this area.
Rescue #8# Honey Encased Farmhands |q 50264/1 |goto 68.44,74.73
step
label "Slay_Highlands_Maulers"
use the Bee Pheromones##157851
|tip Use it on Honey-Crazed Maulers around this area.
Kill Mauler enemies around this area
Slay #12# Highlands Maulers |q 50165/1 |goto 68.44,74.73
step
_Next to you:_
talk Raimond Mildenhall
turnin Free the Farmhands##50264
turnin Fetching Wrex##50493
turnin The Bee Team##50165
accept Back to the Lab##50553
step
Enter the cellar outside the building |goto 70.75,69.13 < 7 |walk
talk Raimond Mildenhall##133204
|tip Underground inside the cellar.
turnin Back to the Lab##50553 |goto 71.00,69.23
step
talk Brother Pike##130714
turnin Storm's Judgment##49997 |goto 66.31,56.48
accept Voices Below##49998 |goto 66.31,56.48
step
talk Brother Pike##134642
|tip On the bridge.
Ask him _"What is it?"_
Watch the dialogue
Investigate the Omen |q 49998/1 |goto 66.42,50.65
step
talk Sister Alison##142634
home Tidecross |goto 65.47,48.30
step
talk Marla Featherfoot##134696
fpath Tidecross |goto 65.57,48.00
step
talk Brother Pike##134639
turnin Voices Below##49998 |goto 66.17,47.45
accept Beneath the Veil##50594 |goto 66.17,47.45
step
talk Taelia##134623
accept No Quarter##50595 |goto 66.31,47.09
stickystart "Accept_A_Bloody_Mess"
stickystart "Slay_Skeletons"
stickystart "Kill_Tidesage_Seacallers"
step
use the Abyssal Beacon##158211
|tip Use it on the Writhing Grasp.
Dispel the Southern Grasp |q 50594/1 |goto 67.43,44.36
step
label "Accept_A_Bloody_Mess"
Kill enemies around this area
accept A Bloody Mess##50593 |goto 67.00,44.83
|tip You will eventually automatically accept this quest after looting.
stickystart "Collect_Tideblood"
step
use the Abyssal Beacon##158211
|tip Use it on the Writhing Grasp.
Dispel the Western Grasp |q 50594/2 |goto 66.00,41.80
step
use the Abyssal Beacon##158211
|tip Use it on the Writhing Grasp.
Dispel the Eastern Grasp |q 50594/3 |goto 67.66,42.32
step
label "Collect_Tideblood"
kill Frothing Tideblood##130116+
click Sealed Tideblood+
|tip They look like wooden barrels on the ground around this area.
collect 20 Tideblood |q 50593/1 |goto 66.91,42.06
step
label "Slay_Skeletons"
Kill enemies around this area
|tip Only enemies that look like skeletons will count for this quest goal.
Slay #8# Skeletons |q 50595/1 |goto 66.91,42.06
step
label "Kill_Tidesage_Seacallers"
kill 4 Tidesage Seacaller##130094 |q 50595/2 |goto 66.91,42.06
step
talk Taelia##134623
turnin No Quarter##50595 |goto 66.31,47.09
step
talk Brother Pike##134639
turnin Beneath the Veil##50594 |goto 66.17,47.45
turnin A Bloody Mess##50593 |goto 66.17,47.45
accept Forbidden Rites##50608 |goto 66.17,47.45
accept Gathering Storm##50610 |goto 66.17,47.45
step
talk Taelia##134623
accept From the Maw of Madness##50609 |goto 66.31,47.10
stickystart "Place_Focusing_Rods"
stickystart "Disrupt_Rituals"
stickystart "Slay_Kthir"
step
Find Samuel Williams |q 50609/1 |goto 66.56,43.73
|tip Upstairs inside the ship.
step
Watch the dialogue
kill Brother Halsey##134999 |q 50609/2 |goto 66.51,43.48
|tip Inside the ship.
step
kill Samuel Williams##134983
|tip Inside the ship.
|tip He will eventually surrender.
Save Samuel Williams |q 50609/3 |goto 66.37,43.50
step
label "Place_Focusing_Rods"
click Focusing Rod+
|tip They look like golden swirling shaped statues around this area inside the ship.
Place #4# Focusing Rods |q 50610/1 |goto 67.43,43.53
step
label "Disrupt_Rituals"
use the Tidal Kris##158465
|tip Use it next to Fanatical Acolytes around this area.
|tip They look like humans kneeling on purple flaming runes on the ground around this area on the ship.
Disrupt #6# Rituals |q 50608/2 |goto 67.43,43.53
step
label "Slay_Kthir"
Kill enemies around this area
|tip On the ship.
Slay #15# K'thir |q 50608/1 |goto 67.43,43.53
step
talk Samuel Williams##134641
turnin From the Maw of Madness##50609 |goto 66.02,47.11
step
talk Brother Pike##134639
turnin Forbidden Rites##50608 |goto 66.16,47.45
turnin Gathering Storm##50610 |goto 66.16,47.45
accept Storm's Vengeance##50611 |goto 66.16,47.45
step
Watch the dialogue
|tip Use the "Thundering Blast" ability.
|tip It appears as a button on the screen.
Destroy the Abyssal Melody |q 50611/1 |goto 66.17,47.26
step
talk Brother Pike##134639
turnin Storm's Vengeance##50611 |goto 66.17,47.45
accept A House Divided##50612 |goto 66.17,47.45
step
talk Brother Pike##135534
turnin A House Divided##50612 |goto 63.16,43.15
accept The Storm Awakens##50777 |goto 63.16,43.15
step
talk Samuel Williams##136053
accept Twisted Intentions##50778 |goto 63.10,43.16
stickystart "Rally_Defectors"
step
talk Tideguard Victoria##135517
accept Oathbound##50780 |goto 60.89,41.38
step
kill Bound Tempest##135457 |q 50778/1 |goto 59.91,41.39
|tip Attack the Drowned Acendants channeling on him to be able to attack him.
step
Enter the building |goto 59.82,39.87 < 10 |walk
click Rod of Tides
Claim the Rod of Tides |q 50780/1 |goto 59.14,38.71
step
Kill the enemies that attack
click Rod of Tides
collect Rod of Tides##159157 |q 50780/2 |goto 59.14,38.71
step
kill Enthralled Tidefury##135506 |q 50778/2 |goto 61.76,38.08
|tip Attack the Drowned Hierarchs channeling on him to be able to attack him.
step
label "Rally_Defectors"
click Locked Door+
|tip They look like wooden front doors of buildings around this area.
talk Friendly NPC's around this area
|tip The ones inside buildings will appear on your minimap as yellow dots.
Tell them _"The storm awakens."_
Also tell them _"We can still stop Lord Stormsong."_
Also tell them _"The Storm's Wake grows. Are you with us?"_
Rally #12# Defectors |q 50777/1 |goto 60.72,38.15
step
talk Taelia##136498
turnin The Storm Awakens##50777 |goto 60.03,37.89
turnin Twisted Intentions##50778 |goto 60.03,37.89
accept The Abyssal Council##50783 |goto 60.03,37.89
step
Enter the building |goto 58.71,36.14 < 10 |walk |only if not subzone("Wavespeaker's Sanctum")
kill Wavespeaker Reid##135985 |q 50783/1 |goto 58.21,35.40
|tip Inside the building.
step
Leave the building |goto 58.71,36.14 < 10 |walk |only if subzone("Wavespeaker's Sanctum")
talk Tideguard Victoria##136497
turnin Oathbound##50780 |goto 61.80,36.29
step
talk Taelia##136339
turnin The Abyssal Council##50783 |goto 61.76,36.25
step
talk Tideguard Victoria##136497
accept Eye of the Storm##50784 |goto 61.80,36.29
step
talk Tideguard Victoria##136497
Tell her _"I am ready."_
Watch the dialogue
Begin Following Tideguard Victoria |goto 61.80,36.29 > 10 |c |q 50784
step
Watch the dialogue
|tip Follow Tideguard Victoria and protect her as she walks.
|tip She eventually walks to this location.
Escort Tideguard Victoria |q 50784/1 |goto 67.41,35.25
step
click Whirling Torrent
Take the Whirling Torrent |q 50784/2 |goto 67.86,35.38
step
talk Brother Pike##136933
turnin Eye of the Storm##50784 |goto 69.90,36.12
accept A Bridge Too Far##50781 |goto 69.90,36.12
step
Watch the dialogue
|tip Use the "Rod of Tides" ability.
|tip It appears as a button on the screen.
Open the Path of Storms |q 50781/1 |goto 70.17,36.08
step
talk Brother Pike##136933
turnin A Bridge Too Far##50781 |goto 70.32,36.14
accept Lost and Forgotten##51278 |goto 70.32,36.14
accept Sealed Fate##51320 |goto 70.32,36.14
stickystart "Fill_The_Dead_Ringer"
step
click Tidemother's Wrath
Destroy the Tidemother's Wrath |q 51320/1 |goto 74.87,35.97
step
click Tidemother's Radiance
Destroy the Tidemother's Radiance |q 51320/2 |goto 71.56,30.28
step
click Tidemother's Pride
Destroy the Tidemother's Pride |q 51320/3 |goto 73.41,30.19
step
_Next to you:_
talk Brother Pike
turnin Sealed Fate##51320
step
label "Fill_The_Dead_Ringer"
Kill enemies around this area
|tip Fill the bar in the quest tracker area.
Fill the Dead Ringer |q 51278/1 |goto 72.93,31.11
step
_Next to you:_
talk Brother Pike
turnin Lost and Forgotten##51278
accept The Final Ascent##51319
step
use the Dead Ringer##160056
|tip Next to the door.
Watch the dialogue
Open the Tempest Gate |q 51319/1 |goto 74.20,30.69
step
talk Brother Pike##137506
|tip Follow your allies through the building and up the mountain.
turnin The Final Ascent##51319 |goto 75.61,27.05
accept Storm's End##50824 |goto 75.61,27.05
step
Watch the dialogue
kill Azshj'thul the Drowned##137197 |q 50824/1 |goto 76.62,29.38
step
talk Brother Pike##137691
turnin Storm's End##50824 |goto 78.33,28.77
accept Shrine of the Storm: Whispers Below##50825 |goto 78.33,28.77
step
talk Taelia##137692
accept A New Dawn##50733 |goto 78.33,28.87
step
talk Galeheart##137693
fpath Shrine of the Storm |goto 78.32,29.01
step
Enter the building |goto Boralus/0 68.84,21.15 < 10 |walk
talk Taelia##121235
|tip Inside the building.
turnin A New Dawn##50733 |goto Boralus/0 68.15,21.99
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Mechagon Island\\Mechagon Island",{
author="support@zygorguides.com",
description="\nThis guide will walk you through establishing a foothold with the Rustbolt Resistance and fortifying its position.",
condition_suggested=function() return level >= 50 end,
condition_end=function() return completedq(56305) end,
},[[
step
Complete the "A Tempered Blade" Quest |condition completedq(56156) |or
|tip Use the "Nazjatar" leveling guide to accomplish this.
Click Here to Open the "Nazjatar" Leveling Guide |loadguide "Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Nazjatar\\Nazjatar"
step
talk Gila Crosswires##156179
accept Fame Waits for Gnome One##57009 |goto Nazjatar/0 39.97,55.20
step
talk Tinkmaster Overspark##150208
turnin Fame Waits for Gnome One##57009 |goto Boralus/0 67.22,15.76
accept The Legend of Mechagon##54088 |goto 67.22,15.76
step
Cross the bridge |goto Tiragarde Sound/0 59.40,59.73 < 20 |only if walking
Follow the path up |goto 61.97,57.77 < 20 |only if walking
Continue following the path |goto 63.92,60.82 < 20 |only if walking
talk Tinkmaster Overspark##149864
turnin The Legend of Mechagon##54088 |goto 65.59,65.02
accept Looking Inside##55040 |goto 65.59,65.02
step
click Vault Door |goto 65.58,65.14
Watch the dialogue
Enter the Vault |q 55040/1 |goto 65.82,66.36
step
talk Tinkmaster Overspark##149877
|tip Inside the vault.
turnin Looking Inside##55040 |goto 65.82,66.36
accept Let's Get It Started##54945 |goto 65.82,66.36
step
click Gear Controls
|tip Inside the vault.
Repair the Gears |q 54945/1 |goto 65.66,66.51
step
click Electrode
|tip Inside the vault.
Activate Electrode |q 54945/2 |goto 66.02,65.83
step
click Alpha Wire
|tip Inside the vault.
Grab the Alpha Wire |havebuff 136101 |goto 66.04,65.84 |q 54945
step
click Alpha Pylon
|tip Inside the vault.
Attach the Alpha Wire to Alpha Pylon |q 54945/3 |goto 66.14,66.25
step
click Beta Wire
|tip Inside the vault.
Grab the Beta Wire |havebuff 136101 |goto 66.00,65.81 |q 54945
step
click Beta Pylon
|tip Inside the vault.
Attach the Beta Wire to Beta Pylon |q 54945/4 |goto 65.92,66.45
step
talk Tinkmaster Overspark##149877
|tip Inside the vault.
turnin Let's Get It Started##54945 |goto 65.82,66.37
accept You Must be This Height##54087 |goto 65.82,66.37
step
talk Tinkmaster Overspark##149877
|tip Inside the vault.
Tell him _"I'm ready. Activate the device."_
Speak with Tinkmaster Overspark |q 54087/1 |goto 65.82,66.37
step
Watch the dialogue
Discover the Purpose of the Device |q 54087/2
step
click Tri-dimensional Coordinates##325907
|tip Inside the vault.
collect Tri-dimensional Coordinates##167039 |q 54087/3 |goto 65.89,66.46
step
talk Tinkmaster Overspark##149877
|tip Inside the vault.
turnin You Must be This Height##54087 |goto 65.82,66.37
accept Report to Gila##54946 |goto 65.82,66.37
step
talk Gila Crosswires##151100
turnin Report to Gila##54946 |goto Boralus/0 67.23,15.93
accept A Small Team##54947 |goto 67.23,15.93
step
Run down the stairs |goto 66.28,19.77 < 20 |only if walking
click Climbing Rope
Use the Access Rope |q 54947/1 |goto 63.95,33.44
step
talk Sapphronetta Flivvers##150117
|tip Inside the building.
Tell her _"We need you for Mechagon."_
Recruit Sapphronetta Flivvers |q 54947/2 |goto 65.07,32.71
step
talk Grizzek Fizzwrench##150121
|tip Upstairs inside the building.
Tell him _"Your partner in life, love and the lab says I should invite you to come to Mechagon."_
Recruit Grizzek Fizzwrench |q 54947/3 |goto 64.91,32.87
step
Follow the path |goto 61.24,19.64 < 20 |only if walking
talk Cog Captain Winklespring##151102
Tell him _"We need you for Mechagon."_
Recruit Cog Captain Winklespring |q 54947/4 |goto 51.09,18.89
step
Cross the bridge |goto Tiragarde Sound/0 67.01,25.40 < 20 |only if walking
Reach the Departure Point |q 54947/5 |goto Boralus/0 43.23,32.00
step
talk Gila Crosswires##150145
turnin A Small Team##54947 |goto 43.23,32.00
accept The Start of Something Bigger##54992 |goto 43.23,32.00
step
clicknpc Expedition Gyrocopter##150199
Board the Expedition Gyrocopter |q 54992/1 |goto 42.94,31.39
step
Watch the dialogue
Arrive at Mechagon |q 54992/2
step
talk Cog Captain Winklespring##150639
fpath Overspark Expedition Camp |goto Mechagon Island/0 77.84,40.93
step
talk Tinkmaster Overspark##152484
turnin The Start of Something Bigger##54992 |goto 77.58,40.44
accept Princely Visit##55645 |goto 77.58,40.44
step
Watch the dialogue
Explore Rustbolt |q 55645/1 |goto 71.09,38.33
step
talk Prince Erazmin##152851
turnin Princely Visit##55645 |goto 71.09,38.32
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
|tip You will need to wait until the next daily reset to accept this quest.
step
collect 1000 Spare Parts##166846 |q 54922/1 |goto 71.50,38.76
step
talk Recycler Kerchunk##150573
turnin The Nuts and Bolts of It##54922 |goto 71.50,38.76
step
talk Recycler Kerchunk##150573
accept Factory Refurbished##56168 |goto 71.50,38.76
|tip You will have to wait until the next daily reset to accept this quest.
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
|tip You will have to wait until the next daily reset to accept this quest.
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
step
talk Recycler Kerchunk##150573
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
|tip Use the "Rustbolt Resistance" Reputation Guide to achieve this.
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
condition_end=function() return completedq(56348) end,
},[[
step
talk Genn Greymane##153932
accept Send the Fleet##56043 |goto Boralus/0 70.66,27.19
step
talk Cyrus Crestfall##122370
|tip Inside the building.
Tell him _"Greymane is waiting. I'm ready to set sail."_
Speak to Harbormaster Cyrus Crestfall to Set Sail |q 56043/1 |goto 67.99,21.91
step
Arrive in Nazjatar |goto Nazjatar/0 48.10,92.97 |noway |c |q 56043
step
Watch the dialogue
talk Genn Greymane##150087
turnin Send the Fleet##56043 |goto 48.33,92.62
accept Upheaval##55095 |goto 48.33,92.62
step
talk Lady Jaina Proudmoore##150101
turnin Upheaval##55095 |goto 48.80,89.32
accept Descent##54969 |goto 48.80,89.32
step
Leap Off the Waterfall |q 54969/1 |goto 48.46,88.32
step
talk Lady Jaina Proudmoore##150101
turnin Descent##54969 |goto 48.80,87.02
step
_Next to you:_
talk Shandris Feathermoon##155482
accept Fortunate Souls##56640
accept Disruption of Power##56641
accept Ritual of Tides##56642
stickystart "Destroy_Ley_Line_Accumulators"
stickystart "Rescue_7th_Legion_Captives"
step
Follow the path |goto 45.83,81.40 < 20 |only if walking
Run up the stairs |goto 43.05,74.89 < 10 |only if walking
kill Tidemistress Ethendriss##153934 |q 56642/1 |goto 42.90,76.85
step
label "Destroy_Ley_Line_Accumulators"
click Ley Line Accumulator+
|tip They look like large blue orbs on pedestals on the ground around this area.
Destroy #5# Ley Line Accumulators |q 56641/1 |goto 44.28,78.63
step
label "Rescue_7th_Legion_Captives"
kill Zanj'ir Trapper##153962+
Rescue #9# 7th Legion Captives |q 56640/1 |goto 44.28,78.63
step
_Next to you:_
talk Shandris Feathermoon##155482
turnin Fortunate Souls##56640
turnin Disruption of Power##56641
turnin Ritual of Tides##56642
accept In Deep##56643
step
Enter the cave |goto 45.34,75.78 < 10 |walk
talk Lady Jaina Proudmoore##150101
|tip Inside the cave.
turnin In Deep##56643 |goto 45.48,74.77
accept Up Against It##56644 |goto 45.48,74.77
step
Move Ahead with Jaina and Genn |q 56644/1 |goto 47.12,76.88
step
Investigate the Noise |q 56644/2 |goto 46.88,74.30
step
Move ahead with Jaina and Genn |q 56644/3 |goto 48.38,68.77
step
click Sharas'dal, Scepter of Tides
Inspect the Scepter |q 56644/4 |goto 48.94,67.33
step
Watch the dialogue
talk Blademaster Okani##151000
turnin Up Against It##56644 |goto 49.00,67.36
accept Where the Road Leads##55175 |goto 49.00,67.36
step
Follow the road down |goto 44.33,65.49 < 20 |only if walking
Travel to Mezzamere |q 55175/1 |goto 40.98,58.59
step
Follow Okani |q 55175/2 |goto 39.24,56.40
step
Watch the dialogue
talk Lady Jaina Proudmoore##150101
|tip Inside the building.
turnin Where the Road Leads##55175 |goto 40.31,55.24
accept A Way Home##54972 |goto 40.31,55.24
step
talk Ray Tamer Enaka##151772 |goto 39.92,54.12
fpath Mezzamere |goto 39.92,54.12
step
Watch the dialogue
Assist Jaina |q 54972/1 |goto 39.97,52.59
|tip Click the "Heart of Azeroth" button that appears on-screen.
step
Watch the dialogue
talk Lady Jaina Proudmoore##150101
|tip Inside the building.
turnin A Way Home##54972 |goto 40.31,55.24
step
talk Magni Bronzebeard##154166
accept Essential Empowerment##55851 |goto 40.02,55.13
step
talk Enizo##155940
|tip Inside the building.
home Mezzamere |goto 37.80,55.48 |q 55851
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
accept Back Out to Sea##56162 |goto 50.13,59.26
step
talk Lady Jaina Proudmoore##150101
|tip Inside the building.
turnin Back Out to Sea##56162 |goto Nazjatar/0 40.31,55.24
accept Scouting the Palace##56350 |goto 40.31,55.24
step
talk Lady Jaina Proudmoore##150101
|tip Inside the building.
Ask her _"Jaina, can you show us the area around the palace?"_
Witness the Vision |q 56350/1 |goto 40.31,55.24
step
talk Lady Jaina Proudmoore##150101
turnin Scouting the Palace##56350 |goto 40.31,55.24
step
talk Lady Jaina Proudmoore##150101
|tip Inside the building.
accept Create Your Own Strength##57004 |goto 40.31,55.24
step
talk Hunter Akana##151626
accept The Lost Shaman##55361 |goto 39.41,53.47
step
Follow the road down |goto 38.66,46.93 < 20 |only if walking
Find Apprentice Odari |q 55361/1 |goto 43.51,49.79
step
talk Apprentice Odari##151741
turnin The Lost Shaman##55361 |goto 43.51,49.79
accept Elemental Fury##55362 |goto 43.51,49.79
accept Rescue The Farseer##55363 |goto 43.51,49.79
stickystart "Pacify_Tide_Surgers"
step
Find Farseer Ori |q 55363/1 |goto 45.40,49.08
step
kill Tidebinder Sarjezi##151662
|tip Inside the cave.
collect Prison Key##167784 |q 55363/2 |goto 45.22,50.14
step
click Naga Cage
|tip Inside the cave.
Rescue Farseer Ori |q 55363/3 |goto 45.26,50.30
step
label "Pacify_Tide_Surgers"
kill Volatile Tide Surger##150371+
use the Stone of Elements##167748
|tip Use it on weakened Surgers before they die.
Pacify #8# Tide Surgers |q 55362/1 |goto 43.51,49.79
step
talk Apprentice Odari##151741
turnin Elemental Fury##55362 |goto 43.51,49.78
step
talk Farseer Ori##149805
turnin Rescue The Farseer##55363 |goto 39.37,53.54
step
talk Bladesman Inowari##154248
accept A Tempered Blade##56156 |goto 39.46,53.44
step
Follow the path |goto 39.78,46.54 < 20 |only if walking
Kill enemies around this area
Slay #15# Naga Forces |q 56156/1 |goto 40.10,39.30
step
Return to Mezzamere |q 56156/2 |goto 38.78,53.06
step
Watch the dialogue
talk Bladesman Inowari##154248
turnin A Tempered Blade##56156 |goto 39.46,53.43
step
talk Lady Jaina Proudmoore##150101
|tip Inside the building.
accept A Brief Respite##54975 |goto 40.31,55.24
step
talk Artisan Okata##153509
|tip Inside the building.
accept Scrying Stones##56211 |goto 37.90,55.84
accept A Worthy Ally##57006 |goto 37.90,55.84
step
click Deepflame Campfire
Use the Deepflame Campfire |q 57006/1 |goto 39.45,53.53
step
Choose a Friend |q 57006/2 |goto 39.45,53.53
step
use the Scrying Stone##169817
Activate the Scrying Stone |q 56211/1 |goto 39.54,53.81
step
Follow the path down |goto 39.05,52.00 < 20 |only if walking
Continue down the path |goto 40.36,46.87 < 20 |only if walking
click Glimmering Chest##327578
|tip Click the button that appears on-screen to reveal it.
Discover the Hidden Treasure |q 56211/2 |goto 40.22,49.04 |count 1
step
Follow the path up |goto 41.11,50.57 < 20 |only if walking
click Glimmering Chest##327578
|tip Click the button that appears on-screen to reveal it.
Discover the Hidden Treasure |q 56211/2 |goto 43.45,53.64 |count 2
step
click Glimmering Chest##327578
|tip Click the button that appears on-screen to reveal it.
Discover the Hidden Treasure |q 56211/2 |goto 46.81,55.99 |count 3
step
talk Artisan Okata##153509
|tip Inside the building.
turnin Scrying Stones##56211 |goto 37.90,55.84
step
Complete #3# Ankoan Daily Quests |q 57006/3
|tip Complete bodyguard quests using the "Nazjatar World Quest" guide.
|tip You can also complete the "Kelya's Grave" guide while you wait to unlock the Flight Master's Whistle and flight path.
|tip You will also accomplish this later in this guide.
step
talk Artisan Okata##153509
|tip Inside the building.
turnin A Worthy Ally##57006 |goto 37.90,55.84
step
Reach Rank 3 with an Ankoan Ally |q 54975/1
|tip This is required to continue the Nazjatar storyline.
|tip Complete bodyguard quests using the "Nazjatar World Quest" guide.
|tip You can also complete the "Kelya's Grave" guide while you wait to unlock the Flight Master's Whistle and flight path.
|tip You will also accomplish this later in this guide.
step
talk Lady Jaina Proudmoore##150101
|tip Inside the building.
turnin A Brief Respite##54975 |goto 40.31,55.24
accept Insight into Our Enemies##55593 |goto 40.31,55.24
step
talk Blademaster Okani##151000
turnin Insight into Our Enemies##55593 |goto 38.99,54.63
accept Deteriorating Knowledge##55595 |goto 38.99,54.63
accept Bound by Honor##55597 |goto 38.99,54.63
stickystart "Slay_Naga_Forces"
stickystart "Rescue_Imara"
stickystart "Rescue_Adaru"
stickystart "Rescue_Umai"
step
label "Rescue_Imara"
Follow the path down |goto 38.55,47.05 < 20 |only if walking
Continue down the path |goto 39.93,46.02 < 20 |only if walking
Enter the cave |goto 40.11,38.58 < 15 |walk
Kill Mind-Shackled enemies around this area
|tip They appear on your minimap as yellow dots.
Rescue Imara |q 55595/1 |goto Nazjatar/10 54.82,47.20
step
label "Rescue_Adaru"
Kill Mind-Shackled enemies around this area
|tip They appear on your minimap as yellow dots.
Rescue Adaru |q 55595/2 |goto 54.82,47.20
step
label "Rescue_Umai"
Kill Mind-Shackled enemies around this area
|tip They appear on your minimap as yellow dots.
Rescue Umai |q 55595/3 |goto 54.82,47.20
step
Leave the cave |goto 35.71,57.90 < 15 |walk
click Broken Abyssal Focus
accept Ancient Technology##56346 |goto Nazjatar/0 38.10,37.00 |or
|tip
Click Here if this Quest is Not Available |confirm |or
|tip This quest requires at least 150 skill in a Kul Tiran crafting profession.
step
label "Slay_Naga_Forces"
Kill Zanj'ir enemies around this area
Slay #10# Naga Forces |q 55597/1 |goto 37.66,35.87
step
Follow the path |goto 37.16,32.72 < 15 |only if walking
Enter the cave |goto 38.26,30.90 < 15 |walk
talk Ezra##153499
|tip Inside the cave.
turnin Bound by Honor##55597 |goto 39.02,30.43
step
talk Adaru##153496
|tip Inside the cave.
turnin Deteriorating Knowledge##55595 |goto 38.97,30.38
accept What We Know of the Naga##55598 |goto 38.97,30.38
step
clicknpc Umai##153815
|tip Inside the cave.
Bandage Umai |q 55598/1 |goto 38.93,30.34
step
clicknpc Imara##153809
Bandage Imara |q 55598/2 |goto 39.02,30.50
step
talk Adaru##153496
turnin What We Know of the Naga##55598 |goto 38.97,30.38
accept Scouting Undercover##55599 |goto 38.97,30.38
step
clicknpc Zoatroid##153941
Obtain a Disguise |q 55599/1 |goto 38.90,30.30
step
Follow the path down |goto 37.26,29.71 < 20 |only if walking
talk Overseer Hajeer##153936
turnin Scouting Undercover##55599 |goto 36.98,27.02
accept Sating Snapdragons##55600 |goto 36.98,27.02
accept Working with Purpose##56038 |goto 36.98,27.02
stickystart "Collect_Iridescent_Pearls"
step
Follow the path down |goto 39.13,25.88 < 20 |only if walking
Continue down the path |goto 39.55,19.93 < 20 |only if walking
Kill Chitterspine enemies around this area
collect 8 Chitterspine Roe##168753 |goto 40.71,15.26 |q 55600
step
label "Collect_Iridescent_Pearls"
click Chittershell Clam+
|tip They look like giant clam shells on the ground around this area.
click Iridescent Pearl##327198+
|tip They are inside the clams.
collect 6 Iridescent Pearl##168810 |q 56038/1 |goto 40.71,15.23
step
Follow the path up |goto 39.63,16.94 < 20 |only if walking
use the Chitterspine Roe##168753
|tip Throw it at Savage Snapdragons.
Feed #8# Savage Snapdragons |q 55600/1 |goto 38.85,22.95
step
talk Overseer Hajeer##153936
turnin Working with Purpose##56038 |goto 36.98,27.02
turnin Sating Snapdragons##55600 |goto 36.98,27.02
accept We Can't Have Dull Weapons##56039 |goto 36.98,27.02
step
Follow the path down |goto 39.23,25.52 < 20 |only if walking
click Weapon Rack
turnin We Can't Have Dull Weapons##56039 |goto 34.68,21.11
accept Stealing the Naga's Secrets##56037 |goto 34.68,21.11
step
click Azerite Trident##326611
collect Azerite Trident##168516 |q 56037/1 |goto 34.68,21.11
step
Kill Zanj'ir enemies around this area
Slay #15# Zanj'ir Forces |q 56037/2 |goto 36.06,20.46
step
Follow the path up |goto 39.23,25.52 < 20 |only if walking
Continue up the path |goto 37.68,29.02 < 20 |only if walking
Enter the cave |goto 38.29,30.91 < 15 |walk
talk Lady Jaina Proudmoore##153384
|tip Inside the cave.
turnin Stealing the Naga's Secrets##56037 |goto 38.91,30.53
step
talk Blademaster Okani##153385
|tip Inside the cave.
accept Sea Slug Liquidation##55860 |goto 38.86,30.42
accept Coveted Crystals##55601 |goto 38.86,30.42
stickystart "Collect_Bioluminescent_Oozes"
step
Follow the path up |goto 36.22,31.65 < 20 |only if walking
Continue up the path |goto 32.02,33.72 < 10 |only if walking
Continue up the path |goto 28.31,30.25 < 15 |only if walking
Enter the cave |goto 27.10,27.98 < 10 |walk
kill Hoarder Moarrgl##153250
|tip Inside the cave.
collect Deepsea Crystal##168540 |q 55601/1 |goto 27.02,26.82
step
label "Collect_Bioluminescent_Oozes"
clicknpc Luminescent Slug##153149+
|tip They look like tiny glowing slugs on the ground around this area.
collect 8 Bioluminescent Ooze##168539 |q 55860/1 |goto 28.96,31.24
step
Follow the path down |goto 27.87,29.48 < 20 |only if walking
Continue down the path |goto 31.70,32.56 < 10 |only if walking
Continue up the path |goto 32.26,35.89 < 20 |only if walking
click Strange Crystal
accept A Curious Discovery##56561 |goto 32.81,39.59
step
talk Azuku##153778
fpath Ashen Strand |goto 31.85,38.09
step
Follow the path down |goto 35.25,32.78 < 20 |only if walking
Enter the cave |goto 38.33,30.90 < 10 |walk
talk Blademaster Okani##153385
|tip Inside the cave.
turnin Coveted Crystals##55601 |goto 38.86,30.42
turnin Sea Slug Liquidation##55860 |goto 38.86,30.42
accept Let the Residue Lead You##55861 |goto 38.86,30.42
step
Follow the path |goto 37.54,36.82 < 20 |only if walking
Continue following the path |goto 41.20,40.67 < 15 |only if walking
Continue following the path |goto 45.88,44.17 < 20 |only if walking
use the Residue Detector##168541
Locate the Azerite Weapons Cache |q 55861/1 |goto 46.10,51.98
step
click Azerite Weapons Cache
turnin Let the Residue Lead You##55861 |goto 46.10,51.98
accept Clearing Out the Cache##55937 |goto 46.10,51.98
step
click Azerite Trident
|tip Inside the cave.
Aquire Azerite Weapons |havebuff 2032579 |goto 45.14,53.49 |q 55937
step
Kill enemies that attack in waves
Defeat Ashvane's Forces |q 55937/1 |goto 44.23,53.12
step
talk Mrrl##152084
accept A Safer Place##55983 |goto 48.19,45.34
step
Follow the path up |goto 45.49,44.03 < 20 |only if walking
Continue up the path |goto 38.16,47.41 < 20 |only if walking
Escort Mrrl to Mezzamere |q 55983/1 |goto 38.55,52.86
step
talk Instructor Ulooaka##154257
turnin Ancient Technology##56346 |goto 37.98,52.91
|only if haveq(56346)
step
talk Instructor Okanu##153811
turnin A Curious Discovery##56561 |goto 37.93,53.19
step
Watch the dialogue
talk Instructor Ulooaka##154257
accept An Abyssal Opportunity##56347 |goto 37.98,52.91 |or
|tip
Click Here if this Quest is Not Available |confirm |or
|tip This quest requires at least 150 skill in a Kul Tiran crafting profession.
step
talk Mrrl##152084
turnin A Safer Place##55983 |goto 39.10,54.32
accept No Backs##55529 |goto 39.10,54.32
step
talk Flrgrrl##151952
buy 1 Unidentified Mass##167912 |q 55529/2 |goto 39.96,53.43
step
Enter the building |goto 39.88,55.10 < 5 |walk
talk Lady Jaina Proudmoore##150101
|tip Inside the building.
turnin Clearing Out the Cache##55937 |goto 40.31,55.25
accept Friends In Need##56234 |goto 40.31,55.25
step
talk Mrrglrlr##151950
|tip It runs in a circle around this area.
buy 1 Slimy Naga Eyeball##167896 |q 55529/4 |goto 38.76,54.86
step
talk Hurlgrl##151953
buy 1 Sweet Sea Vegetable##167915 |q 55529/1 |goto 38.64,54.46
step
talk Grrmrlg##151951
buy Flatulent Fish##167906 |q 55529/3 |goto 37.49,53.45
step
talk Mrrl##152084
turnin No Backs##55529 |goto 39.10,54.32
step
Gain #3000# Experience for Your Ankoan Allies |q 56234/1
|tip This is required to continue the Nazjatar storyline.
|tip You only need 3,000 total between all three bodyguards.
|tip Complete bodyguard quests using the "Nazjatar World Quest" guide.
|tip You can also complete the "Kelya's Grave" guide while you wait to unlock the Flight Master's Whistle and flight path.
|tip You will also accomplish this later in this guide.
step
Enter the building |goto 39.88,55.10 < 5 |walk
talk Lady Jaina Proudmoore##150101
|tip Inside the building.
turnin Friends In Need##56234 |goto 40.31,55.25
step
talk Shandris Feathermoon##153617
|tip Inside the building.
accept A Bolt Hole##55558 |goto 40.27,55.38
step
Follow the path down |goto 39.00,51.52 < 20 |only if walking
Cross the bridge |goto 44.04,43.86 < 20 |only if walking
Follow the path up |goto 49.82,44.79 < 20 |only if walking
Continue up the path |goto 54.20,44.73 < 20 |only if walking
Continue up the path |goto 60.53,42.24 < 20 |only if walking
Find the Base |q 55558/1 |goto 61.82,37.11
step
talk Hirano##152889
fpath Utama's Stand |goto 61.68,36.51
step
talk Shandris Feathermoon##153617
|tip Inside the building.
turnin A Bolt Hole##55558 |goto 62.56,36.01
accept What Remains of Zin-Azshari##55561 |goto 62.56,36.01
step
talk Blademaster Okani##151000
|tip Inside the building.
accept There's Something in the Water##55694 |goto 62.55,36.13
accept Utama's Vengeance##55560 |goto 62.55,36.13
step
Follow the path down |goto 61.69,40.13 < 20 |only if walking
Jump down here |goto 61.65,41.97 < 20 |only if walking
talk Shandris Feathermoon##153617
turnin What Remains of Zin-Azshari##55561 |goto 66.09,43.79
accept Shoring Up Mana Reserves##55565 |goto 66.09,43.79
step
talk Collector Kojo##154143
accept Legacy of Nar'anan##56095 |goto 66.47,47.33
accept Snap Back##56118 |goto 66.47,47.33
stickystart "Test_Scroll_Of_Bursting_Power"
stickystart "Slay_Snapdragons"
step
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
kill Frenzied Elemental##152164+
collect 10 Elemental Core##168241 |q 55565/1 |goto 69.80,40.52
step
Kill Kil'karrok enemies around this area
Slay #10# Kil'karrok |q 55560/1 |goto 67.50,37.35
step
Follow the path down |goto 69.39,31.74 < 20 |only if walking
kill Eye of the Corruptor##152116 |q 55694/1 |goto 70.22,27.55
step
talk Kelya Moonfall##154574
accept The High Life##56304 |goto 74.16,24.93
step
talk Blademaster Okani##151000
turnin There's Something in the Water##55694 |goto 74.65,25.80
turnin Utama's Vengeance##55560 |goto 74.65,25.80
step
talk Shandris Feathermoon##153617
turnin Shoring Up Mana Reserves##55565 |goto 74.69,25.87
accept Echoes of Pain##55569 |goto 74.69,25.87
accept Secrets in the Ruins##55570 |goto 74.69,25.87
stickystart "Find_Texts"
stickystart "Question_Spirits"
stickystart "Kill_Highborne_Echos"
step
Run up the stairs |goto 75.34,26.48 < 10 |only if walking
Follow the path up |goto 77.30,26.60 < 10 |only if walking
click Ruined Mixing Stand
kill Varel Pansong##154509
Investigate the Bakery |q 56304/1 |goto 77.93,26.35
step
label "Find_Texts"
click Ancient Highborne Notebook+
|tip They look like large open books on the ground around this area.
Find #3# Texts |q 55570/1 |goto 76.35,25.67
step
label "Question_Spirits"
talk Gregarious Aristocrat##152931
|tip They appear on your minimap as yellow dots.
Tell them _"I wondered if you knew anything about magical artifacts here in Zin'Azshari."_
Question #3# Spirits |q 55570/2 |goto 76.35,25.67
step
label "Kill_Highborne_Echos"
kill 3 Highborne Echo##152893 |q 55569/1 |goto 76.35,25.67
step
Enter the building |goto 77.66,29.64 < 5 |walk
click Corin's Mug
|tip Inside the building.
kill Eranor Birtris##154528
Investigate the Inn |q 56304/2 |goto 77.28,30.01
step
Follow the path |goto 78.50,30.58 < 15 |only if walking
Investigate the Gardens |q 56304/3 |goto 80.01,30.89
step
Watch the dialogue
talk Kelya Moonfall##154514
turnin The High Life##56304 |goto 80.09,31.43
accept Saving Corin##56321 |goto 80.09,31.43
step
kill Shadowcaster Vixtris##154548 |q 56321/1 |goto 80.69,32.04
step
Watch the dialogue
talk Kelya Moonfall##154601
turnin Saving Corin##56321 |goto 80.21,31.90
accept On Ghostly Wings##56422 |goto 80.21,31.90
step
Follow the path |goto 76.06,26.32 < 15 |only if walking
talk Kelya Moonfall##154574
turnin On Ghostly Wings##56422 |goto 74.16,24.92
step
talk Kelya Moonfall##154574
fpath Kelya's Grave |goto 74.16,24.92
step
Follow the path |goto 71.95,36.76 < 30 |only if walking
Run up the stairs |goto 73.75,39.40 < 15 |only if walking
talk Orise##152888
fpath Elun'alor Temple |goto 73.98,40.03
step
talk Shandris Feathermoon##153617
turnin Echoes of Pain##55569 |goto 74.28,40.16
turnin Secrets in the Ruins##55570 |goto 74.28,40.16
accept Help Them See the Truth##55571 |goto 74.28,40.16
accept Purging the Defilers##55573 |goto 74.28,40.16
step
click Icon of Azshara+
|tip They look like statues depicting elves on the ground around this area.
Kill enemies around this area
Purge the Defilement of Elun'alor |q 55573/1 |goto 77.86,35.77
step
Run up the stairs |goto 73.76,39.39 < 15 |only if walking
talk Shandris Feathermoon##153617
turnin Purging the Defilers##55573 |goto 74.28,40.16
accept The Javelins of Azshara##55574 |goto 74.28,40.16
step
Follow the path |goto 72.87,42.85 < 15 |only if walking
Continue up the path |goto 73.01,45.06 < 15 |only if walking
talk Shandris Feathermoon##154522
accept City of Drowned Friends##56309 |goto 76.15,45.78
step
Enter the building |goto 75.67,47.36 < 10 |walk
kill Weeping Sanya##154670 |q 56309/1 |goto 75.92,48.19
|tip Upstairs inside the building.
step
talk Swiftfingered Tynala##154686
Ask her _"Have you seen Janius?"_
Speak with Swiftfingered Tynala |q 56309/2 |goto 73.67,43.78
step
kill Merchant Renrotta##154674 |q 56309/3 |goto 71.54,41.93
step
Watch the dialogue
talk Shandris Feathermoon##154660
turnin City of Drowned Friends##56309 |goto 73.98,41.75
accept The Ever Drowning##56311 |goto 73.98,41.75
step
talk Shandris Feathermoon##154660
Tell her _"Ready when you are."_
Speak with First Arcanist Thalyssra |q 56311/1 |goto 73.98,41.75
step
Wait in the bubble here |goto 74.58,41.92 < 5 |walk
Wait in the bubble here |goto 75.28,42.82 < 5 |walk
Wait in the bubble here |goto 76.12,42.67 < 5 |walk
Follow the path |goto 78.56,44.72 < 30 |only if walking
Escort First Arcanist Thalyssra |q 56311/2 |goto 79.77,44.94
|tip Avoid Fleeing Civilians or they will knock you down.
step
talk Shandris Feathermoon##155071
turnin The Ever Drowning##56311 |goto 79.77,44.94
accept The Warbringer##56313 |goto 79.77,44.94
step
click Memory of the Pact
Witness the Vision |q 56313/1 |goto 80.40,45.10
step
talk Shandris Feathermoon##155071
turnin The Warbringer##56313 |goto 79.77,44.94
accept They Made Their Choice##56315 |goto 79.77,44.94
step
kill Abyssal Commander Sivara##155144
|tip You will only have to fight it for a short period of time.
Watch the dialogue
Confront Abyssal Commander Sivara |q 56315/1 |goto 80.95,44.82
step
talk Janius##155252
Tell him _"Shandris is alive and here. Be at peace."_
Speak with Janius |q 56315/2 |goto 80.52,45.16
step
talk Riathia Silverstar##152238
turnin They Made Their Choice##56315 |goto 79.77,44.94
step
Follow the path |goto 79.69,42.33 < 20 |only if walking
|tip Stay to the right side to avoid the Horde guards.
Enter the building |goto 82.24,35.88 < 10 |walk
Run down the stairs |goto Orgrimmar Collapse Scenario/0 45.47,44.11 < 10 |walk
talk Highborne Arcanist##155587
|tip Downstairs inside the building.
Tell it _"She has already abandoned you and the city."_
Confront the Ghosts of Elun'ador |q 55571/1 |goto 56.33,22.71
step
talk Riathia Silverstar##152238
|tip Downstairs inside the building.
turnin Help Them See the Truth##55571 |goto 53.80,20.49
accept The Power of Worship##56739 |goto 53.80,20.49
step
Run up the stairs |goto 61.33,30.97 < 5 |walk
click Arcane Energy Transmuter
|tip Upstairs inside the building.
Destroy the Arcane Energy Transmuter |q 56739/1 |goto 58.24,49.57 |count 1
step
click Arcane Energy Transmuter
|tip Upstairs inside the building.
Destroy the Arcane Energy Transmuter |q 56739/1 |goto 51.34,49.57 |count 2
step
Cross the water |goto 45.44,56.21 < 10 |walk
click Arcane Energy Transmuter
|tip Upstairs inside the building.
Destroy the Arcane Energy Transmuter |q 56739/1 |goto 59.41,84.56 |count 3
step
Cross the water |goto 50.30,72.66 < 10 |walk
Run down the stairs |goto 45.50,43.98 < 10 |walk
talk Shandris Feathermoon##153617
|tip Downstairs inside the building.
turnin The Power of Worship##56739 |goto 53.81,20.51
step
Run up the stairs |goto 50.66,29.19 < 5 |walk
Leave the building |goto 35.79,49.32 < 10 |walk
Run up the stairs |goto Nazjatar/0 78.84,35.89 < 20 |only if walking
kill Lady Silazsi##152203 |q 55574/1 |goto 77.57,35.82
|tip She walks around this area.
step
collect Javelin of Suramar##168212 |q 55574/2 |goto 77.57,35.82
|tip Loot the corpse.
step
Run up the stairs |goto 73.76,39.39 < 15 |only if walking
talk Shandris Feathermoon##153617
turnin The Javelins of Azshara##55574 |goto 74.28,40.16
accept The Spear of Destiny##56741 |goto 74.28,40.16
step
Enter the building |goto 39.88,55.10 < 5 |walk
talk Lady Jaina Proudmoore##150101
|tip Inside the building.
turnin The Spear of Destiny##56741 |goto 40.31,55.25
accept Changing Tides##56325 |goto 40.31,55.25
step
Follow the path down |goto 39.01,51.61 < 20 |only if walking
Cross the bridge |goto 44.17,43.83 < 20 |only if walking
Watch the dialogue
talk Lady Jaina Proudmoore##153193
Tell her _"I am ready. Sound the advance!"_
Sound the Advance |q 56325/1 |goto 50.03,44.84
step
Follow the path down |goto 49.16,43.50 < 15 |only if walking
click Barricade+
|tip They look like crude barriers on the ground around this area.
Kill enemies around this area
Assault the Gorgonian Overlook |q 56325/2 |goto 51.90,35.16
step
kill Commander Kresh##153019 |q 56325/3 |goto 51.34,32.33
step
Throw the Javelin of Suramar |q 56325/4 |goto 51.21,32.27
|tip Click the action button that appears on-screen.
step
kill Lady Zharessa##153468 |q 56325/5 |goto 50.50,24.65
step
talk Lady Jaina Proudmoore##153193
turnin Changing Tides##56325 |goto 50.19,23.72
step
talk Lady Jaina Proudmoore##153253
accept The Eternal Palace: Queen's Gambit##56358 |goto 50.39,24.09
step
talk Nobu##154737
fpath The Tidal Conflux |goto 49.81,23.62
step
talk Voidbinder Sturzah##156152
|tip You will need 20 Prismatic Manapearls and a piece of Benthic Armor.
|tip Benthic gear tokens come from world quests and rare spawns in Nazjatar.
Upgrade a Piece of Benthic Armor |q 57004/2 |goto 40.01,53.07
step
talk Artisan Okata##153509
|tip Inside the building.
turnin Create Your Own Strength##57004 |goto 37.90,55.84
step
talk Artisan Okata##153509
|tip Inside the building.
buy 15 Abyssal Shard##171247 |q 56347/1 |goto 37.90,55.84
|tip These cost five Prismatic Manapearls each.
|tip Prismatic Manapearls can be aquired by completing world quests and daily quests in Nazjatar.
|only if haveq(56347)
step
talk Instructor Ulooaka##154257
turnin An Abyssal Opportunity##56347 |goto 37.98,52.91
|only if haveq(56347)
step
Watch the dialogue
talk Instructor Ulooaka##154257
accept The Eternal Palace: We Can Make It Stronger...##56348 |goto 37.98,52.91
step
collect 20 Eternal Ornament##169329 |q 56348/1
|tip These drop from raid bosses in The Eternal Palace.
|tip You can do the raid on different difficulties, starting with Normal, to increase your drops.
step
talk Instructor Ulooaka##154257
turnin The Eternal Palace: We Can Make It Stronger...##56348 |goto 37.98,52.91
step
Watch the dialogue
talk Instructor Ulooaka##154257
accept The Eternal Palace: Pushing the Limits##56351 |goto 37.98,52.91
step
collect 200 Eternal Ornament##169329 |q 56351/1
|tip These drop from raid bosses in The Eternal Palace.
step
talk Instructor Ulooaka##154257
turnin The Eternal Palace: Pushing the Limits##56351 |goto 37.98,52.91
step
_Congratulations!_
You Have Completed the "Nazjatar" Questline.
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
condition_end=function() return completedq(56247) and completedq(55531) and completedq(55426) and completedq(55602) end,
},[[
step
label "Collect_Dropped_Items"
collect Silver Knife##169215 |next "Strange_Silver_Knife" |only if not completedq(56247) |or
|tip This drops from Arcane Chests across Nazjatar. |only if not completedq(56247)
collect Brinestone Pickaxe##168081 |next "What_Will_It_Mine" |only if not completedq(55531) |or
|tip This drops from Arcane Chests across Nazjatar as well as Mining nodes. |only if not completedq(55531)
collect Germinating Seed##167786 |next "What_Will_It_Grow" |only if not completedq(55426) |or
|tip This drops from Arcane Chests across Nazjatar as well as Zin'anthid nodes. |only if not completedq(55426)
collect Chum##168155 |next "What_Will_It_Lure" |only if not completedq(55602) |or
|tip This drops from Arcane Chests across Nazjatar as well as random mobs. |only if not completedq(55602)
'|condition completedq(56247) and completedq(55531) and completedq(55426) and completedq(55602) |next "End" |or
step
label "Strange_Silver_Knife"
talk Artisan Itanu##153510
|tip Inside the building.
turnin Strange Silver Knife##56239 |goto Nazjatar/0 37.85,55.71
accept Preserved Clues##56241 |goto 37.85,55.71
step
Follow the path |goto 74.06,41.84 |goto 74.06,41.84 < 15 |only if walking
click Preserved Journal
turnin Preserved Clues##56241 |goto 81.45,45.50
accept Diaries of the Dead##56243 |goto 81.45,45.50
step
Run up the stairs |goto 80.72,43.90 < 10 |only if walking
click Preserved Journal
Find Another Journal in the City Ruins |q 56243/1 |goto 83.24,32.86
step
Run down the stairs |goto 82.37,39.23 < 15 |only if walking
Follow the path |goto 80.46,43.20 < 5 |only if walking
click Preserved Journal
Continue Searching the City Ruins |q 56243/2 |goto 81.32,40.04
step
Run down the stairs |goto 80.22,43.39 < 10 |only if walking
Run down the stairs |goto 79.17,41.52 < 5 |walk
click Enchanted Lock
|tip Inside the building.
turnin Diaries of the Dead##56243 |goto 78.90,41.14
accept Enchanted Lock##56246 |goto 78.90,41.14
step
click Arcane Device
|tip Inside the building.
|tip The objective is to click a rune to swap it with another, placing three purple runes together.
Match 3 Purple Runes to Unlock the Lock |q 56246/1 |goto 78.95,41.26
step
click Enchanted Lock
|tip Inside the building.
turnin Enchanted Lock##56246 |goto 78.90,41.14
accept Treasure Tale##56247 |goto 78.90,41.14
step
talk Artisan Itanu##153510
|tip Inside the building.
turnin Treasure Tale##56247 |goto 37.85,55.69
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
talk Artisan Okata##153509
|tip Inside the building.
turnin What Will It Grow?##55426 |goto 37.89,55.84 |only if haveq(55426) and readyq(55426)
turnin What Will It Mine?##55531 |goto 37.89,55.84 |only if haveq(55531) and readyq(55531)
turnin What Will It Lure?##55602 |goto 37.89,55.84 |only if haveq(55602) and readyq(55602)
|condition not readyq(55426,55531,55602) |next "Collect_Dropped_Items"
step
label "End"
You have completed this guide
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\War Campaign",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the Alliance War Campaign for Battle for Azeroth.",
condition_suggested=function() return level >= 35 and level <= 60 and not completedq(52790) and completedq(47189) end,
image=ZGV.IMAGESDIR.."WarCampaign",
},[[
step
Reach Level 35 |ding 35
|tip You must be at least level 35 to continue this questline.
|tip Use the Leveling guides to accomplish this
step
talk Genn Greymane##120788
|tip Inside the building.
accept The War Campaign##52654 |goto Boralus/0 68.05,22.18
|only if not haveq(52544) and not completedq(52544)
step
talk Halford Wyrmbane##135612
|tip On the ship.
turnin The War Campaign##52654 |goto 69.27,27.01 |only if haveq(52654) or completedq(52654)
accept The War Cache##52544 |goto 69.27,27.01
step
Gather #100# War Resources |q 52544/1
|tip Gather these mainly from treasure chests.
|tip You will also occasionally get some from completing quests as you level.
|tip Treasure chests appear in random locations in leveling zones.
|tip As you complete quests, look for silver treasure chest icons on your minimap.
|tip Also look for silver arrows around the edge of your minimap.
|tip These silver arrows point you to nearby treasure chests.
step
Click the Complete Quest Box:
turnin The War Cache##52544
accept Time for War##53332
step
talk Halford Wyrmbane##135612
turnin Time for War##53332 |goto 69.27,27.00
step
talk Falstad Wildhammer##135618
accept Mission from the King##51714 |goto 69.73,27.79
step
talk Master Mathias Shaw##135614
turnin Mission from the King##51714 |goto 70.72,27.08
accept War of Shadows##51715 |goto 70.72,27.08
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
Complete the "The Shadow War" Mission |q 51715/1 |goto 70.56,27.19
|tip This mission will take 2 hours to complete.
step
talk Master Mathias Shaw##135614
turnin War of Shadows##51715 |goto 70.72,27.09
accept Reinforcements##53074 |goto 70.72,27.09
step
talk Master Mathias Shaw##135614
Tell him _"I require reinforcements."_
|tip Recruit 1 Alliance Troop.
Order Troops |q 53074/1 |goto 70.72,27.09
step
talk Master Mathias Shaw##135614
turnin Reinforcements##53074 |goto 70.72,27.09
step
talk Halford Wyrmbane##135612
accept The Zandalar Campaign##51569 |goto 69.27,26.99
step
click Zandalar Campaign
|tip You will only be able to accept one of these quests.
|tip Pick whichever one you like, it doesn't matter.
#include "Choose_Foothold_1"
step
label "Zuldazar_Foothold_1"
#include "Zuldazar_Foothold_Quests"
step
|next "Adapting_Our_Tactics"
step
label "Nazmir_Foothold_1"
#include "Nazmir_Foothold_Quests"
step
|next "Adapting_Our_Tactics"
step
label "Voldun_Foothold_1"
#include "Voldun_Foothold_Quests"
step
|next "Adapting_Our_Tactics"
step
label "Adapting_Our_Tactics"
talk Alleria Windrunner##143846
accept Adapting Our Tactics##53583 |goto Boralus/0 70.64,27.39
step
talk Alleria Windrunner##143846
Tell her _"Show me our research options."_
Choose an Upgrade to Pursue |q 53583/1 |goto 70.64,27.39
step
talk Alleria Windrunner##143846
turnin Adapting Our Tactics##53583 |goto 70.64,27.39
step
talk Halford Wyrmbane##135612
accept The Ongoing Campaign##51961 |goto 69.27,27.00
step
click Zandalar Campaign
|tip You will only be able to accept one of these quests.
|tip Pick whichever one you like, it doesn't matter.
#include "Choose_Foothold_2"
step
label "Zuldazar_Foothold_2"
#include "Zuldazar_Foothold_Quests"
step
|next "Reach_Level_40"
step
label "Nazmir_Foothold_2"
#include "Nazmir_Foothold_Quests"
step
|next "Reach_Level_40"
step
label "Voldun_Foothold_2"
#include "Voldun_Foothold_Quests"
step
|next "Reach_Level_40"
step
label "Reach_Level_40"
Reach Level 40 |ding 40
|tip You must be at least level 40 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Halford Wyrmbane##135612
turnin The Azerite Advantage##53061 |goto Boralus/0 69.28,27.00 |only if haveq(53061) or completedq(53061)
accept Island Expedition##51903 |goto Boralus/0 69.28,27.00 |or |next "Start_Island_Expedition_Intro"
|tip
_NOTE:_
|tip You can only complete the Island Expedition introduction quest on one character.
|tip You may not be able to accept this quest.
Click Here If You Are Unable to Accept the Quest |confirm |q 52443 |future |or |next "The_Final_Foothold"
step
label "Start_Island_Expedition_Intro"
talk Flynn Fairwind##131290
turnin Island Expedition##51903 |goto 66.86,33.24
accept Island Expedition##51904 |goto 66.86,33.24
step
talk Flynn Fairwind##131290
Tell him _"Let's go!"_
Speak with Flynn Fairwind |q 51904/1 |goto 66.86,33.24
step
Watch the dialogue
|tip The waypoint arrow does not work on island expedition maps.
|tip Use your world map and minimap to complete the scenario objectives.
|tip The scenario is simple to do, everything is nearby and easy to find.
Explore the Uncharted Island |q 51904/2
step
Return to Boralus |goto Boralus/0 70.73,32.75 < 10 |noway |c |q 51904
step
talk Flynn Fairwind##131290
turnin Island Expedition##51904 |goto Boralus/0 66.87,33.23
step
Reach Level 40 |ding 40
|tip You must be at least level 40 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
label "The_Final_Foothold"
talk Halford Wyrmbane##135612
accept The Final Foothold##52443 |goto Boralus/0 69.28,26.99
step
click Zandalar Campaign
|tip Pick the last available quest.
#include "Choose_Foothold_3"
step
label "Zuldazar_Foothold_3"
#include "Zuldazar_Foothold_Quests"
step
|next "Uniting_Kul_Tiras"
step
label "Nazmir_Foothold_3"
#include "Nazmir_Foothold_Quests"
step
|next "Uniting_Kul_Tiras"
step
label "Voldun_Foothold_3"
#include "Voldun_Foothold_Quests"
step
|next "Uniting_Kul_Tiras"
step
label "Uniting_Kul_Tiras"
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
talk Earthen Guardian##154464
|tip He is a dark dwarf standing outside the building here.
accept A Dying World##53028 |goto Boralus/0 75.04,14.96
|tip You may need to relog for it to appear in your quest log.
step
talk Magni Bronzebeard##130216
turnin A Dying World##53028 |goto Silithus/0 42.22,44.28
accept The Heart of Azeroth##51211 |goto 42.22,44.28
step
click Titan Translocator
Use device in Silithus to travel to Chamber of the Heart |q 51211/1 |goto 43.20,44.52
step
talk Magni Bronzebeard##130216
Ask him _"What does Azeroth want of me, Magni?"_
Speak to Magni within the Chamber of Heart |q 51211/3
step
talk Magni Bronzebeard##136907
turnin The Heart of Azeroth##51211
accept Infusing the Heart##52428
step
Use the Heart of Azeroth ability on your screen
|tip There will be five nodes in the room.
Absorb the Azerite wounds |q 52428/1
step
Use the Heart of Azeroth to mend the seal |q 52428/3
|tip Go to the center of the circle in the room and click the button on your screen to begin channeling.
step
talk Magni Bronzebeard##136907
turnin Infusing the Heart##52428
accept A Brother's Help##54938
step
Click the triangular portal |goto Silithus/0 41.52,44.95 < 10 |c |noway
|tip Down the hall behind Magni.
step
talk Halford Wyrmbane##135612
|tip You will only be able to accept one of these quests.
accept Uniting Kul Tiras##51918 |goto Boralus/0 69.28,27.00 |or
accept Uniting Kul Tiras##52450 |goto Boralus/0 69.28,27.00 |or
step
Reach Friendly Reputation with the Proudmoore Admiralty in Tiragarde Sound |q 51918/1
|tip Use the "Tiragarde Sound" leveling guide to accomplish this.
|only if haveq(51918) or completedq(51918)
step
Reach Friendly Reputation with the Storm's Wake in Stormsong Valley |q 51918/2
|tip Use the "Stormsong Valley" leveling guide to accomplish this.
|only if haveq(51918) or completedq(51918)
step
Reach Friendly Reputation with the Order of Embers in Drustvar |q 51918/3
|tip Use the "Drustvar" leveling guide to accomplish this.
|only if haveq(51918) or completedq(51918)
step
talk Halford Wyrmbane##135612
turnin Uniting Kul Tiras##51918 |goto 69.28,27.00 |only if haveq(51918) or completedq(51918)
turnin Uniting Kul Tiras##52450 |goto 69.28,27.00 |only if haveq(52450) or completedq(52450)
accept Overseas Assassination##52026 |goto 69.28,27.00
step
talk Grand Admiral Jes-Tereth##135681
|tip At the top of the ship.
Tell her _"Set sail to Vol'dun."_
Speak with Jes-Tereth to Sail to Vol'dun |q 52026/1 |goto 67.95,26.70
step
Travel to Vol'dun |goto Vol'dun/0 35.60,33.17 < 7 |noway |c |q 52026
step
talk Quartermaster Alfin##136562
accept Pests##51142 |goto 36.57,32.30
step
kill 8 Thieving Snapper##136566 |q 51142/1 |goto 37.41,33.13
step
click Mysterious Trashpile
Follow the Big One |q 51142/2 |goto 36.18,36.79
step
talk Jani##136559
turnin Pests##51142 |goto 36.18,36.79
accept Curse of Jani##51145 |goto 36.18,36.79
step
Reach Quartermaster Alfin |q 51145/1 |goto 36.57,32.30
|tip Avoid enemies or they'll catch you and you'll have to start over.
step
kill Quartermaster Alfin##136563
|tip Right-click him.
Watch the dialogue
Bite Quartermaster Alfin |q 51145/2 |goto 36.57,32.30
step
talk Jani##136559
turnin Curse of Jani##51145 |goto 36.19,36.85
step
Run up the stairs |goto 36.86,35.69 < 15 |only if walking
talk Halford Wyrmbane##139705
turnin Overseas Assassination##52026 |goto 37.70,35.95
|tip If this quest doesn't complete, try abandoning it and reacquiring it from Halford Wyrmbane in Boralus.
accept The Vol'dun Plan##52027 |goto 37.70,35.95
step
talk Halford Wyrmbane##139705
Ask him _"What's your plan, High Commander?"_
Watch the dialogue
Discuss Halford's Strategy |q 52027/1 |goto 37.70,35.95
step
talk Shandris Feathermoon##139719
Ask her _"What's your plan, Shandris?"_
Watch the dialogue
Discuss Shandris's Strategy |q 52027/2 |goto 37.76,35.91
step
talk Halford Wyrmbane##139705
turnin The Vol'dun Plan##52027 |goto 37.70,35.95
accept Comb the Desert##52028 |goto 37.70,35.95
step
Follow the path |goto 39.59,37.55 < 20 |only if walking
Watch the dialogue
Search for Horde Activity |q 52028/1 |goto 40.75,47.83
step
talk Shandris Feathermoon##139719
turnin Comb the Desert##52028 |goto 40.75,47.83
accept Dirty Work##52029 |goto 40.75,47.83
step
kill Nazlara##139742
|tip She walks around this area.
collect Reliquary Orders##161086 |q 52029/1 |goto 40.73,49.01
step
talk Halford Wyrmbane##139705
turnin Dirty Work##52029 |goto 40.70,47.84
accept Keep Combing##52030 |goto 40.70,47.84
step
Watch the dialogue
Search for More Reliquary Operatives |q 52030/1 |goto 44.99,58.75
step
Watch the dialogue
talk Shandris Feathermoon##139719
turnin Keep Combing##52030 |goto 44.99,58.75
accept Classic Reliquary##52031 |goto 44.99,58.75
step
Follow the path up |goto 44.89,60.30 < 15 |only if walking
kill Elisa Veilsong##139752
collect Reliquary Map: Vol'dun##161087 |q 52031/1 |goto 45.28,60.65
step
talk Halford Wyrmbane##139705
turnin Classic Reliquary##52031 |goto 44.96,58.77
accept Never Stop Combing##52032 |goto 44.96,58.77
step
Watch the dialogue
Find the Exiles' Enclave |q 52032/1 |goto 41.09,72.61
step
Watch the dialogue
talk Halford Wyrmbane##139705
turnin Never Stop Combing##52032 |goto 41.09,72.61
accept Improvised Survival##52035 |goto 41.09,72.61
step
talk Shandris Feathermoon##139719
accept A Message to the Zandalari##52034 |goto 41.11,72.57
step
talk Explosioneer Zoidfuse##139722
accept They Have Alpacas Here##52036 |goto 41.14,72.40
step
use the Ultra-Safe Electrified Alpaca Lasso##161333
|tip Use it on a Lost Alpaca around this area.
Click Here After Capturing a Lost Alpaca |confirm |goto 40.69,72.70 |q 52036
step
Bring a Lost Alpaca back to Explosioneer Zoidfuse |q 52036/1 |goto 41.14,72.50
step
talk Explosioneer Zoidfuse##139722
turnin They Have Alpacas Here##52036 |goto 41.14,72.41
stickystart "Collect_Zandalari_Dunemelons"
stickystart "Kill_Zandalari_Exiles"
step
click Zandalari Water Jugs+
|tip They look like wooden boxes with glass bottles in them on the ground and inside buildings around this area.
collect 15 Zandalari Water Jug##161240 |q 52035/2 |goto 40.72,75.27
step
label "Collect_Zandalari_Dunemelons"
click Zandalari Dunemelons+
|tip They look like wooden boxes with watermelon slices in them on the ground and inside buildings around this area.
collect 15 Zandalari Dunemelon##161241 |q 52035/1 |goto 40.72,75.27
step
label "Kill_Zandalari_Exiles"
kill 12 Zandalari Exile##135311 |q 52034/1 |goto 40.72,75.27
step
talk Halford Wyrmbane##139705
turnin Improvised Survival##52035 |goto 41.09,72.62
step
talk Shandris Feathermoon##139719
turnin A Message to the Zandalari##52034 |goto 41.11,72.57
step
talk Halford Wyrmbane##139705
accept Splitting Up##52038 |goto 41.09,72.62
step
Follow the path |goto 33.25,76.31 < 30 |only if walking
Follow the path |goto 31.57,78.43 < 20 |only if walking
talk Shandris Feathermoon##139719
turnin Splitting Up##52038 |goto 29.93,78.56
accept Full of Arrows##52040 |goto 29.93,78.56
accept Delayed Deathification##52039 |goto 29.93,78.56
stickystart "Bury_Remote_Detonation_Deathbombs"
step
kill Arlethal Sunwatcher##140567 |q 52040/1 |goto 28.69,75.61
|tip Shandris Feathermoon will help you fight.
|tip She will appear when he is at about 50% health.
step
label "Bury_Remote_Detonation_Deathbombs"
click Remote-Detonation Deathbomb+
|tip They look like small yellow bombs on the ground around this area.
Bury #8# Remote-Detonation Deathbomb |q 52039/1 |goto 29.08,76.33
step
talk Shandris Feathermoon##139719
turnin Full of Arrows##52040 |goto 29.93,78.55
turnin Delayed Deathification##52039 |goto 29.93,78.55
accept Report to Wyrmbane##52041 |goto 29.93,78.55
step
Follow the water |goto 31.41,84.36 < 30 |only if walking
Follow the water |goto 33.85,86.30 < 30 |only if walking
talk Halford Wyrmbane##139705
turnin Report to Wyrmbane##52041 |goto 39.64,83.91
accept The Big Boom##52042 |goto 39.64,83.91
step
talk Explosioneer Zoidfuse##135388
fpath Deadwood Cove |goto 39.79,83.82 |q 52042
step
talk Explosioneer Zoidfuse##135388
Tell him _"Push the big red button when you tell me to. Got it."_
Begin Riding in the Flying Machine |invehicle |goto 39.79,83.82 |q 52042
step
Watch the dialogue
|tip Use the abilities on your action bar.
|tip New abilities will appear when you need to use them.
Initiate the Vol'dun Explosion Protocol |q 52042/1 |goto 38.49,71.04
step
Watch the dialogue
Return to Deadwood Cove |goto 39.75,83.87 < 7 |c |q 52042 |notravel
step
talk Halford Wyrmbane##139705
turnin The Big Boom##52042 |goto 39.65,83.92
accept Blood on the Sand##52146 |goto 39.65,83.92
step
Watch the dialogue
Wait for Kelsey Steelspark to Return |q 52146/2 |goto 39.65,83.92
step
click 7th Legion Spyglass
Watch the dialogue
Wait for Guzbert Gizmoflank to Return |q 52146/1 |goto 38.68,83.02
step
talk Halford Wyrmbane##139705
turnin Blood on the Sand##52146 |goto 39.65,83.91
step
Follow the path |goto 40.17,33.97 < 20 |only if walking
Follow the path up |goto 46.13,24.15 < 20 |only if walking
Cross the bridge |goto 49.31,17.38 < 20 |only if walking
Follow the path up |goto 51.26,17.60 < 20 |only if walking
Follow the path down |goto 58.09,16.75 < 20 |only if walking
Cross the bridge |goto 59.90,20.22 < 20 |only if walking
talk Scroll of Flight##135387
fpath Tortaka Refuge |goto 61.89,21.66 |q 52147 |future
step
Follow the path |goto Nazmir/0 55.77,34.76 < 30 |only if walking
Follow the path |goto Nazmir/0 55.32,25.91 < 20 |only if walking
talk Joseph Redfield##139995
fpath Redfield's Watch |goto Nazmir/0 50.81,20.77 |q 52147 |future
step
Follow the path |goto Zuldazar/0 80.15,55.25 < 20 |only if walking
Follow the path |goto Zuldazar/0 80.88,58.92 < 20 |only if walking
Follow the path |goto Zuldazar/0 77.83,63.00 < 20 |only if walking |notravel
clicknpc Scroll of Flight##134008
fpath Seeker's Outpost |goto Zuldazar/0 70.45,65.31 |q 52147 |future
step
Follow the path |goto 77.64,48.40 < 20 |only if walking
clicknpc Scroll of Flight##134011
fpath Atal'Gral |goto 79.97,41.40 |q 52147 |future
step
Follow the road up |goto 77.38,38.53 < 20 |only if walking
Cross the bridge |goto 76.29,35.69 < 15 |only if walking
Run up the stairs |goto 72.87,29.02 < 20 |only if walking
talk Scroll of Flight##136331
fpath Scaletrader Post |goto 70.78,29.60 |q 52147 |future
step
Follow the road |goto 69.40,28.13 < 30 |only if walking
Follow the path up |goto 68.09,19.39 < 30 |only if walking
talk Lasa the Galerider##123006
fpath Nesingwary's Gameland |goto 66.19,17.60 |q 52147 |future
step
talk Halford Wyrmbane##135612
accept Crippling the Horde##52147 |goto Boralus/0 69.27,27.01
step
talk Grand Admiral Jes-Tereth##135681
|tip At the top of the ship.
Tell her _"Set sail for Nazmir."_
Speak with Jes-Tereth to Sail to Nazmir |q 52147/1 |goto 67.95,26.70
step
Travel to Fort Victory |goto Nazmir/0 61.95,39.92 < 10 |noway |c |q 52147
step
talk Shandris Feathermoon##140258
turnin Crippling the Horde##52147 |goto 61.97,41.24
accept How to Kill a Dark Ranger##52150 |goto 61.97,41.24
step
talk Shandris Feathermoon##140258
Tell her _"Let's go over the plan to kill Captain Areiel."_
Watch the dialogue
Explain Shandris's Plan |q 52150/1 |goto 61.97,41.24
step
talk Shandris Feathermoon##140258
turnin How to Kill a Dark Ranger##52150 |goto 61.97,41.24
accept Tortollans in Distress##52156 |goto 61.97,41.24
step
talk John J. Keeshan##139609
accept The Savage Hunt##52158 |goto 61.78,41.32
stickystart "Slay_Blood_Trolls_And_Allies"
step
Follow the path |goto Nazmir/0 59.68,31.54 < 20 |only if walking
clicknpc Tortollan Captive##128001+
|tip They look like friendly stunned turtle NPCs around this area.
Rescue #6# Tortollan Captives |q 52156/1 |goto 59.96,27.53
step
label "Slay_Blood_Trolls_And_Allies"
Kill enemies around this area
Slay #15# Blood Trolls and Allies |q 52158/1 |goto 59.96,27.53
step
talk Rescued Tortollan##140320
Ask him _"Can you tell us about the Horde's movements in the area?"_
Watch the dialogue
Speak to the Rescued Tortollan in Redfield's Watch |q 52156/2 |goto 51.27,21.79
step
talk John J. Keeshan##139609
turnin The Savage Hunt##52158 |goto 51.27,21.89
step
talk Shandris Feathermoon##140258
turnin Tortollans in Distress##52156 |goto 51.33,21.87
accept Ending Areiel##52170 |goto 51.33,21.87
step
talk John J. Keeshan##139609
accept One Option: Fire##52171 |goto 51.27,21.89
accept They Can't Stay Here##52172 |goto 51.27,21.89
stickystart "Slay_Horde_Soldiers"
step
click Food Cache
Destroy the Food Cache |q 52171/3 |goto 41.25,27.54
step
click Bwonsamdi Offerings
Destroy the Bwonsamdi Offerings |q 52171/1 |goto 39.96,28.45
step
click Medicinal Supplies
Destroy the Medicinal Supplies |q 52171/2 |goto 37.68,28.87
step
kill Ranger Captain Areiel##140399
collect Horde Missive##161332 |q 52170/1 |goto 35.83,29.31
step
click Armory Supplies
Destroy the Armory Supplies |q 52171/4 |goto 37.90,32.30
step
label "Slay_Horde_Soldiers"
Kill enemies around this area
Slay #12# Horde Soldiers |q 52172/1 |goto 38.81,31.94
step
talk John J. Keeshan##139609
turnin One Option: Fire##52171 |goto 51.27,21.89
turnin They Can't Stay Here##52172 |goto 51.27,21.89
step
talk Shandris Feathermoon##140258
turnin Ending Areiel##52170 |goto 51.34,21.87
accept Meeting of the Minds##52208 |goto 51.34,21.87
step
talk Shandris Feathermoon##140519
Choose _(Take the flask of invisibility.)_
Speak with Shandris Feathermoon |q 52208/1 |goto 42.14,39.73
step
use the Invisibility Flask##163196
Become Invisible |havebuff 132320 |q 52208
step
Run up the stairs |goto 39.75,41.89 < 10 |only if walking
Watch the dialogue
|tip None of the enemies can detect you when you're invisible, unless you walk too close to them.
|tip Don't mount up, or you'll lose your invisibility.
Listen to the Horde Meeting |q 52208/2 |goto 40.20,43.86
step
talk Shandris Feathermoon##140519
|tip None of the enemies can detect you when you're invisible, unless you walk too close to them.
|tip Don't mount up, or you'll lose your invisibility.
turnin Meeting of the Minds##52208 |goto 42.13,39.74
accept Target: Blood Prince Dreven##52219 |goto 42.13,39.74
step
Follow the path |goto 41.41,45.20 < 30 |only if walking
Follow the path |goto 37.24,48.28 < 30 |only if walking
Continue following the path |goto 36.76,60.79 < 30 |only if walking
Cross the bridge |goto 31.89,65.89 < 20 |only if walking
Follow the path |goto 26.07,61.08 < 30 |only if walking
Enter the building |goto 20.68,60.77 < 15 |walk
talk John J. Keeshan##140578
|tip Inside the building.
Tell him _"I'm ready to kill Dreven and his followers."_
Meet John J. Keeshan |q 52219/1 |goto 20.15,60.76
step
Watch the dialogue
|tip Inside the building.
Kill the enemies that attack
kill Blood Prince Dreven##140603
Watch the dialogue
Kill Blood Prince Dreven and His Cohorts |q 52219/2 |goto 20.26,60.72
step
talk Shandris Feathermoon##140258
turnin Target: Blood Prince Dreven##52219 |goto 61.97,41.25
step
talk Halford Wyrmbane##135612
turnin Operation: Cutpurse##53070 |goto Boralus/0 69.28,26.99 |only if haveq(53070) or completedq(53070)
accept Our Next Target##52154 |goto Boralus/0 69.28,26.99
step
Watch the dialogue
Resolve the Debate |q 52154/1 |goto 69.28,26.99
step
talk Halford Wyrmbane##135612
turnin Our Next Target##52154 |goto 69.28,26.99
step
talk Magister Umbric##140348
accept The Void Elves Stand Ready##52173 |goto 69.34,26.57
step
talk Grand Admiral Jes-Tereth##135681
|tip At the top of the ship.
Tell her _"Set sail for Xibala in Zuldazar."_
Speak with Jes-Tereth to Sail to Zuldazar |q 52173/1 |goto 67.95,26.70
step
Travel to Zuldazar |goto Zuldazar/0 40.80,71.05 < 10 |noway |c |q 52173
step
Meet Magister Umbric in Xibala |q 52173/2 |goto 40.59,70.68
step
talk Magister Umbric##140477
turnin The Void Elves Stand Ready##52173 |goto 40.59,70.68
accept Bilgewater Bonanza Go Boom##52205 |goto 40.59,70.68
accept The Void Solution##52204 |goto 40.59,70.68
accept Find the Paper Trail##52203 |goto 40.59,70.68
stickystart "Destroy_Bilgewater_Frackers"
stickystart "Slay_Bilgewater_Goblins"
step
Follow the path |goto 38.88,72.21 < 30 |only if walking
click Void Tear
Open the Void Tear |q 52205/2 |goto 35.41,70.82
step
kill Boss Blastmouth##140510
collect Orders from Gallywix##161420 |q 52203/1 |goto 35.28,66.66
step
label "Destroy_Bilgewater_Frackers"
use Magister Umbric's Void Shard##161422
|tip Use it on Bilgewatwer Frackers around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #4# Bilgewater Frackers |q 52204/1 |goto 35.12,68.93
step
label "Slay_Bilgewater_Goblins"
Kill Bilgewater enemies around this area
click Void Tear+
|tip They look like small floating purple smoke balls around this area.
|tip They will summon a friendly NPC to help you fight.
Slay #12# Bilgewater Goblins |q 52205/1 |goto 35.12,68.93
step
talk Magister Umbric##140477
turnin Bilgewater Bonanza Go Boom##52205 |goto 40.59,70.68
turnin The Void Solution##52204 |goto 40.59,70.68
turnin Find the Paper Trail##52203 |goto 40.59,70.68
accept A Greedy Goblin's Paradise##52241 |goto 40.59,70.68
step
Watch the dialogue
click Void Portal |goto 40.55,70.64
Travel to Atal'Dazar |goto 40.39,39.70 < 10 |noway |c |q 52241
step
talk Magister Umbric##140712
turnin A Greedy Goblin's Paradise##52241 |goto 40.33,39.71
accept Chasing Gallywix##52247 |goto 40.33,39.71
step
Run up the stairs |goto 40.38,41.17 < 10 |only if walking
Find Gallywix |q 52247/1 |goto 40.38,43.44
step
Use Gallywix's Personal Teleporter |q 52247/2 |goto 40.42,44.30
step
Teleport to the Gallywix Pleasure Palace |goto Azshara/0 21.60,52.33 < 10 |noway |c |q 52247
step
_Next to you:_
talk Magister Umbric
turnin Chasing Gallywix##52247
accept I Take No Pleasure In This##52259
step
Kill Palace enemies around this area
click Party Plunger+
|tip They look like small metal boxes with handles on top of them on the ground around this area.
click Pleasure Palace Barbecue+
|tip They look like brown barbeque grills with the lid open on the ground around this area.
Crash Gallywix's Party |q 52259/1 |goto 21.08,55.54
step
_Next to you:_
talk Magister Umbric
turnin I Take No Pleasure In This##52259
accept We Have Him Cornered##52260
step
kill Trade Prince Gallywix##140770 |q 52260/1 |goto 21.06,60.70
|tip Standing on the wooden deck.
step
_Next to you:_
talk Magister Umbric
turnin We Have Him Cornered##52260
accept Gallywix Got Away##52261
step
Watch the dialogue
click Void Portal |goto 21.09,60.27
Return to Boralus |goto Boralus/0 69.85,27.06 < 10 |noway |c |q 52261
step
talk Halford Wyrmbane##135612
turnin Gallywix Got Away##52261 |goto 69.27,26.99
step
talk Halford Wyrmbane##135612
turnin Operation: Gryphon's Claw##53071 |goto 69.27,27.00 |only if haveq(53071) or completedq(53071)
accept Intercepted Orders##52308 |goto 69.27,27.00
step
Watch the dialogue
Listen to Halford's Report |q 52308/1 |goto 69.27,27.00
step
talk Halford Wyrmbane##135612
turnin Intercepted Orders##52308 |goto 69.27,27.00
step
talk Shandris Feathermoon##141356
accept Hunting Blood Prince Dreven##52489 |goto 69.30,27.17
step
clicknpc Swiftwing##141361
Mount Swiftwing |q 52489/1 |goto 69.70,27.63
step
Watch the dialogue
Locate the Horde Ships |q 52489/2
step
_Next to you:_
|tip As you fly.
talk Shandris Feathermoon
turnin Hunting Blood Prince Dreven##52489
accept Behind Enemy Boats##52490
step
Reach the Banshee's Wail |goto 1156 36.56,52.17 < 10 |q 52490
|tip Use the ability on your action bar.
step
click Rope Ladder
Climb in the Banshee's Wail Gunport |q 52490/1 |goto 36.64,52.23
stickystart "Slay_Sailors_On_The_Banshees_Wail"
step
click The Banshee's Wail Cannon
|tip Inside the ship.
accept Broadside Bedlam##52491 |goto 36.91,52.46
step
click Azerite-Infused Cannonballs
|tip Inside the ship.
collect Azerite-Infused Cannonballs##162528 |q 52491/1 |goto 36.97,52.01
step
click Azerite-Infused Gunpowder
|tip Inside the ship.
collect Azerite-Infused Gunpowder##162529 |q 52491/2 |goto 36.82,52.84
step
click Blazing Torch
|tip Inside the ship.
collect Banshee's Wail Torch##162537 |q 52491/3 |goto 36.64,53.30
step
click The Banshee's Wail Cannon
|tip Inside the ship.
Fire the Cannon |q 52491/4 |goto 36.76,52.93 |count 1
step
click The Banshee's Wail Cannon
|tip Inside the ship.
Fire the Cannon |q 52491/4 |goto 36.84,52.69 |count 2
step
click The Banshee's Wail Cannon
|tip Inside the ship.
Fire the Cannon |q 52491/4 |goto 36.91,52.46 |count 3
step
label "Slay_Sailors_On_The_Banshees_Wail"
Kill enemies around this area
Slay #10# Sailors on the Banshee's Wail |q 52490/2 |goto 36.71,52.79
step
click Battlechest of the Horde
|tip Upstairs, on the deck of the ship.
Open the Battlechest of the Horde |q 52490/3 |goto 36.61,53.02
step
Watch the dialogue
Escape with Falstad Wildhammer |invehicle |goto 36.61,53.02 |q 52490
step
_As You Fly:_
talk Falstad Wildhammer##141541
turnin Behind Enemy Boats##52490
turnin Broadside Bedlam##52491
accept The Wildhammer Specialty##52492
step
Order Falstad to Start the Attack |q 52492/1
|tip Use the ability on your action bar.
stickystart "Burn_The_Sails_Of_The_Crimson_Squall"
stickystart "Destroy_Horde_Rowboats"
stickystart "Slay_Horde_Sailors"
step
Burn the Deck of The Crimson Squall |q 52492/4 |goto 42.69,54.74
|tip Use the abilities on your action bar.
|tip Aim at the deck of the large ship in the water.
step
label "Burn_The_Sails_Of_The_Crimson_Squall"
Burn the Sails of The Crimson Squall |q 52492/5 |goto 42.69,54.74
|tip Use the abilities on your action bar.
|tip Aim at the wooden sail masts of the large ship in the water.
step
label "Destroy_Horde_Rowboats"
Destroy #15# Horde Rowboats |q 52492/3 |goto 39.06,54.22
|tip Use the abilities on your action bar.
|tip They look like small wooden boats in the water around this area.
step
label "Slay_Horde_Sailors"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #60# Horde Sailors |q 52492/2 |goto 39.06,54.22
step
Watch the dialogue
Board the Crimson Squall |goto 41.63,56.90 < 10 |q 52492 |notravel
step
talk Shandris Feathermoon##142228
turnin The Wildhammer Specialty##52492 |goto 41.75,57.01
accept An Unnatural Crew##52493 |goto 41.75,57.01
accept Foul Crystals for Foul People##52494 |goto 41.75,57.01
accept Kings' Rest##53131 |goto 41.75,57.01
stickystart "Kill_Horde_On_The_Crimson_Squall"
step
click San'layn Crystal+
|tip They look like large floating red crystals on the ship around this area.
Destroy #5# San'layn Crystals |q 52494/1 |goto 41.58,56.18
step
label "Kill_Horde_On_The_Crimson_Squall"
Kill enemies around this area
|tip On the ship.
Kill #12# Horde on The Crimson Squall |q 52493/1 |goto 41.58,56.18
step
talk Shandris Feathermoon##142232
|tip Inside the ship.
|tip On the middle floor, in the captain's room.
turnin An Unnatural Crew##52493 |goto 41.64,55.43
turnin Foul Crystals for Foul People##52494 |goto 41.64,55.43
accept Ending the San'layn Threat##52495 |goto 41.64,55.43
step
Watch the dialogue
|tip Follow Shandris Feathermoon as she runs.
kill San'layn Neophyte##142285 |q 52495/1 |goto 41.58,55.67
|tip Inside the ship.
|tip On the bottom floor.
step
Escape the Ship and Signal Falstad |q 52495/2 |goto 42.11,55.79
|tip Jump out of the window into the water.
|tip Use the "Signal Falstad" ability.
|tip It appears as a button on the screen.
step
_Next to you:_
Watch the dialogue
talk Shandris Feathermoon
turnin Ending the San'layn Threat##52495
accept A Clean Escape##52496
step
Watch the dialogue
Return to Boralus |goto Boralus/0 69.93,26.83 < 10 |noway |c |q 52496
step
talk Halford Wyrmbane##135612
turnin A Clean Escape##52496 |goto Boralus/0 69.27,26.99
step
talk Halford Wyrmbane##135612
turnin Operation: Heartstrike##53072 |goto Boralus/0 69.27,26.98 |only if haveq(53072) or completedq(53072)
accept Bringing Down the Fleet##52473 |goto Boralus/0 69.27,26.98
step
talk Grand Admiral Jes-Tereth##135681
|tip At the top of the ship.
Tell her _"Set sail for Zuldazar."_
Speak with Jes-Tereth to sail to Zuldazar |q 52473/1 |goto 67.95,26.70
step
talk Halford Wyrmbane##140257
turnin Bringing Down the Fleet##52473 |goto Zuldazar/0 40.77,70.85
accept How to Sink a Zandalari Battleship##52282 |goto Zuldazar/0 40.77,70.85
step
talk Halford Wyrmbane##140257
Tell him _"Let's discuss our plan to weaken the Zandalari fleet."_
Watch the dialogue
Discuss the Plan |q 52282/1 |goto 40.77,70.85
step
talk Halford Wyrmbane##140257
turnin How to Sink a Zandalari Battleship##52282 |goto 40.77,70.85
step
talk Falstad Wildhammer##141287
accept Under the Cover of Swiftwing##52281 |goto 40.80,70.90
step
clicknpc Swiftwing##141301
Begin Riding to the Isle of Fangs |invehicle |goto 40.85,70.92 |q 52281
step
Watch the dialogue
Ride Swiftwing to Isle of Fangs |q 52281/1 |goto 57.68,87.50 |notravel
step
talk Kelsey Steelspark##141290
turnin Under the Cover of Swiftwing##52281 |goto 57.64,87.59
accept Ship Logs##52284 |goto 57.64,87.59
step
talk John J. Keeshan##141289
accept Sabotaging the Pa'ku##52283 |goto 57.64,87.55
stickystart "Collect_Naval_Records"
step
Follow the path |goto 54.93,85.70 < 30 |only if walking
click Remote-Detonation Deathbomb
|tip Underwater.
Plant the Remote-Detonation Deathbomb |q 52283/1 |goto 51.56,86.74 |count 1
step
click Remote-Detonation Deathbomb
|tip Underwater.
Plant the Remote-Detonation Deathbomb |q 52283/1 |goto 51.94,86.86 |count 2
step
click Remote-Detonation Deathbomb
|tip Underwater.
Plant the Remote-Detonation Deathbomb |q 52283/1 |goto 51.90,87.46 |count 3
step
click Remote-Detonation Deathbomb
|tip Underwater.
Plant the Remote-Detonation Deathbomb |q 52283/1 |goto 51.51,86.98 |count 4
step
label "Collect_Naval_Records"
use Kelsey's Jump Boots##162264
|tip You can use them to jump up to help navigate this area.
Kill enemies around this area
collect 6 Naval Records##162253 |q 52284/1 |goto 53.15,87.10
step
Follow the path |goto 54.96,85.83 < 30 |only if walking
talk John J. Keeshan##141289
turnin Sabotaging the Pa'ku##52283 |goto 57.64,87.55
step
talk Kelsey Steelspark##141290
turnin Ship Logs##52284 |goto 57.64,87.59
accept The Enlarged Miniaturized Submarine##52285 |goto 57.64,87.59
step
click Enlarged Miniaturized Submarine
Beginning Crossing the Bay of Kings |invehicle |goto 57.42,85.92 |q 52285
step
Watch the dialogue
Cross the Bay of Kings in the Enlarged Miniaturized Submarine |q 52285/1 |goto 49.51,70.46 |notravel
step
talk Shandris Feathermoon##141291
turnin The Enlarged Miniaturized Submarine##52285 |goto 48.89,68.55
accept My Enemy's Enemy is My Disguise##52290 |goto 48.89,68.55
step
talk Magister Umbric##141288
Tell him _"Umbric, I'm ready to become a blood troll."_
Watch the dialogue
Complete the Blood Troll Disguise |q 52290/1 |goto 48.90,68.58
step
talk Shandris Feathermoon##141291
turnin My Enemy's Enemy is My Disguise##52290 |goto 48.88,68.55
accept Right Beneath Their Nose##52286 |goto 48.88,68.55
accept Intelligence Denial##52287 |goto 48.88,68.55
step
talk Magister Umbric##141288
accept Void Vacation##52288 |goto 48.91,68.58
step
Become Invisible |havebuff 132320 |goto 48.91,68.58 |q 52286
|tip Use the "Flask of Invisibility" ability.
|tip It appears as a button on the screen.
stickystart "Throw_Horde_Emissaries_In_Void_Rifts"
step
click Remote-Detonation Deathbomb
|tip Underwater.
Plant the Remote-Detonation Deathbomb |q 52286/1 |goto 50.31,65.81 |count 1
step
click Remote-Detonation Deathbomb
|tip Underwater.
Plant the Remote-Detonation Deathbomb |q 52286/1 |goto 50.63,65.05 |count 2
step
click Remote-Detonation Deathbomb
|tip Underwater.
Plant the Remote-Detonation Deathbomb |q 52286/1 |goto 49.96,65.02 |count 3
step
Run up the stairs |goto 48.63,66.31 < 15 |only if walking
Run up the stairs |goto 47.88,66.65 < 15 |only if walking
kill Spymaster Stormhorn##141530 |q 52287/1 |goto 47.56,66.86
|tip Avoid Trained Sabertusks, they can see through your disguise.
step
Become Invisible |havebuff 132320 |goto 47.56,66.86 |q 52287
|tip Use the "Flask of Invisibility" ability.
|tip It appears as a button on the screen.
step
Run down the stairs |goto 47.87,67.25 < 15 |only if walking
Run up the stairs |goto 46.86,62.60 < 15 |only if walking
Enter the building |goto 45.96,62.12 < 10 |walk
kill Spymaster Bloodsnarl##141533 |q 52287/2 |goto 45.83,62.11
|tip Inside the building.
|tip Avoid Trained Sabertusks, they can see through your disguise.
step
Become Invisible |havebuff 132320 |goto 45.83,62.11 |q 52287
|tip Use the "Flask of Invisibility" ability.
|tip It appears as a button on the screen.
step
Run up the stairs |goto 46.45,61.68 < 15 |only if walking
Enter the building |goto 46.33,60.14 < 10 |walk
kill Spymaster Bilespreader##141535 |q 52287/3 |goto 46.33,59.94
|tip Inside the building.
|tip Avoid Trained Sabertusks, they can see through your disguise.
step
Become Invisible |havebuff 132320 |goto 46.33,59.94 |q 52287
|tip Use the "Flask of Invisibility" ability.
|tip It appears as a button on the screen.
step
label "Throw_Horde_Emissaries_In_Void_Rifts"
use the Portal Orb##162450
|tip Use it on Horde Emissaries around this area.
Throw #5# Horde Emissaries in Void Rifts |q 52288/1 |goto 47.40,64.08
step
talk Shandris Feathermoon##141291
turnin Right Beneath Their Nose##52286 |goto 48.89,68.56
turnin Intelligence Denial##52287 |goto 48.89,68.56
step
talk Magister Umbric##141288
turnin Void Vacation##52288 |goto 48.90,68.58
step
talk Shandris Feathermoon##141291
accept Victory is Assured##52289 |goto 48.88,68.55
step
talk Halford Wyrmbane##140257
turnin Victory is Assured##52289 |goto 40.47,71.49
accept Victory Was Assured##52291 |goto 40.47,71.49
step
clicknpc Swiftwing##141611
Begin Riding to Gral's Call |invehicle |goto 40.52,71.33 |q 52291
step
Watch the dialogue
Ride Swiftwing to Gral's Call |q 52291/1 |goto 35.10,77.32 |notravel
step
talk Halford Wyrmbane##141719
turnin Victory Was Assured##52291 |goto 35.14,77.31
accept Leave None Alive##52788 |goto 35.14,77.31
step
Kill Zandalari enemies around this area
Slay #10# Zandalari |q 52788/1 |goto 34.70,76.51
step
_Next to you:_
talk Halford Wyrmbane
turnin Leave None Alive##52788
accept Silencing the Advisor##52789
step
kill Advisor Ko'jan##141717 |q 52789/1 |goto 34.98,77.03
|tip All the way downstairs inside the ship.
step
_Next to you:_
talk Halford Wyrmbane
turnin Silencing the Advisor##52789
accept An End to the Killing##52790
step
Travel to Gral's Call Upper Deck |q 52790/1 |goto 34.70,76.77
|tip Upstairs on the deck of the ship.
step
talk Shandris Feathermoon##141291
Ask her _"Shandris, can you give me a status report?"_
Watch the dialogue
Assess the Situation with Shandris Feathermoon |q 52790/2 |goto 34.83,76.33
step
talk Halford Wyrmbane##140257
Tell him _"Halford, let's behin the process to blow up this ship."_
Watch the dialogue
Tell Halford to Blow Up the Ship |q 52790/3 |goto 34.84,76.41
step
Enter the building |goto Stormwind City/0 80.65,37.84 < 15 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin An End to the Killing##52790 |goto Stormwind City/0 85.92,31.57
step
talk Shandris Feathermoon##141291
|tip Inside the building.
accept Champion: Shandris Feathermoon##53098 |goto 85.51,31.87
|tip If the quest doesn't appear, reload, leave the building and return, or log out then back in.
step
talk Master Mathias Shaw##135614
accept The Calm Before##53986 |goto Boralus/0 70.71,27.10
step
Run up the stairs |goto 48.66,62.60 < 20 |only if walking
Run up the stairs |goto 43.39,67.83 < 20 |only if walking
Cross the bridge |goto 41.01,72.32 < 15 |only if walking
talk Lady Jaina Proudmoore##145580
Tell her _"Sorry to disturb you. I've brought a report from Master Shaw."_
Take the Report to Jaina |q 53986/1 |goto Tiragarde Sound/0 67.26,36.23
step
Watch the dialogue
Wait a Moment |q 53986/2 |goto 67.00,36.23
step
talk Lady Jaina Proudmoore##145580
turnin The Calm Before##53986 |goto 66.99,36.23
accept To Anglepoint##53888 |goto 66.99,36.23
step
Cross the bridge |goto Boralus/0 41.00,70.09 < 15 |only if walking
Run down the stairs |goto Boralus/0 43.42,69.10 < 15 |only if walking
Cross the bridge |goto Boralus/0 57.22,58.99 < 20 |only if walking
Meet Jaina at the Canal by Crosswind Commons |q 53888/1 |goto Boralus/0 63.91,54.19
step
click Boat to Anglepoint Wharf
Get in the Boat |invehicle |goto 63.75,52.98 |q 53888
step
Watch the dialogue
Take the Boat to Anglepoint Wharf |q 53888/2 |goto Tiragarde Sound/0 42.16,29.85 |notravel
step
Watch the dialogue
Walk with Jaina Proudmoore |condition readyq(53888) |goto 42.16,29.85 |q 53888
step
talk Lady Jaina Proudmoore##145580
turnin To Anglepoint##53888 |goto 42.16,29.85
accept Stand Fast##53896 |goto 42.16,29.85
step
talk Lady Jaina Proudmoore##145580
Tell her _"I'm ready to face the Horde."_
Speak with Jaina Proudmoore |q 53896/1 |goto 42.16,29.85
step
Kill the enemies that attack in waves
kill Zanda Frostsong##145895
Protect Jaina Proudmoore |q 53896/2 |goto 42.35,29.71
step
talk Lady Jaina Proudmoore##145580
turnin Stand Fast##53896 |goto 42.13,29.81
accept Besieged Allies##53909 |goto 42.13,29.81
accept Repel the Horde!##53910 |goto 42.13,29.81
step
talk Taelia Fordragon##148015
accept Squad Goals##54519 |goto 42.13,29.88
step
talk Okri Putterwrench##145632
accept Zero Zeppelins##54518 |goto 42.17,29.78
step
talk Okri Putterwrench##145632
Choose _<Take a Jury-Rigged Hand Cannon from Okri.>_
Get a Jury-Rigged Hand Cannon from Okri |q 54518/1 |goto 41.69,29.79
step
Test the Jury-Rigged Hand Cannon |q 54518/2 |goto 41.67,29.70
|tip Use the "Use Jury-Rigged Hand Cannon" ability on the Horde Bombadier.
|tip It appears as a button on the screen.
step
talk Rosaline Madison##145593
turnin Besieged Allies##53909 |goto 41.52,27.03
accept Outrigger Outfitters##53916 |goto 41.52,27.03
stickystart "Defeat_Horde_Invaders_53910"
stickystart "Slay_Horde_Bombardiers_54518"
stickystart "Collect_Outrigger_Weapons_53916"
step
clicknpc Emma Swiftwind##148313
Find Emma Swiftwind |q 54519/2 |goto 41.84,27.38
step
clicknpc Edward Nash##148311
Find Edward Nash |q 54519/4 |goto 42.35,26.55
step
clicknpc Tamara Barrie##148312
Find Tamara Barrie |q 54519/3 |goto 43.00,27.01
step
clicknpc Carter Riptide##148310
Find Carter Riptide |q 54519/1 |goto 43.40,27.87
step
label "Defeat_Horde_Invaders_53910"
Kill enemies around this area
Defeat Axe Throwers and Berserkers |q 53910/1 |goto 41.60,26.76
step
label "Slay_Horde_Bombardiers_54518"
Slay #4# Horde Bombardiers |q 54518/3 |goto 41.60,26.76
|tip Use the "Use Jury-Rigged Hand Cannon" ability on Horde Bombadiers.
|tip They look like red blimps frozen in ice on the ground around this area.
|tip It appears as a button on the screen.
step
label "Collect_Outrigger_Weapons_53916"
click Outrigger Weapon##312356+
|tip They look like harpoons on the ground around this area.
collect 10 Outrigger Weapon##166280 |q 53916/1 |goto 41.60,26.76
step
talk Okri Putterwrench##145632
turnin Zero Zeppelins##54518 |goto 41.53,27.07
step
talk Rosaline Madison##145593
turnin Outrigger Outfitters##53916 |goto 41.52,27.03
turnin Repel the Horde!##53910 |goto 41.52,27.03
turnin Squad Goals##54519 |goto 41.52,27.03
accept Gunpowder Plots##53978 |goto 41.52,27.03
accept Masking For a Friend##54787 |goto 41.52,27.03
step
talk Okri Putterwrench##145632
accept Free Plumeria!##54559 |goto 41.53,27.07
stickystart "Collect_Blight_Specialist_Masks"
stickystart "Collect_Gunpowder_Kegs"
step
kill Maurizio Deaththrill##148509 |q 54559/1 |goto 40.09,26.21
step
click Ball & Chain
Release Plumeria's Chains |q 54559/2 |goto 40.22,26.14 |count 1
step
click Ball & Chain
Release Plumeria's Chains |q 54559/2 |goto 40.21,26.30 |count 2
step
label "Collect_Blight_Specialist_Masks"
kill Invading Blight Specialist##145638+
collect 6 Blight Specialist Mask##166682 |q 54787/1 |goto 39.06,25.80
step
label "Collect_Gunpowder_Kegs"
click Gunpowder Keg##309657+
|tip They look like wooden barrels on the ground around this area.
collect 6 Gunpowder Keg##164968 |q 53978/1 |goto 39.06,25.80
step
Cross the bridge |goto 38.44,25.45 < 15 |only if walking
talk Okri Putterwrench##145632
turnin Free Plumeria!##54559 |goto 37.47,24.98
step
talk Rosaline Madison##145593
turnin Gunpowder Plots##53978 |goto 37.50,24.90
turnin Masking For a Friend##54787 |goto 37.50,24.90
accept Make Them Unwelcome##53919 |goto 37.50,24.90
step
clicknpc Outrigger Cannon##145933
Man the Cannon |invehicle |goto 37.45,24.98 |q 53919
step
Sink #10# Horde Rowboats |q 53919/1 |goto 37.45,24.98
|tip They are in the water nearby.
|tip Use the ability on your action bar.
step
talk Lady Jaina Proudmoore##145580
Ask her _"We keep shooting them out of the water but they keep coming! Can you stop their boats?"_
Speak with Jaina |q 53919/2 |goto 37.40,24.94
step
talk Lady Jaina Proudmoore##145580
turnin Make Them Unwelcome##53919 |goto 37.40,24.94
accept Stopping the Sappers##53936 |goto 37.40,24.94
stickystart "Collect_Large_Azerite_Bombs"
step
Enter the building |goto 36.90,24.61 < 15 |only if walking
Follow the path |goto 35.25,25.54 < 30 |only if walking
kill Nebbik Megafuel##145639 |q 53936/1 |goto 34.67,29.84
|tip He walks around this area.
step
label "Collect_Large_Azerite_Bombs"
click Large Azerite Bomb##307778+
|tip They look like large clusters of grey spiked balls on the ground around this area.
collect 40 Large Azerite Bomb##164921 |q 53936/2 |goto 35.62,29.90
step
Follow the path |goto 35.96,28.19 < 15 |only if walking
click Arcane Teleport Beacon
Use the Arcane Teleport Beacon |q 53936/3 |goto 35.79,28.06
step
talk Lady Jaina Proudmoore##145580
turnin Stopping the Sappers##53936 |goto 36.26,29.81
accept Express Delivery##54703 |goto 36.26,29.81
step
clicknpc Heavily Modified Harpoon Launcher##146530
Mark #3# Ships |q 54703/1 |goto 36.29,29.76
|tip Shoot the ships in the water nearby.
|tip Use the "Harpoon" ability on your action bar.
step
talk Lady Jaina Proudmoore##145580
turnin Express Delivery##54703 |goto 36.42,30.78
accept War Marches On##53887 |goto 36.42,30.78
step
clicknpc Plumeria##148626
Ride Plumeria |invehicle |goto 36.38,30.89 |q 53887
step
Return to Boralus |goto Boralus/0 67.29,15.41 < 20 |c |q 53887 |notravel
step
talk Halford Wyrmbane##135612
turnin War Marches On##53887 |goto Boralus/0 69.29,27.00
step
accept Sensitive Intel##54192 |goto 69.29,27.00
step
talk Grand Admiral Jes-Tereth##135681
|tip At the top of the ship.
Tell her _"Set sail for Zuldazar."_
Speak to Grand Admiral Jes-Tereth to Sail to Zuldazar |q 54192/1 |goto 67.95,26.70
step
talk Kelsey Steelspark##147151
turnin Sensitive Intel##54192 |goto Zuldazar/0 41.08,70.66
accept This is Huge!##54193 |goto Zuldazar/0 41.08,70.66
step
talk Megs##147148
Tell her _"Tell me your plan."_
Watch the dialogue
Listen to Megs and Morton's Plan |q 54193/1 |goto 41.10,70.61
step
talk Kelsey Steelspark##147151
turnin This is Huge!##54193 |goto 41.08,70.66
step
talk Megs##147148
accept Real Big Power##54194 |goto 41.10,70.60
step
use the Embiggifier Core##165723
|tip Use it on a Kul Tiran Clucker.
|tip They look like small chickens on the ground around this area.
Test the Embiggifier |q 54194/1 |goto 41.23,71.27
step
kill Kul Tiran Clucker##147208 |q 54194/2 |goto 41.21,71.20
step
talk Megs##147148
turnin Real Big Power##54194 |goto 41.10,70.61
accept A Beast with Brains##54195 |goto 41.10,70.61
step
Follow the road |goto 41.52,70.98 < 20 |only if walking
Continue following the road |goto 43.32,66.13 < 30 |only if walking
Enter the tunnel |goto 45.51,61.62 < 20 |only if walking
Leave the tunnel |goto 47.40,59.70 < 20 |only if walking
Follow the path up |goto 49.14,57.33 < 30 |only if walking
talk Grong##147228
turnin A Beast with Brains##54195 |goto 48.20,55.55
accept Out of Options##54196 |goto 48.20,55.55
accept Freedom for the Da'kani##54197 |goto 48.20,55.55
stickystart "Kill_Bilgewater_Poachers_54196"
step
click Wooden Cage+
|tip They look like crude wooden cages on the ground around this area.
Free #8# Da'kani Highbrow |q 54197/1 |goto 49.09,54.27
step
label "Kill_Bilgewater_Poachers_54196"
kill 12 Bilgewater Poacher##147249 |q 54196/1 |goto 49.09,54.27
step
_Next to you:_
talk Grong
turnin Out of Options##54196
turnin Freedom for the Da'kani##54197
accept Bittersweet Goodbyes##54198
|tip If this quest doesn't appear try leaving the cave and re-entering or walk over by the statue with the burning eyes inside the cave.
step
Follow the path up |goto 48.72,52.55 < 20 |only if walking
Enter the cave |goto 47.13,51.55 < 15 |walk
talk Grong##147228
|tip Inside the cave.
turnin Bittersweet Goodbyes##54198 |goto 46.80,50.48
accept The Needs of the Many##54199 |goto 46.80,50.48
step
clicknpc Grong##148071
|tip Inside the cave.
Hop on Grong's Back |invehicle |goto 46.79,50.48 |q 54199
step
Watch the dialogue
Accompany Grong to Xibala |q 54199/1 |goto 41.20,70.54 |notravel
step
talk Morton Cogswald##147149
turnin The Needs of the Many##54199 |goto 41.07,70.61
accept Bring the Base##54200 |goto 41.07,70.61
step
talk Morton Cogswald##147149
Tell him _"I am ready."_
Speak to Morton Cogswalt |q 54200/1 |goto 41.07,70.61
step
Follow the path |goto 41.83,72.31 < 15 |only if walking
Reach the Marker |q 54200/2 |goto 41.86,73.56
step
Speak to Grong |q 54200/3 |goto 41.86,73.56
|tip Use the "Speak" ability on your action bar.
step
kill Xibalan Ravasaur##147310 |q 54200/4 |goto 42.47,73.18
|tip Use the abilities on your action bar.
step
talk Morton Cogswald##147311
turnin Bring the Base##54200 |goto 41.07,70.61
accept Fit for Grong##54201 |goto 41.07,70.61
step
talk Megs##147148
accept Calibrate the Core##54202 |goto 41.10,70.61
stickystart "Collect_Azerite_Infused_Ore"
step
Follow the path |goto 38.75,72.29 < 20 |only if walking
Kill enemies around this area
use the Embiggifier Core##165762
|tip Use it on their corpses.
Calibrate the Embiggifier Core #10# Times |q 54202/1 |goto 35.51,70.44
step
label "Collect_Azerite_Infused_Ore"
click Azerite Infused Ore##312307+
|tip They look like small yellow and blue crystals on the ground around this area.
click Crate of Ore##311527+
|tip They look like small brown boxes around this area.
collect 12 Azerite Infused Ore##165759 |q 54201/1 |goto 35.51,70.44
step
talk Morton Cogswald##147311
turnin Fit for Grong##54201 |goto 41.07,70.61
step
talk Megs##147148
turnin Calibrate the Core##54202 |goto 41.10,70.60
accept The Embiggining##54203 |goto 41.10,70.60
step
talk Megs##147148
Tell her _"I am ready."_
Speak to Megs |q 54203/1 |goto 41.10,70.60
step
Embiggify Grong |q 54203/2 |goto 41.21,70.53
|tip Use the "Embiggify" ability on your action bar.
step
Follow the path |goto 41.83,72.31 < 15 |only if walking
Reach the Marker |q 54203/3 |goto 41.88,73.59
step
Speak to Grong |q 54203/4 |goto 41.88,73.59
|tip Use the "Speak" ability on your action bar.
step
Embiggify Grong |q 54203/5 |goto 41.88,73.59
|tip Use the "Embiggify" ability on your action bar.
step
talk Megs##147148
turnin The Embiggining##54203 |goto 41.10,70.60
accept Total Temple Destruction##54204 |goto 41.10,70.60
step
click Void Portal
Use Umbric's Portal |q 54204/1 |goto 41.19,70.72
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy the Temple Forces |q 54204/2 |goto 49.73,41.89
step
Watch the dialogue
Return to Xibala |goto 41.10,70.66 < 20 |noway |c |q 54204
step
Watch the dialogue
talk Kelsey Steelspark##147519
turnin Total Temple Destruction##54204 |goto 41.15,70.68
accept A Nice Nap##54205 |goto 41.15,70.68
step
use the Tranquilizer Dart##165815
|tip Use it on Grong.
Tranquilize Grong |q 54205/1 |goto 41.22,70.53
step
talk Kelsey Steelspark##147519
turnin A Nice Nap##54205 |goto 41.15,70.68
accept The Sleeper Agent##54206 |goto 41.15,70.68
step
talk Halford Wyrmbane##135612
turnin The Sleeper Agent##54206 |goto Boralus/0 69.28,27.00
step
accept The Abyssal Scepter##54171 |goto Boralus/0 69.28,27.00
step
talk Lady Jaina Proudmoore##146982
turnin The Abyssal Scepter##54171 |goto Zuldazar/0 40.59,70.70
accept The Treasury Heist##54169 |goto Zuldazar/0 40.59,70.70
step
talk Lady Jaina Proudmoore##146982
Ask her _"What's the plan, Lord Admiral?"_
Watch the dialogue
Speak with Jaina Proudmoore |q 54169/1 |goto 40.59,70.70
step
Watch the dialogue
click Entrance Portal
Begin the Treasury Heist Scenario |scenariostart |goto 40.60,70.70 |q 54169
step
Travel to the Zandalari Treasury |goto Zandalari Treasury/0 22.41,81.16 < 20 |noway |c |q 54169
step
Watch the dialogue
kill Treasury Protector##146759 |scenariogoal 1/43481 |goto Zandalari Treasury/0 22.41,81.16 |q 54169
step
click Security Door
|tip Avoid the blue swirls on the ground.
click Control Switch
|tip Kill the enemies that attack.
Disable the Traps |scenariogoal 2/43519 |count 1 |goto 28.18,82.47 |q 54169
step
click Security Door
|tip Watch the timing of the flames.
|tip When a flame jet is about to occur, a door on the wall will open.
click Control Switch
|tip Kill the enemies that attack.
Disable the Traps |scenariogoal 2/43519 |count 2 |goto 33.81,82.45 |q 54169
step
click Security Door
|tip The statue in this room will slam the ground in a cone in front of it.
|tip Run quickly to avoid being hit.
Disable the Traps |scenariogoal 2/43519 |count 3 |goto 37.41,79.55 |q 54169
step
click Security Door
Reach End of the Hall |scenariogoal 2/43520 |goto 41.81,80.87 |q 54169
step
click Security Door+
|tip Kill any enemies that attack you along the way.
Head Towards the Central Chamber |scenariogoal 3/43533 |goto 42.18,62.76 |q 54169
step
Return to the Outer Hallway |scenariogoal 4/43551 |goto 42.11,77.69 |q 54169
step
kill Treasury Sentinel##146837
Defeat the Treasury Sentinel |scenariogoal 5/43565 |goto 42.18,85.91 |q 54169
step
click Security Door
|tip Avoid the blue swirls on the ground.
click Control Switch
Disable the Traps |scenariogoal 6/43560 |count 1 |goto 50.46,82.44 |q 54169
step
click Security Door
|tip Watch the timing of the flames.
|tip When a flame jet is about to occur, a door on the wall will open.
click Control Switch
Disable the Traps |scenariogoal 6/43560 |count 2 |goto 55.49,82.44 |q 54169
step
click Security Door
|tip The statues in this room will slam the ground in a cone in front of them.
|tip Run quickly to avoid being hit.
|tip Avoid the green and blue beams targeting the ground.
|tip The statues can stun you, making it impossible to avoid the beams.
Disable the Traps |scenariogoal 6/43560 |count 3 |goto 59.57,82.48 |q 54169
step
click Security Door
kill Furious Guardian Spirit##148998+
Defeat #5# Spirits |scenariogoal 7/44015 |goto 61.96,80.98 |q 54169
step
click Security Door
|tip The statues in this room will slam the ground in a cone in front of them.
|tip Run quickly to avoid being hit.
|tip Avoid the green and blue beams targeting the ground.
|tip The statues can stun you, making it impossible to avoid the beams.
|tip Avoid letting the wind gusts push you into the beams or fire.
|tip Avoid the blue swirls on the ground.
Disable the Gauntlet |scenariogoal 8/43568 |goto 60.93,58.65 |q 54169
step
click Security Door
Watch the dialogue
talk Master Mathias Shaw##146775
Tell him _"You get rid of those security features, we'll watch you back."_
Kill the enemies that attack in waves
Protect Shaw |scenariogoal 9/43569 |goto 62.01,52.30 |q 54169
step
talk Master Mathias Shaw##146775
Choose _<Take the fake scepter to make the swap.>_
Speak with Matthias Shaw |scenariogoal 10/43575 |goto 61.99,52.36 |q 54169
step
Complete the Treasury Heist Scenario |q 54169/2
step
Complete the Treasury Heist Scenario |scenarioend |q 54169
step
Return to Xibala |goto Zuldazar/0 40.60,70.76 < 20 |noway |c |q 54169
step
talk Lady Jaina Proudmoore##146982
turnin The Treasury Heist##54169 |goto Zuldazar/0 40.56,70.70
accept Mischief Managed##54510 |goto Zuldazar/0 40.56,70.70
step
talk Halford Wyrmbane##135612
turnin Mischief Managed##54510 |goto Boralus/0 69.28,27.00
step
talk Halford Wyrmbane##135612
accept The Fall of Zuldazar##54302 |goto Boralus/0 69.28,27.00
step
Run up the stairs |goto 48.84,62.61 < 20 |only if walking
Run up the stairs |goto 43.39,67.88 < 15 |only if walking
Jump down here |goto 37.36,74.44 < 5 |only if walking
Follow the path |goto 36.61,77.13 < 5 |only if walking
Continue following the path |goto 37.02,78.75 < 5 |only if walking
Continue following the path |goto 38.08,78.53 < 5 |only if walking
talk Master Mathias Shaw##147800
Tell him _"Let's go over the plan to attack Zuldazar."_
Speak with Matthias Shaw Near Proudmoore Keep |q 54302/1 |goto 39.18,77.37
step
talk Halford Wyrmbane##147798
turnin The Fall of Zuldazar##54302 |goto 38.99,77.17
step
talk Blademaster Telaamon##147819
accept The March to Nazmir##54303 |goto 38.98,76.94
step
Follow the path |goto Nazmir/0 55.46,38.06 < 30 |only if walking
Continue following the path |goto Nazmir/0 52.41,41.26 < 30 |only if walking
Continue following the path |goto Nazmir/0 43.26,43.49 < 30 |only if walking
Continue following the path |goto Nazmir/0 38.23,38.95 < 30 |only if walking
talk Lady Jaina Proudmoore##147842
turnin The March to Nazmir##54303 |goto Nazmir/0 31.04,29.49
accept Repurposing Their Village##54310 |goto Nazmir/0 31.04,29.49
step
talk Master Mathias Shaw##147843
accept Dark Iron Machinations##54404 |goto 30.96,29.44
stickystart "Defeat_Blood_Trolls_Within_Zalamar_54310"
step
Follow the path |goto 29.79,39.22 < 20 |only if walking
click Dark Iron Mole Machine
|tip It will appear on your minimap as a yellow dot.
Signal the Mole Machine |q 54404/1 |goto 32.52,44.52 |count 1
step
click Dark Iron Mole Machine
|tip It will appear on your minimap as a yellow dot.
Signal the Mole Machine |q 54404/1 |goto 32.87,47.43 |count 2
step
click Dark Iron Mole Machine
|tip It will appear on your minimap as a yellow dot.
Signal the Mole Machine |q 54404/1 |goto 30.80,48.25 |count 3
step
label "Defeat_Blood_Trolls_Within_Zalamar_54310"
Kill enemies around this area
Defeat #12# Blood Trolls within Zalamar |q 54310/1 |goto 32.01,45.52
step
Enter the building |goto 33.21,46.13 < 15 |walk
talk Blademaster Telaamon##147844
|tip Inside the building.
turnin Repurposing Their Village##54310 |goto 33.36,45.92
turnin Dark Iron Machinations##54404 |goto 33.36,45.92
accept Fog of War##54312 |goto 33.36,45.92
step
talk Brother Pike##147846
Tell him _"I'm ready, use the Abyssal Scepter to create the fog to hide our forces."_
Watch the dialogue
Have Brother Pike Use the Abyssal Scepter |q 54312/1 |goto 33.67,47.71
step
talk Lady Jaina Proudmoore##147842
turnin Fog of War##54312 |goto 33.65,47.65
accept Lurking in the Swamp##54407 |goto 33.65,47.65
step
Follow the path down |goto 34.64,65.17 < 15 |only if walking
talk Lady Jaina Proudmoore##147842
turnin Lurking in the Swamp##54407 |goto 35.77,68.24
accept Zul'jan Deluge##54412 |goto 35.77,68.24
step
clicknpc Water Elemental##147971
Command Jaina's Water Elemental |q 54412/1 |goto 35.77,68.07
step
Reach the Zul'jan Ruins |goto 39.11,75.88 < 20 |c |q 54412 |notravel
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Enemies in the Zul'jan Ruins |q 54412/2 |goto 39.75,77.76
step
Reach the Outskirts of the Zul'jan Ruins |goto 44.22,78.73 < 20 |c |q 54412 |notravel
step
talk Lady Jaina Proudmoore##147842
turnin Zul'jan Deluge##54412 |goto 44.25,78.87
accept Showing Our Might##54417 |goto 44.25,78.87
step
talk Master Mathias Shaw##147843
accept Taming their Beasts##54421 |goto 44.22,78.64
step
talk Blademaster Telaamon##147844
accept The Mech of Death##54418 |goto 44.26,78.54
stickystart "Slay_Zandalari_54417"
step
Run up the stairs |goto 45.61,73.45 < 15 |only if walking
kill A.M.O.D##148002 |q 54418/1 |goto 45.52,72.31
|tip Blademaster Telaamon will help you fight.
step
use the Re-Discombobulator##166230
|tip Use it on Resting Battlebeasts around this area.
|tip They look like armored dinosaurs on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Tame #3# Resting Battlebeasts |q 54421/1 |goto 47.53,77.03
step
label "Slay_Zandalari_54417"
Kill enemies around this area
Slay #12# Zandalari |q 54417/1 |goto 47.53,77.03
step
Follow the path |goto 47.95,78.59 < 30 |only if walking
talk Blademaster Telaamon##147844
turnin The Mech of Death##54418 |goto 50.43,84.08
step
talk Master Mathias Shaw##147843
turnin Taming their Beasts##54421 |goto 50.45,84.24
step
talk Lady Jaina Proudmoore##147842
turnin Showing Our Might##54417 |goto 50.36,84.17
accept Taking the Blood Gate##54441 |goto 50.36,84.17
step
clicknpc Controlled Battlebeast##148073
Ride the Controlled Battlebeast |q 54441/1 |goto 50.43,84.84
step
Reach the Blood Gate |goto Zuldazar/0 58.00,18.16 < 20 |c |q 54441 |notravel
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Clear the Blood Gates |q 54441/2 |goto Zuldazar/0 58.24,19.18
step
Return to Master Mathias Shaw |goto Nazmir/0 50.43,84.62 < 20 |c |q 54441 |noway
step
talk Master Mathias Shaw##147843
turnin Taking the Blood Gate##54441 |goto 50.45,84.24
step
talk Lady Jaina Proudmoore##147842
accept He Who Walks in the Light##54459 |goto 50.37,84.17
step
click Portal to Boralus |goto 50.38,84.06
Return to Boralus |goto Boralus/0 70.91,16.39 < 20 |noway |c |q 54459
step
talk Halford Wyrmbane##135612
turnin He Who Walks in the Light##54459 |goto Boralus/0 69.27,26.99
accept Battle of Dazar'alor##54485 |goto Boralus/0 69.27,26.99
step
talk Halford Wyrmbane##135612
accept Loose Ends##55118 |goto Boralus/0 69.28,27.00
step
Follow the path |goto Tiragarde Sound/0 78.83,71.23 < 20 |only if walking
Continue up the path |goto 81.32,73.88 < 20 |only if walking
talk Kelsey Steelspark##150796
turnin Loose Ends##55118 |goto 80.11,75.05
accept Ashes to Ashvane##55033 |goto 80.11,75.05
accept Correspondence Conundrum##55117 |goto 80.11,75.05
stickystart "Slay_Ashvane_Loyalists"
step
click Suspicious Correspondence##322677
Collect A Suspicious Correspondence |q 55117/1 |goto 77.60,76.43 |count 1
step
Run up the stairs |goto 77.61,75.67 < 10 |only if walking
click Suspicious Correspondence##322677
Collect A Suspicious Correspondence |q 55117/1 |goto 77.99,76.44 |count 2
step
Cross the bridge |goto 77.92,76.89 < 10 |only if walking
click Suspicious Correspondence##322677
Collect A Suspicious Correspondence |q 55117/1 |goto 78.56,77.90 |count 3
step
Run up the stairs |goto 78.82,78.49 < 15 |only if walking
click Suspicious Correspondence##322677
Collect A Suspicious Correspondence |q 55117/1 |goto 79.13,78.83 |count 4
step
Cross the bridge |goto 78.36,78.23 < 15 |only if walking
Run up the stairs |goto 78.03,78.81 < 10 |only if walking
click Suspicious Correspondence##322677
Collect A Suspicious Correspondence |q 55117/1 |goto 78.27,78.97 |count 5
step
label "Slay_Ashvane_Loyalists"
Kill Loyalist enemies around this area
Slay #10# Ashvane Loyalists |q 55033/1 |goto 79.02,75.19
step
Follow the path up |goto 78.79,75.28 < 20 |only if walking
talk Kelsey Steelspark##150796
turnin Ashes to Ashvane##55033 |goto 80.11,75.05
turnin Correspondence Conundrum##55117 |goto 80.11,75.05
accept Getting a Clue##55116 |goto 80.11,75.05
step
Follow the path down |goto 78.72,75.30 < 20 |only if walking
Enter the building |goto 77.04,75.46 < 10 |walk
kill Haughton Francis##150452 |q 55116/1 |goto 76.92,75.57
|tip Inside the building.
step
collect Ashvane Cipher Ring##167155 |q 55116/2 |goto 76.92,75.57
|tip On Haughton Francis' body inside the building.
step
Follow the path up |goto 78.64,75.33 < 20 |only if walking
talk Kelsey Steelspark##150796
turnin Getting a Clue##55116 |goto 80.11,75.05
accept Reporting in!##55119 |goto 80.11,75.05
step
talk Halford Wyrmbane##135612
Tell him _"Reporting in, High Commander. I found this letter from Lady Ashvane."_
Watch the dialogue
Report In |q 55119/1 |goto Boralus/0 69.27,27.00
step
talk Halford Wyrmbane##135612
turnin Reporting in!##55119 |goto 69.28,27.00
step
talk Master Mathias Shaw##135614
accept Don't Shoot the Messenger##55044 |goto 69.43,27.18
step
talk Valeera Sanguinar##150476
Ask her _"What is your message?"_
Watch the dialogue
Listen to Valeera's Message |q 55044/1 |goto 69.46,26.81
step
talk Lady Jaina Proudmoore##150574
turnin Don't Shoot the Messenger##55044 |goto 69.27,27.14
accept My Brother's Keeper##55045 |goto 69.27,27.14
step
talk Master Mathias Shaw##135614
Choose _(Quest) Set sail for the coast of Theramore._
Talk to Mathias Shaw to Set Sail for Theramore |q 55045/1 |goto 69.43,27.19
step
talk Lady Jaina Proudmoore##150574
Tell her _"Lady Jaina, there is a Horde ship approaching."_
Attend the Meeting |q 55045/2 |goto Dustwallow Marsh/0 70.07,41.75
step
talk Master Mathias Shaw##150620
Tell him _"Take us back to Boralus."_
Talk to Mathias Shaw to Return to Boralus |q 55045/3 |goto 70.20,41.39
step
talk Halford Wyrmbane##135612
turnin My Brother's Keeper##55045 |goto Boralus/0 69.28,26.99
accept Spy Versus Spy##55171 |goto 69.28,26.99
step
clicknpc Mission Command Table
|tip Start the mission "Spy on Warfang Hold."
|tip It will take up to 24 hours to complete.
Complete "Spy on Warfang Hold" Mission |q 55171/1 |goto 70.55,27.19
step
talk Halford Wyrmbane##135612
turnin Spy Versus Spy##55171 |goto 69.28,26.99
accept The Gathering Storm##55087 |goto 69.28,26.99
step
Run up the stairs |goto 48.90,62.59 < 30 |only if walking
talk Lady Jaina Proudmoore##150633
turnin The Gathering Storm##55087 |goto 45.21,62.62
accept Retaliation Coordination##55179 |goto 45.21,62.62
step
Follow the path up |goto Stormsong Valley/0 41.16,39.48 < 20 |only if walking
Continue up the path |goto 41.68,42.03 < 20 |only if walking
Continue up the path |goto 42.18,41.64 < 10 |only if walking
Continue up the path |goto 43.02,40.25 < 15 |only if walking
Continue up the path |goto 43.31,38.29 < 15 |only if walking
Jump down here |goto 45.84,38.43 < 20 |only if walking
talk Kelsey Steelspark##150637
turnin Retaliation Coordination##55179 |goto 48.28,41.45
accept Lost in the Field##55088 |goto 48.28,41.45
accept Reassembly Required##55182 |goto 48.28,41.45
stickystart "Collect_Salvaged_Parts"
step
clicknpc Injured Operative##150635+
|tip They look like wounded humans laying on the ground around this area
Heal #5# Injured Spies |q 55088/1 |goto 50.81,37.37
step
label "Collect_Salvaged_Parts"
Kill enemies around this area
collect 8 Salvaged Parts##167216 |q 55182/1 |goto 50.81,37.37
step
talk Kelsey Steelspark##150637
turnin Lost in the Field##55088 |goto 48.28,41.46
turnin Reassembly Required##55182 |goto 48.28,41.46
accept Seeking Higher Ground##55183 |goto 48.28,41.46
step
Follow the path |goto 49.67,39.35 < 30 |only if walking
Follow the path up |goto 51.70,38.22 < 20 |only if walking
talk Kelsey Steelspark##150637
turnin Seeking Higher Ground##55183 |goto 52.13,39.27
accept Listen up!##55185 |goto 52.13,39.27
step
talk Kelsey Steelspark##150637
Tell her _"I'll watch your back."_
|tip Enemies will attack in waves.
Defend Kelsey |q 55185/1 |goto 52.13,39.27
step
talk Kelsey Steelspark##150637
turnin Listen up!##55185 |goto 52.13,39.26
accept Shaw's Shank Redemption##55089 |goto 52.13,39.26
step
Follow the path |goto 51.06,37.59 < 20 |only if walking
Follow the road |goto 48.63,36.72 < 20 |only if walking
Follow the path up |goto 47.30,35.52 < 20 |only if walking
Follow the path down |goto 48.49,34.61 < 15 |only if walking
Enter the cave |goto 48.42,33.19 < 10 |walk
Find Mathias Shaw |q 55089/1 |goto 47.68,33.68
|tip Inside the cave.
step
kill Giles Deathstrike##150715 |q 55089/2 |goto 47.70,33.75
|tip Inside the cave.
step
Leave the cave |goto 48.43,33.23 < 10 |walk
Follow Shaw |q 55089/3 |goto 48.84,32.75
step
talk Master Mathias Shaw##150640
turnin Shaw's Shank Redemption##55089 |goto 48.84,32.75
accept A Gathering of Foes##55090 |goto 48.84,32.75
step
click SI:7 Spyglass
Watch the dialogue
Witness the Horde Gathering |q 55090/1 |goto 48.84,32.70
step
talk Lady Jaina Proudmoore##150633
turnin A Gathering of Foes##55090 |goto Boralus/0 69.33,27.15
step
_Enter the Battle of Dazar'alor Raid:_
|tip Use the Group Finder to enter the "Empire's Fall" wing of the Battle of Dazar'alor raid.
|tip You can also form your own group and enter the raid manually.
kill King Rastakhan##145616
|tip He is the final boss of the "Empire's Fall" wing of the Battle of Dazar'alor raid.
Defeat King Rastakhan in the Battle of Dazar'alor |q 54485/1
step
talk Halford Wyrmbane##135612
turnin Battle of Dazar'alor##54485 |goto Boralus/0 69.27,26.99
accept As the Dust Settles##54163 |goto Boralus/0 69.27,26.99
step
Run up the stairs |goto 48.10,71.86 < 10 |only if walking
Follow the path |goto 49.26,74.11 < 20 |only if walking
talk Anduin Wrynn##147885
turnin As the Dust Settles##54163 |goto 49.33,85.52
accept Dead Reckoning##54183 |goto 49.33,85.52
step
talk Anduin Wrynn##147885
Choose _<Attend the meeting.>_
Speak with Anduin Wrynn |q 54183/1 |goto 49.33,85.52
step
Watch the dialogue
Attend the Meeting |q 54183/2 |goto 49.33,85.52
step
talk Anduin Wrynn##147885
turnin Dead Reckoning##54183 |goto 49.33,85.52
step
Complete the "A Way Home" Quest |condition completedq(54972) |or
|tip You must complete this quest to continue.
|tip Use the "Nazjatar" leveling guide to accomplish this.
Click Here to Open the "Nazjatar" Leveling Guide |loadguide "Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Nazjatar\\Nazjatar"
step
talk Grand Admiral Jes-Tereth##135681
accept The Missing Crew##56378 |goto Boralus/0 67.95,26.70
step
Follow the path |goto Nazjatar/0 45.78,81.36 < 20 |only if walking
Continue following the path |goto 43.54,74.27 < 20 |only if walking
clicknpc Captain Greensails##154896
Find Captain Greensails |q 56378/2 |goto 39.57,74.93
step
Follow the path up |goto 31.14,34.42 < 20 |only if walking
Continue up the path |goto 28.61,30.75 < 20 |only if walking
clicknpc Skycaptain Thermospark##154899
Find Thermospark |q 56378/3 |goto 25.64,30.50
step
Follow the path |goto 73.96,41.83 < 20 |only if walking
Run up the stairs |goto 79.27,44.88 < 20 |only if walking
Run up the stairs |goto 80.77,44.04 < 10 |only if walking
Follow the path up |goto 81.13,42.70 < 10 |only if walking
Enter the building |goto 82.61,41.20 < 10 |walk
clicknpc Captain Stonestare##154901
|tip Inside the building.
Find Captain Stonestare |q 56378/1 |goto 82.90,42.59
step
talk Lady Jaina Proudmoore##150101
|tip Inside the building.
accept Payment in Kind##55784 |goto Nazjatar/0 40.31,55.24
|only if completedq(56162)
step
talk Grand Admiral Jes-Tereth##135681
turnin The Missing Crew##56378 |goto Boralus/0 67.95,26.70
step
Complete the "Back out to Sea" Quest |condition completedq(56162)
|tip You must complete this quest to continue the War Campaign.
|tip Use the "Nazjatar" leveling guide to accomplish this.
step
talk Lady Jaina Proudmoore##150101
|tip Inside the building.
accept Payment in Kind##55784 |goto Nazjatar/0 40.31,55.24
|only if not completedq(56162)
step
talk Anduin Wrynn##107574
|tip Inside the building.
Tell him _"Reporting as ordered."_
Watch the dialogue
Speak with Anduin |q 55784/1 |goto Stormwind City/0 85.91,31.57
step
talk Anduin Wrynn##107574
turnin Payment in Kind##55784 |goto 85.91,31.57
accept Stay of Execution##55783 |goto 85.91,31.57
step
talk Lady Jaina Proudmoore##153616
Tell her _"I am prepared, Jaina."_
Speak with Jaina |q 55783/1 |goto 85.45,31.72
step
Enter the Scenario |goto Baine Rescue/0 41.57,42.31 < 1000 |c |noway |q 55783
step
Watch the dialogue
Exit the Platform |scenariogoal 1/44883 |goto 47.07,54.53 |q 55783
step
Run down the stairs |goto 53.84,65.78 < 10 |walk
Reach the Lower Level |scenariogoal 2/44886 |goto 57.59,55.99 |q 55783
step
kill Experimental Mech##153261
Destroy the Mech |scenariogoal 3/45176 |goto 56.03,50.14 |count 1 |q 55783
step
kill Experimental Mech##153261
Destroy the Mech |scenariogoal 3/45176 |goto 48.75,66.74 |count 2 |q 55783
step
kill Experimental Mech##153261
Destroy the Mech |scenariogoal 3/45176 |goto 44.55,73.78 |count 3 |q 55783
step
kill Experimental Mech##153261
Destroy the Mech |scenariogoal 3/45176 |goto 44.17,61.14 |count 4 |q 55783
step
Reach the Exit |scenariogoal 3/44895 |goto 40.30,61.32 |q 55783
step
Reach the Gate |scenariogoal 4/44931 |goto 44.45,50.81 |q 55783
step
Kill enemies that attack in waves
Protect Shaw |scenariogoal 5/45171 |goto 44.45,50.81 |q 55783
step
Enter the Next Room |scenariogoal 6/44933 |goto 49.49,36.81 |q 55783
step
talk Lady Jaina Proudmoore##152156
Tell her _"I suppose we can work with the Horde, but I will be watching for their treachery."_
Speak with Jaina |scenariogoal 7/45027 |goto 50.37,35.41 |q 55783
step
Watch the dialogue
Follow the path |goto 61.86,23.60 < 20 |walk
Reach the End of the Corridor |scenariogoal 7/44937 |goto 68.28,33.17 |q 55783
step
kill Rowa Bloodstrike##152202 |scenariogoal 8/45006 |goto 72.37,42.79 |q 55783
step
Reach Baine Bloodhoof |scenariogoal 9/44961 |goto 80.02,59.49 |q 55783
step
Kill enemies around this area
|tip Pull them to the group in the center of the room for assistance.
Defeat #3# of Sylvanas's Forces |scenariogoal 10/44962 |goto 83.45,66.89 |count 3 |q 55783
step
kill Elite Battlemage##153031
click Inhibitor Crystal
Destroy the Inhibitor Crystal |scenariogoal 10/44964 |goto 78.51,66.67 |count 1 |q 55783
step
kill Elite Battlemage##153031
click Inhibitor Crystal
Destroy the Inhibitor Crystal |scenariogoal 10/44964 |goto 82.44,76.08 |count 2 |q 55783
step
kill Elite Battlemage##153031
click Inhibitor Crystal
Destroy the Inhibitor Crystal |scenariogoal 10/44964 |goto 89.11,69.44 |count 3 |q 55783
step
kill Elite Battlemage##153031
click Inhibitor Crystal
Destroy the Inhibitor Crystal |scenariogoal 10/44964 |goto 85.07,60.40 |count 4 |q 55783
step
kill Magister Hathorel##152199 |scenariogoal 10/44962 |goto 81.52,62.51 |count 4 |q 55783
|tip Click the button that appears on-screen during Annihilation.
step
Leave the Scenario |scenarioend |q 55783
step
talk Lady Jaina Proudmoore##150101
|tip Inside the building.
turnin Stay of Execution##55783 |goto Nazjatar/0 40.31,55.24
step
talk Master Mathias Shaw##135614
accept The Eve of Battle##56494 |goto Boralus/0 70.71,27.08
step
talk Master Mathias Shaw##135614
Tell him _"Begin the briefing, Master Shaw."_
Listen to Mathias Shaw |q 56494/1 |goto 70.71,27.08
step
talk 7th Legion Magus##155931
Tell her _"Teleport me to Razor Hill."_
Take the Teleport from the 7th Legion Magus |q 56494/2 |goto 70.46,26.41
step
Reach Razor Hill |goto Durotar/0 52.62,43.28 |c |noway |q 56494
step
Enter the building |goto 53.24,42.60 < 15 |walk
talk Anduin Wrynn##155784
|tip Inside the building.
turnin The Eve of Battle##56494 |goto 54.06,42.53
accept This Ain't Mine##56719 |goto 54.06,42.53
step
click Mine-Bot 5000 Control Console
Control the Mine-Bot 5000 |q 56719/1 |goto 52.71,40.49
stickystart "Detonate_Land_Mines"
step
Follow the path |goto 52.37,36.75 < 20 |walk
Continue following the path |goto 51.74,31.77 < 20 |walk
Destroy #7# Boulders |q 56719/2 |goto 51.43,31.29
|tip Use the "Boulder Annihilation" ability on giant boulders along the narrow pass around this area.
step
label "Detonate_Land_Mines"
Detonate #9# Land Mines |q 56719/3 |goto 51.43,31.29
|tip Use the "Z.A.P.S." ability on Land Mines along the narrow pass.
|tip Keep some distance so you don't take explosive damage.
|tip They look like small machines with red blinking circular lights along the narrow pass around this area.
step
Self Destruct to Destroy the Impassable Boulders |q 56719/4 |goto 50.80,30.45
|tip Use the "Self Destruct" ability on your vehicle bar.
step
clicknpc Wildhammer Gryphon##156047
Ride the Gryphon to the Front Line |invehicle |goto 52.14,40.05 |q 56719
step
Watch the dialogue
Reach the Front Line |outvehicle |q 56719
step
talk Anduin Wrynn##155784
|tip Inside the building.
Ask him _"Where is Tyrande?"_
Speak with Anduin Wrynn |q 56719/6 |goto Durotar War Campaign/0 41.51,55.99
step
talk Anduin Wrynn##155784
|tip Inside the building.
turnin This Ain't Mine##56719 |goto 41.51,55.99
accept Saving the Siege##56979 |goto 41.51,55.99
accept Already Among Us##56980 |goto 41.51,55.99
accept Strategic Deployment##56981 |goto 41.51,55.99
stickystart "Remove_Suspicious_Crates"
stickystart "Slay_Loyalist_Combatants"
step
talk Lady Jaina Proudmoore##155785
Tell her _"I have deployment orders from Saurfang and King Wrynn."_
Speak with Jaina Proudmoore |q 56981/1 |goto 48.84,55.67
step
talk Shandris Feathermoon##155926
Tell her _"Saurfang and King Wrynn have assigned your forces to the northern gate."_
Speak with Shandris Feathermoon |q 56981/3 |goto 36.38,64.08
step
talk Mayla Highmountain##156120
Tell her _"High Chieftan, you have been tasked with defending the skies above Thunder Bluff.."_
Speak with Mayla Highmountain |q 56981/2 |goto 32.08,82.74
step
label "Remove_Suspicious_Crates"
click Suspicious Crate+
|tip They look like small brown crates smoking purple on the ground around this area.
Remove #8# Suspicious Crates |q 56979/1 |goto 34.36,66.67
step
label "Slay_Loyalist_Combatants"
Kill enemies around this area
Slay #10# Loyalist Combatants |q 56980/1 |goto 34.36,66.67
step
talk Anduin Wrynn##155784
|tip Inside the building.
turnin Saving the Siege##56979 |goto 41.51,55.99
turnin Already Among Us##56980 |goto 41.51,55.99
turnin Strategic Deployment##56981 |goto 41.51,55.99
accept Before the Gates of Orgrimmar##56982 |goto 41.51,55.99
step
talk Anduin Wrynn##155784
|tip Inside the building.
Tell him _"I am ready. For the Alliance!"_
Speak with Anduin to Begin the Battle |q 56982/1 |goto 41.51,55.99
step
talk Lady Jaina Proudmoore##155785
turnin Before the Gates of Orgrimmar##56982 |goto 36.36,64.04
accept The Price of Victory##56993 |goto 36.36,64.04
step
talk Genn Greymane##156121
Tell him _"Saurfang challenged Sylvanas to mak'gora. And then..."_
Speak with Genn Greymane |q 56993/1 |goto Durotar/0 35.98,4.13
step
talk Lady Jaina Proudmoore##155785
turnin The Price of Victory##56993 |goto Durotar War Campaign/0 34.62,60.14 |notravel
accept Old Soldier##57002 |goto 34.62,60.14 |notravel
step
talk Lady Jaina Proudmoore##155785
Tell her _"Lead on."_
Honor High Overlord Saurfang |q 57002/1 |goto 34.62,60.14
step
Return to Boralus |goto Boralus/0 69.62,27.03 < 200 |c |noway |q 57002
step
talk Lady Jaina Proudmoore##155785
turnin Old Soldier##57002 |goto 69.62,27.03
step
Watch the dialogue
talk Lady Jaina Proudmoore##150633
accept ...And Following Seas##57126 |goto 69.33,27.15
step
Enter the building |goto Stormsong Valley/0 30.93,59.95 < 10 |walk
Find Calia Menethil |q 57126/1 |goto 30.97,59.62
step
talk Calia Menethil##156513
|tip Inside the building.
turnin ...And Following Seas##57126 |goto 30.93,59.47
step
_Congratulations!_
You completed the War Campaign.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Warfronts\\Arathi Highlands Warfront Extra Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various quests in Arathi Highlands"..
"when your faction cannot access the warfront.",
condition_suggested=function() return level >= 50 and not completedq(53149) and completedq(53198) end,
condition_valid=function() return completedq(53198) end,
condition_valid_msg="You must first complete the \"Warfronts Introduction Quests\" guide!",
condition_end=function() return completedq(53149) end,
},[[
step
talk Yvera Dawnwing##143380
accept Death to The Defilers##53153 |goto Boralus/0 66.24,24.77
accept Twice-Exiled##53192 |goto 66.24,24.77
accept Executing Exorcisms##53179 |goto 66.24,24.77
accept Boulderfist Beatdown##53146 |goto 66.24,24.77
accept Sins of the Syndicate##53162 |goto 66.24,24.77
accept Wiping Out the Witherbark##53149 |goto 66.24,24.77
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Travel to the Present |condition ZGV.InPhase('New Arathi') |goto Arathi Highlands/0 38.25,90.09 |q 53149
step
Kill Boulderfist enemies around this area
Slay #20# Boulderfist Clan Ogres |q 53146/1 |goto 48.35,76.77
step
Kill Defiler enemies around this area
Slay #20# Defilers |q 53153/1 |goto 52.19,60.02
step
Kill Witherbark enemies around this area
Slay #20# Witherbark Tribe Trolls |q 53149/1 |goto 64.65,71.65
step
Kill Thundering enemies around this area
Slay #20# Elementals |q 53192/1 |goto 46.26,52.00
step
Kill Syndicate enemies around this area
Slay #20# Syndicate Members |q 53162/1 |goto 49.89,41.61
step
kill 20 Vengeful Ghost##142723 |q 53179/1 |goto 27.52,32.06
step
talk Yvera Dawnwing##143172
turnin Death to The Defilers##53153 |goto 21.71,64.88
turnin Twice-Exiled##53192 |goto 21.71,64.88
turnin Executing Exorcisms##53179 |goto 21.71,64.88
turnin Boulderfist Beatdown##53146 |goto 21.71,64.88
turnin Sins of the Syndicate##53162 |goto 21.71,64.88
turnin Wiping Out the Witherbark##53149 |goto 21.71,64.88
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Warfronts\\Darkshore Warfront Extra Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various quests in Darkshore"..
"when your faction cannot access the warfront.",
condition_suggested=function() return level >= 50 and not completedq(54878) and completedq(53212) and completedq(54871) end,
condition_valid=function() return completedq(53212) and completedq(54871) end,
condition_valid_msg="You must first complete the \"Warfronts Introduction Quests\" and \"Tyrande's Ascension\" guides!",
condition_end=function() return completedq(54878) end,
},[[
step
talk Commander Lorna Crowley##149623
accept Remaining Threats##54875 |goto Darkshore/0 47.14,35.70
step
talk Thisalee Crow##149624
accept Tapping the Breach##54876 |goto 47.21,35.72
step
talk Wizbang Cranktoggle##149631
accept Buzzkill##54878 |goto 47.27,35.71
step
kill Moxo the Beheader##147701 |q 54875/1 |goto 64.36,20.09 |count 1
|tip He walks up and down the path.
step
kill Athrikus Narassin##147708 |q 54875/1 |goto 58.51,24.35 |count 2
|tip You may need a group for this.
step
click Buzzbox 854##319207
|tip Kill the Automated Sentry Bots that attack.
Destroy Buzzbox 854 |q 54878/1 |goto 55.58,23.89 |count 1
step
kill Alash'anir##148787 |q 54875/1 |goto 56.46,30.76 |count 3
|tip You may need a group for this.
step
Kill Twilight enemies around this area
Slay #10# Twilight Elementalists |q 54876/1 |goto 52.50,29.81 |count 10
step
kill Hydrath##147240 |q 54875/1 |goto 52.42,32.18 |count 4
|tip You may need a group for this.
step
kill Shattershard##147751 |q 54875/1 |goto 43.47,29.41 |count 5
|tip You may need a group for this.
step
kill Orwell Stevenson##149664 |q 54875/1 |goto 40.10,34.58 |count 6
step
click Buzzbox 111##319208
|tip Kill the Automated Sentry Bots that attack.
Destroy Buzzbox 111 |q 54878/1 |goto 41.25,47.66 |count 2
step
Kill Twilight enemies around this area
Slay #10# Twilight Elementalists |q 54876/1 |goto 44.07,52.94 |count 20
step
kill Cyclarus##147241 |q 54875/1 |goto 43.72,53.57 |count 7
|tip You may need a group for this.
step
Enter the cave |goto 47.18,56.01 < 10 |walk
kill Granokk##147261 |q 54875/1 |goto 47.57,55.82 |count 8
step
kill Stonebinder Ssra'vess##147332 |q 54875/1 |goto 45.50,58.98 |count 9
step
kill Conflagros##147260 |q 54875/1 |goto 39.31,62.04 |count 10
step
click Buzzbox 627##319209
|tip Kill the Automated Sentry Bots that attack.
Destroy Buzzbox 627 |q 54878/1 |goto 36.92,65.48 |count 3
step
click Buzzbox 456##319210
|tip Kill the Automated Sentry Bots that attack.
Destroy Buzzbox 456 |q 54878/1 |goto 40.83,81.18 |count 4
step
kill Twilight Prophet Graeme##147942 |q 54875/1 |goto 40.61,82.69 |count 11
step
kill Soggoth the Slitherer##147897 |q 54875/1 |goto 40.61,85.33 |count 12
step
talk Commander Lorna Crowley##149623
turnin Remaining Threats##54875 |goto Darkshore/0 47.14,35.70
step
talk Thisalee Crow##149624
turnin Tapping the Breach##54876 |goto 47.21,35.72
step
talk Wizbang Cranktoggle##149631
turnin Buzzkill##54878 |goto 47.27,35.71
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Warfronts\\Warfronts Introduction Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through the Warfronts Introduction quests for Battle for Azeroth.",
condition_suggested=function() return level >= 50 and not completedq(53198) end,
},[[
step
Reach Level 50 |ding 50
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(52450)
|tip Use the "War Campaign" guide to accomplish this.
step
talk Ralston Karn##142721
turnin The Warfront Looms##53175 |goto Boralus/0 65.88,26.05 |only if haveq(53175) or completedq(53175)
accept To the Front##53194 |goto Boralus/0 65.88,26.05
step
Does the Alliance Currently Control the Warfront?
|tip The following quests change slightly, depending if your faction controls the warfront or not.
Yes |confirm |or |next "Alliance_Controls_Warfront" |q 53198
No |confirm |or |next "Alliance_Doesnt_Control_Warfront" |q 53198
step
label "Alliance_Controls_Warfront"
talk Yvera Dawnwing##143380 |goto Boralus/0 66.24,24.79
Tell her _"Send me to Arathi Highlands!"_
Teleport to Ar'gorok |goto Arathi Highlands/0 21.69,65.16 < 10 |noway |c |q 53194
step
talk Captain Roderick Brewston##143018
turnin To the Front##53194 |goto 19.25,61.93
accept Touring the Front##53197 |goto 19.25,61.93
step
talk Grayson Bell##142008
Tell him _"Captain Brewston said you could give me a tour of the area."_
Begin Riding the Alliance Gryphon |invehicle |goto 18.26,67.93 |q 53197
step
Watch the dialogue
View the Battleground with Grayson Bell |q 53197/3 |goto 19.42,56.21
step
Watch the dialogue
Return to the Ground |outvehicle |goto 18.20,67.48 |q 53197
step
Enter the mine |goto 27.50,55.46 < 10 |walk
Follow the path down |goto 27.46,53.90 < 10 |walk
Run down the stairs |goto 26.32,55.05 < 10 |walk
talk Foreman Tully##143318
|tip Inside the mine.
Tell her _"Thank you."_
Check on Foreman Tully |q 53197/1 |goto 27.55,57.01
step
Run up the stairs |goto 26.67,56.22 < 10 |walk
Follow the path up |goto 26.62,54.56 < 10 |walk
Leave the mine |goto 27.50,55.46 < 10 |c |q 53197
step
talk Lumbering Leo##143321
Tell him _"Thank you."_
Check on Lumbering Leo |q 53197/2 |goto 12.01,52.12
step
talk Captain Roderick Brewston##143018
turnin Touring the Front##53197 |goto 19.24,61.93
accept Back to Boralus##53198 |goto 19.24,61.93
step
talk Yvera Dawnwing##143172 |goto 21.70,64.88
Tell her _"Send me to Boralus!"_
Return to Boralus |goto Boralus/0 66.72,24.80 < 10 |noway |c |q 53198
|next "Warfront_Intro_End"
step
label "Alliance_Doesnt_Control_Warfront"
talk Yvera Dawnwing##143380 |goto Boralus/0 66.24,24.79
Tell her _"Send me to Arathi Highlands!"_
Teleport to Ar'gorok |goto Arathi Highlands/0 18.85,56.44 < 30 |noway |c |q 53194
step
talk Captain Roderick Brewston##143018
turnin To the Front##53194 |goto 19.33,56.77
accept Touring the Front##53197 |goto 19.33,56.77
step
talk Grayson Bell##142008
Tell him _"Captain Brewston said you could give me a tour of the area."_
Begin Riding the Alliance Gryphon |invehicle |goto 19.46,56.63 |q 53197
step
Watch the dialogue
View the Battleground with Grayson Bell |q 53197/3 |goto 19.42,56.21
step
Watch the dialogue
Return to the Ground |outvehicle |goto 19.50,56.48 |q 53197
step
talk Foreman Tully##143318
Tell her _"Thank you."_
Check on Foreman Tully |q 53197/1 |goto 27.26,55.68
step
talk Lumbering Leo##143321
Tell him _"Thank you."_
Check on Lumbering Leo |q 53197/2 |goto 13.42,55.16
step
talk Captain Roderick Brewston##143018
turnin Touring the Front##53197 |goto 19.33,56.77
accept Back to Boralus##53198 |goto 19.33,56.77
step
talk Yvera Dawnwing##143172 |goto 18.94,56.83
Tell her _"Send me to Boralus!"_
Return to Boralus |goto Boralus/0 66.72,24.80 < 10 |noway |c |q 53198
|next "Warfront_Intro_End"
step
label "Warfront_Intro_End"
talk Ralston Karn##142721
turnin Back to Boralus##53198 |goto Boralus/0 65.88,26.03
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
Reach Honored with the Rustbolt Resistance |condition rep('Rustbolt Resistance') >= Honored |or
|tip Use the "Rustbolt Resistance" Reputation Guide to accomplish this.
Click Here to Open the "Rustbolt Resistance" Reputation Guide |loadguide "Reputations Guides\\Battle for Azeroth\\Rustbolt Resistance"
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
buy 20 Sweet Sea Vegetable##167915 |goto Nazjatar/0 38.64,54.46 |q 56174
|only if haveq(56174)
step
talk Mrrglrlr##151950
|tip It runs around the rocks.
buy 5 Disintegrating Sand Sculpture##167903 |q 56174/1 |goto 39.21,54.16
|only if haveq(56174)
step
talk Grrmrlg##151951
buy 105 Flatulent Fish##167906 |goto 37.50,53.45 |q 55815
|only if haveq(55815)
step
talk Flrgrrl##151952
|tip It swims around in the water.
buy 15 Bag of Who-Knows-What##167910 |goto 39.97,53.43 |q 55815
|only if haveq(55815)
step
talk Hurlgrl##151953
buy 15 Jar of Fish Faces##167914 |goto 38.64,54.46 |q 55815
|only if haveq(55815)
step
talk Mrrglrlr##151950
|tip It runs around the rocks.
buy 5 Particularly Dense Rock##167902 |q 55815/1 |goto 39.21,54.16
|only if haveq(55815)
step
talk Mrrglrlr##151950
|tip It runs around the rocks.
buy 15 Slimy Naga Eyeball##167896 |goto 39.21,54.16 |q 56172
|only if haveq(56172)
step
talk Grrmrlg##151951
buy 5 Curious Murloc Horn##167905 |q 56172/1 |goto 37.50,53.45
|only if haveq(56172)
step
talk Flrgrrl##151952
|tip It swims around in the water.
buy 5 Unidentified Mass##167912 |q 56173/1 |goto 39.97,53.43
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
Complete the "A Tempered Blade" Quest |condition completedq(56156) |or
|tip Use the "Nazjatar" leveling guide to accomplish this.
Click Here to Open the "Nazjatar" Leveling Guide |loadguide "Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Nazjatar\\Nazjatar"
step
talk Gila Crosswires##156179
accept Fame Waits for Gnome One##57009 |goto Nazjatar/0 39.67,53.57
step
talk Tinkmaster Overspark##150208
turnin Fame Waits for Gnome One##57009 |goto Boralus/0 67.22,15.76
accept The Legend of Mechagon##54088 |goto 67.22,15.76
step
Cross the bridge |goto Tiragarde Sound/0 59.40,59.73 < 20 |only if walking
Follow the path up |goto 61.97,57.77 < 20 |only if walking
Continue following the path |goto 63.92,60.82 < 20 |only if walking
talk Tinkmaster Overspark##149864
turnin The Legend of Mechagon##54088 |goto 65.59,65.02
accept Looking Inside##55040 |goto 65.59,65.02
step
click Vault Door |goto 65.58,65.14
Watch the dialogue
Enter the Vault |q 55040/1 |goto 65.82,66.36
step
talk Tinkmaster Overspark##149877
|tip Inside the vault.
turnin Looking Inside##55040 |goto 65.82,66.36
accept Let's Get It Started##54945 |goto 65.82,66.36
step
click Gear Controls
|tip Inside the vault.
Repair the Gears |q 54945/1 |goto 65.66,66.51
step
click Electrode
|tip Inside the vault.
Activate Electrode |q 54945/2 |goto 66.02,65.83
step
click Alpha Wire
|tip Inside the vault.
Grab the Alpha Wire |havebuff 136101 |goto 66.04,65.84 |q 54945
step
click Alpha Pylon
|tip Inside the vault.
Attach the Alpha Wire to Alpha Pylon |q 54945/3 |goto 66.14,66.25
step
click Beta Wire
|tip Inside the vault.
Grab the Beta Wire |havebuff 136101 |goto 66.00,65.81 |q 54945
step
click Beta Pylon
|tip Inside the vault.
Attach the Beta Wire to Beta Pylon |q 54945/4 |goto 65.92,66.45
step
talk Tinkmaster Overspark##149877
|tip Inside the vault.
turnin Let's Get It Started##54945 |goto 65.82,66.37
accept You Must be This Height##54087 |goto 65.82,66.37
step
talk Tinkmaster Overspark##149877
|tip Inside the vault.
Tell him _"I'm ready. Activate the device."_
Speak with Tinkmaster Overspark |q 54087/1 |goto 65.82,66.37
step
Watch the dialogue
Discover the Purpose of the Device |q 54087/2
step
click Tri-dimensional Coordinates##325907
|tip Inside the vault.
collect Tri-dimensional Coordinates##167039 |q 54087/3 |goto 65.89,66.46
step
talk Tinkmaster Overspark##149877
|tip Inside the vault.
turnin You Must be This Height##54087 |goto 65.82,66.37
accept Report to Gila##54946 |goto 65.82,66.37
step
talk Gila Crosswires##151100
turnin Report to Gila##54946 |goto Boralus/0 67.23,15.93
accept A Small Team##54947 |goto 67.23,15.93
step
Run down the stairs |goto 66.28,19.77 < 20 |only if walking
click Climbing Rope
Use the Access Rope |q 54947/1 |goto 63.95,33.44
step
talk Sapphronetta Flivvers##150117
|tip Inside the building.
Tell her _"We need you for Mechagon."_
Recruit Sapphronetta Flivvers |q 54947/2 |goto 65.07,32.71
step
talk Grizzek Fizzwrench##150121
|tip Upstairs inside the building.
Tell him _"Your partner in life, love and the lab says I should invite you to come to Mechagon."_
Recruit Grizzek Fizzwrench |q 54947/3 |goto 64.91,32.87
step
Follow the path |goto 61.24,19.64 < 20 |only if walking
talk Cog Captain Winklespring##151102
Tell him _"We need you for Mechagon."_
Recruit Cog Captain Winklespring |q 54947/4 |goto 51.09,18.89
step
Cross the bridge |goto Tiragarde Sound/0 67.01,25.40 < 20 |only if walking
Reach the Departure Point |q 54947/5 |goto Boralus/0 43.23,32.00
step
talk Gila Crosswires##150145
turnin A Small Team##54947 |goto 43.23,32.00
accept The Start of Something Bigger##54992 |goto 43.23,32.00
step
clicknpc Expedition Gyrocopter##150199
Board the Expedition Gyrocopter |q 54992/1 |goto 42.94,31.39
step
Watch the dialogue
Arrive at Mechagon |q 54992/2
step
talk Cog Captain Winklespring##150639
fpath Overspark Expedition Camp |goto Mechagon Island/0 77.84,40.93
step
talk Tinkmaster Overspark##152484
turnin The Start of Something Bigger##54992 |goto 77.58,40.44
accept Princely Visit##55645 |goto 77.58,40.44
step
Watch the dialogue
Explore Rustbolt |q 55645/1 |goto 71.09,38.33
step
talk Prince Erazmin##152851
turnin Princely Visit##55645 |goto 71.09,38.32
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
description="\nThis blueprint is obtained after completing the quest \"S.P.A.R.E. Crate\" during the Mechagon questline.",
condition_suggested=function() return level >= 50 and not completedq(56740) end,
condition_end=function() return completedq(56740) end,
},[[
step
Complete the "A Tempered Blade" Quest |condition completedq(56156) |or
|tip Use the "Nazjatar" leveling guide to accomplish this.
Click Here to Open the "Nazjatar" Leveling Guide |loadguide "Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Nazjatar\\Nazjatar"
step
talk Gila Crosswires##156179
accept Fame Waits for Gnome One##57009 |goto Nazjatar/0 39.67,53.57
step
talk Tinkmaster Overspark##150208
turnin Fame Waits for Gnome One##57009 |goto Boralus/0 67.22,15.76
accept The Legend of Mechagon##54088 |goto 67.22,15.76
step
Cross the bridge |goto Tiragarde Sound/0 59.40,59.73 < 20 |only if walking
Follow the path up |goto 61.97,57.77 < 20 |only if walking
Continue following the path |goto 63.92,60.82 < 20 |only if walking
talk Tinkmaster Overspark##149864
turnin The Legend of Mechagon##54088 |goto 65.59,65.02
accept Looking Inside##55040 |goto 65.59,65.02
step
click Vault Door |goto 65.58,65.14
Watch the dialogue
Enter the Vault |q 55040/1 |goto 65.82,66.36
step
talk Tinkmaster Overspark##149877
|tip Inside the vault.
turnin Looking Inside##55040 |goto 65.82,66.36
accept Let's Get It Started##54945 |goto 65.82,66.36
step
click Gear Controls
|tip Inside the vault.
Repair the Gears |q 54945/1 |goto 65.66,66.51
step
click Electrode
|tip Inside the vault.
Activate Electrode |q 54945/2 |goto 66.02,65.83
step
click Alpha Wire
|tip Inside the vault.
Grab the Alpha Wire |havebuff 136101 |goto 66.04,65.84 |q 54945
step
click Alpha Pylon
|tip Inside the vault.
Attach the Alpha Wire to Alpha Pylon |q 54945/3 |goto 66.14,66.25
step
click Beta Wire
|tip Inside the vault.
Grab the Beta Wire |havebuff 136101 |goto 66.00,65.81 |q 54945
step
click Beta Pylon
|tip Inside the vault.
Attach the Beta Wire to Beta Pylon |q 54945/4 |goto 65.92,66.45
step
talk Tinkmaster Overspark##149877
|tip Inside the vault.
turnin Let's Get It Started##54945 |goto 65.82,66.37
accept You Must be This Height##54087 |goto 65.82,66.37
step
talk Tinkmaster Overspark##149877
|tip Inside the vault.
Tell him _"I'm ready. Activate the device."_
Speak with Tinkmaster Overspark |q 54087/1 |goto 65.82,66.37
step
Watch the dialogue
Discover the Purpose of the Device |q 54087/2
step
click Tri-dimensional Coordinates##325907
|tip Inside the vault.
collect Tri-dimensional Coordinates##167039 |q 54087/3 |goto 65.89,66.46
step
talk Tinkmaster Overspark##149877
|tip Inside the vault.
turnin You Must be This Height##54087 |goto 65.82,66.37
accept Report to Gila##54946 |goto 65.82,66.37
step
talk Gila Crosswires##151100
turnin Report to Gila##54946 |goto Boralus/0 67.23,15.93
accept A Small Team##54947 |goto 67.23,15.93
step
Run down the stairs |goto 66.28,19.77 < 20 |only if walking
click Climbing Rope
Use the Access Rope |q 54947/1 |goto 63.95,33.44
step
talk Sapphronetta Flivvers##150117
|tip Inside the building.
Tell her _"We need you for Mechagon."_
Recruit Sapphronetta Flivvers |q 54947/2 |goto 65.07,32.71
step
talk Grizzek Fizzwrench##150121
|tip Upstairs inside the building.
Tell him _"Your partner in life, love and the lab says I should invite you to come to Mechagon."_
Recruit Grizzek Fizzwrench |q 54947/3 |goto 64.91,32.87
step
Follow the path |goto 61.24,19.64 < 20 |only if walking
talk Cog Captain Winklespring##151102
Tell him _"We need you for Mechagon."_
Recruit Cog Captain Winklespring |q 54947/4 |goto 51.09,18.89
step
Cross the bridge |goto Tiragarde Sound/0 67.01,25.40 < 20 |only if walking
Reach the Departure Point |q 54947/5 |goto Boralus/0 43.23,32.00
step
talk Gila Crosswires##150145
turnin A Small Team##54947 |goto 43.23,32.00
accept The Start of Something Bigger##54992 |goto 43.23,32.00
step
clicknpc Expedition Gyrocopter##150199
Board the Expedition Gyrocopter |q 54992/1 |goto 42.94,31.39
step
Watch the dialogue
Arrive at Mechagon |q 54992/2
step
talk Cog Captain Winklespring##150639
fpath Overspark Expedition Camp |goto Mechagon Island/0 77.84,40.93
step
talk Tinkmaster Overspark##152484
turnin The Start of Something Bigger##54992 |goto 77.58,40.44
accept Princely Visit##55645 |goto 77.58,40.44
step
Watch the dialogue
Explore Rustbolt |q 55645/1 |goto 71.09,38.33
step
talk Prince Erazmin##152851
turnin Princely Visit##55645 |goto 71.09,38.32
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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Veiled Grotto (Zuldazar)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Veiled Grotto outpost in Zuldazar.",
condition_suggested=function() return level >= 50 and rep('7th Legion') >= Honored and not completedq(52802) end,
condition_end=function() return completedq(52802) end,
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51918)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Honored Reputation with the 7th Legion |condition rep('7th Legion') >= Honored
|tip Use the "World Quests" guides to complete "7th Legion" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Alliance".
step
talk Vindicator Jaelaana##135446
accept Expanding our Influence##54495 |goto Boralus/0 68.96,24.70
step
talk Vindicator Jaelaana##135446
buy Scouting Report: Veiled Grotto##163048 |goto 68.96,24.70 |q 52801 |future
step
talk Vindicator Jaelaana##135446
turnin Expanding our Influence##54495 |goto 68.96,24.70
step
use the Scouting Report: Veiled Grotto##163048
|tip It will seem like nothing has happened after you use it.
Click Here After Using The Scouting Report |confirm |q 52801 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Veiled Grotto" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Veiled Grotto##52801 |goto 70.56,27.19
|tip You will accept this quest automatically after you complete the mission.
step
talk Halford Wyrmbane##135612
turnin Mission Report: Veiled Grotto##52801 |goto 69.27,27.00
accept Veiled Grotto##52802 |goto 69.27,27.00
step
Enter the tunnel |goto Zuldazar/0 45.50,61.55 < 20 |only if walking
Leave the tunnel |goto Zuldazar/0 47.40,59.70 < 20 |only if walking
Follow the road up |goto Zuldazar/0 52.63,54.67 < 30 |only if walking
Follow the road up |goto Zuldazar/0 52.58,49.30 < 30 |only if walking
Follow the road up |goto Zuldazar/0 52.36,39.96 < 30 |only if walking
Follow the path up |goto Zuldazar/0 50.79,36.80 < 30 |only if walking
Run up the stairs |goto Zuldazar/0 49.39,38.70 < 15 |only if walking
Follow the road up |goto Zuldazar/0 48.19,39.42 < 20 |only if walking
Follow the road up |goto Zuldazar/0 45.86,38.56 < 30 |only if walking
click Alliance Banner
Claim the Outpost |q 52802/1 |goto 44.48,36.69
step
talk Isaac "Lefteye" Bentham##139181
fpath Veiled Grotto |goto 44.42,36.83
step
talk Kolton Garrick##141884
|tip Inside the cave.
turnin Veiled Grotto##52802 |goto 44.25,36.49
step
_Congratulations!_
You unlocked the Veiled Grotto outpost in Zuldazar.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Grimwatt's Crash (Nazmir)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Grimwatt's Crash outpost in Nazmir.",
condition_suggested=function() return level >= 50 and rep('7th Legion') >= Honored and not completedq(53187) end,
condition_end=function() return completedq(53187) end,
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51918)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Honored Reputation with the 7th Legion |condition rep('7th Legion') >= Honored
|tip Use the "World Quests" guides to complete "7th Legion" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Alliance".
step
talk Vindicator Jaelaana##135446
accept Expanding our Influence##54495 |goto Boralus/0 68.96,24.70
step
talk Vindicator Jaelaana##135446
buy Scouting Report: Grimwatt's Crash##163043 |goto Boralus/0 68.96,24.70 |q 53006 |future
step
talk Vindicator Jaelaana##135446
turnin Expanding our Influence##54495 |goto 68.96,24.70
step
use the Scouting Report: Grimwatt's Crash##163043
|tip It will seem like nothing has happened after you use it.
Click Here After Using The Scouting Report |confirm |q 53006 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Grimwatt's Crash" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Grimwatt's Crash##53006 |goto 70.56,27.19
|tip You will accept this quest automatically after you complete the mission.
step
talk Halford Wyrmbane##135612
turnin Mission Report: Grimwatt's Crash##53006 |goto 69.27,27.00
accept Grimwatt's Crash##53007 |goto 69.27,27.00
step
Follow the path |goto Nazmir/0 59.71,40.90 < 30 |only if walking
Continue following the path |goto Nazmir/0 37.25,48.15 < 30 |only if walking
click Alliance Banner
Claim the Outpost |q 53007/1 |goto Nazmir/0 34.16,63.44
step
talk Noella Davenport##142478
fpath Grimwatt's Crash |goto 34.31,63.21
step
talk Fellyia Wildsong##142360
turnin Grimwatt's Crash##53007 |goto 33.88,63.22
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Ambush at Grimwatt's Crash" mission.
|tip You may have to wait for this mission to appear.
|tip This mission will take 6 hours to complete.
accept Mission Report: Ambush at Grimwatt's Crash##53186 |goto Boralus/0 70.56,27.19
|tip You will accept this quest automatically after you complete the mission.
step
talk Halford Wyrmbane##135612
turnin Mission Report: Ambush at Grimwatt's Crash##53186 |goto 69.26,27.00
accept An Unexpected Guest##53187 |goto 69.26,27.00
step
talk Noella Davenport##142478
turnin An Unexpected Guest##53187 |goto Nazmir/0 34.31,63.21
step
_Congratulations!_
You unlocked the Grimwatt's Crash outpost in Nazmir.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Mistvine Ledge (Zuldazar)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Mistvine Ledge outpost in Zuldazar.",
condition_suggested=function() return level >= 50 and rep('7th Legion') >= Revered and not completedq(53307) end,
condition_end=function() return completedq(53307) end,
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51918)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with the 7th Legion |condition rep('7th Legion') >= Revered
|tip Use the "World Quests" guides to complete "7th Legion" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Alliance".
step
talk Vindicator Jaelaana##135446
buy Scouting Report: Mistvine Ledge##163044 |goto Boralus/0 68.96,24.70 |q 52962 |future
step
use the Scouting Report: Mistvine Ledge##163044
|tip It will seem like nothing has happened after you use it.
Click Here After Using The Scouting Report |confirm |q 52962 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Mistvine Ledge" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Mistvine Ledge##52962 |goto 70.56,27.19
|tip You will accept this quest automatically after you complete the mission.
step
talk Halford Wyrmbane##135612
turnin Mission Report: Mistvine Ledge##52962 |goto 69.28,27.00
accept Mistvine Ledge##52963 |goto 69.28,27.00
step
Follow the road |goto Zuldazar/0 70.29,30.35 < 30 |only if walking
Follow the road |goto Zuldazar/0 65.33,38.36 < 30 |only if walking
Follow the road |goto Zuldazar/0 65.04,43.24 < 30 |only if walking
Follow the path up |goto Zuldazar/0 63.42,46.68 < 20 |only if walking
click Alliance Banner
Claim the Outpost |q 52963/1 |goto Zuldazar/0 64.46,47.48
step
talk Sornoth Slagmane##139180
fpath Mistvine Ledge |goto 64.33,47.33
step
talk Neva##142288
turnin Mistvine Ledge##52963 |goto 64.46,47.29
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Jungle Escort" mission.
|tip You may have to wait for this mission to appear.
|tip This mission will take 6 hours to complete.
accept Mission Report: Jungle Escort##53306 |goto Boralus/0 70.56,27.19
|tip You will accept this quest automatically after you complete the mission.
step
talk Halford Wyrmbane##135612
turnin Mission Report: Jungle Escort##53306 |goto 69.26,27.00
accept Jungle Escort##53307 |goto 69.26,27.00
step
talk Neva##142288
turnin Jungle Escort##53307 |goto Zuldazar/0 64.46,47.29
step
_Congratulations!_
You unlocked the Mistvine Ledge outpost in Zuldazar.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Mugamba Overlook (Zuldazar)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Mugamba Overlook outpost in Zuldazar.",
condition_suggested=function() return level >= 50 and rep('7th Legion') >= Revered and not completedq(53276) end,
condition_end=function() return completedq(53276) end,
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51918)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with the 7th Legion |condition rep('7th Legion') >= Revered
|tip Use the "World Quests" guides to complete "7th Legion" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Alliance".
step
talk Vindicator Jaelaana##135446
buy Scouting Report: Mugamba Overlook##163047 |goto Boralus/0 68.96,24.70 |q 52851 |future
step
use the Scouting Report: Mugamba Overlook##163047
|tip It will seem like nothing has happened after you use it.
Click Here After Using The Scouting Report |confirm |q 52851 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Mugamba Overlook" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Mugamba Overlook##52851 |goto 70.56,27.19
|tip You will accept this quest automatically after you complete the mission.
step
talk Halford Wyrmbane##135612
turnin Mission Report: Mugamba Overlook##52851 |goto 69.27,27.00
accept Mugamba Overlook##52852 |goto 69.27,27.00
step
Follow the path up |goto Zuldazar/0 45.46,28.74 < 20 |only if walking
click Alliance Banner
Claim the Outpost |q 52852/1 |goto Zuldazar/0 44.72,27.48
step
talk Drager Smokewing##139179
fpath Mugamba Overlook |goto 44.84,27.07
step
talk Darchelle Hayes##141949
turnin Mugamba Overlook##52852 |goto 44.86,27.40
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Spare Parts" mission.
|tip You may have to wait for this mission to appear.
|tip This mission will take 6 hours to complete.
accept Mission Report: Spare Parts##53275 |goto Boralus/0 70.56,27.19
|tip You will accept this quest automatically after you complete the mission.
step
talk Halford Wyrmbane##135612
turnin Mission Report: Spare Parts##53275 |goto 69.26,27.00
accept Spare Parts##53276 |goto 69.26,27.00
step
talk Giblin Clockspark##143430
turnin Spare Parts##53276 |goto Zuldazar/0 44.94,27.25
step
_Congratulations!_
You unlocked the Mugamba Overlook outpost in Zuldazar.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Verdant Hollow (Zuldazar)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Verdant Hollow outpost in Zuldazar.",
condition_suggested=function() return level >= 50 and rep('7th Legion') >= Revered and not completedq(52888) end,
condition_end=function() return completedq(52888) end,
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51918)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with the 7th Legion |condition rep('7th Legion') >= Revered
|tip Use the "World Quests" guides to complete "7th Legion" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Alliance".
step
talk Vindicator Jaelaana##135446
buy Scouting Report: Verdant Hollow##163046 |goto Boralus/0 68.96,24.70 |q 52886 |future
step
use the Scouting Report: Verdant Hollow##163046
|tip It will seem like nothing has happened after you use it.
Click Here After Using The Scouting Report |confirm |q 52886 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Verdant Hollow" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Verdant Hollow##52886 |goto 70.56,27.19
|tip You will accept this quest automatically after you complete the mission.
step
talk Halford Wyrmbane##135612
turnin Mission Report: Verdant Hollow##52886 |goto 69.28,27.00
accept Verdant Hollow##52888 |goto 69.28,27.00
step
Cross the bridge |goto Zuldazar/0 59.40,22.88 < 15 |only if walking
Follow the road up |goto Zuldazar/0 59.06,24.75 < 20 |only if walking
click Alliance Banner
Claim the Outpost |q 52888/1 |goto Zuldazar/0 55.23,25.25
step
talk Kina Cobbleflame##136074
fpath Verdant Hollow |goto 55.65,24.85
step
Enter the cave |goto 55.19,25.34 < 15 |walk
talk Argrim Stonedeep##142101
|tip Inside the cave.
turnin Verdant Hollow##52888 |goto 54.87,25.56
step
_Congratulations!_
You unlocked the Verdant Hollow outpost in Zuldazar.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Scouting Reports\\Vulture's Nest (Vol'dun)",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the Vulture's Nest outpost in Vol'dun.",
condition_suggested=function() return level >= 50 and rep('7th Legion') >= Revered and not completedq(53222) end,
condition_end=function() return completedq(53222) end,
},[[
step
Reach Level 50 |ding 50
|tip You must be at least level 50 to continue this questline.
|tip Use the Leveling guides to accomplish this.
step
Unlock World Quests |condition completedq(51918)
|tip Use the "War Campaign" guide to accomplish this.
step
Reach Revered Reputation with the 7th Legion |condition rep('7th Legion') >= Revered
|tip Use the "World Quests" guides to complete "7th Legion" world quests.
|tip Complete the weekly Island Expeditions quest "Azerite for the Alliance".
step
talk Vindicator Jaelaana##135446
buy Scouting Report: Vulture's Nest##163041 |goto Boralus/0 68.96,24.70 |q 53043 |future
step
use the Scouting Report: Vulture's Nest##163041
|tip It will seem like nothing has happened after you use it.
Click Here After Using The Scouting Report |confirm |q 53043 |future
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Vulture's Nest" mission.
|tip This mission will take 6 hours to complete.
accept Mission Report: Vulture's Nest##53043 |goto 70.56,27.19
|tip You will accept this quest automatically after you complete the mission.
step
talk Halford Wyrmbane##135612
turnin Mission Report: Vulture's Nest##53043 |goto 69.27,27.00
accept Vulture's Nest##53044 |goto 69.27,27.00
step
Follow the path |goto Vol'dun/0 61.94,27.24 < 30 |only if walking
Follow the path |goto Vol'dun/0 60.12,34.54 < 15 |only if walking
Follow the path up |goto Vol'dun/0 54.91,36.69 < 20 |only if walking
Follow the path up |goto Vol'dun/0 53.32,35.46 < 20 |only if walking
Follow the path up |goto Vol'dun/0 52.69,36.25 < 15 |only if walking
click Alliance Banner
Claim the Outpost |q 53044/1 |goto Vol'dun/0 53.76,37.78
step
talk Buzz Crankchug##138256
fpath Vulture's Nest |goto 53.60,37.67
step
talk Hilda Hammerfast##142555
turnin Vulture's Nest##53044 |goto 53.71,37.72
step
click Mission Command Table
|tip Click the "Missions" tab at the bottom of the window that appears.
|tip Complete the "Missing Supplies" mission.
|tip You may have to wait for this mission to appear.
|tip This mission will take 6 hours to complete.
accept Mission Report: Missing Supplies##53221 |goto Boralus/0 70.56,27.19
|tip You will accept this quest automatically after you complete the mission.
step
talk Halford Wyrmbane##135612
turnin Mission Report: Missing Supplies##53221 |goto 69.26,27.00
accept Necessary Supplies##53222 |goto 69.26,27.00
step
talk Buzz Crankchug##138256
turnin Necessary Supplies##53222 |goto Vol'dun/0 53.60,37.68
step
_Congratulations!_
You unlocked the Vulture's Nest outpost in Vol'dun.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Void Elf Race Unlock",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the new Void Elf allied race.",
condition_suggested=function() return achieved(12066) and not achieved(12242) end,
condition_end=function() return achieved(12242) end,
image=ZGV.IMAGESDIR.."VoidElfUnlock",
},[[
step
You must Earn the Achievement "You Are Now Prepared!" |achieve 12066
|tip Use the "Argus Campaign" Leveling Guide to earn this achievement.
Click here to Open the "Argus Campaign" Leveling Guide |loadguide "Leveling Guides\\Legion (10-60)\\Argus Campaign"
step
Enter the building |goto Stormwind City/0 52.77,14.49 < 7 |walk
talk Aysa Cloudsinger##126332
|tip Inside the building.
accept The Call for Allies##49929 |goto 52.07,13.42
|tip Inside the building.
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin The Call for Allies##49929 |goto 52.07,13.42
accept The Ghostlands##49787 |goto 52.05,13.40
step
click Rift to Ghostlands
|tip Wait a moment for Alleria to open the rift.
Travel to the Ghostlands with Alleria |q 49787/1 |goto Ghostlands/0 36.31,15.32
step
Follow the path |goto Ghostlands/0 37.95,17.96 < 15 |only if walking
Follow the path |goto 38.05,21.59 < 15 |only if walking
Follow the path |goto 36.47,26.24 < 10 |only if walking
Follow the path |goto 34.57,31.64 < 10 |only if walking
Cross the water |goto 34.42,32.63 < 7 |only if walking
Enter the building |goto 33.70,33.59 < 7 |walk
click Umbric's Notes - Sanctum of the Moon
Locate Umbric's Notes - Sanctum of the Moon |q 49787/2 |goto 33.63,34.46
step
Leave the building |goto 33.81,33.43 < 7 |walk
Follow the path |goto 34.99,33.77 < 10 |only if walking
Follow the path |goto 37.08,38.28 < 10 |only if walking
Follow the path |goto 40.28,41.20 < 15 |only if walking
Go up the hill |goto 42.90,43.93 < 15 |only if walking
Follow the path |goto 43.89,45.62 < 10 |only if walking
Follow the path |goto 43.32,48.01 < 10 |only if walking
Follow the path |goto 43.41,50.28 < 10 |only if walking
Follow the path |goto 44.72,54.71 < 10 |only if walking
Follow the path |goto 46.49,56.57 < 10 |only if walking
Enter the building |goto 46.68,55.98 < 7 |walk
click Umbric's Notes - Andilien Estate
Locate Umbric's Notes - Andilien Estate |q 49787/3 |goto 46.87,54.97
step
Leave the building |goto 46.65,56.12 < 7 |walk
Follow the path |goto 47.62,58.41 < 15 |only if walking
Follow the path |goto 51.09,57.04 < 10 |only if walking
Follow the path |goto 57.84,58.56 < 10 |only if walking
Follow the path |goto 60.64,52.81 < 15 |only if walking
Follow the path |goto 66.26,45.04 < 15 |only if walking
Follow the path |goto 67.69,35.64 < 15 |only if walking
Follow the path |goto 70.52,33.79 < 10 |only if walking
|tip Avoid the Horde NPCs.
Follow the path |goto 73.82,34.20 < 10 |only if walking
Follow the path |goto 75.77,31.44 < 15 |only if walking
Follow the path |goto 76.96,27.30 < 15 |only if walking
Follow the path |goto 78.05,20.38 < 10 |only if walking
Enter the building |goto 78.81,19.83 < 7 |walk
click Teleportation Console |goto 79.65,17.57
click Umbric's Notes - Dawnstar Spire
|tip They're all the way at the top, up the spiral ramp.
Locate Umbric's Notes - Dawnstar Spire |q 49787/4
step
talk Alleria Windrunner##126321
turnin The Ghostlands##49787 |goto 79.69,19.62
accept Telogrus Rift##48962 |goto 79.69,19.62
step
click Rift to Telogrus
Enter the Rift to Telogrus |scenariostart |goto 79.64,19.86 |q 48962 |future
step
talk Magister Umbric##126646
Ask him _"What is this place?"_
Speak with Umbric |scenariogoal Speak with Umbric##1/37328 |goto Void Elf Scenario/0 47.83,73.88 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 49.59,73.87 < 10 |walk
Follow the path |goto 49.91,75.43 < 7 |walk
Walk with Umbric and Alleria |scenariogoal Walk with Umbric and Alleria.##2/37282 |goto 49.33,76.66 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 50.15,74.91 < 7 |walk
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##3/38503 |goto 48.97,72.91 |q 48962 |future
step
Follow the path |goto Void Elf Scenario/0 41.30,60.12 < 10 |walk
Kill enemies around this area
|tip Avoid dark colored orbs.
Repel the Void |scenariostage 4 |goto 39.30,54.49 |q 48962 |future
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##5/38971 |goto 37.32,49.26 |q 48962 |future
step
kill Dark Manifestation##126559+
Close the rift |scenariogoal Rift sealed##6/37295 |goto 28.92,40.34 |q 48962 |future
step
kill Nhr'ghesh##126589 |scenariogoal Nhr'ghesh defeated##7/37296 |goto 28.92,40.34 |q 48962 |future
step
click Void Rift
Use the Void Portal |scenariogoal Use the void portal.##8/38972 |goto 28.89,38.30 |q 48962 |future
step
click Voidforge
Shut Down the First Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 29.00,27.81 |count 1 |q 48962 |future
step
click Voidforge
Shut Down the Second Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 28.49,21.70 |count 2 |q 48962 |future
step
click Voidforge
Shut Down the Third Voidforge |scenariogoal Voidforges shut down##9/37329 |goto 26.21,24.46 |count 3 |q 48962 |future
step
kill Nether-Prince Durzaan##126470 |scenariogoal Nether-Walker defeated##10/37284 |goto 27.90,24.09 |q 48962 |future
step
click Rift to Stormwind |goto 27.95,24.50
Leave the Telogrus Rift |goto Stormwind City/0 53.62,15.77 < 1000 |noway |c |q 48962 |future
step
Enter the building |goto 52.76,14.45 < 7 |walk
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin Telogrus Rift##48962 |goto 52.07,13.41
step
_Congratulations!_
You Unlocked the "Void Elf" Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Lightforged Draenei Race Unlock",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking the new Lightforged Draenei allied race.",
condition_suggested=function() return achieved(12066) and not achieved(12243) end,
condition_end=function() return achieved(12243) end,
image=ZGV.IMAGESDIR.."LightforgedDraeneiUnlock",
},[[
step
You must Earn the Achievement "You Are Now Prepared!" |achieve 12066
|tip Use the "Argus Campaign" Leveling Guide to earn this achievement.
Click here to Open the "Argus Campaign" Leveling Guide |loadguide "Leveling Guides\\Legion (10-60)\\Argus Campaign"
step
Enter the building |goto Stormwind City/0 52.77,14.49 < 7 |walk
talk Aysa Cloudsinger##126332
|tip Inside the building.
accept The Call for Allies##49929 |goto 52.07,13.42
|tip Inside the building.
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin The Call for Allies##49929 |goto 52.07,13.42
accept The Lightforged##49698 |goto Stormwind City/0 52.12,13.70
step
Leave the building |goto 52.83,14.62 < 7 |walk
clicknpc Lightforged Beacon##130758 |goto 54.41,14.46
Board the Vindicaar |goto Vindicaar Scenario/1 49.97,46.22 |noway |c |q 49698 |future
step
talk Captain Fareeya##130549
turnin The Lightforged##49698 |goto 443.83,27.05
accept Forge of Aeons##49266 |goto 43.83,27.05
step
clicknpc Lightforged Beacon##130511
Enter the Scenario |scenariostart |goto 49.90,46.22 |q 49266 |future
step
Meet with T'paartos |scenariogoal Meet with T'paartos##1/37571 |goto Draenei Scenario/0 88.01,44.45 |q 49266 |future
step
Follow the path |goto 89.02,37.72 < 7 |walk
Enter the building |goto 87.71,29.59 < 7 |walk
Follow T'paartos |scenariogoal Follow T'paartos##2/37710 |goto 88.76,28.34 |q 49266 |future
step
See the Past |scenariogoal See the past##3/37711 |goto 88.76,28.34 |q 49266 |future
|tip Wait for the dialogue to complete.
step
Leave the building |goto 87.59,29.64 < 7 |walk
Enter the Swamp |scenariogoal Swamp entered##4/37712 |goto 83.67,32.38 |q 49266 |future
step
Go down the hill |goto Draenei Scenario/0 79.50,33.54 < 10 |walk
Follow the path |goto 72.26,22.78 < 7 |walk
Cross the bridge |goto 69.52,26.08 < 7 |walk
Find the Child |scenariogoal Child found##5/37718 |goto 66.79,29.70 |q 49266 |future
step
kill Swamp Serpent##128115 |scenariogoal Swamp Serpent slain##6/37717 |goto 66.79,29.70 |q 49266 |future
step
Cross the bridge |goto Draenei Scenario/0 61.85,31.98 < 7 |walk
Find the Refuge |scenariogoal Refuge found##7/37931 |goto 57.10,23.78 |q 49266 |future
step
Enter the tunnel |goto Draenei Scenario/0 52.98,26.33 < 7 |walk
clicknpc Crystal##128036
Collect the Crystal |scenariogoal Crystal collected##8/37932 |goto 47.01,27.36 |q 49266 |future
step
kill Crystal Fury##128038 |scenariogoal Crystal Fury slain##9/37968 |goto 47.55,27.88 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 51.85,27.05 < 7 |walk
Leave the tunnel |goto 56.98,23.63 < 7 |walk
Kill Doubt and Fear enemies around this area
Conquer #7# Doubts and Fears |scenariogoal Doubts and Fears conquered##10/37933 |goto 45.59,41.87 |q 49266 |future
step
Follow the path |goto 39.25,43.77 < 10 |walk
Follow the path |goto 22.67,37.22 < 10 |walk
Find the Cave |scenariogoal Cave found##11/38069 |goto 16.63,46.71 |q 49266 |future
step
Enter the tunnel |goto 13.36,49.96 < 7 |walk
kill Terror##128427 |scenariogoal Terror defeated##12/38070 |goto 8.61,50.26 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 12.77,50.31 < 7 |walk
Leave the cave |goto 17.01,46.38 < 7 |walk
Follow the path |goto 23.41,36.61 < 10 |walk
Follow the path |goto 39.32,44.45 < 10 |walk
Follow T'paartos |scenariogoal Follow T'paartos##13/38071 |goto 45.67,59.90 |q 49266 |future
step
clicknpc T'paartos##128424
Free T'paartos |scenariogoal T'paartos freed##14/38072 |goto 46.80,65.95 |q 49266 |future
step
Follow the path |goto 49.44,64.93 < 15 |walk
Follow the path |goto 57.56,71.50 < 15 |walk
Follow T'paartos |scenariogoal Follow T'paartos##15/38103 |goto 66.64,77.57 |q 49266 |future
step
clicknpc T'paartos##128550
|tip At the bottom of the ramp.
Free Kind |scenariogoal Kind##16/38082 |goto 68.44,77.13 |q 49266 |future
step
Follow the path |goto 67.03,73.01 < 7 |walk
Follow the path |goto 64.87,71.63 < 7 |walk
Follow the path |goto 61.21,72.99 < 7 |walk
Follow the path |goto 62.17,77.99 < 7 |walk
clicknpc T'paartos##128550
Free Brave |scenariogoal Brave##16/38084 |goto 65.72,73.60 |q 49266 |future
step
Follow the path |goto 65.44,81.63 < 7 |walk
clicknpc T'paartos##128550
Free Strong |scenariogoal Strong##16/38083 |goto 72.31,86.51 |q 49266 |future
step
Follow the path |goto 75.72,79.21 < 10 |walk
clicknpc T'paartos##128550
Free Boastful |scenariogoal Boastful##16/38085 |goto 69.63,68.26 |q 49266 |future
step
Follow the path |goto 66.43,71.90 < 7 |walk
Follow the path |goto 63.47,72.46 < 7 |walk
clicknpc T'paartos##128550
Free Frightened |scenariogoal Frightened##16/38086 |goto 63.02,74.48 |q 49266 |future
step
Follow the path |goto 62.05,78.82 < 7 |walk
Follow the path |goto 63.47,81.43 < 7 |walk
clicknpc T'paartos##128550
Free Inadequate |scenariogoal Inadequate##16/38087 |goto 69.57,77.86 |q 49266 |future
step
Follow the path |goto Draenei Scenario/0 67.85,87.10 < 10 |walk
kill T'paartos the Fallen##127924
|tip Wait for the dialogue to complete.
Help T'paartos |scenariogoal Help T'paartos##17/38088 |goto 73.72,94.30 |q 49266 |future
step
clicknpc Lightforged Beacon##127964 |goto 71.67,95.43
Leave the Forge of Aeons |goto Vindicaar Scenario/1 49.97,46.22 < 1000 |noway |c |q 49266 |future
step
talk Captain Fareeya##130549
turnin Forge of Aeons##49266 |goto 48.41,39.51
step
talk High Exarch Turalyon##130810
accept For the Light!##50071 |goto 47.53,40.22
step
Follow the path |goto 40.24,44.39 < 7 |walk
Go down the stairs |goto Vindicaar Scenario/2 49.59,60.56 < 7 |walk
Follow the path |goto 43.93,67.53 < 7 |walk
Follow the path |goto 35.22,52.53 < 7 |walk
click Portal to Stormwind |goto 43.29,24.97
Return to Stormwind |goto Stormwind City/0 53.62,15.77 < 1000 |noway |c |q 50071 |future
step
Enter the building |goto Stormwind City/0 52.79,14.53 < 7 |walk
talk Anduin Wrynn##126301
turnin For the Light!##50071 |goto 52.07,13.41
step
_Congratulations!_
You Unlocked the "Lightforged Draenei" Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Dark Iron Dwarf Race Unlock",{
author="support@zygorguides.com",
description="\nTo unlock the new Dark Iron Dwarf allied race, you will need to earn the \"Ready for War\" "..
"achievement.",
condition_suggested=function() return achieved(12510) and not achieved(12515) end,
condition_valid=function() return level >= 50 end,
condition_valid_msg="You must be level 50 or higher to use this guide.",
condition_end=function() return achieved(12515) end,
image=ZGV.IMAGESDIR.."DarkIronDwarfUnlock",
},[[
step
Load the "War Campaign" Leveling Guide |confirm |next "Leveling Guides\\Battle for Azeroth (10-60)\\War Campaign"
|tip Click the line above to load the guide.
|tip You must complete the "An End to the Killing" quest in this guide.
Earn the "Ready for War" Achievement |achieve 12510
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
accept Blackrock Depths##51813 |goto Stormwind City/0 52.03,13.75
step
talk Moira Thaurissan##133197
|tip Inside the building.
Tell her _"(Quest) I am ready to go to Blackrock Depths."_
Transport to Blackrock Depths |scenariostart |goto 52.03,13.75 |q 51813
step
Meet the Dark Iron at the Black Anvil |scenariogoal 1/40480 |goto Blackrock Scenario/0 56.66,31.33 |q 51813
step
click Crate o' Azerite##292617
Pick up the Azerite Crate |havebuff 132765 |goto 55.84,31.93 |q 51813
step
click Place Crate o' Azerite##292882
Place Azerite on the Black Anvil |scenariogoal 2/40528 |goto 56.66,31.33 |q 51813
step
Kill Azerite enemies around this area
Defeat Azerite Elementals |scenariogoal 3/40527 |goto 56.66,31.33 |q 51813
step
Watch the dialogue
Receive Orders from Moira |scenariogoal 4/40540 |goto 57.05,30.34 |q 51813
step
kill 8 Venture Co. Skyscorcher##139268 |scenariogoal 5/40539 |goto 47.51,45.31 |q 51813
step
Follow the path |goto 44.61,49.89 < 10 |walk
Continue following the path |goto 35.39,60.14 < 20 |walk
Kill enemies around this area
|tip Avoid the spiked metal mines on the ground around this area.
Defend the Dark Iron Highway |scenariogoal 6/40545 |goto 29.27,56.58 |q 51813
step
kill Rixxa Fluxflame##139273 |scenariogoal 7/40547 |goto 35.72,63.83 |q 51813
|tip You only need to drop her to 70% or so.
step
Follow the path |goto 44.70,49.97 < 10 |walk
Return to the Black Anvil |scenariogoal 8/40548 |goto 56.66,31.33 |q 51813
step
Complete the Blackrock Depths Scenario |q 51813/1 |goto 57.04,30.34
step
talk Moira Thaurissan##140309
turnin Blackrock Depths##51813 |goto 57.04,30.34
accept The MOTHERLODE!!: Ironfoe##53351 |goto 57.04,30.34
step
clicknpc Mole Machine to Stormwind##143567 |goto 57.50,30.09
Return to Stormwind |goto Stormwind City/0 54.49,17.25 < 1000 |c |noway |q 53351
|tip You can also speak to Moira again to skip this dungeon quest.
Find Moira Thaurissan at [Blackrock Scenario/0 57.04,30.34]
step
Enter "The MOTHERLODE!!" Dungeon |goto The MOTHERLODE!!/0 0.00,0.00 |c |noway |q 53351
|tip Use the Dungeon Finder tool or enter the dungeon with you group.
step
kill Mogul Razdunk##132713
|tip Razdunk is the final boss of the instance.
collect 1 Ironfoe##163708 |q 53351/1
step
talk Moira Thaurissan##133197
|tip Inside the building.
turnin The MOTHERLODE!!: Ironfoe##53351 |goto Stormwind City/0 52.02,13.74
accept Molten Core##53342 |goto 52.02,13.74
step
Watch the dialogue
Retrieve a Shocking Amount o' Dark Iron Ingots |q 53342/1 |goto 52.02,13.74
step
talk Moira Thaurissan##133197 |goto 52.03,13.75
|tip Inside the building.
Tell her _"(Quest) I am ready to go to the Molten Core."_
Transport to Molten Core |goto Blackrock Scenario/1 27.73,27.43 < 1000 |c |noway |q 53342
step
clicknpc The Tank##143390
Get in The Tank |invehicle |goto 29.15,26.42 |q 53342
step
map Blackrock Scenario/1
path follow smart; loop off; ants curved
path	34.31,18.20	40.86,11.97	45.98,20.63	40.63,27.98	36.36,38.61
path	40.79,59.83	52.84,65.18
Ride Through The Molten Core |outvehicle |q 53342
|tip Follow the path, using the abilities on your action bar to deal with any enemies you encounter.
step
Follow the path |goto 61.64,62.41 < 20 |walk
Continue following the path |goto 61.31,48.71 < 20 |walk
Continue following the path |goto 49.61,49.23 < 20 |walk
Watch the dialogue
kill Flamewalker Sentinel##143415
click Molten Core##297702
collect Fragment o' the Molten Core##163693 |q 53342/2 |goto 56.08,56.67
step
clicknpc Mole Machine to Stormwind##143567 |goto 57.24,59.13
Return to Stormwind |goto Stormwind City/0 54.49,17.25 < 1000 |c |noway |q 53342
step
talk Moira Thaurissan##133197
|tip Inside the building.
turnin Molten Core##53342 |goto 52.03,13.74
accept Firelands##53352 |goto 52.03,13.74
step
talk Moira Thaurissan##133197
|tip Inside the building.
Tell her _"(Quest) I am ready to go to the Firelands."_
Transport to the Firelands |scenariostart |goto 52.03,13.75 |q 53352
step
Watch the dialogue
|tip Straight ahead.
kill Flamewalker Sentinel##143415
Speak with the Bridgekeeper |scenariogoal 1/41550 |q 53352
step
Kill enemies around this area
|tip Fight you way across the bridge, up the stairs, and into the building.
Slay the Cultists |scenariogoal 2/41551 |q 53352
step
Watch the dialogue
|tip Run all the way to the end of the hall.
Confront High-Justice Grimstone |scenariogoal 3/41563 |q 53352
step
kill High Justice Grimstone##143607 |scenariogoal 4/41561 |q 53352
step
Watch the dialogue
|tip Approach the lava pool to infuse the Molten Core with the power of Ragnaros.
|tip Walk into the glowing orb of flame and stand still.
Infuse the Power |scenariogoal 5/41562 |q 53352
step
clicknpc Mole Machine to Stormwind##143567
|tip Behind you.
Return to Stormwind |goto Stormwind City/0 54.49,17.25 < 1000 |c |noway |q 53352
step
talk Moira Thaurissan##133197
|tip Inside the building.
turnin Firelands##53352 |goto 52.03,13.74
accept Forged in Fire an' Flame##51474 |goto 52.03,13.74
step
talk Moira Thaurissan##133197
|tip Inside the building.
Tell her _"(Quest) I am ready to go to Blackrock Depths."_
Transport to Blackrock Depths |goto Blackrock Scenario/0 60.86,25.04 < 1000 |c |noway |q 51474
step
click Fragment 'o the Molten Core##298887
Repair the Black Anvil |q 51474/1 |goto 56.65,31.36
step
talk Moira Thaurissan##133197
turnin Forged in Fire an' Flame##51474 |goto 57.19,30.88
accept Dark Iron Dwarves##53566 |goto 57.19,30.88
step
clicknpc Mole Machine to Stormwind##143567 |goto 57.50,30.09
Return to Stormwind |goto Stormwind City/0 54.49,17.25 < 1000 |c |noway |q 53566
step
talk Anduin Wrynn##126301
|tip Inside the building.
turnin Dark Iron Dwarves##53566 |goto 52.08,13.43
step
_Congratulations!_
You Unlocked the "Dark Iron Dwarf" Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Dark Iron Dwarf Mole Machine Locations",{
author="support@zygorguides.com",
description="\nUnlock the various Dark Iron Mole Machines across Eastern Kingdoms, Kalimdor, Outland, Nothrend, Pandaria, Draenor, and Broken Shore.",
condition_end=function() return completedq(53589) end,
},[[
step
clicknpc Dark Iron Mole Machine##144281
Unlock the Throne of Flame Mole Machine |goto Mount Hyjal/0 57.17,77.11 |q 53601 |future
step
clicknpc Dark Iron Mole Machine##144280
Unlock The Great Divide Mole Machine |goto Southern Barrens/0 39.12,9.29 |q 53600 |future
step
clicknpc Dark Iron Mole Machine##144271
Unlock the Fire Plume Ridge Mole Machine |goto Un'Goro Crater/0 52.90,55.77 |q 53591 |future
step
clicknpc Dark Iron Mole Machine##144274
Unlock the Nethergarde Keep Mole Machine |goto Blasted Lands/0 61.97,12.81 |q 53594 |future
step
clicknpc Dark Iron Mole Machine##144265
Unlock the Aerie Peak Mole Machine |goto The Hinterlands/0 13.52,46.80 |q 53585 |future
step
clicknpc Dark Iron Mole Machine##144267
Unlock The Masonary Mole Machine |goto Burning Steppes/16 33.33,24.77 |q 53587 |future
step
clicknpc Dark Iron Mole Machine##144279
Unlock the Fel Pits Mole Machine |goto Shadowmoon Valley/0 50.77,35.31 |q 53599 |future
step
clicknpc Dark Iron Mole Machine##144277
Unlock the Skald Mole Machine |goto Blade's Edge Mountains/0 72.42,17.66 |q 53597 |future
step
clicknpc Dark Iron Mole Machine##144276
Unlock the Ruby Dragonshrine Mole Machine |goto Dragonblight/0 45.35,49.92 |q 53596 |future
step
clicknpc Dark Iron Mole Machine##144266
Unlock the Argent Tournament Grounds Mole Machine |goto Icecrown/0 76.97,18.67 |q 53586 |future
step
clicknpc Dark Iron Mole Machine##144278
Unlock the Stormstout Brewery Mole Machine |goto Valley of the Four Winds/0 31.52,73.61 |q 53598 |future
step
clicknpc Dark Iron Mole Machine##144275
Unlock the One Keg Mole Machine |goto Kun-Lai Summit/0 57.70,62.80 |q 53595 |future
step
clicknpc Dark Iron Mole Machine##144268
Unlock the Blackrock Foundry Overlook Mole Machine |goto Gorgrond/0 46.69,38.75 |q 53588 |future
step
clicknpc Dark Iron Mole Machine##144270
Unlock the Elemental Plateau Machine |goto Nagrand D/0 65.74,8.27 |q 53590 |future
step
clicknpc Dark Iron Mole Machine##144273
Unlock the Neltharion's Vault Mole Machine |goto Highmountain/0 44.66,72.89 |q 53593 |future
step
clicknpc Dark Iron Mole Machine##144269
Unlock the Broken Shore Mole Machine |goto Broken Shore/0 71.71,48.01 |q 53589 |future
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Kul Tiran Race Unlock",{
author="support@zygorguides.com",
description="\nTo unlock the new Kul Tiran allied race, you will need to earn the \"A Nation United\" and \n"..
"\"Tides of Vengeance\" achievements.",
condition_suggested=function() return (achieved(13467) and achieved(12891)) and not achieved(13163) end,
condition_end=function() return achieved(13163) end,
image=ZGV.IMAGESDIR.."KulTiranUnlock",
},[[
step
You must Earn the "Tides of Vengeance" Achievement |achieve 13467
|tip You must complete the "He Who Walks in the Light" quest.
Click Here to Open the "War Campaign" Leveling Guide |loadguide "Leveling Guides\\Battle for Azeroth (10-60)\\War Campaign"
step
You must Earn the "A Nation United" Achievement |achieve 12891
|tip Use the "A Nation United" achievement guide to earn this achievement.
Click Here to Open the "A Nation United" Achievement Guide |loadguide "Achievement Guides\\Quests\\Battle for Azeroth\\A Nation United"
step
Enter the building |goto Stormwind City/0 52.77,14.49 < 10 |walk
talk Aysa Cloudsinger##126332
|tip Inside the building.
accept Made in Kul Tiras##54706 |goto Stormwind City/0 52.05,13.40
step
talk Cyrus Crestfall##122370
|tip Inside the building.
Ask him _"I am told you know where to find the shipwright, Dorian Atwater?"_
Speak to Cyrus |q 54706/2 |goto Boralus/0 67.99,21.91
step
Watch the dialogue
talk Cyrus Crestfall##122370
turnin Made in Kul Tiras##54706 |goto 68.00,21.91
accept The Master Shipwright##55039 |goto 68.00,21.91
step
talk Lady Jaina Proudmoore##148798
Choose _<Take the letter.>_
collect Letter from the Lord Admiral##166462 |q 55039/1 |goto 67.95,22.21
step
talk Cyrus Crestfall##150515
turnin The Master Shipwright##55039 |goto Stormsong Valley/0 59.39,70.27
accept Fish Tales and Distant Sails##55043 |goto 59.39,70.27
step
talk Talkative Brennadam Citizen##150522+
|tip You can find them all over the area.
Ask them _"Do you know where I can find Dorian Atwater?"_
Learn Dorian's Location |q 55043/1 |goto 58.99,69.75
step
Enter the building |goto 58.76,70.44 < 10 |walk
talk Cyrus Crestfall##150515
|tip Inside the building.
turnin Fish Tales and Distant Sails##55043 |goto 58.67,70.36
accept Home, Home On the Range##54708 |goto 58.67,70.36
step
Follow the path |goto 43.60,54.00 < 20 |only if walking
Follow the road |goto 47.44,50.57 < 20 |only if walking
Find the Homestead |q 54708/1 |goto 49.94,50.03
step
talk Old Atwater##148872
Ask him _"Are you Dorian Atwater?"_
Meet the Shipwright |q 54708/2 |goto 49.94,50.03
step
Enter the building |goto 50.08,49.85 < 5 |walk
Meet the Actual Shipwright |q 54708/3 |goto 50.23,49.87
step
Watch the dialogue
talk Dorian Atwater##148870
|tip Inside the building.
turnin Home, Home On the Range##54708 |goto 50.23,49.87
accept I'm Too Old for This Ship##54721 |goto 50.23,49.87
step
clicknpc Hurricane##150581
|tip Keep trying to saddle Hurricane until you succeed.
Saddle Hurricane |q 54721/1 |goto 50.37,50.46
step
talk Dorian Atwater##148870
turnin I'm Too Old for This Ship##54721 |goto 66.12,47.36
accept Covering Our Masts##54723 |goto 66.12,47.36
accept The Deep Ones##54725 |goto 66.12,47.36
stickystart "Slay_Drowned_Forces"
step
click Fog Ward
Southern Fog Ward |q 54723/1 |goto 66.91,44.68
step
click Fog Ward
Place the Western Fog Ward |q 54723/2 |goto 65.94,43.50
step
Follow the path |goto 66.09,42.59 < 15 |only if walking
Continue following the path |goto 67.00,42.04 < 20 |only if walking
click Fog Ward
Place the Northern Fog Ward |q 54723/3 |goto 67.95,41.97
step
label "Slay_Drowned_Forces"
Kill Drowned enemies around this area
Slay #12# Drowned Forces |q 54725/1 |goto 67.61,42.00
step
Cross the bridge |goto 66.83,46.02 < 20 |only if walking
talk Dorian Atwater##148870
turnin Covering Our Masts##54723 |goto 66.12,47.36
turnin The Deep Ones##54725 |goto 66.12,47.36
accept Frame Work##54726 |goto 66.12,47.36
step
Follow the road |goto Tiragarde Sound/0 67.77,23.12 < 20 |only if walking
Enter the building |goto 68.89,20.43 < 5 |walk
Watch the dialogue
talk Marla Featherfoot##134696
turnin Frame Work##54726 |goto 68.95,20.55
accept Team Carry##54727 |goto 68.95,20.55
step
click Heavy Lumber+
|tip They look like huge stacks of logs on the ground around this area.
|tip Use the abilities on your action bar to call for assistance
Collect #4# Heavy Lumber |q 54727/1 |goto 68.16,18.36
step
Follow the road up |goto 68.04,16.96 < 20 |only if walking
Continue following the road |goto 67.11,15.21 < 20 |only if walking
Continue following the road |goto 67.87,13.87 < 20 |only if walking
Follow Dorian to the Drop Point |q 54727/2 |goto 67.10,12.33
|tip Make sure you follow her up the path here. Don't outrun her or it will delay the completion of the quest.
|tip Use the skill on your action bar to mark enemies so Dorian can kill them.
step
Watch the dialogue
talk Dorian Atwater##148870
turnin Team Carry##54727 |goto 67.10,12.33
accept This Lumber is Haunted##54728 |goto 67.10,12.33
accept The Bleak Hills##54729 |goto 67.10,12.33
step
Seek out Thornspeaker Birchgrove in Gol Koval |q 54728/1 |goto 67.11,12.34
step
Cross the bridge |goto Drustvar/0 69.46,59.30 < 10 |only if walking
Follow the path |goto 67.12,55.63 < 20 |only if walking
Follow the road up |goto 64.17,57.09 < 20 |only if walking
talk Thornspeaker Birchgrove##139926
turnin This Lumber is Haunted##54728 |goto 61.88,59.33
accept Gorak Tul's Influence##54730 |goto 61.88,59.33
step
Kill enemies around this area
click Empowered Minor Cairn+
|tip They look like large stone slabs on the ground around this area.
Fill the Drust Vessel |q 54730/1 |goto 61.30,62.10
step
talk Thornspeaker Birchgrove##139926
turnin Gorak Tul's Influence##54730 |goto 61.88,59.33
accept Balance in All Things##54731 |goto 61.88,59.33
step
talk Arthur Tradewind##149293
Ask it _"Can you take me to the High Thornspeaker?"_
clicknpc Arthur Tradewind##149294
Jump on Ulfar |invehicle |goto 61.85,59.37 |q 54731
step
Watch the dialogue
Arrive at Ulfar's Den |outvehicle |goto 46.27,44.96 |q 54731 |noway
step
Enter the cave |goto 46.05,45.30 < 20 |walk
talk Ulfar##141159
|tip Inside the cave.
Tell it _"Tell me how I can help."_
Watch the dialogue
Speak to Ulfar |q 54731/1 |goto 45.20,45.79
step
click Ancient Seedling
|tip Inside the cave.
Begin the Ritual |q 54731/2 |goto 44.97,45.83
step
Restore Balance |q 54731/3 |goto 44.97,45.83
|tip Run over green orbs on the ground around the pile of wood.
|tip Avoid blue orbs during the ritual.
step
Watch the dialogue
talk Ulfar##141159
|tip Inside the cave.
turnin Balance in All Things##54731 |goto 45.21,45.84
step
Leave the cave |goto 46.09,45.30 < 10 |walk
Find Chelsea Wright |q 54729/1 |goto 33.16,30.38
step
Watch the dialogue
talk Chelsea Wright##150884
turnin The Bleak Hills##54729 |goto 33.17,30.37
accept Drop It!##54732 |goto 33.17,30.37
step
Follow the path |goto 34.13,30.45 < 20 |walk
Continue up the path |goto 35.22,29.27 < 20 |walk
Continue up the path |goto 35.83,30.39 < 20 |walk
Run up the stairs |goto 36.50,30.74 < 20 |walk
Follow the path up |goto 37.00,31.26 < 15 |walk
Cross the bridge |goto 36.64,29.95 < 15 |walk
Enter the cave |goto 36.32,29.25 < 15 |walk
|tip Follow the Wicker Beast to complete this part of the quest.
|tip The Wicker Beast will wait if you stop to fight enemies.
click Storeroom Keys##322620
|tip Inside the cave.
collect Storehouse Key##167168 |q 54732/1 |goto 36.60,28.88
step
talk Wicker Beast##150885
|tip Inside the cave.
turnin Drop It!##54732 |goto 36.62,28.84
accept Her Dog Days Are Over##55136 |goto 36.62,28.84
step
Jump down here |goto 36.15,29.26 < 15 |only if walking
click Gnawed Bone##322638
collect Gnawed Bone##167174 |q 55136/3 |goto 35.31,28.91
step
click Worn Collar##322636
collect Worn Collar##167172 |q 55136/1 |goto 36.01,30.95
step
Run up the stairs |goto 34.14,30.82 < 15 |only if walking
Enter the building |goto 34.39,30.74 < 10 |walk
click Squeaky Toy##322637
|tip Inside the building.
collect Squeaky Toy##167173 |q 55136/2 |goto 34.60,30.55
step
talk Chelsea Wright##150884
turnin Her Dog Days Are Over##55136 |goto 33.17,30.37
accept Make it Wright##54733 |goto 33.17,30.37
step
click Storage Crate
turnin Make it Wright##54733 |goto 33.11,30.30
step
talk Bound Sky##149252
accept Summons from Dorian##54734 |goto 33.04,30.39
step
Cross the bridge |goto Stormsong Valley/0 66.25,47.14 < 20 |only if walking
talk Dorian Atwater##148870
turnin Summons from Dorian##54734 |goto 66.51,44.24
step
talk Lady Jaina Proudmoore##148798
accept A Worthy Crew##54735 |goto 66.50,44.29
step
Run up the stairs |goto Boralus/0 48.69,62.59 < 20 |only if walking
Run up the stairs |goto 44.30,57.89 < 15 |only if walking
talk Tandred Proudmoore##149474
Tell him _"Jaina sent me to speak with you."_
Speak to Tandred Proudmoore |q 54735/1 |goto 42.99,56.31
step
talk Brother Pike##149481
Ask him _"Tandred Proudmoore is putting together a crew. He needs a tidesage. Are you interested?"_
Recruit Brother Pike |q 54735/2 |goto 75.97,22.98
step
talk Lieutenant Tarenfold##151040
Ask him _"Tandred Proudmoore is putting together a crew. He needs a master gunner. Are you interested?"_
Recruit Lieutenant Tarenfold |q 54735/3 |goto Tiragarde Sound/0 56.68,61.18
step
talk Rosaline Madison##149486
Ask him _"Tandred Proudmoore is putting together a crew. He needs a first mate. Are you interested?"_
Watch the dialogue
Recruit the Outriggers |q 54735/4 |goto 35.26,24.15
step
Cross the bridge |goto Stormsong Valley/0 66.26,47.13 < 20 |only if walking
talk Dorian Atwater##148870
Tell her _"Well, you heard the man."_
Watch the dialogue
Recruit Boatswain |q 54735/5 |goto 67.63,44.89
step
talk Lady Jaina Proudmoore##148798
turnin A Worthy Crew##54735 |goto 67.62,44.67
accept Blessing of the Tides##54851 |goto 67.62,44.67
step
Watch the dialogue
talk Lady Jaina Proudmoore##148798
|tip Choose any of the names you like.
Name the Vessel |q 54851/1 |goto 67.62,44.67
step
click Rowboat
Bless the Vessel |q 54851/2 |goto 68.14,45.68
step
talk Lady Jaina Proudmoore##148798
turnin Blessing of the Tides##54851 |goto 71.13,44.02
accept Allegiance of Kul Tiras##53720 |goto 71.13,44.02
step
click Captain's Helm
Sail to Stormwind Harbor |q 53720/1 |goto 71.17,44.02
step
talk Anduin Wrynn##149518
turnin Allegiance of Kul Tiras##53720 |goto Stormwind City/0 22.53,18.39
step
_Congratulations!_
You Unlocked the "Kul Tiran" Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Races\\Mechagnome Race Unlock",{
author="support@zygorguides.com",
description="To unlock the Mechagnome allied race, you will need to earn the \"The Mechagonian Threat\" achievement.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
condition_suggested=function() return achieved(13553) and not achieved(14013) end,
condition_end=function() return achieved(14013) end,
image=ZGV.IMAGESDIR.."MechagnomeUnlock",
},[[
step
Earn the "The Mechagonian Threat" Achievement |achieve 13553
|tip Use the "The Mechagonian Threat" achievement guide to earn this achievement.
Click Here to Open "The Meghagonian Threat" Achievement Gude |loadguide "Achievement Guides\\Quests\\Battle for Azeroth\\The Mechagonian Threat"
step
talk Kelsey Steelspark##160101
accept Waning Energy##57486 |goto Boralus/0 73.13,16.92
step
talk Kelsey Steelspark##157997
turnin Waning Energy##57486 |goto 36.90,62.55
accept Someone Who Can Help##57487 |goto 36.90,62.55
step
clicknpc Homing Copter##158230
Acquire the Homing Copter |q 57487/1 |goto 49.49,40.17
step
clicknpc Mekkatorque's Escape Pod##160046
Watch the dialogue
Send the Escape Pod to Mechagon |q 57487/2 |goto 36.74,62.62
step
Meet Prince Erazmin |q 57487/3 |goto Mechagon Island/0 74.11,36.99
step
talk Prince Erazmin##149816
turnin Someone Who Can Help##57487 |goto 74.11,36.99
step
talk Waren Gearhart##150555
accept The Current Schematic##57488 |goto 73.12,33.36
step
Kill Malfunctioning enemies around this area
collect 6 Acquisitioned Machine Part##172521 |q 57488/2 |goto 73.07,42.36
step
kill Congealed Oil##150698+
collect 4 Heat Tolerant Ooze##172522 |q 57488/1 |goto 74.74,59.04
step
talk Waren Gearhart##150555
turnin The Current Schematic##57488 |goto 73.12,33.36
step
talk Prince Erazmin##158145
accept Voyage to Safety##57490 |goto 73.04,33.43
step
Watch the dialogue
Activate the Piston and Crew |q 57490/1 |goto 63.13,37.64
step
kill Rust-Eye the Clever##158851 |q 57490/2 |goto 86.95,73.84
step
Retrieve the Pod |q 57490/3 |goto 86.95,73.84
step
Watch the dialogue
Deliver the Pod |q 57490/4 |goto 73.55,32.11
step
talk Waren Gearhart##150555
turnin Voyage to Safety##57490 |goto 73.13,33.35
step
talk Christy Punchcog##160232
accept Better... Stronger... Less Dead##57491 |goto 73.19,33.47
step
kill Insurgent Cycloid##159271
|tip It walks around this area.
collect Omni Electromagnetic Amplifier##173026 |q 57491/2 |goto 55.44,26.03
step
kill Insurgent Crawler##159262
|tip It walks around this area.
collect Flux Energized Servos##173028 |q 57491/3 |goto 53.30,52.44
step
kill HK-3 Aerial Dissuasion Unit##159261
|tip It flies all over this area.
collect Neural Accelerator##172511 |q 57491/1 |goto 34.97,59.87
step
talk Christy Punchcog##160232
turnin Better... Stronger... Less Dead##57491 |goto 73.51,31.88
step
talk Prince Erazmin##158145
accept Him?##57492 |goto 73.04,33.43
step
talk Pegi Cogster##159558
Ask her _"What do you want in a leader?"_
Speak with Pegi Cogster |q 57492/3 |goto 74.30,34.82
step
talk Flouresce Brightgear##159571
Ask her _"What do you want in a leader?"_
Speak with Flouresce Brightgear |q 57492/5 |goto 75.43,36.02
step
talk Quimby Sparklighter##159570
Ask him _"What makes a good leader?"_
Speak with Quimby Sparklighter |q 57492/4 |goto 72.09,38.64
step
talk Idee Quickcoil##159567
Ask her _"What makes a good leader?"_
Speak with Idee Quickcoil |q 57492/2 |goto 71.29,34.28
step
talk Stuard Sharpsprocket##159545
Ask him _"Why do you appreciate Gelbin Mekkatorque?"_
Speak with Stuard Sharpsprocket |q 57492/6 |goto 69.93,32.06
step
talk Elya Codepunch##159559
Ask her _"What do you want in a leader?"_
Speak with Elya Codepunch |q 57492/1 |goto 70.46,30.94
step
talk Prince Erazmin##158145
turnin Him?##57492 |goto 73.04,33.43
step
talk Christy Punchcog##160232
accept Mental Attunement##57493 |goto 73.51,31.89
step
click Synchroscope##159574
Initiate the Synchronization |q 57493/1 |goto 73.59,32.87
step
Watch the dialogue
Complete the Synchronization |q 57493/2 |goto 73.50,32.09
step
clicknpc Mekkatorque's Escape Pod##158100
Open the Escape Pod |q 57493/3 |goto 73.55,32.09
step
talk Christy Punchcog##160232
turnin Mental Attunement##57493 |goto 73.51,31.89
accept A Strong Heart##57494 |goto 73.51,31.89
step
Find Kelsey |q 57494/1 |goto 59.54,55.83
step
kill Insurgent Coilbearer##159751 |q 57494/2 |goto 59.50,55.88
step
Watch the dialogue
Retrieve the Unit |q 57494/3 |goto 59.50,55.88
step
click Spark Reactor##159785
Deliver the Spark Reactor |q 57494/4 |goto 73.59,32.15
step
Watch the dialogue
Calibrate the Circuit |q 57494/5 |goto 73.59,32.15
step
click Genny##159573
Activate the Generator |q 57494/6 |goto 73.72,31.84
step
Defibrillate |q 57494/7 |goto 73.54,32.11
|tip Use the "Resuscitation" ability that appears on-screen.
step
Watch the dialogue
talk Prince Erazmin##158145
turnin A Strong Heart##57494 |goto 73.03,33.43
step
Watch the dialogue
talk Gelbin Mekkatorque##159587
accept Ascension##57496 |goto 73.07,33.58
step
Take the Teleporter to Mechagon City |q 57496/1 |goto 72.35,31.27
|tip Step onto the grate.
step
Arrive in Mechagon City |goto Mechagon City/0 23.41,21.46 < 1000 |c |noway |q 57496
step
Run up the ramp |goto Mechagon City/1 56.74,68.71 < 15 |only if walking
kill Blastatron X-81##160087 |q 57496/2 |goto 65.46,48.18
|tip Avoid standing in blue areas on the ground.
step
talk Gelbin Mekkatorque##162806
turnin Ascension##57496 |goto 58.14,41.20
accept The Future of Mechagon##57495 |goto 58.14,41.20
step
Teleport to the High Tinkertory |q 57495/1 |goto 47.91,31.46
step
Run up the ramp |goto 32.53,53.02 < 20 |only if walking
Watch the dialogue
|tip Use the "Witness" ability that appears on-screen.
Witness the Speech |q 57495/2 |goto 19.99,66.06
step
talk Gelbin Mekkatorque##159587
turnin The Future of Mechagon##57495 |goto 18.70,67.41
step
talk Kelsey Steelspark##157997
|tip She walks around this area.
accept Propagate the News##57497 |goto 17.80,65.60
step
Teleport to Stormwind |q 57497/1 |goto 20.42,59.84
|tip Step onto the grate.
step
talk Aysa Cloudsinger##126332
|tip Inside the building.
turnin Propagate the News##57497 |goto Stormwind City/0 52.06,13.41
step
_Congratulations!_
You unlocked the Mechagnome Allied Race.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Drustvar Loremaster (Story Quest Only)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Drustvar storylines:\n\nThe Final Effigy\nAn Airtight Alibi\nA New Order\nStorming the Manor\nFighting With Fire\nThe Burden of Proof\nThe Order of Embers\nBreak on Through\nClear Victory\nStick It To 'Em!",
condition_suggested=function() return level >= 50 and not achieved(12497) and completedq(47189) end,
condition_end=function() return achieved(12497) end,
startlevel=50,
endlevel=50,
image=ZGV.IMAGESDIR.."Drustvar",
},[[
step
click Scouting Map
|tip Inside the building.
accept Drustvar##47961 |goto Boralus/0 68.38,22.06
step
talk Taelia##121235
|tip Inside the building.
turnin Drustvar##47961 |goto Boralus/0 68.17,21.97
step
talk Taelia##121235
|tip Inside the building.
accept The Vanishing Lord##48622 |goto Boralus/0 68.17,21.97
step
Leave the building |goto 67.08,23.45 < 10 |walk
talk Will Melborne##135064
Tell him _"I need a ferry to Drustvar."_
Take the Ferry to Drustvar |q 48622/1 |goto Boralus/0 74.17,24.78
step
Watch the dialogue
Ride the Ferry to Drustvar |goto Drustvar/0 61.79,36.54 < 10 |c |q 48622 |notravel
step
Follow the path up |goto 60.10,35.54 < 20 |only if walking
talk Cyril White##130419
Choose _<Look for the source of the spell.>_
Meet with Cyril White |q 48622/2 |goto 56.14,35.29
step
click Cursed Effigy
Destroy the Effigy |q 48622/3 |goto 55.87,35.06
step
click Cursed Effigy
turnin The Vanishing Lord##48622 |goto 55.87,35.07
step
click Mayor's Bulletin
accept Signs and Portents##47968 |goto 56.14,35.30
step
click Rancher's Letter
Read the Rancher's Letter |q 47968/2 |goto 57.96,35.69
step
Enter the building |goto 55.27,35.50 < 10 |walk
click Ava's Note
|tip Inside the building.
Read Ava's Note |q 47968/3 |goto 55.21,35.98
step
Leave the building |goto 55.27,35.48 < 10 |walk
click Farmer's Journal
Read the Farmer's Journal |q 47968/1 |goto 53.21,35.13
step
click Fallhaven Log
turnin Signs and Portents##47968 |goto 55.64,35.76
accept The Wayward Crone##47978 |goto 55.64,35.76
step
Cross the bridge |goto 56.95,33.15 < 15 |only if walking
talk Helena Gentle##124922
|tip Inside the building.
turnin The Wayward Crone##47978 |goto 60.51,31.65
accept Witch Hunt##47979 |goto 60.51,31.65
step
click Stool
|tip Inside the building.
Take a Seat |q 47979/1 |goto 60.48,31.58
step
Watch the dialogue
click Gentle's Spellbook
|tip Inside the building.
accept Cracking the Curse##47981 |goto 60.58,31.47
step
click Lesser Effigy
Destroy the Lesser Effigy |q 47981/1 |goto 59.54,28.30 |count 1
step
kill Helena Gentle##124953 |q 47979/2 |goto 57.81,28.15
step
Click the Complete Quest Box:
turnin Witch Hunt##47979
step
click Lesser Effigy
Destroy the Lesser Effigy |q 47981/1 |goto 57.66,27.81 |count 2
step
click Lesser Effigy
Destroy the Lesser Effigy |q 47981/1 |goto 57.55,30.07 |count 3
step
click Lesser Effigy
Destroy the Lesser Effigy |q 47981/1 |goto 56.18,29.13 |count 4
step
click Cursed Effigy
turnin Cracking the Curse##47981 |goto 55.87,35.07
accept The Final Effigy##47982 |goto 55.87,35.07
step
click Cursed Effigy
Break the Cursed Effigy |q 47982/1 |goto 55.87,35.07
step
kill Deathcursed Terror##128345 |q 47982/2 |goto 55.92,35.08
step
Watch the dialogue
talk Cyril White##124417
turnin The Final Effigy##47982 |goto 55.87,35.13
accept The Waycrest Daughter##48108 |goto 55.87,35.13
step
talk Clarence Page##124466
fpath Fallhaven |goto 55.13,34.69
step
talk Dinah Wellard##129992
|tip Inside the building.
home The Swine's Larder |goto 55.50,34.26 |q 48108 |future
step
Leave the building |goto 55.37,34.50 < 10 |walk
Cross the bridge |goto Tiragarde Sound/0 53.43,54.59 < 15 |only if walking
talk Aaron Ridgeley##128576
fpath Hangman's Point |goto Drustvar/0 71.05,40.88
step
talk Constable Henry Framer##125394
turnin The Waycrest Daughter##48108 |goto 70.09,42.94
accept Standing Accused##48283 |goto 70.09,42.94
step
talk Lucille Waycrest##125380
Tell her _"I'm here to rescue you."_
Speak with Lucille Waycrest |q 48283/1 |goto 70.07,42.83
step
talk Marshal Everit Reade##125385
turnin Standing Accused##48283 |goto 69.67,43.18
accept The Woods Have Eyes##48109 |goto 69.67,43.18
accept In Case of Ambush##48110 |goto 69.67,43.18
stickystart "Kill_Watchful_Ravens"
stickystart "Kill_Darkmaw_Prowlers"
step
click Place Trap+
|tip They look like metal bear traps on the ground around this area.
Place #6# Traps |q 48110/1 |goto 68.07,43.71
step
label "Kill_Watchful_Ravens"
kill 4 Watchful Raven##125411 |q 48109/1 |goto 68.07,43.71
step
label "Kill_Darkmaw_Prowlers"
kill 6 Darkmaw Prowler##125464 |q 48109/2 |goto 68.07,43.71
step
talk Marshal Everit Reade##125385
turnin The Woods Have Eyes##48109 |goto 69.67,43.18
turnin In Case of Ambush##48110 |goto 69.67,43.18
step
talk Lucille Waycrest##125380
accept Trial by Superstition##48111 |goto 70.07,42.83
step
talk Fletcher's Hollow Villager##125400+
Ask them _"How can you prove someone is not a witch?"_
Question #5# Villagers |q 48111/1 |goto 69.95,42.99
step
talk Lucille Waycrest##125380
turnin Trial by Superstition##48111 |goto 70.07,42.83
accept A Pungent Solution##48113 |goto 70.07,42.83
accept Once Bitten, Twice Shy##48170 |goto 70.07,42.83
accept Harmful If Swallowed##48165 |goto 70.07,42.83
step
click Bug-Catching Jar
Collect a Bug-Catching Jar |q 48170/1 |goto 69.52,43.87
stickystart "Collect_Intact_Venom_Glands"
step
click Hovering Bloodflies+
|tip They look like groups of small insects flying low to the ground around this area.
Catch #6# Bloodflies |q 48170/2 |goto 68.84,40.72
step
label "Collect_Intact_Venom_Glands"
kill Shallows Saurolisk##125452+
collect 5 Intact Venom Gland##151935 |q 48165/1 |goto 68.84,40.72
step
click Onion+
|tip They look like white vegetables half-buried in the ground around this area.
collect Juicy Onion##151934 |q 48113/1 |goto 66.24,42.23
step
talk Lucille Waycrest##125380
turnin A Pungent Solution##48113 |goto 70.07,42.83
turnin Once Bitten, Twice Shy##48170 |goto 70.07,42.83
turnin Harmful If Swallowed##48165 |goto 70.07,42.83
accept The Burden of Proof##48198 |goto 70.07,42.83
step
talk Constable Henry Framer##125394
Tell him _"We're ready to begin the trial."_
Watch the dialogue
Speak with Constable Framer |q 48198/1 |goto 70.09,42.94
step
clicknpc Lucille Waycrest##128529
Watch the dialogue
Give the First Test |q 48198/2 |goto 70.08,42.83
step
clicknpc Lucille Waycrest##128529
Watch the dialogue
Give the Second Test |q 48198/3 |goto 70.08,42.83
step
clicknpc Lucille Waycrest##128529
Watch the dialogue
Give the Third Test |q 48198/4 |goto 70.08,42.83
step
talk Lucille Waycrest##125380
turnin The Burden of Proof##48198 |goto 70.08,42.83
accept The Curse of Fletcher's Hollow##48171 |goto 70.08,42.83
step
Cross the bridge |goto 68.08,46.44 < 20 |only if walking
Cross the bridge |goto 69.11,57.99 < 20 |only if walking
talk Evelyn Pare##126310
turnin The Curse of Fletcher's Hollow##48171 |goto 70.07,60.27
accept Save Who We Can##48518 |goto 70.07,60.27
accept Clear-Cutting##49295 |goto 70.07,60.27
step
talk Bridget Bran##126724
fpath Fletcher's Hollow |goto 70.22,60.45
stickystart "Kill_Curseformed_Familiars"
step
talk Frightened Woodsman##126159+
Rally #6# Frightened Woodsmen |q 48518/1 |goto 70.94,59.26
step
label "Kill_Curseformed_Familiars"
kill 8 Curseformed Familiar##126151 |q 49295/1 |goto 70.94,59.26
step
talk Evelyn Pare##126310
turnin Save Who We Can##48518 |goto 70.07,60.27
turnin Clear-Cutting##49295 |goto 70.07,60.27
accept Hope They Can't Swim##48519 |goto 70.07,60.27
step
Watch the dialogue
Kill the enemies that attack in waves
kill Grotesque Butcher##137914
Defend the Villagers |q 48519/1 |goto 69.42,60.34
step
talk Evelyn Pare##126310
turnin Hope They Can't Swim##48519 |goto 70.07,60.27
accept The Three Sisters##48520 |goto 70.07,60.27
step
click Bladed Charm
accept Charming the Lifeless##48521 |goto 70.07,62.99
stickystart "Control_A_Dormant_Ravager"
step
kill Sister Early##126522 |q 48520/2 |goto 70.52,63.15
step
Enter the building |goto 70.00,62.19 < 10 |walk
kill Sister Mooring##126523 |q 48520/3 |goto 70.13,62.12
|tip Downstairs inside the building.
step
Enter the building |goto 68.67,63.68 < 10 |walk
kill Sister Ashwell##126144 |q 48520/1 |goto 68.52,63.55
|tip She walks around this area inside the building.
accept A Revealing Missive##48522 |goto 68.52,63.55
|tip You will automatically accept this quest after looting.
step
label "Control_A_Dormant_Ravager"
use the Wicker Charm##152590
|tip Use it on Dormant Ravagers around this area.
|tip Eventually, one of them will become friendly.
Control a Dormant Ravager |q 48521/1 |goto 69.31,62.79
step
talk Evelyn Pare##126310
turnin The Three Sisters##48520 |goto 70.07,60.27
turnin Charming the Lifeless##48521 |goto 70.07,60.27
turnin A Revealing Missive##48522 |goto 70.07,60.27
accept The Murderous Matron##48523 |goto 70.07,60.27
step
clicknpc Dormant Ravager##126415
Control the Dormant Ravager |q 48523/1 |goto 69.93,60.39
step
Enter the mine |goto 69.85,66.95 < 10 |walk
Follow the path down |goto 70.29,67.91 < 10 |walk
Kill the enemies that attack
|tip Inside the mine.
Watch the dialogue
kill Matron Levae##126441 |q 48523/2 |goto 68.57,67.25
step
Return to Timbered Strand |goto 69.98,60.40 < 10 |noway |c |q 48523
|tip Click the red arrow on your action bar.
step
talk Evelyn Pare##126310
turnin The Murderous Matron##48523 |goto 70.07,60.28
accept An Airtight Alibi##48538 |goto 70.07,60.28
step
talk Constable Henry Framer##125394
turnin An Airtight Alibi##48538 |goto 70.09,42.94
step
talk Lucille Waycrest##125380
accept And Justice For All##49259 |goto 70.08,42.83
step
Watch the dialogue
Untie Lucille |q 49259/1 |goto 70.08,42.83
step
Kill the enemies that attack in waves
kill Sister Widdowson##128582
Defeat the Heartsbane Ambush |q 49259/2 |goto 69.55,43.28
step
Watch the dialogue
talk Lucille Waycrest##125380
turnin And Justice For All##49259 |goto 69.62,43.33
accept A Slight Detour##48941 |goto 69.62,43.33
step
Follow the road |goto 51.84,38.53 < 30 |only if walking
Follow the road |goto 47.73,30.29 < 30 |only if walking
talk Lucille Waycrest##127715
turnin A Slight Detour##48941 |goto 46.11,33.42
accept Yeti to Rumble##48942 |goto 46.11,33.42
accept Salvage Rights##48943 |goto 46.11,33.42
stickystart "Kill_Chillfur_Yetis"
step
click Wrapped Supplies
Collect the Wrapped Supplies |q 48943/1 |goto 45.60,34.38
step
click Cask of Salted Fish
Collect the Cask of Salted Fish |q 48943/2 |goto 45.04,32.49
step
click Hardened Lockbox
Collect the Hardened Lockbox |q 48943/3 |goto 43.54,30.79
step
click Bucket of Grain
Collect the Bucket of Grain |q 48943/4 |goto 45.53,30.07
step
label "Kill_Chillfur_Yetis"
kill 8 Chillfur Yeti##127682 |q 48942/1 |goto 45.06,30.48
step
talk Lucille Waycrest##127715
turnin Yeti to Rumble##48942 |goto 44.80,28.56
turnin Salvage Rights##48943 |goto 44.80,28.56
accept Diversionary Tactics##48963 |goto 44.80,28.56
step
kill Frostmange##127794 |q 48963/1 |goto 45.25,28.61
step
Enter the building |goto 45.11,27.89 < 10 |walk
talk Lucille Waycrest##127715
|tip Inside the building.
turnin Diversionary Tactics##48963 |goto 45.01,27.77
accept Unlocking History##48944 |goto 45.01,27.77
step
click Wall Sconce
|tip Inside the building.
Choose _<Pull on the torch>_
Find the Secret Passage |q 48944/1 |goto 44.94,27.57
step
talk Lucille Waycrest##127715
|tip Inside the building.
turnin Unlocking History##48944 |goto 44.97,27.53
accept The Ruins of Gol Var##48945 |goto 44.97,27.53
step
Watch the dialogue
|tip Follow Lucille Waycrest as she walks inside the cave.
click Debris
kill Stonebound Guardian##127975
Watch the dialogue
Escort Lucille into Gol Var |q 48945/1 |goto 42.39,25.53
step
talk Lucille Waycrest##127715
|tip Inside the cave.
turnin The Ruins of Gol Var##48945 |goto 42.59,25.23
accept The Order of Embers##48946 |goto 42.59,25.23
step
click Tome of Silver and Ash
|tip Inside the cave.
collect Tome of Silver and Ash##153053 |q 48946/1 |goto 42.64,25.25
step
talk Lucille Waycrest##127715
|tip Inside the cave.
turnin The Order of Embers##48946 |goto 42.59,25.23
accept Take the High Road##48986 |goto 42.59,25.23
step
Jump down here |goto 42.43,26.14 < 10 |walk
Follow the path up |goto 43.97,25.69 < 10 |walk
Leave the building |goto 45.11,27.89 < 10 |walk
Follow the road up |goto 44.05,38.05 < 30 |only if walking
Continue following the road |goto 41.57,41.18 < 30 |only if walking
Continue following the road |goto 40.58,47.74 < 30 |only if walking
Enter the building |goto 37.46,48.70 < 10 |walk
talk Owen Northwood##136480
|tip Inside the building.
home Northwood Home |goto 37.43,48.56 |q 48986
step
Enter the building |goto 37.13,50.19 < 10 |walk
talk Lucille Waycrest##129642
|tip Inside the building.
turnin Take the High Road##48986 |goto 36.86,50.14
accept A Lesson in Witch Hunting##49443 |goto 36.86,50.14
step
click Candle+
|tip They look like half-melted green candles sitting on objects inside the building.
Light #6# Candles |q 49443/1 |goto 36.89,50.06
step
click Lucille's Notes
|tip Inside the building.
Watch the dialogue
Take Notes |q 49443/2 |goto 36.84,50.12
step
click Lucille's Pack
|tip Inside the building.
collect Lucille's Sewing Kit##156515 |q 49443/3 |goto 36.97,50.05
step
talk Lucille Waycrest##129642
|tip Inside the building.
turnin A Lesson in Witch Hunting##49443 |goto 36.86,50.14
accept Sharp Thinking##49804 |goto 36.86,50.14
step
talk Marshal Everit Reade##129643
|tip Inside the building.
accept Changing of the Guard##49803 |goto 36.96,50.09
stickystart "Test_Corlain_Refugees"
step
Follow the path up |goto 37.24,50.67 < 15 |only if walking
talk Ensign Yorrick##122112
Choose _<Hand over Marshal Reade's orders.>_
Recruit Ensign Yorrick |q 49803/2 |goto 35.26,53.13
step
talk Jess Albury##135023
fpath Arom's Stand |goto 38.14,52.54
step
talk Falconer Notley##122110
Choose _<Hand over Marshal Reade's orders.>_
Recruit Falconer Notley |q 49803/5 |goto 38.74,52.46
step
talk Ensign Mace##122115
Choose _<Hand over Marshal Reade's orders.>_
Recruit Ensign Mace |q 49803/4 |goto 39.04,51.51
step
talk Lieutenant Sterntide##131111
Choose _<Hand over Marshal Reade's orders.>_
Recruit Lieutenant Sterntide |q 49803/3 |goto 39.90,50.18
step
talk Captain Joan Cleardawn##131103
Choose _<Hand over Marshal Reade's orders.>_
Recruit Captain Cleardawn |q 49803/1 |goto 37.54,48.77
step
label "Test_Corlain_Refugees"
use Lucille's Sewing Needle##156518
|tip Use it on Corlain Refugees around this area.
|tip Some of them will attack you.
Test #10# Corlain Refugees |q 49804/1 |goto 37.88,50.37
step
Enter the building |goto 37.13,50.19 < 10 |walk
talk Lucille Waycrest##129642
|tip Inside the building.
turnin Sharp Thinking##49804 |goto 36.86,50.14
step
talk Marshal Everit Reade##129643
|tip Inside the building.
turnin Changing of the Guard##49803 |goto 36.96,50.09
step
talk Lucille Waycrest##129642
|tip Inside the building.
accept A New Order##49807 |goto 36.86,50.14
step
use the Inquisitor's Regalia##156532
|tip Use it on Falconer Notley.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.94,50.00 |count 1
step
use the Inquisitor's Regalia##156532
|tip Use it on Ensign Mace.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.91,49.99 |count 2
step
use the Inquisitor's Regalia##156532
|tip Use it on Inquisitor Cleardawn.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.89,49.98 |count 3
step
use the Inquisitor's Regalia##156532
|tip Use it on Ensign Yorrick.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.86,49.98 |count 4
step
use the Inquisitor's Regalia##156532
|tip Use it on Lieutenant Sterntide.
|tip Inside the building.
Watch the dialogue
Induct the Recruit |q 49807/1 |goto 36.82,49.97 |count 5
step
Watch the dialogue
|tip Inside the building.
Issue Lucille's Orders |q 49807/2 |goto 36.89,50.08
step
talk Lucille Waycrest##129642
|tip Inside the building.
turnin A New Order##49807 |goto 36.89,50.08
step
talk Marshal Everit Reade##129643
|tip Inside the building.
accept The Road to Corlain##49926 |goto 36.96,50.09
step
talk Inquisitor Cleardawn##135021
accept Through the Old Roads##48504 |goto 37.27,50.35
step
Follow the path up |goto 39.44,51.55 < 30 |only if walking
talk Inquisitor Cleardawn##129983
turnin Through the Old Roads##48504 |goto 40.23,56.50
accept Pieces of History##48184 |goto 40.23,56.50
accept Honorable Discharge##48517 |goto 40.23,56.50
stickystart "Release_Weary_Spirits"
step
click First Carved Stone
Examine the First Stone |q 48184/1 |goto 38.50,58.38
step
click Second Carved Stone
Examine the Second Stone |q 48184/2 |goto 36.56,58.03
step
click Third Carved Stone
Examine the Third Stone |q 48184/3 |goto 39.27,61.15
step
click Fourth Carved Stone
Examine the Fourth Stone |q 48184/4 |goto 37.83,64.67
step
click Fifth Carved Stone
Examine the Fifth Stone |q 48184/5 |goto 36.53,61.27
step
_Next to you:_
talk Inquisitor Cleardawn
turnin Pieces of History##48184
step
label "Release_Weary_Spirits"
clicknpc Weary Spirit##135055+
|tip They look like ghost soldiers kneeling on the ground around this area.
Release #10# Weary Spirits |q 48517/1 |goto 37.68,61.50
step
_Next to you:_
talk Inquisitor Cleardawn
turnin Honorable Discharge##48517
accept Drustfall##49890
step
Enter the cave |goto 39.48,62.39 < 10 |walk
click Ritual Stone
|tip Inside the cave.
Watch the dialogue
Investigate the Cave |q 49890/1 |goto 40.60,62.66
step
Watch the dialogue
kill Runekeeper Construct##130946 |q 49890/2 |goto 40.60,62.66
|tip Inside the cave.
step
_Next to you:_
talk Inquisitor Cleardawn
turnin Drustfall##49890
accept To Falconhurst!##49896
step
Leave the cave |goto 39.42,62.38 < 10 |walk
Follow the path down |goto 38.12,66.95 < 30 |only if walking
Cross the bridge |goto 31.83,66.64 < 20 |only if walking
Follow the road |goto 30.56,62.70 < 30 |only if walking
talk Inquisitor Cleardawn##131879
turnin To Falconhurst!##49896 |goto 26.91,65.81
accept Breaking Hag##50001 |goto 26.91,65.81
step
Kill Briarwood enemies around this area
Slay #15# Briarwood Monsters |q 50001/1 |goto 26.17,68.10
step
talk Inquisitor Cleardawn##131879
turnin Breaking Hag##50001 |goto 25.79,70.26
accept Hold The Barricade!##50177 |goto 25.79,70.26
step
talk Inquisitor Cleardawn##131879
Tell her _"Stand firm! We'll hold the line!"_
Speak with Inquisitor Cleardawn |q 50177/1 |goto 25.79,70.26
step
Watch the dialogue
Kill the enemies that attack in waves
kill Briarwood Siegebreaker##131898
|tip It will walk to you.
Survive the Assault |q 50177/2 |goto 25.78,70.20
step
talk Inquisitor Cleardawn##131879
turnin Hold The Barricade!##50177 |goto 25.79,70.26
accept So Long, Sister##49939 |goto 25.79,70.26
step
Enter the building |goto 25.23,71.61 < 7 |walk
kill Sister Noella Briarwood##132395 |q 49939/1 |goto 25.02,71.83
|tip Inside the building.
step
Leave the building |goto 25.24,71.61 < 7 |walk
talk Leandro Royston##131442
turnin So Long, Sister##49939 |goto 26.67,72.19
step
talk Alisha Darkwater##136655
|tip Inside the building.
home Falcon's Roost |goto 26.67,72.56 |q 50903 |future
step
talk Viviana Swailes##134866
fpath Falconhurst |goto 26.99,72.39
step
talk Marten Webb##131469
accept A Missing Master##50903 |goto 25.53,70.10
step
Run down the stairs |goto 25.59,68.01 < 7 |walk
Find Master Ashton |q 50903/1 |goto 25.42,67.79
|tip Downstairs inside the building.
step
talk Warren Ashton##131448
|tip Downstairs inside the building.
Tell him _"Master Ashton, we need your help."_
Speak to Master Ashton |q 50903/2 |goto 25.29,67.89
step
talk Warren Ashton##131448
|tip Downstairs inside the building.
turnin A Missing Master##50903 |goto 25.29,67.89
accept Curiously Strong##50092 |goto 25.29,67.89
step
use the Frost Potion##156828
|tip Use it on fires around this area.
Extinguish #20# Fires |q 50092/1 |goto 25.77,69.00
step
talk Warren Ashton##131448
turnin Curiously Strong##50092 |goto 25.23,67.16
accept A Weapon of Old##50036 |goto 25.23,67.16
step
talk Warren Ashton##131448
Tell him _"I am ready to begin!"_
Speak with Warren Ashton |q 50036/1 |goto 25.23,67.16
step
Watch the dialogue
|tip Click the 4 objects nearby when he tells you to.
|tip The order is random, he will tell you which object to click.
Help Create a Liquid Fire Potion |q 50036/2 |goto 25.17,67.18
step
Watch the dialogue
talk Warren Ashton##131448
turnin A Weapon of Old##50036 |goto 25.23,67.16
accept Fighting With Fire##50063 |goto 25.23,67.16
step
use the Liquid Fire Flask##156710
|tip Use it on Briarwood Bulwarks around this area.
|tip Use it repeatedly to kill them easier.
kill 3 Briarwood Bulwark##133072 |q 50063/1 |goto 24.68,65.38
step
talk Marten Webb##131469
turnin Fighting With Fire##50063 |goto 25.13,67.39
step
talk Inquisitor Cleardawn##131879
accept Into the Crimsonwood##50172 |goto 25.13,67.43
step
Follow the road |goto 23.64,63.65 < 30 |only if walking
Follow the path up |goto 22.17,60.51 < 20 |only if walking
talk Inquisitor Cleardawn##133098
turnin Into the Crimsonwood##50172 |goto 20.64,57.46
accept Saving Master Ashton##50265 |goto 20.64,57.46
step
talk Marten Webb##133126
accept Odds and Ends##50306 |goto 20.64,57.51
stickystart "Collect_Bags_Of_Reagents"
stickystart "Collect_Organic_Matter_Samples"
step
kill Hexwood Binder##133112+
collect Cage Key##156859 |goto 21.28,56.36 |q 50265
step
click Cage
Free Master Ashton |q 50265/1 |goto 21.05,55.29
step
label "Collect_Bags_Of_Reagents"
kill Hexwood Seer##133111+
collect 3 Bag of Reagents##156951 |q 50306/2 |goto 22.00,56.57
step
label "Collect_Organic_Matter_Samples"
kill Timber Mongrel##133116+
collect 4 Organic Matter Sample##156950 |q 50306/1 |goto 22.00,56.57
step
talk Marten Webb##133126
turnin Odds and Ends##50306 |goto 20.64,57.51
step
talk Inquisitor Cleardawn##133098
turnin Saving Master Ashton##50265 |goto 20.64,57.46
step
talk Marten Webb##133126
accept A Little 'Pick Me Up'##50327 |goto 20.64,57.51
step
talk Warren Ashton##133105
Choose _<Hand the potion to Master Ashton>_
Give Master Ashton the Potion |q 50327/1 |goto 20.60,57.55
step
Watch the dialogue
Listen to Master Ashton |q 50327/2 |goto 20.60,57.55
step
talk Warren Ashton##133105
turnin A Little 'Pick Me Up'##50327 |goto 20.59,57.54
step
talk Inquisitor Cleardawn##133098
accept Deeper into the Woods##50370 |goto 20.64,57.46
step
Go Deeper Into the Woods |q 50370/1 |goto 24.58,56.65
step
talk Inquisitor Cleardawn##133098
turnin Deeper into the Woods##50370 |goto 24.57,56.65
accept Stopping the Grand Rite##50325 |goto 24.57,56.65
accept Witch Way Out?##50530 |goto 24.57,56.65
step
talk Warren Ashton##133105
accept Controlling the Situation##50445 |goto 24.58,56.72
accept Matrons of the Crimsonwood##50329 |goto 24.58,56.72
stickystart "Free_Captive_Villagers"
stickystart "Collect_Control_Charms"
step
click Witch Effigy
Destroy the First Focus |q 50325/1 |goto 24.60,59.29
step
click Witch Effigy
Destroy the Third Focus |q 50325/3 |goto 26.44,52.00
step
Follow the path |goto 25.42,52.66 < |only if walking
click Witch Effigy
Destroy the Second Focus |q 50325/2 |goto 25.23,50.02
step
label "Free_Captive_Villagers"
click Cage+
|tip They look like rounded wooden cages on the ground around this area.
Free #10# Captive Villagers |q 50530/1 |goto 24.76,51.61
step
label "Collect_Control_Charms"
kill Haunted Servitor##137587+
collect 5 Control Charm##157821 |q 50445/1 |goto 24.76,51.61
step
use the Weakening Potion##158175
|tip Use it on the three Matron enemies around this area.
|tip Use it repeatedly to kill them faster.
kill Matron Elsbeth Garrick##133103 |q 50329/1 |goto 19.53,53.69
kill Matron Stefania Denholm##137594 |q 50329/2 |goto 19.53,53.69
kill Matron Wilona Blackwood##137596 |q 50329/3 |goto 19.53,53.69
step
talk Inquisitor Cleardawn##133098
turnin Stopping the Grand Rite##50325 |goto 24.57,56.66
turnin Witch Way Out?##50530 |goto 24.57,56.66
step
talk Warren Ashton##133105
turnin Controlling the Situation##50445 |goto 24.58,56.72
turnin Matrons of the Crimsonwood##50329 |goto 24.58,56.72
step
talk Inquisitor Cleardawn##133098
accept In the Hall of the Drust King##50481 |goto 24.57,56.65
step
Enter the cave |goto 27.02,58.45 < 10 |walk
Watch the dialogue
Travel to Gorak Tul |goto 27.22,60.32 < 10 |c |q 50481
step
kill Gorak Tul##134004 |q 50481/1 |goto 27.54,59.37
|tip Downstairs inside the cave.
|tip He will eventually surrender.
step
Watch the dialogue
Escape the Chamber |q 50481/2 |goto 27.30,59.19
|tip Run up the stairs toward the exit of the cave.
|tip Inside the cave.
step
Return to the Crimson Forest |goto 26.95,58.24 < 10 |noway |c |q 50481
step
_Next to you:_
talk Inquisitor Cleardawn
turnin In the Hall of the Drust King##50481
accept Stick It To 'Em!##50533
step
use the Greater Control Charm##158064
|tip Use it next to the Crimsonwood Demolisher.
Use the Greater Control Charm |q 50533/1 |goto 27.18,57.91
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy the Witch Forces |q 50533/2 |goto 22.26,56.58
step
Reach the Signal Point |q 50533/3 |goto 19.39,51.02
step
talk Inquisitor Cleardawn##133098
Tell her _"Send the signal. Let's get out of here!"_
Tell Cleardawn to Send the Signal |q 50533/4 |goto 19.30,50.74
step
Watch the dialogue
clicknpc Waycrest Guard's Mount##134925
Ride the Waycrest Guard's Mount |invehicle |goto 19.43,50.56 |q 50533
step
Return to Arom's Stand |goto 37.85,49.99 |c |q 50533 |notravel
step
talk Inquisitor Cleardawn##135021
turnin Stick It To 'Em!##50533 |goto 37.87,50.09
step
Cross the bridge |goto 32.32,43.98 < 20 |only if walking
Cross the bridge |goto 30.98,36.05 < 20 |only if walking
talk Marshal Everit Reade##131636
turnin The Road to Corlain##49926 |goto 32.06,30.94
accept The First Watch##50003 |goto 32.06,30.94
step
Watch the dialogue
Enter the building |goto 31.35,30.00 < 10 |walk
kill Sister Adela##131671 |q 50003/1 |goto 31.18,29.81
|tip Upstairs inside the building.
step
Watch the dialogue
talk Marshal Everit Reade##131636
|tip Upstairs inside the building.
turnin The First Watch##50003 |goto 31.26,29.88
accept A Weather Eye##50149 |goto 31.26,29.88
step
talk Ensign Wallace##135024
fpath Watchman's Rise |goto 31.87,30.45
step
talk Inquisitor Notley##131640
|tip Behind the building.
Tell him _"I need your help scouting the surrounding area."_
collect Falconer's Whistle##156855 |q 50149/1 |goto 30.96,29.56
step
clicknpc Winston##131705
Watch the dialogue
Begin Scouting |q 50149/2 |goto 30.79,29.36
step
Watch the dialogue
Scout the Upper Corlain Gate |q 50149/3 |goto 30.85,21.08
|tip Fly into the floating yellow globe.
step
Watch the dialogue
Scout Corlain Town |q 50149/4 |goto 29.18,27.31
|tip Fly into the floating yellow globe.
step
Watch the dialogue
Scout the Armory |q 50149/5 |goto 25.01,35.84
|tip Fly into the floating yellow globe.
step
Watch the dialogue
Return to Watchman's Rise |goto 30.84,29.42 < 10 |c |q 50149 |notravel
step
talk Marshal Everit Reade##131636
turnin A Weather Eye##50149 |goto 31.35,30.29
accept A Steady Ballast##50151 |goto 31.35,30.29
step
talk Lucille Waycrest##131638
accept Precious Metals##50173 |goto 31.43,30.25
step
click Silver Nugget+
|tip They look like groups of small silver rocks on objects and on the ground around this area.
collect 10 Silver Nugget##156722 |q 50173/1 |goto 35.15,31.52
You can find more in the mine at [36.01,31.68]
step
talk Lucille Waycrest##131638
turnin Precious Metals##50173 |goto 31.43,30.25
step
talk Quartermaster Rickard##137455
|tip Inside the building.
home Watchman's Tower |goto 31.19,29.76 |q 50151 |future
step
Run down the stairs |goto 24.46,37.25 < 7 |walk
Watch the dialogue
talk Angus Ballaster##132193
|tip Downstairs inside the building.
Tell him _"We could use a blacksmith to help fight the coven."_
Find Angus Ballaster |q 50151/1 |goto 24.46,37.21
step
Watch the dialogue
|tip Downstairs inside the building.
Kill the enemies that attack
Defeat the Coven Ambush |q 50151/2 |goto 24.52,36.83
step
talk Marshal Everit Reade##131636
turnin A Steady Ballast##50151 |goto 31.35,30.30
step
talk Lucille Waycrest##131638
accept An Improvised Arsenal##50253 |goto 31.43,30.25
step
talk Angus Ballaster##132193
Ask him _"Can you make a weapon out of this silver?"_
Watch the dialogue
Speak with Angus Ballaster |q 50253/1 |goto 31.72,29.55
step
click Assorted Salvage
collect Battered Hand Cannon##156853 |q 50253/2 |goto 31.93,29.73
step
click Place Hand Cannon
Place the Hand Cannon |q 50253/3 |goto 31.63,29.51
step
Watch the dialogue
Modify the Hand Cannon |q 50253/4 |goto 31.63,29.51
step
talk Angus Ballaster##132193
turnin An Improvised Arsenal##50253 |goto 31.78,29.56
step
talk Lucille Waycrest##131638
accept Witchrending##50446 |goto 31.43,30.25
step
kill Matron Adeline##133350 |q 50446/2 |goto 30.38,28.83
|tip Use the "Witchrend" ability on her to kill her easier.
|tip It appears as a button on the screen.
step
kill Matron Ceridwen##133307 |q 50446/1 |goto 29.11,27.64
|tip Use the "Witchrend" ability on her to kill her easier.
|tip It appears as a button on the screen.
step
kill Matron Letitia##133351 |q 50446/3 |goto 27.09,29.31
|tip Use the "Witchrend" ability on her to kill her easier.
|tip It appears as a button on the screen.
step
Follow the path up |goto 25.97,18.69 < 20 |only if walking
talk Bertram##135025
fpath Whitegrove Chapel |goto 25.75,16.56
step
talk Lucille Waycrest##131638
turnin Witchrending##50446 |goto 31.43,30.25
step
talk Angus Ballaster##132193
accept Barrier Buster##50453 |goto 31.78,29.56
step
Follow the path |goto 30.81,26.17 < 50 |only if walking
click Blasting Powder+
|tip They look like brown leather sacks sitting on objects and on the ground around this area.
collect 5 Blasting Powder##157800 |q 50453/1 |goto 29.33,20.78
step
talk Inquisitor Sterntide##131642
|tip On top of the wall.
turnin Barrier Buster##50453 |goto 30.63,21.63
accept Break On Through##50457 |goto 30.63,21.63
step
click Rampart Cannon
Watch the dialogue
Destroy the Corlain Barrier |q 50457/1 |goto 30.56,21.64
step
talk Lucille Waycrest##131638
turnin Break On Through##50457 |goto 31.01,20.25
accept To the Other Side##50583 |goto 31.01,20.25
step
talk Marshal Everit Reade##131636
accept Hexecutioner##50585 |goto 31.03,20.26
accept Ruinous Rituals##50584 |goto 31.03,20.26
stickystart "Kill_Blighted_Horrors"
stickystart "Slay_Heartsbane_Witches"
step
click Gate
Open the East Gate |q 50583/1 |goto 29.85,17.92
step
click Gate
Open the South Gate |q 50583/2 |goto 32.52,20.52
step
Follow the path |goto 33.98,20.27 < 20 |only if walking
click Gate
Open the West Gate |q 50583/3 |goto 33.74,20.95
step
label "Kill_Blighted_Horrors"
kill 4 Blighted Horror##137568 |q 50584/1 |goto 33.42,18.32
|tip Attack the Heartsbane Disciples next to them around this area.
|tip They will appear on your minimap as yellow dots.
step
label "Slay_Heartsbane_Witches"
Kill enemies around this area
|tip Only Heartsbane and Coven enemies will count toward this quest goal.
Slay #13# Heartsbane Witches |q 50585/1 |goto 33.42,18.32
step
talk Marshal Everit Reade##131636
turnin Hexecutioner##50585 |goto 31.03,20.26
turnin Ruinous Rituals##50584 |goto 31.03,20.26
step
talk Lucille Waycrest##131638
turnin To the Other Side##50583 |goto 31.00,20.25
accept Storming the Manor##50588 |goto 31.00,20.25
step
Watch the dialogue
Begin Following Lucille Waycrest |goto 31.00,20.25 > 10 |c |q 50588
step
Watch the dialogue
|tip Follow Lucille Waycrest as she runs.
Follow Lucille |q 50588/1 |goto 32.67,15.35
step
Watch the dialogue
kill Marshal Everit Reade##134366 |q 50588/2 |goto 32.88,15.33
step
Watch the dialogue
talk Lucille Waycrest##131638
turnin Storming the Manor##50588 |goto 32.82,15.34
step
_Congratulations!_
You completed the Drustvar storyline.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Stormsong Valley Loremaster (Story Quest Only)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Stormsong Valley storylines:\n\nThe Tidesages of Stormsong\nThe Growing Tempest\nCycle of Hatred\nBriarback Kraul\nA House in Peril\nAt the Edge of Madness\nFrom the Depths They Come\nTreasure in Deadwash",
condition_suggested=function() return level >= 50 and not achieved(12496) and completedq(47189) end,
condition_end=function() return achieved(12496) end,
startlevel=50,
endlevel=50,
image=ZGV.IMAGESDIR.."StormsongValley",
},[[
step
click Scouting Map
|tip Inside the building.
accept Stormsong Valley##47962 |goto Boralus/0 68.38,22.06
step
talk Taelia##121235
|tip Inside the building.
turnin Stormsong Valley##47962 |goto Boralus/0 68.17,21.97
step
talk Taelia##121235
|tip Inside the building.
accept The Missing Fleet##47952 |goto Boralus/0 68.17,21.97
step
Leave the building |goto 67.11,23.42 < 10 |walk
talk Will Melborne##135064
Tell him _"We need a ferry to the Stormsong Monastery."_
Charter a Ferry to Stormsong Monastery |q 47952/1 |goto 74.17,24.80
step
Watch the dialogue
Travel to Stormsong Monastery |goto 65.20,68.70 < 10 |c |notravel |q 47952
step
_Next to you:_
talk Taelia
turnin The Missing Fleet##47952
accept Searching for Answers##51487
step
talk Sister Adrianna##133974
Ask her _"Can you tell me anything about the missing fleet?"_
Question Sister Adrianna |q 51487/1 |goto 68.44,74.23
step
Follow the path |goto 63.62,82.76 < 15 |only if walking
talk Brother Darrel##133976
Ask him _"Can you tell me anything about the missing fleet?"_
Question Brother Darrel |q 51487/2 |goto 60.49,85.25
step
talk Sister Celicia##134033
Ask her _"Can you tell me anything about the missing fleet?"_
Question Sister Celicia |q 51487/3 |goto 66.18,84.97
step
_Next to you:_
talk Taelia
turnin Searching for Answers##51487
accept Archived Knowledge##51488
step
talk Brother Alen##133951
Ask him _"Can you tell me anything about the missing fleet?"_
Question Brother Alen |q 51488/1 |goto 68.40,81.49
step
Run down the stairs |goto 66.97,80.35 < 7 |only if walking
Watch the dialogue
|tip Follow Brother Alen as he walks.
Follow Brother Alen into the Archives |q 51488/2 |goto Tiragarde Sound/0 73.72,39.54
|tip Downstairs inside the building.
step
Watch the dialogue
|tip Downstairs inside the building.
kill Lieutenant Wade##138318 |q 51488/3 |goto 73.65,39.49
step
Watch the dialogue
|tip Downstairs inside the building.
Learn the Secret |q 51488/4 |goto 73.71,39.54
step
_Next to you:_
talk Taelia
turnin Archived Knowledge##51488
accept Time to Leave##51489
step
Leave the building |goto Boralus/0 66.97,80.36 < 7 |walk
Locate Galeheart |goto 71.78,78.90 < 10 |c |q 51489
|tip At the top of the tower.
step
clicknpc Galeheart##137978
|tip At the top of the tower.
Watch the dialogue
Begin Flying to Stormsong Valley |goto 71.78,78.90 > 30 |c |q 51489
step
Watch the dialogue
Fly with Galeheart to Stormsong Valley |q 51489/1 |goto Stormsong Valley/0 57.86,86.05 |notravel
step
talk Taelia##137866
turnin Time to Leave##51489 |goto Stormsong Valley/0 57.89,85.92
accept Border Issues##51490 |goto Stormsong Valley/0 57.89,85.92
step
talk Stormsong NPCs
Tell them _"Open this pass at once."_
|tip Some of them will attack you.
Clear the Blockade |q 51490/1 |goto 57.65,85.44
step
talk Taelia##137866
turnin Border Issues##51490 |goto 57.89,85.92
accept Carry On##51401 |goto 57.89,85.92
step
Cross the bridge |goto 57.60,80.66 < 20 |only if walking
Follow the road |goto 58.65,73.74 < 30 |only if walking
Watch the dialogue
talk Taelia##129999
turnin Carry On##51401 |goto 59.17,69.49
accept A Risky Ploy##49725 |goto 59.17,69.49
step
use the Military Whistle##155859
Disperse the Crowd |q 49725/1 |goto 59.11,69.06
step
Watch the dialogue
kill Brennadam Citizen##134241
Subdue the Brennadam Citizen |q 49725/2 |goto 59.14,69.09
step
talk Brother Pike##130576
turnin A Risky Ploy##49725 |goto 59.23,68.63
accept House Stormsong##49703 |goto 59.23,68.63
step
talk "Nasty" Buck##138221
|tip He walks around this area inside the building.
home The Golden Flagon |goto 58.58,70.31 |q 52795 |future
step
talk Anna Skyspirit##134704
fpath Brennadam |goto 59.73,70.57
step
talk Mayor Roz##130694
accept You Have Their Orders##49745 |goto 57.63,66.49
accept Dousing the Flames##49746 |goto 57.63,66.49
step
talk Sergeant Calvin##130190
accept Bombs, Away##49744 |goto 57.61,66.41
stickystart "Collect_Horde_Explosives"
stickystart "Douse_Fires"
step
kill Champion Lockjaw##138028
|tip He walks around this area.
|tip Behind the building.
collect Warchief's Orders##133510 |q 49745/1 |goto 54.43,61.33
step
label "Collect_Horde_Explosives"
click Sapper Charge+
|tip They look like metal spikey bombs that appear on the ground around this area.
|tip They have a timer counting down to explosion.
|tip Click them before they explode.
click Horde Explosive+
|tip They look like red spikey balls half-buried in the ground around this area.
|tip These do not explode.
collect 8 Horde Explosive##155877 |q 49744/1 |goto 56.02,62.91
step
click Planted Explosives
Destroy the Demolisher |q 49744/2 |goto 55.71,60.68 |count 1
step
click Planted Explosives
Destroy the Demolisher |q 49744/2 |goto 54.63,60.89 |count 2
step
label "Douse_Fires"
click Water Bucket+
|tip They look like small wooden buckets on the ground next to water around this area.
|tip Use the "Douse Flames" ability on fires around this area.
|tip It appears as a button on the screen.
Douse #15# Fires |q 49746/1 |goto 56.52,64.70
step
talk Sergeant Calvin##130190
turnin Bombs, Away##49744 |goto 57.61,66.41
step
talk Mayor Roz##130694
turnin You Have Their Orders##49745 |goto 57.63,66.49
turnin Dousing the Flames##49746 |goto 57.63,66.49
accept Heavy Artillery##49755 |goto 57.63,66.49
step
Follow the path up |goto 57.68,61.68 < 15 |only if walking
kill Tank Engineer##138125+
kill Commander Wormwood##130899 |q 49755/1 |goto 56.17,58.40
|tip He appears after you kill the Tank Engineers.
step
clicknpc Experimental War Machine##138055
Control the Experimental War Machine |invehicle |goto 56.13,58.41 |q 49755
step
Kill enemies around this area
|tip They are to the northwest.
|tip Use the "Azerite Cannon" ability on your action bar.
Destroy the Horde Forces |q 49755/2 |goto 56.10,58.28
step
Activate the Self Destruct |q 49755/3 |goto 56.10,58.28
|tip Use the "Self Destruct" ability on your action bar.
step
talk Mayor Roz##130694
turnin Heavy Artillery##49755 |goto 57.63,66.49
step
Follow the road |goto 54.48,68.44 < 30 |only if walking
talk Farmer Burton##132118
accept Gadgets and Gizmos Aplenty##50134 |goto 51.58,65.96
accept Stop Vining!##50135 |goto 51.58,65.96
stickystart "Collect_Harvester_Gizmos"
step
Follow the path down |goto 49.12,65.62 < 15 |only if walking
Enter the cave |goto 48.06,65.79 < 10 |walk
kill Vinemaster Smagh##132160 |q 50135/3 |goto 47.93,67.22
|tip Inside the cave.
step
Leave the cave |goto 48.05,65.71 < 10 |walk
Enter the cave |goto 46.64,64.37 < 10 |walk
kill Vinemaster Orgsteen##132161 |q 50135/2 |goto 46.19,64.56
|tip She walks around this area inside the cave.
step
Leave the cave |goto 46.68,64.34 < 10 |walk
Enter the cave |goto 48.24,63.68 < 10 |walk
kill Vinemaster Guff##132162 |q 50135/1 |goto 48.35,62.92
|tip She walks around this area inside the cave.
step
label "Collect_Harvester_Gizmos"
clicknpc Malfunctioning Harvester##132123+
|tip They look like broken down mechanical scarecrows on the ground around this area.
Gather #10# Harvester Gizmos |q 50134/1 |goto 49.43,65.32
step
talk Farmer Burton##132118
turnin Gadgets and Gizmos Aplenty##50134 |goto 51.58,65.96
turnin Stop Vining!##50135 |goto 51.58,65.96
accept Farming Stimulator##50136 |goto 51.58,65.96
step
clicknpc Repaired Farmhand##132297
Control the Repaired Farmhand |invehicle |goto 51.57,65.91 |q 50136
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #30# Enemies |q 50136/1 |goto 49.31,65.03
step
Return to Farmer Burton |outvehicle |goto 51.57,65.91 |q 50136
|tip You will automatically stop controlling the Repaired Farmhand when you reach this location.
step
talk Farmer Burton##132118
turnin Farming Stimulator##50136 |goto 51.58,65.96
step
talk Karla Fairweather##134963
fpath The Amber Waves |goto 50.75,70.21
step
Follow the path up |goto 51.70,70.20 < 20 |only if walking
talk Farmer Goldfield##129808
|tip On top of the building.
accept A Pocketful of Shells##50041 |goto 50.76,73.14
stickystart "Collect_Salvaged_Azerite_Ammunition"
step
click Dirty Pocketwatch
accept A Reason to Stay##50065 |goto 49.85,73.53
step
click Battered Sword
Find the Keepsake |q 50065/1 |goto 50.04,71.44 |count 2
step
click Tarnished Locket
|tip Inside the building.
Find the Keepsake |q 50065/1 |goto 48.88,71.23 |count 3
step
label "Collect_Salvaged_Azerite_Ammunition"
Kill enemies around this area
|tip Click their corpses.
collect 20 Salvaged Azerite Ammunition##156583 |q 50041/1 |goto 50.07,72.22
step
talk Farmer Goldfield##129808
|tip On top of the building.
turnin A Pocketful of Shells##50041 |goto 50.76,73.14
turnin A Reason to Stay##50065 |goto 50.76,73.14
accept Goldfield's War##50069 |goto 50.76,73.14
step
click Spare Rifles
Pick Up a Spare Rifle |invehicle |goto 50.75,73.00 |q 50069
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Invaders |q 50069/1 |goto 50.72,73.00
step
kill Brug Housesmash##131980 |q 50069/2 |goto 50.72,73.00
|tip Use the abilities on your action bar.
step
talk Farmer Goldfield##129808
turnin Goldfield's War##50069 |goto 50.76,73.15
accept Golden Fields Forever##50088 |goto 50.76,73.15
step
click River Carnations
collect River Carnations##160558 |q 50088/1 |goto 51.60,75.16
step
talk Farmer Goldfield##129808
turnin Golden Fields Forever##50088 |goto 50.67,77.02
accept Deal's Off##50622 |goto 50.67,77.02
step
talk Mayor Roz##134752
|tip Inside the building.
turnin Deal's Off##50622 |goto 58.64,70.43
accept Look Out!##50354 |goto 58.64,70.43
step
Follow the road |goto 50.97,61.93 < 20 |only if walking
Follow the path |goto 47.29,61.73 < 30 |only if walking
talk Sergeant Calvin##133953
|tip Inside the building.
accept Boaring Company##50353 |goto 44.73,64.61
stickystart "Collect_Foul_Smelling_Samples"
stickystart "Kill_Briarback_Lookouts"
step
Follow the path up |goto 42.45,67.52 < 15 |only if walking
Kill enemies around this area
accept Anger in a Bottle##50367 |goto 43.90,72.05
|tip You will eventually automatically accept this quest after looting.
stickystart "Rescue_Farmers"
step
Follow the path |goto 44.19,72.01 < 20 |only if walking
click Earthen Pillar
Rescue Farmer Deal |q 50353/2 |goto 46.17,72.04
step
label "Rescue_Farmers"
click Earthen Pillar+
|tip They look like wooden spikes with squirming humans tied to them on the ground around this area.
|tip They will appear on your minimap as yellow dots.
|tip They can also be in the caves around this area.
Rescue #7# Farmers |q 50353/1 |goto 45.94,72.63
step
label "Collect_Foul_Smelling_Samples"
Kill Briarback enemies around this area
|tip Hulking Kraulguards will also drop the quest item.
collect 10 Foul-Smelling Sample##157850 |q 50367/1 |goto 45.94,72.63
|only if haveq(50367) or completedq(50367)
step
label "Kill_Briarback_Lookouts"
use the Sedative Quill##156516
|tip Use it on Briarback Lookouts when they begin casting their "Sound the Alarm" ability.
|tip This will prevent them from calling for help from nearby enemies.
kill 6 Briarback Lookout##130073 |q 50354/1 |goto 45.94,72.63
step
Follow the path up |goto 45.92,73.06 < 15 |only if walking
Follow the path up |goto 46.20,74.34 < 15 |only if walking
talk Sergeant Calvin##133953
turnin Look Out!##50354 |goto 46.66,73.83
turnin Boaring Company##50353 |goto 46.66,73.83
turnin Anger in a Bottle##50367 |goto 46.66,73.83
accept War Pigs##50363 |goto 46.66,73.83
accept Run For the Hills##50365 |goto 46.66,73.83
stickystart "Capture_Grazing_Battle_Piglets"
step
Follow the path |goto 46.09,75.53 < 15 |only if walking
click Empty Crate
accept Steal Them Back##50340 |goto 46.31,77.01
step
Enter the cave |goto 46.28,77.07 < 10 |walk
Follow the path up |goto 46.65,77.02 < 5 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 47.40,77.05 |count 1
step
Leave the cave |goto 46.26,77.08 < 10 |walk
Enter the cave |goto 44.87,77.32 < 10 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 44.51,78.69 |count 2
step
click Quill Venom
|tip Inside the cave.
Destroy the Central Stockpile |q 50365/2 |goto 44.64,78.93
step
Leave the cave |goto 44.86,77.30 < 10 |walk
Follow the path up |goto 45.79,77.23 < 15 |only if walking
Enter the cave |goto 46.29,78.08 < 10 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 46.55,79.50 |count 3
step
click Preserved Bramble Spores
|tip Inside the cave.
Destroy the Eastern Stockpile |q 50365/1 |goto 46.82,79.60
step
Leave the cave |goto 46.28,78.05 < 10 |walk
Enter the cave |goto 45.64,78.20 < 10 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 46.44,80.16 |count 4
step
Leave the cave |goto 45.63,78.23 < 10 |walk
Follow the path |goto 44.57,78.47 < 15 |only if walking
Enter the cave |goto 43.63,78.49 < 10 |walk
click Stolen Stormsong Supplies
|tip Inside the cave.
collect Stolen Crate##158735 |q 50340/1 |goto 42.71,78.81 |count 5
step
click Giant-Sized Totem
|tip Inside the cave.
Destroy the Western Stockpile |q 50365/3 |goto 42.48,79.21
step
Leave the cave |goto 43.64,78.48 < 10 |c |q 50363
step
label "Capture_Grazing_Battle_Piglets"
clicknpc Grazing Battle-Piglet##134014+
|tip They look like small pigs on the ground around this area.
Kill enemies around this area
clicknpc Bewildered Battle-Piglet##139937+
|tip They look like small pigs that sometimes appear after killing enemies around this area.
Capture #8# Grazing Battle-Piglets |q 50363/1 |goto 45.23,77.97
step
talk Sergeant Calvin##133953
turnin War Pigs##50363 |goto 46.66,73.83
turnin Run For the Hills##50365 |goto 46.66,73.83
step
Watch the dialogue
talk Sergeant Calvin##133953
turnin Steal Them Back##50340 |goto 46.66,73.83
accept Terror of the Kraul##50368 |goto 46.66,73.83
step
Enter the cave |goto Stormsong Valley/0 45.83,74.40 < 10 |walk
Follow the path up |goto Stormsong Valley/3 53.76,70.22 < 10 |walk
Follow the path |goto Stormsong Valley/3 41.91,52.69 < 10 |walk
use the Flask of Enraging Vapors##155824
Become Enraged |havebuff 236310 |goto Stormsong Valley/3 35.22,46.52 |q 50368
step
kill Bramblefist the Maddened##129847 |q 50368/1 |goto 17.78,32.32
|tip Inside the cave.
step
Follow the path |goto 40.38,51.45 < 10 |walk
talk Sergeant Calvin##133953
|tip Inside the cave.
turnin Terror of the Kraul##50368 |goto 71.25,52.16
accept A Question of Quillpower##50640 |goto 71.25,52.16
step
clicknpc Ornery Battleboar##134542
|tip Inside the cave.
Escape the Kraul |q 50640/1 |goto 71.83,53.01
step
Watch the dialogue
Ride the Battleboar to Safety |goto Stormsong Valley/0 48.59,70.04 < 10 |c |q 50640 |notravel
step
Follow the path down |goto 46.70,67.61 < 30 |only if walking
Cross the bridge |goto 43.97,59.18 < 15 |only if walking
talk Malorian Tailwind##134832
fpath Deadwash |goto 42.72,57.39
step
talk Leo Shealds##134720
accept Break 'Em Out##50810 |goto 42.97,56.60
accept Iron Low Tide##50802 |goto 42.97,56.60
accept Two-Faced Pirate Scum##50674 |goto 42.97,56.60
step
Follow the path |goto 42.10,57.74 < 20 |only if walking
kill Two Faced Tom##138792 |q 50674/1 |goto 41.09,56.81
|tip He walks around this area.
step
Follow the path down |goto 42.10,57.74 < 20 |only if walking
talk Leo Shealds##134720
turnin Two-Faced Pirate Scum##50674 |goto 42.97,56.60
stickystart "Slay_Irontide_Pirates"
step
click Ball and Chain+
|tip They look like silver balls chained to the ankles of humans on the ground around this area.
Break #10# Chains |q 50810/1 |goto 44.21,57.65
step
label "Slay_Irontide_Pirates"
Kill Irontide enemies around this area
Slay #10# Irontide Pirates |q 50802/1 |goto 44.21,57.65
step
Run up the stairs |goto 43.86,56.74 < 15 |only if walking
talk Leo Shealds##134720
turnin Break 'Em Out##50810 |goto 42.97,56.60
turnin Iron Low Tide##50802 |goto 42.97,56.60
accept Treasure Hunting##50675 |goto 42.97,56.60
step
talk Nedly Grinner##134702
turnin Treasure Hunting##50675 |goto 44.47,55.53
accept Anchors Aweigh Too Much##50704 |goto 44.47,55.53
accept Not On Our Payroll##50691 |goto 44.47,55.53
step
_Next to you:_
talk Moxie Lockspinner
accept Fun With Magnets##50696
accept Bomb Beats Rock##50697
stickystart "Find_Lost_Coins"
stickystart "Collect_Old_Ship_Parts"
stickystart "Kill_Restless_Stones"
step
click Moxie's Bombs
Watch the dialogue
Open the Western Cave |q 50697/2 |goto 48.73,56.56
step
Follow the path |goto 48.00,57.76 < 20 |only if walking
Follow the path |goto 49.62,59.53 < 30 |only if walking
click Moxie's Bombs
Open the Eastern Cave |q 50697/1 |goto 50.87,58.19
step
_Next to you:_
talk Moxie Lockspinner
turnin Bomb Beats Rock##50697
step
Enter the cave |goto 50.86,58.09 < 10 |walk
click Large Pile of Gold
|tip Inside the cave.
accept Share the Wealth##51140 |goto 50.86,56.74
step
label "Find_Lost_Coins"
Leave the cave |goto 50.89,58.20 < 10 |walk
use the Magnetized Metal Collector##158226
|tip Use it next to the small glints of white light on the ground around this area.
Find #60# Lost Coins |q 50696/1	|goto 51.26,59.78
You can find more around:
[52.33,56.15]
[47.56,57.31]
[49.92,52.93]
[46.73,53.23]
step
_Next to you:_
talk Moxie Lockspinner
turnin Fun With Magnets##50696
step
label "Collect_Old_Ship_Parts"
click Old Ship Part+
|tip They look like various-shaped silver metal objects on the ground around this area.
collect 12 Old Ship Parts##158724 |q 50704/1 |goto 51.11,59.20
step
label "Kill_Restless_Stones"
kill 10 Restless Stone##134966 |q 50691/1 |goto 51.11,59.20
step
talk Leo Shealds##134720
turnin Share the Wealth##51140 |goto 42.97,56.60
step
talk Nedly Grinner##134702
turnin Anchors Aweigh Too Much##50704 |goto 44.47,55.53
turnin Not On Our Payroll##50691 |goto 44.47,55.53
accept Don't Turtle##50741 |goto 44.47,55.53
step
talk Grettle Haribull##135367
accept A Horrible Place##50814 |goto 44.20,54.10
step
talk Moxie Lockspinner##135067
Ask her _"What's the plan?"_
Speak to Moxie |q 50741/1 |goto 42.68,54.31
step
talk Maokka##135033
Ask him _"That box?"_
Tell him _"I'll get the meat."_
Speak to Maokka |q 50741/2 |goto 42.54,54.36
step
talk Moxie Lockspinner##135067
turnin Don't Turtle##50741 |goto 42.68,54.31
accept Earl-E Bot Gets the Worm##50753 |goto 42.68,54.31
stickystart "Collect_Wetshell_Turtles"
step
use the Remote Earl-E Designator##158635
|tip Use it on the clouds of brown dirt on the ground around this area.
kill Mud Feeder##135135+
collect 8 Mud Worm Meat##158636 |q 50753/1 |goto 40.40,53.68
step
label "Collect_Wetshell_Turtles"
clicknpc Wetshell Turtle##135407+
|tip They look like tiny turtles on the ground around this area.
Collect #6# Wetshell Turtles |q 50814/1 |goto 40.40,53.68
step
talk Maokka##135033
turnin Earl-E Bot Gets the Worm##50753 |goto 42.54,54.36
step
talk Moxie Lockspinner##135067
accept No Bot Left Behind##50774 |goto 42.68,54.31
step
talk Grettle Haribull##135367
turnin A Horrible Place##50814 |goto 44.20,54.10
step
kill Mud Burrow Guardian##135236 |q 50774/1 |goto 39.50,51.48
Save Earl-E |q 50774/2 |goto 39.50,51.48
step
talk Moxie Lockspinner##135067
turnin No Bot Left Behind##50774 |goto 42.67,54.31
accept Cave Commotion##50793 |goto 42.67,54.31
step
talk Nedly Grinner##135330
turnin Cave Commotion##50793 |goto 41.12,54.09
accept I Want It All Now##50803 |goto 41.12,54.09
step
_Next to you:_
talk Moxie Lockspinner
accept We're Not Friends##50955
accept The Proof of Piracy##52132
stickystart "Destroy_Irontide_Rum_Stashes"
stickystart "Collect_Irontide_Coin_Bags"
step
kill Captain Calico McGee##138169 |q 50955/1 |goto 36.73,56.86
step
_Next to you:_
talk Moxie Lockspinner
turnin We're Not Friends##50955
step
click Irontide Loot
accept All Laid Out For Us##50742 |goto 35.87,56.10
step
talk Big Find Balor##138934
Tell him _"I need your help."_
Get Big Find Balor |q 50742/3 |goto 35.22,54.74
step
label "Destroy_Irontide_Rum_Stashes"
Destroy #6# Irontide Rum Stashes |q 52132/1 |goto 36.56,54.89
|tip They look like brown wooden barrels on the ground around this area.
|tip Use the "Barrel Buster Bomb" ability on them.
|tip It appears as a button on the screen.
step
_Next to you:_
talk Moxie Lockspinner
turnin The Proof of Piracy##52132
step
talk Toothless Eddard##135782
Tell him _"I need your help."_
Get Toothless Eddard |q 50742/1 |goto 37.81,54.03
step
talk Chopper Darry##138928
Tell her _"I need your help."_
Get Chopper Darry |q 50742/2 |goto 38.80,58.54
step
click Irontide Loot
Take the Loot |q 50742/4 |goto 35.87,56.09
step
label "Collect_Irontide_Coin_Bags"
Kill Irontide enemies around this area
click Irontide Coin Bag+
|tip They look like grey sacks on the ground around this area.
collect 12 Irontide Coin Bag##160481 |q 50803/1 |goto 38.75,57.08
step
talk Nedly Grinner##135330
turnin I Want It All Now##50803 |goto 41.12,54.08
step
Follow the path up |goto 42.51,54.08 < 20 |only if walking
talk Leo Shealds##134720
turnin All Laid Out For Us##50742 |goto 42.97,56.60
accept Helping Out, Somewhere Else##52068 |goto 42.97,56.60
step
Follow the path up |goto 45.81,48.30 < 20 |only if walking
talk Felecia Gladstone##138735
accept Having a Blast##51711 |goto 46.88,47.68
accept Grizzled##51752 |goto 46.88,47.68
step
Follow the path up |goto 48.14,45.64 < 20 |only if walking
click Bundle of Dynamite
collect Bundle of Dynamite##160738 |q 51711/1 |goto 47.65,38.36
stickystart "Kill_Mine_Technicians"
stickystart "Slay_Warfang_Miners"
step
Enter the mine |goto 46.62,36.20 < 10 |walk
talk Holger Nash##138924
|tip Inside the mine.
accept Get Out of Here##51726 |goto Stormsong Valley/4 66.33,38.48
stickystart "Free_Captured_Miners"
step
Follow the path |goto 57.19,27.64 < 10 |walk
click Cracked Mine Sweeper
|tip Inside the mine.
accept The Mine Sweeper##51881 |goto 47.19,15.59
step
Follow the path |goto 29.77,29.37 < 10 |walk
Follow the path up |goto 27.36,54.99 < 10 |walk
kill Chief Engineer Grizz##138581 |q 51752/1 |goto 35.51,38.93
|tip Inside the mine.
step
label "Kill_Mine_Technicians"
kill 4 Mine Technician##138521 |q 51711/3 |goto 41.37,17.76
|tip Inside the mine.
step
Follow the path up |goto 41.37,17.76 < 10 |c |q 51726
step
label "Free_Captured_Miners"
clicknpc Captured Miner##136333+
|tip They look like humans mining next to the walls around this area inside the mine.
Free #6# Captured Miners |q 51726/1 |goto 66.38,38.44
step
label "Slay_Warfang_Miners"
Kill enemies around this area.
|tip Inside the mine.
|tip Use the "Toss Dynamite" ability.
|tip It appears as a button on the screen.
|tip Use it on Blackpowder Ore nodes next to enemies, and on enemies, around this area inside the mine.
|tip They look like large rocky black ore nodes on the ground around this area inside the mine.
Slay #16# Warfang Miners |q 51711/2 |goto 66.38,38.44
step
talk Holger Nash##138924
|tip Inside the mine.
turnin Get Out of Here##51726 |goto 66.38,38.44
step
Leave the mine |goto Stormsong Valley/0 46.60,36.17 < 10 |walk
talk Felecia Gladstone##138735
turnin Having a Blast##51711 |goto Stormsong Valley/0 46.40,36.98
turnin Grizzled##51752 |goto Stormsong Valley/0 46.40,36.98
turnin The Mine Sweeper##51881 |goto Stormsong Valley/0 46.40,36.98
accept Burn It All Down##51728 |goto Stormsong Valley/0 46.40,36.98
accept Get Shredded##51720 |goto Stormsong Valley/0 46.40,36.98
accept Saw Dusted##51723 |goto Stormsong Valley/0 46.40,36.98
stickystart "Burn_Lumber_Piles"
stickystart "Collect_Energized_Core"
stickystart "Kill_Warfang_Lumberjacks"
step
Burn the Siege Tower |q 51728/2 |goto 49.05,37.43 |count 1
|tip Use the "Flamethrower" ability.
|tip Use it next to the Siege Tower.
|tip It appears as a button on the screen.
step
Burn the Siege Tower |q 51728/2 |goto 49.65,38.08 |count 2
|tip Use the "Flamethrower" ability.
|tip Use it next to the Siege Tower.
|tip It appears as a button on the screen.
step
label "Burn_Lumber_Piles"
Burn #6# Lumber Piles |q 51728/1 |goto 50.00,37.89
|tip They look like stacks of large logs on the ground around this area.
|tip Use the "Flamethrower" ability next to Lumber Piles around this area.
|tip It appears as a button on the screen.
step
label "Collect_Energized_Core"
kill Goblin Shredder##137915+
collect Energized Core##160595 |q 51720/1 |goto 50.00,37.89
step
label "Kill_Warfang_Lumberjacks"
kill 10 Warfang Lumberjack##135981 |q 51723/1 |goto 50.00,37.89
|tip Use the "Flamethrower" ability.
|tip It appears as a button on the screen.
step
talk Felecia Gladstone##138735
turnin Burn It All Down##51728 |goto 51.29,36.95
turnin Saw Dusted##51723 |goto 51.29,36.95
step
talk Prototype Shredder MK-03##138777
turnin Get Shredded##51720 |goto 51.25,36.72
step
talk Felecia Gladstone##138735
accept Eye for an Eye##51712 |goto 51.29,36.96
step
clicknpc Prototype Shredder MK-03##138904
Pilot the Prototype Shredder |q 51712/1 |goto 51.24,36.72
stickystart "Burn_Warfang_Buildings"
stickystart "Slay_Horde_Soldiers"
step
Cross the bridge |goto 50.30,34.24 < 15 |only if walking
Follow the path up |goto 49.90,32.54 < 15 |only if walking
kill General Blackstone##138683 |q 51712/3 |goto 49.14,34.46
|tip Use the abilties on your action bar.
step
label "Burn_Warfang_Buildings"
Burn #8# Warfang Buildings |q 51712/2 |goto 50.17,32.61
|tip Use the "Flamethrower" ability on your action bar next to buildings around this area.
|tip The buildings you can burn can be seen on your minimap.
|tip They will appear on your minimap as yellow dots.
step
label "Slay_Horde_Soldiers"
Kill enemies around this area
|tip Use the abilties on your action bar.
Slay #30# Horde Soldiers |q 51712/4 |goto 50.17,32.61
step
Cross the bridge |goto 50.37,33.58 < 15 |only if walking
Return to Felecia Gladstone |goto 51.29,36.96 < 10 |c |q 51712
step
Stop Piloting the Prototype Shredder |outvehicle |goto 51.29,36.96 |q 51712
|tip Click the yellow arrow on your action bar.
step
talk Felecia Gladstone##138735
turnin Eye for an Eye##51712 |goto 51.29,36.96
step
talk Mayor Roz##134752
|tip Inside the building.
turnin A Question of Quillpower##50640 |goto 58.63,70.43
step
Follow the path |goto 40.53,48.69 < 30 |only if walking
talk Scroll of Flight##137318
fpath Seekers Vista |goto 40.02,37.32
step
Follow the road |goto 38.15,63.05 < 20 |only if walking
talk Alexa Davenport##138180
fpath Millstone Hamlet |goto 30.75,66.56
step
talk Lieutenant Bauer##131002
turnin Helping Out, Somewhere Else##52068 |goto 30.16,59.20
accept Freedom for the Sea##50614 |goto 30.16,59.20
accept A Bit of a Bind##50616 |goto 30.16,59.20
accept Caught in the Net##50621 |goto 30.16,59.20
stickystart "Collect_Songstone"
stickystart "Free_Villagers"
stickystart "Kill_Bound_Seasurges"
step
kill Binder Sa'thress##134341 |q 50616/1 |goto 27.73,62.40
step
label "Collect_Songstone"
kill Binder Sa'thress##134341
collect Songstone##156472 |q 50616/2 |goto 27.73,62.40
step
label "Free_Villagers"
Kill Zeth'jir enemies around this area
collect Fishbone Key##159752+ |n
click Naga Cage+
|tip They look like yellow cages on the ground around this area.
Free #5# Villagers |q 50621/1 |goto 27.85,61.24
step
label "Kill_Bound_Seasurges"
kill 6 Bound Seasurge##134340 |q 50614/1 |goto 27.85,61.24
step
talk Lieutenant Bauer##131002
turnin Freedom for the Sea##50614 |goto 30.16,59.20
turnin A Bit of a Bind##50616 |goto 30.16,59.20
turnin Caught in the Net##50621 |goto 30.16,59.20
accept The Shifting Tides##50635 |goto 30.16,59.20
step
Follow the path |goto 34.55,56.77 < 20 |only if walking
Run up the stairs |goto 35.20,50.83 < 15 |only if walking
talk Rikal##131014
turnin The Shifting Tides##50635 |goto 35.02,47.67
accept Eeling in a Big One##50645 |goto 35.02,47.67
accept Filching from Thieves##50649 |goto 35.02,47.67
step
talk Staff Sergeant Cotner##138210
|tip Inside the building.
home Fort Daelin |goto 34.83,47.15 |q 50644 |future
step
talk Specialist Wembley##131003
accept Facing the Invaders##50644 |goto 34.58,47.16
accept Reclaiming our Defenses##50653 |goto 34.58,47.16
step
talk Misty Koret##138193
fpath Fort Daelin |goto 34.28,47.23
stickystart "Collect_Tide_Beacons"
stickystart "Collect_Abyssal_Fangs"
stickystart "Slay_Northern_Naga_Forces"
step
clicknpc Stranded Battalion Soldier##131409+
|tip They look like human soldiers kneeling and floating while kicking their legs on the ground around this area.
|tip You can find more downstairs on the beaches around this area.
Save #8# Battalion Soldiers |q 50653/1 |goto 33.34,43.37
step
label "Collect_Tide_Beacons"
click Tidal Beacon+
|tip They look like small metal lanterns sitting in blue circles on the ground around this area.
|tip You can find more downstairs on the beaches around this area.
collect 7 Tidal Beacon##158183 |q 50649/1 |goto 33.34,43.37
step
label "Collect_Abyssal_Fangs"
kill Abyssal Eel##129980+
|tip You can find more downstairs on the beaches around this area.
collect 16 Abyssal Fang##158181 |q 50645/1 |goto 33.34,43.37
step
label "Slay_Northern_Naga_Forces"
Kill Zeth'jir enemies around this area
|tip Zeth'jir Attackers will not count for this quest goal.
|tip You can find more downstairs on the beaches around this area.
Slay #15# Northern Naga Forces |q 50644/1 |goto 33.34,43.37
step
talk Specialist Wembley##131003
|tip Upstairs inside the fort.
turnin Facing the Invaders##50644 |goto 34.58,47.16
turnin Reclaiming our Defenses##50653 |goto 34.58,47.16
accept Any Ammo Will Do##50672 |goto 34.58,47.16
accept Piercing the Shield##50679 |goto 34.58,47.16
accept Problem Solving with Gunpowder##50698 |goto 34.58,47.16
step
talk Rikal##131014
turnin Eeling in a Big One##50645 |goto 35.02,47.67
turnin Filching from Thieves##50649 |goto 35.02,47.67
accept You're a Shark##50773 |goto 35.02,47.67
step
talk Rikal##131014
Tell him _"Start casting the spell, Rikal."_ |goto 35.02,47.67
Become a Shark |goto 27.73,34.47 < 20 |noway |c |q 50773
step
kill 20 Zeth'jir Attacker##141263 |q 50773/1 |goto 26.80,35.74
|tip Underwater.
|tip Swim into them to kill them.
step
Return to Fort Daelin |goto 34.42,47.94 < 10 |noway |c |q 50773
step
talk Rikal##131014
turnin You're a Shark##50773 |goto 35.01,47.68
stickystart "Arm_Explosive_Traps"
stickystart "Collect_Zethjir_Harpoons"
step
Run down the stairs |goto 32.63,48.72 < 15 |only if walking
kill Zeth'jir Seacaller##130824+
|tip You can find more downstairs on the beach.
collect Zeth'jir Channeling Rod##158200 |q 50679/1 |goto 31.00,47.36
step
label "Arm_Explosive_Traps"
click Live Explosive Trap+
|tip They look like small spikey balls on the ground around this area.
|tip You can find more downstairs on the beach.
Arm #5# Explosive Traps |q 50698/1 |goto 31.00,47.36
step
label "Collect_Zethjir_Harpoons"
kill Shoalbreach Lance##129972+
click Zeth'jir Harpoon+
|tip They look like harpoons stuck in the ground and in walls around this area.
|tip You can find more downstairs on the beach.
collect 20 Zeth'jir Harpoon##156482 |q 50672/1 |goto 31.00,47.36
step
talk Specialist Wembley##131003
|tip Upstairs inside the fort.
turnin Any Ammo Will Do##50672 |goto 34.58,47.16
turnin Piercing the Shield##50679 |goto 34.58,47.16
turnin Problem Solving with Gunpowder##50698 |goto 34.58,47.16
accept A Snake with Three Heads##50705 |goto 34.58,47.16
accept Clearing the Delta##50706 |goto 34.58,47.16
stickystart "Slay_Zethjir_Forces"
step
Jump down here |goto 32.87,49.40 < 15 |only if walking
use Zeth'jir Channeling Rod##158332
|tip Use it on Binder Ser'less.
kill Binder Ser'less##134809 |q 50705/2 |goto 32.64,53.96
step
use Zeth'jir Channeling Rod##158332
|tip Use it on Lady Rash'iss.
kill Lady Rash'iss##134401 |q 50705/1 |goto 32.14,55.03
step
use Zeth'jir Channeling Rod##158332
|tip Use it on Binder Nalashj.
kill Binder Nalashj##134813 |q 50705/3 |goto 32.68,55.97
step
label "Slay_Zethjir_Forces"
Kill Zeth'jir enemies around this area
Slay #15# Zeth'jir Forces |q 50706/1 |goto 31.32,54.72
step
talk Commander Kellam##131000
|tip On the bridge.
turnin A Snake with Three Heads##50705 |goto 34.11,54.87
turnin Clearing the Delta##50706 |goto 34.11,54.87
accept From the Depths##49831 |goto 34.11,54.87
step
Watch the dialogue
click Cannon+
|tip There will be yellow timers above them that count down to when they are ready to shoot again.
kill Pride of Azshara##131199 |q 49831/1 |goto 33.93,54.77
step
talk Commander Kellam##131000
turnin From the Depths##49831 |goto 34.11,54.87
accept Back to Brennadam##49908 |goto 34.11,54.87
step
Run up the stairs |goto 35.20,50.85 < 15 |only if walking
talk Squire Augustus III##131004
turnin Back to Brennadam##49908 |goto 59.51,69.95
step
talk "Nasty" Buck##138221
|tip He walks around this area inside the building.
home The Golden Flagon |goto 58.58,70.31 |q 49703
step
Cross the bridge |goto 62.75,66.67 < 15 |only if walking
talk Brother Pike##130714
turnin House Stormsong##49703 |goto 63.43,64.76
accept Unnecessary Duress##49705 |goto 63.43,64.76
accept Proclamation Investigation##49706 |goto 63.43,64.76
step
talk Taelia##130715
accept Haywire Harvesters##49704 |goto 63.46,64.94
stickystart "Rejuvenate_Laborers"
stickystart "Collect_Drenched_Mainspring"
step
click Stormsong Proclamation+
|tip They look like paper scrolls nailed to the sides of objects and buildings around this area.
Read #3# Stormsong Proclamations |q 49706/1 |goto 62.23,64.54
step
label "Rejuvenate_Laborers"
use the Imbued Tidewater##155893
|tip Use it next to Exhausted Laborers around this area.
Rejuvenate #8# Laborers |q 49705/1 |goto 62.23,64.54
step
label "Collect_Drenched_Mainspring"
kill Rewired Harvester##130131+
collect Drenched Mainspring##155829 |q 49704/1 |goto 62.23,64.54
step
Follow the path up |goto 62.58,63.90 < 20 |only if walking
talk Brother Pike##130714
turnin Unnecessary Duress##49705 |goto 63.43,64.76
turnin Proclamation Investigation##49706 |goto 63.43,64.76
step
talk Taelia##130715
turnin Haywire Harvesters##49704 |goto 63.46,64.94
accept The Rising Tide##49794 |goto 63.46,64.94
step
talk Brother Pike##130714
accept Lost, Not Forgotten##49791 |goto 63.42,64.76
accept Means to an End##49793 |goto 63.42,64.76
step
talk Samuel Williams##130904
accept Forced Labor##49887 |goto 64.60,62.11
step
clicknpc Anchor of Binding##131124
Free Samuel Williams |q 49887/1 |goto 64.70,62.09
step
Watch the dialogue
talk Samuel Williams##130904
turnin Forced Labor##49887 |goto 64.60,62.11
accept Bound and Oppressed##49792 |goto 64.60,62.11
stickystart "Destroy_Anchors_Of_Binding"
stickystart "Recover_Souls"
step
Run up the stairs |goto 65.17,60.93 < 10 |only if walking
kill Sister Ava##130952 |q 49794/1 |goto 65.56,60.74
|tip On the deck of the ship.
step
click Wavecaller's Mantle
Recover the Wavecaller's Mantle |q 49793/3 |goto 66.87,60.61
step
click Abyssal Beacon
Recover the Abyssal Beacon |q 49793/2 |goto 64.75,57.89
step
click Tidal Kris
Recover the Tidal Kris |q 49793/1 |goto 63.25,59.54
step
label "Destroy_Anchors_Of_Binding"
clicknpc Anchor of Binding##130895+
|tip They look like large metal vases with water bubbling out of the top of them on the ground around this area.
Destroy #8# Anchors of Binding |q 49792/1 |goto 65.80,59.26
step
label "Recover_Souls"
Kill enemies around this area
use the Dead Ringer##155919
|tip Use it next to their corpses.
|tip It will only work on human enemies.
Recover #12# Souls |q 49791/1 |goto 65.80,59.26
step
_Next to you:_
talk Brother Pike
turnin Lost, Not Forgotten##49791
turnin Means to an End##49793
step
talk Taelia##131249
turnin The Rising Tide##49794 |goto 66.49,56.51
step
talk Samuel Williams##131248
turnin Bound and Oppressed##49792 |goto 66.49,56.44
step
talk Brother Pike##130714
accept Rest in the Depths##49975 |goto 66.34,56.51
step
use the Dead Ringer##157859
Watch the dialogue
Release the Souls |q 49975/1 |goto 66.34,56.51
step
talk Brother Pike##130714
turnin Rest in the Depths##49975 |goto 66.34,56.51
step
talk Taelia##131249
accept Rearmament##49996 |goto 66.50,56.52
step
talk Samuel Williams##131248
accept Fabricated Fabrications##49995 |goto 66.49,56.44
step
Run up the stairs |goto 66.80,55.78 < 10 |only if walking
click Charred Note
accept The Missing Link##50139 |goto 68.70,54.40
stickystart "Collect_Stormfused_Weapons"
stickystart "Collect_Warship_Blueprints"
step
kill Tideguard Pontus##132163
collect Architect's Cipher##156629 |q 50139/1 |goto 70.16,49.92
step
label "Collect_Stormfused_Weapons"
click Tidal Blade+
|tip They look like swords laying on objects and on the ground around this area.
click Harpoons+
|tip They look like groups of spears leaning on wooden racks on the ground around this area.
click Abyssal Spear+
|tip They look like pointed poles leaning on objects on the ground around this area.
click Thundershot Rifle+
|tip They look like wooden and metal rifles sitting on objects on the ground around this area.
collect 12 Stormfused Weapon##156609 |q 49996/1 |goto 69.75,51.08
step
label "Collect_Warship_Blueprints"
Kill enemies around this area
collect 8 Warship Blueprint##156607 |q 49995/1 |goto 69.75,51.08
step
Follow the path |goto 69.13,53.17 < 20 |only if walking
talk Samuel Williams##131248
turnin Fabricated Fabrications##49995 |goto 66.49,56.44
turnin The Missing Link##50139 |goto 66.49,56.44
step
talk Taelia##131249
turnin Rearmament##49996 |goto 66.49,56.51
step
talk Brother Pike##130714
accept Storm's Judgment##49997 |goto 66.34,56.51
step
talk Brother Pike##132173
Tell him _"I am ready."_
Speak to Brother Pike |q 49997/1 |goto 69.28,58.71
step
Watch the dialogue
Kill the enemies that attack in waves
kill Riptide##132171
Confront Wavespeaker Reid |q 49997/2 |goto 70.19,57.90
step
talk Brother Pike##130714
turnin Storm's Judgment##49997 |goto 66.31,56.48
accept Voices Below##49998 |goto 66.31,56.48
step
Run up the stairs |goto 66.83,55.77 < 10 |only if walking
Follow the road |goto 67.82,55.76 < 20 |only if walking
Cross the bridge |goto 67.11,52.38 < 20 |only if walking
talk Brother Pike##134642
Ask him _"What is it?"_
Watch the dialogue
Investigate the Omen |q 49998/1 |goto 66.42,50.65
step
talk Sister Alison##142634
home Tidecross |goto 65.47,48.30 |q 49998
step
talk Marla Featherfoot##134696
fpath Tidecross |goto 65.57,48.00
step
talk Brother Pike##134639
turnin Voices Below##49998 |goto 66.17,47.45
accept Beneath the Veil##50594 |goto 66.17,47.45
step
talk Taelia##134623
accept No Quarter##50595 |goto 66.31,47.09
stickystart "Accept_A_Bloody_Mess"
stickystart "Slay_Skeletons"
stickystart "Kill_Tidesage_Seacallers"
step
use the Abyssal Beacon##158211
|tip Use it on the Writhing Grasp.
Dispel the Southern Grasp |q 50594/1 |goto 67.43,44.36
step
label "Accept_A_Bloody_Mess"
Kill enemies around this area
accept A Bloody Mess##50593 |goto 67.00,44.83
|tip You will eventually automatically accept this quest after looting.
stickystart "Collect_Tideblood"
step
Run up the stairs |goto 65.96,44.63 < 10 |only if walking
use the Abyssal Beacon##158211
|tip Use it on the Writhing Grasp.
Dispel the Western Grasp |q 50594/2 |goto 66.00,41.80
step
use the Abyssal Beacon##158211
|tip Use it on the Writhing Grasp.
Dispel the Eastern Grasp |q 50594/3 |goto 67.66,42.32
step
label "Collect_Tideblood"
kill Frothing Tideblood##130116+
click Sealed Tideblood+
|tip They look like wooden barrels on the ground around this area.
collect 20 Tideblood |q 50593/1 |goto 66.91,42.06
step
label "Slay_Skeletons"
Kill enemies around this area
|tip Only enemies that look like skeletons will count for this quest goal.
Slay #8# Skeletons |q 50595/1 |goto 66.91,42.06
step
label "Kill_Tidesage_Seacallers"
kill 4 Tidesage Seacaller##130094 |q 50595/2 |goto 66.91,42.06
step
Cross the bridge |goto 66.82,46.04 < 20 |only if walking
talk Taelia##134623
turnin No Quarter##50595 |goto 66.31,47.09
step
talk Brother Pike##134639
turnin Beneath the Veil##50594 |goto 66.17,47.45
turnin A Bloody Mess##50593 |goto 66.17,47.45
accept Forbidden Rites##50608 |goto 66.17,47.45
accept Gathering Storm##50610 |goto 66.17,47.45
step
talk Taelia##134623
accept From the Maw of Madness##50609 |goto 66.31,47.10
stickystart "Place_Focusing_Rods"
stickystart "Disrupt_Rituals"
stickystart "Slay_Kthir"
step
Run up the stairs |goto 66.94,44.19 < 10 |only if walking
Find Samuel Williams |q 50609/1 |goto 66.56,43.73
|tip Upstairs inside the ship.
step
Watch the dialogue
kill Brother Halsey##134999 |q 50609/2 |goto 66.51,43.48
|tip Inside the ship.
step
kill Samuel Williams##134983
|tip Inside the ship.
|tip He will eventually surrender.
Save Samuel Williams |q 50609/3 |goto 66.37,43.50
step
label "Place_Focusing_Rods"
click Focusing Rod+
|tip They look like golden swirling shaped statues around this area inside the ship.
Place #4# Focusing Rods |q 50610/1 |goto 67.43,43.53
step
label "Disrupt_Rituals"
use the Tidal Kris##158465
|tip Use it next to Fanatical Acolytes around this area.
|tip They look like humans kneeling on purple flaming runes on the ground around this area on the ship.
Disrupt #6# Rituals |q 50608/2 |goto 67.43,43.53
step
label "Slay_Kthir"
Kill enemies around this area
|tip On the ship.
Slay #15# K'thir |q 50608/1 |goto 67.43,43.53
step
talk Samuel Williams##134641
turnin From the Maw of Madness##50609 |goto 66.02,47.11
step
talk Brother Pike##134639
turnin Forbidden Rites##50608 |goto 66.16,47.45
turnin Gathering Storm##50610 |goto 66.16,47.45
accept Storm's Vengeance##50611 |goto 66.16,47.45
step
Watch the dialogue
Destroy the Abyssal Melody |q 50611/1 |goto 66.17,47.26
|tip Use the "Thundering Blast" ability.
|tip It appears as a button on the screen.
step
talk Brother Pike##134639
turnin Storm's Vengeance##50611 |goto 66.17,47.45
accept A House Divided##50612 |goto 66.17,47.45
step
Follow the path up |goto 64.30,45.83 < 30 |only if walking
talk Brother Pike##135534
turnin A House Divided##50612 |goto 63.16,43.15
accept The Storm Awakens##50777 |goto 63.16,43.15
step
talk Samuel Williams##136053
accept Twisted Intentions##50778 |goto 63.10,43.16
stickystart "Rally_Defectors"
step
Follow the path |goto 61.59,41.23 < 15 |only if walking
talk Tideguard Victoria##135517
accept Oathbound##50780 |goto 60.89,41.38
step
kill Bound Tempest##135457 |q 50778/1 |goto 59.91,41.39
|tip Attack the Drowned Acendants channeling on him to be able to attack him.
step
Run up the stairs |goto 59.65,40.85 < 15 |only if walking
Enter the building |goto 59.82,39.87 < 10 |walk
Leave the building |goto 59.10,39.34 < 10 |walk
click Rod of Tides
Claim the Rod of Tides |q 50780/1 |goto 59.14,38.71
step
Kill the enemies that attack
click Rod of Tides
collect Rod of Tides##159157 |q 50780/2 |goto 59.14,38.71
step
Enter the building |goto 59.09,39.34 < 10 |walk
Leave the building |goto 60.06,39.15 < 10 |walk
kill Enthralled Tidefury##135506 |q 50778/2 |goto 61.76,38.08
|tip Attack the Drowned Hierarchs channeling on him to be able to attack him.
step
label "Rally_Defectors"
click Locked Door+
|tip They look like wooden front doors of buildings around this area.
talk Friendly NPC's around this area
|tip The ones inside buildings will appear on your minimap as yellow dots.
Tell them _"The storm awakens."_
Also tell them _"We can still stop Lord Stormsong."_
Also tell them _"The Storm's Wake grows. Are you with us?"_
Rally #12# Defectors |q 50777/1 |goto 60.72,38.15
step
talk Taelia##136498
turnin The Storm Awakens##50777 |goto 60.03,37.89
turnin Twisted Intentions##50778 |goto 60.03,37.89
accept The Abyssal Council##50783 |goto 60.03,37.89
step
Enter the building |goto 58.71,36.14 < 10 |walk
kill Wavespeaker Reid##135985 |q 50783/1 |goto 58.21,35.40
|tip Inside the building.
step
Leave the building |goto 58.71,36.14 < 10 |walk
Run down the stairs |goto 60.03,38.02 < 15 |only if walking
talk Tideguard Victoria##136497
turnin Oathbound##50780 |goto 61.80,36.29
step
talk Taelia##136339
turnin The Abyssal Council##50783 |goto 61.76,36.25
step
talk Tideguard Victoria##136497
accept Eye of the Storm##50784 |goto 61.80,36.29
step
talk Tideguard Victoria##136497
Tell her _"I am ready."_
Watch the dialogue
Begin Following Tideguard Victoria |goto 61.80,36.29 > 10 |c |q 50784
step
Watch the dialogue
|tip Follow Tideguard Victoria as she walks.
Kill the enemies that attack
Escort Tideguard Victoria |q 50784/1 |goto 67.41,35.25
step
click Whirling Torrent
Take the Whirling Torrent |q 50784/2 |goto 67.86,35.38
step
Fly to the Path of Storms |goto 69.57,35.82 < 7 |c |q 50784 |notravel
step
talk Brother Pike##136933
turnin Eye of the Storm##50784 |goto 69.90,36.12
accept A Bridge Too Far##50781 |goto 69.90,36.12
step
Watch the dialogue
|tip Use the "Rod of Tides" ability.
|tip It appears as a button on the screen.
Open the Path of Storms |q 50781/1 |goto 70.17,36.08
step
talk Brother Pike##136933
turnin A Bridge Too Far##50781 |goto 70.32,36.14
accept Lost and Forgotten##51278 |goto 70.32,36.14
accept Sealed Fate##51320 |goto 70.32,36.14
stickystart "Fill_The_Dead_Ringer"
step
Follow the road up |goto 74.27,38.21 < 20 |only if walking
click Tidemother's Wrath
Destroy the Tidemother's Wrath |q 51320/1 |goto 74.87,35.97
step
Cross the bridge |goto 74.18,34.37 < 15 |only if walking
Run down the stairs |goto 72.36,31.97 < 15 |only if walking
click Tidemother's Radiance
Destroy the Tidemother's Radiance |q 51320/2 |goto 71.56,30.28
step
Run up the stairs |goto 72.01,29.80 < 15 |only if walking
click Tidemother's Pride
Destroy the Tidemother's Pride |q 51320/3 |goto 73.41,30.19
step
_Next to you:_
talk Brother Pike
turnin Sealed Fate##51320
step
label "Fill_The_Dead_Ringer"
Kill enemies around this area
Fill the Dead Ringer |q 51278/1 |goto 72.93,31.11
step
_Next to you:_
talk Brother Pike
turnin Lost and Forgotten##51278
accept The Final Ascent##51319
step
Run up the stairs |goto 73.71,31.00 < 15 |only if walking
use the Dead Ringer##160056
Watch the dialogue
Open the Tempest Gate |q 51319/1 |goto 74.20,30.69
step
Enter the building |goto 74.59,30.44 < 10 |walk
Leave the building |goto 74.43,28.32 < 10 |walk
Follow the path up |goto 73.64,25.28 < 20 |only if walking
talk Brother Pike##137506
turnin The Final Ascent##51319 |goto 75.61,27.05
accept Storm's End##50824 |goto 75.61,27.05
step
Watch the dialogue
kill Azshj'thul the Drowned##137197 |q 50824/1 |goto 76.62,29.38
step
Follow the path up |goto 77.99,27.70 < 15 |only if walking
talk Brother Pike##137691
turnin Storm's End##50824 |goto 78.33,28.77
step
talk Galeheart##137693
fpath Shrine of the Storm |goto 78.32,29.00
step
_Congratulations!_
You completed the Stormsong Valley storyline.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Tiragarde Sound Loremaster (Story Quest Only)",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the following Tiragarde Sound storylines:\n\nA Nation Divided\nCastaways and Cutouts\nDefenders of Daelin's Gate\nThe Norwington Estate\nThe Ashvane Trading Company\nFreehold\nThe Shadow Over Anglepoint",
condition_suggested=function() return level >= 50 and not achieved(12473) and completedq(47189) end,
condition_end=function() return achieved(12473) end,
startlevel=50,
endlevel=50,
image=ZGV.IMAGESDIR.."TiragardeSound",
},[[
step
click Scouting Map
|tip Inside the building.
accept Tiragarde Sound##47960 |goto Boralus/0 68.38,22.06
step
talk Taelia##121235
|tip Inside the building.
turnin Tiragarde Sound##47960 |goto Boralus/0 68.17,21.97
step
talk Flynn Fairwind##121239
|tip Inside the building.
accept The Smoking Gun##47181 |goto Boralus/0 67.59,22.22
step
Use Flynn's Pistol
|tip It appears as a button on the screen.
|tip Inside the building.
Shoot the Water Barrel |q 47181/1 |goto 67.59,22.22
step
talk Flynn Fairwind##121239
|tip Inside the building.
turnin The Smoking Gun##47181 |goto 67.59,22.22
step
talk Cyrus Crestfall##122370
|tip Inside the building.
accept The Ashvane Trading Company##47485 |goto 68.01,21.89
step
Leave the building |goto 68.78,21.11 < 10 |walk
Run up the stairs |goto 71.47,17.70 < 10 |only if walking
Run down the stairs |goto 67.35,16.15 < 20 |only if walking
Cross the bridge |goto 52.61,18.81 < 20 |only if walking
talk Mariah McKee##133210
fpath Hatherford |goto Tiragarde Sound/0 66.93,23.07
step
click Formal Invitation
accept The Norwington Festival##48070 |goto 67.14,24.80
step
Cross the bridge |goto 66.33,24.90 < 15 |only if walking
Follow the road |goto 61.95,29.88 < 30 |only if walking
Continue following the road |goto 57.09,27.82 < 30 |only if walking
talk Abbey Watkins##125309
turnin The Norwington Festival##48070 |goto 55.45,24.67
accept The Stoat Hunt##48077 |goto 55.45,24.67
step
talk Harold Beckett##125398
accept An Element of Danger##48080 |goto 55.51,24.59
accept Bolas and Birds##48616 |goto 55.51,24.59
stickystart "Shoot_Down_Hollowbeak_Falcons"
stickystart "Collect_Rugged_Boar_Tusks"
step
clicknpc Stoat Den##127016+
|tip They look like brown low piles of dirt on the ground around this area.
kill Faintstep Stoat##125327+
|tip They appear on the ground.
collect 5 Soft Stoat Pelt##152642 |q 48077/1 |goto 57.99,25.19
step
label "Shoot_Down_Hollowbeak_Falcons"
use the Bola Launcher##152643
|tip Use it on Hollowbeak Falcons around this area.
|tip They look like brown birds flying in the air around this area.
Shoot Down #6# Hollowbeak Falcons |q 48616/1 |goto 57.99,25.19
step
label "Collect_Rugged_Boar_Tusks"
kill Mudbrush Boar##125347+
collect 8 Rugged Boar Tusk##151913 |q 48080/1 |goto 57.99,25.19
step
talk Harold Beckett##125398
turnin An Element of Danger##48080 |goto 55.52,24.59
turnin Bolas and Birds##48616 |goto 55.52,24.59
step
talk Abbey Watkins##125309
turnin The Stoat Hunt##48077 |goto 55.45,24.67
step
talk Melissa Kenny##127006
accept Runaway Rider##48670 |goto 55.59,24.60
step
Follow the path up |goto 53.99,21.09 < 20 |only if walking
talk Melissa Kenny##127144
turnin Runaway Rider##48670 |goto 54.48,19.39
accept Following Eddie's Trail##48196 |goto 54.48,19.39
accept Troublesome Troglodytes##48195 |goto 54.48,19.39
stickystart "Kill_Grimestone_Throwers"
stickystart "Kill_Grimestone_Bullies"
step
talk Trapped Saurolisk##126804
accept Saurolisk Escape##48597 |goto 55.95,17.51
stickystart "Free_Trapped_Saurolisks"
step
clicknpc Hotshot##127149
Find Hotshot |q 48196/1 |goto 56.09,17.96
step
click Recipe Rock
accept Stone Soup##48778 |goto 56.16,17.96
step
click Bag of Horse Treats
Find the Bag of Horse Treats |q 48196/2 |goto 56.21,16.14
step
Enter the cave |goto 55.99,15.37 < 10 |walk
kill Boneface the Giant##125475
|tip Inside the cave.
collect Boneface's "Key"##152109 |q 48196/3 |goto 55.68,14.30
step
click Trogg Cage
|tip Inside the cave.
Free Eddie Norwington |q 48196/4 |goto 55.60,14.57
step
talk Eddie Norwington##127091
|tip Inside the cave.
turnin Following Eddie's Trail##48196 |goto 55.60,14.57
step
label "Free_Trapped_Saurolisks"
Leave the cave |goto 55.99,15.35 < 10 |walk
click Post##278813+
|tip They look like wooden poles with rope tied to big lizard looking creatures next to them on the ground around this area.
Free #6# Trapped Saurolisks |q 48597/1 |goto 56.17,15.83
step
label "Kill_Grimestone_Throwers"
kill 3 Grimestone Thrower##125469 |q 48195/2 |goto 56.17,15.83
step
label "Kill_Grimestone_Bullies"
kill 8 Grimestone Bully##125467 |q 48195/1 |goto 56.17,15.83
step
Follow the path |goto 55.14,19.05 < 20 |only if walking
talk Melissa Kenny##127144
turnin Troublesome Troglodytes##48195 |goto 54.47,19.39
turnin Saurolisk Escape##48597 |goto 54.47,19.39
accept The Lord's Behest##48003 |goto 54.47,19.39
step
Follow the path up |goto 53.25,26.19 < 20 |only if walking
Follow the path |goto 52.75,27.19 < 20 |only if walking
talk Lord Aldrius Norwington##124802
turnin The Lord's Behest##48003 |goto 51.57,27.27
accept Be Our Guest##48005 |goto 51.57,27.27
step
talk Dolan Northfield##125035
Visit the Stables |q 48005/1 |goto 51.45,26.10
step
talk Arthur Seville##126600
Visit the Catering |q 48005/2 |goto 49.74,25.22
step
Follow the road up |goto 51.22,29.43 < 15 |only if walking
talk Hestia Strongbolt##134685
fpath Norwington Estate |goto 52.91,28.80
step
click HELP WANTED
accept Anglepoint Wharf##48347 |goto 53.11,28.38
step
talk Terry Rigglesmith##136459
|tip Inside the building.
Visit the Inn |q 48005/4 |goto 53.31,28.29
step
talk Terry Rigglesmith##136459
|tip Inside the building.
home Norwington Estate |goto 53.31,28.29 |q 49393 |future
step
talk George Mitchell##123648
|tip He walks around this area.
Visit the Smithy |q 48005/3 |goto 53.48,28.75
step
talk Lord Aldrius Norwington##124802
turnin Be Our Guest##48005 |goto 51.57,27.27
accept Beginner Equitation##48004 |goto 51.57,27.27
step
clicknpc Cooper##127718
Mount Cooper |q 48004/1 |goto 51.65,26.20
step
Jab #6# Gnoll Targets |q 48004/2 |goto 51.11,26.76
|tip Use the "Harpoon Jab" ability on your action bar on Targets around this area.
|tip They look like yellow puppets in wooden barrels on the ground around this area.
step
Shoot Down #2# Paper Zeppelins |q 48004/3 |goto 51.11,26.76
|tip Use the "Bolas" ability on your action bar on Paper Zeppelins around this area.
|tip They look like small grey blimps flying in the air around this area.
step
Jump #8# Fences |q 48004/4 |goto 51.11,26.76
|tip Jump over the fences around this area.
|tip They look like brown wooden fences on the ground around this area.
step
Stop Riding Cooper |outvehicle |q 48004
|tip Click the yellow arrow on your action bar.
step
talk Lord Aldrius Norwington##124802
turnin Beginner Equitation##48004 |goto 51.57,27.27
accept Show Me What You've Got##48939 |goto 51.57,27.27
step
clicknpc Cooper##127718
Mount Cooper |q 48939/1 |goto 51.65,26.20
step
Score 150 Points |q 48939/2 |goto 51.01,26.43
|tip Jump over fences to keep the stacks of Style as high as possible.
|tip Use the "Harpoon Jab" ability on your action bar while facing Targets around this area.
|tip They look like a yellow puppets in wooden barrels on the ground around this area.
|tip You will hear "Zeppelin out!" yelled nearby, then a Paper Zeppelin will appear, flying overhead.
|tip Use the "Bolas" ability on your action bar on the Paper Zeppelins.
|tip They look like small blimps flying in the air around this area.
|tip The zeppelins count for a lot of points, so don't miss any.
step
Stop Riding Cooper |outvehicle |q 48939
|tip Click the yellow arrow on your action bar.
step
talk Lord Aldrius Norwington##124802
turnin Show Me What You've Got##48939 |goto 51.57,27.27
accept Equine Retrieval##48087 |goto 51.57,27.27
step
Follow the road up |goto 51.22,29.43 < 15 |only if walking
Follow the path up |goto 52.60,28.83 < 15 |only if walking
clicknpc Rose##127534
Mount Rose |q 48087/1 |goto 53.16,30.70
step
Bring Rose to Lord Norwington |q 48087/2 |goto 52.53,28.50
step
talk Lord Aldrius Norwington##127559
turnin Equine Retrieval##48087 |goto 52.53,28.50
accept No Party Like a Trogg Party##48088 |goto 52.53,28.50
step
talk Gora Layton##125042
accept Mountain Sounds##48089 |goto 52.49,28.55
step
clicknpc Cooper##127718
Ride Cooper |invehicle |goto 52.53,28.61 |q 48088
stickystart "Slay_Grimestone_Intruders"
step
Rally #8# Kul Tirans |q 48089/1 |goto 51.67,27.78
|tip Use the "Battlehorn of the Mountain" ability on your action bar near neutral (yellow) NPCs around this area.
step
label "Slay_Grimestone_Intruders"
Kill Grimestone enemies around this area
|tip Use the "Harpoon Jab" ability on your action bar near them while facing them.
Slay #20# Grimestone Intruders |q 48088/1 |goto 51.67,27.78
step
Follow the road up |goto 51.22,29.43 < 15 |only if walking
Return to Gora Layton |goto 52.49,28.55 < 15 |q 48088
step
Stop Riding Cooper |outvehicle |q 48088
|tip Click the yellow arrow on your action bar.
step
talk Gora Layton##125042
turnin Mountain Sounds##48089 |goto 52.48,28.55
step
talk Lord Aldrius Norwington##127559
turnin No Party Like a Trogg Party##48088 |goto 52.54,28.49
step
Cross the bridge |goto 49.97,29.14 < 20 |only if walking
Follow the path up |goto 45.95,28.25 < 20 |only if walking
Continue up the path |goto 43.59,23.71 < 20 |only if walking
talk Dagin##129163
fpath Roughneck Camp |goto 42.48,23.01
step
Follow the path down |goto 43.81,24.21 < 20 |only if walking
Follow the path down |goto 44.52,25.77 < 15 |only if walking
talk Brother Therold##125922
turnin Anglepoint Wharf##48347 |goto 42.28,29.31
accept Aiding the Wharf##48540 |goto 42.28,29.31
step
click Jar of Blubber
collect Seal Blubber##152585 |q 48540/3 |goto 41.79,30.04
step
talk Hera Copeland##126675
Ask her _"Do you have any seaweed? Therold needs it for an antidote."_
Obtain a Satchel of Seaweed |q 48540/1 |goto 41.93,30.26
step
click Bundle of Vellum
collect Bundle of Vellum##152586 |q 48540/2 |goto 43.23,29.67
step
talk Brother Therold##125922
turnin Aiding the Wharf##48540 |goto 42.28,29.31
accept A Cure from the Sea##48352 |goto 42.28,29.31
accept Sharks in the Water##49268 |goto 42.28,29.31
step
talk Okri Putterwrench##128680
accept Stinging Barbs##48348 |goto 42.19,29.32
stickystart "Collect_Intact_Venemous_Barbs"
stickystart "Kill_Invading_Dreadmaws"
step
click Harbor Seaweed##273270+
|tip They look like bushy plants underwater on the ground around this area.
collect 8 Bunch of Seaweed##152401 |q 48352/1 |goto 41.09,29.77
step
label "Collect_Intact_Venemous_Barbs"
kill Barbtail Stingray##128676+
|tip Underwater around this area.
collect 4 Intact Venomous Barb##153486 |q 48348/1 |goto 41.09,29.77
step
label "Kill_Invading_Dreadmaws"
kill 6 Invading Dreadmaw##126006 |q 49268/1 |goto 41.09,29.77
|tip Underwater around this area.
step
talk Okri Putterwrench##128680
|tip On the docks.
turnin Stinging Barbs##48348 |goto 42.19,29.32
step
talk Brother Therold##125922
turnin A Cure from the Sea##48352 |goto 42.28,29.31
turnin Sharks in the Water##49268 |goto 42.28,29.31
accept Algae Shakes##49292 |goto 42.28,29.31
accept Pulse of the Wharf##48353 |goto 42.28,29.31
stickystart "Treat_Nauseated_Villagers"
step
talk Ginger Freelin##125947
|tip Inside the building.
Ask her _"Noticed anything strange?"_
Check Ginger Freelin |q 48353/2 |goto 42.24,27.43
step
talk Julian Nichols##125950
Ask him _"Have you noticed anything out of the ordinary?"_
Check Julian Nichols |q 48353/1 |goto 42.30,26.62
step
talk Aaron Gutier##125945
Ask him _"Have you been receiving your shipments?"_
Watch the dialogue
kill Aaron Gutier##125945
Check Aaron Gutier |q 48353/3 |goto 41.68,26.98
step
label "Treat_Nauseated_Villagers"
clicknpc Nauseated Villager##128941+
|tip They look like humans kneeling on the ground around this area.
Treat #6# Nauseated Villagers |q 49292/1 |goto 42.00,27.03
step
talk Brother Therold##125922
turnin Algae Shakes##49292 |goto 41.29,27.00
turnin Pulse of the Wharf##48353 |goto 41.29,27.00
accept Evacuate the Premises##48355 |goto 41.29,27.00
accept Tainted Shipments##48354 |goto 41.29,27.00
stickystart "Evacuate_Anglepoint_Firepackers"
step
clicknpc Barrel of Fish##126060+
|tip They look like wooden barrels on the ground around this area.
Check #5# Barrels of Fish |q 48354/1 |goto 40.28,26.69
step
label "Evacuate_Anglepoint_Firepackers"
Evacuate #8# Anglepoint Fishpackers |q 48355/1 |goto 40.28,26.69
|tip Use the "Evacuate!" ability near Anglepoint Firepackers around this area.
|tip It appears as a button on the screen.
step
talk Brother Therold##125922
turnin Evacuate the Premises##48355 |goto 39.50,26.68
turnin Tainted Shipments##48354 |goto 39.50,26.68
accept Possessive Headgear##48356 |goto 39.50,26.68
step
talk Keegan Alby##126308
accept The Young Lord Stormsong##48365 |goto 39.52,26.75
accept Betrayal of the Guard##48009 |goto 39.52,26.75
stickystart "Slay_Parasitic_Mindstealers"
stickystart "Kill_Mind_Addled_Enforcers"
step
Follow the path |goto 38.35,28.23 < 15 |only if walking
Run up the stairs |goto 38.70,30.38 < 10 |only if walking
Run up the stairs |goto 38.69,31.32 < 10 |only if walking
Enter the building |goto 39.36,31.49 < 10 |walk
kill Brother Conway##125961 |q 48365/1 |goto 39.49,31.68
|tip Inside the building.
step
label "Slay_Parasitic_Mindstealers"
kill Possessed Dockworker##125957+
kill 10 Parasitic Mindstealer##125959 |q 48356/1 |goto 38.69,30.15
|tip They appear after you kill the Possessed Dockworkers.
step
label "Kill_Mind_Addled_Enforcers"
kill 10 Mind-addled Enforcer##126170 |q 48009/1 |goto 38.69,30.15
step
Follow the path |goto 38.36,28.19 < 15 |only if walking
talk Brother Therold##125922
turnin Possessive Headgear##48356 |goto 39.50,26.68
step
talk Keegan Alby##126308
turnin The Young Lord Stormsong##48365 |goto 39.52,26.75
turnin Betrayal of the Guard##48009 |goto 39.52,26.75
step
talk Brannon Stormsong##126298
accept Paddle to Safety##48366 |goto 39.54,26.69
step
clicknpc Escape Rowboat##126437
Use the Rowboat |q 48366/1 |goto 39.61,26.95
step
Watch the dialogue
Travel to Outrigger Point |goto 35.15,25.06 < 10 |c |q 48366 |notravel
step
talk Gregory Mussler##134749
fpath Outrigger Post |goto 35.55,24.90
step
talk Tom Fishbury##136465
home Outrigger Post |goto 35.33,24.22 |q 49302 |future
step
talk Brannon Stormsong##126298
turnin Paddle to Safety##48366 |goto 35.20,24.19
accept Eldritch Invocations##48372 |goto 35.20,24.19
step
talk Keegan Alby##126308
accept Death in the Depths##48370 |goto 35.25,24.17
step
talk Brother Therold##125922
accept Deep Sea Defilement##48368 |goto 35.24,24.27
step
talk Rosaline Madison##128679
accept Those Aren't Fish Eggs##48367 |goto 34.95,24.21
stickystart "Destroy_Corrupted_Eggs"
stickystart "Slay_Deepwarden_Followers"
step
Enter the underwater cave |goto 33.95,25.47 < 15 |walk
click Corrupting Pylon
|tip Inside the underwater cave.
Destroy the Eastern Corrupting Pylon |q 48368/2 |goto 35.37,24.33
step
Leave the underwater cave |goto 33.85,25.54 < 15 |walk
Enter the underwater cave |goto 31.30,29.25 < 15 |walk
click Corrupting Pylon
|tip Inside the underwater cave.
Destroy the Southern Corrupting Pylon |q 48368/1 |goto 30.37,31.15
step
Leave the underwater cave |goto 31.36,29.06 < 15 |walk
Enter the underwater cave |goto 30.83,21.54 < 15 |walk
kill Director Deepwarden##126184 |q 48372/1 |goto 30.02,19.42
|tip Inside the underwater cave.
step
click Corrupting Pylon
|tip Inside the underwater cave.
Destroy the Western Corrupting Pylon |q 48368/3 |goto 29.99,19.37
step
Leave the underwater cave |goto 30.83,21.54 < 15 |c |q 48367
step
label "Destroy_Corrupted_Eggs"
kill Corrupted Egg##126285+
|tip They look like large purple eggs on the ground underwater around this area.
Destroy #30# Corrupted Eggs |q 48367/1 |goto 32.48,22.69
step
label "Slay_Deepwarden_Followers"
Kill enemies around this area
|tip Only Merciless Aberrations, K'thir Harbingers, and Willing Cultists will count for this quest goal.
|tip Underwater around this area.
Slay #8# Deepwarden Followers |q 48370/1 |goto 32.48,22.69
step
talk Brother Therold##125922
turnin Deep Sea Defilement##48368 |goto 35.24,24.26
step
talk Brannon Stormsong##126298
turnin Eldritch Invocations##48372 |goto 35.20,24.19
turnin Death in the Depths##48370 |goto 35.20,24.19
step
talk Rosaline Madison##128679
turnin Those Aren't Fish Eggs##48367 |goto 34.95,24.21
step
Watch the dialogue
talk Rosaline Madison##128679
accept The Deadliest Catch##49302 |goto 34.95,24.21
step
talk Okri Putterwrench##128680
Tell him _"Let's fly!"_
Speak to Okri for a Ride |q 49302/1 |goto 35.29,24.57
step
Watch the dialogue
Fly to Anglepoint Bay |goto 36.34,29.93 < 10 |c |q 49302 |notravel
step
clicknpc Outrigger Cannon##129494
Mount an Outrigger Cannon |q 49302/2 |goto 36.31,29.81
step
Shoot Down #10# Erupting Darkness |q 49302/3 |goto 36.30,29.84
|tip They look like big purple orbs flying towards you.
|tip Use the ability on your action bar.
step
talk Outrigger Engineer##143896
Tell him _"Fire!"_
Watch the dialogue
Repel Viq'Goth |q 49302/4 |goto 36.37,29.45
step
clicknpc Outrigger Gryphon##129580
Ride the Outrigger Gryphon to Town |q 49302/5 |goto 36.77,29.72
step
Watch the dialogue
Return to Anglepoint Wharf |goto 42.52,29.51 < 10 |c |q 49302 |notravel
step
talk Brannon Stormsong##126298
turnin The Deadliest Catch##49302 |goto 42.46,29.35
step
talk Will Melborne##135064
Take the Ferry to Eastpoint Station |q 47485/1 |goto Boralus/0 74.17,24.79
step
Follow the path up |goto Tiragarde Sound/0 75.07,43.67 < 20 |only if walking
talk Cagney##122671
turnin The Ashvane Trading Company##47485 |goto Tiragarde Sound/0 76.84,43.43
accept Suspicious Shipments##47486 |goto Tiragarde Sound/0 76.84,43.43
accept Labor Dispute##47487 |goto Tiragarde Sound/0 76.84,43.43
step
talk Olive##122672
accept Small Haulers##47488 |goto 76.82,43.49
stickystart "Free_Urchin_Workers"
stickystart "Inspect_Marked_Goods"
stickystart "Slay_Ashvane_Company_Guards"
step
Cross the bridge |goto 78.04,44.64 < 15 |only if walking
click Posted Notice
accept Message from the Management##50573 |goto 79.02,45.77
step
Follow the path |goto 79.60,46.20 < 20 |only if walking
Enter the building |goto 79.19,47.02 < 10 |walk
kill Taskmaster Williams##123264
|tip He walks around this area inside the building.
collect Note to Taskmaster Williams##158066 |q 50573/2 |goto 79.11,46.92
step
Run up the stairs |goto 80.37,49.02 < 10 |only if walking
kill Forgemaster Farthing##134328
|tip He walks around this area.
collect Note to Forgemaster Farthing##158065 |q 50573/1 |goto 82.18,48.59
step
label "Free_Urchin_Workers"
talk Urchin Worker##122681+
|tip They look like children around this area, sometimes walking and pulling mining carts.
Tell them _"Head down to the water. There is a boat waiting to take you to safety."_
Free #6# Urchin Workers |q 47488/1 |goto 79.91,48.73
step
label "Inspect_Marked_Goods"
click Marked Goods##271616+
|tip They look like rectangle boxes covered in grey cloth, wrapped in rope, with white pieces of paper pinned to them on the ground around this area.
|tip They will appear as yellow dots on your minimap.
Inspect #5# Marked Goods |q 47486/1 |goto 79.91,48.73
step
label "Slay_Ashvane_Company_Guards"
Kill Company enemies around this area
Slay #10# Ashvane Company Guards |q 47487/1 |goto 79.91,48.73
step
talk Flynn Fairwind##121239
turnin Suspicious Shipments##47486 |goto 78.11,47.94
turnin Small Haulers##47488 |goto 78.11,47.94
turnin Message from the Management##50573 |goto 78.11,47.94
step
talk Cagney##122671
turnin Labor Dispute##47487 |goto 78.10,47.84
step
talk Flynn Fairwind##121239
accept Under Their Noses##50531 |goto 78.11,47.95
step
talk Flynn Fairwind##134166
turnin Under Their Noses##50531 |goto 75.84,49.14
accept Sampling the Goods##53041 |goto 75.84,49.14
step
talk Jeb Johnson##134226
fpath Bridgeport |goto 75.79,48.59
step
click Raw Azerite Sample
collect Raw Azerite Sample##163034 |q 53041/2 |goto 74.76,50.13
step
click Chemist's Notes
|tip Inside the building.
Choose _<Take the notes.>_
collect Chemist's Notes##163032 |q 53041/1 |goto 75.17,50.76
step
talk Flynn Fairwind##134166
turnin Sampling the Goods##53041 |goto 75.84,49.14
accept Stow and Go##47489 |goto 75.84,49.14
step
Follow the road |goto 75.59,50.75 < 20 |only if walking
Follow the road |goto 77.06,51.73 < 20 |only if walking
Follow the path up |goto 78.58,55.77 < 20 |only if walking
Cross the bridge |goto 78.89,59.76 < 15 |only if walking
Cross the bridge |goto 77.08,62.66 < 15 |only if walking
Follow the path |goto 76.42,64.20 < 20 |only if walking
talk Finnia Hawkshot##134465
fpath Kennings Lodge |goto 76.67,65.42
step
talk Flynn Fairwind##134166
Tell him _"Let's go."_
Speak with Flynn |q 47489/1 |goto 75.84,49.14
step
Board the Maiden's Virtue |q 47489/2 |goto 75.25,48.33
|tip On the deck of the ship.
step
click Barrel of Fish
|tip On the deck of the ship.
Hide in the Barrel of Fish |q 47489/3 |goto 75.49,48.10
step
Watch the dialogue
Travel to the Wailing Tideway |goto 85.53,85.10 < 10 |noway |c |q 47489
step
talk Beachcomber Bob##128377
|tip He walks around this area.
turnin Stow and Go##47489 |goto 85.74,83.54
accept The Castaways##49218 |goto 85.74,83.54
accept Lured and Allured##48419 |goto 85.74,83.54
step
Follow the path up |goto 85.36,82.39 < 15 |only if walking
talk Stabby Jane##128229
turnin The Castaways##49218 |goto 85.47,80.82
accept My Favorite Things##49178 |goto 85.47,80.82
accept Silencing the Sisters##49226 |goto 85.47,80.82
step
talk Stabby Jane##128229
Choose _<Ask if she has seen Flynn.>_
Ask Stabby Jane About Flynn |q 48419/1 |goto 85.47,80.82
step
talk Hungry Sam##128228
accept Local Flavor##49230 |goto 85.47,80.72
step
talk Hungry Sam##128228
Ask him _"What's your favorite thing you lost in the wreck?"_
Speak with Hungry Sam |q 49178/1 |goto 85.47,80.72
step
talk Friendly Pete##128233
Ask him _"What's your favorite thing you lost in the wreck?"_
Speak with Friendly Pete |q 49178/2 |goto 85.26,80.32
step
talk Friendly Pete##128233
home Castaway Point |goto 85.26,80.32 |q 49398 |future
step
Cross the bridge |goto 85.75,80.74 < 15 |only if walking
talk Handy Bill##128227
Ask him _"What's your favorite thing you lost in the wreck?"_
Speak with Handy Bill |q 49178/3 |goto 86.44,81.30
step
talk Skinny Tim##128224
fpath Castaway Point |goto 86.42,80.81 |q 48421 |future
step
talk Captain Keelson##136966
accept Blood in the Tides##48421 |goto 86.36,79.74
stickystart "Collect_Juicy_Lurker_Tails"
stickystart "Kill_Wailing_Sirens"
step
click Silver Compass
collect Silver Compass##153186 |q 49178/5 |goto 88.26,78.15
step
click Tin Robot
collect Tin Robot##153187 |q 49178/6 |goto 87.69,75.12
step
click Glimmering Seaweed
accept Glimmering Locket##49181 |goto 87.97,75.01
step
Search the Wailing Tideway for Flynn |q 48419/2 |goto 90.04,74.46
step
kill Lugeia##126157 |q 48419/3 |goto 90.13,74.38
step
click Steel Lunchbox
collect Steel Lunchbox##153185 |q 49178/4 |goto 88.28,72.92
step
Enter the cave |goto 87.03,72.56 < 15 |walk
kill Nolpe##128408 |q 49226/2 |goto 86.44,72.93
kill Patheope##128407 |q 49226/1 |goto 86.48,72.55
|tip Inside the cave.
step
Leave the cave |goto 87.03,72.56 < 15 |c |q 49230
step
label "Collect_Juicy_Lurker_Tails"
kill Tide Lurker##126237+
collect 5 Juicy Lurker Tail##153348 |q 49230/1 |goto 88.03,75.07
step
label "Kill_Wailing_Sirens"
kill 8 Wailing Siren##126440 |q 48421/1 |goto 88.03,75.07
step
talk Captain Keelson##125342
turnin Blood in the Tides##48421 |goto 85.72,76.63
step
Follow the path up |goto 85.21,77.45 < 15 |only if walking
talk Hungry Sam##128228
turnin Local Flavor##49230 |goto 85.47,80.72
step
talk Stabby Jane##128229
turnin My Favorite Things##49178 |goto 85.46,80.82
turnin Silencing the Sisters##49226 |goto 85.46,80.82
turnin Glimmering Locket##49181 |goto 85.46,80.82
step
talk Flynn Fairwind##126158
turnin Lured and Allured##48419 |goto 84.90,76.06
accept Lovesick and Lost##48505 |goto 84.90,76.06
step
talk Flynn Fairwind##126158
Choose _<Help him up.>_
Watch the dialogue
Begin Following Flynn Fairwind |goto 84.90,76.06 > 10 |c |q 48505
stickystart "Escort_Flynn_To_Freehold"
step
talk Skinner MacGuff##126511
|tip Do this while following Flynn Fairwind, don't lose track of him.
|tip He will wait on you while you fight.
accept Toxic Community##48516 |goto 82.72,72.75
step
Kill enemies around this area
|tip Make sure to kill the Marrowfly critters also.
|tip Do this while following Flynn Fairwind, don't lose track of him.
|tip He will wait on you while you fight.
collect 50 Toxic Stinger##152514 |q 48516/1 |goto 82.63,73.10
step
talk Skinner MacGuff##126511
|tip Do this while following Flynn Fairwind, don't lose track of him.
|tip He will wait on you while you fight.
turnin Toxic Community##48516 |goto 82.72,72.75
step
label "Escort_Flynn_To_Freehold"
Watch the dialogue
|tip Follow Flynn Fairwind as he walks.
|tip Walk close to him to make him start walking again, if he stops.
Escort Flynn to Freehold |q 48505/1 |goto 80.72,74.85
step
Watch the dialogue
talk Flynn Fairwind##126620
turnin Lovesick and Lost##48505 |goto 80.20,75.26
accept Freehold##48539 |goto 80.20,75.26
step
click Flynn's Spyglass
Use Flynn's Spyglass |q 48539/1 |goto 80.17,75.30
step
Watch the dialogue
talk Flynn Fairwind##126620
turnin Freehold##48539 |goto 80.20,75.25
accept Papers, Please##48773 |goto 80.20,75.25
accept The Irontide Crew##48558 |goto 80.20,75.25
stickystart "Collect_Azerite_Cutlasses"
stickystart "Collect_Trickshots_Azerite_Powder_Horns"
step
Run up the stairs |goto 78.83,78.52 < 10 |only if walking
kill Dockmaster Marl##127143
|tip He walks around this area.
collect Dockmaster's Key##152722 |goto 78.91,79.00 |q 48558
step
click Dockmaster's Strongbox
collect Dockmaster's Records##152721 |q 48773/1 |goto 79.14,78.78
step
label "Collect_Azerite_Cutlasses"
kill Irontide Cutthroat##126719+
collect 3 Azerite Cutlass##152719 |q 48558/1 |goto 78.38,76.85
step
label "Collect_Trickshots_Azerite_Powder_Horns"
kill Irontide Trickshot##126774+
collect 2 Trickshot's Azerite Powder Horn##152720 |q 48558/2 |goto 78.38,76.85
step
Follow the path up |goto 79.72,77.30 < 20 |only if walking
talk Flynn Fairwind##126620
turnin Papers, Please##48773 |goto 80.35,81.46
turnin The Irontide Crew##48558 |goto 80.35,81.46
accept Dress to Impress##49239 |goto 80.35,81.46
step
Wear the Irontide Recruit Disguise |havebuff 2055038 |q 49239
|tip Use the "Irontide Recruit Disguise" ability.
|tip It appears as a button on the screen.
step
talk Irontide Recruiter##128700
|tip He walks around this area.
Tell him _"We want to join the Irontide Raiders. We brought our own hats."_
Speak with the Irontide Recruiter |q 49239/1 |goto 79.79,82.53
step
Cross the bridge |goto 79.68,82.16 < 10 |only if walking
Enter the building |goto 77.33,84.14 < 10 |walk
Enter the Dead Man's Tale |q 49239/2 |goto 77.31,84.02
step
Watch the dialogue
talk Flynn Fairwind##126620
|tip Inside the building.
turnin Dress to Impress##49239 |goto 77.33,83.96
accept Rodrigo's Roost##49401 |goto 77.33,83.96
step
talk  Venrik##128927
|tip Inside the building.
accept Raise a Glass!##49398 |goto 77.36,83.92
step
talk  Venrik##128927
|tip Inside the building.
Tell him _"Milk... in a skull mug."_
Order a Drink From Venrik |q 49398/1 |goto 77.36,83.92
step
use the Goat's Milk in a Skull Mug##153601
Have a Drink |q 49398/2 |goto 77.36,83.92
step
talk  Venrik##128927
|tip Inside the building.
turnin Raise a Glass!##49398 |goto 77.36,83.92
step
talk Jill McHoonigan##136479
|tip Inside the building.
home Freehold |goto 77.39,83.97 |q 49401 |future
step
talk Rodrigo##129098
|tip On top of the building.
fpath Freehold |goto 77.04,82.89
step
talk Rodrigo##129098
|tip On top of the building.
Ask him _"Can you send this letter to Taelia in Boralus?"_
Send the Letter to Taelia |q 49401/1 |goto 77.04,82.90
step
talk Flynn Fairwind##126620
|tip Inside the building.
turnin Rodrigo's Roost##49401 |goto 77.33,83.97
accept The Big Job##49399 |goto 77.33,83.97
stickystart "Collect_Bilge_Rat_Orders"
stickystart "Collect_Cutwater_Corsair_Orders"
step
Kill Blacktooth enemies around this area
collect Blacktooth Bruiser Orders##153682 |q 49399/3 |goto 76.40,83.42
step
label "Collect_Bilge_Rat_Orders"
Kill enemies around this area
|tip Only Ookin Crewman and Vulpera enemies will drop the quest item.
collect Bilge Rat Orders##153680 |q 49399/1 |goto 76.40,83.42
step
label "Collect_Cutwater_Corsair_Orders"
Kill Cutwater enemies around this area
collect Cutwater Corsair Orders##153681 |q 49399/2 |goto 76.40,83.42
step
talk Venrik##128927
|tip Inside the building.
turnin The Big Job##49399 |goto 77.36,83.92
accept Fairwind's "Friends"##49404 |goto 77.36,83.92
step
Follow the path |goto 75.56,83.34 < 30 |only if walking
Enter the Ring of Booty |q 49404/1 |goto 74.09,83.43
|tip You will be attacked by a group of enemies.
step
Kill the enemies that attack
clicknpc Flynn Fairwind##130081
Untie Flynn |q 49404/2 |goto 73.84,83.43
step
Watch the dialogue
Kill the enemies that attack in waves
|tip There are 3 waves.
Survive Harlan's Game |q 49404/3 |goto 73.88,83.43
step
Watch the dialogue
Escape on the Tiragarde Great Gryphon |invehicle |goto 73.88,83.43 |q 49404
step
Watch the dialogue
Escape the Ring of Booty |goto 76.99,82.96 < 10 |c |q 49404 |notravel
step
talk Taelia##130159
|tip Upstairs on the platform.
turnin Fairwind's "Friends"##49404 |goto 77.14,82.90
accept Defenders of Daelin's Gate##49405 |goto 77.14,82.90
step
clicknpc Galeheart##130158
Mount Galeheart |q 49405/1 |goto 77.14,82.90
step
Watch the dialogue
Ride to Vigil Hill |q 49405/2 |goto 61.59,57.84 |notravel
step
talk Vigil Hill Refugee##141078
turnin Defenders of Daelin's Gate##49405 |goto 60.92,59.17
accept No-Landing Zone##52431 |goto 60.92,59.17
step
kill Burnsy the Blade##141107 |q 52431/1 |goto 61.21,61.25
kill Wiley Jaki##141108 |q 52431/2 |goto 61.21,61.23
kill Skullcrusher Cotner##141113 |q 52431/3 |goto 61.19,61.27
|tip They will attack one at a time.
step
talk Vigil Hill Refugee##141078
turnin No-Landing Zone##52431 |goto 60.92,59.17
accept A Desperate Defense##49869 |goto 60.92,59.17
step
Cross the bridge |goto 60.10,59.53 < 15 |only if walking
Follow the path up |goto 57.96,60.40 < 20 |only if walking
talk Lieutenant Tarenfold##131048
turnin A Desperate Defense##49869 |goto 56.68,61.18
accept Farmers Who Fight##52750 |goto 56.69,61.18
accept Air Raid##49737 |goto 56.69,61.18
step
talk Taelia##121235
accept Numbing the Pain##52787 |goto 56.47,61.73
stickystart "Kill_Irontide_Skyriders"
stickystart "Collect_Evermoss_Clumps"
step
talk Vigil Hill Farmer##141519+
Recruit #6# Vigil Hill Farmers |q 52750/1 |goto 56.16,59.79
step
label "Kill_Irontide_Skyriders"
kill 6 Irontide Skyrider##141485 |q 49737/1 |goto 56.16,59.79
step
label "Collect_Evermoss_Clumps"
click Evermoss
|tip They look like stringy green plants hanging from the side of tree trunks around this area.
collect 5 Evermoss Clump##162522 |q 52787/1 |goto 56.16,59.79
step
talk Lieutenant Tarenfold##131048
turnin Farmers Who Fight##52750 |goto 56.68,61.18
turnin Air Raid##49737 |goto 56.67,61.18
accept Hands Off My Booty!##49738 |goto 56.67,61.18
step
talk Taelia##121235
turnin Numbing the Pain##52787 |goto 56.47,61.73
step
Follow the path up |goto 55.93,61.75 < 20 |only if walking
clicknpc Vigil Hill Cannon##131220
Control the Vigil Hill Cannon |invehicle |goto 56.17,64.42 |q 49738
step
Kill enemies around this area
|tip They are on the ground below.
|tip Use the ability on your action bar.
Slay #20# Looters |q 49738/1 |goto 56.18,64.47
step
Stop Controlling the Vigil Hill Cannon |outvehicle |goto 56.18,64.47 |q 49738
step
talk Lieutenant Tarenfold##131048
turnin Hands Off My Booty!##49738 |goto 56.68,61.18
accept For Kul Tiras!##49736 |goto 56.68,61.18
accept Cease Fire!##49740 |goto 56.68,61.18
step
talk Taelia##142393
accept Righteous Retribution##49741 |goto 56.47,61.73
step
talk Sky Marshal Sanders##130599
fpath Vigil Hill |goto 57.74,61.53
step
talk Gordon Fine##136482
|tip Inside the building.
home Vigil Hill |goto 57.95,62.09 |q 49738 |future
stickystart "Inspire_Vigil_Hill_Defenders"
step
click Captured Cannon
Destroy the Captured Cannon |q 49740/1 |goto 57.66,67.41 |count 1
step
Follow the path |goto 57.37,68.13 < 15 |only if walking
Follow the path up |goto 57.03,70.68 < 10 |only if walking
click Captured Cannon
|tip Upstairs on the platform.
Destroy the Captured Cannon |q 49740/1 |goto 57.21,70.11 |count 2
step
click Captured Cannon
|tip Upstairs on the platform.
Destroy the Captured Cannon |q 49740/1 |goto 57.38,69.70 |count 3
step
Jump up here |goto 56.57,69.77 < 10 |only if walking
click Captured Cannon
|tip Upstairs on the platform.
Destroy the Captured Cannon |q 49740/1 |goto 56.58,69.21 |count 4
step
Run up the ramp |goto 55.69,67.95 < 10 |only if walking
click Azerite Bombs
|tip On the deck of the ship.
Steal the Azerite Bombs |q 49741/1 |goto 55.39,67.83
step
Bomb The Plunder Runner |q 49741/2 |goto 55.84,67.54
|tip Use the "Azerite Bomb" ability.
|tip It appears as a button on the screen.
step
label "Inspire_Vigil_Hill_Defenders"
use the Proudmoore Battle Standard##156520
|tip Use it near Vigil Hill NPC's around this area.
Inspire #15# Vigil Hill Defenders |q 49736/1 |goto 57.28,66.07
step
click Landing Boat
Board the Landing Boat |q 49741/3 |goto 59.04,66.55
step
Bomb The Bloodwake |q 49741/4 |goto 59.69,67.90
|tip Use the Azerite Bomb ability.
|tip It appears as a button on the screen.
step
Return to Shore |goto 57.29,71.81 < 7 |c |q 49741 |notravel
step
clicknpc Galeheart##141838
Mount Galeheart |q 49741/5 |goto 57.56,71.58
step
Ignite #5# Powder Barrels |q 49741/6 |goto 55.94,75.78
|tip Use the ability on your action bar.
|tip They look like wooden barrels on the ship below as you fly.
step
Return to Shore |goto 57.56,71.58 < 10 |c |q 49741
step
talk Lieutenant Tarenfold##131048
turnin For Kul Tiras!##49736 |goto 56.68,61.18
turnin Cease Fire!##49740 |goto 56.68,61.18
step
talk Taelia##142393
turnin Righteous Retribution##49741 |goto 56.50,61.25
accept Bearers of Bad News##50110 |goto 56.50,61.25
step
clicknpc Galeheart##142407
Mount Galeheart |q 50110/1 |goto 56.51,61.26
step
Watch the dialogue
Travel to Unity Square |goto Boralus/0 49.05,75.75 < 10 |c |q 50110 |notravel
step
talk Taelia##135259
turnin Bearers of Bad News##50110 |goto Boralus/0 49.10,75.73
accept Prepare for Trouble##50795 |goto Boralus/0 49.10,75.73
step
talk Proudmoore Guard##135075+
Tell them _"The Lord Admiral is in danger. Come with us!"_
Rally #4# Proudmoore Guards |q 50795/1 |goto 47.50,80.92
step
_Next to you:_
talk Taelia
turnin Prepare for Trouble##50795
accept Make Our Case##50787
step
Watch the dialogue
Reveal Lady Ashvane's Treason |q 50787/1 |goto 49.21,85.42
step
talk Taelia##135259
turnin Make Our Case##50787 |goto 50.01,87.58
accept Enemies Within##50788 |goto 50.01,87.58
accept Clear the Air##50789 |goto 50.01,87.58
stickystart "Slay_Ashvane_Combatants"
step
click Smoking Payload
Destroy the Smoking Payload |q 50789/1 |goto 49.45,87.08 |count 1
step
click Smoking Payload
Destroy the Smoking Payload |q 50789/1 |goto 48.64,85.61 |count 2
step
click Smoking Payload
Destroy the Smoking Payload |q 50789/1 |goto 49.50,84.78 |count 3
step
click Smoking Payload
Destroy the Smoking Payload |q 50789/1 |goto 48.19,82.63 |count 4
step
label "Slay_Ashvane_Combatants"
Kill Ashvane enemies around this area
Slay #6# Ashvane Combatants |q 50788/1 |goto 49.21,85.39
step
Click the Complete Quest Box:
turnin Clear the Air##50789
step
Click the Complete Quest Box:
turnin Enemies Within##50788
accept Hot Pursuit##50790
step
clicknpc Proudmoore Charger##135672
Mount the Proudmoore Charger |q 50790/1 |goto 47.75,81.39
step
Watch the dialogue
|tip Spam the "Jump" ability on your action bar as you ride the horse.
|tip Use the "Giddyup!" ability on your action bar whenever it's available, to go faster.
Pursue Priscilla Ashvane |q 50790/2 |goto 39.91,51.36 |notravel
step
Watch the dialogue
Return to Unity Square |goto 47.85,81.36 < 10 |noway |c |q 50790
step
talk Taelia##135259
turnin Hot Pursuit##50790 |goto 48.29,80.60
step
talk Katherine Proudmoore##121144
accept Proudmoore's Parley##50972 |goto 48.42,80.86
step
Follow the path |goto 49.20,74.23 < 15 |only if walking
Follow the path |goto 49.29,71.77 < 10 |only if walking
Follow the path |goto 48.48,66.57 < 15 |only if walking
talk Jessica Clarke##143535
fpath Proudmoore Keep |goto 47.75,65.43
step
Enter the building |goto Boralus/0 68.83,21.11 < 10 |walk
talk Genn Greymane##120788
|tip Inside the building.
turnin Proudmoore's Parley##50972 |goto Boralus/0 68.05,22.18
step
_Congratulations!_
You completed the Tiragarde Sound storyline.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Mysterious Letter Questline",{
author="support@zygorguides.com",
description="\nFind the author of the Mysterious Letter.",
condition_end=function() return completedq(53099) end,
},[[
step
Enter the building |goto Stormsong Valley/0 59.24,68.59 < 10 |walk
click Crumbling Letter##281348
|tip Inside the building.
accept Ruin Has Come##50417 |goto 59.51,68.34
step
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
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Heritage Armor\\Dwarf Heritage Armor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the questline to unlock the Dwarf Heritage Armor.",
condition_valid=function() return raceclass('Dwarf') end,
condition_valid_msg="You must be a Dwarf to complete this guide!",
startlevel=50,
},[[
step
Become Exalted with Ironforge |condition rep('Ironforge') == Exalted
|tip Use the "Ironforge" reputation guide to accomplish this.
step
talk Digger Golad##146988
accept Keep Yer Feet On The Ground##53838 |goto Stormwind City/0 54.48,18.29
step
Enter the cave |goto Dun Morogh/0 77.85,54.88 < 15 |walk
Follow the path |goto Dun Morogh/11 37.95,68.78 < 15 |walk
Continue following the path |goto Dun Morogh/11 44.70,37.03 < 15 |walk
Follow the path |goto Dun Morogh/11 50.17,19.77 < 10 |walk
Find the Missing Excavators |q 53838/1 |goto 40.27,21.73
|tip Inside the cave.
step
kill Maw'roc the Thief##146994 |q 53838/2 |goto 40.27,21.73
|tip Inside the cave.
step
click Ancient Tablet
|tip Inside the cave.
turnin Keep Yer Feet On The Ground##53838 |goto 39.81,22.55
accept Something Valuable, Perhaps?##53835 |goto 39.81,22.55
step
Enter the building |goto Ironforge/0 66.16,19.39 < 20 |walk
talk Brann Bronzebeard##145462
|tip Inside the building.
turnin Something Valuable, Perhaps?##53835 |goto Ironforge/0 77.45,9.51
accept Ancient Armor, Ancient Mystery##53836 |goto Ironforge/0 77.45,9.51
step
Enter the building |goto 44.54,49.53 < 10 |walk
Follow the path down |goto 44.21,51.97 < 7 |walk
Continue down the path |goto Ironforge/1 79.81,87.01 < 7 |c |q 53836
step
Follow the path down |goto 80.27,53.41 < 10 |walk
talk Advisor Belgrum##145464
|tip Downstairs inside the cave.
turnin Ancient Armor, Ancient Mystery##53836 |goto 56.98,47.92
accept Watch Yer Back##53837 |goto 56.98,47.92
stickystart "Kill_Trogg_Invaders"
step
Follow the path |goto 55.32,60.02 < 7 |walk
Continue following the path |goto 45.04,62.24 < 7 |walk
kill Roc'maw the Burrower##145698 |q 53837/2 |goto 19.61,51.79
|tip Downstairs inside the cave.
|tip Follow the winding path down.
|tip He will appear on your minimap as a yellow dot.
step
label "Kill_Trogg_Invaders"
kill 8 Trogg Invader##145469 |q 53837/1 |goto 36.57,43.02
step
_Next to you:_
talk Advisor Belgrum
turnin Watch Yer Back##53837
accept Aegrim's Study##53839
step
click Door to Aegrim's Study |goto 18.53,52.59
|tip Downstairs inside the cave.
Enter Aegrim's Study |goto Ironforge/0 23.78,49.83 < 10 |noway |c |q 53839
step
click Armor Stand
|tip Inside the building.
turnin Aegrim's Study##53839 |goto 19.53,52.05
accept Shards of the Past##53841 |goto 19.53,52.05
step
click Pile of Disenchanted Metal+
|tip They look like piles of sheets of grey metal on the ground around this area inside the building.
|tip You will be attacked.
collect 6 Fragments of Shattered Armor##164946 |q 53841/1 |goto 20.67,51.42
step
click Door to Old Ironforge |goto 24.82,49.31
|tip Inside the building.
Leave Aegrim's Study |goto Ironforge/1 21.16,51.28 < 10 |noway |c |q 53841
step
Follow the path up |goto 37.74,44.24 < 10 |walk
Continue up the path |goto 63.44,48.30 < 10 |walk
Continue up the path |goto 78.75,88.32 < 7 |c |q 53841
|tip Follow the winding path up.
step
Continue up the path |goto Ironforge/0 46.02,52.63 < 7 |walk
Leave the building |goto Ironforge/0 44.58,49.48 < 7 |walk
Enter the building |goto Ironforge/0 66.91,23.11 < 20 |walk
talk Brann Bronzebeard##145462
|tip Inside the building.
turnin Shards of the Past##53841 |goto Ironforge/0 77.43,9.53
accept Interest Yah In A Pint?##53840 |goto Ironforge/0 77.43,9.53
step
Enter the building |goto Loch Modan/0 35.24,47.75 < 15 |walk
talk Grumnus Steelshaper##5164
|tip Inside the building.
turnin Interest Yah In A Pint?##53840 |goto Loch Modan/0 35.00,48.78
step
talk Brann Bronzebeard##145462
|tip Inside the building.
accept Recruiting the Furnace Master##53844 |goto 35.00,48.66
step
Travel to Ulduar |q 53844/1 |goto The Storm Peaks/0 41.57,17.67
|tip Walk into the swirling portal.
stickystart "Kill_Titan_Flames"
step
_Inside Ulduar:_
Watch the dialogue
|tip Follow Brann Bronzebeard as he walks.
|tip Walk down the hallway and take the first path to the left.
kill Magmarion of the Furnace##145909 |q 53844/3
step
label "Kill_Titan_Flames"
_Inside Ulduar:_
kill 6 Titan Flame##145905 |q 53844/2
|tip In the same room you kill Magmarion of the Furnace.
step
Watch the dialogue
|tip Follow Brann Bronzebeard as he walks.
click Brann's Flying Machine
|tip It looks like a small airplane near the door where you entered Ulduar.
Choose _"I am ready to go back to Loch Modan."_
Return to Loch Modan |goto Loch Modan/0 33.78,50.83 < 20 |noway |c |q 53844
step
Enter the building |goto 35.24,47.75 < 15 |walk
talk Brann Bronzebeard##145462
|tip Inside the building.
turnin Recruiting the Furnace Master##53844 |goto 35.00,48.67
accept Earthen Blessing##53842 |goto 35.00,48.67
step
Leave the building |goto 35.22,47.74 < 10 |walk
Enter the building |goto Ironforge/0 44.54,49.53 < 10 |walk
Follow the path down |goto Ironforge/0 44.21,51.97 < 7 |walk
Continue down the path |goto Ironforge/1 79.81,87.01 < 7 |c |q 53842
step
Continue down the path |goto 80.33,52.98 < 10 |walk
Run up the stairs |goto 58.14,49.72 < 10 |walk
Run up the stairs |goto 45.51,68.79 < 10 |walk
click Remnant of the Earthen Ritual
|tip Downstairs inside the cave.
collect Remnant of the Earthen Ritual##164960 |q 53842/1 |goto 36.01,54.06
step
Run down the stairs |goto 51.54,68.20 < 10 |walk
Follow the path up |goto 63.77,48.33 < 10 |walk
Continue up the path |goto 81.44,55.68 < 10 |walk
Continue up the path |goto Ironforge/0 46.18,58.82 < 7 |c |q 53842
step
Continue up the path |goto 46.10,52.41 < 10 |walk
Leave the building |goto 44.54,49.53 < 10 |walk
talk Bouldercrag the Rockshaper##145866
turnin Earthen Blessing##53842 |goto 49.15,45.83
step
talk Grumnus Steelshaper##5164
accept Forging the Armor##53845 |goto 48.76,45.78
step
Watch the dialogue
|tip Use the "Empowered Stoneform" ability.
|tip It appears as a button on the screen.
Help Bouldercrag's Ritual |q 53845/1 |goto 48.97,45.15
step
click Pile of Ancient Metal
Carry the Ancient Metal |havebuff 348540 |goto 49.57,44.37 |q 53845
step
Watch the dialogue
Present Ignis the Armor Shards |q 53845/2 |goto 51.41,44.01
step
click Molten Metal
|tip In the pool of yellow molten metal.
Carry the Molten Metal |havebuff 524794 |goto 51.96,43.78 |q 53845
step
Watch the dialogue
Bring the Molten Metal to the Great Anvil |q 53845/3 |goto 50.14,43.99
step
Forge the Bulwark of the Mountain Kings |q 53845/4 |goto 50.14,43.99
|tip Use the "Forge!" ability.
|tip It appears as a button on the screen.
step
click Bulwark of the Mountain King
collect Bulwark of the Mountain King##165704 |q 53845/5 |goto 49.70,43.76
step
talk Grumnus Steelshaper##5164
turnin Forging the Armor##53845 |goto 46.11,50.18
step
talk Brann Bronzebeard##145462
accept Legacy of the Bronzebeard##53846 |goto 45.85,49.98
step
Enter the building |goto 44.46,49.62 < 10 |walk
talk Muradin Bronzebeard##42928
|tip Inside the building.
turnin Legacy of the Bronzebeard##53846 |goto 39.17,56.10
step
_Congratulations!_
You unlocked the Dwarf Heritage Armor.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Heritage Armor\\Gnome Heritage Armor",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the questline to unlock the Gnome Heritage Armor.",
condition_valid=function() return raceclass('Gnome') end,
condition_valid_msg="You must be a Gnome to complete this guide!",
condition_end=function() return completedq(54642) end,
startlevel=50,
},[[
step
Become Exalted with Gnomeregan |condition rep('Gnomeregan') == Exalted
|tip Use the "Gnomeregan" reputation guide to accomplish this.
step
ding 50
step
talk Ace Pilot Stormcog##147939
accept Shifting Gears##54402 |goto Stormwind City/0 54.67,18.53
step
talk Captain Tread Sparknozzle##147943
turnin Shifting Gears##54402 |goto New Tinkertown/0 41.77,31.62
accept Gnomeregan's Finest##54576 |goto 41.77,31.62
step
talk Fizzi Tinkerbow##147952
Tell her _"Report, Tinker!"_
Speak with Fizzi Tinkerbow |q 54576/2 |goto 37.95,33.93
step
talk Emaedi Autoblast##147491
|tip Upstairs inside the building.
Choose _<Introduce yourself.>_
Speak with Emaedi Autoblast |q 54576/1 |goto 38.19,38.91
step
talk Cog Captain Winklespring##147950
Choose _<Introduce yourself.>_
Speak with Cog Captain Winklespring |q 54576/3 |goto 40.27,38.07
step
talk Captain Tread Sparknozzle##147943
turnin Gnomeregan's Finest##54576 |goto 41.77,31.62
accept Shadowed Halls and Dusty Cogs##54577 |goto 41.77,31.62
step
Enter the tunnel |goto 32.48,36.97 < 20 |walk
Follow the path |goto 53.96,81.62 < 15 |walk
Run down the stairs |goto 54.13,45.77 < 10 |walk
Follow the path |goto 54.81,15.19 < 10 |walk
click Workshop Door
Enter Gnomeregan Through the Workshop |goto Gnomeregan Heritage/0 84.92,59.41 |c |noway |q 54577
step
Follow the path |goto 74.88,64.99 < 15 |walk
Continue following the path |goto 73.72,73.40 < 15 |walk
Continue following the path |goto 63.69,72.11 < 15 |only if walking
click Workshop Door
Enter the Workshop |goto 53.79,65.67 < 15 |c |q 54577
|tip Avoid broken robots and steam vents along the way.
step
Follow the path |goto 50.38,88.86 < 10 |walk
Continue following the path |goto 36.08,86.04 < 10 |walk
click Prototype Arcane Engine
Collect the Prototype Arcane Engine |q 54577/2 |goto 35.95,73.04
step
click Broken Teleporter |goto 37.77,72.25
Leave Gnomeregan |goto New Tinkertown/0 38.46,32.97 < 1000 |c |q 54577
step
talk Captain Tread Sparknozzle##147943
turnin Shadowed Halls and Dusty Cogs##54577 |goto 41.77,31.62
accept A Tundra Conundrum##54580 |goto 41.77,31.62
step
talk Cog Captain Winklespring##147950
turnin A Tundra Conundrum##54580 |goto Borean Tundra/0 55.36,18.81
step
talk Fizzi Tinkerbow##147952
accept Now With More Mechanical Fowl##54581 |goto 55.30,18.97
step
Kill Ironbound enemies around this area
|tip Click the "Prototype Bomber Gun" ability on-screen to instantly kill them.
Slay #10# Ironbound Brute |q 54581/1 |goto 63.07,22.46
step
Click the Complete Quest Box
turnin Now With More Mechanical Fowl##54581
accept Smarter Than Your Average Trogg##54582
step
kill Krugg the Smart##148028 |q 54582/1 |goto 64.63,23.10
step
collect Broken Communication Device##166584 |q 54582/2 |goto 64.62,23.08
|tip Loot it from Krugg's corpse.
step
talk Fizzi Tinkerbow##147952
turnin Smarter Than Your Average Trogg##54582 |goto 55.30,18.97
accept The Gnome Behind the Trogg##54579 |goto 55.30,18.97
step
click RCV Control Switch
Activate the RCV Control Switch |q 54579/1 |goto 55.27,18.96
step
talk Fizzi Tinkerbow##147952
turnin The Gnome Behind the Trogg##54579 |goto 55.30,18.97
accept A Signal in Storm Peaks##54639 |goto 55.30,18.97
step
clicknpc First Squadron Prototype##149278
Jump in the First Squadron Prototype |q 54639/1 |goto 55.19,18.83
step
Watch the dialogue
Fly to Storm Peaks |outvehicle |q 54639
step
talk Cog Captain Winklespring##147950
turnin A Signal in Storm Peaks##54639 |goto The Storm Peaks/0 37.60,60.23
accept Gnomercy!##54640 |goto 37.60,60.23
step
clicknpc Shrinkified Assault Tank##149328
De-Shrinkify the Assault Tank |q 54640/1 |goto 37.42,60.53
step
clicknpc Gnomeregan Assault Tank##148931
Commandeer the Assault Tank |q 54640/2 |goto 37.42,60.53
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #30# Ironbound Invaders |q 54640/3 |goto 38.00,57.66
step
Arrive at the Terrace of the Makers |goto 56.27,51.40 < 100 |c |noway |q 54640
step
talk Cog Captain Winklespring##147950
turnin Gnomercy!##54640 |goto 56.13,51.42
accept Operation: Troggageddon##54850 |goto 56.13,51.42
step
clicknpc First Squadron Prototype##149520
Jump in the First Squadron Prototype |q 54850/1 |goto 56.18,51.52
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Defeat Sparkspanner's Army |q 54850/2 |goto 45.23,38.58
step
Click the Complete Quest Box
turnin Operation: Troggageddon##54850
step
talk Cog Captain Winklespring##149503
|tip Next to you in the plane.
accept For Gnomeregan!##54641
step
Watch the dialogue
Enter the Halls of Stone |q 54641/1
step
Run down the stairs |goto HoS Heritage/1 49.98,27.71 < 20 |walk
kill Smasher X900##149394 |q 54641/2 |goto 50.04,12.12
step
talk Cog Captain Winklespring##149503
turnin For Gnomeregan!##54641 |goto 50.06,12.65
accept G.E.A.R. Up##54642 |goto 50.06,12.65
step
click Teleporter |goto 48.34,10.51
Leave the Halls of Stone |goto The Storm Peaks/0 39.66,26.93 < 1000 |c |noway |q 54642
step
talk Captain Tread Sparknozzle##147943
turnin G.E.A.R. Up##54642 |goto New Tinkertown/0 41.77,31.62
step
_Congratulations!_
You unlocked the Gnome Heritage Armor.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Heritage Armor\\Worgen Heritage Armor",{
author="support@zygorguides.com",
description="This guide will walk you through completing the questline to unlock the Worgen Heritage Armor.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
condition_valid=function() return raceclass('Worgen') end,
condition_valid_msg="You must be a Worgen to complete this guide!",
condition_end=function() return completedq(54990) end,
startlevel=50,
},[[
step
Reach Level 50 |ding 50
|tip Use various leveling guides to accomplish this.
step
Reach Exalted with the "Gilneas" |condition rep("Gilneas") == Exalted
|tip Use the "Gilneas" reputation guide to accomplish this.
step
talk Courier Claridge##150200
accept The Shadow of Gilneas##54976 |goto Stormwind City/0 54.67,18.53
step
talk Princess Tess Greymane##155313
turnin The Shadow of Gilneas##54976 |goto 82.50,28.07
step
talk Mia Greymane##151784
accept Into Duskwood##54977 |goto 82.35,27.76
step
talk Vassandra Stormclaw##151761
turnin Into Duskwood##54977 |goto Duskwood/0 18.10,57.23
accept Bane of the Nightbane##54980 |goto 18.10,57.23
step
Place the Pungent Meat
|tip Use the ability that appears on-screen.
kill Bloodeyes##150721
Subdue Bloodeyes |q 54980/2 |goto 51.99,61.59
step
Bring Bloodeyes to Raven Hill |q 54980/3 |goto 18.12,57.25
step
talk Vassandra Stormclaw##151761
turnin Bane of the Nightbane##54980 |goto 18.08,57.23
accept Cry to the Moon##54981 |goto 18.08,57.23
accept The Spirit of the Hunter##54982 |goto 18.08,57.23
stickystart "Collect_Bloodstained_Fangs"
step
click Elune's Grace##321836
collect Elune's Grace##167032 |q 54981/1 |goto 82.35,33.95
step
label "Collect_Bloodstained_Fangs"
kill Bloodeyes##150721+
collect 6 Bloodstained Fangs##167031 |q 54982/1 |goto 78.57,34.61
step
talk Vassandra Stormclaw##151761
turnin Cry to the Moon##54981 |goto 46.39,36.90
turnin The Spirit of the Hunter##54982 |goto 46.39,36.90
accept Waking a Dreamer##54983 |goto 46.39,36.90
step
talk Vassandra Stormclaw##151761
Tell her _"Begin the ritual."_
Speak with Vassandra Stormclaw |q 54983/1 |goto 46.39,36.90
step
Kill enemies that attack in waves
Defend Vassandra during the ritual |q 54983/2 |goto 46.60,36.54
step
Watch the dialogue
talk Goldrinn##150106
turnin Waking a Dreamer##54983 |goto 46.57,36.55
accept Let Sleeping Wolves Lie##54984 |goto 46.57,36.55
step
Enter the Emerald Dream |scenariostart |goto 46.57,35.47 |q 54984
step
talk Princess Tess Greymane##150851
Choose _<Give her a good wake-up slap.>_
Watch the dialogue
Wake Tess |scenariogoal 1/44887 |goto Gilneas Scenario/0 65.89,21.00 |q 54984
step
Kill enemies around this area
click Plague Thrower+
|tip They look like large catapaults on the ground around this area.
Push back the Forsaken assault force |scenariostage 2 |goto 59.99,27.67 |q 54984
step
kill Dark Ranger Thyala##150498 |scenariostage 3 |goto 60.15,40.32 |q 54984
step
Run down the stairs |goto 69.23,45.39 < 10 |walk
Run down the stairs |goto 69.17,64.70 < 10 |walk
Run up the stairs |goto 66.06,65.15 < 10 |walk
kill Nathanos Blightcaller##152329
Follow Nathanos's Trail |scenariogoal 4/44890 |goto 67.16,79.63 |q 54984
|tip Kill enemies that attack along the way and attack Nathanos when he stops.
|tip Use the action button that appears on-screen to track Nathanos.
step
kill Nathanos Blightcaller##152329 |scenariogoal 5/44891 |goto 58.98,63.82 |q 54984
step
Follow the path |goto 62.54,81.51 < 15 |walk
Continue following the path |goto 40.53,82.09 < 15 |walk
Follow Tess |scenariogoal 6/44892 |goto 31.58,73.29 |q 54984
step
kill Essence of Rage##150495 |scenariogoal 7/44893 |goto 34.15,65.78 |q 54984
step
click Dream Rift
Leave the Emerald Dream |goto 33.63,67.81 > 200 |c |q 54984
step
talk Princess Tess Greymane##150115
turnin Let Sleeping Wolves Lie##54984 |goto Duskwood/0 46.33,37.07
accept The New Guard##54990 |goto 46.33,37.07
step
talk Princess Tess Greymane##155313
Choose _<Take a knee.>_
Speak with Tess at Stormwind Keep |q 54990/1 |goto Stormwind City/0 82.49,28.06
step
Watch the dialogue
talk Princess Tess Greymane##155313
turnin The New Guard##54990 |goto 82.49,28.06
step
_Congratulations!_
You unlocked the Worgen Heritage Armor.
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Xal'atath's Gambit",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the \"Xal'atath's Gambit\" questline "..
"in preparation for Crucible of the Storms.",
condition_suggested=function() return level >= 50 and not completedq(54438) end,
condition_visible=function() return not raceclass('Priest') end,
condition_end=function() return completedq(54438) end,
},[[
step
collect 1 Azsharan Medallion##165605 |q 54141 |future
|tip This drops from Naga invaders during the "Naga Attack!" world quest.
|tip Locate this quest and use the world quest guides to complete it.
step
accept The Azsharan Medallion##54141
step
talk Collector Kojo##135793
turnin The Azsharan Medallion##54141 |goto Stormsong Valley/0 40.54,36.41
accept Orders from Azshara##54144 |goto 40.54,36.41
step
click Ominous Whispering Knife##307091
collect 1 Xal'atath, Blade of the Black Empire##164761 |q 54144/1 |goto 40.57,36.49
step
Cross the water |goto 39.62,36.65 < 20 |only if walking
Follow the path up |goto 36.44,34.27 < 20 |only if walking
Continue up the path |goto 35.47,32.54 < 15 |only if walking
Find the Makeshift Altar |q 54144/2 |goto 34.16,31.77
step
click Xal'atath, Blade of the Black Empire
Place Xal'atath |q 54144/3 |goto 34.14,31.76
step
click Xal'atath, Blade of the Black Empire
turnin Orders from Azshara##54144 |goto 34.14,31.76
accept Every Little Death Helps##54113 |goto 34.14,31.76
step
Kill Darktide enemies around this area
|tip Kill them until the "Souls Gathered" bar that appears on-screen reaches 100.
Feed Xal'atath |q 54113/1 |goto 33.82,32.55
step
click Xal'atath, Blade of the Black Empire
turnin Every Little Death Helps##54113 |goto 34.14,31.76
accept Unintended Consequences##53760 |goto 34.14,31.76
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
accept Twist the Knife##54126 |goto 52.49,14.22
step
Cross the water |goto Stormsong Valley/0 71.93,61.34 < 30 |only if walking
Follow the path up |goto 77.14,53.85 < 20 |only if walking
Continue up the path |goto 81.08,52.33 < 20 |only if walking
Continue up the path |goto 83.35,50.63 < 20 |only if walking
Find Xal'atath |q 54126/1 |goto 83.91,47.60
step
Enter the Crucible of Storms |q 54126/2 |goto 83.90,46.91
|tip Step through the portal in front of you.
step
click Void Stone
Place the Void Stone |q 54126/3 |goto Crucible of Storms/0 27.98,54.59
step
click Trident of Deep Ocean
Place the Trident of Deep Ocean |q 54126/4 |goto 27.96,53.36
step
click Tempest Caller
Place the Tempest Caller |q 54126/5 |goto 27.85,51.89
step
Watch the dialogue
Receive the Gift |q 54126/6
step
talk Brother Pike##146902
|tip Inside the building.
turnin Twist the Knife##54126 |goto Boralus/0 67.37,20.96
accept His Eye Upon You##53765 |goto 67.37,20.96
step
Cross the water |goto Stormsong Valley/0 73.76,59.83 < 30 |only if walking
Follow the path up |goto 77.12,53.77 < 20 |only if walking
Continue following the path |goto 81.75,53.63 < 20 |only if walking
Meet Brother Pike |q 53765/1 |goto 85.28,50.06
step
talk Joan Weber##124725
Tell her _"I am ready to begin."_
|tip This will permanantly remove the "Gift of N'Zoth" buff.
Watch the dialogue
Remove the Curse |q 53765/2 |goto 85.28,50.06
step
talk Joan Weber##124725
turnin His Eye Upon You##53765 |goto 85.28,50.06
step
talk Brother Pike##146902
|tip Inside the building.
accept Crucible of Storms: Relics of Shadow##54438 |goto Boralus/0 67.37,20.96
step
kill Uu'nat##145371 |q 54438/1
|tip Inside the "Crucible of Storms" raid.
step
talk Brother Pike##146902
|tip Inside the building.
turnin Crucible of Storms: Relics of Shadow##54438 |goto 67.37,20.96
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Xal'atath's Gambit - Priest",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the \"Xal'atath's Gambit\" questline "..
"in preparation for Crucible of the Storms as a Priest.",
condition_suggested=function() return level >= 50 and not completedq(54438) and raceclass('Priest') end,
condition_visible=function() return raceclass('Priest') end,
condition_end=function() return completedq(54438) end,
},[[
step
collect 1 Azsharan Medallion##165605 |q 54141 |future
|tip This drops from Naga invaders during the "Naga Attack!" world quest.
|tip Locate this quest and use the world quest guides to complete it.
step
accept The Azsharan Medallion##54141
step
talk Collector Kojo##135793
turnin The Azsharan Medallion##54141 |goto Stormsong Valley/0 40.54,36.41
accept Orders from Azshara##54265 |goto 40.54,36.41
step
click Ominous Whispering Knife##307091
collect 1 Xal'atath, Blade of the Black Empire##164761 |q 54265/1 |goto 40.57,36.49
step
Cross the water |goto 39.62,36.65 < 20 |only if walking
Follow the path up |goto 36.44,34.27 < 20 |only if walking
Continue up the path |goto 35.47,32.54 < 15 |only if walking
Find the Makeshift Altar |q 54265/2 |goto 34.16,31.77
step
click Xal'atath, Blade of the Black Empire
Place Xal'atath |q 54265/3 |goto 34.14,31.76
step
click Xal'atath, Blade of the Black Empire
turnin Orders from Azshara##54265 |goto 34.14,31.76
accept Every Little Death Helps##54114 |goto 34.14,31.76
step
Kill Darktide enemies around this area
|tip Kill them until the "Souls Gathered" bar that appears on-screen reaches 100.
Feed Xal'atath |q 54114/1 |goto 33.82,32.55
step
click Xal'atath, Blade of the Black Empire
turnin Every Little Death Helps##54114 |goto 34.14,31.76
accept Unintended Consequences##54058 |goto 34.14,31.76
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
accept Twist the Knife##54126 |goto 53.02,13.66
step
Cross the water |goto Stormsong Valley/0 71.93,61.34 < 30 |only if walking
Follow the path up |goto 77.14,53.85 < 20 |only if walking
Continue up the path |goto 81.08,52.33 < 20 |only if walking
Continue up the path |goto 83.35,50.63 < 20 |only if walking
Xal'atath found |q 54126/1 |goto 83.91,47.60
step
Enter the Crucible of Storms |q 54126/2 |goto 83.90,46.91
|tip Step through the portal in front of you.
step
click Void Stone
Place the Void Stone |q 54126/3 |goto Crucible of Storms/0 27.98,54.59
step
click Trident of Deep Ocean
Place the Trident of Deep Ocean |q 54126/4 |goto 27.96,53.36
step
click Tempest Caller
Place the Tempest Caller |q 54126/5 |goto 27.85,51.89
step
Watch the dialogue
Receive the Gift |q 54126/6
step
talk Brother Pike##146902
|tip Inside the building.
turnin Twist the Knife##54126 |goto Boralus/0 67.37,20.96
accept His Eye Upon You##53765 |goto 67.37,20.96
step
Cross the water |goto Stormsong Valley/0 73.76,59.83 < 30 |only if walking
Follow the path up |goto 77.12,53.77 < 20 |only if walking
Continue following the path |goto 81.75,53.63 < 20 |only if walking
Meet Brother Pike |q 53765/1 |goto 85.28,50.06
step
talk Joan Weber##124725
Tell her _"I am ready to begin."_
|tip This will permanantly remove the "Gift of N'Zoth" buff.
Watch the dialogue
Remove the Curse |q 53765/2 |goto 85.28,50.06
step
talk Joan Weber##124725
turnin His Eye Upon You##53765 |goto 85.28,50.06
step
talk Brother Pike##146902
|tip Inside the building.
accept Crucible of Storms: Relics of Shadow##54438 |goto Boralus/0 67.37,20.96
step
kill Uu'nat##145371 |q 54438/1
|tip Inside the "Crucible of Storms" raid.
step
talk Brother Pike##146902
|tip Inside the building.
turnin Crucible of Storms: Relics of Shadow##54438 |goto 67.37,20.96
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
accept Spark of Genius##54913 |goto Boralus/0 72.85,13.81
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
talk Kelsey Steelspark##143851
|tip Inside the ship on the middle deck.
accept Whatever Happened to Saffy Flivvers?##53815 |goto Boralus/0 67.93,26.27
step
talk Feathers##151132
turnin Whatever Happened to Saffy Flivvers?##53815 |goto Tanaris/0 62.18,45.34
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
accept She's in a Happier Place##53820 |goto 27.13,60.07
step
talk Kelsey Steelspark##143851
|tip Inside the ship on the middle deck.
turnin She's in a Happier Place##53820 |goto Boralus/0 67.93,26.27
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Heart of Azeroth\\Essential Empowerment",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various questlines associated with the Heart Forge.",
condition_suggested=function() return level >= 50 and not completedq(55752) end,
condition_end=function() return completedq(55752) end,
},[[
step
Complete the "Back to the Sea" Quest |condition completedq(56162) |or
|tip Use the "Nazjatar" leveling guide to accomplish this.
Click Here to Open the "Nazjatar" Leveling Guide |loadguide "Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Nazjatar\\Nazjatar"
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
stickystart "Collect_Emerald_Shards"
stickystart "Slay_Void_Invaders"
step
talk Valithria Dreamwalker##151704
accept Don't Close Your Eyes##55395 |goto 27.07,55.89
step
clicknpc Thessera##151708
Wake Thessera |q 55395/1 |goto 28.51,75.92
step
clicknpc Verdisa##151707
Wake Verdisa |q 55395/2 |goto 44.79,50.54
step
Follow the path |goto 52.48,44.14 < 15 |walk
clicknpc Karkarius##151705
Wake Karkarius |q 55395/3 |goto 71.37,46.61
step
label "Collect_Emerald_Shards"
click Emerald Shard##324070+
collect 7 Emerald Shard##167802 |q 55394/1 |goto 36.84,47.42
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
Click Here to Continue |confirm |q 56263 |future
step
talk Earthen Guardian##154464
accept Unlocking the Power##56263 |goto Boralus/0 75.05,14.95
step
talk Magni Bronzebeard##152206
turnin Unlocking the Power##56263 |goto Chamber of Heart/0 50.11,59.13
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
keywords={"8.3","N'zoth","Nzoth","Corruption","An","Unwelcome","Advisor"},
condition_suggested=function() return level >= 50 and not completedq(58632) end,
condition_end=function() return completedq(58632) end,
},[[
step
Complete the Quest "A Nation Divided" |condition completedq(47189)
|tip Use the "Tiragarde Sound (10-60)" leveling guide to accomplish this.
step
Complete the Quest "Uniting Kul Tiras" |condition completedq(51918,52450)
|tip Use the "War Campaign" leveling guide to accomplish this.
step
Complete the Quest "Harnessing the Power" |condition completedq(57010) |or
|tip Use the "Nazjatar" leveling guide to accomplish this.
Click Here to Open the "Nazjatar" Leveling Guide |loadguide "Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Nazjatar\\Nazjatar"
step
accept An Unwelcome Advisor##58496 |goto Boralus/0 71.30,18.13
|tip You will accept this quest automatically.
step
talk Anduin Wrynn##107574
|tip Inside Stormwind Keep.
Tell him _"I'm here to help."_
Speak with Anduin Wrynn |q 58496/1 |goto Stormwind City/0 85.91,31.57
step
talk Anduin Wrynn##107574
|tip Inside Stormwind Keep.
turnin An Unwelcome Advisor##58496 |goto 85.91,31.57
step
talk Magni Bronzebeard##154532
|tip Inside Stormwind Keep.
accept Return of the Warrior King##58498 |goto 85.24,32.48
step
Watch the dialogue
Walk with Magni |q  58498/1 |goto 87.67,35.04
step
click Fearbreaker##161485
|tip Inside Stormwind Keep.
collect Fearbreaker##175151 |q 58498/2 |goto 87.67,35.04
step
talk Magni Bronzebeard##154532
|tip Inside Stormwind Keep.
turnin Return of the Warrior King##58498 |goto 87.45,35.49
accept Where the Heart Is##58502 |goto 87.45,35.49
step
talk Magni Bronzebeard##152206
turnin Where the Heart Is##58502 |goto Chamber of Heart/0 50.13,59.21
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
Skip the Halls of Origination Scenario |condition readyq(56209) |or |next "Turnin_The_Halls_of_Origination"
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
|tip These drop from the "Lost" and "Corrupted" area bonus objective chests in Horrific Visions.
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
talk Captain Garrick##156280
accept Warming Up##56775
step
_Nearby on the Deck of the Ship:_
kill Combat Dummy##160737
Practice Combat on a Combat Dummy |q 56775/1
step
_Nearby on the Deck of the Ship:_
talk Captain Garrick##156280
turnin Warming Up##56775
step
_Nearby on the Deck of the Ship:_
talk Private Cole##160664
accept Stand Your Ground##58209
step
_Nearby on the Deck of the Ship:_
Watch the dialogue
kill Private Cole
|tip He runs across the deck of the ship nearby.
Spar with Private Cole |q 58209/1
step
_Nearby on the Deck of the Ship:_
Watch the dialogue
talk Private Cole##160664
|tip He walks across the deck of the ship nearby.
turnin Stand Your Ground##58209
accept Brace for Impact##58208
step
_Nearby on the Deck of the Ship:_
Watch the dialogue
talk Captain Garrick##156280
|tip Follow your allies as they run inside the ship.
turnin Brace for Impact##58208
step
Reach the Murloc Hideaway |complete subzone("Murloc Hideaway") |q 55122 |future
step
talk Captain Garrick##156626
accept Murloc Mania##55122 |goto Exile's Reach/0 61.88,82.89
step
Kill Murloc enemies around this area
Recover #6# First Aid Kits from Defeated Murlocs |q 55122/1 |goto 60.64,79.50
step
talk Captain Garrick##156626
turnin Murloc Mania##55122 |goto 61.88,82.89
accept Emergency First Aid##54951 |goto 61.88,82.89
step
use the First Aid Kit##168410
|tip Use it on Kee-La.
Use the First Aid Kit on Kee-La |q 54951/2 |goto 61.73,83.50
step
use the First Aid Kit##168410
|tip Use it on Austin Huxworth.
Use the First Aid Kit on Austin Huxworth |q 54951/3 |goto 61.37,82.60
step
use the First Aid Kit##168410
|tip Use it on Bjorn Stouthands.
Use the First Aid Kit on Bjorn Stouthands |q 54951/1 |goto 61.55,82.24
step
Watch the dialogue
talk Captain Garrick##156626
turnin Emergency First Aid##54951 |goto 61.88,82.89
accept Finding the Lost Expedition##54952 |goto 61.88,82.89
step
Travel North to Find Any Expedition Survivors |q 54952/1 |goto 58.36,74.47
step
talk Alaria##156607
turnin Finding the Lost Expedition##54952 |goto 58.36,74.47
step
talk Captain Garrick##156651
accept Cooking Meat##55174 |goto 58.37,74.64
step
Kill enemies around this area
Collect #5# Raw Meat from the Wildlife |q 55174/1 |goto 59.47,72.73
step
click Campfire
Cook the Meat on the Campfire |q 55174/2 |goto 58.32,74.58
step
talk Alaria##156607
turnin Cooking Meat##55174 |goto 58.36,74.47
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto 58.37,74.64
|only if Druid
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick as she walks.
|tip She doesn't always run to the same location.
kill Captain Garrick##164577
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Druid
step
talk Captain Garrick##156651
turnin Enhanced Combat Tactics##59254 |goto 58.37,74.63
|only if Druid
step
talk Alaria##156607
accept Northbound##55173 |goto 58.36,74.47
|only if Druid
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto 62.72,69.87
|only if Druid
step
talk Alaria##156607
accept Northbound##55173 |goto 58.36,74.47
|only if Hunter
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto 62.72,69.86
accept Taming the Wilds##59342 |goto 62.72,69.86
|only if Hunter
step
Watch the dialogue
Learn Tame Beast from Austin |q 59342/1 |goto 62.72,69.86
|only if Hunter
step
Tame Any Wildlife Beast |q 59342/2 |goto 61.07,71.37
|tip Use your "Tame Beast" ability on any beast enemy around this area.
|only if Hunter
step
talk Austin Huxworth##154327
turnin Taming the Wilds##59342 |goto 62.72,69.86
|only if Hunter
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto 58.37,74.64
|only if Mage
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick as she walks.
|tip She doesn't always run to the same location.
kill Captain Garrick##164577
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Mage
step
talk Captain Garrick##156651
turnin Enhanced Combat Tactics##59254 |goto 58.37,74.63
|only if Mage
step
talk Alaria##156607
accept Northbound##55173 |goto 58.36,74.47
|only if Mage
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto 62.72,69.87
|only if Mage
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59339 |goto 58.37,74.63
|only if Monk
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick as she walks.
|tip She doesn't always run to the same location.
kill Captain Garrick##164577
|tip Use your abilities to fight her.
Use Tiger Palm #6# Times on Captain Garrick |q 59339/1
Use Blackout Kick #3# Times on Captain Garrick |q 59339/2
|only if Monk
step
talk Captain Garrick##156651
turnin Enhanced Combat Tactics##59339 |goto 58.37,74.63
|only if Monk
step
talk Alaria##156607
accept Northbound##55173 |goto 58.36,74.47
|only if Monk
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto 62.72,69.87
|only if Monk
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto 58.37,74.64
|only if Paladin
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick as she walks.
|tip She doesn't always run to the same location.
kill Captain Garrick##164577
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Paladin
step
talk Captain Garrick##156651
turnin Enhanced Combat Tactics##59254 |goto 58.37,74.63
|only if Paladin
step
talk Alaria##156607
accept Northbound##55173 |goto 58.36,74.47
|only if Paladin
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto 62.72,69.87
|only if Paladin
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto 58.37,74.64
|only if Priest
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick as she walks.
|tip She doesn't always run to the same location.
kill Captain Garrick##164577
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Priest
step
talk Captain Garrick##156651
turnin Enhanced Combat Tactics##59254 |goto 58.37,74.63
|only if Priest
step
talk Alaria##156607
accept Northbound##55173 |goto 58.36,74.47
|only if Priest
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto 62.72,69.87
|only if Priest
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto 58.37,74.63
|only if Rogue
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick as she walks.
|tip She doesn't always run to the same location.
kill Captain Garrick##164577
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Rogue
step
talk Captain Garrick##156651
turnin Enhanced Combat Tactics##59254 |goto 58.37,74.63
|only if Rogue
step
talk Alaria##156607
accept Northbound##55173 |goto 58.36,74.47
|only if Rogue
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto 62.72,69.87
|only if Rogue
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto 58.37,74.64
|only if Shaman
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick as she walks.
|tip She doesn't always run to the same location.
kill Captain Garrick##164577
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Shaman
step
talk Captain Garrick##156651
turnin Enhanced Combat Tactics##59254 |goto 58.37,74.63
|only if Shaman
step
talk Alaria##156607
accept Northbound##55173 |goto 58.36,74.47
|only if Shaman
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto 62.72,69.87
|only if Shaman
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto 58.37,74.64
|only if Warlock
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick as she walks.
|tip She doesn't always run to the same location.
kill Captain Garrick##164577
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Warlock
step
talk Captain Garrick##156651
turnin Enhanced Combat Tactics##59254 |goto 58.37,74.63
|only if Warlock
step
talk Alaria##156607
accept Northbound##55173 |goto 58.36,74.47
|only if Warlock
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto 62.72,69.87
|only if Warlock
step
talk Captain Garrick##156651
accept Enhanced Combat Tactics##59254 |goto 58.37,74.63
|only if Warrior
step
_Nearby:_
Watch the dialogue
|tip Follow Captain Garrick as she walks.
|tip She doesn't always run to the same location.
kill Captain Garrick##164577
|tip Read what she says while you fight her.
|tip Use your abilities when she tells you to.
Prove Your Abilities Against Captain Garrick |q 59254/1
|only if Warrior
step
talk Captain Garrick##156651
turnin Enhanced Combat Tactics##59254 |goto 58.37,74.64
|only if Warrior
step
talk Alaria##156607
accept Northbound##55173 |goto 58.36,74.47
|only if Warrior
step
talk Austin Huxworth##154327
turnin Northbound##55173 |goto 62.72,69.87
|only if Warrior
step
talk Austin Huxworth##154327
accept Forbidden Quilboar Necromancy##55184 |goto 62.72,69.86
accept Down with the Quilboar##55186 |goto 62.72,69.86
stickystart "Slay_Quilboars"
step
Follow the path |goto 61.53,62.70 < 20 |only if walking
kill Geolord Grek'og##151091 |q 55186/1 |goto 58.90,63.02
step
label "Slay_Quilboars"
Kill Quilboar enemies around this area
|tip They look like porcupine people.
Slay #7# Quilboars |q 55184/1 |goto 61.03,61.27
step
talk Austin Huxworth##149915
turnin Forbidden Quilboar Necromancy##55184 |goto 56.26,59.17
step
talk Lindie Springstock##149899
turnin Down with the Quilboar##55186 |goto 56.17,59.12
accept The Scout-o-Matic 5000##55193 |goto 56.17,59.12
step
Watch the dialogue
clicknpc Scout-o-Matic 5000##156518
Begin Flying with the Scout-o-Matic 5000 |invehicle |goto 56.05,58.80 |q 55193
step
Watch the dialogue
|tip You will fly automatically.
Use the Scout-o-Matic 5000 to Scout the Area |q 55193/1 |goto 55.04,54.20 |notravel
step
Watch the dialogue
|tip You will fly automatically.
Return to Lindie Springstock |outvehicle |goto 56.07,58.80 |q 55193 |notravel
step
talk Lindie Springstock##149899
turnin The Scout-o-Matic 5000##55193 |goto 56.17,59.12
accept Re-sizing the Situation##56034 |goto 56.17,59.12
step
use the Re-Sizer v9.0.1##170557
|tip Use it on Wandering Boars.
Test the Re-Sizer v9.0.1 on #3# Wandering Boars |q 56034/1 |goto 57.00,58.02
step
talk Captain Garrick##156280
turnin Re-sizing the Situation##56034 |goto 56.25,59.04
accept Ride of the Scientifically Enhanced Boar##55879 |goto 56.25,59.04
step
Watch the dialogue
clicknpc Giant Boar##156595
Ride the Giant Boar |q 55879/1 |goto 56.53,58.43
step
kill 8 Monstrous Cadaver##157091 |q 55879/2 |goto 53.05,53.84
|tip They look like the larger undead enemies around this area.
|tip Use the ability on your action bar.
step
kill Torgok##162817 |q 55879/3 |goto 51.01,52.80
|tip Inside the building.
step
Watch the dialogue
talk Henry Garrick##156799
turnin Ride of the Scientifically Enhanced Boar##55879 |goto 52.59,53.35
step
talk Captain Garrick##156807
accept Stocking Up on Supplies##55194 |goto 52.36,55.33
step
talk Quartermaster Richter##156800
|tip Buy any item you want that she has for sale.
Purchase Any Item from Quartermaster Richter |q 55194/1 |goto 52.23,55.31
step
talk Quartermaster Richter##156800
|tip Sell any items in your bags that you don't want.
Sell Any Item to Quartermaster Richter |q 55194/2 |goto 52.23,55.31
step
talk Captain Garrick##156807
turnin Stocking Up on Supplies##55194 |goto 52.36,55.33
step
talk Private Cole##156801
accept A Paladin's Service##58923 |goto 52.08,55.29
|only if Paladin
step
talk Private Cole##156801
accept A Priest's End##58953 |goto 52.08,55.29
|only if Priest
step
Look for the Corpses of the First Expedition Recruits |q 58953/1 |goto 56.10,53.69
|only if Priest
step
talk Branven Hammerheart##163108
turnin A Priest's End##58953 |goto 56.10,53.69
accept Resurrecting the Recruits##58960 |goto 56.10,53.69
|only if Priest
step
Resurrect the Expedition Recruit |q 58960/1 |goto 56.18,52.99 |count 1
|tip Use your "Resurrection" ability on the First Expedition Recruit.
|only if Priest
step
Resurrect the Expedition Recruit |q 58960/1 |goto 56.25,53.44 |count 2
|tip Use your "Resurrection" ability on the First Expedition Recruit.
|only if Priest
step
Resurrect the Expedition Recruit |q 58960/1 |goto 56.48,53.66 |count 3
|tip Use your "Resurrection" ability on the First Expedition Recruit.
|only if Priest
step
talk Branven Hammerheart##163108
turnin Resurrecting the Recruits##58960 |goto 56.10,53.69
|only if Priest
step
talk Private Cole##156801
accept A Rogue's End##58917 |goto 52.08,55.29
|only if Rogue
step
Follow the path |goto 48.07,54.33 < 20 |only if walking
talk Coulston Nereus##162972
|tip Use your "Stealth" ability to sneak by the elite bear that walks around this area.
Tell him _"I'm in. How do I make this poison?"_
Find the First Expedition's Rogue |q 58917/1 |goto 45.64,56.12
|only if Rogue
step
click Withering Hemlock
|tip Use your "Stealth" ability to sneak by the elite bear that walks around this area.
|tip Make sure the bear is far away, you will become unstealthed when you loot the plant.
collect Withering Hemlock##174916 |q 58917/2 |goto 44.77,56.43 |count 1
|only if Rogue
step
click Withering Hemlock
|tip Use your "Stealth" ability to sneak by the elite bear that walks around this area.
|tip Make sure the bear is far away, you will become unstealthed when you loot the plant.
collect Withering Hemlock##174916 |q 58917/2 |goto 45.18,55.69 |count 2
|only if Rogue
step
click Withering Hemlock
|tip Use your "Stealth" ability to sneak by the elite bear that walks around this area.
|tip Make sure the bear is far away, you will become unstealthed when you loot the plant.
collect Withering Hemlock##174916 |q 58917/2 |goto 45.09,54.67 |count 3
|only if Rogue
step
talk Coulston Nereus##163024
turnin A Rogue's End##58917 |goto 45.65,56.13
accept The Deadliest of Poisons##58933 |goto 45.65,56.13
|only if Rogue
step
Cast Instant Poison |q 58933/1
|tip Use your "Instant Poison" ability.
|only if Rogue
step
kill Gutgruk the Tough |q 58933/2 |goto 48.85,51.51
|tip He walks around this area along the road.
|only if Rogue
step
talk Private Cole##156801
turnin The Deadliest of Poisons##58933 |goto 52.08,55.29
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
talk Private Cole##156801
accept A Warlock's Bargain##58962 |goto 52.08,55.29
|only if Warlock
step
clicknpc Hubert Lucas##163209
Choose _<Rise and retrieve the warlock's grimoire and finish the ritual to summon a voidwalker.>_
Investigate the Dead Warlock's Body |q 58962/1 |goto 52.52,45.86
|only if Warlock
step
click Old Grimoire
Recover the Old Grimoire |q 58962/2 |goto 52.60,45.85
|only if Warlock
step
use the Old Grimoire##174947
Summon the Voidwalker with the Grimoire |q 58962/3 |goto 52.60,45.85
|only if Warlock
step
talk Summoned Voidwalker##163246
turnin A Warlock's Bargain##58962 |goto 52.61,45.44
|only if Warlock
step
talk Private Cole##156801
accept A Warrior's End##58914 |goto 52.08,55.29
|only if Warrior
step
Follow the path |goto 50.04,54.28 < 20 |only if walking
talk Hjalmar the Undying##162943
|tip He walks around this area on the bridge.
turnin A Warrior's End##58914 |goto 51.48,47.86
accept Hjalmar's Final Execution##58915 |goto 51.48,47.86
|only if Warrior
step
talk Hjalmar the Undying##162943
|tip He walks around this area on the bridge.
Tell him _"I'm ready to fight you, Hjalmar. I'll give you your warrior's death with Execute."_
Slay Hjalmar the Undying with Execute |q 58915/1 |goto 51.48,47.86
|tip Use your "Execute" ability for the final blow to kill him.
|only if Warrior
step
talk Private Cole##156801
turnin Hjalmar's Final Execution##58915 |goto 52.08,55.29
|only if Warrior
step
talk Bjorn Stouthands##154300
accept Westward Bound##55965 |goto 53.02,55.06
step
Watch the dialogue
talk Bjorn Stouthands##156891
|tip He runs to this location.
turnin Westward Bound##55965 |goto 51.18,59.61
step
talk Alaria##156803
accept Who Lurks in the Pit##55639 |goto 51.11,59.50
step
Run down the spiral ramp and enter the cave |goto 51.03,60.45 < 7 |walk
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 55639/1 |goto 52.05,60.01 |count 1
step
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 55639/1 |goto 50.28,58.69 |count 2
step
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 55639/1 |goto 49.69,61.95 |count 3
step
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 55639/1 |goto 51.97,60.72 |count 4
step
click Thick Cocoon
|tip Inside the cave.
Rescue the Trapped Expedition Member |q 55639/1 |goto 50.89,58.10 |count 5
step
kill Hrun the Exiled##156900
|tip Inside the cave.
Defeat Hrun to Rescue Ralia Dreamchaser |q 55639/2 |goto 47.41,60.48
step
Watch the dialogue
|tip Inside the cave.
clicknpc Ralia Dreamchaser##156929
|tip She will take you out of the cave.
Ride Ralia Dreamchaser to Escape |q 55639/3 |goto 47.78,60.28
step
talk Captain Garrick##156807
turnin Who Lurks in the Pit##55639 |goto 52.35,55.34
step
talk Ralia Dreamchaser##156932
accept A Druid's Form##59350 |goto 52.33,55.43
|only if Druid
step
click Druid Stone
Commune with the Druid Stone |q 59350/1 |goto 45.38,49.24
|only if Druid
step
talk Ralia Dreamchaser##156932
turnin A Druid's Form##59350 |goto 45.50,49.27
|only if Druid
step
talk Henry Garrick##156833
accept The Harpy Problem##55196 |goto 53.51,52.31
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
talk Yorah##162998
Ask her _"What does the Light wish of me?"_
Speak with the Ghost Paladin |q 58923/1 |goto 57.57,52.21
|only if Paladin
step
talk Yorah##162998
turnin A Paladin's Service##58923 |goto 57.57,52.21
accept The Divine's Shield##58946 |goto 57.57,52.21
|only if Paladin
step
Use Divine Shield |q 58946/1
|tip Use your "Divine Shield" ability.
|tip HURRY in the next step.
|only if Paladin
step
click Necrotic Altar
Destroy the Necrotic Altar |q 58946/2 |goto 57.15,52.66
|only if Paladin
step
talk Yorah##162998
turnin The Divine's Shield##58946 |goto 57.57,52.21
|only if Paladin
step
Watch the dialogue
talk Lightspawn##157114
turnin Freeing the Light##54933 |goto 58.19,50.21
step
talk Henry Garrick##156859
turnin The Harpy Problem##55196 |goto 56.83,46.18
accept The Rescue of Meredy Huntswell##55763 |goto 56.83,46.18
accept Purge the Totems##55881 |goto 56.83,46.18
step
talk Kee-La##156860
accept Harpy Culling##55764 |goto 56.93,46.25
stickystart "Slay_Harpies_And_Cohorts"
step
click Harpy Totem
Burn the Harpy Totem |q 55881/1 |goto 58.21,44.49 |count 1
step
click Harpy Totem
Burn the Harpy Totem |q 55881/1 |goto 58.85,42.94 |count 2
step
click Harpy Totem
Burn the Harpy Totem |q 55881/1 |goto 61.23,41.30 |count 3
step
click Harpy Totem
Burn the Harpy Totem |q 55881/1 |goto 59.00,39.08 |count 4
step
click Harpy Totem
Burn the Harpy Totem |q 55881/1 |goto 57.17,42.21 |count 5
step
talk Meredy Huntswell##153211
Tell her _"I'll fight the harpies that come. Can you use your magic to break free?"_
Kill the enemies that attack in waves
|tip Your allies will help you fight.
kill Bloodbeak##153964
|tip It looks like a large bird that flies down and attacks you.
Rescue Meredy Huntswell |q 55763/1 |goto 54.29,41.61
step
label "Slay_Harpies_And_Cohorts"
Kill enemies around this area
Slay #10# Harpies and Cohorts |q 55764/1 |goto 57.17,42.21
step
talk Kee-La##156860
turnin Harpy Culling##55764 |goto 56.93,46.25
step
talk Meredy Huntswell##156882
turnin The Rescue of Meredy Huntswell##55763 |goto 56.91,46.14
step
talk Henry Garrick##156859
turnin Purge the Totems##55881 |goto 56.83,46.18
accept Message to Base##55882 |goto 56.83,46.18
step
talk Captain Garrick##156807
turnin Message to Base##55882 |goto 52.35,55.34
step
talk Austin Huxworth##161666
accept A Hunter's Trap##59355 |goto 52.41,55.25
|only if Hunter
step
talk Meredy Huntswell##156886
Ask her _"Meredy, do you have an ice mote I could have?"_
Receive an Ice Mote from Meredy Huntswell |q 59355/1 |goto 52.29,55.47
|only if Hunter
step
click Rusted Chains
collect Rusted Chain##175981 |q 59355/2 |goto 52.24,53.03
|only if Hunter
step
click Old Spring
collect Old Spring##175980 |q 59355/3 |goto 51.83,51.63
|only if Hunter
step
talk Austin Huxworth##161666
turnin A Hunter's Trap##59355 |goto 52.41,55.25
accept Hunting the Stalker##59356 |goto 52.41,55.25
|only if Hunter
step
cast Freezing Trap##187650
Watch the dialogue
Capture the Stalker |q 59356/1 |goto 52.40,54.36
|only if Hunter
step
Watch the dialogue
talk Austin Huxworth##161666
|tip He walks to this location.
turnin Hunting the Stalker##59356 |goto 52.41,55.26
accept The Art of Taming##60168 |goto 52.41,55.26
|only if Hunter
step
cast Dismiss Pet##2641
Temporarily Dismiss Your Current Pet |q 60168/1 |goto 52.41,55.26
|only if Hunter
step
talk Austin Huxworth##161666
Tell him _"I'm ready to tame my pet, call them out."_
Watch the dialogue
cast Tame Beast##1515
|tip Cast it on the beast that appears nearby.
Speak with Austin to Summon and Tame Your New Pet |q 60168/2 |goto 52.41,55.26
|only if Hunter
step
talk Austin Huxworth##161666
Tell him _"I'd like to stable my pet here."_
Speak with Austin to Learn About Pet Stables |q 60168/3 |goto 52.41,55.26
|only if Hunter
step
talk Austin Huxworth##161666
turnin The Art of Taming##60168 |goto 52.41,55.26
|only if Hunter
step
talk Meredy Huntswell##156886
accept A Mage's Knowledge##59352 |goto 52.29,55.47
|only if Mage
step
click Meredy's Spellbook
|tip Underwater.
Recover Meredy's Book from the Lake |q 59352/1 |goto 51.95,49.84
|only if Mage
step
talk Meredy Huntswell##156886
turnin A Mage's Knowledge##59352 |goto 52.29,55.47
|only if Mage
step
Watch the dialogue
talk Meredy Huntswell##156886
accept The Best Way to Use Sheep##59354 |goto 52.29,55.46
|only if Mage
step
talk Meredy Huntswell##156886
Tell her _"I'm ready to practice polymorph."_
Speak with Meredy to Begin Sparring |q 59354/1 |goto 52.29,55.46
|only if Mage
step
Practice Polymorph with Cole |q 59354/2 |goto 53.68,55.67
|tip Use your "Polymorph" ability on Private Cole.
|tip Attack him when Meredy tells you to.
|only if Mage
step
talk Meredy Huntswell##156886
turnin The Best Way to Use Sheep##59354 |goto 52.29,55.46
|only if Mage
step
talk Kee-La##156885
accept A Monk's Focus##59347 |goto 52.14,55.67
|only if Monk
step
talk Kee-La##164835
Tell her _"I'm ready, let's begin to meditate."_
Watch the dialogue
Meditate with Kee-La |q 59347/1 |goto 52.62,49.49
|only if Monk
step
talk Kee-La##164835
turnin A Monk's Focus##59347 |goto 52.62,49.49
accept One Last Spar##59349 |goto 52.62,49.49
|only if Monk
step
kill Kee-La##164868
|tip Use your "Touch of Death" ability on her when she has lower health than you.
|tip You will see the ability glow on your action bar when you are able to use it.
Use Touch of Death on Kee-La |q 59349/1 |goto 53.48,49.92
|only if Monk
step
talk Captain Garrick##156807
turnin One Last Spar##59349 |goto 52.35,55.34
|only if Monk
step
talk Captain Garrick##156807
accept To Darkmaul Citadel##56344 |goto 52.35,55.34
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
talk Captain Garrick##156941
|tip She runs to this location.
turnin To Darkmaul Citadel##56344 |goto 48.98,49.24
accept Right Beneath Their Eyes##55981 |goto 48.98,49.24
step
talk Meredy Huntswell##156943
Tell her _"I'm ready, transform me into an ogre and I'll sneak into their citadel."_
Watch the dialogue
Ask Meredy to Perform Ogre Transformation Spell |q 55981/1 |goto 49.04,49.20
step
Enter Darkmaul Citadel |q 55981/2 |goto 45.66,44.57
step
Find the Ogre Cooking Area |q 55981/3 |goto 45.69,37.57
step
Wave to Gor'groth |script DoEmote("WAVE") |q 55981/4 |goto 45.69,37.57
|tip Perform the "/wave" emote while targeting Gor'groth.
step
Reach the Citadel Entrance |q 55981/6 |goto 41.04,32.92
step
Watch the dialogue
talk Captain Garrick##156961
turnin Right Beneath Their Eyes##55981 |goto 40.15,32.36
accept Controlling their Stones##55990 |goto 40.15,32.36
step
talk Henry Garrick##156942
accept Like Ogres to the Slaughter##55988 |goto 40.23,32.35
step
talk Meredy Huntswell##156960
accept Catapult Destruction##55989 |goto 40.27,32.33
stickystart "Slay_Ogres"
step
Enter the building |goto 44.20,36.39 < 10 |walk
kill Wug##153582
|tip Inside the building.
Recover Wug's Ward Stone |q 55990/2 |goto 44.16,37.34
step
Enter the building |goto 47.17,34.94 < 10 |walk
kill Jugnug##153583
|tip Inside the building.
Recover Jugnug's Ward Stone |q 55990/1 |goto 47.55,34.19
step
click Catapult
Destroy the Catapult |q 55989/1 |goto 47.05,36.37 |count 1
step
click Catapult
Destroy the Catapult |q 55989/1 |goto 46.19,39.41 |count 2
step
click Catapult
Destroy the Catapult |q 55989/1 |goto 45.08,41.59 |count 3
step
click Catapult
Destroy the Catapult |q 55989/1 |goto 43.87,42.61 |count 4
step
Enter the building |goto 43.35,41.15 < 10 |walk
kill Grunk##153581
|tip Inside the building.
Recover Grunk's Ward Stone |q 55990/3 |goto 42.82,40.97
step
label "Slay_Ogres"
Kill Ogre enemies around this area
Slay #8# Ogres |q 55988/1 |goto 45.75,39.09
step
talk Meredy Huntswell##156960
turnin Catapult Destruction##55989 |goto 40.26,32.33
step
talk Henry Garrick##156942
turnin Like Ogres to the Slaughter##55988 |goto 40.22,32.35
step
click Ogre Runestone
Disable the Rune Holding Captain Kelra |q 55990/4 |goto 39.96,32.44 |count 1
step
click Ogre Runestone
Disable the Rune Holding Captain Kelra |q 55990/4 |goto 39.75,32.07 |count 2
step
click Ogre Runestone
Disable the Rune Holding Captain Kelra |q 55990/4 |goto 40.05,31.98 |count 3
step
Watch the dialogue
talk Captain Kelra##156965
turnin Controlling their Stones##55990 |goto 39.92,32.14
accept Dungeon: Darkmaul Citadel##55992 |goto 39.92,32.14
step
Open the Group Finder
|tip Press "I" to open the Group Finder.
Enter the Darkmaul Citadel Dungeon |q 55992/1
step
_Inside the Dungeon:_
kill Ravnyr##156501
|tip He is the final boss of the dungeon.
|tip Follow Captain Garrick through the dungeon.
Stop Gor'groth's Final Ritual |q 55992/2
step
_Inside the Dungeon:_
talk Captain Garrick##161350
|tip Nearby, after killing the final boss.
Tell her _"Let's get out of the citadel and figure out how to get back home."_
Speak with Captain Garrick to Leave Darkmaul Citadel |q 55992/3
step
Watch the dialogue
talk Captain Garrick##156961
turnin Dungeon: Darkmaul Citadel##55992 |goto Exile's Reach/0 39.66,31.99
accept An End to Beginnings##55991 |goto Exile's Reach/0 39.66,31.99
step
clicknpc Alliance Gryphon##154155
Watch the dialogue
Ride the Alliance Gryphon Back to Stormwind City |q 55991/1 |goto 40.38,32.63
step
Reach Stormwind City |offtaxi |q 55991
step
talk Captain Garrick##154169
turnin An End to Beginnings##55991 |goto Stormwind City/0 73.69,91.29
step
talk Captain Garrick##154169
|tip If you've already completed this quest on a previous character, you can skip it.
accept Welcome to Stormwind##59583 |goto 73.69,91.29 |or |next "Welcome_To_Stormwind" |noautoaccept
_Or_
Tell her _"I know my way around Stormwind. <Skip the city tour and choose a Timewalking Campaign.>"_
accept Adventurers Wanted: Chromie's Call##62567 |goto 73.69,91.29 |or |next "Leveling Guides\\Starter Guides\\Chromie Time" |noautoaccept
step
label "Welcome_To_Stormwind"
talk Lindie Springstock##163095
turnin Welcome to Stormwind##59583 |goto 70.14,85.30
accept Finding Your Way##58908 |goto 70.14,85.30
step
talk Stormwind City Guard##68
Tell them _"Stable Master"_
Tell them _"Old Town Stable Master"_
Ask a Guard for Directions to the Stable Master in Old Town |q 58908/1 |goto 69.47,84.58
step
talk Lindie Springstock##163095
Tell him _"Let's head to the Old Town stables."_
Speak with Lindie Springstock |q 58908/2 |goto 69.79,83.82
step
Watch the dialogue
|tip Follow Lindie Springstock as he walks.
|tip Stay close to him.
|tip He eventually walks to this location.
Follow Lindie Springstock to the Stable Master in Old Town |q 58908/3 |goto 77.62,67.29
step
talk Curly##163007
turnin Finding Your Way##58908 |goto 77.28,66.95
accept License to Ride##58909 |goto 77.28,66.95
step
talk Darlene Stokx##43693
|tip She walks around this area on a horse.
Learn the Apprentice Riding Skill |q 58909/1 |goto 77.40,67.76
step
talk Curly##163007
turnin License to Ride##58909 |goto 77.28,66.94
step
_Next to you:_
talk Lindie Springstock##163097
accept What's Your Specialty?##58910
|only if Druid
step
Enter the building |goto 79.21,68.18 < 7 |walk
talk Mithlos Falconbriar##164962
|tip Upstairs inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Mithlos Falconbriar to Learn About Specializations |q 58910/1 |goto 79.20,68.69
|only if Druid
step
Activate a Combat Specialization |q 58910/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Druid
step
talk Mithlos Falconbriar##164962
|tip Upstairs inside the building.
turnin What's Your Specialty?##58910 |goto 79.20,68.69
|only if Druid
step
_Next to you:_
talk Lindie Springstock##163097
accept What's Your Specialty?##59586
|only if Hunter
step
Enter the building |goto 79.21,68.18 < 10 |walk
talk Dalgrun Steelpine##164960
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Dalgrun Steelpine to Learn About Specializations |q 59586/1 |goto 79.13,71.42
|only if Hunter
step
Activate a Combat Specialization |q 59586/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Hunter
step
talk Dalgrun Steelpine##164960
|tip Inside the building.
turnin What's Your Specialty?##59586 |goto 79.13,71.42
|only if Hunter
step
_Next to you:_
talk Lindie Springstock##163097
accept What's Your Specialty?##59587
|only if Mage
step
Enter the building |goto 79.21,68.18 < 7 |walk
talk Frazzle Frostfingers##164955
|tip Upstairs inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Frazzle Frostfingers to Learn About Specializations |q 59587/1 |goto 80.16,69.52
|only if Mage
step
Activate a Combat Specialization |q 59587/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Mage
step
talk Frazzle Frostfingers##164955
|tip Inside the building.
turnin What's Your Specialty?##59587 |goto 80.16,69.52
|only if Mage
step
_Next to you:_
talk Lindie Springstock##163097
accept What's Your Specialty?##59588
|only if Monk
step
Enter the building |goto 79.21,68.18 < 7 |walk
talk Juisheng Halfclaw##164954
|tip Upstairs inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Juisheng Halfclaw to Learn About Specializations |q 59588/1 |goto 80.34,70.06
|only if Monk
step
Activate a Combat Specialization |q 59588/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Monk
step
talk Juisheng Halfclaw##164954
|tip Inside the building.
turnin What's Your Specialty?##59588 |goto 80.34,70.06
|only if Monk
step
_Next to you:_
talk Lindie Springstock##163097
accept What's Your Specialty?##59589
|only if Paladin
step
Enter the building |goto 79.21,68.18 < 7 |walk
talk Ezul'aan##164952
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Ezul'aan to Learn About Specializations |q 59589/1 |goto 79.15,69.48
|only if Paladin
step
Activate a Combat Specialization |q 59589/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Paladin
step
talk Ezul'aan##164952
|tip Inside the building.
turnin What's Your Specialty?##59589 |goto 79.15,69.48
|only if Paladin
step
_Next to you:_
talk Lindie Springstock##163097
accept What's Your Specialty?##59590
|only if Priest
step
Enter the building |goto 79.21,68.18 < 7 |walk
talk Patrice Lancaster##164949
|tip Inside the building.
Tell her _"Tell me about my specialization options."_
Speak with Patrice Lancaster to Learn About Specializations |q 59590/1 |goto 78.93,69.77
|only if Priest
step
Activate a Combat Specialization |q 59590/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Priest
step
talk Patrice Lancaster##164949
|tip Inside the building.
turnin What's Your Specialty?##59590 |goto 78.93,69.77
|only if Priest
step
_Next to you:_
talk Lindie Springstock##163097
accept What's Your Specialty?##59591
|only if Rogue
step
Enter the building |goto 79.21,68.18 < 7 |walk
talk Veruca Darkstream##164946
|tip Downstairs inside the building.
Tell her _"Tell me about my specialization options."_
Speak with Ezul'aan to Learn About Specializations |q 59591/1 |goto 78.53,70.77
|only if Rogue
step
Activate a Combat Specialization |q 59591/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Rogue
step
talk Veruca Darkstream##164946
|tip Downstairs inside the building.
turnin What's Your Specialty?##59591 |goto 78.53,70.77
|only if Rogue
step
_Next to you:_
talk Lindie Springstock##163097
accept What's Your Specialty?##59592
|only if Shaman
step
Enter the building |goto 79.21,68.18 < 7 |walk
talk Mulric Boldrock##164945
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Mulric Boldrock to Learn About Specializations |q 59592/1 |goto 78.71,70.89
|only if Shaman
step
Activate a Combat Specialization |q 59592/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Shaman
step
talk Mulric Boldrock##164945
|tip Inside the building.
turnin What's Your Specialty?##59592 |goto 78.71,70.89
|only if Shaman
step
_Next to you:_
talk Lindie Springstock##163097
accept What's Your Specialty?##59593
|only if Warlock
step
Enter the building |goto 79.21,68.18 < 7 |walk
talk Laphandrus Voidheart##164941
|tip Downstairs inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Laphandrus Voidheart to Learn About Specializations |q 59593/1 |goto 78.97,69.61
|only if Warlock
step
Activate a Combat Specialization |q 59593/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Warlock
step
talk Laphandrus Voidheart##164941
|tip Downstairs inside the building.
turnin What's Your Specialty?##59593 |goto 78.97,69.61
|only if Warlock
step
_Next to you:_
talk Lindie Springstock##163097
accept What's Your Specialty?##59594
|only if Warrior
step
Enter the building |goto 79.21,68.18 < 7 |walk
talk Kualiang Thunderfist##164940
|tip Inside the building.
Tell him _"Tell me about my specialization options."_
Speak with Kualiang Thunderfist to Learn About Specializations |q 59594/1 |goto 80.02,70.70
|only if Warrior
step
Activate a Combat Specialization |q 59594/2
|tip Press "N", choose a specialization, and click the "Activate" button.
|only if Warrior
step
talk Kualiang Thunderfist##164940
|tip Inside the building.
turnin What's Your Specialty?##59594 |goto 80.02,70.70
|only if Warrior
step
_Next to you:_
talk Lindie Springstock##163097
accept Home Is Where the Hearth Is##58911
step
Enter the building |goto 75.13,55.30 < 10 |walk |only if not subzone("Pig and Whistle Tavern")
talk Maegan Tillman##44237
|tip Inside the building.
Choose _"Make this inn your home."_
Make the Pig and Whistle Tavern Your Home |q 58911/1 |goto 75.69,54.10
step
talk Maegan Tillman##44237
|tip Inside the building.
turnin Home Is Where the Hearth Is##58911 |goto 75.69,54.10
step
Watch the dialogue
|tip Inside the building.
talk Henry Garrick##163211
|tip He walks to this location.
accept An Urgent Meeting##58912 |goto 75.24,54.32
step
talk Lindie Springstock##163095
|tip Inside the building.
Tell him _"I must go. King Wrynn is waiting for me at Stormwind Keep."_
Speak with Lindsie Springstock |q 58912/1 |goto 75.64,53.95
step
Leave the building |goto 75.13,55.30 < 10 |walk |only if subzone("Pig and Whistle Tavern")
Enter the building |goto 80.62,37.88 < 15 |walk
Find Captain Garrick in Stormwind Keep |q 58912/2 |goto 85.22,32.06
|tip Inside the building.
step
talk Captain Garrick##163219
|tip Inside the building.
turnin An Urgent Meeting##58912 |goto 85.22,32.06
accept Tides of War##58983 |goto 85.22,32.06
step
Watch the dialogue
|tip Inside the building.
Attend the War Council |q 58983/1 |goto 85.22,32.06
step
talk Anduin Wrynn##165395
|tip Inside the building.
turnin Tides of War##58983 |goto 85.91,31.57
accept The Nation of Kul Tiras##59641 |goto 85.91,31.57
step
talk Captain Garrick##163219
|tip Inside the building.
Tell her _"This is where we part ways, Captain. Thank you for everything."_
Speak with Captain Garrick |q 59641/1 |goto 85.22,32.05
step
talk Loretta Banks##165505
Tell her _"I need to meet with Jaina Proudmoore at the docks."_
Take a Gryphon to the Docks |q 59641/2 |goto Stormwind City/0 77.71,39.26
step
Fly to Stormwind Harbor |goto 26.92,25.44 < 10 |c |q 59641 |notravel
step
talk Lady Jaina Proudmoore##120590
Tell her _"I'm ready to set sail!"_
_Or_
Tell her _"I've heard this tale before... <Skip the Kul Tiras introductory quests and begin your journey in Boralus.>"_
|tip You will only be able to select this option if you've already completed the introductory quests on a previous character.
Speak with Lady Jaina Proudmoore |q 59641/3 |goto 22.79,24.69
step
Travel to Boralus |complete zone("Boralus") |q 59641
step
talk Lady Jaina Proudmoore##120922
turnin The Nation of Kul Tiras##59641 |goto Boralus/0 65.57,50.75
accept Daughter of the Sea##51341 |goto Boralus/0 65.57,50.75
step
Watch the dialogue
|tip You will be teleported automatically.
Attend the Audience with Katherine Proudmoore |q 51341/1
step
Travel to Tol Dagor |complete zone("Tol Dagor Isle") |q 51341
step
talk Flynn Fairwind##121239
|tip Inside the building.
turnin Daughter of the Sea##51341 |goto Tol Dagor Isle/0 47.38,46.26
accept Out Like Flynn##47098 |goto Tol Dagor Isle/0 47.38,46.26
step
Watch the dialogue
|tip Inside the building.
clicknpc Flynn Fairwind##121239
|tip He walks to this location.
Punch Flynn |q 47098/1 |goto 46.63,45.52
step
Watch the dialogue
|tip Inside the building.
click Cell Block Lever
Pull the Cell Block Lever |q 47098/2 |goto 46.60,41.15
step
click Equipment Locker##213651
|tip Inside the building.
Recover the Equipment |q 47098/3 |goto 46.95,44.47
step
kill Block Warden Carmine##124024 |q 47098/4 |goto 40.28,54.77
|tip Inside the building.
step
click Glittering Gunpowder
|tip Inside the building.
collect Glittering Gunpowder##160326 |q 47098/5 |goto 43.57,54.08
step
click Cell Block Gate
|tip Inside the building.
Watch the dialogue
Open the Cell Block Gate |q 47098/6 |goto 43.09,36.95
step
Run down the stairs |goto 44.58,35.82 < 10 |walk
Enter the Sewers |q 47098/7 |goto 39.10,51.40
|tip Walk into the tunnel.
|tip Downstairs inside the building.
step
Follow the path through the tunnel to the exit |goto 51.12,47.46 < 10 |walk
clicknpc Getaway Boat##124030
|tip Run around the mountain.
Board the Getaway Boat |q 47098/8 |goto 60.98,26.32
step
Watch the dialogue
Travel to Boralus |complete zone("Boralus") |q 47098
step
talk Taelia##121235
turnin Out Like Flynn##47098 |goto Boralus/0 75.70,23.59
accept Get Your Bearings##47099 |goto Boralus/0 75.70,23.59
step
Watch the dialogue
Visit the Ferry Dock |q 47099/1 |goto 74.25,24.58
step
Run up the stairs and enter the building |goto 75.57,19.08 < 10 |walk
Watch the dialogue
|tip Inside the building.
Visit the Tradewinds Counting House |q 47099/2 |goto 75.57,17.92
step
Enter the building |goto 73.55,13.71 < 10 |walk
Watch the dialogue
|tip Inside the building.
Visit the Snug Harbor Tavern |q 47099/3 |goto 73.63,13.05
step
talk Wesley Rockhold##135153
|tip Inside the building.
home The Snug Harbor |goto 74.12,12.68 |q 47189 |future
step
Watch the dialogue
Visit the Flight Master |q 47099/4 |goto 67.14,15.35
step
talk Joan Weber##124725
fpath Tradewinds Market |goto 66.97,15.01
step
_Next to you:_
talk Taelia
turnin Get Your Bearings##47099
accept The Old Knight##46729
step
Jump down and enter the building |goto 68.83,21.11 < 10 |walk
Watch the dialogue
|tip Inside the building.
Find Cyrus Crestfall |q 46729/1 |goto 67.08,23.47
step
Watch the dialogue
|tip Inside the building.
talk Cyrus Crestfall##122370
Choose _<Shake his hand.>_
Speak with Cyrus Crestfall |q 46729/2 |goto 68.01,21.89
step
Watch the dialogue
|tip Inside the building.
Hear Cyrus' Tale |q 46729/3 |goto 68.01,21.89
step
talk Taelia##121235
|tip Inside the building.
turnin The Old Knight##46729 |goto 68.17,21.97
accept Sanctum of the Sages##47186 |goto 68.17,21.97
step
Watch the dialogue
talk Cyrus Crestfall##122370
|tip Inside the building.
accept Ferry Pass##52128 |goto 68.01,21.89
step
talk Cyrus Crestfall##122370
|tip Inside the building.
turnin Ferry Pass##52128 |goto 68.01,21.89
step
talk Cyrus Crestfall##122370
|tip Inside the building.
turnin Ferry Pass##52128 |goto 68.01,21.89
step
Enter the building |goto 70.40,17.68 < 10 |walk
talk 7th Legion Magus##137066
|tip Inside the building.
Tell her _"The local authority has given us permission to open portals here."_
Speak with the 7th Legion Magus |q 47186/1 |goto 70.74,16.31
step
Enter the building |goto 68.83,21.11 < 10 |walk
talk Taelia##121235
|tip Inside the building.
turnin Sanctum of the Sages##47186 |goto  68.17,21.97
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Void Elf Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Azuremyst",
condition_valid=function() return raceclass('VoidElf') and not raceclass('DeathKnight') end,
condition_valid_msg="Void Elf only.",
condition_suggested=function() return raceclass('VoidElf') and level < 10.5 and not completedq(50305) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Alleria Windrunner##131345
accept For the Alliance##49788 |goto Telogrus Rift/0 28.54,22.27
step
talk Ambassador Moorgard##133362
turnin For the Alliance##49788 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##50305 |goto Stormwind City/0 53.06,15.26
step
click Hero's Call Board
Find the Hero's Call Board |q 50305/1 |goto 62.25,29.94
step
talk Keira Onyxraven##131347
turnin Stranger in a Strange Land##50305 |goto 62.49,29.73
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Lightforged Draenei Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Azuremyst",
condition_valid=function() return raceclass('LightforgedDraenei') and not raceclass('DeathKnight') end,
condition_valid_msg="Lightforged Draenei only.",
condition_suggested=function() return raceclass('LightforgedDraenei') and level < 10.5 and not completedq(50313) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Captain Fareeya##130993
accept For the Alliance##49772 |goto Vindicaar Scenario/1 49.22,43.80
step
talk Ambassador Moorgard##133362
turnin For the Alliance##49772 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##50313 |goto Stormwind City/0 53.06,15.26
step
click Hero's Call Board
Find the Hero's Call Board |q 50313/1 |goto 62.25,29.94
step
talk Vindicator Minkey##131334
turnin Stranger in a Strange Land##50313 |goto 62.49,29.73
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Dark Iron Dwarf Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Azuremyst",
condition_valid=function() return raceclass('DarkIronDwarf') and not raceclass('DeathKnight') end,
condition_valid_msg="Dark Iron Dwarf only.",
condition_suggested=function() return raceclass('DarkIronDwarf') and level < 10.5 and not completedq(53500) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Moira Thaurissan##144152
accept Fer the Alliance##51486 |goto Shadowforge City/0 56.43,31.84
step
talk Ambassador Moorgard##133362
turnin Fer the Alliance##51486 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##53500 |goto Stormwind City/0 53.06,15.26
step
click Hero's Call Board
Find the Hero's Call Board |q 53500/1 |goto 62.25,29.94
step
talk Mudrik Leger##143978
turnin Stranger in a Strange Land##53500 |goto 62.49,29.73
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Kul Tiran Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Azuremyst",
condition_valid=function() return raceclass('KulTiran') and not raceclass('DeathKnight') end,
condition_valid_msg="Kul Tiran only.",
condition_suggested=function() return raceclass('KulTiran') and level < 10.5 and not completedq(55146) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Katherine Proudmoore##150941
|tip Inside the building.
accept For the Alliance##55142 |goto Boralus/0 67.71,21.78
step
Enter the building |goto 70.38,17.72 < 7 |walk
click Portal to Stormwind
|tip Inside the building.
Take the Portal to Stormwind |q 55142/1 |goto 70.11,16.79
step
talk Ambassador Moorgard##133362
turnin For the Alliance##55142 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##55146 |goto Stormwind City/0 53.06,15.26
step
click Hero's Call Board
Find the Hero's Call Board |q 55146/1 |goto 62.25,29.94
step
talk Provisioner Fray##150947
turnin Stranger in a Strange Land##55146 |goto 62.49,29.73
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Starter Guides\\Mechagnome Starter",{
author="support@zygorguides.com",
image=ZGV.IMAGESDIR.."Azuremyst",
condition_valid=function() return raceclass('Mechagnome') and not raceclass('DeathKnight') end,
condition_valid_msg="Mechagnome only.",
condition_suggested=function() return raceclass('Mechagnome') and level < 10.5 and not completedq(58147) and not raceclass('DeathKnight') end,
condition_suggested_exclusive=true,
next="Leveling Guides\\Starter Guides\\Chromie Time",
startlevel=10,
endlevel=11,
},[[
step
talk Gelbin Mekkatorque##159587
accept For the Alliance##58146 |goto Mechagon City/1 18.65,67.50
step
Teleport to Stormwind |q 58146/1 |goto 20.44,59.96
|tip Walk onto the Stormwind Teleportation Unit.
step
talk Ambassador Moorgard##133362
turnin For the Alliance##58146 |goto Stormwind City/0 53.06,15.26
accept Stranger in a Strange Land##58147 |goto Stormwind City/0 53.06,15.26
step
click Hero's Call Board
Find the Hero's Call Board |q 58147/1 |goto 62.25,29.94
step
talk Lulana##160600
turnin Stranger in a Strange Land##58147 |goto 62.49,29.73
|next Leveling Guides\\Starter Guides\\Chromie Time
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Battle for Azeroth (10-60)\\Allied Race Death Knight Starter",{
author="support@zygorguides.com",
description="This guide will walk you through completing the brief introduction for Pandaren and Allied Race Death Knights.",
condition_suggested=function() return raceclass{'pandaren','voidelf','lightforgeddraenei','darkirondwarf','kultiran','mechagnome'} and raceclass('DeathKnight') and level < 10.5 end,
condition_suggested_exclusive=true,
condition_valid="suggested",
condition_valid_msg="You must be a Pandaren or Allied Race Death Knight to complete this guide!",
condition_end=function() return completedq(58902) end,
startlevel=10,
endlevel=11,
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
accept Defender of Azeroth##58902 |goto 49.51,90.71
step
talk Highlord Darion Mograine##161709
Tell him _"Reporting for duty."_
Speak with Highlord Darion Mograine |q 58902/1 |goto 50.70,71.16
step
click Death Gate
Use the Death Gate |q 58902/3 |goto 49.97,38.80
step
click Hero's Call Board
Use the Hero's Call Board |q 58902/4 |goto Stormwind City/0 62.91,71.54
step
Click the Complete Quest Box:
turnin Defender of Azeroth##58902
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
talk Chromie##167032
turnin Adventurers Wanted: Chromie's Call##62567 |goto Stormwind City/0 56.26,17.32
|only if haveq(62567) or completedq(62567)
step
_Are You Eligible For Chromie Time?_
|tip If you have another character who reached max level previously, you are eligible for Chromie Time.
|tip If not, you must level through the Battle for Azeroth zones before moving on to the Dragon Isles.
|tip Chromie Time allows you to choose a different expansion to level up to 60 in, before moving on to the Dragon Isles.
No - Level in Battle for Azeroth Zones	|confirm	|or	|next "Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Tiragarde Sound (10-60)"
Yes - Choose a Different Expansion	|confirm	|or	|next "Chromie_Time_Start"
step
label "Chromie_Time_Start"
talk Chromie##167032
Tell her _"Select a timeline."_
_Or_
Tell her _"I'd like to return to the present timeline, Chromie."_
|tip If you've already selected a different expansion, but want to return to leveling in the Battle for Azeroth zones, choose this.
Click Here After Choosing an Expansion |confirm |goto 56.26,17.32
step
_Which Expansion Did You Choose?_
Battle for Azeroth	|confirm	|or	|next "Leveling Guides\\Battle for Azeroth (10-60)\\Kul Tiras\\Tiragarde Sound (10-60)"
The Cataclysm		|confirm	|or	|next "The_Cataclysm"
Burning Crusade		|confirm	|or	|next "Burning_Crusade"
Wrath of the Lich King	|confirm	|or	|next "Wrath_Of_The_Lich_King"
Mists of Pandaria	|confirm	|or	|next "Mists_Of_Pandaria"
Warlords of Draenor	|confirm	|or	|next "Warlords_Of_Draenor"
Legion			|confirm	|or	|next "Legion"
step
label "The_Cataclysm"
accept Onward to Adventure: Eastern Kingdoms##60891
|tip You will accept this quest automatically.
step
click Hero's Call Board
Find the Hero's Call Board |q 60891/1 |goto Stormwind City/0 62.26,29.93
step
talk Chromie##172334
turnin Onward to Adventure: Eastern Kingdoms##60891 |goto 62.65,30.90
step
_Choose a Leveling Zone:_
|tip Browse your world map for Eastern Kingdoms and Kalimdor.
|tip Choose any zone that fits your character's level, and load the Leveling guide for that zone using the guide menu.
|tip Keep doing this until you reach level 50.
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Burning_Crusade"
accept To Outland!##60120 |or
accept Onward to Adventure: Outland##60959 |or
|tip You will accept one of these quests automatically.
step
Run up the ramp and enter the building |goto Stormwind City/0 50.12,87.47 < 7 |only if walking
talk Honor Hold Mage##150122
|tip Inside the building.
Tell him _"I must report to the Dark Portal."_
Talk to the Honor Hold Mage |q 60120/1 |goto Stormwind City/0 49.11,87.35
|only if haveq(60120)
step
Go Through the Dark Portal |q 60120/2 |goto Blasted Lands/0 55.01,54.17
|tip Walk into the huge green swirling portal.
|only if haveq(60120)
step
Travel to Hellfire Peninsula |q 60959/1 |goto Hellfire Peninsula/0 87.00,49.00
|only if haveq(60959)
step
Click the Complete Quest Box:
turnin To Outland!##60120 |only if haveq(60120) or completedq(60120)
turnin Onward to Adventure: Outland##60959 |only if haveq(60959) or completedq(60959)
step
_Begin Leveling in Burning Crusade:_
Click Here to Load the "Hellfire Peninsula (10-60)" Leveling Guide |confirm |next "Leveling Guides\\The Burning Crusade (10-60)\\Hellfire Peninsula (10-60)"
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Wrath_Of_The_Lich_King"
accept To Northrend!##60096			|or |only if haveq(60096)
accept Onward to Adventure: Northrend##60962	|or |only if haveq(60962)
|tip You will accept one of these quests automatically.
step
_Which Zone Do You Want to Start In?_
|tip You can start leveling in Wrath of the Lich King in either Borean Tundra or Howling Fjord.
|tip It doesn't matter, just preference.
Borean Tundra |confirm |next "Borean_Tundra"
Howling Fjord |confirm |next "Howling_Fjord"
step
label "Borean_Tundra"
talk Auctioneer Fitch##8719
|tip Inside the building.
buy Overcharged Capacitor##39682 |n
|tip This is needed for a future quest.
|tip If you can't get one, you can skip it.
collect Overcharged Capacitor##39682 |goto Stormwind City/0 61.16,70.79 |q 11650 |future
step
Locate the Boat to Borean Tundra |goto Stormwind City/0 17.17,25.82 < 15 |c |q 60096
|tip You may have to wait for the boat to arrive.
|only if haveq(60096)
step
Sail to Northrend |q 60096/1
|tip Ride the Boat to Borean Tundra.
|only if haveq(60096)
step
Travel to Northrend |q 60962/1 |goto Borean Tundra/0 60.00,67.00
|only if haveq(60962)
step
Click the Complete Quest Box:
turnin To Northrend!##60096 |only if haveq(60096) or completedq(60096)
turnin Onward to Adventure: Northrend##60962 |only if haveq(60962) or completedq(60962)
step
_Begin Leveling in Wrath of the Lich King:_
Click Here to Load the "Borean Tundra (10-60)" Leveling Guide |confirm |next "Leveling Guides\\Wrath of the Lich King (10-60)\\Borean Tundra (10-60)"
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Howling_Fjord"
Locate the Boat to Borean Tundra |goto Stormwind City/0 17.17,25.82 < 15 |c |q 60096
|tip You may have to wait for the boat to arrive.
|tip You will sail to Borean Tundra, then fly to Howling Fjord.
|only if haveq(60096)
step
Ride the Boat to Borean Tundra |goto Borean Tundra/0 60.00,67.00 < 10000 |noway |c |q 60096
|only if haveq(60096)
step
Sail to Northrend |q 60096/1 |goto Howling Fjord/0 59.76,63.24
|only if haveq(60096)
step
Travel to Northrend |q 60962/1 |goto Borean Tundra/0 60.00,67.00
|only if haveq(60962)
step
Click the Complete Quest Box:
turnin To Northrend!##60096 |only if haveq(60096) or completedq(60096)
turnin Onward to Adventure: Northrend##60962 |only if haveq(60962) or completedq(60962)
step
_Begin Leveling in Wrath of the Lich King:_
Click Here to Load the "Howling Fjord (10-60)" Leveling Guide |confirm |next "Leveling Guides\\Wrath of the Lich King (10-60)\\Howling Fjord (10-60)"
|tip
Click Here to Return to Chromie |confirm |next "Chromie_Time_Start"
step
label "Mists_Of_Pandaria"
accept To Pandaria!##60125
|tip You will accept this quest automatically.
step
Visit Stormwind Keep |q 60125/1 |goto Stormwind City/0 81.08,37.34
step
talk Rell Nightwind##55789
turnin To Pandaria!##60125 |goto 78.95,39.82
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
talk Sky Admiral Rogers##66292
turnin The Mission##29548 |goto The Jade Forest/0 42.03,92.75
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
Run up the ramp and enter the building |goto Stormwind City/0 50.12,87.47 < 7 |only if walking
talk Vanguard Battlemage##149626
|tip Inside the building.
Tell her _"I must help Khadgar. Send me to the Blasted Lands!"_
Talk to the Vanguard Battlemage |q 34398/1 |goto Stormwind City/0 48.86,87.37
step
talk Zidormi##141489
Tell her _"Take me back to the present."_
Travel to the Present |complete not ZGV.InPhase("Old Blasted Lands") |goto Blasted Lands/0 48.16,7.28 |q 34398
step
talk Araazi##85731
fpath Shattered Beachhead |goto Blasted Lands/0 67.64,27.97
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
accept The Legion Returns##40519 |or
accept Onward to Adventure: Broken Isles##60971 |or
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
