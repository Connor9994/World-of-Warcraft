-- Interface with the Outfitter addon by mundocani

if ( Outfitter and Outfitter.OnLoad ) then

local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

local FL = LibStub("LibFishing-1.0");

-- 5.0.4 has a problem with a global "_" (see some for loops below)
local _

local function OutfitterSwitch(outfitName)
	-- this uses a static string of "Fishing" *not* the translation
	local vOut, vCat, _ = Outfitter:FindOutfitByName(Outfitter.cFishingOutfit);
	if ( not vOut ) then
		local _, sname = FL:GetFishingSpellInfo();
		vOut, vCat, _ = Outfitter:FindOutfitByName(sname);
	end
	if ( vOut ) then
		local wasPole = FBI:ReadyForFishing();
		if ( wasPole ) then
			Outfitter:RemoveOutfit(vOut);
		else
			vOut.Disabled = nil;
			Outfitter:WearOutfit(vOut, vCat);
		end
		Outfitter:Update(true);
		-- return true if we're expecting to have a pole equipped
		return (not wasPole);
	end
end

local function RemoveOldOutfits()
	local vName = "Fishing Buddy";
	-- nuke all of the outfits named 'Fishing Buddy' since they're
	-- likely wrong, so that we can create a new 'good' one
	local vOut,_,_ = Outfitter:FindOutfitByName(vName);
	while ( vOut and not vOut.StoredInEM ) do
		Outfitter:DeleteOutfit(vOut);
		vOut,_,_ = Outfitter:FindOutfitByName(vName);
	end
end

local function WaitForOutfitter()
	if ( Outfitter and Outfitter:IsInitialized() ) then
		FishingOutfitterFrame:Hide();
		-- throw any of these that exist away and make a new one
		RemoveOldOutfits();
		-- create the default fishing outfit, if it doesn't exist
		local vOutfit,_,_ = Outfitter:FindOutfitByName(Outfitter.cFishingOutfit);
		local outfit = FL:GetFishingOutfitItems(true);
		if ( not vOutfit and outfit ) then
			vOutfit = Outfitter:NewEmptyOutfit();
			for _,item in pairs(outfit) do
				local pItemInfo = Outfitter:GetItemInfoFromLink(item.link)
				vOutfit:AddItem(item.slotname, pItemInfo)
			end
			vOutfit.Name = Outfitter.cFishingOutfit;
			vOutfit.StatConfig = {{StatID = "FISHING"}};
			local vCategoryID = Outfitter:AddOutfit(vOutfit);
			-- we're done
		end
	end
end
FBEnvironment.OutfitManager.WaitForOutfitter = WaitForOutfitter;

local outfitterOutfitDone = false;
local function OutfitterInitialize()
	if ( not outfitterOutfitDone ) then
		outfitterOutfitDone = true;
		FishingOutfitterFrame:Show();
	end
end

-- calculate scores based on Outfitter
local function StylePoints(outfit)
	local isp = FBEnvironment.OutfitManager.ItemStylePoints;
	local points = 0;
	if ( outfit )then
		for slot in pairs(outfit.Items) do
			points = points + isp(outfit.Items[slot].Code,
										 outfit.Items[slot].EnchantCode);
		end
	end
	return points;
end

local function BonusPoints(outfit, vStatID)
	local points = 0;
	if ( outfit )then
		for _,item in pairs(outfit.Items) do
			if ( item and item.Link ) then
				points = points + FL:FishingBonusPoints(item.Link);
			end
		end
	end
	return points;
end

local Saved_Outfitter_ShowOutfitTooltip = Outfitter.ShowOutfitTooltip;
local function Patch_ShowOutfitTooltip(self, pOutfit, pOwner, pMissingItems, pBankedItems, pShowEmptyTooltips, pTooltipAnchor)
	Saved_Outfitter_ShowOutfitTooltip(self, pOutfit, pOwner, pMissingItems, pBankedItems, pShowEmptyTooltips, pTooltipAnchor);
	if ((pOutfit.StatID and pOutfit.StatID == "FISHING") or
		(pOutfit.StatConfig and pOutfit.StatConfig[1] and pOutfit.StatConfig[1].StatID == "FISHING")) then
		local vDescription;
		local bp = BonusPoints(pOutfit, "FISHING");
		if ( bp >= 0 ) then
			bp = "+"..bp;
		else
			bp = 0 - bp;
			bp = "-"..bp;
		end
		bp = Outfitter.LibStatLogic:GetStatNameFromID("FISHING").." "..bp;
		local sp = StylePoints(pOutfit);
		local pstring;
		if ( sp == 1 ) then
			pstring = FBConstants.POINT;
		else
			pstring = FBConstants.POINTS;
		end
		vDescription = string.format(FBConstants.CONFIG_OUTFITTER_TEXT, bp, sp)..pstring;
		if (self:GetOutfitDescription(pOutfit)) then
			GameTooltip:AddLine(vDescription, 1, 1, 1)
		else
			GameTooltip:SetOwner(pOwner, pTooltipAnchor or "ANCHOR_LEFT")
			GameTooltip:AddLine(pOutfit:GetName())
			GameTooltip:AddLine(vDescription, HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b, true)
		end
		GameTooltip:Show();
	end
end
-- point to our new function so we get our own tooltip
-- Let's not, and say we did. This changes too often and it doesn't get much feedback
-- Outfitter.ShowOutfitTooltip = Patch_ShowOutfitTooltip;

local wasfishing = false;
local OutfitterEvents = {};
OutfitterEvents["PLAYER_REGEN_DISABLED"] = function()
	if ( FBI:ReadyForFishing() ) then
		local vOut,_,_ = Outfitter:FindOutfitByStatID("FISHING");
		Outfitter:RemoveOutfit(vOut);
	end
end

FBI:RegisterHandlers(OutfitterEvents)
FBEnvironment.OutfitManager.RegisterManager("Outfitter",
											 OutfitterInitialize,
											 function(useme) end,
											 OutfitterSwitch);

end;	-- If Outfitter.OnLoad
