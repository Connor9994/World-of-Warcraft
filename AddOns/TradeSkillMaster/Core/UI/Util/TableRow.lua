-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local L = TSM.Include("Locale").GetTable()
local Environment = TSM.Include("Environment")
local TableRow = TSM.Include("LibTSMClass").DefineClass("TableRow")
local Table = TSM.Include("Util.Table")
local Math = TSM.Include("Util.Math")
local Wow = TSM.Include("Util.Wow")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Tooltip = TSM.Include("UI.Tooltip")
TSM.UI.Util.TableRow = TableRow
local private = {
	rowFrameLookup = {},
	layoutTemp = {},
	colIdsTemp = {},
	inwardIteratorContext = {},
}
local FLAG_WIDTH = 6
local FLAG_SPACING = 2
local ICON_SPACING = 4
local MIN_TEXT_WIDTH = 12
local RESIZER_WIDTH = 4
local INDENT_WIDTH = 8
local HEADER_LINE_WIDTH = 2
local MORE_COL_WIDTH = 8
local FULL_TEXT_TOOLTIP_DELAY_S = 1



-- ============================================================================
-- TableRow - Public Class Methods
-- ============================================================================

function TableRow.__init(self)
	self._scrollingTable = nil
	self._tableInfo = nil
	self._rowData = nil
	self._texts = {}
	self._icons = {}
	self._rotatingIcons = {}
	self._buttons = {}
	self._recycled = {
		buttons = {},
		texts = {},
		icons = {},
		rotatingIcons = {},
	}
	self._sortId = nil
	self._sortAscending = true
	self._state = nil

	local frame = CreateFrame("Button", nil, nil, nil)
	frame:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	self._frame = frame
	private.rowFrameLookup[frame] = self

	frame.background = frame:CreateTexture(nil, "BACKGROUND")
	frame.background:SetAllPoints()

	frame.highlight = frame:CreateTexture(nil, "ARTWORK", nil, -1)
	frame.highlight:SetAllPoints()
	frame.highlight:Hide()

	frame.sortBackground = frame:CreateTexture(nil, "ARTWORK", nil, -2)
	frame.sortBackground:Hide()

	frame.sortFlag = frame:CreateTexture(nil, "ARTWORK", nil, -1)
	frame.sortFlag:SetHeight(3)
	frame.sortFlag:Hide()
end

function TableRow.Acquire(self, scrollingTable, isHeader)
	self._scrollingTable = scrollingTable
	self._tableInfo = self._scrollingTable._tableInfo

	self._frame:SetParent(isHeader and self._scrollingTable._hContent or self._scrollingTable._content)
	self._frame:SetHitRectInsets(0, 0, 0, 0)
	self._frame:Show()
	self._frame.highlight:Hide()
	self._frame.sortBackground:Hide()
	self._frame.sortFlag:Hide()

	if isHeader then
		self:_CreateHeaderRowCols()
		self._frame:SetPoint("TOPLEFT", 0, scrollingTable._headerMode == "COMPACT" and 0 or -HEADER_LINE_WIDTH)
		self._frame:SetPoint("TOPRIGHT", 0, scrollingTable._headerMode == "COMPACT" and 0 or -HEADER_LINE_WIDTH)
		self:_LayoutHeaderRow()
	else
		self:_CreateDataRowCols()
		ScriptWrapper.Set(self._frame, "OnEnter", private.RowOnEnter, self)
		ScriptWrapper.Set(self._frame, "OnLeave", private.RowOnLeave, self)
		ScriptWrapper.Set(self._frame, "OnClick", private.RowOnClick, self)
		if scrollingTable._rightClickToggle then
			ScriptWrapper.Set(self._frame, "OnMouseDown", private.RowOnMouseDown, self)
		else
			ScriptWrapper.Clear(self._frame, "OnMouseDown")
		end
		self:_LayoutDataRow()
	end
end

function TableRow.Release(self)
	self._frame:Hide()
	for _, text in pairs(self._texts) do
		text:Hide()
		text:ClearAllPoints()
		text:SetWidth(0)
		text:SetHeight(0)
		text:SetTextColor(1, 1, 1, 1)
		tinsert(self._recycled.texts, text)
	end
	wipe(self._texts)
	for _, icon in pairs(self._icons) do
		icon:Hide()
		icon:SetDrawLayer("ARTWORK", 0)
		icon:SetTexture(nil)
		icon:SetTexCoord(0, 0, 0, 1, 1, 0, 1, 1)
		icon:SetColorTexture(0, 0, 0, 0)
		icon:SetVertexColor(1, 1, 1, 1)
		icon:ClearAllPoints()
		icon:SetWidth(0)
		icon:SetHeight(0)
		tinsert(self._recycled.icons, icon)
	end
	wipe(self._icons)
	for _, icon in pairs(self._rotatingIcons) do
		icon.ag:Stop()
		icon:Hide()
		icon:SetDrawLayer("ARTWORK", 0)
		icon:SetTexture(nil)
		icon:SetTexCoord(0, 0, 0, 1, 1, 0, 1, 1)
		icon:SetColorTexture(0, 0, 0, 0)
		icon:SetVertexColor(1, 1, 1, 1)
		icon:ClearAllPoints()
		icon:SetWidth(0)
		icon:SetHeight(0)
		tinsert(self._recycled.rotatingIcons, icon)
	end
	wipe(self._rotatingIcons)
	for _, button in pairs(self._buttons) do
		if button.isShowingTooltip then
			Tooltip.Hide()
			button.isShowingTooltip = nil
		end
		button:Hide()
		button:SetMouseClickEnabled(true)
		button:RegisterForDrag()
		button:SetResizable(false)
		button:SetMovable(false)
		ScriptWrapper.Clear(button, "OnEnter")
		ScriptWrapper.Clear(button, "OnLeave")
		ScriptWrapper.Clear(button, "OnClick")
		ScriptWrapper.Clear(button, "OnMouseDown")
		ScriptWrapper.Clear(button, "OnMouseUp")
		ScriptWrapper.Clear(button, "OnUpdate")
		button:SetParent(nil)
		button:ClearAllPoints()
		button:SetWidth(0)
		button:SetHeight(0)
		tinsert(self._recycled.buttons, button)
	end
	wipe(self._buttons)

	self._scrollingTable = nil
	self._tableInfo = nil
	self._rowData = nil
	self._state = nil
	self._frame:SetParent(nil)
	self._frame:ClearAllPoints()
	ScriptWrapper.Clear(self._frame, "OnEnter")
	ScriptWrapper.Clear(self._frame, "OnLeave")
	ScriptWrapper.Clear(self._frame, "OnClick")
end

function TableRow.SetData(self, data)
	for _, col in self._tableInfo:_ColIterator() do
		local id = col:_GetId()
		if col:_HasText() then
			local text, r, g, b, a = col:_GetText(data)
			self._texts[id]:SetText(text)
			if r then
				self._texts[id]:SetTextColor(r, g, b, a)
			end
		else
			self._texts[id]:SetText("")
		end
		if col:_GetIconSize() then
			local button = self._buttons["_icon_"..id]
			local texture = col:_GetIcon(data, button and button:IsMouseOver())
			if type(texture) == "string" and TextureAtlas.IsValid(texture) then
				TextureAtlas.SetTexture(self._icons[id], texture)
			else
				self._icons[id]:SetTexture(texture)
			end
		end
	end
	self._rowData = data
	self:_LayoutDataRow()
end

function TableRow.SetHeaderData(self)
	if self._scrollingTable._headerMode == "NONE" then
		return
	end
	for _, col in self._tableInfo:_ColIterator() do
		if not col:_GetTitleIcon() then
			self._texts[col:_GetId()]:SetText(col:_GetTitle())
		end
	end
end

function TableRow.GetData(self)
	return self._rowData
end

function TableRow.ClearData(self)
	self._rowData = nil
end

function TableRow.SetHeight(self, height)
	for _, text in pairs(self._texts) do
		text:SetHeight(height)
	end
	for _, btn in pairs(self._buttons) do
		btn:SetHeight(height)
	end
	for _, col in ipairs(self._tableInfo:_GetCols()) do
		local id = col:_GetId()
		local flag = self._icons["_flag_"..id]
		if flag then
			flag:SetHeight(height - FLAG_SPACING * 2)
		end
	end
	self._frame:SetHeight(height)
end

function TableRow.SetBackgroundColor(self, color)
	self._frame.background:SetColorTexture(color:GetFractionalRGBA())
end

function TableRow.SetTextColor(self, color)
	for _, col in ipairs(self._tableInfo:_GetCols()) do
		local id = col:_GetId()
		local text = self._texts[id]
		if text then
			text:SetTextColor(color:GetFractionalRGBA())
		end
	end
end

function TableRow.SetVisible(self, visible)
	if visible == self._frame:IsVisible() then
		return
	end
	if visible then
		self._frame:Show()
		self._frame.highlight:Hide()
	else
		self._frame:Hide()
	end
end

function TableRow.IsVisible(self)
	return self._frame:IsVisible()
end

function TableRow.SetHighlightState(self, state, noLayout)
	self._state = state
	local highlightTint, shouldLayoutActionIcons = nil, false
	if state == "selectedHover" then
		highlightTint = "+SELECTED_HOVER"
	elseif state == "selected" then
		highlightTint = "+SELECTED"
	elseif state == "hover" then
		highlightTint = self._scrollingTable._rowHoverEnabled and "+HOVER" or nil
		shouldLayoutActionIcons = true
	elseif state == nil then
		shouldLayoutActionIcons = true
	else
		error("Invalid state: "..state)
	end
	if highlightTint then
		local backgroundColor = self._scrollingTable._backgroundColor
		self._frame.highlight:SetColorTexture(Theme.GetColor(backgroundColor):GetTint(highlightTint):GetFractionalRGBA())
		self._frame.highlight:Show()
	else
		self._frame.highlight:Hide()
	end
	if not noLayout then
		local shouldLayout = false
		for _, col in self._tableInfo:_VisibleColIterator() do
			if col:_HasFlag() or (shouldLayoutActionIcons and select(3, col:_GetActionIconInfo())) then
				shouldLayout = true
				break
			end
		end
		if shouldLayout then
			self:_LayoutDataRow()
		end
	end
end

function TableRow.IsMouseOver(self)
	return self._frame:IsMouseOver()
end

function TableRow.SetHitRectInsets(self, left, right, top, bottom)
	for _, tooltipFrame in pairs(self._buttons) do
		tooltipFrame:SetHitRectInsets(left, right, top, bottom)
	end
	self._frame:SetHitRectInsets(left, right, top, bottom)
end

function TableRow.SetSort(self, sortId, sortAscending)
	if sortId == self._sortId and sortAscending == self._sortAscending then
		return
	end
	self._sortId = sortId
	self._sortAscending = sortAscending
	self:_LayoutHeaderRow()
end



-- ============================================================================
-- TableRow - Private Class Methods
-- ============================================================================

function TableRow._GetFontString(self)
	local fontString = tremove(self._recycled.texts)
	if not fontString then
		fontString = self._frame:CreateFontString()
		fontString:SetShadowColor(0, 0, 0, 0)
		fontString:SetWordWrap(false)
	end
	fontString:Show()
	return fontString
end

function TableRow._GetTexture(self)
	local texture = tremove(self._recycled.icons)
	if not texture then
		texture = self._frame:CreateTexture()
	end
	texture:Show()
	return texture
end

function TableRow._GetRotatingTexture(self)
	local texture = tremove(self._recycled.rotatingIcons)
	if not texture then
		texture = self._frame:CreateTexture()
		texture.ag = texture:CreateAnimationGroup()
		local spin = texture.ag:CreateAnimation("Rotation")
		spin:SetDuration(2)
		spin:SetDegrees(360)
		texture.ag:SetLooping("REPEAT")
	end
	texture:Show()
	return texture
end

function TableRow._GetButton(self)
	local button = tremove(self._recycled.buttons)
	if not button then
		button = CreateFrame("Button", nil, self._frame, nil)
	end
	button:SetParent(self._frame)
	button:SetHitRectInsets(0, 0, 0, 0)
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	button:Show()
	return button
end

function TableRow._GetSepTexture(self)
	local sepTexture = self:_GetTexture()
	sepTexture:SetDrawLayer("BORDER")
	sepTexture:SetWidth(HEADER_LINE_WIDTH)
	return sepTexture
end

function TableRow._CreateHeaderRowCols(self)
	if self._scrollingTable._headerMode == "NONE" then
		return
	end
	if self._scrollingTable:_CanResizeCols() then
		-- craete the "more" column
		local button = self:_GetButton()
		ScriptWrapper.Set(button, "OnClick", private.MoreColOnClick, self)
		self._buttons._more = button
		local moreIcon = self:_GetTexture()
		moreIcon:SetDrawLayer("ARTWORK")
		TextureAtlas.SetTextureAndSize(moreIcon, "iconPack.12x12/More/Vertical")
		self._icons._more = moreIcon
		self._icons._sep__more = self:_GetSepTexture()
	end

	for _, col in self._tableInfo:_ColIterator() do
		local id = col:_GetId()
		local button = self:_GetButton()
		ScriptWrapper.Set(button, "OnClick", private.HeaderColOnClick)
		ScriptWrapper.Set(button, "OnEnter", private.HeaderColOnEnter)
		ScriptWrapper.Set(button, "OnLeave", private.HeaderColOnLeave)
		button:SetResizable(true)
		self._buttons[id] = button
		if self._scrollingTable:_CanResizeCols() then
			local resizerButton = self:_GetButton()
			resizerButton:SetMovable(true)
			ScriptWrapper.Set(resizerButton, "OnEnter", private.ResizerOnEnter)
			ScriptWrapper.Set(resizerButton, "OnLeave", private.ResizerOnLeave)
			ScriptWrapper.Set(resizerButton, "OnMouseDown", private.ResizerOnMouseDown)
			ScriptWrapper.Set(resizerButton, "OnMouseUp", private.ResizerOnMouseUp)
			ScriptWrapper.Set(resizerButton, "OnClick", private.ResizerOnClick)
			self._buttons["_resizer_"..id] = resizerButton
			local resizerHighlight = self:_GetTexture()
			resizerHighlight:SetDrawLayer("ARTWORK")
			resizerHighlight:SetPoint("TOPLEFT", resizerButton)
			resizerHighlight:SetPoint("BOTTOMRIGHT", resizerButton)
			resizerHighlight:SetColorTexture(Theme.GetColor("ACTIVE_BG+HOVER"):GetFractionalRGBA())
			resizerHighlight:Hide()
			self._icons["_resizer_"..id] = resizerHighlight
		end
		self._icons["_sep_"..id] = self:_GetSepTexture()
		local iconTexture = col:_GetTitleIcon()
		if iconTexture then
			local icon = self:_GetTexture()
			icon:SetDrawLayer("ARTWORK", 1)
			TextureAtlas.SetTextureAndSize(icon, iconTexture)
			self._icons[id] = icon
		else
			local text = self:_GetFontString()
			text:SetFont(Theme.GetFont("BODY_BODY3_MEDIUM"):GetWowFont())
			text:SetJustifyH("LEFT")
			text:SetText(col:_GetTitle())
			self._texts[id] = text
		end
	end
end

function TableRow._CreateDataRowCols(self)
	for _, col in self._tableInfo:_ColIterator() do
		local id = col:_GetId()
		local iconSize = col:_GetIconSize()
		if iconSize then
			local icon = self:_GetTexture()
			icon:SetDrawLayer("ARTWORK", 1)
			icon:SetWidth(iconSize)
			icon:SetHeight(iconSize)
			self._icons[id] = icon

			if col:_IsIconHoverEnabled() then
				local iconBtn = self:_GetButton()
				iconBtn:SetAllPoints(icon)
				ScriptWrapper.Set(iconBtn, "OnEnter", private.IconButtonOnEnter)
				ScriptWrapper.Set(iconBtn, "OnLeave", private.IconButtonOnLeave)
				ScriptWrapper.Set(iconBtn, "OnClick", private.IconButtonOnClick)
				self._buttons["_icon_"..id] = iconBtn
			end
		end
		-- need to create a text element even if there's no text, as it's used for the layout
		local text = self:_GetFontString()
		if col:_HasText() then
			text:SetFont(col:_GetWowFont())
			text:SetJustifyH(col:_GetJustifyH())
		else
			-- use an arbitrary default font since the text will be an empty string
			text:SetFontObject(GameFontNormal)
		end
		self._texts[id] = text
		if col:_HasTooltip() then
			local tooltipFrame = self:_GetButton()
			ScriptWrapper.Set(tooltipFrame, "OnEnter", private.TooltipFrameOnEnter)
			ScriptWrapper.Set(tooltipFrame, "OnLeave", private.TooltipFrameOnLeave)
			ScriptWrapper.Set(tooltipFrame, "OnClick", private.TooltipFrameOnClick)
			if self._scrollingTable._rightClickToggle then
				ScriptWrapper.Set(tooltipFrame, "OnMouseDown", private.RowOnMouseDown, self)
			end
			self._buttons[id] = tooltipFrame
		end
		if col:_HasFlag() then
			-- add the flag texture
			local flag = self:_GetTexture()
			flag:SetDrawLayer("ARTWORK", 1)
			flag:SetWidth(FLAG_WIDTH)
			self._icons["_flag_"..id] = flag
		end
		if col:_HasExpander() then
			-- add the expander texture
			local expander = self:_GetTexture()
			expander:SetDrawLayer("ARTWORK", 1)
			self._icons["_expander_"..id] = expander

			local expanderBtn = self:_GetButton()
			expanderBtn:SetAllPoints(expander)
			ScriptWrapper.SetPropagate(expanderBtn, "OnEnter")
			ScriptWrapper.Set(expanderBtn, "OnLeave", private.ExpanderOnLeave, self)
			ScriptWrapper.Set(expanderBtn, "OnClick", private.ExpanderOnClick, self)
			self._buttons["_expander_"..id] = expanderBtn
		end
		if col:_HasCheck() then
			-- add the check texture
			local expander = self:_GetTexture()
			expander:SetDrawLayer("ARTWORK", 1)
			TextureAtlas.SetTextureAndSize(expander, "iconPack.14x14/Checkmark/Default")
			self._icons["_check_"..id] = expander
		end
		if col:_HasBadge() then
			local badgeText = self:_GetFontString()
			badgeText:SetFont(Theme.GetFont("TABLE_TABLE1"):GetWowFont())
			badgeText:SetTextColor(Theme.GetColor("INDICATOR"):GetFractionalRGBA())
			badgeText:SetJustifyH("RIGHT")
			badgeText:SetJustifyV("MIDDLE")
			self._texts["_badge_"..id] = badgeText
		end
		-- add the action icons
		local numActionIcons, actionIconSize = col:_GetActionIconInfo()
		for i = 1, numActionIcons do
			local icon = self:_GetRotatingTexture()
			icon:SetDrawLayer("ARTWORK", 1)
			icon:SetWidth(actionIconSize)
			icon:SetHeight(actionIconSize)
			self._rotatingIcons["_action"..i.."_"..id] = icon

			local iconBtn = self:_GetButton()
			iconBtn:SetAllPoints(icon)
			ScriptWrapper.Set(iconBtn, "OnEnter", private.ActionIconButtonOnEnter)
			ScriptWrapper.Set(iconBtn, "OnLeave", private.ActionIconButtonOnLeave)
			ScriptWrapper.Set(iconBtn, "OnClick", private.ActionIconButtonOnClick)
			self._buttons["_action"..i.."_"..id] = iconBtn
		end
	end
end

function TableRow._LayoutHeaderRow(self)
	if self._scrollingTable._headerMode == "NONE" then
		return
	end

	-- hide any hidden cols
	for _, col in self._tableInfo:_HiddenColIterator() do
		local id = col:_GetId()
		local button = self._buttons[id]
		button:Hide()
		local sepIcon = self._icons["_sep_"..id]
		sepIcon:Hide()

		if self._scrollingTable:_CanResizeCols() then
			local resizerButton = self._buttons["_resizer_"..id]
			resizerButton:Hide()
		end

		local iconTexture = col:_GetTitleIcon()
		if iconTexture then
			self._icons[id]:Hide()
		else
			self._texts[id]:Hide()
		end
	end

	local cols = self._tableInfo:_GetVisibleCols()

	if self._scrollingTable:_CanResizeCols() then
		-- layout the "more" column
		local button = self._buttons._more
		button:SetPoint("LEFT", Theme.GetColSpacing() / 2, 0)
		button:SetWidth(MORE_COL_WIDTH)
		local icon = self._icons._more
		icon:SetPoint("CENTER", button)
		local sepIcon = self._icons._sep__more
		sepIcon:SetPoint("TOP", button, "TOPRIGHT", Theme.GetColSpacing() / 2, 0)
		sepIcon:SetPoint("BOTTOM", button, "BOTTOMRIGHT", Theme.GetColSpacing() / 2, 0)
		sepIcon:SetColorTexture(Theme.GetColor("ACTIVE_BG"):GetFractionalRGBA())
	end

	-- build buttons from the left until we get to the col without a width, then switch to building from the right
	for i, col, isAscending in private.InwardIterator(cols) do
		local id = col:_GetId()
		local button = self._buttons[id]
		local leftButton = i > 1 and self._buttons[cols[i - 1]:_GetId()] or (self._scrollingTable:_CanResizeCols() and self._buttons._more) or nil
		local rightButton = i < #cols and self._buttons[cols[i + 1]:_GetId()] or nil
		button:Show()
		button:ClearAllPoints()

		if self._scrollingTable:_CanResizeCols() then
			local resizerBtn = self._buttons["_resizer_"..id]
			if self._scrollingTable:_IsColWidthLocked() then
				resizerBtn:Disable()
				resizerBtn:SetMovable(false)
				resizerBtn:SetMouseClickEnabled(false)
			else
				resizerBtn:Enable()
				resizerBtn:SetMovable(true)
				resizerBtn:SetMouseClickEnabled(true)
			end
		end

		local sepIcon = self._icons["_sep_"..id]
		sepIcon:Show()
		sepIcon:SetColorTexture(Theme.GetColor("ACTIVE_BG"):GetFractionalRGBA())
		sepIcon:SetPoint("TOP", button, "TOPRIGHT", Theme.GetColSpacing() / 2, 0)
		sepIcon:SetPoint("BOTTOM", button, "BOTTOMRIGHT", Theme.GetColSpacing() / 2, 0)

		-- layout the button
		if isAscending then
			if leftButton then
				button:SetPoint("LEFT", leftButton, "RIGHT", Theme.GetColSpacing(), 0)
			else
				button:SetPoint("LEFT", Theme.GetColSpacing() / 2, 0)
			end
		else
			if rightButton then
				button:SetPoint("RIGHT", rightButton, "LEFT", -Theme.GetColSpacing(), 0)
			else
				button:SetPoint("RIGHT", -Theme.GetColSpacing() / 2, 0)
			end
		end

		if self._scrollingTable:_CanResizeCols() then
			local iconSize = col:_GetIconSize()
			local iconTexture = col:_GetTitleIcon()
			button:SetWidth(self._scrollingTable:_GetColWidth(id))

			-- the minimum width of the content is our minimum text width plus the size of the content icon
			local minContentWidth = 0
			if col:_HasText() then
				minContentWidth = minContentWidth + MIN_TEXT_WIDTH
			end
			if iconSize then
				minContentWidth = minContentWidth + iconSize + ICON_SPACING
			end
			if col:_HasFlag() then
				minContentWidth = minContentWidth + FLAG_WIDTH
			end
			if col:_HasExpander() then
				minContentWidth = minContentWidth + TextureAtlas.GetWidth("iconPack.12x12/Caret/Right") + ICON_SPACING
			end
			if col:_HasCheck() then
				minContentWidth = minContentWidth + TextureAtlas.GetWidth("iconPack.14x14/Checkmark/Default") + ICON_SPACING
			end
			if col:_HasBadge() then
				minContentWidth = minContentWidth + TextureAtlas.GetWidth("uiFrames.AuctionCounterTexture") + ICON_SPACING
			end
			-- the minimum header width is either our header icon width or the minimum text width
			local minHeaderWidth = iconTexture and TextureAtlas.GetWidth(iconTexture) or MIN_TEXT_WIDTH
			if Environment.HasFeature(Environment.FEATURES.REGION_SET_RESIZE_BOUNDS) then
				button:SetResizeBounds(max(minContentWidth, minHeaderWidth), 0)
			else
				button:SetMinResize(max(minContentWidth, minHeaderWidth), 0)
			end

			-- layout the resizer button
			local resizerButton = self._buttons["_resizer_"..id]
			resizerButton:Show()
			resizerButton:SetPoint("LEFT", button, "RIGHT", (Theme.GetColSpacing() - RESIZER_WIDTH) / 2, 0)
			resizerButton:SetWidth(RESIZER_WIDTH)
			resizerButton:SetHitRectInsets(-RESIZER_WIDTH / 2, -RESIZER_WIDTH / 2, 0, 0)
		else
			local width = col:_GetWidth()
			if width then
				-- don't currently support auto-width with a header
				assert(width ~= true)
				button:SetWidth(width)
			else
				-- we found the button which will expand to fill the extra width, so reverse the iterator direction (only once)
				assert(isAscending)
				private.InwardIteratorReverse()
				if rightButton then
					-- anchor the right of this button to the left of the next one
					button:SetPoint("RIGHT", rightButton, "LEFT", -Theme.GetColSpacing(), 0)
				else
					-- this button is the last one, so anchor it to the right of our frame
					button:SetPoint("RIGHT", -Theme.GetColSpacing() / 2, 0)
				end
			end
		end
	end

	-- update the text, icons, and sort icons
	local sortBackground = self._frame.sortBackground
	local sortFlag = self._frame.sortFlag
	sortBackground:Hide()
	sortBackground:ClearAllPoints()
	sortFlag:Hide()
	sortFlag:ClearAllPoints()
	for _, col in ipairs(cols) do
		local id = col:_GetId()
		local button = self._buttons[id]
		if self._sortId == id then
			sortBackground:SetPoint("TOPLEFT", button, -Theme.GetColSpacing() / 2, 0)
			sortBackground:SetPoint("BOTTOMRIGHT", button, Theme.GetColSpacing() / 2, 0)
			sortBackground:SetColorTexture(Theme.GetColor("ACTIVE_BG"):GetFractionalRGBA())
			sortBackground:Show()
			sortFlag:SetPoint("TOPLEFT", button, -Theme.GetColSpacing() / 2, 2)
			sortFlag:SetPoint("TOPRIGHT", button, Theme.GetColSpacing() / 2, 2)
			sortFlag:SetColorTexture(Theme.GetColor(self._sortAscending and "INDICATOR" or "INDICATOR_ALT"):GetFractionalRGBA())
			sortFlag:Show()
		end
		local iconTexture = col:_GetTitleIcon()
		if iconTexture then
			local icon = self._icons[id]
			icon:Show()
			icon:ClearAllPoints()
			icon:SetPoint(col:_GetJustifyH(), button)
		else
			local text = self._texts[id]
			text:Show()
			text:ClearAllPoints()
			text:SetAllPoints(button)
		end
	end
end

function TableRow._LayoutDataRow(self)
	-- hide any hidden cols
	for _, col in self._tableInfo:_HiddenColIterator() do
		local id = col:_GetId()
		local icon = self._icons[id]

		local flag = self._icons["_flag_"..id]
		if flag then
			flag:Hide()
		end

		local expander = self._icons["_expander_"..id]
		if expander then
			expander:Hide()
			local expanderButton = self._buttons["_expander_"..id]
			expanderButton:Hide()
		end

		local check = self._icons["_check_"..id]
		if check then
			check:Hide()
		end

		if icon then
			icon:Hide()
		end

		if col:_HasText() then
			local text = self._texts[id]
			text:Hide()
		end

		local badge = self._texts["_badge_"..id]
		if badge then
			badge:Hide()
		end

		local numActionIcons = col:_GetActionIconInfo()
		for i = 1, numActionIcons do
			local actionIconKey = "_action"..i.."_"..id
			local actionIcon = self._rotatingIcons[actionIconKey]
			local actionIconButton = self._buttons[actionIconKey]
			actionIcon:Hide()
			actionIconButton:Hide()
		end

		if col:_HasTooltip() then
			local tooltipFrame = self._buttons[id]
			tooltipFrame:Hide()
		end
	end

	local cols = self._tableInfo:_GetVisibleCols()
	local canResize = self._scrollingTable:_CanResizeCols()
	local data = self:GetData()

	-- cache a list of the col ids
	wipe(private.colIdsTemp)
	for i, col in ipairs(cols) do
		private.colIdsTemp[i] = col:_GetId()
	end

	-- build from the left until we get to the col without a width, then switch to building from the right
	for i, col, isAscending in private.InwardIterator(cols) do
		local id = private.colIdsTemp[i]
		local text = self._texts[id]
		local flag = self._icons["_flag_"..id]
		local expander = self._icons["_expander_"..id]
		local check = self._icons["_check_"..id]
		local badge = self._texts["_badge_"..id]
		local icon = self._icons[id]
		local width = canResize and self._scrollingTable:_GetColWidth(id) or col:_GetWidth()
		local hasText = col:_HasText()
		local textIndex = nil
		local numActionIcons, actionIconSize, actionIconShowOnHover = col:_GetActionIconInfo()
		local leftText = self:_GetDataLayoutRelativeFrame(i > 1 and private.colIdsTemp[i - 1], i > 1 and cols[i - 1], data, "LEFT")
		local rightText = self:_GetDataLayoutRelativeFrame(i < #cols and private.colIdsTemp[i + 1], i < #cols and cols[i + 1], data, "RIGHT")
		wipe(private.layoutTemp)
		local extraWidth = 0
		if not leftText and canResize then
			extraWidth = MORE_COL_WIDTH + Theme.GetColSpacing()
			private.LayoutTempInsertSpacing(MORE_COL_WIDTH + Theme.GetColSpacing())
		end

		if flag then
			local visible, color = false, nil
			if data then
				visible, color = col:_GetFlagState(data, self:IsMouseOver())
			end
			if visible then
				flag:Show()
				flag:SetHeight(self._frame:GetHeight() - FLAG_SPACING * 2)
				flag:SetColorTexture(color:GetFractionalRGBA())
				private.LayoutTempInsertSpacing(-FLAG_SPACING)
				private.LayoutTempInsertElementWithSpacing(flag, FLAG_SPACING)
			else
				flag:Hide()
			end
		end

		if expander then
			expander:Show()
			expander:ClearAllPoints()
			local visible, expanded, indentLevel, indentWidth, expanderSpacing, largeCaretIcons = false, false, 0, nil, nil, false
			if data then
				visible, expanded, indentLevel, indentWidth, expanderSpacing, largeCaretIcons = col:_GetExpanderState(data)
			end
			expanderSpacing = expanderSpacing or ICON_SPACING
			local expanderButton = self._buttons["_expander_"..id]
			if indentWidth or indentLevel < 0 then
				-- indent the expander itself
				private.LayoutTempInsertSpacing(indentWidth or (abs(indentLevel) * INDENT_WIDTH))
			end
			local texture = expanded and (largeCaretIcons and "iconPack.14x14/Caret/Down" or "iconPack.12x12/Caret/Down") or (largeCaretIcons and "iconPack.14x14/Caret/Right" or "iconPack.12x12/Caret/Right")
			local expanderWidth = TextureAtlas.GetWidth(texture)
			-- check if there is only spacing before the expander and the expander can fit within the spacing
			local firstLayoutElement = #private.layoutTemp == 1 and not leftText and private.layoutTemp[1] or nil
			if type(firstLayoutElement) == "number" and Math.Round(expanderWidth + expanderSpacing) <= Math.Round(firstLayoutElement) then
				private.layoutTemp[1] = private.layoutTemp[1] - expanderWidth - expanderSpacing
			end
			if visible then
				TextureAtlas.SetTextureAndSize(expander, texture)
				expander:Show()
				expanderButton:Show()
				private.LayoutTempInsertElementWithSpacing(expander, expanderSpacing)
			else
				expander:Hide()
				ScriptWrapper.Clear(expanderButton, "OnLeave")
				expanderButton:Hide()
				ScriptWrapper.Set(expanderButton, "OnLeave", private.ExpanderOnLeave, self)
				private.LayoutTempInsertSpacing(expanderWidth + expanderSpacing)
			end
			if not indentWidth and indentLevel > 0 then
				-- indent the other elements after the expander
				private.LayoutTempInsertSpacing(indentLevel * INDENT_WIDTH)
			end
		end

		if check then
			check:Show()
			check:ClearAllPoints()
			local visible = false
			if data then
				visible = col:_GetCheckState(data)
			end
			if visible then
				local checkWidth = check:GetWidth()
				-- check if there is only spacing before the check and the check can fit within the spacing
				local firstLayoutElement = #private.layoutTemp == 1 and not leftText and private.layoutTemp[1] or nil
				if type(firstLayoutElement) == "number" and Math.Round(checkWidth + ICON_SPACING) <= Math.Round(firstLayoutElement) then
					private.layoutTemp[1] = private.layoutTemp[1] - checkWidth - ICON_SPACING
				end
				check:Show()
				private.LayoutTempInsertElementWithSpacing(check, ICON_SPACING)
			else
				check:Hide()
			end
		end

		local iconTexture = icon and icon:GetTexture()
		if iconTexture then
			icon:Show()
			icon:ClearAllPoints()
			textIndex = #private.layoutTemp + 1
			private.LayoutTempInsertElementWithSpacing(icon, ICON_SPACING)
		end

		if hasText then
			text:Show()
			text:ClearAllPoints()
			textIndex = textIndex or #private.layoutTemp + 1
			private.LayoutTempInsertElementWithSpacing(text, ICON_SPACING)
		end

		if badge then
			badge:ClearAllPoints()
			private.LayoutTempInsertElementWithSpacing(badge, ICON_SPACING)
			local visible, value = false, nil
			if data then
				visible, value = col:_GetBadgeState(data)
			end
			if visible then
				badge:SetText(value)
				badge:Show()
			else
				badge:Hide()
			end
		end

		local hadVisibleRightActionIcon = false
		for j = 1, numActionIcons do
			local actionIconKey = "_action"..j.."_"..id
			local actionIcon = self._rotatingIcons[actionIconKey]
			local actionIconButton = self._buttons[actionIconKey]
			actionIcon:ClearAllPoints()
			actionIconButton:Show()
			local visible, texture, isLeft = false, nil, false
			if data and (not actionIconShowOnHover or self._state) then
				local _, shouldRotate = nil, nil
				visible, texture, isLeft, _, shouldRotate = col:_GetActionIcon(data, j, actionIconButton:IsMouseOver())
				if shouldRotate then
					actionIcon.ag:Play()
				else
					actionIcon.ag:Stop()
				end
			end
			if visible then
				hadVisibleRightActionIcon = hadVisibleRightActionIcon or not isLeft
				if isLeft and textIndex then
					-- check if there is only padding before the text, and if this icon can fit within that padding
					local firstLayoutElement = textIndex == 2 and not leftText and private.layoutTemp[1] or nil
					if textIndex == 2 and type(firstLayoutElement) == "number" and Math.Round(actionIconSize + ICON_SPACING) <= Math.Round(firstLayoutElement) then
						private.layoutTemp[1] = private.layoutTemp[1] - actionIconSize - ICON_SPACING
					end
					private.LayoutTempInsertElementWithSpacing(actionIcon, ICON_SPACING, textIndex)
					textIndex = textIndex + 2
				else
					private.LayoutTempInsertElementWithSpacing(actionIcon, ICON_SPACING)
				end
				actionIcon:Show()
				actionIconButton:SetMouseClickEnabled(true)
				if type(texture) == "string" and TextureAtlas.IsValid(texture) then
					TextureAtlas.SetTexture(actionIcon, texture)
				else
					actionIcon:SetTexture(texture)
				end
			else
				actionIcon:Hide()
				actionIconButton:SetMouseClickEnabled(false)
			end
		end

		local usedWidth = 0
		local lastElement = text
		if hasText then
			local didText = false
			local prevElement = nil
			local currentSpacing = 0
			local isInverted = false
			local primaryText = (isAscending and leftText) or (not isAscending and rightText) or nil
			local primarySide = isAscending and "LEFT" or "RIGHT"
			local secondarySide = isAscending and "RIGHT" or "LEFT"
			local spacingModifier = isAscending and 1 or -1
			for j = (isAscending and 1 or #private.layoutTemp), (isAscending and #private.layoutTemp or 1), (isAscending and 1 or -1) do
				local element = private.layoutTemp[j]
				if type(element) == "number" then
					currentSpacing = currentSpacing + element
				else
					if prevElement then
						isInverted = isInverted or (prevElement == text and not width and numActionIcons > 0)
						if isInverted then
							assert(isAscending)
							-- this is an icon to the right of the text and the text will need to expand, so invert the anchoring
							prevElement:SetPoint("RIGHT", element, "LEFT", -currentSpacing, 0)
						else
							element:SetPoint(primarySide, prevElement, secondarySide, currentSpacing * spacingModifier, 0)
						end
					elseif primaryText then
						element:SetPoint(primarySide, primaryText, secondarySide, (currentSpacing + Theme.GetColSpacing()) * spacingModifier, 0)
					else
						if element == text and not canResize then
							currentSpacing = currentSpacing + Theme.GetColSpacing() / 2
						end
						element:SetPoint(primarySide, (currentSpacing + Theme.GetColSpacing() / 2) * spacingModifier, 0)
					end
					-- don't use up width for elements to the right of the text which aren't visible
					if isAscending and (not didText or element:IsVisible()) then
						-- the text will resize to fill any remaining width, so don't count it in the used width
						if element ~= text then
							usedWidth = usedWidth + element:GetWidth()
						end
						usedWidth = usedWidth + currentSpacing
					end
					prevElement = element
					currentSpacing = 0
					didText = didText or element == text
				end
			end
			lastElement = prevElement
		else
			-- center the icon in the middle
			-- TODO: support other combinations
			assert(isAscending and icon and not badge and not expander)
			if leftText then
				text:SetPoint("LEFT", leftText, "RIGHT", Theme.GetColSpacing(), 0)
			else
				text:SetPoint("LEFT", Theme.GetColSpacing() / 2, 0)
			end
			icon:SetPoint("CENTER", text, extraWidth / 2, 0)
		end

		if col:_HasTooltip() then
			local tooltipFrame = self._buttons[id]
			tooltipFrame:Show()
			tooltipFrame:SetPoint("LEFT", iconTexture and icon or text)
			tooltipFrame:SetPoint("RIGHT", text)
		end

		if width then
			if hasText then
				if width == true then
					-- auto-width
					text:SetWidth(10000)
					width = text:GetStringWidth()
				elseif not rightText then
					-- leave an extra COL_SPACING / 2 of margin on the right of the last col
					extraWidth = extraWidth - Theme.GetColSpacing() / 2
				end
				text:SetWidth(width - usedWidth + extraWidth)
			else
				assert(width ~= true) -- auto-width requires the cell to have text
				text:SetWidth(width + extraWidth)
			end
		else
			-- we found the text which will expand to fill the extra width, so reverse the iterator direction (only once)
			assert(isAscending and not canResize)
			private.InwardIteratorReverse()
			if rightText then
				-- anchor the right of this the last element for this col to the left of the next one
				lastElement:SetPoint("RIGHT", rightText, "LEFT", -Theme.GetColSpacing(), 0)
			else
				-- this col is the last one, so anchor it to the right of our frame
				local spacing = Theme.GetColSpacing()
				if hadVisibleRightActionIcon and not rightText then
					-- a bit of extra spacing to the right of the last action icon
					spacing = spacing + ICON_SPACING
				end
				lastElement:SetPoint("RIGHT", -spacing, 0)
			end
		end
	end
end

function TableRow._GetDataLayoutRelativeFrame(self, id, col, data, side)
	if not id then
		return nil
	end
	assert(side == "LEFT" or side == "RIGHT")
	local numActionIcons, _, actionIconShowOnHover = col:_GetActionIconInfo()
	if data and (not actionIconShowOnHover or self._state) then
		for i = (side == "RIGHT" and 1 or numActionIcons), (side == "RIGHT" and numActionIcons or 1), (side == "RIGHT" and 1 or -1) do
			local actionIconKey = "_action"..i.."_"..id
			local actionIcon = self._rotatingIcons[actionIconKey]
			local actionIconButton = self._buttons[actionIconKey]
			local visible, _, isLeft = col:_GetActionIcon(data, i, actionIconButton:IsMouseOver())
			if visible and ((isLeft and side == "RIGHT") or (not isLeft and side == "LEFT")) then
				return actionIcon
			end
		end
	end
	local badge = self._texts["_badge_"..id]
	if side == "LEFT" and badge and badge:IsVisible() then
		return badge
	else
		return self._texts[id]
	end
end

function TableRow._LookupIconByButton(self, button)
	local key = Table.GetDistinctKey(self._buttons, button)
	local id = strmatch(key, "^_icon_(.+)$")
	local col = self._tableInfo:GetColById(id)
	return col, self._icons[id]
end

function TableRow._LookupActionIconByButton(self, button)
	local key = Table.GetDistinctKey(self._buttons, button)
	local iconIndex, id = strmatch(key, "^_action(%d+)_(.+)$")
	iconIndex = tonumber(iconIndex)
	assert(iconIndex and id)
	local col = self._tableInfo:GetColById(id)
	return col, iconIndex, self._rotatingIcons[key]
end

function TableRow._LookupTooltipByFrame(self, frame)
	local col = self._tableInfo:GetColById(Table.GetDistinctKey(self._buttons, frame))
	if not col:_HasTooltip() then
		return nil
	end
	local tooltip, noWrap, anchorFrame = col:_GetTooltip(self:GetData())
	local linkingDisabled = col:_GetTooltipLinkingDisabled()
	return tooltip, noWrap, anchorFrame, linkingDisabled
end



-- ============================================================================
-- TableRow - Local Script Handlers
-- ============================================================================

function private.MenuDialogIterator(self, prevIndex)
	if prevIndex == nil then
		return "HIDE", L["Hide Columns"], private.MenuDialogHideColIterator
	elseif prevIndex == "HIDE" then
		return "LOCK", self._scrollingTable:_IsColWidthLocked() and L["Unlock Column Width"] or L["Lock Column Width"]
	elseif prevIndex == "LOCK" then
		return "RESET", L["Reset Table"]
	else
		return self._tableInfo:_MenuDialogIterator(prevIndex)
	end
end

function private.GetMoreDialogColRowContent(col)
	local color = col:_IsHidden() and "TEXT+DISABLED" or "TEXT"
	local titleText = col:_GetTitle()
	if titleText then
		return Theme.GetColor(color):ColorText(titleText)
	end
	local titleIcon = col:_GetTitleIcon()
	if titleIcon then
		local textureKey = TextureAtlas.GetColoredKey(titleIcon, color)
		return TextureAtlas.GetTextureLink(textureKey)
	end
	error("Unknown title")
end

function private.MenuDialogHideColIterator(self, prevIndex)
	local foundPrevIndex = prevIndex == nil
	for _, col in ipairs(self._tableInfo:_GetCols()) do
		if foundPrevIndex and col:_CanHide() then
			return col:_GetId(), private.GetMoreDialogColRowContent(col)
		elseif col:_GetId() == prevIndex then
			foundPrevIndex = true
		end
	end
end

function private.MoreMenuDialogButtonOnClick(button, self, index1, index2, extra)
	assert(not extra and index1)
	if index1 == "HIDE" then
		assert(index2)
		local col = self._tableInfo:GetColById(index2)
		assert(col:_CanHide())
		self._scrollingTable:_ToggleColHide(index2)
		-- update the button text
		button:SetText(private.GetMoreDialogColRowContent(col))
			:Draw()
	elseif index1 == "LOCK" then
		assert(not index2)
		self._scrollingTable:GetBaseElement():HideDialog()
		self._scrollingTable:_ToogleColWidthLocked()
	elseif index1 == "RESET" then
		assert(not index2)
		self._scrollingTable:GetBaseElement():HideDialog()
		self._scrollingTable:_ResetContext()
	else
		self._tableInfo:_HandleMenuButtonClick(index1, index2)
	end
end

function private.MoreColOnClick(self, mouseButton)
	self._scrollingTable:GetBaseElement():ShowMenuDialog(self._frame, private.MenuDialogIterator, self, private.MoreMenuDialogButtonOnClick)
end

function private.HeaderColOnClick(button, mouseButton)
	local self = private.rowFrameLookup[button:GetParent()]
	if mouseButton == "LeftButton" then
		self._scrollingTable:_ToggleSort(Table.GetDistinctKey(self._buttons, button))
	end
end

function private.HeaderColOnEnter(button)
	local self = private.rowFrameLookup[button:GetParent()]
	local col = self._tableInfo:GetColById(Table.GetDistinctKey(self._buttons, button))
	local tooltip = col:_GetHeaderTooltip()
	if tooltip then
		Tooltip.Show(button, tooltip)
	end
end

function private.HeaderColOnLeave(button)
	local self = private.rowFrameLookup[button:GetParent()]
	local col = self._tableInfo:GetColById(Table.GetDistinctKey(self._buttons, button))
	if col:_GetHeaderTooltip() then
		Tooltip.Hide()
	end
end

function private.RowOnMouseDown(self, button)
	if button ~= "RightButton" then
		return
	end
	private.RowOnClick(self, "LeftButton")
end

function private.RowOnClick(self, mouseButton)
	if mouseButton == "LeftButton" and not self._scrollingTable._selectionDisabled then
		self._scrollingTable:SetSelection(self:GetData())
	end
	if self._scrollingTable:_IsSelected(self:GetData()) then
		self:SetHighlightState(self._scrollingTable._selectionDisabled and "selected" or "selectedHover")
	else
		self:SetHighlightState("hover")
	end
	self._scrollingTable:_HandleRowClick(self:GetData(), mouseButton)
end

function private.RowOnEnter(self)
	if self._scrollingTable:_IsSelected(self:GetData()) then
		self:SetHighlightState(self._scrollingTable._selectionDisabled and "selected" or "selectedHover")
	else
		self:SetHighlightState("hover")
	end
	if self._scrollingTable._rightClickToggle and IsMouseButtonDown("RightButton") then
		private.RowOnClick(self, "LeftButton")
	end
	local cursor = self._tableInfo:_GetCursor()
	if cursor then
		SetCursor(cursor)
	end
	ScriptWrapper.Set(self._frame, "OnUpdate", private.RowOnUpdate, self)
end

function private.RowOnLeave(self)
	for _, text in pairs(self._texts) do
		if text._hoverStart then
			Tooltip.Hide()
			text._hoverStart = nil
		end
	end
	ScriptWrapper.Clear(self._frame, "OnUpdate")
	if self:GetData() and self:IsVisible() then
		if self._scrollingTable:_IsSelected(self:GetData()) then
			self:SetHighlightState("selected")
		else
			self:SetHighlightState(nil)
		end
	end
	if self._tableInfo:_GetCursor() then
		ResetCursor()
	end
end

function private.RowOnUpdate(self)
	if not self._frame:IsMouseOver() then
		private.RowOnLeave(self)
		return
	end
	local tooltipText = nil
	for _, tooltipFrame in pairs(self._buttons) do
		if tooltipFrame:IsVisible() and tooltipFrame:IsMouseOver() then
			return
		end
	end
	for _, text in pairs(self._texts) do
		if text:IsMouseOver() and text:GetWidth() + 0.5 < text:GetUnboundedStringWidth() then
			text._hoverStart = text._hoverStart or GetTime()
			tooltipText = text
		else
			text._hoverStart = nil
		end
	end
	if not tooltipText or tooltipText:GetText() == "" or GetTime() - tooltipText._hoverStart < FULL_TEXT_TOOLTIP_DELAY_S then
		Tooltip.Hide()
		return
	end
	Tooltip.Show(tooltipText, tooltipText:GetText(), true)
end

function private.IconButtonOnEnter(button)
	local self = private.rowFrameLookup[button:GetParent()]
	self._frame:GetScript("OnEnter")(self._frame)
	local col, icon = self:_LookupIconByButton(button)
	local texture, tooltip = col:_GetIcon(self:GetData(), true)
	if type(texture) == "string" and TextureAtlas.IsValid(texture) then
		TextureAtlas.SetTexture(icon, texture)
	else
		icon:SetTexture(texture)
	end
	if tooltip then
		Tooltip.Show(button, tooltip)
	end
end

function private.IconButtonOnLeave(button)
	local self = private.rowFrameLookup[button:GetParent()]
	self._frame:GetScript("OnLeave")(self._frame)
	local col, icon = self:_LookupIconByButton(button)
	local texture, tooltip = col:_GetIcon(self:GetData(), false)
	if type(texture) == "string" and TextureAtlas.IsValid(texture) then
		TextureAtlas.SetTexture(icon, texture)
	else
		icon:SetTexture(texture)
	end
	if tooltip then
		Tooltip.Hide()
	end
end

function private.IconButtonOnClick(button, mouseButton)
	local self = private.rowFrameLookup[button:GetParent()]
	local col = self:_LookupIconByButton(button)
	col:_OnIconClick(self:GetData(), mouseButton)
end

function private.ActionIconButtonOnEnter(button)
	local self = private.rowFrameLookup[button:GetParent()]
	self._frame:GetScript("OnEnter")(self._frame)
	local col, iconIndex, icon = self:_LookupActionIconByButton(button)
	local visible, texture, _, tooltip = col:_GetActionIcon(self:GetData(), iconIndex, true)
	if not visible then
		return
	end
	if tooltip then
		Tooltip.Show(button, tooltip)
	end
	if type(texture) == "string" and TextureAtlas.IsValid(texture) then
		TextureAtlas.SetTexture(icon, texture)
	else
		icon:SetTexture(texture)
	end
end

function private.ActionIconButtonOnLeave(button)
	if not button:IsVisible() then
		-- ignore OnLeave if we just hid this button
		Tooltip.Hide()
		return
	end
	local self = private.rowFrameLookup[button:GetParent()]
	self._frame:GetScript("OnLeave")(self._frame)
	local col, iconIndex, icon, tooltip = self:_LookupActionIconByButton(button)
	local visible, texture = col:_GetActionIcon(self:GetData(), iconIndex, false)
	if tooltip then
		Tooltip.Hide()
	end
	if not visible then
		return
	end
	if type(texture) == "string" and TextureAtlas.IsValid(texture) then
		TextureAtlas.SetTexture(icon, texture)
	else
		icon:SetTexture(texture)
	end
end

function private.ActionIconButtonOnClick(button, mouseButton)
	local self = private.rowFrameLookup[button:GetParent()]
	local col, iconIndex = self:_LookupActionIconByButton(button)
	col:_OnActionButtonClick(self:GetData(), iconIndex, mouseButton)
end

function private.TooltipFrameOnEnter(frame)
	frame.isShowingTooltip = true
	local self = private.rowFrameLookup[frame:GetParent()]
	self._frame:GetScript("OnEnter")(self._frame)
	local tooltip, noWrap, anchorFrame = self:_LookupTooltipByFrame(frame)
	Tooltip.Show(anchorFrame and self._frame or frame, tooltip, noWrap)
end

function private.TooltipFrameOnLeave(frame)
	frame.isShowingTooltip = nil
	local self = private.rowFrameLookup[frame:GetParent()]
	self._frame:GetScript("OnLeave")(self._frame)
	Tooltip.Hide()
end

function private.TooltipFrameOnClick(frame, ...)
	local self = private.rowFrameLookup[frame:GetParent()]
	local tooltip, _, _, linkingDisabled = self:_LookupTooltipByFrame(frame)
	if not linkingDisabled and (IsShiftKeyDown() or IsControlKeyDown()) then
		local link = tooltip and ItemInfo.GetLink(tooltip)
		if link then
			if IsShiftKeyDown() then
				Wow.SafeItemRef(link)
			elseif IsControlKeyDown() then
				DressUpItemLink(link)
			end
			return
		end
	end
	self._frame:GetScript("OnClick")(self._frame, ...)
end

function private.ResizerOnEnter(button)
	local self = private.rowFrameLookup[button:GetParent()]
	local id = Table.GetDistinctKey(self._buttons, button)
	self._icons[id]:Show()
end

function private.ResizerOnLeave(button)
	local self = private.rowFrameLookup[button:GetParent()]
	local id = Table.GetDistinctKey(self._buttons, button)
	self._icons[id]:Hide()
end

function private.ResizerOnMouseDown(button, mouseButton)
	if mouseButton ~= "LeftButton" then
		return
	end
	ScriptWrapper.Set(button, "OnUpdate", private.ResizerOnUpdate)
	local self = private.rowFrameLookup[button:GetParent()]
	local id = Table.GetDistinctKey(self._buttons, button)
	local parentId = strmatch(id, "^_resizer_(.+)$")
	self._buttons[parentId]:StartSizing("RIGHT")
	self._icons[id]:SetPoint("TOPLEFT", self._buttons[parentId], "TOPLEFT", -Theme.GetColSpacing() / 2, 0)
end

function private.ResizerOnMouseUp(button, mouseButton)
	if mouseButton ~= "LeftButton" then
		return
	end
	ScriptWrapper.Clear(button, "OnUpdate")
	local self = private.rowFrameLookup[button:GetParent()]
	local id = Table.GetDistinctKey(self._buttons, button)
	local parentId = strmatch(id, "^_resizer_(.+)$")
	local parentButton = self._buttons[parentId]
	parentButton:StopMovingOrSizing()
	self:_LayoutHeaderRow()
	self._scrollingTable:_SetColWidth(parentId, Math.Round(parentButton:GetWidth()), true)
	self._icons[id]:SetPoint("TOPLEFT", button)
end

function private.ResizerOnClick(button, mouseButton)
	if mouseButton ~= "RightButton" then
		return
	end
	local self = private.rowFrameLookup[button:GetParent()]
	local id = Table.GetDistinctKey(self._buttons, button)
	local parentId = strmatch(id, "^_resizer_(.+)$")
	self._scrollingTable:_ResetColWidth(parentId)
end

function private.ResizerOnUpdate(button)
	local self = private.rowFrameLookup[button:GetParent()]
	local id = Table.GetDistinctKey(self._buttons, button)
	local parentId = strmatch(id, "^_resizer_(.+)$")
	local parentButton = self._buttons[parentId]
	self._scrollingTable:_SetColWidth(parentId, Math.Round(parentButton:GetWidth()))
end

function private.ExpanderOnLeave(self)
	self._frame:GetScript("OnEnter")(self._frame)
end

function private.ExpanderOnClick(self, mouseButton, ...)
	if mouseButton ~= "LeftButton" then
		return
	end
	self._frame:GetScript("OnDoubleClick")(self._frame, mouseButton, ...)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.LayoutTempInsertSpacing(spacing)
	assert(type(spacing) == "number")
	local length = #private.layoutTemp
	if type(private.layoutTemp[length]) == "number" then
		-- add to the previous spacing
		private.layoutTemp[length] = private.layoutTemp[length] + spacing
	else
		-- insert a new entry
		private.layoutTemp[length + 1] = spacing
	end
end

function private.LayoutTempInsertElementWithSpacing(element, spacing, index)
	assert(type(element) == "table" and type(spacing) == "number")
	if index then
		tinsert(private.layoutTemp, index, element)
		tinsert(private.layoutTemp, index + 1, spacing)
	else
		local length = #private.layoutTemp
		private.layoutTemp[length + 1] = element
		private.layoutTemp[length + 2] = spacing
	end
end


function private.InwardIterator(tbl)
	assert(type(tbl) == "table" and not next(private.inwardIteratorContext))
	private.inwardIteratorContext.tbl = tbl
	private.inwardIteratorContext.leftIndex = 1
	private.inwardIteratorContext.rightIndex = #tbl
	private.inwardIteratorContext.isAscending = true
	return private.InwardIteratorHelper
end

---Reverses the direction of the current inward iterator.
---@param tbl table The table being iterated over
function private.InwardIteratorReverse()
	assert(private.inwardIteratorContext.tbl)
	private.inwardIteratorContext.isAscending = not private.inwardIteratorContext.isAscending
end

function private.InwardIteratorHelper()
	if private.inwardIteratorContext.leftIndex > private.inwardIteratorContext.rightIndex then
		wipe(private.inwardIteratorContext)
		return
	end
	local index = nil
	if private.inwardIteratorContext.isAscending then
		-- iterating in ascending order
		index = private.inwardIteratorContext.leftIndex
		private.inwardIteratorContext.leftIndex = private.inwardIteratorContext.leftIndex + 1
	else
		-- iterating in descending order
		index = private.inwardIteratorContext.rightIndex
		private.inwardIteratorContext.rightIndex = private.inwardIteratorContext.rightIndex - 1
	end
	return index, private.inwardIteratorContext.tbl[index], private.inwardIteratorContext.isAscending
end
