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

local RAFT_RESET_TIME = 30
local RAFT_ID = 85500;
local BERG_ID = 107950;
local BOARD_ID = 166461;

local RaftItems = FBI.RaftItems;

-- have to check this because C_ToyBox.IsToyUsable(RAFT_ID) also
-- checks for revered, which is only necesssar to buy the raft.
local function HasPandarianFishing()
    local skill, _, _, _ = FL:GetContinentSkill(FBConstants.PANDARIA);
    return skill > 0;
end

local function HaveRaft()
    return PlayerHasToy(RAFT_ID) and HasPandarianFishing();
end

local function HaveWaveboard()
    return PlayerHasToy(BOARD_ID);
end

local function HaveBerg()
    return GetItemCount(BERG_ID) > 0;
end

function FBI:HaveRafts()
    local haveRaft = HaveRaft();
    local haveBoard = HaveWaveboard();
    local haveBerg = HaveBerg();
    return (haveRaft or haveBerg or haveBoard), haveRaft, haveBoard, haveBerg
end

local function SetupRaftOptions()
    local haveAny = FBI:HaveRafts();
    local options = {};
    -- if we have both, be smarter about rafts
    options["UseRaft"] = {
        ["tooltip"] = FBConstants.CONFIG_USERAFTS_INFO,
        ["tooltipd"] = FBConstants.CONFIG_USERAFTS_INFOD,
        ["text"] = FBConstants.CONFIG_USERAFTS_ONOFF,
        ["enabled"] = function(...) return FBI:HaveRafts(); end;
        ["v"] = 1,
        ["default"] = true
    };

    options["BergMaintainOnly"] = {
        ["text"] = FBConstants.CONFIG_MAINTAINRAFTBERG_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_MAINTAINRAFT_INFO,
        ["default"] = true,
        ["v"] = 1,
        ["parents"] = { ["UseRaft"] = "d", }
    };
    options["OverWalking"] = {
        ["text"] = FBConstants.CONFIG_OVERWALKING_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_OVERWALKING_INFO,
        ["default"] = false,
        ["v"] = 1,
        ["parents"] = { ["UseRaft"] = "d", }
    };

    return options
end

-- Don't cast the angler's raft if we're doing Scavenger Hunt or on Inkgill Mere
local function RaftBergUsable()
    if (not GSB("UseRaft") or IsMounted()) then
        return false
    elseif FL:HasBuff(201944) then
        -- Surface Tension
        return GSB("OverWalking");
    else
        -- Raft quests
        return not (FL:HasBuff(116032) or FL:HasBuff(119700));
    end
end

local function RaftingPlan(queue)
    local haveAny, haveRaft, haveBoard, haveBerg = FBI:HaveRafts()
    if (haveAny and RaftBergUsable()) then
        local hasraftbuff = FBI:HasRaftBuff();

        local need = not hasraftbuff;

        -- if we need it, but we're maintaining only, skip it
        if (GSB("BergMaintainOnly") and need) then
            return;
        end

        local buff, itemid, name;
        buff = nil
        if (haveBerg) then
            itemid = BERG_ID;
        elseif (haveBoard and haveRaft) then
            if math.random(100) < 50 then
                itemid = BOARD_ID;
            else
                itemid = RAFT_ID;
            end
        elseif (haveBoard) then
            itemid = BOARD_ID;
        elseif (haveRaft) then
            itemid = RAFT_ID;
        end
        buff = RaftItems[itemid].spell;
        name = RaftItems[itemid][CurLoc];
        if RaftItems[itemid].toy then
            _, itemid = C_ToyBox.GetToyInfo(BOARD_ID)
        end
        if buff then
            local _, et = FL:HasAnyBuff(RaftItems)
            et = (et or 0) - GetTime();
            if (need or et <= RAFT_RESET_TIME) then
                PLANS:AddEntry(itemid, name)
            end
        end
    end
end

local RaftEvents = {}
RaftEvents[FBConstants.FIRST_UPDATE_EVT] = function()
    FBI:SetupSpecialItems(RaftItems, false, true, true)
    local options = SetupRaftOptions();
    FBI.raftoptions = options
    if options then
        FBI:AddFluffOptions(options);
        PLANS:RegisterPlan(RaftingPlan)
    end
end

FBI:RegisterHandlers(RaftEvents);

FBI.Commands["raft"] = {};
FBI.Commands["raft"].func =
    function()
        local skill, _, _, _ = FL:GetContinentSkill(FBConstants.PANDARIA);
        FishingBuddy_Info["RaftDebug"] = {
            ["RaftOption"] = GSB("UseRaft"),
            ["RaftQuests"] = {
                ["116032"] = FL:HasBuff(116032),
                ["119700"] = FL:HasBuff(119700),
            },
            ["SurfaceTension"] = GSB("OverWalking"),
            ["HaveRaft"] = PlayerHasToy(RAFT_ID),
            ["UseableRaft"] = C_ToyBox.IsToyUsable(RAFT_ID),
            ["RaftInfo"] = C_ToyBox.GetToyInfo(RAFT_ID),
            ["BergCount"] = GetItemCount(BERG_ID),
            ["Maintain"] = GSB("BergMaintainOnly"),
            ["UseBerg"] = GSB("UseBobbingBerg"),
            ["PandarenSkill"] = skill
        };
        return true;
    end
