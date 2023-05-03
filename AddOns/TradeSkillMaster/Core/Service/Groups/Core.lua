-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Groups = TSM:NewPackage("Groups") ---@class TSM.Groups
local Database = TSM.Include("Util.Database")
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local SmartMap = TSM.Include("Util.SmartMap")
local String = TSM.Include("Util.String")
local Log = TSM.Include("Util.Log")
local ItemString = TSM.Include("Util.ItemString")
local private = {
	db = nil,
	itemDB = nil,
	itemStringMap = nil,
	itemStringMapReader = nil,
	baseItemStringItemIteratorQuery = nil,
	groupListCache = {},
}



-- ============================================================================
-- New Modules Functions
-- ============================================================================

function Groups.OnInitialize()
	private.db = Database.NewSchema("GROUPS")
		:AddStringField("groupPath")
		:AddStringField("orderStr")
		:AddBooleanField("hasAuctioningOperation")
		:AddBooleanField("hasCraftingOperation")
		:AddBooleanField("hasMailingOperation")
		:AddBooleanField("hasShoppingOperation")
		:AddBooleanField("hasSniperOperation")
		:AddBooleanField("hasVendoringOperation")
		:AddBooleanField("hasWarehousingOperation")
		:AddIndex("groupPath")
		:Commit()
	private.itemDB = Database.NewSchema("GROUP_ITEMS")
		:AddUniqueStringField("itemString")
		:AddStringField("groupPath")
		:AddSmartMapField("baseItemString", ItemString.GetBaseMap(), "itemString")
		:AddIndex("groupPath")
		:AddIndex("baseItemString")
		:Commit()
	private.itemStringMapReader = private.itemStringMap:CreateReader()
	Groups.RebuildDatabase()
	private.baseItemStringItemIteratorQuery = private.itemDB:NewQuery()
		:Select("itemString", "groupPath")
		:Equal("baseItemString", Database.BoundQueryParam())
end

function Groups.RebuildDatabase()
	wipe(private.groupListCache)

	-- clear ignoreRandomEnchants and ignoreItemVariations
	for _, info in pairs(TSM.db.profile.userData.groups) do
		info.ignoreItemVariations = nil
		info.ignoreRandomEnchants = nil
	end

	for groupPath, groupInfo in pairs(TSM.db.profile.userData.groups) do
		if type(groupPath) == "string" and not strmatch(groupPath, TSM.CONST.GROUP_SEP..TSM.CONST.GROUP_SEP) then
			-- check the contents of groupInfo
			for _, moduleName in TSM.Operations.ModuleIterator() do
				groupInfo[moduleName] = groupInfo[moduleName] or {}
				if groupPath == TSM.CONST.ROOT_GROUP_PATH then
					-- root group should have override flag set
					groupInfo[moduleName].override = true
				end
			end
			for key in pairs(groupInfo) do
				if TSM.Operations.ModuleExists(key) then
					-- this is a set of module operations
					local operations = groupInfo[key]
					while #operations > TSM.Operations.GetMaxNumber(key) do
						-- remove extra operations
						tremove(operations)
					end
					for key2 in pairs(operations) do
						if key2 == "override" then
							-- ensure the override field is either true or nil
							operations.override = operations.override and true or nil
						elseif type(key2) ~= "number" or key2 <= 0 or key2 > #operations then
							-- this is an invalid key
							Log.Err("Removing invalid operations key (%s, %s): %s", groupPath, key, tostring(key2))
							operations[key2] = nil
						end
					end
					for i = #operations, 1, -1 do
						if type(operations[i]) ~= "string" or operations[i] == "" or not TSM.Operations.Exists(key, operations[i]) then
							-- remove operations which no longer exist
							-- we used to have a bunch of placeholder "" operations, so don't log for those
							if operations[i] ~= "" then
								Log.Err("Removing invalid operation from group (%s): %s, %s", groupPath, key, tostring(operations[i]))
							end
							tremove(operations, i)
						end
					end
				else
					-- invalid key
					Log.Err("Removing invalid groupInfo key (%s): %s", groupPath, tostring(key))
					groupInfo[key] = nil
				end
			end
		else
			-- remove invalid group paths
			Log.Err("Removing invalid group path: %s", tostring(groupPath))
			TSM.db.profile.userData.groups[groupPath] = nil
		end
	end

	if not TSM.db.profile.userData.groups[TSM.CONST.ROOT_GROUP_PATH] then
		-- set the override flag for all top-level groups and then create it
		for groupPath, moduleOperations in pairs(TSM.db.profile.userData.groups) do
			if not strfind(groupPath, TSM.CONST.GROUP_SEP) then
				for _, moduleName in TSM.Operations.ModuleIterator() do
					moduleOperations[moduleName].override = true
				end
			end
		end
		-- create the root group manually with default operations
		TSM.db.profile.userData.groups[TSM.CONST.ROOT_GROUP_PATH] = {}
		for _, moduleName in TSM.Operations.ModuleIterator() do
			assert(TSM.Operations.Exists(moduleName, "#Default"))
			TSM.db.profile.userData.groups[TSM.CONST.ROOT_GROUP_PATH][moduleName] = { "#Default", override = true }
		end
	end

	for _, groupPath in Groups.GroupIterator() do
		local parentPath = TSM.Groups.Path.GetParent(groupPath)
		if not TSM.db.profile.userData.groups[parentPath] then
			-- the parent group doesn't exist, so remove this group
			Log.Err("Removing group with non-existent parent: %s", tostring(groupPath))
			TSM.db.profile.userData.groups[groupPath] = nil
		else
			for _, moduleName in TSM.Operations.ModuleIterator() do
				if not Groups.HasOperationOverride(groupPath, moduleName) then
					private.InheritParentOperations(groupPath, moduleName)
				end
			end
		end
	end

	-- fix up any invalid items
	local newPaths = TempTable.Acquire()
	for itemString, groupPath in pairs(TSM.db.profile.userData.items) do
		local newItemString = ItemString.Get(itemString)
		if not newItemString then
			-- this itemstring is invalid
			Log.Err("Itemstring (%s) is invalid", tostring(itemString))
			TSM.db.profile.userData.items[itemString] = nil
		elseif groupPath == TSM.CONST.ROOT_GROUP_PATH or not TSM.db.profile.userData.groups[groupPath] then
			-- this group doesn't exist
			Log.Err("Group (%s) doesn't exist, so removing item (%s)", groupPath, itemString)
			TSM.db.profile.userData.items[itemString] = nil
		elseif newItemString ~= itemString then
			-- remove this invalid itemstring from this group
			Log.Err("Itemstring changed (%s -> %s), so removing it from group (%s)", itemString, newItemString, groupPath)
			TSM.db.profile.userData.items[itemString] = nil
			-- add this new item to this group if it's not already in one
			if not TSM.db.profile.userData.items[newItemString] then
				newPaths[newItemString] = groupPath
				Log.Err("Adding to group instead (%s)", groupPath)
			end
		end
	end
	for itemString, groupPath in pairs(newPaths) do
		TSM.db.profile.userData.items[itemString] = groupPath
	end
	TempTable.Release(newPaths)

	-- populate our database
	private.itemDB:TruncateAndBulkInsertStart()
	for itemString, groupPath in pairs(TSM.db.profile.userData.items) do
		private.itemDB:BulkInsertNewRow(itemString, groupPath)
	end
	private.itemDB:BulkInsertEnd()
	private.itemStringMap:SetCallbacksPaused(true)
	private.itemStringMap:Invalidate()
	private.RebuildDB()
	private.itemStringMap:SetCallbacksPaused(false)
end

function Groups.TranslateItemString(itemString)
	return private.itemStringMapReader[itemString]
end

function Groups.GetAutoBaseItemStringSmartMap()
	return private.itemStringMap
end

function Groups.GetItemDBForJoin()
	return private.itemDB
end

function Groups.CreateQuery()
	return private.db:NewQuery()
		:OrderBy("orderStr", true)
end

function Groups.Create(groupPath)
	private.CreateGroup(groupPath)
	private.RebuildDB()
end

function Groups.RebuildDB()
	private.RebuildDB()
end

function Groups.Move(groupPath, newGroupPath)
	assert(not TSM.db.profile.userData.groups[newGroupPath], "Target group already exists")
	assert(groupPath ~= TSM.CONST.ROOT_GROUP_PATH, "Can't move root group")
	assert(TSM.db.profile.userData.groups[groupPath], "Group doesn't exist")
	local newParentPath = TSM.Groups.Path.GetParent(newGroupPath)
	assert(newParentPath and TSM.db.profile.userData.groups[newParentPath], "Parent of target is invalid")

	local changes = TempTable.Acquire()
	private.itemDB:SetQueryUpdatesPaused(true)

	-- get a list of group path changes for this group and all its subgroups
	local gsubEscapedNewGroupPath = gsub(newGroupPath, "%%", "%%%%")
	for path in pairs(TSM.db.profile.userData.groups) do
		if path == groupPath or TSM.Groups.Path.IsChild(path, groupPath) then
			changes[path] = gsub(path, "^"..String.Escape(groupPath), gsubEscapedNewGroupPath)
		end
	end

	for oldPath, newPath in pairs(changes) do
		-- move the group
		assert(TSM.db.profile.userData.groups[oldPath] and not TSM.db.profile.userData.groups[newPath])
		TSM.db.profile.userData.groups[newPath] = TSM.db.profile.userData.groups[oldPath]
		TSM.db.profile.userData.groups[oldPath] = nil

		-- move the items
		local query = private.itemDB:NewQuery()
			:Equal("groupPath", oldPath)
		for _, row in query:Iterator() do
			local itemString = row:GetField("itemString")
			assert(TSM.db.profile.userData.items[itemString])
			TSM.db.profile.userData.items[itemString] = newPath
			row:SetField("groupPath", newPath)
				:Update()
		end
		query:Release()
	end

	-- update the operations all groups which were moved
	for _, moduleName in TSM.Operations.ModuleIterator() do
		if not Groups.HasOperationOverride(newGroupPath, moduleName) then
			private.InheritParentOperations(newGroupPath, moduleName)
			private.UpdateChildGroupOperations(newGroupPath, moduleName)
		end
	end

	TempTable.Release(changes)
	private.RebuildDB()
	private.itemDB:SetQueryUpdatesPaused(false)
end

function Groups.Delete(groupPath)
	assert(groupPath ~= TSM.CONST.ROOT_GROUP_PATH and TSM.db.profile.userData.groups[groupPath])
	local parentPath = TSM.Groups.Path.GetParent(groupPath)
	assert(parentPath)
	if parentPath == TSM.CONST.ROOT_GROUP_PATH then
		parentPath = nil
	end

	-- delete this group and all subgroups
	for path in pairs(TSM.db.profile.userData.groups) do
		if path == groupPath or TSM.Groups.Path.IsChild(path, groupPath) then
			-- delete this group
			TSM.db.profile.userData.groups[path] = nil
		end
	end
	-- remove all items from our DB
	private.itemDB:SetQueryUpdatesPaused(true)
	local query = private.itemDB:NewQuery()
		:Or()
			:Equal("groupPath", groupPath)
			:StartsWith("groupPath", groupPath..TSM.CONST.GROUP_SEP)
		:End()
	local updateMapItems = TempTable.Acquire()
	for _, row in query:Iterator() do
		local itemString = row:GetField("itemString")
		assert(TSM.db.profile.userData.items[itemString])
		TSM.db.profile.userData.items[itemString] = nil
		private.itemDB:DeleteRow(row)
		updateMapItems[itemString] = true
	end
	query:Release()
	private.itemStringMap:SetCallbacksPaused(true)
	for itemString in private.itemStringMap:Iterator() do
		if updateMapItems[itemString] or updateMapItems[ItemString.GetBaseFast(itemString)] or updateMapItems[ItemString.ToLevel(itemString)] then
			-- either this item itself was removed from a group, or the base/level item was - in either case trigger an update
			private.itemStringMap:ValueChanged(itemString)
		end
	end
	private.itemStringMap:SetCallbacksPaused(false)
	TempTable.Release(updateMapItems)
	private.RebuildDB()
	private.itemDB:SetQueryUpdatesPaused(false)
end

function Groups.Exists(groupPath)
	return TSM.db.profile.userData.groups[groupPath] and true or false
end

function Groups.SetItemGroup(itemString, groupPath)
	private.SetItemGroup(itemString, groupPath)
end

function Groups.SetItemsGroup(items, groupPath)
	private.itemDB:SetQueryUpdatesPaused(true)
	private.itemStringMap:SetCallbacksPaused(true)
	for _, itemString in ipairs(items) do
		Groups.SetItemGroup(itemString, groupPath)
	end
	private.itemStringMap:SetCallbacksPaused(false)
	private.itemDB:SetQueryUpdatesPaused(false)
end

function Groups.BulkCreateFromImport(groupName, items, groups, groupOperations, moveExistingItems)
	-- create all the groups
	assert(not TSM.db.profile.userData.groups[groupName])
	for relGroupPath in pairs(groups) do
		local groupPath = relGroupPath == "" and groupName or TSM.Groups.Path.Join(groupName, relGroupPath)
		if not TSM.db.profile.userData.groups[groupPath] then
			private.CreateGroup(groupPath)
		end
	end
	for relGroupPath, moduleOperations in pairs(groupOperations) do
		local groupPath = relGroupPath == "" and groupName or TSM.Groups.Path.Join(groupName, relGroupPath)
		for moduleName, operations in pairs(moduleOperations) do
			if operations.override then
				TSM.db.profile.userData.groups[groupPath][moduleName] = operations
				private.UpdateChildGroupOperations(groupPath, moduleName)
			end
		end
	end
	private.itemDB:SetQueryUpdatesPaused(true)
	private.itemStringMap:SetCallbacksPaused(true)
	local moveItems = TempTable.Acquire()
	local insertItems = TempTable.Acquire()
	local numItems = 0
	for itemString, relGroupPath in pairs(items) do
		local groupPath = relGroupPath == "" and groupName or TSM.Groups.Path.Join(groupName, relGroupPath)
		if not Groups.IsItemInGroup(itemString) then
			insertItems[itemString] = groupPath
			numItems = numItems + 1
		elseif moveExistingItems then
			moveItems[itemString] = groupPath
			numItems = numItems + 1
		end
	end
	private.itemDB:TruncateAndBulkInsertStart()
	for itemString, groupPath in pairs(TSM.db.profile.userData.items) do
		groupPath = moveItems[itemString] or groupPath
		private.SetItemGroup(itemString, groupPath, true, true)
	end
	for itemString, groupPath in pairs(insertItems) do
		private.SetItemGroup(itemString, groupPath, true, true)
	end
	private.itemDB:BulkInsertEnd()
	TempTable.Release(moveItems)
	TempTable.Release(insertItems)
	private.itemStringMap:Invalidate()
	private.itemStringMap:SetCallbacksPaused(false)
	private.itemDB:SetQueryUpdatesPaused(false)
	private.RebuildDB()
	return numItems
end

function Groups.GetPathByItem(itemString)
	itemString = Groups.TranslateItemString(itemString)
	assert(itemString)
	local groupPath = private.itemDB:GetUniqueRowField("itemString", itemString, "groupPath") or TSM.CONST.ROOT_GROUP_PATH
	assert(TSM.db.profile.userData.groups[groupPath])
	return groupPath
end

function Groups.IsItemInGroup(itemString)
	return private.itemDB:HasUniqueRow("itemString", itemString)
end

function Groups.ItemByBaseItemStringIterator(baseItemString)
	private.baseItemStringItemIteratorQuery:BindParams(baseItemString)
	return private.baseItemStringItemIteratorQuery:Iterator()
end

function Groups.CreateItemsQuery(groupPathFilter, includeSubGroups)
	assert(groupPathFilter ~= TSM.CONST.ROOT_GROUP_PATH)
	local query = private.itemDB:NewQuery()
	if includeSubGroups then
		query:Or()
				:Equal("groupPath", groupPathFilter)
				:StartsWith("groupPath", groupPathFilter..TSM.CONST.GROUP_SEP)
			:End()
	else
		query:Equal("groupPath", groupPathFilter)
	end
	return query
end

function Groups.ItemIterator(groupPathFilter, includeSubGroups)
	if groupPathFilter then
		return Groups.CreateItemsQuery(groupPathFilter, includeSubGroups)
			:Select("itemString", "groupPath")
			:IteratorAndRelease()
	else
		return private.itemDB:NewQuery()
			:Select("itemString", "groupPath")
			:IteratorAndRelease()
	end
end

function Groups.GetNumItems(groupPathFilter)
	assert(groupPathFilter ~= TSM.CONST.ROOT_GROUP_PATH)
	return private.itemDB:NewQuery()
		:Equal("groupPath", groupPathFilter)
		:CountAndRelease()
end

function Groups.GroupIterator()
	if #private.groupListCache == 0 then
		for groupPath in pairs(TSM.db.profile.userData.groups) do
			if groupPath ~= TSM.CONST.ROOT_GROUP_PATH then
				tinsert(private.groupListCache, groupPath)
			end
		end
		Groups.SortGroupList(private.groupListCache)
	end
	return ipairs(private.groupListCache)
end

function Groups.SortGroupList(list)
	Table.Sort(list, private.GroupSortFunction)
end

function Groups.SetOperationOverride(groupPath, moduleName, override, skipRebuild)
	assert(TSM.db.profile.userData.groups[groupPath])
	assert(groupPath ~= TSM.CONST.ROOT_GROUP_PATH)
	if override == (TSM.db.profile.userData.groups[groupPath][moduleName].override and true or false) then
		return
	end

	if not override then
		TSM.db.profile.userData.groups[groupPath][moduleName].override = nil
		private.InheritParentOperations(groupPath, moduleName)
		private.UpdateChildGroupOperations(groupPath, moduleName)
	else
		wipe(TSM.db.profile.userData.groups[groupPath][moduleName])
		TSM.db.profile.userData.groups[groupPath][moduleName].override = true
		private.UpdateChildGroupOperations(groupPath, moduleName)
	end
	if not skipRebuild then
		private.RebuildDB()
	end
end

function Groups.HasOperationOverride(groupPath, moduleName)
	return TSM.db.profile.userData.groups[groupPath][moduleName].override
end

function Groups.OperationIterator(groupPath, moduleName)
	return ipairs(TSM.db.profile.userData.groups[groupPath][moduleName])
end

function Groups.AppendOperation(groupPath, moduleName, operationName, skipRebuild)
	assert(TSM.Operations.Exists(moduleName, operationName))
	local groupOperations = TSM.db.profile.userData.groups[groupPath][moduleName]
	assert(groupOperations.override and #groupOperations < TSM.Operations.GetMaxNumber(moduleName))
	tinsert(groupOperations, operationName)
	private.UpdateChildGroupOperations(groupPath, moduleName)
	if not skipRebuild then
		private.RebuildDB()
	end
end

function Groups.RemoveOperation(groupPath, moduleName, operationIndex, skipRebuild)
	local groupOperations = TSM.db.profile.userData.groups[groupPath][moduleName]
	assert(groupOperations.override and groupOperations[operationIndex])
	tremove(groupOperations, operationIndex)
	private.UpdateChildGroupOperations(groupPath, moduleName)
	if not skipRebuild then
		private.RebuildDB()
	end
end

function Groups.RemoveOperationByName(groupPath, moduleName, operationName)
	local groupOperations = TSM.db.profile.userData.groups[groupPath][moduleName]
	assert(groupOperations.override)
	assert(Table.RemoveByValue(groupOperations, operationName) > 0)
	private.UpdateChildGroupOperations(groupPath, moduleName)
	private.RebuildDB()
end

function Groups.RemoveOperationFromAllGroups(moduleName, operationName)
	-- just blindly remove from all groups - no need to check for override
	Table.RemoveByValue(TSM.db.profile.userData.groups[TSM.CONST.ROOT_GROUP_PATH][moduleName], operationName)
	for _, groupPath in Groups.GroupIterator() do
		Table.RemoveByValue(TSM.db.profile.userData.groups[groupPath][moduleName], operationName)
	end
end

function Groups.SwapOperation(groupPath, moduleName, fromIndex, toIndex)
	local groupOperations = TSM.db.profile.userData.groups[groupPath][moduleName]
	groupOperations[fromIndex], groupOperations[toIndex] = groupOperations[toIndex], groupOperations[fromIndex]
	private.UpdateChildGroupOperations(groupPath, moduleName)
end

function Groups.OperationRenamed(moduleName, oldName, newName)
	-- just blindly rename in all groups - no need to check for override
	for _, info in pairs(TSM.db.profile.userData.groups) do
		for i = 1, #info[moduleName] do
			if info[moduleName][i] == oldName then
				info[moduleName][i] = newName
			end
		end
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.RebuildDB()
	private.db:TruncateAndBulkInsertStart()
	for groupPath in pairs(TSM.db.profile.userData.groups) do
		local orderStr = gsub(groupPath, TSM.CONST.GROUP_SEP, "\001")
		orderStr = strlower(orderStr)
		local hasAuctioningOperation = TSM.Operations.GroupHasAnyOperation("Auctioning", groupPath)
		local hasCraftingOperation = TSM.Operations.GroupHasAnyOperation("Crafting", groupPath)
		local hasMailingOperation = TSM.Operations.GroupHasAnyOperation("Mailing", groupPath)
		local hasShoppingOperation = TSM.Operations.GroupHasAnyOperation("Shopping", groupPath)
		local hasSniperOperation = TSM.Operations.GroupHasAnyOperation("Sniper", groupPath)
		local hasVendoringOperation = TSM.Operations.GroupHasAnyOperation("Vendoring", groupPath)
		local hasWarehousingOperation = TSM.Operations.GroupHasAnyOperation("Warehousing", groupPath)
		private.db:BulkInsertNewRow(groupPath, orderStr, hasAuctioningOperation, hasCraftingOperation, hasMailingOperation, hasShoppingOperation, hasSniperOperation, hasVendoringOperation, hasWarehousingOperation)
	end
	private.db:BulkInsertEnd()
	wipe(private.groupListCache)
end

function private.CreateGroup(groupPath)
	assert(not TSM.db.profile.userData.groups[groupPath])
	local parentPath = TSM.Groups.Path.GetParent(groupPath)
	assert(parentPath)
	if parentPath ~= TSM.CONST.ROOT_GROUP_PATH and not TSM.db.profile.userData.groups[parentPath] then
		-- recursively create the parent group first
		private.CreateGroup(parentPath)
	end
	TSM.db.profile.userData.groups[groupPath] = {}
	for _, moduleName in TSM.Operations.ModuleIterator() do
		TSM.db.profile.userData.groups[groupPath][moduleName] = {}
		-- assign all parent operations to this group
		for _, operationName in ipairs(TSM.db.profile.userData.groups[parentPath][moduleName]) do
			tinsert(TSM.db.profile.userData.groups[groupPath][moduleName], operationName)
		end
	end
end

function private.GroupSortFunction(a, b)
	return strlower(gsub(a, TSM.CONST.GROUP_SEP, "\001")) < strlower(gsub(b, TSM.CONST.GROUP_SEP, "\001"))
end

function private.InheritParentOperations(groupPath, moduleName)
	local parentGroupPath = TSM.Groups.Path.GetParent(groupPath)
	local override = TSM.db.profile.userData.groups[groupPath][moduleName].override
	wipe(TSM.db.profile.userData.groups[groupPath][moduleName])
	TSM.db.profile.userData.groups[groupPath][moduleName].override = override
	for _, operationName in ipairs(TSM.db.profile.userData.groups[parentGroupPath][moduleName]) do
		tinsert(TSM.db.profile.userData.groups[groupPath][moduleName], operationName)
	end
end

function private.UpdateChildGroupOperations(groupPath, moduleName)
	for _, childGroupPath in Groups.GroupIterator() do
		if TSM.Groups.Path.IsChild(childGroupPath, groupPath) and not Groups.HasOperationOverride(childGroupPath, moduleName) then
			private.InheritParentOperations(childGroupPath, moduleName)
		end
	end
end

function private.SetItemGroup(itemString, groupPath, bulkInsert, noMapUpdate)
	assert(not groupPath or (groupPath ~= TSM.CONST.ROOT_GROUP_PATH and TSM.db.profile.userData.groups[groupPath]))

	local row = private.itemDB:GetUniqueRow("itemString", itemString)
	local updateMap = false
	if row then
		assert(not bulkInsert)
		if groupPath then
			row:SetField("groupPath", groupPath)
				:Update()
			row:Release()
		else
			private.itemDB:DeleteRow(row)
			row:Release()
			-- we just removed an item from a group, so update the map
			updateMap = not noMapUpdate
		end
	else
		assert(groupPath)
		if bulkInsert then
			private.itemDB:BulkInsertNewRow(itemString, groupPath)
		else
			private.itemDB:NewRow()
				:SetField("itemString", itemString)
				:SetField("groupPath", groupPath)
				:Create()
		end
		-- we just added a new item to a group, so update the map
		updateMap = not noMapUpdate
	end
	TSM.db.profile.userData.items[itemString] = groupPath
	if updateMap then
		assert(not bulkInsert)
		private.itemStringMap:SetCallbacksPaused(true)
		private.itemStringMap:ValueChanged(itemString)
		if itemString == ItemString.GetBaseFast(itemString) then
			-- this is a base item string, so need to also update all other items whose base item is equal to this item
			for mapItemString in private.itemStringMap:Iterator() do
				if ItemString.GetBaseFast(mapItemString) == itemString then
					private.itemStringMap:ValueChanged(mapItemString)
				end
			end
		elseif itemString == ItemString.ToLevel(itemString) then
			-- this is a level item string, so need to also update all other items whose level item is equal to this item
			for mapItemString in private.itemStringMap:Iterator() do
				if ItemString.ToLevel(mapItemString) == itemString then
					private.itemStringMap:ValueChanged(mapItemString)
				end
			end
		end
		private.itemStringMap:SetCallbacksPaused(false)
	end
end



-- ============================================================================
-- Item String Smart Map
-- ============================================================================

do
	private.itemStringMap = SmartMap.New("string", "string", function(itemString)
		-- check if the specific itemString is in a group
		if Groups.IsItemInGroup(itemString) then
			return itemString
		end

		-- check if the level itemString is in a group
		local levelItemString = ItemString.ToLevel(itemString)
		if Groups.IsItemInGroup(levelItemString) then
			return levelItemString
		end

		-- check if the base itemString is in a group
		local baseItemString = ItemString.GetBaseFast(itemString)
		if Groups.IsItemInGroup(baseItemString) then
			return baseItemString
		end

		-- return the original itemString
		return itemString
	end)
end
