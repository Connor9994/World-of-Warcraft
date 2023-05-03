-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Environment = TSM.Include("Environment")
local Log = TSM.Include("Util.Log")
local Analytics = TSM.Include("Util.Analytics")
local Math = TSM.Include("Util.Math")
local Money = TSM.Include("Util.Money")
local ItemString = TSM.Include("Util.ItemString")
local Wow = TSM.Include("Util.Wow")
local Theme = TSM.Include("Util.Theme")
local TempTable = TSM.Include("Util.TempTable")
local ObjectPool = TSM.Include("Util.ObjectPool")
local ErrorHandler = TSM.Include("Service.ErrorHandler")
local SlashCommands = TSM.Include("Service.SlashCommands")
local Threading = TSM.Include("Service.Threading")
local Settings = TSM.Include("Service.Settings")
local ItemInfo = TSM.Include("Service.ItemInfo")
local CustomPrice = TSM.Include("Service.CustomPrice")
local BlackMarket = TSM.Include("Service.BlackMarket")
local Inventory = TSM.Include("Service.Inventory")
local LibDBIcon = LibStub("LibDBIcon-1.0")
local L = TSM.Include("Locale").GetTable()
local private = {
	settings = nil,
	itemInfoPublisher = nil,  --luacheck: ignore 1004 - just stored for GC reasons
	oribosExchangeTemp = {},
}
local LOGOUT_TIME_WARNING_THRESHOLD = 0.02
do
	-- show a message if we were updated
	if GetAddOnMetadata("TradeSkillMaster", "Version") ~= "v4.12.35" then
		Wow.ShowBasicMessage("TSM was just updated and may not work properly until you restart WoW.")
	end
end



-- ============================================================================
-- Module Functions
-- ============================================================================

function TSM.OnInitialize()
	-- load settings
	TSM.db = Settings.GetDB()
	private.settings = Settings.NewView()
		:AddKey("global", "coreOptions", "chatFrame")
		:AddKey("global", "coreOptions", "destroyValueSource")
		:AddKey("global", "coreOptions", "minimapIcon")
		:AddKey("global", "debug", "chatLoggingEnabled")
		:AddKey("global", "internalData", "appMessageId")
		:AddKey("global", "internalData", "lastCharacter")
		:AddKey("global", "internalData", "whatsNewVersion")
		:AddKey("sync", "internalData", "classKey")
		:RegisterCallback("destroyValueSource", function() CustomPrice.OnSourceChange("Destroy") end)

	-- set the last character we logged into for display in the app
	private.settings.lastCharacter = UnitName("player").." - "..GetRealmName()

	-- configure the logger
	Log.SetChatFrame(private.settings.chatFrame)
	Log.SetLoggingToChatEnabled(private.settings.chatLoggingEnabled)
	Log.SetCurrentThreadNameFunction(Threading.GetCurrentThreadName)

	-- store the class of this character
	private.settings.classKey = select(2, UnitClass("player"))

	-- core price sources
	private.itemInfoPublisher = ItemInfo.GetPublisher()
		:CallFunction(function(itemString)
			CustomPrice.OnSourceChange("VendorBuy", itemString)
			CustomPrice.OnSourceChange("VendorSell", itemString)
			CustomPrice.OnSourceChange("ItemQuality", itemString)
			CustomPrice.OnSourceChange("ItemLevel", itemString)
			CustomPrice.OnSourceChange("RequiredLevel", itemString)
		end)
		:Stored()
	CustomPrice.RegisterSource("TSM", "VendorBuy", L["Buy from Vendor"], ItemInfo.GetVendorBuy)
	CustomPrice.RegisterSource("TSM", "VendorSell", L["Sell to Vendor"], ItemInfo.GetVendorSell)
	local function GetDestroyValue(itemString)
		return CustomPrice.GetConversionsValue(itemString, private.settings.destroyValueSource)
	end
	CustomPrice.RegisterSource("TSM", "Destroy", L["Destroy Value"], GetDestroyValue)
	CustomPrice.RegisterSource("TSM", "ItemQuality", L["Item Quality"], ItemInfo.GetQuality)
	CustomPrice.RegisterSource("TSM", "ItemLevel", L["Item Level"], ItemInfo.GetItemLevel)
	CustomPrice.RegisterSource("TSM", "RequiredLevel", L["Required Level"], ItemInfo.GetMinLevel)
	CustomPrice.RegisterSource("TSM", "NumInventory", L["Total Inventory Quantity"], Inventory.GetTotalQuantity)

	-- Auctioneer price sources
	if Wow.IsAddonEnabled("Auc-Advanced") and AucAdvanced then
		local registeredAuctioneerSources = {}
		hooksecurefunc(AucAdvanced, "SendProcessorMessage", function(msg)
			if msg == "scanfinish" then
				for _, source in ipairs(registeredAuctioneerSources) do
					CustomPrice.OnSourceChange(source)
				end
			end
		end)
		if AucAdvanced.Modules.Util.Appraiser and AucAdvanced.Modules.Util.Appraiser.GetPrice then
			CustomPrice.RegisterSource("External", "AucAppraiser", L["Auctioneer - Appraiser"], AucAdvanced.Modules.Util.Appraiser.GetPrice, true)
			tinsert(registeredAuctioneerSources, "AucAppraiser")
		end
		if AucAdvanced.Modules.Util.SimpleAuction and AucAdvanced.Modules.Util.SimpleAuction.Private.GetItems then
			local function GetAucMinBuyout(itemLink)
				return select(6, AucAdvanced.Modules.Util.SimpleAuction.Private.GetItems(itemLink)) or nil
			end
			CustomPrice.RegisterSource("External", "AucMinBuyout", L["Auctioneer - Minimum Buyout"], GetAucMinBuyout, true)
			tinsert(registeredAuctioneerSources, "AucMinBuyout")
		end
		if AucAdvanced.API.GetMarketValue then
			CustomPrice.RegisterSource("External", "AucMarket", L["Auctioneer - Market Value"], AucAdvanced.API.GetMarketValue, true)
			tinsert(registeredAuctioneerSources, "AucMarket")
		end
	end

	-- Auctionator price sources
	if Wow.IsAddonEnabled("Auctionator") and Auctionator and Auctionator.API and Auctionator.API.v1 and Auctionator.API.v1.RegisterForDBUpdate then
		-- retail version
		local ok = pcall(function()
			Auctionator.API.v1.RegisterForDBUpdate("TradeSkillMaster", function() CustomPrice.OnSourceChange("AtrValue") end)
		end)
		if ok then
			local function GetAuctionatorPrice(itemLink)
				return Auctionator.API.v1.GetAuctionPriceByItemLink("TradeSkillMaster", itemLink)
			end
			CustomPrice.RegisterSource("External", "AtrValue", L["Auctionator - Auction Value"], GetAuctionatorPrice, true)
		end
	elseif Wow.IsAddonEnabled("Auctionator") and Atr_GetAuctionBuyout and Atr_RegisterFor_DBupdated then
		-- classic version
		Atr_RegisterFor_DBupdated(function()
			CustomPrice.OnSourceChange("AtrValue")
		end)
		CustomPrice.RegisterSource("External", "AtrValue", L["Auctionator - Auction Value"], Atr_GetAuctionBuyout, true)
	end

	-- OribosExchange price sources
	if Wow.IsAddonEnabled("OribosExchange") and OEMarketInfo then
		local function GetOEPrice(itemLink, arg)
			local data = OEMarketInfo(itemLink, private.oribosExchangeTemp)
			return data and data[arg] or nil
		end
		CustomPrice.RegisterSource("External", "OERealm", L["Oribos Exchange Realm Price"], GetOEPrice, true, "market")
		CustomPrice.RegisterSource("External", "OERegion", L["Oribos Exchange Region Price"], GetOEPrice, true, "region")
	end

	-- AHDB price sources
	if Wow.IsAddonEnabled("AuctionDB") and AuctionDB and AuctionDB.AHGetAuctionInfoByLink then
		hooksecurefunc(AuctionDB, "AHendOfScanCB", function()
			CustomPrice.OnSourceChange("AHDBMinBuyout")
			CustomPrice.OnSourceChange("AHDBMinBid")
		end)
		local function GetAHDBPrice(itemLink, arg)
			local info = AuctionDB:AHGetAuctionInfoByLink(itemLink)
			return info and info[arg] or nil
		end
		CustomPrice.RegisterSource("External", "AHDBMinBuyout", L["AHDB Minimum Buyout"], GetAHDBPrice, true, "minBuyout")
		CustomPrice.RegisterSource("External", "AHDBMinBid", L["AHDB Minimum Bid"], GetAHDBPrice, true, "minBid")
	end

	-- module price sources
	CustomPrice.RegisterSource("Accounting", "AvgSell", L["Avg Sell Price"], TSM.Accounting.Transactions.GetAverageSalePrice)
	CustomPrice.RegisterSource("Accounting", "MaxSell", L["Max Sell Price"], TSM.Accounting.Transactions.GetMaxSalePrice)
	CustomPrice.RegisterSource("Accounting", "MinSell", L["Min Sell Price"], TSM.Accounting.Transactions.GetMinSalePrice)
	CustomPrice.RegisterSource("Accounting", "AvgBuy", L["Avg Buy Price"], TSM.Accounting.Transactions.GetAverageBuyPrice, nil, false)
	CustomPrice.RegisterSource("Accounting", "SmartAvgBuy", L["Smart Avg Buy Price"], TSM.Accounting.Transactions.GetAverageBuyPrice, nil, true)
	CustomPrice.RegisterSource("Accounting", "MaxBuy", L["Max Buy Price"], TSM.Accounting.Transactions.GetMaxBuyPrice)
	CustomPrice.RegisterSource("Accounting", "MinBuy", L["Min Buy Price"], TSM.Accounting.Transactions.GetMinBuyPrice)
	CustomPrice.RegisterSource("Accounting", "NumExpires", L["Expires Since Last Sale"], TSM.Accounting.Auctions.GetNumExpiresSinceSale)
	CustomPrice.RegisterSource("Accounting", "SaleRate", L["Sale Rate"], TSM.Accounting.GetSaleRate)
	CustomPrice.RegisterSource("AuctionDB", "DBMarket", L["AuctionDB - Market Value"], TSM.AuctionDB.GetRealmItemData, false, "marketValue")
	CustomPrice.RegisterSource("AuctionDB", "DBMinBuyout", L["AuctionDB - Minimum Buyout"], TSM.AuctionDB.GetRealmItemData, false, "minBuyout")
	CustomPrice.RegisterSource("AuctionDB", "DBRecent", L["AuctionDB - Recent Value"], TSM.AuctionDB.GetRealmItemData, false, "marketValueRecent")
	CustomPrice.RegisterSource("AuctionDB", "DBHistorical", L["AuctionDB - Historical Price"], TSM.AuctionDB.GetRealmItemData, false, "historical")
	CustomPrice.RegisterSource("AuctionDB", "DBRegionMarketAvg", L["AuctionDB - Region Market Value Average"], TSM.AuctionDB.GetRegionItemData, false, "regionMarketValue")
	CustomPrice.RegisterSource("AuctionDB", "DBRegionHistorical", L["AuctionDB - Region Historical Price"], TSM.AuctionDB.GetRegionItemData, false, "regionHistorical")
	CustomPrice.RegisterSource("AuctionDB", "DBRegionSaleAvg", L["AuctionDB - Region Sale Average"], TSM.AuctionDB.GetRegionItemData, false, "regionSale")
	CustomPrice.RegisterSource("AuctionDB", "DBRegionSaleRate", L["AuctionDB - Region Sale Rate"], TSM.AuctionDB.GetRegionItemData, false, "regionSalePercent")
	CustomPrice.RegisterSource("AuctionDB", "DBRegionSoldPerDay", L["AuctionDB - Region Sold Per Day"], TSM.AuctionDB.GetRegionItemData, false, "regionSoldPerDay")
	CustomPrice.RegisterSource("Crafting", "Crafting", L["Crafting Cost"], TSM.Crafting.Cost.GetLowestCostByItem, nil, nil, true)
	CustomPrice.RegisterSource("Crafting", "MatPrice", L["Crafting Material Cost"], TSM.Crafting.Cost.GetMatCost, nil, nil, true)

	-- operation-based price sources
	CustomPrice.RegisterSource("Operations", "auctioningopmin", L["First Auctioning Operation Min Price"], TSM.Operations.Auctioning.GetMinPrice, nil, nil, true)
	CustomPrice.RegisterSource("Operations", "auctioningopmax", L["First Auctioning Operation Max Price"], TSM.Operations.Auctioning.GetMaxPrice, nil, nil, true)
	CustomPrice.RegisterSource("Operations", "auctioningopnormal", L["First Auctioning Operation Normal Price"], TSM.Operations.Auctioning.GetNormalPrice, nil, nil, true)
	CustomPrice.RegisterSource("Operations", "shoppingopmax", L["Shopping Operation Max Price"], TSM.Operations.Shopping.GetMaxPrice, nil, nil, true)
	CustomPrice.RegisterSource("Operations", "sniperopmax", L["Sniper Operation Below Price"], TSM.Operations.Sniper.GetBelowPrice, nil, nil, true)

	-- slash commands
	SlashCommands.Register("", TSM.MainUI.Toggle, L["Toggles the main TSM window"])
	SlashCommands.Register("help", SlashCommands.PrintHelp, L["Prints the slash command help listing"])
	SlashCommands.Register("version", private.PrintVersions, L["Prints out the version numbers of all installed modules"])
	SlashCommands.Register("sources", CustomPrice.PrintSources, L["Prints out the available price sources for use in custom prices"])
	SlashCommands.Register("price", private.TestPriceSource, L["Allows for testing of custom prices"])
	SlashCommands.Register("profile", private.ChangeProfile, L["Changes to the specified profile (i.e. '/tsm profile Default' changes to the 'Default' profile)"])
	SlashCommands.Register("debug", private.DebugSlashCommandHandler)
	SlashCommands.Register("destroy", TSM.UI.DestroyingUI.Toggle, L["Opens the Destroying frame if there's stuff in your bags to be destroyed."])
	SlashCommands.Register("crafting", TSM.UI.CraftingUI.Toggle, L["Toggles the TSM Crafting UI."])
	SlashCommands.Register("tasklist", TSM.UI.TaskListUI.Toggle, L["Toggles the TSM Task List UI"])
	SlashCommands.Register("bankui", TSM.UI.BankingUI.Toggle, L["Toggles the TSM Banking UI if either the bank or guild bank is currently open."])
	SlashCommands.Register("get", TSM.Banking.GetByFilter, L["Gets items from the bank or guild bank matching the item or partial text entered."])
	SlashCommands.Register("put", TSM.Banking.PutByFilter, L["Puts items matching the item or partial text entered into the bank or guild bank."])
	SlashCommands.Register("restock_help", TSM.Crafting.RestockHelp, L["Tells you why a specific item is not being restocked and added to the queue."])

	-- create / register the minimap button
	local dataObj = LibStub("LibDataBroker-1.1"):NewDataObject("TradeSkillMaster", {
		type = "launcher",
		icon = "Interface\\Addons\\TradeSkillMaster\\Media\\TSM_Icon2",
		OnClick = function(_, button)
			if button ~= "LeftButton" then return end
			TSM.MainUI.Toggle()
		end,
		OnTooltipShow = function(tooltip)
			local cs = Theme.GetColor("INDICATOR_ALT"):GetTextColorPrefix()
			local ce = "|r"
			tooltip:AddLine("TradeSkillMaster "..Environment.GetVersion())
			tooltip:AddLine(format(L["%sLeft-Click%s to open the main window"], cs, ce))
			tooltip:AddLine(format(L["%sDrag%s to move this button"], cs, ce))
		end,
	})
	LibDBIcon:Register("TradeSkillMaster", dataObj, private.settings.minimapIcon)

	-- cache battle pet names
	if Environment.HasFeature(Environment.FEATURES.BATTLE_PETS) then
		for i = 1, C_PetJournal.GetNumPets() do
			C_PetJournal.GetPetInfoByIndex(i)
		end
	end

	-- force a garbage collection
	collectgarbage()
end

function TSM.OnEnable()
	for i = 1, GetNumAddOns() do
		local name = GetAddOnInfo(i)
		if strmatch(name, "^TradeSkillMaster") and name ~= "TradeSkillMaster" and name ~= "TradeSkillMaster_AppHelper" and name ~= "TradeSkillMaster_StringConverter" then
			Wow.ShowBasicMessage(format(L["An old TSM addon was found installed. Please remove %s and any other old TSM addons to avoid issues."], name))
			break
		end
	end

	if not Wow.IsAddonInstalled("TradeSkillMaster_AppHelper") then
		return
	end

	if not Wow.IsAddonEnabled("TradeSkillMaster_AppHelper") then
		-- TSM_AppHelper is disabled
		StaticPopupDialogs["TSM_APP_DATA_ERROR"] = {
			text = L["The TradeSkillMaster_AppHelper addon is installed, but not enabled. TSM has enabled it and requires a reload."],
			button1 = L["Reload"],
			timeout = 0,
			whileDead = true,
			OnAccept = function()
				EnableAddOn("TradeSkillMaster_AppHelper")
				ReloadUI()
			end,
		}
		Wow.ShowStaticPopupDialog("TSM_APP_DATA_ERROR")
		return
	end

	local lastSync = TSM.AppHelper.GetLastSync()
	if not lastSync then
		-- The app hasn't run yet or isn't pointing at the right WoW directory
		StaticPopupDialogs["TSM_APP_DATA_ERROR"] = {
			text = L["TSM is missing important information from the TSM Desktop Application. Please ensure the TSM Desktop Application is running and is properly configured."],
			button1 = OKAY,
			timeout = 0,
			whileDead = true,
		}
		Wow.ShowStaticPopupDialog("TSM_APP_DATA_ERROR")
		return
	end

	local msg, msgId = TSM.AppHelper.GetMessage()
	if msg and msgId > private.settings.appMessageId then
		-- show the message from the app
		private.settings.appMessageId = msgId
		StaticPopupDialogs["TSM_APP_MESSAGE"] = {
			text = msg,
			button1 = OKAY,
			timeout = 0,
		}
		Wow.ShowStaticPopupDialog("TSM_APP_MESSAGE")
	end

	if time() - lastSync > 60 * 60 then
		-- the app hasn't been running for over an hour
		StaticPopupDialogs["TSM_APP_DATA_ERROR"] = {
			text = L["TSM is missing important information from the TSM Desktop Application. Please ensure the TSM Desktop Application is running and is properly configured."],
			button1 = OKAY,
			timeout = 0,
			whileDead = true,
		}
		Wow.ShowStaticPopupDialog("TSM_APP_DATA_ERROR")
	end
end

function TSM.OnDisable()
	local originalProfile = TSM.db:GetCurrentProfile()
	-- erroring here would cause the profile to be reset, so use pcall
	local startTime = GetTimePreciseSec()
	local success, errMsg = pcall(private.SaveAppData)
	local timeTaken = GetTimePreciseSec() - startTime
	if timeTaken > LOGOUT_TIME_WARNING_THRESHOLD then
		Log.Warn("private.SaveAppData took %0.5fs", timeTaken)
	end
	if not success then
		Log.Err("private.SaveAppData hit an error: %s", tostring(errMsg))
		-- force ourselves back to the original profile
		TSM.db:SetProfile(originalProfile, true)
		error("Error while saving app data: "..tostring(errMsg))
	end
end



-- ============================================================================
-- General Slash-Command Handlers
-- ============================================================================

function private.TestPriceSource(price)
	local _, endIndex, link = strfind(price, "(\124c[0-9a-f]+\124H[^\124]+\124h%[[^%]]+%]\124h\124r)")
	price = link and strtrim(strsub(price, endIndex + 1))
	if not price or price == "" then
		Log.PrintUser(L["Usage: /tsm price <Item Link> <Custom String>"])
		return
	end

	local isValid, err = CustomPrice.Validate(price)
	if not isValid then
		Log.PrintfUser(L["%s is not a valid custom price and gave the following error: %s"], Log.ColorUserAccentText(price), err)
		return
	end

	local itemString = ItemString.Get(link)
	if not itemString then
		Log.PrintfUser(L["%s is a valid custom price but %s is an invalid item."], Log.ColorUserAccentText(price), link)
		return
	end

	local value = CustomPrice.GetValue(price, itemString)
	if not value then
		Log.PrintfUser(L["%s is a valid custom price but did not give a value for %s."], Log.ColorUserAccentText(price), link)
		return
	end

	Log.PrintfUser(L["A custom price of %s for %s evaluates to %s."], Log.ColorUserAccentText(price), link, Money.ToString(value))
end

function private.ChangeProfile(targetProfile)
	targetProfile = strtrim(targetProfile)
	local profiles = TSM.db:GetProfiles()
	if targetProfile == "" then
		Log.PrintfUser(L["No profile specified. Possible profiles: '%s'"], table.concat(profiles, "', '"))
	else
		for _, profile in ipairs(profiles) do
			if profile == targetProfile then
				if profile ~= TSM.db:GetCurrentProfile() then
					TSM.db:SetProfile(profile)
				end
				Log.PrintfUser(L["Profile changed to '%s'."], profile)
				return
			end
		end
		Log.PrintfUser(L["Could not find profile '%s'. Possible profiles: '%s'"], targetProfile, table.concat(profiles, "', '"))
	end
end

function private.DebugSlashCommandHandler(arg)
	if arg == "fstack" then
		TSM.UI.FrameStack.Toggle()
	elseif arg == "error" then
		ErrorHandler.ShowManual()
	elseif arg == "logging" then
		private.settings.chatLoggingEnabled = not private.settings.chatLoggingEnabled
		Log.SetLoggingToChatEnabled(private.settings.chatLoggingEnabled)
		if private.settings.chatLoggingEnabled then
			Log.PrintfUser("Logging to chat enabled")
		else
			Log.PrintfUser("Logging to chat disabled")
		end
	elseif arg == "db" then
		TSM.UI.DBViewer.Toggle()
	elseif arg == "sb" or arg == "story" or arg == "storyboard" then
		TSM.UI.StoryBoard.Toggle()
	elseif arg == "logout" then
		TSM.AddonTestLogout()
	elseif arg == "clearitemdb" then
		ItemInfo.ClearDB()
	elseif arg == "clearcraftdb" then
		TSM.db.factionrealm.internalData.crafts = {}
		ReloadUI()
	elseif arg == "leaks" then
		TempTable.EnableLeakDebug()
		ObjectPool.EnableLeakDebug()
	elseif arg == "whatsnew" then
		private.settings.whatsNewVersion = 0
	end
end

function private.PrintVersions()
	Log.PrintUser(L["TSM Version Info:"])
	Log.PrintUserRaw("TradeSkillMaster "..Log.ColorUserAccentText(Environment.GetVersion()))
	local appHelperVersion = GetAddOnMetadata("TradeSkillMaster_AppHelper", "Version")
	if appHelperVersion then
		-- use strmatch so that our sed command doesn't replace this string
		if strmatch(appHelperVersion, "^@tsm%-project%-version@$") then
			appHelperVersion = "Dev"
		end
		Log.PrintUserRaw("TradeSkillMaster_AppHelper "..Log.ColorUserAccentText(appHelperVersion))
	end
end

function private.SaveAppData()
	if not Wow.IsAddonInstalled("TradeSkillMaster_AppHelper") or not Wow.IsAddonEnabled("TradeSkillMaster_AppHelper") then
		return
	end

	TradeSkillMaster_AppHelperDB = TradeSkillMaster_AppHelperDB or {}
	local appDB = TradeSkillMaster_AppHelperDB

	-- store region
	local region = TSM.AppHelper.GetRegion()
	appDB.region = region

	-- save errors
	ErrorHandler.SaveReports(appDB)

	local function GetShoppingMaxPrice(itemString)
		local value = TSM.Operations.Shopping.GetMaxPrice(itemString)
		return value and value > 0 and value or nil
	end

	-- save TSM_Shopping max prices in the app DB for the current profile
	appDB.shoppingMaxPrices = {}
	local profile = TSM.db:GetCurrentProfile()
	local profileGroupData = {}
	for _, itemString, groupPath in TSM.Groups.ItemIterator() do
		local itemId = tonumber(strmatch(itemString, "^i:([0-9]+)$"))
		if itemId then
			local maxPrice = GetShoppingMaxPrice(itemString)
			if maxPrice then
				if not profileGroupData[groupPath] then
					profileGroupData[groupPath] = {}
				end
				tinsert(profileGroupData[groupPath], "["..table.concat({itemId, maxPrice}, ",").."]")
			end
		end
	end
	if next(profileGroupData) then
		appDB.shoppingMaxPrices[profile] = {}
		for groupPath, data in pairs(profileGroupData) do
			appDB.shoppingMaxPrices[profile][groupPath] = "["..table.concat(data, ",").."]"
		end
		appDB.shoppingMaxPrices[profile].updateTime = time()
	end

	-- save black market data
	local realmName = GetRealmName()
	appDB.blackMarket = appDB.blackMarket or {}
	local blackMarketData, blackMarketTime = BlackMarket.GetScanData()
	if blackMarketData then
		appDB.blackMarket[realmName] = {
			data = blackMarketData,
			key = Math.CalculateHash(blackMarketData..":"..blackMarketTime),
			updateTime = blackMarketTime
		}
	end

	-- save analytics
	Analytics.Save(appDB)
end
