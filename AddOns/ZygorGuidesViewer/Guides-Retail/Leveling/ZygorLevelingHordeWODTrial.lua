local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Draenor Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Frostfire Ridge (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Gorgrond (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Talador (20-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Spires of Arak (30-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Nagrand (35-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Draenor (10-60)\\Tanaan Jungle (40)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Loremaster\\Loremaster of Draenor")
