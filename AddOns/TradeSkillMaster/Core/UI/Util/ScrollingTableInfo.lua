-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ObjectPool = TSM.Include("Util.ObjectPool")
local Theme = TSM.Include("Util.Theme")
local ScrollingTableInfo = TSM.Include("LibTSMClass").DefineClass("ScrollingTableInfo")
local ScrollingTableColumnInfo = TSM.Include("LibTSMClass").DefineClass("ScrollingTableColumnInfo")
TSM.UI.Util.ScrollingTableInfo = ScrollingTableInfo
TSM.UI.Util.ScrollingTableColumnInfo = ScrollingTableColumnInfo
ScrollingTableInfo._COL_INFO_POOL = ObjectPool.New("SCROLLING_TABLE_COL_INFO", ScrollingTableColumnInfo, 1)



-- ============================================================================
-- ScrollingTableColumnInfo Class
-- ============================================================================

function ScrollingTableColumnInfo.__init(self)
	-- general
	self._tableInfo = nil
	self._id = nil
	self._element = nil
	self._tooltipLinkingDisabled = false
	self._expanderStateFunc = nil
	self._flagStateFunc = nil
	self._checkStateFunc = nil
	self._badgeStateFunc = nil
	self._iconHoverEnabled = false
	self._iconClickHandler = nil
	self._numActionIcons = 0
	self._actionIconSize = nil
	self._actionIconFunc = nil
	self._actionIconShowOnHover = false
	self._actionIconClickHandler = nil
	self._hidden = false
	self._hidingDisabled = false
	-- style
	self._width = nil
	self._justifyH = nil
	self._iconSize = nil
	self._font = nil
	self._headerIndent = nil
	-- header
	self._title = nil
	self._titleIcon = nil
	self._headerTooltip = nil
	-- content functions
	self._textFunc = nil
	self._iconFunc = nil
	self._tooltipFunc = nil
end

function ScrollingTableColumnInfo._Acquire(self, tableInfo, id, element)
	self._tableInfo = tableInfo
	self._id = id
	self._element = element
end

function ScrollingTableColumnInfo._Release(self)
	self._tableInfo = nil
	self._id = nil
	self._element = nil
	self._tooltipLinkingDisabled = false
	self._expanderStateFunc = nil
	self._flagStateFunc = nil
	self._checkStateFunc = nil
	self._badgeStateFunc = nil
	self._iconHoverEnabled = false
	self._iconClickHandler = nil
	self._numActionIcons = 0
	self._actionIconSize = nil
	self._actionIconFunc = nil
	self._actionIconShowOnHover = false
	self._actionIconClickHandler = nil
	self._hidden = false
	self._hidingDisabled = false
	self._width = nil
	self._justifyH = nil
	self._iconSize = nil
	self._font = nil
	self._headerIndent = nil
	self._title = nil
	self._titleIcon = nil
	self._headerTooltip = nil
	self._textFunc = nil
	self._iconFunc = nil
	self._tooltipFunc = nil
end

function ScrollingTableColumnInfo.SetTitle(self, title)
	self._title = title
	return self
end

function ScrollingTableColumnInfo.SetTitleIcon(self, icon)
	self._titleIcon = icon
	return self
end

function ScrollingTableColumnInfo.SetWidth(self, width)
	assert(type(width) == "number")
	self._width = width
	return self
end

function ScrollingTableColumnInfo.SetAutoWidth(self)
	self._width = true
	return self
end

function ScrollingTableColumnInfo.SetJustifyH(self, justifyH)
	self._justifyH = justifyH
	return self
end

function ScrollingTableColumnInfo.SetIconSize(self, iconSize)
	self._iconSize = iconSize
	return self
end

function ScrollingTableColumnInfo.SetIconHoverEnabled(self, enabled)
	self._iconHoverEnabled = enabled
	return self
end

function ScrollingTableColumnInfo.SetIconClickHandler(self, handler)
	self._iconClickHandler = handler
	return self
end

function ScrollingTableColumnInfo.SetFont(self, font)
	self._font = font
	return self
end

function ScrollingTableColumnInfo.SetHeaderIndent(self, headerIndent)
	self._headerIndent = headerIndent
	return self
end

function ScrollingTableColumnInfo.SetTextFunction(self, func)
	self._textFunc = func
	return self
end

function ScrollingTableColumnInfo.SetIconFunction(self, func)
	self._iconFunc = func
	return self
end

function ScrollingTableColumnInfo.SetHeaderTooltip(self, tooltip)
	self._headerTooltip = tooltip
	return self
end

function ScrollingTableColumnInfo.SetTooltipFunction(self, func)
	self._tooltipFunc = func
	return self
end

function ScrollingTableColumnInfo.SetTooltipLinkingDisabled(self, disabled)
	self._tooltipLinkingDisabled = disabled
	return self
end

function ScrollingTableColumnInfo.SetExpanderStateFunction(self, func)
	self._expanderStateFunc = func
	return self
end

function ScrollingTableColumnInfo.SetFlagStateFunction(self, func)
	self._flagStateFunc = func
	return self
end

function ScrollingTableColumnInfo.SetCheckStateFunction(self, func)
	self._checkStateFunc = func
	return self
end

function ScrollingTableColumnInfo.SetBadgeStateFunction(self, func)
	self._badgeStateFunc = func
	return self
end

function ScrollingTableColumnInfo.SetActionIconInfo(self, numIcons, iconSize, func, showOnHover)
	self._numActionIcons = numIcons
	self._actionIconSize = iconSize
	self._actionIconFunc = func
	self._actionIconShowOnHover = showOnHover
	return self
end

function ScrollingTableColumnInfo.SetActionIconClickHandler(self, handler)
	self._actionIconClickHandler = handler
	return self
end

function ScrollingTableColumnInfo.DisableHiding(self)
	assert(not self._hidden)
	self._hidingDisabled = true
	return self
end

function ScrollingTableColumnInfo.Commit(self)
	return self._tableInfo
end

function ScrollingTableColumnInfo._GetId(self)
	return self._id
end

function ScrollingTableColumnInfo._IsHidden(self)
	return self._hidden
end

function ScrollingTableColumnInfo._CanHide(self)
	return not self._hidingDisabled
end

function ScrollingTableColumnInfo._GetTitle(self)
	return self._title
end

function ScrollingTableColumnInfo._GetTitleIcon(self)
	return self._titleIcon
end

function ScrollingTableColumnInfo._GetWidth(self)
	return self._width
end

function ScrollingTableColumnInfo._GetJustifyH(self)
	return self._justifyH
end

function ScrollingTableColumnInfo._GetIconSize(self)
	return self._iconSize
end

function ScrollingTableColumnInfo._IsIconHoverEnabled(self)
	return self._iconHoverEnabled
end

function ScrollingTableColumnInfo._OnIconClick(self, context, mouseButton)
	self._iconClickHandler(self._element, context, mouseButton)
end

function ScrollingTableColumnInfo._GetWowFont(self)
	return Theme.GetFont(self._font):GetWowFont()
end

function ScrollingTableColumnInfo._GetHeaderIndent(self)
	return self._headerIndent
end

function ScrollingTableColumnInfo._HasText(self)
	return self._textFunc and true or false
end

function ScrollingTableColumnInfo._GetText(self, context)
	return self:_GetValueHelper("text", context)
end

function ScrollingTableColumnInfo._GetIcon(self, context, isMouseOver)
	return self:_GetValueHelper("icon", context, isMouseOver)
end

function ScrollingTableColumnInfo._GetHeaderTooltip(self)
	return self._headerTooltip
end

function ScrollingTableColumnInfo._HasTooltip(self)
	return self._tooltipFunc and true or false
end

function ScrollingTableColumnInfo._GetTooltip(self, context)
	return self:_GetValueHelper("tooltip", context)
end

function ScrollingTableColumnInfo._GetTooltipLinkingDisabled(self)
	return self._tooltipLinkingDisabled
end

function ScrollingTableColumnInfo._HasExpander(self)
	return self._expanderStateFunc and true or false
end

function ScrollingTableColumnInfo._GetExpanderState(self, context)
	if not self._expanderStateFunc then
		return
	end
	return self:_GetValueHelper("expanderState", context)
end

function ScrollingTableColumnInfo._HasFlag(self)
	return self._flagStateFunc and true or false
end

function ScrollingTableColumnInfo._GetFlagState(self, context, isMouseOverRow)
	if not self._flagStateFunc then
		return
	end
	return self:_GetValueHelper("flagState", context, isMouseOverRow)
end

function ScrollingTableColumnInfo._HasCheck(self)
	return self._checkStateFunc and true or false
end

function ScrollingTableColumnInfo._GetCheckState(self, context)
	if not self._checkStateFunc then
		return
	end
	return self:_GetValueHelper("checkState", context)
end

function ScrollingTableColumnInfo._HasBadge(self)
	return self._badgeStateFunc and true or false
end

function ScrollingTableColumnInfo._GetBadgeState(self, context)
	if not self._badgeStateFunc then
		return
	end
	return self:_GetValueHelper("badgeState", context)
end

function ScrollingTableColumnInfo._GetActionIconInfo(self)
	return self._numActionIcons, self._actionIconSize, self._actionIconShowOnHover
end

function ScrollingTableColumnInfo._GetActionIcon(self, context, index, isMouseOver)
	if not self._actionIconFunc then
		return
	end
	return self:_GetValueHelper("actionIcon", context, index, isMouseOver)
end

function ScrollingTableColumnInfo._OnActionButtonClick(self, context, index, mouseButton)
	if self._actionIconClickHandler then
		self._actionIconClickHandler(self._element, context, index, mouseButton)
	end
end

function ScrollingTableColumnInfo._GetValueHelper(self, dataType, context, ...)
	if dataType == "text" then
		if not self._textFunc then
			return ""
		end
		return self._textFunc(self._element, context)
	elseif dataType == "icon" then
		local isMouseOver = ...
		return self._iconFunc(self._element, context, isMouseOver)
	elseif dataType == "tooltip" then
		if not self._tooltipFunc then
			return nil
		end
		return self._tooltipFunc(self._element, context)
	elseif dataType == "expanderState" then
		return self._expanderStateFunc(self._element, context)
	elseif dataType == "flagState" then
		local isMouseOverRow = ...
		return self._flagStateFunc(self._element, context, isMouseOverRow)
	elseif dataType == "checkState" then
		return self._checkStateFunc(self._element, context)
	elseif dataType == "badgeState" then
		return self._badgeStateFunc(self._element, context)
	elseif dataType == "actionIcon" then
		local index, isMouseOver = ...
		return self._actionIconFunc(self._element, context, index, isMouseOver)
	else
		error("Unknown dataType: "..tostring(dataType))
	end
end

function ScrollingTableColumnInfo._SetHidden(self, hidden)
	assert(not self._hidingDisabled)
	self._hidden = hidden
	self._tableInfo:_UpdateHiddenCols()
end



-- ============================================================================
-- ScrollingTableInfo Class
-- ============================================================================

function ScrollingTableInfo.__init(self)
	self._cols = {}
	self._visibleCols = {}
	self._hiddenCols = {}
	self._element = nil
	self._cursor = nil
	self._menuIterator = nil
	self._menuClickHandler = nil
end

function ScrollingTableInfo._Acquire(self, element)
	self._element = element
end

function ScrollingTableInfo._Release(self)
	for _, col in ipairs(self._cols) do
		col:_Release()
		self._COL_INFO_POOL:Recycle(col)
	end
	wipe(self._cols)
	wipe(self._visibleCols)
	wipe(self._hiddenCols)
	self._element = nil
	self._cursor = nil
	self._menuIterator = nil
	self._menuClickHandler = nil
end

function ScrollingTableInfo.NewColumn(self, id, prepend)
	local col = self._COL_INFO_POOL:Get()
	col:_Acquire(self, id, self._element)
	if prepend then
		tinsert(self._cols, 1, col)
	else
		tinsert(self._cols, col)
	end
	return col
end

function ScrollingTableInfo.RemoveColumn(self, id)
	local index = nil
	for i, col in ipairs(self._cols) do
		if col:_GetId() == id then
			assert(not index)
			index = i
		end
	end
	assert(index)
	local col = tremove(self._cols, index)
	col:_Release()
	self._COL_INFO_POOL:Recycle(col)
	self:_UpdateHiddenCols()
	return self
end

function ScrollingTableInfo.SetCursor(self, cursor)
	self._cursor = cursor
	return self
end

function ScrollingTableInfo.SetMenuInfo(self, iterator, clickHandler)
	if not iterator and not clickHandler then
		self._menuIterator = nil
		self._menuClickHandler = nil
		return self
	end
	assert(type(iterator) == "function" and type(clickHandler) == "function")
	self._menuIterator = iterator
	self._menuClickHandler = clickHandler
	return self
end

function ScrollingTableInfo.Commit(self)
	self:_UpdateHiddenCols()
	return self._element:CommitTableInfo()
end

function ScrollingTableInfo.GetColById(self, id)
	for _, col in ipairs(self._cols) do
		if col:_GetId() == id then
			return col
		end
	end
	error("Unknown id: "..tostring(id))
end

function ScrollingTableInfo._GetCols(self)
	return self._cols
end

function ScrollingTableInfo._ColIterator(self)
	return ipairs(self._cols)
end

function ScrollingTableInfo._VisibleColIterator(self)
	return ipairs(self._visibleCols)
end

function ScrollingTableInfo._HiddenColIterator(self)
	return ipairs(self._hiddenCols)
end

function ScrollingTableInfo._GetVisibleCols(self)
	return self._visibleCols
end

function ScrollingTableInfo._GetCursor(self)
	return self._cursor
end

function ScrollingTableInfo._UpdateHiddenCols(self)
	wipe(self._visibleCols)
	wipe(self._hiddenCols)
	for _, col in ipairs(self._cols) do
		if col:_IsHidden() then
			tinsert(self._hiddenCols, col)
		else
			tinsert(self._visibleCols, col)
		end
	end
end

function ScrollingTableInfo._MenuDialogIterator(self, prevIndex)
	if not self._menuIterator then
		return
	end
	return self._menuIterator(self._element, prevIndex)
end

function ScrollingTableInfo._HandleMenuButtonClick(self, index1, index2)
	assert(self._menuClickHandler)
	self._menuClickHandler(self._element, index1, index2)
end
