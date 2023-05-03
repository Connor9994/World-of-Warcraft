-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local NineSlice = TSM.Init("Util.NineSlice") ---@class Util.NineSlice
local NineSliceTexture = TSM.Include("LibTSMClass").DefineClass("NineSliceTexture") ---@class NineSliceTexture
local private = {
	styles = {},
}
local PART_ANCHORS = {
	topLeft = {
		{ "TOPLEFT" },
	},
	bottomLeft = {
		{ "BOTTOMLEFT" },
	},
	topRight = {
		{ "TOPRIGHT" },
	},
	bottomRight = {
		{ "BOTTOMRIGHT" },
	},
	left = {
		{ "TOPLEFT", "topLeft", "BOTTOMLEFT" },
		{ "BOTTOMLEFT", "bottomLeft", "TOPLEFT" },
	},
	right = {
		{ "TOPRIGHT", "topRight", "BOTTOMRIGHT" },
		{ "BOTTOMRIGHT", "bottomRight", "TOPRIGHT" },
	},
	top = {
		{ "TOPLEFT", "topLeft", "TOPRIGHT" },
		{ "TOPRIGHT", "topRight", "TOPLEFT" },
	},
	bottom = {
		{ "BOTTOMLEFT", "bottomLeft", "BOTTOMRIGHT" },
		{ "BOTTOMRIGHT", "bottomRight", "BOTTOMLEFT" },
	},
	center = {
		{ "TOPLEFT", "topLeft", "BOTTOMRIGHT" },
		{ "BOTTOMRIGHT", "bottomRight", "TOPLEFT" },
	},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

---Registers a nine-slice style.
---@param key string The style key
---@param info table The style info table
function NineSlice.RegisterStyle(key, info)
	assert(not private.styles[key])
	private.styles[key] = info
	for part in pairs(PART_ANCHORS) do
		-- allowed to be missing the center part
		if part ~= "center" or info[part] ~= nil then
			assert(type(info[part].texture) == "string")
			assert(#info[part].coord == 4)
			assert(info[part].width > 0)
			assert(info[part].height > 0)
		end
	end
end

---Create an nine-slice object.
---@param frame table The parent frame
---@param subLayer? number The texture subLayer
---@return NineSliceTexture @The nine-slice texture
function NineSlice.New(frame, subLayer)
	return NineSliceTexture(frame, subLayer)
end



-- ============================================================================
-- NineSliceTexture Class Methods
-- ============================================================================

function NineSliceTexture:__init(frame, subLayer)
	self._frame = frame
	self._parts = {}
	self._styleKey = nil

	-- create all the textures
	for part in pairs(PART_ANCHORS) do
		local texture = frame:CreateTexture(nil, "BACKGROUND", nil, subLayer or 0)
		texture:SetBlendMode("BLEND")
		self._parts[part] = texture
	end

	-- set the points for all the textures
	for part, info in pairs(PART_ANCHORS) do
		for _, point in ipairs(info) do
			if #point == 1 then
				self._parts[part]:SetPoint(unpack(point))
			elseif #point == 3 then
				local anchor, relFrame, relAnchor = unpack(point)
				relFrame = self._parts[relFrame]
				assert(relFrame)
				self._parts[part]:SetPoint(anchor, relFrame, relAnchor)
			else
				error("Invalid point")
			end
		end
	end
end

---Hides the nine-slice
function NineSliceTexture:Hide()
	for _, texture in pairs(self._parts) do
		texture:Hide()
	end
end

---Sets the style key.
---@param key string The style key
function NineSliceTexture:SetStyle(key)
	local style = private.styles[key]
	for part, texture in pairs(self._parts) do
		local partStyle = style[part]
		if partStyle then
			texture:Show()
		else
			texture:Hide()
		end
	end
	if self._styleKey == key then
		return
	end
	self._styleKey = key
	for part, texture in pairs(self._parts) do
		local partStyle = style[part]
		if partStyle then
			texture:ClearAllPoints()
			for i, point in ipairs(PART_ANCHORS[part]) do
				local anchor, relFrame, relAnchor, xOff, yOff = nil, nil, nil, 0, 0
				if partStyle.offset then
					xOff, yOff = unpack(partStyle.offset[i])
				end
				if #point == 1 then
					anchor = unpack(point)
				elseif #point == 3 then
					anchor, relFrame, relAnchor = unpack(point)
					relFrame = self._parts[relFrame]
					assert(relFrame)
				else
					error("Invalid point")
				end
				if relFrame then
					texture:SetPoint(anchor, relFrame, relAnchor, xOff, yOff)
				else
					texture:SetPoint(anchor, xOff, yOff)
				end
			end
			texture:SetSize(partStyle.width, partStyle.height)
			texture:SetTexture(partStyle.texture)
			texture:SetTexCoord(unpack(partStyle.coord))
		end
	end
end

---Sets the vertex color as a 0 to 1 RGBA value.
---@param r number
---@param g number
---@param b number
---@param a number
function NineSliceTexture:SetVertexColor(r, g, b, a)
	for part in pairs(PART_ANCHORS) do
		self:SetPartVertexColor(part, r, g, b, a)
	end
end

---Sets the vertex color of a single part as a 0 to 1 RGBA value.
---@param part string
---@param r number
---@param g number
---@param b number
---@param a number
function NineSliceTexture:SetPartVertexColor(part, r, g, b, a)
	self._parts[part]:SetVertexColor(r, g, b, a)
end
