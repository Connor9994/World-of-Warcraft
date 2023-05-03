if GetLocale()~="ruRU" then return end

local addon,_L = ...
assert(_L.Lib,"Library not loaded")
if _L.Lib.TaxiNames_Local then return end

_L.Lib.TaxiNames_Local = {
	["Hellfire Peninsula, The Dark Portal"] = "Полуостров Адского Пламени, Темный портал",

	-- Special
	["Valley of Strength"] = true, -- Orgrimmar

	-- Special
	["The Great Forge"] = true, -- Ironforge
	["Trade District"] = true, -- Stormwind

	-- Special
	["Terrace of Light"] = true, -- Shattrath City
	["The Stair of Destiny"] = true, -- The Dark Portal

	-- Special
	["Krasus' Landing"] = true, -- Dalaran

}
