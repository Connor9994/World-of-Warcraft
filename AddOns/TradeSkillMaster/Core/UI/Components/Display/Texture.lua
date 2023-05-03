-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local Theme = TSM.Include("Util.Theme")
local UIElements = TSM.Include("UI.UIElements")
local private = {}



-- ============================================================================
-- Element Definition
-- ============================================================================

local Texture = UIElements.Define("Texture", "Element") ---@class Texture: Element
Texture:_ExtendStateSchema()
	:AddOptionalStringField("color", nil)
	:AddOptionalStringField("texturePackKey", nil)
	:Commit()



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function Texture:__init()
	local texture = UIElements.CreateTexture(self, UIParent)
	-- hook SetParent/GetParent since textures can't have a nil parent
	texture._oldSetParent = texture.SetParent
	texture.SetParent = private.SetParent
	texture.GetParent = private.GetParent
	self.__super:__init(texture)
end

function Texture:Acquire()
	self.__super:Acquire()
	local texture = self:_GetBaseFrame()

	-- Set the texture
	self._state:PublisherForKeyChange("color")
		:IgnoreNil()
		:CallMethod(texture, "TSMSubscribeColorTexture")
	self._state:PublisherForKeyChange("texturePackKey")
		:IgnoreNil()
		:CallMethod(texture, "TSMSetTextureAndCoord")
end

function Texture:Release()
	local texture = self:_GetBaseFrame()
	texture:TSMCancelAll()
	texture:SetTexture(nil)
	texture:SetTexCoord(0, 0, 0, 1, 1, 0, 1, 1)
	texture:SetColorTexture(0, 0, 0, 0)
end

---Sets the texture to a theme color key.
---@param texture string A theme color key
---@return Texture @The texture object
function Texture:SetColor(colorKey)
	assert(Theme.IsValidColor(colorKey))
	assert(not self._state.texturePackKey)
	self._state.color = colorKey
	return self
end

---Sets the texture and size based on a texture pack string.
---@param texturePackKey string A texture pack key
---@return Texture @The texture object
function Texture:SetTextureAndSize(texturePackKey)
	assert(not self._state.color)
	self._state.texturePackKey = texturePackKey
	self:SetSize(TextureAtlas.GetSize(texturePackKey))
	return self
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.SetParent(self, parent)
	self._parent = parent
	if parent then
		self:Show()
	else
		self:Hide()
	end
	self:_oldSetParent(parent or UIParent)
end

function private.GetParent(self)
	return self._parent
end
