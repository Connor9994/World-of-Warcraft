-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local BankingTask = TSM.Include("LibTSMClass").DefineClass("BankingTask", TSM.TaskList.ItemTask)
local L = TSM.Include("Locale").GetTable()
local BagTracking = TSM.Include("Service.BagTracking")
local GuildTracking = TSM.Include("Service.GuildTracking")
TSM.TaskList.BankingTask = BankingTask
local private = {
	registeredCallbacks = false,
	currentlyMoving = nil,
	activeTasks = {},
}



-- ============================================================================
-- Class Meta Methods
-- ============================================================================

function BankingTask.__init(self, isGuildBank)
	self.__super:__init()
	self._isMoving = false
	self._isGuildBank = isGuildBank

	if not private.registeredCallbacks then
		TSM.Banking.RegisterFrameCallback(private.FrameCallback)
		private.registeredCallbacks = true
	end
end

function BankingTask.Acquire(self, doneHandler, category)
	self.__super:Acquire(doneHandler, category, self._isGuildBank and L["Get from Guild Bank"] or L["Get from Bank"])
	private.activeTasks[self] = true
end

function BankingTask.Release(self)
	self.__super:Release()
	self._isMoving = false
	private.activeTasks[self] = nil
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function BankingTask.OnButtonClick(self)
	private.currentlyMoving = self
	self._isMoving = true
	TSM.Banking.MoveToBag(self:GetItems(), private.MoveCallback)
	self:_UpdateState()
	TSM.TaskList.OnTaskUpdated()
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function BankingTask._UpdateState(self)
	local isOpen = nil
	if self._isGuildBank then
		isOpen = TSM.Banking.IsGuildBankOpen()
	else
		isOpen = TSM.Banking.IsBankOpen()
	end
	if not isOpen then
		return self:_SetButtonState(false, L["NOT OPEN"])
	end
	local canMove = false
	for itemString in pairs(self:GetItems()) do
		if self._isGuildBank and GuildTracking.GetQuantity(itemString) > 0 then
			canMove = true
			break
		elseif not self._isGuildBank then
			local _, bankQuantity, reagentBankQuantity = BagTracking.GetQuantities(itemString)
			if bankQuantity + reagentBankQuantity > 0 then
				canMove = true
				break
			end
		end
	end
	if self._isMoving then
		return self:_SetButtonState(false, L["MOVING"])
	elseif private.currentlyMoving then
		return self:_SetButtonState(false, L["BUSY"])
	elseif not canMove then
		return self:_SetButtonState(false, L["NO ITEMS"])
	else
		return self:_SetButtonState(true, L["MOVE"])
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.FrameCallback()
	for task in pairs(private.activeTasks) do
		task:Update()
	end
end

function private.MoveCallback(event, ...)
	local self = private.currentlyMoving
	if not self then
		return
	end
	assert(self._isMoving)
	if event == "MOVED" then
		local itemString, quantity = ...
		if self:_RemoveItem(itemString, quantity) then
			TSM.TaskList.OnTaskUpdated()
		end
		if not private.activeTasks[self] then
			-- this task finished
			private.currentlyMoving = nil
		end
	elseif event == "DONE" then
		self._isMoving = false
		private.currentlyMoving = nil
	elseif event == "PROGRESS" then
		-- pass
	else
		error("Unexpected event: "..tostring(event))
	end
end
