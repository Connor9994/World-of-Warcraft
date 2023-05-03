-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Mirror = TSM.Init("Service.SyncClasses.Mirror")
local Delay = TSM.Include("Util.Delay")
local TempTable = TSM.Include("Util.TempTable")
local Math = TSM.Include("Util.Math")
local Log = TSM.Include("Util.Log")
local Settings = TSM.Include("Service.Settings")
local Constants = TSM.Include("Service.SyncClasses.Constants")
local Comm = TSM.Include("Service.SyncClasses.Comm")
local Connection = TSM.Include("Service.SyncClasses.Connection")
local private = {
	numConnected = 0,
	accountStatus = {},
	callbacks = {},
	characterHashesTimer = nil,
}
local BROADCAST_INTERVAL = 3



-- ============================================================================
-- Module Loading
-- ============================================================================

Mirror:OnModuleLoad(function()
	private.characterHashesTimer = Delay.CreateTimer("SYNC_MIRROR_CHARACTER_HASHES", private.SendCharacterHashes)
	Connection.RegisterConnectionChangedCallback(private.ConnectionChangedHandler)
	Comm.RegisterHandler(Constants.DATA_TYPES.CHARACTER_HASHES_BROADCAST, private.CharacterHashesBroadcastHandler)
	Comm.RegisterHandler(Constants.DATA_TYPES.CHARACTER_SETTING_HASHES_REQUEST, private.CharacterSettingHashesRequestHandler)
	Comm.RegisterHandler(Constants.DATA_TYPES.CHARACTER_SETTING_HASHES_RESPONSE, private.CharacterSettingHashesResponseHandler)
	Comm.RegisterHandler(Constants.DATA_TYPES.CHARACTER_SETTING_DATA_REQUEST, private.CharacterSettingDataRequestHandler)
	Comm.RegisterHandler(Constants.DATA_TYPES.CHARACTER_SETTING_DATA_RESPONSE, private.CharacterSettingDataResponseHandler)
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function Mirror.GetStatus(account)
	local status = private.accountStatus[account]
	if not status then
		return false, false
	elseif status == "UPDATING" then
		return true, false
	elseif status == "SYNCED" then
		return true, true
	else
		error("Invalid status: "..tostring(status))
	end
end

function Mirror.RegisterCallback(callback)
	tinsert(private.callbacks, callback)
end



-- ============================================================================
-- Connection Callback Handlers
-- ============================================================================

function private.ConnectionChangedHandler(account, player, connected)
	if connected == nil then
		-- new account, but not yet connected
		return
	end
	if connected then
		Log.Info("Connected to %s (%s)", account, player)
	else
		Log.Info("Disconnected from %s (%s)", account, player)
	end
	private.numConnected = private.numConnected + (connected and 1 or -1)
	assert(private.numConnected >= 0)
	if connected then
		private.accountStatus[account] = "UPDATING"
		private.characterHashesTimer:RunForTime(0)
	else
		private.accountStatus[account] = nil
		if private.numConnected == 0 then
			private.characterHashesTimer:Cancel()
		end
	end
end



-- ============================================================================
-- Delay-Based Last Update Send Function
-- ============================================================================

function private.SendCharacterHashes()
	assert(private.numConnected > 0)
	private.characterHashesTimer:RunForTime(BROADCAST_INTERVAL)

	-- calculate the hashes of the sync settings for all characters on this account
	local hashes = TempTable.Acquire()
	for _, character in Settings.CharacterByAccountFactionrealmIterator() do
		hashes[character] = private.CalculateCharacterHash(character)
	end

	-- send the hashes to all connected accounts
	for _, character in Connection.ConnectedAccountIterator() do
		Comm.SendData(Constants.DATA_TYPES.CHARACTER_HASHES_BROADCAST, character, hashes)
	end
	TempTable.Release(hashes)
end



-- ============================================================================
-- Message Handlers
-- ============================================================================

function private.CharacterHashesBroadcastHandler(dataType, sourceAccount, sourcePlayer, data)
	assert(dataType == Constants.DATA_TYPES.CHARACTER_HASHES_BROADCAST)
	if not Connection.IsCharacterConnected(sourcePlayer) then
		-- we're not connected to this player
		Log.Warn("Got CHARACTER_HASHES_BROADCAST for player which isn't connected")
		return
	end
	local didChange = false
	for _, character in Settings.CharacterByAccountFactionrealmIterator(sourceAccount) do
		if not data[character] then
			-- this character doesn't exist anymore, so remove it
			Log.Info("Removed character: '%s'", character)
			Settings.RemoveSyncCharacter(character)
			didChange = true
		end
	end
	for character, hash in pairs(data) do
		if not Settings.GetCharacterSyncAccountKey(character) then
			-- this is a new character, so add it to our DB
			Log.Info("New character: '%s' '%s'", character, sourceAccount)
			Settings.NewSyncCharacter(sourceAccount, character)
			didChange = true
		end
		if hash ~= private.CalculateCharacterHash(character) then
			-- this character's data has changed so request a hash of each of the keys
			Log.Info("Character data has changed: '%s'", character)
			Comm.SendData(Constants.DATA_TYPES.CHARACTER_SETTING_HASHES_REQUEST, sourcePlayer, character)
			didChange = true
		end
	end
	if didChange then
		private.accountStatus[sourceAccount] = "UPDATING"
	else
		private.accountStatus[sourceAccount] = "SYNCED"
	end
end

function private.CharacterSettingHashesRequestHandler(dataType, sourceAccount, sourcePlayer, data)
	assert(dataType == Constants.DATA_TYPES.CHARACTER_SETTING_HASHES_REQUEST)
	if not Connection.IsCharacterConnected(sourcePlayer) then
		-- we're not connected to this player
		Log.Warn("Got CHARACTER_HASHES_BROADCAST for player which isn't connected")
		return
	elseif Settings.GetCharacterSyncAccountKey(data) ~= Settings.GetCurrentSyncAccountKey() then
		-- we don't own this character
		Log.Err("Request for character we don't own ('%s', '%s')", tostring(data), tostring(Settings.GetCharacterSyncAccountKey(data)))
		return
	end
	Log.Info("CHARACTER_SETTING_HASHES_REQUEST (%s)", data)
	local responseData = TempTable.Acquire()
	responseData._character = data
	for _, namespace, settingKey in Settings.SyncSettingIterator() do
		responseData[namespace.."."..settingKey] = private.CalculateCharacterSettingHash(data, namespace, settingKey)
	end
	Comm.SendData(Constants.DATA_TYPES.CHARACTER_SETTING_HASHES_RESPONSE, sourcePlayer, responseData)
	TempTable.Release(responseData)
end

function private.CharacterSettingHashesResponseHandler(dataType, sourceAccount, sourcePlayer, data)
	assert(dataType == Constants.DATA_TYPES.CHARACTER_SETTING_HASHES_RESPONSE)
	if not Connection.IsCharacterConnected(sourcePlayer) then
		-- we're not connected to this player
		Log.Warn("Got CHARACTER_HASHES_BROADCAST for player which isn't connected")
		return
	end
	local character = data._character
	data._character = nil
	Log.Info("CHARACTER_SETTING_HASHES_RESPONSE (%s)", character)
	for key, hash in pairs(data) do
		local namespace, settingKey = strsplit(".", key)
		if private.CalculateCharacterSettingHash(character, namespace, settingKey) ~= hash then
			-- the settings data for key changed, so request the latest data for it
			Log.Info("Setting data has changed: '%s', '%s'", character, key)
			Comm.SendData(Constants.DATA_TYPES.CHARACTER_SETTING_DATA_REQUEST, sourcePlayer, character.."."..key)
		end
	end
end

function private.CharacterSettingDataRequestHandler(dataType, sourceAccount, sourcePlayer, data)
	assert(dataType == Constants.DATA_TYPES.CHARACTER_SETTING_DATA_REQUEST)
	local character, namespace, settingKey = strsplit(".", data)
	if not Connection.IsCharacterConnected(sourcePlayer) then
		-- we're not connected to this player
		Log.Warn("Got CHARACTER_HASHES_BROADCAST for player which isn't connected")
		return
	elseif Settings.GetCharacterSyncAccountKey(character) ~= Settings.GetCurrentSyncAccountKey() then
		-- we don't own this character
		Log.Err("Request for character we don't own ('%s', '%s')", tostring(character), tostring(Settings.GetCharacterSyncAccountKey(character)))
		return
	end
	Log.Info("CHARACTER_SETTING_DATA_REQUEST (%s,%s,%s)", character, namespace, settingKey)
	local responseData = TempTable.Acquire()
	responseData.character = character
	responseData.namespace = namespace
	responseData.settingKey = settingKey
	responseData.data = Settings.Get("sync", Settings.GetSyncScopeKeyByCharacter(character), namespace, settingKey)
	Comm.SendData(Constants.DATA_TYPES.CHARACTER_SETTING_DATA_RESPONSE, sourcePlayer, responseData)
	TempTable.Release(responseData)
end

function private.CharacterSettingDataResponseHandler(dataType, sourceAccount, sourcePlayer, data)
	assert(dataType == Constants.DATA_TYPES.CHARACTER_SETTING_DATA_RESPONSE)
	if not Connection.IsCharacterConnected(sourcePlayer) then
		-- we're not connected to this player
		Log.Warn("Got CHARACTER_HASHES_BROADCAST for player which isn't connected")
		return
	end
	local dataValueType = type(data.data)
	Log.Info("CHARACTER_SETTING_DATA_RESPONSE (%s,%s,%s,%s,%s)", data.character, data.namespace, data.settingKey, dataValueType, (dataValueType == "string" or dataValueType == "table") and #dataValueType or "-")
	if dataValueType == "table" then
		local tbl = Settings.Get("sync", Settings.GetSyncScopeKeyByCharacter(data.character), data.namespace, data.settingKey)
		wipe(tbl)
		for i, v in pairs(data.data) do
			tbl[i] = v
		end
	else
		Settings.Set("sync", Settings.GetSyncScopeKeyByCharacter(data.character), data.namespace, data.settingKey, data.data)
	end
	for _, callback in ipairs(private.callbacks) do
		callback()
	end
end



-- ============================================================================
-- Helper Functions
-- ============================================================================

function private.CalculateCharacterHash(character)
	local hash = nil
	local settingKeys = TempTable.Acquire()
	for _, namespace, settingKey in Settings.SyncSettingIterator() do
		tinsert(settingKeys, strjoin(".", namespace, settingKey))
	end
	sort(settingKeys)
	for _, key in ipairs(settingKeys) do
		hash = Math.CalculateHash(key, hash)
		local namespace, settingKey = strsplit(".", key)
		local settingValue = Settings.Get("sync", Settings.GetSyncScopeKeyByCharacter(character), namespace, settingKey)
		hash = Math.CalculateHash(settingValue, hash)
	end
	assert(hash)
	TempTable.Release(settingKeys)
	return hash
end

function private.CalculateCharacterSettingHash(character, namespace, settingKey)
	return Math.CalculateHash(Settings.Get("sync", Settings.GetSyncScopeKeyByCharacter(character), namespace, settingKey))
end
