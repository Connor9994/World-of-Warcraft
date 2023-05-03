-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Debug = TSM.Init("Util.Debug") ---@class Util.Debug
local Environment = TSM.Include("Environment")
local private = {
	startSystemTimeMs = floor(GetTime() * 1000),
	startTimeMs = time() * 1000 + (floor(GetTime() * 1000) % 1000),
}
local ADDON_NAME_SHORTEN_PATTERN = {
	-- shorten "TradeSkillMaster" to "TSM"
	[".-lMaster\\"] = "TSM\\",
	[".-r\\LibTSM"] = "TSM\\LibTSM",
}
local IGNORED_STACK_LEVEL_MATCHERS = {
	-- ignore wrapper code from LibTSMClass
	"LibTSMClass%.lua:",
}


-- ============================================================================
-- Module Functions
-- ============================================================================

---Gets the current time in milliseconds since epoch
---
---The time returned could be up to a second off absolutely, but relative times are guarenteed to be accurate.
---@return number @The current time in milliseconds since epoch
function Debug.GetTimeMilliseconds()
	local systemTimeMs = floor(GetTime() * 1000)
	return private.startTimeMs + (systemTimeMs - private.startSystemTimeMs)
end

---Gets the location string for the specified stack level
---@param targetLevel number The stack level to get the location for
---@param thread? thread The thread to get the location for
---@return string @The location string
function Debug.GetStackLevelLocation(targetLevel, thread)
	targetLevel = targetLevel + 1
	assert(targetLevel > 0)
	local level = 1
	while true do
		local stackLine = nil
		if thread then
			stackLine = debugstack(thread, level, 1, 0)
		else
			stackLine = debugstack(level, 1, 0)
		end
		if not stackLine or stackLine == "" then
			return
		end
		if Environment.IsTest() then
			stackLine = strmatch(stackLine, "^%.*([^:]+\"]:%d+):")
		else
			local numSubs = nil
			stackLine, numSubs = gsub(stackLine, "^%[string \"@([^%.]+%.lua)\"%](:%d+).*$", "%1%2")
			stackLine = numSubs > 0 and stackLine or nil
		end
		if stackLine then
			local ignored = false
			for _, matchStr in ipairs(IGNORED_STACK_LEVEL_MATCHERS) do
				if strmatch(stackLine, matchStr) then
					ignored = true
					break
				end
			end
			if not ignored then
				targetLevel = targetLevel - 1
				if targetLevel == 0 then
					stackLine = gsub(stackLine, "/", "\\")
					for matchStr, replaceStr in pairs(ADDON_NAME_SHORTEN_PATTERN) do
						stackLine = gsub(stackLine, matchStr, replaceStr)
					end
					return stackLine
				end
			end
		end
		level = level + 1
	end
end
