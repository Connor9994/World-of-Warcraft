local L = ZGV.L
local CHAIN = ZGV.ChainCall
local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local widget={
	ident = "timeplayed",
	group = "general",
	sizes = {
		{width = 2,height = 2}
	},
	sizelimits = {
		minwidth = 2, 
		minheight = 1,
		maxwidth = 2,
		maxheight = 2,
	},
	events = {
		TIME_PLAYED_MSG=true,
	},
	listeninactive = true,
	tick = 1,
}

function widget:Initialise()
	self.frame = ZGV.UI:Create("Button",ZGV.Widgets.Parent,nil,nil,"ZGV_Widget_Template")

	self.frame.header = CHAIN(self.frame:CreateFontString())
		:SetPoint("TOP",0,-10)
		:SetFont(FONTBOLD,14) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_timeplayed_header"])
		:SetIgnoreParentAlpha(true)
	.__END

	self.lines = {}

	local prev
	for i=1,5 do
		local text = CHAIN(self.frame:CreateFontString())
			:SetFont(FONT,12) 
			:SetTextColor(1,1,1,1)
			:SetText("")
			:SetPoint("LEFT")
			:SetPoint("RIGHT")
			:SetJustifyH("LEFT")
			:SetHeight(20)
			:SetIgnoreParentAlpha(true)
		.__END

		if prev then
			text:SetPoint("TOPLEFT",prev,"BOTTOMLEFT",0,-2)
		else
			text:SetPoint("TOP",self.frame.header,"BOTTOM",0,-8)
			text:SetPoint("LEFT",self.frame,"LEFT",10,-8)
		end
		
		prev = text

		table.insert(self.lines,text)
	end

	local expansion = GetExpansionLevel()
	self.maxlevel = GetMaxLevelForExpansionLevel(expansion)
	
	self.popup = CHAIN(ZGV.CreateFrameWithBG("Button",nil,ZGV.Widgets.Fader))
		:SetSize(self.popupwidth or ZGV.Widgets.Fader:GetWidth(),self.popupheight or ZGV.Widgets.Fader:GetHeight())
	.__END

	-- blizzard displays time played in reaction to TPM, so replace chat handler for our first call. we restore it as soon as our TPM arrives
	if not self.Floating then 
		self.ChatFrame_DisplayTimePlayed = ChatFrame_DisplayTimePlayed
		ChatFrame_DisplayTimePlayed = function() end
		-- store play time per level, initial one time call to record current level/total playtime
		RequestTimePlayed()
	end

	Mixin(self,ZGV_Widget_Object_Mixin)
end

function widget:InitialisePopup()
	if self.popupready then return end

	self.popup.header = CHAIN(self.popup:CreateFontString())
		:SetPoint("TOPLEFT",30,-10)
		:SetPoint("TOPRIGHT",-10,-10)
		:SetFont(FONT,18) 
		:SetTextColor(1,1,1,1)
		:SetText(L["widget_timeplayed_header"])
	.__END

	self.popuplines = {}
	local prevrow,prevcol
	local columns = 3

	local lines_per_column = math.ceil(self.maxlevel/3)

	local column_lines = 0
	for col=1,3 do
		for row=1,lines_per_column do
			local level = (col-1)*lines_per_column+row
			if level<=self.maxlevel  then
				local text = CHAIN(self.popup:CreateFontString())
					:SetFont(FONT,12) 
					:SetTextColor(1,1,1,1)
					:SetText("Level "..level)
					:SetJustifyH("LEFT")
					:SetWidth((self.popupwidth or ZGV.Widgets.Fader:GetWidth())/columns)
					:SetHeight(20)
				.__END

				if row==1 then
					if prevcol then
						text:SetPoint("LEFT",prevcol,"RIGHT",0,0)
					else
						text:SetPoint("TOPLEFT",self.popup.header,"BOTTOMLEFT",0,-8)
					end
					prevcol = text
					prevrow = text
				else
					text:SetPoint("TOPLEFT",prevrow,"BOTTOMLEFT",0,0)
					prevrow = text
				end
				self.popuplines[level] = text
			end
		end
	end

	local text = CHAIN(self.popup:CreateFontString())
		:SetFont(FONT,12) 
		:SetTextColor(1,1,1,1)
		:SetText("max Level")
		:SetJustifyH("LEFT")
		:SetWidth((self.popupwidth or ZGV.Widgets.Fader:GetWidth())/columns)
		:SetHeight(20)
	.__END
	text:SetPoint("TOPLEFT",self.popuplines[lines_per_column],"BOTTOMLEFT",0,0)

	self.popuplines.maxlevel = text
	self.popupready = true
end

local use_short = true

function widget:Update()
	local pl = UnitLevel('player')
	local counter = 0
	for i=pl,1,-1 do
		local leveltime = ZGV.db.char.timeperlevel[i]
		if leveltime then
			counter = counter + 1
			self.lines[counter]:SetText(L["widget_timeplayed_line"]:format(i,ZGV.F.GetTimeFromSeconds(leveltime,use_short)))
			if counter==#self.lines then break end
		end
	end
end

function widget:OnPopup()
	local pl = UnitLevel('player')
	for i=1,self.maxlevel,1 do
		local leveltime = ZGV.db.char.timeperlevel[i]
		if leveltime then
			self.popuplines[i]:SetText(L["widget_timeplayed_line"]:format(i,ZGV.F.GetTimeFromSeconds(leveltime,use_short)))
		else
			if i>pl then
				self.popuplines[i]:SetText(L["widget_timeplayed_notyet"]:format(i))
			else
				self.popuplines[i]:SetText(L["widget_timeplayed_unknown"]:format(i))
			end
		end
	end
	
	local total_text = ZGV.F.GetTimeFromSeconds(ZGV.db.char.timeperlevel.total,use_short)
	if pl<self.maxlevel then
		total_text = "not reached"
	end
	self.popuplines.maxlevel:SetText(L["widget_timeplayed_total"]:format(self.maxlevel,total_text))
end

function widget:OnTick()
	if self.Floating then return end

	local pl = UnitLevel('player')
	if pl<self.maxlevel then
		ZGV.db.char.timeperlevel[pl] = (ZGV.db.char.timeperlevel[pl] or 0) + 1
		ZGV.db.char.timeperlevel.total = (ZGV.db.char.timeperlevel.total or 0) + 1
		self:Update()
	end
end

function widget:OnEvent(event,total,level)
	if self.Floating then return end

	-- record values
	local pl = UnitLevel('player')
	if pl < self.maxlevel then
		ZGV.db.char.timeperlevel[pl] = level
		ZGV.db.char.timeperlevel.total = total
	else
		-- if we are max level, record only total to max level
		ZGV.db.char.timeperlevel[pl] = level
		ZGV.db.char.timeperlevel.total = total-level
	end

	-- restore original chat handler
	ChatFrame_DisplayTimePlayed = self.ChatFrame_DisplayTimePlayed
	self.ChatFrame_DisplayTimePlayed = nil

	-- unregister event
	self.events.TIME_PLAYED_MSG = nil
end

function widget:Backup()
	local out="{"
	local charfmt = '["%s"] = {'
	local pointfmt = '[%d]=%d,'
	for name,data in pairs(ZGV.db.sv.char) do
		if data.timeperlevel then
			out=out..charfmt:format(name)
			for level,played in pairs(data.timeperlevel) do
				if tonumber(level) then out=out..pointfmt:format(level,played) end
			end
			out=out.."},"
		end
	end
	out=out.."}"
	return out
end

function widget:Import(savedvars)
	for character,data in pairs(savedvars) do
		ZGV.db.sv.char[character] = ZGV.db.sv.char[character] or {}
		ZGV.db.sv.char[character].timeperlevel = {}
		for level,played in pairs(data) do
			ZGV.db.sv.char[character].timeperlevel[level]=played
		end			
	end
end

ZGV.Widgets:RegisterWidget(widget)