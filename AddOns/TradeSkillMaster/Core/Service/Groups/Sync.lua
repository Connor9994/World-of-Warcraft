-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local GroupsSync = TSM.Groups:NewPackage("Sync")
local L = TSM.Include("Locale").GetTable()
local TempTable = TSM.Include("Util.TempTable")
local Math = TSM.Include("Util.Math")
local Log = TSM.Include("Util.Log")
local Sync = TSM.Include("Service.Sync")
local private = {}



-- ============================================================================
-- New Modules Functions
-- ============================================================================

function GroupsSync.OnInitialize()
	Sync.RegisterRPC("CREATE_PROFILE", private.RPCCreateProfile)
end

function GroupsSync.SendCurrentProfile(targetPlayer)
	local profileName = TSM.db:GetCurrentProfile()
	local data = TempTable.Acquire()
	data.groups = TempTable.Acquire()
	for groupPath, moduleOperations in pairs(TSM.db:Get("profile", profileName, "userData", "groups")) do
		data.groups[groupPath] = {}
		for _, module in TSM.Operations.ModuleIterator() do
			local operations = moduleOperations[module]
			if operations.override then
				data.groups[groupPath][module] = operations
			end
		end
	end
	data.items = TSM.db:Get("profile", profileName, "userData", "items")
	data.operations = TSM.db:Get("profile", profileName, "userData", "operations")
	local result, estimatedTime = Sync.CallRPC("CREATE_PROFILE", targetPlayer, private.RPCCreateProfileResultHandler, profileName, UnitName("player"), data)
	if result then
		estimatedTime = max(Math.Round(estimatedTime, 60), 60)
		Log.PrintfUser(L["Sending your '%s' profile to %s. Please keep both characters online until this completes. This will take approximately: %s"], profileName, targetPlayer, SecondsToTime(estimatedTime))
	else
		Log.PrintUser(L["Failed to send profile. Ensure both characters are online and try again."])
	end
	TempTable.Release(data.groups)
	TempTable.Release(data)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.CopyTable(srcTbl, dstTbl)
	for k, v in pairs(srcTbl) do
		dstTbl[k] = v
	end
end

function private.RPCCreateProfile(profileName, playerName, data)
	assert(TSM.db:IsValidProfileName(profileName))
	if TSM.db:ProfileExists(profileName) then
		return false, L["A profile with that name already exists on the target account. Rename it first and try again."]
	end

	-- create and switch to the new profile
	local currentProfile = TSM.db:GetCurrentProfile()
	TSM.db:SetProfile(profileName)

	-- copy all the data into this profile
	private.CopyTable(data.groups, TSM.db.profile.userData.groups)
	private.CopyTable(data.items, TSM.db.profile.userData.items)
	TSM.Operations.ReplaceProfileOperations(data.operations)

	-- switch back to our previous profile
	TSM.db:SetProfile(currentProfile)

	Log.PrintfUser(L["Added '%s' profile which was received from %s."], profileName, playerName)

	return true, profileName, UnitName("player")
end

function private.RPCCreateProfileResultHandler(_, _, success, ...)
	if success == nil then
		Log.PrintUser(L["Failed to send profile."].." "..L["Ensure both characters are online and try again."])
		return
	elseif not success then
		local errMsg = ...
		Log.PrintUser(L["Failed to send profile."].." "..errMsg)
		return
	end

	local profileName, targetPlayer = ...
	Log.PrintfUser(L["Successfully sent your '%s' profile to %s!"], profileName, targetPlayer)
end
