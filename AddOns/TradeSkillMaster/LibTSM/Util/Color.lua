-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Color = TSM.Init("Util.Color") ---@class Util.Color
local Math = TSM.Include("Util.Math")
local HSLuv = TSM.Include("Util.HSLuv")
local ColorValue = TSM.Include("LibTSMClass").DefineClass("ColorValue") ---@class ColorValue
local private = {
	transparent = nil,
	fullWhite = nil,
	fullBlack = nil,
}
local TINT_VALUES = {
	SELECTED = 15,
	HOVER = 12,
	SELECTED_HOVER = 20,
	DISABLED = -40,
}
local OPACITY_VALUES = {
	HIGHLIGHT = 50,
}



-- ============================================================================
-- Module Loading
-- ============================================================================

Color:OnModuleLoad(function()
	private.transparent = private.NewColorHelper(0, 0, 0, 0)
	private.fullWhite = private.NewColorHelper(255, 255, 255, 255)
	private.fullBlack = private.NewColorHelper(0, 0, 0, 255)
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

---Create a new color object from a hex string.
---@param hex string The hex string which represents the color (in either "#AARRGGBB" or "#RRGGBB" format)
---@return ColorValue @The color object
function Color.NewFromHex(hex)
	return private.NewColorHelper(private.HexToRGBA(hex))
end

---Returns whether or not the argument is a color object.
---@param arg any The argument to check
---@return boolean @Whether or not the argument is a color object.
function Color.IsInstance(arg)
	return type(arg) == "table" and arg:__isa(ColorValue) and true or false
end

---Gets a predefined fully-transparent color.
---@return ColorValue @The color object
function Color.GetTransparent()
	return private.transparent
end

---Gets a predefined fully-opaque white color.
---@return ColorValue @The color object
function Color.GetFullWhite()
	return private.fullWhite
end

---Gets a predefined fully-opaque black color.
---@return ColorValue @The color object
function Color.GetFullBlack()
	return private.fullBlack
end



-- ============================================================================
-- ColorValue Class Methods
-- ============================================================================

function ColorValue:__init()
	self._r = nil
	self._g = nil
	self._b = nil
	self._a = nil
	self._h = nil
	self._s = nil
	self._l = nil
	self._hex = nil
	self._hexNoAlpha = nil
	self._tints = {}
	self._opacities = {}
end

function ColorValue:__tostring()
	return "Color:"..self._hex
end

---Sets the RGBA values of the color as values from 0 to 255.
---@param r number
---@param g number
---@param b number
---@param a number
function ColorValue:SetRGBA(r, g, b, a)
	wipe(self._tints)
	self._r = r
	self._g = g
	self._b = b
	self._a = a
	self._h, self._s, self._l = HSLuv.FromRGB(r, g, b)
	self._hex = private.RGBAToHex(r, g, b, a)
	self._hexNoAlpha = private.RGBToHex(r, g, b)
	for tintPct, color in pairs(self._tints) do
		local l = self._l + tintPct
		l = min(l, 100)
		assert(private.IsValidValue(l, 100))
		local tintR, tintG, tintB = HSLuv.ToRGB(self._h, self._s, l)
		color:SetRGBA(tintR, tintG, tintB, self._a)
	end
	for opacityPct, color in pairs(self._opacities) do
		assert(self._a == 255)
		local opacityA = Math.Round(255 * opacityPct / 100)
		assert(private.IsValidValue(opacityA, 255))
		color:SetRGBA(self._r, self._g, self._b, opacityA)
	end
end

---Gets a tinted version of the color.
---@param tintPct number The tint percent
---@return ColorValue @The tinted color
function ColorValue:GetTint(tintPct)
	assert(self._hex)
	if type(tintPct) == "string" then
		local sign, tintKey = strmatch(tintPct, "^([%+%-])([A-Z_]+)$")
		assert(TINT_VALUES[tintKey])
		tintPct = tonumber(TINT_VALUES[tintKey]) * (sign == "+" and 1 or -1)
	end
	assert(type(tintPct) == "number")
	if tintPct == 0 then
		return self
	end
	if not self._tints[tintPct] then
		local l = self._l + tintPct
		l = min(l, 100)
		assert(private.IsValidValue(l, 100))
		local r, g, b = HSLuv.ToRGB(self._h, self._s, l)
		self._tints[tintPct] = private.NewColorHelper(r, g, b, self._a)
	end
	return self._tints[tintPct]
end

---Gets a version of the color with a different opacity.
---@param opacityPct number The opacity percentage
---@return ColorValue @The new color value
function ColorValue:GetOpacity(opacityPct)
	assert(self._hex)
	if type(opacityPct) == "string" then
		assert(OPACITY_VALUES[opacityPct])
		opacityPct = tonumber(OPACITY_VALUES[opacityPct])
	end
	assert(private.IsValidValue(opacityPct, 100))
	if opacityPct == 100 then
		return self
	end
	if not self._opacities[opacityPct] then
		assert(self._a == 255)
		local a = Math.Round(255 * opacityPct / 100)
		assert(private.IsValidValue(a, 255))
		self._opacities[opacityPct] = private.NewColorHelper(self._r, self._g, self._b, a)
	end
	return self._opacities[opacityPct]
end

---Gets the RGBA values of the color as values from 0 to 255.
---@return number r
---@return number g
---@return number b
---@return number a
function ColorValue:GetRGBA()
	assert(self._hex)
	return self._r, self._g, self._b, self._a
end

---Gets the RGBA values of the color as values from 0 to 1.
---@return number r
---@return number g
---@return number b
---@return number a
function ColorValue:GetFractionalRGBA()
	assert(self._hex)
	return self._r / 255, self._g / 255, self._b / 255, self._a / 255
end

---Returns whether or not the color is considered light.
---@return boolean @Whether or not the color considered light
function ColorValue:IsLight()
	assert(self._hex)
	return self._l >= 50
end

---Gets the hex string representation of the color.
---@return string
function ColorValue:GetHex()
	assert(self._hex)
	return self._hex
end

---Gets the hex string representation of the color without the alpha channel.
---@return string
function ColorValue:GetHexNoAlpha()
	assert(self._hexNoAlpha)
	return self._hexNoAlpha
end

---Colors a text string with the color.
---@param text string The text string to color
---@return string @The colored text string
function ColorValue:ColorText(text)
	return self:GetTextColorPrefix()..text.."|r"
end

---Gets the prefix used to color a text string.
---@return string
function ColorValue:GetTextColorPrefix()
	assert(self._hex)
	return format("|c%02x%02x%02x%02x", self._a, self._r, self._g, self._b)
end

---Compares two colors for equality.
---@param other ColorValue
---@return boolean @Whether or not the colors are equal
function ColorValue:Equals(other)
	return self:GetHex() == other:GetHex()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.NewColorHelper(r, g, b, a)
	assert(private.IsValidValue(r, 255) and private.IsValidValue(g, 255) and private.IsValidValue(b, 255) and private.IsValidValue(a, 255))
	if a == 0 then
		assert(r == 0 and g == 0 and b == 0, "Invalid color with alpha of 0")
	end
	local color = ColorValue()
	color:SetRGBA(r, g, b, a)
	return color
end

function private.IsValidValue(value, maxValue)
	return type(value) == "number" and value >= 0 and value <= maxValue and value == floor(value)
end

function private.HexToRGBA(hex)
	local a, r, g, b = strmatch(strlower(hex), "^#([0-9a-f]?[0-9a-f]?)([0-9a-f][0-9a-f])([0-9a-f][0-9a-f])([0-9a-f][0-9a-f])$")
	return tonumber(r, 16), tonumber(g, 16), tonumber(b, 16), tonumber(a ~= "" and a or "ff", 16)
end

function private.RGBToHex(r, g, b)
	return format("#%02x%02x%02x", Math.Round(r), Math.Round(g), Math.Round(b))
end

function private.RGBAToHex(r, g, b, a)
	return format("#%02x%02x%02x%02x", Math.Round(a), Math.Round(r), Math.Round(g), Math.Round(b))
end
