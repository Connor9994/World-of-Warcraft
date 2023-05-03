-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local PlayerInfo = TSM.Init("Service.PlayerInfo") ---@class Service.PlayerInfo
local String = TSM.Include("Util.String")
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local Wow = TSM.Include("Util.Wow")
local Settings = TSM.Include("Service.Settings")
local private = {
	connectedAlts = {},
	settings = nil,
	isPlayerCache = {},
}
local PLAYER_LOWER = strlower(Wow.GetCharacterName())
local FACTION_LOWER = strlower(Wow.GetFactionName())
local REALM_LOWER = strlower(Wow.GetRealmName())
local PLAYER_REALM_LOWER = PLAYER_LOWER.." - "..REALM_LOWER



-- ============================================================================
-- Module Loading
-- ============================================================================

PlayerInfo:OnSettingsLoad(function()
	private.settings = Settings.NewView()
		:AddKey("factionrealm", "internalData", "guildVaults")
		:AddKey("factionrealm", "coreOptions", "ignoreGuilds")
		:AddKey("factionrealm", "internalData", "characterGuilds")
		:AddKey("sync", "internalData", "classKey")
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

---Return all connected realm alt characters as a table.
---@return table
function PlayerInfo.GetConnectedAlts()
	wipe(private.connectedAlts)
	for factionrealm in TSM.db:GetConnectedRealmIterator("factionrealm") do
		for _, character in TSM.db:FactionrealmCharacterIterator(factionrealm) do
			local realm = strmatch(factionrealm, ".+ %- (.+)")
			character = Ambiguate(gsub(strmatch(character, "(.*) ?"..String.Escape("-").."?").."-"..gsub(realm, String.Escape("-"), ""), " ", ""), "none")
			if character ~= Wow.GetCharacterName() then
				tinsert(private.connectedAlts, character)
			end
		end
	end
	sort(private.connectedAlts)
	return private.connectedAlts
end

---Iterate over all characters which are accessible.
---@param currentAccountOnly boolean If true, will only include the current account
---@return fun():number, string, string @An iterator with the following fields: `index, character, factionrealm`
function PlayerInfo.CharacterIterator(currentAccountOnly)
	local result = TempTable.Acquire()
	for _, _, character, factionrealm in private.settings:AccessibleValueIterator("classKey") do
		if not currentAccountOnly or Settings.IsCurrentAccountOwner(character, factionrealm) then
			Table.InsertMultiple(result, character, factionrealm)
		end
	end
	return TempTable.Iterator(result, 2)
end

---Iterate over all the guilds which are accessible.
---@param includeIgnored boolean Include ignored guilds
---@return fun():number, string, string @An iterator with the following fields: `index, guildName, factionrealm`
function PlayerInfo.GuildIterator(includeIgnored)
	local result = TempTable.Acquire()
	for _, guildVaults, factionrealm in private.settings:AccessibleValueIterator("guildVaults") do
		local ignoreGuilds = private.settings:GetForScopeKey("ignoreGuilds", factionrealm)
		for guildName in pairs(guildVaults) do
			if includeIgnored or not ignoreGuilds[guildName] then
				Table.InsertMultiple(result, guildName, factionrealm)
			end
		end
	end
	return TempTable.Iterator(result, 2)
end

---Get the player's guild.
---@param player string The name of the player
---@return string? @The name of the player's guilde or nil if it's not in one
function PlayerInfo.GetPlayerGuild(character, factionrealm)
	return private.settings:GetForScopeKey("characterGuilds", factionrealm)[character]
end

---Check whether or not a player belongs to the user.
---@param target string The name of the player
---@param includeAlts boolean Whether or not to include alts
---@param includeOtherFaction boolean Whether or not to include players on the other faction
---@param includeOtherAccounts boolean Whether or not to include connected accounts
---@return boolean
function PlayerInfo.IsPlayer(target, includeAlts, includeOtherFaction, includeOtherAccounts)
	local cacheKey = strjoin("%", target, includeAlts and "1" or "0", includeOtherFaction and "1" or "0", includeOtherAccounts and "1" or "0")
	if private.isPlayerCache.lastUpdate ~= GetTime() then
		wipe(private.isPlayerCache)
		private.isPlayerCache.lastUpdate = GetTime()
	end
	if private.isPlayerCache[cacheKey] == nil then
		private.isPlayerCache[cacheKey] = private.IsPlayerHelper(target, includeAlts, includeOtherFaction, includeOtherAccounts)
	end
	return private.isPlayerCache[cacheKey]
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.IsPlayerHelper(target, includeAlts, includeOtherFaction, includeOtherAccounts)
	target = strlower(target)
	if not strfind(target, " %- ") then
		target = gsub(target, "%-", " - ", 1)
	end
	if target == PLAYER_LOWER then
		return true
	elseif strfind(target, " %- ") and target == PLAYER_REALM_LOWER then
		return true
	end
	if not strfind(target, " %- ") then
		target = target.." - "..REALM_LOWER
	end
	if includeAlts then
		local result = false
		for _, factionrealm, character in Settings.ConnectedFactionrealmAltCharacterIterator() do
			local factionKey, realm = strmatch(factionrealm, "(.+) %- (.+)")
			factionKey = strlower(factionKey)
			if not result and target == strlower(character).." - "..strlower(realm) and (includeOtherFaction or factionKey == FACTION_LOWER) and (includeOtherAccounts or Settings.IsCurrentAccountOwner(character, factionrealm)) then
				result = true
			end
		end
		return result
	end
	return false
end
