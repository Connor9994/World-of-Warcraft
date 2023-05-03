-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local AuctionDB = TSM.Tooltip:NewPackage("AuctionDB")
local L = TSM.Include("Locale").GetTable()
local ItemString = TSM.Include("Util.ItemString")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local Math = TSM.Include("Util.Math")
local private = {}
local INFO = {
	{ key = "minBuyout", default = true, label = L["Min Buyout"], format = "PRICE" },
	{ key = "marketValueRecent", default = false, label = L["Recent Value"], format = "PRICE" },
	{ key = "marketValue", default = true, label = L["Market Value"], format = "PRICE", hasTrend = true },
	{ key = "historical", default = false, label = L["Historical Price"], format = "PRICE" },
	{ key = "regionMarketValue", default = true, label = L["Region Market Value Avg"], format = "PRICE", hasTrend = true },
	{ key = "regionHistorical", default = false, label = L["Region Historical Price"], format = "PRICE" },
	{ key = "regionSale", default = true, label = L["Region Sale Avg"], format = "PRICE" },
	{ key = "regionSalePercent", default = true, label = L["Region Sale Rate"], format = "DECIMAL" },
	{ key = "regionSoldPerDay", default = true, label = L["Region Avg Daily Sold"], format = "DECIMAL" },
}
local DATA_OLD_THRESHOLD_SECONDS = 60 * 60 * 3



-- ============================================================================
-- Module Functions
-- ============================================================================

function AuctionDB.OnInitialize()
	local tooltipInfo = TSM.Tooltip.CreateInfo()
		:SetHeadings(L["TSM AuctionDB"], private.PopulateRightText)
		:SetSettingsModule("AuctionDB")
	for _, info in ipairs(INFO) do
		if info.hasTrend then
			tooltipInfo:AddSettingValueEntry(info.key, "noTrend", "none", private.PopulateLine, info)
			tooltipInfo:AddSettingValueEntry(info.key, "withTrend", "none", private.PopulateLineWithTrend, info)
		else
			tooltipInfo:AddSettingEntry(info.key, info.default, private.PopulateLine, info)
		end
	end
	TSM.Tooltip.Register(tooltipInfo)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.PopulateLine(tooltip, itemString, info)
	local value = nil
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		value = 11
	else
		value = private.GetItemData(itemString, info.key)
	end
	if not value then
		return
	end
	if info.format == "PRICE" then
		tooltip:AddItemValueLine(info.label, value)
	elseif info.format == "DECIMAL" then
		tooltip:AddTextLine(info.label, format("%0.3f", value))
	elseif info.format == "PERCENT" then
		local color = value >= 0 and Theme.GetColor("FEEDBACK_GREEN") or Theme.GetColor("FEEDBACK_RED")
		tooltip:AddTextLine(info.label, color:ColorText(format("%s%d%%", value < 0 and "-" or "", abs(value))))
	else
		error("Invalid format: "..tostring(info.format))
	end
end

function private.PopulateLineWithTrend(tooltip, itemString, info)
	local value, trend = nil, nil
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		value = 11
		trend = 0
	else
		value = private.GetItemData(itemString, info.key)
		local isRegionPrice = strmatch(info.key, "^region") and true or false
		local marketValue = private.GetItemData(itemString, isRegionPrice and "regionMarketValue" or "marketValue")
		local historical = private.GetItemData(itemString, isRegionPrice and "regionHistorical" or "historical")
		trend = marketValue and historical and Math.Round((marketValue - historical) * 100 / historical)
	end
	if not value then
		return
	end
	local trendStr = nil
	if trend then
		local color = trend >= 0 and "FEEDBACK_GREEN" or "FEEDBACK_RED"
		local iconTextureKey = trend >= 0 and TextureAtlas.GetFlippedVerticallyKey("iconPack.12x12/Caret/Down") or "iconPack.12x12/Caret/Down"
		local iconTextureStr = TextureAtlas.GetTextureLink(TextureAtlas.GetColoredKey(iconTextureKey, color))
		trendStr = "["..iconTextureStr..Theme.GetColor(color):ColorText(abs(trend).."%").."]"
	else
		trendStr = "[---]"
	end
	tooltip:AddItemValueLine(info.label, value, trendStr)
end

function private.PopulateRightText(tooltip, itemString)
	local lastScan, numAuctions = nil
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		lastScan = time() - 120
		numAuctions = 5
	else
		lastScan = TSM.AuctionDB.GetAppDataUpdateTimes()
		numAuctions = TSM.AuctionDB.GetRealmItemData(itemString, "numAuctions") or 0
	end
	if lastScan > 0 then
		local timeColor = (time() - lastScan) > DATA_OLD_THRESHOLD_SECONDS and Theme.GetColor("FEEDBACK_RED") or Theme.GetColor("FEEDBACK_GREEN")
		local timeDiff = SecondsToTime(time() - lastScan)
		return tooltip:ApplyValueColor(format(L["%d auctions"], numAuctions)).." ("..timeColor:ColorText(format(L["%s ago"], timeDiff))..")"
	else
		return tooltip:ApplyValueColor(L["Not Scanned"])
	end
end

function private.GetItemData(itemString, key)
	if strmatch(key, "^region") then
		return TSM.AuctionDB.GetRegionItemData(itemString, key)
	else
		return TSM.AuctionDB.GetRealmItemData(itemString, key)
	end
end
