local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "feast",
	group = "dailies",
	sizes = {
		{width = 2,height = 1}
	},
	sizelimits = {
		minwidth = 2, 
		minheight = 1,
		maxwidth = 2,
		maxheight = 2,
	},
	tick = 1,
	valid = ZGV.IsRetail,
}


local data = {
	{7218,"The Tuskarr are cooking for:"},-- The tuskarr are cooking their feast right now, and they can use your help!
	{7219,"Feast will begin in:"},-- The tuskarr will begin their feast soon!
	{7220,"Soup is ready for:"},-- The cooking is over... but the soup is ready to eat!
}

local function row_onclick()
	if not widget.guide then return end
	ZGV.Tabs:LoadGuideToTab(widget.guide.title,1,widget.guide.areapoitype)
end

function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")
	self.frame.header = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",10,-10)
		:SetFont(FONTBOLD,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_feast_name"])
		:SetIgnoreParentAlpha(true)
	.__END


	self.button = CHAIN(CreateFrame("Button",nil,self.frame))
		:SetHeight(25)
		:SetPoint("TOP",self.frame.header,"BOTTOM",0,-7)
		:SetPoint("LEFT")
		:SetPoint("RIGHT")
		:SetIgnoreParentAlpha(true)
	.__END
	
	self.button.text = CHAIN(self.button:CreateFontString())
		:SetFont(FONT,13)
		:SetPoint("TOP",self.button)
		:SetPoint("LEFT")
		:SetPoint("RIGHT")
		:SetJustifyH("CENTER")
	.__END

	self.button.time = CHAIN(self.button:CreateFontString())
		:SetFont(FONT,13)
		:SetPoint("TOP",self.button.text,"BOTTOM",0,-7)
		:SetJustifyH("RIGHT")
	.__END

	-- get first event time
	local firstEvent = {
		[1] = 1670335260, -- NA
		[2] = 1670704260, -- KR
		[3] = 1670333460, -- EU
		[4] = 1670704260, -- TW
		[5] = 1670679060, -- CN
	}
	local region = GetCurrentRegion()
	if region then
		self.firstEvent = firstEvent[region]
		self.interval = (3 * 60 + 30) * 60
		self.duration = 15 * 60
	end

	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:Update()
	if not ZGV.Parser.ConditionEnv.achieved(16920) then -- iskaara rank 3 account
		self.button.text:SetText(L["widget_feast_locked"])
		self.button.time:SetText("")
		return
	end

	-- check if any of areapois is active
	for _,point in pairs(data) do
		local feasttime = C_AreaPoiInfo.GetAreaPOISecondsLeft(point[1])
		if feasttime and feasttime>0 then
			local data = C_AreaPoiInfo.GetAreaPOIInfo(2024,point[1])
			self.button.text:SetText(point[2] or data and data.description)
			self.button.time:SetText(ZGV.F.GetTimeFromSeconds(feasttime,"short"))
			return
		end
	end

	-- no point on map, use timer
	local timer = self.interval - ((GetServerTime() - self.firstEvent) % self.interval)
	self.button.text:SetText(L["widget_feast_next"])
	self.button.time:SetText(ZGV.F.GetTimeFromSeconds(timer,"short"))
end


function widget:OnTick()
	self:Update()
end

ZGV.Widgets:RegisterWidget(widget)