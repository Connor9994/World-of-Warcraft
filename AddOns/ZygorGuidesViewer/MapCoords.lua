local name,ZGV = ...

-- GLOBAL EasyFork,FIXMAPZOOM,LibRover,MAPDATA_XLT,UIDropDownFork_Refresh,UIDropDownFork_SetAnchor,UIDropDownFork_SetWidth,ZygorGuidesViewer

ZGV.MapCoords = {}
local MapCoords = ZGV.MapCoords
local C_Map = C_Map

function ZGV.GetPlayerPosition()
	local map = C_Map.GetBestMapForUnit("player")
	if not map then return 0,0,0 end
	local coords = C_Map.GetPlayerMapPosition(map,"player")
	if not coords then return 0,0,map end
	return coords.x,coords.y,map
end

function ZGV.GetCurrentMapContinent()
	local map = C_Map.GetBestMapForUnit("player")
	--if WorldMapFrame:IsVisible() then map=WorldMapFrame:GetMapID() end
	--if FlightMapFrame:IsVisible() then map=FlightMapFrame:GetMapID() end -- maps in FMF have different parents than those in worldmap

	return ZGV.GetMapContinent(map)
end

local PI2=PI*2
local atan2=math.atan2
local sqrt=math.sqrt


local GWP=C_Map.GetWorldPosFromMapPos
local Enum_Continent = Enum.UIMapType.Continent
local Enum_Dungeon = Enum.UIMapType.Dungeon
local Enum_Orphan = Enum.UIMapType.Orphan
local Enum_Micro = Enum.UIMapType.Micro
local Enum_Zone = Enum.UIMapType.Zone
local Enum_Orphan = Enum.UIMapType.Orphan

local force_maptype={
	[1177]=Enum_Micro,
	[1021]=Enum_Micro,
	[427]=Enum_Zone,[582]=Enum_Zone,[590]=Enum_Zone,[622]=Enum_Zone,[624]=Enum_Zone,[750]=Enum_Zone,[747]=Enum_Zone,[1182]=Enum_Zone, -- these zones have mapType==6, let's correct it to zone
	[626]=Enum_Micro,[627]=Enum_Zone,[628]=Enum_Micro,[629]=Enum_Micro, -- Dalaran L is a micro, not a dungeon - but main floor is a Zone!
	[125]=Enum_Zone,[126]=Enum_Micro, -- Dalaran is a micro, not a dungeon - but main floor is a Zone!
	[499]=Enum_Micro,[500]=Enum_Micro, -- Deeprun Tram 
	[86]=Enum_Micro, -- Cleft of Shadow is a micro, not a dungeon.
	[179]=Enum_Orphan, -- Gilneas is an orphan (its submaps: 202,180,181,182,275 will obey)
	[1183]=Enum_Micro, -- Thornheart is a micro, not a dungeon.
	[1167]=Enum_Micro, [1166]=Enum_Micro, -- Zanchul in Dazar'alor are micro maps, not dungeon.
	[830]=Enum_Continent,[882]=Enum_Continent,[885]=Enum_Continent, -- Argus zones
	[1349]=Enum_Micro,[1350]=Enum_Micro,[1351]=Enum_Micro, -- Tol Dagor Scenario
	[1361]=Enum_Micro, -- Old Ironforge, setting to micro, not dungeon.
	[948]=Enum_Orphan, -- The Maelstrom is an orphan
	[1355]=Enum_Continent, -- The Maelstrom is an orphan
	[694]=Enum_Zone, -- Helmouth Shadows
	[720]=Enum_Micro,[721]=Enum_Micro, -- Fel Hammer
	[879]=Enum_Micro, [880]=Enum_Micro, -- Fel Hammer
	[698]=Enum_Micro, [699]=Enum_Micro, -- Icecrown Citadel L
	[775]=Enum_Micro, [776]=Enum_Micro, -- Exodar, Azuremyst (scenario)
	[804]=Enum_Micro, [805]=Enum_Micro, -- Scarlet Monastery
	[748]=Enum_Micro, -- Niskara
	[740]=Enum_Micro, [741]=Enum_Micro, -- Shadowgore Citadel
	[865]=Enum_Micro, [866]=Enum_Micro, -- Stormheim invasion
	[869]=Enum_Micro, [870]=Enum_Micro, -- Highmountain invasion
	[717]=Enum_Micro, -- Dreadscar Rift (Warlock OH)
	[1535]=Enum_Zone, [1534]=Enum_Zone, -- Durotar War Campaign and Orgrimmar War Campaign on Kalimdor
	[734]=Enum_Micro,[735]=Enum_Micro, -- Hall of the Guardian
	[791]=Enum_Micro,[792]=Enum_Micro, -- Temple of the Jade Serpent
	[799]=Enum_Micro,[800]=Enum_Micro,[801]=Enum_Micro,[802]=Enum_Micro,[803]=Enum_Micro, -- The Oculus scenario
	[881]=Enum_Micro,
	[872]=Enum_Micro,[873]=Enum_Micro,[874]=Enum_Micro,
	[742]=Enum_Micro,[743]=Enum_Micro,
	[827]=Enum_Micro,
	[744]=Enum_Micro,[745]=Enum_Micro,[746]=Enum_Micro,	-- Warrior Legion Ulduar Order Hall Scenario
	[857]=Enum_Micro,
	[829]=Enum_Micro,
	[891]=Enum_Micro,[892]=Enum_Micro,[893]=Enum_Micro,[894]=Enum_Micro,			-- Argus Azuremyst Isle Scenario
	[889]=Enum_Micro,[890]=Enum_Micro,				-- Arcatraz Argus Campaign
	[1681]=Enum_Micro,[1682]=Enum_Micro,				-- Shadowlands Icecrown Citadel Intro
	[1690]=Enum_Micro,				-- Aspirant's Quarters (Bastion)
	[1707]=Enum_Micro,[1708]=Enum_Micro,			-- Elysian Hold (Bastion)
	[1670]=Enum_Zone,[1671]=Enum_Zone,[1672]=Enum_Zone,[1673]=Enum_Zone, -- Oribos all floors
	[1701]=Enum_Zone,[1702]=Enum_Zone,[1703]=Enum_Zone, -- Heart of the Forest (Ardenweald)
	[1698]=Enum_Micro,					-- Seat of the Primus (Maldraxxus)
	[1705]=Enum_Micro,					-- Torghast (Main Floor)
	[1652]=Enum_Micro,					-- Vault of Souls (Maldraxxus)
	[1824]=Enum_Micro,					-- Matriarch's Den (Ardenweald)
	[940]=Enum_Micro,[941]=Enum_Micro,				-- Lightforged Draenei Starter
	[1699]=Enum_Zone,[1700]=Enum_Zone,			-- Sinfall both floors
	[2005]=Enum_Micro,					-- Battle of Ardenweald scenario
	[2016]=Enum_Micro,					-- Tazavesh is orphan, change to micro

	-- ptr
	[1970]=Enum_Continent,					-- Zereth Mortis, zone to continent, since its taxis collide with rest of shadowlands
}

local phasedmappairs = {
	-- mapid, = {map to reset parent for, condition}
	[390]  = {othermap=1530,cond=function() return ZGV.InPhase("oldvale") end},
	[1530] = {othermap=390, cond=function() return not ZGV.InPhase("oldvale") end},
}

local ZGV_mapcache = {}

local function handlephases(mapid)
	local mapdata = ZGV_mapcache[mapid]
	if not mapdata then return end

	if phasedmappairs[mapid] then
		local othermapid = phasedmappairs[mapid].othermap
		if not ZGV_mapcache[othermapid] then
			ZGV_mapcache[othermapid] = C_Map.GetMapInfo(othermapid)
		end

		if not ZGV_mapcache[mapid].originalparentMapID then 
			-- store original parent ids for both maps
			ZGV_mapcache[mapid].originalparentMapID = ZGV_mapcache[mapid].parentMapID
			ZGV_mapcache[othermapid].originalparentMapID = ZGV_mapcache[othermapid].parentMapID
		end

		if phasedmappairs[mapid].cond() then 
			-- we are in this phase. set our parent to original one
			ZGV_mapcache[mapid].parentMapID = ZGV_mapcache[mapid].originalparentMapID
			-- wipe sibling map parent
			ZGV_mapcache[othermapid].parentMapID = 0
		else
			-- we are not in this phase. wipe our parent
			ZGV_mapcache[mapid].parentMapID = 0
			-- restore siblings
			ZGV_mapcache[othermapid].parentMapID = ZGV_mapcache[othermapid].originalparentMapID
		end
	end

end

function ZGV.GetMapInfo(mapid)
	if not mapid then return end
	local mapdata = ZGV_mapcache[mapid]
	if mapdata then 
		handlephases(mapid)
		return mapdata 
	end

	if LibRover.data.InstanceMapsRev and LibRover.data.InstanceMapsRev[mapid] then
		ZGV_mapcache[mapid] = {mapID=mapid,mapType=Enum.UIMapType.Dungeon,name=LibRover.data.MapGroupIDs[mapid], floorname=LibRover.data.MapGroupIDs[mapid], parentMapID=LibRover.data.InstanceMapsContinents[mapid]}
	else
		ZGV_mapcache[mapid] = C_Map.GetMapInfo(mapid)
	end

	if not ZGV_mapcache[mapid] then return end
	
	local forced_type=force_maptype[mapid]
	if forced_type then ZGV_mapcache[mapid].mapType=forced_type end
	
	handlephases(mapid)
	return ZGV_mapcache[mapid]
end

function ZGV.GetMapContinent(mapID)
	local mapInfo = ZGV.GetMapInfo(mapID);
	while mapInfo do
		if mapInfo.mapType == Enum_Dungeon then
			return mapInfo.mapID,"dungeon"
		elseif mapInfo.mapType == Enum_Orphan then
			return mapInfo.mapID,"orphan"
		elseif mapInfo.mapType == Enum_Continent then
			return mapInfo.mapID,mapInfo.name;
		end
		mapInfo = ZGV.GetMapInfo(mapInfo.parentMapID);
	end
	return mapID,"Unknown continent"
end

function ZGV.GetMapChildren(mapID,resultsArray)
	resultsArray = resultsArray or {}
	local mapInfo = ZGV.GetMapInfo(mapID);
	if not mapInfo then return resultsArray end
	if mapInfo and mapInfo.children then return mapInfo.children end

	for i,cData in pairs(C_Map.GetMapChildrenInfo(mapID)) do
		resultsArray[cData.mapID] = true
		ZGV.GetMapChildren(cData.mapID,resultsArray)
	end

	ZGV_mapcache[mapID].children = resultsArray
	return resultsArray
end

function ZGV.GetAllContinents()
	local results = {}
	for i,v in pairs(ZGV_mapcache) do
		if v.mapType==Enum.UIMapType.Continent then
			results[i]=true
		end
	end
	return results
end


function ZGV.GetCurrentMapID()
	local currentmap = C_Map.GetBestMapForUnit("player")
	if not currentmap then return 0 end
	local mapInfo = ZGV.GetMapInfo(currentmap);
	return mapInfo and mapInfo.mapID or 0;
end

function ZGV.GetMapNameByID(id,floor)
	if type(id) == "string" then id,floor = LibRover:GetMapByNameFloor(id,floor) end
	local mapInfo = ZGV.GetMapInfo(id or 0)
	return mapInfo and mapInfo.name or "nil"
end

function ZGV.GetMapGroupID(id,floor)
	if type(id) == "string" then id,floor = LibRover:GetMapByNameFloor(id,floor) end
	local mapInfo = ZGV.GetMapInfo(id or 0)
	if mapInfo and mapInfo.groupID==nil then
		mapInfo.groupID = C_Map.GetMapGroupID(id)
		if not mapInfo.groupID then mapInfo.groupID=false end  -- but not nil!
	end
	return mapInfo and mapInfo.groupID or nil
end

function ZGV.GetMapFloorNameByID(id,floor)
	if type(id) == "string" then id,floor = LibRover:GetMapByNameFloor(id,floor) end
	local mapInfo = ZGV.GetMapInfo(id or 0)
	if mapInfo and not mapInfo.floorname then repeat
		local groupID = C_Map.GetMapGroupID(id)   if not groupID then break end
		local groupInfo = C_Map.GetMapGroupMembersInfo(groupID)  if not groupInfo then break end
		for i,floor in ipairs(groupInfo) do
			if floor.mapID==id then mapInfo.floorname=floor.name break end
		end
	until true end
	return mapInfo and mapInfo.floorname or mapInfo.name or "nil"
end

function ZGV.GetCurrentMapDungeonLevel()
	return LibRover:GetFloorByMapID(C_Map.GetBestMapForUnit("player"))
end



local cache={}  -- makes the lookup 50% faster (1mil runs on random maps: 2000ms without cache, 1300 with cache)
-- subfloors in Dazar'Alor should be grouped, really. Link 1165 to others - others themselves will be fine.
cache["1163_1164"]=true
cache["1163_1165"]=true
cache["1164_1165"]=true
cache["1165_1166"]=true
cache["1165_1167"]=true

function ZGV.MapsOnDifferentFloors(m1,m2)
	if m1==m2 then return false end
	if m1>m2 then m1,m2=m2,m1 end
	if cache[m1]==false then return false end
	if cache[m2]==false then return false end
	local c=cache[m1.."_"..m2]
	if c~=nil then return c end
	local group_w = ZGV.GetMapGroupID(m1)
	if not group_w then cache[m1]=false return false end
	local group_c = ZGV.GetMapGroupID(m2 or m1)
	if not group_c then cache[m2]=false return false end
	c=(group_w==group_c)
	cache[m1.."_"..m2]=c
	return c
end


local function EQ(a,b) return abs(a-b)<0.1 end
local function NE(a,b) return not EQ(a,b) end

MapCoords.MAPDATA={}
local MAPDATA=MapCoords.MAPDATA

local function GetMAPDATAFromGWP()
	for i=1,3000 do repeat
		if MAPDATA[i] then break end
		if not LibRover.data.FloorByID[i] then break end

		local _,d1=GWP(i,{x=0,y=0})
		local _,d2=GWP(i,{x=1,y=1})
		if not d1 then break end
		MAPDATA[i]={_,d1.y,d1.x,d1.y-d2.y,d1.x-d2.x} -- WTF? Does GWPFMP mix its x and y !?
	until true end
end

local function CloneHBDMap(src,dst,force,changes)
	local srct=ZGV.HBD.mapData[src]  if not srct then return end
	local dstt=ZGV.HBD.mapData[dst]  if dstt and not force then return end
	dstt={}  ZGV.HBD.mapData[dst]=dstt
	for k,v in pairs(srct) do dstt[k]=v end
	if changes then for k,v in pairs(changes) do dstt[k]=v end end
end
local function ForceHBDMapUpdate(id)
	local data = C_Map.GetMapInfo(id)
	if data then ZGV.HBD.processMap(id,data) end
end
local function FixHBD()
	CloneHBDMap(543,1170,false)
	ForceHBDMapUpdate(1333)
end
local function GetMAPDATAFromHBD()
	for i=1,3000 do repeat
		local d=ZGV.HBD.mapData[i]
		if not d then break end
		MAPDATA[i]={d.instance,d[3],d[4],d[1],d[2]}
	until true end
end

local function FixMAPDATA() 
	-- expedition maps are now properly filled with GWP data

	MAPDATA[1170]=MAPDATA[1170] or MAPDATA[543]  -- Gorgrond - Mag'har scenario
	MAPDATA[694]={1220,2441,4040,1485,990} -- Helmouth Shallows (Hunter scenario) on Stormheim
	if MAPDATA[1535] then MAPDATA[1535][1]=1 end -- Durotar War Campaign is on Kalimdor, not on some magic instance
	if MAPDATA[1534] then MAPDATA[1534][1]=1 end -- Orgrimmar War Campaign is on Kalimdor, not on some magic instance either
	--MAPDATA[418]={870, 2866.66,-304.16,4356.25,2904.17}
	--if KRASARANG_IS_BUGGED then MAPDATA[418]={870, 2949.921,-114.152,2949.921+1738.47,3234.15-114.152} end
	if MAPDATA[1527] then MAPDATA[1527][1]=1 end -- Uldum New - also on Kalimdor

	for mapid,_ in pairs(LibRover.data.InstanceMapsRev) do
		MAPDATA[mapid] = {mapid,0,0,0,0}
	end
end

local function HBDmaptest(n)
	for i=n or 1,n or 3000 do repeat
		local _,d1=GWP(i,{x=0,y=0})
	 	local dh=ZGV.HBD.originaldb2[i]
	 	local inf = C_Map.GetMapInfo(i)
		if d1 and not dh then print(i,"missing from HBD: ",inf.name,inf.mapType)
		elseif d1 and (NE(MAPDATA[i][2],dh[5]) or NE(MAPDATA[i][3],dh[4])) then
			print(("%4d %s\n C_M: %5d %5d\n HBD: %5d %5d"):format(i, C_Map.GetMapInfo(i).name, MAPDATA[i][2],MAPDATA[i][3], dh[3],dh[4]))
		end
	until true end
end
local function HBDuse(id)
	local dh=ZGV.HBD.db2MapData[id]
	if not dh then print("No",id,"in HBD") end
	MAPDATA[id]={dh.instance,dh[4],dh[3],dh[1],dh[2]}
end

function MapCoords.Mdist(map1,x1,y1,map2,x2,y2)
	local dx,dy
	local dm1=MAPDATA[map1]
	if not dm1 or not x1 or not x2 then return nil end
	if map1==map2 then  -- same map
		dx = ((x1-x2)*dm1[4]) -- should be x2-x1, of course, but world coords are inane.
		dy = ((y1-y2)*dm1[5])
	else
		local dm2=MAPDATA[map2]
		if not dm2 then return nil end
		if dm1[1]~=dm2[1] then return nil end  -- diff continent
		local gx1 = dm1[2]-dm1[4]*x1
		local gy1 = dm1[3]-dm1[5]*y1
		local gx2 = dm2[2]-dm2[4]*x2
		local gy2 = dm2[3]-dm2[5]*y2
		dx = gx2-gx1
		dy = gy2-gy1
	end
	return sqrt(dx*dx+dy*dy),dx,dy
end
local Mdist = MapCoords.Mdist

function MapCoords.Mangle(...)
	local dist,dx,dy = Mdist(...)
	if not dx then return nil,nil end
	local angle = atan2(-dx,dy)
	if angle>0 then angle = PI2-angle else angle=-angle end
	return angle,dist
end

-- instance IDs
local C_KULTIRAS = 1643
local C_ZANDALAR = 1642
local C_NAZJATAR = 1718
local C_BROKENIS = 1220
local C_PANDARIA = 870
local C_NORTHREND = 571
local C_DEEPHOLM = 646
local C_LOSTISLES = 648
local C_DRAENOR = 1116
local C_OUTLAND = 530
local C_EASTERN = 0
local C_KALIMDOR = 1
local C_SHADOWLANDS = 2222
local C_DRAGONISLES = 2444

local cosmicMapData = {}
MapCoords.cosmicMapData = cosmicMapData  --debug export
	if ZGV.IsClassic then
		-- data for the azeroth world map
		cosmicMapData[C_EASTERN] = { 140000, 79000, 82000, 37000 } -- Eastern
		cosmicMapData[C_KALIMDOR] = { 160000, 71000, 67000, 32000 } -- Kalimdor

	elseif ZGV.IsClassicTBC then
		-- data for the azeroth world map
		cosmicMapData[C_EASTERN] = { 94000, 60000, 79000, 35000 } -- Eastern
		cosmicMapData[C_KALIMDOR] = { 100000, 64000, 67000, 40000 } -- Kalimdor

		-- outland
		cosmicMapData[C_OUTLAND] = { 45000, 33000, 18200, 11200 }

	elseif ZGV.IsClassicWOTLK then
		-- data for the azeroth world map
		cosmicMapData[C_EASTERN] = { 94000, 60000, 79000, 35000 } -- Eastern
		cosmicMapData[C_KALIMDOR] = { 100000, 64000, 67000, 40000 } -- Kalimdor
		cosmicMapData[C_NORTHREND] = { 110000, 220000, 56000, 70000 } -- Northrend

		-- outland
		cosmicMapData[C_OUTLAND] = { 45000, 33000, 18200, 11200 }
	else
		-- data for the azeroth world map
		cosmicMapData[C_EASTERN] = { 140000, 79000, 82000, 37000 } -- Eastern
		cosmicMapData[C_KALIMDOR] = { 160000, 71000, 67000, 32000 } -- Kalimdor

		cosmicMapData[C_NORTHREND] = { 110000, 220000, 56000, 70000 } -- Northrend
		cosmicMapData[C_PANDARIA] = { 250000, 210000, 125000, 145000 } -- Pandaria
		cosmicMapData[C_BROKENIS] = { 3000000, 2000000, 1500000, 1150000 } -- Broken Isles
		cosmicMapData[C_ZANDALAR] = { 3000000, 2000000, 1550000, 1300000 } -- Zandalar
		cosmicMapData[C_KULTIRAS] = { 3000000, 2000000, 1600000, 1200000 } -- Kul Tiras

		cosmicMapData[C_LOSTISLES] = { 250000, 210000, 125000, 115000 } -- The Lost Isles, 
		cosmicMapData[C_DEEPHOLM] = { 250000, 210000, 130000, 110000 } -- The Maelstrom

		-- draenor
		cosmicMapData[C_DRAENOR] = { 65000, 40000, 56000, 28000 }
		-- outland
		cosmicMapData[C_OUTLAND] = { 65000, 46000, 18000, 34000 }
		-- shadowlands
		cosmicMapData[C_SHADOWLANDS] = { 95000, 66000, 18000, 15000 }
		-- dragon isles
		cosmicMapData[C_DRAGONISLES] = { 3000000, 2000000, 1600000, 1200000 }
	end
--

local function GetCosmicWorldMapCoordinatesFromWorld(x,y,instance,allowOutOfBounds)
    local data = cosmicMapData[instance]
    if not data or data[1] == 0 or data[2] == 0 then return nil, nil end
    if not x or not y then return nil, nil end

    local width, height, left, top = data[1], data[2], data[3], data[4]
    x, y = (left - x) / width, (top - y) / height

    -- verify the coordinates fall into the zone
    if not allowOutOfBounds and (x < 0 or x > 1 or y < 0 or y > 1) then return nil, nil end

    return x, y
end

local MAP_AZEROTH = 947
local MAP_COSMIC = 946

MAPDATA_XLT = {}
local MXLT=MAPDATA_XLT
local abs,unpack=abs,unpack
function MapCoords.Mxlt(map1,x,y,map2,oob_ok,creative)
	if map1==map2 then return x,y end
	if not map1 or not map2 then return false,nil,nil,"no maps" end

	if map2==MAP_AZEROTH --[[AZEROTH--]] then
		if map1==MAP_COSMIC then return false,nil,nil,"cosmic <-> azeroth" end
		local x,y,zone = ZGV.HBD:GetWorldCoordinatesFromZone(x,y,map1)
		return ZGV.HBD:GetAzerothWorldMapCoordinatesFromWorld(x,y,zone,true)
	elseif map2==MAP_COSMIC --[[COSMIC--]] then
		if map1==MAP_AZEROTH then return false,nil,nil,"cosmic <-> azeroth" end
		local x,y,zone = ZGV.HBD:GetWorldCoordinatesFromZone(x,y,map1)
		return GetCosmicWorldMapCoordinatesFromWorld(x,y,zone,true)
	end

	-- ((o1+w1*x)-o2)/w2  =  (o1 + w1*x - o2) / w2  =  (o1-o2)/w2 + (w1/w2)*x
	-- o12 = (o1-o2)/w2
	-- s12 = w1/w2

	local ox,sx,oy,sy,overlap
	local XM1,XM12
	XM1 = MXLT[map1]
	local need
	if XM1 then
		XM12 = XM1[map2]
	else
		XM1={} MXLT[map1]=XM1
	end
	local was_creative
	if XM12==false and not creative then
		return false,nil,nil,"no XM"
	elseif XM12 then
		ox,sx,oy,sy,overlap=unpack(XM12)
		if not oob_ok and not overlap then return false,nil,"oob" end
	else
		local dm1=MAPDATA[map1]
		local dm2=MAPDATA[map2]
		if not dm1 or not dm2 then return false end
		if dm1[1]~=dm2[1] then -- diff continent
			if creative then
				dm1 = MapCoords.Mxlt_get_virtual_map_data(map1,map2)
				if not dm1 then return nil,nil,false,"creative fail" end
				was_creative=true
			else
				XM1[map2]=false
				return false,nil,nil,"diff cont"
			end
		end
		ox = (dm2[2]-dm1[2])/dm2[4]
		sx = dm1[4]/dm2[4]
		oy = (dm2[3]-dm1[3])/dm2[5]
		sy = dm1[5]/dm2[5]
		overlap = max( abs(dm1[2]-dm2[2]+dm2[4]), abs(dm2[2]-dm1[2]+dm1[4])) < abs(dm1[4])+abs(dm2[4])
		      and max( abs(dm1[3]-dm2[3]+dm2[5]), abs(dm2[3]-dm1[3]+dm1[5])) < abs(dm1[5])+abs(dm2[5])
		XM1[map2]={ox,sx,oy,sy,overlap}
	end

	local x2=sx*x+ox
	local y2=sy*y+oy

	if (x2<0 or x2>1 or y2<0 or y2>1) and not oob_ok then return false,nil,nil,"not oob" end
	return x2,y2,was_creative
end
local Mxlt = MapCoords.Mxlt

local continent_main_maps = {}

if ZGV.IsRetail then
	continent_main_maps = {
		[C_KALIMDOR]=12,
		[C_EASTERN]=13,
		[C_NORTHREND]=113,
		[C_PANDARIA]=424,
		[C_BROKENIS]=619,
		[C_KULTIRAS]=876,
		[C_ZANDALAR]=875,
		[C_NAZJATAR]=1355,
		[C_SHADOWLANDS]=1550,
		[C_DRAGONISLES]=1978,
	}
elseif ZGV.IsClassicTBC then
	continent_main_maps = {
		[C_KALIMDOR]=1414,
		[C_EASTERN]=1415,
		[C_OUTLAND]=1945,
	}
elseif ZGV.IsClassicWOTLK then
	continent_main_maps = {
		[C_KALIMDOR]=1414,
		[C_EASTERN]=1415,
		[C_OUTLAND]=1945,
		[C_NORTHREND]=113,
	}
elseif ZGV.IsClassic then
	continent_main_maps = {
		[C_KALIMDOR]=1414,
		[C_EASTERN]=1415,
	}
end

local virtual_continents
	-- containing
		-- contained
			-- x,y,scale in rel. to original contained

if ZGV.IsRetail then
	virtual_continents = {
		[C_KALIMDOR] = {
			[C_EASTERN] =   { 2.0,  0.0,  1.0 },
			[C_BROKENIS] =  { 1.0,  0.0,  1.0 },
			[C_KULTIRAS] =  { 1.3,  0.3,  1.0 },
			[C_ZANDALAR] =  { 1.0,  0.5,  1.0 },
			[C_PANDARIA] =  { 1.0,  0.8,  1.0 },
			[C_NORTHREND] = { 1.0, -0.5,  1.0 },
		},
		[C_EASTERN] = {
			[C_KALIMDOR] =  { -2.0,  0.0,  1.0 },
			[C_BROKENIS] =  { -1.0,  0.0,  1.0 },
			[C_KULTIRAS] =  { -1.3,  0.3,  1.0 },
			[C_ZANDALAR] =  { -1.0,  0.5,  1.0 },
			[C_PANDARIA] =  { -1.0,  0.8,  1.0 },
			[C_NORTHREND] = { -1.0, -0.5,  1.0 },
		},
		[C_NORTHREND] = {
			[C_EASTERN] =   {  1.5,  1.0,  1.0 },
			[C_KALIMDOR] =  { -1.5,  1.0,  1.0 },
			[C_BROKENIS] =  {  0.5,  1.0,  1.0 },
			[C_KULTIRAS] =  {  1.0,  1.3,  1.0 },
			[C_ZANDALAR] =  {  0.5,  1.5,  1.0 },
			[C_PANDARIA] =  { -1.0,  2.0,  1.0 },
		},
		[C_PANDARIA] = {
			[C_EASTERN] =   {  1.5, -1.5,  1.0 },
			[C_KALIMDOR] =  { -1.5, -1.5,  1.0 },
			[C_BROKENIS] =  {  0.5, -1.7,  1.0 },
			[C_KULTIRAS] =  {  1.0, -1.3,  1.0 },
			[C_ZANDALAR] =  {  0.6, -1.0,  1.0 },
			[C_NORTHREND] = {  0.0, -3.0,  1.0 },
		},
		[C_BROKENIS] = {
			[C_EASTERN] =   {  1.5,  0.0,  1.0 },
			[C_KALIMDOR] =  { -1.5,  0.0,  1.0 },
			[C_KULTIRAS] =  {  1.0,  0.5,  1.0 },
			[C_ZANDALAR] =  { -0.3,  1.2,  1.0 },
			[C_PANDARIA] =  { -0.8,  2.0,  1.0 },
			[C_NORTHREND] = { -0.8, -1.2,  1.0 },
		},
		[C_KULTIRAS] = {
			[C_EASTERN] =   {  1.0, -0.3,  1.0 },
			[C_KALIMDOR] =  { -2.0, -0.3,  1.0 },
			[C_BROKENIS] =  { -1.2, -0.4,  1.0 },
			[C_ZANDALAR] =  { -1.6,  0.8,  1.0 },
			[C_PANDARIA] =  { -2.0,  2.0,  1.0 },
			[C_NORTHREND] = { -2.0, -2.0,  1.0 },
			[C_NAZJATAR] =  {  0.8,  0.06, 0.5 },
		},
		[C_ZANDALAR] = {
			[C_EASTERN] =   {  2.0, -1.4,  1.0 },
			[C_KALIMDOR] =  { -2.0, -1.4,  1.0 },
			[C_BROKENIS] =  {  0.5, -1.3,  1.0 },
			[C_KULTIRAS] =  {  1.0, -1.0,  1.0 },
			[C_PANDARIA] =  { -0.8,  1.0,  1.0 },
			[C_NORTHREND] = { -1.0, -3.0,  1.0 },
			[C_NAZJATAR] =  {  0.8,  0.06, 0.5 },
		},
		[C_NAZJATAR] = {
			[C_KULTIRAS] =  {  0.7,  0.7,  0.05 },
			[C_ZANDALAR] =  {  0.05, 0.4,  0.05 },
		}
	}
elseif ZGV.IsClassicTBC then
	virtual_continents = {
		[C_KALIMDOR] = {
			[C_EASTERN] =   { 2.0,  0.0,  1.0 },
			[C_OUTLAND] = { 0.0, 0.0,  0.0 },
		},
		[C_EASTERN] = {
			[C_KALIMDOR] =  { -2.0,  0.0,  1.0 },
			[C_OUTLAND] = { 0.0, 0.0,  0.0 },
		},
	}
elseif ZGV.IsClassicWOTLK then
	virtual_continents = {
		[C_KALIMDOR] = {
			[C_EASTERN] =   { 2.0,  0.0,  1.0 },
			[C_NORTHREND] = { 1.0, -0.5,  1.0 },
			[C_OUTLAND] = { 0.0, 0.0,  0.0 },
		},
		[C_EASTERN] = {
			[C_KALIMDOR] =  { -2.0,  0.0,  1.0 },
			[C_NORTHREND] = { -1.0, -0.5,  1.0 },
			[C_OUTLAND] = { 0.0, 0.0,  0.0 },
		},
		[C_NORTHREND] = {
			[C_EASTERN] =   {  1.5,  1.0,  1.0 },
			[C_KALIMDOR] =  { -1.5,  1.0,  1.0 },
			[C_OUTLAND] = { 0.0, 0.0,  0.0 },
		},
	}
elseif ZGV.IsClassic then
	virtual_continents = {
		[C_KALIMDOR] = {
			[C_EASTERN] =   { 2.0,  0.0,  1.0 },
		},
		[C_EASTERN] = {
			[C_KALIMDOR] =  { -2.0,  0.0,  1.0 },
		},
	}
end

local virtual_calculated = {

}
MapCoords.virtual_continents = virtual_continents  --debug export
MapCoords.virtual_calculated = virtual_calculated  --debug export

local dummy_pos_00 = {x=0,y=0}
local dummy_pos_11 = {x=1,y=1}


function MapCoords.TranslateVirtualContinents()
	for parent,pdata in pairs(virtual_continents) do
		local _,par_cx,par_cy,par_cw,par_ch = unpack(MAPDATA[continent_main_maps[parent]])
		virtual_calculated[parent]={}
		for child,cdata in pairs(pdata) do
			local _,chi_cx,chi_cy,chi_cw,chi_ch = unpack(MAPDATA[continent_main_maps[child]])
			virtual_calculated[parent][child]={
				x = par_cx-cdata[1]*par_cw, --left
				y = par_cy-cdata[2]*par_ch, --top
				w = chi_cw*cdata[3],
				h = chi_ch*cdata[3]
			}
		end
	end
end

local virtual_cache={}

function MapCoords.Mxlt_get_virtual_map_data(map_new,map_ori)
	-- figure out what if map_new's whole continent was on map_ori's continent somewhere
	
	local D={}

	-- use cache if available
	 local v1=virtual_cache[map_ori]
	 local v2=v1 and v1[map_new]
	 if v2 then return v2 end

	local md_new = MAPDATA[map_new]
	local md_ori = MAPDATA[map_ori]

	D.md_new = md_new  D.md_ori = md_ori

	local vc1=virtual_calculated[md_ori[1]]
	local virt_c_new = vc1 and vc1[md_new[1]]
	if not virt_c_new then return end

	-- get full continent coords for map_origin
	local _,ori_cx,ori_cy,ori_cw,ori_ch = unpack(MAPDATA[ZGV.GetMapContinent(map_ori)])
	D.ori_cx=ori_cx	D.ori_cy=ori_cy	D.ori_cw=ori_cw	D.ori_ch=ori_ch

	-- get full continent coords for map_new
	local _,new_cx,new_cy,new_cw,new_ch = unpack(MAPDATA[ZGV.GetMapContinent(map_new)])
	D.new_cx=new_cx	D.new_cy=new_cy	D.new_cw=new_cw	D.new_ch=new_ch

	-- new map on its continent, normalized
	local new_posx = ((new_cx-md_new[2])/new_cw)
	local new_posy = ((new_cy-md_new[3])/new_ch)
	local new_scax = md_new[4]/new_cw
	local new_scay = md_new[5]/new_ch
	D.new_posx,D.new_posy,D.new_scax,D.new_scay = new_posx,new_posy,new_scax,new_scay

	local virt_new_posx = virt_c_new.x-virt_c_new.w*new_posx
	local virt_new_posy = virt_c_new.y-virt_c_new.h*new_posy
	local virt_new_wid = virt_c_new.w*new_scax
	local virt_new_hei = virt_c_new.h*new_scay
	D.virt_new_posx,D.virt_new_posy,D.virt_new_wid,D.virt_new_hei = virt_new_posx,virt_new_posy,virt_new_wid,virt_new_hei

	return {-2,virt_new_posx,virt_new_posy,virt_new_wid,virt_new_hei}
end

function MapCoords.Mxlt_test()
	-- 1000000 times:
	--  debugprofilestop() = 140
	--  nop() = 130
	--  local T={}  function F(i) return T[i] end

	ZGV:ScheduleTimer(function()
		local t1=debugprofilestop()
		print("Running 1000000 in-bounds map translations")
		for i=1,1000000 do Mxlt(85,0.2,0.2,86,true) end
		local t2=debugprofilestop()
		print(("%.3fms"):format(t2-t1))
	end,0.1)

	ZGV:ScheduleTimer(function()
		local t1=debugprofilestop()
		print("Running 1000000 bad-cont map translations")
		for i=1,1000000 do Mxlt(85,0.2,0.2,101,true) end
		local t2=debugprofilestop()
		print(("%.3fms"):format(t2-t1))
	end,0.2)

	ZGV:ScheduleTimer(function()
		local t1=debugprofilestop()
		print("Running 1000000 oob map translations")
		for i=1,1000000 do Mxlt(85,0.2,0.2,65,false) end
		local t2=debugprofilestop()
		print(("%.3fms"):format(t2-t1))
	end,0.3)

	local HBD=ZGV.HBD
	ZGV:ScheduleTimer(function()
		local t1=debugprofilestop()
		print("Running 1000000 HBD:TZC")
		for i=1,1000000 do HBD:TranslateZoneCoordinates(0.2,0.2,85,65,false) end
		local t2=debugprofilestop()
		print(("%.3fms"):format(t2-t1))
	end,0.3)
end

-- got points a and b on maps 1 and 2
local function recalc_xy(ax1,ay1,ax2,ay2,bx1,by1,bx2,by2, mx1,my1)
	local scalex,scaley=(bx1-ax1)/(bx2-ax2),(by1-ay1)/(by2-ay2)
	local offsetx,offsety=ax1-(ax2*scalex),ay1-(ay2*scaley)

	return (mx1-offsetx)/scalex, (my1-offsety)/scaley
end

-- got left,top,width,height of map2 if we know points a and b on maps 1 and 2, and map1's bounds.
local function recalc_bounds(ax1,ay1,ax2,ay2,bx1,by1,bx2,by2, left1,top1,width1,height1)
	local scalex,scaley=(bx1-ax1)/(bx2-ax2),(by1-ay1)/(by2-ay2)
	local offsetx,offsety=ax1-(ax2*scalex),ay1-(ay2*scaley)

	local left2=left1-offsetx*width1
	local top2=top1-offsety*height1
	local width2=width1*scalex
	local height2=height1*scaley
	return left2,top2,width2,height2
end
--print(recalc_bounds(0.5544,0.5036, 0.4372,0.0992, 0.6030,0.6002, 0.4449,0.1146, 4235,11847,5874,3916))
--                                            coords on 694  coords on 634  coords on 694  coords on 634  left,top,width,height of 634 
--local left,top,width,height = recalc_bounds(0.5771,0.4299, 0.5097,0.5325, 0.5307,0.4674, 0.3284,0.6791, 5033.33,5177.08,5802.05,3868.75) --  == left,top,width,height of 694




function FIXMAPZOOM()
	local MapCanvasScrollControllerMixin = {}

	function MapCanvasScrollControllerMixin:CreateZoomLevels()
		local layers = C_Map.GetMapArtLayers(self.mapID);
		local widthScale = self:GetWidth() / layers[1].layerWidth;
		local heightScale = self:GetHeight() / layers[1].layerHeight;
		self.baseScale = math.min(widthScale, heightScale);

		local currentScale = 0;
		local MIN_SCALE_DELTA = 0.01;  -- zoomLevels must have increasing scales
		self.zoomLevels = { };
		for layerIndex, layerInfo in ipairs(layers) do
			local zoomDeltaPerStep, numZoomLevels;

			layerInfo.maxScale = layerInfo.maxScale * 2000
			layerInfo.additionalZoomSteps = layerInfo.additionalZoomSteps + 10

			local zoomDelta = layerInfo.maxScale / layerInfo.minScale;
			if zoomDelta > 0 then
				-- make multiple zoom levels
				numZoomLevels = 2 + layerInfo.additionalZoomSteps;
				zoomDeltaPerStep = zoomDelta ^ ( 1 / (numZoomLevels - 1) );  --sinus
			else
				numZoomLevels = 1;
				zoomDeltaPerStep = 1;
			end

			for zoomLevelIndex = 0, numZoomLevels - 1 do
				currentScale = math.max(layerInfo.minScale * zoomDeltaPerStep^zoomLevelIndex, currentScale + MIN_SCALE_DELTA);  --sinus
				table.insert(self.zoomLevels, { scale = currentScale * self.baseScale, layerIndex = layerIndex })
			end
		end
	end

	WorldMapFrame:GetCanvasContainer().CreateZoomLevels = MapCanvasScrollControllerMixin.CreateZoomLevels

	WorldMapFrame:GetCanvasContainer():CreateZoomLevels()
end

--WorldMapFrame:GetCanvasContainer():SetMouseWheelZoomMode(MAP_CANVAS_MOUSE_WHEEL_ZOOM_BEHAVIOR_SMOOTH)

local function ZGV_ShowMapButtons()
	if not WorldMapFrame then return end
	if ZGV.MapButtonFrame then return end

	--if not ZGV.DEV then return end  --devwall

	local mapbuttonsize=20
	local mapbuttonradius=mapbuttonsize/2

	ZGV.db.profile.mapbuttonframe_offset = ZGV.db.profile.mapbuttonframe_offset or {660,7}
	ZGV.MapButtonFrame = ZGV.ChainCall(ZGV.CreateFrameWithBG("FRAME","ZygorWorldMapMenu",WorldMapFrame.BorderFrame))
		:SetPoint("CENTER",WorldMapFrame.BorderFrame,"BOTTOMLEFT",unpack(ZGV.db.profile.mapbuttonframe_offset))
		:SetSize(50,50)
		:SetBackdrop({bgFile="Interface\\Minimap\\MiniMap-TrackingBorder"})--,tile=true, tileSize=50})
		:SetFrameLevel(610)
		:SetScript("OnUpdate",function(self)
			if (ZGV.MapButton:IsDragging()) then  -- yes, it's the inside button that's dragging the parent.
				local parent = self:GetParent()
				local scale = self:GetEffectiveScale()
				local mx,my = GetCursorPosition()
				mx=mx/scale my=my/scale
				local px,py = parent:GetRect()
				self:ClearAllPoints()
				local dx,dy=min(max(mx-px+10,mapbuttonradius),parent:GetWidth()+mapbuttonradius),min(max(my-py-10,-mapbuttonradius),parent:GetHeight()-mapbuttonradius)
				self:SetPoint("CENTER",parent,"BOTTOMLEFT",dx,dy)
				ZGV.db.profile.mapbuttonframe_offset={dx,dy}
			end
		end)
		:Show()
	.__END

	ZGV.MapButton = ZGV.ChainCall(ZGV.CreateFrameWithBG("Button", "ZygorPoiMapButton" , ZGV.MapButtonFrame))
		:SetSize(mapbuttonsize,mapbuttonsize)
		:SetPoint("TOPLEFT", ZGV.MapButtonFrame, "TOPLEFT", 5, -5)
		--:SetBackdrop({bgFile=ZGV.SKINSDIR.."zglogo-back"})
		:SetNormalTexture(ZGV.SKINSDIR.."zglogo")
		:SetFrameLevel(611)
		:SetScript("OnClick", function() ZGV:ShowMapMenu() end)
		:SetScript("OnDragStart", function(self) self:GetParent():SetMovable(true) self:GetParent():StartMoving() end)  -- yes, this frame's drag initiates its parent's drag.
		:SetScript("OnDragStop", function(self) self:GetParent():StopMovingOrSizing() end)
		:RegisterForDrag("LeftButton")
		:Show()
	.__END
	ZGV.MapButton:GetNormalTexture():SetTexCoord(0,0,0,1/4 , 1,0,1,1/4)
end

local POI_TYPES = {
	[1] = {keyword="rare",display="Rares"},
	[2] = {keyword="treasure",display="Treasures"},
	}

function ZGV:ShowMapMenu()
	local L=ZGV.L
	local self=ZGV.MapButtonFrame 
	if not self.menu then self.menu = CreateFrame("FRAME",self:GetName().."Menu",self,"UIDropDownForkTemplate") end
	UIDropDownFork_SetAnchor(self.menu, 0, 0, "BOTTOMLEFT", self, "BOTTOMRIGHT")
	local menu = {}

	if ZGV.db.profile.poienabled then 
		tinsert(menu,{
				text = L['menu_map_poidisable'],
				tooltipTitle = L['menu_map_poidisable'],
				tooltipText = L['menu_map_poidisable_desc'],
				tooltipOnButton=1,
				func = function() ZGV:SetOption("Maps","poienabled off") ZGV.Poi:ChangeState(false) end,
				notCheckable=0,
			})
		local poiTypeList = {}
		for i=1,#POI_TYPES do
			local keyword,display = POI_TYPES[i].keyword,POI_TYPES[i].display
			tinsert(poiTypeList,
					{ text = display,
					keepShownOnClick=true, 
					checked = function() return not ZGV.db.profile.hideguide[keyword] end, 
					func = function() 
						if ZGV.db.profile.hideguide[keyword] then
							ZGV.db.profile.hideguide[keyword] = nil
						else
							ZGV.db.profile.hideguide[keyword] = true
						end
						ZGV.Poi:ChangeState(true) 
						UIDropDownFork_Refresh(self.menu) 
					end }
			)
		end

		tinsert(menu,{
				text = L['menu_map_poishow'],
				tooltipTitle = L['menu_map_poishow'],
				tooltipText = L['menu_map_poishow_desc'],
				hasArrow = true,
				menuList = poiTypeList,
				notCheckable=1,
			})


		tinsert(menu,{
				text = L['menu_map_poitype'],
				tooltipTitle = L['menu_map_poitype'],
				tooltipText = L['menu_map_poitype_desc'],
				hasArrow = true,
				menuList = {
					{ text = L['menu_map_poitype_quick'], 
					keepShownOnClick=true, 
					checked = function() return (ZGV.db.profile.poitype==1) end, 
					func = function() 
						ZGV.db.profile.poitype=1 
						ZGV.Poi:ChangeState(true) 
						UIDropDownFork_Refresh(self.menu) 
					end },
					{ text = L['menu_map_poitype_complete'], 
					keepShownOnClick=true, 
					checked = function() return (ZGV.db.profile.poitype==2) end, 
					func = function() 
						ZGV.db.profile.poitype=2 
						ZGV.Poi:ChangeState(true) 
						UIDropDownFork_Refresh(self.menu) 
					end },
				},
				notCheckable=1,
			})
		tinsert(menu,{
				text = L['menu_map_poioptions'],
				tooltipTitle = L['menu_map_poioptions'],
				tooltipText = L['menu_map_poioptions_desc'],
				tooltipOnButton=1,
				func = function() ZGV:OpenOptions("maps") end,
				notCheckable=0,
			})
	else
		tinsert(menu,{
				text = L['menu_map_poienabled'],
				tooltipTitle = L['menu_map_poienabled'],
				tooltipText = L['menu_map_poienabled_desc'],
				tooltipOnButton=1,
				func = function() ZGV:SetOption("Maps","poienabled on") ZGV.Poi:ChangeState(true) end,
				notCheckable=0,
			})
		tinsert(menu,{
				text = L['menu_map_poioptions'],
				tooltipTitle = L['menu_map_poioptions'],
				tooltipText = L['menu_map_poioptions_desc'],
				tooltipOnButton=1,
				func = function() ZGV:OpenOptions("maps") end,
				notCheckable=0,
			})
	end

	tinsert(menu,
			{ text = "Show world quest planner",
			checked = function() return ZGV.db.profile.worldquestenable end, 
			func = function() 
				ZGV.db.profile.worldquestenable = not ZGV.db.profile.worldquestenable
				if ZGV.db.profile.worldquestenable then
					ZGV.WorldQuests.DisplayFrame:Show()
				else
					ZGV.WorldQuests.DisplayFrame:Hide()
				end
				ZGV.WorldQuests.needToUpdate = true
				ZGV.WorldQuests.useCache = false
			end }
	)

	EasyFork(menu,self.menu,nil,0,0,"MENU",false)
	UIDropDownFork_SetWidth(self.menu, 300)
end

tinsert(ZGV.startups,{"POI map icon",function()
	ZGV_ShowMapButtons()
end})

if not ZGV.QuestBakerRunning then
	FixHBD() -- fix what HBD is breaking
	GetMAPDATAFromHBD() -- grab data based on translation functions
	GetMAPDATAFromGWP() -- fill missing data using GetWorldPosFromMapPos calculations
	MapCoords.TranslateVirtualContinents()
	FixMAPDATA()
end