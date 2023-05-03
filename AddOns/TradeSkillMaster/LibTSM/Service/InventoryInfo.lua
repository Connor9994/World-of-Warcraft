-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local InventoryInfo = TSM.Init("Service.InventoryInfo") ---@class Service.InventoryInfo
local Environment = TSM.Include("Environment")
local Container = TSM.Include("Util.Container")
local Event = TSM.Include("Util.Event")
local SlotId = TSM.Include("Util.SlotId")
local Table = TSM.Include("Util.Table")
local ItemInfo = TSM.Include("Service.ItemInfo")
local TooltipScanning = TSM.Include("Service.TooltipScanning")
local private = {
	slotIdLocked = {},
	slotIdSoulboundCached = {},
	slotIdIsBoP = {},
	slotIdIsBoA = {},
}



-- ============================================================================
-- Module Loading
-- ============================================================================

InventoryInfo:OnModuleLoad(function()
	Event.Register("ITEM_LOCKED", private.ItemLockedHandler)
	Event.Register("ITEM_UNLOCKED", private.ItemUnlockedHandler)
	Event.Register("BAG_UPDATE", private.BagUpdateHandler)
	Event.Register("PLAYERBANKSLOTS_CHANGED", private.BankSlotChangedHandler)
	if Environment.HasFeature(Environment.FEATURES.REAGENT_BANK) then
		Event.Register("PLAYERREAGENTBANKSLOTS_CHANGED", private.ReagentBankSlotChangedHandler)
	end
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

--- Check if an item will go in a bag.
-- @tparam string link The item
-- @tparam number bag The bag index
-- @treturn boolean Whether or not the item will go in the bag
function InventoryInfo.ItemWillGoInBag(link, bag)
	if not link or not bag then
		return
	end
	if bag == BACKPACK_CONTAINER or bag == BANK_CONTAINER then
		return true
	elseif bag == REAGENTBANK_CONTAINER then
		return IsReagentBankUnlocked() and ItemInfo.IsCraftingReagent(link)
	end
	local itemFamily = GetItemFamily(link) or 0
	if ItemInfo.GetClassId(link) == Enum.ItemClass.Container then
		-- bags report their family as what can go inside them, not what they can go inside
		itemFamily = 0
	end
	local _, bagFamily = Container.GetNumFreeSlots(bag)
	if not bagFamily then
		return
	end
	return bagFamily == 0 or bit.band(itemFamily, bagFamily) > 0
end

function InventoryInfo.IsBagSlotLocked(bag, slot)
	return private.slotIdLocked[SlotId.Join(bag, slot)]
end

function InventoryInfo.IsSoulbound(bag, slot)
	local slotId = SlotId.Join(bag, slot)
	if private.slotIdSoulboundCached[slotId] then
		return private.slotIdIsBoP[slotId], private.slotIdIsBoA[slotId]
	end
	local scanned, isBOP, isBOA = TooltipScanning.IsSoulbound(bag, slot)
	if scanned then
		private.slotIdSoulboundCached[slotId] = true
		private.slotIdIsBoP[slotId] = isBOP
		private.slotIdIsBoA[slotId] = isBOA
	end
	return isBOP, isBOA
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.ItemLockedHandler(_, bag, slot)
	if not slot then
		return
	end
	private.slotIdLocked[SlotId.Join(bag, slot)] = true
end

function private.ItemUnlockedHandler(_, bag, slot)
	if not slot then
		return
	end
	private.slotIdLocked[SlotId.Join(bag, slot)] = nil
end

function private.BagUpdateHandler(_, bag)
	-- clear the soulbound cache for everything in this bag
	Table.Filter(private.slotIdSoulboundCached, private.SlotIdSoulboundCachedFilter, bag)
end

function private.BankSlotChangedHandler(_, slot)
	if slot <= NUM_BANKGENERIC_SLOTS then
		-- one of the slots of the primary bank container changed, so just clear the cache for this slot
		private.slotIdSoulboundCached[SlotId.Join(BANK_CONTAINER, slot)] = nil
	else
		-- one of the extra bank bags changed, so clear the cache for the entire bag
		Table.Filter(private.slotIdSoulboundCached, private.SlotIdSoulboundCachedFilter, slot - NUM_BANKGENERIC_SLOTS)
	end
end

function private.SlotIdSoulboundCachedFilter(slotId, _, bag)
	return SlotId.Split(slotId) == bag
end

function private.ReagentBankSlotChangedHandler(_, slot)
	-- clear the soulbound cache for this slot
	private.slotIdSoulboundCached[SlotId.Join(REAGENTBANK_CONTAINER, slot)] = nil
end
