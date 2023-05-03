--[[
	Babylonian - A sub-addon that manages the locales for other addons.
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

local LIBRARY_VERSION_MAJOR = "Babylonian"
local LIBRARY_VERSION_MINOR = 3
local lib = LibStub:NewLibrary(LIBRARY_VERSION_MAJOR, LIBRARY_VERSION_MINOR)
if not lib then return end

LibStub("LibRevision"):Set("$URL$","$Rev$","5.1.DEV.", 'auctioneer', 'libs')

if not lib.private then
	lib.private = {}
end
local private = lib.private
local tinsert = table.insert
local CLIENT_LOCALE = GetLocale()

function lib:SetOrder(order)
	if (not order) then
		private.order = {}
	else
		private.order = { strsplit(",", order) }
	end

	tinsert(private.order, CLIENT_LOCALE)
	tinsert(private.order, "enUS")

	local curOrder = SetCVar("BabylonianOrder", order)

	if lib.notifyList then
		for _, func in pairs(lib.notifyList) do
			func()
		end
	end

	return curOrder
end

function lib:GetOrder()
	return GetCVar("BabylonianOrder")
end

function lib:FetchString(stringTable, locale, stringKey)
	if ((type(stringTable) == "table") and (type(stringTable[locale]) == "table") and (stringTable[locale][stringKey])) then
		return stringTable[locale][stringKey]
	elseif ( locale == CLIENT_LOCALE ) then
		local defaultuiString = _G[stringKey]
		if ( type(defaultuiString) == "string" and issecurevariable(stringKey) ) then
			return defaultuiString
		end
	end
end

function lib:GetString(stringTable, stringKey, default)
	local val
	for i = 1, #private.order do
		val = lib:FetchString(stringTable, private.order[i], stringKey)
		if (val) then
			return val
		end
	end
	return default
end

lib.notifyList = {}
function lib:AddNotify(func)
	table.insert(lib.notifyList, func)
end

local kit = {
	GetOrder = lib.GetOrder,
	SetOrder = lib.SetOrder,
}

function kit:GetString(stringKey, default)
	return (lib:GetString(self.stringTable, stringKey, default))
end

function kit:FetchString(locale, stringKey)
	return (lib:FetchString(self.stringTable, locale, stringKey))
end

local function noKey(t, key)
	error("Localization for "..tostring(key).." is unavailable")
end

function lib:New(stringTable)
	assert(stringTable, "Usage: Babylonian(stringTable) -- Must supply a stringTable")
	assert(type(stringTable)=="table", "Usage: Babylonian(stringTable) -- Supplied stringTable must be a table")

	local new = {
		stringTable = stringTable
	}
	for k,v in pairs(kit) do
		new[k] = v
	end
	setmetatable(new, { __call = new.FetchString, __index = new.GetString, __newindex = noKey })
	return new
end
setmetatable(lib, { __call = lib.New })

if not private.order then
	RegisterCVar("BabylonianOrder", "")
	lib:SetOrder(lib:GetOrder())
end
