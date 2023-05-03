local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingASHADOW") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Heritage Armor\\Dark Iron Dwarf Heritage Armor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Missing Merchandise")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Primal Storms Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Daily Guides\\Shadowlands (50-60)\\Primal Storms Daily Quest")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Death Knight Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Demon Hunter Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Druid Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Hunter Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Mage Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Monk Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Paladin Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Priest Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Rogue Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Shaman Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Warlock Intro")
ZygorGuidesViewer:RegisterGuidePlaceholder("Leveling Guides\\Shadowlands (50-60)\\Boosted Characters\\Boosted Character Warrior Intro")
