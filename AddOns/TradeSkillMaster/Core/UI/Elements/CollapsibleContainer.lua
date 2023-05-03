-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- Collapsible Container UI Element Class.
-- An collapsible container is a container which can be collapsed to a single heading line. It is a subclass of the @{Frame} class.
-- @classmod CollapsibleContainer

local TSM = select(2, ...) ---@type TSM
local CollapsibleContainer = TSM.Include("LibTSMClass").DefineClass("CollapsibleContainer", TSM.UI.Frame)
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(CollapsibleContainer)
TSM.UI.CollapsibleContainer = CollapsibleContainer
local private = {}



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function CollapsibleContainer.__init(self)
	self.__super:__init()
	self._headingText = ""
	self._contextTbl = nil
	self._contextKey = nil
end

function CollapsibleContainer.Acquire(self)
	self.__super:Acquire()
	self:SetBackgroundColor("PRIMARY_BG_ALT", true)
	self.__super:SetLayout("VERTICAL")
	self.__super:SetPadding(12, 12, 8, 8)
	self.__super:AddChild(UIElements.New("Frame", "heading")
		:SetLayout("HORIZONTAL")
		:SetHeight(24)
		:AddChild(UIElements.New("Button", "expander")
			:SetMargin(0, 4, 0, 0)
			:SetScript("OnClick", private.OnExpanderClick)
		)
		:AddChild(UIElements.New("Text", "text")
			:SetFont("BODY_BODY1_BOLD")
		)
	)
	self.__super:AddChild(UIElements.New("Frame", "content"))
end

function CollapsibleContainer.Release(self)
	self._headingText = ""
	self._contextTbl = nil
	self._contextKey = nil
	self.__super:Release()
end

--- Sets the context table and key where to store the collapsed state.
-- @tparam CollapsibleContainer self The collapsible container object
-- @tparam table tbl The table
-- @tparam string key The key
-- @treturn CollapsibleContainer The collapsible container object
function CollapsibleContainer.SetContextTable(self, tbl, key)
	assert(type(tbl) == "table" and type(key) == "string")
	self._contextTbl = tbl
	self._contextKey = key
	if self._contextTbl[self._contextKey] then
		self:GetElement("content"):Hide()
	else
		self:GetElement("content"):Show()
	end
	return self
end

--- Set the heading text.
-- @tparam CollapsibleContainer self The collapsible container object
-- @tparam ?string|number headingText The heading text
-- @treturn CollapsibleContainer The collapsible container object
function CollapsibleContainer.SetHeadingText(self, headingText)
	assert(type(headingText) == "string" or type(headingText) == "number")
	self._headingText = headingText
	return self
end

function CollapsibleContainer.SetPadding(self, left, right, top, bottom)
	error("CollapsibleContainer doesn't support this method")
end

function CollapsibleContainer.SetLayout(self, layout)
	self:GetElement("content"):SetLayout(layout)
	return self
end

function CollapsibleContainer.AddChild(self, child)
	self:GetElement("content"):AddChild(child)
	return self
end

function CollapsibleContainer.AddChildIf(self, condition, child)
	self:GetElement("content"):AddChildIf(condition, child)
	return self
end

function CollapsibleContainer.AddChildrenWithFunction(self, func, ...)
	self:GetElement("content"):AddChildrenWithFunction(func, ...)
	return self
end

function CollapsibleContainer.AddChildBeforeById(self, beforeId, child)
	self:GetElement("content"):AddChildBeforeById(beforeId, child)
	return self
end

function CollapsibleContainer.Draw(self)
	self:GetElement("heading.text"):SetText(self._headingText)
	self:GetElement("heading.expander"):SetBackgroundAndSize(self._contextTbl[self._contextKey] and "iconPack.18x18/Caret/Right" or "iconPack.18x18/Caret/Down")
	self.__super:Draw()
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.OnExpanderClick(button)
	local self = button:GetParentElement():GetParentElement()
	self._contextTbl[self._contextKey] = not self._contextTbl[self._contextKey]
	if self._contextTbl[self._contextKey] then
		self:GetElement("content"):Hide()
	else
		self:GetElement("content"):Show()
	end
	-- TODO: is there a better way to notify the elements up the stack that our size has changed?
	self:GetBaseElement():Draw()
end
