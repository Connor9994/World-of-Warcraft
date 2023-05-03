-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ProfessionScanner = TSM.Crafting:NewPackage("ProfessionScanner")
local Log = TSM.Include("Util.Log")
local MatString = TSM.Include("Util.MatString")
local Wow = TSM.Include("Util.Wow")
local Profession = TSM.Include("Service.Profession")
local Settings = TSM.Include("Service.Settings")
local private = {
	settings = nil,
	matQuantitiesTemp = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function ProfessionScanner.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("sync", "internalData", "playerProfessions")
		:AddKey("factionrealm", "internalData", "mats")
	Profession.SetScanHookFuncs(private.ScanHook, function(craftStrings) TSM.Crafting.RemovePlayerSpells(Wow.GetCharacterName(), craftStrings) end)
end



-- ============================================================================
-- Profession Scanning
-- ============================================================================

function private.ScanHook(professionName, craftStrings, categorySkillLevelLookup)
	if not private.settings.playerProfessions[professionName] then
		-- we are in combat or the player's professions haven't been scanned yet by PlayerProfessions.lua, so will try again in a bit
		return false, true
	end

	-- update the link for this profession
	private.settings.playerProfessions[professionName].link = Profession.GetLink()

	-- scan all the recipes
	TSM.Crafting.SetSpellDBQueryUpdatesPaused(true)
	local numFailed = 0
	for _, craftString in ipairs(craftStrings) do
		if not private.ScanRecipe(professionName, craftString, categorySkillLevelLookup) then
			numFailed = numFailed + 1
		end
	end
	TSM.Crafting.SetSpellDBQueryUpdatesPaused(false)

	Log.Info("Scanned %s (failed to scan %d)", professionName, numFailed)
	return numFailed == 0, false
end

function private.ScanRecipe(professionName, craftString, categorySkillLevelLookup)
	local itemString = Profession.GetItemStringByCraftString(craftString)
	local craftName = Profession.GetCraftNameByCraftString(craftString)
	assert(itemString ~= "" and craftName ~= "")

	local lNum, hNum = Profession.GetCraftedQuantityRange(craftString)
	local numResult = floor(((lNum or 1) + (hNum or 1)) / 2)

	local numResultItems = Profession.GetNumResultItems(craftString)
	local hasCD = Profession.HasCooldown(craftString)
	local recipeDifficulty, baseRecipeQuality = Profession.GetRecipeQualityInfo(craftString)

	TSM.Crafting.CreateOrUpdate(craftString, itemString, professionName, craftName, numResult, UnitName("player"), hasCD, recipeDifficulty, baseRecipeQuality, numResultItems)

	assert(not next(private.matQuantitiesTemp))
	for _, matString, quantity in Profession.MatIterator(craftString) do
		local matType = MatString.GetType(matString)
		if matType == MatString.TYPE.NORMAL then
			private.settings.mats[matString] = private.settings.mats[matString] or {}
			private.matQuantitiesTemp[matString] = quantity
		else
			for matItemString in MatString.ItemIterator(matString) do
				private.settings.mats[matItemString] = private.settings.mats[matItemString] or {}
			end
			private.matQuantitiesTemp[matString] = quantity
		end
	end
	if next(private.matQuantitiesTemp) then
		TSM.Crafting.SetMats(craftString, private.matQuantitiesTemp)
	end
	wipe(private.matQuantitiesTemp)
	return true
end
