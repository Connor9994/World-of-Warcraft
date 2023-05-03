-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local State = TSM.Init("Util.ReactiveClasses.State") ---@class Util.ReactiveClasses.State
local Publisher = TSM.Include("Util.ReactiveClasses.Publisher")
local Table = TSM.Include("Util.Table")
local private = {
	nextPublisherId = 1,
	stateContext = {},
	debugLinesTemp = {},
}



-- ============================================================================
-- State Methods
-- ============================================================================

local STATE_METHODS = {} ---@class ReactiveState

---Creates a new publisher which gets published values from the state.
---@return ReactivePublisher @The publisher object
function STATE_METHODS:Publisher()
	local context = private.stateContext[self]
	local publisher = Publisher.Get()
	publisher:_Acquire(self)
	assert(not context.publishers[publisher])
	context.publishers[publisher] = private.nextPublisherId
	private.nextPublisherId = private.nextPublisherId + 1
	tinsert(context.publishers, publisher)
	return publisher
end

---Creates a new publisher for a specific key of the state.
---@param key string The key to create a publisher for (ignoring duplicate values)
---@return ReactivePublisher @The publisher object
function STATE_METHODS:PublisherForKeyChange(key)
	local context = private.stateContext[self]
	assert(context.schema:_HasKey(key))
	return self:Publisher()
		:MapWithKey(key)
		:IgnoreDuplicates()
end

---Resets the state to its default value
function STATE_METHODS:ResetToDefault()
	local context = private.stateContext[self]
	wipe(context.data)
	context.schema:_ApplyDefaults(context.data)
	self:_HandleDataChanged()
end

---Automatically stores any new publishers in the specified table
---@param tbl table The table to store new publishers in
function STATE_METHODS:SetAutoStore(tbl)
	local context = private.stateContext[self]
	context.autoStore = tbl
end

function STATE_METHODS:_GetData()
	return private.stateContext[self].data
end

function STATE_METHODS:_HandlePublisherEvent(publisher, event, arg)
	local context = private.stateContext[self]
	if event == "OnHandled" then
		if context.autoStore then
			publisher:StoreIn(context.autoStore)
		end
	elseif event == "OnCommit" then
		assert(arg, "State publishers must be optimized")
		-- Send the initial value
		publisher:_HandleData(context.data)
	elseif event == "OnCancel" then
		assert(context.publishers[publisher])
		context.publishers[publisher] = nil
		assert(Table.RemoveByValue(context.publishers, publisher) == 1)
	else
		error("Unknown event: "..tostring(event))
	end
end

function STATE_METHODS:_HandleDataChanged(key)
	local context = private.stateContext[self]
	if context.handlingDataChange then
		-- We are already in the middle of processing another event, so queue this one up
		tinsert(context.dataChangeQueue, key)
		assert(#context.dataChangeQueue < 50)
		return
	end
	context.handlingDataChange = true
	self:_CallPublishersHandleData(key)
	-- Process queued keys
	while #context.dataChangeQueue > 0 do
		local queuedKey = tremove(context.dataChangeQueue, 1)
		self:_CallPublishersHandleData(queuedKey)
	end
	context.handlingDataChange = false
end

function STATE_METHODS:_CallPublishersHandleData(key)
	local context = private.stateContext[self]
	-- The list of publishers can change as a result of calling _HandleData() so copy them to a
	-- temp table and verify they are still subscribed before calling them.
	assert(not next(context.dataChangeTemp))
	local maxId = 0
	for _, publisher in ipairs(context.publishers) do
		tinsert(context.dataChangeTemp, publisher)
		maxId = max(maxId, context.publishers[publisher])
	end
	local data = context.data
	while #context.dataChangeTemp > 0 do
		local publisher = tremove(context.dataChangeTemp)
		local id = context.publishers[publisher]
		if id and id <= maxId then
			publisher:_HandleData(data, key)
		end
	end
end



-- ============================================================================
-- State Metatable
-- ============================================================================

local STATE_MT = {
	__index = function(self, key)
		if STATE_METHODS[key] then
			return STATE_METHODS[key]
		end
		local context = private.stateContext[self]
		if not context.schema:_HasKey(key) then
			error("Invalid key: "..tostring(key))
		end
		return context.data[key]
	end,
	__newindex = function(self, key, value)
		local context = private.stateContext[self]
		local data = context.data
		if data[key] == value then
			return
		end
		context.schema:_ValidateValueForKey(key, value)
		data[key] = value
		self:_HandleDataChanged(key)
	end,
	__metatable = false,
}



-- ============================================================================
-- Module Methods
-- ============================================================================

---Creates a new state object.
---@return ReactiveState @The state
function State.Create(schema)
	local state = setmetatable({}, STATE_MT)
	local data = {}
	schema:_ApplyDefaults(data)
	private.stateContext[state] = {
		schema = schema,
		data = data,
		publishers = {},
		autoStore = nil,
		handlingDataChange = false,
		dataChangeQueue = {},
		dataChangeTemp = {},
	}
	return state
end

function State.GetDebugInfo(state)
	local context = private.stateContext[state]
	if not context then
		return nil
	end
	assert(not next(private.debugLinesTemp))
	for key, fieldType in context.schema:_FieldIterator() do
		local value = context.data[key]
		if value ~= nil then
			if fieldType == "string" then
				tinsert(private.debugLinesTemp, format("%s = \"%s\"", key, value))
			else
				tinsert(private.debugLinesTemp, format("%s = %s", key, tostring(value)))
			end
		end
	end
	local result = table.concat(private.debugLinesTemp, "\n")
	wipe(private.debugLinesTemp)
	return result
end
