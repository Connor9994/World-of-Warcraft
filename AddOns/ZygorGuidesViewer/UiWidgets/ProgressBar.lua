local name,ZGV = ...

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

local FONT=ZGV.Font
local FONTBOLD=ZGV.FontBold
local L = ZGV.L
local CHAIN = ZGV.ChainCall

local ProgressBar = {}
ZGV.UI:RegisterWidget("ProgressBar",ProgressBar)

local SkinData = ZGV.UI.SkinData


function ProgressBar:New(parent,name,style)
	local ProgressBar = CHAIN(ZGV.CreateFrameWithBG("Button", name, parent))
		:SetBackdrop(SkinData("ProgressBarBackdrop"))
		:SetBackdropColor(unpack(SkinData("ProgressBarBackdropColor")))
		:SetBackdropBorderColor(unpack(SkinData("ProgressBarBackdropBorderColor")))
		:SetHeight(SkinData("ProgressBarHeight"))
		:SetWidth(100)
		:SetPoint("TOPLEFT")
		:SetScript("OnEnter",function (self)
			if not self.TextOnMouse then return end
			self.Text:Show()
			if self.Text.tooltip then
				GameTooltip:SetOwner(parent, "ANCHOR_BOTTOM")
				GameTooltip:ClearAllPoints()
				GameTooltip:ClearLines()
				GameTooltip:SetText(self.Text.tooltip)
				GameTooltip:Show()
			else
				GameTooltip:Hide()
			end
		end)
		:SetScript("OnLeave",function (self)
			if not self.TextOnMouse then return end
			self.Text:Hide()
			GameTooltip:Hide()
		end)
	.__END

	ProgressBar.ClipFrame = CHAIN(CreateFrame("Frame", nil, ProgressBar))
		:SetPoint("TOPLEFT",1,-1)
		:SetPoint("BOTTOMRIGHT",-1,1)
		:SetClipsChildren(true)
	.__END
	
	ProgressBar.Texture = CHAIN(ProgressBar.ClipFrame:CreateTexture(nil,"ARTWORK"))
		:SetWidth(1)
		:SetPoint("LEFT")
		:SetPoint("TOP")
		:SetPoint("BOTTOM")
		:SetTexture(SkinData("ProgressBarTextureFile"))
		:SetTexCoord(unpack(SkinData("ProgressBarTextureFileOffset")))
		:Hide()
		--:SetVertexColor(unpack(SkinData("ProgressBarColor")))
	.__END 

	ProgressBar.Decor = CHAIN(ProgressBar.ClipFrame:CreateTexture(nil,"ARTWORK"))
		:SetWidth(1)
		:SetPoint("TOP")
		:SetPoint("BOTTOM")
		:SetPoint("LEFT",ProgressBar.Texture,"RIGHT")
		:SetTexture(SkinData("ProgressBarTextureFile"))
		:Hide()
	.__END 
	ProgressBar.UseDecor = false

	ProgressBar.CapLeft = CHAIN(ProgressBar.ClipFrame:CreateTexture("ZygorCapLeft","OVERLAY"))
		:SetWidth(SkinData("ProgressBarWidth"))
		:SetHeight(SkinData("ProgressBarHeight"))
		:SetPoint("LEFT")
		:SetTexture(SkinData("ProgressBarCaps"))
		:SetTexCoord(0,1/2,0,1)
		:SetVertexColor(unpack(SkinData("ProgressBarCapsColor")))
	.__END 

	ProgressBar.CapRight = CHAIN(ProgressBar.ClipFrame:CreateTexture("ZygorCapRight","OVERLAY"))
		:SetWidth(SkinData("ProgressBarWidth"))
		:SetHeight(SkinData("ProgressBarHeight"))
		:SetPoint("RIGHT")
		:SetTexture(SkinData("ProgressBarCaps"))
		:SetTexCoord(1/2,1,0,1)
		:SetVertexColor(unpack(SkinData("ProgressBarCapsColor")))
	.__END 

	ProgressBar.TextContainer = CHAIN(CreateFrame("Frame", nil, ProgressBar))
		:SetAllPoints()
		:SetFrameLevel(ProgressBar.ClipFrame:GetFrameLevel()+1)
	.__END
	ProgressBar.Text = CHAIN(ProgressBar.TextContainer:CreateFontString())
		:SetPoint("TOPLEFT")
		:SetPoint("BOTTOMRIGHT")
		:SetFont(ZGV.Font,10,"OUTLINE, NORMAL")
	.__END 

	ProgressBar.CurrentProgress = -1

	ProgressBar.UseAnim = true
	ProgressBar.Steps = 25
	ProgressBar.Duration = 0.5

	ProgressBar.super = {}
	for f,fun in pairs(self) do  if type(fun)=="function" then
		if ProgressBar[f] then ProgressBar.super[f]=ProgressBar[f] end
		ProgressBar[f]=fun
	end end

	return ProgressBar
end

function ProgressBar:SetSize(w,h)
	self.super.SetSize(self,w,h)
	self.Decor:SetSize(h,h)
end

local pow = math.pow
local function easing(t, b, c, d)
	t = t / d - 1
	return c * (pow(t, 3) + 1) + b
end

function ProgressBar:SetPercent(value,mode)
	if value == self.CurrentProgress then return end
	if self.CurrentProgress<=0 then self.Target=1 end

	if self.ProgressTimer then -- if any previous animation is running, cancel it
		ZGV:CancelTimer(self.ProgressTimer)
		self.Texture:SetWidth(self.Target)
	end

	self.CurrentProgress = value
	
	
	local target = self:GetWidth()*self.CurrentProgress/100
	local current = self.Texture:GetWidth()

	-- if we are set to not show anim on first showing, enable anim for future, but set it to disabled for this run
	if self.UseAnim=="noinit" then
		self.UseAnim=true
		mode="noanim"
	end

	if not self.UseAnim or (mode=="nozero" and value==0) or (mode=="noanim") then
		if target <= 0 then
			self:HideBar()
		else
			self:ShowBar()
			self.Texture:SetWidth(target)
		end
		return
	end

	self.Step = 0
	self.Begin = current
	self.Change = target-current
	self.Period = self.Duration/self.Steps
	self.Target = target

	self.ProgressTimer = ZGV:ScheduleRepeatingTimer(function() 
		if self.Step == self.Steps then
			if self.Target > 0 then
				self:ShowBar()
				self.Texture:SetWidth(self.Target)
			else
				self:HideBar()
			end
			ZGV:CancelTimer(self.ProgressTimer)
			return
		end

		local step_width = easing(self.Step,self.Begin,self.Change,self.Steps)

		if step_width <= 0 then
			self:HideBar()
		else
			self:ShowBar()
			self.Texture:SetWidth(step_width)
		end


		self.Step = self.Step + 1
	end, self.Period)
end

function ProgressBar:ShowBar()
	self.Texture:Show()
	if self.UseDecor then self.Decor:Show() end
end

function ProgressBar:HideBar()
	self.Texture:Hide()
	if self.UseDecor then self.Decor:Hide() end
end

function ProgressBar:SetColor(r,g,b,a)
	self.Texture:SetVertexColor(r,g,b,a)
	self.Decor:SetVertexColor(r,g,b,a)
end

function ProgressBar:SetTexture(texture)
	self.Texture:SetTexture(texture)
	self.Decor:SetTexture(texture)
end

function ProgressBar:SetTextOnMouse(mode)
	if mode then
		self.TextOnMouse=true
		self.Text:Hide()
	else
		self.TextOnMouse=false
		self.Text:Show()
	end
end
		
function ProgressBar:SetText(text)
	self.Text:SetText(text)
end

function ProgressBar:SetTooltip(text)
	self.Text.tooltip = text
end

function ProgressBar:SetTextColor(r,g,b,a)
	self.Text:SetColor(r,g,b,a)
end

function ProgressBar:SetDecor(mode)
	local h = self:GetHeight()
	self.Decor:SetSize(h,h)
	self.Decor:SetTexCoord(unpack(SkinData("ProgressBarDecorFileOffset")))
	
	if mode~=0 then
		self.Decor:Show()
	else
		self.Decor:Hide()
	end
	self.UseDecor = mode~=0
end

function ProgressBar:SetAnim(mode)
	self.UseAnim = mode
end