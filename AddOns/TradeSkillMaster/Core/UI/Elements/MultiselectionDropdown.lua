-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- Multiselection Dropdown UI Element Class.
-- A dropdown element allows the user to select from a dialog list. It is a subclass of the @{BaseDropdown} class.
-- @classmod MultiselectionDropdown

local TSM = select(2, ...) ---@type TSM
local L = TSM.Include("Locale").GetTable()
local Table = TSM.Include("Util.Table")
local Theme = TSM.Include("Util.Theme")
local UIElements = TSM.Include("UI.UIElements")
local MultiselectionDropdown = UIElements.Define("MultiselectionDropdown", "BaseDropdown")
local private = {}



-- ============================================================================
-- Meta Class Methods
-- ============================================================================

function MultiselectionDropdown.__init(self)
	self.__super:__init()
	self._itemIsSelected = {}
	self._settingTableDirect = nil
	self._text = self:_GetBaseFrame():CreateFontString()
	self._text:SetFont(Theme.GetFont("BODY_BODY3"):GetWowFont())
	self._text:Hide()
	self._noneSelectionText = L["None Selected"]
	self._partialSelectionText = L["%d Selected"]
	self._allSelectionText = L["All Selected"]
end

function MultiselectionDropdown.Release(self)
	wipe(self._itemIsSelected)
	self._settingTableDirect = nil
	self._noneSelectionText = L["None Selected"]
	self._partialSelectionText = L["%d Selected"]
	self._allSelectionText = L["All Selected"]
	self.__super:Release()
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

--- Set whether the item is selected.
-- @tparam MultiselectionDropdown self The dropdown object
-- @tparam string item The item
-- @tparam boolean selected Whether or not the item should be selected
-- @treturn MultiselectionDropdown The dropdown object
function MultiselectionDropdown.SetItemSelected(self, item, selected)
	self:_SetItemSelectedHelper(item, selected)
	if self._onSelectionChangedHandler then
		self:_onSelectionChangedHandler()
	end
	return self
end

--- Set whether the item is selected by key.
-- @tparam MultiselectionDropdown self The dropdown object
-- @tparam string itemKey The key for the item
-- @tparam boolean selected Whether or not the item should be selected
-- @treturn MultiselectionDropdown The dropdown object
function MultiselectionDropdown.SetItemSelectedByKey(self, itemKey, selected)
	self:SetItemSelected(Table.GetDistinctKey(self._itemKeyLookup, itemKey), selected)
	return self
end

--- Set the selected items.
-- @tparam MultiselectionDropdown self The dropdown object
-- @tparam table selected A table where the keys are the items to be selected
-- @treturn MultiselectionDropdown The dropdown object
function MultiselectionDropdown.SetSelectedItems(self, selected)
	wipe(self._itemIsSelected)
	if self._settingTableDirect then
		wipe(self._settingTableDirect)
	end
	for _, item in ipairs(self._items) do
		self:_SetItemSelectedHelper(item, selected[item])
	end
	if self._onSelectionChangedHandler then
		self:_onSelectionChangedHandler()
	end
	return self
end

--- Set the selected items.
-- @tparam MultiselectionDropdown self The dropdown object
-- @tparam table selected A table where the keys are the items to be selected
-- @treturn MultiselectionDropdown The dropdown object
function MultiselectionDropdown.SetSelectedItemKeys(self, selected)
	wipe(self._itemIsSelected)
	if self._settingTableDirect then
		wipe(self._settingTableDirect)
	end
	for _, item in ipairs(self._items) do
		self:_SetItemSelectedHelper(item, selected[self._itemKeyLookup[item]])
	end
	if self._onSelectionChangedHandler then
		self:_onSelectionChangedHandler()
	end
	return self
end

--- Set the unselected items.
-- @tparam MultiselectionDropdown self The dropdown object
-- @tparam table unselected A table where the keys are the items which aren't selected
-- @treturn MultiselectionDropdown The dropdown object
function MultiselectionDropdown.SetUnselectedItemKeys(self, unselected)
	wipe(self._itemIsSelected)
	if self._settingTableDirect then
		wipe(self._settingTableDirect)
	end
	for _, item in ipairs(self._items) do
		self:_SetItemSelectedHelper(item, not unselected[self._itemKeyLookup[item]])
	end
	if self._onSelectionChangedHandler then
		self:_onSelectionChangedHandler()
	end
	return self
end

--- Get the currently selected item.
-- @tparam MultiselectionDropdown self The dropdown object
-- @tparam string item The item
-- @treturn ?string The selected item
function MultiselectionDropdown.ItemIsSelected(self, item)
	return self._itemIsSelected[item]
end

--- Get the currently selected item.
-- @tparam MultiselectionDropdown self The dropdown object
-- @tparam string|number itemKey The key for the item
-- @treturn boolean Whether or not the item is selected
function MultiselectionDropdown.ItemIsSelectedByKey(self, itemKey)
	return self:ItemIsSelected(Table.GetDistinctKey(self._itemKeyLookup, itemKey))
end

--- Sets the setting info.
-- This method is used to have the selected keys of the dropdown automatically correspond with the value of a field in a
-- table. This is useful for dropdowns which are tied directly to settings.
-- @tparam MultiselectionDropdown self The dropdown object
-- @tparam table tbl The table which the field to set belongs to
-- @tparam string key The key into the table to be set based on the dropdown state
-- @treturn MultiselectionDropdown The dropdown object
function MultiselectionDropdown.SetSettingInfo(self, tbl, key)
	local directTbl = tbl[key]
	assert(type(directTbl) == "table")
	-- this function wipes our settingTable, so set the selected items first
	self:SetSelectedItemKeys(directTbl)
	self._settingTableDirect = directTbl
	return self
end

--- Populate the specified table with a list of selected items
-- @tparam MultiselectionDropdown self The dropdown object
-- @tparam table resultTbl The table to populate
function MultiselectionDropdown.GetSelectedItems(self, resultTbl)
	for _, item in ipairs(self._items) do
		if self:ItemIsSelected(item) then
			tinsert(resultTbl, item)
		end
	end
end

--- Sets the selection text which is shown to summarize the current value.
-- @tparam BaseDropdown self The dropdown object
-- @tparam string noneText The selection text string when none are selected
-- @tparam string partialText The selection text string for a partial selection
-- @tparam string allText The selection text string when all are selected
-- @treturn BaseDropdown The dropdown object
function MultiselectionDropdown.SetSelectionText(self, noneText, partialText, allText)
	assert(type(partialText) == "string" and type(partialText) == "string" and type(allText) == "string")
	self._noneSelectionText = noneText
	self._partialSelectionText = partialText
	self._allSelectionText = allText
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function MultiselectionDropdown._GetDialogSize(self)
	local width, height = self.__super:_GetDialogSize()
	width = max(width + 12, 200) -- check icon, and big enough for select all / deselect all buttons
	height = height + 26 -- header + line
	return width, height
end

function MultiselectionDropdown._GetNumSelected(self)
	local num = 0
	for _, item in ipairs(self._items) do
		if self:ItemIsSelected(item) then
			num = num + 1
		end
	end
	return num
end

function MultiselectionDropdown._AddDialogChildren(self, frame)
	local numSelected = self:_GetNumSelected()
	frame:AddChild(UIElements.New("Frame", "header")
		:SetLayout("HORIZONTAL")
		:SetPadding(8, 8, 2, 2)
		:SetHeight(24)
		:AddChild(UIElements.New("Button", "selectAll")
			:SetWidth("AUTO")
			:SetMargin(0, 8, 0, 0)
			:SetFont("BODY_BODY2_BOLD")
			:SetTextColor(numSelected == #self._items and "ACTIVE_BG_ALT" or "TEXT")
			:SetDisabled(numSelected == #self._items)
			:SetText(L["Select All"])
			:SetScript("OnClick", private.SelectAllOnClick)
		)
		:AddChild(UIElements.New("Button", "deselectAll")
			:SetWidth("AUTO")
			:SetMargin(0, 8, 0, 0)
			:SetFont("BODY_BODY2_BOLD")
			:SetTextColor(numSelected == 0 and "ACTIVE_BG_ALT" or "TEXT")
			:SetDisabled(numSelected == 0)
			:SetText(L["Deselect All"])
			:SetScript("OnClick", private.DeselectAllOnClick)
		)
		:AddChild(UIElements.New("Spacer", "spacer"))
	)
	frame:AddChild(UIElements.New("HorizontalLine", "line")
		:SetColor("ACTIVE_BG_ALT")
	)
	frame:AddChild(UIElements.New("DropdownList", "list")
		:SetMultiselect(true)
		:SetItems(self._items, self._itemIsSelected)
	)
end

function MultiselectionDropdown._GetCurrentSelectionString(self)
	local numSelected = self:_GetNumSelected()
	local result = nil
	if numSelected == 0 then
		result = self._hintText ~= "" and self._hintText or self._noneSelectionText
	elseif numSelected == #self._items then
		result = self._allSelectionText.." ("..numSelected..")"
	else
		result = format(self._partialSelectionText, numSelected)
	end
	return result
end

function MultiselectionDropdown._OnListSelectionChanged(self, dropdownList, selection)
	self:SetSelectedItems(selection)
	local numSelected = self:_GetNumSelected()
	dropdownList:GetElement("__parent.header.selectAll")
		:SetTextColor(numSelected == #self._items and "ACTIVE_BG_ALT" or "TEXT")
		:SetDisabled(numSelected == #self._items)
		:Draw()
	dropdownList:GetElement("__parent.header.deselectAll")
		:SetTextColor(numSelected == 0 and "ACTIVE_BG_ALT" or "TEXT")
		:SetDisabled(numSelected == 0)
		:Draw()
end

function MultiselectionDropdown._SetItemSelectedHelper(self, item, selected)
	self._itemIsSelected[item] = selected and true or nil
	if self._settingTableDirect then
		self._settingTableDirect[self._itemKeyLookup[item]] = self._itemIsSelected[item]
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.SelectAllOnClick(button)
	button:GetElement("__parent.__parent.list"):SelectAll()
end

function private.DeselectAllOnClick(button)
	button:GetElement("__parent.__parent.list"):DeselectAll()
end
