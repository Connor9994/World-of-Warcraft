-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Inventory = TSM.Init("Service.Inventory") ---@class Service.Inventory
local CustomPrice = TSM.Include("Service.CustomPrice")
local AltTracking = TSM.Include("Service.AltTracking")
local BagTracking = TSM.Include("Service.BagTracking")
local AuctionTracking = TSM.Include("Service.AuctionTracking")
local MailTracking = TSM.Include("Service.MailTracking")
local Sync = TSM.Include("Service.Sync")
local private = {
	callbacks = {},
}



-- ============================================================================
-- Module Loading
-- ============================================================================

Inventory:OnSettingsLoad(function()
	BagTracking.RegisterCallback(private.QuantityChangedCallback)
	AuctionTracking.RegisterCallback(private.QuantityChangedCallback)
	MailTracking.RegisterCallback(private.QuantityChangedCallback)
	Sync.RegisterMirrorCallback(private.QuantityChangedCallback)
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function Inventory.RegisterCallback(callback)
	tinsert(private.callbacks, callback)
end

function Inventory.GetTotalQuantity(itemString)
	local total = 0
	total = total + BagTracking.GetBagQuantity(itemString)
	total = total + BagTracking.GetBankQuantity(itemString)
	total = total + BagTracking.GetReagentBankQuantity(itemString)
	total = total + MailTracking.GetQuantity(itemString)
	total = total + AuctionTracking.GetQuantity(itemString)
	total = total + AltTracking.GetTotalQuantity(itemString)
	total = total + AltTracking.GetTotalGuildQuantity(itemString)
	return total
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.QuantityChangedCallback()
	CustomPrice.OnSourceChange("NumInventory")
	for _, callback in ipairs(private.callbacks) do
		callback()
	end
end
