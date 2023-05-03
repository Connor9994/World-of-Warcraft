-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- Base Dropdown UI Element Class.
-- The base dropdown class is an abstract class which provides shared functionality between the @{SelectionDropdown} and
-- @{MultiselectionDropdown} classes. It is a subclass of the @{Text} class.
-- @classmod BaseDropdown

local TSM = select(2, ...) ---@type TSM
local Rectangle = TSM.Include("UI.Rectangle")
local Color = TSM.Include("Util.Color")
local Theme = TSM.Include("Util.Theme")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local UIElements = TSM.Include("UI.UIElements")
local BaseDropdown = UIElements.Define("BaseDropdown", "Text", "ABSTRACT")
local private = {}
local EXPANDER_SIZE = 18
local TEXT_PADDING = 8
local EXPANDER_PADDING = 4
local CORNER_RADIUS = 4



-- ============================================================================
-- Meta Class Methods
-- ============================================================================

function BaseDropdown.__init(self)
	local frame = UIElements.CreateFrame(self, "Button", nil, nil, nil)

	self.__super:__init(frame)

	self._backgroundTexture = Rectangle.New(frame)
	self._backgroundTexture:SetCornerRadius(CORNER_RADIUS)

	ScriptWrapper.Set(frame, "OnClick", private.FrameOnClick, self)
	frame.arrow = frame:CreateTexture(nil, "ARTWORK")

	self._widthText = UIElements.CreateFontString(self, frame)
	self._widthText:Hide()

	self._state.font = "BODY_BODY2"
	self._hintText = ""
	self._items = {}
	self._itemKeyLookup = {}
	self._disabled = false
	self._isOpen = false
	self._onSelectionChangedHandler = nil
end

function BaseDropdown.Release(self)
	self._hintText = ""
	wipe(self._items)
	wipe(self._itemKeyLookup)
	self._disabled = false
	self._isOpen = false
	self._onSelectionChangedHandler = nil
	self:_GetBaseFrame():Enable()
	self.__super:Release()
	self._state.font = "BODY_BODY2"
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

--- Sets the hint text which is shown when there's no selection.
-- @tparam BaseDropdown self The dropdown object
-- @tparam string text The hint text string
-- @treturn BaseDropdown The dropdown object
function BaseDropdown.SetHintText(self, text)
	self._hintText = text
	return self
end

--- Add an item to be shown in the dropdown dialog list.
-- @tparam BaseDropdown self The dropdown object
-- @tparam string item The item to add to the list (localized string)
-- @tparam[opt] string|number itemKey The internal representation of the item (if not specified will be the index)
-- @treturn BaseDropdown The dropdown object
function BaseDropdown.AddItem(self, item, itemKey)
	tinsert(self._items, item)
	self._itemKeyLookup[item] = itemKey or #self._items
	return self
end

--- Set the items to show in the dropdown dialog list.
-- @tparam BaseDropdown self The dropdown object
-- @tparam table items A list of items to be shown in the dropdown list
-- @tparam[opt] table itemKeys A list of keys which go with the item at the corresponding index in the items list
-- @treturn BaseDropdown The dropdown object
function BaseDropdown.SetItems(self, items, itemKeys)
	wipe(self._items)
	wipe(self._itemKeyLookup)
	assert(not itemKeys or #itemKeys == #items)
	for i, item in ipairs(items) do
		self:AddItem(item, itemKeys and itemKeys[i])
	end
	return self
end

--- Clears all set items.
function BaseDropdown.ClearItems(self)
	wipe(self._items)
	wipe(self._itemKeyLookup)
	return self
end

--- Set whether or not the dropdown is disabled.
-- @tparam BaseDropdown self The dropdown object
-- @tparam boolean disabled Whether or not to disable the dropdown
-- @treturn BaseDropdown The dropdown object
function BaseDropdown.SetDisabled(self, disabled)
	self._disabled = disabled
	if disabled then
		self:_GetBaseFrame():Disable()
	else
		self:_GetBaseFrame():Enable()
	end
	return self
end

--- Registers a script handler.
-- @tparam BaseDropdown self The dropdown object
-- @tparam string script The script to register for (supported scripts: `OnSelectionChanged`)
-- @tparam function handler The script handler which will be called with the dropdown object followed by any arguments
-- to the script
-- @treturn BaseDropdown The dropdown object
function BaseDropdown.SetScript(self, script, handler)
	if script == "OnSelectionChanged" then
		self._onSelectionChangedHandler = handler
	else
		error("Invalid BaseDropdown script: "..tostring(script))
	end
	return self
end

--- Sets whether or not the dropdown is open.
-- @tparam BaseDropdown self The dropdown object
-- @tparam boolean open Whether or not the dropdown is open
-- @treturn BaseDropdown The dropdown object
function BaseDropdown.SetOpen(self, open)
	assert(type(open) == "boolean")
	if open == self._isOpen then
		return self
	end
	self._isOpen = open
	if open then
		local width, height = self:_GetDialogSize()
		local dialogFrame = UIElements.New("Frame", "dropdown")
			:SetLayout("VERTICAL")
			:SetContext(self)
			:AddAnchor("TOPLEFT", self:_GetBaseFrame(), "BOTTOMLEFT", 0, -4)
			:SetPadding(0, 0, 4, 4)
			:SetBackgroundColor("ACTIVE_BG", true)
			:SetSize(max(width, self:_GetDimension("WIDTH")), height)
			:SetScript("OnHide", private.DialogOnHide)
		self:_AddDialogChildren(dialogFrame)
		dialogFrame:GetElement("list"):SetScript("OnSelectionChanged", private.ListOnSelectionChanged)
		self:GetBaseElement():ShowDialogFrame(dialogFrame)
	else
		self:GetBaseElement():HideDialog()
	end
	return self
end

function BaseDropdown.SetText(self)
	error("BaseDropdown does not support this method")
end

function BaseDropdown.SetTextColor(self, color)
	error("BaseDropdown does not support this method")
end

function BaseDropdown.Draw(self)
	self.__super:SetText(self:_GetCurrentSelectionString())
	self.__super:Draw()
	local frame = self:_GetBaseFrame()
	TextureAtlas.SetTexture(frame.arrow, "iconPack.18x18/Chevron/Down")
	local frameHeight = frame:GetHeight()
	local paddingX = EXPANDER_PADDING
	local paddingY = (frameHeight - EXPANDER_SIZE) / 2
	frame.text:ClearAllPoints()
	frame.text:SetPoint("TOPLEFT", TEXT_PADDING, 0)
	frame.text:SetPoint("BOTTOMRIGHT", -EXPANDER_SIZE, 0)
	frame.arrow:ClearAllPoints()
	frame.arrow:SetPoint("BOTTOMLEFT", frame.text, "BOTTOMRIGHT", -paddingX, paddingY)
	frame.arrow:SetPoint("TOPRIGHT", -paddingX, -paddingY)

	-- set textures and text color depending on the state
	local backgroundColor = Theme.GetColor(self._disabled and "PRIMARY_BG_ALT" or "ACTIVE_BG")
	local textColor = nil
	-- the text color should have maximum contrast with the dropdown color, so set it to white/black based on the dropdown color
	if backgroundColor:IsLight() then
		-- the dropdown is light, so set the text to black
		textColor = Color.GetFullBlack():GetTint(self._disabled and "-DISABLED" or 0)
	else
		-- the dropdown is dark, so set the text to white
		textColor = Color.GetFullWhite():GetTint(self._disabled and "+DISABLED" or 0)
	end
	frame.text:SetTextColor(textColor:GetFractionalRGBA())
	self._backgroundTexture:SetColor(Theme.GetColor(self._disabled and "PRIMARY_BG_ALT" or "ACTIVE_BG"))
	frame.arrow:SetVertexColor(textColor:GetFractionalRGBA())
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function BaseDropdown._GetDialogSize(self)
	local maxStringWidth = 100 -- no smaller than 100
	self._widthText:Show()
	self._widthText:SetFont(Theme.GetFont(self._state.font):GetWowFont())
	for _, item in ipairs(self._items) do
		self._widthText:SetText(item)
		maxStringWidth = max(maxStringWidth, self._widthText:GetUnboundedStringWidth())
	end
	self._widthText:Hide()
	return maxStringWidth + Theme.GetColSpacing() * 2, 8 + max(16, min(8, #self._items) * 20)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.FrameOnClick(self)
	self:SetOpen(true)
end

function private.ListOnSelectionChanged(dropdownList, selection)
	local self = dropdownList:GetParentElement():GetContext()
	self:_OnListSelectionChanged(dropdownList, selection)
	self:Draw()
end

function private.DialogOnHide(frame)
	local self = frame:GetContext()
	self._isOpen = false
end
