-- Bobbers
--
-- Handle applying a special bobber to our fishing pole.
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local FL = LibStub("LibFishing-1.0");

local CurLoc = GetLocale();
local PLANS = FBI.FishingPlans;

local BOBBER_NONE = -1;
local BOBBER_ALL = -2;
local BOBBER_OVERSIZE = -3;

local BOBBERSETTING = "SpecialBobbers";
local MENUNAME = "FishingBobbers";

-- test planning
-- Special bobbers
local BigBobbers = {}
BigBobbers[136377] = {
	["enUS"] = "Oversized Bobber",
	spell = 207700,
}

local Bobbers = {}
Bobbers[142531] = {
	["enUS"] = "Duck Bobber",
	spell = 231341,
	toy = 1,
};
Bobbers[142532] = {
	["enUS"] = "Murloc Bobber",
	spell = 231349,
	toy = 1,
};
Bobbers[143662] = {
	["enUS"] = "Wooden Pepe Bobber",
	spell = 232613,
	toy = 1,
};
Bobbers[142530] = {
	["enUS"] = "Tugboat Bobber",
	spell = 231338,
	toy = 1,
};
Bobbers[142529] = {
	["enUS"] = "Toy Cat Head Bobber",
	spell = 231319,
	toy = 1,
};
Bobbers[142528] = {
	["enUS"] = "Can of Worms Bobber",
	spell = 231291,
	toy = 1,
};
Bobbers[147309] = { -- Keeper Raynae, 120456
	["enUS"] = "Face of the Forest",
	spell = 240806,
	toy = 1,
};
Bobbers[147310] = { -- Akule Riverhorn, 120457
	["enUS"] = "Floating Totem",
	spell = 240802,
	toy = 1,
};
Bobbers[147307] = { -- Corbyn, 120458
	["enUS"] = "Carved Wooden Helm",
	spell = 240803,
	toy = 1,
};
Bobbers[147311] = { -- Sha'leth, 120459
	["enUS"] = "Replica Gondola",
	spell = 240804,
	toy = 1,
};
Bobbers[147312] = { -- Impus, 120460
	["enUS"] = "Demon Noggin",
	spell = 240801,
	toy = 1,
};
Bobbers[147308] = { -- Ilyssia of the Waters, 120266
	["enUS"] = "Enchanted Bobber",
	spell = 240800,
	toy = 1,
};
Bobbers[180993] = { -- Forgotten Angler's Rod
	["enUS"] = "Bat Visage",
	spell = 335484,
	toy = 1,
};

local NUM_BOBBERS = FL:tablecount(Bobbers);

local chosenbobbers = {};
local chosenlist = {};
local numchosen = 0;
local bobberkeys = FL:keytable(Bobbers)

local GSB = function(...) return FBI:GetSettingBool(...); end;
local GSR = function(...) return FBI:GetSetting(...); end;

local function GetSpecialBobberBuff()
    for id,info in pairs(Bobbers) do
        if (FL:HasBuff(info.spell)) then
            return id, info
        end
    end
end

local function ClearSpecialBobberBuffs()
	local id, info = GetSpecialBobberBuff()
	if (info) then
		CancelUnitBuff("player", info.spell)
	end
end

local function PickRandomBobber(bobbersetting)
	local baits = {};
	for _,id in ipairs(bobbersetting) do
		if (PlayerHasToy(id) and C_ToyBox.IsToyUsable(id)) then
			if not PLANS:ItemCooldownOn(id) then
				_, id = C_ToyBox.GetToyInfo(id);
				tinsert(baits, id);
			end
		end
	end
	if (#baits > 0) then
		return baits[math.random(1, #baits)];
	end
	-- return nil
end

local function UseThisBobber(itemid, info)
	local canuse;
    if (info.toy) then
        canuse = false
		if (PlayerHasToy(itemid) and C_ToyBox.IsToyUsable(itemid)) then
			if not PLANS:ItemCooldownOn(itemid) then
                _, itemid = C_ToyBox.GetToyInfo(itemid);
                canuse = true
            end
        end
    else
        canuse = (GetItemCount(itemid) > 0)
	end
    if (canuse and not FL:HasBuff(info.spell)) then
        return info.spell, canuse
    end

    -- return nil
end

local function unwind(table)
	local unwound = {}
	if (table) then
		for id,_ in pairs(table) do
			tinsert(unwound, id)
		end
	end

	return unwound
end

local function SpecialBobberPlan()
    if ( not GSB("EasyLures") ) then
        return
    end
	if GSB(BigBobbers[136377].setting) then
		for id,bobber in pairs(BigBobbers) do
			if FL:HasBuff(bobber.spell) then
				return
			end

			local itemid, canuse = UseThisBobber(id, bobber);
			if canuse then
				ClearSpecialBobberBuffs()
				PLANS:AddEntry(itemid, bobber[CurLoc], "toy")
				return
			end
		end
	end

	local bobbersetting = GSR(BOBBERSETTING);
	if ( bobbersetting ~= BOBBER_NONE and not GetSpecialBobberBuff()) then
		-- We either don't want to use an oversized bobber, or we don't have any
		if (bobbersetting == BOBBER_ALL) then
			bobbersetting = bobberkeys
		end

		local itemid = PickRandomBobber(bobbersetting);
		if ( itemid ) then
			PLANS:AddEntry(itemid, nil, "toy")
		end
	end
end

local function BobberMenuOptions()
	local bobbers = {}
	for id,bobber in pairs(Bobbers) do
		tinsert(bobbers, {
			["name"] = bobber[CurLoc],
			["setting"] = BOBBERSETTING,
			["value"] = id
		})
	end
	local complex = {}
	tinsert(complex, { ["menutext"]=MAIL_MULTIPLE_ITEMS, ["setting"] = BOBBERSETTING, ["value"]=bobbers })
	return complex
end

-- If you select OversizeBobber, and you have one, you will always apply it.
-- Otherwise we'll look at the "bobber" options you've chosen and pick one for you.

local BobberOptions = {
	[BOBBERSETTING] = {
		["tooltip"] = FBConstants.CONFIG_SPECIALBOBBERS_INFO,
		["button"] = MENUNAME,
		["margin"] = { 4, 4 },
		["parents"] = { ["EasyLures"] = "d", },
		["default"] = BOBBER_NONE,
	},
}

local InvisibleOptions = {
	-- options not directly manipulatable from the UI
	["TooltipInfo"] = {
		["text"] = FBConstants.CONFIG_TOOLTIPS_ONOFF,
		["tooltip"] = FBConstants.CONFIG_TOOLTIPS_INFO,
		["default"] = false },
}

local BobberEvents = {}
BobberEvents["VARIABLES_LOADED"] = function(started)
	FBI:SetupSpecialItems(BigBobbers, true, true, true)
    FBI:SetupSpecialItems(Bobbers, false, true, true)
	PLANS:RegisterPlan(SpecialBobberPlan)

	local FSF = FBI.FSF
	local simple = {}
	tinsert(simple, { ["name"] = NONE, ["setting"] = BOBBERSETTING, ["value"] = BOBBER_NONE, ["none"] = true, ["menutext"] = NONE });
	tinsert(simple, { ["name"] = ALL, ["setting"] = BOBBERSETTING, ["value"] = BOBBER_ALL, ["all"] = true, ["menutext"] = ALL });
	tinsert(simple, { ["name"] = BigBobbers[136377][CurLoc], ["setting"] = BigBobbers[136377].setting, ["value"] = true, ["bool"] = true });
	local complex = BobberMenuOptions()
	local scrollmenu = FSF:CreateScrollMenu(MENUNAME, APPLY, simple, complex)
	local _, name = FL:GetFishingSpellInfo();
	FBI.OptionsFrame.HandleOptions(name, "Interface\\Icons\\INV_Fishingpole_02", BobberOptions);
	local oversize = {}
	oversize[BigBobbers[136377].setting] = { ["default"] = false }
	FBI.OptionsFrame.HandleOptions(nil, nil, oversize);
end

FBI:RegisterHandlers(BobberEvents);

if ( FBI.Debugging ) then
	FBI.Commands["bobbers"] = {};
	FBI.Commands["bobbers"].func =
		function()
			local baits = {};
			for _,id in ipairs(bobberkeys) do
				if (PlayerHasToy(id) and C_ToyBox.IsToyUsable(id)) then
					if not PLANS:ItemCooldownOn(id) then
						_, id = C_ToyBox.GetToyInfo(id);
						tinsert(baits, id);
					end
				end
			end
			return true;
		end
end
