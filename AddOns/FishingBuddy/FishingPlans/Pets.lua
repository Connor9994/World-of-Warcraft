
-- Pets
--
-- Handle bringing out pets while we fish.
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local FL = LibStub("LibFishing-1.0")
local LibPetJournal = LibStub("LibPetJournal-2.0")
local FSF = FBI.FSF

local PETSETTING = "FishingPetBuddies";
local MENUNAME = "FishingPets";

-- Pet menu constants
local PET_NONE = -1;
local PET_FISHING = -2;
local PET_ALL = -3;
local RAFT_RESET_TIME = 60;

-- the creature ids for the fishing pets
local FISHINGPETS = {};
FISHINGPETS[18839] = -1; -- Magical Crawdad
FISHINGPETS[26050] = -1; -- Snarly
FISHINGPETS[26056] = -1; -- Chuck
FISHINGPETS[24388] = -1; -- Toothy
FISHINGPETS[24389] = -1; -- Muckbreath
FISHINGPETS[31575] = -1; -- Giant Sewer Rat
FISHINGPETS[33226] = -1; -- Strand Crawler
FISHINGPETS[55386] = -1; -- Sea Pony
FISHINGPETS[63559] = -1; -- Tiny Goldfish
FISHINGPETS[70257] = -1; -- Tiny Red Carp
FISHINGPETS[70258] = -1; -- Tiny Blue Carp
FISHINGPETS[70259] = -1; -- Tiny Green Carp
FISHINGPETS[70260] = -1; -- Tiny White Carp
FISHINGPETS[84441] = -1; -- Sea Calf
FISHINGPETS[86445] = -1; -- Land Shark
FISHINGPETS[126579] = -1; -- Ghost Shark

-- since we can't just do #FISHINGPETS
local NUM_FISHINGPETS = FL:tablecount(FISHINGPETS);

-- Debugging
FBI.FISHINGPETS = FISHINGPETS;

-- wrap settings
local FBGetSetting = function(...) return FBI:GetSetting(...); end;
local FBGetSettingBool = function(...) return FBI:GetSettingBool(...); end;

local function GetSettingBool(setting)
	if (FBGetSettingBool("FishingFluff")) then
		return FBGetSettingBool(setting);
	end
	-- return nil;
end

local function GetSetting(setting)
	if (FBGetSettingBool("FishingFluff")) then
		return FBGetSetting(setting);
	end
	-- return nil;
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

local resetPet = nil;

local menupets = {};
local FISHINGCREATURES = {}

local function HandlePetsUpdate()
	local petmap = {};

	menupets = {}
	FISHINGCREATURES = {}
    for _,petid in LibPetJournal:IteratePetIDs() do
        local speciesID, customName, level, xp, maxXp, displayID,
              isFavorite, name, icon, petType, creatureID,
              sourceText, description, isWild, canBattle,
              tradable, unique, obtainable = C_PetJournal.GetPetInfoByPetID(petid)
		local addit = not petmap[creatureID];
		if (customName) then
			name = customName;
			addit = true;
		end
		if (addit) then
			tinsert(menupets, { ["name"]=name, ["setting"]=PETSETTING, ["value"]=petid })
			petmap[creatureID] = petid;
		end
		if (FISHINGPETS[creatureID] and addit) then
			FISHINGCREATURES[petid] = 1
		end
    end
end

local function DoPetReset(pet)
    if (not FL:InCombat()) then
        if ( pet ) then
            C_PetJournal.SummonPetByGUID(pet);
        elseif (FBI:GetSetting(PETSETTING) ~= PET_NONE) then
            local nowpet = C_PetJournal.GetSummonedPetGUID();
            if ( nowpet ) then
                C_PetJournal.SummonPetByGUID(nowpet);
            end
        end
        return true
    end
end

local function GetMenuData()
	local simple = {}
	tinsert(simple, { ["name"] = NONE, ["setting"] = PETSETTING, ["value"] = PET_NONE, ["none"] = true, ["menutext"] = NONE });
	tinsert(simple, { ["name"] = ALL, ["setting"] = PETSETTING, ["value"] = PET_ALL, ["all"] = true, ["menutext"] = ALL });
	tinsert(simple, { ["name"] = PROFESSIONS_FISHING, ["setting"] = PETSETTING, ["valueset"] = FISHINGCREATURES, ["value"] = PET_FISHING, ["menutext"] = PROFESSIONS_FISHING })
	local complex = {}
	tinsert(complex, { ["menutext"] = PET_PAPERDOLL, ["setting"] = PETSETTING, ["value"] = menupets })

	return simple, complex
end

local function FishingPets_OnShow(scrollmenu)
	local simple, complex = GetMenuData()
	FSF:UpdateScrollMenu(scrollmenu, simple, complex)
end

local PetOptions = {
    [PETSETTING] = {
        ["tooltip"] = FBConstants.CONFIG_FishingBuddy_INFO,
        ["visible"] =
            function(option)
                local numPets, numOwned = C_PetJournal.GetNumPets(false);
                if (numOwned > 0) then return 1; end;
            end,
        ["button"] = MENUNAME,
        ["margin"] = { 4, 4 },
        ["parents"] = { ["FishingFluff"] = "h", },
        ["default"] = PET_FISHING,
    },
}

local PetEvents = {}
local function StartFishingPets()
    -- only do the fluff stuff if we're actually wearing any fishing gear
    -- we don't do this stuff if we're "no pole equipped" fishing
    if FL:InCombat() or #menupets == 0 then
        return
    end

	local petsetting = FBI:GetSetting(PETSETTING)
	if (petsetting == nil) then
		-- timing issue if we start off fishing. Hrm.
		petsetting = PET_NONE
	end
    if ( petsetting ~= PET_NONE and
        FBI:ReadyForFishing() and not FL:InCombat()) then
        if ( not (IsFlying() or IsMounted() ) ) then
            local nowpet = C_PetJournal.GetSummonedPetGUID();
			local petid = nowpet;
			local idx
			if ( petsetting == PET_ALL ) then
				idx = random(1, #menupets);
				petid = menupets[idx].value
			else
				local choosefrom = {}
				if ( petsetting == PET_FISHING ) then
					choosefrom = unwind(FISHINGCREATURES)
				else
					choosefrom = petsetting
                end
                if #choosefrom > 0 then
                    idx = random(1, #choosefrom);
                    if (idx > 0) then
                        petid = choosefrom[idx]
                    end
                end
			end

			if ( petid and petid ~= nowpet ) then
                resetPet = nowpet;
                C_PetJournal.SummonPetByGUID(petid);
            end
        end
    end
end

PetEvents[FBConstants.LOGIN_EVT] = function()
	if ( FishingBuddy_Player ) then
		if ( FishingBuddy_Player["ResetPet"] ) then
			DoPetReset(FishingBuddy_Player["ResetPet"]);
			FishingBuddy_Player["ResetPet"] = nil;
		end
	end
end

PetEvents[FBConstants.LOGIN_EVT] = function()
	if ( FishingBuddy_Player ) then
		if ( FishingBuddy_Player["ResetPet"] ) then
			DoPetReset(FishingBuddy_Player["ResetPet"]);
			FishingBuddy_Player["ResetPet"] = nil;
		end
	end
end

PetEvents["VARIABLES_LOADED"] = function(started)
	HandlePetsUpdate();
	LibPetJournal.RegisterCallback(FBConstants.ID, "PetListUpdated", HandlePetsUpdate)

	local simple, complex = GetMenuData()
	local scrollmenu = FSF:CreateScrollMenu(MENUNAME, FBConstants.PETS, simple, complex)

    FBI.OptionsFrame.HandleOptions(FBConstants.CONFIG_FISHINGFLUFF_ONOFF, "Interface\\Icons\\inv_misc_food_164_fish_seadog", PetOptions);
end

EventRegistry:RegisterCallback(FBConstants.FISHING_ENABLED_EVT, StartFishingPets)
EventRegistry:RegisterCallback(FBConstants.FISHING_DISABLED_EVT, function(started, logout)
	if ( logout ) then
		FishingBuddy_Player["ResetPet"] = resetPet;
	else
        if (DoPetReset(resetPet)) then
            resetPet = nil;
        end
	end
end)

FBI:RegisterHandlers(PetEvents);
