-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Threading = TSM.Init("Service.Threading") ---@class Service.Threading
local Debug = TSM.Include("Util.Debug")
local Math = TSM.Include("Util.Math")
local TempTable = TSM.Include("Util.TempTable")
local Vararg = TSM.Include("Util.Vararg")
local Log = TSM.Include("Util.Log")
local ErrorHandler = TSM.Include("Service.ErrorHandler")
local Thread = TSM.Include("LibTSMClass").DefineClass("Thread")
local private = {
	threads = {},
	queue = {},
	runningThread = nil,
	schedulerFrame = nil,
}
local MAX_TIME_USAGE_RATIO = 0.25
local EXCESSIVE_TIME_USED_RATIO = 1.2
local EXCESSIVE_TIME_LOG_THRESHOLD = 0.1
local MAX_QUANTUM = 0.01
local SEND_MSG_SYNC_TIMEOUT = 3
local YIELD_VALUE_START = {}
local YIELD_VALUE = {}
local SCHEDULER_TIME_WARNING_THRESHOLD = 0.1



-- ============================================================================
-- Module Functions
-- ============================================================================

--- Create a new thread.
-- @tparam string name The name of the thread (for debugging purposes)
-- @tparam function func The thread's main function
-- @treturn string The thread id
function Threading.New(name, func)
	assert(name and func)
	local thread = Thread(name, func)
	local threadId = strjoin("-", tostringall(thread, func))
	private.threads[threadId] = thread
	return threadId
end

--- Set the callback for a thread.
-- The callback is called when a thread finishes running and is passed all values returned by the thread's main function.
-- @tparam string threadId The thread id
-- @tparam function callback The callback function
function Threading.SetCallback(threadId, callback)
	private.threads[threadId]:_SetCallback(callback)
end

--- Start a thread.
-- The thread will not actually be run until the next run of the scheduler (next frame).
-- @tparam string threadId The thread id
-- @tparam vararg ... Arguments to pass to the thread's main function
function Threading.Start(threadId, ...)
	local thread = private.threads[threadId]
	assert(not thread:_IsAlive())
	-- make sure the scheduler is running
	private.StartScheduler()
	thread:_Start(...)
end

--- Send a message to a thread.
-- @tparam string threadId The thread id
-- @tparam vararg ... The contents of the message
function Threading.SendMessage(threadId, ...)
	local thread = private.threads[threadId]
	assert(thread:_IsAlive())
	tinsert(thread._messages, TempTable.Acquire(...))
end

--- Send a synchronous message to a thread.
-- The current execution context will be blocked until the message is delivered.
-- @tparam string threadId The thread id
-- @tparam vararg ... The contents of the message
function Threading.SendSyncMessage(threadId, ...)
	if Threading.IsThreadContext() then
		-- we can't (sanely) run a thread from within a thread context, so we'll yield from the current thread first
		private.runningThread:_SendSyncMessage(threadId, ...)
	else
		local errMsg = private.threads[threadId]:_HandleSyncMessage(...)
		if errMsg then
			error(errMsg)
		end
	end
end

--- Kill a thread.
-- @tparam string threadId The thread id
function Threading.Kill(threadId)
	local thread = private.threads[threadId]
	if thread:_IsAlive() then
		thread:_Exit()
	end
end

--- Check if we're currently in a thread context.
-- @treturn boolean Whether or not we're currently in a thread context
function Threading.IsThreadContext()
	return private.runningThread ~= nil
end

--- Get the name of the current thread.
-- @treturn ?string The name of the currently-running thread or nil if no thread is running
function Threading.GetCurrentThreadName()
	return private.runningThread and private.runningThread._name or nil
end

--- Check if the current thread has any pending messages.
-- This must be called from a thread context.
-- @treturn boolean Whether or not this thread has any pending messages
function Threading.HasPendingMessage()
	return private.runningThread:_HasPendingMessage()
end

--- Receive the next message.
-- This must be called from a thread context.
-- @return The context of the message
function Threading.ReceiveMessage()
	return private.runningThread:_ReceiveMessage()
end

--- Performs a yield.
-- This must be called from a thread context. This function should be called regularly by threads to allow them the
-- scheduler to switch to another thread if this thread's quantum is up. If this thread has not exceeded its quantum,
-- this function will return right away.
-- @tparam[opt=false] boolean force If true, forces this thread to yield, regardless of whether or not it needs to
function Threading.Yield(force)
	private.runningThread:_Yield(force)
end

--- Sleep the thread.
-- This must be called from a thread context.
-- @tparam number seconds The number of seconds to sleep for (may be a deciaml number)
function Threading.Sleep(seconds)
	private.runningThread:_Sleep(seconds)
end

--- Wait for a WoW event.
-- This must be called from a thread context.
-- @tparam string event The WoW event to wait for
function Threading.WaitForEvent(...)
	return private.runningThread:_WaitForEvent(...)
end

--- Wait for a function.
-- This must be called from a thread context. It will block the thread until the specified function returns a true value.
-- @tparam function func The function to wait for
-- @tparam vararg ... Additional arguments to pass to the function
function Threading.WaitForFunction(func, ...)
	return private.runningThread:_WaitForFunction(func, ...)
end

--- Wait for a future.
-- This must be called from a thread context. It will block the thread until the specified future is done.
-- @tparam Future future The future to wait for
function Threading.WaitForFuture(future)
	return private.runningThread:_WaitForFuture(future)
end

--- Acquire a temp table.
-- This must be called from a thread context. Any time a thread needs to maintain a temp table across a potential yield,
-- it should use this API. This API will release the temp tables in the case that the thread gets killed.
-- @see TempTable.Acquire
-- @tparam vararg ... Values to insert into the temp table
function Threading.AcquireSafeTempTable(...)
	return private.runningThread:_AcquireSafeTempTable(...)
end

--- Release a temp table.
-- This must be called from a thread context. This is used to release temp tables acquired with
-- @{Threading.AcquireSafeTempTable}.
-- @see TempTable.Release
-- @tparam table tbl The temp table to release
function Threading.ReleaseSafeTempTable(tbl)
	return private.runningThread:_ReleaseSafeTempTable(tbl)
end

--- Release a temp table and returns its contents.
-- This must be called from a thread context. This is used to release and unpack temp tables acquired with
-- @{Threading.AcquireSafeTempTable}.
-- @see TempTable.UnpackAndRelease
-- @tparam table tbl The temp table to release and unpack
-- @return The contents of the temp table
function Threading.UnpackAndReleaseSafeTempTable(tbl)
	return private.runningThread:_UnpackAndReleaseSafeTempTable(tbl)
end

--- Assign ownership of a database query to the thread so that if the thread is killed it'll get released safely.
-- This must be called from a thread context.
-- @tparam DatabaseQuery query The query object
function Threading.GuardDatabaseQuery(query)
	return private.runningThread:_GuardDatabaseQuery(query)
end

--- Removes ownership of a database query from the thread.
-- This must be called from a thread context.
-- @tparam DatabaseQuery query The query object
function Threading.UnguardDatabaseQuery(query)
	return private.runningThread:_UnguardDatabaseQuery(query)
end

function Threading.GetDebugStr()
	local lines = {}
	for _, thread in pairs(private.threads) do
		if thread:_IsAlive() then
			local name, stateStr, timeStr, createStr, startStr, backtrace = thread:_GetDebugInfo()
			tinsert(lines, name)
			tinsert(lines, "  "..stateStr)
			tinsert(lines, "  "..timeStr)
			tinsert(lines, "  "..createStr)
			tinsert(lines, "  "..startStr)
			if #backtrace > 0 then
				tinsert(lines, "  Backtrace:")
				for _, line in ipairs(backtrace) do
					tinsert(lines, "    "..line)
				end
			end
		end
	end
	return table.concat(lines, "\n")
end



-- ============================================================================
-- Thread Class - General Methods
-- ============================================================================

function Thread.__init(self, name, func)
	-- core fields
	self._func = func
	self._co = nil
	self._state = "DEAD"
	self._endTime = nil
	self._sleepTime = nil
	self._eventNames = {}
	self._eventArgs = nil
	self._waitFunction = nil
	self._waitFunctionArgs = nil
	self._waitFunctionResult = nil
	self._waitFuture = nil
	self._waitFutureResult = nil
	self._waitFutureDone = false
	self._syncMessage = nil
	self._syncMessageDest = nil
	self._messages = {}
	self._callback = nil
	self._returnValue = nil
	self._safeTempTables = {}
	self._guardedQueries = {}

	-- debug fields
	self._startTime = 0
	self._cpuTimeUsed = 0
	self._realTimeUsed = 0
	self._name = name or tostring(self)
	self._createCaller = Debug.GetStackLevelLocation(3) or "?"
	self._startCaller = nil
end

function Thread._Start(self, ...)
	self._co = coroutine.create(self._Main)
	self._state = "READY"
	self._endTime = 0
	self._sleepTime = nil
	wipe(self._eventNames)
	self._eventArgs = nil
	self._waitFunction = nil
	self._waitFunctionArgs = nil
	self._waitFunctionResult = nil
	self._waitFuture = nil
	self._waitFutureResult = nil
	self._waitFutureDone = false
	self._syncMessage = nil
	self._syncMessageDest = nil
	assert(not next(self._messages))
	assert(not next(self._safeTempTables))
	assert(not next(self._guardedQueries))
	self._startTime = 0
	self._cpuTimeUsed = 0
	self._realTimeUsed = 0
	self._startCaller = self._startCaller or Debug.GetStackLevelLocation(3)

	-- run the thread once (will yield right away) to pass in self and the arguments
	local noErr, retValue = coroutine.resume(self._co, self, ...)
	assert(noErr and retValue == YIELD_VALUE_START)
end

function Thread._SetCallback(self, callback)
	self._callback = callback
end

function Thread._IsAlive(self)
	return self._state ~= "DEAD"
end

function Thread._ToLogStr(self)
	if self._startTime then
		self._realTimeUsed = GetTimePreciseSec() - self._startTime
		local pctStr = format("%.1f%%", Math.Round(self._cpuTimeUsed / self._realTimeUsed, 0.001) * 100)
		return format("%s [%s,%s]", self._name, self._state, pctStr)
	else
		return format("%s [%s]", self._name, self._state)
	end
end

function Thread._Cleanup(self)
	for _, msg in ipairs(self._messages) do
		TempTable.Release(msg)
	end
	wipe(self._messages)
	for tbl in pairs(self._safeTempTables) do
		TempTable.Release(tbl)
	end
	wipe(self._safeTempTables)
	for query in pairs(self._guardedQueries) do
		query:Release(true)
	end
	wipe(self._guardedQueries)
	self._waitFunction = nil
	if self._waitFunctionArgs then
		TempTable.Release(self._waitFunctionArgs)
		self._waitFunctionArgs = nil
	end
	if self._waitFuture then
		self._waitFuture:Cancel()
		self._waitFuture = nil
		self._waitFutureResult = nil
		self._waitFutureDone = false
	end
	if self._waitFunctionResult then
		TempTable.Release(self._waitFunctionResult)
		self._waitFunctionResult = nil
	end
	if self._syncMessage then
		TempTable.Release(self._syncMessage)
		self._syncMessage = nil
		self._syncMessageDest = nil
	end
end

function Thread._GetDebugInfo(self)
	local stateStr = nil
	if self._state == "SLEEPING" then
		stateStr = format("Sleeping for %d seconds", Math.Round(self._sleepTime, 0.001))
	elseif self._state == "WAITING_FOR_MSG" then
		if #self._messages > 0 then
			stateStr = "Got message"
		else
			stateStr = "Waiting for message"
		end
	elseif self._state == "WAITING_FOR_EVENT" then
		if next(self._eventNames) then
			local eventList = {}
			for event in pairs(self._eventNames) do
				tinsert(eventList, event)
			end
			stateStr = format("Waiting for %s", table.concat(eventList, "|"))
		else
			stateStr = format("Got %s", self._eventArgs[1])
		end
	elseif self._state == "WAITING_FOR_FUNCTION" then
		local functionName = nil
		-- look up to 2 levels deep in the globals table for the name of this function
		for k, v in pairs(_G) do
			if type(v) == "table" then
				for k2, v2 in pairs(v) do
					if v2 == self._waitFunction then
						functionName = tostring(k).."."..tostring(k2)
						break
					end
				end
				if functionName then
					break
				end
			elseif v == self._waitFunction then
				functionName = tostring(k)
				break
			end
		end
		stateStr = format("Waiting for %s", functionName or tostring(self._waitFunction))
	elseif self._state == "WAITING_FOR_FUTURE" then
		stateStr = format("Waiting for future (%s)", self._waitFuture:GetName())
	elseif self._state == "FORCED_YIELD" then
		stateStr = "Forced yield"
	elseif self._state == "SENDING_SYNC_MESSAGE" then
		stateStr = format("Sending sync message to %s", self._syncMessageDest and private.threads[self._syncMessageDest]._name or "?")
	elseif self._state == "RUNNING" then
		stateStr = "Running"
	elseif self._state == "DEAD" then
		stateStr = "Dead"
	elseif self._state == "READY" then
		stateStr = "Ready"
	else
		error("Invalid thread state: "..tostring(self._state))
	end
	if #self._messages > 0 then
		stateStr = format("%s (%d messages)", stateStr, #self._messages)
	end

	local timeStr = "<Not Started>"
	if self._startTime then
		local wallTime = GetTimePreciseSec() - self._startTime
		local cpuTime = self._cpuTimeUsed
		timeStr = format("Running for %.1f seconds (CPU: %dms, %.2f%%)", wallTime, cpuTime, (cpuTime / wallTime) * 100)
	end

	local createStr = "Created @"..self._createCaller
	local startStr = "Started @"..(self._startCaller or "<Not Started>")

	local backtrace = {}
	local level = 2
	local line = Debug.GetStackLevelLocation(level, self._co)
	while line do
		tinsert(backtrace, line)
		level = level + 1
		line = Debug.GetStackLevelLocation(level, self._co)
	end


	return self._name, stateStr, timeStr, createStr, startStr, backtrace
end



-- ============================================================================
-- Thread Class - Scheduler Helper Methods
-- ============================================================================

function Thread._CanRun(self)
	return self._state == "READY"
end

function Thread._Run(self, quantum)
	assert(not Threading.IsThreadContext())
	if not self:_CanRun() then
		return 0
	end
	private.runningThread = self
	self._state = "RUNNING"
	local startTime = GetTimePreciseSec()
	self._endTime = startTime + quantum
	local noErr, returnVal = coroutine.resume(self._co)
	local elapsedTime = GetTimePreciseSec() - startTime
	private.runningThread = nil

	assert(not noErr or returnVal == YIELD_VALUE)
	if noErr and self._state == "SENDING_SYNC_MESSAGE" then
		-- yielded to send a sync message to another thread
		local destThread = private.threads[self._syncMessageDest]
		local msg = self._syncMessage
		self._syncMessage = nil
		self._syncMessageDest = nil
		local errMsg = destThread:_HandleSyncMessage(TempTable.UnpackAndRelease(msg))
		if errMsg then
			noErr = false
			returnVal = errMsg
		elseif self._state == "SENDING_SYNC_MESSAGE" then
			self._state = "READY"
		end
	end
	if not noErr then
		returnVal = returnVal or "UNKNOWN ERROR"
		ErrorHandler.ShowForThread(returnVal, self._co)
		self._state = "DEAD"
	end
	if self._state == "DEAD" then
		self:_Cleanup()
		local returnValue = self._returnValue
		self._returnValue = nil
		if self._callback and returnValue then
			self._callback(TempTable.UnpackAndRelease(returnValue))
		elseif returnValue then
			TempTable.Release(returnValue)
		end
	end
	return elapsedTime
end

function Thread._UpdateState(self, elapsed)
	-- check what the thread state is
	if self._state == "SLEEPING" then
		self._sleepTime = self._sleepTime - elapsed
		if self._sleepTime <= 0 then
			self._sleepTime = nil
			self._state = "READY"
		end
	elseif self._state == "WAITING_FOR_MSG" then
		if #self._messages > 0 then
			self._state = "READY"
		end
	elseif self._state == "WAITING_FOR_EVENT" then
		assert(self._eventNames or self._eventArgs)
		if self._eventArgs then
			self._state = "READY"
		end
	elseif self._state == "WAITING_FOR_FUNCTION" then
		assert(self._waitFunction, "Waiting for function without waitFunction set")
		local result = TempTable.Acquire(self._waitFunction(unpack(self._waitFunctionArgs)))
		if result[1] then
			self._waitFunctionResult = result
			self._state = "READY"
		else
			TempTable.Release(result)
		end
	elseif self._state == "WAITING_FOR_FUTURE" then
		if self._waitFutureDone then
			assert(not self._waitFuture)
			self._waitFutureDone = false
			self._state = "READY"
		else
			assert(self._waitFuture)
		end
	elseif self._state == "FORCED_YIELD" then
		self._state = "READY"
	elseif self._state == "RUNNING" then
		-- this shouldn't happen, so just kill this thread
		self:_Exit()
	elseif self._state == "DEAD" then
		-- pass
	elseif self._state == "READY" then
		-- pass
	else
		error("Invalid thread state: "..tostring(self._state))
	end
end

function Thread._ProcessEvent(self, event, ...)
	if self._state ~= "WAITING_FOR_EVENT" then
		return
	end
	assert(next(self._eventNames) or self._eventArgs)
	if not self._eventNames[event] then
		return
	end
	wipe(self._eventNames) -- only trigger the event once then clear all
	self._eventArgs = TempTable.Acquire(event, ...)
end

function Thread._OnFutureDone(self, future)
	if self._state ~= "WAITING_FOR_FUTURE" then
		return
	end
	assert(self._waitFuture or self._waitFutureDone)
	if future ~= self._waitFuture then
		return
	end
	self._waitFutureDone = true
	self._waitFuture = nil
	self._waitFutureResult = future:GetValue()
	self:_UpdateState(0)
	self:_Run(0)
end

function Thread._HandleSyncMessage(self, ...)
	assert(not Threading.IsThreadContext())
	local msg = TempTable.Acquire(...)
	tinsert(self._messages, 1, msg) -- this message should be received first
	-- run the thread for up to 3 seconds to get it to process the sync message
	local startTime = GetTimePreciseSec()
	while self._messages[1] == msg do
		if GetTimePreciseSec() - startTime > SEND_MSG_SYNC_TIMEOUT or not self:_IsAlive() then
			-- want to error from the sending context, so just return the error
			return format("ERROR: A sync message was not able to be delivered! (%s)", self._name)
		end
		assert(self._state ~= "SENDING_SYNC_MESSAGE", "Circular sync message detected")
		if self._state == "WAITING_FOR_MSG" then
			self._state = "READY"
		end
		self:_Run(0)
	end
end



-- ============================================================================
-- Thread Class - Thread Context Methods
-- ============================================================================

function Thread._Main(self, ...)
	self._startTime = GetTimePreciseSec()
	coroutine.yield(YIELD_VALUE_START)
	self._returnValue = TempTable.Acquire(self._func(...))
	self:_Exit()
end

function Thread._Yield(self, force)
	if force or self._state ~= "RUNNING" or GetTimePreciseSec() > self._endTime then
		-- only change the state if it's currently set to RUNNING
		if self._state == "RUNNING" then
			self._state = force and "FORCED_YIELD" or "READY"
		end
		coroutine.yield(YIELD_VALUE)
	end
end

function Thread._Sleep(self, seconds)
	self._state = "SLEEPING"
	self._sleepTime = seconds
	self:_Yield()
end

function Thread._HasPendingMessage(self)
	return #self._messages > 0
end

function Thread._ReceiveMessage(self)
	if #self._messages == 0 then
		-- change the state if there's no messages ready
		self._state = "WAITING_FOR_MSG"
	elseif GetTimePreciseSec() > self._endTime then
		-- If we're about to yield, set the state to WAITING_FOR_MSG even if we have messages in the queue
		-- to allow sync messages to be sent to us.
		self._state = "WAITING_FOR_MSG"
	end
	self:_Yield()
	return TempTable.UnpackAndRelease(tremove(self._messages, 1))
end

function Thread._SendSyncMessage(self, destThread, ...)
	assert(destThread ~= self)
	self._state = "SENDING_SYNC_MESSAGE"
	self._syncMessageDest = destThread
	self._syncMessage = TempTable.Acquire(...)
	self:_Yield()
end

function Thread._WaitForEvent(self, ...)
	self._state = "WAITING_FOR_EVENT"
	self._eventArgs = nil
	for _, event in Vararg.Iterator(...) do
		self._eventNames[event] = true
		private.schedulerFrame:RegisterEvent(event)
	end
	local st = GetTime()
	self:_Yield()
	local yieldTime = GetTime() - st
	if yieldTime > 5 then
		local firstEvent = ...
		Log.Warn("Waited %d seconds for %s", yieldTime, firstEvent)
	end
	local result = self._eventArgs
	self._eventArgs = nil
	return TempTable.UnpackAndRelease(result)
end

function Thread._WaitForFunction(self, func, ...)
	-- try the function once before yielding
	local result = TempTable.Acquire(func(...))
	if result[1] then
		return TempTable.UnpackAndRelease(result)
	end
	TempTable.Release(result)
	-- do the yield
	self._state = "WAITING_FOR_FUNCTION"
	self._waitFunction = func
	self._waitFunctionArgs = TempTable.Acquire(...)
	self:_Yield()
	result = self._waitFunctionResult
	self._waitFunction = nil
	TempTable.Release(self._waitFunctionArgs)
	self._waitFunctionArgs = nil
	self._waitFunctionResult = nil
	return TempTable.UnpackAndRelease(result)
end

function Thread._WaitForFuture(self, future)
	-- try the future once before yielding
	if future:IsDone() then
		return future:GetValue()
	end
	-- register our OnDone handler and do the yield
	future:SetScript("OnDone", private.OnFutureDone)
	self._state = "WAITING_FOR_FUTURE"
	self._waitFuture = future
	self:_Yield()
	local result = self._waitFutureResult
	self._waitFutureResult = nil
	return result
end

function Thread._AcquireSafeTempTable(self, ...)
	local tbl = TempTable.Acquire(...)
	assert(not self._safeTempTables[tbl])
	self._safeTempTables[tbl] = true
	return tbl
end

function Thread._ReleaseSafeTempTable(self, tbl)
	assert(self._safeTempTables[tbl])
	self._safeTempTables[tbl] = nil
	return TempTable.Release(tbl)
end

function Thread._UnpackAndReleaseSafeTempTable(self, tbl)
	assert(self._safeTempTables[tbl])
	self._safeTempTables[tbl] = nil
	return TempTable.UnpackAndRelease(tbl)
end

function Thread._GuardDatabaseQuery(self, query)
	assert(not self._guardedQueries[query])
	self._guardedQueries[query] = true
end

function Thread._UnguardDatabaseQuery(self, query)
	assert(self._guardedQueries[query])
	self._guardedQueries[query] = nil
end

function Thread._Exit(self)
	assert(self:_IsAlive())
	self._state = "DEAD"
	self:_Cleanup()
	Log.Info("Thread finished: %s", self:_ToLogStr())
	if self == private.runningThread then
		coroutine.yield(YIELD_VALUE)
		error("Shouldn't get here")
	elseif self._returnValue then
		TempTable.Release(self._returnValue)
		self._returnValue = nil
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.StartScheduler()
	if private.schedulerFrame:IsVisible() then
		return
	end
	Log.Info("Starting scheduler")
	private.schedulerFrame:Show()
end

function private.RunScheduler(_, elapsed)
	-- don't run any threads while in combat
	if InCombatLockdown() then
		return
	end
	local startTime = GetTimePreciseSec()
	local numReadyThreads = 0
	wipe(private.queue)

	-- go through all the threads, update their state, and add the ready ones into the queue
	for _, thread in pairs(private.threads) do
		thread:_UpdateState(elapsed)
		if thread:_CanRun() then
			numReadyThreads = numReadyThreads + 1
			tinsert(private.queue, thread)
		end
	end

	local remainingTime = min(elapsed * MAX_TIME_USAGE_RATIO, MAX_QUANTUM)
	while remainingTime > 0.00001 do
		local ranThread = false
		for i = #private.queue, 1, -1 do
			local thread = private.queue[i]
			if thread:_CanRun() then
				local quantum = remainingTime / numReadyThreads
				local elapsedTime = thread:_Run(quantum)
				thread._cpuTimeUsed = thread._cpuTimeUsed + elapsedTime
				remainingTime = remainingTime - min(elapsedTime, quantum)
				-- any thread which ran excessively long should be ignored for future loops
				if elapsedTime > EXCESSIVE_TIME_USED_RATIO * quantum and elapsedTime > quantum + 1 then
					if elapsedTime > EXCESSIVE_TIME_LOG_THRESHOLD then
						local line = Debug.GetStackLevelLocation(2, thread._co)
						Log.Warn("Thread %s ran too long (%.4f/%.4f): %s", thread._name, elapsedTime, quantum, line or "?")
					end
					tremove(private.queue, i)
				end
				ranThread = true
			end
		end
		if not ranThread then
			break
		end
	end

	local hasAliveThread = false
	for _, thread in pairs(private.threads) do
		if thread:_IsAlive() then
			hasAliveThread = true
			break
		end
	end
	if not hasAliveThread then
		Log.Info("Stopping the scheduler")
		private.schedulerFrame:Hide()
	end

	local timeTaken = GetTimePreciseSec() - startTime
	if timeTaken > SCHEDULER_TIME_WARNING_THRESHOLD then
		Log.Warn("Scheduler took %.5fs", timeTaken)
	end
end

function private.ProcessEvent(self, event, ...)
	local startTime = GetTimePreciseSec()
	for _, thread in pairs(private.threads) do
		thread:_ProcessEvent(event, ...)
	end
	local timeTaken = GetTimePreciseSec() - startTime
	if timeTaken > SCHEDULER_TIME_WARNING_THRESHOLD then
		Log.Warn("Scheduler took %.5fs to process %s", timeTaken, tostring(event))
	end
end

function private.OnFutureDone(future)
	for _, thread in pairs(private.threads) do
		thread:_OnFutureDone(future)
	end
end



-- ============================================================================
-- Driver Frame
-- ============================================================================

do
	private.schedulerFrame = CreateFrame("Frame")
	private.schedulerFrame:Hide()
	private.schedulerFrame:SetScript("OnUpdate", private.RunScheduler)
	private.schedulerFrame:SetScript("OnEvent", private.ProcessEvent)
end
