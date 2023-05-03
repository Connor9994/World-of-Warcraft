-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Environment = TSM.Include("Environment")
local Theme = TSM.Include("Util.Theme")
local UIElements = TSM.Include("UI.UIElements")
local OverlayApplicationFrame = TSM.Include("LibTSMClass").DefineClass("OverlayApplicationFrame", TSM.UI.Frame)
UIElements.Register(OverlayApplicationFrame)
TSM.UI.OverlayApplicationFrame = OverlayApplicationFrame
local private = {}
local TITLE_HEIGHT = 40
local CONTENT_PADDING_BOTTOM = 16



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function OverlayApplicationFrame.__init(self)
	self.__super:__init()
	self._contentFrame = nil
	self._contextTable = nil
	self._defaultContextTable = nil
	Theme.RegisterChangeCallback(function()
		if self:IsVisible() then
			self:Draw()
		end
	end)
end

function OverlayApplicationFrame.Acquire(self)
	local frame = self:_GetBaseFrame()
	frame:EnableMouse(true)
	frame:SetMovable(true)
	frame:RegisterForDrag("LeftButton")
	self:AddChildNoLayout(UIElements.New("Button", "closeBtn")
		:AddAnchor("TOPRIGHT", -8, -11)
		:SetBackgroundAndSize("iconPack.18x18/Close/Circle")
		:SetScript("OnClick", private.CloseButtonOnClick)
	)
	self:AddChildNoLayout(UIElements.New("Button", "minimizeBtn")
		:AddAnchor("TOPRIGHT", -26, -11)
		:SetBackgroundAndSize("iconPack.18x18/Subtract/Circle")
		:SetScript("OnClick", private.MinimizeBtnOnClick)
	)
	self:AddChildNoLayout(UIElements.New("Text", "title")
		:SetHeight(24)
		:SetFont("BODY_BODY1_BOLD")
		:AddAnchor("TOPLEFT", 8, -8)
		:AddAnchor("TOPRIGHT", -52, -8)
	)
	self:SetScript("OnDragStart", private.FrameOnDragStart)
	self:SetScript("OnDragStop", private.FrameOnDragStop)

	self.__super:Acquire()
end

function OverlayApplicationFrame.Release(self)
	self._contentFrame = nil
	self._contextTable = nil
	self._defaultContextTable = nil
	if Environment.HasFeature(Environment.FEATURES.REGION_SET_RESIZE_BOUNDS) then
		self:_GetBaseFrame():SetResizeBounds(0, 0)
	else
		self:_GetBaseFrame():SetMinResize(0, 0)
	end
	self.__super:Release()
end

--- Sets the title text.
-- @tparam OverlayApplicationFrame self The overlay application frame object
-- @tparam string title The title text
-- @treturn OverlayApplicationFrame The overlay application frame object
function OverlayApplicationFrame.SetTitle(self, title)
	self:GetElement("title"):SetText(title)
	return self
end

--- Sets the content frame.
-- @tparam OverlayApplicationFrame self The overlay application frame object
-- @tparam Element frame The content frame
-- @treturn OverlayApplicationFrame The overlay application frame object
function OverlayApplicationFrame.SetContentFrame(self, frame)
	frame:WipeAnchors()
	frame:AddAnchor("TOPLEFT", 0, -TITLE_HEIGHT)
	frame:AddAnchor("BOTTOMRIGHT", 0, CONTENT_PADDING_BOTTOM)
	self._contentFrame = frame
	self:AddChildNoLayout(frame)
	return self
end

--- Sets the context table.
-- This table can be used to preserve position information across lifecycles of the frame and even WoW sessions if it's
-- within the settings DB.
-- @tparam OverlayApplicationFrame self The overlay application frame object
-- @tparam table tbl The context table
-- @tparam table defaultTbl The default values (required fields: `minimized`, `topRightX`, `topRightY`)
-- @treturn OverlayApplicationFrame The overlay application frame object
function OverlayApplicationFrame.SetContextTable(self, tbl, defaultTbl)
	assert(defaultTbl.minimized ~= nil and defaultTbl.topRightX and defaultTbl.topRightY)
	if tbl.minimized == nil then
		tbl.minimized = defaultTbl.minimized
	end
	tbl.topRightX = tbl.topRightX or defaultTbl.topRightX
	tbl.topRightY = tbl.topRightY or defaultTbl.topRightY
	self._contextTable = tbl
	self._defaultContextTable = defaultTbl
	return self
end

--- Sets the context table from a settings object.
-- @tparam OverlayApplicationFrame self The overlay application frame object
-- @tparam Settings settings The settings object
-- @tparam string key The setting key
-- @treturn OverlayApplicationFrame The overlay application frame object
function OverlayApplicationFrame.SetSettingsContext(self, settings, key)
	return self:SetContextTable(settings[key], settings:GetDefaultReadOnly(key))
end

function OverlayApplicationFrame.Draw(self)
	if self._contextTable.minimized then
		self:GetElement("minimizeBtn"):SetBackgroundAndSize("iconPack.18x18/Add/Circle")
		self:GetElement("content"):Hide()
		self:SetHeight(TITLE_HEIGHT)
	else
		self:GetElement("minimizeBtn"):SetBackgroundAndSize("iconPack.18x18/Subtract/Circle")
		self:GetElement("content"):Show()
		-- set the height of the frame based on the height of the children
		local contentHeight, contentHeightExpandable = self:GetElement("content"):_GetMinimumDimension("HEIGHT")
		assert(not contentHeightExpandable)
		self:SetHeight(contentHeight + TITLE_HEIGHT + CONTENT_PADDING_BOTTOM)
	end

	-- make sure the frame is on the screen
	self._contextTable.topRightX = max(min(self._contextTable.topRightX, 0), -UIParent:GetWidth() + 100)
	self._contextTable.topRightY = max(min(self._contextTable.topRightY, 0), -UIParent:GetHeight() + 100)

	-- set the frame position from the contextTable
	self:WipeAnchors()
	self:AddAnchor("TOPRIGHT", self._contextTable.topRightX, self._contextTable.topRightY)

	self.__super:Draw()
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function OverlayApplicationFrame._SavePosition(self)
	local frame = self:_GetBaseFrame()
	local parentFrame = frame:GetParent()
	self._contextTable.topRightX = frame:GetRight() - parentFrame:GetRight()
	self._contextTable.topRightY = frame:GetTop() - parentFrame:GetTop()
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.FrameOnDragStart(self)
	self:_GetBaseFrame():StartMoving()
end

function private.FrameOnDragStop(self)
	local frame = self:_GetBaseFrame()
	frame:StopMovingOrSizing()
	self:_SavePosition()
end

function private.CloseButtonOnClick(button)
	button:GetParentElement():Hide()
end

function private.MinimizeBtnOnClick(button)
	local self = button:GetParentElement()
	self._contextTable.minimized = not self._contextTable.minimized
	self:Draw()
end
