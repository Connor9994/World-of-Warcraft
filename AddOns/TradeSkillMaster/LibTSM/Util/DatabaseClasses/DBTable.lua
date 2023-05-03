-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local DBTable = TSM.Init("Util.DatabaseClasses.DBTable") ---@class Util.DatabaseClasses.DBTable
local Util = TSM.Include("Util.DatabaseClasses.Util")
local QueryResultRow = TSM.Include("Util.DatabaseClasses.QueryResultRow")
local Query = TSM.Include("Util.DatabaseClasses.Query")
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local String = TSM.Include("Util.String")
local LibTSMClass = TSM.Include("LibTSMClass")
local DatabaseTable = LibTSMClass.DefineClass("DatabaseTable") ---@class DatabaseTable
local private = {
	createCallback = nil,
	-- make the initial UUID a very big negative number so it doesn't conflict with other numbers
	lastUUID = -1000000,
	bulkInsertTemp = {},
	smartMapReaderFieldLookup = {},
	usedTrigramSubStrTemp = {},
}
local LIST_FIELD_ENTRY_TYPE_LOOKUP = {
	STRING_LIST = "string",
	NUMBER_LIST = "number",
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function DBTable.SetCreateCallback(func)
	private.createCallback = func
end

function DBTable.Create(schema)
	return DatabaseTable(schema)
end



-- ============================================================================
-- Class Meta Methods
-- ============================================================================

function DatabaseTable:__init(schema)
	self._queries = {}
	self._indexLists = {}
	self._uniques = {}
	self._trigramIndexField = nil
	self._trigramIndexLists = {}
	self._indexOrUniqueFields = {}
	self._queryUpdatesPaused = 0
	self._queuedQueryUpdate = false
	self._bulkInsertContext = nil
	self._fieldOffsetLookup = {}
	self._fieldTypeLookup = {}
	self._storedFieldList = {}
	self._numStoredFields = 0
	self._data = {}
	self._uuids = {}
	self._uuidToDataOffsetLookup = {}
	self._newRowTemp = QueryResultRow.Get()
	self._newRowTempInUse = false
	self._smartMapInputLookup = {}
	self._smartMapInputFields = {}
	self._smartMapReaderLookup = {}
	self._listData = nil

	-- process all the fields and grab the indexFields for further processing
	local indexFields = TempTable.Acquire()
	for _, fieldName, fieldType, isIndex, isUnique, isTrigram, smartMap, smartMapInput in schema:_FieldIterator() do
		if smartMap then
			-- smart map fields aren't actually stored in the DB
			assert(self._fieldOffsetLookup[smartMapInput], "SmartMap field must be based on a stored field")
			local reader = smartMap:CreateReader(self:__closure("_HandleSmartMapReaderUpdate"))
			private.smartMapReaderFieldLookup[reader] = fieldName
			self._smartMapInputLookup[fieldName] = smartMapInput
			self._smartMapInputFields[smartMapInput] = self._smartMapInputFields[smartMapInput] or {}
			tinsert(self._smartMapInputFields[smartMapInput], fieldName)
			self._smartMapReaderLookup[fieldName] = reader
		else
			self._numStoredFields = self._numStoredFields + 1
			self._fieldOffsetLookup[fieldName] = self._numStoredFields
			tinsert(self._storedFieldList, fieldName)
		end
		self._fieldTypeLookup[fieldName] = fieldType
		if not self._listData and LIST_FIELD_ENTRY_TYPE_LOOKUP[fieldType] then
			self._listData = { nextIndex = 1 }
		end
		if isIndex then
			self._indexLists[fieldName] = {}
			tinsert(indexFields, fieldName)
		end
		if isUnique then
			self._uniques[fieldName] = {}
			tinsert(self._indexOrUniqueFields, fieldName)
		end
		if isTrigram then
			assert(not self._trigramIndexField and self._fieldOffsetLookup[fieldName] and fieldType == "string")
			self._trigramIndexField = fieldName
		end
	end

	-- process the index fields
	for _, field in ipairs(indexFields) do
		if not self._uniques[field] then
			tinsert(self._indexOrUniqueFields, field)
		end
	end

	TempTable.Release(indexFields)
	if private.createCallback then
		private.createCallback(self, schema)
	end
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

---Iterate over the fields.
---@return fun(): string @An iterator which iterator with fields: `field`
function DatabaseTable:FieldIterator()
	return Table.KeyIterator(self._fieldOffsetLookup)
end

---Create a new row.
---@return DatabaseRow @The new database row object
function DatabaseTable:NewRow()
	assert(not self._bulkInsertContext)
	local row = nil
	if not self._newRowTempInUse then
		row = self._newRowTemp
		self._newRowTempInUse = true
	else
		row = QueryResultRow.Get()
	end
	row:_Acquire(self, nil, private.GetNextUUID())
	return row
end

---Gets a new query.
---@return DatabaseQuery @The new database query object
function DatabaseTable:NewQuery()
	assert(not self._bulkInsertContext)
	return Query.Get(self)
end

---Delete a row by UUID.
---@param uuid number The UUID of the row to delete
function DatabaseTable:DeleteRowByUUID(uuid)
	assert(not self._bulkInsertContext)
	assert(self._uuidToDataOffsetLookup[uuid])
	for indexField in pairs(self._indexLists) do
		self:_IndexListRemove(indexField, uuid)
	end
	if self._trigramIndexField then
		self:_TrigramIndexRemove(uuid)
	end
	for field, uniqueValues in pairs(self._uniques) do
		uniqueValues[self:GetRowFieldByUUID(uuid, field)] = nil
	end
	self:_DeleteRowHelper(uuid)
	self:_UpdateQueries()
end

---Bulk delete rows from the DB by UUID.
---@param uuids number[] A list of UUIDs of rows to delete
function DatabaseTable:BulkDelete(uuids)
	assert(not self._trigramIndexField, "Cannot bulk delete on tables with trigram indexes")
	assert(not self._bulkInsertContext)
	local didRemove = TempTable.Acquire()
	for _, uuid in ipairs(uuids) do
		didRemove[uuid] = true
		for field, uniqueValues in pairs(self._uniques) do
			uniqueValues[self:GetRowFieldByUUID(uuid, field)] = nil
		end
		self:_DeleteRowHelper(uuid)
	end

	-- re-build the indexes
	for _, indexList in pairs(self._indexLists) do
		local prevIndexList = TempTable.Acquire()
		for i = 1, #indexList do
			prevIndexList[i] = indexList[i]
		end
		wipe(indexList)
		local insertIndex = 1
		for i = 1, #prevIndexList do
			local uuid = prevIndexList[i]
			if not didRemove[uuid] then
				indexList[insertIndex] = uuid
				insertIndex = insertIndex + 1
			end
		end
		TempTable.Release(prevIndexList)
	end

	TempTable.Release(didRemove)
	self:_UpdateQueries()
end

---Delete a row.
---@param deleteRow DatabaseRow The database row object to delete
function DatabaseTable:DeleteRow(deleteRow)
	assert(not self._bulkInsertContext)
	self:DeleteRowByUUID(deleteRow:GetUUID())
end

---Remove all rows.
function DatabaseTable:Truncate()
	wipe(self._uuids)
	wipe(self._uuidToDataOffsetLookup)
	wipe(self._data)
	if self._listData then
		wipe(self._listData)
		self._listData.nextIndex = 1
	end
	for _, indexList in pairs(self._indexLists) do
		wipe(indexList)
	end
	wipe(self._trigramIndexLists)
	for _, uniqueValues in pairs(self._uniques) do
		wipe(uniqueValues)
	end
	self:_UpdateQueries()
end

---Pauses or unpauses query updates.
---
---Query updates should be paused while performing batch row updates to improve performance and avoid spamming callbacks.
---@param paused boolean Whether or not query updates should be paused
function DatabaseTable:SetQueryUpdatesPaused(paused)
	self._queryUpdatesPaused = self._queryUpdatesPaused + (paused and 1 or -1)
	assert(self._queryUpdatesPaused >= 0)
	if self._queryUpdatesPaused == 0 and self._queuedQueryUpdate then
		self:_UpdateQueries()
	end
end

---Get a unique row.
---@param field string The unique field
---@param value any The value of the unique field
---@return DatabaseRow|nil @The result row or nil if none exists
function DatabaseTable:GetUniqueRow(field, value)
	local fieldType = self:_GetFieldType(field)
	if not fieldType then
		error(format("Field %s doesn't exist", tostring(field)), 3)
	elseif fieldType ~= type(value) then
		error(format("Field %s should be a %s, got %s", tostring(field), tostring(fieldType), type(value)), 3)
	elseif not self:_IsUnique(field) then
		error(format("Field %s is not unique", tostring(field)), 3)
	end
	local uuid = self:_GetUniqueRow(field, value)
	if not uuid then
		return nil
	end
	local row = QueryResultRow.Get()
	row:_Acquire(self)
	row:_SetUUID(uuid)
	return row
end

---Get a single field from a unique row.
---@param uniqueField string The unique field
---@param uniqueValue any The value of the unique field
---@param field string The field to get
---@return any|nil @The value of the field or nil if no row exists
function DatabaseTable:GetUniqueRowField(uniqueField, uniqueValue, field)
	local fieldType = self:_GetFieldType(uniqueField)
	if not fieldType then
		error(format("Field %s doesn't exist", tostring(uniqueField)), 3)
	elseif fieldType ~= type(uniqueValue) then
		error(format("Field %s should be a %s, got %s", tostring(uniqueField), tostring(fieldType), type(uniqueValue)), 3)
	elseif not self:_IsUnique(uniqueField) then
		error(format("Field %s is not unique", tostring(uniqueField)), 3)
	end
	local uuid = self:_GetUniqueRow(uniqueField, uniqueValue)
	if not uuid then
		return
	end
	return self:GetRowFieldByUUID(uuid, field)
end

---Get multiple fields from a unique row.
---@param uniqueField string The unique field
---@param uniqueValue any The value of the unique field
---@param ... any The fields to get
---@return any @The values of the fields or nil if no row exists
function DatabaseTable:GetUniqueRowFields(uniqueField, uniqueValue, ...)
	local field1, field2, field3, field4, extraValue = ...
	assert(not extraValue, "Can only get at most 4 fields")
	local fieldType = self:_GetFieldType(uniqueField)
	if not fieldType then
		error(format("Field %s doesn't exist", tostring(uniqueField)), 3)
	elseif fieldType ~= type(uniqueValue) then
		error(format("Field %s should be a %s, got %s", tostring(uniqueField), tostring(fieldType), type(uniqueValue)), 3)
	elseif not self:_IsUnique(uniqueField) then
		error(format("Field %s is not unique", tostring(uniqueField)), 3)
	end
	local uuid = self:_GetUniqueRow(uniqueField, uniqueValue)
	if not uuid then
		return
	end
	if field4 then
		return self:GetRowFieldByUUID(uuid, field1), self:GetRowFieldByUUID(uuid, field2), self:GetRowFieldByUUID(uuid, field3), self:GetRowFieldByUUID(uuid, field4)
	elseif field3 then
		return self:GetRowFieldByUUID(uuid, field1), self:GetRowFieldByUUID(uuid, field2), self:GetRowFieldByUUID(uuid, field3)
	elseif field2 then
		return self:GetRowFieldByUUID(uuid, field1), self:GetRowFieldByUUID(uuid, field2)
	else
		return self:GetRowFieldByUUID(uuid, field1)
	end
end

---Set a single field within a unique row.
---@param uniqueField string The unique field
---@param uniqueValue any The value of the unique field
---@param field string The field to set
---@param value any The value to set the field to
function DatabaseTable:SetUniqueRowField(uniqueField, uniqueValue, field, value)
	local uniqueFieldType = self:_GetFieldType(uniqueField)
	local fieldType = self:_GetFieldType(field)
	if not uniqueFieldType then
		error(format("Field %s doesn't exist", tostring(uniqueField)), 3)
	elseif uniqueFieldType ~= type(uniqueValue) then
		error(format("Field %s should be a %s, got %s", tostring(uniqueField), tostring(uniqueFieldType), type(uniqueValue)), 3)
	elseif not self:_IsUnique(uniqueField) then
		error(format("Field %s is not unique", tostring(uniqueField)), 3)
	elseif not fieldType then
		error(format("Field %s doesn't exist", tostring(field)), 3)
	elseif self:_GetListFieldType(field) then
		error("Cannot set list field using this method")
	elseif fieldType ~= type(value) then
		error(format("Field %s should be a %s, got %s", tostring(field), tostring(fieldType), type(value)), 3)
	elseif self:_IsUnique(field) then
		error(format("Field %s is unique and cannot be updated using this method", field))
	end
	local uuid = self:_GetUniqueRow(uniqueField, uniqueValue)
	assert(uuid)
	local dataOffset = self._uuidToDataOffsetLookup[uuid]
	local fieldOffset = self._fieldOffsetLookup[field]
	if not dataOffset then
		error("Invalid UUID: "..tostring(uuid))
	elseif not fieldOffset then
		error("Invalid field: "..tostring(field))
	end
	local prevValue = self._data[dataOffset + fieldOffset - 1]
	if prevValue == value then
		-- the value didn't change
		return
	end
	local isIndex = self:_IsIndex(field)
	if isIndex then
		-- remove the old value from the index first
		self:_IndexListRemove(field, uuid)
	end
	if self._trigramIndexField == field and #prevValue > 3 then
		self:_TrigramIndexRemove(uuid)
	end
	self._data[dataOffset + fieldOffset - 1] = value
	if isIndex then
		-- insert the new value into the index
		self:_IndexListInsert(field, uuid)
	end
	if self._trigramIndexField == field then
		self:_TrigramIndexInsert(uuid)
	end
	self:_UpdateQueries()
end

---Check whether or not a row with a unique value exists.
---@param uniqueField string The unique field
---@param uniqueValue any The value of the unique field
---@return boolean @Whether or not a row with the unique value exists
function DatabaseTable:HasUniqueRow(uniqueField, uniqueValue)
	local fieldType = self:_GetFieldType(uniqueField)
	if not fieldType then
		error(format("Field %s doesn't exist", tostring(uniqueField)), 3)
	elseif fieldType ~= type(uniqueValue) then
		error(format("Field %s should be a %s, got %s", tostring(uniqueField), tostring(fieldType), type(uniqueValue)), 3)
	elseif not self:_IsUnique(uniqueField) then
		error(format("Field %s is not unique", tostring(uniqueField)), 3)
	end
	return self:_GetUniqueRow(uniqueField, uniqueValue) and true or false
end

---Gets a row by it's UUID.
---@param uuid number The UUID of the row
---@param field string The field
---@return any @The value of the field
function DatabaseTable:GetRowFieldByUUID(uuid, field)
	local smartMapReader = self._smartMapReaderLookup[field]
	if smartMapReader then
		return smartMapReader[self:GetRowFieldByUUID(uuid, self._smartMapInputLookup[field])]
	end
	local dataOffset = self._uuidToDataOffsetLookup[uuid]
	local fieldOffset = self._fieldOffsetLookup[field]
	if not dataOffset then
		error("Invalid UUID: "..tostring(uuid))
	elseif not fieldOffset then
		error("Invalid field: "..tostring(field))
	end
	local result = self._data[dataOffset + fieldOffset - 1]
	if result == nil then
		error("Failed to get row data")
	end
	if self._listData and self:_GetListFieldType(field) then
		local len = self._listData[result]
		return unpack(self._listData, result + 1, result + len)
	else
		return result
	end
end

---Starts a bulk insert into the database.
function DatabaseTable:BulkInsertStart()
	assert(not self._bulkInsertContext)
	self._bulkInsertContext = TempTable.Acquire()
	self._bulkInsertContext.firstDataIndex = nil
	self._bulkInsertContext.firstUUIDIndex = nil
	self._bulkInsertContext.partitionUUIDIndex = nil
	self._bulkInsertContext.fastNum = not self._listData and self._numStoredFields or nil -- TODO: Support this?
	if Table.Count(self._uniques) == 1 then
		local uniqueField = next(self._uniques)
		self._bulkInsertContext.fastUnique = Table.GetDistinctKey(self._storedFieldList, uniqueField)
	end
	self:SetQueryUpdatesPaused(true)
end

---Truncates and then starts a bulk insert into the database.
function DatabaseTable:TruncateAndBulkInsertStart()
	self:SetQueryUpdatesPaused(true)
	self:Truncate()
	self:BulkInsertStart()
	-- Calling :BulkInsertStart() pauses query updates, so undo our pausing
	self:SetQueryUpdatesPaused(false)
end

---Inserts a new row as part of the on-going bulk insert.
---@param ... any The values which make up this new row (in `schema.fieldOrder` order)
function DatabaseTable:BulkInsertNewRow(...)
	local v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, extraValue = ...
	local uuid = private.GetNextUUID()
	local rowIndex = #self._data + 1
	local uuidIndex = #self._uuids + 1
	if not self._bulkInsertContext then
		error("Bulk insert hasn't been started")
	elseif extraValue ~= nil then
		error("Too many values")
	elseif not self._bulkInsertContext.firstDataIndex then
		self._bulkInsertContext.firstDataIndex = rowIndex
		self._bulkInsertContext.firstUUIDIndex = uuidIndex
	end

	local tempTbl = private.bulkInsertTemp
	tempTbl[1] = v1
	tempTbl[2] = v2
	tempTbl[3] = v3
	tempTbl[4] = v4
	tempTbl[5] = v5
	tempTbl[6] = v6
	tempTbl[7] = v7
	tempTbl[8] = v8
	tempTbl[9] = v9
	tempTbl[10] = v10
	tempTbl[11] = v11
	tempTbl[12] = v12
	tempTbl[13] = v13
	tempTbl[14] = v14
	tempTbl[15] = v15
	tempTbl[16] = v16
	tempTbl[17] = v17
	tempTbl[18] = v18
	tempTbl[19] = v19
	tempTbl[20] = v20
	tempTbl[21] = v21
	tempTbl[22] = v22
	tempTbl[23] = v23
	local numFields = #tempTbl
	if numFields ~= self._numStoredFields then
		error(format("Invalid number of values (%d, %s)", numFields, tostring(self._numStoredFields)))
	end
	self._uuidToDataOffsetLookup[uuid] = rowIndex
	self._uuids[uuidIndex] = uuid

	for i = 1, numFields do
		local field = self._storedFieldList[i]
		local value = tempTbl[i]
		local fieldType = self._fieldTypeLookup[field]
		local listFieldType = LIST_FIELD_ENTRY_TYPE_LOOKUP[fieldType]
		if listFieldType then
			if type(value) ~= "table" then
				error(format("Expected list value, got %s", type(value)), 2)
			end
			local len = #value
			for j, v in pairs(value) do
				if type(i) ~= "number" or j < 1 or j > len then
					error("Invalid table index: "..tostring(j), 2)
				elseif type(v) ~= listFieldType then
					error(format("List (%s) entries should be of type %s, got %s", tostring(field), listFieldType, tostring(v)), 2)
				end
			end
		elseif type(value) ~= fieldType then
			error(format("Field %s should be a %s, got %s", tostring(field), tostring(fieldType), type(value)), 2)
		end
		if listFieldType then
			self._data[rowIndex + i - 1] = self:_InsertListData(value)
		else
			self._data[rowIndex + i - 1] = value
		end
		local uniqueValues = self._uniques[field]
		if uniqueValues then
			if uniqueValues[value] ~= nil then
				error(format("A row with this unique value (%s) already exists", tostring(value)), 2)
			end
			uniqueValues[value] = uuid
		end
	end
end

---An optimized version of BulkInsertNewRow() for 6 fields with minimal error checking.
function DatabaseTable:BulkInsertNewRowFast6(v1, v2, v3, v4, v5, v6, ...)
	local uuid = private.GetNextUUID()
	local rowIndex = #self._data + 1
	local uuidIndex = #self._uuids + 1
	if not self._bulkInsertContext then
		error("Bulk insert hasn't been started")
	elseif self._bulkInsertContext.fastNum ~= 6 then
		error("Invalid usage of fast insert")
	elseif v6 == nil or ... ~= nil then
		error("Wrong number of values")
	elseif not self._bulkInsertContext.firstDataIndex then
		self._bulkInsertContext.firstDataIndex = rowIndex
		self._bulkInsertContext.firstUUIDIndex = uuidIndex
	end

	self._uuidToDataOffsetLookup[uuid] = rowIndex
	self._uuids[uuidIndex] = uuid

	self._data[rowIndex] = v1
	self._data[rowIndex + 1] = v2
	self._data[rowIndex + 2] = v3
	self._data[rowIndex + 3] = v4
	self._data[rowIndex + 4] = v5
	self._data[rowIndex + 5] = v6

	if self._bulkInsertContext.fastUnique == 1 then
		-- the first field is always a unique (and the only unique)
		local uniqueValues = self._uniques[self._storedFieldList[1]]
		if uniqueValues[v1] ~= nil then
			error(format("A row with this unique value (%s) already exists", tostring(v1)), 2)
		end
		uniqueValues[v1] = uuid
	elseif self._bulkInsertContext.fastUnique then
		error("Invalid unique field num")
	end
end

---An optimized version of BulkInsertNewRow() for 8 fields with minimal error checking.
function DatabaseTable:BulkInsertNewRowFast8(v1, v2, v3, v4, v5, v6, v7, v8, ...)
	local uuid = private.GetNextUUID()
	local rowIndex = #self._data + 1
	local uuidIndex = #self._uuids + 1
	if not self._bulkInsertContext then
		error("Bulk insert hasn't been started")
	elseif self._bulkInsertContext.fastNum ~= 8 then
		error("Invalid usage of fast insert")
	elseif v8 == nil or ... ~= nil then
		error("Wrong number of values")
	elseif not self._bulkInsertContext.firstDataIndex then
		self._bulkInsertContext.firstDataIndex = rowIndex
		self._bulkInsertContext.firstUUIDIndex = uuidIndex
	end

	self._uuidToDataOffsetLookup[uuid] = rowIndex
	self._uuids[uuidIndex] = uuid

	self._data[rowIndex] = v1
	self._data[rowIndex + 1] = v2
	self._data[rowIndex + 2] = v3
	self._data[rowIndex + 3] = v4
	self._data[rowIndex + 4] = v5
	self._data[rowIndex + 5] = v6
	self._data[rowIndex + 6] = v7
	self._data[rowIndex + 7] = v8

	if self._bulkInsertContext.fastUnique == 1 then
		-- the first field is always a unique (and the only unique)
		local uniqueValues = self._uniques[self._storedFieldList[1]]
		if uniqueValues[v1] ~= nil then
			error(format("A row with this unique value (%s) already exists", tostring(v1)), 2)
		end
		uniqueValues[v1] = uuid
	elseif self._bulkInsertContext.fastUnique then
		error("Invalid unique field num")
	end
end

---An optimized version of BulkInsertNewRow() for 12 fields with minimal error checking.
function DatabaseTable:BulkInsertNewRowFast12(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, ...)
	local uuid = private.GetNextUUID()
	local rowIndex = #self._data + 1
	local uuidIndex = #self._uuids + 1
	if not self._bulkInsertContext then
		error("Bulk insert hasn't been started")
	elseif self._bulkInsertContext.fastNum ~= 12 then
		error("Invalid usage of fast insert")
	elseif v11 == nil or ... ~= nil then
		error("Wrong number of values")
	elseif not self._bulkInsertContext.firstDataIndex then
		self._bulkInsertContext.firstDataIndex = rowIndex
		self._bulkInsertContext.firstUUIDIndex = uuidIndex
	end

	self._uuidToDataOffsetLookup[uuid] = rowIndex
	self._uuids[uuidIndex] = uuid

	self._data[rowIndex] = v1
	self._data[rowIndex + 1] = v2
	self._data[rowIndex + 2] = v3
	self._data[rowIndex + 3] = v4
	self._data[rowIndex + 4] = v5
	self._data[rowIndex + 5] = v6
	self._data[rowIndex + 6] = v7
	self._data[rowIndex + 7] = v8
	self._data[rowIndex + 8] = v9
	self._data[rowIndex + 9] = v10
	self._data[rowIndex + 10] = v11
	self._data[rowIndex + 11] = v12

	if self._bulkInsertContext.fastUnique == 1 then
		-- the first field is always a unique (and the only unique)
		local uniqueValues = self._uniques[self._storedFieldList[1]]
		if uniqueValues[v1] ~= nil then
			error(format("A row with this unique value (%s) already exists", tostring(v1)), 2)
		end
		uniqueValues[v1] = uuid
	elseif self._bulkInsertContext.fastUnique then
		error("Invalid unique field num")
	end
end

---An optimized version of BulkInsertNewRow() for 15 fields with minimal error checking.
function DatabaseTable:BulkInsertNewRowFast15(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, ...)
	local uuid = private.GetNextUUID()
	local rowIndex = #self._data + 1
	local uuidIndex = #self._uuids + 1
	if not self._bulkInsertContext then
		error("Bulk insert hasn't been started")
	elseif self._bulkInsertContext.fastNum ~= 15 then
		error("Invalid usage of fast insert")
	elseif v15 == nil or ... ~= nil then
		error("Wrong number of values")
	elseif not self._bulkInsertContext.firstDataIndex then
		self._bulkInsertContext.firstDataIndex = rowIndex
		self._bulkInsertContext.firstUUIDIndex = uuidIndex
	end

	self._uuidToDataOffsetLookup[uuid] = rowIndex
	self._uuids[uuidIndex] = uuid

	self._data[rowIndex] = v1
	self._data[rowIndex + 1] = v2
	self._data[rowIndex + 2] = v3
	self._data[rowIndex + 3] = v4
	self._data[rowIndex + 4] = v5
	self._data[rowIndex + 5] = v6
	self._data[rowIndex + 6] = v7
	self._data[rowIndex + 7] = v8
	self._data[rowIndex + 8] = v9
	self._data[rowIndex + 9] = v10
	self._data[rowIndex + 10] = v11
	self._data[rowIndex + 11] = v12
	self._data[rowIndex + 12] = v13
	self._data[rowIndex + 13] = v14
	self._data[rowIndex + 14] = v15

	if self._bulkInsertContext.fastUnique == 1 then
		-- the first field is always a unique (and the only unique)
		local uniqueValues = self._uniques[self._storedFieldList[1]]
		if uniqueValues[v1] ~= nil then
			error(format("A row with this unique value (%s) already exists", tostring(v1)), 2)
		end
		uniqueValues[v1] = uuid
	elseif self._bulkInsertContext.fastUnique then
		error("Invalid unique field num")
	end
	return uuid
end

---Indicates that a partition should be stored at the current number of rows in the table for optimizations.
function DatabaseTable:BulkInsertPartition()
	assert(self._bulkInsertContext, "Bulk insert hasn't been started")
	assert(not self._bulkInsertContext.partitionUUIDIndex)
	self._bulkInsertContext.partitionUUIDIndex = #self._uuids
end

---Ends a bulk insert into the database.
function DatabaseTable:BulkInsertEnd()
	assert(self._bulkInsertContext)
	if self._bulkInsertContext.firstDataIndex then
		local numNewRows = #self._uuids - self._bulkInsertContext.firstUUIDIndex + 1
		local newRowRatio = numNewRows / #self._uuids
		local partitionUUIDIndex = self._bulkInsertContext.partitionUUIDIndex
		for field, indexList in pairs(self._indexLists) do
			local isSimpleIndex = partitionUUIDIndex and not self._smartMapReaderLookup[field]
			local fieldOffset = self._fieldOffsetLookup[field]
			if newRowRatio < 0.01 then
				-- we inserted less than 1% of the rows, so just insert the new index values 1 by 1
				for i = self._bulkInsertContext.firstUUIDIndex, #self._uuids do
					local uuid = self._uuids[i]
					self:_IndexListInsert(field, uuid)
				end
			else
				-- insert the new index values
				local indexValues = TempTable.Acquire()
				for i = 1, #self._uuids do
					local uuid = self._uuids[i]
					if isSimpleIndex then
						indexValues[uuid] = Util.ToIndexValue(self._data[self._uuidToDataOffsetLookup[uuid] + fieldOffset - 1])
					else
						indexValues[uuid] = self:_GetRowIndexValue(uuid, field)
					end
					if i >= self._bulkInsertContext.firstUUIDIndex then
						indexList[i] = uuid
					end
				end
				if partitionUUIDIndex and Table.IsSortedWithValueLookup(indexList, indexValues, nil, partitionUUIDIndex) and Table.IsSortedWithValueLookup(indexList, indexValues, partitionUUIDIndex + 1, nil) then
					-- values on either side of the partition are already sorted,
					-- so we can just merge the two portions instead of sorting the entire index list
					local part1 = TempTable.Acquire()
					local part2 = TempTable.Acquire()
					for i = 1, #indexList do
						if i <= partitionUUIDIndex then
							tinsert(part1, indexList[i])
						else
							tinsert(part2, indexList[i])
						end
					end
					wipe(indexList)
					Table.MergeSortedWithValueLookup(part1, part2, indexList, indexValues)
					TempTable.Release(part1)
					TempTable.Release(part2)
					assert(Table.IsSortedWithValueLookup(indexList, indexValues))
				elseif not Table.IsSortedWithValueLookup(indexList, indexValues) then
					Table.SortWithValueLookup(indexList, indexValues)
				end
				TempTable.Release(indexValues)
			end
		end
		if self._trigramIndexField then
			if newRowRatio < 0.01 then
				-- we inserted less than 1% of the rows, so just insert the new index values 1 by 1
				for i = self._bulkInsertContext.firstUUIDIndex, #self._uuids do
					self:_TrigramIndexInsert(self._uuids[i])
				end
			else
				local trigramIndexLists = self._trigramIndexLists
				wipe(trigramIndexLists)
				local trigramValues = TempTable.Acquire()
				local usedSubStrTemp = private.usedTrigramSubStrTemp
				wipe(usedSubStrTemp)
				for i = 1, #self._uuids do
					local uuid = self._uuids[i]
					local value = private.TrigramValueFunc(uuid, self, self._trigramIndexField)
					trigramValues[uuid] = value
					for word in String.SplitIterator(value, " ") do
						for j = 1, #word - 2 do
							local subStr = strsub(word, j, j + 2)
							if usedSubStrTemp[subStr] ~= uuid then
								usedSubStrTemp[subStr] = uuid
								local list = trigramIndexLists[subStr]
								if not list then
									trigramIndexLists[subStr] = { uuid }
								else
									list[#list + 1] = uuid
								end
							end
						end
					end
				end
				-- sort all the trigram index lists
				for _, list in pairs(trigramIndexLists) do
					Table.Sort(list)
				end
				TempTable.Release(trigramValues)
			end
		end
		self:_UpdateQueries()
	end
	TempTable.Release(self._bulkInsertContext)
	self._bulkInsertContext = nil
	self:SetQueryUpdatesPaused(false)
end

---Aborts a bulk insert into the database without adding any of the rows.
function DatabaseTable:BulkInsertAbort()
	assert(self._bulkInsertContext)
	if self._bulkInsertContext.firstDataIndex then
		-- remove all the unique values
		for i = #self._uuids, self._bulkInsertContext.firstUUIDIndex, -1 do
			local uuid = self._uuids[i]
			for field, values in pairs(self._uniques) do
				local value = self:GetRowFieldByUUID(uuid, field)
				if values[value] == nil then
					error("Could not find unique values")
				end
				values[value] = nil
			end
		end

		-- remove all the UUIDs
		for i = #self._uuids, self._bulkInsertContext.firstUUIDIndex, -1 do
			local uuid = self._uuids[i]
			self._uuidToDataOffsetLookup[uuid] = nil
			self._uuids[i] = nil
		end

		-- remove all the data we inserted
		table.removemulti(self._data, self._bulkInsertContext.firstDataIndex, #self._data - self._bulkInsertContext.firstDataIndex + 1)
	end
	TempTable.Release(self._bulkInsertContext)
	self._bulkInsertContext = nil
	self:SetQueryUpdatesPaused(false)
end

---Returns a raw iterator over all rows in the database.
---@return fun(): number, ... @The iterator with fields (index, <DB_FIELDS...>)
function DatabaseTable:RawIterator()
	assert(not self._listData)
	return private.RawIterator, self, 1 - self._numStoredFields
end

---Gets the number of rows in the database.
---@return number
function DatabaseTable:GetNumRows()
	return #self._data / self._numStoredFields
end

---Gets the raw database data table for highly-optimized low-level operations.
---@return table
function DatabaseTable:GetRawData()
	assert(not self._listData)
	return self._data
end

---Gets the number of stored fields.
---@return number
function DatabaseTable:GetNumStoredFields()
	return self._numStoredFields
end



-- ============================================================================
-- Private Class Methods
-- ============================================================================

function DatabaseTable:_UUIDIterator()
	return ipairs(self._uuids)
end

function DatabaseTable:_GetFieldType(field)
	return self._fieldTypeLookup[field]
end

function DatabaseTable:_GetListFieldType(field)
	local fieldType = self._fieldTypeLookup[field]
	if not fieldType then
		error("Invalid field: "..tostring(field))
	end
	return LIST_FIELD_ENTRY_TYPE_LOOKUP[fieldType]
end

function DatabaseTable:_IsIndex(field)
	return self._indexLists[field] and true or false
end

function DatabaseTable:_GetTrigramIndexField()
	return self._trigramIndexField
end

function DatabaseTable:_IsUnique(field)
	return self._uniques[field] and true or false
end

function DatabaseTable:_GetIndexAndUniqueList()
	return self._indexOrUniqueFields
end

function DatabaseTable:_GetAllRowsByIndex(indexField)
	return self._indexLists[indexField]
end

function DatabaseTable:_IsSmartMapField(field)
	return self._smartMapReaderLookup[field] and true or false
end

function DatabaseTable:_ContainsUUID(uuid)
	return self._uuidToDataOffsetLookup[uuid] and true or false
end

function DatabaseTable:_GetListFields(result)
	if not self._listData then
		return
	end
	for field in pairs(self._fieldTypeLookup) do
		local listFieldType = self:_GetListFieldType(field)
		if listFieldType then
			result[field] = listFieldType
		end
	end
end

function DatabaseTable:_IndexListBinarySearch(indexField, indexValue, matchLowest, low, high)
	local indexList = self._indexLists[indexField]
	low = low or 1
	high = high or #indexList
	local firstMatchLow, firstMatchHigh = nil, nil
	while low <= high do
		local mid = floor((low + high) / 2)
		local rowValue = self:_GetRowIndexValue(indexList[mid], indexField)
		if rowValue == indexValue then
			-- cache the first low and high values which contain a match to make future searches faster
			firstMatchLow = firstMatchLow or low
			firstMatchHigh = firstMatchHigh or high
			if matchLowest then
				-- treat this as too high as there may be lower indexes with the same value
				high = mid - 1
			else
				-- treat this as too low as there may be lower indexes with the same value
				low = mid + 1
			end
		elseif rowValue < indexValue then
			-- we're too low
			low = mid + 1
		else
			-- we're too high
			high = mid - 1
		end
	end
	return matchLowest and low or high, firstMatchLow, firstMatchHigh
end

function DatabaseTable:_GetIndexListMatchingIndexRange(indexField, indexValue)
	local lowerBound, firstMatchLow, firstMatchHigh = self:_IndexListBinarySearch(indexField, indexValue, true)
	if not firstMatchLow then
		-- we didn't find an exact match
		return
	end
	local upperBound = self:_IndexListBinarySearch(indexField, indexValue, false, firstMatchLow, firstMatchHigh)
	assert(upperBound)
	return lowerBound, upperBound
end

function DatabaseTable:_GetUniqueRow(field, value)
	return self._uniques[field][value]
end

function DatabaseTable:_RegisterQuery(query)
	tinsert(self._queries, query)
end

function DatabaseTable:_RemoveQuery(query)
	assert(Table.RemoveByValue(self._queries, query) == 1)
end

function DatabaseTable:_UpdateQueries(uuid, oldValues)
	if self._queryUpdatesPaused > 0 then
		self._queuedQueryUpdate = true
	else
		self._queuedQueryUpdate = false
		-- Pause query updates while processing this one so we don't end up recursing
		self:SetQueryUpdatesPaused(true)
		-- We need to mark all the queries stale first as an update callback may cause another of the queries to run which may not have yet been marked stale
		for _, query in ipairs(self._queries) do
			query:_MarkResultStale(oldValues)
		end
		for _, query in ipairs(self._queries) do
			query:_DoUpdateCallback(uuid)
		end
		self:SetQueryUpdatesPaused(false)
	end
end

function DatabaseTable:_IndexListInsert(field, uuid)
	Table.InsertSorted(self._indexLists[field], uuid, private.IndexValueFunc, self, field)
end

function DatabaseTable:_IndexListRemove(field, uuid)
	local indexList = self._indexLists[field]
	local indexValue = self:_GetRowIndexValue(uuid, field)
	local deleteIndex = nil
	local lowIndex, highIndex = self:_GetIndexListMatchingIndexRange(field, indexValue)
	for i = lowIndex, highIndex do
		if indexList[i] == uuid then
			deleteIndex = i
			break
		end
	end
	assert(deleteIndex)
	tremove(indexList, deleteIndex)
end

function DatabaseTable:_TrigramIndexInsert(uuid)
	local field = self._trigramIndexField
	local indexValue = private.TrigramValueFunc(uuid, self, field)
	wipe(private.usedTrigramSubStrTemp)
	for word in String.SplitIterator(indexValue, " ") do
		for i = 1, #word - 2 do
			local subStr = strsub(word, i, i + 2)
			if not private.usedTrigramSubStrTemp[subStr] then
				private.usedTrigramSubStrTemp[subStr] = true
				if not self._trigramIndexLists[subStr] then
					self._trigramIndexLists[subStr] = { uuid }
				else
					Table.InsertSorted(self._trigramIndexLists[subStr], uuid)
				end
			end
		end
	end
end

function DatabaseTable:_TrigramIndexRemove(uuid)
	for _, list in pairs(self._trigramIndexLists) do
		for i = #list, 1, -1 do
			if list[i] == uuid then
				tremove(list, i)
			end
		end
	end
end

function DatabaseTable:_InsertRow(row, values)
	local uuid = row:GetUUID()
	local rowIndex = #self._data + 1
	self._uuidToDataOffsetLookup[uuid] = rowIndex
	tinsert(self._uuids, uuid)
	for i = 1, self._numStoredFields do
		local field = self._storedFieldList[i]
		local value = values[field]
		if self:_GetListFieldType(field) then
			tinsert(self._data, self:_InsertListData(value))
		else
			tinsert(self._data, value)
		end
		local uniqueValues = self._uniques[field]
		if uniqueValues then
			if uniqueValues[value] ~= nil then
				error(format("A row with this unique value (%s) already exists", tostring(value)), 2)
			end
			uniqueValues[value] = uuid
		end
	end
	for indexField in pairs(self._indexLists) do
		self:_IndexListInsert(indexField, uuid)
	end
	if self._trigramIndexField then
		self:_TrigramIndexInsert(uuid)
	end
	self:_UpdateQueries()
	if row == self._newRowTemp then
		row:_Release()
		assert(self._newRowTempInUse)
		self._newRowTempInUse = false
	else
		-- auto release this row after creation
		row:Release()
	end
end

function DatabaseTable:_UpdateRow(row, changeContext)
	local uuid = row:GetUUID()
	-- cache the min index within the index lists for the old values ot make removing from the index faster
	local oldIndexMinIndex = TempTable.Acquire()
	for indexField in pairs(self._indexLists) do
		if changeContext[indexField] ~= nil then
			oldIndexMinIndex[indexField] = self:_IndexListBinarySearch(indexField, Util.ToIndexValue(changeContext[indexField]), true)
		end
	end
	local index = self._uuidToDataOffsetLookup[uuid]
	for i = 1, self._numStoredFields do
		local field = self._storedFieldList[i]
		if changeContext[field] ~= nil then
			if self._listData and self:_GetListFieldType(field) then
				self._data[index + i - 1] = self:_InsertListData(changeContext[field])
			else
				self._data[index + i - 1] = row:GetField(field)
			end
		end
	end
	local changedIndexUnique = false
	for indexField, indexList in pairs(self._indexLists) do
		if changeContext[indexField] ~= nil or (self:_IsSmartMapField(indexField) and changeContext[self._smartMapInputLookup[indexField]] ~= nil) then
			-- remove and re-add row to the index list since the index value changed
			if oldIndexMinIndex[indexField] then
				local deleteIndex = nil
				for i = oldIndexMinIndex[indexField], #indexList do
					if indexList[i] == uuid then
						deleteIndex = i
						break
					end
				end
				assert(deleteIndex)
				tremove(indexList, deleteIndex)
			else
				Table.RemoveByValue(indexList, uuid)
			end
			self:_IndexListInsert(indexField, uuid)
			changedIndexUnique = true
		end
	end
	TempTable.Release(oldIndexMinIndex)
	if self._trigramIndexField and changeContext[self._trigramIndexField] ~= nil then
		self:_TrigramIndexRemove(uuid)
		self:_TrigramIndexInsert(uuid)
	end
	for field, uniqueValues in pairs(self._uniques) do
		local oldValue = changeContext[field]
		if oldValue ~= nil then
			assert(uniqueValues[oldValue] == uuid)
			uniqueValues[oldValue] = nil
			uniqueValues[self:GetRowFieldByUUID(uuid, field)] = uuid
			changedIndexUnique = true
		end
	end
	if not changedIndexUnique then
		self:_UpdateQueries(uuid, changeContext)
	else
		self:_UpdateQueries()
	end
end

function DatabaseTable:_GetRowIndexValue(uuid, field)
	return Util.ToIndexValue(self:GetRowFieldByUUID(uuid, field))
end

function DatabaseTable:_GetTrigramIndexMatchingRows(value, result)
	value = strlower(value)
	local matchingLists = TempTable.Acquire()
	wipe(private.usedTrigramSubStrTemp)
	for word in String.SplitIterator(value, " ") do
		for i = 1, #word - 2 do
			local subStr = strsub(word, i, i + 2)
			if not self._trigramIndexLists[subStr] then
				-- this value doesn't match anything
				TempTable.Release(matchingLists)
				return
			end
			if not private.usedTrigramSubStrTemp[subStr] then
				private.usedTrigramSubStrTemp[subStr] = true
				tinsert(matchingLists, self._trigramIndexLists[subStr])
			end
		end
	end
	Table.GetCommonValuesSorted(matchingLists, result)
	TempTable.Release(matchingLists)
end

function DatabaseTable:_HandleSmartMapReaderUpdate(reader, changes)
	local fieldName = private.smartMapReaderFieldLookup[reader]
	if fieldName == self._trigramIndexField then
		error("Smart map field cannot be part of a trigram index")
	elseif reader ~= self._smartMapReaderLookup[fieldName] then
		error("Invalid smart map context")
	end

	local indexList = self._indexLists[fieldName]
	if indexList then
		-- re-build the index
		wipe(indexList)
		local sortValues = TempTable.Acquire()
		for i, uuid in ipairs(self._uuids) do
			indexList[i] = uuid
			sortValues[uuid] = self:_GetRowIndexValue(uuid, fieldName)
		end
		Table.SortWithValueLookup(indexList, sortValues)
		TempTable.Release(sortValues)
	end

	local uniqueValues = self._uniques[fieldName]
	if uniqueValues then
		for key, prevValue in pairs(changes) do
			local uuid = uniqueValues[prevValue]
			assert(uuid)
			uniqueValues[prevValue] = nil
			uniqueValues[reader[key]] = uuid
		end
	end

	self:_UpdateQueries()
end

function DatabaseTable:_InsertListData(value)
	local dataIndex = self._listData.nextIndex
	self._listData[self._listData.nextIndex] = #value
	for j = 1, #value do
		self._listData[self._listData.nextIndex + j] = value[j]
	end
	self._listData.nextIndex = self._listData.nextIndex + #value + 1
	return dataIndex
end

function DatabaseTable:_DeleteRowHelper(uuid)
	-- lookup the index of the row being deleted
	local uuidIndex = ((self._uuidToDataOffsetLookup[uuid] - 1) / self._numStoredFields) + 1
	local rowIndex = self._uuidToDataOffsetLookup[uuid]
	assert(rowIndex)

	-- get the index of the last row
	local lastUUIDIndex = #self._data / self._numStoredFields
	local lastRowIndex = #self._data - self._numStoredFields + 1
	assert(lastRowIndex > 0 and lastUUIDIndex > 0)

	-- remove this row from both lookups
	self._uuidToDataOffsetLookup[uuid] = nil

	if self._listData then
		-- remove any list field data for this row
		for field in pairs(self._fieldTypeLookup) do
			if self:_GetListFieldType(field) then
				local fieldOffset = self._fieldOffsetLookup[field]
				local dataIndex = self._data[rowIndex + fieldOffset - 1]
				local len = self._listData[dataIndex]
				for i = 0, len do
					self._listData[dataIndex + i] = nil
				end
			end
		end
	end

	if rowIndex == lastRowIndex then
		-- this is the last row so just remove it
		table.removemulti(self._data, #self._data - self._numStoredFields + 1, self._numStoredFields)
		assert(uuidIndex == #self._uuids)
		self._uuids[#self._uuids] = nil
	else
		-- this row is in the middle, so move the last row into this slot
		local moveRowUUID = tremove(self._uuids)
		self._uuids[uuidIndex] = moveRowUUID
		self._uuidToDataOffsetLookup[moveRowUUID] = rowIndex
		for i = self._numStoredFields, 1, -1 do
			local moveDataIndex = lastRowIndex + i - 1
			assert(moveDataIndex == #self._data)
			self._data[rowIndex + i - 1] = self._data[moveDataIndex]
			tremove(self._data)
		end
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.RawIterator(db, index)
	index = index + db._numStoredFields
	if index > #db._data then
		return
	end
	return index, unpack(db._data, index, index + db._numStoredFields - 1)
end

function private.GetNextUUID()
	private.lastUUID = private.lastUUID - 1
	return private.lastUUID
end

function private.IndexValueFunc(uuid, db, field)
	return db:_GetRowIndexValue(uuid, field)
end

function private.TrigramValueFunc(uuid, db, field)
	return strlower(db:GetRowFieldByUUID(uuid, field))
end
