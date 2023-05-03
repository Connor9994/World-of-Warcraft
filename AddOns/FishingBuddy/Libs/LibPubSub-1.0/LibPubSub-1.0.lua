assert(LibStub, 'LibPubSub-1.0 requires LibStub')
local LibPubSub = LibStub:NewLibrary('LibPubSub-1.0', 1)

if not LibPubSub then return end

-- Localise global functions
local _G = _G
local assert, geterrorhandler, xpcall = _G.assert, _G.geterrorhandler, _G.xpcall
local type, pairs, unpack, insert, remove = _G.type, _G.pairs, _G.unpack, _G.table.insert, _G.table.remove

local api = {}

LibPubSub.embeds = LibPubSub.embeds or {}

function LibPubSub:New()
	return self:Embed({})
end

function LibPubSub:Embed(target)
	for method, fn in pairs(api) do
		target[method] = fn
	end
	target._listeners = {}

	LibPubSub.embeds[target] = true
	return target
end

for target in pairs(LibPubSub.embeds) do
	LibPubSub:Embed(target)
end

local function catch(e)
	return geterrorhandler()(e)
end

local function makeCallable(fn, ...)
	local args = {...}
	local callable = function()
		fn(unpack(args))
	end

	return callable
end

local function isEnabled(self)
	local enabled = true

	if type(self.IsEnabled) == 'function' then
		enabled = self:IsEnabled()
	end

	return enabled
end

local function makeListener(self, message, object, fn)
	local objectType = type(object)
	local listener

	if objectType == 'function' then
		listener = object
	elseif objectType == 'nil' then
		listener = {self, message}
	elseif objectType == 'string' then
		listener = {self, object}
	elseif objectType == 'table' then
		if type(fn) == 'string' then
			listener = {object, fn}
		else
			listener = {object, message}
		end
	end

	return listener
end

function api:Publish(message, ...)
	assert(type(message) == 'string', 'Invalid arguments to Publish')

	if isEnabled(self) and self._listeners[message] then
		for _, listener in pairs(self._listeners[message]) do
			if type(listener) == 'table' then
				local object, fn = unpack(listener)
				xpcall(makeCallable(object[fn], object, ...), catch)
			else
				xpcall(makeCallable(listener, ...), catch)
			end
		end
	end
end

function api:Subscribe(message, object, fn)
	local messageType, objectType, fnType = type(message), type(object), type(fn)
	assert(
		messageType == 'table' or
		messageType == 'string' and (
			objectType == 'nil' or
			objectType == 'function' or
			objectType == 'string' or
			objectType == 'table' and (fnType == 'string' or fnType == 'nil')
		),
		'Invalid arguments to Subscribe'
	)

	if type(message) == 'table' then
		for index, item in pairs(message) do
			self:Subscribe(index, item)
		end
	else
		local listeners = self._listeners[message]
		local listener = makeListener(self, message, object, fn)

		if not listeners then
			self._listeners[message] = {listener}
		else
			insert(listeners, listener)
		end
	end
end

function api:Unsubscribe(message, object, fn)
	local messageType, objectType, fnType = type(message), type(object), type(fn)
	assert(
		messageType == 'table' or
		messageType == 'string' and (
			objectType == 'nil' or
			objectType == 'function' or
			objectType == 'string' or
			objectType == 'table' and (fnType == 'string' or fnType == 'nil')
		),
		'Invalid arguments to Unsubscribe'
	)

	if type(message) == 'table' then
		for index, item in pairs(message) do
			self:Unsubscribe(index, item)
		end
	else
		local listeners = self._listeners[message]

		if listeners then
			local listener = makeListener(self, message, object, fn)

			if type(listener) == 'table' then
				for index, item in pairs(listeners) do
					if type(item) == 'table' then
						if item[1] == listener[1] and item[2] == listener[2] then
							remove(listeners, index)
						end
					end
				end
			else
				for index, item in pairs(listeners) do
					if item == listener then
						remove(listeners, index)
					end
				end
			end
		end
	end
end

function api:UnsubscribeAll()
	for message, listeners in pairs(self._listeners) do
		for index = #listeners, 1, -1 do
			remove(listeners, index)
		end
	end
end
