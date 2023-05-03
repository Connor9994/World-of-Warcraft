--[[
LibExtraTipHandler: Hook Tooltip SetX methods and OnTooltipSetX scripts version (HookSet)

LibExtraTip is a library of API functions for manipulating additional information into GameTooltips by either adding information to the bottom of existing tooltips (embedded mode) or by adding information to an extra "attached" tooltip construct which is placed to the bottom of the existing tooltip.

LibExtraTip is composed of multiple files:
LibExtraTipStartup.lua - startup checks and lib setup
LibExtraTipHandler_DataProc.lua - only one of the Handler files will load, depending on available Client APIs
LibExtraTipHandler_HookSet.lua
LibExtraTip.lua - main code file
LibMoneyFrame.lua - routines for handling display of money values
Load.xml - loads the lua files in the above order

Copyright (C) 2008-2023, by the respective below authors.

This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 2.1 of the License, or (at your option) any later version.

This library is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

@author brykrys
@libname LibExtraTip
@version 1. see LibExtraTipStartup.lua for minor version
--]]

-- First thing: look for the API used by the other handler and exit immediately if it is found
-- If this API does not exist we shall assume the APIs needed by this file do exist
if TooltipDataProcessor and TooltipDataProcessor.AddTooltipPostCall then return end

--[[
Only one of the LibExtraTipHandler files will load, depending on which API is supported by the client
Each LibExtraTipHandler file exports the following functions:

private.RegisterTooltipHandler(tooltip, reg, specialTooltip)
private.startup.ActivateHandler(startup)
private.DeactivateHandler()

Handler code may access functions from other files, e.g. some or all of the below
Handler may store references to those functions in upvalues for faster access

private.GetRegistry(tooltip)

private.ProcessItem(tooltip, reg)
private.ProcessSpell(tooltip, reg)
private.ProcessUnit(tooltip, reg)
private.OnCleared(tooltip)
private.OnSetBattlePet(tooltip, data)
private.OnResize(tooltip,width,height)
private.OnShowCalled(tooltip)

private.HookMethod(tip, method, prehook, posthook)
private.HookMethodSecure(tip, method, posthook)
private.HookScriptBasic(tip, script, prehook)
private.HookGlobalSecure(func, posthook)
--]]

local lib = LibStub("LibExtraTip-1")
if not lib then return end
local private = lib.private
if not private then return end
local status, versions = private.status, private.versions
if not (status and versions) then return end

-- Constants used for filetrackerX status variables:
local LOAD_NEW = 5				-- permit the file to load
local LOAD_START = 10			-- set at start of file; blocks reloading of file (or other actions) if an error halts execution
local LOAD_FAIL = 15			-- optional condition to be set if a failure is detected during loading; should block transition to LOAD_COMPLETE
local LOAD_COMPLETE = 20		-- set at end of file, only set if status was LOAD_START; flags that file has loaded without error

local ACTIVATE_START = 45		-- set at start of file's Activate function; blocks re-entry of the Activate function (optional for trivial Activate functions)
local ACTIVATE_FAIL = 50		-- optional condition to be set if a failure is detected during Activate; should block transition to ACTIVATE_COMPLETE
local ACTIVATE_COMPLETE = 55	-- set at end of file's Activate function; all file statuses need to be in this state to allow the Lib to fully Activate

local DEACTIVATED = 99			-- set during Deactivate for each file

-- check for permission to load this file
if status.filetrackerHandler ~= LOAD_NEW then return end
status.filetrackerHandler = LOAD_START

-- Forward definition of file level locals, will be filled in later in the load process
local tooltipMethodPrehooks, tooltipMethodPosthooks
local HandlerItem, HandlerSpell, HandlerUnit
local GetRegistry

--[[
	The tooltip method tables supply hooking information for the tooltip registration function
	Generates 2 method tables, for prehooks and posthooks
	Prehooks gather information from the calling arguaments and store in reg and reg.additional
	Where the prehook sets a flag, a posthook must be installed to clear it, usually reg.ignoreOnCleared
]]
local function GenerateTooltipMethodTable()
	-- Locals to be used as upvalues
	local OnCleared = private.OnCleared

	local GetBuybackItemInfo = GetBuybackItemInfo
	local GetGuildBankItemInfo = GetGuildBankItemInfo
	local GetGuildBankItemLink = GetGuildBankItemLink
	local GetInboxItem = GetInboxItem
	local GetInventoryItemLink = GetInventoryItemLink
	local GetInventoryItemCount = GetInventoryItemCount
	local GetLootSlotInfo = GetLootSlotInfo
	local GetLootRollItemInfo = GetLootRollItemInfo
	local GetMerchantItemInfo = GetMerchantItemInfo
	local GetMerchantItemLink = GetMerchantItemLink
	local GetQuestItemInfo = GetQuestItemInfo
	local GetQuestItemLink = GetQuestItemLink
	local GetQuestLogChoiceInfo = GetQuestLogChoiceInfo
	local GetQuestLogRewardInfo = GetQuestLogRewardInfo
	local GetQuestLogItemLink = GetQuestLogItemLink
	local GetSendMailItem = GetSendMailItem
	local GetTradePlayerItemInfo = GetTradePlayerItemInfo
	local GetTradeTargetItemInfo = GetTradeTargetItemInfo
	local GetCraftReagentInfo = GetCraftReagentInfo
	local GetCraftReagentItemLink = GetCraftReagentItemLink
	local GetCraftItemLink = GetCraftItemLink
	local GetCraftNumMade = GetCraftNumMade
	local GetTradeSkillReagentInfo = GetTradeSkillReagentInfo
	local GetTradeSkillReagentItemLink = GetTradeSkillReagentItemLink
	local GetTradeSkillItemLink = GetTradeSkillItemLink
	local GetTradeSkillNumMade = GetTradeSkillNumMade

	-- A common posthook function used for most methods
	local function posthookClearIgnore(self)
		local reg = GetRegistry(self)
		if reg then
			reg.ignoreOnCleared = nil
		end
	end

	tooltipMethodPrehooks = {

		-- Default enabled events

		SetBuybackItem = function(self, index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			local name,texture,price,quantity = GetBuybackItemInfo(index)
			reg.quantity = quantity
			additional.event = "SetBuybackItem"
			additional.eventIndex = index
		end,

		SetGuildBankItem = function(self, tab, index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			local texture, quantity, locked = GetGuildBankItemInfo(tab, index)
			if texture then -- only process occupied slots
				reg.ignoreOnCleared = true
				local additional = reg.additional
				reg.quantity = quantity
				additional.event = "SetGuildBankItem"
				additional.eventContainer = tab
				additional.eventIndex = index
				additional.locked = locked
				additional.link = GetGuildBankItemLink(tab,index)
			end
		end,

		SetInboxItem = function(self, index, itemIndex)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			additional.event = "SetInboxItem"
			additional.eventIndex = index
			additional.eventSubIndex = itemIndex -- may be nil
			if itemIndex then
				local _,_,_,q,_,cu = GetInboxItem(index, itemIndex)
				reg.quantity = q
				additional.canUse = cu
			end
		end,

		SetInventoryItem = function(self, unit, index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			local link = GetInventoryItemLink(unit, index)
			if link then -- only process occupied slots
				reg.ignoreOnCleared = true
				local additional = reg.additional
				reg.quantity = GetInventoryItemCount(unit, index)
				additional.event = "SetInventoryItem"
				additional.eventIndex = index
				additional.eventUnit = unit
				additional.link = link
			end
		end,

		SetLootItem = function(self,index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			local _,_,q = GetLootSlotInfo(index)
			reg.quantity = q
			additional.event = "SetLootItem"
			additional.eventIndex = index
		end,

		SetLootRollItem = function(self,index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			local texture, name, count, quality = GetLootRollItemInfo(index)
			reg.quantity = count
			additional.event = "SetLootRollItem"
			additional.eventIndex = index
		end,

		SetMerchantItem = function(self,index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			local _,_,p,q,na,cu,ec = GetMerchantItemInfo(index)
			reg.quantity = q
			additional.event = "SetMerchantItem"
			additional.eventIndex = index
			additional.price = p
			additional.numAvailable = na
			additional.canUse = cu
			additional.extendedCost = ec
			additional.link = GetMerchantItemLink(index)
		end,

		SetQuestItem = function(self,type,index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local _,_,q,_,cu = GetQuestItemInfo(type,index)
			local additional = reg.additional
			reg.quantity = q
			additional.event = "SetQuestItem"
			additional.eventType = type
			additional.eventIndex = index
			additional.canUse = cu
			additional.link = GetQuestItemLink(type,index)
		end,

		SetQuestLogItem = function(self,type,index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			local func = type == "choice" and GetQuestLogChoiceInfo or GetQuestLogRewardInfo
			local _,_,q,_,cu = func(index)
			reg.quantity = q
			additional.event = "SetQuestLogItem"
			additional.eventType = type
			additional.eventIndex = index
			additional.canUse = cu
			additional.link = GetQuestLogItemLink(type,index)
		end,

		SetSendMailItem = function(self, index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local name, itemID, texture, quantity = GetSendMailItem(index)
			reg.quantity = quantity
			reg.additional.event = "SetSendMailItem"
			reg.additional.eventIndex = index
		end,

		SetTradePlayerItem = function(self,index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			local name, texture, quantity = GetTradePlayerItemInfo(index)
			reg.quantity = quantity
			additional.event = "SetTradePlayerItem"
			additional.eventIndex = index
		end,

		SetTradeTargetItem = function(self,index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			local name, texture, quantity = GetTradeTargetItemInfo(index)
			reg.quantity = quantity
			additional.event = "SetTradeTargetItem"
			additional.eventIndex = index
		end,

--[[ Not used in Classic
		SetRecipeReagentItem = function(self, recipeID, reagentIndex)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			additional.event = "SetRecipeReagentItem"
			additional.eventIndex = recipeID
			additional.eventSubIndex = reagentIndex
			if C_TradeSkillUI.GetRecipeReagentInfo then
				local _,_,q,rc = C_TradeSkillUI.GetRecipeReagentInfo(recipeID, reagentIndex)
				reg.quantity = q
				additional.playerReagentCount = rc
			end
			if C_TradeSkillUI.GetRecipeReagentItemLink then
				additional.link = C_TradeSkillUI.GetRecipeReagentItemLink(recipeID, reagentIndex)
			elseif C_TradeSkillUI.GetRecipeFixedReagentItemLink then
				additional.link = C_TradeSkillUI.GetRecipeFixedReagentItemLink(recipeID, reagentIndex) -- ### WoW 10.0.0
			end
		end,

		SetRecipeResultItem = function(self, recipeID)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			additional.event = "SetRecipeResultItem"
			additional.eventIndex = recipeID

            if (lib.Classic) then
                additional.recipeInfo = nil     -- don't have a match for GetRecipeInfo in classic
                local minMade, maxMade = GetTradeSkillNumMade(recipeID)
                additional.minMade = minMade
                additional.maxMade = maxMade
                if minMade and maxMade then -- protect against nil values
                    reg.quantity = (minMade + maxMade) / 2 -- ### todo: may not be an integer, if this causes problems may need to math.floor it
                elseif maxMade then
                    reg.quantity = maxMade
                else
                    reg.quantity = minMade -- note: may still be nil
                end
                additional.link = GetTradeSkillRecipeLink(recipeID)
            else
                local recipeInfo = C_TradeSkillUI.GetRecipeInfo(recipeID) -- returns a table with a ton of info
                additional.recipeInfo = recipeInfo -- for now just attach whole table to reg.additional
				local recipeSchematic = C_TradeSkillUI.GetRecipeSchematic(recipeID, false)
				additional.recipeSchematic = recipeSchematic
				local minMade, maxMade
				if recipeSchematic then
					minMade, maxMade = recipeSchematic.quantityMin, recipeSchematic.quantityMax
				end
                reg.additional.minMade = minMade
                reg.additional.maxMade = maxMade
                if minMade and maxMade then -- protect against nil values
                    reg.quantity = (minMade + maxMade) / 2 -- ### todo: may not be an integer, if this causes problems may need to math.floor it
                elseif maxMade then
                    reg.quantity = maxMade
                else
                    reg.quantity = minMade -- note: may still be nil
                end
                additional.link = C_TradeSkillUI.GetRecipeItemLink(recipeID)
            end
		end,
--]]

		SetCraftItem = function(self, recipeID, reagentIndex)
            -- used on Classic Era and Wrath only
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			additional.event = "SetCraftItem"
			additional.eventIndex = recipeID
			additional.eventSubIndex = reagentIndex
            if reagentIndex then
                local _,_,q,rc = GetCraftReagentInfo(recipeID, reagentIndex)
                reg.quantity = q
                additional.playerReagentCount = rc
                additional.link = GetCraftReagentItemLink(recipeID, reagentIndex)
            else
				additional.link = GetCraftItemLink(recipeID)
				reg.quantity = GetCraftNumMade(recipeID)
            end
		end,

		SetTradeSkillItem = function(self, recipeID, reagentIndex)
            -- used on Classic Era and Wrath only
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			additional.event = "SetTradeSkillItem"
			additional.eventIndex = recipeID
			additional.eventSubIndex = reagentIndex
            if reagentIndex then
                local _,_,q,rc = GetTradeSkillReagentInfo(recipeID, reagentIndex)
                reg.quantity = q
                additional.playerReagentCount = rc
                additional.link = GetTradeSkillReagentItemLink(recipeID, reagentIndex)
            else
				additional.link = GetTradeSkillItemLink(recipeID)
				reg.quantity = GetTradeSkillNumMade(recipeID)
            end
		end,


		SetHyperlink = function(self,link)
			local reg = GetRegistry(self)
			if not reg then return end
			if reg.ignoreSetHyperlink then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			reg.item = link
			local additional = reg.additional
			additional.event = "SetHyperlink"
			additional.eventLink = link
		end,

		-- Default disabled events:

		--[[ disabled due to taint issues
		SetAction = function(self,actionid)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local t,id,sub = GetActionInfo(actionid)
			reg.additional.event = "SetAction"
			reg.additional.eventIndex = actionid
			reg.additional.actionType = t
			reg.additional.actionIndex = id
			reg.additional.actionSubtype = subtype
			if t == "item" then
				reg.quantity = GetActionCount(actionid)
			elseif t == "spell" then
				if id and id > 0 then
					local link = GetSpellLink(id, sub)
					--SetSpellDetail(reg, link)
				end
			end
		end,
		--]]

		SetCurrencyToken = function(self, index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			additional.event = "SetCurrencyToken"
			additional.eventIndex = index
		end,

		SetPetAction = function(self, index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			additional.event = "SetPetAction"
			additional.eventIndex = index
		end,

		SetQuestLogRewardSpell = function(self)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			reg.additional.event = "SetQuestLogRewardSpell"
		end,

		SetQuestRewardSpell = function(self)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			reg.additional.event = "SetQuestRewardSpell"
		end,

		SetShapeshift = function(self, index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			additional.event = "SetShapeshift"
			additional.eventIndex = index
		end,

		--[[ disabled due to probable taint issues
		SetSpellBookItem = function(self,index,booktype)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local link = GetSpellLink(index, booktype)
			if link then
				reg.additional.event = "SetSpellBookItem"
				reg.additional.eventIndex = index
				reg.additional.eventType = booktype
				--SetSpellDetail(reg, link)
			end
		end,
		--]]

		SetTalent = function(self, tabIndex, talentIndex, isInspect) -- Note: parameters to SetTalent may vary with Client
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			additional.event = "SetTalent"
			additional.eventIndex = talentIndex
			additional.eventTab = tabIndex
			additional.isInspect = isInspect
		end,

		SetTrainerService = function(self, index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			additional.event = "SetTrainerService"
			additional.eventIndex = index
		end,

		--[[ may also be causing taint? disabled just in case - we don't use it for anything
		SetUnit = function(self, unit)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			reg.additional.event = "SetUnit"
			reg.additional.eventUnit= unit
		end,
		--]]

		--[[ disabled due to taint issues
		SetUnitAura = function(self, unit, index, filter)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			reg.additional.event = "SetUnitAura"
			reg.additional.eventUnit = unit
			reg.additional.eventIndex = index
			reg.additional.eventFilter = filter
		end,
		--]]

		--[[ disabled due to possible taint issues
		SetUnitBuff = function(self, unit, index, filter)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			reg.additional.event = "SetUnitBuff"
			reg.additional.eventUnit = unit
			reg.additional.eventIndex = index
			reg.additional.eventFilter = filter
		end,

		SetUnitDebuff = function(self, unit, index, filter)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			reg.additional.event = "SetUnitDebuff"
			reg.additional.eventUnit = unit
			reg.additional.eventIndex = index
			reg.additional.eventFilter = filter
		end,
		--]]

	}

	tooltipMethodPosthooks = {
		SetBuybackItem = posthookClearIgnore,
		SetGuildBankItem = posthookClearIgnore,
		SetInboxItem = posthookClearIgnore,
		SetInventoryItem = posthookClearIgnore,
		SetLootItem = posthookClearIgnore,
		SetLootRollItem = posthookClearIgnore,
		SetMerchantItem = posthookClearIgnore,
		SetQuestItem = posthookClearIgnore,
		SetQuestLogItem = posthookClearIgnore,
		SetSendMailItem = posthookClearIgnore,
		SetTradePlayerItem = posthookClearIgnore,
		SetTradeTargetItem = posthookClearIgnore,
		--SetRecipeReagentItem = posthookClearIgnore,
		--SetRecipeResultItem = posthookClearIgnore,
        SetTradeSkillItem = posthookClearIgnore,
        SetCraftItem = posthookClearIgnore,

		SetHyperlink = function(self)
			local reg = GetRegistry(self)
			if not reg.ignoreSetHyperlink then
				reg.ignoreOnCleared = nil
			end
		end,

		--SetAction = posthookClearIgnore,
		SetCurrencyToken = posthookClearIgnore,
		SetPetAction = posthookClearIgnore,
		SetQuestLogRewardSpell = posthookClearIgnore,
		SetQuestRewardSpell = posthookClearIgnore,
		SetShapeshift = posthookClearIgnore,
		--SetSpellBookItem = posthookClearIgnore,
		SetTalent = posthookClearIgnore,
		SetTrainerService = posthookClearIgnore,
		--SetUnit = posthookClearIgnore,
		--SetUnitAura = posthookClearIgnore,
		--SetUnitBuff = posthookClearIgnore,
		--SetUnitDebuff = posthookClearIgnore,
	}

	-- Special handling for different Client versions

	if GameTooltip.SetAuctionItem then
		local GetAuctionItemInfo = GetAuctionItemInfo
		local GetAuctionItemLink = GetAuctionItemLink
		local GetAuctionSellItemInfo = GetAuctionSellItemInfo

		tooltipMethodPrehooks.SetAuctionItem = function(self,type,index)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			local _,_,q,_,cu,_,_,minb,inc,bo,ba,hb,_,own,ownf = GetAuctionItemInfo(type,index)
			reg.quantity = q
			additional.event = "SetAuctionItem"
			additional.eventType = type
			additional.eventIndex = index
			additional.canUse = cu
			additional.minBid = minb
			additional.minIncrement = inc
			additional.buyoutPrice = bo
			additional.bidAmount = ba
			additional.highBidder = hb
			additional.owner = own
			additional.ownerFull = ownf
			additinal.link = GetAuctionItemLink(type,index)
		end
		tooltipMethodPosthooks.SetAuctionItem = posthookClearIgnore


		tooltipMethodPrehooks.SetAuctionSellItem = function(self)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			reg.ignoreOnCleared = true
			local additional = reg.additional
			local name,texture,quantity,quality,canUse,price = GetAuctionSellItemInfo()
			reg.quantity = quantity
			additional.event = "SetAuctionSellItem"
			additional.canUse = canUse
		end
		tooltipMethodPosthooks.SetAuctionSellItem = posthookClearIgnore

	end

	if C_Container and C_Container.GetContainerItemInfo then
		-- 3.4.1 (Wrath Classic) introduces a subset of DF changes, including C_Container
		local GetContainerItemInfo = C_Container.GetContainerItemInfo

		tooltipMethodPrehooks.SetBagItem = function(self, bag, slot)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			local info = GetContainerItemInfo(bag, slot)
			if info and info.iconFileID then -- only process occupied slots
				reg.ignoreOnCleared = true
				local additional = reg.additional
				reg.quantity = info.stackCount
				additional.event = "SetBagItem"
				additional.eventContainer = bag
				additional.eventIndex = slot
				additional.readable = info.isReadable
				additional.locked = info.isLocked
				additional.lootable = info.hasLoot
				additional.link = info.hyperlink
				additional.itemID = info.itemID
				additional.bound = info.isBound
			end
		end
		tooltipMethodPosthooks.SetBagItem = posthookClearIgnore

	else -- assume old style Container functions
		local GetContainerItemInfo = GetContainerItemInfo

		tooltipMethodPrehooks.SetBagItem = function(self, bag, slot)
			local reg = GetRegistry(self)
			if not reg then return end
			OnCleared(self)
			local tex,q,l,_,r,loot,link,_,_,id,bd = GetContainerItemInfo(bag, slot)
			if tex then -- only process occupied slots
				reg.ignoreOnCleared = true
				local additional = reg.additional
				reg.quantity = q
				additional.event = "SetBagItem"
				additional.eventContainer = bag
				additional.eventIndex = slot
				additional.readable = r
				additional.locked = l
				additional.lootable = loot
				additional.link = link
				additional.itemID = id
				additional.bound = bd
			end
		end
		tooltipMethodPosthooks.SetBagItem = posthookClearIgnore

	end

	return true
end


local function GenerateHandlers()
	-- Locals to be used as Upvalues
	local ProcessItem = private.ProcessItem
	local ProcessSpell = private.ProcessSpell
	local ProcessUnit = private.ProcessUnit

	HandlerItem = function(tooltip) -- called from OnTooltipSetItem
		local testname
		local reg = GetRegistry(tooltip)
		if not reg or reg.hasItem then return end

		local additional = reg.additional

		local truelink = additional.link -- link provided by GetX function. Preferred if it exists
		local item = truelink
		if not item then
			testname, item = tooltip:GetItem()
			if not item then
				item = reg.item
			elseif testname == "" then
				-- Blizzard broke tooltip:GetItem() in 6.2. Detect and fix the bug if possible. Remove workaround when fixed by Blizzard. [LTT-56]
				-- thanks to sapu for identifying bug and suggesting workaround
				-- Broken differently in 7.0 because 0 is not printed in itemstrings, and it would find the player level as the first number [LTT-59]
				local checkItemID = strmatch(item, "item:(%d*):") -- this match string should find the itemID in any link
				--DebugPrintQuick("failed name check ", checkItemID, testname, item, item:gsub(".*item:", ""), reg.item, reg.additional.link )
				if not checkItemID or checkItemID == "" then -- it's usually "" for recipes
					item = reg.item -- try to find a valid link from another source (or set to nil if we can't find one)
				end
			end
			if not item then return end
		end

		local name,link,quality,ilvl,minlvl,itype,isubtype,stack,equiploc,texture,sellPrice,classID,subclassID,bindType,expacID,setID,isCraftingReagent = GetItemInfo(item)
		if not name or name == "" then return end
		reg.item = reg.item or item
		link = truelink or link
		quality = additional.quality or quality
		if not quality or quality < 0 then quality = 0 end
		local quantity = reg.quantity or 1

		additional.item = item
		additional.quantity = quantity
		additional.name = name
		additional.link = link
		additional.quality = quality
		additional.itemLevel = ilvl
		additional.minLevel = minlvl
		additional.itemType = itype
		additional.itemSubtype = isubtype
		additional.stackSize = stack
		additional.equipLocation = equiploc
		additional.texture = texture
		additional.sellPrice = sellPrice
		additional.classID = classID
		additional.subclassID = subclassID
		additional.bindType = bindType
		additional.expacID = expacID
		additional.setID = setID
		additional.isCraftingReagent = isCraftingReagent

		ProcessItem(tooltip, reg)
	end

	HandlerSpell = function(tooltip) -- called from OnTooltipSetSpell
		local reg = GetRegistry(tooltip)
		if not reg or reg.hasItem then return end

		local additional = reg.additional

		local testname, spell = tooltip:GetSpell()
		if not spell or not testname or testname == "" then
			spell = additional.link -- fall back to link if GetSpell failed
			if not spell then return end
		end

		local name, _, icon, ctime, minRange, maxRange, spellID = GetSpellInfo(spell)
		if not (name and spellID) then return end
		local subtext = GetSpellSubtext(spellID) -- may be nil: spell may not have subtext, also subtext is only loaded on demand (?)

		additional.name = name
		additional.spellID = spellID
		additional.rank = subtext -- subtext may represent rank or category info depending on Client
		additional.category = subtext
		additional.icon = icon
		additional.castTime = ctime
		additional.minRange = minRange
		additional.maxRange = maxRange

		ProcessSpell(tooltip, reg)
	end

	HandlerUnit = function(tooltip) -- called from OnTooltipSetUnit
		local reg = GetRegistry(tooltip)
		if not reg or reg.hasItem then return end

		local additional = reg.additional

		local name, unitId = tooltip:GetUnit()
		if not (name and unitId) then return end

		additional.name = name
		additional.unitId = unitId

		ProcessUnit(tooltip, reg)
	end

	return true
end


-- Export functions

--[[ Replacements for tooltip:GetItem, tooltip:GetSpell, tooltip:GetUnit
Only in 10.0.2+ for now but expect to be ported to Classic eventually; however this may occur at the same time as switching to TooltipDataProcessor?
	TooltipUtil.GetDisplayedItem
	TooltipUtil.GetDisplayedSpell
	TooltipUtil.GetDisplayedUnit
We could use these to recreate tooltip:GetItem etc. if they are missing, when we register the tooltip.
--]]


function private.RegisterTooltipHandler(tooltip, reg, specialTooltip)
	if specialTooltip == "battlepet" then -- Will not occur in Classic Era or Wrath; code retained just in case Battlepets get ported to Classic at some point
		reg.NoColumns = true -- This is not a GameTooltip so it has no Text columns. Cannot support certain functions such as embedding
		private.HookScriptBasic(tooltip,"OnHide", private.OnCleared)
		private.HookScriptBasic(tooltip,"OnSizeChanged", private.OnResize)
		if not status.firstPetTooltip then -- only hook for first BattlePet tooltip
			private.HookGlobalSecure("BattlePetTooltipTemplate_SetBattlePet", private.OnSetBattlePet)
			status.firstPetTooltip = true
		end
	else
		private.HookScriptBasic(tooltip,"OnTooltipSetItem", HandlerItem)
		private.HookScriptBasic(tooltip,"OnTooltipSetUnit", HandlerUnit)
		private.HookScriptBasic(tooltip,"OnTooltipSetSpell", HandlerSpell)
		private.HookScriptBasic(tooltip,"OnTooltipCleared", private.OnCleared)
		private.HookScriptBasic(tooltip,"OnSizeChanged", private.OnResize)
		private.HookMethodSecure(tooltip,"Show", private.OnShowCalled)

		for k,v in pairs(tooltipMethodPrehooks) do
			private.HookMethod(tooltip,k,v)
		end
		for k,v in pairs(tooltipMethodPosthooks) do
			private.HookMethod(tooltip,k,nil,v)
		end
	end
end

function private.startup.ActivateHandler(startup)
	if status.filetrackerHandler == LOAD_COMPLETE then
		status.filetrackerHandler = ACTIVATE_START
	else
		return
	end

	GetRegistry = private.GetRegistry -- needed for everything

	if not GenerateTooltipMethodTable() then
		status.filetrackerHandler = ACTIVATE_FAIL
		return
	end

	if not GenerateHandlers() then
		status.filetrackerHandler = ACTIVATE_FAIL
		return
	end

	if status.filetrackerHandler == ACTIVATE_START then
		status.filetrackerHandler = ACTIVATE_COMPLETE
		return true
	end
end

function private.DeactivateHandler()
	status.filetrackerHandler = DEACTIVATED

	-- We rely on lib:Deactivate() to deactivate all hook stubs in hookStore

	-- If we set any special status flags or version info we should check/clear/reset them here as appropriate
	status.firstPetTooltip = nil

end

if status.filetrackerHandler == LOAD_START then
	status.filetrackerHandler = LOAD_COMPLETE
end

LibStub("LibRevision"):Set("$URL$","$Rev$","10.02.DEV.", 'auctioneer', 'libs')
