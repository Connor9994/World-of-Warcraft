-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local SendMailTask = TSM.Include("LibTSMClass").DefineClass("SendMailTask", TSM.TaskList.ItemTask)
local L = TSM.Include("Locale").GetTable()
local DefaultUI = TSM.Include("Service.DefaultUI")
TSM.TaskList.SendMailTask = SendMailTask
local private = {
	registeredCallbacks = false,
	currentlySending = nil,
	activeTasks = {},
}



-- ============================================================================
-- Class Meta Methods
-- ============================================================================

function SendMailTask.__init(self)
	self.__super:__init()
	self._target = nil
	self._isSending = false
	if not private.registeredCallbacks then
		DefaultUI.RegisterMailVisibleCallback(private.FrameCallback)
		private.registeredCallbacks = true
	end
end

function SendMailTask.Acquire(self, doneHandler, category)
	self.__super:Acquire(doneHandler, category, "")
	private.activeTasks[self] = true
end

function SendMailTask.Release(self)
	self.__super:Release()
	self._target = nil
	self._isSending = false
	private.activeTasks[self] = nil
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

function SendMailTask.SetTarget(self, target)
	self._target = target
	self._desc = format(L["Mail to %s"], target)
end

function SendMailTask.OnButtonClick(self)
	private.currentlySending = self
	self._isSending = true
	TSM.Mailing.Send.StartSending(private.SendCallback, self._target, "", "", 0, self:GetItems())
	self:_UpdateState()
	TSM.TaskList.OnTaskUpdated()
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function SendMailTask._UpdateState(self)
	if not DefaultUI.IsMailVisible() then
		return self:_SetButtonState(false, L["NOT OPEN"])
	elseif self._isSending then
		return self:_SetButtonState(false, L["SENDING"])
	elseif private.currentlySending then
		return self:_SetButtonState(false, L["BUSY"])
	else
		return self:_SetButtonState(true, strupper(L["Send"]))
	end
end



-- ============================================================================
-- Private Helper Methods
-- ============================================================================

function private.FrameCallback()
	for task in pairs(private.activeTasks) do
		task:Update()
	end
end

function private.SendCallback()
	local self = private.currentlySending
	if not self then
		return
	end
	assert(self._isSending)
	self._isSending = false
	private.currentlySending = nil
	for itemString, quantity in pairs(self:GetItems()) do
		self:_RemoveItem(itemString, quantity)
	end
end
