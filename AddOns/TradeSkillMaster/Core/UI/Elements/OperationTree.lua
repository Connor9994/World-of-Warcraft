-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- OperationTree UI Element Class.
-- The operation tree is used to display operations grouped by module and allows for adding, duplicating, and deleting
-- them. Only one module is allowed to be expanded at a time. It is a subclass of the @{ScrollingTable} class.
-- @classmod OperationTree

local TSM = select(2, ...) ---@type TSM
local OperationTree = TSM.Include("LibTSMClass").DefineClass("OperationTree", TSM.UI.ScrollingTable)
local L = TSM.Include("Locale").GetTable()
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(OperationTree)
TSM.UI.OperationTree = OperationTree
local private = {}
local DATA_SEP = "\001"


-- ============================================================================
-- Public Class Methods
-- ============================================================================

function OperationTree.__init(self)
	self.__super:__init()
	self:SetRowHeight(28)

	self._operationNameFilter = ""
	self._selected = nil
	self._expandedModule = nil
	self._selectedOperation = nil
	self._prevSelectedOperation = nil
	self._onOperationSelectedHandler = nil
	self._onOperationAddedHandler = nil
	self._onOperationDeletedHandler = nil
end

function OperationTree.Acquire(self)
	self._backgroundColor = "PRIMARY_BG_ALT"
	self._headerMode = "NONE"
	self.__super:Acquire()
	self:GetScrollingTableInfo()
		:NewColumn("text")
			:SetFont("BODY_BODY2_MEDIUM")
			:SetJustifyH("LEFT")
			:SetTextFunction(private.GetText)
			:SetExpanderStateFunction(private.GetExpanderState)
			:SetActionIconInfo(2, 14, private.GetActionIcon)
			:SetActionIconClickHandler(private.OnActionIconClick)
			:DisableHiding()
			:Commit()
		:Commit()
	self:UpdateData()
end

function OperationTree.Release(self)
	for _, row in ipairs(self._rows) do
		ScriptWrapper.Clear(row._frame, "OnDoubleClick")
	end
	self._selected = nil
	self._operationNameFilter = ""
	self._expandedModule = nil
	self._selectedOperation = nil
	self._prevSelectedOperation = nil
	self._onOperationSelectedHandler = nil
	self._onOperationAddedHandler = nil
	self._onOperationDeletedHandler = nil
	self.__super:Release()
	self:SetRowHeight(28)
end

--- Sets the operation name filter.
-- @tparam OperationTree self The operation tree object
-- @tparam string filter The filter string (any operations which don't match this are hidden)
function OperationTree.SetOperationNameFilter(self, filter)
	self._operationNameFilter = filter
	if filter == "" and self._prevSelectedOperation and not self._selectedOperation then
		-- restore any previous selection if we don't have something selected
		self:SetSelectedOperation(self:_SplitOperationKey(self._prevSelectedOperation))
		self._prevSelectedOperation = nil
	elseif filter ~= "" and self._selectedOperation then
		local _, operationName = self:_SplitOperationKey(self._selectedOperation)
		if not operationName or not strmatch(strlower(operationName), filter) then
			-- save the current selection to restore after the filter is cleared and then clear the current selection
			self._prevSelectedOperation = self._selectedOperation
			self:SetSelectedOperation()
		end
	end
	self:UpdateData(true)
end

--- Registers a script handler.
-- @tparam OperationTree self The operation tree object
-- @tparam string script The script to register for (supported scripts: `OnOperationSelected`, `OnOperationAdded`,
-- `OnOperationDeleted`)
-- @tparam function handler The script handler which will be called with the operation tree object followed by any
-- arguments to the script
-- @treturn OperationTree The operation tree object
function OperationTree.SetScript(self, script, handler)
	if script == "OnOperationSelected" then
		self._onOperationSelectedHandler = handler
	elseif script == "OnOperationAdded" then
		self._onOperationAddedHandler = handler
	elseif script == "OnOperationDeleted" then
		self._onOperationDeletedHandler = handler
	else
		error("Unknown OperationTree script: "..tostring(script))
	end
	return self
end

--- Sets the selected operation.
-- @tparam OperationTree self The operation tree object
-- @tparam string moduleName The name of the module which the operation belongs to
-- @tparam string operationName The name of the operation
-- @treturn OperationTree The operation tree object
function OperationTree.SetSelectedOperation(self, moduleName, operationName)
	if moduleName and operationName then
		self._selectedOperation = moduleName..DATA_SEP..operationName
		self._expandedModule = moduleName
	elseif moduleName then
		self._selectedOperation = moduleName
		self._expandedModule = moduleName
	else
		self._selectedOperation = nil
		self._expandedModule = nil
	end
	self:UpdateData()
	self.__super:SetSelection(self._selectedOperation, true)
	if self._onOperationSelectedHandler then
		self:_onOperationSelectedHandler(moduleName, operationName)
	end
	self:_ForceLastDataUpdate()
	self:UpdateData(true)
	return self
end

function OperationTree.SetSelection(self, data)
	self:SetSelectedOperation(self:_SplitOperationKey(data))
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function OperationTree._GetTableRow(self, isHeader)
	local row = self.__super:_GetTableRow(isHeader)
	if not isHeader then
		ScriptWrapper.Set(row._frame, "OnDoubleClick", private.RowOnDoubleClick, row)
	end
	return row
end

function OperationTree._IsDataHidden(self, data)
	local moduleName, operationName = self:_SplitOperationKey(data)
	if operationName and not strmatch(strlower(operationName), self._operationNameFilter) then
		return true
	elseif operationName and moduleName ~= self._expandedModule then
		return true
	end
	return false
end

function OperationTree._SplitOperationKey(self, data)
	local moduleName, operationName = strmatch(data, "([^"..DATA_SEP.."]+)"..DATA_SEP.."?(.*)")
	operationName = operationName ~= "" and operationName or nil
	return moduleName, operationName
end

function OperationTree._UpdateData(self)
	wipe(self._data)
	for _, moduleName in TSM.Operations.ModuleIterator() do
		if not self:_IsDataHidden(moduleName) then
			tinsert(self._data, moduleName)
		end
		for _, operationName in TSM.Operations.OperationIterator(moduleName) do
			local data = moduleName..DATA_SEP..operationName
			if not self:_IsDataHidden(data) then
				tinsert(self._data, data)
			end
		end
	end
end

function OperationTree._HandleRowClick(self)
	self:Draw()
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.GetText(self, data)
	local moduleName, operationName = self:_SplitOperationKey(data)
	local color = Theme.GetColor(operationName and "TEXT" or "INDICATOR")
	return color:ColorText(operationName or moduleName.." "..L["Operations"])
end

function private.GetExpanderState(self, data)
	local moduleName, operationName = self:_SplitOperationKey(data)
	return not operationName, self._expandedModule == moduleName, operationName and 1 or 0
end

function private.GetActionIcon(self, data, iconIndex, isMouseOver)
	local _, operationName = self:_SplitOperationKey(data)
	if iconIndex == 1 then
		if operationName and data == self._selectedOperation then
			local texturePack = "iconPack.14x14/Duplicate"
			return true, isMouseOver and TextureAtlas.GetColoredKey(texturePack, "INDICATOR") or texturePack
		elseif operationName then
			return false, nil
		else
			local texturePack = "iconPack.14x14/Add/Circle"
			return true, isMouseOver and TextureAtlas.GetColoredKey(texturePack, "INDICATOR") or texturePack
		end
	elseif iconIndex == 2 then
		if operationName and data == self._selectedOperation then
			local texturePack = "iconPack.14x14/Delete"
			return true, isMouseOver and TextureAtlas.GetColoredKey(texturePack, "INDICATOR") or texturePack
		else
			return false, nil
		end
	else
		error("Invalid index: "..tostring(iconIndex))
	end
end

function private.OnActionIconClick(self, data, iconIndex)
	local moduleName, operationName = self:_SplitOperationKey(data)
	if iconIndex == 1 then
		if operationName then
			-- duplicate
			local num = 1
			while TSM.Operations.Exists(moduleName, operationName.." "..num) do
				num = num + 1
			end
			local newOperationName = operationName.." "..num
			self:_onOperationAddedHandler(moduleName, newOperationName, operationName)
			self:UpdateData()
			self:SetSelectedOperation(moduleName, newOperationName)
		else
			-- add
			operationName = "New Operation"
			local num = 1
			while TSM.Operations.Exists(moduleName, operationName.." "..num) do
				num = num + 1
			end
			operationName = operationName .. " " .. num
			self._expandedModule = moduleName
			self:_onOperationAddedHandler(moduleName, operationName)
			self:UpdateData()
			self:SetSelectedOperation(moduleName, operationName)
		end
		self:Draw()
	elseif iconIndex == 2 then
		assert(operationName)
		-- delete
		self:_onOperationDeletedHandler(moduleName, operationName)
		self:UpdateData(true)
	else
		error("Invalid index: "..tostring(iconIndex))
	end
end

function private.RowOnDoubleClick(row, mouseButton)
	if mouseButton ~= "LeftButton" then
		return
	end
	local self = row._scrollingTable
	local data = row:GetData()
	local moduleName, operationName = self:_SplitOperationKey(data)
	if operationName then
		return
	end
	if moduleName == self._selectedOperation then
		self:SetSelectedOperation()
	else
		self:SetSelectedOperation(moduleName, operationName)
	end
end
