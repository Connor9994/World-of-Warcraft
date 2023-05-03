-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Query = TSM.Init("Util.DatabaseClasses.Query") ---@class Util.DatabaseClasses.Query
local Constants = TSM.Include("Util.DatabaseClasses.Constants")
local Util = TSM.Include("Util.DatabaseClasses.Util")
local QueryResultRow = TSM.Include("Util.DatabaseClasses.QueryResultRow")
local QueryClause = TSM.Include("Util.DatabaseClasses.QueryClause")
local ObjectPool = TSM.Include("Util.ObjectPool")
local Reactive = TSM.Include("Util.Reactive")
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local Math = TSM.Include("Util.Math")
local LibTSMClass = TSM.Include("LibTSMClass")
local DatabaseQuery = LibTSMClass.DefineClass("DatabaseQuery") ---@class DatabaseQuery
local private = {
	objectPool = nil,
	smartMapReaderContext = {},
	uuidDiffContext = {
		inUse = false,
		insert = {},
		remove = {},
		result = {},
		uuids = {},
	},
}



-- ============================================================================
-- Module Loading
-- ============================================================================

Query:OnModuleLoad(function()
	private.objectPool = ObjectPool.New("DATABASE_QUERIES", DatabaseQuery, 1)
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

---Gets a query object.
---@param db DatabaseTable The database table to query
---@return DatabaseQuery @The new database query object
function Query.Get(db)
	local clause = private.objectPool:Get()
	clause:_Acquire(db)
	return clause
end



-- ============================================================================
-- Class Meta Methods
-- ============================================================================

function DatabaseQuery:__init()
	self._db = nil
	self._rootClause = nil
	self._currentClause = nil
	self._orderBy = {}
	self._orderByAscending = {}
	self._distinct = nil
	self._updateCallback = nil
	self._updateCallbackContext = nil
	self._updatesPaused = 0
	self._queuedUpdate = false
	self._select = {}
	self._iteratorState = "IDLE"
	self._result = {}
	self._resultRowLookup = {}
	self._iterDistinctUsed = {}
	self._tempResultRow = nil
	self._tempVirtualResultRow = nil
	self._autoRelease = false
	self._resultIsStale = false
	self._joinTypes = {}
	self._joinDBs = {}
	self._joinFields = {}
	self._joinForeignFields = {}
	self._aggregateJoinQueries = {}
	self._virtualFieldFunc = {}
	self._virtualFieldArgField = {}
	self._virtualFieldType = {}
	self._virtualFieldDefault = {}
	self._genericSortWrapper = function(a, b)
		return private.DatabaseQuerySortGeneric(self, a, b)
	end
	self._singleSortWrapper = function(a, b)
		return private.DatabaseQuerySortSingle(self, a, b, self._orderByAscending[1])
	end
	self._secondarySortWrapper = function(a, b)
		return private.DatabaseQuerySortSingle(self, a, b, self._orderByAscending[2])
	end
	self._sortValueCache = {}
	self._resultDependencies = {}
	self._stream = Reactive.CreateStream()
end

function DatabaseQuery:_Acquire(db)
	self._db = db
	self._db:_RegisterQuery(self)
	-- implicit root AND clause
	self._rootClause = QueryClause.Get()
		:And()
	self._currentClause = self._rootClause
	self._tempResultRow = QueryResultRow.Get()
	self._tempResultRow:_Acquire(self._db, self)
	self._resultIsStale = true
end

function DatabaseQuery:_Release()
	assert(self._iteratorState == "IDLE")
	assert(self._stream:GetNumPublishers() == 0)
	-- remove from the database
	self._db:_RemoveQuery(self)
	self._db = nil
	self._rootClause:_Release()
	self._rootClause = nil
	self._currentClause = nil
	self._updateCallback = nil
	self._updateCallbackContext = nil
	self._updatesPaused = 0
	self._queuedUpdate = false
	wipe(self._iterDistinctUsed)
	self._tempResultRow:Release()
	self._tempResultRow = nil
	if self._tempVirtualResultRow then
		self._tempVirtualResultRow:Release()
		self._tempVirtualResultRow = nil
	end
	self._autoRelease = false
	self:_WipeResults()
	self:ResetOrderBy()
	self:ResetDistinct()
	self:ResetSelect()
	self:ResetJoins()
	self:ResetVirtualFields()
	self._resultIsStale = false
	wipe(self._resultDependencies)
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

---Releases the database query.
---
---The database query object will be recycled and must not be accessed after calling this method.
---@param abortIterator boolean Abort any in-progress iterator
function DatabaseQuery:Release(abortIterator)
	if abortIterator then
		self._iteratorState = "IDLE"
	end
	self:_Release()
	private.objectPool:Recycle(self)
end

---Adds a virtual field to the query.
---@param field string The name of the new virtual field
---@param fieldType string The type of the virtual field
---@param func function A function which takes a row and returns the value of the virtual field
---@param argField? string The field to pass into the function (otherwise passes the entire row)
---@param defaultValue? any The default value to use if the function returns nil
---@return DatabaseQuery
function DatabaseQuery:VirtualField(field, fieldType, func, argField, defaultValue)
	if self:_GetFieldType(field) or self._virtualFieldFunc[field] then
		error("Field already exists: "..tostring(field))
	elseif type(func) ~= "function" then
		error("Invalid func: "..tostring(func))
	elseif fieldType ~= "number" and fieldType ~= "string" and fieldType ~= "boolean" then
		error("Field type must be string, number, or boolean")
	elseif argField and not self:_GetFieldType(argField) then
		error("Arg field doesn't exist: "..tostring(argField))
	elseif self:_GetListFieldType(argField) then
		error("Cannot use list fields for arg")
	elseif defaultValue ~= nil and type(defaultValue) ~= fieldType then
		error("Invalid defaultValue type: "..tostring(defaultValue))
	end
	self:_NewVirtualField(field, func, argField, fieldType, defaultValue)
	return self
end

---Adds a virtual field with a smart map.
---@param field string The name of the new virtual field
---@param map SmartMapObject The smart map
---@param inputFieldName string The field to use as the input to the smart map
---@return DatabaseQuery
function DatabaseQuery:VirtualSmartMapField(field, map, inputFieldName)
	if self:_GetFieldType(field) or self._virtualFieldFunc[field] then
		error("Field already exists: "..tostring(field))
	elseif self:_GetFieldType(inputFieldName) ~= map:GetKeyType() then
		error("Invalid input field type or input field doesn't exist: "..tostring(inputFieldName))
	elseif self:_GetListFieldType(inputFieldName) then
		error("Cannot use list fields as input")
	end
	self:_NewVirtualField(field, self:_GetSmartMapReader(map), inputFieldName, map:GetValueType(), nil)
	return self
end

---Where a field equals a value.
---@param field string The name of the field
---@param value any The value to compare to
---@param otherField? string The name of the other field to compare with
---@return DatabaseQuery
function DatabaseQuery:Equal(field, value, otherField)
	self:_ValidateComparisonValue(field, value, otherField)
	self:_NewClause()
		:Equal(field, value, otherField)
	return self
end

---Where a field does not equals a value.
---@param field string The name of the field
---@param value any The value to compare to
---@param otherField? string The name of the other field to compare with
---@return DatabaseQuery
function DatabaseQuery:NotEqual(field, value, otherField)
	self:_ValidateComparisonValue(field, value, otherField)
	self:_NewClause()
		:NotEqual(field, value, otherField)
	return self
end

---Where a field is less than a value.
---@param field string The name of the field
---@param value any The value to compare to
---@param otherField? string The name of the other field to compare with
---@return DatabaseQuery
function DatabaseQuery:LessThan(field, value, otherField)
	self:_ValidateComparisonValue(field, value, otherField)
	self:_NewClause()
		:LessThan(field, value, otherField)
	return self
end

---Where a field is less than or equal to a value.
---@param field string The name of the field
---@param value any The value to compare to
---@param otherField? string The name of the other field to compare with
---@return DatabaseQuery
function DatabaseQuery:LessThanOrEqual(field, value, otherField)
	self:_ValidateComparisonValue(field, value, otherField)
	self:_NewClause()
		:LessThanOrEqual(field, value, otherField)
	return self
end

---Where a field is greater than a value.
---@param field string The name of the field
---@param value any The value to compare to
---@param otherField? string The name of the other field to compare with
---@return DatabaseQuery
function DatabaseQuery:GreaterThan(field, value, otherField)
	self:_ValidateComparisonValue(field, value, otherField)
	self:_NewClause()
		:GreaterThan(field, value, otherField)
	return self
end

---Where a field is greater than or equal to a value.
---@param field string The name of the field
---@param value any The value to compare to
---@param otherField? string The name of the other field to compare with
---@return DatabaseQuery
function DatabaseQuery:GreaterThanOrEqual(field, value, otherField)
	self:_ValidateComparisonValue(field, value, otherField)
	self:_NewClause()
		:GreaterThanOrEqual(field, value, otherField)
	return self
end

---Where a string field matches a pattern.
---@param field string The name of the field
---@param value string The pattern to match
---@return DatabaseQuery
function DatabaseQuery:Matches(field, value)
	assert(value ~= Constants.BOUND_QUERY_PARAM, "This method does not support bound values")
	assert(self:_GetFieldType(field) == "string" and type(value) == "string")
	self:_NewClause()
		:Matches(field, strlower(value))
	return self
end

---Where a string field contains a substring.
---@param field string The name of the field
---@param value string The substring to match
---@return DatabaseQuery
function DatabaseQuery:Contains(field, value)
	assert(value ~= Constants.BOUND_QUERY_PARAM, "This method does not support bound values")
	assert(self:_GetFieldType(field) == "string" and type(value) == "string")
	self:_NewClause()
		:Contains(field, strlower(value))
	return self
end

---Where a string field starts with a substring.
---@param field string The name of the field
---@param value string The substring to match
---@return DatabaseQuery
function DatabaseQuery:StartsWith(field, value)
	assert(value ~= Constants.BOUND_QUERY_PARAM, "This method does not support bound values")
	assert(self:_GetFieldType(field) == "string" and type(value) == "string")
	self:_NewClause()
		:StartsWith(field, strlower(value))
	return self
end

---Where a foreign field (obtained via a left join) is nil.
---@param field string The name of the field
---@return DatabaseQuery
function DatabaseQuery:IsNil(field)
	assert(not self:_GetListFieldType(field), "Cannot use this method on list fields")
	assert(self:_GetJoinType(field) == "LEFT", "Must be a left join")
	self:_NewClause()
		:IsNil(field)
	return self
end

---Where a foreign field (obtained via a left join) is not nil.
---@param field string The name of the field
---@return DatabaseQuery
function DatabaseQuery:IsNotNil(field)
	assert(not self:_GetListFieldType(field), "Cannot use this method on list fields")
	assert(self:_GetJoinType(field) == "LEFT", "Must be a left join")
	self:_NewClause()
		:IsNotNil(field)
	return self
end

---A custom query clause.
---@param func fun(row: DatabaseQueryResultRow, arg: any): boolean The function which gets passed the row being evaulated and
---returns whether or not the query results should include it
---@param arg any An argument to pass to the function
---@return DatabaseQuery
function DatabaseQuery:Custom(func, arg)
	assert(type(func) == "function")
	self:_NewClause()
		:Custom(func, arg)
	return self
end

---Where a field exists as a key within a table.
---@param field string The name of the field
---@param value table The table to check against
---@return DatabaseQuery
function DatabaseQuery:InTable(field, value)
	assert(value ~= Constants.BOUND_QUERY_PARAM and value ~= Constants.OTHER_FIELD_QUERY_PARAM, "This method does not support indirect values")
	assert(not self:_GetListFieldType(field), "Cannot use this method on list fields")
	assert(type(value) == "table")
	self:_NewClause()
		:InTable(field, value)
	return self
end

---Where a field does not exists as a key within a table.
---@param field string The name of the field
---@param value table The table to check against
---@return DatabaseQuery
function DatabaseQuery:NotInTable(field, value)
	assert(value ~= Constants.BOUND_QUERY_PARAM and value ~= Constants.OTHER_FIELD_QUERY_PARAM, "This method does not support indirect values")
	assert(not self:_GetListFieldType(field), "Cannot use this method on list fields")
	assert(type(value) == "table")
	self:_NewClause()
		:NotInTable(field, value)
	return self
end

---Where a list field contains a value.
---@param field string The name of the list field
---@param value table The table to check against
---@return DatabaseQuery
function DatabaseQuery:ListContains(field, value)
	assert(value ~= Constants.BOUND_QUERY_PARAM and value ~= Constants.OTHER_FIELD_QUERY_PARAM, "This method does not support indirect values")
	assert(type(value) == self:_GetListFieldType(field))
	self:_NewClause()
		:ListContains(field, value)
	return self
end

---Starts a nested AND clause.
---
---All of the clauses following this (until the matching `:End()`) must be true for the AND clause to be true.
---@return DatabaseQuery
function DatabaseQuery:And()
	self._currentClause = self:_NewClause()
		:And()
	return self
end

---Starts a nested OR clause.
---
---At least one of the clauses following this (until the matching `:End()`) must be true for the OR clause to be true.
---@return DatabaseQuery
function DatabaseQuery:Or()
	self._currentClause = self:_NewClause()
		:Or()
	return self
end

---Ends a nested AND/OR clause.
---@return DatabaseQuery
function DatabaseQuery:End()
	assert(self._currentClause ~= self._rootClause, "No current clause to end")
	self._currentClause = self._currentClause:_GetParent()
	assert(self._currentClause)
	return self
end

---Performs a left join with another table.
---@param db DatabaseTable The database table to join with
---@param field string The field to join on
---@param foreignField? string The foreign field to join on (defaults to `field`)
---@return DatabaseQuery
function DatabaseQuery:LeftJoin(db, field, foreignField)
	self:_JoinHelper("LEFT", db, field, foreignField or field)
	return self
end

---Performs an inner join with another table.
---@param db DatabaseTable The database table to join with
---@param field string The field to join on
---@param foreignField? string The foreign field to join on (defaults to `field`)
---@return DatabaseQuery
function DatabaseQuery:InnerJoin(db, field, foreignField)
	self:_JoinHelper("INNER", db, field, foreignField or field)
	return self
end

---Performs an aggregate join with another table with a summed field.
---@param db DatabaseTable The database to join with
---@param field string The name of the field in the other table to join on
---@param sumField string The name of the field in the other table to sum
---@return DatabaseQuery
function DatabaseQuery:AggregateJoinSummed(db, field, sumField)
	local query = db:NewQuery()
		:Equal(field, Constants.BOUND_QUERY_PARAM)
	self:_JoinHelper("AGGREGATE_SUM", db, field, sumField, query)
	return self
end

---Order the results by a field.
---
---This may be called multiple times to provide additional ordering constraints. The priority of the ordering will be
---descending as this method is called additional times (meaning the first OrderBy will have highest priority).
---@param field string The name of the field to order by
---@param ascending boolean Whether to order in ascending order (descending otherwise)
---@return DatabaseQuery
function DatabaseQuery:OrderBy(field, ascending)
	assert(ascending == true or ascending == false)
	local fieldType = self:_GetFieldType(field)
	if not fieldType then
		error(format("Field %s doesn't exist", tostring(field)))
	elseif fieldType ~= "number" and fieldType ~= "string" and fieldType ~= "boolean" then
		error(format("Cannot order by field of type %s", tostring(fieldType)))
	end
	tinsert(self._orderBy, field)
	tinsert(self._orderByAscending, ascending)
	self._resultIsStale = true
	return self
end

---Only return distinct results based on a field.
---
---This method can be used to ensure that only the first row for each distinct value of the field is returned.
---@param field string The field to ensure is distinct in the results
---@return DatabaseQuery
function DatabaseQuery:Distinct(field)
	assert(self:_GetFieldType(field), format("Field %s doesn't exist within local DB", tostring(field)))
	assert(not self:_GetListFieldType(field), "Cannot use this method on list fields")
	self._distinct = field
	self._resultIsStale = true
	return self
end

---Select specific fields in the result.
---@param ... string The fields to select
---@return DatabaseQuery
function DatabaseQuery:Select(...)
	assert(#self._select == 0)
	local numFields = select("#", ...)
	assert(numFields > 0, "Must select at least 1 field")
	-- DatabaseRow.GetFields() only supports 10 fields, so we can only support 10 here as well
	assert(numFields <= 10, "Select() only supports up to 10 fields")
	for i = 1, numFields do
		local field = select(i, ...)
		tinsert(self._select, field)
	end
	self._resultIsStale = true
	return self
end

---Binds parameters to a prepared query.
---
---The number of arguments should match the number of Constants.BOUND_QUERY_PARAM values in the query's clauses.
---@param ... any The bound parameter values
---@return DatabaseQuery
function DatabaseQuery:BindParams(...)
	local numFields = select("#", ...)
	assert(self._rootClause:_BindParams(...) == numFields, "Invalid number of bound parameters")
	self._resultIsStale = true
	return self
end

---Set an update callback.
---
---This callback gets called whenever any rows in the underlying database change.
---@param func fun(db: DatabaseQuery, changedUUID: number|nil, context: any) The callback function
---@param context? any A context argument which is passed as the third argument to the callback function
---@return DatabaseQuery
function DatabaseQuery:SetUpdateCallback(func, context)
	self._updateCallback = func
	self._updateCallbackContext = context
	return self
end

---Pauses or unpauses callbacks for query updates.
---@param paused boolean Whether or not updates should be paused
---@return DatabaseQuery
function DatabaseQuery:SetUpdatesPaused(paused)
	self._updatesPaused = self._updatesPaused + (paused and 1 or -1)
	assert(self._updatesPaused >= 0)
	if self._updatesPaused == 0 and self._queuedUpdate then
		self:_DoUpdateCallback()
	end
	return self
end

---Results iterator.
---
---Note that the iterator must run to completion (don't use `break` or `return` to escape it early).
---@param canAbort? boolean Allow the iterator to be aborted if the underlying data is updated which must
---be handled by the caller by calling `IsIteratorAborted()` at the end of each iteration loop
---@return fun(): number, DatabaseRow @An iterator with fields: `index`, row
function DatabaseQuery:Iterator(canAbort)
	self:_Execute()
	assert(self._rootClause and self._currentClause == self._rootClause, "Did not end sub-clause")
	assert(self._iteratorState == "IDLE")
	assert(not canAbort or (not self._updateCallback and self._stream:GetNumPublishers() == 0))
	self._iteratorState = canAbort and "IN_PROGRESS_CAN_ABORT" or "IN_PROGRESS"
	self._autoRelease = false
	return private.QueryResultIterator, self, 0
end

---Iterates through the results as uuids.
---@return fun(): number, number @An iterator with fields: `index`, `uuid`
function DatabaseQuery:UUIDIterator()
	self:_Execute()
	assert(self._rootClause and self._currentClause == self._rootClause, "Did not end sub-clause")
	assert(self._iteratorState == "IDLE")
	self._iteratorState = "IN_PROGRESS"
	self._autoRelease = false
	return private.QueryResultAsUUIDIterator, self, 0
end

---Results iterator which releases upon completion.
---
---Note that the iterator must run to completion (don't use `break` or `return` to escape it early).
---@return fun(): number, ... @An iterator with fields: `index`, ...
function DatabaseQuery:IteratorAndRelease()
	self:_Execute()
	assert(self._rootClause and self._currentClause == self._rootClause, "Did not end sub-clause")
	assert(self._iteratorState == "IDLE")
	self._iteratorState = "IN_PROGRESS"
	self._autoRelease = true
	return private.QueryResultIterator, self, 0
end

---Check if the abortable iterator has been aborted.
---@return boolean
function DatabaseQuery:IsIteratorAborted()
	if self._iteratorState == "IN_PROGRESS_CAN_ABORT" then
		return false
	elseif self._iteratorState == "PENDING_ABORT" then
		self._iteratorState = "ABORTED"
		return true
	else
		error("Invalid iterator state: "..tostring(self._iteratorState))
	end
end

---Prepares a UUID diff against a previous list of UUIDs.
---
---If this function returns true, `DatabaseQuery:UUIDDiffIterator()` must be called and run to completion.
---@param oldUUIDs number[] The list of old UUIDs
---@return boolean @Whether or not a diff was prepared
function DatabaseQuery:UUIDDiffPrepare(oldUUIDs)
	self:_Execute()
	local context = private.uuidDiffContext
	assert(not context.inUse)
	context.inUse = true
	if not Table.GetDiffOrdered(oldUUIDs, self._result, context.insert, context.remove) then
		context.inUse = false
		return false
	end
	-- Add the remove actions in reverse order
	while #context.remove > 0 do
		local endIndex = tremove(context.remove)
		local startIndex = endIndex
		while #context.remove > 0 and context.remove[#context.remove] == startIndex - 1 do
			startIndex = tremove(context.remove)
		end
		Table.InsertMultiple(context.result, "REMOVE", startIndex, endIndex - startIndex + 1, unpack(oldUUIDs, startIndex, endIndex))
	end

	-- Add the insert actions
	local i = 1
	while i <= #context.insert do
		local startIndex = context.insert[i]
		local endIndex = startIndex
		for j = i + 1, #context.insert do
			if context.insert[j] == endIndex + 1 then
				endIndex = endIndex + 1
			else
				break
			end
		end
		Table.InsertMultiple(context.result, "INSERT", startIndex, endIndex - startIndex + 1, unpack(self._result, startIndex, endIndex))
		i = i + endIndex - startIndex + 1
	end
	wipe(context.insert)
	return true
end

---Iterate over the diff prepared with `DatabaseQuery:UUIDDiffPrepare()`.
---@return fun(): number, "REMOVE"|"INSERT", number, number[] @An iterator with fields: `index`, `action`, `startIndex`, `uuids`
function DatabaseQuery:UUIDDiffIterator()
	local context = private.uuidDiffContext
	assert(context.inUse)
	return private.UUIDDiffIterator, context, 1
end

---Populates a table with the results.
---
---The query must have a select clause with exactly one or two fields. In the former case, the table will be populated
---as a list, and in the latter case, the first field must be unique in the results, and will be used as the key for the
---table with the second field being the value.
---@param tbl table The table to store the result in
---@return DatabaseQuery
function DatabaseQuery:AsTable(tbl)
	self:_Execute()
	if #self._select == 1 then
		local field = unpack(self._select)
		for _, uuid in ipairs(self._result) do
			tinsert(tbl, self:_GetResultRowData(uuid, field))
		end
	elseif #self._select == 2 then
		local field1, field2 = unpack(self._select)
		for _, uuid in ipairs(self._result) do
			local key = self:_GetResultRowData(uuid, field1)
			if key == nil or tbl[key] then
				error("Key is nil or not distinct")
			end
			tbl[key] = self:_GetResultRowData(uuid, field2)
		end
	else
		error("Invalid select clause")
	end
	return self
end

---Get the number of resulting rows.
---@return number
function DatabaseQuery:Count()
	self:_Execute()
	return #self._result
end

---Get if the result is not empty and release the query.
---@return boolean
function DatabaseQuery:IsNotEmptyAndRelease()
	return self:CountAndRelease() > 0
end

---Get the number of resulting rows and release the query.
---@return number
function DatabaseQuery:CountAndRelease()
	self:_Execute()
	local count = #self._result
	self:Release()
	return count
end

---Get a single result.
---
---This method will assert that there is exactly one result from the query and return it.
---@return any @The result row or the selected fields
function DatabaseQuery:GetSingleResult()
	self:_Execute()
	assert(self:Count() == 1)
	return self:GetFirstResult()
end

---Get a single result and release the query.
---
---This method will assert that there is exactly one result from the query and return it.
---@return any @The result row or the selected fields
function DatabaseQuery:GetSingleResultAndRelease()
	assert(#self._select > 0)
	local result = self:GetSingleResult()
	self:Release()
	return result
end

---Get the first result.
---
---Note that this method internally iterates over all the results.
---@return any @The result row or the selected fields
function DatabaseQuery:GetFirstResult()
	self:_Execute()
	assert(self._iteratorState == "IDLE")
	if self:Count() == 0 then
		return
	end
	local uuid = self._result[1]
	if not self._resultRowLookup[uuid] then
		self:_CreateResultRow(uuid)
	end
	local row = self._resultRowLookup[uuid]
	if #self._select > 0 then
		return row:GetFields(unpack(self._select))
	else
		return row
	end
end

---Get the first result and releases the query.
---
---Note that this method internally iterates over all the results.
---@return any @The result row or the selected fields
function DatabaseQuery:GetFirstResultAndRelease()
	self:_Execute()
	assert(self._iteratorState == "IDLE")
	if self:Count() == 0 then
		self:Release()
		return
	end
	local uuid = self._result[1]
	if not self._resultRowLookup[uuid] then
		self:_CreateResultRow(uuid)
	end
	local row = self._resultRowLookup[uuid]
	if #self._select > 0 then
		return self:_PassThroughReleaseHelper(row:GetFields(unpack(self._select)))
	else
		row = row:Clone()
		self:Release()
		return row
	end
end

---Gets the minimum value of a specific field within the query results.
---@param field string The field within the results
---@return number|nil @The minimum value or nil if there are no results
function DatabaseQuery:Min(field)
	self:_Execute()
	local result = nil
	for _, uuid in ipairs(self._result) do
		local value = self:_GetResultRowData(uuid, field)
		result = min(result or math.huge, value)
	end
	return result
end

---Gets the maximum value of a specific field within the query results.
---@param field string The field within the results
---@return number|nil @The maximum value or nil if there are no results
function DatabaseQuery:Max(field)
	self:_Execute()
	local result = nil
	for _, uuid in ipairs(self._result) do
		local value = self:_GetResultRowData(uuid, field)
		result = max(result or -math.huge, value)
	end
	return result
end

---Gets the summed value of a specific field within the query results.
---@param field string The field within the results
---@return number @The summed value
function DatabaseQuery:Sum(field)
	self:_Execute()
	local result = 0
	for _, uuid in ipairs(self._result) do
		result = result + self:_GetResultRowData(uuid, field)
	end
	return result
end

---Gets the summed value of a specific field for each group within the query results.
---@param groupField string The field to group by
---@param sumField string The field to sum
---@param result table The results table
function DatabaseQuery:GroupedSum(groupField, sumField, result)
	self:_Execute()
	for _, uuid in ipairs(self._result) do
		local group = self:_GetResultRowData(uuid, groupField)
		local value = self:_GetResultRowData(uuid, sumField)
		result[group] = (result[group] or 0) + value
	end
end

---Gets the summed value of a specific field within the query results and releases the query.
---@param field string The field within the results
---@return number @The summed value
function DatabaseQuery:SumAndRelease(field)
	self:_Execute()
	local result = 0
	for _, uuid in ipairs(self._result) do
		result = result + self:_GetResultRowData(uuid, field)
	end
	self:Release()
	return result
end

---Gets the average value of a specific field within the query results.
---@param field string The field within the results
---@return number|nil @The average value or nil if there are no results
function DatabaseQuery:Avg(field)
	local sum = self:Sum(field)
	local num = self:Count()
	return num > 0 and (sum / num) or nil
end

---Gets the sum of the products of two fields within the query results.
---@param field1 string The first field within the results
---@param field2 string The second field within the results
---@return number @The summed value
function DatabaseQuery:SumOfProduct(field1, field2)
	self:_Execute()
	local result = 0
	for _, uuid in ipairs(self._result) do
		local value1 = self:_GetResultRowData(uuid, field1)
		local value2 = self:_GetResultRowData(uuid, field2)
		result = result + value1 * value2
	end
	return result
end

---Joins the string values of a field with a given separator.
---@param field string The field within the results
---@param sep string The separator (can be any number of characters, including an empty string)
---@return string @The joined string
function DatabaseQuery:JoinedString(field, sep)
	self:_Execute()
	local parts = TempTable.Acquire()
	for _, uuid in ipairs(self._result) do
		tinsert(parts, self:_GetResultRowData(uuid, field))
	end
	local result = table.concat(parts, sep)
	TempTable.Release(parts)
	return result
end

---Calculates the hash of the query results.
---
---Note that either `fields` must be specified or the query must have a select colum with at most 2 fields.
---@param fields? string[] The fields from each row to hash (ottherwise uses the selected fields)
---@return number|nil @The hash value or nil if there are no results
function DatabaseQuery:Hash(fields)
	self:_Execute()
	local result = nil
	if fields then
		for _, uuid in ipairs(self._result) do
			for _, field in ipairs(fields) do
				result = Math.CalculateHash(self:_GetResultRowData(uuid, field), result)
			end
		end
	else
		local keyField, valueField, extra = unpack(self._select)
		assert(keyField and not extra)
		local hashContext = TempTable.Acquire()
		for _, uuid in ipairs(self._result) do
			tinsert(hashContext, self:_GetResultRowData(uuid, keyField))
			if valueField then
				tinsert(hashContext, self:_GetResultRowData(uuid, valueField))
			end
		end
		Table.Sort(hashContext)
		for _, value in ipairs(hashContext) do
			result = Math.CalculateHash(value, result)
		end
		TempTable.Release(hashContext)
	end
	return result
end

---Calculates the hash of the query results and release.
---
---Note that either `fields` must be specified or the query must have a select colum with at most 2 fields.
---@param fields? table The fields from each row to hash (ottherwise uses the selected fields)
---@return number|nil @The hash value or nil if there are no results
function DatabaseQuery:HashAndRelease(fields)
	local result = self:Hash(fields)
	self:Release()
	return result
end

---Deletes all the result rows from the database and releases the query.
---@return number @The number of rows deleted (equal to `:Count()`)
function DatabaseQuery:DeleteAndRelease()
	local count = self:Count()
	self._db:BulkDelete(self._result)
	self:Release()
	return count
end

---Resets the database query.
---@return DatabaseQuery
function DatabaseQuery:Reset()
	self:ResetDistinct()
	self:ResetSelect()
	self:ResetOrderBy()
	self:ResetJoins()
	self:ResetFilters()
	self:ResetVirtualFields()
	self:_WipeResults()
	self._resultIsStale = true
	return self
end

---Resets any virtual fields added to the database query.
---@return DatabaseQuery
function DatabaseQuery:ResetVirtualFields()
	for _, func in pairs(self._virtualFieldFunc) do
		if private.smartMapReaderContext[func] then
			private.smartMapReaderContext[func].query = nil
		end
	end
	wipe(self._virtualFieldFunc)
	wipe(self._virtualFieldArgField)
	wipe(self._virtualFieldType)
	wipe(self._virtualFieldDefault)
	self._resultIsStale = true
	return self
end

---Resets any filtering clauses of the database query.
---@return DatabaseQuery
function DatabaseQuery:ResetFilters()
	self._rootClause:_Release()
	self._rootClause = QueryClause.Get()
		:And()
	self._currentClause = self._rootClause
	self._resultIsStale = true
	return self
end

---Resets any ordering clauses of the database query.
---@return DatabaseQuery
function DatabaseQuery:ResetOrderBy()
	wipe(self._orderBy)
	wipe(self._orderByAscending)
	self._resultIsStale = true
	return self
end

---Resets any joins of the database query.
---@return DatabaseQuery
function DatabaseQuery:ResetJoins()
	for _, db in ipairs(self._joinDBs) do
		db:_RemoveQuery(self)
	end
	wipe(self._joinTypes)
	wipe(self._joinDBs)
	wipe(self._joinFields)
	wipe(self._joinForeignFields)
	for _, query in ipairs(self._aggregateJoinQueries) do
		if query then
			query:Release()
		end
	end
	wipe(self._aggregateJoinQueries)
	self._resultIsStale = true
	return self
end

---Resets any distinct clauses of the database query.
---@return DatabaseQuery
function DatabaseQuery:ResetDistinct()
	self._distinct = nil
	self._resultIsStale = true
	return self
end

---Resets any select clauses of the database query.
---@return DatabaseQuery
function DatabaseQuery:ResetSelect()
	wipe(self._select)
	self._resultIsStale = true
	return self
end

---Gets info on a specific order by clause.
---@param index number The index of the order by clause
---@return string? @The field name
---@return boolean|nil @Whether or not the sort is ascending
function DatabaseQuery:GetOrderBy(index)
	assert(self._orderBy[index])
	return self._orderBy[index], self._orderByAscending[index]
end

---Gets info on the last order by clause.
---@return string? @The field name
---@return boolean|nil @Whether or not the sort is ascending
function DatabaseQuery:GetLastOrderBy()
	return self._orderBy[#self._orderBy], self._orderByAscending[#self._orderByAscending]
end

---Updates the last order by clause.
---@param field string The name of the field to order by
---@param ascending boolean Whether to order in ascending order (descending otherwise)
---@return DatabaseQuery
function DatabaseQuery:UpdateLastOrderBy(field, ascending)
	assert(#self._orderBy > 0)
	tremove(self._orderBy)
	tremove(self._orderByAscending)
	self:OrderBy(field, ascending)
	return self
end

---Get a result row by its UUID.
---@param uuid number The UUID of the row to get
---@return DatabaseRow @The result row
function DatabaseQuery:GetResultRowByUUID(uuid)
	if not self._resultRowLookup[uuid] then
		self:_CreateResultRow(uuid)
	end
	return self._resultRowLookup[uuid]
end

---Get the selected fields by UUID.
---@param uuid number The UUID of the row to get
---@return ... @The selected fields
function DatabaseQuery:GetSelectedFieldsByUUID(uuid)
	assert(#self._select > 0)
	if not self._resultRowLookup[uuid] then
		self:_CreateResultRow(uuid)
	end
	local result = TempTable.Acquire(unpack(self._select))
	for i, field in ipairs(result) do
		result[i] = self:_GetResultRowData(uuid, field)
	end
	return TempTable.UnpackAndRelease(result)
end

---Gets a publisher for query result changes.
---@return ReactivePublisher
function DatabaseQuery:Publisher()
	return self._stream:PublisherWithInitialValue(nil)
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function DatabaseQuery:_ValidateComparisonValue(field, value, otherField)
	local fieldType = self:_GetFieldType(field)
	assert(fieldType, "Field does not exist")
	assert(not self:_GetListFieldType(field), "Cannot use this method on list fields")
	if value == Constants.OTHER_FIELD_QUERY_PARAM then
		assert(fieldType == self:_GetFieldType(otherField))
	elseif value ~= Constants.BOUND_QUERY_PARAM then
		assert(fieldType == type(value))
	end
end

function DatabaseQuery:_GetJoinType(field)
	for i, db in ipairs(self._joinDBs) do
		if db:_GetFieldType(field) then
			return self._joinTypes[i]
		end
	end
end

function DatabaseQuery:_GetFieldType(field)
	local fieldType = self._virtualFieldType[field] or self._db:_GetFieldType(field)
	if fieldType then
		return fieldType
	end
	for i, db in ipairs(self._joinDBs) do
		if field == self._joinForeignFields[i] and self._joinTypes[i] == "AGGREGATE_SUM" then
			fieldType = "number"
		else
			fieldType = db:_GetFieldType(field)
		end
		if fieldType then
			return fieldType
		end
	end
end

function DatabaseQuery:_GetListFieldType(field)
	if self._virtualFieldType[field] then
		return nil
	end
	if self._db:_GetFieldType(field) then
		return self._db:_GetListFieldType(field)
	end
	for _, db in ipairs(self._joinDBs) do
		if db:_GetFieldType(field) then
			return db:_GetListFieldType(field)
		end
	end
end

function DatabaseQuery:_MarkResultStale(changedFields)
	assert(self._iteratorState == "IDLE" or self._iteratorState == "IN_PROGRESS_CAN_ABORT" or self._iteratorState == "PENDING_ABORT")
	if self._resultIsStale then
		-- already marked stale
		return
	end

	if self._resultDependencies._all or not changedFields then
		-- either the result depends on all fields or we weren't given a table of changed fields
		self._resultIsStale = true
		if self._iteratorState == "IN_PROGRESS_CAN_ABORT" then
			self._iteratorState = "PENDING_ABORT"
		end
		return
	end

	-- check if any of the fields our result is based on changed
	for field in pairs(changedFields) do
		if self._resultDependencies[field] then
			self._resultIsStale = true
			if self._iteratorState == "IN_PROGRESS_CAN_ABORT" then
				self._iteratorState = "PENDING_ABORT"
			end
			return
		end
	end

	-- clear the cached values for the changed fields
	for _, row in pairs(self._resultRowLookup) do
		if row ~= false then
			for field in pairs(changedFields) do
				rawset(row, field, nil)
			end
		end
	end
	if self._iteratorState == "IN_PROGRESS_CAN_ABORT" then
		self._iteratorState = "PENDING_ABORT"
	end
end

function DatabaseQuery:_DoUpdateCallback(uuid)
	if not self._updateCallback and self._stream:GetNumPublishers() == 0 then
		assert(self._iteratorState == "IDLE" or self._iteratorState == "PENDING_ABORT")
		return
	end
	-- can't have an update callback on an abortable iterator
	assert(self._iteratorState == "IDLE")
	if self._updatesPaused > 0 then
		self._queuedUpdate = true
	else
		self._queuedUpdate = false
		-- Pause query updates while processing this one so we don't end up recursing
		self:SetUpdatesPaused(true)
		local updatedUUID = nil
		if self._resultIsStale or not uuid then
			updatedUUID = nil
		elseif self._db:_ContainsUUID(uuid) then
			updatedUUID = uuid
		else
			-- the UUID is from a joined DB, so see if we can easily translate it to a local UUID
			local localUUID = nil
			for i = 1, #self._joinDBs do
				local joinDB = self._joinDBs[i]
				if not self._aggregateJoinQueries[i] and joinDB:_ContainsUUID(uuid) then
					if localUUID then
						-- found more than once, so bail
						localUUID = nil
						break
					end
					local joinField = self._joinFields[i]
					local joinForeignField = self._joinForeignFields[i]
					local joinValue = joinDB:GetRowFieldByUUID(uuid, joinForeignField)
					if self._db:_IsUnique(joinField) then
						localUUID = self._db:_GetUniqueRow(joinField, joinValue)
					elseif self._db:_IsIndex(joinField) then
						local lowIndex, highIndex = self._db:_GetIndexListMatchingIndexRange(joinField, Util.ToIndexValue(joinValue))
						if not lowIndex or not highIndex or lowIndex ~= highIndex then
							-- can't use this index to find a single local UUID
							break
						end
						localUUID = self._db:_GetAllRowsByIndex(joinField)[lowIndex]
					end
				end
			end
			updatedUUID = localUUID
		end
		self._stream:Send(updatedUUID)
		if self._updateCallback then
			self:_updateCallback(updatedUUID, self._updateCallbackContext)
		end
		self:SetUpdatesPaused(false)
	end
end

function DatabaseQuery:_NewClause()
	assert(self._iteratorState == "IDLE")
	local newClause = QueryClause.Get(self._currentClause)
	self._currentClause:_InsertSubClause(newClause)
	self._resultIsStale = true
	return newClause
end

function DatabaseQuery:_NewVirtualField(field, func, argField, fieldType, defaultValue)
	assert(self._iteratorState == "IDLE")
	self._virtualFieldFunc[field] = func
	self._virtualFieldArgField[field] = argField
	self._virtualFieldType[field] = fieldType
	self._virtualFieldDefault[field] = defaultValue
	self._resultIsStale = true
end

function DatabaseQuery:_WipeResults()
	for _, row in pairs(self._resultRowLookup) do
		if row ~= false then
			row:Release()
		end
	end
	wipe(self._result)
	wipe(self._resultRowLookup)
	if self._updatesPaused > 0 then
		self._queuedUpdate = true
	end
end

function DatabaseQuery:_Execute()
	if not self._resultIsStale then
		return
	end
	assert(self._rootClause and self._currentClause == self._rootClause, "Did not end sub-clause")
	assert(self._iteratorState == "IDLE")
	assert(not next(self._iterDistinctUsed))

	-- clear the current result
	self:_WipeResults()

	-- get all the rows which we need to iterate over
	local firstOrderBy = self._orderBy[1]
	local skipFirstOrderBy = false
	local sortNeeded = firstOrderBy and true or false
	local indexType, indexField, indexArg1, indexArg2, indexArg3 = self:_GetQueryIndexInfo()
	self._result._queryOptimizationResult = indexType
	self._result._queryOptimizationField = indexField
	if indexType == "EMPTY" then
		sortNeeded = false
	elseif indexType == "UNIQUE" then
		-- we are looking for a unique row
		local indexValue = indexArg1
		local uuid = self._db:_GetUniqueRow(indexField, indexValue)
		if uuid and self:_ResultShouldIncludeRow(uuid, false, #self._joinDBs, self._distinct) then
			tinsert(self._result, uuid)
			self._resultRowLookup[uuid] = false
		end
		sortNeeded = false
	elseif indexType == "INDEX" then
		-- we're querying on an index, so use that index to populate the result
		local firstIndex, lastIndex, isStrict = indexArg1, indexArg2, indexArg3
		local isAscending = true
		if firstOrderBy and indexField == firstOrderBy then
			-- we're also ordering by this field so can skip the first OrderBy field
			self._result._queryOptimizationResult = "INDEX_AND_ORDER_BY"
			skipFirstOrderBy = true
			sortNeeded = #self._orderBy > 1
			isAscending = self._orderByAscending[1]
		end
		local indexList = self._db:_GetAllRowsByIndex(indexField)
		self:_AddResultRowsFromIndex(indexList, isStrict, firstIndex, lastIndex, isAscending, indexField)
	elseif indexType == "NONE" then
		if firstOrderBy and self._db:_IsIndex(firstOrderBy) then
			-- we're ordering on an index, so use that index to iterate through all the rows in order to skip the first OrderBy field
			self._result._queryOptimizationResult = "ORDER_BY"
			self._result._queryOptimizationField = firstOrderBy
			skipFirstOrderBy = true
			sortNeeded = #self._orderBy > 1
			local isAscending = self._orderByAscending[1]
			local indexList = self._db:_GetAllRowsByIndex(firstOrderBy)
			self:_AddResultRowsFromIndex(indexList, false, 1, #indexList, isAscending)
		else
			-- no optimizations
			self:_AddResultRowsCheckAll()
		end
	elseif indexType == "TRIGRAM" then
		local indexValue = indexArg1
		local uuids = TempTable.Acquire()
		self._db:_GetTrigramIndexMatchingRows(indexValue, uuids)
		self:_AddResultRowsFromIndex(uuids, false, 1, #uuids, true)
		TempTable.Release(uuids)
	else
		error("Invalid index type: "..tostring(indexType))
	end
	wipe(self._iterDistinctUsed)

	-- sort the results if necessary
	if sortNeeded then
		if #self._orderBy == 1 then
			assert(not skipFirstOrderBy)
			assert(not next(self._sortValueCache))
			for _, uuid in ipairs(self._result) do
				self._sortValueCache[uuid] = Util.ToIndexValue(self:_GetResultRowData(uuid, self._orderBy[1]))
			end
			Table.Sort(self._result, self._singleSortWrapper)
			wipe(self._sortValueCache)
		elseif skipFirstOrderBy and #self._orderBy == 2 then
			-- the result is already ordered by the first orderBy field, so iterate through it
			-- and sort each group of results where the first orderBy field is the same
			assert(not next(self._sortValueCache))
			local group = TempTable.Acquire()
			local subsetLen = 0
			local currentSortValue = nil
			for i = 1, #self._result do
				local uuid = self._result[i]
				local sortValue = Util.ToIndexValue(self:_GetResultRowData(uuid, self._orderBy[1]))
				self._sortValueCache[uuid] = Util.ToIndexValue(self:_GetResultRowData(uuid, self._orderBy[2]))
				if sortValue ~= currentSortValue then
					-- the first sort value changed, so we're now in a new group
					if subsetLen > 1 then
						-- sort the previous group
						Table.Sort(group, self._secondarySortWrapper)
						-- update the corresponding results
						local offset = i - subsetLen - 1
						for j = 1, subsetLen do
							self._result[offset + j] = group[j]
						end
					end
					subsetLen = 0
					wipe(group)
					currentSortValue = sortValue
				end
				subsetLen = subsetLen + 1
				group[subsetLen] = uuid
			end
			if subsetLen > 1 then
				-- sort the previous group
				Table.Sort(group, self._secondarySortWrapper)
				-- update the corresponding results
				local offset = #self._result - subsetLen
				for i = 1, subsetLen do
					self._result[offset + i] = group[i]
				end
			end
			TempTable.Release(group)
			wipe(self._sortValueCache)
		else
			Table.Sort(self._result, self._genericSortWrapper)
		end
	end

	-- update the dependencies
	wipe(self._resultDependencies)
	if next(self._virtualFieldFunc) then
		self._resultDependencies._all = true
	else
		for i = 1, #self._joinFields do
			self._resultDependencies[self._joinFields[i]] = true
		end
		for i = 1, #self._orderBy do
			self._resultDependencies[self._orderBy[i]] = true
		end
		if self._distinct then
			self._resultDependencies[self._distinct] = true
		end
		for i = 1, #self._select do
			self._resultDependencies[self._select[i]] = true
		end
		for field in self._db:FieldIterator() do
			if self._rootClause:_UsesField(field) then
				self._resultDependencies[field] = true
			end
		end
	end
	self._resultIsStale = false
end

function DatabaseQuery:_GetQueryIndexInfo()
	-- try to find the index with the least result rows
	local indexField, indexFirstIndex, indexLastIndex, indexIsStrict = nil, nil, nil, false
	local bestIndexDiff = math.huge
	for _, field in ipairs(self._db:_GetIndexAndUniqueList()) do
		local valueMin, valueMax = self:_IndexValueHelper(field)
		if valueMin == nil and valueMax == nil then
			-- continue
		elseif self._db:_IsUnique(field) and valueMin == valueMax then
			-- unique indexes result in a single row, at which point the benefit of trying to find something better (EMPTY) is negligible
			return "UNIQUE", field, valueMin
		elseif self._db:_IsIndex(field) then
			-- check how many rows this index results in
			local indexList = self._db:_GetAllRowsByIndex(field)
			local firstIndex = valueMin and self._db:_IndexListBinarySearch(field, valueMin, true) or min(1, #indexList)
			local lastIndex = valueMax and self._db:_IndexListBinarySearch(field, valueMax, false) or #indexList
			local indexDiff = lastIndex - firstIndex
			if indexDiff < 0 then
				-- there are no results within this index, so this is as good as it gets
				return "EMPTY", field
			else
				-- NOTE: string indexes can't be strict since they are case-insensitive
				local isStrict = type(valueMin) ~= "string" and type(valueMax) ~= "string" and self._rootClause:_IsStrictIndex(field, valueMin, valueMax)
				if isStrict then
					-- rough estimate that being able to skip the query makes each row cost 1/4 as much
					indexDiff = floor(indexDiff / 4)
				end
				if indexDiff < bestIndexDiff then
					-- this is our new best index
					indexField = field
					indexFirstIndex = firstIndex
					indexLastIndex = lastIndex
					indexIsStrict = isStrict
					bestIndexDiff = indexDiff
				end
			end
		end
	end
	if indexField then
		return "INDEX", indexField, indexFirstIndex, indexLastIndex, indexIsStrict
	end
	-- try the trigram index
	local trigramIndexField = self._db:_GetTrigramIndexField()
	if trigramIndexField then
		local trigramIndexValue = self._rootClause:_GetTrigramIndexValue(trigramIndexField)
		if trigramIndexValue then
			return "TRIGRAM", trigramIndexField, trigramIndexValue
		end
	end
	return "NONE"
end

function DatabaseQuery:_AddResultRowsFromIndex(indexList, skipQuery, firstIndex, lastIndex, isAscending, indexField)
	local numJoinDBs = #self._joinDBs
	local distinct = self._distinct
	local result = self._result
	local resultIndex = #self._result + 1
	local resultRowLookup = self._resultRowLookup
	for i = isAscending and firstIndex or lastIndex, isAscending and lastIndex or firstIndex, isAscending and 1 or -1 do
		local uuid = indexList[i]
		if skipQuery and numJoinDBs == 0 and not distinct then
			-- fast path where there's no further filtering so we add all rows
			result[resultIndex] = uuid
			resultIndex = resultIndex + 1
			resultRowLookup[uuid] = false
		elseif self:_ResultShouldIncludeRow(uuid, skipQuery, numJoinDBs, distinct, indexField) then
			result[resultIndex] = uuid
			resultIndex = resultIndex + 1
			resultRowLookup[uuid] = false
		end
	end
end

function DatabaseQuery:_AddResultRowsCheckAll()
	local numJoinDBs = #self._joinDBs
	local distinct = self._distinct
	local result = self._result
	local resultIndex = #self._result + 1
	local resultRowLookup = self._resultRowLookup
	for _, uuid in self._db:_UUIDIterator() do
		if self:_ResultShouldIncludeRow(uuid, false, numJoinDBs, distinct) then
			result[resultIndex] = uuid
			resultIndex = resultIndex + 1
			resultRowLookup[uuid] = false
		end
	end
end

function DatabaseQuery:_ResultShouldIncludeRow(uuid, skipQuery, numJoinDBs, distinct, ignoreField)
	for i = 1, numJoinDBs do
		if self._joinTypes[i] == "INNER" then
			local joinField = self._joinFields[i]
			local joinForeignField = self._joinForeignFields[i]
			if not self._joinDBs[i]:_GetUniqueRow(joinForeignField, self:_GetResultRowData(uuid, joinField)) then
				return false
			end
		end
	end
	if not skipQuery then
		self._tempResultRow:_SetUUID(uuid)
		if not self._rootClause:_IsTrue(self._tempResultRow, ignoreField) then
			return false
		end
	end
	if distinct then
		local distinctValue = self:_GetResultRowData(uuid, distinct)
		if self._iterDistinctUsed[distinctValue] then
			return false
		end
		self._iterDistinctUsed[distinctValue] = true
	end
	return true
end

function DatabaseQuery:_CreateResultRow(uuid)
	assert(self._resultRowLookup[uuid] == false)
	local row = QueryResultRow.Get()
	row:_Acquire(self._db, self)
	row:_SetUUID(uuid)
	self._resultRowLookup[uuid] = row
	return row
end

function DatabaseQuery:_IndexValueHelper(...)
	local num = select("#", ...)
	local valueMin, valueMax = nil, nil
	for i = 1, num do
		local fieldPart = select(i, ...)
		local partValueMin, partValueMax = self._rootClause:_GetIndexValue(fieldPart)
		if partValueMin == nil and partValueMax == nil then
			return
		end
		if num > 1 and (partValueMin == nil or partValueMax == nil) then
			-- only use multi-field indexes if there's both a min and max value
			return
		end
		if i > 1 then
			valueMin = valueMin .. Constants.DB_INDEX_VALUE_SEP .. partValueMin
			valueMax = valueMax .. Constants.DB_INDEX_VALUE_SEP .. partValueMax
		else
			valueMin = partValueMin
			valueMax = partValueMax
		end
	end
	return valueMin, valueMax
end

function DatabaseQuery:_PassThroughReleaseHelper(...)
	self:Release()
	return ...
end

function DatabaseQuery:_GetResultRowData(uuid, field)
	if self._virtualFieldFunc[field] then
		local argField = self._virtualFieldArgField[field]
		local argValue = nil
		if argField then
			argValue = self:_GetResultRowData(uuid, argField)
		else
			if not self._tempVirtualResultRow then
				self._tempVirtualResultRow = QueryResultRow.Get()
				self._tempVirtualResultRow:_Acquire(self._db, self)
			end
			self._tempVirtualResultRow:_SetUUID(uuid)
			argValue = self._tempVirtualResultRow
		end
		local value = self._virtualFieldFunc[field](argValue)
		if value == nil then
			value = self._virtualFieldDefault[field]
		end
		if type(value) ~= self._virtualFieldType[field] then
			error(format("Virtual field value not the correct type (%s, %s, %s)", tostring(argValue), tostring(value), field))
		end
		return value
	elseif #self._joinDBs == 0 or self._db:_GetFieldType(field) then
		-- this is a local field
		return self._db:GetRowFieldByUUID(uuid, field)
	else
		-- this is a foreign field
		local joinDB, joinField, joinForeignField, joinType, aggregateJoinField, aggregateJoinQuery = nil, nil, nil, nil, nil, nil
		for i = 1, #self._joinDBs do
			local testDB = self._joinDBs[i]
			local testAggregateJoinField = self._aggregateJoinQueries[i] and self._joinForeignFields[i] or nil
			if field == testAggregateJoinField or (not testAggregateJoinField and testDB:_GetFieldType(field)) then
				if joinDB then
					error("Multiple joined DBs have this field", 2)
				end
				joinDB = testDB
				joinField = self._joinFields[i]
				joinForeignField = self._joinForeignFields[i]
				joinType = self._joinTypes[i]
				aggregateJoinField = testAggregateJoinField
				aggregateJoinQuery = self._aggregateJoinQueries[i]
			end
		end
		if not joinDB then
			error("Invalid field: "..tostring(field), 2)
		end
		if joinType == "AGGREGATE_SUM" then
			if not aggregateJoinField or not aggregateJoinQuery then
				error("Missing aggregate join context: " + tostring(aggregateJoinField) + ", " + tostring(aggregateJoinQuery))
			end
			aggregateJoinQuery:BindParams(self:_GetResultRowData(uuid, joinField))
			return aggregateJoinQuery:Sum(aggregateJoinField)
		elseif joinType == "INNER" or joinType == "LEFT" then
			if aggregateJoinField or aggregateJoinQuery then
				error("Unexpected aggregate join context: " + tostring(aggregateJoinField) + ", " + tostring(aggregateJoinQuery))
			end
			local foreignUUID = joinDB:_GetUniqueRow(joinForeignField, self:_GetResultRowData(uuid, joinField))
			if foreignUUID then
				return joinDB:GetRowFieldByUUID(foreignUUID, field)
			end
		else
			error("Unknown join type: "..tostring(joinType))
		end
	end
end

function DatabaseQuery:_JoinHelper(joinType, db, field, foreignField, aggregateQuery)
	assert(type(field) == "string" and type(foreignField) == "string")
	local localFieldType = self._virtualFieldType[field] or self._db:_GetFieldType(field)
	local foreignFieldType = db:_GetFieldType(foreignField)
	assert(localFieldType, "Local field doesn't exist: "..field)
	assert(foreignFieldType, "Foreign field doesn't exist: "..foreignField)
	assert(not Table.KeyByValue(self._joinDBs, db), "Already joining with this DB")
	assert(self._iteratorState == "IDLE")
	assert((self._virtualFieldType[field] or not self._db:_GetListFieldType(field)) and not db:_GetListFieldType(foreignField))
	if aggregateQuery then
		assert(aggregateQuery.__class == DatabaseQuery)
		assert(strmatch(joinType, "^AGGREGATE_"))
		assert(not self._db:_GetFieldType(foreignField), "Local DB contains aggregate field: "..tostring(foreignField))
		assert(db:_GetFieldType(foreignField), "Foreign DB does not contains aggregate field: "..tostring(foreignField))
	else
		assert(localFieldType == foreignFieldType, format("Field types don't match (%s, %s, %s, %s)", field, tostring(localFieldType), foreignField, tostring(foreignFieldType)))
		assert(db:_IsUnique(foreignField), "Field must be unique in foreign DB")
		assert(not strmatch(joinType, "^AGGREGATE_"))
		assert(not aggregateQuery)
		for dbField in db:FieldIterator() do
			if dbField ~= field and dbField ~= foreignField then
				assert(not self._db:_GetFieldType(dbField), "Foreign field conflicts with local DB: "..tostring(dbField))
			end
		end
		for virtualField in pairs(self._virtualFieldFunc) do
			if virtualField ~= field then
				assert(not db:_GetFieldType(virtualField), "Virtual field conflicts with foreign DB: "..tostring(virtualField))
			end
		end
	end
	db:_RegisterQuery(self)
	tinsert(self._joinTypes, joinType)
	tinsert(self._joinDBs, db)
	tinsert(self._joinFields, field)
	tinsert(self._joinForeignFields, foreignField)
	tinsert(self._aggregateJoinQueries, aggregateQuery or false)
	self._resultIsStale = true
end

function DatabaseQuery:_GetSmartMapReader(map)
	for reader, context in pairs(private.smartMapReaderContext) do
		if context.map == map and context.query == nil then
			context.query = self
			return reader
		end
	end
	local reader = map:CreateReader(private.HandleSmartMapUpdate)
	private.smartMapReaderContext[reader] = {
		map = map,
		query = self,
	}
	return reader
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.DatabaseQuerySortSingle(self, aUUID, bUUID, isAscending)
	local aValue = self._sortValueCache[aUUID]
	local bValue = self._sortValueCache[bUUID]
	if aValue == bValue then
		-- make the sort stable
		return aUUID > bUUID
	elseif aValue == nil then
		-- sort nil to the end
		return false
	elseif bValue == nil then
		-- sort nil to the end
		return true
	elseif isAscending then
		return aValue < bValue
	else
		return aValue > bValue
	end
end

function private.DatabaseQuerySortGeneric(self, aUUID, bUUID)
	for i = 1, #self._orderBy do
		local orderByField = self._orderBy[i]
		local aValue = Util.ToIndexValue(self:_GetResultRowData(aUUID, orderByField))
		local bValue = Util.ToIndexValue(self:_GetResultRowData(bUUID, orderByField))
		if aValue == bValue then
			-- continue looping
		elseif aValue == nil then
			-- sort nil to the end
			return false
		elseif bValue == nil then
			-- sort nil to the end
			return true
		elseif self._orderByAscending[i] then
			return aValue < bValue
		else
			return aValue > bValue
		end
	end
	-- make the sort stable
	return aUUID > bUUID
end

function private.QueryResultAsUUIDIterator(self, index)
	index = index + 1
	local uuid = self._result[index]
	if not uuid then
		assert(self._iteratorState == "IN_PROGRESS")
		self._iteratorState = "IDLE"
		if self._autoRelease then
			self:Release()
		end
		return
	end
	return index, uuid
end

function private.QueryResultIterator(self, index)
	index = index + 1
	local uuid = self._result[index]
	if self._iteratorState == "ABORTED" then
		uuid = nil
	elseif self._iteratorState ~= "IN_PROGRESS" and self._iteratorState ~= "IN_PROGRESS_CAN_ABORT" then
		error("Invalid iteratorState: "..tostring(self._iteratorState))
	end
	if not uuid then
		assert(self._iteratorState == "IN_PROGRESS" or self._iteratorState == "IN_PROGRESS_CAN_ABORT" or self._iteratorState == "ABORTED")
		self._iteratorState = "IDLE"
		if self._autoRelease then
			self:Release()
		end
		return
	end
	local numSelectFields = #self._select
	if numSelectFields == 0 then
		local row = self._resultRowLookup[uuid]
		if not row then
			row = self:_CreateResultRow(uuid)
		end
		return index, row
	elseif #self._joinDBs == 0 and numSelectFields <= 5 then
		-- as an optimization, we don't need to create a result row
		if numSelectFields == 1 then
			return index, self:_GetResultRowData(uuid, self._select[1])
		elseif numSelectFields == 2 then
			return index, self:_GetResultRowData(uuid, self._select[1]), self:_GetResultRowData(uuid, self._select[2])
		elseif numSelectFields == 3 then
			return index, self:_GetResultRowData(uuid, self._select[1]), self:_GetResultRowData(uuid, self._select[2]), self:_GetResultRowData(uuid, self._select[3])
		elseif numSelectFields == 4 then
			return index, self:_GetResultRowData(uuid, self._select[1]), self:_GetResultRowData(uuid, self._select[2]), self:_GetResultRowData(uuid, self._select[3]), self:_GetResultRowData(uuid, self._select[4])
		elseif numSelectFields == 5 then
			return index, self:_GetResultRowData(uuid, self._select[1]), self:_GetResultRowData(uuid, self._select[2]), self:_GetResultRowData(uuid, self._select[3]), self:_GetResultRowData(uuid, self._select[4]), self:_GetResultRowData(uuid, self._select[5])
		else
			error("Invalid numSelectFields: "..tostring(numSelectFields))
		end
	else
		local row = self._resultRowLookup[uuid]
		if not row then
			row = self:_CreateResultRow(uuid)
		end
		return index, row:GetFields(unpack(self._select))
	end
end

function private.HandleSmartMapUpdate(reader, pendingChanges)
	local self = private.smartMapReaderContext[reader].query
	if not self then
		return
	end

	local updateFields = TempTable.Acquire()
	for field, func in pairs(self._virtualFieldFunc) do
		if func == reader then
			tinsert(updateFields, field)
			break
		end
	end
	assert(#updateFields == 1)
	self:_MarkResultStale(updateFields)
	TempTable.Release(updateFields)

	self:_DoUpdateCallback()
end

function private.UUIDDiffIterator(context, index)
	assert(context.inUse)
	wipe(context.uuids)
	if index > #context.result then
		wipe(context.result)
		context.inUse = false
		return
	end
	local action = context.result[index]
	local startIndex = context.result[index + 1]
	local num = context.result[index + 2]
	index = index + 3
	assert(action == "INSERT" or action == "REMOVE")
	assert(startIndex > 0 and num > 0 and num <= #context.result - index + 1)
	Table.InsertMultiple(context.uuids, unpack(context.result, index, index + num - 1))
	return index + num, action, startIndex, context.uuids
end
