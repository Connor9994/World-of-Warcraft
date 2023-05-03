local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\7th Legion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Champions of Azeroth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Order of Embers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Proudmoore Admiralty")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Rustbolt Resistance")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Storm's Wake")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Tortollan Seekers")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Waveblade Ankoan")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Honeyback Hive")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Honeyback Harvester")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Rajani")
ZygorGuidesViewer:RegisterGuidePlaceholder("Reputations Guides\\Battle for Azeroth\\Uldum Accord")
