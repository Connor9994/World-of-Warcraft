local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("TitlesHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Titles\\Battle for Azeroth Titles\\Dungeon & Raid\\The Purifier",{
author="support@zygorguides.com",
description="\nTo earn this title, you will be required to defeat G'huun in Uldir on Mythic difficulty.",
condition_end=function() return achieved(12533) end,
},[[
step
kill G'huun##132998
|tip You must complete this on Mythic difficulty.
|tip G'huun is the final boss of the Uldir Raid.
Earn "The Purifier" Title |achieve 12533 |goto Uldir/0 52.1,91.39
step
_Congratulations!_
You Earned "The Purifier" Title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Battle for Azeroth Titles\\General\\The Awakened",{
author="support@zygorguides.com",
description="\nTo earn this title, you will have to complete the following Battle for Azeroth "..
"dungeons at Mythic 10 or higher:\n\nAtal'Dazar\nKings' Rest\nFreehold\nShrine of the Storm\n"..
"Siege of Boralus\nTemple of Sethraliss\nThe MOTHERLODE!!\nThe Underrot\nMechagon Junkyard\n"..
"Mechagon Workshop\nTol Dagor\nWaycrest Manor",
condition_end=function() return achieved(14144) end,
},[[
leechsteps "Achievement Guides\\Feats of Strength\\Dungeons\\Battle for Azeroth Keystone Conqueror: Season Four" 1-1
step
Earn the "Awakened" Title |playertitle the Awakened##418
step
_Congratulations!_
You Earned the "Awakened" Title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Battle for Azeroth Titles\\General\\Junkyard",{
author="support@zygorguides.com",
description="\nTo earn this title, you will be required to complete the \"Junkyard Tinkmaster\" achievement.",
condition_end=function() return achieved(13555) end,
},[[
leechsteps "Achievement Guides\\Exploration\\Battle for Azeroth\\Junkyard Tinkmaster" 1-2
step
Earn the "Junkyard" Title |playertitle Junkyard##403
step
_Congratulations!_
You Earned the "Junkyard" Title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Battle for Azeroth Titles\\General\\Renowned Explorer",{
author="support@zygorguides.com",
description="\nTo earn this title, your Recruit-a-Friend allies must purchase four months of game time in total.",
condition_end=function() return achieved(13555) end,
playertitle=410,
},[[
step
Earn the "Renowned Explorer" Title |playertitle Renowned Explorer##410
|tip Recruit one or more of your friends using the Recruit-a-Friend program.
|tip This should unlock automatically after one or more of your Recruit-a-Friends purchase 4 months of game time in total.
step
_Congratulations!_
You Earned the "Renowned Explorer" Title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Battle for Azeroth Titles\\General\\Veteran of the Fourth War",{
author="support@zygorguides.com",
description="\nTo earn this title, you will have to complete the War Campaign in its entirety.",
keywords={"8.3","N'zoth","Nzoth","Corruption"},
condition_end=function() return achieved(13924) end,
},[[
step
Earn the "The Fourth War" Achievement |achieve 13924
|tip To earn this achievement, fully complete the "War Campaign" leveling guide.
step
Earn the "Veteran of the Fourth War" Title |playertitle the Veteran of the Fourth War##412
step
_Congratulations!_
You Earned the "Veteran of the Fourth War" Title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Battle for Azeroth Titles\\Island Expedition\\Expedition Leader",{
author="support@zygorguides.com",
description="\nTo earn this title, you will be required to the following Island Expedition achievements:\n\n"..
"Azerite Admiral\nExpert Expeditioner\nGive Me The Energy\nHelping Hand\n"..
"I'm Here for the Pets\nIsland Conqueror\nIsland Slayer\nMetal Detector\n"..
"Notorious\nTeam Deathmatch\nTell Me A Tale",
condition_end=function() return achieved(13134) end,
},[[
step
clicknpc Expedition Map##143967
Earn the "Expedition Leader" Title |achieve 13134 |goto Dazar'alor/0 44.53,95.34
|tip There are 11 achievements you will need to complete to earn this title.
|tip Several of the achievements require player versus player combat to complete.
|tip Refer to the "Expedition Leader" Achievement guide to accomplish this.
step
_Congratulations!_
You Earned the "Expedition Leader" Title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Battle for Azeroth Titles\\Reputation\\The Admired",{
author="support@zygorguides.com",
description="\nTo earn this title, you will be required to earn exalted status with 80 reputations.",
condition_end=function() return achieved(12864) end,
},[[
step
Earn "The Admired" Title |achieve 12864
|tip You will need to gain "Exalted" status with 80 Reputations to earn this title.
|tip Refer to our Reputation Guides to accomplish this.
step
_Congratulations!_
You Earned "The Admired" Title.
]])
ZygorGuidesViewer:RegisterGuide("Titles\\Battle for Azeroth Titles\\Reputation\\Esteemed",{
author="support@zygorguides.com",
description="\nTo earn this title, you will be required to earn exalted status with 100 reputations.",
condition_end=function() return achieved(12866) end,
},[[
step
Earn the "Esteemed" Title |achieve 12866
|tip You will need to gain "Exalted" status with 100 Reputations to earn this title.
|tip Refer to our Reputation Guides to accomplish this.
step
_Congratulations!_
You Earned the "Esteemed" Title.
]])
