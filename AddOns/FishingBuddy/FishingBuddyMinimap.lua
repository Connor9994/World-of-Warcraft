-- Minimap Button Handling
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

FBI.Minimap = {};

local FL = LibStub("LibFishing-1.0");

local icon = LibStub("LibDBIcon-1.0");
local broker = LibStub:GetLibrary("LibDataBroker-1.1")

local GSB = function(...) return FBI:GetSettingBool(...); end;

local function Minimap_OnClick(self, button, down)
	if ( button == "RightButton" ) then
		FBI:ToggleFishingBuddyFrame("FishingOptionsFrame");
	elseif ( FBI:IsSwitchClick("MinimapClickToSwitch") ) then
		FBI:Command(FBConstants.SWITCH);
	else
		FBI:ToggleFishingBuddyFrame("FishingLocationsFrame");
	end
end

local MinimapOptions = {
	["MinimapButtonVisible"] = {
		["text"] = FBConstants.CONFIG_MINIMAPBUTTON_ONOFF,
		["tooltip"] = FBConstants.CONFIG_MINIMAPBUTTON_INFO,
		["v"] = 1,
		["default"] = false,
	},
	["MinimapClickToSwitch"] = {
		["text"] = FBConstants.CLICKTOSWITCH_ONOFF,
		["tooltip"] = FBConstants.CLICKTOSWITCH_INFO,
		["v"] = 1,
		["default"] = false,
		["parents"] = { ["MinimapButtonVisible"] = "d", },
	},
};

local function setter(setting, value)
	if (setting == "MinimapButtonVisible") then
		FishingBuddy_Player["MinimapData"].hide = (not value);
	else
		FBI:OptionSetSetting(setting, value);
	end
end

local function getter(setting)
	if (setting == "MinimapButtonVisible") then
		if (not FishingBuddy_Player["MinimapData"].hide) then
			return true;
		else
			return false;
		end
	else
		return FBI:OptionGetSetting(setting);
	end
end

local MinimapEvents = {};
MinimapEvents[FBConstants.OPT_UPDATE_EVT] = function()
	if (icon:IsRegistered(FBConstants.NAME)) then
		FishingBuddy_Player["MinimapData"].hide = not GSB("MinimapButtonVisible");
		icon:Refresh(FBConstants.NAME, FishingBuddy_Player["MinimapData"]);
	end
end

MinimapEvents["VARIABLES_LOADED"] = function()
	local _, info;

	if ( not FishingBuddy_Player["MinimapData"] ) then
		FishingBuddy_Player["MinimapData"] = { hide=false };
	end

	-- Fix Curse bug #246
	if ( not FishingBuddy_Player["MinimapData"].minimapPos ) then
		FishingBuddy_Player["MinimapData"]["minimapPos"] = 225;
	end

	if ( not icon:IsRegistered(FBConstants.NAME) ) then
		local data = {
				icon = "Interface\\Icons\\Trade_Fishing",
				OnClick = Minimap_OnClick,
			};

		icon:Register(FBConstants.NAME, data, FishingBuddy_Player["MinimapData"]);
	end
end

FBI.OptionsFrame.HandleOptions(GENERAL, nil, MinimapOptions, setter, getter);
FBI:RegisterHandlers(MinimapEvents);
