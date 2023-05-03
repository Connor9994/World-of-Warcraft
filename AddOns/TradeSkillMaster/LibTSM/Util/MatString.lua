-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local MatString = TSM.Init("Util.MatString") ---@class Util.MatString
local String = TSM.Include("Util.String")
MatString.TYPE = {
	NORMAL = newproxy(),
	OPTIONAL = newproxy(),
	QUALITY = newproxy(),
	FINISHING = newproxy(),
}
local private = {}
local TYPE_TO_PREFIX_LOOKUP = {
	[MatString.TYPE.NORMAL] = "i",
	[MatString.TYPE.OPTIONAL] = "o",
	[MatString.TYPE.QUALITY] = "q",
	[MatString.TYPE.FINISHING] = "f",
}
local PREFIX_TO_TYPE_LOOKUP = {
	["i"] = MatString.TYPE.NORMAL,
	["o"] = MatString.TYPE.OPTIONAL,
	["q"] = MatString.TYPE.QUALITY,
	["f"] = MatString.TYPE.FINISHING,
}
local QUALITY_MAT_STRING_ITEM_ID_PATTERNS = {
	"^q:%d+:(%d+),%d+,%d+$",
	"^q:%d+:%d+,(%d+),%d+$",
	"^q:%d+:%d+,%d+,(%d+)$",
}



-- ============================================================================
-- Module Functions
-- ============================================================================

---Creates a new mat string.
---@param matType table The type of the mat
---@param dataSlotIndex number The data slot index
---@param itemIds number[] The list of itemIds
---@return string
function MatString.Create(matType, dataSlotIndex, itemIds)
	assert(matType ~= MatString.TYPE.NORMAL)
	local prefix = TYPE_TO_PREFIX_LOOKUP[matType]
	assert(prefix)
	return strjoin(":", prefix, dataSlotIndex, table.concat(itemIds, ","))
end

---Gets the type of the mat string.
---@param matString string The mat string
---@return table
function MatString.GetType(matString)
	local matType = PREFIX_TO_TYPE_LOOKUP[strsplit(":", matString)]
	assert(matType)
	return matType
end

---Gets the slotId for a mat string.
---@param matString string The mat string
---@return number
function MatString.GetSlotId(matString)
	local prefix, slotId = strsplit(":", matString)
	slotId = tonumber(slotId)
	assert(slotId and prefix ~= TYPE_TO_PREFIX_LOOKUP[MatString.TYPE.NORMAL])
	return slotId
end

---Gets the mat list from a mat string.
---@param matString string The mat string
---@return string
function MatString.GetMatList(matString)
	local prefix, _, matList = strsplit(":", matString)
	assert(matList and prefix ~= TYPE_TO_PREFIX_LOOKUP[MatString.TYPE.NORMAL])
	return matList
end

---Iterates through the items in the mat string.
---@param matString string The mat string
---@return fun(): string @An iterator with fields: `itemString`
function MatString.ItemIterator(matString)
	local matType = MatString.GetType(matString)
	if matType == MatString.TYPE.NORMAL then
		return private.SingleItemIterator, matString, -1
	else
		local matList = select(3, strsplit(":", matString))
		matList = gsub(matList, "([^,]+)", "i:%1")
		return String.SplitIterator(matList, ",")
	end
end

function MatString.ContainsItem(matString, itemId)
	local matList = select(3, strsplit(":", matString))
	return String.SeparatedContains(matList, ",", tostring(itemId))
end

function MatString.GetQualityItem(matString, quality)
	return "i:"..strmatch(matString, QUALITY_MAT_STRING_ITEM_ID_PATTERNS[quality])
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.SingleItemIterator(itemString, prev)
	if prev == -1 then
		return itemString
	end
end
