-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local BlackMarket = TSM.Init("Service.BlackMarket") ---@class Service.BlackMarket
local Environment = TSM.Include("Environment")
local Event = TSM.Include("Util.Event")
local TempTable = TSM.Include("Util.TempTable")
local ItemString = TSM.Include("Util.ItemString")
local private = {
	data = nil,
	time = nil,
}



-- ============================================================================
-- Module Loading
-- ============================================================================

BlackMarket:OnModuleLoad(function()
	-- setup BMAH scanning
	if Environment.HasFeature(Environment.FEATURES.BLACK_MARKET_AH) then
		Event.Register("BLACK_MARKET_ITEM_UPDATE", private.ScanBMAH)
	end
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function BlackMarket.GetScanData()
	return private.data, private.time
end



-- ============================================================================
-- Private Helper Features
-- ============================================================================

function private.ScanBMAH()
	local numItems = C_BlackMarket.GetNumItems()
	if not numItems then
		return
	end
	local items = TempTable.Acquire()
	for i = 1, numItems do
		local _, _, quantity, _, _, _, _, _, minBid, minIncr, currBid, _, numBids, timeLeft, itemLink, bmId = C_BlackMarket.GetItemInfoByIndex(i)
		local itemID = ItemString.ToId(itemLink)
		if itemID then
			minBid = floor(minBid / COPPER_PER_GOLD)
			minIncr = floor(minIncr / COPPER_PER_GOLD)
			currBid = floor(currBid / COPPER_PER_GOLD)
			tinsert(items, "[" .. strjoin(",", bmId, itemID, quantity, timeLeft, minBid, minIncr, currBid, numBids, time()) .. "]")
		end
	end
	private.data = "[" .. table.concat(items, ",") .. "]"
	private.time = time()
	TempTable.Release(items)
end
