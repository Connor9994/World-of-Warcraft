--[[
	Slidebar AddOn for World of Warcraft (tm)
	Version: 9.1.BETA.5.11 (OneMawTime)
	Revision: $Id$
	URL: http://auctioneeraddon.com/dl/

	License:
		This program is free software; you can redistribute it and/or
		modify it under the terms of the GNU General Public License
		as published by the Free Software Foundation; either version 2
		of the License, or (at your option) any later version.

		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.

		You should have received a copy of the GNU General Public License
		along with this program(see GPL.txt); if not, write to the Free Software
		Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

	Note:
		This AddOn's source code is specifically designed to work with
		World of Warcraft's interpreted AddOn system.
		You have an implicit license to use this AddOn with these facilities
		since that is its designated purpose as per:
		http://www.fsf.org/licensing/licenses/gpl-faq.html#InterpreterIncompat
]]

local LIBRARY_VERSION_MAJOR = "SlideBar"
local LIBRARY_VERSION_MINOR = 19
local lib = LibStub:NewLibrary(LIBRARY_VERSION_MAJOR, LIBRARY_VERSION_MINOR)
if not lib then return end

LibStub("LibRevision"):Set("$URL$","$Rev$","6.0.DEV.", 'auctioneer', 'libs')

-- Autoconvert existing nSideBar instances to SlideBar
if LibStub.libs.nSideBar then
	for k,v in pairs(LibStub.libs.nSideBar) do
		lib[k] = v
	end
	LibStub.libs.nSideBar = lib
	LibStub.minors.nSideBar = LIBRARY_VERSION_MINOR
end

if not lib.private then
	lib.private = {}
end

local private = lib.private
local frame

local function toboolean(value)
	if value and value ~= "0" and value ~= 0 then
		return true
	end
	return false
end

local LibDataBroker = LibStub("LibDataBroker-1.1", true) -- silent
if not LibDataBroker then
	-- This should only occur in the Dev version of SlideBar, which does not come with the Libs embedded
	-- We will look for the disembedded LibDataBroker AddOn from the Norganna Libs, and load it if found
	local add = "LibDataBroker"
	local _, _, _, _, reason = GetAddOnInfo(add)
	if reason == "DEMAND_LOADED" then -- check that LibDataBroker exists and is the expected type
		LoadAddOn(add)
		LibDataBroker = LibStub("LibDataBroker-1.1", true) -- try again
	end
end

--[[  API FUNCTIONS ]]--

-- Return the version of the current bar library
function lib.GetVersion()
	return LIBRARY_VERSION_MAJOR, LIBRARY_VERSION_MINOR;
end

-- Capture the bar and stop it from closing (must release!)
function lib.Capture()
	frame.PopTimer = 0.01
	frame.PopDirection = 1
	frame.captured = true
end

-- Release the bar if you have captured it
function lib.Release()
	if not frame.captured then return end
	frame.PopTimer = 0.75
	frame.PopDirection = -1
	frame.captured = nil
end

-- Capture the bar and stop it from closing before object
function lib.WaitFor(object)
	frame.PopTimer = 0.01
	frame.PopDirection = 1
	frame.captured = object
end

-- Add a button to the bar, where:
--   id = the id for this button (you will use this to reference the button).
--   texture = the path to your button's texture.
--   priority = determines your button's position in the list (lower numbers = earlier).
--   globalname = if specified, sets your button's "frame name".
--   quiet = stops nsidebar from popping open to let the user know there's a new button.
function lib.AddButton(id, texture, priority, globalname, quiet, dataobj)
	assert(type(id)=="string", "ButtonId must be a string")

	local button
	if not frame.buttons[id] then
		button = CreateFrame("Button", globalname, frame)
		button.frame = frame
		button.dataobj = dataobj
		button:SetPoint("TOPLEFT", frame, "TOPLEFT", 0,0)
		button:SetWidth(30)
		button:SetHeight(30)
		button:RegisterForClicks("LeftButtonUp","RightButtonUp")
		button:SetScript("OnMouseDown", function (self, ...) private.MouseDown(self.frame, self, ...) end)
		button:SetScript("OnMouseUp", function (self, ...) private.MouseUp(self.frame, self, ...) end)
		button:SetScript("OnEnter", function (self, ...) private.PopOut(self.frame, self, ...) if dataobj and dataobj.OnEnter then dataobj.OnEnter(self) GameTooltip:Hide() end end) --LDB dataobjects can have possible on enter/leave scripts to execute as well
		button:SetScript("OnLeave", function (self, ...) private.PopBack(self.frame, self, ...) if dataobj and dataobj.OnLeave then dataobj.OnLeave(self) end end)
		button.icon = button:CreateTexture("", "BACKGROUND")
		button.icon:SetTexCoord(0.025, 0.975, 0.025, 0.975)
		button.icon:SetPoint("TOPLEFT", button, "TOPLEFT", 0,0)
		button.icon:SetWidth(30)
		button.icon:SetHeight(30)
		button.id = id
		frame.buttons[id] = button
	else
		button = frame.buttons[id]
	end
	if texture then
		button.icon:SetTexture(texture)
	end
	--LDB textures
	if dataobj then
		dataobj.button = button
		if dataobj.OnClick then
			button:SetScript("OnClick", dataobj.OnClick)
		end
		if dataobj.icon then
			button.icon:SetTexture(dataobj.icon)
			--check the desaturated method.  true if icon starts in a desaturated state
			if dataobj.iconDesaturated then
				button.icon:SetDesaturated(true)
			end
		end
	end
	if priority or not button.priority then
		button.priority = priority or 200
	end
	button.removed = nil
	button:Show()

	if quiet then
		lib.ApplyLayout()
	else
		-- Show people that the button has popped in
		lib.FlashOpen(1.5)
	end
	return button
end

-- Returns an iterator over the button list (id, button)
function lib.IterateButtons()
	return pairs(frame.buttons)
end

-- Gets the button with the associated id (if it exists)
function lib.GetButton(id)
	return frame.buttons[id]
end

-- Removes the button with the associated id from the bar
function lib.RemoveButton(id)
	local button = frame.buttons[id]
	if not button then return end

	button:Hide()
	frame.buttons[id].removed = true
	lib.ApplyLayout()
end

-- Causes the button to be displayed (persists across sessions)
function lib.ShowButton(id)
	local button = frame.buttons[id]
	assert(button, "ButtonId "..id.." does not exist")
	SlideBarConfig[id..".hide"] = nil
	lib.ApplyLayout()
end

-- Causes the button to be hidden (persists across sessions)
function lib.HideButton(id)
	local button = frame.buttons[id]
	assert(button, "ButtonId "..id.." does not exist")
	SlideBarConfig[id..".hide"] = true
	lib.ApplyLayout()
end

-- Causes the bar to flash open for a given number of seconds
function lib.FlashOpen(delay)
	private:PerformOpen()
	-- Schedule a close in 1.5 seconds
	frame.PopTimer = delay or 1.5
	frame.PopDirection = -1
end

-- Updates the bar's buttons and position, where
--   useLayout = if set, uses the cached layout, otherwise regenerates it;
--               if you hide, show, add or remove buttons, you should regenerate.
function lib.ApplyLayout(useLayout)
	if not SlideBarConfig.enabled then
		frame:Hide()
		return
	end

	for k,v in pairs(SlideBarConfig) do
		if not private.lastConfig[k] or private.lastConfig[k] ~= v then
			useLayout = false
		end
		private.lastConfig[k] = v
	end

	if not lib.private.layout then
		lib.private.layout = {}
		useLayout = false
	end
	local layout = lib.private.layout

	if not useLayout then
		for i = 1, #layout do tremove(layout) end
		for id, button in pairs(frame.buttons) do
			if not button.removed
			and not SlideBarConfig[id..".hide"] then
				tinsert(layout, button)
			elseif button:IsShown() then
				button:Hide()
			end
		end

		if (#layout == 0) then
			frame:Hide()
			return
		end

		table.sort(layout, private.buttonSort)
	end

	if (#layout == 0) then
		frame:Hide()
		return
	end

	local wide = tonumber(SlideBarConfig.maxWidth) or 12
	local width = wide
	if (#layout < wide) then width = #layout end
	local height = math.floor((#layout - 1) / wide) + 1

	local distance = 9
	if (frame.isOpen) then
		distance = width * 32 + 10
		if (frame:GetAlpha() < 1) then
			UIFrameFadeIn(frame, 0.25, frame:GetAlpha(), 1)
		end
	elseif SlideBarConfig.visibility then
		if (frame:GetAlpha() > 0.2) then
			UIFrameFadeOut(frame, 1.5, frame:GetAlpha(), 0.2)
		end
	end

	local side = (SlideBarConfig.anchor or "right"):lower()
	local position = tonumber(SlideBarConfig.position) or 180
	frame:ClearAllPoints()
	if (side == "top") then
		frame:SetPoint("BOTTOMLEFT", UIParent, "TOPLEFT", position, -1*distance)
	elseif (side == "bottom") then
		frame:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", position, distance)
	elseif (side == "left") then
		frame:SetPoint("TOPRIGHT", UIParent, "TOPLEFT", distance, -1*position)
	elseif (side == "right") then
		frame:SetPoint("TOPLEFT", UIParent, "TOPRIGHT", -1*distance, -1*position)
	end

	if (useLayout) then return end

	frame.Tab:ClearAllPoints()
	if (side == "top" or side == "bottom") then
		frame:SetWidth(height * 32 + 10)
		frame:SetHeight(width * 32 + 18)
		if (side == "top") then
			frame.Tab:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 5, 5)
			frame.Tab:SetPoint("RIGHT", frame, "RIGHT", -5, 0)
		else
			frame.Tab:SetPoint("TOPLEFT", frame, "TOPLEFT", 5, -5)
			frame.Tab:SetPoint("RIGHT", frame, "RIGHT", -5, 0)
		end
		frame.Tab:SetHeight(3)
	else
		frame:SetWidth(width * 32 + 18)
		frame:SetHeight(height * 32 + 10)
		if (side == "right") then
			frame.Tab:SetPoint("TOPLEFT", frame, "TOPLEFT", 5, -5)
			frame.Tab:SetPoint("BOTTOM", frame, "BOTTOM", 0, 5)
		else
			frame.Tab:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -5, -5)
			frame.Tab:SetPoint("BOTTOM", frame, "BOTTOM", 0, 5)
		end
		frame.Tab:SetWidth(3)
	end
	frame:Show()

	local button
	for pos = 1, #layout do
		button = layout[pos]
		pos = pos - 1
		local row = floor(pos / wide)
		local col = pos % wide

		if (row == 0) then width = col end

		button:ClearAllPoints()
		if (side == "right") then
			button:SetPoint("TOPLEFT", frame, "TOPLEFT", col*32+10, 0-(row*32+5))
		elseif (side == "left") then
			button:SetPoint("TOPLEFT", frame, "TOPLEFT", col*32+10, 0-(row*32+5))
		elseif (side == "bottom") then
			button:SetPoint("TOPLEFT", frame, "TOPLEFT", row*32+5, 0-(col*32+10))
		elseif (side == "top") then
			button:SetPoint("TOPLEFT", frame, "TOPLEFT", row*32+5, 0-(col*32+10))
		end

		if not button:IsShown() then
			button:Show()
		end
	end
end

--[[  END OF API FUNCTIONS ]]--

-- Private functions and variables follow, you shouldn't need to fiddle with these.

-- Setup our main frame (or reuse the old one)
if lib.frame then
	frame = lib.frame
else
	frame = CreateFrame("Frame", nil, UIParent, BackdropTemplateMixin and "BackdropTemplate")
	frame:SetToplevel(true)
	--frame:SetClampedToScreen(true)
	frame:SetFrameStrata("TOOLTIP")
	frame:SetHitRectInsets(-3, -3, -3, -3)
	frame:SetBackdrop({
		bgFile = "Interface/Tooltips/UI-Tooltip-Background",
		edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
		tile = true, tileSize = 32, edgeSize = 16,
		insets = { left = 4, right = 4, top = 4, bottom = 4 }
	})
	frame:SetBackdropColor(0,0,0, 0.5)
	frame:EnableMouse(true)
	frame:SetScript("OnEnter", function(...) private.PopOut(...) end)
	frame:SetScript("OnLeave", function(...) private.PopBack(...) end)
	frame:SetScript("OnMouseDown", function(...) private.BeginMove(...) end)
	frame:SetScript("OnMouseUp", function(...) private.EndMove(...) end)
	frame:SetScript("OnUpdate", function(...) private.Popper(...) end)
	frame:SetScript("OnEvent", function(self, event, arg, ...)
		if event == "PLAYER_LOGIN" then
			private.startCounter = 10
			if private.GUI then private.GUI() end --create the configuration GUI
			if private.RescanLDBObjects then private.RescanLDBObjects() end --scan LibDataBroker objects for any additions or changes.
			frame:UnregisterEvent("PLAYER_LOGIN")
			frame:SetScript("OnEvent", nil)
		elseif event == "ADDON_LOADED" and arg == "SlideBar" then
			if type(SlideBarConfig) == "table" then
				-- check/update existing saved vars
				if SlideBarConfig.enabled == nil then
					SlideBarConfig.enabled = true -- old default
				else
					SlideBarConfig.enabled = toboolean(SlideBarConfig.enabled)
				end
				SlideBarConfig.locked = toboolean(SlideBarConfig.locked)
				SlideBarConfig.visibility = toboolean(SlideBarConfig.visibility)
				SlideBarConfig.position = tonumber(SlideBarConfig.position)
			else
				SlideBarConfig = {
					enabled = true, -- default to enabled
				}
			end
			frame:UnregisterEvent("ADDON_LOADED")
		end
	end)
	frame:RegisterEvent("PLAYER_LOGIN")
	frame:RegisterEvent("ADDON_LOADED")

	frame.Tab = frame:CreateTexture()
	frame.Tab:SetColorTexture(0.98, 0.78, 0)
	frame.buttons = {}

	SLASH_NSIDEBAR1 = "/sbar"
	SLASH_NSIDEBAR2 = "/slidebar"
	SLASH_NSIDEBAR3 = "/nsb"
	SlashCmdList["NSIDEBAR"] = function(msg)
		private.CommandHandler(msg)
	end

	lib.frame = frame
end

-- Create a special tooltip just for us
if not lib.tooltip then
	lib.tooltip = CreateFrame("GameTooltip", "SlidebarTooltip", UIParent, "GameTooltipTemplate")
	local function hide_tip()
		lib.tooltip:Hide()
	end
	lib.tooltip.fadeInfo = {}
	function lib:SetTip(frame, ...)
		local n = select("#", ...)
		if n == 1 then
			-- Allow passing of tip lines as a single table
			local tip = select(1, ...)
			if type(tip) == "table" then
				lib:SetTip(frame, unpack(tip))
				return
			end
		end

		if not frame or n == 0 then
			lib.tooltip.fadeInfo.finishedFunc = hide_tip
			local curAlpha = lib.tooltip:GetAlpha()
			UIFrameFadeOut(lib.tooltip, 0.25, curAlpha, 0)
			lib.tooltip:SetAlpha(curAlpha)
			lib.tooltip.schedule = nil
			return
		end

		if lib.tooltip:GetAlpha() > 0 then
			-- Speed up this fade
			UIFrameFadeOut(lib.tooltip, 0.01, 0, 0)
			lib.tooltip:SetAlpha(0)
		end

		lib.tooltip:SetOwner(frame, "ANCHOR_NONE")
		lib.tooltip:ClearLines()

		local tip
		for i=1, n do
			tip = select(i, ...)
			tip = tostring(tip):gsub("{{", "|cff1fb3ff"):gsub("}}", "|r")
			lib.tooltip:AddLine(tostring(tip) or "", 1,1,0.5, 1)
		end
		lib.tooltip:Show()
		lib.tooltip:SetAlpha(0)
		--corrects tooltip overlaps
		local _, _, _, X, Y = frame:GetPoint(1) --Offset of button
		local side = SlideBarConfig.anchor or "right"
		if side == "right" or side == "left" then
			lib.tooltip:SetPoint("TOP", frame.frame, "BOTTOMLEFT", X + 10, -5)
		else
			lib.tooltip:SetPoint("LEFT", frame.frame, "TOPRIGHT", 0, Y + -10)
		end
		lib.tooltip.schedule = GetTime() + 1
	end
	lib.tooltip:SetScript("OnUpdate", function()
		if lib.tooltip.schedule and GetTime() > lib.tooltip.schedule then
			local curAlpha = lib.tooltip:GetAlpha()
			UIFrameFadeIn(lib.tooltip, 0.33, curAlpha, 1)
			lib.tooltip:SetAlpha(curAlpha) -- Tooltips set alpha when they are shown, and UIFrameFadeIn does a :Show()
			lib.tooltip.schedule = nil
		end
	end)
	--lib.tooltip:SetClampedToScreen(true)
	--no easy way to make our old and LDB tooltips play togather so created a new function
	function lib:SetTipLDB(frame, ...)
		if not frame  then
			lib.tooltip.fadeInfo.finishedFunc = hide_tip
			local curAlpha = lib.tooltip:GetAlpha()
			UIFrameFadeOut(lib.tooltip, 0.25, curAlpha, 0)
			lib.tooltip:SetAlpha(curAlpha)
			lib.tooltip.schedule = nil
			return
		end

		if not frame.dataobj then return end

		if lib.tooltip:GetAlpha() > 0 then
			-- Speed up this fade
			UIFrameFadeOut(lib.tooltip, 0.01, 0, 0)
			lib.tooltip:SetAlpha(0)
		end

		lib.tooltip:SetOwner(frame, "ANCHOR_NONE")
		lib.tooltip:ClearLines()

		if not frame.dataobj.OnTooltipShow then
			--fake TT
			lib.tooltip:AddLine(frame.dataobj.name)
		else
			frame.dataobj.OnTooltipShow(lib.tooltip)
		end

		lib.tooltip:Show()
		lib.tooltip:SetAlpha(0)
		local _, _, _, X, Y = frame:GetPoint(1) --Offset of button
		local side = SlideBarConfig.anchor or "right"
		if side == "right" or side == "left" then
			lib.tooltip:SetPoint("TOP", frame.frame, "BOTTOMLEFT", X + 10, -5)
		else
			lib.tooltip:SetPoint("LEFT", frame.frame, "TOPRIGHT", 0, Y + -10)
		end
		lib.tooltip.schedule = GetTime() + .25 -- reduced show delay to .25 from 1 this is nicer IMO that "lag" like 1 sec delay
	end
end

private.lastConfig = {}

-- Functions to start and stop the sidebar drag
function private:BeginMove(...)
	if SlideBarConfig.locked then return end
	local button = ...
	if button == "LeftButton" then
		private.moving = true
	end
end

function private:EndMove(...)
	if private.moving then
		private.moving = nil
	end
end

-- Checks to see if the argument is a button
function private.IsButton(button)
	if not button then return end
	if type(button) ~= "table" then return end
	if button.id and button.icon then return true end
end

-- Functions to control the popping in and out of the bar
function private:PopOut(...)
	local button = ...
	self.PopTimer = 0.15
	self.PopDirection = 1
	if private.IsButton(button) then -- this is a button
		button.icon:SetTexCoord(0.05, 0.95, 0.05, 0.95)
		if (button.tip) then
			lib:SetTip(button, button.tip)
		else
			lib:SetTipLDB(button) --LDB buttons use this tip method
		end
		if button.OnEnter then button:OnEnter(select(2, ...)) end
	end
end

function private:PopBack(...)
	local button = ...
	self.PopTimer = 0.75
	self.PopDirection = -1
	if private.IsButton(button) then -- this is a button
		lib:SetTip()
		button.icon:SetTexCoord(0.025, 0.975, 0.025, 0.975)
		if button.OnLeave then button:OnLeave(select(2, ...)) end
	end
end

function private:PerformOpen(useLayout)
	-- Pop Out
	frame.PopDirection = nil
	frame:ClearAllPoints()
	frame.isOpen = true
	lib.ApplyLayout(useLayout)
	for _,button in ipairs(frame.buttons) do
		if button.OnOpen then button:OnOpen() end
	end
end

function private:PerformClose(useLayout)
	-- Pop Back
	frame.PopDirection = nil
	frame:ClearAllPoints()
	frame.isOpen = false
	lib.ApplyLayout(useLayout)
	for _,button in ipairs(frame.buttons) do
		if button.OnOpen then button:OnClose() end
	end
end

function private:Popper(...)
	local duration = ...
	if private.moving then
		local side, pos = private.boxMover()
		SlideBarConfig.anchor = side
		SlideBarConfig.position = pos
		lib.ApplyLayout(true)
		return
	end
	if self.PopDirection then
		self.PopTimer = self.PopTimer - duration
		if self.PopTimer < 0 then
			if self.PopDirection > 0 then
				private:PerformOpen(true)
			else
				if frame.captured
				and type(frame.captured) == "table"
				and frame.captured:IsShown() then
					frame.captured = nil
				end
				if not frame.captured then
					private:PerformClose(true)
				end
			end
		end
	end

	if private.startCounter then
		private.startCounter = private.startCounter - 1
		if private.startCounter == 0 then
			lib.FlashOpen(5)
			private.startCounter = nil
		end
	end
end

-- Functions to make the icon enlarge/shrink when the mouse moves over it
function private:MouseDown(...)
	local button = ...
	if button then
		button.icon:SetTexCoord(0, 1, 0, 1)
	end
	if self.MouseDown then self:MouseDown(...) end
end

function private:MouseUp(...)
	local button = ...
	if button then
		button.icon:SetTexCoord(0.025, 0.975, 0.025, 0.975)
	end
	if self.MouseUp then self:MouseUp(...) end
end

-- Command processor
function private.CommandHandler(msg)
	local save = false
	if (not msg or msg == "") then msg = "help" end
	local a, b = strsplit(" ", msg:lower())
	if (a == "help") then
		DEFAULT_CHAT_FRAME:AddMessage("/nsb top | left | bottom | right  |cff1020ff Set the anchor for the sidebar |r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb config  |cff1020ff Display the GUI to show or hide buttons|r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb <n>  |cff1020ff Set the position for the sidebar |r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb fadeout | nofade  |cff1020ff Set whether the sidebar fades or not |r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb size <n>  |cff1020ff Set the number of icons before the bar wraps |r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb lock | unlock  |cff1020ff enab |r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb reset  |cff1020ff Reset the bar to factory defaults |r")
		DEFAULT_CHAT_FRAME:AddMessage("/nsb off | on | toggle  |cff1020ff Disable/Enable/Toggle bar's visibility |r")
		return
	end

	if a == "lock" then
		SlideBarConfig.locked = true
		save = true
	elseif a == "unlock" then
		SlideBarConfig.locked = false
		save = true
	end

	if a == "reset" then
		SlideBarConfig = {
			enabled = true,
		}
		save = true
	end

	if (a == "top")
	or (a == "left")
	or (a == "bottom")
	or (a == "right") then
		SlideBarConfig.anchor = a
		save = true
		if (tonumber(b)) then
			a, b = b, nil
		end
	end
	if (tonumber(a)) then
		SlideBarConfig.position = min(abs(tonumber(a)), 1200)
		save = true
	end
	if (a == "fadeout" or a == "fade") then
		SlideBarConfig.visibility = true
		save = true
	elseif (a == "nofade") then
		SlideBarConfig.visibility = false
		save = true
	end
	if (a == "size") then
		local wide = tonumber(b)
		if wide and wide >= 1 then
			SlideBarConfig.maxWidth = floor(wide)
			save = true
		end
	end

	if (a == "on") then
		SlideBarConfig.enabled = true
		save = true
	elseif (a == "off") then
		SlideBarConfig.enabled = false
		save = true
	elseif (a == "toggle") then
		if SlideBarConfig.enabled then
			SlideBarConfig.enabled = false
		else
			SlideBarConfig.enabled = true
		end
		save = true
	end
	if (a == "config") then
		InterfaceOptionsFrame_OpenToCategory(frame.config)
	end
	if (save) then
		lib.ApplyLayout()
	end
end

-- Function to sort the buttons by priority during the layout phase
function private.buttonSort(a, b)
	if (a.priority ~= b.priority) then
		return a.priority < b.priority
	end
	return a.id < b.id
end

-- Function to work out where along the edge of the screen to position the bar
local SWITCH_TEXELS = 100 -- number of texels to do edge switches at
function private.boxMover()
	local curX, curY = GetCursorPosition()
	local uiScale = UIParent:GetEffectiveScale()
	local uiWidth, uiHeight = UIParent:GetWidth(), UIParent:GetHeight()
	curX, curY = curX / uiScale, curY / uiScale

	local anchor = SlideBarConfig.anchor or "right"

	if anchor == "top" and curY < uiHeight - SWITCH_TEXELS
	or anchor == "bottom" and curY > SWITCH_TEXELS then
		if curX < SWITCH_TEXELS then
			anchor = "left"
		elseif curX > uiWidth - SWITCH_TEXELS  then
			anchor = "right"
		end
	elseif anchor == "left" and curX > SWITCH_TEXELS
	or anchor == "right" and curX < uiWidth - SWITCH_TEXELS then
		if curY < SWITCH_TEXELS then
			anchor = "bottom"
		elseif curY > uiHeight - SWITCH_TEXELS  then
			anchor = "top"
		end
	end

	local pos
	if anchor == "top" or anchor == "bottom" then
		pos = curX
	else
		pos = uiHeight - curY
	end

	return anchor, pos - 16
end

--[[Use Blizzards config frame. We do not use the Configator lib]]
function private.GUI()
	private.GUI = nil

	-- Create base panel

	local config = CreateFrame("Frame", nil, UIParent)
	frame.config = config
	config:SetWidth(420)
	config:SetHeight(400)
	config:SetToplevel(true)
	config:Hide()
	config.name = "Norganna SlideBar"

	-- Functions for creating controls

	local function CheckButtonOnClick(self, mouse, isdown)
		local value
		if (self:GetChecked()) then
			PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
			value = true
		else
			PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_OFF)
			value = false
		end

		SlideBarConfig[self.setting] = value
		lib.ApplyLayout()
	end
	local function CreateCheckButton(setting, label)
		local button = CreateFrame("CheckButton", nil, frame.config, "OptionsBaseCheckButtonTemplate")
		button.setting = setting
		button:SetChecked(SlideBarConfig[setting])
		button:SetScript("OnClick", CheckButtonOnClick)

		local text = button:CreateFontString(nil, "ARTWORK", "GameFontNormal")
		button.Text = text
		text:SetPoint("LEFT", button, "RIGHT", 0, 1)
		text:SetText(label)
		button:SetHitRectInsets(0, -(text:GetStringWidth()), 0, 0)

		return button
	end

	--Set up the controls

	local help = frame.config:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	config.help = help
	help:SetText("Click on a button above to Show or Hide it from the Slidebar addon")
	help:SetPoint("TOPLEFT", frame.config,"TOPLEFT" , 15, -240)

	local enableCheck = CreateCheckButton("enabled", "Enable SlideBar")
	config.enableCheck = enableCheck
	enableCheck:SetPoint("LEFT", frame.config, "LEFT", 10, -80)

	local widthBox = CreateFrame("EditBox", "nSlideBarLengthEditBox", frame.config, "InputBoxTemplate") --has to have a name or the template bugs
	config.widthBox = widthBox
	widthBox:SetMaxLetters(2)
	widthBox:SetNumeric(true)
	widthBox:SetNumber(SlideBarConfig.maxWidth or 12)
	widthBox:SetAutoFocus(false)
	widthBox:SetPoint("TOP", enableCheck, "BOTTOM", 40,-10)
	widthBox:SetWidth(22)
	widthBox:SetHeight(15)
	widthBox:SetScript("OnEnterPressed", EditBox_ClearFocus)
	widthBox:SetScript("OnTabPressed", EditBox_ClearFocus)
	widthBox:SetScript("OnEditFocusLost", function(self)
			EditBox_ClearHighlight(self)
			local wide = self:GetNumber()
			if wide < 1 then wide = 1 end
			if wide ~= SlideBarConfig.maxWidth then
				SlideBarConfig.maxWidth = wide
				lib.ApplyLayout()
				lib.FlashOpen(5)
			end
		end)
	local widthBoxhelp = frame.config:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	widthBox.help = widthBoxhelp
	widthBoxhelp:SetPoint("LEFT", widthBox, "RIGHT", 5, 0)
	widthBoxhelp:SetText("Number of buttons before a new row is started.")

	local lockCheck = CreateCheckButton("locked", "Lock the Bar's location")
	config.lockCheck = lockCheck
	lockCheck:SetPoint("TOP", widthBox, "BOTTOM", 0, -10)

	local fadeCheck = CreateCheckButton("visibility", "Fade the slidebar when not in use.")
	config.fadeCheck = fadeCheck
	fadeCheck:SetPoint("TOP", lockCheck, "BOTTOM")

	local reset = CreateFrame("Button", nil, frame.config, "UIPanelButtonTemplate")
	config.reset = reset
	reset:SetWidth(160)
	reset:SetHeight(21)
	reset:SetPoint("TOPLEFT", fadeCheck, "BOTTOM", -50,-5)
	reset:SetText("RESET ALL SETTINGS")
	reset:SetScript("OnClick", function()
			SlideBarConfig = {
				enabled = true,
			}
			lib.ApplyLayout()
		end)

	-- Set up the button grid

	local buttons = {}
	config.buttons = buttons
	local function IconGUIOnClick(self)
		lib.FlashOpen(5)
		local normtex = self:GetNormalTexture()
		if SlideBarConfig[self.name..".hide"] then
			if normtex then normtex:SetDesaturated(false) end
			self.tex:Hide()
			lib.ShowButton(self.name)
		else
			if normtex then normtex:SetDesaturated(true) end
			self.tex:Show()
			lib.HideButton(self.name)
		end
	end
	local function IconGUIOnEnter(self)
		if self.name then
			GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT")
			GameTooltip:SetText(self.name)
		end
	end
	local function IconGUIOnLeave(self)
		GameTooltip:Hide()
	end
	function private.createIconGUI()
		local pos = #buttons + 1
		local button = CreateFrame("Button", nil, frame.config)
		button:SetSize(36, 36)
		button:SetScript("OnClick", IconGUIOnClick)
		button:SetScript("OnEnter", IconGUIOnEnter)
		button:SetScript("OnLeave", IconGUIOnLeave)
		button.pos = pos
		button:SetScale(.8)
		button:Disable()

		local normaltex = button:CreateTexture(nil, "ARTWORK")
		normaltex:SetSize(36, 36)
		normaltex:SetPoint("CENTER", button, 0, -1)
		button:SetNormalTexture(normaltex)
		button.icon = normaltex

		button:SetHighlightTexture("Interface\\Buttons\\CheckButtonHilight", "ADD")

		local background = button:CreateTexture(nil, "BACKGROUND")
		background:SetSize(45, 45)
		background:SetPoint("CENTER", button, 0, -1)
		background:SetTexture("Interface\\Buttons\\UI-EmptySlot-Disabled")
		background:SetTexCoord(0.140625, 0.84375, 0.140625, 0.84375)

		--X texture overlay
		local tex = button:CreateTexture(nil, "OVERLAY")
		button.tex = tex
		tex:SetTexture("Interface\\WorldMap\\X_Mark_64")
		tex:SetPoint("TOPLEFT", button, "TOPLEFT",-5,5)
		tex:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", -20, 10)
		tex:SetTexCoord(0,0.5,0.5,1)
		tex:Hide()

		buttons[pos] = button
		return button
	end
	--Was gonna make this dynamic depending on how user resized window. Decided on static for now
	do
		for pos = 1, 50 do
			private.createIconGUI()
		end

		local width = frame.config:GetWidth()
		local height = frame.config:GetHeight()
		local spacer = 5
		local row = 0
		local column = 0
		local total = 0
		local button = frame.config.buttons

		--create 50 slots for our button icons
		for pos = 1, #button do
			if total + 45 > width then
				column =  0
				row = row + 45 + spacer
				total = 0
			end

			if column == 0 then
				button[pos]:SetPoint("TOPLEFT", frame.config, "TOPLEFT",  column+20, -row - 20)
			else
				button[pos]:SetPoint("TOPLEFT", button[pos-1], "TOPLEFT",  45 + spacer, 0)
			end

			column = column + 36 + spacer
			total = total + 36 + spacer
		end

	end

	--apply GUI layout to match slidebars button order
	--Blizzards frame calls this when options are opened
	--Be aware that any errors triggered within this function will NOT be passed to the error handler
	function config.refresh()
		local layout = {}
		for id, button in pairs(frame.buttons) do
			tinsert(layout, button)
		end
		sort(layout, private.buttonSort)

		local GUI = frame.config.buttons
		for pos = 1, #GUI do
			local guibutton = GUI[pos]
			local button = layout[pos]
			if button and button.id and button.icon then
				guibutton:Enable()
				guibutton.name = button.id
				local iconpath = button.icon:GetTexture()
				if not iconpath or iconpath == "Solid Texture" or iconpath == "Portrait1" then
					iconpath = "Interface\\Icons\\INV_Misc_QuestionMark"
				end
				guibutton.icon:SetTexture(iconpath)
				-- ### todo: do we need another test here to ensure the icon is valid?
				if SlideBarConfig[button.id..".hide"] then
					guibutton.icon:SetDesaturated(true)
					guibutton.tex:Show()
				else
					guibutton.icon:SetDesaturated(false)
					guibutton.tex:Hide()
				end
			elseif guibutton.name then
				guibutton.name = nil
				guibutton.icon:SetTexture()
				guibutton:Disable()
				guibutton.tex:Hide()
			end
		end
	end

	-- Add config to Blizzards addon configuration menu
	-- WoW10: this function is deprecated and redirects to the new Options API; it must be called after creating config.refresh
	InterfaceOptions_AddCategory(config)

	--[[LibDataBroker setup Functions]]
	if LibDataBroker then
		--core function adds LDB objects to our bar
		function private:LibDataBroker_DataObjectCreated(event, name, dataobj)
			if not name or not dataobj or not dataobj.type then return end
			if dataobj.type == "launcher" then
				lib.AddButton(name, nil, nil, nil, nil, dataobj)
			end
		end
		LibDataBroker.RegisterCallback(private, "LibDataBroker_DataObjectCreated")
		--add any LDB objects created before we loaded. Not all LDB objects initialize everything when they create themselves. So we need to recan after all are loded to get all methods
		function private.RescanLDBObjects()
			for name, dataobj in LibDataBroker:DataObjectIterator() do
				private:LibDataBroker_DataObjectCreated(nil, name, dataobj)
			end
		end
	end
end
