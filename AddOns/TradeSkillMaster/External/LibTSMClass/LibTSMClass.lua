--- LibTSMClass Library
-- Allows for OOP in lua through the implementation of classes. Many features of proper classes are supported including
-- inhertiance, polymorphism, and virtual methods.
-- @author TradeSkillMaster Team (admin@tradeskillmaster.com)
-- @license MIT
-- @module LibTSMClass

local MINOR_REVISION = 2
local Lib = {} ---@class LibTSMClass
local private = { classInfo = {}, instInfo = {}, constructTbl = nil, tempTable = {} }
-- Set the keys as weak so that instances of classes can be GC'd (classes are never GC'd)
setmetatable(private.instInfo, { __mode = "k" })
local SPECIAL_PROPERTIES = {
	__init = true,
	__tostring = true,
	__dump = true,
	__class = true,
	__isa = true,
	__super = true,
	__name = true,
	__as = true,
	__static = true,
	__private = true,
	__protected = true,
	__abstract = true,
}
local RESERVED_KEYS = {
	__super = true,
	__isa = true,
	__class = true,
	__name = true,
	__as = true,
	__static = true,
	__private = true,
	__protected = true,
	__abstract = true,
	__closure = true,
}
local DEFAULT_INST_FIELDS = {
	__init = function(self)
		-- do nothing
	end,
	__tostring = function(self)
		return private.instInfo[self].str
	end,
	__dump = function(self)
		private.InstDump(self)
	end,
}
local DUMP_KEY_PATH_DELIM = "\001"



-- ============================================================================
-- Public Library Functions
-- ============================================================================

---@alias ClassProperties
---|'"ABSTRACT"' # An abstract class cannot be directly instantiated

---Defines a new class.
---@generic T: Class
---@param name `T` The name of the class
---@param superclass? any The superclass
---@param ... ClassProperties Properties to define the class with
---@return T
function Lib.DefineClass(name, superclass, ...)
	if type(name) ~= "string" then
		error("Invalid class name: "..tostring(name), 2)
	end
	if superclass ~= nil and (type(superclass) ~= "table" or not private.classInfo[superclass]) then
		error("Invalid superclass: "..tostring(superclass), 2)
	end
	local abstract = false
	for i = 1, select('#', ...) do
		local modifier = select(i, ...)
		if modifier == "ABSTRACT" then
			abstract = true
		else
			error("Invalid modifier: "..tostring(modifier), 2)
		end
	end

	local class = setmetatable({}, private.CLASS_MT)
	private.classInfo[class] = {
		name = name,
		static = {},
		superStatic = {},
		superclass = superclass,
		abstract = abstract,
		referenceType = nil,
		subclassed = false,
		methodProperties = nil, -- set as needed
	}
	while superclass do
		for key, value in pairs(private.classInfo[superclass].static) do
			if not private.classInfo[class].superStatic[key] then
				private.classInfo[class].superStatic[key] = { class = superclass, value = value }
			end
		end
		private.classInfo[superclass].subclassed = true
		superclass = superclass.__super
	end
	return class
end

---Constructs a class from an existing table, preserving its keys.
---@generic T
---@param tbl table The table with existing keys to preserve
---@param class T The class to construct
---@param ... any Arguments to pass to the constructor
---@return T
function Lib.ConstructWithTable(tbl, class, ...)
	private.constructTbl = tbl
	local inst = class(...)
	assert(not private.constructTbl and inst == tbl, "Internal error")
	return inst
end

---Gets instance properties from an instance string for debugging purposes.
---@param instStr string The string representation of the instance
---@param maxDepth number The maximum depth to recurse into tables
---@param tableLookupFunc? fun(tbl: table): string? A lookup function which is used to get debug information for an unknown table
---@return string? @The properties dumped as a multiline string
function Lib.GetDebugInfo(instStr, maxDepth, tableLookupFunc)
	local inst = nil
	for obj, info in pairs(private.instInfo) do
		if info.str == instStr then
			inst = obj
			break
		end
	end
	if not inst then
		return nil
	end
	assert(not next(private.tempTable))
	private.InstDump(inst, private.tempTable, maxDepth, tableLookupFunc)
	local result = table.concat(private.tempTable, "\n")
	wipe(private.tempTable)
	return result
end



-- ============================================================================
-- Instance Metatable
-- ============================================================================

private.INST_MT = {
	__newindex = function(self, key, value)
		if RESERVED_KEYS[key] then
			error("Can't set reserved key: "..tostring(key), 2)
		end
		if private.classInfo[self.__class].static[key] ~= nil then
			private.classInfo[self.__class].static[key] = value
		elseif not private.instInfo[self].hasSuperclass then
			-- we just set this directly on the instance table for better performance
			rawset(self, key, value)
		else
			private.instInfo[self].fields[key] = value
		end
	end,
	__index = function(self, key)
		-- This method is super optimized since it's used for every class instance access, meaning function calls and
		-- table lookup is kept to an absolute minimum, at the expense of readability and code reuse.
		local instInfo = private.instInfo[self]

		-- check if this key is an instance field first, since this is the most common case
		local res = instInfo.fields[key]
		if res ~= nil then
			instInfo.currentClass = nil
			return res
		end

		-- check if it's a special field / method
		if key == "__super" then
			if not instInfo.hasSuperclass then
				error("The class of this instance has no superclass", 2)
			end
			-- The class of the current class method we are in, or nil if we're not in a class method.
			local methodClass = instInfo.methodClass
			-- We can only access the superclass within a class method and will use the class which defined that method
			-- as the base class to jump to the superclass of, regardless of what class the instance actually is.
			if not methodClass then
				error("The superclass can only be referenced within a class method", 2)
			end
			return private.InstAs(self, private.classInfo[instInfo.currentClass or methodClass].superclass)
		elseif key == "__as" then
			return private.InstAs
		elseif key == "__closure" then
			return private.InstClosure
		end

		-- reset the current class since we're not continuing the __super chain
		local class = instInfo.currentClass or instInfo.class
		instInfo.currentClass = nil

		-- check if this is a static key
		local classInfo = private.classInfo[class]
		res = classInfo.static[key]
		if res ~= nil then
			return res
		end

		-- check if it's a static field in the superclass
		local superStaticRes = classInfo.superStatic[key]
		if superStaticRes then
			res = superStaticRes.value
			return res
		end

		-- check if this field has a default value
		res = DEFAULT_INST_FIELDS[key]
		if res ~= nil then
			return res
		end

		return nil
	end,
	__tostring = function(self)
		return self:__tostring()
	end,
	__metatable = false,
}



-- ============================================================================
-- Class Metatable
-- ============================================================================

private.CLASS_MT = {
	__newindex = function(self, key, value)
		if type(key) ~= "string" then
			error("Can't index class with non-string key", 2)
		end
		local classInfo = private.classInfo[self]
		if classInfo.subclassed then
			error("Can't modify classes after they are subclassed", 2)
		end
		if classInfo.static[key] then
			error("Can't modify or override static members", 2)
		end
		if RESERVED_KEYS[key] then
			error("Reserved word: "..key, 2)
		end
		local isMethod = type(value) == "function"
		local methodProperty = classInfo.referenceType
		classInfo.referenceType = nil
		if methodProperty == "STATIC" then
			-- we are defining a static class function, not a class method
			if not isMethod then
				error("Unnecessary __static for non-function class property", 2)
			end
			classInfo.methodProperties = classInfo.methodProperties or {}
			classInfo.methodProperties[key] = methodProperty
			isMethod = false
		end
		if isMethod then
			local superclass = classInfo.superclass
			while superclass do
				local superclassInfo = private.classInfo[superclass]
				local superclassMethodProperty = superclassInfo.methodProperties and superclassInfo.methodProperties[key] or nil
				if superclassInfo.static[key] ~= nil or superclassMethodProperty ~= nil then
					if superclassInfo.static[key] ~= nil and type(superclassInfo.static[key]) ~= "function" then
						error(format("Attempting to override non-method superclass property (%s) with method", key), 2)
					end
					if superclassMethodProperty == nil then
						-- Can only override public methods with public methods
						if methodProperty ~= nil then
							error(format("Overriding a public superclass method (%s) can only be done with a public method", key), 2)
						end
					elseif superclassMethodProperty == "ABSTRACT" then
						-- Can only override abstract methods with protected methods
						if methodProperty ~= "PROTECTED" then
							error(format("Overriding an abstract superclass method (%s) can only be done with a protected method", key), 2)
						end
					elseif superclassMethodProperty == "PROTECTED" then
						-- Can only override protected methods with protected methods
						if methodProperty ~= "PROTECTED" then
							error(format("Overriding a protected superclass method (%s) can only be done with a protected method", key), 2)
						end
					elseif superclassMethodProperty == "STATIC" then
						-- Can't override static properties with methods
						error(format("Can't override static superclass property (%s) with method", key), 2)
					elseif superclassMethodProperty == "PRIVATE" then
						-- Can't override private methods
						error(format("Can't override private superclass method (%s)", key), 2)
					else
						-- luacov: disable
						-- Should never get here
						error("Unexpected superclassMethodProperty: "..tostring(superclassMethodProperty))
						-- luacov: enable
					end
					-- Just need to go up the superclass tree until we find the first one which references this key
					break
				end
				superclass = superclassInfo.superclass
			end
			local isPrivate, isProtected = false, false
			if methodProperty ~= nil then
				classInfo.methodProperties = classInfo.methodProperties or {}
				classInfo.methodProperties[key] = methodProperty
				if methodProperty == "PRIVATE" then
					isPrivate = true
				elseif methodProperty == "PROTECTED" then
					isProtected = true
				elseif methodProperty == "ABSTRACT" then
					-- Just need to set the property
					return
				else
					-- luacov: disable
					-- Should never get here
					error("Unknown method property: "..tostring(methodProperty))
					-- luacov: enable
				end
			end
			-- We wrap class methods so that within them, the instance appears to be of the defining class
			classInfo.static[key] = function(inst, ...)
				local instInfo = private.instInfo[inst]
				if not instInfo or not instInfo.isClassLookup[self] then
					error(format("Attempt to call class method on non-object (%s)", tostring(inst)), 2)
				end
				local prevMethodClass = instInfo.methodClass
				if isPrivate and prevMethodClass ~= self then
					error(format("Attempting to call private method (%s) from outside of class", key), 2)
				end
				if isProtected and prevMethodClass == nil then
					error(format("Attempting to call protected method (%s) from outside of class", key), 2)
				end
				instInfo.methodClass = self
				return private.InstMethodReturnHelper(prevMethodClass, instInfo, value(inst, ...))
			end
		else
			classInfo.static[key] = value
		end
	end,
	__index = function(self, key)
		local classInfo = private.classInfo[self]
		if classInfo.referenceType ~= nil then
			error("Can't index into property table", 2)
		end
		if key == "__isa" then
			return private.ClassIsA
		elseif key == "__name" then
			return classInfo.name
		elseif key == "__super" then
			return classInfo.superclass
		elseif key == "__static" then
			classInfo.referenceType = "STATIC"
			return self
		elseif key == "__private" then
			classInfo.referenceType = "PRIVATE"
			return self
		elseif key == "__protected" then
			classInfo.referenceType = "PROTECTED"
			return self
		elseif key == "__abstract" then
			if not classInfo.abstract then
				error("Can only define abstract methods on abstract classes", 2)
			end
			classInfo.referenceType = "ABSTRACT"
			return self
		elseif classInfo.static[key] ~= nil then
			return classInfo.static[key]
		elseif classInfo.superStatic[key] then
			return classInfo.superStatic[key].value
		end
		error(format("Invalid static class key (%s)", tostring(key)), 2)
	end,
	__tostring = function(self)
		return "class:"..private.classInfo[self].name
	end,
	__call = function(self, ...)
		if private.classInfo[self].abstract then
			error("Attempting to instantiate an abstract class", 2)
		end
		-- Create a new instance of this class
		local inst = private.constructTbl or {}
		local instStr = strmatch(tostring(inst), "table:[^0-9a-fA-F]*([0-9a-fA-F]+)")
		setmetatable(inst, private.INST_MT)
		local classInfo = private.classInfo[self]
		local hasSuperclass = classInfo.superclass and true or false
		private.instInfo[inst] = {
			class = self,
			fields = {
				__class = self,
				__isa = private.InstIsA,
			},
			str = classInfo.name..":"..instStr,
			isClassLookup = {},
			hasSuperclass = hasSuperclass,
			currentClass = nil,
			closures = {},
		}
		if not hasSuperclass then
			-- set the static members directly on this object for better performance
			for key, value in pairs(classInfo.static) do
				if not SPECIAL_PROPERTIES[key] then
					rawset(inst, key, value)
				end
			end
		end
		local c = self
		while c do
			private.instInfo[inst].isClassLookup[c] = true
			c = private.classInfo[c].superclass
			if c and private.classInfo[c] and private.classInfo[c].methodProperties then
				for methodName, property in pairs(private.classInfo[c].methodProperties) do
					if property == "ABSTRACT" and type(classInfo.static[methodName]) ~= "function" then
						error("Missing abstract method: "..tostring(methodName), 2)
					end
				end
			end
		end
		if private.constructTbl then
			-- re-set all the object attributes through the proper metamethod
			assert(not next(private.tempTable))
			for k, v in pairs(inst) do
				private.tempTable[k] = v
			end
			for k, v in pairs(private.tempTable) do
				rawset(inst, k, nil)
				inst[k] = v
			end
			wipe(private.tempTable)
			private.constructTbl = nil
		end
		if select("#", inst:__init(...)) > 0 then
			error("__init(...) must not return any values", 2)
		end
		return inst
	end,
	__metatable = false,
}



-- ============================================================================
-- Helper Functions
-- ============================================================================

function private.ClassIsA(class, targetClass)
	while class do
		if class == targetClass then return true end
		class = class.__super
	end
end

function private.InstMethodReturnHelper(class, instInfo, ...)
	-- reset methodClass now that the function returned
	instInfo.methodClass = class
	return ...
end

function private.InstIsA(inst, targetClass)
	return private.instInfo[inst].isClassLookup[targetClass]
end

function private.InstAs(inst, targetClass)
	local instInfo = private.instInfo[inst]
	-- Clear currentClass while we perform our checks so we can better recover from errors
	instInfo.currentClass = nil
	if not targetClass then
		error(format("Requested class does not exist"), 2)
	elseif not instInfo.isClassLookup[targetClass] then
		error(format("Object is not an instance of the requested class (%s)", tostring(targetClass)), 2)
	end
	-- For classes with no superclass, we don't go through the __index metamethod, so can't use __as
	if not instInfo.hasSuperclass then
		error("The class of this instance has no superclass", 2)
	end
	-- We can only access the superclass within a class method.
	if not instInfo.methodClass then
		error("The superclass can only be referenced within a class method", 2)
	end
	instInfo.currentClass = targetClass
	return inst
end

function private.InstClosure(inst, methodName)
	local instInfo = private.instInfo[inst]
	-- The class of the current class method we are in, or nil if we're not in a class method.
	if not instInfo.methodClass then
		error("Closures can only be created within a class method", 2)
	end
	local class = instInfo.methodClass
	local methodFunc = private.classInfo[class].static[methodName]
	if type(methodFunc) ~= "function" then
		error("Attempt to create closure for non-method field", 2)
	end
	local cacheKey = tostring(class).."."..methodName
	if not instInfo.closures[cacheKey] then
		instInfo.closures[cacheKey] = function(...)
			if instInfo.methodClass == class then
				-- We're already within a method of the class, so just call the method normally
				return methodFunc(inst, ...)
			else
				-- Pretend we are within the class which created the closure
				local prevClass = instInfo.methodClass
				instInfo.methodClass = class
				return private.InstMethodReturnHelper(prevClass, instInfo, methodFunc(inst, ...))
			end
		end
	end
	return instInfo.closures[cacheKey]
end

function private.InstDump(inst, resultTbl, maxDepth, tableLookupFunc)
	local context = {
		resultTbl = resultTbl,
		maxDepth = maxDepth or 2,
		maxTableEntries = 100,
		tableLookupFunc = tableLookupFunc,
		tableRefs = {},
		depth = 0,
	}

	-- Build up our table references via a breadth-first search
	local bfsQueueKeyPath = {""}
	local bfsQueueDepth = {0}
	local bfsQueueValue = {inst}
	while #bfsQueueKeyPath > 0 do
		local keyPath = tremove(bfsQueueKeyPath, 1)
		local depth = tremove(bfsQueueDepth, 1)
		local value = tremove(bfsQueueValue, 1)
		if not context.tableRefs[value] then
			context.tableRefs[value] = keyPath
			if depth <= context.maxDepth and not private.classInfo[value] then
				if private.instInfo[value] then
					local instInfo = private.instInfo[value]
					value = instInfo.hasSuperclass and instInfo.fields or value
				end
				for k, v in pairs(value) do
					if type(v) == "table" and not strfind(k, DUMP_KEY_PATH_DELIM, nil, true) then
						tinsert(bfsQueueKeyPath, keyPath..DUMP_KEY_PATH_DELIM..k)
						tinsert(bfsQueueDepth, depth + 1)
						tinsert(bfsQueueValue, v)
					end
				end
			end
		end
	end

	private.InstDumpVariable("self", inst, context, "")
end

function private.InstDumpVariable(key, value, context, strKeyPath)
	if strfind(key, DUMP_KEY_PATH_DELIM, nil, true) then
		-- Ignore keys with our deliminator in them
		return
	end
	if type(value) == "table" and private.classInfo[value] then
		-- This is a class
		private.InstDumpKeyValue(key, "\""..tostring(value).."\"", context)
	elseif type(value) == "table" then
		local refKeyPath = context.tableRefs[value]
		assert(refKeyPath)
		if refKeyPath ~= strKeyPath then
			local refValue = "\"REF{"..gsub(refKeyPath, DUMP_KEY_PATH_DELIM, ".").."}\""
			private.InstDumpKeyValue(key, refValue, context)
		elseif private.instInfo[value] then
			-- This is an instance of a class
			if context.depth <= context.maxDepth then
				-- Recurse into the class
				local instInfo = private.instInfo[value]
				local tbl = instInfo.hasSuperclass and instInfo.fields or value
				private.InstDumpLine(key.." = <"..instInfo.str.."> {", context)
				context.depth = context.depth + 1
				for key2, value2 in pairs(tbl) do
					if type(key2) == "string" or type(key2) == "number" or type(key2) == "boolean" then
						private.InstDumpVariable(key2, value2, context, strKeyPath..DUMP_KEY_PATH_DELIM..key2)
					end
				end
				context.depth = context.depth - 1
				private.InstDumpLine("}", context)
			else
				private.InstDumpKeyValue(key, "\""..tostring(value).."\"", context)
			end
		else
			local isEmpty = true
			for _, value2 in pairs(value) do
				local valueType = type(value2)
				if valueType == "string" or valueType == "number" or valueType == "boolean" or valueType == "table" then
					isEmpty = false
					break
				end
			end
			if isEmpty then
				local info = context.tableLookupFunc and context.tableLookupFunc(value) or nil
				if info and context.depth <= context.maxDepth then
					-- Display the table values
					private.InstDumpKeyValue(key, "{", context)
					context.depth = context.depth + 1
					for _, line in ipairs({strsplit("\n", info)}) do
						private.InstDumpLine(line, context)
					end
					context.depth = context.depth - 1
					private.InstDumpLine("}", context)
				elseif info then
					private.InstDumpKeyValue(key, "{ ... }", context)
				else
					private.InstDumpKeyValue(key, "{}", context)
				end
			else
				if context.depth <= context.maxDepth then
					-- Recurse into the table
					private.InstDumpKeyValue(key, "{", context)
					context.depth = context.depth + 1
					local numTableEntries = 0
					for key2, value2 in pairs(value) do
						if numTableEntries >= context.maxTableEntries then
							break
						end
						if type(key2) == "string" or type(key2) == "number" or type(key2) == "boolean" then
							numTableEntries = numTableEntries + 1
							private.InstDumpVariable(key2, value2, context, strKeyPath..DUMP_KEY_PATH_DELIM..key2)
						end
					end
					context.depth = context.depth - 1
					private.InstDumpLine("}", context)
				else
					private.InstDumpKeyValue(key, "{ ... }", context)
				end
			end
		end
	elseif type(value) == "string" then
		private.InstDumpKeyValue(key, "\""..value.."\"", context)
	elseif type(value) == "number" or type(value) == "boolean" then
		private.InstDumpKeyValue(key, value, context)
	end
end

function private.InstDumpLine(line, context)
	line = strrep("  ", context.depth)..line
	if context.resultTbl then
		tinsert(context.resultTbl, line)
	else
		print(line)
	end
end

function private.InstDumpKeyValue(key, value, context)
	key = tostring(key)
	if key == "" then
		key = "\"\""
	end
	if not context.resultTbl then
		key = "|cff88ccff"..key.."|r"
	end
	value = tostring(value)
	local line = format("%s = %s", key, value)
	private.InstDumpLine(line, context)
end



-- ============================================================================
-- Initialization Code
-- ============================================================================

do
	-- register with LibStub
	local libStubTbl = LibStub:NewLibrary("LibTSMClass", MINOR_REVISION)
	if libStubTbl then
		for k, v in pairs(Lib) do
			libStubTbl[k] = v
		end
	end
end
