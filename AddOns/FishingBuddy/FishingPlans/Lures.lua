-- Lures
--
-- With the Midnight Salmon lure, we now need to do
-- funky things
--
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local FL = LibStub("LibFishing-1.0");

local GSB = function(...) return FBI:GetSettingBool(...); end;
local PLANS = FBI.FishingPlans;

local CurLoc = GetLocale();

-- Let's wait at least five seconds before we attempt to lure again
local RELURE_DELAY = 8.0;

local LureStateManager = {
    ["LastLure"] = nil,
    ["AddingLure"] = nil,
}

function LureStateManager:LuringComplete()
    if self.AddingLure then
        if not UnitChannelInfo("player") then
            local _, lure = FL:GetPoleBonus();
            if not self.LastLure or (lure and lure == self.LastLure.b) then
                self.AddingLure = false;
                FL:UpdateLureInventory();
            end
        else
            return false;
        end
    end
    return true;
end

function LureStateManager:LuringCheck()
    -- Let's wait a bit so that the enchant can show up before we lure again
    if self.LastLure then
        if self.LastLure.time and (self.LastLure.time - GetTime()) > 0 then
            return true;
        end
        self.LastLure.time = nil;
    end
    return false;
end

function LureStateManager:SetLure(lure)
    if lure then
        self.LastLure = lure;
    end
end

function LureStateManager:GetLastLure()
    return self.AddingLure, self.LastLure;
end


function LureStateManager:SetLastLure(lure, adding)
    if lure then
        lure.time = GetTime() + RELURE_DELAY;
        self.LastLure = lure;
        self.AddingLure = adding;
    end
end

function LureStateManager:ClearLastLure(checktime)
    if self.LastLure then
        if not checktime or not self.LastLure.time then
            self.LastLure = nil;
            self.AddingLure = false;
        end
    end
end


FBI.LureStateManager = LureStateManager
local LSM = LureStateManager

local SALMON_LURE_ID = 165699;
local SalmonLure = {
    ["enUS"] = "Scarlet Herring Lure",		    -- Increase chances for Midnight Salmon
    ["tooltip"] = FBConstants.CONFIG_SALMONLURE_INFO,
    spell = 285895,
    setting = "UseSalmonLure",
    ["default"] = false,
}

local function PickLure()
    -- only apply a lure if we're actually fishing with a "real" pole
    if (FL:IsFishingPole()) then
        if PLANS:CanUseFishingItem(SALMON_LURE_ID, SalmonLure) then
            return true, SALMON_LURE_ID, SalmonLure[CurLoc]
        end

        local skill, _, _, _ = FL:GetCurrentSkill();
        if (skill > 0) then
            local NextLure;
            local pole, tempenchant = FL:GetPoleBonus();
            local continent = FL:GetCurrentMapContinent()
            local forcemax = (GSB("BigDraenor") and (continent == FBConstants.DRAENOR)) or GSB("AlwaysLure");
            local _, bestlure = FL:FindBestLure(tempenchant, 0, false, forcemax);
            -- If we could use a lure based on skill, or we lost a fish.
            if ( not FL:HasLureBuff() ) then
                if ( bestlure ) then
                    NextLure = bestlure;
                else
                    NextLure = nil;
                end
            elseif ( bestlure and tempenchant == 0 and GSB("LastResort") ) then
                NextLure = bestlure;
            else
                NextLure = nil;
            end
            if ( not NextLure and GSB("AlwaysHat") and not FL:HasHatBuff()) then
                local _, hat = FL:FindBestHat()
                if (hat) then
                    return true, hat['id'], hat['n']
                end
            end
            if ( NextLure and NextLure.id ) then
                -- if the pole has an enchantment, we can assume it's got a lure on it (so far, anyway)
                -- remove the main hand enchantment (since it's a fishing pole, we know what it is)
                local startTime, duration, enable = C_Container.GetItemCooldown(NextLure.id);
                if (startTime == 0) then
                    LSM:SetLastLure(NextLure)
                    return true, NextLure.id, NextLure.n;
                else
                    LSM:ClearAddingLure(true)
                end
            end
        end
    end
    -- return false, 0, nil
end

local function LurePlan(queue)
    if ( not GSB("EasyLures") ) then
        return
    end

    local doit, id, name = PickLure()
    if doit then
        PLANS:AddEntry(id, name)
    end
end

local LuringEvents = {}
LuringEvents["VARIABLES_LOADED"] = function(started)
    FBI:SetupSpecialItems({ [SALMON_LURE_ID] = SalmonLure }, false, true, true)
    FBI:UpdateFluffOption(SALMON_LURE_ID, SalmonLure)
    PLANS:RegisterPlan(LurePlan)
end

LuringEvents["UNIT_SPELLCAST_CHANNEL_START"] = function(unit, lineid, spellid)
    if LureStateManager.LastLure then
        LureStateManager.AddingLure = true;
    end
end

FBI:RegisterHandlers(LuringEvents);
