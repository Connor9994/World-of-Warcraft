-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- LargeApplicationFrame UI Element Class.
-- This is the base frame of the large TSM windows which have tabs along the top (i.e. MainUI, AuctionUI, CraftingUI).
-- It is a subclass of the @{ApplicationFrame} class.
-- @classmod LargeApplicationFrame

local TSM = select(2, ...) ---@type TSM
local UIElements = TSM.Include("UI.UIElements")
local LargeApplicationFrame = UIElements.Define("LargeApplicationFrame", "ApplicationFrame")
local private = {}
local NAV_BAR_SPACING = 16
local NAV_BAR_HEIGHT = 24
local NAV_BAR_RELATIVE_LEVEL = 21
local NAV_BAR_TOP_OFFSET = -8



-- ============================================================================
-- Meta Class Methods
-- ============================================================================

function LargeApplicationFrame.__init(self)
	self.__super:__init()

	self._buttons = {}
	self._selectedButton = nil
	self._buttonIndex = {}
end

function LargeApplicationFrame.Acquire(self)
	self:SetContentFrame(UIElements.New("Frame", "content")
		:SetLayout("VERTICAL")
		:SetBackgroundColor("FRAME_BG")
	)
	self.__super:Acquire()
end

function LargeApplicationFrame.Release(self)
	wipe(self._buttons)
	wipe(self._buttonIndex)
	self._selectedButton = nil
	self.__super:Release()
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

--- Sets the context table.
-- This table can be used to preserve position, size, and current page information across lifecycles of the frame and
-- even WoW sessions if it's within the settings DB.
-- @see ApplicationFrame.SetContextTable
-- @tparam LargeApplicationFrame self The large application frame object
-- @tparam table tbl The context table
-- @tparam table defaultTbl Default values (see @{ApplicationFrame.SetContextTable} for fields)
-- @treturn LargeApplicationFrame The large application frame object
function LargeApplicationFrame.SetContextTable(self, tbl, defaultTbl)
	assert(defaultTbl.page)
	tbl.page = tbl.page or defaultTbl.page
	self.__super:SetContextTable(tbl, defaultTbl)
	return self
end

--- Adds a top-level navigation button.
-- @tparam LargeApplicationFrame self The large application frame object
-- @tparam string text The button text
-- @tparam function drawCallback The function called when the button is clicked to get the corresponding content
-- @treturn LargeApplicationFrame The large application frame object
function LargeApplicationFrame.AddNavButton(self, text, drawCallback)
	local button = UIElements.New("AlphaAnimatedFrame", "NavBar_"..text)
		:SetRange(1, 0.3)
		:SetDuration(1)
		:SetLayout("HORIZONTAL")
		:SetRelativeLevel(NAV_BAR_RELATIVE_LEVEL)
		:SetContext(drawCallback)
		:AddChild(UIElements.New("Button", "button")
			:SetText(text)
			:SetScript("OnEnter", private.OnNavBarButtonEnter)
			:SetScript("OnLeave", private.OnNavBarButtonLeave)
			:SetScript("OnClick", private.OnNavBarButtonClicked)
		)
	self:AddChildNoLayout(button)
	tinsert(self._buttons, button)
	self._buttonIndex[text] = #self._buttons
	if self._buttonIndex[text] == self._contextTable.page then
		self:SetSelectedNavButton(text)
	end
	return self
end

--- Set the selected nav button.
-- @tparam LargeApplicationFrame self The large application frame object
-- @tparam string buttonText The button text
-- @tparam boolean redraw Whether or not to redraw the frame
function LargeApplicationFrame.SetSelectedNavButton(self, buttonText, redraw)
	if buttonText == self._selectedButton then
		return
	end
	local index = self._buttonIndex[buttonText]
	self._contextTable.page = index
	self._selectedButton = buttonText
	self._contentFrame:ReleaseAllChildren()
	self._contentFrame:AddChild(self._buttons[index]:GetContext()(self))
	if redraw then
		self:Draw()
	end
	return self
end

--- Get the selected nav button.
-- @tparam LargeApplicationFrame self The large application frame object
-- @treturn string The text of the selected button
function LargeApplicationFrame.GetSelectedNavButton(self)
	return self._selectedButton
end

--- Sets which nav button is pulsing.
-- @tparam LargeApplicationFrame self The large application frame object
-- @tparam ?string buttonText The button text or nil if no nav button should be pulsing
function LargeApplicationFrame.SetPulsingNavButton(self, buttonText)
	local index = buttonText and self._buttonIndex[buttonText]
	for i, button in ipairs(self._buttons) do
		if not index or i ~= index then
			button:SetPlaying(false)
		elseif not button:IsPlaying() then
			button:SetPlaying(true)
		end
	end
end

function LargeApplicationFrame.Draw(self)
	self.__super:Draw()
	for i, buttonFrame in ipairs(self._buttons) do
		local button = buttonFrame:GetElement("button")
		button:SetFont("BODY_BODY1_BOLD")
		button:SetTextColor(i == self._contextTable.page and "INDICATOR" or "TEXT_ALT")
		button:Draw()
		buttonFrame:SetSize(button:GetStringWidth(), NAV_BAR_HEIGHT)
	end

	local offsetX = 104
	for _, buttonFrame in ipairs(self._buttons) do
		local buttonWidth = buttonFrame:GetElement("button"):GetStringWidth()
		buttonFrame:SetSize(buttonWidth, NAV_BAR_HEIGHT)
		buttonFrame:WipeAnchors()
		buttonFrame:AddAnchor("TOPLEFT", offsetX, NAV_BAR_TOP_OFFSET)
		offsetX = offsetX + buttonWidth + NAV_BAR_SPACING
		-- draw the buttons again now that we know their dimensions
		buttonFrame:Draw()
	end
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function LargeApplicationFrame._SetResizing(self, resizing)
	for _, button in ipairs(self._buttons) do
		if resizing then
			button:Hide()
		else
			button:Show()
		end
	end
	self.__super:_SetResizing(resizing)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.OnNavBarButtonEnter(button)
	if button:GetBaseElement():GetSelectedNavButton() == button:GetText() then
		return
	end
	button:SetTextColor("TEXT")
		:Draw()
end

function private.OnNavBarButtonLeave(button)
	if button:GetBaseElement():GetSelectedNavButton() == button:GetText() then
		return
	end
	button:SetTextColor("TEXT_ALT")
		:Draw()
end

function private.OnNavBarButtonClicked(button)
	local self = button:GetParentElement():GetParentElement()
	self:SetSelectedNavButton(button:GetText(), true)
end
