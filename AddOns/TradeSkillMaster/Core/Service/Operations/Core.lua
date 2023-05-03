-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Operations = TSM:NewPackage("Operations")
local TempTable = TSM.Include("Util.TempTable")
local Log = TSM.Include("Util.Log")
local Database = TSM.Include("Util.Database")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local private = {
	db = nil,
	operations = nil,
	operationInfo = {},
	operationModules = {},
	shouldCreateDefaultOperations = false,
	ignoreProfileUpdate = false,
}
local COMMON_OPERATION_INFO = {
	ignorePlayer = { type = "table", default = {} },
	ignoreFactionrealm = { type = "table", default = {} },
	relationships = { type = "table", default = {} },
}
local FACTION_REALM = UnitFactionGroup("player").." - "..GetRealmName()
local PLAYER_KEY = UnitName("player").." - "..FACTION_REALM



-- ============================================================================
-- Modules Functions
-- ============================================================================

function Operations.OnInitialize()
	private.db = Database.NewSchema("OPERATIONS")
		:AddStringField("moduleName")
		:AddStringField("operationName")
		:AddIndex("moduleName")
		:Commit()
	if TSM.db.global.coreOptions.globalOperations then
		private.operations = TSM.db.global.userData.operations
	else
		private.operations = TSM.db.profile.userData.operations
	end
	private.RebuildDB()
	private.shouldCreateDefaultOperations = not TSM.db.profile.internalData.createdDefaultOperations
	TSM.db.profile.internalData.createdDefaultOperations = true
	TSM.db:RegisterCallback("OnProfileUpdated", private.OnProfileUpdated)
end

function Operations.Register(moduleName, localizedName, operationInfo, maxOperations, infoCallback, customSanitizeFunction)
	for key, info in pairs(operationInfo) do
		assert(type(key) == "string" and type(info) == "table")
		assert(info.type == type(info.default))
	end
	for key, info in pairs(COMMON_OPERATION_INFO) do
		assert(not operationInfo[key])
		operationInfo[key] = info
	end
	tinsert(private.operationModules, moduleName)
	private.operationInfo[moduleName] = {
		info = operationInfo,
		localizedName = localizedName,
		maxOperations = maxOperations,
		infoCallback = infoCallback,
		customSanitizeFunction = customSanitizeFunction,
	}

	local shouldCreateDefaultOperations = private.shouldCreateDefaultOperations or not private.operations[moduleName]
	private.operations[moduleName] = private.operations[moduleName] or {}

	if shouldCreateDefaultOperations and not private.operations[moduleName]["#Default"] then
		-- create default operation
		Operations.Create(moduleName, "#Default")
	end
	private.ValidateOperations(moduleName)
	private.RebuildDB()
end

function Operations.IsCommonKey(key)
	return COMMON_OPERATION_INFO[key] and true or false
end

function Operations.IsValidName(operationName)
	return operationName == strtrim(operationName) and operationName ~= "" and not strmatch(operationName, TSM.CONST.OPERATION_SEP)
end

function Operations.ModuleIterator()
	return ipairs(private.operationModules)
end

function Operations.ModuleExists(moduleName)
	return private.operationInfo[moduleName] and true or false
end

function Operations.GetLocalizedName(moduleName)
	return private.operationInfo[moduleName].localizedName
end

function Operations.GetMaxNumber(moduleName)
	return private.operationInfo[moduleName].maxOperations
end

function Operations.GetSettingDefault(moduleName, key)
	local info = private.operationInfo[moduleName].info[key]
	return info.type == "table" and CopyTable(info.default) or info.default
end

function Operations.OperationIterator(moduleName)
	local operations = TempTable.Acquire()
	for operationName in pairs(private.operations[moduleName]) do
		tinsert(operations, operationName)
	end
	sort(operations)
	return TempTable.Iterator(operations)
end

function Operations.Exists(moduleName, operationName)
	return private.operations[moduleName][operationName] and true or false
end

function Operations.GetSettings(moduleName, operationName)
	return private.operations[moduleName][operationName]
end

function Operations.Create(moduleName, operationName)
	assert(not private.operations[moduleName][operationName])
	private.operations[moduleName][operationName] = {}
	Operations.Reset(moduleName, operationName)
	private.RebuildDB()
end

function Operations.BulkCreateFromImport(operations, replaceExisting)
	for moduleName, moduleOperations in pairs(operations) do
		for operationName, operationSettings in pairs(moduleOperations) do
			assert(replaceExisting or not private.operations[moduleName][operationName])
			private.operations[moduleName][operationName] = operationSettings
		end
	end
	private.RebuildDB()
end

function Operations.Rename(moduleName, oldName, newName)
	assert(private.operations[moduleName][oldName])
	private.operations[moduleName][newName] = private.operations[moduleName][oldName]
	private.operations[moduleName][oldName] = nil
	-- redirect relationships
	for _, operation in pairs(private.operations[moduleName]) do
		for key, target in pairs(operation.relationships) do
			if target == oldName then
				operation.relationships[key] = newName
			end
		end
	end
	TSM.Groups.OperationRenamed(moduleName, oldName, newName)
	private.RebuildDB()
end

function Operations.Copy(moduleName, operationName, sourceOperationName)
	assert(private.operations[moduleName][operationName] and private.operations[moduleName][sourceOperationName])
	for key, info in pairs(private.operationInfo[moduleName].info) do
		local sourceValue = private.operations[moduleName][sourceOperationName][key]
		private.operations[moduleName][operationName][key] = info.type == "table" and CopyTable(sourceValue) or sourceValue
	end
	private.RemoveDeadRelationships(moduleName)
	private.RebuildDB()
end

function Operations.Delete(moduleName, operationName)
	assert(private.operations[moduleName][operationName])
	private.operations[moduleName][operationName] = nil
	private.RemoveDeadRelationships(moduleName)
	TSM.Groups.RemoveOperationFromAllGroups(moduleName, operationName)
	TSM.Groups.RebuildDB()
	private.RebuildDB()
end

function Operations.DeleteList(moduleName, operationNames)
	for _, operationName in ipairs(operationNames) do
		assert(private.operations[moduleName][operationName])
		private.operations[moduleName][operationName] = nil
		private.RemoveDeadRelationships(moduleName)
		TSM.Groups.RemoveOperationFromAllGroups(moduleName, operationName)
	end
	TSM.Groups.RebuildDB()
	private.RebuildDB()
end

function Operations.Reset(moduleName, operationName)
	for key in pairs(private.operationInfo[moduleName].info) do
		private.operations[moduleName][operationName][key] = Operations.GetSettingDefault(moduleName, key)
	end
end

function Operations.Update(moduleName, operationName)
	for key in pairs(private.operations[moduleName][operationName].relationships) do
		local operation = private.operations[moduleName][operationName]
		while operation.relationships[key] do
			local newOperation = private.operations[moduleName][operation.relationships[key]]
			if not newOperation then
				break
			end
			operation = newOperation
		end
		private.operations[moduleName][operationName][key] = operation[key]
	end
end

function Operations.IsCircularRelationship(moduleName, operationName, key)
	local visited = TempTable.Acquire()
	while operationName do
		if visited[operationName] then
			TempTable.Release(visited)
			return true
		end
		visited[operationName] = true
		operationName = private.operations[moduleName][operationName].relationships[key]
	end
	TempTable.Release(visited)
	return false
end

function Operations.GetFirstOperationByItem(moduleName, itemString)
	local groupPath = TSM.Groups.GetPathByItem(itemString)
	for _, operationName in TSM.Groups.OperationIterator(groupPath, moduleName) do
		Operations.Update(moduleName, operationName)
		if not private.IsIgnored(moduleName, operationName) then
			return operationName, private.operations[moduleName][operationName]
		end
	end
end

function Operations.GroupOperationIterator(moduleName, groupPath)
	local operations = TempTable.Acquire()
	operations.moduleName = moduleName
	for _, operationName in TSM.Groups.OperationIterator(groupPath, moduleName) do
		Operations.Update(moduleName, operationName)
		if not private.IsIgnored(moduleName, operationName) then
			tinsert(operations, operationName)
		end
	end
	return private.GroupOperationIteratorHelper, operations, 0
end

function Operations.GroupHasOperation(moduleName, groupPath, targetOperationName)
	for _, operationName in TSM.Groups.OperationIterator(groupPath, moduleName) do
		if operationName == targetOperationName then
			return true
		end
	end
	return false
end

function Operations.GroupHasAnyOperation(moduleName, groupPath)
	for _, operationName in TSM.Groups.OperationIterator(groupPath, moduleName) do
		if not private.IsIgnored(moduleName, operationName) then
			return true
		end
	end
	return false
end

function Operations.GetDescription(moduleName, operationName)
	local operationSettings = private.operations[moduleName][operationName]
	assert(operationSettings)
	Operations.Update(moduleName, operationName)
	return private.operationInfo[moduleName].infoCallback(operationSettings)
end

function Operations.SanitizeSettings(moduleName, operationName, operationSettings, silentMissingCommonKeys, noRelationshipCheck)
	local didReset = false
	local operationInfo = private.operationInfo[moduleName].info
	if private.operationInfo[moduleName].customSanitizeFunction then
		private.operationInfo[moduleName].customSanitizeFunction(operationSettings)
	end
	for key, value in pairs(operationSettings) do
		if not noRelationshipCheck and Operations.IsCircularRelationship(moduleName, operationName, key) then
			Log.Err("Removing circular relationship (%s, %s, %s)", moduleName, operationName, key)
			operationSettings.relationships[key] = nil
		end
		if not operationInfo[key] then
			operationSettings[key] = nil
		elseif type(value) ~= operationInfo[key].type then
			if operationInfo[key].type == "string" and type(value) == "number" then
				-- some custom price settings were potentially stored as numbers previously, so just convert them
				operationSettings[key] = tostring(value)
			else
				didReset = true
				Log.Err("Resetting operation setting %s,%s,%s (%s)", moduleName, operationName, tostring(key), tostring(value))
				operationSettings[key] = operationInfo[key].type == "table" and CopyTable(operationInfo[key].default) or operationInfo[key].default
			end
		elseif operationInfo[key].customSanitizeFunction then
			operationSettings[key] = operationInfo[key].customSanitizeFunction(value)
		end
	end
	for key in pairs(operationInfo) do
		if operationSettings[key] == nil then
			-- this key was missing
			if operationInfo[key].type == "boolean" then
				-- we previously stored booleans as nil instead of false
				operationSettings[key] = false
			else
				if not silentMissingCommonKeys or not Operations.IsCommonKey(key) then
					didReset = true
					Log.Err("Resetting missing operation setting %s,%s,%s", moduleName, operationName, tostring(key))
				end
				operationSettings[key] = operationInfo[key].type == "table" and CopyTable(operationInfo[key].default) or operationInfo[key].default
			end
		end
	end
	return didReset
end

function Operations.HasRelationship(moduleName, operationName, settingKey)
	return Operations.GetRelationship(moduleName, operationName, settingKey) and true or false
end

function Operations.GetRelationship(moduleName, operationName, settingKey)
	assert(private.operationInfo[moduleName].info[settingKey])
	return private.operations[moduleName][operationName].relationships[settingKey]
end

function Operations.SetRelationship(moduleName, operationName, settingKey, targetOperationName)
	assert(targetOperationName == nil or private.operations[moduleName][targetOperationName])
	assert(private.operationInfo[moduleName].info[settingKey])
	private.operations[moduleName][operationName].relationships[settingKey] = targetOperationName
end

function Operations.GetRelationshipColors(operationType, operationName, settingKey, value)
	local relationshipSet = Operations.HasRelationship(operationType, operationName, settingKey)
	local linkColor = nil
	if not value and relationshipSet then
		linkColor = "INDICATOR_DISABLED"
	elseif not value then
		linkColor = "TEXT_DISABLED"
	elseif relationshipSet then
		linkColor = "INDICATOR"
	else
		linkColor = "TEXT"
	end
	local linkTexture = TextureAtlas.GetColoredKey("iconPack.14x14/Link", linkColor)
	return relationshipSet, linkTexture, value and not relationshipSet and "TEXT" or "TEXT_DISABLED"
end

function Operations.IsStoredGlobally()
	return TSM.db.global.coreOptions.globalOperations
end

function Operations.SetStoredGlobally(storeGlobally)
	TSM.db.global.coreOptions.globalOperations = storeGlobally
	-- we shouldn't be running the OnProfileUpdated callback while switching profiles
	private.ignoreProfileUpdate = true
	if storeGlobally then
		-- move current profile to global
		TSM.db.global.userData.operations = CopyTable(TSM.db.profile.userData.operations)
		-- clear out old operations
		local originalProfile = TSM.db:GetCurrentProfile()
		for _, profile in TSM.db:ProfileIterator() do
			TSM.db:SetProfile(profile)
			TSM.db.profile.userData.operations = nil
		end
		TSM.db:SetProfile(originalProfile)
	else
		-- move global to all profiles
		local originalProfile = TSM.db:GetCurrentProfile()
		for _, profile in TSM.db:ProfileIterator() do
			TSM.db:SetProfile(profile)
			TSM.db.profile.userData.operations = CopyTable(TSM.db.global.userData.operations)
		end
		TSM.db:SetProfile(originalProfile)
		-- clear out old operations
		TSM.db.global.userData.operations = nil
	end
	private.ignoreProfileUpdate = false
	private.OnProfileUpdated()
end

function Operations.ReplaceProfileOperations(newOperations)
	for k, v in pairs(newOperations) do
		TSM.db.profile.userData.operations[k] = v
	end
end

function Operations.CreateQuery()
	return private.db:NewQuery()
end

function Operations.GroupIterator(moduleName, filterOperationName, overrideOnly)
	local result = TempTable.Acquire()

	-- check the base group
	if Operations.GroupHasOperation(moduleName, TSM.CONST.ROOT_GROUP_PATH, filterOperationName) then
		tinsert(result, TSM.CONST.ROOT_GROUP_PATH)
	end
	-- need to filter out the groups without operations
	for _, groupPath in TSM.Groups.GroupIterator() do
		if (not overrideOnly or TSM.Groups.HasOperationOverride(groupPath, moduleName)) and Operations.GroupHasOperation(moduleName, groupPath, filterOperationName) then
			tinsert(result, groupPath)
		end
	end
	return TempTable.Iterator(result)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.OnProfileUpdated()
	if private.ignoreProfileUpdate then
		return
	end
	if TSM.db.global.coreOptions.globalOperations then
		private.operations = TSM.db.global.userData.operations
	else
		private.operations = TSM.db.profile.userData.operations
	end
	for _, moduleName in Operations.ModuleIterator() do
		private.ValidateOperations(moduleName)
	end
	private.RebuildDB()
	TSM.Groups.RebuildDatabase()
end

function private.ValidateOperations(moduleName)
	if not private.operations[moduleName] then
		-- this is a new profile
		private.operations[moduleName] = {}
		Operations.Create(moduleName, "#Default")
		return
	end
	for operationName, operationSettings in pairs(private.operations[moduleName]) do
		if type(operationName) ~= "string" or not Operations.IsValidName(operationName) then
			Log.Err("Removing %s operation with invalid name: ", moduleName, tostring(operationName))
			private.operations[moduleName][operationName] = nil
		else
			Operations.SanitizeSettings(moduleName, operationName, operationSettings)
			for key, target in pairs(operationSettings.relationships) do
				if not private.operations[moduleName][target] then
					Log.Err("Removing invalid relationship %s,%s,%s -> %s", moduleName, operationName, tostring(key), tostring(target))
					operationSettings.relationships[key] = nil
				end
			end
		end
	end
end

function private.IsIgnored(moduleName, operationName)
	local operationSettings = private.operations[moduleName][operationName]
	assert(operationSettings)
	return operationSettings.ignorePlayer[PLAYER_KEY] or operationSettings.ignoreFactionrealm[FACTION_REALM]
end

function private.GroupOperationIteratorHelper(operations, index)
	index = index + 1
	if index > #operations then
		TempTable.Release(operations)
		return
	end
	local operationName = operations[index]
	return index, operationName, private.operations[operations.moduleName][operationName]
end

function private.RemoveDeadRelationships(moduleName)
	for _, operation in pairs(private.operations[moduleName]) do
		for key, target in pairs(operation.relationships) do
			if not private.operations[moduleName][target] then
				operation.relationships[key] = nil
			end
		end
	end
end

function private.RebuildDB()
	private.db:TruncateAndBulkInsertStart()
	for moduleName, operations in pairs(private.operations) do
		for operationName in pairs(operations) do
			private.db:BulkInsertNewRow(moduleName, operationName)
		end
	end
	private.db:BulkInsertEnd()
end
