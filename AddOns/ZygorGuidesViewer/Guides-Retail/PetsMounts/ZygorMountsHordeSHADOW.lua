local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Elusive Emerald Hawkstrider",{
author="support@zygorguides.com",
startlevel=60.0,
keywords={"blood","elf"},
mounts={370620},
patch='90205',
mounttype='Ground',
model={106262},
description="\nThis mount is earned by completing a Blood Elf-specific questline.",
},[[
leechsteps "Leveling Guides\\Shadowlands (50-60)\\Blood Elf Questline"
step
collect 1 Elusive Emerald Hawkstrider##191566 |complete hasmount(370620)
step
use the Elusive Emerald Hawkstrider##191566
Learn the "Elusive Emerald Hawkstrider" Mount |learnmount Elusive Emerald Hawkstrider##370620
step
_Congratulations!_
You Collected the "Elusive Emerald Hawkstrider" Mount.
]])
