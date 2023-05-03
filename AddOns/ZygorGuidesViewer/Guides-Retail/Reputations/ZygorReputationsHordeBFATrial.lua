local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ReputationsHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Champions of Azeroth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Talanji's Expedition")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\The Honorbound")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Rustbolt Resistance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Tortollan Seekers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\The Unshackled")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Voldunai")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Zandalari Empire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Rajani")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Uldum Accord")
