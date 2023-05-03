-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Table = TSM.Include("Util.Table")
local UIElements = TSM.Include("UI.UIElements")
local private = {}



-- ============================================================================
-- Element Definition
-- ============================================================================

local Container = UIElements.Define("Container", "Element", "ABSTRACT") ---@class Container: Element
TSM.UI.Container = Container -- TODO: Remove the need for this



-- ============================================================================
-- Meta Class Methods
-- ============================================================================

function Container:__init(frame)
	self.__super:__init(frame)
	self._layoutChildren = {}
	self._noLayoutChildren = {}
end

function Container:Release()
	wipe(self._layoutChildren)
	wipe(self._noLayoutChildren)
	self.__super:Release()
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

---Release all child elements.
function Container:ReleaseAllChildren()
	self.__super:ReleaseAllChildren()
	wipe(self._layoutChildren)
	wipe(self._noLayoutChildren)
end

---Adds a child element.
---@param child Element The child element
---@return Container
function Container:AddChild(child)
	self:_AddChildHelper(child, true)
	return self
end

---Add a child element when the required condition is true.
---@param condition boolean The required condition
---@param child Element The child element
---@return Container
function Container:AddChildIf(condition, child)
	if not condition then
		child:Release()
		return self
	end
	self:_AddChildHelper(child, true)
	return self
end

---Add a child element before another one.
---@param beforeId string The id of the child element to add this one before
---@param child Element The child element
---@return Container
function Container:AddChildBeforeById(beforeId, child)
	self:_AddChildHelper(child, true, beforeId)
	return self
end

---Add child elements using a function.
---@param func fun(container: Container, ...: any) The function to call which will add children
---@param ... any Additional arguments to pass to the function
---@return Container
function Container:AddChildrenWithFunction(func, ...)
	func(self, ...)
	return self
end

---Add a child element which has explicit layout performed by the application code.
---@param child Element The child element
---@return Container
function Container:AddChildNoLayout(child)
	self:_AddChildHelper(child, false)
	return self
end

---Remove a child element.
---@param child Element The child element to remove
function Container:RemoveChild(child)
	Table.RemoveByValue(self._layoutChildren, child)
	Table.RemoveByValue(self._noLayoutChildren, child)
	self:_RemoveChild(child)
end

---Iterates over all child elements involved in layout.
---@param self Container
---@return fun(): index, Element @An iterator with fields: `index`, `child`
function Container:LayoutChildrenIterator()
	return private.VisibleChildrenIterator, self._layoutChildren, 0
end

---Iterates over all child elements involved in layout.
---@param self Container
---@return fun(): index, Element @An iterator with fields: `index`, `child`
function Container:NoLayoutChildrenIterator()
	return private.VisibleChildrenIterator, self._noLayoutChildren, 0
end

---Shows all child elements.
function Container:ShowAllChildren()
	for _, child in ipairs(self._layoutChildren) do
		if not child:IsVisible() then
			child:Show()
		end
	end
	for _, child in ipairs(self._noLayoutChildren) do
		if not child:IsVisible() then
			child:Show()
		end
	end
end

function Container.Draw(self)
	self.__super:Draw()
	for _, child in ipairs(self._children) do
		child:Draw()
	end
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

---Gets the number of child elements involved in layout.
---@return number
function Container:_GetNumLayoutChildren()
	local count = 0
	for _ in self:LayoutChildrenIterator() do
		count = count + 1
	end
	return count
end

function Container:_AddChildHelper(child, layout, beforeId)
	self:_AddChild(child, beforeId)
	if layout then
		tinsert(self._layoutChildren, private.GetElementInsertIndex(self._layoutChildren, beforeId), child)
	else
		tinsert(self._noLayoutChildren, private.GetElementInsertIndex(self._noLayoutChildren, beforeId), child)
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetElementInsertIndex(tbl, beforeId)
	if not beforeId then
		return #tbl + 1
	end
	for i, element in ipairs(tbl) do
		if element._id == beforeId then
			return i
		end
	end
	error("Invalid beforeId: "..tostring(beforeId))
end

function private.VisibleChildrenIterator(tbl, index)
	while true do
		index = index + 1
		local child = tbl[index]
		if not child then
			return
		end
		if child:IsVisible() then
			return index, child
		end
	end
end
