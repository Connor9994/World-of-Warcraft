-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Cost = TSM.Crafting:NewPackage("Cost")
local ProfessionInfo = TSM.Include("Data.ProfessionInfo")
local TempTable = TSM.Include("Util.TempTable")
local Math = TSM.Include("Util.Math")
local ItemString = TSM.Include("Util.ItemString")
local CraftString = TSM.Include("Util.CraftString")
local RecipeString = TSM.Include("Util.RecipeString")
local MatString = TSM.Include("Util.MatString")
local CustomPrice = TSM.Include("Service.CustomPrice")
local private = {
	matsVisited = {},
	matCostCache = {},
	matsTemp = {},
	matsTempInUse = false,
	currentMatProfession = nil,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Cost.GetMatCost(itemString)
	itemString = ItemString.GetBaseFast(itemString)
	if not TSM.db.factionrealm.internalData.mats[itemString] then
		return
	end
	if private.matsVisited[itemString] then
		-- there's a loop in the mat cost, so bail
		return
	end
	local prevHash = private.matsVisited.hash
	local hash = nil
	if prevHash == nil then
		-- this is a top-level mat, so just use the itemString as the hash
		hash = itemString
	else
		if type(prevHash) == "string" then
			-- this is a second-level mat where the previous hash is the itemString which needs to be hashed itself
			prevHash = Math.CalculateHash(prevHash)
		end
		hash = Math.CalculateHash(itemString, prevHash)
	end
	private.matsVisited.hash = hash
	private.matsVisited[itemString] = true
	if private.matCostCache.lastUpdate ~= GetTime() then
		wipe(private.matCostCache)
		private.matCostCache.lastUpdate = GetTime()
	end
	if not private.matCostCache[hash] then
		local priceStr = TSM.db.factionrealm.internalData.mats[itemString].customValue or TSM.db.global.craftingOptions.defaultMatCostMethod
		private.matCostCache[hash] = CustomPrice.GetValue(priceStr, itemString)
	end
	private.matsVisited[itemString] = nil
	private.matsVisited.hash = prevHash
	return private.matCostCache[hash]
end

function Cost.GetCraftingCostByCraftString(craftString, optionalMats, qualityMats)
	local releaseQualityMats = false
	if not qualityMats then
		qualityMats = TempTable.Acquire()
		releaseQualityMats = true
	end
	local cost = private.GetCraftingCostHelper(craftString, nil, optionalMats, qualityMats)
	if releaseQualityMats then
		TempTable.Release(qualityMats)
	end
	return cost
end

function Cost.GetCraftingCostByRecipeString(recipeString)
	local craftString = CraftString.FromRecipeString(recipeString)
	local cost = private.GetCraftingCostHelper(craftString, recipeString)
	return cost
end

function Cost.GetCraftedItemValue(itemString)
	local hasCraftPriceMethod, craftPrice = TSM.Operations.Crafting.GetCraftedItemValue(itemString)
	if hasCraftPriceMethod then
		return craftPrice
	end
	return CustomPrice.GetValue(TSM.db.global.craftingOptions.defaultCraftPriceMethod, itemString)
end

function Cost.GetProfitByCraftString(craftString)
	local _, _, profit = Cost.GetCostsByCraftString(craftString)
	return profit
end

function Cost.GetProfitByRecipeString(recipeString)
	local _, _, profit = Cost.GetCostsByRecipeString(recipeString)
	return profit
end

function Cost.GetCostsByCraftString(craftString)
	local craftingCost = Cost.GetCraftingCostByCraftString(craftString)
	local itemString = TSM.Crafting.GetItemString(craftString)
	local craftedItemValue = itemString and Cost.GetCraftedItemValue(itemString) or nil
	return craftingCost, craftedItemValue, craftingCost and craftedItemValue and (craftedItemValue - craftingCost) or nil
end

function Cost.GetCostsByRecipeString(recipeString)
	local craftingCost = Cost.GetCraftingCostByRecipeString(recipeString)
	local itemString = Cost.GetLevelItemString(recipeString)
	local craftedItemValue = itemString and Cost.GetCraftedItemValue(itemString) or nil
	return craftingCost, craftedItemValue, craftingCost and craftedItemValue and (craftedItemValue - craftingCost) or nil
end

function Cost.GetLevelItemString(recipeString)
	local craftString = CraftString.FromRecipeString(recipeString)
	local itemString = TSM.Crafting.GetItemString(craftString)
	if not itemString then
		return nil
	end
	local absItemLevel = nil
	local level = RecipeString.GetLevel(recipeString) or 0
	for _, _, itemId in RecipeString.OptionalMatIterator(recipeString) do
		local matItemString = ItemString.Get(itemId)
		absItemLevel = absItemLevel or ProfessionInfo.GetItemLevelByOptionalMat(matItemString)
		level = level + (ProfessionInfo.GetCraftLevelIncreaseByOptionalMat(matItemString) or 0)
	end
	if absItemLevel then
		assert(level == 0)
		local baseItemString = ItemString.GetBase(itemString)
		return baseItemString.."::i"..absItemLevel
	elseif level > 0 then
		local relLevel = ProfessionInfo.GetRelativeItemLevelByRank(level)
		local baseItemString = ItemString.GetBase(itemString)
		return baseItemString..(relLevel < 0 and "::-" or "::+")..abs(relLevel)
	else
		return itemString
	end
end

function Cost.GetSaleRateByCraftString(craftString)
	local itemString = TSM.Crafting.GetItemString(craftString)
	return itemString and CustomPrice.GetItemPrice(itemString, "DBRegionSaleRate") or nil
end

function Cost.GetLowestCostByItem(itemString, optionalMats, qualityMats)
	local levelItemString = ItemString.ToLevel(itemString)
	local shouldReleaseOptionalMats = false
	if not optionalMats then
		shouldReleaseOptionalMats = true
		optionalMats = TempTable.Acquire()
	end
	private.GetOptionalMats(itemString, optionalMats)
	local lowestCost, lowestCraftString = nil, nil
	local cdCost, cdSpellId = nil, nil
	local numSpells = 0
	local singleCraftString = nil
	local relItemLevel = nil
	local tempQualityMats = TempTable.Acquire()
	for _, craftString, hasCD, profession in TSM.Crafting.GetCraftStringByItem(levelItemString) do
		if not private.currentMatProfession or not ProfessionInfo.IsOptionalMat(levelItemString) or private.currentMatProfession == profession then
			local level = CraftString.GetLevel(craftString)
			if level then
				for _, optionalMatItemString in ipairs(optionalMats) do
					level = level + (ProfessionInfo.GetCraftLevelIncreaseByOptionalMat(optionalMatItemString) or 0)
				end
			end
			if level and not relItemLevel then
				local isAbs = nil
				relItemLevel, isAbs = ItemString.ParseLevel(ItemString.ToLevel(itemString))
				if isAbs then
					relItemLevel = nil
				end
			end
			if not level or ProfessionInfo.GetRelativeItemLevelByRank(level) == relItemLevel then
				if not hasCD then
					if singleCraftString == nil then
						singleCraftString = craftString
					elseif singleCraftString then
						singleCraftString = 0
					end
				end
				numSpells = numSpells + 1
				wipe(tempQualityMats)
				local cost = Cost.GetCraftingCostByCraftString(craftString, optionalMats, tempQualityMats)
				if cost and (not lowestCost or cost < lowestCost) then
					-- exclude spells with cooldown if option to ignore is enabled and there is more than one way to craft
					if hasCD then
						cdCost = cost
						cdSpellId = craftString
					else
						if qualityMats then
							wipe(qualityMats)
							for k, v in pairs(tempQualityMats) do
								qualityMats[k] = v
							end
						end
						lowestCost = cost
						lowestCraftString = craftString
					end
				end
			end
		end
	end
	TempTable.Release(tempQualityMats)
	if shouldReleaseOptionalMats then
		TempTable.Release(optionalMats)
	end
	if singleCraftString == 0 then
		singleCraftString = nil
	end
	if numSpells == 1 and not lowestCost and cdCost then
		-- only way to craft it is with a CD craft, so use that
		if qualityMats then
			-- TODO: This path isn't currently supported
			wipe(qualityMats)
		end
		lowestCost = cdCost
		lowestCraftString = cdSpellId
	end
	return lowestCost, lowestCraftString or singleCraftString
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetOptionalMats(itemString, resultTbl)
	ItemString.GetStatModifiers(itemString, true, resultTbl)
	for i = #resultTbl, 1, -1 do
		local statOptionalMat = ProfessionInfo.GetOptionalMatByStatModifier(resultTbl[i])
		if statOptionalMat then
			resultTbl[i] = statOptionalMat
		else
			tremove(resultTbl, i)
		end
	end
	local itemLevel = ItemString.GetItemLevel(itemString)
	local levelOptionalMat = itemLevel and ProfessionInfo.GetOptionalMatByItemLevel(itemLevel) or nil
	if levelOptionalMat then
		tinsert(resultTbl, levelOptionalMat)
	end
	local relItemLevel, isAbs = ItemString.ParseLevel(ItemString.ToLevel(itemString))
	if not isAbs then
		local levelItemString = ItemString.ToLevel(itemString)
		for _, craftString in TSM.Crafting.GetCraftStringByItem(levelItemString) do
			local level = CraftString.GetLevel(craftString)
			local optionalMatItemString = level and ProfessionInfo.GetOptionalMatByRelItemLevel(relItemLevel)
			if relItemLevel and optionalMatItemString then
				tinsert(resultTbl, optionalMatItemString)
				relItemLevel = nil
			end
		end
	end
end

function private.GetCraftingCostHelper(craftString, recipeString, optionalMats, qualityMats)
	local cost = 0
	local hasMats = false
	local mats = nil
	if private.matsTempInUse then
		mats = TempTable.Acquire()
	else
		mats = private.matsTemp
		private.matsTempInUse = true
		wipe(mats)
	end
	TSM.Crafting.GetMatsAsTable(craftString, mats)
	if recipeString then
		assert(not optionalMats)
		for _, _, itemId in RecipeString.OptionalMatIterator(recipeString) do
			local optionalMatItemString = ItemString.Get(itemId)
			local optionalMatItemId = ItemString.ToId(optionalMatItemString)
			local matchStr1 = "[:,]"..optionalMatItemId.."$"
			local matchStr2 = "[:,]"..optionalMatItemId..","
			for itemString, quantity in pairs(mats) do
				if (strmatch(itemString, matchStr1) or strmatch(itemString, matchStr2)) then
					mats[optionalMatItemString] = ((mats[optionalMatItemString] or 0) + 1) * quantity
					break
				end
			end
		end
	elseif TSM.Crafting.IsQualityCraft(craftString) then
		if not TSM.Crafting.DFCrafting.GetOptionalMats(craftString, mats, qualityMats) then
			if mats == private.matsTemp then
				private.matsTempInUse = false
			else
				TempTable.Release(mats)
			end
			return nil
		end
		for _, itemString in ipairs(qualityMats) do
			mats[itemString] = mats[qualityMats[itemString]]
		end
	elseif optionalMats then
		for _, optionalMatItemString in pairs(optionalMats) do
			local optionalMatItemId = ItemString.ToId(optionalMatItemString)
			local matchStr1 = "[:,]"..optionalMatItemId.."$"
			local matchStr2 = "[:,]"..optionalMatItemId..","
			for itemString, quantity in pairs(mats) do
				if (strmatch(itemString, matchStr1) or strmatch(itemString, matchStr2)) then
					mats[optionalMatItemString] = ((mats[optionalMatItemString] or 0) + 1) * quantity
					break
				end
			end
		end
	end
	local didSetProfession = false
	if not private.currentMatProfession then
		private.currentMatProfession = TSM.Crafting.GetProfession(craftString)
		didSetProfession = true
	end
	for itemString, quantity in pairs(mats) do
		if MatString.GetType(itemString) == MatString.TYPE.NORMAL then
			hasMats = true
			local matCost = Cost.GetMatCost(itemString)
			if not matCost then
				cost = nil
			elseif cost then
				cost = cost + matCost * quantity
			end
		end
	end
	if didSetProfession then
		private.currentMatProfession = nil
	end
	if mats == private.matsTemp then
		private.matsTempInUse = false
	else
		TempTable.Release(mats)
	end
	if not cost or not hasMats then
		return
	end
	cost = Math.Round(cost / TSM.Crafting.GetNumResult(craftString))
	return cost > 0 and cost or nil
end
