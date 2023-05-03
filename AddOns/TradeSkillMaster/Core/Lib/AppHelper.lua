-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local AppHelper = TSM:NewPackage("AppHelper")
local Environment = TSM.Include("Environment")
local ClassicRealms = TSM.Include("Data.ClassicRealms")
local Wow = TSM.Include("Util.Wow")
local Log = TSM.Include("Util.Log")
local AuctionHouseWrapper = TSM.Include("Service.AuctionHouseWrapper")
local LibRealmInfo = LibStub("LibRealmInfo")
local private = {
	-- The addon has historically had the game version as a suffix, whereas the app data has it as a prefix, so we store both
	addonRegion = nil,
	appDataRegion = nil,
	appInfo = nil,
	auctionDBData = {},
	shoppingData = nil,
}
local APP_INFO_REQUIRED_KEYS = { "version", "lastSync", "message", "news" }
local AUCTIONDB_REALM_TAGS = {
	AUCTIONDB_REALM_DATA = true,
	AUCTIONDB_REALM_SCAN_STAT = true,
	AUCTIONDB_REALM_HISTORICAL = true,
}
local AUCTIONDB_REGION_TAGS = {
	AUCTIONDB_REGION_COMMODITY = true,
	AUCTIONDB_REGION_HISTORICAL = true,
	AUCTIONDB_REGION_SALE = true,
	AUCTIONDB_REGION_STAT = true,
}



-- ============================================================================
-- Global Function
-- ============================================================================

function TSM_APPHELPER_LOAD_DATA(tag, realmOrRegion, data)
	if type(tag) ~= "string" or type(realmOrRegion) ~= "string" or type(data) ~= "string" then
		Log.Err("Unknown AppHelper data: %s, %s, %s", strsub(tostring(tag), 1, 20), strsub(tostring(realmOrRegion), 1, 20), strsub(tostring(data), 1, 20))
		return
	end
	if tag == "APP_INFO" and realmOrRegion == "Global" then
		if realmOrRegion ~= "Global" then
			Log.Info("Ignoring app info for '%s'", realmOrRegion)
			return
		elseif private.appInfo then
			Log.Err("Duplicate app info")
			return
		end
		Log.Info("Got app info")

		-- Load the app info
		private.appInfo = assert(loadstring(data))()
		for _, key in ipairs(APP_INFO_REQUIRED_KEYS) do
			assert(private.appInfo[key])
		end

		-- Clean up the news content strings
		for _, info in ipairs(private.appInfo.news) do
			-- For some reason the data is missing a few newlines before bold headings, so add one
			info.content = gsub(info.content, "(<strong>)", "\n\n%1")
			info.content = gsub(info.content, "<br%s+/>", "\n")
			info.content = gsub(info.content, "<strong>(.-)</strong>", "%1")
			info.content = gsub(info.content, "<a href='.-'>(.-)</a>", "%1")
			info.content = gsub(info.content, "&#8211;", "-")
			info.content = gsub(info.content, "&#8216;", "'")
		end
	elseif AUCTIONDB_REALM_TAGS[tag] or AUCTIONDB_REGION_TAGS[tag] then
		if (AUCTIONDB_REALM_TAGS[tag] and private.IsCurrentRealm(realmOrRegion)) or (AUCTIONDB_REGION_TAGS[tag] and realmOrRegion == private.appDataRegion) then
			if private.auctionDBData[tag] then
				Log.Err("Duplicate AuctionDB data (%s)", tag)
				return
			end
			private.auctionDBData[tag] = data
			Log.Info("Got AuctionDB data (%s)", tag)
		else
			Log.Info("Ignoring AuctionDB data (%s) for '%s'", tag, realmOrRegion)
		end
	elseif tag == "SHOPPING_SEARCHES" then
		if not private.IsCurrentRealm(realmOrRegion) then
			Log.Info("Ignoring Shopping data for '%s'", realmOrRegion)
			return
		elseif private.shoppingData then
			Log.Err("Duplicate Shopping data")
			return
		end
		private.shoppingData = data
		Log.Info("Got Shopping data")
	else
		Log.Err("Unknown AppHelper data: %s, %s", strsub(tag, 1, 25), strsub(realmOrRegion, 1, 25))
	end
end



-- ============================================================================
-- Module Functions
-- ============================================================================

function AppHelper.OnInitialize()
	local cVar = GetCVar("Portal")
	local region = nil
	if Environment.IsRetail() then
		region = LibRealmInfo:GetCurrentRegion() or (cVar ~= "public-test" and cVar) or "PTR"
	else
		local currentRealmName = private.SanitizedRealmName(Wow.GetRealmName())
		region = ClassicRealms.GetRegion(currentRealmName) or (cVar ~= "public-test" and cVar) or "PTR"
	end
	if Environment.IsRetail() then
		private.addonRegion = region
		private.appDataRegion = region
	elseif Environment.IsVanillaClassic() then
		private.addonRegion = region.."-Classic"
		private.appDataRegion = "Classic-"..region
	elseif Environment.IsWrathClassic() then
		private.addonRegion = region.."-BCC"
		private.appDataRegion = "BCC-"..region
	else
		error("Invalid game version")
	end
	AuctionHouseWrapper.SetAnalyticsRegionRealm(private.addonRegion.."-"..private.SanitizedRealmName(Wow.GetRealmName()))
end

function AppHelper.OnEnable()
	TSM_APPHELPER_LOAD_DATA = nil
end

function AppHelper.GetLastSync()
	return private.appInfo and private.appInfo.lastSync or nil
end

function AppHelper.GetMessage()
	if not private.appInfo then
		return
	end
	return private.appInfo.message.msg, private.appInfo.message.id
end

function AppHelper.GetNews()
	return private.appInfo and private.appInfo.news or nil
end

function AppHelper.GetRegion()
	return private.addonRegion
end

function AppHelper.GetAuctionDBData()
	local realmData = private.auctionDBData["AUCTIONDB_REALM_DATA"]
	local realmScanStat = private.auctionDBData["AUCTIONDB_REALM_SCAN_STAT"]
	local realmHistorical = private.auctionDBData["AUCTIONDB_REALM_HISTORICAL"]
	local regionCommodity = private.auctionDBData["AUCTIONDB_REGION_COMMODITY"]
	local regionStat = private.auctionDBData["AUCTIONDB_REGION_STAT"]
	local regionHistorical = private.auctionDBData["AUCTIONDB_REGION_HISTORICAL"]
	local regionSale = private.auctionDBData["AUCTIONDB_REGION_SALE"]
	return realmData, realmScanStat, realmHistorical, regionCommodity, regionStat, regionHistorical, regionSale
end

function AppHelper.GetShoppingData()
	return private.shoppingData
end



-- ============================================================================
-- Module Functions
-- ============================================================================

function private.SanitizedRealmName(realm)
	return gsub(realm, "\226", "'")
end

function private.IsCurrentRealm(realm)
	local currentRealmName = private.SanitizedRealmName(Wow.GetRealmName())
	if not Environment.HasFeature(Environment.FEATURES.CONNECTED_FACTION_AH) then
		currentRealmName = currentRealmName.."-"..Wow.GetFactionName()
	end
	return strlower(private.SanitizedRealmName(realm)) == strlower(currentRealmName)
end
