local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ScenarioALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Scenarios\\Whispers of a Frightened World")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie Portals")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie Speed Run")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Scenarios\\The Deaths of Chromie (Stratholme Intro)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dungeon Guides\\Legion Scenarios\\Argus Invasions")
