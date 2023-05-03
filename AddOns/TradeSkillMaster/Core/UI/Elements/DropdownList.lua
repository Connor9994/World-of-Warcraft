-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- DropdownList UI Element Class.
-- A dropdown list provides selectable options in a modal shown by a dropdown element.
-- @classmod DropdownList

local TSM = select(2, ...) ---@type TSM
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local UIElements = TSM.Include("UI.UIElements")
local DropdownList = UIElements.Define("DropdownList", "List")
local private = {}
local ROW_HEIGHT = 20
local CHECK_TEXTURE = "iconPack.12x12/Checkmark/Default"



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function DropdownList.__init(self)
	self.__super:__init()
	self._items = {}
	self._selectedItems = {}
	self._multiselect = nil
	self._onSelectionChangedHandler = nil
end

function DropdownList.Acquire(self)
	self.__super:Acquire(ROW_HEIGHT)
	self:SetBackgroundColor("ACTIVE_BG")
end

function DropdownList.Release(self)
	wipe(self._items)
	wipe(self._selectedItems)
	self._multiselect = nil
	self._onSelectionChangedHandler = nil
	self.__super:Release()
end

function DropdownList.SetMultiselect(self, multiselect)
	assert(multiselect ~= nil and self._multiselect == nil)
	self._multiselect = multiselect
	return self
end

function DropdownList.SetItems(self, items, selection)
	wipe(self._items)
	for _, item in ipairs(items) do
		tinsert(self._items, item)
	end
	if self._multiselect then
		self:_SetSelectionHelper(selection)
	else
		assert(self._multiselect == false and selection == nil)
	end
	self:_SetNumRows(#self._items)
	return self
end

function DropdownList.ItemIterator(self)
	return private.ItemIterator, self, 0
end

function DropdownList.SelectAll(self)
	assert(self._multiselect)
	self:_SetSelectionHelper(true)
	if self._onSelectionChangedHandler then
		self:_onSelectionChangedHandler(self._selectedItems)
	end
end

function DropdownList.DeselectAll(self)
	assert(self._multiselect)
	self:_SetSelectionHelper(false)
	if self._onSelectionChangedHandler then
		self:_onSelectionChangedHandler(self._selectedItems)
	end
end

function DropdownList.SetScript(self, script, handler)
	if script == "OnSelectionChanged" then
		self._onSelectionChangedHandler = handler
	else
		error("Invalid DropdownList script: "..tostring(script))
	end
	return self
end



-- ============================================================================
-- Protected/Private Class Methods
-- ============================================================================

function DropdownList.__protected._HandleRowAcquired(self, row)
	assert(self._multiselect ~= nil)

	-- Add the text
	local text = row:AddText("text")
	text:SetFont(Theme.GetFont("BODY_BODY3"):GetWowFont())
	text:SetJustifyH("LEFT")
	text:SetHeight(ROW_HEIGHT)
	text:SetPoint("RIGHT", -Theme.GetColSpacing(), 0)

	if self._multiselect then
		-- Add the check texture
		local check = row:AddTexture("check")
		check:SetDrawLayer("ARTWORK", 1)
		TextureAtlas.SetTextureAndSize(check, CHECK_TEXTURE)
		check:SetPoint("LEFT", Theme.GetColSpacing() / 2, 0)
		text:SetPoint("LEFT", check, "RIGHT", Theme.GetColSpacing() / 2, 0)
	else
		text:SetPoint("LEFT", Theme.GetColSpacing() / 2, 0)
	end
end

function DropdownList.__protected._HandleRowDraw(self, row)
	local item = self._items[row:GetDataIndex()]
	if self._multiselect then
		self:_DrawRowSelectedState(row, self._selectedItems[item])
	end
	local text = row:GetText("text")
	text:SetText(item)
	-- The text color should have maximum contrast with the background color, so set it to white/black based on the background color
	if self:_IsBackgroundColorLight() then
		-- The background is light, so set the text to black
		text:SetTextColor(0, 0, 0, 1)
	else
		-- The background is dark, so set the text to white
		text:SetTextColor(1, 1, 1, 1)
	end
end

function DropdownList.__private._DrawRowSelectedState(self, row, selected)
	local check = row:GetTexture("check")
	if selected then
		check:Show()
	else
		check:Hide()
	end
end

function DropdownList.__protected._HandleRowClick(self, row, mouseButton)
	local item = self._items[row:GetDataIndex()]
	if self._multiselect then
		self._selectedItems[item] = not self._selectedItems[item] or nil
		self:_DrawRowSelectedState(row, self._selectedItems[item])
	end
	if self._onSelectionChangedHandler then
		self:_onSelectionChangedHandler(self._multiselect and self._selectedItems or item)
	end
end

function DropdownList.__private._SetSelectionHelper(self, selection)
	assert(self._multiselect)
	wipe(self._selectedItems)
	for i, item in ipairs(self._items) do
		if selection == true then
			-- select all
			self._selectedItems[item] = true
		elseif selection == false then
			-- deselect all - do nothing
		else
			-- selection table
			self._selectedItems[item] = selection[item] and true or nil
		end
		local row = self:_GetRow(i)
		if row then
			self:_DrawRowSelectedState(row, self._selectedItems[item])
		end
	end
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.ItemIterator(self, index)
	index = index + 1
	local item = self._items[index]
	if not item then
		return
	end
	return index, item, self._selectedItems[item]
end
