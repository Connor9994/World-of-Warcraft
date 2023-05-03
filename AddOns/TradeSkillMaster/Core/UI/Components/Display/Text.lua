-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Theme = TSM.Include("Util.Theme")
local UIElements = TSM.Include("UI.UIElements")
local private = {}
local STRING_RIGHT_PADDING = 4



-- ============================================================================
-- Element Definition
-- ============================================================================

local Text = UIElements.Define("Text", "Element") ---@class Text: Element
Text:_ExtendStateSchema()
	:AddStringField("textStr", "")
	:AddBooleanField("autoWidth", false)
	:AddStringField("color", "TEXT")
	:AddStringField("font", "BODY_BODY1")
	:AddStringField("justifyH", "LEFT")
	:AddStringField("justifyV", "MIDDLE")
	:AddNumberField("textSpacing", 0)
	:Commit()



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function Text:__init(frame)
	frame = frame or UIElements.CreateFrame(self, "Frame")
	self.__super:__init(frame)
	frame.text = UIElements.CreateFontString(self, frame)
	frame.text:SetAllPoints()
end

function Text:Acquire()
	self.__super:Acquire()
	local frame = self:_GetBaseFrame()

	-- Set the font
	self._state:PublisherForKeyChange("font")
		:CallMethod(frame.text, "TSMSetFont")

	-- Set the text spacing
	self._state:Publisher()
		:IgnoreDuplicatesWithKeys("font", "textStr")
		:MapWithFunction(private.StateToFontSpacing)
		:AssignToTableKey(self._state, "textSpacing")
	self._state:PublisherForKeyChange("textSpacing")
		:CallMethod(frame.text, "SetSpacing")

	-- Set the justification
	self._state:PublisherForKeyChange("justifyH")
		:CallMethod(frame.text, "SetJustifyH")
	self._state:PublisherForKeyChange("justifyV")
		:CallMethod(frame.text, "SetJustifyV")

	-- Set the text color
	self._state:PublisherForKeyChange("color")
		:CallMethod(frame.text, "TSMSubscribeTextColor")

	-- Set the text
	self._state:PublisherForKeyChange("textStr")
		:CallMethod(frame.text, "SetText")

	self._state:PublisherForKeyChange("textStr")
		:CallMethod(self, "_DrawForAutoWidth")
end

function Text:Release()
	local frame = self:_GetBaseFrame()
	frame.text:TSMCancelAll()
	self.__super:Release()
end

---Sets the width of the text.
---@param width? number|"AUTO" The width of the text, "AUTO" to set the width based on the length of the text, or nil to have an undefined width
---@return Text
function Text:SetWidth(width)
	if width == "AUTO" then
		self._state.autoWidth = true
	else
		self._state.autoWidth = false
		self.__super:SetWidth(width)
	end
	return self
end

---Sets the font.
---@param font string The font key
---@return Text
function Text:SetFont(font)
	assert(Theme.GetFont(font))
	self._state.font = font
	return self
end

---Sets the color of the text.
---@param color string The text color as a theme color key
---@return Text
function Text:SetTextColor(color)
	assert(type(color) == "string" and Theme.IsValidColor(color))
	self._state.color = color
	return self
end

---Sets the horizontal justification of the text.
---@param justifyH '"LEFT"'|'"CENTER"'|'"RIGHT"' The horizontal justification
---@return Text
function Text:SetJustifyH(justifyH)
	assert(justifyH == "LEFT" or justifyH == "CENTER" or justifyH == "RIGHT")
	self._state.justifyH = justifyH
	return self
end

---Sets the vertical justification of the text.
---@param justifyV '"TOP"'|'"MIDDLE"'|'"BOTTOM"' The vertical justification
---@return Text
function Text:SetJustifyV(justifyV)
	assert(justifyV == "TOP" or justifyV == "MIDDLE" or justifyV == "BOTTOM")
	self._state.justifyV = justifyV
	return self
end

---Set the text.
---@param text string|number The text
---@return Text
function Text:SetText(text)
	if type(text) == "number" then
		text = tostring(text)
	end
	assert(type(text) == "string")
	self._state.textStr = text
	return self
end

---Subscribes to a publisher to set the text.
---@param publisher ReactivePublisher The publisher
---@return Text
function Text:SetTextPublisher(publisher)
	self:AddCancellable(publisher:CallMethod(self, "SetText"))
	return self
end

---Set formatted text.
---@param ... string The format string and parameters
---@return Text
function Text:SetFormattedText(...)
	self:SetText(format(...))
	return self
end

---Gets the text string.
---@return string @The text string
function Text:GetText()
	return self._state.textStr
end

---Get the rendered text string width.
---@return number @The rendered text string width
function Text:GetStringWidth()
	return self:_GetBaseFrame().text:GetStringWidth()
end

---Get the rendered text string height.
---@return number @The rendered text string height
function Text:GetStringHeight()
	return self:_GetBaseFrame().text:GetStringHeight()
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function Text:_GetMinimumDimension(dimension)
	if dimension == "WIDTH" and self._state.autoWidth then
		return 0, self._width == nil
	else
		return self.__super:_GetMinimumDimension(dimension)
	end
end

function Text:_GetPreferredDimension(dimension)
	if dimension == "WIDTH" and self._state.autoWidth then
		return self:GetStringWidth() + STRING_RIGHT_PADDING
	else
		return self.__super:_GetPreferredDimension(dimension)
	end
end

function Text:_DrawForAutoWidth()
	local parent = self:GetParentElement()
	if self._state.autoWidth and parent then
		parent:Draw()
	else
		self:Draw()
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.StateToFontSpacing(state)
	if not state.font then
		return 0
	end
	-- There's a Blizzard bug where spacing incorrectly gets applied to embedded textures, so just set it to 0 in that case
	-- TODO: come up with a better fix if we need multi-line text with embedded textures
	if strfind(state.textStr, "|[TA]") then
		return 0
	end
	return Theme.GetFont(state.font):GetSpacing()
end
