local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "guidehistory",
	group = "general",
	sizes = {
		{width = 3,height = 2}
	},
	sizelimits = {
		minwidth = 3, 
		minheight = 2,
		maxwidth = 4,
		maxheight = 2,
	},
	messages = { 
		GUIDE_CHANGED=true,
	},
}

function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")
	self.frame.text = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",10,-10)
		:SetFont(FONTBOLD,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_guidehistory_header"])
		:SetIgnoreParentAlpha(true)
	.__END
	self.frame.empty = CHAIN(self.frame:CreateFontString())
		:SetPoint("CENTER")
		:SetFont(FONT,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_guidehistory_empty"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.buttons = {}

	local prev
	for i=1,5 do
		local row = CHAIN(ZGV.UI:Create("Button",self.frame))
			:SetPoint("RIGHT")
			:SetHeight(20)
			:Hide()
			:SetIgnoreParentAlpha(true)
			:SetBackdropBorderColor(0,0,0,0)
		.__END

		if prev then
			row:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-2)
		else
			row:SetPoint("TOPLEFT",self.frame.text,"BOTTOMLEFT",0,-8)
		end
		
		prev = row

		row.tex = CHAIN(row:CreateTexture())
			:SetPoint("LEFT")
			:SetSize(18,18)
			:Show()
		.__END

		row.text = CHAIN(row:CreateFontString())
			:SetFont(FONT,13)
			:SetPoint("LEFT",row.tex,"RIGHT",5,0)
			:SetPoint("RIGHT",-20,0)
			:SetWordWrap(false)
			:SetJustifyH("LEFT")
		.__END

		row.loadbutton = CHAIN(row:CreateTexture())
			:SetPoint("RIGHT",-5,0)
			:SetSize(14,14)
			:Show()
		.__END

		row:SetNormalBackdropColor(1,1,1,0)
		row:SetHighlightBackdropColor(1,1,1,0.15)

		table.insert(self.buttons,row)
	end

	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:ApplySkin()
	for _,row in ipairs(self.buttons) do
		row.tex:SetTexture(ZGV.IconSets.TabsIcons.file)
		row.loadbutton:SetTexture(ZGV.ButtonSets.TitleButtons.file)
		row.loadbutton:SetTexCoord(unpack(ZGV.ButtonSets.TitleButtons['LOADGUIDE'].texcoords[1]))
	end
end

function widget:Update()
	local activetabs = {}
	for i,v in ipairs(ZGV.db.char.tabguides) do
		activetabs[v.title]=true
	end

	local count = 0

	for _,button in ipairs(self.buttons) do
		button:Hide()
	end

	for i,v in ipairs(ZGV.db.char.guides_history) do
		if not activetabs[v[1]] then
			local guide = ZGV:GetGuideByTitle(v[1])

			if guide then
				count = count + 1
				local button = self.buttons[count]
				if button then
					button.text:SetText(guide.title_short)
					button.tex:SetTexCoord(unpack(ZGV.IconSets.TabsIcons[guide.type].texcoord))
					button:SetScript("OnClick",function() ZGV.GuideMenu:ActivateGuide(guide) end)
					button:Show()
				else
					break
				end
			end
		end
	end

	if count==0 then
		self.frame.empty:Show()
	else
		self.frame.empty:Hide()
	end
end

function widget:OnEvent()
	self:Update()
end

ZGV.Widgets:RegisterWidget(widget)