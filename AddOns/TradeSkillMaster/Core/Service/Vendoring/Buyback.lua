-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Buyback = TSM.Vendoring:NewPackage("Buyback")
local Database = TSM.Include("Util.Database")
local Delay = TSM.Include("Util.Delay")
local Event = TSM.Include("Util.Event")
local ItemString = TSM.Include("Util.ItemString")
local DefaultUI = TSM.Include("Service.DefaultUI")
local ItemInfo = TSM.Include("Service.ItemInfo")
local private = {
	buybackDB = nil,
	updateTimer = nil,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Buyback.OnInitialize()
	private.buybackDB = Database.NewSchema("BUYBACK")
		:AddUniqueNumberField("index")
		:AddStringField("itemString")
		:AddNumberField("price")
		:AddNumberField("quantity")
		:Commit()
	private.updateTimer = Delay.CreateTimer("VENDOR_BUYBACK_UPDATE", private.UpdateBuybackDB)
	DefaultUI.RegisterMerchantVisibleCallback(private.MechantVisibilityHandler)
	Event.Register("MERCHANT_UPDATE", private.MerchantUpdateEventHandler)
end

function Buyback.CreateQuery()
	return private.buybackDB:NewQuery()
		:VirtualField("name", "string", ItemInfo.GetName, "itemString", "?")
end

function Buyback.BuybackItem(index)
	BuybackItem(index)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.MechantVisibilityHandler(visible)
	if visible then
		private.updateTimer:RunForFrames(1)
	else
		private.updateTimer:Cancel()
		private.buybackDB:Truncate()
	end
end

function private.MerchantUpdateEventHandler()
	private.updateTimer:RunForFrames(1)
end

function private.UpdateBuybackDB()
	private.buybackDB:TruncateAndBulkInsertStart()
	for i = 1, GetNumBuybackItems() do
		local itemString = ItemString.Get(GetBuybackItemLink(i))
		if itemString then
			local _, _, price, quantity = GetBuybackItemInfo(i)
			private.buybackDB:BulkInsertNewRow(i, itemString, price, quantity)
		end
	end
	private.buybackDB:BulkInsertEnd()
end
