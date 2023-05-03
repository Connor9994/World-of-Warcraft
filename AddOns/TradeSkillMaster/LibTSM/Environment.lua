-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Environment = TSM.Init("Environment") ---@class Environment
local EnumType = TSM.Include("Util.EnumType")
Environment.FEATURES = EnumType.New("FEATURES", {
	TEXTURE_SET_GRADIENT = EnumType.CreateValue(),
	REGION_SET_RESIZE_BOUNDS = EnumType.CreateValue(),
	PLAYER_INTERACTION_MANAGER = EnumType.CreateValue(),
	C_CONTAINER = EnumType.CreateValue(),
	REAGENT_BAG = EnumType.CreateValue(),
	CONNECTED_FACTION_AH = EnumType.CreateValue(),
	HONOR_POINTS = EnumType.CreateValue(),
	MULTIPLE_ENCHANTING_VELLUMS = EnumType.CreateValue(),
	SUB_PROFESSION_NAMES = EnumType.CreateValue(),
	AH_COPPER = EnumType.CreateValue(),
	AH_STACKS = EnumType.CreateValue(),
	AH_UNCOLLECTED_FILTER = EnumType.CreateValue(),
	AH_UPGRADES_FILTER = EnumType.CreateValue(),
	BATTLE_PETS = EnumType.CreateValue(),
	GARRISON = EnumType.CreateValue(),
	GUILD_BANK = EnumType.CreateValue(),
	C_AUCTION_HOUSE = EnumType.CreateValue(),
	COMMODITY_ITEMS = EnumType.CreateValue(),
	CRAFTING_QUALITY = EnumType.CreateValue(),
	C_TRADE_SKILL_UI = EnumType.CreateValue(),
	C_TOOLTIP_INFO = EnumType.CreateValue(),
	REAGENT_BANK = EnumType.CreateValue(),
	BLACK_MARKET_AH = EnumType.CreateValue(),
})
local private = {
	features = nil,
}
local VERSION_RAW = GetAddOnMetadata("TradeSkillMaster", "Version")
local IS_DEV_VERSION = strmatch(VERSION_RAW, "^@tsm%-project%-version@$") and true or false
local GAME_VERSION = nil
do
	if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then
		GAME_VERSION = "VANILLA"
	elseif WOW_PROJECT_ID == WOW_PROJECT_WRATH_CLASSIC then
		GAME_VERSION = "WRATH"
	elseif WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then
		GAME_VERSION = "RETAIL"
	end
	assert(GAME_VERSION, "Invalid WoW game version: "..tostring(WOW_PROJECT_ID))
end



-- ============================================================================
-- Module Loading
-- ============================================================================

Environment:OnModuleLoad(function()
	private.features = {
		[Environment.FEATURES.TEXTURE_SET_GRADIENT] = not Environment.IsVanillaClassic(),
		[Environment.FEATURES.REGION_SET_RESIZE_BOUNDS] = not Environment.IsVanillaClassic(),
		[Environment.FEATURES.PLAYER_INTERACTION_MANAGER] = not Environment.IsVanillaClassic(),
		[Environment.FEATURES.C_CONTAINER] = not Environment.IsVanillaClassic(),
		[Environment.FEATURES.REAGENT_BAG] = Environment.IsRetail(),
		[Environment.FEATURES.CONNECTED_FACTION_AH] = Environment.IsRetail(),
		[Environment.FEATURES.HONOR_POINTS] = Environment.IsWrathClassic(),
		[Environment.FEATURES.MULTIPLE_ENCHANTING_VELLUMS] = Environment.IsWrathClassic(),
		[Environment.FEATURES.SUB_PROFESSION_NAMES] = not Environment.IsRetail(),
		[Environment.FEATURES.AH_COPPER] = not Environment.IsRetail(),
		[Environment.FEATURES.AH_STACKS] = not Environment.IsRetail(),
		[Environment.FEATURES.AH_UNCOLLECTED_FILTER] = Environment.IsRetail(),
		[Environment.FEATURES.AH_UPGRADES_FILTER] = Environment.IsRetail(),
		[Environment.FEATURES.BATTLE_PETS] = Environment.IsRetail(),
		[Environment.FEATURES.GARRISON] = Environment.IsRetail(),
		[Environment.FEATURES.GUILD_BANK] = not Environment.IsVanillaClassic(),
		[Environment.FEATURES.C_AUCTION_HOUSE] = Environment.IsRetail(),
		[Environment.FEATURES.COMMODITY_ITEMS] = Environment.IsRetail(),
		[Environment.FEATURES.CRAFTING_QUALITY] = Environment.IsRetail(),
		[Environment.FEATURES.C_TRADE_SKILL_UI] = Environment.IsRetail(),
		[Environment.FEATURES.C_TOOLTIP_INFO] = Environment.IsRetail(),
		[Environment.FEATURES.REAGENT_BANK] = Environment.IsRetail(),
		[Environment.FEATURES.BLACK_MARKET_AH] = Environment.IsRetail(),
	}
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

---Returns whether or not we're running in a dev environment.
---@return boolean
function Environment.IsDev()
	return IS_DEV_VERSION
end

---Returns whether or not we're running in a test environment.
---@return boolean
function Environment.IsTest()
	return VERSION_RAW == "v4.99.99"
end

---Gets the current addon version.
---@return string
function Environment.GetVersion()
	return Environment.IsDev() and "Dev" or VERSION_RAW
end

---Returns whether or not we're running within the retail version of the game.
---@return boolean
function Environment.IsRetail()
	return GAME_VERSION == "RETAIL"
end

---Returns whether or not we're running within the Vanilla Classic version of the game.
---@return boolean
function Environment.IsVanillaClassic()
	return GAME_VERSION == "VANILLA"
end

---Returns whether or not we're running within the Wrath Classic version of the game.
---@return boolean
function Environment.IsWrathClassic()
	return GAME_VERSION == "WRATH"
end

---Checks whether or not a features is available in the current game version.
---@param feature table A value of Environment.FEATURES
---@return boolean
function Environment.HasFeature(feature)
	local result = private.features[feature]
	assert(type(result) == "boolean")
	return result
end
