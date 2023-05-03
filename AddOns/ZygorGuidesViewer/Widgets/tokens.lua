local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "token",
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
		TOKEN_MARKET_PRICE_UPDATED=true,
	},
}

local Graph = LibStub("LibGraph-2.0-Z")

function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")

	self.frame.header = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",10,-10)
		:SetFont(FONTBOLD,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_token_header"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.frame.text = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOP",0,-26)
		:SetFont(FONT,18) 
		:SetTextColor(1,1,1,1)
		:SetText("")
		:SetIgnoreParentAlpha(true)
	.__END

	self.graph = Graph:CreateGraphLine("TestLineGraph", self.frame , "BOTTOM", "BOTTOM", 0,25,self.widthpx,self.heightpx/2)
	CHAIN(self.graph)
		:SetXAxis(0, 48)
		:SetDrawGrid(false)
		:SetUseHotspots(false)
		:SetGridSpacing(12, 500000)
		:SetGridColor({0.5, 0.5, 0.5, 0.5})
		:SetAxisDrawing(true, true)
		:SetAxisColor({1.0, 1.0, 1.0, 1.0})
		:SetAutoScale(true)
		:Hide()
		:SetIgnoreParentAlpha(true)

	self.values = {}

	local region = GetCVar("portal")
	if ZGV.Datastore.Tokens and ZGV.Datastore.Tokens[region] then
		local minv,maxv
		for index,datapoint in ipairs(ZGV.Datastore.Tokens[region]) do
			local timestamp,value = datapoint[1],datapoint[2]
			if not minv then minv = value end
			if not maxv then maxv = value end
			minv = min(minv,value)
			maxv = max(maxv,value)

			local timeobj = C_DateAndTime.GetCalendarTimeFromEpoch(timestamp*1000000)  -- seconds to microseconds
			local timestring = FormatShortDate(timeobj.monthDay, timeobj.month, timeobj.year) .. " " .. GameTime_GetFormattedTime(timeobj.hour, timeobj.minute, true)
			local tooltip = ZGV.GetMoneyString(value).."\n"..timestring

			table.insert(self.values,{index,value,tooltip,timestamp})
		end

		CHAIN(self.graph)
			:SetYAxis(minv, maxv)
			:AddDataSeries(self.values,{1.0, 0.0, 0.0, 0.8})
			:Show()

		self.minv = minv
		self.maxv = maxv

		self.popup = CHAIN(ZGV.CreateFrameWithBG("Button",nil,ZGV.Widgets.Fader))
			:SetSize(self.popupwidth or ZGV.Widgets.Fader:GetWidth(),self.popupheight or ZGV.Widgets.Fader:GetHeight())
		.__END
	end


	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:InitialisePopup()
	if self.popupready then return end

	self.popup.header = CHAIN(self.popup:CreateFontString())
		:SetPoint("TOPLEFT",30,-10)
		:SetFont(FONT,18) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_token_header"])
	.__END

	self.popup.current = CHAIN(self.popup:CreateFontString())
		:SetPoint("TOPLEFT",self.popup.header,"BOTTOMLEFT",0,-10)
		:SetFont(FONT,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_token_popup_current"])
	.__END

	self.popup.history = CHAIN(self.popup:CreateFontString())
		:SetPoint("TOPLEFT",self.popup.current,"BOTTOMLEFT",0,-30)
		:SetFont(FONT,18) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_token_popup_history"])
	.__END
	self.popup.low= CHAIN(self.popup:CreateFontString())
		:SetPoint("TOPLEFT",self.popup.history,"BOTTOMLEFT",0,-10)
		:SetFont(FONT,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_token_popup_low"])
	.__END
	self.popup.high = CHAIN(self.popup:CreateFontString())
		:SetPoint("TOPLEFT",self.popup.low,"BOTTOMLEFT",0,-10)
		:SetFont(FONT,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_token_popup_high"])
	.__END

	local function ylabelformatter(value)
		return ZGV.GetMoneyString(value)
	end

	local function xlabelformatter(value)
		local timestamp = self.values[value][4]
		local timeobj = C_DateAndTime.GetCalendarTimeFromEpoch(timestamp*1000000)  -- seconds to microseconds
		return FormatShortDate(timeobj.monthDay, timeobj.month, timeobj.year) .. "\n" .. GameTime_GetFormattedTime(timeobj.hour, timeobj.minute, true)
	end

	self.biggraph = Graph:CreateGraphLine("TestLineGraph", self.popup , "BOTTOMLEFT", "BOTTOMLEFT", 0,50,self.popupwidth or ZGV.Widgets.Fader:GetWidth(),(self.popupheight or ZGV.Widgets.Fader:GetHeight())-245)
	CHAIN(self.biggraph)
		:SetXAxis(0, 48)
		:SetDrawGrid(true)
		--:SetUseHotspots(true)
		:SetUseHotlines(true)
		:SetGridSpacing(12, 500000)
		:SetGridColor({0.5, 0.5, 0.5, 0.5})
		:SetAxisDrawing(true, true)
		:SetAxisColor({1.0, 1.0, 1.0, 1.0})
		:SetAutoScale(true)
		:SetYLabels(false,true)
		:SetXLabels(false,true)
		:SetYLabelsFormatter(ylabelformatter)
		:SetXLabelsFormatter(xlabelformatter)
		:SetScript("OnLeave",function() GameTooltip:Hide() end)
		:Hide()


	CHAIN(self.biggraph)
		:SetYAxis(self.minv, self.maxv)
		:AddDataSeries(self.values,{1.0, 0.0, 0.0, 0.8})
		:Show()

	self.popup.low:SetText(L["widget_token_popup_low"]:format(ZGV.GetMoneyString(self.minv or 0)))
	self.popup.high:SetText(L["widget_token_popup_high"]:format(ZGV.GetMoneyString(self.maxv or 0)))


	self.popupready = true
end

function widget:OnPopup()
	local price = C_WowTokenPublic:GetCurrentMarketPrice()
	self.popup.current:SetText(L["widget_token_popup_current"]:format(ZGV.GetMoneyString(price)))
end

function widget:Update()
	C_WowTokenPublic:UpdateMarketPrice()
end

function widget:DisplayResults()
	local price = C_WowTokenPublic:GetCurrentMarketPrice()
	if price then
		self.frame.text:SetText(ZGV.GetMoneyString(price))
	end
end

function widget:OnEvent(event)
	self:DisplayResults()
end


ZGV.Widgets:RegisterWidget(widget)