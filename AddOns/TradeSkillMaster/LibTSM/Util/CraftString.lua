-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local CraftString = TSM.Init("Util.CraftString") ---@class Util.CraftString



-- ============================================================================
-- Module Functions
-- ============================================================================

---Creates a craft string from its components.
---@param spellId number The craft's spell ID
---@param rank? number The rank of the craft
---@param level? number The level of the craft
---@param level? number The quality of the craft
---@return string
function CraftString.Get(spellId, rank, level, quality)
	local suffix = ""
	if rank and rank > 0 then
		assert(not level or level <= 0)
		assert(not quality or quality <= 0)
		suffix = ":r"..rank
	end
	if level and level > 0 then
		assert(not rank or rank <= 0)
		assert(not quality or quality <= 0)
		suffix = ":l"..level
	end
	if quality and quality > 0 then
		assert(not rank or rank <= 0)
		assert(not level or level <= 0)
		suffix = ":q"..quality
	end
	return "c:"..spellId..suffix
end

---Creates a craft string from a recipe string.
---@param recipeString string The recipe string
---@return string
function CraftString.FromRecipeString(recipeString)
	local spellId = strmatch(recipeString, "^r:(%d+)")
	local rank = tonumber(strmatch(recipeString, ":r(%d+)"))
	local level = tonumber(strmatch(recipeString, ":l(%d+)"))
	local quality = tonumber(strmatch(recipeString, ":q(%d+)"))
	return CraftString.Get(spellId, rank, level, quality)
end

---Gets the spell ID from a craft string.
---@param craftString string The craft string
---@return number
function CraftString.GetSpellId(craftString)
	return tonumber(strmatch(craftString, "^c:(%d+)"))
end

---Gets the rank from the craft string.
---@param craftString string The craft string
---@return number?
function CraftString.GetRank(craftString)
	return tonumber(strmatch(craftString, ":r(%d+)"))
end

---Gets the level from the craft string.
---@param craftString string The craft string
---@return number?
function CraftString.GetLevel(craftString)
	return tonumber(strmatch(craftString, ":l(%d+)"))
end

---Gets the quality from the craft string.
---@param craftString string The craft string
---@return number|nil
function CraftString.GetQuality(craftString)
	return tonumber(strmatch(craftString, ":q(%d+)"))
end

---Gets a new craft string with the specified level.
---@param craftString string The craft string
---@param level number The new level
function CraftString.SetLevel(craftString, level)
	local spellId = CraftString.GetSpellId(craftString)
	local rank = CraftString.GetRank(craftString)
	local quality = CraftString.GetQuality(craftString)
	return CraftString.Get(spellId, rank, level, quality)
end
