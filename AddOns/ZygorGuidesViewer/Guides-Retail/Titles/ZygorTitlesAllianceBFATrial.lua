local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("TitlesABFA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Battle for Azeroth Titles\\Dungeon & Raid\\The Purifier")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Battle for Azeroth Titles\\General\\The Awakened")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Battle for Azeroth Titles\\General\\Junkyard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Battle for Azeroth Titles\\General\\Renowned Explorer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Battle for Azeroth Titles\\General\\Veteran of the Fourth War")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Battle for Azeroth Titles\\Island Expedition\\Expedition Leader")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Battle for Azeroth Titles\\Reputation\\The Admired")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Battle for Azeroth Titles\\Reputation\\Esteemed")
