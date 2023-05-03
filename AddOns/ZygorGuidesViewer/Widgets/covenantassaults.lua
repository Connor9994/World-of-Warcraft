local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "assaults",
	group = "covenant",
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

local quests = {
	{q=63824, poi=6991, texture="Kyrian", name="Kyrian"},
	{q=63543, poi=6989, texture="Necrolord", name="Necrolord"},
	{q=63823, poi=6992, texture="NightFae", name="Night Fae"},
	{q=63822, poi=6990, texture="Venthyr", name="Venthyr"},
}

local guide = "Leveling Guides\\Shadowlands (50-60)\\Chains of Domination\\Covenant Assaults"

local function row_onenter(row)
	GameTooltip:SetOwner(row, "ANCHOR_BOTTOM")
	TaskPOI_OnEnter(row,"skipSetOwner")
	GameTooltip:Show()
end

local function row_onleave(row)
	GameTooltip:Hide()
end

local function row_onclick(row)
	local guideobj = ZGV:GetGuideByTitle(guide)
	ZGV.GuideMenu:ActivateGuide(guideobj) 
	--ZGV:FocusStep(step,true)
end

function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")
	self.frame.header = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",10,-10)
		:SetFont(FONTBOLD,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_assaults_header"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.frame.empty = CHAIN(self.frame:CreateFontString())
		:SetPoint("LEFT")
		:SetPoint("RIGHT")
		:SetFont(FONT,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_assaults_empty"])
		:SetWordWrap(true)
		:Show()
		:SetIgnoreParentAlpha(true)
	.__END

	self.frame.locked = CHAIN(self.frame:CreateFontString())
		:SetPoint("LEFT")
		:SetPoint("RIGHT")
		:SetFont(FONT,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_assaults_locked"])
		:SetWordWrap(true)
		:Show()
		:SetIgnoreParentAlpha(true)
	.__END


	self.entry = CHAIN(CreateFrame("Button",nil,self.frame))
		:SetHeight(25)
		:SetPoint("TOP",self.frame.header,"BOTTOM",0,-15)
		:SetPoint("LEFT")
		:SetPoint("RIGHT")
		:SetScript("OnEnter",row_onenter)
		:SetScript("OnLeave",row_onleave)
		:SetScript("OnLeave",row_onleave)
		:SetScript("OnClick",row_onclick) 
		:SetIgnoreParentAlpha(true)
		:Hide()
	.__END
	
	self.entry.tex = CHAIN(self.entry:CreateTexture())
		:SetPoint("LEFT")
		:SetSize(18,18)
		:Show()
	.__END

	self.entry.text = CHAIN(self.entry:CreateFontString())
		:SetFont(FONT,13)
		:SetPoint("LEFT",self.entry.tex,"RIGHT",5,0)
		:SetPoint("RIGHT")
		:SetJustifyH("LEFT")
	.__END

	self.entry.time = CHAIN(self.entry:CreateFontString())
		:SetFont(FONT,13)
		:SetPoint("TOP",self.entry.text ,"BOTTOM",0,-10)
		:SetPoint("LEFT")
		:SetPoint("RIGHT")
		:SetJustifyH("CENTER")
	.__END

	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:Update()
	self.frame.empty:Show()
	self.entry:Hide()
	self.frame.locked:Hide()

	if not ZGV.Parser.ConditionEnv.completedq(64106) then
		self.frame.empty:Hide()
		self.frame.locked:Show()
		return
	end

	local active = nil
	for i,questdata in pairs(quests) do
		if ZGV.Parser.ConditionEnv.questactive(questdata.q) and not ZGV.Parser.ConditionEnv.completedq(questdata.q) then
			active = questdata

			self.frame.empty:Hide()
			self.entry.text:SetText(questdata.name)
			self.entry.tex:SetAtlas(("shadowlands-landingbutton-%s-up"):format(questdata.texture), true)
			self.entry.tex:SetDesaturated(false)
			self.entry.questID = questdata.q

			local seconds = C_TaskQuest.GetQuestTimeLeftSeconds(questdata.q)
			self.entry.time:SetText(L["widget_assaults_remains"]:format(ZGV.F.GetTimeFromSeconds(seconds,"short")))
			self.entry:Show()
		end
		if C_AreaPoiInfo.GetAreaPOIInfo(1550,questdata.poi) and not active then
			self.frame.empty:Hide()
			self.entry.text:SetText((L["widget_assaults_complete"]):format(questdata.name))
			self.entry.tex:SetAtlas(("shadowlands-landingbutton-%s-up"):format(questdata.texture), true)
			self.entry.tex:SetDesaturated(true)
			self.entry.questID = questdata.q

			local seconds = C_AreaPoiInfo.GetAreaPOISecondsLeft(questdata.poi)
			self.entry.time:SetText(L["widget_assaults_next"]:format(ZGV.F.GetTimeFromSeconds(seconds,"short")))
			self.entry:Show()
		end
	end
end



function widget:OnTick()
	self:Update()
end

ZGV.Widgets:RegisterWidget(widget)