-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local QueryClause = TSM.Init("Util.DatabaseClasses.QueryClause") ---@class Util.DatabaseClasses.QueryClause
local Constants = TSM.Include("Util.DatabaseClasses.Constants")
local Util = TSM.Include("Util.DatabaseClasses.Util")
local ObjectPool = TSM.Include("Util.ObjectPool")
local Vararg = TSM.Include("Util.Vararg")
local LibTSMClass = TSM.Include("LibTSMClass")
local DatabaseQueryClause = LibTSMClass.DefineClass("DatabaseQueryClause") ---@class DatabaseQueryClause
local private = {
	objectPool = nil,
}



-- ============================================================================
-- Module Loading
-- ============================================================================

QueryClause:OnModuleLoad(function()
	private.objectPool = ObjectPool.New("DATABASE_QUERY_CLAUSES", DatabaseQueryClause, 1)
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

---Gets a new query clause.
---@param parent? DatabaseQueryClause The parent query clause
---@return DatabaseQueryClause @The new query clause
function QueryClause.Get(parent)
	local clause = private.objectPool:Get()
	clause:_Acquire(parent)
	return clause
end



-- ============================================================================
-- Class Method Methods
-- ============================================================================

function DatabaseQueryClause:__init()
	self._operation = nil
	self._parent = nil
	-- comparison
	self._field = nil
	self._value = nil
	self._boundValue = nil
	self._otherField = nil
	-- or / and
	self._subClauses = {}
end

function DatabaseQueryClause:_Acquire(parent)
	self._parent = parent
end

function DatabaseQueryClause:_Release()
	self._operation = nil
	self._parent = nil
	self._field = nil
	self._value = nil
	self._boundValue = nil
	self._otherField = nil
	for _, clause in ipairs(self._subClauses) do
		clause:_Release()
	end
	wipe(self._subClauses)
	private.objectPool:Recycle(self)
end



-- ============================================================================
-- Public Class Method
-- ============================================================================

function DatabaseQueryClause:Equal(field, value, otherField)
	return self:_SetComparisonOperation("EQUAL", field, value, otherField)
end

function DatabaseQueryClause:NotEqual(field, value, otherField)
	return self:_SetComparisonOperation("NOT_EQUAL", field, value, otherField)
end

function DatabaseQueryClause:LessThan(field, value, otherField)
	return self:_SetComparisonOperation("LESS", field, value, otherField)
end

function DatabaseQueryClause:LessThanOrEqual(field, value, otherField)
	return self:_SetComparisonOperation("LESS_OR_EQUAL", field, value, otherField)
end

function DatabaseQueryClause:GreaterThan(field, value, otherField)
	return self:_SetComparisonOperation("GREATER", field, value, otherField)
end

function DatabaseQueryClause:GreaterThanOrEqual(field, value, otherField)
	return self:_SetComparisonOperation("GREATER_OR_EQUAL", field, value, otherField)
end

function DatabaseQueryClause:Matches(field, value)
	return self:_SetComparisonOperation("MATCHES", field, value)
end

function DatabaseQueryClause:Contains(field, value)
	return self:_SetComparisonOperation("CONTAINS", field, value)
end

function DatabaseQueryClause:StartsWith(field, value)
	return self:_SetComparisonOperation("STARTS_WITH", field, value)
end

function DatabaseQueryClause:IsNil(field)
	return self:_SetComparisonOperation("IS_NIL", field)
end

function DatabaseQueryClause:IsNotNil(field)
	return self:_SetComparisonOperation("IS_NOT_NIL", field)
end

function DatabaseQueryClause:Custom(func, arg)
	return self:_SetComparisonOperation("CUSTOM", func, arg)
end

function DatabaseQueryClause:InTable(field, value)
	return self:_SetComparisonOperation("IN_TABLE", field, value)
end

function DatabaseQueryClause:NotInTable(field, value)
	return self:_SetComparisonOperation("NOT_IN_TABLE", field, value)
end

function DatabaseQueryClause:ListContains(field, value)
	return self:_SetComparisonOperation("LIST_CONTAINS", field, value)
end

function DatabaseQueryClause:Or()
	return self:_SetSubClauseOperation("OR")
end

function DatabaseQueryClause:And()
	return self:_SetSubClauseOperation("AND")
end



-- ============================================================================
-- Private Class Method
-- ============================================================================

function DatabaseQueryClause:_GetParent()
	return self._parent
end

function DatabaseQueryClause:_IsTrue(row, ignoreField)
	if ignoreField and self._field == ignoreField then
		return true
	end
	local value = self._value
	if value == Constants.BOUND_QUERY_PARAM then
		value = self._boundValue
	elseif value == Constants.OTHER_FIELD_QUERY_PARAM then
		value = row:GetField(self._otherField)
	end
	local operation = self._operation
	if operation == "EQUAL" then
		return row[self._field] == value
	elseif operation == "NOT_EQUAL" then
		return row[self._field] ~= value
	elseif operation == "LESS" then
		return row[self._field] < value
	elseif operation == "LESS_OR_EQUAL" then
		return row[self._field] <= value
	elseif operation == "GREATER" then
		return row[self._field] > value
	elseif operation == "GREATER_OR_EQUAL" then
		return row[self._field] >= value
	elseif operation == "MATCHES" then
		return strfind(strlower(row[self._field]), value) and true or false
	elseif operation == "CONTAINS" then
		return strfind(strlower(row[self._field]), value, 1, true) and true or false
	elseif operation == "STARTS_WITH" then
		return strsub(strlower(row[self._field]), 1, #value) == value
	elseif operation == "IS_NIL" then
		return row[self._field] == nil
	elseif operation == "IS_NOT_NIL" then
		return row[self._field] ~= nil
	elseif operation == "CUSTOM" then
		return self._field(row, value) and true or false
	elseif operation == "IN_TABLE" then
		return value[row[self._field]] ~= nil
	elseif operation == "NOT_IN_TABLE" then
		return value[row[self._field]] == nil
	elseif operation == "LIST_CONTAINS" then
		return Vararg.In(value, row:GetField(self._field))
	elseif operation == "OR" then
		for i = 1, #self._subClauses do
			if self._subClauses[i]:_IsTrue(row, ignoreField) then
				return true
			end
		end
		return false
	elseif operation == "AND" then
		for i = 1, #self._subClauses do
			if not self._subClauses[i]:_IsTrue(row, ignoreField) then
				return false
			end
		end
		return true
	else
		error("Invalid operation: " .. tostring(operation))
	end
end

function DatabaseQueryClause:_GetIndexValue(indexField)
	if self._operation == "EQUAL" then
		if self._field ~= indexField then
			return
		end
		if self._value == Constants.OTHER_FIELD_QUERY_PARAM then
			return
		elseif self._value == Constants.BOUND_QUERY_PARAM then
			local result = Util.ToIndexValue(self._boundValue)
			return result, result
		else
			local result = Util.ToIndexValue(self._value)
			return result, result
		end
	elseif self._operation == "LESS_OR_EQUAL" then
		if self._field ~= indexField then
			return
		end
		if self._value == Constants.OTHER_FIELD_QUERY_PARAM then
			return
		elseif self._value == Constants.BOUND_QUERY_PARAM then
			return nil, Util.ToIndexValue(self._boundValue)
		else
			return nil, Util.ToIndexValue(self._value)
		end
	elseif self._operation == "GREATER_OR_EQUAL" then
		if self._field ~= indexField then
			return
		end
		if self._value == Constants.OTHER_FIELD_QUERY_PARAM then
			return
		elseif self._value == Constants.BOUND_QUERY_PARAM then
			return Util.ToIndexValue(self._boundValue), nil
		else
			return Util.ToIndexValue(self._value), nil
		end
	elseif self._operation == "STARTS_WITH" then
		if self._field ~= indexField then
			return
		end
		local minValue = nil
		if self._value == Constants.OTHER_FIELD_QUERY_PARAM then
			return
		elseif self._value == Constants.BOUND_QUERY_PARAM then
			minValue = Util.ToIndexValue(self._boundValue)
		else
			minValue = Util.ToIndexValue(self._value)
		end
		-- calculate the max value
		assert(gsub(minValue, "\255", "") ~= "")
		local maxValue = nil
		for i = #minValue, 1, -1 do
			if strsub(minValue, i, i) ~= "\255" then
				maxValue = strsub(minValue, 1, i - 1)..strrep("\255", #minValue - i + 1)
				break
			end
		end
		return minValue, maxValue
	elseif self._operation == "OR" then
		local numSubClauses = #self._subClauses
		if numSubClauses == 0 then
			return
		end
		-- all of the subclauses need to support the same index
		local valueMin, valueMax = self._subClauses[1]:_GetIndexValue(indexField)
		for i = 2, numSubClauses do
			local subClauseValueMin, subClauseValueMax = self._subClauses[i]:_GetIndexValue(indexField)
			if subClauseValueMin ~= valueMin or subClauseValueMax ~= valueMax then
				return
			end
		end
		return valueMin, valueMax
	elseif self._operation == "AND" then
		-- get the most constrained range of index values from the subclauses
		local valueMin, valueMax = nil, nil
		for _, subClause in ipairs(self._subClauses) do
			local subClauseValueMin, subClauseValueMax = subClause:_GetIndexValue(indexField)
			if subClauseValueMin ~= nil and (valueMin == nil or subClauseValueMin > valueMin) then
				valueMin = subClauseValueMin
			end
			if subClauseValueMax ~= nil and (valueMax == nil or subClauseValueMax < valueMax) then
				valueMax = subClauseValueMax
			end
		end
		return valueMin, valueMax
	end
end

function DatabaseQueryClause:_GetTrigramIndexValue(indexField)
	if self._operation == "EQUAL" then
		if self._field ~= indexField then
			return
		end
		if self._value == Constants.OTHER_FIELD_QUERY_PARAM then
			return
		elseif self._value == Constants.BOUND_QUERY_PARAM then
			return self._boundValue
		else
			return self._value
		end
	elseif self._operation == "CONTAINS" then
		if self._field ~= indexField then
			return
		end
		if self._value == Constants.OTHER_FIELD_QUERY_PARAM then
			return
		elseif self._value == Constants.BOUND_QUERY_PARAM then
			return self._boundValue
		else
			return self._value
		end
	elseif self._operation == "OR" then
		-- all of the subclauses need to support the same trigram value
		local value = nil
		for i = 1, #self._subClauses do
			local subClause = self._subClauses[i]
			local subClauseValue = subClause:_GetTrigramIndexValue(indexField)
			if not subClauseValue then
				return
			end
			if i == 1 then
				value = subClauseValue
			elseif subClauseValue ~= value then
				return
			end
		end
		return value
	elseif self._operation == "AND" then
		-- at least one of the subclauses need to support the trigram
		for _, subClause in ipairs(self._subClauses) do
			local value = subClause:_GetTrigramIndexValue(indexField)
			if value then
				return value
			end
		end
	end
end

function DatabaseQueryClause:_IsStrictIndex(indexField, indexValueMin, indexValueMax)
	if self._value == Constants.OTHER_FIELD_QUERY_PARAM then
		return false
	end
	if self._operation == "EQUAL" and self._field == indexField and indexValueMin == indexValueMax then
		if self._value == Constants.BOUND_QUERY_PARAM then
			return Util.ToIndexValue(self._boundValue) == indexValueMin
		else
			return Util.ToIndexValue(self._value) == indexValueMin
		end
	elseif self._operation == "GREATER_OR_EQUAL" and self._field == indexField then
		if self._value == Constants.BOUND_QUERY_PARAM then
			return Util.ToIndexValue(self._boundValue) == indexValueMin
		else
			return Util.ToIndexValue(self._value) == indexValueMin
		end
	elseif self._operation == "LESS_OR_EQUAL" and self._field == indexField then
		if self._value == Constants.BOUND_QUERY_PARAM then
			return Util.ToIndexValue(self._boundValue) == indexValueMax
		else
			return Util.ToIndexValue(self._value) == indexValueMax
		end
	elseif self._operation == "OR" and #self._subClauses == 1 then
		return self._subClauses[1]:_IsStrictIndex(indexField, indexValueMin, indexValueMax)
	elseif self._operation == "AND" then
		-- must be strict for all subclauses
		for _, subClause in ipairs(self._subClauses) do
			if not subClause:_IsStrictIndex(indexField, indexValueMin, indexValueMax) then
				return false
			end
		end
		return true
	else
		return false
	end
end

function DatabaseQueryClause:_UsesField(field)
	if field == self._field or self._operation == "CUSTOM" then
		return true
	end
	if self._operation == "OR" or self._operation == "AND" then
		for i = 1, #self._subClauses do
			if self._subClauses[i]:_UsesField(field) then
				return true
			end
		end
	end
	return false
end

function DatabaseQueryClause:_InsertSubClause(subClause)
	assert(self._operation == "OR" or self._operation == "AND")
	tinsert(self._subClauses, subClause)
	return self
end

function DatabaseQueryClause:_SetComparisonOperation(operation, field, value, otherField)
	assert(not self._operation)
	assert(value == Constants.OTHER_FIELD_QUERY_PARAM or not otherField)
	self._operation = operation
	self._field = field
	self._value = value
	self._otherField = otherField
	return self
end

function DatabaseQueryClause:_SetSubClauseOperation(operation)
	assert(not self._operation)
	self._operation = operation
	assert(#self._subClauses == 0)
	return self
end

function DatabaseQueryClause:_BindParams(...)
	if self._value == Constants.BOUND_QUERY_PARAM then
		self._boundValue = ...
		return 1
	end
	local valuesUsed = 0
	for _, clause in ipairs(self._subClauses) do
		valuesUsed = valuesUsed + clause:_BindParams(select(valuesUsed + 1, ...))
	end
	return valuesUsed
end
