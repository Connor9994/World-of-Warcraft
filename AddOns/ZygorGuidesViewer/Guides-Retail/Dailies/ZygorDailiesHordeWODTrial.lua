local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHWOD") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Warlords of Draenor Dailies\\Frostwall Tavern Dungeon Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Warlords of Draenor Dailies\\Fishing Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Warlords of Draenor Dailies\\Battle Pets Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Warlords of Draenor Dailies\\High Overlord Saurfang Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Warlords of Draenor Dailies\\Harrison Jones Treasure Contracts")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Warlords of Draenor Dailies\\Shadow Hunter Ty'jin Daily Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Warlords of Draenor Dailies\\Garrison Assault Daily Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Warlords of Draenor Dailies\\Garrison Building Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Warlords of Draenor Dailies\\Tanaan Jungle (100)\\Vol'jin's Headhunters Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Warlords of Draenor Dailies\\Tanaan Jungle (100)\\Order of the Awakened Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Dailies Guides\\Warlords of Draenor Dailies\\Tanaan Jungle (100)\\The Saberstalkers")
