-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Util = TSM.UI:NewPackage("Util")
local L = TSM.Include("Locale").GetTable()
local Color = TSM.Include("Util.Color")
local Theme = TSM.Include("Util.Theme")
local Settings = TSM.Include("Service.Settings")
local private = {
	settings = nil,
}
local CUSTOM_COLOR_SET_KEY = "custom"
local THEME_COLOR_SETS = {
	{
		key = "midnight",
		name = L["Midnight"],
		colors = {
			PRIMARY_BG = Color.NewFromHex("#000000"),
			PRIMARY_BG_ALT = Color.NewFromHex("#121212"),
			FRAME_BG = Color.NewFromHex("#232323"),
			ACTIVE_BG = Color.NewFromHex("#404046"),
			ACTIVE_BG_ALT = Color.NewFromHex("#a0a0a0"),
		},
	},
	{
		key = "duskwood",
		name = L["Duskwood"],
		colors = {
			PRIMARY_BG = Color.NewFromHex("#000000"),
			PRIMARY_BG_ALT = Color.NewFromHex("#2e2e2e"),
			FRAME_BG = Color.NewFromHex("#404040"),
			ACTIVE_BG = Color.NewFromHex("#585858"),
			ACTIVE_BG_ALT = Color.NewFromHex("#9d9d9d"),
		},
	},
	{
		key = "dalaran",
		name = L["Dalaran"],
		colors = {
			PRIMARY_BG = Color.NewFromHex("#15141f"),
			PRIMARY_BG_ALT = Color.NewFromHex("#262537"),
			FRAME_BG = Color.NewFromHex("#35334d"),
			ACTIVE_BG = Color.NewFromHex("#4a476c"),
			ACTIVE_BG_ALT = Color.NewFromHex("#958fd9"),
		},
	},
	{
		key = "swampOfSorrows",
		name = L["Swamp of Sorrows"],
		colors = {
			PRIMARY_BG = Color.NewFromHex("#151e1b"),
			PRIMARY_BG_ALT = Color.NewFromHex("#273430"),
			FRAME_BG = Color.NewFromHex("#364942"),
			ACTIVE_BG = Color.NewFromHex("#567551"),
			ACTIVE_BG_ALT = Color.NewFromHex("#B5B28C"),
		},
	},
	{
		key = "orgrimmar",
		name = L["Orgrimmar"],
		colors = {
			PRIMARY_BG = Color.NewFromHex("#120908"),
			PRIMARY_BG_ALT = Color.NewFromHex("#40221b"),
			FRAME_BG = Color.NewFromHex("#6F3A2F"),
			ACTIVE_BG = Color.NewFromHex("#A25B3E"),
			ACTIVE_BG_ALT = Color.NewFromHex("#E1D4C4"),
		},
	},
	{
		key = "stormwind",
		name = L["Stormwind"],
		colors = {
			PRIMARY_BG = Color.NewFromHex("#191a1a"),
			PRIMARY_BG_ALT = Color.NewFromHex("#2b3131"),
			FRAME_BG = Color.NewFromHex("#4C585C"),
			ACTIVE_BG = Color.NewFromHex("#6B7673"),
			ACTIVE_BG_ALT = Color.NewFromHex("#D9DCD3"),
		},
	},
	{
		key = "winamp",
		name = L["Winamp"],
		colors = {
			PRIMARY_BG = Color.NewFromHex("#000000"),
			PRIMARY_BG_ALT = Color.NewFromHex("#1B1B2A"),
			FRAME_BG = Color.NewFromHex("#383858"),
			ACTIVE_BG = Color.NewFromHex("#6a6a7a"),
			ACTIVE_BG_ALT = Color.NewFromHex("#bdced6"),
		},
	},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Util.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "appearanceOptions", "colorSet")
		:AddKey("global", "appearanceOptions", "customColorSet")

	-- register built-in themes
	local foundCurrentColorSet = false
	for _, info in ipairs(THEME_COLOR_SETS) do
		Theme.RegisterColorSet(info.key, info.name, info.colors)
		foundCurrentColorSet = foundCurrentColorSet or info.key == private.settings.colorSet
	end

	-- register the custom theme
	local isCustomActive = private.settings.colorSet == CUSTOM_COLOR_SET_KEY
	local customColors = {}
	for key in Theme.ThemeColorKeyIterator() do
		customColors[key] = Color.NewFromHex(isCustomActive and private.settings.customColorSet[key] or "#000000")
	end
	Theme.RegisterColorSet(CUSTOM_COLOR_SET_KEY, L["Custom"], customColors)
	foundCurrentColorSet = foundCurrentColorSet or isCustomActive

	if not foundCurrentColorSet then
		private.settings.colorSet = private.settings:GetDefaultReadOnly("colorSet")
	end
	private.SetActiveColorSetHelper(private.settings.colorSet)
end

function Util.ColorSetIterator()
	return private.ColorSetIterator, THEME_COLOR_SETS, 0
end

function Util.SetActiveColorSet(key)
	if private.settings.colorSet == key then
		return
	end
	private.SetActiveColorSetHelper(key)
end

function Util.SetCustomColor(key, r, g, b)
	Util.SetActiveColorSet(CUSTOM_COLOR_SET_KEY)
	private.SetCustomColorHelper(key, r, g, b)
end

function Util.GetCustomColorThemeKey(key)
	return key..":"..CUSTOM_COLOR_SET_KEY
end

function Util.GetCustomColorSetKey()
	return CUSTOM_COLOR_SET_KEY
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.SetActiveColorSetHelper(colorSetKey)
	if colorSetKey ~= CUSTOM_COLOR_SET_KEY then
		-- overwrite the custom color set with the one we're selecting
		local colors = nil
		for _, info in ipairs(THEME_COLOR_SETS) do
			if info.key == colorSetKey then
				colors = info.colors
				break
			end
		end
		assert(colors)
		for colorKey, color in pairs(colors) do
			private.SetCustomColorHelper(colorKey, color:GetRGBA())
		end
	end
	private.settings.colorSet = colorSetKey
	Theme.SetActiveColorSet(colorSetKey)
end

function private.SetCustomColorHelper(key, r, g, b)
	Theme.UpdateColor(CUSTOM_COLOR_SET_KEY, key, r, g, b)
	private.settings.customColorSet[key] = Theme.GetColor(key..":"..CUSTOM_COLOR_SET_KEY):GetHexNoAlpha()
end

function private.ColorSetIterator(tbl, index)
	index = index + 1
	local key, name = nil, nil
	if index == #tbl + 1 and private.settings.colorSet == CUSTOM_COLOR_SET_KEY then
		key = CUSTOM_COLOR_SET_KEY
		name = L["Custom"]
	elseif not tbl[index] then
		return
	else
		key = tbl[index].key
		name = tbl[index].name
	end
	return index, key, name, private.settings.colorSet == key
end
