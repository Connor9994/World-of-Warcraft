-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local BuyoutSearch = TSM.Sniper:NewPackage("BuyoutSearch")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Log = TSM.Include("Util.Log")
local Threading = TSM.Include("Service.Threading")
local ItemInfo = TSM.Include("Service.ItemInfo")
local private = {
	scanThreadId = nil,
	searchContext = nil,
	itemList = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function BuyoutSearch.OnInitialize()
	private.scanThreadId = Threading.New("SNIPER_BUYOUT_SEARCH", private.ScanThread)
	private.searchContext = TSM.Sniper.SniperSearchContext(private.scanThreadId, private.MarketValueFunction, "BUYOUT")
end

function BuyoutSearch.GetSearchContext()
	return private.searchContext
end



-- ============================================================================
-- Scan Thread
-- ============================================================================

function private.ScanThread(auctionScan)
	local numQueries = auctionScan:GetNumQueries()
	if numQueries == 0 then
		if Environment.IsRetail() then
			wipe(private.itemList)
			if not TSM.Sniper.PopulateItemList(private.itemList) then
				-- scan the entire AH
				auctionScan:NewQuery()
					:AddCustomFilter(private.QueryFilter)
			elseif #private.itemList == 0 then
				Log.PrintUser(L["Failed to start sniper. No groups have a Sniper operation applied."])
				return false
			else
				-- scan for the list of items
				auctionScan:AddItemListQueriesThreaded(private.itemList)
				for _, query in auctionScan:QueryIterator() do
					query:AddCustomFilter(private.QueryFilter)
				end
			end
		else
			auctionScan:NewQuery()
				:AddCustomFilter(private.QueryFilter)
				:SetPage("LAST")
		end
	end
	-- don't care if the scan fails for sniper since it's rerun constantly
	auctionScan:ScanQueriesThreaded()
	return true
end

function private.QueryFilter(_, subRow)
	local baseItemString = subRow:GetBaseItemString()
	local itemString = subRow:GetItemString()
	local maxPrice = itemString and TSM.Operations.Sniper.GetBelowPrice(itemString) or nil
	if itemString and not maxPrice then
		-- no Shopping operation applies to this item, so filter it out
		return true
	end
	local auctionBuyout, itemBuyout, minItemBuyout = subRow:GetBuyouts()
	itemBuyout = itemBuyout or minItemBuyout
	if not itemBuyout then
		-- don't have buyout info yet, so don't filter
		return false
	elseif auctionBuyout == 0 then
		-- no buyout, so filter it out
		return true
	elseif itemString then
		-- filter if the buyout is too high
		return itemBuyout > maxPrice
	elseif not ItemInfo.CanHaveVariations(baseItemString) then
		-- check the buyout against the base item
		return itemBuyout > (TSM.Operations.Sniper.GetBelowPrice(baseItemString) or 0)
	end

	-- check if any variant of this item is in a group and could potentially be worth scnaning
	local hasPotentialItem = false
	for _, groupItemString in TSM.Groups.ItemByBaseItemStringIterator(baseItemString) do
		hasPotentialItem = hasPotentialItem or itemBuyout < (TSM.Operations.Sniper.GetBelowPrice(groupItemString) or 0)
	end
	if hasPotentialItem then
		return false
	elseif not TSM.Operations.Sniper.HasOperation(baseItemString) then
		-- no potential other variants we care about
		return true
	end
	return false
end

function private.MarketValueFunction(row)
	local itemString = row:GetItemString()
	return itemString and TSM.Operations.Sniper.GetBelowPrice(itemString) or nil
end
