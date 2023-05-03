-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Crafting = TSM:NewPackage("Crafting")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local ProfessionInfo = TSM.Include("Data.ProfessionInfo")
local CraftString = TSM.Include("Util.CraftString")
local MatString = TSM.Include("Util.MatString")
local Database = TSM.Include("Util.Database")
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local Math = TSM.Include("Util.Math")
local Money = TSM.Include("Util.Money")
local Log = TSM.Include("Util.Log")
local ItemString = TSM.Include("Util.ItemString")
local Vararg = TSM.Include("Util.Vararg")
local ItemInfo = TSM.Include("Service.ItemInfo")
local CustomPrice = TSM.Include("Service.CustomPrice")
local Conversions = TSM.Include("Service.Conversions")
local AuctionTracking = TSM.Include("Service.AuctionTracking")
local BagTracking = TSM.Include("Service.BagTracking")
local Settings = TSM.Include("Service.Settings")
local private = {
	settings = nil,
	spellDB = nil,
	matDB = nil,
	matItemDB = nil,
	matDBSpellIdQuery = nil,
	matDBAllMatsQuery = nil,
	matDBMatNamesQuery = nil,
	ignoredCooldownDB = nil,
	numMatDBRows = {},
	playerTemp = {},
}
local CHARACTER_KEY = UnitName("player").." - "..GetRealmName()
local IGNORED_COOLDOWN_SEP = "\001"
local PROFESSION_SEP = ","
local BAD_CRAFTING_PRICE_SOURCES = {
	crafting = true,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Crafting.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("factionrealm", "internalData", "crafts")
		:AddKey("factionrealm", "internalData", "mats")
		:AddKey("global", "craftingOptions", "defaultCraftPriceMethod")
		:AddKey("factionrealm", "userData", "craftingCooldownIgnore")
	local used = TempTable.Acquire()
	for craftString, craftInfo in pairs(private.settings.crafts) do
		if next(craftInfo.players) then
			for matString in pairs(craftInfo.mats) do
				for itemString in MatString.ItemIterator(matString) do
					used[itemString] = true
				end
			end
		else
			private.settings.crafts[craftString] = nil
		end
	end
	for itemString in pairs(used) do
		private.settings.mats[itemString] = private.settings.mats[itemString] or {}
	end
	for itemString in pairs(private.settings.mats) do
		if not used[itemString] then
			private.settings.mats[itemString] = nil
		end
	end
	TempTable.Release(used)

	local professionItems = TempTable.Acquire()
	local matCountByCraft = TempTable.Acquire()
	local matFirstItemString = TempTable.Acquire()
	local matFirstQuantity = TempTable.Acquire()
	private.matDB = Database.NewSchema("CRAFTING_MATS")
		:AddStringField("craftString")
		:AddStringField("itemString")
		:AddNumberField("quantity")
		:AddIndex("craftString")
		:AddIndex("itemString")
		:Commit()
	private.spellDB = Database.NewSchema("CRAFTING_SPELLS")
		:AddUniqueStringField("craftString")
		:AddStringField("itemString")
		:AddStringField("itemName")
		:AddStringField("name")
		:AddStringField("profession")
		:AddNumberField("numResult")
		:AddStringListField("players")
		:AddBooleanField("hasCD")
		:AddIndex("itemString")
		:AddIndex("profession")
		:Commit()
	private.matDB:BulkInsertStart()
	private.spellDB:BulkInsertStart()
	local playersTemp = TempTable.Acquire()
	for craftString, craftInfo in pairs(private.settings.crafts) do
		wipe(playersTemp)
		for player in pairs(craftInfo.players) do
			tinsert(playersTemp, player)
		end
		assert(#playersTemp > 0)
		sort(playersTemp)
		local itemName = ItemInfo.GetName(craftInfo.itemString) or ""
		private.spellDB:BulkInsertNewRow(craftString, craftInfo.itemString, itemName, craftInfo.name or "", craftInfo.profession, craftInfo.numResult, playersTemp, craftInfo.hasCD and true or false)

		for matString, matQuantity in pairs(craftInfo.mats) do
			private.matDB:BulkInsertNewRow(craftString, matString, matQuantity)
			private.HandleMatDBAddRow(matString)
			professionItems[craftInfo.profession] = professionItems[craftInfo.profession] or TempTable.Acquire()
			matCountByCraft[craftString] = (matCountByCraft[craftString] or 0) + 1
			if matQuantity > 0 then
				matFirstItemString[craftString] = matString
				matFirstQuantity[craftString] = matQuantity
			end
			for itemString in MatString.ItemIterator(matString) do
				professionItems[craftInfo.profession][itemString] = true
			end
		end
	end
	TempTable.Release(playersTemp)
	private.spellDB:BulkInsertEnd()
	private.matDB:BulkInsertEnd()

	private.matDBAllMatsQuery = private.matDB:NewQuery()
		:Select("itemString", "quantity")
		:Equal("craftString", Database.BoundQueryParam())
	private.matDBMatNamesQuery = private.matDB:NewQuery()
		:VirtualField("name", "string", ItemInfo.GetName, "itemString", "?")
		:Select("name")
		:Equal("craftString", Database.BoundQueryParam())
		:GreaterThan("quantity", 0)

	private.matItemDB = Database.NewSchema("CRAFTING_MAT_ITEMS")
		:AddUniqueStringField("itemString")
		:AddStringField("professions")
		:AddStringField("customValue")
		:Commit()
	private.matItemDB:BulkInsertStart()
	local professionsTemp = TempTable.Acquire()
	for itemString, info in pairs(private.settings.mats) do
		wipe(professionsTemp)
		for profession, items in pairs(professionItems) do
			if items[itemString] then
				tinsert(professionsTemp, profession)
			end
		end
		sort(professionsTemp)
		local professionsStr = table.concat(professionsTemp)
		private.matItemDB:BulkInsertNewRow(itemString, professionsStr, info.customValue or "")
	end
	TempTable.Release(professionsTemp)
	private.matItemDB:BulkInsertEnd()

	for _, tbl in pairs(professionItems) do
		TempTable.Release(tbl)
	end
	TempTable.Release(professionItems)

	private.matDBSpellIdQuery = private.matDB:NewQuery()
		:Equal("craftString", Database.BoundQueryParam())

	-- register 1:1 crafting conversions
	local addedConversion = false
	local query = private.spellDB:NewQuery()
		:Select("craftString", "itemString", "numResult")
		:Equal("hasCD", false)
	for _, craftString, itemString, numResult in query:Iterator() do
		local spellId = CraftString.GetSpellId(craftString)
		if not ProfessionInfo.IsMassMill(spellId) and matCountByCraft[craftString] == 1 then
			Conversions.AddCraft(itemString, matFirstItemString[craftString], numResult / matFirstQuantity[craftString])
			addedConversion = true
		end
	end
	query:Release()
	TempTable.Release(matCountByCraft)
	TempTable.Release(matFirstItemString)
	TempTable.Release(matFirstQuantity)
	if addedConversion then
		CustomPrice.OnSourceChange("Destroy")
	end

	local isValid, err = CustomPrice.Validate(private.settings.defaultCraftPriceMethod, BAD_CRAFTING_PRICE_SOURCES)
	if not isValid then
		Log.PrintfUser(L["Your default craft value method was invalid so it has been returned to the default. Details: %s"], err)
		private.settings.defaultCraftPriceMethod = private.settings:GetDefaultReadOnly("defaultCraftPriceMethod")
	end

	private.ignoredCooldownDB = Database.NewSchema("IGNORED_COOLDOWNS")
		:AddStringField("characterKey")
		:AddStringField("craftString")
		:Commit()
	private.ignoredCooldownDB:BulkInsertStart()
	for entry in pairs(private.settings.craftingCooldownIgnore) do
		local characterKey, craftString = strsplit(IGNORED_COOLDOWN_SEP, entry)
		if Crafting.HasCraftString(craftString) then
			private.ignoredCooldownDB:BulkInsertNewRow(characterKey, craftString)
		else
			private.settings.craftingCooldownIgnore[entry] = nil
		end
	end
	private.ignoredCooldownDB:BulkInsertEnd()
end

function Crafting.HasCraftString(craftString)
	return private.spellDB:HasUniqueRow("craftString", craftString)
end

function Crafting.CreateRawCraftsQuery()
	return private.spellDB:NewQuery()
end

function Crafting.CreateCraftsQuery()
	return private.spellDB:NewQuery()
		:AggregateJoinSummed(TSM.Crafting.Queue.GetDBForJoin(), "craftString", "num")
		:VirtualField("bagQuantity", "number", BagTracking.GetBagQuantity, "itemString")
		:VirtualField("auctionQuantity", "number", AuctionTracking.GetQuantity, "itemString")
		:VirtualField("craftingCost", "number", TSM.Crafting.Cost.GetCraftingCostByCraftString, "craftString", Math.GetNan())
		:VirtualField("itemValue", "number", TSM.Crafting.Cost.GetCraftedItemValue, "itemString", Math.GetNan())
		:VirtualField("profit", "number", TSM.Crafting.Cost.GetProfitByCraftString, "craftString", Math.GetNan())
		:VirtualField("profitPct", "number", private.ProfitPctVirtualField, "craftString")
		:VirtualField("saleRate", "number", private.SaleRateVirtualField, "itemString")
end

function Crafting.CreateQueueQuery()
	return TSM.Crafting.Queue.CreateQuery()
		:InnerJoin(private.spellDB, "craftString")
		:VirtualField("bagQuantity", "number", BagTracking.GetBagQuantity, "itemString")
		:VirtualField("auctionQuantity", "number", AuctionTracking.GetQuantity, "itemString")
		:VirtualField("craftingCost", "number", TSM.Crafting.Cost.GetCraftingCostByCraftString, "craftString", Math.GetNan())
		:VirtualField("itemValue", "number", TSM.Crafting.Cost.GetCraftedItemValue, "itemString", Math.GetNan())
		:VirtualField("profit", "number", TSM.Crafting.Cost.GetProfitByCraftString, "craftString", Math.GetNan())
		:VirtualField("profitPct", "number", private.ProfitPctVirtualField, "craftString")
		:VirtualField("saleRate", "number", private.SaleRateVirtualField, "itemString")
end

function Crafting.CreateQueuedCraftsQuery()
	return TSM.Crafting.Queue.CreateQuery()
		:InnerJoin(private.spellDB, "craftString")
end

function Crafting.CreateCooldownSpellsQuery()
	return private.spellDB:NewQuery()
		:Equal("hasCD", true)
end

function Crafting.CreateRawMatItemQuery()
	return private.matItemDB:NewQuery()
end

function Crafting.CreateMatItemQuery()
	return private.matItemDB:NewQuery()
		:VirtualField("name", "string", ItemInfo.GetName, "itemString", "?")
		:VirtualField("matCost", "number", TSM.Crafting.Cost.GetMatCost, "itemString", Math.GetNan())
		:VirtualField("totalQuantity", "number", private.GetTotalQuantity, "itemString")
end

function Crafting.CraftStringIterator()
	return private.spellDB:NewQuery()
		:Select("craftString")
		:IteratorAndRelease()
end

function Crafting.GetCraftStringByItem(itemString)
	local query = private.spellDB:NewQuery()
		:Equal("itemString", itemString)
		:Select("craftString", "hasCD", "profession")
	return query:IteratorAndRelease()
end

function Crafting.GetMostProfitableCraftStringByItem(itemString, playerFilter, noCD)
	local bestCraftString, bestCraftingCost, bestProfit, bestHasCD = nil, nil, nil, nil
	for _, craftString, hasCD in Crafting.GetCraftStringByItem(itemString) do
		if (not playerFilter or playerFilter == "" or Crafting.HasPlayer(craftString, playerFilter)) and (not noCD or not hasCD) then
			local craftingCost, _, profit = TSM.Crafting.Cost.GetCostsByCraftString(craftString)
			if not bestCraftString or private.IsCraftStringHigherProfit(craftingCost, profit, hasCD, bestCraftingCost, bestProfit, bestHasCD) then
				bestCraftString = craftString
				bestCraftingCost = craftingCost
				bestProfit = profit
				bestHasCD = hasCD
			end
		end
	end
	return bestCraftString, bestProfit, bestCraftingCost
end

function Crafting.GetItemString(craftString)
	return private.spellDB:GetUniqueRowField("craftString", craftString, "itemString")
end

function Crafting.GetProfession(craftString)
	return private.spellDB:GetUniqueRowField("craftString", craftString, "profession")
end

function Crafting.GetNumResult(craftString)
	return private.spellDB:GetUniqueRowField("craftString", craftString, "numResult")
end

function Crafting.PlayerIterator(craftString)
	return Vararg.Iterator(private.spellDB:GetUniqueRowField("craftString", craftString, "players"))
end

function Crafting.HasPlayer(craftString, player)
	return private.spellDB:NewQuery()
		:Equal("craftString", craftString)
		:ListContains("players", player)
		:IsNotEmptyAndRelease()
end

function Crafting.GetName(craftString)
	return private.spellDB:GetUniqueRowField("craftString", craftString, "name")
end

function Crafting.MatIterator(craftString)
	return private.matDB:NewQuery()
		:Select("itemString", "quantity")
		:Equal("craftString", craftString)
		:StartsWith("itemString", "i:")
		:IteratorAndRelease()
end

function Crafting.OptionalMatIterator(craftString)
	return private.matDB:NewQuery()
		:Select("itemString", "slotId")
		:VirtualField("slotId", "number", MatString.GetSlotId, "itemString")
		:Equal("craftString", craftString)
		:Matches("itemString", "^[qof]:")
		:OrderBy("slotId", true)
		:IteratorAndRelease()
end

function Crafting.GetOptionalMatQuantity(craftString, matItemId)
	local query = private.matDB:NewQuery()
		:Select("quantity")
		:Equal("craftString", craftString)
		:Matches("itemString", "^[qof]:")
		:Contains("itemString", tostring(matItemId))
	return query:GetFirstResultAndRelease()
end

function Crafting.QualityMatIterator(craftString)
	return private.matDB:NewQuery()
		:Select("itemString", "slotId")
		:VirtualField("slotId", "number", MatString.GetSlotId, "itemString")
		:Equal("craftString", craftString)
		:StartsWith("itemString", "q:")
		:OrderBy("slotId", true)
		:IteratorAndRelease()
end

function Crafting.HasOptionalMats(craftString)
	return private.matDB:NewQuery()
		:Equal("craftString", craftString)
		:Matches("itemString", "^[qof]:")
		:IsNotEmptyAndRelease()
end

function Crafting.GetMatsAsTable(craftString, tbl)
	private.matDBAllMatsQuery
		:BindParams(craftString)
		:AsTable(tbl)
end

function Crafting.RemoveCraftPlayers(craftString, playersToRemove)
	local row = private.spellDB:GetUniqueRow("craftString", craftString)
	local players = TempTable.Acquire(row:GetField("players"))
	for i = #players, 1, -1 do
		local player = players[i]
		if playersToRemove[player] then
			private.settings.crafts[craftString].players[player] = nil
			tremove(players, i)
		end
	end
	if #players > 0 then
		row:SetField("players", players)
			:Update()
			:Release()
		TempTable.Release(players)
		return true
	else
		-- No more players so remove this spell and all its mats
		TempTable.Release(players)
		private.spellDB:DeleteRow(row)
		row:Release()
		private.settings.crafts[craftString] = nil
		private.MatDBDeleteCraftStrings(craftString)
		return false
	end
end

function Crafting.RemovePlayerSpells(playerName, craftStrings)
	local query = private.spellDB:NewQuery()
		:InTable("craftString", craftStrings)
		:ListContains("players", playerName)
	if query:Count() == 0 then
		query:Release()
		return
	end
	local removedCraftStrings = TempTable.Acquire()
	local toRemove = TempTable.Acquire()
	private.spellDB:SetQueryUpdatesPaused(true)
	if query:Count() > 0 then
		Log.Info("Removing %d crafts", query:Count())
	end
	for _, row in query:Iterator() do
		assert(not next(private.playerTemp))
		Vararg.IntoTable(private.playerTemp, row:GetField("players"))
		local craftString = row:GetField("craftString")
		if #private.playerTemp == 1 then
			-- The current player was the only player, so we'll delete the entire row and all its mats
			removedCraftStrings[craftString] = true
			private.settings.crafts[craftString] = nil
			tinsert(toRemove, row)
		else
			-- Remove this player form the row
			assert(Table.RemoveByValue(private.playerTemp, playerName) == 1)
			row:SetField("players", private.playerTemp)
				:Update()
			private.settings.crafts[craftString].players[playerName] = nil
		end
		wipe(private.playerTemp)
	end
	for _, row in ipairs(toRemove) do
		private.spellDB:DeleteRow(row)
	end
	TempTable.Release(toRemove)
	query:Release()
	private.spellDB:SetQueryUpdatesPaused(false)

	private.MatDBDeleteCraftStrings(removedCraftStrings)
	TempTable.Release(removedCraftStrings)
end

function Crafting.SetSpellDBQueryUpdatesPaused(paused)
	private.spellDB:SetQueryUpdatesPaused(paused)
end

function Crafting.CreateOrUpdate(craftString, itemString, profession, name, numResult, player, hasCD, baseRecipeDifficulty, baseRecipeQuality, maxRecipeQuality)
	local row = private.spellDB:GetUniqueRow("craftString", craftString)
	if row then
		assert(not next(private.playerTemp))
		Vararg.IntoTable(private.playerTemp, row:GetField("players"))
		if not Table.KeyByValue(private.playerTemp, player) then
			assert(#private.playerTemp > 0)
			tinsert(private.playerTemp, player)
		end
		row:SetField("itemString", itemString)
			:SetField("profession", profession)
			:SetField("itemName", ItemInfo.GetName(itemString) or "")
			:SetField("name", name)
			:SetField("numResult", numResult)
			:SetField("players", private.playerTemp)
			:SetField("hasCD", hasCD)
			:Update()
		row:Release()
		wipe(private.playerTemp)
		local craftInfo = private.settings.crafts[craftString]
		craftInfo.itemString = itemString
		craftInfo.profession = profession
		craftInfo.name = name
		craftInfo.numResult = numResult
		if Environment.HasFeature(Environment.FEATURES.CRAFTING_QUALITY) then
			craftInfo.players[player] = type(craftInfo.players[player]) == "table" and craftInfo.players[player] or {}
			craftInfo.players[player].baseRecipeDifficulty = baseRecipeDifficulty
			craftInfo.players[player].baseRecipeQuality = baseRecipeQuality
			craftInfo.players[player].maxRecipeQuality = maxRecipeQuality
		else
			craftInfo.players[player] = true
		end
		craftInfo.hasCD = hasCD or nil
		local spellId = CraftString.GetSpellId(craftString)
		local rank = CraftString.GetRank(craftString)
		local level = CraftString.GetLevel(craftString)
		local quality = CraftString.GetQuality(craftString)
		local deleteRow = private.spellDB:GetUniqueRow("craftString", "c:"..spellId)
		if (rank or level or quality) and deleteRow then
			private.spellDB:DeleteRow(deleteRow)
			private.settings.crafts["c:"..spellId] = nil
		end
		if deleteRow then
			deleteRow:Release()
		end
	else
		private.settings.crafts[craftString] = {
			mats = {},
			players = {
				[player] = Environment.HasFeature(Environment.FEATURES.CRAFTING_QUALITY) and {
					baseRecipeDifficulty = baseRecipeDifficulty,
					baseRecipeQuality = baseRecipeQuality,
					maxRecipeQuality = maxRecipeQuality,
				} or true,
			},
			itemString = itemString,
			name = name,
			profession = profession,
			numResult = numResult,
			hasCD = hasCD,
		}
		assert(not next(private.playerTemp))
		tinsert(private.playerTemp, player)
		private.spellDB:NewRow()
			:SetField("craftString", craftString)
			:SetField("itemString", itemString)
			:SetField("profession", profession)
			:SetField("itemName", ItemInfo.GetName(itemString) or "")
			:SetField("name", name)
			:SetField("numResult", numResult)
			:SetField("players", private.playerTemp)
			:SetField("hasCD", hasCD)
			:Create()
		wipe(private.playerTemp)
	end
end

function Crafting.CreateOrUpdatePlayer(craftString, player, baseRecipeDifficulty, baseRecipeQuality, maxRecipeQuality)
	local craftPlayers = private.settings.crafts[craftString].players
	if craftPlayers[player] then
		if Environment.HasFeature(Environment.FEATURES.CRAFTING_QUALITY) then
			-- Update the quality info
			craftPlayers[player] = type(craftPlayers[player]) == "table" and craftPlayers[player] or {}
			craftPlayers[player].baseRecipeDifficulty = baseRecipeDifficulty
			craftPlayers[player].baseRecipeQuality = baseRecipeQuality
			craftPlayers[player].maxRecipeQuality = maxRecipeQuality
		end
		return
	end
	local row = private.spellDB:GetUniqueRow("craftString", craftString)
	assert(not next(private.playerTemp))
	Vararg.IntoTable(private.playerTemp, row:GetField("players"))
	assert(#private.playerTemp > 0)
	tinsert(private.playerTemp, player)
	row:SetField("players", private.playerTemp)
		:Update()
		:Release()
	wipe(private.playerTemp)
	craftPlayers[player] = Environment.HasFeature(Environment.FEATURES.CRAFTING_QUALITY) and {} or true
end

function Crafting.SetMats(craftString, matQuantities)
	if Table.Equal(private.settings.crafts[craftString].mats, matQuantities) then
		-- nothing changed
		return
	end

	wipe(private.settings.crafts[craftString].mats)
	for itemString, quantity in pairs(matQuantities) do
		private.settings.crafts[craftString].mats[itemString] = quantity
	end

	private.matDB:SetQueryUpdatesPaused(true)
	local removedMats = TempTable.Acquire()
	local usedMats = TempTable.Acquire()
	private.matDBSpellIdQuery:BindParams(craftString)
	for _, row in private.matDBSpellIdQuery:Iterator() do
		local itemString = row:GetField("itemString")
		local quantity = matQuantities[itemString]
		if not quantity then
			-- remove this row
			private.matDB:DeleteRow(row)
			removedMats[itemString] = true
			private.HandleMatDBDeleteRow(itemString)
		else
			usedMats[itemString] = true
			row:SetField("quantity", quantity)
				:Update()
		end
	end
	local profession = Crafting.GetProfession(craftString)
	for matString, quantity in pairs(matQuantities) do
		if not usedMats[matString] then
			private.matDB:NewRow()
				:SetField("craftString", craftString)
				:SetField("itemString", matString)
				:SetField("quantity", quantity)
				:Create()
			private.HandleMatDBAddRow(matString)
			for itemString in MatString.ItemIterator(matString) do
				private.MatItemDBUpdateOrInsert(itemString, profession)
			end
		end
	end
	TempTable.Release(usedMats)
	private.matDB:SetQueryUpdatesPaused(false)

	private.ProcessRemovedMats(removedMats)
	TempTable.Release(removedMats)
end

function Crafting.SetMatCustomValue(itemString, value)
	private.settings.mats[itemString].customValue = value
	private.matItemDB:GetUniqueRow("itemString", itemString)
		:SetField("customValue", value or "")
		:Update()
end

function Crafting.CanCraftItem(itemString)
	return private.spellDB:NewQuery()
		:Equal("itemString", itemString)
		:IsNotEmptyAndRelease()
end

function Crafting.RestockHelp(link)
	local itemString = ItemString.Get(link)
	if not itemString then
		Log.PrintUser(L["No item specified. Usage: /tsm restock_help [ITEM_LINK]"])
		return
	end

	local msg = private.GetRestockHelpMessage(itemString)
	Log.PrintfUser(L["Restock help for %s: %s"], link, msg)
end

function Crafting.IgnoreCooldown(craftString)
	assert(not private.settings.craftingCooldownIgnore[CHARACTER_KEY..IGNORED_COOLDOWN_SEP..craftString])
	private.settings.craftingCooldownIgnore[CHARACTER_KEY..IGNORED_COOLDOWN_SEP..craftString] = true
	private.ignoredCooldownDB:NewRow()
		:SetField("characterKey", CHARACTER_KEY)
		:SetField("craftString", craftString)
		:Create()
end

function Crafting.IsCooldownIgnored(craftString)
	return private.settings.craftingCooldownIgnore[CHARACTER_KEY..IGNORED_COOLDOWN_SEP..craftString]
end

function Crafting.CreateIgnoredCooldownQuery()
	return private.ignoredCooldownDB:NewQuery()
end

function Crafting.RemoveIgnoredCooldown(characterKey, craftString)
	assert(private.settings.craftingCooldownIgnore[characterKey..IGNORED_COOLDOWN_SEP..craftString])
	private.settings.craftingCooldownIgnore[characterKey..IGNORED_COOLDOWN_SEP..craftString] = nil
	local row = private.ignoredCooldownDB:NewQuery()
		:Equal("characterKey", characterKey)
		:Equal("craftString", craftString)
		:GetFirstResultAndRelease()
	assert(row)
	private.ignoredCooldownDB:DeleteRow(row)
	row:Release()
end

function Crafting.GetMatNames(craftString)
	return private.matDBMatNamesQuery:BindParams(craftString)
		:JoinedString("name", "")
end

function Crafting.IsQualityCraft(craftString)
	if not Environment.HasFeature(Environment.FEATURES.CRAFTING_QUALITY) then
		return false
	elseif CraftString.GetQuality(craftString) then
		return true
	elseif private.settings.crafts[craftString] and Crafting.GetQualityInfo(craftString) then
		return true
	else
		return false
	end
end

function Crafting.GetQualityInfo(craftString, playerFilter)
	assert(Environment.HasFeature(Environment.FEATURES.CRAFTING_QUALITY))
	local craftInfo = private.settings.crafts[craftString]
	assert(craftInfo)
	local baseRecipeDifficulty, baseRecipeQuality, maxRecipeQuality = nil, nil, nil
	for player, info in pairs(craftInfo.players) do
		if (not playerFilter or player == playerFilter) and type(info) == "table" and info.baseRecipeQuality and (not baseRecipeQuality or info.baseRecipeQuality > baseRecipeQuality) then
			baseRecipeDifficulty = info.baseRecipeDifficulty
			baseRecipeQuality = info.baseRecipeQuality
			maxRecipeQuality = info.maxRecipeQuality
		end
	end
	return baseRecipeDifficulty, baseRecipeQuality, maxRecipeQuality
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.ProcessRemovedMats(removedMats)
	private.matItemDB:SetQueryUpdatesPaused(true)
	for matString in pairs(removedMats) do
		for itemString in MatString.ItemIterator(matString) do
			if not private.numMatDBRows[itemString] then
				local matItemRow = private.matItemDB:GetUniqueRow("itemString", itemString)
				private.matItemDB:DeleteRow(matItemRow)
				matItemRow:Release()
			end
		end
	end
	private.matItemDB:SetQueryUpdatesPaused(false)
end

function private.MatDBDeleteCraftStrings(craftStrings)
	local query = private.matDB:NewQuery()
	if type(craftStrings) == "table" then
		query:InTable("craftString", craftStrings)
	elseif type(craftStrings) == "string" then
		query:Equal("craftString", craftStrings)
	else
		error("Invalid craftStrings: "..tostring(craftStrings))
	end
	local removedMats = TempTable.Acquire()
	private.matDB:SetQueryUpdatesPaused(true)
	for _, matRow in query:Iterator() do
		local itemString = matRow:GetField("itemString")
		removedMats[itemString] = true
		private.matDB:DeleteRow(matRow)
		private.HandleMatDBDeleteRow(itemString)
	end
	query:Release()
	private.matDB:SetQueryUpdatesPaused(false)
	private.ProcessRemovedMats(removedMats)
	TempTable.Release(removedMats)
end

function private.HandleMatDBAddRow(matString)
	for itemString in MatString.ItemIterator(matString) do
		private.numMatDBRows[itemString] = (private.numMatDBRows[itemString] or 0) + 1
	end
end

function private.HandleMatDBDeleteRow(matString)
	for itemString in MatString.ItemIterator(matString) do
		private.numMatDBRows[itemString] = private.numMatDBRows[itemString] - 1
		if private.numMatDBRows[itemString] == 0 then
			private.numMatDBRows[itemString] = nil
		end
	end
end

function private.ProfitPctVirtualField(craftString)
	local craftingCost, _, profit = TSM.Crafting.Cost.GetCostsByCraftString(craftString)
	return (craftingCost and profit) and floor(profit * 100 / craftingCost) or Math.GetNan()
end

function private.SaleRateVirtualField(itemString)
	return TSM.AuctionDB.GetRegionItemData(itemString, "regionSalePercent") or Math.GetNan()
end

function private.GetRestockHelpMessage(itemString)
	-- check if the item is in a group
	local groupPath = TSM.Groups.GetPathByItem(itemString)
	if not groupPath then
		return L["This item is not in a TSM group."]
	end

	-- check that there's a crafting operation applied
	if not TSM.Operations.Crafting.HasOperation(itemString) then
		return format(L["There is no Crafting operation applied to this item's TSM group (%s)."], TSM.Groups.Path.Format(groupPath))
	end

	-- check if it's an invalid operation
	local isValid, err = TSM.Operations.Crafting.IsValid(itemString)
	if not isValid then
		return err
	end

	-- check that this item is craftable
	if not TSM.Crafting.CanCraftItem(itemString) then
		return L["You don't know how to craft this item."]
	end

	-- check the restock quantity
	local neededQuantity = TSM.Operations.Crafting.GetRestockQuantity(itemString, private.GetTotalQuantity(itemString))
	if neededQuantity == 0 then
		return L["You either already have at least your max restock quantity of this item or the number which would be queued is less than the min restock quantity."]
	end

	-- check if we would actually queue any
	local cost, craftString = TSM.Crafting.Cost.GetLowestCostByItem(itemString)
	local numResult = craftString and TSM.Crafting.GetNumResult(craftString)
	if neededQuantity < numResult then
		return format(L["A single craft makes %d and you only need to restock %d."], numResult, neededQuantity)
	end

	-- check the prices on the item and the min profit
	local hasMinProfit, minProfit = TSM.Operations.Crafting.GetMinProfit(itemString)
	if hasMinProfit then
		local craftedValue = TSM.Crafting.Cost.GetCraftedItemValue(itemString)
		local profit = cost and craftedValue and (craftedValue - cost) or nil

		-- check that there's a crafted value
		if not craftedValue then
			return L["The 'Craft Value Method' did not return a value for this item."]
		end

		-- check that there's a crafted cost
		if not cost then
			return L["This item does not have a crafting cost. Check that all of its mats have mat prices."]
		end

		-- check that there's a profit
		assert(profit)

		if not minProfit then
			return L["The min profit did not evaluate to a valid value for this item."]
		end

		if profit < minProfit then
			return format(L["The profit of this item (%s) is below the min profit (%s)."], Money.ToString(profit), Money.ToString(minProfit))
		end
	end

	return L["This item will be added to the queue when you restock its group. If this isn't happening, please visit http://support.tradeskillmaster.com for further assistance."]
end

function private.GetTotalQuantity(itemString)
	return CustomPrice.GetItemPrice(itemString, "NumInventory") or 0
end

function private.MatItemDBUpdateOrInsert(itemString, profession)
	local matItemRow = private.matItemDB:GetUniqueRow("itemString", itemString)
	if matItemRow then
		-- update the professions if necessary
		local professions = TempTable.Acquire(strsplit(PROFESSION_SEP, matItemRow:GetField("professions")))
		if not Table.KeyByValue(professions, profession) then
			tinsert(professions, profession)
			sort(professions)
			matItemRow:SetField("professions", table.concat(professions, PROFESSION_SEP))
				:Update()
		end
		TempTable.Release(professions)
	else
		private.matItemDB:NewRow()
			:SetField("itemString", itemString)
			:SetField("professions", profession)
			:SetField("customValue", private.settings.mats[itemString].customValue or "")
			:Create()
	end
end

function private.IsCraftStringHigherProfit(craftingCost, profit, hasCD, bestCraftingCost, bestProfit, bestHasCD)
	-- No CD is always better than a CD
	if not hasCD and bestHasCD then
		return true
	elseif hasCD and not bestHasCD then
		return false
	end
	-- Order by profit
	if not profit and bestProfit then
		return false
	elseif profit and not bestProfit then
		return true
	elseif profit and bestProfit then
		return profit > bestProfit
	end
	-- Order by crafting cost
	if not craftingCost and bestCraftingCost then
		return false
	elseif craftingCost and not bestCraftingCost then
		return true
	elseif craftingCost and bestCraftingCost then
		return craftingCost < bestCraftingCost
	end
	-- Stick with what we have
	return false
end
