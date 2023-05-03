if GetLocale()~="deDE" then return end

ZygorGuidesViewer_L("Main", "deDE", function() return {
-----------------------------------------------------------------------------------------------------------------
-- itemscore patterns -------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	SPELL_DAMAGE_DONE_HOLY =   ("Erhöht durch %szauber und %seffekte zugefügten Schaden um bis zu ([0-9]+)."):format(_G["SPELL_SCHOOL1_CAP"],_G["SPELL_SCHOOL1_CAP"]),
	SPELL_DAMAGE_DONE_FIRE =   ("Erhöht durch %szauber und %seffekte zugefügten Schaden um bis zu ([0-9]+)."):format(_G["SPELL_SCHOOL2_CAP"],_G["SPELL_SCHOOL1_CAP"]),
	SPELL_DAMAGE_DONE_NATURE = ("Erhöht durch %szauber und %seffekte zugefügten Schaden um bis zu ([0-9]+)."):format(_G["SPELL_SCHOOL3_CAP"],_G["SPELL_SCHOOL1_CAP"]),
	SPELL_DAMAGE_DONE_FROST =  ("Erhöht durch %szauber und %seffekte zugefügten Schaden um bis zu ([0-9]+)."):format(_G["SPELL_SCHOOL4_CAP"],_G["SPELL_SCHOOL1_CAP"]),
	SPELL_DAMAGE_DONE_SHADOW = ("Erhöht durch %szauber und %seffekte zugefügten Schaden um bis zu ([0-9]+)."):format(_G["SPELL_SCHOOL5_CAP"],_G["SPELL_SCHOOL1_CAP"]),
	SPELL_DAMAGE_DONE_ARCANE = ("Erhöht durch %szauber und %seffekte zugefügten Schaden um bis zu ([0-9]+)."):format(_G["SPELL_SCHOOL6_CAP"],_G["SPELL_SCHOOL1_CAP"]),

	BLOCK =	"Erhöht Eure Blockwertung um ([0-9]+).",
	BLOCK2 = "Erhöht Eure Chance, Angriffe mit einem Schild zu blocken, um ([0-9]+)%%.",
	CRIT = "Erhöht Eure kritische Trefferwertung um ([0-9]+).",
	CRIT2 = "Erhöht Eure Chance, einen kritischen Treffer zu erzielen, um ([0-9]+)%%.",
	CRIT_SPELL = "Erhöht Eure kritische Zaubertrefferwertung um ([0-9]+).",
	CRIT_SPELL2 = "Erhöht Eure Chance, einen kritischen Treffer durch Zauber zu erzielen, um ([0-9]+)%%.",
	DEFENSE_SKILL = "Verteidigung ([+-]+)([0-9]+).",
	DODGE = "Erhöht Eure Chance, einem Angriff auszuweichen, um ([0-9]+)%%.",
	FERAL_ATTACK_POWER = "([+-]+)([0-9]+) Angriffskraft in Katzengestalt, Bärengestalt oder Terrorbärengestalt.",
	HIT = "Erhöht Eure Trefferwertung um ([0-9]+).",
	HIT2 = "Verbessert Eure Trefferchance um ([0-9]+)%%.",
	HIT_SPELL = "Erhöht Eure Zaubertrefferwertung um ([0-9]+).",
	HIT_SPELL2 = "Erhöht Eure Chance mit Zaubern zu treffen um ([0-9]+)%%.",
	PARRY = "Erhöht Eure Chance, einen Angriff zu parieren, um ([0-9]+)%%.",
	SPELL_HEAL_DAMAGE = "Erhöht durch Zauber und magische Effekte verursachten Schaden und Heilung um bis zu ([0-9]+).",
	SPELL_PENETRATION = "Erhöht Eure Zauberdurchschlagskraft um ([0-9]+).",
	SPELL_PENETRATION2 = "Verringert die Magiewiderstände der Ziele Eurer Zauber um ([0-9]+).",


} end)



ZygorGuidesViewer_L("Specials", "deDE", function() return {
	["plural"] = function (word)
		return word
	end,
	['contract_mobs'] = false,
} end)
