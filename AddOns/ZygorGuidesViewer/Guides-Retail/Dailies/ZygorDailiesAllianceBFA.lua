local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DailiesABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Battle for Azeroth\\BFA World Quest Unlock",{
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
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Battle for Azeroth\\Nazjatar\\Nazjatar Dailies",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests on Nazjatar.",
condition_suggested=function() return level == 50 end,
},[[
step
label "Accept_Daily_Quests"
Talk to NPCs
accept Bounty: A Few Coral Ancients##55821 |goto Nazjatar/0 39.06,54.81 |only if questpossible |or 3
accept Bounty: A Few Crabs##55823 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: A Few Fathom Rays##55825 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: A Few Hydra##55820 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: A Few Makrura##55822 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: A Few Murlocs##55819 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: A Few Naga##55818 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: A Few Snapdragons##55824 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: More Coral Ancients##55830 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: More Crabs##55832 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: More Fathom Rays##55834 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: More Hydra##55829 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: More Makrura##55831 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: More Murlocs##55828 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: More Naga##55827 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: More Snapdragons##55833 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: Dangerous Creatures##55837 |goto 39.06,54.81 |only if questpossible |or 3
accept Bounty: Elite Naga Forces##55836 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: A Few Carp##55723 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: A Few Cone Shells##55726 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: A Few Deepcoral Buds##55724 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: A Few Flotsam##55727 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: A Few Kelp Buds##55721 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: A Few Seaweed##55720 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: A Few Spiral Leaf##55725 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: A Few Starfish##55719 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: More Carp##55789 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: More Cone Shells##55792 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: More Deepcoral Buds##55790 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: More Flotsam##55793 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: More Kelp Buds##55787 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: More Seaweed##55786 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: More Spiral Leaf##55791 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: More Starfish##55785 |goto 39.06,54.81 |only if questpossible |or 3
accept Requisition: We Need It All##55801 |goto 39.06,54.81 |only if questpossible |or 3
Accept 3 Bounty or Requisition Daily Quests |complete false |goto 39.06,54.81 |or 3
stickystart "Slay_3_Coral_Ancients"
stickystart "Slay_15_Crabs"
stickystart "Slay_10_Fathom_Rays"
stickystart "Slay_10_Hydras"
stickystart "Slay_10_Makura"
stickystart "Slay_15_Murlocs"
stickystart "Slay_15_Naga"
stickystart "Slay_10_Snapdragons"
stickystart "Slay_7_Coral_Ancients"
stickystart "Slay_25_Crabs"
stickystart "Slay_25_Fathom_Rays"
stickystart "Slay_25_Hydras"
stickystart "Slay_25_Makrura"
stickystart "Slay_25_Murlocs"
stickystart "Slay_25_Naga"
stickystart "Slay_25_Snapdragons"
stickystart "Slay_Elite_Naga"
stickystart "Collect_5_Struggling_Carp"
stickystart "Collect_5_Impregnable_Cone_Shell"
stickystart "Collect_5_Deepcoral_Bud"
stickystart "Collect_5_Pile_Of_Flotsam"
stickystart "Collect_5_Fallen_Kelp_Bud"
stickystart "Collect_5_Sticky_Seaweed"
stickystart "Collect_5_Poisonous_Spiral_Leaf"
stickystart "Collect_5_Angel_Scale_Starfish"
stickystart "Collect_10_Struggling_Carp"
stickystart "Collect_10_Impregnable_Cone_Shell"
stickystart "Collect_10_Deepcoral_Bud"
stickystart "Collect_10_Pile_Of_Flotsam"
stickystart "Collect_10_Fallen_Kelp_Bud"
stickystart "Collect_10_Sticky_Seaweed"
stickystart "Collect_10_Poisonous_Spiral_Leaf"
stickystart "Collect_10_Angel_Scale_Starfish"
stickystart "Slay_Nazjatar_Rare_Enemies"
stickystart "Find_Angel_Scale_Starfish"
stickystart "Find_Poisonous_Spiral_Leaf"
stickystart "Find_Pile_Of_Flotsam"
stickystart "Find_Deepcoral_Bud"
stickystart "Find_Kelp_Bud_Sticky_Seaweed"
step
label "Slay_3_Coral_Ancients"
Kill Coral enemies around this area
|tip They look like large tree-like pieces of coral walking and standing around this area.
Slay #3# Coral Ancients |q 55821/1 |goto 58.44,51.86
|only if haveq(55821)
step
label "Slay_15_Crabs"
Kill Crab enemies around this area
Slay #15# Crabs |q 55823/1 |goto 59.95,42.40
You can find more at [56.49,56.86]
|only if haveq(55823)
step
label "Slay_10_Fathom_Rays"
Kill Fathom Ray enemies around this area
Slay #10# Fathom Rays |q 55825/1 |goto 58.44,51.86
|only if haveq(55825)
step
label "Slay_10_Hydras"
Kill Hydra enemies around this area
Slay #10# Hydras |q 55820/1 |goto 33.03,44.22
|only if haveq(55820)
step
label "Slay_10_Makura"
Kill Makrura enemies around this area
Slay #10# Makrura |q 55822/1 |goto 65.38,38.81
|only if haveq(55822)
step
label "Slay_15_Murlocs"
Kill Murloc enemies around this area
Slay #15# Murlocs |q 55819/1 |goto 29.63,32.14
|only if haveq(55819)
step
label "Slay_15_Naga"
Kill Naga enemies around this area
Slay #15# Naga |q 55818/1 |goto 42.56,67.06
|only if haveq(55818)
step
label "Slay_10_Snapdragons"
Kill Snapdragon enemies around this area
Slay #10# Snapdragons |q 55824/1 |goto 70.08,50.03
|only if haveq(55824)
step
label "Slay_7_Coral_Ancients"
Kill Coral enemies around this area
|tip They look like large tree-like pieces of coral walking and standing around this area.
Slay #7# Coral Ancients |q 55830/1 |goto 58.44,51.86
|only if haveq(55830)
step
label "Slay_25_Crabs"
Kill enemies around this area
|tip Look for Sandclaw and Glimmershell mobs.
Slay #25# Crabs |q 55832/1 |goto 59.95,42.40
You can find more at [56.49,56.86]
|only if haveq(55832)
step
label "Slay_25_Fathom_Rays"
Kill Fathom Ray enemies around this area
Slay #25# Fathom Rays |q 55834/1 |goto 58.44,51.86
|only if haveq(55834)
step
label "Slay_25_Hydras"
Kill Hydra enemies around this area
Slay #25# Hydras |q 55829/1 |goto 33.03,44.22
|only if haveq(55829)
step
label "Slay_25_Makrura"
Kill Makrura enemies around this area
Slay #25# Makrura |q 55831/1 |goto 65.38,38.81
|only if haveq(55831)
step
label "Slay_25_Murlocs"
Kill Murloc enemies around this area
Slay #25# Murlocs |q 55828/1 |goto 29.63,32.14
|only if haveq(55828)
step
label "Slay_25_Naga"
Kill Naga enemies around this area
Slay #25# Naga |q 55827/1 |goto 42.56,67.06
|only if haveq(55827)
step
label "Slay_25_Snapdragons"
Kill Snapdragon enemies around this area
Slay #25# Snapdragons |q 55833/1 |goto 70.08,50.03
|only if haveq(55833)
step
label "Slay_Nazjatar_Rare_Enemies"
Slay a Nazjatar Rare Enemy |q 55837/1
|tip They are found all over Nazjatar and appear on your minimap as a yellow star.
|only if haveq(55837)
step
label "Slay_Elite_Naga"
Kill enemies around this area
Slay #5# Elite Naga |q 55836/1 |goto 50.44,16.08
|only if haveq(55836)
step
label "Collect_5_Struggling_Carp"
click Struggling Carp+
|tip They look like small fish floundering on the ground around this area.
|tip Face nearby water when you click them.
Return #5# Struggling Carp to the Water |q 55723/1 |goto 32.42,35.21
You can find more around here [41.91,86.30]
|only if haveq(55723)
step
label "Collect_5_Impregnable_Cone_Shell"
click Impregnable Cone Shell+
|tip They look like large pointed shells sticking out of the ground around this area.
|tip They spawn randomly all over the zone.
Collect #5# Impregnable Cone Shells |q 55726/1 |goto 34.15,44.52
|only if haveq(55726)
step
label "Collect_5_Deepcoral_Bud"
kill Deepcoral Bud##152297+
|tip They grow on the sides of the giant pieces of coral around this area.
Collect #5# Deepcoral Buds |q 55724/1 |goto 58.37,54.54
|only if haveq(55724)
step
label "Collect_5_Pile_Of_Flotsam"
click Pile of Flotsam##325799+
|tip They look like small piles of junk.
|tip They can be found all over Nazjatar.
Collect #3# Piles of Flotsam |q 55727/1 |goto 34.15,44.52
|only if haveq(55727)
step
label "Collect_5_Fallen_Kelp_Bud"
click Fallen Kelp Bud+
|tip They look like small brown radishes on the ground all over the Spears of Azshara area.
|tip They can be found all over Nazjatar.
Collect #3# Fallen Kelp Buds |q 55721/1 |goto 44.80,79.14
|only if haveq(55721)
step
label "Collect_5_Sticky_Seaweed"
clicknpc Sticky Seaweed##152519+
|tip They look like clumps of plants on the ground all over the Spears of Azshara area.
|tip Run away after clicking it to pull it out of the ground.
Collect #5# Sticky Seaweed |q 55720/1 |goto 44.80,79.14
|only if haveq(55720)
step
label "Collect_5_Poisonous_Spiral_Leaf"
click Poisonous Spiral Leaf##325914+
|tip They look like spiral shaped plants on the ground around this area.
Collect #5# Poisonous Spiral Leafs |q 55725/1 |goto 64.64,16.26
|only if haveq(55725)
step
label "Collect_5_Angel_Scale_Starfish"
click Angel Scale Starfish##325884+
|tip They look like white starfish on the ground around this area.
Collect #5# Angel Scale Starfish |q 55719/1 |goto 53.51,22.27
|only if haveq(55719)
step
label "Collect_10_Struggling_Carp"
click Struggling Carp+
|tip They look like small fish floundering on the ground around this area.
|tip Face nearby water when you click them.
Return #10# Struggling Carp to the Water |q 55789/1 |goto 32.42,35.21
You can find more around here [41.91,86.30]
|only if haveq(55789)
step
label "Collect_10_Impregnable_Cone_Shell"
click Impregnable Cone Shell+
|tip They look like large pointed shells sticking out of the ground around this area.
|tip They spawn randomly all over the zone.
Collect #10# Impregnable Cone Shells |q 55792/1 |goto 34.15,44.52
|only if haveq(55792)
step
label "Collect_10_Deepcoral_Bud"
kill Deepcoral Bud##152297+
|tip They grow on the sides of the giant pieces of coral around this area.
Collect #10# Deepcoral Buds |q 55790/1 |goto 58.37,54.54
|only if haveq(55790)
step
label "Collect_10_Pile_Of_Flotsam"
click Pile of Flotsam##325799+
|tip They look like small piles of junk.
|tip They can be found all over Nazjatar.
Collect #10# Piles of Flotsam |q 55793/1 |goto 34.15,44.52
|only if haveq(55793)
step
label "Collect_10_Fallen_Kelp_Bud"
click Fallen Kelp Bud+
|tip They look like small brown radishes on the ground all over the Spears of Azshara area.
|tip They can be found all over Nazjatar.
Collect #10# Fallen Kelp Buds |q 55787/1 |goto 44.80,79.14
|only if haveq(55787)
step
label "Collect_10_Sticky_Seaweed"
clicknpc Sticky Seaweed##152519+
|tip They look like clumps of plants on the ground all over the Spears of Azshara area.
|tip Run away after clicking it to pull it out of the ground.
Collect #10# Sticky Seaweed |q 55786/1 |goto 44.80,79.14
|only if haveq(55786)
step
label "Collect_10_Poisonous_Spiral_Leaf"
click Poisonous Spiral Leaf##325914+
|tip They look like spiral shaped plants on the ground around this area.
Collect #10# Poisonous Spiral Leafs |q 55791/1 |goto 64.64,16.26
|only if haveq(55791)
step
label "Collect_10_Angel_Scale_Starfish"
click Angel Scale Starfish##325884+
|tip They look like white starfish on the ground around this area.
Collect #10# Angel Scale Starfish |q 55785/1 |goto 53.51,22.27
|only if haveq(55785)
step
label "Slay_Nazjatar_Rare_Enemies"
Slay #3# Nazjatar Rare Enemies |q 55837/1
|tip They are found all over Nazjatar and appear on your minimap as a yellow star.
|only if haveq(55837)
step
label "Find_Angel_Scale_Starfish"
click Angel Scale Starfish##325884
Find an Angel Scale Starfish |q 55801/1 |goto 53.51,22.27
|only if haveq(55801)
step
label "Find_Poisonous_Spiral_Leaf"
click Poisonous Spiral Leaf##325914
Find a Poisonous Spiral Leaf |q 55801/3 |goto 64.64,16.26
|only if haveq(55801)
step
label "Find_Pile_Of_Flotsam"
click Impregnable Cone Shell##325916
Find an Impregnable Cone Shell |q 55801/4 |goto 34.15,44.52
click Pile of Flotsam##325799
Find a Pile of Flotsam |q 55801/5 |goto 34.15,44.52
|only if haveq(55801)
step
label "Find_Deepcoral_Bud"
clicknpc Deepcoral Bud##152297
Find a Deepcoral Bud |q 55801/6 |goto 58.37,54.54
|only if haveq(55801)
step
label "Find_Kelp_Bud_Sticky_Seaweed"
click Fallen Kelp Bud##325912
Find a Fallen Kelp Bud |q 55801/2 |goto 44.80,79.14
clicknpc Sticky Seaweed##152519
Find a Sticky Seaweed |q 55801/7 |goto 44.80,79.14
|only if haveq(55801)
step
talk Speaker Utia##154140
|tip Inside the building.
turnin Bounty: A Few Coral Ancients##55821 |goto 38.02,55.70 |or 3 |only if haveq(55821) or completedq(55821)
turnin Bounty: A Few Crabs##55823 |goto 38.02,55.70 |or 3 |only if haveq(55823) or completedq(55823)
turnin Bounty: A Few Fathom Rays##55825 |goto 38.02,55.70 |or 3 |only if haveq(55825) or completedq(55825)
turnin Bounty: A Few Hydra##55820 |goto 38.02,55.70 |or 3 |only if haveq(55820) or completedq(55820)
turnin Bounty: A Few Makrura##55822 |goto 38.02,55.70 |or 3 |only if haveq(55822) or completedq(55822)
turnin Bounty: A Few Murlocs##55819 |goto 38.02,55.70 |or 3 |only if haveq(55819) or completedq(55819)
turnin Bounty: A Few Naga##55818 |goto 38.02,55.70 |or 3 |only if haveq(55818) or completedq(55818)
turnin Bounty: A Few Snapdragons##55824 |goto 38.02,55.70 |or 3 |only if haveq(55824) or completedq(55824)
turnin Bounty: More Coral Ancients##55830 |goto 38.02,55.70 |or 3 |only if haveq(55830) or completedq(55830)
turnin Bounty: More Crabs##55832 |goto 38.02,55.70 |or 3 |only if haveq(55832) or completedq(55832)
turnin Bounty: More Fathom Rays##55834 |goto 38.02,55.70 |or 3 |only if haveq(55834) or completedq(55834)
turnin Bounty: More Hydra##55829 |goto 38.02,55.70 |or 3 |only if haveq(55829) or completedq(55829)
turnin Bounty: More Makrura##55831 |goto 38.02,55.70 |or 3 |only if haveq(55831) or completedq(55831)
turnin Bounty: More Murlocs##55828 |goto 38.02,55.70 |or 3 |only if haveq(55828) or completedq(55828)
turnin Bounty: More Naga##55827 |goto 38.02,55.70 |or 3 |only if haveq(55827) or completedq(55827)
turnin Bounty: More Snapdragons##55833 |goto 38.02,55.70 |or 3 |only if haveq(55833) or completedq(55833)
turnin Bounty: Dangerous Creatures##55837 |goto 38.02,55.70 |or 3 |only if haveq(55837) or completedq(55837)
turnin Bounty: Elite Naga Forces##55836 |goto 38.02,55.70 |or 3 |only if haveq(55836) or completedq(55836)
turnin Requisition: A Few Carp##55723 |goto 38.02,55.70 |or 3 |only if haveq(55723) or completedq(55723)
turnin Requisition: A Few Cone Shells##55726 |goto 38.02,55.70 |or 3 |only if haveq(55726) or completedq(55726)
turnin Requisition: A Few Deepcoral Buds##55724 |goto 38.02,55.70 |or 3 |only if haveq(55724) or completedq(55724)
turnin Requisition: A Few Flotsam##55727 |goto 38.02,55.70 |or 3 |only if haveq(55727) or completedq(55727)
turnin Requisition: A Few Kelp Buds##55721 |goto 38.02,55.70 |or 3 |only if haveq(55721) or completedq(55721)
turnin Requisition: A Few Seaweed##55720 |goto 38.02,55.70 |or 3 |only if haveq(55720) or completedq(55720)
turnin Requisition: A Few Spiral Leaf##55725 |goto 38.02,55.70 |or 3 |only if haveq(55725) or completedq(55725)
turnin Requisition: A Few Starfish##55719 |goto 38.02,55.70 |or 3 |only if haveq(55719) or completedq(55719)
turnin Requisition: More Carp##55789 |goto 38.02,55.70 |or 3 |only if haveq(55789) or completedq(55789)
turnin Requisition: More Cone Shells##55792 |goto 38.02,55.70 |or 3 |only if haveq(55792) or completedq(55792)
turnin Requisition: More Deepcoral Buds##55790 |goto 38.02,55.70 |or 3 |only if haveq(55790) or completedq(55790)
turnin Requisition: More Flotsam##55793 |goto 38.02,55.70 |or 3 |only if haveq(55793) or completedq(55793)
turnin Requisition: More Kelp Buds##55787 |goto 38.02,55.70 |or 3 |only if haveq(55787) or completedq(55787)
turnin Requisition: More Seaweed##55786 |goto 38.02,55.70 |or 3 |only if haveq(55786) or completedq(55786)
turnin Requisition: More Spiral Leaf##55791 |goto 38.02,55.70 |or 3 |only if haveq(55791) or completedq(55791)
turnin Requisition: More Starfish##55785 |goto 38.02,55.70 |or 3 |only if haveq(55785) or completedq(55785)
turnin Requisition: We Need It All##55801 |goto 38.02,55.70 |or 3 |only if haveq(55801) or completedq(55801)
step
You have completed all Nazjatar dailies for the day
|tip This guide will reset when more become available.
'|complete not completedq(55821,55823,55825,55820,55822,55819,55818,55824,55830,55832,55834,55829,55831,55828,55827,55833,55837,55836,55723,55726,55724,55727,55721,55720,55725,55719,55789,55792,55790,55793,55787,55786,55791,55785,55801) |next "Accept_Daily_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Battle for Azeroth\\Mechagon Island\\Mechagon Dailies",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various daily quests on Mechagon Island.",
condition_suggested=function() return level == 50 and completedq(55736) end,
},[[
step
Unlock Mechagon Daily Quests |complete completedq(55736)
|tip You must complete the quest "Welcome to the Resistance" on Mechagon Island to unlock daily quests.
|tip Use the "Mechagon Island" leveling guide to accomplish this.
step
label "Begin_Dailies"
talk Corey Clockbonk##154101
accept Bot Rampage##56082 |goto Mechagon Island/0 77.88,39.86 |or
|tip
Click Here if this Quest is Not Available |confirm |or
step
Kill enemies around this area
Slay #15# Enraged Rustbots |q 56082/1 |goto 81.17,27.57
|only if haveq(56082)
step
talk Corey Clockbonk##154101
turnin Bot Rampage##56082 |goto 77.88,39.86
|only if haveq(56082)
step
talk Gila Crosswires##149813 |goto 77.59,40.57
Choose the Available Quest:
Akunda's Bite |confirm |next "Collect_Akunda's_Bite" |or
Calcified Bone |confirm |next "Collect_Calcified_Bone" |or
Deep Sea Satin |confirm |next "Collect_Deep_Sea_Satin" |or
Frenzied Fangtooth |confirm |next "Collect_Frenzied_Fangtooth" |or
Great Sea Catfish |confirm |next "Collect_Great_Sea_Catfish" |or
Lane Snapper |confirm |next "Collect_Lane_Snapper" |or
Monelite Ore |confirm |next "Collect_Monelite_Ore" |or
Shimmerscale |confirm |next "Collect_Shimmerscale" |or
Star Moss |confirm |next "Collect_Star_Moss" |or
Storm Silver Ore |confirm |next "Collect_Storm_Silver_Ore" |or
Tempest Hide |confirm |next "Collect_Tempest_Hide" |or
Tidespray Linen |confirm |next "Collect_Tidespray_Linen" |or
Winter's Kiss |confirm |next "Collect_Winter's_Kiss" |or
|tip
To Skip These Quests Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Collect_Akunda's_Bite"
collect 20 Akunda's Bite##152507 |q 56747 |future |next "Turnin_Rustbolt_Requisition_Quest" |or
|tip Farm them with Herbalism or purchase them from the Auction House.
|tip
To Skip This Quest Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Collect_Frenzied_Fangtooth"
collect 20 Frenzied Fangtooth##152545 |q 56363 |future |next "Turnin_Rustbolt_Requisition_Quest" |or
|tip Farm them with Fishing or purchase them from the Auction House.
|tip
To Skip This Quest Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Collect_Tidespray_Linen"
collect 20 Tidespray Linen##152576 |q 56361 |future |next "Turnin_Rustbolt_Requisition_Quest" |or
|tip Farm them from Humanoid mobs in BFA zones or purchase them from the Auction House.
|tip
To Skip This Quest Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Collect_Storm_Silver_Ore"
collect 10 Storm Silver Ore##152579 |q 55380 |future |next "Turnin_Rustbolt_Requisition_Quest" |or
|tip Farm them with Mining or purchase them from the Auction House.
|tip
To Skip This Quest Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Collect_Star_Moss"
collect 20 Star Moss##152506 |q 55379 |future |next "Turnin_Rustbolt_Requisition_Quest" |or
|tip Farm them with Herbalism or purchase them from the Auction House.
|tip
To Skip This Quest Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Collect_Shimmerscale"
collect 20 Shimmerscale##153050 |q 55378 |future |next "Turnin_Rustbolt_Requisition_Quest" |or
|tip Farm them with Skinning or purchase them from the Auction House.
|tip
To Skip This Quest Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Collect_Tempest_Hide"
collect 15 Tempest Hide##154722 |q 56760 |future |next "Turnin_Rustbolt_Requisition_Quest" |or
|tip Farm them with Skinning or purchase them from the Auction House.
|tip
To Skip This Quest Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Collect_Great_Sea_Catfish"
collect 20 Great Sea Catfish##152547 |q 56763 |future |next "Turnin_Rustbolt_Requisition_Quest" |or
|tip Farm them with Fishing or purchase them from the Auction House.
|tip
To Skip This Quest Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Collect_Monelite_Ore"
collect 20 Monelite Ore##152512 |q 56755 |future |next "Turnin_Rustbolt_Requisition_Quest" |or
|tip Farm them with Mining or purchase them from the Auction House.
|tip
To Skip This Quest Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Collect_Lane_Snapper"
collect 20 Lane Snapper##152546 |q 56761 |future |next "Turnin_Rustbolt_Requisition_Quest" |or
|tip Farm them with Fishing or purchase them from the Auction House.
|tip
To Skip This Quest Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Collect_Calcified_Bone"
collect 20 Calcified Bone##154165 |q 56751 |future |next "Turnin_Rustbolt_Requisition_Quest" |or
|tip Farm them with Skinning or purchase them from the Auction House.
|tip
To Skip This Quest Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Collect_Winter's_Kiss"
collect 20 Winter's Kiss##152508 |q 56757 |future |next "Turnin_Rustbolt_Requisition_Quest" |or
|tip Farm them with Herbalism or purchase them from the Auction House.
|tip
To Skip This Quest Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Collect_Deep_Sea_Satin"
collect 10 Deep Sea Satin##152577 |q 56753 |future |next "Turnin_Rustbolt_Requisition_Quest" |or
|tip Farm them from Humanoid mobs or purchase them from the Auction House.
|tip
To Skip This Quest Click Here |confirm |next "Accept_Rustbolt_Daily_Quests" |or
step
label "Turnin_Rustbolt_Requisition_Quest"
talk Gila Crosswires##149813
accept Rustbolt Requisitions: Akunda's Bite##56747 |only if questpossible |or
accept Rustbolt Requisitions: Frenzied Fangtooth##56363 |only if questpossible |or
accept Rustbolt Requisitions: Tidespray Linen##56361 |only if questpossible |or
accept Rustbolt Requisitions: Storm Silver Ore##55380 |only if questpossible |or
accept Rustbolt Requisitions: Star Moss##55379 |only if questpossible |or
accept Rustbolt Requisitions: Shimmerscale##55378 |only if questpossible |or
accept Rustbolt Requisitions: Tempest Hide##56760 |only if questpossible |or
accept Rustbolt Requisitions: Great Sea Catfish##56763 |only if questpossible |or
accept Rustbolt Requisitions: Monelite Ore##56755 |only if questpossible |or
accept Rustbolt Requisitions: Lane Snapper##56761 |only if questpossible |or
accept Rustbolt Requisitions: Calcified Bone##56751 |only if questpossible |or
accept Rustbolt Requisitions: Winter's Kiss##56757 |only if questpossible |or
accept Rustbolt Requisitions: Deep Sea Satin##56753 |only if questpossible |or
Turn in the Requisition Quest |complete completedq(56747,56363,56361,55380,55379,55378,56760,56763,56755,56761,56751,56757,56753) |goto 77.59,40.57 |or
step
label "Accept_Rustbolt_Daily_Quests"
Talk to NPCs
accept Pirates, Sea Monsters, Robots##56184 |only if questpossible
accept One Gnome's Trash##55575 |only if questpossible
accept Toys For Destruction##54090 |only if questpossible
accept My Chickens are Not for Eating!##56523 |only if questpossible
accept Off-the-Books Brawlin'##56558 |only if questpossible
accept Aid From Nordrassil##55463 |only if questpossible
accept The Other Place##55816 |only if questpossible
accept Clues Abound##55658 |only if questpossible
accept Discs of Norgannon##56410 |only if questpossible
accept Bugs, Lots Of 'Em!##55765 |only if questpossible
accept Energy Cells for Everyone##55213 |only if questpossible
accept Certified Pre-Owned##56573 |only if questpossible
accept Redistribution of Power##55880 |only if questpossible
accept That New Mount Smell##55695 |only if questpossible
accept Chopped Bots##56327 |only if questpossible
accept Cogfrenzy's Construction Frenzy##56405 |only if questpossible
accept Unprofitable Ventures##56471 |only if questpossible
accept A Direct Approach##56493 |only if questpossible
accept Wanted: Junkbrat and Roadtrogg##56434 |only if questpossible
accept Toys Like Us##56572 |only if questpossible
accept Abduction Reduction##55905 |only if questpossible
accept Other Interests##56174 |only if questpossible
accept Other Interests##55815 |only if questpossible
accept Other Interests##56172 |only if questpossible
accept Other Interests##56173 |only if questpossible
accept Real Ultimate Power##56621 |only if questpossible
accept More Power##54082 |only if questpossible
Accept Any Daily Quests Available in Rustbolt |complete false |goto 71.69,35.34
|tip
Click Here to Proceed |confirm
step
use the Personal Time Displacer##169114
|tip These can be crafted at Pascal-K1N6.
|tip They cost 2 S.P.A.R.E. Crates, 2 Energy Cells, and 1 Chain Ignitercoil for 3 Displacers.
|tip The Blueprint for this drops from mobs in the Alternate Timeline.
Enter the Alternate Timeline |havebuff spell:296644 |goto 71.41,32.36
|tip
Click Here to Skip This |confirm |next "Begin_Daily_Route"
|only if not haveq(55816)
step
talk Christy Punchcog##154214
accept Adapt, Improve, Overcome!##56142 |goto 71.84,35.86
|only if not haveq(55816)
stickystart "Collect_Leg_Struts"
stickystart "Collect_Sentry_Heel_Nuts"
stickystart "Scan_Memory_Banks"
step
kill Mechanized Scraphound##149839+
click Scrap Pile##327586+
|tip They look like smal piles of trash on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect 20 Pristine Hound Bolts##169214 |q 56142/1 |goto 69.13,41.62
|only if not haveq(55816) and haveq(56142)
step
label "Collect_Leg_Struts"
kill Upgraded Sentry##154213+
click Scrap Pile##327586+
|tip They look like smal piles of trash on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect 4 Leg Strut XS##169213 |q 56142/2 |goto 69.13,41.62
|only if not haveq(55816) and haveq(56142)
step
label "Collect_Sentry_Heel_Nuts"
kill Upgraded Sentry##154213+
click Scrap Pile##327586+
|tip They look like smal piles of trash on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect 2 Sentry Heel Nut##169212 |q 56142/3 |goto 69.13,41.62
|only if not haveq(55816) and haveq(56142)
step
talk Christy Punchcog##154214
turnin Adapt, Improve, Overcome!##56142 |goto 71.84,35.86
|only if not haveq(55816) and haveq(56142)
step
talk Izira Gearsworn##153982
accept The Final Act##56053 |goto 72.97,33.88
|only if not haveq(55816) and completedq(56142)
step
kill Bondo Bigblock##153984 |q 56053/1 |goto 61.80,39.65
|only if not haveq(55816) and haveq(56053)
step
_Next to you:_
talk Izira Gearsworn##154457
turnin The Final Act##56053
|only if not haveq(55816) and haveq(56053)
step
Leave the Alternate Timeline |nobuff spell:296644
|tip Right-click the "Time Displacement" buff on your buff bar.
|only if hasbuff("spell:296644") and completedq(56053)
stickystart "Contribute_To_Construction_Projects"
stickystart "Complete_A_Construction_Project"
step
label "Begin_Daily_Route"
clicknpc Riding Macaw##154340
Ride the Macaw |invehicle |goto 72.00,39.09 |q 56184
|only if haveq(56184)
step
Reach the Western Spray |outvehicle |q 56184
|only if haveq(56184)
step
click Pirate Chest##327568
collect Father's Sword##169165 |q 56184/1 |goto 20.97,71.88
|only if haveq(56184)
step
talk Sneaky Pete##154511
accept The Family Jewels##56306 |goto 24.19,75.31
|only if haveq(56184)
stickystart "Collect_Family_Jewelry"
step
talk Short John Mithril##154485
accept Go For The Gold##56301 |goto 21.53,81.88
|only if haveq(56184)
step
click Pirate Chest##327570
collect Father's Clothes##169166 |q 56184/2 |goto 23.87,83.40
|only if haveq(56184)
step
click Pirate Chest##327569
collect Father's Bones##169164 |q 56184/3 |goto 14.57,82.32
|only if haveq(56184)
step
kill Chief Curglrrmrgur##154491 |q 56301/1 |goto 16.18,84.87
|only if haveq(56184)
step
collect Chief's Key##169221 |goto 16.18,84.87 |q 56301
|only if haveq(56184)
step
click Murloc Treasure
collect Murloc Treasure##169222 |q 56301/2 |goto 16.57,81.73
|only if haveq(56184)
step
label "Collect_Family_Jewelry"
Kill enemies around this area
click Family Jewels##327620+
|tip They look like small pieces of jewelry around this area.
collect 75 Family Jewelry##169241 |q 56306/1 |goto 22.59,77.59
|only if haveq(56184)
step
talk Short John Mithril##154485
turnin Go For The Gold##56301 |goto 21.53,81.88
|only if haveq(56184)
step
talk Sneaky Pete##154511
turnin The Family Jewels##56306 |goto 24.19,75.31
|only if haveq(56184)
step
click NRG-100
Equip the NRG-100 |q 55880/1 |goto 70.69,38.46
|only if haveq(55880)
step
Kill Scrapbone enemies around this area
collect 20 Mechanical Giblets##169695 |q 56523/1 |goto 59.89,26.83
|only if haveq(56523)
step
clicknpc OOX-Bomber/MG##155308
Repair the OOX-Bomber/MG |q 56523/2 |goto 54.32,32.03
|only if haveq(56523)
step
talk Oglethorpe Obnoticus##155254
turnin My Chickens are Not for Eating!##56523 |goto 72.79,37.98
|only if haveq(56523)
step
use the Rare Metal Collector##168183
|tip Use it near areas where the ground is sparkling.
collect 100 Rare metal##168184 |q 55575/1 |goto 73.11,44.64
You can find more around [67.55,30.26]
And [64.33,54.83]
|only if haveq(55575)
step
click Eyegouger Supplies+
|tip They look like piles of crates and barrels on the ground around this area.
Kill Eyegouge enemies around this area
Defeat Usha's Eyegougers |q 56558/1 |goto 22.15,77.49
|only if haveq(56558)
step
Deliver #12# Re-animated Bots to Bolten Springspark |q 56327/1 |goto 68.70,46.79
|tip Kill bots and use the "Bot Re-Energizer" ability on-screen to re-animate them.
Return them here [63.28,38.86]
|only if haveq(56327)
step
click Goldencog Paste##325976
collect Goldencog Paste##168246 |q 55695/1 |goto 70.45,57.71 |count 1
|only if haveq(55695)
step
click Goldencog Paste##325976
collect Goldencog Paste##168246 |q 55695/1 |goto 69.34,57.79 |count 2
|only if haveq(55695)
step
click Goldencog Paste##325976
collect Goldencog Paste##168246 |q 55695/1 |goto 67.71,60.79 |count 3
|only if haveq(55695)
step
click Goldencog Paste##325976
collect Goldencog Paste##168246 |q 55695/1 |goto 70.57,64.29 |count 4
|only if haveq(55695)
step
click Goldencog Paste##325976
collect Goldencog Paste##168246 |q 55695/1 |goto 73.82,56.63 |count 5
|only if haveq(55695)
step
click Goldencog Paste##325976
collect Goldencog Paste##168246 |q 55695/1 |goto 75.49,57.43 |count 6
|only if haveq(55695)
stickystart "Kill_Sawblade_Clearcutter"
step
click Stump+
|tip They look like large tree stumps on the ground around this area
Regrow #8# Fresh-Cut Stumps regrown |q 55463/1 |goto 45.03,40.56
|only if haveq(55463)
step
label "Kill_Sawblade_Clearcutter"
kill 8 Sawblade Clearcutter##151871 |q 55463/2 |goto 45.03,40.56
|only if haveq(55463)
step
talk Chromie##153993
Tell her _"I am ready to travel to the other place."_
Speak with Chromie |havebuff spell:296644 |goto 70.21,30.92
|only if haveq(55816)
step
talk Christy Punchcog##154214
accept Adapt, Improve, Overcome!##56142 |goto 71.84,35.86
|only if haveq(55816)
stickystart "Collect_Leg_Struts"
stickystart "Collect_Sentry_Heel_Nuts"
stickystart "Scan_Memory_Banks"
step
kill Mechanized Scraphound##149839+
click Scrap Pile##327586+
|tip They look like smal piles of trash on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect 20 Pristine Hound Bolts##169214 |q 56142/1 |goto 69.13,41.62
|only if haveq(56142)
step
label "Collect_Leg_Struts"
kill Upgraded Sentry##154213+
click Scrap Pile##327586+
|tip They look like smal piles of trash on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect 4 Leg Strut XS##169213 |q 56142/2 |goto 69.13,41.62
|only if haveq(56142)
step
label "Collect_Sentry_Heel_Nuts"
kill Upgraded Sentry##154213+
click Scrap Pile##327586+
|tip They look like smal piles of trash on the ground around this area.
|tip They appear on your minimap as yellow dots.
collect 2 Sentry Heel Nut##169212 |q 56142/3 |goto 69.13,41.62
|only if haveq(56142)
step
label "Scan_Memory_Banks"
kill Clockwork Giant##153991+
use Robotic-Memory Recorder##168813
|tip Use it on their corpses.
Scan #10# Memory Banks |q 55816/2 |goto 64.38,45.67
|only if haveq(55816) and hasbuff("spell:296644")
step
talk Christy Punchcog##154214
turnin Adapt, Improve, Overcome!##56142 |goto 71.84,35.86
|only if haveq(56142)
step
talk Izira Gearsworn##153982
accept The Final Act##56053 |goto 72.97,33.88
|only if completedq(56142)
step
kill Bondo Bigblock##153984 |q 56053/1 |goto 61.80,39.65
|only if completedq(56142) and haveq(56053)
step
_Next to you:_
talk Izira Gearsworn##154457
turnin The Final Act##56053
|only if completedq(56142) and haveq(56053)
step
Remove the Time Displacement Buff |nobuff 413583 |q 55816
|tip Right-click it on your buff frame.
|only if haveq(55816)
step
Click objects around this area
|tip They will faintly glow the first time to near them.
Discover a Clue |q 55658/1 |goto 76.54,64.52
|only if haveq(55658)
step
_Next to you:_
talk Sir Finley Mrrgglton##152633
turnin Clues Abound##55658
accept Time for Heroics##55717 |or
accept A Historical Mess##55672 |or
accept A Growing Mystery##55688 |or
|tip You will only be able to accept one of these quests.
|only if haveq(55658) or completedq(55658)
step
talk Dunkin Crackjaw##153535
Tell him _"I'll see they are safe."_
Rescue Dunkin Crackjaw |q 55717/2 |goto 85.77,73.90
|only if haveq(55717)
step
talk Adalin Halfheight##153538
Tell him _"I will take care of it."_
Rescue Adalin Halfheight |q 55717/3 |goto 75.25,69.83
|only if haveq(55717)
step
talk Leona Mistcaller##153349
Tell him _"You are safe now."_
Rescue Leaona Mistcaller |q 55717/1 |goto 74.05,58.95
|only if haveq(55717)
step
kill Toxic Lurker##152653+
click Ancient Relics##325906+
|tip They look like piles of junk on the ground around this area.
collect 12 Tortollan Relics##168224 |q 55672/1 |goto 80.34,68.91
|only if haveq(55672)
step
Kill Mutated enemies around this area
collect 10 Runestone Fragments##168243 |q 55688/1 |goto 80.97,63.91
|only if haveq(55688)
step
_Next to you:_
talk Sir Finley Mrrgglton##152633
turnin Time for Heroics##55717 |only if haveq(55717)
turnin A Historical Mess##55672 |only if haveq(55672)
turnin A Growing Mystery##55688 |only if haveq(55688)
|only if haveq(55717,55672,55688)
step
Kill enemies around this area
collect Corrupted Data Disc##169474 |q 56410/1 |goto 70.18,60.21
|only if haveq(56410)
step
talk R33-DR##154122
Tell it _"I have a Corrupted Data Disc."_
Deliver the Corrupted Data Disc to R33-DR |q 56410/2 |goto 63.50,56.95
|only if haveq(56410)
step
kill Data Anomaly##152976 |q 56410/3 |goto 62.86,56.72
|only if haveq(56410)
step
talk R33-DR##154122
turnin Discs of Norgannon##56410 |goto 63.50,56.95
|only if haveq(56410)
step
talk Rocket-Chief Fuselage##151006
Tell him _"I am ready to begin!"_
Speak with Rocket-Chief Fusalge to Begin |q 54090/1 |goto 69.80,33.11
|only if haveq(54090)
step
Create the Perfect Weapon |q 54090/2 |goto 69.62,33.12
|tip Read what Fuselage says and click the appropriate item.
|only if haveq(54090)
step
click Volatile Blaster
Collect the Weapon |q 54090/3 |goto 69.80,32.98
|only if haveq(54090)
step
talk Rocket-Chief Fuselage##151006
turnin Toys For Destruction##54090 |goto 69.80,33.11
accept Battle Tested##56355 |goto 69.80,33.11
accept Playtime's Over##55528 |goto 69.80,33.11
|only if haveq(54090) or completedq(54090)
step
kill 10 Upgraded Sentry##150667 |q 56355/1 |goto 56.47,59.20
|tip You can find them all over this area.
|only if haveq(56355)
step
Kill Scrapbone enemies around this area
Slay #12# Scrapbone Troggs |q 55528/1 |goto 59.53,26.63
|only if haveq(55528)
step
talk Rico Bugsnapper##153324
accept Rico's Rescue##55885 |goto 82.91,23.26
|only if haveq(55765)
stickystart "Exterminate_Motospiders"
step
clicknpc Trooper Bybee##153344
Rescue Trooper Bybee |q 55885/1 |goto 83.88,14.49
|only if haveq(55885)
step
clicknpc Trooper Levy##153336
Rescue Trooper Levy |q 55885/2 |goto 88.58,19.33
|only if haveq(55885)
step
clicknpc Trooper Katrin##153342
Rescue Trooper Katrin |q 55885/3 |goto 87.99,26.78
|only if haveq(55885)
step
label "Exterminate_Motospiders"
Kill Motospider enemies around this area
|tip Kill Motospider Eggs to release more.
Exterminate #15# Motospiders |q 55765/1 |goto 81.69,27.22
|only if haveq(55765)
step
click Useful Bits and Pieces
|tip Search around the area, it may not be in this exact location.
accept Waste Not##56508 |goto 43.16,41.31 |or
|tip
Click Here if this Quest is Not Available |confirm |or
|only if haveq(56471)
stickystart "Collect_Useful_Bits_And_Pieces"
stickystart "Kill_Tech_Scavengers"
step
kill Pummeller Red##155220 |q 56471/2 |goto 43.89,46.58
|only if haveq(56471)
step
kill Pummeller Orange##155227 |q 56471/3 |goto 39.92,37.98
|only if haveq(56471)
step
kill Pummeller Grey##155228 |q 56471/1 |goto 41.03,31.60
|only if haveq(56471)
step
label "Collect_Useful_Bits_And_Pieces"
click Useful Bits and Pieces##329714+
|tip They look like small piles of parts on the ground around this area.
collect 20 Useful Bits and Pieces##169686 |q 56508/1 |goto 44.13,39.38
|only if haveq(56508)
step
label "Kill_Tech_Scavengers"
kill 12 Tech-Scavenger##155204 |q 56493/1 |goto 43.64,38.80
|only if haveq(56493)
step
kill Lifting Specialist Gogo##155259
collect BOOM-TASTIC 3000##169681 |goto 42.83,41.90 |q 56501 |future
|only if haveq(56493) and not haveq(56508)
step
use the BOOM-TASTIC 3000##169681
|tip Use it on Venture Co. Transports floating in the air.
Destroy #5# Venture Co. Transports |q 56501/1 |goto 41.22,40.18
|only if haveq(56501)
stickystart "Kill_Roadtrogg"
step
kill Junkbrat##150393 |q 56434/1 |goto 58.80,42.15
|only if haveq(56434)
step
label "Kill_Roadtrogg"
kill Roadtrogg##150389 |q 56434/2 |goto 58.58,42.04
|only if haveq(56434)
step
use the Quasi-Faceted Scanner##169816
|tip Use it on creatures all over Mechagon Island
Scan Creatures in Mechagon |q 56572/1 |goto 66.11,28.85
|only if haveq(56572)
step
use the Clobberbottom's Boomer##168430
|tip Use it on Mechagon Containment Crates flying in the air around this area.
|tip Stand under them in the green circle and catch the gnomes before they hit the ground.
Catch #6# Mechagnomes |q 55905/1 |goto 65.83,40.73
|only if haveq(55905)
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
use the Spark-7143##169839
Activate Spark-7143 in The Outflow |q 56621/1 |goto Mechagon Island/0 72.94,59.49
|only if haveq(56621)
step
kill Animated Sludge##155481+
click Dredged Canister##332631+
Collect #15# Discarded Technology |q 56621/2 |goto 72.94,59.49
|only if haveq(56621)
step
click Twitching Heap+
|tip They look like small piles of mechanical trash on the ground around this area.
|tip Kill the enemy that spawns or run away if they begin to explode.
collect 15 Salvaged Mechagnome Appendage##169807 |q 56573/1 |goto 70.96,42.09
|only if haveq(56573)
step
click Alpha Wire##152018
Grab the Alpha Wire |havebuff 136101 |goto 64.36,39.12 |q 54082
|only if haveq(54082)
step
click Alpha Pylon##152022
Attach Alpha Wire to Alpha Pylon |q 54082/1 |goto 65.74,38.50
|only if haveq(54082)
step
click Beta Wire##152054
Grab the Beta Wire |havebuff 136101 |goto 65.88,38.45 |q 54082
|only if haveq(54082)
step
click Beta Pylon##152026
Attach Beta Wire to Beta Pylon |q 54082/2 |goto 67.03,38.30
|only if haveq(54082)
step
click Gamma Wire##152062
Grab the Gamma Wire |havebuff 136101 |goto 67.13,38.27 |q 54082
|only if haveq(54082)
step
click Gamma Pylon##152027
|tip Run up the pipe to reach it.
Attach Gamma Wire to Gamma Pylon |q 54082/3 |goto 68.72,38.10
|only if haveq(54082)
step
click Delta Wire##152063
Grab the Delta Wire |havebuff 136101 |goto 68.83,38.10 |q 54082
|only if haveq(54082)
step
click Delta Pylon##152073
|tip Run up the pipe to reach it.
Attach Delta Wire to Delta Pylon |q 54082/4 |goto 70.39,39.21
|only if haveq(54082)
step
Kill enemies around this area
use the NRG-100##168122
Charge #6# Energy Cells |q 55880/2 |goto 70.83,42.17
|only if haveq(55880)
step
talk Dashman Hammerall##153701
accept Nuke 'Em Norbit##56532 |goto 80.87,18.88 |or
|tip
Click Here if this Quest is Not Available |confirm |or |next "Accept_Deck_Em"
step
click Norbit Control Pannel
Activate the Norbit Controls |q 56532/1 |goto 80.77,18.61
|only if haveq(56532)
stickystart "Destroy_Motospiders"
step
kill Reinforced Sparkweave Egg##155341+
|tip Use the "Scrap Bomb" ability on your vehicle bar.
Destroy #5# Reinforced Sparkweave Eggs |q 56532/3 |goto 87.36,20.47
|only if haveq(56532)
step
label "Destroy_Motospiders"
Kill Motospider enemies around this area
|tip Use the abilities on your vehicle bar.
Destroy #40# Motospiders |q 56532/2 |goto 87.36,20.47
|only if haveq(56532)
step
Leave Norbit |outvehicle |q 56532
|tip Click the "Exit Vehicle" button on your vehicle bar.
|only if haveq(56532)
step
talk Dashman Hammerall##153701
turnin Nuke 'Em Norbit##56532 |goto 80.87,18.88
|only if haveq(56532)
step
label "Accept_Deck_Em"
talk Adalin Halfheight##153538
accept Deck 'Em##56049 |goto 75.23,69.81 |or
|tip
Click Here if this Quest is Not Available |confirm |or |next "Accept_Bots_Gone_Wild"
step
kill Gluttonous Ooze##153544
collect Adalin's Cards##168754 |q 56049/1 |goto 75.31,74.03
|only if haveq(56049)
step
talk Adalin Halfheight##153538
turnin Deck 'Em##56049 |goto 75.23,69.81
|only if haveq(56049)
step
label "Accept_Bots_Gone_Wild"
talk Tyler Swaptech##154655
accept Bots Gone Wild##56334 |goto 59.92,69.63 |or
|tip
Click Here if this Quest is Not Available |confirm |or |next "Accept_Pedram_Mechanotrax"
step
kill Whirling Zap-O-Matic##154608 |q 56334/1 |goto 58.83,77.74
|only if haveq(56334)
step
talk Tyler Swaptech##154655
turnin Bots Gone Wild##56334 |goto 59.92,69.63
|only if haveq(56334)
step
label "Accept_Pedram_Mechanotrax"
talk Pedram Mechanotrax##154568
accept Aim High##55813 |only if questpossible |or
accept Ravenous Rescue##56326 |only if questpossible |or
Accept a Daily Quest |complete false |goto 62.09,76.89 |or
|tip
Click Here if No Quest is Available |confirm |or |next "Accept_A_Gulper_Ate_The_Rolly"
step
Kill Rustwing enemies around this area
Slay #12# Rustwing Ravens |q 55813/1 |goto 63.87,77.46
|only if haveq(55813)
step
talk Pedram Mechanotrax##154568
turnin Aim High##55813 |goto 62.09,76.89
|only if haveq(55813)
step
clicknpc Injured Mechagnome##153271+
|tip They look like injured gnomes around this area.
Rescue #8# Injured  Mechagnomes |q 56326/1 |goto 64.13,77.37
|only if haveq(56326)
step
talk Pedram Mechanotrax##154568
turnin Ravenous Rescue##56326 |goto 62.09,76.89
|only if haveq(56326)
step
label "Accept_A_Gulper_Ate_The_Rolly"
talk Danielle Anglers##151462
accept A Gulper Ate The Rolly##56373 |goto 37.04,47.15 |or
|tip
Click Here if this Quest is Not Available |confirm |or |next "Accept_Grounded"
'|complete not completedq(56305) |or |next "Accept_Grounded"
step
Follow the path up |goto 44.25,33.75 < 20 |only if walking
kill Rolly Gulper##154816 |q 56373/1 |goto 47.98,28.01
|only if haveq(56373)
step
cast Fishing##131474
|tip Fish in the Bubble-Eyed Rolley Schools around the pond.
collect 3 Bubble-eyed Rolly##169391 |q 56373/2 |goto 47.78,28.02
|only if haveq(56373)
step
talk Danielle Anglers##151462
turnin A Gulper Ate The Rolly##56373 |goto 37.04,47.15
|only if haveq(56373)
step
label "Accept_Grounded"
talk Brian Pitchspark##154906
accept Grounded##56380 |goto 42.82,29.38 |or
|tip
Click Here if this Quest is Not Available |confirm |or |next "Do_Not_Drink"
step
kill Aerial Patroller XZ-2##149850 |q 56380/1 |goto 40.29,25.59
|only if haveq(56380)
step
talk Brian Pitchspark##154906
turnin Grounded##56380 |goto 42.82,29.38
|only if haveq(56380)
step
label "Do_Not_Drink"
talk Koupal Oilshins##153750
accept Do Not Drink##56328 |goto 59.06,31.62 |only if default |or
accept Do Not Drink##55994 |goto 59.06,31.62 |only if completedq(56328) |or
|tip
Click Here if this Quest is Not Available |confirm |or |next "Accept_Chopped_Bots"
step
click Stolen Oil##327673+
|tip They look like clusters of oil cans on the ground around this area.
kill Scrapbone Oilspewer##151667+
collect 12 Stolen Oil##168608 |q 56328/1 |goto 58.93,28.42 |only if haveq(56328)
collect 12 Stolen Oil##168608 |q 55994/1 |goto 58.93,28.42 |only if haveq(55994)
|only if not completedq(55994)
step
talk Koupal Oilshins##153750
turnin Do Not Drink##56328 |goto 59.06,31.62 |only if default
turnin Do Not Drink##55994 |goto 59.06,31.62 |only if completedq(56328)
|only if not completedq(55994)
step
label "Accept_Chopped_Bots"
talk Bolten Springspark##150086
accept Chopped Bots##54965 |goto 63.15,39.28 |only if default |or
accept Chopped Bots##56327 |goto 63.15,39.28 |only if completedq(54965) |or
|tip
Click Here if this Quest is Not Available |confirm |or |next "Accept_That_New_Mount_Smell"
step
talk Bolten Springspark##150086
Tell him _"I can't find my Bot Re-Energizer."_
Obtain a Bot Re-Energizer |havebuff spell:290594 |goto 63.15,39.28 |q 54965 |only if haveq(54965)
Obtain a Bot Re-Energizer |havebuff spell:290594 |goto 63.15,39.28 |q 56327 |only if haveq(56327)
|only if haveq(54965,56327)
step
Kill enemies around this area
|tip Use the "Bot Re-Energizer" ability on-screen after they die.
Deliver #12# Re-animated Bots to Bolten Springspark |q 54965/1 |goto 68.56,42.81 |only if haveq(54965)
Deliver #12# Re-animated Bots to Bolten Springspark |q 56327/1 |goto 68.56,42.81 |only if haveq(56327)
|tip
Deliver them here [63.24,38.85]
|only if haveq(54965,56327)
step
talk Bolten Springspark##150086
turnin Chopped Bots##54965 |goto 63.15,39.28 |only if haveq(54965)
turnin Chopped Bots##56327 |goto 63.15,39.28 |only if haveq(56327)
|only if haveq(54965,56327)
step
label "Accept_That_New_Mount_Smell"
talk Cork Stuttguard##152321
accept That New Mount Smell##55695 |goto 63.34,42.93 |or
|tip
Click Here if this Quest is Not Available |confirm |or |next "Turnin_Quests"
step
click Golden Cogpaste##325980+
|tip They look like gold-colored paste near tubes and machinery around this area.
collect 8 Golden Cogpaste##168246 |q 55695/1 |goto 70.67,60.35
|only if haveq(55695)
step
talk Cork Stuttguard##152321
turnin That New Mount Smell##55695 |goto 63.34,42.93
|only if haveq(55695)
step
label "Contribute_To_Construction_Projects"
Contribute to Construction Projects |q 56405/1
|tip Construction projects can be found all over Mechagon Island.
|tip You will need spare parts and/or energy cells.
|only if haveq(56405)
step
label "Complete_A_Construction_Project"
Complete a Construction Project |q 56405/2
|tip Construction projects can be found all over Mechagon Island.
|tip You will need spare parts and/or energy cells.
|only if haveq(56405)
step
label "Turnin_Quests"
talk Dread Captain DeMeza##154335
turnin Pirates, Sea Monsters, Robots##56184 |goto 71.74,38.85
|only if haveq(56184)
step
talk Steelsage Gao##152575
turnin Other Interests##56174 |goto 73.55,34.29 |only if haveq(56174)
turnin Other Interests##55815 |goto 73.55,34.29 |only if haveq(55815)
turnin Other Interests##56172 |goto 73.55,34.29 |only if haveq(56172)
turnin Other Interests##56173 |goto 73.55,34.29 |only if haveq(56173)
|only if haveq(56174,55815,56172,56173)
step
talk Moxie Lockspinner##152499
turnin One Gnome's Trash##55575 |goto 73.71,34.35
|only if haveq(55575)
step
talk Grumbol Grimhammer##155357
turnin Off-the-Books Brawlin'##56558 |goto 70.18,30.50
|only if haveq(56558)
step
talk Bolten Springspark##150086
turnin Chopped Bots##56327 |goto 63.15,39.28
|only if haveq(56327)
step
talk Cork Stuttguard##152321
turnin That New Mount Smell##55695 |goto 63.34,42.94
|only if haveq(55695)
step
talk Mylune##151936
turnin Aid From Nordrassil##55463 |goto 72.17,37.26
|only if haveq(55463)
step
talk Chromie##153993
turnin The Other Place##55816 |goto 70.21,30.92
|only if haveq(55816)
step
talk Razak Ironsides##152932
turnin Bugs, Lots Of 'Em!##55765 |goto 75.86,34.38 |only if haveq(55765)
turnin Rico's Rescue##55885 |goto 75.86,34.38 |only if haveq(55885)
|only if haveq(55765,55885)
step
talk Maokka##155187
turnin Unprofitable Ventures##56471 |goto 72.15,37.14
|only if haveq(56471)
step
talk Scrollsage Nola##155188
turnin Taking The Air Out##56501 |goto 72.23,37.28 |only if haveq(56501)
turnin A Direct Approach##56493 |goto 72.23,37.28 |only if haveq(56493)
|only if haveq(56501,56493)
step
talk Walton Cogfrenzy##154967
turnin Cogfrenzy's Construction Frenzy##56405 |goto 73.49,33.39
|only if haveq(56405)
step
talk Izira Gearsworn##153641
turnin Wanted: Junkbrat and Roadtrogg##56434 |goto 73.57,35.65
|only if haveq(56434)
step
talk Jepetto Joybuzz##155450
turnin Toys Like Us##56572 |goto 70.26,32.97
|only if haveq(56572)
step
talk Penny Clobberbottom##153373
turnin Abduction Reduction##55905 |goto 70.89,37.66
|only if haveq(55905)
step
talk Rocket-Chief Fuselage##151006
turnin Battle Tested##56355 |goto 69.80,33.11
turnin Playtime's Over##55528 |goto 69.80,33.11
|only if haveq(56355,55528)
step
talk Flip Quickcharge##150630
turnin Real Ultimate Power##56621 |goto 70.84,39.12 |only if haveq(56621)
turnin More Power##54082 |goto 70.84,39.12 |only if haveq(54082)
|only if haveq(56621,54082)
step
talk Christy Punchcog##152747
turnin Waste Not##56508 |goto 69.76,32.35
|only if haveq(56508)
step
talk Pristy Quickcharge##150631
turnin Certified Pre-Owned##56573 |goto 70.75,38.42 |only if haveq(56573)
turnin Redistribution of Power##55880 |goto 70.75,38.42 |only if haveq(55880)
|only if haveq(56573,55880)
step
collect 250 Spare Parts##166846 |q 55213
|tip Spare Parts can be collected from mobs, quests, and chests around Mechagon Island.
|only if haveq(55213)
step
collect 1 Energy Cell##166970 |q 55213
|tip Energy Cells can be collected from mobs, quests, and chests around Mechagon Island.
|only if haveq(55213)
step
collect 5 Empty Energy Cell##166971 |q 55213
|tip Empty Energy Cells can be collected from mobs, quests, and chests around Mechagon Island.
|tip Chests are the fastest method of collecting them.
|only if haveq(55213)
step
talk Flux##154534
accept Wanna Charge? Gotta Pay!##56335 |goto 61.23,37.40
|only if haveq(55213)
step
click Charging Station
Charge #5# Empty Energy Cells at the Charging Station |q 55213/2 |goto 61.20,37.54
|only if haveq(55213)
step
talk Pristy Quickcharge##150631
turnin Energy Cells for Everyone##55213 |goto 70.74,38.42 |only if haveq(55213)
|only if haveq(55213)
step
You have completed all Mechagon dailies for the day
|tip This guide will reset when more become available.
'|complete not completedq(56184,55575,54090,56523,56558,55463,55816,55658,56410,55765,56573,55880,55695,56327,56405,56471,56493,56434,56572,55905,56621,54082) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Battle for Azeroth\\Mechagon Island\\Mechagon Fishing Dailies",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the various Fishing daily quests on Mechagon Island.",
condition_suggested=function() return level >= 50 end,
},[[
step
label "Begin_Dailies"
cast Fishing##131474
|tip Fish in the water around Broken Point.
accept Spitting Clownfish##55309 |goto Mechagon Island/0 83.86,72.57
|tip You will eventually automatically accept this quest after looting.
step
cast Fishing##131474
|tip Fish in the water around The Heaps.
accept Bottom Feeding Stinkfish##55299 |goto 66.18,53.16
accept Sludge-fouled Carp##55310 |goto 66.18,53.16
|tip You will eventually automatically accept these quests after looting.
step
cast Fishing##131474
|tip Fish in the water around the small pond at Scrapbone Den.
accept Pond Hopping Springfish##55306 |goto 56.43,32.68
|tip You will eventually automatically accept this quest after looting.
step
Enter the cave |goto 58.63,23.52 < 30 |walk
cast Fishing##131474
|tip Fish in the water inside the cave.
accept Shadowy Cave Eel##55307 |goto 56.93,21.66
|tip You will eventually automatically accept this quest after looting.
step
cast Fishing##131474
|tip Fish in the water around the small pond at the base of the waterfall.
accept Tasty Steelfin##55313 |goto 48.44,36.78
|tip You will eventually automatically accept this quest after looting.
step
cast Fishing##131474
|tip Fish in the waters around the Western Spray.
accept Mechanical Blowfish##55308 |goto 26.25,78.51
|tip You will eventually automatically accept this quest after looting.
step
cast Fishing##131474
|tip Fish in the waters along the coast.
accept Bolted Steelhead##55305 |goto 36.13,49.01
accept Energized Lightning Cod##55311 |goto 36.13,49.01
accept Solarsprocket Barbel##55312 |goto 36.13,49.01
|tip You will eventually automatically accept these quests after looting.
step
talk Danielle Anglers##151462
turnin Bolted Steelhead##55305 |goto 37.04,47.16
turnin Energized Lightning Cod##55311 |goto 37.04,47.16
turnin Solarsprocket Barbel##55312 |goto 37.04,47.16
turnin Spitting Clownfish##55309 |goto 37.04,47.16
turnin Bottom Feeding Stinkfish##55299 |goto 37.04,47.16
turnin Pond Hopping Springfish##55306 |goto 37.04,47.16
turnin Shadowy Cave Eel##55307 |goto 37.04,47.16
turnin Mechanical Blowfish##55308 |goto 37.04,47.16
turnin Sludge-fouled Carp##55310 |goto 37.04,47.16
turnin Tasty Steelfin##55313 |goto 37.04,47.16
step
You have completed all Mechagon Fishing dailies for the day
|tip This guide will reset when more become available.
'|complete not completedq(55305,55311,55312,55309,55299,55306,55307,55308,55310) |next "Begin_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Battle for Azeroth\\Battle Pets\\Battle Pet Dungeons\\Stratholme Weekly",{
patch='unknown',
source='unknown',
author="support@zygorguides.com",
description="\nThis guide will assist you in completing the weely Stratholme pet battle dungeon quest.",
keywords={"Pet", "Battle"},
condition_suggested=function() return level >= 50 and completedq(54185) and completedq(56491) and not completedq(56492) end,
condition_end=function() return completedq(56492) end,
condition_valid=function() return level >= 50 and completedq(56491) end,
condition_valid_msg="You have not unlocked the Stratholme pet battle dungeon!\n"..
"Complete the quest \"Tiny Terrors of Stratholme\" in the "..
"\"Stratholme\" pet battle guide.",
startlevel=50.0,
},[[
step
Complete the "Stratholme" Pet Dungeon Guide |complete completedq(56491)
step
talk Sean Wilkers##150987
accept Pet Battle Challenge: Stratholme##56492 |goto Eastern Plaguelands/0 43.13,19.93
step
talk Sean Wilkers##150987
Tell him _"I'm ready, send me into Stratholme!"_
Ask Sean Wilkers to Open the Stratholme Service Entrance |q 56492/1 |goto 43.13,19.94
step
Accept the Scenario Queue |scenariostart |q 56492
step
clicknpc Belchling##150923
Defeat Belchling |scenariogoal 1/45436 |goto Stratholme Battle Pet/0 66.62,52.79 |q 56492
step
clicknpc Sludge Belcher##150922
Defeat the Sludge Belcher |scenariogoal 2/45437 |goto 66.71,52.62 |q 56492
step
clicknpc Wandering Phantasm##150914
|tip It wanders around this area.
Defeat the Wandering Phantasm |scenariogoal 3/45439 |goto 60.24,44.45 |q 56492
step
clicknpc Crypt Fiend##150911
Defeat the Crypt Fiend |scenariogoal 3/45438 |goto 58.07,43.11 |q 56492
step
clicknpc Liz the Tormentor##150925
Defeat Liz the Tormentor |scenariogoal 4/45441 |goto 57.73,45.81 |q 56492
step
Reach Slaughter Square |scenariogoal 5/45442 |goto 58.14,37.47 |q 56492
step
clicknpc Plagued Critters##155145
Choose _"Extermination Time!"_
Defeat the Plagued Critters |scenariogoal 6/45444 |goto 57.71,37.11 |q 56492
step
clicknpc Risen Guard##155267
Defeat the Risen Guard |scenariogoal 7/45490 |goto 59.90,30.25 |q 56492
step
clicknpc Nefarious Terry##150929
Defeat Nefarious Terry |scenariogoal 8/45446 |goto 56.59,22.00 |q 56492
step
clicknpc Cleansed Sludge Belcher##151191
Control the Cleansed Sludge Belcher |invehicle |goto 52.65,20.12 |q 56492
step
Kill enemies around this area
|tip Use the abilities on your vehicle bar.
Clear the Courtyard of Undead |scenariostage 9 |goto 46.72,20.33 |q 56492
step
Stop Controlling the Cleansed Sludge Belcher |outvehicle |q 56492
|tip Click the "Exit" button on your vehicle bar.
step
Enter the building |goto 42.75,20.32 < 5 |walk
clicknpc Tommy the Cruel##150918
|tip Inside the building.
Defeat Tommy the Cruel |scenariogoal 10/45447 |goto 38.46,21.58 |q 56492
step
clicknpc Huncher##150917
|tip Inside the building.
Defeat Huncher |scenariogoal 10/45448 |goto 38.54,19.03 |q 56492
step
Watch the dialogue
clicknpc Blackmane##150858
|tip Inside the building.
|tip Blackmane will resurrect after being killed.
|tip After resurrection, Blackmane will gain the Undead pet ability to return to life for one round after being killed.
Defeat Blackmane |scenariogoal 11/45449 |goto 37.49,20.45 |q 56492
step
talk Sean Wilkers##155346
Tell him _"This place is scary, get me out of here!"_
Leave Stratholme |goto 37.35,21.34 > 100 |c |q 56492
step
talk Sean Wilkers##150987
turnin Pet Battle Challenge: Stratholme##56492 |goto Eastern Plaguelands/0 43.13,19.93
]])
ZygorGuidesViewer:RegisterGuide("Dailies Guides\\Battle for Azeroth\\Collected Tidebloom Honey",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the \"Unbeelievable Quality\" weekly "..
"quest for the Honeyback Hive faction.",
condition_suggested=function() return rep("Honeyback Harvester") == Mature and rep("Honeyback Hive") == Exalted and not completedq(57670) end,
condition_valid=function() return rep("Honeyback Harvester") == Mature and rep("Honeyback Hive") == Exalted end,
condition_valid_msg="You must first earn the \"Honeyback Hive\" and \"Honeyback Harvester\" reputation guides.",
condition_end=function() return completedq(57670) end,
},[[
step
Reach Exalted Reputation with the Honeyback Hive |complete rep("Honeyback Hive") == Exalted
|tip Use the "Honeyback Hive" reputation guide to accomplish this.
step
Reach Mature Reputation with the Honeyback Harvester |complete rep("Honeyback Harvester") == Mature
|tip Use the "Honeyback Harvester" reputation guide to accomplish this.
step
label "Gain_Beeholder's_Buff"
use the Beeholder's Goggles##169109
Gain the "Beeholder's Goggles" Buff |havebuff spell:299445 |or
'|complete completedq(57670) |or
step
label "Kill_Honey_Smasher"
kill Honey Smasher##154154
|tip It walks up and down the coast around this area.
|tip Loot the corpse before you leave.
Defeat the Honey Smasher |q 57726 |goto Stormsong Valley/0 61.41,16.20 |future |or
'|complete completedq(57670) |or
step
label "Reach_Mature_Reputation"
map Stormsong Valley/0
path follow smart; loop on; ants curved; dist 30
path	63.60,25.67	64.12,30.21	61.81,31.00	64.01,37.28	62.08,46.11
path	61.47,51.92	63.13,51.40	64.24,52.43	72.31,52.16	68.25,55.41
path	66.00,58.21	66.93,63.51	71.32,67.24	69.71,75.98	66.43,70.37
path	61.45,55.92	56.21,58.78	58.30,54.29	54.72,48.45	53.34,43.12
path	52.53,39.13	55.23,41.02	55.24,38.46	56.06,37.13	55.10,31.26
path	51.36,31.93	47.47,32.20	44.51,36.66	49.85,36.74	46.55,41.98
path	44.63,49.27	47.97,62.33	40.89,62.15	35.11,64.45	33.24,67.87
path	33.39,71.99	29.82,76.19	25.88,74.30	25.51,67.16	31.46,60.14
path	35.55,52.37	36.77,47.69	40.39,47.35	37.33,37.29	33.15,32.86
path	47.39,25.42	52.37,27.08	53.91,27.73	55.78,27.94	57.58,30.01
path	58.85,30.83	61.37,28.86	58.58,28.41	56.23,22.87	56.40,18.77
path	58.27,21.38	61.40,22.33	63.27,22.24
click Jelly Deposit##327516+
click Large Jelly Deposit##328429+
|tip They look like clusters of honeycomb on the ground all over Stormsong Valley.
|tip Exchange Jellies at the Honeyback Hivemother in the Honeyback Hatchery.
talk Honeyback Harvester##155069
|tip They will occasionally appear on your minimap as gold-colored stars.
|tip You will also see a patch of flowers illuminated by sunlight.
|tip This will spawn waves of enemies and sometimes a rare or elite.
|tip You will have 5 minutes to clear 15 waves.
|tip A large group with party buffs is beneficial.
Choose _<Makes some strange gestures.>_
collect 35 Royal Jelly##168828 |or
'|complete not completedq(57726,57670) |or |next "Kill_Honey_Smasher"
'|complete not hasbuff("spell:299445") and not completedq(57670) |or |next "Gain_Beeholder's_Buff"
'|complete completedq(57670) |or
step
talk Honeyback Hivemother##153365
|tip Inside the cave.
buy 1 Collected Tidebloom Honey##172383 |goto 62.45,26.05 |q 57670 |future
step
use the Collected Tidebloom Honey##172383
accept Unbeelievable Quality##57670
|tip You will accept this quest automatically.
step
talk "Nasty" Buck##138221
|tip Inside the building.
turnin Unbeelievable Quality##57670 |goto 58.63,70.26
step
You have completed this weekly quest
|tip This guide will reset when you can complete it again.
'|complete not completedq(57670) |next "Gain_Beeholder's_Buff"
]])
