-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local FontPaths = TSM.Init("Data.FontPaths") ---@class Data.FontPaths
local ALPHABET_LOOKUP = {
	enUS = "roman",
	esES = "roman",
	esMX = "roman",
	deDE = "roman",
	frFR = "roman",
	itIT = "roman",
	ptBR = "roman",
	koKR = "korean",
	zhCN = "chinese",
	zhTW = "chinese",
	ruRU = "russian",
}
local ALPHABET = ALPHABET_LOOKUP[GetLocale()]
assert(ALPHABET)



-- ============================================================================
-- Font Path Data
-- ============================================================================

local FONT_PATHS = {
	BodyRegular = {
		roman = "Interface\\Addons\\TradeSkillMaster\\Media\\Montserrat-Regular.ttf",
		korean = "Fonts\\2002.ttf",
		chinese = "Fonts\\ARKai_C.ttf",
		russian = "Interface\\Addons\\TradeSkillMaster\\Media\\Montserrat-Regular.ttf",
	},
	BodyMedium = {
		roman = "Interface\\Addons\\TradeSkillMaster\\Media\\Montserrat-Medium.ttf",
		korean = "Fonts\\2002.ttf",
		chinese = "Fonts\\ARKai_C.ttf",
		russian = "Interface\\Addons\\TradeSkillMaster\\Media\\Montserrat-Medium.ttf",
	},
	BodyBold = {
		roman = "Interface\\Addons\\TradeSkillMaster\\Media\\Montserrat-Bold.ttf",
		korean = "Fonts\\2002.ttf",
		chinese = "Fonts\\ARKai_C.ttf",
		russian = "Interface\\Addons\\TradeSkillMaster\\Media\\Montserrat-Bold.ttf",
	},
	Item = {
		roman = "Fonts\\FRIZQT__.ttf",
		korean = "Fonts\\2002.ttf",
		chinese = "Fonts\\ARKai_C.ttf",
		russian = "Fonts\\FRIZQT___CYR.ttf",
	},
	Table = {
		roman = "Interface\\Addons\\TradeSkillMaster\\Media\\Roboto-Medium.ttf",
		korean = "Fonts\\2002.ttf",
		chinese = "Fonts\\ARKai_C.ttf",
		russian = "Interface\\Addons\\TradeSkillMaster\\Media\\Roboto-Medium.ttf",
	},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function FontPaths.GetBodyRegular()
	return FONT_PATHS.BodyRegular[ALPHABET]
end

function FontPaths.GetBodyMedium()
	return FONT_PATHS.BodyMedium[ALPHABET]
end

function FontPaths.GetBodyBold()
	return FONT_PATHS.BodyBold[ALPHABET]
end

function FontPaths.GetItem()
	return FONT_PATHS.Item[ALPHABET]
end

function FontPaths.GetTable()
	return FONT_PATHS.Table[ALPHABET]
end
