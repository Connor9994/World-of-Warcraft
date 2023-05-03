--[[
	Enchantrix Addon for World of Warcraft(tm).
	Version: 9.1.BETA.5.11 (OneMawTime)
	Revision: $Id$
	URL: http://enchantrix.org/

	This is an addon for World of Warcraft that add a list of what an item
	disenchants into to the items that you mouse-over in the game.

	License:
		This program is free software; you can redistribute it and/or
		modify it under the terms of the GNU General Public License
		as published by the Free Software Foundation; either version 2
		of the License, or (at your option) any later version.

		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.

		You should have received a copy of the GNU General Public License
		along with this program(see GPL.txt); if not, write to the Free Software
		Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

	Note:
		This AddOn's source code is specifically designed to work with
		World of Warcraft's interpreted AddOn system.
		You have an implicit license to use this AddOn with these facilities
		since that is its designated purpose as per:
		http://www.fsf.org/licensing/licenses/gpl-faq.html#InterpreterIncompat

]]
Enchantrix_RegisterRevision("$URL$", "$Rev$")

-- Local functions
local addonLoaded
local onLoad
local pickupInventoryItemHook
local useContainerItemHook
local spellTargetItemHook
local useItemByNameHook
local onEvent



-- TODO - ccox - are these constants available from Blizzard somewhere?
local idDisenchant = 13262
local idMilling = 51005
local idProspecting = 31252


-- Locals to handle Container functions moved to C_Container namespace in some clients (but not others)
local GetContainerItemLink = C_Container and C_Container.GetContainerItemLink or GetContainerItemLink



Enchantrix.Version = "9.1.BETA.5.11"
if (Enchantrix.Version == "<".."%version%>") then
	Enchantrix.Version = "4.0.DEV"
end

local DisenchantEvent = {}

-- Secondary hook for Enchantrix to update itself if Auctioneer is loaded later
function addonLoadedPost(hookArgs, event, addOnName)
	if event ~= "ADDON_LOADED" then
		return
	end
	if addOnName:lower() ~= "auctioneer" and addOnName:lower() ~= "auc-advanced" then
		return
	end

	Stubby.UnregisterEventHook("ADDON_LOADED", "Enchantrix")

	-- check for auctioneer and version
	Enchantrix.Command.AuctioneerLoaded()

	-- update gui to match
	Enchantrix.Settings.UpdateGuiConfig()
end

-- This function differs from onLoad in that it is executed
-- after variables have been loaded.
function addonLoaded(hookArgs, event, addOnName)

	-- this cruft is only needed when using Stubby.RegisterEventHook("ADDON_LOADED", "Enchantrix", addonLoaded)
	if (event ~= "ADDON_LOADED") or (addOnName:lower() ~= "enchantrix") then
		return
	end
	Stubby.UnregisterEventHook("ADDON_LOADED", "Enchantrix")
	Stubby.RegisterEventHook("ADDON_LOADED", "Enchantrix", addonLoadedPost)


	-- Call AddonLoaded for other objects
	Enchantrix.Storage.AddonLoaded() -- Sets up saved variables so should be called first
	Enchantrix.Command.AddonLoaded()
	Enchantrix.Config.AddonLoaded()
	Enchantrix.Locale.AddonLoaded()
	Enchantrix.Tooltip.AddonLoaded()
	Enchantrix.AutoDisenchant.AddonLoaded()
	Enchantrix.MiniIcon.Reposition()

	Enchantrix.Revision = Enchantrix.Util.GetRevision("$Revision$")
	for name, obj in pairs(Enchantrix) do
		if type(obj) == "table" then
			Enchantrix.Revision = math.max(Enchantrix.Revision, Enchantrix.Util.GetRevision(obj.Revision))
		end
	end

	-- Register disenchant detection hooks (using secure post hooks)
	if C_Container and C_Container.UseContainerItem then -- UseContainerItem has been moved to C_Container namespace in some clients ### hybrid
		hooksecurefunc(C_Container, "UseContainerItem", useContainerItemHook)
	else
		hooksecurefunc("UseContainerItem", useContainerItemHook)
	end
	hooksecurefunc("PickupInventoryItem", pickupInventoryItemHook)
	hooksecurefunc("SpellTargetItem", spellTargetItemHook)
	hooksecurefunc("UseItemByName", useItemByNameHook);			-- added in 2.0, used by macro /use

	-- events that we need to catch
	Stubby.RegisterEventHook("UNIT_SPELLCAST_SUCCEEDED", "Enchantrix", onEvent)
	Stubby.RegisterEventHook("UNIT_SPELLCAST_SENT", "Enchantrix", onEvent)
--	Stubby.RegisterEventHook("UNIT_SPELLCAST_START", "Enchantrix", onEvent)			-- not used right now
--	Stubby.RegisterEventHook("UNIT_SPELLCAST_STOP", "Enchantrix", onEvent)			-- not used right now
	Stubby.RegisterEventHook("UNIT_SPELLCAST_FAILED", "Enchantrix", onEvent)
	Stubby.RegisterEventHook("UNIT_SPELLCAST_INTERRUPTED", "Enchantrix", onEvent)
	Stubby.RegisterEventHook("LOOT_OPENED", "Enchantrix", onEvent)
--	Stubby.RegisterEventHook("ZONE_CHANGED", "Enchantrix", onEvent)			-- not used right now

	-- and hook into tooltips for more info
	hooksecurefunc("GameTooltip_OnHide", ENX_GameTooltip_OnHide);
	hooksecurefunc("GameTooltip_SetDefaultAnchor", ENX_GameTooltip_SetDefaultAnchor);
	ENX_SetTooltipHooks("GameTooltip");
	ENX_SetTooltipHooks("ItemRefTooltip");
	ENX_SetTooltipHooks("ShoppingTooltip1");
	ENX_SetTooltipHooks("ShoppingTooltip2");

	-- now print our version and credits
	local vstr = ("%s-%d"):format(Enchantrix.Version, Enchantrix.Revision)
	Enchantrix.Util.ChatPrint(_ENCH('FrmtWelcome'):format(vstr), 0.8, 0.8, 0.2)

	-- check for auctioneer and version
	Enchantrix.Command.AuctioneerLoaded();

end

-- Register our temporary command hook with stubby
function onLoad()

	-- Setup the default for stubby to always load (people can override this on a per toon basis)
	Stubby.SetConfig("Enchantrix", "LoadType", "always", true)

	Stubby.RegisterBootCode("Enchantrix", "CommandHandler", [[
		local function cmdHandler(msg)
			local i,j, cmd, param = msg:lower():find("^([^ ]+) (.+)$")
			if (not cmd) then cmd = msg:lower() end
			if (not cmd) then cmd = "" end
			if (not param) then param = "" end
			if (cmd == "load") then
				if (param == "") then
					Stubby.Print("Manually loading Enchantrix...")
					LoadAddOn("Enchantrix")
				elseif (param == "always") then
					Stubby.Print("Setting Enchantrix to always load for this character")
					Stubby.SetConfig("Enchantrix", "LoadType", param)
					LoadAddOn("Enchantrix")
				elseif (param == "never") then
					Stubby.Print("Setting Enchantrix to never load automatically for this character (you may still load manually)")
					Stubby.SetConfig("Enchantrix", "LoadType", param)
				else
					Stubby.Print("Your command was not understood")
				end
			else
				Stubby.Print("Enchantrix is currently not loaded.")
				Stubby.Print("  You may load it now by typing |cffffffff/enchantrix load|r")
				Stubby.Print("  You may also set your loading preferences for this character by using the following commands:")
				Stubby.Print("  |cffffffff/enchantrix load always|r - Enchantrix will always load for this character")
				Stubby.Print("  |cffffffff/enchantrix load never|r - Enchantrix will never load automatically for this character (you may still load it manually)")
			end
		end
		SLASH_ENCHANTRIX1 = "/enchantrix"
		SLASH_ENCHANTRIX2 = "/enchant"
		SLASH_ENCHANTRIX3 = "/enx"
		SlashCmdList["ENCHANTRIX"] = cmdHandler
	]]);

	Stubby.RegisterBootCode("Enchantrix", "Triggers", [[
		if Stubby.GetConfig("Enchantrix", "LoadType") == "always" then
			LoadAddOn("Enchantrix")
		else
			Stubby.Print("]].._ENCH('MesgNotloaded')..[[")
		end
	]]);

	SLASH_ENCHANTRIX1 = "/enchantrix";
	SLASH_ENCHANTRIX2 = "/enchant";
	SLASH_ENCHANTRIX3 = "/enx";
	SlashCmdList["ENCHANTRIX"] = function(msg) Enchantrix.Command.HandleCommand(msg) end


	-- this version gets addonLoaded called AFTER SavedVariables have been loaded
	Stubby.RegisterEventHook("ADDON_LOADED", "Enchantrix", addonLoaded)

	-- this version gets addonLoaded called BEFORE SavedVariables have been loaded
	-- 			so all settings then end up with default values during the addonLoaded call
	-- this ends up showing the minimap icon in the wrong location
	--Stubby.RegisterAddOnHook("Enchantrix", "Enchantrix", addonLoaded)

end


-- Big thanks to FizzWidget for figuring out how to get the tooltips hooked
-- names have been changed to prevent conflicts
ENX_TooltipHooks = {};

function ENX_GameTooltip_OnHide(this)
	local tooltipName = this:GetName();
	ENX_SetTooltipHooks(tooltipName);
end

function ENX_GameTooltip_SetDefaultAnchor(tooltip, parent)
	local tooltipName = tooltip:GetName();
	ENX_SetTooltipHooks(tooltipName);
end

function ENX_SetTooltipHooks(tooltipName)
	if (not tooltipName or tooltipName == "") then return; end
	local tooltip = _G[tooltipName];
	if (tooltip and tooltip:HasScript("OnTooltipSetItem") and not ENX_TooltipHooks[tooltipName]) then
		ENX_TooltipHooks[tooltipName] = {};
		ENX_TooltipHooks[tooltipName].OnTooltipSetItem = tooltip:GetScript("OnTooltipSetItem");
		tooltip:SetScript("OnTooltipSetItem", ENX_OnTooltipSetItem);
	end
end

function ENX_OnTooltipSetItem(this)
	local tooltipName = this:GetName();
	local tooltip = _G[tooltipName];
	if (ENX_TooltipHooks[tooltipName] and ENX_TooltipHooks[tooltipName].OnTooltipSetItem) then
		ENX_TooltipHooks[tooltipName].OnTooltipSetItem(tooltip);
	end
	local name, link = this:GetItem();

	if ( name == "" or (link == "[]") ) then
		-- Wow 7.0 issue
		--Enchantrix.Util.DebugPrintQuick("Tooltip1 item empty for ", name, link, type(name), type(link) )	-- DEBUGGING
		return false;
	elseif (link) then
		--Enchantrix.Util.DebugPrintQuick("Tooltip0 item for ", name, link, type(name), type(link) )	-- DEBUGGING
		-- first, make sure that we think this item is disenchantable to start with (reduce false positives)
		if (Enchantrix.Util.GetIType(link)) then
			-- Ok, we think the item is disenchantable
			-- search the tooltip text for the non-disenchantable string
			for lineNum = 1, this:NumLines() do
				-- be careful, some addons don't format their tooltips very well
				local lookup = tooltipName.."TextLeft"..lineNum;
				local string = _G[lookup];
				if (not string) then
					return false
				end
				local leftText = string:GetText();
				if (leftText and leftText == ITEM_DISENCHANT_NOT_DISENCHANTABLE) then
					-- found the string, this item really isn't disenchantable
					Enchantrix.Storage.SaveNonDisenchantable(link)
					-- no need to continue
					return false;
				end

			end
		end
	end
	return false;
end

function pickupInventoryItemHook(slot)
	-- Remember last activated item
	--Enchantrix.Util.DebugPrintQuick("pickupInventoryItemHook", slot);
	-- UnitCastingInfo is used in Retail, CastingInfo is used in Classic
	if ((UnitCastingInfo and not UnitCastingInfo("player")) or (CastingInfo and not CastingInfo())) then
		if slot then
			--Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "item targetted by inventory", "info:", GetInventoryItemLink("player", slot))
			DisenchantEvent.spellTarget = GetInventoryItemLink("player", slot)
			DisenchantEvent.targetted = GetTime()
		end
	end
end

function useContainerItemHook(bag, slot)
	-- Remember last activated item
	--Enchantrix.Util.DebugPrintQuick("usecontaineritemhook", bag, slot);
	if ((UnitCastingInfo and not UnitCastingInfo("player")) or (CastingInfo and not CastingInfo())) then
		if bag and slot then
			--Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "item targetted by bag", "info:", GetContainerItemLink(bag, slot))
			DisenchantEvent.spellTarget = GetContainerItemLink(bag, slot)
			DisenchantEvent.targetted = GetTime()
		end
	end
end

function spellTargetItemHook(itemString)
	-- Remember targeted item
	--Enchantrix.Util.DebugPrintQuick("targetitemhook", itemString);
	if ((UnitCastingInfo and not UnitCastingInfo("player")) or (CastingInfo and not CastingInfo())) then
		if itemString then
			local _, itemLink = GetItemInfo(itemString)
			if itemLink then
				--Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "item targetted by item", "info:", itemLink)
				DisenchantEvent.spellTarget = itemLink
				DisenchantEvent.targetted = GetTime()
			end
		end
	end
end

function useItemByNameHook(itemString)
	-- Remember targeted item
	--Enchantrix.Util.DebugPrintQuick("useItemByNameHook", itemString);
	if ((UnitCastingInfo and not UnitCastingInfo("player")) or (CastingInfo and not CastingInfo())) then
		if itemString then
			local _, itemLink = GetItemInfo(itemString)
			if itemLink then
				--Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "item targetted by name", "info:", itemLink)
				DisenchantEvent.spellTarget = itemLink
				DisenchantEvent.targetted = GetTime()
			end
		end
	end
end

-- (funcVars, event, player, spell, rank, target)
-- BfA: spell is NIL, rank is guid, target is spell ID
function onEvent(funcVars, event, player, spellNameIsNIL, rankGUID, spellID)

	if event == "UNIT_SPELLCAST_SUCCEEDED" then
		DisenchantEvent.finished = nil
		--Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "cast succeed1", "info:", funcVars, event, spellNameIsNIL, rankGUID, spellID )
-- BfA: data order is screwed up here!
		spellID = rankGUID;
		rankGUID = spellNameIsNIL;
		spellNameIsNIL = NIL;
		if ((spellID == idDisenchant) or (spellID == idProspecting) or (spellID == idMilling)) then
			if (DisenchantEvent.spellTarget and ((GetTime() - DisenchantEvent.targetted) < 10)) then
				--Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "cast succeed2", "info:", funcVars, event, spellNameIsNIL, rankGUID, spellID )
				DisenchantEvent.finished = DisenchantEvent.spellTarget
				DisenchantEvent.spellname = spellID;
			end
		end
		DisenchantEvent.sent = nil
	elseif event == "UNIT_SPELLCAST_FAILED" then
-- BfA: data order is screwed up here!
		spellID = rankGUID;
		rankGUID = spellNameIsNIL;
		spellNameIsNIL = NIL;
		--Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "cast failed", "info:", funcVars, event, spellNameIsNIL, rankGUID, spellID )
		--Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "cast failed 0", "info:", DisenchantEvent.sent, DisenchantEvent.spellTarget, (GetTime() - DisenchantEvent.targetted) )
		if (DisenchantEvent.sent
			and DisenchantEvent.spellTarget
			and ((GetTime() - DisenchantEvent.targetted) < 5)) then
			-- first, make sure that we think this item is disenchantable to start with (reduce false positives)
			--Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "cast failed 1", "info:", spellID, Enchantrix.Util.GetIType(DisenchantEvent.spellTarget) )
			if ( (spellID == idDisenchant) and Enchantrix.Util.GetIType(DisenchantEvent.spellTarget) ) then
				-- this means that the item is not disenchantable, but we think it is!
				-- now make sure the user had enough skill to disenchant it
				-- make sure skill level is up to date
				local skill = Enchantrix.Util.GetUserEnchantingSkill();
				local name, link, quality, itemLevel = GetItemInfo( DisenchantEvent.spellTarget );
				local skillNeeded = Enchantrix.Util.DisenchantSkillRequiredForItemLevel(itemLevel, quality);
				--Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "cast failed 2", "info:", skill, skillNeeded )
				if (skill >= skillNeeded) then
					--Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "cast failed 3", "info:" )
					Enchantrix.Storage.SaveNonDisenchantable(DisenchantEvent.spellTarget)
				end
			end
		end
		DisenchantEvent.finished = nil
		DisenchantEvent.sent = nil

	elseif event == "UNIT_SPELLCAST_INTERRUPTED" then
		--Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "cast interrupted", "info:", funcVars, event, spellNameIsNIL, rankGUID, spellID )
-- BfA: data order is screwed up here! spellID = rankGUID; rankGUID = spellNameIsNIL; spellNameIsNIL = NIL;
		-- disenchant interrupted
		DisenchantEvent.finished = nil
		DisenchantEvent.sent = nil
		DisenchantEvent.spellTarget = nil
		DisenchantEvent.targetted = nil

--[[
-- left here for debugging purposes
	elseif event == "UNIT_SPELLCAST_START" then
		-- NOTE: we don't get the spell name here
		Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "cast start", "info:", funcVars, event, spellNameIsNIL, rankGUID, spellID )

	elseif event == "UNIT_SPELLCAST_STOP" then
		Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "cast stop", "info:", funcVars, event, spellNameIsNIL, rankGUID, spellID )
]]

	elseif event == "UNIT_SPELLCAST_SENT" then
		-- NOTE: we do get the spell name here
		--Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "cast sent", "info:", funcVars, event, spellNameIsNIL, rankGUID, spellID )
		if ((spellID == idDisenchant) or (spellID == idProspecting) or (spellID == idMilling)) then
			DisenchantEvent.sent = true;
			DisenchantEvent.spellname = spellID;
			---Enchantrix.Util.DebugPrint("Spellcast", ENX_INFO, "cast sent 2", "info:", funcVars, event, spellNameIsNIL, rankGUID, spellID )
		end
	elseif event == "LOOT_OPENED" then
-- BfA: all params are NIL
		--Enchantrix.Util.DebugPrint("loot", ENX_INFO, "opened", "info:", funcVars, event, spellNameIsNIL, rankGUID, spellID )
		if DisenchantEvent.finished then
			local isDisenchant = nil
			local isProspect = nil
			local isMilling = nil
			local chatPrintYield = Enchantrix.Settings.GetSetting('chatShowFindings')
			if (DisenchantEvent.spellname == idDisenchant) then
				if (chatPrintYield) then
					Enchantrix.Util.ChatPrint(_ENCH("FrmtFound"):format(DisenchantEvent.finished))
				end
				isDisenchant = true;
			elseif (DisenchantEvent.spellname == idProspecting) then
				if (chatPrintYield) then
					Enchantrix.Util.ChatPrint( _ENCH("FrmtProspectFound"):format(DisenchantEvent.finished))
				end
				isProspect = true;
			elseif (DisenchantEvent.spellname == idMilling) then
				if (chatPrintYield) then
					Enchantrix.Util.ChatPrint( _ENCH("FrmtMillingFound"):format(DisenchantEvent.finished))
				end
				isMilling = true;
			end
			local itemLink = DisenchantEvent.finished
			local sig = Enchantrix.Util.GetSigFromLink(itemLink)
			local reagentList = {}
			for i = 1, GetNumLootItems(), 1 do
				if GetLootSlotType(i) == LOOT_SLOT_ITEM then	-- LootSlotIsItem(i)
					local icon, name, quantity, rarity = GetLootSlotInfo(i)
					local link = GetLootSlotLink(i)
					if (chatPrintYield) then
						Enchantrix.Util.ChatPrint(("  %s x%d"):format(link, quantity))
					end
					-- Save result
					local reagentID = Enchantrix.Util.GetItemIdFromLink(link)
					if reagentID then
						-- for prospecting and milling, we need to save the whole list
						reagentList[ reagentID ] = (reagentList[ reagentID ] or 0) + quantity
-- disenchanting in 7.3.5 will result in more than one item, sometimes 3! (epic level 66 is great example)
						Enchantrix.Storage.SaveDisenchant(sig, reagentID, quantity, itemLink)
					end
				end
			end

			if (isProspect)  then
				Enchantrix.Storage.SaveProspect(sig, reagentList)
			end

			if (isMilling)  then
				Enchantrix.Storage.SaveMilling(sig, reagentList)
			end
		end
		DisenchantEvent.spellTarget = nil
		DisenchantEvent.targetted = nil
		DisenchantEvent.finished = nil
		DisenchantEvent.sent = nil
	end
end

-- Execute on load
onLoad()
