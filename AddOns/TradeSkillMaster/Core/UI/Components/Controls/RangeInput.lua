-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Math = TSM.Include("Util.Math")
local Rectangle = TSM.Include("UI.Rectangle")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local UIElements = TSM.Include("UI.UIElements")
local THUMB_WIDTH = 8
local INPUT_WIDTH = 50
local INPUT_AREA_SPACE = 128
local CORNER_RADIUS = 4



-- ============================================================================
-- Element Definition
-- ============================================================================

local RangeInput = UIElements.Define("RangeInput", "Element") ---@class RangeInput: Element
RangeInput:_ExtendStateSchema()
	:AddOptionalNumberField("leftValue", nil)
	:AddOptionalNumberField("rightValue", nil)
	:AddStringField("font", "BODY_BODY2")
	:AddStringField("textColor", "TEXT")
	:Commit()



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function RangeInput:__init()
	local frame = UIElements.CreateFrame(self, "Frame")
	frame:EnableMouse(true)
	frame:TSMSetScript("OnMouseDown", self:__closure("_HandleFrameMouseDown"))
	frame:TSMSetScript("OnMouseUp", self:__closure("_HandleFrameMouseUp"))
	frame:TSMSetOnUpdate(self:__closure("_HandleFrameUpdate"))

	self.__super:__init(frame)

	-- Create the textures
	frame.barTexture = UIElements.CreateTexture(self, frame, "BACKGROUND", 1)
	frame.activeBarTexture = UIElements.CreateTexture(self, frame, "BACKGROUND", 2)
	frame.thumbTextureLeft = UIElements.CreateTexture(self, frame, "ARTWORK")
	TextureAtlas.SetTextureAndSize(frame.thumbTextureLeft, "iconPack.14x14/Circle")
	frame.thumbTextureRight = UIElements.CreateTexture(self, frame, "ARTWORK")
	TextureAtlas.SetTextureAndSize(frame.thumbTextureRight, "iconPack.14x14/Circle")

	frame.inputLeft = UIElements.CreateFrame(self, "EditBox", nil, frame)
	frame.inputLeft:SetJustifyH("CENTER")
	frame.inputLeft:SetWidth(INPUT_WIDTH)
	frame.inputLeft:SetHeight(24)
	frame.inputLeft:SetAutoFocus(false)
	frame.inputLeft:SetNumeric(true)
	frame.inputLeft:TSMSetScript("OnEscapePressed", self:__closure("_HandleInputEscapePressed"))
	frame.inputLeft:TSMSetScript("OnEnterPressed", self:__closure("_HandleInputEnterPressed"))

	frame.dash = UIElements.CreateFontString(self, frame)
	frame.dash:SetJustifyH("CENTER")
	frame.dash:SetJustifyV("MIDDLE")
	frame.dash:SetWidth(12)
	frame.dash:TSMSetFont("BODY_BODY2")
	frame.dash:SetText("-")

	frame.inputRight = UIElements.CreateFrame(self, "EditBox", nil, frame)
	frame.inputRight:SetJustifyH("CENTER")
	frame.inputRight:SetWidth(INPUT_WIDTH)
	frame.inputRight:SetHeight(24)
	frame.inputRight:SetNumeric(true)
	frame.inputRight:SetAutoFocus(false)
	frame.inputRight:TSMSetScript("OnEscapePressed", self:__closure("_HandleInputEscapePressed"))
	frame.inputRight:TSMSetScript("OnEnterPressed", self:__closure("_HandleInputEnterPressed"))

	frame.barTexture:SetPoint("LEFT", 0, 0)
	frame.barTexture:SetPoint("RIGHT", frame.inputLeft, "LEFT", -16, 0)
	frame.inputRight:SetPoint("RIGHT", 0)
	frame.dash:SetPoint("RIGHT", frame.inputRight, "LEFT", 0, 0)
	frame.inputLeft:SetPoint("RIGHT", frame.dash, "LEFT", 0)

	self._inputLeftBackground = Rectangle.New(frame.inputLeft)
	self._inputLeftBackground:SetCornerRadius(CORNER_RADIUS)
	self._inputRightBackground = Rectangle.New(frame.inputRight)
	self._inputRightBackground:SetCornerRadius(CORNER_RADIUS)

	self._minValue = nil
	self._maxValue = nil
	self._dragging = nil
end

function RangeInput:Acquire()
	self.__super:Acquire()
	local frame = self:_GetBaseFrame()

	frame.barTexture:TSMSubscribeColorTexture("FRAME_BG")
	frame.activeBarTexture:TSMSubscribeColorTexture("TEXT")

	-- Font
	self._state:PublisherForKeyChange("font")
		:CallMethod(frame.inputLeft, "TSMSetFont")
	self._state:PublisherForKeyChange("font")
		:CallMethod(frame.dash, "TSMSetFont")
	self._state:PublisherForKeyChange("font")
		:CallMethod(frame.inputRight, "TSMSetFont")

	-- Text color
	self._state:PublisherForKeyChange("textColor")
		:CallMethod(frame.inputLeft, "TSMSubscribeTextColor")
	self._state:PublisherForKeyChange("textColor")
		:CallMethod(frame.dash, "TSMSubscribeTextColor")
	self._state:PublisherForKeyChange("textColor")
		:CallMethod(frame.inputRight, "TSMSubscribeTextColor")

	-- Values
	self._state:PublisherForKeyChange("leftValue")
		:IgnoreNil()
		:CallMethod(frame.inputLeft, "SetNumber")
	self._state:PublisherForKeyChange("rightValue")
		:IgnoreNil()
		:CallMethod(frame.inputRight, "SetNumber")

	-- Input background color
	self:AddCancellable(Theme.GetPublisher("ACTIVE_BG")
		:CallMethod(self._inputLeftBackground, "SetColor")
	)
	self:AddCancellable(Theme.GetPublisher("ACTIVE_BG")
		:CallMethod(self._inputRightBackground, "SetColor")
	)
end

function RangeInput:Release()
	local frame = self:_GetBaseFrame()
	frame.barTexture:TSMCancelAll()
	frame.activeBarTexture:TSMCancelAll()
	frame.inputLeft:TSMCancelAll()
	frame.dash:TSMCancelAll()
	frame.inputRight:TSMCancelAll()
	self._minValue = nil
	self._maxValue = nil
	self._dragging = nil
	self.__super:Release()
end

---Set the extends of the possible range.
---@param minValue number The minimum value
---@param maxValue number The maxmimum value
---@return RangeInput
function RangeInput:SetRange(minValue, maxValue)
	self._minValue = minValue
	self._maxValue = maxValue
	self._state.leftValue = minValue
	self._state.rightValue = maxValue
	return self
end

---Sets the current value.
---@param leftValue number The lower end of the range
---@param rightValue number The upper end of the range
---@return RangeInput
function RangeInput:SetValue(leftValue, rightValue)
	assert(leftValue < rightValue and leftValue >= self._minValue and rightValue <= self._maxValue)
	self._state.leftValue = leftValue
	self._state.rightValue = rightValue
	return self
end

---Gets the current value
---@return number @The lower end of the range
---@return number @The upper end of the range
function RangeInput:GetValue()
	return self._state.leftValue, self._state.rightValue
end

function RangeInput:Draw()
	self.__super:Draw()

	local frame = self:_GetBaseFrame()
	local sliderHeight = self:_GetDimension("HEIGHT") / 2
	local width = self:_GetDimension("WIDTH") - INPUT_AREA_SPACE
	local leftPos = Math.Scale(self._state.leftValue, self._minValue, self._maxValue, 0, width - THUMB_WIDTH)
	local rightPos = Math.Scale(self._state.rightValue, self._minValue, self._maxValue, 0, width - THUMB_WIDTH)

	frame.barTexture:SetHeight(sliderHeight / 3)

	frame.thumbTextureLeft:SetPoint("LEFT", frame.barTexture, leftPos, 0)
	frame.thumbTextureRight:SetPoint("LEFT", frame.barTexture, rightPos, 0)

	frame.activeBarTexture:SetPoint("LEFT", frame.thumbTextureLeft, "CENTER")
	frame.activeBarTexture:SetPoint("RIGHT", frame.thumbTextureRight, "CENTER")
	frame.activeBarTexture:SetHeight(sliderHeight / 3)
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function RangeInput:_GetCursorPositionValue()
	local frame = self:_GetBaseFrame()
	local x = GetCursorPosition() / frame:GetEffectiveScale()
	local left = frame:GetLeft() + THUMB_WIDTH / 2
	local right = frame:GetRight() - THUMB_WIDTH - INPUT_AREA_SPACE * 2 / 2
	x = min(max(x, left), right)
	local value = Math.Scale(x, left, right, self._minValue, self._maxValue)
	return min(max(Math.Round(value), self._minValue), self._maxValue)
end

function RangeInput:_UpdateLeftValue(value)
	local newValue = max(min(value, self._state.rightValue), self._minValue)
	if newValue == self._state.leftValue then
		self:_GetBaseFrame().inputLeft:SetNumber(self._state.leftValue)
		return
	end
	self._state.leftValue = newValue
	self:Draw()
end

function RangeInput:_UpdateRightValue(value)
	local newValue = min(max(value, self._state.leftValue), self._maxValue)
	if newValue == self._state.rightValue then
		self:_GetBaseFrame().inputRight:SetNumber(self._state.rightValue)
		return
	end
	self._state.rightValue = newValue
	self:Draw()
end

function RangeInput:_HandleFrameMouseDown()
	local frame = self:_GetBaseFrame()
	frame.inputLeft:ClearFocus()
	frame.inputRight:ClearFocus()
	local value = self:_GetCursorPositionValue()
	local leftDiff = abs(value - self._state.leftValue)
	local rightDiff = abs(value - self._state.rightValue)
	if value < self._state.leftValue then
		-- clicked to the left of the left thumb, so drag that
		self._dragging = "left"
	elseif value > self._state.rightValue then
		-- clicked to the right of the right thumb, so drag that
		self._dragging = "right"
	elseif self._state.leftValue == self._state.rightValue then
		-- just ignore this click since they clicked on both thumbs
	elseif leftDiff < rightDiff then
		-- clicked closer to the left thumb, so drag that
		self._dragging = "left"
	else
		-- clicked closer to the right thumb (or right in the middle), so drag that
		self._dragging = "right"
	end
end

function RangeInput:_HandleFrameMouseUp()
	self._dragging = nil
end

function RangeInput:_HandleFrameUpdate()
	if not self._dragging then
		return
	end
	if self._dragging == "left" then
		self:_UpdateLeftValue(self:_GetCursorPositionValue())
	elseif self._dragging == "right" then
		self:_UpdateRightValue(self:_GetCursorPositionValue())
	else
		error("Unexpected dragging: "..tostring(self._dragging))
	end
end

function RangeInput:_HandleInputEscapePressed(input)
	input:ClearFocus()
	local frame = self:_GetBaseFrame()
	if input == frame.inputLeft then
		input:SetNumber(self._state.leftValue)
	elseif input == frame.inputRight then
		input:SetNumber(self._state.rightValue)
	else
		error("Invalid input")
	end
end

function RangeInput:_HandleInputEnterPressed(input)
	local value = input:GetNumber()
	input:ClearFocus()
	local frame = self:_GetBaseFrame()
	if input == frame.inputLeft then
		self:_UpdateLeftValue(value)
	elseif input == frame.inputRight then
		self:_UpdateRightValue(value)
	else
		error("Invalid input")
	end
end
