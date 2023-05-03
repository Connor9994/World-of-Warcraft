-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local NamedTupleListType = TSM.Init("Util.NamedTupleListType") ---@class Util.NamedTupleListType
local private = {}



-- ============================================================================
-- Class Definition
-- ============================================================================

local NamedTupleList = TSM.Include("LibTSMClass").DefineClass("NamedTupleList") ---@class NamedTupleList

function NamedTupleList:__init(...)
	self._data = {}
	self._fields = {}
	self._numFields = select("#", ...)
	assert(self._numFields > 0)
	for i = 1, self._numFields do
		local fieldName = select(i, ...)
		assert(type(fieldName) == "string" and not self._fields[fieldName])
		self._fields[fieldName] = i
	end
end



-- ============================================================================
-- Public Class Methods
-- ============================================================================

---Insert a row into the list.
---@param ... any The row values
---@return number @The index of the new row
function NamedTupleList:InsertRow(...)
	local numFields = self._numFields
	if select("#", ...) ~= self._numFields then
		error("Invalid number of fields")
	end
	local data = self._data
	local index = #data
	if numFields == 1 then
		data[index + 1] = ...
	elseif numFields == 2 then
		data[index + 1], data[index + 2] = ...
	elseif numFields == 3 then
		data[index + 1], data[index + 2], data[index + 3] = ...
	elseif numFields == 4 then
		data[index + 1], data[index + 2], data[index + 3], data[index + 4] = ...
	elseif numFields == 5 then
		data[index + 1], data[index + 2], data[index + 3], data[index + 4], data[index + 5] = ...
	elseif numFields == 6 then
		data[index + 1], data[index + 2], data[index + 3], data[index + 4], data[index + 5], data[index + 6] = ...
	else
		error("Too many fields")
	end
	if #data ~= index + numFields then
		error("Invalid data")
	end
	return index / numFields + 1
end

---Gets the number of rows in the list.
---@return number
function NamedTupleList:GetNumRows()
	return #self._data / self._numFields
end

---Gets the data for a given row.
---@param rowIndex number The row index
---@return ... @The row values
function NamedTupleList:GetRow(rowIndex)
	local data = self._data
	local numFields = self._numFields
	if rowIndex <= 0 or rowIndex > #data / numFields then
		error("Row index out of range: "..tostring(rowIndex))
	end
	return unpack(data, (rowIndex - 1) * numFields + 1, rowIndex * numFields)
end

---Gets a single field for a given row.
---@param rowIndex number The row index
---@param fieldName string The name of the field
---@return any
function NamedTupleList:GetRowField(rowIndex, fieldName)
	local data = self._data
	local numFields = self._numFields
	local fieldOffset = self._fields[fieldName]
	if not fieldOffset then
		error("Invalid field: "..tostring(fieldName))
	elseif rowIndex <= 0 or rowIndex > #data / numFields then
		error("Row index out of range: "..tostring(rowIndex))
	end
	local index = (rowIndex - 1) * numFields + fieldOffset
	return data[index]
end

---Sets a single field for a given row.
---@param rowIndex number The row index
---@param fieldName string The name of the field
---@param value any The field value
function NamedTupleList:SetRowField(rowIndex, fieldName, value)
	local data = self._data
	local numFields = self._numFields
	local fieldOffset = self._fields[fieldName]
	if not fieldOffset then
		error("Invalid field: "..tostring(fieldName))
	elseif rowIndex <= 0 or rowIndex > #data / numFields then
		error("Row index out of range: "..tostring(rowIndex))
	end
	local index = (rowIndex - 1) * numFields + fieldOffset
	data[index] = value
end

---Iterates over each row in the list.
---@return fun(): number, ... @An iterator with fields: `rowIndex`, ...
function NamedTupleList:Iterator()
	return private.IteratorHelper, self, 0
end

---Wipes the list.
function NamedTupleList:Wipe()
	wipe(self._data)
end



-- ============================================================================
-- Module Functions
-- ============================================================================

---Creates a new named tuple list.
---@param ... string The tuple field names, in order
---@return NamedTupleList
function NamedTupleListType.New(...)
	return NamedTupleList(...)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.IteratorHelper(list, index)
	index = index + 1
	if index > list:GetNumRows() then
		return
	end
	return index, list:GetRow(index)
end
