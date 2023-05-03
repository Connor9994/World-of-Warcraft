local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Dancing Water Skimmer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Fishy")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Swamp Croaker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Aquatic Pets\\Tiny Goldfish")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Elder Python")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Beast Pets\\Sumprush Rodent")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Pandaren Air Spirit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Pandaren Earth Spirit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Pandaren Fire Spirit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Pandaren Water Spirit")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Sapphire Cub")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Elemental Pets\\Thundertail Flapper")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Chi-ji Kite")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Jade Crane Chick")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Flying Pets\\Yu'lon Kite")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Mountain Panda")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Red Panda")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Snowy Panda")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Humanoid Pets\\Sunfur Panda")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Magic Pets\\Jade Owl")
ZygorGuidesViewer:RegisterGuidePlaceholder("Pets & Mounts Guide\\Battle Pets\\Mechanical Pets\\Clock'em")
