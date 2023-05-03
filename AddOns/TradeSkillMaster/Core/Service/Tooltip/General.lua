-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local General = TSM.Tooltip:NewPackage("General")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local DisenchantInfo = TSM.Include("Data.DisenchantInfo")
local TempTable = TSM.Include("Util.TempTable")
local ItemString = TSM.Include("Util.ItemString")
local Wow = TSM.Include("Util.Wow")
local ItemInfo = TSM.Include("Service.ItemInfo")
local CustomPrice = TSM.Include("Service.CustomPrice")
local Conversions = TSM.Include("Service.Conversions")
local Inventory = TSM.Include("Service.Inventory")
local AltTracking = TSM.Include("Service.AltTracking")
local BagTracking = TSM.Include("Service.BagTracking")
local MailTracking = TSM.Include("Service.MailTracking")
local AuctionTracking = TSM.Include("Service.AuctionTracking")
local Settings = TSM.Include("Service.Settings")
local private = {
	tooltipInfo = nil,
	settings = nil,
}
local CONVERT_METHODS = {
	Conversions.METHOD.MILL,
	Conversions.METHOD.PROSPECT,
	Conversions.METHOD.TRANSFORM,
	Conversions.METHOD.VENDOR_TRADE,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function General.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("sync", "internalData", "classKey")
		:AddKey("global", "userData", "customPriceSources")
		:AddKey("global", "coreOptions", "destroyValueSource")

	local tooltipInfo = TSM.Tooltip.CreateInfo()
		:SetHeadings(L["TSM General Info"])
	private.tooltipInfo = tooltipInfo
	CustomPrice.RegisterCustomSourceCallback(private.UpdateCustomSources)

	-- group name
	tooltipInfo:AddSettingEntry("groupNameTooltip", nil, private.PopulateGroupLine)

	-- operations
	for _, moduleName in TSM.Operations.ModuleIterator() do
		tooltipInfo:AddSettingEntry("operationTooltips."..moduleName, false, private.PopulateOperationLine, moduleName)
	end

	-- destroy info
	tooltipInfo:AddSettingValueEntry("destroyTooltipFormat", "full", "none", private.PopulateFullDestroyLines)
	tooltipInfo:AddSettingValueEntry("destroyTooltipFormat", "simple", "none", private.PopulateSimpleDestroyLines)

	-- convert info
	tooltipInfo:AddSettingValueEntry("convertTooltipFormat", "full", "none", private.PopulateFullConvertLines)
	tooltipInfo:AddSettingValueEntry("convertTooltipFormat", "simple", "none", private.PopulateSimpleConvertLines)

	-- vendor prices
	tooltipInfo:AddSettingEntry("vendorBuyTooltip", nil, private.PopulateVendorBuyLine)
	tooltipInfo:AddSettingEntry("vendorSellTooltip", nil, private.PopulateVendorSellLine)

	-- custom sources
	private.UpdateCustomSources()

	-- inventory info
	tooltipInfo:AddSettingValueEntry("inventoryTooltipFormat", "full", "none", private.PopulateFullInventoryLines)
	tooltipInfo:AddSettingValueEntry("inventoryTooltipFormat", "simple", "none", private.PopulateSimpleInventoryLine)

	TSM.Tooltip.Register(tooltipInfo)
end

function private.UpdateCustomSources()
	private.tooltipInfo:DeleteSettingsByKeyMatch("^customPriceTooltips%.")
	local customPriceSources = TempTable.Acquire()
	for name in pairs(private.settings.customPriceSources) do
		tinsert(customPriceSources, name)
	end
	sort(customPriceSources)
	for _, name in ipairs(customPriceSources) do
		private.tooltipInfo:AddSettingEntry("customPriceTooltips."..name, false, private.PopulateCustomPriceLine, name)
	end
	TempTable.Release(customPriceSources)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.PopulateGroupLine(tooltip, itemString)
	-- add group / operation info
	local groupPath, itemInGroup = nil, nil
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		groupPath = L["Example"]
		itemInGroup = true
	else
		groupPath = TSM.Groups.GetPathByItem(itemString)
		if groupPath == TSM.CONST.ROOT_GROUP_PATH then
			groupPath = nil
		else
			itemInGroup = TSM.Groups.IsItemInGroup(itemString)
		end
	end
	if groupPath then
		local leftText = nil
		if itemInGroup then
			leftText = GROUP
		elseif ItemString.ParseLevel(TSM.Groups.TranslateItemString(itemString)) then
			leftText = GROUP.." ("..L["Item Level"]..")"
		else
			leftText = GROUP.." ("..L["Base Item"]..")"
		end
		tooltip:AddTextLine(leftText, TSM.Groups.Path.Format(groupPath))
	end
end

function private.PopulateOperationLine(tooltip, itemString, moduleName)
	assert(moduleName)
	local operations = TempTable.Acquire()
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		tinsert(operations, L["Example"])
	else
		local groupPath = TSM.Groups.GetPathByItem(itemString)
		if groupPath == TSM.CONST.ROOT_GROUP_PATH then
			groupPath = nil
		end
		if not groupPath then
			TempTable.Release(operations)
			return
		end
		for _, operationName in TSM.Operations.GroupOperationIterator(moduleName, groupPath) do
			tinsert(operations, operationName)
		end
	end
	if #operations > 0 then
		tooltip:AddLine(format(#operations == 1 and L["%s operation"] or L["%s operations"], TSM.Operations.GetLocalizedName(moduleName)), tooltip:ApplyValueColor(table.concat(operations, ", ")))
	end
	TempTable.Release(operations)
end

function private.PopulateFullDestroyLines(tooltip, itemString)
	private.PopulateSimpleDestroyLines(tooltip, itemString)
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		tooltip:StartSection()
		tooltip:AddSubItemValueLine(ItemString.GetPlaceholder(), 2, 10, 1, 1, 20)
		tooltip:EndSection()
		return
	end
	local value, method = CustomPrice.GetConversionsValue(itemString, private.settings.destroyValueSource)
	if not value then
		return nil, nil
	end

	tooltip:StartSection()
	if method == Conversions.METHOD.DISENCHANT then
		local classId = ItemInfo.GetClassId(itemString)
		local quality = ItemInfo.GetQuality(itemString)
		local itemLevel = Environment.IsRetail() and ItemInfo.GetItemLevel(itemString) or ItemInfo.GetItemLevel(ItemString.GetBase(itemString))
		local expansion = Environment.IsRetail() and ItemInfo.GetExpansion(itemString) or nil
		for targetItemString in DisenchantInfo.TargetItemIterator() do
			local amountOfMats, matRate, minAmount, maxAmount = DisenchantInfo.GetTargetItemSourceInfo(targetItemString, classId, quality, itemLevel, expansion)
			if amountOfMats then
				local matValue = CustomPrice.GetItemPrice(targetItemString, private.settings.destroyValueSource) or 0
				if matValue > 0 then
					tooltip:AddSubItemValueLine(targetItemString, matValue, amountOfMats, matRate, minAmount, maxAmount)
				end
			end
		end
	else
		for targetItemString, amountOfMats, matRate, minAmount, maxAmount in Conversions.TargetItemsByMethodIterator(itemString, method) do
			local matValue = CustomPrice.GetItemPrice(targetItemString, private.settings.destroyValueSource) or 0
			if matValue > 0 then
				tooltip:AddSubItemValueLine(targetItemString, matValue, amountOfMats, matRate, minAmount, maxAmount)
			end
		end
	end
	tooltip:EndSection()
end

function private.PopulateSimpleDestroyLines(tooltip, itemString)
	local value, method = nil, nil
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		value = 20
		method = Conversions.METHOD.PROSPECT
	else
		value, method = CustomPrice.GetConversionsValue(itemString, private.settings.destroyValueSource)
	end
	if not value then
		return nil, nil
	end

	local label = nil
	if method == Conversions.METHOD.DISENCHANT then
		label = L["Disenchant Value"]
	elseif method == Conversions.METHOD.MILL then
		label = L["Mill Value"]
	elseif method == Conversions.METHOD.PROSPECT then
		label = L["Prospect Value"]
	elseif method == Conversions.METHOD.TRANSFORM then
		label = L["Transform Value"]
	elseif method == Conversions.METHOD.VENDOR_TRADE then
		label = L["Vendor Trade Value"]
	else
		error("Invalid method: "..tostring(method))
	end
	tooltip:AddItemValueLine(label, value)
end

function private.PopulateFullConvertLines(tooltip, itemString)
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		tooltip:AddTextLine(format(L["Convert Value (%s)"], L["Transform"]), 55)
		tooltip:StartSection()
		tooltip:AddSubItemValueLine(ItemString.GetPlaceholder(), 55, 1)
		tooltip:EndSection()
		return
	end

	local sources = TempTable.Acquire()
	local minValue, method, methodStr = private.GetConvertTooltipInfo(itemString, sources)
	if minValue then
		tooltip:AddItemValueLine(format(L["Convert Value (%s)"], methodStr), minValue)
		tooltip:StartSection()
		for _, sourceItemString in ipairs(sources) do
			local price = sources[sourceItemString]
			tooltip:AddSubItemValueLine(sourceItemString, price, 1 / Conversions.GetRate(sourceItemString, itemString, method))
		end
		tooltip:EndSection()
	end
	TempTable.Release(sources)
end

function private.PopulateSimpleConvertLines(tooltip, itemString)
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		tooltip:AddTextLine(format(L["Convert Value (%s)"], L["Transform"]), 55)
		return
	end

	local minValue, _, methodStr = private.GetConvertTooltipInfo(itemString)
	if not minValue then
		return
	end
	tooltip:AddItemValueLine(format(L["Convert Value (%s)"], methodStr), minValue)
end

function private.GetConvertTooltipInfo(itemString, sourcesResultTbl)
	local minValue, method = nil, nil
	for i = 1, #CONVERT_METHODS do
		method = CONVERT_METHODS[i]
		for sourceItemString, rate in Conversions.SourceItemsByMethodIterator(itemString, method) do
			local value = CustomPrice.GetItemPrice(sourceItemString, private.settings.destroyValueSource)
			if value then
				if sourcesResultTbl then
					tinsert(sourcesResultTbl, sourceItemString)
					sourcesResultTbl[sourceItemString] = value
				end
				minValue = min(minValue or math.huge, value / rate)
			end
		end
		if minValue then
			break
		end
	end
	if not minValue then
		return nil, nil
	end
	local methodStr = nil
	if method == Conversions.METHOD.MILL then
		methodStr = L["Mill"]
	elseif method == Conversions.METHOD.PROSPECT then
		methodStr = L["Prospect"]
	elseif method == Conversions.METHOD.TRANSFORM then
		methodStr = L["Transform"]
	elseif method == Conversions.METHOD.VENDOR_TRADE then
		methodStr = L["Vendor Trade"]
	else
		error("Invalid method")
	end
	return minValue, method, methodStr
end

function private.PopulateVendorBuyLine(tooltip, itemString)
	local value = nil
	if itemString == ItemString.GetPlaceholder() then
		-- example item
		value = 50
	else
		value = ItemInfo.GetVendorBuy(itemString) or 0
	end
	if value > 0 then
		tooltip:AddItemValueLine(L["Vendor Buy Price"], value)
	end
end

function private.PopulateVendorSellLine(tooltip, itemString)
	local value = nil
	if itemString == ItemString.GetPlaceholder() then
		-- example item
		value = 8
	else
		value = ItemInfo.GetVendorSell(itemString) or 0
	end
	if value > 0 then
		tooltip:AddItemValueLine(L["Vendor Sell Price"], value)
	end
end

function private.PopulateCustomPriceLine(tooltip, itemString, name)
	assert(name)
	if not private.settings.customPriceSources[name] then
		-- TODO: this custom price source has been removed (ideally shouldn't get here)
		return
	end
	local value = nil
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		value = 10
	else
		value = CustomPrice.GetValue(name, itemString) or 0
	end
	if value > 0 then
		tooltip:AddItemValueLine(L["Custom Source"].." ("..name..")", value)
	end
end

function private.PopulateFullInventoryLines(tooltip, itemString)
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		local totalNum = 0
		local playerName = UnitName("player")
		local bag, bank, auction, mail, guildQuantity = 5, 4, 4, 9, 1
		local playerTotal = bag + bank + auction + mail
		totalNum = totalNum + playerTotal
		tooltip:StartSection(L["Inventory"], format(L["%s total"], tooltip:ApplyValueColor(totalNum)))
		local classColor = RAID_CLASS_COLORS[private.settings.classKey]
		local rightText = private.RightTextFormatHelper(tooltip, L["%s (%s bags, %s bank, %s AH, %s mail)"], playerTotal, bag, bank, auction, mail)
		if classColor then
			tooltip:AddLine("|c"..classColor.colorStr..playerName.."|r", rightText)
		else
			tooltip:AddLine(playerName, rightText)
		end
		totalNum = totalNum + guildQuantity
		tooltip:AddLine(L["Example"], format(L["%s in guild vault"], tooltip:ApplyValueColor(guildQuantity)))
		tooltip:EndSection()
		return
	end

	-- Calculate the total number
	local totalNum = Inventory.GetTotalQuantity(itemString)
	tooltip:StartSection(L["Inventory"], format(L["%s total"], tooltip:ApplyValueColor(totalNum)))

	-- Add a line for the current character
	private.AddInventoryLine(tooltip, itemString)

	-- Add lines for alts
	for _, character, factionrealm in AltTracking.CharacterIterator() do
		private.AddInventoryLine(tooltip, itemString, character, factionrealm)
	end

	-- Add lines for guilds
	for _, guildName, guildQuantity in AltTracking.GuildQuantityIterator(itemString) do
		tooltip:AddLine(guildName, format(L["%s in guild vault"], tooltip:ApplyValueColor(guildQuantity)))
	end

	tooltip:EndSection()
end

function private.AddInventoryLine(tooltip, itemString, character, factionrealm)
	local bag, bank, reagentBank, auction, mail = nil, nil, nil, nil, nil
	if character then
		bag = AltTracking.GetBagQuantity(itemString, character, factionrealm)
		bank = AltTracking.GetBankQuantity(itemString, character, factionrealm)
		reagentBank = AltTracking.GetReagentBankQuantity(itemString, character, factionrealm)
		auction = AltTracking.GetAuctionQuantity(itemString, character, factionrealm)
		mail = AltTracking.GetMailQuantity(itemString, character, factionrealm)
	else
		bag = BagTracking.GetBagQuantity(itemString)
		bank = BagTracking.GetBankQuantity(itemString)
		reagentBank = BagTracking.GetReagentBankQuantity(itemString)
		auction = AuctionTracking.GetQuantity(itemString)
		mail = MailTracking.GetQuantity(itemString)
	end
	local playerTotal = bag + bank + reagentBank + auction + mail
	if playerTotal <= 0 then
		return
	end
	local characterStr = character and Wow.FormatCharacterName(character, factionrealm) or Wow.GetCharacterName()
	local classKey = private.settings:GetForScopeKey("classKey", character or Wow.GetCharacterName(), factionrealm)
	characterStr = RAID_CLASS_COLORS[classKey] and "|c"..RAID_CLASS_COLORS[classKey].colorStr..characterStr.."|r" or characterStr
	local rightText = private.RightTextFormatHelper(tooltip, L["%s (%s bags, %s bank, %s AH, %s mail)"], playerTotal, bag, bank + reagentBank, auction, mail)
	tooltip:AddLine(characterStr, rightText)
end

function private.PopulateSimpleInventoryLine(tooltip, itemString)
	if itemString == ItemString.GetPlaceholder() then
		-- example tooltip
		local totalPlayer, totalAlt, totalGuild, totalAuction = 18, 0, 1, 4
		local totalNum2 = totalPlayer + totalAlt + totalGuild + totalAuction
		local rightText2 = nil
		if Environment.HasFeature(Environment.FEATURES.GUILD_BANK) then
			rightText2 = private.RightTextFormatHelper(tooltip, L["%s (%s player, %s alts, %s guild, %s AH)"], totalNum2, totalPlayer, totalAlt, totalGuild, totalAuction)
		else
			rightText2 = private.RightTextFormatHelper(tooltip, L["%s (%s player, %s alts, %s AH)"], totalNum2, totalPlayer, totalAlt, totalAuction)
		end
		tooltip:AddLine(L["Inventory"], rightText2)
	end

	local totalAlt, totalAltAuction = AltTracking.GetQuantity(itemString)
	local totalPlayer = BagTracking.GetBagQuantity(itemString) + BagTracking.GetBankQuantity(itemString) + BagTracking.GetReagentBankQuantity(itemString) + MailTracking.GetQuantity(itemString)
	local totalAuction = AuctionTracking.GetQuantity(itemString) + totalAltAuction
	local totalGuild = AltTracking.GetTotalGuildQuantity(itemString)
	local totalNum = totalPlayer + totalAlt + totalGuild + totalAuction
	if totalNum > 0 then
		local rightText = nil
		if Environment.HasFeature(Environment.FEATURES.GUILD_BANK) then
			rightText = private.RightTextFormatHelper(tooltip, L["%s (%s player, %s alts, %s guild, %s AH)"], totalNum, totalPlayer, totalAlt, totalGuild, totalAuction)
		else
			rightText = private.RightTextFormatHelper(tooltip, L["%s (%s player, %s alts, %s AH)"], totalNum, totalPlayer, totalAlt, totalAuction)
		end
		tooltip:AddLine(L["Inventory"], rightText)
	end
end

function private.RightTextFormatHelper(tooltip, fmtStr, ...)
	local parts = TempTable.Acquire(...)
	for i = 1, #parts do
		parts[i] = tooltip:ApplyValueColor(parts[i])
	end
	local result = format(fmtStr, unpack(parts))
	TempTable.Release(parts)
	return result
end
