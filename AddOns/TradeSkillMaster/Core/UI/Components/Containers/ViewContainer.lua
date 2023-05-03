-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Table = TSM.Include("Util.Table")
local UIElements = TSM.Include("UI.UIElements")



-- ============================================================================
-- Element Definition
-- ============================================================================

local ViewContainer = UIElements.Define("ViewContainer", "Element") ---@class ViewContainer: Element



-- ============================================================================
-- Meta Class Methods
-- ============================================================================

function ViewContainer:__init()
	local frame = UIElements.CreateFrame(self, "Frame")
	self.__super:__init(frame)
	self._child = nil
	self._pathsList = {}
	self._contextTable = nil
	self._defaultContextTable = nil
end

function ViewContainer:Acquire()
	self._path = nil
	self._navCallback = nil
	self.__super:Acquire()
end

function ViewContainer:Release()
	wipe(self._pathsList)
	self._child = nil
	self.__super:Release()
	self._contextTable = nil
	self._defaultContextTable = nil
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

---Sets the navigation callback.
---@alias NavCallback fun(viewContainer: ViewContainer, path: string): Element
---@param callback NavCallback The function called when the selected path changes to get the new content
---@return ViewContainer
function ViewContainer:SetNavCallback(callback)
	self._navCallback = callback
	return self
end

---Add a path to the view container.
---@param path string The path
---@param setSelected? boolean Sets this as the selected path (false by default)
---@return ViewContainer
function ViewContainer:AddPath(path, setSelected)
	tinsert(self._pathsList, path)
	if self._contextTable then
		assert(setSelected == nil, "Cannot set selected path when using a context table")
		local newPathIndex = Table.KeyByValue(self._pathsList, path)
		if self._contextTable.pathIndex == newPathIndex then
			self:SetPath(path)
		end
	elseif setSelected then
		self:SetPath(path)
	end
	return self
end

---Renames a path.
---@param path string The new path
---@param index number The index of the path to change
---@return ViewContainer
function ViewContainer:RenamePath(path, index)
	local changePath = self._pathsList[index] == self._path
	self._pathsList[index] = path
	if changePath then
		self:SetPath(path)
	end
	return self
end

---Sets the selected path.
---@param path string The selected path
---@param redraw boolean Whether or not to redraw the view container
---@return ViewContainer
function ViewContainer:SetPath(path, redraw)
	if path ~= self._path then
		if self._child then
			self:_RemoveChild(self._child)
		end
		self._child = self:_navCallback(path)
		assert(self._child)
		self:_AddChild(self._child)
		self._path = path
		-- Save the path index of the new selected path to the context table
		if self._contextTable then
			self._contextTable.pathIndex = Table.KeyByValue(self._pathsList, path)
		end
	end
	if redraw then
		self:Draw()
	end
	return self
end

---Reloads the currently selected path.
function ViewContainer:ReloadContent()
	local path = self._path
	self._path = nil
	self:SetPath(path, true)
end

---Get the current path.
---@return string
function ViewContainer:GetPath()
	return self._path
end

---Get a list of the paths for the view container.
---@return table
function ViewContainer:GetPathList()
	return self._pathsList
end

---Sets the context table which can be used to save the active tab (by index).
---@param tbl table The context table
---@param defaultTbl table The default context table values
---@return ViewContainer
function ViewContainer:SetContextTable(tbl, defaultTbl)
	assert(defaultTbl.pathIndex ~= nil)
	tbl.pathIndex = tbl.pathIndex or defaultTbl.pathIndex
	self._contextTable = tbl
	self._defaultContextTable = defaultTbl
	return self
end

---Sets the context table from a settings object.
---@param settings any The settings object
---@param key string THe settings key
---@return ViewContainer
function ViewContainer:SetSettingsContext(settings, key)
	return self:SetContextTable(settings[key], settings:GetDefaultReadOnly(key))
end

function ViewContainer:Draw()
	self.__super:Draw()
	local childFrame = self._child:_GetBaseFrame()

	-- Set the child to be full-size
	childFrame:ClearAllPoints()
	local xOffset, yOffset = self._child:_GetMarginAnchorOffsets("BOTTOMLEFT")
	local paddingXOffset, paddingYOffset = self:_GetPaddingAnchorOffsets("BOTTOMLEFT")
	xOffset = xOffset + paddingXOffset - self:_GetContentPadding("LEFT")
	yOffset = yOffset + paddingYOffset - self:_GetContentPadding("BOTTOM")
	childFrame:SetPoint("BOTTOMLEFT", xOffset, yOffset)
	xOffset, yOffset = self._child:_GetMarginAnchorOffsets("TOPRIGHT")
	paddingXOffset, paddingYOffset = self:_GetPaddingAnchorOffsets("TOPRIGHT")
	xOffset = xOffset + paddingXOffset - self:_GetContentPadding("RIGHT")
	yOffset = yOffset + paddingYOffset - self:_GetContentPadding("TOP")
	childFrame:SetPoint("TOPRIGHT", xOffset, yOffset)
	self._child:Draw()
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function ViewContainer:_GetMinimumDimension(dimension)
	if dimension == "WIDTH" then
		local width = self._width
		if width then
			return width, false
		else
			return self._child:_GetMinimumDimension(dimension)
		end
	elseif dimension == "HEIGHT" then
		local height = self._height
		if height then
			return height, false
		else
			return self._child:_GetMinimumDimension(dimension)
		end
	else
		error("Invalid dimension: "..tostring(dimension))
	end
end

function ViewContainer:_GetContentPadding(side)
	if side == "TOP" or side == "BOTTOM" or side == "LEFT" or side == "RIGHT" then
		return 0
	else
		error("Invalid side: "..tostring(side))
	end
end
