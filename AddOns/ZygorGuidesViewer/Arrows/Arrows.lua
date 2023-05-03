local Pointer = ZGV.Pointer

ZygorGuidesViewer_ArrowSkin_Mixin = {}

function ZygorGuidesViewer_ArrowSkin_Mixin:GetDir()
	return ZGV.ARROWSDIR .. self.id .. "\\"
end

function ZygorGuidesViewer_ArrowSkin_Mixin:CreateFrame()
	if not self.frame then
		self.frame = CreateFrame("BUTTON","ZygorGuidesViewerPointerArrow_".. self.id,Pointer.ArrowFrameCtrl,"ZygorGuidesViewerFrame_Arrow_".. self.id .. "_Template,SecureHandlerStateTemplate")
		self.frame.skin_id = self.id
		self.frame.skin = self
		self.frame:Setup()
		self.frame:SetAttribute("_onstate-combathide", "if newstate == 'show' then self:Show(); else self:Hide(); end")
		self.frame:SetSize(50,50) -- adding SecureHandlerStateTemplate drops our xml defined size, set it again
	end
	return self.frame
end


ZygorGuidesViewerFrame_Arrow_Mixin = {}

function ZygorGuidesViewerFrame_Arrow_Mixin:OnLoad()
	self:ClearAllPoints()
	self:SetPoint("CENTER",ZygorGuidesViewerPointer_ArrowCtrl,"CENTER")
end

function ZygorGuidesViewerFrame_Arrow_Mixin:OnDragStart()
	ZygorGuidesViewerPointer_ArrowCtrl:StartMoving()
	self.dragging=true
end

function ZygorGuidesViewerFrame_Arrow_Mixin:OnDragStop()
	ZygorGuidesViewerPointer_ArrowCtrl:StopMovingOrSizing()
	self.dragging=nil
	ZGV.F.SaveFrameAnchor(ZygorGuidesViewerPointer_ArrowCtrl,"anchor_arrow")
end

function ZygorGuidesViewerFrame_Arrow_Mixin:OnMouseWheel(delta)
	if IsControlKeyDown() then
		if delta>0 then delta=0.2 else delta=-0.2 end
		ZGV.db.profile.arrowscale = ZGV.db.profile.arrowscale + delta
		if ZGV.db.profile.arrowscale<0.8 then ZGV.db.profile.arrowscale=0.8 end
		if ZGV.db.profile.arrowscale>1.6 then ZGV.db.profile.arrowscale=1.6 end
		self:SetScale(ZGV.db.profile.arrowscale)
	end
end

function ZygorGuidesViewerFrame_Arrow_Mixin:OnShow(delta)
	Pointer.lastturntime=GetTime()
end

function ZygorGuidesViewerFrame_Arrow_Mixin:GetDistTxt(dist)
	if not dist or dist=="far" or ((tonumber(dist or 0) or 0)>9999998) then return self:GetFarText()
	elseif type(dist)=="string" then return dist
	else  return ZGV.FormatDistance(dist)
	end
end

function ZygorGuidesViewerFrame_Arrow_Mixin:GetFarText()
	local way = self.waypoint
	if not way then return end
	local m = way.m or 0

	local _,_,lastm = LibRover:GetPlayerPosition()
	local lastc = ZGV.GetMapContinent(lastm)
	return (ZGV.GetMapNameByID(way.m) or ("(bad map #%d)"):format(way.m))
		--[[ bfa alpha disabled for now
		  .. (way.c and way.c~=lastc and way.c>0 and way.c~=way.m and (", " .. (ZGV.GetMapNameByID(way.c) or "?")) or "")  -- continent, if applicable
		  --]]
end

function ZygorGuidesViewerFrame_Arrow_Mixin:GetETATxt(eta)
	if eta and tonumber(eta) and eta<7200 and eta>0 then
		local subsec=GetTime()%1
		local etacolor = (eta<10 and GetUnitSpeed("player")>0 and subsec>0.7) and "ffff7700" or "ffffbb00"
		return ("  |c".. etacolor .. Pointer.FormatTime(eta) .. "|r")
	elseif type(eta)=="string" then
		return eta
	end
end

local rad2deg = 180/math.pi
function ZygorGuidesViewerFrame_Arrow_Mixin:SetupSprites()
	local opt=self.options

	local arrowskindir = self.skin:GetDir()
	local subDir = function(v)
		if not v.GetTexture then return end
		local t = v:GetTexture() or v.TextureTemplate
		if type(t)~="string" then return end
		v:SetTexture(t:gsub("$./",arrowskindir),false)
	end
	for k,v in ipairs{self:GetRegions()} do  subDir(v)  end
	for k,v in ipairs{self.arrow:GetRegions()} do  subDir(v)  end

	self.arrow.arr:CreateSprite(opt.spritecount, opt.spr_w,opt.spr_h, opt.img_w,opt.img_h)
	if opt.mirror then self.arrow.arr:SetBounce(true) end
	self:ConvertSpritesForArrows(self.arrow.arr)
	if self.arrow.arrspecular then self.arrow.arrspecular.sprite_coords=self.arrow.arr.sprite_coords end
end

-- turn 1..n sprites into 0..359 base
function ZygorGuidesViewerFrame_Arrow_Mixin:ConvertSpritesForArrows(spritetex)
	local opt=self.options
	local step
	if not opt.mirror then step=360/opt.spritecount else step=360/(opt.spritecount*2-2) end
	local new_coords = {}
	for deg=359,0,-1 do
		new_coords[deg]=spritetex.sprite_coords[math.floor(deg/step)+1]
	end
	spritetex.sprite_coords = new_coords
end

function ZygorGuidesViewerFrame_Arrow_Mixin:SetupColors(set)
	local _o = self.options
	local color_gradient = _o.color_gradients and _o.color_gradients[set or _o.color_gradients._default] or _o.color_gradient
	if not color_gradient and _o.ar then --convert old [abc][rgb]
		color_gradient = {
			{at=0,    r=_o.ar, g=_o.ag, b=_o.ab},
			{at=0.5,  r=_o.br, g=_o.bg, b=_o.bb},
			{at=1,    r=_o.cr, g=_o.cg, b=_o.cb},
		}
	end
	
	if color_gradient then
		self.colors = {}
		local gstep=1/200  -- should be 180, but just in case...
		local prev_grad=color_gradient[1]
		for gi=2,#color_gradient do
			local grad=color_gradient[gi]
			for c=prev_grad.at,grad.at,gstep do
				local cperc = (c-prev_grad.at)/(grad.at-prev_grad.at)
				if color_gradient.squared then cperc=cperc*cperc end
				self.colors[floor(c*180)]={ZGV.F.mix4(prev_grad.r,prev_grad.g,prev_grad.b,1, grad.r,grad.g,grad.b, cperc)}
			end
			prev_grad=grad
		end
	end
end

local mabs,mfloor=math.abs,math.floor
function ZygorGuidesViewerFrame_Arrow_Mixin:GetArrowColors(angle_rad,dist)
	if self.colors then
		if ZGV.db.profile.arrowcolordist then
			Pointer.initialdist = Pointer.initialdist or dist
			distperc=max(0,1-(dist/min(max(100,Pointer.initialdist or 0),500)))
		else
			angleperc = mabs(1-angle_rad*0.3183)  -- 1/pi  ;  0=target backwards, 1=target ahead
			--angleperc = angleperc * angleperc
			--perc,tier = Pointer.CalculateDirectionTiers(perc,0,1-spangood,1-spangood,0.95)
		end
		local deg = max(0,min(179,mfloor((distperc or angleperc)*180)))
		return unpack(self.colors[deg])
		--self.arrow.arrspecular:SetVertexColor(r,g,b)
	end
end

function ZygorGuidesViewerFrame_Arrow_Mixin:ShowText (title,dist,eta,status)
	self.stairs=false

	--Pointer.ArrowFrame_Proto_ShowText(self)
	local disttxt = self:GetDistTxt(dist)
	local etatxt = self:GetETATxt(eta)

	local distcolor
	if type(dist)=="number" then
		local perc=max(0,1-(dist/min(max(100,Pointer.initialdist or 0),500)))
		local r,g,b = ZGV.gradient3(perc, 1.0,0.5,0.4, 1.0,0.9,0.5, 0.7,1.0,0.6, 0.7)
		distcolor = ("|cff%02x%02x%02x"):format(r*255,g*255,b*255)
	else
		distcolor = "|cffffff00"
	end

	self.title:SetText(
		(title and "|cffffffff"..title.."|r\n" or "") ..
		(disttxt and distcolor..disttxt.."|r" or "") ..  (etatxt or "") ..
		(status and "|n"..status or "") ..
		(self.notice and "|n".. self.notice or "")
	)
end

--[[
	-- saving for posterity:
	
	-- tiny turns	
	if self.options.tiny_turns then
		local frac_angle = angle%step
		
		if (angle<90 or angle>270) then
			if frac_angle>step*0.5 then frac_angle=frac_angle-step end
			local q=((angle<180) and angle or 360-angle)/180
			frac_angle=frac_angle*(1+q*0.7)
			
			frac_angle = frac_angle * (1+cos(angle*2))/2
		else
			frac_angle=0
		end
		
		self.turn.anim:SetRadians(frac_angle/rad2deg)  self.turn:Play()
	end

	-- precision dot
	if self.precise.turn and angleperc>=1-precision_range then
		-- precision dot
		local precangle = angle
		if precangle>3.141592 then precangle=precangle-6.283185 end
		precangle = precangle * 8  -- precision!
		while precangle>6.283185 do precangle=precangle-6.283185 end
		while precangle<0 do precangle=precangle+6.283185 end

		self.precise:SetAlpha((angleperc-1+precision_range)*precision_mult)
		self.precise.turn.anim:SetRadians(precangle)
		self.precise.turn:Play()
	else
		self.precise:SetAlpha(0)
	end
	
]]

local fadespeed=99
local THROTTLE=1/30  --NOTE: this is the crossfading speed, NOT the rotation update interval.
local elapsed_sum=0
local xfade=1 -- "-1" is special, "0" is none, "1" is arrow.
function ZygorGuidesViewerFrame_Arrow_Mixin:OnUpdate (elapsed)
	do return end -- no more fading
	elapsed_sum=elapsed_sum+elapsed
	if elapsed_sum<THROTTLE then return end
	elapsed=elapsed_sum
	elapsed_sum=0

	local target=self.targetdisplay
	local xfade_target
	if target=="none" then xfade_target=0
	elseif target=="arrow" then xfade_target=1
	else xfade_target=-1 --special
	end
	
	if xfade~=xfade_target then xfade=xfade+(xfade_target>xfade and 1 or -1)*fadespeed*elapsed end
	if xfade<-1 then xfade=-1 end  if xfade>1 then xfade=1 end  if xfade>-0.05 and xfade<0.05 and xfade_target==0 then xfade=0 end

	if xfade>0 then self.special:SetAlpha(0) self.arrow:SetAlpha(xfade) return end
	if xfade<0 then self.special:SetAlpha(-xfade) self.arrow:SetAlpha(0) return end
	self.special:SetAlpha(0) self.arrow:SetAlpha(0)
end


function ZygorGuidesViewerFrame_Arrow_Mixin:GetPrecisionMeter(angle)
	local precise=0
	local precise_range = self.options.precise and self.options.precise.range
	if not precise_range then return 0 end
	if angle<precise_range then precise=1-angle/precise_range
	elseif angle>360-precise_range then precise = 1-(360-angle)/precise_range end
	return precise
end

