local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "callings",
	group = "covenant",
	sizes = {
		{width = 4,height = 2}
	},
	sizelimits = {
		minwidth = 2, 
		minheight = 1,
		maxwidth = 6,
		maxheight = 6,
	},
	tick = 1,
	events = {
		COVENANT_CALLINGS_UPDATED=true,
	},
	valid = ZGV.IsRetail,
}

local function row_onenter(row)
	GameTooltip:SetOwner(row, "ANCHOR_BOTTOM")
	TaskPOI_OnEnter(row,"skipSetOwner")
	GameTooltip:Show()
end

local function row_onleave(row)
	GameTooltip:Hide()
end


function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")
	self.frame.header = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOPLEFT",10,-10)
		:SetFont(FONTBOLD,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_callings_header"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.frame.empty = CHAIN(self.frame:CreateFontString())
		:SetPoint("CENTER")
		:SetFont(FONT,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_callings_empty"])
		:SetIgnoreParentAlpha(true)
		:Show()
	.__END

	self.rows = {}
	local prev

	for i=1,3 do
		local row = CHAIN(CreateFrame("Button",nil,self.frame))
			:SetPoint("RIGHT")
			:SetHeight(25)
			:SetScript("OnEnter",row_onenter)
			:SetScript("OnLeave",row_onleave)
			:SetIgnoreParentAlpha(true)
			:Hide()
		.__END
		if prev then
			row:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-2)
		else
			row:SetPoint("TOPLEFT",self.frame.header,"BOTTOMLEFT",0,-8)
		end
		
		prev = row

		row.tex = CHAIN(row:CreateTexture())
			:SetPoint("LEFT")
			:SetSize(48,48)
			:Show()
		.__END

		row.text = CHAIN(row:CreateFontString())
			:SetFont(FONT,13)
			:SetPoint("LEFT",row.tex,"RIGHT",5,0)
			:SetJustifyH("LEFT")
		.__END

		row.time = CHAIN(row:CreateFontString())
			:SetFont(FONT,13)
			:SetPoint("RIGHT",-5,0)
			:SetWidth(120)
			:SetJustifyH("RIGHT")
		.__END

		table.insert(self.rows,row)
	end

	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:Update()
	self.frame.empty:Show()

	C_CovenantCallings.RequestCallings()
	-- results arrive as payload of COVENANT_CALLINGS_UPDATED event, so this is all we can do in regular update.
	-- rest is called from event handler
end

function widget:DisplayResults()
	self.frame.empty:Show()
	for _,row in ipairs(self.rows) do row:Hide() end

	if not (self.callings and next(self.callings)) then return end

	self.frame.empty:Hide()

	for i,v in ipairs(self.callings) do
		-- get time, since callings in event payload are not sorted
		v.seconds = C_TaskQuest.GetQuestTimeLeftSeconds(v.questID)
		if not v.seconds then -- no time, so quest possibly just expired
			self:Update()
			return
		end
	end

	table.sort(self.callings,function(a,b) return a.seconds<b.seconds end)

	for i,v in ipairs(self.callings) do
		local row = self.rows[i]
		if row then
			v.name = v.name or C_TaskQuest.GetQuestInfoByQuestID(v.questID)

			local found, guides= ZGV.QuestDB:GetGuidesForQuest(v.questID)
			if found then
				local title,step = next(guides)
				if title then
					local guide = ZGV:GetGuideByTitle(title)
					row:SetScript("OnClick",function() 
						ZGV.GuideMenu:ActivateGuide(guide) 
						ZGV:FocusStep(step,true)
					end)
				end
			end

			row.text:SetText(v.name)
			row.tex:SetTexture(v.icon)
			row.questID = v.questID
			row:Show()
		end
	end
	self:UpdateTimes()
end

function widget:UpdateTimes()
	if not self.callings then return end

	for i,v in ipairs(self.callings) do
		local row = self.rows[i]
		if row then
			v.seconds = v.seconds - self.tick
			v.time = ZGV.F.GetTimeFromSeconds(v.seconds,"short")
			row.time:SetText(v.time)
		end
	end
end

function widget:OnEvent(event,...)
	self.callings = ...
	self:DisplayResults()
end

function widget:OnTick()
	-- on tick we do not to refresh everything, we can just update time left
	self:UpdateTimes()
end

ZGV.Widgets:RegisterWidget(widget)