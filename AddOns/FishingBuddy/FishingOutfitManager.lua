-- Manage outfits, whether they're from OutfitDisplayFrame or something else
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

FBEnvironment.OutfitManager = {};

local FL = LibStub("LibFishing-1.0");

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

-- Inferred from Draznar's Fishing FAQ
local Accessories = {
	[19944] = { ["n"] = "Nat Pagle's Fish Terminator", ["score"] = 30, },
	[11152] = { ["n"] = "Formula: Enchant Gloves - Fishing", ["score"] = 2, },
	[19979] = { ["n"] = "Hook of the Master Angler", ["score"] = 5, },
	[19947] = { ["n"] = "Nat Pagle's Broken Reel", ["score"] = 4, },
	[19972] = { ["n"] = "Lucky Fishing Hat", ["score"] = 5, },
	[7996] = { ["n"] = "Lucky Fishing Hat", ["score"] = 10, },
	[33820] = { ["n"] = "Weather-Beaten Fishing Hat", ["score"] = 15, },
	[8749] = { ["n"] = "Crochet Hat", ["score"] = 3, },
	[19039] = { ["n"] = "Zorbin's Water Resistant Hat", ["score"] = 3, },
	[3889] = { ["n"] = "Russet Hat", ["score"] = 3, },
	[14584] = { ["n"] = "Dokebi Hat", ["score"] = 2, },
	[4048] = { ["n"] = "Emblazoned Hat", ["score"] = 1, },
	[10250] = { ["n"] = "Masters Hat of the Whale", ["score"] = 1, },
	[6263] = { ["n"] = "Blue Overalls", ["score"] = 4, },
	[9508] = { ["n"] = "Mechbuilder's Overalls", ["score"] = 3, },
	[3342] = { ["n"] = "Captain Sander's Shirt", ["score"] = 4, },
	[5107] = { ["n"] = "Deckhand's Shirt", ["score"] = 2, },
	[6795] = { ["n"] = "White Swashbuckler's Shirt", ["score"] = 1, },
	[2576] = { ["n"] = "White Linen Shirt", ["score"] = 1, },
	[15405] = { ["n"] = "Shucking Gloves", ["score"] = 3, },
	[6202] = { ["n"] = "Fingerless Gloves", ["score"] = 5, },
	[19969] = { ["n"] = "Nat Pagle's Extreme Anglin' Boots", ["score"] = 5, },
	[792] = { ["n"] = "Knitted Sandals", ["score"] = 4, },
	[1560] = { ["n"] = "Bluegill Sandals", ["score"] = 4, },
	[15406] = { ["n"] = "Crustacean Boots", ["score"] = 3, },
	[13402] = { ["n"] = "Timmy's Galoshes", ["score"] = 2, },
	[10658] = { ["n"] = "Quagmire Galoshes", ["score"] = 2, },
	[1678] = { ["n"] = "Black Ogre Kickers", ["score"] = 1, },
	[5310] = { ["n"] = "Sea Dog Britches", ["score"] = 4, },
	[3287] = { ["n"] = "Tribal Pants", ["score"] = 2, },
	[6179] = { ["n"] = "Privateer's Cape", ["score"] = 1, },
	[3567] = { ["n"] = "Dwarven Fishing Pole", ["score"] = 1, },
};

FBI.Commands[FBConstants.SWITCH] = {};
FBI.Commands[FBConstants.SWITCH].func = function()
		FBEnvironment.OutfitManager.Switch();
		return true;
	end;

FBEnvironment.OutfitManager.ItemStylePoints = function(itemno, enchant)
	local points = 0;
	if ( itemno ) then
		if ( not enchant ) then
			_,_, itemno, enchant = string.find(itemno, "^(%d+):(%d+)");
		end
		if ( not enchant ) then
			enchant = 0;
		end
		points = FL:FishingBonusPoints(itemno..":"..enchant);
		itemno = tonumber(itemno);
		if ( Accessories[itemno] ) then
			points = points + Accessories[itemno].score;
		end
	end
	return points;
end

local PoleCheck = nil;

local function WaitForUpdate(self, arg1)
	local hasPole = FBI:ReadyForFishing();
	if ( hasPole == PoleCheck ) then
		self:Hide();
		FBI:FishingMode("OutfitManager");
	end
end

local updateframe = CreateFrame("Frame");
updateframe:Hide();
updateframe:SetScript("OnUpdate", WaitForUpdate);

local function CheckSwitch(topole)
	PoleCheck = topole;
	updateframe:Show();
end

local OutfitManagers = {};
local OutfitManagerCount = 0;
local OutfitManagerFrame = FBI:CreateFBDropDownMenu("FBOutfitManager", "FBOutfitManagerMenu");

local function HasManager()
	return (OutfitManagerCount > 0);
end
FBEnvironment.OutfitManager.HasManager = HasManager;

FBEnvironment.OutfitManager.Switch = function(outfitname)
	if ( not FL:InCombat() and HasManager() ) then
		local outfitter = FBI:GetSetting("OutfitManager");
		if ( outfitter and OutfitManagers[outfitter] ) then
			local willBePole = OutfitManagers[outfitter].Switch(outfitname);
			if ( willBePole ~= nil ) then
				-- if we're now sporting a fishing pole, let's go fishing
				CheckSwitch(willBePole);
			end
		end
	else
		FBI:UIError(FBConstants.COMPATIBLE_SWITCHER);
	end
end

local current_manager;

FBEnvironment.OutfitManager.CurrentManager = function()
	return current_manager;
end

local function OutfitManagerMenuSetup()
	for manager,_ in pairs(OutfitManagers) do
		local mgr = manager;
		local info = {};
		info.text = manager;
		info.func = function() FBEnvironment.OutfitManager.ChooseManager(mgr); end;
		info.checked = ( current_manager == manager )
		UIDropDownMenu_AddButton(info);
	end
end

local function SetOutfitManagerDisplay()
	if ( OutfitManagerCount == 0 ) then
		OutfitManagerFrame.menu:Hide();
		OutfitManagerFrame.html:SetText(FBConstants.OUTFITS..": "..FL:Red(FBConstants.NONEAVAILABLE_MSG));
		OutfitManagerFrame.html:Show();
		OutfitManagerFrame:SetWidth(OutfitManagerFrame.html:GetWidth());
		OutfitManagerFrame:SetHeight(OutfitManagerFrame.html:GetHeight());
	elseif ( OutfitManagerCount == 1 ) then
		OutfitManagerFrame.menu:Hide();
		OutfitManagerFrame.html:SetText(FBConstants.OUTFITS..": "..FL:Green(current_manager));
		OutfitManagerFrame.html:Show();
		OutfitManagerFrame:SetWidth(OutfitManagerFrame.html:GetWidth());
		OutfitManagerFrame:SetHeight(OutfitManagerFrame.html:GetHeight());
	else
		OutfitManagerFrame.html:Hide();
		UIDropDownMenu_Initialize(OutfitManagerFrame.menu, OutfitManagerMenuSetup);
		local idx = 1;
		local show = 1;
		local menuwidth = 0;
		for name,_ in pairs(OutfitManagers) do
			if ( name == current_manager ) then
				show = idx;
			end
			OutfitManagerFrame.menu.label:SetText(name);
			local width = OutfitManagerFrame.menu.label:GetWidth();
			if (width > menuwidth) then
				menuwidth = width;
			end
			idx = idx + 1;
		end

		UIDropDownMenu_SetWidth(OutfitManagerFrame.menu, menuwidth + 32);
		UIDropDownMenu_SetSelectedValue(OutfitManagerFrame.menu, show);
		UIDropDownMenu_SetText(OutfitManagerFrame.menu, current_manager);
		OutfitManagerFrame:SetLabel(FBConstants.OUTFITS..": ");
	end
end

local function ChooseManager(manager)
	if ( manager and OutfitManagers[manager] ) then
		current_manager = manager;
		if ( not OutfitManagers[manager].initialized ) then
			local check = OutfitManagers[manager].Initialize();
			OutfitManagers[manager].initialized = check or (check == nil);
		end
		FBI:SetSetting("OutfitManager", current_manager);
		for om,info in pairs(OutfitManagers) do
			info.Choose(om == manager);
		end
		SetOutfitManagerDisplay();
		return true;
	end
end
FBEnvironment.OutfitManager.ChooseManager = ChooseManager;

FBEnvironment.OutfitManager.RegisterManager = function(name, init, choose, switch)
	if ( not OutfitManagers[name] ) then
		OutfitManagers[name] = {};
		OutfitManagers[name].Name = name;
		OutfitManagerCount = OutfitManagerCount + 1;
	end
	OutfitManagers[name].Initialize = init;
	OutfitManagers[name].Choose = choose;
	OutfitManagers[name].Switch = switch;

	local cm = FBI:GetSetting("OutfitManager");
	choose(cm and (cm == name));
end

local function UpdateManagers()
	if ( OutfitManagerCount == 1 ) then
		-- we pretty much have to use this one
		current_manager = next(OutfitManagers);
	else
		current_manager = FBI:GetSetting("OutfitManager");
		if ( not current_manager or not OutfitManagers[current_manager] ) then
			-- if nothing has ever been selected, default to ODF
			if ( OutfitManagers["OutfitDisplayFrame"] ) then
				current_manager = "OutfitDisplayFrame";
			else
				-- no valid ones, use the default one
				current_manager = "None";
			end
		end
	end
	ChooseManager(current_manager);
	-- in case we changed things (do we want/need to do this?)
	-- FBI:SetSetting("OutfitManager", current_manager);

	-- add these to the general options frame
	SetOutfitManagerDisplay();

	-- no outfit managers, no outfit switching
	if ( not HasManager() ) then
		FBI:SetSetting("ClickToSwitch", 0);
		FBI:SetSetting("MinimapClickToSwitch", 0);
	end
end

local OutfitOptions = {
	["OutfitManager"] = {
		["margin"] = { 12, 4 },
		["button"] = "FBOutfitManager",
		["setup"] =  UpdateManagers,
	},
}

local OMEvents = {};
OMEvents["VARIABLES_LOADED"] = function()
	FBI.OptionsFrame.HandleOptions(GENERAL, nil, OutfitOptions);
end

OMEvents[FBConstants.FRAME_SHOW_EVT] = UpdateManagers;

FBI:RegisterHandlers(OMEvents);

-- debugging
FBEnvironment.OutfitManagers = OutfitManagers;

FBEnvironment.OutfitManager.RegisterManager(NONE_KEY,
											function() end,
											function(useme) end,
											function(o) end);
