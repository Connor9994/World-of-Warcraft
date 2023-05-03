local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("AchievementsCDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Exploration\\Dragon Isles\\Dragonscale Expedition: The Highest Peaks")
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Symbols of Hope",{
author="support@zygorguides.com",
description="\nRelease 10 Hope Kites that were tethered by locals of the Waking Shores while waiting for the dragonflights' return.",
condition_suggested=function() return level == 60 and not achieved(16584) end,
achieveid={16584},
startlevel=60,
keywords={"Dragonflight","Exploration","Kite"},
patch='100002',
},[[
step
click Hope Kite
|tip On the edge of the platform.
Release the Apex Canopy Hope Kite |q 72101 |goto The Waking Shores/0 24.04,89.94 |future |notravel
step
click Hope Kite
|tip At the top of the tower.
Release the Obsidian Observatory Hope Kite |q 72100 |goto The Waking Shores/0 43.55,63.82 |future |notravel
step
click Hope Kite
|tip On the edge of the platform.
Release The Overflowing Spring Hope Kite |q 72102 |goto The Waking Shores/0 50.27,55.62 |future |notravel
step
click Hope Kite
|tip Inside the top of the tower.
Release the Crumbling Life Archway Hope Kite |q 72098 |goto The Waking Shores/0 56.73,57.99 |future |notravel
step
click Hope Kite
|tip Inside the top of the tower.
Release the Concord Observatory Hope Kite |q 72103 |goto The Waking Shores/0 57.12,46.39 |future |notravel
step
click Hope Kite
|tip On the edge of the platform.
Release the Overflowing Rapids Hope Kite |q 72104 |goto The Waking Shores/0 48.86,39.94 |future |notravel
step
click Hope Kite
|tip Inside the top of the tower.
Release the Life-Binder Conservatory Hope Kite |q 72105 |goto The Waking Shores/0 57.01,19.98 |future |notravel
step
click Hope Kite
|tip At the top of the tower.
Release the Wingrest Embassy Hope Kite |q 72096 |goto The Waking Shores/0 73.19,37.76 |future |notravel
step
click Hope Kite
|tip On top of the wall.
Release the Skytop Observatory Hope Kite |q 72097 |goto The Waking Shores/0 73.03,52.92 |future |notravel
step
click Hope Kite
|tip Inside the top of the tower.
Release the Hatchery Observatory Hope Kite |q 72099 |goto The Waking Shores/0 61.69,80.83 |future |notravel
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Quests\\Dragonflight\\Ancient Waygates")
ZygorGuidesViewer:RegisterGuidePlaceholder("Achievement Guides\\Reputation\\Dragonflight\\Ready, Aim, Catalog!")
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Dragonflight\\Which Knot Was It Again?",{
author="support@zygorguides.com",
description="\nUnlock climbing World Quests with the Dragonscale Expedition.",
condition_suggested=function() return level >= 60 and factionrenown(2507) >= 6 and not achieved(16624) end,
achieveid={16624},
startlevel=60,
patch='100002',
},[[
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 6 with the Dragonscale Expedition |complete factionrenown(2507) >= 6
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
talk Pathfinder Jeb##187700
turnin A Climber's Calling##69855 |goto The Waking Shores/0 47.33,83.40
accept Basic Climbing Gear##72524 |goto 47.33,83.40
step
click Climbing Gear
|tip Click the "Climbing Gear" ability at the top of the middle row.
Research the Climbing Gear Ability |q 72524/1 |goto 47.30,83.39
step
talk Pathfinder Jeb##187700
turnin Basic Climbing Gear##72524 |goto 47.33,83.40
accept Smoke Over the Mountain##66351 |goto 47.33,83.40
step
talk Rocky Dustbeard##181039
turnin Smoke Over the Mountain##66351 |goto 62.35,50.45
accept Climb Every Mountain##65421 |goto 62.35,50.45
step
click Climbing Gear
Put on the Climbing Gear |q 65421/1 |goto 62.35,50.54
step
click Handhold
Find a Handhold on the Cliff |q 65421/2 |goto 63.30,50.14
step
click Clinging Gustbloom Sample
|tip Click the handholds to reach the Gustbloom.
collect Clinging Gustbloom Sample##191138 |q 65421/3 |goto 63.25,49.81
step
Climb to the right |goto 63.46,50.02 < 5 |walk
clicknpc Pathfinder Yips##187349
Rescue Pathfinder Yips |q 65421/4 |goto 63.09,49.82
step
talk Rocky Dustbeard##181039
turnin Climb Every Mountain##65421 |goto 62.35,50.45
step
achieve Which Knot Was It Again?##16624
]])
