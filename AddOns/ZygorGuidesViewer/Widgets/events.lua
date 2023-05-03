local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "worldevents",
	group = "dailies",
	sizes = {
		{width = 3,height = 2}
	},
	tick = 1,
	sizelimits = {
		minwidth = 3, 
		minheight = 2,
		maxwidth = 3,
		maxheight = 3,
	},
	events = {
		CALENDAR_UPDATE_EVENT_LIST=true,
	},
	messages = { 
		ZGV_GUIDES_PARSED=true,
	},
}

widget.activeevents = {}

local function row_onenter(row)
	GameTooltip:SetOwner(row, "ANCHOR_BOTTOM")
	GameTooltip:SetText(row.tooltip,nil,nil,nil,nil,true)
	GameTooltip:Show()
	row:SetBackdropColor(unpack(row.bdhcolor))
end

local function row_onleave(row)
	GameTooltip:Hide()
	row:SetBackdropColor(unpack(row.bdcolor))
end


function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")
	self.frame.header = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",10,-10)
		:SetFont(FONTBOLD,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_worldevents_header"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.frame.empty = CHAIN(self.frame:CreateFontString())
		:SetPoint("CENTER")
		:SetFont(FONT,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_worldevents_empty"])
		:Show()
		:SetIgnoreParentAlpha(true)
	.__END

	self.rows = {}
	local prev

	for i=1,5 do
		local row = CHAIN(ZGV.UI:Create("Button",self.frame))
			:SetPoint("RIGHT")
			:SetHeight(25)
			:SetScript("OnEnter",row_onenter)
			:SetScript("OnLeave",row_onleave)
			:SetTexture("")
			:SetHighlightBackdropColor(unpack(ZGV.UI.SkinData("ButtonHighlightColor1")))
			:SetNormalBackdropColor(unpack(ZGV.UI.SkinData("ButtonColor1")))
			:Hide()
			:SetBackdropBorderColor(0,0,0,0)
			:SetIgnoreParentAlpha(true)
		.__END
		

		if prev then
			row:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-2)
		else
			row:SetPoint("TOPLEFT",self.frame.header,"BOTTOMLEFT",0,-8)
		end
		
		prev = row

		CHAIN(row.tex)
			:ClearAllPoints()
			:SetPoint("LEFT")
			:SetSize(15,15)
			:Show()

		row.text = CHAIN(row:GetFontString())
			:ClearAllPoints()
			:SetFont(FONT,13)
			:SetPoint("LEFT",row,20,0)
			:SetPoint("RIGHT",row,-90,0)
			:SetWordWrap(false)
			:SetJustifyH("LEFT")

		row.time = CHAIN(row:CreateFontString())
			:SetFont(FONT,13)
			:SetPoint("RIGHT",-5,0)
			:SetWidth(80)
			:SetJustifyH("RIGHT")
		.__END

		table.insert(self.rows,row)
	end

	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:ApplySkin()
	for _,row in ipairs(self.rows) do
		row.tex:SetTexture(ZGV.IconSets.GuideIconsSmall.file)
		row.tex:SetTexCoord(unpack(ZGV.IconSets.GuideIconsSmall['FOLDER'].texcoord))
	end
end

function widget:Update()
	self.frame.empty:Show()

	local currentCalendarTime = C_DateAndTime.GetCurrentCalendarTime();
	C_Calendar.SetAbsMonth(currentCalendarTime.month, currentCalendarTime.year);

	C_Calendar.OpenCalendar()
	-- if something already requested events list, we can get it now, otherwise we will wait for event
	self:GetWorldEvents() 
end


local function findguides(event)
	local eventgroup = ZGV:FindOrCreateGroup(ZGV.registered_groups,"EVENTS","onlyfind")
	if not eventgroup then return end
	for _,group in ipairs(eventgroup.groups) do
		if group.name:upper()==event then
			return group
		end
	end
end

function widget:GetWorldEvents()
	table.wipe(self.activeevents)
	local dateobject = C_DateAndTime.GetCurrentCalendarTime()
	local day = dateobject.monthDay + (debug_event_offset or 0)

	local numEvents = C_Calendar.GetNumDayEvents(0, day);
	local recorded = {}
	
	for event=1, numEvents do
		local eventdata = C_Calendar.GetDayEvent(0,day,event)
		if eventdata and eventdata.calendarType=="HOLIDAY" then
			local remains,remainsec = ZGV.F.GetTimeUntil(eventdata.endTime)
			if remainsec>0 then
				local details = C_Calendar.GetHolidayInfo(0,day,event)
				if details.startTime and details.endTime then
					eventdata.tooltip = format(CALENDAR_HOLIDAYFRAME_BEGINSENDS, details.description, FormatShortDate(details.startTime.monthDay, details.startTime.month), GameTime_GetFormattedTime(details.startTime.hour, details.startTime.minute, true), FormatShortDate(details.endTime.monthDay, details.endTime.month), GameTime_GetFormattedTime(details.endTime.hour, details.endTime.minute, true));
					eventdata.tooltip = eventdata.tooltip:gsub("^\|n\|n","")
				end
				table.insert(self.activeevents,eventdata)
				recorded[eventdata.eventID]=true

				local eventname = ZGV.WorldEventIDs[eventdata.eventID]
				if eventname then
					eventdata.group = findguides(eventname)
				end
			end
		end	
	end

	-- look into tomorrow to see upcoming events
	local currentmonth = C_Calendar.GetMonthInfo()
	local nextday,nextmonth = day+1,0

	if currentmonth.numDays==day then
		nextday,nextmonth = 1,1
	end

	local nextnumEvents = C_Calendar.GetNumDayEvents(nextmonth, nextday)
	for event=1, nextnumEvents do
		local eventdata = C_Calendar.GetDayEvent(nextmonth,nextday,event)
		if eventdata and eventdata.calendarType=="HOLIDAY" and not recorded[eventdata.eventID] then
			local details = C_Calendar.GetHolidayInfo(nextmonth,nextday,event)
			if details.startTime and details.endTime then
				eventdata.tooltip = format(CALENDAR_HOLIDAYFRAME_BEGINSENDS, details.description, FormatShortDate(details.startTime.monthDay, details.startTime.month), GameTime_GetFormattedTime(details.startTime.hour, details.startTime.minute, true), FormatShortDate(details.endTime.monthDay, details.endTime.month), GameTime_GetFormattedTime(details.endTime.hour, details.endTime.minute, true));
				eventdata.tooltip = eventdata.tooltip:gsub("^\|n\|n","")
			end
			eventdata.future = true
			table.insert(self.activeevents,eventdata)
			recorded[eventdata.eventID]=true
		end	
	end

	self:DisplayResults()
end


function widget:DisplayResults()
	self.frame.empty:Show()

	for _,row in ipairs(self.rows) do
		row:Hide()
		row:SetScript("OnClick",nil)
		row.tex:Hide()
	end

	if #self.activeevents==0 then return end 
	self.frame.empty:Hide()

	for i,eventdata in ipairs(self.activeevents) do
		local row = self.rows[i]
		if row then
			row.text:SetText(eventdata.title)
			row.tooltip = eventdata.tooltip
			if eventdata.group then 
				row:SetScript("OnClick",function() ZGV.GuideMenu:Show(eventdata.group.fullpath) end)
				row.tex:Show()
			end
			row:Show()
		end
	end

	self:UpdateTimes()
end

function widget:UpdateTimes()
	local refresh = false
	for i,eventdata in ipairs(self.activeevents) do
		local row = self.rows[i]
		if row then
			if eventdata.startTime and eventdata.endTime then
				local remain,remainsec
				if eventdata.future then
					remains,remainsec = ZGV.F.GetTimeUntil(eventdata.startTime,"short")
					remains = "in "..remains
					row.time:SetTextColor(0.8,0.8,0.8,1)
				else
					remains,remainsec = ZGV.F.GetTimeUntil(eventdata.endTime,"short")
					if remainsec<0 then
						self:Update()
						return
					end
					row.time:SetTextColor(1,1,1,1)
				end
				row.time:SetText(remains)
			else
				refresh = true
			end
		end
	end
	if refresh then self:GetWorldEvents() end
end

function widget:OnEvent(event,...)
	self:GetWorldEvents()
	if event=="ZGV_GUIDES_PARSED" then
		self:Update()
	end
end

function widget:OnTick()
	-- on tick we do not to refresh everything, we can just update time left
	self:UpdateTimes()
end

ZGV.Widgets:RegisterWidget(widget)