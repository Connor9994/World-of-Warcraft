-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local DFCrafting = TSM.Crafting:NewPackage("DFCrafting")
local Quality = TSM.Include("Service.ProfessionHelpers.Quality")
local CraftString = TSM.Include("Util.CraftString")
local MatString = TSM.Include("Util.MatString")
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local ProfessionInfo = TSM.Include("Data.ProfessionInfo")
local private = {
	tempTables = {{}, {}},
	tempTableInUse = {false, false},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function DFCrafting.CanCraftQuality(targetQuality, recipeDifficulty, recipeQuality, recipeMaxQuality)
	return Quality.GetNeededSkill(targetQuality, recipeDifficulty, recipeQuality, recipeMaxQuality) and true or false
end

function DFCrafting.GetOptionalMats(craftString, mats, optionalMats)
	local recipeDifficulty, recipeQuality, recipeMaxQuality = TSM.Crafting.GetQualityInfo(craftString)
	if not recipeDifficulty then
		return false
	end
	local targetQuality = CraftString.GetQuality(craftString)
	local neededSkill, maxAddedSkill, maxQualityMatSkill = Quality.GetNeededSkill(targetQuality, recipeDifficulty, recipeQuality, recipeMaxQuality)
	if not neededSkill then
		return false
	end

	-- Cache the cost of each quality mat and calculate the total weight
	local totalWeight = 0
	local qualityMatCostTemp = private.AcquireTempTable()
	for matString in private.QualityMatIterator(mats) do
		local quantity = mats[matString]
		local isFirst = true
		local hasValidCost = false
		for matItemString in MatString.ItemIterator(matString) do
			qualityMatCostTemp[matItemString] = TSM.Crafting.Cost.GetMatCost(matItemString)
			hasValidCost = hasValidCost or qualityMatCostTemp[matItemString] ~= nil
			if isFirst then
				isFirst = false
				totalWeight = totalWeight + ProfessionInfo.GetQualityMatWeight(matItemString) * quantity
			end
		end
		if not hasValidCost then
			private.ReleaseTempTable(qualityMatCostTemp)
			return false
		end
		assert(not isFirst)
	end

	-- Get all combinations of quality mats
	local lowestQualityMatCost = math.huge
	for qualities in Quality.MatCombationIterator(mats) do
		-- Calculate the weight and cost for this set of qualities
		local currentMatCost = 0
		local weight = 0
		for matString, quality, matWeight in Quality.MatQualityItemIterator(qualities) do
			local matItemString = MatString.GetQualityItem(matString, quality)
			local quantity = mats[matString]
			weight = weight + matWeight * quantity
			local matCost = qualityMatCostTemp[matItemString]
			if not matCost then
				currentMatCost = math.huge
				break
			end
			currentMatCost = currentMatCost + matCost * quantity
		end
		local bonusSkill = (weight / totalWeight) * maxQualityMatSkill
		if bonusSkill >= neededSkill and bonusSkill <= maxAddedSkill and currentMatCost < lowestQualityMatCost then
			lowestQualityMatCost = currentMatCost
			wipe(optionalMats)
			for matString in private.QualityMatIterator(mats) do
				local quality = qualities[matString]
				local matItemString = MatString.GetQualityItem(matString, quality)
				tinsert(optionalMats, matItemString)
				optionalMats[matItemString] = matString
			end
		end
	end
	private.ReleaseTempTable(qualityMatCostTemp)
	if lowestQualityMatCost == math.huge then
		return false
	end
	Table.SortWithValueLookup(optionalMats, optionalMats)
	return true
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.QualityMatIterator(mats)
	return private.QualityMatIteratorHelper, mats, nil
end

function private.QualityMatIteratorHelper(mats, matString)
	while true do
		matString = next(mats, matString)
		if not matString then
			return
		end
		if MatString.GetType(matString) == MatString.TYPE.QUALITY then
			return matString
		end
	end
end

function private.AcquireTempTable()
	for i = 1, #private.tempTables do
		if not private.tempTableInUse[i] then
			local tbl = private.tempTables[i]
			private.tempTableInUse[i] = true
			wipe(tbl)
			return tbl
		end
	end
	return TempTable.Acquire()
end

function private.ReleaseTempTable(tbl)
	for i = 1, #private.tempTables do
		if tbl == private.tempTables[i] then
			private.tempTableInUse[i] = false
			return
		end
	end
	TempTable.Release(tbl)
end
