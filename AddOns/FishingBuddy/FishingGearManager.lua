-- Interface with the Blizz Equipment Manager
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local FL = LibStub("LibFishing-1.0");

local function GetEquipmentSetInfoByName(name)
	local setId = C_EquipmentSet.GetEquipmentSetID(name);
	if (setId) then
		local n, iconFileID, setID, isEquipped, numItems, numEquipped, numInInventory, numLost, numIgnored = C_EquipmentSet.GetEquipmentSetInfo(setId);
		return iconFileID, setID, isEquipped, numItems, numEquipped, numInInventory, numLost, numIgnored;
	end
end

local function SaveEquipmentSet(name, icon)
	local setId = C_EquipmentSet.GetEquipmentSetID(name);
	if (setId) then
		C_EquipmentSet.SaveEquipmentSet(setId, icon);
	else
		C_EquipmentSet.CreateEquipmentSet(name, icon);
	end
end

local function DeleteEquipmentSet(name)
	local setId = C_EquipmentSet.GetEquipmentSetID(name);
	if (setId) then
		C_EquipmentSet.DeleteEquipmentSet(setId);
	end
end

local function EquipSetByName(name)
	local setId = C_EquipmentSet.GetEquipmentSetID(name);
	if (setId) then
		EquipmentManager_EquipSet(setId);
	end
end

local lastOutfit;

local FB_TEMP_OUTFIT = "FB_TEMP_OUTFIT";
local FINAL_STATE = 4;
local gearframe = CreateFrame("Frame");
gearframe:Hide();
gearframe:SetScript("OnUpdate", function(self)
	-- FBI.Debug("gearframe state "..self.state);
	if ( self.state == 0 ) then
		local icon, idxm1 = GetEquipmentSetInfoByName(self.name);
		if ( not icon or self.force ) then
			-- make sure we're wearing everything we think we should be
			local wearing = 1;
			local mslot = GetInventorySlotInfo("MainHandSlot");
			for invslot,info in pairs(self.outfit) do
				local link = GetInventoryItemLink("player", invslot);
				-- FBI.Debug("link "..link.." "..info.link);
				if (link ~= info.link) then
					wearing = nil;
				end
				if (not self.maintexture) then
					if (mslot == invslot) then
						local t = FL:GetItemInfo(info.link, FL.ITEM_LINK);
						self.maintexture = gsub( strupper(t), "INTERFACE\\ICONS\\", "" );
						-- FBI.Debug("texture "..self.maintexture);
					end
				end
			end

			-- Are we wearing everything?
			if (wearing) then
				SaveEquipmentSet(self.name, self.maintexture);
				self.state = 1;
			end
		else
			self.state = FINAL_STATE;
		end
	elseif ( self.state == 1 ) then
		-- we have to save it again, after setting the ignore slots
		for slot=1,17 do
			C_EquipmentSet.IgnoreSlotForSave(slot);
		end
		for invslot,_ in pairs(self.outfit) do
			C_EquipmentSet.UnignoreSlotForSave(invslot);
		end
		SaveEquipmentSet(self.name, self.maintexture);

		-- reset slot ignore flags
		local icon, _ = GetEquipmentSetInfoByName(FB_TEMP_OUTFIT);
		if ( icon ) then
			EquipSetByName(FB_TEMP_OUTFIT);
			self.state = 2;
			self.nextstate = 3;
		else
			self.state = FINAL_STATE;
		end
	elseif ( self.state == 2 ) then
		-- waiting for EQUIPMENT_SWAP_FINISHED
	elseif (self.state == 3) then
		local icon, _ = GetEquipmentSetInfoByName(FB_TEMP_OUTFIT);
		if ( icon ) then
			DeleteEquipmentSet(FB_TEMP_OUTFIT);
		end
		self.state = FINAL_STATE;
	else
		self.force = nil;
		self:Hide();
	end
end)

gearframe:SetScript("OnEvent", function(self,...)
	self.state = self.nextstate;
end)
gearframe:RegisterEvent("EQUIPMENT_SWAP_FINISHED");

local function PrepGearFrame(name, outfit, force)
	gearframe.laststate = -1;
	gearframe.name = name;
	gearframe.state = 0;
	gearframe.outfit = outfit;
	FBI.Dump(gearframe.outfit)
	gearframe.force = force;
	gearframe.maintexture = nil;
	gearframe:Show();
end

local function GearManagerInitialize(force)
	local known, name = FL:GetFishingSpellInfo();
	if ( known ) then
		if (force) then
			-- FBI.Debug("GearManagerInitialize forced");
		end
		-- FBI.Debug("GearManagerInitialize name "..FBConstants.NAME);
		local icon, setId = GetEquipmentSetInfoByName(FBConstants.NAME);
		if ( icon ) then
			-- Validate outfit, CurseForge bug #218
			local itemArray = C_EquipmentSet.GetEquipmentSetIDs(setId);
			-- If there is a Ranged slot, nuke this outfit
			-- FBI.Dump(itemArray)
			if (itemArray[18] and itemArray[18] ~= 0) then
				force = true;
			end
		end
		if ( not icon or force ) then
			-- Let's build a fishing outfit
			-- but we actually have to equip the items for this to work
			-- let's save what we have on now...
			C_EquipmentSet.ClearIgnoredSlotsForSave();
			SaveEquipmentSet(FB_TEMP_OUTFIT, 1);
			local outfit = FL:GetFishingOutfitItems(false, false) or {};
			for invslot,info in pairs(outfit) do
				EquipItemByName(info.link, invslot);
			end  -- for bags
			-- let's save this puppy
			PrepGearFrame(FBConstants.NAME, outfit, force);
		end
	end
	-- we can (and need to) reinitialize every time we're selected
	return false;
end

local function GuessCurrentOutfit()
	local ret = {};
	local numsets = C_EquipmentSet.GetNumEquipmentSets();
	for set = 0, numsets-1 do
		ret[set+1] = 0;
		local location_array = C_EquipmentSet.GetItemLocations(set);
		if (location_array) then
			for _,location in pairs(location_array) do
				local onplayer, _, bags, _, _, _ = EquipmentManager_UnpackLocation(location);
				if onplayer and not bags then
					ret[set+1] = ret[set+1] + 1;
				end
			end
		end
	end
	local best_set = 1;
	local best_value = 0;
	for i = 1, #ret do
		if (best_value < ret[i]) then
			best_value = ret[i];
			best_set = i-1;
		end
	end
	local best_name, _, _ = C_EquipmentSet.GetEquipmentSetInfo(best_set);
	return best_name;
end

local function GetCurrentOutfit()
	local setId = PaperDollFrame.EquipmentManagerPane.selectedSetID;
	if ( setId ) then
		local name = C_EquipmentSet.GetEquipmentSetInfo(setId);
		return name;
	end
	if ( C_EquipmentSet.GetNumEquipmentSets() == 0 ) then
        return nil; -- there are no gear sets, give up
    end
	-- no gear set active, take best fit
	return GuessCurrentOutfit();
end

local function GearManagerSwitch(outfitName)
	local GSB = function(...) return FBI:GetSettingBool(...); end;
	if ( FL:IsFishingReady(GSB("PartialGear")) ) then
		local name = FishingBuddy_Info["LastGearSet"];
		if ( not name ) then
			name = GetCurrentOutfit();
		end
		EquipSetByName(name);
		FishingBuddy_Info["LastGearSet"] = nil;
		return false;
	else
		local icon, setId = GetEquipmentSetInfoByName(FBConstants.NAME);
		if ( icon ) then
			FishingBuddy_Info["LastGearSet"] = GetCurrentOutfit();
			EquipmentManager_EquipSet(setId);
			return true;
		end
	end
	-- return nil;
end

local function OutfitPoints(outfit)
	local sp = 0;
	local bp = 0;
	if ( outfit )then
		local isp = FBEnvironment.OutfitManager.ItemStylePoints;
		local ibp = function(link) return FL:FishingBonusPoints(link); end;
		local items = GetEquipmentSetLocations(outfit);
		for _,loc in pairs(items) do
			local bags, bag, slot
			_, _, bags, _, slot, bag = EquipmentManager_UnpackLocation(loc);
			local link;
			if ( not bags ) then -- and (player or bank)
				link = GetInventoryItemLink("player", slot);
			else -- bags
				link = GetContainerItemLink(bag, slot);
			end
			if ( link ) then
				_, link, _ = FL:SplitLink(link);
				sp = sp + isp(link);
				bp = bp + ibp(link);
			end
		end
	end
	return bp, sp;
end

local Saved_GearSetButton_OnEnter = GearSetButton_OnEnter;
local function Patch_GearSetButton_OnEnter(self)
	Saved_GearSetButton_OnEnter(self);
	local _, name = FL:GetFishingSpellInfo();
	if ( self.name and self.name == FBConstants.NAME ) then
		local bp, sp = OutfitPoints(self.name)
		if ( bp >= 0 ) then
			bp = "+"..bp;
		else
			bp = 0 - bp;
			bp = "-"..bp;
		end
		bp = name.." "..bp;
		local pstring;
		if ( sp == 1 ) then
			pstring = FBConstants.POINT;
		else
			pstring = FBConstants.POINTS;
		end
		GameTooltip:AddDoubleLine(SKILL..": "..bp, "Draznar: "..sp.." "..pstring, 1, 1, 1, 1, 1, 1);
		GameTooltip:Show();
	end
end
-- point to our new function so we get our own tooltip
GearSetButton_OnEnter = Patch_GearSetButton_OnEnter;

FBEnvironment.OutfitManager.RegisterManager(EQUIPMENT_MANAGER,
											GearManagerInitialize,
											function(useme) end,
											GearManagerSwitch);

