if GetLocale()~="zhTW" then return end

ZygorGuidesViewer_L("Main", "zhTW", function() return {
	MainFont = [[Fonts\bLEI00D.ttf]],
	MainFontBold = [[Fonts\bLEI00D.ttf]],

-----------------------------------------------------------------------------------------------------------------
-- itemscore patterns -------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	SPELL_DAMAGE_DONE_HOLY =   ("提高%s法术和效果所造成的伤害，最多([0-9]+)点。"):format(_G["SPELL_SCHOOL1_CAP"]),
	SPELL_DAMAGE_DONE_FIRE =   ("提高%s法术和效果所造成的伤害，最多([0-9]+)点。"):format(_G["SPELL_SCHOOL2_CAP"]),
	SPELL_DAMAGE_DONE_NATURE = ("提高%s法术和效果所造成的伤害，最多([0-9]+)点。"):format(_G["SPELL_SCHOOL3_CAP"]),
	SPELL_DAMAGE_DONE_FROST =  ("提高%s法术和效果所造成的伤害，最多([0-9]+)点。"):format(_G["SPELL_SCHOOL4_CAP"]),
	SPELL_DAMAGE_DONE_SHADOW = ("提高%s法术和效果所造成的伤害，最多([0-9]+)点。"):format(_G["SPELL_SCHOOL5_CAP"]),
	SPELL_DAMAGE_DONE_ARCANE = ("提高%s法术和效果所造成的伤害，最多([0-9]+)点。"):format(_G["SPELL_SCHOOL6_CAP"]),

	SPELL_DAMAGE_DONE_HOLY2 =   (SINGLE_DAMAGE_TEMPLATE:format(_G["SPELL_SCHOOL1_CAP"])).." ([+-]+)([0-9]+)",
	SPELL_DAMAGE_DONE_FIRE2 =   (SINGLE_DAMAGE_TEMPLATE:format(_G["SPELL_SCHOOL2_CAP"])).." ([+-]+)([0-9]+)",
	SPELL_DAMAGE_DONE_NATURE2 = (SINGLE_DAMAGE_TEMPLATE:format(_G["SPELL_SCHOOL3_CAP"])).." ([+-]+)([0-9]+)",
	SPELL_DAMAGE_DONE_FROST2 =  (SINGLE_DAMAGE_TEMPLATE:format(_G["SPELL_SCHOOL4_CAP"])).." ([+-]+)([0-9]+)",
	SPELL_DAMAGE_DONE_SHADOW2 = (SINGLE_DAMAGE_TEMPLATE:format(_G["SPELL_SCHOOL5_CAP"])).." ([+-]+)([0-9]+)",
	SPELL_DAMAGE_DONE_ARCANE2 = (SINGLE_DAMAGE_TEMPLATE:format(_G["SPELL_SCHOOL6_CAP"])).." ([+-]+)([0-9]+)",

	BLOCK =	"使你的格挡等级提高([0-9]+)。",
	BLOCK2 = "使你用盾牌格挡攻击的几率提高([0-9]+)%%。",
	CRIT = "使你的爆击等级提高([0-9]+)。",
	CRIT2 = "使你造成爆击的几率提高([0-9]+)%%。",
	CRIT_SPELL = "使你的法术爆击等级提高([0-9]+)。",
	DEFENSE_SKILL = "防御技能提高13点。",
	DODGE = "使你躲闪攻击的几率提高([0-9]+)%%。",
	FERAL_ATTACK_POWER = "在猎豹、熊或巨熊形态下的攻击强度提高154点。",
	HIT = "使你的命中等级提高([0-9]+)。",
	HIT_SPELL = "使你的法术命中等级提高([0-9]+)。",
	HIT_SPELL2 = "使你的法术击中敌人的几率提高([0-9]+)%%。",
	PARRY = "使你招架攻击的几率提高([0-9]+)%%。",
	SPELL_HEAL_DAMAGE = "提高所有法术和魔法效果所造成的伤害和治疗效果，最多([0-9]+)点。",
	SPELL_PENETRATION = "使你的法术穿透提高([0-9]+)。",
	SPELL_PENETRATION2 = "使你的法术目标的魔法抗性降低([0-9]+)点。",


} end)
