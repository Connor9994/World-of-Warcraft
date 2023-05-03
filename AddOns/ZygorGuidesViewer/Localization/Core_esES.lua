if GetLocale()~="esES" then return end

ZygorGuidesViewer_L("Main", "esES", function() return {
-----------------------------------------------------------------------------------------------------------------
-- itemscore patterns -------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	SPELL_DAMAGE_DONE_HOLY    = ("Aumenta el daño causado por los hechizos de %s y los efectos hasta en ([0-9]+) p."):format(_G["SPELL_SCHOOL1_CAP"]),
	SPELL_DAMAGE_DONE_FIRE    = ("Aumenta el daño causado por los hechizos de %s y los efectos hasta en ([0-9]+) p."):format(_G["SPELL_SCHOOL2_CAP"]),
	SPELL_DAMAGE_DONE_NATURE  = ("Aumenta el daño causado por los hechizos de %s y los efectos hasta en ([0-9]+) p."):format(_G["SPELL_SCHOOL3_CAP"]),
	SPELL_DAMAGE_DONE_FROST   = ("Aumenta el daño causado por los hechizos de %s y los efectos hasta en ([0-9]+) p."):format(_G["SPELL_SCHOOL4_CAP"]),
	SPELL_DAMAGE_DONE_SHADOW  = ("Aumenta el daño causado por los hechizos de %s y los efectos hasta en ([0-9]+) p."):format(_G["SPELL_SCHOOL5_CAP"]),
	SPELL_DAMAGE_DONE_ARCANE  = ("Aumenta el daño causado por los hechizos de %s y los efectos hasta en ([0-9]+) p."):format(_G["SPELL_SCHOOL6_CAP"]),

	BLOCK =	"Aumenta tu índice de bloqueo en ([0-9]+) p.",
	BLOCK2 = "Aumenta la probabilidad de bloquear ataques con un escudo en un ([0-9]+)%%.",
	CRIT = "Aumenta tu índice de golpe crítico en ([0-9]+) p.",
	CRIT2 = "Mejora tu probabilidad de conseguir un golpe crítico en ([0-9]+)%%.",
	CRIT_SPELL = "Aumenta tu índice de golpe crítico con hechizos en ([0-9]+) p.",
	CRIT_SPELL2 = "Mejora tu probabilidad de conseguir un golpe crítico en ([0-9]+)%% con los hechizos.",
	DEFENSE_SKILL = "Defensa aumentada ([+-]+)([0-9]+).",
	DODGE = "Aumenta la probabilidad de esquivar un ataque en un ([0-9]+)%%.",
	FERAL_ATTACK_POWER = "([+-]+)([0-9]+) p. de poder de ataque solo bajo formas felinas, de oso y de oso nefasto.",
	HIT = "Aumenta tu índice de golpe en ([0-9]+) p.",
	HIT2 = "Mejora tu probabilidad de alcanzar el objetivo en un ([0-9]+)%%.",
	HIT_SPELL = "Aumenta tu índice de golpe con hechizos en ([0-9]+) p.",
	HIT_SPELL2 = "Mejora tu probabilidad de alcanzar el objetivo con hechizos en un ([0-9]+)%%.",
	PARRY = "Aumenta la probabilidad de parar un ataque en un ([0-9]+)%%.",
	SPELL_HEAL_DAMAGE = "Aumenta el daño y la sanación de los hechizos mágicos y los efectos hasta en ([0-9]+) p.",
	SPELL_PENETRATION = "Aumenta la penetración de tus hechizos en ([0-9]+) p.",
	SPELL_PENETRATION2 = "Reduce las resistencias mágicas de los objetivos de tus hechizos en ([0-9]+) p.",


} end)



ZygorGuidesViewer_L("Specials", "esES", function() return {
	["plural"] = function (word)
		return word
	end,
	['contract_mobs'] = false,
} end)
