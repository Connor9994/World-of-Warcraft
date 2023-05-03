-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- ScrollFrame UI Element Class.
-- A scroll frame is a container which allows the content to be of unlimited (but fixed/static) height within a
-- scrollable window. It is a subclass of the @{Container} class.
-- @classmod ScrollFrame

local TSM = select(2, ...) ---@type TSM
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local Theme = TSM.Include("Util.Theme")
local Rectangle = TSM.Include("UI.Rectangle")
local ScrollFrame = TSM.Include("LibTSMClass").DefineClass("ScrollFrame", TSM.UI.Container)
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(ScrollFrame)
TSM.UI.ScrollFrame = ScrollFrame
local private = {}



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function ScrollFrame.__init(self)
	local frame = UIElements.CreateFrame(self, "ScrollFrame")

	self.__super:__init(frame)

	self._background = Rectangle.New(frame, 1)
	self._background:SetCornerRadius(0)
	self._background:Hide()

	frame:EnableMouseWheel(true)
	frame:SetClipsChildren(true)
	ScriptWrapper.Set(frame, "OnUpdate", private.FrameOnUpdate, self)
	ScriptWrapper.Set(frame, "OnMouseWheel", private.FrameOnMouseWheel, self)

	self._scrollbar = TSM.UI.Scrollbar.Create(frame)
	ScriptWrapper.Set(self._scrollbar, "OnValueChanged", private.OnScrollbarValueChanged, self)

	self._content = CreateFrame("Frame", nil, frame)
	self._content:SetPoint("TOPLEFT")
	self._content:SetPoint("TOPRIGHT")
	frame:SetScrollChild(self._content)

	self._scrollValue = 0
	self._onUpdateHandler = nil
	self._backgroundColor = nil
end

function ScrollFrame.Acquire(self)
	self.__super:Acquire()
	self._scrollValue = 0
	self._scrollbar:SetValue(0)
end

function ScrollFrame.Release(self)
	self._onUpdateHandler = nil
	self._backgroundColor = nil
	self._background:Hide()
	self.__super:Release()
end

--- Sets the background of the scroll frame.
-- @tparam ScrollFrame self The scroll frame object
-- @tparam ?string|nil color The background color as a theme color key or nil
-- @treturn ScrollFrame The scroll frame object
function ScrollFrame.SetBackgroundColor(self, color)
	assert(color == nil or Theme.GetColor(color))
	self._backgroundColor = color
	return self
end

function ScrollFrame.SetScript(self, script, handler)
	if script == "OnUpdate" then
		self._onUpdateHandler = handler
	else
		self.__super:SetScript(script, handler)
	end
	return self
end

function ScrollFrame.Draw(self)
	self.__super.__super:Draw()

	if self._backgroundColor then
		self._background:Show()
		self._background:SetColor(Theme.GetColor(self._backgroundColor))
	else
		self._background:Hide()
	end

	local width = self:_GetDimension("WIDTH")
	self._content:SetWidth(width)
	width = width - self:_GetPadding("LEFT") - self:_GetPadding("RIGHT")

	local totalHeight = self:_GetPadding("TOP") + self:_GetPadding("BOTTOM")
	for _, child in self:LayoutChildrenIterator() do
		child:_GetBaseFrame():SetParent(self._content)
		child:_GetBaseFrame():ClearAllPoints()

		-- set the height
		local childHeight, childHeightCanExpand = child:_GetMinimumDimension("HEIGHT")
		assert(not childHeightCanExpand, "Invalid height for child: "..tostring(child._id))
		child:_SetDimension("HEIGHT", childHeight)
		totalHeight = totalHeight + childHeight + child:_GetMargin("TOP") + child:_GetMargin("BOTTOM")

		-- set the width
		local childWidth, childWidthCanExpand = child:_GetMinimumDimension("WIDTH")
		if childWidthCanExpand then
			childWidth = max(childWidth, width - child:_GetMargin("LEFT") - child:_GetMargin("RIGHT"))
		end
		child:_SetDimension("WIDTH", childWidth)
	end
	self._content:SetHeight(totalHeight)
	local maxScroll = self:_GetMaxScroll()
	self._scrollbar:SetMinMaxValues(0, maxScroll)
	self._scrollbar:SetValue(min(self._scrollValue, maxScroll))
	self._scrollbar.thumb:SetHeight(TSM.UI.Scrollbar.GetLength(totalHeight, self:_GetDimension("HEIGHT")))

	local yOffset = -1 * self:_GetPadding("TOP")
	for _, child in self:LayoutChildrenIterator() do
		local childFrame = child:_GetBaseFrame()
		yOffset = yOffset - child:_GetMargin("TOP")
		childFrame:SetPoint("TOPLEFT", child:_GetMargin("LEFT") + self:_GetPadding("LEFT"), yOffset)
		yOffset = yOffset - childFrame:GetHeight() - child:_GetMargin("BOTTOM")
	end

	self.__super:Draw()
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function ScrollFrame._OnScrollValueChanged(self, value)
	self:_GetBaseFrame():SetVerticalScroll(value)
	self._scrollValue = value
end

function ScrollFrame._GetMaxScroll(self)
	return max(self._content:GetHeight() - self:_GetDimension("HEIGHT"), 0)
end

function ScrollFrame._GetMinimumDimension(self, dimension)
	local styleResult = nil
	if dimension == "WIDTH" then
		styleResult = self._width
	elseif dimension == "HEIGHT" then
		styleResult = self._height
	else
		error("Invalid dimension: "..tostring(dimension))
	end
	if styleResult then
		return styleResult, false
	elseif dimension == "HEIGHT" or self:_GetNumLayoutChildren() == 0 then
		-- regarding the first condition for this if statment, a scrollframe can be any height (including greater than
		-- the height of the content if no scrolling is needed), so has no minimum and can always expand
		return 0, true
	else
		-- we're trying to determine the width based on the max width of any of the children
		local result = 0
		local canExpand = false
		for _, child in self:LayoutChildrenIterator() do
			local childMin, childCanExpand = child:_GetMinimumDimension(dimension)
			childMin = childMin + child:_GetMargin("LEFT") + child:_GetMargin("RIGHT")
			canExpand = canExpand or childCanExpand
			result = max(result, childMin)
		end
		result = result + self:_GetPadding("LEFT") + self:_GetPadding("RIGHT")
		return result, canExpand
	end
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.OnScrollbarValueChanged(self, value)
	value = max(min(value, self:_GetMaxScroll()), 0)
	self:_OnScrollValueChanged(value)
end

function private.FrameOnUpdate(self)
	if (self:_GetBaseFrame():IsMouseOver() and self:_GetMaxScroll() > 0) or self._scrollbar.dragging then
		self._scrollbar:Show()
	else
		self._scrollbar:Hide()
	end
	if self._onUpdateHandler then
		self:_onUpdateHandler()
	end
end

function private.FrameOnMouseWheel(self, direction)
	local parentScroll = nil
	local parent = self:GetParentElement()
	while parent do
		if parent:__isa(ScrollFrame) then
			parentScroll = parent
			break
		else
			parent = parent:GetParentElement()
		end
	end

	if parentScroll then
		local minValue, maxValue = self._scrollbar:GetMinMaxValues()
		if direction > 0 then
			if self._scrollbar:GetValue() == minValue then
				local scrollAmount = min(parentScroll:_GetDimension("HEIGHT") / 3, Theme.GetMouseWheelScrollAmount())
				parentScroll._scrollbar:SetValue(parentScroll._scrollbar:GetValue() + -1 * direction * scrollAmount)
			else
				local scrollAmount = min(self:_GetDimension("HEIGHT") / 3, Theme.GetMouseWheelScrollAmount())
				self._scrollbar:SetValue(self._scrollbar:GetValue() + -1 * direction * scrollAmount)
			end
		else
			if self._scrollbar:GetValue() == maxValue then
				local scrollAmount = min(parentScroll:_GetDimension("HEIGHT") / 3, Theme.GetMouseWheelScrollAmount())
				parentScroll._scrollbar:SetValue(parentScroll._scrollbar:GetValue() + -1 * direction * scrollAmount)
			else
				local scrollAmount = min(self:_GetDimension("HEIGHT") / 3, Theme.GetMouseWheelScrollAmount())
				self._scrollbar:SetValue(self._scrollbar:GetValue() + -1 * direction * scrollAmount)
			end
		end
	else
		local scrollAmount = min(self:_GetDimension("HEIGHT") / 3, Theme.GetMouseWheelScrollAmount())
		self._scrollbar:SetValue(self._scrollbar:GetValue() + -1 * direction * scrollAmount)
	end
end
