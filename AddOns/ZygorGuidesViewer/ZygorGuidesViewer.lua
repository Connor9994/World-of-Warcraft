assert(not _G['ZGV'],"Two ZygorGuideViewers loaded!\nWe're doomed!")

-- GLOBAL BINDING_HEADER_ZYGORGUIDES,BINDING_NAME_ZYGOR_WAYPOINT_NEXT,BINDING_NAME_ZYGOR_WAYPOINT_PREV,BINDING_NAME_ZYGORGUIDES_NEXT,BINDING_NAME_ZYGORGUIDES_OPENGUIDE,BINDING_NAME_ZYGORGUIDES_PREV
-- GLOBAL CloseDropDownForks,EasyFork,UIDropDownFork_AddButton,UIDropDownFork_SetText
-- GLOBAL SLASH_RE1,ZYGORGUIDESVIEWER_COMMAND,ZYGORGUIDESVIEWERFRAME_TITLE
-- GLOBAL ZGVF_Default_Menu,ZGVFSectionDropDown_Func,ZygorGuidesViewerFrame,ZygorGuidesViewerFrame_Border_TabBack,ZygorGuidesViewerFrameMaster,ZygorGuidesViewerMaintenanceFrame,ZygorGuidesViewerMapIcon
-- GLOBAL ZGV_DEV
-- Other addons:
-- GLOBAL Cartographer_QuestInfo,Chatter,LightHeaded
-- Unused:
-- GLOBAL GetCurrentMapAreaID,C_MapBar,SetMapByID,SetDungeonMapLevel

local addonName,ZygorGuidesViewer = ...

LibStub("AceAddon-3.0"):NewAddon(ZygorGuidesViewer,addonName, "AceConsole-3.0","AceEvent-3.0","AceTimer-3.0","AceHook-3.0")

local ZGV=ZygorGuidesViewer
ZGV.StandAlone = GetAddOnMetadata(addonName,"X-Standalone")

--global exports
_G['ZygorGuidesViewer']=ZygorGuidesViewer
_G['ZGV']=ZGV

ZGV.L = ZygorGuidesViewer_L("Main")
ZGV.LS = ZygorGuidesViewer_L("G_string")

local L = ZGV.L
local LI = ZGV.LI
local LC = ZGV.LC
local LQ = ZGV.LQ
local LS = ZGV.LS

ZGV.HBD = LibStub("HereBeDragons-ZGV")
ZGV.HBDPins = LibStub("HereBeDragons-Pins-ZGV")

local HBD=ZGV.HBD
local HBDPins=ZGV.HBDPins

--ZGV.name = L['name_plain']

ZGV.Vars={}
ZGV.Datastore = {}

-- Time to add some testing. ~~ Jeremiah
ZGV.TestFramework = {}
ZGV.TestFramework.UnitTests = {} -- Not used yet.
ZGV.UseUnitTesting = false -- Turn off before release!

ZGV.IsClassic = WOW_PROJECT_ID == WOW_PROJECT_CLASSIC
ZGV.IsClassicTBC = WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC
ZGV.IsClassicWOTLK = (WOW_PROJECT_ID == WOW_PROJECT_WRATH_CLASSIC) or ((WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC) and (LE_EXPANSION_LEVEL_CURRENT == LE_EXPANSION_WRATH_OF_THE_LICH_KING))
ZGV.IsRetail = WOW_PROJECT_ID == WOW_PROJECT_MAINLINE
ZGV.IsClassicSoM =  C_Seasons and (ZGV.IsClassic and C_Seasons.HasActiveSeason() and C_Seasons.GetActiveSeason()==Enum.SeasonID.SeasonOfMastery)

ZGV.CLASSIC_SCALE_ADJUST = ZGV.IsRetail and 1 or UIParent:GetEffectiveScale()

local DIR = "Interface\\AddOns\\"..addonName
ZGV.DIR = DIR
ZGV.SKINSDIR = ZGV.DIR .. "\\Skins\\"
ZGV.ARROWSDIR = ZGV.DIR .. "\\Arrows\\"
if ZGV.IsRetail     then ZGV.IMAGESDIR = ZGV.DIR .. "\\Guides-Retail\\Images\\" end
if ZGV.IsClassicTBC then ZGV.IMAGESDIR = ZGV.DIR .. "\\Guides-TBC\\Images\\" end
if ZGV.IsClassicWOTLK then ZGV.IMAGESDIR = ZGV.DIR .. "\\Guides-WOTLK\\Images\\" end
if ZGV.IsClassic    then ZGV.IMAGESDIR = ZGV.DIR .. "\\Guides-Classic\\Images\\" end

ZYGORGUIDESVIEWER_COMMAND = "zygor"
ZYGORGUIDESVIEWERFRAME_TITLE = "ZygorGuidesViewer"

BINDING_HEADER_ZYGORGUIDES = L["name_plain"]
BINDING_NAME_ZYGORGUIDES_OPENGUIDE = L["binding_togglewindow"]
BINDING_NAME_ZYGORGUIDES_PREV = L["binding_prev"]
BINDING_NAME_ZYGORGUIDES_NEXT = L["binding_next"]
BINDING_NAME_ZYGOR_WAYPOINT_NEXT = L["binding_waypoint_next"]
BINDING_NAME_ZYGOR_WAYPOINT_PREV = L["binding_waypoint_prev"]


local version, build, date, tocversion = GetBuildInfo()
build = tonumber(build)
tocversion = tonumber(tocversion)
ZGV.Expansion_Cata = true
ZGV.Expansion_Mists = (build>=15799)
ZGV.Expansion_Warlords = (build>=18566)
ZGV.Expansion_Legion = (build>=22248)
ZGV.Expansion_Shadowlands = (tocversion>=90000)

ZGV.Patch_7_2 = (build>=23721)




-- local libs

local BZ = LibStub("LibBabble-SubZone-3.0")
local BZL = BZ:GetUnstrictLookupTable()
local BZR = setmetatable({_table=BZ:GetReverseLookupTable()},{__index=function(t,k) return t._table[k] or k end})
ZGV.BZL = BZL
ZGV.BZR = BZR
local BF = LibStub("LibBabble-Faction-3.0")
local BFL = BF:GetUnstrictLookupTable()
local BFR = BF:GetReverseLookupTable()
ZGV.BFL = BFL
ZGV.BFR = BFR
--local Dewdrop = AceLibrary("Dewdrop-2.0")
ZGV.LibTaxi = LibStub("LibTaxi-1.0")


-- localizing common functions

local _G,assert,table,string,tinsert,tremove,tonumber,tostring,type,ipairs,pairs,setmetatable,math,resume,status,yield,debugprofilestop =
      _G,assert,table,string,tinsert,tremove,tonumber,tostring,type,ipairs,pairs,setmetatable,math,coroutine.resume,coroutine.status,coroutine.yield,debugprofilestop
local IsQuestFlaggedCompleted = C_QuestLog.IsQuestFlaggedCompleted


ZGV.registeredguides = {}
ZGV.registeredmapspotsets = {}
ZGV.guidesets = {}
ZGV.registered_groups = { groups={},guides={}}
ZGV.RegisteredGuidesTitles = {}


ZGV.CartographerDatabase = { }


local MAX_GUIDES_HISTORY = 30


ZGV.STARTUP_INTENSITY=10
local STARTUP_SPAM_FREQUENCY=0.1

ZGV.startups = {}
ZGV.LIBROVER_MANAGED_STARTUP=true



ZGV.CFG = {}
ZGV.CFG.LINES_PER_STEP = 30

local LINES_PER_STEP = ZGV.CFG.LINES_PER_STEP


ZGV.StepLimit = 20

ZGV.mentionedQuests = {}


ZGV.ACTION_BUTTONS_DISABLED = true


local MIN_HEIGHT=10

-- ZGV.STEPMARGIN_X=3
-- ZGV.STEPMARGIN_Y=3


-- This gets really useful, probably move to functions or make it ZGV member?
local function SkinData(parm)
	return ZGV.UI.SkinData(parm)
end


ZGV.MIN_STEP_HEIGHT=12
ZGV.MIN_SPOT_HEIGHT=40

local MIN_WIDTH = 260
local MAX_WIDTH = 800

--local FONT = STANDARD_TEXT_FONT
local FONT=L['MainFont']
local FONTBOLD=L['MainFontBold']
ZGV.Font = FONT
ZGV.FontBold = FONTBOLD

local lastcompletion=0


--ZGV.CLEAR_GUIDE_RAWDATA_AFTER_PARSING = 1
-- DON'T. Guides that are UNloaded have their .steps cleared - they need rawdata to be parsed again!


--ZGV.BUTTONS_INLINE=true


-- BAD GLOBALS!

local math_modf=math.modf
math.round=function(n) local x,y=math_modf(n) return n>0 and (y>=0.5 and x+1 or x) or (y<=-0.5 and x-1 or x) end
local round=math.round


StaticPopupDialogs['ZYGORGUIDESVIEWER_HELP'] = {
	text = L['static_help'],
	button1 = OKAY,
	hideOnEscape = 1,
	timeout = 0,
	whileDead = 1,
}

StaticPopupDialogs['ZYGORGUIDESVIEWER_SIS'] = {
	text = L['static_sis'],
	button1 = OKAY,
	button2 = CANCEL,
	OnAccept = function(self) ZGV:SIS_Activate() end,
	hideOnEscape = 1,
	timeout = 0,
	whileDead = 1,
}

StaticPopupDialogs['ZYGORGUIDESVIEWER_DEFAULT'] = {
	text = L['static_caption'].."%s",
	button1 = OKAY,
	hideOnEscape = 1,
	timeout = 0,
	whileDead = 1,
}

ZGV.timestamp_loaded = debugprofilestop()
ZGV.timestamp_loaded_GT = GetTime()

function ZGV:OnInitialize()  --ADDON_LOADED
	if ZGV.IsRetail then
		ZGV.db = LibStub("AceDB-3.0"):New("ZygorGuidesViewerSettings")
	else
		ZGV.db = LibStub("AceDB-3.0"):New("ZygorGuidesViewerClassicSettings")
	end

	ZGV.db.global.gii_cache=ZGV.db.global.gii_cache or {}

	ZGV.db.global.sv_version = tonumber(ZGV.db.global.sv_version) or 1  + 1
	assert(ZGV.version,"Ver.lua missing!")
	--print("zgv oninit")
	--if not CHECK then CHECK = 3 end

--	if not ZygorGuidesViewerMiniFrame then error("Zygor Guide Viewer step frame not loaded.") end

	ZGV.startuptimestamps:Punch("libs.xml start",___ZGV_TIMESTAMP_LOADLIBSXML_START)
	ZGV.startuptimestamps:Punch("libs.xml end",___ZGV_TIMESTAMP_LOADLIBSXML_END)
	ZGV.startuptimestamps:Punch("localization.xml start",___ZGV_TIMESTAMP_LOADLOCALIZATIONXML_START)
	ZGV.startuptimestamps:Punch("localization.xml end",___ZGV_TIMESTAMP_LOADLOCALIZATIONXML_END)
	ZGV.startuptimestamps:Punch("guides/autoload.xml start",___ZGV_TIMESTAMP_LOADGUIDESXML_START)
	ZGV.startuptimestamps:Punch("guides/autoload.xml end",___ZGV_TIMESTAMP_LOADGUIDESXML_END)
	ZGV.startuptimestamps:Punch("files.xml start",___ZGV_TIMESTAMP_LOADFILESXML_START)
	ZGV.startuptimestamps:Punch("files.xml end",___ZGV_TIMESTAMP_LOADFILESXML_END)
	ZGV.startuptimestamps:Punch("OnInitialize")
	self.timestamp_initing = debugprofilestop()
	
	self.Profiler:Store("file-load-total",self.loading_memory_total,self.time_loadedfiles,self.time_loadedfiles)  -- time_loadedfiles set in files.xml

	self.startuptimes["Loading libs"]=ZGV.startuptimestamps["libs.xml end"]-ZGV.startuptimestamps["libs.xml start"]
	self.startuptimes["Loading guides"]=ZGV.startuptimestamps["guides/autoload.xml end"]-ZGV.startuptimestamps["guides/autoload.xml start"]
	self.startuptimes["Loading code"]=ZGV.startuptimestamps["files.xml end"]-ZGV.startuptimestamps["files.xml start"]-self.startuptimes["Loading guides"]
	--self.startuptimes["Loading variables"]=self.timestamp_initing-self.loadtime

	local t1=debugprofilestop()

	self:Debug ("&startup Initializing...")

	if self.db.profile.do_disable_profiler then
		SetCVar("scriptProfile","0")
		self.db.profile.do_disable_profiler = nil
	end
	if (GetCVar("scriptProfile")=="1") then
		self:Debug("Somebody set us up a bomb: Lua profiler is enabled. Disabling it on next reload")
		self.ProfilerMode=true
		self.db.profile.do_disable_profiler = true
	end

	self:Options_Initialize()

	ZygorGuidesViewerMapIcon:Setup()

	self:WarnAboutDebugSettings()

	--ZGV:Print("Loading...")

	
	if IsShiftKeyDown() then
		self:Debug ("MAINTENANCE MODE!")

		-- DISABLE all maint settings
		for k,v in pairs(self.db.char) do if k:match("^maint_") then self.db.char[k]=false end end

		ZygorGuidesViewerMaintenanceFrame:Show()
	
	else
		
		-- ENABLE all maint settings. They should be enabled already, by default, anyway...
		for k,v in pairs(self.db.char) do if k:match("^maint_") then self.db.char[k]=true end end
	end



	self.db.char.completedQuests=nil --wipe and flush

	self.CurrentStepNum = self.db.char.step
	self.CurrentGuideName = self.db.char.guidename and self.db.char.guidename:gsub("ataclsym","ataclysm")  -- TODO: remove after a while. Ugly fix.

	self.briefstepexpansionlines = {}
	self.briefstepexpansionspeedlines = {}

	self.QuestCacheTime = 0
	self.QuestCacheUndertimeRepeats = 0
	self.StepCompletion = {}
	self.recentlyAcceptedQuests = {}
	self.recentlyLostQuests = {}
	self.recentlyCompletedQuests = {}
	self.LastSkip = 1

	self.quests = {}
	self.questsbyid = {}

	self.bandwidth = 0

	self.TomTomWaypoints = {}

	self.instantQuests = {}
	self.dailyQuests = self.dailyQuests or {}

	self.completionelapsed = 0
	self.completionintervaldefault = 1.0 -- when sitting on a step, waiting for it to complete.
	self.completionintervallong = 1.0 -- when starting skipping through steps
	self.completionintervalmin = 0.01 -- after skipping through some steps
	self.completionintervalspeed = 0.8 -- multiplier of speed at each step in a row
	self.completioninterval = self.completionintervaldefault
	self.completionstreak = 0

	self:Debug ("&startup Initializing step 2...")
	self.db.char.lastlogin = time()

	-- initialize/convert history
	if not self.db.char.guides_history_ZGV4clear then self.db.char.guides_history={} self.db.char.guides_history_ZGV4clear=true end
	if not tonumber((next(self.db.char.guides_history))) then -- convert back to flat
		local g={}
		for gtype,guide in pairs(self.db.char.guides_history) do  tinsert(g,guide)  end
		self.db.char.guides_history=g
	end


	self:ClearRecentActivities() -- just to make sure they're not nils

	--self.AutoskipTemp = true

	self:Debug ("&startup Initializing skin...")

	self:SetSkin(self.db.profile.skin,self.db.profile.skinstyle)
	
	ZygorGuidesViewerFrame = self.Frame

	self.Frame:SetSpecialState("loading")

	self.frameNeedsResizing = 0

	self.Frame:SetScale(self.db.profile.framescale)
	self.Frame:AlignFrame()
	self:UpdateLocking()
	self:ReanchorFrame()

	if ZGV.DEV and ZGV.LibTaxi and ZGV.LibTaxi.errors and next(ZGV.LibTaxi.errors) then ZGV:Print("DEV: LibTaxi reports errors. See LibTaxi.errors") end

	self:Debug ("&startup Initialized in %.2f",debugprofilestop()-t1)

	-- Making sure no Bag Addon can see our dearest minimap icons
	local trueMinimapGetChildren=Minimap.GetChildren
	assert(trueMinimapGetChildren) -- if that ever breaks we might need to reschedule the operation or something
	function Minimap:GetChildren()
		local res={ trueMinimapGetChildren(self) }
		for k,v in pairs(res) do
			if v.isZygorWaypoint then
				table.remove(res,k) -- Nothing to see here, move along
			end
		end
		return unpack(res)
	end

	CinematicFrame:HookScript("OnShow", ZGV.F.CutsceneCancel)
	MovieFrame:HookScript("OnShow", ZGV.F.MovieCancel)

	--[[
	if ZygorTalentAdvisor and ZygorTalentAdvisor.revision > self.revision then
		self.revision = ZygorTalentAdvisor.revision
		self.version = ZygorTalentAdvisor.version
		self.date = ZygorTalentAdvisor.date
	end
	--]]

	ZGV.LibRover:DoStartup()

	-- home detection, moved to events


	ZGV.db.char.questrewards=ZGV.db.char.questrewards or {}
	if ZGV.IsRetail then
		if not ZGV.Expansion_Shadowlands then hooksecurefunc("SendQuestChoiceResponse",function(...) ZGV:QuestRewardSelect(...) end) end
		hooksecurefunc(C_PlayerChoice,"SendPlayerChoiceResponse",function(...) ZGV:PlayerChoiceResponce(...) end)
	end

	if self.DEV then
		ZGV.DebugFrame = ZGV.ChainCall(CreateFrame("FRAME","ZygorDebugFrame",UIParent)) :SetPoint("TOPLEFT") :SetSize(1,1) .__END
		ZGV.DebugFrame.text1 = ZGV.ChainCall(ZGV.DebugFrame:CreateFontString()) :SetPoint("TOPLEFT") :SetFontObject(SystemFont_Tiny) .__END
		if self.db.profile.fpsgraph then
			ZGV:StartFPSFrame()
		end
	end

	self.maxlevel = GetMaxLevelForExpansionLevel(GetExpansionLevel())
	

	if self.ERRORS then self:Print("Errors were detected on startup, see ZGV.ERRORS") end

	ZGV.startuptimestamps:Punch("oninitialize_complete")

	-- clear timestamp globals
	for k,v in pairs(_G) do if k:find("___ZGV_TIMESTAMP",1,true) then _G[k]=nil end end

	self:Debug("&startup Initialized")
end

function ZGV:OnEnable()  --PLAYER_LOGIN

	self:Debug("&startup Enabling...")

	local t1=debugprofilestop()

	ZygorGuidesViewerMapIcon:Show()

	self:UpdateMapButton()
	self:ApplySkin()

	self:AddEventHandler("UNIT_INVENTORY_CHANGED")

	-- combat detection for hiding in combat
	self:AddEventHandler("PLAYER_REGEN_DISABLED")
	self:AddEventHandler("PLAYER_REGEN_ENABLED")
	--self:AddEventHandler("WORLD_MAP_UPDATE")

	self:AddEventHandler("SPELL_UPDATE_COOLDOWN")

	self:AddEventHandler("PLAYER_CONTROL_GAINED")  -- try to force current zone updates; should prevent GoTo lines from locking up after a taxi flight

	self:AddEventHandler("PLAYER_ENTERING_WORLD")  -- cache current map id
	self:AddEventHandler("ZONE_CHANGED")
	self:AddEventHandler("ZONE_CHANGED_INDOORS")
	self:AddEventHandler("ZONE_CHANGED_NEW_AREA")
	self:AddEventHandler("NEW_WMO_CHUNK")
	
	--[[ bfa alpha change
	self:AddEventHandler("MAP_BAR_UPDATE")
	--]]

	self:AddEventHandler("COMBAT_LOG_EVENT_UNFILTERED")
	self:AddEventHandler("LOADING_SCREEN_DISABLED")
	self:AddEventHandler("LOADING_SCREEN_ENABLED")
	self:AddEventHandler("CINEMATIC_START");
	self:AddEventHandler("CINEMATIC_STOP");

	self:AddEventHandler("TAXIMAP_OPENED")

	self:AddEventHandler("GET_ITEM_INFO_RECEIVED")

	--[[
	if ZGV.IsRetail then
		self:AddEventHandler("PLAYER_CHOICE_UPDATE")
		self:AddEventHandler("PLAYER_CHOICE_CLOSE")
	end
	--]]
	
	self:AddEventHandler("PLAYER_LEVEL_UP")
	self:AddEventHandler("UNIT_AURA",ZGV.RecordTirisfal)
	self:AddEventHandler("HEARTHSTONE_BOUND", function()
		ZygorGuidesViewer.recentlyHomeChanged = true
	end)

	--self:AddEventHandler("UPDATE_VEHICLE_ACTIONBAR") -- refresh actionbar when vehicle/pet is summoned/dismissed

	self:AddMessageHandler("ZGV_LOADING_TOPLEVEL_GROUPS_UPDATED")

	if self.db.profile.poketarget then
		self:AddEventHandler("UPDATE_MOUSEOVER_UNIT")
		self:AddEventHandler("CURSOR_UPDATE")
	end
		

	self:Hook_QuestChoice()

	hooksecurefunc(AreaPOIPinMixin,"OnAcquired", function(self) 
		self:EnableMouse(true)
		self:SetScript("OnMouseUp",function(self) ZGV:SuggestGuideFromBlizzardIcon(self) end)
	end)	

	--self.Localizers:PruneNPCs()  -- off until we start doing it by data, not by name. ~sinus 2013-04-09

	self.Log.entries = self.db.char.debuglog
	self.Log:Add("Viewer started. ---------------------------")

	-- waiting for QUEST_LOG_UPDATE for true initialization...

	if ZGV_DEV then ZGV_DEV() end
	self:SetBeta()

	if self.db.profile.frame_anchor then
		ZGV.F.SetFrameAnchor(self.Frame:GetParent(),ZGV.db.profile.frame_anchor)
	end


	ZygorGuidesViewerMapIcon:SetLoading(true)

	self:Debug("&startup Enabled in %.2f ms",debugprofilestop()-t1)

	self.loading=""
end

function ZGV:OnDisable()
--	self:UnregisterAllEvents()
	
	ZygorGuidesViewerMapIcon:Hide()
	self.Frame:Hide()
end

-- Compare two guides or guide groups. Sort wisely according to either registered_sortings or registration order (first-come-first-serve)
local function CompGroups(a,b)
	local aname=ZGV.GuideTitles[a.name]
	local bname=ZGV.GuideTitles[b.name]

	local sa=ZGV.registered_sortings[aname or a.title_short]
	local sb=ZGV.registered_sortings[bname or b.title_short]

	if sa and sb then return sa<sb else return a.ord<b.ord end
end

local function SortGroups(group,recurse)
	table.sort(group.groups,CompGroups)
	table.sort(group.guides,CompGroups)
	if recurse then for i,gr in ipairs(group.groups) do
		SortGroups(gr,recurse)
	end end
end


function ZGV:Startup_LoadGuides_Threaded()
	local full_load = self.db.profile.loadguidesfully

	if #self.registeredguides>0 then
		self.loading = L['loading_guides']


		-- prune banned first
		local newreg = {}
		for i=1,#self.registeredguides do
			local guide=self.registeredguides[i]
			if self.GuideFuncs:IsGuideBanned(guide.title) or (guide.beta and not ZGV.BETA) then
				self.registeredguides[i]=nil
			else
				tinsert(newreg,guide)
				guide.num=#newreg
			end
		end
		self.registeredguides = newreg

		-- FAST START: load current guide first!
		self:LoadInitialGuide("fastload")

		local t=debugprofilestop()
		local count_total=#self.registeredguides
		local count=0
		local guides_this_tick=0
		for i,guide in ipairs(self.registeredguides) do repeat
			guide:ParseHeader()
			if full_load then guide:Parse(full_load) end  -- may yield, caught by @coro_startup
			--if guide.type=="pet" or guide.type=="mount" then
			--	guide:Parse(true) -- Those guys are useful for detector
			--end

			-- if parsed then assign to a group
			local group,tit = guide.title:match("^(.*)\\+(.-)$")
			group = group and self:FindOrCreateGroup(self.registered_groups,group) or self.registered_groups
			guide.ord=#group.guides+1
			tinsert(group.guides,guide)

			guides_this_tick=guides_this_tick+1
			count=count+1

			if debugprofilestop()-t>(self.LOADGUIDES_INTENSITY or self.STARTUP_INTENSITY) then  -- let it take us down to 3fps, it's the startup. -- NOOOO! - 2016-03-28 21:21:06 sinus
				self.loadprogress = i/#self.registeredguides
				self:SendMessage("ZGV_LOADING")
				yield("loadguides: " .. (full_load and "parsing fully" or "parsing headers") .. " ("..guides_this_tick..")",count/count_total*100)
				guides_this_tick=0
				t=debugprofilestop()
			end
		until true end
		yield("loadguides: " .. (full_load and "parsed fully" or "parsed headers"))

		for i,guide in ipairs(self.registeredguides) do
			if guide.startlevel and not guide.endlevel and guide.next then
				local nextg = self:GetGuideByTitle(guide.next)
				if nextg and nextg.startlevel then
					guide.endlevel = nextg.startlevel
				end
			end
			--[[
			-- too fast for progress, eh?
			self.loadprogress = i/#self.registeredguides
			self:SendMessage("ZGV_LOADING")
			yield()
			--]]
		end

		yield("loadguides: startleveling")
	end

	-- sort guides, according to preset sortings.
	SortGroups(self.registered_groups,"recurse")
	yield("loadguides: sorting groups")

	ZygorGuidesViewerMapIcon:SetLoading(false)

	-- WIPE!
	--self.ParseQuestChains=nil
	--self.CreateReverseQuestChains=nil
	self.RegisterGuide=function() ZGV:Print("Too late to RegisterGuide at this point!") end
	self.RegisterMapSpots=nil

	self:SendMessage("ZGV_LOADING")

	self.guidesloaded=true

	--self:UpdateGuideMenuButton()

	self:CheckGuideJumps()

	if #self.ParseLog>0 then
		self:ShowDump(self.ParseLog,"Errors in guides",true)
	end

	yield("loadguides: complete.")

	self:Debug("&startup Loading guides ended.")
end

ZGV.maint_done={}
local function waitformaint(maint)
	while not ZGV.db.char[maint] do yield("waiting for "..maint) end
	ZGV.maint_done[maint]=true
end

--- prints check results into ZGV.ParseLog
function ZGV:CheckGuideJumps()
	-- check jump validity
	if self.db.profile.loadguidesfully then
		for _,guide in ipairs(self.registeredguides) do
			for si,step in ipairs(guide.steps) do
				for gi,goal in ipairs(step.goals) do
					local jumpguide,jumpstep
					local jumptype = ""
					if goal.next then
						jumptype = "next"
						jumpstep,jumpguide = step:GetJumpDestination(goal.next)
					end
					if goal.loadguidestep then
						jumptype = "loadguide"
						jumpstep = goal.loadguidestep
						jumpguide = goal.loadguide
					end

					if jumpguide and jumpstep and not tonumber(jumpstep) then
						local jumpedguide = ZGV:GetGuideByTitle(jumpguide)
						if not jumpedguide then
							self.ParseLog = self.ParseLog .. ("Guide %s step %d goal %d :\n%s jump guide missing \"%s\"\n\n"):format(guide.title,si,gi,jumptype,jumpguide)
						elseif not jumpedguide.steplabels[jumpstep] then
							self.ParseLog = self.ParseLog .. ("Guide %s step %d goal %d :\n%s jump guide missing label \"%s\" - %s\n\n"):format(guide.title,si,gi,jumptype,jumpguide,jumpstep)
						end
					end
				end -- goal
			end -- step
		end -- guide
	end
end

function ZGV:StartupModule_Threaded(startup,timeleft)  -- resumed in _StartupThread. Returns when module is 100% done. May yield, or may let the module startup yield.
	timeleft = timeleft or ZGV.STARTUP_INTENSITY
	
	self:Debug("&startup Starting module: |cffddffaa%s|r (allotted time: |cffffddee%d|rms)",startup.name,timeleft)

	startup.thread = coroutine.create(function() startup.func(self) end)

	if coroutine.status(startup.thread)~="suspended" then self:ErrorThrow("Error during initialization sequence: module '"..startup.name.."' didn't start") end

	local t0=debugprofilestop()
	local t=t0
	repeat
		if self.db.profile.safe_startup then t=debugprofilestop() yield("Before startup module: ".. startup.name .." ...") end
		local t1 = debugprofilestop()
		ZGV.Profiler:Start("startup-module-"..startup.name)

		---
		local ok,ret,r2,r3 = coroutine.resume(startup.thread,timeleft)  -- @coro_startupmodule_threaded ; yields from startup modules are caught here.
		if not ok then  self:ErrorThrow(
			"Error during initialization sequence '"..startup.name.."':\n"..
			tostring(ret).."\n"..
			"-- STARTUP THREAD STACK: --\n"..
			ZGV.MinimizeStack(debugstack(startup.thread))..
			"ZGV v"..ZGV.version..", WoW v"..table.concat({table.removemulti({GetBuildInfo()},1,2)},".").."\n"
		)  end
		---

		local progress,msg=ret,r2

		ZGV.Profiler:Stop()
		t1 = debugprofilestop()-t1
		if self.db.profile.safe_startup then t=debugprofilestop() yield(("Startup module: |cffffddee%s|r took %d ms"):format(startup.name,t1)) end
		--if not self.db.profile.safe_startup then self:Debug("&startup Startup module: %s in %d ms",name,t1) end
		--if self.db.profile.safe_startup then t=debugprofilestop() yield("Finished startup module: "..name..(" in %d ms"):format(t1))
		--elseif debugprofilestop()-t>100 then t=debugprofilestop() yield("(startup modules up to "..i..")") end

		if debugprofilestop()-t>timeleft then t=debugprofilestop() timeleft=yield("(startup module: "..startup.name..")",progress,msg) or timeleft end  -- caught by @coro_startup

	until coroutine.status(startup.thread)=="dead"

	self:Debug("&startup Starting module: |cffddffaa%s|r done in |cffffddee%d|rms.",startup.name,debugprofilestop()-t0)
end

ZGV.startups_late = {}

local function _StartupThread()
	local self=ZGV
		
	waitformaint("maint_startup_01") ----------------------------------
	
	self.loading="Loading..."

	--self.registeredmapspotsets = {}
	waitformaint("maint_startup_pointer") ---------------------


	if self.Pointer then self.Pointer:Startup() end
	if self.Foglight then self.Foglight:Startup() end
	ZGV.LibTaxi:Startup(ZGV.db.char.taxis)

	ZGV.HBD:FixPhasedContinents()
	
	waitformaint("maint_startup_modules") ---------------------

	if ZGV.db.profile.debug and ChatFrame1 and ChatFrame1.SetMaxLines then ChatFrame1:SetMaxLines(2000) end

	local popup = ZGV.PopupHandler:NewPopup("GenericPopup","default")


	yield("Before startups.")

	-- startup 'modules'
	ZGV.Profiler:Start("startup-total")
	ZGV.Profiler:Stop("startup-total")
	for i,startup in ipairs(self.startups) do
		if type(startup)=="table" then  startup.name,startup.func=unpack(startup)
		elseif type(startup)=="function" then  self.startups[i]={name="unnamed("..i..")",func=startup}  startup=self.startups[i]  end
		if type(startup.after)=="string" then startup.after={startup.after} end
	end
	local function startup_is_done (s)
		for i,startup in ipairs(self.startups) do  if startup.name==s or startup.id==s then return startup.done end  end
	end
	local function all_done (a)
		for i,v in ipairs(a) do  if not startup_is_done(v) then return false end  end
		return true
	end
	local function run_startup_cycle()
		local done=0
		for i,startup in ipairs(self.startups) do  if not startup.done then
			if (not startup.after or all_done(startup.after)) then
				ZGV:StartupModule_Threaded(startup)  -- may yield, then @coro_startup catches
				startup.done=true
				done=done+1
			else
				self:Debug("&startup Module |cffddffaa%s|r |cffffee88awaits|r |cffddffaa%s|r",startup.name,table.concat(startup.after,","))
			end
		end end
		return done
	end
	local function run_startup_phase(phase)
		for cycles=1,20 do
			yield("Startup cycle "..phase..": "..cycles)
			local done=run_startup_cycle()
			if done==0 then yield("Nothing done, ending cycles") break end
		end
	end
	local function set_startup_flag(flag)
		tinsert(self.startups,{id=flag,func=function() end,done=true})
	end


	run_startup_phase("before_guides") ------------------


	ZGV.Profiler:Start("startup-total")
	ZGV.Profiler:Stop("startup-total")

	self:Debug("&startup Startup modules (early) are done.")


	-- TODO maybe... for now let it be standalone
	--[[
	-- startup gearfinder
	if self.db.profile.autogear then
		self.ItemScore.GearFinder:DoStartup()
		yield("&startup gear cache thread initializing...")
		-- wait until it finishes caching. Careful not to cycle forever!
		local max_gear_cycles=100
		while max_gear_cycles>0 and not self.ItemScore.GearFinder.cached do yield("gear init") max_gear_cycles=max_gear_cycles-1 end
		if max_gear_cycles<=0 then self:Error("Gearfinder caching took over 100 cycles!") end
		print(max_gear_cycles)
	end
	--]]

	-- fast start!
	self:SetVisible(nil,self.db.profile.enable_viewer)
	self:UpdateFrame(true)
	--self:UpdateGuideMenuButton()

	self:Debug("&startup Loading guides...")
	waitformaint("maint_startup_loadguides") ----------------------------

	self:Startup_LoadGuides_Threaded()  -- may yield, then @coro_startup catches

	self:Debug("&startup Guides loaded. ---------")

	--[[
	self:Debug("Caching follow-ups...")
	self:CacheMentionedFollowups()
	self:Debug("Cached.")
	yield(1)
	--]]

	-- wait for asyncs to finish
	--while #ZGV.startup_async_threads and not ZGV.startup_async_threads.alldead do yield("waiting for asyncs...") end

	set_startup_flag("guides_loaded")
	run_startup_phase("after_guides")

	set_startup_flag("all")
	run_startup_phase("after_all")
	
	for i,startup in ipairs(self.startups) do  if not startup.done then  error("Startup: "..startup.name.." still not done!!!") end  end

	self.startups=nil  -- clear out, save memory

	self:Debug("&startup Startup modules (late) are done.")


	waitformaint("maint_startup_final") ----------------------------

	self.loading="Cleaning up..."
	--collectgarbage("step",10000)
	--yield("garbage collected? why?")

	--self.MagicKey:CreateFrame()
	--self.magickeytimer = self:ScheduleRepeatingTimer("SetMagicKey", 0.2)

	self.pause = true
	self.completiontimer = self:ScheduleRepeatingTimer("TryToCompleteStep", 0.1)
	self.maptimer = self:ScheduleRepeatingTimer("CacheCurrentMapID", 1.0)


	--if self.DEV then self:ScheduleRepeatingTimer("ThunderStageForceUpdate", 10.0) end -- TEMPORARY TIMING OF THUNDER ISLE

	--self.notetimer = self:ScheduleRepeatingTimer("ShowWaypoints", 1)
	--self.dailytimer = self:ScheduleRepeatingTimer("QuestTracking_ResetDailies", 5)

	--self:CancelTimer(self.startuptimer,true)


	--while self.LibRover and self.LibRover.startup_thread and not self.LibRover.ready do yield("waiting for Travel") end
	--while self.ItemScore and self.ItemScore.GearFinder and self.ItemScore.GearFinder.started and not self.ItemScore.GearFinder.cached do yield("waiting for GearFinder") end

	
	self:SendMessage("ZGV_GUIDES_PARSED", "done")

	self:Print(L['welcome_guides']:format(#self.registeredguides))

	self.Checklist:CatchEvent("_GUIDES_LOADED_")

	self:SetVisible(nil,self.db.profile.enable_viewer) -- didn't we do this already?
	self:UpdateFrame(true)

	ZGV.Licence:CheckExpirationPopup()

	if not ZGV.db.profile.delayed_startup then
		self:LoadInitialGuide()
	end

	self:SendMessage("ZGV_INITIAL_GUIDE_LOADED")

	if not self.db.profile.ranconfig2 then
		self.Config:Run()
	end



	self:Debug("Loading time - guides: %.2f",self.startuptimes["Loading guides"] or -1)
	self:Debug("Loading time - DEV: %.2f",self.loading_time_DEV or -1)
	self:Debug("Loading time - total: %.2f",self.startuptimes["Loading libs"]+self.startuptimes["Loading guides"]+self.startuptimes["Loading code"])

	--if ZGV.AnimatePopup then ZGV:ShowAnimatedPopup() end -- if we have animated popup, show it

	--collectgarbage()
	self.pause = nil
	return ("end")  -- VS Code Lua extension breaks on "return 'end'", unbelievable
end

-- This gets called every frame on startup, by MasterFrame. Needs to return true to confirm successful startup.
local thread
local startup_time=0
local startup_frames,startup_ticks=0,0
local last_gettime
local displayedInCombatWarning = false


ZGV.startuptimes={}
ZGV.startuptimes.index={}
function ZGV.startuptimes:View()
	local ret = {}
	for i,t in ipairs(self.index) do tinsert(ret,("%s = %.3f ms"):format(t,self[t])) end
	return ret
end
function ZGV.startuptimes:Add(k,v)
	self[k]=(self[k] or 0)+v
end
setmetatable(ZGV.startuptimes,{__newindex=function(t,k,v) tinsert(t.index,k) rawset(t,k,v) end})


ZGV.startuptimestamps={}
function ZGV.startuptimestamps:View()
	local ret = {}
	for k,t in pairs(self) do if tonumber(t) then tinsert(ret,{k,t}) end end
	sort(ret,function(a,b) return a[2]<b[2] end)
	local ret2={}
	for i,v in ipairs(ret) do ret2[i]=("%d (+%d): %s"):format(v[2],(i>1) and (v[2]-ret[i-1][2]) or 0,v[1]) end
	return ret2
end
function ZGV.startuptimestamps:Punch(name,time)
	self[name]=time or debugprofilestop()
end

function ZGV:ViewStartupTimes()
	return {timestamps=ZGV.startuptimestamps:View(),times=ZGV.startuptimes:View()}
end


local lastret,lastrettime=0,0
function ZGV:StartupStep()  -- called from MasterFrame
	if not last_gettime then last_gettime=GetTime() end
	if last_gettime==GetTime() then return end  -- ah-ha, NOT loaded then!
	if ZGV.IsRetail then
		if (UnitExists("player") and UnitInVehicle("player")) then self.loading_screen_disabled = true end -- Blizz... if we are in vehicle, loading_screen_disabled will never fire after loading
	end

	if UnitExists("player") then self.loading_screen_disabled=true end
	if not self.loading_screen_disabled then return end

	
	if not thread then
		thread = coroutine.create(_StartupThread)
		self:Debug("&startup Startup thread created.")
		return
	end

	-- If player is in combat, show a warning and wait for combat to end, since it breaks Pointer.
		if ZGV:IsPlayerInCombat() then
			if not displayedInCombatWarning then
				ZygorGuidesViewerFrameMaster:SetAlpha(0)
				self:Print("You are in combat! Zygor Guides will resume loading when you're safe again.")
				displayedInCombatWarning = true
			end
			return
		end 
		if displayedInCombatWarning then
			displayedInCombatWarning = false
			ZygorGuidesViewerFrameMaster:SetAlpha(1)
		end
	--

	startup_frames = startup_frames + 1

	local thistime=0
	local thisframet = debugprofilestop()
	if self.db.profile.debug_detailedstartup then self:Debug("&startup Startup frame %d...",startup_frames) end
	while debugprofilestop()-thisframet<self.STARTUP_INTENSITY do
		local t = debugprofilestop()

		if GetFramerate()<40 then ZGV.STARTUP_INTENSITY=5
		elseif GetFramerate()<60 then ZGV.STARTUP_INTENSITY=10
		else ZGV.STARTUP_INTENSITY=20 end

		local good,msg,progress,msg2 = resume(thread,max(0,self.STARTUP_INTENSITY-debugprofilestop()+thisframet))  -- THIS IS WHERE STARTUP THINGS HAPPEN. yield: msg,progress,msg2  -- @coro_startup
		t = debugprofilestop()-t	startup_ticks = startup_ticks + 1	startup_time=startup_time + t
		if self.db.profile.debug_detailedstartup or lastret~=msg then
			self:Debug("&startup &_SUB0 Startup frame %d tick %d |cffeeff88%s|r (%s%d%%) took |cffffeeaa%d|rms",startup_frames,startup_ticks,tostring(msg),msg2 and msg2.."; " or "",progress or 100,t)
			lastret=msg
			lastrettime=GetTime()
		end
		if GetTime()-lastrettime>STARTUP_SPAM_FREQUENCY then lastret=nil end

		self.startuptimes[msg or "?"]=(self.startuptimes[msg or "?"] or 0) + t

		if not good then
			self.loading=nil
			self:Print("ERROR initializing, check the Lua errors and report them, please.")
			error("ERROR in startup frame ".. startup_frames ..": ".. tostring(msg) .."\nin\n".. debugstack(thread),2)
			ZygorGuidesViewerFrameMaster:SetScript("OnUpdate",nil)
			break
		elseif status(thread)=="dead" then
			self:Debug("&startup COMPLETE!");
			self:Debug("Startup complete in %.2f (%d ticks in %d frames)",startup_time,startup_ticks,startup_frames)
			self:Debug("From file load to variables = %.2f",ZGV.timestamp_initing-ZGV.timestamp_loaded)
			self:Debug("Total startup (realtime) = %.2f",debugprofilestop()-ZGV.timestamp_initing)
			self.startuptimes['Total (realtime)']=debugprofilestop()-ZGV.timestamp_initing
			self.startuptimes['Total (pure)']=startup_time
			self.loading=nil
			self.initialized = true
			self.db.profile.hide_dev_once = false
			ZygorGuidesViewerFrameMaster:SetScript("OnUpdate",nil)
			break
		
		elseif msg and type(msg)=="string" and msg:find("waiting") then
			self:Debug("&startup Waiting: %s",msg)
		
			break
		
		elseif msg and msg==1 then
			self.master_forceupdate=true  -- that doesn't do anything anymore...
			self.loading=nil
			break
		else
			-- just happily continue
		end

		if self.db.profile.safe_startup then break end
	end
end

function ZGV:LOADING_SCREEN_DISABLED()
	self:Debug("LOADING_SCREEN_DISABLED! Let's go!")
	self.startuptimestamps:Punch("loading_screen_disabled")
	self.loading_screen_disabled=true
end

function ZGV:LOADING_SCREEN_ENABLED()
	self:Debug("LOADING_SCREEN_ENABLED! Freeze!")
	self.loading_screen_disabled=false
end

local temp_hidden
function ZGV:CINEMATIC_START()
	temp_hidden = self.Frame:IsShown()
	self.Frame:Hide()
end
function ZGV:CINEMATIC_STOP()
	self.Frame:SetShown(temp_hidden)
end

-- my event handling. Multiple handlers allowed, just for the heck of it.

local meta_newtables = {__index = function(tbl, key) tbl[key] = {} return tbl[key] end}
ZGV.Events=setmetatable({},meta_newtables)
function ZGV:AddEventHandler(event,handler)
	tinsert(self.Events[event],handler or true)
	if #self.Events[event]==1 then self:RegisterEvent(event,"EventHandler") end
end

function ZGV:AddMessageHandler(event,handler)
	tinsert(self.Events[event],handler or true)
	if #self.Events[event]==1 then self:RegisterMessage(event,"EventHandler") end
end

function ZGV:RemoveHandler(event,removehandler)
    for num,handler in ipairs(self.Events[event]) do
        if handler == removehandler then
            tremove(self.Events[event],num)
			return
        end
    end
end

function ZGV:EventHandler(event,...)
	for i,hand in ipairs(self.Events[event]) do
		local func
		if type(hand)=="function" then  -- call given function
			hand(self,event,...)
		elseif type(hand)=="string" then  -- call function in self by name
			assert(self[hand],"No function "..hand.." in event handler!")
			self[hand](self,event,...)
		elseif type(hand)=="table" then  -- call method in object, given as {object,"method"}
			assert(hand[1][hand[2]],"No function "..hand[2].." in given object!")
			hand[1][hand[2]](hand[1],event,...)
		elseif hand==true then  -- call self:EVENT_NAME
			assert(type(self[event])=="function","No function "..event.." in event handler!")
			self[event](self,event,...)
		else
			error("What's "..tostring(hand).."? Not a valid message/event handler!")
		end
	end
end


local UpdateCentral_Mixin = {}

function UpdateCentral_Mixin:AddHandler(handler)
	if type(handler)~="function" then error("Update handler "..tostring(handler).." is not a function") end
	tinsert(self.UpdateHandlers,handler)
end

function UpdateCentral_Mixin:RemoveHandler(removehandler)
	for num,handler in ipairs(self.UpdateHandlers) do
		if handler == removehandler then
			tremove(self.UpdateHandlers,num)
			return
		end
	end
end

function UpdateCentral_Mixin:AddHiding(object)
	if type(object)~="table" then error("Hiding handler "..tostring(object).." is not a frame") end
	ZGV:ScheduleTimer(function() 
		for num,obj in ipairs(self.HideObjects) do 
			if obj == object then return end
		end

		tinsert(self.HideObjects,object) 
	end,0)
end

function UpdateCentral_Mixin:RemoveHiding(removeobject)
	if type(removeobject)~="table" then error("Hiding handler "..tostring(removeobject).." is not a frame") end
	for num,object in ipairs(self.HideObjects) do
		if object == removeobject then
			tremove(self.HideObjects,num)
			return
		end
	end
end

function UpdateCentral_Mixin:OnUpdate(elapsed)
	for i,handler in ipairs(self.UpdateHandlers) do
		handler(elapsed)
	end
end

function UpdateCentral_Mixin:OnEvent(event)
	if event=="GLOBAL_MOUSE_UP" then -- special handler for GMU
		for i,object in ipairs(self.HideObjects) do
			if object and object:IsVisible() and not object:IsMouseOver() then object:Hide() end
		end
	end
end

function UpdateCentral_Mixin:Init()
	self.UpdateHandlers = {}
	self.HideObjects = {}
	self:SetScript("OnUpdate",self.OnUpdate)
	self:SetScript("OnEvent",self.OnEvent)
		self:RegisterEvent("GLOBAL_MOUSE_UP") -- we always track GMU to handle frame hiding. 
	end

ZGV.UpdateCentral = Mixin(CreateFrame("FRAME"),UpdateCentral_Mixin)
ZGV.UpdateCentral:Init()

--ZGV.UpdateCentral:AddHandler(function() print(GetTime()) end)


function ZGV:ForceReloadInitialGuide()
	self.CurrentGuide=nil
	self.db.char.guidename=nil
	self.db.char.step=nil
	self.db.char.tabguides=nil
	
	ReloadUI()
end

function ZGV:LoadInitialGuide(fastload)
	--if not self.guidesloaded then self:ErrorThrow("Guides failed to load! Cannot load initial guide.") return end
	if self.CurrentGuide then 
		self.Frame:SetSpecialState("normal")
		return 
	end

	--if self.db.char["starting"] then
	if ZGV.db.char.maint_startup_startguide then
		if self.db.char.guidename and string.find(self.db.char.guidename,"GOLD\\Crafting\\") then
			if ZGV.Goldguide then
				if ZGV.db.char.goldguide_crafting_guides[1] then
					local chore = ZGV.db.char.goldguide_crafting_guides[1].chore
					setmetatable(chore,{__index=ZGV.Goldguide.Crafting})
					--chore:GetRecipeReagents()
					ZGV.Goldguide.Crafting.GenerateGuide(chore)
				end
			else
				ZGV.Gold.generate_guide()
			end
		else
			ZGV:Debug("Loading initial guide: %s step %d",self.db.char.guidename or "?",self.db.char.step or 0)
			self:SetGuide(self.db.char.guidename,self.db.char.step)
		end

		if ZGV.db.char.unloadedguide then 
			self.Frame:SetSpecialState("select")
		elseif not self.CurrentGuide and not fastload then
			if self.db.char.tabguides and next(self.db.char.tabguides) then -- try loading one of existing tabs first
				local _,guidedata = next(self.db.char.tabguides)
				self:SetGuide(guidedata.title,guidedata.step)
			else -- look for starter guide
				self:Print("Finding proper starter section.")
				local gs = self:FindSuggestedGuides()
				if gs['LEVELING'] then gs=gs['LEVELING'] end
				if not gs or #gs==0 then
					self.Frame:SetSpecialState("select")
					self:Print("No guides suggested for your char. Please open guide menu and select the guide you want to use.")
				elseif #gs==1 then
					self:SetGuide(gs[1])
				else --many
					local was_excl
					for gi,guide in ipairs(gs) do
						if guide.condition_suggested_exclusive then
							self:SetGuide(guide)
							was_excl=true
							break
						end
					end
					if not was_excl then
						self:Print("There were "..#gs.." guides suggested. Loading first one.")
						self:SetGuide(gs[1])
					end
				end
				--self.db.char["starting"] = false
			end
		end
	end

	self:QuestTracking_CacheQuestLog("LoadInitialGuide")  -- just in case it didn't get cached before.

	self.frameNeedsResizing = 1
	self:AlignFrame()
	self:UpdateFrame(true)
end

ZGV.GuideTitles = {
	["SUGGESTED"]=L['guidepicker_suggested'],["RECENT"]=L['guidepicker_recent'],["SEARCH"]=L['guidepicker_searchresults'],
	["LEVELING"]=L['guidepicker_leveling'] ,
	["EVENTS"]=L['guidepicker_events'] ,
	["DAILIES"]=L['guidepicker_dalies'] ,
	["LOREMASTER"]=L['guidepicker_loremaster'] ,
	["GOLD"]=L['guidepicker_gold'] ,
	["PROFESSIONS"]=L['guidepicker_professions'] ,
	["PETSMOUNTS"]=L['guidepicker_pets'] ,
	["ACHIEVEMENTS"]=L['guidepicker_achievements'] ,
	["TITLES"]=L['guidepicker_titles'] ,
	["REPUTATIONS"]=L['guidepicker_reps'] ,
	["MACROS"]=L['guidepicker_macros'] ,
	["DUNGEONS"]=L['guidepicker_dungeon'] ,
	["GEAR"]=L['guidepicker_gear'] ,
}
setmetatable(ZGV.GuideTitles,{__index=function(i,v) return v end})

function ZGV:GetGuideByTitle(title)
	if not title then return end
	title = ZGV:SanitizeGuideTitle(title)  -- code-side fix for "common" guides.
	for i,v in ipairs(self.registeredguides) do
		if v.title==title then return v end
	end
end



-- ###########################################################################################################################################################
-- ###########################################################################################################################################################



ZGV.StepHistory = {}

function ZGV.StepHistory:Prune()
	local _gsh = ZGV.db.char.guidestephistory   if not _gsh then return end

	local to_remove={}
	for guide,history in pairs(_gsh) do
		if time()-(history.lasttime or 1548000000) > 86400*180  or  guide:find("SHARED\\")  then -- 6 months old, or it's a shared guide that shouldn't've been recorded here anyway
			tinsert(to_remove,guide)
		end
	end
	for i,guide in ipairs(to_remove) do _gsh[guide]=nil end
end

function ZGV.StepHistory:AddGuide(name)
	local _gsh = ZGV.db.char.guidestephistory
	_gsh[name] = _gsh[name] or {}
	local _gshn=_gsh[name]
	if _gshn[1] then _gsh[name]={['steps']=_gshn} _gshn=_gsh[name] end  -- convert old data
	_gshn.steps = _gshn.steps or {}
	_gshn.lasttime = time()
	return _gshn
end

function ZGV.StepHistory:AddStep(name,num)
	local _gshns = ZGV.db.char.guidestephistory[name].steps
	if _gshns[#_gshns]~=num then
		tinsert(_gshns,num)
	end
end

function ZGV.StepHistory:GetPreviousValidStep(name)
	local step
	local _gshns = ZGV.db.char.guidestephistory[name].steps
	local hlen = #_gshns
	local stepnum
	local backed=0
	local okaytostay
	repeat
		-- pop stepnum from history
		stepnum = _gshns[hlen-backed]

		-- valid number?
		if stepnum then
			-- history popped 'pop'erly, hurr durr

			-- get the step
			local s = ZGV.CurrentGuide.steps[stepnum]
			if s then
				backed = backed + 1
				step = s
			end
		else
			-- we broke history or it just ran out, whatever

			ZGV:Debug("step history broken, omg")


			-- TODO: Currently, when running out of history, we default to the first valid of the guide. Needs a message / confirmation.

			local s = ZGV.CurrentGuide:GetFirstValidStep()  -- always returns something, or breaks.
			if s then
				backed = hlen  -- rewind it all
				step = s
				okaytostay = true
			end
		end
	until step:AreRequirementsMet() and (step~=ZGV.CurrentStep or okaytostay)
	return step,backed
end

function ZGV.StepHistory:Back(name,num)
	local _gshns = ZGV.db.char.guidestephistory[name].steps
	local step
	for i=1,num do step=tremove(_gshns) end
	return step
end

function ZGV.StepHistory:HasHistory(name)
	local _gshns = ZGV.db.char.guidestephistory[name].steps
	return _gshns and #_gshns>0
end



-- ###########################################################################################################################################################
-- ###########################################################################################################################################################



function ZGV:SetGuide(name,step,hack,silent,source) --hack used for testing
	if not name then return end

	step=step or 1
	--self:Debug("SetGuide "..name.." ("..tostring(step)..")")

	ZGV.db.char.guideTurnInsOnly = false
	--[[ -- tabs say no more auto cleanup
	if ZGV.db.char.forceCleanUp then
		ZGV:ShowQuestCleanup(true) -- true = automated, will not show popup if there are no quests to abandon
		ZGV.db.char.forceCleanUp = false
	end
	--]]

	local guide
	if type(name)=="number" then
		local num = name
		if self.registeredguides[num] then
			guide = self.registeredguides[num]
		else
			self:Print("Cannot find guide number: "..num,nil,"FORCE")
			--return false
		end
	elseif type(name)=="string" then
		name = name :gsub("^Zygor's Alliance ","") :gsub("^Zygor's Horde ","")  -- code-side fix for "common" guides.
		:gsub("^Zygor's ","")

		guide = self:GetGuideByTitle(name)
		if not guide then
			self:Print("Cannot find guide: "..name,nil,"FORCE")
			self:Debug("Cannot find guide: %s",name)
			return false
		end
	else
		guide=name  --omg, object
	end

	--if guide.is_stored then guide = self.db.global.storedguides[name] end

	local err

	self:Debug("SetGuide to %s",guide.title)

	if guide then
		if source ~= nil then
			if not ZGV.GuideFuncs:IsValid(guide,nil,"rating",nil,nil,source) then return end
		else
		if not ZGV.GuideFuncs:IsValid(guide,nil,"setguide") then return end
		end

		-- unload guides
		if self.CurrentGuide and self.CurrentGuide~=guide then self.CurrentGuide:Unload() end

		guide:Parse(true)

		if guide.steps then
			--self.MapNotes = _G["ZygorGuides_"..faction.."Mapnotes"]
			local name = guide.title

			self.CurrentGuide = guide
			self.CurrentGuideName = name
			self.db.char.guidename = name

			self.StepHistory:Prune()
			self.StepHistory:AddGuide(name)


			-- History support moved to tabs:AssignGuide

			self.CurrentStep = nil
			self.CurrentStepNum = nil

			self.LastSkip = 1

			if guide.headerdata.singlestep then step=guide.headerdata.singlestep end

			local stepobj = guide:GetFirstValidStep(step) -- make sure it's valid
			if stepobj then
				--self:QuestTracking_ResetDailies(true)
				name=name:gsub(self.CurrentGuide.type,ZGV.GuideTitles[self.CurrentGuide.type]) -- make LEVELING-Leveling and such.
				
				 -- don't announce switched world quest guides
				if not silent then self:Print(L["message_loadedguide"]:format(name,step)) end
				self:Debug("Guide loaded: %s",name)

				self:SendMessage("ZGV_GUIDE_LOADED",guide.title)

				-- History support moved to tabs:AssignGuide

				self:FocusStep(stepobj.num,true)

				ZGV.Tabs.AddButton:UnlockHighlight()
			else
				err = "No valid steps!"
			end
		else
			err = "Guide not parsed"
		end
	else
		err = L["message_missingguide"]:format(name)
	end

	if err then
		self:Print("Unable to load guide "..guide.title..": "..err)
		self.db.char['guide'] = nil
		self.db.char['step'] = nil
		self.CurrentGuide = nil
		self.CurrentStep = nil
	end

	if self.CurrentGuide and not self.CurrentGuide.headerdata.shared and self.Sync:IsSlave() then  -- disable slave mode if user picks another guide
		self:Debug("&sync Guide changed to not shared, deactivating slave mode.")
		self.Sync:Deactivate()
	elseif self.CurrentGuide and self.CurrentGuide.headerdata.shared and not self.Sync:IsSlave() then 
		self:Debug("&sync Guide changed to shared, reactivating slave mode")
		self.Sync:ActivateAsSlave()
	end

	self.pause = nil
	self.completioninterval = self.completionintervaldefault

	-- Clear info about guide that was set to set to turn-ins-only mode 
	self.db.char.guideTurnInsOnly = false

	self:UpdateFrame(true)

	ZGV.ProgressBar:Update()
	ZGV.Tabs:UpdateCurrentTab()
end

function ZGV:FindSuggestedGuides()
	local suggested={}
	local suggroups={}
	for i,guide in ipairs(self.registeredguides) do
		local status=guide:GetStatus()
		if status=="SUGGESTED" then
			if not suggested[guide.type] then suggested[guide.type]={} end
			tinsert(suggested[guide.type],guide)
		end
		if guide.sugGroup and (status=="VALID" or status=="SUGGESTED") then
			if not suggroups[guide.sugGroup] then suggroups[guide.sugGroup]={} end
			tinsert(suggroups[guide.sugGroup],guide)
		end
	end
	return suggested,suggroups
end

function ZGV:GetGuideFolderInfo(folder)
	local suggest
	for i,guide in ipairs(folder.guides) do
		if guide.GetStatus and guide:GetStatus()=="SUGGESTED" then suggest=true end
	end
	if not suggest then
		for i,group in ipairs(folder.groups) do
			if self:GetGuideFolderInfo(group) then suggest=true end
		end
	end
	return suggest
end

-- function ZGV:SearchForCompleteableGoal() --removed

function ZGV:ClearRecentActivities()
	if not self.recentlyVisitedCoords then --First time, intialize them all as tables
		self.recentlyVisitedCoords = {}
		self.recentlyCompletedGoals = {}
		self.recentlyChangedGoals = {}
		self.recentlyCompletedQuests = {} --only for instant repeatables, which sucks.
		self.recentlyAcceptedQuests = {}
		self.recentlyStickiedGoals = {}
		self.recentGoalProgress = {}
		self.recentCooldownsPulsing = {}
		self.recentCooldownsStarted = {}
		self.recentlyHomeChanged = false
		self.recentlyDiscoveredFlightpath = false
		self.recentlyLearnedRecipes = {}
		self.recentKills = {}
	else --wipe them. Creating them new every time is silly.
		wipe(self.recentlyVisitedCoords)
		wipe(self.recentlyCompletedGoals)
		wipe(self.recentlyChangedGoals)
		wipe(self.recentlyCompletedQuests) --only for instant repeatables, which sucks.
		wipe(self.recentlyAcceptedQuests)
		wipe(self.recentlyStickiedGoals)
		wipe(self.recentGoalProgress)
		wipe(self.recentCooldownsPulsing)
		wipe(self.recentCooldownsStarted)
		self.recentlyHomeChanged = false
		self.recentlyDiscoveredFlightpath = false
		wipe(self.recentlyLearnedRecipes)
		wipe(self.recentKills)
		-- self.completedQuestTitles = {} -- let's not use this anymore, with GetQuestID available
	end
	self.step_share_onceflag = nil
end

function ZGV:FocusStep(num,forcefocus)
	if type(num)=="string" and self.CurrentGuide.steplabels then local s=num  num=self.CurrentGuide.steplabels[num]  if num then num=num[1] end  self:Debug("FocusStep: %s = %s",s,tostring(num))  end
	if type(num)=="table" then num=num.num end
	if not num or num<=0 then return end
	if not self.CurrentGuide then return end
	if not self.CurrentGuide.steps then return end
	if num>#self.CurrentGuide.steps then return end
	if self.CurrentGuide.headerdata.singlestep then num=self.CurrentGuide.headerdata.singlestep end

	--[[ CreatureViewer removal, 7.0
	ZGV.CreatureViewer.models={}
	ZGV.CreatureViewer.Frame:Hide()
	--]]
	local quiet
	self:Debug("FocusStep %d%s",num,(quiet and " (quiet)" or ""))

	if self.CurrentGuide.type ~= "SHARED" then  -- don't store history for those, it just doesn't work
		-- Record step into history
		if self.LastSkip>0 and self.CurrentStep then
			self.StepHistory:AddStep(self.CurrentGuide.title,self.CurrentStep.num)
			if self.db.char.guides_history[1] and self.db.char.guides_history[1][1]==self.CurrentGuide.title then
				self.db.char.guides_history[1][2]=self.CurrentStep.num
			end
		end
	end

	local prevFocus = (self.CurrentStep and self.CurrentStep.isFocused) or (not self.CurrentStep and true)

	-- clear previous step report label
	local prevguide,prevnum = (self.CurrentStep and self.CurrentStep.parentGuide.title),self.CurrentStepNum
	if self.CurrentStep then
		self.CurrentStep.reportlabel = nil
	end

	self.CurrentStepNum = num
	self.db.char.step = num
	self.CurrentStep = self.CurrentGuide.steps[num]
	self.CurrentGuide.CurrentStepNum = num

	if self.CurrentStep.score then
		if ZGV.completionstreak<3 then
			ZGV.BugReport.GuideRating:ShowGuideRating()
		else
			if not ZGV.BugReport.GuideRating.NoRatingFrame then
				ZGV.BugReport.GuideRating:CreateAltFrame()
				ZGV.BugReport.GuideRating.NoRatingFrame:Show()
			elseif not ZGV.BugReport.GuideRating.NoRatingFrame:IsVisible() then
				ZGV.BugReport.GuideRating.NoRatingFrame:Show()
			end
		end
	else
		ZGV.BugReport.GuideRating:HideRatingWidgets()
		if ZGV.db.char.scoredguides[ZGV.CurrentGuide.next] == "declined" then
			ZGV.db.char.scoredguides[ZGV.CurrentGuide.next] = nil
		end
	end

	local reportlabel = self.CurrentStep and ZGV.QuestDB.GetStepTag and (ZGV.QuestDB:GetStepTag(self.CurrentStep) or "").." " or ""
	reportlabel = reportlabel .. ("(From %s step %s, fast forward %s, skipping %s"):format(tostring(prevguide),tostring(prevnum),tostring(self.fastforward),tostring(self.skipping))

	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		if ZGV.CurrentGuide and (ZGV.db.char.guideTurnInsOnly == ZGV.CurrentGuide.title) then
			reportlabel = reportlabel .. ", guide in turnins only mode"
		end
			
		if (ZGV.db.char.SISquests and ZGV.db.char.SISguides) then
			local end_guide,end_step = ZGV.db.char.SISdestination[1],ZGV.db.char.SISdestination[2]
			reportlabel = reportlabel .. ", SIS running, destination "..end_guide.." step "..end_step
			if not ZGV.db.char.SISguides[ZGV.CurrentGuide.title] then
				reportlabel = reportlabel .. ", guide is not part of sis catchup"
			end
		end
	end	

	self.CurrentStep.reportlabel = reportlabel..")"

	self.Frame:StopFlashAnimation()  -- possibly prevent lines staying green from previous step

	if prevFocus or forcefocus then ZGV:SetStepFocus(self.CurrentStep) end

	self:ClearRecentActivities()

	-- Whoa whoa. The step might load a different guide at this point! Play safe.
	local cs=self.CurrentStep
	local cg=self.CurrentGuide
	self.CurrentStep:PrepareCompletion(true)
	self.CurrentStep:OnEnter()

	if (cs~=self.CurrentStep) or (cg~=self.CurrentGuide) then self:Debug("FocusStep: guide or step changed! bailing.") return end

	self.stepchanged = true

	self.CurrentStep.zombiewalk = false

	for i,goal in ipairs(self.CurrentStep.goals) do
		if goal:IsComplete() then
			self.recentlyCompletedGoals[goal]=true
			goal:SaveStickyComplete()
		end

		if goal.zombiewalk then self.CurrentStep.zombiewalk=true end
	end

	ZGV.Pointer:DoCorpseCheck() -- in case we need to handle zombiewalk
	
	local stepcomplete,steppossible = self.CurrentStep:IsComplete()
	if self.pause then
		if (self.db.profile.skipimpossible and not steppossible)
		--or (self.db.profile.skipobsolete and self.CurrentStep:IsObsolete())
		or (self.db.profile.skipauxsteps and self.CurrentStep:IsAuxiliarySkippable())
		then
			stepcomplete=true
			--self.pause=nil
		end
		self.LastSkip=1
		if not stepcomplete then
			self:Debug("unpausing")
			self.pause=nil
		end
	end
	--and self.LastSkip~=0) then self.AutoskipTemp=false else self.AutoskipTemp=true end


	-- add to last-guides history 
	--[[ Why? We do that it setguide, and we have set curret step already at the beggining of FocusStep
 	if not self.db.char.guides_history_ZGV45clear then self.db.char.guides_history={} self.db.char.guides_history_ZGV45clear=true end
	local history = self.db.char.guides_history
	local found
	for gi,guidestep in ipairs(history) do
		if guidestep[1]==self.CurrentGuide.title then guidestep[2]=self.CurrentStepNum found=1 break end
	end

	if not found then
		tinsert(history,{self.CurrentGuide.title,self.CurrentStepNum})
	end
	if #history>20 then tremove(history,1) end
	--]]

	-- TRACK QUESTS
	if ZGV.db.profile.autotrackquests then
		for gi,goal in ipairs(cs.goals) do
			if goal.questid then self:TrackQuest(goal.questid) break end
		end
	end


	-- SANITIZE MAPS. In case there's zoning involved.
	if cs.map then cs.map=self.Pointer:SanitizePhase(cs.map) end
	for gi,goal in ipairs(cs.goals) do
		if goal.map then goal.map=self.Pointer:SanitizePhase(goal.map) end
	end


	-- pre-fetch the next step's translation, this seems like a good place to do it
	local nextstep,stepnum,guide=self.CurrentStep:GetNextStep()
	if nextstep then nextstep:Translate() end


	self:SendMessage("ZGV_STEP_CHANGED",num)

	if not quiet then
		self:FocusStepUnquiet()
	end

	--self:TryToDisplayCreature()
	--self:UpdateMinimapArrow(true)

	--Hide goal image popup if it exists
	if ZGV.GoalPopupImageFrame then
		ZGV.GoalPopupImageFrame:Hide()
	end

	--Maybe show map preview
	if ZGV.db.profile.preview and (not GetPlayerFacing() or ZGV.db.char.fakeinstance) and ZGV.db.profile.preview_control=="step" then
		ZGV.PointerMap:ShowPreview()
	end

	if ZGV.Gold.Appraiser and ZGV.Gold.Appraiser.Loaded and ZGV.Gold.Appraiser.AddGuideItemsToBuy then
		ZGV.Gold.Appraiser:AddGuideItemsToBuy()
	end

	ZGV.Tabs:UpdateCurrentTab()

	-- if user changed guide/step, he may need to equip/dequip quest gear
	if not self.skipping then
		local goto_count = 0
		for gi,goal in ipairs(cs.goals) do
			if goal.map then goto_count=goto_count+1 end
		end
		if not (goto_count>0 and ZGV.db.profile.pathfinding) then
		-- no travel lines, or travel disabled, librover will not trigger, so finalise step
			self:SendMessage("ZGV_STEP_FINALISED")
		end
	end

	ZGV.QuestDB:MaybeShowButton()

	ZGV:UpdateFrameStepSkipping()
end

function ZGV:FocusStepQuiet(num)
	return self:FocusStep(num,true)
end

function ZGV:FocusStepUnquiet()
	self.Frame:StopFlashAnimation()
	self.frameNeedsResizing = self.frameNeedsResizing + 1
	self:UpdateFrame(true)
	--self:ScrollToCurrentStep()

	--self:UpdateCartographerExport()  -- moved to Waypoints where it belongs.
	
	self:GetFocusedStep():ResetCurrentWaypoint()
	self:ShowWaypoints()

	--[[
	-- Stickies don't get waypoints now.
	local stickies = self:GetStickiesAt(nil)
	for _,sticky in ipairs(stickies) do
		if not sticky:IsComplete() or self.CurrentStep:IsComplete() then self:ShowWaypoints("sticky",sticky) end
	end
	--]]
end

function ZGV:TrackQuest(id)
	local q = ZGV.questsbyid[id]
	if not q or not q.inlog then return end
	if ZGV.IsRetail then
		if not C_QuestLog.GetQuestWatchType(id) then
			C_QuestLog.AddQuestWatch(id, Enum.QuestWatchType.Manual)
			--WatchFrame_Update(self)
		end
		C_SuperTrack.SetSuperTrackedQuestID(q.id)
		-- WORLDMAP_SETTINGS.selectedQuestId = q.id -- TODO Reimplement
		QuestPOIUpdateIcons()
		--QuestPOI_SelectButtonByQuestId("WatchFrameLines", WORLDMAP_SETTINGS.selectedQuestId, true)
		--WorldMapFrame_SelectQuestById(q.id)
	else
		if not IsQuestWatched(q.index) then
			AddQuestWatch(q.index)
			--WatchFrame_Update(self)
		end
		SetSuperTrackedQuestID(q.id)
	end
end

function ZGV:PointToQuest(map,id)
	local _,x,y,obj = QuestPOIGetIconInfo(id)
	if x and y then
		self.Pointer:SetWaypoint(map,x,y)
	end
end

-- return step = step obj
-- return backed = num of valid history skips
function ZGV:GetPreviousValidStep()
	return self.StepHistory:GetPreviousValidStep(self.db.char.guidename)
end

function ZGV:PreviousStep(fast,forcefocus)
	if not self.CurrentGuide then return end

	if self.completionstreak==0 then ZGV.completioninterval=ZGV.completionintervallong end  -- first skip

	-- reset completion timers
	lastcompletion=GetTime()
	self.completionelapsed=0

	self.LastSkip = -1
	self.lastskip_rec = -1

	self.autopause = IsAltKeyDown() and IsControlKeyDown()

	local guidename = self.db.char.guidename

	local step,backed = self:GetPreviousValidStep(guidename)
	if self.autopause then step=self.CurrentGuide.steps[self.CurrentStepNum-1] end  -- HACK.
	if not step then return end

	self:Debug("PreviousStep to %d%s",step.num,(fast and ' (fast)' or ''))

	-- drop 'backed' history states
	self.StepHistory:Back(guidename,backed)

	if not self.StepHistory:HasHistory(guidename) then
		self.fastforward = false
		self.skipping = false
		self.pause = true
	else
		self.fastforward = fast
		self.skipping = fast
		self.pause = not fast
		if fast then self:SendMessage("ZGV_STARTED_SKIPPING") end
	end

	if self.autopause then self.pause=true self.fastforward=false end

	self:FocusStep(step,forcefocus)

	ZGV.ProgressBar:Update()
end

function ZGV:SkipStep(fast,hack,forcefocus) --Hack used for testing, forces showing endguide popup
	if not self.CurrentGuide then return end

	if self.completionstreak then ZGV.completioninterval=ZGV.completionintervallong end  -- first skip

	-- reset completion timers
	lastcompletion=GetTime()
	self.completionelapsed=0

	self.LastSkip = 1
	self.lastskip_rec = 1
	self.fastforward = fast
	self.skipping = fast
	if fast then self:SendMessage("ZGV_STARTED_SKIPPING") end

	local nextstep

	self.autopause = IsAltKeyDown() and IsControlKeyDown()

	if self.autopause then  -- forced next+1 step
		nextstep=self.CurrentGuide.steps[self.CurrentStepNum+1]
		self.CurrentStep.needsreload=nil
	end  -- HACK.

	if self.CurrentStep.needsreload then return self:ReloadStep(fast) end

	if not nextstep and not hack then  -- when not forced, that is: usually.
		local nextstep2,stepnum,guide

		if fast and self.db.profile.instantskip then nextstep2,stepnum,guide=self.CurrentStep:GetNextCompletableStep() self:Debug("Next completable step is: %d",stepnum)
		else
			nextstep2,stepnum,guide=self.CurrentStep:GetNextValidStep()
			if nextstep2 then self:Debug("Next valid step is: %d",nextstep2.num)
			elseif guide then self:Debug("Next valid step is: %d in %s",stepnum,guide.title)
			else self:Debug("Next valid step: none!")
			end
		end  -- always returns a step, unless we're at the end.

		if guide then
			--print("ABOUT TO JUMP GUIDES to:",guide,stepnum)
			self:SetGuide(guide,stepnum)
			return
		end
		nextstep=nextstep2
	end

	self:Debug("SkipStep to %s%s",(nextstep and nextstep.num or "?"),(fast and ' (fast)' or ''))

	if (not nextstep or hack) and (not self.CurrentGuide.headerdata.poiloader) --[[or (self.CurrentStep and (self.CurrentStep.num == #self.CurrentGuide.steps))--]] then
		-- final step
		self.pause = true
		self.fastforward = false
		if self.skipping then self:SendMessage("ZGV_STOPPED_SKIPPING") end
		self.skipping = false
		local nextguide
		if self.CurrentGuide.next then
			nextguide = ZGV:GetGuideByTitle(ZGV.CurrentGuide.next)
		end

	if nextguide and ZGV.completionstreak>3 and not hack then
		ZGV:SetGuide(ZGV.CurrentGuide.next)
		end
		return
	end

	self.pause = not fast
	if self.autopause then self.pause=true end

	self:FocusStep(nextstep,forcefocus) -- simple enough
	self:UpdateFrame(true)

	--[[
	else
		-- last step! or something went wrong and GetNextValidStep couldn't find anything to hop onto.

		--if self.CurrentStep.num == #self.CurrentGuide.steps then  -- never mind! assuming loss of next step = end of guide. Wondering if this is safe... ~sinus 2011-08-16
			self.pause = true
			self.fastforward = false
			if self.CurrentGuide.next then
				if not self.NextGuidePopup then
					self.NextGuidePopup = ZGV.PopupHandler:NewPopup("ZygorNextPopup","default")

					self.NextGuidePopup.noMinimize = 1 --Can not minimize this one
				end

				if self.NextGuidePopup.nextguide ~= self.CurrentGuide.next then
					self.NextGuidePopup.nextguide=self.CurrentGuide.next
					self.NextGuidePopup.OnAccept = function(self)
						ZGV:SetGuide(ZGV.NextGuidePopup.nextguide)
					end

					self.NextGuidePopup:SetText(L['dialog_nextguide']:format(self:GetShortGuideTitle(self.CurrentGuide.next)))
					self.NextGuidePopup:Show()
					self.NextGuidePopup.declinebutton:Show()
					self.NextGuidePopup.acceptbutton:Show()
					return
				end

				--self:SetGuide(self.CurrentGuide.next,1)
				--return
			elseif self.CurrentGuide.steps and #self.CurrentGuide.steps>1 then
				if not self.EndGuidePopup then
					self.EndGuidePopup = ZGV.PopupHandler:NewPopup("ZygorEndPopup","default")
					
					self.EndGuidePopup.declinebutton:Hide()
					ZGV.ChainCall(self.EndGuidePopup.acceptbutton)
						:ClearAllPoints()
						:SetPoint("BOTTOM",self.EndGuidePopup,"BOTTOM",0,5)

					self.EndGuidePopup.noMinimize = 1 --Can not minimize this one
				end

				self.EndGuidePopup:SetText(L['dialog_endguide'])
				self.EndGuidePopup:Show()
				return
			end
		--else
		--	error("Missed the end of the guide..?")
		--end
	end
	--]]

	ZGV.ProgressBar:Update()
end

function ZGV:NextGuide()

	local nextguide
	if self.CurrentGuide.next then
		nextguide = ZGV:GetGuideByTitle(ZGV.CurrentGuide.next)
	end

	if nextguide and ZGV.db.profile.n_popup_enable and ZGV.db.profile.n_popup_guides and not hack then
		nextguide:AdvertiseWithPopup()
	else ZGV.GuideMenu:Show()
	end
end

function ZGV:ReloadStep(fast)
	self.LastSkip=1
	self.pause = not fast
	self.fastforward = fast
	self.skipping = fast
	if fast then self:SendMessage("ZGV_STARTED_SKIPPING") end
	self.CurrentStep.needsreload = nil
	self:FocusStep(self.CurrentStepNum)
end

--- A quest is 'interesting' if any follow-ups to it appear anywhere in the guides and they're not gray.
-- As of 3.1, no follow-ups are tracked.

--[[
local followupcache={}
function ZGV:GetMentionedFollowups(questid)
	if followupcache[questid] then return followupcache[questid] end
	local q,f
	local live = {questid}
	local fups = {}
	local lev
	--self:Debug("Caching mentioned followups of "..questid)
	local cycles=0
	while #live>0 do
		cycles=cycles+1
		assert(cycles<1000,"Quest "..questid.." has infinitely resolving live followups: "..table.concat(live,","))

		q = tremove(live,1)
		lev = self.mentionedQuests[q]
		if lev then tinsert(fups,{q,lev}) end

		f = self.RevChains[q]
		if f then
			for i=1,#f do
				-- make sure there are no circular references
				if f[i]==questid then break end
				local found
				-- don't add stuff that's already in the live group
				for l=1,#live do if live[l]==f[i] or live[l]==questid then found=true break end end
				-- and don't add stuff that's already in followups
				if not found then for l=1,#fups do if fups[l][1]==f[i] then found=true break end end end
				if found then break end
				tinsert(live,f[i])

				--error("Circular quest reference: "..q.." requires "..f[i]..", already required by "..questid)  -- screw it, they MAY require old quests, just not in circles. Fix circles quietly.
			end
		end
		assert(#live<1000,"Quest "..questid.." has live followups > 1000: "..table.concat(live,","))
	end
	followupcache[questid]=fups
	return fups
end

-- A quest's "maximum chained level" can be safely cached, I guess.
-- MAY YIELD.
function ZGV:CacheMentionedFollowups()
	local f,maxlev
	self.maxQuestLevels = {}
	local count=0
	for qid,lev in pairs(self.mentionedQuests) do
		--self.loadprogress=count/30000
		count=count+1
		if count>100 then count=0 yield() end
		f=ZGV:GetMentionedFollowups(qid)
		for i=1,#f do
			if f[i][2]>lev then lev=f[i][2] end
		end
		self.maxQuestLevels[qid]=lev
	end
end
--]]

--- Attempt to complete current step.
-- 09-09-24:
local lastnextsuggested
local goalsneedanimating={}
ZGV.goalsneedanimating=goalsneedanimating

function ZGV:TryToCompleteStep(force)
	-- initial bail-out checks
		if not self.loading_screen_disabled then return end
		if not self.CurrentStep or not self.CurrentGuide then return end

		-- frame hidden? bail.
		if not self.Frame:IsVisible() or self.Frame:GetAlpha()<0.1 then return end
	--

	-- out-of-schedule check
		self.CurrentStep:CheckVisitedGotos()
	--

	--== prevent overtime checks. Only proceed with the completion once every self.completioninterval (which varies from self.completionintervallong to self.completionintervalmin).
		local t=GetTime()
		local elapsed=t-lastcompletion
		lastcompletion=t
		self.completionelapsed=self.completionelapsed+elapsed

		local interval=self.completioninterval
		if self.completionelapsed<interval and not force then  -- Too fast. Abort completion checks and, obviously, the subsequent skipping, too.
			return
		end
		self.completionelapsed = 0
	--

	local stepcomplete,steppossible = self.CurrentStep:IsComplete()

	local completing = stepcomplete


	-- smart skipping: treat invalid or impossible or skippable as completed
	if (not self.CurrentStep:AreRequirementsMet()
	or (self.db.profile.skipimpossible and not steppossible))
	and self.fastforward -- but only skip invalids/impossibles if we're already skipping forward!
	--or (self.db.profile.skipobsolete and self.CurrentStep:IsObsolete())
	--or (self.db.profile.skipauxsteps and self.CurrentStep:IsAuxiliarySkippable())
	then
		completing=true
		--self.pause=nil
	end

	-- never skip poi landing step
	if self.CurrentStep.ispoiloader then completing = false end

	if completing and self.Sync and self.Sync:IsEnabled() then
		if self.Sync:IsClearToProceed(self.CurrentStepNum) then -- check synced party members. Who is on the same step, but has it incomplete?
			ZGV.Sync:Debug("Party members completed the step, moving on.")
		else
			ZGV.Sync:Debug("Waiting for party members to complete step.")
			completing = false
		end
	end

	if not completing then
		interval = self.completionintervaldefault
		self.pause=nil
	end

	local confirmcompleted = false
	local confirmfound = false
	wipe(goalsneedanimating)
	local step = self.CurrentStep
	for i,goal in ipairs(step.goals) do  if goal:IsCompleteable() then
		local iscomplete,ispossible,done,needed = goal:IsComplete()
		if iscomplete and not self.recentlyCompletedGoals[goal] then
			self.recentlyCompletedGoals[goal] = true
			goalsneedanimating[goal] = true
			goal:OnCompleted()
			self:SendMessage("ZGV_GOAL_COMPLETED",step.num,i)
			self:Debug("Goal completed: step %d goal %d",step.num,i)
		elseif not iscomplete and self.recentlyCompletedGoals[goal] then
			self.recentlyCompletedGoals[goal] = false
			goalsneedanimating[goal] = nil
			goal:OnUncompleted()
			self:SendMessage("ZGV_GOAL_UNCOMPLETED",step.num,i)
			self:Debug("Goal uncompleted: step %d goal %d",step.num,i)
		end

		if self.recentGoalProgress[goal]==nil then self.recentGoalProgress[goal]=done end
		if self.recentGoalProgress[goal]~=done and (goal.action~="goto" or (self.recentGoalProgress[goal]==1 ~= done==1)) then  -- announce and animate anything BUT a goto.
			goal.dirtytext=true
			goalsneedanimating[goal]=true
			self:SendMessage("ZGV_GOAL_PROGRESS",step.num,i)
			self:Debug("Goal progress: step %d goal %d progress %d->%d",step.num,i,self.recentGoalProgress[goal] or -1,done or -1)
		end
		self.recentGoalProgress[goal] = done

		if goal.action == "confirm" and goal.always then
			confirmfound = true
			if goal.status == "complete" then confirmcompleted = true end
		end
	end end
	if confirmfound and confirmcompleted ~= true then completing = false end

	if self.pause or self.db.profile.dontprogress then
		interval = self.completionintervaldefault
		self.LastSkip = 1
		self.completionstreak=0
	else
		if completing then
			--self.recentlyCompletedQuests = {} -- forget it! We're skipping the step, already.
			self:Debug("Skipping step: %d (%s)",self.CurrentStepNum,(stepcomplete and "complete" or (steppossible and "possible?" or "impossible")))
			local s=""
			for gn,goal in ipairs(self.CurrentStep.goals) do s=s..goal:GetDebugDump().."\n" end
			self:Debug("Skipped goals were:\n%s",s)

			if self.lasttriedstep and self.lasttriedstep==self.CurrentStep and not self.lastwascompleted then
				--newly completed!
				PlaySound(self.db.profile.completesound)
				if self.db.profile.flashborder then
					self.delayFlash=1
				end
			end

			-- do, do, do the SKIP!
			if self.LastSkip<0 then 
				self:PreviousStep(true) 
			else 
				if not ZGV.QuestDB:MaybeStopOnThisStep() then -- unless not
					self:SkipStep(true) 
				end
			end
			if not self.fastforward then interval=self.completionintervallong end -- first skip, set speed to slow and begin speeding up.

			self.fastforward=true

			interval = interval * self.completionintervalspeed
			if interval<self.completionintervalmin then interval=self.completionintervalmin end
			self.completionstreak=self.completionstreak+1
			--skipped=skipped+1
			--if skipped>100 then break end

			--self:UpdateFrame()
			--updated=true

			--self.completioninterval = self.completionshortinterval


			--ZygorGuidesViewerFrame_CoverFlash_blink:Play()

			--stepcomplete = self.CurrentStep:IsComplete()
		else
			interval = self.completionintervaldefault
			self.pause=nil
			self.fastforward=nil
			if self.skipping then self:SendMessage("ZGV_STOPPED_SKIPPING") end
			self.skipping = false
			self.LastSkip = 1
			self.completionstreak = 0
			--self.completioninterval = self.completionlonginterval
		end

		--[[
		if updated and not self.db.profile.showallsteps then
			self.stepframes[1].slideup:Play()
		end
		--]]

		--if not stepcomplete then self.AutoskipTemp=true end

		--if not updated then self:UpdateFrame() end
	end

	-- self:MaybeSuggestNextGuide()  -- Patch 7.3.5: don't suggest next levels. Players progress to the end of the guide, always. It doesn't make much sense to skip. TODO: detect when they've actually outleveled the current zone!
	self:UpdateFrame()

	self.lasttriedstep = self.CurrentStep
	self.lastwascompleted = stepcomplete

	self.completioninterval = interval
end

function ZGV:MaybeSuggestNextGuide()
	--if self.CurrentGuide.title:find("Pandaria 85") then return end  -- don't suggest when in there. simple. -- 6/25/2013 We can suggest Pandaria again.
	-- And now check if the next guide is up for suggesting.
	-- However, don't bother suggesting others when we're exclusive and still suggested.
	-- Also, do not show the suggest if we are on last step of the guide, we will soon switch anyway and we avoid issues with popup queue

	if self.CurrentGuide.condition_suggested_exclusive then return end
	if self.CurrentStepNum == #self.CurrentGuide.steps then return end  -- proceed normally

	-- ELSE...
	local nextguidetitle = self.CurrentGuide.next
	if not nextguidetitle or ZGV.db.char.ignoredguides[nextguidetitle] or (ZGV.tempguideblock and ZGV.tempguideblock[nextguidetitle]) then return end  -- boo.

	local nextguide = self:GetGuideByTitle(nextguidetitle)
	if nextguide then
		local nextsuggested = (nextguide:GetStatus()=="SUGGESTED")
		ZGV.suggesting = nextsuggested
		if not lastnextsuggested and nextsuggested and self.db.profile.n_popup_guides then -- plain guide popup block is in AWP
			nextguide:AdvertiseWithPopup()
		end
		lastnextsuggested = nextsuggested
	end
end

function ZGV:InitializeDropDown(frame)
	if not self.guidesloaded then return end

	local guides = ZygorGuidesViewer.registeredguides

	if not guides then return end

	for i,guide in ipairs(guides) do

--		ChatFrame1:AddMessage(section)
		local info = {}
		info.text = guide.title
		info.value = guide.title
		info.func = ZGVFSectionDropDown_Func
		if (self.CurrentGuideName == guide.title) then
			info.checked = 1
		else
			info.checked = nil
		end
		info.button = 1
--		if (i == 1) then
--			info.isTitle = 1
--		end
		UIDropDownFork_AddButton(info)
	end
	UIDropDownFork_SetText(frame, self.CurrentGuideName)
end


function ZGV:UpdateLocking()
	self.Frame:UpdateLocking()
end

--[[
function ZGV:HideCooldown(arg)
	arg.cooldown:Hide()
	self.recentCooldownsPulsing[goal] = 2
end
--]]



--local function gradientRGBA(f,t,p)  --removed

function ZGV:SetDisplayMode(mode)
	self.db.profile.displaymode=mode
	self:UpdateFrame(true)
end

local getstickies_temp={}
function ZGV:GetStickiesAt(stepnum,show_complete)
	local changed = false
	for _,stickystep in ipairs(getstickies_temp) do
		if stickystep:IsComplete() or not stickystep:CanBeSticky() then
			changed = true
		end
	end

	stepnum = stepnum or self.CurrentStepNum
	local step = self.CurrentGuide.steps[stepnum]
	wipe(getstickies_temp)
	if step.stickies then
		for _,stickystep in ipairs(step.stickies) do
			if (show_complete or not stickystep:IsComplete()) and stickystep:CanBeSticky() then
				tinsert(getstickies_temp,stickystep)
			end
		end
	end
	return getstickies_temp,changed
end

local Tpi=6.2832
local cardinals = {"N","NW","W","SW","S","SE","E","NE","N"}
local function GetCardinalDirName(angle)
	for i=1,9 do
		if Tpi*((i*2)-1)/16>angle then return cardinals[i] end
	end
end
local function GetCardinalDirNum(angle)
	while angle<0 do angle=angle+Tpi end
	while angle>Tpi do angle=angle-Tpi end
	local ret=1
	for i=1,16 do
		if Tpi*((i*2)-1)/32>angle then ret=i break end
	end
	return ret
end

local itemsources={"vendor","drop","ore","herb","skin"}

local gold_ox,gold_oy=0,0

ZGV.actionicons={
	["accept"]=5,
	["turnin"]=6,
	["kill"]=7,
	["from"]=7,
	["get"]=8,
	["collect"]=8,
	["goldcollect"]=8,
	["goldtracker"]=8,
	["buy"]=8,
	["goal"]=9,
	["home"]=10,
	["fpath"]=11,
	["goto"]=12,
	["talk"]=13,
	["next"]=14,
	["poi_treasure"]=15,
	["poi_rare"]=16,
	["poi_questobjective"]=8,
	["poiannounce"]=0,
	["poiaccess"]=0,
	["poicurrency"]=0,
	["image"]=9,
}
setmetatable(ZGV.actionicons,{__index=function() return 2 end})


function ZGV:UpdateFrame(full,onupdate)
	do return self:DoUpdateFrame(full,onupdate) end  -- bandaid bypass
	self.updateframe_dirty=true
	self.updateframe_dirty_full=full
	self.updateframe_dirty_onupdate=onupdate
	if not self.updateframetimer then self.updateframetimer = self:ScheduleRepeatingTimer("UpdateFrame_Schedule", 0.01) end
end

function ZGV:UpdateFrame_Schedule() -- called each frame
	if self.updateframe_dirty then
		self:DoUpdateFrame(self.updateframe_dirty_full,self.updateframe_dirty_onupdate)
		self.updateframe_dirty=false
		self.updateframe_dirty_full=nil
		self.updateframe_dirty_onupdate=nil
	end
end

function ZGV:DoUpdateFrame(full,onupdate)
	if full then self.stepchanged=true end

	if not self.Frame or not self.Frame:IsVisible() then return end

	ZGV.Licence:CheckExpirationWarning()

	--if InCombatLockdown() then return end
	--[[
	--		self.Frame:SetAlpha(0.5)
		return
	else
	--		self.Frame:SetAlpha(1.0)
	end
	--]]

	--self:Debug("updatemini")

	--if ZygorGuidesViewerMiniFrame_bdflash:IsPlaying() and not ZygorGuidesViewerMiniFrame_bdflash:IsDone() then return end

	self.db.profile.displaymode="guide"

	local focusedstep = ZGV:GetFocusedStep()

	--if self.loading then ZygorGuidesViewerFrame_Border_GuideBack_SectionTitle:SetText(self.loading:format((self.loadprogress or 0)*100)) end
	
	--self.Frame.Border.Gold:Hide() - bfa alpha change unused frame

	self.do_showwaypoints_after_updateframe = false
	
	if ZGV.BugReport.GuideRating.GuideRatingViewer and ZGV.BugReport.GuideRating.GuideRatingViewer:IsVisible()
		and (ZGV.Frame.Border:GetHeight() < 274) and (not ZGV.BugReport.GuideRating.ZygorPopup or not ZGV.BugReport.GuideRating.ZygorPopup:IsVisible()) then
			ZGV.BugReport.GuideRating:ShowGuideRating()
	end

	if ZGV.BugReport.GuideRating.ZygorPopup and ZGV.BugReport.GuideRating.ZygorPopup:IsVisible() and ZGV.Frame.Border:GetHeight() >= 274 then
		ZGV.BugReport.GuideRating:ShowGuideRating()
		ZGV.BugReport.GuideRating.ZygorPopup:Hide()
		ZGV.BugReport.GuideRating.ZygorPopupOn:Hide()
	end

	local Scroll = self.Frame.Controls.Scroll

	if self.CurrentGuide and self.CurrentGuide.steps and self.CurrentGuide.fully_parsed then
		
		self.Frame.Border.Toolbar:Show()
		--if full then
		self.Frame.Border.Toolbar.StepNum.Step:SetText(self.CurrentStepNum)
		--ZygorGuidesViewerFrame_Border_GuideBack_SectionTitle:SetText(self.CurrentGuide.title_short)
		--end
		
		local showallsteps = (self.db.profile.showcountsteps==0)

		Scroll:Show()

		local stepnum,stepdata

		local firststep = (showallsteps and math.floor(Scroll.Bar:GetValue()) or self.CurrentStepNum) or 1
		firststep=max(1,firststep)
		local laststep = showallsteps and #self.CurrentGuide.steps or self.CurrentStepNum+self.db.profile.showcountsteps-1
		laststep=min(laststep,#self.CurrentGuide.steps)
		local diff = #self.CurrentGuide.steps - laststep
		if self.db.profile.showcountsteps > 1 then
			if laststep == #self.CurrentGuide.steps then
				laststep = min(laststep,#self.CurrentGuide.steps) - diff - 1
			end
		end

		--self:Debug("first step "..firststep..", last step "..laststep)
		-- run through buttons and assign steps for them

		local nomoredisplayed=false

		
		local stickies
		if self.db.profile.stickyon and (self.db.profile.stickydisplay==3 or self.db.profile.stickydisplay==4) and not showallsteps then
			stickies,changed = self:GetStickiesAt(firststep)
			if changed then
				self:SendMessage("ZGV_STEP_CHANGED",num)
			end
		end
		ZGV.CurrentStickies = stickies

		-- FIRST, assign steps to frames.
			
			-- automate adding steps to stepframes. Refuse to add completed stickies, or wrong steps.
				ZGV.Frame:ClearSteps()

			-- "First" step goes, well, first.
				ZGV.Frame:AddStep(self.CurrentGuide.steps[firststep])
			
			-- Now the stickies that accompany it, if any.
				if stickies then
					for _,sticky in ipairs(stickies) do
						ZGV.Frame:AddStep(sticky,"sticky")  -- completed stickies will be ignored
					end
				end

			-- And now any future steps, if any.
				for stepnum=firststep+1,laststep do  ZGV.Frame:AddStep(self.CurrentGuide.steps[stepnum])  end

				ZGV.Frame:HideRemainingSteps()

			-- Clear out steps from further frames.
			-- no need, they're not even shown
				--for f=self.framenum,self.StepLimit do self.stepframes[f].step=nil self.stepframes[f].stepnum=nil end

		-- All steps are assigned to their stepframes!

		-- SECOND, display frames.

		--[[ DO NOT REATTACH.
			for stepframenum = 1,self.StepLimit do
				local frame = self.stepframes[stepframenum]
				local prevframe = self.stepframes[stepframenum-1]
				if prevframe then
					if (prevframe.step and prevframe.step:IsComplete()) or prevframe:GetHeight()==0 then
						local attachable_frame = find_attachable_frame(stepframenum)
						frame:SetPoint("TOPLEFT",attachable_frame,"BOTTOMLEFT",0,-ZGV.STEP_SPACING)
						frame:SetPoint("TOPRIGHT",attachable_frame,"BOTTOMRIGHT",0,-ZGV.STEP_SPACING)
					else
						frame:SetPoint("TOPLEFT",prevframe:GetName(),"BOTTOMLEFT",0,-ZGV.STEP_SPACING)
						frame:SetPoint("TOPRIGHT",prevframe:GetName(),"BOTTOMRIGHT",0,-ZGV.STEP_SPACING)
					end
				end
			end
		--]]


		self.stepchanged=false

		--self:HighlightCurrentStep()

		-- steps displayed, clear the remaining slots

	else -- no current guide?

		--[[
		Scroll:Hide()
		ZGV.Frame.Border.Toolbar:Hide()
		local guides = self:GetGuides()
		if #guides>0 then
			ZGV:Print(L["guide_notselected"])
		else
			ZGV:Print(L["guide_notloaded"])
		end
		for i,stepframe in ipairs(self.stepframes) do stepframe:Hide() end
		self.ProgressBar:Hide()
		minh=0
		--]]
	end

	--if self.Frame:GetHeight()<minh-0.01 then self.Frame:SetHeight(minh) end

	self:ResizeFrame()
	self.Frame:ShowSpecialState()

	if self.do_showwaypoints_after_updateframe then
		self:ShowWaypoints()  
	end

	if self.delayFlash and self.delayFlash>0 then
		self.delayFlash=2 --ready to flash!
		--ZygorGuidesViewerFrame_bdflash:StartRGB(1,1,1,1,0,1,0,1)
	end
end


function ZGV:SetFrameScale(scale)
	scale = self.db.profile.framescale
	self.Frame:SetScale(scale)
end

function ZGV:ReanchorFrame()
	local frame = self.Frame
	local framemaster = frame:GetParent()
	local upsideup = not self.db.profile.resizeup


	local tabbar_height = 2
	if #ZGV.registeredmapspotsets>0 then
		tabbar_height = 20
	end


	frame:ClearAllPoints()
	local tabh = ZGV.Frame.Border.TabContainer:GetHeight()

	if frame.sizedleft then
		local q,w,e,x,y = framemaster:GetPoint()
		framemaster:ClearAllPoints()
		framemaster:SetPoint(q,w,e,x+frame:GetLeft()-frame.sizedleft,y)
		frame.sizedleft=nil
	end

	if upsideup then
		--frame:SetPoint("TOP",nil,"TOP",(left+right)/2-(uiwidth/2/scale),top-uiheight/scale)
		--frame:SetPoint("TOP",frame:GetParent(),"BOTTOMLEFT",left+width/2,top)
		frame:SetPoint("TOPLEFT",framemaster)
		frame:SetClampRectInsets(0,0,-48-tabh,0)
	else
		--frame:SetPoint("BOTTOM",nil,"BOTTOM",(left+right)/2-(uiwidth/2/scale),bottom)
		--frame:SetPoint("BOTTOM",frame:GetParent(),"BOTTOMLEFT",left+width/2,bottom)
		frame:SetPoint("BOTTOMLEFT",framemaster)
		frame:SetClampRectInsets(0,0,0,48+tabh)
	end

	--frame:UpdateMiniMode()
end

function ZGV:AlignFrame()
	self.Frame:AlignFrame()
	ZGV.F.SaveFrameAnchor(self.Frame:GetParent(),"frame_anchor")
end

function ZGV:ApplySkin()
	self.Frame:ApplySkin()
end

local resizing
function ZGV:ResizeFrame(source)
	if not self.Frame or not self.db then return end

	-- protect from self-calling, and reset it the next frame
	if resizing then return end
	resizing=true
	C_Timer.After(0.001,function() resizing=false self.frameNeedsResizing=0 end)
	
	--[[
	if self.frameNeedsResizing then
		if self.frameNeedsResizing>0 then self.frameNeedsResizing = self.frameNeedsResizing - 1 end
		if self.frameNeedsResizing>0 then return nil end
	end
	--]]

	--ZygorGuidesViewerFrame_Border:SetBackdropColor(self.db.profile.skincolors.back[1],self.db.profile.skincolors.back[2],self.db.profile.skincolors.back[3],self.db.profile.backopacity)

	local ctrls = self.Frame.Controls
	local Scroll = ctrls.Scroll
	local StepContainer = ctrls.StepContainer

	--self:Debug("resizing from "..tostring(ZygorGuidesViewerFrame:GetHeight()))
	--if not self.CurrentStepNum or not _G['ZygorGuidesViewerFrame_Step'..self.CurrentStepNum] then return end

	local MAX_CONTENT_HEIGHT=600

	--print("--- RESIZE:")

	local function CalculateHeight()
		local last_bottom=false
		local sc_width = StepContainer:GetWidth()
		if self.Frame.Controls.DefaultStateButton:IsShown() then return self.Frame.Controls.DefaultStateButton.min_height end
		for i,stepframe in ipairs(self.Frame.stepframes) do  if stepframe:IsShown() then
			stepframe:SetWidth(sc_width)
			stepframe:AdjustHeight()
			last_bottom = stepframe:GetBottom()
			--if i>1 then contentheight = contentheight + SkinData("StepStickyBarSpace")+SkinData("StepStickyBarHeight")+SkinData("StepStickyBarSpace")  end
			--if i>1 then height = height + SkinData("StepSpacing") + (stepframe.is_sticky and SkinData("StepStickyBarSpace")+SkinData("StepStickyBarHeight")+SkinData("StepStickyBarHeight") or 0) end
			--contentheight = contentheight + stepframe:GetHeight()
		end end
		if not last_bottom then return 0.1 end
		local height = self.Frame.stepframes[1]:GetTop() - last_bottom
		--print(("h = %d"):format(height))
		return height
	end

	local CONTROLS_HEIGHT = SkinData("TopHeight")+SkinData("TabsHeight")+SkinData("ProgressBarSpaceHeight")
	local autoresize = not self.db.profile.fixedheight and self.db.profile.showcountsteps~=0
	local allstepsmode = self.db.profile.showcountsteps==0

	local MIN_SCROLLABLE_CONTENT_HEIGHT = 80
	if self.Frame.SetResizeBounds then
		self.Frame:SetResizeBounds(MIN_WIDTH,CONTROLS_HEIGHT+(autoresize and 0 --[[n/a]] or MIN_SCROLLABLE_CONTENT_HEIGHT),MAX_WIDTH,CONTROLS_HEIGHT+MAX_CONTENT_HEIGHT)
	else
	self.Frame:SetMinResize(MIN_WIDTH,CONTROLS_HEIGHT+(autoresize and 0 --[[n/a]] or MIN_SCROLLABLE_CONTENT_HEIGHT))
	self.Frame:SetMaxResize(MAX_WIDTH,CONTROLS_HEIGHT+MAX_CONTENT_HEIGHT)
	end

	-- calculate full wide height
	--print("Try: full width")
	StepContainer:SetWidth(Scroll:GetWidth())
	local contentheight = CalculateHeight()  --print("height a:",contentheight)
	StepContainer:SetHeight(contentheight)

	local adjusted_contentheight
	if autoresize then
		if ZGV.CurrentGuide and ZGV.CurrentStep.score then
			if source == "ratingframe" then
				adjusted_contentheight = 244
				ZGV:ScheduleTimer(function()
					ZGV.BugReport.GuideRating.GuideRatingViewer:Show()
				end, 0.1)
	--		elseif source == "cancelledframe" then
	--			adjusted_contentheight = 115
	--			ZGV:ScheduleTimer(function()
	--				ZGV.BugReport.GuideRating.CancelledRatingFrame:Show()
	--			end, 0.1)
			end

			if ZGV.BugReport.GuideRating.NoRatingFrame and ZGV.BugReport.GuideRating.NoRatingFrame:IsVisible() then
				adjusted_contentheight = 125
			elseif ZGV.BugReport.GuideRating.CancelledRatingFrame and ZGV.BugReport.GuideRating.CancelledRatingFrame:IsVisible() then
				adjusted_contentheight = 115
			elseif ZGV.BugReport.GuideRating.GuideRatingViewer and ZGV.BugReport.GuideRating.GuideRatingViewer:IsVisible() then
				adjusted_contentheight = 244
			end

		else adjusted_contentheight = min(contentheight,MAX_CONTENT_HEIGHT)
		end
		if contentheight_got_adjusted then
			--print(("adj h to %d"):format(adjusted_contentheight))
		else
			--print("adj h? no")
		end
		if adjusted_contentheight ~= nil then local height = max(adjusted_contentheight + CONTROLS_HEIGHT, MIN_HEIGHT)
		self.Frame:SetHeight(height ) end
	
	else

		-- do we need the scrollbar?
		local scrollbar_needed = allstepsmode or contentheight>Scroll:GetHeight()+0.1 or contentheight>MAX_CONTENT_HEIGHT
		local cur_h = Scroll:GetHeight()
		if scrollbar_needed and cur_h<MIN_SCROLLABLE_CONTENT_HEIGHT then
			-- WHY!? :(
			-- Enlarge the frame even in scrolly mode :(
			adjusted_contentheight = max(cur_h,min(contentheight,MIN_SCROLLABLE_CONTENT_HEIGHT))
			--print("adj contentheight = ",math.round(adjusted_contentheight))
			local height = adjusted_contentheight
			self.Frame:SetHeight(height-0.1 + CONTROLS_HEIGHT )
			-- do we STILL need the scrollbar?
		else
			--print("scrollbar not needed: sn",scrollbar_needed and "yes" or "no","ch",math.round(contentheight))
		end
	end

	local scrollbar_needed = allstepsmode or contentheight>Scroll:GetHeight()+0.1 or contentheight>MAX_CONTENT_HEIGHT
	if scrollbar_needed then
			-- enable the scrolls and resize the container
		local barsize = SkinData("ScrollBarButtonSize") or {16,16}
		StepContainer:SetWidth(Scroll:GetWidth()-barsize[1])
		--print("Try: with scrollbar")
		contentheight = CalculateHeight() --print("height b:",contentheight)
		StepContainer:SetHeight(contentheight)

		-- set scroll range
		if allstepsmode then
			Scroll.Bar:SetMinMaxValues(1,ZGV.CurrentGuide and #ZGV.CurrentGuide.steps)
		else
			Scroll.Bar:SetMinMaxValues(0,Scroll:GetScrollRange())
		end
		Scroll.Bar:SetValue(Scroll.Bar:GetValue())
		Scroll.Bar:Show()
		Scroll.Bar.ThumbTexture:Show()
	else
		--print(("scroll not needed; ch %d < sc %d"):format(contentheight,Scroll:GetHeight()))
		Scroll.Bar:Hide()
	end

	--print(("Content: %d"):format(math.round(StepContainer:GetHeight())))
	--print(("Scroll: %d"):format(math.round(Scroll:GetHeight())))

	--local tabh = ZGV.Frame.Border.TabContainer:GetHeight()


	-- do not call this on the same frame, as getwidth/height inside will be broken
	-- self:ScheduleTimer(function() ZGV.ProgressBar:Refresh() end,0)
	


		--self:Debug(("%d %d"):format(left,bottom))
	--		ZygorGuidesViewerFrame:SetHeight(ZygorGuidesViewerFrame_Text:GetHeight()+35)


	--	if ZygorGuidesViewerFrame_ActiveStep_Line1:GetTop() then
			--ZygorGuidesViewerFrame_Resize.max = ZygorGuidesViewerFrame_Line1:GetTop()-ZygorGuidesViewerFrame_TextInfo2:GetBottom()+35
			--ZygorGuidesViewerFrame_Resize:Stop()
			--ZygorGuidesViewerFrame_Resize:Play()

	--		ZygorGuidesViewerFrame:SetHeight(ZygorGuidesViewerFrame_ActiveStep_Line1:GetTop()-ZygorGuidesViewerFrame_TextInfo2:GetBottom()+35)
	--	end

	--	end

--	end

end

function ZGV:GoalProgress(goal)
	return "epic fail"
end

function ZGV:ScrollToCurrentStep()  -- deprecated: no more scrolling
	do return end
--	if self.ForceScrollToCurrentStep and self.CurrentStep then
--		self.ForceScrollToCurrentStep = false
		if self.CurrentStep and self.db.profile.displaymode=="guide" then

			local height=0
			local step
			if self.db.profile.showcountsteps==0 then
				local topstep = self.Frame.stepframes[1] and self.Frame.stepframes[1].stepnum
				if not topstep then return end
				if topstep>self.CurrentStepNum --above
				or (topstep+self.StepLimit-1<self.CurrentStepNum) --way below
--				or (ZygorGuidesViewerFrame_Step1:GetTop()-_G['ZygorGuidesViewerFrame_Step'..(self.CurrentStepNum-topstep+1)]:GetBottom()+ZGV.STEP_SPACING>ZygorGuidesViewerFrameScroll:GetHeight()) --barely offscreen
				or not self.Frame.stepframes[self.CurrentStepNum-topstep+1]
				or not self.Frame.stepframes[self.CurrentStepNum-topstep+1]:IsShown()
				or self.Frame.stepframes[self.CurrentStepNum-topstep+1].truncated
				then
					self.Frame.Scroll.Bar:SetValue(self.CurrentStepNum)
					self.Frame.Scroll.Bar:Show()
				end
			else
				self.Frame.Scroll.Bar:Hide()
			end
		end
--	else
--		self.ForceScrollToCurrentStep = true
--	end
end

function ZGV:IsVisible()
	return self.Frame:IsVisible()
end

function ZGV:SetVisible(info,onoff)
	self.Frame:SetShown(onoff) 
	self.db.profile.enable_viewer = not not onoff
	if onoff then ZGV.Tabs:ReanchorTabs() end
end

function ZGV:ToggleFrame()
	ZGV:SetVisible(nil,not self.Frame:IsShown())
	ZGV.ActionBar:ToggleFrame()
end

function ZGV:IsDefaultFitting(default)
	-- deprecated?
	local _,race = UnitRace("player")
	local _,class = UnitClass("player")
	if (class=="DEATHKNIGHT") then race=class end
	default=default:upper()
	race=race:upper()
	class=class:upper()
	return race==default or class==default or race.." "..class==default
end

--- Checks if the player's race/class matches the requirements.
-- @param requirement May be a string or a table of strings (which are then ORed).
-- @return true if matching, false if not.
local RaceClassMatchCache={}
function ZGV:RaceClassMatch(fit,nocache,r,c)
	-- get string identifier for given query, either uppercase string or comma joined array
	local fitstring = (type(fit)=="table" and table.concat(fit,",") or fit:upper())
	if not nocache and RaceClassMatchCache[fitstring]~=nil then return RaceClassMatchCache[fitstring] end

	if type(fit)=="table" then
		for i,v in ipairs(fit) do local r,x=self:RaceClassMatch(v)  if r then return r,x end end
		return false --otherwise
	end

	if not nocache and RaceClassMatchCache[fit]~=nil then return RaceClassMatchCache[fit] end

	local _,race = UnitRace("player")
	if r then race = r end
	local _,class = UnitClass("player")
	if c then class = c end
	local faction = UnitFactionGroup("player")
	race=race:upper()
	class=class:upper()
	faction=faction:upper()
	fit=fit:upper()
	local neg=false
	if fit:sub(1,1)=="!" then
		neg=true
		fit=fit:sub(2)
	end
	fit=fit :gsub("UNDEAD","SCOURGE") :gsub("LFDRAENEI","LIGHTFORGEDDRAENEI") :gsub("HMTAUREN","HIGHMOUNTAINTAUREN") :gsub("ZTROLL","ZANDALARITROLL")
	local ret = (race==fit or class==fit or faction==fit or race.." "..class==fit)

	-- cache both full result
	RaceClassMatchCache[fit] = ret

	if neg then return not ret else return ret end
end

function ZGV:RaceClassMatchList(list)
	list=list..","
	local st,en=1
	for fit in list:gmatch("(.-),") do
		if self:RaceClassMatch(fit) then return true end
	end
end

--[[
local spamthrot_sec=5
local spamthrot_msgs=5
local spamthrot_last=""
local spamthrot_last_repeated=false
local spamthrot_squelch=30
local spamthrot_squelch_time=0
local spamthrot_times={}  for i=1,spamthrot_msgs do spamthrot_times[i]=0 end
local spamthrot
--]]
function ZGV:Print(s,ifdebug,force)
	if ifdebug then self:Debug(s) end

	if not force and not ZGV.db.profile.noisy then return end

	--[[
	if not ZGV.DEV and not ZGV.db.profile.debug and not force then  -- spam throttle on clients only
		if s==spamthrot_last then
			if not spamthrot_last_repeated then
				ChatFrame1:AddMessage(L['name']..": (last message repeats)")
				spamthrot_last_repeated=true
			end
			return
		end

		spamthrot_last=s
		
		local time = time()
		if time<spamthrot_squelch_time then return end
		spamthrot_last=s
		
		for i=1,spamthrot_msgs-1 do spamthrot_times[i]=spamthrot_times[i+1] end
		spamthrot_times[spamthrot_msgs]=time
		if spamthrot_times[5]-spamthrot_times[1]<spamthrot_sec then
			ChatFrame1:AddMessage(L['name']..": "..tostring(s))  -- last one in
			ChatFrame1:AddMessage(L['name']..": "..("%d messages under %d seconds, silencing for %d seconds. Use |cffffee00/zygor noisy|r to silence permanently."):format(spamthrot_msgs,spamthrot_sec,spamthrot_squelch))
			spamthrot_squelch_time=time+spamthrot_squelch
			return
		end
	end
	--]]
	
	ChatFrame1:AddMessage(L['name']..": "..tostring(s))
end

local thunder_stack
function ZGV:ThunderStageForceUpdate()
	do return end  -- TODO: reimplement this with C_Map
	if thunder_stack then return end
	if WorldMapFrame:IsShown() and GetCurrentMapAreaID()~=928 then --Wait for them to close the map then update
		ZGV.WaitingOnThunderStage = true
		return
	end
	thunder_stack=1

	ZGV.WaitingOnThunderStage = nil

	local lastmap,lastfloor

	ZGV.WMU_Suspend()
	if GetCurrentMapAreaID()~=928 then
		lastmap,lastfloor = GetCurrentMapAreaID(),ZGV.GetCurrentMapDungeonLevel()
		SetMapByID(928) --Thunder Isle
	end

	if C_MapBar.GetTag()=="THUNDER_ISLE" then
		ZGV.db.char.thunderstage = (C_MapBar.GetPhaseIndex() + 1) or 1
		ZGV.db.char.thunderprogress = (C_MapBar.GetCurrentValue()/C_MapBar.GetMaxValue()) or 0

		--[[
		if ZGV.DEV then
			-- TEMPORARY TIMING OF THUNDER ISLE
			if not ZGV.db.global.thundertimes then ZGV.db.global.thundertimes={} end
			local val = C_MapBar.GetCurrentValue()
			if val>0 and ZGV.db.global.thunderprogress_last~=val then
				ZGV.db.global.thundertimes[time()] = val
				ZGV.db.global.thunderprogress_last=val
			end
		end
		--]]
	end

	if lastmap then SetMapByID(lastmap) SetDungeonMapLevel(lastfloor) end
	ZGV.WMU_Resume()
	thunder_stack=nil
end

function ZGV:GetThunderStage()
	if not ZGV.db.char.thunderstage or ZGV.WaitingOnThunderStage then
		ZGV:ThunderStageForceUpdate()
	end

	return (ZGV.db.char.thunderstage or 1),(ZGV.db.char.thunderprogress or 0)
end




	local last_thunder_check
	local function avgdev(data,basetime,progtime)
		local cnt,totaldev=0,0
		for time,prog in pairs(data) do
			cnt=cnt+1
			local dev = (time-basetime) * progtime  -  prog
			totaldev=totaldev+dev
		end
		return totaldev/cnt
	end

	function ZGV:AnalyzeThunderData(reset)
		local mintime,maxtime=9999999999,0
		local progs = ZGV.db.global.thundertimes
		if reset then wipe(progs) end
		for time,data in pairs(progs) do
			if time<mintime then mintime=time end
			if time>maxtime then maxtime=time end
		end

		local progtime=(progs[maxtime]-progs[mintime])/(maxtime-mintime)


		-- at this point,   progress = (time()-zerotime) * progtime

		local minprog,maxprog=0.01,5
		local mindev,maxdev=99999999,0

		for i=1,20 do
			progtime=(minprog+maxprog)/2
			local zerotime = mintime - progs[mintime]/progtime
			print ("progtime",progtime,"dev",avgdev(progs,zerotime,progtime))
			if avgdev(progs,zerotime,progtime)<0 then
				minprog=progtime
			else maxprog=progtime
			end
		end

		local zerotime =  mintime - progs[mintime]/progtime

		print("progress/time = ",progtime)

		local s = ""
		for t=mintime,maxtime do
			if progs[t] then
				local expected = (t-mintime) * progtime + progs[mintime]
				print("time",t,"progress",progs[t],"deviation",progs[t]-expected)
				s = s .. t .. "\t" .. progs[t] .. "\n"
			end
		end
		ZGV:ShowDump(s)

		local fulldate = zerotime + 1000000/progtime

		print("|cffffbb001000000|cff88ff00 estimated in ",fulldate," = |cffffbb00",date("%Y-%m-%d %H:%M:%S",fulldate))
	end

	function ZGV:GetThunderStageQQ()
		do return 1 end -- TODO: reimplement

		if WorldMapFrame:IsShown() and GetCurrentMapAreaID()~=928 then  -- wrong map shown! should we force it or not..?
			if ZGV.db.char.thunderstage then
				-- cached? return that
				return ZGV.db.char.thunderstage
			else
				-- FORCE. EVIL.
				SetMapByID(928) --Thunder Isle
			end
		end

		if GetCurrentMapAreaID()~=928 then return ZGV.db.char.thunderstage end  -- the best we can do, if we weren't forcing it

		local stage = (C_MapBar and C_MapBar.BarIsShown() and C_MapBar.GetPhaseIndex() + 1)  or  1

		ZGV.db.char.thunderstage = stage  -- save

		last_thunder_check = GetTime()

		return ZGV.db.char.thunderstage
	end

function ZGV:MatchProfs(fitprof,levelmin)
	local data = self.Professions:GetSkill(fitprof)
	if not data then return false end

	if not data.active then
		return false --We don't have this profession so forget it.
	elseif data.level > 0 then --sanity check.
		return data.level>=levelmin
	end
end

ZGV.WorldEventIDs = {
	[141] = "FEAST OF WINTER VEIL",
	[181] = "NOBLEGARDEN",
	[341] = "MIDSUMMER FIRE FESTIVAL",
	[327] = "LUNAR FESTIVAL",
	[423] = "LOVE IS IN THE AIR",
	[404] = "PILGRIM'S BOUNTY",
	[321] = "HARVEST FESTIVAL",
	[324] = "HALLOW'S END",
	[409] = "DAY OF THE DEAD",
	[479] = "DARKMOON FAIRE",
	[201] = "CHILDREN'S WEEK",
	[372] = "BREWFEST",
	[62]  = "FIREWORKS SPECTACULAR", 
}

function ZGV:FindEvent(eventName)
	eventName=eventName:upper()
	local dateobject = C_DateAndTime.GetCurrentCalendarTime()
	local month,day,year = dateobject.month,dateobject.monthDay,dateobject.year

	local numEvents = C_Calendar.GetNumDayEvents(0, day);
	
	for event=1, numEvents do
		local eventdata = C_Calendar.GetDayEvent(0,day,event)
		if eventdata then
			if eventdata.calendarType=="HOLIDAY" --We don't care about any other events
			and eventdata.sequenceType~="END"  --If it is the last day of a holiday it ended at 2am so ignore it.
			and (eventName==ZGV.WorldEventIDs[eventdata.eventID] or eventName==eventdata.title) then --Does the ring fit?
				return true
			end
		end	
	end
	return false -- Nothing else was returned, so the event is not active.
end


function ZGV:UNIT_INVENTORY_CHANGED(event,unit)
	self:UpdateFrame(true)
	if unit=="player" then
		self:TryToCompleteStep(true)
	end
end

--local MapBarLastupdate=0
function ZGV:MAP_BAR_UPDATE(event)
	--local time = GetTime();
	--if MapBarLastupdate~= time then
	--	MapBarLastupdate = time
		ZGV:ThunderStageForceUpdate()
	--end
end

-- handled in QuestTracking; duplicating it here may cause race conditions and bad quest detection
--[[
function ZGV:QUEST_LOG_UPDATE(event,unit)
	self:Debug("QUEST_LOG_UPDATE")
	self:UpdateFrame(true)
	if unit=="player" then
		self:TryToCompleteStep(true)
	end
end
--]]

function ZGV:UpdateFrameStepSkipping()
	if not self.Frame then return end
	local enabled = self.CurrentGuide and self.CurrentStep
	self.Frame.Border.Toolbar.NextButton:SetEnabled(enabled and self.CurrentStep.num<#self.CurrentGuide.steps)
	self.Frame.Border.Toolbar.PrevButton:SetEnabled(enabled and self.CurrentStep.num>1)
end


local StartupTimingFrame = CreateFrame("FRAME",nil,UIParent)
StartupTimingFrame:Show()
StartupTimingFrame:RegisterEvent("ADDON_LOADED")
StartupTimingFrame:RegisterEvent("VARIABLES_LOADED")
StartupTimingFrame:SetScript("OnEvent",function(f,event,arg)
	if event=="ADDON_LOADED" and arg==addonName then ZGV.startuptimestamps:Punch("addonloaded") end
	if event=="VARIABLES_LOADED" then ZGV.startuptimestamps:Punch("variablesloaded") end
end)


local blobstate=nil
function ZGV:PLAYER_REGEN_DISABLED()
	-- delay it ALL, because some stuff will already taint; InCombatLockdown() may not yet be up.
	self:ScheduleTimer(function()
		--ZygorGuidesViewerFrame_Cover:Show()
		--ZygorGuidesViewerFrame_Cover:EnableMouse(true)
		if self.db.profile.hideincombat then
			if self.Frame:IsVisible() then
				ZGV.UIFrameFade.UIFrameFadeOut(self.Frame,0.5,1.0,0.0)
				self.hiddenincombat = true
			end

			-- Arrow and action bar are handled by secure AttributeDriver
	
			--[[ CreatureViewer removal, 7.0
			if self.CV.Frame:IsVisible() then
				ZGV.UIFrameFade.UIFrameFadeOut(self.CV.Frame,0.5,1.0,0.0)
				self.cvhiddenincombat = true
			end
			--]]
		end
	--[[
		blobstate = WorldMapBlobFrame:IsShown()
		WorldMapBlobFrame:SetParent(nil)
		--WorldMapBlobFrame:ClearAllPoints()
		WorldMapBlobFrame:Hide()
		WorldMapBlobFrame.Hide = function() blobstate=nil end
		WorldMapBlobFrame.Show = function() blobstate=true end
	--]]
	self:UpdateFrameStepSkipping()
	end,0)
end

function ZGV:PLAYER_REGEN_ENABLED()
	--ZygorGuidesViewerFrame_Cover:Hide()
	--ZygorGuidesViewerFrame_Cover:EnableMouse(false)

	-- delay it ALL, because some stuff will still taint; InCombatLockdown() may not yet be down.
	self:ScheduleTimer(function()
		if self.CurrentStep then self.CurrentStep:PrepareCompletion(true) end
		self:UpdateFrame(true)
	
		if self.hiddenincombat then
			ZGV.UIFrameFade.UIFrameFadeIn(self.Frame,0.5,0.0,1.0)
			self.hiddenincombat = nil
		end

		-- Arrow and action bar are handled by secure AttributeDriver

		--[[ CreatureViewer removal, 7.0
		if self.cvhiddenincombat then
			ZGV.UIFrameFade.UIFrameFadeIn(self.CV.Frame,0.5,0.0,1.0) --This will fade the creature viewer to the same level as the window. Not a bad thing imo
			self.cvhiddenincombat = nil
		end
		--]]
	
		self:UpdateLocking()
	--[[
		WorldMapBlobFrame:SetParent(WorldMapFrame)
		--WorldMapBlobFrame:SetAllPoints(WorldMapDetailFrame)
		WorldMapBlobFrame.Hide = nil
		WorldMapBlobFrame.Show = nil
		if blobstate then WorldMapBlobFrame:Show() end
	--]]
		if self.call_after_combat then self.call_after_combat() self.call_after_combat=nil end
		self:UpdateFrameStepSkipping()
	end,0)
end

function ZGV:SPELL_UPDATE_COOLDOWN()
	--self:Debug("Updating cooldowns")
end

function ZGV:PLAYER_CONTROL_GAINED()
	GetRealZoneText()
	self:TryToCompleteStep(true)
	self:CacheCurrentMapID()
end

function ZGV:WORLD_MAP_UPDATE()
	self:CacheCurrentMapID()
end

function ZGV:NEW_WMO_CHUNK()
	-- if not WorldMapFrame:IsVisible() then ZGV.WMU_Suspend() SetMapToCurrentZone() ZGV.WMU_Resume() end  -- force map reset, otherwise floor numbers will still be wrong  -- TODO: reimplement with C_Map? maybe? maybe not?
	self:CacheCurrentMapID()
end

function ZGV:PLAYER_ENTERING_WORLD()
	self:Debug("PLAYER_ENTERING_WORLD! Let's go!")
	self.loading_screen_disabled=true
	self:CacheCurrentMapID()
end

function ZGV:ZONE_CHANGED_INDOORS()
	-- if not WorldMapFrame:IsVisible() then ZGV.WMU_Suspend() SetMapToCurrentZone() ZGV.WMU_Resume() end   -- TODO: reimplement with C_Map? maybe? maybe not?
	self:CacheCurrentMapID()
end

function ZGV:ZONE_CHANGED()
	self:CacheCurrentMapID()
	self:CachePOIs()
	self:UpdateFrame(true)
end

function ZGV:ZONE_CHANGED_NEW_AREA()
	-- if not WorldMapFrame:IsVisible() then ZGV.WMU_Suspend() SetMapToCurrentZone() ZGV.WMU_Resume() end   -- TODO: reimplement with C_Map? maybe? maybe not?
	self:CacheCurrentMapID()

	-- clean up scenario based choices if player is not on a scenario map
	ZGV:PlayerChoiceCleanUp()
	self:UpdateFrame(true)
end

function ZGV:TAXIMAP_OPENED()
	if not ZGV.IsRetail then
		Dismount()
	end

	if self.db.profile.autotaxi and self.CurrentStep and ZGV.Frame:IsVisible() then
		local destination
		for gi,goal in ipairs(self.CurrentStep.goals) do
			--if goal.action=="fly" and goal.map==ZGV.CurrentMapID then

			if goal.action=="fly" then
				destination = goal.landing
				break
			end
		end
		if destination then
			self:Debug("Autotaxi destination: %s",destination)
			local dest_i
			for i=1,NumTaxiNodes() do
				if TaxiNodeName(i):find(destination)==1 then
					dest_i=i
					destination = TaxiNodeName(i)
					break
				end
			end
			if not dest_i then
				self:Debug("Cannot fly to %s: destination not found on map.",destination)
			elseif TaxiNodeGetType(dest_i)~="REACHABLE" then
				self:Print("Cannot fly to %s: destination unreachable.",destination)
			elseif TaxiNodeCost(dest_i)>GetMoney() then
				self:Print("Cannot fly to %s: not enough money.",destination)
			else
				-- finally!
				self:Print("Taking taxi to ".. TaxiNodeName(dest_i)..".")
				TakeTaxiNode(dest_i)
			end
		end
	end
end

ZGV.CurrentMapID,ZGV.CurrentMapFloor = 0,0

function ZGV:CacheCurrentMapID()
	if not self.loading_screen_disabled then return end

	local _,_,m,f=ZGV.LibRover:GetPlayerPosition()
	if m and m~=0 then
		ZGV.CurrentMapID,ZGV.CurrentMapFloor = m,f
	end
	-- HBD migration snip: various astrolabe stupidity workarounds
end

function ZGV:FindData(array,what,data)
	if not (type(array)=="table") then return nil end
	local i,d
	for i,d in pairs(array) do if d[what]==data then return d end end
end

function ZGV:Frame_OnShow()
	if ZGV.initialized then PlaySound(SOUNDKIT.IG_QUEST_LOG_OPEN) end
	self:Debug("ZGV:Frame_OnShow")
	--ZygorGuidesViewerFrame_Filter()
	--[[
	if UnitFactionGroup("player")=="Horde" then
		ZygorGuidesViewerFrameTitleAlliance:Hide()
	else
		ZygorGuidesViewerFrameTitleHorde:Hide()
	end
	--]]

	if self.CurrentStep then
		self.db.profile.enable_viewer = true
		self:UpdateFrame(true)
		self:AlignFrame()

		if self.db.profile.hidearrowwithguide then
			self:ShowWaypoints()
		end

		--[[ CreatureViewer removal, 7.0
		-- Trying to show the modelviewer frame
		-- During startup operation we may be shown numerous times,
		-- so let's make sure we're trying to do a nice thing
		if self.db.profile.mv_enabled and self.CV then
			self:TryToDisplayCreature(true)
		end
		--]]
	end
end

function ZGV:Frame_OnHide()
	PlaySound(SOUNDKIT.IG_QUEST_LOG_CLOSE)
	self.db.profile.enable_viewer = false

	--[[

	-- this is a HELL ugly hack.
	-- "Do not hide when it's the World Map that hid us".
	if not WorldMapFrame.blockWorldMapUpdate -- this would mean we're enlarging the small map
	and not debugstack():find("TOGGLEWORLDMAP") -- UGLY hack
	then
		if self.db.profile.hidearrowwithguide then
			self:Debug("Hiding arrow with guide")
			self:ShowWaypoints("clear")
		end

		-- if modelviewer is on, also hide it as well
		if self.CV.Frame:IsShown() then
			self:Debug("Hiding modelviewer with guide.")
			self.CV:Hide()
		end
	end
	--]]

	--[[ CreatureViewer removal, 7.0
	if self.CV then self.CV:Hide() end
	--]]
end

function ZGV:SetStepFocus(step)

	if step.isFocused or (step:IsCurrentlySticky() and ZGV.CurrentStep.isFocused) then return end  -- no change.

	-- defocus everything
	if ZGV.CurrentGuide and ZGV.CurrentGuide.steps then
		for i,v in pairs(ZGV.CurrentGuide.steps) do
			v.isFocused = false
		end
	end

	if step.is_sticky then
		step = ZGV.CurrentStep
	end
	

	step.isFocused = true
	
	self:Debug("Focus changed to step %s (%s)",step.num, "guide")
	
	
	if ZGV.focusedguide ~= step.parentGuide then 
	-- if we changed guide, then force refresh, otherwise refresh was triggered somewhere else already
		ZGV.focusedguide = step.parentGuide
		ZGV:UpdateFrame()
	end
	
	--ZGV:ShowWaypoints()  -- will be done later anyway, no need
end

function ZGV:IsStepFocused(step)
	if step.isFocused then return true end
	if ZGV.CurrentStep.isFocused and step:IsCurrentlySticky() then return true end
	return false
end


function ZGV:GetFocusedStep()
	if ZGV.CurrentStep and ZGV.CurrentStep.isFocused then
		return ZGV.CurrentStep
	else
		return nil
	end	
end

ZGV.GoalClickedTime = GetTime()

function ZGV:GoalOnClick(frame,button)
	--timer is a hack to make sure multiple consecutive goals arent clicked
	--at the same time. 0.2 seconds between clicks distinguishes between humans
	local curTime = GetTime()
	if curTime - self.GoalClickedTime < 0.2 then  return  end
	self.GoalClickedTime = curTime
	local goalframe=frame
	if goalframe.parentLine then goalframe = goalframe.parentLine end
	local stepframe = goalframe.parentStep
	local goal = goalframe.goal or goalframe.tipgoal

	if not goal then return end

	if not goal.parentStep.isFocused then 
		return 
	end

	if self.db.profile.showcountsteps>0 and stepframe.step~=self.CurrentStep and not stepframe.is_sticky then return end -- no clicking on non-current steps in compact mode
	
	--if stepframe:GetScript("OnClick") then stepframe:GetScript("OnClick")(stepframe,button) end

	--local num=goalframe.goalnum
	self:Debug("goal clicked, step %s goal %s ",goal.parentStep.num,goal.num)
	--local goal = self.CurrentStep.goals[num]

	--if button=="LeftButton" and not goal.parentStep.isFocused then ZGV:SetStepFocus(goal.parentStep) end -- grab focus for clicked step

	if button=="LeftButton" and not goal.parentStep.isFocused then return end -- don't act if we are not focused

	if button=="LeftButton" then
		goal:OnClick(button)
	else
		ZGV:OpenQuickStepMenu(stepframe,goalframe)
	end
end

function ZGV:GoalOnEnter(goalframe)
	local goal = goalframe:GetParent().goal or goalframe:GetParent().tipgoal
	if not goal then return end

	local step = goal.parentStep

	if not step.isFocused or step:IsCurrentlySticky() then 
		return 
	end

	local wayline,infoline,image

	if goal.tooltip and not self.db.profile.tooltipsbelow then
		infoline = "|cff00ff00"..goal.tooltip.."|r"
	end
	local tooltipline = goal:GetTooltip()
	if goal.x and goal.y and goal.map then
		-- if locked or force_noway, then no clicking, bare info.
		local tipformat = (self.db.profile.windowlocked or goal.force_noway) and 'tooltip_waypoint_coords' or 'tooltip_waypoint'
		local coords = math.round(goal.x*100)..";"..math.round(goal.y*100)
		local map = (ZGV.GetMapNameByID(goal.map) or ('#'..goal.map)).." "
		wayline = L[tipformat]	:format(goal.waytitle and (goal.waytitle.." ("..map..coords..")") or map..coords)
	end

	if goal.image then
		image = DIR.."\\Images\\"..goal.image..".tga"
	end

	if infoline or wayline or image or goal.itemid or tooltipline then
		GameTooltip:SetOwner(self.Frame,"ANCHOR_BOTTOM") --GameTooltip moved above the Viewer
		GameTooltip:ClearAllPoints()
		--[[
		GameTooltip:ClearAllPoints()
		GameTooltip:SetOwner(goalframe,"ANCHOR_TOP") --GameTooltip moved above the goal. Cursor overlaps it when it's below.
		--]]
		--GameTooltip:SetOwner(goalframe,"ANCHOR_TOPLEFT")
		--GameTooltip:SetPoint("BOTTOM",goalframe,"TOP")

		if goal.itemid then
			GameTooltip:SetOwner(goalframe,"ANCHOR_LEFT") -- Items tooltip to the left of the line
			GameTooltip:ClearAllPoints()
			GameTooltip:SetPoint("BOTTOMRIGHT",goalframe,"TOPLEFT")

			GameTooltip:SetHyperlink("item:"..goal.itemid)
			--else
			--	GameTooltip:SetText(goal:GetText())
		end

		local lines={}

		local lines=1
		if infoline then  GameTooltip:AddLine(infoline,1,1,1)  lines=lines+1  end
		if wayline then  GameTooltip:AddLine(wayline,1,1,1)  lines=lines+1  end
		if tooltipline then  GameTooltip:AddLine(tooltipline,1,1,1)  lines=lines+1  end

		for line=1,lines do  if _G['GameTooltipTextLeft'..line]:GetWidth()>300 then _G['GameTooltipTextLeft'..line]:SetWidth(300) end  end
		GameTooltip:Show()

		if image then
			local img

			--[[
			local img = _G['GameTooltipZygorImage']
			if not img then
				img = GameTooltip:CreateTexture("GameTooltipZygorImage","ARTWORK")
			end
			--]]
			img = GameTooltipTexture1
			GameTooltip:AddLine(" ")
			GameTooltip:AddTexture(image)
			img:ClearAllPoints()
			img:SetPoint("TOPLEFT",_G['GameTooltipTextLeft'..lines],"BOTTOMLEFT")
			--img:SetTexture(image)
			img:SetWidth(128)
			img:SetHeight(128)
			img:Show()
			GameTooltip:Show()
			GameTooltip:SetHeight(150 + lines*20)
		end
	end

	if (IsModifiedClick("DRESSUP") and goal.itemid and IsDressableItem("item:"..goal.itemid)) then
		ShowInspectCursor()
	else
		ResetCursor()
	end
end

function ZGV:GoalOnLeave(goalframe,num)
	if goalframe and (GameTooltip:GetOwner()==goalframe or GameTooltip:GetOwner()==self.Frame) then GameTooltip:Hide() end
end


local function insert_guides(arr,guides)
	local data
	for i,guide in ipairs(guides) do
		data = ZGV:GetGuideByTitle(guide.full)
		local item = {
			text = guide.step and L['menu_last_entry']:format(guide.short or "?",guide.step) or (guide.short or "?"),
			checked = function() return ZGV.CurrentGuideName==guide.full end,
			func = function()  CloseDropDownForks()  ZGV:SetGuide(guide.full,guide.step) end,
			tooltipTitle = data and data.description and guide.short,
			tooltipText = data and data.description,
			tooltipOnButton = true,
		}
		tinsert(arr,item)
	end
end

local function group_to_array(group)
	local arr = {}
	for i,group in ipairs(group.groups) do
		local item = {
			text = group.name,
			hasArrow = true,
			menuList = group_to_array(group),
			keepShownOnClick = true,
			func = function(self) _G[self:GetName().."Check"]:Hide() end,
			--notCheckable = true
		}
		--if #item.menuTable>0 then
			tinsert(arr,item)
		--end
	end
	insert_guides(arr,group.guides)
	return arr
end

function ZGV:GetMostRecentGuide(gtype)
	local guides = self.db.char.guides_history[gtype]
	if guides and guides[1] then
		local firstguide = guides[1]
		local g = self:GetGuideByTitle(firstguide[1])
		if g then
			g.CurrentStepNum = firstguide[2]
			return g

		end
		return nil
	end
	return nil

end

-- RETIRE AFTER NEW MENU
function ZGV:GetGuidesHistory(gtype)
	local unwrapped={}
	for gi,guide_and_step in ipairs(self.db.char.guides_history) do
		if not gtype or guide_and_step[1]:find(gtype.."\\",1,1)==1 then
			local g = self:GetGuideByTitle(guide_and_step[1])
			if g then
				g.CurrentStepNum = guide_and_step[2]
				tinsert(unwrapped,g)
			end
		end
	end
	return unwrapped
end

function ZGV:OpenGuideMenu(path)
	if self.Menu then 
		if path=="HOME" and ZGV.CurrentGuide and not ZGV.CurrentGuideName:match("GOLD\\") and not ZGV.CurrentGuideName:match("PETSMOUNTS\\Pets") then
			ZGV.GuideMenu:Show()
			ZGV.GuideMenu:Open("Current")
			return
		end
		ZGV.GuideMenu:Show(path)
	end
end

function ZGV:FakeCompleteGoal(goal,docomplete)
	if docomplete==nil then docomplete=not self.recentlyCompletedGoals[goal] end
	if docomplete then
		--self.recentlyCompletedGoals[goal]=true
		self.recentlyStickiedGoals[goal]=true
	else
		self.recentlyCompletedGoals[goal]=false
		self.recentlyStickiedGoals[goal]=false
		self.recentlyVisitedCoords[goal]=false
	end
	--goal.fake_complete = true
	self.pause=nil
	self.LastSkip=1
	--self.AutoskipTemp = true
	self:TryToCompleteStep(true)
end

function ZGV:FakeCompleteQuest(questid,docomplete,questtitle)
	self.completedQuests[questtitle]=docomplete
	if questid then self.completedQuests[questid]=docomplete end
	self:Print("Marking quest '"..questtitle.."'"..(questid and " (#"..questid..")" or "").." as "..(docomplete and "completed" or "incomplete"))
	self:TryToCompleteStep(true)
end

function ZGV:OpenMapToQuest(questid)
	do return end --unused
	local WorldMap_OpenToQuest --removed
	if self.questsbyid[questid] and WorldMap_OpenToQuest then -- 3.3.0
		WorldMap_OpenToQuest(questid)
		local done,posX,posY,obj = QuestPOIGetIconInfo(questid)
		if posX or posY then
			local q = self.questsbyid[questid]
			local title
			if q then title=q.title end
			self:Debug("Setting waypoint to POI: %d %d",posX*100,posY*100)
			self.Pointer:SetWaypoint(nil,nil,posX*100,posY*100,{title=title,type="manual"})
		end
	end
end

function ZGV:FindNextActiveQuest()
	if not self.CurrentGuide then return end
	for stepnum=self.CurrentStep.num+1,#self.CurrentGuide.steps do
		local step=self.CurrentGuide.steps[stepnum]
		if not step then break end
		for gi,goal in ipairs(step.goals) do
			if goal.questid and PlayerIsOnQuest(goal.questid) then
				self:FocusStep(stepnum)
				return
			end
		end
	end
	self:Print("No steps found that match quests in your log.")
end

local lastquestid,lastquesttitle
local showqiretries=0
--[[
function ZGV:ShowQuestInfo(questid,questtitle,indump)
	self:Debug("Showing chains for "..tostring(questid).." '"..tostring(questtitle).."'")
	if not questid then questid=lastquestid questtitle=lastquesttitle else showqiretries=0 end
	lastquestid=questid lastquesttitle=questtitle showqiretries=showqiretries+1

	--if InCombatLockdown() then return end
	local max = self.maxQuestLevels[questid] or -1
	local lev = self.mentionedQuests[questid] or -1
	local col = GetQuestDifficultyColor(lev)
	local s
	if (max>lev) then
		s = ("Quest |cff%02x%02x%02x[|Hquest:%d:%d|h%s|h]|r (#%d) [level %s + chains to %s]"):format(col.r*255,col.g*255,col.b*255,questid,UnitLevel("player"),questtitle,questid,lev>0 and lev or "?",max>0 and max or "?")
	else
		s = ("Quest |cff%02x%02x%02x[|Hquest:%d:%d|h%s|h]|r (#%d) [level %s]"):format(col.r*255,col.g*255,col.b*255,questid,UnitLevel("player"),questtitle,questid,lev>0 and lev or "?")
	end

	local pre = self.Chains[questid]
	if pre then
		if type(pre)=="number" then
			s = s .. "\nPrerequisite:"
			pre={"",pre}
		else
			s = s .. "\nPrerequisites ("..(pre[1]=="AND" and "ALL" or "ANY").."):"
		end
		for i=2,#pre do
			local id = tonumber(pre[i])
			local quest,inlog = self.Localizers:GetQuestData(id)
			lev = self.mentionedQuests[id] or -1
			local caching=nil
			if (quest and not caching) then
				col = GetQuestDifficultyColor(lev)
				s=s..("\n- |cff%02x%02x%02x[|Hquest:%d:%d|h%s|h]|r (#%d) [level %s]"):format(col.r*255,col.g*255,col.b*255,id,UnitLevel("player"),quest.title,id,lev>0 and lev or "?")
			else
				if showqiretries<5 then
					if showqiretries==1 then self:Print("Retrieving quest information, please wait...") end
					self:ScheduleTimer("ShowQuestInfo",1) return
				else
					s=s.."\n- #"..id.." (retrieving quest information, please try again)"
					caching=true
				end
			end
		end
	end
	local mentioned = self:GetMentionedFollowups(questid)
	local q
	if #mentioned>1 then
		q = "Follow-ups:"
		for i=2,#mentioned do
			local id = tonumber(mentioned[i][1])
			local quest = self.Localizers:GetQuestData(id)
			lev = mentioned[i][2]
			local caching=nil
			if (quest and not caching) then
				col = GetQuestDifficultyColor(lev)
				q=q..("\n- |cff%02x%02x%02x[|Hquest:%d:%d|h%s|h]|r (#%d) [level %s]"):format(col.r*255,col.g*255,col.b*255,id,UnitLevel("player"),quest.title,id,lev>0 and lev or "?")
			else
				if showqiretries<5 then
					if showqiretries==1 then self:Print("Retrieving quest information, please wait...") end
					self:ScheduleTimer("ShowQuestInfo",1) return
				else
					q=q.."\n- #"..id.." (retrieving quest information, please try again)"
					caching=true
				end
			end
		end
	else
		q = "No follow-ups."
	end

	local rem=""
	local remaining = self:GetQuestRemainingInChain(questid)
	if remaining then
		rem = "\n\n"..remaining.." quests remain till end of chain."
	end

	if indump then
		self:ShowDump(s.."\n"..q..rem,"Quest information",false)
	else
		self:Print("Quest information:")
		local ss = s.."\n"..q..rem
		local sslines = {strsplit("\n",ss)}
		for i,l in ipairs(sslines) do print(l) end
	end
end

function ZGV:ToggleWatchQuest(questid)
end
--]]

function ZGV:OpenQuickStepMenu(stepframe,goalframe)
	self.Frame.Menu.stepframe=stepframe
	self.Frame.Menu.goalframe=goalframe

	local step = stepframe.step
	local goal = goalframe.goal or goalframe.tipgoal

	local menu = {
		{
			text = L['qmenu_step']:format(step.num,step.level or "?"),
			isTitle = true,
			notCheckable=true,
		}
	}
	tinsert(menu,{
		text = L['qmenu_step_skip'],
		tooltipTitle = L['qmenu_step_skip'],
		tooltipText = L["qmenu_step_skip_desc"],
		tooltipOnButton = true,
		func = function() self:SkipStep(true) end,
		--icon = ZGV.DIR .. "\\Skins\\minimaparrow-green-dot",
		keepShownOnClick = false,
		notCheckable=true, indented=true,
	})


	if goal:IsCompleteable() or (goal.map and goal.x) then
		tinsert(menu,{
			text = L['qmenu_goal']:format(goal:GetText():gsub("%|r",""):gsub("%|c........","")),
			isTitle = true,
			notCheckable=true,
		})
	end

	if goal.map and goal.x then
		local map = ZGV.GetMapNameByID(goal.map) or ('#'..goal.map)
		tinsert(menu,{
			text = L['qmenu_goal_waypoint']:format(map,goal.x*100,goal.y*100),
			tooltipTitle = L['qmenu_goal_waypoint']:format(map,goal.x*100,goal.y*100),
			tooltipText = L['qmenu_goal_waypoint_desc'],
			tooltipOnButton = true,
			func = function()  goal.parentStep:CycleWaypointTo(goal.num)  end,
			notCheckable=true, indented=true,
		})
	end

	--[[ CreatureViewer removal, 7.0
		local id = goal.npcid or (goal.mobs and goal.mobs[1] and goal.mobs[1].id) or (goal.action=="kill" and goal.targetid)
		if id then
			local name = self.Localizers:GetTranslatedNPC(id) or "(creature)"
			tinsert(menu,{
				text = L['qmenu_goal_creature_data']:format(name),
				tooltipTitle = L['qmenu_goal_creature'],
				tooltipTitleText = L['qmenu_goal_creature_desc']:format(name),
				tooltipOnButton = true,
				func = function()
					self.db.profile.viewcreature=true
					self.CreatureViewer:ShowCreature(id,name)
					if self.CreatureViewer.failed then
						self:Print("Creature is not yet available - too far.")
					end
				end,
				--Try both and hopefully one works.
				isNotRadio=true,
			})
		end
	--]]

	if goal:IsCompleteable() then
		tinsert(menu,{
			text = L['qmenu_goal_complete'],
			tooltipTitle = L['qmenu_goal_complete'],
			tooltipText = L['qmenu_goal_complete_desc'],
			tooltipOnButton = true,
			checked = function()  return goal:IsComplete()  end,
			func = function()  self:FakeCompleteGoal(goal,not self.recentlyCompletedGoals[goal])  end,
			isNotRadio=true,
		})
		if goal.quest then
			local quest,inlog = self.Localizers:GetQuestData(goal.quest.id)
			local title = quest and quest.title or "?"
			tinsert(menu,{
				text = L['qmenu_quest']:format(title),
				isTitle = true,
				notCheckable = true,
			})
			--[[
			-- no quest info anymore
			tinsert(menu,{
				text = L['qmenu_quest_info']:format(title),
				tooltipTitle = L['qmenu_quest_info']:format(title),
				tooltipText = L['qmenu_quest_info_desc'],
				tooltipOnButton = true,
				func = function() self:ShowQuestInfo(goal.quest.id,title,IsShiftKeyDown())  end,
			})
			--]]
			if inlog then
				if ZGV.IsRetail then
					tinsert(menu,{
						text = L['qmenu_quest_openlog'],
						tooltipTitle = L['qmenu_quest_openlog'],
						tooltipText = L['qmenu_quest_openlog_desc'],
						tooltipOnButton = true,
						func = function() QuestMapFrame_OpenToQuestDetails(goal.quest.id) end,
					})
					tinsert(menu,{
						text = L['qmenu_quest_watched'],
						tooltipTitle = L['qmenu_quest_watched'],
						tooltipText = L['qmenu_quest_watched_desc'],
						tooltipOnButton = true,
						checked = function() return C_QuestLog.GetQuestWatchType(goal.quest.id) end,
						func = function()
							if C_QuestLog.GetQuestWatchType(goal.quest.id) then
								C_QuestLof.RemoveQuestWatch(goal.quest.id)
								--WatchFrame_Update()
							else
								if ( C_QuestLog.GetNumQuestWatches() < Constants.QuestWatchConsts.MAX_QUEST_WATCHES ) then
									C_QuestLog.AddQuestWatch(goal.quest.id, Enum.QuestWatchType.Manual)
									--WatchFrame_Update()
								end
							end
						end,
						isNotRadio=true,
					})
				end
				local quest_map = GetQuestUiMapID and GetQuestUiMapID(goal.quest.id)
				if quest_map and quest_map>0 then
					tinsert(menu,{
						text = L['qmenu_quest_openmap'],
						tooltipTitle = L['qmenu_quest_openmap'],
						tooltipText = L['qmenu_quest_openmap_desc'],
						tooltipOnButton = true,
						func = function()  OpenWorldMap(quest_map)  ZGV:PointToQuest(quest_map,goal.quest.id)  end,
					})
				end
			end

			-- woo, LightHeaded support!
			if LightHeaded then
				tinsert(menu,{
					text = L['qmenu_quest_lightheaded'],
					tooltipTitle = L['qmenu_quest_lightheaded'],
					tooltipText = L['qmenu_quest_lightheaded_desc'],
					tooltipOnButton = true,
					func = function()
						if IsShiftKeyDown() then
							local s = LightHeaded:GetPageText(goal.quest.id)
							self:ShowDump(s,"Quest info - courtesy of LightHeaded",false)
						else
							ShowUIPanel(QuestLogFrame)
							LightHeaded:UpdateFrame(goal.quest.id, LightHeaded.db.profile.singlepage and -1 or 1)
						end
					end,
				})
			end

			if self.db.profile.debug_display then
				tinsert(menu,{
					text = "(debug) force quest complete",
					tooltipTitle = self.completedQuests[goal.questid] and L['qmenu_quest_complete_tip'] or L['qmenu_quest_complete_in_tip'],
					tooltipText = self.completedQuests[goal.questid] and L['qmenu_quest_complete_desc'] or L['qmenu_quest_complete_in_desc'],
					checked = function()  return self.completedQuests[goal.questid]  end,
					func = function()  self:FakeCompleteQuest(goal.questid,not self.completedQuests[goal.questid],goal.quest.title)  end,
					isNotRadio=true,
				})
				tinsert(menu,{
					text = "(debug) trace quest log changes for this quest",
					checked = function()  return self.DEBUG_QUEST_ID==goal.questid  end,
					func = function()  if self.DEBUG_QUEST_ID==goal.questid then self.DEBUG_QUEST_ID=nil self:Debug("Not tracing.") else self.DEBUG_QUEST_ID=goal.questid self:Debug("Tracing quest %d",goal.questid) end end,
					isNotRadio=true,
				})
			end
			--[[
			tinsert(menu,{
				text = L['qmenu_quest_complete'],
				tooltipTitle = self.completedQuests[goal.quest.id] and L['qmenu_quest_complete_tip'] or L['qmenu_quest_complete_in_tip'],
				tooltipText = self.completedQuests[goal.quest.id] and L['qmenu_quest_complete_desc'] or L['qmenu_quest_complete_in_desc'],
				checked = function()  return self.completedQuests[goal.quest.id]  end,
				func = function()  self:FakeCompleteQuest(goal.quest.id,not self.completedQuests[goal.quest.id],goal.quest.title)  end,
				isNotRadio=true,
			})
			--]]
		end
	end
	if self.borderfadedout and not self.db.profile.delayshowborder then
		tinsert(menu,{
			text = L['opt_group_display'],
			isTitle = true,
			notCheckable=true,
		})
		tinsert(menu,{
			text = L['qmenu_border_restore'],
			tooltipTitle = L['qmenu_border_restore'],
			tooltipText = L['qmenu_border_restore_desc'],
			tooltipOnButton = true,
			--checked = function()  return self.db.profile.hideborder  end,
			func = function()  
				ZGV:Guides_Mini_to_Full()
				end,
			isNotRadio=true,
		})
	end

	tinsert(menu,{
		text = L['qmenu_shareto'],
		hasArrow = true,
		isNotRadio=true,
		notCheckable=true, indented=true,
		menuList = {
			{ text = L['qmenu_shareto_party'], checked = function() return self.db.profile.share_target=="PARTY" end, func = function() self.db.profile.share_target="PARTY"  CloseDropDownForks() end },
			{ text = L['qmenu_shareto_raid'], checked = function() return self.db.profile.share_target=="RAID" end, func = function() self.db.profile.share_target="RAID" CloseDropDownForks() end },
			{ text = L['qmenu_shareto_say'], checked = function() return self.db.profile.share_target=="SAY" end, func = function() self.db.profile.share_target="SAY" CloseDropDownForks() end },
		}
	})

	local rolegoals
	for i,g in ipairs(step.goals) do  if g.grouprole then   rolegoals=true  break  end end
	if rolegoals then
		tinsert(menu,{
			text = L['qmenu_share_allgrouproles'],
			func = function() step:ShareToChat(self.db.profile.share_target or "SAY","rolegoals","brand") end,
		})
	end

	--[[
		{
			text = L['opt_miniresizeup'],
			tooltipTitle = L['opt_miniresizeup'],
			func = function() self:SetOption("Display","resizeup") end,
			checked = function() return self.db.profile.resizeup end,
			isNotRadio=true,
			keepShownOnClick = true,
		},
		{
			text = L['opt_hideincombat'],
			tooltipTitle = L['opt_hideincombat'],
			tooltipText = L['opt_hideincombat_desc'],
			checked = function()  return self.db.profile.hideincombat  end,
			func = function()  self:SetOption("Display","hideincombat")  end,
			isNotRadio=true,
			keepShownOnClick = true,
		},
		{
			text = L['opt_configuration'],
			tooltipTitle = L['opt_configuration'],
			tooltipText = L['opt_configuration_desc'],
			isNotRadio=true,
			notCheckable=true,
			func = function()  self:OpenOptions()  end,
		},
		{
			name = L['opt_group_step'],
			isTitle = true,
		},
		{
			text = L["opt_do_searchforgoal"],
			notCheckable = true,
			func = function() ZGV:SearchForCompleteableGoal() end
		}
	--]]

	tinsert(menu,{
		text = L['qmenu_close'],
		hasArrow = false,
		func = function()  CloseDropDownForks() end,
		notCheckable=true, indented=true,
	})

	EasyFork(menu,self.Frame.Menu,goalframe,0,0,"MENU",3)  -- replacement for EasyMenu, just not as insecure.
end

--[[
function ZGV:OpenQuickSteps()
	local menu = {
		{
			text=L["opt_showcountsteps"],
			isTitle = true,
			notCheckable = true,
		},
		{
			text=L["opt_showbriefsteps"],
			func=function() self:SetOption("Step","showbriefsteps") end,
			checked=function() return self.db.profile.showbriefsteps end,
			isNotRadio = true,
		},
		{
			text=L["opt_showcountsteps_all"],
			func=function() self:SetOption("Step","showcountsteps 0") end,
			checked=function() return self.db.profile.showallsteps end,
		},
		{
			text='1',
			func=function() self:SetOption("Step","showcountsteps 1") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==1 end,
		},
		{
			text='2',
			func=function() self:SetOption("Step","showcountsteps 2") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==2 end,
		},
		{
			text='3',
			func=function() self:SetOption("Step","showcountsteps 3") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==3 end,
		},
		{
			text='4',
			func=function() self:SetOption("Step","showcountsteps 4") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==4 end,
		},
		{
			text='5',
			func=function() self:SetOption("Step","showcountsteps 5") end,
			checked=function() return not self.db.profile.showallsteps and self.db.profile.showcountsteps==5 end,
		},
	}

	ZGVFMenu.onHide = function()
		ZGVFMenu.stepframe=nil
		ZGVFMenu.goalframe=nil
	end

	EasyFork(menu,ZGVFMenu,"cursor",0,0,"MENU",3)
end
--]]

function ZGV:OpenMapToQuestGoal(questid,goalnum)
end

local function split(str,sep)
	local fields = {}
	str = str..sep
	str:gsub("(.-)"..sep, function(c) tinsert(fields, c) end)
	return fields
end

function ZGV:FindOrCreateGroup(group,title,onlyfind)
	local path = split(title,"\\")

	-- create one
	local partialpath
	for i=1,#path do
		local found = false
		for n,gr in ipairs(group.groups) do
			if gr.name==path[i] then
				found=true
				group=gr
			end
		end
		partialpath = (partialpath and partialpath.."\\" or "") .. path[i]
		if not found then
			if onlyfind then 
				return false
			else
				local gr = {name=path[i],fullpath=partialpath,groups={},guides={},ord=#group.groups+1}
				tinsert(group.groups,gr)
				if i==1 then  -- we're at top level
					SortGroups(group, false and "no recurse")
					self:SendMessage("ZGV_LOADING_TOPLEVEL_GROUPS_UPDATED")
				end
				group=gr
			end
		end
	end
	return group
end

-- IN: "Zygor's Alliance Leveling Guides"
-- OUT: "Leveling"
function ZGV:SanitizeGuideTitle(title)
	if not title then return end
	title = title:gsub([[\\]],[[\]])
	title = title :gsub("^Zygor's ","")
	title = title :gsub("^Alliance ","") :gsub("^Horde ","")  -- code-side fix for "common" guides.
	--title = title :gsub(" Guide$","") :gsub(" Guides$","")

	-- fix old-style guide paths
	title = title
		:gsub("^Event.-\\","EVENTS\\")
		:gsub("^Dail.-\\","DAILIES\\")
		:gsub("^Leveling.-\\","LEVELING\\")
		:gsub("^Loremaster.-\\","LOREMASTER\\")
		:gsub("^Profession.-\\","PROFESSIONS\\")
		:gsub("^Achievement.-\\","ACHIEVEMENTS\\")
		:gsub("^Pet.-\\","PETSMOUNTS\\")
		:gsub("^Reputation.-\\","REPUTATIONS\\")
		:gsub("^Title.-\\","TITLES\\")
		:gsub("^Macro.-\\","MACROS\\")
		:gsub("^Dungeon.-\\","DUNGEONS\\")
		:gsub("^Gear.-\\","GEAR\\")
		:gsub("^Test Guide.-\\","TEST\\")
		:gsub("^Misc.-\\","MISC\\")

	return title
end

function ZGV:GetShortGuideTitle(longtitle)
	local sane = ZGV:SanitizeGuideTitle(longtitle)
	return sane:match("([^\\]*)$") or longtitle
end

function ZGV:RegisterGuide(title,header,data)
	title = self:SanitizeGuideTitle(title)

	local guide = ZGV.GuideProto:New(title,header,data)

	if ZGV.BETAguides and guide then guide.beta=true end

	--[[
	local file,line = ZGV.F.GetCurrentPath(3)
	header.source_file = file
	header.source_line = line
	--]]

	tinsert(self.registeredguides,guide)
end

local placeholder_header_data = {}
local placeholder_get_status = function() return "MISSING","" end
local placeholder_empty_function = function() end
function ZGV:RegisterGuidePlaceholder(title)
	title = self:SanitizeGuideTitle(title)

	local path,tit = title:match("^(.*)\\+(.-)$")
	if not path then path=title end
	local guidetype = path:match("^(.-)\\") or path

	local guide = {
		title=title,
		title_short=tit or title,
		num=#ZGV.registeredguides+1,
		type=guidetype,
		missing=true,
		headerdata=placeholder_header_data,
		GetStatus=placeholder_get_status,
		ParseHeader=placeholder_empty_function,
		Parse=placeholder_empty_function,
		IsFavourite=placeholder_empty_function,
		GetCompletion=placeholder_empty_function,
	}

	tinsert(self.registeredguides,guide)
end


function ZGV.BETASTART()
	ZGV.BETAguides=true
end
function ZGV.BETAEND()
	ZGV.BETAguides=false
end

ZGV.registered_mapspotset_groups = { groups={},guides={}}

function ZGV:RegisterMapSpots(title,data)
	local group,tit = title:match("^(.*)\\+(.-)$")
	if group then
		group = self:FindOrCreateGroup(self.registered_mapspotset_groups,group)
	else
		group = self.registered_mapspotset_groups
	end

	local set = self.MapSpotSetProto:NewRaw(title,tit or title,data)

	tinsert(group.guides,{full=title,short=tit or title,num=#self.registeredmapspotsets+1})
	tinsert(self.registeredmapspotsets,set)
end

ZGV.registered_sortings = {}
local test=0
function ZGV:RegisterGuideSorting(array)
	for i,gr in ipairs(array) do
		self.registered_sortings[gr]=i
	end
end

ZGV.registered_includes = {}
function ZGV:RegisterInclude(title,text)
	self.registered_includes[title]={text=text}

	self.registered_includes[title].GetParsed = function (self,params)
		local function parse_param(param)
			return params and params[param] or ""
		end
		return self.text:gsub("%%(%w+)%%",parse_param)
	end
end

ZGV.registered_functions = {}
function ZGV:RegisterFunction(title,func)
	self.registered_functions[title]={func=func}

	self.registered_functions[title].GetParsed = function (self,params)
		local function parse_param(param)
			return params[param] or ""
		end
		local text = func()
		return text:gsub("%%(%w+)%%",parse_param)
	end
end

--[[
function ZGV:UnregisterGuide(name)
	local data
	if type(name)=="number" then
		if self.registeredguides[name] then
			data = self.registeredguides[name].data
			table.remove(self.registeredguides,name)
			self:Print("Unregistered guide number: "..name)
		else
			self:Print("Cannot find guide number: "..name)
			return false
		end
	else
		local i,v
		for i,v in ipairs(self.registeredguides) do
			if v.title==name then
				data = v
				table.remove(self.registeredguides,i)
				self:Print("Unregistered guide: "..name)
			end
		end
		if not data then
			self:Print("Cannot find guide: "..name)
			return false
		end
	end
	if data.is_stored then
		self.db.global.storedguides[name] = nil
		self:Print("Removed stored data for: "..name)
	end
	return true
end
--]]

--[[
function ZGV:RegisterStoredGuides()
	local k,v
	for k,v in pairs(self.db.global.storedguides) do
		table.insert(self.registeredguides,{title=k,data=v,is_stored=true})
		self:Print("Retrieved guide "..k.." from storage.")
	end
end
--]]

function ZGV:UpdateMapButton()
	if self.db.profile.showmapbutton then ZygorGuidesViewerMapIcon:Show() else ZygorGuidesViewerMapIcon:Hide() end
end

ZGV.ProfilerRunning=nil -- Just not to forget

function ZGV:ProfilerEnable()
	SetCVar("scriptProfile","1")
	ReloadUI()
end

-- This attempts to create a CSV profile report based on any ZGV function we can get our hands on
-- If you are doing funny stuff with functions, keep in mind that any function is accounted only once
-- so if a function is encountered in several namespaces, you only get one
function ZGV:ProfilerReport()
    -- Sanity
    if GetCVar("scriptProfile")~="1" and not self.ProfilerMode then
        self:Print("Profiling is not enabled, cannot do this, sorry. Please enable the profiler in Zygor settings and rety.")
        return
    end

	if self.ProfilerRunning then
		local gscope=getfenv(0) -- Global scope
		local culprits={} -- Table of all functions we are interested in
		local tablesVisited={} -- Tables we have already touched, a countermeasure against cyclical links
		tablesVisited[tablesVisited]=true
		tablesVisited[culprits]=true

		local function tryToRegisterFunc(f,n)
			if not culprits[f] or #culprits[f]>#n then
				culprits[f]={name=n} -- Yeah the function is the table key, you saw it right ~aprotas
			end
		end

		-- First, let's gather the culprits
		local function inspect(obj,objname) -- local func to recursively inspect an object and its subobjects and so on
			tablesVisited[obj]=true
			for kk,vv in pairs(obj) do
				if type(vv)=="function" then
					tryToRegisterFunc(vv,objname..":"..tostring(kk))
					elseif type(vv)=="table" and not tablesVisited[vv] then
					inspect(vv,objname.."."..tostring(kk))
				end
			end
		end
		inspect(gscope,"")

		-- Getting the data and saving them in a database
		self.db.profile.profiler_stats={}
		for fun,tab in pairs(culprits) do
			local _
			tab.fulltime,tab.count=GetFunctionCPUUsage(fun,true)
			tab.puretime,_=GetFunctionCPUUsage(fun,false)
			if tab.count>0 then -- We don't want THIS much litter, do we?
				table.insert(self.db.profile.profiler_stats,{name=tab.name,fulltime=tab.fulltime,
						puretime=tab.puretime,count=tab.count,fullavg=tab.fulltime/tab.count,pureavg=tab.puretime/tab.count})
			end
		end

		-- Nice, now we have to sort it and find 100-top entries, I guess that's gonna be enough for testing and not too much for overflood
		table.sort(self.db.profile.profiler_stats,function(n1,n2)return n1.fulltime>n2.fulltime end)

		local s=""
		s="fulltime,puretime,count,fullavg,pureavg,func\n"
		for i=1,min(#self.db.profile.profiler_stats,100) do
			local v=self.db.profile.profiler_stats[i]
			s=s..v.fulltime..","..v.puretime..","..v.count..","..v.fullavg..","..v.pureavg..","..v.name.."\n"
		end

		self:ShowDump(s,"Profiler Report",true) -- TODO emails and stuff,make it readonly
		self:Print("Profiler report created.")
		self.ProfilerRunning=nil
	else
		self:Print("Profiling recording started.")
		self.ProfilerRunning=true
	end
    -- Reset the counters
    ResetCPUUsage()
end


local math_floor = math.floor
local function round(num, digits)
	-- banker's rounding
	local mantissa = 10^digits
	local norm = num*mantissa
	norm = norm + 0.5
	local norm_f = math_floor(norm)
	if norm == norm_f and (norm_f % 2) ~= 0 then
		return (norm_f-1)/mantissa
	end
	return norm_f/mantissa
end

function ZGV:Echo (s)
	--if not self.db.profile.silent then
	self:Print(tostring(s))
	--end
end


local debugcolor="|cffff88dd"

local last_t=0
local mscycle=false
local mscolors={"|cffffcc00","|cffffaa00"}
local timecolor=mscolors[1]

ZGV.DEBUG_DEPTH=0
ZGV.DEBUG_STACK={}

local REPLACECODE = "|c00000000"

local framestart_t = 0
local display={}
function ZGV:Debug (msg,...)
	local profile = ZGV.db and ZGV.db.profile   if not profile then return end
	if not profile.debug then return end
	
	--local initial_time=debugprofilestop()

	table.wipe(display)
	for i=1,select("#",...) do display[i]=select(i,...) or "nil" end
	-- just in case:
	table.insert(display,0) table.insert(display,0) table.insert(display,0)

	local depth=0
	if profile.debug_showdepth then debugstack():gsub("\n",function() depth=depth+1 end) end

	local flagsmsg
	local stack_depth=2
	local stackflag,stack_delayed_change
	local show_warning
	local replace_id
	while msg:sub(1,1)=="&" do
		local flag,rest = msg:match("^&([a-zA-Z0-9_]+)%s*(.*)$")
		if flag then
			if flag=="_SUB0" then
				stack_depth=nil
			elseif flag=="_SUB" then
				stack_depth=3
			elseif flag=="_SUB2" then
				stack_depth=4
			elseif flag=="_SUB3" then
				stack_depth=5
			elseif flag=="_PUSH" then
				stack_delayed_change=1
				stackflag = "-> "
				tinsert(ZGV.DEBUG_STACK,msg)
			elseif flag=="_POP" then
				ZGV.DEBUG_DEPTH=max(0,ZGV.DEBUG_DEPTH-1)
				tremove(ZGV.DEBUG_STACK)
				stackflag = "<- "
			elseif flag=="_WARN" then
				show_warning=true
			elseif flag=="_REPLACE" then
				replace_id,rest = rest:match("^(%S+)%s*(.*)$")
			else
				local flagdata = ZGV.db.profile.debug_flags and ZGV.db.profile.debug_flags[flag]
				if flagdata==false then return end -- Any flag false = message is out.  "false" strictly, otherwise assume it SET!
				if type(flagdata)=="table" then
					if not flagdata.enabled then return end
					if flagdata.color then flag = "|c"..flagdata.color..flag.."|r" end
				end
				flagsmsg = (flagsmsg and (flagsmsg.." ") or "") .. "[" .. flag .. "]"
			end
			msg = rest
		else
			msg="?"..msg:sub(2) -- failsafe, cut the & off
		end
	end

	--[[
		-- maybe... no.
		if ZGV.SHOW_STACKDEPTH_IN_DEBUG then
		local i=0
		msg:gsub("\n",
	--]]

	if stackflag then msg = stackflag..msg end
	msg = strrep("- ",ZGV.DEBUG_DEPTH) .. msg
	if stack_delayed_change then ZGV.DEBUG_DEPTH=ZGV.DEBUG_DEPTH+stack_delayed_change end

	if flagsmsg then msg = flagsmsg.." "..msg end
	if replace_id then msg = msg .. REPLACECODE.."["..replace_id.."]|r" end
	msg = strrep(".",depth) .. " " .. msg
	local formatted_msg = format(tostring(msg),unpack(display)) :gsub("|r",debugcolor)

	local func
	if stack_depth and profile.debug_showcall then
		func = debugstack(stack_depth,1,-1)
		func = func:match("^(.-)\n") or func
		func = func:gsub(".*\\([^\\]-:%d+): in function `(.-)'","%1:%2") or func
		func = func:gsub(".*\\([^\\]-:%d+): in function.-string \"*(:.-)\"","%1:%2") or func
		func = func:gsub(".*\\([^\\]-:%d+): in function <.->","%1:<local>") or func
	end

	if true then -- self and self.db and self.db.profile and self.db.profile.debug and not self.db.profile.quiet then
		self.DebugI = (self.DebugI or 0) + 1
		--func = func:match("in function `(.-)'") or func
		--func = func:match("in function.-string \"*(:.-)\"") or func
		local current_time = debugprofilestop()
		local t = GetTime()
		if t~=last_t then
			framestart_t = current_time
			mscycle=not mscycle
			last_t=t
			timecolor=mscolors[mscycle and 1 or 2]
		end
		local debugms = current_time-framestart_t

		local chatframe = ZGV.debugframe
		if not chatframe then
			chatframe = _G[ZGV.db.profile.debug_frame or "ChatFrame1"]
			ZGV.debugframe = chatframe
		end
		if not chatframe then chatframe=ChatFrame1 end

		local message
		if func then
			message = ("|cffffee77Z|r: %s%06.03f+%03d|r |cff00ddbb#%d:|r %s%s  |cffaaaaaa(%s)"):format(timecolor,(t-self.timestamp_loaded_GT),debugms,self.DebugI,debugcolor,formatted_msg,func)
		elseif self.db.profile.debug_fps then
			message = ("|cffffee77Z|r: %s%06.03f+%03d|r@%03d |cff00ddbb#%d:|r %s%s"):format(timecolor,(t-self.timestamp_loaded_GT),debugms,GetFramerate(),self.DebugI,debugcolor,formatted_msg)
		else
			message = ("|cffffee77Z|r: %s%06.03f+%03d|r |cff00ddbb#%d:|r %s%s"):format(timecolor,(t-self.timestamp_loaded_GT),debugms,self.DebugI,debugcolor,formatted_msg)
		end

		local replace_at
		if replace_id then  -- find same message in history
			local buffer = chatframe.historyBuffer
			local i=buffer.headIndex or #buffer.elements
			local maxdist=10 -- how far back we can replace
			local dist=0
			repeat
				local msg=buffer.elements[i]
				if not msg then break end
				if msg.message:find(REPLACECODE.."["..replace_id,1,true) then replace_at=i break end
				i=i-1
				if i<1 then i=#buffer.elements end
				dist=dist+1
			until replace_at or dist>=maxdist
		end
		if replace_at then
			chatframe.historyBuffer.elements[replace_at].message=message
			chatframe:MarkDisplayDirty()
		else
			chatframe:AddMessage(message)
		end
		if show_warning then
			RaidNotice_AddMessage(RaidWarningFrame, "[|cffff8800Z|r] "..formatted_msg, HIGHLIGHT_FONT_COLOR);
		end
	end
	if func then
		self.Log:Add("%s (%s)",formatted_msg,func)
	else
		self.Log:Add("%s",formatted_msg)
	end

	--local debug_time=debugprofilestop()-initial_time
end

function ZGV:Debug_FlagsMenu()
	ZGV.Debug_FlagsTable = {}
	for k,v in pairs(ZGV.db.profile.debug_flags) do
		ZGV.Debug_FlagsTable[setmetatable({},{__tostring=function() return k .. ": " .. (ZGV.db.profile.debug_flags[k].enabled and "ON" or "OFF") end})] = function() ZGV:SetOption("Cover","debugflag "..k) end
	end
	Spoo (ZGV.Debug_FlagsTable)
end


-- HACKS
function ZGV:ListQuests(from,to)
	local CQI=Cartographer_QuestInfo
	local qlog = ""
	for i=from,to do
		local level = CQI:PeekQuest(i)
		--if not level then level=0 end
		if level then
			local title,_,_,_,nobjs = CQI:GetQuestText(i,level)
			--if not title then title = CQI:GetQuestText(i,level) end -- well, they said to repeat it...
			--self:Print(i..": |cff808080|Hquest:"..i..":"..level.."|h["..tostring(title).."]|h|r "..(type(objs)=="table" and "{"..table.concat(nobjs,",").."}" or ""))
			qlog = qlog .. i..": "..tostring(title)..(type(nobjs)=="table" and " {"..table.concat(nobjs,",").."}" or "") .. "|n"
		end
	end
	if Chatter then
		Chatter:GetModule("Chat Copy").editBox:SetText(qlog)
		Chatter:GetModule("Chat Copy").editBox:HighlightText(0)
		Chatter:GetModule("Chat Copy").frame:Show()
	end
end

function ZGV:ReloadTranslation()
	for i,guide in ipairs(self.registeredguides) do
		for s,step in ipairs(guide.steps) do
			for g,goal in ipairs(step.goals) do
				goal.L=false
			end
		end
	end
end

-- used for steps and goals
--[[
function ZGV.ConditionTrue(subject,case)
	if not subject.conditions then return false end
	local f=subject.conditions[case]
	if type(f)=="function" then
		return f()
	elseif type(f)=="string" then
		f=subject.conditions[f]
		assert(type(f)=="function","What? This step has cross-referencing conditions? wtf.")
		return not f()
	end
end
--]]

function ZGV.gradient3(perc,ar,ag,ab,br,bg,bb,cr,cg,cb, middle)
	if perc >= 1 then
		return cr,cg,cb
	elseif perc<=0 then
		return ar,ag,ab
	else
		if perc<=middle then
			perc=perc/middle
			return ar+(br-ar)*perc, ag+(bg-ag)*perc, ab+(bb-ab)*perc
		else
			perc=(perc-middle)/(1-middle)
			return br+(cr-br)*perc, bg+(cg-bg)*perc, bb+(cb-bb)*perc
		end
	end
end

--hooksecurefunc("WorldMapFrame_UpdateQuests",function() if not InCombatLockdown() then text=nil end end)
--hooksecurefunc("QuestInfo_Display",function() if not InCombatLockdown() then shownFrame=nil bottomShownFrame=nil end end)



--[[


function FindAch_AchievementFrame_OnShow(self)
	local editbox = AchievementFrame_FindAch_Edit
	if not editbox then
		editbox = CreateFrame("EditBox","AchievementFrame_FindAch_Edit",AchievementFrame,"InputBoxTemplate")
		editbox:SetSize(150,30)
		editbox:SetPoint("TOPLEFT",AchievementFrame,"TOPLEFT",150,15)
		editbox:Show()
		editbox:SetFocus(false)
	end
end

function FindAch_Listen_OnEvent(self,event,...)
	if event=="ADDON_LOADED" and ...=="Blizzard_AchievementUI" then
		AchievementFrame:HookScript("OnShow",FindAch_AchievementFrame_OnShow)
	end
end
local frame=CreateFrame("FRAME","FindAch_Listen")
frame:SetScript("OnEvent",FindAch_Listen_OnEvent)
frame:RegisterEvent("ADDON_LOADED")

--]]

-- encraption.
function ZGV:CraptOnReload(name)

end


function ZGV:COMBAT_LOG_EVENT_UNFILTERED(event,time,evtype,a1,a2,a3,a4,a5)
	--print(evtype,a3)
	if evtype=="PARTY_KILL" then
		if a3==UnitName("player") then
			self.MagicKey.retarget_time = GetTime()
			self:SetMagicKey()
		end
	end
end


-- CONVENIENCE: /re for Reload
SLASH_RE1 = "/re"
function SlashCmdList.RE(text)  ReloadUI()  end

local lastbind
function ZGV:SetMagicKey(reset)
	if not self.MagicKey.FR then return end
	if reset then lastbind=nil end

	if not ZGV.db.profile.magickey or ZGV.db.profile.magickey==""
		or InCombatLockdown()
		or not ZGV.CurrentStep or not ZGV.CurrentStep.goals or not ZGV.Frame:IsShown()
		then
			self.MagicKey.FR:Hide()
			return
		end

	self.MagicKey.FR:Show()

	local bind,bind2

	local function DoBind(bind,bind2,desc)
		if not bind then
			self.MagicKey:SetHint("")
		end

		if lastbind~=(bind2 or bind) then
			if bind=="CLICK" then
				SetBindingClick(self.db.profile.magickey,bind2)
			else
				SetBinding(self.db.profile.magickey,bind)
			end
			lastbind=bind2 or bind
			self:Debug("Magic Key binding: %s",tostring(bind2 or bind))
		end

		self.MagicKey:SetHint(desc)
	end

	-- turn in quests
	if self.db.profile.magickey_acceptturnin and GossipFrame:IsShown() or QuestFrame:IsShown() then
		for gi,g in ipairs(self.CurrentStep.goals) do
			if g.action=="accept" or g.action=="turnin" then
				return DoBind("CLICK","ZygorGuidesViewer_MagicKeyHint_Button", "Accept/Turn In")
			end
		end
	end

	-- suggest retargeting corpses
	if self.db.profile.magickey_targetcorpse and self.MagicKey.retarget_time and (GetTime()-self.MagicKey.retarget_time < 3) and not UnitName("target") then
		return DoBind("TARGETLASTTARGET",nil, "Target corpse")
	end


	local targetid = self.GetTargetId()
	if self.db.profile.magickey_loot and UnitIsDead("target") then
		return DoBind("InteractTarget",nil,"Loot")
	end

	for gi,g in ipairs(self.CurrentStep.goals) do
		if g:IsComplete() then
			-- do nothing ;P

		elseif targetid and ((UnitName("target") == g.target) or (targetid == (g.npcid or (g.mobs and g.mobs[1] and g.mobs[1].id)))) then
			-- interact in its varieties
			local hint
			if UnitIsFriend("target","player") and self.db.profile.magickey_talk then
				return DoBind("InteractTarget",nil,"Talk")
			elseif not UnitIsFriend("target","player") and self.db.profile.magickey_attack then
				return DoBind("InteractTarget",nil,"Attack")
			end

		elseif g.macro then
			local src = g.macrosrc
			local hint
			if src then
				local npc = src:match("/target (.+)\n")
				if npc then
					if self.db.profile.magickey_target then
						return DoBind("MACRO "..g.macro, nil, "Target: "..npc)
					end
				else
					if self.db.profile.magickey_itemspell then
						return DoBind("MACRO "..g.macro, nil, "Use macro: "..g:GetText())
					end
				end
			else
				return DoBind("MACRO "..g.macro, nil, "(macro?)")
			end


		elseif _G['ZygorGuidesViewerFrame_Act'..(g.num+1)..'Action']:IsShown() then
			if self.db.profile.magickey_itemspell then
				return DoBind("CLICK","ZygorGuidesViewerFrame_Act"..(g.num+1).."Action", g:GetText())
			end
		end

		--[[
		if (g.action=="kill" and g.target) or (g.action=="talk" and g.npcid) or (g.action=="from" and (g.mobs and g.mobs[1] and g.mobs[1].name)) then
			firstname=(g.target or g.npcid) or (g.mobs and g.mobs[1] and g.mobs[1].name)

			break
		end
		--]]
	end

	return DoBind(nil,nil,nil)
end

function ZGV.MagicButton_OnClick(but)
	ZGV:QuestAutoStuff()
end

-- SECURE!
function ZGV:MagicRaidMarker()
	if not ZGV.db.profile.targetonclick then return ZGV end
	
	if not UnitExists("target") then return end

	ZGV.db.profile.magicmarker_mob=8
	ZGV.db.profile.magicmarker_npc=4

	if UnitCanAttack("player","target") then
		local icon = GetRaidTargetIndex("target")
		if icon~=ZGV.db.profile.magicmarker_mob then
			SetRaidTarget("target",ZGV.db.profile.magicmarker_mob)
		end
	else
		local icon = GetRaidTargetIndex("target")
		if icon~=ZGV.db.profile.magicmarker_npc then
			SetRaidTarget("target",ZGV.db.profile.magicmarker_npc)
		end
	end
	return ZGV  -- for chaining
end
function ZGV:MaybeClearRaidMarker(index)
	if not UnitExists("target") then return end
	if GetRaidTargetIndex("target")==index then SetRaidTarget("target",0) end
end

ZGV.MRM = ZGV.MagicRaidMarker
ZGV.MCM = ZGV.MaybeClearRaidMarker



function ZGV:MacroClickGoal(stepnum,goalnum)
	if self.CurrentGuide and self.CurrentGuide.steps[stepnum] and self.CurrentGuide.steps[stepnum].goals[goalnum] then self.CurrentGuide.steps[stepnum].goals[goalnum]:OnClick() end
end
ZGV.CG = ZGV.MacroClickGoal

function ZGV:ShowAnimatedPopup()
	local dialog = ZGV.PopupHandler:NewPopup(ZGV:RenderAnimation({10,1,48,31,3}),"default")

	local animation1 = {24,43,25,52,7,40,27,26,53,27,34,39,13,50,41,26,27,40,50,35}
	local animation2 = {56,18,34,43,40,13,47,43,27,35,50,52,13,21,49,38,50,13,50,41,26,27,40,50,35,55,13,3,11,50,49,52,50,13,43,26,35,49,53,50,13,53,34,13,40,50,39,50,8,13,16,34,43,40,13,11,27,7,50,39,52,50,55,13,54,17,13,16,34,43,40,13,30,11,27,53,50,13,23,50,23,25,50,40,52,21,27,26,13,21,49,52,13,50,39,35,50,35,13,16,34,43,13,8,27,11,11,13,39,50,50,35,13,53,34,13,40,50,39,50,8,13,16,34,43,40,13,52,43,25,52,7,40,27,26,53,27,34,39,13,53,34,13,40,50,52,53,34,40,50,13,17,43,11,11,13,49,7,7,50,52,52,22,13,34,53,21,50,40,8,27,52,50,13,16,34,43,40,13,49,7,7,50,52,52,13,8,27,11,11,13,25,50,13,11,27,23,27,53,50,35,55}
	
	-- Not perfect, since we are reusing SetText to play animation. Needs refactoring
	dialog:SetText(ZGV:RenderAnimation(animation1),ZGV:RenderAnimation(animation2)) 

	-- Hide buttons, as they mess up animation frames on higher speeds
	dialog.acceptbutton:Hide()
	dialog.declinebutton:Hide()
	dialog.settings:Hide()
	dialog.minimize:Hide()

	dialog:Show()
end

function ZGV:Unparse(id,y,m,d)
	local c,b=string.char,string.byte
	local function enc(a)
		print("coding "..a)
		return c(a%10+1+16*math.floor(a/10))
	end
	local s=("%08d%2d%2d%2d"):format(id,y%100,m,d)
	--local s="12345678010203"
	local s2=""
	for di,i in ipairs{id/100000,id/1000,id/10,id,y,m,d} do s2=s2..enc(b(math.floor(i)%10)) end
	return s2
end

function ZGV:DoMutex(m)
	ZygorGuidesViewer.GuideMenuTier = nil
	if self.guidesets[m] then return true else self.guidesets[m]=true end
end

local flatlist
function ZGV:GetFlatListOfGroups(source,search,target,notoplevel,curlevel)
	if not source then  -- start!
		source=self.registered_groups
		if target then flatlist=target else flatlist={} end
	end
	curlevel=curlevel or 1
	if not source.groups then return end
	for gi,g in pairs(source.groups) do
		if not (notoplevel and curlevel==1)
		and (not search  or  g.name and (g.name:lower():find(search,1,true) or g.name:lower():gsub("%p",""):find(search,1,true))) then
			tinsert(flatlist,g)
		end
		if #g.groups>0 then self:GetFlatListOfGroups(g,search,target,notoplevel,curlevel+1) end
	end
	return flatlist
end

function ZGV:FindGuides(sub)
	local logic="AND"
	if sub:sub(1,3)=="OR " then
		logic="OR"
		sub=sub:sub(4)
	end
	sub=sub:lower()
	local found={}
	self:GetFlatListOfGroups(nil,sub,found, "notoplevel")
	--[[
	for gi,g in pairs(self.registered_groups.groups) do
		if g.name and (g.name:lower():find(sub,1,true) or g.name:lower():gsub("%p",""):find(sub,1,true)) then
			tinsert(found,g)
		end
	end
	--]]

	local already_found={}
	local function do_find(sub,scope,into)
		for gi,g in pairs(scope) do
			if not (g.type=="TEST") and not (logic=="OR" and already_found[g]) then
				if (g.title_short and g.title_short:lower():find(sub,1,true)) then
					if not (ZGV.db.profile.gmhidecompleted and (g:GetStatus()=="OUTLEVELED" or g:GetStatus()=="COMPLETE")) then
						tinsert(into,g)
						already_found[g]=true
					end
				elseif g.keywords then
					for _,word in pairs(g.keywords) do
						if word:lower():find(sub,1,true) then
							tinsert(into,g)
							already_found[g]=true
							break
						end
					end
				end
			end
		end
	end

	local firstword=true
	for word in sub:gmatch("([^%s]+)") do
		if firstword or logic=="OR" then
			do_find(word,self.registeredguides,found)
		else
			local temp={}
			do_find(word,found,temp)
			found=temp
		end
		firstword=false
	end
	return found
end

function ZGV:UnloadUnusedGuides()
	self:Debug("Unimplemented: unloading unused guides.")
end

function ZGV:ClearCurrentGuide()
	self.CurrentGuide=nil
	self.db.profile.guidename=nil
	self:UpdateFrame()
end

-- WARNING Heuristic in this thread. We assume that this is called only after all the guides are registered
-- and therefore, to optimize things a bit, we cache the results of parsing, so that subsequent request to
-- load the same type will immediately return. This will malfunction if the guides are added online between
-- the calls to this function. ~aprotas

local guideTypesLoaded={}

function ZGV:LoadGuidesByType(guidetype)
	assert(guidetype)
	if guideTypesLoaded[guidetype] then return end

	local t1=debugprofilestop()
	for gi,g in pairs(self.registeredguides) do
		if g.type==guidetype then
			g:Parse(true)
		end
	end
	ZGV:Debug("&startup Loaded guides by type: %s = %dms",guidetype,debugprofilestop()-t1)
	guideTypesLoaded[guidetype]=true
end

function ZGV:LoadNeededGuides()
	local t0=debugprofilestop()
	for gi,g in pairs(self.registeredguides) do
		if g.need_to_parse then
			local success = g:Parse(true)
			g.need_to_parse = nil
			if debugprofilestop()-t0>100 then return nil end  -- 0.1s allowed here
		end
	end
	return true
end

ZGV.ParseLog = ""

function ZGV:Error(s,...)
	if (...) then s=s:format(...) end
	self:Print("|cffff0000ERROR:|r "..s)
	ZGV.ParseLog = ZGV.ParseLog .. s .. "\n\n"
	return s
end

function ZGV:ErrorThrow(...)
	local s = self:Error(...)
	geterrorhandler()(s)
end

-- HBD migration snip: Ship Arrival Times 


local lasttime,lastmem=GetTime(),0
local memavg={0,0,0,0,0}
function ZGV:MemHogging()
	UpdateAddOnMemoryUsage()
	local mem = GetAddOnMemoryUsage(addonName)
	local time = GetTime()
	if time~=lasttime and mem~=lastmem then
		local total=0
		for i=1,4 do memavg[i]=memavg[i+1] total=total+memavg[i+1] end
		local kbs = floor((mem-lastmem)/(time-lasttime))
		memavg[5]=kbs

		kbs=(kbs+total)/5

		ZGV.DebugFrame.text1:SetText(("%s %d"):format(strrep(".",kbs/3),kbs))
	end
	lasttime,lastmem=time,mem
end

local memmark=0
function ZGV:MemHogStart()
	UpdateAddOnMemoryUsage()
	memmark=GetAddOnMemoryUsage(addonName)
end

function ZGV:MemHogStop(desc)
	UpdateAddOnMemoryUsage()
	local memmark2=GetAddOnMemoryUsage(addonName)
	print("|cff00ff88",desc,("%.1f"):format(memmark2-memmark))
end

function ZGV:MemHogTest()
	self:MemHogStart()
	self:MemHogStop()
	self:MemHogStart()
	self:MemHogStop()
	self:MemHogStart()
	local a={}
	for i=1,1000 do a[i]={} end
	self:MemHogStop()
end


function ZGV:StartFPSFrame()
	if not ZGV.FPSFrame then
		local SIZE=300
		local MAXFPS=60
		ZGV.FPSFrame = ZGV.ChainCall(CreateFrame("FRAME","ZygorFPSFrame",UIParent)) :SetPoint("BOTTOMLEFT") :SetSize(SIZE+11,MAXFPS) :SetFrameStrata("DIALOG") .__END
		ZGV.FPSFrame.back = ZGV.ChainCall(ZGV.FPSFrame:CreateTexture()) :SetAllPoints() :SetColorTexture(0,0,0,1) .__END
		ZGV.FPSFrame.bars={}
		ZGV.FPSFrame.fpsbars={}
		for b=1,SIZE do
			tinsert(ZGV.FPSFrame.bars, ZGV.ChainCall(ZGV.FPSFrame:CreateTexture()) :SetPoint("BOTTOMLEFT",ZGV.FPSFrame,"BOTTOMLEFT",b,0) :SetSize(1,MAXFPS) :SetColorTexture(1,1,1) :SetDrawLayer("ARTWORK",1) .__END)
			tinsert(ZGV.FPSFrame.fpsbars, ZGV.ChainCall(ZGV.FPSFrame:CreateTexture()) :SetPoint("BOTTOMLEFT",ZGV.FPSFrame,"BOTTOMLEFT",b,0) :SetSize(1,2) :SetColorTexture(1,1,1) :SetDrawLayer("ARTWORK",2) .__END)
		end
		ZGV.FPSFrame.fpsbar = ZGV.ChainCall(ZGV.FPSFrame:CreateTexture()) :SetPoint("BOTTOMLEFT",ZGV.FPSFrame.bars[SIZE],"BOTTOMRIGHT",3,0) :SetSize(5,MAXFPS) :SetColorTexture(1,1,1) :SetDrawLayer("ARTWORK",1) .__END
		ZGV.FPSFrame.hicbar = ZGV.ChainCall(ZGV.FPSFrame:CreateTexture()) :SetPoint("BOTTOMLEFT",ZGV.FPSFrame.bars[SIZE],"BOTTOMRIGHT",10,0) :SetSize(5,MAXFPS) :SetColorTexture(1,1,1) :SetDrawLayer("ARTWORK",1) .__END

		tinsert(ZGV.FPSFrame.bars,ZGV.FPSFrame.fpsbar)

		local barheights={}
		local fpslineheights={}
		for b=1,SIZE do barheights[b]=0 fpslineheights[b]=0 end

		local hiccup=0
		function ZGV.FPSFrame:OnUpdate(elapsed)
			local t1=debugprofilestop()
			--local fps=GetFramerate()
			local n=floor(min(max(1,elapsed*100),SIZE))  -- n bars to cover
			for b=1,SIZE-n do
				barheights[b]=barheights[b+n]
				fpslineheights[b]=fpslineheights[b+n]
			end

			local fps=1/elapsed
			local h=min(fps,MAXFPS)
			local avgfps=min(MAXFPS,GetFramerate())
			for b=SIZE-n+1,SIZE do
				barheights[b]=h
				fpslineheights[b]=avgfps
			end

			local h=min(max(GetFramerate(),1),MAXFPS)
			barheights[SIZE+1]=h  -- fpsbar

			local elams = elapsed*1000
			if elams>50 then --20fps, awful
				hiccup=hiccup+ (elams/50) * 8
			--elseif elams>17 then --60fps, expected
			--	hiccup=hiccup+ ( (elams-17) ) / 10
			end
			hiccup = min(max(0,hiccup-elapsed*5),MAXFPS)
			self.hicbar:SetHeight(min(max(1,hiccup),MAXFPS))


			for b=1,SIZE+1 do
				local h1=barheights[b]/MAXFPS
				local r=(h1<0.5) and 1 or 2-(h1*2)
				local g=(h1<0.5) and h1*2 or 1
				self.bars[b]:SetColorTexture(r,g,0)

				self.bars[b]:SetHeight(barheights[b])
				if b<=SIZE then self.fpsbars[b]:SetPoint("BOTTOMLEFT",b,fpslineheights[b]) end
			end

			local h1=hiccup/MAXFPS
			local r=(h1<0.5) and h1*2 or 1
			local g=(h1<0.5) and 1 or 2-(h1*2)
			self.hicbar:SetColorTexture(r,g,0)

		end
		ZGV.FPSFrame:SetScript("OnUpdate",ZGV.FPSFrame.OnUpdate)
	end
	ZGV.FPSFrame:SetShown(ZGV.db.profile.fpsgraph)
end


ZGV.Quest_Choices = {}
function ZGV:ZGV__QUEST_CHOICE_SENT(event,id,choice)
	ZGV:Debug("Quest choice: choice id |cffffeeaa%d|r, selected |cffffeeaa%d|r",id,choice)
	ZGV.Quest_Choices[id]=choice
end

function ZGV:Hook_QuestChoice()
	if ZGV.Expansion_Shadowlands then return end
	if not ZGV.IsRetail then return end
	hooksecurefunc("SendQuestChoiceResponse",function(...) ZGV.Surrogate_SendQuestChoiceResponse(...) end)
	ZGV:AddMessageHandler("ZGV__QUEST_CHOICE_SENT")
end

function ZGV.Surrogate_SendQuestChoiceResponse(choice)
	local id = C_QuestChoice.GetQuestChoiceInfo()
	ZGV:SendMessage("ZGV__QUEST_CHOICE_SENT",id,choice)
end


-- player choices made in Blizzard_PlayerChoiceUI
function ZGV.PLAYER_CHOICE_UPDATE()
	-- requested, but not used in the end
	-- broken in dragonflight
	do return end

	ZGV.db.char.playerchoices = ZGV.db.char.playerchoices or {}
	local playerchoices = ZGV.db.char.playerchoices 

	local choice = C_PlayerChoice.GetPlayerChoiceInfo()

	if not choice then
		ZGV.db.char.playerchoicegroup=nil
		return 
	end

	ZGV.db.char.playerchoicegroup = choice.choiceID

	playerchoices[choice.choiceID] = playerchoices[choice.choiceID] or {}

	for i=1,choice.numOptions do
		local c = C_PlayerChoice.GetCurrentPlayerChoiceInfo()
		playerchoices[choice.choiceID][i] = playerchoices[choice.choiceID][i] or {selected=false,name=(c.header or "").." "..(c.subheader or "")}
		playerchoices[choice.choiceID][i].responseIdentifier=c.responseIdentifier -- each time we open the dialog window, buttons are getting new ids, so we need to update
	end
	playerchoices[choice.choiceID].scenario = C_Scenario.IsInScenario()
end

function ZGV.PLAYER_CHOICE_CLOSE()
	local playerchoices = ZGV.db.char.playerchoices 
	if not playerchoices then return end

	for iset,set in pairs(ZGV.db.char.playerchoices) do
		local selected = false
		for ichoice,choice in ipairs(set) do
			selected = selected or choice.selected
		end
		if not selected then
			ZGV.db.char.playerchoices[iset]=nil
		end
	end
end

function ZGV:PlayerChoiceCleanUp()
	if not ZGV.db.char.playerchoices then return end
	local inscenario = C_Scenario.IsInScenario()
	for i,v in pairs(ZGV.db.char.playerchoices) do
		if v.scenario and not inscenario then
			ZGV.db.char.playerchoices[i]=nil
		end
	end
end

function ZGV:PlayerChoiceResponce(buttonID)
	if not ZGV.db.char.playerchoicegroup then return end
	local currentplayerchoices = ZGV.db.char.playerchoices and ZGV.db.char.playerchoices[ZGV.db.char.playerchoicegroup]

	if not currentplayerchoices then return end

	for i,v in ipairs(currentplayerchoices) do
		if v.responseIdentifier==buttonID then
			v.selected = true
		else
			v.selected = false
		end
	end
end


function ZGV:QuestRewardSelect(choice)
	local id = C_QuestChoice.GetQuestChoiceInfo()
	local questrewards=ZGV.db.char.questrewards
	for i,v in pairs(questrewards) do
		if v.quest==id then questrewards[i]=nil end -- unset previous choices for this quest
	end
	questrewards[choice]={quest=id, unconfirmed=true} -- selected, not confirmed via quest
end

function ZGV:QuestRewardConfirm()
	local questrewards=ZGV.db.char.questrewards
	for i,v in pairs(questrewards) do
		if v.unconfirmed then v.unconfirmed=nil end -- mark previous unconfirmed choice as confirmed
	end
end


--local Gratuity = LibStub("LibGratuity-3.0")
--[[
function ZGV:UPDATE_MOUSEOVER_UNIT()
	if not ZGV.TargetPingFrame then
		ZGV.TargetPingFrame = ZGV.ChainCall(CreateFrame("FRAME","ZGVTargetPingFrame")) :SetSize(100,100) .__END
		ZGV.TargetPingFrame.tex = ZGV.ChainCall(ZGV.TargetPingFrame:CreateTexture()) :SetPoint("CENTER") :SetTexture(ZGV.DIR.."\\skins\\minimaparrow-ant") :SetAlpha(0.3) :SetBlendMode("ADD") .__END
		ZGV.TargetPingFrame:SetScript("OnUpdate",function(self,elapsed)
			if self.cycle>0 then
				self.tex:SetAlpha(self.cycle*0.3)
				local siz=self.cycle*10+60
				self.tex:SetSize(siz,siz)
				self.cycle=self.cycle-elapsed*3
			end
			if self.cycle<=0 then self:Hide() end
		end)
		ZGV.TargetPingFrame.cycle=0
	end

	local npc = GameTooltipTextLeft1:GetText()
	if npc and self.CurrentStep and self.CurrentStep.goals then
		local found
		for g,goal in ipairs(ZGV.CurrentStep.goals) do
			if npc==goal.target or npc==goal.npc then
				found=true
				break
			elseif goal.mobs then
				for m,mob in ipairs(goal.mobs) do
					if mob.name==npc then found=true break end
				end
			end
		end
		if found then
			PlaySound(SOUNDKIT.GS_TITLE_OPTION_EXIT)
			ZGV.TargetPingFrame:ClearAllPoints()
			local x,y=GetCursorPosition()
			ZGV.TargetPingFrame:SetPoint("CENTER",nil,"BOTTOMLEFT",x,y)
			ZGV.TargetPingFrame.cycle=1
			ZGV.TargetPingFrame:Show()
		end
	end
end
--]]

ZGV.Spark={}

-- These were sparks. They were distracting. Leaving for future.
-- Actually, they're fun.
function ZGV:UPDATE_MOUSEOVER_UNIT()
	local time=GetTime()
	if not ZGV.TargetPingFrame then
		ZGV.TargetPingFrame = ZGV.ChainCall(CreateFrame("FRAME","ZGVTargetPingFrame")) :SetSize(1,1) :SetPoint("BOTTOMLEFT") .__END
		local NUMFLY=20
		ZGV.TargetPingFrame.tex={}
		local function Fly(tex,elapsed)
			tex.life=tex.life-elapsed
			if tex.life<=0 then tex.life=0.001 end
			local siz = tex.siz*tex.life
			tex:SetSize(siz,siz)
			tex.y=tex.y+tex.dy*elapsed
			tex.dy=tex.dy-elapsed*45
			tex.x=tex.x+tex.dx*elapsed
			tex:SetPoint("CENTER",tex:GetParent(),"BOTTOMLEFT",tex.x,tex.y)
		end
		local function Start(tex,x,y)
			tex.dx=60*(random()-0.5)
			tex.dy=60*(random()-0.3)
			tex.x=x+tex.dx*random()*0.3
			tex.y=y+tex.dy*random()*0.3
			tex.siz=random(5,10)
			tex.life=1
			tex:Show()
		end
		for i=1,NUMFLY do
			ZGV.TargetPingFrame.tex[i] = ZGV.ChainCall(ZGV.TargetPingFrame:CreateTexture()) :SetPoint("CENTER") :SetSize(20,20) :SetTexture(ZGV.SKINSDIR.."minimaparrow-ant") :SetBlendMode("ADD") .__END
			ZGV.TargetPingFrame.tex[i].Fly = Fly
			ZGV.TargetPingFrame.tex[i].Start = Start
			ZGV.TargetPingFrame.tex[i].life=0
		end
		ZGV.TargetPingFrame.nexttex=1
		ZGV.TargetPingFrame.firing=0

		-- continuous firing.
		---[[
		ZGV.TargetPingFrame:SetScript("OnUpdate",function(self,elapsed)
			if self.firing then
				--self.firing=self.firing-elapsed
				local x,y=GetCursorPosition()
				-- generate new
				self.nexttex=self.nexttex+1  if self.nexttex>NUMFLY then self.nexttex=1 end
				self.tex[self.nexttex]:Start(x,y)
			end
			for i=1,NUMFLY do local t=self.tex[i]  if t.life>0.01 then t:Fly(elapsed) else t:Hide() end end
			if not GameTooltip:IsShown() or GameTooltip:GetAlpha()<0.9 then self.firing=nil end
		end)
		function ZGV.TargetPingFrame:Start()
			PlaySound(SOUNDKIT.GS_TITLE_OPTION_EXIT)
			--self:SetPoint("CENTER",nil,"BOTTOMLEFT",x,y)
			self.firing=1
			self:Show()
		end
		--]]

		--[[
		ZGV.TargetPingFrame:SetScript("OnUpdate",function(self,elapsed)
			if self.tex[1].life<0 then return end
			for i=1,NUMFLY do local t=self.tex[i]  if t.life>0.01 then t:Fly(elapsed) else t:Hide() end end
		end)
		function ZGV.TargetPingFrame:Start()
			PlaySound(SOUNDKIT.GS_TITLE_OPTION_EXIT)
			--self:SetPoint("CENTER",nil,"BOTTOMLEFT",x,y)
			local x,y=GetCursorPosition()
			for i=1,NUMFLY do  self.tex[i]:Start(x,y)  end
			self:Show()
		end
		--]]
	end

	if ZGV.Spark.LastEvent=="CURSOR_UPDATE" and ZGV.Spark.LastCursorUpdate~=time then return end

	local npc = GameTooltip:IsShown() and GameTooltip:GetAlpha()>0.9 and GameTooltipTextLeft1:GetText()
	if npc and self.CurrentStep and self.CurrentStep.goals then
		local found
		for g,goal in ipairs(ZGV.CurrentStep.goals) do
			if npc==goal.target or npc==goal.npc then
				found=true
				break
			elseif goal.mobs then
				for m,mob in ipairs(goal.mobs) do
					if mob.name==npc then found=true break end
				end
			end
		end
		if found then
			ZGV.TargetPingFrame:Start()
		else
			ZGV.TargetPingFrame.firing=nil
		end
	else
		ZGV.TargetPingFrame.firing=nil
	end
	ZGV.Spark.LastEvent="UPDATE_MOUSEOVER_UNIT"
end
function ZGV:CURSOR_UPDATE()
	--ZGV:UPDATE_MOUSEOVER_UNIT()
	ZGV.Spark.LastCursorUpdate=GetTime()
	if ZGV.TargetPingFrame then ZGV.TargetPingFrame.firing=nil end
	ZGV.Spark.LastEvent="CURSOR_UPDATE"
end
--

function ZGV:WarnAboutDebugSettings()
	if self.db.profile.fakecombat then self:Print("WARNING, DEBUG: Faked combat is on.",nil,true) end
	if self.db.profile.fakeskills and next(self.db.profile.fakeskills) then self:Print("WARNING, DEBUG: Fake professions are set.",nil,true) end
	if self.db.profile.fakereps and next(self.db.profile.fakereps) then self:Print("WARNING, DEBUG: Fake reputations are set.",nil,true) end
	if self.db.profile.fakelevel then self:Print("WARNING, DEBUG: Fake level is set to "..self.db.profile.fakelevel,nil,true) end
	if self.db.profile.debug_librover_fakenofly then self:Print("WARNING, DEBUG: Fake No Flying is enabled",nil,true) end
end

local legion_popup_class = { "Warrior","Paladin","Hunter","Rogue","Priest","Death Knight","Shaman","Mage","Warlock","Monk","Druid","Demon Hunter" }
function ZGV:PLAYER_LEVEL_UP(event,level)
	-- if player is max level, request one last time, then stop recording times
	if level==self.maxlevel then
		ZGV:CancelTimer(self.leveltimer)
		self.leveltimer = nil
		RequestTimePlayed()
	end

	if not ZGV.IsRetail then
		if ZGV.db.profile.n_popup_skills and ZGV.db.profile.n_popup_skills_level then -- use payload level, unitlevel is not yet updated
			ZGV:ScheduleTimer(function() ZGV.Skills:ShowSkillPopup(level) end,5) 
		end
	else
	--[[
		local title,message,guide
		local _,_,classnum = UnitClass("player")
		local classname = legion_popup_class[classnum]

		if level==101 then
			guide = ZGV:GetGuideByTitle("Leveling Guides\\Legion (100-110)\\"..classname.." Order Hall Quests")
			title = "First Class Order Hall Quest Available"
			message = "\nA new Class Order Hall questline is now available.\nWould you like to load the guide for this?"
		elseif level==102 then
			--if ZGV:RaceClassMatch("DEMONHUNTER") then
			--	guide = ZGV:GetGuideByTitle("Leveling Guides\\Starter Guides\\Demon Hunter (98-100)")
			--else
				guide = ZGV:GetGuideByTitle("Leveling Guides\\Legion (100-110)\\"..classname.." Intro & Artifacts")
			--end
			title = "Additional Artifact Weapons Now Available"
			message = "\nYou can now unlock the artifact \nweapons for your other class specs. \nWould you like to load the guide for this?\n"
		elseif level==103 then
			guide = ZGV:GetGuideByTitle("Leveling Guides\\Legion (100-110)\\"..classname.." Order Hall Quests")
			title = "Additional Order Hall Quests Available"
			message = "\nAdditional Order Hall quests are now available.\nWould you like to load the guide for this?"
		elseif level==110 then
			guide = ZGV:GetGuideByTitle("Leveling Guides\\Legion (100-110)\\"..classname.." Order Hall Quests")
			title = "Additional Order Hall Quests Available"
			message = "\nAdditional Order Hall quests are now available.\nWould you like to load the guide for this?"
		end

		if guide then
			guide:LegionPopup(title,message,level)
		end
	--]]
	end
end

local POIcache={}
function ZGV:CachePOIs()
	local mapid = ZGV.GetCurrentMapID() or 0
	POIcache[mapid]=POIcache[mapid] or {}
	table.wipe(POIcache[mapid])
	local points = C_AreaPoiInfo.GetAreaPOIForMap(mapid)
	if points then
		for _,poiID in pairs(points) do
			if poiID then POIcache[mapid][poiID]=true end
		end
	end
end

function ZGV:IsPOIActive(poiid)
	for map,pois in pairs(POIcache) do
		if pois[poiid] then return true end
	end
end
ZGV.POIcache=POIcache

-- hooked from blizzard world map icons (those that have poiID defined) to load guide step tied to that specific object
-- uses guides defined in guidetitles array
-- checks all steps for rare-12345 label matching poiID number
function ZGV:SuggestGuideFromBlizzardIcon(object)
	local poiID = object and object.areaPoiID
	if not poiID then return end

	local guidetitles = {
		["Dailies Guides\\Legion\\Broken Shore Rares"] = {content="rare elite", prefix="rare"},
		["Dungeon Guides\\Legion Scenarios\\Argus Invasions"] = {content="invasion point", prefix="invasion"},
	}

	local step_guide, step_label, content, prefix

	for _,guide in pairs(ZGV.registeredguides) do
		if guide.headerdata.areapoiid==poiID then
			step_guide = guide
			step_label = 1
			content = guide.headerdata.areapoitype
			break
		end
	end

	if not step_label then
		for guidetitle,guidedata in pairs(guidetitles) do
			local guide = self:GetGuideByTitle(guidetitle)
			if not guide then return end
			if not guide.parsed then guide:Parse(true) end  -- possible FPS hit!
			content,prefix = guidedata.content, guidedata.prefix
			for labelname,labeldata in pairs(guide.steplabels) do
				if labelname == prefix.."-"..poiID then
					step_label = labeldata[1]
					step_guide = guide
				end
			end
			if step_label then break end
		end
	end

	if not step_label then
		ZGV:Debug("&_SUB &worldquests no label for object %s",poiID)
		return
	end
	
	if ZGV.CurrentGuide==step_guide then
		ZGV:Debug("&_SUB &worldquests switching to %s",poiID)
		ZGV:FocusStep(step_label,true)
	else
		ZGV:Debug("&_SUB &worldquests popup for %s",poiID)
		ZGV.NotificationCenter:AddEntry(
		"worldquest",
		object.description~="" and object.description or object.name,
		"Click here to open the guide for this "..content,
		ZGV.IconSets.TabsIcons.file,
		ZGV.IconSets.TabsIcons['LEVELING'].texcoord,
		function() ZGV:SetGuide(step_guide.title,step_label) end,
		nil,
		1,
		10, --poptime
		30, --removetime
		false, --quiet
		nil,--onopen
		"worldquest")
	end

end


-- Startup Checklist. Eventually abandoned, but may be useful someday.
	local Checklist = {}
	local CL=Checklist
	ZGV.Checklist = Checklist
	Checklist.events_sequence = {}
	Checklist.events_fired = {}
	Checklist.framenum = 0
	Checklist.starttime = debugprofilestop()

	function Checklist:SetupListener()
		local Listener = CreateFrame("FRAME","ZygorGuidesViewerChecklistListener")
		Listener:SetScript("OnEvent", ZGV.Checklist.FrameOnEvent)
		Listener:SetScript("OnUpdate", ZGV.Checklist.FrameOnUpdate)
		Listener:UnregisterAllEvents()

		-- listed in usual startup order
		Listener:RegisterEvent("ADDON_LOADED")
		Listener:RegisterEvent("VARIABLES_LOADED")
		Listener:RegisterEvent("SPELLS_CHANGED") -- not on all startups
		Listener:RegisterEvent("PLAYER_LOGIN")
		Listener:RegisterEvent("PLAYER_ENTERING_WORLD")
		Listener:RegisterEvent("QUEST_LOG_UPDATE")
		Listener:RegisterEvent("PLAYER_ALIVE") -- not on all startups
		Listener:RegisterEvent("ZONE_CHANGED_NEW_AREA") -- does NOT fire on a reload

		Listener:RegisterEvent("PLAYER_CONTROL_GAINED")
		Listener:RegisterEvent("NEW_WMO_CHUNK")
		self.Listener = Listener
	end

	function Checklist:CatchEvent(event,...)
		if not self.events_fired[event] then
			self.events_fired[event] = 1
			--frame:UnregisterEvent(event)
			local s = event.." f=" .. self.framenum .. (" t=%.3f"):format(debugprofilestop()-self.starttime)
				.. "  DG ".. ((abs((ZGV.HBD:TranslateZoneCoordinates(0.5,0.5,1077,0,1018,0) or 0) - 0.41)<0.1) and "OK" or "FAIL")
				.. "  TSL ".. ((abs((ZGV.HBD:TranslateZoneCoordinates(0.5,0.5,1072,0,1024,0) or 0) - 0.347)<0.1) and "OK" or "FAIL")
				.. "  you're in "..ZGV.GetMapNameByID(C_Map.GetBestMapForUnit("player") or 0)
			--print(s)
			tinsert(self.events_sequence,s)
		end
		if self.events_fired["_FIRST_FRAME_"] and self.events_fired["QUEST_LOG_UPDATE"] and self.events_fired["_GUIDES_LOADED_"] and self.events_fired["ZONE_CHANGED_NEW_AREA"] then
			if ZGV.db.profile.delayed_startup then
				print("*** Starting up from checklist!")
				ZGV:LoadInitialGuide()
			else
				print("*** Checklist complete! Would start now.")
			end
			self.Listener:UnregisterAllEvents()
			self.Listener:Hide()
		end
	end

	function Checklist.FrameOnUpdate(frame,elapsed)
		Checklist.framenum = Checklist.framenum + 1
		Checklist:CatchEvent("_FIRST_FRAME_")
		frame:SetScript("OnUpdate",nil)
	end
	function Checklist.FrameOnEvent(frame,event,...)
		Checklist:CatchEvent(event,...)
	end
	--Checklist:SetupListener()
--

function ZGV.IsLegionOn()
	return IsQuestFlaggedCompleted(44663) or ZGV:GetPlayerPreciseLevel()>=50
end

local last_glvl
function ZGV.GetGarrisonLevel(real)
	if not real and (ZGV.db.profile.fake_garrison or -1) > -1 then return ZGV.db.profile.fake_garrison end
	local glvl = C_Garrison.GetGarrisonInfo(Enum.GarrisonType.Type_6_0)
	          or (not IsQuestFlaggedCompleted((UnitFactionGroup("player")=="Alliance") and 34586 or 36567) and 0)
	          or last_glvl
	last_glvl=glvl
	return glvl
end

local collectors = {
	[14] = {Horde=11, Alliance=116}, -- arathi highlands warfront
	[62] = {Horde=118, Alliance=117}, -- darkshore warfront
}

local function getmaptexture(map)
	local textures = C_MapExplorationInfo.GetExploredMapTextures(map)
	if not textures then return -1 end
	if textures[1] then return textures[1].fileDataIDs[1] end
end       

function ZGV.InPhase(phasename)
	if not phasename then return true end
	if phasename==ZGV.db.profile.fakephase then return true end

	local level = UnitLevel('player')
	local faction = UnitFactionGroup("player")
	local hasbuff = ZGV.Parser.ConditionEnv.hasbuff
	local state
	local getmapartid = C_Map.GetMapArtID
	local getstate = C_ContributionCollector and C_ContributionCollector.GetState
	local quest = C_QuestLog.IsQuestFlaggedCompleted
	phasename = phasename:lower():gsub(" ","")

	-- expansion checks
	if phasename=="bfa" then
		if faction=="Horde" then 
			local q=ZGV.questsbyid[50769]
			return quest(50769) or (q and q.inlog)
		else
			local q=ZGV.questsbyid[46728]
			return quest(46728) or (q and q.inlog)
		end

	-- time travel checks
	elseif phasename=="olddarnassus" then
		return getmapartid(62)==67
	elseif phasename=="oldundercity" then
		return not (quest(51443) or quest(60361) or quest(46727) or quest(58983)) or quest(52758) -- Not started BFA, or timetravels after UC destruction
	elseif phasename=="undercityooze" then
		return (quest(51443) or quest(60361) or quest(46727) or quest(58983)) and not (quest(65655) or quest(65656)) and not quest(52758) -- Started BFA, not done 9.2.5 quests, no timetravel
	elseif phasename=="undercitycharred" then
		return (quest(65655) or quest(65656)) and not quest(52758) -- done quests, no timetravel

	elseif (phasename=="oldsilithius" or phasename=="oldsilithus") then
		return getmapartid(81)==86
	elseif phasename=="oldblastedlands" then
		return getmapartid(17)==18
	elseif phasename=="newblastedlands" then
		return getmapartid(17)==628
	elseif phasename=="oldpeak" then -- unused?
		return hasbuff("spell:609811")
	elseif phasename=="oldarathi" then
		return getmapartid(14)==15
	elseif phasename=="newarathi" then
		return getmapartid(14)==1137
	elseif phasename=="olddustwallow" then
		return getmapartid(70)==75
	elseif phasename=="newdustwallow" then
		return getmapartid(70)==498

	-- 8.3 invasion checks
	elseif phasename=="olduldum" then
		return quest(50659) -- timetravel flag
	elseif phasename=="oldvale" then
		return quest(59024) -- timetravel flag
	elseif phasename=="ulduminvasionleft" then
		return getmaptexture(1527)==3165083
	elseif phasename=="ulduminvasioncenter" then
		return getmaptexture(1527)==3165092
	elseif phasename=="ulduminvasionright" then
		return getmaptexture(1527)==3165098
	elseif phasename=="valeinvasionleftcenter" then
		return getmaptexture(1530)==3155832
	elseif phasename=="valeinvasionleft" then
		return getmaptexture(1530)==3155826
	elseif phasename=="valeinvasionright" then
		return getmaptexture(1530)==3155841

	-- warfront checks
	elseif phasename=="warfrontarathiassault" then
		return getstate and getstate(collectors[14][faction])<=2 -- state is the same no matter what timetravel phase you are in
	elseif phasename=="warfrontarathicontrol" then
		return getstate and getstate(collectors[14][faction])>=3 -- ^
	elseif phasename=="warfrontdarkshoreassault" then
		return getstate and getstate(collectors[62][faction])<=2 -- ^
	elseif phasename=="warfrontdarkshorecontrol" then
		return getstate and getstate(collectors[62][faction])>=3 -- ^

	-- shadowlands
	elseif phasename=="exilesreach" then
		return quest(58418)
	
	
	end
end

function ZGV:TestPhases()
	local phases = {"olddarnassus","oldundercity","undercityooze","undercitycharred","oldsilithus","oldblastedlands","bfa","oldarathi","newarathi","olddustwallow","newdustwallow","oldpeak","warfrontarathiassault","warfrontarathicontrol","warfrontdarkshoreassault","warfrontdarkshorecontrol"}
	for i,ph in ipairs(phases) do
		print(ph,":",ZGV.InPhase(ph) and "|cff00ff00YES" or "|cffff0000NO")
	end
end


function ZGV.RecordTirisfal(_,_,unit)
	if unit~="player" then return end

	local map = C_Map.GetBestMapForUnit("player")
	if map == 18 or map == 2070 then
		ZGV.db.char.tirisfalbuff = false
		for i=1,40 do
			local name,tex,_,_,_,_,_,_,_,spellid = UnitBuff("player",i)
			if spellid == 276827 then
				ZGV.db.char.tirisfalbuff = true
			end
		end	
	end
end

function ZGV:IsBoostedChar()
	return IsQuestFlaggedCompleted(34398)
end

function ZGV.IsLegionBoatLock()
	return (IsQuestFlaggedCompleted(40519) or IsQuestFlaggedCompleted(43926)) and not (IsQuestFlaggedCompleted(40593) or IsQuestFlaggedCompleted(40607))
end

function ZGV:SetBeta(val)
	if val~=nil then ZGV.BETA=val return end
	if self.db.profile.debug_beta~=nil then ZGV.BETA=self.db.profile.debug_beta return end
	ZGV.BETA = self.Licences and self.Licences.DATE_E and self.Licences.DATE_E>time()
end



function ZGV:FakeWidescreen()
	WorldFrame:ClearAllPoints()
	WorldFrame:SetPoint("TOPLEFT",UIParent,"TOPLEFT",0,-150)
	WorldFrame:SetPoint("BOTTOMRIGHT",UIParent,"BOTTOMRIGHT",0,150)
end

function ZGV:SaveChromieProgress()
	-- returns the number of cleared dragonshrines in Death of Chromie scenario, increased by 1 to mimic |count 1..8
	if not C_Scenario.IsInScenario() then return 1 end

	ZGV.DragonShrineCount = ZGV.DragonShrineCount or 1

	if C_Map.GetBestMapForUnit("player")~=897 then return ZGV.DragonShrineCount end
	local count = 5
	local points = C_AreaPoiInfo.GetAreaPOIForMap(897)
	if points then
		for _,poiID in pairs(points) do
			if poiID~=5325 then count=count-1 end
		end
	end

	ZGV.DragonShrineCount = count
	return count
end

local dragonshrines = {
	[5317] = "Obsidian", -- Zorathides
	[5318] = "Obsidian", -- dragonshrine
	[5319] = "Ruby", -- Talar Icechill 
	[5320] = "Ruby", -- dragonshrine
	[5321] = "Azure", -- Void Garg 
	[5322] = "Azure", -- dragonshrine
	[5323] = "Emerald", -- Thalas Vyle
	[5324] = "Emerald", -- dragonshrine
}
function ZGV:IsDragonshrineUp(name)
	if not C_Scenario.IsInScenario() then return false end

	if not ZGV.DragonShrineCache then ZGV.DragonShrineCache={} end
	if C_Map.GetBestMapForUnit("player")~=897 then return ZGV.DragonShrineCount end

	local points = C_AreaPoiInfo.GetAreaPOIForMap(897)
	if points then
		for _,poiID in pairs(points) do
			if dragonshrines[poiID] and dragonshrines[poiID]==name then
				ZGV.DragonShrineCache[name]=true
				return true
			end
		end
	end
	ZGV.DragonShrineCache[name]=false
	return false
end

function ZGV:IsBoosted(boost,do_popup)
	boost = boost or "default"
	self:Debug("Isboosted? %s %s",boost,tostring(do_popup))
	ZGV.db.char.isboosted = ZGV.db.char.isboosted or {}
	local boosted = ZGV.db.char.isboosted[boost]
	if type(boosted)=="boolean" then return boosted end
	if boost=="any" or boost=="at all" then return ZGV.db.char.isboosted[90] or ZGV.db.char.isboosted[100] or ZGV.db.char.isboosted[110] end
	if not do_popup then return nil end

	if ZGV.PopupHandler:IsInNC("ZygorBoostConfirm") then return nil end

	-- popup time
	if not self.BoostConfirmPopup then
		self.BoostConfirmPopup =  ZGV.PopupHandler:NewPopup("ZygorBoostConfirm","default")

		local popup = self.BoostConfirmPopup
		popup.acceptbutton:SetText("Yes, I did.")
		popup.OnAccept = function(self)
			ZGV.db.char.isboosted[self.boost]=true
			if ZGV.db.char.isboosted[110] then ZGV.db.char.isboosted[100]=true end
			if ZGV.db.char.isboosted[100] then ZGV.db.char.isboosted[90]=true end
		end
		popup.declinebutton:SetText("No, I didn't.")
		popup.OnDecline = function(self)
			ZGV.db.char.isboosted[self.boost]=false
		end

		popup.noMinimize = 1 --Can not minimize this one
	
	end

	self.BoostConfirmPopup.LayoutFull = function(self)

	end

	self.BoostConfirmPopup.LayoutFloaty = function(self)

	end

	self.BoostConfirmPopup:SetText("Have you boosted this character to level "..boost.."?")
	self.BoostConfirmPopup.boost = boost

	self:Debug("IsBoosted showing popup")
	self.BoostConfirmPopup:Show()

	return nil
end

function ZGV.DevStart() 	ZGV.DevGuides = true	end
function ZGV.DevEnd()	 	ZGV.DevGuides = nil	end