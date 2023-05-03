local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHLEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Lagan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Ridgeback Piglet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Thaumaturgical Piglet")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Critter Pets\\Noblegarden Bunny")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Dragonkin Pets\\Emmigosa")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Igneous Flameling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Alliance Enthusiast")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Dutiful Gruntling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Dutiful Squire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Globe Yeti")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Horde Fanatic")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Knight-Captain Murky")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Legionnaire Murky")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Tylarr Gronnden")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Cauldron")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Pen")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Enchanted Torch")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Transmutant")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Untethered Wyrmling")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Trigger")
