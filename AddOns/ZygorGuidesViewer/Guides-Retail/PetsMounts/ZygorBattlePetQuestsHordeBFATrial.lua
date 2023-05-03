local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetBattleHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Gnomeregan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Stratholme")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guides\\Battle Pets\\Battle Pet Dungeons\\Blackrock Depths")
