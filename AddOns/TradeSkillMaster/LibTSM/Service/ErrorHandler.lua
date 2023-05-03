-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ErrorHandler = TSM.Init("Service.ErrorHandler")
local Environment = TSM.Include("Environment")
local Log = TSM.Include("Util.Log")
local String = TSM.Include("Util.String")
local Event = TSM.Include("Util.Event")
local JSON = TSM.Include("Util.JSON")
local TempTable = TSM.Include("Util.TempTable")
local L = TSM.Include("Locale").GetTable()
local LibTSMClass = TSM.Include("LibTSMClass")
local private = {
	origErrorHandler = nil,
	errorFrame = nil,
	isSilent = nil,
	errorSuppressed = nil,
	errorReports = {},
	num = 0,
	localLinesTemp = {},
	hitInternalError = false,
	isManual = nil,
	ignoreErrors = false,
	globalNameTranslation = {},
}
local MAX_ERROR_REPORT_AGE = 7 * 24 * 60 * 60 -- 1 week
local MAX_STACK_DEPTH = 50
local ADDON_SUITES = {
	"ArkInventory",
	"AtlasLoot",
	"Altoholic",
	"Auc-",
	"Bagnon",
	"BigWigs",
	"Broker",
	"ButtonFacade",
	"Carbonite",
	"DataStore",
	"DBM",
	"Dominos",
	"DXE",
	"EveryQuest",
	"Forte",
	"FuBar",
	"GatherMate2",
	"Grid",
	"LightHeaded",
	"LittleWigs",
	"Masque",
	"MogIt",
	"Odyssey",
	"Overachiever",
	"PitBull4",
	"Prat-3.0",
	"RaidAchievement",
	"Skada",
	"SpellFlash",
	"TidyPlates",
	"TipTac",
	"Titan",
	"UnderHood",
	"WowPro",
	"ZOMGBuffs",
}
local PRINT_PREFIX = "|cffff0000TSM:|r "



-- ============================================================================
-- Module Functions
-- ============================================================================

function ErrorHandler.ShowForThread(err, thread)
	-- show an error, but don't cause an exception to be thrown
	private.isSilent = true
	private.ErrorHandler(err, thread)
end

function ErrorHandler.ShowManual()
	private.isManual = true
	-- show an error, but don't cause an exception to be thrown
	private.isSilent = true
	private.ErrorHandler("Manually triggered error")
end

function ErrorHandler.SaveReports(appDB)
	if private.errorFrame then
		private.errorFrame:Hide()
	end
	appDB.errorReports = appDB.errorReports or { updateTime = 0, data = {} }
	if #private.errorReports > 0 then
		appDB.errorReports.updateTime = private.errorReports[#private.errorReports].timestamp
	end
	-- remove any events which are too old
	for i = #appDB.errorReports.data, 1, -1 do
		local timestamp = strmatch(appDB.errorReports.data[i], "([0-9]+)%]$") or ""
		if (tonumber(timestamp) or 0) < time() - MAX_ERROR_REPORT_AGE then
			tremove(appDB.errorReports.data, i)
		end
	end
	for _, report in ipairs(private.errorReports) do
		local line = format("[%s,\"%s\",%d]", JSON.Encode(report.errorInfo), report.details, report.timestamp)
		tinsert(appDB.errorReports.data, line)
	end
end



-- ============================================================================
-- Error Handler
-- ============================================================================

function private.ErrorHandler(msg, thread)
	-- ignore errors while we are handling this error
	private.ignoreErrors = true
	local isSilent = private.isSilent
	private.isSilent = nil
	local isManual = private.isManual
	private.isManual = nil
	private.CreateErrorFrame()

	if type(thread) ~= "thread" then
		thread = nil
	end

	if private.errorFrame:IsVisible() and private.errorSuppressed then
		-- already showing an error and suppressed another one, so silently ignore this one
		private.ignoreErrors = false
		return true
	end

	-- shorten the paths in the error message
	msg = gsub(msg, "%.%.%.T?r?a?d?e?S?k?i?l?l?M?a?ster([_A-Za-z]*[\\/])", "TradeSkillMaster%1")
	msg = strsub(msg, strfind(msg, "TradeSkillMaster") or 1)
	msg = gsub(msg, "TradeSkillMaster([^%.])", "TSM%1")

	-- build our global name translation table
	wipe(private.globalNameTranslation)
	pcall(function()
		local UIElements = TSM.Include("UI.UIElements")
		local temp = {}
		UIElements.GetDebugNameTranslation(temp)
		for k, v in pairs(temp) do
			private.globalNameTranslation[String.Escape(k)] = v
		end
	end)

	-- build stack trace with locals and get addon name
	local stackInfo, newMsg = private.GetStackInfo(msg, thread)
	msg = newMsg
	local addonName = isSilent and "TradeSkillMaster" or nil
	for _, info in ipairs(stackInfo) do
		if not addonName then
			addonName = strmatch(info.file, "[A-Za-z]+%.lua") and private.IsTSMAddon(info.file) or nil
		end
	end
	if not isManual and addonName ~= "TradeSkillMaster" then
		-- not a TSM error
		private.ignoreErrors = false
		return false
	end

	if not Environment.IsDev() and not isManual then
		-- log the error (use a format string in case there are '%' characters in the msg)
		Log.Err("%s", msg)
	end

	if private.errorFrame:IsVisible() then
		-- already showing an error, so suppress this one and return
		private.errorSuppressed = true
		print(PRINT_PREFIX..L["Additional error suppressed"])
		return true
	end

	private.num = private.num + 1
	local clientVersion, clientBuild = GetBuildInfo()
	local errorInfo = {
		msg = #stackInfo > 0 and gsub(msg, String.Escape(stackInfo[1].file)..":"..stackInfo[1].line..": ", "") or msg,
		stackInfo = stackInfo,
		time = time(),
		debugTime = floor(GetTimePreciseSec() * 1000),
		client = format("%s (%s)", clientVersion, clientBuild),
		locale = GetLocale(),
		inCombat = tostring(InCombatLockdown() and true or false),
		version = Environment.GetVersion(),
	}

	-- temp table info
	local tempTableLines = {}
	for _, info in ipairs(TempTable.GetDebugInfo()) do
		tinsert(tempTableLines, info)
	end
	errorInfo.tempTableStr = table.concat(tempTableLines, "\n")

	-- object pool info
	local status, objectPoolInfo = pcall(function() return TSM.Include("Util.ObjectPool").GetDebugInfo() end)
	local objectPoolLines = {}
	if status then
		for name, objectInfo in pairs(objectPoolInfo) do
			tinsert(objectPoolLines, format("%s (%d created, %d in use)", name, objectInfo.numCreated, objectInfo.numInUse))
			for _, info in ipairs(objectInfo.info) do
				tinsert(objectPoolLines, "  "..info)
			end
		end
	end
	errorInfo.objectPoolStr = status and table.concat(objectPoolLines, "\n") or tostring(objectPoolInfo)

	-- TSM thread info
	local threadInfoStr = nil
	status, threadInfoStr = pcall(function() return TSM.Include("Service.Threading").GetDebugStr() end)
	errorInfo.threadInfoStr = tostring(threadInfoStr)

	-- recent debug log entries
	local entries = {}
	for i = Log.Length(), 1, -1 do
		local severity, location, timeStr, logMsg = Log.Get(i)
		tinsert(entries, format("%s [%s] {%s} %s", timeStr, severity, location, logMsg))
	end
	errorInfo.debugLogStr = table.concat(entries, "\n")

	-- addons
	local hasAddonSuite = {}
	local addonsLines = {}
	for i = 1, GetNumAddOns() do
		local name, _, _, loadable = GetAddOnInfo(i)
		if loadable then
			local version = strtrim(GetAddOnMetadata(name, "X-Curse-Packaged-Version") or GetAddOnMetadata(name, "Version") or "")
			local loaded = IsAddOnLoaded(i)
			local isSuite = nil
			for _, commonTerm in ipairs(ADDON_SUITES) do
				if strsub(name, 1, #commonTerm) == commonTerm then
					isSuite = commonTerm
					break
				end
			end
			local commonTerm = "TradeSkillMaster"
			if isSuite then
				if not hasAddonSuite[isSuite] then
					tinsert(addonsLines, name.." ("..version..")"..(loaded and "" or " [Not Loaded]"))
					hasAddonSuite[isSuite] = true
				end
			elseif strsub(name, 1, #commonTerm) == commonTerm then
				name = gsub(name, "TradeSkillMaster", "TSM")
				tinsert(addonsLines, name.." ("..version..")"..(loaded and "" or " [Not Loaded]"))
			else
				tinsert(addonsLines, name.." ("..version..")"..(loaded and "" or " [Not Loaded]"))
			end
		end
	end
	errorInfo.addonsStr = table.concat(addonsLines, "\n")

	-- show this error
	local stackInfoLines = {}
	for _, info in ipairs(errorInfo.stackInfo) do
		local localsStr = info.localsStr ~= "" and ("\n  |cffaaaaaa"..gsub(info.localsStr, "\n", "\n  ").."|r") or ""
		local locationStr = info.line ~= 0 and strjoin(":", info.file, info.line) or info.file
		tinsert(stackInfoLines, locationStr.." <"..info.func..">"..localsStr)
	end
	private.errorFrame.errorStr = strjoin("\n",
		private.FormatErrorMessageSection("Message", msg),
		private.FormatErrorMessageSection("Time", date("%m/%d/%y %H:%M:%S", errorInfo.time).." ("..floor(errorInfo.debugTime)..")"),
		private.FormatErrorMessageSection("Client", errorInfo.client),
		private.FormatErrorMessageSection("Locale", errorInfo.locale),
		private.FormatErrorMessageSection("Combat", errorInfo.inCombat),
		private.FormatErrorMessageSection("Error Count", private.num),
		private.FormatErrorMessageSection("Stack Trace", table.concat(stackInfoLines, "\n"), true),
		private.FormatErrorMessageSection("Temp Tables", errorInfo.tempTableStr, true),
		private.FormatErrorMessageSection("Object Pools", errorInfo.objectPoolStr, true),
		private.FormatErrorMessageSection("Running Threads", errorInfo.threadInfoStr, true),
		private.FormatErrorMessageSection("Debug Log", errorInfo.debugLogStr, true),
		private.FormatErrorMessageSection("Addons", errorInfo.addonsStr, true)
	)
	-- remove unprintable characters
	private.errorFrame.errorStr = gsub(private.errorFrame.errorStr, "[%z\001-\008\011-\031]", "?")
	private.errorFrame.errorInfo = errorInfo
	private.errorFrame.isManual = isManual
	private.errorFrame:Show()
	print(PRINT_PREFIX..L["Looks like TradeSkillMaster has encountered an error. Please help the author fix this error by following the instructions shown."])
	if Environment.IsTest() then
		print(private.errorFrame.errorStr)
	end

	private.ignoreErrors = false
	return true
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetStackInfo(msg, thread)
	local errLocation = strmatch(msg, "[A-Za-z]+%.lua:[0-9]+")
	local stackFrames = private.GetStackFrames(thread)
	local startIndex = nil
	for i, frame in ipairs(stackFrames) do
		local prevFrame = stackFrames[i-1]
		if prevFrame and strfind(frame.file, "LibTSMClass%.lua") then
			-- TODO: Ignore stack frames from the class code's wrapper function
			if frame.func ~= "?" and prevFrame.func and not strmatch(frame.func, "^.+:[0-9]+$") and strmatch(prevFrame.func, "^.+:[0-9]+$") then
				-- This stack frame includes the class method we were accessing in the previous one, so go back and fix it up
				if frame.rawLocals then
					local className, objKey = strmatch(frame.rawLocals, "\n +str = \"([A-Za-z_0-9]+):([0-9A-F]+)\"\n")
					if className then
						if Environment.IsDev() then
							prevFrame.localsStr = prevFrame.localsStr.."\n"..LibTSMClass.GetDebugInfo(className..":"..objKey, 5, private.LocalTableLookupFunc)
						end
						prevFrame.func = className.."."..frame.func
					else
						prevFrame.func = "?."..frame.func
					end
				else
					prevFrame.func = "?."..frame.func
				end
			end
		end
		if not startIndex then
			if errLocation and strmatch(frame.file..":"..frame.line, "[A-Za-z]+%.lua:[0-9]+") == errLocation then
				startIndex = strfind(frame.file, "LibTSMClass%.lua") and (i - 1) or i
			elseif not errLocation and i > (thread and 1 or 4) and frame.file ~= "[C]" then
				startIndex = i
			end
		end
	end
	if not startIndex then
		return {}
	end

	-- Remove the extra frames from the top
	for _ = 1, startIndex - 1 do
		tremove(stackFrames, 1)
	end

	-- Fix up the error message
	if errLocation and strfind(errLocation, "LibTSMClass%.lua:%d+") and stackFrames[1] and not strfind(stackFrames[1].file, "LibTSMClass%.lua") then
		msg = gsub(msg, ".+LibTSMClass%.lua:[0-9]+", stackFrames[1].file..":"..stackFrames[1].line)
	end

	return stackFrames, msg
end

function private.GetStackFrames(thread)
	local stackFrames = {}
	local consecutiveIgnored = nil
	for i = 0, math.huge do
		local file, line, func, locals = private.GetStackFrame(i, thread)
		if file then
			tinsert(stackFrames, {
				file = file,
				line = line,
				func = func,
				rawLocals = locals,
				localsStr = locals and private.ParseLocals(locals, file) or "",
			})
			consecutiveIgnored = 0
		else
			consecutiveIgnored = consecutiveIgnored + 1
			if consecutiveIgnored >= 20 or #stackFrames >= MAX_STACK_DEPTH then
				break
			end
		end
	end
	return stackFrames
end

function private.GetStackFrame(level, thread)
	local stackLine = nil
	if thread then
		stackLine = debugstack(thread, level, 1, 0)
	else
		level = level + 1
		stackLine = debugstack(level, 1, 0)
	end
	stackLine = gsub(stackLine, "^%[string \"@([^%.]+%.lua)\"%]", "%1")
	local locals = debuglocals(level)
	stackLine = gsub(stackLine, "%.%.%.T?r?a?d?e?S?k?i?l?l?M?a?ster([_A-Za-z]*[\\/])", "TradeSkillMaster%1")
	stackLine = gsub(stackLine, "%.%.%.", "")
	stackLine = gsub(stackLine, "`", "<", 1)
	stackLine = gsub(stackLine, "'", ">", 1)
	stackLine = strtrim(stackLine)
	if stackLine == "" then
		return
	end

	-- Parse out the file, line, and function name
	local locationStr, functionStr = strmatch(stackLine, "^(.-): in function (<[^\n]*>)")
	if not locationStr then
		locationStr, functionStr = strmatch(stackLine, "^(.-): in (main chunk)")
	end
	if not locationStr then
		return
	end
	locationStr = strsub(locationStr, strfind(locationStr, "TradeSkillMaster") or 1)
	locationStr = gsub(locationStr, "TradeSkillMaster([^%.])", "TSM%1")
	functionStr = functionStr and gsub(gsub(functionStr, ".*[\\/]", ""), "[<>]", "") or ""
	local file, line = strmatch(locationStr, "^(.+):(%d+)$")
	file = file or locationStr
	line = tonumber(line) or 0

	local func = strsub(functionStr, strfind(functionStr, "`") and 2 or 1, -1) or "?"
	func = func ~= "" and func or "?"
	return file, line, func, locals
end

function private.ParseLocals(locals, file)
	if strmatch(file, "^%[") then
		return
	end

	local fileName = strmatch(file, "([A-Za-z%-_0-9]+)%.lua")
	local isBlizzardFile = strmatch(file, "Interface[\\/]FrameXML[\\/]")
	local isPrivateTable, isLocaleTable, isPackageTable, isSelfTable, isTemporaryTable = false, false, false, false, false
	wipe(private.localLinesTemp)
	locals = gsub(locals, "<([a-z]+)> {[\n\t ]+}", "<%1> {}")
	locals = gsub(locals, " = <function> defined @", "@")
	locals = gsub(locals, "<table> {", "{")

	local level = 0
	for localLine in gmatch(locals, "[^\n]+") do
		local shouldIgnoreLine = false
		if strmatch(localLine, "^ *%(%*temporary%) = nil") then
			-- ignore nil temporary variables
			shouldIgnoreLine = true
		elseif strmatch(localLine, "LibTSMClass%.lua:") then
			-- ignore class methods
			shouldIgnoreLine = true
		elseif strmatch(localLine, "<unnamed> {}$") then
			-- ignore internal WoW frame members
			shouldIgnoreLine = true
		elseif strtrim(localLine) == "" then
			-- ignore empty lines
			shouldIgnoreLine = true
		elseif strmatch(localLine, "^ += .+$") then
			-- ignore lines which start with a '='
			shouldIgnoreLine = true
		elseif strmatch(localLine, "= <([^>]+)$") then
			-- ignore lines with unmatched '<', '>' in their value
			shouldIgnoreLine = true
		end
		if not shouldIgnoreLine then
			level = #strmatch(localLine, "^ *")
			localLine = strrep("  ", level)..strtrim(localLine)
			localLine = gsub(localLine, "Interface[\\/][Aa]dd[Oo]ns[\\/]TradeSkillMaster", "TSM")
			localLine = gsub(localLine, "\124", "\\124")
			for matchStr, replaceStr in pairs(private.globalNameTranslation) do
				localLine = gsub(localLine, matchStr, replaceStr)
			end
			if level > 0 then
				if isBlizzardFile then
					-- for Blizzard stack frames, only include level 0 locals
					shouldIgnoreLine = true
				elseif strmatch(localLine, "^ *[_]*[A-Z].+@TSM") then
					-- ignore table methods (based on their name being UpperCamelCase - potentially with leading underscores)
					shouldIgnoreLine = true
				elseif strmatch(localLine, "^ *[_]*[A-Z].+@") and not strmatch(localLine, ":%d+$") then
					-- ignore cut-off table method lines
					shouldIgnoreLine = true
				elseif isLocaleTable then
					-- ignore everything within the locale table
					shouldIgnoreLine = true
				elseif isPackageTable then
					-- ignore the package table completely
					shouldIgnoreLine = true
				elseif isTemporaryTable then
					-- Ignore temporary tables completely
					shouldIgnoreLine = true
				elseif (isSelfTable or isPrivateTable) and strmatch(localLine, "^ *[_a-zA-Z0-9]+ = {}") then
					-- ignore empty tables within objects or the private table
					shouldIgnoreLine = true
				elseif strmatch(localLine, "^%s+0 = <userdata>$") then
					-- remove userdata table entries
					shouldIgnoreLine = true
				end
			end
			if not shouldIgnoreLine then
				tinsert(private.localLinesTemp, localLine)
			end
			if level == 0 then
				isPackageTable = strmatch(localLine, "%s*"..fileName.." = {") and true or false
				isPrivateTable = strmatch(localLine, "%s*private = {") and true or false
				isLocaleTable = strmatch(localLine, "%s*L = {") and true or false
				isSelfTable = strmatch(localLine, "%s*self = {") and true or false
				isTemporaryTable = strmatch(localLine, "%s*%(%*temporary%) =.*{") and true or false
			end
		end
	end
	-- add closing brackets for tables which got cut off at the end
	while level > 0 do
		level = level - 1
		tinsert(private.localLinesTemp, strrep("  ", level).."}")
	end

	-- remove any top-level empty tables
	local i = #private.localLinesTemp
	while i > 0 do
		if i > 1 and private.localLinesTemp[i] == "}" and strmatch(private.localLinesTemp[i - 1], "^[A-Za-z_%(].* = {$") then
			tremove(private.localLinesTemp, i)
			tremove(private.localLinesTemp, i - 1)
			i = i - 2
		elseif strmatch(private.localLinesTemp[i], "^[A-Za-z_%(].* = {}$") then
			tremove(private.localLinesTemp, i)
			i = i - 1
		elseif i > 1 and private.localLinesTemp[i] == "}" and strmatch(private.localLinesTemp[i - 1], "^[A-Za-z_%(].* =.*{$") then
			-- Don't remove this table, but collapse it
			private.localLinesTemp[i - 1] = private.localLinesTemp[i - 1].."}"
			tremove(private.localLinesTemp, i)
			i = i - 1
		else
			i = i - 1
		end
	end
	return #private.localLinesTemp > 0 and table.concat(private.localLinesTemp, "\n") or nil
end

function private.LocalTableLookupFunc(tbl)
	local status, result = pcall(function() return TSM.Include("Util.ReactiveClasses.State").GetDebugInfo(tbl) end)
	return status and result ~= "" and result or nil
end

function private.IsTSMAddon(str)
	if strfind(str, "Auc-Adcanced[\\/]CoreScan.lua") then
		-- ignore auctioneer errors
		return nil
	elseif strfind(str, "Master[\\/]External[\\/]") then
		-- ignore errors from libraries
		return nil
	elseif strfind(str, "Master[\\/]Core[\\/]API.lua") then
		-- ignore errors from public APIs
		return nil
	elseif strfind(str, "Master_AppHelper[\\/]") then
		return "TradeSkillMaster_AppHelper"
	elseif strfind(str, "lMaster[\\/]") then
		return "TradeSkillMaster"
	elseif strfind(str, "ster[\\/]Core[\\/]UI[\\/]") then
		return "TradeSkillMaster"
	elseif strfind(str, "r[\\/]LibTSM[\\/]") then
		return "TradeSkillMaster"
	elseif strfind(str, "^TSM[\\/]") then
		return "TradeSkillMaster"
	end
	return nil
end

function private.AddonBlockedHandler(event, addonName, addonFunc)
	if not strmatch(addonName, "TradeSkillMaster") then
		return
	end
	-- just log it - it might not be TSM that cause the taint
	Log.Err("[%s] AddOn '%s' tried to call the protected function '%s'.", event, addonName or "<name>", addonFunc or "<func>")

	if Environment.IsDev() then
		local status, ret = pcall(private.ErrorHandler, "BLOCKED")
		if not status and not private.hitInternalError then
			private.hitInternalError = true
			print("Internal TSM error: "..tostring(ret))
		end
	end
end

function private.SanitizeString(str)
	str = gsub(str, "\124cff[0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f]([^\124]+)\124r", "%1")
	str = gsub(str, "[\\]+", "/")
	str = gsub(str, "\"", "'")
	return str
end

function private.FormatErrorMessageSection(heading, info, isMultiLine)
	-- replace unprintable characters with "?"
	info = gsub(info, "[^\t\n -~]", "?")
	local prefix = nil
	if isMultiLine then
		prefix = info ~= "" and "\n  " or ""
		info = gsub(info, "\n", "\n  ")
	else
		prefix = info ~= "" and " " or ""
	end
	return "|cff99ffff"..heading..":|r"..prefix..info
end



-- ============================================================================
-- Error Frame
-- ============================================================================

function private.CreateErrorFrame()
	if private.errorFrame then
		return
	end
	local STEPS_TEXT = "Steps leading up to the error:\n1) List\n2) Steps\n3) Here"
	local frame = CreateFrame("Frame", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate" or nil)
	private.errorFrame = frame
	frame:Hide()
	frame:SetWidth(500)
	frame:SetHeight(400)
	frame:SetFrameStrata("FULLSCREEN_DIALOG")
	frame:SetPoint("RIGHT", -100, 0)
	frame:SetBackdrop({
		bgFile = "Interface\\Buttons\\WHITE8X8",
		edgeFile = "Interface\\Buttons\\WHITE8X8",
		edgeSize = 2,
	})
	frame:SetBackdropColor(0, 0, 0, 1)
	frame:SetBackdropBorderColor(0.3, 0.3, 0.3, 1)
	frame:SetScript("OnShow", function(self)
		self.showingError = self.isManual or Environment.IsDev()
		self.details = STEPS_TEXT
		if self.showingError then
			-- this is a dev version so show the error (only)
			self.text:SetText("Looks like TradeSkillMaster has encountered an error.")
			self.switchBtn:SetText("Hide Error")
			self.editBox:SetText(self.errorStr)
		else
			self.text:SetText("Looks like TradeSkillMaster has encountered an error. Please provide the steps which lead to this error to help the TSM team fix it, then click either button at the bottom of the window to automatically report this error.")
			self.switchBtn:SetText("Show Error")
			self.editBox:SetText(self.details)
		end
	end)
	frame:SetScript("OnHide", function()
		local details = private.errorFrame.showingError and private.errorFrame.details or private.errorFrame.editBox:GetText()
		local changedDetails = details ~= STEPS_TEXT
		if (not Environment.IsDev() and not private.errorFrame.isManual and (changedDetails or private.num == 1)) or IsShiftKeyDown() then
			tinsert(private.errorReports, {
				errorInfo = private.errorFrame.errorInfo,
				details = private.SanitizeString(details),
				timestamp = time(),
			})
		end
		private.errorSuppressed = nil
	end)

	local title = frame:CreateFontString()
	title:SetHeight(20)
	title:SetPoint("TOPLEFT", 0, -10)
	title:SetPoint("TOPRIGHT", 0, -10)
	title:SetFontObject(GameFontNormalLarge)
	title:SetTextColor(1, 1, 1, 1)
	title:SetJustifyH("CENTER")
	title:SetJustifyV("MIDDLE")
	title:SetText("TSM Error Window ("..Environment.GetVersion()..")")

	local hLine = frame:CreateTexture(nil, "ARTWORK")
	hLine:SetHeight(2)
	hLine:SetColorTexture(0.3, 0.3, 0.3, 1)
	hLine:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 0, -10)
	hLine:SetPoint("TOPRIGHT", title, "BOTTOMRIGHT", 0, -10)

	local text = frame:CreateFontString()
	frame.text = text
	text:SetHeight(45)
	text:SetPoint("TOPLEFT", hLine, "BOTTOMLEFT", 8, -8)
	text:SetPoint("TOPRIGHT", hLine, "BOTTOMRIGHT", -8, -8)
	text:SetFontObject(GameFontNormal)
	text:SetTextColor(1, 1, 1, 1)
	text:SetJustifyH("LEFT")
	text:SetJustifyV("MIDDLE")

	local switchBtn = CreateFrame("Button", nil, frame)
	frame.switchBtn = switchBtn
	switchBtn:SetPoint("TOPRIGHT", -4, -10)
	switchBtn:SetWidth(100)
	switchBtn:SetHeight(20)
	local fontString = switchBtn:CreateFontString()
	fontString:SetFontObject(GameFontNormalSmall)
	fontString:SetJustifyH("CENTER")
	fontString:SetJustifyV("MIDDLE")
	switchBtn:SetFontString(fontString)
	switchBtn:SetScript("OnClick", function(self)
		private.errorFrame.showingError = not private.errorFrame.showingError
		if private.errorFrame.showingError then
			private.errorFrame.details = private.errorFrame.editBox:GetText()
			self:SetText("Hide Error")
			private.errorFrame.editBox:SetText(private.errorFrame.errorStr)
		else
			self:SetText("Show Error")
			private.errorFrame.editBox:SetText(private.errorFrame.details)
		end
	end)

	local hLine2 = frame:CreateTexture(nil, "ARTWORK")
	hLine2:SetHeight(2)
	hLine2:SetColorTexture(0.3, 0.3, 0.3, 1)
	hLine2:SetPoint("TOPLEFT", text, "BOTTOMLEFT", -8, -4)
	hLine2:SetPoint("TOPRIGHT", text, "BOTTOMRIGHT", 8, -4)

	local scrollFrame = CreateFrame("ScrollFrame", nil, frame, "UIPanelScrollFrameTemplate")
	scrollFrame:SetPoint("TOPLEFT", hLine2, "BOTTOMLEFT", 8, -4)
	scrollFrame:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -26, 38)

	local editBox = CreateFrame("EditBox", nil, scrollFrame)
	frame.editBox = editBox
	editBox:SetWidth(scrollFrame:GetWidth())
	editBox:SetFontObject(ChatFontNormal)
	editBox:SetMultiLine(true)
	editBox:SetAutoFocus(false)
	editBox:SetMaxLetters(0)
	editBox:SetTextColor(1, 1, 1, 1)
	editBox:SetScript("OnUpdate", function(self)
		local offset = scrollFrame:GetVerticalScroll()
		self:SetHitRectInsets(0, 0, offset, self:GetHeight() - offset - scrollFrame:GetHeight())
	end)
	editBox:SetScript("OnEditFocusGained", function(self)
		self:HighlightText()
	end)
	editBox:SetScript("OnCursorChanged", function(self)
		if private.errorFrame.showingError and self:HasFocus() then
			self:HighlightText()
		end
	end)
	editBox:SetScript("OnEscapePressed", function(self)
		if private.errorFrame.showingError then
			self:HighlightText(0, 0)
		end
		self:ClearFocus()
	end)
	scrollFrame:SetScrollChild(editBox)

	local hLine3 = frame:CreateTexture(nil, "ARTWORK")
	hLine3:SetHeight(2)
	hLine3:SetColorTexture(0.3, 0.3, 0.3, 1)
	hLine3:SetPoint("BOTTOMLEFT", frame, 0, 35)
	hLine3:SetPoint("BOTTOMRIGHT", frame, 0, 35)

	local reloadBtn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
	frame.reloadBtn = reloadBtn
	reloadBtn:SetPoint("BOTTOMLEFT", 4, 4)
	reloadBtn:SetWidth(120)
	reloadBtn:SetHeight(30)
	reloadBtn:SetText(RELOADUI)
	reloadBtn:SetScript("OnClick", function()
		frame:Hide()
		ReloadUI()
	end)

	local closeBtn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
	frame.closeBtn = closeBtn
	closeBtn:SetPoint("BOTTOMRIGHT", -4, 4)
	closeBtn:SetWidth(120)
	closeBtn:SetHeight(30)
	closeBtn:SetText(DONE)
	closeBtn:SetScript("OnClick", function()
		frame:Hide()
	end)

	local stepsText = frame:CreateFontString()
	frame.stepsText = stepsText
	stepsText:SetWidth(200)
	stepsText:SetHeight(30)
	stepsText:SetPoint("BOTTOM", 0, 4)
	stepsText:SetFontObject(GameFontNormal)
	stepsText:SetTextColor(1, 0, 0, 1)
	stepsText:SetJustifyH("CENTER")
	stepsText:SetJustifyV("MIDDLE")
	stepsText:SetText("Please enter steps before submitting")
end



-- ============================================================================
-- Register Error Handler
-- ============================================================================

do
	private.origErrorHandler = geterrorhandler()
	local function ErrorHandlerFunc(errMsg)
		local tsmErrMsg = strtrim(tostring(errMsg))
		if private.ignoreErrors then
			-- we're ignoring errors
			tsmErrMsg = nil
		elseif strmatch(tsmErrMsg, "auc%-stat%-wowuction") or strmatch(tsmErrMsg, "TheUndermineJournal%.lua") or strmatch(tsmErrMsg, "[\\/]SavedVariables[\\/]TradeSkillMaster") or strmatch(tsmErrMsg, "AddOn TradeSkillMaster[_a-zA-Z]* attempted") or (strmatch(tsmErrMsg, "ItemTooltipClasses[\\/]Wrapper%.lua:98") and strmatch(tsmErrMsg, "SetQuest")) then
			-- explicitly ignore these errors
			tsmErrMsg = nil
		elseif strmatch(tsmErrMsg, "Blizzard_AuctionUI%.lua:751") then
			-- suppress this Blizzard error
			return true
		end
		if tsmErrMsg then
			-- look at the stack trace to see if this is a TSM error
			for i = 2, MAX_STACK_DEPTH do
				local stackLine = debugstack(i, 1, 0)
				if not strmatch(stackLine, "^%[C%]:") and not strmatch(stackLine, "%(tail call%):") and not strmatch(stackLine, "^%[string \"[^@]") and not strmatch(stackLine, "lMaster[\\/]External[\\/][A-Za-z0-9%-_%.]+[\\/]") and not strmatch(stackLine, "SharedXML") and not strmatch(stackLine, "CallbackHandler") and not strmatch(stackLine, "!BugGrabber") and not strmatch(stackLine, "ErrorHandler%.lua") then
					if not private.IsTSMAddon(stackLine) then
						tsmErrMsg = nil
					end
					break
				end
			end
		end
		if tsmErrMsg then
			local status, ret = pcall(private.ErrorHandler, tsmErrMsg)
			if status and ret then
				return ret
			elseif not status and not private.hitInternalError then
				private.hitInternalError = true
				print("Internal TSM error: "..tostring(ret))
			end
		end
		return false
	end
	-- Wrap the error handler logic in a loadstring to avoid our locals / stack frames showing in other error handlers
	local WRAPPER_FUNC_STR = [[
		return select(1, ...)(select(3, ...)) or (select(2, ...) and select(2, ...)((select(3, ...)))) or nil
	]]
	local wrapperFunc = assert(loadstring(WRAPPER_FUNC_STR, "=[tsm error check]"))
	seterrorhandler(function(msg)
		return wrapperFunc(ErrorHandlerFunc, private.origErrorHandler, msg)
	end)
	if BugGrabber and BugGrabber.RegisterCallback then
		BugGrabber.RegisterCallback({}, "BugGrabber_BugGrabbed", function(_, errObj)
			ErrorHandlerFunc(errObj.message)
		end)
	end
	Event.Register("ADDON_ACTION_FORBIDDEN", private.AddonBlockedHandler)
	Event.Register("ADDON_ACTION_BLOCKED", private.AddonBlockedHandler)
end
