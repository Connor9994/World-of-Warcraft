-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Accounting = TSM:NewPackage("Accounting")
local Math = TSM.Include("Util.Math")
local private = {
	characterGuildTemp = {},
}
local SECONDS_PER_DAY = 24 * 60 * 60



-- ============================================================================
-- Module Functions
-- ============================================================================

function Accounting.GetSummaryQuery(timeFilterStart, timeFilterEnd, ignoredCharacters)
	local query = TSM.Accounting.Transactions.CreateQuery()
		:Select("type", "itemString", "price", "quantity", "time")
	if timeFilterStart then
		query:GreaterThan("time", timeFilterStart)
	end
	if timeFilterEnd then
		query:LessThan("time", timeFilterEnd)
	end
	if ignoredCharacters then
		wipe(private.characterGuildTemp)
		for characterGuild in pairs(ignoredCharacters) do
			local character, realm = strmatch(characterGuild, "^(.+) %- .+ %- (.+)$")
			if character and realm == GetRealmName() then
				private.characterGuildTemp[character] = true
			end
		end
		query:NotInTable("player", private.characterGuildTemp)
	end
	return query
end

function Accounting.GetSaleRate(itemString)
	-- since auction data only goes back 180 days, limit the sales to that same time range
	local _, totalSaleNum = TSM.Accounting.Transactions.GetSaleStats(itemString, time() - 180 * SECONDS_PER_DAY)
	if not totalSaleNum then
		return nil
	end
	local _, _, totalFailed = TSM.Accounting.Auctions.GetStats(itemString)
	if not totalFailed then
		return nil
	end
	return Math.Round(totalSaleNum / (totalSaleNum + totalFailed), 0.01)
end
