-- Random fun things to do while fishing
--
-- Turn on the fish finder
-- Change your title to "Salty"
-- Bring out a "fishing buddy"
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

local FL = LibStub("LibFishing-1.0");

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local CurLoc = GetLocale();

-- wrap settings
local FBGetSetting = function(...) return FBI:GetSetting(...); end;
local FBGetSettingBool = function(...) return FBI:GetSettingBool(...); end;

local function GetSettingBool(setting)
    if (FBGetSettingBool("FishingFluff")) then
        return FBGetSettingBool(setting);
    end
    -- return nil;
end

local function GetSetting(setting)
    if (FBGetSettingBool("FishingFluff")) then
        return FBGetSetting(setting);
    end
    -- return nil;
end

local FluffEvents = {};

local unTrack = nil;
local resetPVP = nil;

function FBI:FishTrackingEnable(enabled)
    local findid = FL:GetFindFishID();
    if ( findid ) then
        if enabled then
            local _, _, active, _ = C_Minimap.GetTrackingInfo(findid);
            if (not active) then
                unTrack = true;
                C_Minimap.SetTracking(findid, true);
            end
        elseif unTrack then
            unTrack = false;
            C_Minimap.SetTracking(findid, false);
        end
    end
end

local function Untrack(yes)
    if ( yes ) then
        FBI:FishTrackingEnable(false);
    end
end

FluffEvents[FBConstants.LOGIN_EVT] = function()
    if ( FishingBuddy_Player ) then
        if ( FishingBuddy_Player["Untrack"] ) then
            FishingBuddy_Player["Untrack"] = nil;
            Untrack(1);
        end
    end
end

local GSB = function(...) return FBI:GetSettingBool(...); end;
local QuestBaits = {
    {
        item = 114628,		-- Icespine Stinger Bait
        spell = 168448,
    },
    {
        item = 114874,		-- Moonshell Claw Bait
        spell = 168868,
    },
};

local objectiveMapID =  {
    525, -- [1]
    535, -- [2]
    539, -- [3]
    542, -- [4]
    543, -- [5]
    550, -- [6]
}

function FBI:IsQuestFishing(item)
    -- Check for hookshot
    if (GetItemCount(116755) > 0) then
        -- Better Nat's quest checking by Bodar (Curse)
        local questLogIndex = C_QuestLog.GetLogIndexForQuestID(36611);
        if (questLogIndex > 0) then
            local currentMapID = FL:GetCurrentMapId();
            local numObjectives = GetNumQuestLeaderBoards(questLogIndex);
            for i = 1, numObjectives do
                local text, objectiveType, finished = GetQuestLogLeaderBoard(i, questLogIndex);
                if (not finished and currentMapID == objectiveMapID[i]) then
                    return true;
                end
            end
        end
    end

    -- and intro quest baits
    for _,bait in ipairs(QuestBaits) do
        if (GetItemCount(bait.item) > 0 or FL:HasBuff(bait.spell)) then
            return true;
        end
    end
end

function FBI:SetupSpecialItem(id, info, fixsetting, fixloc)
    info.id = id
    if (fixsetting and info.enUS and not info.setting) then
        info.setting = info.enUS:gsub("%s+", "")
    end
    if (fixloc and not info[CurLoc]) then
        local link = "item:"..id;
        local n,l = FL:GetItemInfoFields(link, FL.ITEM_NAME, FL.ITEM_LINK);
        if (n and l) then
            info[CurLoc] = n
        else
            info[CurLoc] = info.enUS
        end
    end

    return info;
end

local FishingItems = {};
FishingItems[85973] = {
    ["enUS"] = "Ancient Pandaren Fishing Charm",
    ["tooltip"] = FBConstants.CONFIG_FISHINGCHARM_INFO,
    spell = 125167,
    setting = "UsePandarenCharm",
    usable = function(item)
            -- only usable in Pandaria
            local C, _ = FL:GetCurrentMapContinent();
            return (C == FBConstants.PANDARIA);
        end,
    ["toy"] = 1,
    ["default"] = true,
};
FishingItems[122742] = {
    ["enUS"] = "Bladebone Hook",					-- 1 hour duration
    ["spell"] = 182226,
    setting = "UseBladeboneHook",
    visible = function(option)
            return not FL:IsClassic();
        end,
    usable = function(item)
            -- only usable in Draenor
            local C, _ = FL:GetCurrentMapContinent();
            return (C == FBConstants.DRAENOR);
        end,
    ["default"] = false,
};

FishingItems[116755] = {
    ["enUS"] = "Nat's Hookshot",
    spell = 171740,
    usable = function(...) FBI:IsQuestFishing(...); end,
};

local LevelingItems = {}
LevelingItems[139652] = {
    ["enUS"] = "Leyshimmer Blenny", -- AP
}
LevelingItems[133725] = {
    ["enUS"] = "Leyshimmer Blenny", -- skill
    ["skill"] = true
}
LevelingItems[139653] = {
    ["enUS"] = "Nar'thalas Hermit", -- AP
}
LevelingItems[133726] = {
    ["enUS"] = "Nar'thalas Hermit", -- skill
    ["skill"] = true
}
LevelingItems[139654] = {
    ["enUS"] = "Ghostly Queenfish", -- AP
}
LevelingItems[133727] = {
    ["enUS"] = "Ghostly Queenfish", -- skill
    ["skill"] = true
}
LevelingItems[139655] = {
    ["enUS"] = "Terrorfin", -- AP
}
LevelingItems[133728] = {
    ["enUS"] = "Terrorfin", -- skill
    ["skill"] = true
}
LevelingItems[139656] = {
    ["enUS"] = "Thorned Flounder*", -- AP
}
LevelingItems[133729] = {
    ["enUS"] = "Thorned Flounder*", -- skill
    ["skill"] = true
}
LevelingItems[139657] = {
    ["enUS"] = "Ancient Mossgill", -- AP
}
LevelingItems[133730] = {
    ["enUS"] = "Ancient Mossgill", -- skill
    ["skill"] = true
}
LevelingItems[139658] = {
    ["enUS"] = "Mountain Puffer", -- AP
}
LevelingItems[133731] = {
    ["enUS"] = "Mountain Puffer", -- skill
    ["skill"] = true
}
LevelingItems[139659] = {
    ["enUS"] = "Coldriver Carp", -- AP
}
LevelingItems[133732] = {
    ["enUS"] = "Coldriver Carp", -- skill
    ["skill"] = true
}
LevelingItems[139660] = {
    ["enUS"] = "Ancient Highmountain Salmon", -- AP
}
LevelingItems[133733] = {
    ["enUS"] = "Ancient Highmountain Salmon", -- skill
    ["skill"] = true
}
LevelingItems[139661] = {
    ["enUS"] = "Oodelfjisk", -- AP
}
LevelingItems[133734] = {
    ["enUS"] = "Oodelfjisk", -- skill
    ["skill"] = true
}
LevelingItems[139662] = {
    ["enUS"] = "Graybelly Lobster", -- AP
}
LevelingItems[133735] = {
    ["enUS"] = "Graybelly Lobster", -- skill
    ["skill"] = true
}
LevelingItems[139663] = {
    ["enUS"] = "Thundering Stormray", -- AP
}
LevelingItems[133736] = {
    ["enUS"] = "Thundering Stormray", -- skill
    ["skill"] = true
}
LevelingItems[139664] = {
    ["enUS"] = "Magic-Eater Frog", -- AP
}
LevelingItems[133737] = {
    ["enUS"] = "Magic-Eater Frog", -- skill
    ["skill"] = true
}
LevelingItems[139665] = {
    ["enUS"] = "Seerspine Puffer", -- AP
}
LevelingItems[133738] = {
    ["enUS"] = "Seerspine Puffer", -- skill
    ["skill"] = true
}
LevelingItems[139666] = {
    ["enUS"] = "Tainted Runescale Koi", -- AP
}
LevelingItems[133739] = {
    ["enUS"] = "Tainted Runescale Koi", -- skill
    ["skill"] = true
}
LevelingItems[139667] = {
    ["enUS"] = "Axefish", -- AP
}
LevelingItems[133740] = {
    ["enUS"] = "Axefish", -- skill
    ["skill"] = true
}
LevelingItems[139668] = {
    ["enUS"] = "Seabottom Squid", -- AP
}
LevelingItems[133741] = {
    ["enUS"] = "Seabottom Squid", -- skill
    ["skill"] = true
}
LevelingItems[139669] = {
    ["enUS"] = "Ancient Black Barracuda", -- AP
}
LevelingItems[133742] = {
    ["enUS"] = "Ancient Black Barracuda", -- skill
    ["skill"] = true
}

FBConstants.UNDERLIGHT_ANGLER = 133755;

function FBI:CastAndThrow()
    if GSB("AutoOpen") then
        -- Only do this is we're using the Underlight Angler
        if FL:GetMainHandItem(true) == FBConstants.UNDERLIGHT_ANGLER then
            for id,info in pairs(LevelingItems) do
                if GetItemCount(id) > 0 then
                    local rank, _, skillmax, _ = FL:GetCurrentSkill();
                    local _, _, _, _, _, levels, _, _, _, _, _, _ = C_ArtifactUI.GetArtifactInfo()
                    local isAP = not info.skill;
                    if (info.skill and rank < skillmax) or (isAP and (not levels or levels < 24)) then
                        return "/use "..info[CurLoc].."\n/cast "..PROFESSIONS_FISHING
                    end
                end
            end
        end
    end
end

FBI.FishingItems = FishingItems;

local FISHINGHATS = {
    [118393] = true,        -- Tentacled Hat
    [118380] = true,        -- HightFish Cap
};
FBEnvironment.FishingHats = FISHINGHATS;

local FluffOptions = {
    ["FishingFluff"] = {
        ["text"] = FBConstants.CONFIG_FISHINGFLUFF_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FISHINGFLUFF_INFO,
        ["v"] = 1,
        ["m1"] = 1,
        ["p"] = 1,
        ["default"] = true
    },
    ["FindFish"] = {
        ["text"] = FBConstants.CONFIG_FINDFISH_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FINDFISH_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["parents"] = { ["FishingFluff"] = "d" },
        ["default"] = true
    },
    ["DrinkHeavily"] = {
        ["text"] = FBConstants.CONFIG_DRINKHEAVILY_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_DRINKHEAVILY_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["parents"] = { ["FishingFluff"] = "d" },
        ["default"] = true
    },
};

local function ItemInit(option, button)
    local n = GetItemInfo(option.id);
    if (n) then
        option.text = n;
    else
        option.text = option.enUS;
    end
end

local function ItemCountVisible(option)
    return FBI.FishingPlans:HaveThing(option.id, option)
end

function FBI:UpdateFluffOption(id, info)
    info.id = id;
    if (info.setting and not info.ignore) then
        local option = {};

        option.id = id;
        option.toy = info.toy;
        option.enUS = info.enUS;

        if (info.visible) then
            option.visible = info.visible;
        else
            option.visible = ItemCountVisible;
        end

        option.init = ItemInit;

        option.tooltip = info.tooltip;
        option.setup = info.setup;
        option.enabled = info.enabled;
        option.default = info.default;

        option.v = 1;
        -- option.deps = { ["FishingFluff"] = "d" };
        FluffOptions[info.setting] = option;

        if (info.option) then
            local sub = {};
            sub.text = info.option.text;
            sub.tooltip = info.option.tooltip;
            sub.default = info.option.default;
            sub.visible = option.visible;
            sub.v = 1;
            sub.parents = {};
            sub.parents[info.setting] = "d";
            FluffOptions[info.option.setting] = sub;
        end
    end
end

local function UpdateItemOptions()
    for id,info in pairs(FishingItems) do
        FBI:UpdateFluffOption(id, info)
    end

    FBI.FluffOptions = FluffOptions;
end

-- Turn items into options we can set
function FBI:SetupSpecialItems(items, fixsetting, fixloc, skipitem)
    for id,info in pairs(items) do
        info = self:SetupSpecialItem(id, info, fixsetting, fixloc);
        if ( not skipitem ) then
            FishingItems[id] = info;
            FBI:UpdateFluffOption(id, info)
        end
    end
end

function FBI:AddFluffOptions(options)
    if FL:IsClassic() then
        local _, name = FL:GetFishingSpellInfo();
        FBI.OptionsFrame.HandleOptions(name, "Interface\\Icons\\INV_Fishingpole_02", options);
    else
        FBI.OptionsFrame.HandleOptions(FBConstants.CONFIG_FISHINGFLUFF_ONOFF, "Interface\\Icons\\inv_misc_food_164_fish_seadog", options);
    end
end

FluffEvents["VARIABLES_LOADED"] = function(started)
    -- Let's make sure we have buffs on all the items we currently know about
    for id,info in pairs(FishingItems) do
        FBI:SetupSpecialItem(id, info);
    end
    FBI:SetupSpecialItems(LevelingItems, false, true, true);
end

FluffEvents[FBConstants.FIRST_UPDATE_EVT] = function()
    UpdateItemOptions();
    FBI:AddFluffOptions(FluffOptions)
end

EventRegistry:RegisterCallback(FBConstants.FISHING_ENABLED_EVT, function()
    if ( FBI:GetSettingBool("FishingFluff")) then
        if ( GetSettingBool("FindFish") ) then
            FBI:FishTrackingEnable(true);
        end
        if ( GetSettingBool("TurnOffPVP") ) then
            if (1 == GetPVPDesired() ) then
                resetPVP = true;
                SetPVP(0);
            end
        end
    end
end)

EventRegistry:RegisterCallback(FBConstants.FISHING_DISABLED_EVT, function(started, logout)
    if ( logout ) then
        FishingBuddy_Player["Untrack"] = unTrack;
    else
        Untrack(unTrack);
    end
    unTrack = nil;
    if ( resetPVP ) then
        SetPVP(1);
    end
    resetPVP = nil;
end)

FBI:RegisterHandlers(FluffEvents);
