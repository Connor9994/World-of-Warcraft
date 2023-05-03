local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "dragonbane",
	group = "dailies",
	sizes = {
		{width = 2,height = 2}
	},
	sizelimits = {
		minwidth = 2, 
		minheight = 1,
		maxwidth = 2,
		maxheight = 2,
	},
	tick = 1,
}

local data = { -- order does matter, since blizz sometimes has more than one active at the same time
	{7413,"Keep is controlled for:"}, -- The siege is over, and the keep is controlled by the Obsidian Outcasts.
	{7267,"Siege will begin in:"}, -- The Outcasts will begin their siege soon!
	{7104,"Siege is active for:"}, -- The siege is active, and the Outcasts could use your help!
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
		:SetText(L["widget_dragonbane_name"])
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
		:SetPoint("TOP",self.button.text ,"BOTTOM",0,-7)
		:SetPoint("LEFT")
		:SetPoint("RIGHT")
		:SetJustifyH("CENTER")
	.__END

	-- get first event time
	local firstEvent = {
		[1] = 1670338860, -- NA
		[2] = 1670698860, -- KR
		[3] = 1670342460, -- EU
		[4] = 1670698860, -- TW
		[5] = 1670677260, -- CN 
	}
	local region = GetCurrentRegion()
	if region then
		self.firstEvent = firstEvent[region]
		self.interval = (2 * 60) * 60
		self.duration = 15 * 60
	end

	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:Update()
	if not ZGV.Parser.ConditionEnv.achieved(16974) then -- valdrakken rank 5 account
		self.button.text:SetText(L["widget_dragonbane_locked"])
		self.button.time:SetText("")
		return
	end

	-- check if any of areapois is active
	for _,point in pairs(data) do
		local pointtime = C_AreaPoiInfo.GetAreaPOISecondsLeft(point[1])
		if pointtime and pointtime>0 then
			local info = C_AreaPoiInfo.GetAreaPOIInfo(2022,point[1])
			self.button.text:SetText(point[2] or info and info.description)
			self.button.time:SetText(ZGV.F.GetTimeFromSeconds(pointtime,"short"))
			return
		end
	end
	

	-- no point on map, use timer
	local timer = self.interval - ((GetServerTime() - self.firstEvent) % self.interval)
	self.button.text:SetText(L["widget_dragonbane_timer"])
	self.button.time:SetText(ZGV.F.GetTimeFromSeconds(timer,"short"))
end

function widget:OnTick()
	self:Update()
end

ZGV.Widgets:RegisterWidget(widget)