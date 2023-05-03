-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local CraftingSync = TSM.Crafting:NewPackage("Sync")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Delay = TSM.Include("Util.Delay")
local TempTable = TSM.Include("Util.TempTable")
local MatString = TSM.Include("Util.MatString")
local Log = TSM.Include("Util.Log")
local Theme = TSM.Include("Util.Theme")
local Wow = TSM.Include("Util.Wow")
local Math = TSM.Include("Util.Math")
local Sync = TSM.Include("Service.Sync")
local Settings = TSM.Include("Service.Settings")
local private = {
	settings = nil,
	hashesTemp = {},
	craftStrings = {},
	craftInfoTemp = {
		craftStrings = {},
		mats = {},
		itemStrings = {},
		names = {},
		numResults = {},
		hasCDs = {},
		baseRecipeDifficulties = {},
		baseRecipeQualities = {},
		maxRecipeQualities = {},
	},
	accountLookup = {},
	accountStatus = {},
	retryTimer = nil,
}
local STATUS = {
	UPDATING = newproxy(),
	RETRY = newproxy(),
	SYNCED = newproxy(),
}
local RETRY_DELAY = 5
local QUALITY_INFO_SEP = ","



-- ============================================================================
-- Module Functions
-- ============================================================================

function CraftingSync.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("factionrealm", "internalData", "crafts")
		:AddKey("factionrealm", "internalData", "mats")
	private.retryTimer = Delay.CreateTimer("CRAFTING_SYNC_RETRY", private.RetryGetHashesRPC)
	Sync.RegisterConnectionChangedCallback(private.ConnectionChangedHandler)
	Sync.RegisterRPC("CRAFTING_GET_HASHES", private.RPCGetHashes)
	Sync.RegisterRPC("CRAFTING_GET_CRAFTS", private.RPCGetCrafts)
	Sync.RegisterRPC("CRAFTING_GET_CRAFT_INFO", private.RPCGetCraftInfo)
end

function CraftingSync.GetStatus(account)
	local status = private.accountStatus[account]
	if not status then
		return Theme.GetColor("FEEDBACK_RED"):ColorText(L["Not Connected"])
	elseif status == STATUS.UPDATING or status == STATUS.RETRY then
		return Theme.GetColor("FEEDBACK_YELLOW"):ColorText(L["Updating"])
	elseif status == STATUS.SYNCED then
		return Theme.GetColor("FEEDBACK_GREEN"):ColorText(L["Up to date"])
	else
		error("Invalid status: "..tostring(status))
	end
end



-- ============================================================================
-- RPC Functions and Result Handlers
-- ============================================================================

function private.RPCGetHashes()
	wipe(private.hashesTemp)
	local player = Wow.GetCharacterName()
	private.GetPlayerProfessionHashes(player, private.hashesTemp)
	return private.hashesTemp
end

function private.RPCGetHashesResultHandler(success, player, data)
	local account = private.HandleRPCResult("GET_HASHES", success, player)
	if not account then
		return
	end

	local currentInfo = TempTable.Acquire()
	private.GetPlayerProfessionHashes(player, currentInfo)
	local requestProfession = nil
	for profession, hash in pairs(data) do
		if hash == currentInfo[profession] then
			Log.Info("%s data for %s already up to date", profession, player)
		else
			Log.Info("Need updated %s data from %s (%s, %s)", profession, player, hash, tostring(currentInfo[hash]))
			requestProfession = profession
		end
	end
	TempTable.Release(currentInfo)

	if requestProfession then
		private.accountStatus[account] = STATUS.UPDATING
		Sync.CallRPC("CRAFTING_GET_CRAFTS", player, private.RPCGetCraftsResultHandler, requestProfession)
	else
		private.accountStatus[account] = STATUS.SYNCED
	end
end

function private.RPCGetCrafts(profession)
	wipe(private.craftStrings)
	local player = Wow.GetCharacterName()
	local query = TSM.Crafting.CreateRawCraftsQuery()
		:Select("craftString")
		:Equal("profession", profession)
		:ListContains("players", player)
		:OrderBy("craftString", true)
	for _, craftString in query:Iterator() do
		if TSM.Crafting.IsQualityCraft(craftString) then
			local baseRecipeDifficulty, baseRecipeQuality, maxRecipeQuality = TSM.Crafting.GetQualityInfo(craftString, player)
			if baseRecipeQuality then
				private.craftStrings[craftString] = strjoin(QUALITY_INFO_SEP, baseRecipeDifficulty, baseRecipeQuality, maxRecipeQuality)
			else
				private.craftStrings[craftString] = true
			end
		else
			private.craftStrings[craftString] = true
		end
	end
	query:Release()
	return profession, private.craftStrings
end

function private.RPCGetCraftsResultHandler(success, player, profession, craftStrings)
	local account = private.HandleRPCResult("GET_CRAFTS", success, player)
	if not account then
		return
	end

	-- Remove any crafts which the player no longer knows
	local query = TSM.Crafting.CreateRawCraftsQuery()
		:Select("craftString", "profession")
		:Equal("profession", profession)
		:ListContains("players", player)
		:NotInTable("craftString", craftStrings)
	Log.Info("Removing %d crafts (%s, %s)", query:Count(), profession, player)
	local toRemove = TempTable.Acquire()
	query:AsTable(toRemove)
	query:Release()
	if next(toRemove) then
		TSM.Crafting.RemovePlayerSpells(player, toRemove)
	end
	TempTable.Release(toRemove)

	local missingCraftStrings = TempTable.Acquire()
	TSM.Crafting.SetSpellDBQueryUpdatesPaused(true)
	for craftString, qualityInfo in pairs(craftStrings) do
		if TSM.Crafting.HasCraftString(craftString) then
			-- Already have this craft so just make sure this player is added / updated
			if TSM.Crafting.IsQualityCraft(craftString) and qualityInfo ~= true then
				local baseRecipeDifficulty, baseRecipeQuality, maxRecipeQuality = strjoin(QUALITY_INFO_SEP, qualityInfo)
				TSM.Crafting.CreateOrUpdatePlayer(craftString, player, tonumber(baseRecipeDifficulty), tonumber(baseRecipeQuality), tonumber(maxRecipeQuality))
			else
				TSM.Crafting.CreateOrUpdatePlayer(craftString, player)
			end
		else
			tinsert(missingCraftStrings, craftString)
		end
	end
	TSM.Crafting.SetSpellDBQueryUpdatesPaused(false)
	if #missingCraftStrings == 0 then
		Log.Info("Crafts up to date for %s / %s", player, profession)
		-- Restart the process to check if we need to get info for any other professions
		private.RestartForAccount(account)
	else
		Log.Info("Requesting %d crafts from %s for %s", #missingCraftStrings, player, profession)
		Sync.CallRPC("CRAFTING_GET_CRAFT_INFO", player, private.RPCGetCraftInfoResultHandler, profession, missingCraftStrings)
	end
	TempTable.Release(missingCraftStrings)
end

function private.RPCGetCraftInfo(profession, craftStrings)
	for _, tbl in pairs(private.craftInfoTemp) do
		wipe(tbl)
	end
	local player = Wow.GetCharacterName()
	for i, craftString in ipairs(craftStrings) do
		local craftInfo = private.settings.crafts[craftString]
		private.craftInfoTemp.craftStrings[i] = craftString
		private.craftInfoTemp.mats[i] = craftInfo.mats
		private.craftInfoTemp.itemStrings[i] = craftInfo.itemString
		private.craftInfoTemp.names[i] = craftInfo.name
		private.craftInfoTemp.numResults[i] = craftInfo.numResult
		private.craftInfoTemp.hasCDs[i] = craftInfo.hasCD
		if Environment.HasFeature(Environment.FEATURES.CRAFTING_QUALITY) and type(craftInfo.players[player]) == "table" then
			private.craftInfoTemp.baseRecipeDifficulties[i] = craftInfo.players[player].baseRecipeDifficulty
			private.craftInfoTemp.baseRecipeQualities[i] = craftInfo.players[player].baseRecipeQuality
			private.craftInfoTemp.maxRecipeQualities[i] = craftInfo.players[player].maxRecipeQuality
		end
	end
	Log.Info("Sent %d crafts for %s", #private.craftInfoTemp.craftStrings, profession)
	return profession, private.craftInfoTemp
end

function private.RPCGetCraftInfoResultHandler(success, player, profession, info)
	local account = private.HandleRPCResult("GET_CRAFT_INFO", success, player)
	if not account then
		return
	end

	TSM.Crafting.SetSpellDBQueryUpdatesPaused(true)
	for i, craftString in ipairs(info.craftStrings) do
		TSM.Crafting.CreateOrUpdate(craftString, info.itemStrings[i], profession, info.names[i], info.numResults[i], player, info.hasCDs[i] and true or false, info.baseRecipeDifficulties[i], info.baseRecipeQualities[i], info.maxRecipeQualities[i])
		for matString in pairs(info.mats[i]) do
			for matItemString in MatString.ItemIterator(matString) do
				private.settings.mats[matItemString] = private.settings.mats[matItemString] or {}
			end
		end
		TSM.Crafting.SetMats(craftString, info.mats[i])
	end
	TSM.Crafting.SetSpellDBQueryUpdatesPaused(false)
	Log.Info("Added %d crafts from %s for %s", #info.craftStrings, player, profession)
	-- Restart the process to check if we need to get info for any other professions
	private.RestartForAccount(account)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.ConnectionChangedHandler(account, player, connected)
	if connected then
		private.accountLookup[player] = account
		private.accountStatus[account] = STATUS.UPDATING
		-- Issue a request for profession info
		Sync.CallRPC("CRAFTING_GET_HASHES", player, private.RPCGetHashesResultHandler)
	else
		private.accountLookup[player] = nil
		private.accountStatus[account] = nil
	end
end

function private.RetryGetHashesRPC()
	for player, account in pairs(private.accountLookup) do
		if private.accountStatus[account] == STATUS.RETRY then
			private.accountStatus[account] = STATUS.UPDATING
			Sync.CallRPC("CRAFTING_GET_HASHES", player, private.RPCGetHashesResultHandler)
		end
	end
end

function private.GetPlayerProfessionHashes(player, resultTbl)
	local query = TSM.Crafting.CreateRawCraftsQuery()
		:Select("craftString", "profession", "itemString")
		:ListContains("players", player)
		:OrderBy("craftString", true)
	for _, craftString, profession, itemString in query:Iterator() do
		local rowHash = Math.CalculateHash(craftString)
		rowHash = Math.CalculateHash(itemString, rowHash)
		if TSM.Crafting.IsQualityCraft(craftString) then
			local baseRecipeDifficulty, baseRecipeQuality, maxRecipeQuality = TSM.Crafting.GetQualityInfo(craftString, player)
			if baseRecipeQuality then
				rowHash = Math.CalculateHash(floor(baseRecipeDifficulty * 1000 + 0.5), rowHash)
				rowHash = Math.CalculateHash(floor(baseRecipeQuality * 1000 + 0.5), rowHash)
				rowHash = Math.CalculateHash(floor(maxRecipeQuality * 1000 + 0.5), rowHash)
			end
		end
		resultTbl[profession] = Math.CalculateHash(rowHash, resultTbl[profession])
	end
	query:Release()
end

function private.HandleRPCResult(tag, success, player)
	local account = private.accountLookup[player]
	if not account then
		if success then
			Log.Warn("Got RPC (%s) response but player (%s) is no longer connected", tag, player)
		else
			Log.Info("RPC (%s) failed and player (%s) is no longer connected", tag, player)
		end
		return nil
	elseif not success then
		-- Request timed out, so try again from the start
		Log.Warn("RPC (%s) timed out (%s)", tag, player)
		private.RestartForAccount(account)
		return nil
	end
	return account
end

function private.RestartForAccount(account)
	private.accountStatus[account] = STATUS.RETRY
	private.retryTimer:RunForTime(RETRY_DELAY)
end
