local name,ZGV = ...

local _G=_G

function ZGV.DeclineQuest()
	ZGV.tmp_no_autoquest=time()
end

local do_not_autoaccept_these_quests = {
	[10552]=1, --Scryers
	[10551]=1, --Aldors
}

-- fixes for Blizzard autoaccepting madness.
--[[
function QuestFrameDetailPanel_OnShow_after()
	if ZGV.db.profile.fixblizzardautoaccept and QuestFrame:IsVisible() and QuestFrame.autoQuest then
		local forceful = false
		if forceful then
			print("un-autoquest, hamfisted approach")
			-- hamfisted approach
			local q = ZGV:FindData(ZGV.quests,"title",GetTitleText())
			if q then
				-- found the accepted quest - ABANDON it now

				--
				--local sound=GetCVar("Sound_EnableSFX")
				--SetCVar("Sound_EnableSFX","0")
				--SelectQuestLogEntry(q.index)
				--SetAbandonQuest()
				--print("abandoned "..q.index.." "..q.title)
				--AbandonQuest()
				--SetCVar("Sound_EnableSFX",sound)
				QuestFrameDetailPanelBotRight:SetTexture("Interface\\QuestFrame\\UI-QuestGreeting-BotRight");
				QuestFrameDeclineButton:Show();
				QuestFrameAcceptButton:SetText(_G['ACCEPT'])
				QuestFrame.autoQuest = nil;
			end
		else
			-- purely cosmetic approach
			local q = ZGV:FindData(ZGV.quests,"title",GetTitleText())
			if q then
				QuestFrameAcceptButton:SetText(_G['CALENDAR_STATUS_ACCEPTED'])
			else
				QuestFrameAcceptButton:SetText(_G['ACCEPT'])
			end
		end
	end
end
--]]

local function QuestFrameDetailPanel_fixAutoQuest() -- deprecated anyway
	if ZGV.db.profile.fixblizzardautoaccept and QuestFrame:IsVisible() and QuestFrame.autoQuest then
		-- purely cosmetic approach
		local q = ZGV:FindData(ZGV.quests,"title",GetTitleText())
		if q then
			QuestFrameAcceptButton:SetText(_G['CALENDAR_STATUS_ACCEPTED'])
		else
			QuestFrameAcceptButton:SetText(_G['ACCEPT'])
		end
	else
		QuestFrameAcceptButton:SetText(_G['ACCEPT'])
	end
end



tinsert(ZGV.startups,{"QAA setup",function(self)
	-- quest auto turnin/accept
	self:AddEventHandler("GOSSIP_SHOW")
	self:AddEventHandler("QUEST_GREETING")
	self:AddEventHandler("QUEST_DETAIL")
	self:AddEventHandler("QUEST_PROGRESS")
	self:AddEventHandler("QUEST_COMPLETE")
	self:AddEventHandler("QUEST_FINISHED")
	self:AddEventHandler("QUEST_ITEM_UPDATE")
	self:AddEventHandler("QUEST_ACCEPTED")
	self:AddEventHandler("QUEST_LOG_UPDATE",QuestFrameDetailPanel_fixAutoQuest)
	--hooksecurefunc("QuestRewardCancelButton_OnClick",ZGV_QuestRewardCancelButton_OnClick)
	hooksecurefunc("DeclineQuest",ZGV.DeclineQuest)
	--hooksecurefunc("QuestFrameDetailPanel_OnShow",QuestFrameDetailPanel_OnShow_after)
	QuestFrameDetailPanel:HookScript("OnShow",QuestFrameDetailPanel_fixAutoQuest)
end})

function ZGV:QuestAutoAccept_InGreeting()
	if IsAltKeyDown() then return end
	for qnum=1,GetNumAvailableQuests() do
		local title=GetAvailableTitle(qnum)
		if self.CurrentStep then
			for i,goal in ipairs(self.CurrentStep.goals) do
				if goal.action=="accept" and goal.quest and goal.quest.title==title and goal:GetStatus()=="incomplete" and not goal.noautoaccept then
					self:Debug("&qauto Opening quest in greeting (step quest): %s",goal.quest.title)
					SelectAvailableQuest(qnum)
					return true
				end
			end
		end
		local isTrivial = GetAvailableQuestInfo and GetAvailableQuestInfo(qnum)
		if ZGV.db.profile.autoacceptturninall and not isTrivial then -- let's not be picky... too much
			self:Debug("&qauto Opening quest in greeting (any): #%d %s",qnum,title)
			SelectAvailableQuest(qnum)
			return true
		end
	end
end

function ZGV:QuestAutoAccept_InGossip()
	if IsAltKeyDown() then return end

	local quests=C_GossipInfo.GetAvailableQuests()

	for qnum,questInfo in ipairs(quests) do
		local qIdent = ZGV.IsRetail and questInfo.questID or qnum
		if self.CurrentStep then
			for i,goal in ipairs(self.CurrentStep.goals) do
				if goal.action=="accept" and goal.quest and goal.questid==questInfo.questID and goal:GetStatus()=="incomplete" and not goal.noautoaccept then
					self:Debug("&qauto Opening quest  in gossip")
					C_GossipInfo.SelectAvailableQuest(qIdent)
					return true
				end
			end
		end
		if ZGV.db.profile.autoacceptturninall and not questInfo.isTrivial then
			self:Debug("&qauto Opening any quest in gossip: #%d %s",qnum,questInfo.title)
			C_GossipInfo.SelectAvailableQuest(qIdent)
			return true
		end
	end
end

function ZGV:QuestAutoAccept_InDetail()
	if IsAltKeyDown() then return end
	local id = GetQuestID()
	if do_not_autoaccept_these_quests[id] then return end
	if self.CurrentStep then
		for i,goal in ipairs(self.CurrentStep.goals) do
			if goal.action=="accept" and goal.quest and goal.quest.id==id and goal:IsCompleteable() and not goal:IsObsolete() and not goal.noautoaccept then
				self:Debug("&qauto Accepting quest as guide")
				if not ZGV.db.char.DEBUG_PRETEND_QUESTAUTO then
					QuestDetailAcceptButton_OnClick()
				else
					print("QAA_ID: WOULD ACCEPT QUEST")
				end

				 -- It might be an instant quest! Bastardize it now.
				if not ZGV.db.char.DEBUG_PRETEND_QUESTAUTO then
					if QuestInfoFrame.itemChoice then GetQuestReward(max(QuestInfoFrame.itemChoice,1)) else self:Debug("&qauto no itemChoice") end
				else
					print("QAA_ID (instant?): WOULD PICK REWARD ",QuestInfoFrame.itemChoice)
				end

				-- ASSUMING it runs after the builtin QuestFrame code.
				-- But it seems to, if the title matches...
				return true
			end
		end
	end
	if ZGV.db.profile.autoacceptturninall then -- let's not be picky
		self:Debug("&qauto Accepting quest as any")
		if ZGV.db.profile.autoacceptshowobjective then
			local title=GetTitleText()
			local obj=GetObjectiveText()
			if title and obj then
				RaidNotice_AddMessage(RaidBossEmoteFrame,"|cff00aacc- New Quest -|r|n|cffffdd00"..title.."|r|n|cffddccbb"..obj,ChatTypeInfo.SYSTEM,15)
				-- there's a limit of 2 messages here.
			end
		end
		if not ZGV.db.char.DEBUG_PRETEND_QUESTAUTO then
			QuestDetailAcceptButton_OnClick()
		else
			print("QAA_ID (all): WOULD ACCEPT QUEST")
		end
		 -- It might be an instant quest! Bastardize it now.
		if not ZGV.db.char.DEBUG_PRETEND_QUESTAUTO then
			if QuestInfoFrame.itemChoice then GetQuestReward(max(QuestInfoFrame.itemChoice,1)) else self:Debug("&qauto no itemChoice") end
		else
			print("QAA_ID (all): WOULD PICK REWARD ",QuestInfoFrame.itemChoice)
		end
		return true
	end
end

function ZGV:QuestAutoTurnin_InGreeting()
	if IsAltKeyDown() then return end
	for qnum=1,GetNumActiveQuests() do
		local title = GetActiveTitle(qnum)

		if self.CurrentStep then
			for i,goal in ipairs(self.CurrentStep.goals) do
				if goal.action=="turnin" and goal.quest and goal.quest.title==title and goal:GetStatus()=="incomplete" then
					self:Debug("&qauto Turning in quest in greeting: %s",title)
					SelectActiveQuest(qnum)
					return true
				end
			end
		end

		if ZGV.db.profile.autoacceptturninall then -- let's not be picky
			for i,quest in ipairs(self.quests) do
				if quest.title==title and quest.complete then
					self:Debug("&qauto Turning in quest in greeting: %s",title)
					SelectActiveQuest(qnum)
					return true
				end
			end
		end

	end
end

function ZGV:QuestAutoTurnin_InGossip()
	if IsAltKeyDown() then return end
	local quests=C_GossipInfo.GetActiveQuests()

	for qnum, questInfo in ipairs(quests) do
		local qIdent = ZGV.IsRetail and questInfo.questID or qnum
		if self.CurrentStep then
			for i,goal in ipairs(self.CurrentStep.goals) do
				if goal.action=="turnin" and goal.questid == questInfo.questID and goal:GetStatus()=="incomplete" then
					self:Debug("&qauto Turning in quest")
					C_GossipInfo.SelectActiveQuest(qIdent)
					return true
				end
			end
		end
		if ZGV.db.profile.autoacceptturninall then -- let's not be picky
			for i,quest in ipairs(self.quests) do
				if quest.questid == questInfo.questID and quest.complete  then
					self:Debug("&qauto Turning in quest in gossip: %s", questInfo.title)
					C_GossipInfo.SelectActiveQuest(qIdent)
					return true
				end
			end
		end
	end
end

function ZGV:QuestAutoComplete_InProgress()
	if IsAltKeyDown() then return end
	local id = GetQuestID()
	if do_not_autoaccept_these_quests[id] then ZGV:Debug("&qauto Quest %d is on do_not_autoaccept_these_quests list (InProgress).",id) return end
	if not IsQuestCompletable() then return end --or GetNumQuestChoices()>1 then return end
	if self.CurrentStep then
		for i,goal in ipairs(self.CurrentStep.goals) do
			if goal.quest and goal.quest.id==id then
				self:Debug("&qauto Completing quest.")
				CompleteQuest()
				return true
			end
		end
	end
	if ZGV.db.profile.autoacceptturninall then -- let's not be picky
		self:Debug("&qauto Completing quest.")
		CompleteQuest()
		return true
	end
end

function ZGV:QuestAutoTurnin_InComplete(itemindex)
	if IsAltKeyDown() then return end
	local id = GetQuestID()
	if not id then return end
	if do_not_autoaccept_these_quests[id] then ZGV:Debug("&qauto Quest %d is on do_not_autoaccept_these_quests list (InComplete).",id) return end

	if GetNumQuestChoices()==0 then QuestInfoFrame.itemChoice = 1 end

	local L = ZGV.L

	if GetNumQuestChoices() > 1 and not (itemindex and ZGV.db.profile.autoselectitem) then
		self:Print(L['autocomplete_turnin_fail'])
		return false
	end

	if ZGV.db.profile.autoacceptturninall then  -- let's not be picky
		self:Print(L['autocomplete_turnin'])

		if not ZGV.db.char.DEBUG_PRETEND_QUESTAUTO then
			GetQuestReward(max(QuestInfoFrame.itemChoice,1))
		else
			print("QAT_IC: WOULD PICK REWARD ",QuestInfoFrame.itemChoice)
		end
		return true
	end
	if self.CurrentStep then
		for i,goal in ipairs(self.CurrentStep.goals) do
			if goal.quest and goal.quest.id==id then
				self:Print(L['autocomplete_turnin'])
				if QuestInfoFrame.itemChoice or not ZGV.IsRetail then
					if not ZGV.db.char.DEBUG_PRETEND_QUESTAUTO then
						GetQuestReward(max(QuestInfoFrame.itemChoice,1))
					else
						print("QAT_IC2: WOULD PICK REWARD ",QuestInfoFrame.itemChoice)
					end
				end
				return true
			end
		end
	end
end
--[[
function SelectQuestRewardNum(n)
	for i=1,10 do do
		local name = "QuestInfoItem"..i
		local but = _G[name]
		if not but then break end --continue
		if but:GetID()==n then but:Click() end
	end end
end

function ZGV:QuestAutoTurning_ChooseReward()
	if IsAltKeyDown() then return end
	if not QuestFrame:IsShown() or not QuestInfoFrame or not QuestInfoFrame.chooseItems then return end

	if ( QuestInfoFrame.itemChoice == 0 and GetNumQuestChoices() > 1 ) then
		local rewardids = {}
		local usables = {}

		-- pull out usables
		for i=1,GetNumQuestChoices() do
			local name, texture, numItems, quality, isUsable = GetQuestItemInfo("choice",i)
			local link = GetQuestItemLink("choice",i)
			if not link then break end --continue
			local id = link:match("item:([0-9]+)")
			if not id then break end --continue

			rewardids[i]=id

			if isUsable then tinsert(usables,num) end
		end

		-- only one usable! thank gods.
		if #usables==1 then self:Print("Selecting the only usable quest reward.") SelectQuestRewardNum(usables[1]) return true end

		-- none usable? Go for price.
		if #usables==0 then
			local maxprice,maxn = 0,1
			for n=1,#rewardids do
				local price = select(11,ZGV:GetItemInfo(rewardids[n]))
				if price>maxprice then maxprice,maxn=price,n end
			end
			self:Print("Selecting the most valuable quest reward.")
			SelectQuestRewardNum(maxn)
			return true
		end


		-- PURE EVIL. Check the average armor type worn by the player; thus decide their preference.
		local slots = {"ChestSlot","FeetSlot","HandsSlot","HeadSlot","LegsSlot","ShoulderSlot","WaistSlot","WristSlot"}
			--[=[ "MainHandSlot","NeckSlot","RangedSlot","SecondaryHandSlot","ShirtSlot","Trinket0Slot","Trinket1Slot" --]=]
		local avgs={}
		for si,slot in ipairs(slots) do
			local slotid=GetInventorySlotInfo(slot)
			local itemid=GetInventoryItemID("player",slotid)
			local _,_,_,_,_,typ,sub = ZGV:GetItemInfo(itemid)
			avgs[typ.."_"..sub]=(avgs[typ.."_"..sub] or 0)+1
		end
		local max=0
		local bestfit
		for typ,count in pairs(avgs) do if count>max then max=count bestfit=typ end end
		-- Now, bestfit should contain "Armor_Cloth" or whatever the locale says.

		if not bestfit then return end

		local armor,armtype = bestfit:match("^(.+)_(.+)$")

		local badstuff

		local propers={}
		-- check if there is ONLY armor to choose from.
		for chi,ch in ipairs(usables) do
			local _,_,_,_,_,typ,sub,_,invtype = ZGV:GetItemInfo(ch.id)
			if typ~=armor then return end  -- oh well, we tried.
			if invtype=="INVTYPE_NECK" or invtype=="INVTYPE_FINGER" or invtype=="INVTYPE_CLOAK" then badstuff=true end  -- armour types that we avoid.
			if sub==armtype then tinsert(propers,ch) end
		end

		-- only one proper armor? thank gods.
		if not badstuff and #propers==1 then SelectQuestRewardNum(propers[1].num) return true end

		--else...
		self:Print("Cannot pick a reward automatically.")
	end
end --]]

function ZGV:QUEST_ITEM_UPDATE() --TODO do quests have to worry about this?
	local ready = ZGV.ItemScore.QuestItem:IsQuestItemsReady()
	if ZGV.ItemScore.QuestItem.WaitingOnQuestItems or ready then
		ZGV:QUEST_COMPLETE()
	end
end

function ZGV:QUEST_GREETING()
	ZGV.ItemScore.QuestItem:HideQuestRewardGlow() --Try to hide the glow
	if IsAltKeyDown() then return end
	if self.tmp_no_autoquest and time()-self.tmp_no_autoquest<10 then
		self.tmp_no_autoquest=nil
		return
	end
	--if self.db.profile.autoturnin or (GetNumQuestChoices() > 1 and self.db.profile.autoselectitem) then
	if self.db.profile.autoacceptturnin or (GetNumQuestChoices() > 1 and self.db.profile.autoselectitem) then
		self:QuestAutoTurnin_InGreeting()
	end
	--if self.db.profile.autoaccept then
	if self.db.profile.autoacceptturnin then
		self:QuestAutoAccept_InGreeting()
	end
end

function ZGV:GOSSIP_SHOW()
	if IsAltKeyDown() then return end
	if self.tmp_no_autoquest and time()-self.tmp_no_autoquest<10 then
		self.tmp_no_autoquest=nil
		return
	end
	--if self.db.profile.autoturnin or (GetNumQuestChoices() > 1 and self.db.profile.autoselectitem) then
	if self.db.profile.autoacceptturnin or (GetNumQuestChoices() > 1 and self.db.profile.autoselectitem) then
		self:QuestAutoTurnin_InGossip()
	end
	--if self.db.profile.autoaccept then
	if self.db.profile.autoacceptturnin then
		self:QuestAutoAccept_InGossip()
	end
end

function ZGV:QUEST_DETAIL()
	if IsAltKeyDown() then return end
	if not self.mostRecentlyAcceptedQuest then self.mostRecentlyAcceptedQuest = {} end
	self.mostRecentlyAcceptedQuest.id , self.mostRecentlyAcceptedQuest.time = GetQuestID(), time() --Time is needed incase they pull a quest item out of the bank, then we don't know where it is from.
	if self.tmp_no_autoquest and time()-self.tmp_no_autoquest<10 then
		self.tmp_no_autoquest=nil
		return
	end
	--if self.db.profile.autoaccept then
	if self.db.profile.autoacceptturnin then
		self:QuestAutoAccept_InDetail()
	end
end

function ZGV:QUEST_PROGRESS()
	if IsAltKeyDown() then return end
	if self.tmp_no_autoquest and time()-self.tmp_no_autoquest<10 then
		self.tmp_no_autoquest=nil
		return
	end
	--if self.db.profile.autoturnin or (GetNumQuestChoices() > 1 and self.db.profile.autoselectitem) then
	if self.db.profile.autoacceptturnin or (GetNumQuestChoices() > 1 and self.db.profile.autoselectitem) then
		self:QuestAutoComplete_InProgress()
	end
end

function ZGV:QUEST_FINISHED()
	ZGV.ItemScore.QuestItem:HideQuestRewardGlow() --Try to hide the glow
	ZGV.last_questgiver_id = ZGV.GetTargetId()
	ZGV.last_questgiver_time = GetTime()
end

function ZGV:QUEST_COMPLETE()
	-- 836: seems not necessary anymore; moving to QuestAutoAccept.lua
	--self:Debug('QUEST_COMPLETE: '..tostring(GetTitleText()).." (talker: "..tostring(UnitName("target"))..")")
	--self.completingQuest = GetTitleText()
	--self:RecordData(self.questIndicesByTitle[GetTitleText()], 'finish', QuestFrameNpcNameText:GetText())

	local itemindex,reason

	-- mark quest reward
	ZGV.ItemScore.QuestItem:HideQuestRewardGlow()
	if self.db.profile.questitemselector and GetNumQuestChoices() > 1 then
		local questitems=ZGV.ItemScore.QuestItem
		itemindex,reason = questitems:GetQuestRewardIndex()

		if itemindex == -5 then
			ZGV:Debug("&qauto Waiting on Quest Items/Current Items to be ready")
			questitems.WaitingOnQuestItems=true --Wait for item info to be ready.
			ZGV:ScheduleTimer(function() ZGV:QUEST_COMPLETE() end,0.1)
			return
		else
			ZGV:Debug("&qauto Quest Items are ready")
			questitems.WaitingOnQuestItems=nil
		end

		ZGV:Debug("&qauto Quest Reward item: %d picked because: %s",itemindex,reason)

		if itemindex then
			questitems:ShowQuestRewardGlow(itemindex)
		end
	end

	if IsAltKeyDown() then return end

	-- select quest reward
	if self.db.profile.autoselectitem and itemindex then
		QuestInfoFrame.itemChoice = itemindex or 1
	end

	--if self.db.profile.autoturnin or (GetNumQuestChoices() > 1 and self.db.profile.autoselectitem) then
	if self.db.profile.autoacceptturnin or (GetNumQuestChoices() > 1 and self.db.profile.autoselectitem) then
		self:QuestAutoTurnin_InComplete(itemindex)
	end
end

ZGV.last_questgiver_time=0

function ZGV:QUEST_ACCEPTED()
	ZGV.last_questgiver_id = ZGV.GetTargetId()
	ZGV.last_questgiver_time = GetTime()
	-- goal "noquest" uses these to check when was the last time we accepted a quest.
end


--[[ attempt to do ALL of the above together. Scary and nasty and evil. Fit mostly for the Magic Key spammage.
function ZGV:QuestAutoStuff()
	if GossipFrame:IsShown() then
		if self:QuestAutoAccept_InGossip() then return end
		if self:QuestAutoTurnin_InGossip() then return end
		self:Print("No quest for the current step is available.")
	elseif QuestFrame:IsShown() then
		--if self:QuestAutoTurning_ChooseReward() then return end
		if self:QuestAutoAccept_InDetail() then return end
		if self:QuestAutoComplete_InProgress() then return end
		if self:QuestAutoTurnin_InComplete() then return end
		if self:QuestAutoTurnin_InGreeting() then return end
		self:Print("No quest for the current step is available.")
	end
end
--]]