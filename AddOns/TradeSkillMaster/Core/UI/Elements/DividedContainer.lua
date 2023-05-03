-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- Divided Container UI Element Class.
-- A divided container is a container with two children with a divider between them. It is a subclass of the @{Frame} class.
-- @classmod DividedContainer

local TSM = select(2, ...) ---@type TSM
local UIElements = TSM.Include("UI.UIElements")
local DividedContainer = TSM.Include("LibTSMClass").DefineClass("DividedContainer", TSM.UI.Frame)
UIElements.Register(DividedContainer)
TSM.UI.DividedContainer = DividedContainer
local private = {}
local DIVIDER_SIZE = 2



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function DividedContainer.__init(self)
	self.__super:__init()
	self._leftChild = nil
	self._rightChild = nil
	self._resizeStartX = nil
	self._resizeOffset = 0
	self._contextTable = nil
	self._defaultContextTable = nil
	self._minLeftWidth = nil
	self._minRightWidth = nil
	self._dividerHidden = false
	self._mouseOver = false
end

function DividedContainer.Acquire(self)
	self.__super:AddChildNoLayout(UIElements.New("Frame", "leftEmpty")
		:AddAnchor("TOPLEFT")
		:AddAnchor("BOTTOMRIGHT", "divider", "BOTTOMLEFT")
	)
	self.__super:AddChild(UIElements.New("Button", "divider")
		:SetSize(DIVIDER_SIZE, nil)
		:SetHitRectInsets(-2, -2, 0, 0)
		:SetRelativeLevel(2)
		:EnableRightClick()
		:SetBackground("ACTIVE_BG", true)
		:SetScript("OnMouseDown", private.HandleOnMouseDown)
		:SetScript("OnMouseUp", private.HandleOnMouseUp)
		:SetScript("OnClick", private.HandleOnClick)
		:SetScript("OnUpdate", private.HandleOnUpdate)
		:SetScript("OnEnter", private.HandleOnEnter)
		:SetScript("OnLeave", private.HandleOnLeave)
	)
	self.__super:AddChildNoLayout(UIElements.New("Frame", "rightEmpty")
		:AddAnchor("TOPLEFT", "divider", "TOPRIGHT")
		:AddAnchor("BOTTOMRIGHT")
	)
	self.__super:Acquire()
	self.__super:SetLayout("HORIZONTAL")
end

function DividedContainer.Release(self)
	self._isVertical = false
	self._leftChild = nil
	self._rightChild = nil
	self._resizeStartX = nil
	self._resizeOffset = 0
	self._contextTable = nil
	self._defaultContextTable = nil
	self._minLeftWidth = nil
	self._minRightWidth = nil
	self._dividerHidden = false
	self._mouseOver = false
	self.__super:Release()
end

function DividedContainer.SetVertical(self)
	assert(not self._leftChild and not self._rightChild and not self._isVertical)
	self._isVertical = true
	self:GetElement("leftEmpty")
		:WipeAnchors()
		:AddAnchor("TOPLEFT")
		:AddAnchor("BOTTOMRIGHT", "divider", "TOPRIGHT")
	self:GetElement("divider")
		:SetSize(nil, DIVIDER_SIZE)
		:SetHitRectInsets(0, 0, -2, -2)
	self:GetElement("rightEmpty")
		:WipeAnchors()
		:AddAnchor("TOPLEFT", "divider", "BOTTOMLEFT")
		:AddAnchor("BOTTOMRIGHT")
	self.__super:SetLayout("VERTICAL")
	return self
end

function DividedContainer.HideDivider(self)
	self._dividerHidden = true
	return self
end

function DividedContainer.SetLayout(self, layout)
	error("DividedContainer doesn't support this method")
end

function DividedContainer.AddChild(self, child)
	error("DividedContainer doesn't support this method")
end

function DividedContainer.AddChildBeforeById(self, beforeId, child)
	error("DividedContainer doesn't support this method")
end

--- Sets the context table.
-- This table can be used to preserve the divider position across lifecycles of the divided container and even WoW
-- sessions if it's within the settings DB. The position is stored as the width of the left child element.
-- @tparam DividedContainer self The divided container object
-- @tparam table tbl The context table
-- @tparam table defaultTbl The default table (required fields: `leftWidth`)
-- @treturn DividedContainer The divided container object
function DividedContainer.SetContextTable(self, tbl, defaultTbl)
	assert(defaultTbl.leftWidth > 0)
	tbl.leftWidth = tbl.leftWidth or defaultTbl.leftWidth
	self._contextTable = tbl
	self._defaultContextTable = defaultTbl
	return self
end

--- Sets the context table from a settings object.
-- @tparam DividedContainer self The divided container object
-- @tparam Settings settings The settings object
-- @tparam string key The setting key
-- @treturn DividedContainer The divided container object
function DividedContainer.SetSettingsContext(self, settings, key)
	return self:SetContextTable(settings[key], settings:GetDefaultReadOnly(key))
end

--- Sets the minimum width of the child element.
-- @tparam DividedContainer self The divided container object
-- @tparam number minLeftWidth The minimum width of the left child element
-- @tparam number minRightWidth The minimum width of the right child element
-- @treturn DividedContainer The divided container object
function DividedContainer.SetMinWidth(self, minLeftWidth, minRightWidth)
	self._minLeftWidth = minLeftWidth
	self._minRightWidth = minRightWidth
	return self
end

--- Sets the left child element.
-- @tparam DividedContainer self The divided container object
-- @tparam Element child The left child element
-- @treturn DividedContainer The divided container object
function DividedContainer.SetLeftChild(self, child)
	assert(not self._isVertical and not self._leftChild and child)
	self._leftChild = child
	self.__super:AddChildBeforeById("divider", child)
	return self
end

--- Sets the right child element.
-- @tparam DividedContainer self The divided container object
-- @tparam Element child The right child element
-- @treturn DividedContainer The divided container object
function DividedContainer.SetRightChild(self, child)
	assert(not self._isVertical and not self._rightChild and child)
	self._rightChild = child
	self.__super:AddChild(child)
	return self
end

--- Sets the top child element in vertical mode.
-- @tparam DividedContainer self The divided container object
-- @tparam Element child The top child element
-- @treturn DividedContainer The divided container object
function DividedContainer.SetTopChild(self, child)
	assert(self._isVertical and not self._leftChild and child)
	self._leftChild = child
	self.__super:AddChildBeforeById("divider", child)
	return self
end

--- Sets the bottom child element in vertical mode.
-- @tparam DividedContainer self The divided container object
-- @tparam Element child The bottom child element
-- @treturn DividedContainer The divided container object
function DividedContainer.SetBottomChild(self, child)
	assert(self._isVertical and not self._rightChild and child)
	self._rightChild = child
	self.__super:AddChild(child)
	return self
end

function DividedContainer.Draw(self)
	assert(self._contextTable and self._minLeftWidth and self._minRightWidth)
	self.__super.__super.__super:Draw()
	if self._dividerHidden and not self._mouseOver and not self._resizeStartX then
		self:GetElement("divider"):SetBackground(nil)
	else
		self:GetElement("divider"):SetBackground("ACTIVE_BG", true)
	end

	local width = self:_GetDimension(self._isVertical and "HEIGHT" or "WIDTH") - DIVIDER_SIZE
	local leftWidth = self._contextTable.leftWidth + self._resizeOffset
	local rightWidth = width - leftWidth
	if rightWidth < self._minRightWidth then
		leftWidth = width - self._minRightWidth
		assert(leftWidth >= self._minLeftWidth)
	elseif leftWidth < self._minLeftWidth then
		leftWidth = self._minLeftWidth
	end
	self._contextTable.leftWidth = leftWidth - self._resizeOffset

	local leftChild = self._leftChild
	local rightChild = self._rightChild
	local leftEmpty = self:GetElement("leftEmpty")
	local rightEmpty = self:GetElement("rightEmpty")
	if self._isVertical then
		leftEmpty:SetHeight(leftWidth)
		leftChild:SetHeight(leftWidth)
	else
		leftEmpty:SetWidth(leftWidth)
		leftChild:SetWidth(leftWidth)
	end
	if self._resizeStartX then
		leftChild:_GetBaseFrame():SetAlpha(0)
		leftChild:_GetBaseFrame():SetFrameStrata("LOW")
		rightChild:_GetBaseFrame():SetAlpha(0)
		rightChild:_GetBaseFrame():SetFrameStrata("LOW")
		leftEmpty:Show()
		rightEmpty:Show()
	else
		leftChild:_GetBaseFrame():SetAlpha(1)
		leftChild:_GetBaseFrame():SetFrameStrata(self:_GetBaseFrame():GetFrameStrata())
		rightChild:_GetBaseFrame():SetAlpha(1)
		rightChild:_GetBaseFrame():SetFrameStrata(self:_GetBaseFrame():GetFrameStrata())
		leftEmpty:Hide()
		rightEmpty:Hide()
	end

	self.__super:Draw()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.HandleOnUpdate(handle)
	local self = handle:GetParentElement()
	if self._resizeStartX then
		if self._isVertical then
			local currY = select(2, GetCursorPosition()) / self:_GetBaseFrame():GetEffectiveScale()
			self._resizeOffset = self._resizeStartX - currY
		else
			local currX = GetCursorPosition() / self:_GetBaseFrame():GetEffectiveScale()
			self._resizeOffset = currX - self._resizeStartX
		end
		self:Draw()
	end
end

function private.HandleOnMouseDown(handle, mouseButton)
	if mouseButton ~= "LeftButton" then
		return
	end
	local self = handle:GetParentElement()
	if self._isVertical then
		self._resizeStartX = select(2, GetCursorPosition()) / self:_GetBaseFrame():GetEffectiveScale()
	else
		self._resizeStartX = GetCursorPosition() / self:_GetBaseFrame():GetEffectiveScale()
	end
	self._resizeOffset = 0
end

function private.HandleOnMouseUp(handle, mouseButton)
	if mouseButton ~= "LeftButton" then
		return
	end
	local self = handle:GetParentElement()
	self._contextTable.leftWidth = max(self._contextTable.leftWidth + self._resizeOffset, self._minLeftWidth)
	self._resizeOffset = 0
	self._resizeStartX = nil
	self:Draw()
end

function private.HandleOnClick(handle, mouseButton)
	if mouseButton ~= "RightButton" then
		return
	end
	local self = handle:GetParentElement()
	self._contextTable.leftWidth = self._defaultContextTable.leftWidth
	self:Draw()
end

function private.HandleOnEnter(handle)
	local self = handle:GetParentElement()
	self._mouseOver = true
	self:Draw()
end

function private.HandleOnLeave(handle)
	local self = handle:GetParentElement()
	self._mouseOver = false
	self:Draw()
end
