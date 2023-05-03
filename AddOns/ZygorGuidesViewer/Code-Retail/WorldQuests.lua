local name,ZGV = ...

local WorldQuests = {}
ZGV.WorldQuests = WorldQuests

local L = ZGV.L
local ui = ZGV.UI
local SkinData = ui.SkinData
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local FONTSTATUS="Fonts\\ARIALN.TTF"
local LibRover=LibStub("LibRover-1.0")

function WorldQuests.UpdateSorting(widget,field)  -- NOT called with a colon; called from a ScrollTable widget.
	if ZGV.db.profile.WQSorting[1] == field then
		if ZGV.db.profile.WQSorting[2] == "desc" then
			ZGV.db.profile.WQSorting = {field,"asc"}
		else
			ZGV.db.profile.WQSorting = {field,"desc"}
		end
	else
		ZGV.db.profile.WQSorting = {field,"asc"}
	end

	WorldQuests.needToUpdate = true
	WorldQuests.useCache = true
end

local DATATABLE_COLUMNS = {
	{ title="", width=12, headerwidth=12, titlej="LEFT", textj="LEFT", name="toggle", type="toggle"},
	{ title="", width=20, headerwidth=20, titlej="LEFT", textj="LEFT", name="icon", type="icon", texture="_iconsets_worldquest_" },
	{ title=L["wqp_col_NAME"], width=100, titlej="LEFT", textj="LEFT", name="name", sortable=true, sortfunction=WorldQuests.UpdateSorting, onentertooltip=function(row) WorldQuests:ShowTooltipQuest(row) end, tooltipanchor="ANCHOR_BOTTOM" },
	{ title="", width=20, headerwidth=20, titlej="LEFT", textj="LEFT", name="rewardicon", type="icon", onentertooltip=function(row) WorldQuests:ShowTooltipReward(row) end, tooltipanchor="ANCHOR_BOTTOM" },
	{ title=L["wqp_col_REWARDS"], width=80, titlej="LEFT", textj="LEFT", name="rewards", sortable=true, sortfunction=WorldQuests.UpdateSorting, onentertooltip=function(row) WorldQuests:ShowTooltipReward(row) end, tooltipanchor="ANCHOR_BOTTOM" },
	{ title=L["wqp_col_FACTION"], width=65, titlej="LEFT", textj="LEFT", name="faction", sortable=true, sortfunction=WorldQuests.UpdateSorting, onentertooltip=function(row) WorldQuests:ShowTooltipFaction(row) end, tooltipanchor="ANCHOR_BOTTOM"  },
	{ title=L["wqp_col_TIME"], width=60, titlej="LEFT", textj="LEFT", name="time", sortable=true, sortfunction=WorldQuests.UpdateSorting },
	{ title=L["wqp_col_ZONE"], width=90, titlej="LEFT", textj="LEFT", name="zone", sortable=true, sortfunction=WorldQuests.UpdateSorting },
}

local DATATABLE_DATA = {
	ROW_COUNT = 20,
	LIST_WIDTH = 518,
	LIST_HEIGHT = 455,
	ROW_ICONSIZE = 20,
	HEADERY = -5,
	POSX = 0,
	POSY = -55,
	STRATA = "HIGH",
	ROWBACKGROUND = true,
}

local WQ_TYPES = {
	{"Regular",true,Enum.QuestTagType.Normal},
	{"PVP",true,Enum.QuestTagType.PvP},
	{"Dungeons",true,Enum.QuestTagType.Dungeon},
	{"Raid",true,Enum.QuestTagType.Raid},
	{"Invasion",true,Enum.QuestTagType.Invasion},
	{"Professions",true,Enum.QuestTagType.Profession},
	{"Pet Battles",true,Enum.QuestTagType.PetBattle},
}

local WQ_REWARDS = { -- checks for specific currencies are in isvalid
	{"Anima",true,"anima"},

	{"Order resources",true,1220},
	{"Wakening essence",true,1533},

	{"Azerite power",true,1553},
	{"War resources",true,1560},

	{"Reputation",true,"reputation"},
	{"Other resources",true,"resources"},
	{"Gold",true,"gold"},
	{"Gear",true,"gear"},
	{"Other",true,"other"},
}

local faction_data = {
	[2103] = {quest=50598, exp="bfa", faction="Horde", engname="Zandalari Empire", filepath="INV_ZandalariEmpire"},			-- Zandalari Empire        
	[2156] = {quest=50602, exp="bfa", faction="Horde", engname="Talanji's Expedition", filepath="INV_TalanjisExpedition"},		-- Talanji's Expedition    
	[2158] = {quest=50603, exp="bfa", faction="Horde", engname="Voldunai", filepath="INV_Voldunai"},				-- Voldunai                
	[2157] = {quest=50606, exp="bfa", faction="Horde", engname="The Honorbound", filepath="INV_HordeWarEffort"},			-- The Honorbound          
	[2160] = {quest=50599, exp="bfa", faction="Alliance", engname="Proudmoore Admiralty", filepath="Inv_proudmooreadmirality"},	-- Proudmoore Admiralty    
	[2159] = {quest=50605, exp="bfa", faction="Alliance", engname="7th Legion", filepath="INV_AllianceWarEffort"},			-- 7th Legion              
	[2161] = {quest=50600, exp="bfa", faction="Alliance", engname="Order of Embers", filepath="INV_OrderofEmbers"},			-- Order of Embers         
	[2162] = {quest=50601, exp="bfa", faction="Alliance", engname="Storm's Wake", filepath="INV_Stormswake"},			-- Storm's Wake            
	[2164] = {quest=50562, exp="bfa", engname="Champions of Azeroth", filepath="INV_Championsofazeroth"},				-- Champions of Azeroth    
	[2163] = {quest=50604, exp="bfa", engname="Tortollan Seekers", filepath="INV_TortollanSeekers"},				-- Tortollan Seekers       

	[2400] = {quest=56119, exp="bfa", faction="Alliance", engname="Waveblade Ankoan", filepath="INV_Circle_Faction_Akoan"},		-- Waveblade Ankoan       
	[2373] = {quest=56120, exp="bfa", faction="Horde", engname="The Unshackled", filepath="INV_Faction_Unshackled"},		-- The Unshackled       

	[2391] = {quest=00000, exp="bfa", engname="Rustbolt Resistance", filepath="INV_Faction_Rustbolt", zone=1462},			-- Rustbolt Resistance, no emissary, match by zone

	[1883] = {quest=42170, exp="leg", engname="Dreamweavers", filepath="INV_LegionCircle_Faction_DreamWeavers"},			-- Dreamweavers            
	[1828] = {quest=42233, exp="leg", engname="Highmountain Tribe", filepath="INV_LegionCircle_Faction_HightmountainTribes"},	-- Highmountain Tribe      
	[1948] = {quest=42234, exp="leg", engname="Valarjar", filepath="INV_LegionCircle_Faction_Valarjar"},				-- Valarjar                
	[1900] = {quest=42420, exp="leg", engname="Court of Farondis", filepath="INV_LegionCircle_Faction_CourtofFarnodis"},		-- Court of Farondis       
	[1859] = {quest=42421, exp="leg", engname="The Nightfallen", filepath="INV_LegionCircle_Faction_NightFallen"},			-- The Nightfallen         
	[1894] = {quest=42422, exp="leg", engname="The Wardens", filepath="INV_LegionCircle_Faction_Warden"},				-- The Wardens             
	[1090] = {quest=43179, exp="leg", engname="The Kirin Tor of Dalaran", filepath="INV_LegionCircle_Faction_KirinTor"},		-- The Kirin Tor of Dalaran
	[2045] = {quest=46777, exp="leg", engname="Legionfall", filepath="INV_LegionCircle_Faction_Legionfall"},			-- Legionfall              
	[2165] = {quest=48639, exp="leg", engname="Army of the Light", filepath="INV_LegionCircle_Faction_ArmyoftheLight"},		-- Army of the Light       
	[2045] = {quest=48641, exp="leg", engname="Armies of Legionfall", filepath="INV_LegionCircle_Faction_Legionfall"},		-- Armies of Legionfall    
	[2170] = {quest=48642, exp="leg", engname="Argussian Reach", filepath="INV_LegionCircle_Faction_ArgussianReach"},		-- Argussian Reach         

	[2465] = {quest=0, exp="sha", engname="The Wild Hunt", filepath="inv_misc_sigil_ardenweald01"},			-- The Wild Hunt            
	[2410] = {quest=0, exp="sha", engname="The Undying Army", filepath="inv_misc_sigil_maldraxxus01"},		-- The Undying Army            
	[2407] = {quest=0, exp="sha", engname="The Ascended", filepath="inv_misc_sigil_bastion01"},			-- The Ascended
	[2413] = {quest=0, exp="sha", engname="Court of Harvesters", filepath="inv_misc_sigil_revendreth01"},		-- Court of Harvesters

	[2503] = {quest=0, exp="dra", engname="Maruuk Centaur", filepath="ui_majorfaction_centaur"},			-- Maruuk Centaur
	[2507] = {quest=0, exp="dra", engname="Dragonscale Expedition", filepath="ui_majorfaction_expedition"},		-- Dragonscale Expedition
	[2510] = {quest=0, exp="dra", engname="Valdrakken Accord", filepath="ui_majorfaction_valdrakken"},		-- Valdrakken Accord
	[2511] = {quest=0, exp="dra", engname="Iskaara Tuskarr", filepath="ui_majorfaction_tuskarr"},			-- Iskaara Tuskarr

	--[2544] = {quest=0, exp="dra", engname="Artisan's Consortium", filepath=""},		-- Artisan's Consortium 
	--[2517] = {quest=0, exp="dra", engname="Wrathion", filepath=""},			-- Wrathion
	--[2522] = {quest=0, exp="dra", engname="Clan Teerai", filepath=""},			-- Clan Teerai
	--[2520] = {quest=0, exp="dra", engname="Clan Nokhud", filepath=""},			-- Clan Nokhud
	--[2513] = {quest=0, exp="dra", engname="Clan Ohn'ir", filepath=""},			-- Clan Ohn'ir
	--[2526] = {quest=0, exp="dra", engname="Winterpelt Furbolg", filepath=""},		-- Winterpelt Furbolg
	--[2518] = {quest=0, exp="dra", engname="Sabellian", filepath=""},			-- Sabellian
	
	}


-- now these are keys in ZGV.IconSets.WorldQuest
local quest_icons = {
	[Enum.QuestTagType.Normal] = "QUEST", -- default 
	[Enum.QuestTagType.PetBattle] = "PET", -- pet
	[Enum.QuestTagType.Dungeon] = "DUNGEON", -- dungeon
	[Enum.QuestTagType.Raid] = "RAID", -- raid
	[Enum.QuestTagType.Invasion] = "INVASION", -- invasion
	[Enum.QuestTagType.PvP] = "PVP", -- pvp
	[Enum.QuestTagType.FactionAssault] = "HORDE", -- intrusion horde, alliance is icon 22, handled in code
	[Enum.QuestTagType.Islands] = "QUEST", -- island expeditions?
	[Enum.QuestTagType.CovenantCalling] = "FIRSTAID", -- covenant quests
	[171] = "ALCHEMY", -- alchemy
	[794] = "ARCHAEOLOGY", -- archeology
	[164] = "BLACKSMITHING", -- blacksmith
	[182] = "HERBALISM", -- herbalism
	[773] = "INSCRIPTION", -- inscription
	[755] = "JEWELCRAFTING", -- jewelcrafting
	[165] = "LEATHERWORKING", -- leatherworking
	[197] = "TAILORING", -- tailoring
	[393] = "SKINNING", -- skinning
	[185] = "COOKING", -- cooking
	[333] = "ENCHANTING", -- enchanting
	[202] = "ENGINEERING", -- engineering
	[356] = "FISHING", -- fishing
	[186] = "MINING", -- mining
	bodyguard = "DAILY", -- bodyguard quests
	daily = "DAILY", -- daily quests
	}

local locale=GetLocale()
if locale=="enGB" or locale=="enUS" then
	for i,v in pairs(faction_data) do
		faction_data[i].name = faction_data[i].engname
	end
end

local argus_subzones = {830, 882, 885}

-- build expansion and faction specific dropdowns, sort and add textures
local player_faction = UnitFactionGroup("player")
local WQ_FACTIONS_BFA = {}
local WQ_FACTIONS_LEG = {}
local WQ_FACTIONS_SHA = {}
local WQ_FACTIONS_DRA = {}
for i,v in pairs(faction_data) do if v.exp=="bfa" and (not v.faction or v.faction == player_faction) then table.insert(WQ_FACTIONS_BFA,{v.name or GetFactionInfoByID(i) or v.engname, true, i}) end end	
for i,v in pairs(faction_data) do if v.exp=="leg" and (not v.faction or v.faction == player_faction) then table.insert(WQ_FACTIONS_LEG,{v.name or GetFactionInfoByID(i) or v.engname, true, i}) end end
for i,v in pairs(faction_data) do if v.exp=="sha" and (not v.faction or v.faction == player_faction) then table.insert(WQ_FACTIONS_SHA,{v.name or GetFactionInfoByID(i) or v.engname, true, i}) end end
for i,v in pairs(faction_data) do if v.exp=="dra" and (not v.faction or v.faction == player_faction) then table.insert(WQ_FACTIONS_DRA,{v.name or GetFactionInfoByID(i) or v.engname, true, i}) end end
table.sort(WQ_FACTIONS_BFA, function(a,b) return a[1]<b[1] end)
table.sort(WQ_FACTIONS_LEG, function(a,b) return a[1]<b[1] end)
table.sort(WQ_FACTIONS_SHA, function(a,b) return a[1]<b[1] end)
table.sort(WQ_FACTIONS_DRA, function(a,b) return a[1]<b[1] end)
for i,v in pairs(WQ_FACTIONS_BFA) do WQ_FACTIONS_BFA[i][1] = (faction_data[v[3]].filepath and "|TInterface\\Icons\\"..faction_data[v[3]].filepath..":14|t " or "").. WQ_FACTIONS_BFA[i][1] end
for i,v in pairs(WQ_FACTIONS_LEG) do WQ_FACTIONS_LEG[i][1] = (faction_data[v[3]].filepath and "|TInterface\\Icons\\"..faction_data[v[3]].filepath..":14|t " or "").. WQ_FACTIONS_LEG[i][1] end
for i,v in pairs(WQ_FACTIONS_SHA) do WQ_FACTIONS_SHA[i][1] = (faction_data[v[3]].filepath and "|TInterface\\Icons\\"..faction_data[v[3]].filepath..":14|t " or "").. WQ_FACTIONS_SHA[i][1] end
for i,v in pairs(WQ_FACTIONS_DRA) do WQ_FACTIONS_DRA[i][1] = (faction_data[v[3]].filepath and "|TInterface\\Icons\\"..faction_data[v[3]].filepath..":14|t " or "").. WQ_FACTIONS_DRA[i][1] end

WorldQuests.Quests = {}
WorldQuests.HiddenQuests = {}
WorldQuests.DisplayAll = true

local world_quest_guides
function WorldQuests:Startup()
	WorldQuests:SetFilters()

	world_quest_guides = {}
	for i,guide in pairs(ZGV.registeredguides) do
		if guide.headerdata and guide.headerdata.worldquestzone then
			if type(guide.headerdata.worldquestzone)=="table" then
				for _,zone in pairs(guide.headerdata.worldquestzone) do
					world_quest_guides[zone] = guide
				end
			else
				world_quest_guides[guide.headerdata.worldquestzone] = guide
			end
			if guide.headerdata and guide.headerdata.worldquestshidden then
				WorldQuests.HiddenQuests[guide.headerdata.worldquestzone] = {}
				for quest,coords in pairs(guide.headerdata.worldquestshidden) do
					WorldQuests.HiddenQuests[guide.headerdata.worldquestzone][quest] = {coords[1]/100,coords[2]/100}
				end
			end
		end
	end

	hooksecurefunc(WorldMap_WorldQuestPinMixin,"OnClick", function(self,button) WorldQuests:SuggestWorldQuestGuideFromMap(self) end)
	hooksecurefunc(BonusObjectivePinMixin,"OnClick", function(self,button) WorldQuests:SuggestWorldQuestGuideFromMap(self) end)
	--hooksecurefunc(VignettePinMixin,"OnClick", function(self,button) WorldQuests:SuggestWorldQuestGuideFromMap(self) end)
	hooksecurefunc(WorldMapFrame,"OnMapChanged", function() 
		if not ZGV.db.profile.worldquestenable then return end
		WorldQuests.DisplayFrame:Show()
		WorldQuests.needToUpdate = true
		WorldQuests.useCache = false
		WorldQuests:HighlightHide()
	end)

	hooksecurefunc(WorldMapFrame,"Maximize",function() 
		WorldQuests.DisplayFrame:Hide() 
		WorldQuests:HighlightHide() 
	end)
	hooksecurefunc(WorldMapFrame,"Minimize",function()
		if not ZGV.db.profile.worldquestenable then return end
		WorldQuests.DisplayFrame:Show()
		WorldQuests.needToUpdate = true
		WorldQuests.useCache = false
	end)

	if WorldQuestTrackerAddon then
		ZGV:Hook(WorldQuestTrackerAddon,"OnQuestButtonClick", WorldQuests.WQTwrapper) -- map buttons
		ZGV:AddEventHandler("SUPER_TRACKING_CHANGED",function(self,event) WorldQuests:SUPER_TRACKING_CHANGED() end)
	end

	WorldQuests:CreateFrame()
	WorldQuests:QueueDetailsLoad()
end

function WorldQuests:SUPER_TRACKING_CHANGED()
	local questID = C_SuperTrack.GetSuperTrackedQuestID()

	if not questID then return end
	if not WorldQuestTrackerAddon then return end
	if not WorldQuestTrackerAddon.db.profile.use_tracker then return end
	if not WorldQuestTrackerAddon.IsQuestBeingTracked(questID) then return end
	for i,questdata in pairs(WorldQuestTrackerAddon.QuestTrackList) do
		if questdata.questID == questID then
			WorldQuests:SuggestWorldQuestGuideFromMap(nil,questID,"force",questdata.mapID)
			return
		end
	end
end

function WorldQuests.WQTwrapper(object)
	if not WorldQuestTrackerAddon.db.profile.use_tracker then return end
	if not WorldQuestTrackerAddon.IsQuestBeingTracked(object.questID) then
		WorldQuests:SuggestWorldQuestGuideFromMap(nil,object.questID,"force",object.mapID)
	end
end

local function guide_exists(questID) 
	local guides = ZGV.QuestDB.GuideForQuest[questID]
	if not guides then return false end

	for _,guide in ipairs(guides) do
		for map,mapguide in pairs(world_quest_guides) do
			if mapguide.title==guide then return true end
		end
	end
	return false
end

local function find_world_quest_step(questID,mapID)
	local labelstep, zoneguide
	local mapid = mapID or WorldMapFrame and WorldMapFrame:GetMapID()

	if not mapid then
		ZGV:Debug("&_SUB &worldquests unable to get current map id")
		return false,false
	end
	
	zoneguide = world_quest_guides[mapid]
	
	if zoneguide then
		zoneguide:Parse(true)
		for labelname,labeldata in pairs(zoneguide.steplabels) do
			if labelname == "quest-"..questID then
				return zoneguide,labeldata[1]
			end
		end
	end
	return false,false
end

local function add_world_quest_notification(questID,questTitle,guide,labelstep,tab)
	if not (ZGV.db.profile.n_nc_enabled and ZGV.db.profile.n_popup_wq) then
		-- if nc is disabled, just open new tab
		local tab = ZGV.Tabs:GetSpecialTabFromPool("worldquestzone")
		tab:SetAsCurrent()
		ZGV:SetGuide(guide.title,labelstep)
	else
		-- otherwise show popup
		ZGV:Debug("&_SUB &worldquests popup for %s",questID)
		ZGV.NotificationCenter:AddEntry(
		"worldquest",
		questTitle,
		L["tabs_world_quest_new"],
		ZGV.IconSets.TabsIcons.file,
		ZGV.IconSets.TabsIcons['LEVELING'].texcoord,
		function() 
			local tab = ZGV.Tabs:GetSpecialTabFromPool("worldquestzone")
			tab:SetAsCurrent()
			ZGV:SetGuide(guide.title,labelstep) end,
		nil,
		1,
		10, --poptime
		30, --removetime
		false, --quiet
		nil,--onopen
		"worldquest")
	end
end

function WorldQuests:SuggestWorldQuestGuide(object,questID,force,mapID)
	local questID = object and (object.worldQuest or object.isCombatAllyQuest) and object.questID or questID
	if not questID then return false end

	if C_QuestLog.GetQuestWatchType(questID) or (object and object.isCombatAllyQuest) or (object and object.hiddenworldquest) or force then
		local guide,labelstep = find_world_quest_step(questID,mapID)

		if not labelstep then
			ZGV:Print("Selected World Quest is not yet in our guides.")
			ZGV:Debug("&_SUB &worldquests no label for %s",questID)
			return false
		end
		
		local questTitle = ZGV.QuestDB:GetQuestName(questID)

		if not questTitle then 
			ZGV:Debug("&_SUB &worldquests no title for %s",questID)
			return false
		end

		local tab = ZGV.Tabs:GetSpecialTabFromPool("worldquestzone")
		tab:SetAsCurrent()
		ZGV:SetGuide(guide.title,labelstep)

		-- if tab with world quest guide exists load guide into it, otherwise create one
		local silent = false
		if ZGV.Tabs:DoesSpecialTabExist("worldquestzone") then
			silent = true
		end
		ZGV:Debug("&_SUB &worldquests setting to %s",questID)
		local tab = ZGV.Tabs:GetSpecialTabFromPool("worldquestzone")
		tab:SetAsCurrent()
		ZGV:SetGuide(guide.title,labelstep,false,"silent")

		return true
	else
		ZGV:Debug("&worldquests won't switch to %s",questID)
		return false
	end
end

function WorldQuests:SuggestWorldQuestGuideFromList(object)
	if not object then return end
	if not object:IsVisible() then return end
	if not object.quest then return end
	if not object.quest.questID then return end

	WorldQuests:SuggestWorldQuestGuide(nil,object.quest.questID,"force",object.quest.mapID)
end

function WorldQuests:SuggestWorldQuestGuideFromMap(object,questID,force,mapID)
	if not ZGV.db.profile.worldquestmap then return false end

	mapID = mapID or object.ZygorMapId

	WorldQuests:SuggestWorldQuestGuide(object,questID,force,mapID)
end

local skip_currencies = {[1716]=true, [1717]=true} -- service medals, as they are static and block other rewards from showing
local function get_quest_details(data,qid)
	data.questID = qid
	data.questId = qid -- fallback, since data provider requires this camelcase.

	data.mapID = data.mapID or C_TaskQuest.GetQuestZoneID(qid)
	local mapinfo = ZGV.GetMapInfo(data.mapID)
	data.mapName = mapinfo and mapinfo.name or ""

	local _
	data.title,data.faction,_ = C_TaskQuest.GetQuestInfoByQuestID(qid)

	local info = C_QuestLog.GetQuestTagInfo(qid)
	if not info then return end

	if not info.worldQuestType and info.tagID==266 then
		data.type = "bodyguard"
	elseif data.type~="combatally" and data.type~="daily" then
		data.type = info.worldQuestType
	end

	if info.quality == Enum.WorldQuestQuality.Rare then
		data.rarity = ITEM_QUALITY_COLORS[3].hex
	elseif info.quality == Enum.WorldQuestQuality.Epic then
		data.rarity = ITEM_QUALITY_COLORS[4].hex
	else
		data.rarity = ""
	end

	data.tradeskill = info.tradeskillLineID
	data.time = C_TaskQuest.GetQuestTimeLeftSeconds(qid)
	data.timedisp = C_TaskQuest.GetQuestTimeLeftMinutes(qid)
	data.exp = GetQuestLogRewardXP(qid)
	data.gold = GetQuestLogRewardMoney(qid)
	data.honor = GetQuestLogRewardHonor(qid)


	data.currencies = {}
	for i=1,GetNumQuestLogRewardCurrencies(qid) do
		local name, texture, count, currencyID = GetQuestLogRewardCurrencyInfo(i, qid);
		if not skip_currencies[currencyID] then
			data.currencies.name = name
			data.currencies.texture = texture
			data.currencies.count = count
			data.currencies.currencyID = currencyID

			if C_CurrencyInfo.GetFactionGrantedByCurrency(currencyID) then
				data.rewardsreputation = true
			end
			break
		end
	end

	data.rewards = {}
	if GetNumQuestLogRewards(qid)>0 then
		local itemlink = ZGV.TooltipScanner:GetQuestLogItem("reward", 1, qid)
		if itemlink then 
			local itemname, _, itemRarity, _, _, itemType, itemSubType, _, itemEquipLoc, itemIcon = ZGV:GetItemInfo(itemlink)

			data.rewards.itemlink = itemlink
			data.rewards.itemname = itemname
			data.rewards.itemType = itemType
			data.rewards.itemSubType = itemSubType
			data.rewards.itemEquipLoc = itemEquipLoc
			data.rewards.texture = itemIcon
			data.rewards.colorcode = ITEM_QUALITY_COLORS[itemRarity or 1].hex
			if itemlink then data.rewards.anima = C_Item.IsAnimaItemByID(itemlink) end



			if not itemIcon then -- if we did not get icon, force refresh
				WorldQuests.useCache = false
				WorldQuests.needToUpdate = true
			end
		end
	end

	data.reputations = ""
	data.reputationDetails = {}
	local faction_name_set = false
	for factionID,factionData in pairs(faction_data) do
		if (C_QuestLog.IsQuestCriteriaForBounty(qid, factionData.quest) or (data.mapID==factionData.zone) or (data.faction==factionID)) and (not factionData.faction or factionData.faction==player_faction) then
			data.reputations =  data.reputations..(faction_data[factionID].filepath and "|TInterface\\Icons\\"..faction_data[factionID].filepath..":20:20:0:4|t " or faction_data[factionID].name or "")
			data.reputationDetails[factionID] = (faction_data[factionID].filepath and "|TInterface\\Icons\\"..faction_data[factionID].filepath..":0|t " or "")..(faction_data[factionID].name or "")
			if not faction_name_set then 
				data.reputationName = (faction_data[factionID].name or "")
				faction_name_set = true
			end
		end
	end

	data.tostring = function() return data.title end
end

local show_dailies_on_map = {
	--[1527] = true, -- nzoth uldum
	--[1530] = true, -- nzoth vale
}

local blacklisted_quests = {
	[58703] = true, -- nazjatar, wanted: lady narjss
}

function WorldQuests:GetWorldQuests()
	table.wipe(WorldQuests.Quests)

	for i,v in pairs(faction_data) do
		faction_data[i].name = faction_data[i].name or GetFactionInfoByID(i)
	end

	if not WorldMapFrame:IsVisible() then return WorldQuests.Quests end

	local current_mapid = WorldMapFrame:GetMapID()
	WorldQuests.current_mapid = current_mapid

	local mapdata = ZGV.GetMapInfo(current_mapid)

	if mapdata and mapdata.mapType==Enum.UIMapType.World then return WorldQuests.Quests end -- don't work on world maps

	local quests = C_TaskQuest.GetQuestsForPlayerByMapID(current_mapid)
	local pins = {}

	if current_mapid==905 then -- meh, argus needs workaround
		table.wipe(quests)
		for _,amap in pairs(argus_subzones) do
			for i,v in pairs(C_TaskQuest.GetQuestsForPlayerByMapID(amap)) do
				table.insert(quests,v)
			end
		end
	end

	if WorldQuests.HiddenQuests[current_mapid] then
		for hiddenquest,coords in pairs(WorldQuests.HiddenQuests[current_mapid]) do
			if C_TaskQuest.IsActive(hiddenquest) then
				local newquest = {
					childDepth = 0,
					inProgress = false,
					isCombatAllyQuest = false,
					--isDaily = true,
					isQuestStart = false,
					mapID = current_mapid,
					numObjectives = 1,
					questId = hiddenquest,
					x = coords[1],
					y = coords[2],
					hiddenworldquest = true
				}
				table.insert(quests,newquest)
			end
		end
	end


	local map_children = ZGV.GetMapChildren(current_mapid)
	if not quests then return WorldQuests.Quests end

	if WorldMapFrame.pinPools.WorldMap_WorldQuestPinTemplate then
		local o = WorldMapFrame.pinPools.WorldMap_WorldQuestPinTemplate.activeObjects
		for i,v in pairs(o) do
			pins[i.questID]=i
		end
	end

	if WorldMapFrame.pinPools.ZygorWorldQuestPinTemplate then
		local o = WorldMapFrame.pinPools.ZygorWorldQuestPinTemplate.activeObjects
		for i,v in pairs(o) do
			pins[i.questID]=i
		end
	end

	for _,quest in pairs(quests) do
		local qid = quest.questId
		local info = C_QuestLog.GetQuestTagInfo(qid)
		local quest_type = (info and info.worldQuestType) or (quest.isCombatAllyQuest and "combatally") or (quest.isDaily and show_dailies_on_map[quest.mapID] and "daily")
		if quest_type and ((map_children[quest.mapID] or quest.mapID==current_mapid)) then -- on current map or its proper children, we do not want bleed through from borders
			local data = {}

			-- copy blizzard data, as we will be feeding whole WorldQuests.Quests array to main data provider later
			for i,v in pairs(quest) do data[i]=v end

			data.mapID = quest.mapID
			local mapinfo = ZGV.GetMapInfo(quest.mapID)
			data.mapName = mapinfo and mapinfo.name or ""
			data.x = quest.x
			data.y = quest.y
			data.pin = pins[qid]
			data.numObjectives = quest.numObjectives
			if quest_type=="combatally" or quest_type=="daily" then data.type=quest_type end

			get_quest_details(data,qid)

			if not blacklisted_quests[qid] then
				table.insert(WorldQuests.Quests,data)
			end
		end
	end
	WorldQuests.DataProvier:RefreshAllData()
	return WorldQuests.Quests 
end

function WorldQuests:FormatTime(remaining)
	local h = math.floor(remaining/60)
	local m = remaining-(h*60)

	local colour = "|cffffffff"
	if ( remaining <= WORLD_QUESTS_TIME_CRITICAL_MINUTES ) then -- 15m
		colour = "|cffff2222"
	elseif ( remaining <= WORLD_QUESTS_TIME_LOW_MINUTES ) then -- 75m
		colour = "|cffffff00"
	else
		colour = ""
	end

	local timestring = ""
	if remaining<60 then
		timestring = ("%dm"):format(m)
	else
		timestring = ("%dh %dm"):format(h,m)
	end

	return colour..timestring.."|r"
end

function WorldQuests:HighlightShow(row)
	if row.quest and row.quest.pin then
		self.Highlight:SetPoint("TOPLEFT",row.quest.pin,"TOPLEFT")
		self.Highlight:Show()
	end
end

function WorldQuests:HighlightHide()
	self.Highlight:Hide()
end

function WorldQuests:IsValidQuest(object)
	if not object then return false end

	--if object.time==0 then return false end

	if #WorldQuests.Quests==0 then return true,"showing queue quests" end

	if (object.type==Enum.QuestTagType.Normal or object.type==Enum.QuestTagType.Islands) and ZGV.db.profile.WQmode[Enum.QuestTagType.Normal]==false then return false,"rejected normal"
	elseif object.type==Enum.QuestTagType.PvP and ZGV.db.profile.WQmode[Enum.QuestTagType.PvP]==false  then return false ,"rejected pvp"
	elseif object.type==Enum.QuestTagType.PetBattle and ZGV.db.profile.WQmode[Enum.QuestTagType.PetBattle]==false then return false,"rejected pet" 
	elseif (object.type==Enum.QuestTagType.Profession or object.tradeskill) and ZGV.db.profile.WQmode[Enum.QuestTagType.Profession]==false then return false,"rejected tradeskill"
	elseif object.type==Enum.QuestTagType.Dungeon and ZGV.db.profile.WQmode[Enum.QuestTagType.Dungeon]==false then return false,"rejected dungeon" 
	elseif object.type==Enum.QuestTagType.Raid and ZGV.db.profile.WQmode[Enum.QuestTagType.Raid]==false then return false,"rejected raid" 
	elseif (object.type==Enum.QuestTagType.Invasion or object.type==Enum.QuestTagType.FactionAssault) and ZGV.db.profile.WQmode[Enum.QuestTagType.Invasion]==false then return false,"rejected invasion" 
	end

	if object.gold>0 then 
		if not ZGV.db.profile.WQreward.gold then return false,"rejected gold" end 

	elseif object.rewardsreputation then
		if not ZGV.db.profile.WQreward.reputation then return false,"rejected reputation" end

	elseif object.currencies.currencyID then 
		if object.currencies.currencyID == 1553 then 
			if not ZGV.db.profile.WQreward[1553] then return false,"rejected resource" end
		elseif object.currencies.currencyID == 1560 then 
			if not ZGV.db.profile.WQreward[1560] then return false,"rejected resource" end

		elseif object.currencies.currencyID == 1220 then 
			if not ZGV.db.profile.WQreward[1220] then return false,"rejected resource" end
		elseif object.currencies.currencyID == 1533 then 
			if not ZGV.db.profile.WQreward[1533] then return false,"rejected resource" end

		elseif not ZGV.db.profile.WQreward.resources then 
			return false,"rejected resource" 
		end
	--elseif object.honor>0  then 
	--	if not ZGV.db.profile.WQreward.honor then return false,"rejected honor" end
	elseif (object.rewards.anima) then 
		if not ZGV.db.profile.WQreward.anima then return false,"rejected anima" end

	elseif (object.rewards.itemEquipLoc and object.rewards.itemEquipLoc~="") then 
		if not ZGV.db.profile.WQreward.gear then return false,"rejected gear" end
	elseif ZGV.db.profile.WQreward.other == false then 
		return false,"rejected other"
	end

	local valid_rep_found = false
	local any_rep_found = false
	for factionID,_ in pairs(object.reputationDetails) do
		any_rep_found = true
		if ZGV.db.profile.WQreputation[factionID] then 
			valid_rep_found = true
			break
		end
	end
	if not valid_rep_found and any_rep_found then return false,"no rep" end

	return true
end

local display_quests = {}
function WorldQuests:Update()
	if not ZGV.db.profile.worldquestenable then return end
	if not WorldQuests.needToUpdate then return end
	if not WorldQuests.QuestList then return end
	if not WorldMapFrame:IsVisible() then return end
	if WorldMapFrame:IsMaximized() then WorldQuests.DisplayFrame:Hide() end

	WorldQuests.DisplayFrame.DisplayOverride:Hide()
	WorldQuests.DisplayFrame.ModeDropdown:Show()
	WorldQuests.DisplayFrame.RewardsDropdown:Show()
	WorldQuests.DisplayFrame.DisplayMode:Show()

	local continent = ZGV.GetMapContinent(WorldQuests.current_mapid)
	if not WorldQuests.useCache then 
		WorldQuests:GetWorldQuests() 

		if continent==1550 then -- shadowlands
			WorldQuests.DisplayFrame.ReputationDropdownDRA:Hide()
			WorldQuests.DisplayFrame.ReputationDropdownSHA:Show()
			WorldQuests.DisplayFrame.ReputationDropdownBFA:Hide()
			WorldQuests.DisplayFrame.ReputationDropdownLEG:Hide()
		elseif continent==905 or continent==619 or WorldQuests.current_mapid==905 or WorldQuests.current_mapid==619 then -- legion
			WorldQuests.DisplayFrame.ReputationDropdownDRA:Hide()
			WorldQuests.DisplayFrame.ReputationDropdownSHA:Hide()
			WorldQuests.DisplayFrame.ReputationDropdownBFA:Hide()
			WorldQuests.DisplayFrame.ReputationDropdownLEG:Show()
		elseif continent==1978 then -- dragonflight
			WorldQuests.DisplayFrame.ReputationDropdownDRA:Show()
			WorldQuests.DisplayFrame.ReputationDropdownSHA:Hide()
			WorldQuests.DisplayFrame.ReputationDropdownBFA:Hide()
			WorldQuests.DisplayFrame.ReputationDropdownLEG:Hide()
		else -- bfa
			WorldQuests.DisplayFrame.ReputationDropdownDRA:Hide()
			WorldQuests.DisplayFrame.ReputationDropdownSHA:Hide()
			WorldQuests.DisplayFrame.ReputationDropdownBFA:Show()
			WorldQuests.DisplayFrame.ReputationDropdownLEG:Hide()
		end
	end -- only requery when events tell us to

	WorldQuests.useCache = false
	WorldQuests.needToUpdate = false


	-- prepare data
	local mapdata = ZGV.GetMapInfo(WorldQuests.current_mapid)
	local QuestList = WorldQuests.QuestList
	local ROW_COUNT = QuestList:CountRows()
	local Quests = WorldQuests.Quests

	if #WorldQuests.Quests==0 or not WorldQuests.DisplayAll then
		Quests = WorldQuests.QuestQueueDetails
	end

	if #WorldQuests.Quests==0 then
		WorldQuests.DisplayFrame.DisplayOverride:Show()
		WorldQuests.DisplayFrame.ModeDropdown:Hide()
		WorldQuests.DisplayFrame.RewardsDropdown:Hide()
		WorldQuests.DisplayFrame.ReputationDropdownBFA:Hide()
		WorldQuests.DisplayFrame.ReputationDropdownLEG:Hide()
		WorldQuests.DisplayFrame.DisplayMode:Hide()
	end

	if #WorldQuests.Quests==0 and #WorldQuests.QuestQueueDetails==0 then 
		WorldQuests.DisplayFrame:Hide()
	end


	-- filter
	table.wipe(display_quests)
	for ii,questItem in ipairs(Quests) do 
		if WorldQuests:IsValidQuest(questItem) then
			table.insert(display_quests,questItem)
		end
	end

	-- sort data
	local sorting_mode, sorting_dir = ZGV.db.profile.WQSorting[1], ZGV.db.profile.WQSorting[2]

	table.sort(display_quests,function(a,b)
		local a_value, b_value

		if sorting_mode=="name" then
			a_value = a.title
			b_value = b.title
		elseif sorting_mode=="faction" then
			a_value = a.reputationName
			b_value = b.reputationName
		elseif sorting_mode=="time" then
			a_value = a.time
			b_value = b.time
		elseif sorting_mode=="zone" then
			a_value = a.mapName
			b_value = b.mapName
		elseif sorting_mode=="rewards" then
			a_value = a.currencies.name or a.rewards.itemname or (a.gold and tostring("gold "..a.gold))
			b_value = b.currencies.name or b.rewards.itemname or (b.gold and tostring("gold "..b.gold))
		end

		if a_value and b_value and a_value~=b_value then
			if sorting_dir=="asc" then 
				return a_value<b_value 
			else 
				return a_value>b_value
			end
		else
			return a.title<b.title
		end
	end)

	-- display data
	WorldQuests.QuestsOffset = max(0,min(WorldQuests.QuestsOffset,#display_quests-ROW_COUNT))
	local WQ_RowNum=0
	local WQ_RowOff=WorldQuests.QuestsOffset

	--Spoo(display_quests)

	WQ_RowOff=WorldQuests.QuestsOffset
	for ii,questItem in ipairs(display_quests) do 
		WQ_RowNum = ii-WQ_RowOff
		if WQ_RowNum>0 and WQ_RowNum<ROW_COUNT+1 then 
			local row = QuestList.rows[WQ_RowNum]

			if row.toggle:GetNormalTexture() then row.toggle:GetNormalTexture():Show() end
			if row.toggle:GetDisabledTexture() then row.toggle:GetDisabledTexture():Show() end

			if WorldQuests.QuestQueue[questItem.questID] then
				row.toggle:SetToggle(true,"no callback")
			else
				row.toggle:SetToggle(false,"no callback")
			end

			if guide_exists(questItem.questID) then
				row.toggle.canToggle=true
				row.toggle:SetScript("OnEnter",nil)
				row.toggleOverlay:SetScript("OnEnter",nil)
			else
				-- SetDisableTooltip()
				-- Disable()
				row.toggle.canToggle=false
				row.toggle:SetScript("OnEnter",function() 
					GameTooltip:SetOwner(row.toggle,"ANCHOR_BOTTOM")
					GameTooltip:SetText(L["wqp_no_guide"]) 
					GameTooltip:Show()
				end)
				row.toggleOverlay:SetScript("OnEnter",function() row.toggle:GetScript("OnEnter")() end)
				row.toggle:GetNormalTexture():Hide()
				row.toggle:GetDisabledTexture():Show()
			end

			local texture_index = quest_icons[questItem.type] or 0
			if questItem.type == Enum.QuestTagType.Profession then
				texture_index = quest_icons[questItem.tradeskill]
			elseif questItem.type == Enum.QuestTagType.FactionAssault then
				if player_faction=="alliance" then texture_index = "ALLIANCE" end
			end
			row.icon:SetTexCoord(unpack(ZGV.IconSets.WorldQuest[texture_index].texcoord))
			
			row.name:SetText(questItem.rarity..questItem.title)

			local reward = questItem.rewards
			if reward.itemname then -- item
				local rewardtext = reward.itemname
				if reward.itemEquipLoc~="" then rewardtext = _G[reward.itemEquipLoc] or "" end
				row.rewards:SetText( reward.colorcode ..rewardtext.."|r")
				row.rewardicon:SetTexture( reward.texture )
			elseif questItem.currencies.name then -- currencies
				local cur = questItem.currencies
				row.rewards:SetText( ("x %s"):format(cur.count) )
				row.rewardicon:SetTexture( cur.texture )
			elseif questItem.gold>0 then
				row.rewards:SetText( ZGV.GetMoneyString(questItem.gold) )
				row.rewardicon:SetTexture(133784)
			else
				row.rewards:SetText( "" )
				row.rewardicon:SetTexture(ZGV.DIR.."\\Skins\\blank")
				WorldQuests.useCache = false
				WorldQuests.needToUpdate = true
			end

			row.faction:SetText( questItem.reputations )

			if not questItem.timedisp then
			--if questItem.type=="daily" or questItem.type=="combatally" then
				row.time:SetText("|cffffffff-|r")
			else
				row.time:SetText(WorldQuests:FormatTime(questItem.timedisp or 0) )
			end

			row.zone:SetText(questItem.mapName)
			row:Show()

			row.quest = questItem

			row.backalpha = WQ_RowNum%2==0 and 0.0 or 0.06
			row.back:SetAlpha(row.backalpha)
		end
	end
	QuestList.scrollbar:TotalValue(#display_quests)
	QuestList.scrollbar:SetValue(WQ_RowOff)
	for r=WQ_RowNum+1,ROW_COUNT do QuestList.rows[r]:Hide() QuestList.rows[r].item=nil end

	WorldQuests.DataProvier:RefreshAllData()
	WorldQuests:QueueDetailsLoad()
end

function WorldQuests:ShowTooltipReward(row)
	local quest = row.quest

	if quest.rewards.itemlink then
		GameTooltip:SetHyperlink(quest.rewards.itemlink)
	elseif quest.currencies.name then -- currencies
		GameTooltip:AddLine( quest.currencies.count.." "..quest.currencies.name )
	elseif quest.gold>0 then
		GameTooltip:AddLine( ZGV.GetMoneyString(quest.gold) )
	end	
	WorldQuests:HighlightShow(row) 
end

function WorldQuests:ShowTooltipQuest(row)
	-- code lifted and adjusted from blizzards TaskPOI_OnEnter
	local tooltip_object = GameTooltip

	local questItem = row.quest
	tooltip_object:SetOwner(row.name, "ANCHOR_BOTTOM");

	if ( not HaveQuestData(questItem.questID) ) then
		tooltip_object:SetText(RETRIEVING_DATA, RED_FONT_COLOR.r, RED_FONT_COLOR.g, RED_FONT_COLOR.b);
		tooltip_object:Show();
		return;
	end

	local title, factionID, capped = C_TaskQuest.GetQuestInfoByQuestID(questItem.questID);
	if ( questItem.worldQuest ) then
		local info = C_QuestLog.GetQuestTagInfo(questItem.questID)
		if info then 
			local color = WORLD_QUEST_QUALITY_COLORS[info.quality];
			tooltip_object:SetText(title, color.r, color.g, color.b);
			QuestUtils_AddQuestTypeToTooltip(tooltip_object, questItem.questID, NORMAL_FONT_COLOR);
				
			local factionName = factionID and GetFactionInfoByID(factionID);
			if (factionName) then
				local reputationYieldsRewards = (not capped) or C_Reputation.IsFactionParagon(factionID);
				if (reputationYieldsRewards) then
					tooltip_object:AddLine(factionName);
				else 
					tooltip_object:AddLine(factionName, GRAY_FONT_COLOR:GetRGB());
				end
			end

			if info.displayExpiration then
				WorldMap_AddQuestTimeToTooltip(questItem.questID);
			end
		end
	else
		tooltip_object:SetText(title);
	end

	for objectiveIndex = 1, questItem.numObjectives do
		local objectiveText, objectiveType, finished, numFulfilled, numRequired = GetQuestObjectiveInfo(questItem.questID, objectiveIndex, false);
		if ( objectiveText and #objectiveText > 0 ) then
			local color = finished and GRAY_FONT_COLOR or HIGHLIGHT_FONT_COLOR;
			tooltip_object:AddLine(QUEST_DASH .. objectiveText, color.r, color.g, color.b, true);
		end
	end
	local objectiveText, objectiveType, finished, numFulfilled, numRequired = GetQuestObjectiveInfo(questItem.questID, 1, false);
	local percent = C_TaskQuest.GetQuestProgressBarInfo(questItem.questID);
	if ( percent ) then
		GameTooltip_ShowProgressBar(tooltip_object, 0, 100, percent, PERCENTAGE_STRING:format(percent));
	end

	GameTooltip_AddQuestRewardsToTooltip(tooltip_object, questItem.questID);

	if ( questItem.worldQuest and tooltip_object.AddDebugWorldQuestInfo ) then
		tooltip_object:AddDebugWorldQuestInfo(questItem.questID);
	end

	tooltip_object:Show();
	tooltip_object.recalculatePadding = true;

	WorldQuests:HighlightShow(row) 
end

function WorldQuests:ShowTooltipFaction(row)
	for i,line in pairs(row.quest.reputationDetails) do
		GameTooltip:AddLine( line )
	end
	WorldQuests:HighlightShow(row) 
end

function WorldQuests:ToggleAll(isChecked)
	local Quests = WorldQuests.Quests

	if #WorldQuests.Quests==0 or not WorldQuests.DisplayAll then
		Quests = WorldQuests.QuestQueueDetails
	end

	for i,quest in pairs(Quests) do
		if WorldQuests:IsValidQuest(quest) then
			if isChecked then
				ZGV:Debug("&worldquests queueued %s",quest.questID)
				if guide_exists(quest.questID) then
					WorldQuests.QuestQueue[quest.questID] = {m=quest.mapID, x=quest.x, y=quest.y, questID=quest.questID, numObjectives=quest.numObjectives}
				end
			else
				ZGV:Debug("&worldquests unqueueued %s",quest.questID)
				WorldQuests.QuestQueue[quest.questID] = nil
			end
		end
	end

	WorldQuests:QueueDetailsLoad()

	WorldQuests.needToUpdate = true
	WorldQuests.useCache = true
end

function WorldQuests:CreateFrame()	
	self.DisplayFrame = CHAIN(ui:Create("Frame",WorldMapFrame,"ZGVWQ"))
		:SetPoint("TOPLEFT",WorldMapFrame,"TOPRIGHT")
		:SetPoint("BOTTOMLEFT",WorldMapFrame,"BOTTOMRIGHT")
		:SetWidth(520+2*SkinData("WorldQuestMargin"))
		:SetHeight(500)
		:EnableMouse(true)
		:RegisterEvent("QUEST_WATCH_LIST_CHANGED")
		:RegisterEvent("QUEST_LOG_UPDATE")
		:RegisterEvent("AREA_POIS_UPDATED")
		:RegisterEvent("QUEST_REMOVED")
		:SetScript("OnEvent",function() 
			WorldQuests.needToUpdate = true
			WorldQuests.useCache = false
		end)
		:SetScript("OnUpdate",function() WorldQuests:Update() end)
		:SetBackdrop(SkinData("WorldQuestBackdrop"))
		:SetBackdropColor(unpack(SkinData("WorldQuestBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("WorldQuestBackdropBorderColor")))
		:Hide()
		.__END
	local MF = self.DisplayFrame 



	MF.Logo = CHAIN(MF:CreateTexture())
		:SetPoint("TOP",MF,"TOP",0,-3) 
		:SetSize(100,25)
		:SetTexture(SkinData("TitleLogo"))
	.__END
	MF.close = CHAIN(CreateFrame("Button",nil,MF))
		:SetPoint("TOPRIGHT",-5,-5)
		:SetSize(17,17)
		:SetScript("OnClick",function() WorldQuests:Hide() ZGV.db.profile.worldquestenable=false end)
		.__END
	ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(MF.close)

	MF.DisplayMode = CHAIN(ui:Create("ToggleButton",MF))
		:SetPoint("TOPLEFT",MF,"TOPLEFT",16,-35)
		:SetFont(FONT,12)
		:SetText(L["wqp_only_selected"])
		:SetToggle(false)
		:SetScript("OnEnter",function(self) 
			CHAIN(GameTooltip):SetOwner(self, "ANCHOR_BOTTOM") 
			:SetText(type(self.tooltip)=="function" and self:tooltip() or tostring(self.tooltip)) 
			:Show() 
			end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END
	MF.DisplayMode.tooltip = "Show only quests from all zones\nyou have added to the queue"
	MF.DisplayMode:RegisterToggleCallback(function()
		WorldQuests.DisplayAll = not MF.DisplayMode:IsChecked()
		WorldQuests.needToUpdate = true
		WorldQuests.useCache = true
	end)

	MF.DisplayOverride = CHAIN(MF:CreateFontString())
		:SetSize(260,20)
		:SetPoint("TOPLEFT",MF,"TOPLEFT",15,-32)
		:SetFont(FONT,12)
		:SetJustifyH("LEFT")
		:SetText(L["wqp_showing_queue"])
		:Hide()
	.__END


	-- dropdowns
	local profile = ZGV.db.profile
	-- Type
	MF.ModeDropdown = CHAIN(ui:Create("Multiselect",MF,2,MF:GetFrameLevel()+2))
		:SetPoint("TOPLEFT",MF,"TOPLEFT",190,-30)
		:SetSize(100,20)
		:AddTooltip("ANCHOR_TOPLEFT","Type")
		:SetName(L["wqp_filter_Type"])
	.__END
	
	for optnum,opt in ipairs(WQ_TYPES) do
		local item = MF.ModeDropdown:AddItem(opt[1],opt[2],opt[3], function(item) 
			ZGV.db.profile.WQmode[opt[3]] = not ZGV.db.profile.WQmode[opt[3]] 
			item.checked= ZGV.db.profile.WQmode[opt[3]] 
			WorldQuests.needToUpdate = true
			WorldQuests.useCache = true
		end, opt[4])
		item.checked = ZGV.db.profile.WQmode[opt[3]]
	end

	-- Reward
	MF.RewardsDropdown = CHAIN(ui:Create("Multiselect",MF,2,MF:GetFrameLevel()+2))
		:SetPoint("TOPLEFT",MF.ModeDropdown.frame,"TOPRIGHT",10,0)
		:SetSize(100,20)
		:AddTooltip("ANCHOR_TOPLEFT","Reward")
		:SetName(L["wqp_filter_Reward"])
	.__END
	
	for optnum,opt in ipairs(WQ_REWARDS) do
		local item = MF.RewardsDropdown:AddItem(opt[1],opt[2],opt[3], function(item) 
			ZGV.db.profile.WQreward[opt[3]] = not ZGV.db.profile.WQreward[opt[3]] 
			item.checked= ZGV.db.profile.WQreward[opt[3]] 
			WorldQuests.needToUpdate = true
			WorldQuests.useCache = true
		end, opt[4])
		item.checked = ZGV.db.profile.WQreward[opt[3]]
	end

	-- Rep
	MF.ReputationDropdownBFA = CHAIN(ui:Create("Multiselect",MF,2,MF:GetFrameLevel()+2))
		:SetPoint("TOPLEFT",MF.RewardsDropdown.frame,"TOPRIGHT",10,0)
		:SetSize(100,20)
		:AddTooltip("ANCHOR_TOPLEFT","Faction")
		:SetName(L["wqp_filter_Faction"])
	.__END
	for optnum,opt in ipairs(WQ_FACTIONS_BFA) do
		local item = MF.ReputationDropdownBFA:AddItem(opt[1],opt[2],opt[3], function(item) 
			ZGV.db.profile.WQreputation[opt[3]] = not ZGV.db.profile.WQreputation[opt[3]] 
			item.checked= ZGV.db.profile.WQreputation[opt[3]] 
			WorldQuests.needToUpdate = true
			WorldQuests.useCache = true
		end, opt[4])
		item.checked = ZGV.db.profile.WQreputation[opt[3]]
	end
	MF.ReputationDropdownLEG = CHAIN(ui:Create("Multiselect",MF,2,MF:GetFrameLevel()+2))
		:SetPoint("TOPLEFT",MF.RewardsDropdown.frame,"TOPRIGHT",10,0)
		:SetSize(100,20)
		:AddTooltip("ANCHOR_TOPLEFT","Faction")
		:SetName(L["wqp_filter_Faction"])
		:Hide()
	.__END
	for optnum,opt in ipairs(WQ_FACTIONS_LEG) do
		local item = MF.ReputationDropdownLEG:AddItem(opt[1],opt[2],opt[3], function(item) 
			ZGV.db.profile.WQreputation[opt[3]] = not ZGV.db.profile.WQreputation[opt[3]] 
			item.checked= ZGV.db.profile.WQreputation[opt[3]] 
			WorldQuests.needToUpdate = true
			WorldQuests.useCache = true
		end, opt[4])
		item.checked = ZGV.db.profile.WQreputation[opt[3]]
	end
	MF.ReputationDropdownSHA = CHAIN(ui:Create("Multiselect",MF,2,MF:GetFrameLevel()+2))
		:SetPoint("TOPLEFT",MF.RewardsDropdown.frame,"TOPRIGHT",10,0)
		:SetSize(100,20)
		:AddTooltip("ANCHOR_TOPLEFT","Faction")
		:SetName(L["wqp_filter_Faction"])
		:Hide()
	.__END
	for optnum,opt in ipairs(WQ_FACTIONS_SHA) do
		local item = MF.ReputationDropdownSHA:AddItem(opt[1],opt[2],opt[3], function(item) 
			ZGV.db.profile.WQreputation[opt[3]] = not ZGV.db.profile.WQreputation[opt[3]] 
			item.checked= ZGV.db.profile.WQreputation[opt[3]] 
			WorldQuests.needToUpdate = true
			WorldQuests.useCache = true
		end, opt[4])
		item.checked = ZGV.db.profile.WQreputation[opt[3]]
	end
	MF.ReputationDropdownDRA = CHAIN(ui:Create("Multiselect",MF,2,MF:GetFrameLevel()+2))
		:SetPoint("TOPLEFT",MF.RewardsDropdown.frame,"TOPRIGHT",10,0)
		:SetSize(100,20)
		:AddTooltip("ANCHOR_TOPLEFT","Faction")
		:SetName(L["wqp_filter_Faction"])
		:Hide()
	.__END
	for optnum,opt in ipairs(WQ_FACTIONS_DRA) do
		local item = MF.ReputationDropdownDRA:AddItem(opt[1],opt[2],opt[3], function(item) 
			ZGV.db.profile.WQreputation[opt[3]] = not ZGV.db.profile.WQreputation[opt[3]] 
			item.checked= ZGV.db.profile.WQreputation[opt[3]] 
			WorldQuests.needToUpdate = true
			WorldQuests.useCache = true
		end, opt[4])
		item.checked = ZGV.db.profile.WQreputation[opt[3]]
	end


	WorldQuests:SetFilters()

	for i,data in pairs(DATATABLE_COLUMNS) do  if data.texture=="_iconsets_worldquest_" then  data.texture=ZGV.IconSets.WorldQuest.file  end  end  --delayed assignment :(

	-- Content
	DATATABLE_DATA.POSX = DATATABLE_DATA.POSX+SkinData("WorldQuestMargin")
	self.QuestList = ui:Create("ScrollTable",MF,"ZGVWQLIST",DATATABLE_COLUMNS,DATATABLE_DATA)
	--self.QuestList.col_toggle:Hide()
	--self.QuestList.col_icon:SetPoint("TOPLEFT",self.QuestList,"TOPLEFT",23,0)

	self.QuestList.col_toggle:RegisterToggleCallback(function()
		WorldQuests:ToggleAll(self.QuestList.col_toggle:IsChecked())
	end)



	self.QuestList:SetScript("OnMouseWheel", function(self,delta)
		WorldQuests.QuestsOffset=WorldQuests.QuestsOffset-delta
		WorldQuests.needToUpdate = true
		WorldQuests.useCache = true
		WorldQuests.hideTooltip=true
		WorldQuests.Highlight:Hide()
		GameTooltip:Hide()
	end)
	self.QuestList.scrollbar:SetScript("OnVerticalScroll",function(me,offset)
		WorldQuests.QuestsOffset=math.round(offset)
		WorldQuests.needToUpdate = true
		WorldQuests.useCache = true
		WorldQuests.Highlight:Hide()
		GameTooltip:Hide()
	end)

	for rownum,row in ipairs(self.QuestList.rows) do
		row:SetScript("OnEnter", function() WorldQuests:HighlightShow(row) end)
		row:SetScript("OnLeave", function() WorldQuests:HighlightHide(row) end)
		
		row:SetScript("OnClick", function() 
			-- when we select world quest, waypoint.showwaypoints fires twice, and since we do not want to switch maps, lets have showwaypoints ignore next two map switches
			-- hackish, but it makes the map behave the way we want to
			WorldQuests.PreventMapSwitch = 2 
			WorldQuests:SuggestWorldQuestGuideFromList(row) 
		end)

		-- add overlay to toggle so that clicking outside the small rectangle does not trigger row onclick event
		row.toggleOverlay = CHAIN(CreateFrame("Button",nil,row))
			:SetPoint("TOP")
			:SetPoint("BOTTOM")
			:SetPoint("LEFT",row.toggle,"LEFT",-5,0)
			:SetPoint("RIGHT",row.toggle,"RIGHT",5,0)
			:SetScript("OnClick",function() row.toggle:Toggle(not row.toggle.curToggle) end)
			:SetScript("OnLeave",function() GameTooltip:Hide() end)
		.__END

		row.toggle:RegisterToggleCallback(function()
			WorldQuests:QueueUpdate(row)
		end)

		--row.toggle:SetPoint("LEFT",row,"LEFT",-10,0)
	end

	MF.SelectedQuests = CHAIN(MF:CreateFontString())
		:SetSize(160,20)
		:SetPoint("TOPLEFT",self.QuestList,"BOTTOMLEFT", 0,0)
		:SetFont(FONT,12)
		:SetJustifyH("LEFT")
		:SetText(L["wqp_quests_selected"]:format(0))
	.__END

	MF.StartButton = CHAIN(CreateFrame("Button",nil,MF,"ZGV_DefaultSkin_TitleButton_Template"))
		:SetSize(20,20)
		:SetScript("OnClick",function(self,button) WorldQuests:QueueProcess() end)
		:SetPoint("LEFT",MF.SelectedQuests,"RIGHT",10,-1)
		:Show()
		:SetScript("OnEnter",function(self) 
			GameTooltip:SetOwner(self, "ANCHOR_BOTTOM") 
			GameTooltip:SetText(L["wqp_start_queue"]) 
			GameTooltip:Show() 
		end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
	.__END
	MF.StartButton.buttonkey = "LOADGUIDE"
	MF.StartButton:ApplySkin()

	MF.FooterSettingsButton = CHAIN(CreateFrame("Button",nil,MF))
		:SetPoint("BOTTOMRIGHT",-5,5)
		:SetSize(15,15)
		:SetScript("OnClick",function() ZGV:OpenOptions("maps") end)
	.__END
	ZGV.ButtonSets.TitleButtons.SETTINGS:AssignToButton(MF.FooterSettingsButton)

	self.Highlight = CHAIN(CreateFrame("Button",nil,MF))
		:SetSize(25,25)
		:SetNormalTexture(ZGV.StyleDir.."mapicons")
		:SetAlpha(0.7)
	.__END
	self.Highlight:GetNormalTexture():SetTexCoord(1/2,1,0,1/2)
end

function WorldQuests:SetFilters()
	if not ZGV.db.profile.WQSorting then
		ZGV.db.profile.WQSorting = {"name","asc"}
	end

	if not ZGV.db.profile.WQmode then
		ZGV.db.profile.WQmode = {}
		for optnum,opt in ipairs(WQ_TYPES) do ZGV.db.profile.WQmode[opt[3]]=opt[2] end
	end

	if not ZGV.db.profile.WQreward then 
		ZGV.db.profile.WQreward = {}
		for optnum,opt in ipairs(WQ_REWARDS) do ZGV.db.profile.WQreward[opt[3]]=opt[2] end
	end

	if not ZGV.db.profile.WQreputation then
		ZGV.db.profile.WQreputation = {}
		for optnum,opt in ipairs(WQ_FACTIONS_BFA) do ZGV.db.profile.WQreputation[opt[3]]=opt[2] end
		for optnum,opt in ipairs(WQ_FACTIONS_LEG) do ZGV.db.profile.WQreputation[opt[3]]=opt[2] end
		for optnum,opt in ipairs(WQ_FACTIONS_SHA) do ZGV.db.profile.WQreputation[opt[3]]=opt[2] end
		for optnum,opt in ipairs(WQ_FACTIONS_DRA) do ZGV.db.profile.WQreputation[opt[3]]=opt[2] end
	end

	if not ZGV.db.profile.WQupdate1002 then
		for i,v in pairs(faction_data) do 
			if v.exp=="dra" then 
				ZGV.db.profile.WQreputation[i]=true
			end
		end
		ZGV.db.profile.WQupdate1002 = true
	end
		

	ZGV.db.char.QuestQueue = ZGV.db.char.QuestQueue or {}
	WorldQuests.QuestQueue = ZGV.db.char.QuestQueue
end

function WorldQuests:Hide()
	self.DisplayFrame:Hide()
end

WorldQuests.QuestQueueDetails = {} -- used in display only selected quests mode
function WorldQuests:QueueUpdate(row)
	if not row then return end
	if not row.quest then return end
	local quest = row.quest

	-- toggle single row
	if row.toggle:IsChecked() then
		ZGV:Debug("&worldquests queueued %s",quest.questID)
		WorldQuests.QuestQueue[quest.questID] = {m=quest.mapID, x=quest.x, y=quest.y, questID=quest.questID, numObjectives=quest.numObjectives}
	else
		ZGV:Debug("&worldquests unqueueued %s",quest.questID)
		WorldQuests.QuestQueue[quest.questID] = nil
	end

	
	-- update toggle all rows state
	local Quests = WorldQuests.Quests
	if #WorldQuests.Quests==0 or not WorldQuests.DisplayAll then
		Quests = WorldQuests.QuestQueueDetails
	end

	local all_toggled = true
	for i,quest in pairs(Quests) do
		if not (WorldQuests:IsValidQuest(quest) and WorldQuests.QuestQueue[quest.questID]) then
			all_toggled = false
			break
		end
	end

	WorldQuests.QuestList.col_toggle:SetToggle(all_toggled,"no callback")

	WorldQuests:QueueDetailsLoad()
end

function WorldQuests:QueueDetailsLoad()
	table.wipe(WorldQuests.QuestQueueDetails)
	for qid,qdata in pairs(WorldQuests.QuestQueue) do
		if C_TaskQuest.IsActive(qid) then
			local data = {numObjectives=qdata.numObjectives}
			get_quest_details(data,qid)
			table.insert(WorldQuests.QuestQueueDetails,data)
		else
			WorldQuests.QuestQueue[qid] = nil
		end
	end
	WorldQuests:QueueUpdateButton()
end

local more_points = {}
function WorldQuests:QueueProcess()
	WorldQuests:QueueDetailsLoad()
	ZGV:Debug("&worldquests QueueProcess")

	table.wipe(more_points)
	local endpoint

	local current_zone = C_Map.GetBestMapForUnit("player")
	local mapinfo = ZGV.GetMapInfo(current_zone)
	local parent = mapinfo and mapinfo.parentMapID

	if ZGV.db.profile.worldquestlocal then
		-- check quests in current zone
		for questID,quest in pairs(WorldQuests.QuestQueue) do
			if not ZGV.Parser.ConditionEnv.readyq(questID) then
				if quest.m == current_zone then
					if endpoint then
						table.insert(more_points,{m=quest.m, x=quest.x, y=quest.y, questID=questID, title="quest "..questID, noskip=true})
					else
						endpoint = quest
					end
				end
			end
		end
		if endpoint then 
			LibRover:FindPath(0,0,0, endpoint.m,endpoint.x,endpoint.y, ZGV.WorldQuests.QueuePathHandler, {direct=not ZGV.db.profile.pathfinding, multiple_ends=more_points, reportEnd=true })
			return
		end

		-- if current zone is cleared, check its parent
		for questID,quest in pairs(WorldQuests.QuestQueue) do
			if not ZGV.Parser.ConditionEnv.readyq(questID) then
				if quest.m == parent then
					if endpoint then
						table.insert(more_points,{m=quest.m, x=quest.x, y=quest.y, questID=questID, title="quest "..questID, noskip=true})
					else
						endpoint = quest
					end
				end
			end
		end
		if endpoint then 
			LibRover:FindPath(0,0,0, endpoint.m,endpoint.x,endpoint.y, ZGV.WorldQuests.QueuePathHandler, {direct=not ZGV.db.profile.pathfinding, multiple_ends=more_points, reportEnd=true })
			return
		end
	end

	-- if current and parent are cleared, check quests in all zones
	endpoint = nil
	for questID,quest in pairs(WorldQuests.QuestQueue) do
		if not ZGV.Parser.ConditionEnv.readyq(questID) then
			if endpoint then
				table.insert(more_points,{m=quest.m, x=quest.x, y=quest.y, questID=questID, title="quest "..questID, noskip=true})
			else
				endpoint = quest
			end
		end
	end
	if not endpoint then return end

	LibRover:FindPath(0,0,0, endpoint.m,endpoint.x,endpoint.y, ZGV.WorldQuests.QueuePathHandler, {direct=not ZGV.db.profile.pathfinding, multiple_ends=more_points, reportEnd=true })
end

function WorldQuests:QueueUpdateButton()
	local queue_count = 0
	for questID,quest in pairs(WorldQuests.QuestQueue) do
		queue_count = queue_count + 1
	end

	WorldQuests.DisplayFrame.SelectedQuests:SetText(L["wqp_quests_selected"]:format(queue_count))
end

function WorldQuests.QueuePathHandler(state,path,ext,reason)
	local result,rm,rx,ry,rq
	if state=="success" then
		local m,x,y = ext.endnode.m, ext.endnode.x, ext.endnode.y
		rm,rx,ry = m,x,y
		ZGV:Debug("&worldquests handler success",m,x,y)
		for i,v in pairs(WorldQuests.QuestQueue) do
			if v.m==m and v.x==x and v.y==y then
				rq = v.questID
				result = WorldQuests:SuggestWorldQuestGuide(nil,v.questID,true,m)
			end
		end
	elseif state=="failure" then
		ZGV:Debug("&worldquests handler failure")
		local _,quest = next(WorldQuests.QuestQueue)
		rm,rx,ry,rq = quest.m, quest.x, quest.y, quest.questID
		result = WorldQuests:SuggestWorldQuestGuide(nil,quest.questID,true,quest.m)
	end

	if (state=="success" or state=="failure") and not result then
		local guide = world_quest_guides[rm or 0]
		-- open current zone wq guide in tab
		if guide then
			local tab = ZGV.Tabs:GetSpecialTabFromPool("worldquestzone")
			tab:SetAsCurrent()
			ZGV:SetGuide(guide.title)
		end
		ZGV.Pointer:SetWaypoint(rm,rx,ry,{title=C_TaskQuest.GetQuestInfoByQuestID(rq),arrow=true,findpath=true,type="manual"},true)
	end

end

function WorldQuests:QuestsQueued()
	local counter = 0
	for questID,quest in pairs(WorldQuests.QuestQueue) do
		if not ZGV.Parser.ConditionEnv.readyq(questID) then
			counter = counter + 1
		end
	end
	return counter>0
end

WorldQuests.DataProvier = CreateFromMixins(WorldQuestDataProviderMixin)

function WorldQuests.DataProvier:GetPinTemplate()
	return "ZygorWorldQuestPinTemplate";
end

function WorldQuests.DataProvier:RefreshAllData()
	local pinsToRemove = {};
	for questID in pairs(self.activePins) do
		pinsToRemove[questID] = true;
	end

	local mapCanvas = self:GetMap();

	local mapID = mapCanvas:GetMapID();
	if (mapID and ZGV.db.profile.worldquestenable) then
		local mapdata = ZGV.GetMapInfo(mapID)
		if WorldQuests.HiddenQuests[mapID] or show_dailies_on_map[mapID] or mapdata and mapdata.mapType==Enum.UIMapType.Continent then -- only show our pins on continents, leave rest to default blizzard
			for i, info in ipairs(WorldQuests.Quests) do
				pinsToRemove[info.questId] = nil;
				local pin = self.activePins[info.questId];
				if pin then
					pin:RefreshVisuals();
					pin:SetPosition(info.x, info.y);
				else
					self.activePins[info.questId] = self:AddWorldQuest(info);
				end

				if pin then
					pin.ZygorMapId = info.mapID

					if info.isCombatAllyQuest or info.isDaily then
						pin.worldQuest = false
					end
					if info.hiddenworldquest then
						pin.hiddenworldquest = true
					else
						pin.hiddenworldquest = nil
					end
				end
			end
		end
	end


	for questID in pairs(pinsToRemove) do
		mapCanvas:RemovePin(self.activePins[questID]);
		self.activePins[questID] = nil;
	end

	mapCanvas:TriggerEvent("WorldQuestsUpdate", mapCanvas:GetNumActivePinsByTemplate(self:GetPinTemplate()));
end

WorldMapFrame:AddDataProvider(WorldQuests.DataProvier)

tinsert(ZGV.startups,{"WorldQuests",function(self)
	WorldQuests:Startup()
	WorldQuests.QuestsOffset = 0
end})
