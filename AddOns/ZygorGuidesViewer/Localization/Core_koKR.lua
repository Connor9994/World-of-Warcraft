if GetLocale()~="koKR" then return end

ZygorGuidesViewer_L("Main", "koKR", function() return {
	MainFont = [[Fonts\2002.TTF]],
	MainFontBold = [[Fonts\2002.TTF]],

-----------------------------------------------------------------------------------------------------------------
-- itemscore patterns -------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
	SPELL_DAMAGE_DONE_HOLY =   ("%s 계열의 주문과 효과의 공격력이 최대 ([0-9]+)만큼 증가합니다."):format(_G["SPELL_SCHOOL1_CAP"]),
	SPELL_DAMAGE_DONE_FIRE =   ("%s 계열의 주문과 효과의 공격력이 최대 ([0-9]+)만큼 증가합니다."):format(_G["SPELL_SCHOOL2_CAP"]),
	SPELL_DAMAGE_DONE_NATURE = ("%s 계열의 주문과 효과의 공격력이 최대 ([0-9]+)만큼 증가합니다."):format(_G["SPELL_SCHOOL3_CAP"]),
	SPELL_DAMAGE_DONE_FROST =  ("%s 계열의 주문과 효과의 공격력이 최대 ([0-9]+)만큼 증가합니다."):format(_G["SPELL_SCHOOL4_CAP"]),
	SPELL_DAMAGE_DONE_SHADOW = ("%s 계열의 주문과 효과의 공격력이 최대 ([0-9]+)만큼 증가합니다."):format(_G["SPELL_SCHOOL5_CAP"]),
	SPELL_DAMAGE_DONE_ARCANE = ("%s 계열의 주문과 효과의 공격력이 최대 ([0-9]+)만큼 증가합니다."):format(_G["SPELL_SCHOOL6_CAP"]),

	SPELL_DAMAGE_DONE_HOLY2 =   (SINGLE_DAMAGE_TEMPLATE:format(_G["SPELL_SCHOOL1_CAP"])).." ([+-]+)([0-9]+)",
	SPELL_DAMAGE_DONE_FIRE2 =   (SINGLE_DAMAGE_TEMPLATE:format(_G["SPELL_SCHOOL2_CAP"])).." ([+-]+)([0-9]+)",
	SPELL_DAMAGE_DONE_NATURE2 = (SINGLE_DAMAGE_TEMPLATE:format(_G["SPELL_SCHOOL3_CAP"])).." ([+-]+)([0-9]+)",
	SPELL_DAMAGE_DONE_FROST2 =  (SINGLE_DAMAGE_TEMPLATE:format(_G["SPELL_SCHOOL4_CAP"])).." ([+-]+)([0-9]+)",
	SPELL_DAMAGE_DONE_SHADOW2 = (SINGLE_DAMAGE_TEMPLATE:format(_G["SPELL_SCHOOL5_CAP"])).." ([+-]+)([0-9]+)",
	SPELL_DAMAGE_DONE_ARCANE2 = (SINGLE_DAMAGE_TEMPLATE:format(_G["SPELL_SCHOOL6_CAP"])).." ([+-]+)([0-9]+)",

	BLOCK =	"방패 막기 숙련도가 ([0-9]+)만큼 증가합니다.",
	BLOCK2 = "방패로 적의 공격을 방어할 확률이 ([0-9]+)%%만큼 증가합니다.",
	CRIT = "치명타 적중도가 ([0-9]+)만큼 증가합니다.",
	CRIT2 = "치명타를 적중시킬 확률이 ([0-9]+)%%만큼 증가합니다.",
	CRIT_SPELL = "주문의 극대화 적중도가 ([0-9]+)만큼 증가합니다.",
	CRIT_SPELL2 = "주문이 극대화 효과를 낼 확률이 ([0-9]+)%%만큼 증가합니다.",
	DEFENSE_SKILL = "방어 숙련도 ([+-]+)([0-9]+)",
	DODGE = "공격을 회피할 확률이 ([0-9]+)%%만큼 증가합니다.",
	FERAL_ATTACK_POWER = "표범, 광포한 곰, 곰 변신 상태일 때 전투력이 154만큼 증가합니다.",
	HIT = "적중도가 ([0-9]+)만큼 증가합니다.",
	HIT2 = "무기의 적중률이 ([0-9]+)%%만큼 증가합니다.",
	HIT_SPELL = "주문 적중도가 ([0-9]+)만큼 증가합니다.",
	HIT_SPELL2 = "주문의 적중률이 ([0-9]+)%%만큼 증가합니다.",
	PARRY = "무기 막기 확률이 ([0-9]+)%%만큼 증가합니다.",
	SPELL_HEAL_DAMAGE = "모든 주문 및 효과의 공격력과 치유량이 최대 ([0-9]+)만큼 증가합니다.",
	SPELL_PENETRATION = "주문 관통력이 ([0-9]+)만큼 증가합니다.",
	SPELL_PENETRATION2 = "자신의 주문에 대한 대상의 마법 저항력을 ([0-9]+)만큼 감소시킵니다.",


} end)
