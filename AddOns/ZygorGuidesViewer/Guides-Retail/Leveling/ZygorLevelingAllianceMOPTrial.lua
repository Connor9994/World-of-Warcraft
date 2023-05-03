local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingAMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\The Jade Forest (10-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\Valley of the Four Winds (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\Krasarang Wilds (15-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\Kun-Lai Summit (20-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\Townlong Steppes (25-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\Dread Wastes (30-60)")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Daily")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 10")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 10")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 15")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 20")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 25")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 30")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Pandaria (10-60)\\Peak of Serenity\\Monk Quest 35")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\The Loremaster\\Loremaster of Pandaria")
