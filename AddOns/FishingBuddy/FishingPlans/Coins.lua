-- Items
--
-- Handle using items with complex requirements.
local addonName, FBStorage = ...
local  FBI = FBStorage

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local FL = LibStub("LibFishing-1.0");

local GSB = function(...) return FBI:GetSettingBool(...); end;
local PLANS = FBI.FishingPlans

local CurLoc = GetLocale();

-- Dalaran coin lures
local CoinLures = {};
CoinLures[138956] = {
    ["enUS"] = "Hypermagnetic Lure",
    spell = 217835,
};
CoinLures[138959] = {
    ["enUS"] = "Micro-Vortex Generator",
    spell = 217838,
};
CoinLures[138961] = {
    ["enUS"] = "Alchemical Bonding Agent",
    spell = 217840,
};
CoinLures[138962] = {
    ["enUS"] = "Starfish on a String",
    spell = 217842,
};
CoinLures[138957] = {
    ["enUS"] = "Auriphagic Sardine",
    spell = 217836,
};
CoinLures[138960] = {
    ["enUS"] = "Wish Crystal",
    spell = 217839,
};
CoinLures[138963] = {
    ["enUS"] = "Tiny Little Grabbing Apparatus",
    spell = 217844,
};
CoinLures[138958] = {
    ["enUS"] = "Glob of Really Sticky Glue",
    spell = 217837,
};

-- We always want to drink, so let's skip LibFishing's "lure when we need it"
-- and leave that for FishingAce!
local function CoinPlan()
    if GSB("DalaranLures") then
        local lure_id = nil
        local lure_info = nil
        for id, info in pairs(CoinLures) do
            if (FL:HasBuff(info.spell)) then
                return
            end
            if (GetItemCount(id) > 0) then
                lure_id = id
                lure_info = info
            end
        end
        if lure_id then
            PLANS:AddEntry(lure_id, lure_info[CurLoc])
            FL:WaitForBuff(lure_info.spell)
            return
        end
    end
end

local ItemsEvents = {}
ItemsEvents["VARIABLES_LOADED"] = function(started)
    FBI:SetupSpecialItems(CoinLures, false, true, true)
    PLANS:RegisterPlan(CoinPlan)
end

FBI:RegisterHandlers(ItemsEvents);
