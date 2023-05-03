local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "gold",
	group = "general",
	sizes = {
		{width = 2,height = 2}
	},
	sizelimits = {
		minwidth = 2, 
		minheight = 2,
		maxwidth = 2,
		maxheight = 4,
	},
	events = {
		PLAYER_MONEY = true,
	},
	listeninactive = true,
	tick = 1,
}

local modes = { -- offset=name,gridx
	[0] = {L["widget_gold_today"],1},
	[7] = {L["widget_gold_week"],1},
	[30] = {L["widget_gold_month"],3},
	[365] = {L["widget_gold_year"],30}
}

local Graph = LibStub("LibGraph-2.0-Z")

function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")

	self.frame.header = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",10,-10)
		:SetFont(FONTBOLD,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_gold_header"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.frame.todaychange = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",self.frame.header,"BOTTOMLEFT",-10,-20)
		:SetPoint("RIGHT")
		:SetFont(FONT,10) 
		:SetTextColor(1,1,1,1)
		:SetJustifyH("CENTER")
		:SetText(L["widget_gold_todaychange"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.frame.todaychangevalue = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",self.frame.todaychange,"BOTTOMLEFT",0,-10)
		:SetPoint("RIGHT")
		:SetFont(FONT,18) 
		:SetTextColor(1,1,1,1)
		:SetJustifyH("CENTER")
		:SetText("")
		:SetIgnoreParentAlpha(true)
	.__END
	self.frame.weekchange = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",self.frame.todaychangevalue,"BOTTOMLEFT",0,-10)
		:SetPoint("RIGHT")
		:SetFont(FONT,10) 
		:SetTextColor(1,1,1,1)
		:SetJustifyH("CENTER")
		:SetText(L["widget_gold_weekchange"])
		:SetIgnoreParentAlpha(true)
	.__END
	self.frame.weekchangevalue = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",self.frame.weekchange,"BOTTOMLEFT",0,-10)
		:SetPoint("RIGHT")
		:SetFont(FONT,18) 
		:SetTextColor(1,1,1,1)
		:SetJustifyH("CENTER")
		:SetText("")
		:SetIgnoreParentAlpha(true)
	.__END

	self.popup = CHAIN(ZGV.CreateFrameWithBG("Button",nil,ZGV.Widgets.Fader))
		:SetSize(self.popupwidth or ZGV.Widgets.Fader:GetWidth(),self.popupheight or ZGV.Widgets.Fader:GetHeight())
	.__END

	Mixin(self,ZGV_Widget_Object_Mixin)

	self.values = {}
	self:UpdateCurrentDay()
	self.lastmoney = GetMoney()
	self.dateoffset = 0
end

function widget:InitialisePopup()
	if self.popupready then return end

	self.popup.header = CHAIN(self.popup:CreateFontString())
		:SetPoint("TOPLEFT",30,-10)
		:SetFont(FONT,18) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_gold_header"])
	.__END

	self.popup.headertime = CHAIN(self.popup:CreateFontString())
		:SetPoint("TOPRIGHT",self.popup,"TOPRIGHT",-30,-10)
		:SetFont(FONT,18) 
		:SetTextColor(1,1,1,1)
		:SetText("")
	.__END

	self.popup.rangebutton = CHAIN(CreateFrame("Button",nil,self.popup,"ZGV_DefaultSkin_TitleButton_Template"))
		:SetSize(20,20)
		:SetScript("OnClick",function() self:ShowRange() end)
		:SetPoint("LEFT",self.popup.headertime,"RIGHT",10,0)
		:Show()
	.__END
	self.popup.rangebutton.buttonkey = "DROPDOWN"
	self.popup.rangebutton:ApplySkin()
	self.popup.dropdown = CreateFrame("Frame", nil, self.popup, "UIDropDownForkTemplate")

	self.popup.startmoney = CHAIN(self.popup:CreateFontString())
		:SetPoint("TOPLEFT",self.popup.header,"BOTTOMLEFT",0,-30)
		:SetFont(FONT,12) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_gold_popup_startmoney"])
	.__END

	self.popup.spent = CHAIN(self.popup:CreateFontString())
		:SetPoint("TOPLEFT",self.popup.startmoney,"BOTTOMLEFT",0,-10)
		:SetFont(FONT,12) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_gold_popup_spent"])
	.__END
	self.popup.gain = CHAIN(self.popup:CreateFontString())
		:SetPoint("TOPLEFT",self.popup.spent,"BOTTOMLEFT",0,-10)
		:SetFont(FONT,12) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_gold_popup_gain"])
	.__END
	self.popup.now = CHAIN(self.popup:CreateFontString())
		:SetPoint("TOPLEFT",self.popup.gain,"BOTTOMLEFT",0,-10)
		:SetFont(FONT,12) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_gold_popup_now"])
	.__END

	local function ylabelformatter(value)
		local goldvalue = value - value%(COPPER_PER_SILVER * SILVER_PER_GOLD)
		return ZGV.GetMoneyString(goldvalue,false,false,true)
	end

	local function xlabelformatter(value)
		local timestamp = self.values[value] and self.values[value][4]
		if not timestamp then return "" end
		local timeobj = C_DateAndTime.GetCalendarTimeFromEpoch(timestamp*1000000)  -- seconds to microseconds
		return FormatShortDate(timeobj.monthDay, timeobj.month)
	end

	self.biggraph = Graph:CreateGraphLine("ZGVWidgetGoldGraphBig", self.popup , "BOTTOMLEFT", "BOTTOMLEFT", 0,50,self.popup:GetWidth(),(self.popup:GetHeight())-245)
	CHAIN(self.biggraph)
		:SetXAxis(0, 48)
		:SetDrawGrid(true)
		--:SetUseHotspots(true)
		:SetUseHotlines(true)
		:SetGridSpacing(12, 100000)
		:SetGridColor({0.5, 0.5, 0.5, 0.5})
		:SetAxisDrawing(false, false)
		:SetAxisColor({1.0, 1.0, 1.0, 1.0})
		:SetAutoScale(true)
		:SetYLabels(true,false)
		:SetXLabels(false,true)
		:SetYLabelsFormatter(ylabelformatter)
		:SetXLabelsFormatter(xlabelformatter)
		:SetScript("OnLeave",function() GameTooltip:Hide() end)
		:Hide()

	self.todaygraph = Graph:CreateGraphPieChart("ZGVWidgetGoldGraphPie", self.popup , "BOTTOM", "BOTTOM", 0,100,self.popup:GetWidth()/2,(self.popup:GetHeight())/2)
	self.todaygraph:Hide()

	self.popupready = true
end

function widget:Update()
	-- today
	local startmoney,endmoney,gain,loss = self:GetHistory(0)
	local change = gain-loss
	local color,prefix = "|cffffffff",""
	if change>0 then
		color,prefix = "|cff00ff00","|cff00ff00+"
	elseif change<0 then
		color,prefix = "|cffff0000","|cffff0000-"
		change = -change
	end
	self.frame.todaychangevalue:SetText(prefix..ZGV.GetMoneyString(change,color,nil,"hardtrim"))

	-- last week
	local startmoney,endmoney,gain,loss = self:GetHistory(-7)
	local change = gain-loss
	local color,prefix = "|cffffffff",""
	if change>0 then
		color,prefix = "|cff00ff00","|cff00ff00+"
	elseif change<0 then
		color,prefix = "|cffff0000","|cffff0000-"
		change = -change
	end
	self.frame.weekchangevalue:SetText(prefix..ZGV.GetMoneyString(change,color,nil,"hardtrim"))
end

function widget:OnTick()
	self:UpdateCurrentDay()
end

function widget:OnPopup()
	local startmoney,endmoney,gain,loss,minv,maxv,results = self:GetHistory(-self.dateoffset)

	self.popup.headertime:SetText(modes[self.dateoffset][1])

	table.wipe(self.values)
	for index,data in ipairs(results) do
		local timeobj = C_DateAndTime.GetCalendarTimeFromEpoch(data.timestamp*1000000)  -- seconds to microseconds
		local timestring = FormatShortDate(timeobj.monthDay, timeobj.month, timeobj.year) .. " " .. GameTime_GetFormattedTime(timeobj.hour, timeobj.minute, true)
		local tooltip = ZGV.GetMoneyString(data.endmoney).."\n"..timestring

		
		table.insert(self.values,{index,data.endmoney,tooltip,data.timestamp})
	end

	local gridx = modes[self.dateoffset][2]
	local gridy = math.max(math.floor((maxv-minv)/10),2)


	if self.dateoffset==0 then
		self.biggraph:Hide()
		local gainper = (gain+loss)>0 and gain/(gain+loss) or 0.5
		local lossper = (gain+loss)>0 and loss/(gain+loss) or 0.5
		CHAIN(self.todaygraph)
			:AddPie(gainper*100, {0.0, 1.0, 0.0})
			:AddPie(lossper*100, {1.0, 0.0, 0.0})
			:CompletePie({0.2, 0.2, 1.0})
			:HideLines(self.todaygraph)
			:Show()
	else
		self.todaygraph:Hide()
		CHAIN(self.biggraph)
			:SetYAxis(minv, maxv)
			:AddDataSeries(self.values,{1.0, 0.0, 0.0, 0.8})
			:SetGridSpacing(gridx, gridy)
			:Show()
	end

	self.popup.startmoney:SetText(L["widget_gold_startmoney"]:format(ZGV.GetMoneyString(startmoney)))
	self.popup.spent:SetText(L["widget_gold_spent"]:format(ZGV.GetMoneyString(loss)))
	self.popup.gain:SetText(L["widget_gold_gain"]:format(ZGV.GetMoneyString(gain)))
	self.popup.now:SetText(L["widget_gold_now"]:format(ZGV.GetMoneyString(endmoney)))
	
end

function widget:ShowRange()
	if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==self.popup.dropdown then CloseDropDownForks() return end

	local ranges = {
		{0,L["widget_gold_today"]},
		--{1,L["widget_gold_yesterday"]},
		{7,L["widget_gold_week"]},
		{30,L["widget_gold_month"]},
		{365,L["widget_gold_year"]},
	}

	local menu_list = {}
	for i,v in ipairs(ranges) do
		table.insert(menu_list,		{
			text=v[2],
			func=function() 
				self.dateoffset = v[1]
				self:OnPopup()
			end,
			checked=function() return self.dateoffset == v[1] end,
		})
	end	

	UIDropDownFork_SetAnchor(self.popup.dropdown, 0, 0, "TOPRIGHT", self.popup.rangebutton, "BOTTOMRIGHT")
	EasyFork(menu_list,self.popup.dropdown,nil,0,0,"MENU",10)
end

function widget:UpdateCurrentDay()
	ZGV.db.char.PlayerMoney = ZGV.db.char.PlayerMoney or {}
	local timeobject = C_DateAndTime.GetCurrentCalendarTime()
	timeobject.hour = 0
	timeobject.min = 0
	timeobject.sec = 0
	local timestamp = ZGV.F.GetSecondsFromTime(timeobject)
	ZGV.db.char.PlayerMoney[timestamp] = ZGV.db.char.PlayerMoney[timestamp] or {
		startmoney = GetMoney(),
		endmoney = GetMoney(),
		gain = 0,
		loss = 0,
		timestamp = timestamp
	}

	self.TodayData = ZGV.db.char.PlayerMoney[timestamp]
end

function widget:GetHistory(offset)
	self:UpdateCurrentDay()

	local timeobjectnow = C_DateAndTime.GetCurrentCalendarTime()
	timeobjectnow.hour = 0
	timeobjectnow.min = 0
	timeobjectnow.sec = 0
	local timeobject = C_DateAndTime.AdjustTimeByDays(timeobjectnow,offset)
	local periodstartmoney = ZGV.F.GetSecondsFromTime(timeobject)

	local gain,loss = 0,0
	local minv,maxv
	local results = {}

	for timestamp,data in pairs(ZGV.db.char.PlayerMoney) do
		if timestamp>=periodstartmoney then
			table.insert(results,data)
			if not minv then minv = data.endmoney end
			if not maxv then maxv = data.endmoney end
			minv = min(minv,data.endmoney)
			maxv = max(maxv,data.endmoney)
		end
	end	
	table.sort(results,function(a,b) return a.timestamp<b.timestamp end)

	for _,data in ipairs(results) do
		gain = gain + data.gain
		loss = loss + data.loss
	end

	local startmoney = results[1].startmoney
	local endmoney = results[#results].endmoney

	return startmoney,endmoney,gain,loss,minv,maxv,results
end

function widget:UpdateMoney()
	if self.Floating then return end

	local money = GetMoney()
	if money > self.lastmoney then
		self.TodayData.gain = self.TodayData.gain + (money-self.lastmoney)
	elseif money < self.lastmoney then
		self.TodayData.loss = self.TodayData.loss + (self.lastmoney-money)
	end
	self.TodayData.endmoney = money

	self.lastmoney = money
end

function widget:OnEvent(event)
	self:UpdateMoney()
	self:Update()
end

function widget:Backup()
	local out="{"
	local charfmt = '["%s"] = {'
	local pointfmt = '{%d,%d,%d,%d,%d},'
	for name,data in pairs(ZGV.db.sv.char) do
		if data.PlayerMoney then
			out=out..charfmt:format(name)
			for timestamp,hist in pairs(data.PlayerMoney) do
				out=out..pointfmt:format(timestamp,hist.startmoney,hist.endmoney,hist.gain,hist.loss)
			end
			out=out.."},"
		end
	end
	out=out.."}"
	return out
end

function widget:Import(savedvars)
	for character,data in pairs(savedvars) do
		ZGV.db.sv.char[character] = ZGV.db.sv.char[character] or {}
		ZGV.db.sv.char[character].PlayerMoney = {}
		for _,hist in pairs(data) do
			ZGV.db.sv.char[character].PlayerMoney[hist[1]]={timestamp=hist[1],startmoney=hist[2],endmoney=hist[3],gain=hist[4],loss=hist[5]}
		end			
	end
end


ZGV.Widgets:RegisterWidget(widget)