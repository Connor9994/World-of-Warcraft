-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Profession = TSM.Init("Service.Profession") ---@class Service.Profession
local Environment = TSM.Include("Environment")
local State = TSM.Include("Service.ProfessionHelpers.State")
local Scanner = TSM.Include("Service.ProfessionHelpers.Scanner")
local ProfessionInfo = TSM.Include("Data.ProfessionInfo")
local ItemString = TSM.Include("Util.ItemString")
local CraftString = TSM.Include("Util.CraftString")
local ItemInfo = TSM.Include("Service.ItemInfo")
local private = {
	classicSpellIdLookup = {},
	categoryInfoTemp = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

---Register a callback for when the profession state changes.
---@param callback fun() The callback function
function Profession.RegisterStateCallback(callback)
	State.RegisterCallback(callback)
end

---Registers scanner hook functions.
---@param scanFunc function
---@param inactiveFunc function
function Profession.SetScanHookFuncs(scanFunc, inactiveFunc)
	Scanner.SetHookFuncs(scanFunc, inactiveFunc)
end

---Returns whether or not the profession is closed.
---@return boolean
function Profession.IsClosed()
	return State.IsClosed()
end

---Returns whether or not the classic crafting UI is open.
---@return boolean
function Profession.IsClassicCrafting()
	return State.IsClassicCrafting()
end

---Sets whether the classic crafting UI is open.
---@param open boolean
---TODO: Better way to handle this
function Profession.SetClassicCraftingOpen(open)
	State.SetClassicCraftingOpen(open)
end

---Gets the current stable and open profession info.
---@return string @The name of the profession
---@return Enum.Profession? @The profession enum value (retail only)
function Profession.GetCurrentProfession()
	return State.GetCurrentProfession()
end

---Gets the current profession skill line.
---@return string @The name of the profession
---@return Enum.Profession? @The profession enum value (retail only)
---TODO: This should be replaced with GetCurrentProfession() and delayed until the profession data is stable
function Profession.GetSkillLine()
	return State.GetSkillLine()
end

---Opens a profession.
---@param profession string|Enum.Profession The name of the profession (classic) or the profession enum value (retail)
function Profession.Open(profession)
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		assert(type(profession) == "number")
		C_TradeSkillUI.OpenTradeSkill(profession)
	else
		assert(type(profession) == "string")
		if profession == ProfessionInfo.GetName("Mining") then
			-- mining needs to be opened as smelting
			profession = ProfessionInfo.GetName("Smelting")
		end
		local mappedName = ProfessionInfo.MapProfessionName(profession)
		if mappedName then
			profession = mappedName
		end
		CastSpellByName(profession)
	end
end

---Close the open profession.
---@param closeBoth boolean Whether to close both the craft and tradeskill on classic
function Profession.CloseTradeSkill(closeBoth)
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		C_TradeSkillUI.CloseTradeSkill()
		C_Garrison.CloseGarrisonTradeskillNPC()
	else
		if closeBoth then
			CloseCraft()
			CloseTradeSkill()
		else
			if Profession.IsClassicCrafting() then
				CloseCraft()
			else
				CloseTradeSkill()
			end
		end
	end
end

---Returns whether or not the open profession is an NPC profession.
---@return boolean
function Profession.IsNPC()
	return State.IsNPC()
end

---Returns whether or not the open profession is linked.
---@return boolean
---@return string? @The character who it's linked from (if available)
function Profession.IsLinked()
	return State.IsLinked()
end

---Returns whether or not the open profession is a guild profession.
---@return boolean
function Profession.IsGuild()
	return State.IsGuild()
end

---Returns a link for the current profession.
---@return string?
function Profession.GetLink()
	return State.GetLink()
end

---Gets whether or not a recipe has a cooldown.
---@param craftString string The craft string for the recipe
---@return boolean
function Profession.HasCooldown(craftString)
	local spellId = CraftString.GetSpellId(craftString)
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		return select(2, C_TradeSkillUI.GetRecipeCooldown(spellId)) and true or false
	else
		spellId = private.classicSpellIdLookup[spellId] or spellId
		return GetTradeSkillCooldown(spellId) and true or false
	end
end

---Gets the remaining cooldown for a recipe.
---@param craftString string The craft string for the recipe
---@return number?
function Profession.GetRemainingCooldown(craftString)
	local spellId = CraftString.GetSpellId(craftString)
	local cooldown = nil
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		local cooldownTime, _, charges, maxCharges = C_TradeSkillUI.GetRecipeCooldown(spellId)
		if maxCharges and charges and maxCharges > 0 and (charges > 0 or not cooldownTime) then
			return nil
		end
		cooldown = cooldownTime
	else
		spellId = private.classicSpellIdLookup[spellId] or spellId
		cooldown = GetTradeSkillCooldown(spellId)
	end
	return cooldown and floor(cooldown) or nil
end

---Gets the range of quantitys which the recipe crafts.
---@param craftString string The craft string for the recipe
---@return number @The lower bound of the crafted quantity
---@return number @The upper bound of the crafted quantity
function Profession.GetCraftedQuantityRange(craftString)
	return Scanner.GetCraftedQuantityRange(craftString)
end

---Gets the result of a recipe.
---@param craftString string The craft string for the recipe
---@return string|string[]?
function Profession.GetResultItem(craftString)
	return Scanner.GetResultItem(craftString)
end

---Gets the vellum item string to use with a recipe.
---@param craftString string The craft string for the recipe
---@return string
function Profession.GetVellumItemString(craftString)
	return Scanner.GetVellumItemString(craftString)
end

---Gets the number of different result items of a recipe.
---@param craftString string The craft string for the recipe
---@return number
function Profession.GetNumResultItems(craftString)
	return Scanner.GetNumResultItems(craftString)
end

---Gets the result info for a recipe.
---@param craftString string The craft string for the recipe
---@return string? itemString
---@return number? texture
---@return string? name
function Profession.GetResultInfo(craftString)
	-- Get the links
	local resultItem = Profession.GetResultItem(craftString)
	if not resultItem then
		return nil, nil, nil
	end
	if type(resultItem) == "table" then
		local itemLink = resultItem[CraftString.GetQuality(craftString) or 1]
		return ItemString.Get(itemLink), ItemInfo.GetTexture(itemLink), ItemInfo.GetName(itemLink)
	elseif strfind(resultItem, "enchant:") then
		-- Result of craft is not an item
		local spellId = CraftString.GetSpellId(craftString)
		local indirectSpellId = nil
		if Environment.IsWrathClassic() then
			indirectSpellId = strmatch(resultItem, "enchant:(%d+)")
			indirectSpellId = indirectSpellId and tonumber(indirectSpellId)
			if not indirectSpellId then
				return nil, nil, nil
			end
		else
			indirectSpellId = spellId
		end
		local itemString = ProfessionInfo.GetIndirectCraftResult(indirectSpellId)
		if type(itemString) == "table" then
			itemString = itemString[CraftString.GetQuality(craftString) or 1]
		end
		if itemString and (Environment.IsRetail() or Environment.IsWrathClassic()) then
			return itemString, ItemInfo.GetTexture(itemString), ItemInfo.GetName(itemString)
		elseif ProfessionInfo.IsEngineeringTinker(spellId) then
			local name, _, icon = GetSpellInfo(spellId)
			return nil, icon, name
		elseif Environment.IsWrathClassic() then
			local name, _, icon = GetSpellInfo(indirectSpellId)
			return nil, icon, name
		else
			local name, _, icon = GetSpellInfo(Profession.IsClassicCrafting() and GetCraftInfo(not Environment.IsRetail() and private.classicSpellIdLookup[spellId] or spellId) or spellId)
			return nil, icon, name
		end
	elseif strfind(resultItem, "item:") then
		-- result of craft is an item
		return ItemString.Get(resultItem), ItemInfo.GetTexture(resultItem), ItemInfo.GetName(resultItem)
	else
		error("Invalid craft: "..craftString)
	end
end

---Returns whether or not a recipe is an enchant.
---@param craftString string The craft string for the recipe
---@return boolean
function Profession.IsEnchant(craftString)
	return Scanner.IsEnchant(craftString)
end

---Returns whether or not a recipe is a tinker.
---@param craftString string The craft string for the recipe
---@return boolean
function Profession.IsTinker(craftString)
	return ProfessionInfo.IsEngineeringTinker(CraftString.GetSpellId(craftString))
end

---Gets the needed tools string for a recipe.
---@param craftString string The craft string for the recipe
---@return string
function Profession.NeededTools(craftString)
	local spellId = CraftString.GetSpellId(craftString)
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		for _, requirement in ipairs(C_TradeSkillUI.GetRecipeRequirements(spellId)) do
			if requirement.type == Enum.RecipeRequirementType.Totem and not requirement.met then
				return requirement.name
			end
		end
		return nil
	else
		local toolsStr, hasTools = nil, nil
		spellId = private.classicSpellIdLookup[spellId] or spellId
		if Profession.IsClassicCrafting() then
			toolsStr, hasTools = GetCraftSpellFocus(spellId)
		else
			toolsStr, hasTools = GetTradeSkillTools(spellId)
		end
		return not hasTools and toolsStr or nil
	end
end

---Gets the link for a recipe.
---@param craftString string The craft string for the recipe
---@return string
function Profession.GetRecipeLink(craftString)
	local spellId = CraftString.GetSpellId(craftString)
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		return C_TradeSkillUI.GetRecipeLink(spellId)
	else
		spellId = private.classicSpellIdLookup[spellId] or spellId
		if Profession.IsClassicCrafting() then
			return GetCraftRecipeLink(spellId)
		else
			return GetTradeSkillRecipeLink(spellId)
		end
	end
end

---Get information on a profession category.
---@param categoryId number The category ID
---@return string? @The name
---@return number @The number of indents
---@return number? @The parent category ID (on retail)
---@return number? @The current skill level for the category (on retail)
---@return number? @The max skill level for the category (on retail)
function Profession.CategoryInfo(categoryId)
	if not Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		local name = Profession.IsClassicCrafting() and GetCraftDisplaySkillLine() or (categoryId and GetTradeSkillInfo(categoryId) or nil)
		return name, 0, nil, nil, nil
	end
	C_TradeSkillUI.GetCategoryInfo(categoryId, private.categoryInfoTemp)
	local name = private.categoryInfoTemp.name
	local parentCategoryId = private.categoryInfoTemp.numIndents ~= 0 and private.categoryInfoTemp.parentCategoryID or nil
	local currentSkillLevel = private.categoryInfoTemp.skillLineCurrentLevel
	local maxSkillLevel = private.categoryInfoTemp.skillLineMaxLevel
	local numIndents = 0
	if parentCategoryId then
		C_TradeSkillUI.GetCategoryInfo(parentCategoryId, private.categoryInfoTemp)
		if private.categoryInfoTemp.type == "subheader" then
			numIndents = parentCategoryId == private.categoryInfoTemp.parentCategoryID and 0 or 1
		end
	else
		numIndents = 0
	end
	wipe(private.categoryInfoTemp)
	return name, numIndents, parentCategoryId, currentSkillLevel, maxSkillLevel
end

---Gets the number of mats for a recipe.
---@param craftString string The craft string for the recipe
---@return number
function Profession.GetNumMats(craftString)
	return Scanner.GetNumMats(craftString)
end

---Gets information on a material.
---@param craftString string The craft string for the recipe
---@param index number The index of the material
---@return string? itemString
---@return number? quantity
---@return string? name
---@return boolean? isQualityMat
function Profession.GetMatInfo(craftString, index)
	return Scanner.GetMatInfo(craftString, index)
end

---Gets quality info for a DF recipe.
---@param craftString string The craft string for the recipe
---@return number? baseDifficulty
---@return number? quality
function Profession.GetRecipeQualityInfo(craftString)
	return Scanner.GetRecipeQualityInfo(craftString)
end

---Sets whether or not the scanner is disabled.
---@param disabled boolean
function Profession.SetScannerDisabled(disabled)
	Scanner.SetDisabled(disabled)
end

---Gets whether or not the profession has been scanned.
---@return boolean
function Profession.HasScanned()
	return Scanner.HasScanned()
end

---Gets whether or not there are skills.
---@return boolean
function Profession.ScannerHasSkills()
	return Scanner.HasSkills()
end

---Registers a callback when the profession is scanned.
---@param callback function
function Profession.RegisterHasScannedCallback(callback)
	Scanner.RegisterHasScannedCallback(callback)
end

---Ignores the next profession update for scanning purposes.
function Profession.IgnoreNextProfessionUpdates()
	Scanner.IgnoreNextProfessionUpdates()
end

---Creates a query for crafts.
---@return DatabaseQuery
function Profession.CreateScannerQuery()
	return Scanner.CreateQuery()
end

---Gets the item string for a craft string.
---@param craftString string
---@return string
function Profession.GetItemStringByCraftString(craftString)
	return Scanner.GetItemStringByCraftString(craftString)
end

---Gets the index for a craft string.
---@param craftString string
---@return number
function Profession.GetIndexByCraftString(craftString)
	return Scanner.GetIndexByCraftString(craftString)
end

---Gets the category ID for a craft string.
---@param craftString string
---@return number
function Profession.GetCategoryIdByCraftString(craftString)
	return Scanner.GetCategoryIdByCraftString(craftString)
end

---Gets the name for a craft string.
---@param craftString string
---@return string
function Profession.GetNameByCraftString(craftString)
	return Scanner.GetNameByCraftString(craftString)
end

---Gets the craft name for a craft string.
---@param craftString string
---@return string
function Profession.GetCraftNameByCraftString(craftString)
	return Scanner.GetCraftNameByCraftString(craftString)
end

---Gets the current experience for a craft string.
---@param craftString string
---@return number
function Profession.GetCurrentExpByCraftString(craftString)
	return Scanner.GetCurrentExpByCraftString(craftString)
end

---Gets the next experience for a craft string.
---@param craftString string
---@return number
function Profession.GetNextExpByCraftString(craftString)
	return Scanner.GetNextExpByCraftString(craftString)
end

---Gets the difficulty for a craft string.
---@param craftString string
---@return number
function Profession.GetDifficultyByCraftString(craftString)
	return Scanner.GetDifficultyByCraftString(craftString)
end

---Checks whether or not a craft string exists.
---@param craftString string
---@return bool
function Profession.HasCraftString(craftString)
	return Scanner.HasCraftString(craftString)
end

---Returns an iterator for materials of a craft string.
---@param craftString string
---@return fun(): number, string, number, string @Iterator with fields: `index`, `matString`, `quantity`, `slotText`
function Profession.MatIterator(craftString)
	return Scanner.MatIterator(craftString)
end

---Gets the mat string for a specified slot id.
---@param craftString string
---@param slotId number
---@return string The mat string
function Profession.GetOptionalMatString(craftString, slotId)
	return Scanner.GetOptionalMatString(craftString, slotId)
end

---Returns whether or not there are any optional mats for a craft string.
---@param craftString string The craft string
---@return boolean
function Profession.HasOptionalMats(craftString)
	return Scanner.HasOptionalMats(craftString)
end

---Gets the quantity for a mat by item id within the current profession.
---@param CraftString string
---@param matItemId number
---@return number
function Profession.GetMatQuantity(craftString, matItemId)
	return Scanner.GetMatQuantity(craftString, matItemId)
end

---Gets the slot text for a mat within the current profession.
---@param craftString string
---@param matString string
---@param string
function Profession.GetMatSlotText(craftString, matString)
	return Scanner.GetMatSlotText(craftString, matString)
end
