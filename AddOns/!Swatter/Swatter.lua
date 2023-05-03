--[[
	Swatter - An AddOn debugging aid for World of Warcraft.
	Version: 9.1.BETA.5.11 (OneMawTime)
	Revision: $Id$
	URL: http://auctioneeraddon.com/dl/Swatter/
	Copyright (C) 2006 Norganna

	This library is free software; you can redistribute it and/or
	modify it under the terms of the GNU Lesser General Public
	License as published by the Free Software Foundation; either
	version 2.1 of the License, or (at your option) any later version.

	This library is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
	Lesser General Public License for more details.

	You should have received a copy of the GNU Lesser General Public
	License along with this library; if not, write to the Free Software
	Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
]]

local DEBUG_LEVEL = 4

-- Check to see if another debugging aid has been loaded.
local otherdebug = {
	['!buggrabber'] = 'BugGrabber',
	['!improvederrorframe'] = 'ImprovedErrorFrame',
}
local player = UnitName("player")
for addon, name in pairs(otherdebug) do
	local enabled = GetAddOnEnableState(player, addon)
	if enabled and enabled > 0 then
	  DEFAULT_CHAT_FRAME:AddMessage("|cffffaa11Swatter is not loaded, because you are running "..name.."|r")
	  return
	end
end

Swatter = {
	nilFrame = {
		GetName = function() return "Global" end
	},
	errorOrder = {},
	moduleDetail = {},
	HISTORY_SIZE = 100,
}

Swatter.Version="9.1.BETA.5.11"
if (Swatter.Version == "<%".."version%>") then
	Swatter.Version = "10.0.DEV"
end
SWATTER_VERSION = Swatter.Version

SwatterData = {
	enabled = true,
	autoshow = true,
	warning = true,
	combat = false,
	errors = {},
}

local tinsert = table.insert


-- SetAddOnDetail global function:
--   (See http://wowwiki.com/SetAddOnDetail for details)

-- Define a blank stub if the function doesn't exist.
if not _G['SetAddOnDetail'] then
	_G['SetAddOnDetail'] = function(name, detail) end
end
-- Define my functions to process the information.
local function addOnDetail(name, detail)
	if not detail.name then detail.name = name end
	Swatter.moduleDetail[name:lower()] = detail
end
-- Post hook the global SetAddOnDetail function.
hooksecurefunc("SetAddOnDetail", addOnDetail)

-- End SetAddOnDetail function hook.

LibStub("LibRevision"):Set("$URL$","$Rev$","6.0.DEV.", 'auctioneer', 'libs')

local function toggle()
	if Swatter.Error:IsVisible() then
		Swatter.Error:Hide()
	else
		Swatter.ErrorShow()
	end
end

local function addSlideIcon()
	if LibStub then
		local LibDataBroker = LibStub:GetLibrary("LibDataBroker-1.1", true)
		if not LibDataBroker then return end
		local LDBButton = LibDataBroker:NewDataObject("Swatter", {
					type = "launcher",
					icon = "Interface\\AddOns\\!Swatter\\Textures\\SwatterIcon",
					OnClick = function(self, button) toggle(self, button) end,
					})

		function LDBButton:OnTooltipShow()
			self:AddLine("Swatter",  1,1,0.5, 1)
			self:AddLine("Swatter is a bug catcher that performs additional backtracing to allow AddOn authors to easily trace errors when you send them error reports. You may disable this AddOn if you never get bugs, don't care about them, or never report them when you do get them.",  1,1,0.5, 1)
			self:AddLine("|cff1fb3ff".."Click".."|r ".."to open the report.",  1,1,0.5, 1)
		end
		function LDBButton:OnEnter()
			GameTooltip:SetOwner(self, "ANCHOR_NONE")
			GameTooltip:SetPoint("TOPLEFT", self, "BOTTOMLEFT")
			GameTooltip:ClearLines()
			LDBButton.OnTooltipShow(GameTooltip)
			GameTooltip:Show()
		end
		function LDBButton:OnLeave()
			GameTooltip:Hide()
		end
	end
end

do -- protect chat function, AddMessage can fail during certain events, e.g. at logout
	local function protectChat(msg)
		if DEFAULT_CHAT_FRAME then
			DEFAULT_CHAT_FRAME:AddMessage(msg)
		end
	end
	function Swatter.ChatMsg(msg)
		pcall(protectChat, msg)
	end
end

local chat = Swatter.ChatMsg

function Swatter.IsEnabled()
	return SwatterData.enabled
end

local function HookChatLinkCatcher()
	-- only run once, we don't want to install duplicate hooks
	HookChatLinkCatcher = nil

	-- hook to display our error frame when user clicks on a swatter link in chat
	local orig = SetItemRef
	_G["SetItemRef"] = function(...)
		local link = ...
		local id = link:match("^swatter:(%d+)")
		if id then -- it's a swatter link
			id = tonumber(id)
			for pos, errid in ipairs(Swatter.errorOrder) do
				if (errid == id) then
					Swatter.ErrorShow(pos)
					return
				end
			end
		else -- some other type of link
			return orig(...)
		end
	end
end
local function SwatterLink(id, context, hex)
	if HookChatLinkCatcher then HookChatLinkCatcher() end
	return format("|Hswatter:%d|h|c%s[%s]|r|h", id, hex or "ffff3311", context)
	-- Note the colour escape code is _inside_ the hyperlink escape codes
	-- If the user inadvertantly manages to relink it, this will trigger an error
	-- Otherwise it would cause a disconnect {SWAT-12}
end

local flagBlockReentry -- Prevent re-entering OnError if an error occurs within it

local function OnError(msg, frame, stack, etype, ...)
	if type(msg) ~= "string" or msg == "" then
		msg = "Unknown Error"
	end
	flagBlockReentry = msg

	if type(frame) == "string" then
		frame = Swatter.NamedFrame(frame) or Swatter.nilFrame
	elseif type(frame) ~= "table" or type(frame.GetName) ~= "function" then
		frame = Swatter.nilFrame
	end

	local context
	if (not frame.Swatter) then frame.Swatter = {} end
	local id = frame.Swatter[msg]

	-- id might still exist if we've done a clear, because we don't cycle through the frames killing frame.Swatter data
	-- So we have to check for both here
	if not (id and SwatterData.errors[id]) then
		context = frame:GetName()
		if type(context) ~= "string" or context == "" then context = "Unknown" end -- paranoia
		local newentry = {
			context = context,
			timestamp = date("%Y-%m-%d %H:%M:%S"),
			message = msg,
			count = 0,
		}
		tinsert(SwatterData.errors, newentry)
		id = #(SwatterData.errors)
		frame.Swatter[msg] = id
		tinsert(Swatter.errorOrder, id)


		if type(stack) ~= "string" or stack == "" then
			stack = debugstack(DEBUG_LEVEL, 20, 20)
		end
		newentry.stack = stack

		newentry.locals = debuglocals(DEBUG_LEVEL)

		newentry.addons = Swatter.GetAddOns()
	else
		context = SwatterData.errors[id].context
		for pos, errid in ipairs(Swatter.errorOrder) do
			if (errid == id) then
				table.remove(Swatter.errorOrder, pos)
				break
			end
		end
		tinsert(Swatter.errorOrder, id)
	end

	local err = SwatterData.errors[id]
	local count = err.count or 0
	if (count < 1000) then err.count = count + 1 end
	if count == 0 and SwatterData.enabled then
		if etype == "ADDON_ACTION_BLOCKED" then
			if SwatterData.warning and not Swatter.blockWarn then
				chat("|cffffaa11Warning only: Swatter found blocked actions:|r "..SwatterLink(id, context))
				chat("|cffffaa11Note: Swatter will continue to catch blocked actions but this is the last time this session that we'll tell you about it.|r")
				Swatter.blockWarn = true
			end
		elseif SwatterData.autoshow and (not InCombatLockdown() or SwatterData.combat) then
			Swatter.ErrorUpdate()
			Swatter.Error:Show()
		else
			chat("|cffffaa11Swatter caught error:|r "..SwatterLink(id, context))
		end
	end
	flagBlockReentry = nil
end

-- Wrappers around OnError to control which parameters get passed through
local origHandler = geterrorhandler()
-- We shall set this as the error handler in the *last line* of the file
local function OnErrorHandler(msg)
	if not SwatterData.enabled then
		return origHandler(msg) -- tailcall here, to remove this stub from the stack
	elseif flagBlockReentry then
		-- simple fallback handler: just report old and new messages to chat
		-- (we do not call origHandler in case that encounters the same error, causing an infinite loop)
		chat("Swatter: Error detected within OnError function")
		chat("Old error: "..flagBlockReentry)
		chat("New error: "..msg)
		flagBlockReentry = nil
		return
	else
		OnError(msg)
	end
end
function Swatter.OnError(msg, frame, stack)
	OnError(msg, frame, stack)
end
-- Test:  /run Swatter.OnError("Test")

function Swatter.NamedFrame(name)
	if type(name) ~= "string" or name == "" then return end
	if (not Swatter.named) then Swatter.named = {} end
	if (not Swatter.named[name]) then
		Swatter.named[name] = {
			name = name,
			GetName = function(obj) return obj.name end,
		}
	end
	return Swatter.named[name]
end

local function keyPairs(t,f)
	local a, i = {}, 0
	for n in pairs(t) do table.insert(a, n) end
	table.sort(a, f)
	local iter = function ()
		i = i + 1
		if a[i] == nil then return nil
		else return a[i], t[a[i]] end
	end
	return iter
end

function Swatter.GetConfig()
	local locale = GetLocale()
	local realmList = GetCVar("realmList") or "none"
	local version, build, date, tocversion = GetBuildInfo()
	local trimmedRealmList = realmList:gsub("\.logon\.worldofwarcraft\.com", "")
	local configString = string.format("  BlizRuntimeLib_%s v%s.%s \<%s\>\n",
					locale, version, tocversion, trimmedRealmList )
	return configString
end

function Swatter.GetAddOns()
	local addlist = ""

	local addons = {}
	for i = 1, GetNumAddOns() do
		if IsAddOnLoaded(i) then
			local name = GetAddOnInfo(i)
			local version = GetAddOnMetadata(i, "Version")
			local addition = GetAddOnMetadata(i, "X-Swatter-Extra")
			if not version then
				version = GetAddOnMetadata(i, "X-Version")
			end
			if not version then
				version = ""
			end
			addons[name:lower()] = {
				name = name,
				version = version,
				["x-swatter-extra"] = addition,
			}
		end
	end

	for addon, reg in pairs(Swatter.moduleDetail) do
		addons[addon] = reg
	end

	for addon, reg in keyPairs(addons) do
		local version
		local addition = ""

		local name = reg.name
		version = reg.version
		if (reg["x-swatter-extra"]) then
			addition = "("..reg["x-swatter-extra"]..")"
		end

		name = name:gsub("[^a-zA-Z0-9]+", "")

		if not version then
			local class = _G[name]
			if not class or type(class)~='table' then class = _G[name:lower()] end
			if not class or type(class)~='table' then class = _G[name:sub(1,1):upper()..name:sub(2):lower()] end
			if not class or type(class)~='table' then class = _G[name:upper()] end
			if class and type(class)=='table' then
				if (class.version) then
					version = class.version
				elseif (class.Version) then
					version = class.Version
				elseif (class.VERSION) then
					version = class.VERSION
				end
			end
		end

		if not version then
			local const = _G[name:upper().."_VERSION"]
			if (const) then version = const end
		end

		if type(version)=='table' then
			if (nLog) then
				nLog.AddMessage("!swatter", "Swatter.lua", N_INFO, "version is a table", name, table.concat(version,":"))
			end
			version = table.concat(version,":")
		end

		if (version) then
			addlist = addlist.."  "..name..", v"..tostring(version)..addition.."\n"
		else
			addlist = addlist.."  "..name.."\n"
		end
	end

	addlist = addlist..Swatter.GetConfig()

	addlist = addlist..string.format("  (ck=%x)\n", addlist:len())
	return addlist
end


-- Error occured in: Global
-- Date: "%m/%d/%y %H:%M:%S"
-- Count: 1
-- Message: [string "bla()"] line 1:
--   attempt to call global 'bla' (a nil value)
-- Debug:
-- [C]: in function `bla'
-- [string "bla()"]:1: in main chunk
-- [C]: in function `RunScript'
-- Interface\FrameXML\ChatFrame.lua:1788: in function `value'
-- Interface\FrameXML\ChatFrame.lua:3008: in function `ChatEdit_ParseText'
-- Interface\FrameXML\ChatFrame.lua:2734: in function `ChatEdit_SendText'
-- Interface\FrameXML\ChatFrame.lua:2756: in function `ChatEdit_OnEnterPressed'
-- [string "ChatFrame1EditBox:OnEnterPressed"]:2: in function <[string "ChatFrame1EditBox:OnEnterPressed"]:1>

function Swatter.OnEvent(frame, event, ...)
	if (event == "ADDON_LOADED") then
		local addon = ...
		if (addon:lower() == "!swatter") then
			-- We need to cleanup our error history
			if (not SwatterData.errors) then SwatterData.errors = {} end
			local ec = table.getn(SwatterData.errors) or 0
			if (ec > Swatter.HISTORY_SIZE) then
				local remove = ec - Swatter.HISTORY_SIZE
				for i=1, remove do
					table.remove(SwatterData.errors, 1)
				end
			end
			for pos, err in ipairs(SwatterData.errors) do
				tinsert(Swatter.errorOrder, pos)
			end
			Swatter.loadCount = #SwatterData.errors
			Swatter.lastShown = Swatter.loadCount
			return
		end
	elseif event == "ADDON_ACTION_BLOCKED" then
		if SwatterData.enabled then
			local addon, func = ...
			if (InCombatLockdown()) then
				OnError(string.format("Note: AddOn %s attempted to call a protected function (%s) during combat lockdown.", addon, func), Swatter.NamedFrame("AddOn: "..addon), debugstack(2, 20, 20), event, ...)
			else
				OnError(string.format("Warning: AddOn %s attempted to call a protected function (%s) which may require interaction.", addon, func), Swatter.NamedFrame("AddOn: "..addon), debugstack(2, 20, 20), event, ...)
			end
		else
			UIParent_OnEvent(frame, event, ...)
		end
	elseif (event == "ADDON_ACTION_FORBIDDEN") then
		if SwatterData.enabled then
			local addon, func = ...
			OnError(string.format("Error: AddOn %s attempted to call a forbidden function (%s) from a tainted execution path.", addon, func), Swatter.NamedFrame("AddOn: "..addon), debugstack(2, 20, 20), event, ...)
		else
			UIParent_OnEvent(frame, event, ...)
		end
	elseif (event == "PLAYER_LOGIN") then
		addSlideIcon() --create ldb launcher button
		-- Check to see if any events have happened since we loaded and the player is ready to view them
		local curCount = #SwatterData.errors
		local loadCount = Swatter.loadCount
		if curCount > loadCount then
			Swatter.ErrorShow()
		end
	elseif (event == "PLAYER_ENTERING_WORLD") then
		tinsert(UISpecialFrames, "SwatterProxyFrame")
		Swatter.Frame:UnregisterEvent("PLAYER_ENTERING_WORLD")
	end
end

function Swatter.ErrorShow(pos)
	local maxError = #SwatterData.errors
	local curError = tonumber(pos)
	if not curError then
		curError = Swatter.lastShown
		if curError then
			curError = min(curError + 1, maxError)
		else
			curError = maxError
		end
	end

	Swatter.Error.pos = curError or -1
	if (Swatter.Error.pos == 0) then
		Swatter.Error.pos = -1
	end
	Swatter.ErrorDisplay()
end

local ERROR_FORMAT = [[|cffff5533Date:|r %s
|cffff5533ID:|r %d
|cffff5533Error occured in:|r %s
|cffff5533Count:|r %s
|cffff5533Message:|r %s
|cffff5533Debug:|r
%s
|cffff5533Locals:|r
%s
|cffff5533AddOns:|r
%s
]]

function Swatter.ErrorDisplay(id)
	if id then Swatter.Error.pos = id else id = Swatter.Error.pos end
	Swatter.ErrorUpdate()

	if (id == -1) then
		Swatter.Error.curError = "There are no errors to show."
		Swatter.ErrorUpdate()
		return
	end

	local errid = Swatter.errorOrder[id]
	if (not errid) then
		Swatter.Error.curError = "Unknown error at position "..id
		Swatter.ErrorUpdate()
		return
	end
	local err = SwatterData.errors[errid]
	if (not err) then
		Swatter.Error.curError = "Unknown error at index "..errid
		Swatter.ErrorUpdate()
		return
	end

	local timestamp = err.timestamp or "Unavailable"
	local addlist = err.addons or "  Unavailable"
	local context = err.context or "Anonymous"
	local trace = err.stack or "Unavailable"
	local locals = err.locals or "None"
	-- Double-escape any pipe characters in locals, otherwise EditBox:SetText will treat them as escape codes
	locals = locals:gsub('|', '||')

	local message = err.message:gsub("(.-):(%d+): ", "%1 line %2:\n   "):gsub("Interface(\\%w+\\)", "..%1"):gsub(": in function `(.-)`", ": %1"):gsub("|", "||"):gsub("{{{", "|cffff8855"):gsub("}}}", "|r")
	--Hide users account name if it is a saved variable related error
	message = message:gsub("(.-Account\\)(.-)(\\SavedVariables.*)", "%1BLANK%3")
	trace = "   "..trace:gsub("Interface\\AddOns\\", ""):gsub("Interface(\\%w+\\)", "..%1"):gsub(": in function `(.-)'", ": %1()"):gsub(": in function <(.-)>", ":\n   %1"):gsub(": in main chunk ", ": "):gsub("\n$",""):gsub("\n", "\n   ")
	local count = err.count
	if (count > 999) then count = "\226\136\158" --[[Infinity]] end

	local errPos = id - Swatter.loadCount
	if errPos <= 0 then errPos = errPos - 1 end

	Swatter.Error.curError = ERROR_FORMAT:format(timestamp, errPos, context, count, message, trace, locals, addlist)
	Swatter.Error.selected = false
	Swatter.ErrorUpdate()
	Swatter.Error:Show()
end

function Swatter.ErrorDone()
	Swatter.Error:Hide()
end

function Swatter.ErrorPrev()
	local cur = Swatter.Error.pos or 1
	if (cur > 1) then
		Swatter.ErrorDisplay(cur - 1)
	else
		Swatter.ErrorUpdate()
	end
end

function Swatter.ErrorNext()
	local cur = Swatter.Error.pos or 1
	local max = table.getn(Swatter.errorOrder) or 0
	if (cur < max) then
		Swatter.ErrorDisplay(cur + 1)
	else
		Swatter.ErrorUpdate()
	end
end

function Swatter.UpdateNextPrev()
	local cur = Swatter.Error.pos or 1
	local max = #Swatter.errorOrder or 0
	if ((max > cur) and (cur ~= -1)) then Swatter.Error.Next:Enable() else Swatter.Error.Next:Disable() end
	if (cur > 1) then Swatter.Error.Prev:Enable() else Swatter.Error.Prev:Disable() end
end

function Swatter.ErrorUpdate()
	if (not Swatter.Error.curError) then Swatter.Error.curError = "" end
	Swatter.Error.Box:SetText(Swatter.Error.curError)
	Swatter.Error.Scroll:UpdateScrollChildRect()
	Swatter.Error.Box:ClearFocus()
	Swatter.UpdateNextPrev()
	Swatter.Error:Show()
end

function Swatter.ErrorClicked()
	if (Swatter.Error.selected) then return end
	Swatter.Error.Box:HighlightText()
	Swatter.Error.selected = true
end

-- Create our error message frame
Swatter.Error = CreateFrame("Frame", "SwatterErrorFrame", UIParent, BackdropTemplateMixin and "BackdropTemplate")
Swatter.Error:Hide()
Swatter.Error:SetPoint("CENTER", "UIParent", "CENTER")
Swatter.Error:SetFrameStrata("TOOLTIP")
Swatter.Error:SetHeight(280)
Swatter.Error:SetWidth(500)
Swatter.Error:SetBackdrop({
	bgFile = "Interface/Tooltips/ChatBubble-Background",
	edgeFile = "Interface/Tooltips/ChatBubble-BackDrop",
	tile = true, tileSize = 32, edgeSize = 32,
	insets = { left = 32, right = 32, top = 32, bottom = 32 }
})
Swatter.Error:SetBackdropColor(0,0,0, 1)
Swatter.Error:SetScript("OnShow", Swatter.ErrorShow)
Swatter.Error:SetMovable(true)
Swatter.Error:SetClampedToScreen(true)
Swatter.Error:SetToplevel(true)
Swatter.Error.RealShow = Swatter.Error.Show
Swatter.Error.RealHide = Swatter.Error.Hide
function Swatter.Error:Show(...)
	Swatter.Error.isShown = true
	Swatter.Error:RealShow(...)
end
function Swatter.Error:Hide(...)
	Swatter.Error.isShown = nil
	Swatter.lastShown = #Swatter.errorOrder
	Swatter.Error:RealHide(...)
end

Swatter.ProxyFrame = CreateFrame("Frame", "SwatterProxyFrame")
Swatter.ProxyFrame:SetParent(Swatter.Error)
Swatter.ProxyFrame.IsShown = function() return Swatter.Error:IsShown() end
Swatter.ProxyFrame.escCount = 0
Swatter.ProxyFrame.timer = 0
Swatter.ProxyFrame.Hide = (
	function( self )
		local numEscapes = SwatterData.numEscapes or 1
		self.escCount = self.escCount + 1
		if ( self.escCount >= numEscapes ) then
			self:GetParent():Hide()
			self.escCount = 0
		end
		if ( self.escCount == 1 ) then
			self.timer = 0
		end
	end
)
Swatter.ProxyFrame:SetScript("OnUpdate",
	function( self, elapsed )
		local timer = self.timer + elapsed
		if ( timer >= 1 ) then
			self.escCount = 0
		end
		self.timer = timer

	end
)

Swatter.Drag = CreateFrame("Button", nil, Swatter.Error)
Swatter.Drag:SetPoint("TOPLEFT", Swatter.Error, "TOPLEFT", 10,-5)
Swatter.Drag:SetPoint("TOPRIGHT", Swatter.Error, "TOPRIGHT", -10,-5)
Swatter.Drag:SetHeight(8)
Swatter.Drag:SetHighlightTexture("Interface\\FriendsFrame\\UI-FriendsFrame-HighlightBar")

Swatter.Drag:SetScript("OnMouseDown", function() Swatter.Error:StartMoving() end)
Swatter.Drag:SetScript("OnMouseUp", function() Swatter.Error:StopMovingOrSizing() end)

Swatter.Error.Done = CreateFrame("Button", "", Swatter.Error, "UIPanelButtonTemplate")
Swatter.Error.Done:SetWidth(90)
Swatter.Error.Done:SetHeight(21)
Swatter.Error.Done:SetText("Close")
Swatter.Error.Done:SetPoint("BOTTOMRIGHT", Swatter.Error, "BOTTOMRIGHT", -10, 10)
Swatter.Error.Done:SetScript("OnClick", Swatter.ErrorDone)
Swatter.Error.Done:SetFrameLevel(5)

Swatter.Error.Next = CreateFrame("Button", "", Swatter.Error, "UIPanelButtonTemplate")
Swatter.Error.Next:SetWidth(90)
Swatter.Error.Next:SetHeight(21)
Swatter.Error.Next:SetText("Next >")
Swatter.Error.Next:SetPoint("BOTTOMRIGHT", Swatter.Error.Done, "BOTTOMLEFT", -5, 0)
Swatter.Error.Next:SetScript("OnClick", Swatter.ErrorNext)
Swatter.Error.Next:SetFrameLevel(5)

Swatter.Error.Prev = CreateFrame("Button", "", Swatter.Error, "UIPanelButtonTemplate")
Swatter.Error.Prev:SetWidth(90)
Swatter.Error.Prev:SetHeight(21)
Swatter.Error.Prev:SetText("< Prev")
Swatter.Error.Prev:SetPoint("BOTTOMRIGHT", Swatter.Error.Next, "BOTTOMLEFT", -5, 0)
Swatter.Error.Prev:SetScript("OnClick", Swatter.ErrorPrev)
Swatter.Error.Prev:SetFrameLevel(5)

Swatter.Error.Mesg = Swatter.Error:CreateFontString("", "OVERLAY", "GameFontNormalSmall")
Swatter.Error.Mesg:SetJustifyH("LEFT")
Swatter.Error.Mesg:SetPoint("TOPRIGHT", Swatter.Error.Prev, "TOPLEFT", -10, 0)
Swatter.Error.Mesg:SetPoint("LEFT", Swatter.Error, "LEFT", 15, 0)
Swatter.Error.Mesg:SetHeight(20)
Swatter.Error.Mesg:SetText("Select All and Copy the above error message to report this bug.")

Swatter.Error.Scroll = CreateFrame("ScrollFrame", "SwatterErrorInputScroll", Swatter.Error, "UIPanelScrollFrameTemplate")
Swatter.Error.Scroll:SetPoint("TOPLEFT", Swatter.Error, "TOPLEFT", 20, -20)
Swatter.Error.Scroll:SetPoint("RIGHT", Swatter.Error, "RIGHT", -30, 0)
Swatter.Error.Scroll:SetPoint("BOTTOM", Swatter.Error.Done, "TOP", 0, 10)

Swatter.Error.Box = CreateFrame("EditBox", "SwatterErrorEditBox", Swatter.Error.Scroll)
Swatter.Error.Box:SetWidth(450)
Swatter.Error.Box:SetHeight(85)
Swatter.Error.Box:SetMultiLine(true)
Swatter.Error.Box:SetAutoFocus(false)
Swatter.Error.Box:SetFontObject(GameFontHighlight)
Swatter.Error.Box:SetScript("OnEscapePressed", Swatter.ErrorDone)
Swatter.Error.Box:SetScript("OnTextChanged", Swatter.ErrorUpdate)
Swatter.Error.Box:SetScript("OnEditFocusGained", Swatter.ErrorClicked)

Swatter.Error.Scroll:SetScrollChild(Swatter.Error.Box)

Swatter.Frame = CreateFrame("Frame")
Swatter.Frame:Show()
Swatter.Frame:SetScript("OnEvent", Swatter.OnEvent)
Swatter.Frame:RegisterEvent("ADDON_LOADED")
Swatter.Frame:RegisterEvent("ADDON_ACTION_FORBIDDEN")
Swatter.Frame:RegisterEvent("ADDON_ACTION_BLOCKED")
Swatter.Frame:RegisterEvent("PLAYER_ENTERING_WORLD")
Swatter.Frame:RegisterEvent("PLAYER_LOGIN")
Swatter.Frame:SetScript("OnUpdate", function(self, elapsed)
	if not self.timer then self.timer = 0 end
	self.timer = self.timer + elapsed
	if self.timer > 2 then
		self.timer = 0
		if Swatter.Error.isShown then
			if not Swatter.Error:IsVisible() then
				Swatter.Error:RealShow()
			end
		elseif Swatter.Error:IsVisible() then
			Swatter.Error:RealHide()
		end
	end
end)

UIParent:UnregisterEvent("ADDON_ACTION_FORBIDDEN")
UIParent:UnregisterEvent("ADDON_ACTION_BLOCKED")

SLASH_SWATTER1 = "/swatter"
SLASH_SWATTER2 = "/swat"
SlashCmdList["SWATTER"] = function(msg)
	if (not msg or msg == "" or msg == "help") then
		chat("Swatter help:")
		chat("  /swat enable    -  Enables swatter")
		chat("  /swat disable   -  Disables swatter")
		chat("  /swat show      -  Shows the last error box again")
		chat("  /swat autoshow  -  Enables swatter autopopup upon error")
		chat("  /swat noauto    -  Swatter will only show an error in chat")
		chat("  /swat warn      -  Enables swatter's blocked warnings")
		chat("  /swat nowarn    -  Disables swatter's blocked warnings")
		chat("  /swat combat    -  Enable autopopup during combat, if autoshow is also enabled")
		chat("  /swat nocombat  -  Prevent autopopup during combat")
		chat("  /swat clear     -  Swatter will clear the list of errors")
	elseif (msg == "show") then
		Swatter.ErrorShow()
	elseif (msg == "enable") then
		SwatterData.enabled = true
		flagBlockReentry = false
		chat("Swatter will now catch errors")
	elseif (msg == "disable") then
		SwatterData.enabled = false
		chat("Swatter will no longer catch errors")
	elseif (msg == "warn") then
		SwatterData.warning = true
		chat("Swatter will now catch warnings")
	elseif (msg == "nowarn") then
		SwatterData.warning = false
		chat("Swatter will no longer catch warnings")
	elseif (msg == "autoshow") then
		SwatterData.autoshow = true
		chat("Swatter will popup the first time it sees an error")
	elseif (msg == "noauto") then
	   SwatterData.autoshow = false
	   chat("Swatter will print into chat instead of popping up")
	elseif msg == "combat" then
		SwatterData.combat = true
		chat("Swatter will popup errors during combat (if autoshow is enabled as well).")
	elseif msg == "nocombat" then
		SwatterData.combat = false
		chat("Swatter will not popup errors during combat")
	elseif (msg == "clear") then
		Swatter.Error:Hide()
		SwatterData.errors = {}
		Swatter.errorOrder = {}
		Swatter.loadCount = 0
		Swatter.lastShown = 0
		flagBlockReentry = false
		--Note: we are not killing the frame.Swatter values - I am hoping that they are transient to the game session and aren't saved anywhere
		--Swatter.ErrorUpdate()
		chat("Swatter errors have been cleared")
	end
end

-- Set Swatter as the error handler. Do this as the last thing in the file, in case the file itself generates errors
seterrorhandler(OnErrorHandler)

