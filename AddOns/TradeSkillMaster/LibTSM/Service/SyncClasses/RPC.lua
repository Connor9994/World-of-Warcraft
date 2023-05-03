-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local RPC = TSM.Init("Service.SyncClasses.RPC") ---@class Service.SyncClasses.RPC
local Delay = TSM.Include("Util.Delay")
local TempTable = TSM.Include("Util.TempTable")
local Log = TSM.Include("Util.Log")
local Constants = TSM.Include("Service.SyncClasses.Constants")
local Comm = TSM.Include("Service.SyncClasses.Comm")
local Connection = TSM.Include("Service.SyncClasses.Connection")
local private = {
	rpcFunctions = {},
	pendingRPC = {},
	rpcSeqNum = 0,
	pendingTimer = nil,
}
local RPC_EXTRA_TIMEOUT = 15
local CALLBACK_TIME_WARNING_THRESHOLD = 0.02



-- ============================================================================
-- Module Loading
-- ============================================================================

RPC:OnModuleLoad(function()
	private.pendingTimer = Delay.CreateTimer("SYNC_RPC_PENDING", private.HandlePendingRPC)
	Comm.RegisterHandler(Constants.DATA_TYPES.RPC_CALL, private.HandleCall)
	Comm.RegisterHandler(Constants.DATA_TYPES.RPC_RETURN, private.HandleReturn)
	Comm.RegisterHandler(Constants.DATA_TYPES.RPC_PREAMBLE, private.HandlePreamble)
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function RPC.Register(name, func)
	assert(name)
	private.rpcFunctions[name] = func
end

function RPC.Call(name, targetPlayer, handler, ...)
	assert(targetPlayer)
	if not Connection.IsCharacterConnected(targetPlayer) then
		return false
	end

	assert(private.rpcFunctions[name], "Cannot call an RPC which is not also registered locally.")
	private.rpcSeqNum = private.rpcSeqNum + 1

	local requestData = TempTable.Acquire()
	requestData.name = name
	requestData.args = TempTable.Acquire(...)
	requestData.seq = private.rpcSeqNum
	local numBytes = Comm.SendData(Constants.DATA_TYPES.RPC_CALL, targetPlayer, requestData)
	TempTable.Release(requestData.args)
	TempTable.Release(requestData)

	local context = TempTable.Acquire()
	context.name = name
	context.targetPlayer = targetPlayer
	context.handler = handler
	context.timeoutTime = time() + RPC_EXTRA_TIMEOUT + private.EstimateTransferTime(numBytes)
	private.pendingRPC[private.rpcSeqNum] = context
	private.pendingTimer:RunForTime(1)

	return true, (context.timeoutTime - time()) * 2 / 3
end



-- ============================================================================
-- Message Handlers
-- ============================================================================

function private.HandleCall(dataType, _, sourcePlayer, data)
	assert(dataType == Constants.DATA_TYPES.RPC_CALL)
	if type(data) ~= "table" or type(data.name) ~= "string" or type(data.seq) ~= "number" or type(data.args) ~= "table" then
		return
	end
	if not private.rpcFunctions[data.name] then
		return
	end
	local responseData = TempTable.Acquire()

	local funcStartTime = GetTimePreciseSec()
	responseData.result = TempTable.Acquire(private.rpcFunctions[data.name](unpack(data.args)))
	local funcTimeTaken = GetTimePreciseSec() - funcStartTime
	if funcTimeTaken > CALLBACK_TIME_WARNING_THRESHOLD then
		Log.Warn("RPC (%s) took %0.5fs", tostring(data.name), funcTimeTaken)
	end
	responseData.seq = data.seq
	local sendStartTime = GetTimePreciseSec()
	local numBytes = Comm.SendData(Constants.DATA_TYPES.RPC_RETURN, sourcePlayer, responseData)
	local sendTimeTaken = GetTimePreciseSec() - sendStartTime
	if sendTimeTaken > CALLBACK_TIME_WARNING_THRESHOLD then
		Log.Warn("Sending RPC result (%s) took %0.5fs (%d bytes)", tostring(data.name), sendTimeTaken, numBytes)
	end
	TempTable.Release(responseData.result)
	TempTable.Release(responseData)

	local transferTime = private.EstimateTransferTime(numBytes)
	if transferTime > 1 then
		-- We sent more than 1 second worth of data back, so send a preamble to allow the source to adjust its timeout accordingly.
		local preambleData = TempTable.Acquire()
		preambleData.transferTime = transferTime
		preambleData.seq = data.seq
		Comm.SendData(Constants.DATA_TYPES.RPC_PREAMBLE, sourcePlayer, preambleData)
		TempTable.Release(preambleData)
	end
end

function private.HandleReturn(dataType, _, character, data)
	assert(dataType == Constants.DATA_TYPES.RPC_RETURN)
	if type(data.seq) ~= "number" or type(data.result) ~= "table" then
		return
	end
	local context = private.pendingRPC[data.seq]
	if not context then
		return
	end
	assert(character == context.targetPlayer)
	local startTime = GetTimePreciseSec()
	context.handler(true, context.targetPlayer, unpack(data.result))
	local timeTaken = GetTimePreciseSec() - startTime
	if timeTaken > CALLBACK_TIME_WARNING_THRESHOLD then
		Log.Warn("RPC (%s) result handler took %0.5fs", tostring(context.name), timeTaken)
	end
	TempTable.Release(context)
	private.pendingRPC[data.seq] = nil
end

function private.HandlePreamble(dataType, _, _, data)
	assert(dataType == Constants.DATA_TYPES.RPC_PREAMBLE)
	if type(data.seq) ~= "number" or type(data.transferTime) ~= "number" then
		return
	elseif not private.pendingRPC[data.seq] then
		return
	end
	-- extend the timeout
	private.pendingRPC[data.seq].timeoutTime = time() + RPC_EXTRA_TIMEOUT + data.transferTime
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.EstimateTransferTime(numBytes)
	return ceil(numBytes / (ChatThrottleLib.MAX_CPS / 2))
end

function private.HandlePendingRPC()
	if not next(private.pendingRPC) then
		return
	end
	local timedOut = TempTable.Acquire()
	for seq, info in pairs(private.pendingRPC) do
		if time() > info.timeoutTime then
			tinsert(timedOut, seq)
		end
	end
	for _, seq in ipairs(timedOut) do
		local context = private.pendingRPC[seq]
		Log.Warn("RPC timed out (%s)", context.name)
		context.handler(false, context.targetPlayer)
		TempTable.Release(context)
		private.pendingRPC[seq] = nil
	end
	TempTable.Release(timedOut)
end
