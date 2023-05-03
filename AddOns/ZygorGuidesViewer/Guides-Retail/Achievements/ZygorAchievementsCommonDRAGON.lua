local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("AchievementsCDRAGON") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Exploration\\Dragon Isles\\Dragonscale Expedition: The Highest Peaks",{
author="support@zygorguides.com",
description="\nPlace a flag on 10 of the tallest peaks in the Dragon Isles.",
condition_suggested=function() return level == 70 and factionrenown(2507) >= 6 and not achieved(64556) end,
achieveid={15890},
startlevel=70,
keywords={"Dragonflight","Exploration","Flag","Reputation"},
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
click Expedition Supply Kit
Learn the Cartographer's Flag Ability |specialtalent Cartographer's Flag##2164 |goto The Waking Shores/0 47.31,83.38
step
click Dragonscale Expedition Flag
Plant the Wingrest Embassy Flag |q 70824 |goto The Waking Shores/0 73.36,38.85 |future |notravel
step
click Dragonscale Expedition Flag
|tip Up on the top of the tower.
Plant the Concord Observatory Flag |q 70823 |goto The Waking Shores/0 56.02,45.41 |future |notravel
step
click Dragonscale Expedition Flag
|tip Up on the top of the tower.
Plant the Obsidian Observatory Flag |q 70825 |goto The Waking Shores/0 43.97,62.95 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
|tip If you have trouble landing, fly into the side of the mountain and then straight up to stall your speed.
|tip Then try to descend onto the peak.
Plant the Dragonbane Keep Flag |q 70826 |goto The Waking Shores/0 28.71,47.73 |future |notravel
step
click Dragonscale Expedition Flag
|tip On top of the mountain.
Plant the Flashfrost Enclave Flag |q 71204 |goto The Waking Shores/0 54.80,74.12 |future |notravel
step
click Dragonscale Expedition Flag
|tip Inside the top of the tower.
Plant the Rusza'thar Reach Flag |q 71208 |goto Ohn'ahran Plains/0 86.31,39.28 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the top of the statue.
Plant the Ohn'ahra's Roost Flag |q 70827 |goto Ohn'ahran Plains/0 57.75,30.81 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
|tip If you have trouble landing, fly into the side of the mountain and then straight up to stall your speed.
|tip Then try to descend onto the peak.
Plant the Nokhudon Hold Flag |q 71207 |goto Ohn'ahran Plains/0 30.39,36.46 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Teerakai Flag |q 71200 |goto Ohn'ahran Plains/0 28.32,77.64 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Ancient Outlook Flag |q 71215 |goto The Azure Span/0 31.91,27.03 |future |notravel
step
click Dragonscale Expedition Flag
|tip On the balcony at the top of the tower.
Plant the Cobalt Assembly Flag |q 71218 |goto The Azure Span/0 46.14,24.99 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Azure Archives Flag |q 71216 |goto The Azure Span/0 37.47,66.21 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Snowhide Camp Flag |q 71220 |goto The Azure Span/0 63.08,48.66 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the top of the mountain.
Plant the Vakthros Range Flag |q 71221 |goto The Azure Span/0 74.85,43.24 |future |notravel
step
click Dragonscale Expedition Flag
Plant the Theron's Watch Flag |q 71217 |goto The Azure Span/0 77.44,18.38 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Eon's Fringe Flag |q 71223 |goto Thaldraszus/0 65.72,74.98 |future |notravel
step
click Dragonscale Expedition Flag
|tip On top of the floating rock.
Plant the Vault of the Incarnates Flag |q 71224 |goto Thaldraszus/0 64.63,56.72 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Stormshroud Peak Flag |q 70039 |goto Thaldraszus/0 50.16,81.63 |future |notravel
step
click Dragonscale Expedition Flag
|tip At the tip of the mountain.
Plant the Bluefeather Cliffs Flag |q 70024 |goto Thaldraszus/0 46.10,73.98 |future |notravel
step
click Dragonscale Expedition Flag
Plant the South Hold Gate Flag |q 71222 |goto Thaldraszus/0 34.04,84.85 |future |notravel
]])
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
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Quests\\Dragonflight\\Ancient Waygates",{
author="support@zygorguides.com",
description="\nUnlock all of the Ancient Waygate locations in the Dragon Isles.",
condition_suggested=function() return level >= 60 and factionrenown(2507) >= 7 and not achieved(16292) end,
achieveid={16292},
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
Reach Renown Level 7 with the Dragonscale Expedition |complete factionrenown(2507) >= 7
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
accept Dormant Discovery##66595
|tip You will accept this quest automatically.
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Dormant Discovery##66595 |goto The Waking Shores/0 47.20,90.25
accept This Old Stone##66597 |goto 47.20,90.25
step
click Etched Ancient Monolith
Choose _<Inspect the monolith.>_
Investigate the Etched Ancient Monolith |q 66597/1 |goto 47.28,90.30
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin This Old Stone##66597 |goto 47.20,90.25
accept Nightborne Know-How##66598 |goto 47.20,90.25
step
talk Warpcaster Delandra##189764
turnin Nightborne Know-How##66598 |goto The Azure Span/0 45.93,40.65
accept Curiosity is Key##70215 |goto 45.93,40.65
step
talk Warpcaster Delandra##189764
Ask her _"What can you tell me about the symbols?"_
Inquire About the Stones |q 70215/1 |goto 45.93,40.65
step
talk Warpcaster Delandra##189764
turnin Curiosity is Key##70215 |goto 45.93,40.65
accept Power Procurement##66582 |goto 45.93,40.65
step
Kill enemies around this area
Capture the Energy |q 66582/1 |goto 40.26,61.77
step
talk Warpcaster Delandra##189764
turnin Power Procurement##66582 |goto 45.93,40.65
accept A Gateway to Somewhere##70154 |goto 45.93,40.65
step
Watch the dialogue
click Warpcaster's Portal
Take Warpcaster Delandra's Portal |q 70154/1 |goto 45.92,40.90
step
click Warpcaster's Portal
Take the Warpcaster Spire Portal |q 70154/2 |goto 52.82,35.66
step
Watch the dialogue
kill Frenzied Arcane Thirster##195202 |q 70154/3 |goto 64.63,42.84
step
click A Gateway to Somewhere
Escape with Warpcaster Delandra |q 70154/4 |goto 64.69,42.96
step
talk Warpcaster Delandra##189764
turnin A Gateway to Somewhere##70154 |goto 48.60,30.30
accept An Ancient Awakening##70156 |goto 48.60,30.30
step
Watch the dialogue
Prepare to Charge the Waygate |q 70156/1 |goto 48.38,30.24
step
extraaction Open Vessel##386193
Watch the dialogue
Empower the Waygate |q 70156/2 |goto 48.38,30.13
step
Kill enemies at the top of the tower
clicknpc Latent Arcana##195535+
|tip They look like glowing motes of energy at the top of the tower.
Transfer Energy to the Waygate |q 70156/3 |goto 48.33,30.13
step
click Ancient Waygate
Use the Cobalt Assembly Waygate |q 70156/4 |goto 48.33,30.13
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin An Ancient Awakening##70156 |goto The Waking Shores/0 47.20,90.25
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 8 with the Dragonscale Expedition |complete factionrenown(2507) >= 8
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##188103
|tip He should appear next to you.
accept Continued Waygate Exploration##70702
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Continued Waygate Exploration##70702 |goto The Waking Shores/0 47.20,90.25
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
accept Waygate: Algeth'era##71162 |goto 47.20,90.25 |only if not completedq(71162) |noautoaccept |or
accept Waygate: Eon's Fringe##71165 |goto 47.20,90.25 |only if not completedq(71165) |noautoaccept |or
|tip Algeth'era and Eon's Fringe are in Thaldraszus.
accept Waygate: Shady Sanctuary##71178 |goto 47.20,90.25 |only if not completedq(71178) |noautoaccept |or
accept Waygate: Rusza'thar Reach##71138 |goto 47.20,90.25 |only if not completedq(71138) |noautoaccept |or
|tip Shady Sanctuary and Rusza'thar Reach are in Ohn'ahran Plains.
accept Waygate: Vakthros##71161 |goto 47.20,90.25 |only if not completedq(71161) |noautoaccept |or
|tip Vakthros is in The Azure Span.
accept Waygate: Skytop Observatory##71157 |goto 47.20,90.25 |only if not completedq(71157) |noautoaccept |or
|tip Skytop Observatory is in The Waking Shores
|tip Choose a location to link your waygate network to.
|tip You can only choose one location until your next renown unlock.
|only if not completedallq(71162,71178,71165,71161,71138,71157)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71162/1 |goto Thaldraszus/0 62.42,40.47
|only if haveq(71162)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Algeth'era Waygate |goto 62.42,40.47
|only if haveq(71162)
step
click Dormant Waygate
Activate the Waygate |q 71178/1 |goto Ohn'ahran Plains/0 30.66,55.48
|only if haveq(71178)
step
click Ancient Waygate
fpath Shady Sanctuary Waygate |goto 30.66,55.48
|only if haveq(71178)
step
click Dormant Waygate
|tip Inside the tower.
Activate the Waygate |q 71165/1 |goto Thaldraszus/0 52.34,78.54
|only if haveq(71165)
step
click Ancient Waygate
|tip Inside the tower.
fpath Eon's Fringe Waygate |goto 52.34,78.54
|only if haveq(71165)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71161/1 |goto The Azure Span/0 77.59,30.79
|only if haveq(71161)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Vakthros Waygate |goto 77.59,30.79
|only if haveq(71161)
step
click Dormant Waygate
Activate the Waygate |q 71138/1 |goto Ohn'ahran Plains/0 81.31,38.98
|only if haveq(71138)
step
click Ancient Waygate
fpath Rusza'thar Reach Waygate |goto 81.31,38.98
|only if haveq(71138)
step
click Dormant Waygate
Activate the Waygate |q 71157/1 |goto The Waking Shores/0 75.28,57.02
|only if haveq(71157)
step
click Ancient Waygate
fpath Skytop Observatory Waygate |goto 75.28,57.02
|only if haveq(71157)
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Waygate: Skytop Observatory##71157 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71157)
turnin Waygate: Algeth'era##71162 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71162)
turnin Waygate: Shady Sanctuary##71178 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71178)
turnin Waygate: Eon's Fringe##71165 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71165)
turnin Waygate: Vakthros##71161 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71161)
turnin Waygate: Rusza'thar Reach##71138 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71138)
|only if haveq(71162,71178,71165,71161,71138,71157)
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 10 with the Dragonscale Expedition |complete factionrenown(2507) >= 10
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##188103
|tip He should appear next to you.
accept Continued Waygate Exploration##71146
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Continued Waygate Exploration##71146 |goto The Waking Shores/0 47.20,90.25
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
accept Waygate: Algeth'era##71162 |goto 47.20,90.25 |only if not completedq(71162) |noautoaccept |or
accept Waygate: Eon's Fringe##71165 |goto 47.20,90.25 |only if not completedq(71165) |noautoaccept |or
|tip Algeth'era and Eon's Fringe are in Thaldraszus.
accept Waygate: Shady Sanctuary##71178 |goto 47.20,90.25 |only if not completedq(71178) |noautoaccept |or
accept Waygate: Rusza'thar Reach##71138 |goto 47.20,90.25 |only if not completedq(71138) |noautoaccept |or
|tip Shady Sanctuary and Rusza'thar Reach are in Ohn'ahran Plains.
accept Waygate: Vakthros##71161 |goto 47.20,90.25 |only if not completedq(71161) |noautoaccept |or
|tip Vakthros is in The Azure Span.
accept Waygate: Skytop Observatory##71157 |goto 47.20,90.25 |only if not completedq(71157) |noautoaccept |or
|tip Skytop Observatory is in The Waking Shores
|tip Choose a location to link your waygate network to.
|tip You can only choose one location until your next renown unlock.
|only if not completedallq(71162,71178,71165,71161,71138,71157)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71162/1 |goto Thaldraszus/0 62.42,40.47
|only if haveq(71162)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Algeth'era Waygate |goto 62.42,40.47
|only if haveq(71162)
step
click Dormant Waygate
Activate the Waygate |q 71178/1 |goto Ohn'ahran Plains/0 30.66,55.48
|only if haveq(71178)
step
click Ancient Waygate
fpath Shady Sanctuary Waygate |goto 30.66,55.48
|only if haveq(71178)
step
click Dormant Waygate
|tip Inside the tower.
Activate the Waygate |q 71165/1 |goto Thaldraszus/0 52.34,78.54
|only if haveq(71165)
step
click Ancient Waygate
|tip Inside the tower.
fpath Eon's Fringe Waygate |goto 52.34,78.54
|only if haveq(71165)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71161/1 |goto The Azure Span/0 77.59,30.79
|only if haveq(71161)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Vakthros Waygate |goto 77.59,30.79
|only if haveq(71161)
step
click Dormant Waygate
Activate the Waygate |q 71138/1 |goto Ohn'ahran Plains/0 81.31,38.98
|only if haveq(71138)
step
click Ancient Waygate
fpath Rusza'thar Reach Waygate |goto 81.31,38.98
|only if haveq(71138)
step
click Dormant Waygate
Activate the Waygate |q 71157/1 |goto The Waking Shores/0 75.28,57.02
|only if haveq(71157)
step
click Ancient Waygate
fpath Skytop Observatory Waygate |goto 75.28,57.02
|only if haveq(71157)
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Waygate: Skytop Observatory##71157 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71157)
turnin Waygate: Algeth'era##71162 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71162)
turnin Waygate: Shady Sanctuary##71178 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71178)
turnin Waygate: Eon's Fringe##71165 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71165)
turnin Waygate: Vakthros##71161 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71161)
turnin Waygate: Rusza'thar Reach##71138 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71138)
|only if haveq(71162,71178,71165,71161,71138,71157)
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 15 with the Dragonscale Expedition |complete factionrenown(2507) >= 15
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##188103
|tip He should appear next to you.
accept Continued Waygate Exploration##71147
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Continued Waygate Exploration##71147 |goto The Waking Shores/0 47.20,90.25
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
accept Waygate: Algeth'era##71162 |goto 47.20,90.25 |only if not completedq(71162) |noautoaccept |or
accept Waygate: Eon's Fringe##71165 |goto 47.20,90.25 |only if not completedq(71165) |noautoaccept |or
|tip Algeth'era and Eon's Fringe are in Thaldraszus.
accept Waygate: Shady Sanctuary##71178 |goto 47.20,90.25 |only if not completedq(71178) |noautoaccept |or
accept Waygate: Rusza'thar Reach##71138 |goto 47.20,90.25 |only if not completedq(71138) |noautoaccept |or
|tip Shady Sanctuary and Rusza'thar Reach are in Ohn'ahran Plains.
accept Waygate: Vakthros##71161 |goto 47.20,90.25 |only if not completedq(71161) |noautoaccept |or
|tip Vakthros is in The Azure Span.
accept Waygate: Skytop Observatory##71157 |goto 47.20,90.25 |only if not completedq(71157) |noautoaccept |or
|tip Skytop Observatory is in The Waking Shores
|tip Choose a location to link your waygate network to.
|tip You can only choose one location until your next renown unlock.
|only if not completedallq(71162,71178,71165,71161,71138,71157)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71162/1 |goto Thaldraszus/0 62.42,40.47
|only if haveq(71162)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Algeth'era Waygate |goto 62.42,40.47
|only if haveq(71162)
step
click Dormant Waygate
Activate the Waygate |q 71178/1 |goto Ohn'ahran Plains/0 30.66,55.48
|only if haveq(71178)
step
click Ancient Waygate
fpath Shady Sanctuary Waygate |goto 30.66,55.48
|only if haveq(71178)
step
click Dormant Waygate
|tip Inside the tower.
Activate the Waygate |q 71165/1 |goto Thaldraszus/0 52.34,78.54
|only if haveq(71165)
step
click Ancient Waygate
|tip Inside the tower.
fpath Eon's Fringe Waygate |goto 52.34,78.54
|only if haveq(71165)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71161/1 |goto The Azure Span/0 77.59,30.79
|only if haveq(71161)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Vakthros Waygate |goto 77.59,30.79
|only if haveq(71161)
step
click Dormant Waygate
Activate the Waygate |q 71138/1 |goto Ohn'ahran Plains/0 81.31,38.98
|only if haveq(71138)
step
click Ancient Waygate
fpath Rusza'thar Reach Waygate |goto 81.31,38.98
|only if haveq(71138)
step
click Dormant Waygate
Activate the Waygate |q 71157/1 |goto The Waking Shores/0 75.28,57.02
|only if haveq(71157)
step
click Ancient Waygate
fpath Skytop Observatory Waygate |goto 75.28,57.02
|only if haveq(71157)
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Waygate: Skytop Observatory##71157 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71157)
turnin Waygate: Algeth'era##71162 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71162)
turnin Waygate: Shady Sanctuary##71178 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71178)
turnin Waygate: Eon's Fringe##71165 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71165)
turnin Waygate: Vakthros##71161 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71161)
turnin Waygate: Rusza'thar Reach##71138 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71138)
|only if haveq(71162,71178,71165,71161,71138,71157)
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 17 with the Dragonscale Expedition |complete factionrenown(2507) >= 17
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##188103
|tip He should appear next to you.
accept Continued Waygate Exploration##71148
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Continued Waygate Exploration##71148 |goto The Waking Shores/0 47.20,90.25
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
accept Waygate: Algeth'era##71162 |goto 47.20,90.25 |only if not completedq(71162) |noautoaccept |or
accept Waygate: Eon's Fringe##71165 |goto 47.20,90.25 |only if not completedq(71165) |noautoaccept |or
|tip Algeth'era and Eon's Fringe are in Thaldraszus.
accept Waygate: Shady Sanctuary##71178 |goto 47.20,90.25 |only if not completedq(71178) |noautoaccept |or
accept Waygate: Rusza'thar Reach##71138 |goto 47.20,90.25 |only if not completedq(71138) |noautoaccept |or
|tip Shady Sanctuary and Rusza'thar Reach are in Ohn'ahran Plains.
accept Waygate: Vakthros##71161 |goto 47.20,90.25 |only if not completedq(71161) |noautoaccept |or
|tip Vakthros is in The Azure Span.
accept Waygate: Skytop Observatory##71157 |goto 47.20,90.25 |only if not completedq(71157) |noautoaccept |or
|tip Skytop Observatory is in The Waking Shores
|tip Choose a location to link your waygate network to.
|tip You can only choose one location until your next renown unlock.
|only if not completedallq(71162,71178,71165,71161,71138,71157)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71162/1 |goto Thaldraszus/0 62.42,40.47
|only if haveq(71162)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Algeth'era Waygate |goto 62.42,40.47
|only if haveq(71162)
step
click Dormant Waygate
Activate the Waygate |q 71178/1 |goto Ohn'ahran Plains/0 30.66,55.48
|only if haveq(71178)
step
click Ancient Waygate
fpath Shady Sanctuary Waygate |goto 30.66,55.48
|only if haveq(71178)
step
click Dormant Waygate
|tip Inside the tower.
Activate the Waygate |q 71165/1 |goto Thaldraszus/0 52.34,78.54
|only if haveq(71165)
step
click Ancient Waygate
|tip Inside the tower.
fpath Eon's Fringe Waygate |goto 52.34,78.54
|only if haveq(71165)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71161/1 |goto The Azure Span/0 77.59,30.79
|only if haveq(71161)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Vakthros Waygate |goto 77.59,30.79
|only if haveq(71161)
step
click Dormant Waygate
Activate the Waygate |q 71138/1 |goto Ohn'ahran Plains/0 81.31,38.98
|only if haveq(71138)
step
click Ancient Waygate
fpath Rusza'thar Reach Waygate |goto 81.31,38.98
|only if haveq(71138)
step
click Dormant Waygate
Activate the Waygate |q 71157/1 |goto The Waking Shores/0 75.28,57.02
|only if haveq(71157)
step
click Ancient Waygate
fpath Skytop Observatory Waygate |goto 75.28,57.02
|only if haveq(71157)
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Waygate: Skytop Observatory##71157 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71157)
turnin Waygate: Algeth'era##71162 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71162)
turnin Waygate: Shady Sanctuary##71178 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71178)
turnin Waygate: Eon's Fringe##71165 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71165)
turnin Waygate: Vakthros##71161 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71161)
turnin Waygate: Rusza'thar Reach##71138 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71138)
|only if haveq(71162,71178,71165,71161,71138,71157)
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 20 with the Dragonscale Expedition |complete factionrenown(2507) >= 20
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##188103
|tip He should appear next to you.
accept Continued Waygate Exploration##71149
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Continued Waygate Exploration##71149 |goto The Waking Shores/0 47.20,90.25
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
accept Waygate: Algeth'era##71162 |goto 47.20,90.25 |only if not completedq(71162) |noautoaccept |or
accept Waygate: Eon's Fringe##71165 |goto 47.20,90.25 |only if not completedq(71165) |noautoaccept |or
|tip Algeth'era and Eon's Fringe are in Thaldraszus.
accept Waygate: Shady Sanctuary##71178 |goto 47.20,90.25 |only if not completedq(71178) |noautoaccept |or
accept Waygate: Rusza'thar Reach##71138 |goto 47.20,90.25 |only if not completedq(71138) |noautoaccept |or
|tip Shady Sanctuary and Rusza'thar Reach are in Ohn'ahran Plains.
accept Waygate: Vakthros##71161 |goto 47.20,90.25 |only if not completedq(71161) |noautoaccept |or
|tip Vakthros is in The Azure Span.
accept Waygate: Skytop Observatory##71157 |goto 47.20,90.25 |only if not completedq(71157) |noautoaccept |or
|tip Skytop Observatory is in The Waking Shores
|tip Choose a location to link your waygate network to.
|tip You can only choose one location until your next renown unlock.
|only if not completedallq(71162,71178,71165,71161,71138,71157)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71162/1 |goto Thaldraszus/0 62.42,40.47
|only if haveq(71162)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Algeth'era Waygate |goto 62.42,40.47
|only if haveq(71162)
step
click Dormant Waygate
Activate the Waygate |q 71178/1 |goto Ohn'ahran Plains/0 30.66,55.48
|only if haveq(71178)
step
click Ancient Waygate
fpath Shady Sanctuary Waygate |goto 30.66,55.48
|only if haveq(71178)
step
click Dormant Waygate
|tip Inside the tower.
Activate the Waygate |q 71165/1 |goto Thaldraszus/0 52.34,78.54
|only if haveq(71165)
step
click Ancient Waygate
|tip Inside the tower.
fpath Eon's Fringe Waygate |goto 52.34,78.54
|only if haveq(71165)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71161/1 |goto The Azure Span/0 77.59,30.79
|only if haveq(71161)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Vakthros Waygate |goto 77.59,30.79
|only if haveq(71161)
step
click Dormant Waygate
Activate the Waygate |q 71138/1 |goto Ohn'ahran Plains/0 81.31,38.98
|only if haveq(71138)
step
click Ancient Waygate
fpath Rusza'thar Reach Waygate |goto 81.31,38.98
|only if haveq(71138)
step
click Dormant Waygate
Activate the Waygate |q 71157/1 |goto The Waking Shores/0 75.28,57.02
|only if haveq(71157)
step
click Ancient Waygate
fpath Skytop Observatory Waygate |goto 75.28,57.02
|only if haveq(71157)
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Waygate: Skytop Observatory##71157 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71157)
turnin Waygate: Algeth'era##71162 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71162)
turnin Waygate: Shady Sanctuary##71178 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71178)
turnin Waygate: Eon's Fringe##71165 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71165)
turnin Waygate: Vakthros##71161 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71161)
turnin Waygate: Rusza'thar Reach##71138 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71138)
|only if haveq(71162,71178,71165,71161,71138,71157)
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 23 with the Dragonscale Expedition |complete factionrenown(2507) >= 23
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##188103
|tip He should appear next to you.
accept Continued Waygate Exploration##71150
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Continued Waygate Exploration##71150 |goto The Waking Shores/0 47.20,90.25
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
accept Waygate: Algeth'era##71162 |goto 47.20,90.25 |only if not completedq(71162) |noautoaccept |or
accept Waygate: Eon's Fringe##71165 |goto 47.20,90.25 |only if not completedq(71165) |noautoaccept |or
|tip Algeth'era and Eon's Fringe are in Thaldraszus.
accept Waygate: Shady Sanctuary##71178 |goto 47.20,90.25 |only if not completedq(71178) |noautoaccept |or
accept Waygate: Rusza'thar Reach##71138 |goto 47.20,90.25 |only if not completedq(71138) |noautoaccept |or
|tip Shady Sanctuary and Rusza'thar Reach are in Ohn'ahran Plains.
accept Waygate: Vakthros##71161 |goto 47.20,90.25 |only if not completedq(71161) |noautoaccept |or
|tip Vakthros is in The Azure Span.
accept Waygate: Skytop Observatory##71157 |goto 47.20,90.25 |only if not completedq(71157) |noautoaccept |or
|tip Skytop Observatory is in The Waking Shores
|tip Choose a location to link your waygate network to.
|tip You can only choose one location until your next renown unlock.
|only if not completedallq(71162,71178,71165,71161,71138,71157)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71162/1 |goto Thaldraszus/0 62.42,40.47
|only if haveq(71162)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Algeth'era Waygate |goto 62.42,40.47
|only if haveq(71162)
step
click Dormant Waygate
Activate the Waygate |q 71178/1 |goto Ohn'ahran Plains/0 30.66,55.48
|only if haveq(71178)
step
click Ancient Waygate
fpath Shady Sanctuary Waygate |goto 30.66,55.48
|only if haveq(71178)
step
click Dormant Waygate
|tip Inside the tower.
Activate the Waygate |q 71165/1 |goto Thaldraszus/0 52.34,78.54
|only if haveq(71165)
step
click Ancient Waygate
|tip Inside the tower.
fpath Eon's Fringe Waygate |goto 52.34,78.54
|only if haveq(71165)
step
click Dormant Waygate
|tip At the top of the tower.
Activate the Waygate |q 71161/1 |goto The Azure Span/0 77.59,30.79
|only if haveq(71161)
step
click Ancient Waygate
|tip At the top of the tower.
fpath Vakthros Waygate |goto 77.59,30.79
|only if haveq(71161)
step
click Dormant Waygate
Activate the Waygate |q 71138/1 |goto Ohn'ahran Plains/0 81.31,38.98
|only if haveq(71138)
step
click Ancient Waygate
fpath Rusza'thar Reach Waygate |goto 81.31,38.98
|only if haveq(71138)
step
click Dormant Waygate
Activate the Waygate |q 71157/1 |goto The Waking Shores/0 75.28,57.02
|only if haveq(71157)
step
click Ancient Waygate
fpath Skytop Observatory Waygate |goto 75.28,57.02
|only if haveq(71157)
step
talk Thaelin Darkanvil##189066
|tip Inside the building.
turnin Waygate: Skytop Observatory##71157 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71157)
turnin Waygate: Algeth'era##71162 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71162)
turnin Waygate: Shady Sanctuary##71178 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71178)
turnin Waygate: Eon's Fringe##71165 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71165)
turnin Waygate: Vakthros##71161 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71161)
turnin Waygate: Rusza'thar Reach##71138 |goto The Waking Shores/0 47.20,90.25 |only if haveq(71138)
|only if haveq(71162,71178,71165,71161,71138,71157)
]])
ZygorGuidesViewer:RegisterGuide("Achievement Guides\\Reputation\\Dragonflight\\Ready, Aim, Catalog!",{
author="support@zygorguides.com",
description="\nUnlock cataloging World Quests with the Dragonscale Expedition.",
condition_suggested=function() return level >= 60 and factionrenown(2507) >= 8 and not achieved(16758) end,
achieveid={16758},
startlevel=60,
keywords={"Dragonflight","Reputation","Picture"},
patch='100002',
},[[
step
talk Cataloger Jakes##189226 |goto The Waking Shores/0 47.11,82.58
|tip Inside the tent.
|tip Turn in Dragon Isles Artifacts from treasures and supply packs all over The Waking Shores.
'|turnin Multiple Dragon Isles Artifacts##72876
'|turnin Multiple Dragon Isles Artifacts##71035
'|turnin Dragon Isles Artifacts##71034
Reach Renown Level 8 with the Dragonscale Expedition |complete factionrenown(2507) >= 8
|tip Complete daily quests, weekly quests, and zone quests in The Waking Shores to gain renown.
|tip You can also gain renown by completing weekly quests using the "Dragonscale Basecamp Weekly Quests" guide.
step
_Next to you:_
talk Doc Nanners##196643
|tip He should eventually appear.
accept A Cataloger's Paradise##69869
step
talk Cataloger Coralie##187707
turnin A Cataloger's Paradise##69869 |goto The Waking Shores/0 48.53,82.67
accept Basic Cataloging Gear##72525 |goto 48.53,82.67
step
click Expedition Supply Kit
|tip Click the "Cataloging Gear" ability at the top of the middle row.
Research the Cataloging Gear Ability |q 72525/1 |goto 47.30,83.38
step
talk Cataloger Coralie##187707
turnin Basic Cataloging Gear##72525 |goto 48.53,82.67
accept Pictures with Purpose##69870 |goto 48.53,82.67
step
talk Akunda the Cataloger##185651
turnin Pictures with Purpose##69870 |goto 49.88,68.42
accept Picture Perfect##65486 |goto 49.88,68.42
step
click Cataloger's Raft
Ride the Cataloger's Raft |q 65486/1 |goto 49.98,68.51
step
Take Pictures of Wildlife |q 65486/2
|tip Use the "Catalog" ability on your vehicle bar to take puctures of the wildlife along the river.
|tip When your film bar becomes empty, use the "Reload Film" ability to reload and take more pictures.
|tip Taking pictures of wildlife right when they're surrounded by light will result in better quality pictures.
step
talk Akunda the Cataloger##185651
turnin Picture Perfect##65486 |goto 49.88,68.42
]])
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
