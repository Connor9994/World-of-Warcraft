local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local SkinData = ZGV.UI.SkinData

local widget={
	ident = "zygormessage",
	group = "general",
	sizes = {
		{width = 2, height = 1},
	},
	sizelimits = {
		minwidth = 2, 
		minheight = 1,
		maxwidth = 6,
		maxheight = 6,
	},
}

local function format_text(str)
	str = str:gsub("[*][*]([^\*]+)[*][*]","|cfffe6100%1|r")
	str = str:gsub("[=][=]([^\=]+)[=][=]","|cffbbbbbb%1|r")

	local bigdot = ZGV.IconSets.StepLineIcons.file
	str = str:gsub("*","|T"..bigdot..":14:14:0:0:1024:32:32:64:0:32:254:97:0|t")
	return str
end

function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")

	self.frame.header = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",10,-10)
		:SetFont(FONTBOLD,14,"") 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_zygormessage_header"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.frame.content = CHAIN(ZGV.UI:Create("ScrollChild",self.frame, nil, "editbox"))
		:SetPoint("TOPLEFT",10,-30)
		:SetPoint("BOTTOMRIGHT",-13,25)
		:Show()
		.__END
	self.frame.content:SetHideWhenUseless(true)
	CHAIN(self.frame.content.child)
		:SetText(format_text(ZGV.GuideMenu.HomeMessage))
		:SetIgnoreParentAlpha(true)
		:Disable()

	self.frame.clicker = CHAIN(CreateFrame("Button",nil,self.frame))
		:SetAllPoints()
		:SetScript("OnClick",function() self:TogglePopup() end)
		:EnableMouse(true)
		:SetFrameLevel(self.frame.content.child:GetFrameLevel()+1)
	.__END
	if self.Floating then
		CHAIN(self.frame.clicker)	
			:SetScript("OnEnter",function() self:SetInteractive(true,true) end)
			:SetScript("OnLeave",function() self:SetInteractive(false,true) end)
			:SetScript("OnDragStart",function() self:OnDragStart() end)
			:SetScript("OnDragStop",function() self:OnDragStop() end)
			:RegisterForDrag("LeftButton")
			:SetMovable(true)
	end

	self.popup = CHAIN(ZGV.CreateFrameWithBG("Button",nil,ZGV.Widgets.Fader))
		:SetSize(ZGV.Widgets.Fader:GetWidth(),ZGV.Widgets.Fader:GetHeight())
	.__END

		self.popup.contentinner = CHAIN(CreateFrame("Frame", nil, self.popup))
			:SetPoint("TOPLEFT")
			:SetPoint("BOTTOMRIGHT")
			:SetWidth(600)
			:SetHeight(100)
			:Show()
		.__END

		self.popup.content = CHAIN(ZGV.UI:Create("ScrollChild",self.popup, nil, self.popup.contentinner))
			:SetPoint("TOPLEFT",0,-30)
			:SetPoint("BOTTOMRIGHT",-16,1)
			:Show()
			.__END
		self.popup.content:SetHideWhenUseless(true)

	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:InitialisePopup()
	if self.popupready then return end

	local GuideMenu = ZGV.GuideMenu
	GuideMenu.Parsers.WIDTH = 552
	GuideMenu.Parsers.ICONS = false
	
	local height = 0
	local parent = self.popup.contentinner
	local prev

	local current_faction
	for i,e in ipairs(GuideMenu.Home) do
		if e[1]~="list" and e[1]~="item" then current_faction = e.faction end
		e.faction = e.faction or current_faction

		if e[1]=="section" then e.space=20 end
	end


	local subsection_counter = 0
	GuideMenu.Parsers.lasttick = debugprofilestop()

	for i,e in ipairs(GuideMenu.Home) do
		if (not e.faction or (e.faction==faction)) and (not e.beta or ZGV.BETA) then
			local object, e_height, space
			if GuideMenu.Parsers[e[1]] then
				object,e_height,space = GuideMenu.Parsers[e[1]=="item" and "list" or e[1]](parent,e,nil,true)
			else
				print("Unknown home element at",i,e[1])
				return false
			end

			subsection_counter = subsection_counter + 1

			space=space+5

			if subsection_counter>1 and e[1]=="text" then space=space+5 end
			if e[1]=="section" then subsection_counter=0 end

			e.object = object

			if prev then
				object:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-space)
			else
				object:SetPoint("TOPLEFT",parent,"TOPLEFT",10,0)
			end
			height=height+e_height+space
			prev=object

			object:Show()
		end
	end

	self.popup.contentinner:SetHeight(height)
	self.popup.content:TotalValue(height)
	self.popup.content:SetValue(0)
	self.popup.content:SetVerticalScroll(0)

	self.popupready = true
end

ZGV.Widgets:RegisterWidget(widget)