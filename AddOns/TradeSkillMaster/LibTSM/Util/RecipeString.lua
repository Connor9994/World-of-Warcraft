-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local RecipeString = TSM.Init("Util.RecipeString") ---@class Util.RecipeString
local String = TSM.Include("Util.String")
local Table = TSM.Include("Util.Table")
local private = {
	partsTemp = {},
	partsOrderTemp = {},
	iterTemp = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

---Creates a recipe string from its components.
---@param spellId number The spell ID of the recipe
---@param optionalMats table<number,number> The optional materials (slotId -> itemId table)
---@param rank? number The rank of the recipe
---@param level? number The level of the recipe
---@param quality? number The quality of the recipe
---@return string
function RecipeString.Get(spellId, optionalMats, rank, level, quality)
	local recipeString = "r:"..spellId
	local suffix = ""
	if rank then
		assert(not level and not quality)
		suffix = ":r"..rank
	end
	if level then
		assert(not rank and not quality)
		suffix = ":l"..level
	end
	if quality then
		assert(not rank and not level)
		suffix = ":q"..quality
	end
	if not optionalMats or not next(optionalMats) then
		return recipeString..suffix
	end
	wipe(private.partsTemp)
	wipe(private.partsOrderTemp)
	for slotId, itemId in pairs(optionalMats) do
		local part = slotId..":"..itemId
		private.partsOrderTemp[part] = slotId
		tinsert(private.partsTemp, part)
	end
	Table.SortWithValueLookup(private.partsTemp, private.partsOrderTemp)
	recipeString = recipeString..":"..table.concat(private.partsTemp, ":")..suffix
	return recipeString
end

---Creates a recipe string from a craft string.
---@param craftString string The recipe string
---@param optionalMats table<number,number> The optional materials (slotId -> itemId table)
---@return string
function RecipeString.FromCraftString(craftString, optionalMats)
	local spellId = strmatch(craftString, "^c:(%d+)")
	local rank = strmatch(craftString, ":r(%d)$")
	local level = strmatch(craftString, ":l(%d)$")
	local quality = strmatch(craftString, ":q(%d)$")
	return RecipeString.Get(spellId, optionalMats, rank, level, quality)
end

---Gets the spell ID from the recipe string.
---@param recipeString string The recipe string
---@return number
function RecipeString.GetSpellId(recipeString)
	local spellId = strmatch(recipeString, "^r:(%d+)")
	return tonumber(spellId)
end

---Gets the rank from the recipe string.
---@param recipeString string The recipe string
---@return number|nil
function RecipeString.GetRank(recipeString)
	local rank = strmatch(recipeString, ":r(%d)$")
	return tonumber(rank)
end

---Gets the level from the recipe string.
---@param recipeString string The recipe string
---@return number|nil
function RecipeString.GetLevel(recipeString)
	local level = strmatch(recipeString, ":l(%d)$")
	return tonumber(level)
end

---Gets the quality from the recipe string.
---@param recipeString string The recipe string
---@return number|nil
function RecipeString.GetQuality(recipeString)
	local quality = strmatch(recipeString, ":q(%d)$")
	return tonumber(quality)
end

---Iterates over the optional mats within the recipe string.
---@param recipeString string The recipe string
---@return fun():number, string, number @An iterator with fields: `index`, `slotId`, `itemId`
function RecipeString.OptionalMatIterator(recipeString)
	local optionalMatsStr = private.GetOptionalMatStr(recipeString)
	wipe(private.iterTemp)
	for part in String.SplitIterator(optionalMatsStr, ":") do
		part = tonumber(part)
		assert(part)
		tinsert(private.iterTemp, part)
	end
	assert(#private.iterTemp % 2 == 0)
	return private.OptionalMatIteratorHelper, private.iterTemp, 0
end

---Returns whether or not the recipe string includes optional materials.
---@param recipeString string The recipe string
---@return boolean
function RecipeString.HasOptionalMats(recipeString)
	return private.GetOptionalMatStr(recipeString) ~= ""
end

---Returns the optional mat's itemId for the specified slotId.
---@param recipeString string The recipe string
---@param slotId number The slotId
---@return number?
function RecipeString.GetOptionalMat(recipeString, slotId)
	local optionalMatsStr = private.GetOptionalMatStr(recipeString)
	local prevSlotId = nil
	for part in String.SplitIterator(optionalMatsStr, ":") do
		part = tonumber(part)
		assert(part)
		if prevSlotId then
			if prevSlotId == slotId then
				return part
			end
			prevSlotId = nil
		else
			prevSlotId = part
		end
	end
	return nil
end

---Gets a new recipe string with the specified optional mats.
---@param recipeString string The recipe string
---@param optionalMats table<number,number> The optional materials (slotId -> itemId table)
function RecipeString.SetOptionalMats(recipeString, optionalMats)
	local spellId = RecipeString.GetSpellId(recipeString)
	local level = RecipeString.GetLevel(recipeString)
	local rank = RecipeString.GetRank(recipeString)
	local quality = RecipeString.GetQuality(recipeString)
	return RecipeString.Get(spellId, optionalMats, rank, level, quality)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.OptionalMatIteratorHelper(tbl, index)
	index = index + 1
	if index > #tbl then
		return
	end
	assert(index + 1 <= #tbl)
	return index + 1, tbl[index], tbl[index + 1]
end

function private.GetOptionalMatStr(recipeString)
	recipeString = gsub(recipeString, ":[lrq]%d$", "")
	local optionalMatsStr = strmatch(recipeString, "^r:%d+:?(.*)")
	assert(optionalMatsStr)
	return optionalMatsStr
end
