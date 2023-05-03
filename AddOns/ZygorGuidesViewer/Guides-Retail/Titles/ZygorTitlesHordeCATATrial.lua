local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("TitlesH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Burning Crusade Titles\\Player versus Player\\Brutal Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Burning Crusade Titles\\Player versus Player\\Deadly Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Burning Crusade Titles\\Player versus Player\\Conqueror")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Burning Crusade Titles\\Player versus Player\\Merciless Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Burning Crusade Titles\\Player versus Player\\Vengeful Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Burning Crusade Titles\\Player versus Player\\Furious Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Burning Crusade Titles\\Player versus Player\\Relentless Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Burning Crusade Titles\\Player versus Player\\Wrathful Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Burning Crusade Titles\\Dungeons & Raids\\Champion of the Naaru")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Burning Crusade Titles\\Dungeons & Raids\\Hand of A'dal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Burning Crusade Titles\\Reputations\\Of the Shattered Sun")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Argent Defender")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\Grand Crusader")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Astral Walker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\Bane of the Fallen King")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Celestial Defender")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\Champion of the Frozen Wastes")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\Champion of Ulduar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\Conqueror of Naxxramas")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\Conqueror of Ulduar")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\Death's Demise")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\Herald of the Titans")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Immortal")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Kingslayer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Light of Dawn")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Magic Seeker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\Obsidian Slayer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\Of the Nightfall")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Patient")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\Starcaller")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\The Undying")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Dungeons & Raids\\Twilight Vanquisher")
ZygorGuidesViewer:RegisterGuide("Titles\\Wrath of the Lich King Titles\\General\\The Explorer",{
author="support@zygorguides.com",
description="\nThis guide section will walk you through completing the Explorer achievement.",
playertitle=47,
},[[
leechsteps "Achievement Guides\\Exploration\\Eastern Kingdoms\\Eastern Kingdoms and Cataclysm Explorer"
leechsteps "Achievement Guides\\Exploration\\Kalimdor\\Kalimdor and Cataclysm Explorer"
leechsteps "Achievement Guides\\Exploration\\Cataclysm\\Explore Deepholm" 1-12
leechsteps "Achievement Guides\\Exploration\\Northrend\\Northrend Explorer"
leechsteps "Achievement Guides\\Exploration\\Outland\\Outland Explorer"
#include "Explorer_Pandaria"
leechsteps "Achievement Guides\\Exploration\\Draenor\\Draenor Explorer"
leechsteps "Achievement Guides\\Exploration\\Legion\\Broken Isles Explorer"
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Player versus Player\\Arena Master")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Player versus Player\\Battlemaster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Player versus Player\\Of the Horde")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Player versus Player\\The Flawless Victor")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Player versus Player\\Vanquisher")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Professions\\Cooking\\Achievements\\Chef")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Professions\\Cooking\\Chef\\Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Professions\\Fishing\\Salty")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Quests\\Loremaster")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Quests\\The Seeker")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Argent Champion\\Argent Crusade Reputation")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Argent Champion\\Argent Dawn Reputation")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Crusader\\Argent Tournament Grounds Aspirant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Crusader\\Argent Tournament Grounds Valiant Rank Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Crusader\\Blood Elf Champion Rank")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Crusader\\Orc Champion Rank")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Crusader\\Tauren Champion Rank")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Crusader\\Troll Champion Rank")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Crusader\\Undead Champion Rank")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\The Diplomat\\Mag'har Faction")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\The Diplomat\\Sporeggar Faction")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\The Diplomat\\Timbermaw Hold Faction")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Guardian of Cenarius\\Cenarion Circle Faction")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Guardian of Cenarius\\Cenarion Expedition Faction")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\The Insane\\Bloodsail Buccaneers Group")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\The Insane\\Bloodsail Buccaneers Solo")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\The Insane\\Darkmoon Faire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\The Insane\\Ravenholdt")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\The Insane\\The Steamwheedle Cartel")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Ambassador")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Of the Ashen Verdict")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\Bloodsail Admiral")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\Reputations\\The Exalted")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Brewmaster\\Brewfest Achievements")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Brewmaster\\Brewfest Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Brewmaster\\Brewfest Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Elder\\Lunar Festival Achievements")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Elder\\Lunar Festival Main Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Elder\\Lunar Festival Optimized Elders Path")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Flame Keeper\\Midsummer Fire Festival Achievements")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Flame Keeper\\Midsummer Fire Festival Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\The Hallowed")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\The Love Fool\\Love is in the Air Achievements")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\The Love Fool\\Love is in the Air Dailies")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\The Love Fool\\Love is in the Air Main Questline")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Matron/Patron\\Children's Week Achievements")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Matron/Patron\\Children's Week Dalaran Oracles Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Matron/Patron\\Children's Week Dalaran Wolvar Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Matron/Patron\\Children's Week Orgrimmar Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Matron/Patron\\Children's Week Shattrath Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Merrymaker\\Feast of Winter Veil Achievements")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\Merrymaker\\Feast of Winter Veil Quests")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\The Noble")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Wrath of the Lich King Titles\\World Events\\The Pilgrim")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Dungeons & Raids\\Blackwing's Bane")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Dungeons & Raids\\Defender of a Shattered World")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Dungeons & Raids\\Destroyer's End")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Dungeons & Raids\\Dragonslayer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Dungeons & Raids\\Firelord")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Dungeons & Raids\\Of the Four Winds")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Dungeons & Raids\\Savior of Azeroth")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\General\\The Camel-Hoarder")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\The Bloodthirsty")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Sergeant")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Blood Guard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Cataclysmic Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Centurion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Champion")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\First Sergeant")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\General")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Grunt")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Hero of the Horde")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\High Warlord")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Legionnaire")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Lieutenant General")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Ruthless Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Scout")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Senior Sergeant")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Stone Guard")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Veteran of the Horde")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Vicious Gladiator")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Warbringer")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Player versus Player\\Warlord")
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Professions\\Archaeology\\Assistant Professor, Associate Professor, and Professor")
ZygorGuidesViewer:RegisterGuide("Titles\\Cataclysm Titles\\Quests\\The Flamebreaker",{
author="support@zygorguides.com",
playertitle=189,
},[[
step
This title is earned by completing the _Veteran of the Molten Front_ achievement.
|confirm
step
#include "H_Firelands_PreQuests"
step
Now that you have access to the Firelands Dailies, please use the Zygor Achievement Guides to help obtain this title.
|achieve 5879
step
Congratulations! You have earned the title "The Flamebreaker"!
]])
ZygorGuidesViewer:RegisterGuidePlaceholder("Titles\\Cataclysm Titles\\Reputations\\Avenger of Hyjal")
