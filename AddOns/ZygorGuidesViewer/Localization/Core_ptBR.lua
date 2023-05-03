if GetLocale()~="ptBR" then return end

ZygorGuidesViewer_L("Main", "ptBR", function() return {
-----------------------------------------------------------------------------------------------------------------
-- itemscore patterns -------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	SPELL_DAMAGE_DONE_HOLY =   ("Aumenta em até ([0-9]+) o dano causado por feitiços e efeitos de Fogo."):format(_G["SPELL_SCHOOL1_CAP"]),
	SPELL_DAMAGE_DONE_FIRE =   ("Aumenta em até ([0-9]+) o dano causado por feitiços e efeitos de Fogo."):format(_G["SPELL_SCHOOL2_CAP"]),
	SPELL_DAMAGE_DONE_NATURE = ("Aumenta em até ([0-9]+) o dano causado por feitiços e efeitos de Fogo."):format(_G["SPELL_SCHOOL3_CAP"]),
	SPELL_DAMAGE_DONE_FROST =  ("Aumenta em até ([0-9]+) o dano causado por feitiços e efeitos de Fogo."):format(_G["SPELL_SCHOOL4_CAP"]),
	SPELL_DAMAGE_DONE_SHADOW = ("Aumenta em até ([0-9]+) o dano causado por feitiços e efeitos de Fogo."):format(_G["SPELL_SCHOOL5_CAP"]),
	SPELL_DAMAGE_DONE_ARCANE = ("Aumenta em até ([0-9]+) o dano causado por feitiços e efeitos de Fogo."):format(_G["SPELL_SCHOOL6_CAP"]),

	BLOCK =	"Aumenta em ([0-9]+) a sua taxa de bloqueio.",
	BLOCK2 = "Aumenta em ([0-9]+)%% a chance de bloquear ataques com o escudo.",
	CRIT = "Aumenta em ([0-9]+) a taxa de acerto crítico.",
	CRIT2 = "Aumenta em ([0-9]+)%% a chance de realizar acertos críticos.",
	CRIT_SPELL = "Aumenta em ([0-9]+) a taxa de acerto crítico de seus feitiços.",
	CRIT_SPELL2 = "Aumenta em ([0-9]+)%% a chance de realizar acertos críticos com feitiços.",
	DEFENSE_SKILL = "Defesa aumentada em 13.",
	DODGE = "Aumenta em ([0-9]+)%% a chance de esquivar-se de ataques.",
	FERAL_ATTACK_POWER = "([+-]+)([0-9]+) de Poder de Ataque sob forma de Felino, Urso e Urso Hediondo.",
	HIT = "Aumenta em ([0-9]+) a sua taxa de acerto.",
	HIT2 = "Aumenta em ([0-9]+)%% a chance de acerto.",
	HIT_SPELL = "Aumenta em ([0-9]+) sua taxa de acerto de feitiços.",
	HIT_SPELL2 = "Aumenta em ([0-9]+)%% sua chance de acertar com feitiços.",
	PARRY = "Aumenta em ([0-9]+)%% a sua chance de aparar ataques.",
	SPELL_HEAL_DAMAGE = "Aumenta em até ([0-9]+) o dano causado e a cura realizada por feitiços e efeitos mágicos.",
	SPELL_PENETRATION = "Aumenta em ([0-9]+) sua penetração de feitiços.",
	SPELL_PENETRATION2 = "Reduz em ([0-9]+) as resistências mágicas dos alvos dos seus feitiços.",


} end)



ZygorGuidesViewer_L("Specials", "ptBR", function() return {
	["plural"] = function (word)
		return word
	end,
	['contract_mobs'] = false,
} end)
