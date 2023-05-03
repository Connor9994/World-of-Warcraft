-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Theme = TSM.Init("Util.Theme") ---@class Util.Theme
local Environment = TSM.Include("Environment")
local FontPaths = TSM.Include("Data.FontPaths")
local Color = TSM.Include("Util.Color")
local Table = TSM.Include("Util.Table")
local FontObject = TSM.Include("Util.FontObject")
local Reactive = TSM.Include("Util.Reactive")
local private = {
	callbacks = {},
	names = {},
	colorSets = {},
	currentColorSetKey = nil,
	fontFrame = nil,
	currentFontSet = nil,
	streams = {},
	publisherKey = {},
	publishKeysTemp = {},
}
local THEME_COLOR_KEYS = {
	PRIMARY_BG = true,
	PRIMARY_BG_ALT = true,
	FRAME_BG = true,
	ACTIVE_BG = true,
	ACTIVE_BG_ALT = true,
}
---@alias ThemeColorKey
---|'"INDICATOR"'
---|'"INDICATOR_ALT"'
---|'"INDICATOR_DISABLED"'
---|'"TEXT"'
---|'"TEXT_ALT"'
---|'"TEXT_DISABLED"'
---|'"FEEDBACK_RED"'
---|'"FEEDBACK_YELLOW"'
---|'"FEEDBACK_GREEN"'
---|'"FEEDBACK_BLUE"'
---|'"FEEDBACK_ORANGE"'
---|'"GROUP_ONE"'
---|'"GROUP_TWO"'
---|'"GROUP_THREE"'
---|'"GROUP_FOUR"'
---|'"GROUP_FIVE"'
---|'"FULL_BLACK"'
---|'"FULL_WHITE"'
---|'"TRANSPARENT"'
---|'"BLIZZARD_YELLOW"'
---|'"BLIZZARD_GM"'
local STATIC_COLORS = {
	INDICATOR = Color.NewFromHex("#ffd839"),
	INDICATOR_ALT = Color.NewFromHex("#79a2ff"),
	INDICATOR_DISABLED = Color.NewFromHex("#6f5819"),

	TEXT = Color.NewFromHex("#ffffff"),
	TEXT_ALT = Color.NewFromHex("#e2e2e2"),
	TEXT_DISABLED = Color.NewFromHex("#424242"),

	FEEDBACK_RED = Color.NewFromHex("#f72d20"),
	FEEDBACK_YELLOW = Color.NewFromHex("#e1f720"),
	FEEDBACK_GREEN = Color.NewFromHex("#4ff720"),
	FEEDBACK_BLUE = Color.NewFromHex("#2076f7"),
	FEEDBACK_ORANGE = Color.NewFromHex("#f77a20"),

	GROUP_ONE = Color.NewFromHex("#fcf141"),
	GROUP_TWO = Color.NewFromHex("#bdaec6"),
	GROUP_THREE = Color.NewFromHex("#06a2cb"),
	GROUP_FOUR = Color.NewFromHex("#ffb85c"),
	GROUP_FIVE = Color.NewFromHex("#51b599"),

	FULL_BLACK = Color.GetFullBlack(),
	FULL_WHITE = Color.GetFullWhite(),
	TRANSPARENT = Color.GetTransparent(),

	BLIZZARD_YELLOW = Color.NewFromHex("#ffff00"),
	BLIZZARD_GM = Color.NewFromHex("#00b4ff"),
}
local GROUP_COLOR_KEYS = {
	"GROUP_ONE",
	"GROUP_TWO",
	"GROUP_THREE",
	"GROUP_FOUR",
	"GROUP_FIVE",
}
---@alias ProfessionDifficultyColorKey
---|'"optimal"'
---|'"medium"'
---|'"easy"'
---|'"trivial"'
---|'"header"'
---|'"subheader"'
---|'"nodifficulty"'
local PROFESSION_DIFFICULTY_COLORS = Environment.IsRetail() and {
		[Enum.TradeskillRelativeDifficulty.Optimal] = Color.NewFromHex("#ff8040"),
		[Enum.TradeskillRelativeDifficulty.Medium] = Color.NewFromHex("#ffff00"),
		[Enum.TradeskillRelativeDifficulty.Easy] = Color.NewFromHex("#40c040"),
		[Enum.TradeskillRelativeDifficulty.Trivial] = Color.NewFromHex("#808080"),
		header = Color.NewFromHex("#ffd100"),
		subheader = Color.NewFromHex("#ffd100"),
		nodifficulty = Color.NewFromHex("#f5f5f5"),
	} or {
		optimal = Color.NewFromHex("#ff8040"),
		medium = Color.NewFromHex("#ffff00"),
		easy = Color.NewFromHex("#40c040"),
		trivial = Color.NewFromHex("#808080"),
		header = Color.NewFromHex("#ffd100"),
		subheader = Color.NewFromHex("#ffd100"),
		nodifficulty = Color.NewFromHex("#f5f5f5"),
	}
-- NOTE: there is a global ITEM_QUALITY_COLORS so we need to use another name
local TSM_ITEM_QUALITY_COLORS = {
	[0] = Color.NewFromHex("#9d9d9d"),
	[1] = Color.NewFromHex("#ffffff"),
	[2] = Color.NewFromHex("#1eff00"),
	[3] = Color.NewFromHex("#0070dd"),
	[4] = Color.NewFromHex("#a334ee"),
	[5] = Color.NewFromHex("#ff8000"),
	[6] = Color.NewFromHex("#e6cc80"),
	[7] = Color.NewFromHex("#00ccff"),
	[8] = Color.NewFromHex("#00ccff"),
}
local AUCTION_PCT_COLORS = {
	{ -- blue
		color = "FEEDBACK_BLUE",
		value = 50,
	},
	{ -- green
		color = "FEEDBACK_GREEN",
		value = 80,
	},
	{ -- yellow
		color = "FEEDBACK_YELLOW",
		value = 110,
	},
	{ -- orange
		color = "FEEDBACK_ORANGE",
		value = 135,
	},
	{ -- red
		color = "FEEDBACK_RED",
		value = math.huge,
	},
	default = "TEXT",
	bid = "TEXT_ALT",
}
local CONSTANTS = {
	COL_SPACING = 8,
	SCROLLBAR_MARGIN = 4,
	SCROLLBAR_WIDTH = 4,
	MOUSE_WHEEL_SCROLL_AMOUNT = 60,
}



-- ============================================================================
-- Module Loading
-- ============================================================================

Theme:OnModuleLoad(function()
	Table.SetReadOnly(STATIC_COLORS)
	Table.SetReadOnly(GROUP_COLOR_KEYS)
	Table.SetReadOnly(PROFESSION_DIFFICULTY_COLORS)
	Table.SetReadOnly(TSM_ITEM_QUALITY_COLORS)
	Table.SetReadOnly(CONSTANTS)

	-- create a frame to load fonts
	private.fontFrame = CreateFrame("Frame", nil, UIParent)
	private.fontFrame.texts = {}
	private.fontFrame:SetAllPoints()
	private.fontFrame:SetScript("OnUpdate", private.FontFrameOnUpdate)

	-- TODO: eventually allow for different font sets?
	private.currentFontSet = {
		HEADING_H5 = FontObject.New(FontPaths.GetBodyRegular(), 20, 28),
		BODY_BODY1 = FontObject.New(FontPaths.GetBodyRegular(), 16, 24),
		BODY_BODY1_BOLD = FontObject.New(FontPaths.GetBodyBold(), 16, 24),
		BODY_BODY2 = FontObject.New(FontPaths.GetBodyRegular(), 14, 20),
		BODY_BODY2_MEDIUM = FontObject.New(FontPaths.GetBodyMedium(), 14, 20),
		BODY_BODY2_BOLD = FontObject.New(FontPaths.GetBodyBold(), 14, 20),
		BODY_BODY3 = FontObject.New(FontPaths.GetBodyRegular(), 12, 20),
		BODY_BODY3_MEDIUM = FontObject.New(FontPaths.GetBodyMedium(), 12, 20),
		ITEM_BODY1 = FontObject.New(FontPaths.GetItem(), 16, 24),
		ITEM_BODY2 = FontObject.New(FontPaths.GetItem(), 14, 20),
		ITEM_BODY3 = FontObject.New(FontPaths.GetItem(), 12, 20),
		TABLE_TABLE1 = FontObject.New(FontPaths.GetTable(), 12, 20),
	}

	-- load the fonts
	for _, obj in pairs(private.currentFontSet) do
		local fontPath = obj:GetWowFont()
		private.QueueFontLoad(fontPath)
	end
end)


-- ============================================================================
-- Module Functions
-- ============================================================================

---Registers a callback when the theme changes.
---@param callback function The callback function
function Theme.RegisterChangeCallback(callback)
	assert(type(callback) == "function")
	tinsert(private.callbacks, callback)
end

---Registers a new color set.
---@param key string The key which represents the color set
---@param name string The name of the color set
---@param colorSet table The colors which make up the color set (with keys specified in `THEME_COLOR_KEYS`)
function Theme.RegisterColorSet(key, name, colorSet)
	assert(not private.colorSets[key] and type(key) == "string" and strmatch(key, "^[a-zA-Z]+$"))
	for k in pairs(THEME_COLOR_KEYS) do
		assert(Color.IsInstance(colorSet[k]))
	end
	private.names[key] = name
	private.colorSets[key] = colorSet
end

---Gets a theme color publisher which publishes deduplicated color values.
---@param key string The theme color key
---@return ReactivePublisher
function Theme.GetPublisher(key)
	assert(Theme.IsValidColor(key))
	local colorKey = private.GetColorKeyInfo(key)
	if not private.streams[colorKey] then
		local stream = Reactive.CreateStream()
		stream:SetScript("OnPublisherCancelled", private.HandlePublisherCancel)
		private.streams[colorKey] = stream
	end
	local publisher = private.streams[colorKey]:PublisherWithInitialValue(key)
		:IgnoreIfNotEquals(key)
		:MapWithFunction(Theme.GetColor)
		:IgnoreDuplicatesWithMethod("GetHex")
	private.publisherKey[publisher] = key
	return publisher
end

---Sets the active color set.
---@param colorSetKey string The key which represents the color set
function Theme.SetActiveColorSet(colorSetKey)
	assert(private.colorSets[colorSetKey])
	if private.currentColorSetKey == colorSetKey then
		return
	end
	private.currentColorSetKey = colorSetKey
	private.HandleColorChange(colorSetKey, nil)
	for _, callback in ipairs(private.callbacks) do
		callback()
	end
end

---Replaces a specific color within a theme (for user-generated themes)
---@param colorSetKey string The key of the color set to change
---@param colorKey string The key of the color to change
---@param r number The new red value (0-255)
---@param g number The new green value (0-255)
---@param b number The new blue value (0-255)
function Theme.UpdateColor(colorSetKey, colorKey, r, g, b)
	local colorSet = private.colorSets[colorSetKey]
	assert(THEME_COLOR_KEYS[colorKey] and colorSet)
	local color = colorSet[colorKey]
	assert(color)
	color:SetRGBA(r, g, b, 255)
	private.HandleColorChange(colorSetKey, colorKey)
	if colorSetKey == private.currentColorSetKey then
		for _, callback in ipairs(private.callbacks) do
			callback()
		end
	end
end

---Returns whether or not a theme color key is valid.
---@param key string The theme color key
---@return boolean
function Theme.IsValidColor(key)
	local colorKey, _, _, colorSetKey = private.GetColorKeyInfo(key)
	if not colorKey then
		return false
	end
	local color = nil
	if THEME_COLOR_KEYS[colorKey] then
		colorSetKey = colorSetKey or private.currentColorSetKey
		color = private.colorSets[colorSetKey][colorKey]
	else
		if colorSetKey then
			return false
		end
		color = STATIC_COLORS[colorKey]
	end
	return color and true or false
end

---Gets the color object from the current active color set.
---@param key string The key of the color to get
---@return ColorValue
function Theme.GetColor(key)
	local colorKey, tintPct, opacityPct, colorSetKey = private.GetColorKeyInfo(key)
	assert(colorKey)
	local color = nil
	if THEME_COLOR_KEYS[colorKey] then
		colorSetKey = colorSetKey or private.currentColorSetKey
		color = private.colorSets[colorSetKey][colorKey]
	else
		assert(not colorSetKey)
		color = STATIC_COLORS[colorKey]
	end
	assert(color)
	if tintPct then
		color = color:GetTint(tintPct)
	end
	if opacityPct then
		color = color:GetOpacity(opacityPct)
	end
	return color
end

---Gets the theme color key for a given group level.
---@param level number The level of the group (1-based)
---@return string @The theme color key for the group
function Theme.GetGroupColorKey(level)
	level = ((level - 1) % #GROUP_COLOR_KEYS) + 1
	return GROUP_COLOR_KEYS[level]
end

---Gets the color object for a given group level.
---@param level number The level of the group (1-based)
---@return ColorValue @The color object
function Theme.GetGroupColor(level)
	return STATIC_COLORS[Theme.GetGroupColorKey(level)]
end

---Gets the color for a profession.
---@param difficulty ProfessionDifficultyColorKey
---@return ColorValue
function Theme.GetProfessionDifficultyColor(difficulty)
	return PROFESSION_DIFFICULTY_COLORS[difficulty]
end

---Gets the color for an item quality.
---@param quality number
---@return ColorValue
function Theme.GetItemQualityColor(quality)
	return TSM_ITEM_QUALITY_COLORS[quality]
end

---Gets the color for an auction percentage.
---@param pct number
---@return ColorValue
function Theme.GetAuctionPercentColor(pct)
	if pct == "BID" then
		return Theme.GetColor(AUCTION_PCT_COLORS.bid)
	end
	for _, info in ipairs(AUCTION_PCT_COLORS) do
		if pct < info.value then
			return Theme.GetColor(info.color)
		end
	end
	return Theme.GetColor(AUCTION_PCT_COLORS.default)
end

---Gets the font object from the current active font set.
---@param key string The key of the font to get
---@return FontObjectValue @The font object
function Theme.GetFont(key)
	local fontObj = private.currentFontSet[key]
	assert(fontObj)
	return fontObj
end

---Gets the column spacing constant value.
---@return number
function Theme.GetColSpacing()
	return CONSTANTS.COL_SPACING
end

---Gets the scrollbar margin constant value.
---@return number
function Theme.GetScrollbarMargin()
	return CONSTANTS.SCROLLBAR_MARGIN
end

---Gets the scrollbar width constant value.
---@return number
function Theme.GetScrollbarWidth()
	return CONSTANTS.SCROLLBAR_WIDTH
end

---Gets the mouse scroll amount value.
---@return number
function Theme.GetMouseWheelScrollAmount()
	return CONSTANTS.MOUSE_WHEEL_SCROLL_AMOUNT
end

---Iterates over the theme color keys.
---@return fun(): string @An iterator with fields: `key`
function Theme.ThemeColorKeyIterator()
	return Table.KeyIterator(THEME_COLOR_KEYS)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.QueueFontLoad(path)
	if private.fontFrame.texts[path] then
		return
	end
	local fontString = private.fontFrame:CreateFontString()
	fontString:SetPoint("CENTER")
	fontString:SetWidth(10000)
	fontString:SetHeight(6)
	fontString:SetFont(path, 6, "")
	fontString:SetText("1")
	private.fontFrame.texts[path] = fontString
	private.fontFrame:Show()
end

function private.FontFrameOnUpdate(frame)
	for _, fontString in pairs(frame.texts) do
		if fontString:IsVisible() then
			assert(fontString:GetStringWidth() > 0, "Text not loaded: "..tostring(fontString:GetFont()))
			fontString:Hide()
		end
	end
	frame:Hide()
end

function private.GetColorKeyInfo(key)
	local colorKey, tintPct, opacityPct, colorSetKey = strmatch(key, "^([A-Z_]+)([%-%+]?[0-9A-Z_]*)%%?([0-9A-Z_]*):?([a-zA-Z]*)$")
	tintPct = tonumber(tintPct) or (tintPct ~= "" and tintPct or nil)
	opacityPct = tonumber(opacityPct) or (opacityPct ~= "" and opacityPct or nil)
	colorSetKey = colorSetKey ~= "" and colorSetKey or nil
	return colorKey, tintPct, opacityPct, colorSetKey
end

function private.HandleColorChange(changedColorSetKey, changedColorKey)
	assert(not next(private.publishKeysTemp))
	for _, key in pairs(private.publisherKey) do
		local colorKey, _, _, colorSetKey = private.GetColorKeyInfo(key)
		colorSetKey = colorSetKey or private.currentColorSetKey
		if not private.publishKeysTemp[key] and colorSetKey == changedColorSetKey and (not changedColorKey or colorKey == changedColorKey) then
			private.publishKeysTemp[key] = true
			private.streams[colorKey]:Send(key)
		end
	end
	wipe(private.publishKeysTemp)
end

function private.HandlePublisherCancel(_, publisher)
	assert(private.publisherKey[publisher])
	private.publisherKey[publisher] = nil
end
