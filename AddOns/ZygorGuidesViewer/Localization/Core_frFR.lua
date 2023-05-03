if GetLocale()~="frFR" then return end

ZygorGuidesViewer_L("Main", "frFR", function() return {
-----------------------------------------------------------------------------------------------------------------
-- itemscore patterns -------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	SPELL_DAMAGE_DONE_HOLY   = ("Augmente les dégâts infligés par les sorts et effets de Feu de ([0-9]+) au maximum."):format(_G["SPELL_SCHOOL1_CAP"]),
	SPELL_DAMAGE_DONE_FIRE   = ("Augmente les dégâts infligés par les sorts et effets de Feu de ([0-9]+) au maximum."):format(_G["SPELL_SCHOOL2_CAP"]),
	SPELL_DAMAGE_DONE_NATURE = ("Augmente les dégâts infligés par les sorts et effets de Feu de ([0-9]+) au maximum."):format(_G["SPELL_SCHOOL3_CAP"]),
	SPELL_DAMAGE_DONE_FROST  = ("Augmente les dégâts infligés par les sorts et effets de Feu de ([0-9]+) au maximum."):format(_G["SPELL_SCHOOL4_CAP"]),
	SPELL_DAMAGE_DONE_SHADOW = ("Augmente les dégâts infligés par les sorts et effets de Feu de ([0-9]+) au maximum."):format(_G["SPELL_SCHOOL5_CAP"]),
	SPELL_DAMAGE_DONE_ARCANE = ("Augmente les dégâts infligés par les sorts et effets de Feu de ([0-9]+) au maximum."):format(_G["SPELL_SCHOOL6_CAP"]),

	BLOCK =	"Augmente votre score de blocage de ([0-9]+).",
	BLOCK2 = "Augmente vos chances de bloquer les attaques avec un bouclier de ([0-9]+)%%.",
	CRIT = "Augmente votre score de coup critique de ([0-9]+).",
	CRIT2 = "Augmente vos chances d'infliger un coup critique de ([0-9]+)%%.",
	CRIT_SPELL = "Augmente le score de coup critique des sorts de ([0-9]+).",
	CRIT_SPELL2 = "Augmente vos chances d'infliger un coup critique avec vos sorts de ([0-9]+)%%.",
	DEFENSE_SKILL = "Défense augmentée de 13.",
	DODGE = "Augmente vos chances d'esquiver une attaque de ([0-9]+)%%.",
	FERAL_ATTACK_POWER = "([+-]+)([0-9]+) à la puissance d'attaque pour les formes de félin, d'ours et d'ours redoutable uniquement.",
	HIT = "Augmente votre score de toucher de ([0-9]+).",
	HIT2 = "Augmente vos chances de toucher de ([0-9]+)%%.",
	HIT_SPELL = "Augmente le score de toucher des sorts de ([0-9]+).",
	HIT_SPELL2 = "Augmente vos chances de toucher avec des sorts de ([0-9]+)%%.",
	PARRY = "Augmente vos chances de parer une attaque de ([0-9]+)%%.",
	SPELL_HEAL_DAMAGE = "Augmente les dégâts et les soins produits par les sorts et effets magiques de ([0-9]+) au maximum.",
	SPELL_PENETRATION = "Augmente la pénétration de vos sorts de ([0-9]+).",
	SPELL_PENETRATION2 = "Diminue les résistances magiques des cibles de vos sorts de ([0-9]+).",


} end)



ZygorGuidesViewer_L("Specials", "frFR", function() return {
	["plural"] = function (word)
		return word
	end,
	['contract_mobs'] = false,
} end)
