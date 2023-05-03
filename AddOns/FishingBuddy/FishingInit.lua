-- FBI
--
-- Everything you wanted support for in your fishing endeavors
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

local FL = LibStub("LibFishing-1.0");

local gotSetupDone = false;
local lastVersion;
local lastPlayerVersion;
local playerName;
local realmName;

local zmto = function(...) return FBI:ZoneMarkerTo(...); end;
local zmex = function(...) return FBI:ZoneMarkerEx(...); end;

function FBI:IsLoaded()
	return gotSetupDone;
end

-- if the old information is still there, then we might not have per
-- character saved info, so let's save it away just in case. It'll go
-- away the second time we load the add-on
function FBI:SavePlayerInfo()
	if ( FishingBuddy_Info[realmName] and
		  FishingBuddy_Info[realmName]["Settings"] and
		  FishingBuddy_Info[realmName]["Settings"][playerName] ) then
		local tabs = { "Settings", "Outfit", "WasWearing" };
		for _,tab in pairs(tabs) do
			for k,v in pairs(FishingBuddy_Player[tab]) do
				FishingBuddy_Info[realmName][tab][playerName][k] = v;
			end
		end
	end
end

local FishingInit = {};

FishingInit.ResetHelpers = function()
	FBI.MappedZones = {};
	FBI.SortedZones = {};
	FBI.SortedByZone = {};
	FBI.SortedSubZones = {};
	FBI.UniqueSubZones = {};
	FBI.SubZoneMap = {};
end

-- Fill in the player name and realm
FishingInit.SetupNameInfo = function()
	playerName = UnitName("player");
	realmName = GetRealmName();
	return playerName, realmName;
end

FishingInit.CheckPlayerInfo = function()
	local tabs = { "Settings", "Outfit", "WasWearing" };
	if ( not FishingBuddy_Player ) then
		FishingBuddy_Player = {};
		for _,tab in pairs(tabs) do
			FishingBuddy_Player[tab] = { };
		end
		if ( FishingBuddy_Info[realmName] and
			  FishingBuddy_Info[realmName]["Settings"] and
			  FishingBuddy_Info[realmName]["Settings"][playerName] ) then
			for _,tab in pairs(tabs) do
				if ( FishingBuddy_Info[realmName][tab] and
					  FishingBuddy_Info[realmName][tab][playerName] ) then
					for k,v in pairs(FishingBuddy_Info[realmName][tab][playerName]) do
						FishingBuddy_Player[tab][k] = v;
					end
				end
			end
		end
	elseif ( FishingBuddy_Info[realmName] and
			  FishingBuddy_Info[realmName]["Settings"] ) then
		-- the saved information is there, kill the old stuff
		for _,tab in pairs(tabs) do
			if ( FishingBuddy_Info[realmName][tab] ) then
				FishingBuddy_Info[realmName][tab][playerName] = nil;
				-- Duh, table.getn doesn't work because there
				-- aren't any integer keys in this table
				if ( next(FishingBuddy_Info[realmName][tab]) == nil ) then
					FishingBuddy_Info[realmName][tab] = nil;
				end
			end
		end
		if ( next(FishingBuddy_Info[realmName]) == nil ) then
			FishingBuddy_Info[realmName] = nil;
		end
	end
end

FishingInit.CheckPlayerSetting = function(setting, defaultvalue)
	if ( not FishingBuddy_Player["Settings"] ) then
		FishingBuddy_Player["Settings"] = { };
	end
	if ( not FishingBuddy_Player["Settings"][setting] ) then
		FishingBuddy_Player["Settings"][setting] = defaultvalue;
	end
end

FishingInit.CheckGlobalSetting = function(setting, defaultvalue)
	if ( not FishingBuddy_Info[setting] ) then
		if ( not defaultvalue ) then
			FishingBuddy_Info[setting] = {};
		else
			FishingBuddy_Info[setting] = defaultvalue;
		end
	end
end

FishingInit.CheckRealm = function()
	local tabs = { "Settings", "Outfit", "WasWearing" };
	for _,tab in pairs(tabs) do
		if ( FishingBuddy_Info[tab] ) then
			local old = FishingBuddy_Info[tab][playerName];
			if ( old ) then
				if ( not FishingBuddy_Info[realmName] ) then
					FishingBuddy_Info[realmName] = { };
					for _,subtab in pairs(tabs) do
						FishingBuddy_Info[realmName][subtab] = { };
					end
				end

				FishingBuddy_Info[realmName][tab][playerName] = { };
				for k, v in pairs(old) do
					FishingBuddy_Info[realmName][tab][playerName][k] = v;
				end
				FishingBuddy_Info[tab][playerName] = nil;
			end

			-- clean out cruft, if we have some
			FishingBuddy_Info[tab][UNKNOWNOBJECT] = nil;

			-- Duh, table.getn doesn't work because there
			-- aren't any integer keys in this table
			if ( next(FishingBuddy_Info[tab]) == nil ) then
				FishingBuddy_Info[tab] = nil;
			end
		end
	end
end

FishingInit.SetupZoneMapping = function()

	if ( not FishingBuddy_Info["KnownZones"] ) then
		FishingBuddy_Info["KnownZones"] = {};
	end
	if ( not FishingBuddy_Info["SubZones"] ) then
		FishingBuddy_Info["SubZones"] = {};
	end
end

FishingInit.CleanLocales = function(loc)
	local locales = {};
	local havelocs = false;
	for oldloc,_ in pairs(FishingBuddy_Info["Locales"]) do
		if ( oldloc ~= loc ) then
			locales[oldloc] = 1;
			havelocs = true;
		end
	end
	if (havelocs) then
		FishingBuddy_Info["Locales"] = locales;
	else
		FishingBuddy_Info["Locales"] = nil;
	end
	return havelocs, locales;
end

FishingInit.mapid_lookup = {
	["Dire Maul"] = 234,
	["Eye of the Storm"] = 112,
	["Broken Isles"] = 619,
	["Northrend"] = 113,
	["The Cape of Stranglethorn"] = 210,
	["Ashran"] = 588,
	["Bloodmyst Isle"] = 106,
	["Hrothgar's Landing"] = 170,
	["Arathi Highlands"] = 14,
	["The Wandering Isle"] = 709,
	["Isle of Conquest"] = 169,
	["Orgrimmar"] = 85,
	["Eastern Kingdoms"] = 13,
	["Undercity"] = 998,
	["Townlong Steppes"] = 388,
	["Warsong Gulch"] = 92,
	["Kalimdor"] = 12,
	["Warspear"] = 624,
	["Hour of Twilight"] = 399,
	["The Cove of Nashal"] = 671,
	["A Little Patience"] = 487,
	["Azuremyst Isle"] = 776,
	["Tol Barad"] = 244,
	["Ruins of Ahn'Qiraj"] = 247,
	["Dragon Soul"] = 409,
	["Gundrak"] = 153,
	["Alterac Valley"] = 91,
	["Un'Goro Crater"] = 78,
	["Ironforge"] = 87,
	["Spires of Arak"] = 542,
	["Burning Steppes"] = 36,
	["Gorgrond"] = 543,
	["Wetlands"] = 56,
	["The Jade Forest"] = 448,
	["Plaguelands: The Scarlet Enclave"] = 124,
	["Twin Peaks"] = 206,
	["Trueshot Lodge"] = 739,
	["Arathi Basin"] = 837,
	["Niskara"] = 714,
	["Ruins of Gilneas City"] = 218,
	["Mardum, the Shattered Abyss"] = 719,
	["Darkshore"] = 62,
	["Loch Modan"] = 48,
	["Blade's Edge Mountains"] = 105,
	["Hyjal Summit"] = 329,
	["Helmouth Shallows"] = 694,
	["Helheim"] = 649,
	["Defense of Karabor"] = 592,
	["Emerald Dreamway"] = 715,
	["The Veiled Stair"] = 433,
	["Silithus"] = 81,
	["Shattrath City"] = 594,
	["Frostfire Ridge"] = 525,
	["Grizzly Hills"] = 116,
	["Unga Ingoo"] = 450,
	["Brewmoon Festival"] = 452,
	["Ashenvale"] = 63,
	["Pit of Saron"] = 184,
	["Hillsbrad Foothills (Southshore vs. Tarren Mill)"] = 623,
	["Kelp'thar Forest"] = 201,
	["Isle of Giants"] = 507,
	["Hillsbrad Foothills"] = 25,
	["Krasarang Wilds"] = 418,
	["Coldridge Valley"] = 427,
	["Vale of Eternal Blossoms"] = 390,
	["Assault on Zan'vess"] = 451,
	["Terrace of Endless Spring"] = 728,
	["Thunder Totem"] = 750,
	["Desolace"] = 66,
	["Malorne's Nightmare"] = 760,
	["Stormshield"] = 622,
	["Northern Barrens"] = 10,
	["Western Plaguelands"] = 22,
	["Hellfire Citadel"] = 661,
	["A Brewing Storm"] = 447,
	["Zangarmarsh"] = 102,
	["Shado-Pan Monastery"] = 443,
	["Nagrand"] = 107,
	["End Time"] = 401,
	["The Everbloom"] = 620,
	["Wintergrasp"] = 123,
	["Shimmering Expanse"] = 205,
	["Talador"] = 535,
	["Abyssal Depths"] = 204,
	["Isle of Thunder"] = 516,
	["Ursoc's Lair"] = 757,
	["Dragonblight"] = 115,
	["Dread Wastes"] = 422,
	["The Maelstrom"] = 948,
	["Eversong Woods"] = 94,
	["Silvermoon City"] = 110,
	["Durotar"] = 1,
	["Trial of Valor"] = 806,
	["Vashj'ir"] = 203,
	["Broken Shore"] = 676,
	["Zul'Gurub"] = 233,
	["Celestial Tournament"] = 571,
	["Valley of Trials"] = 461,
	["Stormheim"] = 696,
	["Tanaris"] = 71,
	["Stormwind City"] = 84,
	["Borean Tundra"] = 114,
	["The Storm Peaks"] = 120,
	["Battle on the High Seas"] = 524,
	["Darkmoon Island"] = 407,
	["Hellfire Peninsula"] = 100,
	["Draenor"] = 572,
	["Swamp of Sorrows"] = 51,
	["Camp Narache"] = 462,
	["Zul'Aman"] = 333,
	["The Culling of Stratholme"] = 130,
	["Shadowmoon Valley (Draenor)"] = 539,
	["Stranglethorn Vale"] = 224,
	["Eastern Plaguelands"] = 23,
	["Sunstrider Isle"] = 467,
	["Siege of Orgrimmar"] = 556,
	["The Battle for Gilneas"] = 275,
	["Shado-Pan Showdown"] = 843,
	["Shadowmoon Valley"] = 104,
	["Elwynn Forest"] = 37,
	["Netherstorm"] = 109,
	["Mulgore"] = 7,
	["Well of Eternity"] = 398,
	["Deadwind Pass"] = 42,
	["Temple of Kotmogu"] = 449,
	["Battle for Blackrock Mountain"] = 838,
	["Eye of Azshara"] = 713,
	["Howling Fjord"] = 117,
	["Azshara"] = 697,
	["The Exodar"] = 775,
	["Deepwind Gorge"] = 519,
	["Highmaul"] = 610,
	["The Obsidian Sanctum"] = 155,
	["Molten Front"] = 338,
	["Ammen Vale"] = 468,
	["Timeless Isle"] = 554,
	["Zul'Farrak"] = 219,
	["Dustwallow Marsh"] = 416,
	["Thunder Bluff"] = 88,
	["Deathknell"] = 465,
	["Stonetalon Mountains"] = 65,
	["The Dreamgrove"] = 747,
	["Searing Gorge"] = 32,
	["Suramar"] = 680,
	["Fields of the Eternal Hunt"] = 877,
	["Moonglade"] = 80,
	["Thousand Needles"] = 64,
	["Siege of Niuzao Temple"] = 457,
	["Outland"] = 101,
	["Silverpine Forest"] = 21,
	["Mount Hyjal"] = 198,
	["Court of Stars"] = 761,
	["The Ruby Sanctum"] = 200,
	["Neltharion's Lair"] = 731,
	["Felwood"] = 77,
	["Badlands"] = 15,
	["The Black Morass"] = 273,
	["Teldrassil"] = 57,
	["Val'sharah"] = 641,
	["Tanaan Jungle"] = 534,
	["Redridge Mountains"] = 49,
	["Ruins of Gilneas"] = 217,
	["Ahn'Qiraj: The Fallen Kingdom"] = 327,
	["Valley of the Four Winds"] = 376,
	["Old Hillsbrad Foothills"] = 274,
	["Sunwell Plateau"] = 335,
	["Echo Isles"] = 463,
	["Tol Barad Peninsula"] = 245,
	["Gilneas City"] = 202,
	["Twisting Nether"] = 645,
	["Sholazar Basin"] = 119,
	["New Tinkertown"] = 469,
	["Pandaria"] = 424,
	["Firelands"] = 367,
	["Icecrown"] = 118,
	["Strand of the Ancients"] = 128,
	["Dalaran (Broken Isles)"] = 625,
	["Shadowglen"] = 460,
	["Duskwood"] = 47,
	["Dreadscar Rift"] = 717,
	["Terokkar Forest"] = 108,
	["The Hinterlands"] = 26,
	["Ghostlands"] = 95,
	["Isle of Quel'Danas"] = 122,
	["Westfall"] = 52,
	["Southern Barrens"] = 199,
	["Kezan"] = 194,
	["Zul'Drak"] = 121,
	["Northern Stranglethorn"] = 50,
	["Lost City of the Tol'vir"] = 277,
	["Nagrand (Draenor)"] = 550,
	["Darnassus"] = 89,
	["The Maelstrom (zone)"] = 276,
	["Crystalsong Forest"] = 127,
	["Twilight Highlands"] = 241,
	["Northshire"] = 425,
	["Gloaming Reef"] = 758,
	["Winterspring"] = 83,
	["Assault on Broken Shore"] = 858,
	["Feralas"] = 69,
	["Dagger in the Dark"] = 488,
	["The Lost Glacier"] = 871,
	["Darkheart Thicket"] = 733,
	["The Oculus"] = 799,
	["Dun Morogh"] = 27,
	["Helmouth Cliffs"] = 706,
}

FishingInit.ConvertToMapId = function()
	if FishingBuddy_Info['ZoneIndex'] and FL:tablecount(FishingBuddy_Info['ZoneIndex']) > 0 then
		local skills = {}
		local totals = {}
		local holes = {}
		local subzones = {}
		local known = {}
		local schools = {}
		local missing = {}
		for zidx, name in ipairs(FishingBuddy_Info['ZoneIndex']) do
			local mapId = FishingInit.mapid_lookup[name]
			if mapId then
				known[mapId] = name
				local zidm = FBI:ZoneMarkerTo(zidx)
				local newzidm = FBI:ZoneMarkerTo(mapId)
				local szcount = FishingBuddy_Info['SubZones'][zidm] or 0
				subzones[newzidm] = szcount
				totals[newzidm] = FishingBuddy_Info['FishTotals'][zidm]
				if FishingBuddy_Info['FishSchools'] then
					schools[mapId] = FishingBuddy_Info['FishSchools'][zidx]
				end
				for idx=1,szcount do
					local sidm = FBI:ZoneMarkerTo(zidx, idx)
					local newsidm = FBI:ZoneMarkerTo(mapId, idx)
					subzones[newsidm] = FishingBuddy_Info['SubZones'][sidm]
					totals[newsidm] = FishingBuddy_Info['FishTotals'][sidm]
					skills[newsidm] = FishingBuddy_Info['FishingSkill'][sidm]
					holes[newsidm] = FishingBuddy_Info['FishingHoles'][sidm]
				end
			else
				FBI:Debug("Failed to find zone ", name)
				missing[name] = true
			end
		end
		FishingBuddy_Info['SubZones'] = subzones
		FishingBuddy_Info['FishTotals'] = totals
		FishingBuddy_Info['FishingSkill'] = skills
		FishingBuddy_Info['FishingHoles'] = holes
		FishingBuddy_Info['FishSchools'] = schools
		FishingBuddy_Info['KnownZones'] = known
		FishingBuddy_Info['missing'] = missing
	end
	FishingBuddy_Info['ZoneIndex'] = nil
end

FishingInit.GSB = function(val)
	return val ~= nil and (val == true or val == 1);
end

FishingInit.GlobalGSB = function(setting)
	if FishingBuddy_Info and FishingBuddy_Info["Settings"] then
		return FishingInit.GSB(FishingBuddy_Info["Settings"][setting])
	end
end

FishingInit.UpdateFishingDB = function()
	local version = FishingBuddy_Info["Version"];
	if ( not version ) then
		version = 8700; -- be really old
	end

	-- We should have been doing this all along, so let's go way, way back
	local playerversion = FishingBuddy_Player["Version"];
	if ( not playerversion ) then
		playerversion = 8700;
	end

	if ( playerversion < 18000 ) then
		if ( FishingBuddy_Player["Settings"]["SpecialBobbers"] ) then
			-- Set to ALL
			FishingBuddy_Player["Settings"]["SpecialBobbers"] = -2
		else
			-- Set to NONE
			FishingBuddy_Player["Settings"]["SpecialBobbers"] = -1
		end
	end

	-- Let's use map ids for where we find fish, and get ready
	-- for handling uiMapIDs.
	-- Still doesn't help use for subzone names though :-(
	FishingInit.ConvertToMapId()

    local location = FishingBuddy_Player["WatcherLocation"];
    if location and location["x"] ~= nil then
        for _,key in ipairs({"x", "y", "point", "scale"}) do
            location["solo_"..key] = location[key];
            location["grp_"..key] = location[key];
            location["raid_"..key] = location[key];
            location[key] = nil;
        end
    end

	if (type(FishingBuddy_Player["Settings"]["TotalTimeFishing"]) ~= "number") then
		FishingBuddy_Player["Settings"]["TotalTimeFishing"] = 1;
    end

    if FishingBuddy_Player["Settings"]["UseAnglersRaft"] ~= nil then
        FishingBuddy_Player["Settings"]["UseRaft"] = FishingBuddy_Player["Settings"]["UseAnglersRaft"] or  FishingBuddy_Player["Settings"]["UseBobbingBerg"];
        FishingBuddy_Player["Settings"]["UseAnglersRaft"] = nil;
    end


	-- save this for other pieces that might need to update
	lastVersion = version;
	lastPlayerVersion = playerversion;

	FishingBuddy_Info["Version"] = FBConstants.CURRENTVERSION;
	FishingBuddy_Player["Version"] = FBConstants.CURRENTVERSION;
end

function FBI:GetLastVersion()
	return lastVersion, lastPlayerVersion;
end

-- Based on code in QuickMountEquip
FishingInit.HookFunction = function(func, newfunc)
	local oldValue = _G[func];
	if ( oldValue ~= _G[newfunc] ) then
		setglobal(func, _G[newfunc]);
		return true;
	end
	return false;
end

-- set up alternate view of fish data. do this as startup to
-- lower overall dynamic hit when loading the window
FishingInit.SetupByFishie = function()
	if ( not FBI.ByFishie ) then
		local loc = GetLocale();
		local fh = FishingBuddy_Info["FishingHoles"];
		local ff = FishingBuddy_Info["Fishies"];
		FBI.ByFishie = { };
		FBI.SortedFishies = { };
		for idx,info in pairs(fh) do
			for id,quantity in pairs(info) do
				if ( not FBI.ByFishie[id] ) then
					FBI.ByFishie[id] = { };
					if ( ff[id] ) then
						tinsert(FBI.SortedFishies,
								  { text = ff[id][loc], id = id });
					end
				end
				if ( not FBI.ByFishie[id][idx] ) then
					FBI.ByFishie[id][idx] = quantity;
				else
					FBI.ByFishie[id][idx] = FBI.ByFishie[id][idx] + quantity;
				end
			end
		end
		FBI.FishSort(FBI.SortedFishies, true);
	end
end

FishingInit.InitSortHelpers = function()
	local fh = FishingBuddy_Info["FishingHoles"];
	FishingInit.ResetHelpers();
	for mapId, name in pairs(FishingBuddy_Info["KnownZones"]) do
		local zone = FL:GetLocZone(mapId)
		if zone then
			FBI.MappedZones[zone] = mapId
			tinsert(FBI.SortedZones, zone);
			FBI.SortedByZone[zone] = {};
			local idx = zmto(mapId, 0);
			local count = FishingBuddy_Info["SubZones"][idx];
			if ( count ) then
				for s=1,count,1 do
					idx = zmto(mapId,s);
					local subzone = FL:GetLocSubZone(FishingBuddy_Info["SubZones"][idx]);
					tinsert(FBI.SortedByZone[zone], subzone);
					FBI.UniqueSubZones[subzone] = 1;
					if ( not FBI.SubZoneMap[subzone] ) then
						FBI.SubZoneMap[subzone] = {};
					end
					FBI.SubZoneMap[subzone][idx] = 1;
				end
				table.sort(FBI.SortedByZone[zone]);
            end
		end
	end
	table.sort(FBI.SortedZones);
	for subzone,_ in pairs(FBI.UniqueSubZones) do
		tinsert(FBI.SortedSubZones, subzone);
	end
	table.sort(FBI.SortedSubZones);
end

FishingInit.SetupSchoolCounts = function()
	local counts = {};
	if ( FishingBuddy_Info["FishSchools"] ) then
		for mapId,holes in pairs(FishingBuddy_Info["FishSchools"]) do
			for _,hole in pairs(holes) do
				local sidx = hole.sidx;
				if ( sidx ) then
					-- Fix bad data
					if ( sidx < 1000 ) then
						sidx = zmto(mapId, sidx);
						hole.sidx = sidx;
					end
					if ( hole.fish ) then
						counts[sidx] = counts[sidx] or {};
						for fishid,count in pairs(hole.fish) do
							counts[sidx][fishid] = counts[sidx][fishid] or 0;
							counts[sidx][fishid] = counts[sidx][fishid] + count;
						end
					end
				end
			end
		end
	end
	FBI.SZSchoolCounts = counts;
end

FishingInit.InitSettings = function()
	if( not FishingBuddy_Info ) then
		FishingBuddy_Info = { };
	end
	-- global stuff
	FishingInit.SetupZoneMapping();
	FishingInit.CheckRealm();

	FishingInit.CheckGlobalSetting("ImppDBLoaded", 0);
	FishingInit.CheckGlobalSetting("FishInfo2", 0);
	FishingInit.CheckGlobalSetting("DataFish", 0);
	FishingInit.CheckGlobalSetting("FishTotals");
	FishingInit.CheckGlobalSetting("FishingHoles");
	FishingInit.CheckGlobalSetting("FishingSkill");
	FishingInit.CheckGlobalSetting("Fishies");
	FishingInit.CheckGlobalSetting("HiddenFishies");

	FishingInit.CheckPlayerInfo();

	-- per user stuff
	if ( not FishingBuddy_Player["Settings"] ) then
		FishingBuddy_Player["Settings"] = { };
	end
	FishingInit.UpdateFishingDB();
	FishingInit.SetupByFishie();
	FishingInit.InitSortHelpers();
	FishingInit.SetupSchoolCounts();
end

FishingInit.RegisterMyAddOn = function()
	-- Register the addon in myAddOns
	if (myAddOnsFrame_Register) then
		local details = {
			name = FBConstants.ID,
			description = FBConstants.DESCRIPTION,
			version = FBConstants.VERSION,
			releaseDate = 'July 21, 2005',
			author = 'Sutorix',
			email = 'Windrunner',
			category = MYADDONS_CATEGORY_PROFESSIONS,
			frame = "FishingBuddy",
			optionsframe = "FishingBuddyFrame",
		};
		myAddOnsFrame_Register(details);
	end
end

FishingInit.RegisterFunctionTraps = function()
end

function FBI:Initialize()
	if ( FishingInit ) then
		-- Set everything up, then dump the code we don't need anymore
		playerName, realmName = FishingInit.SetupNameInfo();
		FishingInit.RegisterFunctionTraps();
		FishingInit.InitSettings();
		-- register with myAddOn
		FishingInit.RegisterMyAddOn();

		gotSetupDone = true;
		FBI:WatchUpdate();
		-- debugging state
		FBI.Debugging = FBI:BaseGetSetting("FishDebug");

		-- we don't need these functions anymore, gc 'em
		FishingInit = nil;
	end
end
