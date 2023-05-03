local name,ZGV = ...

local FONT = ZGV.Font
local CHAIN = ZGV.ChainCall
local L=ZGV.L

ZGV.Poi = ZGV.Poi or {}

local Poi = ZGV.Poi
Poi.Sets = {}
Poi.Points = {}

local IsQuestFlaggedCompleted = C_QuestLog.IsQuestFlaggedCompleted

local function addline(text,icon,indent,nowrap)
	local tooltip = GameTooltip

	if icon then text = "|T"..icon..":0|t "..text end

	if text then tooltip:AddLine(text,1,1,1,not nowrap) end
	--if icon then tooltip:AddTexture(icon) end
	if indent then tooltip:AddTexture(ZGV.DIR .. "\\Skins\\blank") end
end

local function poi_tooltip_show(pin)
	local poi = pin and pin.waypoint and pin.waypoint.storedData
	if not poi then return end

	GameTooltip:SetOwner(pin,"ANCHOR_TOP")
	GameTooltip:ClearLines()

	if poi.type=="treasure" then	
		addline("|cffffffffTreasure: "..poi.name)
	end
	if poi.type=="rare" then 
		addline("|cffffffffRare: "..poi.name)
		if poi.level-UnitLevel("player")>3 then
			addline("|cffee0000Warning: This NPC will be hard to solo at your level") 
		end
	end

	if poi.comment then 
		addline("|cffffaa00"..poi.comment) 
	end

	addline(L["poi_load"]) 

	if poi.currencydata and #poi.currencydata>0 and (poi.type=="treasure" or poi.type=="rare") then
		addline("")
		addline("|cffffffffCurrency:")
		for _,currency in pairs(poi.currencydata) do
			addline("|cffffffff".."|T"..currency.icon..":0|t "..currency.type)
		end
	end

	if poi.itemdata then
		addline("")
		if #poi.itemdata>1 then
			addline("|cffffffffRewards:")
		else
			addline("|cffffffffReward:")
		end

		for index,item in ipairs(poi.itemdata) do
			local comment = item.comment and " "..item.comment or ""
			
			if index==1 and item.itemid then
				EmbeddedItemTooltip_SetItemByID(GameTooltip.ItemTooltip,item.itemid)
			elseif item.itemid then
				local _, name, _, _, _, _, _, _, _, itemTexture = ZGV:GetItemInfo(item.itemid)
				name = name or RETRIEVING_ITEM_INFO
				addline(((item.count and item.count.." ") or "")..name..comment,itemTexture,nil,"nowrap")
			else
				local _,_,_,color = GetItemQualityColor(2)
				addline(((poi.itemcount and poi.itemcount.." ") or "")..("|c"..(color or "ffffffff")).."Random green"..(tonumber(poi.itemcount or 1) > 1 and "s" or "")..comment,ZGV.DIR.."\\Skins\\poirandomgreen",nil,"nowrap")
			end
		end
		--if poi.item == "RANDOM" then
		--	local _,_,_,color = GetItemQualityColor(2)
		--	addline(((poi.itemcount and poi.itemcount.." ") or "")..("|c"..(color or "ffffffff")).."Random green"..(tonumber(poi.itemcount or 1) > 1 and "s" or ""),ZGV.DIR.."\\Skins\\poirandomgreen")
		--else
		--	EmbeddedItemTooltip_SetItemByID(GameTooltip.ItemTooltip,poi.item)
		--end
	end

	GameTooltip:Show()
	GameTooltip.ZygorRecalculatePadding = 10;
end

local function split(str,sep,reverse)
	local fields = {}
	str = str..sep
	local tinsert=tinsert
	str:gsub("(.-)"..sep, function(c) if reverse then tinsert(fields, c, 1) else tinsert(fields, c) end end)
	return fields
end

local function poi_waypoint_click(way,button)
	if UnitAffectingCombat("player") then return end

	local point = way.waypoint.storedData

	if button=="LeftButton" then
		Poi:LoadPoint(point)
		poi_tooltip_show(way)
		Poi.DataProvider:RefreshAllData(true)
	end
end

-- returns if given poi is already completed
function Poi:IsComplete(point)
	if not point.quest then return true end
	return IsQuestFlaggedCompleted(point.quest)
end

-- returns if given poi is valid under current settings
function Poi:IsValid(point)
	if not ZGV.db.profile.poienabled then return false,"system disabled" end
	
	if ZGV.db.profile.hideguide[point.type] then
		return false,"hidden type" -- poi type hidden
	end

	if ZGV.db.profile.poitype==1 and point.access then 
		return false,"hidden mode"  -- quick mode, and point has access completionist
	end

	if point.condition and not point.condition_raw then
		local cond = point.condition:match("^only if%s+(.*)$")
		if cond then
			local fun,err,cond_procd = ZGV.Parser.MakeCondition(cond,true)
			if not fun then error(err) end
			point.condition_raw = point.condition
			point.condition = fun
		else
			local params = point.condition:gsub("%s*,%s*",",")
			point.condition_raw = point.condition
			point.condition = function() return ZGV:RaceClassMatch(split(params,",")) end
		end
	end
				
	if point.condition and not point.condition() then 
		return false,"condition failed" -- unmet condition
	end

	return not Poi:IsComplete(point),"quest status"
end

function Poi:ParsePoints()
	local totalsets = 0
	for pointsetname,pointset in pairs(Poi.Sets) do  totalsets=totalsets+1  end

	local count=0
	for pointsetname,pointset in pairs(Poi.Sets) do 
		count=count+1
		for i,point in pairs(pointset) do if not Poi:IsComplete(point) then
			-- name
			point.name = point.rare or point.treasure

			-- type
			if point.rare then point.type="rare" end
			if point.treasure then point.type="treasure" end

			-- icon
			point.icon_off = ZGV.Pointer.Icons[point.type]
			point.icon_on = ZGV.Pointer.Icons[point.type.."_on"]
			point.icon = point.icon_off

			-- coords
			local m,_,f,x,y = point.spot:match("([^/]+)(/*)(%d*) (%d.+),(%d.+)")
			point.map = ZGV.LibRover:GetMapByNameFloor(m,tonumber(f))
			point.f = tonumber(f)
			point.x = tonumber(x)/100
			point.y = tonumber(y)/100


			-- reward: currency
			if point.currency then
				point.currencydata = {}
				for currencystring in string.gmatch(point.currency, "([^,]+)") do
					local value,currency = currencystring:match("([0-9%-~]+)%s*(%w+)")
					local name,icon,_,info
					if not value then currency=currencystring:match("(%w+)") end
					

					if currency == "GR" then info = C_CurrencyInfo.GetCurrencyInfo(824)
					elseif currency == "AC" then info = C_CurrencyInfo.GetCurrencyInfo(823)
					elseif currency == "GL" then name,icon = "Gold","Interface\\Icons\\INV_Misc_Coin_01"
					elseif currency == "PS" then name,icon = "Primal Spirits","Interface\\Icons\\6BF_Explosive_Shard"
					elseif currency == "AA" then info = C_CurrencyInfo.GetCurrencyInfo(829) --arakkoa archaeo
					elseif currency == "OIL" then info = C_CurrencyInfo.GetCurrencyInfo(1101)
					elseif currency == "PC" then name,icon = "Pet Charms","Interface\\Icons\\achievement_guildperk_honorablemention"
					elseif currency == "OR" then info = C_CurrencyInfo.GetCurrencyInfo(1220)
					elseif currency == "AM" then info = C_CurrencyInfo.GetCurrencyInfo(1155)
					elseif currency == "VA" then info = C_CurrencyInfo.GetCurrencyInfo(1508)
					elseif currency == "CC" then info = C_CurrencyInfo.GetCurrencyInfo(1275)
					elseif currency == "AZ" then info = C_CurrencyInfo.GetCurrencyInfo(1553)
					elseif currency == "WR" then info = C_CurrencyInfo.GetCurrencyInfo(1560)
					elseif currency == "CR" then info = C_CurrencyInfo.GetCurrencyInfo(1931)
					elseif currency == "IR" then info = C_CurrencyInfo.GetCurrencyInfo(1820)--Infused Ruby
					elseif currency == "RA" then info = C_CurrencyInfo.GetCurrencyInfo(1813)--Reservoir Anima
					elseif currency == "ST" then info = C_CurrencyInfo.GetCurrencyInfo(1767)--Stygia
					end

					if info then
						name = info.name
						icon = info.iconFileID
					end
					 
					if name and name~="" then table.insert(point.currencydata,{value=value, type=name, icon=icon}) end
				end
			end

			-- reward: item, needs parsing if string is given (for randoms)
			if point.item then
				point.itemdata = {}
				for itemstring in string.gmatch(point.item, "([^,]+)") do
					local item,comment = itemstring:match("(%w+) (%w+)") 
					if not item then item = itemstring end
					if comment=="RANDOM" then 
						comment=""
						item=itemstring
					end


					if tonumber(item) then
						table.insert(point.itemdata,{itemid=item,comment=comment})
					else
						local count, item = itemstring:match("([0-9-~]+) (%w+)")
						if item then
							table.insert(point.itemdata,{item=item,count=count,comment=comment})
						end
					end
				end
			end

			-- unset no longer needed stuff
			point.spot = nil
			point.rare = nil
			point.treasure = nil

			-- prepare for waypoint conversion
			point.tooltipfunc = poi_tooltip_show
			point.OnClick = poi_waypoint_click
			point.storedData = point
		end end
		if coroutine.running() then coroutine.yield(50*count/totalsets,"poi set parsed: "..pointsetname) end
	end

	Poi:PreparePoints()
end

function Poi:PreparePoints()
	table.wipe(Poi.Points)

	local pointcount=0
	for pointsetname,pointset in pairs(Poi.Sets) do
		for i,point in pairs(pointset) do
			pointcount=pointcount+1
		end
	end
		
	local count=0
	for pointsetname,pointset in pairs(Poi.Sets) do
		for i,point in pairs(pointset) do 
			count=count+1  if count%100==0 and coroutine.running() then coroutine.yield(50+50*count/pointcount,"poi set prepared: "..pointsetname) end
			if Poi:IsValid(point) then
				Poi.Points[point.map] = Poi.Points[point.map] or {}
				table.insert(Poi.Points[point.map],point)
			end 
		end
	end
	Poi.DoneLoadingPoints = true
	Poi.DataProvider:RefreshAllData()
end

-- Find guide designated as loader, store it in easy to access location, copy default landing step for future reuse
function Poi:SetupLoader()
	for i,v in pairs(ZGV.registeredguides) do
		if v.headerdata.poiloader then
			Poi.LoaderGuide = v
			break
		end
	end
	if not Poi.LoaderGuide then 
		ZGV:Debug("&poi Failed to setup loader")
		Poi.DoneLoadingPoints = false
		return 
	end
	Poi.LoaderGuide.LandingStep = Poi.LoaderGuide.rawdata

	if ZGV.db.char.activepoi then
		for _,pointset in pairs(Poi.Points) do
			for _,point in pairs(pointset) do
				if point.quest == ZGV.db.char.activepoi then
					Poi:LoadPoint(point,"noswitch")
					break
				end
			end
		end
	end
end

-- Load landing guide, load selected point steps into it, append landing step
function Poi:LoadPoint(point,noswitch)
	Poi.LoaderGuide.rawdata = (point.steps)..(Poi.LoaderGuide.LandingStep)
	if Poi.LoaderGuide.steps then table.wipe(Poi.LoaderGuide.steps) end
	Poi.LoaderGuide.parsed = false
	Poi.LoaderGuide:Parse(true)

	for i,step in pairs(Poi.LoaderGuide.steps) do
		step.point = point
	end

	Poi.LoaderGuide.steps[#Poi.LoaderGuide.steps].ispoiloader = true

	ZGV.db.char.activepoi = point.quest

	if not noswitch then
		ZGV.Tabs:LoadGuideToTab(Poi.LoaderGuide.title,1,"poiloader")
	end
end

function Poi:ChangeState(enable)
	if enable then 
		Poi.DataProvider.DisplayedPoiSet = 0
		Poi:PreparePoints()
		Poi.DataProvider:RefreshAllData()
		Poi.CurrentZoneDataProvider:RefreshAllData()
	else
		Poi.DataProvider:RemoveAllData()
		Poi.CurrentZoneDataProvider:RemoveAllData()
	end
end

-- map button/menu moved to mapcoords.lua


local function EventHandler(self, event, ...)
	if event=="QUEST_LOG_UPDATE" 
	or event=="LOOT_READY" 
	or event=="LOOT_SLOT_CLEARED" 
	or event=="LOOT_CLOSED" 
	or event=="ENCOUNTER_LOOT_RECEIVED" 
	or event=="CHAT_MSG_CURRENCY" then 
		if DataProvider and DataProvider.DelayedRefresh then 
			ZGV:CancelTimer(DataProvider.DelayedRefresh)
			DataProvider.DelayedRefresh = nil
		end
		ZGV:ScheduleTimer(function() 
			ZGV:UpdateFrame(true)
			Poi.DataProvider:RefreshAllData()
			Poi.CurrentZoneDataProvider:RefreshPoints()
		end,0)
		ZGV:ScheduleTimer(function() 
			ZGV:UpdateFrame(true)
			Poi.DataProvider:RefreshAllData()
			Poi.CurrentZoneDataProvider:RefreshPoints()
		end,0.5)
	end
end

local function UpdateHandler()
	if GameTooltip:IsVisible() and (GameTooltip.ZygorRecalculatePadding or 0)>0 then
		GameTooltip.ZygorRecalculatePadding = GameTooltip.ZygorRecalculatePadding - 1
		GameTooltip_CalculatePadding(GameTooltip)
	end
end

tinsert(ZGV.startups,{"POI hooks",function(self)
	CreateFrame( "GameTooltip", "MyScanningTooltip", nil, "GameTooltipTemplate" )
	Poi.Events = CreateFrame("Frame")
	Poi.Events:RegisterEvent("QUEST_LOG_UPDATE")
	Poi.Events:RegisterEvent("LOOT_READY")
	Poi.Events:RegisterEvent("LOOT_CLOSED")
	Poi.Events:RegisterEvent("CHAT_MSG_CURRENCY")
	Poi.Events:RegisterEvent("ENCOUNTER_LOOT_RECEIVED")
	--Poi.Events:RegisterEvent("WORLD_MAP_UPDATE")
	Poi.Events:SetScript("OnEvent",EventHandler)
	Poi.Events:SetScript("OnUpdate",UpdateHandler)

	WorldMapFrame:AddDataProvider(ZGV.Poi.DataProvider)
	WorldMapFrame:AddDataProvider(ZGV.Poi.CurrentZoneDataProvider)
	Poi.DataProvider.DisplayedPoiSet=0

	Poi:ParsePoints()

	Poi:SetupLoader()

end})

Poi.DataProvider	= CreateFromMixins(MapCanvasDataProviderMixin)
local DataProvider	= Poi.DataProvider
DataProvider.DisplaySet = {}

function DataProvider:RemoveAllData()
	ZGV.Pointer:ClearSet("zgv_poi_"..DataProvider.DisplayedPoiSet)
end

function DataProvider:OnShow()
	DataProvider:RefreshAllData(true)
end

function DataProvider:OnMapChanged()
	ZGV.Pointer:ClearSet("zgv_poi_"..DataProvider.DisplayedPoiSet)
	DataProvider.DelayedRefresh = ZGV:ScheduleTimer(function() 
		ZGV:UpdateFrame(true)
		Poi.DataProvider:RefreshAllData()
		Poi.CurrentZoneDataProvider:RefreshPoints()
	end,0.5)
end

function DataProvider:OnHide()
	if DataProvider.RetryTimer then 
		ZGV:CancelTimer(DataProvider.RetryTimer)
	end
	ZGV.Pointer:ClearSet("zgv_poi_"..DataProvider.DisplayedPoiSet)
	DataProvider.DisplayedPoiSet = 0

end

function DataProvider:RefreshAllData(force)
	if not Poi.DoneLoadingPoints then return end
	if not ZGV.db.profile.poienabled then return end
	
	if not (self.owningMap and self.owningMap:IsShown()) then return end

	DataProvider.RetryTimer = ZGV:ScheduleTimer(function() Poi.DataProvider:RefreshAllData() end,1)

	local selfmap = self and self.GetMap and self:GetMap()
	if not (selfmap or force) then return end

	local mapid = selfmap and selfmap.GetMapID and selfmap:GetMapID()
	if not (mapid or force) then return end


	ZGV:CancelTimer(DataProvider.RetryTimer)
	DataProvider.RetryTimer = nil

	local t1=debugprofilestop()
	local active = ZGV.db.char.activepoi
	for i,point in pairs(ZGV.Pointer.waypoints) do
		if point.storedData then
			if Poi:IsValid(point.storedData) then
				local active = point.storedData.quest == active
				point:SetIcon(active and point.storedData.icon_on or point.storedData.icon_off)
			else
				ZGV.Pointer:RemoveWaypoint(point)
			end
		end
	end

	ZGV:Debug("&poi Cleared POIs in %dms",debugprofilestop()-t1)

	if mapid and DataProvider.DisplayedPoiSet~=mapid then
		DataProvider:DisplayPoints(mapid)
	end
end

function DataProvider:DisplayPoints(mapid)
	ZGV.Pointer:ClearSet("zgv_poi_"..DataProvider.DisplayedPoiSet)
	if not mapid then return end

	DataProvider.DisplayedPoiSet = mapid
	table.wipe(DataProvider.DisplaySet)

	if ZGV.Poi.Points[mapid] then
		for i,point in pairs(ZGV.Poi.Points[mapid]) do
			table.insert(DataProvider.DisplaySet,point)
		end
	end

	local mapinfo = ZGV.GetMapInfo(mapid)
	if mapinfo and mapinfo.mapType~=Enum.UIMapType.Continent and mapinfo.mapType~=Enum.UIMapType.World and mapinfo.mapType~=Enum.UIMapType.Cosmic then
		local map_children = ZGV.GetMapChildren(mapid)
		for submap,_ in pairs(map_children) do
			if ZGV.Poi.Points[submap] then
				for i,point in pairs(ZGV.Poi.Points[submap]) do
					table.insert(DataProvider.DisplaySet,point)
				end
			end
		end
	end

	ZGV.Pointer:Thread_ShowSet(
		{
			coords=DataProvider.DisplaySet,
			type="poi",
			ants=nil
		},
		"zgv_poi_"..DataProvider.DisplayedPoiSet,
		function() DataProvider:RefreshAllData("force") end
	)
end

Poi.CurrentZoneDataProvider	= CreateFromMixins(MapCanvasDataProviderMixin)
local CurrentZoneDataProvider	= Poi.CurrentZoneDataProvider
CurrentZoneDataProvider.DisplaySet = {}
CurrentZoneDataProvider.DisplayedPoiSet=0

function CurrentZoneDataProvider:OnAdded()
	ZGV:AddEventHandler("ZONE_CHANGED",CurrentZoneDataProvider.DisplayPoints);
	ZGV:AddEventHandler("ZONE_CHANGED_INDOORS",CurrentZoneDataProvider.DisplayPoints);
	ZGV:AddEventHandler("ZONE_CHANGED_NEW_AREA",CurrentZoneDataProvider.DisplayPoints)
	ZGV:AddMessageHandler("ZGV_GUIDES_PARSED",CurrentZoneDataProvider.DisplayPoints)
end

function CurrentZoneDataProvider:RefreshPoints()
	for i,point in pairs(ZGV.Pointer.waypoints) do
		if point.storedData then
			if Poi:IsValid(point.storedData) then
				local active = point.storedData.quest == active
				point:SetIcon(active and point.storedData.icon_on or point.storedData.icon_off)
			else
				ZGV.Pointer:RemoveWaypoint(point)
			end
		end
	end
end

function CurrentZoneDataProvider:DisplayPoints()
	if not Poi.DoneLoadingPoints then return end
	if not ZGV.db.profile.poienabled then return end

	local mapid = C_Map.GetBestMapForUnit("player")
	if mapid==DataProvider.DisplayedPoiSet then return end
	if mapid==CurrentZoneDataProvider.DisplayedPoiSet then return end

	ZGV.Pointer:ClearSet("zgv_poi_mini")

	CurrentZoneDataProvider.DisplayedPoiSet=mapid
	table.wipe(CurrentZoneDataProvider.DisplaySet)

	if ZGV.Poi.Points[mapid] then
		for i,point in pairs(ZGV.Poi.Points[mapid]) do
			table.insert(CurrentZoneDataProvider.DisplaySet,point)
		end
	end

	local mapinfo = ZGV.GetMapInfo(mapid)
	if mapinfo and mapinfo.mapType~=Enum.UIMapType.Continent and mapinfo.mapType~=Enum.UIMapType.World and mapinfo.mapType~=Enum.UIMapType.Cosmic then
		local map_children = ZGV.GetMapChildren(mapid)
		for submap,_ in pairs(map_children) do
			if ZGV.Poi.Points[submap] then
				for i,point in pairs(ZGV.Poi.Points[submap]) do
					table.insert(CurrentZoneDataProvider.DisplaySet,point)
				end
			end
		end
	end

	ZGV.Pointer:Thread_ShowSet(
		{
			coords=CurrentZoneDataProvider.DisplaySet,
			type="poi",
			ants=nil
		},
		"zgv_poi_mini",
		function() DataProvider:RefreshAllData("force") end
	)
end
