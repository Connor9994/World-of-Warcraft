local name,ZGV = ...

-- Main menu
ZGV:RegisterGuideSorting({
	"BETA",
	"Leveling",
	"Loremaster",
	"Dungeons",
	"Gear",
	"Dailies",
	"Events",
	"Reputations",
	"Gold",
	"Professions",
	"Pets & Mounts",
	"Titles",
	"Achievements",
	"Macros",
})

-- Dungeons
ZGV:RegisterGuideSorting({
	"Classic Dungeons",
	"Classic Raids",
	"Outland Dungeons",
	"Outland Raids",
	"Northrend Dungeons",
	"Northrend Raids",
	"Cataclysm Dungeons",
	"Cataclysm Raids",
	"Pandaria Dungeons",
	"Pandaria Raids",
	"Pandaria Scenarios",
	"Draenor Dungeons",
	"Draenor Raids",
	"Legion Dungeons",
	"Legion Raids",
	"Legion Scenarios",
	"Battle for Azeroth Dungeons",
	"Battle for Azeroth Raids",
	"Shadowlands Dungeons",
	"Shadowlands Raids",
	})

-- Leveling
ZGV:RegisterGuideSorting({
	"Starter Guides",
	"Classic (1-50)",
	"The Burning Crusade (10-50)",
	"Wrath of the Lich King (10-50)",
	"Cataclysm (10-50)",
	"Pandaria (10-50)",
	"Draenor (10-50)",
	"Legion (10-50)",
	"Battle for Azeroth (10-50)",
	"Shadowlands (50-60)",
	"The Loremaster",
	})

-- Leveling alliance starters
if UnitFactionGroup("player")=="Alliance" then 
	ZGV:RegisterGuideSorting({
		"Human (1-5)",
		"Dwarf (1-5)",
		"Night Elf (1-11)",
		"Gnome (1-5)",
		"Draenei (1-5)",
		"Worgen (1-13)",
		"Pandaren (1-15)",
		"Death Knight (8-10)",
		"Demon Hunter (98-100)"})
end

-- Leveling horde starters
if UnitFactionGroup("player")=="Horde" then 
	ZGV:RegisterGuideSorting({
		"Orc (1-5)",
		"Undead (1-10)",
		"Tauren (1-4)",
		"Troll (1-5)",
		"Blood Elf (1-5)",
		"Goblin (1-10)",
		"Pandaren (1-15)",
		"Death Knight (8-10)",
		"Demon Hunter (98-100)"})
end








------------------------
-- BATTLE FOR AZEROTH --
------------------------

-- [Horde] Leveling - Battle for Azeroth (110-120) - Folder List
if UnitFactionGroup("player")=="Horde" then 
	ZGV:RegisterGuideSorting({
		"Zandalar",
		"Allied Races"})
end

-- [Horde] Leveling - Battle for Azeroth (110-120) - Guide List
if UnitFactionGroup("player")=="Horde" then 
	ZGV:RegisterGuideSorting({
		"Intro & Quest Zone Choice",
		"War Campaign",
		"The Burning of Teldrassil",
		"The Battle for Lordaeron",
		"Silithus: The Wound"})
end
