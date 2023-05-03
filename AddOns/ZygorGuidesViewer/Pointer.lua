local name,ZGV = ...

-- GLOBAL DEBUG_ROGUE_DATA_IN_WAYPOINTS,DoSpoo,EasyFork,FIXMAPZOOM,Spoo,UIDropDownFork_SetAnchor,UIDropDownFork_SetWidth,ZygorGuidesViewerPointer_ArrowCtrl,ZygorGuidesWriterFrame

local Pointer = {}
ZGV.Pointer = Pointer

local  _G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math,wipe,abs,ceil,max,sqrt =
	_G,assert,table,string,tinsert,tonumber,tostring,type,ipairs,pairs,setmetatable,math,wipe,abs,ceil,max,sqrt

local L=ZGV.L

local BZL=ZGV.BZL
local BZR=ZGV.BZR

local Mxlt = ZGV.MapCoords.Mxlt
local Mdist = ZGV.MapCoords.Mdist
local Mangle = ZGV.MapCoords.Mangle

local CHAINC = ZGV.ChainCallClean
local ALLC = ZGV.AllCallClean

Pointer.nummanual = 0

Pointer.waypoints = {}

local HBD = ZGV.HBD
local HBDPins = ZGV.HBDPins

local LibRover = LibStub("LibRover-1.0")

local unusedMarkers = {}
Pointer.unusedMarkers = unusedMarkers

local lastminimapdist=99999
local minimapcontrol_suspension=0
local minimap_lastset = 0

local default_antspacing_world = 40
local default_antspacing_mini = 40

local last_distance=0
local last_speed=0
local speeds={}
local stoptime=0
local avgspeed=0
local eta_elapsed=0

local cuedinged=nil

local inscale = 300

local ZGV_MapsOnDifferentFloors=ZGV.MapsOnDifferentFloors

local zone_aliases = {
}


local submap_cache = nil

local MapFloorCountCache

--[[
local hardcoded_defaults = {
	[1014] = 10, -- thank you blizzard for making legion dala have default floor not being the lowest
	[1090] = 0,  -- warlock scenario tolbarad
	[32] = 0,  -- deadwind pass
	[914] = 0, -- dagger in the dark scenario
	[937] = 0, -- dark heart of pandaria scenario
	}

function ZGV:SanitizeMapFloor(map,flr,is_current)
	local mapData = HBD.mapData[map]

	if not mapData then return flr or 0 end

	if flr and mapData.floors and mapData.floors[flr] then return flr end
	if flr and flr>0 then return flr end
	if flr==0 and mapData.numFloors==0 then return flr end

	local lowest

	if hardcoded_defaults[map] then
		lowest = hardcoded_defaults[map]
	else
		if mapData.floors then for i,v in pairs(mapData.floors) do
		    if not lowest or i<lowest then lowest=i end
		end end
	end
        return lowest or 0
end
--]]


function ZGV:SanitizeMapFloor(m,f)
	do return m,f end
	if type(m)=="number" then return m end -- we are already sane, thank you
	if not m then error("SanitizeMapFloor: missing map "..m) return end

	local zonedata = LibRover.data.MapIDsByName[m]
	if not zonedata then error("SanitizeMapFloor: unknown map "..m) return end

	local f = f or zonedata.default or next(zonedata)
	if not zonedata then error("SanitizeMapFloor: unknown floor "..f) return end
	return f,zonedata[f]
end


local ControlFrame_Mixin = {}
function ControlFrame_Mixin:OnEvent(event,...)
	if event=="TAXIMAP_OPENED" then
		if not ZGV.db.profile.highlighttaxi then return end
		if not LibRover.RESULTS
		or (not ZGV.db.profile.enable_viewer and LibRover.extradata and LibRover.extradata.waypoint and LibRover.extradata.waypoint.type=="way") then return end -- ignore if guides are hidden

		local arg1=...
		if (arg1 == Enum.UIMapSystem.Taxi) then
			Pointer:HighlightTaxiDestination()
		else
			Pointer:HighlightFlightMapDestination()
		end
	elseif event=="ZGV_STEP_CHANGED" then
		if Pointer.SavePointsStarted  then
			Pointer:ClearWaypoints("manual")
			ZGV:ShowWaypoints()
		end
	elseif event=="ZGV_INITIAL_GUIDE_LOADED" then
		Pointer:LoadSavedPoints()
	end
end


function Pointer:HighlightTaxiDestination()
	if not TaxiFrame.ZygorGuidesViewer_TaxiMarker then
		TaxiFrame.ZygorGuidesViewer_TaxiMarker = CreateFrame("FRAME", nil, TaxiFrame, "ZygorGuidesViewer_TaxiMarker_Template")
	end
	TaxiFrame.ZygorGuidesViewer_TaxiMarker:Hide()

	if not self.ArrowFrame:IsVisible() then return end

	local taxinode = (function() -- find destination taxi in results
		for k,node in ipairs(LibRover.RESULTS) do
			if node and node.type=="taxi" and (node.taxiFinal or (node.taxioperator=="argusportal" and node.a_b__c_d=="taxi_argusportal__taxi_argusportal") or (node.taxioperator=="zerethportal" and node.a_b__c_d=="taxi_zerethportal__taxi_zerethportal")) then -- dirty hack - highlight if it is last node, or layover point when using argus portals
				return node
			end
		end
	end)()
	if not taxinode then return end

	local taxislot = (function() -- find corresponding slot in taxi map
		if C_TaxiMap.GetAllTaxiNodes then
			local cont = ZGV:GetCurrentMapContinent()
			for _,tnode in ipairs(C_TaxiMap.GetAllTaxiNodes(cont)) do
				if taxinode.taxinodeID==tnode.nodeID then 
					return tnode.slotIndex
				end
			end
		end
		
		for i=1,NumTaxiNodes() do
			local x,y=TaxiNodePosition(i)
			local tag = ("%03d:%03d"):format(x*1000,y*1000)

			if TaxiNodeGetType(i)~="NONE" and (taxinode.taxitag==tag or TaxiNodeName(i):find(taxinode.name,0,true)) then
				return i
			end
		end
	end)()
	if not taxislot then return end

	local pin = _G["TaxiButton"..taxislot]
	local id = pin:GetID()  -- should be the same as 'i', but...

	-- point to it
	--glow:SetSize(64,64)  glow:SetPoint("CENTER",b,"CENTER",8,-7)
	ZGV:ScheduleTimer(function()
		TaxiFrame.ZygorGuidesViewer_TaxiMarker:PointTo(pin,pin)
	end,0.5)

	-- hop on automatically?
	self:Debug("Would TakeTaxiNode(%d) #%d to %s (tag %s)",id,taxislot,TaxiNodeName(taxislot),taxinode.taxitag)
	if ZGV.db.profile.autotaxi and id and ZGV.Frame:IsVisible() and not IsAltKeyDown() then
		Dismount()
		GetNumRoutes(id) -- dummy call! but needed in 6.1 for TakeTaxiNode to work. WTF Blizzard...
		TakeTaxiNode(id)
	end

end

function Pointer:HighlightFlightMapDestination()
	if Pointer.DebugHighlight then print("HighlightFlightMapDestination starting") end
	if not FlightMapFrame.ZygorGuidesViewer_TaxiMarker then
		if Pointer.DebugHighlight then print("HFMD set up glow") end
		FlightMapFrame.ZygorGuidesViewer_TaxiMarker = CreateFrame("FRAME", nil, FlightMapFrame, "ZygorGuidesViewer_TaxiMarker_Template")
	end
	FlightMapFrame.ZygorGuidesViewer_TaxiMarker:Hide()

	if not self.ArrowFrame:IsVisible() then return end

	-- delay if FlightMapFrame hasn't initialized yet
	if not FlightMapFrame.pinPools.FlightMap_FlightPointPinTemplate then return ZGV:ScheduleTimer(function() self:HighlightFlightMapDestination() end,0.1) end

	if Pointer.DebugHighlight then print("HFMD route valid") end

	local taxinode = (function() -- find destination taxi in results
		for k,node in ipairs(LibRover.RESULTS) do
			if node and node.type=="taxi" and (node.taxiFinal or (node.taxioperator=="argusportal" and node.a_b__c_d=="taxi_argusportal__taxi_argusportal") or (node.taxioperator=="zerethportal" and node.a_b__c_d=="taxi_zerethportal__taxi_zerethportal")) then -- dirty hack - highlight if it is last node, or layover point when using argus portals
				return node
			end
		end
	end)()
	if not taxinode then return end

	if Pointer.DebugHighlight then print("HFMD found node %d for highlight",taxinode.taxinodeID) end

	local function getpin(nodeID) -- find corresponding pin on map
		for pin,_ in pairs(FlightMapFrame.pinPools.FlightMap_FlightPointPinTemplate.activeObjects) do
			if (pin.taxiNodeData and pin.taxiNodeData.nodeID)==nodeID then 
				return pin
			end
		end
	end
	local pin = getpin(taxinode.taxinodeID)
	if not pin then return end

	local taxinodestart = (function() -- find starting taxi in results
		for k,node in ipairs(LibRover.RESULTS) do
			if node and node.type=="taxi" then
				return node
			end
		end
	end)()

	-- zoom out if target is in a different zone
	self:Debug("Taxizoom: starting")
	if taxinodestart then
		self:Debug("Taxizoom: nodestart found")
		local pinstart = getpin(taxinodestart.taxinodeID)
		if pinstart then
			local mapID = GetTaxiMapID()
			local sx,sy = pinstart.normalizedX,pinstart.normalizedY
			local ex,ey = pin.normalizedX,pin.normalizedY
			local smapid = sx and (C_Map.GetMapInfoAtPosition(mapID, sx,sy) or {}).mapID or taxinodestart.m
			local emapid = ex and (C_Map.GetMapInfoAtPosition(mapID, ex,ey) or {}).mapID or taxinode.m
			self:Debug(("Taxizoom: Zooming from map %d (%d,%d) to %d (%d,%d)"):format(smapid or 0,sx*100,sy*100,emapid or 0,ex*100,ey*100))
			if smapid and emapid and smapid~=emapid --[[and FlagsUtil.IsSet(subMapInfo.flags, Enum.UIMapFlag.FlightMapAutoZoom) --]] then
				local centerX, centerY = MapUtil.GetMapCenterOnMap(emapid, mapID);
				if centerX==0 then centerX,centerY=ex,ey end

				self:ZoomFlightMapToCoords(centerX,centerY)
			end
		end
	end

	if Pointer.DebugHighlight then print("HFMD found pin %d for highlight",pin.taxiNodeData.nodeID) end

	-- point to it
	ZGV:ScheduleTimer(function()
		FlightMapFrame.ZygorGuidesViewer_TaxiMarker:PointTo(pin,pin)
	end,0.5)
	
	-- take auto taxi
	if ZGV.db.profile.autotaxi and pin.taxiNodeData.slotIndex and ZGV.Frame:IsVisible() and not IsAltKeyDown() then
		Dismount()
		--GetNumRoutes(index) -- dummy call! but needed in 6.1 for TakeTaxiNode to work. WTF Blizzard...
		TakeTaxiNode(pin.taxiNodeData.slotIndex)
	end

end

function Pointer:ZoomFlightMapToCoords(x,y)
	ZGV:Print(("Zooming map to %d %d"):format(x*100,y*100))
	FlightMapFrame:ZoomOut()
	local ignoreScaleRatio = true;
	--FlightMapFrame:InstantPanAndZoom(FlightMapFrame:GetScaleForMaxZoom(), x, y, ignoreScaleRatio);
	ZGV:ScheduleTimer(function() FlightMapFrame:PanAndZoomTo(x, y) end, 0.2)
	ZGV:ScheduleTimer(function() FlightMapFrame:ZoomIn() end, 0.4) -- in case PanAndZoomTo didn't start zooming
end

function Pointer:Startup()

	self:SetArrowSkin(ZGV.db.profile.arrowskin)

	if ZGV.db.profile.anchor_arrow then
		ZGV.F.SetFrameAnchor(ZygorGuidesViewerPointer_ArrowCtrl,ZGV.db.profile.anchor_arrow)
	end

	self.Icons:SetAntColorsFromOptions()

	--[[
	self.EventFrame = CreateFrame("FRAME")
	self.EventFrame:Show()
	self.EventFrame:SetScript("OnEvent",PointerEventFrame_OnEvent)
	self.EventFrame:RegisterEvent("WORLD_MAP_UPDATE")
	--]]

	if not self.mapLinePool then self.mapLinePool = CreateFramePool("FRAME", WorldMapFrame:GetCanvas(), "ZygorGuidesViewer_MapLineTemplate") end
	if not self.mapLinePoolMini then self.mapLinePoolMini = CreateFramePool("FRAME", Minimap, "ZygorGuidesViewer_MapLineTemplate") end

	local worldMap_TargetFrame = WorldMapButton

	worldMap_TargetFrame=WorldMapFrame.ScrollContainer.Child
	self.OverlayFrame = CHAINC(CreateFrame("FRAME","ZygorGuidesViewerPointerOverlay",worldMap_TargetFrame))
		:SetAllPoints(true)
		:SetFrameStrata("MEDIUM")
		:SetFrameLevel(1)
		.__END

	if ZGV.IsClassic or ZGV.IsClassicTBC or ZGV.IsClassicWOTLK then
		self.OverlayFrame:SetFrameStrata("FULLSCREEN")
	end

	
	self.ControlFrame = Mixin(CreateFrame("FRAME"),ControlFrame_Mixin)
	CHAINC(self.ControlFrame)
		:SetScript("OnEvent",self.ControlFrame.OnEvent)
		:RegisterEvent("TAXIMAP_OPENED")
	ZGV:AddMessageHandler("ZGV_STEP_CHANGED",self.ControlFrame.OnEvent)
	ZGV:AddMessageHandler("ZGV_INITIAL_GUIDE_LOADED",self.ControlFrame.OnEvent)

	--hooksecurefunc("WorldMapButton_OnClick",ZGV.Pointer.hook_WorldMapButton_OnClick)

	ZGV:ScheduleRepeatingTimer(function()  if Pointer:IsCorpseArrowNeeded() then Pointer:DoCorpseCheck() end  end,3.0)

	--[[
	local texture = overlay:CreateTexture("ZygorGuidesViewerPointerOverlayTexture","OVERLAY")
	texture:SetAllPoints(true)
	--texture:SetTexture(ZGV.DIR .. "\\Maps\\deadmines")
	texture:SetTexCoord(0,0.975,0,0.65)
	texture:Hide()
	overlay.texture = texture

	local youarehere = overlay:CreateTexture("ZygorGuidesViewerPointerOverlayYouarehere","OVERLAY")
	youarehere:SetTexture(ZGV.DIR .. "\\Skins\\minimaparrow-green-dot")
	overlay.youarehere = youarehere
	--]]

	self:UpdateArrowVisibility()

	--hooksecurefunc("WorldMapFrame_OnShow",ZGV.Pointer.hook_WorldMapFrame_OnShow)


	--WorldMapFrame.PlayerCoord = WorldMapFrame:CreateFontString(nil,"ARTWORK","GameFontHighlightSmall")
	--WorldMapFrame.CursorCoord = WorldMapFrame:CreateFontString(nil,"ARTWORK","GameFontHighlightSmall")

	--WorldMapFrame.PlayerCoord:SetText("Player")
	--WorldMapFrame.CursorCoord:SetText("Cursor")

	--ZGV.ScheduleRepeatingTimer(self,"FixMapLevel", 1.0)

	
	if ZGV.db.profile.custom_minimap_arrow then self:SetMinimapPlayerTexture() end  -- 2022-11-07: option not implemented. Kinda on purpose, at this point.

	self.ready = true

	self:DoCorpseCheck("startup")

	Pointer:RefreshDynamicValues()

	-- Karazhan Catacombs coord fix
	--[[ bfa alpha change
	ZGV.HBD.mapData[32].numFloors=1
	ZGV.HBD.mapData[32].floors[1] = {[1]=337.5, [2]=225, [3]=-1731.25, [4]=-10810, instance=0}

	ZGV.HBD.mapData[20].numFloors=2
	ZGV.HBD.mapData[20].floors[0] = {[1]=ZGV.HBD.mapData[20][1], [2]=ZGV.HBD.mapData[20][2], [3]=ZGV.HBD.mapData[20][3], [4]=ZGV.HBD.mapData[20][4], instance=0}
	ZGV.HBD.mapData[20].floors[2] = {[1]=649, [2]=433, [3]=2579.5, [4]=2200.5, instance=0}
	--]]

	--hooksecurefunc("WatchFrameQuestPOI_OnClick",Pointer.QuestWatchPOI_PointToMe)
end

local function poi_onworldmap(point,mapid)
	if point.m==mapid then return true end
	local mapinfo = ZGV.GetMapInfo(mapid)
	if mapinfo and (mapinfo.mapType==Enum.UIMapType.Continent or mapinfo.mapType==Enum.UIMapType.World or mapinfo.mapType==Enum.UIMapType.Cosmic) then return false end
	local valid_children = ZGV.GetMapChildren(mapid)
	return valid_children[point.m]
end

Pointer.iconScale = 1  -- updated by :RescaleMarkers
Pointer.iconScaleBase = 0.8
Pointer.Icons = {
	crosshair = { tex={file="mapicons",coords={0.5,1,0,0.5},r=1,g=1,b=1}, size=30, alpha=0.5, minisize=35, minimap_alpha=0.5, rotates=false, edgetex={file="mapicons",coords={0,0.5,0.5,1},r=1,g=1,b=1}, edgesize=20, spinner=true, onminimap="always" },
	graydot = { tex={file="mapicons",coords={0.5,1,0,0.5},r=0.7,g=0.7,b=0.7}, size=30, minisize=35, rotates=false, edgetex={file="mapicons",coords={0,0.5,0.5,1},r=1,g=1,b=1}, zedgesize=1, spinner=true, desat=1, onminimap="always" },
	arrow = { tex={file="mapicons",coords={0.5,1,0.5,1},r=1,g=1,b=1}, size=30, minisize=30, rotates=true, edgetex={file="mapicons",coords={0,0.5,0.5,1},r=1,g=1,b=1}, zedgesize=1 },
	greendotbig = { tex={file="mapicons",coords={0.0,0.5,0.0,0.5},r=254/255,g=97/255,b=0/255}, size=40, alpha=1.0, minisize=25, minimap_alpha=1.0, rotates=false, edgetex={file="mapicons",coords={0,0.5,0.5,1},r=1,g=1,b=1}, edgesize=20, onminimap="always" },  -- actually orange
	
	ant =	     { tex={file="mapicons",coords={0,0.5,0,0.5},r=1,g=1,b=1},     alpha=0.8, size=20, minisize=15, rotates=false, edgetex=nil, edgesize=1 },
	ant_taxi =   { tex={file="mapicons",coords={0,0.5,0,0.5},r=0.4,g=1,b=0},   alpha=0.8, size=20, minisize=15, rotates=false, edgetex=nil, edgesize=1 },
	ant_ship =   { tex={file="mapicons",coords={0,0.5,0,0.5},r=0,g=0.7,b=1},   alpha=0.8, size=20, minisize=15, rotates=false, edgetex=nil, edgesize=1 },
	ant_portal = { tex={file="mapicons",coords={0,0.5,0,0.5},r=0.8,g=0.3,b=1}, alpha=0.8, size=20, minisize=15, rotates=false, edgetex=nil, edgesize=1 },
	ant_flying = { tex={file="mapicons",coords={0,0.5,0,0.5},r=1,g=0.8,b=0},   alpha=0.8, size=20, minisize=15, rotates=false, edgetex=nil, edgesize=1 },
	ant_zygorange = { tex={file="mapicons",coords={0,0.5,0,0.5},r=254/255,g=97/255,b=0},   alpha=0.8, size=20, minisize=15, rotates=false, edgetex=nil, edgesize=1 },

	-- Dynamic values are handled in RefreshDynamicValues()
	treasure          = { tex={file="poi_icons",coords={0,   1/8, 0,   1/2} }, onworldmap=poi_onworldmap, alpha=1, size=20, minisize=17, rotates=false, edgetex=nil, edgesize=1},
	treasure_on       = { tex={file="poi_icons",coords={0,   1/8, 1/2, 1  } }, onworldmap=poi_onworldmap, alpha=1, size=20, minisize=17, rotates=false, edgetex=nil, edgesize=1},
	rare              = { tex={file="poi_icons",coords={1/8, 2/8, 0,   1/2} }, onworldmap=poi_onworldmap, alpha=1, size=20, minimap_alpha=0.5, minisize=17, rotates=false, edgetex=nil, edgesize=1},
	rare_on           = { tex={file="poi_icons",coords={1/8, 2/8, 1/2, 1  } }, onworldmap=poi_onworldmap, alpha=1, size=20, minimap_alpha=0.5, minisize=17, rotates=false, edgetex=nil, edgesize=1},
	battlepet         = { tex={file="poi_icons",coords={2/8, 3/8, 0,   1/2} }, onworldmap=poi_onworldmap, alpha=1, size=20, minisize=17, rotates=false, edgetex=nil, edgesize=1 },
	battlepet_on      = { tex={file="poi_icons",coords={2/8, 3/8, 1/2, 1  } }, onworldmap=poi_onworldmap, alpha=1, size=20, minisize=17, rotates=false, edgetex=nil, edgesize=1 },
	achievement       = { tex={file="poi_icons",coords={3/8, 4/8, 0,   1/2} }, onworldmap=poi_onworldmap, alpha=1, size=20, minimap_alpha=0.5, minisize=17, rotates=false, edgetex=nil, edgesize=1 },
	achievement_on    = { tex={file="poi_icons",coords={3/8, 4/8, 1/2, 1  } }, onworldmap=poi_onworldmap, alpha=1, size=20, minimap_alpha=0.5, minisize=17, rotates=false, edgetex=nil, edgesize=1 },
	questobjective    = { tex={file="poi_icons",coords={4/8, 5/8, 0,   1/2} }, onworldmap=poi_onworldmap, alpha=1, size=20, minimap_alpha=0.5, minisize=17, rotates=false, edgetex=nil, edgesize=1 },
	questobjective_on = { tex={file="poi_icons",coords={4/8, 5/8, 1/2, 1  } }, onworldmap=poi_onworldmap, alpha=1, size=20, minimap_alpha=0.5, minisize=17, rotates=false, edgetex=nil, edgesize=1 },

	none = { tex={file="-",a=0}, alpha=0.0, size=1, minisize=1, rotates=false, edgetex=nil, edgesize=1 },

	-- placeholder values to grab defaults from. NOT real icons.
	ant_walk_default   = { r=1,   g=1,   b=1, alpha=0.8 },
	ant_taxi_default   = { r=0.4, g=1,   b=0, alpha=0.8 },
	ant_ship_default   = { r=0,   g=0.7, b=1, alpha=0.8 },
	ant_portal_default = { r=0.8, g=0.3, b=1, alpha=0.8 },
	ant_flying_default = { r=1,   g=0.8, b=0, alpha=0.8 },
	ant_default = {r=0.8, g=0.8, b=.8, alpha=0.8 }, -- { r=1, g=1, b=1, alpha=0.8 }  -- Options.lua uses this as default color!

	SetAntColorsFromOptions = function(self)
		local function setrgb(icon,savedcolors)
			if not icon then return end
			icon.tex.r,icon.tex.g,icon.tex.b,icon.alpha = savedcolors.r,savedcolors.g,savedcolors.b,savedcolors.alpha or savedcolors.a  -- we use alpha, options use a
		end

		local profile = ZGV.db.profile
		if profile.multicolorants then
			setrgb(self.ant_taxi,   profile.colorantstaxi)
			setrgb(self.ant_ship,   profile.colorantsship)
			setrgb(self.ant_portal, profile.colorantsportal)
			setrgb(self.ant_flying, profile.colorantsfly)
			setrgb(self.ant,        profile.colorantsother)
		else
			setrgb(self.ant_taxi,   profile.colorantssingle)
			setrgb(self.ant_ship,   profile.colorantssingle)
			setrgb(self.ant_portal, profile.colorantssingle)
			setrgb(self.ant_flying, profile.colorantssingle)
			setrgb(self.ant,        profile.colorantssingle)
		end

		self.crosshair.minimap_alpha = profile.minimap_marker_opacity
		self.greendotbig.minimap_alpha = profile.minimap_marker_opacity
		for k,v in pairs(self) do if k:match("^ant") then v.minimap_alpha=profile.minimap_ant_opacity end end
	end
}
setmetatable(Pointer.Icons,{__index=function(k) return Pointer.Icons.greendotbig end})
for k,v in pairs(Pointer.Icons) do if type(v)=="table" then __CLASS[v]="PointerIcon_"..k  v.name=k  end end

local full_coords={0,1,0,1}


function Pointer:RefreshDynamicValues()
	if not ZGV.Poi then return end

	Pointer.Icons.treasure.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.treasure.size = ZGV.db.profile.poisize
	Pointer.Icons.treasure.minisize = ZGV.db.profile.poisize - 3

	Pointer.Icons.treasure_on.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.treasure_on.size = ZGV.db.profile.poisize
	Pointer.Icons.treasure_on.minisize = ZGV.db.profile.poisize - 3

	Pointer.Icons.rare.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.rare.size = ZGV.db.profile.poisize
	Pointer.Icons.rare.minisize = ZGV.db.profile.poisize - 3

	Pointer.Icons.rare_on.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.rare_on.size = ZGV.db.profile.poisize
	Pointer.Icons.rare_on.minisize = ZGV.db.profile.poisize - 3

	Pointer.Icons.battlepet.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.battlepet.size = ZGV.db.profile.poisize
	Pointer.Icons.battlepet.minisize = ZGV.db.profile.poisize - 3

	Pointer.Icons.battlepet_on.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.battlepet_on.size = ZGV.db.profile.poisize
	Pointer.Icons.battlepet_on.minisize = ZGV.db.profile.poisize - 3

	Pointer.Icons.achievement.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.achievement.size = ZGV.db.profile.poisize
	Pointer.Icons.achievement.minisize = ZGV.db.profile.poisize - 3

	Pointer.Icons.achievement_on.alpha = ZGV.db.profile.poialpha
	Pointer.Icons.achievement_on.size = ZGV.db.profile.poisize
	Pointer.Icons.achievement_on.minisize = ZGV.db.profile.poisize - 3


	for k,w in pairs(ZGV.Pointer.waypoints) do w:SetIcon() end
end

--[[
local numlevels=0
local oldlevel=1
function Pointer.FixMapLevel()
	local x,y = GetPlayerMapPosition("player")
	if x<=0 and y<=0 then
		-- perhaps wrong floor indeed.
		numlevels = GetNumDungeonMapLevels()
		if numlevels>1 then
			oldlevel = ZGV.GetCurrentMapDungeonLevel()
			for lev=1,numlevels do
				if lev~=oldlevel and GetPlayerMapPosition("player")>0 then
					ZGV.GetCurrentMapDungeonLevel()
			end
		end
end
--]]

--[[
	data elements:
	title - guess
	type - 'way' 'poi' 'manual' 'corpse' 'path'
	icon - texture path
	onminimap - 'always' 'zone'
	overworld - show on world map
	persistent - don't hide when arrived at
--]]

local phasedBases={}
local phasedMaps = {}
-- grab pairs from LibRover
for name,ids in pairs(LibRover.data.MapIDsByName) do
	if type(ids)=="table" then for i,id in ipairs(ids) do phasedMaps[id]=name end end
end
setmetatable(phasedMaps,{__index=function(t,map) return map and type(map)=="number" and 10000+map or 0 end})
for id,group in pairs(phasedMaps) do phasedBases[group]=phasedBases[group] or id end
ZGV.Pointer.phasedMaps = phasedMaps

-- initialize phase bases with... something from the phase maps. This might suck, beware.
--for map,num in pairs(phasedMaps) do phasedBases[num]=phasedBases[num] or map end -- hardcoded the bases in because they were not getting assigned correctly here.

function Pointer:IsEnvironmentPhased(target_map)
	-- Assumption: if the player is/was in a map which is known to be phased, the best fit map is the current one
	-- WARNING Blizz works in mysterious ways. If something's broken with phased terrain corpse display, please look here
	-- keywords: worgen arrow not working qq

	-- No no no! Such extensive setmapping seems to cause lag...
	--[[
	local _mm,_ff=ZGV.GetCurrentMapID(),ZGV.GetCurrentMapDungeonLevel()
	SetMapToCurrentZone()
	local mm,ff=ZGV.GetCurrentMapID(),ZGV.GetCurrentMapDungeonLevel()
	SetMapByID(_mm) SetDungeonMapLevel(_ff)
	--]]
	local mm=ZGV.CurrentMapID
	if mm then
		return rawget(phasedMaps,mm) and phasedMaps[target_map]==phasedMaps[mm]
	end
end

-- Save this map as its group's base phase. Do it with map ids obtained fresh from ZGV.GetCurrentMapID() calls, NEVER from any ID you happen to think of.
function Pointer:SetBasePhase(map)
	local group = phasedMaps[map]
	if not group then return end
	phasedBases[group] = phasedBases[group] and map
end

function Pointer:SanitizePhase(map)
	do return map end
	return phasedBases[phasedMaps[map] or 0] or map
end


local function waypoint_tostring(waypoint)
	if not waypoint then return "nil" end
	if type(waypoint)~="table" then return tostring(waypoint) end
	return waypoint:tostring()
end
Pointer.waypoint_tostring = waypoint_tostring

local function waypoint_tostring_color(waypoint)
	local s = waypoint_tostring(waypoint)
	if not waypoint then return ("|cffaa8888%s|r"):format(s)
	elseif type(waypoint)~="table" then return ("|cff88aa88%s|r"):format(s)
	else return ("|cff8888aa%s|r"):format(s) end
end
Pointer.waypoint_tostring_color = waypoint_tostring_color



local waypoints_ants = {}
setmetatable(waypoints_ants,{__index=function(t,i)
	local waypoint={}
	waypoint.type="ant"
	Pointer:MakeMarkerFrames(waypoint,"Ant")

	--waypoint.frame_minimap.icon:SetRotation(icon.rotates and data.angle or 0)
	local icon=Pointer.Icons.ant
	-- SetTexture is done in SetWaypoint_Ant.

	CHAINC(waypoint.frame_minimap.icon)
		:SetSize(icon.minisize,icon.minisize)
		:SetDesaturated(icon.desat)
		:SetAlpha(icon.minimap_alpha or icon.alpha or 1)
	CHAINC(waypoint.frame_minimap.arrow)
		:SetTexture(icon.edgetex and ZGV.StyleDir..icon.edgetex.file)
		:SetTexCoord(unpack(icon.edgetex and icon.edgetex.coords or full_coords))
		:SetSize(1,1) --hide?

	--waypoint.frame_worldmap.icon:SetRotation(icon.rotates and data.angle or 0)
	CHAINC(waypoint.frame_worldmap)
		:SetSize(icon.size*Pointer.iconScale*Pointer.iconScaleBase,icon.size*Pointer.iconScale*Pointer.iconScaleBase)
		:SetFrameLevel(2999)
	CHAINC(waypoint.frame_worldmap.icon)
		:SetDesaturated(icon.desat)
		:SetAlpha(icon.alpha or 1)
		:SetRotation(0)  -- without this, TexCoord is somehow -0.2...1.2

	CHAINC(waypoint.frame_taximap.icon)
		:SetSize(icon.size*0.7,icon.size*0.7)
		:SetDesaturated(icon.desat)
		:SetAlpha(icon.alpha or 1)

	waypoint:SetIcon(icon)

	waypoint.onminimap="always"
	waypoint.overworld=true
	waypoint.showonedge=false
	
	waypoint.GetTitle = function() end
	waypoint.GetArrowTitle = function() end

	__CLASS[waypoint]="WaypointAnt"

	rawset(t,i,waypoint)
	return waypoint
end})
Pointer.waypoints_ants = waypoints_ants

-- SPECIAL setwaypoint, optimized for ants
local icons=Pointer.Icons
function Pointer:SetWaypoint_ant (m,x,y,num,icon, ant)  -- ant is here for one-time lookup! don't reuse!!
	m = zone_aliases[m] or m

	-- phasing? meh.
	local waypoint = waypoints_ants[num]
	waypoint.m=m
	waypoint.x=x
	waypoint.y=y
	waypoint.c = ZGV.GetMapContinent(m)

	-- clone some data to make a smarter, more aware ant
	waypoint.p0,waypoint.p1,waypoint.p2,waypoint.p3 = ant.p0,ant.p1,ant.p2,ant.p3
	waypoint.p1m,waypoint.p2m = ant.p1m,ant.p2m
	waypoint.ant_dist=ant.ant_dist
	waypoint.onminimap=ant.onminimap
	waypoint.overworld=ant.overworld

	waypoint.frame_minimap.waypoint = waypoint
	waypoint.frame_worldmap.waypoint = waypoint
	waypoint.frame_taximap.waypoint = waypoint

	if not icon then icon=icons.ant end
	if waypoint.icon~=icon then
		waypoint.frame_minimap.icon:SetTexture(ZGV.StyleDir..icon.tex.file)
		waypoint.frame_worldmap.icon:SetTexture(ZGV.StyleDir..icon.tex.file)
		waypoint.frame_taximap.icon:SetTexture(ZGV.StyleDir..icon.tex.file)
		waypoint.icon=icon
	end

	local r,g,b,a = icon.tex.r or 1,icon.tex.g or 1,icon.tex.b or 1,icon.tex.a or 1
	waypoint.frame_minimap.icon:SetVertexColor(r,g,b,a)
	waypoint.frame_minimap.icon:SetAlpha(ZGV.db.profile.minimap_ant_opacity)
	waypoint.frame_worldmap.icon:SetVertexColor(r,g,b,a)
	-- bobbly ants
	-- if ant.size then waypoint.frame_worldmap.icon:SetSize(ant.size,ant.size) end
	waypoint.frame_taximap.icon:SetVertexColor(r,g,b,a)

	waypoint.passive=true
	waypoint.is_on = true

	local lm = WorldMapFrame:GetMapID()
	waypoint:UpdateWorldMapIcon(lm)
	waypoint:UpdateMiniMapIcon(lm)
	if TaxiFrame:IsShown() then
		waypoint.frame_taximap.icon:SetVertexColor(r,g,b)
		waypoint:UpdateTaxiMapIcon()
	end

	Pointer.frame_minimap_functions.OnUpdate(waypoint.frame_minimap,1000)

	return waypoint
end

function Pointer:ClearWaypoints_ant(active)
	for i=active+1,#waypoints_ants do
		local waypoint = waypoints_ants[i]
		HBDPins:RemoveMinimapIcon(Pointer,waypoint.frame_minimap)
		waypoint.frame_minimap:Hide()
		waypoint.frame_minimap.waypoint=nil  -- so that they don't reappear
		waypoint.frame_worldmap:Hide()
		waypoint.frame_worldmap.waypoint=nil
		waypoint.frame_taximap:Hide()
		waypoint.is_on = false
	end
end

local tmp_data = {}
local function add_default_data(data)
	wipe(tmp_data)
	if data then for k,v in pairs(data) do tmp_data[k]=v end end
	--if not data.title then data.title="Waypoint" end
	if not tmp_data.type then tmp_data.type="way" end
	if not tmp_data.icon then tmp_data.icon=Pointer.Icons.greendotbig end
	return tmp_data
end

function Pointer:SetWaypoint (m,x,y,data,arrow)

	if (self.ArrowFrame.waypoint and self.ArrowFrame.waypoint.type=="corpse") and data.type~="corpse" and data.type~="manual" then
		self:Debug("Corpse arrow present; SetWaypoint rejected.")
		return
	end

	m = zone_aliases[m] or m

	local data = add_default_data(data)  -- Clone! so this is tmp_data from above, basically.

	if data.cleartype and data.type then  self:ClearWaypoints(data.type)  end

	-- Let's see if this is evil. If current map is phased, remember it and use it to de-phase other maps of the same group.

	--local mapm,mapf = ZGV.GetCurrentMapID(),ZGV.GetCurrentMapDungeonLevel()
	--self:SetBasePhase(mapm)  -- Assuming nobody in their right mind is viewing a wrong-phase map. Calling SetMapByID(phasedmap) WILL break this...

	if not m then
		if WorldMapFrame:IsShown() then m=WorldMapFrame:GetMapID() else m=C_Map.GetBestMapForUnit("player") end
	else
		--m=self:SanitizePhase(m)  -- de-phase map!
	end

	local waypoint = self:GetMapMarker (m,x,y,data)
	if not waypoint then return end
	--Pointer:Debug("Adding waypoint type "..data.type.." in "..m..","..x..","..y)

	waypoint.title=data.maplabel or data.title or data.arrowtitle or ("%s %d,%d"):format(ZGV.GetMapNameByID(waypoint.m or 0) or "?",waypoint.x*100,waypoint.y*100)
	waypoint.ant_icon = data.ant_icon
	waypoint.noskip = data.noskip

	--waypoint.type=data.type
	--waypoint.angle=data.angle	-- not needed, as that's set in GetMapMarker from data

	if waypoint.type=="manual" then
		self.nummanual = self.nummanual + 1
	end

	tinsert(self.waypoints,waypoint)

	if not ZGV.db.profile.mapicons then waypoint.icon=Pointer.Icons["none"] end

	waypoint:SetIcon(waypoint.icon)
	if ZGV.DEV and ZGV.db.profile.debug_display and waypoint.goal then
		waypoint.frame_worldmap.label:SetText("   " .. (waypoint.goal and waypoint.goal.num..". " or "")  ..  waypoint:GetTitle()  ..  ("  %.1f,%.1f"):format(waypoint.x*100,waypoint.y*100))
		waypoint.frame_worldmap.label:SetFont("Fonts\\ARIALN.TTF",5)
	else
		waypoint.frame_worldmap.label:SetText("")
	end
	Pointer.frame_minimap_functions.OnUpdate(waypoint.frame_minimap,1000)


	if arrow==nil then arrow=true end
	if arrow and (waypoint.type=="manual" or waypoint.type=="way" or waypoint.type=="route" or waypoint.type=="corpse") then
		self.DestinationWaypoint = waypoint
		self:ShowArrow(waypoint)
	end

	--if waypoint and waypoint.type~="ant" then Pointer:Debug("Waypoint set to map:"..waypoint.m.." floor:"..waypoint.f) end

	--[[
		if waypoint.find_path then
			Pointer:Debug("Starting travel, since waypoint was find_path")
			self:FindTravelPath(waypoint)
		end
	--]]

	if data.findpath and ZGV.db.profile.pathfinding then
		self:Debug("SetWaypoint calling FindTravelPath.")
		self:FindTravelPath(waypoint)
	end

	Pointer.Provider:SoilData()

	if Pointer.SavePointsStarted then
		-- if we are ready for it, save all manual waypoints
		self:Debug("SetWaypoint saving manual waypoints.")
		table.wipe(ZGV.db.char.pointsetsmanual)
		for i,v in pairs(ZGV.Pointer.waypoints) do
			if v.type=="manual" then
				table.insert(ZGV.db.char.pointsetsmanual,{m=v.m, x=v.x, y=v.y, title=v.title, waypoint_region=v.waypoint_region})
			end
		end
	end

	return waypoint
end

function Pointer:ShowWaiting(phase)
	self.ArrowFrame.WaitingPhase = phase
end

local tmp_tab={}
function Pointer:GetMapMarker (m,x,y,data)
	--Pointer:Debug("Internal GetMapMarker: "..tostring(c).." "..tostring(z).." "..tostring(x).." "..tostring(y).." "..tostring(title))
	if not m then
		m = ZGV.GetCurrentMapID()
	end
	m = zone_aliases[m] or m
	--Pointer:Debug("Internal GetMapMarker nums: "..tostring(c).." "..tostring(z).." "..tostring(x).." "..tostring(y).." "..tostring(title))

	if not m or not x or not y then
		Pointer:Debug("GetMapMarker bailing out; map=##%d %.2f %.2f",m,x or -99,y or -99)
		return
	end

	--if x>1 or y>1 then x,y=x/100,y/100 end

	local waypoint = self:GetUnusedMarker()
	--local c = LibRover.ContinentsByID[m] or -1
	local c = ZGV.GetMapContinent(m)
	waypoint.m=m
	waypoint.x=x
	waypoint.y=y
	waypoint.c=c

	table.zygor_join(waypoint,data)
	-- TODO: add callbacks for distance detection

	waypoint.frame_minimap.waypoint = waypoint
	waypoint.frame_minimapfar.waypoint = waypoint
	waypoint.frame_worldmap.waypoint = waypoint
	waypoint.frame_taximap.waypoint = waypoint

	waypoint.frame_minimap:EnableMouse(not waypoint.passive)
	waypoint.frame_worldmap:EnableMouse(not waypoint.passive)

	local lm = ZGV.GetCurrentMapID()
	waypoint:UpdateWorldMapIcon(lm)
	waypoint:UpdateMiniMapIcon(lm)
	if TaxiFrame:IsShown() then waypoint:UpdateTaxiMapIcon() end

	return waypoint
end

local dont_setwaypoint=false
function Pointer:ClearWaypoints(waytype)
	Pointer:Debug("ClearWaypoints %s",waytype or "all?")
	if waytype=="ant" then return Pointer:ClearWaypoints_ant(0) end
	local n=0
	local w=1
	dont_setwaypoint=true
	while w<=#self.waypoints do
		if not waytype or self.waypoints[w].type==waytype then
			n=n+1
			self:RemoveWaypoint(w,"ClearWaypoints")
		else
			w=w+1
		end
	end
	dont_setwaypoint=false
	--if waytype=="path" then
	--	Pointer.TempWaypath = nil
	--end

	if waytype=="manual" then
		table.wipe(ZGV.db.char.pointsetsmanual)
	end
	
	return n
end

function Pointer:RemoveWaypoint(waypoint,reason)
	local wayn
	if type(waypoint)=="number" then  wayn=waypoint  waypoint=self.waypoints[wayn]  end
	if not waypoint then return end -- let's just play nice --assert(waypoint,"Waypoint not found")
	assert(__CLASS[waypoint]=="Waypoint")
	if not wayn and type(waypoint)=="table" then for w=1,#self.waypoints do if self.waypoints[w]==waypoint then wayn=w end end end
	if not wayn then return end -- let's just play nice assert(wayn,"No waypoint number found")

	--Pointer:Debug("Removing waypoint %d=%d",waypoint.num,wayn)

	HBDPins:RemoveMinimapIcon(Pointer,waypoint.frame_minimap)
	HBDPins:RemoveMinimapIcon(Pointer,waypoint.frame_minimapfar)
	HBDPins:RemoveWorldMapIcon(Pointer,waypoint.frame_worldmap)
	--waypoint.frame_minimap:Hide()
	waypoint.frame_minimap.waypoint=nil
	waypoint.frame_minimap:Hide()
	waypoint.frame_minimapfar.waypoint=nil
	waypoint.frame_minimapfar:Hide()
	--waypoint.frame_worldmap:Hide()
	waypoint.frame_worldmap.waypoint=nil
	waypoint.frame_worldmap:Hide()
	waypoint.frame_taximap:Hide()

	--if waypoint.type~="ant" then print("Removing way "..waypoint.type) end

	if waypoint.type=="manual" then
		for i,v in ipairs(ZGV.db.char.pointsetsmanual) do
			if v.m==waypoint.m and v.x==waypoint.x and v.y==waypoint.y then
				table.remove(ZGV.db.char.pointsetsmanual,i)
				ZGV:Debug("RemoveWaypoint manual waypoint from saved vars.")
				break
			end
		end
		self.nummanual = max(0,self.nummanual - 1)
	end

	if waypoint.in_set then self:RemoveWaypointFromSets(waypoint) end

	for k,v in pairs(waypoint) do if not k:match("frame_.+") then waypoint[k]=nil end end  -- clear everything but frame_minimap, frame_worldmap, frame_taximap
	unusedMarkers[waypoint]=1
	table.remove(self.waypoints,wayn)

	-- Now for extra cleanups:

	if self.ArrowFrame.waypoint==waypoint then self:HideArrow() end
	if self.DestinationWaypoint==waypoint then
		Pointer:Debug("Removed DestinationWaypoint because "..(reason or "no reason"))
		self.DestinationWaypoint=nil  self.TempWaypath=nil
		self:ClearSet("route")
	end

	Pointer.Provider:SoilData()

end

function Pointer:RemoveWaypointFromSets(waypoint)
	local set = self.pointsets[waypoint.in_set]
	if not set then return end
	for pi,point in ipairs(set.points) do if point==waypoint then tremove(set,pi) return end end
end

function Pointer:HideArrow()
	self.ArrowFrame.waypoint = nil
	self:ResetMinimapZoom() -- to perhaps reset the zoom
	--self.ArrowFrame:Hide()
end

local lastbeeptime
local lastforcedupdate

function Pointer:ShowArrow(waypoint)
	self.initialdist = nil
	if not waypoint then return self:HideArrow() end
	assert(__CLASS[waypoint]=="Waypoint")
	--if waypoint.type~="manual" then self:ClearWaypoints("manual") end

	-- fix for "arrow stuck to cursor", probably
	if not IsMouseButtonDown()  then
	ZygorGuidesViewerPointer_ArrowCtrl:StopMovingOrSizing()
	self.ArrowFrame.dragging=nil
	end

	-- bandaid: prevent showing if coords are missing
	if not waypoint.m or not waypoint.x or not waypoint.y then 
		Pointer:Debug("No coords for waypoint.")
		return 
	end

	-- waypoint.m,waypoint.f = LibRover:GetMapByNameFloor(waypoint.m,waypoint.f) -- waypoint already has uimapid here

	--local waypoint_f = waypoint.f
	--if waypoint.type=="ant" then waypoint_f=nil end -- use no floor to make ants show up between floors and in dala/orgi
	local ix,iy,inst = HBD:GetWorldCoordinatesFromZone(tonumber(waypoint.x), tonumber(waypoint.y), waypoint.m)
	if ix and iy then
		HBDPins:AddMinimapIconWorld(Pointer, waypoint.frame_minimap, tonumber(inst), tonumber(ix), tonumber(iy), waypoint.showonedge)
		HBDPins:AddMinimapIconWorld(Pointer, waypoint.frame_minimapfar, tonumber(inst), tonumber(ix), tonumber(iy), false, "allowOffEdge")
	end
	
	self.ArrowFrame.waypoint = waypoint

	self.ArrowFrame.WaitingPhase = nil

	last_distance=0
	last_speed=0
	lastbeeptime=GetTime()+3
	cuedinged=nil

	lastminimapdist=99999

	self.current_waypoint = waypoint

	self:SetFontSize(ZGV.db.profile.arrowfontsize)

	if ZGV.db.profile.hijack_builtin_waypoint then
		local uiMapPoint = UiMapPoint.CreateFromCoordinates(waypoint.m, waypoint.x, waypoint.y);
		C_Map.SetUserWaypoint(uiMapPoint);
		C_SuperTrack.SetSuperTrackedUserWaypoint(true);
	end

	--self.ArrowFrame.temporarilyhidden = true
	--self.ArrowFrame:Show()
end

--[[
function Pointer:GetWaypointBearings(way)
	--local dx,dy =
	if type(way)==number then way=self.waypoints[way] end

end
--]]

local markerproto = {}
local markermeta = {__index=markerproto}
local nummarkers=0

function Pointer:MakeMarkerFrames(marker,markertype)
	setmetatable(marker,markermeta)

	markertype=markertype or "Marker"

	nummarkers=nummarkers+1

	marker.frame_minimap = CreateFrame(markertype=="Ant" and "FRAME" or "BUTTON", "ZGVMarker"..nummarkers.."Mini", Minimap, "ZygorGuidesViewerPointerMinimap".. markertype)
	if markertype~="Ant" then
		CHAINC(marker.frame_minimap)
		:SetScript("OnEnter",ZGV.Pointer.frame_minimap_functions.OnEnter)
		:SetScript("OnLeave",ZGV.Pointer.frame_minimap_functions.OnLeave)
		:SetScript("OnClick",ZGV.Pointer.frame_minimap_functions.OnClick)
		:RegisterForClicks("LeftButtonUp","LeftButtonDown")
		:SetFrameLevel(4)
		--:SetScript("OnEvent",ZGV.Pointer.frame_minimap_functions.OnEvent)
	end
	marker.frame_minimap:SetScript("OnUpdate",ZGV.Pointer.frame_minimap_functions.OnUpdate)
	marker.frame_minimap.isZygorWaypoint=true -- marking the marker to be protected by substituted Minimap:GetChildren() call.
	--marker.frame_minimap.icon:SetTexture(ZGV.DIR.."Arrows\\Cloqwerk\\minimaparrow-green-dot")
	--marker.frame_minimap.arrow:SetTexture(ZGV.DIR.."Arrows\\Cloqwerk\\minimaparrow-green-edge")
	
	marker.frame_minimapfar = CreateFrame("FRAME", "ZGVMarker"..nummarkers.."MiniFar", Minimap)
	marker.frame_minimapfar:SetScript("OnUpdate",ZGV.Pointer.frame_minimap_functions.OnUpdate)
	marker.frame_minimapfar.isZygorWaypoint=true -- marking the marker to be protected by substituted Minimap:GetChildren() call.
	marker.frame_minimapfar.isFar=true
	marker.frame_minimapfar:SetSize(20,20)

	marker.frame_worldmap = CreateFrame(markertype=="Ant" and "FRAME" or "BUTTON", "ZGVMarker"..nummarkers.."World", self.OverlayFrame, "ZygorGuidesViewerPointerWorldMap".. markertype)
	if markertype~="Ant" then
		CHAINC(marker.frame_worldmap)
		:SetScript("OnEnter",ZGV.Pointer.frame_worldmap_functions.OnEnter)
		:SetScript("OnLeave",ZGV.Pointer.frame_worldmap_functions.OnLeave)
		--:SetScript("OnUpdate",ZGV.Pointer.frame_worldmap_functions.OnUpdate)
		:SetScript("OnClick",ZGV.Pointer.frame_worldmap_functions.OnClick)
			:RegisterForClicks("AnyUp","AnyDown")
		:SetScript("OnEvent",ZGV.Pointer.frame_worldmap_functions.OnEvent)
			:RegisterEvent("PLAYER_ENTERING_WORLD")
			:RegisterEvent("ZONE_CHANGED_NEW_AREA")
		marker.frame_worldmap.spinner:SetTexture(ZGV.DIR.."\\Skins\\loading")

		--if ZGV.db.profile.debug_display then marker.frame_worldmap:SetScript("OnMouseWheel",ZGV.Pointer.frame_worldmap_functions.OnMouseWheel) end

	else
		--[[
		marker.frame_worldmap:SetScript("OnEvent",ZGV.Pointer.frame_worldmap_functions.OnEvent)
			:RegisterEvent("PLAYER_ENTERING_WORLD")
			:RegisterEvent("WORLD_MAP_UPDATE")
			:RegisterEvent("ZONE_CHANGED_NEW_AREA")
		--]]
	end

	--print(markertype=="Ant" and ("MEDIUM" and WorldMapFrame:GetFrameStrata() ~= "HIGH") or "HIGH")
	
	--[[
	local strataLayer = nil
	if markertype == "Ant" and WorldMapFrame:GetFrameStrata() ~= "HIGH" then
		strataLayer = "MEDIUM"
	elseif markertype == "Ant" then
		strataLayer = "HIGH"
	end
	marker.frame_worldmap:SetFrameStrata(strataLayer or "HIGH")
	--]]

	marker.frame_worldmap:SetFrameLevel((markertype=="Ant" and 608 or 609)+WorldMapFrame:GetFrameLevel())  -- built-in POIs (taxis, pet trainers) are 500-ish, so 600 should suffice.

	--[[
	if Nx then -- Attempt to support Carbonite map, doesn't work.
		--print(Nx.Map:GetMap(1))
		local map = Nx.Map:GetMap (1)
		local win = map.Win
		Spoo(nil, nil, win.Frm)
		if win:IsSizeMax() then
			marker.frame_worldmap:SetParent(win.Frm)
			Spoo(nil, nil, win.Frm)
			--print("Y")
		else
			marker.frame_worldmap:SetParent(win.Frm)
			--marker.frame_worldmap:SetParent(self.OverlayFrame)
			--print("N")
		end
	end -- End attempt to support carbonite map.
	]]--
	
	marker.frame_taximap = CreateFrame("FRAME", "ZGVMarker"..nummarkers.."Taxi", TaxiFrame, "ZygorGuidesViewerPointerTaxiMap".. markertype)
	marker.frame_taximap:SetFrameStrata(markertype=="Ant" and "MEDIUM" or "HIGH")
	marker.frame_taximap:SetScript("OnEvent",ZGV.Pointer.frame_taximap_functions.OnEvent)
	marker.frame_taximap:RegisterEvent("TAXIMAP_OPENED")
	
	--marker.frame_worldmap.icon:SetTexture(ZGV.DIR.."Arrows\\Cloqwerk\\minimaparrow-green-dot")

	return marker
end

function Pointer:GetUnusedMarker()
	local marker = next(unusedMarkers)
	if marker then
		unusedMarkers[marker]=nil
		return marker
	end

	-- create a new marker
	marker = self:MakeMarkerFrames({visible=true})
	assert(marker.frame_minimap)

	__CLASS[marker]="Waypoint"

	return marker
end

function markerproto:Hide()
	self.frame_minimap:Hide()
	self.frame_worldmap:Hide()
	self.frame_taximap:Hide()
	self.visible = false
end

function markerproto:Show()
	self.frame_minimap:Show()
	self.frame_minimapfar:Show()
	self.frame_worldmap:Show()
	if TaxiFrame:IsShown() then self.frame_taximap:Show() end
	self.visible = true
end

function markerproto:SetIcon(icon)  -- leave icon empty to just reset the current icon
	icon = icon or self.icon
	local newalpha = self.alpha or icon.alpha or 1

	--self.showonedge=(icon.edgesize~=1)

	-- set minimap frame icon
	local mini_ico = self.frame_minimap.icon
		mini_ico:SetTexelSnappingBias(0)
		mini_ico:SetSnapToPixelGrid(false)
		mini_ico:SetTexture(ZGV.StyleDir..icon.tex.file)  -- ignores missing file!?
		mini_ico:SetTexCoord(unpack(icon.tex.coords or full_coords))
		mini_ico:SetRotation(icon.rotates and self.angle or 0)
	local size = self.minisize or self.size or icon.minisize or 30
		mini_ico:SetSize(size,size)
		mini_ico:SetDesaturated(icon.desat)
		mini_ico:SetVertexColor(icon.tex.r or 1,icon.tex.g or 1,icon.tex.b or 1)
		mini_ico:SetAlpha((icon.tex.a or 1) * (ZGV.db.profile.minimap_marker_opacity or icon.minimap_alpha or newalpha))
	--
	
	-- set minimap edge arrow
		local arrow = self.frame_minimap.arrow
		arrow:SetTexture(ZGV.StyleDir..(icon.edgetex and icon.edgetex.file or icon.tex.file or ""))
		arrow:SetTexCoord(unpack(icon.edgetex and icon.edgetex.coords or full_coords))
		arrow:SetSize(icon.edgesize or size,icon.edgesize or size)
		arrow:SetDesaturated(icon.desat)
	--

	-- set worldmap icon
	if self.truesize then
		local data = HBD.mapData[self.m]
		local floordata = rawget(data,self.f or 0)
		data = data or floordata
		local width = data.width
		local yd_per_px = width / WorldMapFrame:GetCanvas():GetWidth() -- horizontally AND vertically; maps may be 0..1 0..1 with a 2:3 ratio, but pixels are 1:1. Hopefully.  -- TODO: reimplement with WorldMapFrame or something
		self.truesize_px = self.truesize / yd_per_px * 3.4  -- wtf?
	end
	local size = self.truesize_px or self.size or icon.size or size
	local sized = size*Pointer.iconScale*Pointer.iconScaleBase
	self.frame_worldmap:SetSize(sized/2,sized/2)
	self.frame_worldmap:SetFrameLevel(self.type=="ant" and 3000 or 3001)	-- self:GetMap():GetPinFrameLevelsManager():GetValidFrameLevel(self.pinFrameLevelType, self.pinFrameLevelIndex);

		local wm_ico = self.frame_worldmap.icon
		wm_ico:SetSize(sized,sized)
		wm_ico:SetTexelSnappingBias(0)
		wm_ico:SetSnapToPixelGrid(false)
		wm_ico:SetTexture(ZGV.StyleDir..(self.customs and self.customs.icon and self.customs.icon.tex.file or icon.tex.file))
		wm_ico:SetTexCoord(unpack(self.customs and self.customs.icon and self.customs.icon.tex.coords or icon.tex.coords or full_coords))
		wm_ico:SetRotation(icon.rotates and self.angle or 0)
		wm_ico:SetDesaturated(icon.desat)
		wm_ico:SetVertexColor(icon.tex.r or 1,icon.tex.g or 1,icon.tex.b or 1)
		wm_ico:SetAlpha((icon.tex.a or 1) * newalpha)
	if self.frame_worldmap.spinner then self.frame_worldmap.spinner:Hide() end
	--

	-- set taxi map icon
		local ico = self.frame_taximap.icon
		ico:SetTexture(ZGV.StyleDir..icon.tex.file)
		ico:SetTexCoord(unpack(icon.tex.coords or full_coords))
		ico:SetRotation(icon.rotates and self.angle or 0)
		ico:SetSize(size/2,size/2)
		ico:SetVertexColor(icon.tex.r or 1,icon.tex.g or 1,icon.tex.b or 1,icon.tex.a or 1)
		ico:SetAlpha(newalpha)
	--if icon.spinner then self.frame_worldmap.spinner:Show() else self.frame_worldmap.spinner:Hide() end
	--

	self.icon = icon
end

local mix4=ZGV.mix4
function markerproto:UpdateWorldMapIcon()
	-- bandaid: prevent updates if coords are missing
	if not self.m or not self.x or not self.y then return end

	local map = WorldMapFrame:GetMapID()

	if not self.overworld then self:Hide() return end
	-- hide markers that are zone limited, and we are viewing something else
	if type(self.icon.onworldmap)=="function" and not self.icon.onworldmap(self,map) then self:Hide() return end
	if self.icon.onworldmap=="zone" and map~=self.m then self:Hide() return end

	local mapframe = self.frame_worldmap:GetParent()

	local x,y = Mxlt(self.m,self.x,self.y,map,true)
	--print(("UWMI: %d %2d,%2d = %d %2d,%2d"):format(self.m,self.x*100,self.y*100,WorldMapFrame:GetMapID(),x or -1,y or -1))
	if not x then self.frame_worldmap:Hide() return end
	self.frame_worldmap:SetPoint("CENTER",mapframe,"TOPLEFT",mapframe:GetWidth()*x,-mapframe:GetHeight()*y)
	
	--self.frame_worldmap:SetSize(30,30)
	self.frame_worldmap:Show()
	
	-- convert to world coordinates
	--[[
	local xCoord, yCoord, instanceID = HBD:GetWorldCoordinatesFromZone(self.x, self.y, self.m)
	if not xCoord then return end

	HBDPins:AddWorldMapIconWorld(Pointer, self.frame_worldmap, instanceID, xCoord, yCoord, HBD_PINS_WORLDMAP_SHOW_WORLD)
	--]]

	if self.type=="ant" then
		map = zone_aliases[self.m] or map
		-- fuck. Ants are system-mapped. Check their parents?
		
		--local phm_m=phasedMaps[map]
		-- etc etc etc... screw phasing

		local p1m,p2m=self.p1m,self.p2m
		local alpha_p1 = ZGV_MapsOnDifferentFloors(map,p1m) and 0.3 or 1.0
		local alpha_p2 = ZGV_MapsOnDifferentFloors(map,p2m) and 0.3 or 1.0

		self.frame_worldmap:SetAlpha(alpha_p1+self.ant_dist*(alpha_p2-alpha_p1))  -- fade in or out
	else
		-- normal waypts
		if ZGV_MapsOnDifferentFloors(map,self.m) then
			self.frame_worldmap:SetAlpha(0.3)
		else
			self.frame_worldmap:SetAlpha(1.0)
		end
	end
end

function markerproto:UpdateMiniMapIcon(m)
	if not m then m=ZGV.GetCurrentMapID() end
	m = zone_aliases[m] or m

	if not self.hidden
	--and not (GetInstanceInfo()==BZL["Deeprun Tram"])
	and
	(
	 self.onminimap=="always" or
	 ZGV.Pointer.ArrowFrame.waypoint==self or
	 ((self.onminimap=="zone" or self.onminimap=="zonedistance") and phasedMaps[m]==phasedMaps[self.m])
	) then
		if not self.m or not self.x or not self.y then return end
		-- convert to world coordinates
		local xCoord, yCoord, instanceID = HBD:GetWorldCoordinatesFromZone(self.x, self.y, self.m)
		if not xCoord then return end

		local r = HBDPins:AddMinimapIconWorld(Pointer, self.frame_minimap, instanceID, xCoord, yCoord, self.showonedge)
		local r2 = HBDPins:AddMinimapIconWorld(Pointer, self.frame_minimapfar, instanceID, xCoord, yCoord, false, "allowOffEdge")
	else
		HBDPins:RemoveMinimapIcon(Pointer,self.frame_minimap)
		HBDPins:RemoveMinimapIcon(Pointer,self.frame_minimapfar)
	end
end

function markerproto:tostring()
	local goal = self.goal and ("[g:%d] "):format(self.goal.num) or ""
	return ("%s#%d %.1f,%.1f"):format(goal, self.m or 0,(self.x or 0)*100,(self.y or 0)*100)
end

local function Astrolabe_PlaceIconOnWorldMap2( taxiBgFrame, icon, taximapID, mapID, mapFloor, xPos, yPos )
	local nX, nY = HBD:TranslateZoneCoordinates(xPos, yPos, mapID, mapFloor, taximapID, 0)
	-- anchor and :Show() the icon if it is within the boundry of the current map, :Hide() it otherwise
	if ( nX and nY and (0 < nX and nX <= 1) and (0 < nY and nY <= 1) ) then
		--icon:ClearAllPoints();
		icon:SetPoint("CENTER", taxiBgFrame, "TOPLEFT", nX * taxiBgFrame:GetWidth(), -nY * taxiBgFrame:GetHeight())
		icon:Show();
	else
		icon:Hide();
	end
	return nX, nY
end

function markerproto:UpdateTaxiMapIcon()
	if not TaxiFrame:IsShown() and not (FlightMapFrame and FlightMapFrame:IsShown()) then return end
	local taxitextureframe = TaxiFrame.InsetBg or TaxiMap


	local show=true

	local taxitexture = Pointer.taxitexture

	if not taxitexture then
		Pointer:Debug("No map for taxi! texture is '%s'",taxitextureframe:GetTexture())
		return
	end

	local continent = ZGV.GetMapContinent(taxitexture)
	if not ZGV.GetMapContinent(continent) then -- systemParent
		Pointer:Debug("No map for taxi! map num is %d",taxitexture)
		return
	end

	--local m=nil -- TODO: rework?
	if show and not self.overworld then
		if self.m~=m then show=false end
	end

	if self.onworldmap=="zone" then -- hide zone specific icons
		show=false
	end	

	if show then
		local hostframe,hostparent
		if taxitexture==3007 then
			hostframe=FlightMapFrame.ScrollContainer.Child
			hostparent=FlightMapFrame.ScrollContainer.Child
			self.frame_taximap.icon:SetSize(60,60)
		else
			hostframe=taxitextureframe
			hostparent=TaxiFrame
			self.frame_taximap.icon:SetSize(25,25)
		end
		self.frame_taximap:SetParent(hostparent)
		local x,y = Astrolabe_PlaceIconOnWorldMap2(hostframe, self.frame_taximap, taxitexture, self.m, self.f, self.x, self.y)
		if not x or not y
		or x<0 or y<0 or x>1 or y>1
		then
			show=false
		end
	end

	self.frame_taximap:EnableMouse(false)
end


function markerproto:GetTitle()
	if self.goal then return self.goal:GetText(true,false,false)  -- WITH progress, WITHOUT brief, WITHOUT totals
	elseif self.pathnode and self.pathnode.waypoint and self.pathnode.waypoint.goal then return self.pathnode.waypoint.goal:GetText(true,false,false)
	else return self.title
	end
end
function markerproto:GetArrowTitle()
	local regiontext = ""
	if self.pathnode then
		if LibRover.nodes.start.region ~= self.pathnode.region then
			if self.pathnode.regionobj and self.pathnode.regionobj.comment then regiontext="\n|cffaaaaaa"..self.pathnode.regionobj.comment.."|r" end
		end
	end

	if self.goal then 
		return self.goal:GetText(true,false,false)..regiontext
	elseif self.pathnode and self.pathnode.waypoint and self.pathnode.waypoint.goal then 
		return self.pathnode.waypoint.goal:GetText(true,false,false)..regiontext
	else 
		return self.arrowtitle and self.arrowtitle..regiontext
	end
end
function markerproto:ToString()
	return "aa"
end


if DEBUG_ROGUE_DATA_IN_WAYPOINTS then
	-- THESE ARE JUST FOR DEBUGGING. Real "valid waypoint fields" are in copy_fields.
	local valids={passive=1,hidden=1,minisize=1,size=1,alpha=1,OnUpdate=1,OnEvent=1,truesize=1,truesize_px=1,hideminimap=1,angle=1,radius=1, pathnode=1, icon=1,ant_icon=1,curve_accuracy=1,curve_dist=1,curve_leftoverphase=1,actionicon=1, goal=1,
	player=1,  -- important for ant start
	waypoint_zone=1, waypoint_realzone=1, waypoint_subzone=1, waypoint_minizone=1, waypoint_region=1, waypoint_indoors=1, -- these are set in a goal, to pinpoint the waypoint location
	poiNum=1, nearRange=1,OnNear=1,OnFar=1,isNear=1,
	x=1,y=1,m=1,f=1,gx=1,gy=1,
	}
	setmetatable(markerproto,{__index=function(k,v) if not valids[v] then print(v.."  in  "..debugstack(2,1,0)) end end})
end


local function FormatDistance(dist)
	if not dist then return "" end
	if ZGV.db.profile.arrowunit==2 then
		local mdist = dist / 0.9144
		if mdist>1000 then
			return L['dist_km']:format(mdist/1000)
		else
			return L['dist_m']:format(mdist)
		end
	else
		return L['dist_yd']:format(dist)
	end
end
ZGV.FormatDistance=FormatDistance

---------------
function Pointer:CreateArrowFrame()
	if not self.ArrowFrameCtrl then
		self.ArrowFrameCtrl = ZygorGuidesViewerPointer_ArrowCtrl
		self.ArrowFrameCtrl:SetScript("OnUpdate",self.ArrowFrameControl_OnUpdate)
		--self.ArrowFrameCtrl:SetPoint("CENTER",UIParent,"BOTTOMLEFT",ZGV.db.profile.arrowposx,ZGV.db.profile.arrowposy)
		--self.ArrowFrameCtrl:SetMovable(1)
		--self.ArrowFrameCtrl:Show()
	end

	if not self.CurrentArrowSkin then
		self:SetArrowSkin(ZGV.db.profile.arrowskin)
	end

	self:SetupArrow()
end

function Pointer:SetupArrow()
	self.ArrowFrame = self.CurrentArrowSkin:CreateFrame()

	--self.ArrowFrame:SetScript("OnMouseUp",ZygorGuidesViewer.Pointer.ArrowFrame_OnMouseDown) -- messes with EnableMouse below! Do this first.
	--self.ArrowFrame:SetScript("OnMouseDown",ZygorGuidesViewer.Pointer.ArrowFrame_OnMouseUp)
	self.ArrowFrame:SetScript("OnClick",self.ArrowFrame_OnClick)

	-- freeze
	self.ArrowFrame:RegisterForDrag(not ZGV.db.profile.arrowfreeze and "LeftButton" or "none")
	--self.ArrowFrame:RegisterForClicks("AnyUp","AnyDown")
	self.ArrowFrame:RegisterForClicks("LeftButtonUp","RightButtonUp")
	self.ArrowFrame:EnableMouseWheel(true)
	self.ArrowFrame:EnableMouse(true)

	-- scale
	local scale = ZGV.db.profile.arrowscale
	if not scale then return end
	self.ArrowFrame:SetScale(scale)
	self:SetFontSize(ZGV.db.profile.arrowfontsize)

	-- opacity
	self.ArrowFrame:SetAlpha(ZGV.db.profile.arrowalpha)

	local iconScale = 38*ZGV.db.profile.arrowscale
	if not self.ArrowFrame.ArrowIcon then
		self.ArrowFrame.ArrowIcon = CHAINC(CreateFrame("Button","ZygorGuidesViewerPointerArrow_Icon",self.ArrowFrameCtrl,"SecureActionButtonTemplate,SecureHandlerStateTemplate"))
			:SetPoint("CENTER",self.ArrowFrame,"CENTER",0,-1)
			:RegisterForClicks("LeftButtonUp","LeftButtonDown")
			:SetFrameLevel(self.ArrowFrame:GetFrameLevel()+2)
			:RegisterForDrag(not ZGV.db.profile.arrowfreeze and "LeftButton" or "none")
			:Hide()
			:SetScript("OnDragStart",self.ArrowFrame:GetScript("OnDragStart"))
			:SetScript("OnDragStop",self.ArrowFrame:GetScript("OnDragStop"))
			:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square")
			:SetPushedTexture("Interface\\Buttons\\CheckButtonHilight")
			:SetAttribute("_onstate-combathide", "if newstate == 'show' then self:Show(); else self:Hide(); end")
			.__END
		self.ArrowFrame.ArrowIcon:GetPushedTexture():SetBlendMode("ADD")
		self.ArrowFrame.ArrowIcon.texture = self.ArrowFrame.ArrowIcon:CreateTexture("ZygorGuidesViewerPointerArrow_IconTexture","BACKGROUND")
		self.ArrowFrame.ArrowIcon.cooldown = CHAINC(CreateFrame("Cooldown","",self.ArrowFrame.ArrowIcon,"CooldownFrameTemplate")) :SetAllPoints() :Show() .__END

		Pointer:SetCombatHiding(ZGV.db.profile.hideincombat)
	end
	--Set Scale and opacity of the icon over the arrow.
	self.ArrowFrame.ArrowIcon:SetSize(iconScale,iconScale)
	self.ArrowFrame.ArrowIcon.texture:SetAlpha(ZGV.db.profile.arrowalpha)
end

function Pointer:SetCombatHiding(mode)
	if not ZGV.db.profile.arrowshow then return end
	if mode then
		RegisterAttributeDriver(Pointer.ArrowFrame, "state-combathide", "[combat] hide; show");
		RegisterAttributeDriver(Pointer.ArrowFrame.ArrowIcon, "state-combathide", "[combat] hide; show");
	else
		UnregisterAttributeDriver(Pointer.ArrowFrame, "state-combathide");
		UnregisterAttributeDriver(Pointer.ArrowFrame.ArrowIcon, "state-combathide");
	end
end

local insanity=0
-- makes sure we're not using a waypoint from an old/wrong goal or guide or poi
function Pointer:ResetWaypointIfOrphaned()
	local way = Pointer.DestinationWaypoint or (self.ArrowFrame and self.ArrowFrame.waypoint)
	local goal = way and (way.goal or (way.pathnode and way.pathnode.waypoint and way.pathnode.waypoint.goal))
	
	if not goal then return end
	if goal:IsVisible() then return end

	ZGV.CurrentStep:CycleWaypoint(nil,nil,"orphaned")
	ZGV:ShowWaypoints()
end

function Pointer:UpdateWaypoints()
	-- worldmap updates only, so far
	local m=ZGV.GetCurrentMapID()
	for w,way in ipairs(self.waypoints) do
		way:UpdateWorldMapIcon(m)
		way:UpdateMiniMapIcon(m)
		way:UpdateTaxiMapIcon(m)
	end

	self:ResetWaypointIfOrphaned()
end

function Pointer:SetFontSize(size)
	local f=self.ArrowFrame.title:GetFont()
	self.ArrowFrame.title:SetFont(f,size)
	--[[
	self.ArrowFrame.dist:SetFont(f,size)
	self.ArrowFrame.eta:SetFont(f,size)

	self.ArrowFrame.title:SetHeight(size)
	self.ArrowFrame.dist:SetHeight(size)
	self.ArrowFrame.eta:SetHeight(size)
	--]]
end



function Pointer:MinimapZoomChanged()
	if ZGV.db.profile.minimapzoom then
		--minimapcontrolled = true
	else
		--minimapcontrolled = false
		Minimap:SetZoom(0)
		MinimapZoomOut:Disable()
		MinimapZoomIn:Enable()
	end
end

function Pointer:ResetMinimapZoom()
	if ZGV.db.profile.minimapzoom then
		Minimap:SetZoom(0)
		MinimapZoomOut:Disable()
		MinimapZoomIn:Enable()
	end
	--minimap_lastset = 0
end

local function ShowTooltip(button,tooltip)
	if not button.waypoint or not button.waypoint.title or button.waypoint.passive then return end
	if button.waypoint.tooltipfunc then button.waypoint.tooltipfunc(button) return end

	tooltip:SetOwner(button,"ANCHOR_TOP")
	tooltip:ClearLines()
	local showtooltip = true

	if button.waypoint.tooltipdata then
		local tooltipdata
		if type(button.waypoint.tooltipdata) == "function" then
			tooltipdata = button.waypoint:tooltipdata()
		else
			tooltipdata = button.waypoint.tooltipdata
		end
		if tooltipdata.ZGV_OPTIONS.REFRESH then
			showtooltip = false
			ZGV:ScheduleTimer(function() if button:IsMouseOver() then ShowTooltip(button,tooltip) end end,0.1)
		end

		for i,line in pairs(tooltipdata) do if i~="ZGV_OPTIONS" then
			if type(line)=="string" then tooltip:AddLine(line,1,1,1,1,1) end
			if line.text then tooltip:AddLine(line.text,1,1,1,1,line.nowrap or 1) end
			if line.icon then tooltip:AddTexture(line.icon) end
			if line.indent then tooltip:AddTexture(ZGV.DIR .. "\\Skins\\blank") end
		end end
	else
		tooltip:SetText(button.waypoint:GetTitle())
	end
	if button.waypoint.OnEnter then
		local r = button.waypoint:OnEnter(tooltip)
		if r==false then return end
	end

	--GameTooltip:SetFrameStrata("TOOLTIP")
	if showtooltip then
		tooltip:Show()
	else
		tooltip:Hide()
	end
end

Pointer.frame_minimap_functions = {}
Pointer.frame_worldmap_functions = {}
Pointer.frame_taximap_functions = {}

function Pointer.frame_minimap_functions.OnEnter(self,arg,tip)
	if self.waypoint.passive then return end
	if self.waypoint and (self.icon:IsVisible() or (self.arrow and self.arrow:IsVisible())) then
		tip = tip or GameTooltip
		ShowTooltip(self,tip)
		if not (self.waypoint.tooltipdata or self.waypoint.tooltipfunc) then
			tip:AddLine(L['waypoint_tip_distance']:format(FormatDistance(self.dist or self.dist_tmp)))
		end

		if self.waypoint.type=="manual" or self.waypoint.surrogate_for and self.waypoint.surrogate_for.type=="manual" then
			tip:AddLine(L['waypoint_tip_clearmanual'])
		end

		if ZGV.db.profile.debug_display then
			if self.waypoint.type=="route" and self.waypoint.pathnode.type~="end" then
				tip:AddLine("|cffff0000DEBUG:|r |cffddff00Right-click|r for menu")
			end
			if Spoo then
				tip:AddLine("|cffff0000DEBUG:|r |cffddff00Ctrl-Alt-click|r to save map button to ZGV.MAPBUT (+Shift to Spoo)")
			else
				tip:AddLine("|cffff0000DEBUG:|r |cffddff00Ctrl-Alt-click|r to save map button to ZGV.MAPBUT")
			end
		end

		tip:Show()
		if Minimap:IsMouseOver(-2,-2,2,2) then
			tip:ClearAllPoints()
			tip:SetPoint("TOPRIGHT",Minimap,"TOPLEFT",0,0)
		end
		self.hastooltip=true
		if ZGV.DEV then self.icon:SetVertexColor(1,0.8,0) end

		Pointer:AnimateAnts()
	end
end

function Pointer.frame_minimap_functions.OnLeave(self)
	if self.waypoint.passive then return end
	GameTooltip:Hide()
	self.hastooltip=false
	if ZGV.DEV then self.icon:SetVertexColor(self.waypoint.icon.tex.r or 1,self.waypoint.icon.tex.g or 1,self.waypoint.icon.tex.b or 1,self.waypoint.icon.tex.a or 1) end

	Pointer:AnimateAnts()
end

local MinimapSize = {
	indoor = {
		[0] = inscale, -- scale
		[1] = inscale*0.8, -- 1.25
		[2] = inscale*0.6, -- 5/3
		[3] = inscale*0.4, -- 2.5
		[4] = inscale*0.26666,  -- 3.75
		[5] = inscale*0.16666,  -- 6
	},
	outdoor = {
		[0] = 466 + 2/3, -- scale
		[1] = 400,       -- 7/6
		[2] = 333 + 1/3, -- 1.4
		[3] = 266 + 2/6, -- 1.75
		[4] = 200,       -- 7/3
		[5] = 133 + 1/3, -- 3.5
	},
}
local oldfacing=-1
function Pointer.frame_minimap_functions.OnUpdate(self,elapsed)
	if not self.waypoint then return end
	local way = self.waypoint

	local c = self.minimap_count or 0
	c = c + elapsed
	if c < 0.1 then
		self.minimap_count = c
		return
	end
	elapsed = c
	self.minimap_count = 0

	--if GetInstanceInfo()==BZL['Deeprun Tram']
	--[[
	if not ZGV.db.profile.minicons
	then -- We're in a mapless place. Tough luck.
		self.icon:Hide() self.arrow:Hide() return
	end
	--]]

	if self.isFar then return end -- don't do anything for "far" frames

	local dist,x,y = HBDPins:GetDistanceToIcon(self)  -- ADDED by our own HBDragons.lua
	if not dist --[[or IsInInstance()--]] then self.icon:Hide() self.arrow:Hide() return end

	self.lastdist=self.dist
	self.dist = dist
	if way.OnUpdate then way:OnUpdate(elapsed) end
	if not self.waypoint then return end -- we may have lost this waypoint during update. Freak case?

	if way.hidden or way.hideminimap then
		self.icon:Hide()
		self.arrow:Hide()
		return
	end

	local edge = HBDPins:IsMinimapIconOnEdge(self)
	self.is_on_edge = edge

	if edge then
		if self.waypoint.showonedge
		or ZGV.Pointer.ArrowFrame.waypoint==way
		then
			self.icon:Hide()
			self.arrow:Show()

			local angle = HBDPins:GetDirectionToIcon(self)
			--angle = angle + 2.356194  -- rad(135)

			local rotate_minimap = GetCVar("rotateMinimap")=="1"
			if rotate_minimap then
				angle = angle - (GetPlayerFacing() or 0)
			end

			--local sin,cos = math.sin(angle)*0.71, math.cos(angle) * 0.71
			--self.arrow:SetTexCoord(0.5-sin, 0.5+cos, 0.5+cos, 0.5+sin, 0.5-cos, 0.5-sin, 0.5+sin, 0.5-cos)
			self.arrow:SetRotation(angle)
		else
			self.icon:Hide()
			self.arrow:Hide()
		end
	else
		self.icon:Show()
		self.arrow:Hide()
		if self.waypoint.angle and self.waypoint.icon.rotates then
			local facing = GetPlayerFacing() or 0
			local rotate_minimap = GetCVar("rotateMinimap")=="1"
			self.icon:SetRotation(self.waypoint.angle - (rotate_minimap and facing or 0))
		end
	end
	--oldfacing=facing
	
	-- handle tooltip distance updates
	if self.lastdist~=self.dist and self.hastooltip then
		ZGV.Pointer.frame_minimap_functions.OnEnter(self)
	end

	-- minimap autozoom
	if Pointer.ArrowFrame.waypoint==way and ZGV.db.profile.minimapzoom then
		local Minimap = Minimap
		local getzoom = Minimap:GetZoom()
		if getzoom~=minimap_lastset then
			-- user playing with minimap; suspend our activities for a while
			minimapcontrol_suspension = 5.0
			minimap_lastset = getzoom
		end

		if minimapcontrol_suspension>0 then
			minimapcontrol_suspension = minimapcontrol_suspension - elapsed
		else
			local old_minimap_lastset=minimap_lastset
			local dist = dist*2
			if dist~=lastminimapdist then
				local mapsizes = MinimapSize[IsIndoors() and 'indoor' or 'outdoor']

				minimap_lastset=0
				for i=1,Minimap:GetZoomLevels()-1 do
					if dist<mapsizes[i]*0.7 then minimap_lastset=i end
				end

				if old_minimap_lastset~=minimap_lastset then
					-- sanitise buttons
					if(minimap_lastset == (Minimap:GetZoomLevels() - 1)) then MinimapZoomIn:Disable() else MinimapZoomIn:Enable() end
					if(minimap_lastset == 0) then MinimapZoomOut:Disable() else MinimapZoomOut:Enable() end

					Minimap:SetZoom(minimap_lastset)
				end
			end
			lastminimapdist=dist
		end
	end
end

function Pointer.frame_minimap_functions.OnClick(self,button)
	if self.is_on_edge and not self.waypoint.showonedge then return end  -- in other words: isn't really visible, is probably using an blank(ish) edge arrow. Ignore clicks on that.
	-- note: this handler serves both frame_minimaps and frame_worldmaps - but only frame_minimaps can be is_on_edge.
	if not self.waypoint then return end

	if self.waypoint.OnClick then self.waypoint.OnClick(self,button) return end

	if Pointer.debug_patheditmode and button=="LeftButton" and IsControlKeyDown() then
		-- move mode
		Pointer:Debug_StartDragging(self.waypoint)
		return
	end

		
	if button=="RightButton" or (IsShiftKeyDown() and not IsControlKeyDown() and not IsAltKeyDown()) then
		--if ZGV.Pointer.ArrowFrame.waypoint==self.waypoint then ZGV.Pointer:HideArrow() end
		if Pointer.debug_patheditmode then
			Pointer:Debug_RemovePointFromPath(self.waypoint)
		end

		if self.waypoint.type=="manual" then 
			ZGV.Pointer:RemoveWaypoint(self.waypoint,"minimap onclick")
			GameTooltip:Hide()
		elseif self.waypoint.surrogate_for and self.waypoint.surrogate_for.type=="manual" then ZGV.Pointer:RemoveWaypoint(self.waypoint.surrogate_for,"minimap onclick surrogate")
		elseif self.waypoint.type=="route" then
			-- if we're debugging, allow for banning a node
			if ZGV.db.profile.debug_display and self.waypoint.pathnode and ZGV.Pointer.ArrowFrame.waypoint.pathnode and button=="RightButton" then
				ZGV.LibRover.ShowNodeDebugMenu(self,self.waypoint.pathnode)
				return
			else
				-- it's on the route, but we're not debugging? just recalc. And kill manuals if it's a manual.
				ZGV.Pointer:ClearWaypoints("manual")
			end
		elseif self.waypoint.type=="way" then return
		end
		ZGV:ShowWaypoints()
		Pointer.IgnoreThisButtonDown = true
		return
	end

	if ZGV.db.profile.debug_display and IsControlKeyDown() and IsAltKeyDown() then
		ZGV.MAPBUT=self
		ZGV:Print("Map button saved to ZGV.MAPBUT")
		if IsShiftKeyDown() then
			DoSpoo(ZGV.MAPBUT)
		end
		return
	end

	Pointer:Debug("Clicked way %d type %s",self.waypoint.num,self.waypoint.type)
	if self.waypoint.type=="way" or self.waypoint.type=="path" then ZGV.Pointer:ClearWaypoints("manual") end
	ZGV.Pointer:FindTravelPath(self.waypoint)

	if ChatFrame1EditBox:HasFocus() then
		local map,x,y = self.waypoint.map,self.waypoint.x,self.waypoint.y
		if IsAltKeyDown() then -- use current map instead! override for weird/bad/unwanted maps
			local curmap = WorldMapFrame:GetMapID()
			x,y = Mxlt(map,x,y,curmap)
			map=curmap
		end
		local info = C_Map.GetMapInfo(map)
		local floor = LibRover:GetFloorByMapID(map)

		ChatFrame1EditBox:SetText(ChatFrame1EditBox:GetText() .. ("%s/%d %.2f,%.2f "):format(info.name,floor,x*100,y*100))
		ChatFrame1EditBox:SetFocus(true)
	end
end

-- temporarily unused
function Pointer.frame_minimap_functions.OnEvent(self,event,...)
	Pointer:Debug("MINIMAP ONEVENT %s",event)
	if not self.waypoint then self:Hide() return end

	if event == "PLAYER_ENTERING_WORLD" then
		local way = self.waypoint

		if way then
			way:UpdateMiniMapIcon()
		end
	end
end

function Pointer.frame_worldmap_functions.OnEnter(self,arg)
	if self.waypoint and self.waypoint.passive then return end
	if self.waypoint and (self.icon:IsVisible() or self.arrow:IsVisible()) then
		--WorldMapPOIFrame.old_allowBlobTooltip = WorldMapPOIFrame.allowBlobTooltip  -- TODO: reimplement? whatever this was?
		--WorldMapPOIFrame.allowBlobTooltip = false

		self.dist_tmp = self.waypoint.frame_minimap.dist
		if GameTooltip then Pointer.frame_minimap_functions.OnEnter(self,arg,GameTooltip) end
	end
end

function Pointer.frame_worldmap_functions.OnLeave(self)
	if not self.waypoint then return end
	if self.waypoint and self.waypoint.passive then return end
	GameTooltip:Hide()

	--WorldMapPOIFrame.allowBlobTooltip = WorldMapPOIFrame.old_allowBlobTooltip  -- TODO: reimplement? whatever this was?
	--WorldMapPOIFrame.old_allowBlobTooltip = nil
	if ZGV.DEV then self.icon:SetVertexColor(self.waypoint.icon.tex.r or 1,self.waypoint.icon.tex.g or 1,self.waypoint.icon.tex.b or 1,self.waypoint.icon.tex.a or 1) end
end

Pointer.frame_worldmap_functions.OnClick = Pointer.frame_minimap_functions.OnClick

function Pointer.frame_worldmap_functions.OnEvent(self,event,...)
	local way = self.waypoint

	--ZGV:Print("WORLDMAP ONEVENT "..event)
	if event == "PLAYER_ENTERING_WORLD" or event=="ZONE_CHANGED_NEW_AREA" then
		if way then way:UpdateMiniMapIcon() end
	end
end

function Pointer.frame_worldmap_functions.OnMouseWheel(self,delta,...)
	if ZGV.db.profile.debug_display and self.waypoint.truesize then
		self.waypoint.truesize = (self.waypoint.truesize or 50) * (delta>0 and 1.1 or 0.909090)
		--print("waypoint",self.waypoint.title,"truesize",self.waypoint.truesize)
		self.waypoint:SetIcon()
	end
end


function Pointer.frame_taximap_functions.OnEvent(self,event,...)
	local way = self.waypoint

	--ZGV:Print("WORLDMAP ONEVENT "..event)
	if event == "TAXIMAP_OPENED" then
		if TaxiFrame:IsShown() then
			local taxitextureframe = TaxiFrame.InsetBg or TaxiMap
			local texture = taxitextureframe:GetTexture()   
			if type(texture)~="number" then error("Pointer doesn't recognize taxi texture at all.") end
			Pointer.taxitexture = texture
		elseif FlightMapFrame:IsShown() then -- broken isles. Hardcode for Legion for now. Later maybe try something with /dump FlightMapFrame.ScrollContainer.Child.TiledBackground:GetTexture()
		-- try the new FlightMapFrame, too!
			Pointer.taxitexture = 3007
		end
		--if way then way:UpdateMiniMapIcon() end --
	end
end

local function move_point_to_global(point,mastermap)
	if not point then return end
	local m = point.m	if not m or not point.x then point.gx,point.gy=nil,nil return end

	local cont = ZGV.GetMapContinent(m)

	if not mastermap then
		mastermap = cont
	end

	--if Astrolabe.WorldMapSize[point.map].system==466 then mastermap=466 end  -- outland, do NOT translate onto Azeroth
	--if Astrolabe.WorldMapSize[point.map].system==640 then mastermap=640 end  -- deepholm, do NOT translate onto Azeroth
	--if point.c==-1 then mastermap=Astrolabe.WorldMapSize[point.map].system end  -- instances, do NOT translate onto Azeroth
	--print("a",m,mastermap,point.f,masterfloor,point.type)

	if m~=mastermap then
		point.gx,point.gy = Mxlt(m,point.x,point.y,mastermap,true)-- HBD:TranslateZoneCoordinates(point.x, point.y, m, mastermap)
	end
	if point.gx then
		point.gm=mastermap
	else
		point.gm=point.m
		point.gx,point.gy=point.x,point.y
	end

	--print("b",m,mastermap,point.f,masterfloor,point.type)
end

function Pointer:ClearMapLines()
	self.mapLinePool:ReleaseAll();
	self.mapLinePoolMini:ReleaseAll();
	for i,line in self.mapLinePool:EnumerateInactive() do line:Hide() line.ScrollAnim:Stop() line.ScrollAnim2:Stop() end
	for i,line in self.mapLinePoolMini:EnumerateInactive() do line:Hide() line.ScrollAnim:Stop() line.ScrollAnim2:Stop() end
	for name,pointset in pairs(self.pointsets) do
		for pi,p in ipairs(pointset.points) do
			p.curve_leftoverphase=nil
		end
	end
end

function Pointer:UpdateMapLines()

	--if not self.mapLinePool then self.mapLinePool = CreateTexturePool(wmfc, "ARTWORK",7) end
	--if not self.mapLinePoolMini then self.mapLinePoolMini = CreateFramePool("FRAME", self.MinimapOverlayFrame, "ZygorGuidesViewer_MapLineTemplateSimple") end
	--if not self.mapLinePoolMini then self.mapLinePoolMini = CreateTexturePool(self.MinimapOverlayFrame, "ARTWORK") end

	self.mapLinePool:ReleaseAll();
	self.mapLinePoolMini:ReleaseAll();

	local mmw=Minimap:GetWidth()/2
	local mmh=Minimap:GetHeight()/2

	if self.MapLinesDebug then
		self.MapLinesDebug.world = {}  
		self.MapLinesDebug.mini = {}
	end

	local currentmap=WorldMapFrame:GetMapID()
	local mapwidth = ZGV.MapCoords.MAPDATA[currentmap]
	mapwidth = (mapwidth and mapwidth[4]) or 1000

	local function DrawLineZ(way1,way2,thickness,r,g,b,a,phase)
		if way1 and way2 then
			--[[
			if way1.frame_worldmap:IsShown() and way2.frame_worldmap:IsShown() and WorldMapFrame:IsShown() then
				local line=Pointer.mapLinePool:Acquire()
				local x1,y1 = Mxlt(way1.m,way1.x,way1.y,currentmap,true)
				local x2,y2 = Mxlt(way1.m,way1.x,way1.y,currentmap,true)
				if not x1 or not y1 or not x2 or not y2 then return end
				print(x1,y1,x2,y2)

				DrawLine(line,wmfc,
				x1*wmfc:GetWidth(),y1*wmfc:GetHeight(),x2*wmfc:GetWidth(),y2*wmfc:GetHeight(),
				4,1,"CENTER")
				line:SetTexture(ZGV.DIR.."/Skins/mapline.tga","REPEAT","CLAMP","TRILINEAR")
				--line:AddMaskTexture(self.MinimapOverlayFrame.mask)
				line:Show()
			end
			--]]

			local tex_tile_base = 10*ZGV.db.profile.maplines_density^1.3
			local minimap_tile_base = 1.5*ZGV.db.profile.maplines_density^1.3
			local thickness_base = ZGV.db.profile.maplines_thickness
			local alpha = a
			local linetype=ZGV.db.profile.maplines_graphic or 1
			local linetypes=4

			local function setMaplineLookAndFeel(line,thickness,tile,alpha)
				line:SetAlpha(alpha or 1)
			
				local linetypes_n = 1/linetypes
				line.Fill:SetBlendMode("BLEND")
				line.Fill:SetThickness(thickness)
				line.Fill:SetTexture(ZGV.DIR.."/Skins/mapline.tga","REPEAT","CLAMP","TRILINEAR")
				local lt2=linetypes_n*linetype
				local lt1=lt2-linetypes_n
				local tlx1=0+phase
				local tlx2=tile+phase
				if not ZGV.db.profile.maplines_repeat then tlx1,tlx2=0,1 end
				line.Fill:SetTexCoord(tlx1,lt1,tlx1,lt2,tlx2,lt1,tlx2,lt2)

				if not line.ScrollAnim:IsPlaying() then line.ScrollAnim:Play() end
				if r then line.Fill:SetVertexColor(r,g,b,a) else line.Fill:SetVertexColor(1,1,1,1) end

				if linetype==4 then
					line.Fill:SetBlendMode("ADD")
					if line.ScrollAnim:IsPlaying() then line.ScrollAnim:Stop() end
					if not line.ScrollAnim2:IsPlaying() then line.ScrollAnim2:Play() end
					line.FillScroll1:SetStartPoint(line.Fill:GetStartPoint())
					line.FillScroll1:SetEndPoint(line.Fill:GetEndPoint())
					line.FillScroll1:SetThickness(0.7 * thickness)
					line.FillScroll1:SetTexture(ZGV.DIR.."/Skins/mapline.tga","REPEAT","CLAMP","TRILINEAR")
					if r then line.FillScroll1:SetVertexColor(r,g,b,0.5) else line.Fill:SetVertexColor(1,1,1,0.5) end
					tile=tile/2
					line.FillScroll1:SetTexCoord(0,linetypes_n*(linetype-1),0,linetypes_n*(linetype),tile,linetypes_n*(linetype-1),tile,linetypes_n*(linetype))
					line.FillScroll1:Show()
					--line.FillScroll1:SetEndPoint("CENTER",way2.frame_worldmap)
				else
					line.FillScroll1:Hide()
					line.FillScroll2:Hide()
					line.ScrollAnim.TexCT:SetDuration(ZGV.db.profile.maplines_animspeed)
					line.Fill:SetBlendMode("BLEND")
					if line.ScrollAnim2:IsPlaying() then line.ScrollAnim2:Stop() end
				end
			end

			local wmcw = WorldMapFrame:GetCanvas():GetWidth()

			local Ax,Ay,Aoff = Mxlt(way1.m,way1.x,way1.y,currentmap,true,"creative")
			local Bx,By,Boff = Mxlt(way2.m,way2.x,way2.y,currentmap,true,"creative")

			if Ax and Bx and wmcw>0 then

				local line=Pointer.mapLinePool:Acquire()

				local len=sqrt((Ax-Bx)*(Ax-Bx)+(Ay-By)*(Ay-By)*0.444444) --(Mdist(way1.m,way1.x,way1.y,way2.m,way2.x,way2.y) or 300)
			
				line:SetAllPoints() -- needed for :SetStartPoint to accept simple coords
				line.Fill:SetStartPoint("TOPLEFT",Ax*wmcw,-Ay*wmcw*0.6667)
				line.Fill:SetEndPoint("TOPLEFT",Bx*wmcw,-By*wmcw*0.6667)

				--line.Fill:SetStartPoint("CENTER",way1.frame_worldmap)
				--line.Fill:SetEndPoint("CENTER",way2.frame_worldmap)

				local tile = len*tex_tile_base

				--print(("%.5f = %.2f"):format(len,tile))

				setMaplineLookAndFeel(line,thickness_base * Pointer.iconScale, tile, alpha or ZGV.db.profile.worldmap_maplines_opacity)
				phase=(phase+tile) % 1

				line:SetFrameLevel(2300)
				line:Show()

				if self.MapLinesDebug then
					self.MapLinesDebug.world[way1.type..": "..way1.num.."-"..way2.num] = {
						way1=way1,
						way2=way2,
						way1g=("[%d] #%d %d,%d"):format(way1.c,way1.m,way1.x*100,way1.y*100),
						way2g=("[%d] #%d %d,%d"):format(way2.c,way2.m,way2.x*100,way2.y*100),
						len=len,
						textile=tex_tile_base,
						mapwidth=mapwidth,
						currentmap=currentmap,
						ToggleDebugHighlight = function(self) way1.isDebugHighlight = not way1.isDebugHighlight end
					}
					if way1.isDebugHighlight then line.Fill:SetVertexColor(0.8,0,1) end
				end

			end

			--[[
				-- frame pool approach: acquire frame, mask its texture, position and rotate frame.
				-- Pros: perfect clean repeating.
				-- Cons: rotation animation lags 0+ frames behind.
				local line=Pointer.mapLinePoolMini:Acquire()
				local mmw=Minimap:GetWidth()/2
				local mmh=Minimap:GetHeight()/2
				DrawLineFrame(line,line.Fill,self.MinimapOverlayFrame,
					way1.frame_minimapfar.minimap_x*mmw,
					-way1.frame_minimapfar.minimap_y*mmh,
					way2.frame_minimapfar.minimap_x*mmw,
					-way2.frame_minimapfar.minimap_y*mmh,
					10,1,"CENTER")
				--line.Fill:SetTexture("Interface/AddOns/DugisGuideViewerZ/Artwork/wayline_white.tga")
				line.Fill:SetTexture(ZGV.DIR.."/Skins/speedicon.tga","REPEAT","REPEAT")
				line.Fill:AddMaskTexture(self.MinimapOverlayFrame.mask)
				line:Show()
			--]]

			--[[
			if way1.frame_minimapfar.minimap_x and way2.frame_minimapfar.minimap_x then
				local mmw=Minimap:GetWidth()/2
				local mmh=Minimap:GetHeight()/2
				local line=Pointer.mapLinePoolMini:Acquire()
				local x1,y1 = way1.frame_minimapfar.minimap_x,way1.frame_minimapfar.minimap_y
				local x2,y2 = way2.frame_minimapfar.minimap_x,way2.frame_minimapfar.minimap_y

				local dx=x2-x1
				local dy=y2-y1
				local dx2=dx*dx
				local dy2=dy*dy
				local len = math.sqrt(dx2+dy2)
				if way1.player then -- cut the start to avoid overlapping the player arrow
					x1=x1 - dx*(1-(len/(len-0.07)))
					y1=y1 - dy*(1-(len/(len-0.07)))
				end

				DrawLineZygor(line,self.MinimapOverlayFrame,
					x1*mmw,
					-y1*mmh,
					x2*mmw,
					-y2*mmh,
					7,1,"CENTER",len)
				line:SetTexture(ZGV.DIR.."/Skins/mapline.tga","REPEAT","CLAMP")
				line:SetTexelSnappingBias(0)
				line:SetSnapToPixelGrid(false)
		
				--line:AddMaskTexture(self.MinimapOverlayFrame.mask)
				line:Show()
			end
			--]]

			local Ax=way1.frame_minimapfar.minimap_x
			local Ay=way1.frame_minimapfar.minimap_y
			local Bx=way2.frame_minimapfar.minimap_x
			local By=way2.frame_minimapfar.minimap_y

			if (way1.frame_minimapfar:IsShown() and way2.frame_minimapfar:IsShown()) and Ax and Ay and Bx and By then

				local Cx,Cy,Cr=0,0,0.95 -- center of minimap
					
				local BAx = Bx-Ax
				local BAy = By-Ay
				-- distance
				local LAB = sqrt( BAx*BAx+BAy*BAy )
				if LAB==0 then LAB=0.000001 end

				if way1.player then
					local shift = min(1,(0.07/LAB))
					Ax= BAx*shift
					Ay= BAy*shift

					-- recalculate
					BAx = Bx-Ax
					BAy = By-Ay
					LAB = sqrt( BAx*BAx+BAy*BAy )
					if LAB==0 then LAB=0.000001 end
				end

				-- CLIP TO CIRCLE

				-- compute the direction vector D from A to B
				local Dx = BAx/LAB
				local Dy = BAy/LAB

				-- the equation of the line AB is x = Dx*t + Ax, y = Dy*t + Ay with 0 <= t <= LAB.
				
				-- compute the distance between the points A and E, where
				-- E is the point of AB closest the circle center (Cx, Cy)
				local t = Dx*(Cx-Ax) + Dy*(Cy-Ay)    
				local Ex = t*Dx+Ax
				local Ey = t*Dy+Ay

				-- compute the euclidean distance between E and C
				local LEC = sqrt((Ex-Cx)*(Ex-Cx)+(Ey-Cy)*(Ey-Cy))

				-- test if the line intersects the circle
				if ( LEC < Cr ) then
    				-- compute distance from t to circle intersection point
    				local dt = sqrt( Cr*Cr - LEC*LEC)

					-- cut off point A?
					local Acut = sqrt( (Ax-Cx)*(Ax-Cx)+(Ay-Cy)*(Ay-Cy))>Cr
					local Bcut = sqrt( (Bx-Cx)*(Bx-Cx)+(By-Cy)*(By-Cy))>Cr
					
					if not (Acut and Bcut and ((Ex>Ax and Ex>Bx) or (Ex<Ax and Ex<Bx)) and ((Ey>Ay and Ey>By) or (Ey<Ay and Ey<By))) then

						local oAx,oAy=Ax,Ay
						if Acut then Ax,Ay = (t-dt)*Dx + Ax, (t-dt)*Dy + Ay end
						if Bcut then Bx,By = (t+dt)*Dx + oAx, (t+dt)*Dy + oAy end


						local line=Pointer.mapLinePoolMini:Acquire()

						line:SetAllPoints() -- needed for :SetStartPoint to accept simple coords
						line.Fill:SetStartPoint("CENTER",Ax*mmw,-Ay*mmh)
						line.Fill:SetEndPoint("CENTER",Bx*mmw,-By*mmh)
		
						local lencut = sqrt((Bx-Ax)*(Bx-Ax)+(By-Ay)*(By-Ay))

						setMaplineLookAndFeel(line, thickness_base, lencut*minimap_tile_base, alpha or ZGV.db.profile.minimap_maplines_opacity)
		
						--line:SetFrameLevel(3100)
						line:Show()

						if self.MapLinesDebug then
							self.MapLinesDebug.mini[way1.type..": "..way1.num.."-"..way2.num] = {
								way1=way1,
								way2=way2,
								way1g=("[%d] #%d %d,%d"):format(way1.c,way1.m,way1.x*100,way1.y*100),
								way2g=("[%d] #%d %d,%d"):format(way2.c,way2.m,way2.x*100,way2.y*100),
								LAB=LAB,
								LEC=LEC,
								dt=dt,
								way1_cut=Acut,
								way2_cut=Bcut,
								Ax=Ax,
								Ay=Ay,
								Bx=Bx,
								By=By,
								Dx=Dx,
								Dy=Dy,
								Ex=Ex,
								Ey=Ey,
								Adist=sqrt( (Ax-Cx)*(Ax-Cx)+(Ay-Cy)*(Ay-Cy)),
								Bdist=sqrt( (Bx-Cx)*(Bx-Cx)+(By-Cy)*(By-Cy)),
								t=t,
								len=lencut,
								ToggleDebugHighlight = function(self) way1.isDebugHighlight = not way1.isDebugHighlight end
							}
							if way1.isDebugHighlight then line.Fill:SetVertexColor(0.8,0,1) end
						end
					end
		
		
				end
			end

		end
		return phase
	end

	--[[
	-- draw linear path
	for w1=1,#self.waypoints do
		local way1=self.waypoints[w1]
		local way2=self.waypoints[w1+1]
		DrawLine(way1,way2)
	end
	--]]

	-- note connection pairs
	local node_to_way = {}
	local lineidsets = {}
	local connected = {}
	for w1,way in ipairs(self.waypoints) do
		if way.pathnode and way.debugnodes then node_to_way[way.pathnode]=way end
		if way.drawlineid then
			lineidsets[way.drawlineid] = lineidsets[way.drawlineid] or {}
			tinsert(lineidsets[way.drawlineid],way)
		end
	end

	-- draw lines between noted pairs
	for node1,way1 in pairs(node_to_way) do
		for i,np in ipairs(node1.n) do
			local node2=np[1]
			local link=np[2]
			local way2=node_to_way[node2]
			if not self.debug_drawlines_walkfly and (link.mode=="walk" or link.mode=="fly") then way2=nil --[[ skip! ]] end
			if way2 and not connected[tostring(way1)..tostring(way2)] then
				local r,g,b
				if link and link.mode=="taxi" then r,g,b=0,1,0 end
				if link and link.mode=="ship" then r,g,b=0,.5,1 end
				DrawLineZ(way1,way2, (way1.frame_worldmap:IsMouseOver() or way2.frame_worldmap:IsMouseOver()) and 200 or 100, r,g,b,0.5, 1)
				--connected[tostring(way1)..tostring(way2)]=true
			end
		end
	end

	local currentmap = WorldMapFrame:GetMapID()
	local parentmap = currentmap --(currentmap==947--[[Azeroth]] or currentmap==946--[[Cosmic]]) and currentmap or ZGV.GetMapContinent(currentmap)
	--print("---")
	for _,psetname in ipairs{'route','path','farm'} do
		local pset=self.pointsets[psetname]
		--print(psetname)
		local prev_way
		local phase
		if self.pointsets[psetname] then
			local fin=pset.loop and #pset.points+1 or #pset.points
			local phase
			for i=1,fin do
				if i==#pset.points+1 then i=1 end
				local way=pset.points[i]
				if way.player then
					-- point is player? get new location
					local x,y,m = LibRover:GetPlayerPosition()
					way.m,way.x,way.y = m,x,y
					way.gx,way.gy,way.gm = nil,nil,nil
		
					way:UpdateWorldMapIcon(currentmap)
					way:UpdateMiniMapIcon(currentmap)
				end
				if not prev_way then
					prev_way=way -- first round: just get the prev
				else
					phase = phase or prev_way.curve_leftoverphase or 0
					local icon_color
					if ZGV.db.profile.multicolorants then
						icon_color = way.ant_icon
					end
					icon_color = icon_color or Pointer.Icons.ant_default
					local r,g,b,a = 
						icon_color.r or icon_color.tex.r,
						icon_color.g or icon_color.tex.g,
						icon_color.b or icon_color.tex.b,
						1
					if psetname=="farm" then a=a/2 end  -- unused: overridden by worldmap/minimap opacity settings
					phase = DrawLineZ(prev_way,way,500,r,g,b,nil,phase)
					--print(("pset %s %d phase %.2f"):format(psetname,i,phase))
					
					-- note the ending phase
					if not (pset.loop and i==1) then  -- but not in the same loop!
						way.curve_leftoverphase = phase
						if way.source and way.source.surrogate_for then way.source.surrogate_for.curve_leftoverphase = phase end  -- copy over to original path sharing the point
					end
					prev_way=way
				end
			end
		end
	end

	-- draw walls
	for lineid,wayps in pairs(lineidsets) do
		for wi,way in ipairs(wayps) do
			DrawLineZ(way,wayps[wi+1] or wayps[1], 200, 1,0,0,1, 0)
		end
	end

	for i,line in self.mapLinePool:EnumerateInactive() do line:Hide() end
	for i,line in self.mapLinePoolMini:EnumerateInactive() do line:Hide() end
end

------------------------------------------- ARROW -----------------


--[[
function Pointer.ArrowFrame_OnEvent(self,event,...)
	if event=="WORLD_MAP_UPDATE" then
		ZGV.Pointer:UpdateWaypoints()
	end
end
--]]



local arrowctrl_elapsed=0
local arrowfps = 1/60
local forceupdate_elapsed = 0

function Pointer.ArrowFrameControl_OnUpdate(self,elapsed)
	arrowctrl_elapsed = arrowctrl_elapsed + elapsed
	if arrowctrl_elapsed >= arrowfps then   -- 20fps MAX
		-- update skin IF WE HAVE ONE ON only, dammit
		if Pointer.ArrowFrame then Pointer.ArrowFrame_OnUpdate_Common(Pointer.ArrowFrame,arrowctrl_elapsed) end
		arrowctrl_elapsed = 0
	end

	local icon=Pointer.ArrowFrame.ArrowIcon
	if icon and icon:IsVisible() and not ZGV.Pointer.ArrowFrame:IsVisible() then Pointer.ArrowFrame_HideSpellArrow(self) end

	-- update waypoints periodically, in case some get stuck on player-out-of-map,-go-away state
	forceupdate_elapsed = forceupdate_elapsed + elapsed
	if forceupdate_elapsed > 3 then
		Pointer:UpdateWaypoints()
		forceupdate_elapsed = 0
	end

	if Pointer.ArrowFrame.OnUpdate then Pointer.ArrowFrame:OnUpdate(elapsed) end
end

-- And we have an onupdating frame even if hidden. Yay!

-- map perc as: t1..t2 to 0.0..0.5  t3..t4 to 0.5..1.0
function Pointer.CalculateDirectionTiers(perc,t1,t2,t3,t4)
	if perc<t1 then return 0 , 1
	elseif perc<t2 then return (perc-t1)/(t2-t1)*0.5 , 2
	elseif perc<t3 then return 0.5 , 3
	elseif perc<t4 then return ((perc-t3)/(t4-t3)*0.5) + 0.5 , 4
	else return 1.0 , 5 end
end

local oldangle = 0

local title,disttxt,etatxt

local lastbeeptime=GetTime()
local lastturntime=lastbeeptime
local laststoptime=lastbeeptime
local lastmovetime=lastbeeptime

local msin,mcos,mabs=math.sin,math.cos,math.abs

local DEFAULT_STEP_RADIUS_GROUND = 1
local DEFAULT_STEP_RADIUS_FLIGHT = 15

function Pointer:GetDefaultStepDist()
	return IsFlying and IsFlying("player") and DEFAULT_STEP_RADIUS_FLIGHT or DEFAULT_STEP_RADIUS_GROUND
end

local pathfindlockout = 0

local function TableFind(table,val)  -- unused, yeah
	for k,v in pairs(table) do if v==val then return k end end
end

--- Find 2 values in a table
-- @return key1,key2
local function TableFind2(table,val1,val2)
	local k1,k2
	for k,v in pairs(table) do  if v==val1 then k1=k end  if v==val2 then k2=k end  end
	return k1 or -1,k2 or -1
end

local function L_or_nil(id)
	local l = L[id]
	if l==id then return nil else return l end
end

--local function GetPreciseFloorCrossingText(map_from,map_to)
-- removed in rev.18382

local were_in_unknown_location

function Pointer.ArrowFrame_HideSpellArrow(self)
	local icon = Pointer.ArrowFrame.ArrowIcon

	--[[ itemscore upgrades handles requipping item in place of travel one
	if icon.item then
		local name,link,_,_,_,_,_,_,equiptype,texture = ZGV:GetItemInfo(icon.item or 0)

		if equiptype and equiptype:find("^INV") then
			local slot = ZGV.ItemScore.TypeToSlot[equiptype]
			local equipped = ZGV.ItemScore:GetItemInSlot(slot) or 0
			local previous = icon.curItemInSlot -- 0 means the slot was empty

			if equipped:find(":"..icon.item..":") then -- They have the item to teleport equipped.
				if previous == 0 then --They had no item equipped before the tp. So take off their item.
					local RemoveItem = function(slot) --functioned so that we can just return once a open slot is found instead of break break breaking
						local bag,bagslot
						for bag=0, NUM_BAG_SLOTS do
							for bagslot=1, GetContainerNumSlots(bag) do
								local itemid=GetContainerItemID(bag,bagslot)
								if not itemid then
									PickupInventoryItem(slot) --Pickup the quest item
									PickupContainerItem(bag,bagslot) --put it in an empty slot
									return
								end
							end
						end
					end

					RemoveItem(slot)

				elseif previous ~= equipped then -- They had a different item equipped. Equip that one.
					local previouslink = ZGV:GetItemInfo(previous)
					ZGV:Print(L['pointer_reequip_item']:format(previouslink))
					--EquipItemByName(previous)
				end --else they had the tp item equipped. So leave it.
			end
		end
	end
	--]]

	icon.item = nil
	icon.curItemInSlot = nil

	icon:Hide()
end

function Pointer.ArrowFrame_ShowSpellArrow(self,waypoint)
	local icon = Pointer.ArrowFrame.ArrowIcon
	local safe =  not InCombatLockdown() and not UnitIsDeadOrGhost("player")
	local found,name,_,texture,equiptype

	local node = waypoint.pathnode
	local link = node and node.parentlink
	local mode = link and link.mode
	-- now mode contains mode of transport!

	if not mode then return end

	local spell = node.spell or (node.link and node.link.spell)
	local item = node.item or (node.link and node.link.item)
	local toy = node.toy or (node.link and node.link.toy)
	local cooltime,cooldur,coolcharges = LibRover:GetCooldownWithoutGCD((spell and "spell") or (item and "item"),item or spell)

	if safe then
		--if mode=="hearth" then
		--		name,_,_,_,_,_,_,_,_,texture = ZGV:GetItemInfo(6948) --Yes, get local name for hearthstone then cast it by item name. Casting by spell doesn't work
		--		icon:SetAttribute("type","item")
		--		icon:SetAttribute("item",name)
		--else
		if spell then
				name,_,texture = GetSpellInfo(spell)
				icon:SetAttribute("type","spell")
				icon:SetAttribute("spell",name)
		elseif toy then
				_,name,texture,_ = C_ToyBox.GetToyInfo(item)
				icon:SetAttribute("type","toy")
				icon:SetAttribute("toy",name) -- item attribute no longer supported for toys
		elseif item and GetItemCount(item or 0)>0 then
				name,_,_,_,_,_,_,_,equiptype,texture = ZGV:GetItemInfo(item)
				icon:SetAttribute("type","item")
				icon:SetAttribute("item",name)
		end
		icon.cooldown:SetCooldown(cooltime,cooldur,coolcharges)  
	end
	if texture then
		icon:Show()
		icon.item = item
		if equiptype then -- We need to equip this item to use it
			local curItemlink,curItemID = ZGV.ItemScore:GetItemInSlot(ZGV.ItemScore.TypeToSlot[equiptype])

			if not icon.curItemInSlot or (icon.curItemInSlot ~= curItemID and curItemID ~= icon.item) then
			-- nothing equipped, or something else is equipped
				icon.curItemInSlot = curItemID
			end
		end
		icon.texture:SetAllPoints(true)
		icon.texture:SetTexture(texture)

		self:ShowNothing()
		local pretext

		if cooltime>0 then
			local time = Pointer.FormatTime(cooltime+cooldur-GetTime())
			pretext = L['pointer_arrow_itemcooldown']:format(time,item and ZGV:GetItemInfo(item) or GetSpellInfo(spell)) .. "\n"
			--else
			--	pretext = L['pointer_arrow_itemuse']:format(ZGV:GetItemInfo(item)) .. "\n"
		end

		self:ShowText(pretext or waypoint:GetArrowTitle() or waypoint:GetTitle())
		return true
	end
end

local noskip_time=0

local idle_dots = {".","..","...","....","....."}

local ptn_elapsed=0
function Pointer:PointToNextTimer(elapsed)
	ptn_elapsed = ptn_elapsed + elapsed  -- upval
	if ptn_elapsed < 0.2 then  return  end  ---- OUT

	local waypoint = self.ArrowFrame.waypoint

	local pathfollow = waypoint and waypoint.in_set and self.pointsets[waypoint.in_set].follow

	-- Periodic "next in path" updates. Not all follow systems need those - namely, "strict" never does that. Find #00pathfollowing for details.
	if (pathfollow=="smart" or pathfollow=="loose" or pathfollow=="smart2" or pathfollow=="smart3")
	and waypoint.m==ZGV.CurrentMapID
	then
		ZGV:Debug("&pointer Pointing to next from PointToNextTimer")
		local newway = self:PointToNextInPath(waypoint.in_set)
		if newway~=waypoint and self.pointsets['route'] then LibRover:Abort("nextinpath") self:ClearSet("route") end
	end

	ptn_elapsed=0
end

local speedtable_limit,speedtable_minlimit=30,5
function Pointer:CalculateSpeed(elapsed,dist)
	local speed = (last_distance-dist) / elapsed
	if last_distance == 0 then speed = 0 end
	if last_distance==dist then stoptime=stoptime+elapsed else stoptime=0 end

	--speed=tonumber(("%.2f"):format(speed))
	--ZGV:Print(("dist %.2f  chg %.2f  speed %.2f  thr %.2f"):format(dist,last_distance-dist,speed,eta_elapsed))
	--ZGV:Debug(stoptime)

	if speed>=0 and stoptime<2 then
		table.insert(speeds,1,speed)
		if #speeds>speedtable_limit then table.remove(speeds) end
	else
		speed=0
		wipe(speeds)
	end

	-- Speed meter. Perhaps one day.
	--[[
		ZGV.db.profile.arrowshowspeed = true
		if ZGV.db.profile.arrowshowspeed then
			local spd
			if ZGV.db.profile.arrowmeters then
				spd=("%.02f km/h"):format(speed) --*3.6
			else
				spd=("%.02f mph"):format(speed) --*2.0454
			end
			print(spd)
			self.eta:SetText(spd)
		end
	--]]
	--ZGV:Print(eta_elapsed)

	last_speed = speed

	return speed
end

local lastplayerangle
function Pointer:DoAudioCues(targetangle,playerangle,dist)
	local t=GetTime()
	if lastplayerangle~=playerangle then lastturntime=t end
	if GetUnitSpeed("player")==0 then laststoptime=t else lastmovetime=t end
	if t-lastmovetime<=1 and t-laststoptime>3 and t-lastturntime>5 then
		-- if flying, basically.
		-- and beelining for the last 3 seconds.

		-- ZGV:Debug(("will cue; dist=%d initial=%d lastbeep=%d"):format(dist,initialdist,GetTime()-lastbeeptime))
		if dist<=100 and not cuedinged then
			PlaySoundFile("Sound\\Doodad\\BoatDockedWarning.wav")
			-- lastwayding=waypoint  -- DO NOT COMPARE WAYPOINTS. They come from a POOL and are REUSED!
			cuedinged=true
			--ZGV:Debug("dinging")
		else
			--ZGV:Debug("not dinging, dist="..dist..", lastway="..(lastwayding and lastwayding.t or "nil"))
		end
		--ZGV:Debug("cuedinged "..tostring(cuedinged))

		-- warning beeps
		if self.ArrowFrame.arrow:IsVisible()  then
			local perc = mabs(1-targetangle*0.3183)  -- 1/pi
			if perc<=0.9 then
				if t-lastbeeptime>2 then
					--PlaySoundFile( [[Sound\Item\Weapons\Ethereal\Ethereal2H3.wav]] )
					PlaySoundFile("Sound\\Interface\\RaidWarning.ogg")

					if self.ArrowFrame.ShowWarning then self.ArrowFrame:ShowWarning() end

					lastbeeptime=t
				end
			end
		end
	end
	lastplayerangle=playerangle
end

local etacalc_elapsed=0
local last_eta=0
local BASE_MOVEMENT_SPEED = BASE_MOVEMENT_SPEED
function Pointer:CalculateETA(speed,dist,elapsed)
	etacalc_elapsed = etacalc_elapsed + elapsed
	if etacalc_elapsed < 0.9 then  return last_eta end

	local eta

	local avg=speed or 0
	for i=2,#speeds do avg=avg+speeds[i] end
	avg=avg/max(#speeds,1)

	--ZGV:Debug("eta: #speeds="..#speeds)
	if #speeds>=speedtable_minlimit and avg>0 then
		eta = math.abs(dist / avg)
	else
		local spd,mntspd,flyspd,swimspd = GetUnitSpeed("player")
		spd = IsSwimming() and swimspd or (LibRover.maxspeedinzone[ZGV.CurrentMapID][1] * BASE_MOVEMENT_SPEED) -- *7 is for recalc from multiplier to yds/s  -- or max(mntspd,flyspd)
		eta = math.abs(dist / spd)
	end
	etacalc_elapsed = 0

	last_eta = eta

	return eta

end


local ARROW_FPS=1/30
local arrow_elapse_sum=0

local throttle=0
local throttle_freq = 1/5--sec

function Pointer.ArrowFrame_OnUpdate_Common(self,elapsed)
	-- player in dungeon, but we are on combat lockdown
	--if not GetPlayerFacing() then self:Hide() return end

	-- our preview got closed by something unexpected, and we did not clean up.
	if ZGV.PointerMap.PreviewVisible and not WorldMapFrame:IsVisible() then
		ZGV.PointerMap:RestoreMapSettings()
	end
	
	arrow_elapse_sum=arrow_elapse_sum+elapsed
	if arrow_elapse_sum<ARROW_FPS then return end
	elapsed=arrow_elapse_sum
	arrow_elapse_sum=0

	-- NASTY. Replace master object, Indy Jones-style.
	local ArrowFrame = self
	self=Pointer


	if LibRover.initializing and not LibRover.ready then
		ArrowFrame:ShowText("Travel System is initializing...",nil,nil,("%d%%"):format((LibRover.init_progress or 0)*100))  -- idle_dots[LibRover.initframes%5+1]
		Pointer:ShowWaiting(0)
		return
	end


	--[[ blue "taxis assumed" notice removed per request.
		if Pointer.tmp_taxis_assumed then  ArrowFrame:SetNotice(L['pointer_arrow_noflightdata'])
		else  ArrowFrame:SetNotice()
		end
	--]]


	local waypoint = ArrowFrame.waypoint
	
	if not waypoint
	or not ZGV.db.profile.arrowshow
	or not UIParent:IsVisible()
	or (PetBattleFrame and PetBattleFrame:IsVisible())
	or (not ZGV.Frame:IsVisible() and ZGV.db.profile.hidearrowwithguide and waypoint.type~="manual")
	then
		if ZGV.PointerMap:ShouldShowPreview() then -- enable preview on guides with no steps while inside valid instance
			if not ZGV.PointerMap:IsPreviewShown()  then
				ArrowFrame:ShowInstance()
				ArrowFrame:ShowText(L["pointer_preview_show"])
			else
				ArrowFrame:HideInstance()
				ArrowFrame:ShowText(L["pointer_preview_hide"])
			end
		elseif not InCombatLockdown() then
			ArrowFrame:Hide()
		end
		if not WorldMapFrame:IsVisible() and self.waypoints and #self.waypoints > 0 and not ZGV.Frame:IsVisible() then self:ClearSets() end -- Hide waypoints and ants if we are not looking at the world map.
		return
	end
	if not InCombatLockdown() then ArrowFrame:Show() end
	--if GetCurrentMapContinentAndZone()~=waypoint.c then end

	local safe =  not InCombatLockdown()

	local icon = ArrowFrame.ArrowIcon

	-- adding icons over arrow for different types of teleports
	-- sequential digging in, safe and pretty fast
	--local node = (Pointer.TempWaypath and Pointer.TempWaypath.coords[2]) or (Pointer.pointsets.route and Pointer.pointsets.route.points[2])

	-- Handle spell icons
	if waypoint.pathnode and Pointer.ArrowFrame_ShowSpellArrow(ArrowFrame,waypoint) then
		if MouseIsOver(icon) and IsMouseButtonDown("RightButton") then
			Pointer.ArrowFrame_OnClick(nil,"RightButton") --***Is possible for it to not work if click goes up and down without OnUpdate running***
		end
		return
	else
		if safe then Pointer.ArrowFrame_HideSpellArrow(ArrowFrame) end
	end

	-- normal operation...


	local angle,dist,x,y
	local errortxt
	local cm,cc = ZGV.CurrentMapID,ZGV.GetMapContinent(ZGV.CurrentMapID or 0) --,LibRover.ContinentsByID[ZGV.CurrentMapID]
	local px,py,pm = ZGV.LibRover:GetPlayerPosition()

	--if IsInInstance() and cm~=waypoint.m then ArrowFrame:Hide() return end

	if not px then
		if GetUnitSpeed("player")>0 then
		-- we're in an unknown location, and moving - our location is totally unknown now. DON'T display distances.
			were_in_unknown_location = true
		end
	else
		were_in_unknown_location = false
	end


	-- Calculate distance, or at least get a fake one

	local angle,dist = Mangle(pm,px,py,waypoint.m,waypoint.x,waypoint.y) -- HBDPins:GetDirectionToIcon(waypoint.frame_minimap)

	local transcontinental
	if waypoint.c~=cc then
		dist=nil
		transcontinental = true
	end


	if were_in_unknown_location and GetPlayerFacing() then
		dist=nil
		if WorldMapFrame:IsVisible() then
			errortxt = L['pointer_close_map']
		else
			errortxt = "(current position unknown)"
		end
	end


	dist=dist or 99999999  -- this means FAR or UNKNOWN or whatever. Causes "zone, continent" display.

	-- trigger rover update if we got 100yd away from current target (are we lost?)
	if self.initialdist and ZGV.db.profile.pathfinding then
		self.closingdist = min(self.initialdist,self.closingdist or 9999)
		lastforcedupdate=lastforcedupdate or 0
		if dist-self.closingdist>100 and GetTime()-lastforcedupdate>120 then
			LibRover:UpdateNow(true)
			lastforcedupdate = GetTime()
		end
	end


	
	local show_stairs

	-- TODO: clean this shit up properly. Decide actions first, then strings to display, etc., not randomly like this. ~sinus

	--if samemap or waypoint.c==cc then   -- why check dist here..?
		-- same map, or at least same (sane) continent.
		-- can point, but might be wrong map or floor.
		if ZGV_MapsOnDifferentFloors(cm,waypoint.m)
		and not ZGV.db.profile.pathfinding
		and not (waypoint.pathnode and waypoint.pathnode.flooring)  -- don't show "upstairs" lines for hardwired cave entries.
		then
			errortxt = "|cffffbbaa"..L['pointer_floors_default'].."|r"
			show_stairs = nil --We are trying to enter a cave, point to the location inside the cave

			--TODO show_stairs should show the special arrow for going up and down between floors,
			--as of 12/5/12 it was not working properly for me(Erich) because it was not appearing at all.
			--Instead of showing no arrow, pointing straight toward the location is better.

			--if ZoneIsOutdoor(waypoint.m) then errortxt,show_stairs=nil end  -- Don't warn about floors on outdoor maps. TODO: remove later.
				-- diff floor? prepare to do floor warnings.
		end
		-- Otherwise just point. No funny stuff here.
	--else
	--	errortxt = "far"
	--end

	-- Safety measure, make sure self.badfloortxt is updated to reflect current surroundings
	ArrowFrame.errortxt = errortxt


	local override_dist,override_eta,override_text


	-- okay, we're live. 3, 2, 1, action!

	if safe then ArrowFrame:Show() end

	local playerangle = GetPlayerFacing() or 0

	local going_up
	if errortxt then
		local plusminus,err2=errortxt:match("([+-])(.*)")
		if plusminus then  going_up=(plusminus=="+") and 1 or -1  errortxt=err2  end
	end

	if show_stairs
	then
		-- wrong floor, omg
		if ArrowFrame.ShowStairs then ArrowFrame:ShowStairs(going_up) end

	elseif dist <= (waypoint.radius or self:GetDefaultStepDist())   -- close, and same floor
	and not waypoint.player  -- don't ever "arrive" on player waypoint
	and not (waypoint.pathnode and	(
			 (waypoint.pathnode.zone and waypoint.pathnode.zone~=BZR[GetZoneText()])
		or	 (waypoint.pathnode.realzone and waypoint.pathnode.realzone~=BZR[GetRealZoneText()])
		or	 (waypoint.pathnode.subzone and waypoint.pathnode.subzone~=BZR[GetSubZoneText()])
		or	 (waypoint.pathnode.minizone and waypoint.pathnode.minizone~=BZR[GetMinimapZoneText()])
		or	 (waypoint.pathnode.indoors and IsOutdoors())
		-- don't arrive on wrong map zone
		))

	and not (waypoint.in_set=="farm" and ZGV.CurrentStep and ZGV.CurrentStep.waypath and ZGV.CurrentStep.waypath.follow=="smart")
	and not UnitOnTaxi("player") 

	--and not (waypoint.source and waypoint.source.surrogate_for and waypoint.source.surrogate_for.goal)
				-- it's a goal; we shouldn't arrive on those with a waypoint! we should let goals :OnVisited instead. Ignore it, let the player get closer.
				-- This prevented goals from receiving the "arrived" animation.  ~~sinus 2020-11-13

	then

		-- ARRIVED! -----------

		if not waypoint.arrived then  waypoint.arrived = true  end

		-- remove waypoint when standing on the destination for a bit
		if waypoint.clearonarrival then
			-- clear-on-arrival waypoints? who uses these?
			self.heretime = (self.heretime or 0) + elapsed
			if self.heretime>1 then
				self:RemoveWaypoint(waypoint,"clearonarrival")
				return
			end
		end
		---------------------------------------------------

		if waypoint.arrived and not ZGV.PointerMap:ShouldShowPreview() then  -- last sanity check! avoid single-frame "arrived" blinks, when arriving and skipping to next.
			ArrowFrame:ShowArrived()
		end

		-- pick next in path
		if waypoint.type=="path"
		or (waypoint.pathnode and waypoint.pathnode.waypoint and waypoint.pathnode.waypoint.type=="path" and not waypoint.pathnode.waypoint.goal)  -- arrive on path points, but not when improvised from goals
		--or (waypoint.in_set and self.pointsets[waypoint.in_set].follow=="strict")))
		then
				--ZGV:Debug("Would skip to next point - but timeout...",pathfindlockout-GetTime())
			if GetTime()>pathfindlockout then
				pathfindlockout = GetTime()+0.5
				ZGV:Debug("Pointing to next from OnUpdate_Common arrival")
				local nextway = self:PointToNextInPath(waypoint.in_set or (waypoint.pathnode and waypoint.pathnode.waypoint and waypoint.pathnode.waypoint.in_set))
				if nextway~=waypoint then
					if self.pointsets['route'] then LibRover:Abort("arrival") self:ClearSet("route") end  -- UGLY to call it here, but Travel needs to GTFO when next-in-path waypoints reign.
				end  -- don't try to pathfind sooner than in 0.5 secs
			end
			--return
			-----------------------------------------------

		elseif waypoint.type=="route" then
			if waypoint.noskip
			and not (waypoint.pathnode and waypoint.pathnode.waypoint and (waypoint.pathnode.waypoint.in_set=="path" or waypoint.pathnode.waypoint.in_set=="farm"))  -- NOT unless it's a pathpoint!! Arrive on those!
			then
				if GetTime()>noskip_time then
					ZGV:Debug("&pointer Arrived, but point is route noskip.")
					noskip_time = GetTime()+3
				end
			else
				-- arrived on a route midpoint - recalculate path immediately. This might take time, so just drop the initial point first.
				if GetTime()>pathfindlockout then
					pathfindlockout = GetTime()+0.5
					local nextway = self:GetNextInPath("route")
					if GetTime()<pathfindlockout and type(nextway)=="table" and nextway~=waypoint then
						self:RemoveWaypoint(waypoint,"route pathfindlockout")
						self:ShowArrow(nextway)
						if nextway.pathnode and not nextway.pathnode.dark then
							-- If the next node is dark then updating will cause this node to be lost. Just continue using old path until a non-dark node is encountered.
							ZGV:Debug("&pointer Forcing LibRover to update quietly")
							if not LibRover.UnitOnTaxiRecalced then
								ZGV.LibRover:UpdateNow("quiet")
							end
						end
						--return
					end
				end
			end
			-------------------------------------------------
		end

		-- removing returns; we DO still need to update the text, after all this just handles the icon. ~sinus 2013-02-27

	elseif ArrowFrame.WaitingPhase then

		if ArrowFrame.ShowWaiting then
			ArrowFrame:ShowWaiting(ArrowFrame.WaitingPhase)
		end

	else

		waypoint.arrived = false

		self.heretime=0

		--self.eta:Show()
		--self.dist:Show()


		--[[ angle ]]--

		if waypoint.arrowicon=="error" then

			ArrowFrame:ShowError()
			override_dist=""
			override_eta=""

		elseif waypoint.arrowicon=="blank" then

			ArrowFrame:ShowNothing()
			override_dist=""
			override_eta=""

		elseif waypoint.arrowicon=="hide" then

			ArrowFrame:Hide()

		elseif ZGV.PointerMap:ShouldShowPreview() then
			if not ZGV.PointerMap:IsPreviewShown()  then
				ArrowFrame:ShowInstance()
				if ZGV.db.profile.preview_control=="manual" and not ZGV.db.char.previewhidden then
					ZGV.PointerMap:ShowPreview()
				end
			else
				ArrowFrame:HideInstance()
			end
		elseif waypoint.actionicon then

			if waypoint.actionicon=="upstairs" then ArrowFrame:ShowStairs(true)
			elseif waypoint.actionicon=="downstairs" then ArrowFrame:ShowStairs(false)
			end
			local showstairs=true  -- after all! -- TODO: ignored

		else
			-- show direction arrow

			local angle_error
			if not angle or errortxt=="far" then
				angle=3.1415
				angle_error=true
			else
				--local player = ZGV.db.profile.arrowcam and cam_yaw - (is_moving and GetPlayerFacing() or 0) or GetPlayerFacing()
				angle = angle - playerangle
			end
			while angle<0 do angle=angle+6.28319 end

			--angle = angle + 2.356194  -- rad(135)

			if ZGV.db.profile.arrowsmooth and not angle_error and self.CurrentArrowSkin and self.CurrentArrowSkin.features.smooth then
				local dif = angle-oldangle
				if dif>0.001 or dif<0.001 then
					while dif>3.14159 do dif=dif-6.28319 end
					while dif<-3.14159 do dif=dif+6.28319 end

					angle = angle-dif/(1+elapsed*20) --speed!

					--local newdif = newangle-oldangle
					--while newdif>3.14159 do newdif=newdif-6.28319 end
					--while newdif<-3.14159 do newdif=newdif+6.28319 end

					--if newdif*dif>0 then  -- no jittering
					--	angle=newangle
					while angle>6.28319 do angle=angle-6.28319 end
					while angle<0 do angle=angle+6.28319 end
					--end
				end
				oldangle=angle
			end

			if not angle_error then
				ArrowFrame:ShowTraveling(elapsed,angle,dist)
			else
				ArrowFrame:ShowError()
			end

		end

		--


		-------------

		--[[ -- direction coloring
			local perc = mabs(1-angle*0.3183)  -- 1/pi  ;  0=target backwards, 1=target ahead
			local t1,t2,t3,t4,t5 = 0.7,0.75,0.95,1.0
			if perc<t1 then perc=0
			elseif perc<t2 then perc=(t2-perc)/(t2-t1)*0.5
			elseif perc<t3 then perc=0.5
			elseif perc<t4 then perc=(t4-perc)/(t4-t3)*0.5 + 0.5
			else perc=1.0 end

			ArrowFrame:ShowTraveling(elapsed,angle,dist)

			local cell

			local perc = math.abs((math.pi - math.abs(angle)) / math.pi)

			local gr,gg,gb = unpack(TomTom.db.ZGV.db.profile.arrow.goodcolor)
			local mr,mg,mb = unpack(TomTom.db.ZGV.db.profile.arrow.middlecolor)
			local br,bg,bb = unpack(TomTom.db.ZGV.db.profile.arrow.badcolor)
			local r,g,b = ColorGradient(perc, br, bg, bb, mr, mg, mb, gr, gg, gb)
			arrow:SetVertexColor(r,g,b)

			cell = floor(angle / twopi * 108 + 0.5) % 108
			local column = cell % 9
			local row = floor(cell / 9)

			local xstart = (column * 56) / 512
			local ystart = (row * 42) / 512
			local xend = ((column + 1) * 56) / 512
			local yend = ((row + 1) * 42) / 512
			arrow:SetTexCoord(xstart,xend,ystart,yend)
		--]]
	end

	local speed

	throttle = throttle+elapsed
	if throttle>=throttle_freq then

		Pointer:PointToNextTimer(throttle)  -- what is this doing in an arrow display update!?

		--Pointer:Debug(("dist %.2f  chg %.2f  speed %.2f  ela %.2f"):format(dist,last_distance-dist,speed,eta_elapsed))

		speed = Pointer:CalculateSpeed(throttle,dist)

		if ZGV.db.profile.audiocues and IsFlying() then
			Pointer:DoAudioCues(angle,playerangle,dist)
		end
	
		last_distance = dist
		throttle = 0
	end

	--ZGV:Print(table.concat(speeds,"  "))

	local eta
	
	if UnitOnTaxi("player") and LibTaxi.LastTaxi and LibTaxi.LastTaxi.eta then
		local remain = LibTaxi.LastTaxi.departure + LibTaxi.LastTaxi.eta - GetTime()
		eta = max(0,remain)
	else
		eta = Pointer:CalculateETA(speed,dist,elapsed)
	end

	if ZGV.db.profile.show_taxi_bar then
		local CBF=CastingBarFrame
		if UnitOnTaxi("player") and LibTaxi.LastTaxi and LibTaxi.LastTaxi.eta then
			local remain = LibTaxi.LastTaxi.departure + LibTaxi.LastTaxi.eta - GetTime()
			if remain>0 then
				CastingBarFrame_ApplyAlpha(CBF, 1.0);
				CBF:SetStatusBarColor(0,1,0)
				CBF.value = LibTaxi.LastTaxi.eta-remain
				CBF.maxValue = LibTaxi.LastTaxi.eta
				CBF:SetMinMaxValues(0, CBF.maxValue);
				CBF:SetValue(CBF.value);
				CBF.holdTime = 0;
				CBF.casting = true;
				CBF.castID = castID;
				CBF.channeling = nil;
				CBF.fadeOut = nil;
				CBF.Spark:Show()
				CBF.Text:SetText(("%d:%02d"):format(remain/60,remain%60))
				CBF.isTaxi=true
				CBF:Show()
			end
		elseif CBF.isTaxi then
			CBF.value = CBF.maxValue
			CBF:SetValue(CBF.value)
			CBF.isTaxi=nil
		end
	end

	-- Grab current goal text, if it exists
	local step = ZGV.CurrentGuide and ZGV.CurrentGuide:GetCurStep()
	local goaltext = nil

	--[[
		local goaltext
		if step and waypoint then
			if waypoint.in_set and not waypoint.surrogate_for then
				goaltext = waypoint.title
			elseif waypoint.surrogate_for then
				if waypoint.surrogate_for.num then
					goaltext = step.goals[waypoint.surrogate_for.num]:GetText()
				else
					goaltext = waypoint.surrogate_for.text
				end
			elseif waypoint.num and step.goals[waypoint.num] then -- not in set, not surrogate
				goaltext = step.goals[waypoint.num]:GetText()
			end
		end
	--]]

	local text = override_text or waypoint:GetArrowTitle() or waypoint:GetTitle() or waypoint.arrowtitle or waypoint.title

	if ZGV.db.profile.debug_display then
		text = (text or "")..("\n|cffff55dd[rad: %s%s%s%s%s%s]|r"):format(
			waypoint.radius or "",
			waypoint.radius and "" or ("%d (def)"):format(self:GetDefaultStepDist()),
			waypoint.noskip and ", noskip" or "",
			waypoint.pathnode and ", node#"..waypoint.pathnode.num or "",
			waypoint.goal and ", goal#"..waypoint.goal.num or "",
			(self.DestinationWaypoint and self.DestinationWaypoint~=waypoint and ("\nTo: ".. (self.DestinationWaypoint.title or "(untitled)")
				.. (self.DestinationWaypoint.goal and self.DestinationWaypoint.goal.num and " (goal#".. self.DestinationWaypoint.goal.num..")" or "")) or "")
			)
	end

	if waypoint.errortext then
		errortxt = (errortxt and errortxt.."\n" or "").."|cffff4400"..waypoint.errortext.."|r"
	end

	if ZGV.PointerMap:ShouldShowPreview() then
		if ZGV.PointerMap.PreviewVisible or (ZGV.PointerMap.Frame and ZGV.PointerMap.Frame:IsVisible()) then
			errortxt=L["pointer_preview_hide"]
		elseif WorldMapFrame and not WorldMapFrame:IsVisible() then
			errortxt=L["pointer_preview_show"]
		end
	end

	-- spew it out.
	ArrowFrame:ShowText(
		text,
		override_dist or dist,
		override_eta or eta,
		errortxt)

end

local mfloor=math.floor
function Pointer.FormatTime(eta)
	return ("%01d:%02d"):format(eta / 60, eta % 60)
end

--[[
function Pointer.ArrowFrame_OnMouseDown(frame,button)
	--if button=="RightButton" then
	--	ZGV.Pointer.prev_cameraYawMoveSpeed = GetCVar("cameraYawMoveSpeed")
	--end
end
--]]

function Pointer.ArrowFrame_OnClick(frame,button)
	--if ZGV.db.profile.arrowfreeze then return end  -- how did we get the OnClick event, anyway?
	if UnitOnTaxi("player") then return end -- no recalcs while we are flying

	if button=="LeftButton" then
		if not frame.dragging then -- and ZGV.db.profile.pathfinding and self.waypoint.pathfollow=="pathfind" then
			if ZGV.PointerMap:ShouldShowPreview() then
				if not (ZGV.PointerMap.PreviewVisible or (ZGV.PointerMap.Frame and ZGV.PointerMap.Frame:IsVisible())) then
					ZGV.PointerMap:ShowPreview()
				else
					ZGV.PointerMap:HidePreview("manual")
				end
			else
				--LibRover:UpdateNow()
				ZGV:ShowWaypoints()
			end
		end
	elseif button=="RightButton" then
		Pointer:QueueShowRouteMenu(Pointer.ArrowFrame)
	end
end

function Pointer:QueueShowRouteMenu(arrowframe)
	if Pointer.ShowRouteMenuTimer then ZGV:CancelTimer(Pointer.ShowRouteMenuTimer) end
	Pointer.ShowRouteMenuTimer = ZGV:ScheduleTimer(function() Pointer:ShowRouteMenu(arrowframe) end, 0.1)
end


function Pointer:ShowRouteMenu(arrowframe)
	if not arrowframe.routemenuframe then arrowframe.routemenuframe = CreateFrame("FRAME",nil,arrowframe,"UIDropDownForkTemplate") end

	UIDropDownFork_SetAnchor(arrowframe.routemenuframe, 0, 0, "TOP", arrowframe.title or arrowframe, "BOTTOM")

	--local backdrop = DropDownList1:GetBackdrop()
	--backdrop.edgeSize=16
	--DropDownList1:SetBackdrop(backdrop)
	local menu = {}

	if not arrowframe.routemenuframe.waypointframe then
		arrowframe.routemenuframe.waypointframe = CreateFrame("BUTTON",arrowframe.routemenuframe,nil,"ZygorGuidesViewer_ArrowMenu_Destination")
	end
	local wpf = arrowframe.routemenuframe.waypointframe

	local simpleway = not ZGV.db.profile.pathfinding
	if simpleway then

		local way = arrowframe.waypoint
		if not way then return end

		tinsert(menu,{
				text = way:GetArrowTitle(),  isTitle = true,notCheckable=true,
			})

		local cont = way.c>0 and select(2,ZGV.GetMapContinent(way.c))
		if cont then tinsert(menu,{
				text = ("%s, %s %.1f;%.1f"):format(cont,ZGV.GetMapNameByID(way.m),way.x*100,way.y*100),
				isTitle = true, notCheckable=true,
		}) else tinsert(menu,{
				text = ("%.1f;%.1f"):format(way.x*100,way.y*100),
				isTitle = true, notCheckable=true,
		}) end

		if way.type=="manual" or not way.goal then
			tinsert(menu,{
					text = L['pointer_arrowmenu_removeway'],
					func = function() ZGV.Pointer:RemoveWaypoint(way,"pointer menu") ZGV:ShowWaypoints() end,
					notCheckable=true,
				})
		end

		tinsert(menu,{
				text = L['pointer_arrowmenu_route_enable'],
				tooltipTitle = L['pointer_arrowmenu_route_enable'],
				tooltipText = L['pointer_arrowmenu_route_enable_desc'],
				tooltipOnButton=1,
				--checked = function() return ZGV.db.profile.pathfinding end,
				func = function() ZGV:SetOption("Waypoint Arrow","pathfinding on") end,
				notCheckable=1,
				isNotRadio=1,
			})

	else  -- pathfinding

		ZGVPL=menu
		--[[
		local list = {}
		tinsert(menu,{
				text = L['pointer_arrowmenu_route'],
				hasArrow=true,
				menuList = list
		})
		--]]
		local route = Pointer.pointsets.route
		if route then
			local CPT = ZGV.Pointer.DestinationWaypoint or (route.coords and route.coords[1]) or (route.points and route.points[1])
			tinsert(menu,{
				text = L['pointer_arrowmenu_route_destinationtitle'],
				isTitle=true, notCheckable=true,
		})

			wpf.text:SetFont(ZGV.Font,ZGV.db.profile.fontsize)
			local dest_type = (Pointer.DestinationWaypoint and Pointer.DestinationWaypoint.type=="manual" and L['pointer_arrowmenu_route_destination_manual']) or 
				(route.points and route.points[#route.points].type=="manual" and L['pointer_arrowmenu_route_destination_manual']) or
				L['pointer_arrowmenu_route_destination_guide']
			wpf.text:SetText(L['pointer_arrowmenu_route_destination']:format(ZGV.GetMapNameByID(CPT.m or CPT.map),CPT.x*100,CPT.y*100) .. "|n" .. dest_type)
			wpf.text:SetPoint("RIGHT",DropDownForkList1,-10,0)
			wpf.icon:SetTexture(Pointer.ArrowSkinDir.."specials")
			wpf.icon:SetTexCoord(3/4,4/4,0,1/2)
			wpf.map = CPT.m

			tinsert(menu,{
				text = "",
				customFrame=wpf,
				paddingbottom=ZGV.IsRetail and 10 or nil,
			})
			-- wHYYYYY
			--tinsert(menu,{
			--	isTitle=true, notCheckable=true,
			--})

			--[[
			tinsert(list,{
				text = L['pointer_arrowmenu_route_destination']:format(CPT and CPT:GetArrowTitle() or "waypoint",ZGV.GetMapNameByID(CPT.m or CPT.map),CPT.x*100,CPT.y*100),
				isTitle=false, notCheckable=true, func=function() OpenWorldMap(CPT.m) end
			})
			--]]

			tinsert(menu,UIDropDownFork_separatorInfo)
			
			tinsert(menu,{
				text = L['pointer_arrowmenu_route_travelroutetitle'],
				isTitle=true, notCheckable=true,
			})
			local points = route.coords or route.points
			local n=1 --ugly second counter >_<
			local start=2
			if ZGV.db.profile.debug_display then n=0 start=1 end
			local prevnode

			local customFrameminWidth = ZGV.IsRetail and 100 or nil
			local customFramemaxWidth = ZGV.IsRetail and 250 or nil
			for i=start,#points do
				local node=points[i].pathnode
				if node and not (node.is_arrival and LibRover.cfg.strip_arrivals and not ZGV.db.profile.debug_display)
				and not (prevnode and node.text==prevnode.text and node.border==prevnode and not ZGV.db.profile.debug_display)  then
					local text = (node.text or "?"):gsub("\n","; ")
					if node.is_arrival then text="|cff888899"..text.."|r" end
					tinsert(menu,{
						text = L['pointer_arrowmenu_route_node'..(n==1 and '1' or '')]:format(n,text),
						isTitle=true, notCheckable=true, minWidth=customFrameminWidth, maxWidth=customFramemaxWidth,
					})
					if ZGV.db.profile.debug_display then
						local str = ("|cffff8800 = %s -> %s|r"):format(
							node.a_b or "a?_b?",
							node:tostring():gsub("(|c........%[my t)","\n%1")
						)
						for i,text in ipairs{("\n"):split(str)} do
							tinsert(menu,{ text = text, notCheckable=true, func=function() if (Spoo) then Spoo(node) end end })
						end
					end

					n=n+1
				end
				prevnode=node

				if i==start and ZGV.db.profile.debug_display and next(LibRover.RESULTS_SKIPPED_START or {}) then
					for ni,nn in ipairs(LibRover.RESULTS_SKIPPED_START) do
						local str = "SKIPPED: |cffff8800" .. nn[1]:tostring():gsub("(|c........%[my t)","\n%1") .. "|r\n- BECAUSE: " .. nn[2]
						for i,text in ipairs{("\n"):split(str)} do
							tinsert(menu,{ text = text, isTitle=true, notCheckable=true })
						end
					end
				end
				
				if i==#points-1 and ZGV.db.profile.debug_display and next(LibRover.RESULTS_SKIPPED_END or {}) then
					for ni,nn in ipairs(LibRover.RESULTS_SKIPPED_END) do
						local str = "SKIPPED: |cffff8800" .. nn[1]:tostring():gsub("(|c........%[my t)","\n%1") .. "|r\n- BECAUSE: " .. nn[2]
						for i,text in ipairs{("\n"):split(str)} do
							tinsert(menu,{ text = text, isTitle=true, notCheckable=true })
						end
					end
				end
			end

			local last=points[#points].pathnode
			tinsert(menu,{
				text = L['pointer_arrowmenu_route_est']:format(floor(last.time/60),last.time%60),
				isTitle=true, notCheckable=true,
			})
			if ZGV.db.profile.debug_display then tinsert(menu,{ text=("|cffff8800  Costtime: |cffffdd00%d:%04.1f"):format(floor(last.cost/60),last.cost%60), isTitle=true, notCheckable=true }) end

			tinsert(menu,UIDropDownFork_separatorInfo)
		
		end

		if Pointer.DestinationWaypoint then
			tinsert(menu,{
					text = L['pointer_arrowmenu_route_retry'],
					tooltipTitle = L['pointer_arrowmenu_route_retry'],
					tooltipText = L['pointer_arrowmenu_route_retry_desc'],
					tooltipOnButton=1,
					notCheckable=true,
					func = function()
						--LibRover:UpdateNow()
						ZGV:ShowWaypoints()
					end,
			})
			if Pointer.DestinationWaypoint.type=="manual" then
				tinsert(menu,{
						text = L['pointer_arrowmenu_removeway'],
						func = function() Pointer:ClearWaypoints("manual")  ZGV:ShowWaypoints()  end,
						notCheckable=true,
						isNotRadio=1,
					})
			end
			--[[
			if arrowframe.waypoint.type=="route" and arrowframe.waypoint.pathnode.type=="taxi" then
				tinsert(menu,{
						text = L['pointer_arrowmenu_autotaxi'],
						func = function() ZGV:SetOption("Automation","autotaxi") end,
						checked = function() return ZGV.db.profile.autotaxi end,
						isNotRadio=1,
					})
			end
			--]]

			tinsert(menu,UIDropDownFork_separatorInfo)
			tinsert(menu,{
				text = L['pointer_arrowmenu_route_stitle'],
				isTitle=true, notCheckable=true,
			})

			if LibRover:GetCFG("pathfinding_comfort")==1 then
				tinsert(menu,{
						text = L['pointer_arrowmenu_forcespeed'],
						func = function() 
							LibRover.cfgNodeOverride["pathfinding_comfort"] = 0 
							LibRover.cfgNodeOverride["use_item_teleports"] = nil
							LibRover.cfgNodeOverride["use_hearth"] = nil
							LibRover.cfgNodeOverride["use_mage_teleport"] = nil
							ZGV:ShowWaypoints()  
						end,
						notCheckable=true,
						isNotRadio=1,
						keepShownOnClick=1,
					})
			else
				tinsert(menu,{
						text = L['pointer_arrowmenu_forcecomfort'],
						func = function() 
							LibRover.cfgNodeOverride["pathfinding_comfort"] = 1 
							LibRover.cfgNodeOverride["use_item_teleports"] = nil
							LibRover.cfgNodeOverride["use_hearth"] = nil
							LibRover.cfgNodeOverride["use_mage_teleport"] = nil
							ZGV:ShowWaypoints()  
						end,
						notCheckable=true,
						isNotRadio=1,
						keepShownOnClick=1,
					})
			end

			tinsert(menu,{
					text = L['pointer_arrowmenu_use_hearth'],
					checked = function() return LibRover:GetCFG("use_hearth") end,
					func = function()  LibRover.cfgNodeOverride["use_hearth"]=not LibRover:GetCFG("use_hearth") ZGV:ShowWaypoints() end,
					isNotRadio=1,
					keepShownOnClick=1,
				})
			tinsert(menu,{
					text = L['pointer_arrowmenu_use_item_teleports'],
					checked = function() return LibRover:GetCFG("use_item_teleports") end,
					func = function()  LibRover.cfgNodeOverride["use_item_teleports"]=not LibRover:GetCFG("use_item_teleports") ZGV:ShowWaypoints() end,
					isNotRadio=1,
					keepShownOnClick=1,
				})
			tinsert(menu,{
					text = L['pointer_arrowmenu_use_mage_teleport'],
					checked = function() return LibRover:GetCFG("use_mage_teleport") end,
					func = function()  LibRover.cfgNodeOverride["use_mage_teleport"]=not LibRover:GetCFG("use_mage_teleport")  ZGV:ShowWaypoints() end,
					isNotRadio=1,
					keepShownOnClick=1,
				})
			tinsert(menu,{
					text = L['pointer_arrowmenu_reset'],
					func = function() 
						LibRover.cfgNodeOverride["pathfinding_comfort"] = nil
						LibRover.cfgNodeOverride["use_item_teleports"] = nil
						LibRover.cfgNodeOverride["use_hearth"] = nil
						LibRover.cfgNodeOverride["use_mage_teleport"] = nil
						ZGV:ShowWaypoints()  
					end,
					notCheckable=true,
					isNotRadio=1,
					keepShownOnClick=1,
				})
			tinsert(menu,UIDropDownFork_separatorInfo)
		
		
		end

		--[[
		tinsert(menu,{
				text = L['pointer_arrowmenu_route_disable'],
				tooltipTitle = L['pointer_arrowmenu_route_disable'],
				tooltipText = L['pointer_arrowmenu_route_disable_desc'],
				tooltipOnButton=1,
				--checked = function() return ZGV.db.profile.pathfinding end,
				func = function() ZGV:SetOption("Navi","pathfinding off") end,
				notCheckable=1,
				isNotRadio=1,
			})
		--]]
	end
	--end

	--[[
		local arrowoptions = {}
		tinsert(menu,{
				text = L['pointer_arrowmenu_arrowheader'],
				hasArrow=true,
				menuList = arrowoptions,
				notCheckable=true,
			})

		tinsert(arrowoptions,{
				text = L['pointer_arrowmenu_hide'],
				tooltipTitle = L['pointer_arrowmenu_hide'],
				tooltipText = L['pointer_arrowmenu_hide_desc'],
				tooltipOnButton=1,
				func = function() ZGV:SetOption("Navi","arrowshow off") end,
				notCheckable=1,
			})
		tinsert(arrowoptions,{
				text = L['pointer_arrowmenu_freeze'],
				tooltipTitle = L['pointer_arrowmenu_freeze'],
				tooltipText = L['pointer_arrowmenu_freeze_desc'],
				tooltipOnButton=1,
				checked = function() return ZGV.db.profile.arrowfreeze end,
				func = function()  ZGV:SetOption("Navi","arrowfreeze "..(ZGV.db.profile.arrowfreeze and "off" or "on"))  end,
				notCheckable=1,
			})

		tinsert(arrowoptions,{
			text = L['pointer_arrowmenu_scale'],
			hasArrow = true,
			menuList = {
				{ text = L["opt_framescale_s_small"], checked = function() return (ZGV.db.profile.arrowscale==0.8) end, func = ZGV.Pointer.ArrowFrame_SetScale, arg1=1 },
				{ text = L["opt_framescale_s_normal"], checked = function() return (ZGV.db.profile.arrowscale==1) end, func = ZGV.Pointer.ArrowFrame_SetScale, arg1=2 },
				{ text = L["opt_framescale_s_large"], checked = function() return (ZGV.db.profile.arrowscale==1.6) end, func = ZGV.Pointer.ArrowFrame_SetScale, arg1=5 },
			},
			notCheckable=1,
		})
		tinsert(arrowoptions,{
			text = L['pointer_arrowmenu_options'],
			func = function() ZGV.GuideMenu:Show("Options","navi") end,
			notCheckable=1,
		})
	--]]
	
	tinsert(menu,{
		text = L['pointer_arrowmenu_findnearest'], -- aka findNPC
		hasArrow=true,
		menuList = ZGV.WhoWhere.Types,
		notCheckable=true,
	})

	tinsert(menu,{
		text = L['pointer_arrowmenu_settings'],
		func = function() ZGV.GuideMenu:Show("Options","travelsystem") end,
		notCheckable=1,
		paddingbottom=10,
	})

	if ZGV.db.profile.debug_display and not simpleway then
		tinsert(menu,UIDropDownFork_separatorInfo)
		if arrowframe.waypoint.pathnode then
			tinsert(menu,{
					text = L["Ban this point |cffff0000[DEV]|r"],
					func = function() LibRover.banned_nodes[arrowframe.waypoint.pathnode]=1  LibRover:UpdateNow() end,
					notCheckable=1,
					isNotRadio=1,
				})
			tinsert(menu,{
					text = L["Unban all points |cffff0000[DEV]|r"],
					func = function() LibRover.banned_nodes={}  LibRover:UpdateNow() end,
					notCheckable=1,
					isNotRadio=1,
				})
			tinsert(menu,{
					text = L["Inspect found path |cffff0000[DEV]|r"],
					func = function() if not Spoo then ZGV:Error("Spoo not found") return end  Spoo(nil,nil,LibRover.RESULTS) end,
					notCheckable=1,
					isNotRadio=1,
				})
		end
		tinsert(menu,{
				text = L["Explain path issues |cffff0000[DEV]|r"],
				func = function() LibRover:Explain() end,
				notCheckable=1,
				isNotRadio=1,
				paddingbottom=10,
			})
	end

	EasyFork(menu,arrowframe.routemenuframe,nil,0,0,"MENU")
	UIDropDownFork_SetWidth(arrowframe.routemenuframe, 300)
end

function Pointer.ArrowFrame_SetAlpha(but,v)
	ZGV:SetOption("Waypoint Arrow","arrowalpha "..v)
end

function Pointer.ArrowFrame_SetScale(but,v)
	ZGV:SetOption("Waypoint Arrow","arrowscale_s "..v)
	ZGV.Pointer:SetupArrow()
end

local leftbutdown,downx,downy
local rightbutdown
local old_c,old_z
local zonechangecount=0

local oldzone,zone

local maptype = {}
for tn,tv in pairs(Enum.UIMapType) do maptype[tv]=tn end

function Pointer:RescaleMarkers()
	local canvas=WorldMapFrame:GetCanvas()
	local container = WorldMapFrame:GetCanvasContainer()
	local zoomlevels = container.zoomLevels
	if not zoomlevels then return end
	local basezoom=container.zoomLevels[1].scale
	local zoomed=basezoom / canvas:GetScale()
	local width = container:GetWidth()
	if width==0 then return end
	local wmdf_scale = canvas:GetWidth() / container:GetWidth() * zoomed
	Pointer.iconScale = wmdf_scale / zoomed^0.35
	for wi,way in ipairs(Pointer.waypoints) do way:SetIcon() end
	for wi,way in ipairs(Pointer.waypoints_ants) do way:SetIcon() end
end



function Pointer:IsCorpseArrowNeeded() -- small utility against bulky ifs, NB: waypointer-independent
	if LibRover.initializing and not LibRover.ready then return false end -- wait for LR to finish loading
	-- uses arrow, is dead, not in pvp zone, and not feign death
	return ZGV.db.profile.corpsearrow and UnitIsDeadOrGhost("player") and select(2, IsInInstance()) ~= "pvp" and not (IsActiveBattlefieldArena and IsActiveBattlefieldArena()) and not ZGV.Parser.ConditionEnv.hasbuff("spell:5384")
end

local DoCorpseCheckRetry = 10
function Pointer:DoCorpseCheck(event)
	if not self.ArrowFrame then return end -- arrow frame missing, maybe called to early in loading process?
	if self:IsCorpseArrowNeeded() then
		if ZGV.CurrentStep and ZGV.CurrentStep.zombiewalk then
			if ZGV.Pointer.corpsearrow_shown then
				Pointer.corpsearrow_shown = nil
				ZGV:ShowWaypoints()
			end
		else
			DoCorpseCheckRetry = DoCorpseCheckRetry - 1
			ZGV:Debug("DoCorpseCheck (%s) (dead)",event or "no event")
			-- corpse arrow
			if (DoCorpseCheckRetry==0) or not (self.ArrowFrame.waypoint and (self.ArrowFrame.waypoint.type=="corpse" or self.ArrowFrame.waypoint.type=="manual")) then 
				DoCorpseCheckRetry = 10
				self:ClearWaypoints("way")
				self:ClearSet("route")
				self:ClearSet("farm")
				self:ClearSet("path")
				Pointer:FindCorpseArrow() 
			end
		end
	else
		DoCorpseCheckRetry = 10
		ZGV:Debug("DoCorpseCheck (%s) (not dead)",event or "no event")
		local n=self:ClearWaypoints("corpse")
		if n>0 then ZGV:ShowWaypoints() end
	end
end

function Pointer:SetCorpseArrow(m,x,y)
	self:ClearWaypoints("corpse")
	m = zone_aliases[m] or m

	Pointer:Debug("SetCorpseArrow: *** Pointing to corpse at: |cffffffff%s %d %.1f,%.1f",ZGV.GetMapNameByID(m),m,x*100,x*100)
	local way = Pointer:SetWaypoint(m,x,y,{
		title= L["pointer_corpselabel"],
		type="corpse",
		icon=Pointer.Icons.greendotbig,
		onminimap="always",
		overworld=true,
		showonedge=true,
	})
end

function Pointer:RecordCorpseLocation()
	-- congratulations, you died. 
	ZGV.db.char.corpsemap = C_Map.GetBestMapForUnit("player")
	ZGV:Debug("Player died on map %d (%s)",ZGV.db.char.corpsemap,ZGV.GetMapNameByID(ZGV.db.char.corpsemap))
end

function Pointer:ForgetCorpse()
	ZGV.db.char.corpsemap = nil
	Pointer:ClearWaypoints("corpse")
end

function Pointer:FindCorpseArrow(reset)
	if not UnitIsGhost("player") then self:Debug("FindCorpseArrow: player isn't a ghost...") return end
	-- let us assume that corpse is on current map
	local map = ZGV.db.char.corpsemap or C_Map.GetBestMapForUnit("player")
	local corpse
	if map then corpse = C_DeathInfo.GetCorpseMapPosition(map) end
	if corpse then 
		self:SetCorpseArrow(map,corpse.x,corpse.y)
		return
	else
		self:Debug("FindCorpseArrow: no corpse on map %d",map)
	end

	-- not on current, not saved. bah humbug, we need to check all maps for it
	for map=1,1000 do
		local corpse = C_DeathInfo.GetCorpseMapPosition(map)
		if corpse then
			self:Debug("FindCorpseArrow: found corpse on map %d",map)
			ZGV.db.char.corpsemap = map
			self:SetCorpseArrow(map,corpse.x,corpse.y)
			return
		end
	end
	self:Debug("FindCorpseArrow had nothing to do.")
end


Pointer.ArrowSkins = {}

local order=0
function Pointer:AddArrowSkin(id,name)
	order=order+1
	local skin = Mixin({id=id,name=name,order=order},ZygorGuidesViewer_ArrowSkin_Mixin)
	self.ArrowSkins[id] = skin
	return skin
end
	
function Pointer:GetSkinPath(skin)
	return self.ArrowSkins[skin or ZGV.db.options.arrowskin]:GetDir()
end

function Pointer:SetArrowSkin(skin)
	-- no style? grab default
	if not skin then
		skin = next(self.ArrowSkins)
		assert(skin,"No arrow skin to fall back to!")
		return self:SetArrowSkin(skin)
	end
	local skindata = self.ArrowSkins[skin]
	if not skindata then
		ZGV:Print("Unknown arrow skin '"..skin.."', falling back to default")
		return self:SetArrowSkin()
	end

	local way
	if self.CurrentArrowSkin then
		way = self.ArrowFrame.waypoint
		self.ArrowFrame:Hide()
	end

	ZGV.db.profile.arrowskin = skin

	self.CurrentArrowSkin = skindata
	self.ArrowSkinDir = self:GetArrowSkin():GetDir()

	self:CreateArrowFrame()

	self.ArrowFrame.waypoint = way
end

function Pointer:GetArrowSkin()
	return self.CurrentArrowSkin
end
	


function Pointer:UpdateArrowVisibility()
	if not self.ArrowFrame then return end
	if ZGV.db.profile.arrowshow then self.ArrowFrame:Show() else self.ArrowFrame:Hide() end
end

-- 2022-11-07, wow build 46455: deprecated, since arrow object is now too small.
function Pointer:SetMinimapPlayerTexture()
	Minimap:SetPlayerTexture(ZGV.DIR.."\\skins\\minimaparrow-player")
end

local function dist(x1,y1,x2,y2)
	return sqrt((x1-x2)*(x1-x2)+(y1-y2)*(y1-y2))
end
local function dist_to_edge(vx,vy,wx,wy,px,py)
	if vx==wx and vy==wy then return dist(vx,vy,px,py) end
end
local function anglenormal(a)
	while a>6.2832 do a=a-6.2832 end
	while a<0 do a=a+6.2832 end
	return a
end
local function anglexy(ax,ay,bx,by)
	local angle = math.atan2(bx-ax,(ay-by)*0.66)
	if angle>0 then angle=-6.2832+angle end
	return anglenormal(angle)
end
local function angle(a,b)
	return anglexy(a.x,a.y,b.x,b.y)
end
local function anglediff_cw(a,b)  -- clockwise
	local diff=b-a
	return anglenormal(diff)
end


function Pointer:PointToNextInPath(pathname)
	local way = self:GetNextInPath(pathname or "farm")
	--self:Debug("GNIP done")
	if type(way)=="table" then  -- OK, waypoint
		self:Debug("PointToNext: #%d '%s' %.1f,%.1f",way.num,way.title or "(untitled)",way.x,way.y)
		self:ShowArrow(way)
		if LibRover.updating then LibRover:Abort("ptnip") end  -- BAD PLACE :(
		return way
	else
		self:Debug("PointToNext fail for set '%s': '%s'",type(pathname)=="string" and pathname or "("..type(pathname)..")",tostring(way))
	end
end

-- find the next point for the current position.
-- Can it base on the current point..? Doubtful, it can run continuously, but perhaps it can be safeguarded.
-- return true  to stay on the current point.

-- #00pathfollowing
-- Each following mode is described in its code below.

local smart_corners={}

local path_default_dist = 30
local smart_path_default_dist = 50

function Pointer:GetNextInPath(pathname,testway)
	local pointset = (type(pathname)=="table" and pathname) or self.pointsets[pathname or ""] or self.pointsets["farm"] or self.pointsets["path"]
	if not pointset then return "no set" end

	local pathfollow = pointset.follow or "loose"
	local pathdist = pointset.dist or path_default_dist
	local pathpoints = pointset.points
	local pathloop = pointset.loop

	self:Debug("GetNextInPath: path %s, mode %s, %d points",type(pathname)=="string" and pathname or "("..type(pathname)..")",pathfollow or "nil",pathpoints and #pathpoints)

	local curway = self.ArrowFrame.waypoint
	curway=(curway and curway.pathnode and curway.pathnode.waypoint) or curway

	if pathfollow == "old_smart" then

		--[[ SMART: Try to simulate a "drainage basin" here. 
			- At any time, point to the NEXT point in the "current segment" that the player is closest to.
		--]]
		

		--[==[ let's try a completely different approach

			-- establish nearest point
			local neardist=9999999999
			local nearnum
			for w,way in ipairs(pathwaypoints) do
				if way.frame_minimap and way.frame_minimap.dist<neardist then
					neardist=way.frame_minimap.dist
					nearnum=w
				end
			end
			local nearway=pathpoints[nearnum]

			-- establish next point
			local nextnum=nearnum+1
			if nextnum>#pathpoints then
				if pointset.loop then nextnum=1 else return true end
			end
			local nextway=pathpoints[nextnum]

			-- if we're "on" the current point, give the next.
			if neardist<smart_path_dist then return nextway end -----------------------

			local nextdist = nextway.frame_minimap.dist
			local nearnextdist = HDM:GetZoneDistance(nearway.m,nearway.f,nearway.x,nearway.y,nextway.m,nextway.f,nextway.x,nextway.y)
			if not nearnextdist then
				return nearway
			else

				--[=[
				-- if we ever need angles here...

				-- GetDist:
					local dist,xd,yd = HBD:GetZoneDistance(node1.m,node1.f,node1.x,node1.y,node2.m,node2.f,node2.x,node2.y)
					if dist==0 and node1.c~=node2.c or (node1.c==node2.c and node1.c==-1 and node1.m~=node2.m) then dist=nil end   -- the latter condition shouldn't matter anymore, since we moved to Astrolabe systems instead of continents
					return dist or 99999999,xd,yd
				--

				local dist,xd,yd = GetDist(self,node2)
				if not xd then return end
				local dir = atan2(xd, -yd)
				return dir%360
				--]=]

				-- fun part. Are we near the straight line..?
				if neardist+nextdist < nearnextdist*1.2 then return nextway else return nearway end
			end
		--]==]

		--[==[
			local tempway = self.tempway
			if not tempway then
				local m,f = ZGV.CurrentMapID,ZGV.CurrentMapFloor
				if testway then m,f=testway.m,testway.f end
				tempway = self:SetWaypoint(m,0,0,{title="Follow farm path",overworld=true,type="path"})
				self.tempway = tempway
			end
		--]==]

		local smart_path_dist = pointset.smarttight or pointset.dist or smart_path_default_dist
		-- establish least pulled segment
		local min_pull=9999
		local min_pull_second=9999
		local min_pull_third=9999
		local min_pull_w,min_pull_nextw=0,0
		local good_next_way

		local nearest_dist=9999
		local nearest_way

		for w,way in ipairs(pathpoints) do  if way.frame_minimap then
			local dist = way.frame_minimap.dist or 9999
			if testway then dist=HBD:GetZoneDistance(way.m,way.x,way.y,testway.m,testway.x,testway.y) or 9999 end
			
			local nextw = w+1
			if nextw>#pathpoints then
				if not pointset.loop then  break  else  nextw=1  end
			end
			local nextway = pathpoints[nextw]

			local nextdist = nextway.frame_minimap.dist or 9999
			if testway then nextdist=HBD:GetZoneDistance(nextway.m,nextway.x,nextway.y,testway.m,testway.x,testway.y) or 9999 end
			
			local dist_between = HBD:GetZoneDistance(way.m,way.x,way.y,nextway.m,nextway.x,nextway.y)

			-- don't bother with segments too short
			if dist_between>smart_path_dist*0.5 then
				--local pull = (dist+nextdist) / dist_between
				local pull = (dist+nextdist) - dist_between

				if dist<(way.radius or smart_path_dist) then pull=0 end  -- zero pull at start point of each segment!
				if nextdist<smart_path_dist then pull=10 end  -- lousy pull at end point

				-- find segment with minimum pull, point to its endpoint.
				if (pull<=min_pull)
				--or (pull-min_pull<0.2)
				then
					--min_pull_third = min_pull_second  min_pull_second = min_pull
					min_pull = pull
					good_next_way = nextway
				end
				--print(("%d-%d: %d + %d / %d = %.2f"):format(w,nextw,dist,nextdist,dist_between,pull))
			end

			-- Store nearest waypoint just in case.
			--if dist<nearest_dist then 	nearest_dist,nearest_way=dist,way end
		end  end

		--[[
		-- Abandoned: point to nearest if we're far away. Flaw: could start doing that BETWEEN points.
		if nearest_dist>50 then return nearest_way end
		--]]

		--[[
		-- Abandoned: trying to get out of a case when the middle of a circular path becomes a vortex.
		print("min_pull_third",min_pull_third,"min_pull_second",min_pull_second,"min_pull",min_pull,"diff",abs(min_pull_second-min_pull),"diff2",abs(min_pull_third-min_pull_second))
		if abs(min_pull_second-min_pull)<10 and abs(min_pull_third-min_pull_second)<10 then  -- we have three almost identical pulls..? That's not good. Just point to the nearest point.
			return nearest_way
		end
		--]]

		-- how far are we along the line?
		-- perhaps later.
		--[[
			do
				local way1,way2 = waypoints[min_pull_w],waypoints[min_pull_nextw]

				local dist1 = way1.frame_minimap.dist
				local dist2 = way2.frame_minimap.dist
				if testway then dist1=HBD:GetZoneDistance(way1.m,way1.f,way1.x,way1.y,testway.m,testway.f,testway.x,testway.y) end
				if testway then dist2=HBD:GetZoneDistance(way2.m,way2.f,way2.x,way2.y,testway.m,testway.f,testway.x,testway.y) end
				local dist_between = HBD:GetZoneDistance(way1.m,way1.f,way1.x,way1.y,way2.m,way2.f,way2.x,way2.y)

				local pull2 = (dist+nextdist) / dist_between  -- 1..inf
				local along = .........
			end

			local progress_band = 500
			local progress = 1 - (min(progress_band,pull)/progress_band)
			tempway.x = way.x + (nextway.x-way.x)*progress
			tempway.y = way.y + (nextway.y-way.y)*progress


			tempway:SetIcon(tempway.icon)
			return tempway
		--]]

		return good_next_way

	elseif pathfollow == "old_smart2" then ----------------------------------------

		--[[ SMART2 : no idea how this works. Could analyze, but meh.
		--]]
		-- broken with ants
		local neardist=9999999999
		local nears={}
		local nearnum
		for w,way in ipairs(pathpoints) do  if way.frame_minimap and way.frame_minimap.dist<neardist then  neardist=way.frame_minimap.dist  nearnum=w  end  end
		tinsert(nears,nearnum)
		repeat
			local neardistmin=neardist
			neardist=neardist*1.1
			for w,way in ipairs(pathpoints) do  if way.frame_minimap and way.frame_minimap.dist>=neardistmin and way.frame_minimap.dist<neardist then  tinsert(nears,w)  end  end
		until #nears>=3 or #nears==#pathpoints
		Pointer:Debug("smart2: %d nears (%s)",#nears,table.concat(nears,","))

		local minnum = min(unpack(nears))
		local maxnum = max(unpack(nears))
		local size = #self.waypoints
		local halfway = floor(size/2)
		if maxnum-minnum>halfway then -- first and last choice span more than half the path?
			--for i in ipairs(nears) do  if way.frame_minimap and way.frame_minimap.dist<neardist then  neardist=way.frame_minimap.dist  nearnum=w  end  end
			for i=1,#nears do nears[i]=nears[i]-halfway  if nears[i]<0 then nears[i]=nears[i]+size end  end
			maxnum = max(unpack(nears))
			Pointer:Debug("nears fix",unpack(nears))
		end
		Pointer:Debug("maxnum",maxnum)

		return pathpoints[maxnum]

	elseif pathfollow == "smart" then

		--[[ SMART3 : best for "inline travel"

		--]]
		local px,py,pm
		if testway then px,py,pm=testway.x,testway.y,testway.m
		else px,py,pm=LibRover:GetPlayerPosition() end

		-- To ensure all lines are (semi) equally covered in (fake) points, they need to be subdivided.
		-- Find shortest distance between ANY points (not just along lines), as a basic segment subdivision guideline.
		--[[
			self:Debug("smart3 bef")
			local shortest_segment = 9999
			for i=1,#pathpoints-1 do
				for j=i+1,#pathpoints do
					local way=pathpoints[i]
					local way2=pathpoints[j]
					local segment = HBD:GetZoneDistance(way.m,way.f,way.x,way.y,way2.m,way2.f,way2.x,way2.y) or 9999
					if segment<shortest_segment then shortest_segment=segment end
				end
			end
			self:Debug("smart3 shs %.2f",shortest_segment)
		--]]
		local shortest_segment = pathdist

		-- Prepare subdivision basing on shortest distance. Each line gets divided if it's longer than the shortest distance.
		-- This way lines are sure to have subpoints spaced closer than any normal points (unless the lines cross).
		wipe(smart_corners)
		local myway_i,myway_s=0,0
		local mindist=9999
		local on_path
		for i=1,#pathpoints do
			local way=pathpoints[i]
			local way2=pathpoints[i+1] or (pathloop and pathpoints[1])
			if not way2 then break end
			local segment = HBD:GetZoneDistance(way.m,way.x,way.y,way2.m,way2.x,way2.y) or 9999
			local subdivs = max(1,ceil(segment/shortest_segment))
			for s=0,subdivs-1 do
				local sub=s/subdivs
				local x = way.x+(way2.x-way.x)*sub
				local y = way.y+(way2.y-way.y)*sub
				local dist = HBD:GetZoneDistance(pm,px,py,way.m,x,y) or 9999
				if dist<pathdist then  on_path=i  end  -- store "in range" points for later.
				--tinsert(smart_corners,{i=i,is=i+sub,dist=dist})
				if dist<mindist then
					mindist=dist
					myway_i=i
					myway_s=sub
				end
			end
		end

		-- Either we have on_path set to last point within pathdist range, or (also) we have mindist/myway_i/myway_s set to closest point on path.
		local on_path_looped
		if pathloop and on_path==#pathpoints then -- last chance of corner on loop: repeat first segment
			local way=pathpoints[1]
			local way2=pathpoints[2]
			local segment = HBD:GetZoneDistance(way.m,way.x,way.y,way2.m,way2.x,way2.y) or 9999
			local subdivs = max(1,ceil(segment/shortest_segment))
			for s=0,subdivs-1 do
				local sub=s/subdivs
				local x = way.x+(way2.x-way.x)*sub
				local y = way.y+(way2.y-way.y)*sub
				local dist = HBD:GetZoneDistance(pm,px,py,way.m,x,y) or 9999
				if dist<pathdist then  on_path=1  on_path_looped=1 end  -- store "in range" points for later.
			end
		end
		if on_path then myway_i=on_path end

		--[[
		if next(smart_corners) then  -- we're on path. Handle those pesky corner cases.
			mindist=9999
			for n,corner in ipairs(smart_corners) do
				if corner.dist<mindist then
					mindist=corner.dist
				end
				myway_i=corner.i
				myway_s=corner.is-corner.i
			end
		end
		--]]

		--print(("Point near %.2f in path."):format(myway_i+myway_s))
		--if on_path then print("On path.") end
		--if on_path_looped then print("On path LOOPED.") end

		-- myway_i points to "previous" point.
		
		if mindist<=pathdist or on_path then -- we're on the path, more or less
			myway_i=myway_i+1 -- endpoint
			--if myway_s>0.9 then myway_i=myway_i+1 end  -- when near endpoints, skip to next
			while pathloop and myway_i>#pathpoints do myway_i=myway_i-#pathpoints end
			return pathpoints[myway_i]
		elseif pathloop or myway_i<#pathpoints-1 then -- we're not on the path, let's do some skipping
			--if myway_s>0.5 then
				myway_i=myway_i+1
				while myway_i>#pathpoints do myway_i=myway_i-#pathpoints end
			--end
			-- calculate dissect angle between a (prev), b (THIS), and c (next)
			local a_i=myway_i-1  while a_i<1 do a_i=a_i+#pathpoints end
			local a=pathpoints[a_i]
			local b_i=a_i+1  while b_i>#pathpoints do b_i=b_i-#pathpoints end
			local b=pathpoints[b_i]
			local c_i=b_i+1  while c_i>#pathpoints do c_i=c_i-#pathpoints end
			local c=pathpoints[c_i]

			if not a or not b or not c then return pathpoints[myway_i] end

			local angle_b_a = angle(b,a)
			local angle_b_c = angle(b,c)
			local angle_b_p = anglexy(b.x,b.y,px,py)

			local adherence = self.ADHERENCE or 0.6
			-- dissect "up" (assuming a is to the "left" of b, and c is to the "right" or b)
			local angle_b_up = anglenormal(angle_b_a + anglediff_cw(angle_b_a,angle_b_c)*(1-adherence))
			local angle_b_dn = anglenormal(angle_b_c + anglediff_cw(angle_b_c,angle_b_a)*adherence)

			--print(("a [%d] = %d %d\nb [%d] = %d %d\nc [%d] = %d %d"):format(a_i,a.x*100,a.y*100,b_i,b.x*100,b.y*100,c_i,c.x*100,c.y*100))
			--print(("b>a = %d, b>c = %d, b>p = %d; b>up = %d, b>dn = %d."):format(deg(angle_b_a),deg(angle_b_c),deg(angle_b_p),deg(angle_b_up),deg(angle_b_dn)))
			--do return end

			if anglediff_cw(angle_b_a,angle_b_p)<anglediff_cw(angle_b_a,angle_b_up) or -- point is "northwest", belongs to b
			   anglediff_cw(angle_b_dn,angle_b_p)<anglediff_cw(angle_b_dn,angle_b_a) then -- point is "southwest", belongs to b
				return b
			else
				return c
			end

		else
			return pathpoints[myway_i+1] or pathpoints[#pathpoints]
		end

	elseif pathfollow == "smart4" then

		--[[ SMART4 : completely unfinished. 

		--]]
		local px,py,pm,pf
		if testway then px,py,pm,pf=testway.x,testway.y,testway.m,testway.f
		else px,py,pm,pf=LibRover:GetPlayerPosition() end

		-- To ensure all lines are (semi) equally covered in (fake) points, they need to be subdivided.
		-- Find shortest distance between ANY points (not just along lines), as a basic segment subdivision guideline.

		self:Debug("smart3 bef")
		local shortest_segment = 9999
		for i=1,#pathpoints-1 do
			for j=i+1,#pathpoints do
				local way=pathpoints[i]
				local way2=pathpoints[j]
				local segment = HBD:GetZoneDistance(way.m,way.x,way.y,way2.m,way2.x,way2.y) or 9999
				if segment<shortest_segment then shortest_segment=segment end
			end
		end
		self:Debug("smart3 shs %.2f",shortest_segment)

		-- Prepare subdivision basing on shortest distance. Each line gets divided if it's longer than the shortest distance.
		-- This way lines are sure to have subpoints spaced closer than any normal points (unless the lines cross).
		local smart3_segment_subdivs = {} -- unused anyway
		wipe(smart3_segment_subdivs)
		local myway=pathpoints[1]
		local mywayi=0
		local mindist=9999
		for i=1,#pathpoints do
			local way=pathpoints[i]
			local way2=pathpoints[i+1] or pathpoints[1] -- TODO KURWA
			local segment = HBD:GetZoneDistance(way.m,way.x,way.y,way2.m,way2.x,way2.y) or 9999
			local subdivs = max(1,ceil(segment/shortest_segment))
			local target_i=i+1
			for s=0,subdivs do
				local sub=s/subdivs
				local x = way.x+(way2.x-way.x)*sub
				local y = way.y+(way2.y-way.y)*sub
				local dist = HBD:GetZoneDistance(pm,px,py,way.m,x,y) or 9999
				if s>=subdivs*0.66 then -- last 1/3 points to yet next point
					local i2=i+2
					while i2>#pathpoints do i2=i2-#pathpoints end
					target_i=i2
				end
				if dist<mindist then
					mindist=dist
					mywayi=i
					myway=way2
				end
			end
		end


		return myway

	elseif pathfollow == "strict"  then ----------------------------------------

		--[[ STRICT: Require the player to walk through the points in the order described, with neither shortcuts nor smartassery.
			- Initially, point to the FIRST point.
			- When the CURRENT point is stepped on, point to the NEXT point.
			- At any time, stick to the current point.
			- Periodic checks are pointless.
		--]]

		--
			if not curway then return pathpoints[1] end

			local default_radius = Pointer:GetDefaultStepDist()
			for w,way in ipairs(pathpoints) do
				if way==curway  -- this is the current waypoint
				and way.frame_minimap and way.frame_minimap.dist<(way.radius or default_radius)  -- and we're standing on top of it
				then  -- return next point
					return pathpoints[w+1] or (pointset.loop and pathpoints[1]) or curway
				end
			end
			return curway
		--

	elseif pathfollow == "strictbounce"  then ----------------------------------------

		--[[ STRICT: Require the player to walk through the points in the order described, with neither shortcuts nor smartassery.
			- Initially, point to the FIRST point.
			- When the CURRENT point is stepped on, point to the NEXT point.
			- At any time, stick to the current point.
			- Periodic checks are pointless.
			Bounce means that when reaching final point, player will be directed back to start following the same path
		--]]

		--
			if not curway then return pathpoints[1] end

			pointset.direction = pointset.direction or "normal"

			local default_radius = Pointer:GetDefaultStepDist()
			for w,way in ipairs(pathpoints) do
				if way==curway  -- this is the current waypoint
				and way.frame_minimap and way.frame_minimap.dist<(way.radius or default_radius)  -- and we're standing on top of it
				then  -- return next point
					if pointset.direction=="normal" then
						if pathpoints[w+1] then
							return pathpoints[w+1]
						else
							pointset.direction = "reverse"
							return pathpoints[w-1]
						end
					else -- reverse
						if pathpoints[w-1] then
							return pathpoints[w-1]
						else
							pointset.direction = "normal"
							return pathpoints[w+1]
						end
					end
					--return pathpoints[w+1] or (pointset.loop and pathpoints[1]) or curway
				end
			end
			return curway
		--


	elseif pathfollow == "loose" then ----------------------------------------

		--[[ LOOSE: Let the player walk through the points, recognizing skipping when a further points is reached.
			- Initially, point to the NEAREST point.
			- When ANY point is stepped on, point to the NEXT point.
			- At any time, stick to the current point.
			- Periodic checks are pointless.
		--]]

		--
			if not curway then -- default to closest
				local nearest_dist,nearest_way=9999,nil
				for w,way in ipairs(pathpoints) do if way.frame_minimap and way.frame_minimap.dist and way.frame_minimap.dist<nearest_dist then nearest_dist,nearest_way=way.frame_minimap.dist,way end end
				return nearest_way
			end

			local default_radius = Pointer:GetDefaultStepDist()
			local stopatnextway
			for w,way in ipairs(pathpoints) do
				if stopatnextway then return way end
				local mf = way.frame_minimap
				local dist = mf and mf.dist or 9999
				if dist<=(way.radius or default_radius)
				then  -- return next point
					return pathpoints[w+1] or (pointset.loop and pathpoints[1]) or true
				end
			end
			return true
		--

	elseif pathfollow == "route" then ----------------------------------------

		--[[ ROUTE: this is a special case, showing always the 3rd point ([1] is current player position, [2] is currently next point, so [3] is proper "yet next" target to skip to.
		--]]
		if self.pointsets.route then
			Pointer:Debug("GetNextInPath 'route', hell yeah")
			if #self.pointsets.route.points>=3 then return self.pointsets.route.points[3] 
			else return true -- keep!
			end
		else return true end
		--LibRover.updating = true
		--LibRover:UpdateNow()
		--ZGV:ShowWaypoints() -- UGLY. TODO. Clears manual path, that's bad.

	elseif pathfollow == "none" then
		return pathpoints and pathpoints[1]
	end
end

local colors={}
local defaultcolor={1,1,1,1}
function Pointer:TestGetNextInPathOne(x,y,n)
	local way = Pointer:SetWaypoint(ZGV.GetCurrentMapID(),x,y,{
					type="manual",
					icon=Pointer.Icons.arrow,
					onminimap="always",
					overworld=true,
					showonedge=false,
					angle=0
				})
	if n>30 then way.size=Pointer.Icons.arrow.size/(1+((n-30)/100)) end
	self:TestGetNextInPathOne_SetWay(way)
	way:SetIcon(way.icon)
	way.frame_worldmap.icon:SetVertexColor(unpack(colors[way.farmway] or defaultcolor))
end

function Pointer:TestGetNextInPathOne_SetWay(way)
	--self.pointsets['farm'].follow="smart"
	local nextway = self:GetNextInPath("farm",way)

	if not nextway or type(nextway)~="table" then return end

	way.angle = math.atan2(nextway.x-way.x,(way.y-nextway.y)*0.66)
	if way.angle>0 then way.angle=6.2831-way.angle else way.angle=-way.angle end
	way.title = "To "..nextway.title
	way.farmway = nextway
	way:UpdateWorldMapIcon()
end

function Pointer:Debug_MoveManualsForward()
	for i,way in ipairs(self.waypoints) do
		if way.type=="manual" and way.angle then
			way.timerbase=way.timerbase or math.random(30)/10
			local timer=(GetTime()+way.timerbase)%3
			if timer<1 then
				if not way.forcedangle then
					way.angle = math.random(360)/360*6.2832
					way.forcedangle=true
				end
			else
				way.forcedangle=false
				self:TestGetNextInPathOne_SetWay(way)  -- sets angle
			end
			--way.angle = way.angle + (math.random(60)-30)/360*6.2832
			local dx,dy = math.sin(way.angle)*0.003,(math.cos(way.angle)*0.003)/0.666
			way.x=way.x-dx
			way.y=way.y-dy
			way:SetIcon(way.icon)
			way:Show()
			way:UpdateWorldMapIcon()
		end
	end
end

Pointer.colors=colors
function Pointer:TestGetNextInPath(n)
	self:ClearWaypoints("manual")
	table.wipe(colors)
	for wi,way in ipairs((self.pointsets.farm and self.pointsets.farm.points) or (self.pointsets.path and self.pointsets.path.points)) do
		colors[way] = {random(),random(),random(),1}
	end
	for x=0,1,1/n do  for y=0,1,1/n/0.66 do
		self:TestGetNextInPathOne(x,y,n)
	end end
end

--[[
function Pointer.GetMapName(id)
	local map,floor = Pointer.UnwrapMapFloor(mapfloor)
	local mapname = ZGV.GetMapNameByID(map)
end
-- TODO later.
--]]

local extramaps = {
	[-1]="Azeroth",
	[0]="Azeroth",
	[906]="Theramore"
	}


local flash_interval=0.25

local ant_interval=0.001
local ant_movespeed = 3.0  -- ant steps per second

local flash=nil
function Pointer:MinimapNodeFlash(s)
	flash=not flash
	if flash then
		Minimap:SetBlipTexture("Interface\\MINIMAP\\ObjectIcons")
	else
		Minimap:SetBlipTexture(ZGV.DIR.."\\Skins\\objecticons_off")
	end
end
function Pointer:MinimapNodeFlashOff()
	Minimap:SetBlipTexture("INTERFACE\\MINIMAP\\OBJECTICONS")
end

local q=0

-- Some small utilities which may be useful to several waypointing backends
-- Moved 'em out of Internal waypointer so that TomTom, for example,
-- may equally enjoy the pleasures of nettles^W path-based navigation ~aprotas

local curve_spacing = 200  -- overwritten with antspacing from options anyway
local max_ants_per_segment = 40

local function calc_catmull_rom(t,t2,t3,p0,p1,p2,p3)
	return 0.5 * ( (2*p1.gx) + (-p0.gx+p2.gx)*t + (2*p0.gx-5*p1.gx+4*p2.gx-p3.gx) * t2 + (-p0.gx+3*p1.gx-3*p2.gx+p3.gx) * t3),
		   0.5 * ( (2*p1.gy) + (-p0.gy+p2.gy)*t + (2*p0.gy-5*p1.gy+4*p2.gy-p3.gy) * t2 + (-p0.gy+3*p1.gy-3*p2.gy+p3.gy) * t3)
	-- kept separate just in case. Inlined below for optimization.
end
Pointer.calc_catmull_rom=calc_catmull_rom

local function calc_angles(points,do_loop,recalc)
	local atan2=math.atan2
	for k,point in ipairs(points) do
		if recalc then point.angle=nil end
		if not point.angle and point.gx then
			local nextpoint = points[k+1]
			if not nextpoint then
				if do_loop then nextpoint=points[1] else break end
			end
			if nextpoint and nextpoint.gm==point.gm and nextpoint.gx then
				local angle = atan2(nextpoint.gx-point.gx,(point.gy-nextpoint.gy)*0.66)
				if angle>0 then angle=6.2831-angle else angle=-angle end
				point.angle = angle
			end
		end
	end
end
Pointer.calc_angles=calc_angles

local function calc_angles_curved(points,do_loop,recalc)
	local atan2=math.atan2
	for i=1,#points do
		local point=points[i]
		if recalc then point.angle=nil end
		if not point.angle and point.gx then
			local p0i,p1i,p2i,p3i = i-1,i,i+1,i+2
			if p0i<1 then p0i = do_loop and p0i+#points or 1 end
			if p2i>#points then p2i = do_loop and p2i-#points or #points end
			if p3i>#points then p3i = do_loop and p3i-#points or #points end
			local p0,p1,p2,p3=points[p0i],points[p1i],points[p2i],points[p3i]
			local x,y = calc_catmull_rom(0.2,0.04,0.008,p0,p1,p2,p3)
			if x then
				local angle = atan2(x-point.gx,(point.gy-y)*0.66)
				if angle>0 then angle=6.2831-angle else angle=-angle end
				point.angle = angle
			end
		end
	end
end
Pointer.calc_angles_curved=calc_angles_curved



-- optimization madness: localize EVERYTHING

local antpoints = {}
Pointer.antpoints = antpoints

local def_ant_icon = ZGV.Pointer.Icons.ant

local widths_cache = {}
setmetatable(widths_cache,{__index=function(t,mapid) 
	if not mapid or not HBD.mapData[mapid] then return 1 end
	local w=HBD.mapData[mapid][1]  
	if w==0 and HBD.mapData[mapid].floors then 
		local nextf=next(HBD.mapData[mapid].floors)
		w=HBD.mapData[mapid].floors[nextf] and HBD.mapData[mapid].floors[nextf][1]
	end  
	t[mapid]=w  
	return w  
end})

Pointer.widths_cache = widths_cache

local maxants_sanity = 10000
local function spawn_curve_ants(points,loop,phase, parentmap,xmin,xmax,ymin,ymax)
	if #points<3 then return antpoints,0 end
	--print("curving!!")
	local abs=abs
	local ceil=ceil

	local antpoints_num = 0

	local np=#points
	local sanity=0
	local antpoints=antpoints
	local curve_spacing=curve_spacing
	local breakall
	for i=1,np do  while true do
		--tinsert(antpoints,points[i])
		local p0i,p1i,p2i,p3i = i-1,i,i+1,i+2
		if p0i<1 then p0i = loop and p0i+#points or 1 end
		if p2i>#points then p2i = loop and p2i-#points or #points end
		if p3i>#points then p3i = loop and p3i-#points or #points end

		local p0,p1,p2,p3=points[p0i],points[p1i],points[p2i],points[p3i]

		local p0gx,p0gy,p1gx,p1gy,p2gx,p2gy,p3gx,p3gy=p0.gx,p0.gy,p1.gx,p1.gy,p2.gx,p2.gy,p3.gx,p3.gy
		if not p0gx or not p1gx or not p2gx or not p3gx then break end

		local curve_accuracy = p1.curve_accuracy and not p1.player
		if not curve_accuracy then
			--local dist = HBD:GetZoneDistance(p1.map,p1.floor,p1.x/100,p1.y/100,p2.map,p2.floor,p2.x/100,p2.y/100)   -- Astrolabe thinks x and y are 0..1, and they're 0..100 here. Results will be valid, though exaggerated.
			local dist
			if false then -- use straight dist
				dist = HBD:GetZoneDistance(p1.gm,p1.gx,p1.gy,p2.gm,p2.gx,p2.gy)   -- Astrolabe thinks x and y are 0..1, and they're 0..100 here. Results will be valid, though exaggerated.
			else
				dist=0
				local lx,ly=p1gx,p1gy
				for t=0.1,1,0.1 do
					local t2 = t*t
					local t3 = t*t*t
					local x = 0.5 * ( (2*p1gx) + (-p0gx+p2gx)*t + (2*p0gx-5*p1gx+4*p2gx-p3gx) * t2 + (-p0gx+3*p1gx-3*p2gx+p3gx) * t3)
					local y = 0.5 * ( (2*p1gy) + (-p0gy+p2gy)*t + (2*p0gy-5*p1gy+4*p2gy-p3gy) * t2 + (-p0gy+3*p1gy-3*p2gy+p3gy) * t3)
					dist=dist+(x-lx)*(x-lx)+(y-ly)*(y-ly)*0.66
					lx,ly=x,y
				end
				dist=sqrt(dist)*widths_cache[p1.gm]*3
			end
			if not dist or dist<1 then dist=1 end
			curve_accuracy = ceil(dist/curve_spacing)
			if curve_accuracy>max_ants_per_segment then curve_accuracy=max_ants_per_segment end
			curve_accuracy = 1/curve_accuracy
			p1.curve_accuracy = curve_accuracy
		end

		--print("acc",curve_accuracy)
		--for t=phase*curve_accuracy,1-(1-phase)*curve_accuracy,curve_accuracy*0.999 do
		for t=phase*curve_accuracy,0.9999,curve_accuracy*0.999 do
			local t2 = t*t
			local t3 = t*t*t

			-- Catmull-Rom
			--local x,y = calc_catmull_rom(t,t2,t3,p0,p1,p2,p3)
			local x = 0.5 * ( (2*p1gx) + (-p0gx+p2gx)*t + (2*p0gx-5*p1gx+4*p2gx-p3gx) * t2 + (-p0gx+3*p1gx-3*p2gx+p3gx) * t3)
			local y = 0.5 * ( (2*p1gy) + (-p0gy+p2gy)*t + (2*p0gy-5*p1gy+4*p2gy-p3gy) * t2 + (-p0gy+3*p1gy-3*p2gy+p3gy) * t3)

			--local x = 0.5 * ( (2*p1.gx) + (-p0.x+p2.x)*t + (2*p0.x-5*p1.x+4*p2.x-p3.x) * t2 + (-p0.x+3*p1.x-3*p2.x+p3.x) * t3)
			--local y = 0.5 * ( (2*p1.gy) + (-p0.y+p2.y)*t + (2*p0.y-5*p1.y+4*p2.y-p3.y) * t2 + (-p0.y+3*p1.y-3*p2.y+p3.y) * t3)

			--if (abs(x-p1.x)+abs(y-p1.y)>0.1) and (abs(x-p2.x)+abs(y-p2.y)>0.1) then

			if not xmin  or  not xmax  or  (x>xmin and x<xmax and y>ymin and y<ymax) then
				antpoints_num = antpoints_num+1
				local ant = antpoints[antpoints_num]
				if not ant then
					ant = {}
					antpoints[antpoints_num]=ant
				end

				ant.map,ant.x,ant.y=p1.gm,x,y
				ant.sub=i+t
				ant.icon = p2.ant_icon or def_ant_icon   -- ant_icon is contained in the DESTINATION waypoint of the pair.
				ant.p0,ant.p1,ant.p2,ant.p3=p0,p1,p2,p3
				ant.p1m,ant.p2m=p1.m,p2.m
				ant.ant_dist=t
			end

			--print(("%d/%.2f: [%.1f,%.1f]->[%.1f,%.1f] = [%.1f,%.1f]"):format(i,t,p1.x,p1.y,p2.x,p2.y,x,y))
			--end

			sanity=sanity+1  if sanity>=maxants_sanity then ZGV:Error("Ants get calculated infinitely! spacing "..curve_spacing..", "..antpoints_num.." live so far.")  breakall=true  break  end
		end
		break
	 end
	if breakall then break end
	end
	return antpoints,antpoints_num
end
Pointer.spawn_curve_ants = spawn_curve_ants


local function spawn_straight_ants_prev(points,loop,phase)
	if #points<2 then return end
	--print("curving!!")
	local abs=abs
	local ceil=ceil

	local antpoints_num = 0

	local np=#points
	local breakall
	for i=1,np do  while true do
		local p1 = points[i]
		local p2 = points[i+1]
		if not p2 then  if loop then p2=points[1] else breakall=true break end  end

		local base_t=0

		-- NEW CHECK. Points are supposedly on global maps. If points do NOT share a global map, NO ANTS BETWEEN THEM.
		if p1.gm
		and p1.gm==p2.gm
		--and p1.gf==p2.gf
		then

			local curve_accuracy = p1.curve_accuracy
			if not curve_accuracy then
				--local dist = HBD:GetZoneDistance(p1.map,p1.floor,p1.x/100,p1.y/100,p2.map,p2.floor,p2.x/100,p2.y/100)   -- Astrolabe thinks x and y are 0..1, and they're 0..100 here. Results will be valid, though exaggerated.
				local dist = Mdist(p1.gm,p1.gx,p1.gy,p2.gm,p2.gx,p2.gy)   -- Astrolabe thinks x and y are 0..1, and they're 0..100 here. Results will be valid, though exaggerated.
				--print(i,"/",#points,dist)
				if not dist or dist<1 then dist=2000*sqrt((p1.gx-p2.gx)*(p1.gx-p2.gx)+(p1.gy-p2.gy)*(p1.gy-p2.gy)) end  -- use costly global calculation when in need.
				if dist<1 then dist=100 end
				curve_accuracy = ceil(dist/curve_spacing)
				--curve_accuracy = dist/curve_spacing
				if curve_accuracy>max_ants_per_segment then curve_accuracy=max_ants_per_segment end
				curve_accuracy = 1/curve_accuracy
				p1.curve_accuracy = curve_accuracy
				--print(curve_accuracy)
			end

			--print("acc",curve_accuracy)
			for t=base_t+phase*curve_accuracy,1,curve_accuracy*0.999 do
				-- straight line
				local x = p1.gx + t*(p2.gx-p1.gx)
				local y = p1.gy + t*(p2.gy-p1.gy)

				-- swirly ants!
				--x = x + math.sin((5*t-phase)*6.28)*0.001
				--y = y + math.cos((5*t-phase)*6.28)*0.00066

				antpoints_num = antpoints_num+1
				local ant = antpoints[antpoints_num]
				if not ant then
					ant = {}
					antpoints[antpoints_num]=ant
				end

				ant.map,ant.x,ant.y=p1.gm,x,y
				ant.sub=i+t
				ant.icon = p2.ant_icon or def_ant_icon   -- ant_icon is contained in the DESTINATION waypoint of the pair.
				ant.p1,ant.p2=p1,p2
				ant.p1m,ant.p2m=p1.m,p2.m
				ant.ant_dist=t
				-- bobbly ants!
				--ant.size=60+20*math.sin((5*t-phase)*6.28)

				--base_t=t

				--tinsert(antpoints,{map=0,floor=0,x=x,y=y,sub=i+t,icon=ZGV.Pointer.Icons.ant})
			end

			--base_t=(base_t+curve_accuracy) % 1
		end
		break
	end  if breakall then break end  end
	return antpoints,antpoints_num
end

-- points: source data
-- start: num of ants generated so far
local function spawn_straight_ants(points,loop,phase, parentmap,xmin,xmax,ymin,ymax)
	if #points<2 then return antpoints,0 end
	local abs=abs
	local ceil=ceil

	local antpoints_num = 0

	local np=#points
	local breakall

	if points[1].curve_leftoverphase then
		phase=phase-points[1].curve_leftoverphase
		if phase<0 then phase=phase+1 end
		if phase>1 then phase=phase-1 end
		--ZGV:Debug("&_WARN Ooo, leftover at start! %.2f so starting phase is %.2f",points[1].curve_leftoverphase,phase)
	end

	local curve_spacing=curve_spacing
	local leftover=phase*curve_spacing
	local antpoints=antpoints

	local totaldist=0
	local sanity=0
	for i=1,np do  repeat
		local p1 = points[i]
		local p2 = points[i+1]
		if not p2 then  if loop then p2=points[1] else breakall=true break end  end

		-- NEW CHECK. Points are supposedly on global maps. If points do NOT share a global map, NO ANTS BETWEEN THEM.
		if not p1.gm or p1.gm~=p2.gm then break end --continue
		if parentmap and p1.gm~=parentmap then break end -- not viewing this one at the moment

		local dist = p1.curve_dist and not p1.player
		if not dist then
			dist = Mdist(p1.gm,p1.gx,p1.gy,p2.gm,p2.gx,p2.gy)
			if not dist or dist<1 then dist=2000*sqrt((p1.gx-p2.gx)*(p1.gx-p2.gx)+(p1.gy-p2.gy)*(p1.gy-p2.gy)) end  -- use costly global calculation when in need.
			if dist<1 then dist=100 end

			if p2.curve_leftoverphase then
				local endphasenow = (points[1].curve_leftoverphase or 0) + ((totaldist+dist)%curve_spacing)/curve_spacing
				local adjust = p2.curve_leftoverphase-endphasenow
				if adjust<0 then adjust=adjust+1 end
				--if adjust>0.5 then adjust=adjust-1 end

				--dist=dist+adjust*curve_spacing
	
				-- go back and spread the load

				local adjust_yd = adjust*curve_spacing
				--ZGV:Debug("&_WARN adjusting point %d of %d dist from %.2f by leftover %.2f = %.2f yd",i,#points,dist,adjust,adjust_yd)
				
				-- spreading the load: won't work yet; breaks totaldist
				--[[
				for j=i,2,-1 do
					ZGV:Debug("&_WARN spread-adjusting point %d by %.2f yd (1/%d)",j,adjust_yd/(i-1),i-1)
					points[j].curve_dist = points[j].curve_dist and points[j].curve_dist+(adjust_yd/(i-1))
				end
				]]
				dist=dist+adjust_yd
				--if dist<0 then dist=dist+curve_spacing end
			end
			p1.curve_dist=dist
		else
			dist=p1.curve_dist
		end

		totaldist=totaldist+dist

		--print("acc",curve_accuracy)
		local d=leftover or 0
		while d<dist do
			-- straight line
			local t = d/dist

			local x = p1.gx + t*(p2.gx-p1.gx)
			local y = p1.gy + t*(p2.gy-p1.gy)

			if not xmin  or  not xmax  or  (x>xmin and x<xmax and y>ymin and y<ymax) then
				-- save coords in ant
				antpoints_num = antpoints_num+1
				local ant = antpoints[antpoints_num]
				if not ant then
					ant = {}
					antpoints[antpoints_num]=ant
				end

				ant.map,ant.x,ant.y=p1.gm,x,y
				ant.sub=i+t
				ant.icon = p2.ant_icon or def_ant_icon   -- ant_icon is contained in the DESTINATION waypoint of the pair.
				ant.p1,ant.p2=p1,p2
				ant.p1m,ant.p2m=p1.m,p2.m
				ant.ant_dist=t
			end

			--tinsert(antpoints,{map=0,floor=0,x=x,y=y,sub=i+t,icon=ZGV.Pointer.Icons.ant})
			d=d+curve_spacing

			sanity=sanity+1  if sanity>=maxants_sanity then ZGV:Error("Ants get calculated infinitely! spacing "..curve_spacing..", "..antpoints_num.." live so far.")  breakall=true  break  end
		end
		leftover=d-dist

	until true  if breakall then break end  end

	points[#points].curve_leftoverphase=(totaldist/curve_spacing)%1

	--print("path with",#points,"points ended with LOphase=",points[#points].curve_leftoverphase)

	return antpoints,antpoints_num
end
Pointer.spawn_straight_ants = spawn_straight_ants



local function update_ant_waypoints(points)  -- optimized for ants
	for k,point in ipairs(points) do
		local way = point.pointer_way
		if way then
			way.map,way.x,way.y=point.map,point.x,point.y
		end
	end
end

local temp_setwaypoint_data={}
-- I hate this. This is a list of fields that need to be skipped when filling the waypoint with data from goals.
-- Ideally, we'd have a "make waypoint FROM GOAL SPECIFICALLY" function...
--local ignored_fields = { action=1,dirtytext=1,indent=1,L=1,macro=1,macroicon=1,macrosrc=1 }  
-- Bah, screw it.
-- keywords: valid data fields
local copy_fields = {title=1,arrowtitle=1,arrowicon=1,text=1,pathnode=1,map=1,x=1,y=1,["type"]=1,icon=1,iconoverride=1,pathnode=1,radius=1,
	waypoint_zone=1, waypoint_realzone=1, waypoint_subzone=1, waypoint_minizone=1, waypoint_region=1, waypoint_indoors=1, player=1, ant_icon=1,noskip=1,
	poiNum=1,OnNear=1,OnFar=1,OnUpdate=1,isNear=1,nearRange=1, OnClick=1, onminimap=1, onworldmap=1, overworld=1, tooltipdata=1, storedData=1, customs=1, tooltipfunc=1 }
local dont_copy_Goal_fields = { OnClick=1 } -- I hate myself for this.
	
local function set_waypoints(points,worldsize,minisize,ptype,setname)
	local arrowpoint,farmpoint
	local pathmode = (ptype=="path")
	local farmmode = (ptype=="farm")

	local step = ZGV:GetFocusedStep() or ZGV.CurrentStep or {}

	Pointer:Debug("set_waypoints: %d points, type=%s, into set=%s",#points,ptype,setname or "nil")
	
	for k,point in ipairs(points) do 
		if point.x and not point.force_noway and not (point.IsVisible and not point:IsVisible()) then

			local data = temp_setwaypoint_data
			wipe(data)
			data.overworld = not farmmode
			data.onminimap=not farmmode and "always"
			data.showonedge=not pathmode and not farmmode and not (ptype=="route") and not point.waypoint_moved_to_waypath
			data.type=ptype
			data.in_set = setname
			data.source = point
			if point.waypoint_icon then
				data.icon = point.waypoint_icon 
			end
			if point.waypoint_iconoverride~=nil then
				data.iconoverride = point.waypoint_iconoverride
			end
			if point.waypoint_type then
				data.type = point.waypoint_type
			end

			--data.persistent=true
			data.title = (
					point.waytitle or point.title
					or (pathmode and (step and step.waypath and step.waypath.title and step.waypath.title or "Path").." ("..k..")")
					or (point.parentStep and point.parentStep:GetWayTitle())
					--or (step and step:GetWayTitle())
					or (point.map and point.x and ("%s %d,%d"):format(ZGV.GetMapNameByID(point.map),point.x*100,point.y*100))
					or L['waypoint_step']:format(ZGV.CurrentStepNum)
					) -- This is slowly becoming obsolete, thanks to :GetTitle and :GetArrowTitle
			data.num=k

			data.goal = point.action and point  -- it's a goal, make it smart

			data.radius = point.dist or point.radius

			-- Copy point vars to waypoint
			-- DON'T. This makes a fucking mess. Clean it up PROPERLY.
			--for k,v in pairs(point) do if k~="map" and k~="floor" and k~="x" and k~="y" then data[k]=v end end
			for k in pairs(copy_fields) do if point[k]~=nil and not (point.parentStep and dont_copy_Goal_fields[k]) then data[k]=point[k] end end

			if data.player then data.passive = true end

			local way = Pointer:SetWaypoint (point.map,point.x,point.y, data, false)
			--Pointer:Debug("set_waypoints: point %d/%d, way=%s",k,#points,tostring(way))

			point.waypoint=way

			if way then

				if not point.player or point.arrow or ptype=="manual"
				then
					arrowpoint = arrowpoint or way  ---or way.surrogate_for or way
					farmpoint = arrowpoint or way
					--pathpoint = pathpoint or way  -- in case they ARE different somehow
					
					-- override to show the CURRENT one, not first come first serve.
					if way.goal and way.goal.num==step.current_waypoint_goal_num then
						arrowpoint=way
						--if ZGV.db.profile.nav_finaldest_circle then way.icon=Pointer.icons.none end
					end
				end


				-- or (step.waypath and step.waypath.current==point)

				if setname then  -- add to set
					local set = Pointer.pointsets[setname]
					if not set then set={points={}} __CLASS[set]="PointSet" Pointer.pointsets[setname]=set end
					tinsert(set.points,way)
					--Pointer:Debug("Added point to set %s, now storing %d",setname,#set.points)
				end
			else
				--self:Print(("Unable to create waypoint: %s/%d %.2f %.2f"):format(point.map,point.floor,point.x,point.y))
			end

		end

		if (k%50==0) and Pointer.showset_timer and coroutine.running() then coroutine.yield() end
	end
	Pointer:Debug("set_waypoints: arrowpoint=%s, farmpoint=%s",waypoint_tostring_color(arrowpoint),waypoint_tostring_color(farmpoint))

	return arrowpoint,farmpoint
end
Pointer.set_waypoints = set_waypoints

local function set_waypoints_ants(ants,num,start_at)
	for k=1,num do
		local ant=ants[k]
		Pointer:SetWaypoint_ant (ant.map,ant.x,ant.y, k+start_at, ant.icon, ant)
	end
end


function Pointer:SetAntSpacing(spacing)
	curve_spacing = spacing
	--ZGV:Debug("ant spacing %.1f",spacing)
end

-- Display (time-phased) ants between all .ants -enabled sets in Pointer.pointsets .

local ants_mapspacing = {[-1]=10,[946]=40,[947]=30,[905]=100}
setmetatable(ants_mapspacing,{__index=function(t,mapid) 
	if not mapid or not HBD.mapData[mapid] then return 1 end
	local r=HBD.mapData[mapid][1]/2000
	--[[
	if r==0 then 
		local nextf=next(HBD.mapData[mapid].floors)
		r=HBD.mapData[mapid].floors[nextf] and HBD.mapData[mapid].floors[nextf][1]/2000
	end  
	--]]
	t[mapid]=r
	return r  
end})
Pointer.ants_mapspacing = ants_mapspacing


local ants_optimized_which_isnt_implemented=false

local minimap_size = {
    indoor = {
        [0] = 300, -- scale
        [1] = 240, -- 1.25
        [2] = 180, -- 5/3
        [3] = 120, -- 2.5
        [4] = 80,  -- 3.75
        [5] = 50,  -- 6
    },
    outdoor = {
        [0] = 466 + 2/3, -- scale
        [1] = 400,       -- 7/6
        [2] = 333 + 1/3, -- 1.4
        [3] = 266 + 2/6, -- 1.75
        [4] = 200,       -- 7/3
        [5] = 133 + 1/3, -- 3.5
    },
}

function Pointer:ClearAntsAndLines()
	self:ClearWaypoints_ant(0)
	if self.mapLinePool then self.mapLinePool:ReleaseAll() for i,line in self.mapLinePool:EnumerateInactive() do line:Hide() end end
	if self.mapLinePoolMini then self.mapLinePoolMini:ReleaseAll() for i,line in self.mapLinePoolMini:EnumerateInactive() do line:Hide() end end
end

local lastmap
function Pointer:AnimateAnts(force)
	if not self.ready then return 
	elseif not ZGV.db.profile.maplines_enabled then return -- no lines or ants
	elseif ZGV.db.profile.maplines==3 then return  -- no ants or lines
	elseif ZGV.db.profile.maplines==2 then return self:UpdateMapLines()  -- lines
	end

	local ant_movespeed = ZGV.db.profile.ant_movespeed or ant_movespeed
	local phase = (GetTime()*ant_movespeed)%1
	
	local Total_ants = 0


	local function animate_set(name,target,spacing,mastermap,xmin,ymin,xmax,ymax)
		local pointset = self.pointsets[name]
		if not pointset.ants or spacing<=0 then return end
		--if spacing==0 then ZGV:Error("Zero ant spacing on map "..mastermap..", first point was on map "..tostring(pointset.points and pointset.points[1] and pointset.points[1].m)) return end

		for pi,wp in ipairs(pointset.points) do
			wp.curve_accuracy=nil  -- clear this cached value, we might change accuracy.

			if wp.player then
				-- point is player? get new location
				local x,y,m = LibRover:GetPlayerPosition()
				wp.m,wp.x,wp.y = m,x,y
				wp.gx,wp.gy,wp.gm = nil,nil,nil
			end

			move_point_to_global(wp,mastermap)

			--ZGV.Pointer:SetWaypoint (wp.map,wp.x,wp.y,nil,nil)--data,arrow)
			--ants=spawn(waypath)
			--show(waypath, ants)
		end

		local antpoints  -- just localizing the global antpoints here
		local num=0

		--print("spawning, player = "..waypath.coords[1].x)
		local spawn_func
		if pointset.ants=="straight" or #pointset.points<3 then spawn_func=spawn_straight_ants
		elseif pointset.ants=="curved" then spawn_func=spawn_curve_ants
		else return "no ants"
		end
		
		if target=="worldmap" then
			self:SetAntSpacing(pointset.antspacing or spacing)
			antpoints,num = spawn_func(pointset.points,pointset.loop,phase, mastermap,xmin,xmax,ymin,ymax)
			for i=1,num do antpoints[i].onminimap=false antpoints[i].overworld=true end
			--print (num,"world ants, spaced ",spacing,"parentmap",mastermap) --qq
		elseif target=="minimap" then
			self:SetAntSpacing(spacing)
			antpoints,num = spawn_func(pointset.points,pointset.loop,phase, mastermap,xmin,xmax,ymin,ymax)
			for i=1,num do antpoints[i].onminimap="always" antpoints[i].overworld=false end
			--print(num,"mini ants, parentmap",mastermap," bounds ",("%.2f %.2f %.2f %.2f"):format(xmin or 0,ymin or 0,xmax or 0,ymax or 0)) --qq
		end

		--calc_angles(antpoints,pointset.loop)
		--[[
		if antpoints then
			--Pointer:Debug("Ants: %d %s spawned for set %s",num,pointset.ants,name)
			if ants_optimized_which_isnt_implemented then
				if Pointer.ants_set then
					update_ant_waypoints(antpoints)
				else
					set_waypoints_ants(antpoints,num,35,30)
					Pointer.ants_set=true
				end
			else

				--set_waypoints_ants(antpoints,num,Total_ants,35,30)
				-- moved to end of function

			end
		else
			--Pointer:Debug("Ants: No ants spawned for set %s",name)
		end
		--]]

		-- check other pointsets for waypoint overlaps with this one; copy curve data.
		for name2,pointset2 in pairs(self.pointsets) do  if (name=="path" and name2=="route") or (name2=="path" and name=="route") then
			for pi1,point1 in ipairs(pointset.points) do
				for pi2,point2 in ipairs(pointset2.points) do
					if point1.x==point2.x and point1.y==point2.y and not point2.curve_leftoverphase then
						--ZGV:Debug("&_WARN set %s point %d -> set %s point %d",name,pi1,name2,pi2)
						point2.curve_leftoverphase=point1.curve_leftoverphase
					end
				end
			end
		end end

		-- show num ants from antpoints into global waypoint table, starting at num Total_ants.
		set_waypoints_ants(antpoints,num,Total_ants)

		Total_ants = Total_ants + num
	end


	if WorldMapFrame:IsVisible() then

		local map = WorldMapFrame:GetMapID()
		if map~=lastmap then self:ResetAnts() end
		lastmap=map

		--local overworld = (map==13 or map==14 or map==0 or map==689 or map==-1 or map==485 or map==466 or map==862 or map==962)
		local spacing = ants_mapspacing[map] * (ZGV.db.profile.ant_spacing or default_antspacing_world)

		-- calculate bounds of shown map
		local parentmap = (map==947--[[Azeroth]] or map==946--[[Cosmic]]) and map or ZGV.GetMapContinent(map)
		local xmin,ymin = Mxlt(map,0,0,parentmap,true)
		local xmax,ymax = Mxlt(map,1,1,parentmap,true)

		-- Clear leftoverphase
		for name,pointset in pairs(self.pointsets) do
			for pi,p in ipairs(pointset.points) do
				p.curve_leftoverphase=nil
			end
		end

		if self.pointsets["route"] then animate_set("route","worldmap",spacing,parentmap,xmin,ymin,xmax,ymax) end
		if self.pointsets["path"] then animate_set("path","worldmap",spacing,parentmap,xmin,ymin,xmax,ymax) end
		for name,pointset in pairs(self.pointsets) do  if name~="route" and name~="path" then
			animate_set(name,"worldmap",spacing,parentmap,xmin,ymin,xmax,ymax)
		end end
	end

	-- minimap
	if ZGV.db.profile.maplines==1 then
		-- calculate bounds of current map
		local px,py,pm=ZGV.LibRover:GetPlayerPosition()
		local parentmap = ZGV.GetMapContinent(pm)
		local minimap_radius = 300 / (ZGV.HBD.mapData[pm] and ZGV.HBD.mapData[pm][1] or 1000)  -- in 0..1 scale
		local xmin,ymin = Mxlt(pm,px-minimap_radius,py-minimap_radius/0.66,parentmap,true)
		local xmax,ymax = Mxlt(pm,px+minimap_radius,py+minimap_radius/0.66,parentmap,true)
		local spacing=ZGV.db.profile.antspacing_mini or default_antspacing_mini

		--print(xmin,xmax,"minimap bounds from",pm,"to",parentmap) --qq

		-- Clear leftoverphase
		for name,pointset in pairs(self.pointsets) do
			for pi,p in ipairs(pointset.points) do
				p.curve_leftoverphase=nil
			end
		end

		if self.pointsets["route"] then animate_set("route","minimap",spacing,parentmap,xmin,ymin,xmax,ymax) end
		if self.pointsets["path"] then animate_set("path","minimap",spacing,parentmap,xmin,ymin,xmax,ymax) end
		for name,pointset in pairs(self.pointsets) do  if name~="route" and name~="path" then
			animate_set(name,"minimap",spacing,parentmap,xmin,ymin,xmax,ymax)
		end end
	end

	-- clear remaining 
	self:ClearWaypoints_ant(Total_ants)

end


Pointer.pointsets = {}

function Pointer:ClearSets()
	for k,v in pairs(self.pointsets) do
		self:ClearSet(k)
	end
end

local lv=0
function Pointer:ClearSet(name)
	local t1=debugprofilestop()
	lv=lv+1
	local set = self.pointsets[name]
	if not set then
		--Pointer:Debug("Clearing set %s, but none present",name)
		lv=lv-1
		return
	end
	--Pointer:Debug("Clearing set %s, %d points",name,#set.points)
	for pi,point in ipairs(set.points) do
		--Pointer:Debug("Removing point %d from set %s",pi,name)
		point.in_set = nil  -- so that it's not attempted to remove from set again
		self:RemoveWaypoint(point,"clearset "..(name or "?"))
	end
	self.pointsets[name]=nil
	assert(lv<=3,"No nesting ClearSet too deep!")
	--Pointer:Debug("Cleared set %s",name)
	lv=lv-1

	self:AnimateAnts()  --force

	Pointer:Debug("ClearSet %s + ants [%.2f ms]",name,debugprofilestop()-t1)
end

-- Show a series of points as a path. TODO: make this add ants on all segments.

function Pointer:ShowSet(waypath,name,callback)
	if self.pointsets[name] then self:ClearSet(name) end

	local t1=debugprofilestop()

	if waypath and waypath.coords and #waypath.coords>0 then  -- show ants, or just the path, anyway.

		ZGV:Debug("&pointer ShowSet: %d points in '%s'",#waypath.coords,name)

		-- SHOW IT NOW, please. Also add it to set.
		local settype = waypath.coords[1].type or waypath.type or "path"
		set_waypoints(waypath.coords,nil,nil,settype,name)

		-- calculate global map coords

		local points = self.pointsets[name] and self.pointsets[name].points
		if not points then ZGV:Debug("&pointer No points in set!") return end  -- there were none to begin with? what?


		-- let's handle these proper waypoints now

		--globalize position! fill gm,gx,gy with world-global values. Otherwise ants can't travel over zone crossings.
		for wpi,wp in ipairs(points) do
			if not wp.gx and wp.m then  move_point_to_global(wp)  end
			if (wpi%50==0) and Pointer.showset_timer and coroutine.running() then coroutine.yield() end
		end

		if settype=="path" or settype=="route" then
			-- set up icons based on angles/loops
			local markers = waypath.markers or "auto"
			if markers=="auto" then markers = waypath.loop and "none" or "dots" end

			-- calculate path arrow angles
			if waypath.ants=="curved" then
				calc_angles_curved(points,waypath.loop)
			elseif waypath.ants=="straight" or markers=="arrows" then
				calc_angles(points,waypath.loop)
			else
				-- no ants! Just points!
			end

			for k,point in ipairs(points) do
				local icon
				local marker=markers
				if k==1 and waypath['start'] then marker=waypath['start']
				elseif k==#points and waypath['end'] then marker=waypath['end'] end
				if point.icon and point.iconoverride then
					icon=point.icon
				elseif point.player or marker=="none" or (point.pathnode and (point.pathnode.a_b__c_d == "taxi_taxi__taxi_taxi" or point.pathnode.a_b__c_d == "taxi_ferry__taxi_ferry")) or not ZGV.db.profile.mapicons then
					icon = self.Icons.none
				elseif point.angle and marker=="arrows" then
					icon=self.Icons.arrow
				elseif marker=="dots" then
					icon=self.Icons.greendotbig
				elseif self.Icons[marker] then
					icon=self.Icons[marker]
				else
					icon=self.Icons.greendotbig
				end
				point:SetIcon(icon)
				if (k%50==0) and Pointer.showset_timer and coroutine.running() then
					local tp1=debugprofilestop()
					coroutine.yield()
					local tp2=debugprofilestop()
					t1 = t1+(tp2-tp1)
				end
			end
		end

		-- Get all the other fields
		for k,v in pairs(waypath) do if k~="coords" then self.pointsets[name][k]=v end end
	else
		ZGV:Debug("&pointer ShowSet: no points or no waypath '%s'.",name)
	end

	self:ClearMapLines()

	local t2=debugprofilestop()
	self:AnimateAnts()  --force
	Pointer:Debug("ShowSet %s ends [%.2f ms] + ants [%.2f ms]",name,t2-t1,debugprofilestop()-t2)

	if callback then callback() end

	return self.pointsets[name]
end

function Pointer:Thread_ShowSet(waypath,name,callback)
	if Pointer.showset_timer then ZGV:CancelTimer(Pointer.showset_timer) end
	local thread = coroutine.create(function() Pointer:ShowSet(waypath,name,callback) end)
	Pointer.showset_timer = ZGV:ScheduleRepeatingTimer(function()
		local ok,ret = coroutine.resume(thread)
		if not ok then Pointer:Debug("Showing set failed: %s",ret) end
		if coroutine.status(thread)=="dead" then ZGV:CancelTimer(Pointer.showset_timer) end
	end,
	0.01)
end


local PATHFOUND_TO_MANUAL, PATHFINDING_TARGET

local oldpathtarget
--local FAILED_PATH
local function PathFoundHandler(state,path,ext,reason)
	if Pointer.ArrowFrame.waypoint and Pointer.ArrowFrame.waypoint.type=="corpse" then return end

	if state~="progress" then Pointer:Debug("&_PUSH PathFoundHandler! state=%s",state) end

	if state=="success" then
		if ext and ext.token and ext.token~=ZGV.Pointer.DestinationWaypoint then Pointer:Debug("&_POP Found wrong path!") return end
		Pointer:ClearSet("route")
		local future_waypoints = {--[[follow="pathfind",--]]loop=false,ants="straight",coords={},follow="route"}

		Pointer:RescaleMarkers()

		Pointer.tmp_taxis_assumed = false
		local first=true
		for i,node in ipairs(path) do
			local icon
			if not node.player and node.type~="end" then icon=Pointer.Icons.greendotbig else icon=Pointer.Icons.none end  -- start and end nodes are HIDDEN.
			--if w.node==LibRover.endnode then break end -- don't add the last one! add it separately. WHY!??
			local wayp = {map=node.m,x=node.x,y=node.y, title=node.maplabel, arrowtitle=node:GetTextAsItinerary(),player=node.player, type="route", icon=icon, pathnode=node, iconoverride=true }
			-- force_noway=node.player,

			if node.type=="end" then wayp.noskip = true end

			if first and not node.player then first=false  wayp.arrow=true  end

			
			-- detection radius

			wayp.radius = node.radius  -- will account for flying
			
			if node.type=="taxi" then
				-- source taxi: never complete waypoint
				-- destination taxi: early complete waypoint, let LibRover wait for touchdown
				if node.link.mode~="taxi" then
					--start
					wayp.radius = wayp.radius or 5
					wayp.noskip = true
				end
				if node.known==nil then
					Pointer.tmp_taxis_assumed = true
				end
			elseif node.type=="portal" then
				if node.link.mode~="portal" then
					wayp.radius = wayp.radius or 5
					wayp.noskip = true
				end
			elseif node.type=="ship" or node.type=="zeppelin" then
				if node.link.mode~="ship" and node.link.mode~="zeppelin" then
					wayp.radius = wayp.radius or 5
					wayp.noskip = true
				else
					wayp.radius = wayp.radius or 100
				end
			elseif node.noskip then -- let's allow forcing this.
				wayp.radius = 5
				wayp.noskip = true
			end

			
			-- waypoint icon

			if node.type=="border" and node.next==node.border then -- first point of pair, show as ant
				wayp.icon = Pointer.Icons.ant
			elseif node.type=="portal" and node.link.mode~="portal" then
				---wayp.icon = Pointer.Icons.crosshair  -- portal departure: show dot
			end
			--wayp.radius = wayp.radius or ZGV.Pointer:GetDefaultStepDist()


			-- ant type

			local mode = node.link and node.link.mode
			if mode=="taxi" then wayp.ant_icon = ZGV.Pointer.Icons.ant_taxi
			elseif mode=="ship" or mode=="zeppelin" then wayp.ant_icon = ZGV.Pointer.Icons.ant_ship
			elseif mode=="portal" or mode=="teleport" or mode=="hearth" or mode=="ghearth" or mode=="astralrecall" or mode=="courtesy" or mode=="useitem" then wayp.ant_icon = ZGV.Pointer.Icons.ant_portal
			elseif mode=="fly" then wayp.ant_icon = ZGV.Pointer.Icons.ant_flying
			elseif node.player and (node.m==590 or node.m==582) --[[ WoD Garrisons  --]] then wayp.ant_icon=ZGV.Pointer.Icons.none
			else wayp.ant_icon = ZGV.Pointer.Icons.ant
			end

			wayp.actionicon = node:GetActionIcon(path[i-1],path[i+1])

			if node.wayp_override_text then wayp.arrowtitle=node.wayp_override_text end
			if node.wayp_override_icon or node.arrow_icon then wayp.arrowicon=node.wayp_override_icon or node.arrow_icon end

			-- OMG if it's the LAST waypoint in a travel path, point DIRECTLY, instead of at the placeholder.
			if node.type=="end" then 
				if ext.foundnpcs then  -- this is a result of searching for NPCs
					for _,npcdata in pairs(ext.foundnpcs) do
						if npcdata.m == node.m and npcdata.x == node.x and npcdata.y == node.y then
							wayp.arrowtitle = ZGV.L['stepgoal_talk to']:format(ZGV.Localizers:GetTranslatedNPC(tonumber(npcdata.id)))
							if node.learnfpath then wayp.arrowtitle = wayp.arrowtitle.."|n"
									..("at the %s Flight Path"):format(node.name) .. "|n"
									..("to update your Flight Map data") end
							wayp.onminimap="always"
							wayp.overworld=true
							wayp.showonedge=true
							wayp.icon=Pointer.Icons.greendotbig
							wayp.type="manual"
							wayp.title=wayp.arrowtitle
						end
					end
				end
				wayp.surrogate_for=ZGV.Pointer.DestinationWaypoint

				--[[
					if ZGV.db.profile.nav_finaldest_circle==1 then wayp.surrogate_for.icon=Pointer.Icons.greendotbig  wayp.surrogate_for.iconoverride=true
					elseif ZGV.db.profile.nav_finaldest_circle==2 then wayp.icon=Pointer.Icons.none  wayp.iconoverride=true  wayp.surrogate_for.icon=Pointer.Icons.crosshair  wayp.surrogate_for.iconoverride=true
					elseif ZGV.db.profile.nav_finaldest_circle==3 then wayp.icon=Pointer.Icons.crosshair  wayp.iconoverride=true
					end
				--]]
			end

			tinsert(future_waypoints.coords, wayp)
		end

		--[[
		if ZGV.Pointer.CurrentPathTarget then
			local w = ZGV.Pointer.CurrentPathTarget
			tinsert(ZGV.Pointer.TempWaypath.coords, {map=w.m,floor=w.f,x=w.x,y=w.y,title=w.title,force_noway=true})
		end
		--]]

		Pointer.ArrowFrame.waypoint = nil -- clear arrow, so that it updates around line 804 this file. We :SetWaypoint right under here.
		--FAILED_PATH = nil
		Pointer:ShowSet(future_waypoints,"route") -- clear none, just refresh

		Pointer:ResetAnts()
		
		Pointer:ShowArrow(Pointer.pointsets.route.points[2])  -- point 1 is player
		if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==Pointer.ArrowFrame.routemenuframe then Pointer:QueueShowRouteMenu(Pointer.ArrowFrame) end

		Pointer.Provider:SoilData()

	elseif state=="failure" then
		Pointer:ClearSet("route")
		--FAILED_PATH = ZGV.Pointer.DestinationWaypoint

		if reason and ZGV.Pointer.DestinationWaypoint then
			ZGV.Pointer.DestinationWaypoint.errortext = reason
		end
		Pointer:ShowArrow(ZGV.Pointer.DestinationWaypoint)
		if DropDownForkList1 and DropDownForkList1:IsShown() and DropDownForkList1.dropdown==Pointer.ArrowFrame.routemenuframe then Pointer:QueueShowRouteMenu(Pointer.ArrowFrame) end

		--ZGV:ShowWaypoints(nil,nil,nil,"path",{dontcleartemp=true}) -- clear none, just refresh

	-- Causing the Lovely arrow problems ~Errc
	-- Well let's cure, not amputate ;) ~sin
	elseif state=="arrival" then
		Pointer:ClearSet("route")
		--LibRover:Abort("PFH, state=arrival")
		Pointer:Debug("Arrived at destination!")
		--FAILED_PATH = ZGV.Pointer.CurrentPathTarget
		Pointer:ShowArrow(ZGV.Pointer.DestinationWaypoint)
	elseif state=="progress" then
		-- DON'T clear anything.
		Pointer:ShowWaiting(ext and ext.progress or 0)
	end
	--ZGV:ShowWaypoints() -- clear none, just refresh
	if state~="progress" then Pointer:Debug("&_POP PathFoundHandler done.") end
end
Pointer.PathFoundHandler = PathFoundHandler

function Pointer:ResetFollowing()
	-- deprecated
end


function Pointer:ResetAnts()
	for sn,set in pairs(self.pointsets) do for pi,p in ipairs(set.points) do p.curve_dist=nil p.curve_leftoverphase=nil end end -- reset ant sync
end

-- Finds an optimal travel route. Or, just a beeline, if options say so.
function Pointer:FindTravelPath(way)
	if not way then return end
	if way.pathnode and way.pathnode.player then return end -- no routing to parts of a route

	if not ZGV.db.profile.pathfinding then  -- no travel, beeline!
		self.DestinationWaypoint = way
		self:ShowArrow(way)
		return
	end

	if type(way)=="table" then
		--self:ShowArrow(way) --#optimizetravel
		if way.type=="route" then return end
		self.DestinationWaypoint = way
		local display_zone = way.waypoint_minizone or way.waypoint_subzone
		ZGV:Debug("&pointer FindTravelPath to %s",waypoint_tostring(way))
		LibRover:Abort("before QFP","quiet")
		LibRover:QueueFindPath(0,0,0,way.m,way.x,way.y, PathFoundHandler,
			{title=way.title .. (display_zone and ("\n(in %s)"):format(display_zone) or ""), waypoint=way, direct=not ZGV.db.profile.pathfinding or (way.goal and way.goal.waypoint_notravel),
			waypoint_zone=way.waypoint_zone, waypoint_realzone=way.waypoint_realzone, waypoint_subzone=way.waypoint_subzone, waypoint_minizone=way.waypoint_minizone,
			waypoint_region=way.waypoint_region, waypoint_indoors = way.waypoint_indoors
			}
			)
	elseif type(way)=="string" then
		-- show a set!
		local setname=way
		local set=self.pointsets[setname] and self.pointsets[setname].points
		if not set then ZGV:Debug("No set '%s'",setname) return end
		if not set[1] then ZGV:Debug("No points in set '%s'",setname) return end
		way=set[1]

		--[[
		-- NEW: if points are in this zone, STOP waypointing.
		if ZGV.GetCurrentMapID()==way.m then
			Pointer:Debug("Pointset '%s' in current zone, pointing with GetNextInPath.",setname)
			local nextway = self:GetNextInPath()
			if nextway and type(nextway)=="table" and nextway~=waypoint then self:ShowArrow(nextway) end
			return
		end
		-- otherwise findpath to closest point.
		--]]

		ZGV:Debug("&pointer FindTravelPath to pointset '%s'",setname)
		ZGV.Pointer.DestinationWaypoint = way
		local more_points = {}
		for i=2,#set do
			local w=set[i]
			more_points[#more_points+1]={m=w.m,x=w.x,y=w.y,title=w.title}
		end
		LibRover:Abort("before QFP 2")
		LibRover:QueueFindPath(0,0,0,way.m,way.x,way.y, PathFoundHandler, {title=way.title, waypoint=way, direct=not ZGV.db.profile.pathfinding, multiple_ends=more_points })
	end
end



function Pointer.QuestPOI_PointToMe(poiBut,args)
	if not ZGV.db.profile.point_to_pois then return end
	local _
	if not poiBut.questId then _,poiBut = poiBut:GetPoint() end  -- the "Swap Frame", whatever that is... Dig the quest POI button out of it.
	--local _,_,_,x,y=poiBut:GetPoint(1)
	--local parent = poiBut:GetParent()
	--x= x/parent:GetWidth()/poiBut:GetEffectiveScale()*1.409
	--y=-y/parent:GetHeight()/poiBut:GetEffectiveScale()*1.409
	local questId = poiBut.questId or poiBut.quest.questId
	local _,x,y=QuestPOIGetIconInfo(questId)
	Pointer:ClearWaypoints("manual")
	--Pointer:SetWaypoint(nil,x,y,{title=ZGV.questsbyid[poiBut.questId].title,type="manual"},true)
	Pointer:SetWaypoint(nil,x,y,{title=ZGV.questsbyid[questId].title,type="manual",onminimap="always",overworld=true,showonedge=true,findpath=true},true)
end
--[[
function Pointer.QuestWatchPOI_PointToMe(poiBut,args)
	do return end
	if not ZGV.db.profile.point_to_pois then return end
	local _
	if not poiBut.questId then _,poiBut = poiBut:GetPoint() end  -- the "Swap Frame", whatever that is... Dig the quest POI button out of it.
	local _,_,_,x,y=poiBut:GetPoint(1)
	local parent = poiBut:GetParent()
	x= x/parent:GetWidth()/poiBut:GetEffectiveScale()*1.409
	y=-y/parent:GetHeight()/poiBut:GetEffectiveScale()*1.409
	Pointer:ClearWaypoints("manual")
	--Pointer:SetWaypoint(nil,x,y,{title=ZGV.questsbyid[poiBut.questId].title,type="manual"},true)
	local way = Pointer:SetWaypoint(nil,x,y,{title=ZGV.questsbyid[poiBut.questId or poiBut.quest.questId].title,type="manual",onminimap="always",overworld=true,showonedge=true},true)
	Pointer:FindTravelPath(way)
end
--]]


-- WAYPOINT CYCLING
function Pointer:ResetCurrentWaypoint()
	ZGV.CurrentStep:ResetCurrentWaypoint()
	self:ResetAnts()
	ZGV:ShowWaypoints()
	ZGV:UpdateFrame()
end

function Pointer:CycleWaypoint(delta,nocycle,step)
	self:Debug("&pointer CycleWaypoint")
	--if lastCycleMilli==GetFrameTimeMilliseconds() then lastCycles=lastCycles+1 end  if lastCycles>10 then return end
	--lastCycleMilli=GetFrameTimeMilliseconds()  lastCycles=0

	--local CS=ZGV.CurrentStep
	--local CW = ZGV.Pointer.current_waypoint
	local CW = ZGV.Pointer.DestinationWaypoint
	local CS = step
		or (CW and CW.goal and CW.goal.parentStep)
		or (CW and CW.pathnode and CW.pathnode.waypoint and CW.pathnode.waypoint.goal and CW.pathnode.waypoint.goal.parentStep)
		or ZGV:GetFocusedStep()

	if CS then CS:CycleWaypoint(delta,nocycle,"pointer:cyclewaypoint") end

	self:ResetAnts()
	
	ZGV:ShowWaypoints()

	ZGV:UpdateFrame()
	
		
	--ZGV:ShowWaypoints("goal",CS.goals[CS.current_waypoint_goal_num])
	
	--CS.goals[CS.current_waypoint_goal_num]
	--ZGV:ShowWaypoints(CS.current_waypoint_goal_num)
	--ZGV:DelayedRun("OnUpdate", function() ZGV.Viewer:Update() end)
	--zo_callLater(function() ZGV.Viewer:Update() end,1)
end

function Pointer:GetWaypointByGoal(goal)
	if not self.waypoints then return end
	for wi,way in ipairs(self.waypoints) do
		if way.goal==goal then return way end
	end
end

function Pointer:SetWaypointToGoal(goal)
	local num,goal = goal.parentStep:CycleWaypointTo(goal.num)
	--[[
	-- try to use an existing waypoint
	for wi,way in ipairs(self.waypoints) do  if way.goal and way.goal==goal then
		self:Debug("SetWaypointToGoal %d found existing way %d",goal.num,wi)
		self:CycleWaypointTo(goal)
		return
	end  end
	self:Debug("SetWaypointToGoal %d had to make a new waypoint",goal.num)
	self:SetWaypoint(goal.map,goal.x,goal.y, goal, true)
	--]]
	-- otherwise, make a manual one.
end

function Pointer:SetArrowToFirstCompletableGoal()
	local CSg=ZGV.CurrentStep and ZGV.CurrentStep.goals
	if not CSg or #CSg==0 or #self.waypoints==0 then return end
	for wi,way in ipairs(self.waypoints) do -- show first incomplete goal
		if way.goal and way.goal.status=="incomplete" and way.goal:IsVisible() then
			return self:ShowArrow(way)
		end
	end
	for wi,way in ipairs(self.waypoints) do -- if there are no incompletes, show first not hidden one. handles passives and such
		if way.goal and way.goal:IsVisible() then
			return self:ShowArrow(way)
		end
	end

	return self:ShowArrow(self.waypoints[1]) -- still here, return first one just in case
end

function Pointer:SetWaypointByCommandLine(input,justparse)
	local map,mapid,floor,x,y,region

	if not input then return end

	local way1,way2 = input:match("^from (.*) to (.*)$")
	if way1 then
		local m1,x1,y1 = self:SetWaypointByCommandLine(way1,true)
		local m2,x2,y2 = self:SetWaypointByCommandLine(way2,true)
		if not (m1 and x1 and y1 and m2 and x2 and y2) then ZGV:Print("Can't plot that.") return end
		LibRover:QueueFindPath(m1,x1/100,y1/100,m2,x2/100,y2/100,ZGV.Pointer.PathFoundHandler, {})
		return
	end
	
	input = input:gsub("%s*region:(%S+)",function(reg) region=reg return "" end)
	map,floor,x,y = input:match("^(.-)%s*/%s*(%d+)%s+([0-9%.]+)[ ,;:]+([0-9%.]+)$")
	if not map then map,x,y = input:match("^(.-)%s+([0-9%.]+)[ ,;:]+([0-9%.]+)$") end
	if not map then map,floor = input:match("^(.-)%s*/%s*(%d+)$") end
	if not map then x,y = input:match("^([0-9%.]+)[ ,;:]+([0-9%.]+)") end
	if not map and not x then map=input end

	if map=="Shadowmoon Valley" and ZGV:GetPlayerPreciseLevel()>=90 then 
		ZGV:Print("Setting waypoint to TBC zone. If you meant WOD one, please use |cffddff00Shadowmoon Valley D|r as map name.")
	end
	if map=="Nagrand" and ZGV:GetPlayerPreciseLevel()>=90 then 
		ZGV:Print("Setting waypoint to TBC zone. If you meant WOD one, please use |cffddff00Nagrand D|r as map name.")
	end

	-- just a few random aliases
	if map and map:upper()=="SW" then  map = "Stormwind City" end
	if map and map:upper()=="IF" then  map = "Ironforge"  end
	if map and map:upper()=="ORG" then  map = "Orgrimmar"  end
	if map and map:upper()=="UC" then  map = "Undercity"  end
	if map and map:upper()=="ELWYNN" then  map = "Elwynn Forest"  end
	if map=="Stormwind" then  map = "Stormwind City" end
	if map=="Goldshire" then  map,x,y = "Elwynn Forest",42,66  end

	if not map then
		mapid=WorldMapFrame:IsVisible() and WorldMapFrame:GetMapID() or ZGV.GetCurrentMapID()
		--floor=ZGV.GetCurrentMapDungeonLevel()
	end
	if tonumber(map) then mapid=tonumber(map) end

	if not mapid then
		-- we should have all the data now, if there is any. Localize and ID the map.
		local lmap=BZR[map] or map
		local lowercasemaps={}
		for n,id in pairs(ZGV.LibRover.data.MapIDsByName) do lowercasemaps[n:lower()]=id end
		mapid=lowercasemaps[lmap:lower()]
		if tonumber(lmap) then mapid=tonumber(lmap) end
		if type(mapid)=="table" then 
			local floor = tonumber(floor or mapid.default or next(mapid))
			mapid=mapid[floor]
		end
		if not mapid then ZGV:Print("Unknown map: "..map) return end
	end

	if mapid and not x and not y then  x=50 y=50  end   -- default to centers of maps. Ugly, but what the heck.

	if justparse then return mapid,x,y end

	if mapid and x and y then
		ZGV.Pointer:SetWaypoint(mapid,tonumber(x)/100,tonumber(y)/100,{findpath=true,type="manual",cleartype=true,icon=ZGV.Pointer.Icons.greendotbig,onminimap="always",overworld=true,showonedge=true,waypoint_region=region},true)
	else
		ZGV:Print("Unknown destination map.")
		--ZGV:Print("    /zygor way Stormwind 12.3 56.7")
		return
	end
end

--tinsert(ZGV.startups,function(self)
--	Pointer:SetWaypointToFirst()
--end)

function Pointer:LoadSavedPoints()
	if ZGV.db.char.pointsetsmanual[1] then
		local point = ZGV.db.char.pointsetsmanual[1]
		local waydata = {
			title=point.title,
			type="manual",
			cleartype=not IsControlKeyDown(),
			icon=Pointer.Icons.greendotbig,
			onminimap="always",
			overworld=true,
			showonedge=true,
			findpath=true,
			waypoint_region=point.waypoint_region
		}
		Pointer:SetWaypoint(point.m,point.x,point.y,waydata)
	end
	self:Debug("Loaded saved manual waypoints")
	Pointer.SavePointsStarted = true
end

function Pointer:Debug(msg,...)
	ZGV:Debug("&_SUB &pointer ".. msg, ...)
end

function Pointer:Debug_FreeWorldMapScale()
	-- Evil, evil, evil.
	FIXMAPZOOM()  -- in MapCoords

	ZGV:Print("World Map Zooming is unlocked! Feel free to zoom in to 1000% if you like.")
end

function Pointer:TestPOIs()
	print ("Adding known POIs.")

	self:ShowSet(
		{
			coords=ZGV.Poi.Waypoints,
			ants=nil
		},
		"poi"
	)
end



Pointer.Provider = CreateFromMixins(MapCanvasDataProviderMixin)

function Pointer.Provider:OnAdded()
	if not Pointer.Provider.OnUpdateRegistered then
		Pointer.Provider.OnUpdateRegistered = true
		ZGV.UpdateCentral:AddHandler(Pointer.Provider.OnUpdate)
	end
end

function Pointer.Provider:RemoveAllData()
	for i,way in ipairs(Pointer.waypoints) do
		way.frame_worldmap:Hide()
	end
end

function Pointer.Provider:RefreshAllData(fromOnShow)
	Pointer.OverlayProvider:OnEvent("WORLD_MAP_UPDATE") -- FAAKE
	Pointer:RescaleMarkers()
end

function Pointer.Provider:SoilData()
	self.dirty=true
end

function Pointer.Provider.OnUpdate()
	local self = Pointer.Provider
	if self.dirty then
		self.dirty=false
		self:RefreshAllData()
	end
end

function Pointer.Provider:OnShow()
	self:RefreshAllData(1)
end

function Pointer.Provider:OnCanvasScaleChanged()
	Pointer:RescaleMarkers()
	Pointer:AnimateAnts()
end
function Pointer.Provider:OnCanvasSizeChanged()
	Pointer:RescaleMarkers()
	Pointer:AnimateAnts()
end

function Pointer.Provider:OnHide()
end

WorldMapFrame:AddDataProvider(Pointer.Provider)



local function DrawLineZygor(texture, canvasFrame, startX, startY, endX, endY, lineWidth, lineFactor, relPoint, lenTile)
	if (not relPoint) then relPoint = "BOTTOMLEFT"; end
	lineFactor = lineFactor * .5;
	lenTile = lenTile or 1

	-- Determine dimensions and center point of line
	local dx,dy = endX - startX, endY - startY;
	local cx,cy = (startX + endX) / 2, (startY + endY) / 2;

	-- Normalize direction if necessary
	if (dx < 0) then
		dx,dy = -dx,-dy;
	end

	-- Calculate actual length of line
	local lineLength = sqrt((dx * dx) + (dy * dy));

	-- Quick escape if it'sin zero length
	if (lineLength == 0) then
		texture:SetTexCoord(0,0,0,0,0,0,0,0);
		texture:SetPoint("BOTTOMLEFT", canvasFrame, relPoint, cx,cy);
		texture:SetPoint("TOPRIGHT",   canvasFrame, relPoint, cx,cy);
		return;
	end

	-- Sin and Cosine of rotation, and combination (for later)
	local sin, cos = -dy / lineLength, dx / lineLength;
	local sinCos = sin * cos;

	-- Calculate bounding box size and texture coordinates
	local boundingWidth, boundingHeight, bottomLeftX, bottomLeftY, topLeftX, topLeftY, topRightX, topRightY, bottomRightX, bottomRightY;
	if (dy >= 0) then
		boundingWidth = ((lineLength * cos) - (lineWidth * sin)) * lineFactor;
		boundingHeight = ((lineWidth * cos) - (lineLength * sin)) * lineFactor;

		bottomLeftX = (lineWidth / lineLength) * sinCos;
		bottomLeftY = sin * sin;
		bottomRightY = (lineLength / lineWidth) * sinCos;
		bottomRightX = 1 - bottomLeftY;

		topLeftX = bottomLeftY;
		topLeftY = 1 - bottomRightY;
		topRightX = 1 - bottomLeftX;
		topRightY = bottomRightX;
	else
		boundingWidth = ((lineLength * cos) + (lineWidth * sin)) * lineFactor;
		boundingHeight = ((lineWidth * cos) + (lineLength * sin)) * lineFactor;

		bottomLeftX = sin * sin;
		bottomLeftY = -(lineLength / lineWidth) * sinCos;
		bottomRightX = 1 + (lineWidth / lineLength) * sinCos;
		bottomRightY = bottomLeftX;

		topLeftX = 1 - bottomRightX;
		topLeftY = 1 - bottomLeftX;
		topRightY = 1 - bottomLeftY;
		topRightX = topLeftY;
	end

	topLeftX = topLeftX * lenTile
	topRightX = topRightX * lenTile
	bottomLeftX = bottomLeftX * lenTile
	bottomRightX = bottomRightX * lenTile

	local phase = (GetTime()*ant_movespeed)%1
	topLeftX = topLeftX + phase
	topRightX = topRightX + phase
	bottomLeftX = bottomLeftX + phase
	bottomRightX = bottomRightX + phase

	-- Set texture coordinates and anchors
    texture:ClearAllPoints()
    
	texture:SetRotation(0)
	
	--print(topLeftX,	topLeftY,	bottomLeftX,	bottomLeftY,	topRightX,	topRightY,	bottomRightX,	bottomRightY)
	
	texture:SetTexCoord(
		topLeftX       
	  , topLeftY       
	  , bottomLeftX    
	  , bottomLeftY    
	  , topRightX      
	  , topRightY      
	  , bottomRightX   
	  , bottomRightY   
	  );
	  --[[
		texture:SetTexCoord(
	  LimitValue(topLeftX       )
	, LimitValue(topLeftY       )
	, LimitValue(bottomLeftX    )
	, LimitValue(bottomLeftY    )
	, LimitValue(topRightX      )
	, LimitValue(topRightY      )
	, LimitValue(bottomRightX   )
	, LimitValue(bottomRightY   )
	);
	--]]

	texture:SetPoint("BOTTOMLEFT", canvasFrame, relPoint, cx - boundingWidth, cy - boundingHeight);
	texture:SetPoint("TOPRIGHT",   canvasFrame, relPoint, cx + boundingWidth, cy + boundingHeight);
end

local function DrawLineFrame(frame, texture, canvasFrame, startX, startY, endX, endY, lineWidth, lineFactor, relPoint, lenTile)
	if (not relPoint) then relPoint = "BOTTOMLEFT"; end
	lineFactor = lineFactor * .5;
	lenTile = lenTile or 1

	-- Determine dimensions and center point of line
	local dx,dy = endX - startX, endY - startY;
	local cx,cy = (startX + endX) / 2, (startY + endY) / 2;

	-- Normalize direction if necessary
	if (dx < 0) then
		dx,dy = -dx,-dy;
	end

	-- Calculate actual length of line
	local lineLength = sqrt((dx * dx) + (dy * dy));

	local PI2=PI*2
	local atan2=math.atan2
	local angle = atan2(-dx,dy)
	if angle>0 then angle = PI2-angle else angle=-angle end

	-- Quick escape if it'sin zero length
	if (lineLength == 0) then
		texture:SetTexCoord(0,0,0,0,0,0,0,0);
		texture:SetPoint("BOTTOMLEFT", canvasFrame, relPoint, cx,cy);
		texture:SetPoint("TOPRIGHT",   canvasFrame, relPoint, cx,cy);
		return;
	end

	frame:ClearAllPoints()
	frame:SetPoint("CENTER",canvasFrame,relPoint,cx,cy)
	frame:SetSize(lineLength,lineWidth)
	frame.RotateAnim.Rotate:SetDegrees(90 - angle*360/PI2)
	frame.RotateAnim:Play()

end


ZygorGuidesViewer_TaxiMarker_Mixin = {}

function ZygorGuidesViewer_TaxiMarker_Mixin:OnLoad()
	self.icon:SetTexture(Pointer.ArrowSkinDir.."specials")
	self.icon:SetTexCoord(0.0,0.25,0.0,0.5)
	self:SetFrameLevel(5)
end
function ZygorGuidesViewer_TaxiMarker_Mixin:PointTo(parent,pin)
	self:SetParent(parent)
	self:SetPoint("CENTER",pin,"CENTER",0,0)
	self:Show()
	self.fadein:Play()
	self.here:Play()
end
function ZygorGuidesViewer_TaxiMarker_Mixin:PointToTimed(parent,pin,timeout)
	self:PointTo(parent,pin)
	ZGV:ScheduleTimer(function() self.fadeout:Play() end,timeout)
end


ZygorGuidesViewer_ArrowMenu_Destination_Mixin = {}

function ZygorGuidesViewer_ArrowMenu_Destination_Mixin:OnClick()
	if not self.map then return end

	if WorldMapFrame and WorldMapFrame:IsVisible() and WorldMapFrame:GetMapID()==self.map then
		HideUIPanel(WorldMapFrame)
	else
		OpenWorldMap(self.map) 
	end
	-- todo: ping
end


Pointer.OverlayProvider = CreateFromMixins(MapCanvasDataProviderMixin);

function Pointer.OverlayProvider:OnAdded(mapCanvas)
	MapCanvasDataProviderMixin.OnAdded(self, mapCanvas);
	-- canvas handlers
	local priority = 100;
	self.onCanvasClickHandler = self.onCanvasClickHandler or function(mapCanvas, button, cursorX, cursorY) return self:OnCanvasClickHandler(button, cursorX, cursorY) end;
	mapCanvas:AddCanvasClickHandler(self.onCanvasClickHandler, priority);

	self:RegisterEvent("PLAYER_ENTERING_WORLD")
	self:RegisterEvent("PLAYER_DEAD")
	self:RegisterEvent("PLAYER_ALIVE")
	self:RegisterEvent("PLAYER_UNGHOST")
	self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
	--self:RegisterEvent("PLAYER_STARTED_TURNING") --unused?

	if not self.OnUpdateRegistered then
		self.OnUpdateRegistered = true
		ZGV.UpdateCentral:AddHandler(self.OnUpdate)
	end

	--[[ todo: coord faking
	if not self.fakeCoordsButton then
		self.fakeCoordsButton = ZGV.ChainCall(ZGV.CreateFrameWithBG("Button", "ZygorPoiMapButton" , WorldMapFrame))
			:SetSize(50,50)
			:SetPoint("TOPLEFT", WorldMapFrame, "TOPLEFT", 5, -90)
			:SetNormalTexture(ZGV.SKINSDIR.."zglogo")
			:SetFrameLevel(611)
			:SetFrameStrata("HIGH")
			:SetScript("OnClick", function() Pointer.OverlayProvider:RecordNextClick() end)
			:Show()
		.__END
		self.fakeCoordsButton:GetNormalTexture():SetTexCoord(0,0,0,1/4 , 1,0,1,1/4)
	end
	--]]

	--self.cursorHandler = self.cursorHandler or function() return "MAP_PIN_CURSOR" end
	--mapCanvas:AddCursorHandler(self.cursorHandler, priority);
end

function Pointer.OverlayProvider:OnRemoved(mapCanvas)
	--mapCanvas:RemoveCursorHandler(self.cursorHandler);
	MapCanvasDataProviderMixin.OnRemoved(self, mapCanvas);
end

Pointer.OverlayProvider.dump = {}
	
function Pointer.OverlayProvider:OnEvent(event, ...)
	if event == "WORLD_MAP_UPDATE" then -- NOT ANYMORE!   but our DataProvider fakes this. A lot.
		Pointer:Debug("Pointer got W_M_U")
		if ZGV.db.profile.waypointaddon=="internal" then
			local m = ZGV.GetCurrentMapID()
			local count=0
			for w,way in ipairs(Pointer.waypoints) do
				way:UpdateWorldMapIcon(m)
				if way.frame_worldmap:IsShown() and way.OnEvent then way:OnEvent(event,...) end
			end

			-- force ants update
			Pointer:AnimateAnts()
		end

	elseif (event=="PLAYER_ENTERING_WORLD" or event=="ZONE_CHANGED_NEW_AREA") then
		ZGV.Pointer:DoCorpseCheck(event)
		LibRover:RecordFakeCoords()
	elseif event=="PLAYER_DEAD" then
		ZGV.Pointer:RecordCorpseLocation()
	elseif (event=="PLAYER_UNGHOST" or event=="PLAYER_ALIVE") then
		if UnitIsGhost("player") then return end -- player released, but is still a ghost, abort
		Pointer:Debug("Player is no longer dead.")
		Pointer:ForgetCorpse()
		ZGV:ShowWaypoints()
	end
end

local ant_last=GetTime()
local flash_last=GetTime()

function Pointer.OverlayProvider.OnUpdate(self,elapsed)
	if not ZGV.db then return end
	local t=GetTime()
	
	if not Pointer.OverlayFrame then return end -- too early!

	local antspeed = ZGV.db.profile.antspeed or 0.033  --frequency, really
	ant_interval = (antspeed>900) and 0.001 or (antspeed==0) and 999 or (1/antspeed)

	if t-ant_last>=ant_interval then
		if ZGV.db.profile.waypointaddon=="internal" then
			Pointer:AnimateAnts()
		end
		ant_last=t-(t-ant_last)%ant_interval  -- make sure ant_last advances in exactly ant_interval increments.
	end
end

function Pointer.OverlayProvider:RecordNextClick()
	WorldMapFrame.ScrollContainer:EnableMouse(true)
	Pointer.OverlayProvider.RecordClick = true
	WorldMapFrame:SetAlpha(1) 
end


local skip_clicks = {
	[Enum.UIMapType.Cosmic] = true,
	[Enum.UIMapType.World] = true,
	[Enum.UIMapType.Continent] = true,
}

function Pointer.OverlayProvider:OnCanvasClickHandler(button, x, y)
	-- return false - allow other canvas click handlers with lower priority to trigger
	-- return true - no more handlers. prevents map from being changed on our shift modified clicks

	if not (IsShiftKeyDown() or Pointer.OverlayProvider.RecordClick) then return false end -- we only care about shift clicks to set waypoint

	local map = self:GetMap():GetMapID()

	if Pointer.OverlayProvider.RecordClick then -- set dungeon location
		local m = C_Map.GetBestMapForUnit("player")
		local map_x = C_Map.GetPlayerMapPosition(map,"player")
		if m==map and not map_x then -- but only if it is set on players current map, and that map doesn't have coords available
			LibRover:RecordFakeCoords(x,y)
		end
		WorldMapFrame.ScrollContainer:EnableMouse(false)
		WorldMapFrame:SetAlpha(ZGV.db.profile.preview_alpha) 
		Pointer.OverlayProvider.RecordClick = false
		return true
	end


	if Pointer.debug_patheditmode then
		Pointer:Debug_AddPointToPath(map,x,y)
		ZGV:ShowWaypoints()
		return true
	end

	local fmt = ZGV.db.profile.debug_display and "%s %.2f,%.2f" or "%s %d,%d"
	local info = C_Map.GetMapInfo(map)

	if info and skip_clicks[info.mapType] then return false end -- if map is cosmic/world/continent, let the click through to switch to zone view

	--Pointer:ClearWaypoints("manual")
	local way = Pointer:SetWaypoint(nil,x,y,{
		title=fmt:format(info.name,x*100,y*100),
		type="manual",
		cleartype=not IsControlKeyDown(),
		icon=Pointer.Icons.greendotbig,
		onminimap="always",
		overworld=true,
		showonedge=true,
		findpath=true
	})

	table.wipe(ZGV.db.char.pointsetsmanual)

	for i,v in pairs(ZGV.Pointer.waypoints) do
		if v.type=="manual" then
			ZGV.db.char.pointsetsmanual[i]=v
		end
	end

	-- put coords in chat editbox
	if ChatFrame1EditBox:HasFocus() then
		local floor = LibRover:GetFloorByMapID(map)
		ChatFrame1EditBox:SetText(ChatFrame1EditBox:GetText()..("%s/%d %.2f,%.2f"):format(info.name,floor,x*100,y*100))
		ChatFrame1EditBox:SetFocus(true)
	elseif ZygorGuidesWriterFrame and ZygorGuidesWriterFrame:IsVisible() then
		ZGW.MapClickedF=ZGV.GetCurrentMapDungeonLevel()
		ZGW.MapClickedX=x
		ZGW.MapClickedY=y
	end

	return true
end

tinsert(ZGV.startups,{"Pointer additional",function(self)
	WorldMapFrame:AddDataProvider(Pointer.OverlayProvider)
end})