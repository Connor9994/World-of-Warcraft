-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local Reactive = TSM.Include("Util.Reactive")
local String = TSM.Include("Util.String")
local Table = TSM.Include("Util.Table")
local Tooltip = TSM.Include("UI.Tooltip")
local UIElements = TSM.Include("UI.UIElements")
local private = {}
local ANCHOR_REL_PARENT = newproxy()



-- ============================================================================
-- Element Definition
-- ============================================================================

---@class Element
---@field _state ReactiveState
---@field _ExtendStateSchema fun(): ReactiveStateSchema

local Element = TSM.Include("LibTSMClass").DefineClass("Element", nil, "ABSTRACT") ---@class Element
UIElements.Register(Element)
TSM.UI.Element = Element



-- ============================================================================
-- Meta Class Methods
-- ============================================================================

Element._STATE_SCHEMA = Reactive.CreateStateSchema()
	:Commit()

function Element.__static._ExtendStateSchema(cls)
	cls._STATE_SCHEMA = cls._STATE_SCHEMA:Extend()
	return cls._STATE_SCHEMA
end

function Element:__init(frame)
	self._frame = frame
	self._scripts = {}
	self._baseElementCache = nil
	self._parent = nil
	self._children = {}
	self._context = nil
	self._acquired = nil
	self._tooltip = nil
	self._width = nil
	self._height = nil
	self._margin = { left = 0, right = 0, top = 0, bottom = 0 }
	self._padding = { left = 0, right = 0, top = 0, bottom = 0 }
	self._relativeLevel = nil
	self._anchors = {}
	self._cancellables = {}
	self._state = self._STATE_SCHEMA:CreateState()
	self._state:SetAutoStore(self._cancellables)
end

function Element:__tostring()
	local parentId = self._parent and self._parent._id
	return self.__class.__name..":"..(parentId and (parentId..".") or "")..(self._id or "?")
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function Element:SetId(id)
	-- should only be called by core UI code before acquiring the element
	assert(not self._acquired)
	self._id = id or tostring(self)
end

function Element:Acquire()
	assert(not self._acquired)
	self._acquired = true
	self:Show()
end

function Element:Release()
	assert(self._acquired)
	self:ReleaseAllChildren()

	for _, cancellable in ipairs(self._cancellables) do
		cancellable:Cancel()
	end
	wipe(self._cancellables)
	self._state:ResetToDefault()

	local frame = self:_GetBaseFrame()

	-- Clear the OnLeave script before hiding the frame (otherwise it'll get called)
	if self._scripts.OnLeave then
		frame:SetScript("OnLeave", nil)
		self._scripts.OnLeave = nil
	end

	if self._tooltip and Tooltip.IsVisible(frame) then
		-- Hide the tooltip
		Tooltip.Hide()
	end

	self:Hide()
	frame:ClearAllPoints()
	frame:SetParent(nil)
	frame:SetScale(1)

	-- Clear scripts
	for script in pairs(self._scripts) do
		frame:SetScript(script, nil)
	end

	wipe(self._scripts)
	self._baseElementCache = nil
	self._parent = nil
	self._context = nil
	self._acquired = nil
	self._tooltip = nil
	self._width = nil
	self._height = nil
	self._margin.left = 0
	self._margin.right = 0
	self._margin.top = 0
	self._margin.bottom = 0
	self._padding.left = 0
	self._padding.right = 0
	self._padding.top = 0
	self._padding.bottom = 0
	self._relativeLevel = nil
	wipe(self._anchors)

	UIElements.Recycle(self)
end

---Shows the element.
function Element:Show()
	self:_GetBaseFrame():Show()
	return self
end

---Hides the element.
function Element:Hide()
	self:_GetBaseFrame():Hide()
	return self
end

---Sets whether or not the element is shown.
---@param isShown boolean
function Element:SetShown(isShown)
	if isShown then
		self:Show()
	else
		self:Hide()
	end
	return self
end

---Returns whether or not the element is visible.
---@return boolean
function Element:IsVisible()
	return self:_GetBaseFrame():IsVisible()
end

---Sets the width of the element.
---@param width? number The width of the element, or nil to have an undefined width
---@return Element @The element object
function Element:SetWidth(width)
	assert(width == nil or type(width) == "number")
	self._width = width
	return self
end

---Sets the height of the element.
---@generic T: Element
---@param self T
---@param height? number The height of the element, or nil to have an undefined height
---@return T
function Element:SetHeight(height)
	assert(height == nil or type(height) == "number")
	self._height = height
	return self
end

---Sets the width and height of the element.
---@generic T: Element
---@param self T
---@param width? number The width of the element, or nil to have an undefined width
---@param height? number The height of the element, or nil to have an undefined height
---@return T
function Element:SetSize(width, height)
	self:SetWidth(width)
	self:SetHeight(height)
	return self
end

---Sets the padding of the element.
---@generic T: Element
---@param self T
---@param left number The left padding value if all arguments are passed or the value of all sides if a single argument is passed
---@param right? number The right padding value if all arguments are passed
---@param top? number The top padding value if all arguments are passed
---@param bottom? number The bottom padding value if all arguments are passed
---@return T
function Element:SetPadding(left, right, top, bottom)
	if not right and not top and not bottom then
		right = left
		top = left
		bottom = left
	end
	assert(type(left) == "number" and type(right) == "number" and type(top) == "number" and type(bottom) == "number")
	self._padding.left = left
	self._padding.right = right
	self._padding.top = top
	self._padding.bottom = bottom
	return self
end

---Sets the margin of the element.
---@generic T: Element
---@param self T
---@param left number The left margin value if all arguments are passed or the value of all sides if a single argument is passed
---@param right? number The right margin value if all arguments are passed
---@param top? number The top margin value if all arguments are passed
---@param bottom? number The bottom margin value if all arguments are passed
---@return T
function Element:SetMargin(left, right, top, bottom)
	if not right and not top and not bottom then
		right = left
		top = left
		bottom = left
	end
	assert(type(left) == "number" and type(right) == "number" and type(top) == "number" and type(bottom) == "number")
	self._margin.left = left
	self._margin.right = right
	self._margin.top = top
	self._margin.bottom = bottom
	return self
end

---Sets the relative level of this element with regards to its parent.
---@param level number The relative level of this element
---@return Element @The element object
function Element:SetRelativeLevel(level)
	self._relativeLevel = level
	return self
end

---Wipes the element's anchors.
---@return Element @The element object
function Element:WipeAnchors()
	wipe(self._anchors)
	return self
end

---Adds an anchor to the element.
---@param ... any The anchor arguments (following WoW's SetPoint() arguments)
---@return Element @The element object
function Element:AddAnchor(...)
	local numArgs = select("#", ...)
	local point, relFrame, relPoint, x, y = nil, nil, nil, nil, nil
	if numArgs == 1 then
		point = ...
	elseif numArgs == 2 then
		point, relFrame = ...
	elseif numArgs == 3 then
		local arg2 = select(2, ...)
		if type(arg2) == "number" then
			point, x, y = ...
		else
			point, relFrame, relPoint = ...
		end
	elseif numArgs == 4 then
		point, relFrame, x, y = ...
	elseif numArgs == 5 then
		point, relFrame, relPoint, x, y = ...
	else
		error("Invalid anchor")
	end
	tinsert(self._anchors, point)
	tinsert(self._anchors, relFrame or ANCHOR_REL_PARENT)
	tinsert(self._anchors, relPoint or point)
	tinsert(self._anchors, x or 0)
	tinsert(self._anchors, y or 0)
	return self
end

---Gets the top-most element in the tree.
---@return Element @The top-most element object
function Element:GetBaseElement()
	if not self._baseElementCache then
		local element = self
		local parent = element:GetParentElement()
		while parent do
			local temp = element
			element = parent
			parent = temp:GetParentElement()
		end
		self._baseElementCache = element
	end
	return self._baseElementCache
end

---Gets the parent element's base frame.
---@return Element @The parent element's base frame
function Element:GetParent()
	return self:GetParentElement():_GetBaseFrame()
end

---Gets the parent element.
---@return Element @The parent element object
function Element:GetParentElement()
	return self._parent
end

---Gets another element in the tree by relative path.
---
---The path consists of element ids separated by `.`. `__parent` may also be used to indicate the parent element.
---@param path string The relative path to the element
---@return Element @The desired element
function Element:GetElement(path)
	return private.GetElementHelper(self, path)
end

---Check if the element has a child with a given ID.
---@param childId string The id of the child
---@return boolean
function Element:HasChildById(childId)
	for _, child in ipairs(self._children) do
		if child._id == childId then
			return true
		end
	end
	return false
end

---Releases all children elements.
function Element:ReleaseAllChildren()
	for _, child in ipairs(self._children) do
		child:Release()
	end
	wipe(self._children)
end

---Sets the tooltip of the element.
---@param tooltip any The value passed to @{Tooltip.Show} when the user hovers over the element, or nil to clear it
---@return Element @The element object
function Element:SetTooltip(tooltip)
	self._tooltip = tooltip
	if tooltip then
		-- setting OnEnter/OnLeave will implicitly enable the mouse, so make sure it's previously been enabled
		assert(self:_GetBaseFrame():IsMouseEnabled())
		self:SetScript("OnEnter", private.OnEnter)
		self:SetScript("OnLeave", private.OnLeave)
	else
		self:SetScript("OnEnter", nil)
		self:SetScript("OnLeave", nil)
	end
	return self
end

---Shows a tooltip on the element.
---@param tooltip any The value passed to @{Tooltip.Show} when the user hovers over the element
---@param noWrapping? boolean Disables wrapping of text lines
---@param xOffset? number An extra x offset to apply to the anchor of the tooltip
---@return Element @The element object
function Element:ShowTooltip(tooltip, noWrapping, xOffset)
	Tooltip.Show(self:_GetBaseFrame(), tooltip, noWrapping, xOffset)
	return self
end

---Sets the context value of the element.
---@param context any The context value
---@return Element @The element object
function Element:SetContext(context)
	self._context = context
	return self
end

---Gets the context value from the element.
---@return any @The context value
function Element:GetContext()
	return self._context
end

---Registers a script handler.
---@param script string The script to register for
---@param handler function The script handler which will be called with the element object followed by any arguments to
---the script
---@return Element @The element object
function Element:SetScript(script, handler)
	self._scripts[script] = handler
	if handler then
		ScriptWrapper.Set(self:_GetBaseFrame(), script, handler, self)
	else
		ScriptWrapper.Clear(self:_GetBaseFrame(), script)
	end
	return self
end

---Sets a script to propagate to the parent element.
---@param script string The script to propagate
---@return Element @The element object
function Element:PropagateScript(script)
	self._scripts[script] = "__PROPAGATE"
	ScriptWrapper.SetPropagate(self:_GetBaseFrame(), script, self)
	return self
end

---Takes ownership of a cancellable publisher.
---@param publisher ReactivePublisher The cancellable publisher to own
---@return Element @The element object
function Element:AddCancellable(publisher)
	publisher:StoreIn(self._cancellables)
	return self
end

function Element:Draw()
	assert(self._acquired)
	local frame = self:_GetBaseFrame()
	local parentFrame = frame:GetParent()
	local numAnchors = self:_GetNumAnchors()
	if numAnchors > 0 then
		frame:ClearAllPoints()
		for i = 1, numAnchors do
			local point, relFrame, relPoint, x, y = self:_GetAnchor(i)
			if relFrame == ANCHOR_REL_PARENT then
				relFrame = parentFrame
			elseif type(relFrame) == "string" then
				-- this is a relative element
				relFrame = self:GetParentElement():GetElement(relFrame):_GetBaseFrame()
			end
			frame:SetPoint(point, relFrame, relPoint, x, y)
		end
	end
	local width = self._width
	if width then
		self:_SetDimension("WIDTH", width)
	end
	local height = self._height
	if height then
		self:_SetDimension("HEIGHT", height)
	end
	local relativeLevel = self._relativeLevel
	if relativeLevel and parentFrame then
		frame:SetFrameLevel(parentFrame:GetFrameLevel() + relativeLevel)
	end
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function Element:_AddChild(child, beforeId)
	assert(child:__isa(Element) and not child:_GetBaseFrame():GetParent())
	if beforeId then
		local insertIndex = nil
		for i, element in ipairs(self._children) do
			if element._id == beforeId then
				insertIndex = i
				break
			end
		end
		if not insertIndex then
			error("Invalid beforeId: "..tostring(beforeId))
		end
		tinsert(self._children, insertIndex, child)
	else
		tinsert(self._children, child)
	end
	child:_GetBaseFrame():SetParent(self:_GetBaseFrame())
	child:_SetParentElement(self)
	child:Show()
end

function Element:_RemoveChild(child)
	assert(child:__isa(Element) and child:_GetBaseFrame():GetParent())
	assert(Table.RemoveByValue(self._children, child) == 1)
	child:_GetBaseFrame():SetParent(nil)
	child:_SetParentElement(nil)
	child:Release()
end

function Element:_GetNumAnchors()
	assert(#self._anchors % 5 == 0)
	return #self._anchors / 5
end

function Element:_GetAnchor(index)
	index = (index - 1) * 5 + 1
	assert(index < #self._anchors)
	return unpack(self._anchors, index, index + 4)
end

function Element:_SetParentElement(parent)
	self._parent = parent
	self:_ClearBaseElementCache()
end

function Element:_ClearBaseElementCache()
	self._baseElementCache = nil
	for _, child in ipairs(self._children) do
		child:_ClearBaseElementCache()
	end
end

function Element:_GetMinimumDimension(dimension)
	if dimension == "WIDTH" then
		local width = self._width
		return width or 0, width == nil
	elseif dimension == "HEIGHT" then
		local height = self._height
		return height or 0, height == nil
	else
		error("Invalid dimension: " .. tostring(dimension))
	end
end

function Element:_GetPreferredDimension(dimension)
	if dimension == "WIDTH" then
		return nil
	elseif dimension == "HEIGHT" then
		return nil
	else
		error("Invalid dimension: " .. tostring(dimension))
	end
end

function Element:_GetDimension(dimension)
	if dimension == "WIDTH" then
		return self:_GetBaseFrame():GetWidth()
	elseif dimension == "HEIGHT" then
		return self:_GetBaseFrame():GetHeight()
	else
		error("Invalid dimension: " .. tostring(dimension))
	end
end

function Element:_SetDimension(dimension, ...)
	if dimension == "WIDTH" then
		self:_GetBaseFrame():SetWidth(...)
	elseif dimension == "HEIGHT" then
		self:_GetBaseFrame():SetHeight(...)
	else
		error("Invalid dimension: " .. tostring(dimension))
	end
end

function Element:_GetBaseFrame()
	return self._frame
end

function Element:_GetPadding(side)
	return self._padding[strlower(side)]
end

function Element:_GetPaddingAnchorOffsets(anchor)
	local xPart, yPart = private.SplitAnchor(anchor)
	local x = xPart and ((xPart == "LEFT" and 1 or -1) * self:_GetPadding(xPart)) or 0
	local y = yPart and ((yPart == "BOTTOM" and 1 or -1) * self:_GetPadding(yPart)) or 0
	return x, y
end

function Element:_GetMargin(side)
	return self._margin[strlower(side)]
end

function Element:_GetMarginAnchorOffsets(anchor)
	local xPart, yPart = private.SplitAnchor(anchor)
	local x = xPart and ((xPart == "LEFT" and 1 or -1) * self:_GetMargin(xPart)) or 0
	local y = yPart and ((yPart == "BOTTOM" and 1 or -1) * self:_GetMargin(yPart)) or 0
	return x, y
end



-- ============================================================================
-- Helper Functions
-- ============================================================================

function private.GetElementHelper(element, path)
	assert(not strfind(path, "..", 1, true))
	for part in String.SplitIterator(path, ".") do
		if part == "__parent" then
			local parentElement = element:GetParentElement()
			if not parentElement then
				error(format("Element (%s) has no parent", tostring(element._id)))
			end
			element = parentElement
		elseif part == "__base" then
			local baseElement = element:GetBaseElement()
			if not baseElement then
				error(format("Element (%s) has no base element", tostring(element._id)))
			end
			element = baseElement
		else
			local found = false
			for _, child in ipairs(element._children) do
				if child._id == part then
					element = child
					found = true
					break
				end
			end
			if not found then
				error(format("Element (%s) has no child with id: '%s'", tostring(element._id), part))
			end
		end
	end
	return element
end

function private.SplitAnchor(anchor)
	if anchor == "BOTTOMLEFT" then
		return "LEFT", "BOTTOM"
	elseif anchor == "BOTTOM" then
		return nil, "BOTTOM"
	elseif anchor == "BOTTOMRIGHT" then
		return "RIGHT", "BOTTOM"
	elseif anchor == "RIGHT" then
		return "RIGHT", nil
	elseif anchor == "TOPRIGHT" then
		return "RIGHT", "TOP"
	elseif anchor == "TOP" then
		return nil, "TOP"
	elseif anchor == "TOPLEFT" then
		return "LEFT", "TOP"
	elseif anchor == "LEFT" then
		return "LEFT", nil
	else
		error("Invalid anchor: "..tostring(anchor))
	end
end

function private.OnEnter(element)
	element:ShowTooltip(element._tooltip)
end

function private.OnLeave(element)
	Tooltip.Hide()
end
