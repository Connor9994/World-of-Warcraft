-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local CSV = TSM.Init("Util.CSV") ---@class Util.CSV
local TempTable = TSM.Include("Util.TempTable")
local private = {}



-- ============================================================================
-- Module Functions
-- ============================================================================

---Creates a CSV encoding context for the specified keys.
---@param keys string[] The keys which are being encoded
---@return table @The CSV encoding context
function CSV.EncodeStart(keys)
	local context = TempTable.Acquire()
	context.keys = keys
	context.lines = TempTable.Acquire()
	context.lineParts = TempTable.Acquire()
	tinsert(context.lines, table.concat(keys, ","))
	return context
end

---Adds a row to the CSV encoding context.
---@param context table The CSV encoding context
---@param data table The data for the row
function CSV.EncodeAddRowData(context, data)
	wipe(context.lineParts)
	for _, key in ipairs(context.keys) do
		tinsert(context.lineParts, data[key] or "")
	end
	tinsert(context.lines, table.concat(context.lineParts, ","))
end

---Adds a raw row to the CSV encoding context.
---@param context table The CSV encoding context
---@param ... string The raw data for the row
function CSV.EncodeAddRowDataRaw(context, ...)
	tinsert(context.lines, strjoin(",", ...))
end

---Ends a CSV encoding context and returns the resulting CSV string.
---@param context table The CSV encoding context
---@return string @The CSV encoded data
function CSV.EncodeEnd(context)
	local result = table.concat(context.lines, "\n")
	TempTable.Release(context.lineParts)
	TempTable.Release(context.lines)
	TempTable.Release(context)
	return result
end

---Encodes the specified data to a CSV string.
---@param keys string[] The list of keys to encode
---@param data table The data to encode
---@return string @The CSV encoded data
function CSV.Encode(keys, data)
	local context = CSV.EncodeStart(keys)
	for _, row in ipairs(data) do
		CSV.EncodeAddRowData(context, row)
	end
	return CSV.EncodeEnd(context)
end

---Creates a CSV decoding context for the specified fields.
---@param str string The CSV encoded data
---@param fields string[] The fields which are being decoded
---@return table @The CSV decoding context
function CSV.DecodeStart(str, fields)
	local func = gmatch(str, strrep("([^\n,]+),", #fields - 1).."([^\n,]+)(,?[^\n,]*)")
	if strjoin(",", func()) ~= table.concat(fields, ",").."," then
		return
	end
	local context = TempTable.Acquire()
	context.func = func
	context.extraArgPos = #fields + 1
	context.result = true
	return context
end

---Iterates over the CSV encoded data.
---@param context table The CSV decoding context
---@return fun(): ... @An iterator with fields matching the decoded values
function CSV.DecodeIterator(context)
	return private.DecodeIteratorHelper, context
end

---Ends a CSV decoding context and returns whether or not the data was fully decoded successfully.
---@param context table The CSV decoding context
---@return boolean @The result
function CSV.DecodeEnd(context)
	local result = context.result
	TempTable.Release(context)
	return result
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.DecodeIteratorHelper(context)
	return private.DecodeIteratorHelper2(context, context.func())
end

function private.DecodeIteratorHelper2(context, v1, ...)
	if not v1 then
		return
	end
	if select(context.extraArgPos, v1, ...) ~= "" then
		context.result = false
		return
	end
	return v1, ...
end
