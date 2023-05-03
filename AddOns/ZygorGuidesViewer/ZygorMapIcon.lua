ZygorGuidesViewerMapIcon_Mixin = {}

local RADIUS_ADJ = -5

function ZygorGuidesViewerMapIcon_Mixin:OnUpdate(elapsed)
	if self:IsDragging() then
		local minimap = self:GetParent()
		local radius = (minimap:GetWidth() + self:GetWidth()) / 2
		local width = self:GetWidth()
		local x,y = minimap:GetCenter()
		local sc = minimap:GetEffectiveScale()
		local mx,my = GetCursorPosition() --self:GetCenter()
		mx=mx/sc  my=my/sc
		local dx,dy=mx-x,my-y
		local dist = (dx*dx+dy*dy)^0.5

		local radmin=radius + RADIUS_ADJ
		local radsnap=radius+width*0.2
		local radpull=radius+width*0.7
		local radfre=radius+width

		local radclamp
		if dist<=radsnap then self.snapped=true radclamp=radmin
		elseif dist<radpull and self.snapped then radclamp=radmin
		elseif dist<radfre and self.snapped then radclamp=radmin+(dist-radpull)/2
		else self.snapped=false -- dobby is freeee
		end

		if radclamp then
			dx=dx/(dist/radclamp)
			dy=dy/(dist/radclamp)
		end

		self:ClearAllPoints()
		self:SetPoint("CENTER",self:GetParent(),"CENTER",dx,dy)
	end
end

function ZygorGuidesViewerMapIcon_Mixin:Setup()
	ZGV.F.AssignButtonTexture(self,ZGV.SKINSDIR.."minimap-icon",1,1)
	--ZygorGuidesViewerMapIcon.back:SetTexture(ZGV.SKINSDIR.."zglogo-back")
end

function ZygorGuidesViewerMapIcon_Mixin:SetLoading(enable)
	if enable then
		self.spinner:SetTexture(ZGV.SKINSDIR.."loading")
		self.spinner:Hide()
		self.Loop:Play()
	else
		self.spinner:Hide()
	end
end

function ZygorGuidesViewerMapIcon_Mixin:OnClick(button)
	if button=="LeftButton" then
		if ZGV.Config.Running or ZGV.Tutorial.Running then return end
		ZygorGuidesViewer:ToggleFrame()
	else
		if ZGV.ProfilerMode and IsAltKeyDown() and IsControlKeyDown() then
			-- TODO find a way to reuse the proc from OnEnter
			-- this is really ugly and I'm ashamed ~aprotas
			GameTooltip:Hide()
			GameTooltip:SetOwner(self, "BOTTOMLEFT")
			GameTooltip:SetText(ZGV.L['name'])
			GameTooltip:AddLine(self.ToolTipPair[ZGV.ProfilerRunning or false],0,1,0,1)
			GameTooltip:Show()
			ZygorGuidesViewer:ProfilerReport()
		else
			ZygorGuidesViewer:OpenOptions()
		end
	end
end
function ZygorGuidesViewerMapIcon_Mixin:OnDragStart()
	self:StartMoving()
end

function ZygorGuidesViewerMapIcon_Mixin:OnDragStop()
	self:StopMovingOrSizing()
end

function ZygorGuidesViewerMapIcon_Mixin:OnLoad()
	self:RegisterForClicks("LeftButtonUp","RightButtonUp")
	self:RegisterForDrag("LeftButton")
	if ZGV.ProfilerMode or GetCVar("scriptProfile")=="1" then -- whichever event happens first
		local start_t=ZGV.L['minimap_tooltip']..ZGV.L['minimap_tooltip_ex1']
		local stop_t=ZGV.L['minimap_tooltip']..ZGV.L['minimap_tooltip_ex2']
		self.ToolTipPair = { [true]=stop_t,
								[false]=stop_t }
	else
		local tool=ZGV.L['minimap_tooltip']
		self.ToolTipPair = { [true]=tool,
								[false]=tool }
	end
end

function ZygorGuidesViewerMapIcon_Mixin:OnEnter()
	GameTooltip:SetOwner(self, "BOTTOMLEFT")
	GameTooltip:SetText(ZGV.L['name'])
	GameTooltip:AddLine(self.ToolTipPair[ZGV.ProfilerRunning or false],0,1,0,1)
	GameTooltip:Show()
end

function ZygorGuidesViewerMapIcon_Mixin:OnLeave()
	GameTooltip:Hide()
end