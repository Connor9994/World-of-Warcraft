-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

-- NOTE: The following code is heavily based on https://github.com/hsluv/hsluv-lua, with some
-- modifications to work properly with TSM. Its original license is below:

--[[
Lua implementation of HSLuv and HPLuv color spaces
Homepage: http://www.hsluv.org/

Copyright (C) 2019 Alexei Boronine

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the "Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the
following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
]]

local TSM = select(2, ...) ---@type TSM
local HSLuv = TSM.Init("Util.HSLuv") ---@class Util.HSLuv
local Math = TSM.Include("Util.Math")
local private = {}
local M = {
	{ 3.240969941904521, -1.537383177570093, -0.498610760293 },
	{ -0.96924363628087, 1.87596750150772, 0.041555057407175 },
	{ 0.055630079696993, -0.20397695888897, 1.056971514242878 }
}
local M_INV = {
	{ 0.41239079926595, 0.35758433938387, 0.18048078840183 },
	{ 0.21263900587151, 0.71516867876775, 0.072192315360733 },
	{ 0.019330818715591, 0.11919477979462, 0.95053215224966 }
}
local REF_Y = 1.0
local REF_U = 0.19783000664283
local REF_V = 0.46831999493879
local KAPPA = 903.2962962
local EPSILON = 0.0088564516



-- ============================================================================
-- Module Functions
-- ============================================================================

---Converts from HSLuv to RGB
---@param h number
---@param s number
---@param l number
---@return number r
---@return number g
---@return number b
function HSLuv.ToRGB(h, s, l)
	return private.HSLuvToRGB(h, s, l)
end

---Converts from RGB to HSLuv
---@param r number
---@param g number
---@param b number
---@return number h
---@return number s
---@return number l
function HSLuv.FromRGB(r, g, b)
	return private.RGBToHSLuv(r, g, b)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.MaxSafeChromaForLH(l, h)
	local hrad = h / 360 * math.pi * 2
	local chroma = 1.7976931348623157e+308
	local sub1 = ((l + 16) ^ 3) / 1560896
	local sub2 = nil
	if sub1 > EPSILON then
		sub2 = sub1
	else
		sub2 = l / KAPPA
	end
	for i = 1, 3 do
		for t = 0, 1 do
			local top1 = (284517 * M[i][1] - 94839 * M[i][3]) * sub2
			local top2 = (838422 * M[i][3] + 769860 * M[i][2] + 731718 * M[i][1]) * l * sub2 - 769860 * t * l
			local bottom = (632260 * M[i][3] - 126452 * M[i][2]) * sub2 + 126452 * t
			if bottom ~= 0 then
				local slope = top1 / bottom
				local intercept = top2 / bottom
				if hrad ~= 0 or slope ~= 0 then
					local length = intercept / (math.sin(hrad) - slope * math.cos(hrad))
					if length >= 0 then
						chroma = min(chroma, length)
					end
				end
			end
		end
	end
	return chroma
end

function private.DotProduct(a, b1, b2, b3)
	return a[1] * b1 + a[2] * b2 + a[3] * b3
end

function private.FromLinear(c)
	if c <= 0.0031308 then
		return 12.92 * c
	else
		return 1.055 * (c ^ 0.416666666666666685) - 0.055
	end
end

function private.ToLinear(c)
	if c > 0.04045 then
		return ((c + 0.055) / 1.055) ^ 2.4
	else
		return c / 12.92
	end
end

function private.XYZToRGB(x, y, z)
	local r = private.FromLinear(private.DotProduct(M[1], x, y, z))
	local g = private.FromLinear(private.DotProduct(M[2], x, y, z))
	local b = private.FromLinear(private.DotProduct(M[3], x, y, z))
	return r, g, b
end

function private.RGBToXYZ(r, g, b)
	r = private.ToLinear(r)
	g = private.ToLinear(g)
	b = private.ToLinear(b)
	local x = private.DotProduct(M_INV[1], r, g, b)
	local y = private.DotProduct(M_INV[2], r, g, b)
	local z = private.DotProduct(M_INV[3], r, g, b)
	return x, y, z
end

function private.YToL(Y)
	if Y <= EPSILON then
		return Y / REF_Y * KAPPA
	else
		return 116 * ((Y / REF_Y) ^ 0.333333333333333315) - 16
	end
end

function private.LToY(L)
	if L <= 8 then
		return REF_Y * L / KAPPA
	else
		return REF_Y * (((L + 16) / 116) ^ 3)
	end
end

function private.XYZToLUV(x, y, z)
	local divider = x + 15 * y + 3 * z
	local varU = 4 * x
	local varV = 9 * y
	if divider ~= 0 then
		varU = varU / divider
		varV = varV / divider
	else
		varU = 0
		varV = 0
	end
	local L = private.YToL(y)
	if L == 0 then
		return 0, 0, 0
	end
	return L, 13 * L * (varU - REF_U), 13 * L * (varV - REF_V)
end

function private.LUVToXYZ(l, u, v)
	if l == 0 then
		return 0, 0, 0
	end
	local varU = u / (13 * l) + REF_U
	local varV = v / (13 * l) + REF_V
	local Y = private.LToY(l)
	local X = 0 - (9 * Y * varU) / ((((varU - 4) * varV) - varU * varV))
	return X, Y, (9 * Y - 15 * varV * Y - varV * X) / (3 * varV)
end

function private.LUVToLCH(l, u, v)
	local C = math.sqrt(u * u + v * v)
	local H
	if C < 0.00000001 then
		H = 0
	else
		H = math.atan2(v, u) * 180.0 / 3.1415926535897932
		if H < 0 then
			H = 360 + H
		end
	end
	return l, C, H
end

function private.LCHToLUV(l, c, h)
	local hrad = h / 360.0 * 2 * math.pi
	return l, math.cos(hrad) * c, math.sin(hrad) * c
end

function private.HSLuvToLCH(h, s, l)
	if l > 99.9999999 then
		return 100, 0, h
	end
	if l < 0.00000001 then
		return 0, 0, h
	end
	return l, private.MaxSafeChromaForLH(l, h) / 100 * s, h
end

function private.LCHToHSLuv(l, c, h)
	local max_chroma = private.MaxSafeChromaForLH(l, h)
	if l > 99.9999999 then
		return h, 0, 100
	end
	if l < 0.00000001 then
		return h, 0, 0
	end

	return h, c / max_chroma * 100, l
end

function private.HSLuvToRGB(h, s, l)
	local v1, v2, v3 = h, s, l
	v1, v2, v3 = private.HSLuvToLCH(v1, v2, v3)
	v1, v2, v3 = private.LCHToLUV(v1, v2, v3)
	v1, v2, v3 = private.LUVToXYZ(v1, v2, v3)
	local r, g, b = private.XYZToRGB(v1, v2, v3)
	r = Math.Round(r * 255)
	g = Math.Round(g * 255)
	b = Math.Round(b * 255)
	assert(r >= 0 and r <= 255)
	assert(g >= 0 and g <= 255)
	assert(b >= 0 and b <= 255)
	return r, g, b
end

function private.RGBToHSLuv(r, g, b)
	local v1, v2, v3 = r / 255, g / 255, b / 255
	v1, v2, v3 = private.RGBToXYZ(v1, v2, v3)
	v1, v2, v3 = private.XYZToLUV(v1, v2, v3)
	v1, v2, v3 = private.LUVToLCH(v1, v2, v3)
	local h, s, l = private.LCHToHSLuv(v1, v2, v3)
	h = Math.Round(h) % 360
	s = Math.Round(s)
	l = Math.Round(l)
	assert(h >= 0 and h < 360)
	assert(s >= 0 and s <= 100)
	assert(l >= 0 and l <= 100)
	return h, s, l
end
