-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local SlashCommands = TSM.Init("Service.SlashCommands") ---@class Service.SlashCommands
local Log = TSM.Include("Util.Log")
local L = TSM.Include("Locale").GetTable()
local private = {
	commandInfo = {},
	commandOrder = {},
}
local CALLBACK_TIME_WARNING = 0.02



-- ============================================================================
-- Module Loading
-- ============================================================================

SlashCommands:OnModuleLoad(function()
	-- register the TSM slash commands
	SlashCmdList["TSM"] = private.OnChatCommand
	SlashCmdList["TRADESKILLMASTER"] = private.OnChatCommand
	_G["SLASH_TSM1"] = "/tsm"
	_G["SLASH_TRADESKILLMASTER1"] = "/tradeskillmaster"
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function SlashCommands.Register(key, callback, label)
	assert(key and callback)
	local keyLower = strlower(key)
	private.commandInfo[keyLower] = {
		key = key,
		label = label,
		callback = callback,
	}
	tinsert(private.commandOrder, keyLower)
end

function SlashCommands.PrintHelp()
	Log.PrintUser(L["Slash Commands:"])
	for _, key in ipairs(private.commandOrder) do
		local info = private.commandInfo[key]
		if info.label then
			if info.key == "" then
				Log.PrintfUserRaw("|cffffaa00/tsm|r - %s", info.label)
			else
				Log.PrintfUserRaw("|cffffaa00/tsm %s|r - %s", info.key, info.label)
			end
		end
	end
end



-- ============================================================================
-- Helper Functions
-- ============================================================================

function private.OnChatCommand(input)
	input = strtrim(input)
	local cmd, args = strmatch(input, "^([^ ]*) ?(.*)$")
	cmd = strlower(cmd)
	if private.commandInfo[cmd] then
		local startTime = GetTimePreciseSec()
		private.commandInfo[cmd].callback(args)
		local timeTaken = GetTimePreciseSec() - startTime
		if timeTaken > CALLBACK_TIME_WARNING then
			Log.Warn("Handler for slash command (/tsm%s) took %0.5fs", input ~= "" and " "..input or input, timeTaken)
		end
	else
		-- We weren't able to handle this command so print out the help
		SlashCommands.PrintHelp()
	end
end
