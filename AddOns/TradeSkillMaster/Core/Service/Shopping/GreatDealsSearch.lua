-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local GreatDealsSearch = TSM.Shopping:NewPackage("GreatDealsSearch")
local String = TSM.Include("Util.String")
local ItemInfo = TSM.Include("Service.ItemInfo")
local private = {
	filter = nil,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function GreatDealsSearch.OnEnable()
	local appData = TSM.AppHelper.GetShoppingData()
	if not appData then
		return
	end
	private.filter = assert(loadstring(appData))().greatDeals
	-- populate item info cache
	for item in String.SplitIterator(private.filter, ";") do
		item = strsplit("/", item)
		ItemInfo.FetchInfo(item)
	end
end

function GreatDealsSearch.GetFilter()
	return private.filter
end
