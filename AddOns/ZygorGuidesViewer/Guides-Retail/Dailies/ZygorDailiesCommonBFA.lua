local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("DailiesCBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Arathi Highlands World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Arathi Highlands.",
condition_suggested=function() return level >= 50 end,
condition_valid=function() return level >= 50 end,
condition_valid_msg="You have not unlocked Arathi Highlands world quests!\n"..
"Complete the quest \"Back to Boralus (Alliance)\" or "..
"\"Back to Zuldazar (Horde)\" in \"Warfronts Introduction Quests\" leveling guide.",
startlevel=50.0,
worldquestzone=14,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-54544
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54544 |future
step
accept Beastrider Kama##54544 |goto 65.64,70.41
|tip You will accept this quest automatically.
step
kill Beastrider Kama##142709 |q 54544/1 |goto 65.64,70.41 |future
|tip He patrols up and down the road.
|next "BFA_World_Quest_Emissaries"
step
label quest-54573
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54573 |future
step
accept Beastrider Kama##54573 |goto 65.64,70.41
|tip You will accept this quest automatically.
step
kill Beastrider Kama##142709 |q 54573/1 |goto 65.64,70.41 |future
|tip He patrols up and down the road.
|next "BFA_World_Quest_Emissaries"
step
label quest-54616
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54616 |future
step
accept Boulderfist Beatdown##54616 |goto 28.74,45.51
|tip You will accept this quest automatically.
step
Enter the cave |goto 28.44,45.68 < 10 |walk
Kill Boulderfist enemies around this area
Slay #12# Boulderfist Clan Ogres |q 54616/1 |goto 25.28,48.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54623
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54623 |future
step
accept Boulderfist Beatdown##54623 |goto 28.74,45.51
|tip You will accept this quest automatically.
step
Enter the cave |goto 28.44,45.68 < 10 |walk
Kill Boulderfist enemies around this area
Slay #12# Boulderfist Clan Ogres |q 54623/1 |goto 25.28,48.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54568
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54568 |future
step
accept Branchlord Aldrus##54568 |goto 22.60,21.30
|tip You will accept this quest automatically.
step
kill Branchlord Aldrus##142508 |q 54568/1 |goto 22.60,21.30 |future
|tip It walks around the stump
|next "BFA_World_Quest_Emissaries"
step
label quest-54578
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54578 |future
step
accept Branchlord Aldrus##54578 |goto 22.60,21.30
|tip You will accept this quest automatically.
step
kill Branchlord Aldrus##142508 |q 54578/1 |goto 22.60,21.30 |future
|tip It walks around the stump
|next "BFA_World_Quest_Emissaries"
step
label quest-54583
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54583 |future
step
accept Burning Goliath##54583 |goto 30.63,44.66
|tip You will accept this quest automatically.
step
kill Burning Goliath##141615 |q 54583/1 |goto 30.63,44.66 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54608
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54608 |future
step
accept Burning Goliath##54608 |goto 30.63,44.66
|tip You will accept this quest automatically.
step
kill Burning Goliath##141615 |q 54608/1 |goto 30.63,44.66 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54607
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54607 |future
step
accept Cresting Goliath##54607 |goto 62.05,31.59
|tip You will accept this quest automatically.
step
kill Cresting Goliath##141618 |q 54607/1 |goto 62.05,31.59 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54584
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54584 |future
step
accept Cresting Goliath##54584 |goto 62.05,31.59
|tip You will accept this quest automatically.
step
kill Cresting Goliath##141618 |q 54584/1 |goto 62.05,31.59 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54547
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54547 |future
step
accept Darbel Montrose##54547 |goto 50.42,61.02
|tip You will accept this quest automatically.
step
kill Darbel Montrose##142688 |q 54547/1 |goto 50.42,61.02 |future
|tip Inside the building.
|next "BFA_World_Quest_Emissaries"
step
label quest-54572
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54572 |future
step
accept Darbel Montrose##54572 |goto 50.88,36.56
|tip You will accept this quest automatically.
step
kill Darbel Montrose##142688 |q 54572/1 |goto 50.88,36.56 |future
|tip Inside the building.
|next "BFA_World_Quest_Emissaries"
step
label quest-54620
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54620 |future
step
accept Death to The Defilers##54620 |goto 52.22,58.02
|tip You will accept this quest automatically.
step
Kill Defiler enemies around this area
Slay #12# Defilers |q 54620/1 |goto 52.22,58.02 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52847
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 52847 |future
step
accept Doom's Howl##52847 |goto 39.36,39.93
|tip You will accept this quest automatically.
step
kill Doom's Howl##138122 |q 52847/1 |goto 39.36,39.93 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54540
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54540 |future
step
accept Doomrider Helgrim##54540 |goto 53.47,57.75
|tip You will accept this quest automatically.
step
kill Doomrider Helgrim##142741 |q 54540/1 |goto 53.47,57.75 |future
|tip Inside the building.
|next "BFA_World_Quest_Emissaries"
step
label quest-54606
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54606 |future
step
accept Echo of Myzrael##54606 |goto 57.07,34.75
|tip You will accept this quest automatically.
step
kill Echo of Myzrael##141668 |q 54606/1 |goto 57.07,34.75 |future
|tip Echo of Myzrael spawns after killing the four Goliath elementals in Arathi.
|tip Guardians not present at Myzrael's location indicate which elementals still need to be killed.
Cresting Goliath is here [61.98,31.50]
Thundering Goliath is here [46.32,52.12]
Burning Goliath is here [30.66,44.78]
Rumbling Goliath is here [29.88,59.74]
|next "BFA_World_Quest_Emissaries"
step
label quest-54585
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54585 |future
step
accept Echo of Myzrael##54585 |goto 57.07,34.75
|tip You will accept this quest automatically.
step
kill Echo of Myzrael##141668 |q 54585/1 |goto 57.07,34.75 |future
|tip Echo of Myzrael spawns after killing the four Goliath elementals in Arathi.
|tip Guardians not present at Myzrael's location indicate which elementals still need to be killed.
Cresting Goliath is here [61.98,31.50]
Thundering Goliath is here [46.32,52.12]
Burning Goliath is here [30.66,44.78]
Rumbling Goliath is here [29.88,59.74]
|next "BFA_World_Quest_Emissaries"
step
label quest-54614
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54614 |future
step
accept Executing Exorcisms##54614 |goto 20.92,60.82
|tip You will accept this quest automatically.
step
kill 12 Vengeful Ghost##142723 |q 54614/1 |goto 20.92,60.82 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54622
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54622 |future
step
accept Executing Exorcisms##54622 |goto 27.60,32.04
|tip You will accept this quest automatically.
step
kill 12 Vengeful Ghost##142723 |q 54622/1 |goto 27.60,32.04 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54571
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54571 |future
step
Enter the cave |goto 28.44,45.68 < 10 |walk
Cross the bridge |goto 23.56,46.80 < 10 |walk
accept Foulbelly##54571 |goto 22.33,51.25
|tip You will accept this quest automatically.
step
Cross the bridge |goto 23.56,46.80 < 10 |walk
kill Foulbelly##142686 |q 54571/1 |goto 22.33,51.25 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54548
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54548 |future
step
Enter the cave |goto 28.44,45.68 < 10 |walk
Cross the bridge |goto 23.56,46.80 < 10 |walk
accept Foulbelly##54548 |goto 22.33,51.25
|tip You will accept this quest automatically.
step
Cross the bridge |goto 23.56,46.80 < 10 |walk
kill Foulbelly##142686 |q 54548/1 |goto 22.33,51.25 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54586
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54586 |future
step
accept Fozruk##54586 |goto 59.75,27.70
|tip You will accept this quest automatically.
step
kill Fozruk##142433 |q 54586/1 |goto 59.75,27.70 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54605
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54605 |future
step
accept Fozruk##54605 |goto 59.75,27.70
|tip You will accept this quest automatically.
step
kill Fozruk##142433 |q 54605/1 |goto 59.75,27.70 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54570
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54570 |future
step
Enter the cave |goto 78.27,36.73 < 15 |walk
Follow the path down |goto 79.53,33.90 < 15 |only if walking
Follow the path up |goto 82.72,31.22 < 10 |only if walking
accept Geomancer Flintdagger##54570 |goto 79.45,29.39
|tip You will accept this quest automatically.
step
kill Geomancer Flintdagger##142662 |q 54570/1 |goto 79.45,29.39 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54552
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54552 |future
step
Enter the cave |goto 78.27,36.73 < 15 |walk
accept Geomancer Flintdagger##54552 |goto 79.45,29.39
|tip You will accept this quest automatically.
step
Follow the path down |goto 79.53,33.90 < 15 |only if walking
Follow the path up |goto 82.72,31.22 < 10 |only if walking
kill Geomancer Flintdagger##142662 |q 54552/1 |goto 79.45,29.39 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54569
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54569 |future
step
accept Horrific Apparition##54569 |goto 26.78,32.61
|tip You will accept this quest automatically.
step
kill Horrific Apparition##142725 |q 54569/1 |goto 26.78,32.61 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54542
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54542 |future
step
accept Horrific Apparition##54542 |goto 19.37,61.31
|tip You will accept this quest automatically.
step
kill Horrific Apparition##142725 |q 54542/1 |goto 19.37,61.31 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54541
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54541 |future
step
accept Knight-Captain Aldrin##54541 |goto 48.92,39.95
|tip You will accept this quest automatically.
step
kill Knight-Captain Aldrin##142739 |q 54541/1 |goto 48.92,39.95 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54553
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54553 |future
step
Enter the cave |goto 48.12,79.63 < 10 |walk
accept Kor'gresh Coldrage##54553 |goto 49.16,84.17
|tip You will accept this quest automatically.
step
kill Kor'gresh Coldrage##142112 |q 54553/1 |goto 49.16,84.17 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54567
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54567 |future
step
Enter the cave |goto 48.12,79.63 < 10 |walk
accept Kor'gresh Coldrage##54567 |goto 49.16,84.17
|tip You will accept this quest automatically.
step
kill Kor'gresh Coldrage##142112 |q 54567/1 |goto 49.16,84.17 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54549
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54549 |future
step
Enter the cave |goto 28.44,45.68 < 10 |walk
accept Kovork##54549 |goto 25.05,48.40
|tip You will accept this quest automatically.
step
kill Kovork##142684 |q 54549/1 |goto 25.05,48.40 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54566
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54566 |future
step
Enter the cave |goto 28.44,45.68 < 10 |walk
accept Kovork##54566 |goto 25.05,48.40
|tip You will accept this quest automatically.
step
kill Kovork##142684 |q 54566/1 |goto 25.05,48.40 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54615
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54615 |future
step
accept The League Will Lose##54615 |goto 49.63,39.41
|tip You will accept this quest automatically.
step
Kill Arathor enemies around this area
Slay #12# League of Arathor |q 54615/1 |goto 49.63,39.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52848
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 52848 |future
step
accept The Lion's Roar##52848 |goto 38.63,40.36
|tip You will accept this quest automatically.
step
kill The Lion's Roar##137374 |q 52848/1 |goto 38.63,40.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54543
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54543 |future
step
accept Man-Hunter Rog##54543 |goto 52.14,76.73
|tip You will accept this quest automatically.
step
kill Man-Hunter Rog##142716 |q 54543/1 |goto 52.14,76.73 |future
|tip He patrols up and down the path.
|next "BFA_World_Quest_Emissaries"
step
label quest-54565
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54565 |future
step
accept Man-Hunter Rog##54565 |goto 52.14,76.73
|tip You will accept this quest automatically.
step
kill Man-Hunter Rog##142716 |q 54565/1 |goto 52.14,76.73 |future
|tip He patrols up and down the path.
|next "BFA_World_Quest_Emissaries"
step
label quest-54604
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54604 |future
step
accept Molok the Crusher##54604 |goto 47.64,78.01
|tip You will accept this quest automatically.
step
kill Molok the Crusher##141942 |q 54604/1 |goto 47.64,78.01 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54587
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54587 |future
step
accept Molok the Crusher##54587 |goto 47.64,78.01
|tip You will accept this quest automatically.
step
kill Molok the Crusher##141942 |q 54587/1 |goto 47.64,78.01 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54545
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54545 |future
step
accept Nimar the Slayer##54545 |goto 67.64,60.93
|tip You will accept this quest automatically.
step
kill Nimar the Slayer##142692 |q 54545/1 |goto 67.64,60.93 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54564
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54564 |future
step
accept Nimar the Slayer##54564 |goto 67.64,60.93
|tip You will accept this quest automatically.
step
kill Nimar the Slayer##142692 |q 54564/1 |goto 67.64,60.93 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54603
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54603 |future
step
Enter the mine |goto 33.68,36.79 < 10 |walk
accept Overseer Krix##54603 |goto 34.18,36.01
|tip You will accept this quest automatically.
step
kill Overseer Krix##142423 |q 54603/1 |goto 33.27,38.28 |future
|tip Inside the mine.
|next "BFA_World_Quest_Emissaries"
step
label quest-54588
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54588 |future
step
Enter the mine |goto 27.48,55.58 < 10 |walk
accept Overseer Krix##54588 |goto 27.41,57.34
|tip You will accept this quest automatically.
step
kill Overseer Krix##142423 |q 54588/1 |goto 27.41,57.34 |future
|tip Inside the mine.
|next "BFA_World_Quest_Emissaries"
step
label quest-54602
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54602 |future
step
accept Plaguefeather##54602 |goto 35.98,63.06
|tip You will accept this quest automatically.
step
kill Plaguefeather##142435 |q 54602/1 |goto 35.98,63.06 |future
|tip It flies around the tree.
|next "BFA_World_Quest_Emissaries"
step
label quest-54589
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54589 |future
step
accept Plaguefeather##54589 |goto 35.98,63.06
|tip You will accept this quest automatically.
step
kill Plaguefeather##142435 |q 54589/1 |goto 35.98,63.06 |future
|tip It flies around the tree.
|next "BFA_World_Quest_Emissaries"
step
label quest-54601
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54601 |future
step
accept Ragebeak##54601 |goto 18.56,28.03
|tip You will accept this quest automatically.
step
kill Ragebeak##142436 |q 54601/1 |goto 18.56,28.03 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54590
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54590 |future
step
accept Ragebeak##54590 |goto 12.00,51.90
|tip You will accept this quest automatically.
step
kill Ragebeak##142436 |q 54590/1 |goto 12.00,51.90 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54591
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54591 |future
step
accept Rumbling Goliath##54591 |goto 29.88,59.74
|tip You will accept this quest automatically.
step
kill Rumbling Goliath##141620 |q 54591/1 |goto 29.88,59.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54600
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54600 |future
step
accept Rumbling Goliath##54600 |goto 29.88,59.74
|tip You will accept this quest automatically.
step
kill Rumbling Goliath##141620 |q 54600/1 |goto 29.88,59.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54563
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54563 |future
step
accept Ruul Onestone##54563 |goto 42.91,56.52
|tip You will accept this quest automatically.
step
kill Ruul Onestone##142683 |q 54563/1 |goto 42.91,56.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54550
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54550 |future
step
accept Ruul Onestone##54550 |goto 42.91,56.52
|tip You will accept this quest automatically.
step
kill Ruul Onestone##142683 |q 54550/1 |goto 42.91,56.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54562
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54562 |future
step
accept Singer##54562 |goto 50.59,57.46
|tip You will accept this quest automatically.
This quest can also be at [51.17,39.94]
step
kill Singer##142690 |q 54562/1 |goto 50.59,57.46 |future
|tip Inside the building.
Singer can also be at [51.17,39.94]
|next "BFA_World_Quest_Emissaries"
step
label quest-54546
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54546 |future
step
accept Singer##54546 |goto 50.59,57.46
|tip You will accept this quest automatically.
This quest can also be at [51.17,39.94]
step
kill Singer##142690 |q 54546/1 |goto 50.59,57.46 |future
|tip Inside the building.
Singer can also be at [51.17,39.94]
|next "BFA_World_Quest_Emissaries"
step
label quest-54617
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54617 |future
step
accept Sins of the Syndicate##54617 |goto 53.01,57.80
|tip You will accept this quest automatically.
step
Kill Syndicate enemies around this area
Slay #12# Syndicate Members |q 54617/1 |goto 53.01,57.80 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54624
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54624 |future
step
accept Sins of the Syndicate##54624 |goto 49.55,39.54
|tip You will accept this quest automatically.
step
Kill Syndicate enemies around this area
Slay #12# Syndicate Members |q 54624/1 |goto 49.55,39.54 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54592
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54592 |future
|polish
step
accept Skullripper##54592 |goto 56.67,45.11
|tip You will accept this quest automatically.
step
kill Skullripper##142437 |q 54592/1 |goto 56.67,45.11 |future
|tip It runs around these rocks.
|next "BFA_World_Quest_Emissaries"
step
label quest-54599
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54599 |future
step
accept Skullripper##54599 |goto 56.67,45.11
|tip You will accept this quest automatically.
step
kill Skullripper##142437 |q 54599/1 |goto 56.67,45.11 |future
|tip It runs around these rocks.
|next "BFA_World_Quest_Emissaries"
step
label quest-54593
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54593 |future
step
accept Thundering Goliath##54593 |goto 46.32,52.12
|tip You will accept this quest automatically.
step
kill Thundering Goliath##141616 |q 54593/1 |goto 46.32,52.12 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54598
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54598 |future
step
accept Thundering Goliath##54598 |goto 46.32,52.12
|tip You will accept this quest automatically.
step
kill Thundering Goliath##141616 |q 54598/1 |goto 46.32,52.12 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54613
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54613 |future
step
accept Twice-Exiled##54613 |goto 61.94,31.61
|tip You will accept this quest automatically.
step
Kill Cresting enemies around this area
Slay #12# Elementals |q 54613/1 |goto 61.94,31.61 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54621
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54621 |future
step
accept Twice-Exiled##54621 |goto 61.94,31.61
|tip You will accept this quest automatically.
step
Kill Cresting enemies around this area
Slay #12# Elementals |q 54621/1 |goto 61.94,31.61 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54594
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54594 |future
step
accept Venomarus##54594 |goto 57.26,54.09
|tip You will accept this quest automatically.
step
kill Venomarus##142438 |q 54594/1 |goto 57.26,54.09 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54597
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54597 |future
step
accept Venomarus##54597 |goto 57.26,54.09
|tip You will accept this quest automatically.
step
kill Venomarus##142438 |q 54597/1 |goto 57.26,54.09 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54619
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54619 |future
step
accept Wiping Out the Witherbark##54619 |goto 60.58,70.36
|tip You will accept this quest automatically.
step
Kill Witherbark enemies around this area
Slay #12# Witherbark Tribe Trolls |q 54619/1 |goto 60.58,70.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54625
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54625 |future
step
accept Wiping Out the Witherbark##54625 |goto 60.58,70.36
|tip You will accept this quest automatically.
step
Kill Witherbark enemies around this area
Slay #12# Witherbark Tribe Trolls |q 54625/1 |goto 60.58,70.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54596
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54596 |future
step
accept Yogursa##54596 |goto 14.16,37.52
|tip You will accept this quest automatically.
step
kill Yogursa##142440 |q 54596/1 |goto 14.16,37.52 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54595
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54595 |future
step
accept Yogursa##54595 |goto 14.16,37.52
|tip You will accept this quest automatically.
step
kill Yogursa##142440 |q 54595/1 |goto 14.16,37.52 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54551
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54551 |future
step
Enter the cave |goto 63.25,77.84 < 10 |walk
accept Zalas Witherbark##54551 |goto 62.89,81.12
|tip You will accept this quest automatically.
step
kill Zalas Witherbark##142682 |q 54551/1 |goto 62.89,81.12 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54561
talk Zidormi##141649
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Arathi') |goto Arathi Highlands/0 38.24,90.09 |q 54561 |future
step
Enter the cave |goto 63.25,77.84 < 10 |walk
accept Zalas Witherbark##54561 |goto 62.89,81.12
|tip You will accept this quest automatically.
step
kill Zalas Witherbark##142682 |q 54561/1 |goto 62.89,81.12 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label "BFA_World_Quest_Emissaries"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Darkshore World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Darkshore.",
condition_suggested=function() return level>=50 end,
condition_valid=function() return level>=50 end,
condition_valid_msg="You have not unlocked Darkshore world quests!\n"..
"Alliance: Complete the quest \"We Are Coming\" in the "..
"\"Tyrande's Ascension\" event guide.\n"..
"Horde: Complete the quest \"Warfront Preparations\" in the "..
"\"Trouble in Darkshore\" event guide.",
startlevel=50.0,
worldquestzone=62,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-54840
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54840 |future
step
accept Agathe Wyrmwood##54840 |goto Darkshore/0 49.50,24.84
|tip You will accept this quest automatically.
step
kill Agathe Wyrmwood##149652 |q 54840/1 |goto 49.50,24.84 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54825
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54825 |future
step
accept Alash'anir##54825 |goto 56.46,30.76
|tip You will accept this quest automatically.
step
kill Alash'anir##148787 |q 54825/1 |goto 56.46,30.76 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54797
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54797 |future
step
accept Alash'anir##54797 |goto 56.46,30.76
|tip You will accept this quest automatically.
step
kill Alash'anir##148787 |q 54797/1 |goto 56.46,30.76 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54823
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54823 |future
step
accept Aman##54823 |goto 37.83,84.80
|tip You will accept this quest automatically.
step
kill Aman##147966 |q 54823/1 |goto 37.83,84.80 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54795
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54795 |future
step
accept Aman##54795 |goto 37.83,84.80
|tip You will accept this quest automatically.
step
kill Aman##147966 |q 54795/1 |goto 37.83,84.80 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54531
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54531 |future
step
accept Anything We Can Salvage##54531 |goto Darkshore/0 54.46,9.13
|tip You will accept this quest automatically.
step
Kill Greymist enemies around this area
click Silver Dawning Salvage##313448+
|tip They look like large brown crates and piles of rubble in the water around this area.
collect 15 Silver Dawning Salvage##166287 |q 54531/1 |goto 54.46,9.13 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54678
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54678 |future
step
accept Anything We Can Salvage##54678 |goto Darkshore/0 54.46,9.13
|tip You will accept this quest automatically.
step
Kill Greymist enemies around this area
click Silver Dawning Salvage##313448+
|tip They look like large brown crates and piles of rubble in the water around this area.
collect 15 Silver Dawning Salvage##166287 |q 54678/1 |goto 54.46,9.13 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52895
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52895 |future
|polish
step
accept Arboria##52895 |goto 44.03,75.29
|tip You will accept this quest automatically.
step
kill Monstrous Shredder##143562 |q 52895/1 |goto 44.03,75.29 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54809
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54809 |future
step
accept Athil Dewfire##54809 |goto 41.64,76.36
|tip You will accept this quest automatically.
step
kill Athil Dewfire##148037 |q 54809/1 |goto 41.64,76.36 |future
|tip She walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54821
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54821 |future
step
accept Athrikus Narassin##54821 |goto 58.49,24.33
|tip You will accept this quest automatically.
step
kill Athrikus Narassin##147708 |q 54821/1 |goto 58.49,24.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54793
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54793 |future
step
accept Athrikus Narassin##54793 |goto 58.49,24.33
|tip You will accept this quest automatically.
step
kill Athrikus Narassin##147708 |q 54793/1 |goto 58.49,24.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52182
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52182 |future
|polish
step
accept The Azerite Stuff##52182 |goto 32.85,84.09
|tip You will accept this quest automatically.
step
click Small Azerite Deposit##297605+
|tip They look like multicolored mining viens on the ground around this area.
Kill enemies around this area
collect 100 Azerite Crystal##164382 |q 52182/1 |goto 32.85,84.09 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52207
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52207 |future
|polish
step
accept The Azerite Stuff##52207 |goto 32.48,84.44
|tip You will accept this quest automatically.
step
click Small Azerite Deposit##297605+
|tip They look like multicolored mining viens on the ground around this area.
Kill enemies around this area
collect 100 Azerite Crystal##164382 |q 52207/1 |goto 44.03,75.29 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54528
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54528 |future
step
accept Back to the Depths##54528 |goto 57.49,15.46
|tip You will accept this quest automatically.
step
Kill Greymist enemies around this area
click Greymist Junk Stash##313445
|tip They look like small wooden boxes with junk inside on the ground around this area.
Exterminate the Greymist |q 54528/1 |goto 57.49,15.46 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54677
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54677 |future
step
accept Back to the Depths##54677 |goto 57.49,15.46
|tip You will accept this quest automatically.
step
Kill Greymist enemies around this area
click Greymist Junk Stash##313445
|tip They look like small wooden boxes with junk inside on the ground around this area.
Exterminate the Greymist |q 54677/1 |goto 57.49,15.46 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54856
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54856 |future
step
accept Bilgewater Bandits##54856 |goto 44.51,44.63
|tip You will accept this quest automatically.
step
Kill Forsaken enemies around this area
click Pilfered Iron Ore##316792+
|tip They look like small brown sacks on the ground around this area.
collect 100 Pilfered Iron Ore##166475 |q 54856/1 |goto 44.51,44.63 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54811
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54811 |future
step
accept Blackpaw##54811 |goto 49.64,24.81
|tip You will accept this quest automatically.
step
kill Blackpaw##149660 |q 54811/1 |goto 49.64,24.81 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54784
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54784 |future
step
accept Blackwood Liberation##54784 |goto 43.83,80.41
|tip You will accept this quest automatically.
step
talk Ancient Protector##149179
Choose _"Ride with the Ancient Protector."_
Ride with the Ancient Protector |q 54784/1 |goto 43.83,80.41 |future
stickystart "Slay_Kor'gar_Forces_54784"
step
Free a Furbolg |q 54784/3 |goto 44.90,83.07 |future
step
label "Slay_Kor'gar_Forces_54784"
Kill Kor'gar enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kor'gar Forces |q 54784/2 |goto 44.90,83.07 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54612
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54612 |future
step
accept Blood and Ashes##54612 |goto 43.78,75.76
|tip You will accept this quest automatically.
step
clicknpc Burninator Mark V##148497
Enter the Burninator Mark V |q 54612/1 |goto 43.78,75.76 |future
stickystart "Slay_Kaldorei_Defenders_54612"
step
Burn #10# Darkshore Pines |q 54612/3 |goto 43.78,75.76 |future
|tip Use the "Burninate!" ability next to glowing trees around this area.
step
label "Slay_Kaldorei_Defenders_54612"
Kill Kaldorei enemies around this area
|tip Use the "Blade Swipe" ability.
Slay #15# Kaldorei Defenders |q 54612/2 |goto 43.78,75.76 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52506
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52506 |future
|polish
step
accept Blunt the Spikes##52506 |goto 39.11,42.36
|tip You will accept this quest automatically.
stickystart "Kill_Darkshore_Invaders_52506"
step
Enter the building |goto 38.87,41.91 < 5 |walk
kill Lieutenant Oogra##141352
|tip Inside the building.
|tip He walks around the area.
Slay Lieutenant Oogra |q 52506/2 |goto 38.62,42.20 |future
step
label "Kill_Darkshore_Invaders_52506"
kill 8 Darkshore Invader##143909 |q 52506/1 |goto 39.11,42.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53497
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 53497 |future
|polish
step
accept Break Free##53497 |goto 50.45,19.62
|tip You will accept this quest automatically.
stickystart "Slay_Horde_Occupiers_53497"
step
clicknpc Darnassian Archer##143976+
|tip They look like wounded elves on the ground around this area.
Heal #8# Darnassian Archers |q 53497/1 |goto 50.45,19.62 |future
step
label "Slay_Horde_Occupiers_53497"
Kill enemies around this area
Slay #12# Horde Occupiers |q 53497/2 |goto 50.45,19.62 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52883
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52883 |future
|polish
step
accept Breakthru##52883 |goto 40.98,83.99
|tip You will accept this quest automatically.
stickystart "Kill_Darnassian_Scouts_52883"
step
use the Everburning Torch##162602
|tip Use it on Glaive Throwers.
|tip They look like artillery machines on the ground around this area.
Burn #4# Glaive Throwers |q 52883/2 |goto 40.98,83.99 |future
step
label "Kill_Darnassian_Scouts_52883"
Kill enemies around this area
Slay #10# Night Elf Forces |q 52883/1 |goto 40.98,83.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54837
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54837 |future
step
accept Burninator Mark V##54837 |goto 41.55,76.73
|tip You will accept this quest automatically.
step
kill Burninator Mark V##149141 |q 54837/1 |goto 41.55,76.73 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54836
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54836 |future
step
accept Commander Drald##54836 |goto 46.47,85.80
|tip You will accept this quest automatically.
step
kill Commander Drald##147845 |q 54836/1 |goto 46.47,85.80 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54806
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54806 |future
step
accept Commander Ral'esh##54806 |goto 37.92,76.24
|tip You will accept this quest automatically.
step
kill Commander Ral'esh##148025 |q 54806/1 |goto 37.92,76.24 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54834
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54834 |future
step
accept Commander Ral'esh##54834 |goto 37.92,76.24
|tip You will accept this quest automatically.
step
kill Commander Ral'esh##148025 |q 54834/1 |goto 37.92,76.24 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54818
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54818 |future
step
accept Conflagros##54818 |goto 39.28,62.03
|tip You will accept this quest automatically.
step
kill Conflagros##147260 |q 54818/1 |goto 39.28,62.03 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54790
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54790 |future
step
accept Conflagros##54790 |goto 39.28,62.03
|tip You will accept this quest automatically.
step
kill Conflagros##147260 |q 54790/1 |goto 39.28,62.03 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54838
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54838 |future
step
accept Croz Bloodrage##54838 |goto 50.63,32.41
|tip You will accept this quest automatically.
step
kill Croz Bloodrage##149661 |q 54838/1 |goto 50.63,32.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54817
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54817 |future
step
accept Cyclarus##54817 |goto 43.73,53.53
|tip You will accept this quest automatically.
step
kill Cyclarus##147241 |q 54817/1 |goto 43.73,53.53 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54789
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54789 |future
step
accept Cyclarus##54789 |goto 43.73,53.53
|tip You will accept this quest automatically.
step
kill Cyclarus##147241 |q 54789/1 |goto 43.73,53.53 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54669
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54669 |future
step
accept A Dangerous Combination##54669 |goto 36.54,82.38
|tip You will accept this quest automatically.
stickystart "Slay_Greymist_Murlocs_54669"
step
click Looted Titan Relic##312303+
|tip They look like stone body parts on the ground around this area.
collect 6 Looted Titan Relic##166252 |q 54669/1 |goto 36.54,82.38 |future
step
label "Slay_Greymist_Murlocs_54669"
Kill Greymist enemies around this area
Slay #12# Greymist Murlocs |q 54669/1 |goto 36.54,82.38 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54497
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54497 |future
|polish
step
accept A Dangerous Combination##54497 |goto 36.54,82.38
|tip You will accept this quest automatically.
stickystart "Slay_Greymist_Murlocs_54669"
step
click Looted Titan Relic##312303+
|tip They look like stone body parts on the ground around this area.
collect 6 Looted Titan Relic##166252 |q 54497/1 |goto 36.54,82.38 |future
step
label "Slay_Greymist_Murlocs_54669"
Kill Greymist enemies around this area
Slay #12# Greymist Murlocs |q 54497/1 |goto 36.54,82.38 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53520
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 53520 |future
|polish
step
accept Detonate!##53520 |goto 39.90,25.71
|tip You will accept this quest automatically.
stickystart "Slay_Horde_Occupiers_53520"
step
clicknpc Keg of Azerite Powder##144023+
|tip They look like wooden barrels underwater around this area.
Detonate #8# Azerite Powder Kegs |q 53520/1 |goto 39.90,25.71 |future
step
label "Slay_Horde_Occupiers_53520"
Kill enemies around this area
|tip On the ships and underwater around this area.
Slay #10# Horde Occupiers |q 53520/2 |goto 39.90,25.71 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52894
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52894 |future
|polish
step
accept Don't Stop Me Now##52894 |goto 44.24,74.95
|tip You will accept this quest automatically.
step
kill Burning Ancient##141365 |q 52894/1 |goto 44.24,74.95 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54724
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54724 |future
step
accept Ending the Blackwood##54724 |goto 43.94,80.70
|tip You will accept this quest automatically.
stickystart "Kill_Elder_Brolg_54724"
stickystart "Slay_Blackwood_Furbolgs_54724"
step
kill Elder Brownpaw##147852 |q 54724/2 |goto 43.55,80.92 |future
step
label "Kill_Elder_Brolg_54724"
kill Elder Brolg##147848 |q 54724/1 |goto 44.14,80.84 |future
step
label "Slay_Blackwood_Furbolgs_54724"
Slay #10# Blackwood Furbolgs |q 54724/3 |goto 43.94,80.70 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52312
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52312 |future
|polish
step
accept Extinguish the Lights##52312 |goto 44.21,58.72
|tip You will accept this quest automatically.
stickystart "Calm_Frenzied_Wisps_52312"
stickystart "Kill_Possessing_Spirits_52312"
step
clicknpc Entranced Grunt##143945+
|tip They look like charmed Orcs around this area.
Rescue #5# Entranced Sentinels |q 52312/2 |goto 44.21,58.72 |future
step
label "Calm_Frenzied_Wisps_52312"
clicknpc Frenzied Wisp##140956+
|tip They look like floating blue balls around this area.
Calm #6# Frenzied Wisps |q 52312/3 |goto 44.21,58.72 |future
step
label "Kill_Possessing_Spirits_52312"
kill 10 Possessing Spirit##140715 |q 52312/1 |goto 44.21,58.72 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52243
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52243 |future
|polish
step
accept Fuel for the Demolishers##52243 |goto 40.29,61.39
|tip You will accept this quest automatically.
stickystart "Kill_Darnassian_Scouts_52243"
step
kill Enraged Fire Elemental##140588+
collect 6 Elemental Pitch##161436 |q 52243/1 |goto 40.29,61.39 |future
step
label "Kill_Darnassian_Scouts_52243"
kill 7 Darnassian Scout##143674
|tip They ride nightsabers around the crater.
Slay #7# Darnassian Scouts |q 52243/2 |goto 40.29,61.39 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54679
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54679 |future
step
accept Fueling the Flames##54679 |goto 41.20,61.03
|tip You will accept this quest automatically.
step
talk Thildink Flickercraft##148751
|tip He walks around this area.
Choose _"Take the fuel pump."_
Speak to Thildink Flickercraft |q 54679/1 |goto 41.20,61.03 |future
step
kill Fire Elemental##147284+
|tip Click their corpse to fuel the tank.
|tip The bar that appears onscreen indicates how much fuel you have.
Fill the Fuel Tank |q 54679/2 |goto 40.78,60.81 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54536
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54536 |future
step
accept Fueling the Flames##54536 |goto 40.29,61.39
|tip You will accept this quest automatically.
step
talk Bolk Loosefeet##148453
|tip He walks around this area.
Choose _"Take the fuel pump."_
Speak to Bolk Loosefeet |q 54536/1 |goto 41.20,61.03 |future
step
kill Fire Elemental##147284+
|tip Click their corpse to fuel the tank.
|tip The bar that appears onscreen indicates how much fuel you have.
Fill the Fuel Tank |q 54536/2 |goto 40.78,60.81 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54858
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54858 |future
step
accept Glaive Consequences##54858 |goto 69.18,19.21
|tip You will accept this quest automatically.
step
clicknpc Kaldorei Hippogryph##149609
Ride the Kaldorei Hippogryph |invehicle |goto 69.18,19.21 |q 54858 |future
step
Kill Shatterspear enemies around this are
|tip Use the "Sentinel's Glaive" ability on your action bar
Slay #50# Shatterspear Trolls |q 54858/2 |goto 69.67,19.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54831
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54831 |future
step
accept Glimmerspine##54831 |goto 43.51,19.63
|tip You will accept this quest automatically.
step
kill Glimmerspine##149654 |q 54831/1 |goto 43.51,19.63 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54803
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54803 |future
step
accept Glimmerspine##54803 |goto 43.51,19.63
|tip You will accept this quest automatically.
step
kill Glimmerspine##149654 |q 54803/1 |goto 43.51,19.63 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54804
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54804 |future
step
accept Amberclaw##54804 |goto 57.39,15.66
|tip You will accept this quest automatically.
step
kill Amberclaw##147744 |q 54804/1 |goto 57.39,15.66 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54832
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54832 |future
step
accept Amberclaw##54832 |goto 57.39,15.66
|tip You will accept this quest automatically.
step
kill Amberclaw##147744 |q 54832/1 |goto 57.39,15.66 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54819
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54819 |future
step
Enter the cave |goto 47.18,56.01 < 10 |walk
accept Granokk##54819 |goto 47.57,55.82
|tip You will accept this quest automatically.
step
Enter the cave |goto 47.18,56.01 < 10 |walk
kill Granokk##147261 |q 54819/1 |goto 47.57,55.82 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54791
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54791 |future
step
Enter the cave |goto 47.18,56.01 < 10 |walk
accept Granokk##54791 |goto 47.57,55.82
|tip You will accept this quest automatically.
step
Enter the cave |goto 47.18,56.01 < 10 |walk
kill Granokk##147261 |q 54791/1 |goto 47.57,55.82 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54827
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54827 |future
step
accept Gren Tornfur##54827 |goto 40.91,56.44
|tip You will accept this quest automatically.
step
kill Gren Tornfur##148031 |q 54827/1 |goto 40.91,56.44 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54799
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54799 |future
step
accept Gren Tornfur##54799 |goto 40.91,56.44
|tip You will accept this quest automatically.
step
kill Gren Tornfur##148031 |q 54799/1 |goto 40.91,56.44 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54810
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54810 |future
step
accept Grimhorn##54810 |goto 50.71,32.32
|tip You will accept this quest automatically.
step
kill Grimhorn##149662 |q 54810/1 |goto 50.71,32.32 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53009
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 53009 |future
|polish
step
accept Hang On In There##53009 |goto 62.39,9.74
|tip You will accept this quest automatically.
step
clicknpc Horde Combatant##143457+
|tip They look like wounded soldiers on the ground around this area.
Kill Darkshore enemies around this area
Defend the War Camp |q 53009/1 |goto 62.39,9.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54675
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54675 |future
step
accept Hunting Season##54675 |goto 41.66,76.86
|tip You will accept this quest automatically.
stickystart "Slay_Goblin_Intruders_54675"
step
clicknpc Trapped Stag##149138+
clicknpc Trapped Doe##149134+
|tip They look like stunned animals laying on the ground around this area.
Free #10# Trapped Animals |q 54675/2 |goto 41.66,76.86 |future
step
label "Slay_Goblin_Intruders_54675"
Kill Goblin enemies around this area
Slay #12# Goblin Intruders |q 54675/1 |goto 41.66,76.86 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54788
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54788 |future
step
accept Hydrath##54788 |goto 52.42,32.18
|tip You will accept this quest automatically.
step
kill Hydrath##147240 |q 54788/1 |goto 52.42,32.18 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54816
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54816 |future
step
accept Hydrath##54816 |goto 52.42,32.18
|tip You will accept this quest automatically.
step
kill Hydrath##147240 |q 54816/1 |goto 52.42,32.18 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52984
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52984 |future
|polish
step
accept I Want It All##52984 |goto 32.92,84.05
|tip You will accept this quest automatically.
step
kill Azerite Fury##142387 |q 52984/1 |goto 32.92,84.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52983
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52983 |future
|polish
step
accept I Want It All##52983 |goto 32.92,84.05
|tip You will accept this quest automatically.
step
kill Azerite Fury##142387 |q 52983/1 |goto 32.92,84.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52890
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52890 |future
|polish
step
accept It's a Kind of Magic##52890 |goto 41.97,78.16
|tip You will accept this quest automatically.
stickystart "Slay_Frenzied_Blackwood_Furbolgs_52890"
step
kill 8 Sentry Owl##141359+ |q 52890/1 |goto 41.97,78.16 |future
step
label "Slay_Frenzied_Blackwood_Furbolgs_52890"
kill 10 Frenzied Blackwood Furbolg##140686+ |q 52890/2 |goto 41.97,78.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54895
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 54895 |future
step
accept Ivus the Decayed##54895 |goto 41.25,36.02
|tip You will accept this quest automatically.
step
kill Ivus the Decayed##148295 |q 54895/1 |goto 41.25,36.02 |future
|tip Move out of the plague zone on the ground after the breath attack. |grouprole TANK
|tip Summoned Plaguelings fixate on random players and cannot be tanked. |grouprole TANK
|tip Move out of blooms on the ground or you will take heavy damage. |grouprole EVERYONE
|tip While Ivus is Petrified, kill the summoned Plaguelings. |grouprole DAMAGE
|tip Players fixated by Plaguelings will need additional healing. |grouprole HEALER
|next "BFA_World_Quest_Emissaries"
step
label quest-54896
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54896 |future
step
accept Ivus the Forest Lord##54896 |goto 41.27,35.99
|tip You will accept this quest automatically.
step
kill Ivus the Forest Lord##144946 |q 54896/1 |goto 41.27,35.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54648
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54648 |future
step
accept Kaldorei Resurgence##54648 |goto 35.55,86.27
|tip You will accept this quest automatically.
step
clicknpc Goblin Hellion##148564
Pilot the Goblin Hellion |q 54648/1 |goto 35.55,86.27 |future
step
Kill enemies around this area
|tip Use the "Azerite Slugs" and "Azerite Salvo" abilities on your action bar.
Drive back the Kaldorei Reinforcements |q 54648/2 |goto 40.72,91.09 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54667
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54667 |future
step
accept Legacy in Ruins##54667 |goto 60.75,18.48
|tip You will accept this quest automatically.
stickystart "Slay_Highborne_Spirits_54667"
step
click Highborne Relic##237017+
|tip They look like small gray and blue objects on the ground around this area.
collect 8 Highborne Relic##166246 |q 54667/2 |goto 60.75,18.48 |future
step
label "Slay_Highborne_Spirits_54667"
Kill Highborne enemies around this area
Slay #12# Highborne Spirits |q 54667/1 |goto 60.75,18.48 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54467
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54467 |future
step
accept Legacy in Ruins##54467 |goto 60.75,18.48
|tip You will accept this quest automatically.
stickystart "Slay_Highborne_Spirits_54467"
step
click Highborne Relic##237017+
|tip They look like small white statues on the ground around this area.
collect 8 Highborne Relic##166246 |q 54467/2 |goto 60.75,18.48 |future
step
label "Slay_Highborne_Spirits_54467"
Kill Highborne enemies around this area
Slay #12# Highborne Spirits |q 54467/1 |goto 60.75,18.48 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54826
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54826 |future
step
accept Madfeather##54826 |goto 43.95,48.50
|tip You will accept this quest automatically.
step
kill Madfeather##149657 |q 54826/1 |goto 43.95,48.50 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54798
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54798 |future
step
accept Madfeather##54798 |goto 43.95,48.50
|tip You will accept this quest automatically.
step
kill Madfeather##149657 |q 54798/1 |goto 43.95,48.50 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54835
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54835 |future
step
accept Moxo the Beheader##54835 |goto 67.21,18.68
|tip You will accept this quest automatically.
step
kill Moxo the Beheader##147701 |q 54835/1 |goto 67.21,18.68 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54830
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54830 |future
step
accept Mrggr'marr##54830 |goto 35.86,81.74
|tip You will accept this quest automatically.
step
kill Mrggr'marr##147970 |q 54830/1 |goto 35.86,81.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54802
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54802 |future
step
accept Mrggr'marr##54802 |goto 35.86,81.74
|tip You will accept this quest automatically.
step
kill Mrggr'marr##147970 |q 54802/1 |goto 35.86,81.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53010
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 53010 |future
|polish
step
accept No Turning Back##53010 |goto 62.36,9.58
|tip You will accept this quest automatically.
step
Kill Horde enemies around this area
click Horde War Supplies
|tip They look like brown wooden crates on the ground around this area.
click Wooden Cage##270999+
|tip They look like wooden cages holding night elf prisoners around this area.
Assault the War Camp |q 53010/1 |goto 62.36,9.58 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52893
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52893 |future
|polish
step
accept One Vision##52893 |goto 41.97,78.16
|tip You will accept this quest automatically.
stickystart "Slay_Frenzied_Blackwood_Furbolgs_52893"
step
talk Druid of the Claw##143938
|tip You can find them near trees around this area
Tell them _"You must defend the Grove of the Ancients!"_
Dispatch #8# Druids |q 52893/1 |goto 41.97,78.16 |future
step
label "Slay_Frenzied_Blackwood_Furbolgs_52893"
kill 10 Frenzied Blackwood Furbolg##140686+ |q 52893/2 |goto 41.97,78.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54792
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54792 |future
step
accept Onu##54792 |goto 45.22,74.94
|tip You will accept this quest automatically.
step
kill Onu##147758 |q 54792/1 |goto 45.22,74.94 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54841
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54841 |future
step
accept Orwell Stevenson##54841 |goto 39.13,34.10
|tip You will accept this quest automatically.
step
kill Orwell Stevenson##148295 |q 54841/1 |goto 39.13,34.10 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53319
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 53319 |future
|polish
step
accept Our Sacred Forest##53319 |goto 60.82,18.17
|tip You will accept this quest automatically.
step
click Wood Pile##297480+
|tip They look like bundles of wood on the ground around this area.
kill Horde Combatant##143456+
Protect the Ruins of Mathystra |q 53319/1 |goto 59.12,16.69 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53320
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 53320 |future
|polish
step
accept Ours For the Taking##53320 |goto 61.08,18.07
|tip You will accept this quest automatically.
step
clicknpc Damaged Shredder##143452+
|tip They look like broken mechanical shredders on the ground around this area.
Kill Darkshore enemies around this area
click Wood Pile##297480+
|tip They look like small bundles of wood on the ground around this area.
Control the Ruins of Mathystra |q 53320/1 |goto 61.08,18.07 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54668
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54668 |future
step
accept Out of Their Mine##54668 |goto 32.67,83.95
|tip You will accept this quest automatically.
stickystart "Destroy_Goblin_Miners_54668"
stickystart "Slay_Goblin_Mine_Operators_54668"
step
click Goblin Heavy Borer##317407+
|tip They look like large two-wheeled cannons on the ground around this area.
|tip They appear on your minimap as yellow dots.
Destroy #3# Goblin Heavy Borers |q 54668/3 |goto 32.67,83.95 |future
step
label "Destroy_Goblin_Miners_54668"
clicknpc Goblin Miner##317406+
|tip They look like four-legged machines on the ground around this area.
Destroy #6# Goblin Miners |q 54668/2 |goto 32.67,83.95 |future
step
label "Slay_Goblin_Mine_Operators_54668"
Kill Goblin enemies around this area
Slay #10# Goblin Mine Operators |q 54668/1 |goto 33.81,83.54 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54674
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 43.52,58.48 |q 54674 |future
step
accept Prisoners of the Darkscale##54674 |goto 43.52,58.48
|tip You will accept this quest automatically.
step
Kill Darkscale enemies around this area
collect 6 Darkscale Key##166273 |n
click Darkscale Cage##312354+
|tip They look like heavy cages with people inside on the ground around this area.
Rescue #6# Gilnean Laborers |q 54674/1 |goto 43.52,58.48 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54514
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 43.52,58.48 |q 54514 |future
step
accept Prisoners of the Darkscale##54514 |goto 43.52,58.48
|tip You will accept this quest automatically.
step
Kill Darkscale enemies around this area
collect 6 Darkscale Key##166273 |n
click Darkscale Cage##312354+
|tip They look like heavy cages with people inside on the ground around this area.
Rescue #6# Forsaken Harvesters |q 54514/1 |goto 43.52,58.48 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52505
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52505 |future
|polish
step
accept Pruning the Thorns##52505 |goto 39.56,39.83
|tip You will accept this quest automatically.
stickystart "Kill_Auberdine_Guardians_52505"
step
kill Lieutenant Aylissa Silverarrow##141346
|tip She walks around this area.
Slay Lieutenant Aylissa Silverarrow |q 52505/2 |goto 39.56,39.83 |future
step
label "Kill_Auberdine_Guardians_52505"
kill 8 Auberdine Guardian##143902 |q 52505/1 |goto 39.14,42.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54672
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54672 |future
|polish
step
accept Rituals of Twilight##54672 |goto 40.89,84.01
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Twilight Rune+
|tip They look like multicolored runes drawn on the ground around this area.
click Twilight Reagent+
|tip They look like orange bottles and purple boxes around this area.
|tip You can find them under tents and near slain enemies.
Stop the Twilight's Hammer |q 54672/1 |goto 40.89,84.01 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54499
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54499 |future
step
accept Rituals of Twilight##54499 |goto 40.89,84.01
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Twilight Rune+
|tip They look like multicolored runes drawn on the ground around this area.
click Twilight Reagent+
|tip They look like orange bottles and purple boxes around this area.
|tip You can find them under tents and near slain enemies.
Stop the Twilight's Hammer |q 54499/1 |goto 40.89,84.01 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54807
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54807 |future
step
accept Sapper Odette##54807 |goto 32.97,83.95
|tip You will accept this quest automatically.
step
kill Sapper Odette##148103 |q 54807/1 |goto 32.97,83.95 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54833
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54833 |future
step
accept Scalefiend##54833 |goto 47.64,44.52
|tip You will accept this quest automatically.
step
kill Scalefiend##149665 |q 54833/1 |goto 47.64,44.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54805
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54805 |future
step
accept Scalefiend##54805 |goto 47.64,44.52
|tip You will accept this quest automatically.
step
kill Scalefiend##149665 |q 54805/1 |goto 47.64,44.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54496
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54496 |future
step
accept Scurvy Dogs!##54496 |goto 34.05,83.73
|tip You will accept this quest automatically.
stickystart "Defuse_Worgen_Explosives_54496"
stickystart "Slay_Gilnean_Invaders_54496"
step
click Gilnean Boat##312291+
|tip They look like beached ships on the ground around this area.
Scuttle #4# Worgen Boats |q 54496/3 |goto 34.05,83.73 |future
step
label "Defuse_Worgen_Explosives_54496"
click Worgen Explosive+
|tip They look like small bombs with lit fuses on the ground around this area.
Defuse #10# Worgen Explosives |q 54496/2 |goto 32.86,84.01 |future
step
label "Slay_Gilnean_Invaders_54496"
Kill Gilnean enemies around this area
Slay #10# Gilnean Invaders |q 54496/1 |goto 33.97,84.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54812
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54812 |future
step
accept Shadowclaw##54812 |goto 39.79,32.89
|tip You will accept this quest automatically.
step
kill Shadowclaw##149663 |q 54812/1 |goto 39.79,32.89 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54676
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54676 |future
step
accept Shards of Narassin##54676 |goto 57.27,23.97
|tip You will accept this quest automatically.
stickystart "Kill_Tortured_Spirits_54676"
step
click Soul Gem##237017
Break #6# Soul Gems |q 54676/2 |goto 57.27,23.97 |future
step
label "Kill_Tortured_Spirits_54676"
kill 8 Tortured Spirit##147723 |q 54676/1 |goto 57.27,23.97 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54698
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54698 |future
step
accept Shattering Spears##54698 |goto 62.17,9.94
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Shatterspear Totem+
|tip They look like wooden Tauren totems on the ground around this area.
click Horde Food Stores+
|tip They look like white sacks with red Horde symbols on them and crates and barrels on the ground around this area.
Cripple the Shatterspear Offensive |q 54698/1 |goto 62.17,9.94 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54824
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54824 |future
step
accept Shattershard##54824 |goto 43.47,29.41
|tip You will accept this quest automatically.
step
kill Shattershard##147751 |q 54824/1 |goto 43.47,29.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54796
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54796 |future
step
accept Shattershard##54796 |goto 43.47,29.41
|tip You will accept this quest automatically.
step
kill Shattershard##147751 |q 54796/1 |goto 43.47,29.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54520
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54520 |future
step
accept Singed Saplings##54520 |goto 41.66,76.86
|tip You will accept this quest automatically.
stickystart "Slay_Kaldorei_Intruders_54520"
step
click Treant Sapling##312045+
|tip They look like petrified treants on the ground around this area.
Burn #10# Treant Saplings |q 54520/2 |goto 41.66,76.86 |future
step
label "Slay_Kaldorei_Intruders_54520"
Kill Kaldorei enemies around this area
Slay #12# Kaldorei Intruders |q 54520/1 |goto 41.66,76.86 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52504
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52504 |future
|polish
step
accept So We Meat Again##52504 |goto 39.31,51.93
|tip You will accept this quest automatically.
stickystart "Kill_Horde_Poachers_52504"
step
Kill enemies around this area
|tip Beasts will count for this objective.
collect 10 Haunch of Meat##162013 |q 52504/1 |goto 39.31,51.93 |future
step
label "Kill_Horde_Poachers_52504"
kill 8 Horde Poacher##142673 |q 52504/2 |goto 39.31,51.93 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54794
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54794 |future
step
accept Soggoth the Slitherer##54794 |goto 40.61,85.33
|tip You will accept this quest automatically.
step
kill Soggoth the Slitherer##147897 |q 54794/1 |goto 40.61,85.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54822
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54822 |future
step
accept Soggoth the Slitherer##54822 |goto 40.61,85.33
|tip You will accept this quest automatically.
step
kill Soggoth the Slitherer##147897 |q 54822/1 |goto 40.61,85.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52307
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52307 |future
|polish
step
accept Spiritual Aid##52307 |goto 44.01,58.96
|tip You will accept this quest automatically.
stickystart "Calm_Frenzied_Wisps_52307"
stickystart "Kill_Possessing_Spirits_52307"
step
clicknpc Entranced Sentinel##143930+
|tip They look like charmed Night Elves around this area.
Rescue #5# Entranced Sentinels |q 52307/2 |goto 44.01,58.96 |future
step
label "Calm_Frenzied_Wisps_52307"
clicknpc Frenzied Wisp##140956+
|tip They look like floating blue balls around this area.
Calm #6# Frenzied Wisps |q 52307/3 |goto 44.01,58.96 |future
step
label "Kill_Possessing_Spirits_52307"
kill 10 Possessing Spirit##140715 |q 52307/1 |goto 44.01,58.96 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53498
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 53498 |future
|polish
step
accept Staying Power##53498 |goto 50.31,19.93
|tip You will accept this quest automatically.
stickystart "Slay_Darnassian_Reinforcements_53498"
step
click Lunar Ward##299019
|tip They look like pedestals with glowing blue fire and a moon over them on the ground around this area.
Destroy #3# Lunar Wards |q 53498/1 |goto 50.31,19.93 |future
step
label "Slay_Darnassian_Reinforcements_53498"
Kill enemies around this area
Slay #15# Darnassian Reinforcements |q 53498/2 |goto 50.31,19.93 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54521
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54521 |future
step
accept Stolen Sorcery##54521 |goto 58.00,23.79
|tip You will accept this quest automatically.
stickystart "Slay_Tortured_Spirits_54521"
step
clicknpc Forsaken Looter##148309+
|tip They look like dead Forsaken corpses on the ground around this area.
collect 15 Page of Dark Magic##166281 |q 54521/1 |goto 58.00,23.79 |future
step
label "Slay_Tortured_Spirits_54521"
kill 8 Tortured Spirit##147723 |q 54521/2 |goto 58.00,23.79 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54829
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54829 |future
step
accept Stonebinder Ssra'vess##54829 |goto 45.50,58.98
|tip You will accept this quest automatically.
step
kill Stonebinder Ssra'vess##147332 |q 54829/1 |goto 45.50,58.98 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54801
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54801 |future
step
accept Stonebinder Ssra'vess##54801 |goto 45.50,58.98
|tip You will accept this quest automatically.
step
kill Stonebinder Ssra'vess##147332 |q 54801/1 |goto 45.50,58.98 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52244
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52244 |future
|polish
step
accept Stop the Drilling##52244 |goto 40.53,62.56
|tip You will accept this quest automatically.
stickystart "Slay_Bilgewater_Forces_52244"
step
click Oil Pump##292903
Disable the Oil Pump |q 52244/2 |goto 40.44,64.16 |count 1 |future
step
click Oil Pump##292903
Disable the Oil Pump |q 52244/2 |goto 39.15,64.09 |count 2 |future
step
click Oil Pump##292903
Disable the Oil Pump |q 52244/2 |goto 40.75,59.20 |count 3 |future
step
label "Slay_Bilgewater_Forces_52244"
Kill Bilgewater enemies around this area
Slay #7# Bilgewater Forces |q 52244/1 |goto 40.53,62.56 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54808
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54808 |future
step
accept Thelar Moonstrike##54808 |goto 62.13,16.52
|tip You will accept this quest automatically.
step
kill Thelar Moonstrike##147435 |q 54808/1 |goto 62.13,16.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52343
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52343 |future
|polish
step
accept They Eat Like Orcs##52343 |goto 39.22,51.52
|tip You will accept this quest automatically.
stickystart "Kill_Druids_of_the_Claw_52343"
step
Kill enemies around this area
|tip Whitetail Stags, Moonstalkers, and Displaced Chimaeras count for this objective.
|tip Moonstalkers are stealthed around this area.
|tip Displaced Chimaeras fly around this area.
collect 15 Haunch of Meat##162013 |q 52343/1 |goto 39.22,51.52 |future
step
label "Kill_Druids_of_the_Claw_52343"
kill 8 Druid of the Claw##142677 |q 52343/2 |goto 39.22,51.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54673
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54673 |future
step
accept Tip of the Trident##54673 |goto 38.59,76.26
|tip You will accept this quest automatically.
step
Kill Darkscale enemies around this area
click Darkscale Harpoon Launcher+
|tip They look like large siege weapons on the ground around this area.
click Darkscale Banner+
|tip They look like blue and gold flags stuck in the ground around this area.
click Darkscale Armaments+
|tip They look like large racks of weapons on the ground around this area.
Repel the Darkscale Naga |q 54673/1 |goto 38.59,76.26 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54509
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54509 |future
step
accept Tip of the Trident##54509 |goto 38.59,76.26
|tip You will accept this quest automatically.
step
Kill Darkscale enemies around this area
click Darkscale Harpoon Launcher+
|tip They look like large siege weapons on the ground around this area.
click Darkscale Banner+
|tip They look like blue and gold flags stuck in the ground around this area.
click Darkscale Armaments+
|tip They look like large racks of weapons on the ground around this area.
Repel the Darkscale Naga |q 54509/1 |goto 38.59,76.26 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54857
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54857 |future
step
accept Turning the Tides##54857 |goto 38.15,44.96
|tip You will accept this quest automatically.
step
clicknpc Glaive Thrower##149542
Man the Glaive Thrower |q 54857/1 |goto 38.15,44.96 |future
step
Kill Forsaken enemies around this area
|tip Use the "Spinning Glaive" ability on your action bar.
Drive Back the Forsaken Fleet |q 54857/2 |goto 38.15,44.96 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54722
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54722 |future
step
accept Turning the Tides##54722 |goto 38.15,44.96
|tip You will accept this quest automatically.
step
clicknpc Dread Ballista##149075
Man the Dread Ballista |q 54722/1 |goto 38.15,44.96 |future
step
Kill Kaldorei enemies around this area
|tip Use the "Dread Shot" ability on your action bar.
Drive Back the Kaldorei Fleet |q 54722/2 |goto 38.15,44.96 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54828
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54828 |future
step
accept Twilight Prophet Graeme##54828 |goto 40.61,82.71
|tip You will accept this quest automatically.
step
kill Twilight Prophet Graeme##147942 |q 54828/1 |goto 40.61,82.71 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54800
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54800 |future
step
accept Twilight Prophet Graeme##54800 |goto 40.61,82.71
|tip You will accept this quest automatically.
step
kill Twilight Prophet Graeme##147942 |q 54800/1 |goto 40.61,82.71 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52896
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52896 |future
|polish
step
accept Under Pressure##52896 |goto 42.82,68.40
|tip You will accept this quest automatically.
step
clicknpc Goblin Hellion##143952
Use the Goblin Hellion |q 52896/1 |goto 42.82,68.40 |future
stickystart "Slay_Kaldorei_Forces_52896"
step
kill Awakened Ancient##140741+
|tip Use the abilities on your action bar.
Slay #5# Awakened Ancients |q 52896/2 |goto 42.04,66.75 |future
step
label "Slay_Kaldorei_Forces_52896"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kaldorei Forces |q 52896/3 |goto 42.04,66.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52897
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 52897 |future
|polish
step
accept We Will "Rock" You##52897 |goto 42.09,66.86
|tip You will accept this quest automatically.
step
clicknpc Tree of Life##144413
Speak with the Tree of Life |q 52897/1 |goto 42.09,66.86 |future
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Horde Enemies |q 52897/2 |goto 42.88,68.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53552
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 53552 |future
|polish
step
accept Wicked Kegger##53552 |goto 39.90,25.71
|tip You will accept this quest automatically.
stickystart "Kill_Darkshore_Invaders_53552"
step
clicknpc Keg of Azerite Powder##144023+
|tip They look like wooden barrels underwater around this area.
Claim #8# Azerite Powder Kegs |q 53552/1 |goto 39.90,25.71 |future
step
label "Kill_Darkshore_Invaders_53552"
Kill enemies around this area
|tip On the ships and underwater around this area.
Slay #10# Alliance Defenders |q 53552/2 |goto 39.90,25.71 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54719
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54719 |future
step
accept Worgen in the Ore Mine##54719 |goto 44.51,44.63
|tip You will accept this quest automatically.
step
Kill Gilnean enemies around this area
click Pilfered Iron Ore##316792+
|tip They look like small brown sacks on the ground around this area.
collect 100 Pilfered Iron Ore##166475 |q 54719/1 |goto 44.51,44.63 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54820
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('Old Darkshore') |goto Darkshore/0 48.86,24.46 |q 54820 |future
step
accept Zim'kaga##54820 |goto 62.38,9.86
|tip You will accept this quest automatically.
step
kill Zim'kaga##147664 |q 54820/1 |goto 62.38,9.86 |future
|next "BFA_World_Quest_Emissaries"
step
label "BFA_World_Quest_Emissaries"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\BFA World Quest Unlock",{
author="support@zygorguides.com",
description="\nThis guide will walk you through unlocking world quests in Kul Tiras and Zandalar.\n\n"..
"To accomplish this, you will need to earn \"Friendly\" reputation with the follwing factions:\n\n"..
"Order of Embers\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n",
condition_suggested=function() return level >= 50 and not completedq(51918) end,
condition_valid=function() return level >= 50 end,
condition_valid_msg="You must be level 50 to unlock world quests in Battle for Azeroth!",
condition_end=function() return completedq(51918) end,
startlevel=50.0,
},[[
step
accept A Mission of Unity##53063
|tip You will accept this quest automatically upon reaching level 50.
step
Earn "Friendly" Reputation with the Order of Embers |q 53063/3
|tip Use the "Drustvar" Leveling Guide to accomplish this.
step
Earn "Friendly" Reputation with the Proudmoore Admiralty |q 53063/1
|tip Use the "Tiragarde Sound" Leveling Guide to accomplish this.
step
Earn "Friendly" Reputation with Storm's Wake |q 53063/2
|tip Use the "Stormsong Valley" Leveling Guide to accomplish this.
step
accept Uniting Kul Tiras##51918 |goto Boralus/0 69.26,26.99
|tip You will accept this quest automatically upon reaching level 50.
step
talk Halford Wyrmbane##135612
turnin Uniting Kul Tiras##51918 |goto Boralus/0 69.26,26.99
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Drustvar World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Drustvar, Kul Tiras.",
condition_suggested=function() return level == 50 and completedq(51918) end,
condition_valid=function() return level >= 50 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=50.0,
worldquestzone=896,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-54681
accept Azerite Caravan##54681 |goto Drustvar/0 32.16,46.75
|tip You will accept this quest automatically.
step
kill Caravan Commander Veronica##148676 |q 54681/1 |goto 32.16,46.75 |future
|tip She walks around this area on a horse.
step
click Azerite Chest
Secure the Azerite Shipment |q 54681/2 |goto 32.04,46.83 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53714
accept Apothecary Jerrod##53714 |goto Drustvar/0 34.84,41.55
|tip You will accept this quest automatically.
step
Enter the cave |goto 34.84,41.55 < 15 |walk
kill Apothecary Jerrod##144855 |q 53714/1 |goto 35.20,41.58 |future
|tip He walks around inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-52157
Follow the path up |goto Drustvar/0 60.95,69.95 < 15 |only if walking
Continue up the path |goto Drustvar/0 59.96,72.45 < 20 |only if walking
accept A Chilling Encounter##52157 |goto Drustvar/0 49.25,74.17
|tip You will accept this quest automatically.
step
kill Hailstone Construct##140252 |q 52157/1 |goto 49.25,74.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51576
accept Any Witch Way But Dead##51576 |goto Drustvar/0 24.19,54.15
|tip You will accept this quest automatically.
stickystart "Slay_Witch_Forces_51576"
step
click Cage##182094+
|tip They look like wooden cages on the ground around this area.
Free #10# Imprisoned Villagers |q 51576/1 |goto 24.19,54.15 |future
step
label "Slay_Witch_Forces_51576"
Kill enemies around this area
Slay #10# Witch Forces |q 51576/2 |goto 24.19,54.15 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51541
accept Arclight##51541 |goto Drustvar/0 29.21,69.01
|tip You will accept this quest automatically.
step
kill Arclight##137824 |q 51541/1 |goto 29.21,69.01 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51466
accept Arvon the Betrayed##51466 |goto Drustvar/0 35.54,68.81
|tip You will accept this quest automatically.
step
Follow the path up |goto 35.54,68.81 < 15 |only if walking
kill Arvon the Betrayed##137529 |q 51466/1 |goto 34.88,69.21 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51542
accept Avalanche##51542 |goto Drustvar/0 43.23,86.77
|tip You will accept this quest automatically.
step
kill Avalanche##137825 |q 51542/1 |goto 43.75,88.02 |future
|tip It flies around this hill and sometimes lands.
|next "BFA_World_Quest_Emissaries"
step
label quest-52862
accept Azerite Empowerment##52862 |goto Drustvar/0 22.17,30.37
|tip You will accept this quest automatically.
step
Enter the cave |goto 21.58,29.97 < 15 |walk
kill Rotbough##141970 |q 52862/1 |goto 22.17,30.37 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51612
accept Azerite Empowerment##51612 |goto Drustvar/0 40.30,37.83
|tip You will accept this quest automatically.
step
kill Sister Hilga##138295 |q 51612/1 |goto 39.83,37.76 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51608
accept Azerite Madness##51608 |goto Drustvar/0 40.92,38.91
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Heart of Azeroth" ability near their corpses.
|tip It appears as a button on the screen.
Absorb Azerite from Defeated Elementals |q 51608/1 |goto 40.92,38.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52872
accept Azerite Mining##52872 |goto Drustvar/0 58.47,52.40
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 52872/1 |goto 58.47,52.40 |future
You can find more inside the cave at [58.03,54.00]
|next "BFA_World_Quest_Emissaries"
step
label quest-51615
accept Azerite Mining##51615 |goto Drustvar/0 41.26,39.36
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51615/1 |goto 40.49,38.21 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51609
accept Azerite Wounds##51609 |goto Drustvar/0 41.36,40.34
|tip You will accept this quest automatically.
step
Heal #5# Azeroth Wounds |q 51609/1 |goto 40.58,37.85 |future
|tip Use the "Heart of Azeroth" ability.
|tip Use it near the blue glowing spots with sparks flying out of them on the ground around this area.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-54143
accept Bird's-Eye View##54143 |goto Drustvar/0 37.75,48.66
|tip You will accept this quest automatically.
stickystart "Collect_Spy_Gear_54143"
step
kill 8 Horde Shadoweye##146819 |q 54143/1 |goto 37.75,48.66 |future
|tip They are all around the edge of town around Arom's Stand.
|tip They can also be on buildings around this area.
|tip Use the "Grizzek Rocket Hop" ability to jump to them.
|tip It appears as a button on the screen.
step
label "Collect_Spy_Gear_54143"
click Spy Gear+
|tip They look like various shaped objects on the ground around the edge of town around Arom's Stand.
|tip They can also be on buildings around this area.
|tip Use the "Grizzek Rocket Hop" ability to jump to them.
|tip It appears as a button on the screen.
Collect #8# Spy Gear |q 54143/2 |goto 37.75,48.66 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54662
accept Brought to Light##54662 |goto Drustvar/0 39.58,49.79
|tip You will accept this quest automatically.
step
click Hide-No-More 2000
Pick Up the Hide-No-More 2000 |q 54662/1 |goto 39.58,49.79 |future
step
kill Veiled Saboteur##148639+
|tip Walk around this area until you hear an "Intruder Alert" alarm.
|tip They are usually near the yellow structures around this area.
|tip Use the "Intruder Alert!" ability when you hear the alarm.
|tip It appears as a button on the screen.
Slay #6# Horde Saboteurs |q 54662/2 |goto 40.79,46.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51832
accept Beat Around The Bush##51832 |goto Drustvar/0 25.15,47.58
|tip You will accept this quest automatically.
stickystart "Kill_Exposed_Operatives_51832"
stickystart "Slay_Witch_Forces_51832"
step
kill Captain McCann##139092 |q 51832/3 |goto 25.15,47.58 |future
step
label "Kill_Exposed_Operatives_51832"
click Inconspicuious Bush+
|tip They look like leafy brown bushes on the ground around this area.
kill 5 Exposed Operative##139079 |q 51832/1 |goto 23.84,51.00 |future
step
label "Slay_Witch_Forces_51832"
Kill enemies around this area
Slay #10# Witch Forces |q 51832/2 |goto 23.84,51.00 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51469
accept Betsy##51469 |goto Drustvar/0 58.47,33.17
|tip You will accept this quest automatically.
step
kill Betsy##124548 |q 51469/1 |goto 58.47,33.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51491
accept Balethorn##51491 |goto Drustvar/0 57.09,29.46
|tip You will accept this quest automatically.
step
kill Balethorn##130143 |q 51491/1 |goto 56.61,29.16 |future
|tip He walks around the area.
|next "BFA_World_Quest_Emissaries"
step
label quest-51506
accept Barbthorn Queen##51506 |goto Drustvar/0 58.88,18.40
|tip You will accept this quest automatically.
|tip At the entrance of the cave.
step
Enter the cave |goto Drustvar/0  58.88,18.40 < 10 |only if walking
kill Barbthorn Queen##127333 |q 51506/1 |goto 59.12,16.69 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51681
accept Basic Witch##51681 |goto Drustvar/0 70.31,62.65
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Captured Villager##126629+
|tip They look like humans tied to wooden posts on the ground around this area.
Reclaim Fletcher's Hollow |q 51681/1 |goto 70.31,62.65 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51637
accept Beachhead##51637 |goto Drustvar/0 21.61,26.54
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##138478
Tell her _"I am ready."_
Speak to Scrollsage Nola |q 51637/1 |goto 21.63,26.68 |future
step
kill Vicious Albatross##138186+
|tip They look like birds flying in the air around this area.
|tip Use the ability on your action bar.
kill Armored Claw##138242+
|tip They look like small crabs in the water.
|tip Use the ability on your action bar.
Help #12# Juvenile Turtles Reach the Ocean |q 51637/2 |future
|tip The turtles will slowly walk into the water.
|tip You must protect them from the birds and crabs.
|next "BFA_World_Quest_Emissaries"
step
label quest-50000
accept Beastly Dealings##50000 |goto Drustvar/0 25.77,69.00
|tip You will accept this quest automatically.
step
kill Briarwood Invader##131373+
click Witch Effigy+
|tip They look like large wooden monster statues on the ground around this area.
click Hanging Witch Effigy+
|tip They look like bone and wood string decorations hanging from buildings around this area.
click Antlered Skull+
|tip They look like large animal skulls with antlers on them on the ground around this area.
click Witch Banner+
|tip They look like white flags with red painted symbols on them hanging from gnarled wooden stands on the ground around this area.
Destroy the Signs of Witchcraft |q 50000/1 |goto 25.77,69.00 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51917
accept Beshol##51917 |goto Drustvar/0 51.17,29.66
|tip You will accept this quest automatically.
step
Enter the cave |goto 51.17,29.66 < 10 |walk
click Obviously Safe Chest##278432
|tip Inside the cave.
kill Beshol##129805 |q 51917/1 |goto 50.54,30.06 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53271
accept Blooming Star Moss##53271 |goto Drustvar/0 32.16,24.45
|tip You will accept this quest automatically.
step
click Blooming Star Moss##143403
Gather the Blooming Star Moss |q 53271/1 |goto 32.16,24.45 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51741
accept Bombarbment##51741 |goto Drustvar/0 61.06,17.71
|tip You will accept this quest automatically.
step
Kill Barbthorn enemies around this area
clicknpc Barbthorn Hive##127038+
|tip They look like yellow bee hives hanging in trees around this area.
Clear Out Barbthorn Ridge |q 51741/1 |goto 59.38,20.13 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51512
accept Bilefang Mother##51512 |goto Drustvar/0 36.00,31.65
|tip You will accept this quest automatically.
step
Enter the mine |goto 36.00,31.65 < 10 |walk
Run down the stairs |goto 36.36,30.61 < 15 |walk
kill Bilefang Mother##132319 |q 51512/1 |goto 35.06,33.25 |future
|tip Inside the mine.
|next "BFA_World_Quest_Emissaries"
step
label quest-51699
Follow the path |goto Drustvar/0 30.99,20.38 < 15 |only if walking and Alliance
accept Blighted Monstrosity##51699 |goto Drustvar/0 36.01,11.10
|tip You will accept this quest automatically.
step
kill Blighted Monstrosity##138667 |q 51699/1 |goto 36.01,11.10 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53272
accept Blooming Siren's Sting##53272 |goto Drustvar/0 27.35,66.94
|tip You will accept this quest automatically.
|polish
step
clicknpc Blooming Siren's Sting##143732
Gather the Blooming Siren's Sting |q 53272/1 |goto 27.35,66.94 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51709
accept Bombarbment##51709 |goto Drustvar/0 61.06,17.71
|tip You will accept this quest automatically.
step
Kill Barbthorn enemies around this area
clicknpc Barbthorn Hive##127038+
|tip They look like yellow bee hives hanging in trees around this area.
Clear Out Barbthorn Ridge |q 51709/1 |goto 59.38,20.13 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51468
accept Bonesquall##51468 |goto Drustvar/0 66.77,50.81
|tip You will accept this quest automatically.
|tip He walks around this area.
step
kill Bonesquall##126621 |q 51468/1 |goto 66.77,50.81 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-53549
Follow the path up |goto Drustvar/0 27.24,71.07 < 7 |only if walking
Cross the water |goto 28.23,70.01 < 10 |only if walking
Follow the path up |goto 30.43,71.43 < 10 |only if walking
Continue up the path |goto 31.02,69.70 < 7 |only if walking
Continue up the path |goto 31.73,69.27 < 7 |only if walking
Continue up the path |goto 32.61,70.63 < 10 |only if walking
Follow the path |goto 34.11,70.72 < 7 |only if walking
Follow the path |goto 35.76,69.47 < 10 |only if walking
accept Bounty Bag##53549 |goto Drustvar/0 34.78,69.21
|tip You will accept this quest automatically.
|polish
step
kill Arvon the Betrayed##137529 |q 53549/1 |goto 25.84,69.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51737
accept Bruin Potions##51737 |goto Drustvar/0 18.89,56.86
|tip You will accept this quest automatically.
stickystart "Collect_Bear_Hearts_51737"
stickystart "Collect_Hearthbloom_Petals_51737"
step
kill Hexwood Sentry##138088+
collect 4 Caustic Sap##160442 |q 51737/3 |goto 18.89,56.86 |future
step
label "Collect_Bear_Hearts_51737"
kill Hexed Brambleback##133501+
collect 6 Bear Heart##157545 |q 51737/1 |goto 18.89,56.86 |future
step
label "Collect_Hearthbloom_Petals_51737"
click Hearthbloom##281252+
|tip They look like small red and yellow flowers on the ground around this area.
collect 10 Hearthbloom Petals##157546 |q 51737/2 |goto 18.89,56.86 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51989
accept Braedan Whitewall##51989 |goto Drustvar/0 27.64,59.59
|tip You will accept this quest automatically.
step
kill Braedan Whitewall##139321 |q 51989/1 |goto 27.64,59.59 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50369
accept Bruin Potions##50369 |goto Drustvar/0 18.89,56.86
|tip You will accept this quest automatically.
stickystart "Collect_Bear_Hearts_50369"
stickystart "Collect_Hearthbloom_Petals_50369"
step
kill Hexwood Sentry##138088+
collect 4 Caustic Sap##160442 |q 50369/3 |goto 18.89,56.86 |future
step
label "Collect_Bear_Hearts_50369"
kill Hexed Brambleback##133501+
collect 6 Bear Heart##157545 |q 50369/1 |goto 18.89,56.86 |future
step
label "Collect_Hearthbloom_Petals_50369"
click Hearthbloom##281252+
|tip They look like small red and yellow flowers on the ground around this area.
collect 10 Hearthbloom Petals##157546 |q 50369/2 |goto 18.89,56.86 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53312
accept Burnished Platinum##53312 |goto Drustvar/0 20.82,50.93
|tip You will accept this quest automatically.
|polish
step
click Burnished Platinum Deposit##297472
collect Burnished Platinum##163624 |q 53312/1 |goto 20.82,50.93 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55264
accept Calligraphy##55264 |goto Drustvar/0 56.46,33.97
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##151524
Tell him _"I am ready."_
Speak to Scrollsage Nola |q 55264/1 |goto 56.46,33.97 |future
step
Complete the Tracing Challenge |q 55264/2 |goto 56.46,33.97 |future
|tip Run around, tracing the pattern that appears.
|next "BFA_World_Quest_Emissaries"
step
label quest-51528
accept Captain Leadfist##51528 |goto Drustvar/0 27.82,15.34
|tip You will accept this quest automatically.
step
kill Captain Leadfist##135796 |q 51528/1 |goto 27.68,14.15 |future
|tip He will appear on your minimap as a yellow dot.
|next "BFA_World_Quest_Emissaries"
step
label quest-51970
accept The Caterer##51970 |goto Drustvar/0 25.12,16.21
|tip You will accept this quest automatically.
step
click Ruined Wedding Cake##291272
kill The Caterer##139358 |q 51970/1 |goto 25.12,16.21 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51920
Follow the path |goto Drustvar/0 54.21,46.65 < 30 |only if walking
Enter the cave |goto Drustvar/0 52.54,46.71 < 10 |walk
accept Cottontail Matron##51920 |goto Drustvar/0 52.54,46.71
|tip You will accept this quest automatically.
step
kill Cottontail Matron##129904 |q 51920/1 |goto 52.15,46.92 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-52009
accept Crab People##52009 |goto Drustvar/0 21.40,66.45
|tip You will accept this quest automatically.
step
talk Captain Hermes##139489
Tell him _"Begin pet battle."_
Defeat Captain Hermes |q 52009/1 |goto 21.40,66.45 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55215
accept The Cycle of Life##55215 |goto Drustvar/0 21.70,26.86
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##151474
Speak to Scrollsage Nola |q 55215/1 |goto 21.70,26.86 |future
step
talk Scrollsage Nola##151474
Tell him _"I am ready."_
Start the Game |invehicle |q 55215 |goto 21.70,26.86 |future
step
Kill Juvenile Turtle enemies around this area
|tip Use the "Move Left" and "Move Right" abilities to avoid the incoming attacks and reach turtles.
|tip Use the "Throw Turtle Shell" ability to throw a shell, killing all turtles in a straight line.
Stop #20# Juvenile Turtles from Raching the Ocean |q 55215/2 |goto 21.42,26.32 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54665
accept Duchess Fallensong##54665 |goto Drustvar/0 40.20,50.90
|tip You will accept this quest automatically.
step
kill Duchess Fallensong the Frigid##148563 |q 54665/1 |goto 40.20,50.90 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51461
accept Deathcap##51461 |goto Drustvar/0 18.71,59.44
|tip You will accept this quest automatically.
step
Enter the cave |goto 18.71,59.44 < 10 |walk
kill Deathcap##134706 |q 51461/1 |goto 18.71,61.39 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51754
accept Dogged Tenacity##51754 |goto Drustvar/0 66.42,27.42
|tip You will accept this quest automatically.
step
click Alliance Banner
Watch the dialogue
Kill the enemies that attack in waves
kill Marshal Layre##138874
Overtake the Gilnean Camp |q 51754/1 |goto 66.42,27.42 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51706
accept Deadwood##51706 |goto Drustvar/0 27.19,57.91
|tip You will accept this quest automatically.
step
use the Greater Control Charm##160584
|tip Use it next to the Crimson Demolisher.
Control the Crimson Demolisher |q 51706/1 |goto 27.19,57.91 |future
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy the Witch Forces |q 51706/2 |goto 21.35,56.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51527
accept Executioner Blackwell##51527 |goto Drustvar/0 30.88,18.39
|tip You will accept this quest automatically.
step
kill Executioner Blackwell##134213 |q 51527/1 |goto 30.88,18.39 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54449
accept Elemental Azerite##54449 |goto Drustvar/0 40.38,37.88
|tip You will accept this quest automatically.
step
Kill Azerite enemies around this area
click Azerite Chunk+
|tip They looke like yellow and blue fragments that appear on the ground while fighting an Enraged Azerite Elemental.
Acquire Azerite |q 54449/1 |goto 40.38,37.88 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54448
accept Elemental Azerite##54448 |goto Drustvar/0 40.38,37.88
|tip You will accept this quest automatically.
step
Kill Azerite enemies around this area
click Azerite Chunk+
|tip They looke like yellow and blue fragments that appear on the ground while fighting an Enraged Azerite Elemental.
Acquire Azerite |q 54448/1 |goto 40.38,37.88 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53867
accept Engineer Bolthold##53867 |goto Drustvar/0 28.51,43.42
|tip You will accept this quest automatically.
step
kill Shredatron-2000##145466
|tip He walks back and forth on the road around this area.
kill Engineer Bolthold##145465 |q 53867/1 |goto 28.51,43.42 |future
|tip He appears after you kill the Shredatron-2000.
|next "BFA_World_Quest_Emissaries"
step
label quest-51747
accept Early Warning##51747 |goto Drustvar/0 19.31,8.34
|tip You will accept this quest automatically.
stickystart "Burn_Alliance_Supplies_51747"
stickystart "Kill_Alliance_Forces_51747"
step
Enter the cave |goto 19.31,8.34 < 10 |walk
kill Amaeas Starbough##138791 |q 51747/3 |goto 19.04,8.36 |future
|tip Inside the cave.
step
label "Burn_Alliance_Supplies_51747"
click Alliance Supplies##291040+
|tip They look like stacks of wooden crates and barrels on the ground around this area.
Burn #10# Alliance Supplies |q 51747/1 |goto 19.80,8.94 |future
step
label "Kill_Alliance_Forces_51747"
Kill enemies around this area
Kill #9# Alliance Forces |q 51747/2 |goto 19.80,8.94 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51919
accept Emily Mayville##51919 |goto Drustvar/0 63.41,40.10
|tip You will accept this quest automatically.
step
talk Emily Mayville##129995
Ask her _"Why are you crying?"_
kill Emily Mayville##129995 |q 51919/1 |goto 63.41,40.10 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54506
accept Fungal Infestation##54506 |goto Drustvar/0 30.03,40.03
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Slain Infantryman##148252+
clicknpc Slain Grunt##148210+
|tip They look like yellow-glowing mushrooms growing out of corpses on the ground around this area.
Despoil the Teller Farm |q 54506/1 |goto 30.03,40.03 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54507
accept Fungal Infestation##54507 |goto Drustvar/0 30.03,40.03
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Slain Infantryman##148252+
clicknpc Slain Grunt##148210+
|tip They look like yellow-glowing mushrooms growing out of corpses on the ground around this area.
Cleanse the Teller Farm |q 54507/1 |goto 30.03,40.03 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51887
accept Fungi Trio##51887 |goto Drustvar/0 24.18,21.90
|tip You will accept this quest automatically.
step
Enter the cave |goto 24.18,21.90 < 10 |walk
kill Mack##138866 |q 51887/1 |goto 24.50,22.02 |future
kill Mick##138870 |q 51887/2 |goto 24.50,22.02 |future
kill Ernie##138871 |q 51887/3 |goto 24.50,22.02 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51761
accept Familiar Foes##51761 |goto Drustvar/0 58.09,28.01
|tip You will accept this quest automatically.
stickystart "Burn_Bloody_Banners_51761"
stickystart "Kill_Enthralled_Wildlife_51761"
step
click Lesser Effigy##290612+
|tip They look like totems with antlers on top of them on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #4# Lesser Effigies |q 51761/1 |goto 58.09,28.01 |future
step
label "Burn_Bloody_Banners_51761"
click Bloody Banner##302779+
|tip They look like white banners with red writing on them on the ground around this area.
Burn #5# Bloody Banners |q 51761/3 |goto 58.09,28.01 |future
step
label "Kill_Enthralled_Wildlife_51761"
Kill enemies around this area
Slay #10# Enthralled Wildlife |q 51761/2 |goto 58.09,28.01 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51588
accept Familiar Foes##51588 |goto Drustvar/0 58.09,28.01
|tip You will accept this quest automatically.
stickystart "Burn_Bloody_Banners_51588"
stickystart "Kill_Enthralled_Wildlife_51588"
step
click Lesser Effigy##290612+
|tip They look like totems with antlers on top of them on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #4# Lesser Effigies |q 51588/1 |goto 58.09,28.01 |future
step
label "Burn_Bloody_Banners_51588"
click Bloody Banner##302779+
|tip They look like white banners with red writing on them on the ground around this area.
Burn #5# Bloody Banners |q 51588/3 |goto 58.09,28.01 |future
step
label "Kill_Enthralled_Wildlife_51588"
Kill enemies around this area
Slay #10# Enthralled Wildlife |q 51588/2 |goto 58.09,28.01 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51616
accept A Final Rest##51616 |goto Drustvar/0 61.25,47.22
|tip You will accept this quest automatically.
stickystart "Kill_Enraged_Spirits_51616"
stickystart "Kill_Soulgorged_Gravestalkers_51616"
step
clicknpc Lost Soul##138320+
|tip They look like friendly crying ghost people on the ground around this area.
Release #5# Lost Souls |q 51616/3 |goto 61.25,47.22 |future
step
label "Kill_Enraged_Spirits_51616"
kill 5 Enraged Spirit##126264 |q 51616/1 |goto 61.25,47.22 |future
step
label "Kill_Soulgorged_Gravestalkers_51616"
kill 3 Soulgorged Gravestalker##126263 |q 51616/2 |goto 61.25,47.22 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53270
accept Flourishing Riverbud##53270 |goto Drustvar/0 59.88,53.00
|tip You will accept this quest automatically.
step
click Flourishing Riverbud##297606+
|tip They look like curly green plants along the riverbed around this area.
|tip They appear on your minimap as yellow dots.
collect 10 Flourishing Riverbud##163595 |q 53270/1 |goto 59.88,53.00 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53266
accept Flourishing Sea Stalks##53266 |goto Drustvar/0 66.18,40.05
|tip You will accept this quest automatically.
step
click Flourishing Sea Stalk##297612+
|tip They look like tall plants along the shore around this area.
collect Flourishing Sea Stalk##163588 |q 53266/1 |goto 66.18,40.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51658
accept Fly the Coop!##51658 |goto Drustvar/0 31.86,24.43
|tip You will accept this quest automatically.
step
kill Hexthralled Falconer##133736+
collect Falconer's Key##157840+ |n
click Falcon Cage##290746+
|tip They look like dark metal bird cages sitting on objects and on the ground around this area.
Open #5# Falcon Cages |q 51658/1 |goto 31.86,24.43 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51719
accept A Glaive Mistake##51719 |goto Drustvar/0 50.80,36.36
|tip She walks along this road around this area with 2 guards with her.
|tip You will accept this quest automatically when you get near her.
stickystart "Slay_Sentinel_Escorts_51719"
step
kill Kerie Shadeswift##138732 |q 51719/1 |goto 50.80,36.36 |future
|tip She walks along this road with 2 guards, between here and Arom's Stand.
step
label "Slay_Sentinel_Escorts_51719"
kill Darnassus Sentinel##138752+
|tip They walk with Kerie Shadeswift.
Slay #2# Sentinel Escorts |q 51719/2 |goto 50.80,36.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53311
accept Gleaming Storm Silver##53311 |goto Drustvar/0 58.09,66.85
|tip You will accept this quest automatically.
|polish
step
click Gleaming Storm Silver Deposit##297469
collect 1 Gleaming Storm Silver##163623 |q 53311/1 |goto 58.09,66.85 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51507
accept Gorehorn##51507 |goto Drustvar/0 57.12,44.30
|tip You will accept this quest automatically.
step
kill Gorehorn##129835 |q 51507/1 |goto 57.12,44.30 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51874
accept Gorged Boar##51874 |goto 28.00,25.96
|tip You will accept this quest automatically.
step
kill Gorged Boar##138675 |q 51874/1 |goto 28.00,25.96 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51909
Follow the path up |goto Drustvar/0 57.94,20.25 < 15 |only if walking
Follow the path |goto Drustvar/0 56.96,24.43 < 20 |only if walking
Follow the path |goto Drustvar/0 54.20,26.24 < 20 |only if walking
Follow the path up |goto Drustvar/0 52.13,23.74 < 20 |only if walking
Follow the path up |goto Drustvar/0 50.64,21.57 < 15 |only if walking
accept Grozgore##51909 |goto Drustvar/0 50.34,20.64
|tip You will accept this quest automatically.
step
kill Grozgore##127129 |q 51909/1 |goto 50.34,20.64 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51764
accept Hunters Hunted##51764 |goto Drustvar/0 54.48,45.01
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Bewitching Fetish+
|tip They look like statues with antlered skull heads on the ground around this area.
click Disturbing Charm+
|tip They look like wood and bone ornaments hanging from trees around this area.
Purge the Woods |q 51764/1 |goto 54.48,45.01 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51740
accept Hunting for Truffle Hunters##51740 |goto Drustvar/0 25.67,41.51
|tip You will accept this quest automatically.
stickystart "Slay_Funggarians_51740"
step
clicknpc Lost Piglet##138610+
|tip They look like tiny pigs on the ground around this area.
Save #5# Lost Piglets |q 51740/2 |goto 25.67,41.51 |future
step
label "Slay_Funggarians_51740"
Kill Bloodbough enemies around this area
Slay #8# Funggarians |q 51740/1 |goto 25.67,41.51 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51884
accept Haywire Golem##51884 |goto Drustvar/0 23.97,30.48
|tip You will accept this quest automatically.
step
kill Haywire Golem##138618 |q 51884/1 |goto 23.97,30.48 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-51467
accept Hyo'gi##51467 |goto Drustvar/0 22.93,49.48
|tip You will accept this quest automatically.
step
kill Hyo'gi##134754 |q 51467/1 |goto 22.93,49.48 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51604
accept Hunters Hunted##51604 |goto Drustvar/0 54.48,45.01
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Bewitching Fetish+
|tip They look like statues with antlered skull heads on the ground around this area.
click Disturbing Charm+
|tip They look like wood and bone ornaments hanging from trees around this area.
Purge the Woods |q 51604/1 |goto 54.48,45.01 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51697
accept Hunting for Truffle Hunters##51697 |goto Drustvar/0 25.67,41.51
|tip You will accept this quest automatically.
stickystart "Slay_Funggarians_51697"
step
clicknpc Lost Piglet##138610+
|tip They look like tiny pigs on the ground around this area.
Save #5# Lost Piglets |q 51697/2 |goto 25.67,41.51 |future
step
label "Slay_Funggarians_51697"
Kill Bloodbough enemies around this area
Slay #8# Funggarians |q 51697/1 |goto 25.67,41.51 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54688
accept Inquisitor Erik##54688 |goto Drustvar/0 27.82,33.41
|tip You will accept this quest automatically.
step
kill Inquisitor Erik##148717 |q 54688/1 |goto 27.82,33.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51742
accept Intercepting the Irontide##51742 |goto Drustvar/0 28.38,14.07
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Pirate Grog+
|tip They look like glass bottles with grey liquid in them sitting on objects and on the ground around this area.
click Plundered Supplies+
|tip They look like small wooden chests on the ground around this area.
click Outlaw Cannon+
|tip They look like grey metal cannons on the deck of the ships in the water around this area.
Drive Back the Irontide |q 51742/1 |goto 28.38,14.07 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51693
accept Intercepting the Irontide##51693 |goto Drustvar/0 28.38,14.07
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Pirate Grog+
|tip They look like glass bottles with grey liquid in them sitting on objects and on the ground around this area.
click Plundered Supplies+
|tip They look like small wooden chests on the ground around this area.
click Outlaw Cannon+
|tip They look like grey metal cannons on the deck of the ships in the water around this area.
Drive Back the Irontide |q 51693/1 |goto 28.38,14.07 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54689
accept Lights Out##54689 |goto Drustvar/0 31.83,43.25
|tip You will accept this quest automatically.
|polish
step
click Mask of Impending Doom
Use the Mask of Endless Doom |q 54689/1 |goto 31.83,43.25 |future
step
Breach the Arom's Stand Defenses |q 54689/2 |goto 33.31,46.15 |future
|tip Use the "Release the Doomsoul!" ability on your action bar.
|tip Guide the Doomsoul to enemies and objects and then use the "Doomsoul Explosion" ability on your action bar.
step
Doom Commander Dunuura |q 54689/3 |goto 36.60,48.88 |future
|tip Use the "Release the Doomsoul!" ability on your action bar.
|tip Guide the Doomsoul to Commander Dunuura and use the "Doomsoul Explosion" ability on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-51972
Follow the path up |goto Drustvar/0 61.79,68.11 < 20 |only if walking
accept Lost Goat##51972 |goto Drustvar/0 63.03,69.65
|tip You will accept this quest automatically.
step
talk Lost Goat##127979
Tell it _"Dumb goat. Let's go before you get eaten by monsters."_
kill Gluttonous Yeti##127844 |q 51972/1 |goto 63.03,69.65 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54690
accept Maddok the Sniper##54690 |goto Drustvar/0 35.14,32.10
|tip You will accept this quest automatically.
step
Follow the path up |goto 35.14,32.10 < 20 |only if walking
kill Maddok the Sniper##148723 |q 54690/1 |goto 34.85,33.11 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54686
accept Medical Emergency##54686 |goto Drustvar/0 31.77,41.58
|tip You will accept this quest automatically.
step
kill Doctor Lazane##148695 |q 54686/1 |goto 31.77,41.58 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54692
accept Magister Crystalynn##54692 |goto Drustvar/0 39.69,34.65
|tip You will accept this quest automatically.
step
Follow the path up |goto 39.69,34.65 < 20 |only if walking
kill Magister Crystalynn##148739 |q 54692/1 |goto 39.48,32.65 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51743
accept More Valuable Than Gold##51743 |goto Drustvar/0 35.06,30.43
|tip You will accept this quest automatically.
stickystart "Slay_Bilefang_Hunters_51743"
step
click Silver Nugget##290975+
|tip They look like small pieces of silver on the ground around this area.
collect 6 Silver Nugget##160577 |q 51743/1 |goto 35.06,30.43 |future
step
label "Slay_Bilefang_Hunters_51743"
Kill Bliefang enemies around this area
Slay #8# Bilefang Hunters |q 51743/2 |goto 35.06,30.43 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51433
accept Matron Morana##51433 |goto Drustvar/0 34.84,19.87
|tip You will accept this quest automatically.
step
kill Matron Morana##137704 |q 51433/1 |goto 34.84,19.87 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54650
accept Muk'luk##54650 |goto Drustvar/0 33.72,37.51
|tip You will accept this quest automatically.
step
kill Goblin Beast Wrangler##148163+
|tip There are 2 of them holding ropes on Muk'luk.
|tip Kill them to be able to attack Muk'luk.
kill Muk'luk##148155 |q 54650/1 |goto 33.72,37.51 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51707
accept More Valuable Than Gold##51707 |goto Drustvar/0 35.06,30.43
|tip You will accept this quest automatically.
stickystart "Slay_Bilefang_Hunters_51707"
step
click Silver Nugget##290975+
|tip They look like small pieces of silver on the ground around this area.
collect 6 Silver Nugget##160577 |q 51707/1 |goto 35.06,30.43 |future
step
label "Slay_Bilefang_Hunters_51707"
Kill Bliefang enemies around this area
Slay #8# Bilefang Hunters |q 51707/2 |goto 35.06,30.43 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53963
accept Naga Attack!##53963 |goto Drustvar/0 64.07,29.31
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Naga War Supplies+
|tip They look like racks of weapons and crates the ground around this area.
click Naga War Banner+
|tip They look like tall posts with flags on them on the ground around this area.
click Naga Cage+
|tip They look like large crude cages with prisoners inside on the ground around this area.
Repel the Naga Invaders |q 53963/1 |goto 64.07,29.31 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54287
accept Naga Attack!##54287 |goto Vol'dun/0 28.60,46.68
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area
click Naga War Supplies+
|tip They look like racks of weapons and crates the ground around this area.
click Naga War Banner+
|tip They look like tall posts with flags on them on the ground around this area.
click Naga Cage+
|tip They look like large crude cages with prisoners inside on the ground around this area.
Repel the Naga Invaders |q 54287/1 |goto 28.60,46.68 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53979
accept Naga Attack!##53979 |goto Drustvar/0 69.66,61.76
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Naga War Supplies+
|tip They look like racks of weapons and crates the ground around this area.
click Naga War Banner+
|tip They look like tall posts with flags on them on the ground around this area.
click Naga Cage+
|tip They look like large crude cages with prisoners inside on the ground around this area.
Repel the Naga Invaders |q 53979/1 |goto 69.66,61.76 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51768
accept Natural Resources##51768 |goto Drustvar/0 67.91,40.76
|tip You will accept this quest automatically.
stickystart "Collect_Intact_Venom_Glands_51768"
stickystart "Collect_Pristine_Quilrat_Quills_51768"
step
clicknpc Questionable Tuber##138356+
|tip They look like small bushes on the ground around this area.
|tip After clicking them, run away from them.
Collect #5# Questionable Tubers |q 51768/1 |goto 67.91,40.76 |future
step
label "Collect_Intact_Venom_Glands_51768"
kill Shallows Saurolisk##125452+
collect 5 Intact Venom Gland##151935 |q 51768/2 |goto 69.31,40.02 |future
step
label "Collect_Pristine_Quilrat_Quills_51768"
kill Invasive Quillrat##125401+
collect 3 Pristine Quillrat Quill##160516 |q 51768/3 |goto 67.91,40.76 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51620
accept Natural Resources##51620 |goto Drustvar/0 67.91,40.76
|tip You will accept this quest automatically.
stickystart "Collect_Intact_Venom_Glands_51620"
stickystart "Collect_Pristine_Quilrat_Quills_51620"
step
clicknpc Questionable Tuber##138356+
|tip They look like small bushes on the ground around this area.
|tip After clicking them, run away from them.
Collect #5# Questionable Tubers |q 51620/1 |goto 67.91,40.76 |future
step
label "Collect_Intact_Venom_Glands_51620"
kill Shallows Saurolisk##125452+
collect 5 Intact Venom Gland##151935 |q 51620/2 |goto 69.31,40.02 |future
step
label "Collect_Pristine_Quilrat_Quills_51620"
kill Invasive Quillrat##125401+
collect 3 Pristine Quillrat Quill##160516 |q 51620/3 |goto 67.91,40.76 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51908
accept Nevermore##51908 |goto Drustvar/0 59.80,45.17
|tip You will accept this quest automatically.
step
kill Nevermore##130138 |q 51908/1 |goto 59.95,45.48 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52218
accept Night Horrors##52218 |goto Drustvar/0 63.60,59.70
|tip You will accept this quest automatically.
step
talk Dilbert McClint##140461
Tell him _"Begin pet battle."_
Defeat Dilbert McClint |q 52218/1 |goto 63.60,59.70 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54089
accept Omgar Doombow##54089 |goto Drustvar/0 31.80,33.05
|tip You will accept this quest automatically.
step
kill Omgar Doombow##146607 |q 54089/1 |goto 31.80,33.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51454
Follow the path up |goto Drustvar/0 39.91,53.00 < 20 |only if walking
accept Once More Into Battle##51454 |goto Drustvar/0 38.55,56.80
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Weary Spirit##137788+
|tip They look like kneeling ghosts on the ground around this area.
click Ancient Cairne##289662+
|tip They look like big rocks on the ground around this area.
Join In the Endless Battle |q 51454/1 |goto 38.21,59.18 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53274
accept Overgrown Anchor Weed##53274 |goto Drustvar/0 37.57,64.88
|tip You will accept this quest automatically.
step
click Overgrown Anchor Weed##297616
collect Overgrown Anchor Weed##163601 |q 53274/1 |goto 37.57,64.88 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54666
accept Packmaster Swiftarrow##54666 |goto Drustvar/0 43.82,38.36
|tip You will accept this quest automatically.
step
kill Packmaster Swiftarrow##148648 |q 54666/1 |goto 43.82,38.36 |future
|tip He walks back and forth on the road around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54472
accept Plowing the Field##54472 |goto Drustvar/0 34.07,48.55
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Wounded Infantryman##148129+
|tip They look like Alliance soldiers laying on the ground around this area.
Slay #12# Alliance Soldiers |q 54472/1 |goto 34.07,48.55 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51505
accept Quillrat Matriarch##51505 |goto Drustvar/0 66.58,42.73
|tip You will accept this quest automatically.
step
kill Quillrat Matriarch##125453 |q 51505/1 |goto 66.58,42.73 |future
|tip Inside the tent.
|next "BFA_World_Quest_Emissaries"
step
label quest-51585
accept Quit Your Witchin'##51585 |goto Drustvar/0 56.40,34.44
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Tainted Pig Feed##277380+
|tip They look like green glowing sacks on the ground around this area.
click Blightfly Swarm+
|tip They look like groups of a bunch of insects flying around this area.
click Cursed Charm+
|tip They look like wooden dreamcatchers hanging around this area.
Cleanse Fallhaven |q 51585/1 |goto 56.40,34.44 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52278
accept Rogue Azerite##52278 |goto Drustvar/0 38.15,38.60
|tip You will accept this quest automatically.
step
talk Fizzie Sparkwhistle##140813
Tell him _"Begin pet battle."_
Defeat Fizzie Sparkwhistle |q 52278/1 |goto 38.15,38.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51897
Enter the cave |goto Drustvar/0 59.78,70.04 < 15 |walk
accept Rimestone##51897 |goto Drustvar/0 59.63,70.70
|tip You will accept this quest automatically.
step
kill Rimestone##128707 |q 51897/1 |goto 59.62,71.82 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51739
accept Rise of the Yetis##51739 |goto Drustvar/0 44.68,35.98
|tip You will accept this quest automatically.
stickystart "Kill_Chillfur_Yetis_51739"
stickystart "Kill_Awakened_Dead_51739"
step
click Lost Supplies##302770+
|tip They look like groups of 3 tan bags on the ground around this area.
collect 5 Lost Supplies##164309 |q 51739/3 |goto 44.94,30.47 |future
step
label "Kill_Awakened_Dead_51739"
kill 4 Awakened Dead##136490 |q 51739/2 |goto 44.68,35.98 |future
step
label "Kill_Chillfur_Yetis_51739"
kill 6 Chillfur Yeti##127682 |q 51739/1 |goto 44.41,32.47 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51710
accept Rise of the Yetis##51710 |goto Drustvar/0 44.68,35.98
|tip You will accept this quest automatically.
stickystart "Kill_Chillfur_Yetis_51710"
stickystart "Kill_Awakened_Dead_51710"
step
click Lost Supplies##302770+
|tip They look like groups of 3 tan bags on the ground around this area.
collect 5 Lost Supplies##164309 |q 51710/3 |goto 44.94,30.47 |future
step
label "Kill_Awakened_Dead_51710"
kill 4 Awakened Dead##136490 |q 51710/2 |goto 44.68,35.98 |future
step
label "Kill_Chillfur_Yetis_51710"
kill 6 Chillfur Yeti##127682 |q 51710/1 |goto 44.41,32.47 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51727
accept A Shot at the Dark Iron##51727 |goto Drustvar/0 34.21,46.70
|tip You will accept this quest automatically.
|tip He walks along this road around this area.
stickystart "Kill_Shadowforge_Miners_51727"
step
kill Overseer Forgeaxe##138765 |q 51727/2 |goto 34.21,46.70 |future
|tip He walks along this road around this area.
|tip He has two bodyguards with him.
step
label "Kill_Shadowforge_Miners_51727"
kill 2 Shadowforge Miner##138768 |q 51727/1 |goto 34.21,46.70 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51906
accept Sister Martha##51906 |goto Drustvar/0 33.00,57.16
|tip You will accept this quest automatically.
step
kill Sister Martha##138863 |q 51906/1 |goto 33.00,57.16 |future
|tip Inside the building.
|next "BFA_World_Quest_Emissaries"
step
label quest-51746
accept The Shadows of Corlain##51746 |goto Drustvar/0 30.95,21.70
|tip You will accept this quest automatically.
stickystart "Slay_Witches_51746"
step
click Dark Fissure##290822+
|tip They look like vertical blue streams of smoke rising out of black symbols on the ground around this area.
|tip They will appear on your minimap as yellow dots.
kill 8 Blighted Echo##138543 |q 51746/1 |goto 31.85,17.07 |future
step
label "Slay_Witches_51746"
Kill enemies around this area
Slay #8# Witches |q 51746/2 |goto 31.85,17.07 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51745
accept A Smelly Solution##51745 |goto Drustvar/0 29.26,27.31
|tip You will accept this quest automatically.
step
use the Pungent Onion##160557
|tip Use it on Cursed Gyrfalcons around this area.
|tip They are flying in the air around this area.
Hit #8# Cursed Gyrfalcons |q 51745/1 |goto 29.26,27.31 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-49397
accept Sausage Party##49397 |goto Drustvar/0 64.20,29.34
|tip You will accept this quest automatically.
stickystart "Rescue_Transformed_Workers_49397"
stickystart "Kill_Hexed_Howler_49397"
step
click Witch Effigy##290810+
|tip They look like burning banners with antlers on top of them on the ground around this area.
Destroy #5# Effigies |q 49397/3 |goto 64.20,29.34 |future
step
label "Rescue_Transformed_Workers_49397"
clicknpc Transformed Worker##137859
|tip They look like white pigs tied to small posts on the ground around this area.
Rescue #6# Transformed Workers |q 49397/1 |goto 64.20,29.34 |future
step
label "Kill_Hexed_Howler_49397"
kill 8 Hexed Howler##124814 |q 49397/2 |goto 64.20,29.34 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51690
accept The Shadows of Corlain##51690 |goto Drustvar/0 30.95,21.70
|tip You will accept this quest automatically.
stickystart "Slay_Witches_51690"
step
click Dark Fissure##290822+
|tip They look like vertical blue streams of smoke rising out of black symbols on the ground around this area.
|tip They will appear on your minimap as yellow dots.
kill 8 Blighted Echo##138543 |q 51690/1 |goto 31.85,17.07 |future
step
label "Slay_Witches_51690"
Kill enemies around this area
Slay #8# Witches |q 51690/2 |goto 31.85,17.07 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51625
accept Shell Game##51625 |goto Drustvar/0 21.80,22.32
|tip You will accept this quest automatically.
step
talk Collector Kojo##138476
Tell him _"I am ready."_
Speak to Collector Kojo |q 51625/1 |goto 21.80,22.32 |future
step
click Shell+
|tip Click the shells to reveal objects.
|tip Match the objects in pairs.
Complete Collector Kojo's Shell Game |q 51625/2 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51683
accept Slash and Burn Tactics##51683 |goto Drustvar/0 71.22,58.85
|tip You will accept this quest automatically.
stickystart "Burn_Witch_Banners_51683"
stickystart "Kill_Curseformed_Familiars_51683"
step
clicknpc Frightened Woodsman##138525+
|tip They look like humangs cowering on the ground around this area.
Rally #6# Frightened Woodsmen |q 51683/1 |goto 71.22,58.85 |future
step
label "Burn_Witch_Banners_51683"
click Witch Effigy+
|tip They look like white flags with red painted symbols on them hanging from gnarled wooden stands on the ground around this area.
Burn #8# Witch Banners |q 51683/3 |goto 71.22,58.85 |future
step
label "Kill_Curseformed_Familiars_51683"
kill 8 Curseformed Familiar##126151 |q 51683/2 |goto 71.22,58.85 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51687
accept A Smelly Solution##51687 |goto Drustvar/0 29.26,27.31
|tip You will accept this quest automatically.
step
use the Pungent Onion##160557
|tip Use it on Cursed Gyrfalcons around this area.
|tip They are flying in the air around this area.
Hit #8# Cursed Gyrfalcons |q 51687/1 |goto 29.26,27.31 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51431
accept Soul Goliath##51431 |goto Drustvar/0 27.31,54.94
|tip You will accept this quest automatically when you are near him.
|tip He walks along the roads around this area.
|tip Wait here for him to spawn, or you can search for him.
step
kill Soul Goliath##137665 |q 51431/1 |goto 27.31,54.94 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51434
accept Stone Golem##51434 |goto Drustvar/0 49.81,43.70
|tip You will accept this quest automatically.
step
kill Stone Golem##137708 |q 51434/1 |goto 49.81,43.70 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52381
collect 20 Lane Snapper##152546 |q 52381/1 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Lane Snapper##52381 |goto Drustvar/0 37.91,48.94
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Supplies Needed: Lane Snapper##52381 |goto 37.91,48.94
|next "BFA_World_Quest_Emissaries"
step
label quest-54471
accept Tend the Wounded##54471 |goto Drustvar/0 34.15,48.20
|tip You will accept this quest automatically.
stickystart "Slay_Horde_Soldiers_54471"
step
clicknpc Wounded Infantryman##148129+
|tip They look like Alliance soldiers laying on the ground around this area.
Bandage #6# Wounded Footmen |q 54471/1 |goto 34.15,48.20 |future
step
label "Slay_Horde_Soldiers_54471"
Kill enemies around this area
Slay #8# Horde Soldiers |q 54471/2 |goto 34.15,48.20 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54187
accept Tea for Two##54187 |goto Drustvar/0 58.17,47.91
|tip You will accept this quest automatically.
step
click Teapot
kill Conjured Horror##122673 |q 54187/1 |goto 58.17,47.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54190
accept Tea for Two##54190 |goto Drustvar/0 58.17,47.91
|tip You will accept this quest automatically.
step
click Teapot
kill Conjured Horror##122673 |q 54190/1 |goto 58.17,47.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51765
accept Tangled Webs##51765 |goto Drustvar/0 65.11,53.55
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Only enemies that look like spiders will count for this quest goal.
|tip You can walk over the tiny spiders to kill them.
kill Cocooned Victim##144215+
|tip They like large white eggs on the ground near trees around this area.
click Egg Sac##290754+
|tip They look like small white eggs on the ground near trees around this area.
Kill Spiders and Egg Sacs |q 51765/1 |goto 65.11,53.55 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51767
accept Trapline##51767 |goto Drustvar/0 68.20,44.90
|tip You will accept this quest automatically.
stickystart "Kill_Watchful_Ravens_51767"
stickystart "Kill_Darkmaw_Prowlers_51767"
step
click Place Trap##290718+
|tip They look like yellow glowing bear traps on the ground around this area.
Place #6# Traps |q 51767/3 |goto 68.20,44.90 |future
step
label "Kill_Watchful_Ravens_51767"
kill 4 Watchful Raven##125411 |q 51767/1 |goto 68.20,44.90 |future
step
label "Kill_Darkmaw_Prowlers_51767"
kill 6 Darkmaw Prowler##125464 |q 51767/2 |goto 68.20,44.90 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51529
accept Talon##51529 |goto Drustvar/0 31.71,40.61
|tip You will accept this quest automatically.
step
kill Talon##129950 |q 51529/1 |goto 31.93,40.63 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51672
accept Tangled Webs##51672 |goto Drustvar/0 65.11,53.55
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Only enemies that look like spiders will count for this quest goal.
|tip You can walk over the tiny spiders to kill them.
kill Cocooned Victim##144215+
|tip They like large white eggs on the ground near trees around this area.
click Egg Sac##290754+
|tip They look like large white eggs on the ground near trees around this area.
Kill Spiders and Egg Sacs |q 51672/1 |goto 65.11,53.55 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51667
accept This Bird You Cannot Change##51667 |goto Drustvar/0 31.85,24.67
|tip You will accept this quest automatically.
step
use the Falconer's Whistle##157845
|tip Use the ability on your action bar on Wicker Charms around this area.
|tip They look like dreamcatcher objects hanging from the buildings around this area.
Destroy #7# Wicker Charms |q 51667/1 |goto 31.85,24.67 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51619
accept Trapline##51619 |goto Drustvar/0 68.20,44.90
|tip You will accept this quest automatically.
stickystart "Kill_Watchful_Ravens_51619"
stickystart "Kill_Darkmaw_Prowlers_51619"
step
click Place Trap##290718+
|tip They look like yellow glowing bear traps on the ground around this area.
Place #6# Traps |q 51619/3 |goto 68.20,44.90 |future
step
label "Kill_Watchful_Ravens_51619"
kill 4 Watchful Raven##125411 |q 51619/1 |goto 68.20,44.90 |future
step
label "Kill_Darkmaw_Prowlers_51619"
kill 6 Darkmaw Prowler##125464 |q 51619/2 |goto 68.20,44.90 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51397
accept Up In Your Drill##51397 |goto Drustvar/0 34.98,37.89
|tip You will accept this quest automatically.
step
clicknpc Goblin Mining Machine##137518
Commandeer the Mining Machine |q 51397/1 |goto 34.98,37.89 |future
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Drill the Horde |q 51397/2 |goto 37.07,36.79 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51508
accept Vicemaul##51508 |goto Drustvar/0 72.27,60.82
|tip You will accept this quest automatically.
step
click Untended Fishing Rod##127652
Reel in Vicemaul |q 51508/1 |goto 72.84,60.49 |future
step
kill Vicemaul##127651 |q 51508/2 |goto 72.84,60.49 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54011
accept Wet Work: Arom's Stand##54011 |goto Drustvar/0 39.67,48.01
|tip You will accept this quest automatically.
step
talk Shadow Hunter Scout##147381
Speak with a Shadow Hunter Scout |q 54011/1 |goto 39.67,48.01 |future
step
talk Shadow Hunter Scout##147381
Tell him _"I am ready."_
Gain the Infiltrating Buff |havebuff 132320 |goto 39.67,48.01 |q 54011 |future
step
kill Field Marshal Yosk##146943
|tip She may be in a different location around this area.
|tip Avoid the blue circles on the ground around enemies.
Slay the Target |q 54011/2 |goto 39.24,52.39 |future
step
Gain the Infiltrating Buff |havebuff 132320
|tip Use the "Smoke Bomb" ability.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-51213
accept Waycrest Manor: No need to Hag-gle##51213 |goto Waycrest Manor/0 51.66,87.43
|tip Use the Group Finder to enter the "Waycrest Manor" dungeon.
|tip You will accept this quest automatically.
step
kill Matron Christiane##134112 |q 51213/1 |goto Waycrest Manor/3 51.22,28.84 |future
|tip Next to Lord Waycrest, the fourth boss in the dungeon.
step
kill Gorak Tul##131864 |q 51213/2 |goto Waycrest Manor/4 57.39,26.04 |future
|tip He is the final boss inside the dungeon.
|next "BFA_World_Quest_Emissaries"
step
label quest-51216
accept Waycrest Manor: No need to Hag-gle##51216 |goto Waycrest Manor/0 51.66,87.43
|tip Use the Group Finder to enter the "Waycrest Manor" dungeon.
|tip You will accept this quest automatically.
step
kill Corvus##136945 |q 51216/1 |goto Waycrest Manor/1 22.81,33.79 |future
|tip Upstairs on the west side of the dungeon.
step
kill Gorak Tul##131864 |q 51216/2 |goto Waycrest Manor/4 57.39,26.04 |future
|tip He is the final boss inside the dungeon.
|next "BFA_World_Quest_Emissaries"
step
label quest-51212
accept Waycrest Manor: Witchy Kitchen##51212 |goto Waycrest Manor/0 51.66,87.43
|tip Use the Group Finder to enter the "Waycrest Manor" dungeon.
|tip You will accept this quest automatically.
stickystart "Kill_Roast_Chef_Rhonda"
stickystart "Kill_Sauciere_Samuel"
step
kill Executive Chef Daniel##131601 |q 51212/1 |goto 65.28,26.88 |future
|tip In the room north of the Banquet Hall right after Raal the Gluttonous.
step
label "Kill_Roast_Chef_Rhonda"
kill Roast Chef Rhonda##131611 |q 51212/2 |goto 65.28,26.88 |future
|tip In the room north of the Banquet Hall right after Raal the Gluttonous.
step
label "Kill_Sauciere_Samuel"
kill Sauciere Samuel##131607 |q 51212/3 |goto 65.28,26.88 |future
|tip In the room north of the Banquet Hall right after Raal the Gluttonous.
step
kill Gorak Tul##131864 |q 51212/4 |goto Waycrest Manor/4 57.39,26.04 |future
|tip He is the final boss inside the dungeon.
|next "BFA_World_Quest_Emissaries"
step
label quest-52424
collect 5 Battle Flag: Rallying Swiftness##154705 |q 52424/1 |future
|tip Create them with Tailoring or purchase them from the Auction House.
step
accept Work Order: Battle Flag: Rallying Swiftness##52424 |goto Drustvar/0 37.90,49.00
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Battle Flag: Rallying Swiftness##52424 |goto 37.90,49.00
|next "BFA_World_Quest_Emissaries"
step
label quest-52365
collect 5 Battle Flag: Rallying Swiftness##153490 |q 52365/1 |future
|tip Create them with Tailoring or purchase them from the Auction House.
step
accept Work Order: F.R.I.E.D.##52365 |goto Drustvar/0 37.90,49.00
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: F.R.I.E.D.##52365 |goto 37.90,49.00
|next "BFA_World_Quest_Emissaries"
step
label quest-50991
collect 20 Blood-Stained Bone##154164 |q 50991/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Work Order: Blood-Stained Bone##50991 |goto Drustvar/0 37.90,49.00
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Blood-Stained Bone##50991 |goto 37.90,49.00
|next "BFA_World_Quest_Emissaries"
step
label quest-52414
collect 3 Drums of the Maelstrom##154167 |q 52414/1 |future
|tip Create them with Leatherworking or purchase them from the Auction House.
step
accept Work Order: Drums of the Maelstrom##52414 |goto Drustvar/0 37.90,49.00
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Drums of the Maelstrom##52414 |goto 37.90,49.00
|next "BFA_World_Quest_Emissaries"
step
label quest-52357
collect 3 Enchant Weapon - Quick Navigation##159786 |q 52357/1 |future
|tip Create them with Enchanting or purchase them from the Auction House.
step
accept Work Order: Enchant Weapon - Quick Navigation##52357 |goto Drustvar/0 37.90,49.00
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Enchant Weapon - Quick Navigation##52357 |goto 37.90,49.00
|next "BFA_World_Quest_Emissaries"
step
label quest-52407
collect 10 Golden Beryl##153700 |q 52407/1 |future
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
accept Work Order: Golden Beryl##52407 |goto Drustvar/0 37.90,49.00
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Golden Beryl##52407 |goto 37.90,49.00
|next "BFA_World_Quest_Emissaries"
step
label quest-50987
collect 20 Monelite Ore##152512 |q 50987/1 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Work Order: Monelite Ore##50987 |goto Drustvar/0 37.90,49.00
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Monelite Ore##50987 |goto 37.90,49.00
|next "BFA_World_Quest_Emissaries"
step
label quest-52334
collect 5 Potion of Concealment##152503 |q 52334/1 |future
|tip Create them with Alchemy or purchase them from the Auction House.
step
accept Work Order: Potion of Concealment##52334 |goto Drustvar/0 37.90,49.00
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Potion of Concealment##52334 |goto 37.90,49.00
|next "BFA_World_Quest_Emissaries"
step
label quest-52406
collect 10 Rubellite##153701 |q 52406/1 |future
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
accept Work Order: Rubellite##52406 |goto Drustvar/0 37.90,49.00
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Rubellite##52406 |goto 37.90,49.00
|next "BFA_World_Quest_Emissaries"
step
label quest-50986
collect 20 Sea Stalk##152511 |q 50986/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Sea Stalk##50986 |goto Drustvar/0 37.90,49.00
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Sea Stalk##50986 |goto 37.90,49.00
|next "BFA_World_Quest_Emissaries"
step
label quest-50985
collect 20 Siren's Pollen##152509 |q 50985/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Siren's Pollen##50985 |goto Drustvar/0 37.90,49.00
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Siren's Pollen##50985 |goto 37.90,49.00
|next "BFA_World_Quest_Emissaries"
step
label quest-50994
collect 15 Tempest Hide##154722 |q 50994/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Work Order: Tempest Hide##50994 |goto Drustvar/0 37.90,49.00
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Tempest Hide##50994 |goto 37.90,49.00
|next "BFA_World_Quest_Emissaries"
step
label quest-52364
collect 5 Thermo-Accelerated Plague Spreader##152509 |q 52364/1 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
accept Work Order: Thermo-Accelerated Plague Spreader##52364 |goto Drustvar/0 37.90,49.00
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Thermo-Accelerated Plague Spreader##52364 |goto 37.90,49.00
|next "BFA_World_Quest_Emissaries"
step
label quest-51769
accept What a Gull Wants##51769 |goto Drustvar/0 70.63,52.17
|tip You will accept this quest automatically.
stickystart "Collect_Mudfish_Innards_51769"
stickystart "Kill_Ravenous_Gulls_51769"
step
click Fishing Rod+
|tip They look like fishing poles propped up on the shore around this area.
Reel in #5# Fishing Rods |q 51769/3 |goto 70.95,53.18 |future
step
label "Collect_Mudfish_Innards_51769"
click Intact Mudfish##290775+
|tip They look like small dead fish on the ground around this area.
collect 9 Mudfish Innards##152845 |q 51769/2 |goto 70.63,52.17 |future
step
label "Kill_Ravenous_Gulls_51769"
kill 10 Ravenous Gull##127530 |q 51769/1 |goto 70.63,52.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51530
accept Wedding Crashers##51530 |goto Drustvar/0 24.65,14.39
|tip You will accept this quest automatically.
stickystart "Collect_Wedding_Gifts_51530"
stickystart "Slay_Invaders_51530"
step
clicknpc Terrified Guest##137909+
|tip They look like cowering humans on the ground around this area.
Rescue #12# Terrified Guests |q 51530/1 |goto 23.84,14.25 |future
step
label "Collect_Wedding_Gifts_51530"
click Wedding Gift##290133+
|tip They look like small white boxes with red ribbons tied around them on the ground around this area.
Collect #6# Wedding Gifts |q 51530/2 |goto 23.84,14.25 |future
step
label "Slay_Invaders_51530"
Kill enemies around this area
Slay #10# Invaders |q 51530/3 |goto 23.84,14.25 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51457
accept Whargarble the Ill-Tempered##51457 |goto Drustvar/0 64.98,21.37
|tip You will accept this quest automatically.
step
kill Whargarble the Ill-Tempered##128973 |q 51457/1 |goto 64.98,21.37 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-51676
accept What a Gull Wants##51676 |goto Drustvar/0 70.63,52.17
|tip You will accept this quest automatically.
stickystart "Collect_Mudfish_Innards_51676"
stickystart "Kill_Ravenous_Gulls_51676"
step
click Fishing Rod+
|tip They look like fishing poles propped up on the shore around this area.
Reel in #5# Fishing Rods |q 51676/3 |goto 70.95,53.18 |future
step
label "Collect_Mudfish_Innards_51676"
click Intact Mudfish##290775+
|tip They look like small dead fish on the ground around this area.
collect 9 Mudfish Innards##152845 |q 51676/2 |goto 70.63,52.17 |future
step
label "Kill_Ravenous_Gulls_51676"
kill 10 Ravenous Gull##127530 |q 51676/1 |goto 70.63,52.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52297
accept What's the Buzz?##52297 |goto Drustvar/0 61.06,17.71
|tip You will accept this quest automatically.
step
talk Michael Skarn##140880
Tell him _"Begin pet battle."_
Defeat Edwin Malus |q 52297/1 |goto 61.06,17.71 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51686
accept Where My Witches at?##51686 |goto Drustvar/0 69.93,60.39
|tip You will accept this quest automatically.
step
clicknpc Dormant Ravager##138532
Control the Dormant Ravager |q 51686/1 |goto 69.93,60.39 |future
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay Heartsbane Minions |q 51686/2 |goto 69.49,62.81 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51694
accept Which Witch?##51694 |goto Drustvar/0 37.88,50.37
|tip You will accept this quest automatically.
stickystart "Destroy_Heartsbane_Objects_51694"
step
use Lucille's Sewing Needle##160571
|tip Use it on Corlain Refugees around this area.
|tip Some of them will attack you.
Test #10# Corlain Refugees |q 51694/1 |goto 37.88,50.37 |future
step
label "Destroy_Heartsbane_Objects_51694"
click Heartsbane Object+
|tip They look like various objects with Heartsbane names on the ground, and hanging from trees and buildings around this area.
Destroy #10# Heartsbane Objects |q 51694/2 |goto 37.88,50.37 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51738
accept Witches by the Dozen##51738 |goto Drustvar/0 31.10,19.11
|tip You will accept this quest automatically.
stickystart "Slay_Witches_51738"
step
kill Heartsbane Disciple##134237+
|tip Attack the ones next to Blighted Horrors to be able to attack the Blighted Horrors.
kill 4 Blighted Horror##137568 |q 51738/1 |goto 31.10,19.11 |future
step
label "Slay_Witches_51738"
Kill enemies around this area
Slay #12# Witches |q 51738/2 |goto 31.10,19.11 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51988
accept Whitney "Steelclaw" Ramsay##51988 |goto Drustvar/0 29.34,63.89
|tip You will accept this quest automatically.
step
kill Whitney "Steelclaw" Ramsay##139322 |q 51988/1 |goto 29.50,64.10 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51682
accept Witches by the Dozen##51682 |goto Drustvar/0 31.10,19.11
|tip You will accept this quest automatically.
stickystart "Slay_Witches_51682"
step
kill Heartsbane Disciple##134237+
|tip Attack the ones next to Blighted Horrors to be able to attack the Blighted Horrors.
kill 4 Blighted Horror##137568 |q 51682/1 |goto 31.10,19.11 |future
step
label "Slay_Witches_51682"
Kill enemies around this area
Slay #12# Witches |q 51682/2 |goto 31.10,19.11 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52357
collect 3 Enchant Weapon - Quick Navigation##159786 |q 52357/1 |future
|tip Create them with Enchanting or purchase them from the Auction House.
|polish
step
accept Work Order: Enchant Weapon - Quick Navigation##52357 |goto Drustvar/0 37.91,48.94
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Enchant Weapon - Quick Navigation##52357 |goto 37.91,48.94
|next "BFA_World_Quest_Emissaries"
step
label quest-50987
collect 20 Monelite Ore##152512 |q 50987/1 |future
|tip Farm them with Mining or purchase them from the Auction House.
|polish
step
accept Work Order: Monelite Ore##50987 |goto Drustvar/0 37.91,48.94
|tip You will accept this quest automatically.
step
talk Quartermaster Alcorn##135815
turnin Work Order: Monelite Ore##50987 |goto 37.91,48.94
|next "BFA_World_Quest_Emissaries"
step
label quest-54488
accept Zul'aki the Headhunter##54488 |goto Drustvar/0 30.90,35.76
|tip You will accept this quest automatically.
step
kill Zul'aki the Headhunter##148146 |q 54488/1 |goto 30.90,35.76 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54711
accept Zillie Wunderwrench and Grizzwald##54711 |goto Drustvar/0 39.84,41.39
|tip You will accept this quest automatically.
step
kill Grizzwald##148860
|tip It looks like a mechanical spider that walks around this area.
kill Zillie Wunderwrench##148862 |q 54711/1 |goto 39.84,41.39 |future
|tip She appears after you kill Grizzwald.
|next "BFA_World_Quest_Emissaries"
step
label "BFA_World_Quest_Emissaries"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Nazmir World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Nazmir, Zandalar.",
condition_suggested=function() return level == 50 and completedq(51918) end,
condition_valid=function() return level >= 50 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=50.0,
worldquestzone=863,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-50570
accept Azerite Infused Elemental##50570 |goto Nazmir/0 54.07,81.09
|tip You will accept this quest automatically.
step
kill Azerite-Infused Elemental##134298 |q 50570/1 |goto 54.07,81.09 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-51064
accept Azerite Wounds##51064 |goto Nazmir/0 23.78,62.87
|tip You will accept this quest automatically.
step
Heal #5# Azeroth Wounds |q 51064/1 |goto 23.78,62.87 |future
|tip Use the "Heart of Azeroth" ability.
|tip Use it near the blue glowing spots with sparks flying out of them on the ground around this area.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-50718
accept Agent of Death##50718 |goto Nazmir/0 39.58,38.74
|tip You will accept this quest automatically.
step
Killl enemies around this area
clicknpc Powerless Hexguard##135280+
|tip They look like smal dark colored orbs with bue fire on them on the ground around this area.
Repel the Assault on the Necroplois |q 50718/1 |goto 39.58,38.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50549
accept Absolutely Barbaric##50549 |goto Nazmir/0 61.64,55.80
|tip You will accept this quest automatically.
step
Kill enemies around this area
Raze Zal'amak |q 50549/1 |goto 61.64,55.80 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51131
accept Absolutely Barbaric##51131 |goto Nazmir/0 61.64,55.80
|tip You will accept this quest automatically.
step
Kill enemies around this area
Raze Zal'amak |q 51131/1 |goto 61.64,55.80 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52803
accept Accidental Dread##52803 |goto Nazmir/0 43.02,38.86
|tip You will accept this quest automatically.
step
talk Korval Darkbeard##141814
Tell him _"Begin pet battle."_
Defeat Korval Darkbeard |q 52803/1 |goto 43.02,38.86 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50488
accept Ancient Jawbreaker##50488 |goto Nazmir/0 67.82,29.39
|tip You will accept this quest automatically.
step
kill Ancient Jawbreaker##125250 |q 50488/1 |goto 67.81,29.51 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54684
accept Arcanist Quintril##54684 |goto Nazmir/0 63.12,3.75
|tip You will accept this quest automatically.
step
kill Arcanist Quintril##148679 |q 54684/1 |goto 63.12,3.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54539
accept Azerite Assault##54539 |goto Nazmir/0 79.22,19.32
|tip You will accept this quest automatically.
step
click Unstable Azerite Flare
|tip It will give you a powerful combat buff.
Gather the Unstable Azerite Flare |havebuff spell:282604 |goto 79.22,19.32 |q 54539 |future
step
Kill enemies around this area
clicknpc 7th Legion Infantryman##145179+
|tip They look like Alliance soldiers around this area.
|tip They will help you fight.
Annihilate the Horde! |q 54539/1 |goto 79.22,19.32 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54538
accept Azerite Assault##54538 |goto Nazmir/0 79.22,19.32
|tip You will accept this quest automatically.
step
click Unstable Azerite Flare
|tip It will give you a powerful combat buff.
Gather the Unstable Azerite Flare |havebuff spell:282604 |goto 79.22,19.32 |q 54538 |future
step
Kill enemies around this area
clicknpc Honorbound Grunt##144958+
|tip They look like orc warriors around this area.
|tip They will help you fight.
Slaughter the Alliance! |q 54538/1 |goto 79.22,19.32 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52832
accept Azerite Empowerment##52832 |goto Nazmir/0 67.66,21.84
|tip You will accept this quest automatically.
step
Enter the cave |goto 67.66,21.84 < 10 |walk
kill Zebast the Everliving##141905 |q 52832/1 |goto 67.67,21.09 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-50564
accept Azerite Infused Slag##50564 |goto Nazmir/0 33.13,26.99
|tip You will accept this quest automatically.
step
kill Azerite-Infused Slag##134293 |q 50564/1 |goto 33.13,26.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51412
accept Azerite Empowerment##51412 |goto Nazmir/0 23.50,62.81
|tip You will accept this quest automatically.
step
kill Chaka the Infused##137663 |q 51412/1 |goto 23.50,62.81 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51415
accept Azerite Madness##51415 |goto Nazmir/0 23.09,64.00
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Heart of Azeroth" ability near their corpses.
|tip It appears as a button on the screen.
Absorb Azerite from Defeated Elementals |q 51415/1 |goto 23.09,64.00 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51411
accept Azerite Mining##51411 |goto Nazmir/0 23.09,64.00
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##136722+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##287086+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51411/1 |goto 23.09,64.00 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54664
accept Azerite Transport##54664 |goto Nazmir/0 81.29,26.99
|tip You will accept this quest automatically.
step
kill Caravan Leader##148642 |q 54664/1 |goto 81.29,26.99 |future
|tip He walks around this area on a horse.
step
click Azerite Chest
Secure the Azerite Shipment |q 54664/2 |goto 81.29,26.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52884
accept Azerite Wounds##52884 |goto Nazmir/0 26.64,80.19
|tip You will accept this quest automatically.
step
Heal #5# Azeroth Wounds |q 52884/1 |goto 26.64,80.19 |future
|tip Use the "Heart of Azeroth" ability.
|tip Use it near the blue glowing spots with sparks flying out of them on the ground around this area.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-54691
accept Brewmaster Lin##54691 |goto Nazmir/0 50.82,26.73
|tip You will accept this quest automatically.
step
kill Brewmaster Lin##148744 |q 54691/1 |goto 50.82,26.73 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50511
accept Bajiatha##50511 |goto Nazmir/0 42.83,60.53
|tip You will accept this quest automatically.
step
kill Bajiatha##126142 |q 50511/1 |goto 42.83,60.53 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54533
accept Barreling Through##54533 |goto Nazmir/0 68.65,7.26
|tip You will accept this quest automatically.
stickystart "Slay_Forsaken_Forces_54533"
step
click Blight Barrel+
|tip They look like wooden barrels with green smoke coming out of them on the ground around this area.
|tip Use the "Blight Barrel" ability on the Blightcaller's Solitude.
|tip It appears as a button on the screen.
|tip The Blightcaller's Solitude looks like a large ship.
|tip Aim for the side of the ship.
Blight the Blightcaller's Solitude #5# Times |q 54533/1 |goto 68.65,7.26 |future
step
label "Slay_Forsaken_Forces_54533"
Kill enemies around this area
Slay #12# Forsaken Forces |q 54533/2 |goto 68.48,8.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54534
accept The Blightest Touch##54534 |goto Nazmir/0 67.86,14.87
|tip You will accept this quest automatically.
stickystart "Slay_Alliance_Invaders_54534"
step
click Blight Barrel+
|tip They look like wooden barrels with green smoke coming out of them on the ground around this area.
|tip Use the "Blight Barrel" ability on the Ancient of War.
|tip It appears as a button on the screen.
Blight the Ancient of War #5# Times |q 54534/1 |goto 67.86,14.87 |future
step
label "Slay_Alliance_Invaders_54534"
Kill enemies around this area
Slay #12# Alliance Invaders |q 54534/2 |goto 68.48,8.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50572
accept Bloody Intrusion##50572 |goto Nazmir/0 46.79,78.05
|tip You will accept this quest automatically.
stickystart "Slay_Troll_Invaders_50572"
step
use the Ceremonial Torch##154724
|tip Use it on Zandalari Casualties on the ground around this area.
|tip They look like dead trolls on the ground around this area.
Burn #8# Troll Corpses |q 50572/1 |goto 46.79,78.05 |future
step
label "Slay_Troll_Invaders_50572"
Kill Blood Troll enemies around this area
Slay #10# Troll Invaders |q 50572/2 |goto 48.41,78.27 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53291
accept Blooming Star Moss##53291 |goto Nazmir/0 40.01,57.74
|tip You will accept this quest automatically.
|polish
step
click Blooming Star Moss##143403
Gather the Blooming Star Moss |q 53291/1 |goto 40.01,57.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50648
accept Bubbles and Trouble##50648 |goto Nazmir/0 32.60,54.97
|tip You will accept this quest automatically.
stickystart "Kill_Empowered_Worshippers_50648"
step
clicknpc Corruption Source##134583+
|tip They look like large red floating blood bubbles around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #3# Corruption Sources |q 50648/2 |goto 32.60,54.97 |future
step
label "Kill_Empowered_Worshippers_50648"
kill 12 Empowered Worshipper##127224 |q 50648/1 |goto 32.60,54.97 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50735
accept Burial Detail##50735 |goto Nazmir/0 45.85,47.39
|tip You will accept this quest automatically.
stickystart "Slay_Craven_Spirits_50735"
step
clicknpc Cracked Vessel##134995
|tip They looks like small blue urns on the ground around this area.
Purify #6# Cracked Vessels |q 50735/1 |goto 45.85,47.39 |future
step
label "Slay_Craven_Spirits_50735"
Kill Craven enemies around this area
Slay #8# Craven Spirits |q 50735/2 |goto 45.85,47.39 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51640
accept Beachhead##51640 |goto Nazmir/0 74.04,10.70
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##144359
Tell her _"I am ready."_
Speak to Scrollsage Nola |q 51640/1 |goto 74.04,10.70 |future
step
kill Vicious Albatross##138186+
|tip They look like birds flying in the air around this area.
|tip Use the ability on your action bar.
kill Armored Claw##138242+
|tip They look like small crabs in the water.
|tip Use the ability on your action bar.
Help #12# Juvenile Turtles Reach the Ocean |q 51640/2 |future
|tip The turtles will slowly walk into the water.
|tip You must protect them from the birds and crabs.
|next "BFA_World_Quest_Emissaries"
step
label quest-51550
accept Bubbles and Trouble##51550 |goto Nazmir/0 32.60,54.97
|tip You will accept this quest automatically.
stickystart "Kill_Empowered_Worshippers_51550"
step
clicknpc Corruption Source##134583+
|tip They look like large red floating blood bubbles around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #3# Corruption Sources |q 51550/2 |goto 32.60,54.97 |future
step
label "Kill_Empowered_Worshippers_51550"
kill 12 Empowered Worshipper##127224 |q 51550/1 |goto 32.60,54.97 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53323
accept Burnished Platinum##53323 |goto Nazmir/0 63.36,23.87
|tip You will accept this quest automatically.
|polish
step
click Burnished Platinum Deposit##297620
collect Burnished Platinum##163624 |q 53323/1 |goto 63.36,23.87 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55342
accept Calligraphy##55342 |goto Nazmir/0 39.65,43.48
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##151524
Tell him _"I am ready."_
Speak to Scrollsage Nola |q 55342/1 |goto 39.65,43.48 |future
step
Complete the Tracing Challenge |q 55342/2 |goto 39.65,43.48 |future
|tip Run around, tracing the pattern that appears.
|next "BFA_World_Quest_Emissaries"
step
label quest-54699
accept Classic Gnomish Engineering##54699 |goto Nazmir/0 48.88,11.74
|tip You will accept this quest automatically.
step
kill Skycaptain Thermospark##148792 |q 54699/1 |goto 48.88,11.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54512
accept Cleansing Tide##54512 |goto Nazmir/0 60.27,13.89
|tip You will accept this quest automatically.
step
Summon the Coursing Tidesurger |q 54512/1 |goto 60.27,13.89 |future
|tip Step into the swirling pool of water on the ground.
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay the Sin'dorei Forces |q 54512/2 |goto 62.05,13.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50491
accept Corpse Bringer Yal'kar##50491 |goto Nazmir/0 41.31,53.43
|tip You will accept this quest automatically.
step
kill Corpse Bringer Yal'kar##126187 |q 50491/1 |goto 41.31,53.43 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50962
accept Cargo Reclamation##50962 |goto Nazmir/0 60.16,67.71
|tip You will accept this quest automatically.
stickystart "Collect_Ransacked_Supplies_50962"
step
kill Xuxuga the Plunderer##135377 |q 50962/2 |goto 61.33,68.57 |future
|tip At the top of the ship.
|tip Click the Rope Ladder on the side of the ship, in the water, to board the ship.
step
label "Collect_Ransacked_Supplies_50962"
click Ransacked Supplies+
|tip They look like wooden boxes on the ground around this area.
collect 6 Ransacked Supplies##158878 |q 50962/1 |goto 59.71,68.61 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50813
accept Cargo Reclamation##50813 |goto Nazmir/0 60.16,67.71
|tip You will accept this quest automatically.
stickystart "Collect_Ransacked_Supplies_50813"
step
kill Xuxuga the Plunderer##135377 |q 50813/2 |goto 61.33,68.57 |future
|tip At the top of the ship.
|tip Click the Rope Ladder on the side of the ship, in the water, to board the ship.
step
label "Collect_Ransacked_Supplies_50813"
click Ransacked Supplies+
|tip They look like wooden boxes on the ground around this area.
collect 6 Ransacked Supplies##158878 |q 50813/1 |goto 59.71,68.61 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50665
accept Cancel the Blood Troll Apocalypse##50665 |goto Nazmir/0 53.77,76.03
|tip You will accept this quest automatically.
step
talk Patch##134758
|tip On top of the robot.
Tell him _"Let's get in the A.F.M.O.D and stop that blood troll army."_
Speak with Patch to Board the A.F.M.O.D. |q 50665/1 |goto 53.77,76.03 |future
step
_As You Fly:_
Kill enemies around this area
|tip They are on the ground as you fly.
|tip Use the ability on your action bar.
Slay #80# Blood Trolls |q 50665/2 |goto 46.79,78.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50568
accept Chag's Challenge##50568 |goto Nazmir/0 68.92,20.06
|tip You will accept this quest automatically.
step
talk Chag##134297
Tell him _"I'll fight your summoned creature."_
Watch the dialogue
kill Lucille##134296 |q 50568/1 |goto 67.99,19.81 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52779
accept Crawg in the Bog##52779 |goto Nazmir/0 46.65,73.79
|tip You will accept this quest automatically.
step
clicknpc Bloodtusk##141588
Defeat Bloodtusk |q 52779/1 |goto 46.65,73.79 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50492
accept Cursed Chest##50492 |goto Nazmir/0 81.80,30.54
|tip You will accept this quest automatically.
step
click Cursed Chest##272631
Choose _<Attempt to open the chest.>_
kill Captain Mu'kala##125232 |q 50492/1 |goto 81.80,30.54 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55302
accept The Cycle of Life##55302 |goto Nazmir/0 74.05,10.70
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##151474
Speak to Scrollsage Nola |q 55302/1 |goto 74.05,10.70 |future
step
talk Scrollsage Nola##151474
Tell him _"I am ready."_
Start the Game |invehicle |q 55302 |goto 74.05,10.70 |future
step
Kill Juvenile Turtle enemies around this area
|tip Use the "Move Left" and "Move Right" abilities to avoid the incoming attacks and reach turtles.
|tip Use the "Throw Turtle Shell" ability to throw a shell, killing all turtles in a straight line.
Stop #20# Juvenile Turtles from Raching the Ocean |q 55302/2 |goto 73.72,10.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50717
accept Don't Stalk Me, Troll##50717 |goto Nazmir/0 35.70,76.42
|tip You will accept this quest automatically.
step
use Talanji's Mojo##158324
Use Talanji's Mojo Potion |q 50717/1 |goto 35.70,76.42 |future
step
Kill Blood Troll enemies around this area
|tip They will appear on your minimap as red dots.
Slay #12# Blood Troll Invaders |q 50717/2 |goto 35.70,76.42 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50443
accept Down to the Roots##50443 |goto Nazmir/0 48.85,28.53
|tip You will accept this quest automatically.
stickystart "Destroy_Bloodlasher_Seedlings_50443"
step
kill Root-Hexxer Ib'aka##131596 |q 50443/2 |goto 48.85,28.53 |future
step
label "Destroy_Bloodlasher_Seedlings_50443"
clicknpc Bloodlasher Seedling##133860+
|tip They look like blue and red plants with teeth on the ground around this area.
Destroy #15# Bloodlasher Seedlings |q 50443/1 |goto 49.07,34.32 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50899
accept Don't Stalk Me, Troll##50899 |goto Nazmir/0 35.70,76.42
|tip You will accept this quest automatically.
step
use the Portable Revealing Occular##158924
Use the Portable Revealing Occular |q 50899/1 |goto 35.70,76.42 |future
step
Kill Blood Troll enemies around this area
|tip They will appear on your minimap as red dots.
Slay #12# Blood Troll Invaders |q 50899/2 |goto 35.70,76.42 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51166
accept Down to the Roots##51166 |goto Nazmir/0 48.85,28.53
|tip You will accept this quest automatically.
stickystart "Destroy_Bloodlasher_Seedlings_51166"
step
kill Root-Hexxer Ib'aka##131596 |q 51166/2 |goto 48.85,28.53 |future
step
label "Destroy_Bloodlasher_Seedlings_51166"
clicknpc Bloodlasher Seedling##133860+
|tip They look like blue and red plants with teeth on the ground around this area.
Destroy #15# Bloodlasher Seedlings |q 51166/1 |goto 49.07,34.32 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52007
accept Engines of War##52007 |goto Nazmir/0 70.37,15.56
|tip You will accept this quest automatically.
stickystart "Destroy_Amphibious_Assault_Obliterators_52007"
stickystart "Slay_7th_Legion_Forces_52007"
step
kill Captain Quarterflash##139510 |q 52007/3 |goto 70.37,15.56 |future
step
label "Destroy_Amphibious_Assault_Obliterators_52007"
use the Goblin Incendiary Rocket Launcher##160988
|tip Use it on Amphibious Assault Obliterators around this area.
|tip They look like large siege vehicles on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #3# Amphibious Assault Obliterators |q 52007/2 |goto 70.37,15.56 |future
step
label "Slay_7th_Legion_Forces_52007"
Kill 7th Legion enemies around this area
Slay #10# 7th Legion Forces |q 52007/1 |goto 70.37,15.56 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53289
accept Flourishing Sea Stalks##53289 |goto Nazmir/0 60.83,8.75
|tip You will accept this quest automatically.
|polish
step
click Flourishing Sea Stalks##297612+
|tip They look like clumps of grass with flowers growing on the ground around this area.
collect 10 Flourishing Sea Stalk##163588 |q 53289/1 |goto 60.83,8.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50545
accept Forked Lightning##50545 |goto Nazmir/0 27.14,39.10
|tip You will accept this quest automatically.
step
Kill Sethrak enemies around this area
collect 25 Skycaller Gem Chip##157861 |q 50545/1 |goto 27.14,39.10 |future
step
click Gemcaller Matrix##136001
|tip Inside the building.
Restore the Skycaller Gem |q 50545/2 |goto 27.25,39.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51172
accept Forked Lightning##51172 |goto Nazmir/0 29.24,38.53
|tip You will accept this quest automatically.
step
Kill Sethrak enemies around this area
collect 25 Skycaller Gem Chip##157861 |q 51172/1 |goto 27.14,39.10 |future
step
click Gemcaller Matrix##136001
|tip Inside the building.
Restore the Skycaller Gem |q 51172/2 |goto 27.25,39.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50559
accept Getting Out of Hand##50559 |goto Nazmir/0 63.09,15.27
|tip You will accept this quest automatically.
step
Become the Hand of Fate |invehicle |goto 63.09,15.27 |q 50559 |future
|tip Use the "Scroll of Fate's Hand" ability.
|tip It appears as a button on the screen.
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy #40# Undead |q 50559/1 |goto 63.09,15.27 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53322
accept Gleaming Storm Silver##53322 |goto Nazmir/0 75.19,47.82
|tip You will accept this quest automatically.
step
click Gleaming Storm Silver Deposit##297619
collect 1 Gleaming Storm Silver##163623 |q 53322/1 |goto 75.19,47.82 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50496
accept Glompmaw##50496 |goto Nazmir/0 68.68,57.45
|tip You will accept this quest automatically.
step
kill Glompmaw##121242 |q 50496/1 |goto 68.68,57.45 |future
|tip He swims underwater around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-50499
Follow the path up |goto Nazmir/0 33.39,82.74 < 15 |only if walking
accept Gwugnug##50499 |goto Nazmir/0 33.16,84.16
|tip You will accept this quest automatically.
step
Follow the path |goto 32.94,86.03 < 15 |only if walking
Enter the cave |goto 33.47,87.11 < 10 |only if walking
kill Gwugnug the Cursed##127001 |q 50499/1 |goto 33.80,85.99 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51127
accept Getting Out of Hand##51127 |goto Nazmir/0 62.75,14.83
|tip You will accept this quest automatically.
step
Become the Hand of Fate |invehicle |goto 62.75,14.83 |q 51127 |future
|tip Use the "Scroll of Fate's Hand" ability.
|tip It appears as a button on the screen.
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy #40# Undead |q 51127/1 |goto 62.75,14.83 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50498
accept Gutrip##50498 |goto Nazmir/0 32.80,43.10
|tip You will accept this quest automatically.
step
kill Gutrip##128426 |q 50498/1 |goto 32.80,43.10 |future
|tip It walks around this area.
|tip It will appear on your minimap as a yellow star.
|next "BFA_World_Quest_Emissaries"
step
label quest-50695
accept It's Never Time for Cannibalism##50695 |goto Nazmir/0 49.67,35.43
|tip You will accept this quest automatically.
stickystart "Slay_Nathavor_Cannibals_50695"
step
clicknpc Zandalari Sacrifice##134761+
|tip They look like trolls tied to spears on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Rescue #4# Zandalari Sacrifices |q 50695/2 |goto 49.67,35.43 |future
step
label "Slay_Nathavor_Cannibals_50695"
Kill Natha'vor enemies around this area
Slay #12# Cannibals |q 50695/1 |goto 49.67,35.43 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50689
accept It's the Pits##50689 |goto Nazmir/0 24.68,47.71
|tip You will accept this quest automatically.
stickystart "Kill_Bone_Raptors_50689"
step
clicknpc Goblin Prospector##134759+
|tip They look like tar-covered goblins in tar pits on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Rescue #4# Goblin Prospectors |q 50689/2 |goto 24.68,47.71 |future
step
label "Kill_Bone_Raptors_50689"
kill 8 Bone Raptor##130735+ |q 50689/1 |goto 24.68,47.71 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51546
accept It's the Pits##51546 |goto Nazmir/0 24.68,47.71
|tip You will accept this quest automatically.
stickystart "Kill_Bone_Raptors_51546"
step
clicknpc Goblin Prospector##134759+
|tip They look like tar-covered goblins in tar pits on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Rescue #4# Surveyors |q 51546/2 |goto 24.68,47.71 |future
step
label "Kill_Bone_Raptors_51546"
kill 8 Bone Raptor##130735+ |q 51546/1 |goto 24.68,47.71 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54502
accept It's Raining Mana##54502 |goto Nazmir/0 62.58,7.86
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Mana Crystal+
|tip They look like large blue crystals on the ground around this area.
Absorb Loose Mana |q 54502/1 |goto 62.58,7.86 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50502
accept Jax'teb the Reanimated##50502 |goto Nazmir/0 45.18,51.89
|tip You will accept this quest automatically.
step
kill Jax'teb the Reanimated##133373 |q 50502/1 |goto 45.18,51.89 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50503
accept Juba the Scarred##50503 |goto Nazmir/0 28.12,34.11
|tip You will accept this quest automatically.
step
kill Juba the Scarred##133527 |q 50503/1 |goto 28.12,34.11 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-50505
accept Kal'draxa##50505 |goto Nazmir/0 52.90,13.15
|tip You will accept this quest automatically.
step
kill Kal'draxa##124397 |q 50505/1 |goto 52.90,13.15 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50497
accept Krag'wa's Favor##50497 |goto Nazmir/0 75.29,46.26
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Loot Chunky Meat from them.
click Raptor Egg##201974+
|tip They look like large blue eggs on the ground around this area.
clicknpc Beautiful Glowfly##123259
|tip They look like small insects flying low to the ground around this area.
Collect Offerings for Krag'wa |q 50497/1 |goto 75.29,46.26 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50506
accept King Kooba##50506 |goto Nazmir/0 52.62,44.08
|tip You will accept this quest automatically.
step
Run up the stairs |goto 52.62,44.08 < 15 |only if walking
kill King Kooba##129005 |q 50506/1 |goto 53.42,42.84 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50507
accept Krubbs##50507 |goto Nazmir/0 76.10,36.64
|tip You will accept this quest automatically.
step
kill Krubbs##125214 |q 50507/1 |goto 75.71,35.95 |future
|tip Inside the building.
|next "BFA_World_Quest_Emissaries"
step
label quest-50509
accept Lo'kuno##50509 |goto Nazmir/0 77.72,45.16
|tip You will accept this quest automatically.
step
kill Lo'kuno##133539 |q 50509/1 |goto 77.72,45.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54697
accept Lightforged Warframe##54697 |goto Nazmir/0 80.60,15.23
|tip You will accept this quest automatically.
step
kill Lightforged Warframe##148779 |q 54697/1 |goto 80.60,15.23 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50566
accept Lost Scroll##50566 |goto Nazmir/0 81.68,61.07
|tip You will accept this quest automatically.
step
click Lost Scroll##134295
kill Enraged Water Elemental##134294 |q 50566/1 |goto 81.68,61.07 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53321
Follow the path up |goto Nazmir/0 34.92,84.51 < 20 |only if walking
accept Luminous Monelite##53321 |goto 33.89,86.48
|tip You will accept this quest automatically.
|polish
step
click Luminous Monelite Deposit##297618
collect Luminous Monelite##163609 |q 53321/1 |goto 33.89,86.48 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50517
accept Mala'kili and Rohnkor##50517 |goto Nazmir/0 53.77,53.31
|tip You will accept this quest automatically.
step
Watch the dialogue
kill Mala'kili##128935 |q 50517/1 |goto 52.62,53.66 |future
|tip He runs around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-52754
accept Marshdwellers##52754 |goto Nazmir/0 72.84,48.97
|tip You will accept this quest automatically.
step
Enter the cave |goto 72.84,48.97 < 10 |walk
talk Lozu##141529
|tip Inside the cave.
Tell her _"Begin pet battle."_
Defeat Lozu |q 52754/1 |goto 72.85,48.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54236
accept Naga Attack!##54236 |goto Nazmir/0 80.31,52.18
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Naga War Supplies+
|tip They look like racks of weapons and crates the ground around this area.
click Naga War Banner+
|tip They look like tall posts with flags on them on the ground around this area.
click Naga Cage+
|tip They look like large crude cages with prisoners inside on the ground around this area.
Repel the Naga Invaders |q 54236/1 |goto 80.31,52.18 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54267
accept Naga Attack!##54267 |goto Nazmir/0 30.37,30.11
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Naga War Supplies+
|tip They look like racks of weapons and crates the ground around this area.
click Naga War Banner+
|tip They look like tall posts with flags on them on the ground around this area.
click Naga Cage+
|tip They look like large crude cages with prisoners inside on the ground around this area.
Repel the Naga Invaders |q 54267/1 |goto 30.37,30.11 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50587
accept Nagative Feedback##50587 |goto Nazmir/0 81.37,52.08
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Infused Trident Rack##287159+
|tip They look like large weapon racks on the ground around this area.
click Empowering Totem##134372+
|tip The look like small blue-glowing metal cups on the ground around this area.
click Infused Trident Rack+
|tip They look like racks of golden weapons on the ground around this area.
Disrupt the Naga Encampment |q 50587/1 |goto 81.37,52.08 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51548
accept Nagative Feedback##51548 |goto Nazmir/0 81.37,52.08
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Infused Trident Rack##287159+
|tip They look like large weapon racks on the ground around this area.
click Empowering Totem##134372+
|tip The look like small blue-glowing metal cups on the ground around this area.
click Infused Trident Rack+
|tip They look like racks of golden weapons on the ground around this area.
Disrupt the Naga Encampment |q 51548/1 |goto 81.37,52.08 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54671
accept Overgrown Ancient##54671 |goto Nazmir/0 42.29,23.04
|tip You will accept this quest automatically.
step
kill Overgrown Ancient##148651 |q 54671/1 |goto 42.29,23.04 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50474
accept The Other Side##50474 |goto Nazmir/0 39.55,55.04
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect Spirit Essence##157833+ |n
clicknpc Fettered Spirit##133962+
|tip They look like trolls kneeling on the ground around this area.
Liberate #6# Fettered Spirits |q 50474/1 |goto 39.55,55.04 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50510
accept Overstuffed Saurolisk##50510 |goto Nazmir/0 62.10,65.21
|tip You will accept this quest automatically.
step
kill Overstuffed Saurolisk##124375 |q 50510/1 |goto 62.10,65.21 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50667
accept Past Due##50667 |goto Nazmir/0 68.45,35.34
|tip You will accept this quest automatically.
step
click Ancient Texts##287161+
|tip They look like brown stone tablets on the ground around this area.
|tip They can also be inside the buildings around this area.
Examine #8# Ancient Text |q 50667/1 |goto 68.45,35.34 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52006
accept Preemptive Assault##52006 |goto Nazmir/0 72.04,16.42
|tip You will accept this quest automatically.
stickystart "Burn_Barricades_52006"
stickystart "Slay_10_7th_Legion_Forces_52006"
step
kill Houndmaster Leopold##139554 |q 52006/3 |goto 70.43,15.54 |future
step
label "Burn_Barricades_52006"
click Barricade##281000+
|tip They look like piles of wooden rubble on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Burn #5# Barricades |q 52006/2 |goto 71.01,15.51 |future
step
label "Slay_10_7th_Legion_Forces_52006"
Kill 7th Legion enemies around this area
Slay #10# 7th Legion Forces |q 52006/1 |goto 71.01,15.51 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52799
accept Pack Leader##52799 |goto Nazmir/0 35.93,54.59
|tip You will accept this quest automatically.
step
talk Grady Prett##141799
Tell him _"Begin pet battle."_
Defeat Grady Prett |q 52799/1 |goto 35.93,54.59 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51154
accept Past Due##51154 |goto Nazmir/0 68.45,35.34
|tip You will accept this quest automatically.
step
click Ancient Texts##287161+
|tip They look like brown stone tablets on the ground around this area.
|tip They can also be inside the buildings around this area.
Examine #8# Ancient Text |q 51154/1 |goto 68.45,35.34 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54680
accept Plague Master Herbert##54680 |goto Nazmir/0 71.19,19.02
|tip You will accept this quest automatically.
step
kill Plague Master Herbert##148674 |q 54680/1 |goto 71.19,19.02 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54693
accept Pterror of the Horde##54693 |goto Nazmir/0 52.86,13.49
|tip You will accept this quest automatically.
step
kill Ptin'go##148753 |q 54693/1 |goto 52.86,13.49 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50501
accept Queen Tzxi'kik##50501 |goto Nazmir/0 57.72,67.71
|tip You will accept this quest automatically.
step
kill Queen Tzxi'kik##128974 |q 50501/1 |goto 57.72,67.71 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50786
accept Revenge of Krag'wa##50786 |goto Nazmir/0 63.77,52.37
|tip You will accept this quest automatically.
step
talk Krag'wa the Huge##134976
Tell him _"I am ready to fight the blood trolls."_
Meet Krag'wa Outside Zal'amak |q 50786/1 |goto 63.77,52.37 |future
step
Kill Bloodhunter enemies around this area
|tip Use the abilities on your action bar.
Slay #150# Blood Troll Forces |q 50786/2 |goto 61.34,53.81 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54839
accept Rightfully Ours##54839 |goto Nazmir/0 50.51,17.23
|tip You will accept this quest automatically.
step
kill Xizz Gutshank##149383 |q 54839/1 |goto 50.51,17.23 |future
step
click Alliance Supplies##316978
collect Alliance Supplies##166726 |q 54839/2 |goto 50.51,17.28 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50676
accept River Toll##50676 |goto Nazmir/0 68.30,49.82
|tip You will accept this quest automatically.
stickystart "Slay_Bloodhunter_Trolls_50676"
step
click Bloodhunter Spears+
|tip They look like spears on the ground around this area.
click Bloodhunter War Supplies+
|tip They look like blue jars on the ground around this area.
Destroy #8# Bloodhunter War Supplies |q 50676/2 |goto 68.30,49.82 |future
step
label "Slay_Bloodhunter_Trolls_50676"
Kill Bloodhunter enemies around this area
Slay #12# Bloodhunter Trolls |q 50676/1 |goto 68.30,49.82 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54663
accept Shadow Hunter Vol'tris##54663 |goto Nazmir/0 52.36,22.50
|tip You will accept this quest automatically.
step
kill Shadow Hunter Vol'tris##148637 |q 54663/1 |goto 52.36,22.50 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50521
accept Scorched Earth##50521 |goto Nazmir/0 31.69,75.18
|tip You will accept this quest automatically.
stickystart "Kill_Dreadtick_Latchers_50521"
step
use the Firestick##157847
|tip Use it on Dreadtick Latcher Nests around this area.
|tip They look like white pods with red bumps on them on the ground around this area.
Destroy #8# Dreadtick Latcher Nests |q 50521/1 |goto 30.59,75.28 |future
step
label "Kill_Dreadtick_Latchers_50521"
use the Firestick##157847
|tip Use it on Dreadtick Latchers around this area.
kill 25 Dreadtick Latcher##126749 |q 50521/2 |goto 30.59,75.28 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50660
accept Survival Strategy##50660 |goto Nazmir/0 73.68,61.16
|tip You will accept this quest automatically.
stickystart "Collect_Diremaw_Hides_50660"
stickystart "Collect_Pterrordax_Wingclaws_50660"
step
kill Shore Saurid##128585+
collect 30 Saurid Feather##158191 |q 50660/1 |goto 73.68,61.16 |future
step
label "Collect_Diremaw_Hides_50660"
kill Diremaw##128620+
collect 5 Diremaw Hide##158193 |q 50660/2 |goto 73.68,61.16 |future
step
label "Collect_Pterrordax_Wingclaws_50660"
Kill Seaspray enemies around this area
collect 3 Pterrordax Wingclaw##158192 |q 50660/3 |goto 73.68,61.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50634
accept Save Our Scrolls!##50634 |goto Nazmir/0 61.32,26.40
|tip You will accept this quest automatically.
step
click Grimy Scroll##281722+
|tip They look like small glowing scrolls on the ground around this area.
collect 12 Intact Tortollan Scroll##158176 |q 50634/1 |goto 61.32,26.40 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51109
accept Scorched Earth##51109 |goto Nazmir/0 31.69,75.18
|tip You will accept this quest automatically.
stickystart "Kill_Dreadtick_Latchers_51109"
step
use the X-P100D##159745
|tip Use it on Dreadtick Latcher Nests around this area.
|tip They look like white pods with red bumps on them on the ground around this area.
Destroy #8# Dreadtick Latcher Nests |q 51109/1 |goto 30.59,75.28 |future
step
label "Kill_Dreadtick_Latchers_51109"
use the X-P100D##159745
|tip Use it on Dreadtick Latchers around this area.
kill 25 Dreadtick Latcher##126749 |q 51109/2 |goto 30.59,75.28 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50961
accept Save Our Scrolls!##50961 |goto Nazmir/0 61.32,26.40
|tip You will accept this quest automatically.
step
click Grimy Scroll##281722+
|tip They look like small glowing scrolls on the ground around this area.
collect 12 Intact Tortollan Scroll##158176 |q 50961/1 |goto 61.32,26.40 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50512
accept Scout Skrasniss##50512 |goto Nazmir/0 59.14,38.78
|tip You will accept this quest automatically.
step
kill Scout Skrasniss##127820 |q 50512/1 |goto 59.14,38.78 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53886
accept Self Guided Tour##53886 |goto Nazmir/0 82.86,23.73
|tip You will accept this quest automatically.
step
click Cargo Rope
Use the Cargo Rope to Board the Airship |q 53886/1 |goto 82.86,23.73 |future
stickystart "Collect_Nazmir_Battleplans_53886"
step
kill Captain Stonestare##146286 |q 53886/2 |goto 84.02,22.15 |future
|tip On the middle deck of the airship.
step
kill Elli Sparklighter##146289 |q 53886/3 |goto 82.62,24.37 |future
|tip On the top deck of the airship.
step
label "Collect_Nazmir_Battleplans_53886"
click Alliance Strongbox##310204+
|tip They look like metal and wood chests around this area on the airship.
|tip They will appear on your minimap as yellow dots.
collect 6 Nazmir Battleplans##165011 |q 53886/4 |goto 82.81,24.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51628
accept Shell Game##51628 |goto Nazmir/0 72.22,40.52
|tip You will accept this quest automatically.
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51628/1 |goto 72.22,40.52 |future
step
click Shell+
|tip Click the shells to reveal objects.
|tip Match the objects in pairs.
Complete Collector Kojo's Shell Game |q 51628/2 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54707
accept Siegeotron##54707 |goto Nazmir/0 54.16,7.82
|tip You will accept this quest automatically.
step
kill Siegeotron##148842 |q 54707/1 |goto 54.16,7.82 |future
|tip Kill the Dark Iron Rune Keepers channeling him to free him.
|next "BFA_World_Quest_Emissaries"
step
label quest-50650
accept Smashing Zalamar##50650 |goto Nazmir/0 32.56,45.62
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Repulsive Container##281835+
|tip They look like large dark-colored urns on the ground around this area.
Disrupt Zalamar |q 50650/1 |goto 32.56,45.62 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50468
accept Shul-Nagruth##50468 |goto Nazmir/0 49.86,67.21
|tip You will accept this quest automatically.
step
kill Maw of Shul-Nagruth##128610 |q 50468/1 |goto 49.86,67.21 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52785
accept Smashing Zalamar##52785 |goto Nazmir/0 32.56,45.62
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Repulsive Container##281835+
|tip They look like large dark-colored urns on the ground around this area.
Disrupt Zalamar |q 52785/1 |goto 32.56,45.62 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52181
accept Smoke and Shadow##52181 |goto Nazmir/0 35.43,32.18
|tip You will accept this quest automatically.
step
kill T'zane##132701
|tip Don't stand in front of T'zane during "Terror Wail." |grouprole EVERYONE
|tip Don't touch orbs of "Coalesced Essence." |grouprole EVERYONE
|tip If affected by "Consuming Spirits," move away from group members. |grouprole DAMAGE or HEALER
Slay T'zane |q 52181/1 |goto 35.43,32.18 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54694
accept Stormcaller Morka##54694 |goto Nazmir/0 49.02,16.13
|tip You will accept this quest automatically.
step
kill Stormcaller Morka##148759 |q 54694/1 |goto 49.02,16.13 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52385
collect 20 Slimy Mackerel##152544 |q 52385/1 |future
|tip Use the "Slimy Mackerel" farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
accept Supplies Needed: Slimy Mackerel##52385 |goto Nazmir/0 39.10,79.47
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Supplies Needed: Slimy Mackerel##52385 |goto 39.10,79.47
|next "BFA_World_Quest_Emissaries"
step
label quest-50660
accept Survival Strategy##50660 |goto Nazmir/0 73.68,61.16
|tip You will accept this quest automatically.
stickystart "Collect_Diremaw_Hides_50660"
stickystart "Collect_Pterrordax_Wingclaws_50660"
step
kill Shore Saurid##128585+
collect 30 Saurid Feather##158191 |q 50660/1 |goto 73.68,61.16 |future
step
label "Collect_Diremaw_Hides_50660"
kill Diremaw##128620+
collect 5 Diremaw Hide##158193 |q 50660/2 |goto 73.68,61.16 |future
step
label "Collect_Pterrordax_Wingclaws_50660"
Kill Seaspray enemies around this area
collect 3 Pterrordax Wingclaw##158192 |q 50660/3 |goto 73.68,61.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50936
accept Survival Strategy##50936 |goto Nazmir/0 73.68,61.16
|tip You will accept this quest automatically.
stickystart "Collect_Diremaw_Hides_50936"
stickystart "Collect_Pterrordax_Wingclaws_50936"
step
kill Shore Saurid##128585+
collect 30 Saurid Feather##158191 |q 50936/1 |goto 73.68,61.16 |future
step
label "Collect_Diremaw_Hides_50936"
kill Diremaw##128620+
collect 5 Diremaw Hide##158193 |q 50936/2 |goto 73.68,61.16 |future
step
label "Collect_Pterrordax_Wingclaws_50936"
Kill Seaspray enemies around this area
collect 3 Pterrordax Wingclaw##158192 |q 50936/3 |goto 73.68,61.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50529
accept The Spirits Within##50529 |goto Nazmir/0 39.60,29.93
|tip You will accept this quest automatically.
step
kill Reanimated Horror##122684+
|tip A troll spirit will sometimes start following you after you kill them.
Return #12# Spirits to the Necropolis |q 50529/1 |goto 39.60,29.93 |future
Lead the sprits to the yellow glowing circle at [39.57,27.89]
|next "BFA_World_Quest_Emissaries"
step
label quest-54503
accept This Gang Of Mine##54503 |goto Nazmir/0 76.95,22.70
|tip You will accept this quest automatically.
step
click Crawler Mines
|tip They have various names.
|tip They look like grey spiked metal bombs that walk on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Repair #5# Crawler Mines |q 54503/1 |goto 76.95,22.70 |future
step
click Remote Mine Controls##148201
Use the Remote Mine Controls |q 54503/2 |goto Nazmir/0 76.34,25.02 |future
step
Destroy the Azerite War Machine |q 54503/3 |goto 82.61,14.45 |future
|tip Use the "Detonate" ability on your action bar next to the Azerite War Machine.
|next "BFA_World_Quest_Emissaries"
step
label quest-52237
accept The Underrot: Restless Horror##52237 |goto The Underrot/0 0.00,0.00
|tip Use the Group Finder to enter "The Underrot" dungeon.
|tip You will accept this quest automatically.
step
kill Restless Horror##140593 |q 52237/1 |future
|tip Inside the dungeon after the third boss.
|tip Use "The Underrot" dungeon guide to accomplish this.
step
kill Unbound Abomination##133007 |q 52237/2 |future
|tip He is the final boss inside the dungeon.
|tip Use "The Underrot" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-52238
accept The Underrot: Mysterious Spores##52238 |goto The Underrot/0 0.00,0.00
|tip Use the Group Finder to enter "The Underrot" dungeon.
|tip You will accept this quest automatically.
step
clicknpc Mysterious Spore##140753+
Collect #5# Mysterious Spores |q 52238/1 |future
|tip Inside the dungeon around Cragmaw the Infested.
|tip Use "The Underrot" dungeon guide to accomplish this.
step
kill Unbound Abomination##133007 |q 52238/2 |future
|tip He is the final boss inside the dungeon.
|tip Use "The Underrot" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-51856
accept The Underrot: Rotmaw##51856 |goto The Underrot/0 0.00,0.00
|tip Use the Group Finder to enter "The Underrot" dungeon.
|tip You will accept this quest automatically.
step
kill Rotmaw##139194 |q 51856/1 |future
|tip Inside the dungeon, on the path between the first and second boss.
|tip He look like a large dark colored worm.
|tip Use "The Underrot" dungeon guide to accomplish this.
step
kill Unbound Abomination##133007 |q 51856/2 |future
|tip He is the final boss inside the dungeon.
|tip Use "The Underrot" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-50513
accept Tainted Guardian##50513 |goto Nazmir/0 32.21,37.86
|tip You will accept this quest automatically.
step
kill Tainted Guardian##126460 |q 50513/1 |goto 31.51,38.20 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54700
accept Thomas Vandergrief##54700 |goto Nazmir/0 52.40,27.50
|tip You will accept this quest automatically.
step
Enter the cave |goto 52.40,27.50 < 10 |walk
click Vandergrief's Stolen Supplies
|tip Inside the cave.
kill Thomas Vandergrief##148813 |q 54700/1 |goto 52.06,27.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50514
accept Totem Maker Jash'ga##50514 |goto Nazmir/0 48.88,38.42
|tip You will accept this quest automatically.
step
kill Totem Maker Jash'ga##126056 |q 50514/1 |goto 49.42,37.69 |future
|tip Inside the building.
|next "BFA_World_Quest_Emissaries"
step
label quest-50577
accept Unaccounted For##50577 |goto Nazmir/0 35.99,83.03
|tip You will accept this quest automatically.
stickystart "Kill_Primal_Skyterrors_50577"
step
clicknpc Darkspear Scout##134326+
|tip They look like trolls laying on the ground around this area.
Rescue #6# Injured Darkspear Scouts |q 50577/2 |goto 35.48,84.48 |future
step
label "Kill_Primal_Skyterrors_50577"
use the Grappling Hook##159761
|tip Use it on Primal Skyterrors around this area.
|tip It only works on the ones flying in the air around this area.
kill 10 Primal Skyterror##126702 |q 50577/1 |goto 35.48,84.48 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51176
accept Unaccounted For##51176 |goto Nazmir/0 35.99,83.03
|tip You will accept this quest automatically.
stickystart "Kill_Primal_Skyterrors_51176"
step
use the Grappling Hook##159761
|tip Use it on Primal Skyterrors around this area.
|tip It only works on the ones flying in the air around this area.
kill 10 Primal Skyterror##126702 |q 51176/1 |goto 35.48,84.48 |future
step
label "Kill_Primal_Skyterrors_51176"
clicknpc Darkspear Scout##134326+
|tip They look like humans laying on the ground around this area.
Rescue #6# Injured Darkspear Scouts |q 51176/2 |goto 35.48,84.48 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50483
accept Underlord Xerxiz##50483 |goto Nazmir/0 55.36,57.61
|tip You will accept this quest automatically.
step
kill Underlord Xerxiz##134002 |q 50483/1 |goto 55.36,57.61 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54500
accept Untapped Potential##54500 |goto Nazmir/0 62.58,7.86
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Mana Crystal+
|tip They look like large blue crystals on the ground around this area.
Absorb Loose Mana |q 54500/1 |goto 62.58,7.86 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50490
accept Uroku the Bound##50490 |goto Nazmir/0 44.27,48.78
|tip You will accept this quest automatically.
step
kill Uroku the Bound##128965 |q 50490/1 |goto 44.27,48.78 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50515
accept Venomjaw##50515 |goto Nazmir/0 29.51,50.80
|tip You will accept this quest automatically.
|tip He walks around this area.
step
kill Venomjaw##126926 |q 50515/1 |goto 29.51,50.80 |future
|tip He walks around this area.
|tip Pull him away, out of the cloud of green spores.
|next "BFA_World_Quest_Emissaries"
step
label quest-50459
accept Vugthuth##50459 |goto Nazmir/0 46.74,33.74
|tip You will accept this quest automatically.
step
kill Vugthuth##128584 |q 50459/1 |goto 46.74,33.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54020
accept Wet Work: Gloomwater Span##54020 |goto Nazmir/0 49.98,19.85
|tip You will accept this quest automatically.
step
talk SI:7 Infiltrator##147369
Tell him _"I am ready."_
Speak with an SI:7 Infiltrator |q 54020/1 |goto 49.98,19.85 |future
step
talk SI:7 Infiltrator##147369
Tell them _"I am ready."_
Gain the Infiltrating Buff |havebuff 132320 |goto 49.98,19.85
step
kill Wavebreaker Xiang##147250
|tip She looks like a pandaren wearing a pink cloak.
|tip She may be in a different location around this area.
|tip Avoid the blue circles on the ground around enemies.
Slay the Target |q 54020/2 |goto 47.08,20.71 |future
step
Gain the Infiltrating Buff |havebuff 132320
|tip Use the "Smoke Bomb" ability.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-52426
collect 5 Battle Flag: Phalanx Defense##153703 |q 52426/1 |future
|tip Create them with Tailoring or purchase them from the Auction House.
step
accept Work Order: Battle Flag: Phalanx Defense##52426 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Battle Flag: Phalanx Defense##52426 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-51009
collect 15 Calcified Bone##154165 |q 51009/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Work Order: Calcified Bone##51009 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Calcified Bone##51009 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-52396
collect 5 Contract: Talanji's Expedition##153665 |q 52396/1 |future
|tip Create them with Inscription or purchase them from the Auction House.
step
accept Work Order: Contract: Talanji's Expedition##52396 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Contract: Talanji's Expedition##52396 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-51015
collect 10 Deep Sea Satin##152577 |q 51015/1 |future
|tip Farm them from Humanoid mobs or purchase them from the Auction House.
step
accept Work Order: Deep Sea Satin##51015 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Deep Sea Satin##51015 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-51004
collect 20 Siren's Pollen##152509 |q 51004/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Siren's Pollen##51004 |goto Nazmir/0 39.10,79.47
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Siren's Pollen##51004 |goto 39.10,79.47
|next "BFA_World_Quest_Emissaries"
step
label quest-52418
collect 3 Drums of the Maelstrom##154167 |q 52418/1 |future
|tip Create them with Leatherworking or purchase them from the Auction House.
step
accept Work Order: Drums of the Maelstrom##52418 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Drums of the Maelstrom##52418 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-52360
collect 3 Enchant Weapon - Coastal Surge##153476 |q 52360/1 |future
|tip Create them with Enchanting or purchase them from the Auction House.
step
accept Work Order: Enchant Weapon - Coastal Surge##52360 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Enchant Weapon - Coastal Surge##52360 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-52361
collect 3 Enchant Weapon - Torrent of Elements##153479 |q 52361/1 |future
|tip Create them with Enchanting or purchase them from the Auction House.
step
accept Work Order: Enchant Weapon - Torrent of Elements##52361 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Enchant Weapon - Torrent of Elements##52361 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-52411
collect 10 Kubiline##153702 |q 52411/1 |future
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
accept Work Order: Kubiline##52411 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Kubiline##52411 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-51006
collect 20 Monelite Ore##152512 |q 51006/1 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Work Order: Monelite Ore##51006 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Monelite Ore##51006 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-52337
collect 5 Sea Mist Potion##152550 |q 52337/1 |future
|tip Create them with Alchemy or purchase them from the Auction House.
step
accept Work Order: Sea Mist Potion##52337 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Sea Mist Potion##52337 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-51005
collect 20 Sea Stalk##152511 |q 51005/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Sea Stalk##51005 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Sea Stalk##51005 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-51012
collect 20 Shimmerscale##153050 |q 51012/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Work Order: Shimmerscale##51012 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Shimmerscale##51012 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-52410
collect 10 Solstone##153050 |q 52410/1 |future
|tip Prospect them with Mining or purchase them from the Auction House.
step
accept Work Order: Solstone##52410 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Solstone##52410 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-52372
collect 2 XA-1000 Surface Skimmer##153512 |q 52372/1 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
accept Work Order: XA-1000 Surface Skimmer##52372 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: XA-1000 Surface Skimmer##52372 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-50516
accept Wardrummer Zurula##50516 |goto Nazmir/0 48.96,50.77
|tip You will accept this quest automatically.
step
kill Wardrummer Zurula##126907 |q 50516/1 |goto 48.96,50.77 |future
|tip At the top of the tower.
|next "BFA_World_Quest_Emissaries"
step
label quest-52410
collect 10 Solstone##153703 |q 52410/1 |future
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
|polish
step
accept Work Order: Solstone##52410 |goto Nazmir/0 39.07,79.52
|tip You will accept this quest automatically.
step
talk Provisioner Lija##135459
turnin Work Order: Solstone##52410 |goto 39.07,79.52
|next "BFA_World_Quest_Emissaries"
step
label quest-50489
accept Xu'ba##50489 |goto Nazmir/0 36.54,50.52
|tip You will accept this quest automatically.
step
kill Xu'ba##133531 |q 50489/1 |goto 36.54,50.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50519
accept Za'amar##50519 |goto Nazmir/0 38.77,28.79
|tip You will accept this quest automatically.
|tip At the entrance of the crypt.
step
Enter the crypt |goto 38.77,28.79 < 10 |walk
kill Za'amar the Queen's Blade##129657 |q 50519/1 |goto 38.79,26.75 |future
|tip Inside the crypt.
|next "BFA_World_Quest_Emissaries"
step
label quest-50518
accept Zanxib##50518 |goto Nazmir/0 38.74,71.43
|tip You will accept this quest automatically.
step
kill Zanxib##133812 |q 50518/1 |goto 38.74,71.43 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-50461
accept Zujothgul##50461 |goto Nazmir/0 39.59,50.83
|tip You will accept this quest automatically.
step
kill Zujothgul##128578 |q 50461/1 |goto 39.59,50.83 |future
|next "BFA_World_Quest_Emissaries"
step
label "BFA_World_Quest_Emissaries"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Mechagon Island World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Mechagon, Kul Tiras.",
startlevel=50.0,
worldquestzone=1462,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-56397
accept CK-9 Micro-Oppression Unit##56397 |goto Mechagon Island/0 65.36,57.66
|tip You will accept this quest automatically.
step
clicknpc CK-9 Micro-Oppression Unit##154926
Defeat CK-9 Micro-Oppression Unit |q 56397/1 |goto 65.36,57.66 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56396
accept Creakclank##56396 |goto Mechagon Island/0 59.22,50.89
|tip You will accept this quest automatically.
step
clicknpc Creakclank##154925
Defeat Creakclank |q 56396/1 |goto 59.22,50.89 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56393
accept Gnomefeaster##56393 |goto Mechagon Island/0 64.67,64.64
|tip You will accept this quest automatically.
step
clicknpc Gnomefeaster##154922
Defeat Gnomefeaster |q 56393/1 |goto 64.67,64.64 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56395
accept Goldenbot XD##56395 |goto Mechagon Island/0 60.65,56.89
|tip You will accept this quest automatically.
step
clicknpc Goldenbot XD##154924
Defeat Goldenbot XD |q 56395/1 |goto 60.65,56.89 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56139
accept Junkyard Treasures##56139 |goto Mechagon Island/0 64.25,46.54
|tip You will accept this quest automatically.
step
click Mechanized Chest+
|tip You can find these randomly all over Mechagon Island.
|tip They will appear as small treasure chest icons on your minimap.
Open #6# Mechanized Chests |q 56139/1 |goto 64.25,46.54 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55901
accept Rustbolt Rebellion##55901 |goto Mechagon Island/0 64.34,45.73
|tip You will accept this quest automatically.
step
Complete Activities on Mechagon |q 55901/1 |goto 64.34,45.73 |future
|tip Complete quests, world quests, or kill rare spawns.
|next "BFA_World_Quest_Emissaries"
step
label quest-56131
accept Security First##56131 |goto Mechagon Island/0 64.36,48.62
|tip You will accept this quest automatically.
step
Slay #3# Rare Enemies |q 56131/1 |goto 64.36,48.62 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56141
accept Security First##56141 |goto Mechagon Island/0 64.36,48.62
|tip You will accept this quest automatically.
step
Slay #3# Rare Enemies |q 56141/1 |goto 64.36,48.62 |future
|tip Rare enemies are located all over Mechagon Island and appear on your minimap as a yellow star.
|next "BFA_World_Quest_Emissaries"
step
label quest-56394
accept Sputtertube##56394 |goto Mechagon Island/0 60.71,46.47
|tip You will accept this quest automatically.
step
clicknpc Sputtertube##154923
Defeat Sputtertube |q 56394/1 |goto 60.71,46.47 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56399
accept Unit 6##56399 |goto Mechagon Island/0 39.50,40.15
|tip You will accept this quest automatically.
step
clicknpc Unit 6##154928
Defeat Unit 6 |q 56399/1 |goto 39.50,40.15 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56400
accept Unit 17##56400 |goto Mechagon Island/0 72.15,72.87
|tip You will accept this quest automatically.
step
clicknpc Unit 17##154929
Defeat Unit 17 |q 56400/1 |goto 72.15,72.87 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56398
accept Unit 35##56398 |goto Mechagon Island/0 51.07,45.36
|tip You will accept this quest automatically.
step
clicknpc Unit 35##154927
Defeat Unit 35 |q 56398/1 |goto 51.07,45.36 |future
|next "BFA_World_Quest_Emissaries"
step
label "BFA_World_Quest_Emissaries"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Nazjatar World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Nazjatar, Kul Tiras.",
condition_suggested=function() return level == 50 and (completedq(56156) or completedq(55500)) end,
startlevel=50.0,
worldquestzone=1355,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-56233
click Arcane Cache
accept Arcane Cache##56233 |goto Nazjatar/0 53.16,28.21
step
Kill Azsh'ari enemies around this area
collect 1 Arcane Cache Key##168199 |q 56233/1 |goto 57.28,26.28
step
click Arcane Cache
turnin Arcane Cache##56233 |goto 53.16,28.21
|next "BFA_World_Quest_Emissaries"
step
label quest-55970
accept Attrition##55970 |goto Nazjatar/0 26.14,29.54
|tip You will accept this quest automatically.
stickystart "Kill_Zanj'ir_Slaver"
step
kill 4 Tadpole Collector##153758 |q 55970/2 |goto 26.14,29.54
step
label "Kill_Zanj'ir_Slaver"
kill Zanj'ir Slaver##153753+
|tip They spawn from the water wall.
Defeat #4# Naga Waves |q 55970/1 |goto 26.14,29.54
|next "BFA_World_Quest_Emissaries"
step
label quest-55893
accept Azanz, the Slitherblade##55893 |goto Nazjatar/0 33.22,39.88
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find him at [68.53,32.77]
And [42.36,68.35]
And [36.02,34.32]
And [63.95,57.08]
And [42.69,41.49]
And [77.56,43.71]
And [33.44,30.02]
step
kill Slitherblade Azanz##153311 |q 55893/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55664
talk Axol Darksea##154064
accept A Blow to Morale##55664 |goto Najatar/0 59.07,19.10
step
Kill enemies around this area
click Void Power Core+
|tip They look like large blue orbs on pedestals around this area.
Disrupt Shirakess |q 55664/1 |goto 59.87,13.18
step
talk Axol Darksea##154064
turnin A Blow to Morale##55664 |goto 59.07,19.10
|next "BFA_World_Quest_Emissaries"
step
label quest-55986
talk Caitfin Gills##153684
|tip Inside the cave.
accept Break a Few Eggs##55986 |goto Nazjatar/0 70.80,23.23
step
click Deepcoil Egg+
|tip They look like large blue eggs on the ground around this area.
Destroy #10# Deepcoil Eggs |q 55986/1 |goto 69.71,20.54
step
talk Caitfin Gills##153684
turnin Break a Few Eggs##55986 |goto 70.80,23.23
|next "BFA_World_Quest_Emissaries"
step
label quest-56370
talk Tracker Kenji##154075
|tip Inside the cave.
accept Break a Few Eggs##56370 |goto Nazjatar/0 66.81,29.15
step
click Deepcoil Egg+
|tip They look like large blue eggs on the ground around this area.
Destroy #10# Deepcoil Eggs |q 56370/1 |goto 69.76,19.82
step
talk Apprentice Anako##155844
turnin Break a Few Eggs##56370 |goto 67.11,26.13
|next "BFA_World_Quest_Emissaries"
step
label quest-55663
talk Escaped Kelfin##152717
accept Broken Controller##55663 |goto Nazjatar/0 58.04,56.13
step
talk Captured Deepshell##152690
Tell it _"Get off of them!."_
talk Captured Kelfin##152688
Tell it _"Lets get this off you."_
Free #8# Slaves |q 55663/1 |goto 59.73,58.29
step
kill Merciless Controller##152534 |q 55663/2 |goto 59.80,58.35
|tip Flying above you in the air.
|next "BFA_World_Quest_Emissaries"
step
label quest-57334
Enter the cave |goto 39.62,77.22 < 15 |walk
accept Cave of Murlocs##57334 |goto Nazjatar/0 36.86,78.64
|tip Inside the cave.
|tip You will accept this quest automatically.
step
Kill Necrofin enemies around this area
|tip Inside the cave.
Slay #15# Necrofin Murlocs |q 57334/1 |goto 36.86,78.64 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55891
accept Champion Aldrantiss, Defender of Her Kingdom##55891 |goto Nazjatar/0 53.21,24.01
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find her at [50.39,16.94]
And [41.67,23.65]
And [61.36,24.26]
And [60.77,12.93]
step
kill Aldrantiss##153314 |q 55891/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55887
accept Alzana, Arrow of Thunder##55887 |goto Nazjatar/0 53.21,24.01
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find her at [50.39,16.94]
And [41.67,23.65]
And [61.36,24.26]
And [60.77,12.93]
step
kill Alzana, Arrow of Thunder##153309 |q 55887/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55892
accept Champion Eldanar, Shield of Her Glory##55892 |goto Nazjatar/0 53.21,24.01
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find her at [50.39,16.94]
And [41.67,23.65]
And [61.36,24.26]
And [60.77,12.93]
step
kill Eldanar##153315 |q 55892/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55889
accept Champion Kyx'zhul the Deepspeaker##55889 |goto Nazjatar/0 53.21,24.01
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find him at [50.39,16.94]
And [41.67,23.65]
And [61.36,24.26]
And [60.77,12.93]
step
kill Kyx'zhul the Deepspeaker##153312 |q 55889/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55888
accept Champion Qalina, Spear of Ice##55888 |goto Nazjatar/0 53.21,24.01
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find her at [50.39,16.94]
And [41.67,23.65]
And [61.36,24.26]
And [60.77,12.93]
step
kill Qalina, Spear of Ice##153310 |q 55888/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55890
accept Champion Vyz'olgo the Mind-Taker##55890 |goto Nazjatar/0 53.21,24.01
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find it at [50.39,16.94]
And [41.67,23.65]
And [61.36,24.26]
And [60.77,12.93]
step
kill Vyz'olgo the Mind-Taker##153313 |q 55890/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56382
accept Chomp##56382 |goto Nazjatar/0 71.85,51.13
|tip You will accept this quest automatically.
step
clicknpc Chomp##154911
Defeat Chomp |q 56382/1 |goto 71.85,51.13 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55681
click Illegible Treasure Map
accept Crab Marks The Spot##55681 |goto Nazjatar/0 43.80,54.70
step
click Sand Pile##325881+
collect Buried Treasure##168230 |q 55681/1 |goto 44.93,53.49
step
Click the Complete Quest Box
turnin Crab Marks The Spot##55681
|next "BFA_World_Quest_Emissaries"
step
label quest-55665
talk Moris Criz##152787
accept The Dark Garden##55665 |goto Nazjatar/0 56.05,18.47
step
Kill enemies around this area
click Water Prison+
|tip They look like large water bubbles with creatures inside.
Clean up the Imperial Gardens |q 55665/1 |goto 54.43,19.62
step
talk Moris Criz##152787
turnin The Dark Garden##55665 |goto 56.05,18.47
|next "BFA_World_Quest_Emissaries"
step
label quest-57353
accept Deepcoil Cleansing##57353 |goto Nazjatar/0 67.23,20.38
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 10 Voidtinged Substance##171257 |q 57353/1 |goto 67.23,20.38 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55973
accept Deepcoil Experiments##55973 |goto Nazjatar/0 66.35,24.03
|tip You will accept this quest automatically.
step
use the Telemancy Beacon##168634
|tip Use it next to Nava Void Experiments.
|tip They look like purple eggs on pedestals around this area.
Transport #20# Void-touched Eggs |q 55973/1 |goto 66.35,24.03 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57338
accept Elderspawn of Nalaada##57338 |goto Nazjatar/0 41.17,39.68
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #15# Naga Forces |q 57338/1 |goto 41.17,39.68 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56032
accept Dirty Dozen##56032 |goto Nazjatar/0 64.92,16.19
|tip You will accept this quest automatically.
step
kill 12 Zoatroid Harvester##153893 |q 56032/1 |goto 64.92,16.19 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56048
accept The Drowned Oracles##56048 |goto 78.50,35.85
|tip You will accept this quest automatically.
step
kill 3 Drowned Oracle##153948 |q 56048/1 |goto 78.50,35.85 |future
|tip They are standing in pillars of light around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-56001
Enter the underwater cave |goto Nazjatar/0 26.89,30.03 < 20 |walk
talk King Mrgl-Mrgl##153884
|tip Inside the underwater cave.
accept Drunk Angry Murlocs##56001 |goto 25.47,26.40
step
click Shipwrecked Keg##326727+
|tip They look like small wood and metal kegs laying on their side around this area.
collect 12 Ocean "Infused" Lager##168629 |q 56001/1 |goto 27.59,31.90
step
Enter the underwater cave |goto 26.89,30.03 < 20 |walk
talk King Mrgl-Mrgl##153884
|tip Inside the underwater cave.
turnin Drunk Angry Murlocs##56001 |goto 25.47,26.40
|next "BFA_World_Quest_Emissaries"
step
label quest-56265
Enter the underwater cave |goto Nazjatar/0 26.89,30.03 < 20 |walk
talk King Mrgl-Mrgl##153884
|tip Inside the underwater cave.
accept Drunk Angry Murlocs##56265 |goto 25.47,26.40
step
click Shipwrecked Keg##326727+
|tip They look like small wood and metal kegs laying on their side around this area.
collect 12 Ocean "Infused" Lager##168629 |q 56265/1 |goto 27.59,31.90
step
Enter the underwater cave |goto 26.89,30.03 < 20 |walk
talk King Mrgl-Mrgl##153884
|tip Inside the underwater cave.
turnin Drunk Angry Murlocs##56265 |goto 25.47,26.40
|next "BFA_World_Quest_Emissaries"
step
label quest-56386
accept Elderspawn of Nalaada##56386 |goto Nazjatar/0 51.27,74.96
|tip You will accept this quest automatically.
step
clicknpc Elderspawn of Nalaada##154915
Defeat Elderspawn of Nalaada |q 56386/1 |goto 51.27,74.96 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55768
talk Bren Inkfin##153006
accept Emergent Sea Weeds##55768 |goto Nazjatar/0 37.92,48.75
step
Follow the path down |goto 40.24,46.78 < 30 |only if walking
click Vent Kelp##326255+
|tip They look like large strands of purple seaweed in the water around this area.
collect 10 Vent Kelp Sprout##168433 |q 55768/1 |goto 43.63,48.39
|next "BFA_World_Quest_Emissaries"
step
label quest-55985
talk Mari Lazarfin##153685
accept Extra Shiny##55985 |goto Nazjatar/0 60.85,30.92
step
click Imbued Pearl+
|tip They look like tiny pearls in the water around this area.
collect 10 Imbued Pearl##168577 |q 55985/1 |goto 60.49,30.27
step
talk Mari Lazarfin##153685
turnin Extra Shiny##55985 |goto 60.85,30.92
|next "BFA_World_Quest_Emissaries"
step
label quest-57340
accept Fathom Ray Feast##57340 |goto Nazjatar/0 69.74,49.69
|tip You will accept this quest automatically.
step
Kill Fathom Ray enemies around this area
|tip They fly around this area.
collect 8 Fathom Ray Meat##171254 |q 57340/1 |goto 69.74,49.69 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56149
talk Harvester Akaro##154235
accept Feed Them All##56149 |goto Nazjatar/0 55.60,47.07
step
use the Fathom Hook##168253
|tip Use it on Ray enemies to pull them down if need be.
Kill Ray enemies around this area
collect 10 Fathom Flesh##168254 |q 56149/1 |goto 58.19,49.47
step
talk Harvester Akaro##154235
turnin Feed Them All##56149 |goto 55.60,47.07
|next "BFA_World_Quest_Emissaries"
step
label quest-55715
talk Oben Sandfin##152786
accept Feed Them All##55715 |goto Nazjatar/0 57.46,45.53
step
use the Fathom Hook##168253
|tip Use it on Ray enemies to pull them down if need be.
Kill Ray enemies around this area
collect 10 Fathom Flesh##168254 |q 55715/1 |goto 58.19,49.47
step
talk Oben Sandfin##152786
turnin Feed Them All##55715 |goto 57.46,45.53
|next "BFA_World_Quest_Emissaries"
step
label quest-55661
talk Cando Mikfin##153777
accept Fighting Venomous With Venom##55661 |goto Nazjatar/0 64.54,48.59
|polish
step
Follow the path |goto 66.36,47.93 < 20 |only if walking
Kill Snapdragon enemies around this area
collect Venom Droplet##168198+ |n
kill Snapdragon Terrormaw##152358
|tip If you have appropriate gear, you can just kill a Terrormaw.
collect Envenomed Fangs##168404 |q 55661/2 |goto 70.61,49.88
step
Follow the path |goto 66.36,47.93 < 20 |only if walking
talk Cando Mikfin##153777
turnin Fighting Venomous With Venom##55661 |goto 64.54,48.59
|next "BFA_World_Quest_Emissaries"
step
label quest-55846
talk Apprentice Ukaro##153147
accept Forbidden Rituals##55846 |goto Nazjatar/0 56.64,29.25
step
Kill Azsh'ari enemies around this area
|tip Oracles, Invokers, and Neophytes drop tomes.
collect 8 Tome of Binding##168398 |q 55846/1 |goto 59.39,28.52
step
talk Apprentice Ukaro##153147
turnin Forbidden Rituals##55846 |goto 56.64,29.25
|next "BFA_World_Quest_Emissaries"
step
label quest-55683
talk Arylina##152716
|tip Inside the building.
accept Forgotten Memories##55683 |goto Nazjatar/0 78.46,26.87
step
click Arylina's Diary##326595
|tip It looks like a small purple book on the ground around this area.
collect Arylina's Diary##168238 |q 55683/1 |goto 77.78,28.66
step
talk Arylina##152716
|tip Inside the building.
turnin Forgotten Memories##55683 |goto 78.46,26.87
|next "BFA_World_Quest_Emissaries"
step
label quest-56391
Enter the cave |goto Nazjatar/0 61.40,19.85 < 5 |walk
accept Frenzied Knifefang##56391 |goto 61.47,22.90
|tip Inside the cave.
|tip You will accept this quest automatically.
step
clicknpc Frenzied Knifefang##154920
|tip Inside the cave.
Defeat Frenzied Knifefang |q 56391/1 |goto 61.47,22.90 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55895
accept Frozen Winds of Zhiela##55895 |goto Nazjatar/0 33.22,39.88
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find her at [68.53,32.77]
And [42.36,68.35]
And [36.02,34.32]
And [63.95,57.08]
And [42.69,41.49]
And [77.56,43.71]
And [33.44,30.02]
step
kill Glacier Mage Zhiela##153302 |q 55895/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55871
Enter the cave |goto Nazjatar/0 27.90,41.10 < 15 |walk
talk Narm##151311
|tip Inside the cave.
accept Gather Friends##55871 |goto 26.64,42.34
step
clicknpc Sandclaw Crab##145337+
use the Friendship Net##168407
Capture #8# Friends |q 55871/1 |goto 30.57,44.57
step
Enter the cave |goto 27.90,41.10 < 15 |walk
talk Narm##151311
|tip Inside the cave.
turnin Gather Friends##55871 |goto 26.64,42.34
|next "BFA_World_Quest_Emissaries"
step
label quest-56392
Enter the cave |goto Nazjatar/0 28.47,27.79 < 10 |walk
accept Giant Opaline Conch##56392 |goto 28.15,26.74
|tip You will accept this quest automatically.
step
clicknpc Giant Opaline Conch##154921
|tip Inside the cave.
Defeat the Giant Opaline Conch |q 56392/1 |goto 28.15,26.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56041
accept Give 'Em Shell##56041 |goto Nazjatar/0 37.00,30.27
|tip You will accept this quest automatically.
step
clicknpc Reinforced Warshell##155097
Ride the Reinforced Warshell |q 56041/1 |goto 37.00,30.27 |future
step
Shellbliterate #50# Zanj'ir Naga |q 56041/2 |goto 39.10,26.46 |future
|tip Run through the Naga to kill them.
|next "BFA_World_Quest_Emissaries"
step
label quest-55984
talk Korl##153623
accept A Good Offense##55984 |goto Najatar/0 36.30,30.16
step
clicknpc Korl##153547
Join Korl |invehicle |goto 36.30,30.16 |q 55984
step
Kill enemies around this area
Slay #50# Naga |q 55984/1 |goto 39.17,22.62
step
talk Korl##153623
turnin A Good Offense##55984 |goto 36.30,30.16
|next "BFA_World_Quest_Emissaries"
step
label quest-55751
talk Mari Lazarfin##153685
accept The Heart of the Water##55751 |goto Nazjatar/0 60.84,30.92
step
Kill enemies around this area
|tip Tidespray Surgers and Living Waters.
collect 15 Living Droplet##168809 |q 55751/1 |goto 61.54,30.48
step
talk Mari Lazarfin##153685
turnin The Heart of the Water##55751 |goto 60.84,30.92
|next "BFA_World_Quest_Emissaries"
step
label quest-55997
accept Hungry Hungry Hydras##55997 |goto Nazjatar/0 36.13,11.80
|tip Inside the cave.
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Inside the cave.
collect Chitterspine Meat##168630 |n
click Feeding Shellb
Feed Theronar |q 55997/1 |goto 35.65,12.18 |future
step
clicknpc Scale Lord Theronar##153801
|tip Inside the cave.
Ride Theronar |q 55997/2 |goto 35.49,12.55 |future
step
kill Cracklemaw Colossus##153825 |q 55997/3 |goto 37.20,9.97 |future
|tip Use the abilities on your vehicle bar.
|tip Use "Dominating Stomp" to interrupt Stormrend.
|next "BFA_World_Quest_Emissaries"
step
label quest-55884
accept Infestation of Madness##55884 |goto Nazjatar/0 67.64,37.53
|tip You will accept this quest automatically.
step
Kill Kil'karrok enemies around this area
Slay #10# Kil'karrok Makrura |q 55884/1 |goto 67.64,37.53 |future
step
Start the Confrontation |invehicle |q 55884 |future
|tip Click the "Confront the Madness" ability that appears on-screen.
step
Reach the Citadel |outvehicle |q 55884 |future
step
kill Infestation of Madness##153327 |q 55884/2 |goto 65.33,33.90
|next "BFA_World_Quest_Emissaries"
step
label quest-56121
accept Jumping Jellies##56121 |goto Nazjatar/0 62.11,28.20
|tip You will accept this quest automatically.
step
Save Tickles |q 56121/1 |goto 61.28,29.04 |future
|tip Jump in the arcane tornado to jump forward.
|tip Bounce from jelly to jelly until you reach Tickles up top.
|next "BFA_World_Quest_Emissaries"
step
label quest-55900
accept Kassar, Wielder of Dark Blades##55900 |goto Nazjatar/0 33.22,39.88
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find him at [68.53,32.77]
And [42.36,68.35]
And [36.02,34.32]
And [63.95,57.08]
And [42.69,41.49]
And [77.56,43.71]
And [33.44,30.02]
step
kill Voidblade Kassar##153303 |q 55900/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56389
Enter the cave |goto Nazjatar/0 47.31,27.00 < 10 |walk
accept Kelpstone##56389 |goto 46.63,27.96
|tip You will accept this quest automatically.
step
clicknpc Kelpstone##154918
|tip Inside the cave.
Defeat Kelpstone |q 56389/1 |goto 46.63,27.96 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56150
talk Rlgmrr##153537
accept Kill the Kritch##56150 |goto Nazjatar/0 44.92,76.85
step
Enter the cave |goto 39.62,77.23 < 15 |walk
Follow the path |goto 37.35,77.76 < 15 |walk
kill Kritch##153263 |q 56150/1 |goto 36.43,79.71
|tip Inside the cave.
step
talk Rlgmrr##153537
turnin Kill the Kritch##56150 |goto 44.92,76.85
|next "BFA_World_Quest_Emissaries"
step
label quest-55873
talk Rlgmrr##153537
accept Kill the Kritch##55873 |goto Nazjatar/0 44.92,76.85
step
Enter the cave |goto 39.62,77.23 < 15 |walk
Follow the path |goto 37.35,77.76 < 15 |walk
kill Kritch##153263 |q 55873/1 |goto 36.43,79.71
|tip Inside the cave.
step
talk Rlgmrr##153537
turnin Kill the Kritch##55873 |goto 44.92,76.85
|next "BFA_World_Quest_Emissaries"
step
label quest-56023
Enter the building |goto Nazjatar/0 67.43,36.34 < 10 |only if walking
accept Leylocked Chest##56023 |goto 67.12,35.80
|tip Inside the building.
|tip You will accept this quest automatically.
step
click Arcane Device
|tip Upstairs inside the building.
|tip Clicking any two spheres will cause them to swap places with each other.
|tip You must arrange them so that no lines are crossed.
Uncross the Ley Lines to Unlock the Chest |q 56023/1 |goto 67.12,35.80 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56025
Enter the building |goto Nazjatar/0 75.67,47.36 < 10 |only if walking
accept Leylocked Chest##56025 |goto 75.82,48.44
|tip Inside the building.
|tip You will accept this quest automatically.
step
click Arcane Device
|tip Inside the building.
|tip Clicking any two spheres will cause them to swap places with each other.
|tip You must arrange them so that no lines are crossed.
Uncross the Ley Lines to Unlock the Chest |q 56025/1 |goto 75.82,48.44 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56024
Enter the building |goto Nazjatar/0 75.26,25.10 < 10 |only if walking
accept Leylocked Chest##56024 |goto 75.32,24.45
|tip Inside the building.
|tip You will accept this quest automatically.
step
click Arcane Device
|tip Inside the building.
|tip Clicking any two spheres will cause them to swap places with each other.
|tip You must arrange them so that no lines are crossed.
Uncross the Ley Lines to Unlock the Chest |q 56024/1 |goto 75.32,24.45 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55636
click Empty Bookcase
|tip Inside the building.
accept A Life's Work##55636 |goto Nazjatar/0 78.43,28.64
stickystart "Collect_Arcane_Tomes"
step
Kill enemies around this area
collect 6 Ancient Scroll##168169 |q 55636/1 |goto 77.95,28.11
step
label "Collect_Arcane_Tomes"
click Arcane Tome##326594+
|tip They look like large books around this area.
collect 6 Arcane Tome##168170 |q 55636/2 |goto 77.95,28.11
step
click Empty Bookcase
|tip Inside the building.
turnin A Life's Work##55636 |goto 78.43,28.64
|next "BFA_World_Quest_Emissaries"
step
label quest-55993
Enter the cave |goto Nazjatar/0 27.88,41.10 < 10 |walk
talk Kade Makreef##153743
|tip Inside the cave.
accept A Little Edge##55993 |goto 26.13,42.66
step
Follow the path down |goto 33.33,39.98 < 20 |only if walking
Continue following the road |goto 32.97,34.26 < 20 |only if walking
Follow the path |goto 39.19,25.42 < 20 |only if walking
Kill Chitterspine enemies around this area
collect 12 Chitterspine Spine##168605 |q 55993/1 |goto 39.92,15.52
step
Enter the cave |goto 27.88,41.10 < 10 |walk
talk Kade Makreef##153743
|tip Inside the cave.
turnin A Little Edge##55993 |goto 26.13,42.66
|next "BFA_World_Quest_Emissaries"
step
label quest-55982
accept The Lords of Water##55982 |goto Nazjatar/0 36.16,72.39
|tip You will accept this quest automatically.
step
talk Champion Aquaclease##153595
talk Duke Hydraxis##153597
Tell it _"I am ready."_
Choose a Water Lord |q 55982/1 |goto 36.16,72.39
step
Break the Naga Forces |q 55982/2 |goto 42.38,67.83
|next "BFA_World_Quest_Emissaries"
step
label quest-56146
click Empty Cask
accept Making Kelpberry Wine##56146 |goto Nazjatar/0 59.57,41.89
step
click Kelpberry##322803+
|tip They look like large red fruit on the ground around this area.
collect 8 Kelpberry##168173 |q 56146/1 |goto 63.80,43.72
step
click Kelpberry##322791
Deliver the Kelpberries |q 56146/2 |goto 57.81,40.84
step
click Kelpberry Cask##327221
collect Cask of Kelpberry Juice##168174 |q 56146/3 |goto 57.76,40.87
step
Enter the underwater cave |goto 57.28,39.31 < 15 |walk
talk Maedin##150344
|tip Inside the underwater cave.
turnin Making Kelpberry Wine##56146 |goto 58.23,35.80
|next "BFA_World_Quest_Emissaries"
step
label quest-55638
click Empty Cask
accept Making Kelpberry Wine##55638 |goto Nazjatar/0 59.57,41.89
step
click Kelpberry##322803+
|tip They look like large red fruit on the ground around this area.
collect 8 Kelpberry##168173 |q 55638/1 |goto 63.80,43.72
|only if haveq(55638)
step
click Kelpberry##322791
Deliver the Kelpberries |q 55638/2 |goto 57.81,40.84
|only if haveq(55638)
step
click Kelpberry Cask##327221
collect Cask of Kelpberry Juice##168174 |q 55638/3 |goto 57.76,40.87
|only if haveq(55638)
step
Enter the underwater cave |goto 57.28,39.31 < 15 |walk
talk Maedin##150344
|tip Inside the underwater cave.
turnin Making Kelpberry Wine##55638 |goto 58.23,35.80
|next "BFA_World_Quest_Emissaries"
step
label quest-56002
Enter the underwater cave |goto Nazjatar/0 27.06,30.22 < 15 |walk
talk King Mrgl-Mrgl##153884
|tip Inside the cave.
accept Mgglurky's Mugglrgl##56002 |goto 25.47,26.40
step
Kill Bloodfin enemies around this area
collect Mgglurky's Mugglrgl##168647 |q 56002/1 |goto 28.16,32.81
step
Enter the underwater cave |goto 27.06,30.22 < 15 |walk
talk King Mrgl-Mrgl##153884
|tip Inside the cave.
turnin Mgglurky's Mugglrgl##56002 |goto 25.47,26.40
|next "BFA_World_Quest_Emissaries"
step
label quest-56266
Enter the underwater cave |goto Nazjatar/0 27.06,30.22 < 15 |walk
talk King Mrgl-Mrgl##153884
|tip Inside the cave.
accept Mgglurky's Mugglrgl##56266 |goto 25.47,26.40
step
Kill Bloodfin enemies around this area
collect Mgglurky's Mugglrgl##168647 |q 56266/1 |goto 28.16,32.81
step
Enter the underwater cave |goto 27.06,30.22 < 15 |walk
talk King Mrgl-Mrgl##153884
|tip Inside the cave.
turnin Mgglurky's Mugglrgl##56266 |goto 25.47,26.40
|next "BFA_World_Quest_Emissaries"
step
label quest-56388
Enter the cave |goto Nazjatar/0 56.32,11.33 < 20 |only if walking
accept Mindshackle##56388 |goto 56.44,8.15
|tip Inside the cave.
|tip You will accept this quest automatically.
step
clicknpc Mindshackle##154917
|tip Inside the cave.
Defeat Mindshackle |q 56388/1 |goto 56.44,8.15 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55767
talk Dani Bluegill##152985
accept Misdirection##55767 |goto Nazjatar/0 31.22,32.08
step
click Mysterious Mollusc##326096+
|tip They look like giant clams on the ground around this area.
collect Dani's Treasure##168300 |q 55767/1 |goto 28.03,32.55
step
talk Dani Bluegill##152985
turnin Misdirection##55767 |goto 31.22,32.08
|next "BFA_World_Quest_Emissaries"
step
label quest-54949
talk Tracker Onu##150123
accept More Mouths To Feed##54949 |goto Nazjatar/0 35.03,48.97
step
Kill Snapshell enemies around this area
use the Hunting Knife##166905
|tip Use it on their corpses.
Harvest #30# Snapshell Flesh |q 54949/1 |goto 34.03,44.08
step
talk Tracker Onu##150123
turnin More Mouths To Feed##54949 |goto 35.03,48.97
|next "BFA_World_Quest_Emissaries"
step
label quest-56153
talk Tracker Otaru##154239
accept Most Delicious Clams##56153 |goto Nazjatar/0 45.70,19.69
step
use the Rift Diver##168672
Become a Rift Diver |havebuff 971078 |q 56153
step
click Neptulian Clam+
|tip They look like small clams underwater in the Abyssal Pool.
collect 10 Neptulian Clam##168658 |q 56153/1 |goto 47.84,21.46
step
talk Tracker Otaru##154239
turnin Most Delicious Clams##56153 |goto 45.70,19.69
|next "BFA_World_Quest_Emissaries"
step
label quest-56035
talk Sardina Lauray##153900
accept Most Delicious Clams##56035 |goto Nazjatar/0 48.75,22.75
step
use the Rift Diver##168672
Become a Rift Diver |havebuff 971078 |q 56035
step
click Neptulian Clam+
|tip They look like small clams underwater in the Abyssal Pool.
collect 10 Neptulian Clam##168658 |q 56035/1 |goto 47.84,21.46
step
talk Sardina Lauray##153900
turnin Most Delicious Clams##56035 |goto 48.75,22.75
|next "BFA_World_Quest_Emissaries"
step
label quest-57335
accept Murloc Mayhem##57335 |goto Nazjatar/0 27.50,31.89
|tip You will accept this quest automatically.
step
Kill Bloodfin enemies around this area
Battle the Bloodfin |q 57335/1 |goto 27.50,31.89 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57354
accept Overdue##57354 |goto Nazjatar/0 60.67,13.29
|tip You will accept this quest automatically.
step
Kill Shirakess enemies around this area
collect 8 Shirakess Grimoire##171262 |q 57354/1 |goto 60.67,13.29 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55625
talk Arcanist Owara##152407
accept Pearls of Unimaginable Power##55625 |goto Nazjatar/0 31.57,37.53
step
click Mana-Infused Clam##325759+
|tip They look like large bright blue clams on the ground around this area.
collect 8 Enchanted Pearl##168158 |q 55625/1 |goto 31.92,45.57
step
talk Arcanist Owara##152407
turnin Pearls of Unimaginable Power##55625 |goto 31.57,37.53
|next "BFA_World_Quest_Emissaries"
step
label quest-56385
Enter the cave |goto Nazjatar/0 49.76,50.37 < 10 |walk
accept Pearlhusk Crawler##56385 |goto 50.55,50.16
|tip Inside the cave.
|tip You will accept this quest automatically.
step
clicknpc Pearlhusk Crawler##154914
|tip Inside the cave.
Defeat Pearlhusk Crawler |q 56385/1 |goto 50.55,50.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55845
click Naga Attack Plans
accept Plans of Attack##55845 |goto Nazjatar/0 37.22,19.28
|polish
step
Kill Naga enemies around this area
collect 8 Assault Plans##168396 |q 55845/1 |goto 38.33,21.99
|next "BFA_World_Quest_Emissaries"
step
label quest-56157
talk Apprentice Inari##154246
accept Plug the Geysers##56157 |goto Nazjatar/0 31.06,37.78
step
use Benthic Sealant##168482
|tip Use it on the geysers when they are not erupting.
Seal #5# Unstable Geysers |q 56157/1 |goto 33.60,48.74
step
kill Disturbed Algan##150834 |q 56157/2 |goto 33.61,48.75
step
talk Apprentice Inari##154246
turnin Plug the Geysers##56157 |goto 31.06,37.78
|next "BFA_World_Quest_Emissaries"
step
label quest-56159
talk Apprentice Uataro##154244
accept Plug the Geysers##56159 |goto Nazjatar/0 44.75,45.23
step
use Benthic Sealant##168482
|tip Use it on the geysers when they are not erupting.
Seal #7# Unstable Geysers |q 56159/1 |goto 47.24,48.54
step
talk Apprentice Uataro##154244
turnin Plug the Geysers##56159 |goto 44.75,45.23
|next "BFA_World_Quest_Emissaries"
step
label quest-56158
talk Apprentice Unato##154245
accept Plug the Geysers##56158 |goto Nazjatar/0 45.92,76.53
step
use Benthic Sealant##168482
|tip Use it on the geysers when they are not erupting.
Seal #7# Unstable Geysers |q 56158/1 |goto 47.75,75.91
step
talk Apprentice Unato##154245
turnin Plug the Geysers##56158 |goto 45.92,76.53
|next "BFA_World_Quest_Emissaries"
step
label quest-55876
talk Scout Newly##153833
accept Plug the Geysers##55876 |goto Nazjatar/0 48.39,73.76
step
use Benthic Sealant##168482
|tip Use it on the geysers when they are not erupting.
Seal #7# Unstable Geysers |q 55876/1 |goto 47.75,75.76
step
talk Scout Newly##153833
turnin Plug the Geysers##55876 |goto 48.39,73.76
|next "BFA_World_Quest_Emissaries"
step
label quest-56160
talk Apprentice Aonari##154243
accept Plug the Geysers##56160 |goto Nazjatar/0 71.61,31.52
step
use Benthic Sealant##168482
|tip Use it on the geysers when they are not erupting.
Seal #6# Unstable Geysers |q 56160/1 |goto 70.33,28.88
step
talk Apprentice Aonari##154243
turnin Plug the Geysers##56160 |goto 71.61,31.52
|next "BFA_World_Quest_Emissaries"
step
label quest-56155
talk Apprentice Utapo##154247
accept Plug the Geysers##56155 |goto Nazjatar/0 60.65,50.91
step
use Benthic Sealant##168482
|tip Use it on the geysers when they are not erupting.
Seal #5# Unstable Geysers |q 56155/1 |goto 62.27,53.09
step
kill Disturbed Algan##150834 |q 56155/2 |goto 62.29,52.95
step
talk Apprentice Utapo##154247
turnin Plug the Geysers##56155 |goto 60.65,50.91
|next "BFA_World_Quest_Emissaries"
step
label quest-55878
talk Scout Barbscale##153819
accept Plug the Geysers##55878 |goto Nazjatar/0 71.45,32.42
step
use Benthic Sealant##168482
|tip Use it on the geysers when they are not erupting.
Seal #6# Unstable Geysers |q 55878/1 |goto 70.33,28.88
step
talk Scout Barbscale##153819
turnin Plug the Geysers##55878 |goto 71.45,32.42
|next "BFA_World_Quest_Emissaries"
step
label quest-55875
talk Scout Tambrine##153834
accept Plug the Geysers##55875 |goto Nazjatar/0 33.55,47.98
step
use Benthic Sealant##168482
|tip Use it on the geysers when they are not erupting.
Seal #5# Unstable Geysers |q 55875/1 |goto 33.61,48.75
step
kill Disturbed Algan##150834 |q 55875/2 |goto 33.62,48.78
step
talk Scout Tambrine##153834
turnin Plug the Geysers##55875 |goto 33.55,47.98
|next "BFA_World_Quest_Emissaries"
step
label quest-55877
talk Scout Tuli##153522
accept Plug the Geysers##55877 |goto Nazjatar/0 47.99,46.48
step
use Benthic Sealant##168482
|tip Use it on the geysers when they are not erupting.
Seal #7# Unstable Geysers |q 55877/1 |goto 47.21,48.58
step
talk Scout Tuli##153522
turnin Plug the Geysers##55877 |goto 47.99,46.48
|next "BFA_World_Quest_Emissaries"
step
label quest-56151
talk Slen Darkroe##151635
|tip Inside the cave.
accept Poen's Favorite Dish##56151 |goto Nazjatar/0 50.85,64.79
step
Kill enemies around this area
|tip Eel enemies drop Fresh Unagi.
collect 15 Fresh Unagi##169234 |q 56151/1 |goto 49.94,73.60
|next "BFA_World_Quest_Emissaries"
step
label quest-55637
talk Elycina Starcaller##152494
accept Poor, Unfortunate Souls##55637 |goto Nazjatar/0 74.22,24.77
step
click Ancient Remains
|tip They look like small piles of bones on the ground around this area.
kill 8 Tortured Soul##152492 |q 55637/1 |goto 77.23,28.12
step
talk Elycina Starcaller##152494
turnin Poor, Unfortunate Souls##55637 |goto 74.22,24.77
|next "BFA_World_Quest_Emissaries"
step
label quest-56381
Enter the cave |goto Nazjatar/0 36.84,27.77 < 10 |walk
accept Prince Wiggletail##56381 |goto 34.75,27.41
|tip Inside the cave.
|tip You will accept this quest automatically.
step
clicknpc Prince Wiggletail##154910
|tip Inside the cave.
Defeat Prince Wiggletail |q 56381/1 |goto 34.75,27.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57336
accept Putting the Past to Rest##57336 |goto Nazjatar/0 77.52,28.31
step
kill 10 Vengeful Highborne##154285 |q 57336/1 |goto 77.52,28.31
|next "BFA_World_Quest_Emissaries"
step
label quest-56387
Enter the cave |goto 29.61,48.53 < 10 |walk
accept Ravenous Scalespawn##56387 |goto Nazjatar/0 29.63,49.73
|tip Inside the cave.
|tip You will accept this quest automatically.
step
clicknpc Ravenous Scalespawn##154916
Defeat Ravenous Scalespawn |q 56387/1 |goto 29.63,49.73 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55728
click Reinforced Cache
|tip On the balcony.
accept Reinforced Cache##55728 |goto Nazjatar/0 45.12,22.12
step
Kill Zanj'ir enemies around this area
collect Reinforced Cache Key##168261 |q 55728/1 |goto 38.92,22.16
step
click Reinforced Cache
|tip On the balcony.
turnin Reinforced Cache##55728 |goto 45.12,22.12
|next "BFA_World_Quest_Emissaries"
step
label quest-56231
click Reinforced Cache
|tip On the balcony.
accept Reinforced Cache##56231 |goto Nazjatar/0 45.12,22.12
step
Kill Zanj'ir enemies around this area
collect Reinforced Cache Key##168261 |q 56231/1 |goto 38.92,22.16
step
click Reinforced Cache
|tip On the balcony.
turnin Reinforced Cache##56231 |goto 45.12,22.12
|next "BFA_World_Quest_Emissaries"
step
label quest-55659
talk Shirelle McFadden##152532
accept Relics of the Sundering##55659 |goto Nazjatar/0 78.83,42.44
step
click Highborne Relic##325883+
|tip They look like small gray statues on the ground around this area.
collect 10 Highborne Relic##168186 |q 55659/1 |goto 78.50,38.25
step
talk Shirelle McFadden##152532
turnin Relics of the Sundering##55659 |goto 78.83,42.44
|next "BFA_World_Quest_Emissaries"
step
label quest-56010
Enter the building |goto Nazjatar/0 60.49,23.43 < 10 |only if walking
accept Runelocked Chest##56010 |goto 59.05,24.35
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 14 blue runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #14# Blue Runes to Unlock the Chest |q 56010/1 |goto 59.05,24.35 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56003
Enter the building |goto Nazjatar/0 60.50,23.43 < 10 |only if walking
accept Runelocked Chest##56003 |goto 59.05,24.35
|tip You will accept this quest automatically.
|polish
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 17 green runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #17# Green Runes to Unlock the Chest |q 56003/1 |goto 59.05,24.35 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56006
Enter the building |goto Nazjatar/0 60.47,23.41 < 5 |only if walking
accept Runelocked Chest##56006 |goto 59.05,24.35
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 18 orange runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #18# Orange Runes to Unlock the Chest |q 56006/1 |goto 59.05,24.35 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56009
Enter the building |goto Nazjatar/0 60.50,23.43 < 10 |only if walking
accept Runelocked Chest##56009 |goto 59.05,24.35
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 19 purple runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #19# Purple Runes to Unlock the Chest |q 56009/1 |goto 59.05,24.35 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56007
Enter the building |goto Nazjatar/0 60.50,23.43 < 10 |only if walking
accept Runelocked Chest##56007 |goto 59.05,24.35
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 17 red runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #17# Red Runes to Unlock the Chest |q 56007/1 |goto 59.05,24.35 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56008
Enter the building |goto Nazjatar/0 60.47,23.41 < 5 |only if walking
accept Runelocked Chest##56008 |goto 59.05,24.35
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 17 yellow runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #17# Yellow Runes to Unlock the Chest |q 56008/1 |goto 59.05,24.35 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56011
accept Runelocked Chest##56011 |goto Nazjatar/0 45.68,29.60
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 25 blue runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #25# Blue Runes to Unlock the Chest |q 56011/1 |goto 45.68,29.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56012
accept Runelocked Chest##56012 |goto Nazjatar/0 45.68,29.60
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 24 green runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #24# Green Runes to Unlock the Chest |q 56012/1 |goto 45.68,29.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56013
accept Runelocked Chest##56013 |goto Nazjatar/0 45.68,29.60
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 20 orange runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #20# Orange Runes to Unlock the Chest |q 56013/1 |goto 45.68,29.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56014
accept Runelocked Chest##56014 |goto Nazjatar/0 45.68,29.60
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 23 purple runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #23# Purple Runes to Unlock the Chest |q 56014/1 |goto 45.68,29.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56015
accept Runelocked Chest##56015 |goto Nazjatar/0 45.68,29.60
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 22 red runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #22# Red Runes to Unlock the Chest |q 56015/1 |goto 45.68,29.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56016
accept Runelocked Chest##56016 |goto Nazjatar/0 45.68,29.60
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 21 yellow runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #21# Yellow Runes to Unlock the Chest |q 56016/1 |goto 45.68,29.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56017
Enter the building |goto Nazjatar/0 37.08,17.77 < 10 |only if walking
accept Runelocked Chest##56017 |goto 37.32,15.90
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 26 blue runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #26# Blue Runes to Unlock the Chest |q 56017/1 |goto 37.32,15.90 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56018
Enter the building |goto Nazjatar/0 37.08,17.77 < 10 |only if walking
accept Runelocked Chest##56018 |goto 37.32,15.90
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 27 green runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #27# Green Runes to Unlock the Chest |q 56018/1 |goto 37.32,15.90 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56019
Enter the building |goto Nazjatar/0 37.07,17.78 < 10 |only if walking
accept Runelocked Chest##56019 |goto 37.32,15.91
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 28 orange runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #28# Orange Runes to Unlock the Chest |q 56019/1 |goto 37.32,15.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56020
Enter the building |goto Nazjatar/0 37.07,17.78 < 10 |only if walking
accept Runelocked Chest##56020 |goto 37.32,15.91
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 29 purple runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #29# Purple Runes to Unlock the Chest |q 56020/1 |goto 37.32,15.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56021
Enter the building |goto Nazjatar/0 37.07,17.79 < 10 |only if walking
accept Runelocked Chest##56021 |goto 37.32,15.92
|tip You will accept this quest automatically.
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 30 red runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #30# Red Runes to Unlock the Chest |q 56021/1 |goto 37.33,15.89 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56022
Enter the building |goto Nazjatar/0 37.07,17.79 < 10 |only if walking
accept Runelocked Chest##56022 |goto 37.33,15.89
|tip You will accept this quest automatically.
|polish
step
click Arcane Device
|tip The objective is to click a rune to swap it with another, destroying 31 yellow runes.
|tip Groups of three or more in a straight light will be destroyed.
Destroy #31# Yellow Runes to Unlock the Chest |q 56022/1 |goto 37.33,15.89 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57331
accept Salvage Operations##57331 |goto Nazjatar/0 42.55,79.34
|tip You will accept this quest automatically.
step
click Waterlogged Allianced Crate##322358+
|tip They look like brown wooden crates on the ground around this area.
collect 8 Battered Supplies##167079 |q 57331/1 |goto 42.55,79.34 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56384
accept Shadowspike Lurker##56384 |goto Nazjatar/0 42.20,14.01
|tip You will accept this quest automatically.
step
clicknpc Shadowspike Lurker##154916
Defeat Shadowspike Lurker |q 56384/1 |goto 42.20,14.01 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55766
talk Bren Inkfin##153006
accept She Sells These Shells##55766 |goto Nazjatar/0 37.92,48.75
step
Follow the path down |goto 38.80,46.89 < 20 |only if walking
click Shiny Seashell##326070+
|tip They look like large white-striped or cone-shaped seashells on the ground around this area.
collect 8 Unmarked Seashell##167538 |q 55766/1 |goto 38.14,42.10
|next "BFA_World_Quest_Emissaries"
step
label quest-56383
accept Silence##56383 |goto Nazjatar/0 58.35,48.09
|tip You will accept this quest automatically.
step
clicknpc Silence##154912
Defeat Silence |q 56383/1 |goto 58.35,48.09 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55701
talk Tracker Ikuto##152737
accept Snapdragon Claws##55701 |goto Nazjatar/0 62.54,51.81
step
Kill Snapdragon enemies around this area
collect 10 Snapdragon Claw##168247 |q 55701/1 |goto 69.79,50.00
step
talk Tracker Ikuto##152737
turnin Snapdragon Claws##55701 |goto 62.54,51.81
|next "BFA_World_Quest_Emissaries"
step
label quest-56057
accept The Soulbinder##56057 |goto Nazjatar/0 84.00,35.91
|tip You will accept this quest automatically.
stickystart "KIll_Moon_Priestess_Liara"
stickystart "Kill_Guardian_Tannin"
step
kill Ulmath##152697 |q 56057/1 |goto 84.00,35.91 |future
step
label "KIll_Moon_Priestess_Liara"
kill Moon Priestess Liara##152729 |q 56057/2 |goto 84.00,35.91 |future
step
label "Kill_Guardian_Tannin"
kill Guardian Tannin##152736 |q 56057/3 |goto 84.00,35.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55899
accept Starseeker of the Shirakess##55899 |goto Nazjatar/0 33.22,39.88
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find her at [68.53,32.77]
And [42.36,68.35]
And [36.02,34.32]
And [63.95,57.08]
And [42.69,41.49]
And [77.56,43.71]
And [33.44,30.02]
step
kill Shirakess Starseeker##153301 |q 55899/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56036
accept A Steamy Situation##56036 |goto Nazjatar/0 43.46,48.26
|tip You will accept this quest automatically.
step
Kill Glimmershell enemies around this area
collect Hefty Glimmershell##168666 |n
click Steam Fissure+
|tip They look like piles of sand on the ground around this area.
Plug #8# Steam Fissures |q 56036/1 |goto 43.46,48.26 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55633
click Sunken Chest
|tip At the bottom of the lake.
accept The Sunken Chest##55633 |goto Nazjatar/0 45.76,83.76
step
click Brass Key##325882
|tip It looks like a tiny key underwater around this area.
collect Brass Key##168167 |q 55633/1 |goto 46.79,84.40
step
click Sunken Chest
|tip At the bottom of the lake.
turnin The Sunken Chest##55633 |goto 45.76,83.76
|next "BFA_World_Quest_Emissaries"
step
label quest-55897
accept Szun, Breaker of Slaves##55897 |goto Nazjatar/0 33.22,39.88
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find him at [68.53,32.77]
And [42.36,68.35]
And [36.02,34.32]
And [63.95,57.08]
And [42.69,41.49]
And [77.56,43.71]
And [33.44,30.02]
step
kill Bonebreaker Szun##153299 |q 55897/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55898
accept Tempest-Speaker Shalan'ali##55898 |goto Nazjatar/0 33.22,39.88
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find it at [68.53,32.77]
And [42.36,68.35]
And [36.02,34.32]
And [63.95,57.08]
And [42.69,41.49]
And [77.56,43.71]
And [33.44,30.02]
step
kill Shalan'ali Stormtongue##153296 |q 55898/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57333
accept Terrace Terrors##57333 |goto Nazjatar/0 37.86,21.54
|tip You will accept this quest automatically.
stickystart "Slay_Naga_57333"
step
click Zanj'ir Weapon Rack##334751+
|tip They look like vases with weapons inside around this area.
collect 10 Zanj'ir Armaments##171250 |q 57333/2 |goto 37.86,21.54 |future
step
label "Slay_Naga_57333"
Kill Zanj'ir enemies around this area
Slay #12# Naga |q 57333/1 |goto 37.86,21.54 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56056
accept Terror of the Depths##56056 |goto Nazjatar/0 42.78,78.16
|tip You will accept this quest automatically.
step
kill Wekemara##152671 |q 56056/1 |goto 42.78,78.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57330
accept Time for Revenge##57330 |goto Nazjatar/0 42.01,79.01
|tip You will accept this quest automatically.
step
Kill Azsh'ari enemies around this area
Slay #15# Naga Forces |q 57330/1 |goto 42.01,79.01 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56078
accept Time to Krill##56078 |goto Nazjatar/0 72.40,48.67
|tip You will accept this quest automatically.
step
clicknpc Murky's Egg##154077
Enter Murky's Egg |q 56078/1 |goto 72.40,48.67 |future
step
Kill Snapdragon enemies around this area
|tip Use the abilities on your vehicle bar.
Slay Snapdragons |q 56078/2 |goto 72.43,48.74
|next "BFA_World_Quest_Emissaries"
step
label quest-55883
talk Ian Langill##153321
accept To Soar Like a Ray##55883 |goto Nazjatar/0 52.75,52.85
step
use the Swim Jet##168425
|tip This will allow you to swim through the air briefly.
click Fathom Egg##326239+
|tip They look like small dark-colored eggs on top of the large coral around this area.
collect 7 Fathom Ray Egg##168421 |q 55883/1 |goto 58.16,52.98
step
talk Ian Langill##153321
turnin To Soar Like a Ray##55883 |goto 52.75,52.85
|next "BFA_World_Quest_Emissaries"
step
label quest-56152
talk Tracker Akatani##154238
accept Turn the Scale##56152 |goto Nazjatar/0 31.28,37.56
step
Kill Hydra enemies around this area
collect 20 Hydra Scale##168519 |q 56152/1 |goto 34.07,42.51
step
talk Tracker Akatani##154238
turnin Turn the Scale##56152 |goto 31.28,37.56
|next "BFA_World_Quest_Emissaries"
step
label quest-55980
talk Krato Flipperfoot##153543
accept Turn the Scale##55980 |goto Najatar/0 34.50,37.92
step
Kill Hydra enemies around this area
collect 20 Hydra Scale##168519 |q 55980/1 |goto 34.07,42.51
step
talk Krato Flipperfoot##153543
turnin Turn the Scale##55980 |goto 34.50,37.92
|next "BFA_World_Quest_Emissaries"
step
label quest-55032
talk Tracker Okaju##150553
accept Unchained Resistance##55032 |goto Nazjatar/0 48.43,52.47
step
clicknpc Makrura Slave##150474+
|tip They look like Makura mining rocks around this area.
Free #8# Makrura Slaves |q 55032/1 |goto 48.15,49.23
step
talk Tracker Okaju##150553
turnin Unchained Resistance##55032 |goto 48.43,52.47
|next "BFA_World_Quest_Emissaries"
step
label quest-55896
accept Undana, Chilling Assassin##55896 |goto Nazjatar/0 33.22,39.88
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find her at [68.53,32.77]
And [42.36,68.35]
And [36.02,34.32]
And [63.95,57.08]
And [42.69,41.49]
And [77.56,43.71]
And [33.44,30.02]
step
kill Undana Frostbarb##153304 |q 55896/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55714
click Void Cache
accept Void Cache##55714 |goto Nazjatar/0 56.25,15.13
step
Kill Shirakess enemies around this area
collect Void Cache Key##168260 |q 55714/1 |goto 59.69,12.62
step
click Void Cache
turnin Void Cache##55714 |goto 56.25,15.13
|next "BFA_World_Quest_Emissaries"
step
label quest-56232
click Void Cache
accept Void Cache##56232 |goto Nazjatar/0 56.25,15.13
step
Kill Shirakess enemies around this area
collect Void Cache Key##168260 |q 56232/1 |goto 59.69,12.62
step
click Void Cache
turnin Void Cache##56232 |goto 56.25,15.13
|next "BFA_World_Quest_Emissaries"
step
label quest-56390
Enter the cave |goto Nazjatar/0 38.19,16.52 < 10 |walk
accept Voltgorger##56390 |goto 37.53,16.70
|tip Inside the cave.
|tip You will accept this quest automatically.
step
clicknpc Voltgorger##154919
|tip Inside the cave.
Defeat Voltgorger |q 56390/1 |goto 37.53,16.70 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55777
click Bounty Board
accept WANTED: Braxicus##55777 |goto Nazjatar/0 39.11,54.19 |only Alliance
accept WANTED: Braxicus##55777 |goto Nazjatar/0 47.97,61.40 |only Horde
step
kill Braxicus##153026
collect Braxicus' Giant Claw##168324 |q 55777/1 |goto 43.60,55.65
|next "BFA_World_Quest_Emissaries"
step
label quest-55770
click Bounty Board
accept WANTED: Commander Sarj'eth##55770 |goto Nazjatar/0 39.11,54.19
step
Enter the building |goto 43.24,21.79 < 10 |only if walking
kill Commander Sarj'eth##152962
|tip Inside the building.
collect Commander Sarj'eth's Head##168317 |q 55770/1 |goto 44.18,20.41
|next "BFA_World_Quest_Emissaries"
step
label quest-56223
click Bounty Board
accept WANTED: Commander Sarj'eth##56223 |goto Nazjatar/0 47.97,61.40
step
Enter the building |goto 43.24,21.79 < 10 |only if walking
kill Commander Sarj'eth##152962
|tip Inside the building.
collect Commander Sarj'eth's Head##168317 |q 56223/1 |goto 44.18,20.41
|next "BFA_World_Quest_Emissaries"
step
label quest-55776
click Bounty Board
accept WANTED: Emorneth##55776 |goto Nazjatar/0 39.11,54.19
step
kill Emorneth##153025 |q 55776/1 |goto 59.29,50.21
|next "BFA_World_Quest_Emissaries"
step
label quest-55776
click Bounty Board
accept WANTED: Emorneth##55776 |goto Nazjatar/0 47.97,61.40
step
kill Emorneth##153025 |q 55776/1 |goto 59.29,50.21
|next "BFA_World_Quest_Emissaries"
step
label quest-55773
click Bounty Board
accept WANTED: Gler'thogg##55773 |goto Nazjatar/0 39.11,54.19
step
kill Gler'thogg##152968
collect Eye of Gler'thogg##168321 |q 55773/1 |goto 67.75,23.30
|next "BFA_World_Quest_Emissaries"
step
label quest-56226
click Bounty Board
accept WANTED: Gler'thogg##56226 |goto Najatar/0 47.97,61.40
step
kill Gler'thogg##152968
collect Eye of Gler'thogg##168321 |q 56226/1 |goto 67.75,23.30
|next "BFA_World_Quest_Emissaries"
step
label quest-55775
click Bounty Board
accept WANTED: Haggronar##55775 |goto Nazjatar/0 39.11,54.19 |only Alliance
accept WANTED: Haggronar##55775 |goto Nazjatar/0 47.97,61.40 |only Horde
step
kill Haggronar##152984
collect Haggronar's Head##168323 |q 55775/1 |goto 72.65,35.79
|next "BFA_World_Quest_Emissaries"
step
label quest-55774
click Bounty Board
accept WANTED: Inquisitor Ithriza##55774 |goto Nazjatar/0 39.11,54.19
step
Enter the cave |goto 48.30,47.50 < 10 |walk
kill Inquisitor Ithriza##152971
|tip Inside the cave.
collect Inquisitor Ithriza's Head##168322 |q 55774/1 |goto 48.22,46.69
|next "BFA_World_Quest_Emissaries"
step
label quest-56227
click Bounty Board
accept WANTED: Inquisitor Ithriza##56227 |goto Nazjatar/0 47.97,61.40
step
Enter the cave |goto 48.30,47.50 < 10 |walk
kill Inquisitor Ithriza##152971
|tip Inside the cave.
collect Inquisitor Ithriza's Head##168322 |q 56227/1 |goto 48.22,46.69
|next "BFA_World_Quest_Emissaries"
step
label quest-55772
click Bounty Board
accept WANTED: Lady Narjiss##55772 |goto Nazjatar/0 39.11,54.19
step
kill Lady Narjiss##152966
collect Lady Narjiss' Head##168319 |q 55772/1 |goto 46.07,30.05
|next "BFA_World_Quest_Emissaries"
step
label quest-56225
click Bounty Board
accept WANTED: Lady Narjiss##56225 |goto Nazjatar/0 47.97,61.40
step
kill Lady Narjiss##152966
collect Lady Narjiss' Head##168319 |q 56225/1 |goto 46.07,30.05
|next "BFA_World_Quest_Emissaries"
step
label quest-55750
click Bounty Board
accept WANTED: Lady Naz'jess##55750 |goto Nazjatar/0 39.11,54.19
step
kill Lady Naz'jess##152879
collect Lady Naz'jess' Head##168265 |q 55750/1 |goto 36.38,16.94
|next "BFA_World_Quest_Emissaries"
step
label quest-56222
click Bounty Board
accept WANTED: Lady Naz'jess##56222 |goto Najatar/0 47.97,61.40
step
kill Lady Naz'jess##152879
collect Lady Naz'jess' Head##168265 |q 56222/1 |goto 36.38,16.94
|next "BFA_World_Quest_Emissaries"
step
label quest-55771
click Bounty Board
accept WANTED: Lord Ha'kass##55771 |goto Nazjatar/0 39.11,54.19
step
kill Lord Ha'kass##152963
collect Lord Ha'kass' Head##168318 |q 55771/1 |goto 43.30,36.97
|next "BFA_World_Quest_Emissaries"
step
label quest-56224
click Bounty Board
accept WANTED: Lord Ha'kass##56224 |goto Najatar/0 47.97,61.40
step
kill Lord Ha'kass##152963
collect Lord Ha'kass' Head##168318 |q 56224/1 |goto 43.30,36.97
|next "BFA_World_Quest_Emissaries"
step
label quest-56000
Enter the underwater cave |goto Nazjatar/0 27.06,30.22 < 15 |walk
talk King Mrgl-Mrgl##153884
|tip Inside the cave.
accept We've Got Crabs!##56000 |goto 25.47,26.40
step
clicknpc Crackleclaw Crab##153818+
|tip They look like small red crabs on the beach around this area.
collect 12 Crackleclaw Crab##168628 |q 56000/1 |goto 28.03,30.99
step
Enter the underwater cave |goto 27.06,30.22 < 15 |walk
talk King Mrgl-Mrgl##153884
|tip Inside the cave.
turnin We've Got Crabs!##56000 |goto 25.47,26.40
|next "BFA_World_Quest_Emissaries"
step
label quest-56264
Enter the underwater cave |goto Nazjatar/0 27.06,30.22 < 15 |walk
talk King Mrgl-Mrgl##153884
|tip Inside the cave.
accept We've Got Crabs!##56264 |goto 25.47,26.40
step
clicknpc Crackleclaw Crab##153818+
|tip They look like small red crabs on the beach around this area.
collect 12 Crackleclaw Crab##168628 |q 56264/1 |goto 28.03,30.99
step
Enter the underwater cave |goto 27.06,30.22 < 15 |walk
talk King Mrgl-Mrgl##153884
|tip Inside the cave.
turnin We've Got Crabs!##56264 |goto 25.47,26.40
|next "BFA_World_Quest_Emissaries"
step
label quest-56154
talk Seeker Anagi##154241
accept Where They Hide##56154 |goto Nazjatar/0 41.30,58.36
step
use the Fresh Sponge##168432
|tip Follow the green trail.
kill 5 Zanj'ir Assassin##153352 |q 56154/1 |goto 44.33,61.17
step
talk Seeker Anagi##154241
turnin Where They Hide##56154 |goto 41.30,58.36
|next "BFA_World_Quest_Emissaries"
step
label quest-55872
talk Scout Marlin##153364
accept Where They Hide##55872 |goto Nazjatar/0 45.63,58.50
step
use the Fresh Sponge##168432
|tip Follow the green trail.
kill 5 Zanj'ir Assassin##153352 |q 55872/1 |goto 44.33,61.17
step
talk Scout Marlin##153364
turnin Where They Hide##55872 |goto 45.63,58.51
|next "BFA_World_Quest_Emissaries"
step
label quest-56795
collect 10 Abyssal-Fried Rissole##168311 |q 56795/1 |future
step
accept Work Order: Abyssal-Fried Rissole##56795 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Abyssal-Fried Rissole##56795 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56800
collect 10 Abyssal-Fried Rissole##168311 |q 56800/1 |future
step
accept Work Order: Abyssal-Fried Rissole##56800 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Abyssal-Fried Rissole##56800 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56794
collect 10 Baked Port Tato##168313 |q 56794/1 |future
step
accept Work Order: Baked Port Tato##56794 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Baked Port Tato##56794 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56801
collect 10 Baked Port Tato##168313 |q 56801/1 |future
step
accept Work Order: Baked Port Tato##56801 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Baked Port Tato##56801 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56798
collect 10 Bil'Tong##168314 |q 56798/1 |future
step
accept Work Order: Bil'Tong##56798 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Bil'Tong##56798 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56797
collect 10 Bil'Tong##168314 |q 56797/1 |future
step
accept Work Order: Bil'Tong##56797 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Bil'Tong##56797 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56551
collect 20 Cragscale##168650 |q 56551/1 |future
step
accept Work Order: Cragscale##56551 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Cragscale##56551 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56556
collect 20 Cragscale##168650 |q 56556/1 |future
step
accept Work Order: Cragscale##56556 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Cragscale##56556 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56549
collect 20 Dredged Leather##168649 |q 56549/1 |future
step
accept Work Order: Dredged Leather##56549 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Dredged Leather##56549 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56555
collect 20 Dredged Leather##168649 |q 56555/1 |future
step
accept Work Order: Dredged Leather##56555 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Dredged Leather##56555 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56826
collect 2 Enchant Weapon - Force Multiplier##168596 |q 56826/1 |future
step
accept Work Order: Enchant Weapon - Force Multiplier##56826 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Enchant Weapon - Force Multiplier##56826 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56821
collect 2 Enchant Weapon - Machinist's Brilliance##168593 |q 56821/1 |future
step
accept Work Order: Enchant Weapon - Machinist's Brilliance##56821 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Enchant Weapon - Machinist's Brilliance##56821 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56824
collect 2 Enchant Weapon - Machinist's Brilliance##168593 |q 56824/1 |future
step
accept Work Order: Enchant Weapon - Machinist's Brilliance##56824 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Enchant Weapon - Machinist's Brilliance##56824 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56818
collect 2 Enchant Weapon - Naga Hide##168598 |q 56818/1 |future
step
accept Work Order: Enchant Weapon - Naga Hide##56818 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Enchant Weapon - Naga Hide##56818 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56827
collect 2 Enchant Weapon - Naga Hide##168598 |q 56827/1 |future
step
accept Work Order: Enchant Weapon - Naga Hide##56827 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Enchant Weapon - Naga Hide##56827 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56551
collect 2 Enchant Weapon - Oceanic Restoration##168592 |q 56551/1 |future
step
accept Work Order: Enchant Weapon - Oceanic Restoration##56551 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Enchant Weapon - Oceanic Restoration##56551 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56825
collect 2 Enchant Weapon - Oceanic Restoration##168592 |q 56825/1 |future
step
accept Work Order: Enchant Weapon - Oceanic Restoration##56825 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Enchant Weapon - Oceanic Restoration##56825 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56796
collect 10 Fragrant Kakavia##168312 |q 56796/1 |future
step
accept Work Order: Fragrant Kakavia##56796 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Fragrant Kakavia##56796 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56799
collect 10 Fragrant Kakavia##168312 |q 56799/1 |future
step
accept Work Order: Fragrant Kakavia##56799 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Fragrant Kakavia##56799 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56570
collect 2 Greater Flask of the Currents##168651 |q 56570/1 |future
step
accept Work Order: Greater Flask of the Currents##56570 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Greater Flask of the Currents##56570 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56770
collect 2 Greater Flask of the Currents##168651 |q 56770/1 |future
step
accept Work Order: Greater Flask of the Currents##56770 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Greater Flask of the Currents##56770 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56772
collect 2 Greater Flask of Endless Fathoms##168652 |q 56772/1 |future
step
accept Work Order: Greater Flask of Endless Fathoms##56772 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Greater Flask of Endless Fathoms##56772 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56767
collect 2 Greater Flask of Endless Fathoms##168652 |q 56767/1 |future
step
accept Work Order: Greater Flask of Endless Fathoms##56767 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Greater Flask of Endless Fathoms##56767 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56773
collect 2 Greater Flask of the Vast Horizon##168653 |q 56773/1 |future
step
accept Work Order: Greater Flask of the Vast Horizon##56773 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Greater Flask of the Vast Horizon##56773 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56769
collect 2 Greater Flask of the Vast Horizon##168653 |q 56769/1 |future
step
accept Work Order: Greater Flask of the Vast Horizon##56769 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Greater Flask of the Vast Horizon##56769 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56774
collect 2 Greater Flask of the Undertow##168654 |q 56774/1 |future
step
accept Work Order: Greater Flask of the Undertow##56774 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Greater Flask of the Undertow##56774 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56768
collect 2 Greater Flask of the Undertow##168654 |q 56768/1 |future
step
accept Work Order: Greater Flask of the Undertow##56768 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Greater Flask of the Undertow##56768 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56793
collect 10 Mech-Dowel's "Big Mech"##168310 |q 56793/1 |future
step
accept Work Order: Mech-Dowel's "Big Mech"##56793 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Mech-Dowel's "Big Mech"##56793 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56802
collect 10 Mech-Dowel's "Big Mech"##168310 |q 56802/1 |future
step
accept Work Order: Mech-Dowel's "Big Mech"##56802 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Mech-Dowel's "Big Mech"##56802 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56554
collect 20 Osmenite Ore##168185 |q 56554/1 |future
step
accept Work Order: Osmenite Ore##56554 |goto Nazjatar/0 38.02,55.70
|tip You will accept this quest automatically.
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Work Order: Osmenite Ore##56554 |goto 38.02,55.70
|next "BFA_World_Quest_Emissaries"
step
label quest-56546
collect 20 Osmenite Ore##168185 |q 56546/1 |future
step
accept Work Order: Osmenite Ore##56546 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Osmenite Ore##56546 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-56545
collect 20 Zin'anthid##168487 |q 56545/1 |future
step
accept Work Order: Zin'anthid##56545 |goto Nazjatar/0 51.00,65.59
|tip You will accept this quest automatically.
step
talk Atolia Seapearl##154002
|tip Inside the cave.
turnin Work Order: Zin'anthid##56545 |goto 51.00,65.59
|next "BFA_World_Quest_Emissaries"
step
label quest-55886
accept The Zanj'ir Brutalizer##55886 |goto Nazjatar/0 33.22,39.88
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find it at [68.53,32.77]
And [42.36,68.35]
And [36.02,34.32]
And [63.95,57.08]
And [42.69,41.49]
And [77.56,43.71]
And [33.44,30.02]
step
kill Zanj'ir Brutalizer##153305 |q 55886/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55894
accept Zoko, Her Iron Defender##55894 |goto Nazjatar/0 33.22,39.88
|tip This world quest spawns in numerous locations.
|tip You will accept this quest automatically.
You can also find it at [68.53,32.77]
And [42.36,68.35]
And [36.02,34.32]
And [63.95,57.08]
And [42.69,41.49]
And [77.56,43.71]
And [33.44,30.02]
step
kill Iron Zoko##153300 |q 55894/1 |future
|next "BFA_World_Quest_Emissaries"
step
label "BFA_World_Quest_Emissaries"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Stormsong Valley World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Stormsong Valley, Kul Tiras.",
condition_suggested=function() return level == 50 and completedq(51918) end,
condition_valid=function() return level >= 50 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=50.0,
worldquestzone=942,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-54647
accept Ale Intent##54647 |goto Stormsong Valley/0 47.13,47.90
|tip You will accept this quest automatically.
step
click Mole Machine
Enter the Mole Machine |q 54647/1 |goto 47.13,47.90 |future
step
clicknpc Aleforged Warbringer##148608
Activate the Aleforged Warbringer |q 54647/2 |goto 47.13,47.90 |future
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay Mag'har Forces |q 54647/3 |goto 48.45,23.39 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52940
accept Arms Deal##52940 |goto Stormsong Valley/0 69.34,51.41
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Tidal Blade##280925+
|tip They look like swords around this area.
click Thundershot Rifle##280927
|tip They look like double-barrel rifles around this area.
click Harpoons##280545
|tip They look like a rack of harpoons on the ground around this area.
click Abyssal Spear##
|tip They look like single barbed spears around this area.
collect 20 Stormfused Weapon##162629 |q 52940/1 |goto 69.34,51.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51855
accept A Pirate's Life For Me##51855 |goto Stormsong Valley/0 38.18,56.83
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect Irontide Key##160895+ |n
click Irontide Cage##291196+
|tip They look like wooden cages on the ground around this area.
Rescue #6# Children |q 51855/1 |goto 38.18,56.83 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52165
accept Automated Chaos##52165 |goto Stormsong Valley/0 36.53,33.64
|tip You will accept this quest automatically.
step
talk Eddie Fixit##140315
Tell him _"Begin pet battle."_
Defeat Eddie Fixit |q 52165/1 |goto 36.53,33.64 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53768
accept Azerfight!##53768 |goto Stormsong Valley/0 47.62,55.88
|tip You will accept this quest automatically.
step
click Unstable Azerite Flare
Gain the Unstable Azerite Flare Buff |havebuff spell:282604 |goto 47.62,55.88 |q 53768 |future
step
Kill enemies around this area
Annihilate the Horde! |q 53768/1 |goto 47.80,53.88 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53769
accept Azerfight!##53769 |goto Stormsong Valley/0 47.62,55.88
|tip You will accept this quest automatically.
step
click Unstable Azerite Flare
Gain the Unstable Azerite Flare Buff |havebuff spell:282604 |goto 47.62,55.88 |q 53769 |future
step
Kill enemies around this area
Slaughter the Alliance! |q 53769/1 |goto 47.80,53.88 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51617
Follow the path up |goto Stormsong Valley/0 73.24,77.11 < 30 |only if walking
accept Azerite Empowerment##51617 |goto Stormsong Valley/0 70.80,85.80
|tip You will accept this quest automatically.
step
kill Tidesage Morris##138332 |q 51617/1 |goto 70.80,85.80 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52871
accept Azerite Empowerment##52871 |goto Stormsong Valley/0 72.85,51.09
|tip You will accept this quest automatically.
step
Enter the cave |goto 72.85,51.09 < 10 |walk
kill Herald Zaxuthril##141985 |q 52871/1 |goto 72.19,52.10 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51618
Follow the path up |goto Stormsong Valley/0 73.24,77.11 < 30 |only if walking
accept Azerite Madness##51618 |goto Stormsong Valley/0 71.17,85.40
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Heart of Azeroth" ability near their corpses.
|tip It appears as a button on the screen.
Absorb Azerite from Defeated Elementals |q 51618/1 |goto 70.77,85.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52873
accept Azerite Mining##52873 |goto Stormsong Valley/0 36.22,67.50
|tip You will accept this quest automatically.
step
Enter the cave |goto 36.22,67.50 < 5 |only if walking
Kill enemies around this area
|tip Inside the cave.
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area inside the cave.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area inside the cave.
Recover Azerite |q 52873/1 |goto 35.99,69.93 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51644
Follow the path up |goto Stormsong Valley/0 73.24,77.11 < 30 |only if walking
accept Azerite Mining##51644 |goto Stormsong Valley/0 71.17,85.40
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51644/1 |goto 70.77,85.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51623
Follow the path up |goto Stormsong Valley/0 73.24,77.11 < 30 |only if walking
accept Azerite Wounds##51623 |goto Stormsong Valley/0 73.04,82.52
|tip You will accept this quest automatically.
step
Heal #5# Azeroth Wounds |q 51623/1 |goto 70.77,85.33 |future
|tip Use the "Heart of Azeroth" ability.
|tip Use it near the blue glowing spots with sparks flying out of them on the ground around this area.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-51828
accept Burning the Legion##51828 |goto Stormsong Valley/0 50.89,26.73
|tip You will accept this quest automatically.
stickystart "Burn_Barricades_51828"
stickystart "Slay_7th_Legion_Forces_51828"
step
Run up the stairs |goto 50.89,26.73 < 15 |only if walking
Enter the building |goto 50.43,25.60 < 10 |walk
kill Commander Alvingham##139141 |q 51828/3 |goto 50.64,25.26 |future
|tip Inside the building.
step
label "Burn_Barricades_51828"
click Barricade+
|tip They look like large piles of wooden rubble on the ground around this area.
Burn #5# Barricades |q 51828/2 |goto 51.35,26.31 |future
step
label "Slay_7th_Legion_Forces_51828"
Kill 7th Legion enemies around this area
Slay #10# 7th Legion Forces |q 51828/1 |goto 51.35,26.31 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53752
accept Bombs Away##53752 |goto Stormsong Valley/0 45.38,51.32
|tip You will accept this quest automatically.
stickystart "Slay_Alliance_Soldiers_53752"
step
kill Lieutenant Williams##131037 |q 53752/1 |goto 46.54,50.49 |future
step
label "Slay_Alliance_Soldiers_53752"
Kill enemies around this area
Slay #12# Alliance Soldiers |q 53752/2 |goto 45.38,51.32 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51639
accept Beachhead##51639 |goto Stormsong Valley/0 30.34,56.81
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##144359
Tell her _"I am ready."_
Speak to Scrollsage Nola |q 51639/1 |goto 30.34,56.81 |future
step
kill Vicious Albatross##138186+
|tip They look like birds flying in the air around this area.
|tip Use the ability on your action bar.
kill Armored Claw##138242+
|tip They look like small crabs in the water.
|tip Use the ability on your action bar.
Help #12# Juvenile Turtles Reach the Ocean |q 51639/2 |future
|tip The turtles will slowly walk into the water.
|tip You must protect them from the birds and crabs.
|next "BFA_World_Quest_Emissaries"
step
label quest-53285
accept Blooming Star Moss##53285 |goto Stormsong Valley/0 64.12,61.54
|tip You will accept this quest automatically.
step
clicknpc Blooming Star Moss##143726
Gather a Blooming Star Moss |q 53285/1 |goto 64.12,61.54 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52117
accept Briarback Mountain##52117 |goto Stormsong Valley/0 48.11,70.27
|tip You will accept this quest automatically.
stickystart "Borrow_Battle_Piglets_52117"
step
Follow the path |goto 46.96,71.78 < 15 |only if walking
Follow the path up |goto 45.94,73.06 < 15 |only if walking
Follow the path up |goto 46.19,74.33 < 15 |only if walking
click Stormsong Supplies##292557+
|tip They look like brown crates on the ground around this area.
|tip You can find more inside the caves around this area.
collect 10 Stormsong Supplies##161123 |q 52117/1 |goto 45.85,76.75 |future
step
label "Borrow_Battle_Piglets_52117"
clicknpc Rooting Battle-Piglet##139903+
|tip They look like tiny pigs walking on the ground around this area.
|tip You can find more inside the caves around this area.
Borrow #8# Battle-Piglets |q 52117/2 |goto 45.85,76.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54442
accept Beast Tamer Watkins##54442 |goto Stormsong Valley/0 35.00,60.31
|tip You will accept this quest automatically.
step
kill Beast Tamer Watkins##148075 |q 54442/1 |goto 35.00,60.31 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52330
accept Beehemoth##52330 |goto Stormsong Valley/0 68.16,74.84
|tip You will accept this quest automatically.
|tip It looks like a large black bee that flies around this area.
|tip It will appear on your minimap as a yellow dot.
step
kill Beehemoth##134147 |q 52330/1 |goto 68.16,74.84 |future
|tip It looks like a large black bee that flies around this area.
|tip It will appear on your minimap as a yellow dot.
|next "BFA_World_Quest_Emissaries"
step
label quest-52865
accept Blockade Runner##52865 |goto Stormsong Valley/0 57.12,83.03
|tip You will accept this quest automatically.
step
talk Stormsong Sentinel##137985
Tell them _"Open this pass at once."_
|tip Some of them will attack you.
Route #8# Stormsong Blockades |q 52865/1 |goto 57.57,83.61 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53286
accept Blooming Siren's Sting##53286 |goto Stormsong Valley/0 68.57,41.38
|tip You will accept this quest automatically.
step
click Blooming Siren's Sting##143727
Gather a Blooming Siren's Sting |q 53286/1 |goto 68.57,41.38 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52063
accept Boarder Patrol##52063 |goto Stormsong Valley/0 48.21,70.16
|tip You will accept this quest automatically.
step
clicknpc Ornery Battleboar##139707
Ride the Ornery Battleboar |q 52063/1 |goto 48.21,70.16 |future
step
Kill enemies around this area
|tip Run through them while riding the boar.
Slay #50# Briaback Quilboars |q 52063/2 |goto 45.43,72.22 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52045
accept Boarder Patrol##52045 |goto Stormsong Valley/0 48.21,70.16
|tip You will accept this quest automatically.
step
clicknpc Ornery Battleboar##139707
Ride the Ornery Battleboar |q 52045/1 |goto 48.21,70.16 |future
step
Kill enemies around this area
|tip Run through them while riding the boar.
Slay #50# Briaback Quilboars |q 52045/2 |goto 45.43,72.22 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52180
accept A Brennadam Shame##52180 |goto Stormsong Valley/0 55.97,64.30
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Sapper Charge##103512+
|tip They look like metal spikey bombs that appear on the ground around this area.
|tip They have a timer counting down to explosion.
|tip Click them before they explode.
click Horde Mortar##292815+
|tip They look like small silver and red cannons on the ground around this area.
Defend Brennadam |q 52180/1 |goto 55.97,64.30 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52071
accept Briarback Mountain##52071 |goto Stormsong Valley/0 48.11,70.27
|tip You will accept this quest automatically.
stickystart "Borrow_Battle_Piglets_52071"
step
Follow the path |goto 46.96,71.78 < 15 |only if walking
Follow the path up |goto 45.94,73.06 < 15 |only if walking
Follow the path up |goto 46.19,74.33 < 15 |only if walking
click Stormsong Supplies##292557+
|tip They look like brown crates on the ground around this area.
|tip You can find more inside the caves around this area.
collect 10 Stormsong Supplies##161123 |q 52071/1 |goto 45.85,76.75 |future
step
label "Borrow_Battle_Piglets_52071"
clicknpc Rooting Battle-Piglet##139903+
|tip They look like tiny pigs walking on the ground around this area.
|tip You can find more inside the caves around this area.
Borrow #8# Battle-Piglets |q 52071/2 |goto 45.85,76.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55341
accept Calligraphy##55341 |goto Stormsong Valley/0 34.97,47.99
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##151524
Tell him _"I am ready."_
Speak to Scrollsage Nola |q 55341/1 |goto 34.97,47.99 |future
step
Complete the Tracing Challenge |q 55341/2 |goto 34.97,47.99 |future
|tip Run around, tracing the pattern that appears.
|next "BFA_World_Quest_Emissaries"
step
label quest-53857
accept Cap'n Gorok##53857 |goto Stormsong Valley/0 37.67,47.50
|tip You will accept this quest automatically.
step
kill Cap'n Gorok##145415 |q 53857/1 |goto 37.67,47.50 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53106
accept Censership##53106 |goto Stormsong Valley/0 78.94,57.41
|tip You will accept this quest automatically.
step
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53106/1 |goto 78.94,57.41 |count 1 |future
step
Enter the cave |goto 80.48,56.63 < 20 |walk
use the Cleansing Thurible##163212
|tip Inside the cave.
Cleanse the Source of Corruption |q 53106/1 |goto 79.72,55.74 |count 2 |future
step
use the Cleansing Thurible##163212
|tip Inside the cave.
Cleanse the Source of Corruption |q 53106/1 |goto 79.97,55.04 |count 3 |future
step
Follow the path up |goto 81.17,56.21 < 20 |only if walking
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53106/1 |goto 82.57,53.41 |count 4 |future
step
Enter the building |goto 83.85,53.93 < 10 |walk
use the Cleansing Thurible##163212
|tip Inside the building.
Cleanse the Source of Corruption |q 53106/1 |goto 84.47,54.47 |count 5 |future
step
use the Cleansing Thurible##163212
|tip Inside the building.
Cleanse the Source of Corruption |q 53106/1 |goto 84.60,53.80 |count 6 |future
step
Leave the building |goto 84.40,51.87 < 10 |walk
Follow the path down |goto 82.13,48.15 < 20 |only if walking
Enter the building |goto 82.11,44.52 < 10 |walk
use the Cleansing Thurible##163212
|tip Inside the building.
Cleanse the Source of Corruption |q 53106/1 |goto 82.79,44.45 |count 7 |future
step
use the Cleansing Thurible##163212
|tip Inside the building.
Cleanse the Source of Corruption |q 53106/1 |goto 82.26,43.93 |count 8 |future
step
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53106/1 |goto 81.20,45.47 |count 9 |future
step
Jump down here |goto 80.99,45.83 < 20 |only if walking
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53106/1 |goto 80.56,47.18 |count 10 |future
step
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53106/1 |goto 81.18,49.10 |count 11 |future
step
Jump down here |goto 81.44,51.44 < 15 |only if walking
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53106/1 |goto 81.04,51.97 |count 12 |future
step
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53106/1 |goto 80.42,50.73 |count 13 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53343
accept Censership##53343 |goto Stormsong Valley/0 78.94,57.41
|tip You will accept this quest automatically.
step
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53343/1 |goto 78.94,57.41 |count 1 |future
step
Enter the cave |goto 80.48,56.63 < 20 |walk
use the Cleansing Thurible##163212
|tip Inside the cave.
Cleanse the Source of Corruption |q 53343/1 |goto 79.72,55.74 |count 2 |future
step
use the Cleansing Thurible##163212
|tip Inside the cave.
Cleanse the Source of Corruption |q 53343/1 |goto 79.97,55.04 |count 3 |future
step
Follow the path up |goto 81.17,56.21 < 20 |only if walking
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53343/1 |goto 82.57,53.41 |count 4 |future
step
Enter the building |goto 83.85,53.93 < 10 |walk
use the Cleansing Thurible##163212
|tip Inside the building.
Cleanse the Source of Corruption |q 53343/1 |goto 84.47,54.47 |count 5 |future
step
use the Cleansing Thurible##163212
|tip Inside the building.
Cleanse the Source of Corruption |q 53343/1 |goto 84.60,53.80 |count 6 |future
step
Leave the building |goto 84.40,51.87 < 10 |walk
Follow the path down |goto 82.13,48.15 < 20 |only if walking
Enter the building |goto 82.11,44.52 < 10 |walk
use the Cleansing Thurible##163212
|tip Inside the building.
Cleanse the Source of Corruption |q 53343/1 |goto 82.79,44.45 |count 7 |future
step
use the Cleansing Thurible##163212
|tip Inside the building.
Cleanse the Source of Corruption |q 53343/1 |goto 82.26,43.93 |count 8 |future
step
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53343/1 |goto 81.20,45.47 |count 9 |future
step
Jump down here |goto 80.99,45.83 < 20 |only if walking
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53343/1 |goto 80.56,47.18 |count 10 |future
step
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53343/1 |goto 81.18,49.10 |count 11 |future
step
Jump down here |goto 81.44,51.44 < 15 |only if walking
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53343/1 |goto 81.04,51.97 |count 12 |future
step
use the Cleansing Thurible##163212
Cleanse the Source of Corruption |q 53343/1 |goto 80.42,50.73 |count 13 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52882
accept Controlled Burn##52882 |goto Stormsong Valley/0 62.04,63.99
|tip You will accept this quest automatically.
stickystart "Kill_Rewired_Harvesters_52882"
step
click Treated Shipwood+
|tip They look like piles of wooden boards on the ground around this area.
Burn #6# Piles of Treated Shipwood |q 52882/2 |goto 62.04,63.99 |future
step
label "Kill_Rewired_Harvesters_52882"
kill 6 Rewired Harvester##130131 |q 52882/1 |goto 62.04,63.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52004
Follow the path up |goto Stormsong Valley/0 44.60,48.57 < 15 |only if walking
accept Counter Intelligence##52004 |goto Stormsong Valley/0 44.17,46.95
|tip You will accept this quest automatically.
stickystart "Kill_Stormwind_Operatives_52004"
step
kill Huntress Arnithal##139518 |q 52004/2 |goto 46.10,45.79 |future
|tip She walks around this area.
step
label "Kill_Stormwind_Operatives_52004"
kill 4 Stormwind Operative##139525 |q 52004/1 |goto 45.22,46.26 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51782
accept Captain Razorspine##51782 |goto Stormsong Valley/0 46.40,64.53
|tip You will accept this quest automatically.
step
Follow the path down |goto 46.40,64.53 < 15 |only if walking
Enter the cave |goto 47.35,65.37 < 10 |walk
kill Captain Razorspine##130897 |q 51782/1 |goto 47.22,66.01 |future
|tip He walks around this area inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51901
accept Crushtacean##51901 |goto Stormsong Valley/0 51.86,55.29
|tip You will accept this quest automatically.
step
Enter the cave |goto 51.86,55.29 < 10 |walk
kill Crushtacean##136183 |q 51901/1 |goto 51.25,55.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52325
accept Captured Evil##52325 |goto Stormsong Valley/0 77.17,29.16
|tip You will accept this quest automatically.
step
talk Leana Darkwind##141046
Tell her _"Begin pet battle."_
Defeat Leana Darkwind |q 52325/1 |goto 77.17,29.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52310
accept Corrupted Tideskipper##52310 |goto Stormsong Valley/0 67.11,49.71
|tip You will accept this quest automatically.
step
kill Corrupted Tideskipper##139968 |q 52310/1 |goto 67.11,49.71 |future
|tip It swims underwater around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-52306
accept Croaker##52306 |goto Stormsong Valley/0 62.93,32.83
|tip You will accept this quest automatically.
step
kill Croaker##140938 |q 52306/1 |goto 62.93,32.83 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53025
accept The Culling##53025 |goto Stormsong Valley/0 73.00,23.71
|tip You will accept this quest automatically.
stickystart "Slay_Abyssal_Forces_53025"
step
kill Brother Haines##142516 |q 53025/2 |goto 73.00,23.71 |future
|tip Underwater.
step
label "Slay_Abyssal_Forces_53025"
Enter the building |goto 74.45,28.33 < 10 |only if walking
Leave the building |goto 74.31,30.63 < 10 |only if walking
Kill enemies around this area
Slay #25# Abyssal Forces |q 53025/1 |goto 73.14,30.67 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55301
accept The Cycle of Life##55301 |goto Stormsong Valley/0 30.34,56.82
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##151474
Speak to Scrollsage Nola |q 55301/1 |goto 30.34,56.82 |future
step
talk Scrollsage Nola##151474
Tell him _"I am ready."_
Start the Game |invehicle |q 55301 |goto 30.34,56.82 |future
step
Kill Juvenile Turtle enemies around this area
|tip Use the "Move Left" and "Move Right" abilities to avoid the incoming attacks and reach turtles.
|tip Use the "Throw Turtle Shell" ability to throw a shell, killing all turtles in a straight line.
Stop #20# Juvenile Turtles from Raching the Ocean |q 55301/2 |goto 30.34,56.82 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51777
accept Dagrus the Scorned##51777 |goto Stormsong Valley/0 67.86,39.83
|tip You will accept this quest automatically.
step
kill Dagrus the Scorned##134897 |q 51777/1 |goto 67.86,39.83 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51778
accept Deepfang##51778 |goto Stormsong Valley/0 52.84,51.39
|tip You will accept this quest automatically.
step
kill Deepfang##139385 |q 51778/1 |goto 52.84,51.39 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-53317
accept Dense Storm Silver##53317 |goto Stormsong Valley/0 25.39,65.06
|tip You will accept this quest automatically.
step
click Dense Storm Silver Deposit##297471
collect Dense Storm Silver##163629 |q 53317/1 |goto 25.39,65.06 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53804
accept Dinomancer Zakuru##53804 |goto Stormsong Valley/0 34.70,58.19
|tip You will accept this quest automatically.
step
kill Dinomancer Zakuru##145278 |q 53804/1 |goto 34.70,58.19 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53318
accept Ductile Platinum##53318 |goto Stormsong Valley/0 49.22,53.85
|tip You will accept this quest automatically.
step
click Ductile Platinum Deposit##297474
collect Ductile Platinum##163630 |q 53318/1 |goto 49.22,53.85 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52947
accept Ettin Outta Here##52947 |goto Stormsong Valley/0 30.34,66.80
|tip You will accept this quest automatically.
step
talk Marie Davenport##136658
|tip Inside the building.
Tell her _"I heard you needed some help with the Ettins."_
Talk to Marie Davenport |q 52947/1 |goto 30.34,66.80 |future
stickystart "Slay_Ettin_Stoneflingers_52947"
step
Follow the path up |goto 31.35,68.03 < 20 |only if walking
Follow the path up |goto 37.56,75.29 < 20 |only if walking
kill Throgg##142276 |q 52947/3 |goto 39.34,76.04 |future
|tip Use the "Flour Bomb" ability.
|tip It appears as a button on the screen.
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
|tip Pull him to this spot, so you can use the ability.
step
label "Slay_Ettin_Stoneflingers_52947"
Kill Ettin enemies around this area
|tip Use the "Flour Bomb" ability.
|tip It appears as a button on the screen.
Slay #10# Ettin Stoneflingers |q 52947/2 |goto 36.65,74.97 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51996
accept Earthcaller's Abode##51996 |goto Stormsong Valley/0 50.02,56.24
|tip You will accept this quest automatically.
stickystart "Destroy_Binding_Crystals_51996"
stickystart "Kill_Restless_Stones_51996"
step
kill Earthcaller Gulgort##134775 |q 51996/1 |goto 50.02,56.24 |future
|tip At the top of the hill.
step
label "Destroy_Binding_Crystals_51996"
click Binding Crystals##139451
|tip They look like giant purple crystals hovering above the ground around this area.
Destroy #6# Binding Crystals |q 51996/3 |goto 48.88,54.99 |future
step
label "Kill_Restless_Stones_51996"
kill 10 Restless Stone##134966 |q 51996/2 |goto 48.88,54.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53027
accept Edge of Glory##53027 |goto Stormsong Valley/0 73.00,23.71
|tip You will accept this quest automatically.
stickystart "Slay_Abyssal_Forces_53027"
step
kill Brother Haines##142516 |q 53027/2 |goto 73.00,23.71 |future
step
label "Slay_Abyssal_Forces_53027"
Enter the building |goto 74.45,28.33 < 10 |only if walking
Leave the building |goto 74.31,30.63 < 10 |only if walking
Kill enemies around this area
Slay #25# Abyssal Forces |q 53027/1 |goto 73.14,30.67 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51981
accept Earthcaller's Abode##51981 |goto Stormsong Valley/0 50.02,56.24
|tip You will accept this quest automatically.
stickystart "Destroy_Binding_Crystals_51981"
stickystart "Kill_Restless_Stones_51981"
step
kill Earthcaller Gulgort##134775 |q 51981/1 |goto 50.02,56.24 |future
|tip At the top of the hill.
step
label "Destroy_Binding_Crystals_51981"
click Binding Crystals##139451
|tip They look like giant purple crystals hovering above the ground around this area.
Destroy #6# Binding Crystals |q 51981/3 |goto 48.88,54.99 |future
step
label "Kill_Restless_Stones_51981"
kill 10 Restless Stone##134966 |q 51981/2 |goto 48.88,54.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52166
Follow the path up |goto Stormsong Valley/0 77.22,53.80 < 20 |only if walking
accept The Faceless Herald##52166 |goto Stormsong Valley/0 81.16,52.31
step
Follow the path up |goto 81.04,52.33 < 20 |only if walking
kill Warbringer Yenajz##140163 |q 52166/1 |goto 82.93,48.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52972
accept Favored Grandchild##52972 |goto Stormsong Valley/0 31.86,69.52
|tip You will accept this quest automatically.
step
talk Shepherd Milbrooke##136414
Ask her _"Do you have an extra milk pail handy?"_
Speak to Shepherd Milbrooke |q 52972/1 |goto 31.86,69.52 |future
stickystart "Collect_Pristine_Razorclaw_Pelts_52972"
step
click Mother Goat##136939+
|tip They look like white goats on the ground around this area.
collect 6 Mountain Goat Milk##159781 |q 52972/2 |goto 29.70,74.34 |future
step
label "Collect_Pristine_Razorclaw_Pelts_52972"
kill Feral Razorclaw##136416+
collect 6 Pristine Razorclaw Pelt##162647 |q 52972/3 |goto 29.70,74.34 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52064
accept Fiendish Fields##52064 |goto Stormsong Valley/0 51.58,65.93
|tip You will accept this quest automatically.
step
click Repaired Farmhand##132297
Pilot the Repaired Farmhand |q 52064/1 |goto 51.58,65.93 |future
stickystart "Kill_Razorspine_Thornlings_52064"
stickystart "Kill_Grasping_Thorns_52064"
step
kill Razorspine Planterror##139577 |q 52064/4 |goto 48.70,64.55 |future
|tip Use the abilities on your action bar.
|tip It walks around this area.
step
label "Kill_Razorspine_Thornlings_52064"
kill 18 Razorspine Thornling##132204 |q 52064/2 |goto 49.45,65.07 |future
|tip Use the abilities on your action bar.
step
label "Kill_Grasping_Thorns_52064"
kill 12 Grasping Thorns##132206 |q 52064/3 |goto 49.45,65.07 |future
|tip Use the abilities on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-52011
accept Fiendish Fields##52011 |goto Stormsong Valley/0 51.58,65.93
|tip You will accept this quest automatically.
step
click Repaired Farmhand##132297
Pilot the Repaired Farmhand |q 52011/1 |goto 51.58,65.93 |future
stickystart "Kill_Razorspine_Thornlings_52011"
stickystart "Kill_Grasping_Thorns_52011"
step
kill Razorspine Planterror##139577 |q 52011/4 |goto 48.70,64.55 |future
|tip Use the abilities on your action bar.
|tip It walks around this area.
step
label "Kill_Razorspine_Thornlings_52011"
kill 18 Razorspine Thornling##132204 |q 52011/2 |goto 49.45,65.07 |future
|tip Use the abilities on your action bar.
step
label "Kill_Grasping_Thorns_52011"
kill 12 Grasping Thorns##132206 |q 52011/3 |goto 49.45,65.07 |future
|tip Use the abilities on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-53715
accept Firewarden Viton Darkflare##53715 |goto Stormsong Valley/0 49.72,49.08
|tip You will accept this quest automatically.
step
kill Firewarden Viton Darkflare##144915 |q 53715/1 |goto 49.72,49.08 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53878
accept First Aid Mission##53878 |goto Stormsong Valley/0 40.02,63.06
|tip You will accept this quest automatically.
stickystart "Slay_Alliance_Soldiers_53878"
step
clicknpc Wounded Grunt##144911+
|tip They look like orc soldiers laying on the ground around this area.
Bandage #6# Wounded Grunts |q 53878/1 |goto 40.02,63.06 |future
step
label "Slay_Alliance_Soldiers_53878"
Kill enemies around this area
Slay #8# Alliance Soldiers |q 53878/2 |goto 40.02,63.06 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53284
accept Flourishing Riverbud##53284 |goto Stormsong Valley/0 54.77,73.05
|tip You will accept this quest automatically.
step
click Flourishing Riverbud##297606+
|tip They look like curly green plants along the riverbed around this area.
|tip They appear on your minimap as yellow dots.
collect 10 Flourishing Riverbud##163595 |q 53284/1 |goto 54.77,73.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53717
accept Hold the Highland##53717 |goto Stormsong Valley/0 40.02,63.06
|tip You will accept this quest automatically.
step
Kill Honorbound enemies around this area
clicknpc Wounded Grunt##144911+
|tip They look like orc soldiers laying on the ground around this area.
Slay #12# Horde Soldiers |q 53717/1 |goto 40.02,63.06 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51781
accept Foreman Scripps##51781 |goto Stormsong Valley/0 64.43,65.92
|tip You will accept this quest automatically.
step
kill Foreman Scripps##131404 |q 51781/1 |goto 64.43,65.92 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52179
accept Fortified Resistance##52179 |goto Stormsong Valley/0 32.30,44.82
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Zeth'jir Banner##292807+
|tip They look like green banners staked in the ground around this area.
click Zeth'jir Weapon Rack+
|tip They look like racks with golden spears leaning on them on the ground around this area.
Defend Fort Daelin |q 52179/1 |goto 32.30,44.82 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51776
accept Galestorm##51776 |goto Stormsong Valley/0 71.45,54.35
|tip You will accept this quest automatically.
|tip At the top of the hill.
step
kill Galestorm##132007 |q 51776/1 |goto 71.45,54.35 |future
|tip At the top of the hill.
|next "BFA_World_Quest_Emissaries"
step
label quest-54414
accept Gale's Unrest##54414 |goto Stormsong Valley/0 46.02,31.13
|tip You will accept this quest automatically.
|tip At the top of the hill.
step
kill Tempestion##147931
|tip At the top of the hill.
Interrupt the Alliance Invocation |q 54414/1 |goto 46.02,31.13 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52133
accept Good Boy!##52133 |goto Stormsong Valley/0 52.59,69.86
|tip You will accept this quest automatically.
stickystart "Kill_Briarback_Enforcers_52133"
step
kill 8 Briarback Tunneler##129906 |q 52133/1 |goto 52.59,69.86 |future
|tip Use the "Go Get Them!" ability on the clouds of brown dirt on the ground around this area.
|tip It appears as a button on the screen.
step
label "Kill_Briarback_Enforcers_52133"
kill 4 Briarback Enforcer##140150 |q 52133/2 |goto 52.59,69.86 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51779
accept Grimscowl the Hairbrained##51779 |goto Stormsong Valley/0 62.07,73.89
|tip You will accept this quest automatically.
step
kill Grimscowl the Harebrained##141059 |q 51779/1 |goto 62.07,73.89 |future
|tip He will appear on your minimap as a yellow dot.
|next "BFA_World_Quest_Emissaries"
step
label quest-53771
accept Gurin Stonebinder##53771 |goto Stormsong Valley/0 46.94,46.13
|tip You will accept this quest automatically.
stickystart "Kill_Dolizite_53771"
step
kill Gurin Stonebinder##144997 |q 53771/1 |goto 46.94,46.13 |future
step
label "Kill_Dolizite_53771"
kill Dolizite##145020 |q 53771/2 |goto 46.94,46.13 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52463
accept Haegol the Hammer##52463 |goto Stormsong Valley/0 34.89,77.93
|tip You will accept this quest automatically.
|tip He walks around this area.
step
kill Haegol the Hammer##141226 |q 52463/1 |goto 35.25,77.76 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-53316
Follow the path |goto Stormsong Valley/0 68.44,67.70 < 10 |only if walking
Continue following the path |goto 69.74,69.16 < 7 |only if walking
accept Hardened Monelite##53316 |goto Stormsong Valley/0 70.15,70.17
|tip You will accept this quest automatically.
|polish
step
click Hardened Monelite Deposit##297468
collect Hardened Monelite##163628 |q 53316/1 |goto 70.15,70.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52988
accept House Cleaning##52988 |goto Stormsong Valley/0 61.70,41.24
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Books+
|tip They look like floating books with various names hovering close to the ground around this area.
click Deep Terror+
|tip They look like large blue tentacles on the ground around this area.
Cleanse Sagehold |q 52988/1 |goto 60.99,40.88 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52115
accept In the Shadow of the Kracken##52115 |goto Stormsong Valley/0 81.46,58.09
|tip You will accept this quest automatically.
step
kill Stormrider Telmin##139930 |q 52115/1 |goto 81.46,58.09 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53108
accept Iconoclasm##53108 |goto Stormsong Valley/0 80.53,56.58
|tip You will accept this quest automatically.
step
Enter the cave |goto 80.53,56.58 < 20 |walk
click Drowned Icon
|tip Inside the cave.
Cleanse the Drowned Icon |q 53108/1 |goto 79.86,55.35 |count 1
step
Follow the path up |goto 81.14,56.20 < 20 |only if walking
Enter the building |goto 83.77,53.94 < 10 |walk
click Drowned Icon
|tip Inside the building.
Cleanse the Drowned Icon |q 53108/1 |goto 84.77,53.78 |count 2
step
Leave the building |goto Stormsong Valley/0 84.40,51.85 < 20 |walk
Follow the path down |goto 82.39,48.39 < 20 |only if walking
Enter the building |goto 82.12,44.53 < 20 |walk
click Drowned Icon
|tip Inside the building.
Cleanse the Drowned Icon |q 53108/1 |goto 82.42,43.49 |count 3
|next "BFA_World_Quest_Emissaries"
step
label quest-53344
accept Iconoclasm##53344 |goto Stormsong Valley/0 80.53,56.58
|tip You will accept this quest automatically.
step
Enter the cave |goto 80.53,56.58 < 20 |walk
click Drowned Icon
|tip Inside the cave.
Cleanse the Drowned Icon |q 53344/1 |goto 79.86,55.35 |count 1
step
Follow the path up |goto 81.14,56.20 < 20 |only if walking
Enter the building |goto 83.77,53.94 < 10 |walk
click Drowned Icon
|tip Inside the building.
Cleanse the Drowned Icon |q 53344/1 |goto 84.77,53.78 |count 2
step
Leave the building |goto Stormsong Valley/0 84.40,51.85 < 20 |walk
Follow the path down |goto 82.39,48.39 < 20 |only if walking
Enter the building |goto 82.12,44.53 < 20 |walk
click Drowned Icon
|tip Inside the building.
Cleanse the Drowned Icon |q 53344/1 |goto 82.42,43.49 |count 3
|next "BFA_World_Quest_Emissaries"
step
label quest-51854
accept I Am the Shark##51854 |goto Stormsong Valley/0 35.02,47.67
|tip You will accept this quest automatically.
step
talk Rikal##131014
Talk with Rikal |q 51854/1 |goto 35.02,47.67 |future
step
talk Rikal##131014 |goto 35.02,47.67
Tell him _"Start casting the spell, Rikal."_
Become a Shark |goto 27.73,34.47 < 20 |noway |c |q 51854
step
kill 25 Zeth'jir Deepfighter##135125 |q 51854/2 |goto 26.80,35.74 |future
|tip Underwater.
|tip Swim into them to kill them.
|next "BFA_World_Quest_Emissaries"
step
label quest-52328
Follow the path up |goto Stormsong Valley/0 64.29,81.57 < 20 |only if walking
accept Ice Sickle##52328 |goto Stormsong Valley/0 63.42,82.19
|tip You will accept this quest automatically.
step
kill Ice Sickle##141039 |q 52328/1 |goto 63.53,83.56 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52168
accept It's Lit##52168 |goto Stormsong Valley/0 55.93,63.82
|tip You will accept this quest automatically.
stickystart "Kill_Sapper_Technicians_52168"
step
click Water Bucket+
|tip They look like small wooden buckets on the ground next to water around this area.
|tip Use the "Douse Flames" ability on fires around this area.
|tip It appears as a button on the screen.
Extinguish #12# Fires |q 52168/1 |goto 55.93,63.82 |future
step
label "Kill_Sapper_Technicians_52168"
kill 7 Sapper Technician##134426 |q 52168/2 |goto 55.93,63.82 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52321
accept Kickers##52321 |goto Stormsong Valley/0 31.30,61.70
|tip You will accept this quest automatically.
step
kill Kickers##141029 |q 52321/1 |goto 31.30,61.70 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54328
accept Knight-Captain Joesiph##54328 |goto Stormsong Valley/0 32.01,58.36
|tip He walks up and down the road.
|tip You will accept this quest automatically.
step
kill Knight-Captain Joesiph##147923 |q 54328/1 |goto 32.01,58.36 |future
|tip He walks up and down the road.
|next "BFA_World_Quest_Emissaries"
step
label quest-52239
accept Loose Change##52239 |goto Stormsong Valley/0 51.26,59.78
|tip You will accept this quest automatically.
step
use the Magnetized Metal Collector##158226
|tip Use it near "Could be coins here!" signs on the ground around this area.
|tip They will appear as yellow areas on your minimap.
|tip Coins look like small sparkling dots on the ground around this area.
Find #60# Loose Coins |q 52239/1 |goto 51.26,59.78 |future
You can find more around:
[52.33,56.15]
[47.56,57.31]
[49.92,52.93]
[46.73,53.23]
|next "BFA_World_Quest_Emissaries"
step
label quest-52987
accept Let's Burn!##52987 |goto Stormsong Valley/0 47.02,36.63
|tip You will accept this quest automatically.
step
kill Goblin Engineer##137936+
collect Welding Torch##163120 |q 52987/1 |goto 47.02,36.63 |future
stickystart "Burn_Lumber_Piles_52987"
stickystart "Slay_Warfang_Lumberjacks_52987"
step
Burn the Siege Tower |q 52987/4 |goto 49.05,37.43 |count 1 |future
|tip Use the "Flamethrower" ability.
|tip Use it next to the Siege Tower.
|tip It appears as a button on the screen.
step
Burn the Siege Tower |q 52987/4 |goto 49.65,38.08 |count 2 |future
|tip Use the "Flamethrower" ability.
|tip Use it next to the Siege Tower.
|tip It appears as a button on the screen.
step
label "Burn_Lumber_Piles_52987"
Burn #6# Lumber Piles |q 52987/3 |goto 50.00,37.89 |future
|tip They look like stacks of large logs on the ground around this area.
|tip Use the "Flamethrower" ability next to Lumber Piles around this area.
|tip It appears as a button on the screen.
step
label "Slay_Warfang_Lumberjacks_52987"
kill 12 Warfang Lumberjack##135981 |q 52987/2 |goto 50.00,37.89 |future
|tip Use the "Flamethrower" ability.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-52476
accept The Lichen King##52476 |goto Stormsong Valley/0 51.78,79.23
|tip You will accept this quest automatically.
step
Enter the cave |goto 51.78,79.23 < 10 |walk
kill The Lichen King##136189 |q 52476/1 |goto 51.78,79.77 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-52941
accept Light in the Darkness##52941 |goto Stormsong Valley/0 67.13,45.61
|tip You will accept this quest automatically.
step
click Abyssal Beacon##294126
collect Abyssal Beacon##162635 |q 52941/1 |goto 67.13,45.61 |future
stickystart "Slay_Assembly_Forces_52941"
step
use the Abyssal Beacon##162635
|tip Use it on the Writhing Grasp.
Dispel the Southerm Grasp |q 52941/2 |goto 67.44,44.37 |future
step
Run up the stairs |goto 65.95,44.62 < 10 |only if walking
use the Abyssal Beacon##162635
|tip Use it on the Writhing Grasp.
Dispel the Western Grasp |q 52941/3 |goto 66.02,41.86 |future
step
use the Abyssal Beacon##162635
|tip Use it on the Writhing Grasp.
Dispel the Eastern Grasp |q 52941/4 |goto 67.66,42.33 |future
step
label "Slay_Assembly_Forces_52941"
Kill enemies around this area
Slay #12# Assembly Forces |q 52941/5 |goto 66.84,41.09 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52794
accept Lizards and Ledgers##52794 |goto Stormsong Valley/0 61.67,73.33
|tip You will accept this quest automatically.
stickystart "Collect_Lost_Supplies_52794"
stickystart "Kill_Stonejaw_Saurolisks_52794"
step
kill Rottail##141832 |q 52794/3 |goto 64.20,74.80 |future
|tip He looks like a large lizard that walks around this area.
step
label "Collect_Lost_Supplies_52794"
click Lost Supplies##293771+
|tip They look like baskets of green apples, boxes of yellow corn, and wooden barrels on the ground around this area.
collect 8 Lost Supplies##162540 |q 52794/1 |goto 62.94,74.71 |future
step
label "Kill_Stonejaw_Saurolisks_52794"
Kill Stonejaw enemies around this area
Slay #8# Stonejaw Saurolisks |q 52794/2 |goto 62.94,74.71 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52230
accept Loose Change##52230 |goto Stormsong Valley/0 51.26,59.78
|tip You will accept this quest automatically.
step
use the Magnetized Metal Collector##158226
|tip Use it near "Could be coins here!" signs on the ground around this area.
|tip They will appear as yellow areas on your minimap.
|tip Coins look like small sparkling dots on the ground around this area.
Find #60# Loose Coins |q 52230/1 |goto 51.26,59.78 |future
You can find more around:
[52.33,56.15]
[47.56,57.31]
[49.92,52.93]
[46.73,53.23]
|next "BFA_World_Quest_Emissaries"
step
label quest-54266
accept Mortar Master Zapfritz##54266 |goto Stormsong Valley/0 42.16,47.65
|tip You will accept this quest automatically.
step
click Grapple Point |goto 42.15,47.76 < 20 |only if walking
|tip Click the highest point above you.
Grapple Up to the Cliff |goto 42.62,47.29 |c |noway |q 54266 |future
step
kill Mortar Master Zapfritz##147562 |q 54266/1 |goto 43.04,46.53 |future
|tip Up on the cliff.
|next "BFA_World_Quest_Emissaries"
step
label quest-52982
accept Mine or Trouble##52982 |goto Stormsong Valley/0 46.71,36.95
|tip You will accept this quest automatically.
step
click Bundle of Dynamite
Collect the Bundle of Dynamite |q 52982/1 |goto 46.71,36.95 |future
stickystart "Slay_Warfang_Miners_52982"
step
Enter the mine |goto 46.58,36.15 < 10 |walk
Follow the path |goto Stormsong Valley/4 61.62,42.55 < 10 |walk
kill Taskmaster Burlok##138793 |q 52982/3 |goto Stormsong Valley/4 54.80,48.96 |future
|tip Inside the mine.
|tip Use the "Toss Dynamite" ability.
|tip It appears as a button on the screen.
step
label "Slay_Warfang_Miners_52982"
Kill enemies around this area.
|tip Inside the mine.
|tip Use the "Toss Dynamite" ability.
|tip It appears as a button on the screen.
|tip Use it on Blackpowder Ore nodes next to enemies, and on enemies, around this area inside the mine.
|tip They look like large rocky black ore nodes on the ground around this area inside the mine.
Slay #18# Warfang Miners |q 52982/2 |goto 66.38,38.44 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51633
accept Make Loh Go##51633 |goto Stormsong Valley/0 22.65,70.96
|tip You will accept this quest automatically.
step
talk Toki##144361
Tell him _"I am ready."_
Speak to Toki |q 51633/1 |goto 22.65,70.96 |future
step
Guide Loh to the Goal |q 51633/2 |future
|tip Move Loh to each flag, then to the finish line without crossing your own path.
|tip Use the abilities on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-52924
accept Mead Some Help?##52924 |goto Stormsong Valley/0 69.74,69.32
|tip You will accept this quest automatically.
stickystart "Kill_Flowing_Honey_52924"
step
kill 6 Bubbling Mead##133429 |q 52924/2 |goto 69.74,69.32 |future
step
label "Kill_Flowing_Honey_52924"
kill 8 Flowing Honey##131663 |q 52924/1 |goto 69.74,69.32 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52880
Follow the path up |goto Stormsong Valley/0 52.92,75.44 < 15 |only if walking and Alliance
accept Milden Mud Snout##52880 |goto Stormsong Valley/0 50.00,79.18
|tip You will accept this quest automatically.
step
kill Milden Mud Snout##141977 |q 52880/1 |goto 50.00,79.18 |future
|tip Underwater.
|next "BFA_World_Quest_Emissaries"
step
label quest-54308
Enter the mine |goto Stormsong Valley/0 46.58,36.14 < 15 |walk
accept Mine Your Business##54308 |goto 46.58,36.14
|tip You will accept this quest automatically.
stickystart "Kill_Tunnel_Stalker_54308"
step
Enter the mine |goto 46.58,36.14 < 15 |walk
click Blackpowder Ore+
|tip THey look like grey and black mining veins inside the mine around this area.
collect 18 Blackpowder Ore##165889 |q 54308/1 |	goto Stormsong Valley/4 60.59,33.66 |future
step
label "Kill_Tunnel_Stalker_54308"
kill 8 Tunnel Stalker##137967 |q 54308/2 |goto 60.59,33.66 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53945
accept Naga Attack!##53945 |goto Stormsong Valley/0 64.79,61.46
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Naga War Supplies+
|tip They look like racks of weapons and crates the ground around this area.
click Naga War Banner+
|tip They look like tall posts with flags on them on the ground around this area.
click Naga Cage+
|tip They look like large crude cages with prisoners inside on the ground around this area.
Repel the Naga Invaders |q 53945/1 |goto 64.79,61.46 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53773
accept Naga Attack!##53773 |goto Stormsong Valley/0 26.35,56.38
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Naga War Supplies+
|tip They look like racks of weapons and crates the ground around this area.
click Naga War Banner+
|tip They look like tall posts with flags on them on the ground around this area.
click Naga Cage+
|tip They look like large crude cages with prisoners inside on the ground around this area.
Repel the Naga Invaders |q 53773/1 |goto 26.35,56.38 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54468
accept Nalaess Featherseeker##54468 |goto Stormsong Valley/0 44.25,48.96
|tip You will accept this quest automatically.
|polish
step
click Heavy Stone
kill Nalaess Featherseeker##148092 |q 54468/1 |goto 44.25,48.96 |future
|tip It flies overhead around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-52935
accept A New Era##52935 |goto Stormsong Valley/0 64.83,59.98
|tip You will accept this quest automatically.
stickystart "Destroy_Anchors_Of_Binding_52935"
step
Kill enemies around this area
use the Dead Ringer##155919
|tip Use it next to their corpses.
Recover #12# Souls |q 52935/1 |goto 64.83,59.98 |future
step
label "Destroy_Anchors_Of_Binding_52935"
clicknpc Anchor of Binding##142214+
|tip They look like large metal vases with water bubbling out of the top of them on the ground around this area.
Destroy #8# Anchors of Binding |q 52935/2 |goto 64.83,59.98 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51820
accept Oily Mess##51820 |goto Stormsong Valley/0 40.13,38.85
|tip You will accept this quest automatically.
step
Kill Venture Co. enemies around this area
clicknpc Oily Sandbill Piper##139214+
|tip They look like small birds covered in oil running around this area.
click Oil Drum##291148+
|tip They look like orange barrels on the ground around this area.
Clean the Coastline |q 51820/1 |goto 39.06,42.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51840
accept Oily Mess##51840 |goto Stormsong Valley/0 40.13,38.85
|tip You will accept this quest automatically.
step
Kill Venture Co. enemies around this area
clicknpc Oily Sandbill Piper##139214+
|tip They look like small birds covered in oil running around this area.
click Oil Drum##291148+
|tip They look like orange barrels on the ground around this area.
Clean the Coastline |q 51840/1 |goto 39.06,42.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52939
accept Ordnance Orders##52939 |goto Stormsong Valley/0 69.34,51.41
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Tidal Blade##280925+
|tip They look like swords around this area.
click Thundershot Rifle##280927
|tip They look like double-barrel rifles around this area.
click Harpoons##280545
|tip They look like a rack of harpoons on the ground around this area.
click Abyssal Spear##
|tip They look like single barbed spears around this area.
collect 20 Stormfused Weapon##162629 |q 52939/1 |goto 69.34,51.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52464
accept Osca the Bloodied##52464 |goto Stormsong Valley/0 42.26,63.24
|tip You will accept this quest automatically.
step
kill Osca the Bloodied##141239 |q 52464/1 |goto 42.26,63.24 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53288
accept Overgrown Anchor Weed##53288 |goto Stormsong Valley/0 72.64,30.84
|tip You will accept this quest automatically.
|polish
step
click Overgrown Anchor Weed
collect Overgrown Anchor Weed##163601 |q 53288/1 |goto 72.64,30.84 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54437
accept Owynn Graddock##54437 |goto Stormsong Valley/0 50.90,52.29
|tip You will accept this quest automatically.
step
kill Owynn Graddock##148044 |q 54437/1 |goto 50.90,52.29 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52474
accept Poacher Zane##52474 |goto Stormsong Valley/0 34.65,67.98
|tip You will accept this quest automatically.
step
kill Poacher Zane##141286 |q 52474/1 |goto 34.65,67.98 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51886
accept Pinku'shon##51886 |goto Stormsong Valley/0 38.22,51.09
|tip You will accept this quest automatically.
|tip It walks around this area.
step
kill Pinku'shon##139298 |q 51886/1 |goto 38.22,51.09 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-52936
accept Plagued Earth Policy##52936 |goto Stormsong Valley/0 62.15,60.45
|tip You will accept this quest automatically.
step
click Plague Barrel Sack
collect Plague Barrel Sack##162627 |q 52936/1 |goto 62.15,60.45 |future
stickystart "Slay_Stormsong_Forces_52936"
step
click Plague Bomb
Plague the Western Shrine |q 52936/3 |goto 63.25,59.56 |future
step
click Plague Bomb
Plague the Northern Shrine |q 52936/4 |goto 64.76,57.91 |future
step
click Plague Bomb
Plague the Eastern Shrine |q 52936/5 |goto 66.82,60.71 |future
step
label "Slay_Stormsong_Forces_52936"
Kill enemies around this area
Slay #12# Stormsong Forces |q 52936/2 |goto 65.84,59.28 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53107
accept Plunder and Provisions##53107 |goto Stormsong Valley/0 80.51,56.67
|tip You will accept this quest automatically.
|tip It walks around this area.
step
Enter the cave |goto Stormsong Valley/0 80.51,56.67 < 15 |walk
click Damp Crates##296464
|tip Inside the cave.
collect Stolen Supplies##157784 |q 53107/1 |goto 79.75,55.47 |count 1 |future
step
Follow the path up |goto 81.56,55.69 < 20 |only if walking
Follow the path down |goto 84.49,49.76 < 20 |only if walking
Enter the building |goto 86.47,52.22 < 10 |walk
click Damp Crates##296464
|tip Inside the building.
collect Stolen Supplies##157784 |q 53107/1 |goto 86.40,53.26 |count 2 |future
step
Follow the path up |goto 86.67,51.35 < 20 |only if walking
Follow the path down |goto 82.87,51.58 < 20 |only if walking
Enter the building |goto 80.90,50.78 < 10 |walk
click Damp Crates##296464
collect Stolen Supplies##157784 |q 53107/1 |goto 81.67,49.72 |count 3 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53345
accept Plunder and Provisions##53345 |goto Stormsong Valley/0 80.51,56.67
|tip You will accept this quest automatically.
|tip It walks around this area.
step
Enter the cave |goto Stormsong Valley/0 80.51,56.67 < 15 |walk
click Damp Crates##296464
|tip Inside the cave.
collect Stolen Supplies##157784 |q 53345/1 |goto 79.75,55.47 |count 1 |future
step
Follow the path up |goto 81.56,55.69 < 20 |only if walking
Follow the path down |goto 84.49,49.76 < 20 |only if walking
Enter the building |goto 86.47,52.22 < 10 |walk
click Damp Crates##296464
|tip Inside the building.
collect Stolen Supplies##157784 |q 53345/1 |goto 86.40,53.26 |count 2 |future
step
Follow the path up |goto 86.67,51.35 < 20 |only if walking
Follow the path down |goto 82.87,51.58 < 20 |only if walking
Enter the building |goto 80.90,50.78 < 10 |walk
click Damp Crates##296464
collect Stolen Supplies##157784 |q 53345/1 |goto 81.67,49.72 |count 3 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52964
accept Pest Problem##52964 |goto Stormsong Valley/0 30.60,67.10
|tip You will accept this quest automatically.
step
clicknpc Bug Zapper##142580
Collect a Bug Zapper |q 52964/1 |goto 30.60,67.10 |future
stickystart "Kill_Volatile_Rats_52964"
stickystart "Collect_Bilge_Rats_52964"
step
kill 6 Cellar Crawler##137000 |q 52964/2 |goto 28.88,69.25 |future
step
label "Kill_Volatile_Rats_52964"
kill 6 Volatile Rat##137126 |q 52964/3 |goto 28.15,66.36 |future
step
label "Collect_Bilge_Rats_52964"
clicknpc Bilge Rat##136686+
|tip Use the "Bug Zapper" ability on them.
|tip It appears as a button on the screen.
Collect #6# Bilge Rats |q 52964/4 |goto 28.15,66.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51806
accept Pest Remover Mk. II##51806 |goto Stormsong Valley/0 35.98,37.02
|tip You will accept this quest automatically when you get near it.
|tip It will appear on your minimap as a yellow star.
|tip It walks around this area.
step
kill Pest Remover Mk. II##137649 |q 51806/1 |goto 35.98,37.02 |future
|tip It will appear on your minimap as a yellow star.
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-53012
accept Put Away Your Toys##53012 |goto Stormsong Valley/0 51.25,36.72
|tip You will accept this quest automatically.
stickystart "Kill_Forsaken_Keenblades_53012"
step
clicknpc Prototype Shredder MK-03##138904
Pilot the Prototype Shredder MK-03 |q 53012/1 |goto 51.25,36.72 |future
step
label "Kill_Forsaken_Keenblades_53012"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #60# Horde Soldiers |q 53012/2 |goto 50.35,33.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52164
accept Rum- Paaaage!##52164 |goto Stormsong Valley/0 35.70,54.88
|tip You will accept this quest automatically.
stickystart "Destroy_Irontide_Rum_Stash_52164"
stickystart "Kill_Ookin_Rum_Guards_52164"
step
kill Barrel Master Jojo##140446 |q 52164/3 |goto 35.70,54.88 |future
step
label "Destroy_Irontide_Rum_Stash_52164"
Destroy #8# Irontide Rum Stashes |q 52164/1 |goto 35.87,54.84 |future
|tip They look like brown wooden barrels on the ground around this area.
|tip Use the "Barrel Buster Bomb" ability on them.
|tip It appears as a button on the screen.
step
label "Kill_Ookin_Rum_Guards_52164"
kill 6 Ookin Rum Guard##140209 |q 52164/2 |goto 35.87,54.84 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52199
accept Rum- Paaaage!##52199 |goto Stormsong Valley/0 35.70,54.88
|tip You will accept this quest automatically.
stickystart "Destroy_Irontide_Rum_Stash_52199"
stickystart "Kill_Ookin_Rum_Guards_52199"
step
kill Barrel Master Jojo##140446 |q 52199/3 |goto 35.70,54.88 |future
step
label "Destroy_Irontide_Rum_Stash_52199"
Destroy #8# Irontide Rum Stashes |q 52199/1 |goto 35.87,54.84 |future
|tip They look like brown wooden barrels on the ground around this area.
|tip Use the "Barrel Buster Bomb" ability on them.
|tip It appears as a button on the screen.
step
label "Kill_Ookin_Rum_Guards_52199"
kill 6 Ookin Rum Guard##140209 |q 52199/2 |goto 35.87,54.84 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52160
accept Restocking##52160 |goto Stormsong Valley/0 49.80,72.24
|tip You will accept this quest automatically.
stickystart "Collect_Handfuls_of_Scrap_52160"
step
Kill enemies around this area
|tip Click their corpses.
collect 20 Salvaged Azerite Ammunition##156583 |q 52160/1 |goto 49.80,72.24 |future
step
label "Collect_Handfuls_of_Scrap_52160"
click Discarded Toolbox##292765+
|tip They look like small buckets of tools on the ground around this area.
click Metal Scraps##292764+
|tip They look like small pieces of scrap on the ground around this area.
collect 15 Handful of Scraps##161216 |q 52160/2 |goto 49.80,72.24 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51774
Follow the path |goto Stormsong Valley/0 42.45,67.55 < 15 |only if walking and Horde
accept Ragna##51774 |goto Stormsong Valley/0 42.25,75.24
|tip You will accept this quest automatically.
step
kill Ragna##134884 |q 51774/1 |goto 41.60,74.35 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-52211
accept Red Sunrise##52211 |goto Stormsong Valley/0 62.45,51.22
|tip You will accept this quest automatically.
stickystart "Kill_Forsaken_Keenblades_52211"
step
kill Meat Shield##140534 |q 52211/2 |goto 62.45,51.22 |future
step
label "Kill_Forsaken_Keenblades_52211"
kill 8 Forsaken Keenblade##136439 |q 52211/1 |goto 61.80,51.10 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51905
accept Reinforced Hullbreaker##51905 |goto Stormsong Valley/0 70.57,51.54
|tip You will accept this quest automatically.
step
kill Reinforced Hullbreaker##132047 |q 51905/1 |goto 70.57,51.54 |future
|tip It walks around this area.
|tip It will appear on your minimap as a yellow dot.
|next "BFA_World_Quest_Emissaries"
step
label quest-52142
accept Restocking##52142 |goto Stormsong Valley/0 49.80,72.24
|tip You will accept this quest automatically.
stickystart "Collect_Handfuls_of_Scrap_52142"
step
Kill enemies around this area
|tip Click their corpses.
collect 20 Salvaged Azerite Ammunition##156583 |q 52142/1 |goto 49.80,72.24 |future
step
label "Collect_Handfuls_of_Scrap_52142"
click Discarded Toolbox##292765+
|tip They look like small buckets of tools on the ground around this area.
click Metal Scraps##292764+
|tip They look like small pieces of scrap on the ground around this area.
collect 15 Handful of Scraps##161216 |q 52142/2 |goto 49.80,72.24 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52979
accept Ritual Cleansing##52979 |goto Stormsong Valley/0 66.98,45.54
|tip You will accept this quest automatically.
step
Run up the stairs |goto Stormsong Valley/0 66.93,44.19 < 7 |only if walking
click Tidal Kris##130913
|tip They look like small knives stabbed into the wooden rail along the edges of the ship.
|tip They will appear on your minimap as yellow dots.
Retrieve a Tidal Kris |q 52979/1 |goto 67.33,43.87 |future
stickystart "Slay_Kthir_52979"
step
use the Tidal Kris##162650
|tip Use it next to Fanatical Acolytes around this area.
|tip They look like humans kneeling on purple flaming runes on the ground around this area on the ship.
Disrupt #6# Rituals |q 52979/3 |goto 67.24,43.33 |future
step
label "Slay_Kthir_52979"
Kill enemies around this area
|tip On the ship.
Slay #15# K'thir |q 52979/2 |goto 67.24,43.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53724
accept Shadow Hunter Mutumba##53724 |goto Stormsong Valley/0 36.45,51.99
|tip You will accept this quest automatically.
step
kill Shadow Hunter Mutumba##144987 |q 53724/1 |goto 36.45,51.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53753
accept Shell Outs##53753 |goto Stormsong Valley/0 45.38,51.32
|tip You will accept this quest automatically.
stickystart "Slay_Horde_Soldiers_53753"
step
kill Captain Jalazko##131053 |q 53753/1 |goto 46.54,50.49 |future
step
label "Slay_Horde_Soldiers_53753"
Kill enemies around this area
Slay #10# Horde Soldiers |q 53753/2 |goto 45.38,51.32 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51455
accept Shrine of the Storm: Cleansing Fonts##51455 |goto Shrine of the Storm/0 45.42,8.40
|tip Use the Group Finder to enter the "Shrine of the Storm" dungeon.
|tip You will accept this quest automatically.
step
Enter #4# Cleansing Fonts |q 51455/1 |goto Shrine of the Storm/0 27.55,40.39 |future
|tip They look like pools of water around second boss in the dungeon.
|tip Jump in each of the small pools of water.
|tip Use the "Shrine of the Storm" dungeon guide to accomplish this.
step
kill Vol'zith the Whisperer##134069 |q 51455/2 |goto Shrine of the Storm/1 69.30,34.41 |future
|tip He is the final boss inside the "Shrine of the Storm" dungeon.
|tip Use the "Shrine of the Storm" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-51456
accept Shrine of the Storm: Crawling Corruption##51456 |goto Shrine of the Storm/0 45.42,8.40
|tip Use the Group Finder to enter the "Shrine of the Storm" dungeon.
|tip You will accept this quest automatically.
step
kill Black Blood##137805 |q 51456/1 |future
|tip Use the "Shrine of the Storm" dungeon guide to accomplish this.
step
kill Vol'zith the Whisperer##134069 |q 51456/2 |goto Shrine of the Storm/1 69.30,34.41 |future
|tip He is the final boss inside the "Shrine of the Storm" dungeon.
|tip Use the "Shrine of the Storm" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-53008
accept Sage Wisdom##53008 |goto Stormsong Valley/0 61.70,41.24
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Books+
|tip They look like floating books with various names hovering close to the ground around this area.
click Deep Terror+
|tip They look like large blue tentacles on the ground around this area.
Cleanse Sagehold |q 53008/1 |goto 60.99,40.88 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52879
accept Stiff Policy##52879 |goto Stormsong Valley/0 62.04,63.99
|tip You will accept this quest automatically.
stickystart "Kill_Rewired_Harvesters_52879"
step
click Treated Shipwood+
|tip They look like piles of wooden boards on the ground around this area.
collect 12 Treated Shipwood##162599 |q 52879/2 |goto 62.04,63.99 |future
step
label "Kill_Rewired_Harvesters_52879"
kill 6 Rewired Harvester##130131 |q 52879/1 |goto 62.04,63.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51759
accept Seabreaker Skoloth##51759 |goto Stormsong Valley/0 33.72,38.21
|tip You will accept this quest automatically.
|tip He walks around this area.
step
kill Seabreaker Skoloth##138938 |q 51759/1 |goto 33.72,38.21 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-52432
accept Squall##52432 |goto Stormsong Valley/0 57.01,75.92
|tip You will accept this quest automatically.
step
kill Squall##141088 |q 52432/1 |goto 57.01,75.92 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-52280
accept Sea Salt Flavored##52280 |goto Stormsong Valley/0 40.62,25.46
|tip You will accept this quest automatically.
stickystart "Collect_Seaweed_52280"
step
kill Shockjaw##140808
|tip It swims underwater around this area.
collect Crackling Eel Skin##161450 |q 52280/2 |goto 40.63,25.44 |future
step
label "Collect_Seaweed_52280"
Kill enemies around this area
|tip Underwater.
click Seaweed+
|tip They look like tall stringy plants on the ground underwater around this area.
collect 50 Seaweed##160055 |q 52280/1 |goto 38.22,28.14 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52271
accept Sea Salt Flavored##52271 |goto Stormsong Valley/0 40.62,25.46
|tip You will accept this quest automatically.
stickystart "Collect_Seaweed_52271"
step
kill Shockjaw##140808
|tip It swims underwater around this area.
collect Crackling Eel Skin##161450 |q 52271/2 |goto 40.63,25.44 |future
step
label "Collect_Seaweed_52271"
Kill enemies around this area
|tip Underwater.
click Seaweed+
|tip They look like tall stringy plants on the ground underwater around this area.
collect 50 Seaweed##160055 |q 52271/1 |goto 38.22,28.14 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51974
accept Sabertron##51974 |goto Stormsong Valley/0 34.93,32.60
|tip You will accept this quest automatically.
step
Enter the cave |goto 34.93,32.60 < 10 |walk
kill Sabertron Technician##139334
|tip He walks around this area inside the cave.
kill Sabertron##139328 |q 51974/1 |goto 33.88,31.89 |future
|tip One of the nearby metal cats will attack after you kill the Sabertron Technician.
|next "BFA_World_Quest_Emissaries"
step
label quest-51976
accept Sabertron##51976 |goto Stormsong Valley/0 34.93,32.60
|tip You will accept this quest automatically.
step
Enter the cave |goto 34.93,32.60 < 10 |walk
kill Sabertron Technician##139334
|tip He walks around this area inside the cave.
kill Sabertron##139328 |q 51976/1 |goto 33.88,31.89 |future
|tip One of the nearby metal cats will attack after you kill the Sabertron Technician.
|next "BFA_World_Quest_Emissaries"
step
label quest-51453
accept Shrine of the Storm: Behold, Pure Water##51453
|tip Use the Group Finder to enter the "Shrine of the Storm" dungeon.
|tip You will accept this quest automatically.
step
click Mote of Pure Water+
|tip They look like floating white balls around the beginning of the dungeon.
|tip They will appear on your minimap as yellow dots.
collect 3 Mote of Pure Water##160253 |q 51453/1 |future
|tip Use the "Shrine of the Storm" dungeon guide to accomplish this.
step
kill Vol'zith the Whisperer##134069 |q 51453/2 |future
|tip He is the final boss inside the "Shrine of the Storm" dungeon.
|tip Use the "Shrine of the Storm" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-51977
accept Sabertron##51977 |goto Stormsong Valley/0 34.93,32.60
|tip You will accept this quest automatically.
step
Enter the cave |goto 34.93,32.60 < 10 |walk
kill Sabertron Technician##139334
|tip He walks around this area inside the cave.
kill Sabertron##139328 |q 51977/1 |goto 33.88,31.89 |future
|tip One of the nearby metal cats will attack after you kill the Sabertron Technician.
|next "BFA_World_Quest_Emissaries"
step
label quest-51978
accept Sabertron##51978 |goto Stormsong Valley/0 34.93,32.60
|tip You will accept this quest automatically.
step
Enter the cave |goto 34.93,32.60 < 10 |walk
kill Sabertron Technician##139334
|tip He walks around this area inside the cave.
kill Sabertron##139328 |q 51978/1 |goto 33.88,31.89 |future
|tip One of the nearby metal cats will attack after you kill the Sabertron Technician.
|next "BFA_World_Quest_Emissaries"
step
label quest-52309
accept SandFang##52309 |goto Stormsong Valley/0 72.80,61.01
|tip You will accept this quest automatically.
step
kill Sandfang##139988 |q 52309/1 |goto 73.52,60.65 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52889
accept Sandscour##52889 |goto Stormsong Valley/0 72.27,49.47
|tip You will accept this quest automatically.
step
kill Sandscour##139515 |q 52889/1 |goto 72.27,49.47 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52316
accept Sea Creatures Are Weird##52316 |goto Stormsong Valley/0 65.02,50.82
|tip You will accept this quest automatically.
step
talk Ellie Vern##141002
Tell her _"Begin pet battle."_
Defeat Ellie Vern |q 52316/1 |goto 65.02,50.82 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52315
accept Severus the Outcast##52315 |goto Stormsong Valley/0 21.75,71.40
|tip You will accept this quest automatically.
step
Follow the path up |goto 21.75,71.40 < 20 |only if walking
kill Severus the Outcast##140997 |q 52315/1 |goto 22.58,73.21 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51627
accept Shell Game##51627 |goto Stormsong Valley/0 40.37,34.26
|tip You will accept this quest automatically.
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51627/1 |goto 40.37,34.26 |future
step
click Shell+
|tip Click the shells to reveal objects.
|tip Match the objects in pairs.
Complete Collector Kojo's Shell Game |q 51627/2 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52446
accept Sister Absinthe##52446 |goto Stormsong Valley/0 61.57,57.06
|tip You will accept this quest automatically.
step
kill Sister Absinthe##141143 |q 52446/1 |goto 61.57,57.06 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51921
accept Slickspill##51921 |goto Stormsong Valley/0 41.80,28.47
|tip You will accept this quest automatically.
step
kill Slickspill##139319 |q 51921/1 |goto 41.80,28.47 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52174
accept Snakes in the Shallows##52174 |goto Stormsong Valley/0 27.83,60.36
|tip You will accept this quest automatically.
stickystart "Collect_Energized_Tidecores_52174"
stickystart "Slay_Zethjir_Tidecallers_52174"
step
click Zeth'jir Conduit##292530+
|tip They look like purple crystals floating above the ground around this area.
Destroy #5# Zeth'jir Conduits |q 52174/2 |goto 27.83,60.36 |future
step
label "Collect_Energized_Tidecores_52174"
kill Bound Seasurge##134340+
collect 4 Energized Tidecore##161313 |q 52174/3 |goto 27.83,60.36 |future
step
label "Slay_Zethjir_Tidecallers_52174"
Kill Zeth'jir enemies around this area
Slay #8# Zeth'jir Tidecallers |q 52174/1 |goto 27.83,60.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50591
accept Son of a Bee##50591 |goto Stormsong Valley/0 74.14,66.92
|tip You will accept this quest automatically.
stickystart "Collect_Rich_Honey_50591"
stickystart "Kill_Hive_Guardians_50591"
step
Enter the cave |goto 74.14,66.92 < 10 |only if walking
kill Dire Barb##140275 |q 50591/3 |goto 74.52,66.77 |future
step
label "Collect_Rich_Honey_50591"
click Bee Hive##296231+
|tip They look like small beehives around this area.
collect 40 Rich Honey##161220 |q 50591/1 |goto 73.00,68.63 |future
step
label "Kill_Hive_Guardians_50591"
kill 8 Hive Guardian##131377+ |q 50591/2 |goto 73.00,68.63 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52452
accept Song Mistress Dadalea##52452 |goto Stormsong Valley/0 70.86,32.23
|tip You will accept this quest automatically.
step
kill Song Mistress Dadalea##141175 |q 52452/1 |goto 70.86,32.23 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53040
accept Squall Squelching##53040 |goto Stormsong Valley/0 69.62,58.56
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect Surging Mote##163033 |n
click Anchor of Binding##294541
Empower the Southern Anchor |q 53040/1 |goto 69.87,58.55 |future
step
Kill enemies around this area
collect Surging Mote##163033 |n
click Anchor of Binding##294541
Empower the Eastern Anchor |q 53040/3 |goto 70.74,57.69 |future
step
Kill enemies around this area
collect Surging Mote##163033 |n
click Anchor of Binding##294541
Empower the Western Anchor |q 53040/2 |goto 69.86,57.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53042
accept Stormcaller##53042 |goto Stormsong Valley/0 69.62,58.56
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect Surging Mote##163033 |n
click Anchor of Binding##294541
Empower the Southern Anchor |q 53042/1 |goto 69.87,58.55 |future
step
Kill enemies around this area
collect Surging Mote##163033 |n
click Anchor of Binding##294541
Empower the Eastern Anchor |q 53042/3 |goto 70.74,57.69 |future
step
Kill enemies around this area
collect Surging Mote##163033 |n
click Anchor of Binding##294541
Empower the Western Anchor |q 53042/2 |goto 69.86,57.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52507
accept Sticky Mess##52507 |goto Stormsong Valley/0 43.20,55.99
|tip You will accept this quest automatically.
stickystart "Remove_12_Parasites_52507"
step
click Parasite Crate
|tip They look like wood crates full of purple parasites on the ground around this area.
|tip If you become disoriented, use the button on your action bar multiple times to free yourself.
Seal #4# Crates |q 52507/2 |goto 43.20,55.99 |future
step
label "Remove_12_Parasites_52507"
clicknpc Deadwash Worker##143880+
|tip They look like frightened creatures with purple parasites on their head running around this area.
|tip You can also find the individual parasites around this area.
|tip Click them and then run away to remove them.
|tip If you become disoriented, use the button on your action bar multiple times to free yourself.
Remove #12# Parasites |q 52507/1 |goto 43.20,55.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51982
accept Storm's Rage##51982 |goto Stormsong Valley/0 58.80,55.98
|tip You will accept this quest automatically.
step
clicknpc Storm's Feather##139615
Ride Storm's Feather |q 51982/1 |goto 58.80,55.98 |future
step
Kill enemies around this area
|tip Use the ability on your action bar.
|tip They are on the ground as you fly.
Destroy the Horde Forces |q 51982/2 |goto 49.51,32.44 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52380
collect 20 Frenzied Fangtooth##152545 |q 52380/1 |future
|tip Use the "Frenzied Fangtooth" farming guide to accomplish this.
|tip You can also purchase them from the Auction House.
step
accept Supplies Needed: Frenzied Fangtooth##52380 |goto Stormsong Valley/0 59.28,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Supplies Needed: Frenzied Fangtooth##52380 |goto 59.28,69.33
|next "BFA_World_Quest_Emissaries"
step
label quest-53707
accept Supply Mission##53707 |goto Stormsong Valley/0 36.46,64.09
|tip You will accept this quest automatically.
stickystart "Kill_Caravan_Guards_53707"
step
clicknpc Alliance Supplies##144801+
|tip They look like tan grain sacks on the ground around this area.
Burn #8# Alliance Supplies |q 53707/1 |goto 36.46,64.09 |future
step
label "Kill_Caravan_Guards_53707"
kill 6 Caravan Guard##144890 |q 53707/2 |goto 36.46,64.09 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53706
accept Supply Mission##53706 |goto Stormsong Valley/0 36.46,64.09
|tip You will accept this quest automatically.
stickystart "Slay_Eyegouge_Guerillas_53706"
step
clicknpc Alliance Supplies##144801+
|tip They look like tan grain sacks on the ground around this area.
Recover #8# Alliance Supplies |q 53706/1 |goto 36.46,64.09 |future
step
label "Slay_Eyegouge_Guerillas_53706"
Kill enemies around this area
Slay #6# Eyegouge Guerillas |q 53706/2 |goto 36.46,64.09 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54403
accept Tidesage Clarissa##54403 |goto Stormsong Valley/0 41.46,52.04
|tip You will accept this quest automatically.
stickystart "Kill_Alkalinius_54403"
step
kill Tidesage Clarissa##147941 |q 54403/1 |goto 41.46,52.04 |future
step
label "Kill_Alkalinius_54403"
kill Alkalinius##147951 |q 54403/2 |goto 41.48,52.14 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51827
accept They Came From Behind!##51827 |goto Stormsong Valley/0 51.36,25.52
|tip You will accept this quest automatically.
stickystart "Shoot_Down_7th_Legion_Bombers_51827"
stickystart "Slay_7th_Legion_Forces_51827"
step
Follow the path |goto 50.70,24.52 < 20 |only if walking
kill Siege Engineer Silvercog##139149 |q 51827/3 |goto 49.45,24.47 |future
step
label "Shoot_Down_7th_Legion_Bombers_51827"
use the Goblin Rocket Launcher##160739
|tip Use it on 7th Legion Bombers.
|tip They are flying in the air around this area.
Shoot Down #5# 7th Legion Bombers |q 51827/2 |goto 51.36,25.52 |future
step
label "Slay_7th_Legion_Forces_51827"
Kill 7th Legion enemies around this area
Slay #10# 7th Legion Forces |q 51827/1 |goto 51.36,25.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52968
accept Time for a Little Blood##52968 |goto Stormsong Valley/0 67.24,42.15
|tip You will accept this quest automatically.
stickystart "Slay_Assembly_Forces_52968"
step
kill Frothing Tideblood##130116+
click Sealed Tideblood+
|tip They look like wooden barrels on the ground around this area.
collect 20 Tideblood##162649 |q 52968/1 |goto 67.24,42.15 |future
step
label "Slay_Assembly_Forces_52968"
Kill enemies around this area
Slay #12# Assembly Forces |q 52968/2 |goto 67.24,42.15 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52198
accept Tank and Spank##52198 |goto Stormsong Valley/0 57.74,61.40
|tip You will accept this quest automatically.
step
Follow the path up |goto 57.74,61.40 < 15 |only if walking
clicknpc Experimental War Machine##138055
Control the Experimental War Machine |invehicle |goto 56.13,58.41 |q 52198 |future
stickystart "Slay_Horde_Reinforcements_52198"
step
Kill enemies around this area
|tip They are to the northwest.
|tip Use the "Azerite Cannon" ability on your action bar.
|tip Only the enemies that look like vehicles will count for this quest goal.
Destroy #5# Siege Engines |q 52198/2 |goto 56.10,58.28 |future
step
label "Slay_Horde_Reinforcements_52198"
Kill enemies around this area
|tip They are to the northwest.
|tip Use the "Azerite Cannon" ability on your action bar.
Slay #30# Horde Reinforcements |q 52198/1 |goto 56.10,58.28 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52209
accept Turtle Tactics##52209 |goto Stormsong Valley/0 34.33,25.95
|tip You will accept this quest automatically.
step
clicknpc Ai'twen##137560
Mount Ai'twen |q 52209/1 |goto 34.33,25.95 |future
step
Watch the dialogue
Kill enemies around this area
|tip Use the ability on your action bar.
Slay #40# Venture Co. Forces |q 52209/2 |goto 38.12,23.91 |future
step
Return to Seekers' Vista |goto 40.10,35.49 < 10 |c |notravel
|tip Use the "Return Home" ability on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-52229
accept Too Much To Bear##52229 |goto Stormsong Valley/0 38.50,63.37
|tip You will accept this quest automatically.
stickystart "Kill_Stormsong_Hunters_52229"
step
kill Barbedclaw Grizzly##139793+
collect 5 Barbedclaw Flank##161114 |q 52229/1 |goto 38.50,63.37 |future
step
label "Kill_Stormsong_Hunters_52229"
kill 5 Stormsong Hunter##140595 |q 52229/2 |goto 38.50,63.37 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52236
accept A Thorny Problem##52236 |goto Stormsong Valley/0 48.58,64.97
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Bramble Pod##132207+
|tip They look like green plant balls on the ground around this area.
Clear the Fields |q 52236/1 |goto 48.58,64.97 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52322
accept Taja the Tidehowler##52322 |goto Stormsong Valley/0 59.95,45.87
|tip You will accept this quest automatically.
step
kill Taja the Tidehowler##139980 |q 52322/1 |goto 59.95,45.87 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52126
Follow the path |goto Stormsong Valley/0 48.36,70.11 < 20 |only if walking
Follow the path up |goto Stormsong Valley/0 47.50,71.03 < 15 |only if walking
Follow the path |goto Stormsong Valley/0 46.64,72.70 < 20 |only if walking
Follow the path up |goto Stormsong Valley/0 45.96,73.04 < 20 |only if walking
Follow the path up |goto Stormsong Valley/0 46.15,74.26 < 15 |only if walking
Follow the path up |goto Stormsong Valley/0 45.66,77.51 < 20 |only if walking
Follow the path down |goto Stormsong Valley/0 44.61,77.92 < 15 |only if walking
accept This Little Piggy Has Sharp Tusks##52126 |goto Stormsong Valley/0 42.53,76.78
|tip You will accept this quest automatically.
step
clicknpc Bristlespine##139987
Defeat Bristlespine |q 52126/1 |goto 42.53,76.78 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52140
accept A Thorny Problem##52140 |goto Stormsong Valley/0 48.58,64.97
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Bramble Pod##132207+
|tip They look like green plant balls on the ground around this area.
Clear the Fields |q 52140/1 |goto 48.58,64.97 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52054
accept Too Much To Bear##52054 |goto Stormsong Valley/0 38.00,63.85
|tip You will accept this quest automatically.
stickystart "Collect_Barbedclaw_Flank_52054"
step
clicknpc Injured Hunter##139801+
|tip They look like humans laying on the ground around this area.
Rescue #7# Injured Hunters |q 52054/2 |goto 38.00,63.85 |future
step
label "Collect_Barbedclaw_Flank_52054"
kill Barbedclaw Grizzly##139793+
collect 5 Barbedclaw Flank##161114 |q 52054/1 |goto 38.00,63.85 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51811
accept Trapped Tortollans##51811 |goto Stormsong Valley/0 32.67,35.08
|tip You will accept this quest automatically.
stickystart "Slay_Zethjir_Naga_51811"
step
clicknpc Trapped Tortollan##139086+
|tip They look like turtles inside floating bubbles around this area.
Free #8# Trapped Tortollans |q 51811/1 |goto 31.56,32.75 |future
step
label "Slay_Zethjir_Naga_51811"
Kill Zeth'jir enemies around this area
Slay #8# Zeth'jir Naga |q 51811/2 |goto 31.56,32.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51817
accept Trapped Tortollans##51817 |goto Stormsong Valley/0 32.67,35.08
|tip You will accept this quest automatically.
stickystart "Slay_Zethjir_Naga_51817"
step
clicknpc Trapped Tortollan##139086+
|tip They look like turtles inside floating bubbles around this area.
Free #8# Trapped Tortollans |q 51817/1 |goto 31.56,32.75 |future
step
label "Slay_Zethjir_Naga_51817"
Kill Zeth'jir enemies around this area
Slay #8# Zeth'jir Naga |q 51817/2 |goto 31.56,32.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52200
accept Turtle Tactics##52200 |goto Stormsong Valley/0 34.33,25.95
|tip You will accept this quest automatically.
step
clicknpc Ai'twen##137560
Mount Ai'twen |q 52200/1 |goto 34.33,25.95 |future
step
Watch the dialogue
Kill enemies around this area
|tip Use the ability on your action bar.
Slay #40# Venture Co. Forces |q 52200/2 |goto 38.12,23.91 |future
step
Return to Seekers' Vista |goto 40.10,35.49 < 10 |c |notravel
|tip Use the "Return Home" ability on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-53712
accept Unfriendly Skies##53712 |goto Stormsong Valley/0 44.99,60.11
|tip You will accept this quest automatically.
step
clicknpc Alliance Gyrocopter##145557
Ride the 7th Legion Gyrocopter to the Horde Airship |q 53712/1 |goto 44.99,60.11 |future
step
Fly up to the Airship |goto 46.61,55.89 < 10 |c |q 53712 |future
step
click Horde Cage+
|tip They look like metal and wooden cages on the ground around this area on airship.
|tip They will appear on your minimap as yellow dots.
Free #6# Alliance Prisoners |q 53712/2 |goto 44.99,60.11 |future
step
click Engine Gearing+
|tip They look like giant spinning gears around this area downstairs inside the airship.
Destroy #4# Engines |q 53712/3 |goto 47.15,55.27 |future
step
clicknpc Alliance Gyrocopter##145572
|tip On the deck of the airship, where you landed.
Escape the Airship |q 53712/4 |goto 46.53,55.51 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52301
Enter the cave |goto Stormsong Valley/0 50.99,68.67 < 7 |walk
accept Vinespeaker Ratha##52301 |goto Stormsong Valley/0 50.93,68.36
|tip You will accept this quest automatically.
step
Enter the cave |goto 50.99,68.67 < 15 |walk
Enter the cave |goto 50.74,68.22 < 10 |walk
kill Vinespeaker Ratha##135939
|tip Inside the cave.
Slay Vinespeaker Ratha |q 52301/1 |goto 49.63,68.07 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54434
accept Voidmaster Evenshade##54434 |goto Stormsong Valley/0 41.26,54.14
|tip You will accept this quest automatically.
step
kill Voidmaster Evenshade##147998 |q 54434/1 |goto 41.26,54.14 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53983
accept Wet Work: Fort Knight##53983 |goto Stormsong Valley/0 37.77,48.01
|tip You will accept this quest automatically.
step
talk Shadow Hunter Scout##147381
Tell him _"I am ready."_
Speak with a Shadow Hunter Scout |q 53983/1 |goto 37.77,48.01 |future
step
talk Shadow Hunter Scout##147381
Tell him _"I am ready."_
Become Stealthed |havebuff 132320 |goto 37.77,48.01 |q 53983 |future
step
Follow the path up |goto 37.14,48.07 < 15 |only if walking
Follow the path |goto 36.12,46.86 < 20 |only if walking
Follow the path up |goto 35.40,46.92 < 15 |only if walking
kill Knight-Captain Johnny##147001
|tip He will appear on your minimap as a yellow dot.
|tip Pull him away from the nearby enemies, so you can fight him safely.
|tip Avoid the circled below enemies around this area.
|tip They will be able to detect you.
Slay the Target |q 53983/2 |goto 34.76,48.14 |future
step
Become Stealthed |havebuff 132320
|tip Use the "Smoke Bomb" ability.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-53287
accept Winter's Kiss Cluster##53287 |goto Stormsong Valley/0 70.96,85.40
|tip You will accept this quest automatically.
step
clicknpc Winter's Kiss Cluster##143728
Gather from the Winter's Kiss Cluster |q 53287/1 |goto 70.96,85.40 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52415
collect 3 Coarse Leather Barding##154166 |q 52415/1 |future
|tip Create them with Leatherworking or purchase them from the Auction House.
step
accept Work Order: Coarse Leather Barding##52415 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Work Order: Coarse Leather Barding##52415 |goto 59.29,69.33
|next "BFA_World_Quest_Emissaries"
step
label quest-50993
collect 20 Coarse Leather##152541 |q 50993/1 |future
|tip Create them with Leatherworking or purchase them from the Auction House.
step
accept Work Order: Coarse Leather##50993 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Work Order: Coarse Leather##50993 |goto 59.29,69.33
|next "BFA_World_Quest_Emissaries"
step
label quest-52393
collect 5 Contract: Tortollan Seekers##153667 |q 52393/1 |future
|tip Create them with Inscription or purchase them from the Auction House.
step
accept Work Order: Contract: Tortollan Seekers##52393 |goto Stormsong Valley/0 40.54,36.41
|tip You will accept this quest automatically.
step
talk Collector Kojo##135793
turnin Work Order: Contract: Tortollan Seekers##52393 |goto 40.54,36.41
|next "BFA_World_Quest_Emissaries"
step
label quest-52367
collect 5 Electroshock Mount Motivator##153573 |q 52367/1 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
accept Work Order: Electroshock Mount Motivator##52367 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Work Order: Electroshock Mount Motivator##52367 |goto 59.29,69.33
|next "BFA_World_Quest_Emissaries"
step
label quest-52353
collect 3 Enchant Ring - Seal of Haste##153439 |q 52353/1 |future
|tip Create them with Enchanting or purchase them from the Auction House.
step
accept Work Order: Enchant Ring - Seal of Haste##52353 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Work Order: Enchant Ring - Seal of Haste##52353 |goto 59.29,69.33
|next "BFA_World_Quest_Emissaries"
step
label quest-52354
collect 2 Enchant Ring - Seal of Mastery##153440 |q 52354/1 |future
|tip Create them with Enchanting or purchase them from the Auction House.
step
accept Work Order: Enchant Ring - Seal of Mastery##52354 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Work Order: Enchant Ring - Seal of Mastery##52354 |goto 59.29,69.33
|next "BFA_World_Quest_Emissaries"
step
label quest-52347
collect 20 Honey-Glazed Haunches##154882 |q 52347/1 |future
|tip Create them with Cooking or purchase them from the Auction House.
step
accept Work Order: Honey-Glazed Haunches##52347 |goto Stormsong Valley/0 40.54,36.41
|tip You will accept this quest automatically.
step
talk Collector Kojo##135793
turnin Work Order: Honey-Glazed Haunches##52347 |goto 40.54,36.41
|next "BFA_World_Quest_Emissaries"
step
label quest-52332
collect 5 Lightfoot Potion##152497 |q 52332/1 |future
|tip Create them with Alchemy or purchase them from the Auction House.
step
accept Work Order: Lightfoot Potion##52332 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Work Order: Lightfoot Potion##52332 |goto 59.29,69.33
|next "BFA_World_Quest_Emissaries"
step
label quest-50996
collect 40 Mistscale##153051 |q 50996/1 |future
|tip Farm them with Leatherworking or purchase them from the Auction House.
step
accept Work Order: Mistscale##50996 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Work Order: Mistscale##50996 |goto 59.29,69.33
|next "BFA_World_Quest_Emissaries"
step
label quest-52345
collect 20 Ravenberry Tarts##154883 |q 52345/1 |future
|tip Create them with Cooking or purchase them from the Auction House.
step
accept Work Order: Ravenberry Tarts##52345 |goto Stormsong Valley/0 40.54,36.41
|tip You will accept this quest automatically.
step
talk Collector Kojo##135793
turnin Work Order: Ravenberry Tarts##52345 |goto 40.54,36.41
|next "BFA_World_Quest_Emissaries"
step
label quest-50981
collect 20 Riverbud##152505 |q 50981/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Riverbud##50981 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Work Order: Riverbud##50981 |goto 59.29,69.33
|next "BFA_World_Quest_Emissaries"
step
label quest-52346
collect 20 Sailor's Pie##154888 |q 52346/1 |future
|tip Create them with Cooking or purchase them from the Auction House.
step
accept Work Order: Sailor's Pie##52346 |goto Stormsong Valley/0 40.54,36.41
|tip You will accept this quest automatically.
step
talk Collector Kojo##135793
turnin Work Order: Sailor's Pie##52346 |goto 40.54,36.41
|next "BFA_World_Quest_Emissaries"
step
label quest-50982
collect 20 Star Moss##152506 |q 50982/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Star Moss##50982 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Work Order: Star Moss##50982 |goto 59.29,69.33
|next "BFA_World_Quest_Emissaries"
step
label quest-50989
collect 10 Storm Silver Ore##152579 |q 50989/1 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Work Order: Storm Silver Ore##50989 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Work Order: Storm Silver Ore##50989 |goto 59.29,69.33
|next "BFA_World_Quest_Emissaries"
step
label quest-52300
accept Wagga Snarltusk##52300 |goto Stormsong Valley/3 40.98,51.71
|tip You will accept this quest automatically.
step
Follow the path |goto 40.98,51.71 < 10 |walk
kill Wagga Snarltusk##130079 |q 52300/1 |goto 11.77,28.81 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-52986
accept Ritual Cleansing##52986 |goto Stormsong Valley/0 66.98,45.54
|tip You will accept this quest automatically.
step
Run up the stairs |goto Stormsong Valley/0 66.93,44.19 < 7 |only if walking
click Tidal Kris##130913
|tip They look like small knives stabbed into the wooden rail along the edges of the ship.
|tip They will appear on your minimap as yellow dots.
Retrieve a Tidal Kris |q 52986/1 |goto 67.33,43.87 |future
stickystart "Slay_Kthir_52986"
step
use the Tidal Kris##162650
|tip Use it next to Fanatical Acolytes around this area.
|tip They look like humans kneeling on purple flaming runes on the ground around this area on the ship.
Disrupt #6# Rituals |q 52986/3 |goto 67.24,43.33 |future
step
label "Slay_Kthir_52986"
Kill enemies around this area
|tip On the ship.
Slay #15# K'thir |q 52986/2 |goto 67.24,43.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52394
collect 5 Contract: Champions of Azeroth##153668 |q 52394/1 |future
|tip Create them with Cooking or purchase them from the Auction House.
|polish
step
accept Work Order: Contract: Champions of Azeroth##52394 |goto Stormsong Valley/0 40.54,36.41
|tip You will accept this quest automatically.
step
Follow the path |goto 40.48,36.96 < 7 |only if walking
talk Collector Kojo##135793
turnin Work Order: Contract: Champions of Azeroth##52394 |goto 40.54,36.41
|next "BFA_World_Quest_Emissaries"
step
label quest-52891
accept Wendigo to Sleep##52891 |goto Stormsong Valley/0 69.33,69.31
|tip You will accept this quest automatically.
step
click Bee Pheromones+
|tip They look like tiny orange bottles sitting on tables on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Collect Bee Pheromones |q 52891/1 |goto 69.33,69.31 |future
stickystart "Kill_Highlands_Maulers_52891"
step
Enter the cave |goto 70.95,75.08 < 10 |walk
kill Ironbeard##142106 |q 52891/3 |goto 71.10,75.70 |future
|tip Inside the cave.
|tip Use the "Swarm of Bees" ability.
|tip It appears as a button on the screen.
step
label "Kill_Highlands_Maulers_52891"
kill 12 Honey-Crazed Mauler##131568 |q 52891/2 |goto 69.84,73.57 |future
|tip Use the "Swarm of Bees" ability.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-52299
Follow the path down |goto Stormsong Valley/0 49.13,65.61 < 15 |only if walking
accept Whiplash##52299 |goto Stormsong Valley/0 47.34,65.35
|tip You will accept this quest automatically.
step
Enter the cave |goto 47.34,65.35 < 10 |walk
kill Whiplash##129803 |q 52299/1 |goto 47.21,65.86 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-52459
accept Whirlwing##52459 |goto Stormsong Valley/0 46.90,42.14
|tip You will accept this quest automatically.
step
kill Whirlwing##142088 |q 52459/1 |goto 46.90,42.14 |future
|tip He flies in the air around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-52344
collect 20 Kul Tiramisu##154881 |q 52344/1 |future
|tip Create them with Cooking or purchase them from the Auction House.
step
accept Work Order: Kul Tiramisu##52344 |goto Stormsong Valley/0 40.54,36.41
|tip You will accept this quest automatically.
step
talk Collector Kojo##135793
turnin Work Order: Kul Tiramisu##52344 |goto 40.54,36.41
|next "BFA_World_Quest_Emissaries"
step
label quest-50989
collect 10 Storm Silver Ore##152579 |q 50989/1 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Work Order: Storm Silver Ore##50989 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Work Order: Storm Silver Ore##50989 |goto 59.29,69.33
|next "BFA_World_Quest_Emissaries"
step
label quest-52402
collect 5 Viridium##153704 |q 52402/1 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Work Order: Viridium##52402 |goto Stormsong Valley/0 59.29,69.33
|tip You will accept this quest automatically.
step
talk Sister Lilyana##135800
turnin Work Order: Viridium##52402 |goto 59.29,69.33
|next "BFA_World_Quest_Emissaries"
step
label quest-52352
accept Zeritarj##52352 |goto Stormsong Valley/0 31.59,55.08
|tip You will accept this quest automatically.
step
kill Zeritarj##140398 |q 52352/1 |goto 31.59,55.08 |future
|next "BFA_World_Quest_Emissaries"
step
label "BFA_World_Quest_Emissaries"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Tiragarde Sound World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Tiragarde Sound, Kul Tiras.",
condition_suggested=function() return level == 50 and completedq(51918) end,
condition_valid=function() return level >= 50 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=50.0,
worldquestzone={895,1161,1169},
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-50322
accept A Feathery Fad##50322 |goto Tiragarde Sound/0 75.72,62.19
|tip You will accept this quest automatically.
stickystart "Collect_Pristine_Skyhunter_Feather_50322"
step
kill Rustfur Matriarch##141051 |q 50322/2 |goto 75.72,62.19
step
label "Collect_Pristine_Skyhunter_Feather_50322"
kill Tiragarde Skyhunter##141049+
|tip They can be flying in the air around this area.
collect 8 Pristine Skyhunter Feather##157538 |q 50322/1 |goto 75.06,62.35 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52057
accept Against the Storm##52057 |goto Boralus/0 69.02,76.30
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Tidal Scrawlings+
|tip They look like long scrolls hanging on the walls around this area.
clicknpc Drowned Scriptures##139699+
|tip They look like floating open books around this area.
Damage the Monastery |q 52057/1 |goto 65.17,78.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51610
accept Adhara White##51610 |goto Tiragarde Sound/0 85.55,43.39
|tip You will accept this quest automatically.
step
kill Adhara White##138279 |q 51610/1 |goto 85.55,43.39 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52047
accept Against the Storm##52047 |goto Boralus/0 69.02,76.30
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Tidal Scrawlings+
|tip They look like long scrolls hanging on the walls around this area.
clicknpc Drowned Scriptures##139699+
|tip They look like floating open books around this area.
Disrupt the Monastic Rituals |q 52047/1 |goto 65.17,78.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51225
accept Albatrocity##51225 |goto Boralus/0 64.50,60.86
|tip You will accept this quest automatically.
step
clicknpc Terrified Civilian##136284
|tip They look like frightened humans on the ground and inside buildings around this area.
Calm #8# Terrified Civillians |q 51225/1 |goto 64.50,60.86 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54251
accept The Ambassador##54251 |goto Tiragarde Sound/0 80.06,41.51
|tip You will accept this quest automatically.
stickystart "Kill_Katrianna_54251"
step
kill Ambassador Gaines##145392 |q 54251/1 |goto 80.06,41.51 |future
step
label "Kill_Katrianna_54251"
kill Katrianna##145395 |q 54251/2 |goto 80.06,41.51 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54295
accept Artillery Master Goodwin##54295 |goto Tiragarde Sound/0 83.20,40.51
|tip You will accept this quest automatically.
step
kill Artillery Master Goodwin##147750 |q 54295/1 |goto 83.20,40.51 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51653
Cross the bridge |goto Tiragarde Sound/0 75.56,82.58 < 15 |only if walking
accept Auditor Dolp##51653 |goto Tiragarde Sound/0 75.46,78.23
|tip You will accept this quest automatically.
step
Follow the path up |goto 75.46,78.23 < 15 |only if walking
kill Auditor Dolp##132182 |q 51653/1 |goto 74.91,78.95 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51586
accept Azerite Empowerment##51586 |goto Tiragarde Sound/0 60.57,47.28
|tip You will accept this quest automatically.
step
kill Tidesage Bankson##138226 |q 51586/1 |goto 60.57,47.28 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52869
accept Azerite Empowerment##52869 |goto Tiragarde Sound/0 52.65,21.66
|tip You will accept this quest automatically.
step
Enter the cave |goto 52.65,21.66 < 10 |walk
Follow the path down |goto 52.99,20.86 < 10 |walk
kill Alchemist Pitts##141980 |q 52869/1 |goto 53.69,20.26 |future
|tip Inside the cave.
|tip She can be at other locations inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51584
accept Azerite Madness##51584 |goto Tiragarde Sound/0 60.89,47.75
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Heart of Azeroth" ability near their corpses.
|tip It appears as a button on the screen.
Absorb Azerite from Defeated Elementals |q 51584/1 |goto 60.89,47.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51581
accept Azerite Mining##51581 |goto Tiragarde Sound/0 60.02,47.35
|tip You will accept this quest automatically.
step
Kill Company enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51581/1 |goto 60.02,47.35 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52874
accept Azerite Mining##52874 |goto Tiragarde Sound/0 78.83,53.26
|tip You will accept this quest automatically.
step
Enter the cave |goto 78.83,53.26 < 15 |walk
Kill enemies around this area
|tip Inside the cave.
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area inside the cave..
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area inside the cave.
Recover Azerite |q 52874/1 |goto Tiragarde Sound/4 44.64,52.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51583
accept Azerite Empowerment##51583 |goto Tiragarde Sound/0 60.57,47.28
|tip You will accept this quest automatically.
step
Heal #5# Azeroth Wounds |q 51583/1 |goto 60.57,47.28 |future
|tip Use the "Heart of Azeroth" ability.
|tip Use it near the blue glowing spots with sparks flying out of them on the ground around this area.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-53279
accept Blooming Star Moss##53279 |goto Tiragarde Sound/0 78.85,77.59
|tip You will accept this quest automatically.
|polish
step
click Blooming Star Moss##143403
Gather the Blooming Star Moss |q 53279/1 |goto 78.85,77.59 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51669
accept Black-Eyed Bart##51669 |goto Tiragarde Sound/0 56.27,69.94
|tip You will accept this quest automatically.
|tip Inside the crumbled tower.
step
kill Black-Eyed Bart##132086 |q 51669/1 |goto 56.27,69.94 |future
|tip He walks around this area inside the crumbled tower.
|next "BFA_World_Quest_Emissaries"
step
label quest-51652
accept Barman Bill##51652 |goto Tiragarde Sound/0 76.10,82.88
|tip You will accept this quest automatically.
step
kill Barman Bill##129181 |q 51652/1 |goto 76.10,82.88 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-51666
accept Bashmu##51666 |goto Tiragarde Sound/0 34.51,30.34
|tip You will accept this quest automatically.
step
kill Bashmu##132068 |q 51666/1 |goto 34.51,30.34 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51638
accept Beachhead##51638 |goto Tiragarde Sound/0 57.94,76.02
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##144356
Tell her _"I am ready."_
Speak to Scrollsage Nola |q 51638/1 |goto 57.94,76.02 |future
step
kill Vicious Albatross##138186+
|tip They look like birds flying in the air around this area.
|tip Use the ability on your action bar.
kill Armored Claw##138242+
|tip They look like small crabs in the water.
|tip Use the ability on your action bar.
Help #12# Juvenile Turtles Reach the Ocean |q 51638/2 |future
|tip The turtles will slowly walk into the water.
|tip You must protect them from the birds and crabs.
|next "BFA_World_Quest_Emissaries"
step
label quest-51241
Cross the bridge |goto Tiragarde Sound/0 69.44,19.23 < 15 |only if walking
accept The Bear Witch Project##51241 |goto Tiragarde Sound/0 71.09,17.84
|tip You will accept this quest automatically.
step
kill 10 Enthralled Ashclaw##130085 |q 51241/1 |goto 71.09,17.84 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54182
accept Bilgewater Bash Brothers##54182 |goto Tiragarde Sound/0 84.32,35.00
|tip You will accept this quest automatically.
stickystart "Kill_Brugg_54182"
step
kill Grubb##147061 |q 54182/1 |goto 84.32,35.00 |future
step
label "Kill_Brugg_54182"
kill Brugg##147062 |q 54182/2 |goto 84.32,35.00 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51671
accept Billy Goat Barber##51671 |goto Tiragarde Sound/0 45.25,22.08
|tip You will accept this quest automatically.
step
click Gentle Goat##129110+
collect 6 Goat Fur##155681 |q 51671/1 |goto 45.25,22.08 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50296
accept Billy Goat Barber##50296 |goto Tiragarde Sound/0 45.25,22.08
|tip You will accept this quest automatically.
step
click Gentle Goat##129110+
collect 6 Goat Fur##155681 |q 50296/1 |goto 45.25,22.08 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51841
accept Blackthorne##51841 |goto Tiragarde Sound/0 84.08,72.38
|tip You will accept this quest automatically.
step
Follow the path up |goto 84.08,72.38 < 15 |only if walking
kill Blackthorne##139145 |q 51841/1 |goto 85.27,73.44 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53755
accept Blight and Sound##53755 |goto Tiragarde Sound/0 76.87,47.85
|tip You will accept this quest automatically.
stickystart "Destroy_Blight_Barrels_53755"
step
click Stack of Blight Barrels
Destroy the Stack of Blight Barrels |q 53755/2 |goto 76.87,47.85 |count 1 |future
step
click Stack of Blight Barrels
Destroy the Stack of Blight Barrels |q 53755/2 |goto 77.48,46.62 |count 2 |future
step
click Stack of Blight Barrels
Destroy the Stack of Blight Barrels |q 53755/2 |goto 76.95,46.13 |count 3 |future
step
label "Destroy_Blight_Barrels_53755"
click Blight Barrel+
|tip They look like single green-striped wooden barrels on the ground around this area.
Destroy #5# Blight Barrels |q 53755/1 |goto 77.57,46.50 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51613
accept Bloodmaw##51613 |goto Tiragarde Sound/0 58.88,33.40
|tip You will accept this quest automatically.
step
kill Bloodmaw##138299 |q 51613/1 |goto 58.88,33.40 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53280
accept Blooming Siren's Sting##53280 |goto Tiragarde Sound/0 72.28,17.77
|tip You will accept this quest automatically.
|polish
step
clicknpc Blooming Siren's Sting##143724
Gather the Blooming Siren's Sting |q 53280/1 |goto 72.28,17.77 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54281
accept Bombing Ballistae##54281 |goto Tiragarde Sound/0 81.88,36.64
|tip You will accept this quest automatically.
stickystart "Slay_Horde_Invaders_54281"
step
clicknpc Darkspear Ballista##128953
|tip They look like siege weapons that resemble troll masks around this area.
Destroy #6# Ballistae |q 54281/2 |goto 81.88,36.64 |future
step
label "Slay_Horde_Invaders_54281"
Kill Invading enemies around this area
Slay #8# Horde Invaders |q 54281/1 |goto 81.88,36.64 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52755
accept Bringing the Heat##52755 |goto Tiragarde Sound/0 44.81,15.02
|tip You will accept this quest automatically.
stickystart "Kill_Steam_Elementals_52755"
step
kill Prince Rathaw##129590 |q 52755/2 |goto 48.67,14.62 |future
step
label "Kill_Steam_Elementals_52755"
kill 5 Steam Elemental##129484 |q 52755/1 |goto 46.63,14.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51665
accept Broodmother Razora##51665 |goto Tiragarde Sound/0 83.54,44.83
|tip You will accept this quest automatically.
step
kill Broodmother Razora##130508 |q 51665/1 |goto 83.54,44.83 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55340
accept Calligraphy##55340 |goto Tiragarde Sound/0 57.35,61.84
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##151524
Tell him _"I am ready."_
Speak to Scrollsage Nola |q 55340/1 |goto 57.35,61.84 |future
step
Complete the Tracing Challenge |q 55340/2 |goto 57.32,61.77 |future
|tip Run around, tracing the pattern that appears.
|next "BFA_World_Quest_Emissaries"
step
label quest-54257
accept Captain Greensails##54257 |goto Tiragarde Sound/0 75.95,40.15
|tip You will accept this quest automatically.
step
kill Captain Greensails##147489 |q 54257/1 |goto 75.87,39.72 |future
|tip She walks around this area on the top decks of the ship.
|tip Click the Rope Ladder on the side of the ship to board the ship.
|next "BFA_World_Quest_Emissaries"
step
label quest-51848
accept Captain Wintersail##51848 |goto Tiragarde Sound/0 38.73,21.86
|tip You will accept this quest automatically.
step
Enter the cave |goto 38.73,21.86 < 10 |walk
click Smuggler's Cache##280649
|tip Inside the cave.
Watch the dialogue
kill Captain Wintersail##132088 |q 51848/1 |goto 38.44,20.71 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53812
accept A Carefully Laid Trap##53812 |goto Tiragarde Sound/0 77.18,41.26
|tip You will accept this quest automatically.
stickystart "Kill_Zunjo_Of_Senjin_53812"
stickystart "Kill_Alsian_Vistreth_53812"
step
kill Motega Bloodshield##145286 |q 53812/1 |goto 77.14,41.25 |future
|tip He sometimes fights around this area.
step
label "Kill_Zunjo_Of_Senjin_53812"
kill Zunjo of Sen'jin##145287 |q 53812/2 |goto 77.15,41.34 |future
|tip He sometimes fights around this area.
step
label "Kill_Alsian_Vistreth_53812"
kill Alsian Vistreth##145292 |q 53812/3 |goto 77.17,41.20 |future
|tip She sometimes fights around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-51842
accept Carla Smirk##51842 |goto Tiragarde Sound/0 72.52,81.04
|tip You will accept this quest automatically.
|tip She walks around on the deck of the ship.
step
kill Carla Smirk##139152 |q 51842/1 |goto 72.52,81.04 |future
|tip She walks around on the deck of the ship.
|next "BFA_World_Quest_Emissaries"
step
label quest-53314
Follow the path |goto Tiragarde Sound/0 67.30,22.88 < 7 |only if walking
Continue following the path |goto 67.62,21.35 < 7 |only if walking
Continue following the path |goto 67.75,20.19 < 10 |only if walking
accept Coarse Storm Silver##53314 |goto Tiragarde Sound/0 68.29,18.93
|tip You will accept this quest automatically.
|polish
step
click Coarse Storm Silver Deposit
collect Coarse Storm Silver##163626 |q 53314/1 |goto 68.29,18.93 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51405
accept Corruption in the Bay##51405 |goto Tiragarde Sound/0 32.62,25.68
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Underwater.
kill Corrupted Egg##126285+
|tip They look like large purple eggs on the ground underwater around this area.
Purge the Corruption |q 51405/1 |goto 32.62,25.68 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53832
accept Counter-Sabotage##53832 |goto Tiragarde Sound/0 81.88,36.64
|tip You will accept this quest automatically.
step
Pick up Hide-No-More 2000 |q 53832/1 |goto 81.60,36.70 |future
step
kill 6 Cloaked Saboteur##145410 |q 53832/2 |goto 82.70,36.41 |future
|tip Use the "Intruder Alert!" ability that appears onscreen to reveal them.
|next "BFA_World_Quest_Emissaries"
step
label quest-53808
accept Crawl To Victory##53808 |goto Tiragarde Sound/0 70.99,49.44
|tip You will accept this quest automatically.
step
talk Paratrooper Jacobs##139776
Tell him _"I need to infiltrate the Proudmoore Academy."_
Receive Orders from Paratrooper Jacobs |q 53808/1 |goto 70.99,49.44 |future
step
talk Paratrooper Jacobs##139776
Tell him _"I need to infiltrate the Proudmoore Academy."_
Start Flying to Prooudmoore Academy |invehicle |goto 70.99,49.44 |q 53808
step
Land at Prooudmoore Academy |outvehicle |goto Boralus/0 24.51,75.13 |q 53808
step
click Crawler Mine Parts##307434
|tip They look like broken Crawler Mines on the ground around this area.
collect 8 Crawler Mine Parts##164742 |q 53808/2 |goto 28.62,72.64 |future
step
click Remote Mine Controls
Use the Remote Mine Controls |q 53808/3 |goto 24.11,75.59 |future
step
Follow the path up |goto 25.81,74.46 < 10 |only if walking
Follow the path up |goto 26.63,70.61 |only if walking
Run up the stairs |goto 27.93,69.48 < 5 |only if walking
Cross the bridge |goto 28.17,62.05 < 5 |only if walking
Destroy the Alliance Bunker |q 53808/4 |goto 25.22,62.10 |future
|tip Use the "Stealth" and "Power Walk" abilities to avoid enemies.
|tip Use the "Detonate" button to blow up the bunker.
|next "BFA_World_Quest_Emissaries"
step
label quest-51647
accept Crews of Freehold##51647 |goto Tiragarde Sound/0 76.37,83.26
|tip You will accept this quest automatically.
stickystart "Collect_Cutwater_Corsair_Orders_51647"
stickystart "Collect_Blackwater_Bruiser_Orders_51647"
step
Kill enemies around this area
collect Bilge Rat Orders##153680 |q 51647/1 |goto 76.37,83.26 |future
step
label "Collect_Cutwater_Corsair_Orders_51647"
Kill enemies around this area
collect Cutwater Corsair Orders##153681 |q 51647/2 |goto 76.37,83.26 |future
step
label "Collect_Blackwater_Bruiser_Orders_51647"
Kill enemies around this area
collect Blacktooth Bruiser Orders##153682 |q 51647/3 |goto 76.37,83.26 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50234
accept Crews of Freehold##50234 |goto Tiragarde Sound/0 76.37,83.26
|tip You will accept this quest automatically.
stickystart "Collect_Cutwater_Corsair_Orders_50234"
stickystart "Collect_Blackwater_Bruiser_Orders_50234"
step
Kill enemies around this area
collect Bilge Rat Orders##153680 |q 50234/1 |goto 76.37,83.26 |future
step
label "Collect_Cutwater_Corsair_Orders_50234"
Kill enemies around this area
collect Cutwater Corsair Orders##153681 |q 50234/2 |goto 76.37,83.26 |future
step
label "Collect_Blackwater_Bruiser_Orders_50234"
Kill enemies around this area
collect Blacktooth Bruiser Orders##153682 |q 50234/3 |goto 76.37,83.26 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55300
accept The Cycle of Life##55300 |goto Tiragarde Sound/0 57.95,76.02
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##151474
Speak to Scrollsage Nola |q 55300/1 |goto 57.95,76.02 |future
step
talk Scrollsage Nola##151474
Tell him _"I am ready."_
Start the Game |invehicle |q 55300 |goto 57.95,76.02 |future
step
Kill Juvenile Turtle enemies around this area
|tip Use the "Move Left" and "Move Right" abilities to avoid the incoming attacks and reach turtles.
|tip Use the "Throw Turtle Shell" ability to throw a shell, killing all turtles in a straight line.
Stop #20# Juvenile Turtles from Raching the Ocean |q 55300/2 |goto 57.69,76.23 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51579
accept Dark Ranger Clea##51579 |goto Boralus/0 31.44,63.99
|tip You will accept this quest automatically.
step
kill Dark Ranger Clea##138039 |q 51579/1 |goto 31.44,63.99 |future
|tip She may already be fighting in another location nearby.
|next "BFA_World_Quest_Emissaries"
step
label quest-51577
accept Defending the Academy##51577 |goto Boralus/0 30.25,64.00
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Fallen Marine##138166+
|tip They look like dead human soldiers on the ground around this area.
click Harpoon Rack##297580+
|tip They look like weapon racks with spears on them on the ground around this area.
|tip You will pick up a harpoon.
click Harpoon Cannon+
|tip They look like gray metal cannons mounted on the edges of walls on the ground around this area.
|tip They will fire and sometimes pull an enemy out of the sky for you to kill.
Hold Back the Horde |q 51577/1 |goto 26.02,63.20 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53951
accept Bombs Away##53951 |goto Tiragarde Sound/0 81.26,41.66
|tip You will accept this quest automatically.
stickystart "Slay_Horde_Soldiers_53951"
step
Follow the path up |goto 81.26,41.66 < 20 |only if walking
kill Captain Holgresh##145817 |q 53951/1 |goto 82.02,40.77 |future
|tip He fights around this area.
step
label "Slay_Horde_Soldiers_53951"
Kill enemies around this area
Slay #10# Horde Soldiers |q 53951/2 |goto 81.26,41.66 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53716
accept Eastpoint Emergency##53716 |goto Tiragarde Sound/0 76.67,43.76
|tip You will accept this quest automatically.
stickystart "Slay_Alliance_Soldiers_53716"
step
clicknpc Wounded Grunt##144911+
|tip They look like orc soldiers laying on the ground around this area.
Bandage #6# Wounded Grunts |q 53716/1 |goto 76.67,43.76 |future
step
label "Slay_Alliance_Soldiers_53716"
Kill enemies around this area
Slay #6# Alliance Soldiers |q 53716/2 |goto 76.67,43.76 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53950
accept Explosive Relief##53950 |goto Tiragarde Sound/0 81.26,41.66
|tip You will accept this quest automatically.
stickystart "Slay_Alliance_Soldiers_53950"
step
Follow the path up |goto 81.26,41.66 < 20 |only if walking
kill Lieutenant Haas##145818 |q 53950/1 |goto 82.02,40.77 |future
|tip He fights around this area.
step
label "Slay_Alliance_Soldiers_53950"
Kill enemies around this area
Slay #10# Alliance Soldiers |q 53950/2 |goto 81.26,41.66 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53874
accept End Their Vigil##53874 |goto Tiragarde Sound/0 56.17,64.14
|tip You will accept this quest automatically.
stickystart "Kill_Vigil_Hill_Marines_53874"
step
click Stack of Supplies+
|tip They look like piles of small wooden crates on the ground around this area.
Burn #5# Stacks of Supplies |q 53874/2 |goto 56.17,64.14 |future
step
label "Kill_Vigil_Hill_Marines_53874"
kill 15 Vigil Hill Marine##130695 |q 53874/1 |goto 56.17,64.14 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53875
accept Fogsail for a Day##53875 |goto Tiragarde Sound/0 85.25,51.76
|tip You will accept this quest automatically.
step
talk Boatswain Mace##145524
Tell him _"Yarr! I'll join the crew!"_
Talk to Boatswain Mace |q 53875/1 |goto 84.86,51.75 |future
step
Kill enemies around this area
clicknpc Fogsail Prisoner##147524+
|tip They look like humans tied to wooden fences on the ground around this area.
click Fogsail Freebooter Banner+
|tip They look like wooden poles with black pirate flags on them around this area.
|tip Use the "Inspiring Charge" ability you gain.
|tip It appears as a button on the screen.
click Alliance Azerite Cache+
|tip They look like wooden wagons with barrels on and near them on the ground around this area.
Disrupt the Alliance Supply Chain |q 53875/2 |goto 82.83,49.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52458
accept Freehold: Pieces of Eight##52458
|tip Use the Group Finder to enter the "Freehold" dungeon.
|tip You will accept this quest automatically.
step
click Piece of Eight##136107+
|tip They look like small gold coins on wooden tables and objects on the ground inside the dungeon.
Collect #8# Pieces of Eight |q 52458/1 |future
step
kill Harlan Sweete##129440 |q 52458/2 |future
|tip He is the final boss in the "Freehold" dungeon.
|tip Use the "Freehold" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-52456
accept Freehold: Veteran Man O' War##52456
|tip Use the Group Finder to enter the "Freehold" dungeon.
|tip You will accept this quest automatically.
step
kill Veteran Man O' War##135353 |q 52456/1 |future
|tip Behind the Ring of Booty.
step
kill Harlan Sweete##129440 |q 52456/2 |future
|tip He is the final boss in the "Freehold" dungeon.
|tip Use the "Freehold" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-52454
accept Freehold: Dread Captain Vandegrim##52454
|tip Use the Group Finder to enter the "Freehold" dungeon.
|tip You will accept this quest automatically.
step
kill Dread Captain Vandegrim##135050 |q 52454/1 |future
|tip Inside the "Freehold" dungeon.
|tip Follow the path behind the first boss in the dungeon.
|tip Use the "Freehold" dungeon guide to accomplish this.
step
kill Harlan Sweete##129440 |q 52454/2 |future
|tip He is the final boss in the "Freehold" dungeon.
|tip Use the "Freehold" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-53877
accept First Aid Mission##53877 |goto Tiragarde Sound/0 76.67,43.76
|tip You will accept this quest automatically.
step
Kill enemies around this area
clicknpc Wounded Grunt##144911+
|tip They look like orc soldiers laying on the ground around this area.
Slay #12# Horde Soldiers |q 53877/1 |goto 76.67,43.76 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54129
accept First Mate Malone##54129 |goto Tiragarde Sound/0 84.77,47.60
|tip You will accept this quest automatically.
step
kill First Mate Malone##146773 |q 54129/1 |goto 84.77,47.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53814
accept First Sergeant Steelfang##53814 |goto Tiragarde Sound/0 86.01,42.50
|tip You will accept this quest automatically.
step
kill First Sergeant Steelfang##145308 |q 53814/1 |goto 86.01,42.50 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53076
accept Foundry Meltdown##53076 |goto Tiragarde Sound/0 78.74,49.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Experimental Azerite Weapons##295817+
|tip They look like groups of three glowing bombs on the ground around this area.
click Unfinished Irontide Cannon##296064+
|tip They look like large cannons on the ground around this area.
Delay the Foundry Production |q 53076/1 |goto 80.17,47.85 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51284
accept Falcon Hunt##51284 |goto Tiragarde Sound/0 57.72,26.40
|tip You will accept this quest automatically.
step
use the Bola Launcher##152643
|tip Use it on Hollowbeak Falcons.
|tip They look like birds flying in the air and perched on rocks around this area.
Shoot Down #8# Hollowbeak Falcons |q 51284/1 |goto 57.72,26.40 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50776
accept False Prophets##50776 |goto Boralus/0 61.62,37.46
|tip You will accept this quest automatically.
step
clicknpc Tidesage Doomspeaker##134845+
|tip They look like hooded humans around this area.
|tip They will appear on your minimap as yellow dots.
kill 3 Disguised K'thir##134845 |q 50776/1 |goto 61.62,37.46 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53277
accept Flourishing Sea Stalks##53277 |goto Tiragarde Sound/0 53.75,37.17
|tip You will accept this quest automatically.
step
click Flourishing Sea Stalk##297612+
|tip They look like tall plants along the shore around this area.
collect Flourishing Sea Stalk##163588 |q 53277/1 |goto 53.75,37.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52144
accept Foundry Meltdown##52144 |goto Tiragarde Sound/0 78.74,49.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Experimental Azerite Weapons##295817+
|tip They look like groups of three glowing bombs on the ground around this area.
click Unfinished Irontide Cannon##296064+
|tip They look like large cannons on the ground around this area.
Delay the Foundry Production |q 52144/1 |goto 80.17,47.85 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51654
accept Fowlmouth##51654 |goto Tiragarde Sound/0 90.45,77.11
|tip You will accept this quest automatically.
|tip It looks like a bird that flies around this area.
step
kill Fowlmouth##132211 |q 51654/1 |goto 90.45,77.11 |future
|tip It looks like a bird that flies around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-51662
accept Foxhollow Skyterror##51662 |goto Tiragarde Sound/0 60.11,22.18
|tip You will accept this quest automatically.
step
kill Foxhollow Skyterror##132127 |q 51662/1 |goto 60.11,22.18 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53188
Follow the path up |goto Tiragarde Sound/0 69.49,64.79 < 15 |only if walking
accept Frozen Freestyle##53188 |goto Tiragarde Sound/0 68.50,68.73
|tip You will accept this quest automatically.
step
talk Pengling Sledding Barker##131575
Talk to the Penguing Sledding Barker |q 53188/1 |goto 68.50,68.73 |future
step
Fly to the Top of the Slope |goto 63.37,74.57 < 10 |c |q 53188
step
clicknpc Racing Pengling##131523
Ride the Pengling to the Goal |q 53188/2 |goto 63.49,74.49 |future
|tip You will begin sliding down the ice path.
|tip Avoid the small mounds of snow on the ground as you slide down the mountain.
|next "BFA_World_Quest_Emissaries"
step
label quest-53699
accept Gate Crashers##53699 |goto Boralus/0 69.95,63.65
|tip You will accept this quest automatically.
step
kill 8 Rampaging Gatecrasher##144728 |q 53699/1 |goto 69.95,63.65 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52757
accept Grimestone Crimes##52757 |goto Tiragarde Sound/0 57.63,16.34
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Stolen Supplies+
|tip They look like wooden boxes with green balls in them on the ground around this area.
clicknpc Trapped Hatchling##141553+
|tip They look like small wooden cages on the ground around this area.
Waylay the Grimestone |q 52757/1 |goto 57.63,16.34 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52119
accept Goblin Azerite Extraction##52119 |goto Tiragarde Sound/0 75.74,55.30
|tip You will accept this quest automatically.
step
Kill the enemies that attack in waves
Protect the Azerite Extractor |q 52119/1 |goto 75.74,55.30 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51611
accept Ghost of the Deep##51611 |goto Tiragarde Sound/0 69.48,47.02
|tip You will accept this quest automatically.
|tip It walks around this area.
step
kill Ghost of the Deep##138288 |q 51611/1 |goto 69.48,47.02 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-52120
accept Gnomish Azerite Extraction##52120 |goto Tiragarde Sound/0 77.60,58.87
|tip You will accept this quest automatically.
step
Kill the enemies that attack in waves
Protect the Azerite Extractor |q 52120/1 |goto 77.60,58.87 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51318
accept Go for the Boat##51318 |goto Boralus/0 24.01,75.59
|tip You will accept this quest automatically.
|polish
step
clicknpc Training Cannon##137135
Man the Cannon |invehicle |q 51318 |goto 24.01,75.59 |future
step
Sink #8# Sailboat Dummies |q 51318/1 |goto 24.01,75.59 |future
|tip Use the "Cannonball" ability on your action bar to sink the boats.
|next "BFA_World_Quest_Emissaries"
step
label quest-51317
accept Grounding the Grimestone##51317 |goto Tiragarde Sound/0 56.27,17.37
|tip You will accept this quest automatically.
step
Kill Grimstone enemies around this area
Slay #12# Grimstone Troggs |q 51317/1 |goto 57.16,16.92 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50299
accept Gryphon Wranglin'##50299 |goto Tiragarde Sound/0 43.98,21.39
|tip You will accept this quest automatically.
step
use the Tether Shot##156928
|tip Use it on a Wild Gryphon around this area.
|tip They look like large eagles flying in the air around this area.
Mount a Wild Gryphon |invehicle |goto 43.98,21.39 |q 50299
step
Wrangle a Wild Gryphon |q 50299/1 |goto 43.98,21.39 |future
|tip Use the first two abilities on your action bar to deal damage to the Wild Gryphon.
|tip Use the third ability to try to keep the blue bar on the screen filled as much as possible.
|tip It will eventually surrender.
|next "BFA_World_Quest_Emissaries"
step
label quest-51844
accept Gulliver##51844 |goto Tiragarde Sound/0 57.84,55.91
|tip You will accept this quest automatically.
step
kill Gulliver##139233 |q 51844/1 |goto 57.84,55.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52167
accept Hardcore Raiders##52167 |goto Tiragarde Sound/0 57.56,66.91
|tip You will accept this quest automatically.
step
Kill enemies around this area
Defend Daelin's Gate |q 52167/1 |goto 57.56,66.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54119
accept Hartford Sternbach##54119 |goto Tiragarde Sound/0 80.34,37.06
|tip You will accept this quest automatically.
step
kill Hartford Sternbach##146675 |q 54119/1 |goto 80.34,37.06 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52145
accept Heave-Ho!##52145 |goto Tiragarde Sound/0 77.04,76.27
|tip You will accept this quest automatically.
step
click Tangled Rigging
|tip Back away from the Tangled Rigging to pull the items floating in the water to shore.
click "Sea Dog" Grog
|tip It will appear on the ground on the fifth try.
collect "Sea Dog" Grog##152667 |q 52145/1 |goto 77.04,76.27 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51245
accept I'm a Lumberjack and I'm Okay##51245 |goto Tiragarde Sound/0 68.31,18.42
|tip You will accept this quest automatically.
stickystart "Slay_Wicker_Invaders_51245"
step
clicknpc Entangled Lumberjack##143791+
|tip They look like standing humans trapped in brown tree roots on the ground around this area.
Free #4# Entangled Lumberjacks |q 51245/1 |goto 68.31,18.42 |future
step
label "Slay_Wicker_Invaders_51245"
Kill enemies around this area
Slay #8# Wicker Invaders |q 51245/2 |goto 68.31,18.42 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54268
accept Impulsive Propulsion##54268 |goto Tiragarde Sound/0 87.64,50.69
|tip You will accept this quest automatically.
step
click Gallywix's Getaway Pack##312155
collect Gallywix's Getaway Pack##165942 |q 54268/1 |goto 87.64,50.69 |future
stickystart "Slay_Wicker_Invaders_54268"
stickystart "Kill_7th_Legion_Marksman_54268"
step
click Azerite Charge
Destroy the Gyro Fuel Supplies |q 54268/4 |goto 88.47,48.72 |future
step
label "Slay_Wicker_Invaders_54268"
click Azerite Charge
|tip They look like yellow bombs next to cannons around this area.
|tip Use the Jet Pack abilities on-screen to reach higher points.
Destroy #5# Alliance Mortars |q 54268/3 |goto 89.70,49.84 |future
step
label "Kill_7th_Legion_Marksman_54268"
kill 7th Legion Marksman##147079 |q 54268/2 |goto 89.70,49.84 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51664
accept Kulett the Ornery##51664 |goto Tiragarde Sound/0 47.81,22.28
|tip You will accept this quest automatically.
step
kill Kulett the Ornery##131520 |q 51664/1 |goto 47.81,22.28 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51670
accept Lumbergrasp Sentinel##51670 |goto Tiragarde Sound/0 68.31,19.96
|tip You will accept this quest automatically.
step
kill Lumbergrasp Sentinel##134106 |q 51670/1 |goto 68.31,19.96 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-52760
accept Like Fish in a Barrel##52760 |goto Tiragarde Sound/0 59.17,48.89
|tip You will accept this quest automatically.
|tip On top of the rocks.
step
talk Eaglemaster Dawnhorn##141578
|tip On top of the rocks.
Speak with Eaglemaster Dawnhorn |q 52760/1 |goto 59.17,48.89 |future
step
talk Eaglemaster Dawnhorn##141578
|tip On top of the rocks.
Tell her _"Take me in!"_
Begin Flying to the Ship |invehicle |goto 59.17,48.89 |q 52760
step
Fly to the Ship |goto 57.52,43.04 < 10 |c |q 52760 |notravel
stickystart "Slay_Ship_Crew_52760"
step
kill Commodore Rooke##141747 |q 52760/2 |goto 58.87,41.61 |future
|tip Upstairs inside the ship, on the top level.
step
kill Chef "Crablegs" Carl##141748 |q 52760/4 |goto 58.71,41.68 |future
|tip He walks around inside the ship, on the second to top level.
step
kill Sister Price##141731 |q 52760/3 |goto 58.71,41.90 |future
|tip Downstairs inside the ship, on the second to bottom level.
step
label "Slay_Ship_Crew_52760"
Kill enemies around this area
|tip On the ship.
Slay #10# Ship Crew |q 52760/5 |goto 58.25,42.23 |future
step
Escape the Ship |goto 87.34,50.56 < 20 |noway |c
|tip Use the "Signal Flare" ability.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-52124
accept Losers Weepers##52124 |goto Tiragarde Sound/0 53.27,34.86
|tip You will accept this quest automatically.
stickystart "Kill_Enthralled_Sailors_52124"
stickystart "Kill_Alluring_Sirens_52124"
step
click Shipwrecked Supplies+
|tip They look like brown wooden crates on the ground around this area.
Collect #6# Shipwrecked Supplies |q 52124/3 |goto 53.27,34.86 |future
step
label "Kill_Enthralled_Sailors_52124"
kill 5 Enthralled Sailor##123399 |q 52124/2 |goto 53.27,34.86 |future
step
label "Kill_Alluring_Sirens_52124"
kill 5 Alluring Siren##123192 |q 52124/1 |goto 53.27,34.86 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52805
accept Like Pulling Teeth##52805 |goto Tiragarde Sound/0 41.76,14.74
|tip You will accept this quest automatically.
stickystart "Collect_Intact_Wendigo_Teeth_52805"
step
Enter the cave |goto 43.11,13.42 < 10 |walk
kill Gore Horn##140404 |q 52805/2 |goto 43.62,12.65 |future
step
label "Collect_Intact_Wendigo_Teeth_52805"
Kill Wendigo enemies around this area
collect 25 Intact Wendigo Tooth##161312 |q 52805/1 |goto 41.76,14.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50295
accept Like Pulling Teeth##50295 |goto Tiragarde Sound/0 41.76,14.74
|tip You will accept this quest automatically.
stickystart "Collect_Intact_Wendigo_Teeth_50295"
step
Enter the cave |goto 43.11,13.42 < 10 |walk
kill Gore Horn##140404 |q 50295/2 |goto 43.62,12.65 |future
step
label "Collect_Intact_Wendigo_Teeth_50295"
Kill Wendigo enemies around this area
collect 25 Intact Wendigo Tooth##161312 |q 50295/1 |goto 41.76,14.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51406
accept The Lord's Hunt##51406 |goto Tiragarde Sound/0 57.45,25.89
|tip You will accept this quest automatically.
step
Kill enemies around this area
Join in the Hunt! |q 51406/1 |goto 57.45,25.89 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53759
accept Look Out Below!##53759 |goto Tiragarde Sound/0 78.31,38.55
|tip You will accept this quest automatically.
step
clicknpc Siege Cannon##144930
Use the Siege Cannon |q 53759/1 |goto 78.31,38.55 |future
stickystart "Destroy_Buildings_53759"
step
Slay #50# Boralus Defenders |q 53759/2 |goto 78.31,38.55 |future
step
label "Destroy_Buildings_53759"
Destroy #8# Buildings |q 53759/3 |goto 78.31,38.55 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51895
accept Maison the Portable##51895 |goto Tiragarde Sound/0 58.16,50.09
|tip You will accept this quest automatically.
step
kill Maison the Portable##139290 |q 51895/1 |goto 58.16,50.09 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-51632
accept Make Loh Go##51632 |goto Tiragarde Sound/0 61.80,31.36
|tip You will accept this quest automatically.
step
talk Toki##144361
Tell him _"I am ready."_
Speak to Toki |q 51632/1 |goto 61.74,31.41 |future
step
Guide Loh to the Goal |q 51632/2 |future
|tip Move Loh to each flag, then to the finish line without crossing your own path.
|tip Use the abilities on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-53726
accept Mechinations##53726 |goto Boralus/0 34.52,68.15
|tip You will accept this quest automatically.
step
click Bot Scrambler##311583
collect Bot Scrambler##165841 |q 53726/1 |goto 34.52,68.15 |future
stickystart "Scramble_Siege_Shredders_53726"
stickystart "Scramble_Crawler_Mines_53726"
step
Run down the stairs |goto 28.84,69.44 < 10 |only if walking
Enter the building |goto 26.26,66.99 < 10 |walk
Scramble the North Teleporter |q 53726/4 |goto 28.43,66.63 |future
|tip Use the "Bot Scrambler" ability onscreen.
step
Run down the stairs |goto 25.91,70.48 < 10 |only if walking
Scramble the South Teleporter |q 53726/5 |goto 27.37,70.05 |future
|tip Use the "Bot Scrambler" ability onscreen.
step
label "Scramble_Siege_Shredders_53726"
click Siege Shredder##144705
Scramble #4# Siege Shredders |q 53726/2 |goto 31.47,63.93 |future
|tip Use the "Bot Scrambler" ability onscreen.
step
label "Scramble_Crawler_Mines_53726"
click Crawler Mine##144994
Scramble #8# Crawler Mines |q 53726/3 |goto 31.47,63.93 |future
|tip Use the "Bot Scrambler" ability onscreen.
|next "BFA_World_Quest_Emissaries"
step
label quest-51659
accept Merianae##51659 |goto Tiragarde Sound/0 43.53,17.31
|tip You will accept this quest automatically.
|tip At the bottom of the waterfall.
step
Enter the cave |goto 43.49,17.23 < 20 |walk
kill Merianae##131252 |q 51659/1 |goto 43.04,16.75 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54112
accept Mistweaver Nian##54112 |goto Tiragarde Sound/0 74.48,44.84
|tip You will accept this quest automatically.
step
Enter the building |goto 74.48,44.84 < 5 |walk
kill Mistweaver Nian##146651 |q 54112/1 |goto 74.48,44.89 |future
|tip Inside the building.
|next "BFA_World_Quest_Emissaries"
step
label quest-53994
accept Naga Attack!##53994 |goto Tiragarde Sound/0 65.80,49.84
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Naga War Supplies+
|tip They look like racks of weapons and crates the ground around this area.
click Naga War Banner+
|tip They look like tall posts with flags on them on the ground around this area.
click Naga Cage+
|tip They look like large crude cages with prisoners inside on the ground around this area.
Repel the Naga Invaders |q 53994/1 |goto 65.80,49.84 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50315
accept Not On the Itinerary##50315 |goto Tiragarde Sound/0 67.32,55.65
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Volatile Bubble##278479+
|tip They look like large bubbles floating above the ground around this area.
clicknpc Terrified Guest##133419+
|tip They look like scared friendly NPCs on the ground around this area.
Save the Resort Guests! |q 50315/1 |goto 67.32,55.65 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52430
accept Not So Bad Down Here##52430 |goto Tiragarde Sound/0 86.21,38.63
|tip You will accept this quest automatically.
step
talk Kwint##141077
|tip Underwater.
Tell him _"Begin pet battle."_
Defeat Kwint |q 52430/1 |goto 86.21,38.63 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53704
accept Not Too Sober Citizens Brigade##53704 |goto Boralus/0 76.63,72.62
|tip You will accept this quest automatically.
step
talk Augustus Hawks##145105
Tell him _"I need your help."_
Recruit Augustus Hawks |q 53704/4 |goto 79.17,74.61 |future
step
Follow the path |goto 73.94,69.44 < 10 |only if walking
talk Hades Prescott##145115
Tell her _"I need your help."_
Recruit Hades Prescott |q 53704/3 |goto 70.39,69.75 |future
step
Cross the bridge |goto 69.84,66.15 < 10 |only if walking
talk Erma Milforth##145103
Tell her _"I need your help."_
Recruit Erma Milforth |q 53704/2 |goto 70.69,60.12 |future
step
Follow the path |goto 67.83,58.26 < 10 |only if walking
talk Rusty Seafinch##145099
Tell him _"I need your help."_
Recruit Rusty Seafinch |q 53704/1 |goto 65.59,61.05 |future
step
kill Citybreaker Oka##146826 |q 53704/5 |goto 63.22,59.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51311
accept Energizing Extract##51311 |goto Tiragarde Sound/0 48.92,23.18
|tip You will accept this quest automatically.
step
kill Venomscale Slitherer##127600+
collect 8 Pulsating Extract##152849 |q 51311/1 |goto 48.92,23.18 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50324
accept Picturesque Fizzsprings Resort##50324 |goto Tiragarde Sound/0 64.45,53.46
|tip You will accept this quest automatically.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and the 3 pools of water nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Secluded Spring |q 50324/4 |goto 64.44,53.43 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 50324
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and an Enriched Rockshell are on the screen.
|tip They look like turtles on the ground around this area.
|tip Use the "Take Selfie" ability on your action bar.
Capture an Enriched Rockshell |q 50324/1 |goto 66.54,55.71 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 50324
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and the building nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Resort Lodge |q 50324/2 |goto 67.14,56.09 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 50324
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and a Midland Fawn are on the screen.
|tip They look like tiny deer on the ground around this area.
|tip Use the "Take Selfie" ability on your action bar.
Capture a Midland Fawn |q 50324/3 |goto 69.16,54.44 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-51843
accept P4-N73R4##51843 |goto Tiragarde Sound/0 64.31,63.29
|tip You will accept this quest automatically.
step
kill P4-N73R4##139205 |q 51843/1 |goto 64.31,63.29 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51462
accept Paratroopers##51462 |goto Tiragarde Sound/0 67.09,21.38
|tip You will accept this quest automatically.
|tip At the top of the hill.
step
talk Paratrooper Ort##139434
|tip At the top of the hill.
Receive Orders from Paratrooper Ort |q 51462/1 |goto 67.09,21.38 |future
step
talk Paratrooper Ort##139434
|tip At the top of the hill.
Tell him _"I need to infiltrate the Proudmoore Barracks."_
Mount the Grand Wyvern |invehicle |goto 67.09,21.38
step
Drop Into Proudmoore Academy |outvehicle |goto Boralus/0 38.59,38.55
|tip Use the "Drop Glider" ability on your action bar.
stickystart "Slay_Proudmoore_Barracks_Guards_51462"
step
kill Drill Sergeant Smithson##137790 |q 51462/3 |goto 35.71,37.90 |future
|tip Inside the building.
step
label "Slay_Proudmoore_Barracks_Guards_51462"
Kill Proudmoore enemies around this area
Slay #10# Proudmoore Barracks Guards |q 51462/2 |goto 38.59,38.55 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51646
accept Polly Want A Cracker?##51646 |goto Tiragarde Sound/0 77.35,84.75
|tip You will accept this quest automatically.
step
use Rodrigo's Birdseed Biscuit##154878
|tip Use it on Runaway Macaws around this area.
|tip They are flying in the air around this area.
|tip You don't need to target them.
|tip Run around this area to get closer to Runaway Macaws and spam use it.
Feed #6# Runaway Macaws |q 51646/1 |goto 77.35,84.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51660
accept Pack Leader Asenya##51660 |goto Tiragarde Sound/0 39.88,14.90
|tip You will accept this quest automatically.
step
Enter the cave |goto 39.88,14.90 < 10 |walk
kill Pack Leader Asenya##131262 |q 51660/1 |goto 38.90,15.30 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51092
accept Picturesque Boralus##51092 |goto Boralus/0 49.35,63.87
|tip You will accept this quest automatically.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and the Admiral's Elite Guard nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Admiral's Elite Guard |q 51092/6 |goto 49.35,63.87 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 51092
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and the stairs nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Proudmoore Keep Steps |q 51092/3 |goto 49.46,62.64 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 51092
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and the fountain nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Upper Square |q 51092/5 |goto 50.46,63.92 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 51092
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and the door nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Proudmoore Keep Door |q 51092/2 |goto 43.83,62.66 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 51092
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Stand on the fence.
|tip Position yourself so that your character's face and the maze of green bushes nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Maze Fountain |q 51092/4 |goto 40.81,75.68 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100 |q 51092
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and the statue nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Embassy Plaza |q 51092/1 |goto 48.43,75.83 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-51090
accept Picturesque Norwington Estate##51090 |goto Tiragarde Sound/0 52.85,28.67
|tip You will accept this quest automatically.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and the entrance of the building nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Estate Entrance |q 51090/1 |goto 53.00,30.48 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
Enter the building |goto 53.27,30.86 < 10 |only if walking
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and Lady Norwington nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
|tip She walks around this area.
Capture Lady Norwington |q 51090/4 |goto 53.72,31.37 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and Magoo nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture Magoo |q 51090/5 |goto 51.50,25.70 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and the huge bell nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Award Podium |q 51090/3 |goto 50.31,25.17 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
step
use the Battered S.E.L.F.I.E. Camera##157540
|tip Position yourself so that your character's face and the huge waterfall nearby are on the screen.
|tip Use the "Take Selfie" ability on your action bar.
Capture the Tall Waterfall |q 51090/2 |goto 48.00,23.55 |future
step
Stop Using the Loaned S.E.L.F.I.E. Camera |nobuff 1109100
|tip Use the "Cancel S.E.L.F.I.E. Camera" ability on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-50164
accept Polly Want A Cracker?##50164 |goto Tiragarde Sound/0 77.35,84.75
|tip You will accept this quest automatically.
step
use Rodrigo's Birdseed Biscuit##154878
|tip Use it on Runaway Macaws around this area.
|tip They are flying in the air around this area.
|tip You don't need to target them.
|tip Run around this area to get closer to Runaway Macaws and spam use it.
Feed #6# Runaway Macaws |q 50164/1 |goto 77.35,84.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51566
accept Resurgence of the Beast##51566 |goto Tiragarde Sound/0 35.26,24.55
|tip You will accept this quest automatically.
step
talk Okri Putterwrench##128680
Tell him _"Let's fly!"_
Speak to Okri for a Ride |q 51566/1 |goto 35.26,24.55 |future
step
Watch the dialogue
Fly to Anglepoint Bay |goto 36.34,29.93 < 10 |c |q 51566 |notravel
step
clicknpc Outrigger Cannon##129494
Mount an Outrigger Cannon |q 51566/2 |goto 36.31,29.81 |future
step
Shoot Down #10# Erupting Darkness |q 51566/3 |goto 36.30,29.84 |future
|tip They look like big purple orbs flying towards you.
|tip Use the ability on your action bar.
step
talk Outrigger Engineer##143896
Tell him _"Fire!"_
Watch the dialogue
Talk to the Outrigger Engineer to Repel Viq'Goth |q 51566/4 |goto 36.37,29.45 |future
step
clicknpc Outrigger Gryphon##129580
Ride the Outrigger Gryphon to Town |q 51566/5 |goto 36.77,29.72 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51580
accept Rear Admiral Hainsworth##51580 |goto Tiragarde Sound/0 70.99,49.44
|tip You will accept this quest automatically.
step
talk Paratrooper Jacobs##139776
Receive the Orders from Paratrooper Jacobs |q 51580/1 |goto 70.99,49.44 |future
step
talk Paratrooper Jacobs##139776
Tell him _"I need to infiltrate the Proudmoore Academy."_
Mount the Riding Bat |invehicle |goto 70.99,49.44
step
Drop Into the Proudmoore Academy |outvehicle |goto Boralus/0 31.44,63.99
|tip Use the "Drop Glider" ability on your action bar.
step
kill Rear Admiral Hainsworth##137983 |q 51580/2 |goto 31.44,63.99 |future
|tip He may already be fighting in another location nearby.
|next "BFA_World_Quest_Emissaries"
step
label quest-51661
accept Raging Swell##51661 |goto Tiragarde Sound/0 64.78,58.64
|tip You will accept this quest automatically.
step
kill Raging Swell##132179 |q 51661/1 |goto 64.78,58.64 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51890
accept Ranja the Last Chillpaw##51890 |goto Tiragarde Sound/0 68.31,63.54
|tip You will accept this quest automatically.
step
kill Ranja##139278 |q 51890/1 |goto 68.31,63.54 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53313
accept Rough Monelite##53313 |goto Tiragarde Sound/0 62.72,18.37
|tip You will accept this quest automatically.
step
click Rough Monelite Deposit##297467
collect Rough Monelite##163625 |q 53313/1 |goto 62.65,17.78 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54167
click Expedition Map##143968
|tip Click the "Find Crew" button to join the queue.
accept Set Sail##54167 |goto Boralus/0 66.73,33.25
|tip You will accept this quest automatically when entering the expedition.
step
Win 1 Island Expedition |q 54167/1 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53784
accept Siege Engineer Krackleboom##53784 |goto Boralus/0 31.52,63.99
|tip You will accept this quest automatically.
step
kill Siege Engineer Krackleboom##145161 |q 53784/1 |goto 31.52,63.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52756
accept Snow Way Out##52756 |goto Tiragarde Sound/0 41.75,14.81
|tip You will accept this quest automatically.
stickystart "Slay_Wendigos_52756"
step
clicknpc Horde Scout##141548+
|tip They look like orcs frozen in ice on the ground around this area.
Free #5# Horde Scouts |q 52756/2 |goto 41.75,14.81 |future
step
label "Slay_Wendigos_52756"
Kill Wendigo enemies around this area
Slay #8# Wendigos |q 52756/1 |goto 41.75,14.81 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51463
accept Sky Drop Rescue##51463 |goto Tiragarde Sound/0 67.09,21.38
|tip You will accept this quest automatically.
step
talk Paratrooper Ort##139434
Receive the Orders from Paratrooper Ort |q 51463/1 |goto 67.09,21.38 |future
step
talk Paratrooper Ort##139434
Tell him _"I need to infiltrate the Proudmoore Barracks."_
Begin Traveling to Proudmoore Barracks |invehicle |goto 67.09,21.38 |q 51463
step
Parachute into Proudmoore Barracks |outvehicle |goto Boralus/0 41.78,33.76 |q 51463
|tip Use the ability on your action bar.
step
click Ball and Chain
|tip Inside the building.
Rescue Captive Ta'dom |q 51463/2 |goto 42.50,34.86 |future
step
Follow the path |goto 42.27,37.69 < 10 |only if walking
click Ball and Chain
|tip Inside the building.
Rescue Captive Idina |q 51463/3 |goto 40.08,37.39 |future
step
click Ball and Chain
|tip Inside the building.
Rescue Captive Tanra |q 51463/4 |goto 39.99,39.84 |future
step
Follow the path |goto 37.68,39.54 < 5 |walk
click Ball and Chain
|tip Inside the building.
Rescue Captive Ortuk |q 51463/5 |goto 37.47,38.23 |future
step
Escape the Proudmoore Barracks |goto Tiragarde Sound/0 87.34,50.56 < 10 |noway |c
|tip Use the "Signal Flare" ability.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-51578
accept The Sea Runs Red##51578 |goto Tiragarde Sound/0 70.99,49.44
|tip You will accept this quest automatically.
step
clicknpc Paratrooper Jacobs##139776
Receive the Orders from Paratrooper Jacobs |q 51578/1 |goto 70.99,49.44 |future
step
talk Paratrooper Jacobs##139776
Tell him _"I need to infiltrate the Proudmoore Academy."_
Mount the Riding Bat |invehicle |goto 70.99,49.44
step
Drop Into Proudmoore Academy |outvehicle |goto Boralus/0 32.07,67.53
|tip Use the "Drop Glider" ability on your action bar.
step
Kill enemies around this area
click Military Documents##290532+
|tip They look like stacks of papers on the ground around this area.
click Harpoon Rack+
|tip They look like wooden racks with weapons on them on the ground around this area.
|tip These will give you the "Holding a Harpoon" buff.
click Harpoon Cannon+
|tip They look like slim silver cannons near the fences on the ground around this area.
|tip You need to have the "Holding a Harpoon" buff to be able to use these.
Siege the Academy and Alliance Forces |q 51578/2 |goto 32.07,67.53 |future
step
Escape the Proudmoore Barracks |goto Tiragarde Sound/0 87.34,50.56 < 10 |noway |c
|tip Use the "Signal Flare" ability.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-51656
accept Saurolisk Tamer Mugg##51656 |goto Tiragarde Sound/0 58.65,14.80
|tip You will accept this quest automatically.
step
kill Mugg##127290 |q 51656/1 |goto 58.65,14.80 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51893
Follow the path |goto Tiragarde Sound/0 87.66,46.08 < 30 |only if walking and Horde
Continue following the path |goto Tiragarde Sound/0 84.93,35.14 < 30 |only if walking and Horde
accept Sawtooth##51893 |goto Boralus/0 78.15,46.22
|tip You will accept this quest automatically.
step
kill Sawtooth##139287 |q 51893/1 |goto 78.15,46.22 |future
|tip It swims underwater around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-50767
accept The Scrimshaw Gang##50767 |goto Boralus/0 53.12,41.30
|tip You will accept this quest automatically.
stickystart "Collect_Scrimshaw_Ledger_50767"
step
Follow the path |goto 53.86,45.47 < 10 |walk
Enter the building |goto 54.66,44.94 < 10 |walk
kill Don Adams##138603 |q 50767/2 |goto 55.01,43.72 |future
|tip Downstairs inside the building.
step
label "Collect_Scrimshaw_Ledger_50767"
Kill Scrimshaw enemies around this area
collect Scrimshaw Ledger##158677 |q 50767/1 |goto 52.77,45.48 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54167
click Expedition Map##143968
|tip Join an island expedition.
accept Set Sail##54167 |goto Boralus/0 66.73,33.25
|tip You will accept this quest automatically once you enter the expedition.
step
Win 1 Island Expedition |q 54167/1 |goto 66.73,33.25 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51626
accept Shell Game##51626 |goto Tiragarde Sound/0 63.55,57.25
|tip You will accept this quest automatically.
|tip At the top of the hill.
step
talk Collector Kojo##144353
|tip At the top of the hill.
Tell him _"I am ready."_
Speak to Collector Kojo |q 51626/1 |goto 63.55,57.25 |future
step
click Shell+
|tip Click the shells to reveal objects.
|tip Match the objects in pairs.
Complete Collector Kojo's Shell Game |q 51626/2 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51892
accept Shiverscale the Toxic##51892 |goto Tiragarde Sound/0 54.61,33.53
|tip You will accept this quest automatically.
step
Follow the path up |goto 54.61,33.53 < 15 |only if walking
kill Shiverscale the Toxic##139285 |q 51892/1 |goto 55.11,32.40 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53331
accept Show-Off##53331 |goto Tiragarde Sound/0 51.65,26.20
|tip You will accept this quest automatically.
step
clicknpc Cooper##127718
Mount Cooper |q 53331/1 |goto 51.65,26.20 |future
step
Score 300 Points |q 53331/2 |goto 51.65,26.20 |future
|tip Jump over fences to keep the stacks of Style as high as possible.
|tip Use the "Harpoon Jab" ability on your action bar while facing Targets around this area.
|tip They look like a yellow puppets in wooden barrels on the ground around this area.
|tip You will hear "Zeppelin out!" yelled nearby, then a Paper Zeppelin will appear, flying overhead.
|tip Use the "Bolas" ability on your action bar on the Paper Zeppelins.
|tip They look like small blimps flying in the air around this area.
|tip The zeppelins count for a lot of points, so don't miss any.
step
Stop Riding Cooper |outvehicle
|tip Click the yellow arrow on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-49994
Follow the path |goto Tiragarde Sound/0 70.34,18.77 < 20 |only if walking
Follow the path up |goto Tiragarde Sound/0 74.52,13.20 < 15 |only if walking
accept Sliding with Style##49994 |goto Tiragarde Sound/0 75.23,11.94
|tip You will accept this quest automatically.
step
talk Pengling Sledding Barker##131575
Talk to the Penguing Sledding Barker |q 49994/1 |goto 75.23,11.94 |future
step
Fly to the Top of the Slope |goto 82.75,10.70 < 10 |c |q 49994 |future
step
clicknpc Racing Pengling##131523
Ride the Pengling to the Goal |q 49994/2 |goto 82.61,10.57 |future
|tip You will begin sliding down the ice path.
|tip Avoid the small mounds of snow on the ground as you slide down the mountain.
|next "BFA_World_Quest_Emissaries"
step
label quest-53189
Follow the path up |goto Tiragarde Sound/0 79.04,67.39 < 20 |only if walking
accept Slippery Slopes##53189 |goto Tiragarde Sound/0 79.84,66.57
|tip You will accept this quest automatically.
step
talk Rodrigo##129098
Talk to the Penguing Sledding Barker |q 53189/1 |goto 79.84,66.57 |future
step
Fly to the Top of the Slope |goto 83.41,64.72 < 10 |c |q 53189 |future
step
clicknpc Racing Pengling##131523
Ride the Pengling to the Goal |q 53189/2 |goto 83.59,64.90 |future
|tip You will begin sliding down the ice path.
|tip Avoid the small mounds of snow on the ground as you slide down the mountain.
|next "BFA_World_Quest_Emissaries"
step
label quest-52143
accept Smaller Haulers##52143 |goto Tiragarde Sound/0 80.19,47.84
|tip You will accept this quest automatically.
stickystart "Kill_Ashvane_Company_Workers_52143"
step
talk Urchin Worker##142727+
Tell them _"Head down to the water. There is a boat waiting to take you to safety."_
Free #8# Urchin Workers |q 52143/1 |goto 80.19,47.84 |future
step
label "Kill_Ashvane_Company_Workers_52143"
Kill Company enemies around this area
Slay #8# Ashvane Company Workers |q 52143/2 |goto 80.19,47.84 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53315
accept Smooth Platinum##53315 |goto Tiragarde Sound/0 60.85,47.73
|tip You will accept this quest automatically.
step
click Smooth Platinum Deposit##297473
collect Smooth Platinum##163627 |q 53315/1 |goto 60.85,47.73 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50977
accept Smuggler Shakedown##50977 |goto Boralus/0 63.10,61.76
|tip You will accept this quest automatically.
stickystart "Collect_Bootleg_Weapon_Crates_50977"
step
kill Mattius "The Gun" Grubb##136198 |q 50977/2 |goto 62.07,62.19 |future
step
label "Collect_Bootleg_Weapon_Crates_50977"
click Bootleg Weapon Crate##287091+
|tip They look like large brown boxes on the ground around this area.
collect 5 Bootleg Weapon Crate##159673 |q 50977/1 |goto 64.61,63.56 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50421
accept Sparring on the Spar##50421 |goto Tiragarde Sound/0 72.10,81.37
|tip You will accept this quest automatically.
step
click Strong Rope##281297
Climb the Mast |q 50421/1 |goto 72.10,81.37 |future
step
Push the Opponent Off the Spar |q 50421/2 |goto 72.04,81.36 |future
|tip Use the abilities on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-51651
Run up the stairs |goto Tiragarde Sound/0 78.88,80.39 < 15 |only if walking
accept Squacks##51651 |goto Tiragarde Sound/0 80.91,82.82
|tip You will accept this quest automatically.
step
kill Squacks##132280 |q 51651/1 |goto 80.91,82.82 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51839
accept Squirgle of the Depths##51839 |goto Tiragarde Sound/0 48.90,37.02
|tip You will accept this quest automatically.
step
kill Squirgle of the Depths##139135 |q 51839/1 |goto 48.90,37.02 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51388
accept Stopping the Infestation##51388 |goto Tiragarde Sound/0 38.31,30.15
|tip You will accept this quest automatically.
stickystart "Kill_Parasitic_Mindstealers_51388"
step
click Infested Cargo##289363+
|tip They look like small crates underwater around this area.
Burn #5# Infested Cargo |q 51388/1 |goto 38.31,30.15 |future
step
label "Kill_Parasitic_Mindstealers_51388"
kill 5 Parasitic Mindstealer##125959
|tip Underwater.
Slay #5# Parasitic Mindstealers |q 51388/2 |goto 38.31,30.15 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54091
accept Strong Arm John##54091 |goto Tiragarde Sound/0 78.11,49.13
|tip You will accept this quest automatically.
step
Enter the building |goto 78.11,49.13 < 15 |walk
kill Strong Arm John##146611 |q 54091/1 |goto 77.95,49.21 |future
|tip Inside the building.
|next "BFA_World_Quest_Emissaries"
step
label quest-52804
accept Something Stirs in the Depths##52804 |goto Tiragarde Sound/0 32.50,25.36
|tip You will accept this quest automatically.
stickystart "Slay_Corrupted_Wildlife_52804"
step
click Abyss Idol##141782+
|tip They look like stone statues with a purple flame inside of them underwater around this area.
|tip They will appear on your minimap as yellow dots.
Destroy #5# Abyss Idols |q 52804/1 |goto 32.50,25.36 |future
step
label "Slay_Corrupted_Wildlife_52804"
Kill enemies around this area
|tip Underwater.
|tip Only enemies that look purple will count for this quest goal.
Slay #8# Corrupted Wildlife |q 52804/2 |goto 32.50,25.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53196
accept Swab This!##53196 |goto Tiragarde Sound/0 77.06,82.91
|tip You will accept this quest automatically.
step
clicknpc Riding Macaw##143068
Mount the Riding Macaw |invehicle |goto 77.06,82.62 |q 53196 |future
step
Bomb #100# Pirates |q 53196/1
|tip Use the ability on your action bar.
|tip They are on the ground around this area as you fly.
|next "BFA_World_Quest_Emissaries"
step
label quest-52159
accept Swab This!##52159 |goto Tiragarde Sound/0 77.06,82.91
|tip You will accept this quest automatically.
step
clicknpc Riding Macaw##143068
Mount the Riding Macaw |invehicle |goto 77.06,82.62 |q 52159 |future
step
Bomb #100# Pirates |q 52159/1 |future
|tip Use the ability on your action bar.
|tip They are on the ground around this area as you fly.
|next "BFA_World_Quest_Emissaries"
step
label quest-52751
accept Strange Looking Dogs##52751 |goto Tiragarde Sound/0 67.72,12.85
|tip You will accept this quest automatically.
step
talk Burly##141479
Tell him _"Begin pet battle."_
Defeat Burly |q 52751/1 |goto 67.72,12.85 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51024
collect 20 Akunda's Bite##152507 |q 51024/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Akunda's Bite##51024 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Akunda's Bite##51024 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51028
collect 20 Blood-Stained Bone##154164 |q 51028/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Blood-Stained Bone##51028 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Blood-Stained Bone##51028 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51029
collect 15 Calcified Bone##154165 |q 51029/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Calcified Bone##51029 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Calcified Bone##51029 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51030
collect 20 Coarse Leather##152541 |q 51030/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Coarse Leather##51030 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Coarse Leather##51030 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51035
collect 10 Deep Sea Satin##152577 |q 51035/1 |future
|tip Farm them from humanoid mobs or purchase them from the Auction House.
step
accept Supplies Needed: Deep Sea Satin##51035 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Deep Sea Satin##51035 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-52375
collect 20 Great Sea Catfish##152547 |q 52375/1 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Great Sea Catfish##52375 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Coarse Leather##52375 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51033
collect 15 Mistscale##153051 |q 51033/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Mistscale##51033 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Monelite Ore##51033 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51017
collect 20 Monelite Ore##152512 |q 51017/1 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Supplies Needed: Monelite Ore##51017 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Monelite Ore##51017 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-52379
collect 20 Redtail Loach##152549 |q 52379/1 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Redtail Loach##52379 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Redtail Loach##52379 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51022
collect 20 Riverbud##152505 |q 51022/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Riverbud##51022 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Riverbud##51022 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-52376
collect 20 Sand Shifter##152543 |q 52376/1 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Sand Shifter##52376 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Sand Shifter##52376 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51027
collect 20 Sea Stalk##152511 |q 51027/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Sea Stalk##51027 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Sea Stalk##51027 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51032
collect 20 Shimmerscale##153050 |q 51032/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Shimmerscale##51032 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Shimmerscale##51032 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51026
collect 20 Siren's Pollen##152509 |q 51026/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Siren's Pollen##51026 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Siren's Pollen##51026 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-52378
collect 20 Slimy Mackerel##152544 |q 52378/1 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Slimy Mackerel##52378 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Slimy Mackerel##52378 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51023
collect 20 Star Moss##152506 |q 51023/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Star Moss##51023 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Star Moss##51023 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51021
collect 10 Storm Silver Ore##152579 |q 51021/1 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Supplies Needed: Storm Silver Ore##51021 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Storm Silver Ore##51021 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51031
collect 15 Tempest Hide##154722 |q 51031/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Tempest Hide##51031 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Tempest Hide##51031 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51034
collect 20 Tidespray Linen##152576 |q 51034/1 |future
|tip Farm them from Humanoid mobs or purchase them from the Auction House.
step
accept Supplies Needed: Tidespray Linen##51034 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Tidespray Linen##51034 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-52377
collect 20 Tiragarde Perch##152548 |q 52377/1 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Tiragarde Perch##52377 |goto Boralus/0 67.52,21.55
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Supplies Needed: Tiragarde Perch##52377 |goto 67.52,21.55
|next "BFA_World_Quest_Emissaries"
step
label quest-51025
collect 20 Winter's Kiss##152508 |q 51025/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Winter's Kiss##51025 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Winter's Kiss##51025 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51385
accept A Supply of Stingers##51385 |goto Tiragarde Sound/0 41.09,29.54
|tip You will accept this quest automatically.
step
kill Barbtail Stingray##128676+
|tip Underwater around this area.
collect 6 Intact Venomous Barb##153486 |q 51385/1 |goto 41.09,29.54 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51891
accept Sythian the Swift##51891 |goto Tiragarde Sound/0 66.93,13.43
|tip You will accept this quest automatically.
|tip He looks like a large white deer that runs around this area.
step
kill Sythian the Swift##139280 |q 51891/1 |goto 66.93,13.43 |future
|tip He looks like a large white deer that runs around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-50792
accept Taking Bribes##50792 |goto Boralus/0 60.29,39.14
|tip You will accept this quest automatically.
step
talk Dubious Guard##134847+
|tip They look like armored Boralus guards around this area.
|tip They will appear on your minimap as yellow dots.
Ask them _"Why aren't you at your post?"_
|tip They may attack you.
Question #5# Dubious Guards |q 50792/1 |goto 60.29,39.14 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52056
accept The Tendrils of Fate##52056 |goto Boralus/0 70.43,76.93
|tip You will accept this quest automatically.
stickystart "Kill_Tidesage_Archivist_52056"
step
kill Sister Celicia##136177 |q 52056/1 |goto 63.67,87.80 |future
step
kill Brother Matthew##136166 |q 52056/2 |goto 68.18,80.80 |future
|tip He walks around this area.
step
kill Sister Adrianna##136174 |q 52056/3 |goto 68.13,74.68 |future
step
label "Kill_Tidesage_Archivist_52056"
kill 6 Tidesage Archivist##136158 |q 52056/4 |goto 67.02,75.66 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51849
accept Tempestria##51849 |goto Tiragarde Sound/0 61.20,17.32
|tip You will accept this quest automatically.
step
Follow the path up |goto 61.20,17.32 < 20 |only if walking
click Suspicious Pile of Meat##281172
Kill the enemies that attack
kill Tempestria##133356 |q 51849/1 |goto 60.53,17.54 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52010
accept The Tendrils of Fate##52010 |goto Boralus/0 70.43,76.93
|tip You will accept this quest automatically.
stickystart "Kill_Tidesage_Archivist_52010"
step
kill Sister Adrianna##136174 |q 52010/3 |goto 68.13,74.68 |future
step
kill Brother Matthew##136166 |q 52010/2 |goto 68.18,80.80 |future
|tip He walks around this area.
step
kill Sister Celicia##136177 |q 52010/1 |goto 63.67,87.80 |future
step
label "Kill_Tidesage_Archivist_52010"
kill 6 Tidesage Archivist##136158 |q 52010/4 |goto 67.02,75.66 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51894
accept Tentulos the Drifter##51894 |goto Tiragarde Sound/0 55.32,51.53
|tip You will accept this quest automatically.
step
kill Tentulos the Drifter##139289 |q 51894/1 |goto 55.32,51.53 |future
|tip Underwater.
|next "BFA_World_Quest_Emissaries"
step
label quest-51655
accept Teres##51655 |goto Tiragarde Sound/0 63.67,50.34
|tip You will accept this quest automatically.
step
kill Teres##131389 |q 51655/1 |goto 63.66,50.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52471
accept That's a Big Carcass##52471 |goto Tiragarde Sound/0 59.58,33.31
|tip You will accept this quest automatically.
step
talk Delia Hanako##141292
Tell her _"Begin pet battle."_
Defeat Delia Hanako |q 52471/1 |goto 59.58,33.31 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51622
accept Tidal Teachings##51622 |goto Boralus/0 61.78,84.81
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Kill the ones channeling on the water around this area.
kill Grasp from Beyond##136248
|tip It appears in the water after you kill all of the channeling enemies around this area.
Stop the Ritual |q 51622/1 |goto 61.78,84.81 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51621
accept Tidal Teachings##51621 |goto Boralus/0 61.78,84.81
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Kill the ones channeling on the water around this area.
kill Grasp from Beyond##136248
|tip It appears in the water after you kill all of the channeling enemies around this area.
Stop the Ritual |q 51621/1 |goto 61.78,84.81 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51287
accept Tol Dagor: Sealed Supplies##51287
|tip Use the Group Finder to enter the "Tol Dagor" dungeon.
|tip You will accept this quest automatically.
step
click Sealed Kul Tiran Crate+
|tip They look like rectangular wooden boxes on the ground throughout the indoors jail area of the dungeon.
collect 6 Sealed Kul Tiran Crate##159831 |q 51287/1 |future
step
kill Overseer Korgus##127503 |q 51287/2 |future
|tip He is the final boss in the dungeon.
|next "BFA_World_Quest_Emissaries"
step
label quest-51297
accept Tol Dagor: Shorefront Property##51297 |goto Tol Dagor/0 0.00,0.00
|tip Use the Group Finder to enter the "Tol Dagor" dungeon.
|tip You will accept this quest automatically.
step
kill Liskorath##137098 |q 51297/1 |goto 61.41,28.17 |future
|tip Northwest of the entrance.
step
kill Overseer Korgus##127503 |q 51297/2 |goto Tol Dagor/6 40.19,68.35 |future
|tip He is the final boss in the dungeon.
|next "BFA_World_Quest_Emissaries"
step
label quest-53078
accept Treasure in the Tides##53078 |goto Tiragarde Sound/0 88.54,79.05
|tip You will accept this quest automatically.
stickystart "Kill_Wailing_Sirens_53078"
step
click Washed Up Cargo##296159+
|tip They look like brown wooden crates on the ground around this area.
collect 8 Proudmoore Supply Crate##163099 |q 53078/1 |goto 88.54,79.05 |future
step
label "Kill_Wailing_Sirens_53078"
kill 6 Wailing Siren##126440 |q 53078/2 |goto 88.54,79.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54237
accept Togoth Cruelarm##54237 |goto Tiragarde Sound/0 79.27,37.74
|tip You will accept this quest automatically.
step
kill Togoth Cruelarm##144722 |q 54237/1 |goto 79.27,37.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51847
accept Tort Jaw##51847 |goto Tiragarde Sound/0 70.40,55.72
|tip You will accept this quest automatically.
step
kill Tort Jaw##139235 |q 51847/1 |goto 70.40,55.72 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52155
accept Treasure in the Tides##52155 |goto Tiragarde Sound/0 88.54,79.05
|tip You will accept this quest automatically.
stickystart "Kill_Wailing_Sirens_52155"
step
click Washed Up Cargo##296159+
|tip They look like brown wooden crates on the ground around this area.
collect 8 Proudmoore Supply Crate##163099 |q 52155/1 |goto 88.54,79.05 |future
step
label "Kill_Wailing_Sirens_52155"
kill 6 Wailing Siren##126440 |q 52155/2 |goto 88.54,79.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53346
accept Trogg Tromping##53346 |goto Tiragarde Sound/0 51.65,26.20
|tip You will accept this quest automatically.
step
clicknpc Cooper##127718
Mount Cooper |q 53346/1 |goto 51.65,26.20 |future
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Disrupt the Trogg Attack |q 53346/2 |goto 51.03,26.85 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51657
accept Twin-Hearted Construct##51657 |goto Tiragarde Sound/0 70.29,12.81
|tip You will accept this quest automatically.
step
Enter the cave |goto 70.29,12.81 < 10 |walk
click Ritual Effigy##280603
|tip Inside the cave.
kill Twin-hearted Construct##131984 |q 51657/1 |goto 70.34,12.49 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52455
accept Unbreakable##52455 |goto Tiragarde Sound/0 88.62,80.20
|tip You will accept this quest automatically.
step
clicknpc Chitara##141215
kill Chitara##141215
Defeat Chitara |q 52455/1 |goto 88.62,80.20 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52752
accept Vigilant Lookouts##52752 |goto Tiragarde Sound/0 54.15,58.07
|tip You will accept this quest automatically.
step
click Vigil Hill Documents##293688
|tip Inside the tent.
collect Vigil Hill Documents##162449 |q 52752/2 |goto 53.51,57.17 |future
step
kill Commander Hallewell##141510
|tip Inside the building.
collect Daelin's Gate Dossier##162448 |q 52752/1 |goto 54.04,56.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50958
accept Watch Your Wallets##50958 |goto Boralus/0 57.82,38.43
|tip You will accept this quest automatically.
step
clicknpc Scrimshaw Pickpocket##134849+
|tip They look like children running on the ground around this area.
Stop #3# Pickpockets |q 50958/1 |goto 57.82,38.43 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51758
accept Weapons Shipment##51758 |goto Boralus/0 52.96,42.30
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Bombs##291059+
|tip They look like wooden crates filled with silver bombs on the ground around this area.
collect 40 Unstable Azerite Bomb##160667 |q 51758/1 |goto 52.96,42.30 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53713
accept Wet Work: Bridgeport##53713 |goto Tiragarde Sound/0 74.51,50.98
|tip You will accept this quest automatically.
step
talk Shadow Hunter Scout##147381
Tell him _"I am ready."_
Speak with a Shadow Hunter Scout |q 53713/1 |goto 74.51,50.98 |future
step
kill Quartermaster Tallybolt##144791
|tip While moving, avoid stepping into the circles surrounding NPCs.
Slay the target |q 53713/2 |goto 75.77,50.19 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52475
accept Where Eagles Prey##52475 |goto Tiragarde Sound/0 80.30,39.75
|tip You will accept this quest automatically.
step
click Grizzek Rocket Hop
collect Grizzek Rocket Hop##165943 |q 52475/1 |goto 80.30,39.75 |future
stickystart "Destroy_Siege_Cannons_52475"
step
Destroy the South Zeppelin |q 52475/4 |goto 78.22,39.75 |future
|tip Use the "Grizzek Rocket Hop" ability that appears onscreen.
|tip While in the air, use it again to land hard, stunning anything nearby.
step
Destroy the West Zeppelin |q 52475/3 |goto 77.98,36.35 |future
|tip Use the "Grizzek Rocket Hop" ability that appears onscreen.
|tip While in the air, use it again to land hard, stunning anything nearby.
step
label "Destroy_Siege_Cannons_52475"
click Azerite Charge
|tip They look like yellow piles of bombs on the ground around this area.
Destroy #8# Siege Cannons |q 52475/2 |goto 79.43,38.17 |future
|tip Use the "Grizzek Rocket Hop" ability that appears onscreen.
|tip While in the air, use it again to land hard, stunning anything nearby.
|next "BFA_World_Quest_Emissaries"
step
label quest-52163
Follow the path up |goto Tiragarde Sound/0 60.89,22.55 < 15 |only if walking
accept The Winged Typhoon##52163 |goto Tiragarde Sound/0 62.60,23.41
|tip You will accept this quest automatically.
|tip At the top of the mountain.
step
Follow the path up |goto 60.89,22.55 < 15 |only if walking
kill Azurethos##136385 |q 52163/1 |goto 62.60,23.41 |future
|tip At the top of the mountain.
|next "BFA_World_Quest_Emissaries"
step
label quest-53281
accept Winter's Kiss Cluster##53281 |goto Tiragarde Sound/0 41.57,14.69
|tip You will accept this quest automatically.
step
clicknpc Winter's Kiss Cluster##143725
Gather from the Winter's Kiss Cluster |q 53281/1 |goto 41.58,13.89 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50983
collect 20 Akunda's Bite##152507 |q 50983/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Akunda's Bite##50983 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Akunda's Bite##50983 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-52423
collect 5 Battle Flag: Phalanx Defense##154706 |q 52423/1 |future
|tip Create them with Tailoring or purchase them from the Auction House.
step
accept Work Order: Battle Flag: Phalanx Defense##52423 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Battle Flag: Phalanx Defense##52423 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-50992
collect 15 Calcified Bone##154165 |q 50992/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Work Order: Calcified Bone##50992 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Calcified Bone##50992 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-52389
collect 5 Contract: Proudmoore Admiralty##153661 |q 52389/1 |future
|tip Create them with Inscription or purchase them from the Auction House.
step
accept Work Order: Contract: Proudmoore Admiralty##52389 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Contract: Proudmoore Admiralty##52389 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-52368
collect 5 Crow's Nest Scope##158212 |q 52368/1 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
accept Work Order: Crow's Nest Scope##52368 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Work Order: Crow's Nest Scope##52368 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-50998
collect 10 Deep Sea Satin##152577 |q 50998/1 |future
|tip Farm them from Humanoid mobs or purchase them from the Auction House.
step
accept Work Order: Deep Sea Satin##50998 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Deep Sea Satin##50998 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-52331
collect 10 Demitri's Draught of Deception##152496 |q 52331/1 |future
|tip Create them with Alchemy or purchase them from the Auction House.
step
accept Work Order: Demitri's Draught of Deception##52331 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Work Order: Demitri's Draught of Deception##52331 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-52355
collect 3 Enchant Weapon - Coastal Surge##153476 |q 52355/1 |future
|tip Create them with Enchanting or purchase them from the Auction House.
step
accept Work Order: Enchant Weapon - Coastal Surge##52355 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Enchant Weapon - Coastal Surge##52355 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-52356
collect 3 Enchant Weapon - Torrent of Elements##153479 |q 52356/1 |future
|tip Create them with Enchanting or purchase them from the Auction House.
step
accept Work Order: Enchant Weapon - Torrent of Elements##52356 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Enchant Weapon - Torrent of Elements##52356 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-52363
collect 5 Incendiary Ammunition##158203 |q 52363/1 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
accept Work Order: Incendiary Ammunition##52363 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Work Order: Incendiary Ammunition##52363 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-52405
collect 10 Kubiline##153702 |q 52405/1 |future
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
accept Work Order: Kubiline##52405 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Kubiline##52405 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-52340
collect 5 Monel-Hardened Hoofplates##152812 |q 52340/1 |future
|tip Craft them with Blacksmithing or purchase them from the Auction House.
step
accept Work Order: Monel-Hardened Hoofplates##52340 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Work Order: Monel-Hardened Hoofplates##52340 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-52339
collect 5 Monel-Hardened Stirrups##152813 |q 52339/1 |future
|tip Craft them with Blacksmithing or purchase them from the Auction House.
step
accept Work Order: Monel-Hardened Stirrups##52339 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Work Order: Monel-Hardened Stirrups##52339 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-52333
collect 5 Sea Mist Potion##152550 |q 52333/1 |future
|tip Craft them with Alchemy or purchase them from the Auction House.
step
accept Work Order: Sea Mist Potion##52333 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Sea Mist Potion##52333 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-50995
collect 20 Shimmerscale##153050 |q 50995/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Work Order: Shimmerscale##50995 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Shimmerscale##50995 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-52417
collect 10 Shimmerscale Diving Helmet##154169 |q 52417/1 |future
|tip Craft them with Leatherworking or purchase them from the Auction House.
step
accept Work Order: Shimmerscale Diving Helmet##52417 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Shimmerscale Diving Helmet##52417 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-52416
collect 10 Shimmerscale Diving Suit##154168 |q 52416/1 |future
|tip Craft them with Leatherworking or purchase them from the Auction House.
step
accept Work Order: Shimmerscale Diving Suit##52416 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Shimmerscale Diving Suit##52416 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-52404
collect 10 Solstone##153703 |q 52404/1 |future
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
accept Work Order: Solstone##52404 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Solstone##52404 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-52392
collect 20 Ultramarine Pigment##153635 |q 52392/1 |future
|tip Mill them with Inscription or purchase them from the Auction House.
step
accept Work Order: Ultramarine Pigment##52392 |goto Boralus/0 73.22,11.34
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Work Order: Ultramarine Pigment##52392 |goto 73.22,11.34
|next "BFA_World_Quest_Emissaries"
step
label quest-50984
collect 20 Winter's Kiss##152508 |q 50984/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Winter's Kiss##50984 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: Winter's Kiss##50984 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-52366
collect 2 XA-1000 Surface Skimmer##153512 |q 52366/1 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
accept Work Order: XA-1000 Surface Skimmer##52366 |goto Boralus/0 67.52,21.56
|tip You will accept this quest automatically.
step
talk Provisioner Fray##135808
|tip Inside the building.
turnin Work Order: XA-1000 Surface Skimmer##52366 |goto 67.52,21.56
|next "BFA_World_Quest_Emissaries"
step
label quest-53772
accept Zagg Brokeneye##53772 |goto Tiragarde Sound/0 76.52,42.82
|tip You will accept this quest automatically.
step
Enter the cave |goto 76.52,42.82 < 10 |walk
kill Zagg Brokeneye##145112 |q 53772/1 |goto 76.72,43.08 |future
|next "BFA_World_Quest_Emissaries"
step
label "BFA_World_Quest_Emissaries"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Vol'dun World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Vol'dun, Zandalar.",
condition_suggested=function() return level == 50 and completedq(51916) end,
condition_valid=function() return level >= 50 and completedq(51916) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Zandalari Empire\n"..
"Voldunai\n"..
"Talanji's Expedition\n\n"..
"Then turn in the quest \"Uniting Zandalar\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=50.0,
worldquestzone=864,
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-54644
accept Azerite Transport##54644 |goto Vol'dun/0 39.53,40.20
|tip You will accept this quest automatically.
|tip He walks around this area on a horse.
step
kill Caravan Leader##148550 |q 54644/1 |goto 39.53,40.20 |future
|tip He walks around this area on a horse.
step
click Azerite Chest
Secure the Azerite Shipment |q 54644/2 |goto 39.47,39.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51095
accept Ashmane##51095 |goto Vol'dun/0 55.77,16.59
|tip You will accept this quest automatically.
step
Follow the path up |goto 55.77,16.59 < 20 |only if walking
Cross the bridge |goto 54.40,16.81 < 15 |only if walking
kill Ashmane##130439 |q 51095/1 |goto 54.70,15.14 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53294
accept Akunda's Bite Cluster##53294 |goto Vol'dun/0 49.28,37.55
|tip You will accept this quest automatically.
step
clicknpc Akunda's Bite Cluster##143427
Gather the Akunda's Bite Cluster |q 53294/1 |goto 49.28,37.55 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51238
accept Abandoned in the Burrows##51238 |goto Vol'dun/0 63.60,33.03
|tip You will accept this quest automatically.
stickystart "Slay_Sethraks_51238"
step
click Sethrak Cage##277876+
|tip They look like large round cages on the ground around this area.
Rescue #6# Vulpera Captives |q 51238/1 |goto 63.60,33.03 |future
step
label "Slay_Sethraks_51238"
Kill Sethrak enemies around this area
Slay #12# Sethraks |q 51238/2 |goto 63.60,33.03 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51105
accept Ak'tar##51105 |goto Vol'dun/0 50.33,81.63
|tip You will accept this quest automatically.
step
kill Ak'tar##135852 |q 51105/1 |goto 50.33,81.63 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51096
accept Azer'tor##51096 |goto Vol'dun/0 47.88,88.15
|tip You will accept this quest automatically.
step
Enter the cave |goto 47.88,88.15 < 20 |walk
Follow the path down |goto 48.64,89.05 < 10 |walk
kill Azer'tor##128553 |q 51096/1 |goto 49.03,89.03 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54245
accept Azerite Altercation##54245 |goto Vol'dun/0 36.27,51.10
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##307488
|tip They look like small crystals that appear after killing certain enemies on the ground around this area.
collect Unrefined Azerite Shard##164767 |n
Acquire Azerite |q 54245/1 |goto 36.27,51.10 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54246
accept Azerite Altercation##54246 |goto Vol'dun/0 36.27,51.10
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##307488+
|tip They look like small crystals that appear on the ground after killing certain enemies around this area.
Acquire Azerite |q 54246/1 |goto 36.27,51.10 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51185
accept Azerite Empowerment##51185 |goto Vol'dun/0 60.67,62.51
|tip You will accept this quest automatically.
step
kill Skithis the Infused##136732 |q 51185/1 |goto 60.67,62.51 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52849
accept Azerite Empowerment##52849 |goto Vol'dun/0 47.05,18.62
|tip You will accept this quest automatically.
step
Enter the cave |goto 47.05,18.62 < 10 |walk
kill Warlord Dagu##141931 |q 52849/1 |goto 47.68,20.22 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51422
accept Azerite Madness##51422 |goto Vol'dun/0 57.47,60.95
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Heart of Azeroth" ability near their corpses.
|tip It appears as a button on the screen.
Absorb Azerite from Defeated Elementals |q 51422/1 |goto 59.34,61.24 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50975
accept Azerite Mining##50975 |goto Vol'dun/0 59.80,60.79
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 50975/1 |goto 59.80,60.79 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52875
accept Azerite Mining##52875 |goto Vol'dun/0 34.65,63.00
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 52875/1 |goto 34.65,63.00 |future
You can find more in the cave at [34.27,62.77]
|next "BFA_World_Quest_Emissaries"
step
label quest-51428
accept Azerite Wounds##51428 |goto Vol'dun/0 59.88,60.97
|tip You will accept this quest automatically.
step
Heal #5# Azerite Wounds |q 51428/1 |goto 59.88,60.97 |future
|tip Use the "Heart of Azeroth" ability.
|tip Use it near the blue glowing spots with sparks flying out of them on the ground around this area.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-51250
accept Buzz Off!##51250 |goto Vol'dun/0 57.32,54.47
|tip You will accept this quest automatically.
|tip At the top of the mountain.
step
kill Bonepicker Scavenger##138258+
|tip At the top of the mountain.
click Bonepicker Nest+
|tip They look like large bird nests with blue eggs in them on the ground around this area.
Clear Bonepicker Summit |q 51250/1 |goto 57.32,54.47 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53298
accept Blooming Star Moss##53298 |goto Vol'dun/0 50.41,72.21
|tip You will accept this quest automatically.
|polish
step
click Blooming Star Moss##143403
Gather the Blooming Star Moss |q 53298/1 |goto 50.41,72.21 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51097
accept Bloated Ruincrawler##51097 |goto Vol'dun/0 48.97,49.90
|tip You will accept this quest automatically.
step
kill Bloated Krolusk##129476 |q 51097/1 |goto 48.97,49.89 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54254
accept Bombs Away##54254 |goto Vol'dun/0 33.17,48.90
|tip You will accept this quest automatically.
stickystart "Slay_Horde_Soldiers_54254"
step
kill Dargun the Stone##147451 |q 54254/1 |goto 33.17,48.89 |future
step
label "Slay_Horde_Soldiers_54254"
Kill enemies around this area
Slay #12# Orc Grunts |q 54254/2 |goto 33.17,48.89 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51117
accept Bajiani the Slick##51117 |goto Vol'dun/0 31.00,81.09
|tip You will accept this quest automatically.
step
kill Bajiani the Slick##128497 |q 51117/1 |goto 31.00,81.09 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54273
accept Battle Bots##54273 |goto Vol'dun/0 40.34,41.60
|tip You will accept this quest automatically.
step
Kill Krolusk enemies around this area
collect 10 Alkalescent Salt##165852 |q 54273/1 |goto 40.34,41.60 |future
step
talk Blixthraz Blastcharge##147638
|tip On the bridge.
Tell him _"I've got the salts."_
Give the Salts to Blixthraz |q 54273/2 |goto 41.24,43.22 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54272
accept Battle Bots##54272 |goto Vol'dun/0 40.34,41.60
|tip You will accept this quest automatically.
step
Kill Krolusk enemies around this area
collect 10 Alkalescent Salt##165852 |q 54272/1 |goto 40.34,41.60 |future
step
talk Binny Sprigspinner##147649
|tip On the bridge.
Tell her _"I've got the salts."_
Give the Salts to Binny |q 54272/2 |goto 42.21,41.65 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51641
accept Beachhead##51641 |goto Vol'dun/0 66.53,21.51
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##144359
Tell her _"I am ready."_
Speak to Scrollsage Nola |q 51641/1 |goto 66.53,21.51 |future
step
kill Vicious Albatross##138186+
|tip They look like birds flying in the air around this area.
|tip Use the ability on your action bar.
kill Armored Claw##138242+
|tip They look like small crabs in the water.
|tip Use the ability on your action bar.
Help #12# Juvenile Turtles Reach the Ocean |q 51641/2 |future
|tip The turtles will slowly walk into the water.
|tip You must protect them from the birds and crabs.
|next "BFA_World_Quest_Emissaries"
step
label quest-54638
accept Beat Up the Drums##54638 |goto Vol'dun/0 36.75,62.47
|tip You will accept this quest automatically.
step
kill Drox'ar Morgar##148510 |q 54638/1 |goto 36.75,62.47 |future
|tip He patrols a short distance along the road.
|next "BFA_World_Quest_Emissaries"
step
label quest-54609
accept Beastlord Drakara##54609 |goto Vol'dun/0 34.64,42.43
|tip You will accept this quest automatically.
step
kill Beastlord Drakara##148477 |q 54609/1 |goto 34.64,42.43 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51210
accept Blast Back the Siege##51210 |goto Vol'dun/0 28.06,50.57
|tip You will accept this quest automatically.
step
clicknpc Sethrak Cannon##143720
Control the Cannon |q 51210/1 |goto 28.06,50.57 |future
step
Kill enemies around this area
|tip Use the ability on your action bar.
Slay #30# Faithless Attackers |q 51210/2 |goto 28.06,50.57 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53299
accept Blooming Siren's Sting##53299 |goto Vol'dun/0 42.04,62.52
|tip You will accept this quest automatically.
step
click Blooming Siren's Sting##143734
Gather a Blooming Siren's Sting |q 53299/1 |goto 42.04,62.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-49345
accept Buried Treasure##49345 |goto Vol'dun/0 45.44,53.73
|tip You will accept this quest automatically.
step
kill Ancient Exile##136997+
|tip Use the "Soulreaping Totem" ability.
|tip It appears as a button on the screen.
|tip Kill the enemies that appear near the totem that appears on the ground.
collect 10 Ancient Coin##159828 |q 49345/1 |goto 45.72,50.70 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51791
accept Bubbling Totem Testing##51791 |goto Vol'dun/0 48.81,43.65
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Court of Zak'rajan |q 51791/1 |goto 47.48,44.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51118
clicknpc Enormous Egg##136390
accept Bloodwing Bonepicker##51118 |goto Vol'dun/0 56.08,53.57
|tip You will accept this quest automatically.
step
Follow the path up |goto 57.36,53.54 < 15 |only if walking
clicknpc Enormous Egg##136390
|tip At the top of the mountain.
kill Bloodwing Bonepicker##136393 |q 51118/1 |goto 56.08,53.57 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54253
accept Bombs Away##54253 |goto Vol'dun/0 33.15,48.91
|tip You will accept this quest automatically.
stickystart "Slay_Alliance_Soldiers_54253"
step
kill Harla Darkblade##147449 |q 54253/1 |goto 33.15,48.91
step
label "Slay_Alliance_Soldiers_54253"
Kill enemies around this area
Slay #12# Alliance Soldiers |q 54253/2 |goto 33.15,48.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51155
accept Brgl-Lrgl the Basher##51155 |goto Vol'dun/0 30.41,45.60
|tip You will accept this quest automatically.
step
Enter the cave |goto 29.99,46.27 < 10 |walk
kill Brgl-Lrgl the Basher##134643 |q 51155/1 |goto 29.77,46.48 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51793
accept Bubbling Totem Testing##51793 |goto Vol'dun/0 48.81,43.65
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Court of Zak'rajan |q 51793/1 |goto 47.48,44.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55343
accept Calligraphy##55343 |goto Vol'dun/0 27.75,50.75
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##151524
Tell him _"I am ready."_
Speak to Scrollsage Nola |q 55343/1 |goto 27.75,50.75 |future
step
Complete the Tracing Challenge |q 55343/2 |goto 27.75,50.75 |future
|tip Run around, tracing the pattern that appears.
|next "BFA_World_Quest_Emissaries"
step
label quest-53325
Follow the path up |goto Vol'dun/0 32.95,67.99 < 20 |only if walking
accept Coarse Storm Silver##53325 |goto 33.37,71.36
|tip You will accept this quest automatically.
step
click Coarse Storm Silver Deposit##297622
collect Coarse Storm Silver##163626 |q 53325/1 |goto 33.37,71.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51098
accept Commodore Calhoun##51098 |goto Vol'dun/0 43.00,92.30
|tip You will accept this quest automatically.
step
Follow the path up |goto 43.00,92.30 < 15 |only if walking
Cross the bridge |goto 43.47,91.70 < 15 |only if walking
kill Commodore Calhoun##124722 |q 51098/1 |goto 42.51,92.08 |future
|tip Up on the wooden dock.
|next "BFA_World_Quest_Emissaries"
step
label quest-55303
accept The Cycle of Life##55303 |goto Vol'dun/0 66.53,21.51
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##151474
Speak to Scrollsage Nola |q 55303/1 |goto 66.53,21.51 |future
step
talk Scrollsage Nola##151474
Tell him _"I am ready."_
Start the Game |invehicle |q 55303 |goto 66.53,21.51 |future
step
Kill Juvenile Turtle enemies around this area
|tip Use the "Move Left" and "Move Right" abilities to avoid the incoming attacks and reach turtles.
|tip Use the "Throw Turtle Shell" ability to throw a shell, killing all turtles in a straight line.
Stop #20# Juvenile Turtles from Raching the Ocean |q 55303/2 |goto 66.85,21.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51780
accept Dinner for Dolly and Dot##51780 |goto Vol'dun/0 32.20,59.08
|tip You will accept this quest automatically.
stickystart "Collect_Buzzard_Meat_51780"
step
click Speckled Egg+
|tip They look like blue eggs in large bird nests on the ground around this area.
collect 12 Speckled Egg##155679 |q 51780/1 |goto 29.13,64.69 |future
step
label "Collect_Buzzard_Meat_51780"
kill Bonebeak Buzzard##139072+
|tip They can be flying in the air around this area.
collect 6 Buzzard Meat##155680 |q 51780/2 |goto 29.37,64.03 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51559
accept Damaged Goods##51559 |goto Vol'dun/0 44.31,88.97
|tip You will accept this quest automatically.
stickystart "Slay_Ashvane_Pirates_51559"
step
use the Torch##160923
|tip Use it on Ashvane Cargo around this area.
|tip They look like stacks of crates and barrels on the ground around this area.
Destroy #10# Ashvane Cargo |q 51559/1 |goto 44.31,88.97 |future
step
label "Slay_Ashvane_Pirates_51559"
Kill enemies around this area
Slay #8# Ashvane Pirates |q 51559/2 |goto 44.31,88.97 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54189
accept Desert Crawl##54189 |goto Vol'dun/0 37.57,56.66
|tip You will accept this quest automatically.
step
click Crawler Mine Parts##311182+
|tip They look like round spiked metal balls on the ground around this area.
collect 8 Crawler Mine Parts##164742 |q 54189/1 |goto 37.57,56.66 |future
step
click Remote Mine Controls
Use the Remote Mine Controls |q 54189/2 |goto 36.47,58.91 |future
step
Follow the path |goto 38.08,55.98 < 20 |only if walking
Destroy the Ace Steam Tank |q 54189/3 |goto 39.77,52.59 |future
|tip Use the "Detonate" ability on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-52878
accept Desert Survivors##52878 |goto Vol'dun/0 45.13,46.43
|tip You will accept this quest automatically.
step
talk Kusa##142054
Tell her _"Begin pet battle."_
Defeat Kusa |q 52878/1 |goto 45.13,46.43 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51562
accept Damaged Goods##51562 |goto Vol'dun/0 44.31,88.97
|tip You will accept this quest automatically.
stickystart "Slay_Ashvane_Pirates_51562"
step
use the Torch##160923
|tip Use it on Ashvane Cargo around this area.
|tip They look like stacks of crates and barrels on the ground around this area.
Destroy #10# Ashvane Cargo |q 51562/1 |goto 44.31,88.97 |future
step
label "Slay_Ashvane_Pirates_51562"
Kill enemies around this area
Slay #8# Ashvane Pirates |q 51562/2 |goto 44.31,88.97 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51121
accept Enraged Krolusk##51121 |goto Vol'dun/0 61.99,37.85
|tip You will accept this quest automatically.
step
kill Enraged Krolusk##136335 |q 51121/1 |goto 61.99,37.85 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54643
accept Evezon the Eternal##54643 |goto Vol'dun/0 39.15,67.31
|tip You will accept this quest automatically.
step
kill Evezon the Eternal##148534 |q 54643/1 |goto 39.15,67.31 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51792
accept Erupting Totem Testing##51792 |goto Vol'dun/0 47.48,44.17
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Court of Zak'rajan |q 51792/1 |goto 47.48,44.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51794
accept Erupting Totem Testing##51794 |goto Vol'dun/0 45.26,45.34
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt the Court of Zak'rajan |q 51794/1 |goto 47.48,44.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51924
accept Faithless Follow-Through##51924 |goto Vol'dun/0 53.84,34.94
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Faithless Supplies+
|tip They look like various sized tan baskets on the ground around this area.
click Faithless War Banner+
|tip They look like red flags on silver poles on the ground around this area.
click Faithless Cannon+
|tip They look like snake cannons on the ground around this area.
Disrupt the Faithless Army |q 51924/1 |goto 53.84,34.94 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51285
accept Feeding Frenzy##51285 |goto Vol'dun/0 36.21,43.98
|tip You will accept this quest automatically.
step
clicknpc Gulch Beetle##137077+
|tip They look like brown insects on the ground around this area.
collect 5 Gulch Beetle##159832 |n
Feed King Rakataka to Death |q 51285/1 |goto 36.21,43.98 |future
|tip Use the "Feed Rakataka" ability on King Rakataka.
|tip It appears as a button on the screen.
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
|next "BFA_World_Quest_Emissaries"
step
label quest-51900
accept Faithless Follow-Through##51900 |goto Vol'dun/0 53.84,34.94
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Faithless Supplies+
|tip They look like various sized tan baskets on the ground around this area.
click Faithless War Banner+
|tip They look like red flags on silver poles on the ground around this area.
click Faithless Cannon+
|tip They look like snake cannons on the ground around this area.
Disrupt the Faithless Army |q 51900/1 |goto 53.84,34.94 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51156
accept Fangcaller Xorreth##51156 |goto Vol'dun/0 52.93,35.43
|tip You will accept this quest automatically.
step
kill Fangcaller Xorreth##136323 |q 51156/1 |goto 53.64,34.57 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51198
accept Fertilizer Duty##51198 |goto Vol'dun/0 53.22,15.75
|tip You will accept this quest automatically.
step
clicknpc Fertilizer##136770+
|tip Use the "Feed Hyena" ability on Dustmane enemies around this area.
|tip It appears as a button on the screen.
|tip They will walk a bit and then leave "Fertilizer" on the ground.
Collect #10# Fertilizer |q 51198/1 |goto 53.22,15.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52798
Follow the path up |goto Vol'dun/0 28.46,66.11 < 20 |only if walking
accept A Few More Charges##52798 |goto Vol'dun/0 30.23,69.41
|tip You will accept this quest automatically.
step
click Lectric Frequency Modulator##292647
Use the Lectric Frequency Modulator |q 52798/1 |goto 28.66,68.71 |future
step
Feed Lashers to the Ranishu |q 52798/2 |goto 31.00,81.09 |future
|tip Roll over enemies around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-53297
accept Flourishing Riverbud##53297 |goto Vol'dun/0 50.41,86.28
|tip You will accept this quest automatically.
step
click Flourishing Riverbud##297606+
|tip They look like curly green plants along the riverbed around this area.
|tip They appear on your minimap as yellow dots.
collect 10 Flourishing Riverbud##163595 |q 53297/1 |goto 50.41,86.28 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51565
accept Feeding Frenzy##51565 |goto Vol'dun/0 36.21,43.98
|tip You will accept this quest automatically.
step
clicknpc Gulch Beetle##137077+
|tip They look like brown insects on the ground around this area.
collect 5 Gulch Beetle##159832 |n
Feed King Rakataka to Death |q 51565/1 |goto 36.21,43.98 |future
|tip Use the "Feed Rakataka" ability on King Rakataka.
|tip It appears as a button on the screen.
|tip He walks around this area.
|tip He will appear on your minimap as a yellow dot.
|next "BFA_World_Quest_Emissaries"
step
label quest-51564
accept Fertilizer Duty##51564 |goto Vol'dun/0 53.22,15.75
|tip You will accept this quest automatically.
step
clicknpc Fertilizer##136770+
|tip Use the "Feed Hyena" ability on Dustmane enemies around this area.
|tip It appears as a button on the screen.
|tip They will walk a bit and then leave "Fertilizer" on the ground.
Collect #10# Fertilizer |q 51564/1 |goto 53.22,15.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54649
accept Flames of War##54649 |goto Vol'dun/0 37.41,40.51
|tip You will accept this quest automatically.
stickystart "Kill_Iron_Shaman_Grimbeard_54649"
step
Enter the cave |goto 37.41,40.51 < 10 |walk
kill Flame of War##148604 |q 54649/2 |goto 38.47,41.64 |future
|tip Inside the cave.
step
label "Kill_Iron_Shaman_Grimbeard_54649"
kill Iron Shaman Grimbeard |q 54649/1 |goto 38.47,41.64 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-53296
accept Flourishing Sea Stalks##53296 |goto Vol'dun/0 28.72,47.05
|tip You will accept this quest automatically.
step
click Flourishing Sea Stalks##297612+
|tip They look like clumps of stringy grass on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect 10 Flourishing Sea Stalk##163588 |q 53296/1 |goto 28.72,47.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54645
accept Fury of the Earth##54645 |goto Vol'dun/0 42.95,38.42
|tip You will accept this quest automatically.
step
kill Rockfury##148558 |q 54645/1 |goto 42.95,38.42 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54646
accept Grand Marshal Fury##54646 |goto 39.44,37.30
|tip You will accept this quest automatically.
step
kill Grand Marshal Fury##146942 |q 54646/1 |goto 39.44,37.30 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51157
accept Golanar##51157 |goto Vol'dun/0 59.51,8.49
|tip You will accept this quest automatically.
step
kill Golanar##129027 |q 51157/1 |goto 59.51,8.49 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-51099
Follow the path up |goto Vol'dun/0 62.37,48.19 < 15 |only if walking
accept Gut-Gut the Glutton##51099 |goto Vol'dun/0 63.97,47.92
|tip You will accept this quest automatically.
step
Enter the cave |goto 63.97,47.92 < 10 |walk
kill Gut-Gut the Glutton##128674 |q 51099/1 |goto 64.02,47.50 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54154
accept The Hills Have Spies##54154 |goto Vol'dun/0 37.02,52.14
|tip You will accept this quest automatically.
step
click Gallywix Getaway Pack##315933
collect Gallywix Getaway Pack##165942 |q 54154/1 |goto 37.02,52.14 |future
step
click Spy Gear##311148
|tip They look like small brown crates, telescopes, and backpacks on the ground around this area.
collect 8 Spy Gear##165656 |q 54154/3 |goto 36.91,51.38 |future
step
label "Kill_SI7_Scouts_54154"
kill 8 SI:7 Scout##146946 |q 54154/2 |goto 36.91,51.38 |future
|tip They walk around stealthed.
|next "BFA_World_Quest_Emissaries"
step
label quest-51108
accept Hivemother Kraxi##51108 |goto Vol'dun/0 53.93,51.74
|tip You will accept this quest automatically.
step
Enter the cave |goto 53.93,51.74 < 10 |walk
kill Hivemother Kraxi##130443 |q 51108/1 |goto 53.60,53.70 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51925
accept Instructions Not Included##51925 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Shrinking-Shot" ability.
|tip It appears as a button on the screen.
Slay #8# Brine Basin Wildlife |q 51925/1 |goto 58.85,41.67 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51228
accept Instant Meat, Ready to Eat##51228 |goto Vol'dun/0 44.74,23.91
|tip You will accept this quest automatically.
stickystart "Collect_Steaming_Crab_Meat_51228"
step
use the Meatification Potion##159796
|tip Use it on Bonebeak Scavengers around this area.
click Bonebeak Scavenger Meat##288190+
|tip They look like brown pieces of chicken that appear on the ground around this area.
|tip They sometimes appear after you use the Meatification Potion on Bonebeak Scavengers.
collect 15 Broiled Buzzard Meat##159794 |q 51228/1 |goto 43.40,23.35 |future
step
label "Collect_Steaming_Crab_Meat_51228"
use the Meatification Potion##159796
|tip Use it on Brineclaw enemies around this area.
Kill Brineclaw enemies around this area
click Brineclaw Meat##288190+
|tip They look like purple lumps that appear on the ground around this area.
|tip They sometimes appear after you use the Meatification Potion on Brineclaw enemies.
collect 15 Steaming Crab Meat##159795 |q 51228/2 |goto 43.40,23.35 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51180
accept Instructions Not Included##51180 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Sand Blast" ability.
|tip It appears as a button on the screen.
Slay #8# Brine Basin Wildlife |q 51180/1 |goto 58.85,41.67 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51239
accept Instructions Not Included##51239 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Ranishu Swarmshooter" ability.
|tip It appears as a button on the screen.
Slay #8# Brine Basin Wildlife |q 51239/1 |goto 58.85,41.67 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51181
accept Instructions Not Included##51181 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Stormstrike" ability.
|tip It appears as a button on the screen.
Slay #8# Brine Basin Wildlife |q 51181/1 |goto 58.85,41.67 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51174
accept Instructions Not Included##51174 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Shrinking-Shot" ability.
|tip It appears as a button on the screen.
Slay #8# Brine Basin Wildlife |q 51174/1 |goto 58.85,41.67 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51933
accept Instructions Not Included##51933 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Ranishu Swarmshooter" ability.
|tip It appears as a button on the screen.
Slay #8# Brine Basin Wildlife |q 51933/1 |goto 58.85,41.67 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51928
accept Instructions Not Included##51928 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Sand Blast" ability.
|tip It appears as a button on the screen.
Slay #8# Brine Basin Wildlife |q 51928/1 |goto 58.85,41.67 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51931
accept Instructions Not Included##51931 |goto Vol'dun/0 58.85,41.67
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Stormstrike" ability.
|tip It appears as a button on the screen.
Slay #8# Brine Basin Wildlife |q 51931/1 |goto 58.85,41.67 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54574
Follow the path up |goto Vol'dun/0 32.92,68.30 < 20 |only if walking
accept Jin'tago##54574 |goto 32.92,68.30
|tip You will accept this quest automatically.
step
kill Jin'tago##148456 |q 54574/1 |goto 33.31,71.63 |future
|tip Up on the cliff.
|next "BFA_World_Quest_Emissaries"
step
label quest-51100
accept Jumbo Sandsnapper##51100 |goto Vol'dun/0 37.46,84.95
|tip You will accept this quest automatically.
step
kill Jumbo Sandsnapper##129283 |q 51100/1 |goto 37.46,84.95 |future
|tip He walks underwater around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-49013
accept A Jolt of Power##49013 |goto Vol'dun/0 53.92,85.93
|tip You will accept this quest automatically.
stickystart "Kill_Ranishu_Gorger_49013"
step
clicknpc Stormhide Calf##134743+
|tip They look like injured dinosaurs on the ground around this area.
|tip Use the "Blessing of Akunda" ability on them.
|tip It appears as a button on the screen.
Revive #6# Stormhide Lizards |q 49013/1 |goto 53.92,85.93 |future
step
label "Kill_Ranishu_Gorger_49013"
kill 8 Ranishu Gorger##133565 |q 49013/2 |goto 53.92,85.93 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51125
accept Jungleweb Hunter##51125 |goto Vol'dun/0 59.65,17.12
|tip You will accept this quest automatically.
step
kill Jungleweb Hunter##136341 |q 51125/1 |goto 60.55,18.02 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51429
accept King Clickyclack##51429 |goto Vol'dun/0 37.35,40.52
|tip You will accept this quest automatically.
step
Enter the cave |goto 37.35,40.52 < 15 |walk
kill King Clickyclack##137681 |q 51429/1 |goto 38.28,41.41 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51102
Follow the path up |goto Vol'dun/0 33.27,50.94 < 15 |only if walking
accept Kamid the Trapper##51102 |goto Vol'dun/0 35.30,51.42
|tip You will accept this quest automatically.
step
Follow the path up |goto 36.35,50.37 < 20 |only if walking
Follow the path up |goto 36.57,49.31 < 20 |only if walking
Follow the path up |goto 35.50,49.01 < 20 |only if walking
Enter the cave |goto 35.25,51.54 < 10 |walk
kill Kamid the Trapper##128686 |q 51102/1 |goto 35.07,51.83 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-52850
accept Keeyo's Champions of Vol'dun##52850 |goto Vol'dun/0 57.13,48.96
|tip You will accept this quest automatically.
step
talk Keeyo##141879
Tell him _"Begin pet battle."_
Defeat Keeyo |q 52850/1 |goto 57.13,48.96 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51252
accept Kiro's Desert Flower##51252 |goto Vol'dun/0 55.45,67.75
|tip You will accept this quest automatically.
step
talk Kiro##137027
Tell him _"I am ready."_
Watch the dialogue
Kill the enemies that attack in waves
Assist Kiro |q 51252/1 |goto 55.45,67.75 |future
step
kill Crimson Gnarlvine##137046 |q 51252/2 |goto 55.43,67.42 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51635
accept Make Loh Go##51635 |goto Vol'dun/0 63.36,23.51
|tip You will accept this quest automatically.
step
talk Toki##138480
Tell him _"I am ready."_
Speak to Toki |q 51635/1 |goto 63.36,23.51 |future
step
Guide Loh to the Goal |q 51635/2 |future
|tip Move Loh to each flag, then to the finish line without crossing your own path.
|tip Use the abilities on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-51153
accept Mor'fani the Exile##51153 |goto Vol'dun/0 37.45,89.08
|tip You will accept this quest automatically.
step
kill Mor'fani the Exile##134694 |q 51153/1 |goto 37.45,89.08 |future
|tip Inside the building.
|next "BFA_World_Quest_Emissaries"
step
label quest-54287
accept Naga Attack!##54287 |goto Vol'dun/0 29.10,46.52
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Naga War Supplies+
|tip They look like racks of weapons and crates the ground around this area.
click Naga War Banner+
|tip They look like tall posts with flags on them on the ground around this area.
click Naga Cage+
|tip They look like large crude cages with prisoners inside on the ground around this area.
Repel the Naga Invaders |q 54287/1 |goto 29.10,46.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51103
accept Nez'ara##51103 |goto Vol'dun/0 43.97,87.12
|tip You will accept this quest automatically.
step
Enter the cave |goto 43.97,87.12 < 10 |walk
click Stake##58701+
|tip They look like pieces of wood stuck in the ground around this area inside the cave.
kill Nez'ara##128951 |q 51103/1 |goto 43.76,86.24 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51834
accept No Negotiations##51834 |goto Vol'dun/0 40.29,76.22
|tip You will accept this quest automatically.
stickystart "Kill_Zandalari_Exiles_51834"
step
click Prisoner Cage##228536+
|tip They look like thin wooden cages on the ground around this area.
Free #5# 7th Legion Soldiers |q 51834/1 |goto 40.19,75.95 |future
step
label "Kill_Zandalari_Exiles_51834"
kill 8 Zandalari Exile##135311 |q 51834/2 |goto 40.19,75.95 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53300
accept Overgrown Anchor Weed##53300 |goto Vol'dun/0 40.56,41.57
|tip You will accept this quest automatically.
step
click Overgrown Anchor Weed##297616
collect Overgrown Anchor Weed##163601 |q 53300/1 |goto 40.56,41.57 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54170
accept Ormin Rocketbop##54170 |goto Vol'dun/0 36.05,49.61
|tip You will accept this quest automatically.
step
kill Ormin Rocketbop##146979 |q 54170/1 |goto 36.05,49.61 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51850
accept Preserve the Oasis##51850 |goto Vol'dun/0 41.46,62.07
|tip You will accept this quest automatically.
stickystart "Slay_Whistlebloom_Predators_51850"
step
click Fertile Soil##291206+
|tip They look like brown piles of dirt on the ground around this area.
Water #6# Fertile Soil |q 51850/2 |goto 41.46,62.07 |future
step
label "Slay_Whistlebloom_Predators_51850"
Kill Whistlebloom enemies around this area
Slay #6# Whistlebloom Predators |q 51850/1 |goto 41.46,62.07 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51853
accept Preserve the Oasis##51853 |goto Vol'dun/0 41.46,62.07
|tip You will accept this quest automatically.
stickystart "Slay_Whistlebloom_Predators_51853"
step
click Fertile Soil##291206+
|tip They look like brown piles of dirt on the ground around this area.
Water #6# Fertile Soil |q 51853/2 |goto 41.46,62.07 |future
step
label "Slay_Whistlebloom_Predators_51853"
Kill Whistlebloom enemies around this area
Slay #6# Whistlebloom Predators |q 51853/1 |goto 41.46,62.07 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-47704
accept Ranishu Feeding Frenzy##47704 |goto Vol'dun/0 54.25,60.21
|tip You will accept this quest automatically.
stickystart "Stomp_Ranishu_Grubs_47704"
step
kill 8 Frenzied Ranishu##137208 |q 47704/1 |goto 54.25,60.21 |future
step
label "Stomp_Ranishu_Grubs_47704"
clicknpc Ranishu Grub##137194+
|tip They look like small worms on the ground around this area.
Stomp #40# Ranishu Grubs |q 47704/2 |goto 54.25,60.21 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51760
accept Ranishu Feeding Frenzy##51760 |goto Vol'dun/0 54.25,60.21
|tip You will accept this quest automatically.
stickystart "Stomp_Ranishu_Grubs_51760"
step
kill 8 Frenzied Ranishu##137208 |q 51760/1 |goto 54.25,60.21 |future
step
label "Stomp_Ranishu_Grubs_51760"
clicknpc Ranishu Grub##137194+
|tip They look like small worms on the ground around this area.
Stomp #40# Ranishu Grubs |q 51760/2 |goto 54.25,60.21 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51124
accept Relic Hunter Hazaak##51124 |goto Vol'dun/0 48.87,71.77
|tip You will accept this quest automatically.
step
kill Relic Hunter Hazaak##136340 |q 51124/1 |goto 48.88,72.11 |future
|tip Inside the building.
|next "BFA_World_Quest_Emissaries"
step
label quest-51330
accept Resilient Seeds##51330 |goto Vol'dun/0 43.46,80.61
|tip You will accept this quest automatically.
step
Kill Withered enemies around this area
collect 12 Resilient Seed##159909 |q 51330/1 |goto 43.46,80.61 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54127
accept Rocket Hop##54127 |goto Vol'dun/0 39.18,35.20
|tip You will accept this quest automatically.
step
click Grizzek Rocket Hop##315934
collect Grizzek Rocket Hop##165943 |q 54127/1 |goto 39.18,35.20 |future
stickystart "Destroy_Siege_Cannons_54127"
stickystart "Kill_Trueshot_Marksman_54127"
step
click Azerite Charge
Destroy the West Zeppelin |q 54127/2 |goto 38.79,36.99 |future
|tip Use the "Grizzek Rocket Hop" ability that appears onscreen.
|tip While in the air, use it again to land hard, stunning anything nearby.
step
click Azerite Charge
Destroy the East Zeppelin |q 54127/3 |goto 40.30,38.34 |future
|tip Use the "Grizzek Rocket Hop" ability that appears onscreen.
|tip While in the air, use it again to land hard, stunning anything nearby.
step
label "Destroy_Siege_Cannons_54127"
click Azerite Charge
|tip They look like yellow piles of bombs on the ground around this area.
Destroy #3# Siege Cannons |q 54127/4 |goto 39.01,35.93 |future
|tip Use the "Grizzek Rocket Hop" ability that appears onscreen.
|tip While in the air, use it again to land hard, stunning anything nearby.
step
label "Kill_Trueshot_Marksman_54127"
kill 6 Trueshot Marksman##147028 |q 54127/5 |goto 39.01,35.93 |future
|tip Use the "Grizzek Rocket Hop" ability that appears onscreen.
|tip While in the air, use it again to land hard, stunning anything nearby.
|next "BFA_World_Quest_Emissaries"
step
label quest-53324
accept Rough Monelite##53324 |goto Vol'dun/0 64.01,32.71
|tip You will accept this quest automatically.
step
click Rough Monelite Deposit##297621
collect Rough Monelite##163625 |q 53324/1 |goto 64.01,32.71 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51804
accept Running Interference##51804 |goto Vol'dun/0 45.33,59.94
|tip You will accept this quest automatically.
step
Follow the path down |goto 45.39,60.25 < 20 |only if walking
Kill enemies around this area
|tip Three waves of enemies will attack.
Protect Arcanist Elleryn |q 51804/1 |goto Vol'dun/1 58.14,16.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54636
accept Sandbinder Sodir##54636 |goto Vol'dun/0 40.76,41.36
|tip You will accept this quest automatically.
step
kill Sandbinder Sodir##148494 |q 54636/1 |goto 40.76,41.36 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53326
accept Smooth Platinum##53326 |goto Vol'dun/0 55.20,76.09
|tip You will accept this quest automatically.
step
click Smooth Platinum Deposit##297623
collect Smooth Platinum##163627 |q 53326/1 |goto 55.20,76.09 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54786
accept Stop the Shipments##54786 |goto goto Vol'dun/0 36.86,37.71
|tip You will accept this quest automatically.
step
talk Sandwalker Vakaara##149306
Tell him _"Give me the totem. I'll scare away the vulpera!"_
Talk with Sandwalker Vaakara |q 54786/1 |goto 36.86,37.71 |future
stickystart "Destroy_Transported_Supplies_54786"
step
Scare Off #6# Hired Vulpera |q 54786/2 |goto 37.35,43.10 |future
|tip Use the "Sandscream Totem" ability next to Hired Caravan Guardians around this area.
|tip It appears as a button on the screen.
|tip They look like fox creatures fighting Alliance soldiers around this area.
step
label "Destroy_Transported_Supplies_54786"
click Transported Supplies+
|tip They look like piles of wooden boxes on the ground around this area.
Destroy #6# Transported Supplies |q 54786/3 |goto 37.35,43.10 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51831
accept Swift Strike##51831 |goto Vol'dun/0 61.90,43.74
|tip You will accept this quest automatically.
step
kill Warscout Dagra##139296 |q 51831/1 |goto 61.90,43.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51122
accept Scorpox##51122 |goto Vol'dun/0 32.69,65.06
|tip You will accept this quest automatically.
step
kill Scorpox##136336 |q 51122/1 |goto 32.69,65.06 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51106
accept Songstress Nahjeen##51106 |goto Vol'dun/0 66.89,24.45
|tip You will accept this quest automatically.
step
kill Songstress Nahjeen##136304 |q 51106/1 |goto 66.89,24.45 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51173
accept Sandfishing##51173 |goto Vol'dun/0 52.22,59.75
|tip You will accept this quest automatically.
step
kill Ravenous Sandworm##136653+
|tip Use the "Sandfishing" ability around this area.
|tip It appears as a button on the screen.
collect 8 Sandworm Fang##159767 |q 51173/1 |goto 52.22,59.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51116
accept Skycarver Krakit##51116 |goto Vol'dun/0 52.23,36.20
|tip You will accept this quest automatically.
step
kill Skycarver Krakit##134745 |q 51116/1 |goto 51.29,36.46 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54555
accept Siege O' Matic 9000##54555 |goto Vol'dun/0 36.32,38.43
|tip You will accept this quest automatically.
step
kill Siege O' Matic 9000##148451 |q 54555/1 |goto 36.32,38.43 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51123
Follow the path down |goto Vol'dun/0 26.86,54.04 < 15 |only if walking
Follow the path up |goto Vol'dun/0 27.53,67.08 < 15 |only if walking
Cross the bridge |goto Vol'dun/0 27.56,69.10 < 20 |only if walking
accept Sirokar##51123 |goto Vol'dun/0 24.57,68.45
|tip You will accept this quest automatically.
step
kill Sirokar##136338 |q 51123/1 |goto 24.57,68.45 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52196
accept Sandswept Bones##52196 |goto Vol'dun/0 44.37,56.06
|tip You will accept this quest automatically.
step
kill Dunegorger Kraulok##138794 |q 52196/1 |goto 44.37,56.06 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51107
accept Scaleclaw Broodmother##51107 |goto Vol'dun/0 44.18,79.35
|tip You will accept this quest automatically.
step
kill Scaleclaw Broodmother##127776 |q 51107/1 |goto 44.54,80.20 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54188
accept Scrambled Bots##54188 |goto Vol'dun/0 39.50,53.68
|tip You will accept this quest automatically.
step
click Bot Scrambler##311822
Obtain the Bot Scrambler |q 54188/1 |goto 39.50,53.68 |future
stickystart "Destroy_Siege_Shredders_54188"
stickystart "Destroy_Crawler_Mines_54188"
step
click Power Control
Disable the Power Control |q 54188/4 |goto 36.45,58.93 |future
step
label "Destroy_Siege_Shredders_54188"
Destroy #4# Siege Shredders |q 54188/2 |goto 37.43,56.74 |future
|tip Use the "Bot Scrambler" ability on Siege Shredders around this area.
|tip It appears as a button on the screen.
step
label "Destroy_Crawler_Mines_54188"
Destroy #8# Crawler Mines |q 54188/3 |goto 37.43,56.74 |future
|tip Use the "Bot Scrambler" ability on Crawler Mines around this area.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-51629
accept Shell Game##51629 |goto Vol'dun/0 27.34,50.21
|tip You will accept this quest automatically.
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51629/1 |goto 27.34,50.21 |future
step
click Shell+
|tip Click the shells to reveal objects.
|tip Match the objects in pairs.
Complete Collector Kojo's Shell Game |q 51629/2 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51104
accept Skycaller Teskris##51104 |goto 46.65,27.12
|tip You will accept this quest automatically.
step
Enter the cave |goto 46.38,27.14 < 10 |walk
kill Skycaller Teskris##134571 |q 51104/1 |goto 46.96,25.15 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51558
accept Spider Scorching##51558 |goto Vol'dun/0 45.44,78.94
|tip You will accept this quest automatically.
step
use the Torch##160870
|tip Use it on Sandspinner Eggs around this area.
|tip They look like groups of white eggs on the ground around this area.
Burn #25# Sandspinner Eggs |q 51558/1 |goto 45.44,78.94 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51561
accept Spider Scorching##51561 |goto Vol'dun/0 45.44,78.94
|tip You will accept this quest automatically.
step
use the Torch##160870
|tip Use it on Sandspinner Eggs around this area.
|tip They look like groups of white eggs on the ground around this area.
Burn #25# Sandspinner Eggs |q 51561/1 |goto 45.44,78.94 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52856
accept Snakes on a Terrace##52856 |goto Vol'dun/0 26.59,54.92
|tip You will accept this quest automatically.
step
talk Sizzik##141945
Tell him _"Begin pet battle."_
Defeat Sizzik |q 52856/1 |goto 26.59,54.92 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51836
accept Sourcing Resources##51836 |goto Vol'dun/0 47.57,87.01
|tip You will accept this quest automatically.
step
click Large Azerite Sack##291154+
|tip Use the "Whacking" ability that appears onscreen on Orc Peons.
|tip Peons walk around this area carrying Large Azerite Sacks.
collect 8 Azerite Sack##160755 |q 51836/1 |goto 47.57,87.01 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51120
accept Stef "Marrow" Quin##51120 |goto Vol'dun/0 41.32,24.18
|tip You will accept this quest automatically.
step
kill Captain Stef "Marrow" Quin##136346 |q 51120/1 |goto 41.32,24.18 |future
|tip She walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-52386
collect 20 Redtail Loach##152549 |q 52386/1 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Redtail Loach##52386 |goto Vol'dun/0 56.69,49.74
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Redtail Loach##52386 |goto 56.69,49.74
|next "BFA_World_Quest_Emissaries"
step
label quest-51377
accept Temple of Sethraliss: Ecological Research##51377
|tip Use the Group Finder to enter the "Temple of Sethraliss" dungeon.
|tip You will accept this quest automatically.
step
clicknpc Krolusk Larva##137857
|tip They look like tiny grey spiked dinosaur-like creatures on the ground throughout the dungeon.
|tip They are typically found in rooms with bosses.
|tip Create a macro for "/tar Krolusk Larva" and use it frequently until you find one.
Capture a Krolusk Larva |q 51377/1 |future
step
kill Avatar of Sethraliss##133392
|tip It is the final boss in the "Temple of Sethraliss" dungeon.
|tip Use the "Temple of Sethraliss" dungeon guide to accomplish this.
Restore the Avatar of Sethraliss |q 51377/2 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51379
accept Temple of Sethraliss: Navigating Currents##51379
|tip Use the Group Finder to enter the "Temple of Sethraliss" dungeon.
|tip You will accept this quest automatically.
step
kill Agitated Nimbus##136076
|tip In the next room after you defeat the second boss in the dungeon.
|tip Use the "Temple of Sethraliss" dungeon guide to accomplish this.
Wrest a Focus From a Faithless Sorcerer |q 51379/1 |future
|tip Loot the Focus from the Agitated Nimbus.
step
Gain 100 Power from the Flowing Current |q 51379/2 |future
|tip Run back towards the dungeon entrance to the obstacle of spinning eletric balls.
|tip Run into the purple orbs that appear.
|tip You need to run into 4 of them.
step
kill Avatar of Sethraliss##133392
|tip It is the final boss in the "Temple of Sethraliss" dungeon.
|tip Use the "Temple of Sethraliss" dungeon guide to accomplish this.
Restore the Avatar of Sethraliss |q 51379/3 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51378
accept Temple of Sethraliss: A Bazaar Menagerie##51378
|tip Use the Group Finder to enter the "Temple of Sethraliss" dungeon.
|tip You will accept this quest automatically.
step
click Lost Relic+
|tip They look like small grey animal statues on the ground.
|tip They are located in the large room you come to right before the final boss of the dungeon.
|tip They will appear on your minimap as yellow dots.
|tip Use the "Temple of Sethraliss" dungeon guide to accomplish this.
Collect #5# Relics |q 51378/1 |future
step
kill Avatar of Sethraliss##133392
|tip It is the final boss in the "Temple of Sethraliss" dungeon.
|tip Use the "Temple of Sethraliss" dungeon guide to accomplish this.
Restor the Avatar of Sethraliss |q 51378/2 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51997
accept Thar She Sinks##51997 |goto Vol'dun/0 37.75,83.04
|tip You will accept this quest automatically.
step
clicknpc Stolen Canoe##139582
Board the Stolen Canoe |q 51997/1 |goto 37.75,83.04 |future
stickystart "Destroy_Cannons_51997"
stickystart "Slay_Pirates_51997"
step
Watch the dialogue
Sink #8# Canoes |q 51997/2 |goto 32.98,84.19 |future
|tip Use the "Throw Torch" ability on your action bar.
|tip Use it on canoes floating in the water around this area.
step
label "Destroy_Cannons_51997"
Destroy #8# Cannons |q 51997/3 |goto 32.98,84.19 |future
|tip Use the "Throw Torch" ability on your action bar.
|tip Use it on cannons along the edges of the water around this area.
step
label "Slay_Pirates_51997"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Pirates |q 51997/4 |goto 32.98,84.19 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52059
accept Thar She Sinks##52059 |goto Vol'dun/0 39.24,84.05
|tip You will accept this quest automatically.
step
clicknpc Stolen Canoe##139582
Board the Stolen Canoe |q 52059/1 |goto 39.24,84.05 |future
stickystart "Destroy_Cannons_52059"
stickystart "Slay_Pirates_52059"
step
Watch the dialogue
Sink #8# Canoes |q 52059/2 |goto 32.98,84.19 |future
|tip Use the "Throw Torch" ability on your action bar.
|tip Use it on canoes floating in the water around this area.
step
label "Destroy_Cannons_52059"
Destroy #8# Cannons |q 52059/3 |goto 32.98,84.19 |future
|tip Use the "Throw Torch" ability on your action bar.
|tip Use it on cannons along the edges of the water around this area.
step
label "Slay_Pirates_52059"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Pirates |q 52059/4 |goto 32.98,84.19 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51119
Follow the path up |goto Vol'dun/0 56.48,71.53 < 15 |only if walking
accept Vathikur##51119 |goto Vol'dun/0 57.32,73.30
|tip You will accept this quest automatically.
step
kill Pit Snake##126894+
kill Vathikur##130401 |q 51119/1 |goto 57.32,73.30 |future
|tip He appears after you kill all of the Pit Snakes.
|next "BFA_World_Quest_Emissaries"
step
label quest-51983
accept Vorrik's Vengeance##51983 |goto Vol'dun/0 45.42,35.05
|tip You will accept this quest automatically.
step
Follow the path up |goto Vol'dun/0 45.46,35.18 < 20 |only if walking
Follow the path up |goto 46.37,37.53 < 10 |only if walking
clicknpc Rakjan the Unbroken##139454
|tip At the top of the mountain.
Mount Rakjan the Unbroken |q 51983/1 |goto 47.16,39.38 |future
step
Kill enemies around this area
|tip They are on the ground as you fly.
|tip Use the abilities on your action bar.
Slay #50# Faithless |q 51983/2 |goto 47.76,32.25 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51995
accept Vorrik's Vengeance##51995 |goto Vol'dun/0 45.46,35.18
|tip You will accept this quest automatically.
step
Follow the path up |goto Vol'dun/0 45.46,35.18 < 20 |only if walking
Follow the path up |goto 46.37,37.53 < 10 |only if walking
clicknpc Rakjan the Unbroken##139454
|tip At the top of the mountain.
Mount Rakjan the Unbroken |q 51995/1 |goto 47.16,39.38 |future
step
Kill enemies around this area
|tip They are on the ground as you fly.
|tip Use the abilities on your action bar.
Slay #50# Faithless |q 51995/2 |goto 47.76,32.25 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54415
accept Vulpera for a Day##54415 |goto Vol'dun/0 39.13,46.98
|tip You will accept this quest automatically.
step
talk Nisha##148496
Tell her _"Give me the supplies. I'll defend the vulpera!"_
Talk to Nisha |q 54415/1 |goto 39.13,46.98 |future
step
Kill Purge Squad enemies around this area
click Vulpera Banner+
|tip They look like brown and white flags on poles on the ground around this area.
click Vulpera Caravan+
|tip They look like burning wagons on the ground around this area.
clicknpc Shackled Vulpera##148457+
|tip They look like small fox creatures chained on the ground around this area.
Protect the Voldunai |q 54415/2 |goto 37.87,43.64 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54014
accept Wet Work: Blood in the Sand##54014 |goto Vol'dun/0 35.43,67.00
|tip You will accept this quest automatically.
step
talk SI:7 Infiltrator##147369
Tell it _"I am ready."_
Speak with an SI:7 Infiltrator |q 54014/1 |goto 35.43,67.00 |future
step
Run up the stairs |goto 36.36,69.13 < 10 |only if walking
|tip Don't walk in the blue ring around Watchful Lookouts.
kill Captain Cracklepants##147245 |q 54014/2 |goto 35.91,69.04 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54554
accept Wolfleader Skraug##54554 |goto Vol'dun/0 40.31,48.03
|tip You will accept this quest automatically.
step
kill Wolfleader Skraug##148446 |q 54554/1 |goto 40.31,48.03 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51002
collect 20 Akunda's Bite##152507 |q 51002/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Akunda's Bite##51002 |goto Vol'dun/0 56.69,49.74
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Akunda's Bite##51002 |goto 56.69,49.74
|next "BFA_World_Quest_Emissaries"
step
label quest-52427
collect 5 Battle Flag: Rallying Swiftness##154705 |q 52427/1 |future
|tip Create them with Tailoring or purchase them from the Auction House.
step
accept Work Order: Battle Flag: Rallying Swiftness##52427 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Battle Flag: Rallying Swiftness##52427 |goto 56.69,49.73
|next "BFA_World_Quest_Emissaries"
step
label quest-51008
collect 20 Blood-Stained Bone##154164 |q 51008/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Work Order: Blood-Stained Bone##51008 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Blood-Stained Bone##51008 |goto 56.69,49.73
|next "BFA_World_Quest_Emissaries"
step
label quest-52419
collect 3 Coarse Leather Barding##154166 |q 52419/1 |future
|tip Create them with Leatherworking or purchase them from the Auction House.
step
accept Work Order: Coarse Leather Barding##52419 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Coarse Leather Barding##52419 |goto 56.69,49.73
|next "BFA_World_Quest_Emissaries"
step
label quest-52362
collect 3 Enchant Weapon - Quick Navigation##159786 |q 52362/1 |future
|tip Create them with Enchanting or purchase them from the Auction House.
step
accept Work Order: Enchant Weapon - Quick Navigation##52362 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Enchant Weapon - Quick Navigation##52362 |goto 56.69,49.73
|next "BFA_World_Quest_Emissaries"
step
label quest-52371
collect 5 F.R.I.E.D.##153490 |q 52371/1 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
accept Work Order: F.R.I.E.D.##52371 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: F.R.I.E.D.##52371 |goto 56.69,49.73
|next "BFA_World_Quest_Emissaries"
step
label quest-52338
collect 5 Potion of Concealment##152503 |q 52338/1 |future
|tip Create them with Alchemy or purchase them from the Auction House.
step
accept Work Order: Potion of Concealment##52338 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Potion of Concealment##52338 |goto 56.69,49.73
|next "BFA_World_Quest_Emissaries"
step
label quest-51007
collect 10 Storm Silver Ore##152579 |q 51007/1 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Work Order: Storm Silver Ore##51007 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Storm Silver Ore##51007 |goto 56.69,49.73
|next "BFA_World_Quest_Emissaries"
step
label quest-51011
collect 15 Tempest Hide##154722 |q 51011/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Work Order: Tempest Hide##51011 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Tempest Hide##51011 |goto 56.69,49.73
|next "BFA_World_Quest_Emissaries"
step
label quest-51003
collect 20 Winter's Kiss##152508 |q 51003/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Winter's Kiss##51003 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Winter's Kiss##51003 |goto 56.69,49.73
|next "BFA_World_Quest_Emissaries"
step
label quest-51223
accept Walking on Broken Glass##51223 |goto Vol'dun/0 28.72,47.35
|tip You will accept this quest automatically.
step
Kill Tideflat enemies around this area
click Sea Glass##288168+
|tip They look various colored crystals on the ground around this area.
collect 30 Sea Glass##159790 |q 51223/1 |goto 28.72,47.35 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51316
accept Walking in a Spiderweb##51316 |goto Vol'dun/0 59.59,18.77
|tip You will accept this quest automatically.
stickystart "Kill_Jungleweb_Crawlers_51316"
stickystart "Kill_Jungleweb_Hatchlings_51316"
step
kill Jungleweb Victim##137167+
|tip They look like white squirming cocoons on the ground around this area.
Free #5# Tortaka |q 51316/1 |goto 60.66,17.08 |future
step
label "Kill_Jungleweb_Crawlers_51316"
kill 5 Jungleweb Crawler##123813 |q 51316/2 |goto 60.66,17.08 |future
step
label "Kill_Jungleweb_Hatchlings_51316"
kill 30 Jungleweb Hatchling##123826 |q 51316/3 |goto 60.66,17.08 |future
|tip They look like tiny spiders on the ground around this area.
|tip You can run over them to kill them.
|next "BFA_World_Quest_Emissaries"
step
label quest-51114
Cross the bridge |goto Vol'dun/0 51.88,34.41 < 20 |only if walking
accept Warmother Captive##51114 |goto Vol'dun/0 51.92,32.15
|tip You will accept this quest automatically.
step
kill Warmother Captive##134625 |q 51114/1 |goto 50.71,30.88 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51112
accept Warbringer Hozzik##51112 |goto Vol'dun/0 35.77,45.82
|tip You will accept this quest automatically.
step
Follow the path up |goto 36.27,46.77 < 15 |only if walking
kill Warbringer Hozzik##129180 |q 51112/1 |goto 37.07,46.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51113
accept Warlord Zothix##51113 |goto Vol'dun/0 30.20,52.56
|tip You will accept this quest automatically.
step
kill Warlord Zothix##134638 |q 51113/1 |goto 30.20,52.56 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51315
accept Wild Flutterbies##51315 |goto Vol'dun/0 51.53,86.14
|tip You will accept this quest automatically.
step
Collect #10# Vale Flutterbies |q 51315/1 |goto 51.53,86.14 |future
|tip Use the "Flutterby Catcher" ability near Vale Flutterbies.
|tip They look like small butterflies flying low to the ground around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-51322
accept Wings and Stingers##51322 |goto Vol'dun/0 40.64,68.32
|tip You will accept this quest automatically.
stickystart "Collect_Buzzard_Wings_51322"
step
Kill Oasis enemies around this area
collect 5 Oasis Stinger##159924 |q 51322/2 |goto 40.64,68.32 |future
step
label "Collect_Buzzard_Wings_51322"
kill Bonebleach Buzzard##137209+
collect 3 Buzzard Wing##159925 |q 51322/1 |goto 40.64,68.32 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52397
collect 5 Contract: Voldunai##153666 |q 52397/1 |future
|tip Create them with Inscription or purchase them from the Auction House.
|polish
step
accept Work Order: Contract: Voldunai##52397 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Contract: Voldunai##52397 |goto 56.69,49.73
|next "BFA_World_Quest_Emissaries"
step
label quest-52412
collect 5 Rubellite##153701 |q 52412/1 |future
|tip Create them with Jewelcrafting or purchase them from the Auction House.
|polish
step
accept Work Order: Rubellite##52412 |goto Vol'dun/0 56.69,49.73
|tip You will accept this quest automatically.
step
talk Hoarder Jena##135804
turnin Work Order: Rubellite##52412 |goto 56.69,49.73
|next "BFA_World_Quest_Emissaries"
step
label quest-51957
Cross the bridge |goto Vol'dun/0 51.87,34.51 < 20 |only if walking
Follow the path |goto Vol'dun/0 51.69,29.07 < 20 |only if walking
accept The Wrath of Vorrik##51957 |goto Vol'dun/0 50.51,28.24
|tip You will accept this quest automatically.
step
Kill Faithless enemies around this area
|tip Run near them.
|tip Run over the Lightning Orbs that appear on the ground to recharge the ability bar.
Expunge #100# Faithless |q 51957/1 |goto 50.02,27.28 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52864
accept What Do You Mean, Mind Controlling Plants?##52864 |goto Vol'dun/0 30.52,61.95
|tip You will accept this quest automatically.
step
clicknpc Spineleaf##141969
Defeat Spineleaf |q 52864/1 |goto 30.52,61.95 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51963
Cross the bridge |goto Vol'dun/0 51.87,34.51 < 20 |only if walking
Follow the path |goto Vol'dun/0 51.69,29.07 < 20 |only if walking
accept The Wrath of Vorrik##51963 |goto Vol'dun/0 50.51,28.24
|tip You will accept this quest automatically.
step
Kill Faithless enemies around this area
|tip Run near them.
|tip Run over the Lightning Orbs that appear on the ground to recharge the ability bar.
Expunge #100# Faithless |q 51963/1 |goto 50.02,27.28 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51763
accept Zem'lan Rescue##51763 |goto Vol'dun/0 38.46,78.98
|tip You will accept this quest automatically.
stickystart "Slay_Zemlan_Pirates_51763"
step
clicknpc Captured Exile##138976+
|tip They look like troll soldiers sitting on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Free #4# Prisoners |q 51763/1 |goto 36.62,79.29 |future
step
label "Slay_Zemlan_Pirates_51763"
Kill enemies around this area
Slay #10# Zem'lan Pirates |q 51763/2 |goto 36.62,79.29 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51783
accept Zem'lan Rescue##51783 |goto Vol'dun/0 38.46,78.98
|tip You will accept this quest automatically.
stickystart "Slay_Zemlan_Pirates_51783"
step
clicknpc Captured Exile##138976+
|tip They look like human soldiers sitting on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Free #4# Prisoners |q 51783/1 |goto 36.62,79.29 |future
step
label "Slay_Zemlan_Pirates_51783"
Kill enemies around this area
Slay #10# Zem'lan Pirates |q 51783/2 |goto 36.62,79.29 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51115
accept Zunashi the Exile##51115 |goto Vol'dun/0 44.35,52.41
|tip You will accept this quest automatically.
step
Enter the cave |goto 43.97,52.49 < 10 |walk
kill Zunashi the Exile##129411 |q 51115/1 |goto 43.90,54.05 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label "BFA_World_Quest_Emissaries"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Zuldazar World Quests",{
author="support@zygorguides.com",
description="\nThis guide will assist you in completing world quests in Zuldazar, Zandalar.",
condition_suggested=function() return level == 50 and completedq(51918) end,
condition_valid=function() return level >= 50 and completedq(51918) end,
condition_valid_msg="You have not unlocked world quests!\n"..
"Reach friendly reputation with the following factions:\n\n"..
"Proudmoore Admiralty\n"..
"Storm's Wake\n"..
"Order of Embers\n\n"..
"Then turn in the quest \"Uniting Kul Tiras\"\n\n"..
"Use the \"BFA World Quest Unlock\" guide to accomplish this.",
startlevel=50.0,
worldquestzone={862,1165},
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
step
label quest-49800
accept Atal'Dazar: Spiders!##49800
|tip Use the Group Finder to enter the "Atal'Dazar" dungeon.
|tip You will accept this quest automatically.
step
clicknpc Creepy Spider##130902+
|tip They look like small spiders on the ground throughout the dungeon.
Squish #5# Creepy Spiders |q 49800/1 |future
|tip Use the "Atal'Dazar" dungeon guide to accomplish this.
step
kill Yazma##129412 |q 49800/2 |future
|tip He is the final boss in the "Atal'Dazar" dungeon.
|tip Use the "Atal'Dazar" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-49809
accept Atal'Dazar: From the Shadows##49809
|tip Use the Group Finder to enter the "Atal'Dazar" dungeon.
|tip You will accept this quest automatically.
step
kill Shadowblade Stalker##122970
|tip Take the first left inside the "Atal'Dazar" dungeon.
kill Shadowblade Razi##130912 |q 49809/1 |future
|tip He appears after you kill the Shadowblade Stalker.
|tip Use the "Atal'Dazar" dungeon guide to accomplish this.
step
kill Yazma##129412 |q 49809/2 |future
|tip He is the final boss in the "Atal'Dazar" dungeon.
|tip Use the "Atal'Dazar" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-50864
accept Atal'zul Gotaka##50864 |goto Zuldazar/0 80.85,20.45
|tip You will accept this quest automatically.
step
click Rope |goto 80.81,20.48
Climb Onto the Ship |goto 80.85,20.30 < 2 |noway |c |q 50864 |future
step
click Rope |goto 80.85,20.29
Board the Ship |goto 80.88,20.39 < 2 |noway |c |q 50864 |future
step
kill Atal'zul Gotaka##129961 |q 50864/1 |goto 80.97,21.61 |future
|tip On the deck of the ship.
|next "BFA_World_Quest_Emissaries"
step
label quest-52923
accept Add More to the Collection##52923 |goto Zuldazar/0 48.42,35.17
|tip You will accept this quest automatically.
step
talk Talia Sparkbrow##142114
Tell her _"Begin pet battle."_
Defeat Talia Sparkbrow |q 52923/1 |goto 48.42,35.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50863
accept Avatar of Xolotal##50863 |goto Zuldazar/0 49.31,58.15
|tip You will accept this quest automatically.
step
Enter the cave |goto 49.57,59.00 < 10 |walk
kill Avatar of Xolotal##129343 |q 50863/1 |goto 49.83,57.42 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-52858
Follow the path up |goto Zuldazar/0 79.12,43.03 < 30 |only if walking
accept Azerite Empowerment##52858 |goto Zuldazar/0 75.91,41.54
|tip You will accept this quest automatically.
step
Enter the cave |goto 75.32,41.75 < 10 |only if walking
kill Hex Priest Haraka##141959 |q 52858/1 |goto 75.27,42.26 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51444
accept Azerite Empowerment##51444 |goto Zuldazar/0 57.49,24.04
|tip You will accept this quest automatically.
step
kill Zu'shin the Infused##136702 |q 51444/1 |goto 56.81,23.10 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51179
accept Azerite Madness##51179 |goto Zuldazar/0 57.94,24.21
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the "Heart of Azeroth" ability near their corpses.
|tip It appears as a button on the screen.
Absorb Azerite from Defeated Elementals |q 51179/1 |goto 57.94,24.21 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52877
accept Azerite Mining##52877 |goto Zuldazar/0 41.54,70.19
|tip You will accept this quest automatically.
step
Enter the cave |goto 41.47,69.88 < 10 |only if walking
Kill enemies around this area
|tip Inside the cave.
click Azerite Chunk##290611+
|tip They look like large yellow and blue ore crystal nodes on the ground around this area inside the cave.
click Azerite Node##290723+
|tip They look like small yellow and blue ore crystal nodes on the ground around this area inside the cave.
Recover Azerite |q 52877/1 |goto 40.90,69.00 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51450
accept Azerite Mining##51450 |goto Zuldazar/0 56.81,23.10
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Inside the cave.
click Azerite Chunk##290611+
|tip They look like large multicolored veins on the ground around this area.
click Azerite Node##290723+
|tip They look like small multicolored veins on the ground around this area.
Recover Azerite |q 51450/1 |goto 56.05,23.25 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54016
accept Azerite Transport##54016 |goto Zuldazar/0 77.30,37.90
|tip You will accept this quest automatically.
|polish
step
kill Caravan Leader##145391 |q 54016/1 |goto 77.30,37.90 |future
|tip He walks around the area.
step
click Alliance Strongbox##310204
Secure the Azerite Shipment |q 54016/2 |goto 77.31,37.73 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51175
accept Azerite Wounds##51175 |goto Zuldazar/0 57.16,23.85
|tip You will accept this quest automatically.
step
Heal #5# Azeroth Wounds |q 51175/1 |goto 56.15,22.96 |future
|tip Use the "Heart of Azeroth" ability.
|tip Use it near the blue glowing spots with sparks flying out of them on the ground around this area.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-53328
accept Dense Storm Silver##53328 |goto Zuldazar/0 79.76,38.08
|tip You will accept this quest automatically.
step
click Dense Storm Silver Deposit##297471
collect Dense Storm Silver##163629 |q 53328/1 |goto 79.76,38.08 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53303
accept Blooming Star Moss##53303 |goto Zuldazar/0 45.42,60.71
|tip You will accept this quest automatically.
step
click Blooming Star Moss##143403
|tip On the wall upstairs.
Gather the Blooming Star Moss |q 53303/1 |goto 45.42,60.71 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54537
accept Bilestomper##54537 |goto Zuldazar/0 75.16,49.32
|tip You will accept this quest automatically.
step
kill Bilestomper##148428 |q 54537/1 |goto 75.16,49.32 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54523
accept Blinky Gizmospark##54523 |goto Zuldazar/0 76.31,33.15
|tip You will accept this quest automatically.
step
kill Blinky Gizmospark##148322 |q 54523/1 |goto 76.31,33.15 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-50527
accept Behind Mogu Lines##50527 |goto Zuldazar/0 47.28,62.52
|tip You will accept this quest automatically.
stickystart "Slay_Mogus_50527"
step
talk Feng##134125
Ask him _"What intelligence have you gathered?"_
Receive Feng's Report |q 50527/2 |goto 47.28,62.52 |future
step
talk Chao##134117
Ask him _"What intelligence have you gathered?"_
Receive Chao's Report |q 50527/1 |goto 47.67,66.38 |future
step
Run up the stairs |goto 46.84,62.61 < 15 |only if walking
Run up the stairs |goto 46.45,61.68 < 15 |only if walking
talk Pao-me##134126
Ask him _"What intelligence have you gathered?"_
Receive Pao-me's Report |q 50527/3 |goto 45.30,61.37 |future
step
label "Slay_Mogus_50527"
Kill enemies around this area
Slay #8# Mogus |q 50527/4 |goto 47.52,64.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51494
accept The Blood Gate##51494 |goto Zuldazar/0 58.47,19.78
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #20# Blood Troll Forces |q 51494/1 |goto 58.47,19.78 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50868
accept Bramblewing##50868 |goto Zuldazar/0 66.74,32.29
|tip You will accept this quest automatically.
step
kill Bramblewing##131718 |q 50868/1 |goto 66.74,32.29 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50652
accept Biting the Hand that Feeds Them##50652 |goto Zuldazar/0 70.47,39.99
|tip You will accept this quest automatically.
step
kill Savagemane Ravasaur##122504+
collect Fresh Meat##158184+ |n
clicknpc Savagemane Hatchling##134619+
|tip They look like little baby dinosaurs on the ground around this area.
Feed #5# Savagemane Hatchlings |q 50652/1 |goto 70.47,39.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51642
accept Beachhead##51642 |goto Zuldazar/0 63.61,68.69
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##144359
Tell her _"I am ready."_
Speak to Scrollsage Nola |q 51642/1 |goto 63.61,68.68 |future
step
kill Vicious Albatross##138186+
|tip They look like birds flying in the air around this area.
|tip Use the ability on your action bar.
kill Armored Claw##138242+
|tip They look like small crabs in the water.
|tip Use the ability on your action bar.
Help #12# Juvenile Turtles Reach the Ocean |q 51642/2 |future
|tip The turtles will slowly walk into the water.
|tip You must protect them from the birds and crabs.
|next "BFA_World_Quest_Emissaries"
step
label quest-50578
accept Bring Ruin Again##50578 |goto Zuldazar/0 49.67,43.09
|tip You will accept this quest automatically.
stickystart "Kill_Disciples_Of_Zul_50578"
step
kill 5 Kao-Tien Battlemaster##129515 |q 50578/1 |goto 49.67,43.09 |future
step
label "Kill_Disciples_Of_Zul_50578"
kill 8 Disciple of Zul##129504 |q 50578/2 |goto 49.67,43.09 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51475
accept Brutal Escort##51475 |goto Zuldazar/0 51.92,45.67
|tip You will accept this quest automatically.
|tip He looks like a big green dinosaur that walks up and down this road.
step
Escort Roughneck |q 51475/1 |goto 51.92,45.67 |future
|tip He looks like a big green dinosaur that walks up and down this road.
|tip Follow him as he walks.
|tip Kill the enemies that attack.
|next "BFA_World_Quest_Emissaries"
step
label quest-50862
accept Bloodbulge##50862 |goto Zuldazar/0 59.84,18.29
|tip You will accept this quest automatically.
step
kill Bloodbulge##128699 |q 50862/1 |goto 59.84,18.29 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55344
accept Calligraphy##55344 |goto Zuldazar/0 52.95,58.75
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##151524
Tell him _"I am ready."_
Speak to Scrollsage Nola |q 55344/1 |goto 52.95,58.75 |future
step
Complete the Tracing Challenge |q 55344/2 |goto 53.02,58.78 |future
|tip Run around, tracing the pattern that appears.
|next "BFA_World_Quest_Emissaries"
step
label quest-52251
Cross the bridge |goto Zuldazar/0 53.19,49.13 < 20 |only if walking
Run up the stairs |goto Dazar'alor/0 45.91,63.08 < 15 |only if walking
Enter the building |goto Dazar'alor/0 45.72,59.66 < 15 |walk
accept Compromised Reconnaissance##52251 |goto Dazar'alor/0 45.77,52.52
|tip You will accept this quest automatically.
|tip Inside the building.
step
Find the Missing Operatives |q 52251/1 |goto 45.77,52.52 |future
|tip Inside the building.
step
Kill the enemies that attack in waves
|tip Inside the building.
Hold Out Against the Horde Forces |q 52251/2 |goto 45.77,52.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50651
accept Cut Off Potential##50651 |goto Zuldazar/0 68.60,20.75
|tip You will accept this quest automatically.
stickystart "Kill_Zandalari_Beastkeeper_50651"
step
use the Poison Dart##158185
|tip Use it on enemies around this area.
Dart #8# Preserves Beasts |q 50651/1 |goto 68.60,20.75 |future
step
label "Kill_Zandalari_Beastkeeper_50651"
kill Zandalari Beastkeeper##134585 |q 50651/2 |goto 68.60,20.75 |future
|tip They sometimes appear after you dart beasts around this area.
|tip They will appear on your minimap as yellow dots.
|next "BFA_World_Quest_Emissaries"
step
label quest-50854
accept Crimsonclaw##50854 |goto Zuldazar/0 70.41,32.86
|tip You will accept this quest automatically.
step
Enter the cave |goto 70.41,32.86 < 10 |walk
kill Umbra'jin##122004 |q 50854/1 |goto 71.41,32.40 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-50966
accept Cleanup Crew##50966 |goto Zuldazar/0 76.67,50.53
|tip You will accept this quest automatically.
stickystart "Slay_7th_Legion_Sailors_50966"
step
click 7th Legion Supply Crate##284468+
|tip They look like small wooden crates on the ground around this area.
collect 5 Bundle of Supplies##160703 |q 50966/2 |goto 76.67,50.53 |future
step
label "Slay_7th_Legion_Sailors_50966"
Kill 7th Legion enemies around this area
Slay #10# 7th Legion Sailors |q 50966/1 |goto 76.67,50.53 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54516
accept Crate n' Barrel##54516 |goto Zuldazar/0 75.45,40.59
|tip You will accept this quest automatically.
step
clicknpc Extra Buff Peon##148229
Command a Peon |q 54516/1 |goto 75.45,40.59 |future
step
click Crate of Supplies+
|tip They look like small brown boxes on the ground around this area.
|tip Your peon can carry 5 crates at once.
Click Here When the Peon Has 5 Crates |confirm |goto 75.31,39.25 |q 54516 |future
step
Return #5# Supply Crates to the Base |q 54516/2 |goto 75.49,40.63 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54524
accept Crate n' Barrel##54524 |goto Zuldazar/0 77.07,36.52
|tip You will accept this quest automatically.
step
clicknpc Burly Deckhand##148328
Command a Burly Deckhand |q 54524/1 |goto 77.07,36.52 |future
step
click Crate of Supplies+
|tip They look like small brown boxes on the ground around this area.
|tip Your peon can carry 5 crates at once.
Click Here When the Peon Has 5 Crates |confirm |goto 76.10,38.47 |q 54524 |future
step
Return #5# Supply Crates to the Hardiron |q 54524/2 |goto 77.07,36.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52892
accept Critters are Friends, Not Food##52892 |goto Zuldazar/0 70.56,29.59
|tip You will accept this quest automatically.
step
talk Karaga##142096
Tell him _"Begin pet battle."_
Defeat Karaga |q 52892/1 |goto 70.56,29.59 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55304
accept The Cycle of Life##55304 |goto Zuldazar/0 63.60,68.68
|tip You will accept this quest automatically.
step
talk Scrollsage Nola##151474
Speak to Scrollsage Nola |q 55304/1 |goto 63.60,68.68 |future
step
talk Scrollsage Nola##151474
Tell him _"I am ready."_
Start the Game |invehicle |q 55304 |goto 63.60,68.68 |future
step
Kill Juvenile Turtle enemies around this area
|tip Use the "Move Left" and "Move Right" abilities to avoid the incoming attacks and reach turtles.
|tip Use the "Throw Turtle Shell" ability to throw a shell, killing all turtles in a straight line.
Stop #20# Juvenile Turtles from Raching the Ocean |q 55304/2 |goto 63.42,68.95 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50871
accept Daggerjaw##50871 |goto Zuldazar/0 74.28,39.44
|tip You will accept this quest automatically.
step
kill Daggerjaw##133190 |q 50871/1 |goto 74.28,39.44 |future
|tip Underwater.
|next "BFA_World_Quest_Emissaries"
step
label quest-51084
Follow the path up |goto Zuldazar/0 41.95,76.76 < 20 |only if walking
accept Dark Chronicler##51084 |goto Zuldazar/0 43.28,76.39
|tip You will accept this quest automatically.
step
Enter the cave |goto 43.28,76.39 < 10 |walk
kill Dark Chronicler##136428 |q 51084/1 |goto 44.12,76.51 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-50875
accept Darkspeaker Jo'la##50875 |goto Zuldazar/0 65.38,10.24
|tip You will accept this quest automatically.
step
kill Darkspeaker Jo'la##134760 |q 50875/1 |goto 65.38,10.24 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54513
accept Dino Time!##54513 |goto Zuldazar/0 67.06,37.31
|tip You will accept this quest automatically.
step
kill Dinomancer Dajingo##148264 |q 54513/1 |goto 67.06,37.31 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54527
accept Dinohunter Wildbeard##54527 |goto Zuldazar/0 64.83,39.90
|tip You will accept this quest automatically.
step
kill Darkspeaker Jo'la##134760 |q 54527/1 |goto 64.83,39.90 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54511
accept Down with the Death Captains!##54511 |goto Zuldazar/0 78.79,56.24
|tip You will accept this quest automatically.
stickystart "Kill_Death_Captain_Danielle_54511"
stickystart "Kill_Death_Captain_Delilah_54511"
step
kill Death Captain Detheca##148253 |q 54511/1 |goto 78.79,56.24 |future
step
label "Kill_Death_Captain_Danielle_54511"
kill Death Captain Danielle##148257 |q 54511/2 |goto 78.79,56.24 |future
step
label "Kill_Death_Captain_Delilah_54511"
kill Death Captain Delilah##148259 |q 54511/3 |goto 78.79,56.24 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53329
accept Ductile Platinum##53329 |goto Zuldazar/0 71.32,35.01
|tip You will accept this quest automatically.
|polish
step
click Ductile Platinum Deposit##297626
collect Ductile Platinum##163630 |q 53329/1 |goto 71.32,35.01 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51373
accept Ears Everywhere##51373 |goto Zuldazar/0 55.72,23.38
|tip You will accept this quest automatically.
step
kill 12 Zandalari Spy##137489 |q 51373/1 |goto 55.72,23.38 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50571
accept Eggstermination##50571 |goto Zuldazar/0 64.54,18.60
|tip You will accept this quest automatically.
step
kill Feathered Viper Egg##132413+
|tip They look like white eggs on the ground around this area.
|tip Enemies will come out of them.
Destroy #20# Feathered Viper Eggs |q 50571/1 |goto 64.54,18.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50548
accept Enforcing the Will of the King##50548 |goto Zuldazar/0 63.26,31.92
|tip You will accept this quest automatically.
step
Kill enemies around this area
Enforce the Will of the Rastakhan |q 50548/1 |goto 63.66,31.10 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51815
accept Eggstermination##51815 |goto Zuldazar/0 64.54,18.60
|tip You will accept this quest automatically.
step
kill Feathered Viper Egg##132413+
|tip They look like white eggs on the ground around this area.
|tip Enemies will come out of them.
Destroy #20# Feathered Viper Eggs |q 51815/1 |goto 64.54,18.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50969
accept Emergency Management##50969 |goto Zuldazar/0 80.70,52.78
|tip You will accept this quest automatically.
stickystart "Slay_Forsaken_Deathguards_50969"
step
clicknpc Injured Shipwrecked Sailor##136897+
|tip They look like wounded sailors laying on the ground around this area.
Heal #5# Injured Sailors |q 50969/2 |goto 80.70,52.78 |future
step
label "Slay_Forsaken_Deathguards_50969"
Kill enemies around this area
|tip Only undead enemies will count for this quest goal.
Slay #5# Forsaken Deathguards |q 50969/1 |goto 80.70,52.78 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53301
accept Flourishing Sea Stalks##53301 |goto Zuldazar/0 74.27,66.25
|tip You will accept this quest automatically.
|polish
step
click Flourishing Sea Stalks##297612+
|tip They look like clumps of grass with flowers growing on the ground around this area.
collect 10 Flourishing Sea Stalk##163588 |q 53301/1 |goto 74.27,66.25 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54243
Follow the path |goto Zuldazar/0 38.74,72.25 < 30 |only if walking
accept Gobliteration##54243 |goto Zuldazar/0 35.89,70.57
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #200# Bilgewater Goblins |q 54243/1 |goto 35.89,70.57 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54505
accept Get On The Payload##54505 |goto Zuldazar/0 76.79,48.83
|tip You will accept this quest automatically.
step
Escort the Caravan Kodo |q 54505/1 |goto 78.74,46.68 |future
|tip Follow the Kodo that walks back and forth along this road.
|tip Kill enemies that attack it.
|next "BFA_World_Quest_Emissaries"
step
label quest-50857
accept Golrakahn##50857 |goto Zuldazar/0 73.43,28.20
|tip You will accept this quest automatically.
step
Run up the stairs |goto 73.43,28.20 < 10 |only if walking
kill Golrakahn##124185 |q 50857/1 |goto 74.12,28.49 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50870
accept G'Naat##50870 |goto Zuldazar/0 79.98,35.96
|tip You will accept this quest automatically.
step
kill G'Naat##133155 |q 50870/1 |goto 79.98,35.96 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50877
accept Gahz'ralka##50877 |goto Zuldazar/0 63.52,32.94
|tip You will accept this quest automatically.
step
kill Gahz'ralka##129954 |q 50877/1 |goto 64.24,32.73 |future
|tip In the water under the bridge.
|next "BFA_World_Quest_Emissaries"
step
label quest-54298
accept Gravity Matters##54298 |goto Zuldazar/0 77.40,55.41
|tip You will accept this quest automatically.
step
click X52 Delevitator##312047
collect X52 Delevitator##165878 |q 54298/1 |goto 77.40,55.41 |future
step
kill Pterrordax Rider##147839+
|tip They are flying in the air around this area.
|tip Use the "X52 Delvitator" ability on them.
|tip It appears as a button on the screen.
Repel #10# Pterrordax |q 54298/2 |goto 78.73,53.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54162
accept Hard Landing##54162 |goto Zuldazar/0 76.80,48.94
|tip You will accept this quest automatically.
step
click BOOM-O-MATIC 9000
Obtain the BOOM-O-MATIC 9000 |q 54162/1 |goto 76.80,48.94 |future
step
Repel #10# Alliance Gyrocopters |q 54162/2 |goto 77.78,50.91 |future
|tip Use the "BOOM-O-MATIC 9000" ability on 7th Legion Gyropilots.
|tip It appears as a button on the screen.
|tip They look like helicopters flying in the around around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-50765
accept Herding Children##50765 |goto Dazar'alor/0 52.87,89.82
|tip You will accept this quest automatically.
step
Chase #3# Orphans |q 50765/1 |goto 52.87,89.82 |future
|tip They look like small blue children around this area.
|tip Run next to them to make them run away from you.
|tip Try to make them run toward Caretaker Padae.
Chase them toward [53.71,84.81]
|tip Caretaker Padae will appear on your map as a yellow dot.
|next "BFA_World_Quest_Emissaries"
step
label quest-51497
accept Hex Education##51497 |goto Dazar'alor/0 49.07,21.44
|tip You will accept this quest automatically.
step
use Raal's Hexing Stick##160307
|tip Use it on Zanchuli Acolytes around this area.
Hex #12# Priests |q 51497/1 |goto 50.81,16.05 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51232
accept Hundred Troll Holdout##51232 |goto Zuldazar/0 66.25,30.67
|tip You will accept this quest automatically.
step
kill Gurubashi Attacker##136699+
|tip Move near each of the 4 nearby totems, periodically.
|tip They each give different huge buffs.
|tip Each buff lasts for 45 seconds.
Slay #100# Gurubashi Attackers |q 51232/1 |goto 65.51,30.15 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50846
accept Headhunter Lee'za##50846 |goto Zuldazar/0 62.42,15.09
|tip You will accept this quest automatically.
stickystart "Kill_Coati_50846"
step
Follow the path |goto 62.59,14.31 < 20 |only if walking
kill Headhunter Lee'za##134637 |q 50846/1 |goto 63.15,14.04 |future
step
label "Kill_Coati_50846"
kill Coati##131704 |q 50846/2 |goto 63.15,14.04 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50874
accept Hakbi the Risen##50874 |goto Zuldazar/0 42.79,35.92
|tip You will accept this quest automatically.
step
kill Hakbi the Risen##134738 |q 50874/1 |goto 42.04,36.22 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53327
accept Hardened Monelite##53327 |goto Zuldazar/0 47.13,29.47
|tip You will accept this quest automatically.
step
click Hardened Monelite Deposit##297624
collect Hardened Monelite##163628 |q 53327/1 |goto 47.13,29.47 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51178
accept Hundred Troll Holdout##51178 |goto Zuldazar/0 66.25,30.67
|tip You will accept this quest automatically.
step
kill Gurubashi Attacker##136699+
|tip Move near each of the 4 nearby totems, periodically.
|tip They each give different huge buffs.
|tip Each buff lasts for 45 seconds.
Slay #100# Gurubashi Attackers |q 51178/1 |goto 65.51,30.15 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50845
Enter the tunnel |goto Zuldazar/0 61.93,62.78 < 15 |walk |only if Alliance
Leave the tunnel |goto Zuldazar/0 60.67,59.96 < 15 |walk |only if Alliance
Run up the stairs |goto Dazar'alor/0 50.02,88.71 < 20 |only if walking and Alliance
Follow the path |goto Dazar'alor/0 51.57,77.73 < 20 |only if walking
accept Kul'krazahn##50845 |goto Dazar'alor/0 55.00,82.54
|tip You will accept this quest automatically.
step
kill Kul'krazahn##120899 |q 50845/1 |goto 55.00,82.54 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50869
accept Kiboku##50869 |goto Zuldazar/0 75.63,35.90
|tip You will accept this quest automatically.
step
kill Kiboku##132244 |q 50869/1 |goto 75.63,35.90 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50859
accept Kandak##50859 |goto Zuldazar/0 68.84,47.14
|tip You will accept this quest automatically.
step
Enter the cave |goto 68.84,47.14 < 10 |only if walking
kill Kandak##126637 |q 50859/1 |goto 68.67,48.74 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-51084
accept Kiboku##51084 |goto Zuldazar/0 75.63,35.90
|tip You will accept this quest automatically.
step
kill Kiboku##132244 |q 51084/1 |goto 75.63,35.90 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51501
accept Kings' Rest: Malfunction Junction##51501 |goto King's Rest/0 51.65,28.12
|tip You will accept this quest automatically.
step
kill Malfunctioning Construct##141806 |q 51501/1 |goto King's Rest/0 51.65,28.12 |future
|tip It patrols around the outside of this room.
|tip Pull it away from Mchimba the Embalmer.
|next "BFA_World_Quest_Emissaries"
step
label quest-51500
accept Kings' Rest: The Weaponmaster Walks Again##51500 |goto King's Rest/0 54.52,55.48
|tip You will accept this quest automatically.
step
kill Weaponmaster Halu##140123 |q 51500/1 |goto King's Rest/0 54.52,55.48 |future
|tip He in the middle of the bridge.
|next "BFA_World_Quest_Emissaries"
step
label quest-50547
accept Knives of Zul##50547 |goto Zuldazar/0 79.54,16.27
|tip You will accept this quest automatically.
stickystart "Slay_Followers_of_Zul_50547"
step
clicknpc Zeb'ahari Fishermon##132706+
|tip They look like friendly Trolls on the ground around this area.
Rescue #9# Zeb'ahari Villagers |q 50547/2 |goto 79.54,16.27 |future
step
label "Slay_Followers_of_Zul_50547"
Kill enemies around this area
Slay #12# Zul Followers |q 50547/1 |goto 79.54,16.27 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50885
accept Lei-zhi##50885 |goto Zuldazar/0 58.68,74.19
|tip You will accept this quest automatically.
step
kill Lei-zhi##131233 |q 50885/1 |goto 58.68,74.19 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51496
accept Loa Your Standards##51496 |goto Dazar'alor/0 47.48,23.49
|tip You will accept this quest automatically.
step
click Idol of Gonk##293876+
|tip They look like small green statues on the ground around this area.
click Greater Idol of Gonk##293878+
|tip They look like large green statues on the ground around this area.
Prank #10# Raptari Druids |q 51496/1 |goto 47.56,20.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52302
accept The MOTHERLODE!!: He's Got Really Big Bombs##52302
|tip Use the Group Finder to enter "The MOTHERLODE!!" dungeon.
|tip You will accept this quest automatically.
step
kill Butchie##140615 |q 52302/1 |future
|tip He is next to a large red rocket between the third and fourth boss in the dungeon.
|tip Use "The MOTHERLODE!!" dungeon guide to accomplish this.
step
kill Mogul Razdunk##132713 |q 52302/2 |future
|tip He is the final boss in "The MOTHERLODE!!" dungeon.
|tip Use "The MOTHERLODE!!" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-52295
accept The MOTHERLODE!!: Elementals on the Payroll##52295
|tip Use the Group Finder to enter "The MOTHERLODE!!" dungeon.
|tip You will accept this quest automatically.
step
kill Butchie##140615 |q 52295/1 |future
|tip He is to the left of the ramp leading up to Azerokk.
|tip Azerokk is the second boss in the dungeon.
|tip Use "The MOTHERLODE!!" dungeon guide to accomplish this.
step
kill Mogul Razdunk##132713 |q 52295/2 |future
|tip He is the final boss in "The MOTHERLODE!!" dungeon.
|tip Use "The MOTHERLODE!!" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-52298
accept The MOTHERLODE!!: The Smarts Are In His Horn!##52298 |goto The MOTHERLODE!!/0 52.22,83.87
|tip Use the Group Finder to enter "The MOTHERLODE!!" dungeon.
|tip You will accept this quest automatically.
step
kill Vog'rish, the Ascended##140902 |q 52298/1 |goto 58.97,69.25 |future
|tip He is to the right of the disco stage.
|tip Check for his location on your dungeon map.
|tip Use "The MOTHERLODE!!" dungeon guide to accomplish this.
step
kill Mogul Razdunk##132713 |q 52298/2 |future
|tip He is the final boss in "The MOTHERLODE!!" dungeon.
|tip Use "The MOTHERLODE!!" dungeon guide to accomplish this.
|next "BFA_World_Quest_Emissaries"
step
label quest-50876
accept Murderbeak##50876 |goto Zuldazar/0 60.68,66.19
|tip You will accept this quest automatically.
step
click Chum Bucket
Choose _"Toss the chum into the sea."_
Kill the enemies that attack
kill Murderbeak##134782 |q 50876/1 |goto 60.68,66.19 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51636
accept Make Loh Go##51636 |goto Zuldazar/0 81.77,37.91
|tip You will accept this quest automatically.
step
Enter the building |goto 81.77,37.91 < 10 |walk
talk Toki##144362
|tip Inside the building.
Tell him _"I am ready."_
Speak to Toki |q 51636/1 |goto Zuldazar/0 81.81,37.53 |future
step
Guide Loh to the Goal |q 51636/2 |future
|tip Move Loh to each treasure chest, then to the finish line without crossing your own path.
|tip Use the abilities on your action bar.
|next "BFA_World_Quest_Emissaries"
step
label quest-52169
accept The Matriarch##52169 |goto Zuldazar/0 69.61,34.13
|tip You will accept this quest automatically.
step
kill Ji'arak##132253 |q 52169/1 |goto 69.61,34.13 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54051
accept Naga Attack!##54051 |goto Zuldazar/0 81.04,39.04
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Naga War Supplies+
|tip They look like racks of weapons and crates the ground around this area.
click Naga War Banner+
|tip They look like tall posts with flags on them on the ground around this area.
click Naga Cage+
|tip They look like large crude cages with prisoners inside on the ground around this area.
Repel the Naga Invaders |q 54051/1 |goto 81.04,39.04 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54060
accept Naga Attack!##54060 |goto Zuldazar/0 73.32,64.51
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Naga War Supplies+
|tip They look like racks of weapons and crates the ground around this area.
click Naga War Banner+
|tip They look like tall posts with flags on them on the ground around this area.
click Naga Cage+
|tip They look like large crude cages with prisoners inside on the ground around this area.
Repel the Naga Invaders |q 54060/1 |goto 73.32,64.51 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54508
accept No Bridge Too Dire##54508 |goto Zuldazar/0 76.30,35.22
|tip You will accept this quest automatically.
step
kill Siegebreaker Vol'gar##148231 |q 54508/1 |goto 76.30,35.22 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51495
accept Old Rotana##51495 |goto Zuldazar/0 61.09,20.52
|tip You will accept this quest automatically.
step
clicknpc Old Rotana##137855
Ride Old Rotana |q 51495/1 |goto 61.09,20.52 |future
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Destroy the Blood Troll Forces |q 51495/2 |goto 59.79,20.15 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50855
Cross the bridge |goto Zuldazar/0 53.20,49.14 < 20 |only if walking
Run up the stairs |goto Dazar'alor/0 45.90,63.09 < 15 |only if walking
Run up the stairs |goto Dazar'alor/0 47.20,60.32 < 15 |only if walking
accept Old R'gal##50855 |goto Dazar'alor/0 47.17,60.34
|tip You will accept this quest automatically.
step
kill Old R'gal##122639 |q 50855/1 |goto 49.91,59.59 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54535
accept Portal Keeper Ramuul##54535 |goto Zuldazar/0 79.00,44.58
|tip You will accept this quest automatically.
step
kill Portal Keeper Ramuul##148403 |q 54535/1 |goto 79.00,44.58 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50574
accept Preservation Methods##50574 |goto Zuldazar/0 68.60,20.75
|tip You will accept this quest automatically.
step
use the Potent Inoculation Dart##158067
|tip Use it on enemies around this area.
Dart #10# Preserves Beasts |q 50574/1 |goto 68.60,20.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50633
accept Pterrible Ingredients##50633 |goto Zuldazar/0 67.75,34.30
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 12 Pterrordax Salivary Gland##158177 |q 50633/1 |goto 67.28,32.66 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51816
accept Pterrible Ingredients##51816 |goto Zuldazar/0 67.75,34.30
|tip You will accept this quest automatically.
step
Kill enemies around this area
collect 12 Pterrordax Salivary Gland##158177 |q 51816/1 |goto 67.28,32.66 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50524
accept Purify the Temple##50524 |goto Zuldazar/0 73.34,27.91
|tip You will accept this quest automatically.
step
Kill enemies around this area
click Blasphemous Writing##281675+
|tip They look like scrolls on the ground around this area.
Purify the Temple Grounds |q 50524/1 |goto 73.59,25.60 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-49068
accept Quelling the Cove##49068 |goto Zuldazar/0 73.51,65.01
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt Dreadpearl |q 49068/1 |goto 73.51,65.01 |future
|tip Run next to Squallfin Tadpoles to scare them.
|tip They look like small friendly Squallfin murlocs on the ground around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-51821
accept Quelling the Cove##51821 |goto Zuldazar/0 73.51,65.01
|tip You will accept this quest automatically.
step
Kill enemies around this area
Disrupt Dreadpearl |q 51821/1 |goto 73.51,65.01 |future
|tip Run next to Squallfin Tadpoles to scare them.
|tip They look like small friendly Squallfin murlocs on the ground around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-50540
accept Rally the Rastari##50540 |goto Zuldazar/0 47.84,65.30
|tip You will accept this quest automatically.
stickystart "Slay_Mogu_50540"
step
use the Rastari Skull Whistle##157858
|tip Use it near Rastari Defenders around this area.
|tip They look like friendly trolls on the ground around this area.
Rally #6# Rastari Defenders |q 50540/1 |goto 47.84,65.30 |future
step
label "Slay_Mogu_50540"
Kill enemies around this area
Slay #8# Mogu |q 50540/2 |goto 47.84,65.30 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50636
accept Ravoracious##50636 |goto Zuldazar/0 70.95,37.45
|tip You will accept this quest automatically.
step
kill Savagemane Ravasaur##122504+
collect 12 Ravasaur Stomach Lining##159755 |q 50636/1 |goto 70.51,39.42 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51814
accept Ravoracious##51814 |goto Zuldazar/0 70.95,37.45
|tip You will accept this quest automatically.
step
kill Savagemane Ravasaur##122504+
collect 12 Ravasaur Stomach Lining##159755 |q 51814/1 |goto 70.51,39.42 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54532
accept Receding Treeline##54532 |goto Zuldazar/0 75.59,35.90
|tip You will accept this quest automatically.
step
kill Jessibelle Moonshield##148390 |q 54532/1 |goto 75.47,35.91
step
kill Ancient Defender##148393 |q 54532/2 |goto 75.69,35.80 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50747
Follow the path |goto Dazar'alor/0 50.67,77.88 < 20 |only if walking
accept No Good Amani##50747 |goto Dazar'alor/0 56.18,87.47
|tip You will accept this quest automatically.
step
click Ancient Gong
Watch the dialogue
kill Disciple of Jan'alai##120950
|tip This enemy may be different.
Defeat the Amani Disciple |q 50747/1 |goto 56.18,87.47 |count 1 |future
step
click Ancient Gong
Watch the dialogue
kill Disciple of Halazzi##120951
|tip This enemy may be different.
Defeat the Amani Disciple |q 50747/1 |goto 56.18,87.47 |count 2 |future
step
click Ancient Gong
Watch the dialogue
kill Disciple of Akil'zon##120946
|tip This enemy may be different.
Defeat the Amani Disciple |q 50747/1 |goto 56.18,87.47 |count 3 |future
step
click Ancient Gong
Watch the dialogue
kill Disciple of Nalorakk##120949
|tip This enemy may be different.
Defeat the Amani Disciple |q 50747/1 |goto 56.18,87.47 |count 4 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50744
Follow the path |goto Dazar'alor/0 50.67,77.88 < 20 |only if walking
accept Refresh Their Memory##50744 |goto Dazar'alor/0 56.18,87.47
|tip You will accept this quest automatically.
step
click Ancient Gong
Watch the dialogue
kill Disciple of Jan'alai##120950
|tip This enemy may be different.
Defeat the Amani Disciple |q 50744/1 |goto 56.18,87.47 |count 1 |future
step
click Ancient Gong
Watch the dialogue
kill Disciple of Halazzi##120951
|tip This enemy may be different.
Defeat the Amani Disciple |q 50744/1 |goto 56.18,87.47 |count 2 |future
step
click Ancient Gong
Watch the dialogue
kill Disciple of Akil'zon##120946
|tip This enemy may be different.
Defeat the Amani Disciple |q 50744/1 |goto 56.18,87.47 |count 3 |future
step
click Ancient Gong
Watch the dialogue
kill Disciple of Nalorakk##120949
|tip This enemy may be different.
Defeat the Amani Disciple |q 50744/1 |goto 56.18,87.47 |count 4 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50964
accept Ritual Combat##50964 |goto Dazar'alor/0 43.63,7.37
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Each Loa champion will spawn after the last one dies.
Defeat #4# Loa Champions |q 50964/1 |goto 43.63,7.37 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54712
accept Spell Components##54712 |goto Zuldazar/0 71.15,38.87
|tip You will accept this quest automatically.
step
talk Magister Umbric##148895
Tell him _"Ready to test."_
Report to Magister Umbric in the Feeding Grounds |q 54712/1 |goto 71.15,38.87 |future
step
kill Savagemane Ravasaur##122504+
collect 20 Fresh Ravasaur Bits##166460 |q 54712/2 |goto 70.29,39.31 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54504
accept Scout Captain Grizzleknob##54504 |goto Zuldazar/0 77.35,41.78
|tip You will accept this quest automatically.
|tip Up on the cliff.
step
kill Scout Captain Grizzleknob##148198 |q 54504/1 |goto 77.35,41.78 |future
|tip Up on the cliff.
|next "BFA_World_Quest_Emissaries"
step
label quest-54166
click Expedition Map##143967
|tip Join an island expedition.
accept Set Sail##54166 |goto Dazar'alor/0 44.56,95.30
|tip You will accept this quest automatically once you enter the expedition.
step
Win 1 Island Expedition |q 54166/1 |goto 44.56,95.30 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54498
accept Set Sail##54498 |goto Zuldazar/0 75.28,40.08
|tip You will accept this quest automatically.
|tip Search around for the giant tank.
step
Escort the Iron Hauler |q 54498/1 |goto 75.28,40.08 |future
|tip Follow the giant tank up and down the road, defending it from attackers.
|next "BFA_World_Quest_Emissaries"
step
label quest-50756
accept Subterranean Evacuation##50756 |goto Zuldazar/0 61.07,64.30
|tip You will accept this quest automatically.
stickystart "Free_Kul_Tiran_Captives_50756"
step
kill Interrogator Xi'pe##135156 |q 50756/2 |goto 61.07,64.30 |future
step
label "Free_Kul_Tiran_Captives_50756"
use the Mole Machine Remote Control##158652
|tip Use it on Kul Tiran Captives.
|tip They look like humans standing and sitting on the ground around this area.
Free #10# Kul Tiran Captives |q 50756/1 |goto 62.59,64.53 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50858
Follow the path |goto Zuldazar/0 51.21,56.31 < 20 |only if walking and Alliance
accept Sky Queen##50858 |goto Dazar'alor/0 50.02,83.62
|tip You will accept this quest automatically.
step
kill Sky Queen##125816 |q 50858/1 |goto 50.02,83.62 |future
|tip On top of the column.
|next "BFA_World_Quest_Emissaries"
step
label quest-54522
accept Short for an Orc##54522 |goto Zuldazar/0 77.10,48.91
|tip You will accept this quest automatically.
step
Locate Eric Quietfist |goto 77.10,48.91 < 10 |c |q 54522 |future
step
talk Eric Quietfist##148308
Tell him _"Alliance spy! Come quietly or die by my blade."_
Begin Following Eric Quietfist |goto 77.10,48.91 > 10 |c |q 54522 |future
step
Watch the dialogue
kill Eric Quietfist##148308 |q 54522/1 |goto 77.67,48.37 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50873
Follow the road |goto Zuldazar/0 65.10,43.21 < 30 |only if walking and Horde
accept Strange Egg##50873 |goto Zuldazar/0 61.99,46.23
|tip You will accept this quest automatically.
step
Enter the cave |goto 61.99,46.23 < 10 |walk
click Strange Egg
|tip Inside the cave.
Choose _"Investigate the egg."_
Kill the enemies that attack in waves
kill Vukuba##134048
Investigate the Strange Egg |q 50873/1 |goto 61.90,46.22 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50737
Cross the bridge |goto Zuldazar/0 53.21,49.16 < 20 |only if walking
Run down the stairs |goto Dazar'alor/0 49.73,64.05 < 15 |only if walking
accept Silence the Speakers##50737 |goto Dazar'alor/0 48.69,70.72
|tip You will accept this quest automatically.
step
Kill Speaker enemies around this area
Slay #12# Speakers |q 50737/1 |goto 48.69,70.72 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52250
accept Saving Xibala##52250 |goto Zuldazar/0 40.40,71.70
|tip You will accept this quest automatically.
step
clicknpc Wildhammer Gryphon##141793
Ride the Gryphon |q 52250/1 |goto 40.40,71.70 |future
stickystart "Slay_Horde_Forces_52250"
step
clicknpc Forsaken Blight Thrower##141640
|tip They look like catapult machines on the deck of the large ship as you fly.
Destroy the Forsaken Blight Thrower |q 52250/3 |goto 35.73,74.58 |future
step
label "Slay_Horde_Forces_52250"
Kill enemies around this area
|tip Use the "Wild Hammer" ability on you action bar.
|tip They are on the ground as you fly.
Slay #50# Horde Forces |q 52250/2 |goto 35.73,74.58 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50581
accept Scrolls and Scales##50581 |goto Zuldazar/0 82.20,39.91
|tip You will accept this quest automatically.
stickystart "Kill_Dreadcoil_Seekers_50581"
step
click Scroll of Gral##281652+
|tip They look like large glass tubes on the ground around this area.
collect 4 Scroll of Gral##158068 |q 50581/2 |goto 82.20,39.91 |future
step
label "Kill_Dreadcoil_Seekers_50581"
kill 8 Dreadcoil Seeker##125174 |q 50581/1 |goto 82.20,39.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-49413
Follow the path |goto Zuldazar/0 66.44,69.77 < 30 |only if walking and Alliance
Continue following the path |goto Zuldazar/0 62.49,68.15 < 30 |only if walking and Alliance
Enter the tunnel |goto Zuldazar/0 61.93,62.73 < 15 |only if walking and Alliance
Leave the tunnel |goto Dazar'alor/0 58.03,92.79 < 15 |only if walking and Alliance
accept Scamps With Scrolls##49413 |goto Dazar'alor/0 54.62,90.71
|tip You will accept this quest automatically.
step
clicknpc Scheming Street Scamp##129394+
|tip They look like green long neck dinosaurs and raptors on the ground around this area.
|tip They will appear on your minimap as yellow dots.
Dispel #5# Scheming Street Scamps |q 49413/1 |goto 54.62,90.71 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51822
accept Scrolls and Scales##51822 |goto Zuldazar/0 82.20,39.91
|tip You will accept this quest automatically.
stickystart "Kill_Dreadcoil_Seekers_51822"
step
click Scroll of Gral##281652+
|tip They look like large glass tubes on the ground around this area.
collect 4 Scroll of Gral##158068 |q 51822/2 |goto 82.20,39.91 |future
step
label "Kill_Dreadcoil_Seekers_51822"
kill 8 Dreadcoil Seeker##125174 |q 51822/1 |goto 82.20,39.91 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52248
accept The Shores of Xibala##52248 |goto Zuldazar/0 39.29,73.08
|tip You will accept this quest automatically.
step
Kill Dark Iron enemies around this area
Slay #12# Dark Iron Dwarves |q 52248/1 |goto 39.29,73.08 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51630
accept Shell Game##51630 |goto Zuldazar/0 37.78,78.89
|tip You will accept this quest automatically.
step
talk Collector Kojo##144353
Tell him _"I am ready."_
Speak to Collector Kojo |q 51630/1 |goto 37.84,78.83 |future
step
click Shell+
|tip Click the shells to reveal objects.
|tip Match the objects in pairs.
Complete Collector Kojo's Shell Game |q 51630/2 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52249
accept The Shores of Xibala##52249 |goto Zuldazar/0 46.49,71.14
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #12# Nightborne or Zandalari |q 52249/1 |goto 46.49,71.14 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51038
collect 20 Akunda's Bite##152507 |q 51038/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Akunda's Bite##51038 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Akunda's Bite##51038 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-52938
accept Small Beginnings##52938 |goto Zuldazar/0 50.56,23.90
|tip You will accept this quest automatically.
step
talk Zujai##142234
Tell her _"Begin pet battle."_
Defeat Zujai |q 52938/1 |goto 50.56,23.90 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-53165
Follow the path up |goto Zuldazar/0 44.04,38.21 < 15 |only if walking
accept Stopping Antiquities Theft##53165 |goto Zuldazar/0 42.50,35.90
|tip You will accept this quest automatically.
step
Kill Bilgewater enemies around this area
Slay #10# Goblin Treasure Thieves |q 53165/1 |goto 40.37,41.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51044
collect 20 Blood-Stained Bone##154164 |q 51044/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Blood-Stained Bone##51044 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Blood-Stained Bone##51044 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51045
collect 15 Calcified Bone##154165 |q 51045/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Calcified Bone##51045 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Calcified Bone##51045 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51046
collect 20 Coarse Leather##152541 |q 51046/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Coarse Leather##51046 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Coarse Leather##51046 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51051
collect 10 Deep Sea Satin##152577 |q 51051/1 |future
|tip Farm them from humanoid mobs or purchase them from the Auction House.
step
accept Supplies Needed: Deep Sea Satin##51051 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Deep Sea Satin##51051 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-52387
collect 20 Frenzied Fangtooth##152545 |q 52387/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Frenzied Fangtooth##52387 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Frenzied Fangtooth##52387 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-52382
collect 20 Great Sea Catfish##152547 |q 52382/1 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Great Sea Catfish##52382 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Coarse Leather##52382 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-52388
collect 20 Lane Snapper##152546 |q 52388/1 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
accept Supplies Needed: Lane Snapper##52388 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Lane Snapper##52388 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51049
collect 15 Mistscale##153051 |q 51049/1 |future
|tip Farm them with Leatherworking or purchase them from the Auction House.
step
accept Supplies Needed: Mistscale##51049 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Mistscale##51049 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51042
collect 20 Monelite Ore##152512 |q 51042/1 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Supplies Needed: Monelite Ore##51042 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Monelite Ore##51042 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51036
collect 20 Riverbud##152505 |q 51036/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Riverbud##51036 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Riverbud##51036 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-52383
collect 20 Sand Shifter##152543 |q 52383/1 |future
|tip Farm them with Fishing or purchase them from the Auction House.
step
Enter the building |goto Dazar'alor/0 49.92,41.91 < 10 |walk
accept Supplies Needed: Sand Shifter##52383 |goto Dazar'alor/2 67.16,71.62
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Supplies Needed: Sand Shifter##52383 |goto 67.16,71.62
|next "BFA_World_Quest_Emissaries"
step
label quest-51041
collect 20 Sea Stalk##152511 |q 51041/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Sea Stalk##51041 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Sea Stalk##51041 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51048
collect 20 Shimmerscale##153050 |q 51048/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Shimmerscale##51048 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Shimmerscale##51048 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51040
collect 20 Siren's Pollen##152509 |q 51040/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Siren's Pollen##51040 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Henrick Wyther##142095
turnin Supplies Needed: Siren's Pollen##51040 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51037
collect 20 Star Moss##152506 |q 51037/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Star Moss##51037 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Star Moss##51037 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51043
collect 10 Storm Silver Ore##152579 |q 51043/1 |future
|tip Farm them with Mining or purchase them from the Auction House.
step
accept Supplies Needed: Storm Silver Ore##51043 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Storm Silver Ore##51043 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51047
collect 15 Tempest Hide##154722 |q 51047/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Supplies Needed: Tempest Hide##51047 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Tempest Hide##51047 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51050
collect 20 Tidespray Linen##152576 |q 51050/1 |future
|tip Farm them by killing humanoid mobs or purchase them from the Auction House.
step
accept Supplies Needed: Tidespray Linen##51050 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Tidespray Linen##51050 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-52384
collect 20 Tiragarde Perch##152548 |q 52384/1 |future
|tip Farm them from Humanoid mobs or purchase them from the Auction House.
step
accept Supplies Needed: Tiragarde Perch##52384 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Tiragarde Perch##52384 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51039
collect 20 Winter's Kiss##152508 |q 51039/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Supplies Needed: Winter's Kiss##51039 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Supplies Needed: Winter's Kiss##51039 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-51081
accept Syrawon the Dominus##51081 |goto Zuldazar/0 54.01,45.51
|tip You will accept this quest automatically.
step
Enter the cave |goto 53.89,44.92 < 10 |only if walking
kill Syrawon the Dominus##136413 |q 51081/1 |goto 53.36,44.61 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-50867
accept Tambano##50867 |goto Zuldazar/0 77.71,10.18
|tip You will accept this quest automatically.
|tip It walks around this area.
step
kill Tambano##131687 |q 50867/1 |goto 77.71,10.18 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-54685
accept They Love Iron##54685 |goto Zuldazar/0 70.46,36.55
|tip You will accept this quest automatically.
step
talk Kaz the Shrieker##148702
Tell him _"I need more goren."_
Speak to Kaz the Shrieker |q 54685/1 |goto 70.46,36.55 |future
step
talk Kaz the Shrieker##148702
Tell him _"I need more goren."_
Gain Kaz's Rusty Goren Attractor |havebuff 970584 |goto 70.46,36.55 |q 54685 |future
stickystart "Slay_Alliance_Forces_54685"
step
click Dark Iron Mole Machine
Destroy the Dark Iron Mole Machine |q 54685/2 |goto 71.42,36.19 |count 1 |future
step
click Dark Iron Mole Machine
Destroy the Dark Iron Mole Machine |q 54685/2 |goto 72.21,34.82 |count 2 |future
step
click Dark Iron Mole Machine
Destroy the Dark Iron Mole Machine |q 54685/2 |goto 71.49,33.49 |count 3 |future
step
click Dark Iron Mole Machine
Destroy the Dark Iron Mole Machine |q 54685/2 |goto 71.09,32.45 |count 4 |future
step
label "Slay_Alliance_Forces_54685"
Kill enemies around this area
Slay #12# Alliance Forces |q 54685/3 |goto 71.91,34.79 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54515
accept Tidebinder Maka##54515 |goto Zuldazar/0 83.20,52.92
|tip You will accept this quest automatically.
|tip It walks around this area.
step
kill Tidebinder Maka##148276 |q 54515/1 |goto 83.20,52.92 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-50592
accept Tiny Terror##50592 |goto Zuldazar/0 46.27,23.90
|tip You will accept this quest automatically.
step
Kill enemies around this area
Slay #15# Sethrak Invaders |q 50592/1 |goto 46.27,23.90 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50850
accept Tia'Kawan##50850 |goto Zuldazar/0 64.63,23.00
|tip You will accept this quest automatically.
|tip It walks around this area.
step
kill Tia'Kawan##133163 |q 50850/1 |goto 64.63,23.00 |future
|tip It walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-50861
accept Torraske the Eternal##50861 |goto Zuldazar/0 46.66,65.23
|tip You will accept this quest automatically.
step
kill Torraske the Eternal##127939 |q 50861/1 |goto 46.66,65.23 |future
|tip He walks around this area.
|next "BFA_World_Quest_Emissaries"
step
label quest-50847
Follow the path |goto Zuldazar/0 75.23,25.98 < 20 |only if walking
Enter the cave |goto Zuldazar/0 76.44,27.10 < 10 |walk
accept Twisted Child of Rezan##50847 |goto Zuldazar/0 76.90,27.91
|tip You will accept this quest automatically.
step
kill Twisted Child of Rezan##130643 |q 50847/1 |goto 76.90,27.91 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-49444
accept Underfoot##49444 |goto Dazar'alor/0 43.31,31.48
|tip You will accept this quest automatically.
step
clicknpc Fragile Cargo##129646+
|tip They look like brown boxes on the ground around this small area.
|tip Watch the cast time on the Frightened Brutosaur's Frightened Stomp.
|tip Cick them while he is casting, and move away before he finishes casting.
Recover #8# Fragile Cargo |q 49444/1 |goto 43.31,31.48 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50287
accept Unending Gorilla Warfare##50287 |goto Zuldazar/0 49.01,54.17
|tip You will accept this quest automatically.
step
Kill Da'kani enemies around this area
click Gorilla Totem+
|tip They look like clusters of sticks on the ground around this area.
Disrupt the Da'kani Gorillas |q 50287/1 |goto 49.01,54.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50853
accept Umbra'rix##50853 |goto Zuldazar/0 48.58,29.02
|tip You will accept this quest automatically.
step
kill Umbra'rix##134717 |q 50853/1 |goto 49.18,29.39 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51374
accept Unending Gorilla Warfare##51374 |goto Zuldazar/0 49.01,54.17
|tip You will accept this quest automatically.
step
Kill Da'kani enemies around this area
click Gorilla Totem+
|tip They look like clusters of sticks on the ground around this area.
Disrupt the Da'kani Gorillas |q 51374/1 |goto 49.01,54.17 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-54701
accept Wrath of the Ravasaur##54701 |goto Zuldazar/0 68.94,40.42
|tip You will accept this quest automatically.
step
talk Gonk##148849
Tell him _"Grant me your boon."_
Report to Gonk in Warbeast Kraal |q 54701/1 |goto 68.94,40.42 |future
step
kill 7th Legion Voidshaper##148778+
collect 8 Void Elf Head##166441 |q 54701/2 |goto 70.25,39.48 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50782
accept Word on the Streets##50782 |goto Zuldazar/0 60.94,27.82
|tip You will accept this quest automatically.
step
Follow the path |goto Zuldazar/0 60.94,27.82 < 30 |only if walking
Cross the bridge |goto Dazar'alor/0 56.20,1.96 < 15 |only if walking
talk Zandalari Vagrant##135223+
Choose _<Say the code phrase.>_
Find the Kaldorei Agent |q 50782/1 |goto Dazar'alor/0 53.84,12.18 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52374
collect 5 Crow's Nest Scope##158212 |q 52374/1 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
accept Work Order: Crow's Nest Scope##52374 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Crow's Nest Scope##52374 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-52335
collect 10 Demitri's Draught of Deception##152496 |q 52335/1 |future
|tip Create them with Alchemy or purchase them from the Auction House.
step
accept Work Order: Demitri's Draught of Deception##52335 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Work Order: Demitri's Draught of Deception##52335 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-52373
collect 5 Electroshock Mount Motivator##153573 |q 52373/1 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
accept Work Order: Electroshock Mount Motivator##52373 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Electroshock Mount Motivator##52373 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-52358
collect 3 Enchant Ring - Seal of Haste##153439 |q 52358/1 |future
|tip Create them with Enchanting or purchase them from the Auction House.
step
accept Work Order: Enchant Ring - Seal of Haste##52358 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Enchant Ring - Seal of Haste##52358 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-52359
collect 3 Enchant Ring - Seal of Mastery##153440 |q 52359/1 |future
|tip Create them with Enchanting or purchase them from the Auction House.
step
accept Work Order: Enchant Ring - Seal of Mastery##52359 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Enchant Ring - Seal of Mastery##52359 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-52369
collect 5 Incendiary Ammunition##158203 |q 52369/1 |future
|tip Create them with Engineering or purchase them from the Auction House.
step
accept Work Order: Incendiary Ammunition##52369 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Work Order: Incendiary Ammunition##52369 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-52408
collect 3 Kyanite##153705 |q 52408/1 |future
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
accept Work Order: Kyanite##52408 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Kyanite##52408 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-52336
collect 5 Lightfoot Potion##152497 |q 52336/1 |future
|tip Create them with Alchemy or purchase them from the Auction House.
step
accept Work Order: Lightfoot Potion##52336 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Lightfoot Potion##52336 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-52349
collect 20 Loa Loaf##154887 |q 52349/1 |future
|tip Create them with Cooking or purchase them from the Auction House.
step
accept Work Order: Loa Loaf##52349 |goto Zuldazar/0 71.50,30.35
|tip You will accept this quest automatically.
step
talk Collector Kojo##134345
turnin Work Order: Loa Loaf##52349 |goto 71.50,30.35
|next "BFA_World_Quest_Emissaries"
step
label quest-52348
collect 20 Mon'Dazi##154885 |q 52348/1 |future
|tip Create them with Cooking or purchase them from the Auction House.
step
accept Work Order: Mon'Dazi##52348 |goto Zuldazar/0 71.50,30.35
|tip You will accept this quest automatically.
step
talk Collector Kojo##134345
turnin Work Order: Mon'Dazi##52348 |goto 71.50,30.35
|next "BFA_World_Quest_Emissaries"
step
label quest-52342
collect 5 Monel-Hardened Hoofplates##152812 |q 52342/1 |future
|tip Create them with Blacksmithing or purchase them from the Auction House.
step
accept Work Order: Monel-Hardened Hoofplates##52342 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Work Order: Monel-Hardened Hoofplates##52342 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-52341
collect 5 Monel-Hardened Stirrups##152813 |q 52341/1 |future
|tip Create them with Blacksmithing or purchase them from the Auction House.
step
accept Work Order: Monel-Hardened Stirrups##52341 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Work Order: Monel-Hardened Stirrups##52341 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-50999
collect 20 Riverbud##152505 |q 50999/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Riverbud##50999 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Riverbud##50999 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-52421
collect 10 Shimmerscale Diving Helmet##154169 |q 52421/1 |future
|tip Create them with Leatherworking or purchase them from the Auction House.
step
accept Work Order: Shimmerscale Diving Helmet##52421 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Shimmerscale Diving Helmet##52421 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-52420
collect 10 Shimmerscale Diving Suit##154168 |q 52420/1 |future
|tip Create them with Leatherworking or purchase them from the Auction House.
step
accept Work Order: Shimmerscale Diving Suit##52420 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Shimmerscale Diving Suit##52420 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-51000
collect 20 Star Moss##152506 |q 51000/1 |future
|tip Farm them with Herbalism or purchase them from the Auction House.
step
accept Work Order: Star Moss##51000 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Star Moss##51000 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-52350
collect 10 Swamp Fish 'n Chips##154884 |q 52350/1 |future
|tip Create them with Cooking or purchase them from the Auction House.
step
accept Work Order: Swamp Fish 'n Chips##52350 |goto Zuldazar/0 71.50,30.35
|tip You will accept this quest automatically.
step
talk Collector Kojo##134345
turnin Work Order: Swamp Fish 'n Chips##52350 |goto 71.50,30.35
|next "BFA_World_Quest_Emissaries"
step
label quest-51014
collect 20 Tidespray Linen##152576 |q 51014/1 |future
|tip Farm them from Humanoid mobs or purchase them from the Auction House.
step
accept Work Order: Tidespray Linen##51014 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Tidespray Linen##51014 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-52409
collect 10 Viridium##153704 |q 52409/1 |future
|tip Prospect them with Jewelcrafting or purchase them from the Auction House.
step
accept Work Order: Viridium##52409 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Viridium##52409 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-50872
accept Warcrawler Karkithiss##50872 |goto Zuldazar/0 44.26,25.18
|tip You will accept this quest automatically.
step
Enter the cave |goto 44.26,25.18 < 10 |walk
kill Warcrawler Karkithiss##133842 |q 50872/1 |goto 43.92,25.48 |future
|tip Inside the cave.
|next "BFA_World_Quest_Emissaries"
step
label quest-54017
accept Wet Work: Warbeast Kraal##54017 |goto Zuldazar/0 66.58,44.24
|tip You will accept this quest automatically.
step
talk SI:7 Infiltrator##147369
Speak with an SI:7 Infiltrator |q 54017/1 |goto 66.58,44.24 |future
step
label "Gain_Infiltrating_Buff_54017"
talk SI:7 Infiltrator##147369
Tell her _"I am ready."_
Gain the Infiltrating Buff |havebuff 132320 |goto 66.58,44.24 |q 54017 |future
step
kill Legate Favre##147251 |q 54017/2 |goto 67.87,42.28 |next "Vanish_54017" |or |future
|tip Avoid Watchful Lookouts or they will remove your Infiltrating buff.
|tip Conveniently Empty Baskets can hide you if you lose your buff.
|tip He spawns randomly around the area.
|tip He will appear on your minimap as a yellow dot.
'|nobuff 132320 |next "Gain_Infiltrating_Buff_54017" |only if not completedq(54017) |or
step
label "Vanish_54017"
Gain the Smoke Bomb Buff |havebuff 458733 |q 54017 |future
|tip Use the "Smoke Bomb" ability.
|tip It appears as a button on the screen.
|next "BFA_World_Quest_Emissaries"
step
label quest-50619
accept What Goes Up##50619 |goto Zuldazar/0 39.22,72.89
|tip You will accept this quest automatically.
step
click Nightborne Trap##293683+
|tip They look like small yellow glowing crystal totems on the ground around this area.
Set #8# Traps |q 50619/1 |goto 39.22,72.89 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52425
collect 5 Battle Flag: Spirit of Freedom##154707 |q 52425/1 |future
|tip Craft them with Tailoring or purchase them from the Auction House.
step
accept Work Order: Battle Flag: Spirit of Freedom##52425 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Battle Flag: Spirit of Freedom##52425 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-52394
collect 5 Contract: Champions of Azeroth##153668 |q 52394/1 |future
|tip Create them with Inscription or purchase them from the Auction House.
step
accept Work Order: Contract: Champions of Azeroth##52394 |goto Zuldazar/0 71.50,30.12
|tip You will accept this quest automatically.
step
talk Collector Kojo##134345
turnin Work Order: Contract: Champions of Azeroth##52394 |goto 71.50,30.34
|next "BFA_World_Quest_Emissaries"
step
label quest-52393
collect 3 Work Order: Contract: Tortollan Seekers##153667 |q 52393/1 |future
|tip Create them with Inscription or purchase them from the Auction House.
step
accept Work Order: Contract: Tortollan Seekers##52393 |goto Zuldazar/0 71.50,30.12
|tip You will accept this quest automatically.
step
talk Collector Kojo##134345
turnin Work Order: Contract: Tortollan Seekers##52393 |goto 71.50,30.34
|next "BFA_World_Quest_Emissaries"
step
label quest-51010
collect 20 Coarse Leather##152541 |q 51010/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Work Order: Coarse Leather##51010 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Coarse Leather##51010 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-52395
collect 5 Contract: Zandalari Empire##153664 |q 52395/1 |future
|tip Craft them with Inscription or purchase them from the Auction House.
step
accept Work Order: Contract: Zandalari Empire##52395 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Contract: Zandalari Empire##52395 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-51013
collect 20 Mistscale##153051 |q 51013/1 |future
|tip Farm them with Skinning or purchase them from the Auction House.
step
accept Work Order: Mistscale##51013 |goto Dazar'alor/2 67.25,71.57
|tip You will accept this quest automatically.
step
talk Natal'hakata##131287
turnin Work Order: Mistscale##51013 |goto 67.25,71.57
|next "BFA_World_Quest_Emissaries"
step
label quest-52351
collect 10 Spiced Snapper##154886 |q 52351/1 |future
|tip Create them with Cooking or purchase them from the Auction House.
step
accept Work Order: Spiced Snapper##52351 |goto Zuldazar/0 71.50,30.12
|tip You will accept this quest automatically.
step
talk Collector Kojo##134345
turnin Work Order: Spiced Snapper##52351 |goto 71.50,30.34
|next "BFA_World_Quest_Emissaries"
step
label quest-52398
collect 20 Ultramarine Pigment##153635 |q 52398/1 |future
|tip Mill it with Inscription or purchase them from the Auction House.
step
accept Work Order: Ultramarine Pigment##52398 |goto Dazar'alor/0 44.26,32.26
|tip You will accept this quest automatically.
step
talk Hanul Swiftgale##141936
turnin Work Order: Ultramarine Pigment##52398 |goto 44.26,32.26
|next "BFA_World_Quest_Emissaries"
step
label quest-50957
accept Wrath of Rezan##50957 |goto Zuldazar/0 73.19,28.33
|tip You will accept this quest automatically.
step
clicknpc Old K'zlotec##135908
Climb Aboard Old K'zlotec |q 50957/1 |goto 73.19,28.33 |future
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Deliver Rezan's Wrath |q 50957/2 |goto 73.67,25.42 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-51824
accept You're Grounded##51824 |goto Zuldazar/0 46.65,71.24
|tip You will accept this quest automatically.
step
click Dark Iron Trap##293674+
|tip They look like yellow boxes on the ground around this area.
Set #8# Traps |q 51824/1 |goto 46.65,71.24 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-52937
accept You've Never Seen Jammer Upset##52937 |goto Zuldazar/0 68.05,34.02
|tip You will accept this quest automatically.
step
clicknpc Jammer##142151
Defeat Jammer |q 52937/1 |goto 68.05,34.02 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-50866
accept Zayoos##50866 |goto Zuldazar/0 48.32,55.29
|tip You will accept this quest automatically.
step
kill Zayoos##131476 |q 50866/1 |goto 47.98,54.24 |future
|next "BFA_World_Quest_Emissaries"
step
label "BFA_World_Quest_Emissaries"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Uldum World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Uldum.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
condition_suggested=function() return level == 50 and completedq(56376) end,
condition_valid=function() return level >= 50 and (haveq(56376) or completedq(56376)) end,
condition_valid_msg="You have not unlocked Uldum world quests!\n"..
"Accept or complete the quest \"Surfacing Threats\" in the \"Magni's Plan\" leveling guide.",
startlevel=50.0,
worldquestzone=1527,
worldquestshidden = {
[55354]={61.39,47.21},
[55355]={64.45,22.81},
[55356]={62.05,20.70},
[55357]={83.49,61.86},
[55358]={71.59,45.87},
[55359]={64.50,29.82},
[55360]={69.91,59.93},
[55670]={84.25,55.39},
[57215]={64.46,30.55},
[57217]={71.34,68.54},
[57218]={82.50,47.98},
[57219]={65.50,37.81},
[57223]={78.21,57.54},
[57234]={80.26,66.07},
[57235]={66.50,50.27},
[57243]={76.21,47.98},
[57449]={60.08,38.08},
[57456]={47.60,42.62},
[57543]={51.97,51.06},
[57580]={59.01,46.63},
[57582]={66.59,68.23},
[57586]={46.73,30.41},
[57587]={67.23,70.16},
[57588]={58.14,20.57},
[57589]={64.73,67.02},
[57590]={58.66,68.66},
[57591]={59.84,53.21},
[57592]={57.26,49.31},
[58216]={60.14,45.56},
[58256]={46.80,34.25},
[58257]={55.41,21.33},
[58258]={62.41,79.32},
[58271]={62.02,70.70},
[58275]={50.58,82.33},
[58276]={49.48,38.93},
[58961]={37.13,47.63},
[58974]={27.82,57.14},
[57359]={50.57,88.33},
[57522]={48.51,84.82},
[57541]={65.91,72.88},
[57585]={53.68,75.89},
[58952]={22.40,64.09},
[58676]={20.74,59.11},
[58679]={34.39,29.31},
[58660]={31.62,43.82},
[58662]={37.13,67.09},
[58661]={45.14,43.07},
[58981]={46.80,57.99},
[59003]={36.63,20.68},
[57429]={59.79,72.41},
[58667]={31.50,55.74},
[58990]={28.32,65.61},
[57621]={55.72,78.81},
}
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
|tip Some of these quests have wandering mobs, so you may have to search the area for them.
step
label quest-55670
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55670 |future
step
accept Amathet Raiding Fleet##55670 |goto Uldum New/0 84.25,55.39
|tip You will accept this quest automatically.
|polish
step
Burn the Boats |q 55670 |goto 84.25,55.39 |future
|tip Use the "Throw Torch" ability that appears on-screen.
|tip Throw the torch on all of the nearby boats.
|next "BFA_World_Quest_Emissaries"
step
label quest-57243
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57243 |future
step
accept Amathet Slave Camp##57243 |goto Uldum New/0 76.21,47.98
|tip You will accept this quest automatically.
|polish
step
click Cage+
|tip They look like large wooden cages with Captive Explorers inside around this area.
Release the Slaves |q 57243 |goto 76.21,47.98 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58961
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58961 |future
step
accept Ambushed Settlers##58961 |goto Uldum New/0 37.13,47.63
|tip You will accept this quest automatically.
|polish
step
talk Wastewander Dervish##163151
Tell them _"I'm ready."_
Kill enemies that attack in waves
Defend the Settlers |q 58961 |goto 37.01,47.63 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58974
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58974 |future
step
accept Ambushed Settlers##58974 |goto Uldum New/0 27.82,57.14
|tip You will accept this quest automatically.
|polish
step
talk Wastewander Dervish##163151
Tell them _"I'm ready."_
Kill enemies that attack in waves
Defend the Settlers |q 58974 |goto 27.82,57.14 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55356
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55356 |future
step
accept Beacon of the Sun King##55356 |goto Uldum New/0 62.05,20.70
|tip You will accept this quest automatically.
|polish
step
click Statue##151603+
|tip They look like Anubisath statues around the monument.
|tip Click them until their yellow beam hits the orb in the center of the monument.
|tip All three statues must face the monument.
Destroy the Beacon of the Sun King |q 55356 |goto 62.05,20.70 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55357
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55357 |future
step
accept Beacon of the Sun King##55357 |goto Uldum New/0 83.49,61.86
|tip You will accept this quest automatically.
|polish
step
click Statue##151603+
|tip They look like Anubisath statues around the monument.
|tip Click them until their yellow beam hits the orb in the center of the monument.
|tip All three statues must face the monument.
Destroy the Beacon of the Sun King |q 55357 |goto 83.49,61.86 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55358
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55358 |future
step
accept Beacon of the Sun King##55358 |goto Uldum New/0 71.59,45.87
|tip You will accept this quest automatically.
|polish
step
click Statue##151603+
|tip They look like Anubisath statues around the monument.
|tip Click them until their yellow beam hits the orb in the center of the monument.
|tip All three statues must face the monument.
Destroy the Beacon of the Sun King |q 55358 |goto 71.59,45.87 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58660
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58660 |future
step
accept Burrowing Terrors##58660 |goto Uldum New/0 31.62,43.82
|tip You will accept this quest automatically.
|polish
step
Destroy the Burrowing Terrors |q 58660 |goto 31.62,43.82 |future
|tip Jump on the bugs when the ground rumbles to destroy them.
|next "BFA_World_Quest_Emissaries"
step
label quest-58661
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58661 |future
step
accept Burrowing Terrors##58661 |goto Uldum New/0 45.14,43.07
|tip You will accept this quest automatically.
|polish
step
Destroy the Burrowing Terrors |q 58661 |goto 45.14,43.07 |future
|tip Jump on the bugs when the ground rumbles to destroy them.
|next "BFA_World_Quest_Emissaries"
step
label quest-58662
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58662 |future
step
accept Burrowing Terrors##58662 |goto Uldum New/0 37.13,67.09
|tip You will accept this quest automatically.
|polish
step
Destroy the Burrowing Terrors |q 58662 |goto 37.13,67.09 |future
|tip Jump on the bugs when the ground rumbles to destroy them.
|next "BFA_World_Quest_Emissaries"
step
label quest-57359
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57359 |future
step
accept Summoning Ritual##57359 |goto Uldum New/0 50.57,88.33
|tip You will accept this quest automatically.
step
click Summoning Portal
|tip A lot of enemies will be hidden inside the void.
|tip Your movement will also be slowed significantly.
|tip Move quickly toward the pylon.
Disrupt the Summoning Ritual |q 57359 |goto 50.57,88.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57522
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57522 |future
step
accept Call of the Void##57522 |goto Uldum New/0 48.51,84.82
|tip You will accept this quest automatically.
|polish
step
click Ritual Pylon
|tip A lot of enemies will be hidden inside the void.
|tip Your movement will also be slowed significantly.
|tip Move quickly toward the pylon.
Destroy the Void |q 57522 |goto 48.51,84.82 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57541
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57541 |future
step
accept Call of the Void##57541 |goto Uldum New/0 65.91,72.88
|tip You will accept this quest automatically.
|polish
step
click Ritual Pylon
|tip A lot of enemies will be hidden inside the void.
|tip Your movement will also be slowed significantly.
|tip Move quickly toward the pylon.
Destroy the Void |q 57541 |goto 65.91,72.88 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57585
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 53.68,75.89 |q 57585 |future
step
accept Call of the Void##57585 |goto Uldum New/0 53.68,75.89
|tip You will accept this quest automatically.
|polish
step
click Ritual Pylon
|tip A lot of enemies will be hidden inside the void.
|tip Your movement will also be slowed significantly.
|tip Move quickly toward the pylon.
Destroy the Void |q 57585 |goto 53.68,75.89 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-59003
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 59003 |future
step
Enter the building |goto Uldum New/0 36.69,20.73 < 20 |walk
Fly down |goto 33.54,17.90 < 20 |walk
accept Combustible Cocoons##59003 |goto 36.63,20.68
|tip You will accept this quest automatically.
|polish
step
click Makeshift Firebomb+
|tip They look like flaming bottles on the ground around this area.
|tip Use the "Throw Bottle" ability on your action bar on nearby cocoons.
Destroy Air Cocoons |q 59003 |goto 20.74,59.11 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58256
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58256 |future
step
accept Consuming Maw##58256 |goto Uldum New/0 46.80,34.25
|tip You will accept this quest automatically.
|polish
step
click Consuming Maw
|tip You will transport into the maw.
|tip While inside, you will take a small amount of nature damage every 3 seconds, so be quick.
click Tentacle+
|tip They look like large wiggling tentacles coming out of the ground around this area.
click Tumor+
|tip They look like large scabs on the ground around this area.
kill Maddening Bile##160625+
Destroy the Consuming Maw |q 58256 |goto 46.80,34.25 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58257
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58257 |future
step
accept Consuming Maw##58257 |goto Uldum New/0 55.41,21.33
|tip You will accept this quest automatically.
|polish
step
click Consuming Maw
|tip You will transport into the maw.
|tip While inside, you will take a small amount of nature damage every 3 seconds, so be quick.
click Tentacle+
|tip They look like large wiggling tentacles coming out of the ground around this area.
click Tumor+
|tip They look like large scabs on the ground around this area.
kill Maddening Bile##160625+
Destroy the Consuming Maw |q 58257 |goto 55.41,21.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58258
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58258 |future
step
accept Consuming Maw##58258 |goto Uldum New/0 62.41,79.32
|tip You will accept this quest automatically.
|polish
step
click Consuming Maw
|tip You will transport into the maw.
|tip While inside, you will take a small amount of nature damage every 3 seconds, so be quick.
click Tentacle+
|tip They look like large wiggling tentacles coming out of the ground around this area.
click Tumor+
|tip They look like large scabs on the ground around this area.
kill Maddening Bile##160625+
Destroy the Consuming Maw |q 58258 |goto 62.41,79.32 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58216
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58216 |future
step
accept Consuming Maw##58216 |goto Uldum New/0 60.14,45.56
|tip You will accept this quest automatically.
|polish
step
click Consuming Maw
|tip You will transport into the maw.
|tip While inside, you will take a small amount of nature damage every 3 seconds, so be quick.
click Tentacle+
|tip They look like large wiggling tentacles coming out of the ground around this area.
click Tumor+
|tip They look like large scabs on the ground around this area.
kill Maddening Bile##160625+
Destroy the Consuming Maw |q 58216 |goto 60.14,45.56 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58676
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58676 |future
step
accept Dormant Destroyer##58676 |goto Uldum New/0 20.74,59.11
|tip You will accept this quest automatically.
|polish
step
click Void Conduit+
|tip They look like floating black rocks with void beams coming from them around this area.
Destroy the Dormant Destroyer |q 58676 |goto 20.74,59.11 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58679
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58679 |future
step
accept Dormant Destroyer##58679 |goto Uldum New/0 34.39,29.31
|tip You will accept this quest automatically.
|polish
step
click Void Conduit+
|tip They look like floating black rocks with void beams coming from them around this area.
Destroy the Dormant Destroyer |q 58679 |goto 34.39,29.31 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58743
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58743 |future
step
accept Dune Buggy##58743 |goto Uldum New/0 35.46,31.60
|tip You will accept this quest automatically.
|polish
step
clicknpc Aqir Sandcrawler##162465
Defeat the Aqir Sandcrawler |q 58743/1 |goto 35.46,31.60
|next "BFA_World_Quest_Emissaries"
step
label quest-57215
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57215 |future
step
accept Engine of Ascension##57215 |goto Uldum New/0 64.46,30.55
|tip You will accept this quest automatically.
|polish
step
click Amathet Statue+
|tip They look like large stone Amathet around the giant pillar.
|tip Move the four statues into the yellow beams to block them.
Disrupt the Engine of Ascension |q 57215 |goto 64.46,30.55 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57449
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57449 |future
step
accept Executor of N'Zoth##57449 |goto Uldum New/0 60.08,38.08
|tip You will accept this quest automatically.
|polish
step
click Cultist Sigil+
|tip They look like glowing purple runes on structures nearby.
|tip Destroying a sigil will remove a buff from the executor.
kill Executor of N'Zoth##157680
|tip This will remove the shield around the anchor.
click Executor Anchor##157738
Destroy the Executor Anchor |q 57449 |goto 60.08,38.08 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57580
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57580 |future
step
accept Executor of N'Zoth##57580 |goto Uldum New/0 59.01,46.63
|tip You will accept this quest automatically.
|polish
step
click Cultist Sigil+
|tip They look like glowing purple runes on structures nearby.
|tip Destroying a sigil will remove a buff from the executor.
kill Executor of N'Zoth##157680
|tip This will remove the shield around the anchor.
click Executor Anchor##157738
Destroy the Executor Anchor |q 57580 |goto 59.01,46.63 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57582
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57582 |future
step
accept Executor of N'Zoth##57582 |goto Uldum New/0 66.59,68.23
|tip You will accept this quest automatically.
|polish
step
click Cultist Sigil+
|tip They look like glowing purple runes on structures nearby.
|tip Destroying a sigil will remove a buff from the executor.
kill Executor of N'Zoth##157680
|tip This will remove the shield around the anchor.
click Executor Anchor##157738
Destroy the Executor Anchor |q 57582 |goto 66.59,68.23 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57592
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57592 |future
step
accept Executor of N'Zoth##57592 |goto Uldum New/0 57.26,49.31
|tip On the platform floating in the air.
|tip You will accept this quest automatically.
|polish
step
click Cultist Sigil+
|tip They look like glowing purple runes on structures nearby.
|tip Destroying a sigil will remove a buff from the executor.
kill Executor of N'Zoth##157680
|tip This will remove the shield around the anchor.
click Executor Anchor##157738
Destroy the Executor Anchor |q 57592 |goto 57.26,49.31 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57543
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57543 |future
step
accept Executor of N'Zoth##57543 |goto Uldum New/0 51.97,51.06
|tip You will accept this quest automatically.
|polish
step
click Cultist Sigil+
|tip They look like glowing purple runes on structures nearby.
|tip Destroying a sigil will remove a buff from the executor.
kill Executor of N'Zoth##157680
|tip This will remove the shield around the anchor.
click Executor Anchor##157738
Destroy the Executor Anchor |q 57543 |goto 51.97,51.06 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58981
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58981 |future
step
Enter the cave |goto Uldum New/0 44.58,54.11 < 30 |walk
accept Hardened Hive##58981 |goto 46.80,57.99
|tip You will accept this quest automatically.
|polish
step
click Wastewander Flamethrower
|tip It looks like a small rifle on the ground around this area.
|tip Use the "Incinerate" ability that appears on-screen on nearby eggs.
Destroy the Hardened Hive |q 58981 |goto 46.80,57.99 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58744
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58744 |future
step
accept I Am The One Who Whispers##58744 |goto Uldum New/0 61.74,54.40
|tip You will accept this quest automatically.
|polish
step
clicknpc Whispers##162461
Defeat Whispers |q 58744/1 |goto 61.74,54.40
|next "BFA_World_Quest_Emissaries"
step
label quest-55355
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55355 |future
step
accept Lightblade Training Grounds##55355 |goto Uldum New/0 64.45,22.81
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area
|tip Kill the enemies fighting in the courtyard.
|tip Defeating all of the enemies around the gold orbs will activate Kames.
kill Kames, Blade of the Dawn##152197 |q 55355 |goto 64.45,22.81 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58276
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58276 |future
step
accept Mar'at In Flames##58276 |goto Uldum New/0 49.48,38.93
|tip You will accept this quest automatically.
|polish
step
click Water Bucket+ |goto 49.36,38.23
|tip They look like small buckets of water near the fountain.
|tip Use the "Douse Fire" ability that appears on-screen and throw the water on nearby fires.
|tip Return to get a new bucket after each use.
Extinguish Fires in Mar'at |q 58276 |goto 49.48,38.93 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58275
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58275 |future
step
accept Monstrous Summoning##58275 |goto Uldum New/0 50.58,82.33
|tip Up on the floating platform.
|tip You will accept this quest automatically.
step
kill Abyssal Harbinger##160914+
|tip Kill the Harbingers to disrupt the summoning ritual.
Disrupt the Summoning Ritual |q 58275 |goto 50.58,82.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58667
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58667 |future
step
accept Obsidian Extraction##58667 |goto Uldum New/0 31.50,55.74
|tip You will accept this quest automatically.
|polish
step
click Voidformed Obsidian
|tip They look like black glass floating above magma pockets on the ground around this area.
Destroy the Voidformed Obsidian Deposits |q 58667 |goto 31.50,55.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58952
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58952 |future
step
accept Purging Flames##58952 |goto Uldum New/0 22.40,64.09
|tip You will accept this quest automatically.
|polish
step
clicknpc Infected Wastewander##163078
|tip They look like dead humans lying on the ground around this area.
|tip Carry them to the bonfire and click the "Drop Body" ability that appears on-screen.
Purge the Flames |q 58952 |goto 22.40,64.09 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57429
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57429 |future
step
accept Pyre of the Amalgamated One##57429 |goto Uldum New/0 59.79,72.41
|tip You will accept this quest automatically.
|polish
step
click Pyre of the Amalgamated One
|tip Kill the waves of enemies that spawn.
kill Amalgamation of Flesh##157593 |q 57429 |goto 59.79,72.41 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58742
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58742 |future
step
accept Retinus the Seeker##58742 |goto Uldum New/0 62.04,31.90
|tip You will accept this quest automatically.
|polish
step
clicknpc Retinus the Seeker##162458
Defeat Retinus the Seeker |q 58742/1 |goto 62.04,31.90
|next "BFA_World_Quest_Emissaries"
step
label quest-55359
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55359 |future
step
Fly down |goto Uldum New/0 61.97,29.86 < 30 |walk
accept Ritual of Ascendancy##55359 |goto 64.50,29.82
|tip Down inside the Chamber of the Stars.
|tip You will accept this quest automatically.
|polish
step
kill Suntouched Ritualist##152233+
|tip Killing the four ritualists will destroy the Chosen Ascendant.
Destroy the Chosen Ascendant |q 55359 |goto 64.50,29.82 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57234
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57234 |future
step
accept Solar Collector##57234 |goto Uldum New/0 80.26,66.07
|tip You will accept this quest automatically.
|polish
step
click Power Crystal##156883+
|tip Clicking a power crystal will reverse all crystals that touch it.
|tip Light up all power crystals on all four sides to complete the quest.
Charge the Solar Collector |q 57234 |goto 80.26,66.07 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57235
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57235 |future
step
accept Solar Collector##57235 |goto Uldum New/0 66.50,50.27
|tip You will accept this quest automatically.
|polish
step
click Power Crystal##156883+
|tip Clicking a power crystal will reverse all crystals that touch it.
|tip Light up all power crystals on all four sides to complete the quest.
Charge the Solar Collector |q 57235 |goto 66.50,50.27 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57586
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57586 |future
step
accept Spirit Drinker##57586 |goto Uldum New/0 46.73,30.41
|tip It walks around the area.
|tip You will accept this quest automatically.
|polish
step
kill Spirit Drinker##157794 |q 57586 |goto 46.73,30.41 |future
|tip After all citizens are dead, kill the Spirit Drinker for good.
|next "BFA_World_Quest_Emissaries"
step
label quest-57587
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57587 |future
step
accept Spirit Drinker##57587 |goto Uldum New/0 67.23,70.16
|tip It walks around the area.
|tip You will accept this quest automatically.
|polish
step
kill Spirit Drinker##157794 |q 57587 |goto 67.23,70.16 |future
|tip After all citizens are dead, kill the Spirit Drinker for good.
|next "BFA_World_Quest_Emissaries"
step
label quest-57588
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57588 |future
step
accept Spirit Drinker##57588 |goto Uldum New/0 58.14,20.57
|tip It walks around the area.
|tip You will accept this quest automatically.
|polish
step
kill Spirit Drinker##157794 |q 57588 |goto 58.14,20.57 |future
|tip After all citizens are dead, kill the Spirit Drinker for good.
|next "BFA_World_Quest_Emissaries"
step
label quest-57589
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57589 |future
step
accept Spirit Drinker##57589 |goto Uldum New/0 64.73,67.02
|tip It walks around the area.
|tip You will accept this quest automatically.
|polish
step
kill Spirit Drinker##157794 |q 57589 |goto 64.73,67.02 |future
|tip After all citizens are dead, kill the Spirit Drinker for good.
|next "BFA_World_Quest_Emissaries"
step
label quest-57590
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57590 |future
step
accept Spirit Drinker##57590 |goto Uldum New/0 58.66,68.66
|tip It walks up and down the river.
|tip You will accept this quest automatically.
|polish
step
kill Spirit Drinker##157794 |q 57590 |goto 58.66,68.66 |future
|tip After all citizens are dead, kill the Spirit Drinker for good.
|next "BFA_World_Quest_Emissaries"
step
label quest-57591
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57591 |future
step
accept Spirit Drinker##57591 |goto Uldum New/0 59.84,53.21
|tip It walks up and down the river.
|tip You will accept this quest automatically.
|polish
step
kill Spirit Drinker##157794 |q 57591 |goto 59.84,53.21 |future
|tip After all citizens are dead, kill the Spirit Drinker for good.
|next "BFA_World_Quest_Emissaries"
step
label quest-57456
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57456 |future
step
accept Spirit Drinker##57456 |goto Uldum New/0 47.60,42.62
|tip It walks around the area.
|tip You will accept this quest automatically.
|polish
step
kill Spirit Drinker##157794 |q 57456 |goto 47.60,42.62 |future
|tip After all citizens are dead, kill the Spirit Drinker for good.
|next "BFA_World_Quest_Emissaries"
step
label quest-57621
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57621 |future
step
accept Summoning Ritual##57621 |goto Uldum New/0 55.18,79.34
|tip You will accept this quest automatically.
|polish
step
click Summoning Crystal
Disrupt the Summoning Ritual |q 57621 |goto 55.18,79.34 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58990
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58990 |future
step
accept Titanus Egg##58990 |goto Uldum New/0 28.32,65.61
|tip You will accept this quest automatically.
|polish
step
kill Titanus Egg##163257
|tip Killing the egg will hatch the young.
kill Titanus Young##163268 |q 58990 |goto 28.32,65.61 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57217
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57217 |future
step
accept Unearthed Keeper##57217 |goto Uldum New/0 71.34,68.54
|tip You will accept this quest automatically.
|polish
step
kill Unearthed Keeper##156865 |q 57217 |goto 71.34,68.54 |future
|tip Waves of enemies will attack you until you kill the Keeper.
|tip Attack new enemies to prevent them from healing the Keeper.
|next "BFA_World_Quest_Emissaries"
step
label quest-57218
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57218 |future
step
accept Unearthed Keeper##57218 |goto 82.50,47.98
|tip You will accept this quest automatically.
|polish
step
kill Unearthed Keeper##156865 |q 57218 |goto Uldum New/0 82.50,47.98 |future
|tip Waves of enemies will attack you until you kill the Keeper.
|tip Attack new enemies to prevent them from healing the Keeper.
|next "BFA_World_Quest_Emissaries"
step
label quest-57219
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57219 |future
step
accept Unearthed Keeper##57219 |goto 65.50,37.81
|tip You will accept this quest automatically.
|polish
step
kill Unearthed Keeper##156865 |q 57219 |goto Uldum New/0 65.50,37.81 |future
|tip Waves of enemies will attack you until you kill the Keeper.
|tip Attack new enemies to prevent them from healing the Keeper.
|next "BFA_World_Quest_Emissaries"
step
label quest-57223
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 57223 |future
step
accept Unearthed Keeper##57223 |goto Uldum New/0 78.21,57.54
|tip You will accept this quest automatically.
|polish
step
kill Unearthed Keeper##156865 |q 57223 |goto 78.21,57.54 |future
|tip Waves of enemies will attack you until you kill the Keeper.
|tip Attack new enemies to prevent them from healing the Keeper.
|next "BFA_World_Quest_Emissaries"
step
label quest-55360
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55360 |future
step
accept The Unsealed Tomb##55360 |goto Uldum New/0 69.91,59.93
|tip You will accept this quest automatically.
|polish
step
talk Heru##152439
Tell him _"Begin the ritual, Heru."_
Kill enemies that attack in waves
Complete the Ritual |q 55360 |goto 69.91,59.93 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55354
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55354 |future
step
accept The Vir'nall Front##55354 |goto Uldum New/0 61.39,47.21
|tip You will accept this quest automatically.
|polish
step
talk Sergeant Mehat##156645
Tell him _"Prepare the defenses."_
Kill enemies that attack in waves
kill Menepthah the Warbringer##152163 |q 55354 |goto 61.39,47.21 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58271
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58271 |future
step
accept Voidflame Ritual##58271 |goto Uldum New/0 62.02,70.70
|tip You will accept this quest automatically.
|polish
step
click Voidtouched Candle+
|tip They look like shadowy clumps of candles on the ground around this area.
Stop the Voidflame Ritual |q 58271 |goto 62.02,70.70 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-55466
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 55466 |future
step
accept Vuk'laz the Earthbreaker##55466 |goto Uldum New/0 45.68,16.20
|tip You will accept this quest automatically.
|polish
step
kill Vuk'laz the Earthbreaker##160970 |q 55466 |goto 45.68,16.20 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58745
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |q 58745 |future
step
accept Watch Where You Step##58745 |goto Uldum New/0 57.60,43.58
|tip Up on the wall.
|tip You will accept this quest automatically.
|polish
step
clicknpc Blotto##162466
Defeat Blotto |q 58745/1 |goto 57.60,43.58
|next "BFA_World_Quest_Emissaries"
step
label "BFA_World_Quest_Emissaries"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Dailies Guides\\Battle for Azeroth\\Vale of Eternal Blossoms World Quests",{
author="support@zygorguides.com",
description="This guide will assist you in completing world quests in Vale of Eternal Blossoms.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
condition_suggested=function() return level == 50 and completedq(56540) end,
condition_valid=function() return level >= 50 and (haveq(56540) or completedq(56540)) end,
condition_valid_msg="You have not unlocked Vale of Eternal Blossoms world quests!\n"..
"Complete the quest \"Proof of Tenacity\" in the \"Magni's Plan\" leveling guide.",
startlevel=50.0,
worldquestzone=1530,
worldquestshidden = {
[57375]={69.27,21.75},
[56178]={56.69,59.30},
[56177]={79.22,33.15},
[56074]={49.33,66.72},
[57379]={76.41,51.61},
[56099]={60.45,67.86},
[56090]={40.95,66.45},
[57339]={25.24,17.22},
[57049]={19.87,7.50},
[58367]={22.42,36.49},
[58370]={26.68,16.97},
[57256]={16.82,45.68},
[57272]={19.14,71.55},
[58334]={33.45,70.13},
[57323]={24.70,47.90},
[57087]={31.32,28.99},
[57101]={47.63,21.65},
[57023]={21.42,14.13},
[57158]={14.58,23.16},
[57171]={20.42,12.56},
[57484]={16.90,45.64},
[57508]={11.04,48.30},
[57476]={11.37,41.00},
[57453]={14.33,33.22},
[57521]={8.85,26.82},
[58442]={81.40,49.52},
[58438]={46.38,57.15},
[57085]={11.01,64.39},
[57384]={19.24,72.33},
[56076]={74.17,40.07},
[56180]={79.54,54.35},
[56163]={60.58,43.27},
[57299]={50.23,64.56},
[57540]={18.49,65.74},
[57404]={26.26,46.65},
[57558]={6.48,42.29},
[57445]={29.30,60.77},
[57517]={25.68,36.48},
[57519]={27.01,17.21},
[57542]={31.11,60.98},
[57089]={6.51,70.69},
[58439]={41.33,45.39},
[57146]={43.60,41.48},
}
},[[
step
label "Choose_World_Quest"
#include "BFA_Choose_World_Quests"
|tip Some of these quests have wandering mobs, so you may have to search the area for them.
step
label quest-56076
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56076 |future
step
accept Abyssal Ritual##56076 |goto Vale of Eternal Blossoms New/0 74.17,40.07
|tip You will accept this quest automatically.
|polish
step
kill Drowned Adherent##153179+
|tip The monstrosity will be freed after the Adherents are dead.
kill Depths Monstrosity##153171 |q 56076 |goto 74.17,40.07 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57087
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57087 |future
step
accept Baruk Obliterator##57087 |goto Vale of Eternal Blossoms New/0 31.32,28.99
|tip You will accept this quest automatically.
|polish
step
Destroy the Baruk Obliterator |q 57087 |goto 31.32,28.99 |future
|tip Randomly nearby, there are torches burning that match the color of the runes around the obliterator.
|tip Click a torch to gain a charge and carry it to the matching rune.
|tip Clicking a rune while carrying a matching charge color will destroy the rune.
|tip Destroy all four runes.
|next "BFA_World_Quest_Emissaries"
step
label quest-57272
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57272 |future
step
accept Bloodbound Effigy##57272 |goto Vale of Eternal Blossoms New/0 19.14,71.55
|tip You will accept this quest automatically.
|polish
step
Destroy the Bloodbound Effigy |q 57272 |goto 19.14,71.55 |future
|tip Randomly nearby, there are torches burning that match the color of the runs around the effigy.
|tip Click a torch to gain a charge and carry it to the matching rune.
|tip Clicking a rune while carrying a matching charge color will destroy the rune.
|tip Destroy all four runes.
|next "BFA_World_Quest_Emissaries"
step
label quest-56163
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56163 |future
step
accept Bound Elemental##56163 |goto Vale of Eternal Blossoms New/0 60.58,43.27
|tip You will accept this quest automatically.
|polish
step
kill Depthsborn Binder##154329+
Free the Bound Elemental |q 56163 |goto 60.58,43.27 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56180
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56180 |future
step
accept Bound Elemental##56180 |goto Vale of Eternal Blossoms New/0 79.54,54.35
|tip You will accept this quest automatically.
|polish
step
kill Depthsborn Binder##154329+
Free the Bound Elemental |q 56180 |goto 79.54,54.35 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58747
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58747 |future
step
accept Brain Tickling##58747 |goto Vale of Eternal Blossoms New/0 57.47,54.28
|tip You will accept this quest automatically.
|polish
step
clicknpc Tormentius##162469
Defeat Tormentius |q 58747/1 |goto 57.47,54.28
|next "BFA_World_Quest_Emissaries"
step
label quest-57445
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57445 |future
step
accept Chin's Noodle Cart##57445 |goto Vale of Eternal Blossoms New/0 29.30,60.77
|tip You will accept this quest automatically.
|polish
step
talk Chin##157615
Tell him _"I'll hold off the mantid."_
Kill enemies that attack in waves
Defend Chin's Noodle Cart |q 57445 |goto 29.30,60.77 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57339
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57339 |future
step
Enter the building |goto Vale of Eternal Blossoms New/0 22.20,24.34 < 20 |walk
Follow the path |goto 22.83,16.15 < 20 |only if walking
accept Construction Ritual##57339 |goto 25.24,17.22
|tip You will accept this quest automatically.
|polish
step
click Tiger Statue##157389 |goto 26.06,14.98
|tip Inside the building.
|tip Clicking the statue will move it forward.
|tip Move the statue in front of the kneeling Mogu to block the lightning.
Free the Mogu |q 57339 |goto 25.24,17.22 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58442
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58442 |future
step
accept Consuming Maw##58442 |goto Vale of Eternal Blossoms New/0 81.30,49.56
|tip You will accept this quest automatically.
step
click Consuming Maw
|tip You will transport into the maw.
|tip While inside, you will take a small amount of nature damage every 3 seconds, so be quick.
click Tentacle+
|tip They look like large wiggling tentacles coming out of the ground around this area.
click Tumor+
|tip They look like large scabs on the ground around this area.
kill Maddening Bile##160625+
Destroy the Consuming Maw |q 58442 |goto 81.40,49.52 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58438
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58438 |future
step
accept Consuming Maw##58438 |goto Vale of Eternal Blossoms New/0 46.38,57.15
|tip You will accept this quest automatically.
step
click Consuming Maw
|tip You will transport into the maw.
|tip While inside, you will take a small amount of nature damage every 3 seconds, so be quick.
click Tentacle+
|tip They look like large wiggling tentacles coming out of the ground around this area.
click Tumor+
|tip They look like large scabs on the ground around this area.
kill Maddening Bile##160625+
Destroy the Consuming Maw |q 58438 |goto 46.38,57.15 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58439
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58439 |future
step
accept Consuming Maw##58439 |goto Vale of Eternal Blossoms New/0 41.33,45.39
|tip At the bottom of the lake.
|tip You will accept this quest automatically.
step
click Consuming Maw
|tip At the bottom of the lake.
|tip You will transport into the maw.
|tip While inside, you will take a small amount of nature damage every 3 seconds, so be quick.
click Tentacle+
|tip They look like large wiggling tentacles coming out of the ground around this area.
click Tumor+
|tip They look like large scabs on the ground around this area.
kill Maddening Bile##160625+
Destroy the Consuming Maw |q 58439 |goto 41.33,45.39 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57146
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57146 |future
step
accept Corruption Tear##57146 |goto Vale of Eternal Blossoms New/0 43.60,41.48
|tip You will accept this quest automatically.
step
label "Get_Titanic_Beacon"
click Titanic Beacon
Get a Titanic Beacon |havebuff spell:305470 |goto 45.01,39.49 |q 57146 |future
step
click Corruption Tear
|tip Avoid the orange eyes or you will have to pick up another beacon.
Destroy the Corruption Tear |q 57146 |goto 43.60,41.48 |future |or
'|complete not hasbuff("spell:305470") and not completedq(57146) |next "Get_Titanic_Beacon" |or
|next "BFA_World_Quest_Emissaries"
step
label quest-57158
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57158 |future
step
accept Electric Empowerment##57158 |goto Vale of Eternal Blossoms New/0 14.58,23.16
|tip You will accept this quest automatically.
|polish
step
kill Zan-Tien Caller##153095+
|tip Killing the four Callers will free Menek.
kill Menek the Infused##156549 |q 57158 |goto 14.58,23.16 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58367
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58367 |future
step
accept Empowered Demolisher##58367 |goto Vale of Eternal Blossoms New/0 22.42,36.49
|tip You will accept this quest automatically.
|polish
step
click Spirit Reliquary+
|tip They look like small pots with green vapor coming from the lids on the ground around this area.
Destroy the Empowered Demolisher |q 58367 |goto 22.42,36.49 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58370
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58370 |future
step
accept Empowered Demolisher##58370 |goto Vale of Eternal Blossoms New/0 26.68,16.97
|tip You will accept this quest automatically.
|polish
step
click Spirit Reliquary+
|tip They look like small pots with green vapor coming from the lids on the ground around this area.
Destroy the Empowered Demolisher |q 58370 |goto 26.68,16.97 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57521
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57521 |future
step
accept Empowered War Wagon##57521 |goto Vale of Eternal Blossoms New/0 8.85,26.82
|tip You will accept this quest automatically.
|polish
step
click Shadow-Pan Munitions
|tip They look like small silver bombs on the ground all over the wall.
|tip Drop them on the War Wagon until the wagon is destroyed.
Destroy the Empowered War Wagon |q 57521 |goto 8.85,26.82 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57085
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57085 |future
step
accept Empowered War Wagon##57085 |goto Vale of Eternal Blossoms New/0 11.01,64.39
|tip You will accept this quest automatically.
|polish
step
click Shadow-Pan Munitions
|tip They look like small silver bombs on the ground all over the wall.
|tip Drop them on the War Wagon until the wagon is destroyed.
Destroy the Empowered War Wagon |q 57085 |goto 11.01,64.39 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58749
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58749 |future
step
accept Flight of the Vil'thik##58749 |goto Vale of Eternal Blossoms New/0 7.34,31.90
|tip Up on the wall.
|tip You will accept this quest automatically.
|polish
step
clicknpc Vil'thik Hatchling##162471
|tip On the highest platform.
Defeat the Vil'thik Hatchling |q 58749/1 |goto 7.34,31.90
|next "BFA_World_Quest_Emissaries"
step
label quest-56099
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56099 |future
step
accept Font of Corruption##56099 |goto Vale of Eternal Blossoms New/0 70.67,57.86
|tip You will accept this quest automatically.
|polish
step
Enter the mine |goto 69.93,58.49 < 20 |walk
Run down the stairs |goto 69.42,68.03 < 20 |only if walking
Follow the path |goto 63.61,67.83 < 20 |only if walking
click Mogu Statue##154119+
|tip They look like Mogu with spears holding blue orbs on the ground around this area.
|tip Click them until the beam of light bounces from the three statues on each side of the room.
|tip Both light beams must strike the Titan Console on the west side of the room.
|tip Face the statues closest to the entrance to the north and south sides of the room.
|tip Face the outer statues towards the Font of Corruption.
|tip Face the statues closest to the Titan Console towards the west side of the room.
click Titan Console##154123
|tip Click it when both pillars are energized.
Destroy the Font of Corruption |q 56099 |goto 58.45,67.76 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57171
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57171 |future
step
accept Goldbough Guardian##57171 |goto Vale of Eternal Blossoms New/0 20.42,12.56
|tip You will accept this quest automatically.
|polish
step
talk Chief Goldbough##156623
Tell him _"I will protect you."_
Kill enemies that attack in waves
|tip Three waves will attack you.
Protect Chief Goldbough |q 57171 |goto 20.19,12.27 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58705
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58705 |future
step
accept Grand Empress Shek'zara##58705 |goto Vale of Eternal Blossoms New/0 6.00,56.50
|tip You will accept this quest automatically.
|polish
step
kill Grand Empress Shek'zara##154638 |q 58705 |goto 6.00,56.50 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57379
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57379 |future
step
accept Infested Jade Statue##57379 |goto Vale of Eternal Blossoms New/0 76.41,51.61
|tip You will accept this quest automatically.
|polish
step
click Twitching Eye##157531+
|tip They look like bright orange eyeballs on the jade statue.
|tip Run away after clicking them to pull them off the statue.
Cleanse the Jade Statue |q 57379 |goto 76.41,51.61 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57540
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57540 |future
step
accept Kunchong Incubator##57540 |goto Vale of Eternal Blossoms New/0 18.49,65.74
|tip You will accept this quest automatically.
|polish
step
click Field Generator+
|tip They look like glowing posts on the ground around this area.
Destroy the Kunchong Incubator |q 57540 |goto 18.49,65.74 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58748
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58748 |future
step
accept Living Statues Are Tough##58748 |goto Vale of Eternal Blossoms New/0 28.55,34.94
|tip You will accept this quest automatically.
|polish
step
clicknpc Baruk Stone Defender##162470
Defeat the Baruk Stone Defender |q 58748/1 |goto 28.55,34.94
|next "BFA_World_Quest_Emissaries"
step
label quest-57384
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57384 |future
step
accept Mending Monstrosity##57384 |goto Vale of Eternal Blossoms New/0 19.24,72.33
|tip You will accept this quest automatically.
|polish
step
click Mending Amber+
|tip They look like red and yellow crystals with orange beams coming from them around this area.
|tip After clicking one, Havok will get angry and stomp.
|tip Destroy all of the Mending Amber to kill Havok.
kill Hovok##153241 |q 57384 |goto 19.24,72.33 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-58334
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58334 |future
step
accept Mistfall In Flames##58334 |goto Vale of Eternal Blossoms New/0 33.45,70.13
|tip You will accept this quest automatically.
|polish
step
click Water Bucket+
|tip They look like small buckets of water around the kegs and tables.
|tip Use the "Douse Fire" ability that appears on-screen to put out a fire.
|tip Continue collecting buckets and putting out fires until the village is safe.
Extinguish the Fires in Mistfall |q 58334 |goto 33.45,70.13 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57299
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57299 |future
step
accept Mysterious Sarcophagus##57299 |goto Vale of Eternal Blossoms New/0 50.23,64.56
|tip You will accept this quest automatically.
|polish
step
click Suspicious Headstone+
|tip They look like large tombstones on the ground around this area.
|tip Clicking the three headstones will summon the Screaming Soul.
kill Screaming Soul##157298 |q 57299 |goto 50.23,64.56 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57375
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57375 |future
step
accept Pulsating Mound##57375 |goto Vale of Eternal Blossoms New/0 69.27,21.75
|tip You will accept this quest automatically.
|polish
step
Kill enemies around this area
|tip Clear the enemies immediately surrounding the Pulsating Mound to free the living growth.
kill Living Growth##157529 |q 57375 |goto 69.27,21.75 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57404
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57404 |future
step
accept Ravager Hive##57404 |goto Vale of Eternal Blossoms New/0 26.26,46.65
|tip You will accept this quest automatically.
|polish
step
click Ravager Hive+
|tip They look like glowing beehives on the tree.
Disrupt the Ravager Hive |q 57404 |goto 26.26,46.65 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57484
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57484 |future
step
accept Ritual of Wakening##57484 |goto Vale of Eternal Blossoms New/0 16.90,45.64
|tip You will accept this quest automatically.
|polish
step
kill Klaxxi Wakener##157942+
|tip Killing them will kill the Paragon.
Kill the Unearthed Paragon |q 57484 |goto 16.90,45.64 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57323
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57323 |future
step
accept Serpent Binding##57323 |goto Vale of Eternal Blossoms New/0 24.70,47.90
|tip You will accept this quest automatically.
|polish
step
kill Zan-Tien Subjugator##157345+
|tip Killing the three subjugators will free the serpent.
kill Haofeng##157341 |q 57323 |goto 24.70,47.90 |future
|tip Move to the side to avoid the Ionizing Breath.
|next "BFA_World_Quest_Emissaries"
step
label quest-57256
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57256 |future
step
accept Stormchosen Arena##57256 |goto Vale of Eternal Blossoms New/0 16.82,45.68
|tip You will accept this quest automatically.
|polish
step
Kill enemies that attack in waves
Defeat the Arena Combatants |q 57256 |goto 16.82,45.68 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56090
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56090 |future
step
Enter the cave |goto Vale of Eternal Blossoms New/0 41.16,66.51 < 15 |walk
accept Stormstout Holdout##56090 |goto 40.95,66.45
|tip You will accept this quest automatically.
|polish
step
talk Mama Stormstout##154095
|tip Inside the cave.
Tell her _"I've got your back, Mama Stormstout."_
Kill enemies that attack in waves
Defend the Stormstout Brewers |q 56090 |goto 40.95,66.45 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57453
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57453 |future
step
accept Swarm Caller##57453 |goto Vale of Eternal Blossoms New/0 14.33,33.22
|tip You will accept this quest automatically.
|polish
step
kill Swarm Caller##158033 |q 57453 |goto 14.33,33.22 |future
|tip Enemies will attack you in waves until the Swarm Caller is destroyed.
|next "BFA_World_Quest_Emissaries"
step
label quest-57517
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57517 |future
step
accept Swarm Caller##57517 |goto Vale of Eternal Blossoms New/0 25.68,36.48
|tip You will accept this quest automatically.
|polish
step
kill Swarm Caller##158033 |q 57517 |goto 25.68,36.48 |future
|tip Enemies will attack you in waves until the Swarm Caller is destroyed.
|next "BFA_World_Quest_Emissaries"
step
label quest-57519
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57519 |future
step
accept Swarm Caller##57519 |goto Vale of Eternal Blossoms New/0 27.01,17.21
|tip You will accept this quest automatically.
|polish
step
kill Swarm Caller##158033 |q 57519 |goto 27.01,17.21 |future
|tip Enemies will attack you in waves until the Swarm Caller is destroyed.
|next "BFA_World_Quest_Emissaries"
step
label quest-57542
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57542 |future
step
accept Swarm Caller##57542 |goto Vale of Eternal Blossoms New/0 31.11,60.98
|tip You will accept this quest automatically.
|polish
step
kill Swarm Caller##158033 |q 57542 |goto 31.11,60.98 |future
|tip Enemies will attack you in waves until the Swarm Caller is destroyed.
|next "BFA_World_Quest_Emissaries"
step
label quest-58746
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 58746 |future
step
accept Tiny Madness##58746 |goto Vale of Eternal Blossoms New/0 56.18,28.22
|tip You will accept this quest automatically.
|polish
step
clicknpc K'tiny the Mad##162468
Defeat K'tiny the Mad |q 58746/1 |goto 56.18,28.22
|next "BFA_World_Quest_Emissaries"
step
label quest-57049
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57049 |future
step
Enter the building |goto Vale of Eternal Blossoms New/0 22.20,24.34 < 20 |walk
Follow the path |goto 19.38,14.12 < 20 |only if walking
Run up the stairs |goto 15.61,7.04 < 20 |only if walking
accept Vault of Souls##57049 |goto 19.87,7.50
|tip You will accept this quest automatically.
|polish
step
click Vault of Souls
|tip Inside the building.
|tip Clicking the vault will free waves of Mogu statues.
kill Vault Statue##156272+
kill Guardian of the Vault##156271 |q 57049 |goto 19.87,7.50 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57476
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57476 |future
step
accept Vil'thik Feeding Grounds##57476 |goto Vale of Eternal Blossoms New/0 11.37,41.00
|tip You will accept this quest automatically.
|polish
step
click Suspension Chamber+
|tip They look like chunks of amber inside containers on the ground around this area.
|tip Open all of the chambers.
Disrupt the Vil'thik Feeding Grounds |q 57476 |goto 11.37,41.00 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57508
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57508 |future
step
accept Vil'thik War Banner##57508 |goto Vale of Eternal Blossoms New/0 11.04,48.30
|tip You will accept this quest automatically.
|polish
step
kill Commander I'juk##157985 |q 57508 |goto 11.04,48.30 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57558
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57558 |future
step
accept Vil'thik Hatchery##57558 |goto Vale of Eternal Blossoms New/0 6.48,42.29
|tip You will accept this quest automatically.
|tip Inside the building.
|polish
step
click Shado-Pan Flamethrower
|tip It looks like a glowing tube on the ground inside the building.
Attack the Vil'thik Hatchery |q 57558 |goto 6.48,42.29 |future
|tip Use the "Flamethrower" ability that appears on-screen to destroy all the eggs you see.
|next "BFA_World_Quest_Emissaries"
step
label quest-57089
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57089 |future
step
accept Vil'thik Hatchery##57089 |goto Vale of Eternal Blossoms New/0 6.48,70.69
|tip You will accept this quest automatically.
|tip Inside the building.
|polish
step
click Shado-Pan Flamethrower
|tip It looks like a glowing tube on the ground inside the building.
Attack the Vil'thik Hatchery |q 57089 |goto 6.48,70.69 |future
|tip Use the "Flamethrower" ability that appears on-screen to destroy all the eggs you see.
|next "BFA_World_Quest_Emissaries"
step
label quest-56074
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56074 |future
step
accept Void Conduit##56074 |goto Vale of Eternal Blossoms New/0 49.33,66.72
|tip You will accept this quest automatically.
|polish
step
click Void Conduit
|tip This will allow you to see the Watching Eyes.
|tip Click it again if you are ejected from the void.
click Watching Eye##154017+
|tip They look like purple eyes on the ground around this area.
|tip Click them while avoiding the purple beam until the quest completes.
Destroy the Void Conduit |q 56074 |goto 49.33,66.72 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56177
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56177 |future
step
accept Void Conduit##56177 |goto Vale of Eternal Blossoms New/0 79.22,33.15
|tip You will accept this quest automatically.
|polish
step
click Void Conduit
|tip This will allow you to see the Watching Eyes.
|tip Click it again if you are ejected from the void.
click Watching Eye##154017+
|tip They look like purple eyes on the ground around this area.
|tip Click them while avoiding the purple beam until the quest completes.
Destroy the Void Conduit |q 56177 |goto 79.22,33.15 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-56178
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 56178 |future
step
accept Void Conduit##56178 |goto Vale of Eternal Blossoms New/0 56.69,59.30
|tip You will accept this quest automatically.
|polish
step
click Void Conduit
|tip This will allow you to see the Watching Eyes.
|tip Click it again if you are ejected from the void.
click Watching Eye##154017+
|tip They look like purple eyes on the ground around this area.
|tip Click them while avoiding the purple beam until the quest completes.
Destroy the Void Conduit |q 56178 |goto 56.69,59.30 |future
|next "BFA_World_Quest_Emissaries"
step
label quest-57023
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57023 |future
step
Enter the building |goto Vale of Eternal Blossoms New/0 22.20,24.34 < 20 |walk
Follow the path |goto 21.89,12.36 < 20 |only if walking
accept Weighted Mogu Artifact##57023 |goto 21.42,14.13
|tip You will accept this quest automatically.
|polish
step
label "Pick_Up_Weighted_Artifact"
click Oddly Heavy Vase
|tip Inside the building.
|tip Avoid the red flame, yellow lightning, and green arrow trap tiles along the way.
|tip Stationary statues will smash the ground in an arc in front of them as well.
Pick Up the Weighted Artifact |havebuff spell:305001 |goto 23.90,4.73
|only if haveq(57023)
step
click Weighted Mogu Artifact
Replace the Artifact |q 57023 |goto 21.42,14.13 |future |or
|tip Inside the building.
|tip Taking damage will cause you to drop the artifact.
|tip Avoid the red flame, yellow lightning, and green arrow trap tiles along the way.
|tip Stationary statues will smash the ground in an arc in front of them as well.
'|complete not hasbuff("spell:305001") and haveq(57023) |next "Pick_Up_Weighted_Artifact" |or
|next "BFA_World_Quest_Emissaries"
step
label quest-57101
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96 |q 57101 |future
step
accept Zan-Tien Serpent Cage##57101 |goto Vale of Eternal Blossoms New/0 47.63,21.65
|tip You will accept this quest automatically.
|polish
step
Destroy the Zan-Tien Serpent |q 57101 |goto 47.63,21.65 |future
|tip Randomly nearby, there are torches burning that match the color of the runs around the obliterator.
|tip Click a torch to gain a charge and carry it to the matching rune.
|tip Clicking a rune while carrying a matching charge color will destroy the rune.
|tip Destroy all four runes.
|next "BFA_World_Quest_Emissaries"
step
label "BFA_World_Quest_Emissaries"
#include "BFA_World_Quest_Emissaries"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Battle for Azeroth\\Lesser Visions of N'Zoth",{
author="support@zygorguides.com",
description="This guide will walk you through completing the daily Lesser Vision of N'Zoth in the current "..
"Black Empire assault zone..",
keywords={"8.3","N'zoth","Nzoth","Corruption","Assault","Black","Empire"},
condition_valid=function() return level >= 50 and (haveq(57373) or completedq(57373)) end,
condition_valid_msg="You have not unlocked lesser visions!\n"..
"Accept or complete the quest \"Descending Into Madness\" in the \"Magni's Plan\" leveling guide.",
},[[
step
label "Accept_Daily_Quest"
talk Blacktalon Agent##160252 |goto Vale of Eternal Blossoms New/0 84.28,51.76 |only if ZGV.InPhase('ValeInvasionRight')
talk Blacktalon Agent##160252 |goto Uldum New/0 56.70,31.74 |only if ZGV.InPhase('UldumInvasionCenter')
accept Minions of N'Zoth##58151 |only if questpossible
accept A Dark, Glaring Reality##58168 |only if questpossible
accept Vanquishing the Darkness##58156 |only if questpossible
accept A Hand in the Dark##58155 |only if questpossible
accept Preventative Measures##58167 |only if questpossible
Accept the Daily Quest Available Today |complete haveq(58151,58168,58156,58155,58167)
step
click Vale of Eternal Twilight |goto Vale of Eternal Blossoms New/0 84.48,51.74 |only if ZGV.InPhase('ValeInvasionRight')
click Vision of the Twisting Sands |goto Uldum New/0 56.65,31.67 |only if ZGV.InPhase('UldumInvasionCenter')
Enter the Vision |goto Vale Vision/0 84.51,56.76 < 1000 |c |noway |only if ZGV.InPhase('ValeInvasionRight')
Enter the Vision |goto Uldum Vision/0 55.91,34.15 < 1000 |c |noway |only if ZGV.InPhase('UldumInvasionCenter')
step
Kill enemies around this area
|tip Any of them inside the vision count.
Slay #20# Minions of N'Zoth |q 58151/1 |goto Vale Vision/0 84.51,56.76 |only if ZGV.InPhase('ValeInvasionRight')
Slay #20# Minions of N'Zoth |q 58151/1 |goto Uldum Vision/0 55.91,34.15 |only if ZGV.InPhase('UldumInvasionCenter')
|only if haveq(58151)
step
label "Gain_Darksight_Buff"
use the Darksight Potion##173810
Gain the "Darksight" Buff |havebuff spell:310195
|only if haveq(58168)
step
kill 6 Darkglare Watcher##160088 |q 58168/1 |goto Vale Vision/0 85.02,57.33 |only if ZGV.InPhase('ValeInvasionRight') |or
kill 6 Darkglare Watcher##160088 |q 58168/1 |goto Uldum Vision/0 55.91,34.15 |only if ZGV.InPhase('UldumInvasionCenter') |or
'|complete not hasbuff("spell:310195") and not readyq(58168) and not completedq(58168) |next "Gain_Darksight_Buff" |or
|only if haveq(58168)
step
Kill enemies around this area
Click objects around this area
|tip Any of them inside the vision count.
Repel N'Zoth's Corruption |q 58156/1 |goto Vale Vision/0 84.51,56.76 |only if ZGV.InPhase('ValeInvasionRight')
Repel N'Zoth's Corruption |q 58156/1 |goto Uldum Vision/0 55.91,34.15 |only if ZGV.InPhase('UldumInvasionCenter')
|only if haveq(58156)
step
clicknpc Jahi##161097+
|tip They look like subdued Ramkahen on the ground around this area.
Rescue #8# Souls |q 58155/1 |goto Vale Vision/0 84.51,56.76 |only if ZGV.InPhase('ValeInvasionRight')
Rescue #8# Souls |q 58155/1 |goto Uldum Vision/0 55.91,34.15 |only if ZGV.InPhase('UldumInvasionCenter')
|only if haveq(58155)
step
Destroy #3# Void Portals |q 58167/1 |goto Vale Vision/0 84.51,56.76 |only if ZGV.InPhase('ValeInvasionRight')
Destroy #3# Void Portals |q 58167/1 |goto Uldum Vision/0 55.91,34.15 |only if ZGV.InPhase('UldumInvasionCenter')
|only if haveq(58167)
step
talk Blacktalon Agent##160252 |goto Vale of Eternal Blossoms New/0 84.28,51.76 |only if ZGV.InPhase('ValeInvasionRight')
talk Blacktalon Agent##160252 |goto Uldum New/0 56.70,31.74 |only if ZGV.InPhase('UldumInvasionCenter')
turnin Minions of N'Zoth##58151 |only if haveq(58151) or completedq(58151)
turnin A Dark, Glaring Reality##58168 |only if haveq(58168) or completedq(58168)
turnin Vanquishing the Darkness##58156 |only if haveq(58156) or completedq(58156)
turnin A Hand in the Dark##58155 |only if haveq(58155) or completedq(58155)
turnin Preventative Measures##58167 |only if haveq(58167) or completedq(58167)
step
You have completed to daily quest for the day
|tip This guide will reset when another is available.
'|complete not completedq(58151,58168,58156,58155,58167) |next "Accept_Daily_Quest"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Battle for Azeroth\\\Uldum\\Uldum Assaults",{
author="support@zygorguides.com",
description="This guide will assist you in completing the three assault events in Uldum.",
condition_suggested=function() return level == 50 and (haveq(56376) or completedq(56376)) end,
keywords={"Assault","Amathet","Advance","The","Black","Empire","Aqir","Unearthed","8.3","N'zoth","Nzoth","Corruption"},
},[[
step
Accept or Complete the "Surfacing Threats" Quest |complete haveq(56376) or completedq(56376)
|tip This unlocks Uldum assault quests.
|tip You must speak to High Commander Kamses after accepting the quest to unlock them.
|tip Use the "Magni's Plan" guide to accomplish this.
step
label "Accept_Assault_Quest"
talk Zidormi##162419
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldUldum') |goto Uldum/0 56.02,35.14 |or
step
Accept an Assault Quest in Uldum |complete haveq(55350,57157,56308) |goto Uldum New/0 73.64,52.20
|tip You will accept a quest automatically when a new assault begins.
'|complete ZGV.InPhase('UldumInvasionRight') and haveq(55350) |next "Accept_Assault_Amathet_Advance" |or
'|complete ZGV.InPhase('UldumInvasionCenter') and haveq(57157) |next "Accept_Assault_The_Black_Empire" |or
'|complete ZGV.InPhase('UldumInvasionLeft') and haveq(56308) |next "Accept_Assault_Aqir_Unearthed" |or
step
label "Accept_Assault_Amathet_Advance"
accept Assault: Amathet Advance##55350
|tip You will accept this quest automatically.
step
Kill enemies around this area
Click objects around this area
Drive Back the Amathet |q 55350/1 |goto 73.64,52.20
|only if haveq(55350) or completedq(55350)
step
talk Captain Hadan##161031
Tell him _"I'm ready for battle."_
Speak with Captain Hadan |q 55350/2 |goto 72.02,52.17 |or
'|complete readyq(55350) |or
|only if haveq(55350) or completedq(55350)
step
kill Saba-tok##157286 |q 55350/3 |goto 72.63,52.17
|tip It walks up and down the path.
|only if haveq(55350) or completedq(55350)
step
talk High Commander Kamses##155096
|tip Inside the building.
turnin Assault: Amathet Advance##55350 |goto 54.83,32.97 |next "Wait_for_Reset"
|only if haveq(55350) or completedq(55350)
step
label "Accept_Assault_The_Black_Empire"
accept Assault: The Black Empire##57157
|tip You will accept this quest automatically.
step
Kill enemies around this area
Click objects around this area
|tip Things within the purple zone on the map count.
Cleanse N'Zoth's Corruption |q 57157/1 |goto 57.44,50.36
|only if haveq(57157) or completedq(57157)
step
kill Black Warden Rhothkozz##158790 |q 57157/2 |goto 61.12,60.12
|tip Way up in the air on the floating platform.
|only if haveq(57157) or completedq(57157)
step
talk High Priest Amet##155099
|tip Inside the building.
turnin Assault: The Black Empire##57157 |goto 54.69,32.86 |next "Wait_for_Reset"
|only if haveq(57157) or completedq(57157)
step
label "Accept_Assault_Aqir_Unearthed"
accept Assault: Aqir Unearthed##56308
|tip You will accept this quest automatically.
step
talk Arik Scorpidsting##159544
accept Word from Orsis##57873 |goto 40.13,21.32
|only if haveq(56308) and not completedq(58009)
step
Investigate Orsis |q 57873/1 |goto 40.79,38.51
|only if haveq(56308) and not completedq(58009)
step
click Discarded Bottle
Collect the Discarded Bottle |q 57873/2 |goto 40.80,38.51
|only if haveq(56308) and not completedq(58009)
step
clicknpc Laborer Mitchell##159445
Revive Laborer Mitchell |q 57873/3 |goto 40.81,38.54
|only if haveq(56308) and not completedq(58009)
step
talk Laborer Mitchell##159462
Ask him _"What happened here?"_
Talk to Laborer Mitchell |q 57873/4 |goto 40.81,38.54
|only if haveq(56308) and not completedq(58009)
step
talk Laborer Mitchell##154958
turnin Word from Orsis##57873 |goto 40.81,38.54
accept Search for Survivors##57915 |goto 40.81,38.54
|only if haveq(56308) and not completedq(58009)
step
clicknpc Wastewander Laborer##159548
Examine #8# Wastewander Laborers |q 57915/1 |goto 39.75,42.19
|only if haveq(56308) and not completedq(58009)
step
Enter the building |goto 39.87,44.86 < 10 |walk
talk Outrider Lashan##159560
|tip Inside the building.
turnin Search for Survivors##57915 |goto 39.99,45.26
accept To Ankhaten Harbor##57955 |goto 39.99,45.26
|only if haveq(56308) and not completedq(58009)
step
talk Tracker Samara##159682
turnin To Ankhaten Harbor##57955 |goto 24.50,55.29
accept Wastewander Hosts##57956 |goto 24.50,55.29
accept Burn the Bodies##57954 |goto 24.50,55.29
|only if haveq(56308) and not completedq(58009)
stickystart "Slay_6_Wastewander_Hosts"
step
clicknpc Wastewander Laborer##159705+
|tip They look like dead humans covered in egg clusters on the ground around this area.
Burn #10# Egg-bearing Corpses |q 57954/1 |goto 22.20,61.73
|only if haveq(56308) and not completedq(58009)
step
label "Slay_6_Wastewander_Hosts"
use the Fire Bomb##174325
kill 6 Wastewander Host##154369 |q 57956/2 |goto 22.20,61.73
|only if haveq(56308) and not completedq(58009)
step
talk Tracker Samara##159682
turnin Wastewander Hosts##57956 |goto 24.50,55.29
turnin Burn the Bodies##57954 |goto 24.50,55.29
accept Ruins of Ammon##57971 |goto 24.50,55.29
|only if haveq(56308) and not completedq(58009)
step
talk Mender Dyrin##159820
turnin Ruins of Ammon##57971 |goto 27.94,63.45
accept Tend the Wounded##57969 |goto 27.94,63.45
accept Ruinator Xok'nixx##57970 |goto 27.94,63.45
|only if haveq(56308) and not completedq(58009)
step
talk H'partho Ardoros##161738
accept A Bit of Investigation##58606 |goto 27.99,63.39
|only if haveq(56308) and not completedq(58009)
stickystart "Collect_Aqir_Bits"
stickystart "Heal_Wastewander_Laborers"
step
kill Ruinator Xok'nixx##159816 |q 57970/1 |goto 32.42,64.43
|only if haveq(56308) and not completedq(58009)
step
label "Collect_Aqir_Bits"
Kill Aqir enemies around this area
collect 16 Aqir Bits##174356 |q 58606/1 |goto 32.43,64.74
|only if haveq(56308) and not completedq(58009)
step
label "Heal_Wastewander_Laborers"
clicknpc Wastewander Laborer##159813+
|tip They look like kneeling humans on the ground around this area.
Heal #8# Wastewander Laborers |q 57969/1 |goto 32.43,64.74
|only if haveq(56308) and not completedq(58009)
step
talk H'partho Ardoros##161738
turnin A Bit of Investigation##58606 |goto 27.99,63.39
|only if haveq(56308) and not completedq(58009)
step
talk Mender Dyrin##159820
turnin Tend the Wounded##57969 |goto 27.94,63.45
turnin Ruinator Xok'nixx##57970 |goto 27.94,63.45
accept Obelisk of the Sun##57990 |goto 27.94,63.45
|only if haveq(56308) and not completedq(58009)
step
talk Zahra Sandstalker##159920
|tip A the top of the mountain.
turnin Obelisk of the Sun##57990 |goto 42.44,55.94
accept All Gased Up##58008 |goto 42.44,55.94
accept Aqir Extermination##56576 |goto 42.44,55.94
|only if haveq(56308) and not completedq(58009)
stickystart "Kill_10_Aqir_Impalers"
step
click Fuel Canister##338853+
|tip They look like small containers with handles on top around this area.
collect 6 Fuel Canister##173366 |q 58008/1 |goto 44.80,59.48
|only if haveq(56308) and not completedq(58009)
step
label "Kill_10_Aqir_Impalers"
kill 10 Aqir Impaler##154367 |q 56576/1 |goto 44.80,59.48
|only if haveq(56308) and not completedq(58009)
step
talk Zahra Sandstalker##159920
turnin All Gased Up##58008 |goto 42.44,55.94
turnin Aqir Extermination##56576 |goto 42.44,55.94
accept To the Moon##58009 |goto 42.44,55.94
|only if haveq(56308) and not completedq(58009)
step
click Rusty Bomber
Refuel the Rusty Bomber |q 58009/1 |goto 44.64,59.92
|only if haveq(56308) and not completedq(58009)
step
Watch the dialogue
Return to Obelisk of the Moon |q 58009/2
|only if haveq(56308) and not completedq(58009)
step
Bomb #50# Aqir |q 58009/3 |goto 38.50,24.11
|tip Use the "Homing Missile" ability on your action bar.
|only if haveq(56308) and not completedq(58009)
step
Watch the dialogue
Land on the Ground |outvehicle |q 58009
|only if haveq(56308) and not completedq(58009)
step
talk Arik Scorpidsting##159544
turnin To the Moon##58009 |goto 37.75,23.13
|only if haveq(56308) and not completedq(58009)
step
Drive Back the Aqir |q 56308/1 |goto 37.29,47.19
|only if haveq(56308) or completedq(56308)
step
kill Hivemaster Nazzex##162181 |q 56308/2 |goto 31.61,30.79
|only if haveq(56308) or completedq(56308)
step
talk Arik Scorpidsting##159544
turnin Assault: Aqir Unearthed##56308 |goto 40.13,21.32
|only if haveq(56308) or completedq(56308)
step
label "Wait_for_Reset"
You have completed all available Uldum assaults
|tip This guide will reset when you can complete another.
'|complete ZGV.InPhase('UldumInvasionRight') and not completedq(55350) |next "Accept_Assault_Quest" |or
'|complete ZGV.InPhase('UldumInvasionCenter') and not completedq(57157) |next "Accept_Assault_Quest" |or
'|complete ZGV.InPhase('UldumInvasionLeft') and not completedq(56308) |next "Accept_Assault_Quest" |or
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Battle for Azeroth\\Vale of Eternal Blossoms\\Vale of Eternal Blossoms Assaults",{
author="support@zygorguides.com",
description="This guide will assist you in completing the three assault events in Vale of Eternal Blossoms.",
condition_suggested=function() return level == 50 and (haveq(56540) or completedq(56540)) end,
keywords={"Assault","Warring","Clans","The","Black","Empire","Endless","Swarm","8.3","N'zoth","Nzoth","Corruption"},
},[[
step
Accept or Complete the "Proof of Tenacity" Quest |complete haveq(56540) or completedq(56540)
|tip This unlocks Vale of Eternal Blossoms assault quests.
|tip Use the "Magni's Plan" guide to accomplish this.
step
label "Accept_Assault_Quest"
talk Zidormi##163463
Ask her _"Can you return me to the present time?"_
Return to the Present |complete not ZGV.InPhase('OldVale') |goto Vale of Eternal Blossoms/0 80.48,31.96
step
Accept an Assault Quest in Vale of Eternal Blossoms |complete haveq(57008,56064,57728) |goto Vale of Eternal Blossoms New/0 55.06,41.50
|tip You will accept a quest automatically.
'|complete ZGV.InPhase('ValeInvasionLeftCenter') and not completedq(57008) |next "Accept_Assault_Warring_Clans" |or
'|complete ZGV.InPhase('ValeInvasionRight') and not completedq(56064) |next "Accept_Assault_The_Black_Empire" |or
'|complete ZGV.InPhase('ValeInvasionLeft') and not completedq(57728) |next "Accept_Assault_The_Endless_Swarm" |or
step
label "Accept_Assault_Warring_Clans"
accept Assault: Warring Clans##57008 |goto 44.74,73.91
|tip You will accept this quest automatically.
step
Kill enemies around this area
|tip Kill enemies inside the purple assault zone.
Push Back the Mogu Forces |q 57008/1 |goto 25.33,39.35
|only if haveq(57008)
step
kill Torsheg##157156 |q 57008/2 |goto 44.06,13.43
|only if haveq(57008)
step
Enter the building |goto 40.25,75.25 < 15 |walk
talk Stormspeaker Qian##154444
|tip Inside the building.
turnin Assault: Warring Clans##57008 |goto 44.74,73.91 |next "Wait_for_Reset"
|only if haveq(57008) or completedq(57008)
step
label "Accept_Assault_The_Black_Empire"
accept Assault: The Black Empire##56064 |goto 83.80,27.16
|tip You will accept this quest automatically.
step
Kill enemies around this area
Click objects around this area
|tip Things within the purple zone on the map count.
Cleanse N'Zoth's Corruption |q 56064/1 |goto 62.07,42.91
|only if haveq(56064)
step
Enter the building |goto Pools of Power/0 12.52,73.08 < 30 |walk
Run down the stairs |goto 17.44,47.80 < 30 |only if walking
kill Vil'raxx##153326 |q 56064/2 |goto 77.09,45.54
|tip Inside the building.
|only if haveq(56064)
step
click Void Portal |goto 81.32,45.29
|tip This portal is only available when Vil'raxx is dead.
Leave the Pools of Power |goto Vale of Eternal Blossoms New/0 80.69,31.12 |c |noway
|only if haveq(56064)
step
Enter the building |goto Vale of Eternal Blossoms New/0 81.91,29.47 < 15 |walk
talk Lorewalker Cho##156003
|tip Inside the building.
turnin Assault: The Black Empire##56064 |goto 83.80,27.16 |next "Wait_for_Reset"
|only if haveq(56064) or completedq(56064)
step
label "Accept_Assault_The_Endless_Swarm"
accept Assault: The Endless Swarm##57728 |goto 18.85,50.31
|tip You will accept this quest automatically.
step
collect 1 Ooze-covered Amber##169888 |goto 18.85,50.31 |q 56574 |future
|tip Kill a rare spawn in Vale of Eternal Blossoms.
|tip The mantid rares near the west wall are usually up.
|tip Use the POI Rares feature to accomplish this.
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
use the Ooze-covered Amber##169888
accept Reflections in Amber##56574
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
talk Taoshi##155487
|tip On top of the wall.
turnin Reflections in Amber##56574 |goto Vale of Eternal Blossoms/0 13.91,77.22
accept Once More Into Kor'vess##56575 |goto 13.91,77.22
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
_Next to you:_
talk Taoshi##155562
accept Crippling the Hive##56577 |goto Dread Wastes/0 47.42,16.80
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
stickystart "Slay_Kor'thik_Mantid"
step
Investigate the Amber Taps |q 56575/1 |goto 44.42,18.45
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
Enter the building |goto 44.79,15.86 < 10 |walk
Investigate the Mark of the Empress |q 56575/2 |goto 44.51,16.78
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
Enter the building |goto 43.05,13.98 < 10 |walk
Investigate the Heartroot of Kypari Kor |q 56575/3 |goto 43.12,14.99
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
label "Slay_Kor'thik_Mantid"
Kill Kor'thik enemies around this area
Slay #12# Kor'thik Mantid |q 56577/1 |goto 46.06,16.02
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
_Next to you:_
talk Taoshi##155562
turnin Once More Into Kor'vess##56575
turnin Crippling the Hive##56577
accept Rotten at the Roots##56578
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
Enter the building |goto 47.08,16.78 < 10 |walk
talk Taoshi##155582
|tip Inside the building.
accept Amber Secrets##56580 |goto 45.39,16.48
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
stickystart "Collect_Corrupted_Amber_Chunks"
step
kill Shal'xik the Nameless##155551 |q 56578/1 |goto 45.52,14.62
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
kill Ri'lij the Dreamer##155550 |q 56578/3 |goto 42.59,14.51
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
kill Caller Vzj'ax##155548 |q 56578/4 |goto 42.54,18.90
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
kill Binder Zz'jalix##155547 |q 56578/2 |goto 45.48,18.98
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
label "Collect_Corrupted_Amber_Chunks"
Kill Zara'thik enemies around this area
collect 8 Corrupted Amber Chunk##169866 |q 56580/1 |goto 44.07,16.74
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
talk Taoshi##155582
|tip Inside the building.
turnin Rotten at the Roots##56578 |goto 45.39,16.49
turnin Amber Secrets##56580 |goto 45.39,16.49
accept Old Faces, New Problems##56616 |goto 45.39,16.49
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
kill Watcher Vl'thax##155471 |q 56616/1 |goto 47.83,16.92
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
Enter the building |goto 47.04,16.81 < 20 |walk
talk Taoshi##155582
|tip Inside the building.
turnin Old Faces, New Problems##56616 |goto 45.39,16.49
accept A Unified Swarm##56617 |goto 45.39,16.49
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
talk Taoshi##155707
Tell her _"Let's go."_
Speak with Taoshi Outside of Klaxxi'vess |q 56617/1 |goto 56.45,29.53
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
Follow the path down |goto 54.77,29.63 < 30 |only if walking
click Corrupted Amber+
|tip They look like clumps of large orange crystals on the ground around this area.
|tip Stay out of the blue circles and use the "Sap" ability on-screen to avoid enemies.
Destroy #5# Corrupted Amber |q 56617/2 |goto 54.47,33.68
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
Escape Klaxxi'vess |q 56617/3 |goto 54.15,37.47
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
talk Taoshi##155707
turnin A Unified Swarm##56617 |goto 53.22,39.58
accept Heart of the Swarm##56645 |goto 53.22,39.58
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
clicknpc Shado-Pan Kite##155494
Ride the Shado-Pan Kite |q 56645/1 |goto 53.16,39.29
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
Watch the dialogue
Scout the Heart of Fear |q 56645/2 |goto 41.11,34.03
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
Watch the dialogue
|tip Use the "Firework Shot" ability to clear enemies.
Escape the Dread Wastes |q 56645/3
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
talk Taoshi##155487
turnin Heart of the Swarm##56645 |goto Vale of Eternal Blossoms/0 12.20,95.38
accept The Mantid Threat##56647 |goto 12.20,95.38
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
Wait to Accept the Assault Again |complete haveq(57728)
|tip It will take a moment for the assault quest to appear in your log.
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
Kill enemies around this area
Click objects around this area
|tip Things within the purple zone on the map count.
Cull the Mantid Swarm |q 57728/1 |goto Vale of Eternal Blossoms New/0 18.85,50.31
|only if ZGV.InPhase("ValeInvasionLeft")
step
kill Kri'vin##161672 |q 57728/2 |goto 13.31,56.55
|only if ZGV.InPhase("ValeInvasionLeft")
step
talk Taoshi##161405
turnin Assault: The Endless Swarm##57728 |goto 37.26,79.27
|only if ZGV.InPhase("ValeInvasionLeft") or completedq(57728)
|next "Wait_for_Reset" |only if completedq(56647)
step
Enter the building |goto 40.18,75.26 < 10 |walk
talk Stormspeaker Qian##154444
|tip Inside the building.
turnin The Mantid Threat##56647 |goto 44.73,73.90
|only if ZGV.InPhase("ValeInvasionLeft") and not completedq(56647)
step
label "Wait_for_Reset"
You have completed all available Vale of Eternal Blossoms assaults
|tip This guide will reset when you can complete another.
'|complete ZGV.InPhase('ValeInvasionLeftCenter') and not completedq(57008) |next "Accept_Assault_Quest" |or
'|complete ZGV.InPhase('ValeInvasionRight') and not completedq(56064) |next "Accept_Assault_Quest" |or
'|complete ZGV.InPhase('ValeInvasionLeft') and not completedq(57728) |next "Accept_Assault_Quest" |or
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Battle for Azeroth\\Uldum\\8.3 Uldum Dailies",{
author="support@zygorguides.com",
description="This guide will assist you in completing the daily quests in Uldum.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
condition_suggested=function() return level == 50 and completedq(56376) end,
condition_valid=function() return level >= 50 and (haveq(56376) or completedq(56376)) end,
condition_valid_msg="You have not unlocked Uldum daily quests!\n"..
"Accept or complete the quest \"Surfacing Threats\" in the \"Magni's Plan\" leveling guide.",
startlevel=50.0,
},[[
step
label "Accept_an_Assault_Quest"
Accept an Assault Quest |confirm |goto Uldum New/0 54.98,34.47 |or
'|complete ZGV.InPhase("UldumInvasionRight") |next "Amathet_Assault_Dailies" |or
'|complete ZGV.InPhase("UldumInvasionCenter") |next "N'Zoth_Assault_Dailies" |or
'|complete ZGV.InPhase("UldumInvasionLeft") |next "Aqir_Assault_Dailies" |or
step
label "Amathet_Assault_Dailies"
Enter the Assault |complete ZGV.InPhase("UldumInvasionRight")
step
talk High Commander Kamses##155096
|tip Inside the building.
accept Ancient Armaments##58281 |goto Uldum New/0 54.83,32.97 |only if questactive(58281)
accept Champions of the Amathet##58290 |goto Uldum New/0 54.83,32.97 |only if questactive(58290)
accept Down From the Sky##58282 |goto Uldum New/0 54.83,32.97 |only if questactive(58282)
accept A Smashing Plan##58287 |goto Uldum New/0 54.83,32.97 |only if questactive(58287)
accept The Sun King's Chosen##58288 |goto Uldum New/0 54.83,32.97 |only if questactive(58288)
|only if questactive(58281) or questactive(58290) or questactive(58282) or questactive(58287) or questactive(58288)
step
talk King Phaoris##155095
|tip Inside the building.
accept Uncommon Core##58321 |goto Uldum New/0 54.91,32.74 |only if questactive(58321)
accept Far From Home##58286 |goto Uldum New/0 54.91,32.74 |only if questactive(58286)
|only if questactive(58321) or questactive(58286)
step
talk High Priest Amet##155099
|tip Inside the building.
accept Blind Leading the Blind##58283 |goto Uldum New/0 54.69,32.86
|only if questactive(58283)
step
talk High Explorer Dellorah##155102
|tip Inside the building.
accept Unearthed Artifacts##58285 |goto Uldum New/0 54.96,32.96 |only if questactive(58285)
accept Writs of the Sun King##58284 |goto Uldum New/0 54.96,32.96 |only if questactive(58284)
accept Guarded Secrets##58289 |goto Uldum New/0 54.96,32.96 |only if questactive(58289)
|only if questactive(58285) or questactive(58284) or questactive(58289)
step
talk Arianna Swiftsand##160957
accept Encroaching Poachers##58291 |goto Uldum New/0 54.68,34.01
|only if questactive(58291)
stickystart "Collect_Amathet_Armor"
stickystart "Kill_Amathet_Bowman"
stickystart "Destroy_Amathet_Idols"
stickystart "Destroy_Suntouched_Obelisks"
stickystart "Collect_Titanic_Core"
stickystart "Collect_Titan_Artifacts"
stickystart "Collect_Writ_of_the_Sun_King"
stickystart "Free_Enslaved_Tol'vir"
stickystart "Slay_Elite_Amathet_Enemies"
stickystart "Loot_Amathet_Caches"
stickystart "Defeat_Rare_Amathet_Enemies"
step
kill 8 Amathet Sun Priest##151612+ |q 58283/1 |goto 73.68,52.14
You can find more around [66.79,41.88]
|only if haveq(58283)
step
label "Collect_Amathet_Armor"
Kill Amathet enemies around this area
collect 10 Amathet Armor##173985 |q 58281/1 |goto 73.20,46.06
|only if haveq(58281)
step
label "Kill_Amathet_Bowman"
kill 8 Amathet Bowman##151800 |q 58282/1 |goto 74.33,44.82
|tip All over the outside of the Tombs of the Precursers.
|only if haveq(58282)
step
label "Destroy_Amathet_Idols"
click Amathet Idol+
|tip They look like large bird statues on the ground around this area.
|tip You can find them towards the edges of the tombs.
Destroy #8# Amathet Idols |q 58287/1 |goto 74.06,52.17
|only if haveq(58287)
step
label "Destroy_Suntouched_Obelisks"
click Suntouched Obelisk+
|tip They look like glowing golden pillars on the ground around this area.
Destroy #4# Suntouched Obelisks |q 58287/2 |goto 73.82,52.18
|only if haveq(58287)
step
label "Collect_Titanic_Core"
kill Ivory Watcher##151813
collect Titanic Core##174009 |q 58321/1 |goto 74.06,52.17
|only if haveq(58321)
step
label "Collect_Titan_Artifacts"
click Titan Artifact##325620+
|tip They look like gears, boxes, and chests on the ground around this area.
collect 6 Titan Artifact##168043 |q 58285/1 |goto 83.87,49.87
You can find more around [64.05,28.77]
|only if haveq(58285)
step
label "Collect_Writ_of_the_Sun_King"
kill Suntouched Acolyte##151960+
collect 6 Writ of the Sun King##173986 |q 58284/1 |goto 74.06,52.17
|only if haveq(58284)
step
label "Free_Enslaved_Tol'vir"
clicknpc Enslaved Tol'vir##151911+
|tip They look like chained Ramkahen working near rocks around this area.
Free #6# Enslaved Tol'vir |q 58286/1 |goto 78.56,48.94
|only if haveq(58286)
step
kill Scavenging Dunerunner##151945+ |only if skill("Kul Tiran Skinning") >= 1 or skill("Zandalari Skinning") >= 1
|tip Skin the corpses. |only if skill("Kul Tiran Skinning") >= 1 or skill("Zandalari Skinning") >= 1
kill Amathet Hunter##151943+
collect 6 Rugged Hyena Pelt##174008 |q 58291/1 |goto 74.36,59.99
|only if haveq(58291)
step
label "Slay_Elite_Amathet_Enemies"
Slay #6# Elite Amathet Enemies |q 58290/1 |goto 74.06,52.17
|only if haveq(58290)
step
label "Loot_Amathet_Caches"
Loot #3# Amathet Caches |q 58289/1 |goto 59.00,46.32
|tip They can be found all over the assault zone.
|tip They appear on your minimap as silver chests.
|only if haveq(58289)
step
label "Defeat_Rare_Amathet_Enemies"
Defeat #4# Rare Amathet Enemies |q 58288/1 |goto 74.06,52.17
|tip They can be found all over the assault zone.
|tip Use our POI Rares feature to accomplish this.
|only if haveq(58288)
step
Complete your Daily Quests |complete readyq(58281,58290,58282,58287,58288,58321,58286,58283,58285,58284,58289,58291) |next "Turnin_Daily_Quests"
step
label "N'Zoth_Assault_Dailies"
Enter the Assault |complete ZGV.InPhase("UldumInvasionCenter")
step
talk High Commander Kamses##155096
|tip Inside the building.
accept Close to Tears##57773 |goto Uldum New/0 54.83,32.97 |only if questactive(57773)
accept Nine Lives##57774 |goto Uldum New/0 54.83,32.97 |only if questactive(57774)
accept Order Among Chaos##58232 |goto Uldum New/0 54.83,32.97 |only if questactive(58232)
accept A Rallying Cry##58229 |goto Uldum New/0 54.83,32.97 |only if questactive(58229)
accept Symbolic Destruction##58236 |goto Uldum New/0 54.83,32.97 |only if questactive(58236)
|only if questactive(57773) or questactive(57774) or questactive(58232) or questactive(58229) or questactive(58236)
step
talk King Phaoris##155095
|tip Inside the building.
accept Anchors of the Black Empire##58235 |goto Uldum New/0 54.91,32.74 |only if questactive(58235)
accept Lost and Tormented##58238 |goto Uldum New/0 54.91,32.74 |only if questactive(58238)
accept Ramkahen Rescue##57737 |goto Uldum New/0 54.91,32.74 |only if questactive(57737)
|only if questactive(58235) or questactive(58238) or questactive(57737)
step
talk High Priest Amet##155099
|tip Inside the building.
accept Blind the Eyes##58230 |goto Uldum New/0 54.69,32.86 |only if questactive(58230)
accept Cleansing Uldum##58237 |goto Uldum New/0 54.69,32.86 |only if questactive(58237)
accept Dark Deceivers##58277 |goto 54.69,32.86 |only if questactive(58277)
accept Questionable Sourcing##58234 |goto Uldum New/0 54.69,32.86 |only if questactive(58234)
accept Twisted Corruptors##58233 |goto Uldum New/0 54.69,32.86 |only if questactive(58233)
accept Wisdom From Madness##58231 |goto Uldum New/0 54.69,32.86 |only if questactive(58231)
|only if questactive(58230) or questactive(58237) or questactive(58277) or questactive(58234) or questactive(58233) or questactive(58231)
step
talk Arianna Swiftsand##160957
accept Lessons in Brigandry##58239 |goto Uldum New/0 54.68,34.01
|only if questactive(58239)
stickystart "Destroy_Corruption_Tumors"
stickystart "Collect_Maddened_Writings"
stickystart "Destroy_Black_Empire_Obelisks"
stickystart "Kill_Void_Keepers"
stickystart "Destroy_Banners_of_the_Black_Empire"
stickystart "Slay_Fleshbeasts"
stickystart "Kill_Foul_Observers"
stickystart "Collect_Coalesced_Corruption"
stickystart "Loot_Black_Empire_Caches"
stickystart "Slay_Rare_Minions_of_N'Zoth"
step
clicknpc Mar'at Villager##157217+
|tip They look like enspelled Ramkahen bound by K'thir Doomsayers around this area.
Rescue #6# Ramkahen Citizens |q 57737/1 |goto 49.47,39.29
|only if haveq(57737)
step
label "Collect_Maddened_Writings"
Kill enemies around this area
|tip All over the dam.
collect 10 Maddened Writings##173954 |q 58231/1 |goto 54.13,42.33
You can find more around [50.77,78.90]
|only if haveq(58231)
step
label "Destroy_Black_Empire_Obelisks"
click Black Empire Obelisks+
|tip They look like large floating stones around this area.
Destroy #8# Black Empire Obelisks |q 58235/1 |goto 55.03,47.32
You can find more around [49.44,39.64]
And [61.79,72.95]
|only if haveq(58235)
step
label "Kill_Void_Keepers"
click Void Tear##156372+
|tip They look like large swirling purple void zones all over the assault area.
kill 3 Void Keeper##158963 |q 57773/1 |goto 56.90,49.35
|tip They will spawn last from the Void Tear.
|only if haveq(57773)
step
label "Destroy_Banners_of_the_Black_Empire"
click Banner of the Black Empire+
|tip They look like large ornate banners on the ground around this area.
Destroy #10# Banners of the Black Empire |q 58236/1 |goto 55.08,50.69
|only if haveq(58236)
step
label "Kill_Foul_Observers"
kill 6 Foul Observer##156890 |q 58230/1 |goto 55.08,50.69
|only if haveq(58230)
step
label "Slay_Fleshbeasts"
Kill Fleshbeast enemies around this area
|tip You can find them all along the river.
Slay #10# Fleshbeasts |q 58233/1 |goto 55.08,50.69
|only if haveq(58233)
step
label "Destroy_Corruption_Tumors"
click Corruption Tumor+
|tip They look like undulating purple and red scabs on the ground all over the river area.
Destroy #6# Corruption Tumors |q 58237/1 |goto 57.76,51.35
|only if haveq(58237)
step
label "Collect_Coalesced_Corruption"
kill Oozing Putrefaction##158703+
|tip You can find them all along the river.
collect 10 Coalesced Corruption##173956 |q 58234/1 |goto 58.42,47.30
|only if haveq(58234)
stickystart "Slay_Faceless_Minions"
stickystart "Free_Ramkahen_Citizens"
step
Kill K'thir enemies around this area
Kill #8# K'thir Minions |q 58277/1 |goto 60.88,66.18
|only if haveq(58277)
step
label "Slay_Faceless_Minions"
Kill Faceless enemies around this area
Slay #6# Faceless Minions |q 58232/1 |goto 61.70,69.11
|only if haveq(58232)
step
label "Free_Ramkahen_Citizens"
click Torment Cell+
|tip They look like large metal cages with Ramkahen Citizens inside on the ground around this area.
Free #6# Ramkahen Citizens |q 58238/1 |goto 61.52,68.77
|only if haveq(58238)
step
clicknpc Neferset Denizen##156227+
|tip They look like fallen Neferset humanoids on the ground around this area.
Kill Neferset enemies around this area
Slay #8# Neferset Denizens |q 57774/1 |goto 50.04,82.24
|only if haveq(57774)
step
label "Loot_Black_Empire_Caches"
Loot #4# Black Empire Caches |q 58239/1 |goto 57.44,50.36
|tip They can be found all over the assault zone.
|tip They appear on your minimap as silver chests.
|only if haveq(58239)
step
label "Slay_Rare_Minions_of_N'Zoth"
Slay #4# Rare Minions of N'Zoth |q 58229/1 |goto 57.44,50.36
|tip Use the POI Rares feature to accomplish this.
|only if haveq(58229)
step
Complete your Daily Quests |complete readyq(57773,57774,58232,58229,58236,58235,58238,57737,58230,58237,58277,58234,58233,58231,58239) |next "Turnin_Daily_Quests"
step
label "Aqir_Assault_Dailies"
Enter the Assault |complete ZGV.InPhase("UldumInvasionLeft")
step
talk H'partho Ardoros##161738
accept More Bits, More Bits!##58010 |goto Uldum New/0 55.61,35.33
|only if questactive(58010)
step
talk Zahra Sandstalker##159920
accept Getting Ahead##58778 |goto Uldum New/0 40.11,21.27 |only if questactive(58778)
accept Put Your Foot Down##58777 |goto Uldum New/0 40.11,21.27 |only if questactive(58777)
accept Taking the Skies##58779 |goto Uldum New/0 40.11,21.27 |only if questactive(58779)
|only if questactive(58778) or questactive(58777) or questactive(58779)
step
talk Captain Navid Sandstone##154443
accept Hatching Problems##58776 |goto Uldum New/0 40.08,21.31 |only if questactive(58776)
accept Heralds of the Hive##58780 |goto Uldum New/0 40.08,21.31 |only if questactive(58780)
|only if questactive(58776) or questactive(58780)
step
talk Arik Scorpidsting##159544
accept Terrors from the Deep##58781 |goto Uldum New/0 40.13,21.32 |only if questactive(58781)
accept Things Left Behind##58782 |goto Uldum New/0 40.13,21.32 |only if questactive(58782)
|only if questactive(58781) or questactive(58782)
stickystart "Collect_Wastewander_Supplies"
stickystart "Defeat_Rare_Aqir_Enemies"
step
kill 5 Aqir Dominator##162164 |q 58780/1 |goto 34.07,18.83
|only if haveq(58780)
stickystart "Kill_Aqir_Impalers"
stickystart "Destroy_Aqir_Egg_Clusters"
stickystart "Collect_Aqir_Bits"
stickystart "Collect_Goliath_Trophy"
stickystart "Squish_Aqir_Larvae"
step
Enter the building |goto Uldum New/0 39.88,44.84 < 10 |walk
talk Outrider Lashan##159560
|tip Inside the building.
accept Wastewander Coins##56402 |goto 39.99,45.26
|only if questactive(56402)
step
clicknpc Wastewander Warrior##159561+
|tip They look like dead humans on the ground around this area.
collect 8 Wastewander Coin##169432 |q 56402/1 |goto 40.56,42.81
|only if haveq(56402)
step
Enter the building |goto 39.88,44.84 < 10 |walk
talk Outrider Lashan##159560
|tip Inside the building.
turnin Wastewander Coins##56402 |goto 39.99,45.26
|only if readyq(56402) or completedq(56402)
step
label "Kill_Aqir_Impalers"
kill 15 Aqir Impaler##163091 |q 58779/1 |goto 40.48,40.10
|only if haveq(58779)
step
label "Destroy_Aqir_Egg_Clusters"
click Aqir Egg Cluster+
|tip They look like clusters of white and yellow eggs on the ground around this area.
Destroy #8# Aqir Egg Clusters |q 58776/1 |goto 39.80,41.87
You can find more around [21.77,62.42]
|only if haveq(58776)
step
label "Collect_Aqir_Bits"
Kill Aqir enemies around this area
collect 16 Aqir Bits##174356 |q 58010/1 |goto 40.27,40.75
|only if haveq(58010)
step
label "Collect_Goliath_Trophy"
kill Aqir Goliath##154353+
|tip They wander all over the assault zone.
collect 1 Goliath Trophy##174776 |q 58778/1 |goto 39.75,41.91
|only if haveq(58778)
step
label "Squish_Aqir_Larvae"
click Aqir Larvae+
|tip They look like small red slugs crawling on the ground around this area.
Squish #12# Aqir Larvae |q 58777/1 |goto 39.75,41.91
|only if haveq(58777)
step
talk Tracker Samara##159682
accept Corpse Cleanup##56550 |goto Uldum New/0 24.50,55.28 |only if questactive(56550)
accept The Wastewandering Dead##57968 |goto Uldum New/0 24.50,55.28 |only if questactive(57968)
|only if questactive(56550) or questactive(57968)
step
clicknpc Wastewander Tracker##159804+
|tip They look like dead humanoids covered in eggs on the ground around this area.
Burn #10# Egg-Bearing Corpses |q 56550/1 |goto 20.49,61.27
|only if haveq(56550)
step
kill 6 Wastewander Host##154369 |q 57968/1 |goto 22.10,60.87
|only if haveq(57968)
step
talk Tracker Samara##159682
turnin Corpse Cleanup##56550 |goto 24.50,55.28 |only if readyq(56550) or completedq(56550)
turnin The Wastewandering Dead##57968 |goto 24.50,55.28 |only if readyq(57968) or completedq(57968)
|only if readyq(56550,57968) or completedq(56550,57968)
step
talk Mender Dyrin##159820
accept Wounded Wastewanderers##56889 |goto Uldum New/0 27.95,63.45
|only if questactive(56889)
step
clicknpc Wastewander Laborer##159821+
|tip They look like humans kneeling on the ground around this area.
Heal #6# Wastewander Laborers |q 56889/1 |goto 32.50,64.70
|only if haveq(56889)
step
talk Mender Dyrin##159820
turnin Wounded Wastewanderers##56889 |goto 27.95,63.45
|only if readyq(56889) or completedq(56889)
step
label "Collect_Wastewander_Supplies"
click Infested Cache+
|tip They look like chests covered in bug eggs all over the assault zone.
|tip They appear on your minimap as silver chests.
collect 4 Wastewander Supplies##174774 |q 58782/1 |goto 37.29,45.19
|only if haveq(58782)
step
label "Defeat_Rare_Aqir_Enemies"
Defeat #4# Rare Aqir Enemies |q 58781/1 |goto 37.29,45.19
|tip They can be found all over the assault zone.
|tip Use our POI Rares feature to accomplish this.
|only if haveq(58781)
step
Complete your Daily Quests |complete readyq(58778,58777,58779,57968,58776,58780,58781,58782,58010) |next "Turnin_Daily_Quests"
step
label "Turnin_Daily_Quests"
Turnin In... |complete readyq(58281,58290,58282,58287,58288,58286,58291,57773,57774,58232,58229,58236,58239,58285,58284,58289,58235,58238,57737,58321,58230,58283,58237,58277,58234,58233,58231,58776,58780,58781,58782,56550,57968,58778,58777,58779,56889,56402,58010)
step
talk High Commander Kamses##155096
|tip Inside the building.
turnin Ancient Armaments##58281 |goto 54.83,32.97 |only if readyq(58281) or completedq(58281)
turnin Champions of the Amathet##58290 |goto 54.83,32.97 |only if readyq(58290) or completedq(58290)
turnin Down From the Sky##58282 |goto 54.83,32.97 |only if readyq(58282) or completedq(58282)
turnin A Smashing Plan##58287 |goto 54.83,32.97 |only if readyq(58287) or completedq(58287)
turnin The Sun King's Chosen##58288 |goto 54.83,32.97 |only if readyq(58288) or completedq(58288)
turnin Far From Home##58286 |goto 54.83,32.97 |only if readyq(58286) or completedq(58286)
|only if readyq(58281,58290,58282,58287,58288,58286) or completedq(58281,58290,58282,58287,58288,58286)
step
talk High Commander Kamses##155096
|tip Inside the building.
turnin Close to Tears##57773 |goto 54.83,32.97 |only if readyq(57773) or completedq(57773)
turnin Nine Lives##57774 |goto 54.83,32.97 |only if readyq(57774) or completedq(57774)
turnin Order Among Chaos##58232 |goto 54.83,32.97 |only if readyq(58232) or completedq(58232)
turnin A Rallying Cry##58229 |goto 54.83,32.97 |only if readyq(58229) or completedq(58229)
turnin Symbolic Destruction##58236 |goto 54.83,32.97 |only if readyq(58236) or completedq(58236)
turnin Lessons in Brigandry##58239 |goto 54.83,32.97 |only if readyq(58239) or completedq(58239)
|only if readyq(57773,57774,58232,58229,58236,58239) or completedq(57773,57774,58232,58229,58236,58239)
step
talk High Explorer Dellorah##155102
|tip Inside the building.
turnin Unearthed Artifacts##58285 |goto 54.96,32.96 |only if readyq(58285) or completedq(58285)
turnin Writs of the Sun King##58284 |goto 54.96,32.96 |only if readyq(58284) or completedq(58284)
turnin Guarded Secrets##58289 |goto 54.96,32.96 |only if readyq(58289) or completedq(58289)
|only if readyq(58285,58284,58289) or completedq(58285,58284,58289)
step
talk King Phaoris##155095
|tip Inside the building.
turnin Anchors of the Black Empire##58235 |goto 54.91,32.74 |only if readyq(58235) or completedq(58235)
turnin Lost and Tormented##58238 |goto 54.91,32.74 |only if readyq(58238) or completedq(58238)
turnin Ramkahen Rescue##57737 |goto 54.91,32.74 |only if readyq(57737) or completedq(57737)
turnin Uncommon Core##58321 |goto 54.91,32.74 |only if readyq(58321) or completedq(58321)
|only if readyq(58235,58238,57737,58321) or completedq(58235,58238,57737,58321)
step
talk High Priest Amet##155099
|tip Inside the building.
turnin Blind the Eyes##58230 |goto 54.69,32.86 |only if readyq(58230) or completedq(58230)
turnin Blind Leading the Blind##58283 |goto 54.69,32.86 |only if readyq(58283) or completedq(58283)
turnin Cleansing Uldum##58237 |goto 54.69,32.86 |only if readyq(58237) or completedq(58237)
turnin Dark Deceivers##58277 |goto 54.69,32.86 |only if readyq(58277) or completedq(58277)
turnin Questionable Sourcing##58234 |goto 54.69,32.86 |only if readyq(58234) or completedq(58234)
turnin Twisted Corruptors##58233 |goto 54.69,32.86 |only if readyq(58233) or completedq(58233)
turnin Wisdom From Madness##58231 |goto 54.69,32.86 |only if readyq(58231) or completedq(58231)
|only if readyq(58230,58283,58237,58277,58234,58233,58231) or completedq(58230,58283,58237,58277,58234,58233,58231)
step
talk Arianna Swiftsand##160957
turnin Encroaching Poachers##58291 |goto 54.68,34.01 |only if readyq(58291) or completedq(58291)
|only if readyq(58291) or completedq(58291)
step
talk Captain Navid Sandstone##154443
turnin Hatching Problems##58776 |goto 40.08,21.31 |only if readyq(58776) or completedq(58776)
turnin Heralds of the Hive##58780 |goto 40.08,21.31 |only if readyq(58780) or completedq(58780)
|only if readyq(58776,58780) or completedq(58776,58780)
step
talk Arik Scorpidsting##159544
turnin Terrors from the Deep##58781 |goto 40.13,21.32 |only if readyq(58781) or completedq(58781)
turnin Things Left Behind##58782 |goto 40.13,21.32 |only if readyq(58782) or completedq(58782)
|only if readyq(58781,58782) or completedq(58781,58782)
step
talk Zahra Sandstalker##159920
turnin Getting Ahead##58778 |goto 40.11,21.27 |only if readyq(58778) or completedq(58778)
turnin Put Your Foot Down##58777 |goto 40.11,21.27 |only if readyq(58777) or completedq(58777)
turnin Taking the Skies##58779 |goto 40.11,21.27 |only if readyq(58779) or completedq(58779)
|only if readyq(58778,58777,58779) or completedq(58778,58777,58779)
step
talk H'partho Ardoros##161738
turnin More Bits, More Bits!##58010 |goto Uldum New/0 55.61,35.33
|only if readyq(58010) or completedq(58010)
step
You have completed all available daily quests for the day
|tip This guide will reset when more become available.
'|complete not completedq(58281,58290,58282,58287,58288,58286,58291,57773,57774,58232,58229,58236,58239,58285,58284,58289,58235,58238,57737,58321,58230,58283,58237,58277,58234,58233,58231,58776,58780,58781,58782,56550,57968,58778,58777,58779,56889,56402,58010) |next "Accept_an_Assault_Quest"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Battle for Azeroth\\Vale of Eternal Blossoms\\8.3 Vale of Eternal Blossoms Dailies",{
author="support@zygorguides.com",
description="This guide will assist you in completing the daily quests in Vale of Eternal Blossoms.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
condition_suggested=function() return level == 50 and completedq(56540) end,
condition_valid=function() return level >= 50 and (haveq(56540) or completedq(56540)) end,
condition_valid_msg="You have not unlocked Vale of Eternal Blossoms daily quests!\n"..
"Complete the quest \"Proof of Tenacity\" in the \"Magni's Plan\" leveling guide.",
startlevel=50.0,
},[[
step
label "Accept_an_Assault_Quest"
Accept an Assault Quest |confirm |goto Vale of Eternal Blossoms New/0 48.85,46.98 |or
'|complete ZGV.InPhase("ValeInvasionRight") |next "N'Zoth_Assault_Dailies" |or
'|complete ZGV.InPhase("ValeInvasionLeftCenter") |next "Mogu_Assault_Dailies" |or
'|complete ZGV.InPhase("ValeInvasionLeft") |next "Mantid_Assault_Dailies" |or
step
label "N'Zoth_Assault_Dailies"
Enter the Assault |complete ZGV.InPhase("ValeInvasionRight")
step
Enter the building |goto Vale of Eternal Blossoms New/0 40.18,75.26 < 10 |walk
talk Stormspeaker Qian##154444
|tip Inside the building.
accept A Foul Annoyance##58420 |goto 44.73,73.90 |only if questactive(58420)
accept Mark of the Conquerors##58422 |goto 44.73,73.90 |only if questactive(58422)
accept Marshals of Madness##58460 |goto 44.73,73.90 |only if questactive(58460)
accept Pillars of Oblivion##58595 |goto 44.73,73.90 |only if questactive(58595)
accept The Strongest Among Them##58423 |goto 44.73,73.90 |only if questactive(58423)
|only if questactive(58420) or questactive(58422) or questactive(58460) or questactive(58595) or questactive(58423)
step
talk Taran Zhu##161404
accept Corruption Manifest##58465 |goto Vale of Eternal Blossoms New/0 66.34,40.67 |only if questactive(58465)
accept Prisoners of Mind and Body##58467 |goto Vale of Eternal Blossoms New/0 66.34,40.67 |only if questactive(58467)
accept Spawns of Madness##58463 |goto Vale of Eternal Blossoms New/0 66.34,40.67 |only if questactive(58463)
accept Torment From Beyond##58466 |goto Vale of Eternal Blossoms New/0 66.34,40.67 |only if questactive(58466)
|only if questactive(58465) or questactive(58467) or questactive(58463) or questactive(58466)
step
talk Taoshi##161405
accept Deephive Decimation##58464 |goto Vale of Eternal Blossoms New/0 66.97,39.84 |only if questactive(58464)
accept A Growing Darkness##58468 |goto Vale of Eternal Blossoms New/0 66.97,39.84 |only if questactive(58468)
|only if questactive(58464) or questactive(58468)
step
Enter the building |goto Vale of Eternal Blossoms New/0 81.91,29.46 < 15 |walk
talk Lorewalker Cho##156003
|tip Inside the building.
accept Aggressive Notation##58471 |goto 83.79,27.17 |only if questactive(58471)
accept Corrupted Curiosities##58470 |goto 83.79,27.17 |only if questactive(58470)
accept Tomes of Ancient Madness##58461 |goto 83.79,27.17 |only if questactive(58461)
|only if questactive(58471) or questactive(58470) or questactive(58461)
step
talk Chi-Ji##154261
accept Tears in the Vale##58469 |goto Vale of Eternal Blossoms New/0 83.82,48.99 |only if questactive(58469)
accept Windows to the Soul##58462 |goto Vale of Eternal Blossoms New/0 83.82,48.99 |only if questactive(58462)
|only if questactive(58469) or questactive(58462)
stickystart "Kill_Eyes_of_the_Empire"
stickystart "Collect_Tome_of_Ancient_Madness"
stickystart "Kill_Squidtail_Screamers"
stickystart "Destroy_Black_Empire_Obelisks"
stickystart "Rescue_Captive_Pandaren"
stickystart "Slay_Faceless_Minions"
stickystart "Close_Void_Tears"
stickystart "Burn_Banners_of_the_Black_Empire"
stickystart "Collect_Artifacts_of_the_Black_Empire"
stickystart "Slay_Rare_N'Zoth_Minions"
step
Kill Faceless enemies around this area
use the Loremaster's Notebook##174197
|tip Use it on the corpse.
Notate a Faceless |q 58471/1 |goto 77.82,50.01
|only if haveq(58471)
step
kill Tidal Corruptor##153910
use the Loremaster's Notebook##174197
|tip Use it on the corpse.
Notate a K'thir |q 58471/2 |goto 77.82,50.01
|only if haveq(58471)
step
kill Living Infestation##153906
use the Loremaster's Notebook##174197
|tip Use it on the corpse.
Notate a Fleshbeast |q 58471/3 |goto 77.82,50.01
|only if haveq(58471)
step
label "Kill_Eyes_of_the_Empire"
kill 6 Eye of the Empire##153908 |q 58462/1 |goto 83.67,46.51
You can find more around [65.53,40.79]
|only if haveq(58462)
step
label "Collect_Tome_of_Ancient_Madness"
Kill enemies around this area
|tip Non-elite humanoid looking mobs drop Tomes.
collect 8 Tome of Ancient Madness##174196 |q 58461/1 |goto 75.08,50.79
|only if haveq(58461)
step
label "Kill_Squidtail_Screamers"
kill 7 Squidtail Screamer##154451 |q 58420/1 |goto 79.91,63.94
|only if haveq(58420)
step
Enter the mine |goto 69.74,58.65 < 20 |walk
Kill Deephive enemies around this area
Slay #10# Deephive Mantid |q 58464/1 |goto 70.35,66.71
|only if haveq(58464)
step
Enter the mine |goto 69.74,58.65 < 20 |walk
click Corrupted Incubator+
|tip They look like small containers with yellow eggs inside on the ground inside the mine.
Destroy #8# Corrupted Incubators |q 58468/1 |goto 70.35,66.71
|only if haveq(58468)
step
label "Destroy_Black_Empire_Obelisks"
click Black Empire Obelisks+
|tip They look like large stone pillars floating above the ground around this area.
Destroy #6# Black Empire Obelisks |q 58595/1 |goto 68.15,53.78
|only if haveq(58595)
step
label "Slay_Faceless_Minions"
Kill Faceless enemies around this area
Slay #6# Faceless Minions |q 58460/1 |goto 66.43,52.21
|only if haveq(58460)
stickystart "Kill_Putrid_Ichor"
stickystart "Kill_Living_Infestations"
stickystart "Release_Ancient_Pandaren_Spirits"
step
label "Rescue_Captive_Pandaren"
click Torment Cell+
|tip They look like large cages with Pandaren inside floating above the ground around this area.
Rescue #6# Captive Pandaren |q 58467/1 |goto 69.44,49.81
|only if haveq(58467)
step
label "Kill_Putrid_Ichor"
kill 8 Putrid Ichor##153907 |q 58465/1 |goto 68.81,45.81
|tip You can find them all over this area.
|only if haveq(58465)
step
label "Kill_Living_Infestations"
kill 10 Living Infestation##153906 |q 58463/1 |goto 67.26,45.36
|only if haveq(58463)
step
label "Close_Void_Tears"
click Void Tear+
|tip They look like shadowy lines with smoke coming off of them on the ground around the assault zone.
Kill enemies that attack in waves
Close #3# Void Tears |q 58469/1 |goto 67.26,46.47
|only if haveq(58469)
step
label "Burn_Banners_of_the_Black_Empire"
click Banner of the Black Empire+
|tip They look like red and black banners on the ground around this area.
Burn #6# Banners of the Black Empire |q 58422/1 |goto 65.69,41.02
|only if haveq(58422)
step
label "Release_Ancient_Pandaren_Spirits"
clicknpc Ancient Pandaren Spirit##153341+
|tip They look like ghostly Pandaren floating face down above the ground around this area.
Release #8# Ancient Pandaren Spirit |q 58466/1 |goto 49.93,64.48
|only if haveq(58466)
step
label "Collect_Artifacts_of_the_Black_Empire"
click Black Empire Cache+
|tip They look like small red and gold chests all over the Vale of Eternal Blossoms assault area.
|tip They will appear on your minimap as silver chest icons.
collect 4 Artifact of the Black Empire##174744 |q 58470/1 |goto 65.76,44.28
|only if haveq(58470)
step
label "Slay_Rare_N'Zoth_Minions"
Slay #4# Rare N'Zoth Minions |q 58423/1 |goto 64.84,47.23
|tip They can be found all over the assault zone.
|tip Use our POI Rares feature to accomplish this.
|only if haveq(58423)
step
Complete your Daily Quests |complete readyq(58471,58470,58461,58420,58422,58460,58595,58423,58465,58463,58466,58464,58468,58469,58462) |next "Turnin_Daily_Quests"
step
label "Mogu_Assault_Dailies"
Enter the Assault |complete ZGV.InPhase("ValeInvasionLeftCenter")
step
Enter the building |goto Vale of Eternal Blossoms New/0 40.18,75.26 < 10 |walk
talk Stormspeaker Qian##154444
|tip Inside the building.
accept Built to Fall##58485 |goto 44.73,73.90 |only if questactive(58485)
accept Champions of the Mogu##57720 |goto 44.73,73.90 |only if questactive(57720)
accept Lightning Crashes##58479 |goto 44.73,73.90 |only if questactive(58479)
accept No Stone Unbroken##58478 |goto 44.73,73.90 |only if questactive(58478)
accept Through Blood and Dirt and Bone##58477 |goto 44.73,73.90 |only if questactive(58477)
step
Enter the building |goto Vale of Eternal Blossoms New/0 40.18,75.26 < 10 |walk
talk Forgemaster Han##154677
|tip Inside the building.
accept Cutting Stone##58741 |goto 43.92,71.76 |only if questactive(58741)
accept Spoils of War##57721 |goto 43.92,71.76 |only if questactive(57721)
|only if questactive(58741) or questactive(57721)
step
talk Kun Autumnlight##158673
accept Bound in Stone##57718 |goto Vale of Eternal Blossoms New/0 38.42,75.21 |only if questactive(57718)
accept Rituals of Blood##58481 |goto Vale of Eternal Blossoms New/0 38.42,75.21 |only if questactive(58481)
|only if questactive(57718) or questactive(58481)
step
talk Anji Autumnlight##158674
accept Bringing the Thunder##58476 |goto Vale of Eternal Blossoms New/0 38.49,75.02 |only if questactive(58476)
accept Subjugated Serpents##58740 |goto Vale of Eternal Blossoms New/0 38.49,75.02 |only if questactive(58740)
|only if questactive(58476) or questactive(58740)
step
talk Taoshi##161405
accept Plunder the Plunderers##58487 |goto Vale of Eternal Blossoms New/0 37.26,79.26
|only if questactive(58487)
stickystart "Loot_Mogu_Plunder"
stickystart "Slay_Rare_Mogu_Enemies"
step
click Mogu Weapon##341803+
|tip They look like large two-handed maces and axes on the ground in various ruins around this area.
collect 10 Mogu Armament##174747 |q 58741/1 |goto 34.91,69.38
|only if haveq(58741)
step
Kill Zan-Tien enemies around this area
|tip Only the humanoid Mogu drop armor.
collect 12 Salvaged Mogu Armor##172463 |q 57721/1 |goto 34.91,69.38
|only if haveq(57721)
step
Kill Zan-Tien enemies around this area
Slay #12# Zan-Tien Mogu |q 58476/1 |goto 34.91,69.38
|only if haveq(58476)
step
clicknpc Blood Font##156079+
|tip They look like gray corpses being drained of blood on the ground around this area.
Destroy #6# Blood Fonts |q 58481/1 |goto 48.89,67.06
|only if haveq(58481)
step
Kill enemies around this area
collect 100 Anima Globule##174210 |q 58477/1 |goto 48.82,66.81
|only if haveq(58477)
step
kill 4 Onyx Warserpent##153208 |q 58740/1 |goto 46.51,26.15
You can find more around [29.24,52.06]
And [33.51,67.77]
|only if haveq(58740)
stickystart "Destroy_Mogue_Statues"
step
kill Baruk Stoneshaper##155957+
collect Stoneshaper Rod##170497 |n
clicknpc Petrified Warrior##156153+
|tip They look like Pandaren warriors turned to stone on the ground around this area.
Free #5# Petrified Warriors |q 57718/1 |goto 31.31,36.84
|only if haveq(57718)
step
Kill Baruk enemies around this area
Slay #10# Baruk Mogu |q 58478/1 |goto 25.42,35.60
|only if haveq(58478)
step
label "Destroy_Mogue_Statues"
clicknpc Mogu Statue##156335
|tip They look like stone Mogu holding weapons on the ground around this area.
|tip You can find them near Mogu ruins.
Destroy #6# Mogu Statues |q 58485/1 |goto 24.53,27.16
|only if haveq(58485)
step
click Lightning Rod+
|tip They look like large posts with storms floating over them on the ground around this area.
Destroy #6# Lightning Rods |q 58479/1 |goto 14.43,50.15
|only if haveq(58479)
step
label "Loot_Mogu_Plunder"
Loot #3# Mogu Plunder |q 58487/1 |goto 27.53,43.91
|tip You can find them all over the assault zone.
|tip They appear on your minimap as silver chests.
|only if haveq(58487)
step
label "Slay_Rare_Mogu_Enemies"
Slay #4# Rare Mogu Enemies |q 57720/1 |goto 44.74,73.92
|tip They can be found all over the assault zone.
|tip Use our POI Rares feature to accomplish this.
|only if haveq(57720)
step
Complete your Daily Quests |complete readyq(58741,57721,57718,58481,58476,58740,58485,57720,58479,58478,58477,58487) |next "Turnin_Daily_Quests"
step
label "Mantid_Assault_Dailies"
Enter the Assault |complete ZGV.InPhase("ValeInvasionLeft")
step
Enter the building |goto Vale of Eternal Blossoms New/0 40.18,75.26 < 10 |walk
talk Stormspeaker Qian##154444
|tip Inside the building.
accept Champions of the Swarm##58754 |goto 44.73,73.90 |only if questactive(58754)
accept Crushed Underfoot##58761 |goto 44.73,73.90 |only if questactive(58761)
accept Testing the Untested##58757 |goto 44.73,73.90 |only if questactive(58757)
|only if questactive(58754) or questactive(58761) or questactive(58757)
step
Enter the building |goto Vale of Eternal Blossoms New/0 40.18,75.26 < 10 |walk
talk Forgemaster Han##154677
|tip Inside the building.
accept Blades of Amber##58760 |goto 43.92,71.76
|only if questactive(58760)
step
talk Kun Autumnlight##158673
accept Stashed Supplies##58755 |goto Vale of Eternal Blossoms New/0 38.42,75.21 |only if questactive(58755)
accept Taken by the Swarm##58762 |goto Vale of Eternal Blossoms New/0 38.42,75.21 |only if questactive(58762)
|only if questactive(58755) or questactive(58762)
step
talk Anji Autumnlight##158674
accept Rampaging Destroyers##58758 |goto Vale of Eternal Blossoms New/0 38.49,75.02 |only if questactive(58758)
accept Siege Breaker##58765 |goto Vale of Eternal Blossoms New/0 38.49,75.02 |only if questactive(58765)
accept Standards of the Swarm##58764 |goto Vale of Eternal Blossoms New/0 38.49,75.02 |only if questactive(58764)
|only if questactive(58758) or questactive(58765) or questactive(58764)
step
talk Taoshi##161405
accept Dread Menders##58756 |goto Vale of Eternal Blossoms New/0 37.26,79.26 |only if questactive(58756)
accept The Empress' Guard##58759 |goto Vale of Eternal Blossoms New/0 37.26,79.26 |only if questactive(58759)
accept Halting Production##58763 |goto Vale of Eternal Blossoms New/0 37.26,79.26 |only if questactive(58763)
|only if questactive(58756) or questactive(58759) or questactive(58763)
stickystart "Burn_Zara'thik_Banners"
stickystart "Kill_Kunchong_Destroyers"
stickystart "Slay_Zara'thik_Mantid"
stickystart "Free_Golden_Lotus_Prisoners"
stickystart "Collect_Amber_Blades"
stickystart "Squash_Vil'thik_Larvae"
stickystart  "Kill_Vil'thik_Swarmborn"
stickystart "Kill_Vilthik_Amber_Mender"
stickystart "Destroy_Amber_Vessels"
stickystart "Collect_Golden_Lotus_Supplies"
stickystart "Slay_Rare_Mantid_Enemies"
step
click Vil'thik War Wagon+
|tip They look like large spike-covered enclosed wagons on the ground around this area.
Destroy #3# Vil'thik War Wagons |q 58765/1 |goto 24.60,59.32
|only if haveq(58765)
step
label "Burn_Zara'thik_Banners"
click Zara'thik Banner+
Burn #8# Zara'thik Banners |q 58764/1 |goto 19.09,63.98
You can find more around [10.36,56.30]
|only if haveq(58764)
step
label "Kill_Kunchong_Destroyers"
kill 4 Kunchong Destroyer##153278 |q 58758/1 |goto 17.54,56.66
|tip You can find them all over the assault zone.
|only if haveq(58758)
step
label "Slay_Zara'thik_Mantid"
Kill Zara'thik enemies around this area
Slay #8# Zara'thik Mantid |q 58759/1 |goto 8.60,56.32
|only if haveq(58759)
step
label "Free_Golden_Lotus_Prisoners"
click Hardened Amber Cage+
|tip They look like large wicker cages on the wall around this area.
Free #8# Golden Lotus Prisoners |q 58762/1 |goto 10.66,56.48
|only if haveq(58762)
step
label "Collect_Amber_Blades"
Kill enemies around this area
collect 15 Amber Blade##174762 |q 58760/1 |goto 11.91,56.37
|only if haveq(58760)
step
label "Squash_Vil'thik_Larvae"
click Vil'thik Larvae+
|tip They look like small fireflies on the ground around this area.
Squash #10# Vil'thik Larvae |q 58761/1 |goto 10.51,36.34
|only if haveq(58761)
step
label "Kill_Vil'thik_Swarmborn"
kill 12 Vil'thik Swarmborn##157808 |q 58757/1 |goto 10.51,36.34
|only if haveq(58757)
step
label "Kill_Vilthik_Amber_Mender"
kill 6 Vil'thik Amber-Mender##153255 |q 58756/1 |goto 18.43,65.22
You can find more around [13.53,36.00]
|only if haveq(58756)
step
label "Destroy_Amber_Vessels"
click Amber Vessel+
|tip They look like round yellow objects on the ground around this area.
Destroy #8# Amber Vessels |q 58763/1 |goto 18.43,65.22
You can find more around [13.53,36.00]
|only if haveq(58763)
step
label "Collect_Golden_Lotus_Supplies"
click Ambered Cache+
|tip They look like small brown chests covered in yellow amber around the assault area.
|tip They will appear on your minimap as silver chests.
collect 4 Golden Lotus Supplies##174763 |q 58755/1 |goto 19.79,51.13
|only if haveq(58755)
step
label "Slay_Rare_Mantid_Enemies"
Slay #4# Rare Mantid Enemies |q 58754/1 |goto 19.94,47.25
|tip They can be found all over the assault zone.
|tip Use our POI Rares feature to accomplish this.
|only if haveq(58754)
step
Complete your Daily Quests |complete readyq(58760,58755,58762,58758,58765,58764,58754,58761,58757,58756,58759,58763) |next "Turnin_Daily_Quests"
step
label "Turnin_Daily_Quests"
Turnin In... |complete readyq(58760,58741,57721,58755,58762,57718,58481,58758,58765,58764,58476,58740,58754,58761,58757,58420,58422,58460,58595,58423,58485,57720,58479,58478,58477,58756,58759,58763,58464,58468,58487,58471,58470,58461,58465,58467,58463,58466,58469,58462)
step
Enter the building |goto 40.18,75.26 < 10 |walk
talk Stormspeaker Qian##154444
|tip Inside the building.
turnin Champions of the Swarm##58754 |goto 44.73,73.90 |only if readyq(58754) or completedq(58754)
turnin Crushed Underfoot##58761 |goto 44.73,73.90 |only if readyq(58761) or completedq(58761)
turnin Testing the Untested##58757 |goto 44.73,73.90 |only if readyq(58757) or completedq(58757)
turnin A Foul Annoyance##58420 |goto 44.73,73.90 |only if readyq(58420) or completedq(58420)
turnin Mark of the Conquerors##58422 |goto 44.73,73.90 |only if readyq(58422) or completedq(58422)
turnin Marshals of Madness##58460 |goto 44.73,73.90 |only if readyq(58460) or completedq(58460)
turnin Pillars of Oblivion##58595 |goto 44.73,73.90 |only if readyq(58595) or completedq(58595)
turnin The Strongest Among Them##58423 |goto 44.73,73.90 |only if readyq(58423) or completedq(58423)
turnin Built to Fall##58485 |goto 44.73,73.90 |only if readyq(58485) or completedq(58485)
turnin Champions of the Mogu##57720 |goto 44.73,73.90 |only if readyq(57720) or completedq(57720)
turnin Lightning Crashes##58479 |goto 44.73,73.90 |only if readyq(58479) or completedq(58479)
turnin No Stone Unbroken##58478 |goto 44.73,73.90 |only if readyq(58478) or completedq(58478)
turnin Through Blood and Dirt and Bone##58477 |goto 44.73,73.90 |only if readyq(58477) or completedq(58477)
|only if readyq(58754,58761,58757,58420,58422,58460,58595,58423,58485,57720,58479,58478,58477) or completedq(58754,58761,58757,58420,58422,58460,58595,58423,58485,57720,58479,58478,58477)
step
Enter the building |goto 40.18,75.26 < 10 |walk
talk Forgemaster Han##154677
|tip Inside the building.
turnin Blades of Amber##58760 |goto 43.92,71.76 |only if readyq(58760) or completedq(58760)
turnin Cutting Stone##58741 |goto 43.92,71.76 |only if readyq(58741) or completedq(58741)
turnin Spoils of War##57721 |goto 43.92,71.76 |only if readyq(57721) or completedq(57721)
|only if readyq(58760,58741,57721) or completedq(58760,58741,57721)
step
talk Kun Autumnlight##158673
turnin Stashed Supplies##58755 |goto 38.42,75.21 |only if readyq(58755) or completedq(58755)
turnin Taken by the Swarm##58762 |goto 38.42,75.21 |only if readyq(58762) or completedq(58762)
turnin Bound in Stone##57718 |goto 38.42,75.21 |only if readyq(57718) or completedq(57718)
turnin Rituals of Blood##58481 |goto 38.42,75.21 |only if readyq(58481) or completedq(58481)
|only if readyq(58755,58762,57718,58481) or completedq(58755,58762,57718,58481)
step
talk Anji Autumnlight##158674
turnin Rampaging Destroyers##58758 |goto 38.49,75.02 |only if readyq(58758) or completedq(58758)
turnin Siege Breaker##58765 |goto 38.49,75.02 |only if readyq(58765) or completedq(58765)
turnin Standards of the Swarm##58764 |goto 38.49,75.02 |only if readyq(58764) or completedq(58764)
turnin Bringing the Thunder##58476 |goto 38.49,75.02 |only if readyq(58476) or completedq(58476)
turnin Subjugated Serpents##58740 |goto 38.49,75.02 |only if readyq(58740) or completedq(58740)
|only if readyq(58758,58765,58764,58476,58740) or completedq(58758,58765,58764,58476,58740)
step
talk Taoshi##161405
turnin Dread Menders##58756 |goto 37.26,79.26 |only if readyq(58756) or completedq(58756)
turnin The Empress' Guard##58759 |goto 37.26,79.26 |only if readyq(58759) or completedq(58759)
turnin Halting Production##58763 |goto 37.26,79.26 |only if readyq(58763) or completedq(58763)
turnin Plunder the Plunderers##58487 |goto 37.26,79.26 |only if readyq(58487) or completedq(58487)
|only if readyq(58756,58759,58763,58487) or completedq(58756,58759,58763,58487)
step
talk Taran Zhu##161404
turnin Corruption Manifest##58465 |goto 66.34,40.67 |only if readyq(58465) or completedq(58465)
turnin Prisoners of Mind and Body##58467 |goto 66.34,40.67 |only if readyq(58467) or completedq(58467)
turnin Spawns of Madness##58463 |goto 66.34,40.67 |only if readyq(58463) or completedq(58463)
turnin Torment From Beyond##58466 |goto 66.34,40.67 |only if readyq(58466) or completedq(58466)
|only if readyq(58465,58467,58463,58466) or completedq(58465,58467,58463,58466)
step
talk Taoshi##161405
turnin Deephive Decimation##58464 |goto 66.97,39.84 |only if readyq(58464) or completedq(58464)
turnin A Growing Darkness##58468 |goto 66.97,39.84 |only if readyq(58468) or completedq(58468)
|only if readyq(58464,58468) or completedq(58464,58468)
step
talk Lorewalker Cho##156003
|tip Inside the building.
turnin Aggressive Notation##58471 |goto 83.79,27.17 |only if readyq(58471) or completedq(58471)
turnin Corrupted Curiosities##58470 |goto 83.79,27.17 |only if readyq(58470) or completedq(58470)
turnin Tomes of Ancient Madness##58461 |goto 83.79,27.17 |only if readyq(58461) or completedq(58461)
|only if readyq(58471,58470,58461) or completedq(58471,58470,58461)
step
talk Chi-Ji##154261
turnin Tears in the Vale##58469 |goto 83.82,48.99 |only if readyq(58469) or completedq(58469)
turnin Windows to the Soul##58462 |goto 83.82,48.99 |only if readyq(58462) or completedq(58462)
|only if readyq(58469,58462) or completedq(58469,58462)
step
You have completed all available daily quests for the day
|tip This guide will reset when more become available.
'|complete not completedq(58760,58741,57721,58755,58762,57718,58481,58758,58765,58764,58476,58740,58754,58761,58757,58420,58422,58460,58595,58423,58485,57720,58479,58478,58477,58756,58759,58763,58464,58468,58487,58471,58470,58461,58465,58467,58463,58466,58469,58462) |next "Accept_an_Assault_Quest"
]])
