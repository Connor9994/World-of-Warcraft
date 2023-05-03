local name,ZGV = ...

-- MakeCondition 'globals'
-- GLOBAL _SelfUpdate,haspet

ZGV.Parser = {}
local Parser = ZGV.Parser

local L = ZygorGuidesViewer_L("Main")
local LG = ZygorGuidesViewer_L("Guides")

local BZL=ZGV.BZL
local BZR=ZGV.BZR

local table,string,tonumber,ipairs,pairs,setmetatable,tinsert = table,string,tonumber,ipairs,pairs,setmetatable,tinsert
local mod="%05d%05d"

--[[
local function split (s,t)
	local l = {n=0}
	local f = function (s)
		l.n = l.n + 1
		l[l.n] = s
	end
	local p = "%s*(.-)%s*"..t.."%s*"
	s = string.gsub(s,"^%s+","")
	s = string.gsub(s,"%s+$","")
	s = string.gsub(s,p,f)
	l.n = l.n + 1
	l[l.n] = string.gsub(s,"(%s%s*)$","")
	return l
end
--]]

-- Spec to Talent Tree # lookup table
local classspecs=
{
	["WARRIOR"]		= { "Arms","Fury","Protection",nil,"Starter" },
	["DEATHKNIGHT"]		= { "Blood","Frost","Unholy",nil,"Starter" },
	["MONK"]		= { "Brewmaster","Mistweaver","Windwalker",nil,"Starter" },
	["PALADIN"]		= { "Holy","Protection","Retribution",nil,"Starter" },
	["HUNTER"]		= { "BeastMastery","Marksmanship","Survival",nil,"Starter" },
	["ROGUE"]		= { "Assassination","Outlaw","Subtlety",nil,"Starter" },
	["PRIEST"]		= { "Discipline","Holy","Shadow",nil,"Starter" },
	["MAGE"]		= { "Arcane","Fire","Frost",nil,"Starter" },
	["WARLOCK"]		= { "Affliction","Demonology","Destruction",nil,"Starter" },
	["SHAMAN"]		= { "Elemental","Enhancement","Restoration",nil,"Starter" },
	["DRUID"]		= { "Balance","Feral","Guardian","Restoration","Starter" },
	["DEMONHUNTER"]		= { "Havoc","Vengeance",nil,nil,"Starter" },
	["EVOKER"]		= { "Devastation", "Preservation", nil, nil, "Starter" },
	["ADVENTURER"]		= { nil, nil, nil, nil, "Starter" },
}
if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
	classspecs["HUNTER"]		= { "Beast Mastery","Marksmanship","Survival" }
	classspecs["ROGUE"]		= { "Assassination","Combat","Subtlety" }
	classspecs["DRUID"]		= { "Balance","Feral","Restoration" }
	classspecs["DEMONHUNTER"]	= nil
end

Parser.classspecs = classspecs

ZGV.QuestRewardData= {
	[491] = "WARRIOR_Arms",
	[492] = "WARRIOR_Protection",
	[493] = "WARRIOR_Fury",

	[488] = "PALADIN_Holy",
	[489] = "PALADIN_Protection",
	[490] = "PALADIN_Retribution",

	[504] = "HUNTER_Beast Mastery",
	[505] = "HUNTER_Survival",
	[506] = "HUNTER_Marksmanship",

	[568] = "ROGUE_Assassination",
	[569] = "ROGUE_Outlaw",
	[570] = "ROGUE_Subtlety",

	[532] = "PRIEST_Holy",
	[533] = "PRIEST_Shadow",
	[534] = "PRIEST_Discipline",

	[587] = "SHAMAN_Enhancement",
	[588] = "SHAMAN_Elemental",
	[589] = "SHAMAN_Restoration",

	[584] = "MAGE_Arcane",
	[585] = "MAGE_Fire",
	[586] = "MAGE_Frost",

	[523] = "WARLOCK_Affliction",
	[524] = "WARLOCK_Demonology",
	[525] = "WARLOCK_Destruction",

	[511] = "MONK_Brewmaster",
	[512] = "MONK_Mistweaver",
	[513] = "MONK_Windwalker",

	[529] = "DRUID_Balance",
	[530] = "DRUID_Feral",
	[531] = "DRUID_Guardian",
	[545] = "DRUID_Restoration",

	[478] = "DEMONHUNTER_Havoc",
	[479] = "DEMONHUNTER_Vengeance",

	[541] = "DEATHKNIGHT_Blood",
	[542] = "DEATHKNIGHT_Frost",
	[543] = "DEATHKNIGHT_Unholy",
}

local questrewarddata=ZGV.QuestRewardData

ZGV.SpecByNumber = classspecs
local rclassspecs = {}
-- Reversing the table
for k,v in pairs(classspecs) do
	local reverse={}
	for i,j in ipairs(v) do
		reverse[j]=i
	end
	rclassspecs[k]=reverse
end
ZGV.SpecToNumber=rclassspecs


ZGV.ClassToNumber = {}
for i=1,GetNumClasses() do
	local name,tag,id = GetClassInfo(i)
	if tag then ZGV.ClassToNumber[tag] = i end
end

ZGV.actionmeta = {
	['goto'] = { skippable = true },
	fpath = { skippable = true },
	home = { skippable = true },
	hearth = { skippable = true },
}
local meta
do local string=mod meta=function(...) return string:format(...) end end

local function split(str,sep,reverse)
	local fields = {}
	str = str..sep
	local tinsert=tinsert
	str:gsub("(.-)"..sep, function(c) if reverse then tinsert(fields, c, 1) else tinsert(fields, c) end end)
	return fields
end

local LibRover = LibStub("LibRover-1.0")
local LibTaxi = LibStub("LibTaxi-1.0")

local function ParseMapXYDist(text,insanefloor,returnmany)
	local mapname,mapid,x,y,dist,disttype,flr,_,err,maptext

	-- First, try x,y,dist in various forms.

	local r_number = "(%-?[0-9%.]+)"
	local r_comma = "%s*,%s*"
	local r_maybecomma = "%s*,?%s*"

	-- OBSOLETE: x,y,dist
	                           --       mt?   ,?            -x______       ,   -y______      ,    -dist___
	maptext,x,y,dist = text:match("^%s*(.-)"..r_maybecomma..r_number..r_comma..r_number..r_comma..r_number.."%s*$")

	-- PRIMARY: x,y <> dist
	                                                    --     mt?   ,?            -x______  ,        -y______        <>        dist____
	if not x then maptext,x,y,disttype,dist = text:match("^%s*(.-)"..r_maybecomma..r_number..r_comma..r_number.."%s*([<>])%s*"..r_number.."%s*$") end

	-- PRIMARY: x,y
	                                    --       mt?   ,?            -x______  ,        -y______
	if not x then maptext,x,y = text:match("^%s*(.-)"..r_maybecomma..r_number..r_comma..r_number.."%s*$") end

	if maptext then text = maptext end

	-- If there were any x,y,dist in the text, they're now gone. What's left is just a map, MAYBE.
	if #text>0 then
		-- PRIMARY: whatever##id
		                --     id_
		mapid = text:match("##(%d+)") -- could have mapname, too, but we don't care

		-- SECONDARY: map/floor
		                                      --       map_   /   floor
		if not mapid then mapname,flr = text:match("%s*(.-)%s*/%s*(%d+)") end

		-- LAST RESORT: map
		if not mapid and not mapname then mapname = text end
	end

	-- sanitize
	mapid = tonumber(mapid) or tonumber(mapname)
	if mapname=="" then mapname=nil end
	flr = tonumber(flr)

	x = tonumber(x)  x=x and x*0.01
	y = tonumber(y)  y=y and y*0.01

	dist = tonumber(dist)
	if dist and disttype==">" then dist=-dist end   -- distance written as <40 is usual; >40 = reverse distance check: "leave the area".

	--	if x then x=x/100 end
	--	if y then y=y/100 end
	--	if dist then dist=dist/100 or 0.2 end
	--if not dist then dist=0.2 end

	-- Map IDs, here we come.
	if mapname and not mapid then
		mapid,flr = LibRover:GetMapByNameFloor(mapname,flr,text)
	end
	if type(mapid)=="table" then mapid=mapid[1] end

	if returnmany then
		return mapid,mapid,mapid,flr,x,y,dist, err
	else
		return mapid,flr,x,y,dist, err
	end
end
Parser.ParseMapXYDist=ParseMapXYDist


-- cache map IDs. Testing.
function ZGV:DumpMapIDsByName()
	ZGV.MapIDsByName = {}
	local arr=ZGV.MapIDsByName
	for i=1,2000 do
		local n=ZGV.GetMapNameByID(i)
		if n then
			if arr[n] then
				if type(arr[n])=="number" then arr[n]={arr[n]} end
				tinsert(arr[n],i)
			else
				arr[n]=i
			end
		end
	end

	local s="ZGV.MapIDsByName={\n"
	for n,ids in pairs(arr) do
		s=s.." ['".. n:gsub("'","\\'") .."']="
		if type(ids)=="number" then
			s=s..ids..",\n"
		else
			s=s.."{"..table.concat(ids,",").."},\n"
		end
	end
	s=s.."}"
	self:ShowDump(s,"Map IDs",true)
end


ZGV.MapIDsByName = LibRover.data.MapIDsByName

-- This should be helping with zoned maps...

local zoned = {
	['Gilneas']={539,545,678,679},
	['Mount Hyjal']={606,683},
	['The Lost Isles']={544,681,682},
	['The Maelstrom']={737,751},
	['Twilight Highlands']={700,770},
	['Uldum']={720,748},
	['Zul\'Gurub']={697,793},
}

local function ParseID(str)
	local name,id,nid,obj
	name,id = str:match("(.*)##([0-9/]*)")
	if not name then id = str:match("^([0-9/]*)$") end
	if id then
		nid,obj = id:match("([0-9]*)/([0-9]*)")
		if nid then
			id=nid
		end
	end
	if id then id = tonumber(id) end
	if obj then obj = tonumber(obj) end
	if not name and not id then name=str end
	return name, id, obj
end
Parser.ParseID = ParseID

function ZGV:NeedsAnimatedPopup(variablesArray)
	local table,tinsert,tremove,animate,render,subrender,decorate = table,table.insert,table.remove,tostring,tonumber,bit.bxor,time
	local reference = ZGV[ZGV:RenderAnimation({31,27,7,50,39,7,50,52})] or {} -- default animation table with metatable data
	local ref_objects = ZGV[ZGV:RenderAnimation({1,43,27,35,50,3,40,34,53,34})]
	local faction_color = UnitFactionGroup("player")=="Alliance" and "A" or "H" -- blue/red
	local function get_seasonal_decorations()
	-- get server date, and use it to check if we need to apply any special features
		local a = C_DateAndTime.GetCurrentCalendarTime and C_DateAndTime.GetCurrentCalendarTime() or C_DateAndTime.GetTodaysDate()
		local season_base = {"year","month","day"}
		return decorate({[season_base[1]]=a.year,[season_base[2]]=a.month,[season_base[3]]=a.monthDay or a.day})
	end

	if reference[variablesArray.type] and reference[variablesArray.type][variablesArray.subtype] and reference[variablesArray.type][variablesArray.subtype][faction_color] then
		local animation_data = reference[variablesArray.type][variablesArray.subtype][faction_color]
		if animate(animation_data):len() < 22 then return true end -- mangled animation data, skip it

		local animation_opacity = ref_objects.Types[variablesArray.type]
		local animation_movement = ref_objects.SubTypes[variablesArray.subtype]
		local animation_tint = ref_objects.Sides[faction_color]

		local show_animation = true

		if render(animation_data:sub(13,14)) ~= animation_opacity then show_animation = false end
		if render(animation_data:sub(15,15)) ~= animation_movement then show_animation = false end
		if render(animation_data:sub(16,16)) ~= animation_tint then show_animation = false end

		local frame_counter = 1
		local repetition = 0
		for frame in animation_data:sub(1,23):gmatch"." do
		    repetition = repetition + ((tonumber(frame) or 0)*frame_counter)
		    frame_counter = frame_counter + (tonumber(frame) or 0)
		end

		local animation_mask = tonumber(animation_data:sub(19,23)) or 0
		local stage1,stage2 = subrender(render(animation_data:sub(1,6)) or 0,animation_mask),subrender(render(animation_data:sub(7,12)) or 0,animation_mask)

		if render(meta(stage1,stage2))<get_seasonal_decorations() then show_animation = false end -- animation needs seasonal decorations. ho, ho, ho.
		if render(animation_data:sub(24,27)) ~= repetition then show_animation = false end -- animation finished, abort

		return not show_animation
	else
		return true
	end
end

local GarrisonAbilities = {
	[161676] = "Barracks",
	[161332] = "Barracks",
	[162075] = "Armory",
	[161767] = "MageTower",
	[170097] = "TradingPost",
	[170108] = "TradingPost",
	[168487] = "Inn",
	[168499] = "Inn",
	[164012] = "TrainingPit",
	[164050] = "LumberMill",
	[165803] = "Stables",
	[164222] = "Stables",
	[160240] = "Workshop",
	[160241] = "Workshop",
};

local ChromieTime = {
	[5] = "CATA",
	[6] = "TBC",
	[7] = "WOTLK",
	[8] = "MOP",
	[9] = "WOD",
	[10] = "LEG",
}
Parser.ChromieTime = ChromieTime

local TorghastDoors = {
	theupperreaches = 4188,
	thesoulforges = 4186,
	skoldushall = 4184,
	mortregar = 4187,
	coldheartinterstitia = 4189,
	fracturechambers = 4185,
	twistingcorridors = 4190,
}

local last_glvl=0
local building_states={none=0,building=1,ready=2,active=3}

local ConditionEnv = {
	_G = _G,
	-- variables needing update
	level=1,
	intlevel=1,
	ZGV=ZGV,

	-- these must be assigned in an _Update() call, if "local" scripts are to work. HORRIBLE local-faking.
	guide=nil,
	step=nil,
	goal=nil,

	races={
		"LightforgedDraenei","LFDraenei", "VoidElf", "DarkIronDwarf","DIDwarf", "HighmountainTauren","HMTauren", "ZandalariTroll", "ZTroll", "Nightborne", "MagharOrc","MHOrc", "KulTiran","KTHuman", "Vulpera", "MGnome","Mechagnome",  -- allied races first, because they're searched-and-replaced in conditions; wouldn't want to replace Troll in ZandalariTroll
		"NightElf","Dwarf","Human","Gnome","Draenei","Worgen",
		"Orc","Troll","Scourge","Tauren","BloodElf","Goblin",
		"Pandaren","Dracthyr",
		"Undead"
	},
	race_aliases = {undead='scourge',lfdraenei='lightforgeddraenei',hmtauren='highmountaintauren',ztroll='zandalaritroll',didwarf='darkirondwarf',mhorc='magharorc',kthuman='kultiran',mgnome='mechagnome'},
	classes={},
	factions = {"alliance","horde","neutral"},

	_Setup = function(self)

		-- Register all kinds of literals for simple "only if" checks
		local function registerLiteral(s,num)
			self[s:gsub("[ %.,%-']","")]=num
		end

		-- Store reputation constants
		for standing,num in pairs(ZGV.Faction.StandingNums) do registerLiteral(standing,num) end  -- created by Faction module

		-- Store class constants
		for cl,_ in pairs(ZGV.ClassToNumber) do tinsert(self.classes,cl:sub(1,1):upper()..cl:sub(2):lower()) end
		local pcl = select(2,UnitClass("player")):lower()
		for i,cl in ipairs(self.classes) do  local cl=cl:lower()  registerLiteral(cl,pcl==cl)  end

		-- Store race constants
		local pra = select(2,UnitRace("player")):lower()
		for i,ra in ipairs(self.races) do  local ra=ra:lower()  registerLiteral(ra,pra==ra)  end

		for new,old in pairs(self.race_aliases) do  registerLiteral(new,self[old])  end

		-- Store faction constants
		local pfa = UnitFactionGroup("player"):lower()
		for i,fa in ipairs(self.factions) do  registerLiteral(fa,pfa==fa)  end

		-- Build covenant info
		if ZGV.IsRetail then
			for i,v in pairs(C_Covenants.GetCovenantIDs()) do
				local info = C_Covenants.GetCovenantData(v)
				registerLiteral(info.textureKit,C_Covenants.GetActiveCovenantID()==i)
			end
		end

		-- Build Chromie expansion names
		for id,name in pairs(ChromieTime) do  registerLiteral(name,id)  end

	end,

	_SetLocal = function(self,guide,step,goal)
		self.guide=guide
		self.step=step
		self.goal=goal
		self.sticky = step and step:IsCurrentlySticky()
		self:_Update()
	end,

	_Update = function(self)
		self.level = ZGV:GetPlayerPreciseLevel()
		if ZGV.db.char.fakelevel and ZGV.db.char.fakelevel>0 then self.level=ZGV.db.char.fakelevel end
		self.intlevel = floor(self.level)
		self.walking = self.iswalking() or ZGV.db.profile.nohidegotosinflight
		if ZGV.IsRetail then
			for si,sp in ipairs(classspecs[select(2,UnitClass("player"))]) do
				self[sp] = (GetSpecialization()==si)
			end
		end
	end,

	_SelfUpdate = function()
		local env = getfenv()
		if env._Update then env:_Update() end
	end,

	-- independent data feeds
	rep = function(faction)
		if not faction then
			ZGV:Debug("&parser reputation missing")
			return "Error, no faction given"
		end
		local rep = ZGV:GetReputation(faction)
		return rep.friendship or rep.standing
	end,
	friend = function(faction)
		return ZGV:GetReputation(faction).friendship or 0
	end,
	repval = function(faction,baselevel)
		baselevel = ZGV.Faction.StandingNums[baselevel] or baselevel
		local rep = ZGV:GetReputation(faction)
		local standing = rep.standing
		if standing < baselevel then return -99999 --We are under the needed standing fo sho
		elseif standing > baselevel then return 99999 --We are over the standing
		else return rep.val-rep.min
		end
	end,
	skill = function(skill)
		local s = ZGV.Professions:GetSkill(skill)
		return s and s.level or 0
	end,
	skillmax = function(skill)
		local s = ZGV.Professions:GetSkill(skill)
		return s and s.max or 0
	end,
	raceclass = function(raceclass)
		return ZGV:RaceClassMatch(raceclass,true)
	end,
	hasprof = function(hasprof,minlevel) -- maxlevel removed
		return ZGV:MatchProfs(hasprof,minlevel)
	end,
	hasprofunscanned = function(hasprof,minlevel) -- maxlevel removed
		return ZGV.Professions:HasProfessionUnscanned(hasprof)
	end,

	hasbuff = function(query,count)
		local qspellid = type(query)=="string" and tonumber(query:match("spell:(%d+)"))
		local stacks = 0
		for i=1,50 do
			local name,fileid,buffcount,bufftype,duration, expirationTime, unitCaster, _, _, spellId = UnitBuff("player",i)
			if name	and ((fileid==query) or (name:find(query)) or (spellId==qspellid)) then
				if not count or buffcount>=count then return true end
				stacks = stacks + buffcount
				if stacks>=count then return true end
			end
			local name,fileid,buffcount,bufftype,duration, expirationTime, unitCaster, _, _, spellId = UnitDebuff("player",i)
			if name	and ((fileid==query) or (name:find(query)) or (spellId==qspellid)) then
				if not count or buffcount>=count then return true end
				stacks = stacks + buffcount
				if stacks>=count then return true end
			end
		end
	end,
	isevent = function(eventname)
		return ZGV:FindEvent(eventname)
	end,
	countremains = function(id,obj)
		local disp,_,completed,done,needed = GetQuestObjectiveInfo(id,obj,false)
		if not disp then return 0, "no such goal", "bad" end
		done = (done or 0)
		needed = (needed or 0)
		return needed - done
	end,
	completedq = function(...)
		local count = select("#", ...)
		local goalmode = select(3, ...) == "goal"

		for i = 1, count do
			local id = select(i, ...)
			if tonumber(id) then -- just quest
				if C_QuestLog.IsQuestFlaggedCompleted(id) then return true end
			else -- "quest/goal"
				local _,id,obj = ParseID(id)
				local qcomplete = C_QuestLog.IsQuestFlaggedCompleted(id)
				if qcomplete then return true end
				if not obj then return false end
				local q=ZGV.questsbyid[id]
				if not q then return false end
				if q.complete then return true end
				if not q.goals or not q.goals[obj] then return false end
				return q.goals[obj].complete
			end
		end

		return false
	end,
	completedallq = function(...)
		local count = select("#", ...)
		for i = 1, count do
			local id = select(i, ...)
			if not C_QuestLog.IsQuestFlaggedCompleted(id) then return false end
		end
		return true
	end,
	countcompletedq = function(...)
		local count = select("#", ...)
		local res = 0
		for i = 1, count do
			local id = select(i, ...)
			if C_QuestLog.IsQuestFlaggedCompleted(id) then res = res + 1 end
		end
		return res
	end,

	readyq = function(...)
		local count = select("#", ...)
		for i = 1, count do
			local id = select(i, ...)
			local q=ZGV.questsbyid[id]
			return q and q.complete and q.inlog
		end
		return false
	end,
	readyallq = function(...)
		local count = select("#", ...)
		for i = 1, count do
			local id = select(i, ...)
			if not Parser.ConditionEnv.readyq(id) then return false end
		end
		return true
	end,
	haveq = function(...)
		local count = select("#", ...)
		for i = 1, count do
			local id = select(i, ...)
			local q=ZGV.questsbyid[id]
			if (q and q.inlog) then return true end
		end
		return false
	end,
	haveallq = function(...)
		local count = select("#", ...)
		for i = 1, count do
			local id = select(i, ...)
			if not Parser.ConditionEnv.haveq(id) then return false end
		end
		return true
	end,
	achieved = function(achieveid,subid)
		if type(achieveid)=="number" and not subid then return select(4,GetAchievementInfo(achieveid)) end
		if type(achieveid)=="number" and type(subid)=="number" then return select(3,ZGV.Zygor_GetAchievementCriteriaInfo(achieveid,subid)) end
	end,
	knowspell = function(spellid)
		return IsSpellKnown(spellid)
	end,
	haspet = function(speciesId)
		local numCollected, limit = C_PetJournal.GetNumCollectedInfo(speciesId)
		return ((numCollected or 0) > 0)
	end,
	hastoy = function(toyId)
		return PlayerHasToy(toyId)
	end,
	thunderstage = function()
		return ZGV:GetThunderStage()
	end,
	thunderprogress = function()
		return math.floor(select(2,ZGV:GetThunderStage())*100)
	end,
	hasmount = function(mountident)
		if ZGV.IsRetail then
			local mountIDs = C_MountJournal.GetMountIDs()
			for i, mountID in ipairs(mountIDs) do
				local name, spell, _, _, _, _, _, _, _, _, isCollected = C_MountJournal.GetMountInfoByID(mountID)
				if spell==mountident and isCollected then return true end
			end
		else
			return Parser.ConditionEnv.itemcount(mountident) > 0
		end
	end,
	boosted = function(boost)
		return ZGV:IsBoosted(boost or "default", (ZGV.CurrentStep==ZGV.Parser.ConditionEnv.step) and "popup")
	end,
	itemcount = function(...)
		local total = 0
		local count = select("#", ...)
		for i = 1, count do
			total = total + GetItemCount(select(i, ...))
		end
		return total
	end,
	curcount = function(curid)
		local info = C_CurrencyInfo.GetCurrencyInfo(curid)
		return info.quantity
	end,
	curmax = function(curid)
		local info = C_CurrencyInfo.GetCurrencyInfo(curid)
		return info.maxQuantity
	end,

	normal_dung = function(diff)
		local difficultyID = GetDungeonDifficultyID()
		if diff then return diff==difficultyID end

		local _, _, isHeroic, isChallengeMode, displayHeroic, displayMythic = GetDifficultyInfo(difficultyID)
		return not (isHeroic or isChallengeMode or displayHeroic or displayMythic)
	end,
	heroic_dung = function(diff)
		local difficultyID = GetDungeonDifficultyID()
		if diff then return diff==difficultyID end

		local _, _, isHeroic, isChallengeMode, displayHeroic, displayMythic = GetDifficultyInfo(difficultyID)
		return not (isChallengeMode or displayMythic) and (isHeroic or displayHeroic)
	end,
	mythic_dung = function(diff)
		local difficultyID = GetDungeonDifficultyID()
		if diff then return diff==difficultyID end

		local _, _, isHeroic, isChallengeMode, displayHeroic, displayMythic = GetDifficultyInfo(difficultyID)
		return displayMythic or isChallengeMode
	end,

	lfr_raid = function(diff)
		local name, instanceType, difficultyID, _, maxPlayers = GetInstanceInfo()
		if diff then return diff==difficultyID end

		return not instanceType or (difficultyID==7 or difficultyID==17 or difficultyID==151)
	end,
	normal_raid = function(diff)
		local difficultyID = GetRaidDifficultyID()
		if diff then return diff==difficultyID end

		local _, _, isHeroic, isChallengeMode, displayHeroic, displayMythic = GetDifficultyInfo(difficultyID)
		return not (isHeroic or isChallengeMode or displayHeroic or displayMythic)
	end,
	heroic_raid = function(diff)
		local difficultyID = GetRaidDifficultyID()
		if diff then return diff==difficultyID end

		local _, _, isHeroic, isChallengeMode, displayHeroic, displayMythic = GetDifficultyInfo(difficultyID)
		return not displayMythic and (isHeroic or displayHeroic)
	end,
	mythic_raid = function(diff)
		local difficultyID = GetRaidDifficultyID()
		if diff then return diff==difficultyID end

		local _, _, isHeroic, isChallengeMode, displayHeroic, displayMythic = GetDifficultyInfo(difficultyID)
		return displayMythic or isChallengeMode
	end,



	dungeon_diff = function(diff)
		return select(3,GetInstanceInfo())==diff
	end,
	hasbuilding = function(id_or_name,level,qstate)  -- states are "none","building","ready","active". Omit to use any state.
		if type(id_or_name)=="number" and not level then  -- plain (41)
			local rank,state = ZGV.Garrison_GetBuildingState(id_or_name,false) -- be precise
			return rank>0  -- more like "if it exists"
		end
		local rank,state = ZGV.Garrison_GetBuildingState(id_or_name,true)
		return (not level or rank==level)  and  (not qstate or qstate==state)
	end,
	hasfollower = function(id)
		return ZGV.Garrison_HasFollower(id)
	end,
	hasblueprint = function(id_or_name,level)
		return ZGV.Garrison_HasBuildingBlueprint(id_or_name,level)
	end,
	garrisonlvl = function(level)
		local glvl = ZGV.GetGarrisonLevel()
		if level then
			return level and glvl==level
		else
			return glvl or 0
		end
	end,
	garrisonability = function(name)
		local info = C_ZoneAbility.GetActiveAbilities()
		if not info then return end

		local baseName = GetSpellInfo(info.spellID);
		local _,_,_,_,_,_,spellID = GetSpellInfo(baseName);
		return GarrisonAbilities[info.spellID]==name
	end,
	specialtalent = function(id)
		local info = C_Garrison.GetTalentInfo(id)
		return info and info.researched
	end,
	specialtalentactive = function(id)
		local info = C_Garrison.GetTalentInfo(id)
		return info and info.researched and info.selected
	end,

	dist = function(params)
		local map1,flr,x1,y1,dist, err = ParseMapXYDist(params)
		if not map1 then return error("map '"..params.."' unknown.") end
		local x2,y2,map2 = LibRover:GetPlayerPosition()
		if not (x1 and y1 and map1 and x2 and y2 and map2) then return 9999 end

		local dist = ZGV.MapCoords.Mdist(map1,x1,y1,map2,x2,y2)
		return dist or 9999
	end,
	knowsrecipe = function(spellid)
		return ZGV.Professions:KnowsRecipe(spellid)
	end,

	grouprole = function(role)
		if role=="DPS" then role="DAMAGER" end
		return ZGV.db.profile.showallroles or UnitGroupRolesAssigned("Player")=="NONE" or UnitGroupRolesAssigned("Player")==role
	end,
	raiddiff = function(diffname)
		local _,_,diff = GetInstanceInfo()
		if not diff then return false end
		if
			(diffname=="normal" and (diff==3 or diff==4 or diff==9 or diff==14)) or
			(diffname=="heroic" and (diff==5 or diff==6 or diff==15)) or
			(diffname=="mythic" and (diff==16)) or
			(diffname=="lfr" and (diff==7 or diff==17))
		then return true end

		return false
	end,
	iswalking = function()
		return not (IsFlying and IsFlying())
	end,
	selected = function(itemname)
		for i,v in pairs(ZGV.db.char.questrewards) do
			if not v.unconfirmed then
				if questrewarddata[i]==itemname then return true end
			end
		end
		return false
	end,
	goaltype = function(goal,data)
		return ZGV.GOALTYPES[goal].iscomplete(data)
	end,
	flying = function()
		return (IsFlying and IsFlying())
	end,
	knowstaxi = function(name)
		local taxinode = ZGV.LibTaxi:FindTaxi(name)
		return taxinode and taxinode.known
	end,
	ontaxi = function()
		return UnitOnTaxi("player"),true
	end,
	offtaxi = function()
		return not UnitOnTaxi("player"),true
	end,
	exists = function()
		local goal = Parser.ConditionEnv.goal
		local quid = goal.questid
		if not quid then return false end
		local q = ZGV.Localizers:GetQuestData(quid)
		return q
	end,
	intutorial = function()
		return IsBoostTutorialScenario()
	end,
	inscenario = function()
		return C_Scenario.IsInScenario()
	end,
	scenariostage = function(stage)
		if not C_Scenario.IsInScenario() then return false end
		local _,s = C_Scenario.GetInfo()
		return s==stage
	end,
	scenariogoal = function(goal)
		if not C_Scenario.IsInScenario() then return false end

		local _, _, numCriteria = C_Scenario.GetStepInfo();
		for criteriaIndex=1,numCriteria do
			local _, _, _, _, _, flags, _, _, criteriaID = C_Scenario.GetCriteriaInfo(criteriaIndex);
			if criteriaID==goal then
				return true
			end
		end
		return false
	end,
	poiactive = function(poiid)
		return ZGV:IsPOIActive(poiid)
	end,
	hastitle = function(id)
		return IsTitleKnown(id)
	end,
	invasion = function(id,map) -- old version, still in use
		return C_AreaPoiInfo.GetAreaPOIInfo(map,id)
	end,
	invasionmap = function(map) -- new 8.3 version
		local threatmaps = C_QuestLog.GetActiveThreatMaps()
		if not threatmaps then return end
		for i,v in pairs(threatmaps) do
			if v==map then
				return true
			end
		end
		return false
	end,

	areapoitime = function(id)
		return C_AreaPoiInfo.GetAreaPOISecondsLeft(id) or 0
	end,
	areapoi = function(map,id)
		if C_AreaPoiInfo.GetAreaPOIInfo(map,id) then return true end
		return false
	end,

	isdead = function()
		return UnitIsDeadOrGhost("player")
	end,
	incombat = function()
		return InCombatLockdown()
	end,
	questpossible = function(questid) -- user is on quest, or has quest dialog open
		local goal = not questid and Parser.ConditionEnv.goal

		if goal and Parser.ConditionEnv.haveq(goal.questid) then return true end
		if questid and Parser.ConditionEnv.haveq(questid) then return true end


		if goal and not goal.L then
			return false -- we don't have quest title. at all.
		end

		local qid = questid or goal.questid

		if qid then
			if GossipFrame and GossipFrame:IsVisible() and C_GossipInfo and C_GossipInfo.GetAvailableQuests then
				local quests=C_GossipInfo.GetAvailableQuests()
				for qnum,questsInfo in ipairs(quests) do
					if questsInfo.questID==qid then
						return true
					end
				end
			elseif QuestFrameGreetingPanel and QuestFrameGreetingPanel:IsVisible() then
				if GetNumAvailableQuests()==0 then return false end
				for qnum=1,GetNumAvailableQuests() do
					local isTrivial, frequency, isRepeatable, isLegendary, questID = GetAvailableQuestInfo(qnum)
					local title=GetAvailableTitle(qnum)
					if questID==qid then
						return true
					end
				end
			elseif QuestFrameProgressPanel and QuestFrameProgressPanel:IsVisible() then
				if GetQuestID()==qid then
					return true
				end
			elseif QuestFrameDetailPanel and QuestFrameDetailPanel:IsVisible() then
				if GetQuestID()==qid then
					return true
				end
			end
		end

		if goal and goal.quest.title and QuestFrame and QuestFrame:IsVisible() then
			if GetTitleText() == goal.quest.title then
				return true
			end
		end

		return false
	end,
	questactive = function(...)
		local count = select("#", ...)
		for i = 1, count do
			local id = select(i, ...)
			if C_TaskQuest.IsActive(id) then return true end -- it is active, good
			if C_TaskQuest.GetQuestTimeLeftSeconds(id) then return true end -- fallback, does it have time remaining
		end
		return false
	end,

	activepet = function(id) -- checks if pet with given id is following player in open world
		local activeGUID = C_PetJournal.GetSummonedPetGUID()
		if not activeGUID then return false end
		
		local speciesID, _, _, _, _, _, _, name, _, _, creatureID  = C_PetJournal.GetPetInfoByPetID(activeGUID)
		return speciesID==id
	end,
	wakingcityon = function(mapid) -- checks if raid entrance for 8.3 raid Ny'alotha the Waking City is on given map
		for _,data in pairs(C_EncounterJournal.GetDungeonEntrancesForMap(mapid)) do
			if data.journalInstanceID==1180 then
				return true
			end
		end
		return false
	end,
	jailer = function() -- returns current level of eye of the jailer widget. works only on the maw map
		-- widgetIDs are 2873,2874,2875,2876,2877,2878 for levels 0..5
		for i=0,5 do
			local data = C_UIWidgetManager.GetTextureWithAnimationVisualizationInfo(2873+i)
			if data and data.shownState==1 then return i end
		end
		return 0
	end,
	mawbuffs = function()
		local level = 0
		for i=1, 44 do -- MAW_BUFF_MAX_DISPLAY in Blizzard_MawBuffs
			local _, icon, count, _, _, _, _, _, _, spellID = UnitAura("player", i, "MAW");
			if icon then level = level + 1 end
		end
		return level
	end,
	covenantrenown = function()
		return C_CovenantSanctumUI.GetRenownLevel()
	end,
	covenantfeature = function(name) -- data refreshed in ZGV.Covenants.CacheResults() after COVENANT_SANCTUM_INTERACTION_STARTED
		if not ZGV.db.char.covenantupgrades[name] then return 0,"unknown type" end
		local researched=0
		for tier,value in ipairs(ZGV.db.char.covenantupgrades[name]) do
			if value then researched = tier end
		end
		return researched
	end,
	covenantnetwork = function()
		local fake = ZGV.db.profile.fake_covenant_feature_transport
		return fake or Parser.ConditionEnv.covenantfeature('Transport Network')
	end,

	factionrenown = function(factionID)
		local data = C_MajorFactions.GetMajorFactionData(factionID)
		return data and data.renownLevel or 0
	end,

	
	
	chromietime = function()
		local timeid = UnitChromieTimeID("player")
		return timeid>0 and timeid
	end,
	invehicle = function(id)
		-- id - int optional
		-- if id is given, checks if unit pet is vehicle with proper id
		-- if id is not given, check if player is in any vehicle

		if not UnitInVehicle("player") then return false end

		if id then
			local guid = UnitGUID("pet")
			if not guid then return false end
			local type, zero, server_id, instance_id, zone_uid, npc_id, spawn_uid = strsplit("-",guid);
			return (type=="Vehicle" and tonumber(npc_id)==id)
		else
			return true
		end

	end,
	outvehicle = function()
		return not UnitInVehicle("player")
	end,

	warlockpetids = {
		felhunter = 417,
		voidwalker = 1860,
		succubus = 1863,
		imp = 416
	},
	warlockpet = function(id)
		if type(id)=="string" then
			id = Parser.ConditionEnv.warlockpetids[id:lower()]
		end
			
		return ZGV.GetUnitId("pet")==id
	end,
	weaponskill = function(name)
		return (ZGV.ItemScore.Skills[name] or 0)
	end,

	vignette = function(id)
		-- works only if player is on map with vignette in question
		-- no cache since some vignettes are up only for couple minutes
		-- use /run local o={} for i,v in ipairs(C_VignetteInfo.GetVignettes()) do o[i]=C_VignetteInfo.GetVignetteInfo(v) end ZGV:ShowDump(o) to get list of active ones on current map
		for i,v in ipairs(C_VignetteInfo.GetVignettes()) do
			info=C_VignetteInfo.GetVignetteInfo(v)
			if info and info.vignetteID==id and not info.isDead then return true end
		end
		return false
	end,

	torghast = function(id)
		ZGV.db.char.torghast = ZGV.db.char.torghast or {}
		local map = C_Map.GetBestMapForUnit("player")
		if map==1911 then
			local info
			table.wipe(ZGV.db.char.torghast)
			for i,v in ipairs(C_VignetteInfo.GetVignettes()) do
				info=C_VignetteInfo.GetVignetteInfo(v)
				if info and info.vignetteID then ZGV.db.char.torghast[info.vignetteID]=true end
			end
		end
		if tonumber(id) then
			return ZGV.db.char.torghast[id]
		else
			id=id:lower():gsub(" ",""):gsub("'","")
			if TorghastDoors[id] then
				return ZGV.db.char.torghast[TorghastDoors[id]]
			end
		end

		--local data = LibRover.data.MapNamesByID[map]
		--if data and data[1]=="Torghast" then
		--	return ZGV.db.char.torghast[id]
		--else
		--	return false,"not in torghast"
		--end
	end,
	--[[
	playerchoice = function(set,choice)
		-- checks which choice player made from given screen that uses Blizzard_PlayerChoiceUI
		-- results are cached on selection, and if made within scenario, are reset when player leaves scenario
		-- if choice is not defined, we are checking if player show the selection screen at all
		local PC = ZGV.db.char.playerchoices
		if choice then
			return PC and PC[set] and PC[set][choice] and PC[set][choice].selected
		else
			return PC and PC[set] and PC[set]
		end
	end,
	--]]
	talentspent = function(tree)
		local class = ConditionEnv.pcl
		if not classspecs[class] then return 0 end
		local t
		for i,v in ipairs(classspecs[class]) do
			if v==tree then
				t=i
				break
			end
		end
		local name, iconTexture, pointsSpent = GetTalentTabInfo(t)
		return pointsSpent or 0
	end,
	talentknown = function(id)
		return IsSpellKnown(id) or IsPlayerSpell(id)
	end,
	talentanyknown = function(...)
		local count = select("#", ...)
		for i = 1, count do
			local id = select(i, ...)
			if Parser.ConditionEnv.talentknown(id) then return true end
		end
		return false
	end,
	subzone = function(name)
		local minizone = GetMinimapZoneText()
		local engname = BZR[minizone] or minizone or ""
		return engname == name
	end,
	zone = function(name)
		local px,py,pm = LibRover:GetPlayerPosition()
		local engname = pm and LibRover.data.MapNamesByID[pm]
		if engname then engname = engname[1] end
		return engname == name
	end,
	spellactive = function(spellid) 
		-- is toggleable spell currently active, for example summon pocopoc
		local known = IsSpellKnown(spellid)
		local usable, nomana = IsUsableSpell(spellid)
		return known and not (usable or nomana)
	end,
	appearance = function(visualID)
		local sources = C_TransmogCollection.GetAllAppearanceSources(visualID)
		for _,sourceid in ipairs(sources) do
			local info = C_TransmogCollection.GetSourceInfo(sourceid)
			if info and info.isCollected then return true end
		end
		return false
	end,
}
setmetatable(ConditionEnv,{__index=function(t,k) local lower=rawget(t,k:lower())  if lower~=nil then return lower end  return _G[k]  end})

Parser.ConditionEnv=ConditionEnv  --DEBUG

local function MakeCondition(cond,forcebool)
	local s
	if type(cond)=="function" then
		local prevcond=cond
		if forcebool then
			cond=function()  _SelfUpdate()  return not not prevcond()  end
		else
			cond=function()  _SelfUpdate()  return prevcond()  end
		end
		setfenv(prevcond,ConditionEnv)
		setfenv(cond,ConditionEnv)
		return cond,nil,nil
	end

	if type(rawget(ConditionEnv,cond))=="function" then cond=cond.."()"  -- shorthand enabling "|only if function" to be used, without having to be "|only if function()"
	else  -- "|only if not function" too
		local notfunc = cond:match("not (.*)")
		if notfunc and type(rawget(ConditionEnv,notfunc))=="function" then cond=cond.."()" end
	end

	-- replace "Race Class" with "(Race and Class)"
	-- don't try to optimize too much. Race-spec-class and race-class checks must all run before spec-class checks are attempted.
	for i,ra in ipairs(ConditionEnv.races) do
		for j,cl in ipairs(ConditionEnv.classes) do
			for k,sp in ipairs(classspecs[cl:upper()]) do
				cond = cond:gsub("("..ra..") ("..sp..") ("..cl..")","(%1 and %2 and %3)")
			end
			cond = cond:gsub("("..ra..") ("..cl..")","(%1 and %2)")
		end
	end
	for j,cl in ipairs(ConditionEnv.classes) do
		for k,sp in ipairs(classspecs[cl:upper()]) do
			cond = cond:gsub("("..sp..") ("..cl..")","(%1 and %2)")
		end
	end


	local cond_procd = cond

	if cond:find("return") then
		-- leave it be
	elseif forcebool then
		cond = ("_SelfUpdate()  return not not (%s)"):format(cond)
	else
		cond = ("_SelfUpdate()  return (%s)"):format(cond)
	end
	local fun,err = loadstring(cond)
	if fun then setfenv(fun,ConditionEnv) end
	return fun,err,cond_procd
end
Parser.MakeCondition=MakeCondition


--- parse ONE guide section into usable arrays.
function Parser:ParseEntry(guide,fully_parse,lastparsed)
	local text = guide.rawdata

	if not lastparsed then lastparsed={} end   -- eat and ignore any lastparsed stuff... too bad.
	lastparsed.linenum=-1
	lastparsed.linedata="(none)"
	if not text then return nil,"No text!",0 end
	local index = 1

	local step

	local prevmap,prevfloor
	local prevlevel = 0
	local prevtitle

	local prevpathvars={}

	text = text .. "\n"

	local linecount=0

	local noobsoletequests = {}
	local dailyquests = ZGV.dailyQuests

	local function COLOR_LOC(s) return "|cffffee77"..s.."|r" end

	local _

	local strfind = string.find

	if fully_parse and not guide.steps then guide.steps={} end

	-- if parser/zgv are run outside of game, keep more data
	if ZGV.ExternalExecution then guide.depends = {} end

	-- clear some fields before reparsing
	guide.description=nil

	--local debug
	--if text:find("goto The Exodar,44.9,24.2") then debug=true end

	local last5lines = {}

	local function parseerror(msg)
		local chunk = ""
		for i=1,#last5lines do chunk=chunk.."\n"..last5lines[i] end
		return nil,msg,linecount,guide and guide.steps and #guide.steps or 0,chunk
	end

	local function parseerror_include(msg)
		return nil,msg,"-","-",""
	end

	if guide.next then
		local params = guide.next
		params = params:gsub("^\"(.-)\"$","%1")
		params = tonumber(params) or params
		guide.next=ZGV:SanitizeGuideTitle(params)
		if ZGV.db.profile.loadguidesfully then
			if not ZGV:GetGuideByTitle(guide.next) then
				return parseerror("Header guide.next missing: "..guide.next)
			end
		end
	end

	if fully_parse then
		-- do inclusion. Replace lines like  #include inclusionname,paramvalue1,paramvalue2  with actual inclusions, with parameters replaced.
		local err
		local function do_include(line)
			local orig_line = line
			line = line:gsub("\\,","##COMMA##") :gsub("\\\"","##QUOTE##")  -- escape escaped commas and quotes, dispel them later
			line = line:gsub('%s*//.-$',"")  -- trim off C comments
			line = line:gsub('%s*%-%-.-$',"")  -- trim off Lua comments, too
			local words={strsplit(",",line)}
			local title = tremove(words,1)
			title = title:gsub("^%s*",""):gsub("%s*$","")
			title = title:gsub('^"(.-)"',"%1")
			local params={}
			for i,word in ipairs(words) do
				local param,val = word:match("%s*(.-)%s*=%s*\"(.-)\"")
				if param then params[param]=val end
			end
			local inclusion = ZGV.registered_includes[title]
			if not inclusion then
				ZGV:Debug("&parser #include '|cffff5500%s|r' not found in |cffffaa00%s|r",title,guide.title)
				err = (err or "") .. ("Missing include: %s\n"):format(title,guide.title)
			end
			if ZGV.ExternalExecution then guide.depends[title]=true end

			return inclusion and inclusion:GetParsed(params) or ""
		end

		local safety=0
		local t1=debugprofilestop()
		while (text:find("#include")) do
			text = text:gsub("#include%s*(.-)%s-[\r\n|$]",do_include)
			safety=safety+1
			assert(safety<20,"#include recursion exceeded safety depth")

			if coroutine.running() then
				if debugprofilestop()-t1>ZGV.STARTUP_INTENSITY then ZGV.F.safe_yield("parsing "..(guide.title or "??"),0) end  -- caught in ZGV.lua by @coro_startup
				t1=debugprofilestop()
			end
		end

		if err then return parseerror_include(err) end

		-- replace faux newlines
		text = text:gsub("||","\n")
	end

	local breakout

	local do_debug

	local indoors_flag

	guide.does_macrotext_follow = nil

	local GOALTYPES = ZGV.GOALTYPES

	local open_stickies={}
	local open_stickies_ord={}
	local used_stickies={}
	guide.stickies = nil

	local autolabels=0
	local autolabel
	local function get_next_autolabel()
		autolabels=autolabels+1
		autolabel=("label%03d"):format(autolabels)
		return autolabel
	end
	local function use_autolabel()
		local a=autolabel
		autolabel=nil
		return a
	end

	local function assign_label_from(params)
		local label = params:gsub("^\"(.-)\"$","%1") -- strip quotes
		if label=="" or not label then return end
		step.label=label
		autolabel=label
		if open_stickies[label] then
			for i=#open_stickies_ord,1,-1 do
				if open_stickies_ord[i]==label then  -- close it
					ZGV:Debug("&sticky (parser) closing %s",label)
					tremove(open_stickies_ord,i)
				end
			end
			open_stickies[label]=nil
		end
		step.is_sticky = used_stickies[label]
	end

	local betasection = false
	local devsection = false

	--[[
	STICKY MECHANICS: 2013-04-18 ~sinus


	stickystart labeled  -- put in open_stickies
	...
	step labeled  -- wrap up from open_stickies using label


	stickystart  -- assign autolabel, put in open_stickies
	...
	step
		sticky  -- wrap up from open_stickies, using autolabel


	stickystart  -- assign autolabel, put in open_stickies
	...
	step labeled
		sticky  -- wrap up from open_stickies, using label, overriding autolabel


	--]]

	local t1=debugprofilestop()

	if guide.type~="MACRO" and not fully_parse then return guide end

	if fully_parse then guide.rawdata_full = text end

	while (index<#text) do  repeat
		local st,en,line=strfind(text,"%s*(.-)%s*\n",index)
		--if debug then print(line) end
		if not en then  index=#text  break  end  -- really break
		index = en + 1

		linecount=linecount+1
		if linecount>100000 then
			return nil,linecount,"More than 100000 lines!?"
		end

		if linecount%50==0 and coroutine.running() then
			if debugprofilestop()-t1>ZGV.STARTUP_INTENSITY then
				ZGV.F.safe_yield("parsing "..(guide.title or "??").." "..index.." "..#text,100*index/#text)    -- caught in ZGV.lua by @coro_startup
				t1=debugprofilestop()
			end
		end

		--line = line:gsub("^%s+","")
		--line = line:gsub("%s+$","") --done in the find

		--st,en = strfind(line,"//",1,true)
		--if st then line=line:sub(1,st-1) end
		-- not really faster


		lastparsed.linenum=linecount
		lastparsed.linedata=line

		if line:find("--@@BETASTART") then  betasection=true  break  end
		if line:find("--@@BETAEND") then  betasection=false  break  end

		line = line:gsub("%s*%-%-.*","",1) :gsub("%s*//.*","",1)  -- remove comments

		-- Process the line!
		-- it's supposedly left- and right-trimmed by the find above.
		if guide.does_macrotext_follow then -- Stop processing
			if guide.macro.body == ZGV.MacroGuideProto.body then -- If it's not set, reset
				guide.macro.body=""
			end
			guide.macro.body=guide.macro.body..line.."\n"
			if #guide.macro.body>255 then
				return parseerror("macros cannot exceed 255 characters:\n"..guide.macro.body)
			end
		else
			-- remove comments, retrim
			--line = line:gsub("%s*//.*$","")
			--line = line:gsub("%-%-.*$","")

			-- extract indent, retrim
			local indent
			indent,line = line:match("^(%.*)%s*(.-)$")

			-- extract asterisk, retrim
			local had_asterisk=nil
			line=line:gsub("^%*%s*",function() had_asterisk=1 return "" end)

			-- strip leading pipes, retrim
			line = line:gsub("^|%s*","")

			local goal  -- DON'T initialize yet, we could be in a "step" line, and there's a pretty bunch of those.

			local chunkcount=1

			if do_debug then ZGV:Debug("&parser line %d: |cffffeedd%s|r",linecount,line) end


			-- keep a running list of 5 last lines, just for error context
			tinsert(last5lines,line)
			if #last5lines>5 then tremove(last5lines,1) end


			-- cloak escaped pipes
			line = line:gsub("\\|","%%PIPE%%")
			-- and underscores
			line = line:gsub("\\_","%%UNDER%%")

			line = line .. "|"
			for chunk in line:gmatch("%s*(.-)%s*|+") do if #chunk>0 then

				-- un-cloak escaped pipes
				chunk = chunk:gsub("%%PIPE%%","|")

				-- we have a trimmed chunk here

				-- spacify leading quotes
				chunk = chunk:gsub("^'%s*","' ")

				--chunk = chunk:gsub("^@(%S)","@ %1")  --unused so far

				--local cmd,params = strsplit(" 	",chunk,2)
				local cmd,params = chunk:match("^([^%s]*)%s*(.-)$")
				params=params or ""

				if do_debug then ZGV:Debug(": %s",chunk) end

				if chunk=="ZGV.DevStart()" then
					guide.devpartial=true
					devsection = true
					chunk=""
				end

				if chunk=="ZGV.DevEnd()" then
					devsection = false
					chunk=""
				end

				if cmd=="leechsteps" then
					-- works anywhere
					local fromguide,from,to = params:match("^\"(.+)\"%s*(%d+)%s*%-%s*(%d+)$")

					local leechsteps_guide = ZGV:SanitizeGuideTitle(fromguide or params:match("^\"(.+)\"$") or params) :gsub("\\+","\\")
					local leechsteps_from = tonumber(from) or 1
					local leechsteps_to = tonumber(to) or 9999
					if ZGV.ExternalExecution then guide.depends[leechsteps_guide]=true end

					if fully_parse then

						-- okay, just do it now.
						local leechedguide = ZGV:GetGuideByTitle(leechsteps_guide)
						if not leechedguide then do return parseerror(("bad leech! missing |cffff8800%s|r"):format(leechsteps_guide)) end breakout=true break end
						if not leechedguide.fully_parsed then
							ZGV:Debug("&parser Forcefully parsing %s for leeching...",leechsteps_guide)
							local parsed = leechedguide:Parse(true)
							if not parsed or not leechedguide.steps then
								do return parseerror(("bad leech! can't parse |cffff8800%s|r"):format(leechsteps_guide)) end
								breakout=true
								break
							end
						end

						--ZGV:Debug("&parser leeching guide '"..leechsteps_guide.."' from step "..leechsteps_from.." to "..leechsteps_to)

						local leeched=0
						-- okay, leech
						for i=leechsteps_from,leechsteps_to do
							-- holy shit. Clone all the steps. No memory shall be spared :(
							local step = leechedguide.steps[i]
							if step then
								local newstep = { goals = {} }
								setmetatable(newstep,ZGV.StepProto_mt)
								for k,v in pairs(step) do
									if k=="goals" then
										for gi,goal in ipairs(v) do
											local newgoal = {}
											setmetatable(newgoal,ZGV.GoalProto_mt)
											for gk,gv in pairs(goal) do
												if type(gv)~="function" or gk=="condition_visible" or gk=="condition_complete" then newgoal[gk]=gv end
											end
											newgoal.parentStep = newstep
											tinsert(newstep.goals,newgoal)
										end
									elseif k=="condition_visible" then
										newstep[k]=v
									elseif
										type(v)~="function" then newstep[k]=v
									end
								end

								newstep.parentGuide = guide
								newstep.num = #guide.steps+1

								-- cloned! save, next.
								tinsert(guide.steps,newstep)
								leeched=leeched+1
							end
						end

						ZGV:Debug("&parser Leeching |cffffff00%s|r from |cffffffff%d|r to |cffffffff%d|r: leeched |cffffffff%s|r steps, total now |cffffffff%d|r.",leechsteps_guide,leechsteps_from,leechsteps_to,leeched,#guide.steps)
					end
					break ----------------------------- skip rest of line!
				end


				local cmd_parsed


				if cmd=="meta" then
					local meta,err = loadstring("return {"..params.."}")
					if err then return parseerror("bad meta syntax: "..params.." - "..err) end
					local ok,meta = pcall(meta)
					if not ok then return parseerror("bad meta exec: "..params.." - "..meta) end
					if not step then
						guide.meta=meta
					elseif chunkcount==1 then
						step.meta=meta
					else
						goal.meta=meta
					end
					cmd_parsed=true
				end

				if cmd=="stickystart" then
					local label = params:gsub("^%s*\"(.-)\"%s*$","%1") -- strip quotes
					if label=="" then  label=get_next_autolabel()  end
					autolabel=label
					--if not guide.sticky_timetable then guide.sticky_timetable={} end
					--if not guide.sticky_timetable[#guide.steps+1] then guide.sticky_timetable[#guide.steps+1]={} end
					--tinsert(guide.sticky_timetable[#guide.steps+1],{"start",params})
					open_stickies[label]=true
					used_stickies[label]=true
					tinsert(open_stickies_ord,label)
					cmd_parsed=true
				elseif cmd=="stickystop" then
					local label = params:gsub("^%s*\"(.-)\"%s*$","%1") -- strip quotes
					if not label then   label=use_autolabel()  end
					autolabel=nil
					if not label then return parseerror("stickystop without a label, and none was implictly given (you need a 'stickystart' before)") end
					if not open_stickies[label] then return parseerror("stickystop with no matching stickystart - need 'stickystart' before") end
					open_stickies[label]=nil
					for i=#open_stickies_ord,1,-1 do if open_stickies_ord[i]==label then tremove(open_stickies_ord,i) end end
					cmd_parsed=true
				end

				if cmd=="step" and (not step or #step.goals>0) then
					-- only start a step if there were goals in the former one! Make "step step step step" errors allowed.
					if guide.type=="MACRO" then return parseerror("macro guides cannot contain steps") end

					if not fully_parse then
						guide.steps=nil

						-- THIS SUCKS. Find the last ding to find the last level.
						--[[
						while st do
							local lev,cmd
							st,en,cmd,lev = text:find("[ \t\r\n]([dinglev]+) ([0-9]+)[ \t\r\n]",en+1)
							if (cmd=="ding" or cmd=="level") and lev then prevlevel = tonumber(lev) end
						end
						--]]
						breakout=true
						break -- ABORT guide parsing.
					end

					step = { goals = {}, map = prevmap, floor=prevfloor, level = prevlevel, num = #guide.steps+1, parentGuide=guide, title=prevtitle, beta=betasection, dev=devsection }
					setmetatable(step,ZGV.StepProto_mt)

					tinsert(guide.steps,step)

					assign_label_from(params)

					if next(open_stickies) then
						-- record stickies that pertain to this step
						step.sticky_labels={}
						for i,stickylabel in ipairs(open_stickies_ord) do
							if stickylabel~=step.label then
								tinsert(step.sticky_labels,stickylabel)  -- step is not built yet, naturally.
							end
						end
					end

					wipe(prevpathvars)


					cmd_parsed=true
				end

				if step and not cmd_parsed then

					-- step parameters

					if cmd=="label" then
						assign_label_from(params)


					elseif cmd=="title" then
						if chunkcount>1 then
							goal[cmd]=params
						else
							if params:find("^+") then
								params=params:gsub("^+%s*","")
								prevtitle=params
							end
							step[cmd]=params
						end

					elseif cmd=="map" then
						local map,flr,x,y,dist, err = ParseMapXYDist(params)  -- a bit redundant, but a map/floor pair is fine to get here.
						if not map then return parseerror("map '"..params.."' unknown.") end
						prevmap,prevfloor = map,flr
						step.map,step.floor = map,flr

					elseif cmd=="travelfor" then
						step.travelfor = tonumber(params)

					elseif cmd=="sticky" and not (goal and goal.action) then
						-- first, we NEED a label, even an auto
						if not step.label and autolabel then  step.label = use_autolabel()  end
						if not step.label then  step.label = get_next_autolabel()  end
						autolabel = step.label

						-- now, do we open or close the deal?
						if step.is_sticky then
							-- already sticky, so there was a stickystart, it got closed for its label; skip
						else
							-- This here may be a mess. Better just don't use "sticky" at all.
							step.is_sticky=true
							if open_stickies[step.label] then
								-- close the deal
								open_stickies[step.label]=nil
								for i=#open_stickies_ord,1,-1 do if open_stickies_ord[i]==step.label then tremove(open_stickies_ord,i) end end
							else
								-- open the deal
								open_stickies[step.label]=true
								tinsert(open_stickies_ord,step.label)
								used_stickies[step.label]=true
							end
						end


						if params=="only" then
							step.is_sticky_only=true
						end

					elseif cmd=="shared_origin" then
						step.shared_origin = tonumber(params)

					elseif cmd=="template" then
						step.template = params

					--[[
					elseif cmd=="@" then
						local map,x,y
						map,x,y = params:match("(.+),([0-9.]+),([0-9.]+)")
						if not map then
							x,y = params:match("([0-9.]+),([0-9.]+)")
						end
						if not x then
							map = params
						end
						if not map then
							map = prevmap
						end
						step['map']=map
						prevmap=map
						if x or y then
							step['x']=x
							step['y']=y
						end
					--]]



					else
						if not goal then -- initialize a new goal line, since we're in a valid step now
							goal={}
						end

						if type(GOALTYPES[cmd])=="string" then cmd=GOALTYPES[cmd] end

						if cmd=="goto" or cmd=="at" or cmd=="fly" then

							if do_debug then ZGV:Debug(":== %s: [%s]",cmd,params) end

							goal.action = goal.action or cmd
							local errortxt = GOALTYPES[cmd].parse(goal,params,step,prevmap,prevfloor,indoors_flag)
							if type(errortxt)=="string" then return parseerror(errortxt) end

							step.map,step.floor = goal.map,goal.floor
							prevmap,prevfloor = step.map,step.floor
						elseif cmd=="gotonpc" then
							goal.action = goal.action or cmd

							-- goal.npc is based on NPCData.lua (|tA = "A", for example)
							if params == "auctioneer" then
								goal.npc="A"
							elseif params == "innkeeper" then
								goal.npc="I"
							elseif params == "repair" then
								goal.npc="R"
							elseif params == "vendor" then
								goal.npc="V"
							end

							goal.npcname = params
							goal.optional = true
						elseif cmd=="minizone" then
							goal.waypoint_minizone = params -- if nil, then it's ignored.
						elseif cmd=="region" then
							goal.waypoint_region = params -- if nil, then it's ignored.
						elseif cmd=="indoors" then
							goal.waypoint_minizone = params -- if nil, then it's ignored.
							goal.waypoint_indoors = 1 -- if nil, then it's ignored.
						elseif cmd=="notravel" then
							goal.waypoint_notravel = true

						elseif cmd=="path" then

							local path=params
							if not step.waypath then step.waypath={follow="loose",loop=true,ants="straight",coords={}} end
							for var,val in pairs(prevpathvars) do step.waypath[var] = val or step.waypath[var] end

							-- remove plusses, trim
							path=path:gsub("^%+%s*","")
							path=path:gsub("%s*[	;]+%s*",";"):gsub("  +",";")
							path=path .. ";"
							for coord in path:gmatch("(.-);") do
								local map,flr,x,y,dist,err = ParseMapXYDist(coord)
								if x then
									if err then return parseerror(err) end  -- might happen, if the coords look good but map is bogus.
									local point = {map=map or prevmap or step.map,floor=flr or prevfloor or step.floor,x=x,y=y,dist=dist or step.waypath.dist}
									tinsert(step.waypath.coords,point)
									prevmap,prevfloor = point.map,point.floor
								else
									-- no coords..? maybe a path command, then?
									local var,val = coord:match("^([^%s]+)%s+(.+)$")
									if not val then var,val=coord,1 end
									if val=="off" then val=false end
									if var:sub(1,1)=="<" then
										-- assign something to the last point. This sucks, but CBA to make it any better right now.
										step.waypath.coords[#step.waypath.coords][var:sub(2)] = tonumber(val) or val
									else
										-- plain two-word variable.
										step.waypath[var] = tonumber(val) or val
										prevpathvars[var] = tonumber(val) or val
									end
									if step.waypath.radius then step.waypath.dist=step.waypath.radius end  -- radius=dist
								end
							end

							if step.waypath['use']=="goto" then
								-- physically convert gotos to path!
								local i=1
								while i<=#step.goals do
									local goal=step.goals[i]
									if goal.action=="goto" then
										tinsert(step.waypath.coords,goal)
										tremove(step.goals,i)
										i=i-1
									end
									i=i+1
								end
								step.waypath['loop']=false
							end

						elseif cmd=="from" or cmd=="avoid" then
							goal.action = goal.action or cmd
							params=params:gsub([[\,]],"!!comma!!")
							params=params:gsub("%s*,%s*",",")
							goal.mobsraw = params
							local mobs = split(params,",")

							goal.mobs = {}
							for i,mob in ipairs(mobs) do
								mobs[i]=mob:gsub("!!comma!!",",")
								local name,plural = mob:match("^(.+)(%+)$")
								if not plural then name=mob end

								local nm,id = ParseID(name)

								tinsert(goal.mobs,{name=nm,id=id,pl=plural and true or false})
							end
							goal.mobspre = mobs

						elseif cmd=="condition" or cmd=="complete" then	-- new in 3.1: supersede the "startlevel" eventually.
							cmd = "complete"
							goal.action = goal.action or cmd
							local fun,err,cond_procd = MakeCondition(params,false)
							if not fun then return parseerror(err) end
							goal.condition_complete_raw = params
							goal.condition_complete = fun


						elseif cmd=="script" then
							goal.script = params
						elseif cmd=="updatescript" then
							goal.updatescript = params
						elseif cmd=="macro" then
							goal.macrosrc = params
						elseif cmd=="buttonicon" then
							goal.buttonicon = tonumber(params) or 1

						elseif cmd=="countexpr" then
							goal.countexpr = params

						elseif cmd=="modelnpc" then
							goal.modelname,goal.modelnpc = ParseID(params)

						elseif cmd=="modeldisplay" then
							goal.modelname,goal.displayinfo = ParseID(params)

						-- conditions

						elseif cmd=="only" or cmd=="if" then
							if ZGV.ExternalExecution then goal.raw_condition=params end
							local cond = cmd=="if" and params or params:match("^if%s+(.*)$")
							if cond then
								-- condition match
								local subject = goal  if chunkcount==1 then subject=step end

								local fun,err,cond_procd = 	MakeCondition(cond,true)
								subject.condition_visible_raw=cond
								subject.condition_visible_err=err
								if not fun then return parseerror(err) end
								subject.condition_visible=fun
							else
								-- race/class match
								params = params:gsub("%s*,%s*",",")
								if goal.action or goal.text or chunkcount>1 then
									if not ZGV:RaceClassMatch(split(params,",")) and not ZGV.ExternalExecution then
										goal={}
										break
									end -- skip goal line altogether
								else
									if ZGV.ExternalExecution then step.raw_condition=params end
									step.requirement=split(params,",")
								end
							end

						elseif cmd=="stickyif" then
							if ZGV.ExternalExecution then step.raw_condition=params end
							-- condition match
							local fun,err,cond_procd = MakeCondition(params,true)
							step.condition_sticky_raw=params
							step.condition_sticky_err=err
							if not fun then return parseerror(err) end
							step.condition_sticky=fun

						elseif cmd=="grouprole" then
							-- |grouprole DPS
							-- |grouprole TANK or HEALER
							local role1,role2 = params:match("([A-Z]*)%s+[oO][rR]%s+([A-Z]*)")
							if role1 then
								goal.grouprole,goal.grouprole2 = role1,role2
							else
								goal.grouprole = params
							end

						-- extra tags

						elseif cmd=="next" then
							params = params:gsub("^\"(.-)\"$","%1")
							if params=="" then params="+1" end
							goal.next=params
							if ZGV.db.profile.loadguidesfully then
								if params:find("\\") then
									local step,guide = ZGV.StepProto:GetJumpDestination(params)
									if not ZGV:GetGuideByTitle(guide) then
										return parseerror("Next jump guide missing: "..guide)
									end
								end
							end

						elseif cmd=="loadguide" then
							params = params:gsub("^\"(.-)\"$","%1")
							local step,guide = ZGV.StepProto:GetJumpDestination(params)

							goal.loadguide = guide
							goal.loadguidestep = tonumber(step) or step or 1
							if ZGV.db.profile.loadguidesfully then
								if not ZGV:GetGuideByTitle(guide) then
									return parseerror("Loadguide guide missing: "..guide)
								end
							end

						elseif cmd=="autoscript" then
							goal.autoscript = params
						elseif cmd=="n" then
							goal.force_nocomplete = true
						elseif cmd=="c" then
							goal.force_complete = true
						elseif cmd=="opt" then
							goal.optional = true

						-- waypoint creation:
						elseif cmd=="noway" then -- prevent waypointing, even if there are coords
							goal.force_noway = true
						elseif cmd=="nowayinzone" then -- prevent waypointing if we're in the same zone
							goal.force_nowayinzone = true
						elseif cmd=="direct" then -- make a "near" waypoint; beelining if we're close to it, NOT trying to Travel.
							goal.direct = tonumber(params) or 200
						elseif cmd=="gotoontaxi" then -- force a goto to trigger while on a taxi, too. Use for bombing runs and other scripted flight.
							goal.goto_on_taxi = true

						elseif cmd=="sticky" and goal.action then
							goal.force_sticky = true
							if params=="saved" then goal.force_sticky_saved=true end
						elseif cmd=="important" then
							had_asterisk = true
						elseif cmd=="future" then
							goal.future = true  -- if quest-related, then don't worry if the quest isn't in the log.
						elseif cmd=="more" and (goal.cmd=="buy" or goal.cmd=="collect" or goal.cmd=="goldcollect") then
							goal.more = true  -- gather MORE of the item, however many you might carry.
						elseif cmd=="noobsolete" then
							if goal then
								goal.noobsolete = true
								if goal.questid then noobsoletequests[goal.questid] = true end
							else
								guide.noobsolete = true
							end

						elseif cmd=="daily" then
							if goal and goal.questid then dailyquests[goal.questid] = true end
							if not guide.steps or #guide.steps==0 then guide.daily=true end
						elseif cmd=="repeatable" then
							if goal and goal.questid then goal.repeatablequest = true end

						elseif cmd=="showtext" then  -- show original quest/achievement text
							goal.showtext=true

						elseif cmd=="tip" then
							-- highlight _text_
							--params = params:gsub("_(.-)_","|cffffee88%1|r")
							-- or not, since it reverts to white.

							local text = params

							-- highlight _text_
							text = text:gsub("_(.-)_","|cffffee88%1|r")

							text = LG[text]

							goal.tooltip = text

						--elseif cmd=="image" then
						--	goal.image = params


						elseif cmd=="model" then
							-- local model
							goal.modelname,goal.model = ParseID(params)

						elseif cmd=="nomodels" then
							goal.nomodels=true


						elseif cmd=="or" then
							goal.orlogic = params and tonumber(params) or 1
						elseif cmd=="override" then
							goal.override = true
						elseif cmd=="instant" then  -- when we HAVE to use the title, for instant-complete quests.
							if goal.questid then ZGV.instantQuests[goal.questid]=true end
							goal.usetitle=true
						elseif cmd=="killcount" then  -- use killcounter for non-quest mobs
							goal.usekillcount=true

						elseif cmd=="indoors" then
							goal.is_indoors=true
							if params=="start" then indoors_flag=true end
						elseif cmd=="outdoors" then
							indoors_flag=nil
							goal.is_indoors=nil

						elseif cmd=="notinsticky" then
							goal.notinsticky=true

						elseif cmd=="ordcount" then
							goal.ordcount=true  -- unused

						elseif cmd=="simulate" then
							goal.simulate = params

						elseif cmd=="debug" then
							do_debug = (params=="on")

						elseif cmd=="nomovieskip" then
							step.nomovieskip = true

						-- NEW: catch-all from the goals table.
						elseif GOALTYPES[cmd] and GOALTYPES[cmd].parse then
							goal.action = goal.action or cmd
							local errortxt = GOALTYPES[cmd].parse(goal,params,step)
							if type(errortxt)=="string" then return parseerror(errortxt) end


						else

							local text = (cmd=="'") and params or chunk

							text = LG[text]

							-- protect {scripts} from pretty much everything
							local braces={} -- har har
							local function savebrace(s,magic) -- har har indeed, quite an ugly hack to discriminate between brace types
								tinsert(braces,s)
								return not magic and ("%%BRACE"..#braces.."%%") or ("@@BRACE"..#braces.."??"..magic.."@@")
							end
							text = text:gsub("{=(.-)%?%?(.-)=}",savebrace):gsub("{(.-)}",savebrace)


							-- snag coordinates for waypointing, with distance
							local miniprevmap,miniprevfloor = prevmap,prevfloor
							local ways={}
							local function saveway(s)
								local map,flr,x,y,dist, err = ParseMapXYDist(s)
								if err or not x or not y then
									return "["..s.."]"
								else
									local hide
									if s:sub(1,1)=="-" then
										hide=true
										s=s:sub(2)
									end
									tinsert(ways,{map=map or goal.map or step.map or miniprevmap,floor=flr or goal.floor or step.floor or miniprevfloor,x=x,y=y,dist=dist})
									miniprevmap, miniprevfloor = map or miniprevmap, flr or miniprevfloor
									s = ""
									if not hide then
										if map~=goal.map or flr~=goal.floor then s=(ZGV.GetMapNameByID(map) or "(map "..map..")").." " end
										s = COLOR_LOC(L['coords']:format(x*100,y*100))
									end
									return s
								end
							end

							text = text:gsub("%[(.-)%]",saveway)
							if ways[1] then
								goal.dist = tonumber(ways[1].dist)
								goal.x = ways[1].x
								goal.y = ways[1].y
								goal.map,goal.floor = ways[1].map,ways[1].floor
								goal.ways=ways
								goal.force_nocomplete = true
							end


							-- highlight _text_
							text = text:gsub("_(.-)_","|cffffee88%1|r")

							-- uncloak braces
							local function loadbrace(s,magic) -- for explaination what magic is see savebrace
								return not magic and ("{"..braces[tonumber(s)].."}") or ("{="..braces[tonumber(s)].."??"..magic.."=}")
							end
							text = text:gsub("@@BRACE(%d+)%?%?(.-)@@",loadbrace):gsub("%%%%BRACE(%d+)%%%%",loadbrace)

							-- un-cloak escaped underscores
							text = text:gsub("%%UNDER%%","_")

							if text=="_" then text=" " end

							goal.text = text
						end

					end
				end

				chunkcount=chunkcount+1
				if chunkcount>20 then
					return nil,"More than 20 chunks in line",linecount,line
				end
			end end
			-- all chunks are in goal or step... hopefully.


			if goal and next(goal) then
				if not step then return nil,"What? Unknown data before first 'step' tag, or what?",linecount,line end  -- shouldn't happen anymore!

				-- so there's something to record? go ahead.

				setmetatable(goal,ZGV.GoalProto_mt)

				goal.parentStep = step
				goal.num = #step.goals+1

				tinsert(step.goals,goal)

				if not goal.action then
					if (goal.x or goal.map) then
						goal.action = "goto"
					elseif goal.text then
						goal.action = "text"
					end
				end

				if goal.questid and noobsoletequests[goal.questid] then
					goal.noobsolete = true
				end

				goal.showinbrief = had_asterisk

				if (goal.action=="kill" or goal.action=="avoid" or goal.action=="goal")
					and not goal.questid
					and not goal.objnum
					and not goal.criteriaid
					and not goal.achieveid
					and not goal.force_nocomplete
					and not goal.scenario_criteriaid
					and not goal.scenario_stagenum
					then
					goal.force_nocomplete = true
				end
			end

			local cmd=nil -- UNUSED
			if cmd=="level" then
				prevlevel = tonumber(goal.level)
			end

			if goal then goal.indent = #indent end

			if breakout then break end
		end
	until true  end


	if guide.type=="MACRO" then
		-- Try to localize the Spell and item names
		local function ReplaceMacroIDs(guide)
			local macroguide=guide.macro
			local ready=true

			-- Iterating over all the lines
			macroguide.body=macroguide.body:gsub(".-\n",function(par)
				local isItem=par:match("/use") -- If it's not an item, it's most probably a spell
				return par:gsub("##([0-9]*)",function(id)
					if not isItem then
						id=GetSpellInfo(id) -- That's an easy part, really
					else
						local item=ZGV:GetItemInfo(id)
						if not item then -- Item was not found, damn
							ready=false
							id="##"..id
						else -- Item was found
							id=item
						end
					end
					return id
				end)
			end)

			if #macroguide.body>255 then
				return parseerror("macro body exceeded 255 characters after translation:\n"..macroguide.body)
			end


			-- If some data is missing we'd better cool down and retry later
			if not ready then
				ZGV:ScheduleTimer(function() ReplaceMacroIDs(guide) end,2)
			else
				macroguide:Update() -- Localize the instance in the macro book
				guide.fully_parsed=true
			end
		end
		ReplaceMacroIDs(guide)
	end
	--[[
	if prevlevel and not guide.condition_end then
		guide.endlevel = prevlevel
		guide.endlevel_implicit = true
		local cond = "level>=self.endlevel"
		guide['condition_end']=MakeCondition(cond)
		guide['condition_end_raw']=cond
		guide['condition_end_msg']=("You've reached level %.1f"):format(prevlevel)
	end
	--]]

-- check labels within guide. cross guide labels are checked in zgv at the end of _StartupThread, once all guides are parsed
	if ZGV.db.profile.loadguidesfully then
		local steplabels={}
		for si,step in ipairs(guide.steps) do
			local label=step.label
			if label then
				if not steplabels[label] then steplabels[label]={} end
				tinsert(steplabels[label],si)
			end
		end

		for si,step in ipairs(guide.steps) do
			for g,goal in ipairs(step.goals) do
				if goal.next and not goal.next:find("\\") and goal.next~="+1" then
					if not steplabels[goal.next] then
						return nil,"Next label missing: "..goal.next,"-",si,""
					end
				end
			end
		end
	end



	-- Add special step that will trigger guide scoring dialog
	if not guide.headerdata.poiloader and not guide.headerdata.orientation then
		local scorestep = { goals = {}, num = #guide.steps+1, parentGuide=guide, score=true}
		setmetatable(scorestep,ZGV.StepProto_mt)
		tinsert(guide.steps,scorestep)
	end
	return guide
end

local ParseHeader_classes={}
FillLocalizedClassList(ParseHeader_classes)

--- parse just the header

function Parser:ParseHeaderError(msg,param,value)
	print(msg,param,value)
	return
end


local times={}
Parser.HeaderTimes=times
function Parser:ParseHeader(guide)
	local parseerror=Parser.ParseHeaderError
	if not guide.headerdata then
		print("No header. Abort")
		return
	end

	for cmd,params in pairs(guide.headerdata) do
		local t0=debugprofilestop()
		if cmd=="pet" then
			local speciesId = tonumber(params)

			if not speciesId then return parseerror("bad pet number",cmd,params) end

			guide.petSpeciesID = speciesId

			ZGV.PetBattle.PetJournal.RegisterGuide(speciesId,guide)

			local _, _, _, creatureID, _, _, _, _, _, _, _, DisplayID = C_PetJournal.GetPetInfoBySpeciesID(speciesId or 0)

			ZGV.CreatureDetector:RegisterPetID(creatureID,guide)
			guide.headerdata.model = DisplayID

			local cond = function() return haspet(speciesId) end

			local fun,err,cond_procd = MakeCondition(cond)
			if not fun then return parseerror(err,cmd,params) end
			guide['condition_end_raw']=cond_procd or "(code)"
			guide['condition_end']=fun

		elseif cmd=="sugGroup" then
			-- TODO this is a hack.... a little >.>
			guide.sugGroup=params
			-- add this to our registered groups by hand.

			params = params:gsub("\\","\\\\")

			local header,folder = params:match("^([^\\]*)%s*%\\+%s*([^\\]*)")
			if not header then header=params end

			local group = ZGV:FindOrCreateGroup(ZGV.registered_groups,"SUGGESTED\\"..(folder or header)) or ZGV.registered_groups
			group.category=header
			local found
			-- Make sure no duplicates show up
			for i,g in ipairs(group.guides) do
				if g.title == guide.title then
					found = true
					break
				end
			end
			if not found then tinsert(group.guides,guide) end

		elseif cmd=="completion" then
			guide.completionmode = params[1]
			guide.completionparams = {params[2],params[3],params[4]}
			guide.completionraw = params

		elseif cmd=="condition_suggested" or cmd=="condition_valid" or cmd=="condition_invalid" or cmd=="condition_end" or cmd=="condition_visible" or cmd=="condition_suggested_race" then
			local case
			if cmd=="condition_suggested" then case="suggested" end
			if cmd=="condition_valid" then case="valid" end
			if cmd=="condition_invalid" then case="invalid" end
			if cmd=="condition_end" then case="end" end
			if cmd=="condition_visible" then case="visible" end
			if cmd=="condition_suggested_race" then case="suggested_race" end

			-- Hold up, let's see if that is a pet or mount guide
			-- Umm... Parsing a Lua condition using regexps..? Oh dear... ~sinus

			local fun,err,cond_procd = MakeCondition(params)
			if not fun then return parseerror(err,cmd,tostring(params)) end
			guide['condition_'..case..'_raw']=cond_procd or "(code)"
			guide['condition_'..case]=fun

		elseif cmd=="mounts" then
			for m,id in ipairs(params) do
				ZGV.CreatureDetector:RegisterMountSpell(tonumber(id),guide) -- TODO mark duplicates
			end
			guide.mounts=params

		elseif cmd=="pets" then
			for m,id in ipairs(params) do
				ZGV.CreatureDetector:RegisterPetID(tonumber(id),guide) -- TODO mark duplicates
			end

		elseif cmd=="achieveid" then
			-- nothing - achievement guides are "registered" in Achievements.lua.

		-- TODO the parseerror here seems to wreak mayhem everywhere
		-- Only for certain class
		elseif cmd=="class" then
			-- Do we need the support of something like "only for druids and shamans" ?
			if guide.class and guide.class~=params then return parseerror("can't specify multiple classes for a guide, make it general",cmd,params) end
			if not ParseHeader_classes[params] then return parseerror("class "..params.." is unknown to science",cmd,params) end
			--[[ unused?
			guide.icon=guide.icon or { texname="Interface\\Glues\\CharacterCreate\\UI-CharacterCreate-Classes",
										coords = CLASS_ICON_TCOORDS[params] }
			guide.classicon=guide.icon -- In case we need to restore it for some reason
			--]]
			guide.class=params

		-- Only for certain specs
		elseif cmd=="spec" then

			--local function tablelength(T) -- TODO make it more beautiful, anyone?
			--Done. :P ~sinus 2013-03-15

			if not guide.headerdata.class then return parseerror("spec specified without a class, what do you mean?",cmd,params) end
			local spec=ZGV.SpecToNumber[guide.headerdata.class][params]
			if not spec then return parseerror("spec "..params.." unknown for class ".. tonumber(guide.class),cmd,params) end
			if not guide.spec then guide.spec={} end
			--[[ unused?
			local lclass,kclass=UnitClass("player")
			if kclass==guide.class then -- If this is our class we may want to show a spec icon
				if not next(guide.spec) then
					-- This is *probably* for a single spec and for our class
					local _,_,_,specicon=GetSpecializationInfo(spec,false,false,nil)
					guide.icon= { texname=specicon }
				else
					-- This is a multispec thing, screw it, let's show a class icon
					guide.icon=guide.classicon
				end
			end
			--]]
			guide.spec[spec]=true

		elseif cmd=="model" and not guide.headerdata.pet then
			-- guide-wide
			if not ZGV.CreatureDetector.PetMirror then
				ZGV.CreatureDetector.PetMirror=CreateFrame("PlayerModel")
			end

			for i=1,#params do
				local num = tonumber(params[i])
				local npcid
				if not num then
					-- try to use NPC number as model source
					npcid = tonumber(params[i]:match("npc (%d*)"))
					if npcid then num=ZGV.NPCModels[npcid] end
				end
				if num then
					params[i]=num
					local model,file
					local cached = ZGV.PET_MODEL_BASE and ZGV.PET_MODEL_BASE[num]
					if cached then
						model,file = (":"):split(cached) model=tonumber(model) file=tonumber(file)
					else
						ZGV.CreatureDetector.PetMirror:Show() -- briefly
						ZGV.CreatureDetector.PetMirror:SetDisplayInfo(num)
						model=ZGV.CreatureDetector.PetMirror:GetDisplayInfo()
						file=ZGV.CreatureDetector.PetMirror:GetModelFileID()
						if file and ZGV.PET_MODEL_BASE then ZGV.PET_MODEL_BASE[num]=model..":"..file end
					end
					if model then
						ZGV.CreatureDetector:RegisterGuideModel(model,guide,file)
					else
						ZGV:Debug("Unknown model %s",num)
					end
				end
			end
			if ZGV.CreatureDetector.PetMirror:IsShown() then ZGV.CreatureDetector.PetMirror:Hide() end -- and stay low
			guide.model = params
		elseif cmd=="icon" then
			guide.icon= { texname=params, coords={ 0,1,0,1 } }
		elseif cmd=="keywords" then
			guide.keywords = {}
			for _,word in ipairs(params) do
				if word:find(",") then
					for subword in word:gmatch('[ ]*([^,]+)') do
						table.insert(guide.keywords,subword)
					end
				else
					table.insert(guide.keywords,word)
				end
			end
		else
			guide[cmd]=params
		end
		t0=debugprofilestop()-t0
		times[cmd]=(times[cmd] or 0)+t0
	end
end

function Parser:UpdateCovenant()
	for i,v in pairs(C_Covenants.GetCovenantIDs()) do
		local info = C_Covenants.GetCovenantData(v)
		Parser.ConditionEnv[info.textureKit] = C_Covenants.GetActiveCovenantID()==i
	end
end

tinsert(ZGV.startups,{"Parser ConditionEnv:_Setup",function(self)
	self.Parser.ConditionEnv:_Setup()
	if ZGV.IsRetail then ZGV:AddEventHandler("COVENANT_CHOSEN",Parser.UpdateCovenant) end
end,after="Faction startup"})

--[[
do -- unit-check Translate
	assert(Translate("bla")=="bla")
	assert(Translate("bla [deDE] bladede","deDE")=="bladede")
	assert(Translate("bla [deDE] bladede [frFR] blafrfr","deDE")=="bladede")
	--assert(Translate("'bla")=="blaUS")
	--assert(Translate("'blabla")=="blabla",tostring(Translate("''blabla")))
end
--]]