local name,ZGV = ...

ZGV.QuestDB = {}
local QuestDB = ZGV.QuestDB

local L = ZGV.L
local RaceClassMatch = ZGV.RaceClassMatch
local IsQuestFlaggedCompleted = C_QuestLog.IsQuestFlaggedCompleted

QuestDB.VALID_NOW = 1
QuestDB.VALID_FUTURE = 2
QuestDB.VALID_NEVER = -1

if not PlayerIsOnQuest then
	function PlayerIsOnQuest(id)
		local q=ZGV.questsbyid[id]
		return q and q.inlog
	end
end

QuestDB.GuideForQuest = {}
function ZGV.QuestDB:Init()
	QuestDB:CacheQuestNames()

	if ZGV.IsRetail then ZGV:AddEventHandler("QUEST_DATA_LOAD_RESULT",QuestDB.CacheQuestNameResult) end

	-- move quests from faction array to common
	if UnitFactionGroup("player")=="Alliance" then 
		ZGV.Quest_Cache = ZGV.Quest_Cache_Turnin_Alliance
		ZGV.Quest_Cache_Accept = ZGV.Quest_Cache_Accept_Alliance
		ZGV.Quest_Cache_Horde_Turnin = nil
		ZGV.Quest_Cache_Horde_Accept = nil
	elseif UnitFactionGroup("player")=="Horde" then 
		ZGV.Quest_Cache = ZGV.Quest_Cache_Turnin_Horde		
		ZGV.Quest_Cache_Accept = ZGV.Quest_Cache_Accept_Horde		
		ZGV.Quest_Cache_Alliance_Turnin = nil
		ZGV.Quest_Cache_Alliance_Accept = nil
	else
		ZGV.Quest_Cache = {}
		ZGV.Quest_Cache_Accept = {}
		ZGV.Quest_Cache_Horde_Turnin = nil
		ZGV.Quest_Cache_Horde_Accept = nil
		ZGV.Quest_Cache_Alliance_Turnin = nil
		ZGV.Quest_Cache_Alliance_Accept = nil
	end
	if not ZGV.Quest_Cache then return end

	local guidecount = 0
	for _ in pairs(ZGV.Quest_Cache) do guidecount=guidecount+1 end

	-- clear blocks that cannot be reached, set valid functions where needed
	local count=0
	for gname,guidequests in pairs(ZGV.Quest_Cache) do
		count=count+1
		if ZGV.RegisteredGuidesTitles[gname] then
			count=count+1
			for index,questdata in pairs(guidequests) do if type(questdata)=="table" then
				local wipe = false
				-- only conditions cannot change during single gameplay session, so depending on RCM result either unset the condition (if RCM is valid), or remove whole quest pack (if invalid)
				if questdata.cond then 
					if ZGV:RaceClassMatch(questdata.cond) then
						questdata.cond = nil
					else
						guidequests[index] = nil
					end
				end

				-- only if conditions result on the other hand can change at any time, so create them from string, set enviroment, and leave it to be queried properly
				-- this is now handled on demand in guide:GetQuests()
				--if questdata.cond_if then 
				--	questdata.cond_if_raw = questdata.cond_if
				--	questdata.cond_if = ZGV.Parser.MakeCondition(questdata.cond_if_raw)
				--	setfenv(questdata.cond_if,ZGV.Parser.ConditionEnv)
				--end

				-- explode strings to array
				if type(questdata.ids)=="string" then
					local exploded = {}
					for quest in questdata.ids:gmatch('([^,]+)') do
						exploded[tonumber(quest)] = true
					end
					questdata.ids = exploded
				end
			end end
		else
			ZGV.Quest_Cache[gname]=nil
		end
		if count%30==0 and coroutine.running() then coroutine.yield(50*(count/guidecount),"cache") end
	end

	local guidecount = 0
	for _ in pairs(ZGV.Quest_Cache_Accept) do guidecount=guidecount+1 end

	local count=0
	for gname,guidequests in pairs(ZGV.Quest_Cache_Accept) do
		count=count+1
		if ZGV.RegisteredGuidesTitles[gname] then
			for index,questdata in pairs(guidequests) do if type(questdata)=="table" then
				local wipe = false
				-- only conditions cannot change during single gameplay session, so depending on RCM result either unset the condition (if RCM is valid), or remove whole quest pack (if invalid)
				if questdata.cond then 
					if ZGV:RaceClassMatch(questdata.cond) then
						questdata.cond = nil
					else
						guidequests[index] = nil
					end
				end

				-- only if conditions result on the other hand can change at any time, so create them from string, set enviroment, and leave it to be queried properly
				--if questdata.cond_if then 
				--	questdata.cond_if_raw = questdata.cond_if
				--	questdata.cond_if = ZGV.Parser.MakeCondition(questdata.cond_if_raw)
				--	setfenv(questdata.cond_if,ZGV.Parser.ConditionEnv)
				--end

				-- explode strings to array
				if type(questdata.ids)=="string" then
					local exploded = {}
					for quest in questdata.ids:gmatch('([^,]+)') do
						local qid = tonumber(quest)
						exploded[qid] = true
						QuestDB.GuideForQuest[qid] = QuestDB.GuideForQuest[qid] or {}
						table.insert(QuestDB.GuideForQuest[qid],gname)
					end
					questdata.ids = exploded
				end
			end end
		else
			ZGV.Quest_Cache_Accept[gname]=nil
		end
		if count%30==0 and coroutine.running() then coroutine.yield(50+50*(count/guidecount),"cache-accept") end
	end

	for questid,guides in pairs(QuestDB.GuideForQuest) do
		table.sort(QuestDB.GuideForQuest[questid])
	end
end

function ZGV.QuestDB:GetGuidesForQuest(id)
	if not id then return false end
	if not ZGV.Quest_Cache then return false end
	if not ZGV.Quest_Cache_Accept then return false end

	local results = {}

	id = tonumber(id)
	local find_action = "accept" -- find accept step, assuming the quest is not completed
	if IsQuestFlaggedCompleted(id) then find_action = "turnin" end -- if it is, route to turnin step and pause

	if find_action == "accept" then
		for guideTitle,guide in pairs(ZGV.Quest_Cache_Accept) do
			for j,questpack in pairs(guide) do
				if questpack.ids[id] then
					results[guideTitle]=true
				end

			end
		end
	else
		for guideTitle,guide in pairs(ZGV.Quest_Cache) do
			for j,questpack in pairs(guide) do
				if questpack.ids[id] then
					results[guideTitle]=true
				end

			end
		end
	end
	
	for guideTitle,v in pairs(results) do
		local guide = ZGV:GetGuideByTitle(guideTitle)
		if guide then
			guide:Parse(true)
			local guide_checked = false
			for stepNum,step in pairs(guide.steps) do
				for _,goal in pairs(step.goals) do
					if goal.action==find_action and goal.questid==id then
						results[guideTitle]=stepNum
						guide_checked = true
						break
					end
					if guide_checked then break end
				end
				if guide_checked then break end
			end
		else
			results[guideTitle] = nil
		end
	end

	if next(results) then
		return true, results
	else
		return false, results
	end
end

function QuestDB:CreateButton()
	local parentFrame = ZGV.IsRetail and QuestMapFrame.DetailsFrame or QuestLogFrame
	local iconFrame = CreateFrame("Button", "ZygorQuestFinder", parentFrame)
	if ZGV.IsRetail then
		iconFrame:SetPoint("TOPRIGHT",parentFrame,"TOPRIGHT",18,30)
	else
		iconFrame:SetPoint("TOPRIGHT",parentFrame,"TOPRIGHT",-70,-180)
	end
	iconFrame:SetSize(24,24)
	iconFrame:SetScript("OnLeave",function() GameTooltip:Hide() end)
	iconFrame:SetScript("OnClick", function(...) QuestDB:SuggestGuidesForQuest(QuestDB.questID) end)
	iconFrame:SetScript("OnEnter",function(self)
		GameTooltip:ClearAllPoints()
		GameTooltip:ClearLines()
		GameTooltip:SetOwner(self,"ANCHOR_TOPLEFT")
		GameTooltip:AddLine(L['questframe_button']:format(QuestDB.questName))
		GameTooltip:Show()
	end)

	iconFrame.tex=iconFrame:CreateTexture("ZygorQuestFinderTexture","OVERLAY")
	iconFrame.tex:SetAllPoints(true)
	iconFrame.tex:SetTexture(ZGV.DIR.."\\Skins\\findinzygor")
	--iconFrame.tex:SetTexCoord(0,0,0,1/2 , 1,0,1,1/2)

	iconFrame:Hide()

	QuestDB.SearchIcon = iconFrame
end

function QuestDB:SetQuestForButton(questIdent)
	local questID,questLogTitleText = questIdent
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		questLogTitleText, _, _, _, _, _, _, questID, _ = GetQuestLogTitle(questIdent)
	end

	local status,results = QuestDB:GetGuidesForQuest(questID)
	if QuestDB:GetGuidesForQuest(questID) then
		QuestDB.questID = questID
		QuestDB.questName = questLogTitleText or QuestInfoTitleHeader:GetText()
		QuestDB.SearchIcon:Show()
	else
		QuestDB.SearchIcon:Hide()
	end

	if QuestMapFrame and QuestMapFrame:IsVisible() then
		ZGV.QuestDB.SearchIcon:ClearAllPoints()
		ZGV.QuestDB.SearchIcon:SetParent(QuestMapFrame.DetailsFrame)
		ZGV.QuestDB.SearchIcon:SetPoint("TOPRIGHT",QuestMapFrame.DetailsFrame,"TOPRIGHT",18,30)
	elseif QuestLogPopupDetailFrame and QuestLogPopupDetailFrame:IsVisible() then
		ZGV.QuestDB.SearchIcon:ClearAllPoints()
		ZGV.QuestDB.SearchIcon:SetParent(QuestLogPopupDetailFrame)
		ZGV.QuestDB.SearchIcon:SetPoint("LEFT",QuestLogPopupDetailFrame.ShowMapButton,"RIGHT",-4,0)
	end
end

function QuestDB:MaybeShowButton()
	local NextButtonSpecial = ZGV.Frame.Controls.NextButtonSpecial

	if not ZGV.CurrentGuide then 
		NextButtonSpecial:Hide()
		return 
	end

	if not ZGV.CurrentGuide.QuestSearchID then 
		NextButtonSpecial:Hide()
		return 
	end
	
	if ZGV.CurrentStep:IsComplete() then
		NextButtonSpecial:Hide()
		return 
	end
		
	local show_button = true
	for i,goal in pairs(ZGV.CurrentStep.goals) do
		if goal.questid==ZGV.CurrentGuide.QuestSearchID then
			NextButtonSpecial:Hide()
			if goal.action=="turnin" then 
				ZGV.CurrentGuide.QuestSearchID = nil 
				end -- stop tracking once we display turnin step for this quest
			return
		end
	end

	NextButtonSpecial:Show()
	NextButtonSpecial.Blink:Stop();
	NextButtonSpecial.Blink:Play();
end

function QuestDB:MaybeStopOnThisStep()
	if not ZGV.CurrentGuide then return false end
	if not ZGV.CurrentGuide.QuestSearchID then return false end
	
	local show_button = true
	for i,goal in pairs(ZGV.CurrentStep.goals) do
		if goal.questid==ZGV.CurrentGuide.QuestSearchID and goal.action=="turnin" then
			return true
		end
	end
	return false
end


function QuestDB:SuggestGuidesForQuest(questID)
	ZGV.GuideMenu:Show("QuestSearch",tonumber(questID))
end

function QuestDB:FocusNextStepForQuest()
	if not ZGV.CurrentGuide then return false end
	if not ZGV.CurrentGuide.QuestSearchID then return false end

	local questID = ZGV.CurrentGuide.QuestSearchID
	
	for i,step in ipairs(ZGV.CurrentGuide.steps) do
		if i>ZGV.CurrentStepNum then
			for j,goal in pairs(step.goals) do
				if goal.questid==questID then
					ZGV:FocusStep(i,true)
					return true
				end
			end
		end
	end

	return false
end

function ZGV.QuestDB:MaybeSkipThisGoal(goal)
	if not goal then return false,"no goal" end -- sanity check

	if ZGV.CurrentGuide and (ZGV.db.char.guideTurnInsOnly == ZGV.CurrentGuide.title) then
		if goal.action~="turnin" then return true,"looking for turnins only" end -- in "let me turn in my quests" mode, skip everything that is not turnin
	end

	return false
end

local cache_quest_names_throttle = 50
local function cache_quest_names_thread()
	local t = debugprofilestop()

	local counter = 0
	for guideTitle,guide in pairs(ZGV.Quest_Cache) do
		for j,questpack in pairs(guide) do
			for quest in pairs(questpack.ids) do
				if not (QuestDB.QuestNamesStored[quest] or QuestDB.QuestNames[quest]) then
					local title = QuestDB:GetQuestName(questID)
					if title then
						QuestDB.QuestNames[quest] = title
					elseif C_QuestLog.RequestLoadQuestByID then
						C_QuestLog.RequestLoadQuestByID(quest)
					end
					counter = counter + 1

					if counter%cache_quest_names_throttle==0 then t=debugprofilestop() coroutine.yield("more gold to do") end
					--if debugprofilestop()-t>100 then t=debugprofilestop() coroutine.yield("more gold to do") end
				end
			end
		end
	end
end

function QuestDB:GetQuestName(questID)
	local questtitle = QuestDB.QuestNamesStored and QuestDB.QuestNamesStored[questID]
	if questtitle then return questtitle end

	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		return C_QuestLog.GetQuestInfo(questID)
	else
		return C_QuestLog.GetTitleForQuestID(questID)
	end
end

function QuestDB:CacheQuestNames()
	local version, build, date, tocversion = GetBuildInfo()
	if ZGV.db.global.questnames_ver ~= tocversion then	
		ZGV.db.global.questnames_ver = tocversion
		table.wipe(QuestDB.QuestNames)
	end

	local cache_thread = coroutine.create(cache_quest_names_thread)
	QuestDB.cache_timer = ZGV:ScheduleRepeatingTimer(function()
		local ok,ret = coroutine.resume(cache_thread)
		if not ok or coroutine.status(cache_thread)=="dead" then 
			ZGV:CancelTimer(QuestDB.cache_timer) 
		end
	end,0.1)

end

function QuestDB:CacheQuestNameResult(event,quest,success)
	if success and not (QuestDB.QuestNames[quest] or QuestDB.QuestNamesStored[quest]) then
		local title = C_QuestLog.GetTitleForQuestID(quest)
		if title then
			QuestDB.QuestNames[quest] = title
		else
			C_QuestLog.RequestLoadQuestByID(quest)
		end
		QuestDB.LastResult = debugprofilestop()
	end
end

local quest_sanitizechars = { '"',"'",";","\\.",",","-" }
local function quest_sanitize(instring)
	local out = instring:lower()
	for _,char in pairs(quest_sanitizechars) do
		out = out:gsub(char,'')
	end
	return out
end

QuestDB.QuestsByTitle = {}
local function SortGuides(a,b)
	local aname=ZGV.GuideTitles[a.type]
	local bname=ZGV.GuideTitles[b.type]

	local sa=ZGV.registered_sortings[aname or a.title_short]
	local sb=ZGV.registered_sortings[bname or b.title_short]

	if sa and sb then 
		return sa<sb 
	else 
		return a.ord<b.ord 
	end
end

function QuestDB:GetQuestsByTitle(search)
	table.wipe(QuestDB.QuestsByTitle)
	local quests = QuestDB.QuestsByTitle
	search = quest_sanitize(search)

	if not QuestDB.QuestNames then return quests end

	-- get matching quests
	for questid,title in pairs(QuestDB.QuestNames) do
		--if quest_sanitize(title):find(search,1,true) then
		if title:lower():find(search,1,true) then
			table.insert(quests,{questid=questid,questtitle=title,guides={}})
		end
	end
	for questid,title in pairs(QuestDB.QuestNamesStored) do
		--if quest_sanitize(title):find(search,1,true) then
		if title:lower():find(search,1,true) then
			table.insert(quests,{questid=questid,questtitle=title,guides={}})
		end
	end

	-- sort by title
	table.sort(quests,function(a,b) return a.questtitle<b.questtitle end)

	-- get guide types and counts
	for _,questdata in ipairs(quests) do
		if QuestDB.GuideForQuest[questdata.questid] then
			for i,guide in pairs(QuestDB.GuideForQuest[questdata.questid]) do
				local path,title = guide:match("^(.*)\\+(.-)$")
				if not path then path=title end
				local guidetype = path:match("^(.-)\\") or path
				table.insert(questdata.guides,{title=guide,title_short=title or guide,type=guidetype, ord=i})
			end
		end
		--questdata.guides = QuestDB.GuideForQuest[questdata.questid]
	end

	-- remove quests that do not have any guides
	for i=#quests,1,-1 do
		local object=quests[i]
		if #object.guides==0 then 
			table.remove(quests,i) 
		else
			object.completed = IsQuestFlaggedCompleted(object.questid)
			table.sort(object.guides,SortGuides)
		end
	end

	return quests
end

function QuestDB:IsQuestPossible(questid) 
	return 1 -- VALID_NOW
end


function QuestDB:ExplainStep(doprint)
	if ZGV.IsRetail then return "(retail: no quest chains)" end
	ZGV.db.char.chain_log = ""
	local out = ""
	local verbose_status = {[-1] = "will never be acceptable", [1]="is acceptable now", [2]="not acceptable, maybe future"}
	local verbose_complete = {ff="impossible",ft="possible",tt="complete",tf="wtf"}
	if not ZGV.CurrentGuide then return end
	if not ZGV.CurrentStep then return end
	local function yesno(s)
		return s and "yes" or "no"
	end
	for gn,goal in pairs(ZGV.CurrentStep.goals) do
		if goal.action == "accept" then
			local questid = goal.questid
			local state,comment = QuestDB:IsQuestPossible(questid)
			local complete,possible = goal:IsComplete()
			out = out .. ("Goal %d, quest %s##%d:\n"):format(gn,goal.quest and goal.quest.title or "[?]",questid)
			out = out .. (" - goal is %s\n"):format(verbose_complete[(complete and "t" or "f")..(possible and "t" or "f")])
			out = out .. (" - quest is %s (%s)\n"):format(verbose_status[state],comment)
			local skip, skipwhy = QuestDB:MaybeSkipThisGoal(goal)
			out = out .. (" - would goal be skipped? %s (%s)\n"):format(yesno(skip), skipwhy)
			out = out .. (" - is a breadcrumb? %s\n"):format(yesno(ZGV.ChainsBreadcrumbs[questid]))
			out = out .. (" - has siblings? %s\n"):format(ZGV.ChainsSiblings[questid] and table.concat(ZGV.ChainsSiblings[questid],",") or "no")
			local chain = QuestDB:GetChain(questid,nil,nil,"")
			local chaintxts = {}
			for i,v in pairs(chain) do tinsert(chaintxts,("%d (%s%s)"):format(i, (PlayerIsOnQuest(i) and "ON IT," or ""),(ZGV.completedQuests[i] and "completed" or "not"))) end
			local chaintxt = table.concat(chaintxts,", ")  
			local chainmsg = ZGV.db.char.chain_log:trim():gsub("\n",", ")
			out = out .. " - quests in chain: "..chaintxt.."\n"
			out = out .. " - chain messages: "..chainmsg.."\n"
			out = out .. "\n"
		end
	end
	if out=="" then out = "No accept goals found, chains have no impact on this step" end
	return out
end


tinsert(ZGV.startups,{"Quest DB",function(self)

	ZGV.db.global.questnames_lang = ZGV.db.global.questnames_lang or GetLocale()
	ZGV.db.global.questnames = ZGV.db.global.questnames or {}
	if ZGV.db.global.questnames_lang ~= GetLocale() then 
		ZGV.db.global.questnames_lang = GetLocale()
		table.wipe(ZGV.db.global.questnames) 
	end

	QuestDB.QuestNames = ZGV.db.global.questnames
	QuestDB.QuestNamesStored = ZygorGuidesViewer_L("Quests")

	QuestDB:Init()
	QuestDB:CreateButton()

	if ZGV.IsRetail then
		hooksecurefunc("QuestMapFrame_ShowQuestDetails",function(questID) ZGV.QuestDB:SetQuestForButton(questID,"QuestMapFrame") end)
		hooksecurefunc("QuestLogPopupDetailFrame_Show",function(questLogIndex) ZGV.QuestDB:SetQuestForButton(QuestLogPopupDetailFrame.questID,"QuestLogPopupDetailFrame") end)
	end
	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		hooksecurefunc("QuestLog_SetSelection",function(questIndex) ZGV.QuestDB:SetQuestForButton(questIndex) end)
	end

end,after="guides_loaded"})