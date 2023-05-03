local name,ZGV = ...
local ZygorGuidesViewer = ZGV
local L = ZGV.L

local CHAIN = ZGV.ChainCall

local UIFrameFadeOut,UIFrameFadeIn=ZGV.UIFrameFade.UIFrameFadeOut,ZGV.UIFrameFade.UIFrameFadeIn  -- prevent taint
local SkinData = ZGV.UI.SkinData

local tinsert=tinsert

-- GLOBAL DropDownForkList1,FindNearestFrame,ZGV_SetHeight,
-- GLOBAL BackFlatTemplate_Mixin,ZGV_DefaultSkin_DefaultStep_Mixin,ZGV_DefaultSkin_Frame_Mixin,ZGV_DefaultSkin_MenuButton_Mixin,ZGV_DefaultSkin_StepLine_Mixin,ZGV_DefaultSkin_StepLineClicker_Mixin,ZGV_DefaultSkin_TitleButton_Mixin,ZGV_ResizerMixin,ZygorGuidesViewerFrameMaster
-- GLOBAL CloseDropDownForks,EasyFork,UIDropDownFork_separatorInfo,UIDropDownFork_SetAnchor
-- GLOBAL ZygorGuidesViewerFrame_HideTooltip,ZygorGuidesViewerFrame_size,ZygorGuidesViewerMapIcon,ZygorGuidesViewerPointer_ArrowCtrl
-- GLOBAL ReloadUI


local round=math.round

local fromRGB_a = ZGV.F.fromRGB_a
local fromRGBA = ZGV.F.fromRGBA
local fromRGBmul_a = ZGV.F.fromRGBmul_a
local fromRGB = ZGV.F.fromRGB
local mix4=ZGV.F.mix4

local obscured

local LINES_PER_STEP = ZGV.CFG.LINES_PER_STEP

local LastUsedStep=0
local FrameSetUp = false

ZGV_DefaultSkin_Frame_Mixin = {}

function ZGV.GenericDragStartHandler(source,button)
	if not ZGV.db.profile["windowlocked"] then 
		if button=='LeftButton' then 
			ZygorGuidesViewerFrameMaster:StartMoving() 
			ZGV.framemoving=true 
		else 
			ZGV:SetOption("Display","resizeup") 
		end
	end
end

function ZGV.GenericDragStopHandler()
	ZygorGuidesViewerFrameMaster:StopMovingOrSizing() 
	ZGV:AlignFrame() 
	ZGV.framemoving=nil
end


ZGV_DefaultSkin_DefaultStep_Mixin = {}
--
	function ZGV_DefaultSkin_DefaultStep_Mixin:OnLoad()
		self:EnableMouse(true)
		self:RegisterForClicks("LeftButtonUp","RightButtonUp")
		
		self:CreateLines()

		self:ApplySkin()
	end

	function ZGV_DefaultSkin_DefaultStep_Mixin:ApplySkin()
		self:SetBackdrop(SkinData("StepBackdrop"))
		self:SetBackdropColor(unpack(SkinData("StepBackdropColor")))
		self:SetBackdropBorderColor(unpack(SkinData("StepBackdropBorderColor")))
		self.border:SetBackdrop(SkinData("StepBorderBackdrop"))

		self:ApplySkinToLines()
	end

	function ZGV_DefaultSkin_DefaultStep_Mixin:OnClick(self,button)
		if not self.step.isFocused then
			ZGV:SetStepFocus(self.step)
			return
		end

		if ZGV.CurrentStep==self.step or self.is_sticky or self.is_poi then
			for i=1,#self.lines do
				if MouseIsOver(self.lines[i].clicker) then self.lines[i].clicker:OnClick(button) end
			end
			return
		end


		if not ZGV.CurrentGuide.steps[self.stepnum]
		or not ZGV.CurrentGuide.steps[self.stepnum]:AreRequirementsMet() then return end
		if ZGV.db.profile.showcountsteps>0 then return end
		ZGV.pause = true
		ZGV:Debug("pausing in onclick")
		ZGV:FocusStep(self.stepnum,true)
	end

	function ZGV_DefaultSkin_DefaultStep_Mixin:OnEnter()
		if not self.step.isFocused then
			--ZGV:UpdateFrame(true)
		end

		--if not ZGV.db.profile.showbriefsteps then return end

		--[[
		GameTooltip:SetOwner(self,"ANCHOR_CURSOR")
		GameTooltip:ClearAllPoints()
		GameTooltip:ClearLines()
		GameTooltip:SetText(("Step %d. %s %s"):format(self.step.num, self.step:GetTitle() or "", self.step.level and ((" (level %s)"):format(self.step.level)) or ""))
		for i,goal in ipairs(self.step.goals) do
			GameTooltip:AddLine(goal:GetText(true,false))
		end
		GameTooltip:Show()
		GameTooltip:SetWidth(300)
		GameTooltip:Show()
		--]]

		--if self.step==ZGV.CurrentStep then

		--	ZGV.briefstepexpansionspeed = 5
		--	ZGV.briefstepexpansionspeedlines[self.num] = 5
			--ZGV.briefstepexpanded=self.step
		--end

		-- expansion moved to the onupdate handler
	end

	function ZGV_DefaultSkin_DefaultStep_Mixin:OnLeave()
		if not self or GameTooltip:GetOwner()==self then
			GameTooltip:Hide()
			--ZGV:Debug("HIDING in Step_OnLeave")
		end

		--[[
		if not ZGV.db.profile.showbriefsteps then return end

		ZGV.briefstepexpansionspeed = -5
		ZGV.briefstepexpansionspeedlines[self.num] = -5
		ZGV.briefstepexpanded=nil
		--]]

		--ZGV:UpdateFrame(true)
	end

	function ZGV_DefaultSkin_DefaultStep_Mixin:OnUpdate(elapsed)
		local clicker

		--[[
			for i=1,#self.lines do
				clicker=self.lines[i].clicker

				if clicker:IsVisible() then
					if clicker.over and not MouseIsOver(clicker) then
						if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==ZGV.Frame.Menu and ZGV.Frame.Menu.goalframe==self.lines[i] then
							-- umm.
						else
							clicker:SetAlpha(0.0)
							clicker:OnLeave()
							clicker.over=false
						end
					end
				end
			end

			if true or ZGV.CurrentStep==self.step then
				-- ugly! but first leave's, then enter's.

				for i=1,#self.lines do  if self.lines[i]:IsVisible() then

					local obscured = (GetMouseFocus()~=WorldFrame and GetMouseFocus()~=self)
					clicker=self.lines[i].clicker

					if IsMouseButtonDown("RightButton") and MouseIsOver(clicker) and not underAction then
						clicker:OnClick() --runs only if the click is a right click. ***Is possible for it to not work if click goes up and down without OnUpdate running***
					end

					if clicker:IsVisible() and MouseIsOver(clicker) and not clicker.over and not self.step:IsCurrentlySticky() then
						if not obscured or not underAction then
							clicker:OnEnter()
							clicker:SetAlpha(0.15)
							clicker.over=true
						end
					end
				end end
			end
		--]]
	end

	function ZGV_DefaultSkin_DefaultStep_Mixin:OnDragStart(button)
		if not ZGV.db.profile["windowlocked"] then 
			ZygorGuidesViewerFrameMaster:StartMoving() 
			ZGV.framemoving=true 
		end
	end
	function ZGV_DefaultSkin_DefaultStep_Mixin:OnDragStop()
		ZGV.GenericDragStopHandler()
	end

	function ZGV_DefaultSkin_DefaultStep_Mixin:CreateLines()
		self.lines = {}
		for i=1,LINES_PER_STEP do
			local line = CreateFrame("FRAME",nil,self,"ZGV_DefaultSkin_StepLine_Template")

			self.lines[i]=line
			self['line'..i]=line -- for debugging only!
			
			line.num = i
			line.parentStep = self

			line:ClearAllPoints()
			if i==1 then
				-- overridden in ApplySkinToLines anyway
				--line:SetPoint("TOPLEFT",step,ZGV.STEPMARGIN_X,-ZGV.STEPMARGIN_Y)
				--line:SetPoint("TOPRIGHT",step,-ZGV.STEPMARGIN_X,-ZGV.STEPMARGIN_Y)
			else
				line:SetPoint("TOPLEFT",self.lines[i-1],"BOTTOMLEFT",0,-SkinData("StepLineSpacing"))
				line:SetPoint("TOPRIGHT",self.lines[i-1],"BOTTOMRIGHT",0,-SkinData("StepLineSpacing"))
			end

		end
	end

	function ZGV_DefaultSkin_DefaultStep_Mixin:ApplySkinToLines()
		-- Lines/goals
		self.lines[1]:SetPoint("TOPLEFT",self,"TOPLEFT",SkinData("StepPaddingWidth"),-SkinData("StepPaddingTop"))
		self.lines[1]:SetPoint("TOPRIGHT",self,"TOPRIGHT",-SkinData("StepPaddingWidth"),-SkinData("StepPaddingTop"))
		for j,line in ipairs(self.lines) do
			line:ApplySkin()
		end
	end

	function ZGV_DefaultSkin_DefaultStep_Mixin:Render()
		--frame = _G['ZygorGuidesViewerFrame_Step'..stepframenum]
		local stepdata = self.step
		local profile=ZGV.db.profile

		local changed,dirty = stepdata:Translate()
		if dirty then
			ZGV.frameNeedsUpdating=true
		end
		if changed and not dirty then
			ZGV.do_showwaypoints_after_updateframe = true  -- kinda overkill, but works. Refresh all waypoints if something got translated.
		end

		local showbriefsteps = profile.showbriefsteps-- and self.db.profile.minimode

		--print(stepframenum,stepdata,stepdata and ZGV:IsStepFocused(stepdata))
		self:ShowClickersIfFocused()
		self:ShowBorderIfCurrent()
		self:Show()


		--[[
		if not self.stepchanged and not stepdata:NeedsUpdating() or (nomoredisplayed and not self:IsVisible()) then
			break --continue
		end
		--]]
		--print("Displaying step "..frame.stepnum)

		--#### position step frame
		--print("BXCGQW step width",self:GetWidth(),"line1 width",self.lines[1]:GetWidth(),debugstack)

		--self:SetWidth(showallsteps and ZGV.Frame.Controls.Child:GetWidth() or ZGV.Frame.Controls.Scroll:GetWidth()) -- this is needed so the text lines below can access proper widths
		self:SetWidth(ZGV.Frame.Controls.StepContainer:GetWidth()) -- this is needed so the text lines below can access proper widths

		-- out of screen space? bail.
		-- but only in all steps mode!
		--[[
		local top=self:GetTop()
		local bottom=Scroll:GetBottom()
		if showallsteps and top and bottom and top<bottom then
			self:Hide()
			nomoredisplayed=true
			break --continue!
		end
		--]]

		--#### fill step frame with text and data, show lines as needed


		self:HideLines()

		local lineframe

		-- header?:
			local did_header
			local numbertext = profile.stepnumbers and L['step_num']:format(stepdata.stepnum)
			local leveltext = (stepdata.level and stepdata.level>0 and profile.stepnumbers) and L['step_level']:format(stepdata.level or "?")
			local reqtext = stepdata.requirement and (stepdata:AreRequirementsMet() and "|cff44aa44" or "|cffbb0000") .. L["stepreq"]:format((table.concat(stepdata.requirement,L["stepreqor"])):gsub("!([a-zA-Z ]+)",L["stepreqnot"]:format("%1")))
			local titletext -- = stepdata:GetTitle()  titletext=titletext and " "..titletext
			local betatext = (ZGV.CurrentGuide.beta or stepdata.beta) and L['stepbeta']
			local devtext = (ZGV.CurrentGuide.devonly or stepdata.dev) and L['stepdev']
			local prereqtext = ZGV.QuestDB.GetStepTag and ZGV.QuestDB:GetStepTag(stepdata)

			if (numbertext or leveltext or reqtext or titletext or betatext or prereqtext or devtext) then
				lineframe = self:NextLine()
				lineframe:ShowAsHeader((numbertext or "")..(leveltext or "")..(reqtext or "")..(titletext or "")..(betatext or "")..(prereqtext or "")..(devtext or ""))
			end
		--

		--#### insert goals

		local goals = stepdata.goals

		---------------------- STICKIES INLINE ----------------------
		-- does a sticky live in here?
		-- DISABLED for now. profile.stickydisplay is now only 3 or 4. No inline stickies.
		--[=[
			if profile.stickyon and profile.stickydisplay<3 then
				local stickies = self:GetStickiesAt(stepnum)
				for _,sticky in ipairs(stickies) do
					-- we have a sticky!!
					--print("sticky",sticky.step.label)

					local complete,possible = sticky.step:IsComplete()

					if not complete or stepdata:IsComplete() then
						-- method one (only one so far)
						if not goals then 
							goals=goals_temp
							wipe(goals)
							ZGV.MergeTable(stepdata.goals,goals)
						end

						ZGV.MergeTable(sticky.step.goals,goals)
					end
				end
			end
		--]=]


		local canhidetravel=false
		if not profile.showinlinetravel or self.is_sticky then for i,goal in ipairs(goals) do if not goal:IsInlineTravel() then canhidetravel=true break end end end


		local hadstickies
		for i,goal in ipairs(goals) do

			if full then goal.dirtytext = true end

			-- STICKIES inline-ish

			-- DISABLED for now. profile.stickydisplay is now only 3 or 4. No inline stickies.
			--[=[
				if (profile.stickyon and profile.showcountsteps==1) and goal.parentStep.is_sticky and goal.parentStep~=ZGV.CurrentStep and (profile.stickydisplay==1 or profile.stickydisplay==2) then
					if hadstickies~=goal.parentStep then
						--lineframe.label:SetFont(FONT,round(profile.fontsecsize or profile.fontsize + (self.CurrentSkinStyle.StepFontSizeMod or 0))) -- TODO skindata() friendly?
						line=line+1  lineframe=frame.lines[line]
						lineobj=lineframe
						if profile.stickydisplay==1 then
							lineobj.label:SetText("")
						elseif profile.stickydisplay==2 then
							lineobj.label:SetFont(FONT,round(profile.fontsecsize))
							lineobj.label:SetText("- also -")
							lineobj.indent=0
						end
						lineobj:SetHeight(2)
						lineobj.back:SetBackdropColor(1,1,1,1)
						lineobj.briefhidden = showbriefsteps
						lineobj.goal=nil
						lineobj.special="stickyseparator"
						hadstickies=goal.parentStep
						--lineframe.label:SetMultilineIndent(1)
					end
				end
			--]=]

			local status = goal:GetStatus()

			if status=="hidden" and not profile.showwrongsteps then
				-- don't display the line, simple
			elseif canhidetravel and goal:IsInlineTravel() then
				-- don't display inline travel if it's to be hidden

			--elseif goal.parentStep and goal.parentStep.is_sticky and goal.action=="goto" and not profile.stickygoto then
			--	-- hide gotos in stickies, when so configured

			--elseif goal:IsInlineTravel() and not goal.force_walk and LibRover:CanFlyAt(goal.map) then
			--	-- skip travel lines player can just fly over.

			elseif profile.collapsecompleted and goal:CanBeIndentHidden() and not stepdata:IsComplete() then
				-- collapse the line, if completed children say so

			else
				local briefhidden = showbriefsteps
					and (
						not goal:IsCompleteable()
						or (profile.hidecompletedinbrief and status=="complete" and not stepdata:IsComplete())
					)
					and not goal.showinbrief
				--steptext = steptext .. ("  "):rep(goal.indent or 0) .. goal:GetText() .. "|n"
				local indent = ("  "):rep(showbriefsteps and 0 or (goal.indent or 0))
				--local goaltxt = goal:GetText(stepnum>=self.CurrentStepNum)
				--local goaltxt = goal:GetText(true,profile.showbriefsteps and (self.briefstepexpansion<=0.1 --[[or stepdata~=self.briefstepexpanded--]]))
				local goaltxt = goal:GetText(true,showbriefsteps and ((self.briefstepexpansionlines[self.num] or 0)<=0.1 --[[or stepdata~=self.briefstepexpanded--]]))
				if profile.showwrongsteps and status=="hidden" then goaltxt = "|cff880000[*BAD*]|r "..goaltxt end

				if goaltxt~="?" and goaltxt~="" then
					lineframe = self:NextLine()
					--local link = ((goal.tooltip and not profile.tooltipsbelow) or (goal.x and not profile.windowlocked)) and " |cffdd44ff*|r" or ""  -- goto asterisk
					--if stepdata:IsCurrentlySticky() then link="" end
					if not goal or not goal.action then error("invalid goal") end
					lineframe:ShowAsGoal(goal,indent..goaltxt,briefhidden)
					--lineframe.label:SetMultilineIndent(1)
				end

				if (goaltxt=="?" or profile.tooltipsbelow) and goal.tooltip then
					lineframe = self:NextLine()
					lineframe:ShowAsGoalTip(goal,indent.."|cffeeeecc".. goal.tooltip.."|r")
				end
				if goal.loadguideZZZZ then
					lineframe = self:NextLine()
					lineframe.label:SetFont(FONT,round(profile.fontsecsize))
					local guide = goal.loadguide:match("\\([^\\]+)$")
					if guide then
						local g,step = guide:match("(.*)::(%d+)")
						if g then guide=g end
						lineframe:SetText(indent.."|cffeeeecc".. guide .."|r")
						--lineframe.label:SetMultilineIndent(1)
						lineframe.goal = goal
						--lineframe.special = (goal.parentStep.is_sticky and goal.parentStep~=ZGV.CurrentStep and "stickyline")
					end
				end
				if ZGV.Sync and goal:IsCompleteable() and ZGV.Sync:IsEnabled() and profile.share_showparty then
					local partystatus,color=ZGV.Sync:GetStepGoalPartyStatusText(goal.parentStep.num,goal.num)
					if partystatus then
						lineframe = self:NextLine()
						lineframe:ShowAsSecText(indent..partystatus)
						if color then lineframe:SetBackColor(ZGV.F.HTMLColor(color)) end
					end
				end
			end
		end

		-- add synced party members' step numbers at the last line
		if ZGV.Sync and stepdata==ZGV.CurrentStep and ZGV.Sync:IsEnabled() and profile.share_showparty then
			local aheadbehind = ZGV.Sync:GetAheadBehind()
			if aheadbehind then
				lineframe = self:NextLine()
				lineframe:ShowAsSecText(aheadbehind)
			end
		end

		-- ALL collapsed? come on...
		if showbriefsteps then
			local all_collapsed=true
			for l=1,self.lines_shown do
				if not self.lines[l].briefhidden then
					all_collapsed=false
					break
				end
			end
			if all_collapsed then
				lineframe = self:NextLine()
				lineframe:ShowAsSecText("|cffaaaaaa"..L['stepcollapsed'].."|r")
				lineframe.briefhidden = false
				lineframe.special = "allcollapsed"
			end
		end

		--[[ show all is off ~~sinus 2020-10-16
			if showallsteps and TMP_TRUNCATE then
				if stepframenum>1 then
					local stepbottom = self.stepframes[stepframenum-1]:GetBottom()
					local scrollbottom = Scroll:GetBottom()
					if stepbottom and scrollbottom then
						heightleft = stepbottom-scrollbottom - 2*SkinData("StepLineMarginY") - 5
					else
						heightleft = 0
						--self:Debug("Error in step height calculation! step "..stepframenum.." stepbottom="..tostring(stepbottom).." scrollbottom="..tostring(scrollbottom)..", forcing update")
						self.frameNeedsUpdating=true
					end
				end

				if heightleft<self.MIN_STEP_HEIGHT then
					frame:Hide()
					nomoredisplayed=true
					break --continue
				end
			end
		--]]

		--[[
			if height<self.MIN_STEP_HEIGHT then
				frame.lines[1]:SetPoint("TOPLEFT",frame,ZGV.STEPMARGIN_X,-4)
				frame.lines[1]:SetPoint("TOPRIGHT",frame,-ZGV.STEPMARGIN_X,-4)
				height=self.MIN_STEP_HEIGHT
			else
				frame.lines[1]:SetPoint("TOPLEFT",frame,ZGV.STEPMARGIN_X,-4)
				frame.lines[1]:SetPoint("TOPRIGHT",frame,-ZGV.STEPMARGIN_X,-4)
			end
			-- how about NO special cases
		--]]

		--self:Debug("step "..stepframenum.." height "..height)
		--end

		--[[
			if profile.showallsteps and totalheight>ZygorGuidesViewerFrameScroll:GetHeight() then
				nomoredisplayed=true
				frame:Hide()
				break --continue
			end
		--]]


		--[[
			if frame.is_sticky and profile.stickydisplay==3 then
				frame:SetBackdropBorderColor(sr,sg,sb,1)
			else
				frame:SetBackdropBorderColor(0,0,0,1)
			end
		--]]


		--[=[
			if showallsteps then
				if stepdata.num<self.CurrentStepNum then
					frame:SetAlpha(0.3)
				elseif stepdata.num==self.CurrentStepNum then
					frame:SetAlpha(1.0)
				else
					frame:SetAlpha(0.8)
				end
			else
				if true --[[ don't mess with step alpha anymore, as of 2020-09-29 --]] then
					frame:SetAlpha(1.0)
				elseif stepdata==focusedstep or (ZGV.CurrentStep==focusedstep and frame.is_sticky) then -- focused step or it's sticky
					if stepframenum==1 or frame.is_sticky then
						frame:SetAlpha(1.0)
					else
						frame:SetAlpha(0.8-0.4*((stepframenum-1)/(profile.showcountsteps-1)))
					end
				elseif MouseIsOver(frame) then
					frame:SetAlpha(0.65)
				else
					frame:SetAlpha(0.3)
				end
			end
		--]=]

		--[[
			if stepnum==self.CurrentStepNum then
				--frame:EnableMouse(0)
				--frame:SetScript("OnClick",nil)
			else
				--frame:EnableMouse(1)
			end
		--]]

		--[[
			if stepnum==self.CurrentStepNum then
				frame:SetBackdrop({ edgeFile = ZGV.DIR.."\\Skins\\default\\midnight\\border", edgeSize = 12,  })
			else
				frame:SetBackdrop({ edgeFile = ZGV.DIR.."\\Skins\\default\\midnight\\border", edgeSize = 12 })
			end
		--]]


		self:SetBackgroundForStep()
		self:AdjustHeight()

	end
	
	function ZGV_DefaultSkin_DefaultStep_Mixin:HideLines()
		for j,line in ipairs(self.lines) do
			line:Hide()
			line.goal=nil
			line.tipgoal=nil
		end
		self.lines_shown=0
	end
	function ZGV_DefaultSkin_DefaultStep_Mixin:NextLine()
		self.lines_shown=self.lines_shown+1
		local lineframe = self.lines[self.lines_shown]
		lineframe:Show()
		lineframe:SetTextIndent()
		return lineframe
	end
	
	function ZGV_DefaultSkin_DefaultStep_Mixin:AdjustHeight()
		local linesheight = 0
		for j,line in ipairs(self.lines) do if line:IsShown() then
			line:AdjustHeight()
			linesheight = linesheight + line:GetHeight()
			if j>1 then linesheight = linesheight + SkinData("StepLineSpacing") end
		end end
		if true then    -- not frame.truncated or not TMP_TRUNCATE
			self:SetHeight(linesheight + SkinData("StepPaddingTop") + SkinData("StepPaddingBottom"))
		else --legacy
			self:SetHeight(heightleft + 2 * SkinData("StepPaddingTop"))
		end
	end

	function ZGV_DefaultSkin_DefaultStep_Mixin:ShowClickersIfFocused()
		local focused = self.step and ZGV:IsStepFocused(self.step)
		for j,line in ipairs(self.lines) do line.clicker:SetShown(focused) end
	end
	
	function ZGV_DefaultSkin_DefaultStep_Mixin:ShowBorderIfCurrent()
		self.border:SetShown(self.step==ZGV.CurrentStep and ZGV.db.profile.showallsteps)
	end

	--[[
			-- STICKY COLORS
			local sr,sg,sb,sa = 0.4,0.4,0.4,0.5
			sa = sa * profile.opacitymain
	]]
	function ZGV_DefaultSkin_DefaultStep_Mixin:SetBackgroundForStep()
		local profile = ZGV.db.profile
		local stepdata = self.step
		profile.stepbackalpha=1.0 * profile.opacitymain * profile.opacitymain  -- twice, to make it more transparent, as it's overlaid on normal window background anyway.
		if stepdata:AreRequirementsMet() then
			if stepdata:IsComplete() and ZGV.Sync and ZGV.Sync:IsClearToProceed() then
				self:SetBackdropColor(fromRGBmul_a(profile.goalbackcomplete,0.5,profile.stepbackalpha))
				if (not SkinData("StepBackdropPersistentBorder")) then
					self:SetBackdropBorderColor(fromRGBmul_a(profile.goalbackcomplete,0.5,profile.stepbackalpha))
				end
				--self:SetBackdropColor(0,0.7,0,0.5)
			elseif (profile.skipobsolete and stepdata:IsObsolete()) then
				self:SetBackdropColor(fromRGBmul_a(profile.goalbackobsolete,0.5,profile.stepbackalpha))
				if (not SkinData("StepBackdropPersistentBorder")) then
					self:SetBackdropBorderColor(fromRGBmul_a(profile.goalbackobsolete,0.5,profile.stepbackalpha))
				end
			elseif (profile.skipauxsteps and stepdata:IsAuxiliarySkippable()) then
				self:SetBackdropColor(fromRGBmul_a(profile.goalbackaux,0.5,profile.stepbackalpha))
				if (not SkinData("StepBackdropPersistentBorder")) then
					self:SetBackdropBorderColor(fromRGBmul_a(profile.goalbackaux,0.5,profile.stepbackalpha))
				end
			else
				local r,g,b = unpack(SkinData("StepBackdropColor") or {0,0,0})
				self:SetBackdropColor(r,g,b,profile.stepbackalpha)
				if (not SkinData("StepBackdropPersistentBorder")) then
					self:SetBackdropBorderColor(0,0,0,profile.stepbackalpha)
				end
			end
		else
			self:SetBackdropColor(0.5,0.0,0.0,profile.stepbackalpha)
			if (not SkinData("StepBackdropPersistentBorder")) then
				self:SetBackdropBorderColor(0.5,0.0,0.0,profile.stepbackalpha)
			end
		end

		--[[
			if not profile.showstepborders then
				self:SetBackdropColor(0,0,0,0)
				self:SetBackdropBorderColor(0,0,0,0)
			end
		--]]
	end
--

ZGV_DefaultSkin_StepLine_Mixin = {}
--
	function ZGV_DefaultSkin_StepLine_Mixin:OnLoad()
		self.label = self.content.label
		self.icon = self.content.icon

		--label:SetMultilineIndent(true)

		self.clicker.parentLine = self
		--clicker.num = i
		--clicker:RegisterForClicks("LeftButtonUp","RightButtonUp")

		self.anim_fade = self.back.Fade

		self:ApplySkin()
	end

	function ZGV_DefaultSkin_StepLine_Mixin:ApplySkin()
		self:SetHeight(22)

		self.clicker:SetBackdrop(SkinData("StepLineClickerBackdrop"))
		
		self.back:SetBackdrop(SkinData("StepLineBackBackdrop"))
		self.back:SetColor(unpack(SkinData("StepLineBackBackdropColor")))
		
		CHAIN(self.content)
			:ClearAllPoints()
			:SetPoint("BOTTOMLEFT",SkinData("StepLinePaddingWidth"),SkinData("StepLinePaddingHeight"))
			:SetPoint("TOPRIGHT",-SkinData("StepLinePaddingWidth"),-SkinData("StepLinePaddingHeight"))

		local iconsize=SkinData("StepLineIconSize") * ZGV.db.profile.fontsize
		ZGV.ChainCall(self.icon)
			:ClearAllPoints()
			:SetPoint("TOPLEFT",self.content,"TOPLEFT")
			:SetTexture(ZGV.SKINSDIR.."icons")
			:SetSize(iconsize,iconsize)
		self:SetIcon(1)

		ZGV.ChainCall(self.label)
			:ClearAllPoints()
			:SetPoint("TOPLEFT",self.icon,"TOPRIGHT",SkinData("StepLineIconMarginRight"),0)
			:SetPoint("TOPRIGHT",self.content,"TOPRIGHT",0,0)
	end

	function ZGV_DefaultSkin_StepLine_Mixin:SetText(text)
		self.label:SetHeight(300)
		self.label:SetText(text)
		self.label:SetHeight(self.label:GetStringHeight())
		--if text:find("globs") then print("BCHJDRY",self.label:GetStringHeight()) end
	end

	function ZGV_DefaultSkin_StepLine_Mixin:SetIcon(n,desaturated)
		if n==false then self.icon:Hide() return end
		local iconcount=ZGV.IconSets.StepLineIcons.cols

		self.icon:SetTexture(SkinData("StepLineIcons"))
		self.icon:SetTexCoord((n-1)/iconcount,n/iconcount,0,1)
		self.icon:SetDesaturated(not not desaturated)
		self.icon:Show()
	end

	function ZGV_DefaultSkin_StepLine_Mixin:SetIconTexture(tex)
		self.icon:SetTexture(tex)
		self.icon:SetTexCoord(0,1,0,1)
		self.icon:Show()
	end

	function ZGV_DefaultSkin_StepLine_Mixin:SetBackColor(r,g,b,a)
		self.br,self.bg,self.bb,self.ba = r,g,b,a
		--local h=self.backhighlight or 0
		--self.back:SetColor(r+(1-r)*h,g+(1-g)*h,b+(1-b)*h,a)
		self.back:SetColor(r,g,b,a)
		self.back:SetColor(r,g,b,a)
	end

	function ZGV_DefaultSkin_StepLine_Mixin:PlayFadeAnim(sr,sg,sb,sa,r,g,b,a)
		local af=self.anim_fade
		af.sr, af.sg, af.sb, af.sa = sr,sg,sb,sa
		af.r, af.g, af.b, af.a = r,g,b,a
		af:Play()
	end

	function ZGV_DefaultSkin_StepLine_Mixin:SetFadeAnimRGBA(r,g,b,a)
		local af=self.anim_fade
		af.r,af.g,af.b,af.a = r,g,b,a
		if af:IsDone() or not af:IsPlaying() then
			local oldr,oldg,oldb,olda = self.back:GetBackdropColor()
			if abs(oldr-r)>0.01 or abs(oldg-g)>0.01 or abs(oldb-b)>0.01 or abs(olda-a)>0.01 then
				self:SetBackColor(r,g,b,a)
				ZGV:Debug("&greenlines %d not playing, changing %s%d,%d,%d|r to %s%d,%d,%d",self.goal.num,ZGV.ArrayToStringColor({oldr,oldg,oldb,olda}),oldr*255,oldg*255,oldb*255,ZGV.ArrayToStringColor({r,g,b,a}),r*255,g*255,b*255)
			end
		else -- still playing
			-- just let it do its thing with the new .r,.g,.b,.a values.
		end
	end

	function ZGV_DefaultSkin_StepLine_Mixin:HideBack()
		local af=self.anim_fade
		af.sr, af.sg, af.sb, af.sa = 0,0,0,0
		af:Stop()
		self:SetBackColor(0,0,0,0)
	end
	
	-- STICKY COLORS
	local sr,sg,sb,sa = 0.4,0.4,0.4,0.5
	function ZGV_DefaultSkin_StepLine_Mixin:ShowAsStickySeparator(sr,sg,sb)  -- used only in inline sticky mode, thus unused
		self.icon:Hide()
		self:SetBackColor(sr,sg,sb,1)
	end
	function ZGV_DefaultSkin_StepLine_Mixin:ShowAsStickyLine(sr,sg,sb)  -- used only in inline sticky mode, thus unused
		self.icon:Hide()
		self:SetBackColor(sr,sg,sb,sa * ZGV.db.profile.opacitymain)
	end
	function ZGV_DefaultSkin_StepLine_Mixin:ShowAsSubtitle()
		self.icon:Hide()
		self:SetBackColor(0,0,0,1)
	end
	function ZGV_DefaultSkin_StepLine_Mixin:SetBackHighlight(highlight)  -- better, but unused
		self.backhighlight = highlight
		self:SetBackColor(self.br,self.bg,self.bb,self.ba)
	end
	function ZGV_DefaultSkin_StepLine_Mixin:AddHighlightToBack()
		local h=0.1
		self.back:SetColor(self.br+(1-self.br)*h,self.bg+(1-self.bg)*h,self.bb+(1-self.bb)*h,self.ba)
	end
	function ZGV_DefaultSkin_StepLine_Mixin:SetTextIndent()
		local icon_indent = ZGV.db.profile.goalicons and SkinData("IconIndent") or 0
		--self.label:SetPoint("TOPLEFT",self.isheader and 0 or icon_indent+2,(self.num==1 and -2 or -1))
	end
	function ZGV_DefaultSkin_StepLine_Mixin:ShowAsHeader(text)
		self:SetText(text)
		--self.label:SetMultilineIndent(1)
		self.goal = nil
		self.label:SetFont(ZGV.Font,round(ZGV.db.profile.fontsecsize))
		self.icon:Hide()
		-- TODO how about we let skin decide?
		self:SetBackColor(0,0,0,0.3*ZGV.db.profile.opacitymain)
		self.isheader=true
		self:SetTextIndent()
	end
	function ZGV_DefaultSkin_StepLine_Mixin:ShowAsGoal(goal,text,briefhidden)
		self.goal=goal
		self.isheader = nil
		self.tipgoal = nil
		self.back:Hide()
		self.label:SetFont(ZGV.Font,round(goal.action~="info" and ZGV.db.profile.fontsize + (SkinData("StepFontSizeMod") or 0) or ZGV.db.profile.fontsecsize)) -- TODO skindata() friendly?
		self:SetText(text)
		self.briefhidden = briefhidden
		self.special = (goal.parentStep and goal.parentStep.is_sticky and goal.parentStep~=ZGV.CurrentStep and "stickyline")

		self:ShowGoalIcon()
		self:ShowGoalBackground()
	end

	local action_is_poi = {poi_treasure=1, poi_rare=1, poi_questobjective=1, poiannounce=1, poiaccess=1, poicurrency=1}
	function ZGV_DefaultSkin_StepLine_Mixin:ShowGoalIcon()
		local goal=self.goal
		local label=self.label
		local status,done,needed = goal:GetStatus()
		if ZGV.db.profile.goalicons then
			--label:SetPoint("TOPLEFT",self.icon,"TOPRIGHT",SkinData("StepLineIconMarginRight"),0)

			if goal.next or goal.loadguide then
				self:SetIcon(ZGV.actionicons['next'])
			elseif goal.action=="achieve" and goal.achieveid then
				self:SetIconTexture(goal.achieveicon)
			elseif action_is_poi[goal.action] then
				self:SetIcon(ZGV.actionicons[goal.action])
			elseif status=="passive" then

				if goal.action=="talk" or goal.action=="from" or goal.action=="goto" or
				goal.action=="goldcollect" or goal.action=="goldtracker" or (goal.action=="image" and not goal.inline) then
					self:SetIcon(ZGV.actionicons[goal.action])
				elseif (goal.action=="image" and goal.inline) then
					self:SetIcon(0)
				else
					self:SetIcon(1)
				end

			elseif status=="incomplete" then

				self:SetIcon(ZGV.actionicons[goal.action])

			elseif status=="complete" then

				self:SetIcon(3)

			elseif status=="impossible" then

				self:SetIcon(ZGV.actionicons[goal.action],"desaturated")

			elseif status=="obsolete" then

				--icon:SetIcon(ZGV.actionicons[goal.action])
				--icon:SetDesaturated(false)
				self:SetIcon(ZGV.actionicons[goal.action],"desaturated")

			else	-- maybe hidden, maybe WTF
				self:SetIcon(1)
			end
		else
			self:SetIcon(false)
			--label:SetPoint("TOPLEFT",SkinData("StepLineIconOffset"),-1)
		end
	end

	function ZGV_DefaultSkin_StepLine_Mixin:ShowGoalBackground()
		local goal=self.goal
		local status,done,needed = goal:GetStatus()
		local progress = (done or 0)/(needed or 1)

		if ZGV.db.profile.goalbackgrounds then

			self.back:Show()

			-- COLORS

			local r,g,b,a=0,0,0,0

			local profile = ZGV.db.profile

			if status=="passive" then
				--if line.special=="stickyline" then
				--	r,g,b,a = 0.2,0.15,0,1
				--else
					r,g,b,a = 0,0,0,0
				--end
				--[[
				if self.db.profile.highlight_goto and goal.x and ZGV.Pointer.DestinationWaypoint and ZGV.Pointer.DestinationWaypoint.goal==goal then
					r,g,b,a = 1,1,1,0.1
				end
				--]]

			elseif status=="incomplete" then

				local inc=profile.goalbackincomplete
				local pro=profile.goalbackprogressing
				local com=profile.goalbackcomplete
				r,g,b = ZGV.gradient3(profile.goalbackprogress and progress*0.7 or 0,  inc.r,inc.g,inc.b, pro.r,pro.g,pro.b, com.r,com.g,com.b, 0.5)
				a = profile.goalbackincomplete.a

				--local r,g,b,a = gradientRGBA(profile.goalbackincomplete,profile.goalbackcomplete,profile.goalbackprogress and progress*0.7 or 0)

			elseif status=="complete" then

				r,g,b,a = fromRGBA(profile.goalbackcomplete)

			elseif status=="impossible" then

				r,g,b,a = fromRGBA(profile.goalbackimpossible)


			elseif status=="warning" then

				r,g,b,a = fromRGBA(profile.goalbackwarning)
			end

			-- FLASHES

			local needsAnimating = ZGV.goalsneedanimating[goal]

			a = a * profile.opacitymain

			if (goal.action~="goto" and goal.action~="fly") and profile.goalupdateflash and needsAnimating and ZGV.frameNeedsResizing==0 then

				if self.special=="stickyline" then  r,g,b,a=mix4(sr,sg,sb,sa, r,g,b,0.3)  end

				goal.needsAnimating=nil

				self:PlayFadeAnim(1,1,1,1,r,g,b,a)
				ZGV.goalsneedanimating[goal]=nil
				--ZGV:Debug("Animating progress: %s",goal:GetText())

				-- ZGV.completionelapsed = 0  -- experimental delay

			elseif status=="complete" and needsAnimating and profile.goalcompletionflash and ZGV.frameNeedsResizing==0 then

				local c=profile.goalbackcomplete
				self:PlayFadeAnim(1,1,1,1,c.r,c.g,c.b,c.a)
				ZGV.goalsneedanimating[goal]=nil
				--ZGV:Debug("Animating completion.")

				-- ZGV.completionelapsed = 0  -- experimental delay
			end

			if self.special=="stickyline" and profile.stickycolored then  r,g,b,a=mix4(sr,sg,sb,sa, r,g,b,a*0.5)  end
			self:SetFadeAnimRGBA(r,g,b,a)

			if ZGV.db.profile.highlight_goto and self.step and ZGV:IsStepFocused(self.step) and goal and goal.num==self.step.current_waypoint_goal_num then
				self:AddHighlightToBack()
			end

		else
			self:HideBack()
		end

		if status=="impossible" then
			self:SetAlpha(0.4)
		else
			self:SetAlpha(1.0)
		end
	end

	function ZGV_DefaultSkin_StepLine_Mixin:ShowAsGoalTip(goal,text)
		self:SetAlpha(1)
		self:Show()
		self.label:SetFont(ZGV.Font,round(ZGV.db.profile.fontsecsize))
		self:SetText(text)
		self:SetIcon(false)
		self:HideBack()
		--self.label:SetMultilineIndent(1)
		self.goal = nil
		self.tipgoal = goal
		self.briefhidden = true
		self.special = (goal.parentStep.is_sticky and goal.parentStep~=ZGV.CurrentStep and "stickyline")
	end
	function ZGV_DefaultSkin_StepLine_Mixin:ShowAsPriText(text)  --unused
		self:Show()
		self.label:SetFont(ZGV.Font,ZGV.db.profile.fontsize)
		self:SetText(text)
		self:SetIcon(false)
		self:HideBack()
		self.goal = nil
		self.tipgoal = nil
	end
	function ZGV_DefaultSkin_StepLine_Mixin:ShowAsSecText(text)
		self:SetAlpha(1)
		self:Show()
		self.label:SetFont(ZGV.Font,round(ZGV.db.profile.fontsecsize))
		self:SetText(text)
		self:SetIcon(false)
		self:HideBack()
		self.goal=nil
		self.tipgoal = nil
		self.briefhidden = true
	end
	function ZGV_DefaultSkin_StepLine_Mixin:AdjustHeight()
		--local icon_indent = ZGV.db.profile.goalicons and SkinData("IconIndent") or 0
		
		-- WHY do we need a workaround like that!?  Stupid frames get a width of 0 because of an OnSizeChanged call out of nowhere
		local max_text_width = self.parentStep:GetWidth() - 2 * SkinData("StepPaddingWidth") - 2 * SkinData("StepLinePaddingWidth") - self.icon:GetWidth() - SkinData("StepLineIconMarginRight")
		if max_text_width<0 then max_text_width=max_text_width+ZGV.Frame.Controls.StepContainer:GetWidth() end  -- BFA 8.0.1.26530 bug: step's frame has a width of 0 here...
		self.label:SetSize(max_text_width,300)
		
		--if self.label:GetText():find("yellow globs") then print(("line:%d text:%d %d %d"):format(self:GetWidth(),self.label:GetWidth(),self.label:GetHeight(),self.label:GetStringHeight(),0)) end
		local lineheight = self.label:GetStringHeight()
		self.label:SetHeight(lineheight+10)

		--print("QWEQWEWB",self.num,self.label:GetWidth(),textheight)
		--if text:IsTruncated() then textheight=textheight+self.db.profile.fontsize+6 end
		lineheight = lineheight + 2 * SkinData("StepLinePaddingHeight")

		if self.special=="stickyseparator" then  --deprecated
			if ZGV.db.profile.stickydisplay==1 then
				lineheight=2
			elseif ZGV.db.profile.stickydisplay==2 then
				--self.label:SetText("- also -")
				--lineheight = textheight + STEP_LINE_SPACING
			end
		end

		--[=[ brief steps
			if false and self.briefhidden and showbriefsteps --[[and stepdata==self.CurrentStep--]] then
				--lineheight = lineheight * self.briefstepexpansion
				lineheight = lineheight * (self.briefstepexpansionlines[stepframenum] or 0)

				--self:SetAlpha(self.briefstepexpansion)
				self:SetAlpha(self.briefstepexpansionlines[stepframenum] or 0)
				self.label:SetAlpha(self.briefstepexpansionlines[stepframenum] or 0)
				self.icon:SetAlpha(self.briefstepexpansionlines[stepframenum] or 0)
			else
				self:SetAlpha(1)
				self.label:SetAlpha(1)
				self.icon:SetAlpha(1)
			end
		--]=]

		--text:SetWidth(ZygorGuidesViewerFrameScroll:GetWidth()-30)

		--[[ showallsteps is off ~~sinus 2020-10-16 
			if false and TMP_TRUNCATE and showallsteps and height>heightleft then
				self.goal=nil
				if l<=2 then
					abort=true
					break
				else
					frame.truncated=true
					frame.lines[l-1].label:SetText("   . . .")
					frame.lines[l-1].goal=nil
					self:Hide()
					height=height-lineheight
				end
			else
				self:Show()
				--if self.goal then frame.goallines[self.goal.num]=self end
			end
		--]]

		self:SetHeight(lineheight)
	end
	
--

ZGV_DefaultSkin_StepLineClicker_Mixin = {}
--
	function ZGV_DefaultSkin_StepLineClicker_Mixin:OnEnter()
		if not self.parentLine.parentStep.is_sticky then self:SetAlpha(0.15) end
		ZGV:GoalOnEnter(self.parentLine)
	end

	function ZGV_DefaultSkin_StepLineClicker_Mixin:OnLeave()
		if not self.parentLine.parentStep.is_sticky
		--and not (DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==ZGV.Frame.Menu and ZGV.Frame.Menu.goalframe==self.parentLine)
		then
			self:SetAlpha(0.0)
		end
		ZGV:GoalOnLeave(self.parentLine)
	end

	function ZGV_DefaultSkin_StepLineClicker_Mixin:OnClick(button)
		ZGV:GoalOnClick(self.parentLine,button)
	end

	function ZGV_DefaultSkin_StepLineClicker_Mixin:OnUpdate(elapsed)
		do return end
		--ZGV:Debug(self:GetName())
		if self:IsMouseOver() then
			if self.wasDressUp~=IsModifiedClick("DRESSUP") then
				self.wasDressUp=IsModifiedClick("DRESSUP")
				self:OnEnter()
				return
			end
			if self.wasCompare~=IsModifiedClick("COMPAREITEMS") then
				self.wasCompare=IsModifiedClick("COMPAREITEMS")
				self:OnEnter()
				return
			end
		end
	end

	function ZGV_DefaultSkin_StepLineClicker_Mixin:OnLoad()
		if self.SetBackdrop then self:OnBackdropLoaded() end
		self:EnableMouse(true)
		self:RegisterForClicks("LeftButtonUp","RightButtonUp")
	end

--

--function ZGV_DefaultSkin_Frame_Mixin:SearchButton_OnClick(button)
--	ZGV.WhoWhere:ShowFindNearest()
--end
--function ZGV_DefaultSkin_Frame_Mixin:SearchButton_OnEnter(button)
--	ZGV.WhoWhere:OnEnter()
--end


local ZGVF
local Border
local TitleBar

local function CreateProgressBar(frame)
	local ProgressBar = ZGV.UI:Create("ProgressBar",frame)

	function ProgressBar:Update()
		local current_guide = ZGV.CurrentGuide
		local mode = ZGV.db.profile.progressbarmode or "steps"

		if not current_guide or not current_guide.CurrentStepNum or not ZGV.db.profile.progress then 
			ProgressBar:SetPercent(0)
			return 
		end

		-- progress
		local percent,num,total = current_guide:GetCompletion(mode)

		-- color
		local r,g,b,a
		if mode == "quests" then
			r,g,b,a = 0.7,0.7,0.7,1
		else -- steps
			r,g,b,a =  1,1,1,1
		end

		-- text and tooltip
		local tooltiptext = L['frame_guide_'..mode..'completed']:format(num,total)
		local maintext = (percent==1) and L['frame_guide_complete'] or L['frame_guide_progress']:format(floor(percent*100))

		--ProgressBar:SetColor(r,g,b,a)
		ProgressBar:SetPercent(percent*100)
		ProgressBar:SetText(maintext)
		ProgressBar:SetTooltip(tooltiptext)
	end

	local function ProgressBar_OnClick()
		if ZGV.db.profile.progressbarmode == "quests" then
			ZGV.db.profile.progressbarmode = "steps"
		else
			ZGV.db.profile.progressbarmode = "quests"
		end

		ProgressBar:Update()
		ProgressBar:GetScript("OnEnter")(ProgressBar)
	end
	ProgressBar:SetScript("OnClick",function(self) ProgressBar_OnClick(self) end)

	frame.ProgressBar = ProgressBar
	ZGV.ProgressBar = ProgressBar
	return ProgressBar
end

--ZGV_DefaultSkin_Frame_Mixin
	local profile

	function ZGV_DefaultSkin_Frame_Mixin:OnLoad()
		local Border = self.Border
		local TitleBar = Border.TitleBar
		local Toolbar = Border.Toolbar
		local TabContainer = Border.TabContainer
		local Scroll = self.Border.Scroll		

		-- exports
		self.Controls = {
			--LockButton = Border.TitleBar.LockButton,
			TitleBar = TitleBar or error(),
			CloseButton = TitleBar.CloseButton or error(),
			Notifications = TitleBar.Notifications or error(),
			ReportButton = TitleBar.ReportButton or error(),
			Logo = TitleBar.Logo or error(),
			DevLabel = TitleBar.DevLabel or error(),

			--SearchButton = Border.TitleBar.SearchButton,
			MenuSettingsButton = Border.MenuSettingsButton or error(),
			MenuAdditionalButton = Toolbar.MenuAdditionalButton or error(),
			PrevButton = Toolbar.PrevButton or error(),
			NextButton = Toolbar.NextButton or error(),
			NextButtonSpecial = Toolbar.NextButtonSpecial or error(),
			GuideShareButton = Toolbar.GuideShareButton or error(),
			--MiniButton = Border.Toolbar.MiniButton,
			Toolbar = Toolbar,
			StepNum = Toolbar.StepNum or error(),
			ReportStep = Toolbar.ReportStep or error(),

			Scroll = Scroll or error(),
			StepContainer = Scroll.StepContainer or error(),
			DefaultStateButton = self.Border.DefaultStateButton or error(),

			TabContainer = TabContainer or error(),
			TabsAddButton = TabContainer.TabsAddButton or error(),
			TabsMoreButton = TabContainer.TabsMoreButton or error(),

			MenuHostSettings = self.MenuHostSettings or error(),
			MenuHostAdditional = self.MenuHostAdditional or error(),
			MenuHostGuides = self.MenuHostGuides or error(),
			MenuHostNotifications = TitleBar.MenuHostNotifications or error(),
		}

		self:EnableMouseWheel(1)

		-- Settings Button
		CHAIN(Border.MenuSettingsButton)
			:ClearAllPoints()
			:SetPoint("TOPLEFT", TitleBar,"TOPLEFT",9,-7)
			:SetFrameLevel(5)

		-- Progress Bar
		self.Controls.ProgressBar = CHAIN(CreateProgressBar(self))
			:SetFrameLevel(self:GetFrameLevel()+5)
			:SetTextOnMouse(true)
		.__END

		-- Search Button
		--CHAIN(TitleBar.SearchButton)
		--	:ClearAllPoints()
		--	:SetPoint("TOPLEFT", TitleBar ,"TOPLEFT",30,-7)
		--	:SetSize(16,16)
		--	:SetNormalTexture(ZGV.SKINSDIR.."icons-inventorymanager")
		--	:SetPushedTexture(ZGV.SKINSDIR.."icons-inventorymanager")
		--	:SetHighlightTexture(ZGV.SKINSDIR.."icons-inventorymanager")
		--TitleBar.SearchButton.ntx:SetTexCoord(0,0.125,0,0.5)
		--TitleBar.SearchButton.htx:SetTexCoord(0,0.125,0,0.5)
		--TitleBar.SearchButton.ptx:SetTexCoord(0,0.125,0,0.5)


		-- scrollbar

		Scroll.ScrollByDelta = function(self,delta)
			if not self.Bar:IsShown() then return end
			local step = ZGV.db.profile.showcountsteps>0 and 30 --[[pixels]] or 3 --[[steps]]
			self.Bar:SetValue(self.Bar:GetValue()+delta*step)
		end
		Scroll:EnableMouseWheel(1)
		Scroll:SetScript("OnMouseWheel",function(f,delta) Scroll:ScrollByDelta(-delta) end)
		Scroll.OldSetVerticalScroll = Scroll.SetVerticalScroll
		Scroll.SetVerticalScroll = function(self)
			if ZGV.db.profile.showcountsteps==0 then
				ZGV:UpdateFrame() -- will redisplay based on self.Bar:GetValue(), no actual scrolling involved
			else
				return self:OldSetVerticalScroll(self.Bar:GetValue())
			end
		end
		Scroll.GetContentHeight = function()
			return ZGV.Frame.Controls.StepContainer:GetHeight()
		end
		Scroll.GetScrollRange = function(self)
			if ZGV.db.profile.showcountsteps>0 then return max(0,self:GetContentHeight()-self:GetHeight()) or 0
			else return ZGV.CurrentGuide and ZGV.CurrentGuide.steps and #ZGV.CurrentGuide.steps or 0 end
		end

		CHAIN(Scroll.Bar:CreateTexture("BACKGROUND"))
			:SetColorTexture(0,0,0,0.4)
			:SetPoint("TOPLEFT",Scroll.Bar,"TOPLEFT")
			:SetPoint("BOTTOMRIGHT",Scroll.Bar,"BOTTOMRIGHT")

		-- arrow holder tex coords:
		-- 862/1024,907/1024,124/512,169/512
		Scroll.Bar.ScrollUpButton  :SetScript("OnClick",function(self,button) Scroll:ScrollByDelta(-1) end)
		Scroll.Bar.ScrollDownButton:SetScript("OnClick",function(self,button) Scroll:ScrollByDelta(1)  end)
		--Scroll.Bar.ThumbTexture:SetTexCoord(871/1024,896/1024,202/512,256/512)
		Scroll.Bar.ThumbTexture:SetSize(12,30)
		Scroll.scrollBarHideable = 1

		ZGV.Skins:AddStyleToBlizzardScrollBar(Scroll.Bar)
		--
		ZGV:AddMessageHandler("ZGV_STEP_CHANGED",function()
			if ZGV.db.profile.fixedheight then ZGV.Frame.Controls.Scroll.Bar:SetValue(0) end
		end)

		
		Toolbar.PrevButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
		Toolbar.NextButton:RegisterForClicks("LeftButtonUp", "RightButtonUp")


		--ZGVF.SmoothSetHeight = ZGV_SetHeight


		--local back=Border:GetRegions()
		--back:SetBlendMode("ADD")

		Border.SetBackdropBorderColorRGB = function(self,col)
			self:SetBackdropBorderColor(col.r,col.g,col.b,col.a)
		end

		-- flash
		
		-- COMMENTING for WoD crashes..?  Not anymore, Blizz fixed their shit
		local bg = self:CreateAnimationGroup()
		bg:SetLooping("NONE")
		local f = bg:CreateAnimation("Animation","ZygorGuidesViewerFrame_bdflash")
		f:SetDuration(1.0)
		if f.SetMaxFramerate then f:SetMaxFramerate(99) end  -- 4.1 PTR issue? is SetMaxFramerate gone?
		f:SetSmoothing("OUT")
		f:SetScript("OnUpdate",doborderrgb)
		f.target = self.Border
		f.StartRGB = function(self,r,g,b,a,r2,g2,b2,a2)
			self.fromr,self.fromg,self.fromb,self.froma = r,g,b,a
			self.tor,self.tog,self.tob,self.toa = r2,g2,b2,a2
			self:Stop()
			self:Play()
		end
		self.bdflash = f


		self.ThinFlash:SetBackdrop({bgFile="Interface\\Buttons\\white8x8",edgeFile=ZGV.DIR.."\\Skins\\glowborder", tile = true, edgeSize=32, tileSize = 128, insets = { left = 20, right = 20, top = 20, bottom = 20 }})
		self.ThinFlash:SetBackdropColor(1,1,1,0.5)
		self.ThinFlash:SetAlpha(0.0)


		-- make stuff drag me
		self.everything = {}
		local function grab_all_children(tab)
			for _,c in ipairs(tab) do
				tinsert(self.everything,c)
				if c.GetChildren then grab_all_children{c:GetChildren()} end
				if c.GetRegions then grab_all_children{c:GetRegions()} end
			end
		end
		grab_all_children({self:GetChildren()})
		grab_all_children({self:GetRegions()})

		for _,control in ipairs(self.everything) do
			if control.GenericDrag then
				control:SetScript("OnDragStart",function(self,button) ZGV.GenericDragStartHandler(self,button) end)
				control:SetScript("OnDragStop",function(self) ZGV.GenericDragStopHandler(self) end)
				control:RegisterForDrag("LeftButton")
				control:EnableMouse(true)
			end
		end
	
		self.mouseCount=0
		self.leftCount=0

		self.oldxPos,self.oldyPos = 0,0

		self:CreateStepPools()
		self:SetSpecialState("loading")
	end

	function ZGV_DefaultSkin_Frame_Mixin:CreateStepPools()
		self.stepframes = {}
		local function stepPoolResetter(pool,step)
			--step:Hide()
		end
		assert(self.Controls.StepContainer,"StepContainer missing!")
		self.stepFramePools = {
			default=CreateFramePool("BUTTON",self.Controls.StepContainer,"ZGV_DefaultSkin_DefaultStep_Template",stepPoolResetter),
			silly=CreateFramePool("BUTTON",self.Controls.StepContainer,"ZGV_DefaultSkin_SillyStep_Template",stepPoolResetter),
		}


		self.stickySepPool = CreateTexturePool(self, "OVERLAY", 7, "ZGV_DefaultSkin_StickySeparator_Template");
	end

	function ZGV_DefaultSkin_Frame_Mixin:OnHide()
		ZGV:Frame_OnHide()
		ZGV:SendMessage("ZGV_FRAME_VISIBILITY", false)
	end

	function ZGV_DefaultSkin_Frame_Mixin:OnShow()
		ZGV:Frame_OnShow()
		local flavour = (ZGV.IsRetail and " retail") or (ZGV.IsClassicTBC and " tbc") or (ZGV.IsClassic and " classic") or (ZGV.IsClassicWOTLK and " wotlk") or ""
		self.Controls.DevLabel:SetText(ZGV.name.." rev "..ZGV.revision..flavour)
		self.Controls.DevLabel:SetShown(ZGV.db.profile.debug_display and not ZGV.db.profile.hide_dev_once)
		ZGV:SendMessage("ZGV_FRAME_VISIBILITY", true)
	end

	function ZGV_DefaultSkin_Frame_Mixin:ClearSteps()
		for typ,pool in pairs(self.stepFramePools) do
			pool:ReleaseAll()
		end
		self.stickySepPool:ReleaseAll()

		table.wipe(self.stepframes)
	end

	function ZGV_DefaultSkin_Frame_Mixin:HideRemainingSteps()
		for typ,pool in pairs(self.stepFramePools) do
			for i,step in ipairs(pool.inactiveObjects) do step:Hide() end
		end
	end

	function ZGV_DefaultSkin_Frame_Mixin:AddStep(step,mode)
		if #self.stepframes>ZGV.StepLimit then return end

		step:PrepareCompletion()

		if (mode == "sticky") then
			local iscomplete, ispossible = step:IsComplete()
			if iscomplete then return end  -- refuse to add completed stickies
		end
		if not step:AreRequirementsMet() and not ZGV.db.profile.showwrongsteps then return end  -- refuse to add wrong steps

		local template = step.template or "default"
		local stepframe = self.stepFramePools[template]:Acquire()
		stepframe.step = step
		stepframe.num = #self.stepframes+1
		stepframe.stepnum = step.num
		stepframe.is_sticky = (mode == "sticky")
		stepframe:ClearAllPoints()
		
		assert(self.Controls.StepContainer,"StepContainer missing!")
		if stepframe.num==1 then
			stepframe:SetPoint("TOPLEFT",self.Controls.StepContainer,"TOPLEFT",0,0)
			stepframe:SetPoint("TOPRIGHT",self.Controls.StepContainer,"TOPRIGHT",0,0)

		else
			local stickytexture = self.stickySepPool:Acquire()
			stickytexture:SetParent(stepframe)
			stickytexture:SetPoint("TOP",self.stepframes[stepframe.num-1],"BOTTOM",0,-SkinData("StepStickyBarSpace"))
			stickytexture:SetPoint("LEFT",stepframe)
			stickytexture:SetPoint("RIGHT",stepframe)
			stickytexture:SetHeight(SkinData("StepStickyBarHeight"))
			stickytexture:SetVertexColor(unpack(SkinData("StepStickySeparatorColor")))
			stickytexture:SetSnapToPixelGrid(false)
			stickytexture:Show()

			--[[
			local stickytexture_bottom = self.stickySepPool:Acquire()
			stickytexture_bottom:SetParent(stepframe)
			stickytexture_bottom:SetPoint("TOP",stepframe,"BOTTOM")
			stickytexture_bottom:SetPoint("LEFT",stepframe)
			stickytexture_bottom:SetPoint("RIGHT",stepframe)
			stickytexture_bottom:SetHeight(SkinData("StepStickyBarHeight"))
			stickytexture:SetVertexColor(unpack(SkinData("StepStickySeparatorColor")))
			stickytexture:SetSnapToPixelGrid(false)
			stickytexture_bottom:Show()
			--]]

			stepframe:SetPoint("TOPLEFT",self.stepframes[stepframe.num-1],"BOTTOMLEFT",0,-SkinData("StepStickyBarSpace") -SkinData("StepStickyBarHeight") -SkinData("StepStickyBarSpace"))
			stepframe:SetPoint("TOPRIGHT",self.stepframes[stepframe.num-1],"BOTTOMRIGHT",0,-SkinData("StepStickyBarSpace") -SkinData("StepStickyBarHeight") -SkinData("StepStickyBarSpace"))
			--
			--frame:SetPoint("TOPLEFT",getglobal("ZygorGuidesViewerFrame_Step"..(stepnum-1)),"BOTTOMLEFT",0,-ZGV.STEP_SPACING)
			--frame:SetPoint("TOPRIGHT",getglobal("ZygorGuidesViewerFrame_Step"..(stepnum-1)),"BOTTOMRIGHT",0,-ZGV.STEP_SPACING)
		end

		stepframe:Render()

		tinsert(self.stepframes,stepframe)
		self.Controls.StepContainer['step'..stepframe.num..'_'..stepframe.stepnum]=stepframe  -- for debugging only
	end

	local throttle=0
	local updatetime=1/30
	function ZGV_DefaultSkin_Frame_Mixin:OnUpdate(elapsed)
		if not profile then profile=ZGV.db.profile end
		--[[
		if not self.aligned then
			self.aligned=true
			ZGV:AlignFrame()
		end

		if ZGV.temp_scansize then
			local scale = self:GetScale()
			local left,top,bottom,right = self:GetLeft(),self:GetTop(),self:GetBottom(),self:GetRight()
			ZGV:Debug(("In OnUpdate: %.2f scale: left %.2f, top %.2f, bottom %.2f, right %.2f"):format(scale,left,top,bottom,right))
			ZGV.temp_scansize=false
		end
		--]]

		if ZGV.delayFlash and ZGV.delayFlash==2 then
			ZGV.delayFlash = 3
		end

		throttle=throttle+elapsed ; if throttle<updatetime then return end ; elapsed=throttle ; throttle=0

		local locked = ZGV.db.profile.windowlocked

		self.Border:Show()
		self.Border:SetAlpha(1)

		--[[
		local gt=GetTime()-(ZygorGuidesViewerFrame_ThinFlash.starttime or 0)
		if gt>0 and ZygorGuidesViewerFrame_ThinFlash:IsShown() then
			local a = 0.5 - gt*3
			ZygorGuidesViewerFrame_ThinFlash:SetAlpha(a)
			if (a<0.01) then
				--ZygorGuidesViewerFrame_ThinFlash:Hide()
			end
		end
		--]]

		-- flash
		-- the regular code sets ZGV.delayFlash to 1 and then to 2; upon first update it gets promoted to 3, and only upon that is the flash fired
		-- this is to make sure it flashes after steps had time to rearrange themselves

		-- COMMENTING for WoD crashes..?  Not anymore, Blizz fixed their shit
		if ZGV.delayFlash and ZGV.delayFlash==3 then
			local ThinFlash = self.ThinFlash
			ThinFlash.flash:Stop()
			--if Border:IsVisible() then
			--else
				if profile.showcountsteps==0 then
					ThinFlash:ClearAllPoints()
					ThinFlash:SetPoint("TOPLEFT",self.Scroll,"TOPLEFT",-18,18)
					local lastbottom=0
					for i=2,20 do
						if self.stepframes[i]:IsVisible() then lastbottom=self.Scroll:GetTop()-self.stepframes[i]:GetBottom() end
					end
					if lastbottom>0 then
						lastbottom = self.Scroll:GetHeight()-lastbottom
					end
					ThinFlash:SetPoint("BOTTOMRIGHT",self.Scroll,"BOTTOMRIGHT",18 - 15,-18 + lastbottom)
				else
					ThinFlash:ClearAllPoints()
					ThinFlash:SetPoint("TOPLEFT",self.stepframes[1],"TOPLEFT",-18,18)
					ThinFlash:SetPoint("BOTTOMRIGHT",self.stepframes[1],"BOTTOMRIGHT",18,-18)
				end
				ThinFlash.flash:Play()
				--ZygorGuidesViewerFrame_ThinFlash.starttime = GetTime()+0.2
				ThinFlash:Show()
			--end
			ZGV.delayFlash = 0
		end



		--[[
		if not ZGV.briefstepexpansion then ZGV.briefstepexpansion=0.01 end
		if not ZGV.briefstepexpansionspeed then ZGV.briefstepexpansionspeed=0 end
		local oldexpansion=ZGV.briefstepexpansion
		ZGV.briefstepexpansion = ZGV.briefstepexpansion + elapsed*ZGV.briefstepexpansionspeed
		if ZGV.briefstepexpansion>1 then ZGV.briefstepexpansion=1 end
		if ZGV.briefstepexpansion<0.01 then ZGV.briefstepexpansion=0.01 end
		if ZGV.briefstepexpansion~=oldexpansion then ZGV.frameNeedsUpdating = true end
		--]]

		for i=1,LINES_PER_STEP do
			local ex=ZGV.briefstepexpansionlines
			local sp=ZGV.briefstepexpansionspeedlines
			if not ex[i] then ex[i]=0.01 end
			if not sp[i] then sp[i]=0 end
			local oldexpansion=ex[i]
			ex[i] = ex[i] + elapsed*sp[i]
			if ex[i]>1 then ex[i]=1 end
			if ex[i]<0.01 then ex[i]=0.01 end
			if ex[i]~=oldexpansion then ZGV.frameNeedsUpdating = true end
		end

		-- title button flash
		if ZGV.Tabs.AddButton then
			if (not ZGV.CurrentGuide and not ZGV.loading) or ZGV.suggesting then
				ZGV.Tabs.AddButton.flashing = true
				ZGV.Tabs.AddButton:LockHighlight()
			else
				ZGV.Tabs.AddButton.flashing = nil
				ZGV.Tabs.AddButton:UnlockHighlight()
			end
		end

		if ZGV.frameNeedsUpdating then
			ZGV.frameNeedsUpdating=nil
			--ZGV:Debug("frameNeedsUpdating, so updating.")
			ZGV:UpdateFrame()
		end

		-- and now the FAST step surfing
		if ZGV.fastforward then
			ZGV.completionelapsed = ZGV.completionelapsed + elapsed
			if ZGV.completionelapsed>=ZGV.completioninterval then
				ZGV:TryToCompleteStep(true)
			end
		end

		-- step onenter/onleave replacement
		if false and profile.showbriefsteps then   -- we don't support that anymore
			local hoverspeed = 1/profile.briefopentime
			local outspeed = 1/profile.briefclosetime   --nasty hack for easy different mouse cooldowns
			for i=1,#self.stepframes do
				local stepf = self.stepframes[i]
				if stepf and stepf:IsShown() then

					-- menu open? postpone.
					if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==ZGV.Frame.Menu then break end

					if not stepf.mousecounter then stepf.mousecounter=0 end

					if stepf:IsMouseOver() then
						if stepf.mousecounter<0 then stepf.mousecounter=0 end
						stepf.mousecounter = (stepf.mousecounter or 0) + elapsed*hoverspeed
						if stepf.mousecounter>=0.99 then
							-- enter
							--ZGV.briefstepexpansionspeed = 5
							ZGV.briefstepexpansionspeedlines[stepf.num] = 5
						end
					else
						if stepf.mousecounter>1 then stepf.mousecounter=1 end
						stepf.mousecounter = (stepf.mousecounter or 0) - elapsed*outspeed
						if stepf.mousecounter<=0.001 then
							-- leave
							--ZGV.briefstepexpansionspeed = -5
							ZGV.briefstepexpansionspeedlines[stepf.num] = -5
						end
					end

				end
			end
		end
	end

	local resizing=false
	local update_twice
	local once
	local FLICKERING_SCROLL=true
	function ZGV_DefaultSkin_Frame_Mixin:OnSizeChanged()
		if FLICKERING_SCROLL then  -- protect from calling twice in same frame
			if once then return end
			once=true
			C_Timer.After(0.001,function() once=false end)
		end

		if resizing then return end
		resizing=true

		if not ZGV or not ZGV.db then resizing=false return end

		local width = self:GetWidth()
		local margin = SkinData("ViewerMargin")*2
	
		-- sorry. Can't rely on SetPoint alone, as they notoriously report GetWidth()==0 during resizes.
		self.Controls.StepContainer:SetWidth(ZGV.db.profile.showcountsteps==0 and width-margin-19 or width-margin)

		self.Controls.Scroll.Bar:SetValue(0)

		--ZGV:Debug("Calling UpdateFrame")
		ZGV:UpdateFrame(true)
		--[[
		if not update_twice then  update_twice=true  C_Timer.After(0.001,function() resizing=true update_twice=nil ZGV:Debug("Calling UpdateFrame a second time") ZGV:UpdateFrame(true) resizing=false end) end
		C_Timer.After(0.002,function() resizing=true ZGV:UpdateFrame(true) resizing=false end)
		--]]

		--if self.stepframes and self.stepframes[1] and self.stepframes[1].lines[1]:GetWidth()==0 then ZGV:UpdateFrame(true) end
		--[[
		print("SCROLL:",self.Scroll.Child:GetWidth())
		if self.stepframes[1] then
			print("STEP:",self.stepframes[1]:GetWidth())
			print("LINE:",self.stepframes[1].lines[1]:GetWidth())
		else print("NO STEPFRAMES") end
		ZGV:ResizeFrame()
		if self.stepframes[1] then
			print("STEP:",self.stepframes[1]:GetWidth())
			print("LINE:",self.stepframes[1].lines[1]:GetWidth())
		else print("NO STEPFRAMES") end
		--ZGV.ProgressBar:SetUp()
		--]]

		self.oldWidth=self:GetWidth()
		if ZGV.db.profile.showcountsteps==0 or ZGV.db.profile.fixedheight then
			ZGV.db.profile.fullheight = self:GetHeight()
		end

		if self.ApplySkin then self:ApplySkin() end  -- needed for upside-down texcoord trickery  -- might not be there yet on load!!!

		resizing=false
		--self.aligncount=4
	end
	
	function ZGV_DefaultSkin_Frame_Mixin:OnMouseWheel(delta)
		if IsControlKeyDown() then
			if delta>0 then delta=0.25 else delta=-0.25 end
			ZGV.db.profile.framescale = ZGV.db.profile.framescale + delta
			if ZGV.db.profile.framescale<0.75 then ZGV.db.profile.framescale=0.75 end
			if ZGV.db.profile.framescale>1.75 then ZGV.db.profile.framescale=1.75 end
			self:SetScale(ZGV.db.profile.framescale)
			ZGV:UpdateFrame(true)
	
			--[[
			if ZGV.db.profile.debug_newicons then
				if self:GetScale()>1.0 then
					self.Controls.LockButton:GetNormalTexture():SetTexCoord(0.5,0.5+(28/32)/2,0,(28/32))
				else
					self.Controls.LockButton:GetNormalTexture():SetTexCoord(0,0.25,0,0.5)
				end
			end
			--]]
		end
	end

	function ZGV_DefaultSkin_Frame_Mixin:StopFlashAnimation()
		for i,stepfr in ipairs(self.stepframes) do
			for l=1,#stepfr.lines do
				local line = stepfr.lines[l]
				local anim_fade = line.anim_fade
				anim_fade:Stop()
				if anim_fade.r then -- if it ever ran... finalize it.
					local back=line.back
					back:SetBackdropColor(anim_fade.r,anim_fade.g,anim_fade.b,anim_fade.a)
					back:SetBackdropBorderColor(anim_fade.r,anim_fade.g,anim_fade.b,anim_fade.a)
				end
			end
		end
	end
	
	function ZGV_DefaultSkin_Frame_Mixin:ResetWindow()
		if ZGV.Tutorial.Running then
			ZGV.Tutorial:Close()
		end
		self:GetParent():ClearAllPoints()
		self:GetParent():SetPoint("CENTER")
		ZGV:SetOption("Cover","dispmodepri on")
		ZygorGuidesViewerMapIcon:ClearAllPoints()
		ZygorGuidesViewerMapIcon:SetPoint("CENTER",Minimap,"BOTTOMLEFT",16,16)
		ZGV:UpdateFrame(true)
		ZygorGuidesViewerPointer_ArrowCtrl:ClearAllPoints()
		ZygorGuidesViewerPointer_ArrowCtrl:SetPoint("TOP",UIParent,"TOP",0,-200)
		if ZGV.ActionBar.Frame then
			ZGV.ActionBar.Frame:ClearAllPoints()
			ZGV.ActionBar.Frame:SetPoint("BOTTOMLEFT",ZGV.Frame,"TOPLEFT",0,10)
			ZGV.db.profile.actionbar_anchor = nil
		end
		--[[
		if self.db.profile.mv_enabled then
			ZGV.CV:AlignFrame() -- merged reset buttons
		end
		--]]
	end

	function ZGV_DefaultSkin_Frame_Mixin:SetSpecialState(state)
		self.specialstate = state
		self:ShowSpecialState()
	end

	function ZGV_DefaultSkin_Frame_Mixin:ShowSpecialState()
		local state = self.specialstate
		local L = ZGV.L
		if state=="loading" then
			self.Controls.MenuSettingsButton:Hide()
			self.Controls.Notifications:Hide()
			self.Controls.TabContainer:Hide()
			self.Controls.Toolbar:Hide()
			self.Controls.Scroll:Hide()
			self.Controls.ProgressBar:Hide()
			self.Border.Back:Show()

			self.Controls.DefaultStateButton:SetScript("OnClick",nil)
			self.Controls.DefaultStateButton:Show()
			self.Controls.DefaultStateButton:SetText(L["viewer_special_loading"])
		
		elseif state=="select" then
			self.Controls.MenuSettingsButton:Show()
			self.Controls.Notifications:Show()
			self.Controls.TabContainer:Hide()
			self.Controls.Toolbar:Hide()
			self.Controls.Scroll:Hide()
			self.Controls.ProgressBar:Hide()
			self.Border.Back:Show()

			ZGV.BugReport.GuideRating:HideRatingWidgets()

			ZGV.ActionBar.Frame:Hide()

			self.Controls.DefaultStateButton:SetScript("OnClick",function() ZGV.GuideMenu:Show() end)
			self.Controls.DefaultStateButton:Show()
			self.Controls.DefaultStateButton:SetText(L["viewer_special_select"])
		else
			self.Controls.MenuSettingsButton:Show()
			self.Controls.Notifications:Show()
			self.Controls.TabContainer:Show()
			self.Controls.Toolbar:Show()
			self.Controls.Scroll:Show()	
			self.Border.Back:Show()

			if not ZGV.CurrentGuide or not ZGV.CurrentStep.score then
				self.Controls.ProgressBar:Show()
				ZGV.Frame.Controls.StepContainer:Show()
			else
				self.Controls.ProgressBar:Hide()
				ZGV.Frame.Controls.StepContainer:Hide()
			end
			if (ZGV.CurrentGuide and not ZGV.CurrentStep.score) and ZGV.BugReport.GuideRating.NoRatingFrame then
				ZGV.BugReport.GuideRating.NoRatingFrame:Hide()
			end

			if (ZGV.CurrentGuide and not ZGV.CurrentStep.score) and ZGV.BugReport.GuideRating.ZygorPopup then
				ZGV.BugReport.GuideRating.ZygorPopup:Hide()
			end

			if ZGV.BugReport.GuideRating.GuideRatingViewer and ZGV.BugReport.GuideRating.GuideRatingViewer:IsVisible() and ZGV.BugReport.GuideRating.NoRatingFrame then
				ZGV.BugReport.GuideRating.NoRatingFrame:Hide()
			end

			--ZGV.Tabs:ReanchorTabs()
			--ZGV.QuestDB:MaybeShowButton()

			self.Controls.DefaultStateButton:SetScript("OnClick",nil)
			self.Controls.DefaultStateButton:Hide()
		end
		
	end
--

--border showing delay
local fadespeed=0.15
local xPos,yPos
local stepframe,line



--[[
function ZGVFSectionDropDown_Initialize(frame,level,menulist)
	ZGV:InitializeDropDown(frame,level,menulist)
end

function ZGVFSectionDropDown_Func()
	ZGV:SetGuide(this.value)
--	ToggleDropDownMenu(1, nil, ZygorGuidesViewerFrame_SectionDropDown, ZygorGuidesViewerFrame, 0, 0);
end
--]]

--[[
function ZGV_SetHeight(self,height)
	self.targetheight = height
	ZygorGuidesViewerFrame_size:Play()
end
--]]

function ZygorGuidesViewerFrame_HideTooltip(self)
	if (not self or GameTooltip:GetOwner()==self or GameTooltip:GetOwner()==ZGV.Frame) then
		--ZGV:Debug("HIDING in HideTooltip")
		GameTooltip:Hide()
	end
end

-------------------------------------
-- Button handlers
-------------------------------------

--[[
function ZGV_DefaultSkin_Frame_Mixin.LockButton_OnClick(self,button)
	ZGV:SetOption("Display","windowlocked")
	ZGV.GuideMenu:RefreshOptions("ZygorGuidesViewer-Display")
	ZGV_DefaultSkin_Frame_Mixin.LockButton_OnEnter(self,button)
end

function ZGV_DefaultSkin_Frame_Mixin.LockButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L[ZGV.db.profile["windowlocked"] and 'frame_locked' or 'frame_unlocked'])
	GameTooltip:AddLine(L[ZGV.db.profile["windowlocked"] and 'frame_unlock' or 'frame_lock'],0,1,0)
	GameTooltip:Show()
end
--]]

-------------------------------------
-- Popup menus
-------------------------------------



function ZGV_DefaultSkin_Frame_Mixin:MenuSettingsButton_OnClick()
	if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==ZGV.Frame.Controls.MenuHostSettings then CloseDropDownForks() return end

	local setting_menu = {
		{-- 0
			text=L["menu_GuideMenu"],
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey="LIST",
			func=function() ZGV.GuideMenu:Show() end,
			notCheckable=1,
			paddingbottom=8,
		},
		{-- 1
			text=L["menu_Startup"],
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey="WAND",
			func=function() ZGV.Tabs:LoadGuideToTab("Leveling Guides\\Startup Guide Wizard") end,
			notCheckable=1,
		},
		UIDropDownFork_separatorInfo, -- 2
		{ -- 3
			text=L["menu_LockViewer"],
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey="LOCK_ON",
			func=function() ZGV.db.profile.windowlocked = not ZGV.db.profile.windowlocked ZGV:UpdateLocking() end, 
			checked=function() return ZGV.db.profile.windowlocked end,
			isNotRadio=1,
			keepShownOnClick=1,
			paddingbottom=8,
		},
		{ -- 4
			text=L["menu_EnableTransparency"],
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey="FRAME",
			func=function() ZGV.db.profile.opacitytoggle = not ZGV.db.profile.opacitytoggle ZGV:SetSkin(ZGV.db.profile.skin,ZGV.db.profile.skinstyle) end, 
			checked=function() return ZGV.db.profile.opacitytoggle end,
			isNotRadio=1,
			keepShownOnClick=1,
		}, -- 5
		UIDropDownFork_separatorInfo, -- 6
		{ -- 7
			text = L['pointer_arrowmenu_findnearest'], -- aka findNPC
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey="TRAINER",
			hasArrow=true,
			menuList = ZGV.WhoWhere.Types,
			notCheckable=true,
		},
		UIDropDownFork_separatorInfo, -- 8
		{ -- 9
			text=L["menu_Reset"],
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey="CLOSE",
			func=function() self:ResetWindow() end, 
			notCheckable=1,
			paddingbottom=8,
		},
		{ -- 10
			text=L["menu_Reload"],
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey="RELOAD",
			func=function() ReloadUI() end, 
			notCheckable=1,
		},
		UIDropDownFork_separatorInfo, -- 11
		{ -- 12
			text=L["menu_Settings"],
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey="SETTINGS",
			func=function() ZGV:OpenOptions() end,
			notCheckable=1,
		},
	}

	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		table.insert(setting_menu,7, -- after findnearest
			{
				text=L["menu_ShowSkills"],
				iconset=ZGV.ButtonSets.TitleButtons,
				iconkey="FINDNPC",
				func=function() ZGV.Skills:ShowSkillPopup(nil,nil,"forceShow") end,
				notCheckable=1,
			}
		)
	end

	for i,v in ipairs(setting_menu) do
		if v.iconset then
			v.icon = v.iconset.file
			local texcoord=v.iconset[v.iconkey].texcoords
			v.tCoordLeft = texcoord[1][1]
			v.tCoordRight = texcoord[1][2]
			v.tCoordTop = texcoord[1][3]
			v.tCoordBottom = texcoord[1][4]
		end
	end

	UIDropDownFork_SetAnchor(self.MenuHostSettings, 0, 0, "TOP", self.Controls.MenuSettingsButton, "BOTTOM")
	EasyFork(setting_menu,self.MenuHostSettings,nil,0,0,"MENU",10)
	DropDownForkList1:SetPoint("LEFT",self,"LEFT")
end

function ZGV_DefaultSkin_Frame_Mixin:MenuSettingsButton_OnEnter()
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['frame_settings'])
	GameTooltip:AddLine(L['frame_settings1'],0,1,0)
	--GameTooltip:AddLine(L['frame_settings2'],0,1,0)
	GameTooltip:Show()
end


function ZGV_DefaultSkin_Frame_Mixin:MenuAdditionalButton_OnClick()
	if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==self.Controls.MenuHostAdditional then CloseDropDownForks() return end

	local additional_menu = {
		UIDropDownFork_separatorInfo,
		{
			text=L["menu_TravelLines"],
			iconset=ZGV.ButtonSets.TitleButtons,
			iconkey="INLINETRAVEL",
			func=function() 
				ZGV:SetOption("StepDisplay","showinlinetravel")
				ZGV.GuideMenu:RefreshOptions("ZygorGuidesViewer-Display")
				ZGV:UpdateFrame(true)
				ZGV:ReanchorFrame()
				ZGV:AlignFrame()
			end,
			checked=function() return ZGV.db.profile.showinlinetravel end,
			isNotRadio=1,
			keepShownOnClick=1,
		},
	}

	if ZGV.IsRetail then
		table.insert(additional_menu,1,{
				text=L["menu_QuestCleanup"],
				iconset=ZGV.ButtonSets.TitleButtons,
				iconkey="FLASH",
				func=function() ZGV:ShowQuestCleanup() end,
				notCheckable=1,
			}
		)

	else
		table.insert(additional_menu,1,{
				text=L["frame_SISButton"],
				iconset=ZGV.ButtonSets.TitleButtons,
				iconkey="FLASH",
				func=function() ZGV.QuestDB:ShowGuideHelper() end,
				notCheckable=1,
			}
		)
	end

	for i,v in ipairs(additional_menu) do
		if v.iconset then
			v.icon = v.iconset.file
			local texcoord=v.iconset[v.iconkey].texcoords
			v.tCoordLeft = texcoord[1][1]
			v.tCoordRight = texcoord[1][2]
			v.tCoordTop = texcoord[1][3]
			v.tCoordBottom = texcoord[1][4]
		end
	end

	UIDropDownFork_SetAnchor(self.MenuHostAdditional, 0, 0, "TOP", self.Controls.MenuAdditionalButton, "BOTTOM")
	EasyFork(additional_menu,self.MenuHostAdditional,nil,0,0,"MENU",10)
	DropDownForkList1:SetPoint("RIGHT",self,"RIGHT")
end

function ZGV_DefaultSkin_Frame_Mixin.MenuAdditionalButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:Show()
end

-------------------

function ZGV_DefaultSkin_Frame_Mixin.Notifications_OnClick(self,button)
	if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==ZGV.Frame.Controls.MenuHostNotifications then 
		CloseDropDownForks() return 
	else
		ZGV.NotificationCenter:ShowNotifications()
	end
end

function ZGV_DefaultSkin_Frame_Mixin.Notifications_OnEnter(self)

end

-------------------

function ZGV_DefaultSkin_Frame_Mixin.PrevButton_OnClick(self,button)
	if IsControlKeyDown() and not IsAltKeyDown() then
		ZGV:FocusStep(1,true) -- and force focus
		ZGV.pause=nil
	else
		local count=IsShiftKeyDown() and 10 or 1
		for i=1,count do
			ZGV:PreviousStep(button=="RightButton",true) -- fast,forcefocus
		end
	end
	if ZGV.db.profile.flipsounds then
		PlaySound(SOUNDKIT.IG_MINIMAP_ZOOM_IN)
	end
	if ZGV.BugReport.GuideRating.ZygorPopup then ZGV.BugReport.GuideRating.ZygorPopup:Hide() ZGV.BugReport.GuideRating.ZygorPopupOn:Hide() end
end

function ZGV_DefaultSkin_Frame_Mixin.PrevButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['frame_stepnav_prev'])
	GameTooltip:AddLine(L['frame_stepnav_prev_click'],0,1,0)
	GameTooltip:AddLine(L['frame_stepnav_prev_right'],0,1,0)
	GameTooltip:AddLine(L['frame_stepnav_prev_ctrl'],0,1,0)
	GameTooltip:Show()
end

-------------------

function ZGV_DefaultSkin_Frame_Mixin.NextButton_OnClick(self,button)
	local count=IsShiftKeyDown() and 10 or 1
	for i=1,count do
		ZGV:SkipStep(button=="RightButton",false,true)
	end
	if ZGV.db.profile.flipsounds then
		PlaySound(SOUNDKIT.IG_MINIMAP_ZOOM_IN)
	end
end

function ZGV_DefaultSkin_Frame_Mixin.NextButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['frame_stepnav_next'])
	GameTooltip:AddLine(L['frame_stepnav_next_click'],0,1,0)
	GameTooltip:AddLine(L['frame_stepnav_next_right'],0,1,0)
	GameTooltip:Show()
end

function ZGV_DefaultSkin_Frame_Mixin.NextButtonSpecial_OnClick(self)
	ZGV.QuestDB:FocusNextStepForQuest()
end
function ZGV_DefaultSkin_Frame_Mixin.NextButtonSpecial_OnEnter(self)
	local questID = ZGV.CurrentGuide.QuestSearchID
	local title = ZGV.QuestDB:GetQuestName(questID)

	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['frame_stepnav_nextquest']:format(title))
	GameTooltip:AddLine(L['frame_stepnav_nextquest_click'],0,1,0)
	GameTooltip:AddLine(L['frame_stepnav_nextquest_right'],0,1,0)
	GameTooltip:Show()
end

-------------------

function ZGV_DefaultSkin_Frame_Mixin.HelpButton_OnClick(self,button)
	if not ZGV.Tutorial.TooltipFrame or not ZGV.Tutorial.TooltipFrame:IsVisible() then
		ZGV.Tutorial:Run()
	end
end

function ZGV_DefaultSkin_Frame_Mixin.HelpButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['frame_helpbutton'])
	GameTooltip:AddLine(L['frame_helpbutton_desc'],0,1,0)
	GameTooltip:Show()
end
--------------------

function ZGV_DefaultSkin_Frame_Mixin.ReportButton_OnClick(self,button)
	ZGV.BugReport:GenerateAndShow()
end

function ZGV_DefaultSkin_Frame_Mixin.ReportButton_OnEnter(self)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L['frame_reportbutton'])
	GameTooltip:AddLine(L['frame_reportbutton_desc'],0,1,0)
	GameTooltip:Show()
end
--------------------

--------------------

function ZGV_DefaultSkin_Frame_Mixin.GuideShareButton_OnClick(self,button)
	ZGV.Sync:OnShareButtonClick(button)
end

function ZGV_DefaultSkin_Frame_Mixin.GuideShareButton_OnEnter(self)
	ZGV.Sync:OnShareButtonEnter()
end
--]]

--------------------

function ZGV_DefaultSkin_Frame_Mixin.MiniButton_OnClick(self,button)
	ZGV:SetOption("StepDisplay","showinlinetravel")
	ZGV.GuideMenu:RefreshOptions("ZygorGuidesViewer-Display")
	--if ZGV.optionpanels['display']:IsVisible() then ZGV:OpenOptions('display') end
	--ZGV:UpdateMiniMode()

	--if button=="LeftButton" then
	--	ZGV:SetOption("Display","showcountsteps "..(ZGV.db.profile.showallsteps and ZGV.db.profile.showcountsteps or 0))
	--else
	--	ZGV:OpenQuickSteps()
	--end
	ZGV_DefaultSkin_Frame_Mixin.MiniButton_OnEnter(self,button)
	ZGV:UpdateFrame(true)
	ZGV:ReanchorFrame()
	ZGV:AlignFrame()
end

function ZGV:Guides_Mini_to_Full()
	ZGV:SetOption("Cover","dispmodepri")
	--if ZGV.optionpanels['display']:IsVisible() then ZGV:OpenOptions('display') end
	ZGV:ReanchorFrame()
	ZGV:AlignFrame()
end


function ZGV_DefaultSkin_Frame_Mixin.MiniButton_OnEnter(self,button)
	GameTooltip:SetOwner(ZGV.Frame, "ANCHOR_TOP")
	GameTooltip:SetText(L[ZGV.db.profile.showinlinetravel and 'frame_showinlinetravel_on' or 'frame_showinlinetravel_off'])
	GameTooltip:AddLine(L[ZGV.db.profile.showinlinetravel and 'frame_showinlinetravel_gooff' or 'frame_showinlinetravel_goon'],0,1,0)
	--GameTooltip:AddLine(L['frame_minright'],0,1,0)
	GameTooltip:Show()
end

---------------------

function ZGV_DefaultSkin_Frame_Mixin.CloseButton_OnClick(self,button)
	HideUIPanel(ZGV.Frame)
	ZGV.db.profile.enable_viewer = false
	ZGV.ActionBar:ToggleFrame()
end

function ZGV_DefaultSkin_Frame_Mixin.ReportStepButton_OnClick(self,button)
	ZGV.BugReport.StepFeedback:Show()
end

function ZGV_DefaultSkin_Frame_Mixin.ReportStepButton_OnEnter(self)
	ZGV.BugReport.StepFeedback:ShowTooltip(self)
end

---------------------
function ZGV_DefaultSkin_Frame_Mixin.Scroll_OnUpdate(self,elapsed)
	if self:GetVerticalScrollRange()==0 then
		--ZygorGuidesViewerFrameScroll_ScrollFill:Hide()
	else
		--ZygorGuidesViewerFrameScroll_ScrollFill:Show()
		if  ZGV.ForceScrollToCurrentStep then
			ZGV:ScrollToCurrentStep()
		end
	end
end

function ZGV_DefaultSkin_Frame_Mixin.Scroll_Slider_OnValueChanged(self,value)
	self:GetParent():SetVerticalScroll(value)
	ZGV:UpdateFrame(true)
end

function ZGV_DefaultSkin_Frame_Mixin.StepNum_OnMouseWheel(self,delta)
	ZGV:Debug("step num wheel %d",delta)
	local count=IsShiftKeyDown() and 10 or 1
	for i=1,count do
		if delta>0 then
			ZGV:PreviousStep(false,true) -- fast,forcefocus
		else
			ZGV:SkipStep(false,false,true) -- fast,hack,forcefocus
		end
	end
end

function ZGV_DefaultSkin_Frame_Mixin.ThinFlash_OnLoad(self)
	local backdrop = {
		bgFile="Interface/Buttons/white8x8",
		edgeFile="Interface/Store/store-item-highlight",
		edgeTile=true,
		edgeSize=32,
		insets={left=20,right=20,top=20,bottom=20}
	}
	self:OnBackdropLoaded()
	self:SetBackdrop(backdrop)
end

--------------------

ZGV_ResizerMixin = {}
--
	function ZGV_ResizerMixin:OnLoad(button)
		self:SetScript("OnMouseDown",self.StartSizing)
		self:SetScript("OnMouseUp",self.SizeOff)
		--self:SetScript("OnEnter",self.HighlightOn)
		--self:SetScript("OnLeave",self.HighlightOff)

		self.Highlight = CHAIN(self:CreateTexture())
			:SetAllPoints()
			:SetColorTexture(1,1,1,0.1)
			:Hide()
			.__END
	end

	function ZGV_ResizerMixin:StartSizing(button)
		if ZGV.db.profile.windowlocked then return false end
		local dir=self.ResizerDir
		local can_size_vertically = (ZGV.db.profile.fixedheight or ZGV.db.profile.showcountsteps==0)
		if not can_size_vertically then
			if dir=="BOTTOMLEFT" then dir="LEFT"
			elseif dir=="BOTTOMRIGHT" then dir="RIGHT"
			elseif dir=="BOTTOM" then return end
		end
		if ZGV.db.profile.resizeup then dir=dir:gsub("BOTTOM","TOP") end
		if dir=="BOTTOMLEFT" or dir=="LEFT" then ZGV.Frame.sizedleft=self:GetParent():GetLeft() end
		self:GetParent():StartSizing(dir)
	end

	function ZGV_ResizerMixin:HighlightOn(button)
		if ZGV.db.profile.windowlocked then return end
		--SetCursor("UI_RESIZE_CURSOR")
		self.Highlight:Show()
	end

	function ZGV_ResizerMixin:HighlightOff(button)
		--SetCursor(nil)
		self.Highlight:Hide()
	end

	function ZGV_ResizerMixin:SizeOff(button)
		--ZygorGuidesViewerFrameMaster:StopMovingOrSizing()
		self:GetParent():StopMovingOrSizing()
		ZGV:ReanchorFrame()
		ZGV:AlignFrame()
	end

--

BackFlatTemplate_Mixin = {}

function BackFlatTemplate_Mixin:OnBackdropLoaded()
	if not self.Center then
		self.Center = self:CreateTexture()
		self.Center:SetDrawLayer("BACKGROUND")
		self.Center:SetAllPoints()
	end
	self.backdropColor = {1,1,1,1}
end
function BackFlatTemplate_Mixin:SetBackdrop(data)
	self.backdropInfo = data
	self.Center:SetTexture(data.bgFile)
	if data.bgFile then self.Center:Show() end
end
function BackFlatTemplate_Mixin:GetBackdrop()
	return self.backdropInfo
end
function BackFlatTemplate_Mixin:SetBackdropColor(r,g,b,a)
	self.backdropColor[1]=r
	self.backdropColor[2]=g
	self.backdropColor[3]=b
	self.backdropColor[4]=a
	self.Center:SetColorTexture(r,g,b,a)
	if a>0 then self.Center:Show() end
end
local empty={}
function BackFlatTemplate_Mixin:GetBackdropColor(r,g,b,a)
	return unpack(self.backdropColor)
end
function BackFlatTemplate_Mixin:SetColor(r,g,b,a)
	self:SetBackdropColor(r,g,b,a)
	self:Show()
end
function BackFlatTemplate_Mixin:SetBackdropBorderColor() -- no border; compatibility only
end


ZGV_DefaultSkin_TitleButton_Mixin = {}
function ZGV_DefaultSkin_TitleButton_Mixin:AssignTextures(set,key)
	set = set or self.buttonset
	key = key or self.buttonkey
	local but = ZGV.F.dig_in(ZGV.ButtonSets,set,key)
	if not but then error("TitleButton can't find proper buttonset: "..set.." . "..key) end
	but:AssignToButton(self)
	local highlight_alpha = SkinData("TitleButtonHighlightAlpha")
	if highlight_alpha then self:GetHighlightTexture():SetAlpha(highlight_alpha) end
end
function ZGV_DefaultSkin_TitleButton_Mixin:SetSizeFromSkin()
	local size = SkinData("TitleButtonSize")
	self:SetSize(self.forcewidth or size,self.forceheight or size)
end
function ZGV_DefaultSkin_TitleButton_Mixin:SetTextureInsetsFromSkin()
	local insetx = self.forceinsetx or SkinData("TitleButtonInset") or 0
	local insety = self.forceinsety or  SkinData("TitleButtonInset") or 0
	for _,tx in ipairs{self:GetNormalTexture(),self:GetPushedTexture(),self:GetDisabledTexture()} do
		if tx then
			ZGV.ChainCall(tx)
				:ClearAllPoints()
				:SetPoint("BOTTOMLEFT",self,"BOTTOMLEFT",insetx,insety)
				:SetPoint("TOPRIGHT",self,"TOPRIGHT",-insetx,-insety)
		end
	end
	local inset = SkinData("TitleButtonInsetHighlight") or SkinData("TitleButtonInset")
	ZGV.ChainCall(self:GetHighlightTexture())
		:ClearAllPoints()
		:SetPoint("BOTTOMLEFT",self,"BOTTOMLEFT",inset,inset)
		:SetPoint("TOPRIGHT",self,"TOPRIGHT",-inset,-inset)
end
function ZGV_DefaultSkin_TitleButton_Mixin:ApplySkin()
	self.buttonset = self.buttonset or "TitleButtons"
	self:AssignTextures()
	self:SetSizeFromSkin()
	self:SetTextureInsetsFromSkin()
end


ZGV_DefaultSkin_MenuButton_Mixin = {}
function ZGV_DefaultSkin_MenuButton_Mixin:AssignTexture(set,key)
	set = set or self.textureset
	key = key or self.texturekey
	local but = ZGV.F.dig_in(ZGV.ButtonSets,set,key)
	if not but then error("MenuButton can't find proper textureset: "..set.." . "..key) end
	but:AssignToTexture(self.Icon)
end
function ZGV_DefaultSkin_MenuButton_Mixin:SetLabelFont()
	self.Text:SetFont(ZGV.Font,12)
	--if self.Check then 
	--	CHAIN(self.Check)
	--		:SetBackdrop(SkinData("NewToggle"))
	--		:SetBackdropColor(unpack(SkinData("NewToggleBackdropColor")))
	--		:SetBackdropBorderColor(unpack(SkinData("NewToggleBorderColor")))
	--		:Show()
	--end
end
function ZGV_DefaultSkin_MenuButton_Mixin:ApplySkin()
	self:AssignTexture()
	self:SetLabelFont()
	self.hilitex = self.hilitex or CHAIN(self:CreateTexture())
		:SetPoint("TOPLEFT",0,-1)
		:SetPoint("BOTTOMRIGHT",0,1)
	.__END
	self.hilitex:SetColorTexture(unpack(SkinData("ButtonHighlight")))
	self:SetHighlightTexture(self.hilitex)
end

--[=[
-------------------------
local Rdown,Tdown
function ZygorGuidesViewerFrame_OnKeyDown(self,value)
	local propagate=true
--[[	ZGV:Print("down "..value)
	if value=="LCTRL" then
		propagate=false
	elseif value=="R" then
		propagate=false
		Rdown=true
	elseif value=="T" then
		propagate=false
		Tdown=true
	end
	if Rdown and Tdown then print("R + T") end
--]]
	self:SetPropagateKeyboardInput(propagate)
end

function ZygorGuidesViewerFrame_OnKeyUp(self,value)
	--[[
	ZGV:Print("up "..value)
	if (value=="R") then Rdown=false end
	if (value=="T") then Tdown=false end
	--]]
end
--]=]

ZGV_DefaultSkin_GuideStar_Mixin = {}
function ZGV_DefaultSkin_GuideStar_Mixin:OnClick(mousebutton)

local active={}
	active[3] = ZGV.ButtonSets.RatingButtons_active.HAPPY
	active[2] = ZGV.ButtonSets.RatingButtons_active.INDIFFERENT
	active[1] = ZGV.ButtonSets.RatingButtons_active.UNHAPPY

	if ZGV.BugReport.GuideRating.score == nil or ZGV.BugReport.GuideRating.score ~= self.ButtonNumber then
		ZGV.BugReport.GuideRating.score = self.ButtonNumber
		ZGV.ButtonSets.RatingButtons.HAPPY:AssignToButton(ZGV.BugReport.GuideRating.GuideRatingViewer.face1)
		ZGV.ButtonSets.RatingButtons.INDIFFERENT:AssignToButton(ZGV.BugReport.GuideRating.GuideRatingViewer.face2)
		ZGV.ButtonSets.RatingButtons.UNHAPPY:AssignToButton(ZGV.BugReport.GuideRating.GuideRatingViewer.face3)

		ZGV.BugReport.GuideRating.GuideRatingViewer.face1:SetAlpha(0.3)
		ZGV.BugReport.GuideRating.GuideRatingViewer.face2:SetAlpha(0.3)
		ZGV.BugReport.GuideRating.GuideRatingViewer.face3:SetAlpha(0.3)

		active[self.ButtonNumber]:AssignToButton(self)
		ZGV.db.char.ratingscorecache[ZGV.CurrentGuide.title] = self.ButtonNumber
		self:SetAlpha(0.5)

		ZGV.BugReport.GuideRating.GuideRatingViewer.scroll.child:SetText("|cff888888"..L['viewer_special_rateexp'])

	else
		ZGV.db.char.ratingscorecache[ZGV.CurrentGuide.title] = nil
		ZGV.BugReport.GuideRating.score = nil
	
		ZGV.BugReport.GuideRating.GuideRatingViewer.scroll.child:SetText("")
	end
end

function ZGV_DefaultSkin_GuideStar_Mixin:OnEnter()
	ZGV.BugReport.GuideRating.GuideRatingViewer.face1:SetAlpha(0.3)
	ZGV.BugReport.GuideRating.GuideRatingViewer.face2:SetAlpha(0.3)
	ZGV.BugReport.GuideRating.GuideRatingViewer.face3:SetAlpha(0.3)
	if ZGV.BugReport.GuideRating.score == self.ButtonNumber then
		self:SetAlpha(0.6)
	else
		self:SetAlpha(0.4)
	end
	
	if self.ButtonNumber == 3 then
	ZGV.RatingTimer = ZGV:ScheduleTimer(function()
		CHAIN(GameTooltip):SetOwner(ZGV.BugReport.GuideRating.GuideRatingViewer.face1,"ANCHOR_TOP") :SetText(L['viewer_special_amazing']) :Show()
		end, 2)
	elseif self.ButtonNumber == 2 then
		ZGV.RatingTimer = ZGV:ScheduleTimer(function()
		CHAIN(GameTooltip):SetOwner(ZGV.BugReport.GuideRating.GuideRatingViewer.face2,"ANCHOR_TOP") :SetText(L['viewer_special_average']) :Show()
		end, 2)
	elseif self.ButtonNumber == 1 then
		ZGV.RatingTimer = ZGV:ScheduleTimer(function()
		CHAIN(GameTooltip):SetOwner(ZGV.BugReport.GuideRating.GuideRatingViewer.face3,"ANCHOR_TOP") :SetText(L['viewer_special_bad']) :Show()
		end, 2)
	end
end

function ZGV_DefaultSkin_GuideStar_Mixin:OnLeave()
	GameTooltip:Hide()
	if ZGV.RatingTimer then ZGV:CancelTimer(ZGV.RatingTimer) end
end