-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Math = TSM.Include("Util.Math")
local TempTable = TSM.Include("Util.TempTable")
local Color = TSM.Include("Util.Color")
local Rectangle = TSM.Include("UI.Rectangle")
local Table = TSM.Include("Util.Table")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local Tooltip = TSM.Include("UI.Tooltip")
local UIElements = TSM.Include("UI.UIElements")
local ApplicationFrame = UIElements.Define("ApplicationFrame", "Frame")
local private = {
	menuDialogContext = {},
}
local SECONDS_PER_HOUR = 60 * 60
local SECONDS_PER_DAY = 24 * SECONDS_PER_HOUR
local CONTENT_FRAME_OFFSET = 8
local DIALOG_RELATIVE_LEVEL = 18
local HEADER_HEIGHT = 40
local MIN_SCALE = 0.3
local DIALOG_OPACITY_PCT = 65
local MIN_ON_SCREEN_PX = 50
local CORNER_RADIUS = 6
local function NoOp() end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function ApplicationFrame.__init(self)
	self.__super:__init()
	self._contentFrame = nil
	self._contextTable = nil
	self._defaultContextTable = nil
	self._isScaling = nil
	self._protected = nil
	self._minWidth = 0
	self._minHeight = 0
	self._dialogStack = {}

	local frame = self:_GetBaseFrame()
	local globalFrameName = tostring(frame)
	_G[globalFrameName] = frame
	-- insert our frames before other addons (i.e. Skillet) to avoid conflicts
	tinsert(UISpecialFrames, 1, globalFrameName)

	self._backgroundTexture = Rectangle.New(frame)
	self._backgroundTexture:SetCornerRadius(CORNER_RADIUS)

	frame.resizeIcon = frame:CreateTexture(nil, "ARTWORK")
	frame.resizeIcon:SetPoint("BOTTOMRIGHT")
	TextureAtlas.SetTextureAndSize(frame.resizeIcon, "iconPack.14x14/Resize")

	frame.resizeBtn = CreateFrame("Button", nil, frame)
	frame.resizeBtn:SetAllPoints(frame.resizeIcon)
	frame.resizeBtn:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	ScriptWrapper.Set(frame.resizeBtn, "OnEnter", private.ResizeButtonOnEnter, self)
	ScriptWrapper.Set(frame.resizeBtn, "OnLeave", private.ResizeButtonOnLeave, self)
	ScriptWrapper.Set(frame.resizeBtn, "OnMouseDown", private.ResizeButtonOnMouseDown, self)
	ScriptWrapper.Set(frame.resizeBtn, "OnMouseUp", private.ResizeButtonOnMouseUp, self)
	ScriptWrapper.Set(frame.resizeBtn, "OnClick", private.ResizeButtonOnClick, self)
	Theme.RegisterChangeCallback(function()
		if self:IsVisible() then
			self:Draw()
		end
	end)
end

function ApplicationFrame.Acquire(self)
	self:AddChildNoLayout(UIElements.New("Frame", "titleFrame")
		:SetLayout("HORIZONTAL")
		:SetHeight(24)
		:AddAnchor("TOPLEFT", 8, -8)
		:AddAnchor("TOPRIGHT", -8, -8)
		:SetBackgroundColor("FRAME_BG")
		:AddChild(UIElements.New("Texture", "icon")
			:SetMargin(0, 16, 0, 0)
			:SetTextureAndSize("uiFrames.SmallLogo")
		)
		:AddChild(UIElements.New("Text", "title")
			:AddAnchor("CENTER")
			:SetWidth("AUTO")
			:SetFont("BODY_BODY2_BOLD")
			:SetTextColor("TEXT_ALT")
		)
		:AddChild(UIElements.New("Spacer", "spacer"))
		:AddChild(UIElements.New("Button", "closeBtn")
			:SetBackgroundAndSize("iconPack.24x24/Close/Default")
			:SetScript("OnClick", private.CloseButtonOnClick)
		)
	)
	self.__super:Acquire()
	local frame = self:_GetBaseFrame()
	frame:EnableMouse(true)
	frame:SetMovable(true)
	frame:SetResizable(true)
	frame:RegisterForDrag("LeftButton")
	self:SetScript("OnDragStart", private.FrameOnDragStart)
	self:SetScript("OnDragStop", private.FrameOnDragStop)
end

function ApplicationFrame.Release(self)
	if self._protected then
		tinsert(UISpecialFrames, 1, tostring(self:_GetBaseFrame()))
	end
	self._contentFrame = nil
	self._contextTable = nil
	self._defaultContextTable = nil
	if Environment.HasFeature(Environment.FEATURES.REGION_SET_RESIZE_BOUNDS) then
		self:_GetBaseFrame():SetResizeBounds(0, 0, 0, 0)
	else
		self:_GetBaseFrame():SetMinResize(0, 0)
		self:_GetBaseFrame():SetMaxResize(0, 0)
	end
	self._isScaling = nil
	self._protected = nil
	self._minWidth = 0
	self._minHeight = 0
	self.__super:Release()
end

--- Adds player gold text to the title frame.
-- @tparam ApplicationFrame self The application frame object
-- @treturn ApplicationFrame The application frame object
function ApplicationFrame.AddPlayerGold(self)
	local titleFrame = self:GetElement("titleFrame")
	titleFrame:AddChildBeforeById(titleFrame:HasChildById("switchBtn") and "switchBtn" or "closeBtn", TSM.UI.Views.PlayerGoldText.New("playerGold")
		:SetWidth("AUTO")
		:SetMargin(0, 8, 0, 0)
	)
	return self
end

--- Adds the app status icon to the title frame.
-- @tparam ApplicationFrame self The application frame object
-- @treturn ApplicationFrame The application frame object
function ApplicationFrame.AddAppStatusIcon(self)
	local color, texture = nil, nil
	local appUpdateAge = time() - (TSM.AppHelper.GetLastSync() or 0)
	local auctionDBRealmTime, auctionDBRegionTime = TSM.AuctionDB.GetAppDataUpdateTimes()
	local auctionDBRealmAge = time() - auctionDBRealmTime
	local auctionDBRegionAge = time() - auctionDBRegionTime
	if appUpdateAge >= 2 * SECONDS_PER_DAY or auctionDBRealmAge > 2 * SECONDS_PER_DAY or auctionDBRegionAge > 2 * SECONDS_PER_DAY then
		color = "FEEDBACK_RED"
		texture = "iconPack.14x14/Attention"
	elseif appUpdateAge >= SECONDS_PER_HOUR or auctionDBRealmAge >= 4 * SECONDS_PER_HOUR then
		color = "FEEDBACK_YELLOW"
		texture = "iconPack.14x14/Attention"
	else
		color = "FEEDBACK_GREEN"
		texture = "iconPack.14x14/Checkmark/Circle"
	end
	local titleFrame = self:GetElement("titleFrame")
	titleFrame:AddChildBeforeById("playerGold", UIElements.New("Button", "appStatus")
		:SetBackgroundAndSize(TextureAtlas.GetColoredKey(texture, color))
		:SetMargin(0, 8, 0, 0)
		:SetTooltip(private.GetAppStatusTooltip)
	)
	return self
end

--- Adds a switch button to the title frame.
-- @tparam ApplicationFrame self The application frame object
-- @tparam function onClickHandler The handler for the OnClick script for the button
-- @treturn ApplicationFrame The application frame object
function ApplicationFrame.AddSwitchButton(self, onClickHandler)
	local titleFrame = self:GetElement("titleFrame")
	titleFrame:AddChildBeforeById("closeBtn", UIElements.New("ActionButton", "switchBtn")
		:SetSize(95, 20)
		:SetMargin(0, 8, 0, 0)
		:SetFont("BODY_BODY3_MEDIUM")
		:SetText(L["WOW UI"])
		:SetScript("OnClick", onClickHandler)
	)
	return self
end

function ApplicationFrame.SetProtected(self, protected)
	self._protected = protected
	local globalFrameName = tostring(self:_GetBaseFrame())
	if protected then
		Table.RemoveByValue(UISpecialFrames, globalFrameName)
	else
		if not Table.KeyByValue(UISpecialFrames, globalFrameName) then
			-- insert our frames before other addons (i.e. Skillet) to avoid conflicts
			tinsert(UISpecialFrames, 1, globalFrameName)
		end
	end
	return self
end

--- Sets the title text.
-- @tparam ApplicationFrame self The application frame object
-- @tparam string title The title text
-- @treturn ApplicationFrame The application frame object
function ApplicationFrame.SetTitle(self, title)
	local titleFrame = self:GetElement("titleFrame")
	titleFrame:GetElement("title"):SetText(title)
	titleFrame:Draw()
	return self
end

--- Sets the content frame.
-- @tparam ApplicationFrame self The application frame object
-- @tparam Frame frame The frame's content frame
-- @treturn ApplicationFrame The application frame object
function ApplicationFrame.SetContentFrame(self, frame)
	assert(frame:__isa(TSM.UI.Frame))
	frame:WipeAnchors()
	frame:AddAnchor("TOPLEFT", CONTENT_FRAME_OFFSET, -HEADER_HEIGHT)
	frame:AddAnchor("BOTTOMRIGHT", -CONTENT_FRAME_OFFSET, CONTENT_FRAME_OFFSET)
	frame:SetPadding(2)
	frame:SetBorderColor("ACTIVE_BG", 2)
	self._contentFrame = frame
	self:AddChildNoLayout(frame)
	return self
end

--- Sets the context table.
-- This table can be used to preserve position and size information across lifecycles of the application frame and even
-- WoW sessions if it's within the settings DB.
-- @tparam ApplicationFrame self The application frame object
-- @tparam table tbl The context table
-- @tparam table defaultTbl Default values (required attributes: `width`, `height`, `centerX`, `centerY`)
-- @treturn ApplicationFrame The application frame object
function ApplicationFrame.SetContextTable(self, tbl, defaultTbl)
	assert(defaultTbl.width > 0 and defaultTbl.height > 0)
	assert(defaultTbl.centerX and defaultTbl.centerY)
	tbl.width = tbl.width or defaultTbl.width
	tbl.height = tbl.height or defaultTbl.height
	tbl.centerX = tbl.centerX or defaultTbl.centerX
	tbl.centerY = tbl.centerY or defaultTbl.centerY
	tbl.scale = tbl.scale or defaultTbl.scale
	self._contextTable = tbl
	self._defaultContextTable = defaultTbl
	return self
end

--- Sets the context table from a settings object.
-- @tparam ApplicationFrame self The application frame object
-- @tparam Settings settings The settings object
-- @tparam string key The setting key
-- @treturn ApplicationFrame The application frame object
function ApplicationFrame.SetSettingsContext(self, settings, key)
	return self:SetContextTable(settings[key], settings:GetDefaultReadOnly(key))
end

--- Sets the minimum size the application frame can be resized to.
-- @tparam ApplicationFrame self The application frame object
-- @tparam number minWidth The minimum width
-- @tparam number minHeight The minimum height
-- @treturn ApplicationFrame The application frame object
function ApplicationFrame.SetMinResize(self, minWidth, minHeight)
	self._minWidth = minWidth
	self._minHeight = minHeight
	return self
end

--- Shows a dialog frame.
-- @tparam ApplicationFrame self The application frame object
-- @tparam Element frame The element to show in a dialog
-- @param context The context to set on the dialog frame
function ApplicationFrame.ShowDialogFrame(self, frame, context)
	local dialogFrame = UIElements.New("Frame", "_dialog_"..random(1, 1000000))
		:SetRelativeLevel(DIALOG_RELATIVE_LEVEL * (#self._dialogStack + 1))
		:SetBackgroundColor(Color.GetFullBlack():GetOpacity(DIALOG_OPACITY_PCT))
		:AddAnchor("TOPLEFT")
		:AddAnchor("BOTTOMRIGHT")
		:SetMouseEnabled(true)
		:SetMouseWheelEnabled(true)
		:SetContext(context)
		:SetScript("OnMouseWheel", NoOp)
		:SetScript("OnMouseUp", private.DialogOnMouseUp)
		:SetScript("OnHide", private.DialogOnHide)
		:AddChildNoLayout(frame)
	tinsert(self._dialogStack, dialogFrame)
	self._contentFrame:AddChildNoLayout(dialogFrame)
	dialogFrame:Show()
	dialogFrame:Draw()
end

--- Show a confirmation dialog.
-- @tparam ApplicationFrame self The application frame object
-- @tparam string title The title of the dialog
-- @tparam string subTitle The sub-title of the dialog
-- @tparam function callback The callback for when the dialog is closed
-- @tparam[opt] varag ... Arguments to pass to the callback
function ApplicationFrame.ShowConfirmationDialog(self, title, subTitle, callback, ...)
	local context = TempTable.Acquire(...)
	context.callback = callback
	local frame = UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetSize(328, 158)
		:SetPadding(12, 12, 8, 12)
		:AddAnchor("CENTER")
		:SetBackgroundColor("FRAME_BG", true)
		:SetMouseEnabled(true)
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:AddChild(UIElements.New("Text", "title")
				:SetHeight(20)
				:SetMargin(32, 8, 0, 0)
				:SetFont("BODY_BODY2_BOLD")
				:SetJustifyH("CENTER")
				:SetText(title)
			)
			:AddChild(UIElements.New("Button", "closeBtn")
				:SetBackgroundAndSize("iconPack.24x24/Close/Default")
				:SetScript("OnClick", private.DialogCancelBtnOnClick)
			)
		)
		:AddChild(UIElements.New("Text", "desc")
			:SetMargin(0, 0, 16, 16)
			:SetFont("BODY_BODY3")
			:SetJustifyH("LEFT")
			:SetJustifyV("TOP")
			:SetText(subTitle)
		)
		:AddChild(UIElements.New("ActionButton", "confirmBtn")
			:SetHeight(24)
			:SetText(L["Confirm"])
			:SetScript("OnClick", private.DialogConfirmBtnOnClick)
		)
	self:ShowDialogFrame(frame, context)
end

--- Show a dialog triggered by a "more" button.
-- @tparam ApplicationFrame self The application frame object
-- @tparam Button moreBtn The "more" button
-- @tparam function iter A dialog menu row iterator with the following fields: `index, text, callback`
function ApplicationFrame.ShowMoreButtonDialog(self, moreBtn, iter)
	local frame = UIElements.New("PopupFrame", "moreDialog")
		:SetLayout("VERTICAL")
		:SetWidth(200)
		:SetPadding(0, 0, 8, 4)
		:AddAnchor("TOPRIGHT", moreBtn:_GetBaseFrame(), "BOTTOM", 22, -16)
	local numRows = 0
	for i, text, callback in iter do
		frame:AddChild(UIElements.New("Button", "row"..i)
			:SetHeight(20)
			:SetFont("BODY_BODY2_MEDIUM")
			:SetText(text)
			:SetScript("OnClick", callback)
		)
		numRows = numRows + 1
	end
	frame:SetHeight(12 + numRows * 20)
	self:ShowDialogFrame(frame)
end

--- Show a menu dialog.
-- @tparam ApplicationFrame self The application frame object
-- @tparam string frame The frame to anchor the dialog to
-- @tparam function iter A menu row iterator with the following fields: `index, text, subIter`
-- @param context Context to pass to the iter / subIter
-- @tparam function clickCallback The function to be called when a menu row is clicked
-- @tparam boolean flip Flip the anchor to the other side
function ApplicationFrame.ShowMenuDialog(self, frame, iter, context, clickCallback, flip)
	wipe(private.menuDialogContext)
	private.menuDialogContext.context = context
	private.menuDialogContext.clickCallback = clickCallback
	self:ShowDialogFrame(private.CreateMenuDialogFrame("_menuDialog", iter)
		:AddAnchor(flip and "TOPRIGHT" or "TOPLEFT", frame, flip and "BOTTOMRIGHT" or "BOTTOMLEFT", 2, -4)
	)
end

--- Hides the current dialog.
-- @tparam ApplicationFrame self The application frame object
function ApplicationFrame.HideDialog(self)
	local dialogFrame = tremove(self._dialogStack)
	if not dialogFrame then
		return
	end
	dialogFrame:GetParentElement():RemoveChild(dialogFrame)
end

function ApplicationFrame.Draw(self)
	local frame = self:_GetBaseFrame()
	frame:SetToplevel(true)
	frame:Raise()
	self._backgroundTexture:SetColor(Theme.GetColor("FRAME_BG"))

	-- update the size if it's less than the set min size
	assert(self._minWidth > 0 and self._minHeight > 0)
	self._contextTable.width = max(self._contextTable.width, self._minWidth)
	self._contextTable.height = max(self._contextTable.height, self._minHeight)
	self._contextTable.scale = max(self._contextTable.scale, MIN_SCALE)

	-- set the frame size from the contextTable
	self:SetScale(self._contextTable.scale)
	self:SetSize(self._contextTable.width, self._contextTable.height)

	-- make sure at least 50px of the frame is on the screen and offset by at least 1 scaled pixel to fix some rendering issues
	local maxAbsCenterX = (UIParent:GetWidth() / self._contextTable.scale + self._contextTable.width) / 2 - MIN_ON_SCREEN_PX
	local maxAbsCenterY = (UIParent:GetHeight() / self._contextTable.scale + self._contextTable.height) / 2 - MIN_ON_SCREEN_PX
	local effectiveScale = UIParent:GetEffectiveScale()
	if self._contextTable.centerX < 0 then
		self._contextTable.centerX = min(max(self._contextTable.centerX, -maxAbsCenterX), -effectiveScale)
	else
		self._contextTable.centerX = max(min(self._contextTable.centerX, maxAbsCenterX), effectiveScale)
	end
	if self._contextTable.centerY < 0 then
		self._contextTable.centerY = min(max(self._contextTable.centerY, -maxAbsCenterY), -effectiveScale)
	else
		self._contextTable.centerY = max(min(self._contextTable.centerY, maxAbsCenterY), effectiveScale)
	end

	-- adjust the position of the frame based on the UI scale to make rendering more consistent
	self._contextTable.centerX = Math.Round(self._contextTable.centerX, effectiveScale)
	self._contextTable.centerY = Math.Round(self._contextTable.centerY, effectiveScale)

	-- set the frame position from the contextTable
	self:WipeAnchors()
	self:AddAnchor("CENTER", self._contextTable.centerX, self._contextTable.centerY)

	self.__super:Draw()
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function ApplicationFrame._SavePositionAndSize(self, wasScaling)
	local frame = self:_GetBaseFrame()
	local parentFrame = frame:GetParent()
	local width = frame:GetWidth()
	local height = frame:GetHeight()
	if wasScaling then
		-- the anchor is in our old frame's scale, so convert the parent measurements to our old scale and then the resuslt to our new scale
		local scaleAdjustment = width / self._contextTable.width
		local frameLeftOffset = frame:GetLeft() - parentFrame:GetLeft() / self._contextTable.scale
		self._contextTable.centerX = (frameLeftOffset - (parentFrame:GetWidth() / self._contextTable.scale - width) / 2) / scaleAdjustment
		local frameBottomOffset = frame:GetBottom() - parentFrame:GetBottom() / self._contextTable.scale
		self._contextTable.centerY = (frameBottomOffset - (parentFrame:GetHeight() / self._contextTable.scale - height) / 2) / scaleAdjustment
		self._contextTable.scale = self._contextTable.scale * scaleAdjustment
	else
		self._contextTable.width = width
		self._contextTable.height = height
		-- the anchor is in our frame's scale, so convert the parent measurements to our scale
		local frameLeftOffset = frame:GetLeft() - parentFrame:GetLeft() / self._contextTable.scale
		self._contextTable.centerX = (frameLeftOffset - (parentFrame:GetWidth() / self._contextTable.scale - width) / 2)
		local frameBottomOffset = frame:GetBottom() - parentFrame:GetBottom() / self._contextTable.scale
		self._contextTable.centerY = (frameBottomOffset - (parentFrame:GetHeight() / self._contextTable.scale - height) / 2)
	end
end

function ApplicationFrame._SetResizing(self, resizing)
	if resizing then
		self:GetElement("titleFrame"):Hide()
		self._contentFrame:_GetBaseFrame():SetAlpha(0)
		self._contentFrame:_GetBaseFrame():SetFrameStrata("LOW")
		self._contentFrame:Draw()
	else
		self:GetElement("titleFrame"):Show()
		self._contentFrame:_GetBaseFrame():SetAlpha(1)
		self._contentFrame:_GetBaseFrame():SetFrameStrata(self._strata)
	end
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.CloseButtonOnClick(button)
	button:GetElement("__parent.__parent"):Hide()
end

function private.ResizeButtonOnEnter(self)
	local tooltip = L["Click and drag to resize this window."].."\n"..
		L["Hold SHIFT while dragging to scale the window instead."].."\n"..
		L["Right-Click to reset the window size, scale, and position to their defaults."]
	Tooltip.Show(self:_GetBaseFrame().resizeBtn, tooltip, true)
end

function private.ResizeButtonOnLeave(self)
	Tooltip.Hide()
end

function private.ResizeButtonOnMouseDown(self, mouseButton)
	if mouseButton ~= "LeftButton" then
		return
	end
	self._isScaling = IsShiftKeyDown()
	local frame = self:_GetBaseFrame()
	local width = frame:GetWidth()
	local height = frame:GetHeight()
	if self._isScaling then
		local minWidth = width * MIN_SCALE / self._contextTable.scale
		local minHeight = height * MIN_SCALE / self._contextTable.scale
		if Environment.HasFeature(Environment.FEATURES.REGION_SET_RESIZE_BOUNDS) then
			frame:SetResizeBounds(minWidth, minHeight, width * 10, height * 10)
		else
			frame:SetMinResize(minWidth, minHeight)
			frame:SetMaxResize(width * 10, height * 10)
		end
	else
		if Environment.HasFeature(Environment.FEATURES.REGION_SET_RESIZE_BOUNDS) then
			frame:SetResizeBounds(self._minWidth, self._minHeight, width * 10, height * 10)
		else
			frame:SetMinResize(self._minWidth, self._minHeight)
			frame:SetMaxResize(width * 10, height * 10)
		end
	end
	self:_SetResizing(true)
	frame:StartSizing("BOTTOMRIGHT")
	-- force updating the size here, to prevent using cached values from previously opened application frames
	frame:SetWidth(width)
	frame:SetHeight(height)
end

function private.ResizeButtonOnMouseUp(self, mouseButton)
	if mouseButton ~= "LeftButton" then
		return
	end
	self:_GetBaseFrame():StopMovingOrSizing()
	self:_SetResizing(false)
	self:_SavePositionAndSize(self._isScaling)
	self._isScaling = nil
	self:Draw()
end

function private.ResizeButtonOnClick(self, mouseButton)
	if mouseButton ~= "RightButton" then
		return
	end
	self._contextTable.scale = self._defaultContextTable.scale
	self._contextTable.width = self._defaultContextTable.width
	self._contextTable.height = self._defaultContextTable.height
	self._contextTable.centerX = self._defaultContextTable.centerX
	self._contextTable.centerY = self._defaultContextTable.centerY
	self:Draw()
end

function private.FrameOnDragStart(self)
	self:_GetBaseFrame():StartMoving()
end

function private.FrameOnDragStop(self)
	self:_GetBaseFrame():StopMovingOrSizing()
	self:_SavePositionAndSize()
	self:Draw()
end

function private.DialogOnMouseUp(dialog)
	local self = dialog:GetParentElement():GetParentElement()
	self:HideDialog()
end

function private.DialogOnHide(dialog)
	local context = dialog:GetContext()
	if context then
		TempTable.Release(context)
	end
end

function private.DialogCancelBtnOnClick(button)
	local self = button:GetBaseElement()
	self:HideDialog()
end

function private.DialogConfirmBtnOnClick(button)
	local self = button:GetBaseElement()
	local dialogFrame = button:GetParentElement():GetParentElement()
	local context = dialogFrame:GetContext()
	dialogFrame:SetContext(nil)
	self:HideDialog()
	context.callback(TempTable.UnpackAndRelease(context))
end

function private.CreateMenuDialogFrame(id, iter)
	local frame = UIElements.New("Frame", id)
		:SetLayout("VERTICAL")
		:SetWidth(180)
		:SetPadding(2)
		:SetBackgroundColor("PRIMARY_BG_ALT")
		:SetBorderColor("ACTIVE_BG_ALT")
	local numRows = 0
	for i, text, subIter in iter, private.menuDialogContext.context do
		frame:AddChild(UIElements.New("Frame", "row"..i)
			:SetLayout("HORIZONTAL")
			:SetHeight(21)
			:SetContext(subIter)
			:AddChild(UIElements.New("Button", "btn")
				:SetHeight(21)
				:SetPadding(8, 0, 0, 0)
				:SetFont("BODY_BODY3_MEDIUM")
				:SetBackground("PRIMARY_BG_ALT", true)
				:SetJustifyH("LEFT")
				:SetIcon(subIter and "iconPack.12x12/Chevron/Right" or nil, subIter and "RIGHT" or nil)
				:SetText(text)
				:SetContext(i)
				:SetScript("OnEnter", subIter and private.MenuDialogRowSubIterOnEnter or private.MenuDialogRowDefaultOnEnter)
				:SetScript("OnClick", not subIter and private.MenuDialogRowOnClick or nil)
			)
		)
		numRows = numRows + 1
	end
	frame:SetHeight(4 + numRows * 21)
	return frame
end

function private.MenuDialogRowOnClick(button)
	local path = TempTable.Acquire()
	tinsert(path, button:GetContext())
	local parentFrame = button:GetParentElement():GetParentElement():GetParentElement()
	local self = parentFrame:GetBaseElement()
	while parentFrame:GetParentElement() ~= self._contentFrame do
		local selectedButton = parentFrame:GetContext():GetElement("btn")
		tinsert(path, 1, selectedButton:GetContext())
		parentFrame = parentFrame:GetParentElement()
	end
	private.menuDialogContext.clickCallback(button, private.menuDialogContext.context, TempTable.UnpackAndRelease(path))
end

function private.MenuDialogRowDefaultOnEnter(button)
	local frame = button:GetParentElement():GetParentElement()
	if frame:HasChildById("subFrame") then
		local subFrame = frame:GetElement("subFrame")
		local prevRow = frame:GetContext()
		frame:SetContext(nil)
		if prevRow then
			prevRow:GetElement("btn"):SetHighlightLocked(false)
		end
		frame:RemoveChild(subFrame)
		frame:Draw()
	end
end

function private.MenuDialogRowSubIterOnEnter(button)
	private.MenuDialogRowDefaultOnEnter(button)
	button:SetHighlightLocked(true)
	local row = button:GetParentElement()
	local frame = row:GetParentElement()
	frame:SetContext(row)
	local subFrame = private.CreateMenuDialogFrame("subFrame", row:GetContext())
		:AddAnchor("TOPLEFT", button:_GetBaseFrame(), "TOPRIGHT", 4, 2)
	frame:AddChildNoLayout(subFrame)
	subFrame:Draw()
end

function private.GetAppStatusTooltip()
	local tooltipLines = TempTable.Acquire()
	local regionRealmName = TSM.AppHelper.GetRegion().."-"..GetRealmName()
	if not Environment.HasFeature(Environment.FEATURES.CONNECTED_FACTION_AH) then
		regionRealmName = regionRealmName.."-"..UnitFactionGroup("player")
	end
	tinsert(tooltipLines, format(L["TSM Desktop App Status (%s)"], regionRealmName))

	local appUpdateAge = time() - (TSM.AppHelper.GetLastSync() or 0)
	if appUpdateAge < SECONDS_PER_HOUR then
		tinsert(tooltipLines, Theme.GetColor("FEEDBACK_GREEN"):ColorText(format(L["App Synced %s Ago"], SecondsToTime(appUpdateAge))))
	elseif appUpdateAge < 2 * SECONDS_PER_DAY then
		tinsert(tooltipLines, Theme.GetColor("FEEDBACK_YELLOW"):ColorText(format(L["App Synced %s Ago"], SecondsToTime(appUpdateAge))))
	else
		tinsert(tooltipLines, Theme.GetColor("FEEDBACK_RED"):ColorText(L["App Not Synced"]))
	end

	local auctionDBRealmTime, auctionDBRegionTime = TSM.AuctionDB.GetAppDataUpdateTimes()
	local auctionDBRealmAge = time() - auctionDBRealmTime
	local auctionDBRegionAge = time() - auctionDBRegionTime
	if auctionDBRealmAge < 4 * SECONDS_PER_HOUR then
		tinsert(tooltipLines, Theme.GetColor("FEEDBACK_GREEN"):ColorText(format(L["AuctionDB Realm Data is %s Old"], SecondsToTime(auctionDBRealmAge))))
	elseif auctionDBRealmAge < 2 * SECONDS_PER_DAY then
		tinsert(tooltipLines, Theme.GetColor("FEEDBACK_YELLOW"):ColorText(format(L["AuctionDB Realm Data is %s Old"], SecondsToTime(auctionDBRealmAge))))
	else
		tinsert(tooltipLines, Theme.GetColor("FEEDBACK_RED"):ColorText(L["No AuctionDB Realm Data"]))
	end
	if auctionDBRegionAge < 2 * SECONDS_PER_DAY then
		tinsert(tooltipLines, Theme.GetColor("FEEDBACK_GREEN"):ColorText(format(L["AuctionDB Region Data is %s Old"], SecondsToTime(auctionDBRegionAge))))
	else
		tinsert(tooltipLines, Theme.GetColor("FEEDBACK_RED"):ColorText(L["No AuctionDB Region Data"]))
	end

	return strjoin("\n", TempTable.UnpackAndRelease(tooltipLines)), true, 16
end
