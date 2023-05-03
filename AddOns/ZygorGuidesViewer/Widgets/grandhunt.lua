local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "grandhunt",
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
	[7342] = {map=2023, points={7053,7089,7090}}, -- Ohn'ahran Plains
	[7343] = {map=2022, points={7091,7092,7093}}, -- The Waking Shore
	[7344] = {map=2025, points={7097,7098,7099}}, -- Thaldraszus
	[7345] = {map=2024, points={7094,7095,7096}}, -- The Azure Span
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
		:SetText(L["widget_grandhunt_name"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.frame.empty = CHAIN(self.frame:CreateFontString())
		:SetPoint("LEFT")
		:SetPoint("RIGHT")
		:SetFont(FONT,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_grandhunt_empty"])
		:SetWordWrap(true)
		:Show()
		:SetIgnoreParentAlpha(true)
	.__END

	self.zone = CHAIN(CreateFrame("Button",nil,self.frame))
		:SetHeight(25)
		:SetPoint("TOP",self.frame.header,"BOTTOM",0,-7)
		:SetPoint("LEFT")
		:SetPoint("RIGHT")
		:SetIgnoreParentAlpha(true)
		:Hide()
	.__END
	
	self.zone.text = CHAIN(self.zone:CreateFontString())
		:SetFont(FONT,13)
		:SetPoint("TOP",self.zone)
		:SetJustifyH("CENTER")
	.__END

	self.zone.time = CHAIN(self.zone:CreateFontString())
		:SetFont(FONT,13)
		:SetPoint("TOP",self.zone.text,"BOTTOM")
		:SetJustifyH("RIGHT")
	.__END

	self.hunt = CHAIN(CreateFrame("Button",nil,self.frame))
		:SetHeight(25)
		:SetPoint("TOP",self.zone.time,"BOTTOM",0,-5)
		:SetPoint("LEFT")
		:SetPoint("RIGHT")
		:SetScript("OnClick",row_onclick) 
		:SetIgnoreParentAlpha(true)
	.__END
	
	self.hunt.text = CHAIN(self.hunt:CreateFontString())
		:SetFont(FONT,13)
		:SetPoint("TOP")
		:SetJustifyH("CENTER")
	.__END

	self.hunt.time = CHAIN(self.hunt:CreateFontString())
		:SetFont(FONT,13)
		:SetPoint("TOP",self.hunt.text ,"BOTTOM")
		:SetPoint("LEFT")
		:SetPoint("RIGHT")
		:SetJustifyH("CENTER")
	.__END

	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:Update()
	self.frame.empty:Show()
	self.zone:Hide()
	self.guide = nil

	local cenv = ZGV.Parser.ConditionEnv
	if cenv.achieved(17044) and cenv.completedq(71231) then -- maruuk rank 5 account
		-- unlocked, but maybe inactive
		self.frame.empty:SetText(L["widget_grandhunt_empty"])
	else
		-- not yet unlocked
		self.frame.empty:SetText(L["widget_grandhunt_locked"])
	end


	for poiid,poidata in pairs(data) do
		local zonetime = C_AreaPoiInfo.GetAreaPOISecondsLeft(poiid)
		if zonetime then
			self.frame.empty:Hide()

			local map = LibRover.data.MapNamesByID[poidata.map]
			self.zone.text:SetText(map and map[1])

			self.zone.time:SetText(ZGV.F.GetTimeFromSeconds(zonetime,"short"))
			self.zone:Show()

			self.hunt.text:SetText(L["widget_grandhunt_noparty"])
			self.hunt.time:Hide()

			for _,point in ipairs(poidata.points) do
				local hunttime = C_AreaPoiInfo.GetAreaPOISecondsLeft(point) 
				if hunttime then
					for _,guide in pairs(ZGV.registeredguides) do
						if guide.headerdata.areapoiid==point then
							self.guide = guide
							break
						end
					end

					if self.guide then
						self.hunt.text:SetText(self.guide.title_short)
						print(self.guide.title_short)
					else
						self.hunt.text:SetText(L["widget_grandhunt_generic"])
					end
					self.hunt.time:SetText(ZGV.F.GetTimeFromSeconds(hunttime,"short"))
					self.hunt.time:Show()
				end
			end
		end
	end
end



function widget:OnTick()
	self:Update()
end

ZGV.Widgets:RegisterWidget(widget)