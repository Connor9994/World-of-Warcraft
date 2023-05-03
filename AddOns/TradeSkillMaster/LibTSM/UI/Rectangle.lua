-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Rectangle = TSM.Init("UI.Rectangle") ---@class UI.Rectangle
local RectangleTexture = TSM.Include("LibTSMClass").DefineClass("RectangleTexture") ---@class RectangleTexture
local Theme = TSM.Include("Util.Theme")
local WidgetExtensions = TSM.Include("UI.WidgetExtensions")
local private = {
	textureInfo = nil,
}
local CORNER_TEXTURE_INFO = {
	topLeft = {
		points = {
			{ "TOPRIGHT", "vertical", "TOPLEFT" },
			{ "BOTTOMLEFT", "horizontal", "TOPLEFT" },
		},
	},
	bottomLeft = {
		points = {
			{ "TOPLEFT", "horizontal", "BOTTOMLEFT" },
			{ "BOTTOMRIGHT", "vertical", "BOTTOMLEFT" },
		},
	},
	topRight = {
		points = {
			{ "TOPLEFT", "vertical", "TOPRIGHT" },
			{ "BOTTOMRIGHT", "horizontal", "TOPRIGHT" },
		},
	},
	bottomRight = {
		points = {
			{ "TOPRIGHT", "horizontal", "BOTTOMRIGHT" },
			{ "BOTTOMLEFT", "vertical", "BOTTOMRIGHT" },
		},
	},
}
local CENTER_TEXTURE_KEYS = {
	"horizontal",
	"vertical",
}



-- ============================================================================
-- Module Functions
-- ============================================================================

---Registers the rectange corner textures.
---@param info table The corner texture info
function Rectangle.RegisterTextures(info)
	private.textureInfo = info
	for key in pairs(CORNER_TEXTURE_INFO) do
		assert(info[key])
		assert(type(info[key].texture) == "string")
		assert(#info[key].coord == 4)
	end
end

---Create a rectangle object.
---@param frame table The parent frame
---@tparam subLayer? number The texture subLayer
---@return RectangleTexture @The rounded rectangle object
function Rectangle.New(frame, subLayer)
	return RectangleTexture(frame, subLayer)
end



-- ============================================================================
-- RectangleTexture Class Methods
-- ============================================================================

function RectangleTexture:__init(frame, subLayer)
	self._frame = frame
	self._textures = {}
	self._inset = 0
	self._cornerRadius = 0
	self._shown = true


	-- Create the textures
	for _, key in ipairs(CENTER_TEXTURE_KEYS) do
		self._textures[key] = private.CreateTexture(frame, subLayer)
	end
	for key, info in pairs(CORNER_TEXTURE_INFO) do
		local texture = private.CreateTexture(frame, subLayer)
		self._textures[key] = texture
		local textureInfo = private.textureInfo[key]
		texture:SetTexture(textureInfo.texture)
		texture:SetTexCoord(unpack(textureInfo.coord))
		for _, point in ipairs(info.points) do
			assert(#point == 3)
			local anchor, relFrame, relAnchor = unpack(point)
			relFrame = self._textures[relFrame]
			assert(relFrame)
			texture:SetPoint(anchor, relFrame, relAnchor)
		end
	end

	self:_LayoutTextures()
end

---Shows the rectangle.
function RectangleTexture:Show()
	if self._shown then
		return
	end
	for _, texture in pairs(self._textures) do
		texture:Show()
	end
	self._shown = true
end

---Hides the rectangle.
function RectangleTexture:Hide()
	if not self._shown then
		return
	end
	for _, texture in pairs(self._textures) do
		texture:Hide()
	end
	self._shown = false
end

---Cancels all registered subscriptions.
function RectangleTexture:CancelAll()
	for _, texture in pairs(self._textures) do
		texture:TSMCancelAll()
	end
end

---Sets whether or not the rectangle is shown.
---@param shown boolean Whether or not the rectangle should be shown
function RectangleTexture:SetShown(shown)
	if shown then
		self:Show()
	else
		self:Hide()
	end
end

---Sets the color of the rectangle.
---@param color ThemeColorKey|ColorValue
function RectangleTexture:SetColor(color)
	if type(color) == "string" then
		color = Theme.GetColor(color)
	end
	for _, key in ipairs(CENTER_TEXTURE_KEYS) do
		self._textures[key]:SetColorTexture(color:GetFractionalRGBA())
	end
	for key in pairs(CORNER_TEXTURE_INFO) do
		self._textures[key]:SetVertexColor(color:GetFractionalRGBA())
	end
end

---Subscribes the color of the rectangle to a theme color.
---@param color ThemeColorKey
function RectangleTexture:SubscribeColor(color)
	for _, key in ipairs(CENTER_TEXTURE_KEYS) do
		self._textures[key]:TSMSubscribeColorTexture(color)
	end
	for key in pairs(CORNER_TEXTURE_INFO) do
		self._textures[key]:TSMSubscribeVertexColor(color)
	end
end

---Sets the inset of the rectangle.
---@param inset number The inset amount
function RectangleTexture:SetInset(inset)
	assert(inset >= 0)
	self._inset = inset
	self:_LayoutTextures()
end

---Sets the corner radius.
---@param cornerRadius number The corner radius
function RectangleTexture:SetCornerRadius(cornerRadius)
	assert(cornerRadius >= 0)
	self._cornerRadius = cornerRadius
	self:_LayoutTextures()
end

function RectangleTexture:_LayoutTextures()
	self._textures.horizontal:SetPoint("TOPLEFT", self._inset, -self._cornerRadius - self._inset)
	self._textures.horizontal:SetPoint("BOTTOMRIGHT", -self._inset, self._cornerRadius + self._inset)
	self._textures.vertical:SetPoint("TOPLEFT", self._cornerRadius + self._inset, -self._inset)
	self._textures.vertical:SetPoint("BOTTOMRIGHT", -self._cornerRadius - self._inset, self._inset)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.CreateTexture(frame, subLayer)
	local texture = frame:CreateTexture(nil, "BACKGROUND", nil, subLayer or 0)
	texture:SetBlendMode("BLEND")
	WidgetExtensions.AddToObject(texture)
	return texture
end
