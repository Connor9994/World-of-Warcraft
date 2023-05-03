-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Scanner = TSM.Init("Service.ProfessionHelpers.Scanner") ---@class Service.ProfessionHelpers.Scanner
local Environment = TSM.Include("Environment")
local State = TSM.Include("Service.ProfessionHelpers.State")
local Quality = TSM.Include("Service.ProfessionHelpers.Quality")
local ProfessionInfo = TSM.Include("Data.ProfessionInfo")
local CraftString = TSM.Include("Util.CraftString")
local Database = TSM.Include("Util.Database")
local Event = TSM.Include("Util.Event")
local Delay = TSM.Include("Util.Delay")
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local Math = TSM.Include("Util.Math")
local Log = TSM.Include("Util.Log")
local ItemString = TSM.Include("Util.ItemString")
local MatString = TSM.Include("Util.MatString")
local ItemInfo = TSM.Include("Service.ItemInfo")
local private = {
	db = nil,
	matDB = nil,
	dbPopulated = false,
	hasScanned = false,
	callbacks = {},
	disabled = false,
	ignoreUpdatesUntil = 0,
	recipeInfoCache = {},
	prevScannedHash = nil,
	scanTimer = nil,
	resultQualityTemp = {},
	classicSpellIdLookup = {},
	scanHookFunc = nil,
	inactiveFunc = nil,
	categorySkillLevelCache = {
		lastUpdate = 0,
	},
	matStringItemsTemp = {},
	matQuantitiesTemp = {},
}
-- Don't want to scan a bunch of times when the profession first loads so add a 10 frame debounce to update events
local SCAN_DEBOUNCE_FRAMES = 10
local MAX_CRAFT_LEVEL = 4
local EMPTY_MATS_TABLE = {}



-- ============================================================================
-- Module Functions
-- ============================================================================

Scanner:OnModuleLoad(function()
	local dbSchema = Database.NewSchema("CRAFTING_RECIPES")
		:AddUniqueStringField("craftString")
		:AddStringField("itemString")
		:AddNumberField("index")
		:AddStringField("name")
		:AddStringField("craftName")
		:AddNumberField("categoryId")
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		dbSchema:AddNumberField("difficulty")
	else
		dbSchema:AddStringField("difficulty")
	end
	private.db = dbSchema
		:AddNumberField("rank")
		:AddNumberField("numSkillUps")
		:AddNumberField("level")
		:AddNumberField("currentExp")
		:AddNumberField("nextExp")
		:Commit()
	private.matDB = Database.NewSchema("CRAFTING_RECIPE_MATS")
		:AddStringField("craftString")
		:AddStringField("matString")
		:AddNumberField("quantity")
		:AddStringField("slotText")
		:AddIndex("craftString")
		:AddIndex("matString")
		:Commit()
	private.scanTimer = Delay.CreateTimer("PROFESSION_SCAN", private.ScanProfession)
	State.RegisterCallback(private.ProfessionStateUpdate)
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		Event.Register("TRADE_SKILL_LIST_UPDATE", private.OnTradeSkillUpdateEvent)
	else
		Event.Register("CRAFT_UPDATE", private.OnTradeSkillUpdateEvent)
		Event.Register("TRADE_SKILL_UPDATE", private.OnTradeSkillUpdateEvent)
	end
	Event.Register("CHAT_MSG_SKILL", private.ChatMsgSkillEventHandler)
end)

function Scanner.SetDisabled(disabled)
	if private.disabled == disabled then
		return
	end
	private.disabled = disabled
	if not disabled then
		private.ScanProfession()
	end
end

function Scanner.HasScanned()
	return private.hasScanned
end

function Scanner.HasSkills()
	return private.hasScanned and private.db:GetNumRows() > 0
end

function Scanner.RegisterHasScannedCallback(callback)
	tinsert(private.callbacks, callback)
end

function Scanner.IgnoreNextProfessionUpdates()
	private.ignoreUpdatesUntil = GetTime() + 1
end

function Scanner.CreateQuery()
	return private.db:NewQuery()
end

function Scanner.GetItemStringByCraftString(craftString)
	assert(private.dbPopulated)
	return private.db:GetUniqueRowField("craftString", craftString, "itemString")
end

function Scanner.GetIndexByCraftString(craftString)
	assert(not Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) or private.dbPopulated)
	return private.db:GetUniqueRowField("craftString", craftString, "index")
end

function Scanner.GetCategoryIdByCraftString(craftString)
	assert(private.dbPopulated)
	return private.db:GetUniqueRowField("craftString", craftString, "categoryId")
end

function Scanner.GetNameByCraftString(craftString)
	assert(private.dbPopulated)
	return private.db:GetUniqueRowField("craftString", craftString, "name")
end

function Scanner.GetCraftNameByCraftString(craftString)
	assert(private.dbPopulated)
	return private.db:GetUniqueRowField("craftString", craftString, "craftName")
end

function Scanner.GetCurrentExpByCraftString(craftString)
	assert(private.dbPopulated)
	return private.db:GetUniqueRowField("craftString", craftString, "currentExp")
end

function Scanner.GetNextExpByCraftString(craftString)
	assert(private.dbPopulated)
	return private.db:GetUniqueRowField("craftString", craftString, "nextExp")
end

function Scanner.GetDifficultyByCraftString(craftString)
	assert(private.dbPopulated)
	return private.db:GetUniqueRowField("craftString", craftString, "difficulty")
end

function Scanner.HasCraftString(craftString)
	return private.dbPopulated and private.db:HasUniqueRow("craftString", craftString)
end

function Scanner.MatIterator(craftString)
	return private.matDB:NewQuery()
		:Select("matString", "quantity", "slotText")
		:Equal("craftString", craftString)
		:IteratorAndRelease()
end

function Scanner.GetOptionalMatString(craftString, slotId)
	return private.matDB:NewQuery()
		:Select("matString")
		:Equal("craftString", craftString)
		:Matches("matString", "^[qof]:")
		:Contains("matString", ":"..slotId..":")
		:GetSingleResult()
end

function Scanner.HasOptionalMats(craftString)
	return private.matDB:NewQuery()
		:Equal("craftString", craftString)
		:Matches("matString", "^[qof]:")
		:CountAndRelease() > 0
end

function Scanner.GetMatQuantity(craftString, matItemId)
	local query = private.matDB:NewQuery()
		:Select("quantity")
		:Equal("craftString", craftString)
		:Matches("matString", "^[qof]:")
		:Contains("matString", tostring(matItemId))
	return query:GetFirstResultAndRelease()
end

function Scanner.GetMatSlotText(craftString, matString)
	return private.matDB:NewQuery()
		:Select("slotText")
		:Equal("craftString", craftString)
		:Equal("matString", matString)
		:GetSingleResultAndRelease()
end

function Scanner.SetHookFuncs(scanFunc, inactiveFunc)
	assert(inactiveFunc and scanFunc)
	assert(not private.scanHookFunc and not private.inactiveFunc)
	private.scanHookFunc = scanFunc
	private.inactiveFunc = inactiveFunc
end

function Scanner.GetRecipeQualityInfo(craftString)
	if not Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		return nil, nil
	end
	local spellId = CraftString.GetSpellId(craftString)
	-- TODO: Do we need this info?
	local info = C_TradeSkillUI.GetRecipeSchematic(spellId, false, 1)
	local isItem = info.recipeType == Enum.TradeskillRecipeType.Item
	local isEnchant = info.recipeType == Enum.TradeskillRecipeType.Enchant
	if not info.hasCraftingOperationInfo or info.hasGatheringOperationInfo then
		return nil, nil
	elseif not isItem and not isEnchant then
		return nil, nil
	elseif isItem and not info.outputItemID then
		return nil, nil
	end
	local operationInfo = C_TradeSkillUI.GetCraftingOperationInfo(spellId, EMPTY_MATS_TABLE)
	if not operationInfo then
		return nil, nil
	end
	return operationInfo.baseDifficulty, operationInfo.quality
end

---TODO: Should this handle indirect crafts on classic like GetResultInfo()?
function Scanner.GetResultItem(craftString)
	local spellId = CraftString.GetSpellId(craftString)
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		local indirectResult = ProfessionInfo.GetIndirectCraftResult(spellId)
		if indirectResult then
			if type(indirectResult) == "table" then
				for i = 1, #indirectResult do
					local link = ItemInfo.GetLink(indirectResult[i])
					assert(link)
					indirectResult[i] = link
				end
			else
				indirectResult = ItemInfo.GetLink(indirectResult)
				assert(indirectResult)
			end
			return indirectResult, spellId
		end
		local result = C_TradeSkillUI.GetRecipeQualityItemIDs(spellId)
		if not result then
			result = C_TradeSkillUI.GetRecipeItemLink(spellId)
			local baseItemString = result and ItemString.GetBase(result) or nil
			if not baseItemString then
				return result
			end
			local ilvlBonuses = C_TradeSkillUI.GetRecipeInfo(spellId).qualityIlvlBonuses
			if not ilvlBonuses then
				return result
			end
			local baseLevel = GetDetailedItemLevelInfo(result)
			assert(baseLevel)
			result = ilvlBonuses
			wipe(private.resultQualityTemp)
			for i = 1, #result do
				local relLevel = result[i]
				assert(relLevel >= 0)
				local itemString = baseItemString.."::i"..(baseLevel + relLevel)
				result[i] = baseItemString.."::i"..(baseLevel + relLevel)
				private.resultQualityTemp[itemString] = relLevel
			end
		else
			wipe(private.resultQualityTemp)
			for i = 1, #result do
				local itemId = result[i]
				local itemString = "i:"..itemId
				result[i] = itemString
				local quality = C_TradeSkillUI.GetItemCraftedQualityByItemInfo(itemId) or C_TradeSkillUI.GetItemReagentQualityByItemInfo(itemId) or ItemInfo.GetCraftedQuality(itemString)
				assert(quality)
				private.resultQualityTemp[itemString] = quality
			end
		end
		Table.SortWithValueLookup(result, private.resultQualityTemp)
		for i = 1, #result do
			local link = ItemInfo.GetLink(result[i])
			assert(link)
			result[i] = link
		end
		return result
	else
		spellId = private.classicSpellIdLookup[spellId] or spellId
		local itemLink = State.IsClassicCrafting() and GetCraftItemLink(spellId) or GetTradeSkillItemLink(spellId)
		local emptyLink = strfind(itemLink or "", "item::") and true or false
		itemLink = not emptyLink and itemLink or nil
		if Environment.IsWrathClassic() then
			itemLink = itemLink or GetTradeSkillRecipeLink(spellId) or nil
			local indirectSpellId = strmatch(itemLink, "enchant:(%d+)")
			indirectSpellId = indirectSpellId and tonumber(indirectSpellId)
			local itemString = ProfessionInfo.GetIndirectCraftResult(indirectSpellId)
			itemLink = itemString and ItemInfo.GetLink(itemString) or itemLink
			return itemLink, indirectSpellId
		else
			return itemLink
		end
	end
end

function Scanner.GetVellumItemString(craftString)
	if Environment.IsWrathClassic() then
		local spellId = CraftString.GetSpellId(craftString)
		spellId = private.classicSpellIdLookup[spellId] or spellId
		local itemLink = (State.IsClassicCrafting() and GetCraftItemLink(spellId) or GetTradeSkillItemLink(spellId)) or GetTradeSkillRecipeLink(spellId)
		local indirectSpellId = itemLink and strmatch(itemLink, "enchant:(%d+)")
		indirectSpellId = indirectSpellId and tonumber(indirectSpellId)
		assert(indirectSpellId)
		return ProfessionInfo.GetVellumItemString(indirectSpellId)
	end
	return ProfessionInfo.GetVellumItemString()
end

function Scanner.GetNumResultItems(craftString)
	if not Environment.IsRetail() then
		return 1
	elseif not CraftString.GetQuality(craftString) then
		return 1
	end
	local spellId = CraftString.GetSpellId(craftString)
	local indirectResult = ProfessionInfo.GetIndirectCraftResult(spellId)
	if indirectResult then
		return type(indirectResult) == "table" and #indirectResult or 1
	end
	local result = C_TradeSkillUI.GetRecipeQualityItemIDs(spellId) or C_TradeSkillUI.GetRecipeInfo(spellId).qualityIlvlBonuses
	return result and #result or 1
end

function Scanner.GetCraftedQuantityRange(craftString)
	if State.IsClassicCrafting() then
		return 1, 1
	end
	local spellId = CraftString.GetSpellId(craftString)
	if Scanner.IsEnchant(craftString) then
		return 1, 1
	else
		-- workaround for incorrect values returned for Temporal Crystal
		if spellId == 169092 then
			return 1, 1
		end
		-- workaround for incorrect values returned for new mass milling recipes
		if ProfessionInfo.IsMassMill(spellId) then
			if spellId == 210116 then -- Yseralline
				return 4, 4 -- always four
			elseif spellId == 209664 then -- Felwort
				return 42, 42 -- amount is variable but the values are conservative
			elseif spellId == 247861 then -- Astral Glory
				return 4, 4 -- amount is variable but the values are conservative
			else
				return 8, 8.8
			end
		end
	end
	local lNum, hNum = nil, nil
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		local info = C_TradeSkillUI.GetRecipeSchematic(spellId, false)
		lNum, hNum = info.quantityMin, info.quantityMax
	else
		spellId = private.classicSpellIdLookup[spellId] or spellId
		lNum, hNum = GetTradeSkillNumMade(spellId)
	end
	return lNum, hNum
end

function Scanner.IsEnchant(craftString)
	if State.GetSkillLine() ~= GetSpellInfo(7411) then
		return false
	end
	local spellId = CraftString.GetSpellId(craftString)
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		if not strfind(C_TradeSkillUI.GetRecipeItemLink(spellId), "enchant:") then
			return false
		end
		local recipeInfo = C_TradeSkillUI.GetRecipeInfo(spellId)
		return recipeInfo.isEnchantingRecipe
	else
		spellId = private.classicSpellIdLookup[spellId] or spellId
		local itemLink = State.IsClassicCrafting() and GetCraftItemLink(spellId) or GetTradeSkillItemLink(spellId)
		itemLink = itemLink or (Environment.IsWrathClassic() and GetTradeSkillRecipeLink(spellId)) or nil
		if not itemLink or not strfind(itemLink, "enchant:") then
			return false
		end
		return true
	end
end

function Scanner.HasCooldown(craftString)
	local spellId = CraftString.GetSpellId(craftString)
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		return select(2, C_TradeSkillUI.GetRecipeCooldown(spellId)) and true or false
	else
		spellId = private.classicSpellIdLookup[spellId] or spellId
		return GetTradeSkillCooldown(spellId) and true or false
	end
end

function Scanner.GetNumMats(craftString)
	local spellId = CraftString.GetSpellId(craftString)
	local numMats = nil
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		local level = CraftString.GetLevel(craftString)
		local info = C_TradeSkillUI.GetRecipeSchematic(spellId, false, level)
		local num = 0
		for _, data in ipairs(info.reagentSlotSchematics) do
			if private.IsRegularMat(data) then
				num = num + 1
			end
		end
		numMats = num
	else
		spellId = private.classicSpellIdLookup[spellId] or spellId
		numMats = State.IsClassicCrafting() and GetCraftNumReagents(spellId) or GetTradeSkillNumReagents(spellId)
	end
	return numMats
end

function Scanner.GetMatInfo(craftString, index)
	local spellId = CraftString.GetSpellId(craftString)
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		local info = C_TradeSkillUI.GetRecipeSchematic(spellId, false, CraftString.GetLevel(craftString))
		local reagentSlotInfo = nil
		local reagentOffset = index - 1
		for _, data in ipairs(info.reagentSlotSchematics) do
			if private.IsRegularMat(data) then
				if reagentOffset == 0 then
					reagentSlotInfo = data
					break
				else
					reagentOffset = reagentOffset - 1
				end
			end
		end
		assert(reagentSlotInfo)
		if reagentSlotInfo.reagentType == Enum.CraftingReagentType.Basic and reagentSlotInfo.dataSlotType == Enum.TradeskillSlotDataType.Reagent then
			local itemLink = C_TradeSkillUI.GetRecipeFixedReagentItemLink(spellId, reagentSlotInfo.dataSlotIndex)
			local itemString = ItemString.Get(itemLink)
			local name, quantity = ItemInfo.GetName(itemLink), reagentSlotInfo.quantityRequired
			return itemString, quantity, name, false
		elseif reagentSlotInfo.reagentType == Enum.CraftingReagentType.Basic and reagentSlotInfo.dataSlotType == Enum.TradeskillSlotDataType.ModifiedReagent then
			local qualityIndex = 1
			local reagentDataInfo = reagentSlotInfo.reagents[qualityIndex]
			local itemLink = C_TradeSkillUI.GetRecipeQualityReagentItemLink(spellId, reagentSlotInfo.dataSlotIndex, qualityIndex)
			-- NOTE: For some reason, the above API doesn't always work (i.e. with 'Handful of Serevite Bolts')
			local itemString = itemLink and ItemString.Get(itemLink) or "i:"..reagentDataInfo.itemID
			itemLink = itemLink or ItemInfo.GetLink(reagentDataInfo.itemID)
			local name, quantity = ItemInfo.GetName(itemLink), reagentSlotInfo.quantityRequired
			return itemString, quantity, name, true
		else
			error("Invalid mat: %s, %s", tostring(craftString), tostring(index))
		end
	else
		spellId = private.classicSpellIdLookup[spellId] or spellId
		local itemLink = State.IsClassicCrafting() and GetCraftReagentItemLink(spellId, index) or GetTradeSkillReagentItemLink(spellId, index)
		local itemString = ItemString.Get(itemLink)
		if State.IsClassicCrafting() then
			local name, _, quantity = GetCraftReagentInfo(spellId, index)
			return itemString, quantity, name, false
		else
			local name, _, quantity = GetTradeSkillReagentInfo(spellId, index)
			return itemString, quantity, name, false
		end
	end
end



-- ============================================================================
-- Event Handlers
-- ============================================================================

function private.ProfessionStateUpdate()
	private.hasScanned = false
	private.dbPopulated = false
	for _, callback in ipairs(private.callbacks) do
		callback()
	end
	if State.GetCurrentProfession() then
		private.db:Truncate()
		private.prevScannedHash = nil
		private.OnTradeSkillUpdateEvent()
	else
		private.scanTimer:Cancel()
	end
end

function private.OnTradeSkillUpdateEvent()
	private.scanTimer:Cancel()
	private.QueueProfessionScan()
end

function private.ChatMsgSkillEventHandler(_, msg)
	local professionName = State.GetCurrentProfession()
	if not professionName or not strmatch(msg, professionName) then
		return
	end
	private.ignoreUpdatesUntil = 0
	private.QueueProfessionScan()
end



-- ============================================================================
-- Profession Scanning
-- ============================================================================

function private.QueueProfessionScan()
	private.scanTimer:RunForFrames(SCAN_DEBOUNCE_FRAMES)
end

function private.ScanProfession()
	if InCombatLockdown() then
		-- we are in combat, so try again in a bit
		private.QueueProfessionScan()
		return
	elseif private.disabled then
		return
	elseif GetTime() < private.ignoreUpdatesUntil then
		return
	end

	local professionName = State.GetCurrentProfession()
	if not professionName or not State.IsDataStable() then
		-- profession hasn't fully opened yet
		private.QueueProfessionScan()
		return
	end

	if private.ClearFilters() then
		-- An update event will be triggered
		return
	end

	local scannedHash = nil
	local haveInvalidRecipes = false
	local haveInvalidMats = false
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		wipe(private.recipeInfoCache)
		local prevRecipeIds = TempTable.Acquire()
		local nextRecipeIds = TempTable.Acquire()
		local recipes = TempTable.Acquire()
		assert(C_TradeSkillUI.GetFilteredRecipeIDs(recipes) == recipes)
		for index, spellId in ipairs(recipes) do
			-- There's a Blizzard bug where First Aid duplicates spellIds, so check that we haven't seen this before
			if not private.recipeInfoCache[spellId] then
				local info = C_TradeSkillUI.GetRecipeInfo(spellId)
				assert(not info.index)
				info.index = index
				if info.previousRecipeID then
					prevRecipeIds[spellId] = info.previousRecipeID
					nextRecipeIds[info.previousRecipeID] = spellId
				end
				if info.nextRecipeID then
					nextRecipeIds[spellId] = info.nextRecipeID
					prevRecipeIds[info.nextRecipeID] = spellId
				end
				private.recipeInfoCache[spellId] = info
			end
		end
		scannedHash = Math.CalculateHash(private.recipeInfoCache)
		if scannedHash == private.prevScannedHash then
			Log.Info("Hash hasn't changed, so not scanning")
			private.dbPopulated = true
			TempTable.Release(recipes)
			TempTable.Release(prevRecipeIds)
			TempTable.Release(nextRecipeIds)
			private.DoneScanning(scannedHash)
			return
		end
		private.db:TruncateAndBulkInsertStart()
		private.matDB:TruncateAndBulkInsertStart()
		local inactiveCraftStrings = TempTable.Acquire()
		for index, spellId in ipairs(recipes) do
			local info = private.recipeInfoCache[spellId]
			local nextSpellId = nextRecipeIds[spellId]
			local hasHigherRank = nextSpellId and private.recipeInfoCache[nextSpellId] and private.recipeInfoCache[nextSpellId].learned
			local rank = -1
			if prevRecipeIds[spellId] or nextSpellId then
				rank = 1
				local tempSpellId = spellId
				while prevRecipeIds[tempSpellId] do
					rank = rank + 1
					tempSpellId = prevRecipeIds[tempSpellId]
				end
			end
			-- There's a Blizzard bug where First Aid duplicates spellIds, so check that this is the right index
			-- TODO: show unlearned recipes in the TSM UI
			if info and info.index == index and info.learned and not hasHigherRank then
				local unlockedLevel = info.unlockedRecipeLevel
				local numSkillUps = info.relativeDifficulty == Enum.TradeskillRelativeDifficulty.Optimal and info.numSkillUps or 1
				if unlockedLevel then
					for level = 1, MAX_CRAFT_LEVEL do
						local craftString = CraftString.Get(spellId, rank, level)
						-- Remove any old version of the spell without a level
						inactiveCraftStrings[CraftString.Get(spellId)] = true
						if level <= unlockedLevel then
							local recipeScanResult, matScanResult = private.BulkInsertRecipe(craftString, index, info.name, info.categoryID, info.relativeDifficulty, rank, numSkillUps, level, info.currentRecipeExperience or -1, info.nextLevelRecipeExperience or -1)
							haveInvalidRecipes = haveInvalidRecipes or not recipeScanResult
							haveInvalidMats = haveInvalidMats or not matScanResult
						else
							-- This level isn't unlocked yet
							inactiveCraftStrings[craftString] = true
						end
					end
				else
					local craftString = CraftString.Get(spellId, rank)
					local numResultItems = nil
					local indirectResult = ProfessionInfo.GetIndirectCraftResult(spellId)
					if indirectResult then
						if type(indirectResult) == "table" then
							numResultItems = #indirectResult
						else
							numResultItems = 1
						end
					else
						local result = C_TradeSkillUI.GetRecipeQualityItemIDs(spellId)
						if result then
							numResultItems = #result
						else
							if ItemString.GetBase(C_TradeSkillUI.GetRecipeItemLink(spellId)) then
								local ilvlBonuses = C_TradeSkillUI.GetRecipeInfo(spellId).qualityIlvlBonuses
								if ilvlBonuses then
									numResultItems = #ilvlBonuses
								else
									numResultItems = 1
								end
							else
								numResultItems = 1
							end
						end
					end
					if info.isSalvageRecipe then
						-- Just ignore this craft for now
					elseif not info.supportsQualities then
						assert(numResultItems == 1)
						local recipeScanResult, matScanResult = private.BulkInsertRecipe(craftString, index, info.name, info.categoryID, info.relativeDifficulty, rank, numSkillUps, 1, info.currentRecipeExperience or -1, info.nextLevelRecipeExperience or -1)
						haveInvalidRecipes = haveInvalidRecipes or not recipeScanResult
						haveInvalidMats = haveInvalidMats or not matScanResult
					elseif numResultItems == 1 then
						-- Just ignore this craft for now - this can happen with alchemy experimentation for example
						Log.Warn("Unexpected single result item (%s, %s)", tostring(professionName), tostring(craftString))
					else
						assert(numResultItems > 1)
						-- This is a quality craft
						local recipeDifficulty, baseRecipeQuality = Scanner.GetRecipeQualityInfo(craftString)
						if baseRecipeQuality then
							for i = 1, numResultItems do
								local qualityCraftString = CraftString.Get(spellId, rank, nil, i)
								if Quality.GetNeededSkill(i, recipeDifficulty, baseRecipeQuality, numResultItems) then
									local recipeScanResult, matScanResult = private.BulkInsertRecipe(qualityCraftString, index, info.name, info.categoryID, info.relativeDifficulty, rank, numSkillUps, 1, info.currentRecipeExperience or -1, info.nextLevelRecipeExperience or -1)
									haveInvalidRecipes = haveInvalidRecipes or not recipeScanResult
									haveInvalidMats = haveInvalidMats or not matScanResult
								else
									-- We can no longer craft this quality
									inactiveCraftStrings[qualityCraftString] = true
								end
							end
						else
							-- Just ignore this craft for now
							Log.Warn("Could not look up base quality (%s, %s)", tostring(professionName), tostring(craftString))
						end
					end
				end
			end
		end
		private.matDB:BulkInsertEnd()
		private.db:BulkInsertEnd()
		private.dbPopulated = true
		if next(inactiveCraftStrings) then
			private.inactiveFunc(inactiveCraftStrings)
		end
		TempTable.Release(inactiveCraftStrings)
		TempTable.Release(recipes)
		TempTable.Release(prevRecipeIds)
		TempTable.Release(nextRecipeIds)
	else
		private.PopulateClassicSpellIdLookup()
		local lastHeaderIndex = 0
		private.db:TruncateAndBulkInsertStart()
		private.matDB:TruncateAndBulkInsertStart()
		for i = 1, State.IsClassicCrafting() and GetNumCrafts() or GetNumTradeSkills() do
			local name, skillType = nil, nil
			if State.IsClassicCrafting() then
				local _
				name, _, skillType = GetCraftInfo(i)
			else
				name, skillType = GetTradeSkillInfo(i)
			end
			if skillType == "header" then
				lastHeaderIndex = i
			elseif name then
				local craftString = CraftString.Get(private.classicSpellIdLookup[-i])
				local recipeScanResult, matScanResult = private.BulkInsertRecipe(craftString, i, name, lastHeaderIndex, skillType, -1, 1, 1, -1, -1)
				haveInvalidRecipes = haveInvalidRecipes or not recipeScanResult
				haveInvalidMats = haveInvalidMats or not matScanResult
			end
		end
		private.matDB:BulkInsertEnd()
		private.db:BulkInsertEnd()
		private.dbPopulated = true
	end
	if haveInvalidRecipes then
		-- We'll try again
		private.QueueProfessionScan()
		return
	elseif State.IsNPC() or State.IsLinked() or State.IsGuild() then
		-- We don't want to store this profession in our application DB, so we're done
		private.DoneScanning(scannedHash)
		return
	end

	local craftStrings = TempTable.Acquire()
	private.db:NewQuery()
		:Select("craftString")
		:NotEqual("itemString", "")
		:NotEqual("craftString", "")
		:AsTable(craftStrings)
		:Release()
	local categorySkillLevelLookup = TempTable.Acquire()
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		for _, craftString in ipairs(craftStrings) do
			local spellId = CraftString.GetSpellId(craftString)
			local categoryId = private.recipeInfoCache[spellId].categoryID
			categorySkillLevelLookup[craftString] = private.GetCurrentCategorySkillLevel(categoryId)
		end
	end
	local done, rescan = private.scanHookFunc(professionName, craftStrings, categorySkillLevelLookup)
	TempTable.Release(craftStrings)
	TempTable.Release(categorySkillLevelLookup)
	if rescan then
		private.QueueProfessionScan()
	end
	if done and not haveInvalidMats then
		private.DoneScanning(scannedHash)
	end

	wipe(private.recipeInfoCache)
end

function private.BulkInsertRecipe(craftString, index, name, categoryId, relativeDifficulty, rank, numSkillUps, level, currentRecipeExperience, nextLevelRecipeExperience)
	local itemString, craftName = private.GetItemStringAndCraftName(craftString)
	if not itemString or not craftName then
		return false, false
	end
	private.db:BulkInsertNewRow(craftString, itemString, index, name, craftName, categoryId, relativeDifficulty, rank, numSkillUps, level, currentRecipeExperience, nextLevelRecipeExperience)
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		local spellId = CraftString.GetSpellId(craftString)
		private.recipeInfoCache[craftString] = private.recipeInfoCache[spellId]
	end
	local matScanResult = private.BulkInsertMats(craftString)
	return true, matScanResult
end

function private.GetItemStringAndCraftName(craftString)
	-- Get the links
	local spellId = CraftString.GetSpellId(craftString)
	local quality = CraftString.GetQuality(craftString)
	local resultItem, indirectSpellId = Scanner.GetResultItem(craftString)

	-- Get the itemString and craft name
	local itemString, craftName = nil, nil
	if quality then
		assert(type(resultItem) == "table")
		assert(resultItem[quality])
		itemString = ItemString.ToLevel(ItemString.Get(resultItem[quality]))
		craftName = ItemInfo.GetName(itemString)
	elseif strfind(resultItem, "enchant:") then
		itemString = ""
		craftName = GetSpellInfo(indirectSpellId or spellId)
	elseif strfind(resultItem, "item:") then
		-- Result of craft is item
		local level = CraftString.GetLevel(craftString)
		if level and level > 0 then
			local relLevel = ProfessionInfo.GetRelativeItemLevelByRank(level)
			local baseItemString = ItemString.GetBase(resultItem)
			itemString = baseItemString..(relLevel < 0 and "::-" or "::+")..abs(relLevel)
		else
			itemString = ItemString.GetBase(resultItem)
		end
		craftName = ItemInfo.GetName(resultItem)
		-- Blizzard broke Brilliant Scarlet Ruby in 8.3, so just hard-code a workaround
		if spellId == 53946 and not itemString and not craftName then
			itemString = "i:39998"
			craftName = GetSpellInfo(spellId)
		end
	else
		error("Invalid craft: "..tostring(craftString))
	end
	if not itemString or not craftName then
		Log.Warn("No itemString (%s) or craftName (%s) found (%s)", tostring(itemString), tostring(craftName), tostring(craftString))
		return nil, nil
	end

	return itemString, craftName
end

function private.BulkInsertMats(craftString)
	wipe(private.matQuantitiesTemp)
	local haveInvalidMats = false
	for i = 1, Scanner.GetNumMats(craftString) do
		local matItemString, quantity, name, isQualityMat = Scanner.GetMatInfo(craftString, i)
		if not matItemString then
			local professionName = State.GetCurrentProfession()
			Log.Warn("Failed to get itemString for mat %d (%s, %s)", i, tostring(professionName), tostring(craftString))
			haveInvalidMats = true
			break
		end
		if not name or not quantity then
			local professionName = State.GetCurrentProfession()
			Log.Warn("Failed to get name (%s) or quantity (%s) for mat (%s, %s, %d)", tostring(name), tostring(quantity), tostring(professionName), tostring(craftString), i)
			haveInvalidMats = true
			break
		end
		if not isQualityMat then
			ItemInfo.StoreItemName(matItemString, name)
			private.matQuantitiesTemp[matItemString] = quantity
		end
	end
	if Scanner.IsEnchant(craftString) and Environment.IsWrathClassic() then
		-- Add a vellum to the list of mats
		local vellumItemString = Scanner.GetVellumItemString(craftString)
		if vellumItemString then
			private.matQuantitiesTemp[vellumItemString] = 1
		else
			haveInvalidMats = true
		end
	end

	if haveInvalidMats then
		return false
	end

	for matString, quantity in pairs(private.matQuantitiesTemp) do
		private.matDB:BulkInsertNewRow(craftString, matString, quantity, "")
	end
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		local categorySkillLevel = private.GetCurrentCategorySkillLevel(private.recipeInfoCache[craftString].categoryID)
		local spellId = CraftString.GetSpellId(craftString)
		local level = CraftString.GetLevel(craftString)
		local mats = C_TradeSkillUI.GetRecipeSchematic(spellId, false, level).reagentSlotSchematics

		for _, data in ipairs(mats) do
			if private.IsSpecialMatValid(data, categorySkillLevel) then
				assert(not next(private.matStringItemsTemp))
				for _, craftingReagent in ipairs(data.reagents) do
					tinsert(private.matStringItemsTemp, craftingReagent.itemID)
				end
				local matStringType = nil
				if data.reagentType == Enum.CraftingReagentType.Basic and data.dataSlotType == Enum.TradeskillSlotDataType.ModifiedReagent then
					matStringType = MatString.TYPE.QUALITY
				elseif data.reagentType == Enum.CraftingReagentType.Optional or data.reagentType == Enum.CraftingReagentType.Modifying then
					matStringType = MatString.TYPE.OPTIONAL
				elseif data.reagentType == Enum.CraftingReagentType.Finishing then
					matStringType = MatString.TYPE.FINISHING
				else
					error("Unexpected optional mat type: "..tostring(data.reagentType)..", "..tostring(data.dataSlotType))
				end
				local matString = MatString.Create(matStringType, data.dataSlotIndex, private.matStringItemsTemp)
				wipe(private.matStringItemsTemp)
				local slotText = data.slotInfo.slotText or OPTIONAL_REAGENT_POSTFIX
				private.matDB:BulkInsertNewRow(craftString, matString, data.quantityRequired, slotText)
			end
		end
	end

	return true
end

function private.DoneScanning(scannedHash)
	private.prevScannedHash = scannedHash
	if not private.hasScanned then
		private.hasScanned = true
		for _, callback in ipairs(private.callbacks) do
			callback()
		end
	end
end

function private.ClearFilters()
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		local hadFilter = false
		if C_TradeSkillUI.GetShowUnlearned() then
			C_TradeSkillUI.SetShowLearned(true)
			C_TradeSkillUI.SetShowUnlearned(false)
			hadFilter = true
		end
		if C_TradeSkillUI.GetOnlyShowMakeableRecipes() then
			C_TradeSkillUI.SetOnlyShowMakeableRecipes(false)
			hadFilter = true
		end
		if C_TradeSkillUI.GetOnlyShowSkillUpRecipes() then
			C_TradeSkillUI.SetOnlyShowSkillUpRecipes(false)
			hadFilter = true
		end
		if C_TradeSkillUI.AnyRecipeCategoriesFiltered() then
			C_TradeSkillUI.ClearRecipeCategoryFilter()
			hadFilter = true
		end
		if C_TradeSkillUI.AreAnyInventorySlotsFiltered() then
			C_TradeSkillUI.ClearInventorySlotFilter()
			hadFilter = true
		end
		for i = 1, C_PetJournal.GetNumPetSources() do
			if C_TradeSkillUI.IsAnyRecipeFromSource(i) and C_TradeSkillUI.IsRecipeSourceTypeFiltered(i) then
				C_TradeSkillUI.ClearRecipeSourceTypeFilter()
				hadFilter = true
				break
			end
		end
		if C_TradeSkillUI.GetRecipeItemNameFilter() ~= "" then
			C_TradeSkillUI.SetRecipeItemNameFilter(nil)
			hadFilter = true
		end
		local minItemLevel, maxItemLevel = C_TradeSkillUI.GetRecipeItemLevelFilter()
		if minItemLevel ~= 0 or maxItemLevel ~= 0 then
			C_TradeSkillUI.SetRecipeItemLevelFilter(0, 0)
			hadFilter = true
		end
		return hadFilter
	else
		-- TODO
		return false
	end
end

function private.PopulateClassicSpellIdLookup()
	assert(not Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI))
	assert(State.GetCurrentProfession() and State.IsDataStable())
	wipe(private.classicSpellIdLookup)
	for i = 1, State.IsClassicCrafting() and GetNumCrafts() or GetNumTradeSkills() do
		local hash = private.GetClassicSpellId(i)
		if hash then
			assert(hash >= 0 and not private.classicSpellIdLookup[hash] and not private.classicSpellIdLookup[-i])
			private.classicSpellIdLookup[hash] = i
			private.classicSpellIdLookup[-i] = hash
		end
	end
end

function private.GetClassicSpellId(index)
	local name, skillType = nil, nil
	if State.IsClassicCrafting() then
		local _
		name, _, skillType = GetCraftInfo(index)
	else
		name, skillType = GetTradeSkillInfo(index)
	end
	if skillType == "header" or not name then
		return
	end
	local hash = Math.CalculateHash(name)
	if State.IsClassicCrafting() then
		hash = Math.CalculateHash(GetCraftIcon(index), hash)
		for i = 1, GetCraftNumReagents(index) do
			local _, _, quantity = GetCraftReagentInfo(index, i)
			hash = Math.CalculateHash(ItemString.Get(GetCraftReagentItemLink(index, i)), hash)
			hash = Math.CalculateHash(quantity, hash)
		end
	else
		hash = Math.CalculateHash(GetTradeSkillIcon(index), hash)
		for i = 1, GetTradeSkillNumReagents(index) do
			local _, _, quantity = GetTradeSkillReagentInfo(index, i)
			hash = Math.CalculateHash(ItemString.Get(GetTradeSkillReagentItemLink(index, i)), hash)
			hash = Math.CalculateHash(quantity, hash)
		end
	end
	return hash
end

function private.GetCurrentCategorySkillLevel(categoryId)
	if private.categorySkillLevelCache.lastUpdate ~= GetTime() then
		wipe(private.categorySkillLevelCache)
		private.categorySkillLevelCache.lastUpdate = GetTime()
	end
	if not private.categorySkillLevelCache[categoryId] then
		local categoryInfo = C_TradeSkillUI.GetCategoryInfo(categoryId)
		while not categoryInfo.skillLineCurrentLevel and categoryInfo.parentCategoryID do
			categoryInfo = C_TradeSkillUI.GetCategoryInfo(categoryInfo.parentCategoryID)
		end
		private.categorySkillLevelCache[categoryId] = categoryInfo.skillLineCurrentLevel or 0
	end
	return private.categorySkillLevelCache[categoryId]
end

function private.IsSpecialMatValid(data, categorySkillLevel)
	if data.reagentType == Enum.CraftingReagentType.Basic and data.dataSlotType == Enum.TradeskillSlotDataType.ModifiedReagent then
		-- pass
	elseif data.reagentType == Enum.CraftingReagentType.Optional or data.reagentType == Enum.CraftingReagentType.Modifying or data.reagentType == Enum.CraftingReagentType.Finishing then
		-- pass
	else
		return false
	end
	return data.slotInfo.requiredSkillRank <= categorySkillLevel
end

function private.IsRegularMat(info)
	assert(Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI))
	if info.reagentType ~= Enum.CraftingReagentType.Basic then
		return false
	end
	return info.dataSlotType == Enum.TradeskillSlotDataType.Reagent or info.dataSlotType == Enum.TradeskillSlotDataType.ModifiedReagent
end
