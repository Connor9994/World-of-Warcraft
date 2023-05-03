-- Display the fish you're catching and/or have caught in a live display
local _, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local GSB = function(...) return FBI:GetSettingBool(...); end;

local MAX_FISHINGWATCH_LINES = 1;
local WATCHDRAGGER_SHOW_DELAY = 0.5;

local ELAPSEDTIME_LINE = 1;
local WATCHDRAGGER_FADE_TIME = 0.25;

local ZoneFishingTime = 0;
local TotalTimeFishing = nil;
local CurLoc = GetLocale();

local FL = LibStub("LibFishing-1.0");
local LW = LibStub("LibWindow-1.1");

local timerframe;

-- options for fish watcher
local WatcherOptions = {
    ["WatchFishies"] = {
        ["text"] = FBConstants.CONFIG_FISHWATCH_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FISHWATCH_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["p"] = 1,
        ["default"] = true
    },
    ["WatchCurrentSkill"] = {
        ["text"] = FBConstants.CONFIG_FISHWATCHSKILL_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FISHWATCHSKILL_INFO,
        ["v"] = 1,
        ["default"] = true,
        ["parents"] = { ["WatchFishies"] = "d" }
    },
    ["WatchOnlyWhenFishing"] = {
        ["text"] = FBConstants.CONFIG_FISHWATCHONLY_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FISHWATCHONLY_INFO,
        ["v"] = 1,
        ["m1"] = 1,
        ["default"] = true,
        ["parents"] = { ["WatchFishies"] = "d" }
    },
    ["WatchCurrentZone"] = {
        ["text"] = FBConstants.CONFIG_FISHWATCHZONE_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FISHWATCHZONE_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["default"] = false,
        ["parents"] = { ["WatchFishies"] = "d" }
    },
    ["WatchFishPercent"] = {
        ["text"] = FBConstants.CONFIG_FISHWATCHPERCENT_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FISHWATCHPERCENT_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["default"] = true,
        ["parents"] = { ["WatchFishies"] = "d" }
    },
    ["WatchElapsedTime"] = {
        ["text"] = FBConstants.CONFIG_FISHWATCHTIME_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FISHWATCHTIME_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["default"] = false,
        ["parents"] = { ["WatchFishies"] = "d" }
    },
    ["WatchCurrentOnly"] = {
        ["text"] = FBConstants.CONFIG_FISHWATCHCURRENT_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FISHWATCHCURRENT_INFO,
        ["v"] = 1,
        ["default"] = false,
        ["parents"] = { ["WatchFishies"] = "d" }
    },
    ["WatchHideTrash"] = {
        ["text"] = FBConstants.CONFIG_FISHWATCHTRASH_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FISHWATCHNOGREYS_INFO,
        ["v"] = 1,
        ["default"] = false,
        ["parents"] = { ["WatchFishies"] = "d" }
    },
    ["WatchPagleFish"] = {
        ["text"] = FBConstants.CONFIG_FISHWATCHPAGLE_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FISHWATCHPAGLE_INFO,
        ["v"] = 1,
        ["default"] = true,
        ["parents"] = { ["WatchFishies"] = "d" }
    },
    ["WatchWorldQuests"] = {
        ["text"] = FBConstants.CONFIG_FISHWATCHWORLD_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FISHWATCHWORLD_INFO,
        ["v"] = 1,
        ["default"] = true,
        ["parents"] = { ["WatchFishies"] = "d" }
    },
--    ["WatchWarnFishing"] = {
--        ["text"] = FBConstants.CONFIG_FISHWARNFISHING_ONOFF,
--        ["tooltip"] = FBConstants.CONFIG_FISHWARNFISHING_INFO,
--        ["v"] = 1,
--        ["default"] = false,
--        ["parents"] = { ["WatchFishies"] = "d" } },
};

local FWF = {};

FWF.HEADER = 1
FWF.LAST_PRIORITY = 999
FWF.fishingWatchMaxWidth = 0
FWF.current_line = 1
FWF.Handlers = {}
FWF.First = {}
FWF.Last = {}

function FWF:RegisterLineHandler(renderline, priority, first, last)
    local handler = {}
    handler.first = first
    handler.last = last
    handler.render = renderline

    priority = priority or FWF.LAST_PRIORITY
    if not self.Handlers[priority] then
        self.Handlers[priority] = {}
    end
    tinsert(self.Handlers[priority], handler)
end

function FWF:UpdateLine(index, text)
    if text then
        local name = "FishingWatchLine"..index;
        local entry = _G[name];
        if ( not entry ) then
            local first = _G["FishingWatchLine1"];
            entry = FishingWatchFrame:CreateFontString(name, "BACKGROUND", "FishingWatchFontTemplate");
            entry:SetJustifyH("LEFT");
            entry:SetHeight(first:GetHeight());
            entry:SetPoint("TOPLEFT", "FishingWatchLine"..(index-1), "BOTTOMLEFT");
            local fontFile, fontSize, fontFlags = first:GetFont();
            entry:SetFont(fontFile, fontSize, fontFlags);
            MAX_FISHINGWATCH_LINES = MAX_FISHINGWATCH_LINES + 1;
        end

        entry:SetText(text);
        local tempWidth = entry:GetWidth();
        if ( not self.fishingWatchMaxWidth or tempWidth > self.fishingWatchMaxWidth ) then
            self.fishingWatchMaxWidth = tempWidth;
        end
        entry:Show();
    end
end

function FWF:SetCurrentEntry(text)
    if text then
        if type(text) == 'string' then
            self:UpdateLine(self.current_line, text)
            self.current_line = self.current_line + 1
        else
            for _,line in ipairs(text) do
                self:UpdateLine(self.current_line, line)
                self.current_line = self.current_line + 1
            end
        end
    end
end

function FWF:ColorInfoString(info, name, count)
    if (not name) then
        name = UNKNOWN;
    end

    if (info.color) then
        name = FL:Colorize(info.color, name);
    elseif (info.getcolor) then
        name = FL:Colorize(info.getcolor(), name);
    elseif (info.limit) then
        local color = FL:GetThresholdHexColor(count, info.limit, info.limit / 5);
        name = name.." ("..count.."/"..info.limit..")"
        name = FL:Colorize(color, name);
    elseif (not info.quest or C_QuestLog.IsUnitOnQuest("player", info.quest)) then
        name = FL:Green(name);
    else
        name = FL:Red(name);
    end

    return name
end

function FWF:DisplayFishLine(fish, label, area)
    local line = nil;
    local current_area, subzone = FBI:GetCurrentMapIdInfo();
    area = area or current_area
    for id,info in pairs(fish) do
        local havesome = GetItemCount(id);
        local here;
        if info.area then
            here = info.area == area;
        else
            here = not info.zone;
        end
        if here and info.subzone then
            here = info.subzone == subzone
        end
        if ( havesome > 0 and here) then
            local _,_,_,_,_,name,_ = FBI:GetFishieRaw(id);

            name = self:ColorInfoString(info, name, havesome)

            if (line) then
                line = line..", "..name
            else
                line = name;
            end
        end
    end
    if (not line) then
        line = FL:Yellow(NONE);
    end
    if not string.find(label, ':') then
        line = ": "..line;
    end
    return label..line
end

-- handle special frame actions
local function FadingFinished()
    FishingWatchHighlight:Hide();
    FishingWatchTab:Hide();
    FishingWatchTab.finishedFunc = nil;
end

local function ShowDraggerFrame()
    UIFrameFadeIn(FishingWatchHighlight, WATCHDRAGGER_FADE_TIME, 0, 0.15);
    UIFrameFadeIn(FishingWatchTab, WATCHDRAGGER_FADE_TIME, 0, 1.0);
    FishingWatchFrame:EnableMouse(true);
end

local function HideDraggerFrame()
    LW.OnDragStop(FishingWatchFrame);
    FishingWatchFrame:EnableMouse(false);
    if (FishingWatchTab:IsShown()) then
        FishingWatchTab.finishedFunc = FadingFinished;
        UIFrameFadeOut(FishingWatchHighlight, WATCHDRAGGER_FADE_TIME, 0.15, 0);
        UIFrameFadeOut(FishingWatchTab, WATCHDRAGGER_FADE_TIME, 1.0, 0);
    end
end

function FBI:ResetWatcherFrame(update)
    FishingWatchFrame:ClearAllPoints();
    FishingWatchFrame:SetPoint("CENTER", "UIParent", "CENTER", 0, 0);
    if ( update ) then
        FBI.WatchUpdate();
    end
end

FBI.Commands[FBConstants.WATCHER] = {};
FBI.Commands[FBConstants.WATCHER].help = FBConstants.WATCHER_HELP;
FBI.Commands[FBConstants.WATCHER].func =
    function(what)
        if ( what and ( what == FBConstants.RESET ) ) then
            FBI:ResetWatcherFrame(true);
            return true;
        end
    end;

-- handle tracking the fish that are in the current zone
-- we'll handle mutlti-zone watching without reset later (i.e a future option)
local totalCount = 0;
local totalSchool = 0;
local totalCurrent = 0;
local gotDiffs = false;

local wish_remover = { ["count"] = 0, ["current"] = 0, ["text"] = nil, ["calc"] = 1, ["quality"] = 5 };
local goldcoins = { ["count"] = 0, ["current"] = 0, ["text"] = FBConstants.GOLD_COIN, ["calc"] = 1 };
local silvercoins = { ["count"] = 0, ["current"] = 0, ["text"] = FBConstants.SILVER_COIN, ["calc"] = 1 };
local coppercoins = { ["count"] = 0, ["current"] = 0, ["text"] = FBConstants.COPPER_COIN, ["calc"] = 1 };
local missed = { ["count"] = 0, ["current"] = 0, ["text"] = SPELL_FAILED_TRY_AGAIN, ["quality"] = 0, ["calc"] = 1, ["skipped"] = 1 };
local fishdata = nil;
local fishsort = nil;

local legion_count = 0
local legion_coins = nil

-- is this one of the four kinds of catch we're not going to sort into
-- our "fish" list
local function IsSpecialFish(fishid, itemTexture)
    local basetexture = "INV_Misc_Coin";
    local goldtexture = "_17";
    local silvertexture = "_18";
    local coppertexture = "_19";

    if legion_coins[fishid] then
        if not legion_coins[fishid].show then
            return wish_remover
        end
    elseif (string.find(itemTexture, basetexture)) then
        if (string.find(itemTexture, goldtexture)) then
            return goldcoins;
        elseif (string.find(itemTexture, silvertexture)) then
            return silvercoins;
        elseif (string.find(itemTexture, coppertexture)) then
            return coppercoins;
        end
    end
    if ( FL:IsMissedFish(fishid) ) then
        return missed;
    end
    -- return nil;
end

-- build a single info entry for a given fish
local function BuildInfoEntry(fishid, count)
    local fz = FishingBuddy_Info["FishingHoles"];
    local ff = FishingBuddy_Info["Fishies"];
    local hidden = FishingBuddy_Info["HiddenFishies"];

    local info = {};
    if ( not hidden[fishid] ) then
        _, _, _, _, _, info.text, _ = FBI:GetFishie(fishid);
    end
    info.quality = 0
    if ff[fishid] then
        info.quality = ff[fishid].quality or 0
    end
    info.current = 0;
    info.count = count;
    if ( FBI:IsCountedFish(fishid) ) then
        totalCount = totalCount + info.count;
        totalCurrent = totalCurrent + info.current or 0;
    else
        info.skipped = 1;
        info.quest = FBI:IsQuestFish(fishid);
    end
    return info;
end

-- sort fishort, based on fishdata
local function SortFishData(forcename)
    if ( forcename or not GSB("SortByPercent") ) then
        table.sort(fishsort, function(a,b) return fishdata[a].text < fishdata[b].text; end);
    else
        table.sort(fishsort, function(a,b) return fishdata[a].count and fishdata[b].count and fishdata[b].count<fishdata[a].count; end);
    end
end

-- Handle legion fountain coins
local _achievement_pattern = "|c%x+|Hachievement:[^|]+|h%[(.*)%]|h|r"
local function SetupLegionCoinCount()
    if FL:IsClassic() then
        legion_coins = {}
        return
    end
    local wishid = 10722
    if not wish_remover["text"] then
        local link = GetAchievementLink(wishid)
        _,_,wish_remover["text"] = string.find(link, _achievement_pattern)
    end

    if not legion_coins then
        local ff = FishingBuddy_Info["Fishies"];

        legion_count = GetAchievementNumCriteria(wishid)
        legion_coins = {}

        local done = 0
        for idx = 1, legion_count do
            local name, _, completed, q, r, _, _, id, _, _, _ =  GetAchievementCriteriaInfo(wishid, idx)
            legion_coins[id] = { ["completed"] = completed, ["show"] = not completed, ["name"] = name }
        end
    end
end

local function DisplayLegionCoinCount()
    local bZ, bS = FBI:GetCurrentMapIdInfo()
    if (bZ == 1014 and bS == "The Eventide") then
        local done = 0
        for _,info in pairs(legion_coins) do
            if info.completed then
                done = done + 1
            end
        end

        return wish_remover["text"]..": "..string.format(ACHIEVEMENT_META_COMPLETED_DATE, done.."/"..legion_count);
    end
end

-- for the specified zone and subzone, display the watch data
-- we might want to display multiple zones someday, so this
-- will need to be rewrittent to store the data differently
local function BuildCurrentData()
    totalCount = 0;
    totalCurrent = 0;
    fishdata = {};
    fishsort = {};
    gotDiffs = false;

    wish_remover.count = 0
    wish_remover.current = 0
    goldcoins.count = 0;
    goldcoins.current = 0;
    silvercoins.count = 0;
    silvercoins.current = 0;
    coppercoins.count = 0;
    coppercoins.current = 0;
    missed.count = 0;
    missed.current = 0;

    SetupLegionCoinCount()

    local zidm = FBI:GetCurrentZoneIndex(true);
    local fz = FishingBuddy_Info["FishingHoles"];
    local fszc = FBI.SZSchoolCounts;
    if ( fz and fz[zidm] ) then
        local sc = fszc[zidm];
        local ff = FishingBuddy_Info["Fishies"];
        for fishid,count in pairs(fz[zidm]) do
            local itemTexture = ff[fishid].texture;
            local info = IsSpecialFish(fishid, itemTexture);

            if ( info ) then
                info.count = info.count + count;
                totalCount = totalCount + count;
            else
                if (sc and sc[fishid]) then
                    count = count - sc[fishid];
                    totalSchool = totalSchool + sc[fishid];
                end
                info = BuildInfoEntry(fishid, count);
                fishdata[fishid] = info;
                tinsert(fishsort, fishid);
            end
        end
    end
    SortFishData();
end

local lastContinent = 0;
local function DisplaySkillWarning()
    if false and GSB("WatchWarnFishing") then
        local continent, _ = FL:GetCurrentMapContinent();
        if continent ~= lastContinent then
            local skill, modx, skillmax, lure = FL:GetContinentSkill(continent);
            if skillmax == 0 then
                UIErrorsFrame:AddMessage(FBConstants.CHECKSKILLWINDOW, 1.0, 1.0, 0.0, 10);
            elseif skill == 0 then
                UIErrorsFrame:AddMessage(FBConstants.UNLEARNEDSKILLWINDOW, 1.0, 0.0, 0.0, 10);
            end
            lastContinent = continent;
        end
    end
end

local function HandleZoneChange(self, _, ...)
    if ( not FBI:IsLoaded() ) then
        return;
    end
    fishsort = nil
    fishdata = nil;
    FBI:WatchUpdate();
    if ( FBI:ReadyForFishing() and TotalTimeFishing ) then
        TotalTimeFishing = TotalTimeFishing + ZoneFishingTime;
        ZoneFishingTime = 0;
        FBI:SetSetting("TotalTimeFishing", TotalTimeFishing);
    end
end

FL.RegisterCallback('FishingWatcher', FL.PLAYER_SKILL_READY, function()
    lastContinent = 0;
--    DisplaySkillWarning();
end);


-- keep track of what's going on
local WatchEvents = {};

WatchEvents["UNIT_SPELLCAST_STOP"] = function()
    if ( FishingWatchFrame:IsVisible() ) then
        -- update the skill line if we have one
        if ( GSB("WatchCurrentSkill") ) then
            FBI:WatchUpdate();
        end
    end
end

WatchEvents[FBConstants.ADD_FISHIE_EVT] = function(id, name, mapId, subzone, texture, quantity, quality, level, idx, poolhint)
    if ( FishingWatchFrame:IsVisible() ) then
        local info;

        if legion_coins and legion_coins[id] ~= nil then
            if not legion_coins[id].completed then
                legion_coins[id].completed = true
                if ( GSB("DingQuestFish") ) then
                    PlaySound(SOUNDKIT.IG_QUEST_LIST_COMPLETE, "master");
                end
            end
        end

        if ( fishdata[id] ) then
            info = fishdata[id];
        else
            info = IsSpecialFish(id, texture);
            if ( not info ) then
                -- we'll count these in a second
                fishdata[id] = BuildInfoEntry(id, 0);
                info = fishdata[id];
                tinsert(fishsort, id);
            end
        end

        if (not info) then
            info = BuildInfoEntry(id, 1);
        end

        info.count = info.count + quantity;
        info.current = info.current + quantity;
        if ( FBI:IsCountedFish(id) ) then
            totalCount = totalCount + quantity;
            totalCurrent = totalCurrent + quantity;
            gotDiffs = true;
        end
        SortFishData();

        FBI:WatchUpdate();
    end
end

local function GetLocPrefix()
    if IsInRaid() then
        return "raid_";
    elseif IsInGroup() then
        return "grp_";
    else
        return "solo_"
    end
end

local libwindow_names = {
    ["prefix"] = "solo_"
}

local function UpdateWatcherPosition()
    local next_prefix = GetLocPrefix();
    if libwindow_names.prefix ~= next_prefix then
        libwindow_names.prefix = next_prefix;
        FishingWatchFrame:RestorePosition();
    end
end

local InvisibleOptions = {
    -- options not directly manipulatible from the UI
};

local function HideAway()
    if ( FishingWatchFrame:IsShown() ) then
        FishingWatchFrame:Hide();
        timerframe:Hide();
    end
end

WatchEvents["VARIABLES_LOADED"] = function()
    ZoneFishingTime = 0;

    FishingWatchTab.Text:SetText(FBConstants.NAME);
    PanelTemplates_TabResize(FishingWatchTab, 10);

    FBI.OptionsFrame.HandleOptions(FBConstants.WATCHER_TAB, "Interface\\Icons\\Inv_Misc_Spyglass_03", WatcherOptions);
    -- FBI.OptionsFrame.HandleOptions(nil, nil, InvisibleOptions);

    -- belt and suspenders
    if ( not FishingBuddy_Player["WatcherLocation"] ) then
        FishingBuddy_Player["WatcherLocation"] = {};
    end

    LW:Embed(FishingWatchFrame)
    FishingWatchFrame:RegisterConfig(FishingBuddy_Player["WatcherLocation"], libwindow_names);
    FishingWatchFrame:RestorePosition();
    FishingWatchFrame:MakeDraggable();
    FishingWatchFrame:EnableMouse(false);

    local location = FishingBuddy_Player["WatcherLocation"];
    if location and location["grp_x"] == nil then
        for _,key in ipairs({"x", "y", "point", "scale"}) do
            location["grp_"..key] = location["solo_"..key];
            location["raid_"..key] = location["solo_"..key];
        end
    end

    libwindow_names.prefix = GetLocPrefix()

    FL.RegisterCallback(FBConstants.ID, FL.PLAYER_SKILL_READY, function()
        if ( FishingWatchFrame:IsVisible() ) then
            if ( GSB("WatchCurrentSkill") ) then
                FBI:WatchUpdate();
            end
        end
    end);
end

local function ShowWatcher()
    if GSB("WatchFishies") and (not GSB("WatchOnlyWhenFishing") or FBI:AreWeFishing()) then
        if ( not FishingWatchFrame:IsShown() ) then
            FishingWatchFrame:Show();
        end
        return true
    end
    HideAway()
    return false
end

local function StartWatching()
    ShowWatcher()
    FL:SetCaughtSoFar(FBI:GetSetting("CaughtSoFar"));
    TotalTimeFishing = FBI:GetSetting("TotalTimeFishing");
    ZoneFishingTime = 0;
    FBI:WatchUpdate();
end

WatchEvents[FBConstants.OPT_UPDATE_EVT] = function(changed)
    FBI:WatchUpdate();
end


-- Display world quests
local legionmaps = {
    [1015] = "Azsuna",
    [1024] = "High Mountain",
    [1017] = "Stormheim",
    [1033] = "Suramar",
    [1018] = "Valsharah",
    [1096] = "Eye of Azshara",
}

local function DisplayFishingWorldQuests()
    if FL:IsClassic() or not GSB("WatchWorldQuests") then
        return nil
    end

    local GetQuestsForPlayerByMapID = C_TaskQuest.GetQuestsForPlayerByMapID
    local line = nil;

    local questdone = {};
    local id = 10598;
    local numCriteria = GetAchievementNumCriteria(id);
    for i = 1,numCriteria do
        local criteriaString, _, completed, _, _, _, _, _, _ = GetAchievementCriteriaInfo(id, i);
        questdone[criteriaString] = completed;
    end

    local prof1, prof2, arch, fish, cook, firstAid = GetProfessions();

    for mapId,_ in pairs (legionmaps) do
        local taskInfo = GetQuestsForPlayerByMapID (mapId);
        if (taskInfo and #taskInfo > 0) then
            for _,info in ipairs (taskInfo) do
                local questID = info.questId;
                if (HaveQuestData (questID)) then
                    local tagID, tagName, worldQuestType, rarity, isElite, tradeskillLineIndex = GetQuestTagInfo (questID)
                    if ( worldQuestType == LE_QUEST_TAG_TYPE_PROFESSION ) then
                        if ( tradeskillLineIndex == fish ) then
                            local title, factionID, capped = C_TaskQuest.GetQuestInfoByQuestID(questID);
                            if (questdone[title]) then
                                title = FL:Green(title);
                            else
                                title = FL:Red(title);
                            end
                            if (line) then
                                line = line..", "..title;
                            else
                                line = title;
                            end
                        end
                    end
                end
            end
        end
    end
    if (not line) then
        line = FL:Yellow(NONE);
    end
    return TRACKER_HEADER_WORLD_QUESTS..": "..line;
end

-- Handle display of caught Pagle fish
local function DisplayPagleFish()
    if not GSB("WatchPagleFish") then
        return nil
    end

    return FWF:DisplayFishLine(FBI.PagleFish, QUEST_COMPLETE)
end

-- Handle display elapsed time in some reasonable fashion
local function DisplayedTime(elapsed)
    local t = elapsed;
    local secs = t % 60;
    t = ( t - secs ) / 60;
    local mins = t % 60;
    t = ( t - mins ) /60;
    local hrs  = t % 24;
    t = ( t - hrs ) / 24;

    if ( t > 0 ) then
        return( string.format( "%d %.2d:%.2d:%.2d", t, hrs, mins, secs ) );
    else
        return( string.format( "%.2d:%.2d:%.2d", hrs, mins, secs ) );
    end
end

-- Fish watcher functions
local function UpdateTimerLine()
    if ( ShowWatcher() and GSB("WatchElapsedTime") ) then
        local StartedFishing = FBI.StartedFishing;
        if ( StartedFishing ) then
            if ( not TotalTimeFishing ) then
                StartWatching();
            end
            local elapsed = math.floor(ZoneFishingTime + GetTime() - StartedFishing);
            local text = FBConstants.ELAPSED..": "..DisplayedTime(elapsed).."/"..DisplayedTime(math.floor(elapsed + TotalTimeFishing));
            timerframe:Show();
            return text
        end
    elseif ( timerframe:IsShown() ) then
        timerframe:Hide();
    end
end

local function UpdateZoneLine()
    if ( GSB("WatchCurrentZone") ) then
        local zoneskill, _ = FL:GetFishingSkillLine(false, true, false);
        return zoneskill
    end
end

local function UpdateTotalsLine()
    if ( ShowWatcher() ) then
        local totalpart = ": "..totalCount;
        local line;
        if ( gotDiffs ) then
            line = FBConstants.TOTALS..totalpart.." "..FL:Green("("..totalCurrent..")");
        else
            line = FBConstants.TOTAL..totalpart;
        end
        if ( GSB("WatchCurrentSkill") ) then
            local _, playerskill = FL:GetFishingSkillLine(false, true, true);
            line = line..FL:White(" | ")..CHAT_MSG_SKILL..": "..playerskill;
            local caughtSoFar, needed = FL:GetSkillUpInfo();
            if ( needed ) then
                line = line.." ("..caughtSoFar.."/~"..needed..")";
            end
        end
        return line
    end
end

local function UpdateFishieEntry(info)
    local fishietext = FBI:StripRaw(info.text);
    local dopercent = FBI:GetSettingBool("WatchFishPercent");
    local amount = info.count;
    local totalAmount = totalCount;
    local currentonly = GSB("WatchCurrentOnly");

    if (currentonly) then
        if (info.current == 0) then
            return nil;
        end

        amount = info.current;
        totalAmount = totalCurrent;
    end

    if ( info.skipped ) then
        if ( info.quest ) then
            fishietext = fishietext.." ("..amount..")";
        else
            fishietext = FL:Copper(fishietext.." ("..amount..")");
        end
    else
        if ( info.quality and ITEM_QUALITY_COLORS[info.quality] ) then
            fishietext = ITEM_QUALITY_COLORS[info.quality].hex..fishietext.."|r ";
        else
            fishietext = FL:Red(fishietext.." ");
        end

        local white = "|cff"..FL.COLOR_HEX_WHITE;
        local silver = "|cff"..FL.COLOR_HEX_SILVER;
        local color1, color2;
        if ( gotDiffs ) then
            color1 = silver;
            color2 = white;
        else
            color1 = white;
        end
        local numbers = white.."(".."|r"..color1..amount;

        if ( dopercent ) then
            local percent = string.format("%.1f", ( amount / totalAmount ) * 100);
            numbers = numbers.." : "..percent.."%";
        end
        if ( not currentonly and gotDiffs ) then
            numbers = numbers..", |r";
            amount = info.current or 0;
            local diffs = amount;
            if ( dopercent ) then
                local percent = string.format("%.1f", ( amount / totalCurrent ) * 100);
                diffs = diffs.." : "..percent.."%";
            end
            numbers = numbers..color2..diffs.."|r";
        else
            numbers = numbers.."|r";
        end
        fishietext = fishietext..numbers..white..")|r";
    end
    return fishietext;
end

local function UpdateFishCounts()
    local lines = {}
    for _,fishid in ipairs(fishsort) do
        local info = fishdata[fishid];
        if (info) then
            if info.quality > 0 or not GSB("WatchHideTrash") then
                local fishie = info.text;
                if ( fishie ) then
                    tinsert(lines, UpdateFishieEntry(info));
                end
            end
        end
    end
    return lines
end

local function UpdateCoinLines()
    local lines = {}
    if (coppercoins.count > 0) then
        tinsert(lines, UpdateFishieEntry(coppercoins));
    end
    if (silvercoins.count > 0) then
        tinsert(lines, UpdateFishieEntry(silvercoins));
    end
    if (goldcoins.count > 0) then
        tinsert(lines, UpdateFishieEntry(goldcoins));
    end
    if (wish_remover.count > 0) then
        tinsert(lines, UpdateFishieEntry(wish_remover));
    end
    if (missed.count > 0) then
        tinsert(lines, UpdateFishieEntry(missed));
    end
    return lines
end

function FWF:WatchUpdate()
    if ( not ShowWatcher() ) then
        return;
    end

    if ( not fishsort ) then
        BuildCurrentData();
    end

    self.current_line = 1;
    self.fishingWatchMaxWidth = 0;
    -- this uses an custom sorting function ordering by score descending
    for _,handlers in FL:spairs(FWF.Handlers) do
        local do_last = false
        for _,handler in ipairs(handlers) do
            if handler.first then
                self:SetCurrentEntry(handler.render())
            end
            if handler.last then
                do_last = handler
            end
        end
        for _,handler in ipairs(handlers) do
            if not handler.first and not handler.last then
                self:SetCurrentEntry(handler.render())
            end
        end
        if do_last then
            self:SetCurrentEntry(do_last.render())
        end
    end

    for i=self.current_line, MAX_FISHINGWATCH_LINES, 1 do
        local line = _G["FishingWatchLine"..i];
        line:Hide();
    end

    FishingWatchFrame:SetHeight((self.current_line - 1) * 13 + FishingWatchTab:GetHeight());
    FishingWatchFrame:SetWidth(self.fishingWatchMaxWidth + 10);
end

function FBI:WatchUpdate()
    FWF:WatchUpdate()
end

local function HideOnEscape()
    HideDraggerFrame();
end

local function TimerUpdate()
    if ShowWatcher() then
        FWF:UpdateLine(ELAPSEDTIME_LINE, UpdateTimerLine())
    end
end

local function TimerEvent(_, ...)
end

local WatWin = {}
function FBEnvironment.Watcher_OnLoad(self)
    local _, _, _, classic = FL:WOWVersion();
    timerframe = CreateFrame("FRAME");
    timerframe:Hide();
    timerframe:SetScript("OnUpdate", TimerUpdate);
    timerframe:SetScript("OnEvent", TimerEvent);
    if not classic then
        timerframe:RegisterEvent("CALENDAR_UPDATE_EVENT_LIST");
    end

    -- since we can leave this open all the time, register these against the window itself
    self:RegisterEvent("ZONE_CHANGED");
    self:RegisterEvent("ZONE_CHANGED_INDOORS");
    self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
    self:SetScript("OnEvent", HandleZoneChange);
    -- this should not be necessary
    self:SetClampedToScreen(true);

    local framelevel = self:GetFrameLevel();
    FishingWatchHighlight:SetFrameLevel(framelevel-1);
    FishingWatchTab:SetFrameLevel(framelevel-1);

    FishingWatchTab:SetScript("OnHide", HideOnEscape);

    tinsert(UISpecialFrames, "FishingWatchTab");

    EventRegistry:RegisterCallback(FBConstants.FISHING_ENABLED_EVT, StartWatching)
    EventRegistry:RegisterCallback(FBConstants.FISHING_DISABLED_EVT, function()
        HideAway();
        if FBI.StartedFishing then
            ZoneFishingTime = ZoneFishingTime + GetTime() - FBI.StartedFishing;
        end
        if (TotalTimeFishing) then
            TotalTimeFishing = TotalTimeFishing + ZoneFishingTime;
            ZoneFishingTime = 0;
            FBI:SetSetting("TotalTimeFishing", TotalTimeFishing);
        end
        FBI:SetSetting("CaughtSoFar", FL:GetCaughtSoFar());
    end)

    FBI:RegisterHandlers(WatchEvents);

    FWF:RegisterLineHandler(UpdateTimerLine, 0, true)
    FWF:RegisterLineHandler(UpdateZoneLine, FWF.HEADER, true)
    FWF:RegisterLineHandler(DisplayPagleFish, FWF.HEADER)
    FWF:RegisterLineHandler(DisplayFishingWorldQuests, FWF.HEADER)
    FWF:RegisterLineHandler(DisplayLegionCoinCount, FWF.HEADER)
    FWF:RegisterLineHandler(UpdateTotalsLine, FWF.HEADER, false, true)
    FWF:RegisterLineHandler(UpdateFishCounts, FWF.LAST_PRIORITY, true, false)
    FWF:RegisterLineHandler(UpdateCoinLines, FWF.LAST_PRIORITY, false, true)
end

local isDragging = nil;
local hover;
FBEnvironment.Watcher_OnUpdate = function(self, elapsed)
    if ( self:IsVisible() ) then
        UpdateWatcherPosition();
        if ( isDragging ) then
            return;
        end
        if ( MouseIsOver(self) or MouseIsOver(FishingWatchTab) ) then
            local xPos, yPos = GetCursorPosition();
            if ( hover ) then
                if ( hover.xPos == xPos and hover.yPos == yPos ) then
                    hover.hoverTime = hover.hoverTime + elapsed;
                else
                    hover.hoverTime = 0;
                    hover.xPos = xPos;
                    hover.yPos = yPos;
                end
            else
                hover = {};
                hover.hoverTime = 0;
                hover.xPos = xPos;
                hover.yPos = yPos;
            end
            if ( hover.hoverTime > WATCHDRAGGER_SHOW_DELAY ) then
                if (not hover.fadedin ) then
                    ShowDraggerFrame();
                end
                hover.fadedin = 1;
            end
        else
            if ( hover ) then
                hover.hoverTime = hover.hoverTime + elapsed;
                if ( hover.hoverTime > WATCHDRAGGER_SHOW_DELAY ) then
                    HideDraggerFrame();
                    hover = nil;
                end
            end
        end
    elseif ( hover ) then
        HideDraggerFrame();
        hover = nil;
    end
end

local function HiddenFishToggle(id)
    if ( FishingBuddy_Info["HiddenFishies"][id] ) then
        FishingBuddy_Info["HiddenFishies"][id] = nil;
    else
        FishingBuddy_Info["HiddenFishies"][id] = true;
    end;
    FBI:WatchUpdate();
end

-- save some memory by keeping one copy of each one
local WatcherToggleFunctions = {};
-- let's use closures
local function WatcherMakeToggle(fishid)
    if ( not WatcherToggleFunctions[fishid] ) then
        local id = fishid;
        WatcherToggleFunctions[fishid] = function() HiddenFishToggle(id); end;
    end
    return WatcherToggleFunctions[fishid];
end
FWF.MakeToggle = WatcherMakeToggle;

local function WatchMenu_Initialize()
    local zidm = FBI:GetCurrentZoneIndex(true);
    local fz = FishingBuddy_Info["FishingHoles"];
    if ( fz and fz[zidm] ) then
        local ff = FishingBuddy_Info["Fishies"];
        for fishid in pairs(fz[zidm]) do
            local info = {};
            info.text = ff[fishid][CurLoc];
            info.func = WatcherMakeToggle(fishid);
            info.checked = ( not FishingBuddy_Info["HiddenFishies"][fishid] );
            info.keepShownOnClick = 1;
            UIDropDownMenu_AddButton(info);
        end
    end
end

FWF.OnClick = function(self)
-- we need to be smarter about the things we filter (trash, coins, etc.)
    if ( false ) then
        local menu = _G["FishingBuddyWatcherMenu"];
        UIDropDownMenu_Initialize(menu, WatchMenu_Initialize, "MENU");
        ToggleDropDownMenu(1, nil, menu, "FishingWatchTab", 10, 10);
    end
end

FBI.Commands[FBConstants.CURRENT] = {};
FBI.Commands[FBConstants.CURRENT].help = FBConstants.CURRENT_HELP;
FBI.Commands[FBConstants.CURRENT].func =
    function(what)
        if ( what and what == FBConstants.RESET) then
            totalCurrent = 0;
            fishdata = {};
            FBI:WatchUpdate();
            return true;
        end
    end;

FBI.FWF = FWF;
FBI.WatWin = WatWin;
