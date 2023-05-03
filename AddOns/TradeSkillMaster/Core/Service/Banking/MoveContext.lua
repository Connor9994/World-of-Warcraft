-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local MoveContext = TSM.Banking:NewPackage("MoveContext")
local Environment = TSM.Include("Environment")
local Table = TSM.Include("Util.Table")
local SlotId = TSM.Include("Util.SlotId")
local Container = TSM.Include("Util.Container")
local Threading = TSM.Include("Service.Threading")
local ItemInfo = TSM.Include("Service.ItemInfo")
local InventoryInfo = TSM.Include("Service.InventoryInfo")
local BagTracking = TSM.Include("Service.BagTracking")
local GuildTracking = TSM.Include("Service.GuildTracking")
local private = {
	bagToBank = nil,
	bankToBag = nil,
	bagToGuildBank = nil,
	guildBankToBag = nil,
}
-- don't use MAX_GUILDBANK_SLOTS_PER_TAB since it isn't available right away
local GUILD_BANK_TAB_SLOTS = 98



-- ============================================================================
-- BaseMoveContext Class
-- ============================================================================

local BaseMoveContext = TSM.Include("LibTSMClass").DefineClass("BaseMoveContext", nil, "ABSTRACT")



-- ============================================================================
-- BagToBankMoveContext Class
-- ============================================================================

local BagToBankMoveContext = TSM.Include("LibTSMClass").DefineClass("BagToBankMoveContext", BaseMoveContext)

function BagToBankMoveContext.MoveSlot(self, fromSlotId, toSlotId, quantity)
	local fromBag, fromSlot = SlotId.Split(fromSlotId)
	Container.SplitItem(fromBag, fromSlot, quantity)
	if GetCursorInfo() == "item" then
		Container.PickupItem(SlotId.Split(toSlotId))
	end
	ClearCursor()
end

function BagToBankMoveContext.GetSlotQuantity(self, slotId)
	return private.BagBankGetSlotQuantity(slotId)
end

function BagToBankMoveContext.SlotIdIterator(self, itemString)
	return private.BagSlotIdIterator(itemString)
end

function BagToBankMoveContext.GetEmptySlotsThreaded(self, emptySlotIds)
	local sortValue = Threading.AcquireSafeTempTable()
	if Environment.HasFeature(Environment.FEATURES.REAGENT_BANK) then
		private.GetEmptySlotsHelper(REAGENTBANK_CONTAINER, emptySlotIds, sortValue)
	end
	private.GetEmptySlotsHelper(BANK_CONTAINER, emptySlotIds, sortValue)
	local firstBankBag, lastBankBag = Container.GetBankBagIndexes()
	for bag = firstBankBag, lastBankBag do
		private.GetEmptySlotsHelper(bag, emptySlotIds, sortValue)
	end
	Table.SortWithValueLookup(emptySlotIds, sortValue)
	Threading.ReleaseSafeTempTable(sortValue)
end

function BagToBankMoveContext.GetTargetSlotId(self, itemString, emptySlotIds)
	return private.BagBankGetTargetSlotId(itemString, emptySlotIds)
end



-- ============================================================================
-- BankToBagMoveContext Class
-- ============================================================================

local BankToBagMoveContext = TSM.Include("LibTSMClass").DefineClass("BankToBagMoveContext", BaseMoveContext)

function BankToBagMoveContext.MoveSlot(self, fromSlotId, toSlotId, quantity)
	local fromBag, fromSlot = SlotId.Split(fromSlotId)
	Container.SplitItem(fromBag, fromSlot, quantity)
	if GetCursorInfo() == "item" then
		Container.PickupItem(SlotId.Split(toSlotId))
	end
	ClearCursor()
end

function BankToBagMoveContext.GetSlotQuantity(self, slotId)
	return private.BagBankGetSlotQuantity(slotId)
end

function BankToBagMoveContext.SlotIdIterator(self, itemString)
	itemString = TSM.Groups.TranslateItemString(itemString)
	return BagTracking.CreateQueryBankItem(itemString)
		:VirtualField("autoBaseItemString", "string", TSM.Groups.TranslateItemString, "itemString")
		:Equal("autoBaseItemString", itemString)
		:Select("slotId", "quantity")
		:IteratorAndRelease()
end

function BankToBagMoveContext.GetEmptySlotsThreaded(self, emptySlotIds)
	private.BagGetEmptySlotsThreaded(emptySlotIds)
end

function BankToBagMoveContext.GetTargetSlotId(self, itemString, emptySlotIds)
	return private.BagBankGetTargetSlotId(itemString, emptySlotIds)
end



-- ============================================================================
-- BagToGuildBankMoveContext Class
-- ============================================================================

local BagToGuildBankMoveContext = TSM.Include("LibTSMClass").DefineClass("BagToGuildBankMoveContext", BaseMoveContext)

function BagToGuildBankMoveContext.MoveSlot(self, fromSlotId, toSlotId, quantity)
	local fromBag, fromSlot = SlotId.Split(fromSlotId)
	Container.SplitItem(fromBag, fromSlot, quantity)
	if GetCursorInfo() == "item" then
		PickupGuildBankItem(SlotId.Split(toSlotId))
	end
	ClearCursor()
end

function BagToGuildBankMoveContext.GetSlotQuantity(self, slotId)
	return private.BagBankGetSlotQuantity(slotId)
end

function BagToGuildBankMoveContext.SlotIdIterator(self, itemString)
	return private.BagSlotIdIterator(itemString)
end

function BagToGuildBankMoveContext.GetEmptySlotsThreaded(self, emptySlotIds)
	local currentTab = GetCurrentGuildBankTab()
	local _, _, _, _, numWithdrawals = GetGuildBankTabInfo(currentTab)
	if numWithdrawals == -1 or numWithdrawals >= GUILD_BANK_TAB_SLOTS then
		for slot = 1, GUILD_BANK_TAB_SLOTS do
			if not GetGuildBankItemInfo(currentTab, slot) then
				tinsert(emptySlotIds, SlotId.Join(currentTab, slot))
			end
		end
	end
	for tab = 1, GetNumGuildBankTabs() do
		if tab ~= currentTab then
			-- only use tabs which we have at least enough withdrawals to withdraw every slot
			_, _, _, _, numWithdrawals = GetGuildBankTabInfo(tab)
			if numWithdrawals == -1 or numWithdrawals >= GUILD_BANK_TAB_SLOTS then
				for slot = 1, GUILD_BANK_TAB_SLOTS do
					if not GetGuildBankItemInfo(tab, slot) then
						tinsert(emptySlotIds, SlotId.Join(tab, slot))
					end
				end
			end
		end
	end
end

function BagToGuildBankMoveContext.GetTargetSlotId(self, itemString, emptySlotIds)
	return tremove(emptySlotIds, 1)
end



-- ============================================================================
-- GuildBankToBagMoveContext Class
-- ============================================================================

local GuildBankToBagMoveContext = TSM.Include("LibTSMClass").DefineClass("GuildBankToBagMoveContext", BaseMoveContext)

function GuildBankToBagMoveContext.MoveSlot(self, fromSlotId, toSlotId, quantity)
	local fromTab, fromSlot = SlotId.Split(fromSlotId)
	SplitGuildBankItem(fromTab, fromSlot, quantity)
	if GetCursorInfo() == "item" then
		Container.PickupItem(SlotId.Split(toSlotId))
	end
	ClearCursor()
end

function GuildBankToBagMoveContext.GetSlotQuantity(self, slotId)
	local tab, slot = SlotId.Split(slotId)
	QueryGuildBankTab(tab)
	local _, quantity = GetGuildBankItemInfo(tab, slot)
	return quantity or 0
end

function GuildBankToBagMoveContext.SlotIdIterator(self, itemString)
	itemString = TSM.Groups.TranslateItemString(itemString)
	return GuildTracking.CreateQueryItem(itemString)
		:VirtualField("autoBaseItemString", "string", TSM.Groups.TranslateItemString, "itemString")
		:Equal("autoBaseItemString", itemString)
		:Select("slotId", "quantity")
		:IteratorAndRelease()
end

function GuildBankToBagMoveContext.GetEmptySlotsThreaded(self, emptySlotIds)
	private.BagGetEmptySlotsThreaded(emptySlotIds)
end

function GuildBankToBagMoveContext.GetTargetSlotId(self, itemString, emptySlotIds)
	return private.BagBankGetTargetSlotId(itemString, emptySlotIds)
end



-- ============================================================================
-- Module Functions
-- ============================================================================

function MoveContext.GetBagToBank()
	private.bagToBank = private.bagToBank or BagToBankMoveContext()
	return private.bagToBank
end

function MoveContext.GetBankToBag()
	private.bankToBag = private.bankToBag or BankToBagMoveContext()
	return private.bankToBag
end

function MoveContext.GetBagToGuildBank()
	private.bagToGuildBank = private.bagToGuildBank or BagToGuildBankMoveContext()
	return private.bagToGuildBank
end

function MoveContext.GetGuildBankToBag()
	private.guildBankToBag = private.guildBankToBag or GuildBankToBagMoveContext()
	return private.guildBankToBag
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.BagBankGetSlotQuantity(slotId)
	local _, stackSize = Container.GetItemInfo(SlotId.Split(slotId))
	return stackSize or 0
end

function private.BagSlotIdIterator(itemString)
	itemString = TSM.Groups.TranslateItemString(itemString)
	local query = BagTracking.CreateQueryBagsItem(itemString)
		:Select("slotId", "quantity")
		:VirtualField("autoBaseItemString", "string", TSM.Groups.TranslateItemString, "itemString")
		:Equal("autoBaseItemString", itemString)
	if TSM.Banking.IsGuildBankOpen() then
		query:Equal("isBoA", false)
		query:Equal("isBoP", false)
	end
	return query:IteratorAndRelease()
end

function private.BagGetEmptySlotsThreaded(emptySlotIds)
	local sortValue = Threading.AcquireSafeTempTable()
	for bag = BACKPACK_CONTAINER, Container.GetNumBags() do
		private.GetEmptySlotsHelper(bag, emptySlotIds, sortValue)
	end
	Table.SortWithValueLookup(emptySlotIds, sortValue)
	Threading.ReleaseSafeTempTable(sortValue)
end

function private.GetEmptySlotsHelper(bag, emptySlotIds, sortValue)
	local isSpecial = nil
	if bag == REAGENTBANK_CONTAINER then
		isSpecial = true
	elseif bag == BACKPACK_CONTAINER or bag == BANK_CONTAINER then
		isSpecial = false
	else
		isSpecial = Container.GetBagItemFamily(bag) ~= 0
	end
	for slot = 1, Container.GetNumSlots(bag) do
		if not private.BagSlotHasItem(bag, slot) then
			local slotId = SlotId.Join(bag, slot)
			tinsert(emptySlotIds, slotId)
			sortValue[slotId] = slotId + (isSpecial and 0 or 100000)
		end
	end
end

function private.BagSlotHasItem(bag, slot)
	return Container.GetItemInfo(bag, slot) and true or false
end

function private.BagBankGetTargetSlotId(itemString, emptySlotIds)
	for i, slotId in ipairs(emptySlotIds) do
		local bag = SlotId.Split(slotId)
		if InventoryInfo.ItemWillGoInBag(ItemInfo.GetLink(itemString), bag) then
			return tremove(emptySlotIds, i)
		end
	end
end
