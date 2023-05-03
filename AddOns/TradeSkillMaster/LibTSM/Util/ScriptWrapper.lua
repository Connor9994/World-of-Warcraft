-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ScriptWrapper = TSM.Init("Util.ScriptWrapper") ---@class Util.ScriptWrapper
local Log = TSM.Include("Util.Log")
local private = {
	handlers = {},
	objLookup = {},
	wrappers = {},
	propagateWrappers = {},
	nestedLevel = 0,
}
local SCRIPT_CALLBACK_TIME_WARNING_THRESHOLD = 0.02



-- ============================================================================
-- Module Functions
-- ============================================================================

---Sets the handler for a script on a frame.
---@param frame table The frame to call SetScript() on
---@param script string The script to set
---@param handler function The handler to set
---@param obj? table The object to pass to the handler as the first parameter (instead of frame)
function ScriptWrapper.Set(frame, script, handler, obj)
	assert(type(frame) == "table" and type(script) == "string" and type(handler) == "function")
	local key = private.GetFrameScriptKey(frame, script)
	private.handlers[key] = handler
	private.objLookup[key] = obj or frame
	if not private.wrappers[script] then
		private.wrappers[script] = function(...)
			private.ScriptHandlerCommon(script, ...)
		end
	end
	frame:SetScript(script, private.wrappers[script])
end

---Sets the script handler to simply propogate the script to the parent element.
---@param frame table The frame to call SetScript() on
---@param script string The script which should be propagated
---@param obj? table The object to pass to the handler as the first parameter (instead of frame)
function ScriptWrapper.SetPropagate(frame, script, obj)
	if not private.propagateWrappers[script] then
		private.propagateWrappers[script] = function(f, ...)
			local parentFrame = f:GetParent()
			local parentScript = parentFrame:GetScript(script)
			if not parentScript then
				return
			end
			parentScript(parentFrame, ...)
		end
	end
	ScriptWrapper.Set(frame, script, private.propagateWrappers[script], obj)
end

---Clears a previously-registered script handler.
---@param frame table The frame to clear the script on
---@param script string The script which should be cleared
function ScriptWrapper.Clear(frame, script)
	local key = private.GetFrameScriptKey(frame, script)
	private.handlers[key] = nil
	private.objLookup[key] = nil
	frame:SetScript(script, nil)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetFrameScriptKey(frame, script)
	return tostring(frame)..":"..script
end

function private.ScriptHandlerCommon(script, frame, ...)
	local key = private.GetFrameScriptKey(frame, script)
	local obj = private.objLookup[key]
	private.nestedLevel = private.nestedLevel + 1
	local startTime = GetTimePreciseSec()
	private.handlers[key](obj, ...)
	local timeTaken = GetTimePreciseSec() - startTime
	private.nestedLevel = private.nestedLevel - 1
	if private.nestedLevel == 0 and timeTaken > SCRIPT_CALLBACK_TIME_WARNING_THRESHOLD then
		Log.Warn("Script handler (%s) for frame (%s) took %0.5fs", script, tostring(obj), timeTaken)
	end
end
