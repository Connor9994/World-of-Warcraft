-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Gathering = TSM.Crafting:NewPackage("Gathering")
local Environment = TSM.Include("Environment")
local DisenchantInfo = TSM.Include("Data.DisenchantInfo")
local Database = TSM.Include("Util.Database")
local Table = TSM.Include("Util.Table")
local Delay = TSM.Include("Util.Delay")
local CraftString = TSM.Include("Util.CraftString")
local RecipeString = TSM.Include("Util.RecipeString")
local TempTable = TSM.Include("Util.TempTable")
local Wow = TSM.Include("Util.Wow")
local Vararg = TSM.Include("Util.Vararg")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Conversions = TSM.Include("Service.Conversions")
local BagTracking = TSM.Include("Service.BagTracking")
local GuildTracking = TSM.Include("Service.GuildTracking")
local AltTracking = TSM.Include("Service.AltTracking")
local MailTracking = TSM.Include("Service.MailTracking")
local PlayerInfo = TSM.Include("Service.PlayerInfo")
local Settings = TSM.Include("Service.Settings")
local private = {
	settings = nil,
	db = nil,
	queuedCraftsUpdateQuery = nil, -- luacheck: ignore 1004 - just stored for GC reasons
	crafterList = {},
	professionList = {},
	contextChangedCallback = nil,
	dbUpdateTimer = nil,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Gathering.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("profile", "gatheringOptions", "sources")
		:AddKey("factionrealm", "gatheringContext", "crafter")
		:AddKey("factionrealm", "gatheringContext", "professions")
	if not Environment.HasFeature(Environment.FEATURES.GUILD_BANK) then
		Table.RemoveByValue(private.settings.sources, "guildBank")
		Table.RemoveByValue(private.settings.sources, "altGuildBank")
	end
	if Environment.IsRetail() then
		Table.RemoveByValue(private.settings.sources, "bank")
	end
end

function Gathering.OnEnable()
	private.db = Database.NewSchema("GATHERING_MATS")
		:AddUniqueStringField("itemString")
		:AddNumberField("numNeed")
		:AddNumberField("numHave")
		:AddStringField("sourcesStr")
		:Commit()
	private.queuedCraftsUpdateQuery = TSM.Crafting.CreateQueuedCraftsQuery()
		:SetUpdateCallback(private.OnQueuedCraftsUpdated)
	private.OnQueuedCraftsUpdated()
	private.dbUpdateTimer = Delay.CreateTimer("GATHERING_DB_UPDATE", private.UpdateDB)
	BagTracking.RegisterCallback(function()
		private.dbUpdateTimer:RunForTime(1)
	end)
end

function Gathering.SetContextChangedCallback(callback)
	private.contextChangedCallback = callback
end

function Gathering.CreateQuery()
	return private.db:NewQuery()
end

function Gathering.SetCrafter(crafter)
	if crafter == private.settings.crafter then
		return
	end
	private.settings.crafter = crafter
	wipe(private.settings.professions)
	private.UpdateProfessionList()
	private.UpdateDB()
end

function Gathering.SetProfessions(professions)
	local numProfessions = Table.Count(private.settings.professions)
	local didChange = false
	if numProfessions ~= #professions then
		didChange = true
	else
		for _, profession in ipairs(professions) do
			if not private.settings.professions[profession] then
				didChange = true
			end
		end
	end
	if not didChange then
		return
	end
	wipe(private.settings.professions)
	for _, profession in ipairs(professions) do
		assert(private.professionList[profession])
		private.settings.professions[profession] = true
	end
	private.UpdateDB()
end

function Gathering.GetCrafterList()
	return private.crafterList
end

function Gathering.GetCrafter()
	return private.settings.crafter ~= "" and private.settings.crafter or nil
end

function Gathering.GetProfessionList()
	return private.professionList
end

function Gathering.GetProfessions()
	return private.settings.professions
end

function Gathering.SourcesStrToTable(sourcesStr, info, alts)
	for source, num, characters in gmatch(sourcesStr, "([a-zA-Z]+)/([0-9]+)/([^,]*)") do
		info[source] = tonumber(num)
		if source == "alt" or source == "altGuildBank" then
			for character in gmatch(characters, "([^`]+)") do
				alts[character] = true
			end
		end
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.UpdateCrafterList()
	local query = TSM.Crafting.CreateQueuedCraftsQuery()
	wipe(private.crafterList)
	for _, row in query:Iterator() do
		for _, player in Vararg.Iterator(row:GetField("players")) do
			if not private.crafterList[player] then
				private.crafterList[player] = true
				tinsert(private.crafterList, player)
			end
		end
	end
	query:Release()

	if private.settings.crafter ~= "" and not private.crafterList[private.settings.crafter] then
		-- the crafter which was selected no longer exists, so clear the selection
		private.settings.crafter = ""
	elseif #private.crafterList == 1 then
		-- there is only one crafter in the list, so select it
		private.settings.crafter = private.crafterList[1]
	end
	if private.settings.crafter == "" then
		wipe(private.settings.professions)
	end
end

function private.UpdateProfessionList()
	-- update the professionList
	wipe(private.professionList)
	if private.settings.crafter ~= "" then
		-- populate the list of professions
		local query = TSM.Crafting.CreateQueuedCraftsQuery()
			:Select("profession")
			:ListContains("players", private.settings.crafter)
			:Distinct("profession")
		for _, profession in query:Iterator() do
			private.professionList[profession] = true
			tinsert(private.professionList, profession)
		end
		query:Release()
	end

	-- remove selected professions which are no longer in the list
	for profession in pairs(private.settings.professions) do
		if not private.professionList[profession] then
			private.settings.professions[profession] = nil
		end
	end

	-- select all professions by default
	if not next(private.settings.professions) then
		for _, profession in ipairs(private.professionList) do
			private.settings.professions[profession] = true
		end
	end
end

function private.OnQueuedCraftsUpdated()
	private.UpdateCrafterList()
	private.UpdateProfessionList()
	private.UpdateDB()
	private.contextChangedCallback()
end

function private.UpdateDB()
	-- delay the update if we're in combat
	if InCombatLockdown() then
		private.dbUpdateTimer:RunForTime(1)
		return
	end
	local crafter = private.settings.crafter
	if crafter == "" or not next(private.settings.professions) then
		private.db:Truncate()
		return
	end

	local matsNumNeed = TempTable.Acquire()
	local query = TSM.Crafting.CreateQueuedCraftsQuery()
		:Select("recipeString", "num")
		:ListContains("players", crafter)
		:Or()
	for profession in pairs(private.settings.professions) do
		query:Equal("profession", profession)
	end
	query:End()
	for _, recipeString, numQueued in query:Iterator() do
		local craftString = CraftString.FromRecipeString(recipeString)
		for _, itemString, quantity in TSM.Crafting.MatIterator(craftString) do
			matsNumNeed[itemString] = (matsNumNeed[itemString] or 0) + quantity * numQueued
		end
		for _, _, itemId in RecipeString.OptionalMatIterator(recipeString) do
			local matItemString = "i:"..itemId
			local quantity = TSM.Crafting.GetOptionalMatQuantity(craftString, itemId)
			matsNumNeed[matItemString] = (matsNumNeed[matItemString] or 0) + quantity * numQueued
		end
	end
	query:Release()

	local matQueue = TempTable.Acquire()
	local matsNumHave = TempTable.Acquire()
	local matsNumHaveExtra = TempTable.Acquire()
	for itemString, numNeed in pairs(matsNumNeed) do
		matsNumHave[itemString] = private.GetCrafterInventoryQuantity(itemString)
		local numUsed = nil
		numNeed, numUsed = private.HandleNumHave(itemString, numNeed, matsNumHave[itemString])
		if numUsed < matsNumHave[itemString] then
			matsNumHaveExtra[itemString] = matsNumHave[itemString] - numUsed
		end
		if numNeed > 0 then
			matsNumNeed[itemString] = numNeed
			tinsert(matQueue, itemString)
		else
			matsNumNeed[itemString] = nil
		end
	end

	local sourceList = TempTable.Acquire()
	local matSourceList = TempTable.Acquire()
	while #matQueue > 0 do
		local itemString = tremove(matQueue)
		wipe(sourceList)
		local numNeed = matsNumNeed[itemString]
		-- always add a task to get mail on the crafter if possible
		numNeed = private.ProcessSource(itemString, numNeed, "openMail", sourceList)
		assert(numNeed >= 0)
		for _, source in ipairs(private.settings.sources) do
			local isCraftSource = source == "craftProfit" or source == "craftNoProfit"
			local ignoreSource = false
			if isCraftSource then
				-- check if we are already crafting some materials of this craft so shouldn't craft this item
				local craftString = TSM.Crafting.GetMostProfitableCraftStringByItem(itemString, crafter, true)
				if craftString then
					for _, matItemString in TSM.Crafting.MatIterator(craftString) do
						if not ignoreSource and matSourceList[matItemString] and strmatch(matSourceList[matItemString], "craft[a-zA-Z]+/[^,]+/") then
							ignoreSource = true
						end
					end
				else
					-- can't craft this item
					ignoreSource = true
				end
			end
			if not ignoreSource then
				local prevNumNeed = numNeed
				numNeed = private.ProcessSource(itemString, numNeed, source, sourceList)
				assert(numNeed >= 0)
				if numNeed == 0 then
					if isCraftSource then
						-- we are crafting these, so add the necessary mats
						local craftString = TSM.Crafting.GetMostProfitableCraftStringByItem(itemString, crafter, true)
						assert(craftString)
						local numToCraft = ceil(prevNumNeed / TSM.Crafting.GetNumResult(craftString))
						for _, intMatItemString, intMatQuantity in TSM.Crafting.MatIterator(craftString) do
							local intMatNumNeed, numUsed = private.HandleNumHave(intMatItemString, numToCraft * intMatQuantity, matsNumHaveExtra[intMatItemString] or 0)
							if numUsed > 0 then
								matsNumHaveExtra[intMatItemString] = matsNumHaveExtra[intMatItemString] - numUsed
							end
							if intMatNumNeed > 0 then
								if not matsNumNeed[intMatItemString] then
									local intMatNumHave = private.GetCrafterInventoryQuantity(intMatItemString)
									if intMatNumNeed > intMatNumHave then
										matsNumHave[intMatItemString] = intMatNumHave
										matsNumNeed[intMatItemString] = intMatNumNeed - intMatNumHave
										tinsert(matQueue, intMatItemString)
									elseif intMatNumHave > intMatNumNeed then
										matsNumHaveExtra[intMatItemString] = intMatNumHave - intMatNumNeed
									end
								else
									matsNumNeed[intMatItemString] = (matsNumNeed[intMatItemString] or 0) + intMatNumNeed
									if matSourceList[intMatItemString] then
										-- already processed this item, so queue it again
										tinsert(matQueue, intMatItemString)
									end
								end
							end
						end
					end
					break
				end
			end
		end
		sort(sourceList)
		matSourceList[itemString] = table.concat(sourceList, ",")
	end
	private.db:TruncateAndBulkInsertStart()
	for itemString, numNeed in pairs(matsNumNeed) do
		private.db:BulkInsertNewRow(itemString, numNeed, matsNumHave[itemString], matSourceList[itemString])
	end
	private.db:BulkInsertEnd()

	TempTable.Release(sourceList)
	TempTable.Release(matSourceList)
	TempTable.Release(matsNumNeed)
	TempTable.Release(matsNumHave)
	TempTable.Release(matsNumHaveExtra)
	TempTable.Release(matQueue)
end

function private.ProcessSource(itemString, numNeed, source, sourceList)
	local crafter = private.settings.crafter
	if source == "openMail" then
		local crafterMailQuantity = AltTracking.GetMailQuantity(itemString, crafter)
		if crafterMailQuantity > 0 then
			crafterMailQuantity = min(crafterMailQuantity, numNeed)
			if crafter == Wow.GetCharacterName() then
				tinsert(sourceList, "openMail/"..crafterMailQuantity.."/")
			else
				tinsert(sourceList, "alt/"..crafterMailQuantity.."/"..crafter)
			end
			return numNeed - crafterMailQuantity
		end
	elseif source == "bank" then
		local bankQuantity = BagTracking.GetBankQuantity(itemString)
		if bankQuantity > 0 then
			bankQuantity = min(numNeed, bankQuantity)
			tinsert(sourceList, "bank/"..numNeed.."/")
			return 0
		end
	elseif source == "vendor" then
		if ItemInfo.GetVendorBuy(itemString) then
			-- assume we can buy all we need from the vendor
			tinsert(sourceList, "vendor/"..numNeed.."/")
			return 0
		end
	elseif source == "guildBank" then
		local guild = PlayerInfo.GetPlayerGuild(crafter, Wow.GetFactionrealmName())
		local guildBankQuantity = guild and AltTracking.GetGuildQuantity(itemString, guild) or 0
		if guildBankQuantity > 0 then
			guildBankQuantity = min(guildBankQuantity, numNeed)
			if crafter == Wow.GetCharacterName() then
				-- we are on the crafter
				tinsert(sourceList, "guildBank/"..guildBankQuantity.."/")
			else
				-- need to switch to the crafter to get items from the guild bank
				tinsert(sourceList, "altGuildBank/"..guildBankQuantity.."/"..crafter)
			end
			return numNeed - guildBankQuantity
		end
	elseif source == "alt" then
		if ItemInfo.IsSoulbound(itemString) then
			-- can't mail soulbound items
			return numNeed
		end
		if crafter ~= Wow.GetCharacterName() then
			-- we are on the alt, so see if we can gather items from this character
			local bagQuantity, bankQuantity, reagentBankQuantity = BagTracking.GetQuantities(itemString)
			bankQuantity = bankQuantity + reagentBankQuantity
			local mailQuantity = MailTracking.GetQuantity(itemString)

			if bagQuantity > 0 then
				bagQuantity = min(numNeed, bagQuantity)
				tinsert(sourceList, "sendMail/"..bagQuantity.."/")
				numNeed = numNeed - bagQuantity
				if numNeed == 0 then
					return 0
				end
			end
			if mailQuantity > 0 then
				mailQuantity = min(numNeed, mailQuantity)
				tinsert(sourceList, "openMail/"..mailQuantity.."/")
				numNeed = numNeed - mailQuantity
				if numNeed == 0 then
					return 0
				end
			end
			if bankQuantity > 0 then
				bankQuantity = min(numNeed, bankQuantity)
				tinsert(sourceList, "bank/"..bankQuantity.."/")
				numNeed = numNeed - bankQuantity
				if numNeed == 0 then
					return 0
				end
			end
		end

		-- check alts
		local altNum = 0
		local altCharacters = TempTable.Acquire()
		for factionrealm in TSM.db:GetConnectedRealmIterator("factionrealm") do
			for _, character in TSM.db:FactionrealmCharacterIterator(factionrealm) do
				local characterKey = nil
				if factionrealm == Wow.GetFactionrealmName() then
					characterKey = character
				else
					characterKey = character.." - "..factionrealm
				end
				if characterKey ~= crafter and characterKey ~= Wow.GetCharacterName() then
					local num = 0
					num = num + AltTracking.GetBagQuantity(itemString, character, factionrealm)
					num = num + AltTracking.GetBankQuantity(itemString, character, factionrealm)
					num = num + AltTracking.GetReagentBankQuantity(itemString, character, factionrealm)
					num = num + AltTracking.GetMailQuantity(itemString, character, factionrealm)
					if num > 0 then
						tinsert(altCharacters, characterKey)
						altNum = altNum + num
					end
				end
			end
		end

		local altCharactersStr = table.concat(altCharacters, "`")
		TempTable.Release(altCharacters)
		if altNum > 0 then
			altNum = min(altNum, numNeed)
			tinsert(sourceList, "alt/"..altNum.."/"..altCharactersStr)
			return numNeed - altNum
		end
	elseif source == "altGuildBank" then
		local currentGuild = PlayerInfo.GetPlayerGuild(Wow.GetCharacterName(), Wow.GetFactionrealmName())
		if currentGuild and crafter ~= Wow.GetCharacterName() then
			-- we are on an alt, so see if we can gather items from this character's guild bank
			local guildBankQuantity = GuildTracking.GetQuantity(itemString)
			if guildBankQuantity > 0 then
				guildBankQuantity = min(numNeed, guildBankQuantity)
				tinsert(sourceList, "guildBank/"..guildBankQuantity.."/")
				numNeed = numNeed - guildBankQuantity
				if numNeed == 0 then
					return 0
				end
			end
		end

		-- check alts
		local totalGuildBankQuantity = 0
		local altCharacters = TempTable.Acquire()
		for _, character, factionrealm in PlayerInfo.CharacterIterator(true) do
			local guild = PlayerInfo.GetPlayerGuild(character, factionrealm)
			if guild and guild ~= currentGuild then
				local guildBankQuantity = AltTracking.GetGuildQuantity(itemString, guild)
				if guildBankQuantity > 0 then
					local characterKey = nil
					if factionrealm == Wow.GetFactionrealmName() then
						characterKey = character
					else
						characterKey = character.." - "..factionrealm
					end
					tinsert(altCharacters, characterKey)
					totalGuildBankQuantity = totalGuildBankQuantity + guildBankQuantity
				end
			end
		end
		local altCharactersStr = table.concat(altCharacters, "`")
		TempTable.Release(altCharacters)
		if totalGuildBankQuantity > 0 then
			totalGuildBankQuantity = min(totalGuildBankQuantity, numNeed)
			tinsert(sourceList, "altGuildBank/"..totalGuildBankQuantity.."/"..altCharactersStr)
			return numNeed - totalGuildBankQuantity
		end
	elseif source == "craftProfit" or source == "craftNoProfit" then
		local craftString, maxProfit, lowestCraftingCost = TSM.Crafting.GetMostProfitableCraftStringByItem(itemString, crafter, true)
		if craftString and (source == "craftNoProfit" or (maxProfit and maxProfit > 0) or (not maxProfit and ItemInfo.IsSoulbound(itemString) and lowestCraftingCost)) then
			-- assume we can craft all we need
			tinsert(sourceList, source.."/"..numNeed.."/")
			return 0
		end
	elseif source == "auction" then
		if ItemInfo.IsSoulbound(itemString) then
			-- can't buy soulbound items
			return numNeed
		end
		-- assume we can buy all we need from the AH
		tinsert(sourceList, "auction/"..numNeed.."/")
		return 0
	elseif source == "auctionCrafting" then
		if ItemInfo.IsSoulbound(itemString) then
			-- can't buy soulbound items
			return numNeed
		end
		if not Conversions.GetSourceItems(itemString) then
			-- can't convert to get this item
			return numNeed
		end
		-- assume we can buy all we need from the AH
		tinsert(sourceList, "auctionCrafting/"..numNeed.."/")
		return 0
	elseif source == "auctionDE" then
		if ItemInfo.IsSoulbound(itemString) then
			-- can't buy soulbound items
			return numNeed
		end
		if not DisenchantInfo.IsTargetItem(itemString) then
			-- can't disenchant to get this item
			return numNeed
		end
		-- assume we can buy all we need from the AH
		tinsert(sourceList, "auctionDE/"..numNeed.."/")
		return 0
	else
		error("Unkown source: "..tostring(source))
	end
	return numNeed
end

function private.GetCrafterInventoryQuantity(itemString)
	local crafter = private.settings.crafter
	return AltTracking.GetBagQuantity(itemString, crafter) + (Environment.IsRetail() and AltTracking.GetReagentBankQuantity(itemString, crafter) + AltTracking.GetBankQuantity(itemString, crafter) or 0)
end

function private.HandleNumHave(itemString, numNeed, numHave)
	if numNeed > numHave then
		-- use everything we have
		numNeed = numNeed - numHave
		return numNeed, numHave
	else
		-- we have at least as many as we need, so use all of them
		return 0, numNeed
	end
end
