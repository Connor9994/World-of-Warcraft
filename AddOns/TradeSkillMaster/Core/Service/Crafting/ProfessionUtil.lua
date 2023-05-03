-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ProfessionUtil = TSM.Crafting:NewPackage("ProfessionUtil")
local Environment = TSM.Include("Environment")
local CraftString = TSM.Include("Util.CraftString")
local Event = TSM.Include("Util.Event")
local Log = TSM.Include("Util.Log")
local Delay = TSM.Include("Util.Delay")
local ItemString = TSM.Include("Util.ItemString")
local RecipeString = TSM.Include("Util.RecipeString")
local TempTable = TSM.Include("Util.TempTable")
local ItemInfo = TSM.Include("Service.ItemInfo")
local BagTracking = TSM.Include("Service.BagTracking")
local CustomPrice = TSM.Include("Service.CustomPrice")
local Profession = TSM.Include("Service.Profession")
local private = {
	craftQuantity = nil,
	craftString = nil,
	craftSpellId = nil,
	craftBaseString = nil,
	craftCallback = nil,
	craftName = nil,
	castingTimeout = nil,
	craftTimeout = nil,
	preparedSpellId = nil,
	preparedTime = 0,
	timeoutTimer = nil,
	itemLocation = ItemLocation:CreateEmpty(),
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function ProfessionUtil.OnInitialize()
	private.timeoutTimer = Delay.CreateTimer("PROFESSION_UTIL_TIMEOUT", private.CraftTimeoutMonitor)
	Event.Register("UNIT_SPELLCAST_SUCCEEDED", function(_, unit, _, spellId)
		if unit ~= "player" or not private.SpellMatchesCraft(spellId) then
			return
		end

		if Environment.IsRetail() then
			-- check if we need to update bank quantity manually
			for _, itemString, quantity in TSM.Crafting.MatIterator(private.craftString) do
				local bagQuantity, bankQuantity, reagentBankQuantity = BagTracking.GetQuantities(itemString)
				local bankUsed = quantity - bagQuantity
				if bankUsed > 0 and bankUsed <= (bankQuantity + reagentBankQuantity) then
					Log.Info("Used %d from bank", bankUsed)
					BagTracking.ForceBankQuantityDeduction(itemString, bankUsed)
				end
			end
		end

		local callback = private.craftCallback
		assert(callback)
		private.craftQuantity = private.craftQuantity - 1
		private.DoCraftCallback(true, private.craftQuantity == 0)
		-- ignore profession updates from crafting something
		Profession.IgnoreNextProfessionUpdates()
		-- restart the timeout
	end)
	local function SpellCastFailedEventHandler(_, unit, _, spellId)
		if unit ~= "player" or not private.SpellMatchesCraft(spellId) then
			return
		end
		private.DoCraftCallback(false, true)
	end
	local function ClearCraftCast()
		private.craftQuantity = nil
		private.craftString = nil
		private.craftSpellId = nil
		private.craftBaseString = nil
		private.craftName = nil
		private.castingTimeout = nil
		private.craftTimeout = nil
	end
	Event.Register("UNIT_SPELLCAST_INTERRUPTED", SpellCastFailedEventHandler)
	Event.Register("UNIT_SPELLCAST_FAILED", SpellCastFailedEventHandler)
	Event.Register("UNIT_SPELLCAST_FAILED_QUIET", SpellCastFailedEventHandler)
	Event.Register("TRADE_SKILL_CLOSE", ClearCraftCast)
	if not Environment.IsRetail() then
		Event.Register("CRAFT_CLOSE", ClearCraftCast)
	end
end

function ProfessionUtil.GetNumCraftable(craftString)
	local num, numAll = math.huge, math.huge
	for i = 1, Profession.GetNumMats(craftString) do
		local itemString, quantity = Profession.GetMatInfo(craftString, i)
		local totalQuantity = CustomPrice.GetItemPrice(itemString, "NumInventory") or 0
		if not itemString or not quantity or totalQuantity == 0 then
			return 0, 0
		end
		num = min(num, floor(BagTracking.GetCraftingMatQuantity(itemString) / quantity))
		numAll = min(numAll, floor(totalQuantity / quantity))
	end
	if num == math.huge or numAll == math.huge then
		return 0, 0
	end
	return num, numAll
end

function ProfessionUtil.GetNumCraftableRecipeString(recipeString)
	local num, numAll = math.huge, math.huge
	local craftString = CraftString.FromRecipeString(recipeString)
	for i = 1, Profession.GetNumMats(craftString) do
		local itemString, quantity, _, isQuality = Profession.GetMatInfo(craftString, i)
		if not isQuality then
			local totalQuantity = CustomPrice.GetItemPrice(itemString, "NumInventory") or 0
			if not itemString or not quantity or totalQuantity == 0 then
				return 0, 0
			end
			local bagQuantity = BagTracking.GetCraftingMatQuantity(itemString)
			num = min(num, floor(bagQuantity / quantity))
			numAll = min(numAll, floor(totalQuantity / quantity))
		end
	end
	for _, _, itemId in RecipeString.OptionalMatIterator(recipeString) do
		local itemString = ItemString.Get(itemId)
		local totalQuantity = CustomPrice.GetItemPrice(itemString, "NumInventory") or 0
		if totalQuantity == 0 then
			return 0, 0
		end
		local quantity = TSM.Crafting.GetOptionalMatQuantity(craftString, itemId)
		local bagQuantity = BagTracking.GetCraftingMatQuantity(itemString)
		num = min(num, floor(bagQuantity / quantity))
		numAll = min(numAll, floor(totalQuantity / quantity))
	end
	if num == math.huge or numAll == math.huge then
		return 0, 0
	end
	return num, numAll
end

function ProfessionUtil.IsCraftable(craftString)
	for i = 1, Profession.GetNumMats(craftString) do
		local itemString, quantity = Profession.GetMatInfo(craftString, i)
		if not itemString or not quantity then
			return false
		end
		if floor(BagTracking.GetCraftingMatQuantity(itemString) / quantity) == 0 then
			return false
		end
	end
	return true
end

function ProfessionUtil.GetNumCraftableFromDB(craftString, optionalMats)
	local num = math.huge
	for _, itemString, quantity in TSM.Crafting.MatIterator(craftString) do
		num = min(num, floor(BagTracking.GetCraftingMatQuantity(itemString) / quantity))
	end
	if optionalMats then
		for _, itemId in pairs(optionalMats) do
			num = min(num, BagTracking.GetCraftingMatQuantity(ItemString.Get(itemId)))
		end
	end
	if num == math.huge then
		return 0
	end
	return num
end

function ProfessionUtil.GetNumCraftableFromDBRecipeString(recipeString)
	local num = math.huge
	local craftString = CraftString.FromRecipeString(recipeString)
	for _, itemString, quantity in TSM.Crafting.MatIterator(craftString) do
		num = min(num, floor(BagTracking.GetCraftingMatQuantity(itemString) / quantity))
	end
	for _, _, itemId in RecipeString.OptionalMatIterator(recipeString) do
		num = min(num, floor(BagTracking.GetCraftingMatQuantity(ItemString.Get(itemId)) / TSM.Crafting.GetOptionalMatQuantity(craftString, itemId)))
	end
	if num == math.huge then
		return 0
	end
	return num
end

function ProfessionUtil.PrepareToCraft(craftString, recipeString, quantity, level)
	local spellId = CraftString.GetSpellId(craftString)
	if recipeString then
		quantity = min(quantity, ProfessionUtil.GetNumCraftableRecipeString(recipeString))
	else
		quantity = min(quantity, ProfessionUtil.GetNumCraftable(craftString))
	end
	if quantity == 0 then
		return
	end
	if Profession.IsEnchant(craftString) or (recipeString and RecipeString.HasOptionalMats(recipeString)) then
		quantity = 1
	end
	private.preparedSpellId = spellId
	private.preparedTime = GetTime()
end

function ProfessionUtil.Craft(craftString, recipeId, quantity, useVellum, callback)
	local spellId = nil
	local level = nil
	local hasOptionalMats = false
	if type(recipeId) == "string" then
		spellId = RecipeString.GetSpellId(recipeId)
		level = RecipeString.GetLevel(recipeId)
		hasOptionalMats = RecipeString.HasOptionalMats(recipeId)
		quantity = min(quantity, ProfessionUtil.GetNumCraftableRecipeString(recipeId))
	else
		spellId = recipeId
		quantity = min(quantity, ProfessionUtil.GetNumCraftable(craftString))
	end
	assert(Profession.HasCraftString(craftString))
	if private.craftSpellId then
		private.craftCallback = callback
		private.DoCraftCallback(false, true)
		return 0
	end
	if quantity == 0 then
		return 0
	end
	local isEnchant = Profession.IsEnchant(craftString)
	local vellumable = isEnchant and not Environment.IsVanillaClassic()
	if isEnchant or hasOptionalMats then
		quantity = 1
	elseif spellId ~= private.preparedSpellId or private.preparedTime == GetTime() then
		-- We can only craft one of this item due to a bug on Blizzard's end
		quantity = 1
	end
	local enchantItemLocation = nil
	if Environment.IsRetail() and useVellum and isEnchant and vellumable then
		local bag, slot = BagTracking.CreateQueryBagsItem(Profession.GetVellumItemString(craftString))
			:Select("bag", "slot")
			:GetFirstResultAndRelease()
		if not bag then
			return 0
		end
		private.itemLocation:Clear()
		private.itemLocation:SetBagAndSlot(bag, slot)
		enchantItemLocation = private.itemLocation
	end
	private.craftQuantity = quantity
	private.craftString = craftString
	private.craftSpellId = spellId
	private.craftBaseString = ItemString.GetBase(TSM.Crafting.GetItemString(craftString))
	private.craftCallback = callback
	if Environment.HasFeature(Environment.FEATURES.C_TRADE_SKILL_UI) then
		local optionalMats = TempTable.Acquire()
		if type(recipeId) == "string" then
			for _, slotId, itemId in RecipeString.OptionalMatIterator(recipeId) do
				local info = TempTable.Acquire()
				info.itemID = itemId
				info.dataSlotIndex = slotId
				info.quantity = TSM.Crafting.GetOptionalMatQuantity(craftString, itemId)
				tinsert(optionalMats, info)
			end
		end
		if enchantItemLocation then
			C_TradeSkillUI.CraftEnchant(spellId, quantity, optionalMats, enchantItemLocation)
		else
			C_TradeSkillUI.CraftRecipe(spellId, quantity, optionalMats, level)
		end
		for _, info in pairs(optionalMats) do
			TempTable.Release(info)
		end
		TempTable.Release(optionalMats)
	else
		local index = Profession.GetIndexByCraftString(craftString)
		if Profession.IsClassicCrafting() then
			private.craftName = GetCraftInfo(index)
		else
			private.craftName = GetTradeSkillInfo(index)
			DoTradeSkill(index, quantity)
		end
	end
	if not Environment.IsRetail() and useVellum and isEnchant and vellumable then
		UseItemByName(ItemInfo.GetName(Profession.GetVellumItemString(craftString)))
	end
	private.castingTimeout = nil
	private.craftTimeout = nil
	private.timeoutTimer:RunForTime(0.5)
	return quantity
end

function ProfessionUtil.GetCraftResultTooltipFromRecipeString(recipeString)
	local craftString = CraftString.FromRecipeString(recipeString)
	local tooltip = nil
	local itemString = TSM.Crafting.GetItemString(craftString)
	local texture = nil
	if not itemString or itemString == "" then
		if Profession.IsClassicCrafting() then
			tooltip = "craft:"..(Profession.GetIndexByCraftString(craftString) or craftString)
		else
			local spellId = RecipeString.GetSpellId(recipeString)
			tooltip = "enchant:"..spellId
		end
	else
		texture = ItemInfo.GetTexture(itemString)
		local level = RecipeString.GetLevel(recipeString)
		local rank = RecipeString.GetRank(recipeString)
		if level or rank or RecipeString.HasOptionalMats(recipeString) then
			local levelItemString = level and TSM.Crafting.Cost.GetLevelItemString(recipeString)
			tooltip = levelItemString or recipeString
		else
			tooltip = itemString
		end
	end
	return tooltip, texture
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.DoCraftCallback(result, isDone)
	local callback = private.craftCallback
	assert(callback)
	-- reset timeouts
	private.castingTimeout = nil
	private.craftTimeout = nil
	if isDone then
		private.craftQuantity = nil
		private.craftString = nil
		private.craftSpellId = nil
		private.craftBaseString = nil
		private.craftCallback = nil
		private.craftName = nil
		private.timeoutTimer:Cancel()
	end
	callback(result, isDone)
end

function private.CraftTimeoutMonitor()
	private.timeoutTimer:RunForTime(0.5)
	if not private.craftSpellId then
		Log.Info("No longer crafting")
		private.castingTimeout = nil
		private.craftTimeout = nil
		private.timeoutTimer:Cancel()
		return
	end
	local _, _, _, _, castEndTimeMs, _, _, _, spellId = private.GetPlayerCastingInfo()
	if spellId then
		private.castingTimeout = nil
	else
		private.craftTimeout = nil
	end
	if not spellId then
		-- no active cast
		if GetTime() > (private.castingTimeout or math.huge) then
			Log.Err("Craft timed out (%s)", private.craftSpellId)
			private.DoCraftCallback(false, true)
			return
		end
		-- set the casting timeout to 1 second from now
		private.castingTimeout = GetTime() + 1
		return
	elseif private.craftSpellId ~= spellId then
		Log.Err("Crafting something else (%s, %s)", private.craftSpellId, spellId)
		private.castingTimeout = nil
		private.craftTimeout = nil
		private.timeoutTimer:Cancel()
		return
	end

	if GetTime() > (private.craftTimeout or math.huge) then
		Log.Err("Craft timed out (%s)", private.craftSpellId)
		private.DoCraftCallback(false, true)
		return
	end
	-- set the timeout to 1 second after the end time
	private.craftTimeout = castEndTimeMs / 1000 + 1
end

function private.GetPlayerCastingInfo()
	if Environment.IsRetail() then
		return UnitCastingInfo("player")
	else
		return CastingInfo()
	end
end

function private.SpellMatchesCraft(spellId)
	if Environment.IsRetail() then
		if not Profession.ScannerHasSkills() then
			return false
		end
		local resultItem = Profession.GetResultItem(CraftString.Get(spellId))
		if not resultItem then
			return false
		elseif type(resultItem) == "table" then
			for i = 1, #resultItem do
				local baseItemString = ItemString.GetBase(resultItem[i]) or ""
				if spellId == private.craftSpellId and baseItemString == private.craftBaseString then
					return true
				end
			end
			return false
		else
			local baseItemString = ItemString.GetBase(resultItem) or ""
			return spellId == private.craftSpellId and baseItemString == private.craftBaseString
		end
	else
		return GetSpellInfo(spellId) == private.craftName
	end
end
