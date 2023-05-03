local name,ZGV=...

local WW={}
ZGV.WhoWhere=WW

local HBD = ZGV.HBD

local hide_timer_main = 0
local hide_timer_proff = 0

local ui = ZGV.UI
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L

local SkinData = ZGV.UI.SkinData

local LibRover = LibStub("LibRover-1.0")

WW.Types = {}

function WW:SetupMenuArray()
	local Tradeskills = {
		{text="Alchemy",	iconkey="ALCHEMY"},
		{text="Archaeology",	iconkey="ARCHAEOLOGY"},
		{text="Bandages",	iconkey="FIRSTAID"},
		{text="Blacksmithing",	iconkey="BLACKSMITHING"},
		{text="Cooking",	iconkey="COOKING"},
		{text="Enchanting",	iconkey="ENCHANTING"},
		{text="Engineering",	iconkey="ENGINEERING"},
		{text="First Aid",	iconkey="FIRSTAID"},
		{text="Fishing",	iconkey="FISHING"},
		{text="Herbalism",	iconkey="HERBALISM"},
		{text="Inscription",	iconkey="INSCRIPTION"},
		{text="Jewelcrafting",	iconkey="JEWELCRAFTING"},
		{text="Leatherworking",	iconkey="LEATHERWORKING"},
		{text="Mining",		iconkey="MINING"},
		{text="Skinning",	iconkey="SKINNING"},
		{text="Tailoring",	iconkey="TAILORING"},
	}

	if ZGV.IsRetail then
		table.remove(Tradeskills,8) -- first aid
	elseif ZGV.IsClassicTBC then
		table.remove(Tradeskills,11) -- inscription
		table.remove(Tradeskills,3) -- bandages
	elseif ZGV.IsClassicWOTLK then
		table.remove(Tradeskills,3) -- bandages
	elseif ZGV.IsClassic then
		table.remove(Tradeskills,12) -- jewelcrafting
		table.remove(Tradeskills,11) -- inscription
		table.remove(Tradeskills,3) -- bandages
	end

	for i,v in ipairs(Tradeskills) do
		v.func = v.func or function() ZGV.WhoWhere:FindNPC("Trainer"..(v.type or v.text)) CloseDropDownForks() end 
		v.notCheckable = 1
		v.icon = ZGV.IconSets.WorldQuest.file
		local texcoord=ZGV.IconSets.WorldQuest[v.iconkey].texcoord
		v.tCoordLeft = texcoord[1]
		v.tCoordRight = texcoord[2]
		v.tCoordTop = texcoord[3]
		v.tCoordBottom = texcoord[4]
	end

	local Classes = {
		{text="Druid"},
		{text="Hunter"},
		{text="Hunter pets",overicon="Hunter"},
		{text="Mage"},
		{text="Paladin"},
		{text="Priest"},
		{text="Rogue"},
		{text="Shaman"},
		{text="Warlock"},
		{text="Warrior"}
	}

	for i,v in ipairs(Classes) do
		v.func = v.func or function() ZGV.WhoWhere:FindNPC("Class"..(v.type or v.text)) CloseDropDownForks() end 
		v.notCheckable = 1
		v.icon = "Interface\\TargetingFrame\\UI-Classes-Circles"
		local texcoord=CLASS_ICON_TCOORDS[(v.overicon or v.text):upper()]
		v.tCoordLeft = texcoord[1]
		v.tCoordRight = texcoord[2]
		v.tCoordTop = texcoord[3]
		v.tCoordBottom = texcoord[4]
	end


	WW.Types = {
		{text="Auctioneer",icon="Interface\\Minimap\\Tracking\\Auctioneer"},
		{text="Banker",icon="Interface\\Minimap\\Tracking\\Banker"},
		{text="Barber",icon=ZGV.IconSets.WorldQuest.file,iconkey="BARBER"},
		{text="Class Trainers",icon="Interface\\Minimap\\Tracking\\Profession", nofunc = true, hasArrow = true, menuList = Classes},
		{text="Innkeeper",icon="Interface\\Minimap\\Tracking\\Innkeeper"},
		{text="Mailbox",icon="Interface\\Minimap\\Tracking\\Mailbox",func = function() ZGV.WhoWhere:FindMailbox() CloseDropDownForks() end},
		{text="Profession Trainers",icon="Interface\\Minimap\\Tracking\\Profession", nofunc = true, hasArrow = true, menuList = Tradeskills},
		{text="Repair",icon="Interface\\Minimap\\Tracking\\Repair"},
		{text="Riding Trainer",icon="Interface\\Minimap\\Tracking\\StableMaster", type="TrainerRiding"},
		{text="Stable Master",icon="Interface\\Minimap\\Tracking\\StableMaster"},
		{text="Transmogrifier",icon="Interface\\Minimap\\Tracking\\Transmogrifier"},
		{text="Vendor",icon="Interface\\Minimap\\Tracking\\Food"},
		{text="Void Storage",icon=ZGV.IconSets.WorldQuest.file,iconkey="VOID"},
		{text="Main City",icon="Interface\\Minimap\\Tracking\\Banker"},
	}

	if ZGV.IsRetail then
		table.remove(WW.Types ,4) -- class trainers
	elseif ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		table.remove(WW.Types ,13) -- void storage
		table.remove(WW.Types ,11) -- transmog
		table.remove(WW.Types ,9) -- riding
		table.remove(WW.Types ,3) -- barber
	end

	for i,v in ipairs(WW.Types) do
		if not v.nofunc then v.func = v.func or function() ZGV.WhoWhere:FindNPC(v.type or v.text) CloseDropDownForks()  end end
		v.notCheckable = 1
		if v.iconkey then
			local texcoord=ZGV.IconSets.WorldQuest[v.iconkey].texcoord
 			v.tCoordLeft = texcoord[1]
			v.tCoordRight = texcoord[2]
			v.tCoordTop = texcoord[3]
			v.tCoordBottom = texcoord[4]
		end	
	end


end

function WW:CreateWorkerFrame()
	if self.WorkerFrame then return end
	self.WorkerFrame=CreateFrame("FRAME")
	self.WorkerFrame:Show()
end

local function CalcStep()
	if WW.thread then
		coroutine.resume(WW.thread)
		if coroutine.status(WW.thread)=="dead" then
			WW.thread=nil
			WW.WorkerFrame:SetScript("OnUpdate",nil)
		end
	end
end


local function CalcThread()
	local typ,m,x,y=WW.typ,WW.m,WW.x,WW.y
	if not m then x,y,m=LibRover:GetPlayerPosition() end
	local parse=ZGV.NPCData.parseNPC
	local mindist,minid,minm,minf,minx,miny=999999
	local count=0
	for id,data in ZGV.NPCData:iterate(typ) do
		local npc=parse(data)
		if tonumber(npc.m) and npc.m>0 then
			npc.x=npc.x*0.01
			npc.y=npc.y*0.01
			local dist=HBD:GetZoneDistance(m,x,y,npc.m,npc.x,npc.y)

			if dist and dist<mindist then
				mindist=dist
				minid,minm,minx,miny=tonumber(id),npc.m,npc.x,npc.y
			end
		end
		count=count+1
		if count%100==0 then coroutine.yield() end
	end
	if minid then
		ZGV.Pointer:SetWaypoint(minm,minx,miny,{title=ZGV.Localizers:GetTranslatedNPC(minid),arrow=true,findpath=true,type="manual",cleartype="true"},true)
	end

end

function WW:FindNPC(typ,m,f,x,y)
	WW.debuglast = {typ,m,f,x,y}
	WW.debugtrace = debugstack()
	if typ == "Innkeeper" or not ZGV.db.profile.pathfinding then
		WW:FindNPC_Direct(typ)
	elseif typ then
		WW:FindNPC_Smart(typ)
	end
end

function WW:FindNPC_Direct(typ,m,f,x,y)
	self.typ,self.m,self.f,self.x,self.y=typ,m,f,x,y

	self.WorkerFrame:SetScript("OnUpdate",CalcStep)
	self.thread = coroutine.create(CalcThread)
end

function WW:FindNPC_Smart(typ,goal,handler)
	local parse=ZGV.NPCData.parseNPC
	local foundnpcs = {}
	local npcid, npcdata, npcrawdata

	local npccounter = 1
	local current_continent = ZGV.GetCurrentMapContinent()

	for id,data in ZGV.NPCData:iterate(typ) do
		local temp = parse(data)
		if (not temp.c or temp.c()) and temp.m>0 then
			if typ=="Vendor" then
				local npc_continent = ZGV.GetMapContinent(temp.m)
				if current_continent==npc_continent then
					foundnpcs[npccounter] = {m=temp.m, x=temp.x/100, y=temp.y/100, id=tonumber(id), r=temp.r, w=temp.w}
					npccounter = npccounter + 1
				end
			else
				foundnpcs[npccounter] = {m=temp.m, x=temp.x/100, y=temp.y/100, id=tonumber(id), r=temp.r, w=temp.w}
				npccounter = npccounter + 1
			end
		end
	end

	local b = foundnpcs[1]
	if not b then return false end

	local more_points = {}
	for i=1,#foundnpcs do
		local w=foundnpcs[i]
		more_points[#more_points+1]={m=w.m,f=w.f,x=w.x,y=w.y,title=tostring(w.id), noskip=true,region=w.r, w=w.w}
	end
	
	LibRover:QueueFindPath(0,0,0, b.m,b.x,b.y, handler or WW.PathFoundHandler, {goal=goal, foundnpcs=foundnpcs, direct=not ZGV.db.profile.pathfinding, multiple_ends=more_points })
	--LibRover:UpdateNow()
	ZGV.Pointer:ShowWaiting(1)
end

function WW:Find_Taxi()
	local cn,cont = ZGV.GetCurrentMapContinent()
	ZGV.LibTaxi:ClearContinentKnowledge(cn,"taxi")
	local taxis={}
	for ni,node in pairs(LibRover.nodes.taxi) do
		if node.c==cont then tinsert(taxis,{m=node.m,f=node.f,x=node.x,y=node.y,title=node.name,name=node.name,id=node.npcid,learnfpath=true}) end
	end
	local b=taxis[1]
	LibRover:QueueFindPath(0,0,0, b.m,b.x,b.y, WW.PathFoundHandler, {foundnpcs=taxis, direct=not ZGV.db.profile.pathfinding, multiple_ends=taxis })
	LibRover:UpdateNow(true)
	ZGV.Pointer:ShowWaiting(1)
end

function WW.PathFoundHandler(state,path,ext,reason)
	--if state=="progress" then ZGV.Pointer:ShowWaiting(0) end
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
end

function WW:ClearTarget() 
	-- called on PLAYER_TARGET_CHANGED to clear manual waypoint once player is at proper npc
	if not LibRover.RESULTS then return end
	local point = LibRover.RESULTS[#LibRover.RESULTS]
	if not (point and point.waypoint and point.waypoint.manualnpcid) then return end
	if point.waypoint.manualnpcid==ZGV.GetTargetId() then
		ZGV.Pointer:ClearWaypoints("manual")  
		ZGV:ShowWaypoints()
	end
end

--------------------------------------------------------------------------------

local function CalcMailboxThread()
	local m, x, y =  WW.m, WW.x, WW.y

	local parse=ZGV.MailboxData.parseMailbox
	local mindist,minid,minm,minf,minx,miny=999999
	local count=0
	for id,data in ZGV.MailboxData:iterate() do
		local mailbox=parse(data)
		if (not mailbox.c or mailbox.c()) and mailbox.m>0 then
			mailbox.x=mailbox.x*0.01
			mailbox.y=mailbox.y*0.01
			local dist = HBD:GetZoneDistance(m,x,y,mailbox.m,mailbox.x,mailbox.y)

			if dist and dist<mindist then
				mindist=dist
				minid,minm,minx,miny=tonumber(id),mailbox.m,mailbox.x,mailbox.y
			end
		end
		count=count+1
		if count%100==0 then coroutine.yield() end
	end
	if minid then
		ZGV.Pointer:SetWaypoint(minm,minx,miny,{title="Mailbox",arrow=true,findpath=true,type="manual",cleartype="true"},true)
	end

end



function WW:FindMailbox()
	self.x, self.y, self.m = LibRover:GetPlayerPosition() 
	self.WorkerFrame:SetScript("OnUpdate",CalcStep)
	self.thread = coroutine.create(CalcMailboxThread)
end

-- NPCData_parse.lua
local NPCcached={}
local function parseNPC(s)
	wipe(NPCcached)
	local grab=function(k,v)
		NPCcached[k]=v
	end
	s = s:gsub("[ *]--(.*)","")
	s:gsub("(%w)([^|]+)",grab)
	NPCcached.x=tonumber(NPCcached.x)
	NPCcached.y=tonumber(NPCcached.y)
	NPCcached.m=tonumber(NPCcached.m)
	NPCcached.f=tonumber(NPCcached.f)
		if NPCcached.c then 
			local fun,err,cond_procd = ZGV.Parser.MakeCondition(NPCcached.c,true)
			if not fun then error(err) end
			NPCcached.raw = NPCcached.c
			NPCcached.c = fun
		end
	return NPCcached
end

-- de-hostilize

local badfact
if UnitFactionGroup("player")=="Alliance" then badfact="H"
elseif UnitFactionGroup("player")=="Horde" then badfact="A"
end

function WW:Initialise()
	-- Clean up
	for t,d in pairs(ZGV._NPCData) do ZGV._NPCData[t]=d:gsub("\t","") end

	-- Remove hostiles
	if badfact then for t,d in pairs(ZGV._NPCData) do ZGV._NPCData[t]=d:gsub("%d+=s"..badfact..".-\n","") end end

	-- localize

	local data=ZGV._NPCData
	assert(data,"NPCData missing")
	ZGV.NPCData={}  setmetatable(ZGV.NPCData,{__index=function(t,k) if type(k)~='number' then return end local d=data:match('\n'..k..'=(.+)') if not d then return end  return parseNPC(d)  end})
	ZGV.NPCData.parseNPC=parseNPC  -- store it, in case someone wants it
	ZGV.NPCData.raw=data
	function ZGV.NPCData:iterate(typ)
		return data[typ]:gmatch("(%d+)=([^\n]+)\n")
	end
	ZGV._NPCData=nil
end

-- Mailboxes --
if badfact then ZGV._MailboxData=ZGV._MailboxData:gsub("s"..badfact..".-\n","") end
local MailboxCached={}
local function parseMailbox(s)
	wipe(MailboxCached)
	local grab=function(k,v)
		MailboxCached[k]=v
	end
	s = s:gsub("[ *]--(.*)","")
	s:gsub("(%w)([^|]+)",grab)
	MailboxCached.x=tonumber(MailboxCached.x)
	MailboxCached.y=tonumber(MailboxCached.y)
	MailboxCached.m=tonumber(MailboxCached.m)
	MailboxCached.f=tonumber(MailboxCached.f)
		if MailboxCached.c then 
			local fun,err,cond_procd = ZGV.Parser.MakeCondition(MailboxCached.c,true)
			if not fun then error(err) end
			MailboxCached.raw = MailboxCached.c
			MailboxCached.c = fun
		end
	return MailboxCached
end

-- iterator

local mailboxData=ZGV._MailboxData
assert(mailboxData,"MailboxData missing")
ZGV.MailboxData={}
setmetatable(ZGV.MailboxData,{__index=function(t,k)
	local d=mailboxData:match('\ns(.+)')
	if not d then return end
	return parseMailbox(d)
end})
ZGV.MailboxData.parseMailbox=parseMailbox  -- store it, in case someone wants it

local matcher = nil
local matcherIndex = 1
function ZGV.MailboxData:iterate()
	if not matcher then
		matcher = mailboxData:gmatch("\n([^\n]-|tM)")
		matcherIndex = 1
	end
	matcherIndex = matcherIndex + 1
	
	return function()
		local match = matcher()
		if match then
			return tostring(matcherIndex), match
		else
			matcher = nil
			matcherIndex = 1
		end
	end
end
ZGV._MailboxData=nil


function WW:LeechTaxis()
	ZGV._NPCData.Flightmaster = ""
	local enemyfac = UnitFactionGroup("player")=="Alliance" and "H" or "A"
	local myfac = UnitFactionGroup("player"):sub(1,1)
	local formatter = "%d=s%s|m%d|x%s|y%s\n"

	for c,cont in ZGV.OrderedPairs(LibTaxi.taxipoints) do
		for z,zone in ZGV.OrderedPairs(cont) do
			for n,node in ipairs(zone) do
				if node.faction~=enemyfac  -- obviously
				and not node.taxioperator  -- only normal taxis apply
				and not (node.cond_fun and not node.cond_fun())  -- not conditioned out
				and node.npcid 
				then
					ZGV._NPCData.Flightmaster = ZGV._NPCData.Flightmaster .. formatter:format(node.npcid,myfac,node.m,node.x,node.y)
				end
			end
		end
	end
end




tinsert(ZGV.startups,{"WhoWhere",function(self)
	WW:SetupMenuArray()
	WW:CreateWorkerFrame()
	WW:LeechTaxis()
	WW:Initialise()
	ZGV:AddEventHandler("PLAYER_TARGET_CHANGED",WW.ClearTarget)
end})
