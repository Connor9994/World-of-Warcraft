-- The localization of this addon makes no sense whatsoever.
-- Core_xxXX files provide full UI texts, even in English. Just to have them all in one place.
-- NPCs_xxXX files have mob names matched to NPC IDs.
-- Guides_xxXX (temporarily) have simply full guide texts, translated - hence NO enUS file there.

local data = {}

local type=type

local mt = {__index=function(self, key)
	if not key then return "" end
	if type(key)=="number" then return end
	self[key] = key
	return key
end}

local locale=GetLocale()
if locale=="enGB" then locale="enUS" end  -- just in case.

function _G.ZygorGuidesViewer_L(name, locale, translations, debug)
	if type(translations)=="function" then translations=translations() end
	if type(translations)=="string" then
		-- oh crap, parse the monster.
		local arr = {}
		local function grab(txt)
			local k,v = txt:gsub("%s*//.*$",""):match("^%s*(.-)%s*===%s*(.-)%s*$")
			if k and v then arr[k]=v end
		end
		translations:gsub("(.-)\n",grab)
		translations = arr
	end

	if not data[name] then data[name]={} end	
	setmetatable(data[name], mt)
	
	if locale == "enUS" then
		data[name] = translations
	elseif locale == GetLocale() then
		for k, v in pairs(translations) do
			data[name][k] = v
		end
	end

	return data[name]
end

ZygorGuidesViewer_L("Guides", "enUS", function() return {
} end)