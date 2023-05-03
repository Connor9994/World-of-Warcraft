-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- SelectionList UI Element Class.
-- A selection list is a scrollable list of entries which allows selecting a single one. It is a subclass of the
-- @{ScrollingTable} class.
-- @classmod SelectionList

local TSM = select(2, ...) ---@type TSM
local Theme = TSM.Include("Util.Theme")
local SelectionList = TSM.Include("LibTSMClass").DefineClass("SelectionList", TSM.UI.ScrollingTable)
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(SelectionList)
TSM.UI.SelectionList = SelectionList
local private = {}



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function SelectionList.__init(self)
	self.__super:__init()
	self._selectedEntry = nil
	self._tooltipEnabled = false
	self._onEntrySelectedHandler = nil
end

function SelectionList.Acquire(self)
	self._headerMode = "NONE"
	self.__super:Acquire()
	self:SetSelectionDisabled(true)
	self:GetScrollingTableInfo()
		:NewColumn("text")
			:SetFont("BODY_BODY2")
			:SetJustifyH("LEFT")
			:SetTextFunction(private.GetText)
			:SetTooltipFunction(private.GetTooltip)
			:DisableHiding()
			:Commit()
		:Commit()
end

function SelectionList.Release(self)
	self._selectedEntry = nil
	self._tooltipEnabled = false
	self._onEntrySelectedHandler = nil
	self.__super:Release()
end

--- Sets the entries.
-- @tparam SelectionList self The selection list object
-- @tparam table entries A list of entries
-- @tparam string selectedEntry The selected entry
-- @treturn SelectionList The selection list object
function SelectionList.SetEntries(self, entries, selectedEntry)
	wipe(self._data)
	for _, entry in ipairs(entries) do
		tinsert(self._data, entry)
	end
	self._selectedEntry = selectedEntry
	return self
end

--- Enables or disables tooltips
-- @tparam SelectionList self The selection list object
-- @tparam boolean enabled Whether or not tooltips are enabled
-- @treturn SelectionList The selection list object
function SelectionList.SetTooltipEnabled(self, enabled)
	self._tooltipEnabled = enabled
	return self
end

--- Registers a script handler.
-- @tparam SelectionList self The selection list object
-- @tparam string script The script to register for (supported scripts: `OnEntrySelected`)
-- @tparam function handler The script handler which will be called with the selection list object followed by any
-- arguments to the script
-- @treturn SelectionList The selection list object
function SelectionList.SetScript(self, script, handler)
	if script == "OnEntrySelected" then
		self._onEntrySelectedHandler = handler
	else
		error("Unknown SelectionList script: "..tostring(script))
	end
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function SelectionList._HandleRowClick(self, data)
	if self._onEntrySelectedHandler then
		self:_onEntrySelectedHandler(data)
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetText(self, data)
	return Theme.GetColor(data == self._selectedEntry and "INDICATOR" or "TEXT"):ColorText(data)
end

function private.GetTooltip(self, data)
	if not self._tooltipEnabled then
		return
	end
	return data
end
