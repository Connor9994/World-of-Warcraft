-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local StateSchema = TSM.Init("Util.ReactiveClasses.StateSchema") ---@class Util.ReactiveClasses.StateSchema
local State = TSM.Include("Util.ReactiveClasses.State")
local ReactiveStateSchema = TSM.Include("LibTSMClass").DefineClass("ReactiveStateSchema") ---@class ReactiveStateSchema
local VALID_TYPES = {
	number = true,
	string = true,
	boolean = true,
	table = true,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

---Creates a new state schema object.
---@return ReactiveStateSchema
function StateSchema.Create()
	return ReactiveStateSchema()
end



-- ============================================================================
-- ReactiveStateSchema - Class Meta Methods
-- ============================================================================

function ReactiveStateSchema:__init()
	self._committed = false
	self._fieldType = {}
	self._default = {}
	self._isOptional = {}
end



-- ============================================================================
-- ReactiveStateSchema - Public Class Methods
-- ============================================================================

---Defines a string field as part of the schema.
---@param key string The key of the new field
---@param default string The default value of the field
---@return ReactiveStateSchema
function ReactiveStateSchema:AddStringField(key, default)
	return self:_AddField(key, "string", default, false)
end

---Defines a string field as part of the schema which can be nil.
---@param key string The key of the new field
---@param default? string The default value of the field
---@return ReactiveStateSchema
function ReactiveStateSchema:AddOptionalStringField(key, default)
	return self:_AddField(key, "string", default, true)
end

---Defines a number field as part of the schema.
---@param key string The key of the new field
---@param default number The default value of the field
---@return ReactiveStateSchema
function ReactiveStateSchema:AddNumberField(key, default)
	return self:_AddField(key, "number", default, false)
end

---Defines a number field as part of the schema which can be nil.
---@param key string The key of the new field
---@param default? number The default value of the field
---@return ReactiveStateSchema
function ReactiveStateSchema:AddOptionalNumberField(key, default)
	return self:_AddField(key, "number", default, true)
end

---Defines a boolean field as part of the schema.
---@param key string The key of the new field
---@param default boolean The default value of the field
---@return ReactiveStateSchema
function ReactiveStateSchema:AddBooleanField(key, default)
	return self:_AddField(key, "boolean", default, false)
end

---Defines a boolean field as part of the schema which can be nil.
---@param key string The key of the new field
---@param default? boolean The default value of the field
---@return ReactiveStateSchema
function ReactiveStateSchema:AddOptionalBooleanField(key, default)
	return self:_AddField(key, "boolean", default, true)
end

---Defines a table field as part of the schema which can be nil (and is by default).
---@param key string The key of the new field
---@return ReactiveStateSchema
function ReactiveStateSchema:AddOptionalTableField(key)
	return self:_AddField(key, "table", nil, true)
end

---Updates the default value of an existing field.
---@param key string The key of the field
---@param default? boolean The default value of the field
---@return ReactiveStateSchema
function ReactiveStateSchema:UpdateFieldDefault(key, default)
	assert(not self._committed)
	self:_ValidateValueForKey(key, default)
	self._default[key] = default
	return self
end

---Commits the schema and prevents further changes.
---@return ReactiveStateSchema
function ReactiveStateSchema:Commit()
	self._committed = true
	return self
end

---Creates a state object based on the schema.
---@return ReactiveState
function ReactiveStateSchema:CreateState()
	assert(self._committed)
	return State.Create(self)
end

---Returns a new state schema which extends the existing one
---@return ReactiveStateSchema
function ReactiveStateSchema:Extend()
	assert(self._committed)
	local newSchema = ReactiveStateSchema()
	for key, fieldType in self:_FieldIterator() do
		newSchema:_AddField(key, fieldType, self._default[key], self._isOptional[key])
	end
	return newSchema
end



-- ============================================================================
-- ReactiveStateSchema - Private Class Methods
-- ============================================================================

function ReactiveStateSchema:_AddField(key, fieldType, default, isOptional)
	assert(not self._committed)
	assert(not self._fieldType[key])
	self._fieldType[key] = fieldType
	self._default[key] = default
	self._isOptional[key] = isOptional
	self:_ValidateValueForKey(key, default)
	return self
end

function ReactiveStateSchema:_ApplyDefaults(data)
	for key in self:_FieldIterator() do
		data[key] = self._default[key]
	end
end

function ReactiveStateSchema:_ValidateValueForKey(key, value)
	local fieldType = self._fieldType[key]
	if not fieldType then
		error("Invalid state key: "..tostring(key), 2)
	elseif not VALID_TYPES[fieldType] then
		error("Unexpected fieldType: "..tostring(fieldType))
	elseif type(value) ~= fieldType and (value ~= nil or not self._isOptional[key]) then
		error("Invalid type for state key ("..tostring(key).."): "..tostring(value))
	end
end

function ReactiveStateSchema:_HasKey(key)
	return self._fieldType[key] ~= nil
end

function ReactiveStateSchema:_FieldIterator()
	return pairs(self._fieldType)
end
