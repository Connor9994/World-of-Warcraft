-- Baits
--
-- Handle special baits, e.g. Draenor.
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local FL = LibStub("LibFishing-1.0");

local GSB = function(...) return FBI:GetSettingBool(...); end;
local PLANS = FBI.FishingPlans

local CurLoc = GetLocale();

local LastSpecialBait = nil;

-- We should be able to build this table, for future special baits, using the items
local SpecialBait = {};

local SEA_SCORPION = 110292;
local ELYSIAN_THADE = 173043;
local Maintainable = {}
-- Blind Lake Sturgeon, 158035
Maintainable[110290] = {
    ["enUS"] = "Blind Lake Sturgeon Bait",
    spell = 158035,
    mapId = 539,
    override = SEA_SCORPION,
};
Maintainable[110293] = {
    ["enUS"] = "Abyssal Gulper Eel Bait",
    spell = 158038,
    mapId = 542,
    override = SEA_SCORPION,
};
Maintainable[110294] = {
    ["enUS"] = "Blackwater Whiptail Bait",
    spell = 158039,
    mapId = 535,
    override = SEA_SCORPION,
};
Maintainable[110289] = {
    ["enUS"] = "Fat Sleeper Bait",
    spell = 158034,
    mapId = 550,
    override = SEA_SCORPION,
};
Maintainable[110291] = {
    ["enUS"] = "Fire Ammonite Bait",
    spell = 158036,
    mapId = 525,
    override = SEA_SCORPION,
};
Maintainable[110274] = {
    ["enUS"] = "Jawless Skulker Bait",
    spell = 158031,
    mapid = 543,
    override = SEA_SCORPION,
};
Maintainable[128229] = {
    ["enUS"] = "Felmouth Frenzy Bait",
    spell = 188904,
    mapId = 534,
    override = SEA_SCORPION,
};

Maintainable[SEA_SCORPION] = {
    ["enUS"] = "Sea Scorpion Bait",
    spell = 158037,
    continent = FBConstants.DRAENOR,
    zone = "Non-inland water",
};

Maintainable[139175] = {
    ["enUS"] = "Arcane Lure",
    spell = 218861,
    continent = FBConstants.BROKEN_ISLES,
};

Maintainable[173043] = {
    ["enUS"] = "Elysian Thade Bait",
    spell = 331698,
    continent = FBConstants.SHADOWLANDS,
};
Maintainable[173038] = {
    ["enUS"] = "Lost Sole Bait",
    spell = 331688,
    continent = FBConstants.SHADOWLANDS,
    override = ELYSIAN_THADE,
};
Maintainable[173040] = {
    ["enUS"] = "Silvergill Pike Bait",
    spell = 331690,
    mapId = 1533,
    continent = FBConstants.SHADOWLANDS,
    override = ELYSIAN_THADE,
};
Maintainable[173041] = {
    ["enUS"] = "Pocked Bonefish Bait",
    spell = 331695,
    mapId = 1536,
    continent = FBConstants.SHADOWLANDS,
    override = ELYSIAN_THADE,
};
Maintainable[173039] = {
    ["enUS"] = "Iridescent Amberjack Bait",
    spell = 331692,
    mapId = 1565,
    continent = FBConstants.SHADOWLANDS,
    override = ELYSIAN_THADE,
};
Maintainable[173042] = {
    ["enUS"] = "Spinefin Piranha Bait",
    spell = 331699,
    mapId = 1525,
    continent = FBConstants.SHADOWLANDS,
    override = ELYSIAN_THADE,
};

local seascorpion = {
    [539] = {
        ["Darktide Strait"] = true,
        ["The Evanescent Sea"] = true,
        ["Karabor Harbor"] = true,
        ["Tanaan Channel"] = true,
    },
    [543] = {
        ["Colossal Depths"] = true,
        ["Barrier Sea"] = true,
        ["Iron Sea"] = true,
        ["Orunai Coast"] = true,
    },
    [535] = {
        ["Aarko's Estate"] = true,
        ["Orunai Delta"] = true,
        ["The South Sea"] = true,
        ["Sha'tari Anchorage"] = true,
        ["Shattrath Port Authority"] = true,
        ["Beacon of Sha'tar"] = true,
        ["The Sunset Shore"] = true,
        ["Orunai Bay"] = true,
        ["Orunai Coast"] = true,
    },
    [525] = {
        ["Colossal Depths"] = true,
        ["Frostboar Point"] = true,
        ["Frostbite Deep"] = true,
        ["Southwind Inlet"] = true,
        ["Ata'gar Promontory"] = true,
        ["Tor'goroth's Tooth"] = true,
        ["Cold Snap Coast"] = true,
        ["Zangar Sea"] = true,
        ["Frostangler Bay"] = true,
        ["Southwind Cliffs"] = true,
        ["The Pale Cove"] = true,
        ["Throm'var Landing"] = true,
        ["Glacier Bay"] = true,
        ["Ozgor's Launch"] = true,
        ["Iron Sea"] = true,
    },
    [550] = {
        ["The Colossal's Fist"] = true,
        ["Lernaen Shore"] = true,
        ["Zangar Shore"] = true,
        ["Cerulean Lagoon"] = true,
        ["Ironfist Harbor"] = true,
        ["Zangar Sea"] = true,
        ["Windroc Bay"] = true,
        ["The South Sea"] = true,
        ["The Cliffs of Highmaul"] = true,
        ["Highmaul Harbor"] = true,
    },
    [577] = {
        ["Tanaan Channel"] = true,
        ["Barrier Sea"] = true,
    },
    [542] = {
        ["Pinchwhistle Gearworks"] = true,
        ["Echidnean Shelf"] = true,
        ["The South Sea"] = true,
        ["Wreck of the Mother Lode"] = true,
        ["The Writhing Mire"] = true,
        ["Southport"] = true,
        ["Bloodmane Pridelands"] = true,
        ["The Evanescent Sea"] = true,
    },
};

local overrides = {}
overrides[SEA_SCORPION] = seascorpion;
overrides[ELYSIAN_THADE] = ELYSIAN_THADE;

local function CurrentSpecialBait()
    local continent, _ = FL:GetCurrentMapContinent();
    local baits = SpecialBait[continent];
    if (baits) then
        for _,id in ipairs(baits) do
            local bait = Maintainable[id];
            if (bait and FL:HasBuff(bait.spell)) then
                return id;
            end
        end
    end
    -- return nil
end

local function ValidOverride(info, mapId, subzone)
    local check = overrides[info.override];
    if check == info.override then
        return true
    end
    return mapId and subZone and check[mapId] and check[mapId][subzone]
end

local function CheckBait(baitid)
    local baitinfo = Maintainable[baitid];
    local got_bait = FL:HasBuff(baitinfo.spell)
    if (GetItemCount(baitid) > 0 and not got_bait and not baitinfo.manual) then
        PLANS:AddEntry(baitinfo.id, baitinfo[CurLoc])
        return true
    end
    return got_bait
end

local function SpecialBaitPlan(queue)
    if (not FBI:IsQuestFishing()) then
        if (GSB("EasyLures") and GSB("DraenorBait")) then
            local continent, _, lastMap = FL:GetCurrentMapContinent();
            if (SpecialBait[continent]) then
                local current = CurrentSpecialBait();
                if ( GSB("DraenorBaitMaintainOnly") ) then
                    LastSpecialBait = current or LastSpecialBait;
                end
                -- we have a special bait applied, don't override it
                if current then
                    return
                end

                if LastSpecialBait and CheckBait(LastSpecialBait) then
                    return
                end

                local _, subzone = FL:GetBaseZoneInfo();
                for _, baitid in ipairs(SpecialBait[continent]) do
                    local info = Maintainable[baitid];
                    if info.mapId and lastMap == info.mapId then
                        if info.override and overrides[info.override] then
                            if ValidOverride(info, mapId, subzone) and CheckBait(info.override) then
                                return
                            end
                        end
                        if CheckBait(baitid) then
                            return
                        end
                    end
                end
                for _, baitid in ipairs(SpecialBait[continent]) do
                    local info = Maintainable[baitid];
                    if not info.mapId then
                        if ValidOverride(info) and CheckBait(info.override) then
                            return
                        end
                        if CheckBait(baitid) then
                            return
                        end
                    end
                end
            end
        end
	end
end

local BaitEvents = {}
BaitEvents["VARIABLES_LOADED"] = function(started)
    for baitid, info in pairs(Maintainable) do
        local continent = info.continent or FL:GetMapContinent(info.mapId)
        if not SpecialBait[continent] then
            SpecialBait[continent] = {}
        end
        if info.mapId then
            tinsert(SpecialBait[continent], baitid)
        end
    end
    for baitid, info in pairs(Maintainable) do
        local continent = info.continent or FL:GetMapContinent(info.mapId)
        if not info.mapId then
            tinsert(SpecialBait[continent], baitid)
        end
    end
    FBI:SetupSpecialItems(Maintainable, false, true, true)
    PLANS:RegisterPlan(SpecialBaitPlan)
end

EventRegistry:RegisterCallback(FBConstants.FISHING_ENABLED_EVT, function()
    LastSpecialBait = nil;
end)

EventRegistry:RegisterCallback(FBConstants.FISHING_DISABLED_EVT, function(started, logout)
    LastSpecialBait = nil;
end)

FBI:RegisterHandlers(BaitEvents);

if ( FBI.Commands["debug"] ) then
    FBI.SeaScorpion = seascorpion;

    FBI.CurrentSpecialBait = CurrentSpecialBait;
end
