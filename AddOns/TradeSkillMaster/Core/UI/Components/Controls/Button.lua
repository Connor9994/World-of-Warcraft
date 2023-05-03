-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local ItemInfo = TSM.Include("Service.ItemInfo")
local UIElements = TSM.Include("UI.UIElements")
local private = {}
local ICON_SPACING = 4
local BACKGROUND_POINTS = {
	default = {
		{ "TOPLEFT" },
		{ "BOTTOMRIGHT" },
	},
	textureAtlas = {
		{ "CENTER" },
	},
}


-- ============================================================================
-- Element Definition
-- ============================================================================

local Button = UIElements.Define("Button", "Text") ---@class Button: Text
Button:_ExtendStateSchema()
	:UpdateFieldDefault("justifyH", "CENTER")
	:UpdateFieldDefault("font", "BODY_BODY1")
	:AddOptionalStringField("background", nil)
	:AddStringField("highlightColor", "TRANSPARENT")
	:AddBooleanField("enabled", true)
	:AddOptionalStringField("iconTexturePack", nil)
	:AddOptionalStringField("iconPosition", nil)
	:AddStringField("textAndIconColor", "TEXT")
	:Commit()



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function Button:__init()
	local frame = UIElements.CreateFrame(self, "Button")

	self.__super:__init(frame)

	frame.backgroundTexture = UIElements.CreateTexture(self, frame, "BACKGROUND")

	-- create the highlight
	frame.highlight = UIElements.CreateTexture(self, frame, "HIGHLIGHT")
	frame.highlight:SetAllPoints()
	frame:SetHighlightTexture(frame.highlight)

	-- create the icon
	frame.icon = UIElements.CreateTexture(self, frame, "ARTWORK")
end

function Button:Acquire()
	local frame = self:_GetBaseFrame()
	frame:RegisterForClicks("LeftButtonUp")
	frame:SetHitRectInsets(0, 0, 0, 0)

	self.__super:Acquire()

	-- Update the textAndIconColor
	self._state:Publisher()
		:IgnoreDuplicatesWithKeys("enabled", "color")
		:MapWithFunction(private.StateToTextColor)
		:IgnoreDuplicates()
		:AssignToTableKey(self._state, "textAndIconColor")

	-- Set whether or not the button is enabled
	self._state:PublisherForKeyChange("enabled")
		:CallMethod(frame, "TSMSetEnabled")

	-- Set whether or not the background is visible
	self._state:PublisherForKeyChange("background")
		:MapToBoolean()
		:CallMethod(frame.backgroundTexture, "TSMSetShown")

	-- Set the background texture
	self._state:PublisherForKeyChange("background")
		:IgnoreNil()
		:MapWithFunction(private.BackgroundToTexture)
		:CallMethod(frame.backgroundTexture, "TSMSetTextureAndCoord")

	-- Set the background color
	self._state:PublisherForKeyChange("background")
		:IgnoreNil()
		:MapWithFunction(private.BackgroundToColor)
		:CallMethod(frame.backgroundTexture, "TSMSubscribeVertexColor")

	-- Set the background size
	self._state:PublisherForKeyChange("background")
		:IgnoreNil()
		:MapWithFunction(private.BackgroundToSize)
		:IgnoreNil()
		:CallMethod(frame.backgroundTexture, "TSMSetSize")

	-- Set the background anchors
	self._state:PublisherForKeyChange("background")
		:IgnoreNil()
		:MapWithFunction(private.BackgroundToPoints)
		:CallMethod(frame.backgroundTexture, "TSMSetPoints")

	-- Set the highlight texture
	self._state:PublisherForKeyChange("highlightColor")
		:CallMethod(frame.highlight, "TSMSubscribeColorTexture")

	-- Set the text color
	self._state:PublisherForKeyChange("textAndIconColor")
		:CallMethod(frame.text, "TSMSubscribeTextColor")

	-- Set whether or not the icon is visible
	self._state:PublisherForKeyChange("iconTexturePack")
		:MapToBoolean()
		:IgnoreDuplicates()
		:CallMethod(frame.icon, "TSMSetShown")

	-- Set the icon texture
	self._state:PublisherForKeyChange("iconTexturePack")
		:IgnoreNil()
		:CallMethod(frame.icon, "TSMSetTextureAndSize")

	-- Set the icon vertex color
	self._state:PublisherForKeyChange("textAndIconColor")
		:CallMethod(frame.icon, "TSMSubscribeVertexColor")

	-- Redraw to update text and icon layout when needed
	self._state:Publisher()
		:IgnoreDuplicatesWithKeys("iconTexturePack", "iconPosition", "justifyH", "textStr")
		:MapToValue(nil)
		:CallMethod(self, "Draw")
end

function Button:Release()
	local frame = self:_GetBaseFrame()
	frame:UnlockHighlight()
	frame.backgroundTexture:TSMCancelAll()
	frame.highlight:TSMCancelAll()
	frame.text:TSMCancelAll()
	frame.icon:TSMCancelAll()
	self.__super:Release()
end

---Sets the background of the button.
---@param background? string|ThemeColorKey|number Either a texture pack string, itemString, WoW file id, theme color key, or nil
---@param highlightEnabled boolean Whether or not the highlight is enabled
---@return Button @The button object
function Button:SetBackground(background, highlightEnabled)
	assert(background == nil or type(background) == "string" or type(background) == "number")
	assert(highlightEnabled == nil or type(highlightEnabled) == "boolean")
	if not highlightEnabled then
		self._state.highlightColor = "TRANSPARENT"
	end
	self._state.background = background ~= nil and tostring(background) or nil
	if highlightEnabled then
		assert(Theme.IsValidColor(background))
		self._state.highlightColor = background.."+HOVER"
	end
	return self
end

---Sets the background and size of the button based on a texture pack string.
---@param texturePack string A texture pack string to set the background to and base the size on
---@return Button @The button object
function Button:SetBackgroundAndSize(texturePack)
	self:SetBackground(texturePack)
	self:SetSize(TextureAtlas.GetSize(texturePack))
	return self
end

---Sets the icon that shows within the button.
---@param texturePack? string A texture pack string to set the icon and its size to
---@param position? string The positin of the icon
---@return Button @The button object
function Button:SetIcon(texturePack, position)
	if texturePack or position then
		assert(TextureAtlas.IsValid(texturePack))
		assert(position == "LEFT" or position == "LEFT_NO_TEXT" or position == "CENTER" or position == "RIGHT")
		self._state.iconPosition = position
		self._state.iconTexturePack = texturePack
	else
		self._state.iconTexturePack = nil
		self._state.iconPosition = nil
	end
	return self
end

---Set whether or not the button is disabled.
---@param disabled boolean Whether or not the button should be disabled
---@return Button @The button object
function Button:SetDisabled(disabled)
	self._state.enabled = not disabled and true or false
	return self
end

---Registers the button for drag events.
---@param button string The mouse button to register for drag events from
---@return Button @The button object
function Button:RegisterForDrag(button)
	self:_GetBaseFrame():RegisterForDrag(button)
	return self
end

---Click on the button.
function Button:Click()
	self:_GetBaseFrame():Click()
end

---Enable right-click events for the button.
---@return Button @The button object
function Button:EnableRightClick()
	self:_GetBaseFrame():RegisterForClicks("LeftButtonUp", "RightButtonUp")
	return self
end

---Set the hit rectangle insets for the button.
---@param left number How much the left side of the hit rectangle is inset
---@param right number How much the right side of the hit rectangle is inset
---@param top number How much the top side of the hit rectangle is inset
---@param bottom number How much the bottom side of the hit rectangle is inset
---@return Button @The button object
function Button:SetHitRectInsets(left, right, top, bottom)
	self:_GetBaseFrame():SetHitRectInsets(left, right, top, bottom)
	return self
end

---Set whether or not to lock the button's highlight.
---@param locked boolean Whether or not to lock the action button's highlight
---@return Button @The action button object
function Button:SetHighlightLocked(locked)
	if locked then
		self:_GetBaseFrame():LockHighlight()
	else
		self:_GetBaseFrame():UnlockHighlight()
	end
	return self
end

function Button:Draw()
	local frame = self:_GetBaseFrame()
	frame.text:Show()
	self.__super:Draw()

	-- Layout the text and icon
	if self._state.iconTexturePack then
		frame.icon:ClearAllPoints()
		local iconWidth = TextureAtlas.GetWidth(self._state.iconTexturePack) + ICON_SPACING
		if self._state.iconPosition == "LEFT" then
			frame.icon:SetPoint("RIGHT", frame.text, "LEFT", -ICON_SPACING, 0)
			frame.text:ClearAllPoints()
			if self._state.justifyH == "CENTER" then
				local xOffset = iconWidth / 2
				frame.text:SetPoint("TOP", xOffset, -self:_GetPadding("TOP"))
				frame.text:SetPoint("BOTTOM", xOffset, self:_GetPadding("BOTTOM"))
				frame.text:SetWidth(self:GetStringWidth())
			elseif self._state.justifyH == "LEFT" then
				frame.text:SetPoint("TOPLEFT", iconWidth + self:_GetPadding("LEFT"), -self:_GetPadding("TOP"))
				frame.text:SetPoint("BOTTOMRIGHT", -self:_GetPadding("RIGHT"), self:_GetPadding("BOTTOM"))
			else
				error("Unsupported justifyH: "..tostring(self._state.justifyH))
			end
		elseif self._state.iconPosition == "LEFT_NO_TEXT" then
			frame.icon:SetPoint("LEFT", self:_GetPadding("LEFT"), 0)
			frame.text:ClearAllPoints()
			frame.text:Hide()
		elseif self._state.iconPosition == "CENTER" then
			frame.icon:SetPoint("CENTER")
			frame.text:ClearAllPoints()
			frame.text:Hide()
		elseif self._state.iconPosition == "RIGHT" then
			frame.icon:SetPoint("RIGHT", -self:_GetPadding("RIGHT"), 0)
			local xOffset = iconWidth
			frame.text:ClearAllPoints()
			-- TODO: support non-left-aligned text
			frame.text:SetPoint("TOPLEFT", self:_GetPadding("LEFT"), -self:_GetPadding("TOP"))
			frame.text:SetPoint("BOTTOMRIGHT", -xOffset, self:_GetPadding("BOTTOM"))
		else
			error("Invalid iconPosition: "..tostring(self._state.iconPosition))
		end
	else
		frame.text:ClearAllPoints()
		frame.text:SetPoint("TOPLEFT", self:_GetPadding("LEFT"), -self:_GetPadding("TOP"))
		frame.text:SetPoint("BOTTOMRIGHT", -self:_GetPadding("RIGHT"), self:_GetPadding("BOTTOM"))
	end
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function Button:_GetMinimumDimension(dimension)
	if dimension == "WIDTH" and self._state.autoWidth then
		return self:GetStringWidth() + (self._state.iconTexturePack and TextureAtlas.GetWidth(self._state.iconTexturePack) or 0)
	else
		return self.__super:_GetMinimumDimension(dimension)
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.BackgroundToTexture(background)
	if TextureAtlas.IsValid(background) then
		return background
	elseif strmatch(background, "^[ip]:%d+") then
		return ItemInfo.GetTexture(background)
	elseif tonumber(background) then
		-- this is a wow file id
		return tonumber(background)
	else
		-- We'll use the vertex color to color a white texture
		return "Interface\\Buttons\\WHITE8X8"
	end
end

function private.BackgroundToColor(background)
	local isTextureKey = TextureAtlas.IsValid(background)
	local textureColorKey = isTextureKey and TextureAtlas.GetColorKey(background)
	if textureColorKey then
		return textureColorKey
	elseif isTextureKey or strmatch(background, "^[ip]:%d+") or tonumber(background) then
		return "FULL_WHITE"
	else
		return background
	end
end

function private.BackgroundToSize(background)
	return TextureAtlas.IsValid(background) and background or nil
end

function private.BackgroundToPoints(background)
	return TextureAtlas.IsValid(background) and BACKGROUND_POINTS.textureAtlas or BACKGROUND_POINTS.default
end

function private.StateToTextColor(state)
	return state.enabled and state.color or "ACTIVE_BG_ALT"
end
