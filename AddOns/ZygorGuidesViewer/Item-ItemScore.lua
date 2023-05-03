local name,ZGV = ...

local L = ZGV.L
local G = _G

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe
local TS = ZGV.TooltipScanner
local Enum = ZGV.Retrofit.Enum

local ItemScore = ZGV.ItemScore
LibStub("AceHook-3.0"):Embed(ItemScore)

local item_weapon_types = ItemScore.Item_Weapon_Types
local item_armor_types = ItemScore.Item_Armor_Types
local item_gem_types = ItemScore.Item_Gem_Types

local ItemCache = {}
ItemScore.ItemCache = ItemCache

local locale=GetLocale()
if locale=="enGB" then locale="enUS" end  -- just in case.

local C_Container = ZGV.Retrofit.C_Container

local function strip_link(itemlink)
	local _,itemstring,_ = itemlink:match("(.*)item:([0-9-:]*)(.*)")
	if itemstring then 	
		return "item:"..itemstring:gsub(":0:","::")
	end
	return false
end
ItemScore.strip_link = strip_link
	
function ItemScore:Initialise()
	-- apply lower armor types as viable
	for class,classrules in pairs(ItemScore.rules) do
		for spec,rule in pairs(classrules) do
			local stats = rule["stats"]
			local types = rule["itemtypes"]

			stats.DAMAGE_PER_SECOND = stats.DPS stats.DPS = nil -- Switch DPS to the full string.

			-- players use only final armor types, so no fallbacks to lower ones anymore

			types["JEWELERY"] = 1 -- rings, trinkets, necklaces
		end
	end

	-- register all needed events
	ZGV:AddEventHandler("PLAYER_LEVEL_UP",ItemScore.OnEvent)
	ZGV:AddEventHandler("PLAYER_EQUIPMENT_CHANGED",ItemScore.OnEvent)
	ZGV:AddEventHandler("BAG_UPDATE_DELAYED",ItemScore.OnEvent)
	ZGV:AddEventHandler("PLAYER_REGEN_DISABLED",ItemScore.OnEvent)
	ZGV:AddEventHandler("PLAYER_REGEN_ENABLED",ItemScore.OnEvent)

	if ZGV.IsRetail then
		ZGV:AddEventHandler("ACTIVE_TALENT_GROUP_CHANGED",ItemScore.OnEvent)
		ZGV:AddEventHandler("PLAYER_SPECIALIZATION_CHANGED",ItemScore.OnEvent)
	end

	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		ZGV:AddEventHandler("CHARACTER_POINTS_CHANGED",ItemScore.OnEvent)
		ZGV:AddEventHandler("SKILL_LINES_CHANGED",ItemScore.OnEvent)
	end

	ZGV.UpdateCentral:AddHandler(ItemScore.ItemDetailsHandler)

	ZGV:AddMessageHandler("ZGV_STEP_FINALISED",ItemScore.OnEvent)
	ZGV:AddMessageHandler("LIBROVER_TRAVEL_REPORTED",ItemScore.OnEvent)

	-- setup altDB
	local name = UnitName("player")
	if ZGV.IsRetail then
		ZGV.db.realm.characters = ZGV.db.realm.characters or {}
		ItemScore.altDB = ZGV.db.realm.characters
	else
		ZGV.db.factionrealm.characters = ZGV.db.factionrealm.characters or {}
		ItemScore.altDB = ZGV.db.factionrealm.characters
	end

	-- create item popup
	ItemScore.Upgrades:CreatePopup()

	-- trim gem database, only keep those from expansions user owns
	ItemScore:TrimGemsDatabase()

	-- set up initial data
	ItemScore:RefreshUserData()
end

function ItemScore:RecordCurrentCharacter()
	self.playername = UnitName("player")

	ItemScore.altDB[self.playername] = ItemScore.altDB[self.playername] or {statweights={}, gear={}}

	local character = ItemScore.altDB[self.playername]

	local classname,classtag,classnum = UnitClass("player")
	character.class = classtag
	character.classname = classname
	character.classnum = classnum
	character.level = UnitLevel("player")
	character.dualwield=IsSpellKnown(674) -- dualwield spell for classic
end


function ItemScore:OnEvent(event,arg1,arg2,...)
	if event == "PLAYER_LEVEL_UP" or event == "ACTIVE_TALENT_GROUP_CHANGED" or event == "PLAYER_SPECIALIZATION_CHANGED" or event == "CHARACTER_POINTS_CHANGED" then
		-- using timer as delay, since in the same frame PLAYER_LEVEL_UP player is still on previous level
		-- and to run it only once, as both PLU and PSC can fire more than once
		ItemScore:DelayedRefreshUserData()
	elseif event == "SKILL_LINES_CHANGED" then -- on classic, skills changed, so user may have learned new weapon skill
		ItemScore:GetEquipmentSkills()
	elseif event == "PLAYER_EQUIPMENT_CHANGED" or event == "BAG_UPDATE_DELAYED" or event=="GET_ITEM_INFO_RECEIVED" then -- bags or equipment changed, see what upgrades we have
		ItemScore.EquipTimer = ItemScore.EquipTimer or ZGV:ScheduleTimer(function() -- on timer to run it only once, since equip/unequip fires both events, and we would get spammed
			ItemScore.Upgrades:ScoreEquippedItems()
		end,0.5)
	elseif event=="ZGV_STEP_FINALISED"  or event=="LIBROVER_TRAVEL_REPORTED" then -- step finished loading, or travel route updated, see if we have useless quest equip or portkey
		if not ZGV.NotificationCenter:EntryExists("ZygorItemPopup") then
			ItemScore.Upgrades:ScoreEquippedItems()
		end
	elseif event == "PLAYER_REGEN_DISABLED" then -- combat started, kill all upgrade popups
		if ItemScore.Upgrades.EquipPopup then ItemScore.Upgrades.EquipPopup:Hide() end
	elseif event == "PLAYER_REGEN_ENABLED" then -- combat ended, check if anything is waiting for equip
		ItemScore.Upgrades:ProcessPossibleUpgrades()
	end

	if event == "BAG_UPDATE_DELAYED" then
		ItemScore.Upgrades:ShowAltsUpgrades()
	end

	if event == "PLAYER_EQUIPMENT_CHANGED" then
		ItemScore.GearFinder:ClearResults()
	end
end

function ItemScore:DelayedRefreshUserData()
	if ItemScore.RefreshTimer then ZGV:CancelTimer(ItemScore.RefreshTimer) end
	ItemScore.RefreshTimer = ZGV:ScheduleTimer(function() 
		ItemScore:RefreshUserData()
		-- TODO: outleveled heirloom popup
	end,0.5)
end

function ItemScore:RefreshUserData()
	ItemScore.RefreshTimer = nil
	ItemScore:RecordCurrentCharacter()
	ItemScore:GetEquipmentSkills()
	ItemScore:SetStatWeights()
	ItemScore.Upgrades:ScoreEquippedItems()
end

local function get_ruleset_for(name,spec)
	local itemtypes = {}
	local stats = {}
	local primary = {}
	local caps = {}

	local character = ItemScore.altDB[name]
	local class = character.class

	if ItemScore.rules[class][spec] then
		for i,v in pairs(ItemScore.rules[class][spec].itemtypes) do itemtypes[i]=v end
		for i,v in pairs(ItemScore.rules[class][spec].stats) do stats[i]=v end
		if ZGV.IsRetail then
			for i,v in pairs(ItemScore.rules[class][spec].primary) do primary[i]=v end
		end
		if ZGV.IsClassic or ZGV.IsClassicTBC then
			for i,v in pairs(ItemScore.rules[class][spec].caps) do caps[i]=v end
		end
	else
		print("Unknown spec",class,spec)
	end

	-- Update stats with users profile
	local saved_vars_prefix = tostring(spec).."_"
	local playerstatweights = character.statweights
	for index,stat in pairs(ZGV.ItemScore.Keywords) do
		if playerstatweights[saved_vars_prefix..(stat.blizz)] then
			stats[(stat.blizz)]= tonumber(playerstatweights[saved_vars_prefix..(stat.blizz)] or 0)
		end
	end

	-- record lowest statweight for scoring armor/dps
	local whiteScoreWeight = nil
	for i,v in pairs(stats) do
		if v>0 then
			if not whiteScoreWeight or whiteScoreWeight>v then
				whiteScoreWeight = v
			end
		end
	end

	whiteScoreWeight = (whiteScoreWeight or 1) * 0.1

	local specname = ItemScore.rules[class][spec].name
	if ZGV.IsRetail then 
		_, specname = GetSpecializationInfo(spec)
	end

	return itemtypes,stats,primary,caps,whiteScoreWeight,specname
end

function ItemScore:SetStatWeights(playerclass,playerspec,playerlevel)
	local character = ItemScore.altDB[self.playername]
	self.character = character

	self.playerclass = playerclass or character.class
	self.playerclassName = character.classname
	self.playerclassNum = character.classnum
	self.playerlevel = playerlevel or ((ZGV.db.char.fakelevel or 0)>0 and ZGV.db.char.fakelevel) or character.level
	self.playerfaction = UnitFactionGroup("player")
	
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		self.playeristank = self.playerclass=="DRUID" or self.playerclass=="PALADIN" or self.playerclass=="WARRIOR"
		self.playerishealer = self.playerclass=="DRUID" or self.playerclass=="SHAMAN" or self.playerclass=="PRIEST" or self.playerclass=="PALADIN"
		if not ZGV.db.char.gear_active_build then
			local default,_ = next(ItemScore.rules[ItemScore.playerclass])
			ZGV.db.char.gear_selected_build = default
			ZGV.db.char.gear_active_build = default
		end
		ItemScore.Upgrades.BadUpgrades = ZGV.db.char.badupgrade

	end

	if ZGV.IsRetail then
		self.playerspec = playerspec or GetSpecialization() or 1

		self.playerspecName = (select(2,GetSpecializationInfo(self.playerspec)))
		if self.playerspec == 5 then self.playerspecName = "Starter" end

		if not ItemScore.rules[self.playerclass][self.playerspec] then
			self.playerspec = next(ItemScore.rules[self.playerclass])
		end
		ZGV.db.char.gear_selected_class = select(3,UnitClass("player"))
		ZGV.db.char.gear_selected_spec = self.playerspec

		ZGV.db.char.badupgrade[self.playerspec] = ZGV.db.char.badupgrade[self.playerspec] or {}
		ItemScore.Upgrades.BadUpgrades = ZGV.db.char.badupgrade[self.playerspec]
	end

	self.active_set = ZGV.db.char.gear_selected_spec or ZGV.db.char.gear_active_build

	-- create a copy so that the arrays in datatables are left untouched, as we will need them to handle custom weights resets
	-- copy values for currecnt character and all known alts from our rules to have up to date weight
	self.ActiveRuleSets = {}
	for cname,cdata in pairs(ItemScore.altDB) do
		if cdata.class then
			self.ActiveRuleSets[cname] = {}
			for spec,_ in pairs(ItemScore.rules[cdata.class]) do
				local itemtypes,stats,primary,caps,whiteScoreWeight,specname = get_ruleset_for(cname,spec)
				self.ActiveRuleSets[cname][spec] = {
					itemtypes = itemtypes,
					stats = stats,
					primary = primary,
					caps = caps,
					whiteScoreWeight = whiteScoreWeight,
					characterlevel = cdata.level,
					specname = specname
				}
				if cname==self.playername then
					self.character.gear[spec] = self.character.gear[spec] or {}
					self.character.gear[spec].specname = specname

				end
			end
		end
	end

	-- point ActiveRuleSet to generated data for current character
	self.ActiveRuleSet = self.ActiveRuleSets[self.playername][self.active_set]

	-- Set dual wield 
	ItemScore:SetDualWield()

	-- Recalculate gem scores
	ItemScore:ScoreGems()

	-- if anything in user info has changed, all cached scores are no longer valid, and item stats could have changed due to level scaling
	-- wipe cached data, we are starting anew
	table.wipe(ItemCache)

	ItemScore.GearFinder:ClearResults()
end

-- converts ITEM_MOD_CRIT_RATING_SHORT to CRIT
local name_cache = {}
function ItemScore:NormaliseStatName(statname)
	if name_cache[statname] then return name_cache[statname] end

	-- primary and secondary stats
	statname = statname:gsub("_RATING_SHORT$","")
	statname = statname:gsub("_SHORT$","")
	statname = statname:gsub("^ITEM_MOD_","")

	-- tertiary stats
	statname = statname:gsub("^CR_","")

	-- element resist gear
	statname = statname:gsub("_NAME$","")
	
	-- specific case: armor
	if statname=="RESISTANCE0" then statname="ARMOR" end

	name_cache[statname] = statname
	return statname
end

ItemScore.GetItemDetailsQueue = {}
function ItemScore:GetItemDetails(itemlink,callback,force)
	if not itemlink then return false end
	itemlink = strip_link(itemlink)

	if not ItemCache[itemlink] then
		table.insert(ItemScore.GetItemDetailsQueue,{itemlink,callback,force})
	else
		return ItemCache[itemlink]
	end
end

function ItemScore:ItemDetailsHandler()
	if ItemScore.GetItemDetailsQueue[1] then
		local itemlink,callback,force = unpack(table.remove(ItemScore.GetItemDetailsQueue,1))
		local result = ItemScore:GetItemDetailsQueued(itemlink,force)
		if result then
			if callback and type(callback)=="function" then callback(result) end
		else
			table.insert(ItemScore.GetItemDetailsQueue,{itemlink,callback,force})
		end
	end
end

local SKIP_CACHE = false
function ItemScore:GetItemDetailsQueued(itemlink,force)
	if not itemlink then return false end
	local itemlinkfull = itemlink
	itemlink = strip_link(itemlink)
	if not itemlink then return false end

	-- if item is not yet cached, grab its data
	if not ItemCache[itemlink] or SKIP_CACHE or force then
		-- that is a new one
		local itemName,_,itemRarity,_,itemMinLevel,_,_,_,itemEquipLoc,texture,_,itemClassID,itemSubClassID = ZGV:GetItemInfo(itemlink) 
		local itemlvl,_,baseitemlvl = GetDetailedItemLevelInfo(itemlink) 
		if not itemName then return false end

		if itemEquipLoc=="" then -- not equipment, don't bother parsing tooltip
			ItemCache[itemlink] = { 
				stats = {}, 
				itemlink = itemlink,
				itemid = ZGV.ItemLink.GetItemID(itemlink),
				itemlinkfull = itemlinkfull,
				class = itemClassID,
				subclass = itemSubClassID,
				quality = itemRarity,
				validated = false,
				texture = texture,
			}
			return
		end

		-- class, spec check, and level check. we need to scan tooltip for those. meh.

		local playerclass, playerspec
		local tooltip = TS:GetTooltip(itemlink)

		if #tooltip==0 then return false end

		local stats = {}

		-- use blizz GetItemStats to get sockets, since tooltip scanning would only detect empty ones
		local blizzstats = GetItemStats(itemlink)
		if blizzstats then
			for i,v in pairs(blizzstats) do
				if i=="EMPTY_SOCKET_DOMINATION" then stats.EMPTY_SOCKET_DOMINATION = v end
				if i=="EMPTY_SOCKET_PRISMATIC" then stats.EMPTY_SOCKET_PRISMATIC = v end
			end
		end

		for _,line in ipairs(tooltip) do
			local found_class = line:match( gsub(ITEM_CLASSES_ALLOWED,"%%s","(.*)")) 
			if found_class then playerclass = found_class end

			local found_spec = line:match( gsub(ITEM_REQ_SPECIALIZATION,"%%s","(.*)"))
			if found_spec then playerspec = found_spec end
			
			-- gg blizz. some of itemlink from encounter journal report min level 120, even if tooltips states 110. 
			local found_level = line:match( gsub(ITEM_MIN_LEVEL,"%%d","(.*)"))
			if found_level then itemMinLevel = tonumber(found_level) end

			if ZGV.IsRetail then -- early exists are only valid on retail. classic has normal stats as equip: effects
				if line==" " then break end -- empty lines denote end of stats and beggining of extras. 

				-- we reached enchancement or triggered effect line, no more stats. 
				if line:match(gsub(ENCHANTED_TOOLTIP_LINE,"%%s","(.*)")) then break end
				if line:match("^"..ITEM_SPELL_TRIGGER_ONEQUIP) then break end
				if line:match("^"..ITEM_SPELL_TRIGGER_ONPROC) then break end
				if line:match("^"..ITEM_SPELL_TRIGGER_ONUSE) then break end
				if line:match("^"..ITEM_SET_BONUS_GRAY) then break end
				if line:match("^"..ITEM_SET_BONUS) then break end
			end

			local socket_bonus = line:match( ITEM_SOCKET_BONUS:gsub("%%s","(.*)"))
			local set_bonus = line:match( ITEM_SET_BONUS_GRAY:gsub("%%s","(.*)"))
			local set2_bonus = line:match( ITEM_SET_BONUS:gsub("%%s","(.*)"))
			if socket_bonus or set_bonus or set2_bonus then line="" end -- skip all extra lines

			local line = line:gsub(ITEM_SPELL_TRIGGER_ONEQUIP.." ",""):lower()
			for _,statdata in pairs(ItemScore.Keywords) do
				for _,regex in ipairs(statdata.regexs) do
					if not stats[statdata.blizz] then
						local sign,value = line:match(regex)
						if sign and not value then value = sign end

						if statdata.boolean and sign then
							value="1"
						end

						if value then
							value = value:gsub(",","")
							if sign=="-" then value=value*(-1) end
							if statdata.multi then
								for _,multiname in ipairs(statdata.multi) do
									stats[multiname] = tonumber(value)
								end
							else
								stats[statdata.blizz] = tonumber(value)
							end
						end
					end
				end
			end
		end

		-- ok, got everything, cache it
		ItemCache[itemlink] = { 
			stats = stats, 
			itemlink = itemlink,
			itemid = ZGV.ItemLink.GetItemID(itemlink),
			itemlinkfull = itemlinkfull,
			minlevel = itemMinLevel,
			type = itemEquipLoc,
			class = itemClassID,
			subclass = itemSubClassID,
			quality = itemRarity,
			validated = false,
			texture = texture,
			itemlvl = itemlvl,
			playerclass = playerclass,
			playerspec = playerspec,
		}

		if ItemScore.SaveTooltip then ItemCache[itemlink].tooltip = tooltip end


		local slot_1, slot_2, twohander = ItemScore:GetValidSlots(ItemCache[itemlink])
		ItemCache[itemlink].slot = slot_1
		ItemCache[itemlink].slot_2 = slot_2
		ItemCache[itemlink].twohander = twohander

	end

	if ItemCache[itemlink] and not (ItemCache[itemlink].itemlinkfull and ItemCache[itemlink].itemlinkfull:match("%[")) then -- in case we get a mangled (stripped) full link, try to rebuild it now
		local itemName,newfulllink = ZGV:GetItemInfo(itemlink) 
		if newfulllink then
			ItemCache[itemlink].itemlinkfull = newfulllink
		end
	end

	return ItemCache[itemlink]
end

-- function ItemScore:GetValidSlots(item) in flavour specific files

-- calculates item score based on item stats and current weights. result is cached
-- params:
--	itemlink - string - item that we are checking
-- return:
--	score - int - -1 or score of given item
--	success - bool - was item scored at all
--	comment - string - description
function ItemScore:GetItemScore(itemlink,verbose)
	local item = ItemScore:GetItemDetails(itemlink)
	if not item then return -1, -1, false, "no info yet" end

	if item.score then return item.score, true, "scored cache ok" end

	item.scores = item.scores or {}
	for name,rulesets in pairs(self.ActiveRuleSets) do
		item.scores[name] = item.scores[name] or {}

		for spec,ruleset in pairs(rulesets) do
			if verbose then table.insert(verbose,("Scoring for |cff00ff00%s %s|r"):format(name, spec))  end
			local stats = item.stats
			local score = 0
			local statweights = ruleset.stats
			local caps = ruleset.caps
			local whiteScoreWeight = ruleset.whiteScoreWeight
			local itemtypes = ruleset.itemtypes
			local playerlevel = ruleset.characterlevel


			-- calculate score based on stats
			for statname,statvalue in pairs(stats) do
				statname = ItemScore:NormaliseStatName(statname)
				local statweight = statweights[statname] or 0

				if caps and caps[statname] then
					local current_rating = ItemScore:GetEquippedStatValue(statname)
					-- reduce value of stats that are already capped, or if player is not at max level
					if (current_rating > caps[statname]) or playerlevel < GetMaxPlayerLevel() then
						statweight = statweight / 2
					end
				end
				
				score = score + statvalue*statweight

				if verbose then table.insert(verbose,("  + |cff00ff00%.1f * %s|r: |cffaaaaaa * %.1f|r = |cffffffff%.1f|r"):format(statvalue,statname, statweight, statvalue*statweight))  end
				
				if statname=="EMPTY_SOCKET_PRISMATIC" then
					local gemscore, gemstat, gemvalue = ItemScore:ScoreSocket(item.itemlvl)
					score = score + gemscore
				end
			end

			-- add dps and armor at minimal weight, unless proper statweights for them exist
			if not statweights.ARMOR then 
				if verbose then table.insert(verbose,("  + |cff00ff00%.1f extra %s|r: |cffaaaaaa * %.1f|r = |cffffffff%.1f|r"):format((item.stats.ARMOR or 0),RESISTANCE0_NAME, whiteScoreWeight, (item.stats.ARMOR or 0)*whiteScoreWeight ))  end
				score = score + (item.stats.ARMOR or 0)*whiteScoreWeight 
			end
			if not statweights.DAMAGE_PER_SECOND then 
				if verbose then table.insert(verbose,("  + |cff00ff00%.1f extra %s|r: |cffaaaaaa * %.1f|r = |cffffffff%.1f|r"):format((item.stats.DAMAGE_PER_SECOND or 0),ITEM_MOD_DAMAGE_PER_SECOND_SHORT, whiteScoreWeight, (item.stats.DAMAGE_PER_SECOND or 0)*whiteScoreWeight ))  end
				score = score + (item.stats.DAMAGE_PER_SECOND or 0)*whiteScoreWeight 
			end

			-- adjust armor weights
			if item.class == Enum.ItemClass.Armor and item.type~="INVTYPE_CLOAK" then
				if verbose then table.insert(verbose,("  ? |cff00ff00Is armor|r"))  end 
				local types = itemtypes
				local subclass = item_armor_types[item.subclass]
				local limit = types[subclass] or 0
				if verbose then table.insert(verbose,("  ? |cff00ff00limit "..limit.." level "..playerlevel.."|r"))  end 
				-- if limit is below 0, item is good only till given level, with 10 level grace
				if limit < 0 then 
					if verbose then table.insert(verbose,("  ? |cff00ff00Has limit|r"))   end
					if playerlevel >= (-limit+10) then
						if verbose then table.insert(verbose,"  ? |cff00ff00Has limit, past grace|r") end  
						-- we are over the 10 level grace period, undervalue heavily. I mean, come on, farm a little...
						score = score * 0.5
					elseif playerlevel >= -limit then
						if verbose then table.insert(verbose,"  ? |cff00ff00Has limit, grace period|r") end  
						 -- we are within grace period, undervalue slightly
						 score = score * 0.9
						-- allows all classes to transition to final armor type after specified level
					end
				end

			end

			-- heirloom protection is now done in upgrades get_upgrade

			-- record scores
			item.scores[name][spec] = score

			if verbose then 
				table.insert(verbose,("score %f"):format(score))
				table.insert(verbose,("comment %s"):format("scored ok"))
			end
		end
	end

	item.score = item.scores[self.playername][self.active_set]

	return item.score, true, "scored ok"
end

-- checks if given item is a heirloom that should be protected
-- params:
--	itemlink - string - item that we are checking
-- return:
--	is_protected - bool - whenever item is heirloom not outleveled by user
--	max_level - int - up to what level this item is valid heirloom
function ItemScore:GetHeirloomInfo(itemlink)
	-- in shadowland heirlooms no longer give exp bonus, so we are not protecting them anymore unless player asks for it
	do return ZGV.db.profile.autogear_keepheirlooms, 60 end

	local item = ItemScore:GetItemDetails(itemlink)
	if not item then return false,0 end
	if item.quality ~= 7 then return false,0 end

	local itemid = item.itemid
	local max_level = 60 -- default for all looms

	-- if it is one of items with hardcoded max levels
	max_level =  ItemScore.FixedLevelHeirloom[itemid] or max_level
		
	for bonus,_ in pairs(ZGV.ItemLink.GetItemBonuses(itemlink)) do
		max_level = math.max(max_level,ItemScore.HeirloomBonuses[tonumber(bonus)])
	end
	
	return self.playerlevel < max_level, max_level
end


-- checks if item can be equipped by player at the moment. result is cached
-- params:
--	itemlink - string
--	future - anything - for checks for future upgrades. if set, level restriction is not checked
--	name - string - optional, check for validity for given character is factionrealm data
--	spec - int - if name is set, defines spec to be tested
-- returns: 
--	is valid - bool - is item valid for current player
--	is future - bool - is item valid for current player in future
--	is final - bool - was validity really checked (and not skipped due to no gii info)
--	comment - string - verbose description of result
function ItemScore:IsValidItem(itemlink, future, name, spec)
	if not itemlink then return false, false, false, "No itemlink" end
	if name and spec and not ItemScore.altDB[name].gear[spec] then return false, false, false, "No alt data/disabled" end

	local item = ItemScore:GetItemDetails(itemlink)
	if not item then return false, false, false, "No info" end

	-- if we are asking about current ruleset, and have it already validated, just return cached
	if item.validated and not name then return item.valid, item.validfuture, true, item.validstatus end

	local ruleset = self.ActiveRuleSet
	local playerspecName = self.playerspecName
	local playerclassName = self.playerclassName
	local playerlevel = self.playerlevel
	if name and spec then
		ruleset = self.ActiveRuleSets[name][spec]
		local cdata = ItemScore.altDB[name]
		playerspecName = cdata.gear[spec].specname
		playerclassName = cdata.classname
		playerlevel = cdata.level
	end


	if not item.slot then 
		item.validated = true
		item.valid = false
		item.validfuture = false
		item.validstatus = "not equipment "..(item.class).." "..(item.subclass)
		return false, false, true, item.validstatus
	end

	local types = ruleset.itemtypes
	if not types then return false, false, false, "No info" end

	-- is something that can be equipped
	local subclass
	if item.class == Enum.ItemClass.Armor then
		subclass = item_armor_types[item.subclass]
	elseif item.class == Enum.ItemClass.Weapon then
		subclass = item_weapon_types[item.subclass]
	else
		item.validated = true
		item.valid = false
		item.validfuture = false
		item.validstatus = "not equipment"
		return false, false, true, "not equipment"
	end

	-- can equip at current level, cloaks are cloth, but valid for all classes
	local useble_since_level = types[subclass] or (item.type=="INVTYPE_CLOAK" and 1)

	if not useble_since_level then
		local validstatus = ("%s is not valid for %s %s"):format(subclass,playerclassName,playerspecName or "")
		if not name then
			item.validated = true
			item.valid = false
			item.validfuture = false
			item.validstatus = validstatus
		end
		return false, false, true, validstatus
	elseif not future and playerlevel < useble_since_level then
		local validstatus = ("required level %d to use"):format(useble_since_level)
		if not name then
			item.validated = true
			item.valid = false
			item.validfuture = true
			item.validstatus = validstatus
		end
		return false, true, true, validstatus
	end

	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		-- do we have skill to use this
		if (subclass~="JEWELERY") and (ItemScore.Skills[subclass] or 0) == 0 then
			local validstatus = "no skill "..subclass
			if not name then
				item.validated = true
				item.valid = false
				item.validfuture = false
				item.validstatus = validstatus
			end
			return false, false, true, validstatus
		end
	end
	
	-- player class
	if item.playerclass then
		local validclass=false
	        for i,v in pairs(ZGV.ExplodeString(", ",item.playerclass)) do
			if v==playerclassName then
				validclass=true
				break
			end
		end

		if not validclass then
			local validstatus = "wrong class"
			if not name then
				item.validated = true
				item.valid = false
				item.validfuture = false
				item.validstatus = validstatus
			end
			return false, false, true, validstatus
		end
	end

	-- player spec
	if item.playerspec and item.playerspec ~= playerspecName then
		local validstatus = "wrong spec"
		if not name then
			item.validated = true
			item.valid = false
			item.validfuture = false
			item.validstatus = validstatus
		end
		return false, false, true, validstatus
	end

	-- player level
	if item.minlevel and item.minlevel > playerlevel then 
		local validstatus = ("required level %d to equip"):format(item.minlevel)
		if not (name or future) then
			item.validated = true
			item.valid = false
			item.validfuture = true
			item.validstatus = validstatus
		end
		return false, true, true, validstatus
	end

	-- if we are here, it means that none of conditions forced early exit. wheeee have an upgrade
	local validstatus = "ok"
	if not name and not future then
		item.validated = true
		item.valid = true
		item.validfuture = true
		item.validstatus = validstatus
	end
	return true, true, true, validstatus
end

-- removes data from gem database that will not be valid for player based on owned expansions
-- executed once, during startup
-- no params
-- no returns
function ItemScore:TrimGemsDatabase()
	if not ZGV.IsRetail then return end
	local expansion = GetExpansionLevel()

	-- remove gems from expansions user does not own
	for expnum,_ in pairs(ItemScore.GemStatsByExp) do
		if expnum>expansion then ItemScore.GemStatsByExp[expnum]=nil end
	end

	for gemrarity,expansions in pairs(ItemScore.GemData) do
		for expnum,_ in pairs(expansions) do
			if expnum>expansion then expansions[expnum]=nil end
		end
	end
end

-- checks gems for best stats (tbc-mop have primary and secondary stats, wod+ only secondary) 
-- then calculates gem budgets scaled to player level and scores them using best stats weight
-- no params
-- no returns
local best_stats = {}
function ItemScore:ScoreGems()
	if not ZGV.IsRetail then return end
	table.wipe(best_stats)

	local statweights = ItemScore.ActiveRuleSet.stats -- TODO SETS
	local playerlevel = ItemScore.playerlevel

	-- get bests stats for gems per expansion
	for expnum,gemstats in pairs(ItemScore.GemStatsByExp) do
		local best_stat, best_weight = nil, 0
		for _,stat in pairs(gemstats) do
			local statweight = statweights[stat] or 0
			if statweight > best_weight then
				best_weight = statweight
				best_stat = stat
			end
		end
		if best_stat then best_stats[expnum] = best_stat end
	end

	-- with known best stat, score gems
	for gemrarity,expansions in pairs(ItemScore.GemData) do
		for expnum,gemdata in pairs(expansions) do
			local point_value
			for lvl,point in pairs(gemdata.points) do
				if playerlevel>=lvl then point_value=point end
			end
			gemdata.gemValue = point_value
			gemdata.gemStat = best_stats[expnum]
			gemdata.gemScore = (statweights[best_stats[expnum]] or 0)*point_value
		end
	end
end

-- checks what the best gem can be socketed into item of given itemlevel
-- params
--	ilvl - int - item level we are checking for
-- returns
--	score - int - score of found gem
--	stat - string - name of stat we suggest
--	value - int - how many points gem gives
local stat_display_names = {
	STAMINA = _G.ITEM_MOD_STAMINA_SHORT, 
	MASTERY = _G.ITEM_MOD_MASTERY_RATING_SHORT,  
	VERSATILITY = _G.ITEM_MOD_VERSATILITY,
	HASTE = _G.ITEM_MOD_HASTE_RATING_SHORT, 
	CRIT = _G.ITEM_MOD_CRIT_RATING_SHORT,
	STRENGTH = _G.ITEM_MOD_STRENGTH_SHORT, 
	AGILITY = _G.ITEM_MOD_AGILITY_SHORT, 
	INTELLECT = _G.ITEM_MOD_INTELLECT_SHORT, 
}

function ItemScore:ScoreSocket(itemlevel)
	local bestValue, bestStat, bestScore = 0,"",0
	for gemrarity,expansions in pairs(ItemScore.GemData) do
		if ZGV.db.profile.gear_maxGem>=gemrarity then
			for expnum,gemdata in pairs(expansions) do
				if itemlevel>=gemdata.ilvl then
					if gemdata.gemScore > bestScore then
						bestValue = gemdata.gemValue
						bestStat = stat_display_names[gemdata.gemStat]
						bestScore = gemdata.gemScore
					end
				end
			end
		end
	end

	return  bestScore, bestStat, bestValue
end

-- returns items equipped by requested type, used by items-quest
-- params:
--	equiptype - int - invtype constant of type to check
-- returns
--	itemlink - string - itemlink of item in first possible slot
--	itemlink2 - string, optional - itemlink of item in second possible slot
function ItemScore:GetItemByType(equiptype)
	local s1, s2 = get_slots_by_type(equiptype)

	local itemlink1,itemlink2
	if s1 then itemlink1 = GetInventoryItemLink("player",s1) end
	if s2 then itemlink2 = GetInventoryItemLink("player",s2) end

	return itemlink1 and itemlink1:match("item[:%d]+"),itemlink2 and itemlink2:match("item[:%d]+"), itemlink1,itemlink2
end

-- returns items equipped in requested type, used by pointer
-- params:
--	slotid - int - invslot constant
-- returns
--	itemlink - string - itemlink of item in given slot
--	itemid - string - itemid of item in given slot
function ItemScore:GetItemInSlot(slotid)
	local itemlink = GetInventoryItemLink("player",slotid)
	if itemlink then
		return itemlink:match("item[:%d]+"), tonumber(itemlink:match("item:(%d+)"))
	end
end

-- gets verbose list of azerite powers on given item
-- params:
--	itemlink - string
-- returns
--	tooltip_array - array - list of lines
local azeritable_slots = {INVSLOT_HEAD, INVSLOT_SHOULDER, INVSLOT_CHEST}
local tooltip_array = {}
local TRAIT_LOCKED = "|cff808080"
local TRAIT_INACTIVE = "|cffA0A0A0"
local TRAIT_ACTIVE = "|cffffa100"

function ItemScore:GetAzeritePowers(itemlink)
	table.wipe(tooltip_array)
	if not ZGV.db.profile.itemscore_tooltips_azerite then return tooltip_array,false end
  	if not itemlink then return tooltip_array,false end

	if not C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID(itemlink) then return tooltip_array,false end
	local location, power
	local power_location = C_AzeriteItem.FindActiveAzeriteItem()
	if power_location then
		power = C_AzeriteItem.GetPowerLevel(power_location)
	else
		power = -1
	end

	-- is it an item in inventory
	if not location then
		for _,slot in pairs (azeritable_slots) do
			local inventoryItemLink = GetInventoryItemLink("player", slot)
			if inventoryItemLink == itemlink then
				location = ItemLocation:CreateFromEquipmentSlot(slot)
				break
			end
		end
	end
	
	-- is it an item in bags or bank
	if not location then
		for cont = 0,  NUM_BAG_SLOTS + GetNumBankSlots() do
			for slot = 1, C_Container.GetContainerNumSlots(cont) do
				local itemInfo = C_Container.GetContainerItemInfo(cont, slot);
				if itemInfo and itemlink == itemInfo.hyperlink then
					location = ItemLocation:CreateFromBagAndSlot(cont, slot)
					break
				end
			end
		end
	end

	local powers_list = C_AzeriteEmpoweredItem.GetAllTierInfoByItemID(itemlink)
	if not (powers_list and powers_list[1] and powers_list[1]["azeritePowerIDs"] and powers_list[1]["azeritePowerIDs"][1]) then return tooltip_array,false end

	local icon_format_string = "|T%d:15:15:0:0:64:64:4:60:4:60:%d:%d:%d|t %s%s|r " -- texture, alpha, alpha, alpha, color, name

	local current_tier
	for tierindex,tierdata in ipairs(powers_list) do
		if not current_tier then current_tier=tierindex end
		local required = tierdata.unlockLevel
		local out = ""
		local powercount = 0
		for powerindex, powerid in pairs(tierdata.azeritePowerIDs) do
			if powerid==13 then -- inner ring, and active. early exit
				return tooltip_array,true
			end

			local powerinfo = C_AzeriteEmpoweredItem.GetPowerInfo(powerid)
			local powerspell, powername
			local active = false
			local _,powericon
  			if powerinfo then
				powercount = powercount + 1
    				powerspell = powerinfo["spellID"]
				powername,_,powericon = GetSpellInfo(powerspell)
				if location then
					active = C_AzeriteEmpoweredItem.IsPowerSelected(location, powerid)
				end

				if powerindex==1 then
					table.insert(tooltip_array,"\nTier "..tierindex)
				end
				
				local color = TRAIT_INACTIVE
				local alpha = 150
				if required>power then
					color = TRAIT_LOCKED
				elseif active then
					color = TRAIT_ACTIVE
					alpha = 255
				end


				out = out..icon_format_string:format(powericon,alpha,alpha,alpha,color,powername)
				if powercount==2 then
					table.insert(tooltip_array,out)
					out=""
				end
			end
		end
		table.insert(tooltip_array,out)
  	end
	return tooltip_array,true
end


-- set of functions to add zygor item info to tooltip
local function get_change(old,new) 
	if old and old>0 then 
		return math.floor(((new*100/old)-100)*100)/100
	else 
		return 100 
	end 
end

local function ItemScore_SetTooltipData(tooltip)

	if not ZGV.db.profile.autogear then return end
	if not ZGV.db.profile.itemscore_tooltips then return end
	tooltip = tooltip or GameTooltip -- we patch either gametooltip or itemreftooltip

	-- check for early exit if it is a tooltip for ah bucket list
	local tooltipname = tooltip:GetName()
	for i=1,50 do
		local line = _G[tooltipname.."TextLeft"..i]
		if line and line:GetText() then
			if ZGV.IsRetail and line:GetText():match(AUCTION_HOUSE_BUCKET_VARIATION_EQUIPMENT_TOOLTIP) then return end
		else
			break
		end
	end

	if not ItemScore.TooltipPatched then
		if not tooltip.GetItem then return end
		local itemName,itemlink = tooltip:GetItem()
		if not itemlink then ItemScore.TooltipPatched  = true return end

		local item = ItemScore:GetItemDetails(itemlink,"temporary") -- temporary item data will be purged 60 seconds after we are done with tooltip
		if not item then ItemScore.TooltipPatched  = true return end

		local fulllink = itemlink
		local itemlink = item.itemlink

		local score, success, scorecomment = ItemScore:GetItemScore(itemlink)
		if not success then ItemScore.TooltipPatched  = true return end

		local valid, validfuture, final, validcomment = ItemScore:IsValidItem(itemlink,"future")
		if not final then ItemScore.TooltipPatched  = true return end

		local heirloom_protected,heirloom_max = ItemScore:GetHeirloomInfo(itemlink)
		
		if ZGV.db.profile.debug_display then
			tooltip:AddLine(" ")
			tooltip:AddLine("|cfffe6100Zygor debug:|r ")
			tooltip:AddLine("link "..fulllink)
			tooltip:AddLine("stripped "..itemlink)
			tooltip:AddLine("score "..score)
			tooltip:AddLine("valid "..(valid and "yes " or "no ")..validcomment)
			tooltip:AddLine("protected heirloom "..(heirloom_protected and "yes " or "no ")..heirloom_max)
			tooltip:AddLine("stats:")
			for i,v in pairs(item.stats) do
				tooltip:AddLine(i.." "..v)
			end
		end
		
		local slot_1,slot_2 = item.slot, item.slot_2
		local equipped_item_1, equipped_item_2, change_1, change_2
		if slot_1 then 
			equipped_item_1 = ItemScore.Upgrades.EquippedItems[slot_1]
			if equipped_item_1 and ItemScore:IsValidItem(equipped_item_1.itemlink) then
				change_1 = get_change(equipped_item_1.artifactscore or equipped_item_1.score,score)
			else
				change_1 = 100
			end
		end
		if slot_2 then 
			equipped_item_2 = ItemScore.Upgrades.EquippedItems[slot_2] 
			if equipped_item_1 and ItemScore:IsValidItem(equipped_item_1.itemlink) then
				change_2 = get_change(equipped_item_2.artifactscore or equipped_item_2.score,score)
			else
				change_2 = 100
			end
		end

		if valid or validfuture then
			local futureprefix = not valid and validfuture and "Future " or ""
			local futuresuffix = ""
			if not valid and validfuture and item.minlevel then
				futuresuffix = "|r in "..(item.minlevel - ItemScore.playerlevel).." levels"
			end

			if (equipped_item_1 and equipped_item_1.score) or (equipped_item_2 and equipped_item_2.score) and score then -- item can replace something
				local mh, oh, th
				if item.class == Enum.ItemClass.Weapon then
					ItemScore.Upgrades:ResetWeaponQueue("onlytemp")
					ItemScore.Upgrades:QueueWeapon(itemlink)
					mh, oh, th = ItemScore.Upgrades:ProcessWeaponQueue()
				end

				tooltip:AddLine(" ")
				tooltip:AddLine("|cfffe6100Zygor ItemScore:|r")
				local slotinfo1 = slot_2 and "Slot 1: " or ""
				local slotinfo2 = slot_2 and "Slot 2: " or ""

				-- item in slot 1
				if equipped_item_1.score then
					if itemlink~=equipped_item_1.itemlink then
						local comment = "|r " .. slotinfo1 .. futureprefix .. ((change_1 > 0) and "Upgrade |cff00ff00" or "Downgrade |cffff0000")
						if ZGV.db.profile.debug then comment = comment..(score-equipped_item_1.score).." " end
						comment = comment  .. futuresuffix
						tooltip:AddLine(comment..change_1.."% ")
						if change_1<0 and (mh and mh.itemlink==itemlink) and (oh and oh.itemlink) then
							tooltip:AddLine("       Upgrade with " .. oh.itemlinkfull)
						end
					else
						tooltip:AddLine("|r "..slotinfo1.."Equipped")
					end
				else
					tooltip:AddLine("|r " .. slotinfo1 .. futureprefix .. "Upgrade |cff00ff00100% " .. futuresuffix)
				end

				if slot_2 and equipped_item_2.score then
					if itemlink~=equipped_item_2.itemlink then
						local comment = "|r " .. slotinfo2 .. futureprefix .. ((change_2 > 0) and "Upgrade |cff00ff00" or "Downgrade |cffff0000")
						if ZGV.db.profile.debug then comment = comment..(score-equipped_item_2.score).." " end
						comment = comment  .. futuresuffix
						tooltip:AddLine(comment..change_2.."% ")
						if change_2<0 and (mh and mh.itemlink) and (oh and oh.itemlink==itemlink) then
							tooltip:AddLine("       Upgrade with " .. mh.itemlinkfull)
						end
					else
						tooltip:AddLine("|r " .. slotinfo2 .. "Equipped")
					end
				elseif slot_2 then
					tooltip:AddLine("|r " .. slotinfo2 .. futureprefix .. "Upgrade |cff00ff00100% " .. futuresuffix)
				end
			elseif (score or 0)>0 then
				tooltip:AddLine(" ")
				tooltip:AddLine("|cfffe6100Zygor ItemScore:|r")
				tooltip:AddLine("|r  " .. futureprefix .. "Upgrade |cff00ff00100% " .. futuresuffix)
			end
			for statname,statvalue in pairs(item.stats) do
				if statname=="EMPTY_SOCKET_PRISMATIC" then
					local gemscore, gemstat, gemvalue = ItemScore:ScoreSocket(item.itemlvl)
					if gemscore>0 then
						tooltip:AddLine("|cfffe6100Suggested gem: |r" .. gemvalue .. " " .. gemstat)
					end
					break
				end
			end
		else
			if item.type~="" then
				tooltip:AddLine(" ")
				tooltip:AddLine("|cfffe6100Zygor ItemScore:|r")
				if ZGV.IsRetail then
					tooltip:AddLine("|r  Not a valid item for "..ItemScore.playerspecName)
				else
					tooltip:AddLine("|r  Not a valid item")
				end
			end
		end

		local upgradealt,alts = ItemScore.Upgrades:IsUpgradeForAlt(itemlink)
		if upgradealt then
			tooltip:AddLine("|r  Is upgrade for: " .. table.concat(alts,","))
		end
		local upgradeoffspec,specs = ItemScore.Upgrades:IsUpgradeForOffspec(itemlink) 
		if upgradeoffspec then
			tooltip:AddLine("|r  Is upgrade for offspec: " .. table.concat(specs,", "))
		end

		if ZGV.IsRetail then
			local tooltip_data,success = ItemScore:GetAzeritePowers(fulllink)
			if success then
				tooltip:AddLine(" ")
				tooltip:AddLine("|cfffe6100Azerite Powers:|r")
				for _,line in ipairs(tooltip_data) do
					tooltip:AddLine(line)
				end
			end
		end

		ItemScore.TooltipPatched  = true
	end
	if tooltip==ItemRefTooltip then ItemRefTooltip:Show() end -- update to new height, have to do it by hand since IRT is called just once
end
local function ItemScore_ClearTooltipData(tooltip, ...) ItemScore.TooltipPatched = false end

-- functions that support itemscore/gearfinder options panel
function ItemScore:UsesCustomWeights(class,spec)
	local statset = ZGV.ItemScore.rules[class][spec].stats
	local prefix = spec..'_'
	local profile = ItemScore.altDB[self.playername].statweights

	for index=1,#ZGV.ItemScore.Keywords do
		local statname = ZGV.ItemScore.Keywords[index].blizz

		if not profile[prefix..statname] and statset[statname] then
			-- good, no override for this		
		elseif tonumber(profile[prefix..statname]) and not statset[statname] then
			return true
		elseif tonumber(profile[prefix..statname]) and tonumber(statset[statname])~=tonumber(profile[prefix..statname]) then
			return true
		end
	end
	return false
end

ItemScore.Skills = {}
function ItemScore:GetEquipmentSkills()
	if ZGV.IsRetail then return end

	table.wipe(ItemScore.Skills)
	table.wipe(ItemCache) -- since items that were rejected due to skill may be valid now

	for i=1, GetNumSkillLines() do
		local skillName, _, _, skillRank, numTempPoints, skillModifier, skillMaxRank, isAbandonable, stepCost, rankCost, minLevel, skillCostType = GetSkillLineInfo(i);
		local skillTag = ItemScore.SkillNamesRev[skillName]
		if skillTag then
			ItemScore.Skills[skillTag] = skillRank
		end
	end
end

function ItemScore:GetEquippedStatValue(statname)
	local result = 0
	for slotID,item in pairs(ZGV.ItemScore.Upgrades.EquippedItems) do 
		local details = ItemScore:GetItemDetails(item.itemlink)
		if details then
			for sname,svalue in pairs(details.stats) do
				local name = ItemScore:NormaliseStatName(sname)
				if name==statname then
					result = result + svalue
				end
			end
		end
	end
	return result
end


function ItemScore:ImportPawn(datastring)
	if not datastring then return end
	local unknowns = false

	if not datastring:find("Pawn: v1:") then 
		ZGV:Print("Import: Incorrect pawn string") 
		return
	end

	datastring = datastring:gsub(" [)]",""):gsub("(.*): ","")

	local stattable = {}
	for statstring in string.gmatch(datastring, "([^,]+)") do
		local statname,statval = statstring:match("(%w+)=([-0-9%.]+)")
		if statname and statval then
			stattable[statname] = (tonumber(statval)~=0 and statval or nil)
		end
	end

	for statname,statval in pairs(stattable) do
		if not ItemScore.Gear_PawnToZygor[statname] and not ItemScore.KeywordsPawnToRules[statname] then
			unknowns = true
			stattable[statname]=nil
		end
	end

	if unknowns then
		ZGV:Print("Import: Some of Pawn stat names are not supported by Zygor, and have been skipped.") 
	end


	local name,tag,id = GetClassInfo(ZGV.db.char.gear_selected_class)
	local playerstatweights = ItemScore.altDB[self.playername].statweights

	-- user unset the stat, don't show
	local groupname = ZGV.db.char.gear_selected_spec.."_"

	for index,stat in pairs(ZGV.ItemScore.Keywords) do -- wipe
		playerstatweights[groupname..stat.blizz] = nil
	end

	for statname,statval in pairs(stattable) do
		if not ItemScore.Gear_PawnToZygor[statname] then
			playerstatweights[groupname..ItemScore.KeywordsPawnToRules[statname]] = statval
		end
	end
end

function ItemScore:ExportPawn(datastring)
	local class, spec = ZGV.db.char.gear_selected_class, ZGV.db.char.gear_selected_spec
	local name,tag,id = GetClassInfo(class)
	local specname = ZGV.SpecByNumber[tag][spec] -- values taken from parser.lua classtalents
	local ruleset = ItemScore.rules[tag][spec]

	local returnstring = '( Pawn: v1: "Zygor: '
	returnstring = returnstring..name..' '..specname..'": '

	local data = {}

	--[[
	for namez,namep in pairs(ItemScore.Gear_ZygorToPawn) do
		if not ruleset.itemtypes[namez] then
			table.insert(data,namep.."=-1000000")
		else
			table.insert(data,namep.."="..ruleset.itemtypes[namez])
		end
	end
	--]]

	local groupname = ZGV.db.char.gear_selected_spec.."_"
	local playerstatweights = ItemScore.altDB[self.playername].statweights
	for index,stat in pairs(ZGV.ItemScore.Keywords) do
		local value = playerstatweights[groupname..(stat.blizz)] or ruleset.stats[stat.blizz]
		if tonumber(value) then
			table.insert(data,stat.pawn.."="..value)
		end
	end
	
	returnstring = returnstring.." "..table.concat(data, ", ") 
	returnstring = returnstring..")"

	ZGV.ItemScore.lastPawnString = returnstring
end

tinsert(ZGV.startups,{"ItemScore",function(self)
	ItemScore:SetData()
	ItemScore:Initialise()
	ItemScore.GearFinder:Initialise()

	ItemScore.Upgrades.AltsQueue = ZGV.db.char.altqueue
	ItemScore.Upgrades:ScoreEquippedItems()
	ItemScore.Upgrades:ScanBagsForUpgradesForAlts()

	if GameTooltip:HasScript("OnTooltipSetItem") then
		GameTooltip:HookScript("OnTooltipSetItem", ItemScore_SetTooltipData)
	else
		-- possible taint
		TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, ItemScore_SetTooltipData)
	end
	GameTooltip:HookScript("OnTooltipCleared", ItemScore_ClearTooltipData)
	ItemRefTooltip:HookScript("OnTooltipCleared", ItemScore_ClearTooltipData)

	--hooksecurefunc (GameTooltip, "SetHyperlink", function(tip) ItemScore_SetTooltipData(tip,GameTooltip) end)
	--hooksecurefunc (ItemRefTooltip, "SetHyperlink", function(tip) ItemScore_SetTooltipData(tip,ItemRefTooltip) end)
end})