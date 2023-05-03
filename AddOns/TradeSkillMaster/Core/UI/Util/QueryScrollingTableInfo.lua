-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ObjectPool = TSM.Include("Util.ObjectPool")
local QueryScrollingTableInfo = TSM.Include("LibTSMClass").DefineClass("QueryScrollingTableInfo", TSM.UI.Util.ScrollingTableInfo)
local QueryScrollingTableColumnInfo = TSM.Include("LibTSMClass").DefineClass("QueryScrollingTableColumnInfo", TSM.UI.Util.ScrollingTableColumnInfo)
TSM.UI.Util.QueryScrollingTableInfo = QueryScrollingTableInfo
QueryScrollingTableInfo._COL_INFO_POOL = ObjectPool.New("QUERY_SCROLLING_TABLE_COL_INFO", QueryScrollingTableColumnInfo, 1)



-- ============================================================================
-- QueryScrollingTableColumnInfo Class
-- ============================================================================

function QueryScrollingTableColumnInfo.__init(self)
	self.__super:__init()
	self._textField = nil
	self._iconField = nil
	self._tooltipField = nil
	self._sortField = nil
end

function QueryScrollingTableColumnInfo._Release(self)
	self.__super:_Release()
	self._textField = nil
	self._iconField = nil
	self._tooltipField = nil
	self._sortField = nil
end

function QueryScrollingTableColumnInfo.SetTextFunction(self)
	error("This method is not allowed for QueryScrollingTableColumnInfo")
end

function QueryScrollingTableColumnInfo.SetIconFunction(self, func)
	error("This method is not allowed for QueryScrollingTableColumnInfo")
end

function QueryScrollingTableColumnInfo.SetTooltipFunction(self, func)
	error("This method is not allowed for QueryScrollingTableColumnInfo")
end

function QueryScrollingTableColumnInfo.SetTextInfo(self, field, func)
	self._textField = field
	self._textFunc = func
	return self
end

function QueryScrollingTableColumnInfo.SetIconInfo(self, field, func)
	self._iconField = field
	self._iconFunc = func
	return self
end

function QueryScrollingTableColumnInfo.SetTooltipInfo(self, field, func)
	self._tooltipField = field
	self._tooltipFunc = func
	return self
end

function QueryScrollingTableColumnInfo.SetSortInfo(self, field)
	self._sortField = field
	return self
end

function QueryScrollingTableColumnInfo._GetSortField(self)
	return self._sortField
end

function QueryScrollingTableColumnInfo._HasText(self)
	return (self._textField or self._textFunc) and true or false
end

function QueryScrollingTableColumnInfo._HasTooltip(self)
	return (self._tooltipField or self._tooltipFunc) and true or false
end

function QueryScrollingTableColumnInfo._GetValueHelper(self, dataType, context, ...)
	local value = self._element._query:GetResultRowByUUID(context)
	local field, func = nil, nil
	if dataType == "text" then
		field = self._textField
		func = self._textFunc
	elseif dataType == "icon" then
		field = self._iconField
		func = self._iconFunc
	elseif dataType == "tooltip" then
		field = self._tooltipField
		func = self._tooltipFunc
	elseif dataType == "expanderState" then
		return self._expanderStateFunc(self._element, value)
	elseif dataType == "badgeState" then
		return self._badgeStateFunc(self._element, value)
	elseif dataType == "actionIcon" then
		local index, isMouseOver = ...
		return self._actionIconFunc(self._element, context, index, isMouseOver)
	else
		error("Unknown dataType: "..tostring(dataType))
	end

	if field then
		value = value:GetField(field)
	end
	if func then
		value = func(value, ...)
	end
	return value
end



-- ============================================================================
-- QueryScrollingTableInfo Class
-- ============================================================================

function QueryScrollingTableInfo._IsSortEnabled(self)
	for _, col in ipairs(self._cols) do
		if col:_GetSortField() then
			return true
		end
	end
	return false
end

function QueryScrollingTableInfo._GetSortFieldById(self, id)
	for _, col in ipairs(self._cols) do
		if col:_GetId() == id then
			return col:_GetSortField()
		end
	end
	error("Unknown id: "..tostring(id))
end

function QueryScrollingTableInfo._GetIdBySortField(self, field)
	for _, col in ipairs(self._cols) do
		if col:_GetSortField() == field then
			return col:_GetId()
		end
	end
	error("Unknown field: "..tostring(field))
end
