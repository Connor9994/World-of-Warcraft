local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "dragonrace",
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
}

local points = {
	[7263] = {map=2024, basic={15921,15922,15923}, advanced={15933,15934,15935}}, -- Azure Span Rally
	[7262] = {map=2023, basic={15918,15919,15920}, advanced={15930,15931,15932}}, -- Ohn'ahran Plains Rally
	[7264] = {map=2025, basic={15924,15925,15926}, advanced={15936,15937,15938}}, -- Thaldraszus Rally
	[7261] = {map=2022, basic={15915,15916,15917}, advanced={15927,15928,15929}}, -- Waking Shores Rally
}

local function row_onenter(row)
	GameTooltip:SetOwner(row, "ANCHOR_BOTTOM")
	TaskPOI_OnEnter(row,"skipSetOwner")
	GameTooltip:Show()
end

local function row_onleave(row)
	GameTooltip:Hide()
end

local function row_onclick(row)
	local mapID = C_TaskQuest.GetQuestZoneID(row.questID)
	ZGV.WorldQuests:SuggestWorldQuestGuide(nil,row.questID,true,mapID)
end

function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")
	self.frame.header = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",10,-10)
		:SetFont(FONTBOLD,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_dragonrace_name"])
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


	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:Update()
	local cenv = ZGV.Parser.ConditionEnv
	if not (cenv.haveq(72481) or cenv.completedq(72481)) then
		self.button.text:SetText(L["widget_dragonrace_locked"])
		self.button.time:SetText("")
		return
	end

	for poiid,zonedetails in pairs(points) do
		local pointtime = C_AreaPoiInfo.GetAreaPOISecondsLeft(poiid)
		if pointtime then
			local info = C_AreaPoiInfo.GetAreaPOIInfo(zonedetails.map,poiid)
			self.button.text:SetText(info and info.name)

			self.button.time:SetText(ZGV.F.GetTimeFromSeconds(pointtime,"short"))
			return
		end
	end
end

function widget:OnTick()
	self:Update()
end

ZGV.Widgets:RegisterWidget(widget)