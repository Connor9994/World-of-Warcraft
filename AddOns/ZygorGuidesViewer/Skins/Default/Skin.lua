local name,ZGV = ...

-- GLOBAL ZygorGuidesViewerFrameMaster,ZygorGuidesViewerMapIcon
local Skin = ZGV.Skins:AddSkin("default","Default")

local CHAIN=ZGV.ChainCall
local SkinData = ZGV.UI.SkinData
local L = ZGV.L


local FrameProto = {}

-- Skin-specific functions now
function Skin:CreateFrame()
	if not self.frame then
		self.frame = CreateFrame("FRAME","ZygorGuidesViewerFrame",ZygorGuidesViewerFrameMaster,"ZGV_DefaultSkin_Frame_Template")
		self.frame.skin = self
		self.frame.style = self.id

		Mixin(self.frame,FrameProto)
	end

	ZGV.Frame = self.frame

	self.frame:ApplySkin()

	self.frame:EnableKeyboard(true)

	return self.frame
end

local FONT = ZGV.Font

function FrameProto:ApplySkin()
	local frame = self

	ZGV.STEP_SPACING = SkinData("StepSpacing")

	local function set_alpha(new_a,r,g,b,a) return r,g,b,new_a*a end
	local OPACITY = SkinData("UseOpacity") and ZGV.db.profile.opacity or  1

	-- Setting up border
	frame.Border:SetBackdrop(SkinData("WindowBackdrop") or SkinData("Backdrop"))
	frame.Border:SetBackdropColor(set_alpha(OPACITY,unpack(SkinData("WindowBackdropColor") or SkinData("BackdropColor"))))
	frame.Border:SetBackdropBorderColor(set_alpha(OPACITY,unpack(SkinData("WindowBackdropBorderColor") or SkinData("BackdropBorderColor"))))
	CHAIN(frame.Border.Back)
		:SetBackdrop(SkinData("WindowBottomBackdrop"))
		:SetBackdropColor(unpack(SkinData("WindowBottomBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("WindowBottomBackdropBorderColor")))

	CHAIN(frame.Border.TabContainer)
	:SetBackdrop(SkinData("TabBackdrop"))
	:SetHeight(SkinData("TabsHeight")+3)
	local center = frame.Border.TabContainer.Center or frame.Border.TabContainer:GetRegions()
	if center then 
		center:SetColorTexture(unpack(SkinData("TabBackdropColor")))
	end


	CHAIN(frame.Border.Toolbar)
		:SetBackdrop(SkinData("Backdrop"))
		:SetBackdropColor(unpack(SkinData("SystemBarBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("SystemBarBackdropBorderColor")))
		:SetFrameLevel(5)  -- ~~sinus: I hate this.

	--frame.StepContainer:SetFrameLevel(4)
	--frame.Border.Toolbar:SetFrameLevel(5)

	-- Search Button
	--frame.Controls.SearchButton:ClearAllPoints()
	--frame.Controls.SearchButton:SetPoint("TOPLEFT", frame.Border.TitleBar,"TOPLEFT",unpack(SkinData("FindNearestPosition"))) -- TODO starlight

	frame.Controls.ReportButton:GetNormalTexture():SetVertexColor(1,0,0)
	
	local size = SkinData("TitleButtonSize")
	frame.Controls.PrevButton:SetSize(SkinData("TitleButtonStepPrevNextSize") or size,SkinData("TitleButtonStepPrevNextSize") or size)
	frame.Controls.NextButton:SetSize(SkinData("TitleButtonStepPrevNextSize") or size,SkinData("TitleButtonStepPrevNextSize") or size)
	frame.Controls.StepNum.Step:SetFont(FONT,SkinData("StepNumFontSize"))
	frame.Controls.StepNum:SetWidth(SkinData("StepNumWidth"))

	frame.Controls.NextButtonSpecial:SetSize(SkinData("TitleButtonStepPrevNextSize") or size,SkinData("TitleButtonStepPrevNextSize") or size)
	frame.Controls.NextButtonSpecial:GetNormalTexture():SetVertexColor(1,1,1,1)
	frame.Controls.NextButtonSpecial:Hide()

	for _,control in ipairs(frame.everything) do
		if control.ApplySkin then control:ApplySkin() end
		if control.SkinTexture then control:SetTexture(SkinData(control.SkinTexture)) end
		if control.SetNonBlocking then control:SetNonBlocking(false) end
	end
	ZGV.Sync:UpdateButtonColor()


	frame.Controls.Scroll.Bar.ScrollUpButton:SetSize(unpack(SkinData("ScrollBarButtonSize") or {16,16})) -- they're 18x16 by default now, the silly things.
	frame.Controls.Scroll.Bar.ScrollDownButton:SetSize(unpack(SkinData("ScrollBarButtonSize") or {16,16}))
	frame.Controls.Scroll.Bar.ThumbTexture:SetTexture(ZGV.StyleDir.."scrollbutton")

	ZGV.ProgressBar:SetDecor(SkinData("ProgressBarDecorUse"))
	ZGV.ProgressBar:SetTexture(SkinData("ProgressBarTextureFile"))
	ZGV.ProgressBar.Texture:SetVertexColor(unpack(SkinData("ProgressBarTextureColor")))

	if ZGV.db.profile.progress then
		ZGV.ProgressBar:Show()
	else
		ZGV.ProgressBar:Hide()
	end

	frame.Controls.Logo:SetSize(unpack(SkinData("TitleLogoSize")))
	frame.Controls.Logo:SetPoint("CENTER",frame.Border.TitleBar,"CENTER",0,-2)

	for tk,tex in ipairs({frame.Controls.MenuHostAdditional:GetRegions()}) do if tex.SetNonBlocking then tex:SetNonBlocking(false) end end

	
	-- menu elements' fonts and checks: now set in ZGV_DefaultSkin_MenuButton_Mixin:ApplySkin()

	frame:ApplySkinToSteps()

	frame:UpdateLocking()
	frame:AlignFrame()

	frame.Controls.DefaultStateButton.backdropInfo=SkinData("ButtonBackdrop1")
	CHAIN(frame.Controls.DefaultStateButton)
		:ApplyBackdrop()
		:SetBackdropColor(unpack(SkinData("StepBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("StepBackdropColor")))
		:SetFrameStrata("MEDIUM")
		:SetText("") -- creates fontstring
	if frame.Controls.DefaultStateButton:GetFontString() then CHAIN(frame.Controls.DefaultStateButton:GetFontString())
		:SetFont(ZGV.Font,12)
		:SetTextColor(1,1,1,1)
	end

	ZGV:UpdateFrame()

	-- other components now listed for SKIN_UPDATED

	ZGV.Frame:OnSizeChanged()
end

function FrameProto:ApplySkinToSteps()
	for pn,pool in pairs(self.stepFramePools) do
		for step,_ in pairs(pool.activeObjects) do step:ApplySkin() end
		for _,step in ipairs(pool.inactiveObjects) do step:ApplySkin() end
	end

	for texture,_ in pairs(self.stickySepPool.activeObjects) do 
		texture:SetVertexColor(1,0,1,1)
	end	
end

function FrameProto:UpdateLocking()
	-- remove mouse activity in lock mode
	local locked = ZGV.db.profile["windowlocked"]
	--self:Debug("lock mode: "..tostring(locked))
	
	local frame = ZGV.Frame
	
	frame.Border:EnableMouse(not locked)
	frame.Border.TitleBar:EnableMouse(not locked)
	frame.Border.Toolbar:EnableMouse(not locked)
	frame.ResizerLeft:EnableMouse(not locked)
	frame.ResizerRight:EnableMouse(not locked)
	frame.ResizerBottomLeft:EnableMouse(not locked)
	frame.ResizerBottomRight:EnableMouse(not locked)
	frame.ResizerBottom:EnableMouse(not locked)

	frame.Controls.Scroll:EnableMouseWheel(not locked)

	--[[
	local BUTTONTEXTURE = SkinData("TitleButtons")
	-- lock button
	local lockbut = frame.Border.TitleBar.LockButton
	ZGV.F.AssignButtonTexture(lockbut,BUTTONTEXTURE,ZGV.db.profile["windowlocked"] and 4 or 3,32)
	if ZGV.db.profile.debug_newicons then
		frame.Border.TitleBar.LockButton:GetNormalTexture():SetTexture(ZGV.SKINSDIR.."thinicon-test-lock-double",nil,nil,"BILINEAR")
		frame.Border.TitleBar.LockButton:GetNormalTexture():SetTexCoord(0,0.25,0,0.5)
	end
	--]]
end

function FrameProto:AlignFrame()  -- mixed into Frame, never called on Skin!!
	local frame=self
	local framemaster = frame:GetParent()
	local scale = ZGV.db.profile.framescale
	local width = frame:GetWidth()
	local height = frame:GetHeight()

	local upsideup = not ZGV.db.profile.resizeup

	local UP_TOP = upsideup and "TOP" or "BOTTOM"
	local UP_TOPLEFT = upsideup and "TOPLEFT" or "BOTTOMLEFT"
	local UP_BOTTOMLEFT = upsideup and "BOTTOMLEFT" or "TOPLEFT"
	local UP_BOTTOM = upsideup and "BOTTOM" or "TOP"
	local UP_TOPRIGHT = upsideup and "TOPRIGHT" or "BOTTOMRIGHT"
	local UP_BOTTOMRIGHT = upsideup and "BOTTOMRIGHT" or "TOPRIGHT"
	local UP = upsideup and 1 or -1

	local backdrop_coords = {
		TopLeftCorner = {4/8+1/128, 5/8-1/128, 1/16, 1-1/16 },
		TopRightCorner = {5/8+1/128, 6/8-1/128, 1/16, 1-1/16 },
		BottomLeftCorner = {6/8+1/128, 7/8-1/128, 1/16, 1-1/16 },
		BottomRightCorner = {7/8+1/128, 8/8-1/128, 1/16, 1-1/16 },
		TopEdge = {2/8+1/128, 3/8-1/128, 1/16, 1-1/16 },
		BottomEdge = {3/8+1/128, 4/8-1/128, 1/16, 1-1/16 },
	}
	local function flipy(x1,x2,y1,y2)
		return x1,x2,y2,y1
	end
	local function flipx(x1,x2,y1,y2)
		return x2,x1,y1,y2
	end
	local function rotl(x1,x2,y1,y2)
		return x1,y2,x2,y2,x1,y1,x2,y1
	end

	self.Controls.DefaultStateButton.min_height = 60

	local backdrop_bottomleft = {6/8+1/128, 7/8-1/128, 1/16, 1-1/16 }

	CHAIN(frame.Border.TitleBar)
		:ClearAllPoints()
		:SetPoint(UP_TOPLEFT,frame.Border)
		:SetPoint(UP_TOPRIGHT,frame.Border)

	local tabadj =  SkinData("TabsHeight")

	frame.Border:SetScript("OnSizeChanged",nil)

	frame.Border.Toolbar:ClearAllPoints()
	frame.Controls.Scroll:ClearAllPoints()

	CHAIN(frame.Border.Back)
		:SetBackdrop(SkinData("WindowBottomBackdrop"))
		:SetBackdropColor(unpack(SkinData("WindowBottomBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("WindowBottomBackdropBorderColor")))

	if upsideup then
		CHAIN(frame.Border.Back)
			:SetPoint("TOPLEFT",frame.Controls.Scroll)
			:SetPoint("BOTTOMRIGHT",frame)

		CHAIN(frame.Controls.Scroll)
			:SetPoint("TOPLEFT",frame.Border,"TOPLEFT",SkinData("ViewerMargin"),-60-tabadj-SkinData("TabsTopOffset")) -- TODO starlight
			:SetPoint("BOTTOMRIGHT",frame.Border,"BOTTOMRIGHT",-SkinData("ViewerMargin"),SkinData("ProgressBarSpaceHeight")) -- TODO starlight
		framemaster:SetClampRectInsets(0,(width-40)*scale,(-43)*scale,(-height+55)*scale)

		frame.Border.Back.TopLeftCorner:SetColorTexture(1,1,1,1)
		frame.Border.Back.TopRightCorner:SetColorTexture(1,1,1,1)
		--frame.Border.Back.BottomLeftCorner:SetColorTexture(0,0,0,0)
		--frame.Border.Back.BottomRightCorner:SetColorTexture(0,0,0,0)
		frame.Border.BottomLeftCorner:SetTexCoord(unpack(backdrop_coords.BottomLeftCorner))
		frame.Border.TopLeftCorner:SetTexCoord(unpack(backdrop_coords.TopLeftCorner))
		frame.Border.BottomRightCorner:SetTexCoord(unpack(backdrop_coords.BottomRightCorner))
		frame.Border.TopRightCorner:SetTexCoord(unpack(backdrop_coords.TopRightCorner))
		frame.Border.TopEdge:SetTexCoord(rotl(unpack(backdrop_coords.TopEdge)))
		frame.Border.BottomEdge:SetTexCoord(rotl(unpack(backdrop_coords.BottomEdge)))
	else
		CHAIN(frame.Border.Back)
			:SetPoint("TOPLEFT",frame.Controls.Scroll)
			:SetPoint("BOTTOMRIGHT",frame.Border.Toolbar)

		CHAIN(frame.Controls.Scroll)
			:SetPoint("TOPLEFT",frame.Border,"TOPLEFT",SkinData("ViewerMargin"),-14) -- -10-SkinData("TabsTopOffset"))
			:SetPoint("BOTTOMRIGHT",frame.Border.Toolbar,"TOPRIGHT",0,0) -- 8-SkinData("TabsTopOffset"))
		framemaster:SetClampRectInsets(0,(width-40)*scale,-height*scale,(42)*scale)

		frame.Border.Back.BottomLeftCorner:SetColorTexture(1,1,1,1)
		frame.Border.Back.BottomRightCorner:SetColorTexture(1,1,1,1)
		frame.Border.BottomLeftCorner:SetTexCoord(flipy(unpack(backdrop_coords.TopLeftCorner)))
		frame.Border.TopLeftCorner:SetTexCoord(flipy(unpack(backdrop_coords.BottomLeftCorner)))
		frame.Border.BottomRightCorner:SetTexCoord(flipy(unpack(backdrop_coords.TopRightCorner)))
		frame.Border.TopRightCorner:SetTexCoord(flipy(unpack(backdrop_coords.BottomRightCorner)))
		frame.Border.TopEdge:SetTexCoord(rotl(flipx(unpack(backdrop_coords.BottomEdge))))
		frame.Border.BottomEdge:SetTexCoord(rotl(flipx(unpack(backdrop_coords.TopEdge))))
	end

	frame.Border:Show()
	
	CHAIN(frame.Border.TabContainer)
	:ClearAllPoints()
	:SetPoint(UP_TOPLEFT,frame.Border.TitleBar,UP_BOTTOMLEFT,SkinData("ViewerMargin"),0)
	:SetPoint(UP_TOPRIGHT,frame.Border.TitleBar,UP_BOTTOMRIGHT,-SkinData("ViewerMargin"),0)

	CHAIN(frame.Border.Toolbar)
	:SetPoint(UP_TOPLEFT,frame.Border.TabContainer,UP_BOTTOMLEFT,0,upsideup and 0 or 2)
	:SetPoint(UP_TOPRIGHT,frame.Border.TabContainer,UP_BOTTOMRIGHT,0,upsideup and 0 or 2)
	:Show()

	CHAIN(ZGV.ProgressBar)
	:ClearAllPoints()
	:SetPoint(UP_TOPLEFT,frame.Controls.Scroll,UP_BOTTOMLEFT, SkinData("ProgressBarOffsetX"),UP*SkinData("ProgressBarOffsetY"))
	:SetPoint(UP_TOPRIGHT,frame.Controls.Scroll,UP_BOTTOMRIGHT, -SkinData("ProgressBarOffsetX"),UP*SkinData("ProgressBarOffsetY"))

	CHAIN(frame.Controls.DefaultStateButton)
	:SetPoint(UP_TOPLEFT,frame.Controls.TabContainer)
	:SetPoint(UP_BOTTOMRIGHT,frame.Controls.Scroll)

	-- first line according to up/down orientation, the rest follows

	-- resizers
	CHAIN(frame.ResizerBottomLeft) :ClearAllPoints() :SetPoint(UP_BOTTOMLEFT,-4,-4*UP)
	CHAIN(frame.ResizerBottomRight) :ClearAllPoints() :SetPoint(UP_BOTTOMRIGHT,4,-4*UP)
	CHAIN(frame.ResizerBottom) :ClearAllPoints() :SetPoint(UP_TOPLEFT,frame.ResizerBottomLeft,UP_TOPRIGHT) :SetPoint(UP_BOTTOMRIGHT,frame.ResizerBottomRight,UP_BOTTOMLEFT)

	ZGV:UpdateFrame(true)
end