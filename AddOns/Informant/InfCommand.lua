--[[
	Informant - An addon for World of Warcraft that shows pertinent information about
	an item in a tooltip when you hover over the item in the game.
	Version: 9.1.BETA.5.11 (OneMawTime)
	Revision: $Id$
	URL: http://auctioneeraddon.com/dl/Informant/

	Command handler. Assumes responsibility for allowing the user to set the
	options via slash command, MyAddon etc.

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
if not Informant then return end
Informant_RegisterRevision("$URL$", "$Rev$")
local commands = Informant.Commands

-- function prototypes
local cmdHelp, onOff, genVarSet, numberVarSet,boolVarSet, chatPrint, restoreDefault, getLocaleText, getLocaleList, setLocale
local parseCommand
local debugPrint

-- Localization function prototypes
local delocalizeParam, localizeParam, getLocalizedParam

local _TRANS = Informant.Locale.Translate

-- Lookup tables for localiztion (initialized after Locale module activated)
local mapDelocalize, mapLocalize

commands.OnLoad = function()
	commands.OnLoad = nil -- Only called once from InfMain

	-- Setup slash commands and handler
	SLASH_INFORMANT1 = "/informant"
	SLASH_INFORMANT2 = "/inform"
	SLASH_INFORMANT3 = "/info"
	SLASH_INFORMANT4 = "/inf"
	SlashCmdList["INFORMANT"] = commands.CommandHandler

	-- Localizations are now available

	mapLocalize = {
		['on'] = _TRANS('INF_Help_On'),
		['off'] = _TRANS('INF_Help_Off'),
		['help'] = _TRANS('INF_Help_CmdHelp'),
		['toggle'] = _TRANS('INF_Help_Toggle'),
		['disable'] = _TRANS('INF_Help_CmdDisable'),
		['locale'] = _TRANS('INF_Help_CmdLocale'),
		['default'] = _TRANS('INF_Help_CmdDefault'),
		['embed'] = _TRANS('INF_Help_CmdEmbed'),
		['show-ilevel'] = _TRANS('INF_Help_CmdShowILevel'),
		['show-link'] = _TRANS('INF_Help_CmdShowLink'),
		['show-stack'] = _TRANS('INF_Help_CmdShowStack'),
		['show-usage'] = _TRANS('INF_Help_CmdShowUsage'),
		['show-quest'] = _TRANS('INF_Help_CmdShowQuest'),
		['show-merchant'] = _TRANS('INF_Help_CmdShowMerchant'),
		['show-zero-merchants'] = _TRANS('INF_Help_CmdShowZeroMerchants'),
		['show-vendor'] = _TRANS('INF_Help_CmdShowVendor'),
		['show-vendor-buy'] = _TRANS('INF_Help_CmdShowVendorBuy'),
		['show-vendor-sell'] = _TRANS('INF_Help_CmdShowVendorSell'),
		['all'] = _TRANS('INF_Help_CmdClearAll'),
	}
	mapDelocalize = {}
	for k,v in pairs(mapLocalize) do
		mapDelocalize[v:lower()] = k
	end
	mapLocalize['true'] = mapLocalize['on']
	mapLocalize['false'] = mapLocalize['off']

	chatPrint(_TRANS('INF_Help_Welcome'):format(Informant.version))
end

-- Informant.Commands.CommandHandler(command [, silent])
-- command : string - the command string to parse
-- silent : boolean (optional) - whether to suppress printing to chat (may be ignored for some commands)
function commands.CommandHandler(command, silent)
	local chatprint
	assert(type(command) == "string") -- ### DEBUG
	--To print or not to print, that is the question...
	if type(silent) == "table" then
		-- SlashCmdList passes an EditBox as the second arguament
		chatprint = true
	else
		chatprint = not silent
	end

	local cmd, param = parseCommand(command)
	cmd = delocalizeParam(cmd)

	--Now for the real Command handling
	if ((cmd == "") or (cmd == "help")) then
		cmdHelp()
		return

	elseif (cmd == 'show' or cmd == 'config') then
		-- show or hide our settings UI
		Informant.Settings.MakeGuiConfig()
		local gui = Informant.Settings.Gui
		if (gui:IsVisible()) then
			gui:Hide()
		else
			gui:Show()
		end

	elseif (cmd == "on" or cmd == "off" or cmd == "toggle") then
		onOff(cmd, chatprint)
	elseif (cmd == "disable") then
		Stubby.SetConfig("Informant", "LoadType", "never")
	elseif (cmd == "load") then
		if (param == "always") or (param == "never") then
			chatPrint("Setting Informant to "..param.." load for this toon")
			Stubby.SetConfig("Informant", "LoadType", param)
		end
	elseif (cmd == "locale") then
		setLocale(param, chatprint)
	elseif cmd == "list-locales" then
		setLocale("list", chatprint)
	elseif (cmd == "default") then
		restoreDefault(param, chatprint)
	elseif (
		cmd == "embed" or cmd == "show-stack" or cmd == "show-usage" or
		cmd == "show-quest" or cmd == "show-merchant" or cmd == "show-vendor" or
		cmd == "show-vendor-buy" or cmd == "show-vendor-sell" or cmd == "show-ilevel" or
		cmd == "show-link" or cmd == "show-zero-merchants"
	) then
		boolVarSet(cmd, param, chatprint)
	elseif (cmd == "about") then
		chatPrint(_TRANS('about'))
	else
		if (chatprint) then
			chatPrint(_TRANS('INF_Help_CmdUnknown'):format(cmd))
		end
	end
end

--Help ME!! (The Handler) (Another shameless copy from the original function)
function cmdHelp()

	local onOffToggle = " (".._TRANS('INF_Help_On').."|".._TRANS('INF_Help_Off').."|".._TRANS('INF_Help_Toggle')..")"
	local lineFormat = "  |cffffffff/informant %s "..onOffToggle.."|r |cffff4020[%s]|r - %s"

	chatPrint(_TRANS('INF_Help_CmdHeader'))
	chatPrint("  |cffffffff/informant "..onOffToggle.."|r |cffff4020["..getLocalizedParam('all').."]|r - " .. _TRANS('INF_HelpTooltip_EnableInformant'))

	chatPrint("  |cffffffff/informant ".._TRANS('INF_Help_CmdDisable').."|r - " .. _TRANS('INF_Help_CmdHelpDisable'))

	chatPrint(lineFormat:format(_TRANS('INF_Help_CmdShowVendor'), getLocalizedParam('show-vendor'), _TRANS('INF_HelpTooltip_VendorToggle')))
	chatPrint(lineFormat:format(_TRANS('INF_Help_CmdShowVendorSell'), getLocalizedParam('show-vendor-sell'), _TRANS('INF_HelpTooltip_ShowVendorSell')))
	chatPrint(lineFormat:format(_TRANS('INF_Help_CmdShowVendorBuy'), getLocalizedParam('show-vendor-buy'), _TRANS('INF_HelpTooltip_ShowVendorBuy')))
	chatPrint(lineFormat:format(_TRANS('INF_Help_CmdShowUsage'), getLocalizedParam('show-usage'), _TRANS('INF_HelpTooltip_ShowUsage')))
	chatPrint(lineFormat:format(_TRANS('INF_Help_CmdQuest'), getLocalizedParam('show-quest'), _TRANS('INF_HelpTooltip_ShowQuest')))
	chatPrint(lineFormat:format(_TRANS('INF_Help_CmdMerchant'), getLocalizedParam('show-merchant'), _TRANS('INF_HelpTooltip_ShowMerchant')))
	chatPrint(lineFormat:format(_TRANS('INF_Help_CmdShowZeroMerchant'), getLocalizedParam('show-zero-merchants'), _TRANS('INF_HelpTooltip_ShowZeroMerchants')))
	chatPrint(lineFormat:format(_TRANS('INF_Help_CmdShowStack'), getLocalizedParam('show-stack'), _TRANS('INF_HelpTooltip_ShowStack')))
	chatPrint(lineFormat:format(_TRANS('INF_Help_CmdShowILevel'), getLocalizedParam('show-ilevel'), _TRANS('INF_HelpTooltip_ShowIlevel')))
	chatPrint(lineFormat:format(_TRANS('INF_Help_CmdShowLink'), getLocalizedParam('show-link'), _TRANS('INF_HelpTooltip_ShowLink')))
	chatPrint(lineFormat:format(_TRANS('INF_Help_CmdEmbed'), getLocalizedParam('embed'), _TRANS('INF_HelpTooltip_Embed')))

	lineFormat = "  |cffffffff/informant %s %s|r |cffff4020[%s]|r - %s"
	chatPrint(lineFormat:format(_TRANS('INF_Help_CmdLocale'), _TRANS('INF_Help_OptLocale'), getLocaleText(), _TRANS('INF_Help_Locale')))

	lineFormat = "  |cffffffff/informant %s %s|r - %s"
	chatPrint(lineFormat:format(_TRANS('INF_Help_CmdDefault'), "", _TRANS('INF_Helptooltip_DefaultProfile')))
end


--[[
	The onOff(state, chatprint) function handles the state of the Informant AddOn (whether it is currently on or off)
	If "on" or "off" is specified in the first argument then Informant's state is changed to that value,
	If "toggle" is specified then it will toggle Informant's state (if currently on then it will be turned off and vice-versa)

	If a boolean (or nil) value is passed as the first argument the conversion is as follows:
	"true" is the same as "on"
	"false" is the same as "off"
	"nil" is the same as "toggle"

	If chatprint is "true" then the state will also be printed to the user.
--]]
function onOff(state, chatprint)
	state = delocalizeParam(state)

	if state == 'on' or state == 'off' or type(param) == "boolean" then
		Informant.Settings.SetSetting('all', state)
	elseif state == 'toggle' or state == "" or state == nil then
		Informant.Settings.SetSetting('all', not Informant.Settings.GetSetting('all'))
	end

	--Print the change and alert the GUI if the command came from slash commands. Do nothing if they came from the GUI.
	if chatprint then
		state = Informant.Settings.GetSetting('all')

		if state then
			chatPrint(_TRANS('INF_Help_InfOn'))
		else
			chatPrint(_TRANS('INF_Help_InfOff'))
		end
	end
end

function restoreDefault(param, chatprint)
	local paramLocalized = param
	param = delocalizeParam(param)

	if param == nil or param == "" then
		return
	elseif param == "all" then
		Informant.Settings.RestoreDefaults()
	else
		Informant.Settings.SetSetting(param, nil)
	end

	if chatprint then
		if param == "all" then
			chatPrint(_TRANS('INF_Help_CmdDefaultAll'))
		else
			chatPrint(_TRANS('INF_Help_CmdDefaultSingle'):format(paramLocalized))
		end
	end
end

-- For non-boolean settings, if we add any in future
function genVarSet(variable, param, chatprint)
	param = delocalizeParam(param)

	Informant.Settings.SetSetting(variable, param)

	if chatprint then
		chatPrint(format("%s has been set to %s", localizeParam(variable), getLocalizedParam(variable)))
	end
end

-- For settings which must be number type, if we add any in future
function numberVarSet(variable, param, chatprint)
	param = delocalizeParam(param)

	if param == nil or param == "" or param == "default" then
		Informant.Settings.SetSetting(variable, nil)
	else
		param = tonumber(param)
		if param then
			Informant.Settings.SetSetting(variable, param)
		end
	end

	if chatprint then
		chatPrint(format("%s has been set to %s", localizeParam(variable), getLocalizedParam(variable)))
	end
end

function boolVarSet(variable, param, chatprint)
	param = delocalizeParam(param)

	if param == "on" or param == "off" or param == "default" or type(param) == "boolean" then
		Informant.Settings.SetSetting(variable, param) -- SetSetting converts the above strings to boolean
	elseif param == "toggle" or param == nil or param == "" then
		param = Informant.Settings.SetSetting(variable, not Informant.Settings.GetSetting(variable))
	end

	if chatprint then
		if Informant.Settings.GetSetting(variable) then
			chatPrint(_TRANS('INF_Interface_EnableInformant'):format(localizeParam(variable)))
		else
			chatPrint(_TRANS('INF_Help_Disable'):format(localizeParam(variable)))
		end
	end
end

function getLocaleText()
	local current, future, futuredefault = Informant.Locale.GetLocale()
	if not (current and future) then
		return "Unknown"
	end
	local text = current
	if current ~= future then
		text = text .. "/" .. future
	end
	if futuredefault then
		text = text .. "(default)"
	end

	return text
end

function getLocaleList()
	local list = Informant.Locale.GetLocaleList()
	local text = list[1].."(default)" -- index [1] is always the default locale
	for i = 2, #list do
		text = text .. ", " .. list[i]
	end
	return text
end


function setLocale(param, chatprint)
	param = delocalizeParam(param)

	if param == "list" then
		chatPrint("Available locales:")
		chatPrint(getLocaleList())
		return
	end

	local success = Informant.Locale.SetLocale(param)

	if chatprint then
		if success then
			chatPrint(_TRANS('INF_Help_CmdSetLocale'):format(_TRANS('INF_Help_CmdLocale'), param)) -- note this will be in old locale
		else
			chatPrint(_TRANS("INF_Help_LocaleUnknown"):format(param))
			chatPrint(getLocaleList())
		end
	end
end

function chatPrint(msg)
	if DEFAULT_CHAT_FRAME then
		DEFAULT_CHAT_FRAME:AddMessage(msg, 0.25, 0.55, 1.0)
	end
end

-- Parse command string to extract the first block of non-space characters
-- returns:
-- [1] first : first extracted command; works for utf8 multibyte characters
--		returns "" if no command found (i.e. no non-space characters)
-- [2] remainder : rest of the string following 'first', with leading and trailing spaces trimmed
--		returns "" if no further commands or parameters found
--		parseCommand may be called on the remainder to extract the next subcommand or parameter
function parseCommand(command)
	local first, remainder = command:match("^%s*(%S+)(.*)$")
	if not first then return "", "" end
	remainder = remainder:match("^%s*(.-)%s*$") or ""
	return first, remainder
end

--------------------------------------
--		Localization functions		--
--------------------------------------

-- Convert a localized slash command, parameter or value into the lowercase generic English version
-- Returns the original value if not recognised, or not a string
function delocalizeParam(cmd)
	if type(cmd) ~= "string" then
		return cmd
	end
	cmd = cmd:lower()
	return mapDelocalize[cmd] or cmd
end

-- Translate a generic English slash command, parameter or value to the localized version, if available
-- Returns the original value (converted to a string) if no localization available
-- Always returns a string
function localizeParam(cmd)
	cmd = tostring(cmd)
	local cmdlow = cmd:lower()
	return mapLocalize[cmdlow] or cmd
end

-- Fetch parameter, localize if available, and convert to string for printing
function getLocalizedParam(key)
	return localizeParam(Informant.Settings.GetSetting(key))
end

-------------------------------------------------------------------------------
-- Prints the specified message to nLog.
--
-- syntax:
--    errorCode, message = debugPrint([message][, title][, errorCode][, level])
--
-- parameters:
--    message   - (string) the error message
--                nil, no error message specified
--    title     - (string) the title for the debug message
--                nil, no title specified
--    errorCode - (number) the error code
--                nil, no error code specified
--    level     - (string) nLog message level
--                         Any nLog.levels string is valid.
--                nil, no level specified
--
-- returns:
--    errorCode - (number) errorCode, if one is specified
--                nil, otherwise
--    message   - (string) message, if one is specified
--                nil, otherwise
-------------------------------------------------------------------------------
function debugPrint(message, title, errorCode, level)
	return Informant.DebugPrint(message, "InfCommand", title, errorCode, level)
end
