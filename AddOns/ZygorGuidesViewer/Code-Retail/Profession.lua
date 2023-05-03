-- GLOBAL debug,ZygorGuidesViewer
if debug then
	ZygorGuidesViewer={startups={}}
	ZygorGuidesViewer_L=function() end
	GetLocale=function() return "enUS" end
	tinsert=table.insert
	ERR_LEARN_RECIPE_S = "Learn %s"
	hooksecurefunc=function() end
end

local name,ZGV = ...


ZGV.Professions = {}
local ZGVP = ZGV.Professions

local faction=UnitFactionGroup("player")  --maybe?

ZGVP.tradeskills = {
	[171] = {name="Alchemy",crafting=true,subs={
		[1582] = {name="Dragon Isles Alchemy", skill=2823},
		[1294] = {name="Shadowlands Alchemy", skill=2750},
		[592] = {name="Zandalari Alchemy", skill=2478},
		[433] = {name="Legion Alchemy", skill=2479},
		[332] = {name="Draenor Alchemy", skill=2480},
		[596] = {name="Pandaria Alchemy", skill=2481},
		[598] = {name="Cataclysm Alchemy", skill=2482},
		[600] = {name="Northrend Alchemy", skill=2483},
		[602] = {name="Outland Alchemy", skill=2484},
		[604] = {name="Alchemy", skill=2485},
	}},
	[164] = {name="Blacksmithing",crafting=true,subs={
		[1566] = {name="Dragon Isles Blacksmithing", skill=2822},
		[1311] = {name="Shadowlands Blacksmithing", skill=2751},
		[542] = {name="Zandalari Blacksmithing", skill=2437},
		[426] = {name="Legion Blacksmithing", skill=2454},
		[389] = {name="Draenor Blacksmithing", skill=2472},
		[553] = {name="Pandaren Blacksmithing", skill=2473},
		[569] = {name="Cataclysm Blacksmithing", skill=2474},
		[577] = {name="Northrend Blacksmithing", skill=2475},
		[584] = {name="Outland Blacksmithing", skill=2476},
		[590] = {name="Blacksmithing", skill=2477},
	}},
	[333] = {name="Enchanting",crafting=true,subs={
		[1588] = {name="Dragon Isles Enchanting", skill=2825},
		[1364] = {name="Shadowlands Enchanting", skill=2753},
		[647] = {name="Zandalari Enchanting", skill=2486},
		[443] = {name="Legion Enchanting", skill=2487},
		[348] = {name="Draenor Enchanting", skill=2488},
		[656] = {name="Pandaria Enchanting", skill=2489},
		[661] = {name="Cataclysm Enchanting", skill=2491},
		[663] = {name="Northrend Enchanting", skill=2492},
		[665] = {name="Outland Enchanting", skill=2493},
		[667] = {name="Enchanting", skill=2494},
	}},
	[202] = {name="Engineering",crafting=true,subs={
		[1595] = {name="Dragon Isles Engineering", skill=2827},
		[1381] = {name="Shadowlands Engineering", skill=2755},
		[709] = {name="Zandalari Engineering", skill=2499},
		[469] = {name="Legion Engineering", skill=2500},
		[347] = {name="Draenor Engineering", skill=2501},
		[713] = {name="Pandaria Engineering", skill=2502},
		[715] = {name="Cataclysm Engineering", skill=2503},
		[717] = {name="Northrend Engineering", skill=2504},
		[719] = {name="Outland Engineering", skill=2505},
		[419] = {name="Engineering", skill=2506},
	}},
	[773] = {name="Inscription",crafting=true,subs={
		[1592] = {name="Dragon Isles Inscription", skill=2828},
		[1406] = {name="Shadowlands Inscription", skill=2756},
		[759] = {name="Zandalari Inscription", skill=2507},
		[450] = {name="Legion Inscription", skill=2508},
		[410] = {name="Draenor Inscription", skill=2509},
		[763] = {name="Pandaria Inscription", skill=2510},
		[765] = {name="Cataclysm Inscription", skill=2511},
		[767] = {name="Northrend Inscription", skill=2512},
		[769] = {name="Outland Inscription", skill=2513},
		[415] = {name="Inscription", skill=2514},
	}},
	[755] = {name="Jewelcrafting",crafting=true,subs={
		[1593] = {name="Dragon Isles Jewelcrafting", skill=2829},
		[1418] = {name="Shadowlands Jewelcrafting", skill=2757},
		[805] = {name="Zandalari Jewelcrafting", skill=2517},
		[464] = {name="Legion Jewelcrafting", skill=2518},
		[373] = {name="Draenor Jewelcrafting", skill=2519},
		[809] = {name="Pandaria Jewelcrafting", skill=2520},
		[811] = {name="Cataclysm Jewelcrafting", skill=2521},
		[813] = {name="Northrend Jewelcrafting", skill=2522},
		[815] = {name="Outland Jewelcrafting", skill=2523},
		[372] = {name="Jewelcrafting", skill=2524},
	}},
	[165] = {name="Leatherworking",crafting=true,subs={
		[1587] = {name="Dragon Isles Leatherworking", skill=2830},
		[1334] = {name="Shadowlands Leatherworking", skill=2758},
		[871] = {name="Zandalari Leatherworking", skill=2525},
		[460] = {name="Legion Leatherworking", skill=2526},
		[380] = {name="Draenor Leatherworking", skill=2527},
		[876] = {name="Pandaria Leatherworking", skill=2528},
		[878] = {name="Cataclysm Leatherworking", skill=2529},
		[880] = {name="Northrend Leatherworking", skill=2530},
		[882] = {name="Outland Leatherworking", skill=2531},
		[379] = {name="Leatherworking", skill=2532},
	}},
	[197] = {name="Tailoring",crafting=true,subs={
		[1591] = {name="Dragon Isles Tailoring", skill=2831},
		[1395] = {name="Shadowlands Tailoring", skill=2759},
		[942] = {name="Zandalari Tailoring", skill=2533},
		[430] = {name="Legion Tailoring", skill=2534},
		[369] = {name="Draenor Tailoring", skill=2535},
		[950] = {name="Pandaria Tailoring", skill=2536},
		[952] = {name="Cataclysm Tailoring", skill=2537},
		[954] = {name="Northrend Tailoring", skill=2538},
		[956] = {name="Outland Tailoring", skill=2539},
		[362] = {name="Tailoring", skill=2540},
	}},
	[182] = {name="Herbalism",subs={
		[1594] = {name="Dragon Isles Herbalism", skill=2832},
		[1441] = {name="Shadowlands Herbalism", skill=2760},
		[1029] = {name="Zandalari Herbalism", skill=2549},
		[456] = {name="Legion Herbalism", skill=2550},
		[1034] = {name="Draenor Herbalism", skill=2551},
		[1036] = {name="Pandaria Herbalism", skill=2552},
		[1038] = {name="Cataclysm Herbalism", skill=2553},
		[1040] = {name="Northrend Herbalism", skill=2554},
		[1042] = {name="Outland Herbalism", skill=2555},
		[1044] = {name="Herbalism", skill=2556},
	}},
	[186] = {name="Mining",crafting=true,subs={
		[1584] = {name="Dragon Isles Mining", skill=2833},
		[1320] = {name="Shadowlands Mining", skill=2761},
		[1065] = {name="Zandalari Mining", skill=2565},
		[425] =  {name="Legion Mining", skill=2566},
		[1068] =  {name="Draenor Mining", skill=2567},
		[1070] = {name="Pandaria Mining", skill=2568},
		[1072] = {name="Cataclysm Mining", skill=2569},
		[1074] = {name="Northrend Mining", skill=2570},
		[1076] = {name="Outland Mining", skill=2571},
		[1078] = {name="Mining", skill=2572},
	}},
	[393] = {name="Skinning",subs={
		[1586] = {name="Dragon Isles Skinning", skill=2834},
		[1331] = {name="Shadowlands Skinning", skill=2762},
		[1046] = {name="Zandalari Skinning", skill=2557},
		[459] = {name="Legion Skinning", skill=2558},
		[1050] = {name="Draenor Skinning", skill=2559},
		[1052] = {name="Pandaria Skinning", skill=2560},
		[1054] = {name="Cataclysm Skinning", skill=2561},
		[1056] = {name="Northrend Skinning", skill=2562},
		[1058] = {name="Outland Skinning", skill=2563},
		[1060] = {name="Skinning", skill=2564},
	}},
	[794] = {name="Archaeology",subs={ -- needs special handling
		[794] = {name="Archaeology", skill=794},
	}},
	[185] = {name="Cooking",crafting=true,subs={
		[1585] = {name="Dragon Isles Cooking", skill=2824},
		[1323] = {name="Shadowlands Cooking", skill=2752},
		[1118] = {name="Zandalari Cooking", skill=2541},
		[475] = {name="Legion Cooking", skill=2542},
		[342] = {name="Draenor Cooking", skill=2543},
		[90] = {name="Pandaria Cooking", skill=2544},
		[75] = {name="Cataclysm Cooking", skill=2545},
		[74] = {name="Northrend Cooking", skill=2546},
		[73] = {name="Outland Cooking", skill=2547},
		[72] = {name="Cooking", skill=2548},
		[64] = {name="Way of the Grill", skill=975},
		[65] = {name="Way of the Wok", skill=976},
		[66] = {name="Way of the Pot", skill=977},
		[67] = {name="Way of the Steamer", skill=978},
		[68] = {name="Way of the Oven", skill=979},
		[69] = {name="Way of the Brew", skill=980},
	}},
	[356] = {name="Fishing",subs={
		[1590] = {name="Dragon Isles Fishing", skill=2826},
		[1391] = {name="Shadowlands Fishing", skill=2754},
		[1114] = {name="Zandalari Fishing", skill=2585},
		[1112] = {name="Legion Fishing", skill=2586},
		[1110] = {name="Draenor Fishing", skill=2587},
		[1108] = {name="Pandaria Fishing", skill=2588},
		[1106] = {name="Cataclysm Fishing", skill=2589},
		[1104] = {name="Northrend Fishing", skill=2590},
		[1102] = {name="Outland Fishing", skill=2591},
		[1100] = {name="Fishing", skill=2592},
	}},
	[762] = {name="Riding",subs={
		[762] = {name="Riding", skill=762},
	}}
}

ZGVP.skillLocale = {
	[164]={deDE="Schmiedekunst",esES="Herrería",frFR="Forge",ptBR="Ferraria",ruRU="Кузнечное дело"},
	[165]={deDE="Lederverarbeitung",esES="Peletería",frFR="Travail du cuir",ptBR="Couraria",ruRU="Кожевничество"},
	[171]={deDE="Alchemie",esES="Alquimia",frFR="Alchimie",ptBR="Alquimia",ruRU="Алхимия"},
	[182]={deDE="Kräuterkunde",esES="Herboristería",frFR="Herboristerie",ptBR="Herborismo",ruRU="Травничество"},
	[185]={deDE="Kochkunst",esES="Cocina",frFR="Cuisine",ptBR="Culinária",ruRU="Кулинария"},
	[186]={deDE="Bergbau",esES="Minería",frFR="Minage",ptBR="Mineração",ruRU="Горное дело"},
	[197]={deDE="Schneiderei",esES="Sastrería",frFR="Couture",ptBR="Alfaiataria",ruRU="Портняжное дело"},
	[202]={deDE="Ingenieurskunst",esES="Ingeniería",frFR="Ingénierie",ptBR="Engenharia",ruRU="Инженерное дело"},
	[333]={deDE="Verzauberkunst",esES="Encantamiento",frFR="Enchantement",ptBR="Encantamento",ruRU="Наложение чар"},
	[356]={deDE="Angeln",esES="Pesca",frFR="Pêche",ptBR="Pesca",ruRU="Рыбная ловля"},
	[393]={deDE="Kürschnerei",esES="Desuello",frFR="Dépeçage",ptBR="Esfolamento",ruRU="Снятие шкур"},
	[755]={deDE="Juwelenschleifen",esES="Joyería",frFR="Joaillerie",ptBR="Joalheria",ruRU="Ювелирное дело"},
	[762]={deDE="Reiten",esES="Equitación",frFR="Monte",ptBR="Montaria",ruRU="Верховая езда"},
	[773]={deDE="Inschriftenkunde",esES="Inscripción",frFR="Calligraphie",ptBR="Escrivania",ruRU="Начертание"},
	[794]={deDE="Archäologie",esES="Arqueología",frFR="Archéologie",ptBR="Arqueologia",ruRU="Археология"},
} -- GETS TRIMMED.
for id,data in pairs(ZGVP.skillLocale) do ZGVP.skillLocale[id]=data[GetLocale()] end

ZGV.Professions.LocaleSkills={}
setmetatable(ZGV.Professions.LocaleSkills,{__index=function(t,skill) return ZGV.Professions.skillLocale[ZGVP.tradeskillsIdByName[skill] or 0] or skill end})
ZGV.Professions.LocaleSkillsR={}
setmetatable(ZGV.Professions.LocaleSkillsR,{__index=function(t,q) return q end})

-- add parent info to subskills
for id,data in pairs(ZGVP.tradeskills) do 
	for sid,sdata in pairs(data.subs) do
		sdata.parent=id
	end
end


-- Map ids by english names
ZGVP.tradeskillsIdByName = {}
for id,data in pairs(ZGVP.tradeskills) do 
	ZGVP.tradeskillsIdByName[data.name] = id 
	for sid,sdata in pairs(data.subs) do
		if faction=="Alliance" then sdata.name = sdata.name:gsub("Zandalari ","Kul Tiran ") end
		ZGVP.tradeskillsIdByName[sdata.name] = sid 
	end
end

function ZGV:CacheSkills()
	if ZGVP.CS_Timer then ZGV:CancelTimer(ZGVP.CS_Timer) end
	ZGVP.CS_Timer = ZGV:ScheduleTimer(function() 
		ZGV:CacheSkills_Queued()
	end, 1)
end

local cacheskill_profs = {}
local cacheskill_lines = {}
local cacheskill_core = {}
function ZGV:CacheSkills_Queued()
	local current_time = debugprofilestop()
	if (current_time - (ZGV.last_cached_skills or 0)) < 1000 then return end

	ZGV.last_cached_skills = current_time	

	-- reset goldguide crafting skill knowledge
	local Goldguide = ZGV.Goldguide
	if Goldguide then Goldguide.knows_crafting = false end

	-- update tradeskill knowledge
	table.wipe(cacheskill_lines)
	table.wipe(cacheskill_profs)
	table.wipe(cacheskill_core)
	cacheskill_profs.prof1, cacheskill_profs.prof2, cacheskill_profs.arch, cacheskill_profs.fish, cacheskill_profs.cook, cacheskill_profs.firstAid = GetProfessions()

	for i,prof in pairs(cacheskill_profs) do
		-- core skills
		local name, icon, rank, maxRank, numSpells, spelloffset, skillline, rankModifier, specializationIndex, specializationOffset, skillLineName = GetProfessionInfo(prof)

		if Goldguide and ZGVP.tradeskills[skillline] and ZGVP.tradeskills[skillline].crafting then Goldguide.knows_crafting = true end-- this is a crafting skill, mark for gold guide that user can craft something

		if skillline == 794 then -- archeology special handling as it is not visible using C_TradeSkillUI.GetCategoryInfo later
			local name = ZGVP.tradeskills[skillline] and ZGVP.tradeskills[skillline].name
			ZGVP.SkillsKnown[name] = ZGVP.SkillsKnown[name] or {}
			local pro = ZGVP.SkillsKnown[name]
			pro.level = rank
			pro.max = maxRank
			pro.active = true
			pro.skillID = skillline
			pro.name = name
		end


		cacheskill_lines[skillline] = true
		cacheskill_core[skillline] = true

		-- subskills
		for subid,subdata in pairs(ZGVP.tradeskills[skillline].subs) do
			local subname = subdata.name
			--if faction=="Alliance" then
			--	subname = subname:gsub("Zandalari ","Kul Tiran ")
			--end

			local cat = C_TradeSkillUI.GetCategoryInfo(subid)
			if cat and cat.skillLineMaxLevel then
				ZGVP.SkillsKnown[subname] = ZGVP.SkillsKnown[subname] or {}
					
				local pro = ZGVP.SkillsKnown[subname]

				pro.level = cat.skillLineCurrentLevel
				pro.max = cat.skillLineMaxLevel
				pro.active = (cat.skillLineCurrentLevel>0)
				pro.skillID = subdata.skill
				pro.name = subname
				pro.parentname = name
				pro.parentskillID = skillline
				cacheskill_lines[subid] = true
			end
		end
	end

	-- 1) If user no longer has some profession, remove its subskills from known 
	for lineid,linedata in pairs(ZGV.db.char.RecipesKnown) do
		if not cacheskill_core[lineid] then
			ZGV.db.char.RecipesKnown[lineid]=nil
		end
	end
	for name,linedata in pairs(ZGVP.SkillsKnown) do
		if not linedata.placeholder and not cacheskill_core[linedata.parentskillID or linedata.skillID] then
			ZGVP.SkillsKnown[name] = nil
		end
	end
	--self:CacheRecipes(profs)  -- or try to, anyway. --Do Cooking masteries too
end

function ZGV:CacheRecipes(profs)
	local data = ProfessionsFrame and ProfessionsFrame:GetProfessionInfo()
	local skill = data and data.parentProfessionID
	if not skill then return end

	if ZGVP.CR_Timer then return end -- we already have scheduled refresh, wait for it
	if ZGVP.LastRecipeCheckLine~=skill then ZGV:CacheRecipes_Queued(profs) return end -- we changed skill line, grab recipes now
	if ZGVP.LastRecipeCheckTime and (debugprofilestop()-ZGVP.LastRecipeCheckTime)>1000 then ZGV:CacheRecipes_Queued(profs) return end -- over 1 second since last refresh, grab now as we are not spamming
	ZGVP.CR_Timer = ZGV:ScheduleTimer(function() ZGV:CacheRecipes_Queued(profs) end, 1)
end

function ZGV:CacheRecipes_Queued(profs)
	if ZGVP.CR_Timer then ZGV:CancelTimer(ZGVP.CR_Timer) ZGVP.CR_Timer=nil end

	if not C_TradeSkillUI.IsTradeSkillReady() then return end -- prevents missing reagents in recipes
	if C_TradeSkillUI.IsTradeSkillGuild() or C_TradeSkillUI.IsTradeSkillLinked() then return end

	local data = ProfessionsFrame and ProfessionsFrame:GetProfessionInfo()
	local skill = data and data.parentProfessionID
	if not skill then return end

	self.db.char.RecipesKnown=self.db.char.RecipesKnown or {}
	self.db.char.RecipesKnown[skill]=self.db.char.RecipesKnown[skill] or {}

	local recipes = self.db.char.RecipesKnown[skill]

	local all_recipes = C_TradeSkillUI.GetAllRecipeIDs()

	table.wipe(recipes)

	local difficulties = {
		[0] = "optimal",
		[1] = "medium",
		[2] = "easy",
		[3] = "trivial",
	}

	for _,recipeid in pairs(all_recipes) do
		local api_recipe = C_TradeSkillUI.GetRecipeInfo(recipeid)
		local api_schematic = C_TradeSkillUI.GetRecipeSchematic(recipeid,false)
		local recipe = {
			nummade = {api_schematic.quantityMin,api_schematic.quantityMax},
			spell = recipeid,
			learned = api_recipe.learned,
			skill = skill,
			numSkillUps = api_recipe.numSkillUps,
			difficulty = difficulties[api_recipe.relativeDifficulty],
			numAvailable = C_TradeSkillUI.GetCraftableCount(recipeid),
			source = C_TradeSkillUI.GetRecipeSourceText(recipeid),
			name = api_recipe.name
			}
		local productlink = C_TradeSkillUI.GetRecipeItemLink(recipeid)
		recipe.producttype,recipe.productid = productlink:match("|H(%w+):(%d+)")
		recipe.productid = tonumber(recipe.productid)

		local reagents={}
		for _,reagentInfo in ipairs(api_schematic.reagentSlotSchematics) do
			local count = reagentInfo.quantityRequired
			local itemid = reagentInfo.reagents[1].itemID
			reagents[itemid]=count
		end
		recipe.reagents = reagents

		recipes[recipeid]=recipe
	end

	ZGVP.LastRecipeCheckLine = skill
	ZGVP.LastRecipeCheckTime = debugprofilestop()

	local Goldguide = ZGV.Goldguide
	if Goldguide and Goldguide.MainFrame and Goldguide.MainFrame:IsVisible() then 
		Goldguide:InitialiseCraftingChores()
		for _,chore in pairs(Goldguide.Chores.Crafting) do chore:CalculateDetails(true)  chore.needsRefresh=true end
	end
end

function ZGVP:GetSkill(name)
	if not name then 
		ZGV.db.char.SkillsKnown[""].parentname="Unknown skill"
		return ZGV.db.char.SkillsKnown[""] 
	end

	-- handle aliases : legion_alchemy => Legion Alchemy
	name = name:gsub("_"," "):gsub("(%a)([%w]*)", function(first,rest) return first:upper()..rest:lower() end)


	if ZGV.db.profile.fakeskills[name] then
		return ZGV.db.profile.fakeskills[name] -- faked value
	elseif ZGV.db.char.SkillsKnown[name] then
		return ZGV.db.char.SkillsKnown[name]
	else
		local parent = name
		if name:find(" ") then parent = name:gsub("([%w]*) ([%w]*)","%2") end
		ZGV.db.char.SkillsKnown[""].parentname=parent
		return ZGV.db.char.SkillsKnown[""] -- proper value or empty placeholer
	end
end

function ZGVP:GetSkillDataByName(name)
	for id,data in pairs(ZGVP.tradeskills) do 
		for sid,sdata in pairs(data.subs) do
			if sdata.name==name then return sdata end
		end
	end
end



function ZGV:Profession_NEW_RECIPE_LEARNED(event,spell)
	for skill,skilltable in pairs(ZGV.db.char.RecipesKnown) do
		if skilltable[spell] then
			skilltable[spell].learned=true
		end
	end
end

local ERR_LEARN_RECIPE_S_fmt = ERR_LEARN_RECIPE_S:gsub("%.","%%."):gsub("%%s","(.+)")
--local TRADESKILL_LOG_FIRSTPERSON_fmt = TRADESKILL_LOG_FIRSTPERSON:gsub("%%s","(.-)")

function ZGV:Profession_CHAT_MSG_SYSTEM(event,text)
	local _,_,item = text:find(ERR_LEARN_RECIPE_S_fmt)
	if item then
		self.recentlyLearnedRecipes[item]=true
	end
end





function ZGV:PerformTradeSkillGoal(goal)
	if not goal then return end
	if not goal.spellid then return end

	if goal.count then
		-- total based
		self:PerformTradeSkill(goal.spellid,goal.count-GetItemCount(goal.targetid))
	elseif goal.skillnum and goal.skillnum>0 then
		-- skillup-based
		self:PerformTradeSkill(goal.spellid,goal.skillnum)
	else
		-- no count, completable by quest, do single craft
		self:PerformTradeSkill(goal.spellid,1)
	end
end

function ZGV:PerformTradeSkill(id,count)
	if not count then count=1 end
	if count<=0 then return end
	local rec = ZGVP:GetRecipe(id)
	if not rec then return end
	if not (ProfessionsFrame and ProfessionsFrame:IsVisible()) then
		C_TradeSkillUI.OpenTradeSkill(rec.skill) 
		return
	end

	C_TradeSkillUI.OpenTradeSkill(rec.skill)
	if ProfessionsFrame then 
		local api_recipe = C_TradeSkillUI.GetRecipeInfo(id)
		if not api_recipe then return end
		ProfessionsFrame.CraftingPage:SelectRecipe(api_recipe) 
	end

	local transaction = (ProfessionsFrame and ProfessionsFrame.CraftingPage and ProfessionsFrame.CraftingPage.SchematicForm) and ProfessionsFrame.CraftingPage.SchematicForm:GetTransaction()
	local craftingReagentTbl = transaction and transaction:CreateCraftingReagentInfoTbl()

	-- dragonflight crafting with quality reagents and more than one item at once
	-- we need to craft one by one, and update craftingReagentTbl as it changes
	if craftingReagentTbl then count = 1 end
	
	C_TradeSkillUI.CraftRecipe(id, count, craftingReagentTbl)
end

function ZGVP:GetRecipe(spellid)
	local RK = ZGV.db.char.RecipesKnown
	if not RK or not next(RK) then return false,"no data" end
	for skillid,recipes in pairs(RK) do
		if recipes[spellid] then return recipes[spellid] end
	end
	return false,"not found"
end

function ZGVP:KnowsRecipe(spellid)
	local ret,error = ZGVP:GetRecipe(spellid)
	if ret then
		return ret.learned,true
	else
		return false,false
	end
end


local pattern = "Skill (%d+) increased from (%d+) to (%d+)"
local function UpdateSkillConsole(_,_,msg)
	local id,from,to = msg:match(pattern)

	if id == 794 then -- archeology special handling
		local _, _, arch = GetProfessions()
		local name, _, rank, maxRank = GetProfessionInfo(arch)
		ZGVP.SkillsKnown[name] = ZGVP.SkillsKnown[name] or {}
		local pro = ZGVP.SkillsKnown[name]
		pro.level = rank
		pro.max = maxRank
		pro.active = true
		pro.skillID = id
		pro.name = name

	elseif id and to then
		id=tonumber(id)
		to=tonumber(to)

		for name,skill in pairs(ZGV.db.char.SkillsKnown) do
			if skill.skillID==id then
				skill.level = to
				return
			end
		end

		if to>0 then
			for sid,linedata in pairs(ZGVP.tradeskills) do
				for subid,skilldata in pairs(linedata.subs) do
					if skilldata.skill==id then
						ZGVP.SkillsKnown[skilldata.name] = ZGVP.SkillsKnown[skilldata.name] or {}
						local pro =  ZGVP.SkillsKnown[skilldata.name]
						local subname = skilldata.name
						--if faction=="Alliance" then
						--	subname = subname:gsub("Zandalari ","Kul Tiran ")
						--end

						pro.level = to
						pro.max = skilldata.name==linedata.name and 300 or 200 -- 200 may be high, but it is only one tier, and will get adjusted to proper value when they open tradeskill window
						pro.active = true
						pro.skillID = skilldata.skill
						pro.name = subname
						pro.parentname = linedata.name
						pro.parentskillID = sid
						cacheskill_lines[subid] = true
					end
				end
			end
		else
			for name,linedata in pairs(ZGVP.SkillsKnown) do
				if linedata.parentskillID==id or linedata.skillID==id then
					ZGVP.SkillsKnown[name] = nil
				end
			end
		end
	end
end

function ZGVP:HasProfessionSlot()
	local p1, p2, arch, fish, cook, first = GetProfessions()
	return not (p1 and p2)
end

function ZGVP:HasProfessionUnscanned(name)
	cacheskill_profs.prof1, cacheskill_profs.prof2, cacheskill_profs.arch, cacheskill_profs.fish, cacheskill_profs.cook, cacheskill_profs.firstAid = GetProfessions()

	for i,prof in pairs(cacheskill_profs) do
		local _, _, _, _, _, _, skillline = GetProfessionInfo(prof)
		if ZGVP.tradeskills[skillline] and ZGVP.tradeskills[skillline].name==name then return true end
	end
	return false
end

function ZGVP:GoalRecipe(skill,spellid,loud)
	if not (ProfessionsFrame and ProfessionsFrame:IsVisible()) then return nil,"closed" end
	if not skill or not spellid then return nil,"no_data" end
	local skilldata = ZGV.Professions:GetSkill(skill)
	if not skilldata then return nil,"no_prof" end

	local professionInfo = ProfessionsFrame:GetProfessionInfo()
	if skilldata.parentskillID~=professionInfo.parentProfessionID then return nil,"closed" end -- open, but on wrong skill

	local skillid = skilldata.parentskillID or skilldata.skillID
	if not ZGV.db.char.RecipesKnown[skillid] then return nil,"no_prof" end
	local recipe = ZGV.db.char.RecipesKnown[skillid][spellid]
	if not recipe then return nil,"unknown" end
	if not recipe.learned then return nil,"unknown" end
	if not recipe.difficulty or not recipe.numAvailable then return nil,"unknown" end
	return recipe
end


tinsert(ZGV.startups,{"Professions setup",function(self)
	--self:AddEventHandler("PLAYER_ENTERING_WORLD","CacheSkills") don't cache at start, load saved instead
	self:AddEventHandler("SKILL_LINES_CHANGED","CacheSkills")
	--self:AddEventHandler("CHAT_MSG_SKILL","CacheSkills")
	self:AddEventHandler("CONSOLE_MESSAGE",UpdateSkillConsole) -- replaces CHAT_MSG_SKILL for our needs
	self:AddEventHandler("TRADE_SKILL_SHOW","CacheSkills")
	self:AddEventHandler("TRADE_SKILL_DATA_SOURCE_CHANGED","CacheSkills")

	--[[ bfa alpha change
	self:AddEventHandler("TRADE_SKILL_UPDATE","CacheSkills")
	--]]
	self:AddEventHandler("CHAT_MSG_SYSTEM","Profession_CHAT_MSG_SYSTEM")
	self:AddEventHandler("NEW_RECIPE_LEARNED","Profession_NEW_RECIPE_LEARNED")

	self:AddEventHandler("TRADE_SKILL_LIST_UPDATE","CacheRecipes")

	--self:AddEventHandler("CHAT_MSG_COMBAT_FACTION_CHANGE","CHAT_MSG_COMBAT_FACTION_CHANGE_Faction")

	if not ZGV.db.char.SkillsKnown then
		ZGV.db.char.SkillsKnown = {}
		ZGV:CacheSkills()
	end

	ZGV.db.char.SkillsKnown[""] = {active=false,level=0,max=0,placeholder=true}

	ZGVP.SkillsKnown = ZGV.db.char.SkillsKnown
end})
