-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Table = TSM.Init("Util.Table") ---@class Util.Table
local private = {
	filterTemp = {},
	sortValueLookup = nil,
	sortValueReverse = false,
	sortValueUnstable = false,
	diffTemp = {},
}
local READ_ONLY_TABLE_MT = {
	__index = function(_, key) error(format("Key (%s) does not exist in read-only table", tostring(key)), 2) end,
	__newindex = function(_, key) error(format("Writing (%s) to read-only table", tostring(key)), 2) end,
	__metatable = false,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

---Creates an iterator from the keys of a table.
---@generic K
---@param tbl table<K, any> The table to iterate over the keys of
---@return fun(): K @An iterator with fields: `key`
function Table.KeyIterator(tbl)
	return private.TableKeyIterator, tbl, nil
end

---Uses a function to filter the entries in a table.
---@param tbl table The table to be filtered
---@param func fun(key, value, ...): boolean The filter function which gets passed `key, value, ...` and returns true if
---that entry should be removed from the table
---@param ... any Optional arguments to be passed to the filter function
function Table.Filter(tbl, func, ...)
	assert(not next(private.filterTemp))
	for k, v in pairs(tbl) do
		if func(k, v, ...) then
			tinsert(private.filterTemp, k)
		end
	end
	for _, k in ipairs(private.filterTemp) do
		tbl[k] = nil
	end
	wipe(private.filterTemp)
end

---Removes all occurences of the value in the table. Only the numerically-indexed entries are checked.
---@param tbl table The table to remove the value from
---@param value any The value to remove
---@return number @The number of values removed
function Table.RemoveByValue(tbl, value)
	local numRemoved = 0
	for i = #tbl, 1, -1 do
		if tbl[i] == value then
			tremove(tbl, i)
			numRemoved = numRemoved + 1
		end
	end
	return numRemoved
end

---Gets the table key by value.
---@param tbl table The table to look through
---@param value any The value to get the key of
---@return any @The key for the specified value or nil
function Table.KeyByValue(tbl, value)
	for k, v in pairs(tbl) do
		if v == value then
			return k
		end
	end
end

---Gets the number of entries in the table. This can be used when the count of a non-numerically-indexed table is
---desired (i.e. `#tbl` wouldn't work).
---@param tbl table The table to get the number of entries in
---@return number @The number of entries
function Table.Count(tbl)
	local count = 0
	for _ in pairs(tbl) do
		count = count + 1
	end
	return count
end

---Gets the distinct table key by value. This function will assert if the value is not found in the table or if more
---than one key is found.
---@param tbl table The table to look through
---@param value any The value to get the key of
---@return any @The key for the specified value
function Table.GetDistinctKey(tbl, value)
	local key = nil
	for k, v in pairs(tbl) do
		if v == value then
			assert(not key)
			key = k
		end
	end
	assert(key)
	return key
end

---Checks if two tables have the same entries (non-recursively).
---@param tbl1 table The first table to check
---@param tbl2 table The second table to check
---@return boolean @Whether or not the tables are equal
function Table.Equal(tbl1, tbl2)
	if Table.Count(tbl1) ~= Table.Count(tbl2) then
		return false
	end
	for k, v in pairs(tbl1) do
		if tbl2[k] ~= v then
			return false
		end
	end
	return true
end

---Returns whether or not the table is currently sorted.
---@param tbl table The table to check
---@param sortFunc? fun(a: any, b: any): boolean The helper function to use to determine sort order
---@param firstIndex? number The first index to check (defaults to 1)
---@param lastIndex? number The last index to check (defaults to #tbl)
---@return boolean @Whether or not the table is sorted
function Table.IsSorted(tbl, sortFunc, firstIndex, lastIndex)
	sortFunc = sortFunc or private.DefaultSortFunc
	firstIndex = firstIndex or 1
	lastIndex = lastIndex or #tbl
	local prevValue = tbl[firstIndex]
	for i = firstIndex + 1, lastIndex do
		local value = tbl[i]
		if sortFunc(value, prevValue) then
			return false
		end
		prevValue = value
	end
	return true
end

---Sorts a table if it's not already sorted.
---@param tbl table The table to sort
---@param sortFunc? fun(a: any, b: any): boolean The helper function to use to determine sort order
function Table.Sort(tbl, sortFunc)
	if Table.IsSorted(tbl, sortFunc) then
		return
	end
	sort(tbl, sortFunc)
end

---Checks whether or not the table is currently sorted with a value lookup table.
---@param tbl table tbl The table to sort
---@param valueLookup table<any, string|number> valueLookup The sort value lookup table
---@param firstIndex number The first index to check (defaults to 1)
---@param lastIndex number The last index to check (defaults to #tbl)
---@return boolean @Whether or not the table is sorted
function Table.IsSortedWithValueLookup(tbl, valueLookup, firstIndex, lastIndex)
	assert(not private.sortValueLookup and valueLookup)
	private.sortValueLookup = valueLookup
	private.sortValueReverse = false
	private.sortValueUnstable = false
	local result = Table.IsSorted(tbl, private.TableSortWithValueLookupHelper, firstIndex, lastIndex)
	private.sortValueLookup = nil
	return result
end

---Merges two sorted tables with a value lookup table.
---@param tbl1 table The first table to merge
---@param tbl2 table The second table to merge
---@param result table The result table
---@param valueLookup table The sort value lookup table
function Table.MergeSortedWithValueLookup(tbl1, tbl2, result, valueLookup)
	assert(not private.sortValueLookup and valueLookup)
	private.sortValueLookup = valueLookup
	private.sortValueReverse = false
	private.sortValueUnstable = false

	local index1, index2, resultIndex = 1, 1, 1
	while true do
		local value1 = tbl1[index1]
		local value2 = tbl2[index2]
		if value1 == nil and value2 == nil then
			-- we're done
			break
		elseif value1 == nil then
			result[resultIndex] = value2
			index2 = index2 + 1
		elseif value2 == nil then
			result[resultIndex] = value1
			index1 = index1 + 1
		elseif private.TableSortWithValueLookupHelper(value1, value2) then
			result[resultIndex] = value1
			index1 = index1 + 1
		else
			result[resultIndex] = value2
			index2 = index2 + 1
		end
		resultIndex = resultIndex + 1
	end
	private.sortValueLookup = nil
end

---Does a table sort with an extra value lookup step.
---@param tbl table The table to sort
---@param valueLookup table The sort value lookup table
---@param reverse? boolean Reverse the sort order
---@param unstable? boolean Don't try to make the sort stable
function Table.SortWithValueLookup(tbl, valueLookup, reverse, unstable)
	assert(not private.sortValueLookup and valueLookup)
	private.sortValueLookup = valueLookup
	private.sortValueReverse = reverse
	private.sortValueUnstable = unstable
	Table.Sort(tbl, private.TableSortWithValueLookupHelper)
	private.sortValueLookup = nil
end

---Sets a table as read-only (modifications aren't checked).
---@param tbl table The table to make read-only
function Table.SetReadOnly(tbl)
	setmetatable(tbl, READ_ONLY_TABLE_MT)
end

---Appends all values passed in to the end of the table.
---@param tbl table The table to insert the data into
---@param ... any The values to insert
function Table.Append(tbl, ...)
	local len = #tbl
	for i = 1, select("#", ...) do
		tbl[len + i] = select(i, ...)
	end
end

---Performs a binary search on a sorted table and returns the index of the search value.
---@generic V: number|string
---@param tbl V[] The table to search
---@param searchValue V The value to search for
---@param valueFunc? fun(val: V, ...): V A function to call to map to the value to compare
---@param ... any Extra values to pass to valueFunc
---@return number|nil @The index of the value or nil if it wasn't found
---@return number @The insert index
function Table.BinarySearch(tbl, searchValue, valueFunc, ...)
	if valueFunc then
		searchValue = valueFunc(searchValue, ...)
	end
	local insertIndex = 1
	local low, mid, high = 1, 0, #tbl
	while low <= high do
		mid = floor((low + high) / 2)
		local value = tbl[mid]
		if valueFunc then
			value = valueFunc(tbl[mid], ...)
		end
		if value == searchValue then
			return mid, mid
		elseif value < searchValue then
			-- we're too low
			low = mid + 1
		else
			-- we're too high
			high = mid - 1
		end
		insertIndex = low
	end
	return nil, insertIndex
end

---Inserts a value into a sorted table by using the insertIndex returned by Table.BinarySearch().
---@param tbl table The table
---@param value number|string The value to insert
---@param valueFunc? fun(val: V, ...): V A function to call to map to the value to compare
---@param ... any Extra values to pass to valueFunc
function Table.InsertSorted(tbl, value, valueFunc, ...)
	local _, insertIndex = Table.BinarySearch(tbl, value, valueFunc, ...)
	tinsert(tbl, insertIndex, value)
end

---Gets the common values from two or more sorted tables.
---@param tbls table[] The tables to compare
---@param result table The result table
---@param valueFunc? fun(val: V, ...): V A function to call to map to the value to compare
---@param ... any Extra values to pass to valueFunc
function Table.GetCommonValuesSorted(tbls, result, valueFunc, ...)
	local numTbls = #tbls
	if numTbls == 0 then
		return
	elseif numTbls == 1 then
		for i = 1, #tbls[1] do
			result[i] = tbls[1][i]
		end
		return
	end

	-- initialize our iterator indexes
	for i = 1, numTbls do
		local t = tbls[i]
		assert(t._index == nil)
		t._index = 1
	end

	while true do
		-- go through each list and check if the current values are equal and get the max value
		local isDone, isEqual = false, true
		local equalValue, maxValue = nil, nil
		for i = 1, numTbls do
			local t = tbls[i]
			local value = t[t._index]
			if valueFunc then
				value = value and valueFunc(value, ...)
			end
			if not value then
				isDone = true
				break
			elseif i == 1 then
				equalValue = value
				maxValue = value
			else
				if value ~= equalValue then
					isEqual = false
				end
				if value > maxValue then
					maxValue = value
				end
			end
		end
		if isDone then
			break
		end
		if isEqual then
			-- all lists contained the same value, so insert it into our result and advance all the indexes
			tinsert(result, tbls[1][tbls[1]._index])
			for i = 1, numTbls do
				local t = tbls[i]
				t._index = t._index + 1
			end
		else
			-- all lists aren't on the same value, so advanced each one to at least the current max value
			for i = 1, numTbls do
				local t = tbls[i]
				local value = t[t._index]
				if valueFunc then
					value = value and valueFunc(value, ...)
				end
				while value and value < maxValue do
					t._index = t._index + 1
					value = t[t._index]
					if valueFunc then
						value = value and valueFunc(value, ...)
					end
				end
			end
			if isDone then
				break
			end
		end
	end

	-- clear all our iterator indexes
	for i = 1, numTbls do
		tbls[i]._index = nil
	end
end

--- Rotates the values in a table to the right.
---@param tbl table The table to rotate
---@param amount number The number of positions to rotate right by (can be negative to rotate left)
---@param startIndex? number Used with `endIndex` to specify a sub-range of the table to rotate
---@param endIndex? number Used with `startIndex` to specify a sub-range of the table to rotate
function Table.RotateRight(tbl, amount, startIndex, endIndex)
	startIndex = startIndex or 1
	endIndex = endIndex or #tbl
	local len = endIndex - startIndex + 1
	assert(len > 0)
	amount = (amount + len) % len
	assert(amount >= 0)
	if amount == 0 then
		return
	end
	-- reverse the entire table
	private.ReverseTable(tbl, startIndex, endIndex)
	-- reverse back the elements which we rotated from the end to the start
	private.ReverseTable(tbl, startIndex, startIndex + amount - 1)
	-- reverse back the elements which we shifted right
	private.ReverseTable(tbl, startIndex + amount, endIndex)
end

---Inserts fill values into the table.
---@param tbl table The table to insert into
---@param startIndex number The index to insert at
---@param numValues number The number of fill values to insert
---@param fillValue any The fill value to insert
function Table.InsertFill(tbl, startIndex, numValues, fillValue)
	local prevLen = #tbl
	for i = 1, numValues do
		tbl[prevLen+i] = fillValue
	end
	Table.RotateRight(tbl, numValues, startIndex)
end

---Reverses a table in place.
---@param tbl table The table to reverse
function Table.Reverse(tbl)
	private.ReverseTable(tbl, 1, #tbl)
end

---Gets the diff between two lists with order taken into account.
---
---If the tables contain duplicate values, or items where reordered, this function returns false.
---@param old table The old list of items
---@param new table The new list of items
---@param inserted number[] A result table to store the indexes which were added to the new table
---@param removed number[] A result table to store the indexes which were removed from the old table
---@return boolean @Whether or not a diff was able to be calculated
function Table.GetDiffOrdered(old, new, inserted, removed)
	assert(not next(inserted) and not next(removed) and not next(private.diffTemp))
	local indexOld, indexNew = 1, 1
	while indexOld <= #old and indexNew <= #new do
		local oldValue = old[indexOld]
		if oldValue == new[indexNew] then
			-- No change at this index
			indexOld = indexOld + 1
			indexNew = indexNew + 1
		else
			-- Look for the old value further along in the new list
			local foundIndexNew = nil
			for i = indexNew + 1, #new do
				if new[i] == oldValue then
					foundIndexNew = i
				end
			end
			if foundIndexNew then
				-- A bunch of elements must have been added to the new list
				for i = indexNew, foundIndexNew - 1 do
					local newValue = new[i]
					if not private.DiffHandleValue(newValue) then
						wipe(inserted)
						wipe(removed)
						return false
					end
					tinsert(inserted, i)
				end
				indexOld = indexOld + 1
				indexNew = foundIndexNew + 1
			else
				-- This element must have been removed
				if not private.DiffHandleValue(oldValue) then
					wipe(inserted)
					wipe(removed)
					return false
				end
				tinsert(removed, indexOld)
				indexOld = indexOld + 1
			end
		end
	end
	-- Add any remaining new items
	for i = indexNew, #new do
		local newValue = new[i]
		if not private.DiffHandleValue(newValue) then
			wipe(inserted)
			wipe(removed)
			return false
		end
		tinsert(inserted, i)
	end
	-- Remove any remaining old items
	for i = indexOld, #old do
		local oldValue = old[i]
		if not private.DiffHandleValue(oldValue) then
			wipe(inserted)
			wipe(removed)
			return false
		end
		tinsert(removed, i)
	end
	wipe(private.diffTemp)
	return true
end

---Iterates over a table with a stride.
---
---**NOTE:** This iterator must be run to completion and not be interrupted (i.e. with a `break` or `return`).
---@param tbl table The table to iterate over.
---@param numFields number The number of fields to unpack with each iteration
---@return fun(): number, ... @An iterator with fields: `index, {numFields...}`
function Table.StrideIterator(tbl, numFields)
	assert(numFields >= 1 and #tbl % numFields == 0)
	tbl.__iterNumFields = numFields
	return private.StrideIteratorHelper, tbl, 1 - numFields
end

---Inserts multiple values into the table.
---@param tbl table The table to insert into
---@param ... any Values to insert
function Table.InsertMultiple(tbl, ...)
	local numExisting = #tbl
	for i = 1, select("#", ...) do
		tbl[numExisting + i] = select(i, ...)
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.TableKeyIterator(tbl, prevKey)
	local key = next(tbl, prevKey)
	return key
end

function private.TableSortWithValueLookupHelper(a, b)
	local aValue = private.sortValueLookup[a]
	local bValue = private.sortValueLookup[b]
	if aValue == bValue then
		if private.sortValueUnstable then
			return false
		else
			return a > b
		end
	end
	if private.sortValueReverse then
		return aValue > bValue
	else
		return aValue < bValue
	end
end

function private.DefaultSortFunc(a, b)
	return a < b
end

function private.ReverseTable(tbl, startIndex, endIndex)
	while startIndex < endIndex do
		tbl[startIndex], tbl[endIndex] = tbl[endIndex], tbl[startIndex]
		startIndex = startIndex + 1
		endIndex = endIndex - 1
	end
end

function private.DiffHandleValue(value)
	if private.diffTemp[value] then
		wipe(private.diffTemp)
		return false
	end
	private.diffTemp[value] = true
	return true
end

function private.StrideIteratorHelper(tbl, index)
	local numFields = tbl.__iterNumFields
	index = index + numFields
	if index > #tbl then
		tbl.__iterNumFields = nil
		return
	end
	if numFields == 1 then
		return index, tbl[index]
	else
		return index, unpack(tbl, index, index + numFields - 1)
	end
end
