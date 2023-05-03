local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "worldbosses",
	group = "dailies",
	sizes = {
		{width = 3,height = 2}
	},
	sizelimits = {
		minwidth = 3, 
		minheight = 2,
		maxwidth = 3,
		maxheight = 3,
	},
	tick = 1,
}

widget.maps = {}

local quests = {
	[60542] = "VANILLA", -- Nathanos Blightcaller
	[43193] = "LEGION", -- Calamitous Intent
	[44287] = "LEGION", -- DEADLY: Withered J'im
	[43192] = "LEGION", -- Terror of the Deep
	[43448] = "LEGION", -- The Frozen King
	[43985] = "LEGION", -- A Dark Tide
	[42269] = "LEGION", -- The Soultakers
	[42270] = "LEGION", -- Scourge of the Skies
	[43512] = "LEGION", -- Ana-Mouz
	[43513] = "LEGION", -- Na'zak the Fiend
	[42819] = "LEGION", -- Pocket Wizard
	[42779] = "LEGION", -- The Sleeping Corruption
	[52848] = "BFA", -- The Lion's Roar
	[52847] = "BFA", -- Doom's Howl
	[54896] = "BFA", -- Ivus the Forest Lord
	[54895] = "BFA", -- Ivus the Decayed
	[52157] = "BFA", -- A Chilling Encounter
	[56056] = "BFA", -- Terror of the Depths
	[56057] = "BFA", -- The Soulbinder
	[52181] = "BFA", -- Smoke and Shadow
	[52169] = "BFA", -- The Matriarch
	[52166] = "BFA", -- The Faceless Herald
	[52163] = "BFA", -- The Winged Typhoon
	[55466] = "BFA", -- Vuk'laz the Earthbreaker
	[58705] = "BFA", -- Grand Empress Shek'zara
	[52196] = "BFA", -- Sandswept Bones
	[61815] = "SHADOW", -- Oranomonos the Everbranching
	[61813] = "SHADOW", -- Valinor, the Light of Eons
	[61816] = "SHADOW", -- Mortanis
	[61814] = "SHADOW", -- Nurgash Muckformed
	[64531] = "SHADOW", -- Mor'geth
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
		:SetText(L["widget_worldbosses_header"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.frame.empty = CHAIN(self.frame:CreateFontString())
		:SetPoint("CENTER")
		:SetFont(FONT,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_worldbosses_empty"])
		:Show()
		:SetIgnoreParentAlpha(true)
	.__END

	self.rows = {}
	local prev

	for i=1,6 do
		local row = CHAIN(CreateFrame("Button",nil,self.frame))
			:SetPoint("RIGHT")
			:SetHeight(20)
			:SetScript("OnEnter",row_onenter)
			:SetScript("OnLeave",row_onleave)
			:SetScript("OnClick",row_onclick)
			:Hide()
			:SetIgnoreParentAlpha(true)
		.__END
		if prev then
			row:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-2)
		else
			row:SetPoint("TOPLEFT",self.frame.header,"BOTTOMLEFT",0,-8)
		end
		
		prev = row

		row.tex = CHAIN(row:CreateTexture())
			:SetPoint("LEFT")
			:SetSize(20,20)
			:SetTexture(ZGV.IconSets.ExpansionIcons.file)
			:Show()
		.__END

		row.text = CHAIN(row:CreateFontString())
			:SetFont(FONT,13)
			:SetPoint("LEFT",row.tex,"RIGHT",5,0)
			:SetPoint("RIGHT",row,-80,0)
			:SetWordWrap(false)
			:SetJustifyH("LEFT")
		.__END

		row.time = CHAIN(row:CreateFontString())
			:SetFont(FONT,13)
			:SetPoint("RIGHT",-5,0)
			:SetWidth(70)
			:SetJustifyH("RIGHT")
		.__END

		table.insert(self.rows,row)
	end

	Mixin(self,ZGV_Widget_Object_Mixin)

	widget.maps = ZGV.GetAllContinents()
end

local sortorder = {
	DRAGON = 1,
	SHADOW = 2,
	BFA = 3,
	LEGION = 4,
	WOD = 5,
	MOP = 6,
	CATA = 7,
	WOTLK = 8,
	TBC = 9,
	VANILLA = 10,
}

local results = {}
function widget:Update()
	table.wipe(results)

	self.frame.empty:Show()
	for _,row in ipairs(self.rows) do row:Hide() end

	for quest,exp in pairs(quests) do
		if C_TaskQuest.IsActive(quest) then
			table.insert(results, {quest, exp, ZGV.QuestDB:GetQuestName(quest)})
		end
	end

	if #results==0 then return end

	table.sort(results, function(a,b) 
		if a[2]==b[2] then
			return (a[3] or "") < (b[3] or "")
		else
			return sortorder[a[2]] < sortorder[b[2]]
		end
	end)

	self.frame.empty:Hide()

	for i,qdata in pairs(results) do
		local qid = qdata[1]
		local qtime = C_TaskQuest.GetQuestTimeLeftSeconds(qid)
		local qname = qdata[3]

		local row = self.rows[i]
		if row then
			row.text:SetText(qname)
			row.time:SetText(qtime and ZGV.F.GetTimeFromSeconds(qtime,"short") or "-")
			row.questID = qid
			ZGV.IconSets.ExpansionIcons[qdata[2]]:AssignToTexture(row.tex)
			row.tex:Show()
			row:Show()
		end
	end
end


function widget:OnTick()
	self:Update()
end

ZGV.Widgets:RegisterWidget(widget)