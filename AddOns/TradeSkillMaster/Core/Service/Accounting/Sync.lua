-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local AccountingSync = TSM.Accounting:NewPackage("Sync")
local L = TSM.Include("Locale").GetTable()
local Delay = TSM.Include("Util.Delay")
local Log = TSM.Include("Util.Log")
local TempTable = TSM.Include("Util.TempTable")
local Theme = TSM.Include("Util.Theme")
local Wow = TSM.Include("Util.Wow")
local Sync = TSM.Include("Service.Sync")
local private = {
	accountLookup = {},
	accountStatus = {},
	pendingChunks = {},
	dataTemp = {},
	changeTimer = nil,
	hashesRetryTimer = nil
}
local STATUS = {
	UPDATING = newproxy(),
	RETRY = newproxy(),
	SYNCED = newproxy(),
}
local CHANGE_NOTIFICATION_DELAY = 5
local RETRY_DELAY = 5



-- ============================================================================
-- Module Functions
-- ============================================================================

function AccountingSync.OnInitialize()
	private.changeTimer = Delay.CreateTimer("ACCOUNTING_SYNC_CHANGE", private.NotifyChange)
	private.hashesRetryTimer = Delay.CreateTimer("ACCOUNTING_SYNC_HASHES_RETRY", private.RetryGetPlayerHashRPC)
	Sync.RegisterConnectionChangedCallback(private.ConnectionChangedHandler)
	Sync.RegisterRPC("ACCOUNTING_GET_PLAYER_HASH", private.RPCGetPlayerHash)
	Sync.RegisterRPC("ACCOUNTING_GET_PLAYER_CHUNKS", private.RPCGetPlayerChunks)
	Sync.RegisterRPC("ACCOUNTING_GET_PLAYER_DATA", private.RPCGetData)
	Sync.RegisterRPC("ACCOUNTING_CHANGE_NOTIFICATION", private.RPCChangeNotification)
end

function AccountingSync.GetStatus(account)
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

function AccountingSync.OnTransactionsChanged()
	private.changeTimer:RunForTime(CHANGE_NOTIFICATION_DELAY)
end



-- ============================================================================
-- RPC Functions and Result Handlers
-- ============================================================================

function private.GetPlayerHash(player)
	local account = private.accountLookup[player]
	private.accountStatus[account] = STATUS.UPDATING
	TSM.Accounting.Transactions.PrepareSyncHashes(player)
	Sync.CallRPC("ACCOUNTING_GET_PLAYER_HASH", player, private.RPCGetPlayerHashResultHandler)
end

function private.RPCGetPlayerHash()
	return TSM.Accounting.Transactions.GetSyncHash(Wow.GetCharacterName())
end

function private.RPCGetPlayerHashResultHandler(success, player, hash)
	local account = private.HandleRPCResult("GET_PLAYER_HASH", success, player)
	if not account then
		return
	elseif not hash then
		-- The hash isn't ready yet, so try again
		Log.Warn("Sync player hash not ready yet (%s)", player)
		private.RestartForAccount(account)
		return
	end

	local currentHash = TSM.Accounting.Transactions.GetSyncHash(player)
	if not currentHash then
		-- Don't have our hash yet, so try again
		Log.Warn("Current player hash not ready yet (%s)", player)
		private.RestartForAccount(account)
		return
	end

	if hash ~= currentHash then
		Log.Info("Need updated transactions data from %s (%s, %s)", player, hash, currentHash)
		private.GetPlayerChunks(player)
	else
		Log.Info("Transactions data for %s already up to date (%s, %s)", player, hash, currentHash)
		private.accountStatus[account] = STATUS.SYNCED
	end
end

function private.GetPlayerChunks(player)
	local account = private.accountLookup[player]
	private.accountStatus[account] = STATUS.UPDATING
	Sync.CallRPC("ACCOUNTING_GET_PLAYER_CHUNKS", player, private.RPCGetPlayerChunksResultHandler)
end

function private.RPCGetPlayerChunks()
	return TSM.Accounting.Transactions.GetSyncHashByDay(Wow.GetCharacterName())
end

function private.RPCGetPlayerChunksResultHandler(success, player, chunks)
	local account = private.HandleRPCResult("GET_PLAYER_CHUNKS", success, player)
	if not account then
		return
	elseif not chunks then
		-- The hashes have been invalidated, so try again from the start
		Log.Warn("Sync player chunks not ready yet (%s)", player)
		private.RestartForAccount(account)
		return
	end

	local currentChunks = TSM.Accounting.Transactions.GetSyncHashByDay(player)
	if not currentChunks then
		-- Our hashes have been invalidated, so try again from the start
		Log.Warn("Local hashes are invalid (%s)", player)
		private.RestartForAccount(account)
		return
	end
	for day in pairs(currentChunks) do
		if not chunks[day] then
			-- Remove day which no longer exists
			TSM.Accounting.Transactions.RemovePlayerDay(player, day)
		end
	end

	-- Queue up all the pending chunks
	private.pendingChunks[player] = private.pendingChunks[player] or TempTable.Acquire()
	wipe(private.pendingChunks[player])
	for day, hash in pairs(chunks) do
		if currentChunks[day] ~= hash then
			tinsert(private.pendingChunks[player], day)
		end
	end

	local requestDay = private.GetNextPendingChunk(player)
	if requestDay then
		Log.Info("Requesting transactions data (%s, %s, %s, %s)", player, requestDay, tostring(currentChunks[requestDay]), chunks[requestDay])
		private.GetPlayerData(player, requestDay)
	else
		Log.Info("All chunks are up to date (%s)", player)
		private.accountStatus[account] = STATUS.SYNCED
	end
end

function private.GetPlayerData(player, requestDay)
	local account = private.accountLookup[player]
	private.accountStatus[account] = STATUS.UPDATING
	Sync.CallRPC("ACCOUNTING_GET_PLAYER_DATA", player, private.RPCGetPlayerDataResultHandler, requestDay)
end

function private.RPCGetData(day)
	wipe(private.dataTemp)
	TSM.Accounting.Transactions.GetSyncData(Wow.GetCharacterName(), day, private.dataTemp)
	return day, private.dataTemp
end

function private.RPCGetPlayerDataResultHandler(success, player, day, data)
	local account = private.HandleRPCResult("GET_PLAYER_DATA", success, player)
	if not account then
		return
	elseif #data % 9 ~= 0 then
		-- Invalid data - just silently give up
		Log.Err("Got invalid transactions data")
		return
	end

	Log.Info("Received transactions data (%s, %s, %s)", player, day, #data)
	TSM.Accounting.Transactions.HandleSyncedData(player, day, data)

	local requestDay = private.GetNextPendingChunk(player)
	if requestDay then
		-- Request the next chunk
		Log.Info("Requesting transactions data (%s, %s)", player, requestDay)
		private.GetPlayerData(player, requestDay)
	else
		-- Request chunks again to check for other chunks we need to sync
		private.GetPlayerChunks(player)
	end
end

function private.RPCChangeNotification(player)
	if private.accountStatus[private.accountLookup[player]] == STATUS.SYNCED then
		-- Request the player hash
		Log.Info("Got change notification - requesting player hash")
		private.GetPlayerHash(player)
	else
		Log.Info("Got change notification - dropping (%s)", player)
	end
end

function private.RPCChangeNotificationResultHandler()
	-- nop
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.ConnectionChangedHandler(account, player, connected)
	if connected then
		private.accountLookup[player] = account
		private.GetPlayerHash(player)
	else
		private.accountLookup[player] = nil
		private.accountStatus[account] = nil
		if private.pendingChunks[player] then
			TempTable.Release(private.pendingChunks[player])
			private.pendingChunks[player] = nil
		end
	end
end

function private.GetNextPendingChunk(player)
	if not private.pendingChunks[player] then
		return nil
	end
	local result = tremove(private.pendingChunks[player])
	if not result then
		TempTable.Release(private.pendingChunks[player])
		private.pendingChunks[player] = nil
	end
	return result
end

function private.RetryGetPlayerHashRPC()
	for player, account in pairs(private.accountLookup) do
		if private.accountStatus[account] == STATUS.RETRY then
			private.GetPlayerHash(player)
		end
	end
end

function private.NotifyChange()
	for player, account in pairs(private.accountLookup) do
		if private.accountStatus[account] == STATUS.SYNCED then
			-- Notify the other account that our data has changed and request the other account's latest hash ourselves
			private.GetPlayerHash(player)
			Sync.CallRPC("ACCOUNTING_CHANGE_NOTIFICATION", player, private.RPCChangeNotificationResultHandler, UnitName("player"))
		end
	end
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
	private.hashesRetryTimer:RunForTime(RETRY_DELAY)
end
