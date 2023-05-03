local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHSHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Mounts\\Ground Mounts\\Miscellaneous Mounts\\Elusive Emerald Hawkstrider")
