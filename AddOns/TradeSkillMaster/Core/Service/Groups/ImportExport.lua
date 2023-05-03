-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ImportExport = TSM.Groups:NewPackage("ImportExport")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local Log = TSM.Include("Util.Log")
local String = TSM.Include("Util.String")
local ItemString = TSM.Include("Util.ItemString")
local CustomPrice = TSM.Include("Service.CustomPrice")
local Settings = TSM.Include("Service.Settings")
local AceSerializer = LibStub("AceSerializer-3.0")
local LibDeflate = LibStub("LibDeflate")
local LibSerialize = LibStub("LibSerialize")
local private = {
	settings = nil,
	isOperationSettingsTable = {},
	importContext = {
		groupName = nil,
		items = nil,
		groups = nil,
		groupOperations = nil,
		operations = nil,
		customSources = nil,
		numChangedOperations = nil,
		filteredGroups = {},
	},
}
local MAGIC_STR = "TSM_EXPORT"
local VERSION = 1
local EXPORT_OPERATION_MODULES = {
	Auctioning = true,
	Crafting = true,
	Shopping = true,
	Sniper = true,
	Vendoring = true,
	Warehousing = true,
}
local EXPORT_CUSTOM_STRINGS = {
	Auctioning = {
		postCap = true,
		keepQuantity = true,
		maxExpires = true,
		undercut = true,
		minPrice = true,
		maxPrice = true,
		normalPrice = true,
		cancelRepostThreshold = true,
		stackSize = not Environment.IsRetail() and true or nil,
	},
	Crafting = {
		minRestock = true,
		maxRestock = true,
		minProfit = true,
		craftPriceMethod = true,
	},
	Shopping = {
		restockQuantity = true,
		maxPrice = true,
	},
	Sniper = {
		belowPrice = true,
	},
	Vendoring = {
		vsMarketValue = true,
		vsMaxMarketValue = true,
		vsDestroyValue = true,
		vsMaxDestroyValue = true,
	},
	Warehousing = {},
}
local SERIALIZE_OPTIONS = {
	stable = true,
	filter = function(tbl, key, value)
		return not private.isOperationSettingsTable[tbl] or not TSM.Operations.IsCommonKey(key)
	end,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function ImportExport.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "userData", "customPriceSources")
end

function ImportExport.GenerateExport(exportGroupPath, includeSubGroups, excludeOperations, excludeCustomSources)
	assert(exportGroupPath ~= TSM.CONST.ROOT_GROUP_PATH)
	local exportGroupName = TSM.Groups.Path.GetName(exportGroupPath)

	-- collect the items and sub groups
	local items = TempTable.Acquire()
	local groups = TempTable.Acquire()
	local groupOperations = TempTable.Acquire()
	local operations = TempTable.Acquire()
	local customSources = TempTable.Acquire()
	for moduleName in pairs(EXPORT_OPERATION_MODULES) do
		operations[moduleName] = {}
	end
	assert(not next(private.isOperationSettingsTable))
	for _, groupPath in TSM.Groups.GroupIterator() do
		local relGroupPath = nil
		if TSM.Groups.Path.IsChild(groupPath, exportGroupPath) then
			relGroupPath = TSM.Groups.Path.GetRelative(groupPath, exportGroupPath)
			if not includeSubGroups[relGroupPath] then
				relGroupPath = nil
			end
		elseif groupPath == exportGroupPath then
			relGroupPath = TSM.CONST.ROOT_GROUP_PATH
		end
		if relGroupPath then
			groups[relGroupPath] = true
			for _, itemString in TSM.Groups.ItemIterator(groupPath) do
				items[itemString] = relGroupPath
			end
			if not excludeOperations then
				groupOperations[relGroupPath] = {}
				for moduleName in pairs(EXPORT_OPERATION_MODULES) do
					groupOperations[relGroupPath][moduleName] = {
						-- always override at the top-level
						override = TSM.Groups.HasOperationOverride(groupPath, moduleName) or groupPath == exportGroupPath or nil,
					}
					for _, operationName, operationSettings in TSM.Operations.GroupOperationIterator(moduleName, groupPath) do
						tinsert(groupOperations[relGroupPath][moduleName], operationName)
						operations[moduleName][operationName] = operationSettings
						private.isOperationSettingsTable[operationSettings] = true
						if not excludeCustomSources then
							for key in pairs(EXPORT_CUSTOM_STRINGS[moduleName]) do
								private.GetCustomSources(operationSettings[key], customSources)
							end
						end
					end
				end
			end
		end
	end

	local serialized = LibSerialize:SerializeEx(SERIALIZE_OPTIONS, MAGIC_STR, VERSION, exportGroupName, items, groups, groupOperations, operations, customSources)
	local compressed = LibDeflate:EncodeForPrint(LibDeflate:CompressDeflate(serialized))
	local numItems = Table.Count(items)
	local numSubGroups = Table.Count(groups) - 1
	local numOperations = 0
	for _, moduleOperations in pairs(operations) do
		numOperations = numOperations + Table.Count(moduleOperations)
	end
	local numCustomSources = Table.Count(customSources)

	wipe(private.isOperationSettingsTable)
	TempTable.Release(customSources)
	TempTable.Release(operations)
	TempTable.Release(groupOperations)
	TempTable.Release(groups)
	TempTable.Release(items)

	return compressed, numItems, numSubGroups, numOperations, numCustomSources
end

function ImportExport.ProcessImport(str)
	return private.DecodeNewImport(str) or private.DecodeOldImport(str) or private.DecodeOldGroupOrItemListImport(str)
end

function ImportExport.GetImportTotals()
	local numExistingItems = 0
	for itemString, groupPath in pairs(private.importContext.items) do
		if not private.importContext.filteredGroups[groupPath] then
			if TSM.Groups.IsItemInGroup(itemString) then
				numExistingItems = numExistingItems + 1
			end
		end
	end
	wipe(private.importContext.customSources)
	local numOperations, numExistingOperations = 0, 0
	for moduleName, moduleOperations in pairs(private.importContext.operations) do
		local usedOperations = TempTable.Acquire()
		for groupPath, operations in pairs(private.importContext.groupOperations) do
			if not private.importContext.filteredGroups[groupPath] then
				for _, operationName in ipairs(operations[moduleName]) do
					usedOperations[operationName] = true
				end
			end
		end
		for operationName, operationSettings in pairs(moduleOperations) do
			if usedOperations[operationName] then
				numOperations = numOperations + 1
				if TSM.Operations.Exists(moduleName, operationName) then
					numExistingOperations = numExistingOperations + 1
				end
				for key in pairs(EXPORT_CUSTOM_STRINGS[moduleName]) do
					private.GetCustomSources(operationSettings[key], private.importContext.customSources)
				end
			end
		end
		TempTable.Release(usedOperations)
	end
	local numExistingCustomSources = 0
	for name in pairs(private.importContext.customSources) do
		if private.settings.customPriceSources[name] then
			numExistingCustomSources = numExistingCustomSources + 1
		end
	end
	local numItems = 0
	for _, groupPath in pairs(private.importContext.items) do
		if not private.importContext.filteredGroups[groupPath] then
			numItems = numItems + 1
		end
	end
	local numGroups = 0
	for groupPath in pairs(private.importContext.groups) do
		if not private.importContext.filteredGroups[groupPath] then
			numGroups = numGroups + 1
		end
	end
	return numItems, numGroups, numExistingItems, numOperations, numExistingOperations, numExistingCustomSources
end

function ImportExport.PendingImportGroupIterator()
	assert(private.importContext.groupName)
	return pairs(private.importContext.groups)
end

function ImportExport.GetPendingImportGroupName()
	assert(private.importContext.groupName)
	return private.importContext.groupName
end

function ImportExport.SetGroupFiltered(groupPath, isFiltered)
	private.importContext.filteredGroups[groupPath] = isFiltered or nil
end

function ImportExport.CommitImport(moveExistingItems, includeOperations, replaceOperations)
	assert(private.importContext.groupName)
	local numOperations, numCustomSources = 0, 0
	if includeOperations and next(private.importContext.operations) then
		-- remove filtered operations
		for moduleName, moduleOperations in pairs(private.importContext.operations) do
			local usedOperations = TempTable.Acquire()
			for groupPath, operations in pairs(private.importContext.groupOperations) do
				if not private.importContext.filteredGroups[groupPath] then
					for _, operationName in ipairs(operations[moduleName]) do
						usedOperations[operationName] = true
					end
				end
			end
			for operationName in pairs(moduleOperations) do
				if not usedOperations[operationName] then
					moduleOperations[operationName] = nil
				end
			end
			TempTable.Release(usedOperations)
		end
		if not replaceOperations then
			-- remove existing operations and custom sources from the import context
			for moduleName, moduleOperations in pairs(private.importContext.operations) do
				for operationName in pairs(moduleOperations) do
					if TSM.Operations.Exists(moduleName, operationName) then
						moduleOperations[operationName] = nil
					end
				end
				if not next(moduleOperations) then
					private.importContext.operations[moduleName] = nil
				end
			end
			for name in pairs(private.importContext.customSources) do
				if private.settings.customPriceSources[name] then
					private.importContext.customSources[name] = nil
				end
			end
		end
		if next(private.importContext.customSources) then
			-- regenerate the list of custom sources in case some operations were filtered out
			wipe(private.importContext.customSources)
			for moduleName, moduleOperations in pairs(private.importContext.operations) do
				for _, operationSettings in pairs(moduleOperations) do
					for key in pairs(EXPORT_CUSTOM_STRINGS[moduleName]) do
						private.GetCustomSources(operationSettings[key], private.importContext.customSources)
					end
				end
			end
			-- create the custom sources
			numCustomSources = Table.Count(private.importContext.customSources)
			CustomPrice.BulkCreateCustomPriceSourcesFromImport(private.importContext.customSources, replaceOperations)
		end
		-- create the operations
		for _, moduleOperations in pairs(private.importContext.operations) do
			numOperations = numOperations + Table.Count(moduleOperations)
		end
		TSM.Operations.BulkCreateFromImport(private.importContext.operations, replaceOperations)
	end
	if not includeOperations then
		wipe(private.importContext.groupOperations)
	end
	-- filter the groups
	for groupPath in pairs(private.importContext.filteredGroups) do
		private.importContext.groups[groupPath] = nil
		private.importContext.groupOperations[groupPath] = nil
	end
	for itemString, groupPath in pairs(private.importContext.items) do
		if private.importContext.filteredGroups[groupPath] then
			private.importContext.items[itemString] = nil
		end
	end
	-- create the groups
	local numItems = TSM.Groups.BulkCreateFromImport(private.importContext.groupName, private.importContext.items, private.importContext.groups, private.importContext.groupOperations, moveExistingItems)

	-- print the message
	Log.PrintfUser(L["Imported group (%s) with %d items, %d operations, and %d custom sources."], private.importContext.groupName, numItems, numOperations, numCustomSources)
	ImportExport.ClearImportContext()
end

function ImportExport.ClearImportContext()
	private.importContext.groupName = nil
	private.importContext.items = nil
	private.importContext.groups = nil
	private.importContext.groupOperations = nil
	private.importContext.operations = nil
	private.importContext.customSources = nil
	wipe(private.importContext.filteredGroups)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetCustomSources(str, result)
	for _, name, customSourceStr in CustomPrice.DependantCustomSourceIterator(str) do
		if not result[name] then
			result[name] = customSourceStr
			private.GetCustomSources(customSourceStr, result)
		end
	end
end

function private.DecodeNewImport(str)
	-- decode and decompress (if it's not a new import, the decode should fail)
	str = LibDeflate:DecodeForPrint(str)
	if not str then
		Log.Info("Not a valid new import string")
		return false
	end
	local numExtraBytes = nil
	str, numExtraBytes = LibDeflate:DecompressDeflate(str)
	if not str then
		Log.Err("Failed to decompress new import string")
		return false
	elseif numExtraBytes > 0 then
		Log.Err("Import string had extra bytes")
		return false
	end

	-- deserialize and validate the data
	local success, magicStr, version, groupName, items, groups, groupOperations, operations, customSources = LibSerialize:Deserialize(str)
	if not success then
		Log.Err("Failed to deserialize new import string")
		return false
	elseif magicStr ~= MAGIC_STR then
		Log.Err("Invalid magic string: "..tostring(magicStr))
		return false
	elseif version ~= VERSION then
		Log.Err("Invalid version: "..tostring(version))
		return false
	elseif type(groupName) ~= "string" or groupName == "" or strmatch(groupName, TSM.CONST.GROUP_SEP) then
		Log.Err("Invalid groupName: "..tostring(groupName))
		return false
	elseif type(items) ~= "table" then
		Log.Err("Invalid items type: "..tostring(items))
		return false
	elseif type(groups) ~= "table" then
		Log.Err("Invalid groups type: "..tostring(groups))
		return false
	elseif type(groupOperations) ~= "table" then
		Log.Err("Invalid groupOperations type: "..tostring(groupOperations))
		return false
	elseif type(operations) ~= "table" then
		Log.Err("Invalid operations type: "..tostring(operations))
		return false
	elseif type(customSources) ~= "table" then
		Log.Err("Invalid customSources type: "..tostring(customSources))
		return false
	end

	-- validate the groups table
	for groupPath, trueValue in pairs(groups) do
		if not private.IsValidGroupPath(groupPath) then
			Log.Err("Invalid groupPath (%s)", tostring(groupPath))
			return false
		elseif trueValue ~= true then
			Log.Err("Invalid true value (%s)", tostring(trueValue))
			return false
		end
	end
	for groupPath in pairs(groups) do
		local parentPath = TSM.Groups.Path.Split(groupPath)
		while parentPath do
			if not groups[parentPath] then
				Log.Err("Orphaned group (%s)", groupPath)
				return false
			end
			parentPath = TSM.Groups.Path.Split(parentPath)
		end
	end

	-- validate the items table
	local numInvalidItems = 0
	for itemString, groupPath in pairs(items) do
		if not private.IsValidGroupPath(groupPath) then
			Log.Err("Invalid groupPath (%s, %s)", tostring(itemString), tostring(groupPath))
			return false
		elseif not groups[groupPath] then
			Log.Err("Invalid item group (%s, %s)", itemString, groupPath)
			return false
		end
		local newItemString = type(itemString) == "string" and ItemString.Get(itemString) or nil
		if itemString ~= newItemString then
			-- just remove this one item and continue
			Log.Warn("Invalid itemString (%s, %s)", tostring(itemString), tostring(newItemString))
			items[itemString] = nil
			numInvalidItems = numInvalidItems + 1
		end
	end
	if not next(items) and numInvalidItems > 0 then
		Log.Err("All items were invalid")
		return false
	end

	-- validate the customSources table
	for name, customSourceStr in pairs(customSources) do
		if type(name) ~= "string" or name == "" or gsub(name, "([a-z]+)", "") ~= "" then
			Log.Err("Invalid name (%s)", tostring(name))
			return false
		elseif type(str) ~= "string" then
			Log.Err("Invalid str (%s)", tostring(customSourceStr))
			return false
		end
	end

	-- validate the operations table
	local numChangedOperations = private.ValidateOperationsTable(operations, true)
	if not numChangedOperations then
		return false
	end

	-- validate the groupOperations table
	if not private.ValidateGroupOperationsTable(groupOperations, groups, operations, true) then
		return false
	end

	if numInvalidItems > 0 then
		Log.PrintfUser(L["NOTE: The import contained %d invalid items which were ignored."], numInvalidItems)
	end
	if numChangedOperations > 0 then
		Log.PrintfUser(L["NOTE: The import contained %d operations with at least one invalid setting which was reset."], numChangedOperations)
	end

	Log.Info("Decoded new import string")
	private.importContext.groupName = private.DedupImportGroupName(groupName)
	private.importContext.items = items
	private.importContext.groups = groups
	private.importContext.groupOperations = groupOperations
	private.importContext.operations = operations
	private.importContext.customSources = customSources
	return true
end

function private.DecodeOldImport(str)
	if strsub(str, 1, 1) ~= "^" then
		Log.Info("Not an old import string")
		return false
	end

	local isValid, data = AceSerializer:Deserialize(str)
	if not isValid then
		Log.Err("Failed to deserialize")
		return false
	elseif type(data) ~= "table" then
		Log.Err("Invalid data type (%s)", tostring(data))
		return false
	elseif data.operations ~= nil and type(data.operations) ~= "table" then
		Log.Err("Invalid operations type (%s)", tostring(data.operations))
		return false
	elseif data.groupExport ~= nil and type(data.groupExport) ~= "string" then
		Log.Err("Invalid groupExport type (%s)", tostring(data.groupExport))
		return false
	elseif data.groupOperations ~= nil and type(data.groupOperations) ~= "table" then
		Log.Err("Invalid groupOperations type (%s)", tostring(data.groupOperations))
		return false
	elseif not data.operations and not data.groupExport then
		Log.Err("Doesn't contain operations or groupExport")
		return false
	end
	local operations, numChangedOperations = nil, 0
	if data.operations then
		numChangedOperations = private.ValidateOperationsTable(data.operations, false)
		if not numChangedOperations then
			return false
		end
		operations = data.operations
	else
		operations = {}
	end
	local items, groups, numInvalidItems = nil, nil, nil
	if data.groupExport then
		items, groups, numInvalidItems = private.DecodeGroupExportHelper(data.groupExport)
		if not items then
			Log.Err("No items found")
			return false
		end
	else
		items = {}
		groups = {}
		numInvalidItems = 0
	end
	local groupOperations = nil
	if data.groupOperations then
		Log.Info("Parsing group operations")
		local changeGroupPaths = TempTable.Acquire()
		for groupPath in pairs(data.groupOperations) do
			-- We export a "," in a group path as "``"
			local newGroupPath = type(groupPath) == "string" and gsub(groupPath, "``", ",")
			if newGroupPath and newGroupPath ~= groupPath then
				changeGroupPaths[groupPath] = newGroupPath
				if data.groupOperations[newGroupPath] then
					Log.Err("Duplicated group operations (%s, %s)", tostring(groupPath), tostring(newGroupPath))
					return false
				end
			end
		end
		for groupPath, newGroupPath in pairs(changeGroupPaths) do
			data.groupOperations[newGroupPath] = data.groupOperations[groupPath]
			data.groupOperations[groupPath] = nil
		end
		TempTable.Release(changeGroupPaths)
		if not private.ValidateGroupOperationsTable(data.groupOperations, groups, operations, false) then
			Log.Err("Invalid group operations")
			return false
		end
		groupOperations = data.groupOperations
	else
		groupOperations = {}
	end

	-- check if there's a common top-level group within the import
	local commonTopLevelGroup = private.GetCommonTopLevelGroup(items, groups, groupOperations)
	if commonTopLevelGroup then
		private.UpdateTopLevelGroup(commonTopLevelGroup, items, groups, groupOperations)
	end

	if numInvalidItems > 0 then
		Log.PrintfUser(L["NOTE: The import contained %d invalid items which were ignored."], numInvalidItems)
	end
	if numChangedOperations > 0 then
		Log.PrintfUser(L["NOTE: The import contained %d operations with at least one invalid setting which was reset."], numChangedOperations)
	end

	Log.Info("Decoded old import string")
	private.importContext.groupName = private.DedupImportGroupName(commonTopLevelGroup or L["Imported Group"])
	private.importContext.items = items
	private.importContext.groups = groups
	private.importContext.groupOperations = groupOperations
	private.importContext.operations = operations
	private.importContext.customSources = {}
	return true
end

function private.DecodeOldGroupOrItemListImport(str)
	local items, groups, numInvalidItems = private.DecodeGroupExportHelper(str)
	if not items then
		Log.Err("No items found")
		return false
	end
	local groupOperations = {}

	-- check if there's a common top-level group within the import
	local commonTopLevelGroup = private.GetCommonTopLevelGroup(items, groups, groupOperations)
	if commonTopLevelGroup then
		private.UpdateTopLevelGroup(commonTopLevelGroup, items, groups, groupOperations)
	end

	if numInvalidItems > 0 then
		Log.PrintfUser(L["NOTE: The import contained %d invalid items which were ignored."], numInvalidItems)
	end

	Log.Info("Decoded old group or item list")
	private.importContext.groupName = private.DedupImportGroupName(commonTopLevelGroup or L["Imported Group"])
	private.importContext.items = items
	private.importContext.groups = groups
	private.importContext.groupOperations = groupOperations
	private.importContext.operations = {}
	private.importContext.customSources = {}
	return true
end

function private.DecodeGroupExportHelper(str)
	local items, groups, numInvalidItems = nil, nil, 0
	if strmatch(str, "^[ip0-9%-:;]+$") then
		-- this is likely a list of itemStrings separated by semicolons instead of commas, so attempt to fix it
		str = gsub(str, ";", ",")
	end
	if strmatch(str, "^[0-9,]+$") then
		-- this is likely a list of itemIds separated by commas, so attempt to fix it
		str = gsub(str, "[0-9]+", "i:%1")
	end
	local relativePath = TSM.CONST.ROOT_GROUP_PATH
	for part in String.SplitIterator(str, ",") do
		part = strtrim(part)
		local groupPath = strmatch(part, "^group:(.+)$")
		local itemString = strmatch(part, "^[ip]?:?[0-9%-:]+$")
		local newItemString = itemString and ItemString.Get(itemString) or nil
		if newItemString and newItemString ~= itemString then
			itemString = newItemString
			numInvalidItems = numInvalidItems + 1
		end
		assert(not groupPath or not itemString)
		if groupPath then
			-- We export a "," in a group path as "``"
			groupPath = gsub(groupPath, "``", ",")
			if not private.IsValidGroupPath(groupPath) then
				Log.Err("Invalid groupPath (%s)", tostring(groupPath))
				return
			end
			relativePath = groupPath
			groups = groups or {}
			-- create the groups all the way up to the root
			while groupPath do
				groups[groupPath] = true
				groupPath = TSM.Groups.Path.GetParent(groupPath)
			end
		elseif itemString then
			items = items or {}
			groups = groups or {}
			groups[relativePath] = true
			items[itemString] = relativePath
		else
			Log.Err("Unknown part: %s", part)
			return
		end
	end
	return items, groups, numInvalidItems
end

function private.ValidateOperationsTable(operations, strict)
	local numChangedOperations = 0
	for moduleName, moduleOperations in pairs(operations) do
		local isInvalidModuleName, isNotExportOperationModule = private.IsValidOperationModule(moduleName)
		if not isInvalidModuleName then
			Log.Err("Invalid module name")
			return nil
		elseif isNotExportOperationModule then
			if strict then
				Log.Err("Invalid moduleName (%s)", tostring(moduleName))
				return nil
			else
				Log.Warn("Ignoring module (%s)", moduleName)
				operations[moduleName] = nil
				wipe(moduleOperations)
			end
		elseif type(moduleOperations) ~= "table" then
			Log.Err("Invalid moduleOperations type (%s)", tostring(moduleOperations))
			return nil
		end
		for operationName, operationSettings in pairs(moduleOperations) do
			if type(operationName) ~= "string" or not TSM.Operations.IsValidName(operationName) then
				Log.Err("Invalid operationName (%s)", tostring(operationName))
				return nil
			elseif type(operationSettings) ~= "table" then
				Log.Err("Invalid operationSettings type (%s)", tostring(operationSettings))
				return nil
			end
			-- sanitize the operation settings
			if TSM.Operations.SanitizeSettings(moduleName, operationName, operationSettings, true, true) then
				numChangedOperations = numChangedOperations + 1
			end
		end
	end
	return numChangedOperations
end

function private.ValidateGroupOperationsTable(groupOperations, groups, operations, strict)
	for groupPath, groupsOperationsTable in pairs(groupOperations) do
		if not private.IsValidGroupPath(groupPath) then
			Log.Err("Invalid groupPath (%s)", tostring(groupPath))
			return false
		elseif not groups[groupPath] then
			if strict then
				Log.Err("Invalid group (%s)", groupPath)
				return false
			else
				Log.Info("Creating group with operations (%s)", groupPath)
				groups[groupPath] = true
			end
		end
		-- remove legacy fields
		groupsOperationsTable.ignoreItemVariations = nil
		for moduleName, moduleOperations in pairs(groupsOperationsTable) do
			local isInvalidModuleName, isNotExportOperationModule = private.IsValidOperationModule(moduleName)
			if not isInvalidModuleName then
				Log.Err("Invalid module name")
				return false
			elseif isNotExportOperationModule then
				if strict then
					Log.Err("Invalid moduleName (%s)", tostring(moduleName))
					return false
				else
					Log.Warn("Ignoring module (%s)", moduleName)
					groupsOperationsTable[moduleName] = nil
					wipe(moduleOperations)
				end
			elseif type(moduleOperations) ~= "table" then
				Log.Err("Invalid moduleOperations type (%s)", tostring(moduleOperations))
				return false
			elseif moduleOperations.override ~= nil and moduleOperations.override ~= true then
				Log.Err("Invalid moduleOperations override type (%s)", tostring(moduleOperations.override))
				return false
			elseif groupPath == TSM.CONST.ROOT_GROUP_PATH and not moduleOperations.override then
				if strict then
					Log.Err("Top-level group does not have override set")
					return false
				else
					Log.Info("Setting override for top-level group")
					moduleOperations.override = true
				end
			end
			local numOperations = #moduleOperations
			if numOperations > TSM.Operations.GetMaxNumber(moduleName) then
				Log.Err("Too many operations (%s, %s, %d)", groupPath, moduleName, numOperations)
				return false
			end
			for k, v in pairs(moduleOperations) do
				if k == "override" then
					-- pass
				elseif type(k) ~= "number" or k < 1 or k > numOperations then
					Log.Err("Unknown key (%s, %s, %s, %s)", groupPath, moduleName, tostring(k), tostring(v))
					return false
				elseif type(v) ~= "string" then
					Log.Err("Invalid value (%s, %s, %s, %s)", groupPath, moduleName, k, tostring(v))
					return false
				end
			end
			-- some old imports had "" operations attached to groups, so remove them
			for i = #moduleOperations, 1, -1 do
				if moduleOperations[i] == "" then
					tremove(moduleOperations, i)
				end
			end
			for _, operationName in ipairs(moduleOperations) do
				if type(operationName) ~= "string" or not TSM.Operations.IsValidName(operationName) then
					Log.Err("Invalid operationName (%s)", tostring(operationName))
					return false
				elseif not operations[moduleName][operationName] then
					Log.Err("Unknown operation (%s)", operationName)
					return false
				end
			end
		end
	end
	return true
end

function private.DedupImportGroupName(groupName)
	if TSM.Groups.Exists(groupName) then
		local num = 1
		while TSM.Groups.Exists(groupName.." "..num) do
			num = num + 1
		end
		groupName = groupName.." "..num
	end
	return groupName
end

function private.IsValidGroupPath(groupPath)
	return type(groupPath) == "string" and not strmatch(groupPath, "^`") and not strmatch(groupPath, "`$") and not strmatch(groupPath, "``")
end

function private.IsValidOperationModule(moduleName)
	if type(moduleName) ~= "string" then
		Log.Err("Invalid moduleName (%s)", tostring(moduleName))
		return false
	elseif not TSM.Operations.ModuleExists(moduleName) then
		Log.Err("Invalid moduleName (%s)", tostring(moduleName))
		return false
	elseif not EXPORT_OPERATION_MODULES[moduleName] then
		return true, true
	end
	return true
end

function private.GetCommonTopLevelGroup(items, groups, groupOperations)
	local commonTopLevelGroup = nil

	-- check the items
	for _, groupPath in pairs(items) do
		if groupPath == TSM.CONST.ROOT_GROUP_PATH then
			return nil
		end
		local topLevelGroup = TSM.Groups.Path.GetTopLevel(groupPath)
		if not commonTopLevelGroup then
			commonTopLevelGroup = topLevelGroup
		elseif topLevelGroup ~= commonTopLevelGroup then
			return nil
		end
	end

	-- check the groups
	for groupPath in pairs(groups) do
		if groupPath ~= TSM.CONST.ROOT_GROUP_PATH then
			local topLevelGroup = TSM.Groups.Path.GetTopLevel(groupPath)
			if not commonTopLevelGroup then
				commonTopLevelGroup = topLevelGroup
			elseif topLevelGroup ~= commonTopLevelGroup then
				return nil
			end
		end
	end

	-- check the groupOperations
	for groupPath in pairs(groupOperations) do
		if groupPath == TSM.CONST.ROOT_GROUP_PATH then
			return nil
		end
		local topLevelGroup = TSM.Groups.Path.GetTopLevel(groupPath)
		if not commonTopLevelGroup then
			commonTopLevelGroup = topLevelGroup
		elseif topLevelGroup ~= commonTopLevelGroup then
			return nil
		end
	end

	return commonTopLevelGroup
end

function private.UpdateTopLevelGroup(topLevelGroup, items, groups, groupOperations)
	-- update items
	for itemString, groupPath in pairs(items) do
		items[itemString] = TSM.Groups.Path.GetRelative(groupPath, topLevelGroup)
	end

	-- update groups
	local newGroups = TempTable.Acquire()
	groups[TSM.CONST.ROOT_GROUP_PATH] = nil
	for groupPath in pairs(groups) do
		newGroups[TSM.Groups.Path.GetRelative(groupPath, topLevelGroup)] = true
	end
	wipe(groups)
	for groupPath in pairs(newGroups) do
		groups[groupPath] = true
	end
	TempTable.Release(newGroups)

	-- update groupOperations
	local newGroupOperations = TempTable.Acquire()
	for groupPath, groupOperationsTable in pairs(groupOperations) do
		newGroupOperations[TSM.Groups.Path.GetRelative(groupPath, topLevelGroup)] = groupOperationsTable
	end
	wipe(groupOperations)
	for groupPath, groupOperationsTable in pairs(newGroupOperations) do
		groupOperations[groupPath] = groupOperationsTable
	end
	TempTable.Release(newGroupOperations)

	-- set override on new top-level group
	if groupOperations[TSM.CONST.ROOT_GROUP_PATH] then
		for _, moduleOperations in pairs(groupOperations[TSM.CONST.ROOT_GROUP_PATH]) do
			moduleOperations.override = true
		end
	end
end
