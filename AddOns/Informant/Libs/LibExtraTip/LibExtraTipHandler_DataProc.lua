--[[
LibExtraTipHandler: TooltipDataProcessor version (DataProc)

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
private.HookScriptSecure(tip, script, posthook)
private.HookGlobalSecure(func, posthook)
private.HookDataProcessor(datatype, posthook)
--]]

-- First thing: check that the required API exists - exit immediately if it does not
if not (TooltipDataProcessor and TooltipDataProcessor.AddTooltipPostCall and TooltipUtil) then return end

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

--[[
List of accessors
{Extracted from Interface\SharedXML\Tooltip\TooltipdataHandler.lua from 10.0.2 47213 Jan 2023}
Should include every possbile SetX method/accessor and related GetX getter {at that time}

	SetMerchantItem = "GetMerchantItem",
	SetCurrencyToken = "GetCurrencyToken",
	SetItemByID = "GetItemByID",
	SetInventoryItem = "GetInventoryItem",
	SetRecipeReagentItem = "GetRecipeReagentItem",
	SetWeeklyReward = "GetWeeklyReward",
	SetVoidItem = "GetVoidItem",
	SetVoidDepositItem = "GetVoidDepositItem",
	SetVoidWithdrawalItem = "GetVoidWithdrawalItem",
	SetInboxItem = "GetInboxItem",
	SetSendMailItem = "GetSendMailItem",
	SetTradePlayerItem = "GetTradePlayerItem",
	SetTradeTargetItem = "GetTradeTargetItem",
	SetQuestItem = "GetQuestItem",
	SetQuestLogItem = "GetQuestLogItem",
	SetQuestLogSpecialItem = "GetQuestLogSpecialItem",
	SetLootItem = "GetLootItem",
	SetLootRollItem = "GetLootRollItem",
	SetGuildBankItem = "GetGuildBankItem",
	SetHeirloomByItemID = "GetHeirloomByItemID",
	SetRuneforgeResultItem = "GetRuneforgeResultItem",
	SetTransmogrifyItem = "GetTransmogrifyItem",
	SetArtifactItem = "GetArtifactItem",
	SetBagItem = "GetBagItem",
	SetBagItemChild = "GetBagItemChild",
	SetBuybackItem = "GetBuybackItem",
	SetExistingSocketGem = "GetExistingSocketGem",
	SetInventoryItemByID = "GetInventoryItemByID",
	SetItemKey = "GetItemKey",
	SetLFGDungeonReward = "GetLFGDungeonReward",
	SetLFGDungeonShortageReward = "GetLFGDungeonShortageReward",
	SetSocketGem = "GetSocketGem",
	SetSocketedItem = "GetSocketedItem",
	SetSocketedRelic = "GetSocketedRelic",
	SetUpgradeItem = "GetUpgradeItem",
	SetBackpackToken = "GetBackpackToken",
	SetCurrencyByID = "GetCurrencyByID",
	SetLootCurrency = "GetLootCurrency",
	SetQuestCurrency = "GetQuestCurrency",
	SetQuestLogCurrency = "GetQuestLogCurrency",
	SetSpellByID = "GetSpellByID",
	SetArtifactPowerByID = "GetArtifactPowerByID",
	SetShapeshift = "GetShapeshift",
	SetAzeritePower = "GetAzeritePower",
	SetAzeriteEssence = "GetAzeriteEssence",
	SetAzeriteEssenceSlot = "GetAzeriteEssenceSlot",
	SetTalent = "GetTalent",
	SetPvpTalent = "GetPvpTalent",
	SetMountBySpellID = "GetMountBySpellID",
	SetPetAction = "GetPetAction",
	SetConduit = "GetConduit",
	SetCompanionPet = "GetCompanionPet",
	SetQuestLogRewardSpell = "GetQuestLogRewardSpell",
	SetQuestRewardSpell = "GetQuestRewardSpell",
	SetPossession = "GetPossession",
	SetAchievementByID = "GetAchievementByID",
	SetEnhancedConduit = "GetEnhancedConduit",
	SetEquipmentSet = "GetEquipmentSet",
	SetInstanceLockEncountersComplete = "GetInstanceLockEncountersComplete",
	SetPvpBrawl = "GetPvpBrawl",
	SetRecipeRankInfo = "GetRecipeRankInfo",
	SetTotem = "GetTotem",
	SetToyByItemID = "GetToyByItemID",
	SetMerchantCostItem = "GetMerchantCostItem",
	SetUnit = "GetUnit",
	SetTrainerService = "GetTrainerService",
	SetRecipeResultItem = "GetRecipeResultItem",
	SetRecipeResultItemForOrder = "GetRecipeResultItemForOrder",
	SetAction = "GetAction",
	SetSpellBookItem = "GetSpellBookItem",
	SetOwnedItemByID = "GetOwnedItemByID",
	SetQuestPartyProgress = "GetQuestPartyProgress",
	SetHyperlink = "GetHyperlink",
	SetUnitAura = "GetUnitAura",
	SetUnitBuff = "GetUnitBuff",
	SetUnitDebuff = "GetUnitDebuff",
	SetMinimapMouseover = "GetMinimapMouseover",
	SetUnitBuffByAuraInstanceID = "GetUnitBuffByAuraInstanceID",
	SetUnitDebuffByAuraInstanceID = "GetUnitDebuffByAuraInstanceID",
	SetTraitEntry = "GetTraitEntry",
	SetSlottedKeystone = "GetSlottedKeystone",
	SetItemInteractionItem = "GetItemInteractionItem",
	SetItemByGUID = "GetItemByGUID",
--]]

local getterGatherdata

local function GenerateGatherdata()
	-- Locals to be used as Upvalues
	local GetMerchantItemInfo = GetMerchantItemInfo
	local GetContainerItemInfo = C_Container.GetContainerItemInfo
	local GetInventoryItemLink = GetInventoryItemLink
	local GetInventoryItemCount = GetInventoryItemCount
	local GetRecipeFixedReagentItemLink = C_TradeSkillUI.GetRecipeFixedReagentItemLink
	local GetInboxItemInfo = GetInboxItem -- local name changed to avoid conflict with Getter name
	local GetSendMailItemInfo = GetSendMailItem
	local GetTradePlayerItemInfo = GetTradePlayerItemInfo
	local GetTradeTargetItemInfo = GetTradeTargetItemInfo
	local GetQuestItemInfo = GetQuestItemInfo
	local GetQuestItemLink = GetQuestItemLink
	local GetQuestLogChoiceInfo = GetQuestLogChoiceInfo
	local GetQuestLogRewardInfo = GetQuestLogRewardInfo
	local GetQuestLogItemLink = GetQuestLogItemLink
	local GetLootSlotInfo = GetLootSlotInfo
	local GetLootRollItemInfo = GetLootRollItemInfo
	local GetGuildBankItemInfo = GetGuildBankItemInfo
	local GetGuildBankItemLink = GetGuildBankItemLink
	local GetBuybackItemInfo = GetBuybackItemInfo
	local GetRecipeInfo = C_TradeSkillUI.GetRecipeInfo
	local GetRecipeSchematic = C_TradeSkillUI.GetRecipeSchematic
	local GetRecipeItemLink = C_TradeSkillUI.GetRecipeItemLink
	local GetActionInfo = GetActionInfo
	local GetActionCount = GetActionCount
	local GetSpellLink = GetSpellLink


	-- ### todo: We shall assume that getterArgs will always exist where any args are *required* by the SetX function
	getterGatherdata = {

		GetMerchantItem = function(reg, getterArgs)
			local index = getterArgs[1]
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

		GetCurrencyToken = function(reg, getterArgs)
			local index = getterArgs[1]
			local additional = reg.additional
			additional.event = "SetCurrencyToken"
			additional.eventIndex = index
		end,

		-- GetItemByID(itemID [, qualityID])

		GetInventoryItem = function(reg, getterArgs)
			local unit, index = getterArgs[1], getterArgs[2]
			local link = GetInventoryItemLink(unit, index)
			if link then -- only process occupied slots
				local additional = reg.additional
				reg.quantity = GetInventoryItemCount(unit, index)
				additional.event = "SetInventoryItem"
				additional.eventIndex = index
				additional.eventUnit = unit
				additional.link = link
			end
		end,

		GetRecipeReagentItem = function(reg, getterArgs)
			local recipeID, reagentIndex = getterArgs[1], getterArgs[2]
			local additional = reg.additional
			additional.event = "SetRecipeReagentItem"
			additional.eventIndex = recipeID
			additional.eventSubIndex = reagentIndex
			--[[ ### todo: find a quick way to gather the following info in WoW10.x - possibly via the Schematic?
			if C_TradeSkillUI.GetRecipeReagentInfo then
				local _,_,q,rc = C_TradeSkillUI.GetRecipeReagentInfo(recipeID, reagentIndex)
				reg.quantity = q
				additional.playerReagentCount = rc
			end
			--]]

			additional.link = GetRecipeFixedReagentItemLink(recipeID, reagentIndex)
			-- ### todo: handle 'quality' reagents uing C_TradeSkillUI.GetRecipeQualityReagentItemLink(recipeID, dataSlotIndex, qualityIndex)
		end,

		-- GetVoidItem
		-- GetVoidDepositItem
		-- GetVoidWithdrawalItem

		GetInboxItem = function(reg, getterArgs)
			local index, itemIndex = getterArgs[1], getterArgs[2]
			local additional = reg.additional
			additional.event = "SetInboxItem"
			additional.eventIndex = index
			additional.eventSubIndex = itemIndex -- may be nil
			if itemIndex then
				local _,_,_,q,_,cu = GetInboxItemInfo(index, itemIndex)
				reg.quantity = q
				additional.canUse = cu
			end
		end,

		GetSendMailItem = function(reg, getterArgs)
			local index = getterArgs[1]
			local _, _, _, quantity = GetSendMailItemInfo(index)
			reg.quantity = quantity
			reg.additional.event = "SetSendMailItem"
			reg.additional.eventIndex = index
		end,

		GetTradePlayerItem = function(reg, getterArgs)
			local index = getterArgs[1]
			local additional = reg.additional
			local _, _, quantity = GetTradePlayerItemInfo(index)
			reg.quantity = quantity
			additional.event = "SetTradePlayerItem"
			additional.eventIndex = index
		end,

		GetTradeTargetItem = function(reg, getterArgs)
			local index = getterArgs[1]
			local additional = reg.additional
			local _, _, quantity = GetTradeTargetItemInfo(index)
			reg.quantity = quantity
			additional.event = "SetTradeTargetItem"
			additional.eventIndex = index
		end,

		GetQuestItem = function(reg, getterArgs)
			local qtype, index = getterArgs[1], getterArgs[2]
			local _,_,q,_,cu = GetQuestItemInfo(qtype, index)
			local additional = reg.additional
			reg.quantity = q
			additional.event = "SetQuestItem"
			additional.eventType = qtype
			additional.eventIndex = index
			additional.canUse = cu
			additional.link = GetQuestItemLink(qtype, index)
		end,

		GetQuestLogItem = function(reg, getterArgs)
			local qtype, index = getterArgs[1], getterArgs[2]
			local additional = reg.additional
			local func = (qtype == "choice") and GetQuestLogChoiceInfo or GetQuestLogRewardInfo
			local _,_,q,_,cu = func(index)
			reg.quantity = q
			additional.event = "SetQuestLogItem"
			additional.eventType = qtype
			additional.eventIndex = index
			additional.canUse = cu
			additional.link = GetQuestLogItemLink(qtype, index)
		end,

		-- GetQuestLogSpecialItem

		GetLootItem = function(reg, getterArgs)
			local index = getterArgs[1]
			local additional = reg.additional
			local _,_,q = GetLootSlotInfo(index)
			reg.quantity = q
			additional.event = "SetLootItem"
			additional.eventIndex = index
		end,

		GetLootRollItem = function(reg, getterArgs)
			local index = getterArgs[1]
			local additional = reg.additional
			local texture, name, count, quality = GetLootRollItemInfo(index)
			reg.quantity = count
			additional.event = "SetLootRollItem"
			additional.eventIndex = index
		end,

		GetGuildBankItem = function(reg, getterArgs)
			local tab, index = getterArgs[1], getterArgs[2]
			local texture, quantity, locked = GetGuildBankItemInfo(tab, index)
			if texture then -- only process occupied slots
				local additional = reg.additional
				reg.quantity = quantity
				additional.event = "SetGuildBankItem"
				additional.eventContainer = tab
				additional.eventIndex = index
				additional.locked = locked
				additional.link = GetGuildBankItemLink(tab, index)
			end
		end,

		-- GetGuildBankItem
		-- GetHeirloomByItemID
		-- GetRuneforgeResultItem
		-- GetTransmogrifyItem

		GetBagItem = function(reg, getterArgs)
			local bag, slot = getterArgs[1], getterArgs[2]
			local info = GetContainerItemInfo(bag, slot)
			if info and info.iconFileID then -- only process occupied slots
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
		end,

		-- GetBagItemChild

		GetBuybackItem = function(reg, getterArgs)
			local index = getterArgs[1]
			local additional = reg.additional
			local _,_,price,quantity = GetBuybackItemInfo(index)
			reg.quantity = quantity
			additional.event = "SetBuybackItem"
			additional.eventIndex = index
			additional.price = p
		end,

		-- GetExistingSocketGem
		-- GetInventoryItemByID

		GetItemKey = function(reg, getterArgs)
			local itemID, itemLevel, itemSuffix = getterArgs[1], getterArgs[2], getterArgs[3]
			local additional = reg.additional
			additional.event = "SetItemKey"
			additional.itemID = itemID
			additional.eventItemID = itemID
			additional.eventItemLevel = itemLevel
			additional.EventItemSuffix = itemSuffix -- Note: this is not the same as the 'suffixID' field in itemlinks!
		end,

		-- GetLFGDungeonReward
		-- GetLFGDungeonShortageReward
		-- GetSocketGem",
		-- GetSocketedItem
		-- GetSocketedRelic
		-- GetUpgradeItem
		-- GetBackpackToken
		-- GetCurrencyByID
		-- GetLootCurrency
		-- GetQuestCurrency
		-- GetQuestLogCurrency
		-- GetSpellByID
		-- GetArtifactPowerByID

		GetShapeshift = function(reg, getterArgs)
			local index = getterArgs[1]
			local additional = reg.additional
			additional.event = "SetShapeshift"
			additional.eventIndex = index
		end,

		-- GetAzeritePower
		-- GetAzeriteEssence
		-- GetAzeriteEssenceSlot

		GetTalent = function(reg, getterArgs)
			local index, isInspect, talentGroup, inspectedUnit, classID = getterArgs[1], getterArgs[2], getterArgs[3], getterArgs[4], getterArgs[5]
			local additional = reg.additional
			additional.event = "SetTalent"
			additional.eventIndex = index
			additional.isInspect = isInspect
			additional.talentGroup = talentGroup
			additional.inspectedUnit = inspectedUnit
			additional.classID = classID
		end,

		-- GetPvpTalent
		-- GetMountBySpellID

		GetPetAction = function(reg, getterArgs)
			local index = getterArgs[1]
			local additional = reg.additional
			additional.event = "SetPetAction"
			additional.eventIndex = index
		end,

		-- GetConduit
		-- GetCompanionPet

		GetQuestLogRewardSpell = function(reg, getterArgs)
			local index, questID = getterArgs[1], getterArgs[2]
			local additional = reg.additional
			additional.event = "SetQuestLogRewardSpell"
			additional.eventIndex = index
			additional.questID = questID -- optional
		end,

		GetQuestRewardSpell = function(reg, getterArgs)
			local index = getterArgs[1]
			local additional = reg.additional
			additional.event = "SetQuestRewardSpell"
			additional.eventIndex = index
		end,

		-- GetPossession
		-- GetAchievementByID
		-- GetEnhancedConduit
		-- GetEquipmentSet
		-- GetInstanceLockEncountersComplete
		-- GetPvpBrawl
		-- GetRecipeRankInfo
		-- GetTotem
		-- GetToyByItemID
		-- GetMerchantCostItem

		GetUnit = function(reg, getterArgs)
			local unit = getterArgs[1]
			reg.additional.event = "SetUnit"
			reg.additional.eventUnit= unit
		end,

		GetTrainerService = function(reg, getterArgs)
			local index = getterArgs[1]
			local additional = reg.additional
			additional.event = "SetTrainerService"
			additional.eventIndex = index
		end,

		GetRecipeResultItem = function(reg, getterArgs)
			local recipeID = getterArgs[1]
			local additional = reg.additional
			additional.event = "SetRecipeResultItem"
			additional.eventIndex = recipeID

			local recipeInfo = GetRecipeInfo(recipeID) -- returns a table with a ton of info
			additional.recipeInfo = recipeInfo -- for now just attach whole table to reg.additional
			local recipeSchematic = GetRecipeSchematic(recipeID, false)
			additional.recipeSchematic = recipeSchematic
			local minMade, maxMade
			if recipeSchematic then
				minMade, maxMade = recipeSchematic.quantityMin, recipeSchematic.quantityMax
			end
			additional.minMade = minMade
			additional.maxMade = maxMade
			if minMade and maxMade then -- protect against nil values
				reg.quantity = (minMade + maxMade) / 2 -- ### todo: may not be an integer, if this causes problems may need to math.floor it
			elseif maxMade then
				reg.quantity = maxMade
			else
				reg.quantity = minMade -- note: may still be nil
			end
			additional.link = GetRecipeItemLink(recipeID)
		end,

		-- GetRecipeResultItemForOrder

		GetAction = function(reg, getterArgs)
			local actionid = getterArgs[1]
			local additional = reg.additional
			local t,id,sub = GetActionInfo(actionid)
			additional.event = "SetAction"
			additional.eventIndex = actionid
			additional.actionType = t
			additional.actionIndex = id
			additional.actionSubtype = subtype
			if t == "item" then
				reg.quantity = GetActionCount(actionid)
			elseif t == "spell" then
				if id and id > 0 then
					additional.link = GetSpellLink(id)
				end
			end
		end,

		GetSpellBookItem = function(reg, getterArgs)
			local index, booktype = getterArgs[1], getterArgs[2]
			local link = GetSpellLink(index, booktype)
			if link then
				local additional = reg.additional
				additional.event = "SetSpellBookItem"
				additional.eventIndex = index
				additional.eventType = booktype
				additional.link = link
			end
		end,

		-- GetOwnedItemByID
		-- GetQuestPartyProgress

		GetHyperlink = function(reg, getterArgs)
			if reg.ignoreSetHyperlink then return end -- don't overwrite SetHyperlinkAndCount info
			local link = getterArgs[1]
			reg.item = link
			local additional = reg.additional
			additional.event = "SetHyperlink"
			additional.eventLink = link
		end,

		GetUnitAura = function(reg, getterArgs)
			local unit, index, filter = getterArgs[1], getterArgs[2], getterArgs[3]
			local additional = reg.additional
			additional.event = "SetUnitAura"
			additional.eventUnit = unit
			additional.eventIndex = index
			additional.eventFilter = filter
		end,

		GetUnitBuff = function(reg, getterArgs)
			local unit, index, filter = getterArgs[1], getterArgs[2], getterArgs[3]
			local additional = reg.additional
			additional.event = "SetUnitBuff"
			additional.eventUnit = unit
			additional.eventIndex = index
			additional.eventFilter = filter
		end,

		GetUnitDebuff = function(reg, getterArgs)
			local unit, index, filter = getterArgs[1], getterArgs[2], getterArgs[3]
			local additional = reg.additional
			additional.event = "SetUnitDebuff"
			additional.eventUnit = unit
			additional.eventIndex = index
			additional.eventFilter = filter
		end,

		-- GetMinimapMouseover
		-- GetUnitBuffByAuraInstanceID
		-- GetUnitDebuffByAuraInstanceID
		-- GetTraitEntry
		-- GetSlottedKeystone
		-- GetItemInteractionItem
		-- GetItemByGUID

	}

	return true
end



-- TooltipDataProcessor entry point hooks

local function GenerateTDPHooks()
	-- Locals to be used as Upvalues
	local ProcessItem = private.ProcessItem
	local ProcessSpell = private.ProcessSpell
	local ProcessUnit = private.ProcessUnit
	local OnCleared = private.OnCleared
	local GetRegistry = private.GetRegistry

	local GetItemLinkByGUID = C_Item.GetItemLinkByGUID
	local GetItemInfo = GetItemInfo
	local GetSpellInfo = GetSpellInfo
	local GetSpellSubtext = GetSpellSubtext
	local UnitTokenFromGUID = UnitTokenFromGUID
	local UnitName = UnitName

	local function HandleItem(tooltip, data)
		local reg = GetRegistry(tooltip)
		if not reg or reg.hasItem then return end
		OnCleared(tooltip)
		local additional = reg.additional

		local info = tooltip.info
		if info then -- ### todo: is it actually possible for this to be nil here?
			-- getterName has just been called (with getterArgs) and the result is in data
			-- getterArgs may be a table containing a list of args, or it may be nil
			-- SurfaceArgs has been called on data
			-- However none of our gather functions currently need the data table
			local getterName, getterArgs = info.getterName, info.getterArgs
			local gather = getterGatherdata[getterName]
			if gather then
				gather(reg, getterArgs)
			end
		end

		local truelink = additional.link -- link provided by GetX function. Preferred if it exists
		local item = truelink or data.hyperlink or (data.guid and GetItemLinkByGUID(data.guid)) or reg.item
		-- ### todo: previous versions of tooltip:GetItem() could return odd values like "" or other malformed links
		-- ### the above data operations replaced GetItem - do we still need to check for bad results?
		if not item then return end

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

	local function HandleSpell(tooltip, data)
		local reg = GetRegistry(tooltip)
		if not reg or reg.hasItem then return end
		OnCleared(tooltip)
		local additional = reg.additional

		local info = tooltip.info
		if info then -- ### todo: is it actually possible for this to be nil here?
			-- getterName has just been called (with getterArgs) and the result is in data
			-- getterArgs may be a table containing a list of args, or it may be nil
			-- SurfaceArgs has been called on data
			-- However most of our gather functions don't need the data table
			local getterName, getterArgs = info.getterName, info.getterArgs
			local gather = getterGatherdata[getterName]
			if gather then
				gather(reg, getterArgs)
			end
		end

		local spell = data.id or additional.spellID or additional.link
		-- use additional.spellID if it was set by a gather function
		-- fall back to link, if it was set by a gather function, as a last resort
		if not spell then return end

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

	local function HandleUnit(tooltip, data)
		local name, unit
		local reg = GetRegistry(tooltip)
		if not reg or reg.hasItem then return end
		OnCleared(tooltip)
		local additional = reg.additional

		local info = tooltip.info
		if info then -- ### todo: is it actually possible for this to be nil here?
			-- getterName has just been called (with getterArgs) and the result is in data
			-- getterArgs may be a table containing a list of args, or it may be nil
			-- SurfaceArgs has been called on data
			-- However most of our gather functions don't need the data table
			local getterName, getterArgs = info.getterName, info.getterArgs
			local gather = getterGatherdata[getterName]
			if gather then
				gather(reg, getterArgs)
			end
		end

		local guid = data.guid
		if not guid then return end
		local unit = UnitTokenFromGUID(guid)
		if not unit then return end
		local name = UnitName(unit)
		if not name then return end
		-- ### todo: if any of this info is missing, can we extract from gather function instead? would be stored in additional table
		-- ### Note: the Blizzard code this is derived from does include nils checks, so we shall assume these functions can sometimes fail

		additional.name = name
		additional.unitId = unitId
		additional.guid = guid

		ProcessUnit(tooltip, reg)
	end

	-- Set up DataProcessor hooks after everything else
	private.HookDataProcessor(Enum.TooltipDataType.Item, HandleItem)
	private.HookDataProcessor(Enum.TooltipDataType.Spell, HandleSpell)
	private.HookDataProcessor(Enum.TooltipDataType.Unit, HandleUnit)

	return true
end

-- Export functions

function private.RegisterTooltipHandler(tooltip, reg, specialTooltip)
	if specialTooltip == "battlepet" then
		reg.NoColumns = true -- This is not a GameTooltip so it has no Text columns. Cannot support certain functions such as embedding
		private.HookScriptSecure(tooltip,"OnHide", private.OnCleared)
		private.HookScriptSecure(tooltip,"OnSizeChanged", private.OnResize)
		if not status.firstPetTooltip then -- only hook for first BattlePet tooltip
			private.HookGlobalSecure("BattlePetTooltipTemplate_SetBattlePet", private.OnSetBattlePet)
			status.firstPetTooltip = true
		end
	else
		-- Even though we are using TooltipDataProcessor we still need to directly hook some things on the tooltip
		private.HookScriptSecure(tooltip,"OnTooltipCleared", private.OnCleared)
		private.HookScriptSecure(tooltip,"OnSizeChanged", private.OnResize)
		private.HookMethodSecure(tooltip,"Show", private.OnShowCalled)
	end
end

function private.startup.ActivateHandler(startup)
	if status.filetrackerHandler == LOAD_COMPLETE then
		status.filetrackerHandler = ACTIVATE_START
	else
		return
	end

	if not GenerateGatherdata() then
		status.filetrackerHandler = ACTIVATE_FAIL
		return
	end

	-- *Caution* Must be the last thing that gets set up
	-- This immediately activates the TooltipDataProcessor handlers, we will start receiving calls even if no tooltips are registered.
	if not GenerateTDPHooks() then
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
