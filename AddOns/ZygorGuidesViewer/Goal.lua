local name,ZGV = ...

local L = ZGV.L

-- GLOBAL ZygorGuidesNPCs

local table,string,tonumber,ipairs,pairs,setmetatable = table,string,tonumber,ipairs,pairs,setmetatable

local Goal = { }
ZGV.GoalProto = Goal
ZGV.GoalProto_mt = { __index=Goal }


local split = function (div,text)
	local res={}
	repeat
		local pos = text:find(div)
		if pos then
			table.insert(res,text:sub(1,pos-1))
			text=text:sub(pos+1)
		end
	until not pos
	table.insert(res,text)
	return unpack(res)
end

local function decolor(text)
	return text:gsub("|c........",""):gsub("|r",""):gsub("|n","; "):gsub("|","||")
end

function Goal:New(data)
	setmetatable(data,ZGV.GoalProto_mt)
	return data
end

Goal.indent=0

local HBD = ZGV.HBD

local MACROICON_TALK = 0 -- INVISIBLE! -- 378
local MACROICON_KILL = 0 -- INVISIBLE! Let our icons shine through. Otherwise, it'd be "ABILITY_DUALWIELD".
local MACROICON_AUTO = 134400 -- question mark, aka default
local MACROICON_MISC = 1505955 --piece of paper
-- Bleh, under 5.0.4 the "1"s are no longer playing nice, can't just make a fake texture and hope for it to be transparent. Sigh.

local BZL,BZR = ZGV.BZL,ZGV.BZR

local LibRover=ZGV.LibRover

local GOALTYPES = {}
ZGV.GOALTYPES = GOALTYPES
local empty_table={}
setmetatable(GOALTYPES,{__index=function() return empty_table end})

local _

--[[ bfa purge
local skillspells = {	--	apprentice	journeyman	expert		artisan		master		grand master	illustrious	zen master	draenor		legion
	Alchemy = {		[75]=2275,	[150]=2280,	[225]=3465,	[300]=11612,	[375]=28597,	[450]=51303,	[525]=80732,	[600]=105208,	[700]=156608,	[800]=201697,	},
	Archaeology = {		[75]=95553,	[150]=95554,	[225]=95555,	[300]=95556,	[375]=95557,	[450]=95558,	[525]=89727,	[600]=110394,	[700]=158763,	[800]=201709,	},
	Blacksmithing = {	[75]=2020,	[150]=2021,	[225]=3539,	[300]=9786,	[375]=29845,	[450]=51298,	[525]=76667,	[600]=110398,	[700]=158738,	[800]=201699,	},
	Cooking = {		[75]=2551,	[150]=3412,	[225]=19886,	[300]=19887,	[375]=33361,	[450]=51295,	[525]=88054,	[600]=104382,	[700]=158766,	[800]=201710,	},
	Enchanting = {		[75]=7414,	[150]=7415,	[225]=7416,	[300]=13921,	[375]=28030,	[450]=51312,	[525]=74259,	[600]=110401,	[700]=158717,	[800]=201698,	},
	Engineering = {		[75]=4039,	[150]=4040,	[225]=4041,	[300]=12657,	[375]=30351,	[450]=51305,	[525]=82775,	[600]=110404,	[700]=158740,	[800]=201700,	},
	['First Aid'] = {	[75]=3279,	[150]=3280,	[225]=19903,	[300]=19902,	[375]=27029,	[450]=50299,	[525]=74560,	[600]=110408,	[700]=158742,	[800]=201701,	},
	Fishing = {		[75]=7733,	[150]=7734,	[225]=19889,	[300]=19890,	[375]=33100,	[450]=64484,	[525]=88869,	[600]=110412,	[700]=158744,	[800]=210829,	},
	Herbalism = {		[75]=2372,	[150]=2373,	[225]=3571,	[300]=11994,	[375]=28696,	[450]=50301,	[525]=74520,	[600]=110415,	[700]=158746,	[800]=201702,	},
	Inscription = {		[75]=45375,	[150]=45376,	[225]=45377,	[300]=45378,	[375]=45379,	[450]=45380,	[525]=86009,	[600]=110418,	[700]=158749,	[800]=201703,	},
	Jewelcrafting = {	[75]=25245,	[150]=25246,	[225]=28896,	[300]=28899,	[375]=28901,	[450]=51310,	[525]=73319,	[600]=110421,	[700]=158753,	[800]=201704,	},
	Leatherworking = {	[75]=2155,	[150]=2154,	[225]=3812,	[300]=10663,	[375]=32550,	[450]=51301,	[525]=81200,	[600]=110424,	[700]=158753,	[800]=201705,	},
	Mining = {		[75]=2581,	[150]=2582,	[225]=3568,	[300]=10249,	[375]=29355,	[450]=50309,	[525]=74518,	[600]=102168,	[700]=158755,	[800]=190989,	},
	Riding = {		[75]=33389,	[150]=33392,	[225]=34092,	[300]=34093,	[375]=90266,											},
	Skinning = {		[75]=8615,	[150]=8619,	[225]=8620,	[300]=10769,	[375]=32679,	[450]=50307,	[525]=74523,	[600]=102220,	[700]=158757,	[800]=190990,	},
	Tailoring = {		[75]=3911,	[150]=3912,	[225]=3913,	[300]=12181,	[375]=26791,	[450]=51308,	[525]=75157,	[600]=110427,	[700]=158759,	[800]=201708,	},
}
--]]

local dots_table = {'.','..','...','....','.....','....','...','..'}
local function dots(num) return dots_table[(num or 0)%8+1] end
local function Lretrydots(goal) return dots(goal.Lretries)..(ZGV.db.profile.debug and goal.Lreasons or "") end


local min,max=min,max
local function norm_nums(numdone,numneeded)  -- normalize "x of y" to >=0,>=1
	if numdone==true then numdone=1 end
	numdone=max(0,numdone or 0)
	numneeded=max(1,numneeded or 1)
	return numdone,numneeded
end
local function norm_progress(numdone,numneeded)  -- normalize progress to 0..1 having normalized input pair
	numdone,numneeded=norm_nums(numdone,numneeded)
	return max(0,min(1,numdone/numneeded))
end


-- returns: current, needed, remaining
function Goal.GetQuestGoalData(questid,objnum,count)
	local questdata,goaldata,goalcountnow,goalcountneeded,remaining, goaltype
	if objnum then
		_, goaltype, _, goalcountnow, goalcountneeded = GetQuestObjectiveInfo(questid,objnum,false)
	end

	if not goalcountneeded then
		questdata=ZGV.questsbyid[questid]
		if not questdata or not questdata.inlog or not objnum then return end

		-- quest-goal completion display; lame 0/5
		goaldata = questdata.goals[objnum]
		if not goaldata then return end
	end

	if goaltype=="progressbar" then
		goalcountneeded = 100
		goalcountnow = GetQuestProgressBarPercent(questid)
	else
		goalcountneeded = count or goalcountneeded or (goaldata and goaldata.needed)
		goalcountnow = goalcountnow or (goaldata and goaldata.num) or 0
	end
	remaining = goalcountneeded-goalcountnow
	if remaining<=0 then remaining=goalcountneeded end

	return goalcountnow,goalcountneeded,remaining
end

-- returns: current, needed, remaining
local function GetScenarioGoalData(scenariogoalid,count,stage)
	if not C_Scenario.IsInScenario() then return 0,count or 0,count or 0,nil,"Start the scenario","bad" end
	if not scenariogoalid then return 0,count or 0,count or 0,nil,"No scenario goal given" end
	if count==0 then count=nil end

	local needed,remaining
	local name, currentStage, numStages,  n1,b1,b2,b3,n2,n3 = C_Scenario.GetInfo()

	if stage and stage>currentStage then
		return 0,count or 0,count or 0,nil,"Reach scenario stage "..stage,"bad"
	end
	if stage and stage<currentStage then
		return 0,count or 0,count or 0,nil,"Completed in stage "..stage
	end

	local stageName, stageDescription, numCriteria, _, _, _, numSpells, spellInfo, weightedProgress = C_Scenario.GetStepInfo();
	for criteriaIndex=1,numCriteria do -- current stage only
		local criteriaString, criteriaType, criteriaCompleted, quantity, totalQuantity, flags, assetID, quantityString, criteriaID, duration, elapsed, failed, isWeightedProgress = C_Scenario.GetCriteriaInfo(criteriaIndex);
		if criteriaID==scenariogoalid then
			if not totalQuantity or totalQuantity==0 then totalQuantity=1 end
			needed = min(count or 9999,totalQuantity)
			return quantity,needed,needed-quantity,criteriaString,nil
		end
	end

	--return
	return 0,count or 0,count or 0, nil,"error: bad goal id"
end
Goal.GetScenarioGoalData = GetScenarioGoalData


local function GetScenarioBonusData(scenariogoalid,count,stage)
	if not C_Scenario.IsInScenario() then return 0,count or 0,count or 0,nil,"Start the scenario","bad" end
	if not scenariogoalid then return 0,count or 0,count or 0,nil,"No scenario goal given" end
	if count==0 then count=nil end

	local needed,remaining
	local name, currentStage, numStages = C_Scenario.GetInfo()

	if stage and stage>currentStage then return 0,count or 0,count or 0,nil,"Reach scenario stage "..stage,"bad" end
	if stage and stage<currentStage then return 0,count or 0,count or 0,nil,"Completed in stage "..stage end

	local tblBonusSteps = C_Scenario.GetBonusSteps();
	for i = 1, #tblBonusSteps do
		local bonusStepIndex = tblBonusSteps[i];
		local _, _, numCriteria = C_Scenario.GetStepInfo(bonusStepIndex);
		for criteriaIndex = 1, numCriteria do
			local criteriaString, criteriaType, criteriaCompleted, quantity, totalQuantity, flags, assetID, quantityString, criteriaID, duration, elapsed, failed, isWeightedProgress  = C_Scenario.GetCriteriaInfoByStep(bonusStepIndex, criteriaIndex);
			if criteriaID==scenariogoalid then
				if not totalQuantity or totalQuantity==0 then totalQuantity=1 end
				needed = min(count or 9999,totalQuantity)
				return quantity,needed,needed-quantity,criteriaString,nil
			end
		end
	end
	return 0,count or 0,count or 0,nil,"Bonus not yet available","bad"

end
Goal.GetScenarioBonusData = GetScenarioGoalData


local GACI_cache = {}
local function Zygor_GetAchievementCriteriaInfo(achieveid, criteria)
	local start = debugprofilestop()
	if GACI_cache[achieveid] and GACI_cache[achieveid][criteria] then -- we have it cached
		local crit = GACI_cache[achieveid][criteria]
		if (start-crit.last)<1000 then -- and it is still fresh (witihn 1 second)
			return crit.desc, crit.ctype, crit.completed, crit.quantity, crit.requiredQuantity
		end
	end

	--local desc, ctype, completed, quantity, requiredQuantity  = GetAchievementCriteriaInfo(achieveid, criteria)
	local success, desc, ctype, completed, quantity, requiredQuantity  = pcall(GetAchievementCriteriaInfo, achieveid, criteria) -- 2019, blizz broke some achieves, so we need to have error handling
	if not success then return "blizzard error",0,0,0,1 end

	local stop = debugprofilestop()
	if (stop-start)>1 then -- Single call took more than 1ms. That is insane. Cache it. (we are looking at your, Variety is the spice of life)
		GACI_cache[achieveid] = GACI_cache[achieveid] or {}
		GACI_cache[achieveid][criteria] = {desc=desc, ctype=ctype, completed=completed, quantity=quantity, requiredQuantity=requiredQuantity, last=stop}
	end
	return desc, ctype, completed, quantity, requiredQuantity
end
ZGV.Zygor_GetAchievementCriteriaInfo = Zygor_GetAchievementCriteriaInfo

-- returns: current, needed, remaining
local function GetAchievementGoalData(achieveid,criteria)
	if not (achieveid or criteria) then return 0,0,0 end

	local numCriteria = GetAchievementNumCriteria(achieveid) --safety check.
	if criteria > numCriteria then return 0,0,0 end

	local desc, _, completed, quantity, requiredQuantity  = Zygor_GetAchievementCriteriaInfo(achieveid, criteria)
	if desc then
		return quantity,requiredQuantity, requiredQuantity - quantity
	end

	return 0,0,0
end
Goal.GetAchievementGoalData = GetAchievementGoalData




local function COLOR_LOC(s) return "|cffffee77"..tostring(s).."|r" end
local function COLOR_COUNT(s) return "|cffffffcc"..tostring(s).."|r" end
local function COLOR_ITEM(s) return "|cffaaeeff"..tostring(s).."|r" end
local function COLOR_QUEST(s) return "|cffeebbff"..tostring(s).."|r" end
local function COLOR_NPC(s) return "|cffaaffaa"..tostring(s).."|r" end
local function COLOR_MONSTER(s) return "|cffffaaaa"..tostring(s).."|r" end
local function COLOR_GOAL(s) return "|cffffcccc"..tostring(s).."|r" end
local function COLOR_BOLD(s) return "|cffffee55"..tostring(s).."|r" end


local function plural(s,i)
	if not i or i==1 then return s else return ZygorGuidesViewer_L("Specials")["plural"](s) end
end

local function GenericText(brief,goaltype,colorfunc,count,target,nocount,isplural,_done,isthe)
	if nocount or not count or count==0 then
		local formattxt = brief and "%s" or L["stepgoal_"..goaltype.._done]
		return formattxt:format((isthe and "the " or "")..colorfunc(plural(target,isplural and 2 or 1)))
	else
		local formattxt = brief and "%s %s" or L["stepgoal_"..goaltype.." #".._done]
		return formattxt:format(count or "?",(isthe and "the " or "")..colorfunc(plural(target,count)))
	end
end


local ParseID = ZGV.Parser.ParseID
local ParseMapXYDist = ZGV.Parser.ParseMapXYDist






--[[
█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

						 ██████╗  ██████╗  █████╗ ██╗  ████████╗██╗   ██╗██████╗ ███████╗███████╗
						██╔════╝ ██╔═══██╗██╔══██╗██║  ╚══██╔══╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔════╝
						██║  ███╗██║   ██║███████║██║     ██║    ╚████╔╝ ██████╔╝█████╗  ███████╗
						██║   ██║██║   ██║██╔══██║██║     ██║     ╚██╔╝  ██╔═══╝ ██╔══╝  ╚════██║
						╚██████╔╝╚██████╔╝██║  ██║███████╗██║      ██║   ██║     ███████╗███████║
						 ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝      ╚═╝   ╚═╝     ╚══════╝╚══════╝

█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

]]

--[[
:parse(params)
	Populate a goal type by parsing of text parameters, with the key word already cut off.
	Returns: nothing.
:iscomplete()
	Check completion of goal.
	Returns: iscomplete,ispossible,numdone,numneeded,comment,error
	May not return numdone and numneeded. Assume 0/1 or 1/1, based on iscomplete.
	Only to be called from :GetStatus().
]]

GOALTYPES['talknpcs'] = {
    parse = function(self,params)
        self.npctype = params
    end,

    onLibRoverResults = function(state, path, ext)
	if state~="success" then return end

	local last
	for i,node in ipairs(path) do
		if node.type=="end" then 
			last = node
		end
	end

	if last then
		local title = ZGV.L['stepgoal_talk to']:format(ZGV.Localizers:GetTranslatedNPC(tonumber(last.title)) or "?")
		if last.w then
			title = title .. "\n".. (last.w=="1" and L["whowhere_walks"] or last.w)
		end
		local way = ZGV.Pointer:SetWaypoint(last.m,last.x,last.y,{
			title=title,
			type="manual",
			cleartype=not IsControlKeyDown(),
			icon=ZGV.Pointer.Icons.greendotbig,
			onminimap="always",
			overworld=true,
			showonedge=true,
			findpath=true,
			manualnpcid = npcid,
			waypoint_region=last.region
		})
	end

        local self = ext.goal
	self.npcid = last.title
    end,

    onenter = function(self)
        ZGV.WhoWhere:FindNPC_Smart(self.npctype,self,GOALTYPES[self.action].onLibRoverResults)
    end,

    gettext = function(self)
	if self.npcid then
	    return  (ZGV.L['stepgoal_talk to nearest']:format(self.npctype) .. ZGV.L['stepgoal_:']:format(COLOR_NPC(ZGV.Localizers:GetTranslatedNPC(tonumber(self.npcid),self.npc))))
	else
	    return L["stepgoal_talk to"]:format(COLOR_NPC(self.npctype))
	end
    end,
}

GOALTYPES['openskill'] = {
	parse = function(self,params)
		self.tradeskill = params
	end,

	gettext = function(self)
		if self.tradeskill then
			return "Open "..self.tradeskill.." tradeskill"
		else
			return "Open and close all your tradeskills."
		end
	end,
}

GOALTYPES['findcity'] = {
    parse = function(self,params)
        self.npctype = params
    end,

    onLibRoverResults = function(state, path, ext)
	if state~="success" then return end

	local last
	for i,node in ipairs(path) do
		if node.type=="end" then 
			last = node
		end
	end

	if last then
		local title = ZGV.L['stepgoal_visit_city']:format("main city" or "?")
		if last.w then
			title = title .. "\n".. (last.w=="1" and L["whowhere_walks"] or last.w)
		end
		local way = ZGV.Pointer:SetWaypoint(last.m,last.x,last.y,{
			title=title,
			type="manual",
			cleartype=not IsControlKeyDown(),
			icon=ZGV.Pointer.Icons.greendotbig,
			onminimap="always",
			overworld=true,
			showonedge=true,
			findpath=true,
			manualnpcid = npcid,
			waypoint_region=last.region
		})
	end

        local self = ext.goal
	self.npcid = last.title
	self.mapname = ZGV.GetMapNameByID(last.m)
	Goal.city = self.mapname
    end,

    onenter = function(self)
	ZGV.WhoWhere:FindNPC_Smart(self.npctype,self,GOALTYPES[self.action].onLibRoverResults)
    end,

    gettext = function(self)
	if self.npcid then
	    return  (ZGV.L['stepgoal_visit_city']:format(self.npctype) .. ZGV.L['stepgoal_:']:format(COLOR_NPC(self.mapname)))
	else
	    return L["stepgoal_visit_city"]:format(COLOR_NPC(self.npctype))
	end
    end,

  --[[  iscomplete = function(self)
	--local currentmap = ZGV.GetMapNameByID(C_Map.GetBestMapForUnit("player"))
	local px,py,pm = LibRover:GetPlayerPosition()
	local currentmap = ZGV.GetMapNameByID(pm)
	if currentmap == self.mapname then
		return true
	end
    end,
   --]]
}

GOALTYPES['_item'] = {
	parse = function(self,params)		-- serves as generic parser for: [num] [name]##id["+"]
		local count,objinfo,objid
		local obj = ""

		-- 4 Itemname##id
		count,objinfo = params:match("^([0-9]+)%s+(.+)$")
		if not count then
			objinfo = params
		end

		local function parse(str)
				-- check for plural
				local name,plural = str:match("^(.+)(%+)$")
				if plural then
					str = name
				end

				local tar, tarid = ParseID(str)

				if tar and tar:sub(1,4)=="the " then
					self.the = true
				end

				if plural then
					tar = tar and ZygorGuidesViewer_L("Specials").plural(tar)
					self.plural=true
				end

			return tar,tarid
		end

		self.count = tonumber(count)

		local mult = {split(",",objinfo)}
		if #mult > 1 then
			local targets = {}
			self.targets = targets
			for i,info in ipairs(mult) do
				-- Name##Id are split, parse each individually and then put it in the targets table.

				local tar,tarid = parse(info)

				tinsert(targets,{tar,tarid})

				objid = objid or tarid	-- TODO only the first targetid is returned. This isn't an issue 3/1/14 but if we strip out english names then will have to use multiple ids to create the obj.

				if tar then
					obj = obj .. tar .. (i<#mult and ", " or "")	-- Append the target name to the obj, if not the last one then include a ,
				end
			end
		else
			obj, objid = parse(objinfo)
		end

		self.target,self.targetid = obj,objid

		-- something missing?
		if not self.targetid and not self.target then return "no parameter" end
	end
}

GOALTYPES['itemname'] = { -- simply display item name and count.
	parse = GOALTYPES['_item'].parse,
	gettext = function(self)
		if self.count then
			return self.count.." "..(ZGV:GetItemInfo(self.targetid) or self.targetid)
		else
			return ZGV:GetItemInfo(self.targetid) or self.targetid
		end
	end,
}

GOALTYPES['get'] = { -- combining old 'get' and 'collect' now.
	parse = GOALTYPES['_item'].parse,
	iscomplete = function(self)
		if not self.targetid then return false,true end -- no known item... what the...
		if not self.count or self.count==0 then self.count=1 end  -- completable? has to have a count.
		local got = GetItemCount(self.targetid)
		if self.more then got=max(0,got-self.more_base) end
		if self.exact then
			return got==self.count, true, norm_nums(got,self.count)
		else
			return got>=self.count, true, norm_nums(got,self.count)
		end
	end,
	-- gettext complex; still in Goal:GetText()
}

GOALTYPES['trash'] = {
	parse = GOALTYPES['_item'].parse,
	iscomplete = function(self)
		if not self.targetid then return false,true end -- no known item... what the...
		if not self.count or self.count==0 then self.count=1 end  -- completable? has to have a count.
		local got = GetItemCount(self.targetid)
		return got==0, true, (got==0) and 1 or 0
	end,
	gettext = function(self)
		local got = GetItemCount(self.targetid)
		if got>0 then
			return L["stepgoal_trash #"]:format(COLOR_ITEM(ZGV:GetItemInfo(self.targetid)),COLOR_COUNT(got))
		else
			return L["stepgoal_trash"]:format(COLOR_ITEM(ZGV:GetItemInfo(self.targetid)),COLOR_COUNT(got))
		end
	end,
}
GOALTYPES['bank'] = GOALTYPES['trash']

GOALTYPES['craft'] = GOALTYPES['get']	-- for correct text display
GOALTYPES['farm'] = GOALTYPES['get']	-- in dynamic gold craft guides

GOALTYPES['toy'] = {
	parse = GOALTYPES['_item'].parse,
	iscomplete = function(self)
		if not self.targetid then return false,true,0 end -- no known item... what the...
		return PlayerHasToy(self.targetid),true
	end,
	gettext = function(self)
		if not PlayerHasToy(self.targetid) then
			return (L["stepgoal_toy"]):format(COLOR_ITEM(ZGV:GetItemInfo(self.targetid)))
		else
			return (L["stepgoal_toy_done"]):format(COLOR_ITEM(ZGV:GetItemInfo(self.targetid)))
		end
	end,
}

GOALTYPES['goldcollect'] = {
	parse = GOALTYPES['_item'].parse,
	iscomplete = function(self)
		if not self.targetid then return false,true,0 end -- no known item... what the...
		local itemdata = ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[self.targetid]
		local demand = itemdata and (itemdata.sold or itemdata.q_md or (itemdata.q_lo + itemdata.q_hi)/2)
		local got = GetItemCount(self.targetid)

		if not itemdata then -- if we do not have trends for this item, never complete the farm
			return false, true, norm_nums(got,got+1)
		end

		self.demand = demand
		if self.exact then
			return self.demand>0 and got==demand, true, norm_nums(got,demand)
		else
			return self.demand>0 and got>=demand, true, norm_nums(got,demand)
		end
	end,
	-- gettext complex; still in Goal:GetText()! What is this doing here!?
	--[[
	NOgettext = function(self)
		local iscomplete,ispossible,numdone,numneeded = self:IsComplete()
		local progress = norm_progress(numdone,numneeded)
		local got = GetItemCount(self.targetid)
		if got==0 then
			return (L["stepgoal_goldcollect"]):format(COLOR_ITEM(ZGV:GetItemInfo(self.targetid)))
		else
			return (L["stepgoal_goldcollect #_done"]):format(COLOR_COUNT(got),COLOR_ITEM(ZGV:GetItemInfo(self.targetid))), nil, ("(%d%%)"):format(progress*100)
		end
	end,
	--]]
	gettooltip = function(self)
		local iscomplete,ispossible,numdone,numneeded = self:IsComplete()
		local progress = norm_progress(numdone,numneeded)
		local got = GetItemCount(self.targetid)
		return (L["stepgoal_goldcollect #_done"]):format(COLOR_COUNT(got),COLOR_ITEM(ZGV:GetItemInfo(self.targetid))) .. ("\n|cffffbbbb(%d%% of demand)|r"):format(progress*100)
	end
}

GOALTYPES['goldtracker'] = {
	parse = function() end,
	gettext = function(self)
		local step = self.parentStep
		local totalvalue = 0
		for i,goal in pairs(step.goals) do
			if goal.action == "goldcollect" then
				local numInBags = GetItemCount(goal.targetid) or 0
				local _, _, itemRarity, _, _, _, _, _, _, _, itemSellPrice = ZGV:GetItemInfo(goal.targetid)

				if itemSellPrice and itemRarity and itemRarity==0 then
					-- Thus is trash, price as vendor trash.
					totalvalue = totalvalue + itemSellPrice * numInBags
				elseif ZGV.Gold.servertrends and ZGV.Gold.servertrends.items[goal.targetid] and ZGV.Gold.servertrends.items[goal.targetid].p_lo then
					-- GetPrice only gets today's price, and there may be gaps. Check server trends first. ~~ Jeremiah
					totalvalue = totalvalue + ZGV.Gold.servertrends.items[goal.targetid].p_lo * numInBags
				else
					totalvalue = totalvalue + ZGV.Gold.Scan:GetPrice(goal.targetid) * numInBags
				end
			end
		end

		return L['stepgoal_goldtracker']:format(GetMoneyString(totalvalue))
	end,
}

GOALTYPES['buy'] = {
	parse = function(self,params)
		-- assume buys are futureproof
		self.future=true
		local r1,r2,r3
		local data,maxprice = params:match("^(.*) maxprice *(.*)$") -- custom for dynamic crafting guides
		if maxprice then
			self.maxprice = maxprice
			r1,r2,r3 = GOALTYPES['_item'].parse(self,data)
		else
			r1,r2,r3 = GOALTYPES['_item'].parse(self,params)
		end
		self.count = self.count or 1
		return r1,r2,r3
	end,
	iscomplete = GOALTYPES['get'].iscomplete,
	-- gettext still in Goal:GetText
}

GOALTYPES['kill'] = {
	parse = GOALTYPES['_item'].parse,
	iscompletable = function(self) return self.usekillcount end,  -- this is never used, but hey.
	iscomplete = function(self)
		-- could get completed earlier as a quest objective.
		if self.usekillcount then --killcount version
			local count = ZGV.recentKills[self.target] or 0
			return count>=self.count, true, norm_nums(count,self.count)
		end
	end,
	-- gettext complex; still in Goal:GetText()
}

GOALTYPES['avoid'] = {
	parse = GOALTYPES['_item'].parse,
	-- let it complete as any quest objective: by default.
}

GOALTYPES['collect'] = {
	parse = function(self,params)
		self.action="get"  -- obvious? not really: 'get' is aliased by 'collect'. This forces it to BE 'get'.
		return GOALTYPES['get'].parse(self,params)
	end,
	iscomplete = GOALTYPES['get'].iscomplete,
	-- gettext complex; still in Goal:GetText()
}

GOALTYPES['goal'] = {
	parse = GOALTYPES['_item'].parse,
	-- let it complete as any quest objective: by default.
	gettext = function(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining,brief) return GenericText(brief,self.action,COLOR_GOAL,remaining or self.count,self.target,not self.count or self.count==1,false,(complete and "_done" or "")) end,
}

GOALTYPES['confirm'] = {
	parse = function(self,params)
		self.always = (params == "always")
		self.begin = (params == "begin")
		self.skip = (params == "skip")
		self.optional = true
		self.was_clicked = false
	end,
	iscomplete = function(self)
		return self.was_clicked,true
	end,
	gettext = function(self) 
		if self.begin then
			return "(Click here to begin)"
		elseif self.skip then
			return "(Click here if you do not intend to use the Gold Guide)"
		else
			return L["stepgoal_confirm"]
		end	
	end,
	click_to_complete = true,
}

GOALTYPES['reload'] = {
	parse = function(self)
		self.optional = true
	end,
	onclick = function(self)
		ReloadUI()
	end,
	gettext = function(self) 
		return "(Click to reload and check for data again.)"
	end,
}

local profSkillID = ZGV.Professions.skillIDs

GOALTYPES['learn'] = {
	parse = function(self,params)
		self.recipe,self.recipeid = ParseID(params)
		if not self.recipeid then return "'learn': no recipe found" end
	end,
	iscomplete = function(self)
		return ZGV.Professions:KnowsRecipe(self.recipeid),true
	end,
	gettext = function(self) return L["stepgoal_learn"]:format(COLOR_ITEM(self.recipe)) end,
}

GOALTYPES['learnmount'] = {
	parse = function(self,params)
		self.spell,self.spellid = ParseID(params)
	end,
	iscomplete = function(self)
		local mountIDs = C_MountJournal.GetMountIDs();
		for i, mountID in ipairs(mountIDs) do
			local name, spell, _, _, _, _, _, _, _, _, isCollected = C_MountJournal.GetMountInfoByID(mountID)
			if spell==self.spellid and isCollected then return true,true end
		end
		return false,true
	end,
	gettext = function(self) return L["stepgoal_learnmount"]:format(COLOR_ITEM(GetSpellInfo(self.spellid))) end,
}

GOALTYPES['learnpet'] = {
	parse = function(self,params)
		self.pet,self.petid = ParseID(params)
		self.npcId = ZGV.PetBattle.NPCIdBySpeciesId[self.petid] or 0
	end,
	iscomplete = function(self)

		local numCollected, limit = C_PetJournal.GetNumCollectedInfo(self.petid)
		return ((numCollected or 0) > 0),true
		
	end,
	gettext = function(self) return L["stepgoal_learnpet"]:format(COLOR_ITEM(ZGV.Localizers:GetTranslatedNPC(self.npcId))) end,
}

GOALTYPES['petspecies'] = {
	parse = function(self,params)
		local _
		_,self.petspeciesid = ParseID(params)
	end,
}

GOALTYPES['learnspell'] = {
	parse = function(self,params)
		self.spell,self.spellid = ParseID(params)
	end,
	iscomplete = function(self)
		return IsSpellKnown(self.spellid), true
	end,
	gettext = function(self) return L["stepgoal_learnspell"]:format(COLOR_ITEM(GetSpellInfo(self.spellid))) end,
}

GOALTYPES['learnpetspell'] = {
	parse = function(self,params)
		self.spell,self.spellid = ParseID(params)
	end,
	iscomplete = function(self)
		return IsSpellKnown(self.spellid,true), true
	end,
	gettext = function(self) return L["stepgoal_learnpetspell"]:format(COLOR_ITEM(GetSpellInfo(self.spellid))) end,
}

GOALTYPES['activepet'] = {
	parse = function(self,params)
		self.pet,self.petid = ParseID(params)
	end,
	iscomplete = function(self)
		local guid = UnitGUID("pet")
		if not guid then return false end
		local _,_,_,_,_,npcpetid = strsplit("-",guid)
		return npcpetid==self.petid, true
	end,
	gettext = function(self) return L["stepgoal_activepet"]:format(COLOR_ITEM(self.pet or self.petid)) end,
}

GOALTYPES['accept'] = {
	parse = function(self,params)
		if not params then return "no quest parameter" end
		self.quest,self.questid = ParseID(params)
		if self.quest then
			local q,qp = self.quest:match("^(.-)%s-%((%d+)%)$")
			if q then self.quest,self.questpart=q,qp end
		end
		if not self.quest and not self.questid then return "no quest parameter" end

		if self.questid then
			ZGV.mentionedQuests[self.questid] = 1
			--[[  -- this is obsolete SIS stuff anyway
			if not step.level then return "Missing step level information" end
			local lev = ZGV.mentionedQuests[self.questid]
			if guide.dynamic then
				if not lev or lev<step.level then lev=step.level end
			else
				if not lev then lev=-1 end
			end
			ZGV.mentionedQuests[self.questid] = lev
			--]]
		end
	end,
	iscomplete = function(self) -- OVERWRITTEN in code-tbc
		local quest = ZGV.questsbyid[self.questid]
		local complete = (ZGV.completedQuests[self.questid] and not self.repeatablequest)
		    --or (ZGV.recentlyCompletedQuests[self.questid] or ZGV.recentlyCompletedQuests[self.quest])
		    or (quest and quest.inlog)
		    -- or ZGV.instantQuests[self.questid]  -- and ZGV.completedQuestTitles[self.quest])  -- let's not use this anymore, with GetQuestID available
		    -- or (not ZGV.CurrentGuide.daily and ZGV.db.char.permaCompletedDailies[self.questid])  -- deprecating this, let's see if this works.

		return complete, complete or (ZGV.QuestDB:IsQuestPossible(self.questid)==ZGV.QuestDB.VALID_NOW)     --[[or ZGV.recentlyAcceptedQuests[id] --]]
	end,
	gettext = function(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining,brief) return (brief and "%s" or L["stepgoal_accept"..(complete and "_done" or "")]):format(COLOR_QUEST((self.questpart and L['questtitle_part'] or L['questtitle']):format(self.quest and self.quest.title or Lretrydots(self),self.questpart))) end,
}

GOALTYPES['turnin'] = {
	parse = GOALTYPES['accept'].parse,
	iscomplete = function(self)
		--[[ Completion sequence:
								ZGV.completedQuests[id]		ZGV.questsbyid[id]
		 1. CHAT_MSG_SYSTEM "<quest> completed."	nil				{...}
		     - ZGV.completedQuests[id] = true		true				{...}
		 2. QUEST_LOG_UPDATE, quest gone from log.	true				nil

		--]]

		-- Completed if it's in the completed bin, but NOT in the log.
		-- If it's in the log, it couldn't be completed; this fixes some weird multiple-completion quests, like #348 Stranglethorn Fever.
		-- completeable if it's in the log and complete or non-goaled.

		local quest = ZGV.questsbyid[self.questid]
		local turned = ZGV.completedQuests[self.questid]
					and (not quest or not quest.inlog) -- Repeatables might be completed and in the log at the same time. We need to complete only when they're not in the log anymore.

			-- or (not ZGV.CurrentGuide.daily and ZGV.db.char.permaCompletedDailies[self.questid])

		return turned, turned or (quest and quest.inlog and (quest.complete or #quest.goals==0)), 0, not turned and quest and quest.inlog and not quest.complete and #quest.goals>0
	end,
	onenter = function(self)
		ZGV:QuestTracking_CacheQuestLog()
	end,
	gettext = function(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining,brief) return (brief and "%s" or L["stepgoal_turn in"..(complete and "_done" or "")]):format(COLOR_QUEST((self.questpart and L['questtitle_part'] or L['questtitle']):format(self.quest and self.quest.title or Lretrydots(self),self.questpart))) end,
}

GOALTYPES['countremains'] = { -- works with hidden quests that do not show in questlog, so are not being tracked in zgv.questsbyid
	parse = function(self,params,step)
		self.quest,self.questid,self.objnum = ParseID(params)
		if not self.questid then return "|q: no questid in parameter" end
		if not self.objnum then return "|q: no objnum in parameter" end
	end,
	iscomplete = function(self)
		if ZGV.completedQuests[self.questid] then return true,true,nil,nil,"quest complete" end

		local disp,_,completed,done,needed = GetQuestObjectiveInfo(self.questid,self.objnum,false)
		if not disp then return false, false, nil,nil, "no such goal", "bad" end
		done = (done or 0)
		needed = (needed or 0)
		if done>=needed then
			self.count = 0
			return true, true, done,needed,  "quest goal num at or over count"
		else
			self.count = needed - done
			return false,true, done,needed, "quest goal num below count"
		end
	end
}

GOALTYPES['q'] = {
	parse = function(self,params,step)
		--local first=params:match("^(.-),")
		--if first then params=first end
		-- removed on 2014-08-27, who in their right mind would put several quests in one |q ?
		self.quest,self.questid,self.objnum = ParseID(params)
		if not self.questid then return "|q: no questid in parameter" end
		if self.action=="text" then self.action="q" end  -- override plaintext actions. A bit of a hack...
	end,
	iscomplete = function(self)
		-- NEW: if it's a goddamn instant daily, try to reset it.
		--if ZGV.instantQuests[self.questid] and ZGV.dailyQuests[self.questid] then ZGV:QuestTracking_ResetDailyByTitle(self.quest) end

		-- if the quest was done, the goal is done and over with. Bye.
		if ZGV.completedQuests[self.questid] then return true,true,nil,nil,"quest complete" end

		-- if the quest cannot be completed, and we're not a futureproof goal, bail.
		--if not ZGV:IsQuestPossible(self.questid) and not self.future then return false,false end

		-- okay, so the quest may yet be possible. Is it in the log?
		local quest = ZGV.questsbyid[self.questid]
		if quest and quest.inlog then

			-- Now if it is goalbound, complete it as the goal would.
			if self.objnum then
				local questGoalData = quest.goals[self.objnum]

				if questGoalData then
					if questGoalData.complete then
						return true, true, nil,nil,  "quest goal complete"
					else
						local num,count = norm_nums(questGoalData.num,self.count or questGoalData.needed)
						if not self.count and count then self.count=count end  -- supply a count for countless lines.
						if questGoalData.num>=count then
							return true, true, num,count,  "quest goal num at or over count"
						else
							--ZGV:Debug("Not yet completed: "..questself.num.."/"..questgoal.needed)
							return false,true, num,count, "quest goal num below count"
						end
					end
				else
					-- As of 6.0.2, this can happen normally on multi-goal quests. Future goals will NOT be accessible.
					--ZGV:Print("WARNING: quest has no such goal! Step "..self.parentStep.num..", line "..(self.num)..", quest "..(self.questid or (self.quest and self.quest.title))..", goal "..(self.objnum or -1))
					return false, false, nil,nil, "no such goal", "bad"
				end
			else
				-- bound to quest, not to quest objective?
				if not self.action or self.action=="" or self.action=="complete" then
					-- okay, this is a simple "complete the quest" check
					return C_QuestLog.IsQuestFlaggedCompleted(self.questid), true, nil,nil, "quest completion"
				else
					return false,true,nil,nil,"FALLTHROUGH"  -- code word is no longer obeyed
				end
				-- otherwise... just drop from here.

				--[[
				if questInLog.complete or #questInLog.goals==0 then
					return true,true
				else
					-- otherwise drop through, let it complete on its own.
				end
				--]]
			end
		else
			-- if quest is not in log, then it usually means screw its links as well.
			-- Unless we're a future-proof goal, which drops through.
			if not self.future then
				return false,false, nil,nil, "quest not in log"
			else
				return false,true,nil,nil, "FALLTHROUGH"  -- code word is no longer obeyed
			end
		end
	end
}

GOALTYPES['quest']=GOALTYPES['q']

local FREQ_DAILY = Enum.QuestFrequency and Enum.QuestFrequency.Daily or LE_QUEST_FREQUENCY_DAILY
GOALTYPES['noquest'] = {
	parse = function(self,params,step)
		self.npc,self.npcid=ParseID(params)
		if not self.npcid then
			-- grab an npc from any goal in the step
			for gi,goal in ipairs(step.goals) do
				if goal.npcid then self.npcid=goal.npcid break end
			end
		end
		self.sticky=true
		self.override=true
	end,
	iscomplete = function(self)
		if ZGV.GetTargetId()==self.npcid then
			if GossipFrame:IsShown() then
				local noquests=true
				local DATA_IN_GOSSIP=7  -- 7.2.5: title, level, isTrivial, frequency, isRepeatable, isLegendary, isIgnored
				for qnum=1,GetNumGossipAvailableQuests() do
					local name,level,isTrivial,frequency,isRepeatable,isLegendary = select((qnum-1)*DATA_IN_GOSSIP+1,GetGossipAvailableQuests())
					if frequency==FREQ_DAILY then noquests=nil break end  -- one daily breaks it
				end
				local DATA_IN_GOSSIP=6  -- 7.2.5: title, level, isLowLevel, isComplete, isLegendary, isIgnored
				for qnum=1,GetNumGossipActiveQuests() do
					local name,level,isTrivial,isComplete,isLegendary = select((qnum-1)*DATA_IN_GOSSIP+1,GetGossipActiveQuests())
					if isComplete then noquests=nil break end  -- one complete breaks it
				end
				if noquests then CloseGossip() end
				return noquests, true
			elseif QuestFrameGreetingPanel:IsShown() then
				local noquests=true
				for qnum=1,GetNumAvailableQuests() do
					local isTrivial,isDaily,isRepeatable = GetAvailableQuestInfo(qnum)
					if isDaily then noquests=nil break end
				end
				if noquests then CloseQuest() end
				return noquests, true
			elseif QuestFrame:IsShown() and ZGV.db.profile.autoaccept and not GetObjectiveText() and not IsQuestCompletable() then -- sitting in an incomplete quest detail
				return true, true
			elseif ZGV.last_questgiver_id==self.npcid and GetTime()-ZGV.last_questgiver_time>1 and GetTime()-ZGV.last_questgiver_time<3 then
					-- no open dialogs, and it's been like 1-3 seconds since we accepted a quest here. MIGHT BE OVERZEALOUS!
				return true, true
			end
			return false, true
		end
		return false,true
	end,
	gettext = function(self)
		return (L["stepgoal_noquest"]):format(COLOR_NPC(ZGV.Localizers:GetTranslatedNPC(self.npcid,self.npc)))
	end,
	click_to_complete = true,
}

GOALTYPES['scenariostart'] = {
	parse = function(self,params)
		if params~="" then self.scenario_name = params end
	end,
	iscomplete = function(self)
		local name, currentStage, numStages = C_Scenario.GetInfo()
		if self.scenario_name then
			return name==self.scenario_name, true
		else
			return name~=nil, true
		end
	end,
	gettext = function(self) return self.scenario_name and L['stepgoal_scenariostart']:format(COLOR_BOLD(self.scenario_name)) or L['stepgoal_scenariostart_unknown'] end,
}

GOALTYPES['scenarioend'] = {
	parse = function(self,params) end,
	iscomplete = function(self)
		local _,_,_,_,_,_,completed = C_Scenario.GetInfo();
		return not C_Scenario.IsInScenario() or completed, true
	end,
}

GOALTYPES['scenariostage'] = {
	parse = function(self,params)
		self.scanarioname,self.scenario_stagenum = ParseID(params)
		--self.scenario_stagenum = tonumber(params)
	end,
	iscomplete = function(self)
		if not C_Scenario.IsInScenario() then return false,false, nil, nil, "not in scenario","bad" end

		local name, currentStage, numStages,_,_,_,completed = C_Scenario.GetInfo();
		return completed or (currentStage>self.scenario_stagenum), currentStage>0, nil,nil, "n/c", (not completed and currentStage==0) and "bad"
	end,
	gettext = function(self	)
		local name, currentStage, numStages = C_Scenario.GetInfo()
		if name and currentStage<=self.scenario_stagenum then
			return L['stepgoal_scenariostage_named']:format(currentStage,name)
		elseif name and currentStage>self.scenario_stagenum then
			return L['stepgoal_scenariostage_done']:format(self.scenario_stagenum)
		else
			return L['stepgoal_scenariostage']:format(self.scenario_stagenum)
		end
	end,
	help = "scenariostage <n>  -- completes when the current scenario has COMPLETED and MOVED PAST stage n. "
}

GOALTYPES['scenariogoal'] = {
	parse = function(self,params)
		if tonumber(params) then
			self.scenario_criteriaid = tonumber(params)
		else
			self.goalname,self.scenario_stagenum,self.scenario_criteriaid = ParseID(params)
		end
	end,
	iscomplete = function(self)
		if self.scenario_stagenum then
			local iscomplete,ispossible = GOALTYPES['scenariostage'].iscomplete(self)
			if iscomplete then return true,true, nil,nil, "complete by stage" end
		end
		local current, needed, remaining, text, errortext,isbad = GetScenarioGoalData(self.scenario_criteriaid,self.count,self.scenario_stagenum)
		if errortext then return false,C_Scenario.IsInScenario(), nil,nil, errortext,isbad end
		if needed>0 and self.count and self.count>needed then self.count=needed end
		local cur,nee=norm_nums(current,needed)
		return (needed>0 and remaining<=0) , needed>0 , cur,nee, "scenario goal OK",isbad
	end,
	gettext = function(self)
		local stageName, stageDescription, numCriteria = C_Scenario.GetStepInfo()
		local num,needed,remaining,text,errortext = GetScenarioGoalData(self.scenario_criteriaid,self.count,self.scenario_stagenum)
		if errortext then return nil,errortext end
		if text then
			if self.count then
				return L['stepgoal_scenariogoal #']:format(text,self.count)
			else
				return L['stepgoal_scenariogoal']:format(text)
			end
		else
			-- whoa, NO goal caught it? Perhaps the wrong stage... too bad.
			if self.count then
				return nil,L['stepgoal_scenariogoal_unknown_#']:format(self.count)
			else
				return nil,L['stepgoal_scenariogoal_unknown']:format()
			end
		end

		--[[
		if not stageName then
			-- unknown stage, we're likely not in the scenario
			if self.count then
				return nil,L['stepgoal_scenariogoal_unknown #']:format(self.count)
			else
				return nil,L['stepgoal_scenariogoal_unknown']:format()
			end
		else
			local num,needed,remaining,text,errortext = GetScenarioGoalData(self.scenario_criteriaid,self.count,self.scenario_stagenum)
			if errortext then return nil,"bad scenario goal #"..self.scenario_criteriaid..": "..errortext end
			if text then
				if self.count then
					return L['stepgoal_scenariogoal #']:format(text,self.count)
				else
					return L['stepgoal_scenariogoal']:format(text)
				end
			else
				-- whoa, NO goal caught it? Perhaps the wrong stage... too bad.
				if self.count then
					return nil,L['stepgoal_scenariogoal_unknown_#']:format(self.count)
				else
					return nil,L['stepgoal_scenariogoal_unknown']:format()
				end
			end
		end
		--]]

		--local text = GenericText(brief,self.action,COLOR_GOAL,remaining or self.count,self.target,not self.count or self.count==1,false,_done)
	end,
	help = "scenariogoal <id> [<count>] -- completes when the scenario goal with <id> has completed (if no <count> given) or reached partial completion (if <count> is given).",
}

GOALTYPES['scenariobonus'] = {
	parse = function(self,params)
		if tonumber(params) then
			self.scenario_criteriaid = tonumber(params)
		else
			self.goalname,self.scenario_stagenum,self.scenario_criteriaid = ParseID(params)
		end
	end,
	iscomplete = function(self)
		if self.scenario_stagenum then
			local iscomplete,ispossible = GOALTYPES['scenariostage'].iscomplete(self)
			if iscomplete then return true,true,0, "complete by stage" end
		end
		local current, needed, remaining, text, errortext,isbad = GetScenarioBonusData(self.scenario_criteriaid,self.count,self.scenario_stagenum)
		if errortext then return false,C_Scenario.IsInScenario(),nil,nil,errortext,isbad end
		if needed>0 and self.count and self.count>needed then self.count=needed end
		local cur,nee=norm_nums(current,needed)
		return (needed>0 and remaining<=0) , needed>0 , cur,nee, "scenario goal OK",isbad
	end,
	gettext = function(self)
		local stageName, stageDescription, numCriteria = C_Scenario.GetStepInfo()
		local num,needed,remaining,text,errortext = GetScenarioBonusData(self.scenario_criteriaid,self.count,self.scenario_stagenum)
		if errortext then return nil,errortext end
		if text then
			if self.count then
				return L['stepgoal_scenariogoal #']:format(text,self.count)
			else
				return L['stepgoal_scenariogoal']:format(text)
			end
		else
			-- whoa, NO goal caught it? Perhaps the wrong stage... too bad.
			if self.count then
				return nil,L['stepgoal_scenariogoal_unknown_#']:format(self.count)
			else
				return nil,L['stepgoal_scenariogoal_unknown']:format()
			end
		end
	end,
	help = "scenariobonus <stage>/<id> [<count>] -- completes when the scenario bonus goal with <id> has completed (if no <count> given) or reached partial completion (if <count> is given).",
}


GOALTYPES['use'] = {
	parse = function(self,params)
		GOALTYPES['_item'].parse(self,params)
		self.item,self.itemid = self.target,self.targetid
		self.target,self.targetid = nil,nil
		self.itemuse=true
		if not self.item and not self.itemid then return "no parameter" end
	end,

	gettext = function(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining,brief) return GenericText(brief,self.action,COLOR_ITEM,remaining or self.count,self.item,true,self.plural,complete and "_done" or "",self.the) end,
}

GOALTYPES['talk'] = {
	parse = function(self,params)
		GOALTYPES['_item'].parse(self,params)
		self.npc,self.npcid = self.target,self.targetid
		self.target,self.targetid = nil,nil
		if not self.npc and not self.npcid then return "no npc" end
	end,
	gettext = function(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining,brief) return (brief and "%s" or L["stepgoal_talk to"..(complete and "_done" or "")]):format(COLOR_NPC(plural(ZGV.Localizers:GetTranslatedNPC(self.npcid,self.npc),self.plural))) end,
}

GOALTYPES['vendor'] = {
	parse = function(self,params)
		GOALTYPES['_item'].parse(self,params)
		self.npc,self.npcid = self.target,self.targetid
		self.target,self.targetid = nil,nil
		if not self.npc and not self.npcid then return "no npc" end
	end,
	iscomplete = function(self)
		if ZGV.GetUnitId("NPC")==self.npcid and MerchantFrame and MerchantFrame:IsVisible() and not self.opened then
			-- if we are talking to proper npc, and shop is open, record it. we will complete when frame no longer has npc active - is closed.
			self.opened = true
			ZGV.Inventory:AttachViewerVendor()
		end
		-- was open and no longer is
		return (ZGV.GetUnitId("NPC")==0  and self.opened) or ZGV.db.profile.vendorshow, true
	end,
	onenter = function(self)
		-- reset when revisiting step
		self.opened = false
	end,
	gettext = function(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining,brief) return (brief and "%s" or L["stepgoal_vendor"..(complete and "_done" or "")]):format(COLOR_NPC(plural(ZGV.Localizers:GetTranslatedNPC(self.npcid,self.npc),self.plural))) end,
}

GOALTYPES['skill'] = {
	parse = function(self,params)
		self.skill,self.skilllevel = params:match("^(.+),(%d+)$")
		self.skilllevel = tonumber(self.skilllevel)
		if not self.skill then return "'skill*': no skill found" end
	end,
	iscomplete = function(self)
		local skill = ZGV.Professions:GetSkill(self.skill)
		return skill and (skill.level or 0)>=self.skilllevel,skill and (skill.max or 0)>=self.skilllevel
	end,
	gettext = function(self) return L["stepgoal_skill"]:format(COLOR_ITEM(ZGV.Professions.LocaleSkills[self.skill]),self.skilllevel) end,
}

GOALTYPES['skillmax'] = {
	parse = function(self,params)
		local err = GOALTYPES['skill'].parse(self,params)
		if err then return err end
		--[[ shadowlands appears to have thrown away any semblance of level ranges
		local validlevels={[75]=1, [100]=1, [150]=1, [175]=1, [300]=1, -- subskills and primary skills
				   [950]=1, -- archeology
				   [150]=1,[225]=1,[375]=1,[450]=1,[525]=1,[600]=1,[700]=1,[800]=1} -- left for now for legacy code
		if not validlevels[self.skilllevel] then return "skillmax: you can't raise a skill max level to ".. self.skilllevel.."!" end
		--]]
	end,
	iscomplete = function(self)
		local skill = ZGV.Professions:GetSkill(self.skill)
		return skill and skill.max>=self.skilllevel,skill
	end,
	gettext = function(self)
		return L["stepgoal_skillmax"]:format(COLOR_ITEM(ZGV.Professions.LocaleSkills[self.skill]))
		--[[ -- pre bfa wording - Raise XXX to maximum level YYY
		local spell = skillspells[self.skill] and skillspells[self.skill][self.skilllevel]
		if spell and spell>0 then
			return L["stepgoal_skillmax2"]:format(COLOR_ITEM(GetSpellInfo(spell)))
		else
			return L["stepgoal_skillmax"]:format(COLOR_ITEM(ZGV.Professions.LocaleSkills[self.skill]),self.skilllevel)
		end
		--]]
	end,
}

GOALTYPES['create'] = {
	parse = function(self,params)
		local spell,skill,level = params:match("^(.-)%s*,%s*(.-)%s*,%s*(.+)$")
		if not spell then
			spell,skill = params:match("^(.-)%s*,%s*(.-)$")
		end	
		if spell then
			self.spell,self.spellid = ParseID(spell)
			if self.spell and self.spell:match("^(%d+)") then  self.hiddenCount = tonumber(self.spell:match("^(%d+)")) end --The number might not be there, but if it is gather it for use of testing.
			self.spell = GetSpellInfo(tonumber(self.spellid))

			if skill=="Mining" or skill=="Smelting" then
				self.skill = "Mining"
			else
				self.skill = skill
			end

			if level then
				local total = level:match("(%d+) total")
				if total then
					if ZGV.Professions.SpellToItem then self.itemid = ZGV.Professions.SpellToItem[self.spellid] end
					self.count=tonumber(total)
				else
					self.skilllevel = tonumber(level)
				end
			end
			self.debugmode = "spell"
			-- self.macrosrc = "#showtooltip ".. castskill .."{;}/run ZGV:PerformTradeSkillGoal({stepnum},{goalnum})"
			-- This is insane, I know. Here we have a macro that will call a function that will call upon the values above. Great and simple... NOT.
			-- Yep. It is. Moved to goal onclick.
		else
			self.debugmode = "item"
			--local spell,num = params:match("^(.-)%s*,%s*([0-9]+)$")
			local num,item = params:match("^([0-9]+)%s+(.+)$")
			self.count = tonumber(num)
			self.item,self.itemid = ParseID(item)
		end
	end,
	iscomplete = function(self)
		if self.count then return GOALTYPES['collect'].iscomplete(self) end
		if not self.skill then return false,false end
		local skill = ZGV.Professions:GetSkill(self.skill)
		if not skill then return false,false end
		if self.skilllevel then
			return skill.level>=self.skilllevel,skill.max>=self.skilllevel
		elseif self.count and self.recipedata then
			return GetItemCount(self.recipedata.itemid or 0)>=self.count,true
		end
		-- if nothing, we are crafting one, and getting completed by attached quest
	end,
	onclick = function(self)
		ZGV:PerformTradeSkillGoal(self)
	end,
	-- gettext complex; still in Goal:GetText()
}

GOALTYPES['condition'] = {
	iscomplete = function(self)
		ZGV.Parser.ConditionEnv:_SetLocal(self.parentStep.parentGuide,self.parentStep,self)
		return self.condition_complete and self:condition_complete(),true
	end
}

GOALTYPES['oncomplete'] = {
	parse = function(self,params)
		local fun,err = loadstring(params)
		if fun then self.oncompletefun=fun
		else
			print("no fun",err)
		end
	end,
}

GOALTYPES['nexttab'] = {
	parse = function(self,params)
		if not params then return end
		local guide = params:gsub("^\"(.-)\"$","%1")

		self.oncompletefun = function()
			ZGV.Tabs:LoadGuideToTab(guide)
		end
	end,
}


local invslots = {'AmmoSlot','BackSlot','Bag0Slot','Bag1Slot','Bag2Slot','Bag3Slot','ChestSlot','FeetSlot','Finger0Slot','Finger1Slot','HandsSlot','HeadSlot','LegsSlot','MainHandSlot','NeckSlot','SecondaryHandSlot','ShirtSlot','ShoulderSlot','TabardSlot','Trinket0Slot','Trinket1Slot','WaistSlot','WristSlot'}
GOALTYPES['equipped'] = {
	parse = function(self,params)
		self.target,self.targetid = ParseID(params)
	end,
	iscomplete = function(self)
		if GetItemCount(self.targetid or self.itemid)==0 then return false,false,0 end  -- not even in the bags
		for i,slot in pairs(invslots) do
			local slotid,_ = GetInventorySlotInfo(slot)
			if slotid then
				local id = GetInventoryItemID("player",slotid)
				if id and id==(self.targetid or self.itemid) then
					return true,true,1  -- equipped!
				end
			end
		end
		return false,true,1  -- in bags, not equipped
	end,
	gettext = function(self) return L["stepgoal_equipped"]:format(self.target) end,
}

GOALTYPES['unequipped'] = {
	parse = function(self,params)
		self.target,self.targetid = ParseID(params)
	end,
	iscomplete = function(self)
		if GetItemCount(self.targetid or self.itemid)==0 then return true,true,0 end  -- not even in the bags
		for i,slot in pairs(invslots) do
			local slotid,_ = GetInventorySlotInfo(slot)
			if slotid then
				local id = GetInventoryItemID("player",slotid)
				if id and id==(self.targetid or self.itemid) then
					return false,true,1  -- equipped!
				end
			end
		end
		return true,true,1  -- not equipped
	end,
	gettext = function(self) return L["stepgoal_unequipped"]:format(self.target) end,
}


GOALTYPES['rep'] = {
	parse = function(self,params)
		self.params=params
		self.faction,self.rep = params:match("^(.-)%s*,(.*)$")

		self.rep=ZGV.Faction.StandingNums[self.rep]  or  error("Unknown rep standing "..self.rep)

		if ZGV.BFL[self.faction] then self.faction=ZGV.BFL[self.faction] end
	end,
	iscomplete = function(self)
		local faction = ZGV:GetReputation(self.faction)
		if faction then
			return faction.standing>=self.rep, true, norm_nums(faction:CalcTo(self.rep),faction.max-faction.min)
		else
			return false,false
		end
	end,
	gettext = function(self)
		local rep = ZGV:GetReputation(self.faction)
		local text = L["stepgoal_rep"]:format(rep:GetStandingName(self.rep),self.faction)
		local progtext = L["completion_rep"]:format(rep:Going())
		return text,nil,progtext
	end,
	help = "rep <faction>,<standing>  -- completes when user has reached standing (string) with faction (string). "
}

GOALTYPES['invehicle'] = {
	parse = function(self,params) end,
	iscomplete = function(self)
		return UnitInVehicle and UnitInVehicle("player"),true
	end,
	gettext = function(self) return L["stepgoal_invehicle"] end,
}

GOALTYPES['outvehicle'] = {
	parse = function(self,params) end,
	iscomplete = function(self)
		return not (UnitInVehicle and UnitInVehicle("player")),true
	end,
	gettext = function(self) return L["stepgoal_outvehicle"] end,
}

GOALTYPES['ontaxi'] = {
	parse = function(self,params) end,
	iscomplete = function(self)
		return UnitOnTaxi("player"),true
	end,
	gettext = function(self) return L["stepgoal_ontaxi"] end,
}

GOALTYPES['offtaxi'] = {
	parse = function(self,params) end,
	iscomplete = function(self)
		return not UnitOnTaxi("player"),true
	end,
	gettext = function(self) return L["stepgoal_offtaxi"] end,
}

local buff_textures = {
	['interface\icons\ability_creature_cursed_02']=132094,
	['interface\icons\ability_druid_ferociousbite']=132127,
	['interface\icons\ability_hunter_pet_crab']=132186,
	['interface\icons\ability_hunter_pet_dragonhawk']=132188,
	['interface\icons\ability_hunter_pet_gorilla']=132189,
	['interface\icons\ability_hunter_pet_silithid']=236195,
	['interface\icons\ability_hunter_pet_tallstrider']=132198,
	['interface\icons\ability_mage_invisibility']=132220,
	['interface\icons\ability_mount_blackbattlestrider']=298587,
	['interface\icons\ability_mount_kodo_03']=132245,
	['interface\icons\ability_mount_ridinghorse']=132261,
	['interface\icons\ability_priest_angelicfeather']=642580,
	['interface\icons\ability_rogue_bloodyeye']=132284,
	['interface\icons\ability_rogue_disguise']=132288,
	['interface\icons\ability_vanish']=132331,
	['interface\icons\ability_vehicle_electrocharge']=252174,
	['interface\icons\ability_vehicle_playerloaded']=252180,
	['interface\icons\ability_warlock_soulswap']=460857,
	['interface\icons\ability_warrior_cleave']=132338,
	['interface\icons\ability_warrior_intensifyrage']=236310,
	['interface\icons\ability_whirlwind']=132369,
	['interface\icons\achievement_boss_ladyvashj']=236422,
	['interface\icons\achievement_character_orc_female']=236451,
	['interface\icons\achievement_character_orc_male']=236452,
	['interface\icons\achievement_character_troll_female']=236455,
	['interface\icons\achievement_character_troll_male']=236456,
	['interface\icons\achievement_dungeon_bastion of twilight_twilightascendantcouncil']=429378,
	['interface\icons\achievement_halloween_ghost_01']=236548,
	['interface\icons\achievement_reputation_ogre']=236695,
	['interface\icons\inv_chest_leather_08']=132723,
	['interface\icons\inv_chest_wolf']=132760,
	['interface\icons\inv_drink_05']=132792,
	['interface\icons\inv_fishing_lure_clam']=970845,
	['interface\icons\inv_fishing_lure_donut']=970846,
	['interface\icons\inv_fishing_lure_frogfish']=970847,
	['interface\icons\inv_fishing_lure_jalapeno']=970848,
	['interface\icons\inv_fishing_lure_kelp']=970849,
	['interface\icons\inv_fishing_lure_sandcrab']=970850,
	['interface\icons\inv_gauntlets_02']=132936,
	['interface\icons\inv_gizmo_rocketboot_01']=133029,
	['interface\icons\inv_hammer_32']=537060,
	['interface\icons\inv_helm_mask_fittedalpha_b_01_nightborne_02']=1354190,
	['interface\icons\inv_helm_plate_twilighthammer_c_01']=391130,
	['interface\icons\inv_helmet_152']=340019,
	['interface\icons\inv_helmet_29']=133131,
	['interface\icons\inv_helmet_31']=133133,
	['interface\icons\inv_helmet_47']=133149,
	['interface\icons\inv_helmet_66']=133168,
	['interface\icons\inv_jewelry_necklace_16']=133303,
	['interface\icons\inv_jewelry_ring_03']=133345,
	['interface\icons\inv_mask_01']=133564,
	['interface\icons\inv_mask_02']=133565,
	['interface\icons\inv_misc_bag_10_blue']=133641,
	['interface\icons\inv_misc_bandana_01']=133693,
	['interface\icons\inv_misc_birdbeck_01']=133707,
	['interface\icons\inv_misc_book_17']=354719,
	['interface\icons\inv_misc_cauldron_nature']=133781,
	['interface\icons\inv_misc_drum_01']=133841,
	['interface\icons\inv_misc_enggizmos_20']=133878,
	['interface\icons\inv_misc_fish_04']=133890,
	['interface\icons\inv_misc_food_54']=134010,
	['interface\icons\inv_misc_head_quillboar_01']=134172,
	['interface\icons\inv_misc_herb_05']=134185,
	['interface\icons\inv_misc_herb_nightmarevine']=134218,
	['interface\icons\inv_misc_leatherscrap_13']=134262,
	['interface\icons\inv_misc_monsterscales_12']=134314,
	['interface\icons\inv_misc_ogrepinata']=306868,
	['interface\icons\inv_misc_organ_03']=134340,
	['interface\icons\inv_misc_plant_03']=237426,
	['interface\icons\inv_offhand_dalaran_d_01']=237433,
	['interface\icons\inv_potion_101']=134723,
	['interface\icons\inv_shoulder_leather_firelandsdruid_d_01']=514340,
	['interface\icons\inv_weapon_rifle_05']=135614,
	['interface\icons\spell_arcane_rune']=252267,
	['interface\icons\spell_deathknight_pathoffrost']=237528,
	['interface\icons\spell_fire_burnout']=135789,
	['interface\icons\spell_fire_elementaldevastation']=135791,
	['interface\icons\spell_frost_summonwaterelemental_2']=135862,
	['interface\icons\spell_holiday_tow_spicecloud']=135867,
	['interface\icons\spell_holy_spiritualguidence']=135977,
	['interface\icons\spell_lightning_lightningbolt01']=135990,
	['interface\icons\spell_mage_altertime']=609811,
	['interface\icons\spell_magic_featherfall']=135992,
	['interface\icons\spell_magic_lesserinvisibilty']=135994,
	['interface\icons\spell_nature_elementalabsorption']=136027,
	['interface\icons\spell_nature_elementalshields']=136030,
	['interface\icons\spell_nature_protectionformnature']=136074,
	['interface\icons\spell_shadow_detectinvisibility']=136152,
	['interface\icons\spell_shadow_evileye']=136155,
	['interface\icons\spell_shadow_impphaseshift']=136164,
	['interface\icons\spell_shadow_nethercloak']=136177,
	['interface\icons\spell_shadow_possession']=136183,
	['interface\icons\spell_shadow_twilight']=136223,
	['ability_rogue_masterofsubtlety']=132299,
	['ability_seal']=132311,
	['inv_crate_03']=132763,
	['inv_misc_head_murloc_01']=134169,
	['inv_misc_head_troll_01']=134177,
	['spell_nature_sleep']=136090,
	['spell_shadow_unholyfrenzy']=136224,
}

GOALTYPES['havebuff'] = {
	parse = function(self,params)
		local count,objinfo = params:match("^([0-9]+)%s+(.+)$")
		if not count then
			objinfo = params
		else
			self.count = tonumber(count)
		end
		local name,id = ParseID(objinfo)
		self.qspellid = (type(name)=="string" and tonumber(name:match("spell:(%d+)")))
		self.buff = tonumber(id) or (name and buff_textures[name]) or name or "unknown"
	end,
	iscomplete = function(self)
		return ZGV.Parser.ConditionEnv.hasbuff(self.buff,self.count),true
	end,
	gettext = function(self)
		if self.qspellid and not self.qspellname then self.qspellname = GetSpellInfo(self.qspellid) end
		return L["stepgoal_havebuff"]:format(COLOR_ITEM(self.qspellname or self.buff))
	end,
	help = "havebuff spell:ID  -- completes when user has buff with given spellid. "
	--[[
	legacy syntax:
	havebuff id,
	havebuff name
	havebuff name##id
	--]]
}

GOALTYPES['nobuff'] = {
	parse = GOALTYPES['havebuff'].parse,
	iscomplete = function(self)
		return not GOALTYPES['havebuff'].iscomplete(self),true
	end,
	gettext = function(self)
		if self.qspellid and not self.qspellname then self.qspellname = GetSpellInfo(self.qspellid) end
		return L["stepgoal_nobuff"]:format(COLOR_ITEM(self.qspellname or self.buff))
	end,
	help = "nobuff spell:ID  -- completes when user does not have buff with given spellid. "
	--[[
	legacy syntax:
	nobuff id,
	nobuff name,
	nobuff name##id
	--]]
}

GOALTYPES['click'] = {
	parse = GOALTYPES['_item'].parse,
	gettext = function(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining,brief) return GenericText(brief,self.action,COLOR_ITEM,remaining or self.count,self.target,true,self.plural,complete and "_done" or "",self.the) end,
}

GOALTYPES['clicknpc'] = {
	parse = function(self,params)
		GOALTYPES['_item'].parse(self,params)
		self.npc,self.npcid = self.target,self.targetid
		self.target,self.targetid = nil,nil
	end,
	gettext = function(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining,brief) return GenericText(brief,self.action,COLOR_ITEM,remaining or self.count,self.npcid and ZGV.Localizers:GetTranslatedNPC(self.npcid) or self.npc,	true,self.plural,complete and "_done" or "") end,
}

GOALTYPES['info'] = {
	parse = function(self,params)
		self.info = params
	end,
	gettext = function(self) return "|cffeeeecc"..(self.infoL or self.info).."|r" end,
}

--[[
GOALTYPES['info'] = {
	parse = function(self,params)
		self.action = self.action or cmd
		self.item,self.itemid = ParseID(params)
		if not self.item and not self.itemid then return "no parameter" end

		-- collect the item into the gear table
		guide.items = guide.items or {}
		guide.items[self.itemid]=self.parentStep.num
	end,
}
-- is this obsolete or what..? ~sinus 2013-03-20
--]]


-- clickable icon displayers

GOALTYPES['cast'] = {
	parse = function(self,params)
		GOALTYPES['_item'].parse(self,params)
		self.castspell,self.castspellid = self.target,self.targetid
		self.target,self.targetid = nil,nil
	end,
	gettext = function(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining,brief) return GenericText(brief,self.action,COLOR_ITEM,remaining or self.count,self.castspell,true,self.plural,complete and "_done" or "",self.the) end,
}

GOALTYPES['extraaction'] = {
	parse = function(self,params)
		GOALTYPES['_item'].parse(self,params)
		self.castspell,self.extraaction = self.target,self.targetid
		self.target,self.targetid = nil,nil
	end,
	gettext = function(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining,brief) return GenericText(brief,self.action,COLOR_ITEM,remaining or self.count,self.castspell,true,self.plural,complete and "_done" or "",self.the) end,
}

GOALTYPES['petaction'] = {
	parse = function(self,params)
		self.petaction = tonumber(params)
		if not self.petaction then self.petaction = params end
		if not self.petaction then return "petaction needs an action number" end
	end,
	gettext = function(self) return L["stepgoal_petaction"]:format(self.petaction) end,
}

GOALTYPES['home'] = {
	parse = function(self,params)
		self.param = params
		if not self.param then return "no parameter" end
	end,
	iscomplete = function(self)
		--return GetBindLocation("player")==self.home, true  -- didn't work well
		return ZGV.recentlyHomeChanged, true
	end,
	gettext = function(self) return L["stepgoal_home"]:format(COLOR_LOC(self.param)) end,
}

GOALTYPES['hearth'] = {
	parse = function(self,params)
		self.item = "Hearthstone"
		self.itemid = 6948
		self.itemuse = true
		self.param = BZL[params]
		self.force_noway = true
	end,
	iscomplete = function(self)
		return GetZoneText()==self.param or GetMinimapZoneText()==self.param or GetSubZoneText()==self.param, true
	end,
	gettext = function(self) return L["stepgoal_hearth to"]:format(COLOR_LOC(self.param)) end,
}

GOALTYPES['earn'] = {
	parse = function(self,params)
		local count,excl,object = params:match("^([0-9]+)(!?) (.*)")
		self.count = tonumber(count) or 1
		if excl=="!" then self.exact = 1 end
		self.target,self.targetid = ParseID(object)
		if not self.targetid then return "no parameter" end
	end,
	iscomplete = function(self)
		local cinfo = C_CurrencyInfo.GetCurrencyInfo(self.targetid)
		local name,got = cinfo.name, cinfo.quantity
		if not name then return end
		return got>=self.count, true, norm_nums(got,self.count)
	end,
	-- gettext complex; still in Goal:GetText()
}

GOALTYPES['achieve'] = {
	parse = function(self,params)
		_,self.achieveid,self.achievesub = ParseID(params)
		if not self.achievesub and params:find("/") then self.achieveid = nil end -- They tried to make a sub but did something wrong.
		if not self.achieveid  then
			return "achieveid and achievesub need to be numbers. format |achieve ###/###"
		end
		local achievearray = {GetAchievementInfo(self.achieveid)}
		self.achieveicon = achievearray[10]
		self.achievename = achievearray[2]
		achievearray = nil
	end,
	iscomplete = function(self)
		if not self.achieveicon then self.achieveicon = select(10,GetAchievementInfo(self.achieveid)) end -- grab icon if we did not get it on start

		if self.achievesub then
			if GetAchievementNumCriteria(self.achieveid) < self.achievesub then -- Causes errors when blizzard changes crap.
				ZGV:Debug("Guide %s step %d can not load because achievement %d - criteria %d doesn't exist.", self.parentStep.parentGuide.title, self.parentStep.num, self.achieveid, self.achievesub)
				return false,true
			end
			-- partial achievement
			local desc,ctype,completed,quantity,required = Zygor_GetAchievementCriteriaInfo(self.achieveid,self.achievesub)
			if not required or required==0 then required=1 end
			if not quantity then quantity = 0 end
			if quantity>required then quantity=required end
			if self.count and quantity>=self.count then  completed=true  required=self.count  end

			-- cache for gettext
			self.achievedesc = desc
			self.achieverequired = required
			self.achievequantity = quantity
			return not not completed, true, norm_nums(quantity,required)
		else
			-- full achievement
			local _, _, _, completed = GetAchievementInfo(self.achieveid)
			local numcrit = GetAchievementNumCriteria(self.achieveid)
			local completenum = 0
			if not completed then
				for i=1,numcrit do
					local desc,ctype,completed,quantity,required = Zygor_GetAchievementCriteriaInfo(self.achieveid,i)
					if not required or required==0 then required=1 end
					if not quantity then quantity = 0 end
					if quantity>required then quantity=required end
					completenum=completenum+quantity/required
				end
			else -- if achieve is done, then all criteria are met, we do not need to check them one by one
				completenum = numcrit
			end

			-- cache for gettext  -- TODO: shouldn't be needed after the "done,needed" rework of 2018-07-17
			self.achievenumcrit = numcrit
			self.achievecompletenum = completenum
			local cur,nee=norm_nums(completenum,numcrit)
			return not not completed, true, cur,nee, completed and "achieved" or "FALLTHROUGH"  -- code word is no longer obeyed
		end
	end,
	gettext = function(self)
		local text,progtext
		if self.achievesub then
			-- partial achievement
			text = (L["stepgoal_achievesub"]):format(COLOR_BOLD(self.achievedesc),COLOR_BOLD(self.achievename))
			progtext = L["completion_goal"]:format(self.achievequantity or "...",self.achieverequired or "...")
		else
			-- full achievement
			text = (L["stepgoal_achieve"]):format(COLOR_QUEST(self.achievename))
			progtext = L["completion_goal"]:format(self.achievecompletenum or "...",self.achievenumcrit or "...")
		end

		return text,nil,progtext
	end,
	onclick = function(self)
		if not AchievementFrame then  AchievementFrame_LoadUI()  end
		if not AchievementFrame:IsShown() then  AchievementFrame_ToggleAchievementFrame()  end
		AchievementFrame_SelectAchievement(self.achieveid)
	end,
}

GOALTYPES['achievetext'] = {
	parse = function(self,params)
		self.achieveid = tonumber(params)
		self.force_nocomplete = true
		self.achievetext = select(8,GetAchievementInfo(self.achieveid))
	end,
	gettext = function(self)
		if not self.achievetext then self.achievetext = select(8,GetAchievementInfo(self.achieveid)) end
		if self.force_nocomplete then
			return (L["stepgoal_achievetext"]):format(COLOR_BOLD(self.achievetext or "..."))
		else
			return self.achievetext or "..."
		end
	end,
}

GOALTYPES['ding'] = "level";

GOALTYPES['level'] = {
	parse = function(self,params)
		self.level,self.exp = params:match("([0-9]*),([0-9]*)")
		if self.exp then
			self.level = tonumber(self.level)
			self.exp = tonumber(self.exp)
		else
		self.level = tonumber(params)
		end
		if not self.level then return "'level': invalid level value" end
	end,
	iscomplete = function(self)
		local level = ZGV:GetPlayerPreciseLevel()
		if level<self.level-1 then
			return false,true, norm_nums(0,100)
		elseif floor(level)>self.level then
			return true,true
		elseif floor(level)>=self.level and UnitXP("player")>=(self.exp or 0) then
			return true,true
		else
			return false,true, norm_nums(UnitXP("player"),self.exp or UnitXPMax("player"))
		end
	end,
	gettext = function(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining,brief)
		local text = (brief and L["stepgoal_level_brief"] or L["stepgoal_level"]):format(COLOR_NPC(self.level))
		if self.exp then
			text = (brief and L["stepgoal_level_exp_brief"] or L["stepgoal_level_exp"]):format(COLOR_NPC(self.level),COLOR_NPC(self.exp))
		end

		local level = ZGV:GetPlayerPreciseLevel()
		local percent = 0
		if self.exp then
			percent = (level<self.level) and 0 or (floor(level)>self.level) and 100 or floor(min(100,UnitXP("player")/self.exp * 100))
		else
			percent = (level<self.level-1) and 0 or (level>=self.level) and 100 or floor(UnitXP("player")/UnitXPMax("player") * 100)
		end

		local progtext = L["completion_level"]:format(percent)

		return text,nil,progtext
	end,
}

GOALTYPES['petding'] = {
	parse = function(self,params)
		self.level = tonumber(params)
		if not self.level then return "'level': invalid level value" end
	end,
	iscomplete = function(self)
		local level = UnitLevel("pet")
		if not level then
			return false,true, norm_nums(0,100)
		end
		if level<self.level-1 then
			return false,true, norm_nums(0,100)
		elseif level>=self.level then
			return true,true
		else
			return false,true, norm_nums(UnitXP("pet"),UnitXPMax("pet"))
		end
	end,
	gettext = function(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining,brief)
		local text = (brief and L["stepgoal_petding_brief"] or L["stepgoal_petding"]):format(COLOR_NPC(self.level))

		local level = ZGV:GetPlayerPreciseLevel()
		local percent = (level<self.level-1) and 0 or (level>=self.level) and 100 or floor(UnitXP("player")/UnitXPMax("player") * 100)
		local progtext = L["completion_petding"]:format(percent)

		return text,nil,progtext
	end,
}

GOALTYPES['questchoice'] = {
	parse = function(self,params)
		self.choiceid,self.choice = params:match("(%d+)%s+(%d+)")
		self.choiceid=tonumber(self.choiceid)
		self.choice=tonumber(self.choice)
		if not self.choice then return "questchoice <choiceid> <choice>" end
	end,
	iscomplete = function(self)
		return ZGV.Quest_Choices[self.choiceid] and ZGV.Quest_Choices[self.choiceid]==self.choice, true
	end,

}

GOALTYPES['playerchoice'] = {
	parse = function(self,params)
		_,self.choiceset,self.choice = ParseID(params)
	end,
	iscomplete = function(self)
		return ZGV.Parser.ConditionEnv.playerchoice(self.choiceset,self.choice),true
	end,
}

local default_goto_dist = 3

GOALTYPES['goto'] = {
	parse = function(self,params,step,prevmap,prevfloor,indoors_flag)
		-- check for the quirky zone tag first
		local pre,zone = params:match('^([not]*zone)%s*(.-)$')
		if pre then
			self.subzonemode = pre=="notzone" and "exit" or "enter"
			self.subzone = BZL[zone] or zone
			return
		end

		local params2,title = params:match('^(.-)%s*"(.*)"')
		if title then params=params2 end

		local map,map2,map3,flr,x,y,dist, err = ParseMapXYDist(params,nil,"many")
		if err then return err end

		self.map,self.floor = (map or self.map or step.map or prevmap), (flr or self.floor or step.floor or prevfloor)
		self.map2=map2
		self.map3=map3
		if not self.map then
			return "'".. (self.action or "?") .."' has no map parameter, neither has one been given before."
		end

		self.x = x or self.x
		self.y = y or self.y
		self.dist = dist or self.dist

		if (self.action=="accept" or self.action=="turnin" or self.action=="kill" 	or self.action=="get" 	or self.action=="talk" 	or self.action=="goal" 	or self.action=="use") then
			self.autotitle = params or self.target or self.quest
		end

		self.is_indoors = indoors_flag

		self.waytitle=title
	end,
	iscomplete = function(self)
		-- Handle enter/exit zone/subzone mechanics.
		if self.subzone then
			local subOK = (GetMinimapZoneText()==self.subzone or GetSubZoneText()==self.subzone or GetRealZoneText()==self.subzone)
			if self.subzonemode=="exit" then subOK=not subOK end
			return subOK,true
		end


		local gm,gf=self.map,self.floor
		local gm2,gm3=self.map2,self.map3

		-- goto is surely invalid if the current map is not the target.
		-- however, we make a little exception to phased maps which may bug in WoW client
		if ZGV.Pointer:IsEnvironmentPhased(gm) then
			gm,gf=ZGV.GetCurrentMapID(),ZGV.GetCurrentMapDungeonLevel()
		elseif ZGV.CurrentMapID and not (ZGV.CurrentMapID==gm or ZGV.CurrentMapID==gm2 or ZGV.CurrentMapID==gm3) then
			-- map/floor is DIFFERENT (make it work only with a negative distance, which would mean "leave the zone"
			return self.dist and self.dist<0 , true, nil,nil, "away map"
		end
		if ZGV.recentlyVisitedCoords[self] then return true, true, nil,nil, "recently visited" end

		-- don't complete anything while we are flying, to avoid completing a point we flew over
		if UnitOnTaxi("Player") and not self.goto_on_taxi then return false,true end

		if self.x and not ZGV.LibRover.data.DungeonMaps[gm] then
			local cx,cy,cm=LibRover:GetPlayerPosition()
			local gx,gy,dist = self.x,self.y,self.dist or default_goto_dist
			if not cx then return false,true,nil,nil,"no player pos" end
			local realdist=HBD:GetZoneDistance(cm,cx,cy,gm,gx,gy)
			if gm2 and not realdist then realdist=HBD:GetZoneDistance(cm,cx,cy,gm2,gx,gy) end
			if gm3 and not realdist then realdist=HBD:GetZoneDistance(cm,cx,cy,gm3,gx,gy) end

			if not realdist then
				return false, true, nil,nil,"no realdist"
			elseif (dist>0 and realdist<=dist) or (dist<0 and realdist>=-dist) then
				--ZGV.recentlyVisitedCoords[self] = true
				return true, true
			else
				local prog
				if dist>0 then prog = 1-((realdist-dist)/500) else prog = realdist/(-dist+0.1) end
				return false, true, norm_nums(prog,1)
			end
		else
			-- map correct, apparently
			return not self.dist or self.dist>0,true,nil,nil,"not x or dungeon"
		end
	end,
	-- gettext complex; still in Goal:GetText()
	default_not_completable=true
}
GOALTYPES['at'] = GOALTYPES['goto']

GOALTYPES['notinsticky'] = {
	parse = function(self) self.notinsticky=true end,
}

GOALTYPES['walk'] = {
	parse = function(self,params)
			self.force_walk = true  -- don't skip this just because you can fly
		end,
}

GOALTYPES['fly'] = {  -- obsolete, JFTR
	parse = function(self,params)
		local node = ZGV.LibTaxi:FindTaxi(params)
		if node then
			self.x=node.x
			self.y=node.y
			self.map=node.m
			self.floor= ZGV:SanitizeMapFloor(node.m,node.f)
			self.dist = 50
			self.landing = node.name
			self.title = node.name -- TODO is this safe? ~aprotas
		else
			return "'"..self.action.."' has an unknown landing name '"..params.."'."
		end
	end,
	iscomplete = function(self)
		if not UnitOnTaxi("player") then
			local goalcontinent=ZGV.GetMapContinent(self.map or 0,0)
			local continent=ZGV.GetMapContinent(ZGV.CurrentMapID,0)

			local epicflyer=IsSpellKnown(34091) or IsSpellKnown(90265) -- Artisan and Master riding respectively

			if (goalcontinent==continent and epicflyer and ZGV.db.profile.skipflysteps) or -- TODO handle the case when they are not
				-- TODO GV-76 point 7 do we discriminate between fliers and nonfliers here?
				(ZGV.CurrentMapID==self.map and not UnitOnTaxi("player") and IsMounted()) then
				--ZGV:Debug("fly advised the player to make use of his own mount")
				-- TODO avoid repetitive debug message
				return true,true
			end
		end

		return GOALTYPES['goto'].iscomplete(self)
	end,
	gettext = function(self,complete,complete_extra,goalcountnow,goalcountneeded,remaining,brief) return (brief and "%s" or L[UnitOnTaxi("player") and "stepgoal_arrive" or "stepgoal_fly"]):format(COLOR_LOC(self.map==ZGV.CurrentMapID and self.landing or self.landing..", "..(ZGV.GetMapNameByID(self.map) or "World")) ) end,
	default_not_completable=true,
}

GOALTYPES['fpath'] = {
	parse = function(self,params)
		self.fpath,self.fpathnodeid = ParseID(params)
		--[[
		if self.param == "GARRISON" then
			local level = C_Garrison:GetGarrisonInfo() or 1
			self.param = L["players_garrison_1"]:format(GetUnitName("player"))
			self.param1 = L["players_garrison_1"]:format(GetUnitName("player"))
			self.param2 = L["players_garrison_2"]:format(GetUnitName("player"))
			self.param3 = L["players_garrison_3"]:format(GetUnitName("player"))
			self.displayname = L["players_garrison_"..level]:format(GetUnitName("player"))
		else
			self.displayname = self.param
		end
		--]]

		if not self.fpath then return "no parameter" end
		if self.fpath:match("%-?%d+:%-?%d+") then -- taxitag
			self.fpathname = ZGV.LibTaxi.translation[self.fpath]
			self.fpathname = (self.fpathname and self.fpathname:match("(.*), .*") or self.fpathname) or self.fpath
		end
		local taxinode = ZGV.LibTaxi:FindTaxi(self.fpath)
		if taxinode then
			self.fpathname = taxinode.localname
			self.fpathnodeid = self.fpathnodeid or taxinode.taxinodeID
			self.fpathnodetag = taxinode.taxitag
		end
		self.taxiident = self.fpathnodeid or self.fpathnodetag or self.fpathname or self.fpath
	end,
	iscomplete = function(self)
		return ZGV.db.char.taxis[self.taxiident], true
	end,
	gettext = function(self) return L["stepgoal_fpath"]:format(COLOR_LOC(self.fpathname or self.fpath)) end,
}

GOALTYPES['ferry'] = {
	parse = GOALTYPES['fpath'].parse,
	iscomplete = GOALTYPES['fpath'].iscomplete,
	gettext = function(self) return L["stepgoal_ferry"]:format(COLOR_LOC(self.fpathname or self.fpath)) end,
}

GOALTYPES['follower'] = {
	parse = function(self,params)
		self.followerid = params
	end,
	iscomplete = function(self)
		return ZGV.Garrison_HasFollower(self.followerid),true
	end
}

GOALTYPES['count'] = {
	parse = function(self,params)
		if tonumber(params) then
			self.count = tonumber(params)
		else
			self.countexpr = params
		end
	end,
}

GOALTYPES['subzone'] = {
	parse = function(self,params)
		self.subzone = params
	end,
}

local states={none=0,building=1,ready=2,active=3}

GOALTYPES['havebuilding'] = {
	parse = function(self,params,step)
		params=params:gsub("[\"'%s]","")  -- remove any quotes and spaces
		self.building,self.buildingLevel,self.buildingState = strsplit(",",params)
		self.building=tonumber(self.building) or self.building
		self.buildingLevel=tonumber(self.buildingLevel)
		local _
		if not self.buildingLevel and type(self.building)=="number" then _,_,_,_,_,self.buildingLevel = C_Garrison.GetBuildingInfo(self.building) end  -- ie. LumberMill is 40,41,138; call "41" means "41,2" explicitly.
		self.buildingLevel = self.buildingLevel or 1

		self.buildingState=self.buildingState or "building"
		if not states[self.buildingState] then return "Bad building state. Need 'building','ready','active'." end
	end,
	iscomplete = function(self)
		local rank,state = ZGV.Garrison_GetBuildingState(self.building,true)

		return (rank>self.buildingLevel  or  (rank==self.buildingLevel and states[state]>=states[self.buildingState])), true
	end,
	gettext = function(self)

		-- just translate it already
		if not self.buildingName then
			if type(self.building)=="string" then
				self.buildingName = self.building  -- fallback
				for i=1,200 do
					local id,name,tex = C_Garrison.GetBuildingInfo(i)
					if tex and tex:find(self.building) then self.buildingName=name break end
				end
			else
				local id,name,tex = C_Garrison.GetBuildingInfo(self.building)
				self.buildingName = name
			end
		end

		return L['stepgoal_havebuilding_'..self.buildingState]:format(self.buildingName,self.buildingLevel)
	end
}

local dungeons={['return to karazhan']=1651}
local bosses={}

--[[
-- Return to Karazhan
1=Maiden
2=Opera
4=Mana Devourer
8=Attumen
16=Moroes
32=Curator
64=Vizadoom
128=Nightbane (bonus)
256=Shade of Medivh
--]]

--- Kill a boss in a saved instance.
GOALTYPES['killboss'] = {
	parse = function(self,params,step)
		self.dungeon,self.bossbit = strsplit("/",params)
		if not tonumber(self.dungeon) then self.dungeon=dungeons[(self.dungeon or ""):lower()] end
		if not tonumber(self.bossbit) then self.bossbit=bosses[(self.bossbit or ""):lower()] end
		self.dungeon=tonumber(self.dungeon)
		self.bossbit=tonumber(self.bossbit)
		if not self.dungeon or not self.bossbit then return false,"killboss needs a dungeon and bossbit." end
	end,
	iscomplete = function(self)
		return ZGV.IsSavedBossDead(self.dungeon,self.bossbit), true
	end,
	gettext = function(self)
		return "** kill boss bit "..self.bossbit.." in instance "..self.dungeon
	end
}

local itemset_slots = { -- slot name to slot location
	head=2,
	shoulders=4,
	chest=6,
	legs=8,
	waist=7,
	feet=9,
	wrist=10,
	hands=11,
	back=17,
	}

GOALTYPES['itemset'] = {
	parse = function(self,params)
		self.setid,self.slotname = params:match("([0-9]*)/(.*)")
		self.complete = ""
		if not self.setid then self.setid=params end -- only one param, full set goal
		if not tonumber(self.setid) then
			ZGV:Debug("itemset - Missing or invalid id %d,",self.setid)
			return
		end

		local setinfo = C_TransmogSets.GetSetInfo(self.setid)
		if not setinfo then
			ZGV:Debug("itemset - Unknown set %d",self.setid)
			return
		end
		self.setname = setinfo.name
		self.setdescription = setinfo.description

		if self.slotname then
			if not itemset_slots[self.slotname] then
				ZGV:Debug("itemset - Unknown slot %s",self.slotname)
				self.slotname=nil
			else
				for appid in pairs(C_TransmogSets.GetSetSources(self.setid)) do -- find item that matches slot in param
					local iteminfo = C_TransmogCollection.GetSourceInfo(appid)
					if iteminfo.invType==itemset_slots[self.slotname] then
						self.itemappid = appid
						self.itemname = iteminfo.name
						break
					end
				end
			end
		end
	end,
	iscomplete = function(self)
		if not tonumber(self.setid) then return false,false end

		if self.compelete then -- already marked as completed, don't check it anymore
			return true,true
		elseif not self.itemappid then -- full itemset check
			local info = C_TransmogSets.GetSetInfo(self.setid)
			if info.collected then self.complete = "_done" end
			return info.collected, true
		else -- single itemset
			if not self.itemname then -- if no name recorded yet, try to get it
				local iteminfo = C_TransmogCollection.GetSourceInfo(self.itemappid)
				self.itemname = iteminfo.name
			end
			local sources = C_TransmogSets.GetSetSources(self.setid)
			if sources[self.itemappid] then self.complete = "_done" end
			return sources[self.itemappid], true
		end
	end,
	gettext = function(self)
		if self.itemappid then -- single item
			return L['stepgoal_itemset_item'..self.complete]:format(self.itemname or "unknown")
		else -- full set
			return L['stepgoal_itemset'..self.complete]:format(self.setdescription or "unknown",self.setname or "unknown")
		end
	end,
}

GOALTYPES['playertitle'] = {
	parse = function(self,params)
		_,self.titleid = ParseID(params)
		self.title = GetTitleName(self.titleid):sub(0,-2)
	end,
	iscomplete = function(self)
		return IsTitleKnown(self.titleid),true
	end,
	gettext = function(self) return L["stepgoal_playertitle"]:format(COLOR_ITEM(self.title)) end,
}

GOALTYPES['polish'] = {
	parse = function(self,params,step)
		step.polish = true
	end,
}

GOALTYPES['image'] = {
	-- params:
	-- mode - how should we handle this case:
	--	- inline - show image in viewer
	--	- full - show image in viewer, popup larger version on click
	--	- text - show text in viewer, popup image on click
	-- image - source file, from guides\images folder
	-- full_w - true width of source image
	-- full_h - true height of source image
	-- show_w - number of pixels from top-left to show
	-- show_h - number of pixels from top-left to show

	parse = function(self,params,step)
		self.mode,self.image,self.full_w,self.full_h,self.show_w,self.show_h = strsplit(",",params)
		if not (self.mode and self.image) then return false,"image or mode missing" end

		self.full_h = tonumber(self.full_h)
		self.full_w = tonumber(self.full_w)
		self.show_w = tonumber(self.show_w or self.full_w)
		self.show_h = tonumber(self.show_h or self.full_h)
		self.image = ZGV.IMAGESDIR..self.image
	end,
	gettext = function(self)
		if self.mode~="text" then
			local display_w, display_h = self.show_w, self.show_h
			local available_w = floor(ZygorGuidesViewerFrame_Step1_Line1ContentText:GetWidth())
			if available_w<display_w then
				display_h = display_h*available_w/display_w
				display_w = available_w
			end
			return ("|T%s:%d:%d:0:0:1024:1024:0:%d:0:%d|t"):format(self.image,display_h,display_w,self.full_w,self.full_h)
		else
			return L["stepgoal_image"]
		end
	end,
	onclick = function(self)
		if self.mode~="inline" then
			ZGV.GoalPopupImage(self)
		end
	end,
}

GOALTYPES['worldquestqueue'] = {
	parse = function(self,params,step) step.WorldQuestQueueRouter=true end,
}

GOALTYPES['noautoaccept'] = {
	parse = function(self,params,step) self.noautoaccept=true end,
}

GOALTYPES['zombiewalk'] = {
	parse = function(self,params,step)
		if self.x and self.y then
			self.zombiewalk=true
		end
	end,
}

local appearance_sort = function(source1, source2)
	if ( source1.isCollected ~= source2.isCollected ) then return source1.isCollected end
	if ( source1.quality and source2.quality ) then
		if ( source1.quality ~= source2.quality ) then return source1.quality > source2.quality end
	else
		return source1.quality;
	end
	return source1.sourceID > source2.sourceID;
end
GOALTYPES['appearance'] = {
	parse = function(self,params)
		self.params = params
		GOALTYPES['_item'].parse(self,params)
		self.visualid = self.targetid
		local sources = C_TransmogCollection.GetAllAppearanceSources(self.visualid)
		if not sources[1] then return end
		local sourcesinfo = {}
		for _,sourceid in ipairs(sources) do
			table.insert(sourcesinfo,C_TransmogCollection.GetSourceInfo(sourceid))
		end

		table.sort(sourcesinfo, appearance_sort);

		self.targetid = sourcesinfo[1].sourceID
		self.target = sourcesinfo[1].name
	end,
	gettext = function(self)
		if not self.target and self.targetid then
			local sourceinfo = C_TransmogCollection.GetSourceInfo(self.targetid)
			self.target = sourceinfo.name
			end
		return L['stepgoal_appearance']:format(self.target or "...")
	end,
	iscomplete = function(self)
		if not self.targetid then return false,true end -- no known item... what the...

		local info = C_TransmogCollection.GetSourceInfo(self.targetid)
		
		return info.isCollected,true
	end,
}

local function GoalPopupImage_DragStopHandler()
	ZGV.GoalPopupImageFrame:StopMovingOrSizing()
	ZGV.F.SaveFrameAnchor(ZGV.GoalPopupImageFrame,"goalpopup_frame_anchor")
end

function ZGV.GoalPopupImage(goal)
	if not ZGV.GoalPopupImageFrame then
		local CHAIN=ZGV.ChainCall
		local ui = ZGV.UI
		local SkinData = ui.SkinData

		ZGV.GoalPopupImageFrame = CHAIN(ui:Create("Frame",UIParent,"ZGV_GoalPopupImageFrame"))
			:SetFrameStrata("HIGH")
			:SetToplevel(enable)
			:SetBackdropColor(ZGV.F.HTMLColor("#222222ff"))
			:SetPoint("TOPLEFT",UIParent,50,50)
			:CanDrag(true)
			:SetScript("OnDragStop",GoalPopupImage_DragStopHandler)
		.__END
		local MF=ZGV.GoalPopupImageFrame
		tinsert(UISpecialFrames, "ZGV_GoalPopupImageFrame") -- allows the frame to be closable with ESC keypress

		MF.HeaderFrame = CHAIN(ui:Create("Frame",MF,nil))
			:SetPoint("TOPLEFT",1,-1)
			:SetPoint("TOPRIGHT",-1,-1)
			:SetHeight(27)
			:SetFrameStrata("HIGH")
			:SetFrameLevel(MF:GetFrameLevel()+2)
			:SetBackdropColor(0,0,0,1)
			:SetBackdropBorderColor(0,0,0,0)
			:SetToplevel(enable)
			.__END

			MF.HeaderFrame.Logo = CHAIN(MF.HeaderFrame:CreateTexture())
				:SetPoint("TOP",MF.HeaderFrame,"TOP",0,-3)
				:SetSize(100,25)
				:SetTexture(SkinData("TitleLogo"))
			.__END

			MF.HeaderFrame.close = CHAIN(CreateFrame("Button",nil,MF.HeaderFrame))
				:SetPoint("TOPRIGHT",-5,-5)
				:SetSize(17,17)
				:SetScript("OnClick", function() ZGV.GoalPopupImageFrame:Hide() end)
				.__END
			ZGV.F.AssignButtonTexture(MF.HeaderFrame.close,(SkinData("TitleButtons")),6,32)
		MF.ImageTexture = CHAIN(MF:CreateTexture())
				:SetPoint("TOPLEFT",MF.HeaderFrame,"BOTTOMLEFT",1,-1)
				:SetPoint("BOTTOMRIGHT",MF,"BOTTOMRIGHT",-1,1)
		.__END
	end

	if ZGV.db.profile.goalpopup_frame_anchor then
		ZGV.F.SetFrameAnchor(ZGV.GoalPopupImageFrame,ZGV.db.profile.goalpopup_frame_anchor)
	end

	ZGV.GoalPopupImageFrame:SetSize(goal.show_w+2,goal.show_h+29)
	ZGV.GoalPopupImageFrame:SetScale(ZGV.db.profile.framescale)
	ZGV.GoalPopupImageFrame:Show()
	ZGV.GoalPopupImageFrame.ImageTexture:SetTexture(goal.image)
	ZGV.GoalPopupImageFrame.ImageTexture:SetTexCoord(0,goal.show_w/goal.full_w,0,goal.show_h/goal.full_h)
end

GOALTYPES['debugvar'] = { -- use for debugging step/goal completion.
	parse = function(self,params,step)
		self.value = params
	end,
	gettext = function(self)
		return self.value.." "..tostring(not not _G[self.value])
	end,
	onclick = function(self)
		_G[self.value] = not not not _G[self.value]
		ZGV:UpdateFrame()
	end,
	iscomplete = function(self)
		return _G[self.value], true
	end
}


GOALTYPES['webheader'] = {
	parse = function(self,params,step) self.value = params end,
	gettext = function(self) return "" end, -- not visible in viewer
}

GOALTYPES['webinfo'] = {
	parse = function(self,params,step) self.value = params end,
	gettext = function(self) return "" end, -- not visible in viewer
}

GOALTYPES['webimage'] = {
	parse = function(self,params,step) self.value = params end,
	gettext = function(self) return "" end, -- not visible in viewer
}

GOALTYPES['specialtalent'] = {
	parse = function(self,params)
		GOALTYPES['_item'].parse(self,params)
		local info = C_Garrison.GetTalentInfo(self.targetid)
		self.treeid = info.treeID 
		local tree = C_Garrison.GetTalentTreeInfo(info.treeID)
		self.target = info.name
		self.treename = tree.title
	end,
	iscomplete = function(self)
		return ZGV.Parser.ConditionEnv.specialtalent(self.targetid), true
	end,
	gettext = function(self)
		return L['stepgoal_specialtalent']:format(self.target or "...",self.treename or "...")
	end,
}

GOALTYPES['specialtalentactive'] = {
	parse = GOALTYPES['specialtalent'].parse,
	iscomplete = function(self)
		return ZGV.Parser.ConditionEnv.specialtalentactive(self.targetid), true
	end,
	gettext = function(self)
		return L['stepgoal_specialtalentactive']:format(self.target or "...",self.treename or "...")
	end,
}


--[[

		█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
		█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
		█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
		█████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

]]

function Goal:GetStatus()
	if self.fakestatus then return self.fakestatus end

	if not self.prepared then self:Prepare() end

	if not self:IsVisible() then return "hidden" end
	if not self:IsCompleteable() then return "passive" end
	local complete,possible,numdone,numneeded,warn,isbad = self:IsComplete()
	if complete then return "complete",numdone,numneeded end
	-- FIRST impossible (gray), THEN obsolete (blue).
	if isbad then return "warning" end
	if not possible then return "impossible" end
	if ZGV.db.profile.skipobsolete and not self.parentStep.parentGuide.noobsolete and self:IsObsolete() then return "obsolete" end
	-- only possible and progressing is left.
	return "incomplete",numdone,numneeded
end

function Goal:UpdateStatus()
	self.status = self:GetStatus()
	return self.status
end

function Goal:IsValidRole()
	local role,role2 = self.grouprole,self.grouprole2
	if role=="DPS" or role=="DAMAGE" then role="DAMAGER" end
	if role2=="DPS" or role2=="DAMAGE" then role2="DAMAGER" end

	local current_role = UnitGroupRolesAssigned("Player")
	if UnitGroupRolesAssigned("Player")=="NONE" then
		local pc = ZGV.ItemScore.playerclass
		local ps = ZGV.ItemScore.playerspec
		if	(pc=="DRUID" and ps==4) or
			(pc=="MONK" and ps==2) or
			(pc=="PALADIN" and ps==1) or
			(pc=="PRIEST" and ps==1) or
			(pc=="PRIEST" and ps==2) or
			(pc=="SHAMAN" and ps==3)
		then
			current_role = "HEALER"
		elseif	(pc=="DEATHKNIGHT" and ps==1) or
			(pc=="DEMONHUNTER" and ps==2) or
			(pc=="DRUID" and ps==3) or
			(pc=="MONK" and ps==1) or
			(pc=="PALADIN" and ps==2) or
			(pc=="WARRIOR" and ps==3)
		then
			current_role = "TANK"
		else
			current_role = "DAMAGER"
		end
	end
	if current_role~=role and current_role~=role2 then return false end

	return true
end

function Goal:IsVisible()
	--if ZGV.db.profile.showwrongsteps then return true end
	if not self:IsFitting() then return false end
	if self.hidden then return false end
	if self.notinsticky and self.parentStep:IsCurrentlySticky() then return false end
	if self.grouprole and self.grouprole~="EVERYONE" and not ZGV.db.profile.showallroles then
		if not self:IsValidRole() then return false end
	end

	if self.condition_visible then
		if self.condition_visible_raw=="default" then
			-- oo, special case: show this only if no others are visible!
			for i,goal in ipairs(self.parentStep.goals) do
				if goal~=self and goal.condition_visible and goal.condition_visible_raw~="default" and goal.condition_visible_raw~="ditto" and goal:IsVisible() then return false end
			end
			return true
		elseif self.condition_visible_raw=="ditto" then
			-- another special case: show this only if the one above was visible!
			local prevgoal = self.parentStep.goals[self.num-1]
			return prevgoal:IsVisible()
		else
			ZGV.Parser.ConditionEnv:_SetLocal(self.parentStep.parentGuide,self.parentStep,self)
			return self.condition_visible()
		end
	end
	return true
end


local _c = { "goal","get","accept","turnin","collect","buy","fpath","home","level","havebuff","nobuff","invehicle","outvehicle","equipped","rep","condition","achieve","create","skill","skillmax","learn","learnspell","learnpet","learnmount","confirm","earn","fly","complete" }
local completable = {}
for i=1,#_c do completable[_c[i]]=true end

function Goal:IsCompleteable()
	--if type(goal)=="number" then goal=self.CurrentStep.goals[goal] end
	if self.force_nocomplete then return false end

	if self.questid --[[and self.objnum--]] then return true end
	if self.scenario_criteriaid then return true end  --scenario
	if self.achieveid then return true end
	if self.condition_complete then return true end

	if self.action=="from"
	or self.action==""
	--or (self.action=="goldcollect" and not self.demand)
	then return false end

	local GOALTYPE=GOALTYPES[self.action]
	if GOALTYPE and GOALTYPE.iscompletable then return GOALTYPE.iscompletable(self) end

	if (GOALTYPE and GOALTYPE.iscomplete and not GOALTYPE.default_not_completable) or completable[self.action] then return true end

	if self.action=="goto" then
		-- Make the last goto of a gotos-only step completable.
		local all_gotos=true
		local lastgoto
		for i,goal in ipairs(self.parentStep.goals) do
			if goal.action=="goto" and not goal.force_complete and not goal.force_nocomplete then  -- a goto with no extra flavours
				lastgoto=goal
			else
				all_gotos=false
				break
			end
		end
		return (self.force_complete or (all_gotos and lastgoto==self))
	end
	return false
end

local goalstring_slain=QUEST_MONSTERS_KILLED:gsub(": .*","")

-- returns: true = complete, false = incomplete
-- second return: true = completable, false = incompletable
-- third and fourth: numdone,numneeded
function Goal:IsComplete()
	if ZGV.QuestDB:MaybeSkipThisGoal(self) then return false,false,0,1 end -- guide in turnin only mode, or sis skipping

	if (self.force_sticky and ZGV.recentlyCompletedGoals[self])
		or ZGV.recentlyStickiedGoals[self]
		or self:WasSavedStickyComplete()
		or self.fake_complete then
		return true,true,1,1
	end

	if self.countexprfun then
		ZGV.Parser.ConditionEnv:_SetLocal(self.parentStep.parentGuide,self.parentStep,self)
		local res,err = pcall(self.countexprfun)
		if res then self.count=err else error("Error in step ".. self.parentStep.num .. " goal " .. self.num .. " count expression: "..err) end
	end

	if self.force_nocomplete then return false,false, 0,1, "forced not completable" end -------------------------------

	if self.updatescriptfun then
		ZGV.Parser.ConditionEnv:_SetLocal(self.parentStep.parentGuide,self.parentStep,self)
		local res,err = pcall(self.updatescriptfun)
		if res then self.count=err else error("Error in step ".. self.parentStep.num .. " goal " .. self.num .. " updatescript: "..err) end
	end

	local completion_by_condition
	if self.condition_complete then
		ZGV.Parser.ConditionEnv:_SetLocal(self.parentStep.parentGuide,self.parentStep,self)
		local res,err = pcall(self.condition_complete)
		if res then completion_by_condition=err  else  error("Error in step ".. self.parentStep.num .. " goal " .. self.num .. " condition: "..err) end
		-- condition overrides.
		if completion_by_condition==true or completion_by_condition=="complete" then 
			return true,true, 1,1
		end

		-- if condition did not complete, and there is nothing else to do, exit
		-- but if there is quest/achieve/scenario attached, leave potential rejection to their handling
		if not (self.achieveid or self.questid or self.scenario_criteriaid or self.scenario_stagenum or self.future) then
			if completion_by_condition==false or completion_by_condition=="incomplete" then 
				return false,true, 0,1
			elseif completion_by_condition=="impossible" then 
				return false,false, 0,1
			end
		end
	end


	-- Handle accepts and turnins first.

	if self.action=="accept" or self.action=="turnin" then
		local complete,possible = GOALTYPES[self.action].iscomplete(self)
		return complete,possible,norm_nums(complete) ------------------
	end



	-- Fallthrough logic:
    -- - if the goal is complete through a quest or achievement or scenario objective or something else "tagged on", it goes green and that's it.
    -- - if it's not, then let's remember if the quest/achi/scen.obj considered it even possible at all, and try to let it complete on its own.
    -- - if it completed, then report that; if it didn't, then stick with what the quest/achi/scen.obj said.

	local fallthrough_ispossible,fallthrough_numdone,fallthrough_numneeded


	-- Achievement-related?

	if self.achieveid then
		local iscomplete,ispossible,numdone,numneeded,comment,isbad = GOALTYPES['achieve'].iscomplete(self)
		numdone,numneeded = norm_nums(numdone or iscomplete,numneeded)
		if not numdone and not numneeded then  numdone,numneeded = iscomplete and 1 or 0,1  end
		if iscomplete then
			return iscomplete,ispossible,numdone,numneeded,comment,isbad
		else
			fallthrough_ispossible,fallthrough_numdone,fallthrough_numneeded = ispossible,numdone,numneeded
		end
	end


	-- Quest-related? Handle appropriately.

	if self.questid then
		local iscomplete,ispossible,numdone,numneeded,comment,isbad = GOALTYPES['q'].iscomplete(self)
		numdone,numneeded = norm_nums(numdone or iscomplete,numneeded)
		if not numdone and not numneeded then  numdone,numneeded = iscomplete and 1 or 0,1  end
		if iscomplete or (not ispossible and not self.future) or self.objnum then  -- 2019-07-08: added objnum check; if goal is questgoal-bound then follow it strictly
			return iscomplete,ispossible,numdone,numneeded,comment,isbad
		else
			fallthrough_ispossible,fallthrough_numdone,fallthrough_numneeded = ispossible,numdone,numneeded
		end
	end


	if self.scenario_criteriaid then -- handle scenarios
		local iscomplete,ispossible,numdone,numneeded,comment,isbad = GOALTYPES['scenariogoal'].iscomplete(self)
		numdone,numneeded = norm_nums(numdone or iscomplete,numneeded)
		if not numdone and not numneeded then  numdone,numneeded = iscomplete and 1 or 0,1  end
		if iscomplete then
			return iscomplete,ispossible,numdone,numneeded,comment,isbad
		else
			fallthrough_ispossible,fallthrough_numdone,fallthrough_numneeded = ispossible,numdone,numneeded
		end
	end

	if self.scenario_stagenum then -- handle scenarios
		local iscomplete,ispossible,numdone,numneeded,comment,isbad = GOALTYPES['scenariostage'].iscomplete(self)
		numdone,numneeded = norm_nums(numdone or iscomplete,numneeded)
		if not numdone and not numneeded then  numdone,numneeded = iscomplete and 1 or 0,1  end
		if iscomplete then
			return iscomplete,ispossible,numdone,numneeded,comment,isbad
		else
			fallthrough_ispossible,fallthrough_numdone,fallthrough_numneeded = ispossible,numdone,numneeded
		end
	end

	-- Use the individual goal completion routine
	local GOAL = GOALTYPES[self.action]
	if GOAL and GOAL.iscomplete and (not GOAL.iscompletable or GOAL.iscompletable(self)) then
		local iscomplete,ispossible,numdone,numneeded,comment,isbad = GOAL.iscomplete(self)
		numdone,numneeded = norm_nums(numdone,numneeded)
		if not numdone and not numneeded then  numdone,numneeded = iscomplete and 1 or 0,1  end
		if iscomplete and numneeded==1 then numdone=1 end
		return
			iscomplete,
			ispossible or self.future or fallthrough_ispossible,
			fallthrough_numdone or numdone, -- first-chance counts ("fallbacks") are MORE important!
			fallthrough_numneeded or numneeded,
			"fallback '".. self.action .. "'" .. (comment and ": ".. comment  or  ""),
			isbad
	end

	if self.condition_complete then
		-- no earlier exit, so not completed, but possible
		return false,true,fallthrough_numdone,fallthrough_numneeded,"condition not done"
	end

	return false,false or self.future or fallthrough_ispossible, fallthrough_numdone,fallthrough_numneeded , "complete check thru"
end



function Goal:CheckVisited()  -- AKA arrived
	if not self.map then return end

	local isvisited = self:IsCompleteAs("goto")  -- complete me like one of your French gotos, Jack
	if isvisited and not self.was_visited then
		if self.status=="incomplete" then return end -- abort if it's a red incomplete line. These get really "visited" when they're complete.
		self:OnVisited()
	elseif not isvisited and self.was_visited then
		self:OnDevisited()
	end
	self.was_visited=isvisited
end

function Goal:OnVisited()
	if ZGV.db.profile.nocyclegotos then return ZGV:Debug("Not cycling waypoints because nocyclegotos") end
	ZGV:Debug("Goal OnVisited! %d, cycling.",self.num)
	self.parentStep:CycleWaypointFrom(self.num,"no cycle")
	ZGV:ShowWaypoints()
end

function Goal:OnDevisited()
	--print(CS.current_waypoint_goal_num)
	--ZGV.Pointer:RemoveWaypoint(self.waypoint) ZGV:ShowWaypoints()  -- that's bullshit...
end



function Goal:GetWaypoint()
	if not self.waypoint then return end
	for k,v in ipairs(ZGV.Pointer.waypoints) do
		if v==self.waypoint then return v end
	end
end

function Goal:OnCompleted()
	if self.oncompletefun then self.oncompletefun() end
	if ZGV.Pointer.DestinationWaypoint and ZGV.Pointer.DestinationWaypoint.goal == self then  -- this waypoint is "complete", in whatever manner
		ZGV:Debug("Goal: cycling waypoint from completed goal %d",self.num)
		self.parentStep:CycleWaypointFrom(self.num,"no cycle")
	end
end

function Goal:OnUncompleted()
	-- formality. May be important at some point.
end

function Goal:GetTooltip()
	local gettooltip = GOALTYPES[self.action].gettooltip
	if gettooltip then return gettooltip(self) end
	if self.grouprole then return "|cff00ff00Shift-click|r to share this tip to fellow players." end
end


-- Sorta kinda similar to Utils.IsPOIComplete() in ESO, but not really . . .
function Goal:IsPOIComplete(args)
	return true
end

function Goal:IsDynamic()
	return not not self.dynamicwaypoint
end

function ZGV.FindPetActionInfo(action)
	if type(action)=="number" then
		local name,x,tex,needsglobal = GetPetActionInfo(action)
		return action,name,x,(needsglobal and _G[tex] or tex)
	end
	for i=1,12 do
		local name,x,tex,needsglobal = GetPetActionInfo(i)
		if name and (name:find(action) or tex==action) then
			return i,name,x,(needsglobal and _G[tex] or tex)
		end
	end
end

function Goal:IsActionable()
	return (self.itemid and (GetItemCount(self.itemid)>0 or not self.itemuse))
	    or (self.castspellid and IsUsableSpell(self.castspellid))
	    or (self.petaction and ZGV.FindPetActionInfo(self.petaction))
	    or ((self.script or self.macrosrc) and (self.action~="confirm")
	    or (self.action=="poiannounce") or (self.action=="poi_treasure") or (self.action=="poi_rare")
	    )
end

function Goal:IsFitting()
	if self.wrong then return nil end
	if not self.requirement then return true end
	self.wrong = not ZGV:RaceClassMatch(self.requirement)
	return not self.wrong
end

function Goal:NeedsTranslation()
	--return GetLocale()~="enUS" and not self.L
	return type(self.L)=="number" or not self.L
end

local retries=20
local demandAdjust = 1  -- no adjusting!!
function Goal:AutoTranslate()
	local oldL=self.L
	if self.L==true then return false end
	if not self:IsFitting() then
		-- ignore wrong goals
		self.L=true
	end

	self.L = true  -- assume we're translating right

	if self.action=="fpath" and ZGV.LibTaxi then
		if ZGV.LibTaxi.TaxiNames_Local then
			self.param = ZGV.LibTaxi.TaxiNames_Local[self.param] or self.param
		end
	end
	if self.questid then
		local q = ZGV.Localizers:GetQuestData(self.questid)
		if q then
			self.quest=q
			if (self.action=='get' or self.action=='kill' or self.action=='goal')
			and not self.targetid and (not self.target or self.target=="?") then
				if q.goals then
					local obj=q.goals[self.objnum]
					if obj and obj.item and obj.item~=" " then
						self.target=obj.item
						self.target = self.target:gsub("^[0-9]+%s+x%s+","") -- 10 x Target
						--self.L=true
					else
						self.Lretries = (self.Lretries or retries) - 1
						self.L=nil -- WHOA.
					end
				else
					self.target="?"
					--self.L=true --sorry...
				end
			--elseif self.action=='accept' or self.action=='turnin' then
				--self.L = true  -- quest title is enough
				--ZGV:Debug("Translated: accept/turnin "..self.quest.." ("..(self.Lretries or 'all').." retries left)")
			--else
				--self.L = true
				--ZGV:Debug("Translated: '"..tostring(self.action).."' "..tostring(self.quest).." ("..(self.Lretries or 'all').." retries left)")
			end

			-- translated a quest - if it's an instant-daily, put it in a special bag
			-- it's used to remove titles from ZGV.db.char.completedQuests if removing the daily ID from completedDailies
			-- ... Not used anymore?
			--[[
			if ZGV.instantQuests[self.questid] and ZGV.dailyQuests[self.questid] then
				ZGV.db.global.instantDailies[self.questid] = qt
			end
			--]]
		elseif ZGV.CurrentGuide and ZGV.CurrentGuide.headerdata and ZGV.CurrentGuide.headerdata.poiloader then
			-- POIs have quests that never yield any data! They won't translate.
			self.Lretries = 0
			self.L=true
		else
			self.Lretries = (self.Lretries or retries) - 1
			self.L=nil -- WHOA.
		end
	end
	if self.targetid then
		--[[if QuestInfo_Name then
			local target=QuestInfo_Name[self.targetid]
			if target then
				self.target=target
			end
		--]]
		if self.action=="kill" then
			if ZygorGuidesNPCs then
				local target,tooltip=ZGV.Localizers:GetTranslatedNPC(self.targetid)
				if target then
					self.target,self.tooltip=target,tooltip or self.tooltip
				end
			end
			--self.L=true
			--ZGV:Debug("Translated: '"..tostring(self.action).."' "..tostring(self.target).." ("..(self.Lretries or 'all').." retries left)")
		elseif self.action=="collect" or self.action=="goldcollect" or self.action=="get" or self.action=="buy" or self.action=="use" or self.action=="equipped" then
			local item = ZGV:GetItemInfo(self.targetid)
			if item then
				self.target=item
				--self.L=true
				--ZGV:Debug("Translated: '"..tostring(self.action).."' "..tostring(self.target).." ("..(self.Lretries or 'all').." retries left)")
			else
				self.Lretries = (self.Lretries or retries) - 1
				self.L=nil -- WHOA.
			end
		end
	end
	if self.itemid then
		local item = ZGV:GetItemInfo(self.itemid)
		if item then
			self.item = item
		else
			self.Lretries = (self.Lretries or retries) - 1
			self.L=nil -- WHOA.
		end
	end

	if self.npcid then
		local npc,tooltip=ZGV.Localizers:GetTranslatedNPC(self.npcid)
		--if npc then
		--	--self.npc,self.tooltip=npc,tooltip
		--end
		self.tooltip=tooltip or self.tooltip
		--self.npc = self.npc or "?"
		-- NPC will self-translate.
	end

	if self.L then
		-- translated? whee.
		if (retries-(self.Lretries or retries) > 0) then ZGV:Debug(("Translating step %d goal %d, try %d - success"):format(self.parentStep.num,self.num,retries-(self.Lretries or retries))) end
		ZGV.frameNeedsUpdating=true
		self.Lretries=nil
		self.Lfail=nil
	else
		-- not yet?
		-- do we have retries left?

		self.Lreasons=""
		if self.itemid then self.Lreasons = self.Lreasons .. " itemid "..self.itemid end
		if self.questid then self.Lreasons = self.Lreasons .. " questid "..self.questid end


		if self.Lretries and self.Lretries>0 then
			-- let it retry
			--ZGV:Debug(("Translating step %d goal %d, try %d..."):format(self.parentStep.num,self.num,retries-(self.Lretries or retries)))
		else
			-- if many translation attempts fail, just leave it.

			--if self.npcid and not self.quest then reasons = reasons .. " (questid "..self.questid..")" end
			ZGV:Debug(("&goal Translating step %d goal %d, tried %d times - failed: %s"):format(self.parentStep.num,self.num,retries-(self.Lretries or retries), self.Lreasons))
			self.L=true  --sorry.
			oldL=self.L  -- prevent "dirty" returns
			self.Lfail=true
			self.Lretries=nil
		end
	end

	return oldL~=self.L
end

function Goal:IsCompleteAs(goaltype)
	return GOALTYPES[goaltype].iscomplete(self)
end

local simulquest = {
	['goals']={
		{ type="monster",monster="Two Monsters",leaderboard="Monster slain: 0/2",needed=2,num=0 },
		{ type="monster",monster="Two Monsters Again",leaderboard="Two Monsters Again slain: 1/2",needed=2,num=1 },
		{ type="monster",monster="Three Dead Monsters",leaderboard="Three Dead Monsters slain: 3/3",needed=3,num=3 }
	}

}

local unknownquest = {
	title="?"
}


local function picktext(goal,goaltext)
	if ZGV.db.profile.usegenericgoals then
		goal.text = goaltext or goal.text or "?"
	else
		goal.text = goal.text or goaltext or "?"
	end
end
-- This is a HUGE mess.

local function ordnum(n)
	if n>5 and n<20 then return n.."th" end
	local digit=n%10
	if digit==1 then return n.."st"
	elseif digit==2 then return n.."nd"
	elseif digit==3 then return n.."rd"
	else return n.."th" end
end

local zgv_gold_achieves = {[9487]=true}

local nsub=1
Goal.Parsers = {}
Goal.Parsers.textsubs = {}

-- Generates a parser proc with said behaviour, to evade calling loadstring too much
local function make_parser(parser) -- function to generate code
	return function(s)
		local f = Goal.Parsers.textsubs[nsub]
		if not f then
			f=parser(s)
			Goal.Parsers.textsubs[nsub]=f
		end
		nsub=nsub+1
		return type(f)=="function" and tostring(f()) or tostring(f)
	end
end
local parser_simple_cache={}
local function parser_simple(s)
	local fun,err
	if parser_simple_cache[s] then
		fun = parser_simple_cache[s]
	else
		fun,err = loadstring(s:find("return") and s or "return "..s)
	end
	if fun then
		parser_simple_cache[s] = fun
		setfenv(fun,ZGV.Parser.ConditionEnv)
		return fun
	else
		return "("..err..")"
	end
end
local function parser_ternary(s)
	local condcode,a,b=s:match("(.*)%?%?(.*)::(.*)")
	if condcode and a and b then
		local condfun,err = loadstring(condcode:find("return") and condcode or "return "..condcode)
		if condfun then
			local fun = function() -- Generating a real worker function
				return condfun() and a or b
			end
			setfenv(fun,ZGV.Parser.ConditionEnv)
			return fun
		else
			return "("..err..")"
		end
	else
		return "(Wrong conditional syntax)"
	end
end

Goal.Parsers.ternary = make_parser(parser_ternary)
Goal.Parsers.simple = make_parser(parser_simple)

Goal.CraftingErrorMsgs = {
	maxlevel = "(max skill level too low)",
	closed = "(open %s window)",
	unknown = "(unknown recipe)",
	trivial = "(creating %s won't raise your skill anymore)",
	lackingredients = "(ingredients suffice for only %s of %s)",
	noingredients = "(not enough ingredients)",
	wtf = "(?unknown error?)",
	no_data = "(missing skill or spell id)",
	no_prof = "(profession %s unknown)",
}

setmetatable(Goal.CraftingErrorMsgs,{__index=function(t,index) return "Unknown status: "..index end})

function Goal:GetCurrencyProgress(brief,complete)
	local cinfo = C_CurrencyInfo.GetCurrencyInfo(self.targetid or 0)
	local name,count = cinfo.name, cinfo.quantity
	local remaining = remaining or max(self.count-count,0)
	local text = GenericText(brief,self.action,COLOR_ITEM,(remaining>0 and remaining) or self.count,name,false,self.count and self.count>1,(complete and "_done" or ""))
	local goalcountneeded = (self.exact and self.count) or self.count
	return text,count,goalcountneeded,remaining
end

function Goal:GetText(showcompleteness,brief,showtotals,nocolor)
	if not self.prepared then self:Prepare() end
	--if type(goal)=="number" then goal=self.CurrentStep.goals[goal] end


	-- prepare for progress
	if self.force_nocomplete and self.action~="collect" and self.action~="farm" and self.action~="craft" and self.action~="buy" then showcompleteness=false end

	local goalcountnow,goalcountneeded,remaining

	if self.action=="achievetext" then showcompleteness=true end

	local complete,ext,numdone,numneeded = self:IsComplete()

	if showcompleteness then
		if self.scenario_criteriaid then -- give prio to scenario based counts over quest ones
			local gcnow,gcneeded,gcremain,_,errormsg
			if self.action=="scenariobonus" then
				gcnow,gcneeded,gcremain,_,errormsg = GetScenarioBonusData(self.scenario_criteriaid,self.count,self.scenario_stagenum)
			else
				gcnow,gcneeded,gcremain,_,errormsg = GetScenarioGoalData(self.scenario_criteriaid,self.count,self.scenario_stagenum)
			end
			if not errormsg then
				goalcountnow,goalcountneeded,remaining = gcnow,gcneeded,gcremain
			end
		elseif self.questid then
			goalcountnow,goalcountneeded,remaining = Goal.GetQuestGoalData(self.questid,self.objnum,self.count)
		elseif self.achievesub or self.achieveid then
			goalcountnow,goalcountneeded,remaining = GetAchievementGoalData(self.achieveid,self.achievesub or 1)
			if goalcountneeded==0 or goalcountneeded==1 then goalcountnow,goalcountneeded,remaining=nil end  -- no 0/1 display
		end
		if complete and (goalcountnow or 0)<(goalcountneeded or self.count or 0) then goalcountnow=goalcountneeded or self.count end
	end

	if type(goalcountnow)=="number" then goalcountnow=math.round(goalcountnow) end  -- for freaky fractions


	local text="?"
	local progtext
	local extramsg

	local GOALTYPE=GOALTYPES[self.action]

	if self.text then

		local grabcount = self.text:match("#(%d+)#")
		if grabcount and not self.count then self.count=tonumber(grabcount) end

		if self.ordcount then remaining=ordnum(self.count) end  -- unused; was to show ordinal counts in a goal.


		-- TODO support nesting of conditionals
		text = self.text
			:gsub("{=(.-)=}",Goal.Parsers.ternary)
			:gsub("{(.-)}",Goal.Parsers.simple)
			:gsub("#(%d+)#",COLOR_COUNT(type(remaining)=="number" and remaining or self.count or "(?)"))



	-- individualized!

	elseif GOALTYPE and GOALTYPE.gettext then
		local gettext,fallback
		gettext,fallback,progtext = GOALTYPE.gettext(self,complete,ext,goalcountnow,goalcountneeded,remaining,brief)
		text = gettext or fallback
		if not showcompleteness then progtext=nil end

	elseif self.action=='kill' then
		local mobname=ZGV.Localizers:GetTranslatedNPC(self.targetid)
		text = GenericText(brief,self.action,COLOR_MONSTER,remaining or self.count,mobname or self.target,not self.count or self.count==1,self.plural,(complete and "_done" or ""))
		if self.usekillcount then goalcountnow=ZGV.recentKills[self.targetid] end

	elseif self.action=='get' or self.action=='craft' or self.action=='farm' then
		goalcountnow = goalcountnow or GetItemCount(self.targetid or 0)
		goalcountneeded = goalcountneeded or self.count or 1
		remaining = remaining or goalcountneeded-goalcountnow
		if remaining<1 then remaining=goalcountneeded end
		text = GenericText(brief,self.action,COLOR_ITEM,remaining or self.count,self.target,not self.count or self.count==1,self.plural or remaining~=1,(complete and "_done" or ""))

	elseif self.action=='goldcollect' then
		-- Two different types of goldcollect goals. If there is a max demand, then don't want to collect more because that would flood the market.
		-- No demand then just collect until they get bored.
		goalcountnow = GetItemCount(self.targetid or 0) or goalcountnow
		if self.demand and self.demand>0 then
			-- There is a set demand for this.
			goalcountneeded = goalcountneeded or self.demand
			remaining = max(0,remaining or goalcountneeded-goalcountnow)
			--if remaining<1 then remaining=goalcountneeded end
			local done = remaining==0 and "_done" or ""

			text = GenericText(brief,self.action,COLOR_ITEM, remaining or self.demand , self.target, self.demand==1, self.demand~=1, done)
		else
			-- if we have 0 demand then just display "Collect item" If we have some of the item display "Collected # item"
			local done = goalcountnow>0 and "_done" or ""
			text = GenericText(brief,self.action,COLOR_ITEM, goalcountnow , self.target, goalcountnow==0,not self.count or self.count==1, done)

		end

	elseif self.action=='buy' then
		goalcountnow = goalcountnow or GetItemCount(self.targetid or 0)
		goalcountneeded = goalcountneeded or self.count or 1
		remaining = remaining or goalcountneeded-goalcountnow
		if remaining<1 then remaining=goalcountneeded end
		text = GenericText(brief,self.action,COLOR_ITEM,remaining or self.count,self.target,self.count==0,self.count~=1,(complete and "_done" or ""))

	elseif self.action=='earn' then
		text,goalcountnow,goalcountneeded,remaining = self:GetCurrencyProgress(brief,complete)
	elseif self.action=='from' or self.action=='avoid' then
		-- no text overriding; don't want the kill-list? don't use it.
		for i,mob in ipairs(self.mobs) do
			local mobname
			if mob.id then mobname=ZGV.Localizers:GetTranslatedNPC(mob.id) end
			if mobname then
				mob.name = mobname
			elseif not self.knownmissing then
				ZGV:Debug("Missing from NPC database: %s #%s,",mob.name,(mob.id or "?"))
				self.knownmissing=true
			end
		end
		if #self.mobs>1 then
			-- contraction
			ZGV.db.profile.contractmobs = true

			if ZGV.db.profile.contractmobs and ZygorGuidesViewer_L("Specials")['contract_mobs'] then
				local contr = ZygorGuidesViewer_L("Specials")['contract_mobs'](self.mobs)

				if contr then
					text = COLOR_MONSTER(contr)
				end
			end
			if not text or text=="?" then
				-- regular listing
				text = ""
				for i,mob in ipairs(self.mobs) do
					if #text>0 then text = text .. ", " end
					text = text .. COLOR_MONSTER(plural(mob.name,nil,mob.pl and 2 or 1))
				end
			end
		else
			text = COLOR_MONSTER(plural(self.mobs[1].name,self.mobs[1].pl and 2 or 1))
		end

		if self.action=='from' then
			text = L['stepgoal_kill']:format(text)
		elseif self.action=='avoid' then
			text = L['stepgoal_avoid']:format(text)
		end

	elseif self.action=='goto' --[[or (self.action=='fly' and self.map==ZGV.CurrentMapID)]] then
		--if self.CurrentGuide.steps[self.CurrentStepNum-1] and self.CurrentGuide.steps[self.CurrentStepNum-1].map~=goal.map then
		local form="stepgoal_go to"
		if self.parentStep:IsCurrentlySticky() then form="stepgoal_at" end
		if self.subzone then
			text = COLOR_LOC(self.subzone)
			if self.subzonemode=="exit" then form="stepgoal_go to_leave" end
		elseif self.map~=ZGV.CurrentMapID then
			-- different map
			if self.x then
				-- and coords
				text = COLOR_LOC(L['map_coords']:format(ZGV.GetMapNameByID(self.map) or "World",self.x*100,self.y*100))
			else
				-- just the map
				text = COLOR_LOC(ZGV.GetMapNameByID(self.map or 0))
			end
		else
			if self.x then
				-- same map
				text = COLOR_LOC(L['coords']:format(self.x and self.x*100 or 0,self.y and self.y*100 or 0))
			else
				-- just the map
				text = COLOR_LOC(ZGV.GetMapNameByID(self.map or 0))
			end
		end
		if self.waytitle then
			text = self.waytitle.." ("..text..")"
		end
		text = (brief and "%s" or L[form]):format( text )

		if self.waypoint_subzone then text = text .. (" (in %s)"):format(self.waypoint_subzone) end

	elseif self.action=='gotonpc' then text = L["stepgoal_gotonpc"]:format(self.npcname)

	elseif self.action=='create' then
		if self.skill then
			-- new syntax

			local skill = ZGV.Professions:GetSkill(self.skill)
			local skill_loc = ZGV.Professions.LocaleSkills[self.skill]
			local mastername = (skill.parentname or skill.name or self.skill):lower()
			local skill_create_text = L['stepgoal_perform_'..mastername]

			if self:IsComplete() then
				text = ("Created %s"):format(COLOR_ITEM(self.spell))
				if self.skilllevel then
					extramsg = ("\n (%s level %s reached)"):format(COLOR_ITEM(skill_loc), COLOR_GOAL(self.skilllevel))
				elseif self.count then
					extramsg = ("\n (%s created)"):format(COLOR_GOAL(self.count))
				end
			else
				local errortype

				if self.skilllevel then
					-- create until skill reaches level
					local modifier=1
					local remaining=self.skilllevel - skill.level
					local produced = remaining

					if skill.level>=self.skilllevel then
						self.recipedata=nil
						--errortype = "(done)"
					elseif self.skilllevel>skill.max then
						self.recipedata=nil
						errortype = "maxlevel"
					else
						if not self.recipedata or self.recipedata.skill~=skill then
							self.recipedata,errortype = ZGV.Professions:GoalRecipe(self.skill,self.spellid)
						end
						--self.castspellid = self.spellid
					end

					if self.recipedata and self.recipedata.difficulty then
						if self.recipedata.difficulty=="optimal" then modifier = 1
						elseif self.recipedata.difficulty=="medium" then modifier = 1.5
						elseif self.recipedata.difficulty=="easy" then modifier = 3
						elseif self.recipedata.difficulty=="trivial" and remaining>0 then errortype="trivial"
						else errortype = "wtf" end

						if modifier>0 and self.recipedata.numSkillUps>0 then
							produced = math.ceil(remaining / self.recipedata.numSkillUps * modifier)
						end
					end

					-- important info to display:
					-- skill_loc
					-- self.item == item name
					-- remaining == skill up points
					-- produced == avg items to produce

					if errortype=="trivial" then
						-- gray
						text = ("Gain %s skill points to reach %s level %s"):format(COLOR_GOAL(remaining), COLOR_ITEM(skill_loc), COLOR_GOAL(self.skilllevel))
						extramsg = Goal.CraftingErrorMsgs['trivial']:format(COLOR_ITEM(self.spell))
					elseif errortype or remaining<1 then
						-- error?
						text = ("Gain %s skill points, creating %s\n Reach %s level %s"):format(COLOR_GOAL(remaining), COLOR_ITEM(self.spell), COLOR_ITEM(skill_loc), COLOR_GOAL(self.skilllevel))
						if errortype then extramsg = Goal.CraftingErrorMsgs[errortype]:format(skill_loc) end
					elseif not self.recipedata or (self.recipedata.difficulty=="optimal" and self.recipedata.numSkillUps==1) then
						-- orange or standard
						text = ("Gain %s skill points, creating %s\n Reach %s level %s"):format(COLOR_GOAL(remaining), plural(COLOR_ITEM(self.spell),remaining), COLOR_ITEM(skill_loc), COLOR_GOAL(self.skilllevel))
					elseif self.recipedata.difficulty=="optimal" and self.recipedata.numSkillUps>1 then
						-- orange
						text = ("Gain %s skill points, creating %s %s\n Reach %s level %s"):format(COLOR_GOAL(remaining), COLOR_GOAL(produced), COLOR_ITEM(plural(self.spell,produced)), COLOR_ITEM(skill_loc), COLOR_GOAL(self.skilllevel))
					elseif self.recipedata.difficulty=="easy" or self.recipedata.difficulty=="medium" then
						-- yellow/green
						text = ("Gain %s skill points, creating about %s %s\n Reach %s level %s"):format(COLOR_GOAL(remaining), COLOR_GOAL(produced), COLOR_ITEM(plural(self.spell,produced)), COLOR_ITEM(skill_loc), COLOR_GOAL(self.skilllevel))
					else
						text = "?wtf?"
					end

					if not extramsg and self.recipedata and (self.recipedata.numAvailable or 0)<produced then
						if self.recipedata.numAvailable==0 then
							extramsg = Goal.CraftingErrorMsgs['noingredients']
						elseif remaining>(self.recipedata.numAvailable or 0) then
							extramsg = Goal.CraftingErrorMsgs['lackingredients']:format(COLOR_GOAL(self.recipedata.numAvailable or 0),produced)
						end
					end

					--self.skillnum = math.ceil(remaining / (self.recipedata and self.recipedata.numSkillUps or 1))
					self.skillnum = remaining

				else --elseif self.count then
					-- create until n items are obtained

					if not self.recipedata or self.recipedata.skill~=skill then
						self.recipedata,errortype = ZGV.Professions:GoalRecipe(self.skill,self.spellid)
					end

					local have,remaining=0,0

					if self.recipedata and self.recipedata.productid then
						self.targetid = self.recipedata.productid
						have = GetItemCount(self.recipedata.productid)
						if have then
							remaining = self.count and max(0,self.count-have) or 1
							if self.count and have>=self.count then
								text = ("Created %s %s"):format(COLOR_GOAL(self.count),COLOR_ITEM(plural(self.spell,self.count)))
							else
								-- primary display
								local product = self.recipedata.producttype=="enchant" and GetSpellInfo(self.recipedata.productid) or ZGV:GetItemInfo(self.recipedata.productid)
								text = skill_create_text:format(self.count and COLOR_GOAL(self.count-have) or "",COLOR_ITEM(plural(product,self.count and self.count-have or 1)))
								if self.recipedata.numAvailable==0 then
									extramsg = Goal.CraftingErrorMsgs.noingredients
								elseif remaining>(self.recipedata.numAvailable or 0) then
									extramsg = Goal.CraftingErrorMsgs.lackingredients:format(COLOR_GOAL(self.recipedata.numAvailable or 0),remaining)
								end
							end
						end
					else
						text = skill_create_text:format(self.count and COLOR_GOAL(self.count) or "",COLOR_ITEM(plural(self.spell,self.count)))
						extramsg = Goal.CraftingErrorMsgs[errortype]:format(skill_loc)
					end

					self.skillnum = self.count and max(0,min(tonumber(self.count)-have or 0,self.recipedata and tonumber(self.recipedata.numAvailable or 0) or 0)) or 0

				--else
				--
				--	text = "error in create: no skill, no total, no nothing"
				end
			end

		else
			-- old create syntax
			text = GenericText(brief,"create",COLOR_ITEM,self.count,ZGV:GetItemInfo(self.itemid),not self.count or self.count==1,self.count and self.count>1,(complete and "_done" or ""))
		end
		--]]

	elseif self.action=='complete' then
		local txt
		goalcountneeded=false
		local q=self.quest
		if q then
			if self.objnum then
				if q.goals then
					local goal = q.goals[self.objnum]
					if goal then
						-- BINGO!
						txt = goal.item
						goalcountneeded = goal.needed and goal.needed>1
					else
						txt = q.title.." (#"..self.objnum.." ??)"
					end
				else
					txt = q.title.." (#"..self.objnum..")"
				end
			else
				txt = q.title
			end
		else
			txt = "(?)"
		end
		text = L["stepgoal_complete"]:format(COLOR_GOAL(txt))

	end


	-- trickiness: coordinates.

	if self.x -- if there's a coordinate
	and not (self.action=="goto" or self.action=="fly") -- but it's not a plain goto   --and not self.text
	and not (self.text and self.text:find("[0-9%.]-,[0-9%.]-")) -- and it's not a coord-in-text
	and not self.force_noway
	and ZGV.db.profile.goal_showcoords  -- not supported for now. Hence: this is disabled for all purposes.
	then
		text = text .. L['stepgoal_at_suff']:format(COLOR_LOC(L['coords']:format(self.x*100,self.y*100)))
	end


	-- add item quality info
	if ZGV.IsRetail then
		if (self.action=='get' or self.action=='craft' or self.action=='farm') and self.targetid then
			reagentquality = C_TradeSkillUI.GetItemReagentQualityByItemInfo(self.targetid )
			if reagentquality then 
				local atlas = CreateAtlasMarkupWithAtlasSize(("Professions-ChatIcon-Quality-Tier%d"):format(reagentquality),nil,nil,nil,nil,nil,0.4*ZGV.db.profile.framescale)
				text = text .. " "..atlas
			end
		end
	end



	-- apply the (2/4) totals now, or not
	if type(showtotals)~="boolean" then showtotals=ZGV.db.profile.goaltotals end
	if showtotals then
		if not progtext then
			if goalcountnow and goalcountneeded and goalcountneeded>0 then progtext=L["completion_goal"]:format(goalcountnow,goalcountneeded)
			elseif goalcountneeded and goalcountneeded==0 then progtext=L["completion_count"]:format(goalcountnow)
			end

			if self.action=='skill' then
				local currentskill = ZGV.Professions:GetSkill(self.skill).level
				progtext=L["completion_goal"]:format(currentskill,self.skilllevel)
			end

			if zgv_gold_achieves[self.achieveid] then
				local goldowned = ZGV.GetMoneyString(math.floor(goalcountnow or 0))
				local goldneeded = ZGV.GetMoneyString(math.floor(goalcountneeded or 0))
				progtext=L["completion_goal"]:format(goldowned,goldneeded)
			end
		end

		if progtext then
			local col1,col2=""
			if complete then col1,col2=" ",""
			elseif ext then col1,col2=" |cffffbbbb","|r"
			else col1,col2=" |cffaaaaaa","|r"
			end

			text = text .. col1 .. progtext .. col2
		end
	end

	text = text .. (extramsg and "\n "..extramsg or "")

	if nocolor then text=decolor(text) end

	return text
end

function Goal:GetString()
	if self.action=="get" then
		return self.target
	elseif self.action=="goal" then
		return self.target
	elseif self.action=="kill" then
		--return goalstring_slain:format(self.target)
		return self.target
	end
end

ZGV.MACRODEBUGS={}
local MACRODEBUGS=ZGV.MACRODEBUGS

function Goal:Prepare(reset)
	if reset then self.prepared = nil end


	-- reset old stuff
	self.was_visited = false
	self.was_clicked = false


	if self.prepared then return end

	if self.castspellid then self.castspell=GetSpellInfo(self.castspellid) end

	if self.action=="goal" or self.action=="kill" or self.action=="get" then
		-- guess the .count if one wasn't given, or at least correct it if it's too high. Don't correct too low counts, they're to allow partial completion.
		if self.questid and self.objnum and not self.exact then
			local questData = ZGV.questsbyid[self.questid]

			if questData and questData.inlog and (questData.is_world or (questData.index or 0)>0) then
				local questGoalData = questData.goals[self.objnum]
				if questGoalData and questGoalData.needed and (not self.count or self.count>questGoalData.needed) then
					self.count=questGoalData.needed
				end
			end
		end
		if not self.count then self.count=1 end
	end

	if self.countexpr and not self.countexprfun then
		local fun,err = loadstring("return ".. self.countexpr)
		if fun then
			setfenv(fun,ZGV.Parser.ConditionEnv)
			self.countexprfun = fun
		else
			ZGV:Print("Error in step expression: '".. self.countexpr .."' error: '".. err .."'")
		end
	end

	if self.updatescript and not self.updatescriptfun then
		ZGV:Debug("&step_setup goal %d loading updatescript: %s",self.num,self.updatescript)

		local fun,err = loadstring(self.script)
		if fun then
			setfenv(fun,ZGV.Parser.ConditionEnv)
			self.updatescriptfun = fun
		else
			self:Print("Error in |updatescript ".. self.updatescript.." : ".. tostring(err))
		end
	end

	if self.more and self.targetid then -- record current inventory state
		self.more_base = GetItemCount(self.targetid)
	end

	-- wipe completed quests by title, if they're instant
	--[[ moved to core code, to be done on ClearRecentActivities
	if self.action=="accept" or self.action=="turnin" then
		if self.questid then
			if ZGV.instantQuests[self.questid] and ZGV.completedQuestTitles[self.quest] then
				ZGV.completedQuestTitles[self.quest] = nil
			end
		end
	end
	--]]

	--ZGV:Debug("goal "..self.num.." prepared.")

	self.prepared = true
end

function Goal:IsObsolete()
	do return false end --obsoletion is by section now
end

local _n = {"level","kill","rep","achieve","skill","skillmax","create","learn","learnspell","learnpet","learnmount","buy"}
local nonaux = {}  for i=1,#_n do nonaux[_n[i]]=true end

function Goal:IsAuxiliary()
	--[[
	if (self.questid or nonaux[self.action]) and not self.force_nocomplete then return false
	elseif self.action=="confirm" and self.always then return false
	elseif self.action=="fpath" then
		local isc = self:IsComplete()
		-- it's true or false if LibTaxi is sure of its data.
		if isc~=nil then return isc end
		-- if it's not... guess.
		local step=self.parentStep
		for i=1,5 do
			step=step:GetNextStep()
			if not step then return false end
			while (step.requirement) do
				step=step:GetNextStep()
				if not step then return false end
			end
			--print("complete? "..tostring(step:IsComplete()))
			if step:IsComplete() then return true end
		end
		return false
	else
		return true
	end
	--]]
	return (self.action=="goto" or self.action=="fly" or self.action=="hearth" or (self.action=="confirm" and self.always))
end

-- called when FOCUSED, not when moused over!!
function Goal:OnEnter()
	if self.autoscript and not self.autoscriptfun then
		local fun,err=loadstring(self.autoscript)
		if fun then
			setfenv(fun,ZGV.Parser.ConditionEnv)
			self.autoscriptfun = fun
		else
			ZGV:Print("Error in step autoscript: '".. self.autoscript .."' error: '".. tostring(err) .."'")
		end
	end

	if (self.autoscriptfun or GOALTYPES[self.action].autoscript) and (not ZGV.LastSkip or ZGV.LastSkip>=0) and not self.parentStep.needsreload then
		ZGV:Debug("calling autoscript %s",self.autoscript or (GOALTYPES[self.action].autoscript and "goaltype"))
		ZGV.Parser.ConditionEnv:_SetLocal(self.parentStep.parentGuide,self.parentStep,self)
		if GOALTYPES[self.action].autoscript then
			 GOALTYPES[self.action].autoscript(self)
		else
			self:autoscriptfun()
		end
		ZGV:Debug("called autoscript.")
	end

	self.macro = nil

	if false and "disabled because of Legion script warnings" and ZGV.db.profile.magickey~="" then
		-- update automatic macros. Wrong place to do it, but there isn't any "update goal" routine yet.
		if ((self.action=="kill" and self.target)
		or (self.action=="talk" and self.npcid)
		or (self.action=="from" and self.mobs and self.mobs[1] and self.mobs[1].name))
		and not self.macrosrc then
			if self.target or self.npcid then
				self.macrosrc = "/target "..(self.target or ZGV.Localizers:GetTranslatedNPC(self.npcid))
				self.macrosrc = self.macrosrc .."\n/run ZGV:MRM():CG("..self.parentStep.num..","..self.num..")"
			elseif self.mobs and self.mobs[1] and self.mobs[1].name then
				self.macrosrc = ""
				for mi,m in ipairs(self.mobs) do if m.name and #self.macrosrc<230 then
					self.macrosrc = self.macrosrc .. "/target "..m.name.."\n"
				end end
				self.macrosrc = self.macrosrc .."/run ZGV:MRM():CG("..self.parentStep.num..","..self.num..")"
				if self.macrosrc=="" then self.macrosrc=nil end
			end
			if self.macrosrc then
				self.macroicon = self.buttonicon or (self.action=="talk" and MACROICON_TALK or MACROICON_KILL)
				self.parentStep.prepared = nil
				self.prepared = nil
			end
			ZGV:Debug("&step_setup goal %d sets makeshift macro... should show up below...", self.num)
		end
	end

	if self.sub_goto then  -- deprecated: we shouldn't have "fly" steps anymore, Travel replaces all that.
		-- fly step!
		if (true) then
			local w1 = ZGV.GetMapContinent(ZGV.CurrentMapID or 0)
			local w2 = ZGV.GetMapContinent(self.map or 0)
			if w1 and w2 and w1==w2 then

				local npc = LibRover:GetNearestTaxiInZone()
				--if npc and (not UnitOnTaxi("player") or not self.sub_goto.map) and self.map == npc.m then
				if npc and (not UnitOnTaxi("player") or not self.sub_goto.map)  then
					self.sub_goto.x = npc.x
					self.sub_goto.y = npc.y
					self.sub_goto.map = npc.m
					self.sub_goto.floor = ZGV:SanitizeMapFloor(npc.m,npc.f)
					self.sub_talk.npcid = npc.npcid

					if self.taxi~=npc then
						-- taxi changed
						self.taxi = npc
						self.sub_talk.L = nil
						ZGV:ShowWaypoints()
					end
				end
			end
			self.sub_goto.hidden = not self.sub_goto.x
			self.sub_talk.hidden = not self.sub_talk.npcid
		else
			self.sub_goto.hidden=true
			self.sub_talk.hidden=true -- TODO make it inside event? Let's ask Sinus ~aprotas
			ZGV:ShowWaypoints()
		end
	end

	-- The second, shared with macros, is a clickable button.
	-- So, let's make a macro!
	if (self.script or self.macrosrc)
	and self.action~="confirm" -- don't make macros for click lines!
	and (not self.macro or not GetMacroInfo(self.macro)) --[[and ZGV.db.profile.tweaks_domacros--]] then
		-- have source, need to "compile"
		if not InCombatLockdown() then
			-- do it now
			local macrosrc = self.script and ("/run "..self.script) or self.macrosrc
			macrosrc = macrosrc:gsub("{goalnum}",self.num) :gsub("{stepnum}",self.parentStep.num) :gsub("{;}","\n")

			local macroname = "ZGVMacro" .. self.num
			local macro = GetMacroIndexByName(macroname)  -- returns 0 if not found.

			DeleteMacro(macro) -- Try deleting the macro, trying to see if this fixes a bug ~~ Jeremiah
			macro=0

			if macro==0 then
				local MAX_ACCOUNT_MACROS = MAX_ACCOUNT_MACROS or 36
				local MAX_CHARACTER_MACROS = MAX_CHARACTER_MACROS or 18
				local storeglobal
				local numAccountMacros, numCharacterMacros = GetNumMacros()
				if numCharacterMacros>=MAX_CHARACTER_MACROS then storeglobal=true end
				if numAccountMacros>=MAX_ACCOUNT_MACROS then
					-- screw it
					macro = nil
				else
					macro = CreateMacro(macroname,self.macroicon or (self.macrosrc and self.macrosrc:find("showtooltip") and MACROICON_AUTO) or MACROICON_MISC,macrosrc, not storeglobal)
				end
			end
			self.macro = macro
			if macro then
				if self.macrospell then SetMacroSpell(macro,GetSpellInfo(self.macrospell)) end
				if self.macroitem then SetMacroItem(macro,ZGV:GetItemInfo(self.macroitem)) end
				ZGV:Debug("&step_setup goal %d macro: set up macro %s [%d]: %s",self.num,macroname,self.macro,macrosrc:gsub("\n"," \\n"))
				local s = debugstack()
				MACRODEBUGS[s] = (MACRODEBUGS[s] or 0) + 1
			else
				ZGV:Debug("&step_setup goal %d macro: did NOT set up: out of macro space?",self.num)
			end
		else
			ZGV:Debug("&step_setup goal %d macro: tried to set up, but we're in combat.",self.num)
		end
	end

	if GOALTYPES[self.action] and GOALTYPES[self.action].onenter then return GOALTYPES[self.action].onenter(self) end

	self.fake_complete = nil
end

-- Used for "indent-based collapsing of completed goals". This could get more love, it's here if anyone wants it.
function Goal:GetIndentChildren()
	local children={}
	local goals = self.parentStep.goals
	for n=self.num+1,#goals do
		if goals[n].indent==self.indent+1 then
			tinsert(children,goals[n])
		elseif goals[n].indent<=self.indent then
			break
		end
	end
	return children
end

-- Used for "indent-based collapsing of completed goals". This could get more love, it's here if anyone wants it.
function Goal:CanBeIndentHidden()
	local children = self:GetIndentChildren()
	local all=#children>0
	if all then
		for ci,child in ipairs(children) do
			if not child:CanBeIndentHidden() then all=false break end
		end
	end
	local complete,completable = self:IsComplete()
	return (all and (complete or not completable)) or (#children==0 and complete)
end

function Goal:OnClick(button)
	if ZGV.GOALTYPES[self.action] and ZGV.GOALTYPES[self.action].onclick then ZGV.GOALTYPES[self.action].onclick(self) end

	if IsModifiedClick("DRESSUP") and self.itemid and IsDressableItem("item:"..self.itemid) then
		DressUpItemLink("item:"..self.itemid)
		return
	end

	-- Clicked goal? Set waypoint, and set map if it's open.
	if self.x and not self.force_noway  and not self.parentStep:IsCurrentlySticky()  then
		--if ZGV.Pointer.current_waypoint and not ZGV.Pointer.current_waypoint.goal then
		--	print("mode 1")
		--	ZGV:SetWaypoint("goal",self)
		--elseif ZGV.Pointer.current_waypoint.goal.parentStep ~= self.parentStep then

		ZGV:Debug("Goal %d clicked.",self.num)
		ZGV.Pointer:ClearWaypoints("manual")
		self.parentStep:CycleWaypointTo(self.num)
		if WorldMapFrame:IsShown() then OpenWorldMap(self.map) end
		ZGV:ShowWaypoints()

		--[[
		if self.parentStep.is_sticky or self.parentStep.is_poi then
			ZGV.Pointer:SetWaypointToGoal(self)
		else
			ZGV.Pointer:CycleWaypointTo(self)
		end
		--]]

	end
	if ZGV.GOALTYPES[self.action].click_to_complete then
		self.was_clicked = true
		if self.force_sticky_saved then
			self:SaveStickyComplete()
		end
		if self.clickfun then
			self:clickfun()
		else
			--self:SkipStep(true)
			ZGV:FakeCompleteGoal(self,true)
		end
	end
	if self.next then
		local step,guide = self.parentStep:GetJumpDestination(self.next)
		if guide then
			ZGV:Debug("WHOA. GUIDE JUMP! |cffffdd00%s|r in |cffff00dd%s|r",step,guide)
			ZGV:SetGuide(guide,step)
		else
			ZGV:FocusStep(step)
		end
	end

	if self.script then
		if not self.scriptfun then
			ZGV:Debug("goal %d loading script: %s", self.num,self.script)

			local fun,err = loadstring(self.script)
			if fun then
				setfenv(fun,ZGV.Parser.ConditionEnv)
				self.scriptfun = fun
			else
				ZGV:Print("Error in |script ".. self.script.." : ".. tostring(err))
			end
		end
		if self.scriptfun then  self:scriptfun()  end
	end

	if self.questid then
		ZGV:TrackQuest(self.questid)
		--self:PointToQuest(self.questid)  -- ONLY point to 'goto' coords now. 2014-09-02 14:34:42 sinus
	end

	if self.achieveid then
		--[[ -- temporarily off. DON'T open the achieve panel on click.
		-- copied from WatchFrame.lua
		if ( not AchievementFrame ) then
			AchievementFrame_LoadUI();
		end
		if ( not AchievementFrame:IsShown() ) then
			AchievementFrame_ToggleAchievementFrame()
			AchievementFrame_SelectAchievement(self.achieveid);
		else
			if ( AchievementFrameAchievements.selection ~= self.achieveid ) then
				AchievementFrame_SelectAchievement(self.achieveid);
			else
				AchievementFrame_ToggleAchievementFrame();
			end
		end
		--]]
	end

	if self.loadguide then
		ZGV.Tabs:LoadGuideToTab(self.loadguide,self.loadguidestep)
	end

	if IsShiftKeyDown() then
		self:ShareToChat(ZGV.db.profile.share_target or "SAY","brand","withtips")
	end

	--[[
	-- This cost me 2h of sleep. Thanks to whoever wrote that. >:[  ~~sinus
	-- It caused untranslated |noquest lines to uselessly search for ALL NPCs in WhoWhere.
	if self.npc then
		ZGV.WhoWhere:FindNPC(self.npc)
	end
	--]]

	--[[
	-- NOT allowed :/
	if self.itemid and self.itemuse and ZGV.actionbuttons[self.num] then
		ZGV.actionbuttons[self.num]:Click()
	end
	--]]
end

function Goal:WasSavedStickyComplete()
	local stickies = ZGV.db.char.saved_sticky_goals		if not stickies then return end
	local guidestickies = stickies[self.parentStep.parentGuide.title]	if not guidestickies then return end
	return guidestickies[self.parentStep.num.."/"..self.num]
end

function Goal:SaveStickyComplete()
	if not self.force_sticky or not self.force_sticky_saved then return end
	ZGV.db.char.saved_sticky_goals = ZGV.db.char.saved_sticky_goals or {}
	local stickies = ZGV.db.char.saved_sticky_goals
	stickies[self.parentStep.parentGuide.title] = stickies[self.parentStep.parentGuide] or {}
	stickies[self.parentStep.parentGuide.title][self.parentStep.num.."/"..self.num] = self:IsComplete()
end

function Goal:IsInlineTravel()
	return self.x and self.action=='goto' and not self.force_complete
	and (not self.force_nocomplete or (self.parentStep:IsCurrentlySticky() and self.force_nocomplete)) -- don't hide also at [xx,yy] lines, unless in sticky steps
	 --and self.text
	 and not self.questid and not self.npcid  -- basic form...
end

function Goal:GetDebugDump()
	local ret = "["..self.num.."]"
	if self.action then ret=ret..(" %s (%s)"):format(self:GetText(),self.status or "") end
	if self.x and self.y then ret=ret..(" [%d %d,%d]"):format(self.map or 0,self.x*100,self.y*100) end
	if self.tooltip then ret=ret.. (" - %s"):format(self.tooltip) end
	if self.questid then
		ret=ret.."  q:"..self.questid..", "
		if self.quest then
			ret=ret.."qdata: " .. (self.quest.complete and "complete" or "incomplete") .. ", " .. (self.quest.inlog and "in log" or "not in log") .. ", "
			local q=ZGV.questsbyid[self.questid]
			if q then
				if q.inlog then
					if q.goals then
						ret=ret.." goals in log: "
						for gi,goal in ipairs(q.goals) do
							ret=ret.." ["..gi.."] "..tostring(goal.item)..", "..(goal.completed and "completed" or "incomplete")..", "..tostring(goal.num).."/"..tostring(goal.needed)
						end
					else
						ret=ret.." no goals in log"
					end
				else
					if q.goals then
						ret=ret.." goals not in log: "
						for gi,goal in ipairs(q.goals) do
							ret=ret.." ["..gi.."] "..tostring(goal.item)
						end
					else
						ret=ret.." no goals not in log"
					end
				end
			else
				ret=ret.." no goal data"
			end
		else
			ret=ret.."no data"
		end
	end
	return ret
end

function Goal:GetTextForSharing(withtip)
	local text = self:GetText(false and "showcomplete",false and "brief",true or "totals",true or "stripcolor")
	if text=="?" then text="" end
	if self.tooltip and withtip then
		if #text>0 then text=text.."\n" end
		text=text .. decolor(self.tooltip)
	end
	return text
end

function Goal:GetTextForSharingWithAllTips()
	local begin_num = self.num
	if not self.text then
		while begin_num>1 do  begin_num=begin_num-1  if self.parentStep.goals[begin_num].action == "text" then break end  end
		if begin_num<1 then begin_num=1 end
	end
	local end_num = self.num
	while end_num<#self.parentStep.goals do  end_num=end_num+1  if self.parentStep.goals[end_num].action or not self.parentStep.goals[end_num].tooltip then end_num=end_num-1 break end  end
	if end_num>#self.parentStep.goals then end_num=#self.parentStep.goals end

	local lines={}
	for i=begin_num,end_num do
		local goal=self.parentStep.goals[i]
		if goal:IsVisible() then
			tinsert(lines,self.parentStep.goals[i]:GetTextForSharing("withtip"))
		end
	end

	return lines
end

function Goal:ShareToChat(target,brand,withtips)
	if target=="PARTY" and not IsInGroup() then ZGV:Error(ERR_NOT_IN_GROUP) return end
	if target=="RAID" and not IsInRaid() then ZGV:Error(ERR_NOT_IN_RAID) return end
	if brand and not ZGV.step_share_onceflag then  ZGV.step_share_onceflag=true  SendChatMessage(L['goalshare_brand']:format(self.parentStep.parentGuide.title_short,self.parentStep.num),target) end
	for i,line in ipairs(self:GetTextForSharingWithAllTips()) do  SendChatMessage(line,target)  end
end
