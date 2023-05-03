-- Items
--
-- Handle using items with complex requirements.
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local FL = LibStub("LibFishing-1.0");

local GSB = function(...) return FBI:GetSettingBool(...); end;
local PLANS = FBI.FishingPlans

local CurLoc = GetLocale();

local TUSKARR_ID = 88535;
local TuskarrItem = {
    ["enUS"] = "Sharpened Tuskarr Spear",
    ["tooltip"] = FBConstants.CONFIG_TUSKAARSPEAR_INFO,
    spell = 128357,
    setting = "UseTuskarrSpear",
    ["default"] = false,
}

local TRAWLER_ID = 152556;
local TrawlerTotem = {
    ["enUS"] = "Trawler Totem",
    spell = 251211,
    setting = "UseTrawlerTotem",
    ["tooltip"] = FBConstants.CONFIG_TRAWLERTOTEM_INFO,
    ["toy"] = true,
    ["default"] = false,
}
TrawlerTotem["visible"] = function(option)
    return PLANS:HaveThing(TRAWLER_ID, TrawlerTotem);
end

local buffs = nil
local function WWJD()
    if not buffs then
        buffs = {}
        buffs[1] = 546; -- Shaman Water Walking
        buffs[2] = 3714; -- DK Path of Frost
        buffs[3] = 11319; -- Elixir of Water Walking
        buffs[4] = 175841; -- Draenic Water Walking Elixir
    end
    for _,buff in ipairs(buffs) do
        if FL:HasBuff(buff) then
            return true
        end
    end
end

local function TuskarrPlan()
    if (not GSB(TuskarrItem.setting) or IsMounted()) then
        return
    end

    -- We're not actually carrying a spear with us...
    if GetItemCount(TuskarrItem.id) == 0 then
        return
    end
    local main = FL:GetMainHandItem(true);
    if (main ~= TuskarrItem.id) then
        -- Only use this if we're not using the Legendary pole (Surface Tension)
        if (not TuskarrItem.tension) then
            TuskarrItem.tension = 201944;
        end
        if (FL:HasBuff(TuskarrItem.tension)) then
            local bergbuff, raftbuff, hasberg, hasraft = FBI:HasRaftBuff();
            if not (hasberg or hasraft or WWJD()) then
                return
            end
        end
    end

    if (FBI.StartedFishing and not FL:HasBuff(TuskarrItem.spell)) then
        local s,_,_ = GetItemCooldown(TuskarrItem.id);
        if (s == 0) then
            if not PLANS:HaveEntry(TuskarrItem.id) then
                PLANS:AddEntry(TuskarrItem.id, TuskarrItem[CurLoc])
                PLANS:AddEntry(TuskarrItem.id, TuskarrItem[CurLoc])
                PLANS:AddEntry(main)
            end
        end
    end
end

local function TrawlerPlan()
    if (not GSB(TrawlerTotem.setting) or IsMounted()) then
        return
    end

    if PLANS:CanUseFishingItem(TRAWLER_ID, TrawlerTotem) then
        if (FBI.StartedFishing) then
            local start, duration, enable = GetItemCooldown(TRAWLER_ID);
            local et = (start + duration) - GetTime();
            if (et <= 0) then
                local _, itemid =  C_ToyBox.GetToyInfo(TRAWLER_ID);
                PLANS:AddEntry(itemid, TrawlerTotem[CurLoc])
            end
        end
    end
end

local LagerItem =  {
    ["enUS"] = "Captain Rumsey's Lager",			     -- 10 for 3 mins
    spell = 45694,
}

-- We always want to drink, so let's skip LibFishing's "lure when we need it"
-- and leave that for FishingAce!
local function LagerPlan()
    if GSB("FishingFluff") and GSB("DrinkHeavily") then
        if (GetItemCount(LagerItem.id) > 0 and not FL:HasBuff(LagerItem.spell)) then
            PLANS:AddEntry(LagerItem.id, LagerItem[CurLoc])
            FL:WaitForBuff(LagerItem.spell)
        end
    end
end

local ItemsEvents = {}
ItemsEvents["VARIABLES_LOADED"] = function(started)
    FBI:SetupSpecialItems({ [TUSKARR_ID] = TuskarrItem }, false, true, true)
    FBI:SetupSpecialItems({ [TRAWLER_ID] = TrawlerTotem }, false, true, true)
    FBI:UpdateFluffOption(TUSKARR_ID, TuskarrItem)
    FBI:UpdateFluffOption(TRAWLER_ID, TrawlerTotem)
    PLANS:RegisterPlan(TuskarrPlan)
    PLANS:RegisterPlan(TrawlerPlan)

    FBI:SetupSpecialItems({ [34832] = LagerItem }, false, true, true)
    PLANS:RegisterPlan(LagerPlan)
end

FBI:RegisterHandlers(ItemsEvents);
