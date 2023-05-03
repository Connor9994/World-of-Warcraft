-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ShoppingTask = TSM.Include("LibTSMClass").DefineClass("ShoppingTask", TSM.TaskList.ItemTask)
local L = TSM.Include("Locale").GetTable()
local Delay = TSM.Include("Util.Delay")
local Log = TSM.Include("Util.Log")
TSM.TaskList.ShoppingTask = ShoppingTask
local private = {
	initialized = false,
	currentlyScanning = nil,
	activeTasks = {},
	updateTimer = nil,
}



-- ============================================================================
-- Class Meta Methods
-- ============================================================================

function ShoppingTask.__init(self, searchType)
	self.__super:__init()
	self._isScanning = false
	self._isShowingResults = false
	assert(searchType == "NORMAL" or searchType == "DISENCHANT" or searchType == "CRAFTING")
	self._searchType = searchType

	if not private.initialized then
		private.updateTimer = Delay.CreateTimer("SHOPPING_TASK_UPDATE", private.UIUpdateCallbackDelayed)
		TSM.UI.AuctionUI.RegisterUpdateCallback(private.UIUpdateCallback)
		TSM.UI.AuctionUI.Shopping.RegisterUpdateCallback(private.UIUpdateCallback)
		private.initialized = true
	end
end

function ShoppingTask.Acquire(self, doneHandler, category)
	local name = nil
	if self._searchType == "NORMAL" then
		name = L["Buy from AH"]
	elseif self._searchType == "DISENCHANT" then
		name = L["Buy from AH (Disenchant)"]
	elseif self._searchType == "CRAFTING" then
		name = L["Buy from AH (Crafting)"]
	else
		error("Invalid searchType: "..tostring(self._searchType))
	end
	self.__super:Acquire(doneHandler, category, name)
	private.activeTasks[self] = true
end

function ShoppingTask.Release(self)
	self.__super:Release()
	self._isScanning = false
	self._isShowingResults = false
	private.activeTasks[self] = nil
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function ShoppingTask.OnButtonClick(self)
	private.currentlyScanning = self
	TSM.UI.AuctionUI.Shopping.StartGatheringSearch(self:GetItems(), private.StateCallback, private.BuyCallback, self._searchType)
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function ShoppingTask._UpdateState(self)
	if not TSM.UI.AuctionUI.Shopping.IsVisible() then
		return self:_SetButtonState(false, L["NOT OPEN"])
	elseif self._isScanning then
		return self:_SetButtonState(false, L["SCANNING"])
	elseif self._isShowingResults then
		return self:_SetButtonState(false, L["BUY"])
	elseif TSM.UI.AuctionUI.IsScanning() or private.currentlyScanning then
		return self:_SetButtonState(false, L["AH BUSY"])
	else
		return self:_SetButtonState(true, L["SCAN ALL"])
	end
end

function ShoppingTask._OnSearchStateChanged(self, state)
	if state == "SCANNING" then
		self._isScanning = true
		self._isShowingResults = false
	elseif state == "RESULTS" then
		self._isScanning = false
		self._isShowingResults = true
	elseif state == "DONE" then
		assert(private.currentlyScanning == self)
		private.currentlyScanning = nil
		self._isScanning = false
		self._isShowingResults = false
	else
		error("Unexpected state: "..tostring(state))
	end
	self:Update()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.UIUpdateCallback()
	private.updateTimer:RunForFrames(1)
end

function private.UIUpdateCallbackDelayed()
	for task in pairs(private.activeTasks) do
		task:Update()
	end
end

function private.StateCallback(state)
	Log.Info("State changed (%s)", state)
	local self = private.currentlyScanning
	assert(self)
	self:_OnSearchStateChanged(state)
	private.UIUpdateCallback()
end

function private.BuyCallback(itemString, quantity)
	Log.Info("Bought item (%s,%d)", itemString, quantity)
	local self = private.currentlyScanning
	assert(self)
	if self:_RemoveItem(itemString, quantity) then
		TSM.TaskList.OnTaskUpdated()
	end
end
