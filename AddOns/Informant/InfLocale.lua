--[[
	Informant - An addon for World of Warcraft that shows pertinent information about
	an item in a tooltip when you hover over the item in the game.
	Version: 9.1.BETA.5.11 (OneMawTime)
	Revision: $Id$
	URL: http://auctioneeraddon.com/dl/Informant/

	Localization module

	The user-selected locale is set at load time from the config variable, and cannot be changed during the session.

	Changing the config variable will change locale in the next session, following reload or relog.

	Most functions are unavailable before the saved variables have been loaded.
	Use Informant.Locale.SetCallbackOnActive(callback) to get a callback when transalations are available.
	Use Informant.Locale.IsActive() to check if Locale module is active.


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

local Informant = Informant
if not Informant then return end
local locale = Informant.Locale

local Babylonian = LibStub("Babylonian")
local babylonian = Babylonian(InformantLocalizations)

local debugPrint -- prototype

-- Status and Control Variables
local isActive = false
local defaultLocale, sessionLocale

local listCallbacks = {}
local listLocales = {}
-- Parse InformantLocalizations and extract locales - these are our valid locales
for loc, _ in pairs(InformantLocalizations) do
	tinsert(listLocales, loc)
end

-- ### Removed the global Informant_CustomLocalizations as it was not used anywhere

-- Informant.Locale.Translate(stringKey [, locale])
-- stringKey : Key to translate
-- locale : (Optional) Attempt to override session locale (but will fall back to session locale if translation not found)
-- returns : Translated string, or original string if translation was not found
function locale.Translate(stringKey, locale)
	if not isActive then
		error("InfLocale: Translate called before active", 2)
	end

	if type(locale) == "string" then
		local value = babylonian(locale, stringKey)
		if value then
			return value
		end
	end

	return babylonian(sessionLocale, stringKey) or babylonian[stringKey] or stringKey
end

-- Informant.Locale.ValidateLocale(proposedlocale)
-- proposedlocale : locale string to be tested (case insensitive)
-- returns : valid locale string based on proposedlocale, or nil if unable to match to a locale
-- Note: Certain locale substitutions may occur where proposedlocale is not itself a valid locale, but is similar to one
-- Special: "default" or "" or nil returns defaultLocale, true
function locale.ValidateLocale(proposedlocale)
	if not defaultLocale then
		-- ValidateLocale is used in OnLoad during the activation process
		-- In this special case we test defaultLocale (not isActive)
		error("InfLocale: ValidateLocale called before active", 2)
	end

	if proposedlocale == nil or proposedlocale == "" then
		return defaultLocale, true
	elseif type(proposedlocale) == "string" then
		local test = strlower(proposedlocale)
		if test == "default" then
			return defaultLocale, true
		end

		for _, loc in ipairs(listLocales) do
			local lowerloc = strlower(loc)
			if lowerloc == test then
				return loc
			end
		end

		-- ### TODO: check for substitutions such as esES->esMX or vice versa. Or perhaps hand this off to Babylonian?
	end
end

-- Informant.Locale.SetLocale(proposedlocale)
-- proposedlocale : new locale to save, will be used next session
-- if proposedlocale is nil or the string "default", will reset saved variable to default
-- returns true if locale was 'saved' (including if the same as before)
function locale.SetLocale(proposedlocale)
	if not isActive then
		error("InfLocale: SetLocale called before active", 2)
	end

	local config = InformantConfig
	local newlocale, isdefault = locale.ValidateLocale(proposedlocale)
	if not newlocale then
		return
	end

	if isdefault then
		config.localesaved = nil
		return true
	else
		config.localesaved = newlocale
		return true
	end
end

-- Informant.Locale.GetLocale()
-- returns <locale for current session>, <locale for future session>, <isFutureLocaleDefault>
function locale.GetLocale()
	if not isActive then
		error("InfLocale: GetLocale called before active", 2)
	end

	local isFutureDefault = false
	local futureLocale = InformantConfig.localesaved
	if not futureLocale then
		futureLocale = defaultLocale
		isFutureDefault = true
	end

	return sessionLocale, futureLocale, isFutureDefault
end

-- Informant.Locale.GetLocaleList([usetable])
-- returns a table containing list of valis locales. Note that defaultLocale will always be the first entry [1]
-- usetable : (optional table) if provided it will be wiped and populated with the list of locales
function locale.GetLocaleList(usetable)
	if not isActive then
		error("InfLocale: GetLocaleList called before active", 2)
	end

	if type(usetable) == "table" then
		wipe(usetable)
	else
		usetable = {}
	end
	for _, loc in ipairs(listLocales) do
		if loc ~= defaultLocale then
			tinsert(usetable, loc)
		end
	end
	sort(usetable)
	tinsert(usetable, 1, defaultLocale) -- Default locale is always at index 1

	return usetable
end

--[[ The following functions are available before the Locale module is activated ]]--

-- Informant.Locale.IsActive()
-- Allow other modules to check if module has been activated, i.e translations are available
function locale.IsActive()
	return isActive
end

-- Informant.Locale.SetCallbackOnActive(callback)
-- callback : function to be called when the Locale module has become active, i.e. when translations are available
-- Should be used by modules that do not have their own OnLoad handler, but need to perform localizations at startup
function locale.SetCallbackOnActive(callback)
	if type(callback) == "function" then
		if isActive then
			callback()
		else
			tinsert(listCallbacks, callback)
		end
	else
		error("Usage: Informant.Locale.SetCallbackOnActive(callback); callback must be a function", 2)
	end
end

-- Informant.Locale.OnLoad()
-- Called from InfMain. Self-deleting. Do not try to call from anywhere else.
function locale.OnLoad()
	locale.OnLoad = nil

	defaultLocale = GetLocale()
	local found = false
	for _, loc in ipairs(listLocales) do
		if loc == defaultLocale then
			found = true
			break
		end
	end
	if not found then
		-- Client locale was not found in InformantLocalizations!
		defaultLocale = "enUS" -- fallback to enUS (which should always exist)
	end

	local config = InformantConfig
	if config.localesaved then
		sessionLocale = locale.ValidateLocale(config.localesaved)
		if not sessionLocale then
			config.localesaved = nil -- remove invalid saved locale
			sessionLocale = defaultLocale
		end
	else
		sessionLocale = defaultLocale
	end

	isActive = true

	for _, callback in ipairs(listCallbacks) do
		callback()
	end
	listCallbacks = nil
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
	return Informant.DebugPrint(message, "InfLocale", title, errorCode, level)
end

Informant_RegisterRevision("$URL$", "$Rev$")
