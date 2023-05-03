local name,ZGV = ...

local Tutorial = {}
ZGV.Tutorial = Tutorial

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold

local L = ZGV.L

local CHAIN = ZGV.ChainCall

local pi=math.pi
local tiporder = { --Keep this in the correct order with start and the beginning and finish at the end. Tutorial begins at guideviewer
	"start",
	"guideviewer",
	"lock",
	"close",
	"steps",
	"guides",
	"cleanup",
	"mode",
	"progress",
	"options",
	"arrow",
	"actionbar",
	"help",
	"finish",
}

local function ButtonPosition(but)
	local self=Tutorial
	local sizeInfo=self.SizeInfo
	local parent=but:GetParent()
	local vx,vy = sizeInfo.ViewerLeft, sizeInfo.ViewerBottom
	local left, right = but:GetLeft()-vx, but:GetRight()-vx
	local viewerWidth = parent:GetWidth()

	local widthHalf = viewerWidth/2

	--Where is this button on the ViewerFrame?
	if left < widthHalf then
		ZGV:Debug("Button is on left of Viewer")
		return "LEFT"
	elseif right >= widthHalf then
		ZGV:Debug("Button is on right of Viewer")
		return "RIGHT"
	end
	return 0 -- so confused.
end

local function PositionTooltip(locX,but)
	local self=Tutorial
	local sizeInfo=self.SizeInfo

	local side
	local vert="BOTTOM"

	local topspace=sizeInfo.TotalHeight - (sizeInfo.ViewerTop + sizeInfo.TooltipHeight)

	local xOffset
	local yOffset= min(100, topspace)
		--print(but:GetBottom(),topspace,sizeInfo.TooltipHeight, yOffset)
	if yOffset < 0 then
		vert="TOP"	--switch side that the Tooltip is postioned from.
	end

	if locX=="LEFT" then
		side="RIGHT"
		local leftspace = sizeInfo.ViewerLeft - sizeInfo.TooltipWidth -- How much room is there left over after our tooltip is there?
		xOffset = min(75,leftspace)

		if xOffset < 0 then
			side="LEFT" --switch side that the Tooltip is postioned from.
		end

		xOffset = -xOffset --Move it left
	elseif locX=="RIGHT" then
		side="LEFT"
		local rightspace = sizeInfo.TotalWidth - (sizeInfo.ViewerRight +sizeInfo.TooltipWidth) -- How much room is there left over after our tooltip is there?
		xOffset = min(75,rightspace)

		if xOffset < 0 then
			side="RIGHT"	--switch side that the Tooltip is postioned from.
		end

		xOffset = xOffset -- Duh, Moving it right.
	else
		vert="BOTTOM"
		side="RIGHT"
		local leftspace = but:GetLeft() - sizeInfo.TooltipWidth -- How much room is there left over after our tooltip is there?
		xOffset = min(75,leftspace)

		if xOffset < 0 then
			side="LEFT" --switch side that the Tooltip is postioned from.
		end

		xOffset = -xOffset --Move it left

		local topspace=sizeInfo.TotalHeight - (but:GetTop() + sizeInfo.TooltipHeight)
		yOffset= min(100, topspace)

		if yOffset < 0 then
			vert="TOP"
		end
	end

	return side,xOffset , vert,yOffset
end

local function SetTooltip(pos,placement)
	local self = Tutorial
	local mainFrame=self.TooltipFrame --.TipText, .MainText\
	local sizeInfo=self.SizeInfo
	local height=0

	ZGV:Debug("Creating Tooltip for %s",pos)

	if pos=="help" then mainFrame.Next:SetText(L['guidetutorial_donebutton'])
	else mainFrame.Next:SetText(L['guidetutorial_next'])end

	if pos=="guideviewer" then mainFrame.Back:SetText(L['guidetutorial_exit'])
	else mainFrame.Back:SetText(L['guidetutorial_backbutton'])end

	mainFrame.MainText:SetText(L['guidetutorial_'..pos])
	mainFrame.TipText:SetText(L['guidetutorial_'..pos..'tip'])

	height = 10 + mainFrame.MainText:GetStringHeight() + 10 + mainFrame.TipText:GetStringHeight() + 10 + mainFrame.Back:GetHeight() + 10

	if self.CurrentTip=="progress" then
		mainFrame.BlueBar:Show() mainFrame.BlueBarFrame:Show()
		mainFrame.ProgText1:Show() mainFrame.ProgText1:SetHeight(mainFrame.ProgText1:GetStringHeight())

		mainFrame.GreenBar:Show() mainFrame.GreenBarFrame:Show()
		mainFrame.ProgText2:Show() mainFrame.ProgText2:SetHeight(mainFrame.ProgText2:GetStringHeight())

		height = height + 15 + mainFrame.GreenBar:GetStringHeight()
		 + 10 +  mainFrame.GreenBarFrame:GetHeight()
		 + 5 + mainFrame.ProgText1:GetStringHeight()
		 + 10 + mainFrame.BlueBar:GetStringHeight()
		 + 10 +  mainFrame.BlueBarFrame:GetHeight()
		 + 5 + mainFrame.ProgText2:GetStringHeight()
		 + 10
	else
		if mainFrame.BlueBar:IsShown() then
			mainFrame.BlueBar:Hide() mainFrame.BlueBarFrame:Hide() mainFrame.ProgText1:Hide()
			mainFrame.GreenBar:Hide() mainFrame.GreenBarFrame:Hide() mainFrame.ProgText2:Hide()
		end
	end

	mainFrame:SetHeight(height)
	sizeInfo.TooltipHeight=(height)
end

function Tutorial:FadeStart()
	ZGV:Debug("Started Fading")
	self.Invis:Show()
end

local function Fade(pos,placement)
	local self=Tutorial

	ZGV:Debug("Fading "..pos)

	ZGV.Frame:SetAlpha(0.4)
	ZGV.ActionBar:SetAlpha(0.4)

	if pos=="guideviewer" then
		ZGV.Frame:SetAlpha(1.0)
	elseif pos=="steps" then

		local prev,num =self.Locations.steps2,self.Locations.steps3
		prev:SetParent(self.Invis) num:SetParent(self.Invis)
		prev:SetFrameLevel(self.Invis:GetFrameLevel()-1) num:SetFrameLevel(self.Invis:GetFrameLevel()-1)

		placement:SetParent(self.Invis)
		placement:SetFrameLevel(self.Invis:GetFrameLevel()-1)

	elseif pos=="arrow" then
		-- do nothing different for the arrow
	elseif pos=="actionbar" then
		ZGV.ActionBar:SetAlpha(1)
	else
		placement:SetParent(self.Invis)
		placement:SetFrameLevel(self.Invis:GetFrameLevel()-1)
	end
end

function Tutorial:FadingReset(current)
	ZGV:Debug("Reseting the Fading for "..current)
	local placement = self.Locations[current]

	if current=="guideviewer" then
		--Do not need to do anything. Invis frame is hidden on close.
	elseif current=="steps" then
		placement:SetParent(self.TipParent)
		self.Locations.steps2:SetParent(self.TipParent)
		self.Locations.steps3:SetParent(self.TipParent)
	elseif current=="arrow" then
		-- do nothing different for the arrow
	else
		placement:SetParent(self.TipParent)
	end
end

local TooltipTimeout = 0
local function TooltipLast()
	local self=Tutorial
	local mainFrame=self.TooltipFrame

	mainFrame.Line:Hide()
	mainFrame:ClearAllPoints()
	mainFrame:SetPoint("CENTER",UIParent,"CENTER")
end

local function CheckTooltip(vert,side,placement) --This has some recursion in it, but has a timeout and tooltip is moving so should fix itself.
	local self=Tutorial
	local m=self.TooltipFrame
	local u= UIParent

	if TooltipTimeout >= 20 then TooltipLast() return end

	if m:GetTop() > u:GetTop() then -- We are outside the top or bottom of the screen
		ZGV:Debug("Repostioned Down")
		local _,_,_,x,y = m:GetPoint(1)
		y=y-25 -- move it down 25 until it is on the screen
		TooltipTimeout=TooltipTimeout+1
		self:PlaceTooltip(vert,side,x,y,placement,true)
	elseif m:GetBottom() < 0 then
		ZGV:Debug("Repostioned Up")
		local _,_,_,x,y = m:GetPoint(1)
		y=y+25 -- move it up 25 until it is on the screen
		TooltipTimeout=TooltipTimeout+1
		self:PlaceTooltip(vert,side,x,y,placement,true)
	end

	if m:GetRight()>u:GetRight() then -- We are outside the top or bottom of the screen
		ZGV:Debug("Repostioned Left")
		local _,_,_,x,y = m:GetPoint(1)
		x=x-25 -- move it left 25 until it is on the screen
		TooltipTimeout=TooltipTimeout+1
		self:PlaceTooltip(vert,side,x,y,placement,true)
	elseif m:GetBottom() < 0 then
		ZGV:Debug("Repostioned Right")
		local _,_,_,x,y = m:GetPoint(1)
		x=x+25 -- move it right 25 until it is on the screen
		TooltipTimeout=TooltipTimeout+1
		self:PlaceTooltip(vert,side,x,y,placement,true)
	end
end

function Tutorial:PlaceTooltip(vert,side,xOffset,yOffset,placement, repositioning)
	local self=Tutorial
	local mainFrame=self.TooltipFrame
	local linePoint

	if vert=="TOP"  then linePoint="BOTTOM" else linePoint="TOP" end
	if side=="LEFT" then linePoint=linePoint.."RIGHT" else linePoint=linePoint.."LEFT" end

	if ( xOffset>0 and yOffset>0) or (xOffset<0 and yOffset<0) then --x < 0 and y < 0 x>0 and y>0
		mainFrame.Line:SetTexCoord(0,1,0,1)
		if linePoint=="TOPLEFT" then linePoint="BOTTOMLEFT" end
		if linePoint=="BOTTOMRIGHT" then linePoint="TOPRIGHT" end
	else --x<0 and y>0 - x > 0 and y < 0
		mainFrame.Line:SetTexCoord(1,0,0,1)
		if linePoint=="BOTTOMLEFT" then linePoint="TOPLEFT" end
		if linePoint=="TOPRIGHT" then linePoint="BOTTOMRIGHT" end
	end

	local x,y=abs(xOffset),abs(yOffset)
	mainFrame.Line:Show()
	mainFrame.Line:SetSize(x,y)
	mainFrame.Line:ClearAllPoints()
	mainFrame.Line:SetPoint(linePoint,mainFrame,vert..side)

	local pos  --TODO: what is this?
	if pos=="guideviewer" or pos=="model" or pos=="" then vert="" side=side end

	mainFrame:ClearAllPoints()
	mainFrame:SetPoint(vert..side,placement,linePoint,xOffset,yOffset)

	CheckTooltip(vert,side,placement) -- Make sure we are in the screen
end

function Tutorial:Next(pos)
	ZGV:Debug("Next tutorial is " ..pos)
	local placement=self.Locations[pos]
	local mainFrame=self.TooltipFrame --.TipText, .MainText\
	local sizeInfo=self.SizeInfo
	local locX
	TooltipTimeout=0 -- Set the timeout back to 0 for each tooltip.

	if not placement then Tutorial:Close() return end

	self.CurrentTip=pos

	self.TipParent=placement:GetParent()

	SetTooltip(pos,placement)
	Fade(pos,placement)

	if pos=="actionbar" then
		ZGV.ActionBar:TutorialPreview("on")
	else
		ZGV.ActionBar:TutorialPreview("off")
	end

	if not placement:IsVisible() then
		pos="guideviewer"
		placement= self.Locations[pos]
	end -- If the model viewer or arrow is hidden, display the tip off of the guide viewer

	if pos=="arrow" or pos=="model" or pos =="progress" then
		locX="Other"
	else
		locX=ButtonPosition(placement) --returns LEFT or RIGHT based on if the widget is on the left or right of the Viewer Frame
	end

	local side, xOffset, vert, yOffset = PositionTooltip(locX,placement)

	self:PlaceTooltip(vert,side,xOffset,yOffset,placement)
end

function Tutorial:Close()
	ZGV:Debug("Closing Tutorial")

	self.Running=false

	self:FadingReset(self.CurrentTip) --reset the current button incase they quit during the tutorial.
	self.Invis:Hide() ZGV.Frame:SetAlpha(1.0)
	self.TooltipFrame:Hide()
	ZGV.ActionBar:SetAlpha()
	ZGV.ActionBar:TutorialPreview("off")
end

function Tutorial:CreateFrame()
	local ui = ZGV.UI
	local function SkinData(property)
		return ZGV.UI.SkinData(property)
	end

	self.Invis = CHAIN(CreateFrame("Frame", nil, ZGV.Frame))
		:SetAllPoints()
		:SetParent(UIParent)
		:SetFrameStrata("HIGH") --Needs to be here to be over the step clickers >.>
		:SetFrameLevel(10)
		:EnableMouse(true)
		:Hide()
	.__END

	local F = CHAIN(ui:Create("Frame",UIParent))
		--Point gets set when displayed.
		:SetSize(350,200)
		:SetFrameStrata("HIGH")
		:SetFrameLevel(15)
	.__END

	self.TooltipFrame = F

	F.Line = CHAIN(F:CreateTexture())
		:SetTexture(ZGV.DIR.."\\Skins\\tutorialline-dia")
		:SetSize(200,200)
	.__END

	F.MainText = CHAIN(F:CreateFontString())
		:SetPoint("TOPLEFT",F,"TOPLEFT",10,-10)
		:SetJustifyH("LEFT")
		:SetFont(FONTBOLD,16)
		:SetText("Button!")
	.__END

	F.TipText = CHAIN(F:CreateFontString())
		:SetPoint("TOPLEFT",F.MainText,"BOTTOMLEFT",0,-10)
		:SetJustifyH("LEFT")
		:SetFont(FONT,13)
		:SetText("This is a button!")
		:SetWidth(F:GetWidth()-20)
		:SetWordWrap(true)
		:SetSpacing(5)
	.__END

	F.GreenBar = CHAIN(F:CreateFontString())
		:SetPoint("TOPLEFT",F.TipText,"BOTTOMLEFT",0,-15)
		:SetJustifyH("LEFT")
		:SetFont(FONTBOLD,14)
		:SetText(L['guidetutorial_progresstipstep'])
		:SetSpacing(5)
		:Hide()
	.__END

	F.GreenBarFrame = CHAIN(CreateFrame("Frame",nil,F))
		:SetBackdrop(SkinData("ProgressBarBackdrop"))
		:SetBackdropColor(unpack(SkinData("ProgressBarBackdropColor")))
		:SetBackdropBorderColor(0,0,0,0)
		:SetPoint("TOPLEFT",F.GreenBar,"BOTTOMLEFT",0,-10)
		:SetSize(F:GetWidth()-20,7)
		:Hide()
	.__END

	F.GreenBarTex = CHAIN(F.GreenBarFrame:CreateTexture())
		:SetColorTexture(unpack(SkinData("ProgressBarTexture")))
		:SetVertexColor(unpack(SkinData("ProgressBarColor")))
		:SetPoint("TOPLEFT",F.GreenBarFrame,"TOPLEFT",0,-1)
		:SetPoint("BOTTOMRIGHT",F.GreenBarFrame,"BOTTOMRIGHT",-120,1)
	.__END

	F.ProgText1 = CHAIN(F:CreateFontString())
		:SetPoint("TOPLEFT",F.GreenBarFrame,"BOTTOMLEFT",0,-5)
		:SetJustifyH("LEFT")
		:SetFont(FONT,14)
		:SetText(L['guidetutorial_progresstip2'])
		:SetWidth(F:GetWidth()-20)
		:SetWordWrap(true)
		:SetSpacing(5)
		:Hide()
	.__END

	F.BlueBar = CHAIN(F:CreateFontString())
		:SetPoint("TOPLEFT",F.ProgText1,"BOTTOMLEFT",0,-15)
		:SetJustifyH("LEFT")
		:SetFont(FONTBOLD,14)
		:SetText(L['guidetutorial_progresstiplevel'])
		:Hide()
	.__END

	F.BlueBarFrame = CHAIN(CreateFrame("Frame",nil,F))
		:SetBackdrop(SkinData("ProgressBarBackdrop"))
		:SetBackdropColor(unpack(SkinData("ProgressBarBackdropColor")))
		:SetBackdropBorderColor(0,0,0,0)
		:SetPoint("TOPLEFT",F.BlueBar,"BOTTOMLEFT",0,-10)
		:SetSize(F:GetWidth()-20,7)
		:Hide()
	.__END

	F.BlueBarTex = CHAIN(F.BlueBarFrame:CreateTexture())
		:SetColorTexture(unpack(SkinData("ProgressBarTexture")))
		:SetVertexColor(unpack(SkinData("ProgressBarColor2")))
		:SetPoint("TOPLEFT",F.BlueBarFrame,"TOPLEFT",0,-1)
		:SetPoint("BOTTOMRIGHT",F.BlueBarFrame,"BOTTOMRIGHT",-120,1)
	.__END

	F.ProgText2 = CHAIN(F:CreateFontString())
		:SetPoint("TOPLEFT",F.BlueBarFrame,"BOTTOMLEFT",0,-5)
		:SetJustifyH("LEFT")
		:SetFont(FONT,14)
		:SetText(L['guidetutorial_progresstip3'])
		:SetWidth(F:GetWidth()-20)
		:SetWordWrap(true)
		:SetSpacing(5)
		:Hide()
	.__END

	F.Next = CHAIN(ui:Create("Button",F))
		:SetSize(60,25)
		:SetPoint("BOTTOMRIGHT",F,"BOTTOMRIGHT",-10,10)
		:SetText(L['guidetutorial_next'])
		:SetScript("OnClick",function()
			Tutorial:FadingReset(Tutorial.CurrentTip)
			for i=1,#tiporder do
				if tiporder[i]==Tutorial.CurrentTip then
					Tutorial:Next(tiporder[i+1])
					break
				end
			end
		end)
	.__END

	F.Back = CHAIN(ui:Create("Button",F))
		:SetSize(60,25)
		:SetPoint("BOTTOMLEFT",F,"BOTTOMLEFT",10,10)
		:SetText(L['guidetutorial_backbutton'])
		:SetScript("OnClick",function()
			Tutorial:FadingReset(Tutorial.CurrentTip)
			for i=1,#tiporder do
				if tiporder[i]==Tutorial.CurrentTip then
					Tutorial:Next(tiporder[i-1])
					break
				end
			end
		end)
	.__END

	F.Close = CHAIN(CreateFrame("Button", nil, F))
		:SetSize(15,15)
		:SetPoint("TOPRIGHT",F,"TOPRIGHT",-5,-5)
		:SetScript("OnClick",function() Tutorial:Close() end) :RegisterForClicks("LeftButtonUp")
	.__END

	ZGV.ButtonSets.TitleButtons.CLOSE:AssignToButton(F.Close)
end

function Tutorial:GetDimensions(ZGVF)
	self.SizeInfo = {}

	local sizeInfo = self.SizeInfo

	sizeInfo.TotalWidth,sizeInfo.TotalHeight=UIParent:GetSize() sizeInfo.TotalHeight=sizeInfo.TotalHeight-50 --nothing closer than 50 to top
	sizeInfo.ViewerLeft, sizeInfo.ViewerRight, sizeInfo.ViewerBottom, sizeInfo.ViewerTop= ZGVF:GetLeft(), ZGVF:GetRight(), ZGVF:GetBottom(), ZGVF:GetTop()
	sizeInfo.TooltipWidth, sizeInfo.TooltipHeight = self.TooltipFrame:GetSize()
end

function Tutorial:SavePositions()
	self.Locations = {}
	local loc=self.Locations
	local Border=ZGV.Frame.Border

	loc.guideviewer = ZGV.Frame
	loc.options = ZGV.Frame.Controls.SettingsButton
	loc.help = ZGV.Frame.Controls.HelpButton
	loc.lock = ZGV.Frame.Controls.LockButton
	loc.close = ZGV.Frame.Controls.CloseButton
	loc.steps = ZGV.Frame.Controls.NextButton
	loc.steps2 = ZGV.Frame.Controls.PrevButton
	loc.steps3 = ZGV.Frame.Controls.StepNum
	loc.guides = ZGV.Tabs.AddButton
	loc.cleanup = ZGV.Frame.Controls.QuestCleanupButton
	loc.mode = ZGV.Frame.Controls.MiniButton
	loc.progress = ZGV.Frame.Controls.ProgressBar
	loc.arrow = ZGV.Pointer.ArrowFrame
	loc.actionbar = ZGV.ActionBar.Frame
end

function Tutorial:Run()
	ZGV:Debug("Running Tutorial")

	self.Running=true

	Tutorial:SavePositions()

	Tutorial:CreateFrame()

	Tutorial:GetDimensions(ZGV.Frame)

	Tutorial:Next("guideviewer") --We start at guideviewer
	Tutorial:FadeStart()
end