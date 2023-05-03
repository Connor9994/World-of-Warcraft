-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local UIElements = TSM.Init("UI.UIElements") ---@class UI.UIElements
local LibTSMClass = TSM.Include("LibTSMClass")
local ObjectPool = TSM.Include("Util.ObjectPool")
local Table = TSM.Include("Util.Table")
local WidgetExtensions = TSM.Include("UI.WidgetExtensions")
local private = {
	elementClasses = {},
	objectPools = {}, ---@type table<any, Util.ObjectPool.Pool>
	namedElements = {},
	activeFrameElementMap = {},
	debugNameElementLookup = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

--- Defines and registers a UI Element subclass.
-- @tparam string elementType The name of the new element class
-- @tparam string parentElementType The name of the parent class
-- @param ... Any additional class modifiers to pass through to LibTSMClass.DefineClass()
-- @treturn class The newly-defined class
function UIElements.Define(elementType, parentElementType, ...)
	local parentClass = parentElementType and private.elementClasses[parentElementType]
	assert(parentClass)
	local class = LibTSMClass.DefineClass(elementType, parentClass, ...)
	UIElements.Register(class)
	return class
end

--- Registers a UI Element subclass.
-- @tparam Element class The element subclass
function UIElements.Register(class)
	assert(not private.elementClasses[class.__name])
	private.elementClasses[class.__name] = class
end

---Creates a new UI element.
---@generic T
---@param elementType `T` The name of the element class
---@param id string The id to assign to the element
---@return T
function UIElements.New(elementType, id)
	return private.NewElementHelper(elementType, id, nil)
end

--- Creates a new named UI element.
-- @tparam string elementType The name of the element class
-- @tparam string id The id to assign to the element
-- @tparam string name The global name of the element
-- @treturn Element The created UI element object
function UIElements.NewNamed(elementType, id, name)
	assert(name)
	return private.NewElementHelper(elementType, id, name)
end

--- Recycles a UI element.
-- @tparam Element element The UI element object
function UIElements.Recycle(element)
	private.activeFrameElementMap[element:_GetBaseFrame()] = nil
	if not Table.KeyByValue(private.namedElements, element) then
		private.objectPools[element.__class]:Recycle(element)
	end
end

--- Gets a UI element by its frame (for TSM's frame stack).
-- @tparam table frame The frame
-- @treturn ?Element The element or nil if the frame doesn't correspond to an element
function UIElements.GetByFrame(frame)
	return private.activeFrameElementMap[frame]
end

---Creates a WoW UI frame object, adds our custom extensions to it, and tracks it for easier debugging.
---@generic T
---@param element Element The element which owns the new frame (for debug purposes)
---@param frameType `T` The type of the WoW UI object
---@param frameName? string The global name
---@param parentFrame? table The parent WoW UI object
---@param template? any A WoW UI template to inherit from
---@return T
function UIElements.CreateFrame(element, frameType, frameName, parentFrame, template)
	local isNamed = frameName and true or false
	if not frameName then
		-- generate a debug name to aid in later lookup
		frameName = private.GetDebugName("TSM_UI_ELEMENT", element)
	end
	private.debugNameElementLookup[frameName] = element
	local frame = CreateFrame(frameType, frameName, parentFrame, template)
	if not isNamed then
		_G[frameName] = nil
	end
	WidgetExtensions.AddToObject(frame)
	return frame
end

--- Creates a WoW UI font string, adds our custom extensions to it, and tracks it for easier debugging.
-- @tparam Element element The TSM UI element object
-- @tparam table parentFrame The parent WoW UI frame
-- @treturn table The WoW UI font string
function UIElements.CreateFontString(element, parentFrame)
	local name = private.GetDebugName("TSM_FONT_STRING", element)
	private.debugNameElementLookup[name] = element
	local fontString = parentFrame:CreateFontString(name)
	_G[name] = nil
	WidgetExtensions.AddToObject(fontString)
	return fontString
end

--- Creates a WoW UI texture, adds our custom extensions to it, and tracks it for easier debugging.
-- @tparam Element element The TSM UI element object
-- @tparam table parentFrame The parent WoW UI frame
-- @param ... Additional arguments to pass to CreateTexture(...) after the name
-- @treturn table The WoW UI texture

---Creates a WoW UI texture, adds our custom extensions to it, and tracks it for easier debugging.
---@param element Element The element which owns the new frame (for debug purposes)
---@param parentFrame Frame The parent WoW UI frame
---@param layer? DrawLayer The layer
---@param subLayer? number The sublayer
---@return Texture
function UIElements.CreateTexture(element, parentFrame, layer, subLayer)
	local name = private.GetDebugName("TSM_TEXTURE", element)
	private.debugNameElementLookup[name] = element
	local texture = parentFrame:CreateTexture(name, layer, nil, subLayer)
	_G[name] = nil
	WidgetExtensions.AddToObject(texture)
	return texture
end

--- Creates a texture animation group and adds our custom extensions to it
-- @tparam table texture The texture to create the animation group on
-- @treturn table The WoW UI texture
function UIElements.CreateAnimationGroup(texture)
	local ag = texture:CreateAnimationGroup()
	WidgetExtensions.AddToObject(ag)
	return ag
end

--- Gets the debug name translations.
-- @tparam table result The result table
function UIElements.GetDebugNameTranslation(result)
	for name, element in pairs(private.debugNameElementLookup) do
		result[name] = "<"..tostring(element)..">"
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.NewElementHelper(elementType, id, name)
	local class = private.elementClasses[elementType]
	if not class then
		error("Invalid elementType: "..tostring(elementType))
	end
	local element = nil
	if name then
		private.namedElements[name] = private.namedElements[name] or class(name)
		element = private.namedElements[name]
		assert(_G[name] == element:_GetBaseFrame())
	else
		if not private.objectPools[class] then
			private.objectPools[class] = ObjectPool.New("UI_"..class.__name, class, 1)
		end
		element = private.objectPools[class]:Get()
	end
	private.activeFrameElementMap[element:_GetBaseFrame()] = element
	element:SetId(id)
	element:Acquire()
	return element
end

function private.GetDebugName(typePrefix, element)
	return typePrefix..":"..element.__class.__name..":"..format("%06x", random(0, 2 ^ 24 - 1))
end
