-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Environment = TSM.Include("Environment")
local SniperScrollingTable = TSM.Include("LibTSMClass").DefineClass("SniperScrollingTable", TSM.UI.AuctionScrollingTable)
local UIElements = TSM.Include("UI.UIElements")
UIElements.Register(SniperScrollingTable)
TSM.UI.SniperScrollingTable = SniperScrollingTable
local private = {}



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function SniperScrollingTable.__init(self)
	self.__super:__init()

	self._highestBrowseId = 0
	self._onRowRemovedHandler = nil
end

function SniperScrollingTable.Acquire(self)
	self.__super:Acquire()
	self:GetScrollingTableInfo()
		:NewColumn("icon", true)
			:SetTitleIcon("iconPack.14x14/Attention")
			:SetIconSize(14)
			:SetIconHoverEnabled(true)
			:SetIconClickHandler(private.RemoveIconClickHandler)
			:SetIconFunction(private.RemoveIconFunction)
			:SetJustifyH("CENTER")
			:SetFont("BODY_BODY3")
			:Commit()
		:RemoveColumn("timeLeft")
		:Commit()
	if not Environment.IsRetail() then
		self._sortCol = "icon"
		self._sortAscending = true
	end
	self._highestBrowseId = 0
end

function SniperScrollingTable.Release(self)
	self._onRowRemovedHandler = nil
	self.__super:Release()
end

--- Registers a script handler.
-- @tparam SniperScrollingTable self The sniper scrolling table object
-- @tparam string script The script to register for (supported scripts: `OnRowRemoved`)
-- @tparam function handler The script handler which will be called with the sniper scrolling table object followed by
-- any arguments to the script
-- @treturn SniperScrollingTable The sniper scrolling table object
function SniperScrollingTable.SetScript(self, script, handler)
	if script == "OnRowRemoved" then
		self._onRowRemovedHandler = handler
	else
		self.__super:SetScript(script, handler)
	end
	return self
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function SniperScrollingTable._UpdateData(self, queryChanged)
	self.__super:_UpdateData(queryChanged)
	self._highestBrowseId = 0
	for _, row in ipairs(self._data) do
		if row:IsSubRow() then
			local _, _, browseId = row:GetListingInfo()
			self._highestBrowseId = max(self._highestBrowseId, browseId or 0)
		end
	end
end

function SniperScrollingTable._GetSortValue(self, row, id, isAscending)
	if id == "icon" then
		if not row:IsSubRow() then
			return 0
		end
		local _, _, browseId = row:GetListingInfo()
		return -browseId
	else
		return self.__super:_GetSortValue(row, id, isAscending)
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.RemoveIconClickHandler(self, subRow)
	if not subRow:IsSubRow() then
		local baseItemString = subRow:GetBaseItemString()
		subRow = self._firstSubRowByItem[baseItemString] or subRow
	end
	if self._onRowRemovedHandler then
		self:_onRowRemovedHandler(subRow)
	end
end

function private.RemoveIconFunction(self, row, isMouseOver)
	if isMouseOver then
		return "iconPack.14x14/Close/Default"
	end
	local isRecent = true
	if row:IsSubRow() then
		local _, _, browseId = row:GetListingInfo()
		isRecent = self._highestBrowseId == browseId
	end
	return isRecent and "iconPack.14x14/Attention" or "iconPack.14x14/Close/Default"
end
