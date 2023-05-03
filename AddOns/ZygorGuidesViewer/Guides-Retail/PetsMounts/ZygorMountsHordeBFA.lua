local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Bloodflank Charger",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth, bloodflank, charger"},
mounts={295387},
patch='81500',
mounttype='Ground',
model={91388},
description="\nThis mount is acquired by earning the \"Two Sides to Every Tale\" achievement.",
},[[
step
Earn the "A Nation United" Achievement |achieve 13517/1 |complete hasmount(295387)
|tip Use the "A Nation United" achievement guide to accomplish this.
|tip This is an Alliance achievement.
step
Earn the "Tides of Vengeance" Achievement |achieve 13517/2 |complete hasmount(295387)
|tip Use the "Tides of Vengeance" achievement guide to accomplish this.
|tip This is an Alliance achievement.
step
Earn the "Zandalar Forever!" Achievement |achieve 13517/3 |complete hasmount(295387)
|tip Use the "Zandalar Forever!" achievement guide to accomplish this.
step
Earn the "Tides of Vengeance" Achievement |achieve 13517/4 |complete hasmount(295387)
|tip Use the "Tides of Vengeance" achievement guide to accomplish this.
step
collect Bloodflank Charger##168055 |complete hasmount(295387)
|tip You can find it in your mailbox.
step
use the Bloodflank Charger##168055
Learn the "Bloodflank Charger" Mount |learnmount Bloodflank Charger##295387
step
_Congratulations!_
You Collected the "Bloodflank Charger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Bloodgorged Crawg",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth, bloodgorged, crawg"},
mounts={250735},
patch='80100',
mounttype='Ground',
model={78858},
description="\nThis mount is acquired earning the \"Glory of the Uldir Raider\" achievement.",
},[[
step
Earn the "Elevator Music" Achievement |achieve 12937
|tip Use the "Elevator Music" achievement guide to accomplish this.
step
Earn the "Parental Controls" Achievement |achieve 12938
|tip Use the "Parental Controls" achievement guide to accomplish this.
step
Earn the "Thrash Mouth - All Stars" Achievement |achieve 12823
|tip Use the "Thrash Mouth - All Stars" achievement guide to accomplish this.
step
Earn the "What's in the Box?" Achievement |achieve 12828
|tip Use the "What's in the Box?" achievement guide to accomplish this.
step
Earn the "Now We Got Bad Blood" Achievement |achieve 12772
|tip Use the "Now We Got Bad Blood" achievement guide to accomplish this.
step
Earn the "Edgelords" Achievement |achieve 12830
|tip Use the "Edgelords" achievement guide to accomplish this.
step
Earn the "Existential Crisis" Achievement |achieve 12836
|tip Use the "Existential Crisis" achievement guide to accomplish this.
step
Earn the "Double Dribble" Achievement |achieve 12551
|tip Use the "Double Dribble" achievement guide to accomplish this.
step
collect Bloodgorged Crawg##163216
|tip You can find it in your mailbox.
step
use the Bloodgorged Crawg##163216
Learn the "Bloodgorged Crawg" Mount |learnmount Bloodgorged Crawg##250735
step
_Congratulations!_
You Collected the "Bloodgorged Crawg" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Frenzied Feltalon",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={280729},
patch='80100',
mounttype='Ground',
description="\nThis mount is acquired by earning the achievement \"A Horde of Hoofbeats\" which requires you to \n"..
"collect 400 mounts.",
},[[
step
Collect 400 different mounts
|tip Use our various mount guides to accomplish this.
Earn the "A Horde of Hoofbeats" Achievement |achieve 12934
step
use the Frenzied Feltalon##163981
|tip It will be in your mailbox.
Learn the "Frenzied Feltalon" Mount |learnmount Frenzied Feltalon##280729
step
_Congratulations!_
You Collected the "Frenzied Feltalon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Frostwolf Snarler",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"15th","Anniversary","Alterac","Valley","of","Olde"},
mounts={306421},
patch='82500',
mounttype='Ground',
model={92901},
description="\nThis mount is collected by completing the \"Alterac Valley of Olde\" achievement.",
},[[
step
collect Anniversary Gift##172014 |or
|tip You can find it in your mailbox.
'|q 57249 |future |or
step
use the Anniversary Gift##172014
accept A Timely Invitation##57249
step
talk Chromie##157113
turnin A Timely Invitation##57249 |goto Tanaris/18 53.59,54.96
accept Soldier of Time##57300 |goto 53.59,54.96
step
Earn the "Alterac Valley of Olde" Achievement |achieve 13930
|tip You will need to queue for the "Korrak's Revenge" battleground.
|tip Earn 200 Timewarped Badges by completing quests and objectives.
step
collect Frostwolf Snarler##172023 |or
|tip It should be in your mailbox.
'|learnmount Frostwolf Snarler##306421 |or
step
use the Frostwolf Snarler##172023
Learn the "Frostwolf Snarler" Mount |learnmount Frostwolf Snarler##306421
step
talk Chromie##157113
turnin Soldier of Time##57300 |goto 53.59,54.96
|only if readyq(57300) or completedq(57300)
step
_Congratulations!_
You Collected the "Frostwolf Snarler" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Highmountain Thunderhoof",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, achievement, horde"},
mounts={258060},
patch='73500',
mounttype='Ground',
model={81113},
condition_end=function() return hasmount(258060) end,
description="\nThis mount is acquired by completing the \"Allied Races: Highmountain Tauren\" achievement.",
},[[
step
accept The Call for Allies##49930 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Call for Allies##49930 |goto 37.77,81.16
step
Load the "Highmountain" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-50)\\Highmountain"
|tip Click the line above to load the guide.
|tip You must progress through the Highmountain guide until you earn the "Ain't No Mountain High Enough" achievement.
Earn the "Ain't No Mountain High Enough" Achievement |achieve 10059
step
Load the "Highmountain" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-50)\\Highmountain"
|tip Click the line above to load the guide.
|tip Completing certain quests in Highmountain award reputation with the Highmountain Tribe.
Load the "World Quests" Daily Guide |confirm |next "Dailies Guides\\Legion\\Azsuna World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests in Highmountain award reputation with the Highmountain Tribe.
Use Highmountain Tribe Reputation Insignias
|tip These are awarded from Order Hall missions, Highmountain Tribe emissary quests, and world quests in Highmountain.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##141341 |only if itemcount(141341) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##139024 |only if itemcount(139024) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##146944 |only if itemcount(146944) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##146938 |only if itemcount(146938) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##141990 |only if itemcount(141990) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##147412 |only if itemcount(147412) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##150928 |only if itemcount(150928) >= 1
Gain Exalted Reputation with the Highmountain Tribe |achieve 12292
step
talk Lady Sylvanas Windrunner##126065
accept A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Liadrin##126062
Ask her _"What do we know about the nightborne?"_
Speak with Liadrin About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.98,80.56
step
talk Baine Bloodhoof##125285
Ask him _"What do we know about the Hightmountain tauren?"_
Speak with Baine About the Highmountain Tauren |q 50242/1 |goto 38.18,81.10
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Highmountain Tauren.
Choose an Ally to Pursue |q 50242/3 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
turnin A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
accept A Second Ally For the Cause##50254 |goto Orgrimmar/1 37.77,81.15
|only if completedq(49614)
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Highmountain Tauren.
Choose an Ally to Pursue |q 50254/1 |goto 37.77,81.15
|only if completedq(49614)
step
talk Lady Sylvanas Windrunner##126065
turnin A Second Ally For the Cause##50254 |goto 37.77,81.15
|only if completedq(49614)
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
step
kill Shadow of Uul##125141+ |q 48067/2 |goto 55.36,51.33
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
step
Leave the building |goto 38.66,68.64 < 7 |walk
Follow the path |goto 39.57,69.43 < 7 |walk
Follow the path |goto 40.28,71.22 < 15 |only if walking
Enter the cave |goto 41.45,72.57 < 10 |walk
Follow the path |goto 42.01,72.77 < 10 |walk
Follow the path |goto 42.34,72.33 < 10 |walk
kill Shadow of Uul##125141+ |q 41764/3 |goto 43.52,73.29
kill Shadow Lurker##105069+ |q 41764/2 |goto 43.52,73.29
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
kill Shadowy Tendril##130418+ |q 41799/3 |goto 54.74,41.15
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
kill Necrodark Defiler##104888+ |q 41800/2 |goto 53.16,66.45
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
collect Shadowice Shard##136400 |q 41840/1 |goto 57.67,92.72
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
learnmount Highmountain Thunderhoof##258060 |use Highmountain Thunderhoof##155662 |future
step
_Congratulations!_
You Collected the "Highmountain Thunderhoof" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Mag'har Direwolf",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth, bloodgorged, crawg"},
mounts={267274},
patch='80100',
mounttype='Ground',
model={84468},
description="\nThis mount is acquired by unlocking the Mag'har Orc allied race.",
},[[
step
Earn the "Ready for War" Achievement |achieve 12509
|tip Progress through the "War Campaign" leveling guide until you earn this acheivement.
step
Reach Exalted Reputation with The Honorbound |complete rep('The Honorbound') == Exalted
|tip Use "The Honorbound" reputation guide to accomplish this.
step
Earn the "Allied Races: Mag'har Orc" Achievement |achieve 12518
|tip Use the "Mag'har Orc Race Unlock" leveling guide to accomplish this.
step
collect Mag'har Direwolf##161330 |complete hasmount(267274)
|tip It will be in your bags after earning the "Allied Races: Mag'har Orc" achievement.
step
use the Mag'har Direwolf##161330
Learn the "Mag'har Direwolf" Mount |learnmount Mag'har Direwolf##267274
step
_Congratulation!_
You Collected the "Mag'har Direwolf" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Nightborne Manasaber",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, achievement, horde"},
mounts={258845},
patch='73500',
mounttype='Ground',
model={74032},
condition_end=function() return hasmount(258845) end,
description="\nThis mount is acquired by completing the \"Allied Races: Nightborne\" achievement.",
},[[
step
accept The Call for Allies##49930 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Call for Allies##49930 |goto 37.77,81.16
step
Load the "Suramar (45-50)" Leveling Guide |confirm |next "Leveling Guides\\Legion (10-50)\\Suramar (45-50)"
|tip Click the line above to load the guide.
|tip You must progress through the Suramar guide until you earn the Insurrection achievement.
Earn the "Insurrection" Achievement |achieve 11340
step
Load the "World Quests" Daily Guide |confirm |next "Dailies Guides\\Legion\\Azsuna World Quests"
|tip Click the line above to load the guide.
|tip Complete world quests in Suramar to gain reputation.
About Ancient Mana:
|tip Click various objects on the ground all around Suramar to collect Ancient Mana.
|tip You can track the objects on your minimap by using the Mana Divining Stone.
|tip You get the Mana Divining Stone as a quest reward shortly into the Suramar (45-50) leveling guide.
|tip The best area of Suramar to collect Ancient Mana is Twilight Vineyards.
Feed Ancient Mana to These Nightfallen NPC's:
|tip First Arcanist Thalyssra
|tip Arcanist Valtrois
|tip Chief Telemancer Oculeth
|tip Their locations change as you complete quests in the Suramar (45-50) leveling guide.
Gain Exalted Reputation with the Nightfallen |goto Suramar/0 36.51,46.80 |region suramar_shalaran |achieve 10778
step
talk Lady Sylvanas Windrunner##126065
accept A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Liadrin##126062
Ask her _"What do we know about the nightborne?"_
Speak with Liadrin About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.98,80.56
step
talk Baine Bloodhoof##125285
Ask him _"What do we know about the Hightmountain tauren?"_
Speak with Baine About the Highmountain tauren |q 50242/1 |goto 38.18,81.10
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Nightborne Elves.
Choose an Ally to Pursue |q 50242/3 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
turnin A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
accept A Second Ally For the Cause##50254 |goto Orgrimmar/1 37.77,81.15
|only if completedq(48433)
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Nightborne Elves.
Choose an Ally to Pursue |q 50254/1 |goto 37.77,81.15
|only if completedq(48433)
step
talk Lady Sylvanas Windrunner##126065
turnin A Second Ally For the Cause##50254 |goto 37.77,81.15
|only if completedq(48433)
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
learnmount Nightborne Manasaber##258845 |use Nightborne Manasaber##156487 |future
step
_Congratulations!_
You Collected the "Nightborne Manasaber" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Obsidian Krolusk",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={239049},
patch='80100',
mounttype='Ground',
model={75600},
description="\nThis mount is acquired by earning the \"Glory of the Wartorn Hero\" achievement.",
},[[
step
Earn the "Pecking Order" Achievement |achieve 12550
|tip Use the "Pecking Order" achievement guide to accomplish this.
step
Earn the "I'm in Charge Now!" Achievement |achieve 12548
|tip Use the "I'm in Charge Now!" achievement guide to accomplish this.
step
Earn the "That Sweete Booty" Achievement |achieve 12998
|tip Use the "That Sweete Booty" achievement guide to accomplish this.
step
Earn the "Losing My Profession" Achievement |achieve 12489
|tip Use the "Losing My Profession" achievement guide to accomplish this.
step
Earn the "Run Wild Like a Man On Fire" Achievement |achieve 12495
|tip Use the "Run Wild Like a Man On Fire" achievement guide to accomplish this.
step
Earn the "Alchemical Romance" Achievement |achieve 12490
|tip Use the "Alchemical Romance" achievement guide to accomplish this.
step
Earn the "Breath of the Shrine" Achievement |achieve 12600
|tip Use the "Breath of the Shrine" achievement guide to accomplish this.
step
Earn the "The Void Lies Sleeping" Achievement |achieve 12601
|tip Use the "The Void Lies Sleeping" achievement guide to accomplish this.
step
Earn the "Trust No One" Achievement |achieve 12602
|tip Use the "Trust No One" achievement guide to accomplish this.
step
Earn the "Bringing Hexy Back" Achievement |achieve 12270
|tip Use the "Bringing Hexy Back" achievement guide to accomplish this.
step
Earn the "Gold Fever" Achievement |achieve 12272
|tip Use the "Gold Fever" achievement guide to accomplish this.
step
Earn the "It's Lit!" Achievement |achieve 12273
|tip Use the "It's Lit!" achievement guide to accomplish this.
step
Earn the "Not a Fun Guy" Achievement |achieve 12549
|tip Use the "Not a Fun Guy" achievement guide to accomplish this.
step
Earn the "Taint Nobody Got Time For That" Achievement |achieve 12498
|tip Use the "Taint Nobody Got Time For That" achievement guide to accomplish this.
step
Earn the "Sporely Alive" Achievement |achieve 12499
|tip Use the "Sporely Alive" achievement guide to accomplish this.
step
Earn the "Snake Eyes" Achievement |achieve 12503
|tip Use the "Snake Eyes" achievement guide to accomplish this.
step
Earn the "Snake Eater" Achievement |achieve 12507
|tip Use the "Snake Eater" achievement guide to accomplish this.
step
Earn the "Good Night, Sweet Prince" Achievement |achieve 12508
|tip Use the "Good Night, Sweet Prince" achievement guide to accomplish this.
step
Earn the "Remix to Ignition" Achievement |achieve 12457
|tip Use the "Remix to Ignition" achievement guide to accomplish this.
step
Earn the "Shot Through the Heart" Achievement |achieve 12462
|tip Use the "Shot Through the Heart" achievement guide to accomplish this.
step
Earn the "Pitch Invasion" Achievement |achieve 12855
|tip Use the "Pitch Invasion" achievement guide to accomplish this.
step
Earn the "Ready for Raiding VI" Achievement |achieve 12854
|tip Use the "Ready for Raiding VI" achievement guide to accomplish this.
step
Earn the "Stand by Me" Achievement |achieve 12727
|tip Use the "Stand by Me" achievement guide to accomplish this.
step
Earn the "A Fish Out of Water" Achievement |achieve 12726
|tip Use the "A Fish Out of Water" achievement guide to accomplish this.
step
Earn the "It Belongs In a Mausoleum!" Achievement |achieve 12722
|tip Use the "It Belongs In a Mausoleum!" achievement guide to accomplish this.
step
Earn the "How to Keep a Mummy" Achievement |achieve 12723
|tip Use the "How to Keep a Mummy" achievement guide to accomplish this.
step
Earn the "Wrap God" Achievement |achieve 12721
|tip Use the "Wrap God" achievement guide to accomplish this.
step
collect Reins of the Obsidian Krolusk##161215 |complete hasmount(239049)
step
use the Reins of the Obsidian Krolusk##161215
Learn the "Obsidian Krolusk" Mount |learnmount Obsidian Krolusk##239049
step
_Congratulations!_
You Collected the "Obsidian Krolusk" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Pureheart Courser",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={280730},
patch='80100',
mounttype='Ground',
model={83664},
description="\nThis mount is acquired by collect 400 mounts.",
},[[
step
Raise 100 different reputations to Exalted
|tip Use our various Reputation guides to accomplish this.
Earn the "100 Exalted Reputations" Achievement |achieve 12866
step
use the Pureheart Courser##163982
|tip You can find it in your mailbox
Learn the "Pureheart Courser" Mount |learnmount Pureheart Courser##280730
step
_Congratulations!_
You Collected the "Pureheart Courser" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Zandalari Direhorn",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={263707},
patch='80100',
mounttype='Ground',
model={83525},
description="\nThis mount is acquired from completing the Allied Races: Zandalari Troll achievement.",
},[[
step
Earn the "Allied Races: Zandalari Troll" Achievement |achieve 13161
|tip Refer to our Zandalari Troll Race Unlock guide to accomplish this.
step
use the Zandalari Direhorn##157870
|tip It should be on the character that you unlocked the Zandalari Troll Race with.
Learn the "Zandalari Direhorn" Mount |learnmount Zandalari Direhorn##263707
step
_Congratulations!_
You Collected the "Zandalari Direhorn" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Azshari Bloatray",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth, raid"},
mounts={292419},
patch='82000',
mounttype='Flying',
model={90729},
description="\nThis mount is acquired from completing the \"Glory of the Eternal Raider\" achievement.",
},[[
step
Earn the "Glory of the Eternal Raider" Achievement |achieve 13687
|tip Refer to our Achievement Guide to accomplish this.
step
use the Azshari Bloatray##167171
Learn the "Azshari Bloatray" Mount |learnmount Azshari Bloatray##292419
step
_Congratulations!_
You Collected the "Azshari Bloatray" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Dazar'alor Windreaver",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={289101},
patch='81000',
mounttype='Flying',
model={90194},
description="\nThis mount is acquired from completing the No Stable Big Enough achievement.",
},[[
step
Earn the "Glory of the Dazar'alor Raider" Achievement |achieve 13315
|tip Refer to our Achievement Guide to accomplish this.
step
use the Dazar'alor Windreaver##166539
Learn the "Dazar'alor Windreaver" Mount |learnmount Dazar'alor Windreaver##289101
step
_Congratulations!_
You Collected the "Dazar'alor Windreaver" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Frostshard Infernal",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={213350},
patch='70300',
mounttype='Ground',
model={70126},
description="\nThis mount is acquired from completing the No Stable Big Enough achievement.",
},[[
step
Earn the "No Stable Big Enough" Achievement |achieve 12931
|tip Refer to our Achievement Guide to accomplish this.
step
use the Biting Frostshard Core##137614
Learn the "Frostshard Infernal" Mount |learnmount Frostshard Infernal##213350
step
_Congratulations!_
You Collected the "Frostshard Infernal" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Kua'fon",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={267270},
patch='80100',
mounttype='Flying',
model={89375},
description="\nThis mount is acquired from completing the \"How to Ptrain Your Pterrordax\" achievement.",
},[[
step
Earn the "How to Ptrain Your Pterrordax" Achievement |achieve 13030
|tip Refer to our Achievement Guide to accomplish this.
step
use Kua'fon's Harness##159146
Learn the "Kua'fon" Mount |learnmount Kua'fon##267270
step
_Congratulations!_
You Collected the "Kua'fon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Wonderwing 2.0",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","pathfinder"},
mounts={290328},
patch='81500',
mounttype='Flying',
model={90421},
description="\nThis mount is acquired by completing the \"Battle for Azeroth Pathrinder, Part Two\" achievement.",
},[[
leechsteps "Achievement Guides\\Exploration\\Battle for Azeroth\\Battle for Azeroth Pathfinder, Part Two" 1-28
step
collect Wonderwing 2.0##290328
|tip It will be in your mailbox after earning the achievement.
step
use Wonderwing 2.0##169162
Learn the "Wonderwing 2.0" Mount |learnmount Wonderwing 2.0##290328
step
_Congratulations!_
You Collected the "Wonderwing 2.0" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Class Mounts\\Crusader's Direhorn",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth, paladin"},
mounts={290608},
patch='81500',
mounttype='unknown',
description="\nThis mount is acquired from completing the Allied Races: Zandalari Troll achievement, then creating a Zandalari Troll Paladin.",
},[[
step
Earn the "Allied Races: Zandalari Troll" Achievement |achieve 13161
|tip Refer to our Zandalari Troll Race Unlock guide to accomplish this.
step
Create a Zandalari Troll Paladin
|tip You will automatically learn this mount upon logging into the game.
Learn the "Crusader's Direhorn" Mount |learnmount Crusader's Direhorn##290608
step
_Congratulations!_
You Collected the "Crusader's Direhorn" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Alabaster Thunderwing",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Blizzard","Store"},
mounts={302362},
patch='82500',
mounttype='Flying',
model={92344},
description="\nThis mount can be purchased from the Blizzard Store or earned from the 15th Anniversary "..
"Collector's Edition of the game.",
},[[
step
This mount can be purchased for $25.00 from the official Blizzard Store
|tip Click the Shop button in the bottom-right corner of your screen, then click on Mounts.
Learn the "Alabaster Thunderwing" Mount |learnmount Alabaster Thunderwing##302362
step
_Congratulations!_
You Collected the "Alabaster Thunderwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\The Dreadwake",{
author="support@zygorguides.com",
keywords={"Blizzard, Store, Mounts, The, Dreadwake"},
mounts={272770},
patch='unknown',
mounttype='unknown',
model={85970},
description="\nThis mount is attained by purchasing the 180 Days of World of Warcraft game time.",
},[[
step
This mount is attained by purchasing the 180 Days of World of Warcraft game time from the official _Blizzard Store_
|tip After purchasing, check your in-game mailbox.
collect The Dreadwake##160589 |n
use the The Dreadwake##160589
Learn the "The Dreadwake" Mount |learnmount Meat Wagon##272770
step
_Congratulations!_
You Collected the "The Dreadwake" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Vulpine Familiar",{
author="support@zygorguides.com",
keywords={"Blizzard, Store, Mounts, Vulpine, Familiar"},
mounts={290133},
patch='unknown',
mounttype='unknown',
model={90397},
description="\nThis mount is purchased from the Blizzard Shop for $25 USD.",
},[[
step
This mount can be purchased for $25.00 from the official _Blizzard Store_
|tip After purchasing, check your in-game mailbox.
collect Vulpine Familiar##166775 |n
use the Vulpine Familiar##166775
Learn the "Vulpine Familiar" Mount |learnmount Vulpine Familiar##290133
step
_Congratulations!_
You Collected the "Vulpine Familiar" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Blizzard Store Mounts\\Meat Wagon",{
author="support@zygorguides.com",
keywords={"Blizzard, Store, Mounts, Meat, Wagon"},
mounts={281554},
patch='unknown',
mounttype='unknown',
model={88646},
description="\nThis mount is attained by purchasing the Warcraft III: Reforged Spoils of War Edition from the Blizzard Store.",
},[[
step
This mount is attained by purchasing the "Warcraft III: Reforged Spoil of War Edition" from the official _Blizzard Store_
|tip After purchasing, check your in-game mailbox.
collect Meat Wagon##164571 |n
use the Meat Wagon##164571
Learn the "Meat Wagon" Mount |learnmount Meat Wagon##281554
step
_Congratulations!_
You Collected the "Meat Wagon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Aerial Unit R-21/X",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","operation","mechagon"},
mounts={290718},
patch='82000',
mounttype='Flying',
model={92730},
description="\nThis mount has a very small chance to drop from King Mechagon in the Operation: Mechagon dungeon.",
},[[
step
kill King Mechagon##155438
|tip Inside the Operation: Mechagon dungeon.
collect Aerial Unit R-21/X##168830 |goto Mechagon/0 21.43,64.85
step
use the Aerial Unit R-21/X##168830
Learn the "Aerial Unit R-21/X" Mount |learnmount Aerial Unit R-21/X##290718
step
_Congratulations!_
You Collected the "Aerial Unit R-21/X" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Junkheap Drifter",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount"},
mounts={297157},
patch='82000',
mounttype='Ground',
model={91634},
description="\nThis mount has a slight chance to drop from the rare spawn Rustfeather on Mechagon Island.",
},[[
step
kill Rustfeather##152182
|tip Rustfeather is a rare spawn and may not always be available.
|tip This mount has a slight chance to drop.
collect Rusted Keys to the Junkheap Drifter##168370 |goto Mechagon Island/0 65.86,79.21
step
use the Rusted Keys to the Junkheap Drifter##168370
Learn the "Junkheap Drifter" Mount |learnmount Junkheap Drifter##297157
step
_Congratulations!_
You Collected the "Junkheap Drifter" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Leaping Veinseeker",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={243795},
patch='80100',
mounttype='Flying',
model={76706},
description="\nThis mount is acquired by a random world drop.",
},[[
step
Kill Loa-Gutter enemies around this area
collect Reins of a Tamed Bloodfeaster##163575 |n
|tip This is a rare drop.
|tip It drops from any Blood Trolls found in Nazmir.
use the Reins of a Tamed Bloodfeaster##163575
Learn the "Leaping Veinseeker" Mount |learnmount Leaping Veinseeker##243795 |goto Nazmir/0 60.67,20.67
step
_Congratulations!_
You Collected the "Leaping Veinseeker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Mechagon Peacekeeper",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","operation","mechagon"},
mounts={299158},
patch='82000',
mounttype='Ground',
model={90710},
description="\nThis mount has a very small chance to drop from the HK-8 Aerial Oppression Unit in the Operation: "..
"Mechagon dungeon.",
},[[
step
kill HK-8 Aerial Oppression Unit##155157
|tip Inside the Operation: Mechagon dungeon.
collect Mechagon Peacekeeper##168826 |goto Mechagon/3 61.61,39.49
step
use the Mechagon Peacekeeper##168826
Learn the "Mechagon Peacekeeper" Mount |learnmount Mechagon Peacekeeper##299158
step
_Congratulations!_
You Collected the "Mechagon Peacekeeper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Royal Snapdragon",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","nazjatar"},
mounts={294038},
patch='82000',
mounttype='Ground',
model={91104},
description="\nThis mount has a very small chance to drop from elite naga enemies in Nazjatar",
},[[
step
Kill Elite enemies around this area
|tip Elite Naga enemies have a small chance to drop the mount.
|tip Only Imperial Defenders, Voices of the Queen, and Hands of Azshara count in this area.
collect Royal Snapdragon##169198 |goto Nazjatar/0 50.40,16.06
step
use the Royal Snapdragon##169198
Learn the "Royal Snapdragon" Mount |learnmount Royal Snapdragon##294038
step
_Congratulations!_
You Collected the "Royal Snapdragon" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Rusty Mechanocrawler",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount"},
mounts={291492},
patch='82000',
mounttype='Ground',
model={90711},
description="\nThis mount has a slight chance to drop from the rare spawn Arachnoid Harvester on Mechagon Island.",
},[[
step
kill Arachnoid Harvester##151934
|tip Arachnoid Harvester is a rare spawn and may not always be available.
|tip This mount has a slight chance to drop.
collect Rusty Mechanocrawler##168823 |goto Mechagon Island/0 52.82,40.57
step
use the Rusty Mechanocrawler##168823
Learn the "Rusty Mechanocrawler" Mount |learnmount Rusty Mechanocrawler##291492
step
_Congratulations!_
You Collected the "Rusty Mechanocrawler" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Sharkbait",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, of, azeroth, dungeon, drop"},
mounts={254813},
patch='80100',
mounttype='Flying',
model={80449},
condition_end=function() return hasmount(254813) end,
description="\nThis mount is acquired by obtaining a random drop from Harlan Sweete in the Freehold dungeon on Mythic difficulty.",
},[[
step
Enter the Freehold Dungeon |goto Freehold/0 0.00,0.00 < 1000
step
kill Harlan Sweete##129440
collect 1 Sharkbait's Favorite Crackers##159842 |n
|tip This is a rare drop.
|tip This only can drop in Mythic difficulty.
use Sharkbait's Favorite Crackers##159842
Learn the Sharkbait Mount |learnmount Shark Bait##254813
step
_Congratulations!_
You Earned the "Sharkbait" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Silent Glider",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount"},
mounts={300149},
patch='82000',
mounttype='Flying',
model={90728},
description="\nThis mount has a slight chance to drop from the rare spawn Soundless in Nazjatar.",
},[[
step
kill Soundless##152290
|tip Soundless is a rare spawn and may not always be available.
|tip Soundless spawns on top of coral all over this area and requires flying to reach.
|tip This mount has a slight chance to drop.
collect Silent Glider##169163 |goto Nazjatar/0 58.54,48.85
step
use the Silent Glider##169163
Learn the "Silent Glider" Mount |learnmount Silent Glider##300149
step
_Congratulations!_
You Collected the "Silent Glider" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\G.M.O.D.",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={289083},
patch='81000',
mounttype='Flying',
model={90189},
description="\nThis mount is acquired from the Battle for Dazar'alor Raid.",
},[[
step
kill High Tinker Mekkatorque##144838
|tip He is a boss in the Battle for Dazar'alor raid.
|tip If you are in LFR, Jaina will have a chance to drop the mount instead.
collect G.M.O.D.##166518 |n
use the G.M.O.D.##166518
Learn the "G.M.O.D." Mount |learnmount G.M.O.D.##289083
step
_Congratulations!_
You Collected the "G.M.O.D." Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Glacial Tidestorm",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={289555},
patch='81000',
mounttype='Flying',
model={90414},
description="\nThis mount is acquired from the Mythic Battle for Dazar'alor Raid.",
},[[
step
kill Lady Jaina Proudmoore##151866
|tip She is a boss in the Battle for Dazar'alor raid.
|tip You will need to complete this on Mythic difficulty for a chance at the drop.
collect Glacial Tidestorm##166705 |n
use the Glacial Tidestorm##166705
Learn the "Glacial Tidestorm" Mount |learnmount Glacial Tidestorm##289555
step
_Congratulations!_
You Collected the "Glacial Tidestorm" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Ashenvale Chimaera",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288495},
patch='81000',
mounttype='Flying',
model={89750},
description="\nThis mount is acquired from the Rarespawn Alash'anir in Darkshore.",
},[[
step
kill Alash'anir##148787
|tip You will be flagged for PVP if your faction does not control Darkshore.
collect Ashenvale Chimaera##166432 |n
use Ashenvale Chimaera##166432
Learn the "Ashenvale Chimaera" Mount |learnmount Ashenvale Chimaera##288495 |goto Darkshore/0 56.45,30.76
step
_Congratulations!_
You Collected the "Ashenvale Chimaera" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Broken Highland Mustang",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279457},
patch='80100',
mounttype='Ground',
model={87773},
description="\nThis mount is acquired from Knight-Captain Aldrin while the Horde controls the Stromgarde War Front.",
},[[
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |or
'|learnmount Broken Highland Mustang##279457 |or
step
kill Knight-Captain Aldrin##142739
|tip He only appears when the Horde controls Stromgarde.
|tip This mount has a small chance to drop.
collect Broken Highland Mustang##163578 |goto 49.27,40.05
step
use the Broken Highland Mustang##163578
Learn the "Broken Highland Mustang" Mount |learnmount Broken Highland Mustang##279457
step
_Congratulations!_
You Collected the "Broken Highland Mustang" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Dune Scavenger",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={237286},
patch='80100',
mounttype='Ground',
model={75324},
description="\nThis mount is acquired by a random world drop.",
},[[
step
Kill enemies around this area
collect Captured Dune Scavenger##163576 |n
|tip This will drop randomly from the Snake enemies in the zone.
You can find more around [63.4,31.6]
You can find more around [55.6,41.2]
use the Captured Dun Scavenger##163576
Learn the "Dune Scavenger" Mount |learnmount Dune Scavenger##237286 |goto Vol'dun/0 49.4,75.8
step
_Congratulations!_
You Collected the "Dune Scavenger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Goldenmane",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260175},
patch='80100',
mounttype='Ground',
model={81690},
description="\nThis mount is acquired by an incredibly rare drop in Stormsong Valley or purchased from the Auction House.",
},[[
step
Kill enemies around this area
collect Goldenmane's Reins##163573 |goto Stormsong Valley/0 66.09,59.51 |complete hasmount(260175)
|tip This has about a 0.1% drop rate.
|tip You can also buy this mount from the Auction House if available.
step
use the Goldenmane's Reins##163573
Learn the "Goldenmane" Mount |learnmount Goldmane##260175
step
_Congratulations!_
You Collected the "Goldenmane" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Lil' Donkey",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279608},
patch='80100',
mounttype='Ground',
model={87773},
description="\nThis mount is acquired from Knight-Captain Aldrin while the Horde controls the Stromgarde War Front.",
},[[
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |or
'|learnmount learnmount Lil'Donkey##279608 |or
step
Enter the mine |goto 27.48,55.58 < 10 |walk
kill Overseer Krix##142423
|tip Inside the mine.
|tip He will appear after the Horde take control of Stromgarde.
collect Lil' Donkey##163646 |goto 27.41,57.34
step
use the Lil' Donkey##163646
Learn the "Lil' Donkey" Mount |learnmount Lil'Donkey##279608
step
_Congratulations!_
You Collected the "Lil' Donkey" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Nazjatar Blood Serpent",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={275623},
patch='80100',
mounttype='Flying',
model={14345},
description="\nThis mount is acquired by collecting Abyssal Fragments in Stormsong Valley and killing the \n"..
"Adherent of the Abyss.",
},[[
step
Kill Zeth'jir enemies around this area
collect 20 Abyssal Fragment##161344 |goto Stormsong Valley/0 31.91,41.50 |complete hasmount(275623)
|tip These have a low drop rate.
|tip You can also buy these from the auction house.
step
use the Abyssal Fragment##161344
collect Abhorrent Essence of the Abyss##161345 |complete hasmount(275623)
step
Enter the cave |goto 73.63,23.35 < 5 |walk
use the Abhorrent Essence of the Abyss##161345 |goto 74.69,21.75
|tip Use it at the Altar of the Abyss inside the cave.
Click here to continue |confirm |complete hasmount(275623)
step
Enter the mine |goto Stormsong Valley/0 46.60,36.14 < 5 |walk
Jump down here |goto Stormsong Valley/4 54.81,51.39 < 10 |walk
click Abyssal Icon
|tip This will summon the Adherent of the Abyss.
kill Adherent of the Abyss##140474
|tip You will likely need a group to kill this.
collect Nazjatar Blood Serpent##161479 |goto 59.82,54.10
step
use Nazjatar Blood Serpent##161479
Learn the "Nazjatar Blood Serpent" Mount |learnmount Nazjatar Blood Serpent##275623
step
_Congratulations!_
You Collected the "Nazjatar Blood Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Skullripper",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279611},
patch='80100',
mounttype='Ground',
model={87848},
description="\nThis mount is acquired from Skullripper in Arathi Highlands.",
},[[
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |or
'|learnmount Skullripper##279611 |or
step
kill Skullripper##142437
|tip It will appear when the Horde take control of Stromgarde.
collect Skullripper##163645 |goto 38.24,90.09
step
use Skullripper##163645
Learn the "Skullripper" Mount |learnmount Skullripper##279611
step
_Congratulations!_
You Collected the "Skullripper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Swift Albino Raptor",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279569},
patch='80100',
mounttype='Ground',
model={14345},
description="\nThis mount is dropped by Beastrider Kama in Arathi Highlands when under Horde control.",
},[[
step
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |or
'|learnmount Swift Albino Raptor##279569 |or
step
kill Beastrider Kama##142709
|tip He's on a spawn timer.
|tip He will appear when Horde take control of Stromgarde.
collect Swift Albino Raptor##163644 |goto 65.64,70.41 |complete hasmount(279569)
step
use Swift Albino Raptor##163644
Learn the "Swift Albino Raptor" Mount |learnmount Swift Albino Raptor##279569
step
_Congratulations!_
You Collected the "Swift Albino Raptor" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Terrified Pack Mule",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={260174},
patch='80100',
mounttype='Ground',
model={81694},
description="\nThis mount is acquired by a random world drop.",
},[[
step
Kill enemies around this area
|tip Hexthralled Guardsman have a higher chance at the drop.
collect Chewed-On Reins of the Terrified Pack Mule##163574 |n
|tip This is a rare drop.
use the Chewed-On Reins of the Terrified Pack Mule##163574
Learn the "Terrified Pack Mule" Mount |learnmount Terrified Pack Mule##260174 |goto Drustvar/0 31,20
You can find more around [34.03,17.24]
step
_Congratulations!_
You Collected the "Terrified Pack Mule" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Tomb Stalker",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, dungeon, drop"},
mounts={266058},
patch='80100',
mounttype='Ground',
model={84274},
condition_end=function() return hasmount(266058) end,
description="\nThis mount is acquired by obtaining a random drop from Dazar, The First King in the King's Rest dungeon.",
},[[
step
Enter the King's Rest Dungeon |goto King's Rest/0 0.00,0.00 < 1000
step
kill King Dazar##136160
collect 1 Mummified Raptor Skull##159921 |n
|tip This is a rare drop.
|tip This only drops on Mythic difficulty.
use the Mummified Raptor Skull##159921
Learn the Tomb Stalker Mount |learnmount Mummified Raptor Skull##266058
step
_Congratulations!_
You Earned the "Tomb Stalker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Underrot Crawg",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, dungeon, drop"},
mounts={273541},
patch='80100',
mounttype='Ground',
model={78860},
condition_end=function() return hasmount(273541) end,
description="\nThis mount is acquired by obtaining a random drop from the Unbound Abomination in The Underrot dungeon.",
},[[
step
Enter The Underrot Dungeon |goto The Underrot/0 0.00,0.00 < 1000
step
kill Unbound Abomination##133007
collect 1 Underrot Crawg Harness##160829 |n
|tip This is a rare drop.
use the Underrot Crawg Harness##160829
Learn the Underrot Crawg Mount |learnmount Underrot Crawg##273541
step
_Congratulations!_
You Earned the "Underrot Crawg" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Blackpaw",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288438},
patch='81000',
mounttype='Ground',
model={706},
description="\nThis mount is acquired from the Rarespawn Blackpaw in Darkshore.",
},[[
step
kill Blackpaw##149660
|tip You will be flagged for PvP if your faction does not control Darkshore.
collect Blackpaw##166428 |goto Darkshore/0 49.65,24.96 |complete hasmount(288438)
|tip This has about a 6% drop rate.
step
use Blackpaw##166428
Learn the "Blackpaw" Mount |learnmount Blackpaw##288438
step
_Congratulations!_
You Collected the "Blackpaw" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Kaldorei Nightsaber",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288505},
patch='81000',
mounttype='Ground',
model={89247},
description="\nThis mount is acquired from the Rarespawn Shadowclaw in Darkshore.",
},[[
step
kill Shadowclaw##149663
|tip You will be flagged for PVP if your faction does not control Darkshore.
collect Kaldorei Nightsaber##166435 |n
use the Kaldorei Nightsaber##166435
Learn the "Kaldorei Nightsaber" Mount |learnmount Kaldorei Nightsaber##288505 |goto Darkshore/0 39.81,32.80
step
_Congratulations!_
You Collected the "Kaldorei Nightsaber" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Umber Nightsaber",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288503},
patch='81000',
mounttype='Ground',
model={89246},
description="\nThis mount is acquired from the Rarespawn Shadowclaw in Darkshore.",
},[[
step
kill Athil Dewfire##148037
|tip He walks around this area.
|tip You will be flagged for PVP if your faction does not control Darkshore.
collect Umber Nightsaber##166803 |n
use the Umber Nightsaber##166803
Learn the "Umber Nightsaber" Mount |learnmount Umber Nightsaber##288503 |goto Darkshore/0 41.66,76.62
step
_Congratulations!_
You Collected the "Umber Nightsaber" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Witherbark Direwing",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={279868},
patch='80100',
mounttype='Flying',
model={86091},
description="\nThis mount is acquired from the Rarespawn Shadowclaw in Arathi Highlands.",
},[[
step
kill Nimar the Slayer##142692
|tip He walks around this area.
|tip You will be flagged for PVP if your faction does not control Arathi Highlands.
collect Witherbark Direwing##163706 |n
use the Witherbark Direwing##163706
Learn the "Witherbark Direwing" Mount |learnmount Witherbark Direwing##279868 |goto Arathi Highlands/0 67.63,60.86
step
_Congratulations!_
You Collected the "Witherbark Direwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Frightened Kodo",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={288499},
patch='81000',
mounttype='Ground',
model={12247},
description="\nThis mount is acquired from locating a Frightened Kodo in Darkshore.",
},[[
step
map Darkshore/0
path	41.36,53.99	39.35,56.43	38.05,65.54	41.08,65.48	43.91,67.34
path	44.18,65.33	42.71,61.94	41.36,59.31	42.00,57.08
Follow the path
|tip Make a macro for /target Frightened Kodo while flying around.
|tip The Frightened Kodo will be running around on the ground.
|tip There won't always be a Frightened Kodo spawned, so you may need to check later.
|tip You will be flagged for PVP if your faction doesn't control Darkshore.
click Frightened Kodo
collect Frightened Kodo##166433 |n
use the Frightened Kodo##166433
Learn the "Frightened Kodo" Mount |learnmount Frightened Kodo##288499
step
_Congratulations!_
You Collected the "Frightened Kodo" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Island Expedition Mounts\\Surf Jelly",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"aquatic, mount, battle, of, azeroth, island, expeditions, drop, Surf, Jelly"},
mounts={278979},
patch='80100',
mounttype='Aquatic',
model={87747},
condition_end=function() return hasmount(278979) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Surf Jelly##163585 |n
|tip The drop is completely random.
|tip It shares a drop table with 9 other mounts.
use the Surf Jelly##163585
Learn the Surf Jelly Mount |learnmount Surf Jelly##278979 |goto Dazar'alor/0 44.55,95.27
step
_Congratulations!_
You Earned the "Surf Jelly" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Qinsho's Eternal Hound",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Qinsho's, Eternal, Hound"},
mounts={279469},
patch='80100',
mounttype='Ground',
model={45836},
condition_end=function() return hasmount(279469) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Qinsho's Eternal Hound##163582 |n
|tip The drop is completely random.
|tip It shares a drop table with 9 other mounts.
use Qinsho's Eternal Hound##163582
Learn the Qinsho's Eternal Hound Mount |learnmount Qinsho's Eternal Hound##279469 |goto Dazar'alor/0 44.55,95.27
step
_Congratulations!_
You Earned the "Qinsho's Eternal Hound" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Squawks",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Squawks"},
mounts={254811},
patch='80100',
mounttype='Flying',
model={79916},
condition_end=function() return hasmount(254811) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Squawks##163586 |n
|tip The drop is completely random.
|tip It shares a drop table with 9 other mounts.
use Squawks##163586
Learn the Squawks Mount |learnmount Squawks##254811 |goto Dazar'alor/0 44.55,95.27
step
_Congratulations!_
You Earned the "Squawks" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Twilight Avenger",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, drop, Twilight, Avenger"},
mounts={279466},
patch='80100',
mounttype='Flying',
model={87775},
condition_end=function() return hasmount(279466) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Twilight Avenger##163584 |n
|tip The drop is completely random.
|tip It shares a drop table with 9 other mounts.
use the Twilight Avenger##163584
Learn the Twilight Avenger Mount |learnmount Twilight Avenger##279466 |goto Dazar'alor/0 44.55,95.27
step
_Congratulations!_
You Earned the "Twilight Avenger" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Craghorn Chasm-Leaper",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Craghorn, Chasm-Leaper"},
mounts={279467},
patch='80100',
mounttype='Ground',
model={87776},
condition_end=function() return hasmount(279467) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Craghorn Chasm-Leaper##163583 |n
|tip The drop is completely random.
|tip It shares a drop table with 9 other mounts.
use the Craghorn Chasm-Leaper##163583
Learn the Craghorn Chasm-Leaper Mount |learnmount Craghorn Chasm-Leaper##279467 |goto Dazar'alor/0 44.55,95.27
step
_Congratulations!_
You Earned the "Craghorn Chasm-Leaper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Bloodgorged Hunter",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Bloodgorged, Hunter"},
mounts={288720},
patch='81000',
mounttype='Flying',
model={55151},
condition_end=function() return hasmount(288720) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Bloodgorged Hunter##166468 |n
|tip The drop is completely random.
|tip It shares a drop table with 9 other mounts.
use the Bloodgorged Hunter##166468
Learn the "Bloodgorged Hunter" Mount |learnmount Bloodgorged Hunter##288720 |goto Dazar'alor/0 44.55,95.27
step
_Congratulations!_
You Earned the "Bloodgorged Hunter" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Bloodthirsty Dreadwing",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Bloodthirsty, Dreadwing"},
mounts={288714},
patch='81000',
mounttype='Flying',
model={60307},
condition_end=function() return hasmount(288714) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
Collect #750# Honorbound Service Medal |complete curcount(1716)>=750
|tip These come from completing World Quests on Kul Tiras, Arathi Highland when the Horde controls it, as well as Darkshore when the Horde controls it.
step
talk Provisioner Mukra##148924
buy Bloodthirsty Dreadwing##166469 |n
use the Bloodthirsty Dreadwing##166469
Learn the Bloodthirsty Dreadwing Mount |learnmount Bloodthirsty Dreadwing##288714 |goto Dazar'alor/0 51.22,95.08
step
_Congratulations!_
You Earned the "Bloodthirsty Dreadwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Island Thunderscale",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Island, Thunderscale"},
mounts={288721},
patch='81000',
mounttype='Flying',
model={90158},
condition_end=function() return hasmount(288721) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Island Thunderscale##166467 |n
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Island Thunderscale##166467
Learn the "Island Thunderscale" Mount |learnmount Island Thunderscale##288721 |goto Dazar'alor/0 44.55,95.27
step
_Congratulations!_
You Earned the "Island Thunderscale" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Island Expedition Mounts\\Siltwing Albatross",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Siltwing, Albatross"},
mounts={266925},
patch='81500',
mounttype='Flying',
model={84359},
condition_end=function() return hasmount(266925) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
Collect #1000# Seafarer's Dubloon |complete curcount(1710)>=1000 |goto Dazar'alor/0 44.55,95.27
|tip These drop upon completing Island Expeditions.
step
talk Captain Zen'taga##148923
buy Siltwing Albatross##166745 |n
use the Siltwing Albatross##166745
Learn the Siltwing Albatross Mount |learnmount Siltwing Albatross##266925 |goto 44.46,94.46
step
_Congratulations!_
You Earned the "Siltwing Albatross" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Stonehide Elderhorn",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Stonehide, Elderhorn"},
mounts={279467},
patch='80100',
mounttype='Ground',
model={87776},
condition_end=function() return hasmount(279467) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Stonehide Elderhorn##166470 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Stonehide Elderhorn
Learn the Stonehide Elderhorn Mount |learnmount Stonehide Elderhorn##288712 |goto Dazar'alor/0 44.55,95.27
step
_Congratulations!_
You Earned the "Stonehide Elderhorn" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Island Expedition Mounts\\Risen Mare",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, of, azeroth, island, expeditions, dungeon, drop, Risen, Mare"},
mounts={288722},
patch='81000',
mounttype='Ground',
model={5050},
condition_end=function() return hasmount(288722) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
|tip You need to complete the Island Expedition for a chance at the mount.
collect Risen Mare##166466 |n
|tip This can come from any Island Expedition.
|tip The drop is completely random.
|tip It shares a drop table with 8 other mounts.
use the Risen Mare##166466
Learn the Risen Mare Mount |learnmount Risen Mare##288722 |goto Dazar'alor/0 44.55,95.27
step
_Congratulations!_
You Earned the "Risen Mare" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Island Expedition Mounts\\Saltwater Seahorse",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"aquatic, mount, battle, of, azeroth, island, expeditions, drop, Saltwater, Seahorse"},
mounts={288711},
patch='81000',
mounttype='Aquatic',
model={34958},
condition_end=function() return hasmount(288711) end,
description="\nThis mount is acquired by completing an Island Expeditions.",
},[[
step
click Expedition Map
|tip Queue for an Island Expeditions.
Collect #500# Seafarer's Dubloon |complete curcount(1710)>=1000 |goto Dazar'alor/0 44.55,95.27
|tip These drop upon completing Island Expeditions.
step
talk Captain Zen'taga##148923
buy Saltwater Seahorse##166471 |n
use the Saltwater Seahorse##166471
Learn the Saltwater Seahorse Mount |learnmount Saltwater Seahorse##288711 |goto 44.46,94.46
step
_Congratulations!_
You Earned the "Saltwater Seahorse" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\The Hivemind",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"secret, mount, battle, for, azeroth, hivemind"},
mounts={261395},
patch='80100',
mounttype='Flying',
model={88835},
condition_end=function() return hasmount(261395) end,
description="\nThis mount is acquired by completing varius puzzles and secrets, including:\n\n"..
"_Red, Yellow, Green, and Blue Colored Monocles_\n"..
"_Suramar Beams (Requires Group)_\n"..
"_Lost Cat Toy (Requires Group)_\n"..
"_Jumping Puzzle (Requires Group)_\n"..
"_Arcane Lava (Requires Group)_\n"..
"_Claiming The Hivemind (Requires Group)_",
},[[
step
talk Griftah##19227
buy 1 Talisman of True Treasure Tracking##27944 |complete hasmount(261395) |goto Shattrath City/0 65.64,69.26
step
Use the Talisman of True Treasure Tracking##27944
|tip Right-click it in your bags.
Equip the Talisman of True Treasure Tracking |equipped Talisman of True Treasure Tracking##27944 |complete hasmount(261395)
step
_You must have the Talisman of True Treasure Tracking equipped in order to interact with the vendors and objects throughout this guide_
|tip The following section requires lots of running around to buy/exchange different items between vendors.
|tip The items will only last for a certain amount of time, so go from vendor to vendor as fast as possible.
|tip You do not personally need to collect all four of the monocles.
|tip Your group must have all four monocles on unique characters between the five players.
confirm |complete hasmount(261395)
step
click Letter from Ms. Graham##280815
|tip It looks like a small sealed letter laying on the corner of the table behind Griftah.
Read the First Letter |q 40397 |future |goto 65.53,69.48
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 500 Seashell##156791 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Volatile Violetscale##132568
|tip It looks like a purple eel that swims around this area.
buy 100 Cavity-Free Great Shark Tooth##156780 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 39.70,80.15
step
talk Manta Stargazer##132570
|tip It looks like a blue manta ray that swims around this area near the surface.
buy 50 Razoreel Larva##156786 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 54.26,23.23
step
talk Lil' Whaley##132569
|tip It looks like a large blue whale that swims around this area.
buy 250 Well-Fed Doctor Fish##156783 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 70.16,49.40
step
talk Gloomy Bluefin##132572
|tip It looks like a large blue fish that swims around this area near the sea floor.
buy 10 Freshly Molted Crab Skin##156782 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 65.44,42.41
step
talk Ol' Fishbreath##132562
|tip It looks like a small blue shark that swims around this area.
buy 50 Glittergill Glitter##156790 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Kelp'thar Forest/0 60.86,60.32
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 80 Seashell##156791 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Gloomy Bluefin##132572
|tip It looks like a large blue fish that swims around this area near the sea floor.
buy 2 Giant Giant Toenail Clipping##156775 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 65.44,42.41
step
talk Little Carp##132571
|tip It looks like a brown and purple fish with a large head that swims around this area.
buy 4 Makrura Eye##156776 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 45.47,17.47
step
talk Volatile Violetscale##132568
|tip It looks like a purple eel that swims around this area.
buy 1 Accidentally-Severed Seahorse Fin##156773 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 39.70,80.15
step
talk Crimson Angerfish##132565
|tip It looks like a red pufferfish that swims around this area.
buy 3 Shiny Sea Serpent Scale##156774 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 54.62,90.04
step
talk Manta Stargazer##132570
|tip It looks like a blue manta ray that swims around this area near the surface.
buy 40 Symbiotic Plankton##156789 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 54.26,23.23
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 5 Scintillating Murloc Skin Lotion##156793 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 300 Seashell##156791 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Ol' Fishbreath##132562
|tip It looks like a small blue shark that swims around this area.
buy 30 Vantus Black Squid Ink##156771 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Kelp'thar Forest/0 60.86,60.32
step
talk The Blackfish##132566
|tip It looks like a black and white orca that swims around this area.
buy 30 Super Slick Eel Slime##156770 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 15.85,84.84 |notravel
step
talk Volatile Violetscale##132568
|tip It looks like a purple eel that swims around this area.
buy 3 Rock-Encrusted Whelk Shell##156767 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 39.70,80.15
step
talk Little Carp##132571
|tip It looks like a brown and purple fish with a large head that swims around this area.
buy 6 Potent Gastropod Gloop##156788 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 45.47,17.47
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 1500 Seashell##156791 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
talk Lil' Whaley##132569
|tip It looks like a large blue whale that swims around this area.
buy 300 Very Pretty Coral##156761 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 70.16,49.40
step
talk Ol' Fishbreath##132562
|tip It looks like a small blue shark that swims around this area.
buy 100 Iridescent Shimmerray Skin##156758 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Kelp'thar Forest/0 60.86,60.32
step
talk Crimson Angerfish##132565
|tip It looks like a red pufferfish that swims around this area.
buy 20 Luxurous Luxscale Scale##156764 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 54.62,90.04
step
talk The Blackfish##132566
|tip It looks like a black and white orca that swims around this area.
buy 5 Captured Cavitation Bubble##156787 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Abyssal Depths/0 15.85,84.84 |notravel
step
talk Sir Finley Mrrgglton##132583
|tip It looks like a green Murloc on land at the top of a tower.
buy 1 Red Crystal Monocle##156725 |complete itemcount(156725) >= 1 or hasmount(261395) |goto Shimmering Expanse/0 44.57,20.20
step
Enter The Halls of Origination Dungeon |goto Halls of Origination/1 49.35,93.54 < 1000 |c |complete itemcount(156726) >= 1 or hasmount(261395)
step
map Halls of Origination/1
path follow smart; loop off; ants curved
path	48.06,74.89	49.99,73.21	50.22,62.98	61.41,62.98	67.35,62.73
path	67.49,49.60
click Stellar Refraction Device##280885
|tip It looks like a bright yellow light underneath the elevator in The Maker's Rise.
|tip On the north end of the room you will find the stairs leading down.
|tip Opening your map will show an ant trail that marks the location.
confirm |complete itemcount(156726) >= 1 or hasmount(261395)
step
The goal in this room is to change the color of all the constellations to the same color
|tip Clicking the Stellar Refractors will cycle the color of nearby constellations, depending on the type of Refractor.
|tip Some of the constellations around the outside of the room will remain the same color no matter what, so try to change all other constellations to this color.
|tip Start with Refractors on the outside of the room and work your way inwards.
clicknpc Angular Stellar Refractor##132553+
|tip Refractor with a cross formation, cycles the colors of constellations to the north, south, east and west.
clicknpc Jagged Stellar Refractor##132554+
|tip Refractor with an X formation, cycles the colors of constellations to the northwest, northeast, southwest and southeast.
clicknpc Round Stellar Refractor##132552+
|tip Refractor with a round formation, cycles the colors of constellations around the refractor.
click Star-touched Chest##280886
|tip Once all constellations are the same, a chest will spawn in the middle of the room.
collect 1 Yellow Crystal Monocle##156726 |complete itemcount(156726) >= 1 or hasmount(261395)
step
Enter the Skyreach Dungeon |goto Skyreach/1 59.14,24.49 < 1000 |c |complete itemcount(156727) >= 1 or hasmount(261395)
step
map Skyreach/2
path follow smart; loop off; ants curved
path	45.10,14.18	 45.57,14.08
kill High Sage Viryx##76266
|tip She is the last boss of the dungeon.
|tip Use the "Skyreach" dungeon guide to accomplish this.
click "Basic" Instructions##280861 |goto Skyreach/2 42.02,86.05
|tip It looks like an open scroll hanging to the left of the Glowing Orb console.
|tip Opening your map will show an ant trail that marks the location.
|tip You must have the Talisman of True Treasure Tracking equipped to interact with it.
confirm |complete itemcount(156727) >= 1 or hasmount(261395)
step
Click the Glowing Orbs on the console next to the "Basic Instructions" scroll
click Small Glowing Orb##280856
|tip Click the center orb to activate the console.
click Glowing Orb##280857+
Click order: Right, up, down, up, right, right, up, left, down, up, left, down
|tip Don't click the Small Glowing Orb in the center again, it will reset the console.
click Sun-Worn Chest##280883
collect 1 Green Crystal Monocle##156727 |complete itemcount(156727) >= 1 or hasmount(261395)
step
use the Talisman of True Treasure Tracking##27944
Equip the Talisman of True Treasure Tracking |equipped Talisman of True Treasure Tracking##27944 |complete itemcount(156724) >= 1 or hasmount(261395)
step
Enter the building |goto Highmountain/0 57.77,27.79 < 5 |walk
click Letter from Ms. Graham##280836
|tip Inside the building.
Read the Second Letter |q 40314 |future |goto 57.41,27.91
step
Enter the Karazhan Raid |goto Karazhan/1 60.11,79.34 < 1000 |c |complete itemcount(156724) >= 1 or hasmount(261395)
step
click Letter from Ms. Graham##280837
|tip It looks like a small sealed letter sitting on a chair in Medivh's Chambers between the Chess Event and Prince Malchezaar.
|tip It's the first room as you go up the spiraling staircase.
Read the Third Letter |q 40404 |future |goto Karazhan/15 46.05,26.45
step
Enter the Razorfen Downs Dungeon |goto Razorfen Downs/1 26.11,18.22 < 1000 |c |complete itemcount(156724) >= 1 or hasmount(261395)
step
map Razorfen Downs/1
path follow smart; loop off; ants curved
path	33.43,18.28	38.02,24.09	43.04,18.28	46.34,21.08	42.47,29.25
path	50.22,34.62	53.23,28.60	63.71,41.51	78.48,34.19	85.80,46.02
path	77.76,42.37	72.02,46.45	65.85,51.18	51.79,44.73	38.45,44.73
path	33.00,55.91	36.30,70.97	45.05,76.34	53.23,59.14	49.50,51.18
path	39.45,49.25	36.15,55.05	38.16,66.02	46.48,68.39	50.07,58.92
path	46.34,54.41	40.75,53.98	40.17,63.23	45.62,62.37
click Letter from Ms. Graham##280838
|tip It looks like a small sealed letter sitting on a crude crate behind Death Speaker Blackthorn.
|tip Use the "Razorfen Downs" dungeon guide to complete the dungeon.
|tip Opening your map will show an ant trail that marks the location.
Read the Fourth Letter |q 40252 |future
step
Enter the building |goto Mount Hyjal/0 44.33,47.27 < 5 |walk
click Letter from Ms. Graham##280842
|tip Inside the building.
|tip It looks like a small sealed letter sitting on a table at the top of the Shrine of Aviana.
Read the Fifth Letter |q 40293 |future |goto 44.42,46.62
step
click Letter from Ms. Graham##280843
|tip It looks like a small sealed letter sitting on the edge of the stone bridge.
Read the Sixth Letter |q 40288 |future |goto Icecrown/0 70.76,73.37
step
click Letter from Ms. Graham##280844
|tip It is at the base on the right side of the monument.
Read the Seventh Letter |q 50187 |future |goto Townlong Steppes/0 37.81,62.99
step
click Gift from Ms. Graham##280845
|tip It looks like a small glowing purple box all the way up on the highest ring of The Nexus.
collect 1 Blue Crystal Monocle##156724 |q 50181 |future |goto Borean Tundra/0 27.54,27.08
step
The rest of this guide requires a group of 5 to complete
|tip The group must have one person with each monocle, as all four monocles are required to progress.
|tip Four different group members, each with a different colored monocle.
confirm |complete hasmount(261395)
step
Send a group member to each location below:
|tip Click on the name of the NPC or the Blocked Drawer to change coordinates.
|tip The first four members must kill an NPC while wearing a specific monocle.
_These NPCs need to be killed at the same time!_
|tip The last member must run into a room once the 4 NPCs have been killed and have used Draw Energy to unblock the doorway.
|tip Draw Energy will cause the beams blocking the Blocked Drawer to disappear.
kill Yorilan##132598 |goto Suramar/0 43.63,81.67
|tip The Yellow Crystal Monocle must be worn to damage Yorilan.
kill Giluzui##132597 |goto 20.56,46.03
|tip Inside the building.
|tip The Green Crystal Monocle must be worn to damage Giluzui.
kill Blom'an##132596 |goto 46.96,28.41
|tip The Blue Crystal Monocle must be worn to damage Blom'an.
kill Rikei##132595 |goto 71.97,62.81
|tip The Red Crystal Monocle must be worn to damage Rikei.
Blocked Drawer Room |goto 41.16,69.83
|tip Upstairs inside the building.
|tip Run into the room once it has been unblocked.
confirm |complete hasmount(261395)
step
Once inside the Drawer room:
_Remove any gear or buffs that give absorption shields_
|tip Absorption shields will reduce the amount of damage you take in this step, which will give you an incorrect code.
|tip Clicking the next object will cause you to take damage and be teleported.
|tip The amount of damage you take will be the code for your group.
|tip Use the "What happened to me?" section of the combat log to get an exact number.
|tip For example, if you take 12,345 damage, the code for your group is 12345.
|tip Write this number down, it will be used to determine the amount of times you pet cats in the next section.
click Lost Cat Toy##280903 |goto 41.17,69.93
|tip It looks like a small circular object underneath the pillows on the floor inside the building.
confirm |complete hasmount(261395)
step
Once your group has your code:
Enter the Court of Stars dungeon |goto Court of Stars/1 8.11,69.15 < 1000 |c |complete hasmount(261395)
step
kill Patrol Captain Gerdo##104215
|tip He walks around this area.
|tip Use the dungeon guides to accomplish this.
Defeat Patrol Captain Gerdo |scenariogoal 1/29612 |complete hasmount(261395) |goto 34.28,28.10
step
map Court of Stars/1
path follow smart; loop off; ants curved
path	49.29,68.10	49.29,68.24
The cats that your group must pet based on your code are in a small house to the southwest of Talixae Flamewreath
|tip Opening your map will show an ant trail that marks their location.
_The pet order is: Mrs. Fluffymuffins, Shadow, Mew, Ash, then Bella_
|tip One group member per cat.
|tip Use your group's code to pet the cats.
|tip For example, if your code was 13645 you would pet Mrs. Fluffymuffins once, Shadow three times, Mew six times, Ash four times and Bella 5 times.
|tip If there is a 0 in your code, skip petting that cat.
|tip If your code is only 4 digits, (for example you only took 1,132 damage), add a 0 to the front so it's 5 digits, making your code 01132 (so you'd skip petting the first cat).
|tip When a cat is pet the cat will receive one stack of "Purring."
|tip This stacking buff is how you keep track of the number of pets for each cat.
|tip When done correctly an Ominous Orb will spawn; click it to continue to the next area.
confirm |complete hasmount(261395)
step
Assign each member of the group a number from 1 to 5
|tip This number will be each member's number for a jumping puzzle.
Follow the jumping pattern below:
|tip The number represents the player assigned to that number.
|tip F means jump forward, L means jump left, R means jump right, and B means jump backwards.
|tip The first F for each player is them jumping onto the first platform.
1FF
2FLF
1F
3FFRR
4FL
5F
2L
4F
confirm |complete hasmount(261395)
step
Jumping Puzzle Continued:
2L
4LF
2FL
3B
4FRRR
3F
5F
1RF
3BFR
1FL
confirm |complete hasmount(261395)
step
Jumping Puzzle Continued:
4F
2BF
5F
2BF
5R
3F
1FR
2FR
4F
2LF
confirm |complete hasmount(261395)
step
Jumping Puzzle Continued:
4F
1RF
3L
4F
3FF
5F
1L
4R
5L
2F
confirm |complete hasmount(261395)
step
Jumping Puzzle Continued:
4F
5FF
1F
3L
5RF
4F
1R
5L
1F
2F
confirm |complete hasmount(261395)
step
Jumping Puzzle Continued:
3 Jump off (Click "Exit Vehicle")
3 Go to far left platform
3F
2F
3FFF
2B
4R
5F
2FRF
3FFFF
All group members should now be across
confirm |complete hasmount(261395)
step
The last puzzle is solved through a lot of trial and error
|tip You will be using a black floating disc to shuttle players over a pool of arcane lava, but not everyone can ride together.
Use trial and error to find out who in the group is who:
|tip Start by sending groups of two across.
|tip If someone gets knocked off the disc those two people aren't compatible together.
Person A: can go across with anyone
|tip Person A should remain on the disc until the very end.
Person B: can cross with Person A or in a trio
Person C, D, and E: can cross in a duo along with Person A
Proceed across as follows:
1. Person A, B, and C go across
2. C gets off, A and B go back to beginning
3. B gets off at beginning, A and D go across
4. D gets off and A and C go back to beginning
5. B gets on with A and C and goes across
6. C gets off, A and B go back to beginning
7. B gets off at beginning, A and E go across
8. E gets off, A and C go back to beginning
9. B gets on and goes across with A and C
confirm |complete hasmount(261395)
step
Enter the room to the northwest
|tip After all group members have crossed the arcane lava.
|tip Each group member must stand on a purple arcane pad.
clicknpc The Hivemind##132609
|tip Click The Hivemind at the same time and channel the spell.
collect 1 The Hivemind##156798 |complete hasmount(261395)
step
use The Hivemind##156798
learnmount The Hivemind##261395
step
_Congratulations!_
You Collected "The Hivemind" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\X-995 Mechanocat",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","mechagon","island"},
mounts={294143},
patch='82000',
mounttype='Ground',
model={92666},
description="\nThis mount can be crafted at Pascal-K1N6 on Mechagon Island after purchasing the blueprint for 500 gold "..
"from Cork Stuttguard in Bondo's Yard.",
},[[
step
talk Cork Stuttguard##152321
buy 1 Blueprint: Mechanocat Laser Pointer##167787 |goto Mechagon Island/0 63.34,42.94 |q 55056 |future
|tip This blueprint costs 500 gold.
step
accept Blueprint: Mechanocat Laser Pointer##55056
|tip You will accept this quest automatically.
step
talk Pascal-K1N6##150359
turnin Blueprint: Mechanocat Laser Pointer##55056 |goto 71.35,32.28
step
collect 5 Energy Cell##166970 |complete hasmount(294143)
|tip You can get these by converting Empty Energy Cells at the Charging Station in Bondo's Yard.
|tip You can also get these as drops from rare spawns and chests.
step
collect 4 Chain ignitercoil##168327 |complete hasmount(294143)
|tip They drop from rare spawns and chests and are awarded for world quests and daily quests.
step
talk Pascal-K1N6##150359
_<Create 8 S.P.A.R.E. Crates>_
collect 8 S.P.A.R.E. Crate##169610 |goto 71.35,32.29 |complete hasmount(294143)
step
talk Pascal-K1N6##150359
_<Create 1 Mechanocat Laser Pointer>_
collect 1 Mechanocat Laser Pointer##167751 |goto 71.35,32.29 |complete hasmount(294143)
step
use the Mechanocat Laser Pointer##167751
Learn the "Mechanocat Laser Pointer" Mount |learnmount Mechanocat Laser Pointer##294143
step
_Congratulations!_
You Collected the "Mechanocat Laser Pointer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Miscellaneous Mounts\\Undercity Plaguebat",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, for, azeroth, quest, horde"},
mounts={272472},
patch='80100',
mounttype='Flying',
model={85886},
condition_end=function() return hasmount(272472) end,
description="\nThis mount is acquired by completing the \"Burning of Teldrassil\" event.",
},[[
step
accept The Warchief Awaits##50476
|tip You will automatically accept this quest.
step
Follow the path |goto Undercity/0 52.05,64.52 < 5 |walk
Continue following the path |goto 46.32,72.88 < 5 |walk
Continue following the path |goto 45.29,78.11 < 5 |walk
Continue following the path |goto 46.20,83.81 < 5 |walk
Continue following the path |goto 48.81,87.79 < 5 |walk
talk Lady Sylvanas Windrunner##134554
turnin The Warchief Awaits##50476 |goto 58.14,91.88
accept The Warchief Commands##50642 |goto 58.10,91.88
step
talk High Overlord Saurfang##134574
turnin The Warchief Commands##50642 |goto Northern Barrens/0 50.88,46.00
accept A Quick Diversion##50646 |goto 50.88,46.00
step
talk Lorash##134573
turnin A Quick Diversion##50646 |goto Ashenvale/0 38.91,55.30
accept Everybody Has a Price##50647 |goto Ashenvale/0 38.91,55.30
step
Cross the bridge |goto 37.45,53.69 |walk
|tip Dismount before crossing.
kill Astranaar Sentinel##134645+
|tip Use the "Marked!" ability on guards around this area.
Eliminate #10# Guards |q 50647/1 |goto 36.62,51.99
step
talk Lorash##134573
turnin Everybody Has a Price##50647 |goto 38.91,55.29
accept A Timely Arrival##50738 |goto 38.91,55.29
step
talk Lady Sylvanas Windrunner##135003
turnin A Timely Arrival##50738 |goto 37.83,56.30
accept Zoram'gar Outpost##50740 |goto 37.83,56.30
step
Enter the building |goto 12.86,34.12 < 3 |walk
talk Innkeeper Duras##43606
|tip Inside the building.
Tell her _"The warchief needs rations and lodging for an incoming army."_
Speak with the Innkeeper |q 50740/2 |goto 12.99,34.16
step
Leave the building |goto 12.86,34.12 < 3 |walk
Enter the building |goto 11.67,35.00 < 5 |walk
talk Dagrun Ragehammer##34303
|tip He walks around inside the building.
Tell him _"Warchief Sylvanas Windrunner requires your aid repairing her soldiers' weapons."_
Speak with the Weaponsmith |q 50740/3 |goto 11.56,35.36
step
Leave the building |goto 11.65,35.07 < 5 |walk
talk Commander Grimfang##34122
Tell him _"Commander, the warchief asks that you prepare your outpost for an incoming army."_
Speak with Commander Grimfang |q 50740/1 |goto 12.11,33.86
step
talk High Overlord Saurfang##134574
turnin Zoram'gar Outpost##50740 |goto 35.17,49.44
accept On The Prowl##50772 |goto 35.17,49.44
step
Meet Sylvanas Near the Entrance to Darkshore |q 50772/1 |goto Darkshore/0 44.07,90.46
step
talk Lady Sylvanas Windrunner##134554
turnin On The Prowl##50772 |goto 44.08,90.50
accept Into the Woods##50800 |goto 44.08,90.50
step
kill 6 Ashenvale Huntress##135350 |q 50800/1 |goto 44.11,90.49
step
talk Lady Sylvanas Windrunner##134554
turnin Into the Woods##50800 |goto 44.07,90.49
accept Ripe for the Picking##50823 |goto 44.07,90.49
step
turnin Ripe for the Picking##50823 |goto Ashenvale/0 12.13,33.75
step
talk Lady Sylvanas Windrunner##134554
accept A Quick Flyover##50837 |goto 12.02,33.77
step
talk Zarvik Blastwix##135501
Speak with Zarvik Blastwix |q 50837/1 |goto 11.82,33.26
step
talk Zarvik Blastwix##135501
Tell him _"Let's Fly."_
Board the Bombardier |invehicle |goto 11.82,33.26 |q 50837
stickystart "Destroy_30_Wisps"
step
kill Marked Tree##140924+
|tip Use the "Anti-Air Canon" ability on your action bar.
Fell #3# Marked Trees |q 50837/2 |goto Darkshore/0 40.83,90.64
step
label "Destroy_30_Wisps"
kill Wisp##141268+
|tip Use the "Anti-Air Canon" ability on your action bar.
Destroy #30# Wisps |q 50837/3 |goto 42.35,90.41
step
talk Lady Sylvanas Windrunner##134554
turnin A Quick Flyover##50837 |goto Ashenvale/0 12.02,33.78
accept An Unstoppable Force##50880 |goto 12.02,33.78
step
Meet Sylvanas at the Wall |q 50880/1 |goto Darkshore/0 44.00,90.18
step
Pass Through the Wall |q 50880/2 |goto 43.81,89.77
step
talk Lady Sylvanas Windrunner##134554
turnin An Unstoppable Force##50880 |goto 42.84,87.43
accept Clearing Them Out##53604 |goto 42.84,87.43
accept A Glaive Misunderstanding##53605 |goto 42.84,87.43
stickystart "Kill_6_Darnassian_Archers"
step
use the Everburning Torch##158937
Burn #4# Glaive Throwers |q 53605/1 |goto 40.67,83.88
step
label "Kill_6_Darnassian_Archers"
Kill enemies around this area
Defeat #7# of the Night Elf Forces |q 53604/1 |goto 40.67,83.88
step
talk Lady Sylvanas Windrunner##134554
turnin Clearing Them Out##53604 |goto 42.43,82.06
turnin A Glaive Misunderstanding##53605 |goto 42.43,82.06
accept Blurred Vision##50878 |goto 42.43,82.06
stickystart "Kill_10_Frenzied_Blackwood_Furbolg"
step
kill 8 Sentry Owl##141359 |q 50878/1 |goto 42.36,78.18
step
label "Kill_10_Frenzied_Blackwood_Furbolg"
kill 10 Frenzied Blackwood Furbolg##140686 |q 50878/2 |goto 42.36,78.18
step
talk Lady Sylvanas Windrunner##135003
turnin Blurred Vision##50878 |goto 43.30,75.67
accept The Trees Have Ears##50879 |goto 43.30,75.67
step
kill Burning Ancient##141365 |q 50879/1 |goto 44.31,75.17
step
talk Lady Sylvanas Windrunner##135003
turnin The Trees Have Ears##50879 |goto 43.30,75.67
step
talk Lady Sylvanas Windrunner##135003
accept The Blackwood Den##52436 |goto 43.30,75.67
accept Aggressive Inspiration##53606 |goto 43.30,75.67
stickystart "Slay_10_Blackwood_Furbolgs"
step
click Horde Banner##289540
Plant the Northern Banner |q 53606/1 |goto 45.10,83.68
step
click Horde Banner##289540
Plant the Center Banner |q 53606/2 |goto 44.61,85.10
step
click Horde Banner##289540
Plant the Southern Banner |q 53606/3 |goto 44.39,86.53
step
label "Slay_10_Blackwood_Furbolgs"
Kill Blackwood enemies around this area
Slay #10# Blackwood Furbolgs |q 52436/1
step
talk Lady Sylvanas Windrunner##134554
turnin The Blackwood Den##52436 |goto 43.32,84.71
turnin Aggressive Inspiration##53606 |goto 43.32,84.71
accept The Start of Something Good##52437 |goto 43.32,84.71
step
Meet Sylvanas at Nazj'vel |q 52437/1 |goto 35.81,84.77
step
talk Jux Burstkix##144346
turnin The Start of Something Good##52437 |goto 35.82,84.84
accept Fueling the Horde War Machine##53608 |goto 35.82,84.84
accept A Very Clear Message##53609 |goto 35.82,84.84
stickystart "Slay_10_Night_Elves"
step
click Azerite Deposit##297790+
|tip They look like small multicolored rocks on the ground around this area.
Collect #6# Azerite |q 53608/1 |goto 32.63,84.08
step
label "Slay_10_Night_Elves"
Kill enemies around this area
Slay #10# Night Elves |q 53609/1 |goto 32.63,84.08
step
talk Jux Burstkix##144346
turnin Fueling the Horde War Machine##53608 |goto 35.82,84.84
turnin A Very Clear Message##53609 |goto 35.82,84.84
accept A Gift of Azerite##53627 |goto 35.82,84.84
step
talk Zarvik Blastwix##135501
|tip He walks around this area.
turnin A Gift of Azerite##53627 |goto 44.60,86.54
accept A Wild Ride##52438 |goto 44.60,86.54
step
clicknpc Goblin Hellion##141847
Use the Goblin Hellion |q 52438/1 |goto 44.76,83.45
step
Ride the Goblin Hellion to Wildbend River |q 52438/2 |goto 41.15,69.32
stickystart "Slay_20_Kaldorei_Forces"
step
kill Awakened Ancient##140741+
|tip Use the abilities on your action bar.
Slay #5# Awakened Ancients |q 52438/3 |goto 40.34,68.01
step
label "Slay_20_Kaldorei_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kaldorei forces |q 52438/4 |goto 41.01,67.80
step
talk Lady Sylvanas Windrunner##134554
turnin A Wild Ride##52438 |goto 42.70,67.75
accept A Looming Threat##52806 |goto 42.70,67.75
step
talk Lady Sylvanas Windrunner##134554
Ask her _"Where do we go from here, Warchief?"_
Speak with Sylvanas at the Blackwood Den |q 52806/1 |goto 44.70,86.78
step
talk Lady Sylvanas Windrunner##134554
turnin A Looming Threat##52806 |goto 44.70,86.78
accept Saurfang Returns##52967 |goto 44.70,86.78
step
talk High Overlord Saurfang##142310
turnin Saurfang Returns##52967 |goto 52.16,22.46
accept No Small Mercy##52970 |goto 52.16,22.46
accept Driving Them Out##53610 |goto 52.16,22.46
accept Seaside Rendezvous##52971 |goto 52.16,22.46
stickystart "Secure_8_Civilians"
stickystart "Slay_15_Lor'danel_defenders"
step
kill Ariel Stagguard##144345 |q 52971/2 |goto 51.66,17.80
step
kill Caranne Briarbow##142749 |q 52971/1 |goto 46.73,18.79
step
label "Secure_8_Civilians"
clicknpc Lor'danel Citizen##142408
Tell them _"Come with us to safety. We will not harm you."_
Secure #8# Civilians |q 52970/1 |goto 50.75,20.27
step
label "Slay_15_Lor'danel_defenders"
Kill enemies around this area
Slay #15# Lor'danel Defenders |q 53610/1 |goto 50.23,18.67
step
talk High Overlord Saurfang##142310
turnin No Small Mercy##52970 |goto 52.16,22.45
turnin Driving Them Out##53610 |goto 52.16,22.45
turnin Seaside Rendezvous##52971 |goto 52.16,22.45
accept Killer Queen##52981 |goto 52.16,22.45
step
Find Saurfang in Northern Darkshore |q 52981/1 |goto 45.93,23.55
step
Watch the dialogue
Assist the Warchief |q 52981/2 |goto 46.13,24.40
step
Watch the dialogue
Follow Saurfang |q 52981/3 |goto 46.12,24.28
step
talk Lady Sylvanas Windrunner##144466
Tell her _"I am ready."_ |q 52981/4 |goto 45.52,18.25
step
talk Lady Sylvanas Windrunner##144466
turnin Killer Queen##52981 |goto 45.51,18.24
step
use the War-Torn Reins of the Undercity Plaguebat##163128
learnmount Undercity Plaguebat##272472
step
_Congratulations!_
You Collected the "Undercity Plaguebat" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Profession Mounts\\Great Sea Ray",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"aquatic, mount, battle, for, azeroth"},
mounts={278803},
patch='80100',
mounttype='Aquatic',
model={73253},
description="\nThis mount is acquired by a random world drop.",
},[[
step
Fish in any water on Kul Tiras or Zandalar
collect Great Sea Ray##163131 |n
|tip This comes from fishing in any water in BFA zones.
use the Great Sea Ray##163131
Learn the "Great Sea Ray" Mount |learnmount Great Sea Ray##278803 |goto Nazmir/0 60.67,20.67
step
_Congratulations!_
You Collected the "Great Sea Ray" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Profession Mounts\\Engineering\\Mecha-Mogul Mk2",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={274621},
patch='80100',
mounttype='unknown',
model={},
description="\nThis mount is acquired by crafting it with the Engineering profession.",
},[[
step
Reach Level 150 Zandalari Engineering |skill Zandalari Engineering,150 |or
|tip Use the "Zandalari Engineering" profession guide to accomplish this.
'|learnmount Mecha-Mogul Mk2##274621 |or
step
Equip a "AZ3-R1-T3" Headgear
|tip This is a crafted item.
|tip You will need to have the 3 levels of Azerite Upgrades available.
|tip For the first slot, choose the upgrade that grants +25 Zandalari Engineering.
|tip For the third slot, choose the upgrade that grants +30 Zandalari Engineering.
|tip The higher your Zandalari Engineering skill, the higher the chance for drops later.
Click here to continue |confirm |complete hasmount(274621)
step
collect 50 Platinum Ore##152513 |complete hasmount(274621)
|tip Use the "Platinum" profession farming guide if you have Mining.
|tip You can also purchase them from the Auction House.
step
collect 100 Storm Silver Ore##152579 |complete hasmount(274621)
|tip Use the "Storm Silver" profession farming guide if you have Mining.
|tip You can also purchase them from the Auction House.
step
kill Mogul Razdunk##131227
|tip You will need to kill Mogul Razdunk on "Mythic difficulty"
|tip You need a premade group in order to do Mythic dungeons.
Enter The MOTHERLODE!! |goto The MOTHERLODE!!/0 0.00,0.00 < 1000 |c |complete hasmount(274621)
step
Kill trash mobs inside of The MOTHERLODE!!
collect Azerite Inspir-A-Geneering Elixir##161138 |complete hasmount(274621)
|tip You can also buy this from the Auction House.
step
use the Azerite Inspir-A-Geneering Elixir##161138
Gain the Azerite Inspir-A-Geneering buff |havebuff Time Travelling##133214 |complete hasmount(274621)
stickystart "Collect_Blast-Fired_Electric_Servomotor"
stickystart "Collect_Crush_Resistant_Stabilizer"
stickystart "Collect_Barely_Stable_Azerite_Reactor"
stickystart "Collect_Mecha-Mogul_Mk1_Remote_Activation_Device"
step
collect 20 Azerite Forged Protection Plating##161136 |complete hasmount(274621)
|tip These come from Shredders between the last two bosses.
|tip You must have the "Kul Turan Skinning" skill in order to collect these.
step
label "Collect_Blast-Fired_Electric_Servomotor"
collect 20 Blast-Fired Electric Servomotor##161137 |complete hasmount(274621)
|tip These come from Venture Co. War Machines while having the Azerite Inspir-A-Geneering buff.
step
label "Collect_Crush_Resistant_Stabilizer"
collect 20 Crush Resistant Stabilizer##161132 |complete hasmount(274621)
|tip These come from mechanical enemies in the MOTHERLODE!! on Mythic difficulty.
step
label "Collect_Barely_Stable_Azerite_Reactor"
collect 1 Barely Stable Azerite Reactor##161131 |complete hasmount(274621)
|tip This comes from Dr Boom in the MOTHERLODE!! on Mythic difficulty.
|tip He is found before the first boss.
step
label "Collect_Mecha-Mogul_Mk1_Remote_Activation_Device"
collect 1 Mecha-Mogul Mk1 Remote Activation Device##161129 |complete hasmount(274621)
|tip This comes from Mogul Razdunk, the last boss of The MOTHERLODE!! on Mythic difficulty.
step
kill Mogul Razdunk##132713
|tip He's the last boss of the instance.
collect Schematic: Mecha-Mogul Mk2##161135 |complete hasmount(274621)
step
use the Schematic: Mecha-Mogul Mk2##161135
Learn the "Mecha-Mogul Mk2" Recipe |learn Mecha-Mogul Mk2##274621 |complete hasmount(274621)
step
collect 20 Expulsom##152668 |complete hasmount(274621)
|tip They are obtained from World Quests, Salvaging Gear, Milling Herbs and scrapping magical items.
You can find the Shred-Master Mk1 here [Dazar'alor/0 45.03,39.93]
step
Open Your Zandalari Engineering Crafting Panel:
_<Create a Mecha-Mogul Mk2>_
collect Mecha-Mogul Mk2##161134 |complete hasmount(274621)
step
use the Mecha-Mogul Mk2##161134
Learn the "Mecha-Mogul Mk2" Mount |learnmount Mecha-Mogul Mk2##274621
step
_Congratulations!_
You Collected the "Mecha-Mogul Mk2" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Quest Mounts\\Scrapforged Mechaspider",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","mechagon","island"},
mounts={299159},
patch='82000',
mounttype='Ground',
model={90712},
description="\nThis mount is acquired by completing the \"Drive It Away Today\" questline on Mechagon Island.",
},[[
leechsteps "Leveling Guides\\Battle for Azeroth (10-50)\\Kul Tiras\\Mechagon Island\\Mechagon Island" 1-138
step
use the Scrapforged Mechaspider##168827
Learn the "Scrapforged Mechaspider" Mount |learnmount Scrapforged Mechaspider##299159
step
_Congratulations!_
You Collected the "Scrapforged Mechaspider" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Quest Mounts\\Snapdragon Kelpstalker",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","ground","deepcoral","snapdragon","akana"},
mounts={300146},
patch='82000',
mounttype='Ground',
model={91237},
description="\nThis mount is acquired by completing the \"Good Girl\" quest after reaching rank 20 with Neri in Nazjatar.",
},[[
step
Unlock Nazjatar Bodyguards and World Quests |q 57005 |future
|tip Use the "Nazjatar" leveling guide to accomplish this.
|tip This quest, "Becoming a Friend", is finished on step 85 of the guide.
|tip Earning this mount will also unlock the Alliance version, Deepcoral Snapdragon.
step
click Calling Conch##322805
|tip Inside the cave.
Choose _<Request Neri>_
Recruit Neri |havebuff spell:292998 |goto Nazjatar/0 49.84,64.65 |complete hasmount(300146)
step
With Neri as your Bodyguard:
Reach Rank 20 with Neri
|tip Complete bodyguard quests using the "Nazjatar World Quests" guide.
confirm |complete hasmount(300146)
step
_Next to you:_
talk Neri Sharpfin##151300
|tip She should be next to you, if not recruit him from the Calling Conch in Newhome.
accept Good Girl##56214
step
_Next to you:_
talk Neri Sharpfin##151300
|tip She should be next to you, if not recruit him from the Calling Conch in Newhome.
turnin Good Girl##56214
step
use the Snapdragon Kelpstalker##169199
Learn the "Snapdragon Kelpstalker" Mount |learnmount Snapdragon Kelpstalker##300146
step
_Congratulations!_
You Collected the "Snapdragon Kelpstalker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Talanji's Expedition\\Expedition Bloodswarmer",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={275841},
patch='80100',
mounttype='Flying',
model={76708},
description="\nThis mount is acquired by becoming Exalted with the Talanji's Expedition then buying the mount for 10,000 gold.",
},[[
step
Reach Exalted Reputation with the Talanji's Expedition |complete rep('Talanji\'s Expedition')==Exalted
|tip Use the "Talanji's Expedition" reputation guide to accomplish this.
step
talk Provisioner Lija##135459
buy Reins of the Expedition Bloodswarmer##161774 |goto Nazmir/0 39.07,79.51 |complete hasmount(275841)
step
use the Reins of the Expedition Bloodswarmer##161774
Learn the "Expedition Bloodswarmer" Mount |learnmount Expedition Bloodswarmer##275841
step
_Congratulations!_
You Collected the "Expedition Bloodswarmer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Zandalari Empire\\Cobalt Pterrordax",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={275837},
patch='80100',
mounttype='Flying',
model={87045},
description="\nThis mount is acquired by becoming Exalted with the Zandalari Empire and purchasing it from Natal'hakata \n"..
"in Dazar'alor for 10,000 gold.",
},[[
step
Reach Exalted Reputation with the Zandalari Empire |complete rep('Zandalari Empire') == Exalted
|tip Use the "Zandalari Empire" reputation guide to accomplish this.
step
Enter the building |goto Dazar'alor/0 49.93,42.16 < 10 |only if walking
Run up the stairs |goto Dazar'alor/1 55.16,45.93 < 10 |only if walking
talk Natal'hakata##131287
|tip Inside the building.
buy 1 Reins of the Cobalt Pterrordax##161665 |goto Dazar'alor/2 67.22,71.68
|tip This costs 10,000 gold.
step
use the Reins of the Cobalt Pterrordax##161665
Learn the "Cobalt Pterrordax" Mount |learnmount Cobalt Pterrordax##275837
step
_Congratulations!_
You Collected the "Cobalt Pterrordax" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Reputation Mounts\\Voldunai\\Voldunai Dunescraper",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"flying, mount, battle, for, azeroth"},
mounts={275840},
patch='80100',
mounttype='Flying',
model={80972},
description="\nThis mount is purchased from Hoarder Jena after reaching Exalted reputation with the Voldunai.",
},[[
step
Reach Exalted Reputation with the Voldunai |complete rep('Voldunai')==Exalted
|tip Use the "Voldunai" reputation guide to accomplish this.
step
talk Hoarder Jena##135804
buy Reins of the Voldunai Dunescraper##161667 |goto Vol'dun/0 56.69,49.74 |complete hasmount(275840)
|tip It costs 72,000 gold.
step
use the Reins of the Voldunai Dunescraper##161667
Learn the "Voldunai Dunescraper" Mount |learnmount Voldunai Dunescraper##275840
step
_Congratulations!_
You Collected the "Voldunai Dunescraper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Reputation Mounts\\Voldunai\\Alabaster Hyena",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={237287},
patch='80100',
mounttype='Ground',
model={75323},
description="\nThis mount is purchased from Hoarder Jena after reaching Exalted reputation with the Voldunai.",
},[[
step
Reach Exalted Reputation with the Voldunai |complete rep('Voldunai')==Exalted
|tip Use the "Voldunai" reputation guide to accomplish this.
step
talk Hoarder Jena##135804
buy Reins of the Alabaster Hyena##161773 |goto Vol'dun/0 56.69,49.74 |complete hasmount(237287)
|tip It costs 10,000 gold.
step
use the Reins of the Alabaster Hyena##161773
Learn the "Alabaster Hyena" Mount |learnmount Alabaster Hyena##237287
step
_Congratulations!_
You Collected the "Alabaster Hyena" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Aquatic Mounts\\Vendor Mounts\\Crimson Tidestallion",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"mount"},
mounts={300153},
patch='82000',
mounttype='Aquatic',
model={92254},
description="\nThis mount is can be purchased from Mrrl in Nazjatar after purchasing numerous other items in a specific order.",
},[[
step
Obtain an Azsh'iri Stormsurger Cape |complete itemcount(169489) >= 1 |goto Nazjatar/0 49.23,62.08
|tip This is obtained randomly from Benthic Cloak tokens.
|tip You can purchase them here from Finder Palta for five Prismatic Manapearls.
|tip You can also acquired them randomly from mobs and chests in Nazjatar.
step
Equip the Azsh'iri Stormsurger Cape |equipped Azsh'iri Stormsurger Cape##169489
step
Enter the cave |goto 46.39,32.59 < 15 |walk
Talk Murlaco
|tip Inside the cave.
|tip It costs 666 gold.
buy 1 Hungry Herald's Tentacle Taco##170100 |goto 45.60,32.39
step
talk Mrrglrlr##151950
|tip It runs around the fire.
buy 714 Slimy Naga Eyeball##167896 |goto 48.18,62.43
step
talk Hurlgrl##151953
buy 128 Sweet Sea Vegetable##167915 |goto 47.78,63.12
step
talk Flrgrrl##151952
|tip Swimming underwater in the pond.
buy 324 Unidentified Mass##167912 |goto 46.99,62.55
buy 32 Just Regular Butter##167911 |goto 46.99,62.55
step
talk Grrmrlg##151951
buy 238 Curious Murloc Horn##167905 |goto 47.72,61.43
step
talk Hurlgrl##151953
buy 48 Dirty Sock##167916 |goto 47.78,63.12
buy 14 Healthy Murloc Lunch##167913 |goto 47.78,63.12
step
use the Dirty Sock##167916
|tip Use all of them.
|tip You must be standing in water.
Clean the Socks |complete itemcount(167923) >= 48 |goto 47.69,62.22
step
talk Grrmrlg##151951
buy 16 Sea Giant Foot Dust##167908 |goto 47.72,61.43
step
talk Mrrglrlr##151950
|tip It runs around the fire.
buy 2 Pulsating Blood Stone##169780 |goto 48.18,62.43
buy 16 Smelly Pile of Gloop##167904 |goto 48.18,62.43
step
talk Flrgrrl##151952
|tip Swimming underwater in the pond.
buy 28 Ghost Food##167909 |goto 46.99,62.55
step
talk Hurlgrl##151953
buy 4 Cultist Pinky Finger##169783 |goto 38.65,54.46
step
talk Mrrl##152084
buy 1 Crimson Tidestallion##169202 |goto 46.95,61.45
step
use the Crimson Tidestallion##169202
collect Crimson Tidestallion##169202
step
use the Crimson Tidestallion##169202
Learn the "Crimson Tidestallion" Mount |learnmount Crimson Tidestallion##300153
step
_Congratulations!_
You Collected the "Crimson Tidestallion" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Rustbolt Resistor",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","mechagon","island"},
mounts={299170},
patch='82000',
mounttype='Flying',
model={92731},
description="\nThis mount can be purchased from the Stolen Royal Vendorbot on Mechagon Island for 524,288 gold, adjusted for reputation.",
},[[
step
Reach Exalted with the Rustbolt Resistance |complete rep('Rustbolt Resistance') == Exalted
|tip Use the "Rustbolt Resistance" reputation guide to accomplish this.
step
talk Stolen Royal Vendorbot##150716
buy 1 Rustbolt Resistor##168829 |goto Mechagon Island/0 73.69,36.89
|tip It costs 524,288 gold, adjusted for reputation.
step
use the Rustbolt Resistor##168829
Learn the "Rustbolt Resistor" Mount |learnmount Rustbolt Resistor##299170
step
_Congratulations!_
You Collected the "Rustbolt Resistor" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Unshackled Waveray",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"mount","nazjatar"},
mounts={291538},
patch='82000',
mounttype='Flying',
model={90727},
description="\nThis mount can be purchased from Finder Pruc in Nazjatar after reaching Exalted status "..
"with The Unshackled.",
},[[
step
Reach Exalted with The Unshackled |complete rep('The Unshackled') == Exalted
|tip Use "The Unshackled" reputation guide to accomplish this.
step
Collect #250# Prismatic Manapearls |complete curcount(1721) >= 250
|tip Complete daily quests, world quests, and bodyguard quests in Nazjatar.
|tip You can also search for treasure chests and kill rare enemies.
step
talk Finder Pruc##153512
|tip Inside the building.
buy 1 Unshackled Waveray##167170 |goto Nazjatar/0 49.15,62.25
step
use the Unshackled Waveray##167170
Learn the "Unshackled Waveray" Mount |learnmount Unshackled Waveray##291538
step
_Congratulations!_
You Collected the "Unshackled Waveray" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Explorer's Dunetrekker",{
author="support@zygorguides.com",
description="\nThis mount is awarded when your Recruit-a-Friend allies have purchased three months "..
"of game time in total across all that you have recruited.",
startlevel=50.0,
keywords={"Recruit","a","Friend"},
mounts={307263},
patch='82500',
mounttype='Ground',
model={93203},
},[[
step
collect 1 Reins of the Explorer's Dunetrekker##173297 |or
|tip Recruit one or more of your friends using the Recruit-a-Friend program.
|tip This should be available in your mailbox after one or more of your Recruit-a-Friends purchase 3 months of game time in total.
'|learnmount Explorer's Dunetrekker##307263 |or
step
use the Reins of the Explorer's Dunetrekker##173297
Learn the "Explorer's Dunetrekker" Mount |learnmount Explorer's Dunetrekker##307263
step
_Congratulations!_
You Collected the "Explorer's Dunetrekker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Explorer's Jungle Hopper",{
author="support@zygorguides.com",
description="\nThis mount is awarded when your Recruit-a-Friend allies have purchased nine months "..
"of game time in total across all that you have recruited.",
startlevel=50.0,
keywords={"Recruit","a","Friend"},
mounts={307256},
patch='82500',
mounttype='Flying',
},[[
step
collect 1 Keys to the Explorer's Jungle Hopper##173299 |or
|tip Recruit one or more of your friends using the Recruit-a-Friend program.
|tip This should be available in your mailbox after one or more of your Recruit-a-Friends purchase 9 months of game time in total.
'|learnmount Explorer's Jungle Hopper##307256 |or
step
use the Keys to the Explorer's Jungle Hopper##173299
Learn the "Explorer's Jungle Hopper" Mount |learnmount Explorer's Jungle Hopper##307256
step
_Congratulations!_
You Collected the "Explorer's Jungle Hopper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Mighty Caravan Brutosaur",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={264058},
patch='80100',
mounttype='Ground',
model={83632},
description="\nThis mount is acquired by purchasing the mount for 5,000,000 gold.",
},[[
step
talk Talutu##125879
buy Reins of the Mighty Caravan Brutosaur##163042 |n
|tip You will need 5,000,000 gold.
use the Reins of the Mighty Caravan Brutosaur##163042
Learn the "Mighty Caravan Brutosaur" Mount |learnmount Mighty Caravan Brutosaur##264058 |goto Dazar'alor/0 48.58,87.09
step
_Congratulations!_
You Collected the "Mighty Caravan Brutosaur" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Palehide Direhorn",{
author="support@zygorguides.com",
startlevel=45.0,
keywords={"ground, mount, battle, for, azeroth"},
mounts={279474},
patch='80100',
mounttype='Ground',
model={87779},
description="\nThis mount is acquired by purchasing the mount for 500,000 gold.",
},[[
step
talk Talutu##125879
buy Reins of the Palehide Direhorn##163589 |n
|tip You will need 500,000 gold.
use the Reins of the Palehide Direhorn##163589
Learn the "Palehide Direhorn" Mount |learnmount Palehide Direhorn##279474 |goto Dazar'alor/0 48.58,87.09
step
_Congratulations!_
You Collected the "Palehide Direhorn" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Rubyshell Krolusk",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Ground, Mount, Battle, For, Azeroth, Rubyshell, Krolusk"},
mounts={288735},
patch='81000',
mounttype='Ground',
model={90394},
description="\nThis mount is acquired by purchasing the mount for 200 Honorbound Service Medals.",
},[[
step
Collect 200 Honorbound Service Medals |complete curcount(1716)>=200
|tip These come from completing world quests in Zandalar.
|tip You can also get them from completing world quests in Warfronts when your faction controls them.
step
talk Provisioner Mukra##148924
buy Rubyshell Krolusk##166464 |n
use the Rubyshell Krolusk##166464
Learn the "Rubyshell Krolusk" Mount |learnmount Rubyshell Krolusk##288735 |goto Dazar'alor/0 51.21,95.09
step
_Congratulations!_
You Collected the "Rubyshell Krolusk" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Blue Marsh Hopper",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Ground, Mount, Battle, For, Azeroth, Blue, Marsh, Hopper"},
mounts={288587},
patch='81000',
mounttype='Ground',
model={81959},
description="\nThis mount is acquired by purchasing the mount for 333,333 gold.",
},[[
step
Enter the cave |goto Nazmir/0 71.22,55.80
talk Gottum##148810
buy Blue Marsh Hopper##166442 |n
use the Blue Marsh Hopper##166442
Learn the "Blue Marsh Hopper" Mount |learnmount Blue Marsh Hopper##288587 |goto 70.85,56.49
step
_Congratulations!_
You Collected the "Blue Marsh Hopper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Green Marsh Hopper",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Ground, Mount, Battle, For, Azeroth, Green, Marsh, Hopper"},
mounts={259740},
patch='80100',
mounttype='Ground',
model={81952},
description="\nThis mount is acquired by purchasing the mount for 333,333 gold.",
},[[
step
Enter the cave |goto Nazmir/0 71.22,55.80
talk Gottum##148810
buy Green Marsh Hopper##163183 |n
use the Green Marsh Hopper##163183
Learn the "Green Marsh Hopper" Mount |learnmount Green Marsh Hopper##259740 |goto 70.85,56.49
step
_Congratulations!_
You Collected the "Green Marsh Hopper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Vendor Mounts\\Yellow Marsh Hopper",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Ground, Mount, Battle, For, Azeroth, Yellow, Marsh, Hopper"},
mounts={288589},
patch='81000',
mounttype='Ground',
model={81958},
description="\nThis mount is acquired by purchasing the mount for 333,333 gold.",
},[[
step
Enter the cave |goto Nazmir/0 71.22,55.80
talk Gottum##148810
buy Yellow Marsh Hopper##166443 |n
use the Yellow Marsh Hopper##166443
Learn the "Yellow Marsh Hopper" Mount |learnmount Yellow Marsh Hopper##288589 |goto 70.85,56.49
step
_Congratulations!_
You Collected the "Yellow Marsh Hopper" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Wriggling Parasite",{
author="support@zygorguides.com",
description="\nThis mount is acquired by earning the \"Glory of the Ny'alotha Raider\" Achievement.",
startlevel=50.0,
keywords={"Glory","of","the","Ny'alotha","Raider"},
mounts={316343},
patch='83000',
mounttype='Flying',
model={92714},
},[[
leechsteps "Achievement Guides\\Dungeons & Raids\\Battle for Azeroth Raids\\Glory of the Ny'alotha Raider" 1-13
step
collect 1 Wriggling Parasite##174861 |or
|tip It should be in your mailbox.
'|learnmount Wriggling Parasite##316343 |or
step
use the Wriggling Parasite##174861
Learn the "Wriggling Parasite" Mount |learnmount Wriggling Parasite##316343
step
_Congratulations!_
You Collected the "Wriggling Parasite" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Quest Mounts\\Shadowbarb Drone (Beta)",{
author="support@zygorguides.com",
description="\nThis mount can be collected after completing a daily questline that can be started during "..
"the Aqir assault in Uldum.",
startlevel=50.0,
keywords={"Ready","to","Fly","Aqir","Assault"},
mounts={316339},
patch='83000',
mounttype='Flying',
model={94880},
},[[
step
Wait for the Aqir Invasion in Uldum to Occur |complete ZGV.InPhase('UldumInvasionLeft') |q 58802 |future
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnmount Shadowbarb Drone##316339 |or
step
click Voidtouched Eggs
accept The Incredible Egg##58802 |goto 20.81,61.92
step
talk H'partho Ardoros##161738
turnin The Incredible Egg##58802 |goto 55.61,35.33
step
Watch the dialogue
talk H'partho Ardoros##161738
accept Match the Hatch##58803 |goto 55.61,35.33
step
click Voidtouched Eggs
|tip They look like clutches of shadowy eggs on the ground around this area.
Investigate #7# Voidtouched Eggs |q 58803/1 |goto 35.05,28.88
step
talk H'partho Ardoros##161738
turnin Match the Hatch##58803 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
accept Void Incubation##58804 |goto 55.61,35.33 |only if questpossible
accept Encased in Amber##58808 |goto 55.61,35.33 |only if questpossible
accept Continued Incubation##58805 |goto 55.61,35.33 |only if questpossible
accept Warmth of the Sun##58806 |goto 55.61,35.33 |only if questpossible
accept Wrapping Up##58807 |goto 55.61,35.33 |only if questpossible
Accept the Quest Available Today |complete haveq(58804,58808,58805,58806,58807) |goto Uldum New/0 55.61,35.33 |or
'|complete completedq(58810) |or
step
label "Begin_Stage_1_Quests"
Proceeding |complete haveq(58804,58808,58805,58806,58807) |or
'|complete completedq(58810) |or
step
click Crystallized Void##343589+
|tip They look like tiny black rocks on the ground around this area.
collect 10 Crystallized Void##174993 |q 58804/1 |goto Vale of Eternal Blossoms New/0 81.49,45.77 |or |only if ZGV.InPhase('ValeInvasionRight')
You can find more around [71.25,21.58] |only if ZGV.InPhase('ValeInvasionRight')
collect 10 Crystallized Void##174993 |q 58804/1 |goto Uldum New/0 54.52,50.84 |or |only if ZGV.InPhase('UldumInvasionCenter')
|only if haveq(58804)
step
click Amber Incubator
Watch the dialogue
Airlift the Amber Incubator |q 58808/1 |goto Vale of Eternal Blossoms New/0 10.14,62.95
|only if haveq(58808)
step
click Crystallized Void##343589+
|tip They look like tiny black rocks on the ground around this area.
collect 10 Crystallized Void##174993 |q 58805/1 |goto Vale of Eternal Blossoms New/0 81.49,45.77 |or |only if ZGV.InPhase('ValeInvasionRight')
You can find more around [71.25,21.58] |only if ZGV.InPhase('ValeInvasionRight')
collect 10 Crystallized Void##174993 |q 58805/1 |goto Uldum New/0 54.52,50.84 |or |only if ZGV.InPhase('UldumInvasionCenter')
|only if haveq(58805)
step
click Solar Emanator
|tip Fly down into the Chamber of the Stars.
collect 1 Solar Emanator##174996 |q 58806/1 |goto Uldum New/0 61.68,29.80
|only if haveq(58806)
step
kill Aqir Voidcaster##154352+
collect 30 Aqir Webbing##175001 |q 58807/1 |goto Uldum New/0 40.27,40.75
|tip You can only complete this during the Aqir assault in Uldum.
|only if haveq(58807)
step
talk H'partho Ardoros##161738
turnin Void Incubation##58804 |goto Uldum New/0 55.61,35.33 |only if haveq(58804)
turnin Encased in Amber##58808 |goto Uldum New/0 55.61,35.33 |only if haveq(58808)
turnin Continued Incubation##58805 |goto Uldum New/0 55.61,35.33 |only if haveq(58805)
turnin Warmth of the Sun##58806 |goto Uldum New/0 55.61,35.33 |only if haveq(58806)
turnin Wrapping Up##58807 |goto Uldum New/0 55.61,35.33 |only if haveq(58807)
|only if haveq(58804,58808,58805,58806,58807)
step
talk H'partho Ardoros##161738
accept Void Incubation##58804 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Encased in Amber##58808 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Continued Incubation##58805 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Warmth of the Sun##58806 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Wrapping Up##58807 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_1_Quests"
accept Coming Out of His Shell##58810 |only if questpossible |next "Begin_Stage_1.5" |or
Accept the Quest Available Today |complete haveq(58804,58808,58805,58806,58807) |goto Uldum New/0 55.61,35.33 |next "Begin_Stage_1_Quests" |or
|tip You must wait until the next daily reset to accept this quest.
'|complete completedq(58810) |or
step
label "Begin_Stage_1.5"
click Amber Incubator
Watch the Voidtouched Egg Hatch |q 58810/1 |goto 55.69,35.34
step
talk H'partho Ardoros##161738
_<Choose a name>_
Name the Shadowbarb Larva |q 58810/2 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
turnin Coming Out of His Shell##58810 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
accept A Balanced Diet##58811 |goto 55.61,35.33
|tip You must wait until the next daily reset to accept this quest.
step
Kill beast enemies around this area
collect 12 Chunk of Meat##175014 |q 58811/1 |goto 68.17,31.96
You can find more around [71.62,60.64]
step
click Place Meat
Feed the Larva |q 58811/2 |goto 55.66,35.24
step
talk H'partho Ardoros##161738
turnin A Balanced Diet##58811 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
accept Meat Alternatives##58812 |goto 55.61,35.33 |only if questpossible
accept Super Jelly##58825 |goto 55.61,35.33 |only if questpossible
accept Bug Buddies##58818 |goto 55.61,35.33 |only if questpossible
accept Fetid Filets##58813 |goto 55.61,35.33 |only if questpossible
accept More Fetid Filets##58858 |goto 55.61,35.33 |only if questpossible
accept A Bloody Treat##58826 |goto 55.61,35.33 |only if questpossible
accept Action Figures##58817 |goto 55.61,35.33 |only if questpossible
Accept the Quest Available Today |complete haveq(58812,58825,58818,58813,58858,58826,58817) |goto Uldum New/0 55.61,35.33 |or
'|complete completedq(58829) |or
step
label "Begin_Stage_2_Quests"
Proceeding |complete haveq(58812,58825,58818,58813,58858,58826,58817) |or
'|complete completedq(58829) |or
step
Kill Aqir enemies around this area
collect 12 Insectoid Meat##175015 |q 58812/1 |goto Uldum New/0 42.01,40.38
|only if haveq(58812)
step
click Place Meat
Feed the Larva |q 58812/2 |goto 55.66,35.24
|only if haveq(58812)
step
click Concentrated Royal Jelly##343668+
|tip They look like brown and orange jars on the ground around this area.
collect 8 Concentrated Royal Jelly##175022 |q 58825/1 |goto Vale of Eternal Blossoms New/0 11.42,31.98
|only if haveq(58825)
step
click Concentrated Royal Jelly
Feed the Larva |q 58825/2 |goto Uldum New /0 55.64,35.34
|only if haveq(58825)
step
click Docile Sandstone Hatchling+
|tip They look like tiny red beetles on the ground around this area.
Catch #5# Docile Sandstone Hatchlings |q 58818/1 |goto Uldum New/0 33.95,22.87
|only if haveq(58818)
step
Kill enemies around this area
collect 12 Corrupted Flesh##175016 |q 58813/1 |goto Uldum New/0 58.39,49.86 |only if ZGV.InPhase('UldumInvasionCenter')
collect 12 Corrupted Flesh##175016 |q 58813/1 |goto Vale of Eternal Blossoms New/0 78.08,49.20 |only if ZGV.InPhase('ValeInvasionRight')
|only if haveq(58813)
step
click Place Meat
Feed the Larva |q 58813/2 |goto Uldum New /0 55.66,35.24
|only if haveq(58813)
step
Kill enemies around this area
collect 12 Corrupted Flesh##175016 |q 58858/1 |goto Uldum New/0 58.39,49.86 |only if ZGV.InPhase('UldumInvasionCenter')
collect 12 Corrupted Flesh##175016 |q 58858/1 |goto Vale of Eternal Blossoms New/0 78.08,49.20 |only if ZGV.InPhase('ValeInvasionRight')
|only if haveq(58858)
step
click Place Meat
Feed the Larva |q 58858/2 |goto Uldum New /0 55.66,35.24
|only if haveq(58858)
step
Kill Dokani enemies around this area
collect 8 Vial of Purified Anima##175023 |q 58826/1 |goto Vale of Eternal Blossoms New/0 48.68,66.57
|only if haveq(58826)
step
click Place Meat
Feed the Larva |q 58826/2 |goto Uldum New /0 55.73,35.23
|only if haveq(58826)
step
Kill Amathet enemies around this area
collect 6 Amathet Figurine##175020 |q 58817/1 |goto Uldum New/0 64.47,28.88
|only if haveq(58817)
step
talk H'partho Ardoros##161738
turnin Meat Alternatives##58812 |goto Uldum New/0 55.61,35.33 |only if haveq(58812)
turnin Super Jelly##58825 |goto Uldum New/0 55.61,35.33 |only if haveq(58825)
turnin Bug Buddies##58818 |goto Uldum New/0 55.61,35.33 |only if haveq(58818)
turnin Fetid Filets##58813 |goto Uldum New/0 55.61,35.33 |only if haveq(58813)
turnin More Fetid Filets##58858 |goto Uldum New/0 55.61,35.33 |only if haveq(58858)
turnin A Bloody Treat##58826 |goto Uldum New/0 55.61,35.33 |only if haveq(58826)
turnin Action Figures##58817 |goto Uldum New/0 55.61,35.33 |only if haveq(58817)
|only if haveq(58812,58825,58818,58813,58858,58826,58817)
step
talk H'partho Ardoros##161738
accept Meat Alternatives##58812 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept Super Jelly##58825 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept Bug Buddies##58818 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept Fetid Filets##58813 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept More Fetid Filets##58858 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept A Bloody Treat##58826 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept Action Figures##58817 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2_Quests"
accept They Grow So Fast##58829 |goto 55.61,35.33 |only if questpossible |next "Begin_Stage_2.5" |or
Accept the Quest Available Today |complete haveq(58812,58825,58818,58813,58858,58826,58817) |goto Uldum New/0 55.61,35.33 |next "Begin_Stage_2_Quests" |or
|tip You must wait until the next daily reset to accept this quest.
'|complete completedq(58829) |or
step
label "Begin_Stage_2.5"
click Shadowbarb Cocoon
Open the Shadowbarb Cocoon |q 58829/1 |goto 55.71,35.26
step
talk H'partho Ardoros##161738
turnin They Grow So Fast##58829 |goto 55.61,35.33
step
talk H'partho Ardoros##161738
accept Aqir Instincts##58830 |goto 55.61,35.33 |only if questpossible
accept Big Bad Beetle##58860 |goto 55.61,35.33 |only if questpossible
accept Someone His Own Size##58859 |goto 55.61,35.33 |only if questpossible
accept The Mantids' Mettle##58861 |goto 55.61,35.33 |only if questpossible
accept The Littlest Defender##58862 |goto 55.61,35.33 |only if questpossible
accept Honing Instincts##58831 |goto 55.61,35.33 |only if questpossible
Accept the Quest Available Today |complete haveq(58830,58860,58859,58861,58862,58831) |goto Uldum New/0 55.61,35.33 |or
'|complete completedq(58863) |or
step
label "Begin_Stage_3_Quests"
Proceeding |complete haveq(58830,58860,58859,58861,58862,58831) |or
'|complete completedq(58863) |or
step
use H'partho's Whistle##175055
|tip NOTE: You will have 10 minutes to train your hatchling.
|tip After this time expires, you will not be able to summon it again until the next daily reset.
|tip You must kill enemies in Uldum or Vale of Eternal Blossoms.
|tip More powerful enemies such as elites or rares grant more experience to your hatchling.
|tip This location is only a recommendation.
|tip You can also use the POI system to hunt rares or choose a favored spot.
Use H'partho's Whistle |q 58830/1 |goto Uldum New/0 39.98,41.43 |only if ZGV.InPhase('UldumInvasionLeft')
Use H'partho's Whistle |q 58830/1 |goto Uldum New/0 61.59,68.99 |only if ZGV.InPhase('UldumInvasionCenter')
Use H'partho's Whistle |q 58830/1 |goto Uldum New/0 75.32,52.05 |only if ZGV.InPhase('UldumInvasionRight')
|only if haveq(58830)
step
Kill enemies around this area
|tip Kill as many enemies as you can as quickly as you can.
|tip Elites and rares fill your hatchling's progress bar faster.
|tip You have ten minutes to kill as many things as you can.
Train Your Hatchling |q 58830/2 |goto Uldum New/0 39.98,41.43 |only if ZGV.InPhase('UldumInvasionLeft')
Train Your Hatchling |q 58830/2 |goto Uldum New/0 61.59,68.99 |only if ZGV.InPhase('UldumInvasionCenter')
Train Your Hatchling |q 58830/2 |goto Uldum New/0 75.32,52.05 |only if ZGV.InPhase('UldumInvasionRight')
|only if haveq(58830)
step
clicknpc Aqir Sandcrawler##162465
Defeat the Aqir Sandcrawler |q 58860/1 |goto Uldum New/0 35.46,31.60
|tip You must use a battle pet team that contains the Shadowbarb Hatchling pet you received as a reward.
|tip Beast pet abilities are beneficial for this fight.
|only if haveq(58860)
step
clicknpc Retinus the Seeker##162458
Defeat Retinus the Seeker |q 58859/1 |goto Uldum New/0 62.04,31.90
|tip You must use a battle pet team that contains the Shadowbarb Hatchling pet you received as a reward.
|tip Dragonkin pet abilities are beneficial for this fight.
|only if haveq(58859)
step
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96
|only if haveq(58861,58862)
step
clicknpc Vil'thik Hatchling##162471
|tip On the highest platform.
Defeat the Vil'thik Hatchling |q 58861/1 |goto Vale of Eternal Blossoms New/0 7.34,31.90
|tip You must use a battle pet team that contains the Shadowbarb Hatchling pet you received as a reward.
|tip Magic pet abilities are beneficial for this fight.
|only if haveq(58861)
step
clicknpc Baruk Stone Defender##162470
Defeat the Baruk Stone Defender |q 58862/1 |goto 28.55,34.94
|tip You must use a battle pet team that contains the Shadowbarb Hatchling pet you received as a reward.
|tip Undead pet abilities are beneficial for this fight.
|only if haveq(58862)
step
use H'partho's Whistle##175055
|tip NOTE: You will have 10 minutes to train your hatchling.
|tip After this time expires, you will not be able to summon it again until the next daily reset.
|tip You must kill enemies in Uldum or Vale of Eternal Blossoms.
|tip More powerful enemies such as elites or rares grant more experience to your hatchling.
|tip This location is only a recommendation.
|tip You can also use the POI system to hunt rares or choose a favored spot.
Use H'partho's Whistle |q 58831/1 |goto Uldum New/0 39.98,41.43 |only if ZGV.InPhase('UldumInvasionLeft')
Use H'partho's Whistle |q 58831/1 |goto Uldum New/0 61.59,68.99 |only if ZGV.InPhase('UldumInvasionCenter')
Use H'partho's Whistle |q 58831/1 |goto Uldum New/0 75.32,52.05 |only if ZGV.InPhase('UldumInvasionRight')
|only if haveq(58831)
step
Kill enemies around this area
|tip Kill as many enemies as you can as quickly as you can.
|tip Elites and rares fill your hatchling's progress bar faster.
|tip You have ten minutes to kill as many things as you can.
Train Your Hatchling |q 58831/2 |goto Uldum New/0 39.98,41.43 |only if ZGV.InPhase('UldumInvasionLeft')
Train Your Hatchling |q 58831/2 |goto Uldum New/0 61.59,68.99 |only if ZGV.InPhase('UldumInvasionCenter')
Train Your Hatchling |q 58831/2 |goto Uldum New/0 75.32,52.05 |only if ZGV.InPhase('UldumInvasionRight')
|only if haveq(58831)
step
talk H'partho Ardoros##161738
turnin Aqir Instincts##58830 |goto Uldum New/0 55.61,35.33 |only if haveq(58830)
turnin Big Bad Beetle##58860 |goto Uldum New/0 55.61,35.33 |only if haveq(58860)
turnin Someone His Own Size##58859 |goto Uldum New/0 55.61,35.33 |only if haveq(58859)
turnin The Mantids' Mettle##58861 |goto Uldum New/0 55.61,35.33 |only if haveq(58861)
turnin The Littlest Defender##58862 |goto Uldum New/0 55.61,35.33 |only if haveq(58862)
turnin Honing Instincts##58831 |goto Uldum New/0 55.61,35.33 |only if haveq(58831)
|only if haveq(58830,58860,58859,58861,58862,58831)
step
talk H'partho Ardoros##161738
accept Aqir Instincts##58830 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_3_Quests"
accept Big Bad Beetle##58860 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_3_Quests"
accept Someone His Own Size##58859 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_3_Quests"
accept The Mantids' Mettle##58861 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_3_Quests"
accept The Littlest Defender##58862 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_3_Quests"
accept Honing Instincts##58831 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Stage_3_Quests"
accept A Custom Order##58863 |goto Uldum New/0 55.61,35.33 |only if questpossible |next "Begin_Final_Stage" |or
Accept the Quest Available Today |complete haveq(58830,58860,58859,58861,58862,58831) |goto Uldum New/0 55.61,35.33 |next "Begin_Stage_3_Quests" |or
|tip You must wait until the next daily reset to accept this quest.
'|complete completedq(58863) |or
step
label "Begin_Final_Stage"
talk Blacksmith Abasi##164250
Ask him _"Can you craft a saddle for an aqir?"_
Speak with Blackmith Abasi |q 58863/1 |goto Uldum New/0 54.06,33.31
step
talk Blacksmith Abasi##164250
turnin A Custom Order##58863 |goto 54.06,33.31
step
talk Blacksmith Abasi##164250
accept Otherworldly Armaments##58865 |goto 54.06,33.31
step
Kill enemies around this area
|tip Cultist enemies can drop armaments.
collect 12 Black Empire Armament##175058 |q 58865/1 |goto Vale of Eternal Blossoms New/0 47.17,68.21 |only if ZGV.InPhase('ValeInvasionRight')
collect 12 Black Empire Armament##175058 |q 58865/1 |goto Uldum New/0 60.89,66.39 |only if ZGV.InPhase('UldumInvasionCenter')
step
talk Blacksmith Abasi##164250
turnin Otherworldly Armaments##58865 |goto Uldum New/0 54.06,33.31
step
talk Blacksmith Abasi##164250
accept My Own Drone##58866 |goto 54.06,33.31
|tip You must wait until the next daily reset to accept this quest.
step
talk H'partho Ardoros##161738
turnin My Own Drone##58866 |goto 55.61,35.33
step
collect 1 Shadowbarb Drone##174771 |or
'|learnmount Shadowbarb Drone##316339 |or
step
use the Shadowbarb Drone##174771
Learn the "Shadowbarb Drone" Mount |learnmount Shadowbarb Drone##316339
step
_Congratulations!_
You Collected the "Shadowbarb Drone" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Caravan Hyena",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"8.3","N'zoth","Nzoth","Corruption","Allied","Races","Vulpera"},
mounts={306423},
patch='83000',
mounttype='Ground',
model={92902},
description="\nThis mount is acquired by earning the \"Allied Races: Vulpera\" Achievement.",
},[[
step
Earn the "Secrets in the Sands" Achievement |achieve 12478
|tip Use the "Vol'dun" leveling guide to earn this achievement.
step
Reach Exalted Reputation with the Voldunai |complete rep('Voldunai') == Exalted
|tip Use the "Voldunai" reputation guide to accomplish this.
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
Ask him _"Why have you come to the embassy?"_
Question Commander Mokor |q 53890/1 |goto 48.21,71.74
step
talk First Arcanist Thalyssra##145531
|tip Inside the building.
Ask her _"Why have you come to the embassy?"_
Question First Arcanist Thalyssra |q 53890/3 |goto 48.65,71.27
step
talk Bladeguard Sonji##145533
|tip Inside the building.
Ask her _"Why have you come to the embassy?"_
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
talk Meerah##146264
turnin Playing to Their Strengths##53905 |goto 58.93,55.08
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
Choose _<Give Vinter Iltheux the sample of Nomi's Wine.>_
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
collect 1 Caravan Hyena##174066 |or
|tip You should collect this automatically.
'|learnmount Caravan Hyena##306423 |or
step
use the Caravan Hyena##174066
Learn the "Caravan Hyena" Mount |learnmount Caravan Hyena##306423
step
_Congratulations!_
You Collected the "Caravan Hyena" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Ensorcelled Everwyrm",{
author="support@zygorguides.com",
description="\nThis mount can be obtained by purchasing the Heroic Edition of the Shadowlands World of Warcraft "..
"expansion.",
startlevel=50.0,
keywords={"8.3","N'zoth","Nzoth","Corruption","Blizzard","Store","Shadowlands","Heroic","Edition"},
mounts={307932},
patch='83000',
mounttype='Flying',
model={93335},
},[[
step
Learn the "Ensorcelled Everwyrm" Mount |learnmount Ensorcelled Everwyrm##307932
|tip This mount should be collected automatically after purchasing the Heroic Edition of the Shadowlands World of Warcraft expansion.
step
click Guiding Orb
|tip Summon your Ensorcelled Everwyrm and click the orb directly behind the seat.
_Next to you:_
talk Xolartios##158635
accept The Eternal Traveler##57686 |or
'|learnmount Ensorcelled Everwyrm##307932 |or
step
Kill enemies around this area
collect 40 Echo of Mortality##172954 |goto Zuldazar/0 58.03,20.11 |or
|tip Your first looting every day should grant 4-7 echoes.
|tip After that, the drop rate is reduced significantly until the next reset.
|tip This could take some time.
'|learnmount Ensorcelled Everwyrm##307932 |or
step
click Guiding Orb
|tip Summon your Ensorcelled Everwyrm and click the orb directly behind the seat.
_Next to you:_
talk Xolartios##158635
turnin The Eternal Traveler##57686 |or
'|learnmount Ensorcelled Everwyrm##307932 |or
step
_Congratulations!_
You Collected the "Ensorcelled Everwyrm" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Clutch of Ha-Li",{
author="support@zygorguides.com",
description="\nThis mount drops from the Ha-Li rare spawn in Vale of Eternal Blossoms during the Warring Clans assault.",
startlevel=50.0,
keywords={"8.3","N'zoth","Nzoth","Corruption","Vale","of","Eternal","Blossoms"},
mounts={312751},
patch='83000',
mounttype='Flying',
model={94247},
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnmount Clutch of Ha-Li##312751 |or
step
label "Wait_for_Mogu_Invasion"
Wait for the "Assault: Warring Clans" Assault |complete ZGV.InPhase("ValeInvasionLeftCenter") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Clutch of Ha-Li##312751 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(312751) |next "Time_Travel" |or
step
kill Ha-Li##157153
|tip It flies in a large circle around the mountain peak.
|tip Ha-Li is a rare spawn and may not always be up.
|tip You can only loot it once per day.
collect Clutch of Ha-Li##173887 |goto Vale of Eternal Blossoms New/0 31.77,41.82 |or
|tip This mount is not a guaranteed drop.
'|learnmount Clutch of Ha-Li##312751 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(312751) |next "Time_Travel" |or
'|complete not ZGV.InPhase("ValeInvasionLeftCenter") and not hasmount(312751) |next "Wait_for_Mogu_Invasion" |or
step
use the Clutch of Ha-Li##173887
Learn the "Clutch of Ha-Li" Mount |learnmount Clutch of Ha-Li##312751
step
_Congratulations!_
You Collected the "Clutch of Ha-Li" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Drake of the Four Winds",{
author="support@zygorguides.com",
description="\nThis mount drops from the Ishak of the Four Winds rare spawn in Uldum during the Amathet Advance assault.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Ishak"},
startlevel=50.0,
mounts={315847},
patch='83000',
mounttype='Flying',
model={92913},
},[[
step
label "Time_Travel"
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnmount Drake of the Four Winds##315847 |or
step
label "Wait_for_Amathet_Invasion"
Wait for the "Assault: Amathet Advance" Assault |complete ZGV.InPhase("UldumInvasionRight") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Drake of the Four Winds##315847 |or
'|complete ZGV.InPhase('OldUldum') and not hasmount(315847) |next "Time_Travel" |or
step
kill Ishak of the Four Winds##157134
|tip It flies around the floating platform.
|tip You can only loot it once per day.
collect Reins of the Drake of the Four Winds##174641 |goto Uldum New/0 73.90,83.53 |or
|tip This mount is not a guaranteed drop.
'|learnmount Drake of the Four Winds##315847 |or
'|complete ZGV.InPhase('OldUldum') and not hasmount(315847) |next "Time_Travel" |or
'|complete not ZGV.InPhase("UldumInvasionRight") and not hasmount(315847) |next "Wait_for_Amathet_Invasion" |or
step
use the Reins of the Drake of the Four Winds##174641
Learn the "Drake of the Four Winds" Mount |learnmount Drake of the Four Winds##315847
step
_Congratulations!_
You Collected the "Drake of the Four Winds" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Mail Muncher",{
author="support@zygorguides.com",
description="\nThis mount drops from the Mail Muncher rare spawn in Horrific Visions.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Horrific","Vision"},
startlevel=50.0,
mounts={315987},
patch='83000',
mounttype='Flying',
model={92715},
},[[
step
kill Mail Muncher##158041
|tip It is a rare spawn inside the Horrific Visions.
|tip Use the Horrific Vision leveling guides to complete them and click any mailboxes that you see.
|tip Occasionally the Mail Muncher will spawn.
collect Mail Muncher##174653 |or
'|learnmount Mail Muncher##315987 |or
step
use the Mail Muncher##174653
Learn the "Mail Muncher" Mount |learnmount Mail Muncher##315987
step
_Congratulations!_
You Collected the "Mail Muncher" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Ny'alotha Allseer",{
author="support@zygorguides.com",
description="\nThis mount drops from mythic N'Zoth the Corruptor in Ny'alotha, the Waking City.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Mythic","Waking","City","Ny'alotha"},
startlevel=50.0,
mounts={308814},
patch='83000',
mounttype='Flying',
model={93512},
},[[
step
kill N'Zoth the Corruptor##158041
|tip You must kill N'Zoth on mythic difficulty.
|tip Use the "Ny'alotha, the Waking City - The Waking Dream" dungeon guide to accomplish this.
collect Ny'alotha Allseer##174872 |goto Ny'alotha, the Waking City/3 47.80,25.29 |or
'|learnmount Ny'alotha Allseer##308814 |or
step
use the Ny'alotha Allseer##174872
Learn the "Ny'alotha Allseer" Mount |learnmount Ny'alotha Allseer##308814
step
_Congratulations!_
You Collected the "Ny'alotha Allseer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Uncorrupted Voidwing",{
author="support@zygorguides.com",
description="\nThis mount is a reward for completing the quest \"Lost Flight\", which can be started from "..
"an item that drops from heroic or mythic N'Zoth the Corruptor.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Heroic","Waking","City","Ny'alotha"},
startlevel=50.0,
keywords={"N'zoth","Corruptor","Heroic","Waking","City","Ny'alotha"},
mounts={302143},
patch='83000',
mounttype='Flying',
model={92319},
},[[
step
kill N'Zoth the Corruptor##158041
|tip You must kill N'Zoth on heroic or mythic difficulty.
|tip Use the "Ny'alotha, the Waking City - The Waking Dream" dungeon guide to accomplish this.
collect Spawn of Vexiona##174863 |goto Ny'alotha, the Waking City/3 47.80,25.29 |or
'|learnmount Uncorrupted Voidwing##302143 |or
step
use the Spawn of Vexiona##174863
accept Lost Flight##58876 |or
'|learnmount Uncorrupted Voidwing##302143 |or
step
talk Wrathion##155496
turnin Lost Flight##58876 |goto Chamber of Heart/0 46.17,64.05 |or
'|learnmount Uncorrupted Voidwing##302143 |or
step
collect 1 Uncorrupted Voidwing##174862 |or
|tip You should collect this automatically.
'|learnmount Uncorrupted Voidwing##302143 |or
step
use the Uncorrupted Voidwing##174862
Learn the "Uncorrupted Voidwing" Mount |learnmount Uncorrupted Voidwing##302143
step
_Congratulations!_
You Collected the "Uncorrupted Voidwing" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Waste Marauder",{
author="support@zygorguides.com",
description="\nThis mount drops from the Rotfeaster rare spawn in Uldum during the Amathet Advance assault.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Rotfeaster","N'Zoth","Assault"},
startlevel=50.0,
mounts={316275},
patch='83000',
mounttype='Flying',
model={94875},
},[[
step
label "Time_Travel"
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnmount Waste Marauder##316275 |or
step
label "Wait_for_Amathet_Invasion"
Wait for the "Assault: Amathet Advance" Assault |complete ZGV.InPhase("UldumInvasionRight") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Waste Marauder##316275 |or
'|complete ZGV.InPhase('OldUldum') and not hasmount(316275) |next "Time_Travel" |or
step
kill Rotfeaster##157146
|tip You can only loot it once per day.
collect Waste Marauder##174753 |goto Uldum New/0 68.30,31.88 |or
|tip This mount is not a guaranteed drop.
'|learnmount Waste Marauder##316275 |or
'|complete ZGV.InPhase('OldUldum') and not hasmount(316275) |next "Time_Travel" |or
'|complete not ZGV.InPhase("UldumInvasionRight") and not hasmount(316275) |next "Wait_for_Amathet_Invasion" |or
step
use the Waste Marauder##174753
Learn the "Waste Marauder" Mount |learnmount Waste Marauder##316275
step
_Congratulations!_
You Collected the "Waste Marauder" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Mollie",{
author="support@zygorguides.com",
description="\nThis mount has a small chance to drop from Dunegorger Kraulok in Vol'dun when the "..
"world quest \"Sandswept Bones\" is active.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Dunegorger","Kraulok","Slightly","Damp","Pile","Fur"},
startlevel=50.0,
mounts={298367},
patch='83000',
mounttype='Ground',
model={91874},
},[[
step
kill Dunegorger Kraulok##138794
|tip Kraulok only spawns when the "Sandswept Bones" world quest is active.
|tip You can only loot it once per day.
collect 1 Slightly Damp Pile of Fur##174842 |goto Vol'dun/0 44.37,56.06 |or
|tip This mount is not a guaranteed drop.
'|learnmount Mollie##298367 |or
step
use the Slightly Damp Pile of Fur##174842
Learn the "Mollie" Mount |learnmount Mollie##298367
step
_Congratulations!_
You Collected the "Mollie" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Ren's Stalwart Hound",{
author="support@zygorguides.com",
description="\nThis mount has a chance to drop from the rare spawn Houndlord Ren in Vale of "..
"Eternal Blossoms during \"The Warring Clans\" assault.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Houndlord","Ren","Vale","or","Eternal","Blossoms"},
startlevel=50.0,
mounts={316722},
patch='83000',
mounttype='Ground',
model={45823},
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnmount Ren's Stalwart Hound##316722 |or
step
label "Wait_for_Mogu_Invasion"
Wait for the "Assault: Warring Clans" Assault |complete ZGV.InPhase("ValeInvasionLeftCenter") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Ren's Stalwart Hound##316722 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(316722) |next "Time_Travel" |or
step
kill Houndlord Ren##157160
|tip He walks all along the area following the wall.
|tip You can only loot him once per day.
collect 1 Ren's Stalwart Hound##174841 |goto Vale of Eternal Blossoms New/0 10.92,32.51 |or
|tip This mount is not a guaranteed drop.
'|learnmount Ren's Stalwart Hound##316722 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(316722) |next "Time_Travel" |or
'|complete not ZGV.InPhase("ValeInvasionLeftCenter") and not hasmount(316722) |next "Wait_for_Mogu_Invasion" |or
step
use Ren's Stalwart Hound##174841
Learn the "Ren's Stalwart Hound" Mount |learnmount Ren's Stalwart Hound##316722
step
_Congratulations!_
You Collected the "Ren's Stalwart Hound" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Xinlao",{
author="support@zygorguides.com",
description="\nThis mount has a chance to drop from the rare spawn Anh-De the Loyal in Vale of "..
"Eternal Blossoms during \"The Warring Clans\" assault.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Anh-De","the","Loyal","Vale","or","Eternal","Blossoms"},
startlevel=50.0,
mounts={316723},
patch='83000',
mounttype='Ground',
model={91874},
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnmount Xinlao##316723 |or
step
label "Wait_for_Mogu_Invasion"
Wait for the "Assault: Warring Clans" Assault |complete ZGV.InPhase("ValeInvasionLeftCenter") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Xinlao##316723 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(316723) |next "Time_Travel" |or
step
kill Anh-De the Loyal##157466
|tip You can only loot it once per day.
collect 1 Xinlao##174840 |goto Vale of Eternal Blossoms New/0 33.75,68.53 |or
|tip This mount is not a guaranteed drop.
'|learnmount Xinlao##316723 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(316723) |next "Time_Travel" |or
'|complete not ZGV.InPhase("ValeInvasionLeftCenter") and not hasmount(316723) |next "Wait_for_Mogu_Invasion" |or
step
use Xinlao##174840
Learn the "Xinlao" Mount |learnmount Xinlao##316723
step
_Congratulations!_
You Collected the "Xinlao" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Wicked Swarmer",{
description="\nThis mount can be purchased from Wrathion in the Chamber of Heart for 100,000 Corrupted Mementos.",
author="support@zygorguides.com",
keywords={"8.3","N'zoth","Nzoth","Corruption","mount","chamber","heart"},
startlevel=50.0,
mounts={316340},
patch='83000',
mounttype='Flying',
model={94881},
},[[
step
Complete the "Accessing the Archives" Quest |complete completedq(57524) |or
|tip Use the "Magni's Plan" leveling guide to accomplish this.
'|learnmount Wicked Swarmer##316340 |or
step
Earn the "We Have the Technology" Achievement |achieve 14061 |goto Chamber of Heart/0 46.34,70.41 |or
|tip To accomplish this, save up Corrupted Mementos from running Horrific Visions and completing assaults.
|tip Purchase all available research traits at the Titanic Research Archive.
'|learnmount Wicked Swarmer##316340 |or
step
Collect 100,000 Corrupted Mementos |complete curcount(1719) >= 100000 |or
|tip Corrupted Mementos can be obtained from the daily Vision of N'Zoth quest and from assault reward caches and Horrific Visions.
'|learnmount Wicked Swarmer##316340 |or
step
talk Wrathion##155496
buy 1 Wicked Swarmer##174770 |goto Chamber of Heart/0 46.13,64.03 |or
|tip It costs 100,000 Corrupted Mementos.
'|learnmount Wicked Swarmer##316340 |or
step
use the Wicked Swarmer##174770
Learn the "Wicked Swarmer" Mount |learnmount Wicked Swarmer##316340
step
_Congratulations!_
You Collected the "Wicked Swarmer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Wastewander Skyterror",{
description="\nThis mount can be purchased from Provisioner Qorra in the Uldum for 24,000 gold, adjusted for reputation.",
author="support@zygorguides.com",
keywords={"8.3","N'zoth","Nzoth","Corruption","mount","uldum","accord"},
startlevel=50.0,
mounts={316276},
patch='83000',
mounttype='Flying',
model={94876},
},[[
step
Reach "Exalted" with the Uldum Accord |complete rep('Uldum Accord') >= Exalted |or
|tip Use the "Uldum Accord" reputation guide to accomplish this.
'|learnmount Wastewander Skyterror##316276 |or
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnmount Wastewander Skyterror##316276 |or
step
talk Provisioner Qorra##160714
|tip Inside the building.
buy 1 Wastewander Skyterror##174754 |goto Uldum New/0 55.11,32.86 |or
|tip It costs 24,000 gold, adjusted for reputation.
'|learnmount Wastewander Skyterror##316276 |or
step
use the Wastewander Skyterror##174754
Learn the "Wastewander Skyterror" Mount |learnmount Wastewander Skyterror##316276
step
_Congratulations!_
You Collected the "Wastewander Skyterror" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Obsidian Worldbreaker",{
description="\nThis mount requires you to complete the achievement \"Memories of Fel, Frost and Fire.\"",
author="support@zygorguides.com",
keywords={"8.3","N'zoth","Nzoth","Corruption","15th","Anniversary"},
startlevel=50.0,
mounts={294197},
patch='82500',
mounttype='Flying',
model={91272},
},[[
step
collect Anniversary Gift##172014 |or
|tip You can find it in your mailbox.
'|q 57249 |future |or
step
use the Anniversary Gift##172014
accept A Timely Invitation##57249
step
talk Chromie##157113
turnin A Timely Invitation##57249 |goto Tanaris/18 53.59,54.96
accept How Things "Really" Happened...##57298 |goto 53.59,54.96
step
talk Chromie##157113
Tell her _"I want to remember adventures from Outland!"_
Relive Your Adventures in Outland |q 57298/1 |goto 53.59,54.96
|tip Your group will fight Kael'thas Sunstrider, Lady Vashj, and Archimonde.
step
talk Chromie##157113
Tell her _"I want to remember adventures from Northrend!"_
Relive Your Adventures in Northrend |q 57298/2 |goto 53.59,54.96
|tip Your group will fight Heigan the Unclean, Anub'arak, and The Lich King.
step
talk Chromie##157113
Tell her _"I want to remember adventures from from the Cataclysm!"_
Relive Your Adventures from the Cataclysm |q 57298/3 |goto 53.59,54.96
|tip Your group will fight Cho'gall, Nefarian, and Ragnaros.
step
talk Chromie##157113
turnin How Things "Really" Happened...##57298 |goto 53.59,54.96
step
collect Obsidian Worldbreaker##172012 |or
|tip This should be available in your mailbox.
'|learnmount Obsidian Worldbreaker##294197 |or
step
use the Obsidian Worldbreaker##172012
Learn the "Obsidian Worldbreaker" Mount |learnmount Obsidian Worldbreaker##294197
step
_Congratulations!_
You Collected the "Obsidian Worldbreaker" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Awakened Mindborer",{
author="support@zygorguides.com",
description="\nTo collect this mount, you will have to complete the following Battle for Azeroth "..
"dungeons at Mythic 15 or higher:\n\nAtal'Dazar\nKings' Rest\nFreehold\nShrine of the Storm\n"..
"Siege of Boralus\nTemple of Sethraliss\nThe MOTHERLODE!!\nThe Underrot\nMechagon Junkyard\n"..
"Mechagon Workshop\nTol Dagor\nWaycrest Manor",
keywords={"8.3","N'zoth","Nzoth","Corruption","Keystone","Master","Season","Four"},
startlevel=50.0,
mounts={316637},
patch='83000',
mounttype='Flying',
model={92713},
},[[
leechsteps "Achievement Guides\\Feats of Strength\\Dungeons\\Battle for Azeroth Keystone Master: Season Four"1-1
'|learnmount Awakened Mindborer##316637 |or
step
collect 1 Awakened Mindborer##174836 |or
|tip It should be in your mailbox.
'|learnmount Awakened Mindborer##316637 |or
step
use the Awakened Mindborer##174836
Learn the "Awakened Mindborer" Mount |learnmount Awakened Mindborer##316637
step
_Congratulations!_
You Collected the "Awakened Mindborer" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Achievement Mounts\\Black Serpent of N'Zoth",{
author="support@zygorguides.com",
description="\nThis mount is acquired by earning the \"Through the Depths of Visions\" Achievement.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Through","the","Depths","Visions"},
startlevel=50.0,
mounts={305182},
patch='83000',
mounttype='Flying',
model={92708},
},[[
step
Earn the "Through the Depths of Visions" Achievement |achieve 13994 |or
|tip Use the "Through the Depths of Visions" achievement guide to accomplish this.
'|learnmount Black Serpent of N'Zoth##305182 |or
step
collect 1 Black Serpent of N'Zoth##174654 |or
|tip It should be in your mailbox.
'|learnmount Black Serpent of N'Zoth##305182 |or
step
use the Black Serpent of N'Zoth##174654
Learn the "Black Serpent of N'Zoth" Mount |learnmount Black Serpent of N'Zoth##305182
step
_Congratulations!_
You Collected the "Black Serpent of N'Zoth" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Ivory Cloud Serpent",{
author="support@zygorguides.com",
description="\nThis mount drops from the Ivory Cloud Serpent rare spawn in Vale of Eternal Blossoms.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
startlevel=50.0,
mounts={315014},
patch='83000',
mounttype='Flying',
model={94672},
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnmount Ivory Cloud Serpent##315014 |or
step
label "Wait_for_Mogu_Invasion"
Wait for the "Assault: The Warring Clans" Assault |complete ZGV.InPhase("ValeInvasionLeftCenter") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Ivory Cloud Serpent##315014 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(316722) |next "Time_Travel" |or
step
Kill enemies around this area
collect 1 Zan-Tien Lasso##174927 |goto Vale of Eternal Blossoms New/0 24.26,38.46 |or
|tip This is a rare drop and could take quite some time to collect.
'|learnmount Ivory Cloud Serpent##315014 |or
step
use the Zan-Tien Lasso##174927
|tip It flies in a large clockwise circle around the Vale of Eternal Blossoms.
|tip It flies very quickly, so flying counter-clockwise will give you a better chance of finding it before it despawns.
|tip When you find it, you will need to find a high spot that will put you in range to use the Lasso.
|tip The Lasso has a two second cast time.
|tip Ivory Cloud Serpent is a rare spawn and may not always be up.
collect Ivory Cloud Serpent##174752 |or
'|learnmount Ivory Cloud Serpent##315014 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(315014) |next "Time_Travel" |or
'|complete not ZGV.InPhase("ValeInvasionLeftCenter") and not hasmount(315014) |next "Wait_for_Mogu_Invasion" |or
step
use the Ivory Cloud Serpent##174752
Learn the "Ivory Cloud Serpent" Mount |learnmount Ivory Cloud Serpent##315014
step
_Congratulations!_
You Collected the "Ivory Cloud Serpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Dropped Mounts\\Malevolent Drone",{
author="support@zygorguides.com",
description="\nThis mount drops from the Corpse Eater rare spawn in Uldum during the Aqir assault.",
keywords={"8.3","N'zoth","Nzoth","Corruption","Corpse","Eater"},
startlevel=50.0,
mounts={316337},
patch='83000',
mounttype='Flying',
model={94879},
},[[
step
label "Time_Travel"
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnmount Malevolent Drone##316337 |or
step
label "Wait_for_Aqir_Invasion"
Wait for the "Assault: Aqir Unearthed" Assault |complete ZGV.InPhase("UldumInvasionLeft") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Malevolent Drone##316337 |or
'|complete ZGV.InPhase('OldUldum') and not hasmount(316337) |next "Time_Travel" |or
step
kill Corpse Eater##162147
|tip This mob is a rare spawn.
|tip You can only loot it once per day.
collect the Malevolent Drone##174769 |goto Uldum New/0 30.74,49.68 |or
|tip This mount is not a guaranteed drop.
'|learnmount Malevolent Drone##316337 |or
'|complete ZGV.InPhase('OldUldum') and not hasmount(316337) |next "Time_Travel" |or
'|complete not ZGV.InPhase("UldumInvasionLeft") and not hasmount(316337) |next "Wait_for_Aqir_Invasion" |or
step
use the Malevolent Drone##174769
Learn the "Malevolent Drone" Mount |learnmount Malevolent Drone##316337
step
_Congratulations!_
You Collected the "Malevolent Drone" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Quest Mounts\\Springfur Alpaca",{
author="support@zygorguides.com",
description="\nThis mount can be collected after completing seven daily quests and the quest \"Alpaca It In\" in Uldum.",
startlevel=50.0,
keywords={"Alpaca","It","In","Up"},
mounts={316802},
patch='83000',
mounttype='Ground',
model={91877},
},[[
step
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
'|learnmount Springfur Alpaca##316802 |or
step
click Gersahl Shrub##341808
|tip They look like tiny clumps of pond lillies on the ground next to the water around this area.
|tip Setting your Ground Clutter to minimum in the Environment graphics settings will make them much easier to see.
|tip You can find them all over the river, but the Lost City of the Tol'vir area is best.
|tip You will need 7 to complete the daily quests.
collect 7 Gersahl Greens##174858 |only if default |goto Uldum New/0 65.40,77.82 |or
collect 6 Gersahl Greens##174858 |only if countremains(58881,0) == 6 |or
collect 5 Gersahl Greens##174858 |only if countremains(58881,0) == 5 |or
collect 4 Gersahl Greens##174858 |only if countremains(58881,0) == 4 |or
collect 3 Gersahl Greens##174858 |only if countremains(58881,0) == 3 |or
collect 2 Gersahl Greens##174858 |only if countremains(58881,0) == 2 |or
collect 1 Gersahl Greens##174858 |only if countremains(58881,0) == 1 |or
'|learnmount Springfur Alpaca##316802 |or
step
label "Accept_Alpaca_It_Up"
talk Friendly Alpaca##162765
|tip Open the group finder panel and search under Custom Premade Groups for an alpaca farming raid.
|tip The alpaca has numerous spawn points that rotate frequently.
|tip Grouping is the only efficient way to find it.
accept Alpaca It Up##58879 |or
'|learnmount Springfur Alpaca##316802 |or
step
You have completed the daily quest today
|tip You must complete this daily quest 6 more times. |only if countremains(58881,0) == 6
|tip You must complete this daily quest 5 more times. |only if countremains(58881,0) == 5
|tip You must complete this daily quest 4 more times. |only if countremains(58881,0) == 4
|tip You must complete this daily quest 3 more times. |only if countremains(58881,0) == 3
|tip You must complete this daily quest 2 more times. |only if countremains(58881,0) == 2
|tip You must complete this daily quest 1 more time. |only if countremains(58881,0) == 1
|tip This guide will reset when you can complete it again.
'|complete not completedq(58879) and not completedq(58881) == 0 |next "Accept_Alpaca_It_Up" |or
'|complete completedq(58881) |or |or
'|learnmount Springfur Alpaca##316802 |or
step
talk Friendly Alpaca##162765
accept Alpaca It In##58887 |or
'|learnmount Springfur Alpaca##316802 |or
step
collect 1 Reins of the Springfur Alpaca##174859 |or
'|learnmount Springfur Alpaca##316802 |or
step
use the Reins of the Springfur Alpaca##174859
Learn the "Springfur Alpaca" Mount |learnmount Springfur Alpaca##316802
step
_Congratulations!_
You Collected the "Springfur Alpaca" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Flying Mounts\\Vendor Mounts\\Rajani Warserpent",{
author="support@zygorguides.com",
description="\nThis mount can be purchased from Zhang Ku in Vale of Eternal Blossoms for one Pristine Cloud Serpent Scale. "..
"The Pristine Cloud Serpent Scale has a small chance to drop from the rare spawn Zhang Ku in Vale of Eternal Blossoms.",
startlevel=50.0,
keywords={"Vale","of","Eternal","Blossoms"},
mounts={315427},
patch='83000',
mounttype='Flying',
model={94745},
},[[
step
label "Time_Travel"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |or
'|learnmount Rajani Warserpent##315427 |or
step
label "Wait_for_Mogu_Invasion"
Wait for the "Assault: Warring Clans" Assault |complete ZGV.InPhase("ValeInvasionLeftCenter") |or
|tip Non-N'zoth assaults alternate every few days.
'|learnmount Rajani Warserpent##315427 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(315427) |next "Time_Travel" |or
step
Enter the building |goto Vale of Eternal Blossoms New/0 22.12,24.17 < 15 |walk
Run down the stairs |goto 19.79,20.38 < 15 |walk
Follow the path |goto 21.79,12.76 < 15 |walk
|tip Avoid stepping on the yellow, green, and red tiles.
Run down the stairs |goto 25.08,6.11 < 15 |walk
kill Rei Lun##157162 |goto 21.90,12.31
|tip Downstairs in The Hall of the Serpent
collect 1 Pristine Cloud Serpent Scale##174230 |or
|tip This has a small chance to drop.
'|learnmount Rajani Warserpent##315427 |or
'|complete ZGV.InPhase('OldVale') and not hasmount(315427) |next "Time_Travel" |or
'|complete not ZGV.InPhase("ValeInvasionLeftCenter") and not hasmount(315427) |next "Wait_for_Mogu_Invasion" |or
step
Enter the building |goto 40.24,75.25 < 20 |walk
talk Zhang Ku##160711
|tip Inside the building.
buy 1 Rajani Warserpent##174649 |goto 44.46,75.42 |or
'|learnmount Rajani Warserpent##315427 |or
step
use the Rajani Warserpent##174649
Learn the "Rajani Warserpent" Mount |learnmount Rajani Warserpent##315427
step
_Congratulations!_
You Collected the "Rajani Warserpent" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Dropped Mounts\\Elusive Quickhoof",{
author="support@zygorguides.com",
description="\nNot finished.",
startlevel=50.0,
keywords={"Alpaca"},
mounts={316493},
patch='83000',
mounttype='Ground',
model={91873},
},[[
step
talk Tukuku##138919
buy 1 Seaside Leafy Greens Mix##161128 |goto Vol'dun/0 62.12,20.85 |or
'|learnmount Elusive Quickhoof##316493 |or
step
talk Elusive Quickhoof##162681
Choose _<Give the alpaca the Seaside Leafy Greens Mix.>_
|tip The Elusive Quickhoof is a rare spawn that only stays active for around 10 minutes.
|tip Pay attention to chat and the custom group finder in case someone finds it at a spawn location.
|tip Make sure you don't vendor your Seaside Leafy Greens Mix.
collect 1 Reins of the Elusive Quickhoof##174860 |goto 54.00,82.00 |or
You can also find it at [29.00,66.00]
And [26.40,52.50]
And [31.10,67.30]
And [42.00,60.00]
And [43.00,69.00]
And [51.10,85.90]
And [52.50,89.00]
And [54.60,53.20]
And [55.00,73.00]
'|learnmount Elusive Quickhoof##316493 |or
step
use the Reins of the Elusive Quickhoof##174860
Learn the "Elusive Quickhoof" Mount |learnmount Elusive Quickhoof##316493
step
_Congratulations!_
You Collected the "Elusive Quickhoof" Mount.
]])
