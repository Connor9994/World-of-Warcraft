-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local PlayerProfessions = TSM.Crafting:NewPackage("PlayerProfessions")
local Environment = TSM.Include("Environment")
local ProfessionInfo = TSM.Include("Data.ProfessionInfo")
local Database = TSM.Include("Util.Database")
local Event = TSM.Include("Util.Event")
local Delay = TSM.Include("Util.Delay")
local TempTable = TSM.Include("Util.TempTable")
local CraftString = TSM.Include("Util.CraftString")
local MatString = TSM.Include("Util.MatString")
local Threading = TSM.Include("Service.Threading")
local Settings = TSM.Include("Service.Settings")
local private = {
	settings = nil,
	playerProfessionsThread = nil,
	playerProfessionsThreadRunning = false,
	db = nil,
	query = nil,
	retryTimer = nil,
}
local TAILORING_ES = "Sastrería"
local TAILORING_SKILL_ES = "Costura"
local LEATHERWORKING_ES = "Peletería"
local LEATHERWORKING_SKILL_ES = "Marroquinería"
local ENGINEERING_FR = "Ingénieur"
local ENGINEERING_SKILL_FR = "Ingénierie"
local FIRST_AID_FR = "Premiers soins"
local FIRST_AID_SKILL_FR = "Secourisme"



-- ============================================================================
-- Module Functions
-- ============================================================================

function PlayerProfessions.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("sync", "internalData", "playerProfessions")
		:AddKey("factionrealm", "internalData", "isCraftFavorite")
		:AddKey("factionrealm", "internalData", "mats")
	private.db = Database.NewSchema("PLAYER_PROFESSIONS")
		:AddStringField("player")
		:AddStringField("profession")
		:AddNumberField("skillId")
		:AddNumberField("level")
		:AddNumberField("maxLevel")
		:AddBooleanField("isSecondary")
		:AddIndex("player")
		:Commit()
	private.query = private.db:NewQuery()
		:Select("player", "profession", "skillId", "level", "maxLevel")
		:OrderBy("isSecondary", true)
		:OrderBy("level", false)
		:OrderBy("profession", true)
	private.playerProfessionsThread = Threading.New("PLAYER_PROFESSIONS", private.PlayerProfessionsThread)
	private.StartPlayerProfessionsThread()
	private.retryTimer = Delay.CreateTimer("PLAYER_PROFESSIONS_RETRY", private.PlayerProfessionsSkillUpdate)
	Event.Register("SKILL_LINES_CHANGED", private.PlayerProfessionsSkillUpdate)
	Event.Register("LEARNED_SPELL_IN_TAB", private.StartPlayerProfessionsThread)
end

function PlayerProfessions.GetProfessionSkill(player, profession)
	return private.db:NewQuery()
		:Select("level")
		:Equal("player", player)
		:Equal("profession", profession)
		:GetFirstResultAndRelease()
end

function PlayerProfessions.CreateQuery()
	return private.db:NewQuery()
end

function PlayerProfessions.Iterator()
	return private.query:Iterator()
end



-- ============================================================================
-- Player Professions Thread
-- ============================================================================

function private.StartPlayerProfessionsThread()
	if private.playerProfessionsThreadRunning then
		Threading.Kill(private.playerProfessionsThread)
	end
	private.playerProfessionsThreadRunning = true
	Threading.Start(private.playerProfessionsThread)
end

function private.UpdatePlayerProfessionInfo(name, skillId, level, maxLevel, isSecondary)
	local professionInfo = private.settings.playerProfessions[name] or {}
	private.settings.playerProfessions[name] = professionInfo
	-- preserve whether or not we've prompted to create groups and the profession link if possible
	local oldPrompted = professionInfo.prompted or nil
	local oldLink = professionInfo.link or nil
	wipe(professionInfo)
	professionInfo.skillId = skillId
	professionInfo.level = level
	professionInfo.maxLevel = maxLevel
	professionInfo.isSecondary = isSecondary
	professionInfo.prompted = oldPrompted
	professionInfo.link = oldLink
end

function private.PlayerProfessionsSkillUpdate()
	if Environment.IsRetail() then
		local professionIds = TempTable.Acquire(GetProfessions())
		-- ignore archaeology and fishing which are in the 3rd and 4th slots respectively
		professionIds[3] = nil
		professionIds[4] = nil
		for i, id in pairs(professionIds) do -- needs to be pairs since there might be holes
			local name, _, level, maxLevel, _, _, skillId = GetProfessionInfo(id)
			if not TSM.UI.CraftingUI.IsProfessionIgnored(name) then -- exclude ignored professions
				private.UpdatePlayerProfessionInfo(name, skillId, level, maxLevel, i > 2)
			end
		end
		TempTable.Release(professionIds)
	else
		local _, _, offset, numSpells = GetSpellTabInfo(1)
		for i = offset + 1, offset + numSpells do
			local name, subName = GetSpellBookItemName(i, BOOKTYPE_SPELL)
			if not subName then
				private.retryTimer:RunForTime(0.05)
				return
			end
			if name and subName and (ProfessionInfo.IsSubNameClassic(strtrim(subName, " ")) or name == ProfessionInfo.GetName("Smelting") or name == ProfessionInfo.GetName("Poisons") or name == LEATHERWORKING_ES or name == TAILORING_ES or name == ENGINEERING_FR or name == FIRST_AID_FR) and not TSM.UI.CraftingUI.IsProfessionIgnored(name) then
				local level, maxLevel = nil, nil
				for j = 1, GetNumSkillLines() do
					local skillName, _, _, skillRank, _, _, skillMaxRank = GetSkillLineInfo(j)
					if skillName == name then
						level = skillRank
						maxLevel = skillMaxRank
						break
					elseif name == ProfessionInfo.GetName("Smelting") and skillName == ProfessionInfo.GetName("Mining") then
						name = ProfessionInfo.GetName("Mining")
						level = skillRank
						maxLevel = skillMaxRank
						break
					elseif name == LEATHERWORKING_ES and skillName == LEATHERWORKING_SKILL_ES then
						name = LEATHERWORKING_SKILL_ES
						level = skillRank
						maxLevel = skillMaxRank
						break
					elseif name == TAILORING_ES and skillName == TAILORING_SKILL_ES then
						name = TAILORING_SKILL_ES
						level = skillRank
						maxLevel = skillMaxRank
						break
					elseif name == ENGINEERING_FR and skillName == ENGINEERING_SKILL_FR then
						name = ENGINEERING_SKILL_FR
						level = skillRank
						maxLevel = skillMaxRank
						break
					elseif name == FIRST_AID_FR and skillName == FIRST_AID_SKILL_FR then
						name = FIRST_AID_SKILL_FR
						level = skillRank
						maxLevel = skillMaxRank
						break
					end
				end
				if level and maxLevel and not TSM.UI.CraftingUI.IsProfessionIgnored(name) then -- exclude ignored professions
					private.UpdatePlayerProfessionInfo(name, -1, level, maxLevel, name == GetSpellInfo(129))
				end
			end
		end
	end

	-- update our DB
	private.db:TruncateAndBulkInsertStart()
	for _, character in TSM.db:FactionrealmCharacterIterator() do
		local playerProfessions = TSM.db:Get("sync", TSM.db:GetSyncScopeKeyByCharacter(character), "internalData", "playerProfessions")
		if playerProfessions then
			for name, info in pairs(playerProfessions) do
				private.db:BulkInsertNewRow(character, name, info.skillId or -1, info.level, info.maxLevel, info.isSecondary)
			end
		end
	end
	private.db:BulkInsertEnd()
end

function private.PlayerProfessionsThread()
	-- get the player's tradeskills
	if Environment.IsRetail() then
		SpellBook_UpdateProfTab()
	else
		SpellBookFrame_UpdateSkillLineTabs()
	end
	local forgetProfession = Threading.AcquireSafeTempTable()
	for name in pairs(private.settings.playerProfessions) do
		forgetProfession[name] = true
	end
	if Environment.IsRetail() then
		Threading.WaitForFunction(GetProfessions)
		local professionIds = Threading.AcquireSafeTempTable(GetProfessions())
		-- ignore archaeology and fishing which are in the 3rd and 4th slots respectively
		professionIds[3] = nil
		professionIds[4] = nil
		for i, id in pairs(professionIds) do -- needs to be pairs since there might be holes
			local name, _, level, maxLevel, _, _, skillId = Threading.WaitForFunction(GetProfessionInfo, id)
			if not TSM.UI.CraftingUI.IsProfessionIgnored(name) then -- exclude ignored professions
				forgetProfession[name] = nil
				private.UpdatePlayerProfessionInfo(name, skillId, level, maxLevel, i > 2)
			end
		end
		Threading.ReleaseSafeTempTable(professionIds)
	else
		local _, _, offset, numSpells = GetSpellTabInfo(1)
		for i = offset + 1, offset + numSpells do
			local name, subName = GetSpellBookItemName(i, BOOKTYPE_SPELL)
			if name and subName and (ProfessionInfo.IsSubNameClassic(strtrim(subName, " ")) or name == ProfessionInfo.GetName("Smelting") or name == ProfessionInfo.GetName("Poisons") or name == LEATHERWORKING_ES or name == TAILORING_ES or name == ENGINEERING_FR or name == FIRST_AID_FR) and not TSM.UI.CraftingUI.IsProfessionIgnored(name) then
				local level, maxLevel = nil, nil
				for j = 1, GetNumSkillLines() do
					local skillName, _, _, skillRank, _, _, skillMaxRank = GetSkillLineInfo(j)
					if skillName == name then
						level = skillRank
						maxLevel = skillMaxRank
						break
					elseif name == ProfessionInfo.GetName("Smelting") and skillName == ProfessionInfo.GetName("Mining") then
						name = ProfessionInfo.GetName("Mining")
						level = skillRank
						maxLevel = skillMaxRank
						break
					elseif name == LEATHERWORKING_ES and skillName == LEATHERWORKING_SKILL_ES then
						name = LEATHERWORKING_SKILL_ES
						level = skillRank
						maxLevel = skillMaxRank
						break
					elseif name == TAILORING_ES and skillName == TAILORING_SKILL_ES then
						name = TAILORING_SKILL_ES
						level = skillRank
						maxLevel = skillMaxRank
						break
					elseif name == ENGINEERING_FR and skillName == ENGINEERING_SKILL_FR then
						name = ENGINEERING_SKILL_FR
						level = skillRank
						maxLevel = skillMaxRank
						break
					elseif name == FIRST_AID_FR and skillName == FIRST_AID_SKILL_FR then
						name = FIRST_AID_SKILL_FR
						level = skillRank
						maxLevel = skillMaxRank
						break
					end
				end
				if level and maxLevel and not TSM.UI.CraftingUI.IsProfessionIgnored(name) then -- exclude ignored professions
					forgetProfession[name] = nil
					private.UpdatePlayerProfessionInfo(name, -1, level, maxLevel, name == GetSpellInfo(129))
				end
			end
		end
	end
	for name in pairs(forgetProfession) do
		private.settings.playerProfessions[name] = nil
	end
	Threading.ReleaseSafeTempTable(forgetProfession)

	-- clean up crafts which are no longer known
	local matUsed = Threading.AcquireSafeTempTable()
	local craftStrings = Threading.AcquireSafeTempTable()
	local spellIds = Threading.AcquireSafeTempTable()
	for _, craftString in TSM.Crafting.CraftStringIterator() do
		tinsert(craftStrings, craftString)
		local spellId = CraftString.GetSpellId(craftString)
		spellIds[spellId] = true
	end
	for _, craftString in ipairs(craftStrings) do
		local playersToRemove = TempTable.Acquire()
		for _, player in TSM.Crafting.PlayerIterator(craftString) do
			-- check if the player still exists and still has this profession
			local playerProfessions = TSM.db:Get("sync", TSM.db:GetSyncScopeKeyByCharacter(player), "internalData", "playerProfessions")
			if not playerProfessions or not playerProfessions[TSM.Crafting.GetProfession(craftString)] then
				playersToRemove[player] = true
			end
		end
		local stillExists = true
		if next(playersToRemove) then
			stillExists = TSM.Crafting.RemoveCraftPlayers(craftString, playersToRemove)
		end
		TempTable.Release(playersToRemove)
		if stillExists then
			for _, itemString in TSM.Crafting.MatIterator(craftString) do
				matUsed[itemString] = true
			end
			for _, matString in TSM.Crafting.OptionalMatIterator(craftString) do
				for itemString in MatString.ItemIterator(matString) do
					matUsed[itemString] = true
				end
			end
		end
		Threading.Yield()
	end
	Threading.ReleaseSafeTempTable(craftStrings)

	-- clean up favorite crafts
	for spellId, isFavorite in pairs(private.settings.isCraftFavorite) do
		if not isFavorite or not spellIds[spellId] then
			private.settings.isCraftFavorite[spellId] = nil
		end
	end
	Threading.ReleaseSafeTempTable(spellIds)

	-- clean up mats which aren't used anymore
	local toRemove = TempTable.Acquire()
	for itemString, matInfo in pairs(private.settings.mats) do
		-- clear out old names
		matInfo.name = nil
		if not matUsed[itemString] then
			tinsert(toRemove, itemString)
		end
	end
	Threading.ReleaseSafeTempTable(matUsed)
	for _, itemString in ipairs(toRemove) do
		private.settings.mats[itemString] = nil
	end
	TempTable.Release(toRemove)

	-- update our DB
	private.db:TruncateAndBulkInsertStart()
	for _, character in TSM.db:FactionrealmCharacterIterator() do
		local playerProfessions = TSM.db:Get("sync", TSM.db:GetSyncScopeKeyByCharacter(character), "internalData", "playerProfessions")
		if playerProfessions then
			for name, info in pairs(playerProfessions) do
				private.db:BulkInsertNewRow(character, name, info.skillId or -1, info.level, info.maxLevel, info.isSecondary)
			end
		end
	end
	private.db:BulkInsertEnd()

	private.playerProfessionsThreadRunning = false
end
