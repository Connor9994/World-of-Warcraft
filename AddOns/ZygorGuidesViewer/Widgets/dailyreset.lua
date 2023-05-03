local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "dailyreset",
	group = "dailies",
	sizes = {
		{width = 2,height = 1}
	},
	sizelimits = {
		minwidth = 2, 
		minheight = 1,
		maxwidth = 2,
		maxheight = 1,
	},
	tick = 1,
}

function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")

	self.frame.header = CHAIN(self.frame:CreateFontString())
		:SetFont(FONTBOLD,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_dailyreset_header"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.frame.text = CHAIN(self.frame:CreateFontString())
		:SetFont(FONT,18) 
		:SetTextColor(1,1,1,1)
		:SetText("")
		:SetIgnoreParentAlpha(true)
	.__END

	self.frame.header:SetPoint("BOTTOM",self.frame.text,"TOP",0,2)
	self.frame.text:SetPoint("CENTER")
	
	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:Update()
	local seconds = C_DateAndTime.GetSecondsUntilDailyReset()
	local res = ZGV.F.GetTimeFromSeconds(seconds,"short")

	self.frame.text:SetText(res)
end


function widget:OnTick()
	self:Update()
end

ZGV.Widgets:RegisterWidget(widget)