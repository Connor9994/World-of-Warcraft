local name,ZGV = ...

local Sync={}
ZGV.Sync = Sync

local L = ZGV.L

local PREFIX="zygor7sync"

local PACKETTYPE_GUIDESTATUS = "GS"
local PACKETTYPE_STATUSREQUEST = "SR"  -- Everyone, please send in your GUIDESTATUS.
local PACKETTYPE_STEPREQUEST = "SQ"
local PACKETTYPE_STEPDATA = "SD"
local PACKETTYPE_STEPSTICKY = "SS"
local PACKETTYPE_STEPLINE = "SL"
local PACKETTYPE_STEPEND = "SE"
local PACKETTYPE_SLAVEREQUEST = "MS"

local PARTY_STATUS_TIMEOUT = 2.0


local AceComm = LibStub("AceComm-3.0")

--[[

"MAGNETIC" SYNC:

Everyone synced progresses only when:
 - they're on the same step, and
 - the steps are all completed.

Each step change is announced to other party members.

Packet GS (GuideState):
  "GS""
  "##GU=" <guide title>
  "##ST=" <step number> "," <status> (0=incomplete/1=complete)
  "##GO=" <goal status> "," <goal status...> (0=incomplete/1=complete/2=impossible)

	Receiving of GS packet stores party member's guide state indefinitely, until further GS data,
	disconnection or leaving the party.

	Step progress is halted as long as there are party members' statuses stored, indicating
	current step being current and incomplete.
--]]

Sync.packet_callbacks = {}

local function simple_popup(txt,callback)
	local popup = ZGV.PopupHandler.popups['GenericPopup']
	popup.acceptbutton:SetText(OKAY)
	popup.acceptbutton:Show()
	popup.acceptbutton:ClearAllPoints()
	popup.acceptbutton:SetPoint("BOTTOM",0,10)
	popup.declinebutton:Hide()
	popup.noMinimize=true
	popup.OnAccept=callback or function() end
	popup:SetText(txt)
	popup:Show()
end

local empty_table={}
function Sync:CreatePacket_GuideStatus()
	local guide_title=ZGV.CurrentGuide and ZGV.CurrentGuide.title or ""

	local function GetStepStatus(step)
		local goals={}
		local req = step:AreRequirementsMet(nil,"strict")
		for gi,goal in ipairs(step.goals) do
			local completable=req and goal:IsCompleteable()
			local complete,possible,numdone,numneeded = goal:IsComplete()
			goals[gi]=(not completable and "-") or (complete and "c") or (possible and ("%d/%d"):format(numdone,numneeded)) or "i"
		end
		return ("%d,%s;%s"):format(step.shared_origin or step.num,req and (step:IsComplete() and "c" or "i") or "x", table.concat(goals,","))
	end

	local ST="##ST=0,0;0"
	local SS = ""
	if ZGV.CurrentStep then
		ST="##ST="..GetStepStatus(ZGV.CurrentStep)

		local stickies = ZGV:GetStickiesAt(ZGV.CurrentStep.num)
		for i,sticky in ipairs(stickies or empty_table) do
			if #SS==0 then SS="##SS=" else SS=SS.."/" end
			SS=SS..GetStepStatus(sticky)
		end
	end

	local packet =
		   PACKETTYPE_GUIDESTATUS
		.. ("##GU=%s"):format(guide_title)
		.. ST
		.. SS 
		.. ("##MS=%d"):format(ZGV.db.profile.share_masterslave)
		.. ("##CH=%d,%s,%s\n"):format(UnitLevel("player"),select(2,UnitRace("player")),select(2,UnitClass("player")))  --,ZGV.Parser.classspecs[select(2,UnitClass("player"))][GetSpecialization() or 0] or "unspec"
	
	return packet
end

function Sync:CreatePackets_StepData()
	if not ZGV.CurrentGuide or ZGV.CurrentGuide.headerdata.shared then return end

	local ret=""

	local guide_title=ZGV.CurrentGuide.title
	local step_num=ZGV.CurrentStepNum

	local steplines = self:GetStepSource(ZGV.CurrentStepNum)
	if not steplines or #steplines==0 then ZGV:Print("Unable to share current step!") return end

	ret = ret .. ("%s##GU=%s##ST=%d##LA=%s##SL=%d\n"):format(PACKETTYPE_STEPDATA, guide_title, step_num, ZGV.CurrentStep.label or "", #steplines)
	for li,line in ipairs(steplines) do
		ret = ret .. ("%s##%d:%d:%s\n"):format(PACKETTYPE_STEPLINE,step_num,li,line)
	end

	local stickies = ZGV:GetStickiesAt(step_num)
	for i,sticky in ipairs(stickies) do
		local steplines = self:GetStepSource(sticky.num)
		if not steplines or #steplines==0 then ZGV:Print("Unable to share sticky step!") return end
		ret = ret .. ("%s##ST=%d##LA=%s##SL=%d\n"):format(PACKETTYPE_STEPSTICKY, sticky.num, sticky.label or "", #steplines)
		for li,line in ipairs(steplines) do
			ret = ret .. ("%s##%d:%d:%s\n"):format(PACKETTYPE_STEPLINE,sticky.num,li,line)
		end
	end

	ret = ret .. ("%s##\n"):format(PACKETTYPE_STEPEND)

	return ret
end

function Sync:CreatePacket_StatusRequest()
	return ("%s##\n"):format(PACKETTYPE_STATUSREQUEST)
end

function Sync:CreatePacket_StepRequest()
	return ("%s##\n"):format(PACKETTYPE_STEPREQUEST)
end

function Sync:CreatePacket_SlaveRequest()
	return ("%s##GU=%s\n"):format(PACKETTYPE_SLAVEREQUEST,ZGV.CurrentGuide.title)
end


-- /run SDs={ZGV.Sync:CreatePackets_StepData()} for i,pck in ipairs(SDs) do ZGV.Sync:OnChatReceived("zygor7sync",pck,"party","Alice") end

function Sync:SplitXXIntoPacket(packet,data)
	local databits={("##"):split(data)}
	for i,bit in ipairs(databits) do
		local k,v = bit:match("(..)=(.+)")
		if k then packet[k]=v elseif #bit==2 then packet[k]=true end
	end
end

local function packet_iterator(packet)
	return packet:gmatch("([^\n]+)\n")
end


function Sync:OnChatReceived(msg,channel,sender)
	local sname,srealm = sender:match("(.*)%-(.*)")
	if sname then sender=sname end
	if sender==UnitName("player") then return end
	Sync:Debug("|cffaaff00RCV |cffffffff[%s]: |r%s",sender,msg)

	for chunk in packet_iterator(msg) do
		local packettype,data = chunk:match("(..)##(.*)")
		if not packettype then Sync:Debug("Bad packet received: ",chunk) return end
		local packet={['type']=packettype,['sender']=sender,['recv_time']=GetTime()}
		Sync:Unpack(packet,data)
		Sync:HandleReceivedPacket(packet)
	end
end

local dummy_notcompletable={completable=false}
local dummy_complete={completable=true,complete=true}
local function grab_goals(goalstring,target)
	local goals = {(","):split(goalstring)}
	target.goals={}
	for i,g in ipairs(goals) do
		if g=="-" then
			target.goals[i]=dummy_notcompletable
		elseif g=="c" then
			target.goals[i]=dummy_complete
		else
			local done,needed = g:match("(%d+)/(%d+)")
			done=tonumber(done)
			needed=tonumber(needed)
			target.goals[i]={completable=true,complete=false,done=done,needed=needed}
		end
	end
end

function Sync:Unpack(packet,data)
	if packet.type==PACKETTYPE_GUIDESTATUS then
		self:SplitXXIntoPacket(packet,data)
		packet.guide = packet.GU
		local stepnum,complete,goals = packet.ST:match("(.*),(.*);(.*)")
		packet.stepnum = tonumber(stepnum)
		packet.is_complete = complete=="c"
		packet.is_possible = complete~="x"
		if goals then grab_goals(goals,packet) end
		
		if packet.SS then -- sticky statuses, all of them
			local stickies = {("/"):split(packet.SS)}
			packet.stickies = {}
			for i,stickystatus in ipairs(stickies) do
				local stepnum,complete,goals = stickystatus:match("(.*),(.*);(.*)")
				local stickydata={}
				stickydata.stepnum = tonumber(stepnum)
				stickydata.is_complete = complete=="c"
				stickydata.is_possible = complete~="x"
				if goals then grab_goals(goals,stickydata) end
				table.insert(packet.stickies,stickydata)
			end
		end

		if packet.MS then packet.sharemode = tonumber(packet.MS) end
		if packet.CH then
			packet.level,packet.race,packet.class = packet.CH:match("(.*),(.*),(.*)")
		end
		packet.level = tonumber(packet.level) or 0
		packet.race = packet.race or "?"
		packet.class = packet.class or "?"

	elseif packet.type==PACKETTYPE_STEPDATA then
		self:SplitXXIntoPacket(packet,data)
		packet.guide = packet.GU
		packet.stepnum = tonumber(packet.ST)
		packet.label = packet.LA
		packet.lines = {}
		packet.linecount = tonumber(packet.SL)

	elseif packet.type==PACKETTYPE_STEPSTICKY then
		self:SplitXXIntoPacket(packet,data)
		packet.stepnum = tonumber(packet.ST)
		packet.label = packet.LA
		packet.lines = {}
		packet.linecount = tonumber(packet.SL)

	elseif packet.type==PACKETTYPE_STEPLINE then
		-- compact packet, no split
		local stepnum,linenum,linestring = data:match("(.-):(.-):(.*)")
		packet.stepnum=tonumber(stepnum)
		packet.linenum=tonumber(linenum)
		packet.linestring=linestring

	elseif packet.type==PACKETTYPE_SLAVEREQUEST then
		self:SplitXXIntoPacket(packet,data)
		packet.guide = packet.GU

	end
	--print("Packet unpacked:")
	--DevTools_Dump(packet)
end

Sync.StepDataBuffer={}

function Sync:HandleReceivedPacket(packet)
	if packet.type~="nonexistent_future_packet"	and not self:IsEnabled() then return end -- ignore everything else when not in Sync mood
	if packet.type==PACKETTYPE_GUIDESTATUS then
		self:Debug("Player %s (%s %s level %d) is on guide %s step %d which is %s. They are %s.",
			packet.sender,
			packet.race,packet.class,packet.level,
			packet.guide,packet.stepnum,packet.is_possible and (packet.is_complete and "complete" or "incomplete") or "impossible",
			({[0]="not sharing",[1]="|cffff8888the master|r",[2]="|cffffcc00a slave|r"})[packet.sharemode])
		self.PartyStatus[packet.sender]=packet
		self:OnPartyStatusChanged()

	elseif packet.type==PACKETTYPE_STEPDATA then
		if not self:IsSlave() then self:Debug("I'm not a slave; step data ignored.") return end

		self:Debug("Player %s sends step %d data (%d goals needed)", packet.sender,packet.stepnum,packet.linecount)
		packet.lines={}
		local SDB=self.StepDataBuffer
		table.wipe(SDB)
		SDB.steps = {}
		SDB.sticky_renum = {}
		SDB.steps[packet.stepnum] = packet
		SDB.mainstepnum = packet.stepnum
		SDB.laststepnum = packet.stepnum
	
	elseif packet.type==PACKETTYPE_STEPSTICKY then
		if not self:IsSlave() then self:Debug("I'm not a slave; sticky data ignored.") return end

		local SDB=self.StepDataBuffer
		packet.lines={}
		packet.sticky=true
		-- override step number! make all stickes follow the current step.
		packet.stepnum_shared=SDB.laststepnum+1
		SDB.steps[packet.stepnum_shared] = packet
		SDB.sticky_renum[packet.stepnum] = packet.stepnum_shared
		SDB.laststepnum = packet.stepnum_shared
		self:Debug("Player %s sends sticky step %d data (%d goals needed), saving as step %d", packet.sender,packet.stepnum,packet.linecount,packet.stepnum_shared)
	
	elseif packet.type==PACKETTYPE_STEPLINE then
		if not self:IsSlave() then self:Debug("I'm not a slave; step line ignored.") return end

		local SDB=self.StepDataBuffer
		packet.stepnum_shared = SDB.sticky_renum[packet.stepnum]
		if not SDB.steps then ZGV:Error("Sharing error: Incomplete shared guide step, data incoming without step header") return end
		local stepbuffer = SDB.steps[packet.stepnum_shared or packet.stepnum]
		if not stepbuffer then ZGV:Error(("Sharing error: data for step %d unexpected!"):format(self.stepnum)) return end
		if stepbuffer.lines[packet.linenum] then ZGV:Error(("Sharing error: step %d line %d sent twice."):format(packet.stepnum,packet.linenum)) return end
		stepbuffer.lines[packet.linenum]=packet.linestring
		self:Debug("Player %s sends step %d line %d, saved as %d", packet.sender,packet.stepnum,packet.linenum,packet.stepnum_shared or packet.stepnum)

	elseif packet.type==PACKETTYPE_STEPEND then
		-- reassemble guide
		local SDB=self.StepDataBuffer

		if not self:IsSlave() then
			table.wipe(SDB)
			self:Debug("I'm not a slave, I don't care about step data.")
			return
		end

		if not SDB.steps then ZGV:Error("Sharing error: no step data sent before step_end") return end

		-- verify if all lines are present
		local allOK=true
		for i,step in pairs(SDB.steps) do
			for li=1,step.linecount do
				if not step.lines[li] then allOK=false break end
			end
			if not allOK then break end
		end
		if not allOK then ZGV:Print("Incomplete data received!") end

		self:Debug("COMPLETE STEP DATA RECEIVED!")

		self.LAST_STEP_BUFFER = SDB

		--[[
		local stepnums_in_order = {}
		for i,step in pairs(SDB.steps) do table.insert(stepnums_in_order,i) end
		table.sort(stepnums_in_order)
		local mainstep = SDB.steps[stepnums_in_order[1]]
		--]]
		local mainstep = SDB.steps[SDB.mainstepnum]

		local guidesource=""

		for i=1,mainstep.stepnum-1 do guidesource = guidesource .. "step\n'\n" end  -- this is so lame

		-- stickystart lines
		for _,step in pairs(SDB.steps) do
			if step.sticky then guidesource = guidesource .. "stickystart "..step.label.."\n" end
		end

		-- steps proper
		for stepnum=SDB.mainstepnum,999 do
			local step = SDB.steps[stepnum]   if not step then break end
			guidesource = guidesource .. table.concat(step.lines,"\n") .. "\nshared_origin "..step.stepnum.."\n"
		end

		self.SharedGuideSource = guidesource
		--if Spoo then Spoo(self.StepDataBuffer) end

		self.SharedGuide = ZGV.GuideProto:New("SHARED\\"..mainstep.guide,{shared=true,singlestep=mainstep.stepnum},guidesource)
		self.SharedGuide:Parse(true)

		for si,step in ipairs(self.SharedGuide.steps) do step.is_shared=true end

		local tab, existed = ZGV.Tabs:GetSpecialTabFromPool("shared")
		--if not existed then tab:SetAsCurrent() end --force switch to shared tab if it was created
		tab:SetAsCurrent()
		if tab.isActive then 
			ZGV:SetGuide(self.SharedGuide,nil,nil,(ZGV.CurrentGuide and ZGV.CurrentGuide.type=="SHARED")) 
			ZGV.Tabs:ReanchorTabs("force") 
		end -- send shared guide content if shared tab is active
		ZGV:UpdateFrame()

		self:Debug("Step data consumed.")

	elseif packet.type==PACKETTYPE_STATUSREQUEST then
		self:Debug("Status requested, announcing.")
		self:AnnounceStatus()

	elseif packet.type==PACKETTYPE_STEPREQUEST then
		if self:IsMaster() then
			self:Debug("Step requested, I'm the master, announcing.")
			self:BroadcastStepContents()
		else
			self:Debug("Step requested, but I'm not the master.")
		end

	elseif packet.type==PACKETTYPE_SHAREMODE then  -- unused
		self.PartyStatus[packet.sender] = self.PartyStatus[packet.sender] or {}
		self.PartyStatus.sharemode = packet.sharemode

	elseif packet.type==PACKETTYPE_SLAVEREQUEST then
		if not ZGV.db.profile.sync_enabled then return end
		if ZGV.db.profile.share_masterslave==2 then return end  -- already a slave
		self:ShowSlaveConfirmation(packet.sender,packet.guide)
	end

	if self.packet_callbacks[packet.type] then
		self.packet_callbacks[packet.type](packet)
	end
end

local dummytable={}
function Sync:OnPartyStatusChanged()
	local s="Party status:\n"
	self.master_present_status=nil
	for name,status in pairs(self.PartyStatus) do
		local goals=""
		for gi,gs in ipairs(status.goals or dummytable) do
			if #goals>0 then goals=goals.."," end
			goals=goals..(gs.complete and "c" or (gs.done and ("%d/%d"):format(gs.done,gs.needed)) or (gs.completable and "undone") or "-")
		end
		s=s..("- %s: step %d, %s, goals:%s\n"):format(name,status.stepnum,status.is_possible and (status.is_complete and "COMPLETE" or "incomplete") or "impossible",goals)
		if status.sharemode==1 then self.master_present_status=status end
	end
	self:Debug(s)
	ZGV:UpdateFrame()
	self:UpdateButtonColor()
	if ZGV.Frame.Controls.GuideShareButton:IsMouseOver() then ZGV.Frame.GuideShareButton_OnEnter() end  -- goes to Sync:OnShareButtonEnter() anyway

	-- abort slave request, if master is gone
	if self.SlaveConfirmPopup and self.SlaveConfirmPopup:IsVisible() and not self.master_present_status then self.SlaveConfirmPopup:Hide() end

	if self:IsPartyStatusComplete() then self:DeclarePartyStatusComplete() end

	ZGV:TryToCompleteStep()
end

function Sync:DeclarePartyStatusComplete(timeout)
	if self:IsSlave() and not self.master_present_status then
		self:Debug("Party status complete%s, master missing, deactivating slave mode.",timeout and " (TIMEOUT)" or "")
		self:Deactivate()
	end
	ZGV:CancelTimer(self.complete_party_status_timeout)
end

function Sync:IsPartyStatusComplete()
	for i=1,GetNumGroupMembers()-1 do
		local status=self.PartyStatus[UnitName("party"..i)]
		if not status or (self.party_status_request_time and status.recv_time<self.party_status_request_time) then return false end end
	return true
end

function Sync:IsClearToProceed(stepnum)
	if not stepnum then stepnum=ZGV.CurrentStepNum end
	if not self:IsEnabled() or not self:IsSnapping() then return true end
	if not self.PartyStatus or not next(self.PartyStatus) then return true end
	if not ZGV.CurrentGuide then return true end
	for name,status in pairs(self.PartyStatus) do
		if status.guide and (status.guide:gsub("^SHARED\\","")==ZGV.CurrentGuide.title:gsub("^SHARED\\",""))
		and ((status.stepnum < stepnum) or (status.stepnum==stepnum and status.is_possible and not status.is_complete)) then
			return false
		end
	end
	return true
end

local statuscolors = { [0]="ffff0000", [1]="ff00ff00", [2]="ff888888" }
local statuscolors2 = { [0]="ffff8888", [1]="ff00ff00", [2]="ff888888" }
local statustext = { [0]="incomplete", [1]="complete", [2]="impossible" }
local statustext2 = { [0]="[ ]", [1]="[X]", [2]="[?]" }
--[[
	unicode chars available in font:
	℅ℓ№™Ω℮⅛⅜⅝⅞∂∆∏∑−√∞∫≈≠≤≥
]]
function Sync:GetStepGoalPartyStatusText(stepnum,goalnum)
	if not self:IsEnabled() or not self.PartyStatus then
		return
	end
	local s=""
	local on_step=0
	local any_incomplete=false
	local partysort={}
	if IsInGroup(LE_PARTY_CATEGORY_HOME) --[[really]] then
		for i=1,GetNumGroupMembers()-1 do table.insert(partysort,(UnitName("party"..i))) end
	else --[[fake]]
		for k,v in ZGV.OrderedPairs(self.PartyStatus) do table.insert(partysort,k) end
	end
	for i,name in ipairs(partysort) do repeat
		local status = self.PartyStatus[name]
		if not status then break end --continue
		if not (status.guide and (status.guide:gsub("^SHARED\\","")==ZGV.CurrentGuide.title:gsub("^SHARED\\",""))) then break end

		local step
		if status.stepnum==stepnum then
			step=status
		elseif status.stickies then
			for i,st in ipairs(status.stickies) do
				if st.stepnum==stepnum then
					step=st
					break
				end
			end
		end
		if not step then break end -- continue

		if on_step>0 then s=s..", " end
		on_step=on_step+1
		local color,display
		local goal=status.goals[goalnum]
		if ZGV.db.profile.share_partydisplaystyle==1 then
			if not goal then color=2
			elseif goal.complete then color=1
			elseif goal.needed then
				if goal.done==0 and goal.needed==1 then color=0 -- incomplete 0/1
				elseif goal.done==0 and goal.needed==0 then color=2 -- incomplete 0/0 (impossible?)
				else color=0  -- incomplete 1/3
				end
			else color=2
			end
			s=s..("|c%s%s|r"):format(statuscolors2[color] or "ffff00ff",name)
		elseif ZGV.db.profile.share_partydisplaystyle==2 then
			if not goal then color=2
			elseif goal.complete then color=1
			elseif goal.needed then
				if goal.done==0 and goal.needed==1 then color=0 -- incomplete 0/1
				elseif goal.done==0 and goal.needed==0 then color=2 -- incomplete 0/0 (impossible?)
				else color=0  -- incomplete 1/3
				end
			else color=2
			end
			s=s..("%s (%s)"):format(name,statustext[color] or "unknown")
		elseif ZGV.db.profile.share_partydisplaystyle==3 then
			if not goal then color="888888" display="[-]"
			elseif goal.complete then color="88ff88" display="[√]"
			elseif goal.done then
				if goal.done==0 and goal.needed==1 then color="ff8888" display="[ ]" -- figure space: U+2007
				elseif goal.done==0 and goal.needed==0 then color="ff8888" display="[ ]" -- figure space: U+2007
				else color="ff8888" display=("[%d/%d]"):format(goal.done,goal.needed)
				end
			else
				color="888888" display="[?]"
			end
			s=s..("%s |cff%s%s|r"):format(name,color,display)
		elseif ZGV.db.profile.share_partydisplaystyle==4 then
			if not goal then color="888888" display=" [?]"
			elseif goal.complete then color="88ff88" display=""
			elseif goal.needed then
				if goal.done==0 and goal.needed==1 then color="ff8888" display="" -- incomplete 0/1
				elseif goal.done==0 and goal.needed==0 then color="ff8888" display="" -- incomplete 0/0 (impossible?)
				else color="ff8888" display=(" [%d/%d]"):format(goal.done,goal.needed) -- incomplete 1/3
				end
			else
				color="888888" display=" [-]"
			end
			s=s..("|cff%s%s%s|r"):format(color,name,display)
		end
		if status.goals[goalnum]~=1 then any_incomplete=true end
	until true end

	if on_step>0 then
		if ZGV.db.profile.share_partydisplaystyle==1 then return "Party: "..s,nil
		elseif ZGV.db.profile.share_partydisplaystyle>=2 then return s,statuscolors[any_incomplete and 0 or 1]
		end
	end
end

local ahead,behind = {},{}
function Sync:GetAheadBehind()
	if not ZGV.CurrentStepNum then return nil,"no step" end
	if self.PartyStatus and next(self.PartyStatus) then
		table.wipe(ahead)
		table.wipe(behind)
		for name,status in pairs(self.PartyStatus) do
			if status.guide and (status.guide==ZGV.CurrentGuide.title or status.guide:find("SHARED\\",1,true)) then
				if not status.stepnum or status.stepnum==0 then
					-- ignore
				elseif status.stepnum<ZGV.CurrentStepNum then
					--table.insert(behind,"|cffff0000"..name.."|r (-"..(ZGV.CurrentStepNum-status.stepnum)..")")
					if ZGV.db.profile.share_partydisplaystyle<=3 then
						table.insert(behind,name.." |cffff8888(-"..(ZGV.CurrentStepNum-status.stepnum)..")|r")
					elseif ZGV.db.profile.share_partydisplaystyle==4 then
						table.insert(behind,L["sync_behind"]:format(name,ZGV.CurrentStepNum-status.stepnum))
					end
				elseif status.stepnum>ZGV.CurrentStepNum then
					--table.insert(ahead, "|cff00ff00"..name.."|r (+"..(status.stepnum-ZGV.CurrentStepNum)..")")
					if ZGV.db.profile.share_partydisplaystyle<=3 then
						table.insert(ahead, name.." |cff88ff88(+"..(status.stepnum-ZGV.CurrentStepNum)..")|r")
					elseif ZGV.db.profile.share_partydisplaystyle==4 then
						table.insert(ahead,L["sync_ahead"]:format(name,status.stepnum-ZGV.CurrentStepNum))
					end
				end
			end
		end
		if #ahead>0 or #behind>0 then
			local s=""
			if ZGV.db.profile.share_partydisplaystyle<=3 then
				if #ahead>0 then s="Ahead: "..table.concat(ahead,", ") end
				if #behind>0 then s=s..(#s>0 and "; " or "").."Behind: "..table.concat(behind,", ") end
			elseif ZGV.db.profile.share_partydisplaystyle==4 then
				if #ahead>0 then s=table.concat(ahead,", ") end
				if #behind>0 then s=s..(#s>0 and "; " or "")..table.concat(behind,", ") end
			end
			return s
		end
	end
end

function Sync:IsInGroup()
	return IsInGroup(LE_PARTY_CATEGORY_HOME) or self.fake_party
end

function Sync:AnnounceStatus()
	if self:IsInGroup() then
		self:Send(self:CreatePacket_GuideStatus())
		self:Debug("Announcing status.")
	end
	if self.fake_party then ZGV:ScheduleTimer(function() self:FakePartyGenerator() end,1.0) end
end

function Sync:BroadcastStepContents()
	self:Send(self:CreatePackets_StepData())
	self:Debug("Announcing step data.")
end

function Sync.OnEvent(addon,event,...)
	if event=="GROUP_ROSTER_UPDATE" or event=="PARTY_MEMBER_DISABLE" or event=="PARTY_MEMBER_ENABLE" then
		Sync:ResetPartyStatus()
		Sync:OnPartyStatusChanged()
		if Sync:IsInGroup() then
			Sync:AnnounceStatus()
			if Sync:IsMaster() then
				Sync:BroadcastStepContents()
				--self:RequestSlaveMode() -- For new members. Existing slaves should ignore this.
			end
		else
			Sync:Deactivate()
		end
		Sync:UpdateButtonColor()
	end
end

function Sync:Init()
	AceComm:RegisterComm(PREFIX,Sync.OnChatReceived)

	ZGV:AddEventHandler("GROUP_ROSTER_UPDATE",Sync.OnEvent)
	ZGV:AddEventHandler("PARTY_MEMBER_DISABLE",Sync.OnEvent)
	ZGV:AddEventHandler("PARTY_MEMBER_ENABLE",Sync.OnEvent)

	ZGV:AddMessageHandler("ZGV_GOAL_COMPLETED",function(_,_,step,goal)
		if self:IsEnabled() then
			self:Debug("GOAL_COMPLETED: %d %d",step,goal)
			self:AnnounceStatus()
		end
	end)
	ZGV:AddMessageHandler("ZGV_GOAL_UNCOMPLETED",function(_,_,step,goal)
		if self:IsEnabled() then
			self:Debug("GOAL_UNCOMPLETED: %d %d",step,goal)
			self:AnnounceStatus()
		end
	end)
	ZGV:AddMessageHandler("ZGV_STEP_CHANGED",function(_,_,step)
		if self:IsEnabled() then
			if ZGV.db.profile.share_fakeparty>0 then
				ZGV:ScheduleTimer(function() self:FakePartyGenerator() end,1.0)
			end
			if self:IsMaster() and self:IsInGroup() then
				self:BroadcastStepContents()
			end
			self:AnnounceStatus()
		end
	end)
	ZGV:AddMessageHandler("ZGV_GOAL_PROGRESS",function(_,_,step,goal)
		if self:IsEnabled() then
			self:Debug("GOAL_PROGRESS: %d %d",step,goal)
			self:AnnounceStatus()
		end
	end)
	ZGV:ScheduleRepeatingTimer(function()
		if self:IsEnabled() then self:AnnounceStatus() self:RequestPartyStatus() end
	end,20)

	do
		local popup = ZGV.PopupHandler:NewPopup("ZygorShareInitiate","default")
		popup = ZGV.PopupHandler:NewPopup("ZygorShareInitiate","default")

		popup.text3checkbox:SetText(L["share_nowarnagain"])
		popup.text3checkbox:Toggle(false)
		popup.text3checkbox:SetPoint("BOTTOMLEFT",20,40)
		popup.text3checkbox:Show()

		popup.acceptbutton:SetText(ACCEPT)
		popup.declinebutton:SetText(CANCEL)
		popup.noMinimize=true
	

		-- text,title,tooltipText,priority,poptime,removetime,quiet = returnMinimizeSettings()

		popup.OnAccept = function(dialog)
			if dialog.text3checkbox:IsChecked() then
				ZGV.db.profile.sync_dontconfirm = true
			end
			self:ActivateAsMaster()
		end

		popup.AdjustSize = function(dialog)
			dialog:SetHeight(180)
		end

		self.InitiateConfirmPopup = popup

		popup.LayoutFull = function(self)

		end

		popup.LayoutFloaty = function(self)

		end
	end

	do
		local popup = ZGV.PopupHandler:NewPopup("ZygorShareReinvite","default")

		popup.acceptbutton:SetText(L['share_button_reinvite'])
		popup.declinebutton:SetText(L['share_button_stop'])
		popup.morebutton:SetText(CANCEL)
		popup.morebutton:SetHeight(20)
		popup.morebutton:Show()
		popup.noMinimize=true

		-- text,title,tooltipText,priority,poptime,removetime,quiet = returnMinimizeSettings()

		popup.OnAccept = function(dialog)
			Sync:RequestSlaveMode()
		end

		popup.OnDecline = function(dialog)
			Sync:Deactivate()
		end

		popup.OnMore = function(dialog)
		end

		popup.AdjustSize = function(dialog)
			dialog:SetHeight(200)
		end

		self.ReinviteOrStopPopup = popup

		popup.LayoutFull = function(self)

		end

		popup.LayoutFloaty = function(self)

		end
	end

	self:UpdateButtonColor()
	self:UpdateMode()
end

function Sync:UpdateMode()
	self:Debug("Mode updated: %d",ZGV.db.profile.share_masterslave)
	self:AnnounceStatus()
	self:ResetPartyStatus()
	self:OnPartyStatusChanged()
	self:RequestPartyStatus()
	if self:IsSlave() then self:RequestStepContents()
	elseif self:IsMaster() then self:BroadcastStepContents() end
	ZGV.Sync:UpdateButtonColor()
	ZGV:UpdateFrame()
end

function Sync:UpdateButtonColor()
	if not ZGV.Frame.Controls.GuideShareButton then return end
	local r,g,b,a
	if self:IsInGroup() then
		if self:IsSlave() then
			r,g,b,a = 0,1,0,1  --green
		elseif self:IsMaster() then
			r,g,b,a = 0,1,0,1  --green
		elseif self.master_present_status then
			r,g,b,a = 1,1,1,1  --white
		else
			r,g,b,a = 1,1,1,1  --white
		end
	--[[
	elseif not self:IsInGroup() then
		r,g,b,a = 0.3,0.3,0.3,1
	elseif self:IsEnabled() then
		r,g,b,a = 1,1,1,1
	else
		r,g,b,a = 0.6,0.6,0.6,1
	end
	--]]
	else
		r,g,b,a = 0.6,0.6,0.6,1
	end
	ZGV.Frame.Controls.GuideShareButton:GetNormalTexture():SetVertexColor(r,g,b,a)
	ZGV.Frame.Controls.GuideShareButton:GetHighlightTexture():SetVertexColor(r,g,b,ZGV.Frame.Controls.GuideShareButton:GetHighlightTexture():GetAlpha())
	ZGV.Frame.Controls.GuideShareButton:GetPushedTexture():SetVertexColor(r,g,b,a)
	ZGV.Frame.Controls.PrevButton:SetEnabled(not self:IsSlave())
	ZGV.Frame.Controls.NextButton:SetEnabled(not self:IsSlave())
end


function Sync:ActivateAsMaster()
	ZGV:SetOption("StepDisplay","sync_enabled on")
	ZGV:SetOption("StepDisplay","share_masterslave 1")  -- causes Sync:UpdateMode()
	self:RequestSlaveMode()
end

function Sync:ActivateAsSlave()
	--ZGV:SetOption("StepDisplay","share_masterslave 2")
	ZGV:SetOption("StepDisplay","sync_enabled on")
	ZGV:SetOption("StepDisplay","share_masterslave 2")  -- causes Sync:UpdateMode()
end

function Sync:Deactivate()
	local skip_afterwards
	if self:IsMaster() and not ZGV.CurrentStep:AreRequirementsMet(nil,"strict") then -- stuck on a wrong step!
		skip_afterwards=true
	end
	ZGV:SetOption("StepDisplay","share_masterslave 0")  -- causes Sync:UpdateMode()
	if ZGV.CurrentGuide and ZGV.CurrentGuide.type=="SHARED" then
		local tab, existed = ZGV.Tabs:GetSpecialTabFromPool("shared")
		if tab then tab:RemoveTab() end
	end
	if skip_afterwards then  ZGV:SkipStep()  end
end

local function comma_and(tab)
	if #tab==0 then return L['share_party_none'] end
	if #tab==1 then return tab[1] end
	local final = tremove(tab)
	return (#tab>0 and table.concat(tab,L['share_party_comma']) or tab[1])..L['share_party_and']..final
end

function Sync:ShowMasterConfirmation()
	if ZGV.PopupHandler:IsInNC("ZygorShareInitiate") then return end

	if ZGV.db.profile.sync_dontconfirm then return self:ActivateAsMaster() end
	
	local zygor_users = ZGV.TableKeys(self.PartyStatus)
	local notslaves = self:GetParty_NotSlaveNames()

	self.InitiateConfirmPopup:SetText(L["share_invite_master"]:format(ZGV:FormatNiceGuideTitle(ZGV.CurrentGuide.title),#zygor_users<GetNumGroupMembers()-1 and (#zygor_users>1 and L['share_invite_master_party_manyzygors'] or L['share_invite_master_party_onezygor']):format(comma_and(zygor_users)) or ""))
	self.InitiateConfirmPopup:Show()
end

function Sync:ShowSlaveConfirmation(sender,guide,slave_initiated)
	if not self.SlaveConfirmPopup then
		self.SlaveConfirmPopup = ZGV.PopupHandler:NewPopup("ZygorSyncSlave","default")

		self.SlaveConfirmPopup.acceptbutton:SetText(ACCEPT)
		self.SlaveConfirmPopup.declinebutton:SetText(DECLINE)
		self.SlaveConfirmPopup.noMinimize=true

		-- text,title,tooltipText,priority,poptime,removetime,quiet = returnMinimizeSettings()

		self.SlaveConfirmPopup.OnAccept = function(popup)
			-- any masters?
			-- Nah. The popup will be gone if the master disappears.
			--[[
			local master_found=false
			for name,status in pairs(self.PartyStatus) do  if status.sharemode==1 then master_found=true break end  end
			if not master_found then return simple_popup(("The guide is no longer shared."):format(name)) end
			--]]
			self:ActivateAsSlave()
		end
	end

	if slave_initiated then
		self.SlaveConfirmPopup:SetText(L["share_invite_slaveinitiated"]:format(sender,ZGV:FormatNiceGuideTitle(guide)))
	else
		self.SlaveConfirmPopup:SetText(L["share_invite_received"]:format(sender,ZGV:FormatNiceGuideTitle(guide)))
	end
	--self.SlaveConfirmPopup.master = sender

	self.SlaveConfirmPopup.LayoutFull = function(self)

	end

	self.SlaveConfirmPopup.LayoutFloaty = function(self)

	end
	
	self.SlaveConfirmPopup:Show()
end

function Sync:RequestStepContents()
	self:Send(self:CreatePacket_StepRequest())
end

function Sync:RequestPartyStatus()
	self:Send(self:CreatePacket_StatusRequest())
	self.party_status_request_time = GetTime()
	self.complete_party_status_timeout = ZGV:ScheduleTimer(function()
		-- clear out old statuses that didn't get updated recently
		for n,st in pairs(self.PartyStatus) do if st.recv_time<self.party_status_request_time then self.PartyStatus.n=nil end end
		self:OnPartyStatusChanged()
		self:DeclarePartyStatusComplete("timedout")
	end,PARTY_STATUS_TIMEOUT)
end

function Sync:RequestSlaveMode()
	self:Send(self:CreatePacket_SlaveRequest())
end

-- clear non-party members from PartyStatus
function Sync:ResetPartyStatus()
	if not IsInGroup(LE_PARTY_CATEGORY_HOME) then  self.PartyStatus = {}  return  end
	self.PartyStatus = self.PartyStatus or {}
	local newps={}
	if IsInGroup(LE_PARTY_CATEGORY_HOME) then
		local n = GetNumGroupMembers()
		for i=1,n-1 do
			local unit = "party"..i
			local name=UnitName(unit)
			if UnitExists(unit) and UnitIsConnected(unit) then
				newps[name]=self.PartyStatus[name]
			end
		end
	end
	if self.master_present_status and not newps[self.master_present_status.sender] then self.master_present_status=nil end
	self.PartyStatus=newps
end

function Sync:GetStepSource(stepnum)
	local t1=debugprofilestop()
	local sn=0
	local li=0
	local rawstep={}
	local in_step
	local linematch
	for line in ZGV.CurrentGuide.rawdata_full:gmatch("(.-)\n") do
		li=li+1
		linematch=nil
		if line:find("^%s*step") then
			sn=sn+1
			in_step = sn==stepnum
			if #rawstep>0 and not in_step --[[anymore]] then  break  end
			linematch="step"
		elseif line:find("^%s*stickyst[artop]*")
		    or line:find("#include",1,true)
		    or line:find("leechstep",1,true) then
			in_step=false
		end
		if in_step then
			table.insert(rawstep,line)
			if linematch=="step" and ZGV.CurrentGuide.steps[stepnum].map then 
				local floorpack = ZGV.LibRover.data.MapNamesByID[ZGV.CurrentGuide.steps[stepnum].map]
				local mapname = floorpack[1].."/"..floorpack[2]
				table.insert(rawstep,"map "..mapname) 
			end
		end
	end
	local t2=debugprofilestop()
	self:Debug("Extracting current step source took %.2fms",t2-t1)
	return rawstep
end

function Sync:IsSlave()
	return self:IsEnabled() and ZGV.db.profile.share_masterslave==2
end

function Sync:IsMaster()
	return self:IsEnabled() and ZGV.db.profile.share_masterslave==1
end

function Sync:IsEnabled()
	return ZGV.db.profile.sync_enabled and self:IsInGroup()
end

function Sync:IsSnapping()
	return self:IsEnabled() and ZGV.db.profile.sync_snap
end


function Sync:Send(message,...)
	if not message then return end
	if not self:IsEnabled() then return end

	AceComm:SendCommMessage(PREFIX,message,"PARTY")
	self:Debug("|cffffaa00SND|r: %s",message)
	if ... then return self:Send(...) end
end

function Sync:SendSelf(message,...)
	if not message then return end

	AceComm:SendCommMessage(PREFIX,message,"WHISPER",UnitName("player"))
	self:Debug("|cffffaa00SND (self)|r: %s",message)
	if ... then return self:SendSelf(...) end
end

-- unused, but nice :(
function Sync:RequestAllStatuses(callback,timeout)
	if not self:IsInGroup() then ZGV:ScheduleTimer(function() callback("no party") end,0) return end
	timeout=timeout or 1
	
	self:RequestPartyStatus()

	self.awaiting_statuses_requested = true
	local all_statuses_requested = {[UnitName("player")]=true}
	local all_statuses_request_timeout
	local finalize
	self.packet_callbacks[PACKETTYPE_GUIDESTATUS] = function(packet)
		all_statuses_requested[packet.sender] = packet
		local all_received=true
		for i=1,GetNumGroupMembers()-1 do if not all_statuses_requested[UnitName("party"..i)] then all_received=false end  end
		if all_received then  callback(all_statuses_requested)  finalize()  end
	end
	all_statuses_request_timeout = ZGV:ScheduleTimer(function()
		-- master statuses time out
		callback("timeout")
		finalize()
	end,timeout)
	finalize = function()
		self.packet_callbacks[PACKETTYPE_GUIDESTATUS]=nil
		ZGV:CancelTimer(all_statuses_request_timeout)
	end
end

function Sync:GetParty_NotSlaveNames()
	local t={}
	for n,s in pairs(self.PartyStatus) do if s.sharemode==0 then tinsert(t,n) end end
	return t
end

function Sync:GetParty_SlaveNames()
	local t={}
	for n,s in pairs(self.PartyStatus) do if s.sharemode==2 then tinsert(t,n) end end
	return t
end

function Sync:OnShareButtonEnter(button)
	local txt2
	local notslaves = self:GetParty_NotSlaveNames()
	if not self:IsInGroup() then txt2=L['share_tooltip_noparty'] --txt2=L['opt_share_enabled_desc']
	elseif #ZGV.TableKeys(self.PartyStatus)==0 then txt2=L['share_tooltip_nozygor'] --txt2=L['opt_share_enabled_desc']
	elseif self:IsSlave() then txt2=L['share_tooltip_stopslave']:format(self.master_present_status and self.master_present_status.sender or "?")
	elseif self:IsMaster() and #notslaves>0 then txt2=L['share_tooltip_stopmaster_or_reinvite'].."\n"..L['share_tooltip_currentslaves']:format(comma_and(self:GetParty_SlaveNames()))
	elseif self:IsMaster() and #notslaves==0 then txt2=L['share_tooltip_stopmaster'].."\n"..L['share_tooltip_currentslaves']:format(comma_and(self:GetParty_SlaveNames()))
	elseif self.master_present_status then txt2=L['share_tooltip_startslave']:format(self.master_present_status.sender)
	else txt2=L['share_tooltip_startmaster'] --txt2=L['opt_share_enabled_desc']
	end
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['share_tooltip_title'])
	if txt2 then GameTooltip:AddLine(txt2,0,1,0) end
	GameTooltip:Show()
end

function Sync:OnShareButtonClick()
	if not self:IsInGroup() then  ZGV:Error("You are not in a group.")  return false end

	local zygor_users = ZGV.TableKeys(self.PartyStatus)
	local notslaves = self:GetParty_NotSlaveNames()

	if self:IsSlave() then
	
		return self:Deactivate()
	
	elseif self:IsMaster() then

		if #notslaves==0 then
			-- stop
			self:Deactivate()

		else
			-- reinvite? stop?
			local slaves = self:GetParty_SlaveNames()
			if #slaves>0 then self.ReinviteOrStopPopup:SetText(L['share_invite_master_stop_or_reinvite_with']:format(comma_and(self:GetParty_NotSlaveNames()),comma_and(slaves)))
						 else self.ReinviteOrStopPopup:SetText(L['share_invite_master_stop_or_reinvite']:format(comma_and(self:GetParty_NotSlaveNames())))
						 end
		
			self.ReinviteOrStopPopup:Show()

		end

	-- any other masters?
	elseif self.master_present_status then
		
		self:ShowSlaveConfirmation(self.master_present_status.sender,self.master_present_status.guide,"slave initiated")
		--if status.sharemode==1 then  return simple_popup(("%s is already sharing a guide.|nOnly one person in a party can share at a time."):format(name))  end
	
	else
		if #ZGV.TableKeys(self.PartyStatus)==0 then  ZGV:Error("No-one in your party is running Zygor Guides.")  return false end
		if not ZGV.CurrentGuide then  ZGV:Error("You don't have a guide loaded.")  return false  end

		self:ShowMasterConfirmation()
	end
end

function Sync:Debug(msg,...)
	ZGV:Debug("&sync "..msg,...)
end

tinsert(ZGV.startups,{"Sync startup",function(self)  
	Sync:Init()
end,after={"Parser ConditionEnv:_Setup"}})
