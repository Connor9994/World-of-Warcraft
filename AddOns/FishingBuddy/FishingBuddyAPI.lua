--[[
Name: FishingBuddyApi-1.0
Maintainers: Sutorix <sutorix@hotmail.com>
Description: A library for the Fishing Buddy functions usable by plugins and other code.
Copyright (c) by Bob Schumaker
Licensed under a Creative Commons "Attribution Non-Commercial Share Alike" License
--]]
local addonName, FBStorage = ...
local  FBI = FBStorage

local MAJOR_VERSION = "FishingBuddyApi-1.0"
local MINOR_VERSION = 90000 + tonumber(("$Rev: 678 $"):match("%d+"))

if not LibStub then error(MAJOR_VERSION .. " requires LibStub") end

local FBAPI, oldLib = LibStub:NewLibrary(MAJOR_VERSION, MINOR_VERSION)
if not FBAPI then
	return
end

local FL = LibStub("LibFishing-1.0");

-- 5.0.4 has a problem with a global "_"
local _

FBAPI.FBConstants = FBI.FBConstants;

-- Identify Fishing Buddy
function FBAPI:GetKey()
	local key = FishingBuddy_Info["FishingBuddyKey"];
	if ( not key ) then
		-- This was removed in 3.1, lets just assume we have enough randomness already
		-- math.randomseed(time());
		-- generate a random key to identify this instance of the plugin
		local n = 16 + random(4) + random(4);
		key = "";
		for _=1,n do
			key = key .. string.char(64+math.random(26));
		end
		FishingBuddy_Info["FishingBuddyKey"] = key;
	end
	return key;
end

function FBAPI:CheckForeignKey(foreignKey, foreignDate, saveKey)
	if ( not FishingBuddy_Info["ForeignKeys"] ) then
		FishingBuddy_Info["ForeignKeys"] = {};
	end
	if ( saveKey ) then
		FishingBuddy_Info["ForeignKeys"][foreignKey] = foreignDate;
		return;
	end
	if ( not FishingBuddy_Info["ForeignKeys"][foreignKey] ) then
		FishingBuddy_Info["ForeignKeys"][foreignKey] = foreignDate;
		return true;
	end
	return ( FishingBuddy_Info["ForeignKeys"][foreignKey] < foreignDate );
end

function FBAPI:ResetKey()
	FishingBuddy_Info["FishingBuddyKey"] = nil;
	local key = self:GetKey();
	if (FB_MergeDatabase) then
		FB_MergeDatabase.key = key;
	end
	FBI:Message("Key reset.");
	return key;
end

-- Miscellaneous functions
for _, apifunc in ipairs(FBI.APIFunctions) do
	FBAPI[apifunc] = function(self, ...) return FBI[apifunc](FBI, ...); end;
end
