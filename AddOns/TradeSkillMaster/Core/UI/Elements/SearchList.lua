-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- Search List UI Element Class.
-- A search list contains a list of recent or favorite searches. It is a subclass of the @{ScrollingTable} class.
-- @classmod SearchList

local TSM = select(2, ...) ---@type TSM
local SearchList = TSM.Include("LibTSMClass").DefineClass("SearchList", TSM.UI.ScrollingTable)
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(SearchList)
TSM.UI.SearchList = SearchList
local private = {}



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function SearchList.__init(self)
	self.__super:__init()
	self._onRowClickHandler = nil
	self._onFavoriteChangedHandler = nil
	self._onEditClickHandler = nil
	self._onDeleteHandler = nil
	self._query = nil
	self._editBtnHidden = false
end

function SearchList.Acquire(self)
	self._headerMode = "NONE"
	self.__super:Acquire()
	self:GetScrollingTableInfo()
		:NewColumn("name")
			:SetFont("BODY_BODY3_MEDIUM")
			:SetJustifyH("LEFT")
			:SetTextFunction(private.GetNameText)
			:SetActionIconInfo(3, 18, private.GetActionIcon, true)
			:SetActionIconClickHandler(private.OnActionIconClick)
			:DisableHiding()
			:Commit()
		:Commit()
end

function SearchList.Release(self)
	self._onRowClickHandler = nil
	self._onFavoriteChangedHandler = nil
	self._onEditClickHandler = nil
	self._onDeleteHandler = nil
	if self._query then
		self._query:Release()
		self._query = nil
	end
	self._editBtnHidden = false
	self.__super:Release()
end

--- Sets whether or not the edit button is hidden.
-- @tparam SearchList self The search list object
-- @tparam boolean hidden Whether or not the edit button is hidden
-- @treturn SearchList The search list object
function SearchList.SetEditButtonHidden(self, hidden)
	self._editBtnHidden = hidden
	return self
end

--- Sets the @{DatabaseQuery} source for this list.
-- This query is used to populate the entries in the search list.
-- @tparam SearchList self The search list object
-- @tparam DatabaseQuery query The query object
-- @tparam[opt=false] bool redraw Whether or not to redraw the search list
-- @treturn SearchList The search list object
function SearchList.SetQuery(self, query, redraw)
	if self._query then
		self._query:Release()
	end
	self._query = query
	self._query:SetUpdateCallback(private.QueryUpdateCallback, self)
	self:UpdateData(redraw)
	return self
end

--- Registers a script handler.
-- @tparam SearchList self The search list object
-- @tparam string script The script to register for (supported scripts: `OnRowClick`, `OnFavoriteChanged`,
-- `OnEditClick`, `OnDelete`)
-- @tparam function handler The script handler which will be called with the search list object followed by any
-- arguments to the script
-- @treturn SearchList The search list object
function SearchList.SetScript(self, script, handler)
	if script == "OnRowClick" then
		self._onRowClickHandler = handler
	elseif script == "OnFavoriteChanged" then
		self._onFavoriteChangedHandler = handler
	elseif script == "OnEditClick" then
		self._onEditClickHandler = handler
	elseif script == "OnDelete" then
		self._onDeleteHandler = handler
	else
		error("Unknown SearchList script: "..tostring(script))
	end
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function SearchList._UpdateData(self)
	wipe(self._data)
	for _, row in self._query:Iterator() do
		tinsert(self._data, row)
	end
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.GetNameText(self, data)
	return data:GetField("name")
end

function private.GetActionIcon(self, data, iconIndex, isMouseOver)
	if iconIndex == 1 then
		return true, data:GetField("isFavorite") and "iconPack.18x18/Star/Filled" or "iconPack.18x18/Star/Unfilled"
	elseif iconIndex == 2 then
		if self._editBtnHidden then
			return false, nil
		end
		return true, "iconPack.18x18/Edit"
	elseif iconIndex == 3 then
		return true, "iconPack.18x18/Delete"
	else
		error("Invalid iconIndex: "..tostring(iconIndex))
	end
end

function private.OnActionIconClick(self, data, iconIndex)
	if iconIndex == 1 then
		-- favorite
		self:_onFavoriteChangedHandler(data, not data:GetField("isFavorite"))
	elseif iconIndex == 2 then
		-- edit
		assert(not self._editBtnHidden)
		self:_onEditClickHandler(data)
	elseif iconIndex == 3 then
		-- delete
		self:_onDeleteHandler(data)
	else
		error("Invalid iconIndex: "..tostring(iconIndex))
	end
end

function private.QueryUpdateCallback(_, _, self)
	self:UpdateData(true)
end
