local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "mythicplus",
	group = "dungeons",
	sizes = {
		{width = 2,height = 2}
	},
	sizelimits = {
		minwidth = 2, 
		minheight = 2,
		maxwidth = 2,
		maxheight = 2,
	},
	events = {
		MYTHIC_PLUS_CURRENT_AFFIX_UPDATE=true,
	},
	valid = ZGV.IsRetail,
}

local function row_onenter(row)
	GameTooltip:SetOwner(row, "ANCHOR_BOTTOM")
	GameTooltip:AddLine(row.description,nil,nil,nil,true)
	GameTooltip:Show()
end

local function row_onleave(row)
	GameTooltip:Hide()
end

local affixlevels = {2,4,7,10}
local spells = {
	[1] = {221772},
	[2] = {206151},
	[3] = {209861,209862},
	[4] = {209858},
	[6] = {228318},
	[7] = {209859},
	[8] = {226510,226512},
	[9] = {206150},
	[10] = {206150},
	[11] = {243237},
	[12] = {240559},
	[13] = {240446},
	[14] = {240447},
	[16] = {277242},
	[117] = {288388,288694,289422,290085},
}

function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")
	self.frame.header = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",10,-10)
		:SetFont(FONTBOLD,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_mythicplus_header"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.rows = {}
	local prev

	for i=1,4 do
		local row = CHAIN(CreateFrame("Frame",nil,self.frame))
			:SetPoint("RIGHT")
			:SetHeight(25)
			:SetScript("OnEnter",row_onenter)
			:SetScript("OnLeave",row_onleave)
			:SetIgnoreParentAlpha(true)
		.__END
		if prev then
			row:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-2)
		else
			row:SetPoint("TOPLEFT",self.frame.header,"BOTTOMLEFT",0,-8)
		end
		
		prev = row

		row.tex = CHAIN(row:CreateTexture())
			:SetPoint("TOPLEFT")
			:SetSize(18,18)
			:Show()
		.__END

		row.text = CHAIN(row:CreateFontString())
			:SetFont(FONT,13)
			:SetPoint("LEFT",row.tex,"RIGHT",5,0)
			:SetJustifyH("LEFT")
		.__END

		table.insert(self.rows,row)
	end

	C_ChallengeMode.GetMapTable()
	C_MythicPlus.RequestCurrentAffixes()
	C_MythicPlus.RequestMapInfo()

	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:Update()
	local affixes = C_MythicPlus.GetCurrentAffixes()

	for i,aff in ipairs(affixes) do
		local name,desc,texture = C_ChallengeMode.GetAffixInfo(aff.id)
		local row = self.rows[i]
		row.text:SetText(name)
		row.tex:SetTexture(texture)
		row:Show()
		local description = "|cffffffff"..name.."|r (level "..affixlevels[i].."+)\n"..desc
		if spells[aff.id] then
			for _,spell in ipairs(spells[aff.id]) do
				local sdata = Spell:CreateFromSpellID(spell)
				local sname = sdata:GetSpellName()
				local sdesc = sdata:GetSpellDescription()
				if sname and sdesc then
					if sdesc~="" then
						description = description.."\n\n|cffffffff"..sname.."|r\n"..sdesc
					end
				else
					spell:ContinueOnSpellLoad(function() widget:Update() end)
				end
			end
		end
		
		row.description = description
	end
end

function widget:OnEvent(event,...)
	self:Update()
end


ZGV.Widgets:RegisterWidget(widget)