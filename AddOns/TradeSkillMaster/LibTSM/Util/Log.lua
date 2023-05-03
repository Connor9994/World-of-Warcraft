-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Log = TSM.Init("Util.Log") ---@class Util.Log
local Environment = TSM.Include("Environment")
local Debug = TSM.Include("Util.Debug")
local Theme = TSM.Include("Util.Theme")
local private = {
	severity = {},
	location = {},
	timeStr = {},
	msg = {},
	writeIndex = 1,
	len = 0,
	temp = {},
	logToChat = nil,
	currentThreadNameFunc = nil,
	stackLevel = 3,
	chatFrame = nil,
}
local MAX_ROWS = 200
local MAX_MSG_LEN = 200
---@alias LogSeverity
---|'"TRACE"'
---|'"INFO"'
---|'"WARN"'
---|'"ERR"'
local CHAT_LOG_COLOR_KEYS = {
	TRACE = "FEEDBACK_BLUE",
	INFO = "FEEDBACK_GREEN",
	WARN = "FEEDBACK_YELLOW",
	ERR = "FEEDBACK_RED",
}



-- ============================================================================
-- Module Loading
-- ============================================================================

Log:OnModuleLoad(function()
	private.logToChat = Environment.IsTest()
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

---Sets the chat frame to display messages within.
---@param chatFrame any
function Log.SetChatFrame(chatFrame)
	private.chatFrame = strlower(chatFrame)
end

---Enables or disables printing log messages to chat.
---@param enabled boolean
function Log.SetLoggingToChatEnabled(enabled)
	if Environment.IsTest() then
		-- always enable in test environments
		enabled = true
	elseif not Environment.IsDev() then
		-- always disable in non-dev environments
		enabled = false
	end
	if private.logToChat == enabled then
		return
	end
	private.logToChat = enabled
	if enabled then
		-- dump our buffer
		local len = Log.Length()
		print(format("Printing %d buffered logs:", len))
		for i = 1, len do
			private.LogToChat(Log.Get(i))
		end
	end
end

---Registers a function for getting the name of the current thread to include in log messages.
---@param func fun(): string A function which returns the name of the currently-running thread
function Log.SetCurrentThreadNameFunction(func)
	private.currentThreadNameFunc = func
end

---Gets the length of the log buffer.
---@return number
function Log.Length()
	return private.len
end

---Gets a log entry from the log buffer.
---@param index number The index within the buffer
---@return LogSeverity severity
---@return string location
---@return string timeStr
---@return string msg
function Log.Get(index)
	assert(index <= private.len)
	local readIndex = (private.writeIndex - private.len + index - 2) % MAX_ROWS + 1
	return private.severity[readIndex], private.location[readIndex], private.timeStr[readIndex], private.msg[readIndex]
end

---Raises the stack level of log messages.
function Log.RaiseStackLevel()
	private.stackLevel = private.stackLevel + 1
end

---Lowers the stack level of log messages.
function Log.LowerStackLevel()
	private.stackLevel = private.stackLevel - 1
end

---Logs a stack trace.
---@param maxLines? number The maximum number of lines (defaults to all available)
function Log.StackTrace(maxLines)
	maxLines = maxLines or math.huge
	Log.RaiseStackLevel()
	Log.Trace("Stack Trace:")
	local level = 2
	local line = Debug.GetStackLevelLocation(level)
	while line and maxLines > 0 do
		Log.Trace("  " .. line)
		level = level + 1
		line = Debug.GetStackLevelLocation(level)
		maxLines = maxLines - 1
	end
	Log.LowerStackLevel()
end

---Logs a formatted message at the trace level.
---@param ... string
function Log.Trace(...)
	private.Log("TRACE", ...)
end

---Logs a formatted message at the info level.
---@param ... string
function Log.Info(...)
	private.Log("INFO", ...)
end

---Logs a formatted message at the warning level.
---@param ... string
function Log.Warn(...)
	private.Log("WARN", ...)
end

---Logs a formatted message at the error level.
---@param ... string
function Log.Err(...)
	private.Log("ERR", ...)
end

---Prints a raw user-facing message to chat.
---@param str string The message
function Log.PrintUserRaw(str)
	private.GetChatFrame():AddMessage(str)
end

---Prints a raw, formatted user-facing message to chat.
---@param ... string The message
function Log.PrintfUserRaw(...)
	Log.PrintUserRaw(format(...))
end

---Prints a user-facing message to chat.
---@param str string The message
function Log.PrintUser(str)
	Log.PrintUserRaw(Theme.GetColor("INDICATOR"):ColorText("TSM")..": "..str)
end

---Prints a formatted user-facing message to chat.
---@param ... string The message
function Log.PrintfUser(...)
	Log.PrintUser(format(...))
end

---Colors some accent text for display to the user.
---@param text string The text to color
---@return string @The colored text
function Log.ColorUserAccentText(text)
	return Theme.GetColor("INDICATOR_ALT"):ColorText(text)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetChatFrame()
	for i = 1, NUM_CHAT_WINDOWS do
		local name = strlower(GetChatWindowInfo(i) or "")
		if name ~= "" and name == private.chatFrame then
			return _G["ChatFrame" .. i]
		end
	end
	return DEFAULT_CHAT_FRAME
end

function private.Log(severity, fmtStr, ...)
	assert(type(fmtStr) == "string" and CHAT_LOG_COLOR_KEYS[severity])
	wipe(private.temp)
	for i = 1, select("#", ...) do
		local arg = select(i, ...)
		if type(arg) == "boolean" then
			arg = arg and "T" or "F"
		elseif type(arg) ~= "string" and type(arg) ~= "number" then
			arg = tostring(arg)
		end
		private.temp[i] = arg
	end
	-- ignore anything after a newline in the log message
	local msg = strsplit("\n", format(fmtStr, unpack(private.temp)))
	if #msg > MAX_MSG_LEN then
		msg = strsub(msg, 1, -4).."..."
	end
	local location = Debug.GetStackLevelLocation(private.stackLevel)
	location = location and strmatch(location, "([^\\/]+%.lua:[0-9]+)") or "?:?"
	local threadName = private.currentThreadNameFunc and private.currentThreadNameFunc() or nil
	if threadName then
		location = location.."|"..threadName
	end
	local timeMs = Debug.GetTimeMilliseconds()
	local timeStr = format("%s.%03d", date("%H:%M:%S", floor(timeMs / 1000)), timeMs % 1000)

	-- append the log
	private.severity[private.writeIndex] = severity
	private.location[private.writeIndex] = location
	private.timeStr[private.writeIndex] = timeStr
	private.msg[private.writeIndex] = msg
	private.writeIndex = (private.writeIndex < MAX_ROWS) and (private.writeIndex + 1) or 1
	private.len = min(private.len + 1, MAX_ROWS)

	if private.logToChat then
		private.LogToChat(severity, location, timeStr, msg)
	end
end

function private.LogToChat(severity, location, timeStr, msg)
	print(strjoin(" ", timeStr, Theme.GetColor(CHAT_LOG_COLOR_KEYS[severity]):ColorText("{"..location.."}"), msg))
end
