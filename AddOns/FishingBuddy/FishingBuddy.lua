-- FBI
--
-- Everything you wanted support for in your fishing endeavors
local addonName, FBStorage = ...
local  FBI = FBStorage

-- FishingSetup
--
-- Load out translation strings and such

local FL = LibStub("LibFishing-1.0");
local HBD = FL.HBD;
local LO = LibStub("LibOptionsFrame-1.0");

FBEnvironment = {};
local FBConstants = {};
FBI.FBConstants = FBConstants;

FBI.APIFunctions = {
    "IsLoaded",
    "Command",
    "IsQuestFish",
    "IsCountedFish",
    "ReadyForFishing",
    "AreWeFishing",
    "IsSwitchClick",
    "ChatLink",
    "MakeDropDown",
    "TooltipBody",
    "UIError",
    "AddCommand",
    -- Fish data
    "GetByFishie",
    "GetSortedFishies",
    "GetFishie",
    "GetFishieRaw",
    "StripRaw",
    "PerFishOptions",
    -- Event handler support
    "RegisterHandlers",
    "GetHandlers",
    -- Settings support
    "GetSettingBool",
    "GetSetting",
    "GetDefault",
    -- Options and frames
    "CreateManagedFrameGroup",
    "CreateManagedOptionsTab",
}

FBConstants.CURRENTVERSION = 1190400;
FBConstants.DEFAULT_MINIMAP_POSITION = 256;
FBConstants.DEFAULT_MINIMAP_RADIUS = 80;

if not FBI.Commands then
    FBI.Commands = {};
end

--#debug@
FBEnvironment.DevTools = FBI.DevTools;

function FBI:DebugOutput(msg, r, g, b)
end

function FBI:Debug(msg, fixlinks)
end

function FBI:DebugVars()
    FBI.Debugging = true;
end

function FBI:Dump(thing)
end

function FBI:Output(msg, r, g, b)
	if ( DEFAULT_CHAT_FRAME ) then
		if ( not r ) then
			DEFAULT_CHAT_FRAME:AddMessage(msg);
		else
			DEFAULT_CHAT_FRAME:AddMessage(msg, r, g, b);
		end
	end
end

function FBI:Message(msg, r, g, b)
	FBI:Output(FL:Green(FBConstants.NAME)..": "..msg, r, g, b);
end

function FBI:Error(msg)
	FBI:Output(FBConstants.NAME..": "..msg, 1.0, 0, 0);
end

local uselocale = FBI.DebugLocale;

local major,_,_ = FL:WOWVersion();
local printfunc;
if ( FL:IsClassic() or major > 1 ) then
    function FBI:Print(...)
        FBI:Message(string.format(...));
    end
else
    function FBI:Print(...)
        FBI:Message(string.format(unpack(arg)));
    end
end

FL:Translate("FishingBuddy", FishingTranslations, FBConstants, uselocale);

--@debug
FBI.Missing = nil;

-- FBI.Missing = FL:Translate("FishingBuddy", FishingTranslations, FBConstants, "frFR");
FBI.Commands["missing"] = {};
FBI.Commands["missing"].func =
	function()
		FishingBuddy_Info["Missing"] = FBI.Missing;
		return true;
	end

-- Set the bobber name if we have a custom translation for it
if ( FBConstants.BOBBER_NAME ~= FishingTranslations["enUS"].BOBBER_NAME) then
	FL:SetBobberName(FBConstants.BOBBER_NAME);
end

-- dump the memory we've allocated for all the translations
FishingTranslations = nil;

function FBI:ChatLink(...)
	return FL:ChatLink(...);
end

FBConstants.ID = "FishingBuddy";
FBConstants.MSGID = "FBAM";	-- Fishing Buddy Addon Message

FBConstants.UNKNOWN = "UNKNOWN";

FBConstants.FISHINGTEXTURE = "Interface\\Icons\\Trade_Fishing";
FBConstants.FINDFISHTEXTURE = "Interface\\Icons\\INV_Misc_Fish_02";

FBConstants.SPELL_FAILED_FISHING_TOO_LOW = string.gsub(SPELL_FAILED_FISHING_TOO_LOW, "%%d", "(%%d+)");

FBConstants.KEYS_NONE = 0;
FBConstants.KEYS_SHIFT = 1;
FBConstants.KEYS_CTRL = 2;
FBConstants.KEYS_ALT = 3;
FBConstants.Keys = {};
FBConstants.Keys[FBConstants.KEYS_NONE] = FBConstants.KEYS_NONE_TEXT;
FBConstants.Keys[FBConstants.KEYS_SHIFT] = FBConstants.KEYS_SHIFT_TEXT;
FBConstants.Keys[FBConstants.KEYS_CTRL] = FBConstants.KEYS_CTRL_TEXT;
FBConstants.Keys[FBConstants.KEYS_ALT] = FBConstants.KEYS_ALT_TEXT;

FBConstants.CastingKeyLabel = {};
FBConstants.CastingKeyLabel[FL.MOUSE1] = KEY_BUTTON2;
FBConstants.CastingKeyLabel[FL.MOUSE2] = KEY_BUTTON4;
FBConstants.CastingKeyLabel[FL.MOUSE3] = KEY_BUTTON5;
FBConstants.CastingKeyLabel[FL.MOUSE4] = KEY_BUTTON3;

-- Continents
FBConstants.KALIMDOR = FL.KALIMDOR
FBConstants.EASTERN_KINDOMS = FL.EASTERN_KINDOMS
FBConstants.OUTLAND = FL.OUTLAND
FBConstants.NORTHREND = FL.NORTHREND
FBConstants.THE_MAELSTROM = FL.THE_MAELSTROM
FBConstants.PANDARIA = FL.PANDARIA
FBConstants.DRAENOR = FL.DRAENOR
FBConstants.BROKEN_ISLES = FL.BROKEN_ISLES
FBConstants.KUL_TIRAS = FL.KUL_TIRAS
FBConstants.ZANDALAR = FL.ZANDALAR
FBConstants.SHADOWLANDS = FL.SHADOWLANDS

local CustomEvents = {
	["WILDCARD_EVT"] = "*",
	["ADD_FISHIE_EVT"] = "FishignBuddy.AddFishie",
	["ADD_SCHOOL_EVT"] = "FishignBuddy.AddSchool",
	["RESET_FISHDATA_EVT"] = "FishignBuddy.ResetFishData",

	["FISHING_ENABLED_EVT"] = "FishingBuddy.FishingEnabled",
	["FISHING_DISABLED_EVT"] = "FishingBuddy.FishingDisabled",

	["INVENTORY_EVT"] = "INVENTORY",

	["LOGIN_EVT"] = "LOGIN",
	["LOGOUT_EVT"] = "LOGOUT",
	["LEAVING_EVT"] = "LEAVING",

	-- option frame
	["OPT_UPDATE_EVT"] = "OPT_UPDATE",
	-- main FB frame handler
	["FRAME_SHOW_EVT"] = "FRAME_SHOW",
	["FIRST_UPDATE_EVT"] = "FIRST_UPDATE"
}

FBConstants.FBEvents = {};
for event,constant in pairs(CustomEvents) do
	FBConstants[event] = constant;
	-- register "fake" events
	FBConstants.FBEvents[constant] = 1;
end

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _


local CurLoc = GetLocale();
local PLANS = FBI.FishingPlans;

-- Information for the stylin' fisherman
local POLES = {
    ["Fishing Pole"] = "6256:0:0:0",
    ["Strong Fishing Pole"] = "6365:0:0:0",
    ["Darkwood Fishing Pole"] = "6366:0:0:0",
    ["Big Iron Fishing Pole"] = "6367:0:0:0",
    ["Blump Family Fishing Pole"] = "12225:0:0:0",
    ["Nat Pagle's Extreme Angler FC-5000"] = "19022:0:0:0",
    ["Arcanite Fishing Pole"] = "19970:0:0:0",
    ["Seth's Graphite Fishing Pole"] = "25978:0:0:0",
    ["Nat's Lucky Fishing Pole"] = "45858:0:0:0",
    ["Mastercraft Kalu'ak Fishing Pole"] = "44050:0:0:0",
    ["Bone Fishing Pole"] = "45991:0:0:0",
    ["Jeweled Fishing Pole"] = "45992:0:0:0",
    ["Staats' Fishing Pole"] = "46337:0:0:0",
    ["Pandaren Fishing Pole"] = "84660:0:0:0",
    ["Dragon Fishing Pole"] = "84661:0:0:0",
    ["Ephemeral Fishing Pole"] = "118381:0:0:0",
    ["Savage Fishing Pole"] = "116825:0:0:0",
    ["Draenic Fishing Pole"] = "116826:0:0:0",
    ["Underlight Angler"] = "133755:0:0:0",
-- yeah, so you can't really use these (for now :-)
    ["Dwarven Fishing Pole"] = "3567:0:0:0",
    ["Goblin Fishing Pole"] = "4598:0:0:0",
    ["Nat Pagle's Fish Terminator"] = "19944:0:0:0",
    ["Thruk's Heavy Duty Fishing Pole"] = "120164:0:0:0",
-- one can only hope
    ["Crafty's Pole"] = "43651:0:0:0"
}

local GeneralOptions = {
    ["ShowNewFishies"] = {
        ["text"] = FBConstants.CONFIG_SHOWNEWFISHIES_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_SHOWNEWFISHIES_INFO,
        ["v"] = 1,
        ["default"] = true },
    ["TurnOffPVP"] = {
        ["text"] = FBConstants.CONFIG_TURNOFFPVP_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_TURNOFFPVP_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["default"] = false },
    ["SortByPercent"] = {
        ["text"] = FBConstants.CONFIG_SORTBYPERCENT_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_SORTBYPERCENT_INFO,
        ["v"] = 1,
        ["default"] = true },
    ["ShowBanner"] = {
        ["text"] = FBConstants.CONFIG_SHOWBANNER_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_SHOWBANNER_INFO,
        ["v"] = 1,
        ["default"] = true, },
    ["EnhanceFishingSounds"] = {
        ["text"] = FBConstants.CONFIG_ENHANCESOUNDS_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_ENHANCESOUNDS_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["p"] = 1,
        ["default"] = false },
    ["BackgroundSounds"] = {
        ["text"] = FBConstants.CONFIG_BGSOUNDS_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_BGSOUNDS_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["default"] = false,
        ["parents"] = { ["EnhanceFishingSounds"] = "d" }, },
    ["TurnOnSound"] = {
        ["text"] = FBConstants.CONFIG_TURNONSOUND_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_TURNONSOUND_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["default"] = false,
        ["parents"] = { ["EnhanceFishingSounds"] = "d", },
    },
    ["MaxSound"] = {
        ["tooltip"] = FBConstants.CONFIG_MAXSOUND_INFO,
        ["parents"] = { ["EnhanceFishingSounds"] = "d", },
        ["button"] = "FishingBuddyOption_MaxVolumeSlider",
        ["margin"] = { 12, 8 }, },
    ["EnhancePools"] = {
        ["text"] = FBConstants.CONFIG_SPARKLIES_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_SPARKLIES_INFO,
        ["v"] = 1,
        ["default"] = false,
        ["parents"] = { ["EnhanceFishingSounds"] = "d" },
    },
    ["SetupSkills"] = {
        ["text"] = FBConstants.CONFIG_TRADESKILL_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_TRADESKILL_INFO,
        ["v"] = 1,
        ["default"] = true,
    },
    ["ConservatoryPools"] = {
        ["text"] = FBConstants.CONFIG_CONSERVATORY_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_CONSERVATORY_INFO,
        ["v"] = 1,
        ["default"] = true
    },
};

-- x87bliss has implemented IsFishWardenEnabled as a public function, so
-- we can retire the GUID based check
local function IsWardenEnabled()
    -- local FishWarden = FishWarden_79a6ca19_6666_4759_9b8f_a67708694e5b;
    local doautoloot = 1;
    if ( FiWaAPI_IsFishWardenEnabled and FiWaAPI_IsFishWardenEnabled() ) then
        doautoloot = 0;
    end
    return "d", doautoloot;
end

local function IsFishingAceEnabled()
--	return FishingAce and FishingAce.enabledState;
    if ( FishingAce and FishingAce.enabledState ) then
        return true;
    end
    return false;
end

local LastCastTime = nil;
local FISHINGSPAN = 60;

local function SetLastCastTime()
    LastCastTime = GetTime();
end

local function GetLastCastTime()
    return LastCastTime;
end

local function ClearLastCastTime()
    LastCastTime = nil
end

-- we want to do all the magic stuff even when we didn't equip anything
local FishingModeFrame = CreateFrame("Frame");

FishingModeFrame.fishing_started = false
FishingModeFrame.geared_up = false
FishingModeFrame.double_click_handler = nil

function FishingModeFrame:SetAutoPoleLocation(clear)
    if clear then
        ClearLastCastTime();
        self.x, self.y, self.zone, self.instanceID = nil, nil, nil, nil
    else
        self.x, self.y, self.zone, self.instanceID = FL:GetPlayerZoneCoords();
    end
end

function FishingModeFrame:EmitStartFishing()
    if not self.fishing_started then
        self.fishing_started = true
        EventRegistry:TriggerEvent(FBConstants.FISHING_ENABLED_EVT);
        self:SetAutoPoleLocation()
    end
end

function FishingModeFrame:EmitStopFishing(logout)
    if self.fishing_started then
        self.fishing_started = false
        self:SetAutoPoleLocation(true)
        EventRegistry:TriggerEvent(FBConstants.FISHING_DISABLED_EVT, logout)
    end
    ClearLastCastTime()
end

local RAFT_ID = 85500;
local BERG_ID = 107950;
local BOARD_ID = 166461;

local RaftItems = {};
RaftItems[RAFT_ID] = {
    ["enUS"] =  "Angler's Fishing Raft",
    spell = 124036,
    setting = "UseAnglersRaft",
    toy = 1,
};
RaftItems[BERG_ID] = {
    ["enUS"] = "Bipsi's Bobbing Berg",
    spell = 152421,
    setting = "UseBobbingBerg",
};
RaftItems[BOARD_ID] = {
    ["enUS"] = "Gnarlwood Waveboard",
    spell = 288758,
    setting = "UseWaveboard",
    toy = 1
}
FBI.RaftItems = RaftItems;

local function HaveRaftBuff()
    local have, _ = FL:HasBuff(RaftItems[RAFT_ID].spell);
    return have
end

local function HaveBergBuff()
    local have, _ = FL:HasBuff(RaftItems[BERG_ID].spell);
    return have
end

local function HaveBoardBuff()
    local have, _ = FL:HasBuff(RaftItems[BOARD_ID].spell);
    return have
end

function FBI:HasRaftBuff()
    return HaveRaftBuff() or HaveBergBuff() or HaveBoardBuff()
end

local function AutoPoleCheck(self, ...)
    if (self.zone) then
        local distance = FL:GetDistanceTo(self.zone, self.x, self.y)
        if distance then
            if distance > 50 or (not FBI:HasRaftBuff() and distance > 20) then
                self:EmitStopFishing()
            end
        end
    end
    if LastCastTime then
        local elapsed = (GetTime() - LastCastTime);
        if ( elapsed > FISHINGSPAN ) then
            self:EmitStopFishing()
            return
        end
    end
end

local function AutoPoleEvent(self, event, arg1, arg2, arg3, arg4, arg5)
    if ( self.double_click_handler and event == "GLOBAL_MOUSE_DOWN" ) then
        if ( FL:CheckForDoubleClick(arg1) ) then
            -- We're stealing the mouse-up event, make sure we exit MouseLook
            if ( IsMouselooking() ) then
                MouselookStop();
            end
            if self.double_click_handler() then
                self:SetAutoPoleLocation()
            end
        end
    elseif ( event == "PLAYER_LOGOUT" ) then
        -- reset the fishing sounds, if we need to
        EventRegistry:TriggerEvent(FBConstants.FISHING_DISABLED_EVT, true, true)
    elseif ( event == "PLAYER_EQUIPMENT_CHANGED" or
            event == "EQUIPMENT_SWAP_FINISHED" or
            event == "BAG_UPDATE" or
            event == "PLAYER_ALIVE") then
        if FBI:GetSettingBool("PartialGear") then
            local has_gear = FL:IsFishingReady(true)
            if has_gear ~= self.geared_up then
                if self.geared_up then
                    self:EmitStopFishing()
                else
                    self:EmitStartFishing()
                end
                self.geared_up = has_gear
            end
        end
        if ( event == "PLAYER_ALIVE" ) then
            FBI:FishingMode();
            self:UnregisterEvent("PLAYER_ALIVE");
        end
    end
end

FishingModeFrame:SetScript("OnEvent", AutoPoleEvent)
FishingModeFrame:SetScript("OnUpdate", AutoPoleCheck);
FishingModeFrame:RegisterEvent("PLAYER_LOGOUT");
FishingModeFrame:RegisterEvent("PLAYER_EQUIPMENT_CHANGED");
FishingModeFrame:RegisterEvent("EQUIPMENT_SWAP_FINISHED");
FishingModeFrame:RegisterEvent("BAG_UPDATE");
FishingModeFrame:RegisterEvent("PLAYER_ALIVE");
FishingModeFrame:RegisterEvent("GLOBAL_MOUSE_DOWN");
-- FishingModeFrame:RegisterEvent("VEHICLE_ANGLE_UPDATE");


function FBI:AreWeFishing()
    return FishingModeFrame.fishing_started;
end

local EasyCastInit;

local CastingOptions = {
    ["EasyCast"] = {
        ["text"] = FBConstants.CONFIG_EASYCAST_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_EASYCAST_INFO,
        ["tooltipd"] = function()
            if IsFishingAceEnabled() then
                return FBConstants.CONFIG_EASYCAST_INFOD;
            end
            -- return nil;
        end,
        ["enabled"] = function() return (not IsFishingAceEnabled()) and 1 or 0 end,
        ["init"] = function(o, b) EasyCastInit(o, b); end,
        ["v"] = 1,
        ["m"] = 1,
        ["p"] = 1,
        ["default"] = true },
    ["MountedCast"] = {
        ["text"] = FBConstants.CONFIG_MOUNTEDCAST_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_MOUNTEDCAST_INFO,
        ["v"] = 1,
        ["parents"] = { ["EasyCast"] = "d", },
        ["active"] = function(i, s, b) return not IsMounted() or b end,
        ["default"] = false },
    ["AutoLoot"] = {
        ["text"] = FBConstants.CONFIG_AUTOLOOT_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_AUTOLOOT_INFO,
        ["tooltipd"] = function()
                        if ( FiWaAPI_IsFishWardenEnabled and not IsFishingAceEnabled() ) then
                            return FBConstants.CONFIG_AUTOLOOT_INFOD;
                        end
                        -- return nil;
                    end,
        ["v"] = 1,
        ["m"] = 1,
        ["p"] = 1,
        ["parents"] = { ["EasyCast"] = IsWardenEnabled },
        ["default"] = false },
    ["AutoOpen"] = {
        ["text"] = FBConstants.CONFIG_AUTOOPEN_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_AUTOOPEN_INFO,
        ["v"] = 1,
        ["parents"] = { ["EasyCast"] = "d" },
        ["default"] = false },
    ["UseAction"] = {
        ["text"] = FBConstants.CONFIG_USEACTION_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_USEACTION_INFO,
        ["v"] = 1,
        ["parents"] = { ["EasyCast"] = "d" },
        ["default"] = false },
    ["PartialGear"] = {
        ["text"] = FBConstants.CONFIG_PARTIALGEAR_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_PARTIALGEAR_INFO,
        ["v"] = 1,
        ["parents"] = { ["EasyCast"] = "d" },
        ["default"] = false },
    ["WatchBobber"] = {
        ["text"] = FBConstants.CONFIG_WATCHBOBBER_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_WATCHBOBBER_INFO,
        ["v"] = 1,
        ["parents"] = { ["EasyCast"] = "d" },
        ["default"] = true
    },
    ["MouseEvent"] = {
        ["default"] = "RightButtonDown",
        ["button"] = "FBMouseEvent",
        ["tooltipd"] = FBConstants.CONFIG_MOUSEEVENT_INFO,
        ["parents"] = { ["EasyCast"] = "h" },
        ["alone"] = 1,
        ["init"] = function(o, b) b.InitMappedMenu(o,b); end,
        ["setup"] =
            function(button)
                FBMouseEvent.menu:SetMappedValue("MouseEvent", FBI:GetSetting("MouseEvent"));
            end,
    },
    ["EasyLures"] = {
        ["text"] = FBConstants.CONFIG_EASYLURES_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_EASYLURES_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["depends"] = { ["EasyCast"] = "d" },
        ["default"] = false },
    ["AlwaysHat"] = {
        ["text"] = FBConstants.CONFIG_ALWAYSHAT_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_ALWAYSHAT_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["parents"] = { ["EasyLures"] = "d" },
        ["default"] = true },
    ["AlwaysLure"] = {
        ["text"] = FBConstants.CONFIG_ALWAYSLURE_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_ALWAYSLURE_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["parents"] = { ["EasyLures"] = "d" },
        ["default"] = false },
    ["LastResort"] = {
        ["text"] = FBConstants.CONFIG_LASTRESORT_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_LASTRESORT_INFO,
        ["v"] = 1,
        ["parents"] = { ["EasyLures"] = "d" },
        ["default"] = false
    },
    ["ContestSupport"] = {
        ["text"] = FBConstants.CONFIG_CONTESTS_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_CONTESTS_INFO,
        ["v"] = 1,
        ["default"] = false
    },
    ["STVTimer"] = {
        ["text"] = FBConstants.CONFIG_STVTIMER_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_STVTIMER_INFO,
        ["v"] = 1,
        ["default"] = false,
        ["parents"] = { ["ContestSupport"] = "d" }
    },
    ["STVPoolsOnly"] = {
        ["text"] = FBConstants.CONFIG_STVPOOLSONLY_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_STVPOOLSONLY_INFO,
        ["v"] = 1,
        ["default"] = false,
        ["primary"] = "ContestSupport",
        ["parents"] = { ["ContestSupport"] = "d", ["EasyCast"] = "d" }
    },
    ["FlyingCast"] = {
        ["text"] = FBConstants.CONFIG_FLYINGCAST_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_FLYINGCAST_INFO,
        ["v"] = 1,
        ["parents"] = { ["EasyCast"] = "d", },
        ["active"] = function(i, s, b) return (not IsFlying()) or b end,
        ["default"] = false
    },
    ["EasyCastKeys"] = {
        ["default"] = FBConstants.KEYS_NONE,
        ["button"] = "FBEasyKeys",
        ["tooltipd"] = FBConstants.CONFIG_EASYCASTKEYS_INFO,
        ["parents"] = { ["EasyCast"] = "h" },
        ["init"] = function(o, b) b.InitMappedMenu(o,b); end,
        ["setup"] =
            function(button)
                FBEasyKeys.menu:SetMappedValue("EasyCastKeys", FBI:GetSetting("EasyCastKeys"));
            end,
    },
    ["KeepOnTruckin"] = {
        ["text"] = FBConstants.CONFIG_KEEPONTRUCKIN_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_KEEPONTRUCKIN_INFO,
        ["v"] = 1,
        ["active"] = function(i, s, b) return b and FBI:AreWeFishing() end,
        ["parents"] = { ["EasyCast"] = "d" },
        ["default"] = true
    },
    ["DraenorBait"] = {
        ["text"] = FBConstants.CONFIG_DRAENORBAIT_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_DRAENORBAIT_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["primary"] = "EasyLures",
        ["parents"] = { ["EasyLures"] = "d", },
        ["default"] = true
    },
    ["DraenorBaitMaintainOnly"] = {
        ["text"] = FBConstants.CONFIG_DRAENORBAITMAINTAIN_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_DRAENORBAITMAINTAIN_INFO,
        ["v"] = 1,
        ["primary"] = "EasyLures",
        ["parents"] = {  ["DraenorBait"] = "d", ["EasyLures"] = "d", },
        ["default"] = true
    },
    ["BigDraenor"] = {
        ["text"] = FBConstants.CONFIG_BIGDRAENOR_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_BIGDRAENOR_INFO,
        ["v"] = 1,
        ["m"] = 1,
        ["parents"] = { ["EasyLures"] = "d" },
        ["default"] = true
    },
    ["DalaranLures"] = {
        ["text"] = FBConstants.CONFIG_DALARANLURES_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_DALARANLURES_INFO,
        ["v"] = 1,
        ["parents"] = { ["EasyLures"] = "d", },
        ["default"] = true
    },
};

local InvisibleOptions = {
    -- options not directly manipulatable from the UI
    ["TooltipInfo"] = {
        ["text"] = FBConstants.CONFIG_TOOLTIPS_ONOFF,
        ["tooltip"] = FBConstants.CONFIG_TOOLTIPS_INFO,
        ["default"] = false },
    ["GroupByLocation"] = {
        ["default"] = true,
    },
    -- bar switching
    ["ClickToSwitch"] = {
        ["default"] = true,
    },
    -- sound enhancement
    ["EnhanceSound_SFXVolume"] = {
        ["default"] = 1.0,
    },
    ["EnhanceSound_MasterVolume"] = {
        ["scale"] = 1,
        ["default"] = 100,
    },
    ["EnhanceSound_MusicVolume"] = {
        ["default"] = 0.0,
    },
    ["EnhanceSound_AmbienceVolume"] = {
        ["default"] = 0.0,
    },
    ["EnhanceMapWaterSounds"] = {
        ["default"] = false,
    },
    ["EnhanceSound_EnableSoundWhenGameIsInBG"] = {
        ["default"] = 1.0,
    },
    ["EnhanceSound_EnableAllSound"] = {
        ["default"] = 1.0,
    },
    ["EnhanceSound_EnableSFX"] = {
        ["default"] = 1.0,
    },
    ["EnhancegraphicsParticleDensity"] = {
        ["default"] = 6.0,
    },
    ["MinimapButtonPosition"] = {
        ["default"] = FBConstants.DEFAULT_MINIMAP_POSITION,
    },
    ["MinimapButtonRadius"] = {
        ["default"] = FBConstants.DEFAULT_MINIMAP_RADIUS,
    },
    ["CaughtSoFar"] = {
        ["default"] = 0,
    },
    ["TotalTimeFishing"] = {
        ["default"] = 1,
    },
    ["FishDebug"] = {
        ["default"] = false,
    },
}

local VolumeSlider =
{
    ["name"] = "FishingBuddyOption_MaxVolumeSlider",
    ["format"] = VOLUME.." - %d%%",
    ["min"] = 0,
    ["max"] = 100,
    ["step"] = 5,
    ["scale"] = 1,
    ["rightextra"] = 32,
    ["setting"] = "EnhanceSound_MasterVolume"
};

local function PrepareVolumeSlider()
    VolumeSlider['getter'] = function(...) return FBI:GetSetting(...); end;
    VolumeSlider['setter'] = function(...) return FBI:SetSetting(...); end;
    LO:CreateSlider(VolumeSlider);
end

EasyCastInit = function(option, button)
    -- prettify drop down?
    local check = FBEasyKeys:GetWidth();
    if (FBI:FitInOptionFrame(check)) then
        CastingOptions["EasyCast"].layoutright = "EasyCastKeys";
    else
        CastingOptions["EasyCastKeys"].alone = 1;
    end
end

local function GetTableSetting(table, setting)
    if not table or not table["Settings"] then
        return;
    end
    local val = table["Settings"][setting];
    if ( val == nil and FBI.GetDefault ) then
        val = FBI:GetDefault(setting);
    end
    return val;
end

local function SetTableSetting(table, setting, value)
    if ( table and setting ) then
        local val = nil;
        if ( FBI.GetDefault ) then
            val = FBI:GetDefault(setting);
        end
        if not table["Settings"] then
            table["Settings"] = {}
        end
        if ( val == value ) then
            table["Settings"][setting] = nil;
        else
            table["Settings"][setting] = value;
        end
    end
end

-- default FBI option handlers
function FBI:BaseGetSetting(setting)
    return GetTableSetting(FishingBuddy_Player, setting);
end

function FBI:BaseSetSetting(setting, value)
    SetTableSetting(FishingBuddy_Player, setting, value)
end

function FBI:GlobalGetSetting(setting)
    return GetTableSetting(FishingBuddy_Info, setting);
end

function FBI:GlobalSetSetting(setting, value)
    SetTableSetting(FishingBuddy_Info, setting, value)
end

FBI.StartedFishing = nil;

local OpenThisFishId = {};
local DoAutoOpenLoot = nil;
local NewLootCheck = true;

FBI.OpenThisFishId = OpenThisFishId;

-- handle zone markers
function FBI:ZoneMarkerTo(zidx, sidx)
    if ( not zidx ) then
        return 0;
    end
    if ( not sidx ) then
        sidx = 0;
    end
    return zidx*1000 + sidx;
end

function FBI:ZoneMarkerEx(packed)
    local sidx = math.fmod(packed, 1000);
    return math.floor(packed/1000), sidx;
end

-- event handling
local function IsFakeEvent(evt)
    return (evt == "VARIABLES_LOADED") or FBConstants.FBEvents[evt];
end

-- let's delay bag update when we leave the world
local bagupdateframe = CreateFrame("Frame");
bagupdateframe:Hide();
-- we could watch for UNIT_INVENTORY_CHANGED, if we wanted to check for "player" in the args
local InventoryEvents = {
    ["BAG_UPDATE"] = true,
    ["PLAYER_EQUIPMENT_CHANGED"] = true,
}

FBI.ByFishie = nil;
FBI.SortedFishies = nil;

function FBI:GetByFishie()
    return self.BtFishie
end

function FBI:GetSortedFishies()
    return self.SortedFishies
end

InventoryEvents["EQUIPMENT_SWAP_FINISHED"] = true

function bagupdateframe:StartInventory()
    for event,_ in pairs(InventoryEvents) do
        self.fbframe:RegisterEvent(event)
    end
end

function bagupdateframe:StopInventory()
    for event,_ in pairs(InventoryEvents) do
        self.fbframe:UnregisterEvent(event)
    end
end

local handlerframe = CreateFrame("Frame");
handlerframe:Hide();

local reg_events = {};
local event_handlers = {};

-- allow other parts of the code to watch for events when not fishing
local isunit = "UNIT_";
local function RegisterEvent(event)
    if ( not reg_events[event] ) then
        if (string.sub(event, 1, string.len(isunit)) == isunit) then
            handlerframe:RegisterUnitEvent(event, "player");
        else
            handlerframe:RegisterEvent(event);
        end
        reg_events[event] = 1;
    end
end

local function AddHandler(event, info)
    local func, fake;
    if ( not event_handlers[event] ) then
        event_handlers[event] = {};
    end
    fake = IsFakeEvent(event);
    if ( type(info) == "function" ) then
        func = info;
    else
        func = info.func;
        fake = fake or info.fake;
    end
    tinsert(event_handlers[event], func);
    if ( not fake ) then
        -- register the event, if we haven't already
        RegisterEvent(event);
    end
end

local function RemoveHandler(event, info)
    if ( event_handlers[event] ) then
        local func;
        if ( type(info) == "function" ) then
            func = info;
        else
            func = info.func;
        end
        local jdx = nil;
        for idx,f in ipairs(event_handlers[event]) do
            if ( f == func ) then
                jdx = idx;
            end
        end
        if ( jdx ) then
            table.remove(event_handlers[event], jdx);
        end
        if ( table.getn(event_handlers[event]) == 0 ) then
            event_handlers[event] = nil;
            if (reg_events[event]) then
                reg_events[event] = nil;
                handlerframe:UnregisterEvent(event);
            end
        end
    end
end

function FBI:RegisterHandlers(handlers)
    if (not handlers) then
        return
    end

    for evt,info in pairs(handlers) do
        AddHandler(evt, info)
    end
end

-- these should be internal use only, FBAPI has "constant" interfaces
function FBI:GetHandlers(what)
    return event_handlers[what];
end;

function FBI:RunHandlers(what, ...)
    local eh = event_handlers[what];
    if ( eh ) then
        for _,func in pairs(eh) do
            func(...);
        end
    end
end

-- we want to make sure we handle our registered events for everyone
handlerframe:SetScript("OnEvent", function(self, event, ...)
    FBI:RunHandlers(event, ...);
    FBI:RunHandlers("*", ...);
end)

-- handle option keys for enabling casting
local key_actions = {
    [FBConstants.KEYS_NONE] = function(mouse) return mouse ~= FL:GetSAMouseEvent(); end,
    [FBConstants.KEYS_SHIFT] = function(mouse) return IsShiftKeyDown(); end,
    [FBConstants.KEYS_CTRL] = function(mouse) return IsControlKeyDown(); end,
    [FBConstants.KEYS_ALT] = function(mouse) return IsAltKeyDown(); end,
}
local function CastingKeys()
    local setting = FBI:GetSetting("EasyCastKeys");
    local mouse = FBI:GetSetting("MouseEvent");
    if ( setting and key_actions[setting] ) then
        return key_actions[setting](mouse);
    else
        return true;
    end
end

local tuskarrswap = false;

function FBI:ReadyForFishing()
    local id = FL:GetMainHandItem(true);
    local holdingspear = self:GetSettingBool("UseTuskarrSpear") and (id == 88535);
    local ready = tuskarrswap or holdingspear or FL:IsFishingReady(self:GetSettingBool("PartialGear") );
    tuskarrswap = holdingspear
    return ready
end

local function CheckCastingKeys()
    if not FL:IsClassic() then
        return CastingKeys() or FBI:ActiveSetting("KeepOnTruckin") or FBI:ReadyForFishing();
    else
        return FBI:ReadyForFishing();
    end
end

local QuestLures = {};
QuestLures[58788] = {
    ["enUS"] = "Overgrown Earthworm",	-- Diggin' for Worms
    spell = 80534,
};
QuestLures[58949] = {
    ["enUS"] = "Stag Eye",				-- A Staggering Effort
    spell = 80868,
};
QuestLures[45902] = {
    ["enUS"] = "Phantom Ghostfish",
    spell = 45902,
};
QuestLures[69907] = {
    ["enUS"] = "Corpse Worm",
    spell = 99315,
};

local AutoFishingItems = {}
local GOGGLES_ID = 167698;
AutoFishingItems[GOGGLES_ID] = {
    ["enUS"] = "Secret Fishing Goggles",
    spell = 293671,
    setting = "UseSecretGoggles",
    ["tooltip"] = FBConstants.CONFIG_SECRET_FISHING_GOGGLES_INFO,
    ["usable"] = function() return not FBI:ReadyForFishing(); end,
    ["default"] = false,
}

-- Get an array of all the lures we have in our inventory, sorted by
-- cost, then bonus
-- We'll want to use the cheapest ones we can until our fish don't get
-- away from us

function FBEnvironment:PostCastUpdate()
    if ( not FL:InCombat() ) then
        if ( FBI.LureStateManager:LuringComplete() ) then
            FishingBuddy_PostCastUpdateFrame:Hide();
        end
    end
end

local function HideAwayAll(self, button, down)
    FishingBuddy_PostCastUpdateFrame:Show();
end

local function GetFishingItem(itemtable)
    for itemid, info in pairs(itemtable) do
        if ( info.always or (PLANS:HaveThing(itemid, info) and (not info.setting or FBI:GetSettingBool(info.setting))) ) then
            if (not info[CurLoc]) then
                info[CurLoc] = GetItemInfo(itemid);
            end
            if PLANS:CanUseFishingItem(itemid, info) then
                local doit = true;
                local it = nil;
                if ( info.check ) then
                    doit, itemid, it = info.check(info, info.spell, doit, itemid);
                elseif (info.toy) then
                    _, itemid = C_ToyBox.GetToyInfo(itemid);
                end
                if ( doit ) then
                    return doit, itemid, info[CurLoc], it or info.type;
                end
            end
        end
    end
    -- return nil;
end

function FBI:GetFishieRaw(fishid)
    local fi = FishingBuddy_Info["Fishies"][fishid];
    if ( not fi or not fi[CurLoc] ) then
        local it = FL:GetItemInfoFields(fishid, FL.ITEM_TYPE);
        local color, id, name = FL:SplitLink(fishid, true);

        if (not fi) then
            return fishid, it, color, 1, nil, name, nil;
        else
            fi.texture = it;
            fi.color = color;
            fi.quantity = 1;
            fi[CurLoc] = name;
        end
    end

    return fishid,
            fi.texture,
            fi.color,
            fi.quantity,
            fi.quality,
            fi[CurLoc],
            fi.quest;
end

function FBI:GetUpdateLure()
    local GSB = function(...) return FBI:GetSettingBool(...); end;
    local LSM = FBI.LureStateManager;
    local lureinventory, _ = FL:GetLureInventory();

    -- Let's wait a bit so that the enchant can show up before we lure again
    if LSM:LuringCheck() then
        return false, 0, nil
    end

    DoAutoOpenLoot = nil;

    local doit, id, name, it;

    if FishingModeFrame:IsShown() then
        doit, id, name, it = PLANS:CanUseFishingItems(AutoFishingItems)
        if ( doit ) then
            return doit, id, name, it;
        end
    end

    doit, id, name, it = PLANS:GetPlan()
    if ( doit ) then
        return doit, id, name, it;
    end

    -- look for bonus items, like the Ancient Pandaren Fishing Charm
    if ( FBI.FishingItems ) then
        doit, id, name, it = GetFishingItem(FBI.FishingItems);
        if ( doit ) then
            return doit, id, name, it;
        end
    end

    if ( GSB("EasyLures") ) then
        -- Is this a quest fish we should open up?
        if ( GSB("AutoOpen") ) then
            while ( table.getn(OpenThisFishId) > 0 ) do
                local c = GetItemCount(OpenThisFishId[1]);
                if (c < 2) then
                    table.remove(OpenThisFishId, 1);
                end
                if ( c > 0 ) then
                    DoAutoOpenLoot = true;
                    local _,_,_,_,_,fname,_ = self:GetFishieRaw(id);
                    return true, id, fname;
                end
            end
        end

        -- look for quest lures
        doit, id, name, it = GetFishingItem(QuestLures);
        if ( doit ) then
            return doit, id, name, it;
        end
    end

    return false;
end

local CaptureEvents = {};
local trackedtime = 0;
local TRACKING_DELAY = 0.75;

CaptureEvents["TRACKED_ACHIEVEMENT_UPDATE"] = function(id, criterion, actualtime, timelimit)
    if ( id == 5036 ) then
        -- Last catch was in a pool
        -- We should add it
        -- Do we know it was our catch?
        trackedtime = GetTime();
    end
end

local function ClearLastLure()
    local LSM = FBI.LureStateManager;
    LSM:ClearLastLure()
end

-- we don't want to interrupt ourselves if we're casting.
local fishing_buff = 131474;
local fishing_spellid = 131490;
local current_spell_id = nil

CaptureEvents["UNIT_SPELLCAST_CHANNEL_START"] = function(unit, lineid, spellid)
    current_spell_id = spellid
    if current_spell_id == fishing_spellid then
        SetLastCastTime();
    end
end

CaptureEvents["UNIT_SPELLCAST_CHANNEL_STOP"] = function(unit, lineid, spellid)
    -- we may want to wait a bit here for any buff to come back...
    if current_spell_id == fishing_spellid then
        SetLastCastTime();
    end
    current_spell_id = nil
    ClearLastLure()
end

CaptureEvents["UNIT_SPELLCAST_INTERRUPTED"] = function(unit, lineid, spellid)
    if current_spell_id == fishing_spellid then
        SetLastCastTime();
    end
    current_spell_id = nil
    ClearLastLure()
end

CaptureEvents["UNIT_SPELLCAST_FAILED"] = ClearLastLure;
CaptureEvents["UNIT_SPELLCAST_FAILED_QUIET"] = ClearLastLure;

CaptureEvents["ACTIONBAR_SLOT_CHANGED"] = function()
    if ( FBI:GetSettingBool("UseAction") ) then
        FL:GetFishingActionBarID(true);
    end
end

CaptureEvents["UNIT_AURA"] = function(arg1)
    if ( arg1 == "player" ) then
        local hmhe,_,_,_,_,_ = GetWeaponEnchantInfo();
        if ( not hmhe ) then
            ClearLastLure();
        end
    end
end

CaptureEvents[FBConstants.OPT_UPDATE_EVT] = function()
    FishingBuddyRoot:RegisterEvent("UPDATE_BINDINGS")
end

function FBI:GetCurrentSpell()
    return current_spell_id;
end

local function NormalHijackCheck()
    local GSB = function(...) return FBI:GetSettingBool(...); end;
    local GSA = function(...) return FBI:ActiveSetting(...); end;
    local LSM = FBI.LureStateManager;
    if ( not LSM:GetLastLure() and
         not FL:InCombat() and GSA("FlyingCast") and GSA("MountedCast") and
         not IsFishingAceEnabled() and
         GSB("EasyCast") and CheckCastingKeys() and not current_spell_id) then
        return true;
    end
end

local HijackCheck = NormalHijackCheck;
function FBI:SetHijackCheck(func)
    if ( not func ) then
        func = NormalHijackCheck;
    end
    HijackCheck = func;
end

local function NormalStealClick()
    -- return nil;
end

local StealClick = NormalStealClick;
function FBI:SetStealClick(func)
    if ( not func ) then
        func = NormalStealClick;
    end
    StealClick = func;
end

local function CentralCasting()
    -- put on a lure if we need to
    if ( HijackCheck() and not StealClick() ) then
        PLANS:ExecutePlans()
        FishingModeFrame:EmitStartFishing();
        local update, id, _, itemtype = FBI:GetUpdateLure();
        if (update and id) then
            FL:InvokeLuring(id, itemtype);
        else
            SetLastCastTime();
            if ( not FL:GetLastTooltipText() or not FL:OnFishingBobber() ) then
                -- watch for fishing holes
                FL:SaveTooltipText();
            end
            local macrotext = FBI:CastAndThrow()
            if macrotext then
                FL:InvokeMacro(macrotext)
            else
                FL:InvokeFishing(FBI:GetSettingBool("UseAction"));
            end
        end
        FL:OverrideClick(HideAwayAll);
        return true
    end
    return false
end
FishingModeFrame.double_click_handler = CentralCasting

local skip = {};
skip["mods"] = 1;
skip["texture"] = 1;
skip["quest"] = 1;
skip["level"] = 1;
skip["skill"] = 1;
skip["quality"] = 1;
skip["color"] = 1;

function FBI:GetFishie(fishid)
    local fi = FishingBuddy_Info["Fishies"][fishid];
    if( fi ) then
        local name = fi[CurLoc];
        if ( not name ) then
            -- try a hyperlink
            local link = "item:"..fishid;
            local n,l = FL:GetItemInfoFields(link, FL.ITEM_NAME, FL.ITEM_LINK);
            if ( n and l ) then
                name = n;
                fi[CurLoc] = n;
            else
                -- try for anything we might be able to display
                for k,val in pairs(fi) do
                    if ( not skip[k] and not name ) then
                         name = val;
                    end
                end
            end
        end
        if ( not name ) then
            name = UNKNOWN;
        end
        return string.format("%d:0:0:0:0:0:0:0", fishid),
                 fi.texture,
                 fi.color,
                 fi.quantity,
                 fi.quality,
                 name,
                 fi.quest;
    end
end

local function PushOptionChanges()
    FL:WatchBobber(FBI:GetSettingBool("WatchBobber"));
    FL:SetSAMouseEvent(FBI:GetSetting("MouseEvent"));
    FBI:WatchUpdate();
end

local function GetCVarSafe(cvarname)
    return tonumber(GetCVar(cvarname))
end

local function GetCVarSafeBool(cvarname)
    if GetCVarSafe(cvarname) then
        return true
    end
    return false
end

-- do everything we think is necessary when we start fishing
-- even if we didn't do the switch to a fishing pole
local resetClickToMove = nil;
function FBI:EnterFishingMode()
    if ( not FBI.StartedFishing ) then
        -- Disable Click-to-Move if we're fishing
        if ( GetCVarSafe("autoInteract") == 1 ) then
            resetClickToMove = true;
            SetCVar("autoInteract", 0);
        end
        FBI:EnhanceFishingSounds(true);
        handlerframe:Show();
        local pole, lure = FL:GetPoleBonus();
        if ( not lure or lure == 0 ) then
            local LSM = FBI.LureStateManager;
            LSM:SetLure({["b"] = lure})
        end
        FBI.StartedFishing = GetTime();
    end
    -- we get invoked when items get equipped as well
    FL:UpdateLureInventory();
end

function FBI:ExitFishingMode(logout)
    if ( FBI.StartedFishing ) then
        if ( not logout ) then
            self:WatchUpdate();
        end
        handlerframe:Hide();
        local started = FBI.StartedFishing;
        FBI.StartedFishing = nil;
    end

    -- reset everything that we might have set
    self:EnhanceFishingSounds(false, logout);
    if ( resetClickToMove ) then
        -- Re-enable Click-to-Move if we changed it
        SetCVar("autoInteract", 1);
        resetClickToMove = nil;
    end

    ClearLastLure();
end

function FBI:FishingMode()
    local ready = self:ReadyForFishing() or FishingModeFrame:IsShown();
    if ( ready ) then
        EventRegistry:TriggerEvent(FBConstants.FISHING_ENABLED_EVT)
    else
        EventRegistry:TriggerEvent(FBConstants.FISHING_DISABLED_EVT)
    end
end

function FBI:IsSwitchClick(setting)
    if ( not setting ) then
        setting = "ClickToSwitch";
    end
    local a = IsShiftKeyDown();
    local b = self:GetSettingBool(setting);
    return ( (a and (not b)) or ((not a) and b) );
end

function FBI:AddCommand(command, func, help, args)
    -- Add a command top the command table.
    FBI.Commands[command] = {};
    FBI.Commands[command].func = func;
    FBI.Commands[command].help = help;
    FBI.Commands[command].args = args;
end

FBI.Commands[FBConstants.FISHINGMODE] = {};
FBI.Commands[FBConstants.FISHINGMODE].help = FBConstants.FISHINGMODE_HELP;
FBI.Commands[FBConstants.FISHINGMODE].func =
    function(what)
        if what == "stop" then
            FishingModeFrame:EmitStopFishing()
        else
            FishingModeFrame:EmitStartFishing()
        end
        SetLastCastTime();
        return true;
    end;

FBI.Commands['macro'] = {};
FBI.Commands['macro'].help = FBConstants.FBMACRO_HELP;
FBI.Commands['macro'].func =
    function()
        SetLastCastTime();
        FBI:FishingMacro();
        return true;
    end;

function FBI:OptionsUpdate(changed, closing)
    PushOptionChanges()
    self:RunHandlers(FBConstants.OPT_UPDATE_EVT, changed, closing);
end

local function nextarg(msg, pattern)
    if ( not msg or not pattern ) then
        return nil, nil;
    end
    local s,e = string.find(msg, pattern);
    if ( s ) then
        local word = strsub(msg, s, e);
        msg = strsub(msg, e+1);
        return word, msg;
    end
    return nil, msg;
end

function FBI:Command(msg)
    if ( not msg ) then
        return;
    end
    if ( FBI:IsLoaded() ) then
        -- collect arguments (whee, lua string manipulation)
        local cmd;
        cmd, msg = nextarg(msg, "[%w]+");

        -- the empty string gives us no args at all
        if ( not cmd ) then
            -- toggle window
            if ( FishingBuddyFrame:IsVisible() ) then
                HideUIPanel(FishingBuddyFrame);
            else
                ShowUIPanel(FishingBuddyFrame);
            end
        elseif ( cmd == FBConstants.HELP or cmd == "help" ) then
            FBI:Output(FBConstants.WINDOW_TITLE);
            if ( not FBConstants.HELPMSG ) then
                FBConstants.HELPMSG = { "@PRE_HELP" };
                for _,info in pairs(FBI.Commands) do
                    if ( info.help ) then
                        tinsert(FBConstants.HELPMSG, info.help);
                    end
                end
                tinsert(FBConstants.HELPMSG, "@POST_HELP");
                FL:FixupEntry(FBConstants, "HELPMSG")
            end
            FBI:PrintHelp(FBConstants.HELPMSG);
        else
            local command = FBI.Commands[cmd];
            if ( command ) then
                local args = {};
                local goodargs = true;
                if ( command.args ) then
                    for _,pat in pairs(command.args) do
                        local w, nmsg = nextarg(msg, pat);
                        msg = nmsg
                        if ( not w ) then
                            goodargs = false;
                            break;
                        end
                        tinsert(args, w);
                    end
                else
                    local a;
                    while ( msg ) do
                        a, msg = nextarg(msg, "[%w]+");
                        if ( not a ) then
                            break;
                        end
                        tinsert(args, a);
                    end
                end
                if ( not goodargs or not command.func(unpack(args)) ) then
                    if ( command.help ) then
                        FBI:PrintHelp(command.help);
                    else
                        FBI:Debug("command failed");
                    end
                end
            else
                FBI:Command("help");
            end
        end
    else
        FBI:Error(FBConstants.FAILEDINIT);
    end
end
FBEnvironment.Command = function(...)
    FBI:Command(...)
end

function FBI:TooltipBody(hintcheck)
    local text = FBConstants.DESCRIPTION1.."\n"..FBConstants.DESCRIPTION2;
    if ( hintcheck ) then
        local hint = FBConstants.TOOLTIP_HINT.." ";
        if (FBI:GetSettingBool(hintcheck)) then
            hint = hint..FBConstants.TOOLTIP_HINTSWITCH;
        else
            hint = hint..FBConstants.TOOLTIP_HINTTOGGLE;
        end
        text = text.."\n"..FL:Green(hint);
    end
    return text;
end

local efsv = nil;
function FBI:EnhanceFishingSounds(doit, logout)
    local GSB = function(...) return FBI:GetSettingBool(...); end;
    local GSO = function(...) return FBI:GetSettingOption(...); end;
    if ( GSB("EnhanceFishingSounds") ) then
        if ( not efsv and doit ) then
            -- collect the current values
            local mv = GetCVarSafe("Sound_MasterVolume");
            local mu = GetCVarSafe("Sound_MusicVolume");
            local av = GetCVarSafe("Sound_AmbienceVolume");
            local sv = GetCVarSafe("Sound_SFXVolume");
            local sb = GetCVarSafe("Sound_EnableSoundWhenGameIsInBG");
            local pd = GetCVarSafe("graphicsParticleDensity");
            local eas = GetCVarSafe("Sound_EnableAllSound");
            local esfx = GetCVarSafe("Sound_EnableSFX");

            efsv = {};
            if (GSB("TurnOnSound")) then
                efsv["Sound_EnableAllSound"] = eas;
                efsv["Sound_EnableSFX"] = esfx;
            end

            efsv["Sound_MasterVolume"] = mv;
            efsv["Sound_MusicVolume"] = mu;
            efsv["Sound_AmbienceVolume"] = av;
            efsv["Sound_SFXVolume"] = sv;
            efsv["Sound_EnableSoundWhenGameIsInBG"] = sb;

            if (GSB("EnhancePools")) then
                efsv["graphicsParticleDensity"] = pd;
            end

            -- if we need to, turn 'em off!
            for setting in pairs(efsv) do
                local optionname = "Enhance"..setting;
                local value = FBI:GetSetting(optionname);
                value = tonumber(value);
                local info = GSO(optionname);
                if (info and info.scale) then
                    value = value / 100.0;
                end
                SetCVar(setting, value);
            end
            return; -- fall through and reset everything otherwise
        end
    end
    if ( logout ) then
        FishingBuddy_Player["ResetEnhance"] = efsv;
    end

    if ( efsv ) then
        for setting, value in pairs(efsv) do
            SetCVar(setting, tonumber(value));
        end
        efsv = nil;
    end
end

local IsZoning;

-- Return true if we might be looting from a barrel.
local function LegionBarrel()
    local continent, _ = FL:GetCurrentMapContinent();
    return (continent == 8 and FL:GetMainHandItem(true) == FBConstants.UNDERLIGHT_ANGLER);
end

function FBI:OnEvent(event, ...)
--	  local line = event;
--	  for idx=1,select("#",...) do
--		  line = line.." '"..select(idx,...).."'";
--	  end
--	  FBI:Debug(line);


    if ( event == "PLAYER_EQUIPMENT_CHANGED" or
          event == "EQUIPMENT_SWAP_FINISHED") then
        FBI:RunHandlers(FBConstants.INVENTORY_EVT)
    elseif (event == "BAG_UPDATE" ) then
        local lootcount, lootcheck = FBI:GetLootState();
        if (lootcheck) then
            if (lootcount > 0) then
                lootcount = lootcount - 1;
            end
            if (lootcount == 0) then
                FBI:WatchUpdate();
            end
        end
        FBI:RunHandlers(FBConstants.INVENTORY_EVT)
    elseif ( event == "LOOT_READY" ) then
        local autoLoot = ...;
        local doautoloot;
        if NewLootCheck then
            NewLootCheck = false;
            if autoLoot or (autoLoot == nil and GetCVarSafeBool("autoLootDefault") ~= self:IsModifiedClick("AUTOLOOTTOGGLE"))  then
                doautoloot = true
            else
                doautoloot = FBI:GetSettingBool("AutoLoot")
            end

            if ( IsFishingLoot() or LegionBarrel() ) then
                local poolhint = nil;

                -- How long ago did the achievement fire?
                local elapsedtime = GetTime() - trackedtime;
                if ( elapsedtime < TRACKING_DELAY ) then
                    poolhint = true;
                end

                -- if we want to autoloot, and Blizz isn't, let's grab stuff
                local info = GetLootInfo()
                for index, item in ipairs(info) do
                    local link = GetLootSlotLink(index);
                    -- should we track "locked" items we couldn't loot?'
                    FBI:AddLootCache(item.texture, item.name, item.quantity, item.quality, link, poolhint)
                    if (doautoloot) then
                        LootSlot(index);
                    end
                end
                FL:ClearLastTooltipText();
                FL:ExtendDoubleClick();
            elseif (DoAutoOpenLoot) then
                DoAutoOpenLoot = nil;
                for index = 1, GetNumLootItems(), 1 do
                    if (doautoloot) then
                        LootSlot(index);
                    end
                end
            end
        end
    elseif ( event == "LOOT_CLOSED" ) then
        -- nothing to do here at the moment
        DoAutoOpenLoot = nil;
        NewLootCheck = true;
    elseif ( event == "PLAYER_LOGIN" ) then
        FL:CreateSAButton();
        FL:SetSAMouseEvent(FBI:GetSetting("MouseEvent"));
        FBI:RunHandlers(FBConstants.LOGIN_EVT);
    elseif ( event == "PLAYER_LOGOUT" ) then
        -- reset the fishing sounds, if we need to
        FBI:ExitFishingMode(true);
        FBI:SavePlayerInfo();
        FBI:RunHandlers(FBConstants.LOGOUT_EVT);
    elseif ( event == "UPDATE_BINDINGS" ) then
        local key1, key2 = GetBindingKey("FishingBuddy_GOFISHING");
        if key1 or key2 then
            if FBI:CreateFishingMacro() then
                self:UnregisterEvent(event);
                FBI:SetupMacroKeyBinding();
                self:RegisterEvent(event);
            end
        end
    elseif ( event == "VARIABLES_LOADED" ) then
        local _, name = FL:GetFishingSpellInfo();
        PLANS = FBI.FishingPlans;
        FBI:Initialize();
        PrepareVolumeSlider()
        FBI.OptionsFrame.HandleOptions(GENERAL, nil, GeneralOptions);
        FBI:AddSchoolFish();

        FBI:CreateFBMappedDropDown("FBEasyKeys", "EasyCastKeys", FBConstants.CONFIG_EASYCAST_ONOFF, FBConstants.Keys)
        FBI:CreateFBMappedDropDown("FBMouseEvent", "MouseEvent", FBConstants.CONFIG_MOUSEEVENT_ONOFF, FBConstants.CastingKeyLabel)

        FBI.OptionsFrame.HandleOptions(name, "Interface\\Icons\\INV_Fishingpole_02", CastingOptions);
        FBI.OptionsFrame.HandleOptions(nil, nil, InvisibleOptions);

        -- defaults to true
        if (FishingBuddy_Player and FishingBuddy_Player["Settings"] and FishingBuddy_Player["Settings"]["ShowBanner"] == nil) then
            FBI:Output(FBConstants.WINDOW_TITLE.." loaded");
        end

        FBI:SetupSpecialItems(AutoFishingItems, false, true, true)
        FBI:UpdateFluffOption(GOGGLES_ID, AutoFishingItems[GOGGLES_ID])

        EventRegistry:RegisterCallback(FBConstants.FISHING_ENABLED_EVT, FBI.EnterFishingMode, FBI)
        EventRegistry:RegisterCallback(FBConstants.FISHING_DISABLED_EVT, FBI.ExitFishingMode, FBI)

        self:UnregisterEvent("VARIABLES_LOADED");
        -- tell all the listeners about this one
        FBI:RunHandlers(event, ...);
    elseif ( event == "PLAYER_ENTERING_WORLD" ) then
        IsZoning = nil;
        bagupdateframe:Show();

        if (FBI.StartedFishing and not handlerframe:IsShown()) then
            handlerframe:Show();
        end

        if (FishingBuddy_Player and FishingBuddy_Player["ResetEnhance"]) then
            efsv = FishingBuddy_Player["ResetEnhance"];
            FBI:EnhanceFishingSounds(false, false);
            FishingBuddy_Player["ResetEnhance"] = nil;
        end

        -- Default is true, not saved, therefor implicitly nil
        if (FishingBuddy_Player["Settings"]["SetupSkills"] == nil) then
            FL:GetTradeSkillData()
        end
    elseif ( event == "PLAYER_LEAVING_WORLD") then
        FBI:RunHandlers(FBConstants.LEAVING_EVT);
        IsZoning = 1;

-- Don't reenable BAG_UPDATE until we're back
        bagupdateframe:Hide();
        bagupdateframe:StopInventory()

        if (handlerframe:IsShown()) then
            handlerframe:Hide();
        end
    end
    if FBI.Extravaganza then
        FBI.Extravaganza.IsTime(true);
    end
end

FBEnvironment.FishingBuddy_OnLoad = function(self)
    self:RegisterEvent("PLAYER_ENTERING_WORLD");
    self:RegisterEvent("PLAYER_LEAVING_WORLD");

    self:RegisterEvent("PLAYER_LOGIN");
    self:RegisterEvent("PLAYER_LOGOUT");
    self:RegisterEvent("VARIABLES_LOADED");

    -- we want to deal with fishing loot windows all the time
    self:RegisterEvent("LOOT_READY");
    self:RegisterEvent("LOOT_CLOSED");

-- Handle item lock separately to reduce churn during world load
    -- self:RegisterEvent("ITEM_LOCK_CHANGED");
    -- self:RegisterEvent("PLAYER_EQUIPMENT_CHANGED");

    self:SetScript("OnEvent", FBI.OnEvent);

    bagupdateframe.fbframe = self;
    bagupdateframe:SetScript("OnUpdate", function(self, ...)
        if (self.fbframe) then
            self:StartInventory()
            self:Hide();
            if not self.firsttime then
                if not FL:IsClassic() then
                    if C_Calendar.OpenCalendar then
                        C_Calendar.OpenCalendar()
                    else
                        OpenCalendar()
                    end
                end
                FBI:RunHandlers(FBConstants.FIRST_UPDATE_EVT);
                FBI:WatchUpdate();
                self.firsttime = true
            end
        end
    end);

    FBI:RegisterHandlers(CaptureEvents);

    -- Set up command
    SlashCmdList["fishingbuddy"] = FBEnvironment.Command;
    SLASH_fishingbuddy1 = "/fishingbuddy";
    SLASH_fishingbuddy2 = "/fb";

    FL:RegisterAddonMessagePrefix(FBConstants.MSGID)
end

function FBI:PrintHelp(tab)
    if ( tab ) then
        if ( type(tab) == "table" ) then
            for _,line in pairs(tab) do
                FBI.PrintHelp(line);
            end
        else
            -- check for a reference to another help item
            local _,_,w = string.find(tab, "^@([A-Z0-9_]+)$");
            if ( w and FBConstants[w] ) then
                FBI:PrintHelp(FBConstants[w]);
            else
                FBI:Output(tab);
            end
        end
    end
end

FBI.FishSort = function(tab, forcename)
    if ( forcename or not FBI:GetSettingBool("SortByPercent") ) then
        table.sort(tab, function(a,b) return (a.index and b.index and a.index<b.index) or
                                                         (a.text and b.text and a.text<b.text); end);
    else
        table.sort(tab, function(a,b) return a.count and b.count and b.count<a.count; end);
    end
end

local function nocase (s)
    s = string.gsub(s, "%a", function (c)
                                         return string.format("[%s%s]", string.lower(c),
                                                 string.upper(c))
                                     end)
    return s
end

function FBI:StripRaw(fishie)
    if ( fishie ) then
        local raw = nocase(FBConstants.RAW);
        local s,e = string.find(fishie, raw.." ");
        if ( s ) then
            if ( s > 1 ) then
                fishie = string.sub(fishie, 1, s-1)..string.sub(fishie, e+1);
            else
                fishie = string.sub(fishie, e+1);
            end
        else
            s,e = string.find(fishie, " "..raw);
            if ( s ) then
                fishie = string.sub(fishie, 1, s-1)..string.sub(fishie, e+1);
            end
        end
        return fishie;
    end
    -- this means an import failed somewhere
    return UNKNOWN;
end

function FBI:ToggleDropDownMenu(level, value, menu, anchor, xOffset, yOffset)
    ToggleDropDownMenu(level, value, menu, anchor, xOffset, yOffset);
    if (not level) then
        level = 1;
    end
    local anchorName;
    if ( type(anchor) == "string" ) then
        anchorName = anchor;
    else
        anchorName = anchor:GetName();
    end
    local frame = _G["DropDownList"..level];
    local uiScale = UIParent:GetScale()
    if ( frame:GetRight() > ( GetScreenWidth()*uiScale ) ) then
        if ( anchorName == "cursor" ) then
            if ( not xOffset ) then
                xOffset = 0;
            end
            if ( not yOffset ) then
                yOffset = 0;
            end
            local cursorX, cursorY = GetCursorPosition();
            xOffset = -cursorX + xOffset;
            yOffset = cursorY + yOffset;
        else
            if ( not xOffset or not yOffset ) then
                xOffset = 8;
                yOffset = 22;
            end
        end
        frame:ClearAllPoints();
        frame:SetPoint("TOPRIGHT", anchorName, "BOTTOMLEFT", -xOffset, yOffset);
    end
    if ( frame:GetBottom() < 0 ) then
        frame:ClearAllPoints();
        frame:SetPoint("BOTTOMRIGHT", anchorName, "BOTTOMLEFT", -xOffset, yOffset);
    end
end

function FBI:EnglishList(list, conjunction)
    if ( list ) then
        local n = table.getn(list);
        local str = "";
        for idx=1,n do
            local name = list[idx];
            if ( idx == 1 ) then
                str = name;
            elseif ( idx == n ) then
                str = str .. ", ";
                if ( conjunction ) then
                    str = str .. conjunction;
                else
                    str = str .. "and";
                end
                str = str .. " " .. name;
            else
                str = str .. ", " .. name;
            end
        end
        return str;
    end
end

function FBI:QuestFishAlert(fishId, postfix)
	if not self.FishAlertSystem then
		local function fish_setup(frame, id, postfix)
            local info = FishingBuddy_Info["Fishies"][id]
            msg = info[CurLoc]
            if postfix then
                msg = msg.." "..postfix
            end
			frame.Title:SetText(FBConstants.CONFIG_DINGQUESTFISH_ONOFF)
			frame.Name:SetText(msg)
			frame.Icon.Texture:SetTexture(info.texture)
		end
		self.FishAlertSystem = AlertFrame:AddQueuedAlertFrameSubSystem("QuestFishDingTemplate", fish_setup, 2, 0)
	end
	self.FishAlertSystem:AddAlert(fishId, postfix)
end

function FBI:UIError(msg)
    -- Okay, this check is probably not necessary...
    if ( UIErrorsFrame ) then
        UIErrorsFrame:AddMessage(msg, 1.0, 0.1, 0.1, 1.0, UIERRORS_HOLD_TIME);
    else
        FBI:Error(msg);
    end
end

function FBI:Testing(line)
    if ( not FishingBuddy_Info["Testing"] ) then
        FishingBuddy_Info["Testing"] = {};
    end
    tinsert(FishingBuddy_Info["Testing"], line);
end

