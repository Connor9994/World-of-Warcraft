--[[
Name: LibFishing-1.0
Maintainers: Sutorix <sutorix@hotmail.com>
Description: A library with fishing support routines used by Fishing Buddy, Fishing Ace and FB_Broker.
Copyright (c) by Bob Schumaker
Licensed under a Creative Commons "Attribution Non-Commercial Share Alike" License
--]]

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local MAJOR_VERSION = "LibFishing-1.0"
local MINOR_VERSION = 101106

if not LibStub then error(MAJOR_VERSION .. " requires LibStub") end

local FishLib, lastVersion = LibStub:NewLibrary(MAJOR_VERSION, MINOR_VERSION)
if not FishLib then
    return
end

local WOW = {};
if ( GetBuildInfo ) then
    local v, b, d, i = GetBuildInfo();
    WOW.build = b;
    WOW.date = d;
    local s,e,maj,min,dot = string.find(v, "(%d+).(%d+).(%d+)");
    WOW.major = tonumber(maj);
    WOW.minor = tonumber(min);
    WOW.dot = tonumber(dot);
    WOW.interface = tonumber(i)
else
    WOW.major = 1;
    WOW.minor = 9;
    WOW.dot = 0;
    WOW.interface = 10900
end

local function IsRetail()
    return (_G.WOW_PROJECT_ID == _G.WOW_PROJECT_MAINLINE)
end

local function IsClassic()
    return not IsRetail()
end

local function IsVanilla()
    return (_G.WOW_PROJECT_ID == _G.WOW_PROJECT_CLASSIC)
end

local function IsCrusade()
    return IsClassic() and WOW.interface >= 20500 and WOW.interface < 30000
end

local function IsWrath()
    return not IsRetail() and WOW.interface >= 30400 and WOW.interface < 40000
end


function FishLib:WOWVersion()
    return WOW.major, WOW.minor, WOW.dot, IsClassic();
end

function FishLib:IsRetail()
    return IsRetail()
end

function FishLib:IsClassic()
    return IsClassic()
end

function FishLib:IsVanilla()
    return IsVanilla()
end

function FishLib:IsCrusade()
    return IsCrusade()
end

local BlizzardTradeSkillUI
local BlizzardTradeSkillFrame
if IsRetail() then
	BlizzardTradeSkillUI = "Blizzard_Professions";
	BlizzardTradeSkillFrame = "ProfessionsFrame";
else
	BlizzardTradeSkillUI = "Blizzard_TradeSkillUI";
	BlizzardTradeSkillFrame = "TradeSkillFrame";
end

-- Some code suggested by the author of LibBabble-SubZone so I don't have
-- to add the overrides myself...
local function FishLib_GetLocaleLibBabble(typ)
    local rettab = {}
    local tab = LibStub(typ):GetBaseLookupTable()
    local loctab = LibStub(typ):GetUnstrictLookupTable()
    for k,v in pairs(loctab) do
        rettab[k] = v;
    end
    for k,v in pairs(tab) do
        if not rettab[k] then
            rettab[k] = v;
        end
    end
    return rettab;
end

local CBH = LibStub("CallbackHandler-1.0")
local BSZ = FishLib_GetLocaleLibBabble("LibBabble-SubZone-3.0");
local BSL = LibStub("LibBabble-SubZone-3.0"):GetBaseLookupTable();
local BSZR = LibStub("LibBabble-SubZone-3.0"):GetReverseLookupTable();
local HBD = LibStub("HereBeDragons-2.0");

local LT
if IsVanilla() then
    LT = LibStub("LibTouristClassicEra");
elseif IsClassic() then
    LT = LibStub("LibTouristClassic-1.0");
else
    LT = LibStub("LibTourist-3.0");
end

FishLib.HBD = HBD

if not lastVersion then
    FishLib.caughtSoFar = 0;
    FishLib.gearcheck = true
    FishLib.hasgear = false;
    FishLib.PLAYER_SKILL_READY = "PlayerSkillReady"
    FishLib.havedata = IsClassic();
end

FishLib.registered = FishLib.registered or CBH:New(FishLib, nil, nil, false)

-- Secure action button
local SABUTTONNAME = "LibFishingSAButton";
FishLib.UNKNOWN = "UNKNOWN";

-- GetItemInfo indexes
FishLib.ITEM_NAME = 1
FishLib.ITEM_LINK = 2
FishLib.ITEM_QUALITY = 3
FishLib.ITEM_LEVEL = 4
FishLib.ITEM_MINLEVEL = 5
FishLib.ITEM_TYPE = 6
FishLib.ITEM_SUBTYPE = 7
FishLib.ITEM_STACK = 8
FishLib.ITEM_EQUIPLOC = 9
FishLib.ITEM_ICON = 10

function FishLib:GetFishingProfession()
    local fishing;
    if self:IsClassic() then
        fishing, _ = self:GetFishingSpellInfo();
    else
        _, _, _, fishing, _, _ = GetProfessions();
    end
    return fishing
end

-- support finding the fishing skill in classic
local function FindSpellID(thisone)
    local id = 1;
    local spellTexture = GetSpellTexture(id);
    while (spellTexture) do
        if (spellTexture and spellTexture == thisone) then
            return id;
        end
        id = id + 1;
        spellTexture = GetSpellTexture(id);
    end
    return nil;
end

function FishLib:GetFishingSpellInfo()
    if self:IsClassic() then
        local spell = FindSpellID("Interface\\Icons\\Trade_Fishing");
        if spell then
            local name, _, _ = GetSpellInfo(spell);
            return spell, name;
        end
        return 9, PROFESSIONS_FISHING;
    end

    local fishing = self:GetFishingProfession();
    if not fishing then
        return 9, PROFESSIONS_FISHING
    end
    local name, _, _, _, count, offset, _ = GetProfessionInfo(fishing);
    local id = nil;
    for i = 1, count do
        local _, spellId = GetSpellLink(offset + i, "spell");
        local spellName = GetSpellInfo(spellId);
        if (spellName == name) then
            id = spellId;
            break;
        end
    end
    return id, name
end

FishLib.continent_fishing = {
    { ["max"] = 300, ["skillid"] = 356, ["cat"] = 1100, ["rank"] = 0 },	-- Default -- 2592?
    { ["max"] = 300, ["skillid"] = 356, ["cat"] = 1100, ["rank"] = 0 },
    { ["max"] = 75, ["skillid"] = 2591, ["cat"] = 1102, ["rank"] = 0 },	-- Outland Fishing
    { ["max"] = 75, ["skillid"] = 2590, ["cat"] = 1104, ["rank"] = 0 },	-- Northrend Fishing
    { ["max"] = 75, ["skillid"] = 2589, ["cat"] = 1106, ["rank"] = 0 },	-- Cataclysm Fishing (Darkmoon Island?)
    { ["max"] = 75, ["skillid"] = 2588, ["cat"] = 1108, ["rank"] = 0 },	-- Pandaria Fishing
    { ["max"] = 100, ["skillid"] = 2587, ["cat"] = 1110, ["rank"] = 0 },	-- Draenor Fishing
    { ["max"] = 100, ["skillid"] = 2586, ["cat"] = 1112, ["rank"] = 0 },	-- Legion Fishing
    { ["max"] = 175, ["skillid"] = 2585, ["cat"] = 1114, ["rank"] = 0 },	-- Kul Tiras Fishing
    { ["max"] = 175, ["skillid"] = 2585, ["cat"] = 1114, ["rank"] = 0 },	-- Zandalar Fishing
    { ["max"] = 200, ["skillid"] = 2754, ["cat"] = 1391, ["rank"] = 0 },	-- Shadowlands Fishing
	{ ["max"] = 100, ["skillid"] = 2826, ["cat"] = 1805, ["rank"] = 0 },	-- Dragonflight Fishing
}
local DEFAULT_SKILL = FishLib.continent_fishing[1];

if IsCrusade() then
    FishLib.continent_fishing[2].max = 375
end

local FISHING_LEVELS = {
    300,        -- Classic
    375,        -- Outland
    75,         -- Northrend
    75,         -- Cataclsym
    75,         -- Pandaria
    100,        -- Draenor
    100,        -- Legion
    175,        -- BfA
    200,        -- Shadowlands
	100,        -- Dragonflight
}

local CHECKINTERVAL = 0.5
local itsready = C_TradeSkillUI.IsTradeSkillReady
local OpenTradeSkill = C_TradeSkillUI.OpenTradeSkill
local GetTradeSkillLine = C_TradeSkillUI.GetTradeSkillLine
local GetCategoryInfo = C_TradeSkillUI.GetCategoryInfo
local CloseTradeSkill = C_TradeSkillUI.CloseTradeSkill

function FishLib:UpdateFishingSkillData()
	local categories = {C_TradeSkillUI.GetCategories()}
	for _, categoryID in pairs(categories) do
        for _, info in pairs(self.continent_fishing) do
            if (categoryID == info.cat) then
                local data = C_TradeSkillUI.GetCategoryInfo(info.cat);
			    --info.max = data.skillLineMaxLevel
                info.rank = data.skillLineCurrentLevel
                self.havedata = true
            end
        end
    end
end

local function SkillUpdate(self, elapsed)
    if itsready() then
        self.lastUpdate = self.lastUpdate + elapsed;
        if self.lastUpdate > CHECKINTERVAL then
            self.lib:UpdateFishingSkillData()
            self.lib.registered:Fire(FishLib.PLAYER_SKILL_READY)
            self:Hide()
            self.lastUpdate = 0
        end
    end
end

function FishLib:QueueUpdateFishingSkillData()
    if not self.havedata then
        local btn = _G[SABUTTONNAME];
        if btn then
            btn.skillupdate:Show()
        end
    end
end

-- Open up the tradeskill window and get the current data
local function SkillInitialize(self, elapsed)
    self.lastUpdate = self.lastUpdate + elapsed;
    if self.lastUpdate > CHECKINTERVAL/2 then
        if self.state == 0 then
            if TradeSkillFrame then
                self.state = self.state + 1
                self.tsfpanel = UIPanelWindows[BlizzardTradeSkillFrame]
                UIPanelWindows[BlizzardTradeSkillFrame] = nil
                self.tsfpos = {}
                for idx=1,TradeSkillFrame:GetNumPoints() do
                    tinsert(self.tsfpos, {TradeSkillFrame:GetPoint(idx)})
                end
                TradeSkillFrame:ClearAllPoints();
                TradeSkillFrame:SetPoint("LEFT", UIParent, "RIGHT", 0, 0);
            end
        elseif self.state == 1 then
            OpenTradeSkill(DEFAULT_SKILL.skillid)
            self.selfopened = true
            self.state = self.state + 1
        elseif self.state == 2 then
            if itsready() then
                self.lib:UpdateFishingSkillData()
                self.state = self.state + 1
            end
        else
            CloseTradeSkill()
            if self.tsfpos then
                TradeSkillFrame:ClearAllPoints();
                for _,point in ipairs(self.tsfpos) do
                    TradeSkillFrame:SetPoint(unpack(point));
                end
            end
            if self.tsfpanel then
                UIPanelWindows[BlizzardTradeSkillFrame] = self.tsfpanel
            end
            self.tsfpanel = nil
            self.tsfpos = nil
            self:Hide()
            self:SetScript("OnUpdate", SkillUpdate);
            self.lib.registered:Fire(FishLib.PLAYER_SKILL_READY)
        end
        self.lastUpdate = 0
    end
end

-- Go ahead and forcibly get the trade skill data
function FishLib:GetTradeSkillData()
    if self:IsClassic() then
        return
    end
    local btn = _G[SABUTTONNAME];
    if btn then
        if (not IsAddOnLoaded(BlizzardTradeSkillUI)) then
            LoadAddOn(BlizzardTradeSkillUI);
        end
        btn.skillupdate:SetScript("OnUpdate", SkillInitialize);
        btn.skillupdate:Show()
    end
end


function FishLib:UpdateFishingSkill()
    local fishing = self:GetFishingProfession();
    if (fishing) then
        local continent, _ = self:GetCurrentMapContinent();
        local info = FishLib.continent_fishing[continent];
        if (info) then
            local _, _, skill, _, _, _, _, _ = GetProfessionInfo(fishing);
            skill = skill or 0
            if (info.rank < skill) then
                info.rank = skill
            end
            if skill then
                self.registered:Fire(FishLib.PLAYER_SKILL_READY)
            end
        end
    end
end

-- get the fishing skill for the specified continent
function FishLib:GetContinentSkill(continent)
    local fishing = self:GetFishingProfession();
    if (fishing) then
        local info = FishLib.continent_fishing[continent];
        if (info) then
            local name, _, _, skillmax, _, _, _, mods = GetProfessionInfo(fishing);
            local _, lure = self:GetPoleBonus();
            return info.rank or 0, mods or 0, info.max or 0, lure or 0;
        end
    end
    return 0, 0, 0, 0;
end

-- get our current fishing skill level
function FishLib:GetCurrentSkill()
    local continent, _ = self:GetCurrentMapContinent();
    return self:GetContinentSkill(continent)
end

-- Lure library
local DRAENOR_HATS = {
    ["118393"] =  {
        ["enUS"] = "Tentacled Hat",
        ["b"] = 5,
        ["spell"] = 174479,
    },
    ["118380"] = {
        ["n"] = "HightFish Cap",
        ["b"] = 5,
        ["spell"] = 118380,
    },
}

local NATS_HATS = {
    {	["id"] = 88710,
        ["enUS"] = "Nat's Hat",						-- 150 for 10 mins
        spell = 128587,
        ["b"] = 10,
        ["s"] = 100,
        ["d"] = 10,
        ["w"] = true,
    },
    {	["id"] = 117405,
        ["enUS"] = "Nat's Drinking Hat",			-- 150 for 10 mins
        spell = 128587,
        ["b"] = 10,
        ["s"] = 100,
        ["d"] = 10,
        ["w"] = true,
    },
    {	["id"] = 33820,
        ["enUS"] = "Weather-Beaten Fishing Hat",	-- 75 for 10 minutes
        spell = 43699,
        ["b"] = 7,
        ["s"] = 1,
        ["d"] = 10,
        ["w"] = true,
    },
}

local FISHINGLURES = {
    {	["id"] = 116826,
        ["enUS"] = "Draenic Fishing Pole",			-- 200 for 10 minutes
        spell = 175369,
        ["b"] = 10,
        ["s"] = 1,
        ["d"] = 20,									 -- 20 minute cooldown
        ["w"] = true,
    },
    {	["id"] = 116825,
        ["enUS"] = "Savage Fishing Pole",			-- 200 for 10 minutes
        spell = 175369,
        ["b"] = 10,
        ["s"] = 1,
        ["d"] = 20,									 -- 20 minute cooldown
        ["w"] = true,
    },

    {	["id"] = 34832,
        ["enUS"] = "Captain Rumsey's Lager",		 -- 10 for 3 mins
        spell = 45694,
        ["b"] = 5,
        ["s"] = 1,
        ["d"] = 3,
        ["u"] = 1,
    },
    {	["id"] = 67404,
        ["enUS"] = "Glass Fishing Bobber",
        spell = 98849,
        ["b"] = 2,
        ["s"] = 1,
        ["d"] = 10,
    },
    {	["id"] = 6529,
        ["enUS"] = "Shiny Bauble",					-- 25 for 10 mins
        spell = 8087,
        ["b"] = 3,
        ["s"] = 1,
        ["d"] = 10,
    },
    {	["id"] = 6811,
        ["enUS"] = "Aquadynamic Fish Lens",			-- 50 for 10 mins
        spell = 8532,
        ["b"] = 5,
        ["s"] = 50,
        ["d"] = 10,
    },
    {	["id"] = 6530,
        ["enUS"] = "Nightcrawlers",					-- 50 for 10 mins
        spell = 8088,
        ["b"] = 5,
        ["s"] = 50,
        ["d"] = 10,
    },
    {	["id"] = 7307,
        ["enUS"] = "Flesh Eating Worm",				-- 75 for 10 mins
        spell = 9092,
        ["b"] = 7,
        ["s"] = 100,
        ["d"] = 10,
    },
    {	["id"] = 6532,
        ["enUS"] = "Bright Baubles",				-- 75 for 10 mins
        spell = 8090,
        ["b"] = 7,
        ["s"] = 100,
        ["d"] = 10,
    },
    {	["id"] = 34861,
        ["enUS"] = "Sharpened Fish Hook",			-- 100 for 10 minutes
        spell = 45731,
        ["b"] = 9,
        ["s"] = 100,
        ["d"] = 10,
    },
    {	["id"] = 6533,
        ["enUS"] = "Aquadynamic Fish Attractor",	-- 100 for 10 minutes
        spell = 8089,
        ["b"] = 9,
        ["s"] = 100,
        ["d"] = 10,
    },
    {	["id"] = 62673,
        ["enUS"] = "Feathered Lure",				-- 100 for 10 minutes
        spell = 87646,
        ["b"] = 9,
        ["s"] = 100,
        ["d"] = 10,
    },
    {	["id"] = 46006,
        ["enUS"] = "Glow Worm",						-- 100 for 60 minutes
        spell = 64401,
        ["b"] = 9,
        ["s"] = 100,
        ["d"] = 60,
        ["l"] = 1,
    },
    {	["id"] = 68049,
        ["enUS"] = "Heat-Treated Spinning Lure",	-- 150 for 5 minutes
        spell = 95244,
        ["b"] = 10,
        ["s"] = 250,
        ["d"] = 5,
    },
    {	["id"] = 118391,
        ["enUS"] = "Worm Supreme",					-- 200 for 10 mins
        spell = 174471,
        ["b"] = 10,
        ["s"] = 100,
        ["d"] = 10,
    },
    {	["id"] = 124674,
        ["enUS"] = "Day-Old Darkmoon Doughnut",		-- 200 for 10 mins
        spell = 174471,
        ["b"] = 10,
        ["s"] = 1,
        ["d"] = 10,
    },
}

local SalmonLure = {
    {	["id"] = 165699,
        ["enUS"] = "Scarlet Herring Lure",		    -- Increase chances for Midnight Salmon
        spell = 285895,
        ["b"] = 0,
        ["s"] = 1,
        ["d"] = 15,
    },
}

local FISHINGHATS = {}
for _,info in ipairs(NATS_HATS) do
    tinsert(FISHINGLURES, info)
    tinsert(FISHINGHATS, info)
end

for id,info in ipairs(DRAENOR_HATS) do
    info["id"] = id
    info["n"] = info["enUS"]
    tinsert(FISHINGHATS, info)
end

for _,info in ipairs(FISHINGLURES) do
    info["n"] = info["enUS"]
end

-- sort ascending bonus and ascending time
-- we may have to treat "Heat-Treated Spinning Lure" differently someday
table.sort(FISHINGLURES,
    function(a,b)
        if ( a.b == b.b ) then
            return a.d < b.d;
        else
            return a.b < b.b;
        end
    end);

table.sort(FISHINGHATS,
function(a,b)
    return a.b > b.b;
end);



function FishLib:GetLureTable()
    return FISHINGLURES;
end

function FishLib:GetHatTable()
    return NATS_HATS;
end

function FishLib:GetDraenorHatTable()
    return DRAENOR_HATS;
end

function FishLib:IsWorn(itemid)
    itemid = tonumber(itemid)
    for slot=1,19 do
        local id = GetInventoryItemID("player", slot);
        if ( itemid == id ) then
            return true;
        end
    end
    -- return nil
end

function FishLib:IsItemOneHanded(item)
    if ( item ) then
        local bodyslot= self:GetItemInfoFields(item, self.ITEM_EQUIPLOC);
        if ( bodyslot == "INVTYPE_2HWEAPON" or bodyslot == INVTYPE_2HWEAPON ) then
            return false;
        end
    end
    return true;
end

local useinventory = {};
local lureinventory = {};
function FishLib:UpdateLureInventory()
    local rawskill, _, _, _ = self:GetCurrentSkill();

    useinventory = {};
    lureinventory = {};
    local b = 0;
    for _,lure in ipairs(FISHINGLURES) do
        local id = lure.id;
        local count = GetItemCount(id);
        -- does this lure have to be "worn"
        if ( count > 0 ) then
            local startTime, _, _ = C_Container.GetItemCooldown(id);
            if (startTime == 0) then
                if (lure.w and self:IsWorn(id)) then
                    tinsert(lureinventory, lure);
                else
                    if ( lure.b > b) then
                        b = lure.b;
                        if ( lure.u ) then
                            tinsert(useinventory, lure);
                        elseif ( lure.s <= rawskill ) then
                            tinsert(lureinventory, lure);
                        end
                    end
                end
            end
        end
    end
    return lureinventory, useinventory;
 end

function FishLib:GetLureInventory()
    return lureinventory, useinventory;
end

-- Handle buffs
local BuffWatch = {}
function FishLib:WaitForBuff(buffId)
    local btn = _G[SABUTTONNAME];
    if ( btn ) then
        BuffWatch[buffId] = GetTime() + 0.6
        btn.buffupdate:Show()
    end
end

local spellidx = nil;
function FishLib:GetBuff(buffId)
    if ( buffId ) then
        for idx=1,40 do
            local current_buff = UnitBuff("player", idx);
            if current_buff then
                local info = {UnitBuff("player", idx)}
                local spellid = select(10, unpack(info));
                if (buffId == spellid) then
                    return idx, info
                end
            else
                return nil, nil
            end
        end
    end
    return nil, nil
end

function FishLib:HasBuff(buffId, skipWait)
    if ( buffId ) then
        -- if we're waiting, assume we're going to have it
        if ( not skipWait and BuffWatch[buffId] ) then
            return true, GetTime() + 10
        else
            local idx, info = self:GetBuff(buffId);
            if idx then
                local et = select(6, unpack(info));
                return true, et;
            end
        end
    end
    return nil, nil
end

function FishLib:CancelBuff(buffId)
    if buffId then
        if BuffWatch[buffId] then
            BuffWatch[buffId] = nil
        end
        local idx, info = self:GetBuff(buffId);
        if idx then
            CancelUnitBuff("player", idx)
        end
    end
end

function FishLib:HasAnyBuff(buffs)
    for _, buff in pairs(buffs) do
        local has, et = self:HasBuff(buff.spell)
        if has then
            return has, et
        end
    end
    -- return nil
end

function FishLib:FishingForAttention()
    return self:HasBuff(394009)
end

function FishLib:HasLureBuff()
    for _,lure in ipairs(FISHINGLURES) do
        if self:HasBuff(lure.spell) then
            return true
        end
    end
    -- return nil
end

function FishLib:HasHatBuff()
    for _,hat in ipairs(FISHINGHATS) do
        if self:HasBuff(hat.spell) then
            return true
        end
    end
    -- return nil
end

-- Deal with lures
function FishLib:UseThisLure(lure, b, enchant, skill, level)
    if ( lure ) then
        local startTime, _, _ = C_Container.GetItemCooldown(lure.id);
        -- already check for skill being nil, so that will skip the whole check with level
        -- skill = skill or 0;
        level = level or 0;
        local bonus = lure.b or 0;
        if ( startTime == 0 and (skill and level <= (skill + bonus)) and (bonus > enchant) ) then
            if ( not b or bonus > b ) then
                return true, bonus;
            end
        end
        return false, bonus;
    end
    return false, 0;
end

function FishLib:FindNextLure(b, state)
    local n = table.getn(lureinventory);
    for s=state+1,n,1 do
        if ( lureinventory[s] ) then
            local id = lureinventory[s].id;
            local startTime, _, _ = C_Container.GetItemCooldown(id);
            if ( startTime == 0 ) then
                if ( not b or lureinventory[s].b > b ) then
                    return s, lureinventory[s];
                end
            end
        end
    end
    -- return nil;
end

FishLib.LastUsed = nil;

function FishLib:FindBestLure(b, state, usedrinks, forcemax)
    local level = self:GetCurrentFishingLevel();
    if ( level and level > 1 ) then
        if (forcemax) then
            level = 9999;
        end
        local rank, modifier, skillmax, enchant = self:GetCurrentSkill();
        local skill = rank + modifier;
        -- don't need this now, LT has the full values
        -- level = level + 95;		-- for no lost fish
        if ( skill <= level ) then
            self:UpdateLureInventory();
            -- if drinking will work, then we're done
            if ( usedrinks and #useinventory > 0 ) then
                if ( not self.LastUsed or not self:HasBuff(self.LastUsed.n) ) then
                    local id = useinventory[1].id;
                    if ( not self:HasBuff(useinventory[1].n) ) then
                        if ( level <= (skill + useinventory[1].b) ) then
                            self.LastUsed = useinventory[1];
                            return nil, useinventory[1];
                        end
                    end
                end
            end
            skill = skill - enchant;
            state = state or 0;
            local checklure;
            local useit;
            b = 0;

            -- Look for lures we're wearing, first
            for s=state+1,#lureinventory,1 do
                checklure = lureinventory[s];
                if (checklure.w) then
                    useit, b = self:UseThisLure(checklure, b, enchant, skill, level);
                    if ( useit and b and b > 0 ) then
                        return s, checklure;
                    end
                end
            end

            b = 0;
            for s=state+1,#lureinventory,1 do
                checklure = lureinventory[s];
                useit, b = self:UseThisLure(checklure, b, enchant, skill, level);
                if ( useit and b and b > 0 ) then
                    return s, checklure;
                end
            end

            -- if we ran off the end of the table and we had a valid lure, let's use that one
            if ( (not enchant or enchant == 0) and b and (b > 0) and checklure ) then
                return #lureinventory, checklure;
            end
        end
    end
    -- return nil;
end

function FishLib:FindBestHat()
    for _,hat in ipairs(FISHINGHATS) do
        local id = hat["id"]
        if GetItemCount(id) > 0 and self:IsWorn(id) then
            local startTime, _, _ = C_Container.GetItemCooldown(id);
            if ( startTime == 0 ) then
                return 1, hat;
            end
        end
    end
end

-- Handle events we care about
local canCreateFrame = false;

local FISHLIBFRAMENAME="FishLibFrame";
local fishlibframe = _G[FISHLIBFRAMENAME];
if ( not fishlibframe) then
    fishlibframe = CreateFrame("Frame", FISHLIBFRAMENAME);
    fishlibframe:RegisterEvent("PLAYER_ENTERING_WORLD");
    fishlibframe:RegisterEvent("PLAYER_LEAVING_WORLD");
    fishlibframe:RegisterEvent("UPDATE_CHAT_WINDOWS");
    fishlibframe:RegisterEvent("LOOT_OPENED");
    fishlibframe:RegisterEvent("CHAT_MSG_SKILL");
    fishlibframe:RegisterEvent("SKILL_LINES_CHANGED");
    fishlibframe:RegisterEvent("UNIT_INVENTORY_CHANGED");
    fishlibframe:RegisterEvent("UNIT_SPELLCAST_CHANNEL_START");
    fishlibframe:RegisterEvent("UNIT_SPELLCAST_CHANNEL_STOP");
    fishlibframe:RegisterEvent("ITEM_LOCK_CHANGED");
	fishlibframe:RegisterEvent("ACTIONBAR_SLOT_CHANGED");
	fishlibframe:RegisterEvent("PLAYER_REGEN_ENABLED");
	fishlibframe:RegisterEvent("PLAYER_REGEN_DISABLED");
    fishlibframe:RegisterEvent("TRADE_SKILL_DATA_SOURCE_CHANGED")
    fishlibframe:RegisterEvent("TRADE_SKILL_LIST_UPDATE")
    fishlibframe:RegisterEvent("EQUIPMENT_SWAP_FINISHED");
end

fishlibframe.fl = FishLib;

fishlibframe:SetScript("OnEvent", function(self, event, ...)
    local arg1 = select(1, ...);
    if ( event == "UPDATE_CHAT_WINDOWS" ) then
        canCreateFrame = true;
        self:UnregisterEvent(event);
    elseif ( event == "UNIT_INVENTORY_CHANGED" and arg1 == "player" ) then
        self.fl:UpdateLureInventory();
        -- we can't actually rely on EQUIPMENT_SWAP_FINISHED, it appears
        self.fl:ForceGearCheck();
    elseif (event == "ITEM_LOCK_CHANGED" or event == "EQUIPMENT_SWAP_FINISHED" ) then
        -- Did something we're wearing change?
        self.fl:ForceGearCheck();
    elseif (event == "SKILL_LINES_CHANGED") then
        self.fl:UpdateFishingSkill()
    elseif ( event == "CHAT_MSG_SKILL" ) then
        self.fl.caughtSoFar = 0;
    elseif ( event == "LOOT_OPENED" ) then
        if (IsFishingLoot()) then
            self.fl.caughtSoFar = self.fl.caughtSoFar + 1;
        end
    elseif ( event == "UNIT_SPELLCAST_CHANNEL_START" or event == "UNIT_SPELLCAST_CHANNEL_STOP" ) then
        if (arg1 == "player" ) then
            self.fl:UpdateLureInventory();
        end
    elseif ( event == "PLAYER_ENTERING_WORLD" ) then
        self:RegisterEvent("ITEM_LOCK_CHANGED")
        self:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
        self:RegisterEvent("SPELLS_CHANGED")
    elseif ( event == "PLAYER_LEAVING_WORLD" ) then
        self:UnregisterEvent("ITEM_LOCK_CHANGED")
        self:UnregisterEvent("PLAYER_EQUIPMENT_CHANGED")
        self:UnregisterEvent("SPELLS_CHANGED")
    elseif (event == "TRADE_SKILL_DATA_SOURCE_CHANGED" or event == "TRADE_SKILL_LIST_UPDATE") then
        self.fl:QueueUpdateFishingSkillData();
    elseif (event == "ACTIONBAR_SLOT_CHANGED") then
        self.fl:GetFishingActionBarID(true)
    elseif (event == "PLAYER_REGEN_DISABLED") then
        self.fl:SetCombat(true)
    elseif (event == "PLAYER_REGEN_ENABLED") then
        self.fl:SetCombat(false)
    end
end);
fishlibframe:Show();

-- set up a table of slot mappings for looking up item information
local FISHING_TOOL_SLOT = "FishingToolSlot"
local INVSLOT_FISHING_TOOL = 28;

local slotinfo = {
    [1] = { name = "HeadSlot", tooltip = HEADSLOT, id = INVSLOT_HEAD, transmog = true },
    [2] = { name = "NeckSlot", tooltip = NECKSLOT, id = INVSLOT_NECK, transmog = false },
    [3] = { name = "ShoulderSlot", tooltip = SHOULDERSLOT, id = INVSLOT_SHOULDER, transmog = true },
    [4] = { name = "BackSlot", tooltip = BACKSLOT, id = INVSLOT_BACK, transmog = true },
    [5] = { name = "ChestSlot", tooltip = CHESTSLOT, id = INVSLOT_CHEST, transmog = true },
    [6] = { name = "ShirtSlot", tooltip = SHIRTSLOT, id = INVSLOT_BODY, transmog = true },
    [7] = { name = "TabardSlot", tooltip = TABARDSLOT, id = INVSLOT_TABARD, transmog = true },
    [8] = { name = "WristSlot", tooltip = WRISTSLOT, id = INVSLOT_WRIST, transmog = true },
    [9] = { name = "HandsSlot", tooltip = HANDSSLOT, id = INVSLOT_HAND, transmog = true },
    [10] = { name = "WaistSlot", tooltip = WAISTSLOT, id = INVSLOT_WAIST, transmog = true },
    [11] = { name = "LegsSlot", tooltip = LEGSSLOT, id = INVSLOT_LEGS, transmog = true },
    [12] = { name = "FeetSlot", tooltip = FEETSLOT, id = INVSLOT_FEET, transmog = true },
    [13] = { name = "Finger0Slot", tooltip = FINGER0SLOT, id = INVSLOT_FINGER1, transmog = false },
    [14] = { name = "Finger1Slot", tooltip = FINGER1SLOT, id = INVSLOT_FINGER2, transmog = false },
    [15] = { name = "Trinket0Slot", tooltip = TRINKET0SLOT, id = INVSLOT_TRINKET1, transmog = false },
    [16] = { name = "Trinket1Slot", tooltip = TRINKET1SLOT, id = INVSLOT_TRINKET2, transmog = false },
    [17] = { name = FISHING_TOOL_SLOT, tooltip = FISHINGTOOLSLOT, id = INVSLOT_FISHING_TOOL, transmog = false },
    [18] = { name = "SecondaryHandSlot", tooltip = SECONDARYHANDSLOT, id = INVSLOT_OFFHAND, transmog = true },
}

-- A map of item types to locations
local slotmap = {
    ["INVTYPE_AMMO"] = { INVSLOT_AMMO },
    ["INVTYPE_HEAD"] = { INVSLOT_HEAD },
    ["INVTYPE_NECK"] = { INVSLOT_NECK },
    ["INVTYPE_SHOULDER"] = { INVSLOT_SHOULDER },
    ["INVTYPE_BODY"] = { INVSLOT_BODY },
    ["INVTYPE_CHEST"] = { INVSLOT_CHEST },
    ["INVTYPE_ROBE"] = { INVSLOT_CHEST },
    ["INVTYPE_CLOAK"] = { INVSLOT_CHEST },
    ["INVTYPE_WAIST"] = { INVSLOT_WAIST },
    ["INVTYPE_LEGS"] = { INVSLOT_LEGS },
    ["INVTYPE_FEET"] = { INVSLOT_FEET },
    ["INVTYPE_WRIST"] = { INVSLOT_WRIST },
    ["INVTYPE_HAND"] = { INVSLOT_HAND },
    ["INVTYPE_FINGER"] = { INVSLOT_FINGER1,INVSLOT_FINGER2 },
    ["INVTYPE_TRINKET"] = { INVSLOT_TRINKET1,INVSLOT_TRINKET2 },
    ["INVTYPE_WEAPON"] = { INVSLOT_MAINHAND,INVSLOT_OFFHAND },
    ["INVTYPE_SHIELD"] = { INVSLOT_OFFHAND },
    ["INVTYPE_2HWEAPON"] = { INVSLOT_MAINHAND },
    ["INVTYPE_WEAPONMAINHAND"] = { INVSLOT_MAINHAND },
    ["INVTYPE_WEAPONOFFHAND"] = { INVSLOT_OFFHAND },
    ["INVTYPE_HOLDABLE"] = { INVSLOT_OFFHAND },
    ["INVTYPE_RANGED"] = { INVSLOT_RANGED },
    ["INVTYPE_THROWN"] = { INVSLOT_RANGED },
    ["INVTYPE_RANGEDRIGHT"] = { INVSLOT_RANGED },
    ["INVTYPE_RELIC"] = { INVSLOT_RANGED },
    ["INVTYPE_TABARD"] = { INVSLOT_TABARD },
    ["INVTYPE_BAG"] = { 20,21,22,23 },
    ["INVTYPE_QUIVER"] = { 20,21,22,23 },
    ["INVTYPE_FISHINGTOOL"] = { INVSLOT_FISHING_TOOL },
    [""] = { },
};

-- Fishing level by 8.0 map id
FishLib.FishingLevels = {
    [1] = 25,
    [241] = 650,
    [122] = 450,
    [123] = 525,
    [32] = 425,
    [36] = 425,
    [37] = 25,
    [425] = 25,
    [433] = 750,
    [10] = 75,
    [624] = 950,
    [102] = 400,
    [418] = 700,
    [42] = 425,
    [461] = 25,
    [170] = 550,
    [469] = 25,
    [543] = 950,
    [696] = 950,
    [205] = 575,
    [116] = 475,
    [516] = 750,
    [184] = 550,
    [47] = 150,
    [998] = 75,
    [48] = 75,
    [49] = 75,
    [194] = 25,
    [390] = 825,
    [50] = 150,
    [200] = 650,
    [51] = 425,
    [554] = 825,
    [52] = 75,
    [204] = 575,
    [210] = 225,
    [422] = 625,
    [245] = 675,
    [427] = 25,
    [218] = 75,
    [14] = 150,
    [56] = 150,
    [224] = 150,
    [57] = 25,
    [523] = 25,
    [676] = 950,
    [539] = 375,
    [77] = 300,
    [15] = 300,
    [71] = 300,
    [155] = 1,
    [121] = 475,
    [244] = 675,
    [62] = 75,
    [100] = 375,
    [63] = 150,
    [535] = 950,
    [64] = 300,
    [65] = 150,
    [66] = 225,
    [201] = 575,
    [83] = 425,
    [69] = 225,
    [95] = 75,
    [407] = 75,
    [85] = 75,
    [468] = 25,
    [199] = 225,
    [588] = 950,
    [76] = 75,
    [153] = 475,
    [78] = 375,
    [198] = 575,
    [80] = 300,
    [81] = 425,
    [109] = 475,
    [525] = 950,
    [84] = 75,
    [463] = 25,
    [467] = 25,
    [87] = 75,
    [88] = 75,
    [89] = 75,
    [465] = 25,
    [23] = 300,
    [462] = 25,
    [127] = 500,
    [94] = 25,
    [376] = 700,
    [507] = 750,
    [891] = 25,
    [388] = 700,
    [25] = 150,
    [534] = 950,
    [542] = 950,
    [203] = 575,
    [26] = 225,
    [460] = 25,
    [416] = 225,
    [106] = 75,
    [107] = 475,
    [108] = 450,
    [217] = 75,
    [7] = 25,
    [622] = 950,
    [21] = 75,
    [448] = 650,
    [114] = 475,
    [115] = 475,
    [333] = 425,
    [117] = 475,
    [118] = 550,
    [119] = 525,
    [120] = 550,
    [22] = 225,
    [181] = 425,
}

local infonames = nil;
function FishLib:GetInfoNames()
    if not infonames then
        infonames = {}
        for idx=1,18,1 do
            infonames[slotinfo[idx].name] = slotinfo[idx]
        end
    end
    return infonames
end

local infoslot = nil;
function FishLib:GetInfoSlot()
    if not infoslot then
        infoslot = {}
        for idx=1,18,1 do
            infoslot[slotinfo[idx].id] = slotinfo[idx]
        end
    end
    return infoslot
end

function FishLib:GetSlotInfo()
    return INVSLOT_MAINHAND, INVSLOT_OFFHAND, slotinfo;
end

function FishLib:GetSlotMap()
    return slotmap;
end

-- http://lua-users.org/wiki/CopyTable
local function shallowcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

local function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

function FishLib:copytable(tab, level)
    if (tab) then
        if (level == 1) then
            return shallowcopy(tab)
        else
            return deepcopy(tab)
        end
    else
        return tab;
    end
end

-- count tables that don't have monotonic integer indexes
function FishLib:tablecount(tab)
    local n = 0;
    for _,_ in pairs(tab) do
        n = n + 1;
    end
    return n;
end

-- iterate over a table using sorted keys
-- https://stackoverflow.com/questions/15706270/sort-a-table-in-lua
function FishLib:spairs(t, order)
    -- collect the keys
    local keys = {}
    for k in pairs(t) do keys[#keys+1] = k end

    -- if order function given, sort by it by passing the table and keys a, b,
    -- otherwise just sort the keys
    if order then
        table.sort(keys, function(a,b) return order(t, a, b) end)
    else
        table.sort(keys)
    end

    -- return the iterator function
    local i = 0
    return function()
        i = i + 1
        if keys[i] then
            return keys[i], t[keys[i]]
        end
    end
end

-- return a lookup for table values, doesn't do unique
function FishLib:tablemap(t)
    local set = {}
    for _, l in ipairs(t) do set[l] = true end
    return set
end

-- return a lookup for table values, doesn't do unique
function FishLib:keytable(t)
    local tab = {}
    for k,_ in pairs(t) do tinsert(tab, k) end
    return tab
end

-- return a printable representation of a value
function FishLib:printable(val)
    if (type(val) == "boolean") then
        return val and "true" or "false";
    elseif (type(val) == "table") then
        local tab = nil;
        for _,value in self:spairs(val) do
            if tab then
                tab = tab..", "
            else
                tab = "[ "
            end
            tab = tab..value
        end
        return tab.." ]"
    elseif (val ~= nil) then
        val = tostring(val)
        val = string.gsub(val, "\124", "\124\124");
        return val;
    else
        return "nil";
    end
end

-- this changes all the damn time
-- "|c(%x+)|Hitem:(%d+)(:%d+):%d+:%d+:%d+:%d+:[-]?%d+:[-]?%d+:[-]?%d+:[-]?%d+|h%[(.*)%]|h|r"
-- go with a fixed pattern, since sometimes the hyperlink trick appears not to work
-- In 7.0, the single digit '0' can be dropped, leading to ":::::" sequences
local _itempattern = "|c(%x+)|Hitem:(%d+):(%d*)(:[^|]+)|h%[(.*)%]|h|r"

function FishLib:GetItemPattern()
    if ( not _itempattern ) then
        -- This should work all the time
        self:GetPoleType(); -- force the default pole into the cache
        local pat = self:GetItemInfoFields(6256, self.ITEM_ICON);
        pat = string.gsub(pat, "|c(%x+)|Hitem:(%d+)(:%d+)", "|c(%%x+)|Hitem:(%%d+)(:%%d+)");
        pat = string.gsub(pat, ":[-]?%d+", ":[-]?%%d+");
        _itempattern = string.gsub(pat, "|h%[(.*)%]|h|r", "|h%%[(.*)%%]|h|r");
    end
    return _itempattern;
end

function FishLib:ValidLink(link, full)
    if type(link) ~= "string" or string.match(link, "^%d+") then
        link = "item:"..link
    end
    if full then
        link = self:GetItemInfoFields(link, self.ITEM_LINK);
    end
    return link
end

function FishLib:SetHyperlink(tooltip, link, uncleared)
    link = self:ValidLink(link, true);
    if (not uncleared) then
        tooltip:ClearLines();
    end
    tooltip:SetHyperlink(link);
end

function FishLib:SetInventoryItem(tooltip, target, item, uncleared)
    if (not uncleared) then
        tooltip:ClearLines();
    end
    tooltip:SetInventoryItem(target, item);
end

function FishLib:ParseLink(link)
    if ( link ) then
        -- Make the link canonical
        link = self:ValidLink(link, true);

        local _,_, color, id, enchant, numberlist, name = string.find(link, self:GetItemPattern());
        if ( name ) then
            local numbers = {}
            -- numbers:
            -- id, enchant
            -- gem1, gem2, gem3, gem4, suffix, unique id, link level (the level of the player?), specid, upgrade type, difficulty id
            -- 0, 1 or 2 -- followed by that many extra numbers
            -- upgrade id
            tinsert(numbers, tonumber(id))
            tinsert(numbers, tonumber(enchant or 0))
            for entry in string.gmatch(numberlist, ":%d*") do
                local value = tonumber(strmatch(entry, ":(%d+)")) or 0;
                tinsert(numbers, value);
            end
            return name, color, numbers;
        end
    end
end

function FishLib:SplitLink(link, get_id)
    if ( link ) then
        local name, color, numbers = self:ParseLink(link);
        if ( name ) then
            local id = numbers[1];
            local enchant = numbers[2];
            if (not get_id) then
                id = id..":"..enchant
            else
                id = tonumber(id)
            end
            return color, id, name, enchant;
        end
    end
end

function FishLib:GetItemInfoFields(link, ...)
-- name, link, rarity, itemlevel, minlevel, itemtype
-- subtype, stackcount, equiploc, texture
    if (link) then
        link = self:ValidLink(link)
        local iteminfo = {GetItemInfo(link)}
        local results = {}
        for idx = 1, select('#', ...) do
            local sel_idx = select(idx, ...)
            tinsert(results, iteminfo[sel_idx])
        end
        return unpack(results)
    end
end

function FishLib:GetItemInfo(link)
    if (link) then
        link = self:ValidLink(link)
        return self:GetItemInfoFields(link,
            FishLib.ITEM_NAME ,
            FishLib.ITEM_LINK,
            FishLib.ITEM_QUALITY,
            FishLib.ITEM_LEVEL,
            FishLib.ITEM_MINLEVEL,
            FishLib.ITEM_TYPE,
            FishLib.ITEM_SUBTYPE,
            FishLib.ITEM_STACK,
            FishLib.ITEM_EQUIPLOC,
            FishLib.ITEM_ICON
        );
    end
end

function FishLib:IsLinkableItem(link)
    local name, _link = self:GetItemInfoFields(link, self.ITEM_NAME, self.ITEM_LINK);
    return ( name and _link );
end

function FishLib:ChatLink(item, name, color)
    if( item and name and ChatFrameEditBox:IsVisible() ) then
        if ( not color ) then
            color = self.COLOR_HEX_WHITE;
        elseif ( self["COLOR_HEX_"..color] ) then
            color = self["COLOR_HEX_"..color];
        end
        if ( string.len(color) == 6) then
            color = "ff"..color;
        end
        local link = "|c"..color.."|Hitem:"..item.."|h["..name.."]|h|r";
        ChatFrameEditBox:Insert(link);
    end
end

-- code taken from examples on wowwiki
function FishLib:GetFishTooltip(force)
    local tooltip = FishLibTooltip;
    if ( force or not tooltip ) then
        tooltip = CreateFrame("GameTooltip", "FishLibTooltip", nil, "GameTooltipTemplate");
        tooltip:SetOwner(WorldFrame, "ANCHOR_NONE");
-- Allow tooltip SetX() methods to dynamically add new lines based on these
-- I don't think we need it if we use GameTooltipTemplate...
        tooltip:AddFontStrings(
        tooltip:CreateFontString( "$parentTextLeft9", nil, "GameTooltipText" ),
        tooltip:CreateFontString( "$parentTextRight9", nil, "GameTooltipText" ) )
    end
    -- the owner gets unset sometimes, not sure why
    local owner, anchor = tooltip:GetOwner();
    if (not owner or not anchor) then
        tooltip:SetOwner(WorldFrame, "ANCHOR_NONE");
    end
    return FishLibTooltip;
end

local fp_itemtype = nil;
local fp_subtype = nil;

function FishLib:GetPoleType()
    if ( not fp_itemtype ) then
        fp_itemtype, fp_subtype = self:GetItemInfoFields(6256, self.ITEM_TYPE, self.ITEM_SUBTYPE);
        if ( not fp_itemtype ) then
            -- make sure it's in our cache
            local tooltip = self:GetFishTooltip();
            tooltip:ClearLines();
            tooltip:SetHyperlink("item:6256");
            fp_itemtype, fp_subtype = self:GetItemInfoFields(6256, self.ITEM_TYPE, self.ITEM_SUBTYPE);
        end
    end
    return fp_itemtype, fp_subtype;
end

function FishLib:IsFishingPool(text)
    if ( not text ) then
        text = self:GetTooltipText();
    end
    if ( text ) then
        local check = string.lower(text);
        for _,info in pairs(self.SCHOOLS) do
            local name = string.lower(info.name);
            if ( string.find(check, name) ) then
                return info;
            end
        end
        if ( string.find(check, self.SCHOOL) ) then
            return { name = text, kind = self.SCHOOL_FISH } ;
        end
    end
    -- return nil;
end

function FishLib:IsHyperCompressedOcean(text)
end

function FishLib:AddSchoolName(name)
    tinsert(self.SCHOOLS, { name = name, kind = self.SCHOOL_FISH });
end

function FishLib:GetWornItem(get_id, slot)
    if ( get_id ) then
        return GetInventoryItemID("player", slot);
    else
        return GetInventoryItemLink("player", slot);
    end
end

function FishLib:GetMainHandItem(get_id)
    return self:GetWornItem(get_id, INVSLOT_MAINHAND);
end

function FishLib:GetFishingToolItem(get_id)
    return self:GetWornItem(get_id, INVSLOT_FISHING_TOOL);
end

function FishLib:GetHeadItem(get_id)
    return self:GetWornItem(get_id, INVSLOT_HEAD);
end

function FishLib:IsFishingPole(itemLink)
    if (not itemLink) then
        -- Get the main hand item texture
        itemLink = self:GetMainHandItem();
    end
    if ( itemLink ) then
        local itemtype,subtype,itemTexture;
        itemLink,itemtype,subtype,itemTexture = self:GetItemInfoFields(itemLink, self.ITEM_LINK, self.ITEM_TYPE, self.ITEM_SUBTYPE, self.ITEM_ICON);
        local _, id, _ = self:SplitLink(itemLink, true);

        self:GetPoleType();
        if ( not fp_itemtype and itemTexture ) then
             -- If there is in fact an item in the main hand, and it's texture
             -- that matches the fishing pole texture, then we have a fishing pole
             itemTexture = string.lower(itemTexture);
             if ( string.find(itemTexture, "inv_fishingpole") or
                    string.find(itemTexture, "fishing_journeymanfisher") ) then
                -- Make sure it's not "Nat Pagle's Fish Terminator"
                if ( id ~= 19944  ) then
                     fp_itemtype = itemtype;
                     fp_subtype = subtype;
                     return true;
                 end
             end
        elseif ( fp_itemtype and fp_subtype ) then
            return (itemtype == fp_itemtype) and (subtype == fp_subtype);
        end
    end
    return false;
end

function FishLib:ForceGearCheck()
    self.gearcheck = true;
    self.hasgear = false;
end

function FishLib:IsFishingGear()
    if ( self.gearcheck ) then
        if (self:IsFishingPole()) then
            self.hasgear = true;
        else
            for i=1,16,1 do
                if ( not self.hasgear ) then
                    if (self:FishingBonusPoints(slotinfo[i].id, 1) > 0) then
                        self.hasgear = true;
                    end
                end
            end
        end
        self.gearcheck = false;
    end
    return self.hasgear;
end

function FishLib:IsFishingReady(partial)
    if ( partial ) then
        return self:IsFishingGear();
    else
        return self:IsFishingPole();
    end
end

-- fish tracking skill
function FishLib:GetTrackingID(tex)
    if ( tex ) then
        for id=1,C_Minimap.GetNumTrackingTypes() do
            local _, texture, _, _ = C_Minimap.GetTrackingInfo(id);
            texture = texture.."";
            if ( texture == tex) then
                return id;
            end
        end
    end
    -- return nil;
end

-- local FINDFISHTEXTURE = "Interface\\Icons\\INV_Misc_Fish_02";
local FINDFISHTEXTURE = "133888";
function FishLib:GetFindFishID()
    if ( not self.FindFishID ) then
        self.FindFishID = self:GetTrackingID(FINDFISHTEXTURE);
    end
    return self.FindFishID;
end

local bobber = {};
bobber["enUS"] = "Fishing Bobber";
bobber["esES"] = "Anzuelo";
bobber["esMX"] = "Anzuelo";
bobber["deDE"] = "Schwimmer";
bobber["frFR"] = "Flotteur";
bobber["ptBR"] = "Isca de Pesca";
bobber["ruRU"] = "Поплавок";
bobber["zhTW"] = "釣魚浮標";
bobber["zhCN"] = "垂钓水花";

-- in case the addon is smarter than us
function FishLib:SetBobberName(name)
    self.BOBBER_NAME = name;
end

function FishLib:GetBobberName()
    if ( not self.BOBBER_NAME ) then
        local locale = GetLocale();
        if ( bobber[locale] ) then
            self.BOBBER_NAME = bobber[locale];
        else
            self.BOBBER_NAME = bobber["enUS"];
        end
    end
    return self.BOBBER_NAME;
end

function FishLib:GetTooltipText()
    if ( GameTooltip:IsVisible() ) then
        local text = _G["GameTooltipTextLeft1"];
        if ( text ) then
            return text:GetText();
        end
    end
    -- return nil;
end

function FishLib:SaveTooltipText()
    self.lastTooltipText = self:GetTooltipText();
    return self.lastTooltipText;
end

function FishLib:GetLastTooltipText()
    return self.lastTooltipText;
end

function FishLib:ClearLastTooltipText()
    self.lastTooltipText = nil;
end

function FishLib:OnFishingBobber()
   if ( GameTooltip:IsVisible() and GameTooltip:GetAlpha() == 1 ) then
        local text = GameTooltipTextLeft1:GetText() or self:GetLastTooltipText();
        -- let a partial match work (for translations)
        return ( text and string.find(text, self:GetBobberName() ) );
    end
end

local ACTIONDOUBLEWAIT = 0.4;
local MINACTIONDOUBLECLICK = 0.05;

function FishLib:WatchBobber(flag)
    self.watchBobber = flag;
end

-- look for double clicks
function FishLib:CheckForDoubleClick(button)
    if FishLib.MapButton[button] ~= self.buttonevent then
        return false;
    end
    if ( GetNumLootItems() == 0 and self.lastClickTime ) then
        local pressTime = GetTime();
        local doubleTime = pressTime - self.lastClickTime;
        if ( (doubleTime < ACTIONDOUBLEWAIT) and (doubleTime > MINACTIONDOUBLECLICK) ) then
            if ( not self.watchBobber or not self:OnFishingBobber() ) then
                self.lastClickTime = nil;
                return true;
            end
        end
    end
    self.lastClickTime = GetTime();
    if ( self:OnFishingBobber() ) then
        GameTooltip:Hide();
    end
    return false;
end

function FishLib:ExtendDoubleClick()
    if ( self.lastClickTime ) then
        self.lastClickTime = self.lastClickTime + ACTIONDOUBLEWAIT/2;
    end
end

function FishLib:GetLocZone(mapId)
    return HBD:GetLocalizedMap(mapId) or UNKNOWN
end

function FishLib:GetZoneSize(mapId)
    return LT:GetZoneYardSize(mapId);
end

function FishLib:GetWorldDistance(zone, x1, y1, x2, y2)
    return HBD:GetWorldDistance(zone, x1, y1, x2, y2)
end

function FishLib:GetPlayerZoneCoords()
    local px, py, pzone, mapid = LT:GetBestZoneCoordinate()
    return px, py, pzone, mapid
end

-- Get how far away the specified location is from the player
function FishLib:GetDistanceTo(zone, x, y)
    local px, py, pzone, _ = self:GetPlayerZoneCoords()
    local dist, dx, dy = LT:GetYardDistance(pzone, px, py, zone, x, y)
    return dist
end

FishLib.KALIMDOR = 1
FishLib.EASTERN_KINDOMS = 2
FishLib.OUTLAND = 3
FishLib.NORTHREND = 4
FishLib.THE_MAELSTROM = 5
FishLib.PANDARIA = 6
FishLib.DRAENOR = 7
FishLib.BROKEN_ISLES = 8
FishLib.KUL_TIRAS = 9
FishLib.ZANDALAR = 10
FishLib.SHADOWLANDS = 11
FishLib.DRAGONFLIGHT = 12

-- Darkmoon Island is it's own continent?
local continent_map = {
    [12] = FishLib.KALIMDOR,            -- Kalimdor
    [13] = FishLib.EASTERN_KINDOMS,     -- Eastern Kingons
    [101] = FishLib.OUTLAND,            -- Outland
    [113] = FishLib.NORTHREND,          -- Northrend
    [276] = FishLib.THE_MAELSTROM,      -- The Maelstrom
    [424] = FishLib.PANDARIA,           -- Pandaria
    [572] = FishLib.DRAENOR,            -- Draenor
    [619] = FishLib.BROKEN_ISLES,       -- Broken Isles
    [876] = FishLib.KUL_TIRAS,          -- Kul Tiras
    [875] = FishLib.ZANDALAR,           -- Zandalar
    [1355] = FishLib.KUL_TIRAS,         -- Nazjatar
    [407] = FishLib.THE_MAELSTROM,      -- Darkmoon Island
    [1550] = FishLib.SHADOWLANDS,       -- Shadowlands
    [1978] = FishLib.DRAGONFLIGHT,      -- Dragon Isles
}

local special_maps = {
    [244] = FishLib.THE_MAELSTROM,
    [245] = FishLib.THE_MAELSTROM,		-- Tol Barad
    [201] = FishLib.THE_MAELSTROM,		-- Vashj'ir
    [198] = FishLib.THE_MAELSTROM,		-- Hyjal
    [249] = FishLib.THE_MAELSTROM,		-- Uldum
    [241] = FishLib.THE_MAELSTROM,		-- Twilight Highlands
    [207] = FishLib.THE_MAELSTROM,		-- Deepholm
    [338] = FishLib.THE_MAELSTROM,		-- Molten Front
    [51] = FishLib.THE_MAELSTROM,		-- Swamp of Sorrows
    [122] = FishLib.OUTLAND,		    -- Isle of Quel'Danas
}

-- Continents
-- Pandaria, 6, 424
-- Draenor, 7, 572
-- Broken Isles, 8, 619
-- Dragon Isles, 12, 1978
function FishLib:GetMapContinent(mapId, debug)
    if HBD.mapData[mapId] and mapId then
        local lastMapId;
        local cMapId = mapId;
        local parent = HBD.mapData[cMapId].parent;
        while (parent ~= 946 and parent ~= 947 and HBD.mapData[parent]) do
            if (debug) then
                print(cMapId, parent)
            end
            lastMapId = cMapId;
            cMapId = parent;
            parent = HBD.mapData[cMapId].parent;
        end
        if special_maps[mapId] then
            return special_maps[mapId], cMapId, lastMapId;
        else
            return continent_map[cMapId] or -1, cMapId, lastMapId;
        end
    else
        return -1, -1;
    end
end

function FishLib:GetCurrentMapContinent(debug)
    local mapId = self:GetCurrentMapId();
    return self:GetMapContinent(mapId, debug)
end

function FishLib:GetCurrentMapId()
    local _, _, zone, mapId = LT:GetBestZoneCoordinate()
    return mapId or 0
end

function FishLib:GetZoneInfo()
    local zone = GetRealZoneText();
    if ( not zone or zone == "" ) then
        zone = UNKNOWN;
    end
    local subzone = GetSubZoneText();
    if ( not subzone or subzone == "" ) then
        subzone = zone;
    end

    return self:GetCurrentMapId(), subzone
end

function FishLib:GetBaseZoneInfo()
    local mapID = self:GetCurrentMapId()
    local subzone = GetSubZoneText();
    if ( not subzone or subzone == "" ) then
        subzone = UNKNOWN;
    end

    return mapID, self:GetBaseSubZone(subzone);
end

-- translate zones and subzones
-- need to handle the fact that French uses "Stormwind" instead of "Stormwind City"
function FishLib:GetBaseSubZone(sname)
    if ( sname == FishLib.UNKNOWN or sname == UNKNOWN ) then
        return FishLib.UNKNOWN;
    end

    if (sname and not BSL[sname] and BSZR[sname]) then
        sname = BSZR[sname];
    end

    if (not sname) then
        sname = FishLib.UNKNOWN;
    end

    return sname;
end

function FishLib:GetLocSubZone(sname)
    if ( sname == FishLib.UNKNOWN or sname == UNKNOWN ) then
        return UNKNOWN;
    end

    if (sname and BSL[sname] ) then
        sname = BSZ[sname];
    end
    if (not sname) then
        sname = FishLib.UNKNOWN;
    end
    return sname;
end

local subzoneskills = {
    ["Bay of Storms"] = 425,
    ["Hetaera's Clutch"] = 425,
    ["Jademir Lake"] = 425,
    ["Verdantis River"] = 300,
    ["The Forbidding Sea"] = 225,
    ["Ruins of Arkkoran"] = 300,
    ["The Tainted Forest"] = 25,
    ["Ruins of Gilneas"] = 75,
    ["The Throne of Flame"] = 1,
    ["Forge Camp: Hate"] = 375,	-- Nagrand
    ["Lake Sunspring"] = 490,	-- Nagrand
    ["Skysong Lake"] = 490,	-- Nagrand
    ["Oasis"] = 100,
    ["South Seas"] = 300,
    ["Lake Everstill"] = 150,
    ["Blackwind"] = 500,
    ["Ere'Noru"] = 500,
    ["Jorune"] = 500,
    ["Silmyr"] = 500,
    ["Cannon's Inferno"] = 1,
    ["Fire Plume Ridge"] = 1,
    ["Marshlight Lake"] = 450,
    ["Sporewind Lake"] = 450,
    ["Serpent Lake"] = 450,
    ["Binan Village"] = 750,	-- seems to be higher here, for some reason
};

for zone, level in pairs(subzoneskills) do
    local last = 0
    for _, expansion in ipairs(FISHING_LEVELS) do
        if level > expansion then
            level = level - expansion
            last = expansion
        else
            subzoneskills[zone] = level + last
            break
        end
    end
end

-- this should be something useful for BfA
function FishLib:GetCurrentFishingLevel()
    local mapID = self:GetCurrentMapId()
    local current_max = 0
    if LT.GetFishinglevel then
        _, current_max = LT:GetFishingLevel(mapID)
    end
    local continent, _ = self:GetCurrentMapContinent()
    if current_max == 0 then
        -- Let's just go with continent level skill for now, since
        -- subzone skill levels are now up in the air.
        local info = self.continent_fishing[continent] or DEFAULT_SKILL
        current_max = info.max
    end

    -- now need to do this again.
    local _, subzone = self:GetZoneInfo()
    if (continent ~= 7 and subzoneskills[subzone]) then
        current_max = subzoneskills[subzone];
    elseif current_max == 0 then
        current_max = self.FishingLevels[mapID] or DEFAULT_SKILL.max;
    end
    return current_max
end

-- return a nicely formatted line about the local zone skill and yours
function FishLib:GetFishingSkillLine(join, withzone, isfishing)
    local part1 = "";
    local part2 = "";
    local skill, mods, skillmax, _ = self:GetCurrentSkill();
    local totskill = skill + mods;
    local subzone = GetSubZoneText();
    local zone = GetRealZoneText() or "Unknown";
    local level = self:GetCurrentFishingLevel();
    if ( withzone ) then
        part1 = zone.." : "..subzone.. " ";
    end
    if not self.havedata then
        part1 = part1..self:Yellow("-- (0%)");
    elseif ( level ) then
         if ( level > 0 ) then
            local perc = totskill/level; -- no get aways
            if (perc > 1.0) then
                perc = 1.0;
            end
            part1 = part1.."|cff"..self:GetThresholdHexColor(perc*perc)..level.." ("..math.floor(perc*perc*100).."%)|r";
        else
            -- need to translate this on our own
            part1 = part1..self:Red(NONE_KEY);
        end
    else
        part1 = part1..self:Red(UNKNOWN);
    end
    -- have some more details if we've got a pole equipped
    if ( isfishing or self:IsFishingGear() ) then
        part2 = self:Green(skill.."+"..mods).." "..self:Silver("["..totskill.."]");
    end
    if ( join ) then
        if (part1 ~= "" and part2 ~= "" ) then
            part1 = part1..self:White(" | ")..part2;
            part2 = "";
        end
    end
    return part1, part2;
end

-- table taken from El's Anglin' pages
-- More accurate than the previous (skill - 75) / 25 calculation now
local skilltable = {};
tinsert(skilltable, { ["level"] = 100, ["inc"] = 1 });
tinsert(skilltable, { ["level"] = 200, ["inc"] = 2 });
tinsert(skilltable, { ["level"] = 300, ["inc"] = 2 });
tinsert(skilltable, { ["level"] = 450, ["inc"] = 4 });
tinsert(skilltable, { ["level"] = 525, ["inc"] = 6 });
tinsert(skilltable, { ["level"] = 600, ["inc"] = 10 });

local newskilluptable = {};
function FishLib:SetSkillupTable(table)
    newskilluptable = table;
end

function FishLib:GetSkillupTable()
    return newskilluptable;
end

-- this would be faster as a binary search, but I'm not sure it matters :-)
function FishLib:CatchesAtSkill(skill)
    for _,chk in ipairs(skilltable) do
        if ( skill < chk.level ) then
            return chk.inc;
        end
    end
    -- return nil;
end

function FishLib:GetSkillUpInfo()
    local skill, mods, skillmax = self:GetCurrentSkill();
    if ( skillmax and skill < skillmax ) then
        local needed = self:CatchesAtSkill(skill);
        if ( needed ) then
            return self.caughtSoFar, needed;
        end
    else
        self.caughtSoFar = 0;
    end
    return self.caughtSoFar or 0, nil;
end

-- we should have some way to believe
function FishLib:SetCaughtSoFar(value)
    self.caughtSoFar = value or 0;
end

function FishLib:GetCaughtSoFar()
    return self.caughtSoFar;
end

-- Find an action bar for fishing, if there is one
local FISHINGTEXTURE = 136245;
function FishLib:GetFishingActionBarID(force)
    if ( force or not self.ActionBarID ) then
        for slot=1,72 do
            local tex = GetActionTexture(slot);
            if ( tex and tex == FISHINGTEXTURE ) then
                self.ActionBarID = slot;
                break;
            end
        end
    end
    return self.ActionBarID;
end

function FishLib:ClearFishingActionBarID()
    self.ActionBarID = nil;
end

-- handle classes of fish
local MissedFishItems = {};
MissedFishItems[45190] = "Driftwood";
MissedFishItems[45200] = "Sickly Fish";
MissedFishItems[45194] = "Tangled Fishing Line";
MissedFishItems[45196] = "Tattered Cloth";
MissedFishItems[45198] = "Weeds";
MissedFishItems[45195] = "Empty Rum Bottle";
MissedFishItems[45199] = "Old Boot";
MissedFishItems[45201] = "Rock";
MissedFishItems[45197] = "Tree Branch";
MissedFishItems[45202] = "Water Snail";
MissedFishItems[45188] = "Withered Kelp";
MissedFishItems[45189] = "Torn Sail";
MissedFishItems[45191] = "Empty Clam";

function FishLib:IsMissedFish(id)
    if ( MissedFishItems[id] ) then
        return true;
    end
    -- return nil;
end

-- utility functions
local function SplitColor(color)
    if ( color ) then
        if ( type(color) == "table" ) then
            for i,c in pairs(color) do
                color[i] = SplitColor(c);
            end
        elseif ( type(color) == "string" ) then
            local a = tonumber(string.sub(color,1,2),16);
            local r = tonumber(string.sub(color,3,4),16);
            local g = tonumber(string.sub(color,5,6),16);
            local b = tonumber(string.sub(color,7,8),16);
            color = { a = a, r = r, g = g, b = b };
        end
    end
    return color;
end

local function AddTooltipLine(l)
    if ( type(l) == "table" ) then
        -- either { t, c } or {{t1, c1}, {t2, c2}}
        if ( type(l[1]) == "table" ) then
            local c1 = SplitColor(l[1][2]) or {};
            local c2 = SplitColor(l[2][2]) or {};
            GameTooltip:AddDoubleLine(l[1][1], l[2][1],
                                              c1.r, c1.g, c1.b,
                                              c2.r, c2.g, c2.b);
        else
            local c = SplitColor(l[2]) or {};
            GameTooltip:AddLine(l[1], c.r, c.g, c.b, 1);
        end
    else
        GameTooltip:AddLine(l,nil,nil,nil,1);
    end
end

function FishLib:AddTooltip(text, tooltip)
    if ( not tooltip ) then
        tooltip = GameTooltip;
    end
    -- local c = color or {{}, {}};
    if ( text ) then
        if ( type(text) == "table" ) then
            for _,l in pairs(text) do
                AddTooltipLine(l);
            end
        else
            -- AddTooltipLine(text, color);
            tooltip:AddLine(text,nil,nil,nil,1);
        end
    end
end

function FishLib:FindChatWindow(name)
    local frame;
    for i = 1, NUM_CHAT_WINDOWS do
        frame = _G["ChatFrame" .. i];
        if (frame.name == name) then
            return frame, _G["ChatFrame" .. i .. "Tab"];
        end
    end
    -- return nil, nil;
end

function FishLib:GetChatWindow(name)
    if (canCreateFrame) then
        local frame, frametab = self:FindChatWindow(name);
        if ( frame ) then
            if ( not frametab:IsVisible() ) then
                -- Dock the frame by default
                if ( not frame.oldAlpha ) then
                    frame.oldAlpha = frame:GetAlpha() or DEFAULT_CHATFRAME_ALPHA;
                end
                ShowUIPanel(frame)
                FCF_DockUpdate();
            end
            return frame, frametab;
        else
            frame = FCF_OpenNewWindow(name, true);
			FCF_CopyChatSettings(frame, DEFAULT_CHAT_FRAME);
            return self:FindChatWindow(name);
        end
    end
    -- if we didn't find our frame, something bad has happened, so
    -- let's just use the default chat frame
    return DEFAULT_CHAT_FRAME, nil;
end

function FishLib:GetFrameInfo(framespec)
    local n = nil;
    if framespec then
        if ( type(framespec) == "string" ) then
            n = framespec;
            framespec = _G[framespec];
        else
            n = framespec:GetName();
        end
    end
    return framespec, n;
end

local function ClickHandled(self)
    if ( self.postclick ) then
        self.postclick();
    end
end

local function BuffUpdate(self, elapsed)
    self.lastUpdate = self.lastUpdate + elapsed;
    if self.lastUpdate > CHECKINTERVAL then
        local now = GetTime()
        for buff, done in pairs(BuffWatch) do
            if (done > now) or self.lib:HasBuff(buff, true) then
                BuffWatch[buff] = nil
            end
        end
        self.lastUpdate = 0
        if ( self.lib:tablecount(BuffWatch) == 0 ) then
            self:Hide()
        end
    end
end

function FishLib:WillTaint()
    return (InCombatLockdown() or (UnitAffectingCombat("player") or UnitAffectingCombat("pet")))
end

function FishLib:SetCombat(flag)
    self.combat_flag = flag
end

function FishLib:InCombat()
    return self.combat_flag or self:WillTaint()
end

function FishLib:CreateSAButton()
    local btn = _G[SABUTTONNAME];
    if ( not btn ) then
        btn = CreateFrame("Button", SABUTTONNAME, nil, "SecureActionButtonTemplate");
        btn:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", 0, 0);
        btn:SetFrameStrata("LOW");
        btn:Show();
    end

    if (not btn.buffupdate) then
        btn.buffupdate = CreateFrame("Frame", nil, UIParent);
        btn.buffupdate:SetScript("OnUpdate", BuffUpdate);
        btn.buffupdate.lastUpdate = 0
        btn.buffupdate.lib = self
        btn.buffupdate:Hide()
    end

    if (not btn.skillupdate) then
        btn.skillupdate = CreateFrame("Frame", nil, UIParent);
        btn.skillupdate:SetScript("OnUpdate", SkillUpdate);
        btn.skillupdate.lastUpdate = 0
        btn.skillupdate.state = 0
        btn.skillupdate.lib = self
        btn.skillupdate:Hide()
    end

    if (not self.buttonevent) then
        self.buttonevent = "RightButtonDown";
    end
    btn:SetScript("PostClick", ClickHandled);
    SecureHandlerWrapScript(btn, "PostClick", btn,  [[
      self:ClearBindings()
    ]])
    btn:RegisterForClicks(self.buttonevent);
    btn.fl = self;
end

FishLib.MOUSE1 = "RightButtonDown";
FishLib.MOUSE2 = "Button4Down";
FishLib.MOUSE3 = "Button5Down";
FishLib.MOUSE4 = "MiddleButtonDown";
FishLib.CastButton = {};
FishLib.CastButton[FishLib.MOUSE1] = "RightButton";
FishLib.CastButton[FishLib.MOUSE2] = "Button4";
FishLib.CastButton[FishLib.MOUSE3] = "Button5";
FishLib.CastButton[FishLib.MOUSE4] = "MiddleButton";
FishLib.CastingKeys = {};
FishLib.CastingKeys[FishLib.MOUSE1] = "BUTTON2";
FishLib.CastingKeys[FishLib.MOUSE2] = "BUTTON4";
FishLib.CastingKeys[FishLib.MOUSE3] = "BUTTON5";
FishLib.CastingKeys[FishLib.MOUSE4] = "BUTTON3";
FishLib.MapButton = {};
FishLib.MapButton["RightButton"] = FishLib.MOUSE1;
FishLib.MapButton["Button4"] = FishLib.MOUSE2;
FishLib.MapButton["Button5"] = FishLib.MOUSE3;
FishLib.MapButton["MiddleButton"] = FishLib.MOUSE4;


function FishLib:GetSAMouseEvent()
    if (not self.buttonevent) then
        self.buttonevent = "RightButtonDown";
    end
    return self.buttonevent;
end

function FishLib:GetSAMouseButton()
    return self.CastButton[self:GetSAMouseEvent()];
end

function FishLib:GetSAMouseKey()
    return self.CastingKeys[self:GetSAMouseEvent()];
end

function FishLib:SetSAMouseEvent(buttonevent)
    if (not buttonevent) then
        buttonevent = "RightButtonDown";
    end
    if (self.CastButton[buttonevent]) then
        self.buttonevent = buttonevent;
        local btn = _G[SABUTTONNAME];
        if ( btn ) then
            btn:RegisterForClicks();
            btn:RegisterForClicks(self.buttonevent);
        end
        return true;
    end
    -- return nil;
end

function FishLib:ClearAllAttributes()
    local btn = _G[SABUTTONNAME];
    if ( not btn ) then
        return;
    end
end

function FishLib:CleanSAButton(override)
    local btn = _G[SABUTTONNAME];
    if ( btn ) then
        for _, attrib in ipairs({"type", "spell", "action", "toy", "item", "target-slot", "unit", "macrotext", "macro"}) do
            btn:SetAttribute(attrib, nil)
        end
    end
    return btn
end

function FishLib:SetOverrideBindingClick()
    local btn = _G[SABUTTONNAME];
    if ( btn ) then
        local buttonkey = self:GetSAMouseKey();
        SetOverrideBindingClick(btn, true, buttonkey, SABUTTONNAME);
    end
end

function FishLib:InvokeFishing(useaction)
    local btn = self:CleanSAButton(true)
    if ( not btn ) then
        return;
    end
    local id, name = self:GetFishingSpellInfo();
    local findid = self:GetFishingActionBarID();
    local buttonkey = self:GetSAMouseKey();
    if ( not useaction or not findid ) then
        btn:SetAttribute("type", "spell");
        btn:SetAttribute("spell", name);
    else
        btn:SetAttribute("type", "action");
        btn:SetAttribute("action", findid);
    end
    self:SetOverrideBindingClick()
end

function FishLib:InvokeLuring(id, itemtype)
    local btn = self:CleanSAButton(true)
    if ( not btn ) then
        return;
    end
    if ( id ) then
        local targetslot;
        id = self:ValidLink(id)
        if itemtype == "toy" then
            btn:SetAttribute("type", "toy");
            btn:SetAttribute("toy", id);
        else
            if not itemtype then
                itemtype = "item";
                targetslot = INVSLOT_FISHING_TOOL;
            end
            btn:SetAttribute("type", itemtype);
            btn:SetAttribute("item", id);
            btn:SetAttribute("target-slot", targetslot);
        end
        self:SetOverrideBindingClick()
    end
end

function FishLib:InvokeMacro(macrotext)
    local btn = self:CleanSAButton(true)
    if ( not btn ) then
        return;
    end
    btn:SetAttribute("type", "macro");
    if (macrotext.find(macrotext, "/")) then
        btn:SetAttribute("macrotext", macrotext);
        btn:SetAttribute("macro", nil);
    else
        btn:SetAttribute("macrotext", nil);
        btn:SetAttribute("macro", macrotext);
    end
    self:SetOverrideBindingClick()
end

function FishLib:OverrideClick(postclick)
    local btn = _G[SABUTTONNAME];
    if ( not btn ) then
        return;
    end
    fishlibframe.fl = self;
    btn.fl = self;
    btn.postclick = postclick;
--    print("OverrideClick")
end

function FishLib:ClickSAButton()
    local btn = _G[SABUTTONNAME];
    if ( not btn ) then
        return;
    end
    btn:Click(self:GetSAMouseButton());
end

-- Taken from wowwiki tooltip handling suggestions
local function EnumerateTooltipLines_helper(...)
    local lines = {};
    for i = 1, select("#", ...) do
        local region = select(i, ...)
        if region and region:GetObjectType() == "FontString" then
            local text = region:GetText() -- string or nil
            tinsert(lines, text or "");
        end
    end
    return lines;
end

function FishLib:EnumerateTooltipLines(tooltip)
     return EnumerateTooltipLines_helper(tooltip:GetRegions())
end

-- Fishing bonus. We used to be able to get the current modifier from
-- the skill API, but now we have to figure it out ourselves
local match;
function FishLib:FishingBonusPoints(item, inv)
    local points = 0;
    if ( item and item ~= "" ) then
        if ( not match ) then
            local _, skillname = self:GetFishingSpellInfo();
            match = {};
            match[1] = "%+(%d+) "..skillname;
            match[2] = skillname.." %+(%d+)";
            -- Equip: Fishing skill increased by N.
            match[3] = skillname.."[%a%s]+(%d+)%.";
            if ( GetLocale() == "deDE" ) then
                tinsert(match, "+(%d+) Angelfertigkeit");
            end
            if self.LURE_NAME then
                tinsert(match, self.LURE_NAME.." %+(%d+)")
            end
        end
        local tooltip = self:GetFishTooltip();
        if (inv) then
            self:SetInventoryItem(tooltip, "player", item);
        else
            self:SetHyperlink(tooltip, item);
        end
        local lines = EnumerateTooltipLines_helper(tooltip:GetRegions())
        for i=1,#lines do
            local bodyslot = lines[i]:gsub("^%s*(.-)%s*$", "%1");
            if (string.len(bodyslot) > 0) then
                for _,pat in ipairs(match) do
                    local _,_,bonus = string.find(bodyslot, pat);
                    if ( bonus ) then
                        points = points + bonus;
                    end
                end
            end
        end
    end
    return points;
end

-- if we have a fishing pole, return the bonus from the pole
-- and the bonus from a lure, if any, separately
function FishLib:GetPoleBonus()
    if (self:IsFishingPole()) then
        -- get the total bonus for the pole
        local total = self:FishingBonusPoints(INVSLOT_MAINHAND, true);
        local hmhe,_,_,_,_,_ = GetWeaponEnchantInfo();
        if ( hmhe ) then
            local id;
            -- IsFishingPole has set mainhand for us
            if IsRetail() then
                id = self:GetFishingToolItem(true);
            else
                id = self:GetMainHandItem(true);
            end
            -- get the raw value of the pole without any temp enchants
            local pole = self:FishingBonusPoints(id);
            return total, total - pole;
        else
            -- no enchant, all pole
            return total, 0;
        end
    end
    return 0, 0;
end

function FishLib:GetOutfitBonus()
    local bonus = 0;
    -- we can skip the ammo and ranged slots
    for i=1,16,1 do
        bonus = bonus + self:FishingBonusPoints(slotinfo[i].id, 1);
    end
    -- Blizz seems to have capped this at 50, plus there seems
    -- to be a maximum of +5 in enchants. Need to do some more work
    -- to verify.
    -- if (bonus > 50) then
    -- 	bonus = 50;
    -- end
    local pole, lure = self:GetPoleBonus();
    return bonus + pole, lure;
end


function FishLib:GetBestFishingItem(slotid, ignore)
    local item = nil
    local maxb = 0;
    if not infoslot then
        self:GetInfoSlot()
    end
    local slotname = infoslot[slotid].name;

    local link = GetInventoryItemLink("player", slotid);
    if ( link ) then
        maxb = self:FishingBonusPoints(link);
        if (maxb > 0) then
            item = { link=link, slot=slotid, bonus=maxb, slotname=slotname };
        end
    end

    -- this only gets items in bags, hence the check above for slots
    local itemtable = {};
    itemtable = GetInventoryItemsForSlot(slotid, itemtable);
    for location,id in pairs(itemtable) do
        if (not ignore or not ignore[id]) then
            local player, bank, bags, void, slot, bag = EquipmentManager_UnpackLocation(location);
            if ( bags and slot and bag ) then
                link = C_Container.GetContainerItemLink(bag, slot);
            else
                link = nil;
            end
            if ( link ) then
                local b = self:FishingBonusPoints(link);
                if (b > maxb) then
                    maxb = b;
                    item = { link=link, bag=bag, slot=slot, slotname=slotname, bonus=maxb };
                end
            end
        end
    end
    return item;
end

-- return a list of the best items we have for a fishing outfit
function FishLib:GetFishingOutfitItems(wearing, nopole, ignore)
    -- find fishing gear
    -- no affinity, check all bags
    local outfit = nil;
    ignore = ignore or {};
    for invslot=1,17,1 do
        local slotid = slotinfo[invslot].id;
        local ismain = (slotid == INVSLOT_MAINHAND);
        if ( not nopole or not ismain ) then
            local item = self:GetBestFishingItem(slotid)
            if item and not ignore[item] then
                outfit = outfit or {};
                outfit[slotid] = item
            end
        end
    end
    return outfit;
end

-- look in a particular bag
function FishLib:CheckThisBag(bag, id, skipcount)
    -- get the number of slots in the bag (0 if no bag)
    local numSlots = C_Container.GetContainerNumSlots(bag);
    if (numSlots > 0) then
        -- check each slot in the bag
        id = tonumber(id)
        for slot=1, numSlots do
            local i = C_Container.GetContainerItemID(bag, slot);
            if ( i and id == i ) then
                if ( skipcount == 0 ) then
                    return slot, skipcount;
                end
                skipcount = skipcount - 1;
            end
        end
    end
    return nil, skipcount;
end

-- look for the item anywhere we can find it, skipping if we're looking
-- for more than one
function FishLib:FindThisItem(id, skipcount)
    skipcount = skipcount or 0;
    -- force id to be a number
    _, id, _, _ = self:SplitLink(id, true)
    if ( not id ) then
        return nil,nil;
    end
    -- check each of the bags on the player
    for bag = BACKPACK_CONTAINER, NUM_BAG_SLOTS do
        local slot;
        slot, skipcount = self:CheckThisBag(bag, id, skipcount);
        if ( slot ) then
            return bag, slot;
        end
    end

    local _,_,slotnames = self:GetSlotInfo();
    for _,si in ipairs(slotnames) do
        local slot = si.id;
        local i = GetInventoryItemID("player", slot);
        if ( i and id == i ) then
            if ( skipcount == 0 ) then
                return nil, slot;
            end
            skipcount = skipcount - 1;
        end
    end

    -- return nil, nil;
end

-- Is this item openable?
function FishLib:IsOpenable(item)
    local canopen = false;
    local locked = false;
    local tooltip = self:GetFishTooltip();
    self:SetHyperlink(tooltip, item);
    local lines = EnumerateTooltipLines_helper(tooltip:GetRegions())
    for i=1,#lines do
        local line = lines[i];
        if ( line == _G.ITEM_OPENABLE ) then
            canopen = true;
        elseif ( line == _G.LOCKED ) then
            locked = true;
        end
    end
    return canopen, locked;
end

-- Find out where the player is. Based on code from Astrolabe and wowwiki notes
function FishLib:GetCurrentPlayerPosition()
    local x, y, _, mapId = LT:GetBestZoneCoordinate()
    local C = self:GetCurrentMapContinent();

    return C, mapId, x, y;
end

-- Functions from LibCrayon, since somehow it's crashing some people
FishLib.COLOR_HEX_RED       = "ff0000"
FishLib.COLOR_HEX_ORANGE    = "ff7f00"
FishLib.COLOR_HEX_YELLOW    = "ffff00"
FishLib.COLOR_HEX_GREEN     = "00ff00"
FishLib.COLOR_HEX_WHITE     = "ffffff"
FishLib.COLOR_HEX_COPPER    = "eda55f"
FishLib.COLOR_HEX_SILVER    = "c7c7cf"
FishLib.COLOR_HEX_GOLD      = "ffd700"
FishLib.COLOR_HEX_PURPLE    = "9980CC"
FishLib.COLOR_HEX_BLUE	   = "0000ff"
FishLib.COLOR_HEX_CYAN	   = "00ffff"
FishLib.COLOR_HEX_BLACK	   = "000000"

function FishLib:Colorize(hexColor, text)
    return "|cff" .. tostring(hexColor or 'ffffff') .. tostring(text) .. "|r"
end
function FishLib:Red(text) return self:Colorize(self.COLOR_HEX_RED, text) end
function FishLib:Orange(text) return self:Colorize(self.COLOR_HEX_ORANGE, text) end
function FishLib:Yellow(text) return self:Colorize(self.COLOR_HEX_YELLOW, text) end
function FishLib:Green(text) return self:Colorize(self.COLOR_HEX_GREEN, text) end
function FishLib:White(text) return self:Colorize(self.COLOR_HEX_WHITE, text) end
function FishLib:Copper(text) return self:Colorize(self.COLOR_HEX_COPPER, text) end
function FishLib:Silver(text) return self:Colorize(self.COLOR_HEX_SILVER, text) end
function FishLib:Gold(text) return self:Colorize(self.COLOR_HEX_GOLD, text) end
function FishLib:Purple(text) return self:Colorize(self.COLOR_HEX_PURPLE, text) end
function FishLib:Blue(text) return self:Colorize(self.COLOR_HEX_BLUE, text) end
function FishLib:Cyan(text) return self:Colorize(self.COLOR_HEX_CYAN, text) end
function FishLib:Black(text) return self:Colorize(self.COLOR_HEX_BLACK, text) end

function FishLib:EllipsizeText(fontstring, text, width, append)
    if not append then
        append = ""
    end
    fontstring:SetText(text..append)
    local fullwidth = fontstring:GetStringWidth()
    if fullwidth > width then
        fontstring:SetText("...")
        width = width - fontstring:GetStringWidth()
        if append then
            fontstring:SetText(append)
            width = width - fontstring:GetStringWidth()
        end
        local min = 0;
        local N = string.len(text..append);
        local max = N-1;
        while (min < max) do
            local mid =math. floor((min+max) / 2);
            local newtext = string.sub(text, 1, mid).."..."..append;
             fontstring:SetText(newtext)
             fullwidth = fontstring:GetStringWidth()
             if fullwidth > width then
                max = mid - 1
            else
                min = mid + 1
            end
        end
    end
end

local inf = math.huge

local function GetThresholdPercentage(quality, ...)
    local n = select('#', ...)
    if n <= 1 then
        return GetThresholdPercentage(quality, 0, ... or 1)
    end

    local worst = ...
    local best = select(n, ...)

    if worst == best and quality == worst then
        return 0.5
    end

    local last
    if worst <= best then
        if quality <= worst then
            return 0
        elseif quality >= best then
            return 1
        end
        last = worst
        for i = 2, n-1 do
            local value = select(i, ...)
            if quality <= value then
                return ((i-2) + (quality - last) / (value - last)) / (n-1)
            end
            last = value
        end
    else
        if quality >= worst then
            return 0
        elseif quality <= best then
            return 1
        end
        last = best
        for i = 2, n-1 do
            local value = select(i, ...)
            if quality >= value then
                return ((i-2) + (quality - last) / (value - last)) / (n-1)
            end
            last = value
        end

    end
    local value = select(n, ...)
    return ((n-2) + (quality - last) / (value - last)) / (n-1)
end

function FishLib:GetThresholdColor(quality, ...)
    if quality ~= quality or quality == inf or quality == -inf then
        return 1, 1, 1
    end

    local percent = GetThresholdPercentage(quality, ...)

    if percent <= 0 then
        return 1, 0, 0
    elseif percent <= 0.5 then
        return 1, percent*2, 0
    elseif percent >= 1 then
        return 0, 1, 0
    else
        return 2 - percent*2, 1, 0
    end
end

function FishLib:GetThresholdHexColor(quality, ...)
    local r, g, b = self:GetThresholdColor(quality, ...)
    return string.format("%02x%02x%02x", r*255, g*255, b*255)
end

-- addon message support
function FishLib:RegisterAddonMessagePrefix(prefix)
    if not self:IsClassic() then
        if (WOW.major < 8) then
            RegisterAddonMessagePrefix(prefix)
        else
            C_ChatInfo.RegisterAddonMessagePrefix(prefix)
        end
    end
end

-- translation support functions
-- replace #KEYWORD# with the value of keyword (which might be a color)
local visited = {}
local function FixupThis(target, tag, what)
    if ( type(what) == "table" ) then
        local fixed = {};
        if (visited[what] == nil) then
            visited[what] = 1;
            for idx,str in pairs(what) do
                fixed[idx] = FixupThis(target, tag, str);
            end
            for idx,str in pairs(fixed) do
                what[idx] = str;
            end
        end
        return what;
    elseif ( type(what) == "string" ) then
        local pattern = "#([A-Z0-9_]+)#";
        local s,e,w = string.find(what, pattern);
        while ( w ) do
            if ( type(target[w]) == "string" ) then
                local s1 = strsub(what, 1, s-1);
                local s2 = strsub(what, e+1);
                what = s1..target[w]..s2;
                s,e,w = string.find(what, pattern);
            elseif ( FishLib["COLOR_HEX_"..w] ) then
                local s1 = strsub(what, 1, s-1);
                local s2 = strsub(what, e+1);
                what = s1.."ff"..FishLib["COLOR_HEX_"..w]..s2;
                s,e,w = string.find(what, pattern);
            else
                -- stop if we can't find something to replace it with
                w = nil;
            end
        end
        return what;
    end
    -- do nothing
    return what;
end

function FishLib:FixupEntry(constants, tag)
    FixupThis(constants, tag, constants[tag]);
end

-- let's not recurse too far
local function FixupStrings(target)
    local fixed = {};
    for tag,_ in pairs(target) do
        if (visited[tag] == nil) then
            fixed[tag] = FixupThis(target, tag, target[tag]);
            visited[tag] = 1
        end
    end
    for tag,str in pairs(fixed) do
        target[tag] = str;
    end
end

local function FixupBindings(target)
    for tag,_ in pairs(target) do
        if ( string.find(tag, "^BINDING") ) then
            setglobal(tag, target[tag]);
            target[tag] = nil;
        end
    end
end

local missing = {};
local function LoadTranslation(source, lang, target, record)
    local translation = source[lang];
    if ( translation ) then
        for tag,value in pairs(translation) do
            if ( not target[tag] ) then
                target[tag] = value;
                if ( record ) then
                    missing[tag] = value;
                end
            end
        end
    end
end

function FishLib:Translate(addon, source, target, forced)
    local locale = forced or GetLocale();
    target.VERSION = GetAddOnMetadata(addon, "Version");
    LoadTranslation(source, locale, target);
    if ( locale ~= "enUS" ) then
        LoadTranslation(source, "enUS", target, forced);
    end
    LoadTranslation(source, "Inject", target);
    visited = {}
    FixupStrings(target);
    FixupBindings(target);
    if (forced) then
        return missing;
    end
end

-- Pool types
FishLib.SCHOOL_FISH = 0;
FishLib.SCHOOL_WRECKAGE = 1;
FishLib.SCHOOL_DEBRIS = 2;
FishLib.SCHOOL_WATER = 3;
FishLib.SCHOOL_TASTY = 4;
FishLib.SCHOOL_OIL = 5;
FishLib.SCHOOL_CHURNING = 6;
FishLib.SCHOOL_FLOTSAM = 7;
FishLib.SCHOOL_FIRE = 8;
FishLib.COMPRESSED_OCEAN = 9;

local FLTrans = {};

function FLTrans:Setup(lang, school, lurename, ...)
    self[lang] = {};
    -- as long as string.lower breaks all UTF-8 equally, this should still work
    self[lang].SCHOOL = string.lower(school);
    if lurename then
        self[lang].LURE_NAME = lurename;
    end
    local n = select("#", ...);
    local schools = {};
    for idx=1,n,2 do
        local name, kind = select(idx, ...);
        tinsert(schools, { name = name, kind = kind });
    end
    -- add in the fish we know are in schools
    self[lang].SCHOOLS = schools;
end
FLTrans:Setup("enUS", "school", "Fishing Lure",
    "Floating Wreckage", FishLib.SCHOOL_WRECKAGE,
    "Patch of Elemental Water", FishLib.SCHOOL_WATER,
    "Floating Debris", FishLib.SCHOOL_DEBRIS,
    "Oil Spill", FishLib.SCHOOL_OIL,
    "Stonescale Eel Swarm", FishLib.SCHOOL_FISH,
    "Muddy Churning Water", FishLib.SCHOOL_CHURNING,
    "Pure Water", FishLib.SCHOOL_WATER,
    "Steam Pump Flotsam", FishLib.SCHOOL_FLOTSAM,
    "School of Tastyfish", FishLib.SCHOOL_TASTY,
    "Pool of Fire", FishLib.SCHOOL_FIRE,
    "Hyper-Compressed Ocean", FishLib.COMPRESSED_OCEAN);

FLTrans:Setup("koKR", "떼", "낚시용 미끼",
    "표류하는 잔해", FishLib.SCHOOL_WRECKAGE, --	 Floating Wreckage
    "정기가 흐르는 물 웅덩이", FishLib.SCHOOL_WATER, --	 Patch of Elemental Water
    "표류하는 파편", FishLib.SCHOOL_DEBRIS, --  Floating Debris
    "떠다니는 기름", FishLib.SCHOOL_OIL, --  Oil Spill
    "거품이는 진흙탕물", FishLib.SCHOOL_CHURNING, --	Muddy Churning Water
    "깨끗한 물", FishLib.SCHOOL_WATER, --  Pure Water
    "증기 양수기 표류물", FishLib.SCHOOL_FLOTSAM, --	Steam Pump Flotsam
    "맛둥어 떼", FishLib.SCHOOL_TASTY, -- School of Tastyfish
    "초압축 바다", FishLib.COMPRESSED_OCEAN);

FLTrans:Setup("deDE", "schwarm", "Angelköder",
    "Treibende Wrackteile", FishLib.SCHOOL_WRECKAGE, --  Floating Wreckage
    "Stelle mit Elementarwasser", FishLib.SCHOOL_WATER, --  Patch of Elemental Water
    "Schwimmende Trümmer", FishLib.SCHOOL_DEBRIS, --  Floating Debris
    "Ölfleck", FishLib.SCHOOL_OIL,  --	Oil Spill
    "Schlammiges aufgewühltes Gewässer", FishLib.SCHOOL_CHURNING, --	Muddy Churning Water
    "Reines Wasser", FishLib.SCHOOL_WATER, --	 Pure Water
    "Treibgut der Dampfpumpe", FishLib.SCHOOL_FLOTSAM, --	 Steam Pump Flotsam
    "Leckerfischschwarm", FishLib.SCHOOL_TASTY, -- School of Tastyfish
    "Hyperkomprimierter Ozean", FishLib.COMPRESSED_OCEAN);

FLTrans:Setup("frFR", "banc", "Appât de pêche",
    "Débris flottants", FishLib.SCHOOL_WRECKAGE, --	 Floating Wreckage
    "Remous d'eau élémentaire", FishLib.SCHOOL_WATER, --	Patch of Elemental Water
    "Débris flottant", FishLib.SCHOOL_DEBRIS, --	 Floating Debris
    "Nappe de pétrole", FishLib.SCHOOL_OIL, --  Oil Spill
    "Eaux troubles et agitées", FishLib.SCHOOL_CHURNING, --	Muddy Churning Water
    "Eau pure", FishLib.SCHOOL_WATER, --  Pure Water
    "Détritus de la pompe à vapeur", FishLib.SCHOOL_FLOTSAM, --	 Steam Pump Flotsam
    "Banc de courbine", FishLib.SCHOOL_TASTY, -- School of Tastyfish
    "Océan hyper-comprimé", FishLib.COMPRESSED_OCEAN);

FLTrans:Setup("esES", "banco", "Cebo de pesca",
    "Restos de un naufragio", FishLib.SCHOOL_WRECKAGE,	  --	Floating Wreckage
    "Restos flotando", FishLib.SCHOOL_DEBRIS,		--	 Floating Debris
    "Vertido de petr\195\179leo", FishLib.SCHOOL_OIL,	 --  Oil Spill
    "Agua pura", FishLib.SCHOOL_WATER, --	Pure Water
    "Restos flotantes de bomba de vapor", FishLib.SCHOOL_FLOTSAM, --	Steam Pump Flotsam
    "Banco de pezricos", FishLib.SCHOOL_TASTY, -- School of Tastyfish
    "Océano hipercomprimido", FishLib.COMPRESSED_OCEAN);

FLTrans:Setup("zhCN", "鱼群", "鱼饵",
    "漂浮的残骸", FishLib.SCHOOL_WRECKAGE, --  Floating Wreckage
    "元素之水", FishLib.SCHOOL_WATER, --	 Patch of Elemental Water
    "漂浮的碎片", FishLib.SCHOOL_DEBRIS, --	Floating Debris
    "油井", FishLib.SCHOOL_OIL, --	Oil Spill
    "石鳞鳗群", FishLib.SCHOOL_FISH, --	Stonescale Eel Swarm
    "混浊的水", FishLib.SCHOOL_CHURNING, --	 Muddy Churning Water
    "纯水", FishLib.SCHOOL_WATER,				 --  Pure Water
    "蒸汽泵废料", FishLib.SCHOOL_FLOTSAM, --	 Steam Pump Flotsam
    "可口鱼", FishLib.SCHOOL_TASTY);

FLTrans:Setup("zhTW", "群", "鱼饵",
    "漂浮的殘骸", FishLib.SCHOOL_WRECKAGE, --  Floating Wreckage
    "元素之水", FishLib.SCHOOL_WATER, --	 Patch of Elemental Water
    "漂浮的碎片", FishLib.SCHOOL_DEBRIS, --	Floating Debris
    "油井", FishLib.SCHOOL_OIL, --	Oil Spill
    "混濁的水", FishLib.SCHOOL_CHURNING, --	 Muddy Churning Water
    "純水", FishLib.SCHOOL_WATER,				 --  Pure Water
    "蒸汽幫浦漂浮殘骸", FishLib.SCHOOL_FLOTSAM,	 --  Steam Pump Flotsam
    "斑點可口魚魚群", FishLib.SCHOOL_TASTY);

FishLib:Translate("LibFishing", FLTrans, FishLib);
FLTrans = nil;
