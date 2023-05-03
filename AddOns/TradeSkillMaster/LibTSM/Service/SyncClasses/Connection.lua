-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Connection = TSM.Init("Service.SyncClasses.Connection")
local L = TSM.Include("Locale").GetTable()
local Delay = TSM.Include("Util.Delay")
local Log = TSM.Include("Util.Log")
local TempTable = TSM.Include("Util.TempTable")
local Event = TSM.Include("Util.Event")
local Settings = TSM.Include("Service.Settings")
local Threading = TSM.Include("Service.Threading")
local Constants = TSM.Include("Service.SyncClasses.Constants")
local Comm = TSM.Include("Service.SyncClasses.Comm")
local private = {
	isActive = false,
	hasFriendsInfo = false,
	newCharacter = nil,
	newAccount = nil,
	newSyncAcked = nil,
	connectionChangedCallbacks = {},
	threadId = {},
	threadRunning = {},
	connectedCharacter = {},
	lastHeartbeat = {},
	suppressThreadTime = {},
	connectionRequestReceived = {},
	addedFriends = {},
	invalidCharacters = {},
	managementTimer = nil,
	newAccountTimer = nil,
	friendsInfoTimer = nil,
}
local RECEIVE_TIMEOUT = 5
local HEARTBEAT_TIMEOUT = 10



-- ============================================================================
-- Module Loading
-- ============================================================================

Connection:OnSettingsLoad(function()
	private.managementTimer = Delay.CreateTimer("SYNC_CONNECTION_MANAGEMENT", private.ManagementLoop)
	private.newAccountTimer = Delay.CreateTimer("SYNC_CONNECTION_NEW_ACCOUNT", private.SendNewAccountWhoAmI)
	private.friendsInfoTimer = Delay.CreateTimer("SYNC_CONNECTION_FRIENDS_INFO", private.RequestFriendsInfo)
	Event.Register("CHAT_MSG_SYSTEM", private.ChatMsgSystemEventHandler)
	Event.Register("FRIENDLIST_UPDATE", private.PrepareFriendsInfo)
	for _ in Settings.SyncAccountIterator() do
		private.isActive = true
	end
	Comm.RegisterHandler(Constants.DATA_TYPES.WHOAMI_ACCOUNT, private.WhoAmIAccountHandler)
	Comm.RegisterHandler(Constants.DATA_TYPES.WHOAMI_ACK, private.WhoAmIAckHandler)
	Comm.RegisterHandler(Constants.DATA_TYPES.CONNECTION_REQUEST, private.ConnectionHandler)
	Comm.RegisterHandler(Constants.DATA_TYPES.CONNECTION_REQUEST_ACK, private.ConnectionHandler)
	Comm.RegisterHandler(Constants.DATA_TYPES.DISCONNECT, private.DisconnectHandler)
	Comm.RegisterHandler(Constants.DATA_TYPES.HEARTBEAT, private.HeartbeatHandler)

	private.PrepareFriendsInfo()
end)

Connection:OnModuleUnload(function()
	for _, player in pairs(private.connectedCharacter) do
		Comm.SendData(Constants.DATA_TYPES.DISCONNECT, player)
	end
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function Connection.RegisterConnectionChangedCallback(handler)
	tinsert(private.connectionChangedCallbacks, handler)
end

function Connection.IsCharacterConnected(targetCharacter)
	for _, player in pairs(private.connectedCharacter) do
		if player == targetCharacter then
			return true
		end
	end
	return false
end

function Connection.ConnectedAccountIterator()
	return pairs(private.connectedCharacter)
end

function Connection.Establish(targetCharacter)
	if not private.hasFriendsInfo then
		Log.PrintUser(L["TSM is not yet ready to establish a new sync connection. Please try again later."])
		return false
	end
	local wasFriend = C_FriendList.GetFriendInfo(targetCharacter) and true or false
	if strlower(targetCharacter) == strlower(UnitName("player")) then
		Log.PrintUser(L["Sync Setup Error: You entered the name of the current character and not the character on the other account."])
		return false
	elseif not private.IsOnline(targetCharacter) and wasFriend then
		Log.PrintUser(L["Sync Setup Error: The specified player on the other account is not currently online."])
		return false
	end
	local invalidCharacter = false
	for _, player in Settings.CharacterByFactionrealmIterator() do
		if strlower(player) == strlower(targetCharacter) then
			invalidCharacter = true
		end
	end
	if invalidCharacter then
		Log.PrintUser(L["Sync Setup Error: This character is already part of a known account."])
		return false
	end
	if not private.isActive then
		private.isActive = true
		private.managementTimer:RunForTime(1)
	end
	private.newCharacter = targetCharacter
	private.newAccount = nil
	private.newSyncAcked = nil
	private.newAccountTimer:Cancel()
	private.newAccountTimer:RunForTime(0)
	return true
end

function Connection.GetNewAccountStatus()
	if not private.newCharacter then
		return nil
	end
	return format(L["Connecting to %s"], private.newCharacter)
end

function Connection.GetStatus(account)
	if private.connectedCharacter[account] then
		return true, private.connectedCharacter[account]
	else
		return false
	end
end

function Connection.Remove(account)
	if private.threadRunning[account] then
		Threading.Kill(private.threadId[account])
		private.ConnectionThreadDone(account)
	end
	Settings.RemoveSyncAccount(account)
end

function Connection.GetConnectedCharacterByAccount(account)
	return private.connectedCharacter[account]
end



-- ============================================================================
-- Message Handlers
-- ============================================================================

function private.WhoAmIAckHandler(dataType, sourceAccount, sourceCharacter, data)
	assert(dataType == Constants.DATA_TYPES.WHOAMI_ACK)
	if not private.newCharacter or strlower(private.newCharacter) ~= strlower(sourceCharacter) then
		-- we aren't trying to connect with a new account
		return
	end
	Log.Info("WHOAMI_ACK '%s'", tostring(private.newCharacter))
	private.newSyncAcked = true
	private.CheckNewAccountStatus()
end

function private.WhoAmIAccountHandler(dataType, sourceAccount, sourceCharacter, data)
	assert(dataType == Constants.DATA_TYPES.WHOAMI_ACCOUNT)
	if not private.newCharacter then
		-- we aren't trying to connect with a new account
		return
	elseif strlower(private.newCharacter) ~= strlower(sourceCharacter) then
		Log.Info("WHOAMI_ACCOUNT from unknown player \"%s\", expected \"%s\"", private.newCharacter, sourceCharacter)
		return
	end
	private.newCharacter = sourceCharacter -- get correct capatilization
	private.newAccount = sourceAccount
	Log.Info("WHOAMI_ACCOUNT '%s' '%s'", private.newCharacter, private.newAccount)
	Comm.SendData(Constants.DATA_TYPES.WHOAMI_ACK, private.newCharacter)
	private.CheckNewAccountStatus()
end

function private.ConnectionHandler(dataType, sourceAccount, sourceCharacter, data)
	if not private.threadRunning[sourceAccount] then
		return
	end
	private.connectionRequestReceived[sourceAccount] = true
end

function private.DisconnectHandler(dataType, sourceAccount, sourceCharacter, data)
	assert(dataType == Constants.DATA_TYPES.DISCONNECT)
	if not private.threadRunning[sourceAccount] then
		return
	end

	-- kill the thread and prevent it from running again for 2 seconds
	Threading.Kill(private.threadId[sourceAccount])
	private.ConnectionThreadDone(sourceAccount)
	private.suppressThreadTime[sourceAccount] = time() + 2
end

function private.HeartbeatHandler(dataType, sourceAccount, sourceCharacter)
	assert(dataType == Constants.DATA_TYPES.HEARTBEAT)
	if not Connection.IsCharacterConnected(sourceCharacter) then
		-- we're not connected to this player
		return
	end
	private.lastHeartbeat[sourceAccount] = time()
end



-- ============================================================================
-- Management Loop / Sync Thread
-- ============================================================================

function private.RequestFriendsInfo()
	C_FriendList.ShowFriends()
end

function private.PrepareFriendsInfo()
	-- wait for friend info to populate
	local isValid
	local num = C_FriendList.GetNumFriends()
	if not num then
		isValid = false
	else
		isValid = true
	end
	for i = 1, num or 0 do
		if not C_FriendList.GetFriendInfoByIndex(i) then
			isValid = false
			break
		end
	end
	if isValid then
		if not private.hasFriendsInfo and private.isActive then
			-- start the management loop
			private.managementTimer:RunForTime(1)
		end
		private.hasFriendsInfo = true
	else
		-- try again
		Log.Err("Missing friends info - will try again")
		private.friendsInfoTimer:RunForTime(0.5)
	end
end

function private.ManagementLoop()
	private.managementTimer:RunForTime(1)
	-- continuously spawn connection threads with online players as necessary
	private.RequestFriendsInfo()
	local hasAccount = false
	for _, account in Settings.SyncAccountIterator() do
		hasAccount = true
		local targetCharacter = private.GetTargetCharacter(account)
		if targetCharacter then
			if not private.threadId[account] then
				private.threadId[account] = Threading.New("SYNC_"..strmatch(account, "(%d+)$"), private.ConnectionThread)
			end
			if not private.threadRunning[account] and (private.suppressThreadTime[account] or 0) < time() then
				private.threadRunning[account] = true
				Threading.Start(private.threadId[account], account, targetCharacter)
			end
		end
	end
	if not hasAccount then
		Log.Info("No more sync accounts.")
		private.isActive = false
		if not private.newCharacter then
			private.managementTimer:Cancel()
		end
	end
end


function private.ConnectionThreadInner(account, targetCharacter)
	-- for the initial handshake, the lower account key is the server, other is the client - after this it doesn't matter
	-- add some randomness to the timeout so we don't get stuck in a race condition
	local timeout = GetTime() + RECEIVE_TIMEOUT + random(0, 1000) / 1000
	if account < Settings.GetCurrentSyncAccountKey() then
		-- wait for the connection request from the client
		while not private.connectionRequestReceived[account] do
			if GetTime() > timeout then
				-- timed out on the connection - don't try again for a bit
				Log.Warn("Timed out")
				return
			end
			Threading.Yield(true)
		end
		-- send an connection request ACK back to the client
		Comm.SendData(Constants.DATA_TYPES.CONNECTION_REQUEST_ACK, targetCharacter)
	else
		-- send a connection request to the server
		Comm.SendData(Constants.DATA_TYPES.CONNECTION_REQUEST, targetCharacter)
		-- wait for the connection request ACK
		while not private.connectionRequestReceived[account] do
			if GetTime() > timeout then
				-- timed out on the connection - don't try again for a bit
				Log.Warn("Timed out")
				private.suppressThreadTime[account] = time() + RECEIVE_TIMEOUT
				return
			end
			Threading.Yield(true)
		end
	end

	-- we are now connected
	Log.Info("Connected to: %s %s", account, targetCharacter)
	private.connectedCharacter[account] = targetCharacter
	private.lastHeartbeat[account] = time()
	for _, callback in ipairs(private.connectionChangedCallbacks) do
		callback(account, targetCharacter, true)
	end

	-- now that we are connected, data can flow in both directions freely
	local lastHeartbeatSend = time()
	while true do
		-- check if they either logged off or the heartbeats have timed-out
		if not private.IsOnline(targetCharacter, true) or time() - private.lastHeartbeat[account] > HEARTBEAT_TIMEOUT then
			return
		end

		-- check if we should send a heartbeat
		if time() - lastHeartbeatSend > floor(HEARTBEAT_TIMEOUT / 2) then
			Comm.SendData(Constants.DATA_TYPES.HEARTBEAT, targetCharacter)
			lastHeartbeatSend = time()
		end

		Threading.Yield(true)
	end
end

function private.ConnectionThread(account, targetCharacter)
	private.ConnectionThreadInner(account, targetCharacter)
	private.ConnectionThreadDone(account)
end

function private.ConnectionThreadDone(account)
	Log.Info("Connection ended to %s", account)
	local player = private.connectedCharacter[account]
	private.connectedCharacter[account] = nil
	if player then
		for _, callback in ipairs(private.connectionChangedCallbacks) do
			callback(account, player, false)
		end
	end
	private.threadRunning[account] = nil
	private.connectionRequestReceived[account] = nil
end



-- ============================================================================
-- Helper Functions
-- ============================================================================

function private.SendNewAccountWhoAmI()
	if not private.newCharacter then
		private.newAccountTimer:Cancel()
	elseif not C_FriendList.GetFriendInfo(private.newCharacter) then
		Log.Info("Waiting for friends list to update")
		private.newAccountTimer:RunForTime(1)
	elseif not private.IsOnline(private.newCharacter) then
		private.newAccountTimer:Cancel()
		private.newCharacter = nil
		private.newAccount = nil
		private.newSyncAcked = nil
		Log.Err("New player went offline")
	else
		Comm.SendData(Constants.DATA_TYPES.WHOAMI_ACCOUNT, private.newCharacter)
		Log.Info("Sent WHOAMI_ACCOUNT")
		private.newAccountTimer:RunForTime(1)
	end
end

function private.CheckNewAccountStatus()
	if not private.newCharacter or not private.newAccount or not private.newSyncAcked then
		return
	end
	Log.Info("New sync character: '%s' '%s'", private.newCharacter, private.newAccount)
	-- the other account ACK'd so setup a connection
	Settings.NewSyncCharacter(private.newAccount, private.newCharacter)

	-- call the callbacks for this new account
	for _, callback in ipairs(private.connectionChangedCallbacks) do
		callback(private.newAccount, private.newCharacter, nil)
	end

	private.newCharacter = nil
	private.newAccount = nil
	private.newSyncAcked = nil
end

function private.GetTargetCharacter(account)
	local tempTbl = TempTable.Acquire()
	for _, character in Settings.CharacterByAccountFactionrealmIterator(account) do
		tinsert(tempTbl, character)
	end

	-- find the player to connect to without adding to the friends list
	for _, player in ipairs(tempTbl) do
		if private.IsOnline(player, true) then
			TempTable.Release(tempTbl)
			return player
		end
	end
	-- if we failed, try again with adding to friends list
	for _, player in ipairs(tempTbl) do
		if private.IsOnline(player) then
			TempTable.Release(tempTbl)
			return player
		end
	end
	TempTable.Release(tempTbl)
end

function private.IsOnline(target, noAdd)
	local info = C_FriendList.GetFriendInfo(target)
	if not info and not noAdd and not private.invalidCharacters[strlower(target)] and C_FriendList.GetNumFriends() ~= 50 then
		-- add them as a friend
		C_FriendList.AddFriend(target)
		private.RequestFriendsInfo()
		tinsert(private.addedFriends, target)
		info = C_FriendList.GetFriendInfo(target)
	end
	return info and info.connected or false
end

function private.ChatMsgSystemEventHandler(_, msg)
	if #private.addedFriends == 0 then
		return
	end
	if msg == ERR_FRIEND_NOT_FOUND then
		if #private.addedFriends > 0 then
			private.invalidCharacters[strlower(tremove(private.addedFriends, 1))] = true
		end
	else
		for i, v in ipairs(private.addedFriends) do
			if format(ERR_FRIEND_ADDED_S, v) == msg then
				tremove(private.addedFriends, i)
				private.invalidCharacters[strlower(v)] = true
			end
		end
	end
end
