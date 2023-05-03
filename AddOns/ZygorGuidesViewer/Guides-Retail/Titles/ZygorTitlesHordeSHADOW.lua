local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("TitlesHSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Titles\\Shadowlands Titles\\General\\of Lordaeron",{
author="support@zygorguides.com",
description="\nThis title is earned by completing the Lordaeron storyline introduced in patch 9.2.5.",
patch='90205',
},[[
leechsteps "Achievement Guides\\Character Achievements\\Quest Achievements\\Shadowlands\\Return to Lordaeron" 1-43
step
_Congratulations!_
You Earned the "of Lordaeron" Title.
]])
