-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Delay = TSM.Init("Util.Delay") ---@class Util.Delay
local Log = TSM.Include("Util.Log")
local DelayTimer = TSM.Include("LibTSMClass").DefineClass("DelayTimer") ---@class DelayTimer
local private = {
	activeTimers = {},
	frameNumber = 0,
	frame = nil,
}
local CALLBACK_TIME_WARNING_THRESHOLD = 20
local MIN_TIME_DURATION = 0.0001
local MIN_FRAMES = 1



-- ============================================================================
-- Module Loading
-- ============================================================================

Delay:OnModuleLoad(function()
	private.frame = CreateFrame("Frame")
	private.frame:SetScript("OnUpdate", private.ProcessDelays)
	private.frame:Show()
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

---Creates a new timer.
---@param label string A label which is used for debugging purposes
---@param callback function The function to call when the timer expires
---@return DelayTimer
function Delay.CreateTimer(label, callback)
	assert(type(label) == "string" and type(callback) == "function")
	return DelayTimer(label, callback)
end



-- ============================================================================
-- DelayTimer Class Methods
-- ============================================================================

function DelayTimer:__init(name, callback)
	self._name = name
	self._callback = callback
	self._endTime = nil
	self._endFrame = nil
end

function DelayTimer:RunForTime(seconds)
	if self._endTime then
		-- Already running
		return
	end
	assert(not self._endFrame)
	self._endTime = GetTime() + max(seconds, MIN_TIME_DURATION)
	assert(not private.activeTimers[self])
	private.activeTimers[self] = true
end

function DelayTimer:RunForFrames(frames)
	if self._endFrame then
		-- Already running
		return
	end
	assert(not self._endTime)
	self._endFrame = private.frameNumber + max(frames, MIN_FRAMES)
	assert(not private.activeTimers[self])
	private.activeTimers[self] = true
end

function DelayTimer:Cancel()
	if not self._endTime and not self._endFrame then
		-- Not running
		return
	end
	assert(private.activeTimers[self])
	private.activeTimers[self] = nil
	self._endTime = nil
	self._endFrame = nil
end

function DelayTimer:_CheckIfDone()
	assert(private.activeTimers[self])
	if (self._endTime or math.huge) <= GetTime() or (self._endFrame or math.huge) <= private.frameNumber then
		self._endTime = nil
		self._endFrame = nil
		private.activeTimers[self] = nil
		local startTime = GetTimePreciseSec()
		self._callback()
		local timeTaken = GetTimePreciseSec() - startTime
		if timeTaken > CALLBACK_TIME_WARNING_THRESHOLD then
			Log.Warn("Delay callback (%s) took %0.5fs", self._name, timeTaken)
		end
		return true
	end
	return false
end



-- ============================================================================
-- Main Delay Callback
-- ============================================================================

function private.ProcessDelays()
	private.frameNumber = private.frameNumber + 1
	-- The active timers can change as we complete them, so only do one per loop and keep looping until they're all processed
	local hadDoneTimer = true
	while hadDoneTimer do
		hadDoneTimer = false
		for timer in pairs(private.activeTimers) do
			if timer:_CheckIfDone() then
				hadDoneTimer = true
				break
			end
		end
	end
end
