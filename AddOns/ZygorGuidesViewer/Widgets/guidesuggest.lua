local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "guidesuggest",
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
		ZGV_GUIDES_PARSED=true,
	},
}

function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")
	self.frame.text = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",10,-10)
		:SetFont(FONTBOLD,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_guidesuggest_header"])
		:SetIgnoreParentAlpha(true)
	.__END
	self.frame.empty = CHAIN(self.frame:CreateFontString())
		:SetPoint("CENTER")
		:SetFont(FONT,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_guidesuggest_empty"])
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

local types = {
	LEVELING = true,
	DUNGEONS = true,
	PROFESSIONS = true
}


local primary = {
	Alchemy=true,
	Blacksmithing=true,
	Enchanting=true,
	Engineering=true,
	Herbalism=true,
	Inscription=true,
	Jewelcrafting=true,
	Leatherworking=true,
	Mining=true,
	Skinning=true,
	Tailoring=true,
}

local secondary = {
	Archaeology=true,
	Cooking=true,
	Fishing=true,
}

local suggested={}
local results = {}
function widget:Update()
	-- LEVELING, DUNGEONS, PROFESSIONS, PROFESSIONS, PROFESSIONS
	table.wipe(suggested)

	for i,guide in ipairs(ZGV.registeredguides) do
		local type = guide.type
		if type=="PROFESSIONS" then
			local prof = guide.title:gsub("PROFESSIONS\\",""):gsub("\\.*","")
			local skill = ZGV.Professions:GetSkill(prof)
			if skill and skill.active then
				type = prof
			end
		end

		if (types[type] or primary[type] or secondary[type]) then
			suggested[type] = suggested[type] or {}

			local status=guide:GetStatus()
			if status=="SUGGESTED" then
				table.insert(suggested[type],guide)
			end
		end
	end
	for gtype,guides in pairs(suggested) do
		table.sort(guides, function(a,b) 
			local valA = a.condition_suggested_exclusive and 1 or 0
			local valB = b.condition_suggested_exclusive and 1 or 0
			if valA==valB then
				return a.title_short<b.title_short
			else
				return valA>valB
			end
		end)
	end

	local expansion = GetExpansionLevel()
	local maxlevel = GetMaxLevelForExpansionLevel(expansion)
	local capped = UnitLevel("player")==maxlevel
	table.wipe(results)
	if capped then 
		table.insert(results, suggested.LEVELING[1])
	else
		for i=1,4 do
			table.insert(results, suggested.LEVELING[i])
		end
	end
	table.insert(results, suggested.DUNGEONS[1])
	for skill,_ in pairs(primary) do if suggested[skill] then table.insert(results, suggested[skill][1]) end end
	for skill,_ in pairs(secondary) do if suggested[skill] then table.insert(results, suggested[skill][1]) end end
		
	for _,button in ipairs(self.buttons) do
		button:Hide()
	end

	for i,guide in ipairs(results) do
		local button = self.buttons[i]
		if button then
			button.text:SetText(guide.title_short)
			button.tex:SetTexCoord(unpack(ZGV.IconSets.TabsIcons[guide.type].texcoord))
			button:SetScript("OnClick",function() ZGV.GuideMenu:ActivateGuide(guide) end)
			button:Show()
		else
			break
		end
	end

	if count==0 then
		self.frame.empty:Show()
	else
		self.frame.empty:Hide()
	end
end

function widget:OnEvent(event)
	self:Update()
end

ZGV.Widgets:RegisterWidget(widget)