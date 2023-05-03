local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("ScenarioHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\A Brewing Storm")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\A Little Patience")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Arena of Annihilation")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Assault on Zan'vess")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Battle on the High Seas")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Blood in the Snow")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Brewmoon Festival")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Crypt of Forgotten Kings")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Dagger in the Dark")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Dark Heart of Pandaria")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Domination Point")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Greenstone Village")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\The Secrets of Ragefire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Theramore's Fall")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Pandaria Scenarios\\Unga Ingoo")
