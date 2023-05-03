-- Support for the Extravaganza
--
-- Map support liberally borrowed from GuildMap, by Bru on Blackhand
local addonName, FBStorage = ...
local  FBI = FBStorage
local FBConstants = FBI.FBConstants;

FBI.Extravaganza = {};

local FL = LibStub("LibFishing-1.0");

local UPDATETIME_SCHOOLS = 5.0;
local UPDATETIME_COUNTER = 20.0;
local NUMMINIPOIS = 10;
local ICONPATH = "Interface\\AddOns\\FBI\\Icons\\";

local UpdateTimer = 0;

-- the actual names don't matter, except to help make sure I've got 'em all
local ExtravaganzaFish = {};
ExtravaganzaFish[19807] = "Speckled Tastyfish";
ExtravaganzaFish[19806] = "Dezian Queenfish";
ExtravaganzaFish[19805] = "Keefer's Angelfish";
-- makes you wonder what item 19804 is, doesn't it...
ExtravaganzaFish[19803] = "Brownell's Blue Striped Racer";

FBI.Extravaganza.Fish = ExtravaganzaFish;

local ContestIsOver;

local CurrentContest;
local Contests = {};
Contests[1] = {
	["day"] = 1,
	["hour"] = 14,
	["dur"] = 2,
	["fishid"] = 19807,
	["count"] = 40,
	["continent"] = FBConstants.EASTERN_KINGDOMS,
	["zones"] = { "Stranglethorn Vale", "The Cape of Stranglethorn", "Northern Stranglethorn" },
	["mapIds"] = { 224, 210, 50 },
	["kind"] = FL.SCHOOL_TASTY,
	["setting"] = "STVTimer",
	["name"] = FBConstants.EXTRAVAGANZA,
	["yell"] = FBConstants.RIGGLE_BASSBAIT,
};

-- Contests[2] = {
-- 	["day"] = 7,
-- 	["hour"] = 14,
-- 	["dur"] = 1,
-- 	["fishid"] = 50289,
-- 	["count"] = 1,
-- 	["continent"] = "Northrend",
-- 	-- ["zone"] -- any zone in Northrend
-- 	["kind"] = FL.SCHOOL_FISH,	 -- normal fish pools
-- 	["setting"] = "DerbyTimer",
-- 	["name"] = FBConstants.DERBY,
-- 	["yell"] = FBConstants.ELDER_CLEARWATER,
-- };

local FBGetSettingBool = function(...) return FBI:GetSettingBool(...); end;
local function GetSettingBool(setting)
	if (FBGetSettingBool("ContestSupport")) then
		return FBGetSettingBool(setting);
	end
	-- return nil;
end

local function ExtravaganzaHijackCheck()
	if ( FBI:NormalHijackCheck() ) then
		-- also check to make sure we're over a pool
		return FL:IsFishingPool();
	end
end

local function IsContestZone()
	if ( CurrentContest ) then
		local mapId,_ = FBI:GetCurrentMapIdInfo();
		local landmass, _ = FL:GetCurrentMapContinent();
		-- Are we on the right continent?
		if ( landmass == CurrentContest.continent ) then
			-- if not zone limited, we're there
			if ( not CurrentContest.mapIds ) then
				return true;
			else
				-- otherwise, see if we're in the right zone
				for _,map in ipairs(CurrentContest.mapIds) do
					if ( map == mapId) then
						return true;
					end
				end
			end
		end
	end
	-- return nil;
end

-- keep track of the pools we want to see
local iconcache = {};
local function GetFreePoolIcon()
	local pdx = nil;
	for idx=#iconcache,1,-1 do
		if (not iconcache[idx].inuse ) then
			pdx = idx;
		end
	end
	if ( not pdx ) then
		pdx = #iconcache + 1;
		local pool = CreateFrame("BUTTON", "FishingBuddycon"..pdx, UIParent);
		pool:SetWidth(20);
		pool:SetHeight(20);
		local tex = pool:CreateTexture("FishingBuddycon"..pdx.."Texture", "ARTWORK");
		tex:SetTexture("Interface\\Minimap\\ObjectIcons");
		tex:SetTexCoord(0.875, 1.0, 0.25, 0.5);
		tex:SetVertexColor(1, 1, 1, 0.3);
		tex:SetAllPoints();
		pool:SetNormalTexture(tex);
		pool.tex = tex;
		tinsert(iconcache, pool);
		pdx = #iconcache;
	end
	iconcache[pdx].inuse = true;
	return iconcache[pdx];
end

local function CalendarGetDayEvent(monthOffset, monthDay, index)
	local event = C_Calendar.GetDayEvent(monthOffset, monthDay, index);
	if (event) then
		local hour, minute;
		if (event.sequenceType == "END") then
			hour = event.endTime.hour;
			minute = event.endTime.minute;
		else
			hour = event.startTime.hour;
			minute = event.startTime.minute;
		end
		return event.title, hour, minute, event.calendarType, event.sequenceType, event.eventType, event.texture, event.modStatus, event.inviteStatus, event.invitedBy, event.difficulty, event.inviteType, event.sequenceIndex, event.numSequenceDays, event.difficultyName;
	else
		return nil, 0, 0, "", "", 0, "", "", 0, "", 0, 0, 0, 0, "";
	end
end

-- Salty Badmunkay the Limnologist (@Shadow Council, a MST server with a EST player...guh)
-- Should we display the extravaganza message?
local checkedDay = nil;
local eventHour;
local function IsTime(activate)
	local currentMonthOffset = 0;
	-- This is *mostly* constant (gaming Saturday night in a marathon session?) but let's
	-- set it every time and count on date() being reasonably fast as a C fall-through.
	local currentDay = date("%d");

	if (checkedDay == currentDay and CurrentContest) then
		return true;
	end

	-- As of patch 5.1, extravaganza starts at 14:00 to 16:00 - PST for US realms, CET for
	-- EU realms, and Australian EST for Oceanic realms regardless of server or player local
	-- time. Luckily the start time is reflected in the CalendarHolidayEvent entry (so
	-- Euro/Aussie/Oceanic players should be OK too). A limitation appears to be if the
	-- player has selected to not to show weekly holiday events (but they're probably not
	-- using FB anyway [thus lessening our competition!])
	-- Can't find an API call to enable Calendar filters for holidays...would make this
	-- less user dependent
	local fishingEvent = nil;
	local startHour = 14; -- default to 14 regardless of player time zone

	-- Loop through all CalendarEvents for the currentDay
	local numDayEvents
	if C_Calendar.GetNumDayEvents then
		numDayEvents = C_Calendar.GetNumDayEvents(currentMonthOffset, currentDay)
	else
		numDayEvents = CalendarGetNumDayEvents(currentMonthOffset, currentDay)
	end
	for idx=1,numDayEvents  do
		-- Can't use eventTitle as it is localized, but eventTexture does not appear to be localized.
		local eventTitle, eh, _, calendarType, _, eventType, eventTexture, _, inviteStatus = CalendarGetDayEvent(currentMonthOffset, currentDay, idx);
		eventHour = eh;
		if eventTexture == "Calendar_FishingExtravaganza" then
			fishingEvent = 1;
			startHour = tonumber(eventHour)
		elseif eventType == CALENDAR_EVENTTYPE_OTHER and string.find(eventTitle, "FISHING") then
			local invited = true;

			if (calendarType == "GUILD") then
				invited = (inviteStatus == CALENDAR_INVITESTATUS_ACCEPTED or
							inviteStatus == CALENDAR_INVITESTATUS_CONFIRMED or
							inviteStatus == CALENDAR_INVITESTATUS_SIGNEDUP);
			end

			if (invited) then
				fishingEvent = 1;
				startHour = tonumber(eventHour)
			end
		end
	end -- for CalendarGetNumDayEvents loop

	checkedDay = currentDay;

	-- Let's go fishing!
	if fishingEvent then -- no fishingEvent, fall through
		-- Loop through all available contests, even though as of patch 5.1 there is only one.
		for idx=1,#Contests do
			local c = Contests[idx];
			-- Player is tracking this contest
			if ( GetSettingBool(c.setting) ) then
				-- Give player 2 hours lead time to get prepared
				local currentHour = GetGameTime();
				if ( currentHour >= (startHour - 2) ) and ( currentHour < (startHour + c.dur) ) then
					-- Its time to go fishing!
					CurrentContest = c;
					FishingExtravaganzaFrame:Show();

					-- Additional user preference checks
					if ( GetSettingBool("STVPoolsOnly") ) then
						if ( IsContestZone() ) then
							FBI:SetHijackCheck(ExtravaganzaHijackCheck);
						else
							FBI:SetHijackCheck();
						end
					end -- end user preference checks

					-- Signal the caller that we are in Extravaganza time
					return true;

				end -- startHour checks
			end -- contest/day check
		end -- for #Contests loop

	else
		FBI:SetHijackCheck();
		CurrentContest = nil;
	end -- fishingEvent check

end -- end IsTime

FBI.Extravaganza.IsTime = IsTime;

-- Check for mouse down event for dragging frame.
FBEnvironment.Extravaganza_OnDragStart = function(self, button)
	if (not self.isMoving and (button == "LeftButton")) then
		self:StartMoving();
		self.isMoving = true;
	end
end

-- Check for drag stop event to stop dragging.
FBEnvironment.Extravaganza_OnDragStop = function(self, button)
	if (self.isMoving) then
		self:StopMovingOrSizing();
		self.isMoving = false;
	end
end

local ExtravaganzaEvents = {}
ExtravaganzaEvents[FBConstants.ADD_FISHIE_EVT] = function(id, name, ...)
	if ( CurrentContest and CurrentContest.fishid == id ) then
		UpdateTimer = 0;
		for _,contest in ipairs(Contests) do
			local _,_,_,_,_,n = FBI:GetFishie(contest.fishid);
			if ( n ) then
				contest.fishname = n;
			end
		end
	end
end

ExtravaganzaEvents[FBConstants.OPT_UPDATE_EVT] = function(changed)
	IsTime();
end

-- Handle watching the loot
FBEnvironment.Extravaganza_OnLoad = function(self)
	self:RegisterEvent("PLAYER_LOGIN");
	self:RegisterEvent("ZONE_CHANGED_NEW_AREA");
	self:RegisterEvent("VARIABLES_LOADED");

	self:RegisterForDrag("LeftButton");
	self:Hide();

	EventRegistry:RegisterCallback(FBConstants.FISHING_ENABLED_EVT, function()
		IsTime();
	end)
	FBI:RegisterHandlers(ExtravaganzaEvents)
end

FBEnvironment.Extravaganza_OnShow = function(self)
	-- check each of the bags on the player
	UpdateTimer = 0;
	FBEnvironment.Extravaganza_OnUpdate(self, 0);
end

FBEnvironment.Extravaganza_OnHide = function(self)
	if ( FishingExtravaganzaPOIUpdate and
		  FishingExtravaganzaPOIUpdate:IsVisible() ) then
		FishingExtravaganzaPOIUpdate:Hide();
	end
end

-- Elder Clearwater yells: The Kalu'ak Fishing Derby starts in 5 minutes!
-- Elder Clearwater yells: The Kalu'ak Fishing Derby has begun!  The first person to bring a blacktip shark to me in Dalaran will be declared the winner!  Blacktip sharks can be caught anywhere you can catch a pygmy suckerfish.
-- Elder Clearwater yells: NAME has won the Kalu'ak Fishing Derby!

FBEnvironment.Extravaganza_OnEvent = function(self, event, ...)
	local GSB = function(...) return FBI:GetSettingBool(...); end;

	if ( event == "CHAT_MSG_YELL" or event == "CHAT_MSG_MONSTER_YELL") then
		if ( CurrentContest ) then
			-- Riggle Bassbait yells: We have a winner! (.*) is the Master Angler!
			local message = select(1, ...);
			local name = string.match(message, CurrentContest.yell);
			if ( name ) then
				ContestIsOver = true;
			end
		end
	elseif ( event == "ZONE_CHANGED_NEW_AREA" or event == "PLAYER_LOGIN" ) then
		if ( IsContestZone() and IsTime() ) then
			self:RegisterEvent("CHAT_MSG_YELL");
			self:RegisterEvent("CHAT_MSG_MONSTER_YELL");
		else
			self:UnregisterEvent("CHAT_MSG_YELL");
			self:UnregisterEvent("CHAT_MSG_MONSTER_YELL");
		end
		local mapId = FL:GetCurrentMapId();
		-- Auto fish tracking in the conservatory
		if GSB("ConservatoryPools") then
			if mapId == 1662 then
				FBI:FishTrackingEnable(true)
			else
				FBI:FishTrackingEnable(false)
			end
		end
	elseif ( event == "VARIABLES_LOADED" ) then
		for _,contest in ipairs(Contests) do
			local _,_,_,_,_,n = FBI:GetFishie(contest.fishid);
			if ( n ) then
				contest.fishname = n;
			end
		end

		IsTime(true);
		self:UnregisterEvent("VARIABLES_LOADED");
	end
end

FBEnvironment.Extravaganza_OnUpdate = function(self, elapsed)
	if ( IsTime() ) then
		if ( not self:IsShown() ) then
			self:Show();
		end
		UpdateTimer = UpdateTimer - elapsed;
		if ( UpdateTimer <= 0 ) then
			local numCaught = GetItemCount(CurrentContest.fishid);
			local currentHour,minute = GetGameTime(); -- server time
			local minleft;
			local cname = CurrentContest.name;
			local line;
			local contestNow = false;
			if ( currentHour >= eventHour ) then -- using global eventHour
				if ( ContestIsOver ) then
					line = FBConstants.FATLADYSINGS;
				else
					line = FBConstants.TIMELEFT;
				end
				line = line..FBConstants.DASH.." |cff";
				line = line..FL:GetThresholdHexColor(numCaught/40);
				line = line..FBConstants.FISHCAUGHT.."|r";
				contestNow = true;
			else
				line = FBConstants.TIMETOGO;
			end
			minleft = (eventHour - currentHour)*60 - minute; -- using global eventHour
			if ( minleft >= 0 ) then
				if ( minleft < 10 ) then
					FishingExtravaganzaFrameText:SetTextColor(1.0, 0.1, 0.1);
				else
					FishingExtravaganzaFrameText:SetTextColor(0.1, 1.0, 0.1);
				end
				local mod = math.fmod;
				local fishname = CurrentContest.fishname;
				if ( not fishname ) then
					fishname = FBConstants.FISH;
				end
				line = string.format(line, cname, minleft/60, mod(minleft, 60), numCaught, CurrentContest.count, fishname);
				FishingExtravaganzaFrameText:SetText(line);
				local width = FishingExtravaganzaFrameText:GetWidth();
				self:SetWidth(width + 16);
			end
			-- listen for yells, etc.?
			FBEnvironment.Extravaganza_OnEvent(FishingExtravaganzaFrame, "ZONE_CHANGED_NEW_AREA");
			if ( IsContestZone() ) then
				UpdateTimer = UPDATETIME_SCHOOLS;
			else
				UpdateTimer = UPDATETIME_COUNTER;
			end
		end
	else
		self:Hide();
	end
end

-- eventually, display what fish you caught here
FBI.Extravaganza.MiniMap_OnEnter = function(self)
end

