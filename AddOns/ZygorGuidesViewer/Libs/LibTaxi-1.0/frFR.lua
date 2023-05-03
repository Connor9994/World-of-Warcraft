if GetLocale()~="frFR" then return end

local addon,_L = ...
assert(_L.Lib,"Library not loaded")
if _L.Lib.TaxiNames_Local then return end

_L.Lib.TaxiNames_Local = {
	------ Kalimdor
	-- Alliance
	["Astranaar"] = true,
	["Auberdine"] = true,
	["Blood Watch"] = "Guet du sang",
	["Feathermoon"] = "Pennelune",
	["Forest Song"] = "Chant des forêts",
	["Nijel's Point"] = "Combe de Nijel",
	["Rut'theran Village"] = "Rut'theran",
	["Stonetalon Peak"] = "Pic des Serres-Rocheuses",
	["Talonbranch Glade"] = "Clairière de Griffebranche",
	["Talrendis Point"] = "Halte de Talrendis",
	["Thalanaar"] = true,
	["The Exodar"] = "L'Exodar",
	["Theramore"] = true,

	-- Horde
	["Bloodvenom Post"] = "Poste de la Vénéneuse",
	["Brackenwall Village"] = "Mur-de-Fougères",
	["Camp Mojache"] = true,
	["Camp Taurajo"] = true,
	["Crossroads"] = "La Croisée",
	["Freewind Post"] = "Poste de Librevent",
	["Orgrimmar"] = true,
	["Shadowprey Village"] = "Proie-de-l'Ombre",
	["Splintertree Post"] = "Poste de Bois-brisé",
	["Sun Rock Retreat"] = "Retraite de Roche-Soleil",
	["Thunder Bluff"] = "Les Pitons du Tonnerre",
	["Valormok"] = true,
	["Zoram'gar Outpost"] = "Avant-poste de Zoram'gar",

	-- Neutral
	["Cenarion Hold"] = "Fort cénarien",
	["Emerald Sanctuary"] = "Sanctuaire d'émeraude",
	["Everlook"] = "Long-guet",
	["Gadgetzan"] = true,
	["Marshal's Refuge"] = "Refuge des Marshal",
	["Moonglade"] = "Reflet-de-Lune",
	["Mudsprocket"] = "Bourbe-\195\160-brac",
	["Ratchet"] = "Cabestan",

	-- Special
	["Valley of Strength"] = "Vallée de la Force", -- Orgrimmar

	-- Eastern Kingdoms
	-- Alliance
	["Aerie Peak"] = "Nid-de-l'Aigle",
	["Chillwind Camp"] = "Camp du Noro\195\174t",
	["Darkshire"] = "Sombre-comté",
	["Ironforge"] = "Forgefer",
	["Lakeshire"] = "Comté-du-lac",
	["Menethil Harbor"] = "Port de Menethil",
	["Morgan's Vigil"] = "Veille de Morgan",
	["Nethergarde Keep"] = "Rempart-du-Néant",
	["Rebel Camp"] = "Camp rebelle",
	["Refuge Pointe"] = "Refuge de l'Ornière",
	["Sentinel Hill"] = "Colline des sentinelles",
	["Shattered Sun Staging Area"] = "Zone de rassemblement du Soleil brisé",
	["Southshore"] = "Austrivage",
	["Stormwind"] = "Hurlevent",
	["Thelsamar"] = true,
	["Thondoril River"] = "Thondroril",

	-- Horde
	["Flame Crest"] = "Corniche des flammes",
	["Grom'Gol"] = true,
	["Hammerfall"] = "Trépas-d'Orgrim",
	["Kargath"] = true,
	["Revantusk Village"] = "Village des Vengebroches",
	["Silvermoon City"] = "Lune-d'argent",
	["Stonard"] = "Pierrêche",
	["Tarren Mill"] = "Moulin-de-Tarren",
	["The Sepulcher"] = "Le Sépulcre",
	["The Bulwark"] = true,
	["Tranquillien"] = true,
	["Undercity"] = "Fossoyeuse",

	-- Neutral
	["Acherus: The Ebon Hold"] = "Achérus\194\160: le fort d'\195\137bène",
	["Booty Bay"] = "Baie-du-Butin",
	["Light's Hope Chapel"] = "Chapelle de l'Espoir de Lumière",
	["Thorium Point"] = "Halte du Thorium",
	["Zul'Aman"] = true,

	-- Special
	["The Great Forge"] = "La Grande Forge", -- Ironforge
	["Trade District"] = "Quartier commerçant", -- Stormwind

	-- Outland
	-- Alliance
	["Allerian Stronghold"] = "Bastion allérien",
	["Honor Hold"] = "Bastion de l'Honneur",
	["Orebor Harborage"] = "Havre d'Orebor",
	["Shatter Point"] = "Halte du Fracas",
	["Sylvanaar"] = true,
	["Telaar"] = true,
	["Telredor"] = true,
	["Temple of Telhamat"] = "Temple de Telhamat",
	["Toshley's Station"] = "Poste de Toshley",
	["Wildhammer Stronghold"] = "Bastion Marteau-hardi",

	-- Horde
	["Falcon Watch"] = "Guet de l'épervier",
	["Garadar"] = true,
	["Hellfire Peninsula, The Dark Portal"] = "Péninsule des Flammes infernales, Porte des ténèbres",
	["Mok'Nathal Village"] = "Mok'Nathal",
	["Shadowmoon Village"] = "Village d'Ombrelune",
	["Spinebreaker Post"] = true,
	["Stonebreaker Hold"] = "Fort des Brise-pierres",
	["Swamprat Post"] = "Poste du Rat des marais",
	["Thrallmar"] = true,
	["Thunderlord Stronghold"] = "Bastion des Sire-tonnerre",
	["Zabra'jin"] = true,

	-- Neutral
	["Altar of Sha'tar"] = "Autel de Sha'tar",
	["Area 52"] = "Zone 52",
	["Cosmowrench"] = "Cosmovrille",
	["Evergrove"] = "Bosquet éternel",
	["Sanctum of the Stars"] = "Sanctum des étoiles",
	["Shattrath"] = true,
	["The Stormspire"] = "La Foudreflèche",

	-- Special
	["Terrace of Light"] = "Terrasse de la Lumière", -- Shattrath City
	["The Stair of Destiny"] = true, -- The Dark Portal

	-- Northrend
	-- Alliance
	["Amberpine Lodge"] = "G\195\174te Ambrepin",
	["Fizzcrank Airstrip"] = "Piste d'atterrissage de Spumelevier",
	["Fordragon Hold"] = "Bastion Fordragon",
	["Fort Wildervar"] = "Fort Hardivar",
	["Frosthold"] = "Fort du Givre",
	["River's Heart"] = "Le C\197\147ur du fleuve",
	["Star's Rest"] = "Repos des étoiles",
	["Ulduar"] = true,
	["Valgarde Port"] = "Port-Valgarde",
	["Valiance Keep"] = "Donjon de la Bravoure",
	["Westfall Brigade"] = "Brigade de la marche de l'Ouest",
	["Westguard Keep"] = "Donjon de la Garde de l'ouest",
	["Wintergarde Keep"] = "Donjon de Garde-hiver",

	-- Horde
	["Agmar's Hammer"] = "Marteau d'Agmar",
	["Apothecary Camp"] = "Camp des Apothicaires",
	["Argent Tournament Grounds"] = true,
	["Bor'gorok Outpost"] = "Avant-poste Bor'gorok",
	["Brann's Base-Camp"] = true,
	["Camp Oneqwah"] = true,
	["Camp Winterhoof"] = "Camp Sabot-d'hiver",
	["Conquest Hold"] = "Bastion de la Conquête",
	["Crusaders' Pinnacle"] = "Cime des Croisés",
	["Death's Rise"] = "Cime de la Mort",
	["Kor'koron Vanguard"] = "Avant-garde Kor'kron",
	["Lakeside Landing"] = true,
	["New Agamand"] = "Nouvelle-Agamand",
	["Sunreaver's Command"] = "Quartier général de Saccage-soleil",
	["Taunka'le Village"] = "Taunka'le",
	["The Shadow Vault"] = "Le Caveau des ombres",
	["Vengeance Landing"] = "Accostage de la Vengeance",
	["Venomspite"] = "Vexevenin",
	["Warsong Hold"] = "Bastion Chanteguerre",

	-- Neutral
	["Amber Ledge"] = "Escarpement d'Ambre",
	["Bouldercrag's Refuge"] = "Refuge de Rochecombe",
	["Dalaran"] = true,
	["Ebon Watch"] = "Guet d'\195\137bène",
	["Grom'arsh Crash-Site"] = "Point d'impact de Grom'arsh",
	["Gun'Drak"] = true,
	["K3"] = true,
	["Kamagua"] = true,
	["Light's Breach"] = "La Brèche de Lumière",
	["Moa'ki Harbor"] = true,
	["Nesingwary Base Camp"] = "Camp de base de Nesingwary",
	["The Argent Stand"] = "Le séjour d'Argent",
	["The Argent Vanguard"] = "L'avant-garde d'Argent",
	["Transitus Shield"] = "Bouclier Transitus",
	["Unu'pe"] = true,
	["Wyrmrest Temple"] = "Temple du Repos du ver",
	["Zim'Torga"] = true,

	-- Special
	["Krasus' Landing"] = "Aire de Krasus", -- Dalaran

	
	--[[
	["Argent Stand"] = "Séjour d'Argent",
	["Beryl Point"] = "Pointe de Béryl",
	["Borean Tundra"] = "Toundra Boréenne",
	["Coldarra"] = "Frimarra",
	["Coldarra Ledge"] = "Escarpement de Frimarra",
	["Crown Guard Tower"] = "Tour de garde de la couronne",
	["Eastern Plaguelands"] = "Maleterres de l'est",
	["Eastwall Tower"] = "Tour du Mur d'est",
	["Fishing Village"] = "Village de pêcheurs",
	["Frostwolf Keep"] = "Donjon Loup-de-givre",
	["Generic"] = "Générique",
	["Grizzly Hills"] = "Les Grisonnes",
	["Hellfire Peninsula"] = "Péninsule des Flammes infernales",
	["Nighthaven"] = "Havrenuit",
	["Northpass Tower"] = "Tour du Col du nord",
	["Northshire Abbey"] = "Abbaye de Comté-du-nord",
	["Plaguewood Tower"] = "Tour de Pestebois",
	["Programmer Isle"] = "\195\142le des programmeurs",
	["Ruined City Post 01"] = "Halte 1 de la ville en ruine",
	["Spinebreaker Ridge"] = "Crête Brise-échine",
	["Trade District"] = "trade district",
	["Transport: Menethil <-> Valgarde"] = "Transport : Menethil <-> Valgarde",
	["Valiance Landing Camp"] = "Terrain d'atterrissage de la Bravoure",
	["Warsong Camp"] = "Camp chanteguerre",
	["Windrunner's Overlook"] = "Surplomb de Coursevent",
	--]]
}
