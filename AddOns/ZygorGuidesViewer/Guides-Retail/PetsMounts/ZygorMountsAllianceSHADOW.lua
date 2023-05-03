local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("PetsMountsASHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "SHA"
ZygorGuidesViewer:RegisterGuide("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Grimhowl",{
author="support@zygorguides.com",
startlevel=50.0,
keywords={"Dark","Iron","Dwarf"},
mounts={369666},
patch='90205',
mounttype='Ground',
model={105428},
description="\nThis mount is earned by completing a Dark Iron Dwarf-specific questline.",
},[[
leechsteps "Leveling Guides\\Shadowlands (50-60)\\Heritage Armor\\Dark Iron Dwarf Heritage Armor"
step
collect 1 Grimhowl's Face Axe##191123 |complete hasmount(369666)
step
use Grimhowl's Face Axe##191123
Learn the "Grimhowl" Mount |learnmount Grimhowl##369666
step
_Congratulations!_
You Collected the "Grimhowl" Mount.
]])
