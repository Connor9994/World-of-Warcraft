-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Quality = TSM.Init("Service.ProfessionHelpers.Quality") ---@class Service.ProfessionHelpers.Quality
local MatString = TSM.Include("Util.MatString")
local ProfessionInfo = TSM.Include("Data.ProfessionInfo")
local private = {
	matQualityIterContext = {
		inUse = false,
		isFirst = false,
		result = {},
		qualityMatStrings = {},
	},
}
local NUM_QUALITY_MAT_QUALITIES = 3
local MAX_QUALITY_MAT_DIFFICULTY_RATIO = 0.25



-- ============================================================================
-- Module Functions
-- ============================================================================

function Quality.GetNeededSkill(targetQuality, recipeDifficulty, recipeQuality, recipeMaxQuality)
	if recipeMaxQuality == 1 then
		-- This recipe has quality mats, but doesn't produce a quality item
		return 0, math.huge, 0
	end
	-- Calculate how much skill we need to add in order to craft the target item
	local difficultyPerQuality = recipeDifficulty / (recipeMaxQuality - 1)
	local neededSkill, maxAddedSkill = 0, 0
	local minQuality = floor(recipeQuality)
	if targetQuality < minQuality then
		-- We can't craft this low of a quality anymore
		return nil, nil
	elseif targetQuality == recipeMaxQuality then
		neededSkill = difficultyPerQuality * (targetQuality - recipeQuality)
		maxAddedSkill = math.huge
	else
		neededSkill = max(difficultyPerQuality * (targetQuality - recipeQuality), 0)
		maxAddedSkill = difficultyPerQuality * (targetQuality + 1 - recipeQuality)
	end
	assert(neededSkill >= 0 and maxAddedSkill > 0)
	local maxQualityMatSkill = recipeDifficulty * MAX_QUALITY_MAT_DIFFICULTY_RATIO
	if neededSkill > maxQualityMatSkill then
		-- We can't get this much skill with just quality reagents
		-- TODO: We potentically could with finishing / optional(?) mats
		return nil, nil
	end
	return neededSkill, maxAddedSkill, maxQualityMatSkill
end

function Quality.MatCombationIterator(mats)
	local context = private.matQualityIterContext
	assert(not context.inUse)
	context.inUse = true
	context.isFirst = true
	for matString in pairs(mats) do
		if strmatch(matString, "^q:") then
			tinsert(context.qualityMatStrings, matString)
			context.qualityMatStrings[matString] = 1
		end
	end
	return private.MatCombationIteratorHelper, context
end

function Quality.MatQualityItemIterator(qualities)
	return private.MatQualityItemIterator, qualities, nil
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.MatCombationIteratorHelper(context)
	if context.isFirst then
		context.isFirst = false
	else
		-- Increment the current value
		local carry = true
		for i = #context.qualityMatStrings, 1, -1 do
			local matString = context.qualityMatStrings[i]
			context.qualityMatStrings[matString] = context.qualityMatStrings[matString] + 1
			if context.qualityMatStrings[matString] > NUM_QUALITY_MAT_QUALITIES then
				context.qualityMatStrings[matString] = 1
			else
				carry = false
				break
			end
		end
		if carry then
			-- No more values
			wipe(context.result)
			wipe(context.qualityMatStrings)
			context.inUse = false
			return
		end
	end
	for matString, quality in pairs(context.qualityMatStrings) do
		if type(matString) == "string" then
			context.result[matString] = quality
		end
	end
	return context.result
end

function private.MatQualityItemIterator(tbl, matString)
	matString = next(tbl, matString)
	if not matString then
		return
	end
	local quality = tbl[matString]
	local matItemString = MatString.GetQualityItem(matString, quality)
	local matWeight = nil
	if quality == 1 then
		matWeight = 0
	else
		matWeight = ProfessionInfo.GetQualityMatWeight(matItemString) * (quality - 1) / (NUM_QUALITY_MAT_QUALITIES - 1)
	end
	return matString, quality, matWeight
end
