-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Util = TSM.Init("Service.AuctionScanClasses.Util") ---@class Service.AuctionScanClasses.Util
local Environment = TSM.Include("Environment")
local ItemInfo = TSM.Include("Service.ItemInfo")



-- ============================================================================
-- Module Functions
-- ============================================================================

function Util.HasItemInfo(itemString)
	local itemName = ItemInfo.GetName(itemString)
	local itemLevel = ItemInfo.GetItemLevel(itemString)
	local quality = ItemInfo.GetQuality(itemString)
	local minLevel = ItemInfo.GetMinLevel(itemString)
	local hasIsCommodity = not Environment.IsRetail() or ItemInfo.IsCommodity(itemString) ~= nil
	local hasCanHaveVariations = ItemInfo.CanHaveVariations(itemString) ~= nil
	local result = itemName and itemLevel and quality and minLevel and hasIsCommodity and hasCanHaveVariations
	if not result then
		ItemInfo.FetchInfo(itemString)
	end
	return result
end

function Util.FixSellerName(seller, sellerFull)
	local realm = GetRealmName()
	if sellerFull and strjoin("-", seller, realm) ~= sellerFull then
		return sellerFull
	else
		return seller
	end
end
