--[[
Name: LibTaxi-1.0
Revision: $Rev: 1 $
Author(s): sinus (sinus@sinpi.net)
Description: A library recording all player's currently known/unknown taxi routes.
Dependencies: None
License: Free for non-commercial use, except for Zygor Guides.
]]

local MAJOR_VERSION = "LibTaxi-1.0"
local MINOR_VERSION = tonumber(("$Revision: 1 $"):match("%d+"))

local addonname,addon = ...
-- #AUTODOC_NAMESPACE prototype

local GAME_LOCALE = GetLocale()

-- GLOBAL Spoo
local ZGV,LibRover

do
	local LIB_MAJOR, LIB_MINOR = "LibTaxi-1.0", 1

	local Lib = LibStub:NewLibrary(LIB_MAJOR, LIB_MINOR)
	if not Lib then return end

	addon.Lib = Lib

	Lib.master = { }
	Lib.saved_tables = { }

	Lib.IsClassic = WOW_PROJECT_ID == WOW_PROJECT_CLASSIC
	Lib.IsClassicTBC = WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC
	Lib.IsClassicWOTLK = WOW_PROJECT_ID == WOW_PROJECT_WRATH_CLASSIC
	Lib.IsRetail = WOW_PROJECT_ID == WOW_PROJECT_MAINLINE


	local ZONE_ARGUS_KROKUUN = 830
	local ZONE_ARGUS_MACAREE = 882
	local ZONE_ARGUS_ANTORAN = 885
	local ZONE_ARGUS = 994
	local FACTION_SHATARISKYGUARD = 1031
	
	--Lib.TaxiNames_Local = nil
	--Lib.TaxiNames_English = nil

	-- Initialize localization. All taxis are stored as ENGLISH - lookups need pre-translation.
		if Lib.TaxiNames_Local then
			for en,lo in pairs(Lib.TaxiNames_Local) do if lo==1 then Lib.TaxiNames_Local[en]=en end end

			Lib.TaxiNames_English = {}
			for en,lo in pairs(Lib.TaxiNames_Local) do
				Lib.TaxiNames_English[lo]=en
			end

			local mt = { __index = function(t,k)  local v=rawget(t,k)  if not v then print("|cffff4400Taxi |cffff8800"..k.."|r not translated to "..GetLocale()..", please report this to Zygor") return k elseif v==true then return k else return v end  end }
			setmetatable(Lib.TaxiNames_Local,mt)
			setmetatable(Lib.TaxiNames_English,mt)
		else
			local loc_stub = {}
			setmetatable(loc_stub,{ __index = function(t,k)  return k  end } )
			Lib.TaxiNames_Local = loc_stub
			Lib.TaxiNames_English = loc_stub
		end


	local minimap_exceptions = {
		["Trade District"] = "Stormwind",
		["The Great Forge"] = "Ironforge",
		["Terrace of Light"] = "Shattrath City",
		["The Stair of Destiny"] = "Hellfire Peninsula, The Dark Portal",
		["Valley of Strength"] = "Orgrimmar"
	}

	local ERR_NEWTAXIPATH=_G.ERR_NEWTAXIPATH


	local function IterateCZNN(T)
		for c,cont in pairs(T) do
			for z,zone in pairs(cont) do
				for n,node in pairs(zone) do
					coroutine.yield(c,z,n,node)
				end
			end
		end
	end

	local function is_enemy(f1,f2)
		return (f1=="A" and f2=="H") or (f1=="H" and f2=="A")
	end
	Lib.is_enemy=is_enemy


	-- two taxi nodes are switching during daily resets
	-- taxi map automatically refreshes knowledge when it is open, but we can also detect them by checking nodes on given map
	local antoran_rotating_nodes = {
		[1993] = true, -- The Veiled Den, Antoran Wastes
		[1992] = true, -- Light's Purchase, Antoran Wastes
	}
	function Lib:UpdateAntoranTaxis()
		-- clear 
		for nodeID in pairs(antoran_rotating_nodes) do
			Lib.master[nodeID]=false
		end
		
		local nodes = C_TaxiMap.GetTaxiNodesForMap(ZONE_ARGUS_ANTORAN)
		-- set
		for _,node in pairs(nodes) do
			if antoran_rotating_nodes[node.nodeID] then
				Lib.master[node.nodeID]=true
			end
		end
	end

	function Lib:GetMapContinent(mapID)
		local cont = ZGV.GetMapContinent(mapID)
		if cont==ZONE_ARGUS_KROKUUN or cont==ZONE_ARGUS_MACAREE or cont==ZONE_ARGUS_ANTORAN then cont=ZONE_ARGUS end  -- Argus zones need to have a common continent (not so much for ants!).
		local cont_scan = cont
		if cont==113 then cont_scan=988 end -- wotlk classic taxis are not findable via regular contient id
		return cont,cont_scan
	end		

	function Lib:GetCurrentMapContinent()
		return Lib:GetMapContinent(C_Map.GetBestMapForUnit("player"))
	end

	function Lib:GetTaxiTripTime(node1,node2)
		local node1c,node2c
		if Lib.IsClassic then
			node1c=Lib.fc_by_tag[node1]
			node2c=Lib.fc_by_tag[node2]
		else
			node1c=Lib.fc_by_nodeID[node1]
			node2c=Lib.fc_by_nodeID[node2]
		end
		if not node1c or not node2c then return false,false,"nodes missing" end
		local time = node1c.neighbors and node1c.neighbors[node2]
		if time and time>0 then return time,true end

		local node1n, node2n
		if Lib.IsClassic then
			node1n=Lib:FindTaxiByTag(Lib:GetCurrentMapContinent(),node1)
			node2n=Lib:FindTaxiByTag(Lib:GetCurrentMapContinent(),node2)
		else
			node1n=Lib:FindTaxiByNodeID(node1)
			node2n=Lib:FindTaxiByNodeID(node2)
		end
		local dist = ZGV.MapCoords.Mdist(node1n.m,node1n.x,node1n.y,node2n.m,node2n.x,node2n.y)
		local est = dist * 1.2 / (7*4.5)
		return est,false
	end


	local old_ontaxi
	function Lib.OnEvent(this, event, arg1,arg2)
		if event == "ADDON_LOADED" and arg1==addonname and not Lib.loaded then
			Lib.loaded=true
			Lib.UpdateAntoranTaxis(this)
		elseif event == "TAXIMAP_OPENED" then
			Lib:ScanTaxiMap()
			if ZGV then ZGV:ShowWaypoints() end -- Force arrow to re-check itself -- Jeremiah
			if ZGV and ZGV.db and ZGV.db.profile.debug then ZGV:Debug("do |cffffff00/run ZGV.LibTaxi:DumpNeighborFlights()|r now to save these connections.") end
			Lib:SetupTaxiTooltips()
		elseif event == "UI_INFO_MESSAGE" then
			if arg2==ERR_NEWTAXIPATH then
				Lib:LearnCurrentTaxi()
				if ZGV and ZGV.LibRover then ZGV.LibRover:UpdateNow("quiet") end -- Try to force update of arrow ~~ Jeremiah
			end
		elseif event == "UI_ERROR_MESSAGE" and arg2==ERR_TAXINOPATHS then
			local node = Lib:LearnCurrentTaxi()
			Lib:MarkNeightboursUnknown(node)
			LibRover:UpdateNow()
		
		--elseif event == "UPDATE_FACTION" then --Faction update is not needed anymore.
			--Lib:MarkKnownByLevels() --Only needs to be ran once after the faction's information has been made available at startup
			--Lib.frame:UnregisterEvent("UPDATE_FACTION")
		elseif event=="UNIT_FLAGS" and arg1=="player" and ZGV and ZGV.DEV and LibRover.ready then
			local ontaxi = UnitOnTaxi("player")
			if ontaxi == old_ontaxi then return end
			old_ontaxi=ontaxi
			local taxis = LibRover.TaxiWhistlePredictor and LibRover.TaxiWhistlePredictor:FindNearestTaxis()
			if ontaxi then
				if Lib.LastTaxi and (not taxis or not taxis[1] or taxis[1][2]>=50) then 
					local lastnode = Lib.LastTaxi.route and Lib.LastTaxi.route[1].nodeID
					if lastnode then
						taxis={{Lib:FindTaxiByNodeID(lastnode),1}} 
					end
				end
				if taxis and taxis[1] and taxis[1][2]<50 then
					Lib.traveltime_dep=taxis[1][1]
					Lib.traveltime_time=GetTime()
					ZGV:Print(("DEV: Departed from |cff00ff00%s|r to |cff00ff00%s|r, counting taxi trip time."):format(Lib.traveltime_dep.name,Lib.LastTaxi and Lib.LastTaxi.name or "?"))
				else
					ZGV:Print("DEV: No idea where we departed from, but counting taxi trip time.")
					Lib.traveltime_time=GetTime()
				end
			else
				if ZGV.DEV or ZGV.db.profile.flash_on_taxi_arrival then FlashClientIcon() end
				if not Lib.traveltime_time then return end
				local triptime = ceil(GetTime()-Lib.traveltime_time)
				if Lib.LastTaxi and (not taxis or not taxis[1] or taxis[1][2]>=50) then taxis={{Lib.LastTaxi.node,1}} end
				if taxis and taxis[1] and taxis[1][2]<50 then
					if not Lib.traveltime_dep then ZGV:Print ("DEV: Still no idea where we departed from, but it took "..triptime.." s.") return end
					local node_dep,node_arr = Lib.traveltime_dep,taxis[1][1]

					local fc_array = Lib.IsClassic and Lib.fc_by_tag[Lib:GetCurrentMapContinent()] or Lib.fc_by_nodeID
					local dep_ident = Lib.IsClassic and node_dep.taxitag or node_dep.taxinodeID
					local arr_ident = Lib.IsClassic and node_arr.taxitag or node_arr.taxinodeID

					if not fc_array[dep_ident] or not fc_array[arr_ident] then ZGV:Print("Unknown departure or arrival point! Update taxi data!") return end

					local s = ("DEV: Travel Time from |cff00ff00%s|r to |cff00ff00%s|r = |cffffff00%d|r seconds, "):format(Lib.traveltime_dep.name,taxis[1][1].name,triptime)

					if not fc_array[dep_ident].neighbors or not fc_array[dep_ident].neighbors[arr_ident] then ZGV:Print(s.."but that's not a known direct route.") return end

					local oldtime,precise = Lib:GetTaxiTripTime(dep_ident,arr_ident)

					fc_array[dep_ident].neighbors[arr_ident]=triptime
					ZGV.db.global.taxitimes = ZGV.db.global.taxitimes or {}
					ZGV.db.global.taxitimes[dep_ident.."_"..arr_ident]=triptime
					local reversed

					-- assume reverse route
					if fc_array[arr_ident].neighbors[dep_ident]==0 then
						reversed=true
						fc_array[arr_ident].neighbors[dep_ident]=triptime
						ZGV.db.global.taxitimes[arr_ident.."_"..dep_ident]=triptime
					end

					if not precise then s = s .. ("estimate was |cffff8800%d|r s. "):format(oldtime)
					elseif abs(oldtime-triptime)>3 then s = s .. ("was |cffff8800%d|r s. "):format(oldtime)
					else s = s .. "but we knew that." end
					if reversed then s = s .. "Reverse trip added, too." end
					ZGV:Print(s)
				else
					ZGV:Print("No idea where we landed, but it took "..triptime)
				end
			end
		end
	end

	Lib.errors = {}

	local initialized_continents={}
	function Lib:Startup(newsave)
		ZGV = addon
		LibRover = ZGV.LibRover

		Lib.frame = CreateFrame("Frame", "LibTaxiFrame")
		Lib.frame:RegisterEvent("TAXIMAP_OPENED")
		Lib.frame:RegisterEvent("UI_INFO_MESSAGE")
		Lib.frame:RegisterEvent("UI_ERROR_MESSAGE")
		Lib.frame:RegisterEvent("ADDON_LOADED")
		--Lib.frame:RegisterEvent("UPDATE_FACTION")
		Lib.frame:RegisterEvent("UNIT_FLAGS")
		Lib.frame:SetScript("OnEvent", Lib.OnEvent)

		Lib.MapIDsByName = LibRover.data.MapIDsByName or ZGV.MapIDsByName

		Lib.master=newsave

		Lib:InitializeTaxis()

		setmetatable(newsave,Lib.known_by_continent_mt)
		table.insert(Lib.saved_tables,newsave)

		Lib:CacheTaxiPoints()
		Lib:MergeData()
		Lib:TranslateData()
		Lib:MarkKnownTaxis()

		hooksecurefunc(WorldMapFrame,"OnMapChanged",function() Lib:UpdateAntoranTaxis() end)

		Lib:ImportTaxiTimesFromSV()

		self:Debug("Startup complete.")
	end

	local function warn(message)
		local _, ret = pcall(error, message, 3)
		geterrorhandler()(ret)
	end

	-- return three-way node known status.
	-- true = known, obviously.  false = there's a marker indicating the continent is known, but the node is not.  nil = entirely unknown if known :P
	Lib.known_by_continent_mt = { __index=function(t,i)
			if rawget(t,i) then
				return true
			else
				local c = Lib.path2cont[i]
				if rawget(t,c) then
					return false
				else
					return nil
				end
			end
		end
	}

	Lib.path2cont = {}

	Lib.taxipoints = Lib.taxipoints or addon.LibTaxiData and addon.LibTaxiData.taxipoints

	Lib.flightcost = Lib.flightcost or addon.LibTaxiData and addon.LibTaxiData.flightcost

	addon.LibTaxiData = nil

	local enemyfac = "DON'T PRUNE" or (UnitFactionGroup("player")=="Alliance") and "H" or "A"-- TODO: REMOVE
	function Lib:InitializeTaxis()
		for c,cont in pairs(Lib.taxipoints) do
			for z,zone in pairs(cont) do
				z=LibRover:GetMapByNameFloor(z)
				local n=1
				while n<=#zone do
					local node=zone[n]
					if not node then break end
					if node.faction~=enemyfac then
						Lib.path2cont[node.name] = c
						node.m = z
						node.c = Lib:GetMapContinent(z)
						node.localname = Lib.translation and Lib.translation[node.taxitag]
						--node.level = LibRover and LibRover.data.ZoneContLev[z].level
						n=n+1
					else
						tremove(zone,n)
					end
				end
			end
		end
	end

	-- Get faction info because Andorhal has separate Horde and Alliance flight points with the same name. ~~ Jeremiah
	local playerF
	local factionEnglish = UnitFactionGroup("player")
	if factionEnglish == "Alliance" then
		playerF = "A"
	elseif factionEnglish == "Horde" then
		playerF = "H"
	end

	local aliases={["Stormwind City"]="Stormwind", ["Theramore Isle"]="Theramore"}
	local findtaxi_cache={}
	function Lib:FindTaxi(name,trim)
		if findtaxi_cache[name] then return findtaxi_cache[name] end
	
		if trim and name then name = name:gsub(", .*","") end  -- trim zone names (in european languages, at least)
		name = aliases[name] or name
		for c,z,n,node in ZGV.CoroPairs(Lib.taxipoints,IterateCZNN) do
			if not is_enemy(playerF,node.faction) and ( 
				node.name==name  -- raw name, pretty rare
				or (not node.namestrict and node.name==(type(name)=="string" and name:gsub(", .*","")))  -- node name with zone appended
			)
			then
				findtaxi_cache[name] = node
				return node
			end
		end
	end

	Lib.fc_by_tag = {}
	Lib.fcnames_by_tag = {}
	Lib.fc_by_nodeID = {}
	Lib.fcnames_by_nodeID = {}
	-- cache tag->fcost, tag->fname, nodeID->fcost and nodeID->fname mappings
	function Lib:CacheTaxiTags()
		self:Debug("Caching taxi tags... playerF=%s",playerF)  local t=debugprofilestop()
		-- order flightcosts by tag for quick retrieval
		for cont,conttaxis in pairs(Lib.flightcost) do
			Lib.fc_by_tag[cont] = {}
			Lib.fcnames_by_tag[cont] = {}
			for ti,taxi in pairs(conttaxis) do
				if taxi.nodeID then
					if not is_enemy(taxi.faction,playerF) then
						Lib.fc_by_nodeID[taxi.nodeID] = taxi
					end
					Lib.fcnames_by_nodeID[taxi.nodeID] = taxi.name
				end
				if taxi.tag then
					if not is_enemy(taxi.faction,playerF) then
						Lib.fc_by_tag[cont][taxi.tag] = taxi
					end
					Lib.fcnames_by_tag[cont][taxi.tag] = taxi.name
				end
			end
		end

		self:Debug("Caching taxi tags done, took %.3fms",debugprofilestop()-t)
	end

	Lib.fnode_by_tag = {}
	Lib.fnode_by_nodeID = {}
	-- cache tag->node and nodeID->node mappings
	function Lib:CacheTaxiPoints()
		for c,z,n,node in ZGV.CoroPairs(Lib.taxipoints,IterateCZNN) do
			Lib.fnode_by_tag[c] = Lib.fnode_by_tag[c] or {}
			if not is_enemy(playerF,node.faction) then
				if node.taxitag then Lib.fnode_by_tag[c][node.taxitag]=node end
				if node.taxinodeID then Lib.fnode_by_nodeID[node.taxinodeID]=node end
				node._zone = z
			end
		end
	end
	
	function Lib:FindTaxiByTag(cont,tag)
		if not Lib.fnode_by_tag[cont] then Lib:CacheTaxiPoints() end
		Lib.fnode_by_tag[cont] = Lib.fnode_by_tag[cont] or {}
		return Lib.fnode_by_tag[cont][tag]
	end

	function Lib:FindTaxiByNodeID(nodeID)
		nodeID=tonumber(nodeID)
		if not Lib.fnode_by_nodeID[nodeID] then Lib:CacheTaxiPoints() end
		return Lib.fnode_by_nodeID[nodeID]
	end

	function Lib:GetTaxiDataBySlot()
		local _,cont = Lib:GetCurrentMapContinent()

		local taxidata = C_TaxiMap.GetAllTaxiNodes(cont)
		local taxidata_by_slot = {}
		for i,taxi in ipairs(taxidata) do taxidata_by_slot[taxi.slotIndex]=taxi end
		
		if Lib.IsClassicTBC or Lib.IsClassicWOTLK and cont==1945 then
			-- two faction specific nodes in SMV are not reported in GetAllTaxiNodes
			-- we need to add them by hand, filling empty slots in values, since
			-- taxidata_by_slot needs to be continous
			local unused_slot
			local aldor = {name="Altar of Sha'tar",nodeID=140,position={x=0,y=0}}
			local scryers = {name="Sanctum of the Stars",nodeID=159,position={x=0,y=0}}
			for i,v in ipairs(taxidata_by_slot) do unused_slot = i end
			aldor.slotIndex = unused_slot+1
			taxidata_by_slot[aldor.slotIndex] = aldor
			table.insert(taxidata,aldor)

			for i,v in ipairs(taxidata_by_slot) do unused_slot = i end
			scryers.slotIndex = unused_slot+1
			taxidata_by_slot[scryers.slotIndex] = scryers
			table.insert(taxidata,scryers)
		end

		return taxidata,taxidata_by_slot
	end

	if Lib.IsClassic then
		function Lib:GetTaxiDataBySlot()
			local continent = Lib:GetCurrentMapContinent()

			local taxidata = {}
			for i=1,NumTaxiNodes() do
				local x,y = TaxiNodePosition(i)
				local taxitag = ("%03d:%03d"):format(x*1000,y*1000)
				local type = TaxiNodeGetType(i)
				taxidata[i] = {name = TaxiNodeName(i), slotIndex = i, state = (type=="CURRENT" and 0) or (type=="REACHABLE" and 1) or 2, position={x=x,y=y}, taxitag=taxitag}
			end		
			local taxidata_by_slot = {}
			for i,taxi in ipairs(taxidata) do taxidata_by_slot[taxi.slotIndex]=taxi end
			return taxidata,taxidata_by_slot
		end
	end

	function Lib:ClearAllKnowledge(status)
		for c,cont in pairs(Lib.taxipoints) do
			Lib:ClearContinentKnowledge(c,"all",status)
		end
		if status~=true then table.wipe(Lib.master) end
	end

	-- return: is_known, is_suspicious
	function Lib:IsContinentKnown(cont)
		if not cont then cont=Lib:GetCurrentMapContinent() end
		if self.master["c_"..cont]~=nil then
			return true,false -- return whatever we know
		else
			return false,true
		end
	end

	function Lib:ClearContinentKnowledge(cont,operator,status)
		if not cont then cont=Lib:GetCurrentMapContinent() end

		for z,zone in pairs(Lib.taxipoints[cont]) do
			for n,node in ipairs(zone) do
				if node.factionid~=FACTION_SHATARISKYGUARD
				and (node.taxioperator==operator or operator=="all")
				then
					node.known=status
					if node.taxinodeID then Lib.master[node.taxinodeID]=status
					elseif node.taxitag then Lib.master[node.taxitag]=status
					end
				end
			end

			--[[
				local zoneid = LibRover.data.MapIDsByName[z]
				if type(zoneid)=="table" then zoneid=zoneid[1] end  -- might cause trouble on phased maps :/
				zoneid=ZGV.Pointer:SanitizePhase(zoneid)
				if LibRover.MapLevels[zoneid]<UnitLevel("player") then -- only set contin that is our level to false
					for n,node in ipairs(zone) do
						if node.factionid~=1031 then
							if node.known==true then node.known=known end
							if Lib.master[node.name]==true then Lib.master[node.name]=known end
						end
					end
				end
			--]]  -- what was that supposed to do?  mark correct level nodes as unknown? O_o  ~sinus
		end
		Lib.master["c_"..cont]=status
	end

	function Lib:MarkContinentSeen(cont,operator)
		self:Debug("Marking all unseen nodes on continent |cffffffff%d|r as |cff000000unknown|r.",cont)
		if not self.taxipoints[cont] then return end
		for z,zone in pairs(self.taxipoints[cont]) do  for ni,node in ipairs(zone) do
				if node.operator==operator and node.known==nil then self:LearnTaxi(node,false) end
		end  end
		if not operator then
			Lib.master["c_"..cont]=true
		end
	end


	function Lib:MarkKnownTaxis() -- Fill .known fields using saved data.
		local level = UnitLevel("player")
		for c,cont in pairs(Lib.taxipoints) do
			for z,zone in pairs(cont) do
				local zoneid = self.MapIDsByName[z]
				if type(zoneid)=="table" then zoneid=zoneid[1] end  -- might cause trouble on phased maps :/
				zoneid=ZGV and ZGV.Pointer:SanitizePhase(zoneid)
				
				local function knowNode(node,known)
					node.known=known
					if node.taxinodeID then Lib.master[node.taxinodeID]=known end
				end
				
				for n,node in ipairs(zone) do
					if node.taxioperator and node.taxioperator=="blackcat" then  --All blackcats are usable by an alliance character
						self:LearnTaxi(node,true)
					elseif Lib.master[node.taxinodeID or node.taxitag or node.name]~=nil then -- we know it or we know we don't, simplest case
						node.known=Lib.master[node.taxinodeID or node.taxitag or node.name]
						if type(node.known)=="string" then node.known=not not node.known end  -- master has tags now, so convert back to boolean
					elseif false and not Lib.master[c] then  -- we didn't scan this continent yet, so let's do some guessing
						-- DON'T GUESS! LibRover will "guess" if it wants to. Leave it as nil (if it wasn't falsified by the continent being seen).

						--[[ if LibRover.data.ZoneContLev[zoneid].level<=level  -- zone is lower level than player, we should know all taxis by now
						  and LibRover.data.ZoneContLev[zoneid].level<85  -- except newer expansions - these are not learned by level
						  then
							if  (node.quest and not ZGV.completedQuests[node.quest]) -- we didn't do the quest
								or (node.factionid and select(3,GetFactionInfoByID(node.factionid))<node.factionstanding) -- we're not esteemed enough
								or (node.condition and not node.condition()) -- condition fail
								or (node.class and select(2,UnitClass("player"))~=node.class) -- we're the wrong class
							then
								node.known = false
							else
								node.known = true
							end
						end --]]

					end
				end
			end
		end
	end

	function Lib:MarkKnownByLevels() -- OLD, REFURBISHED!
		local level = UnitLevel("player")
		for c,cont in pairs(Lib.taxipoints) do  if not Lib.master[c] then
			for z,zone in pairs(cont) do
				local zoneid = self.MapIDsByName[z]
				if type(zoneid)=="table" then zoneid=zoneid[1] end  -- might cause trouble on phased maps :/
				zoneid=ZGV and ZGV.Pointer:SanitizePhase(zoneid)
				--[[if LibRover.MapLevels[zoneid]<=level  -- zone is lower level than player, we should know all taxis by now
				  and LibRover.MapLevels[zoneid]<85  -- Pandaria Zones are not learned by level
				  then
					for n,node in ipairs(zone) do
						if node.known==nil then node.known=true	end

						if  (node.quest and not ZGV.completedQuests[node.quest]) -- we didn't do the quest
							or (node.factionid and select(3,GetFactionInfoByID(node.factionid))<node.factionstanding) -- we're not esteemed enough
							or (node.condition and not node.condition()) -- condition fail
							or (node.class and select(2,UnitClass("player"))~=node.class) -- Class only! woo
						then
							node.known = false
						end

						if not node.known then Lib.master[node.name]=false end

						if Lib.master[node.name]==nil then Lib.master[node.name]=true end
					end
				else --]]
					for n,node in ipairs(zone) do
						if node.taxioperator and node.taxioperator=="blackcat" then node.known = true end --All blackcats are usable by an alliance character

						if node.available then
							self:LearnTaxi(node,node.available) --OVERWRITE. If we gave something special so don't worry about the others
						elseif node.achievemissing then
							-- If the player has the achievement, then the node is missing.
							node.missing = select(13,GetAchievementInfo(node.achievemissing)) -- 13 = whether this toon has the achievement.
						elseif Lib.master[node.taxinodeID or node.taxitag or node.name]==false then --if zone is overlevel and for some reason it is false, set it back to nil
							Lib.master[node.taxinodeID or node.taxitag or node.name]=nil
						elseif Lib.master[node.taxinodeID or node.taxitag or node.name]==true then -- we know a flightpath that is over our level
							node.known=true
						end
					end
				--end
			end
		end  end
	end

	function Lib:ResetKnowledge()
		Lib:ClearAllKnowledge()
		Lib:MarkKnownTaxis()
	end




	local hooked
	function Lib:Debug_HookButtons()
		if ZGV and ZGV.DEV then
			if not hooked then
				hooksecurefunc("TaxiNodeOnButtonEnter",function(button)
					local taxidata,taxidata_by_slot = self:GetTaxiDataBySlot()
					local slot=tonumber(button:GetID())
					local cont=Lib:GetCurrentMapContinent()
					local taxix,taxiy = TaxiNodePosition(slot)
					local nodeID = taxidata_by_slot[slot] and taxidata_by_slot[slot].nodeID
					local taxitag = ("%03d:%03d"):format(taxix*1000,taxiy*1000)
					local taxinode = nodeID and self:FindTaxiByNodeID(nodeID) or self:FindTaxiByTag(cont,taxitag)
					self:Debug(("Taxi %d = %03d:%03d id %d (%s, node #%s)"):format(slot or 0,taxix*1000 or 0,taxiy*1000 or 0,nodeID or 0,taxinode and taxinode.npc or "npc", taxinode and taxinode.num  or  LibRover.nodes.taxi and #LibRover.nodes.taxi>0 and "???"  or  "Travel-not-initialized"))
				end)
				hooked=true
			end

			local taxiparent
			if TaxiFrame:IsShown() then
				taxiparent = TaxiFrame
			elseif FlightMapFrame:IsShown() then
				taxiparent = FlightMapFrame
			end

			taxiparent.TaxiFrameButton = taxiparent.TaxiFrameButton or ZGV.ChainCall(CreateFrame("BUTTON","ZGVLibTaxiButton_in_"..taxiparent:GetName(),taxiparent,"UIPanelButtonTemplate"))
			:SetPoint("TOPRIGHT",taxiparent,"TOPRIGHT",0,-20)
			:SetSize(160,20)
			:SetText("[Z] Scan taxi routes")
			:SetScript("OnClick",function() Lib:DeepScanTaxiMap() end)
			:SetScript("OnEnter",function(self) ZGV.ChainCall(GameTooltip) :ClearAllPoints() :ClearLines() :SetOwner(self,"ANCHOR_BOTTOM") :AddLine("Scan connections from this point, update the connections database|nand display it for copy-pasting.",1,1,1) :AddLine("Hold SHIFT to dump ALL continents |cffff8800(may take time!)|r",1,1,1) :Show()  end)
			:SetScript("OnLeave",function() GameTooltip:Hide() end)
			:SetFrameLevel(100)
			--:RegisterForClicks("AnyUp")
			:Hide()
			.__END

			taxiparent.TaxiFrameButton2 = taxiparent.TaxiFrameButton2 or ZGV.ChainCall(CreateFrame("BUTTON","ZGVLibTaxiButton_in_"..taxiparent:GetName(),taxiparent,"UIPanelButtonTemplate"))
			:SetPoint("TOPRIGHT",taxiparent,"TOPRIGHT",0,-40)
			:SetSize(160,20)
			:SetText("[Z] View details")
			:SetScript("OnClick",function() Lib:DEV_ViewTaxiMapData() end)
			:SetFrameLevel(100)
			--:RegisterForClicks("AnyUp")
			:Hide()
			.__END
			if ZGV.db.profile.debug_display then
				taxiparent.TaxiFrameButton:Show()
				taxiparent.TaxiFrameButton2:Show()
			end
		end
	end

	-- Scan an open taxi map for (a) node positions, names and "known" status, (b) node connections.
	function Lib:ScanTaxiMap()
	
		if not TaxiFrame:IsShown() and not FlightMapFrame:IsShown() then self:Debug("Map not shown, unable to scan."); return end

		self:Debug_HookButtons()

		local contorg, cont = Lib:GetCurrentMapContinent()

		self:Debug("Scanning map for continent %d...",cont)

		local taxidata,current_operator

		if Lib.IsRetail then
			--- Blizzard structure: {name,nodeID,position,slotIndex,state}
			-- @field name string qq
			-- @field nodeID number ww
			-- @field position vector2D ee
			-- @field slotIndex number rr
			-- @field state number 1=available, 2=unavailable
			
			taxidata = C_TaxiMap.GetAllTaxiNodes(cont)

			-- switch to a specific operator
			for i,taxi in ipairs(taxidata) do
				if taxi.state==Enum.FlightPathState.Current then
					local taxinode = Lib:FindTaxiByNodeID(taxi.nodeID)
					if taxinode then
						current_operator=taxinode.taxioperator
					else
						self:Debug("Current taxi nodeID %d %s NOT found in continent %d data! Update please!",taxi.nodeID,taxi.name,cont)
					end
					break
				end
			end
		else
			taxidata,_ = Lib:GetTaxiDataBySlot()

			-- switch to a specific operator
			for i,taxi in ipairs(taxidata) do
				if taxi.state==Enum.FlightPathState.Current then
					local taxinode = Lib:FindTaxiByTag(cont,taxi.taxitag)
					if taxinode then
						current_operator=taxinode.taxioperator
					else
						self:Debug("Current taxi nodeID %d %s NOT found in continent %d data! Update please!",taxi.nodeID,taxi.name,cont)
					end
					break
				end
			end
		end

		self:Debug("We're on continent %d, and will be flying %s airlines.",cont,current_operator or "default")

		-- Need to clear only the current operator. We have a node now, and its operator, so clear the continent.
		if current_operator=="argusportal" then -- mark Argus portal nodes as NOT known when they're not visible on the map.
			self:ClearContinentKnowledge(cont,current_operator,false)
		end

		-- Normally, all nodes are on the map, just hidden and taxitype=="DISTANT". However, some don't appear until known, and thus need manual unknowing.
		if cont==619 then
			local taxi = Lib:FindTaxiByTag(8,"186:961")  if taxi then taxi.known=false end  -- Trueshot Lodge
			local taxi = Lib:FindTaxiByTag(8,"-34:830")  if taxi then taxi.known=false end  -- The Dreamgrove
		end


		local currenttaxi

		local new_discovered=0

		for i,taxi in ipairs(taxidata) do  repeat

			if taxi.state==Enum.FlightPathState.Current then currenttaxi=i end

			-- check the node itself

			local name = taxi.name
			name = name:gsub(", .*","")  -- trim zone names (in european languages, at least)

			-- EVIL BLIZZARD: "Temple of Karabor" at Draenor 766:315 is THE SAME as "Tranquil Court", but is DISTANT and has zero hops. Kill it and its kin.
			-- NOT ANYMORE. Distant points are now often zero-hopped. This caused MANY points to be skipped.
			--if GetNumRoutes(i)==0 and taxitype=="DISTANT" and TaxiNodeCost(i)==0 then  self:Debug("Taxi "..name.." gets skipped.")  break  end --continue
			
			local taxitag = ("%03d:%03d"):format(taxi.position.x*1000,taxi.position.y*1000)  -- get rid of this

			-- localize node, if that's even used anymore
			local taxinode
			if Lib.IsRetail or Lib.IsClassicTBC or Lib.IsClassicWOTLK then
				taxinode = Lib:FindTaxiByNodeID(taxi.nodeID)
			else
				taxinode = Lib:FindTaxiByTag(cont,taxi.taxitag)
			end
			local fcdata = Lib.fc_by_nodeID[taxi.nodeID] or (Lib.fc_by_tag[cont] and Lib.fc_by_tag[cont][taxitag])

			local tagstring
			if fcdata and fcdata.tag and fcdata.tag~=taxitag then tagstring=("old tag %s preserved, new tag %s ignored"):format(fcdata.tag,taxitag)
				else tagstring=("tag %s"):format(taxitag) end

			if taxinode then
				--self:Debug("found %s [%s]",taxi.name,taxitag)
				if taxinode.taxioperator == current_operator then
					local known = taxi.state ~= Enum.FlightPathState.Unreachable
					Lib:LearnTaxi(taxinode, known)
					self:Debug("%s taxi: %s [nodeID %d, %s]",known and "|cff88ff88Known|r" or "|cffff8888Unknown|r",name,taxi.nodeID,tagstring)
				end

				taxinode.localname = taxinode.localname or name
				--self:Debug("Taxi: "..taxi.taxitag.." "..taxi.name.." ".. taxitype)
			else
				self:Debug("|cffff8888NPC missing in continent %d data: %s [nodeID %d, %s]",cont,name,taxi.nodeID,tagstring)
				--tinsert(self.errors,("taxi missing in data: %s [%s] [%.5f,%.5f]"):format(name,taxitag,taxix,taxiy))
			end
			
			if not fcdata then
				fcdata = {}
				Lib.flightcost[cont]=Lib.flightcost[cont] or {}
				tinsert(Lib.flightcost[cont],fcdata)
				ZGV:Debug(("New taxi point discovered! %s (nodeID %d, %s)"):format(taxi.name,taxi.nodeID,tagstring))
				new_discovered=new_discovered+1
			end
			fcdata.name = fcdata.name or name
			fcdata.nodeID = fcdata.nodeID or taxi.nodeID
			fcdata.tag = fcdata.tag or taxitag

		until true  end

		if ZGV.Pointer.tmp_taxis_assumed then LibRover:UpdateNow() end

		if new_discovered>0 then ZGV:Debug("%d new nodes discovered. You may wish to Scan Taxi Map and update the data now.",new_discovered) end

		if ZGV.db.profile.taxi_print_unknowntimes then
			local taxis,taxislots = Lib:GetTaxiDataBySlot()
			for dest=1,NumTaxiNodes() do
				if TaxiIsDirectFlight(dest) then
					local srcSlot = TaxiGetNodeSlot(dest, 1, true);
					local dstSlot = TaxiGetNodeSlot(dest, 1, false);
					local time=Lib.fc_by_nodeID[taxislots[srcSlot].nodeID].neighbors[taxislots[dstSlot].nodeID]
					if not time or time==0 then
						print("|cffffdd00Missing direct time: "..TaxiNodeName(dstSlot))
						if IsControlKeyDown() and IsShiftKeyDown() then TakeTaxiNode(dstSlot) break end
					end
				end
			end
		end

		self:MarkContinentSeen(contorg,current_operator)

		self:MergeData()
		self:CacheTaxiTags()
		self:CacheTaxiPoints()

	end


	-- /run LibTaxi:DeepScanTaxiMap()
	-- /run LibTaxi:DumpFlightCosts()
	-- Called with Dump Taxi Connections button
	function Lib:DeepScanTaxiMap()  -- DEV FUNCTION
		if not TaxiFrame:IsShown() and not FlightMapFrame:IsShown() then self:Debug("Map not shown, unable to scan."); return end
		local cont = Lib:GetCurrentMapContinent()
		print("Continent is",cont)
		Lib.flightcost[cont] = Lib.flightcost[cont] or {}
		local fccont = Lib.flightcost[cont]

		-- check connections

		local connections=0

		self.fc_by_tag[cont] = self.fc_by_tag[cont] or {}
		self.fcnames_by_tag[cont] = self.fcnames_by_tag[cont] or {}

		local taxidata,taxidata_by_slot = self:GetTaxiDataBySlot()

		local reachable=1

		local listed={}
		local missingtimes=0

		for dest=1,NumTaxiNodes() do if TaxiNodeGetType(dest)=="REACHABLE" then
			reachable=reachable+1
			local startnode,endnode,starttag,endtag
			local x,y

			startnode=TaxiGetNodeSlot(dest,1,true)
			x,y = TaxiNodePosition(startnode)
			starttag = ("%03d:%03d"):format(x*1000,y*1000)

			local hops = ("%d hops to %s: "):format(GetNumRoutes(dest),TaxiNodeName(dest))

			for hop=1,GetNumRoutes(dest) do

				endnode=TaxiGetNodeSlot(dest,hop,false)
				x,y = TaxiNodePosition(endnode)
				endtag = ("%03d:%03d"):format(x*1000,y*1000)

				hops = hops .. (" (%d) %s,"):format(hop,TaxiNodeName(endnode))

				if starttag~=endtag then
					local new
					local startnodeID = taxidata_by_slot[startnode] and taxidata_by_slot[startnode].nodeID
					local fcstart = self.fc_by_nodeID[startnodeID] or self.fc_by_tag[cont][starttag]
					if not fcstart then
						fcstart={name=TaxiNodeName(startnode),tag=starttag,nodeID=startnodeID}
						tinsert(fccont,fcstart)
						-- put in cache, too
						self.fc_by_tag[cont][starttag]=fcstart
						if startnodeID then self.fc_by_nodeID[fcstart.nodeID]=fcstart end
						self.fcnames_by_tag[cont][starttag]=fcstart.name
						if startnodeID then self.fcnames_by_nodeID[fcstart.nodeID]=fcstart.name end
						hops = hops .. ("|cff00ff00<-NEW START|r ")
					end

					local endnodeID = taxidata_by_slot[endnode] and taxidata_by_slot[endnode].nodeID
					local fcend = self.fc_by_nodeID[endnodeID] or self.fc_by_tag[cont][endtag]
					if fcstart and fcend then
						if not fcend then
							fcend={name=TaxiNodeName(endnode),tag=endtag,nodeID=endnodeID}
							tinsert(Lib.flightcost[cont],fcend)
							-- put in cache, too
							self.fc_by_tag[cont][endtag]=fcend
							if endnodeID then self.fc_by_nodeID[fcend.nodeID]=fcend end
							self.fcnames_by_tag[cont][endtag]=fcend.name
							if endnodeID then self.fcnames_by_nodeID[fcend.nodeID]=fcend.name end
							hops = hops .. ("|cff00ff00<-NEW END|r ")
						end
						local start_ident = Lib.IsClassic and fcstart.tag or fcstart.nodeID
						local end_ident = Lib.IsClassic and fcend.tag or fcend.nodeID

						fcstart.neighbors = fcstart.neighbors or {}
						if not fcstart.neighbors[end_ident] then new=1 end
						fcstart.neighbors[end_ident] = fcstart.neighbors[end_ident] or 0

						fcend.neighbors = fcend.neighbors or {}
						if not fcend.neighbors[start_ident] then new=1 end
						fcend.neighbors[start_ident] = fcend.neighbors[start_ident] or 0
						if new then
							connections=connections+1
							hops = hops .. ("|cff00ff00<-NEW|r ")
						end

						if (fcstart.neighbors[end_ident]==0 or fcend.neighbors[start_ident]==0) and not listed[start_ident.."_"..end_ident] then
							listed[start_ident.."_"..end_ident]=true
							missingtimes = missingtimes + 1
							hops = hops .. ((" |cffff8800Missing time: |cffffff00%s|r to |cffffff00%s|r|r,"):format(fcstart.name,fcend.name))
						end
					else
						print("unknown connection",startnode,endnode)
					end
				end

				startnode=endnode
				starttag=endtag
			end

			print(hops)

		end end


		-- Missing hops have now been given the "0" time. Enough to get connections right.

		print(("=== %d nodes, %d reachable, %s new connections, %s missing times. ==="):format(NumTaxiNodes(),reachable,connections>0 and "|cff00ff00"..connections.."|r" or connections,missingtimes>0 and "|cffff0000"..missingtimes.."|r" or missingtimes))
		self:DEV_DumpFlightCosts()
	end


	function Lib:DEV_ViewTaxiMapData()  -- DEV FUNCTION (simple)
		if not TaxiFrame:IsShown() and not FlightMapFrame:IsShown() then self:Debug("Map not shown, unable to scan."); return end
		local cont = Lib:GetCurrentMapContinent()

		local ret = {}
		local rett = {}

		local taxidata,taxidata_by_slot = self:GetTaxiDataBySlot()
		
		for dest=1,NumTaxiNodes() do repeat
		
			local x,y = TaxiNodePosition(dest)
			local taxitag = ("%03d:%03d"):format(x*1000,y*1000)

			local taxitype=TaxiNodeGetType(dest)

			local s

			if not taxidata_by_slot[dest] then s = ("%d. %s (%s) - Sanity fault, not in taxidata!"):format(dest,TaxiNodeName(dest),taxitype) tinsert(ret,s) tinsert(rett,{"?"}) break end
			
			local taxi = Lib:FindTaxiByNodeID(taxidata_by_slot[dest].nodeID) or Lib:FindTaxiByTag(cont,taxitag)

			local texkit = taxidata_by_slot[dest].textureKitPrefix or ""

			local s = ("%2d. %s%s%s|r [ID |cffff8800%d|r, |cffffdd00%d|r hops, %s, %s)"):format(
				dest,
				    taxitype=="CURRENT" and "|cffbbff88"
				 or taxitype=="REACHABLE" and "|cff00ff00"
				 or taxitype=="DISTANT" and "|cff888888"
				 or "|cffff0000",
				TaxiNodeName(dest),
				    texkit:match("_Ferry") and "|r - |cff88ddffFERRY|r"
				    or (taxi and taxi.taxioperator=="seahorse" and "|r - |cff88ffddSEAHORSE|r")
				 or "",
				taxidata_by_slot[dest].nodeID,
				GetNumRoutes(dest),
				taxitype,
				taxi and (     (TaxiNodeCost(dest)==0 and taxitype=="DISTANT" and "|cff888888DISABLED|r")
					        or (taxi.known==true and "|cff00ff00KNOWN|r")
					        or (taxi.known==false and "|cffff8800UNKNOWN|r")
					        or "|cffff0000???|r")
				     or "|cffff0000NPC NOT FOUND|r"
				)

			tinsert(ret,s)
			tinsert(rett,taxi or {"?"})

		until true end
		-- Missing hops have now been given the "0" time. Enough to get connections right.

		if Spoo then
			local retz = {}
			for i,s in ipairs(ret) do retz[s]=rett[i] end
			Spoo(nil,nil,retz)
		else
			ZGV:ShowDump(table.concat(ret,"\n"),"Taxi data for continent "..cont)
		end
	end


	
	

	-- And now, the EVIL. Let's peek into a taxi before it flies.
	-- LibTaxi.LastTaxi becomes the node of the last taxi taken!

	local Saved_TakeTaxiNode = TakeTaxiNode
	_G.TakeTaxiNode = function(destIndex)
		pcall(function()
			local taxidata,taxidata_slots = Lib:GetTaxiDataBySlot()
			local data = taxidata_slots[destIndex]
			if data and (data.nodeID or data.taxitag) then
				Lib.LastTaxi = {fullname=data.name}
				if data.nodeID then
					Lib.LastTaxi.node = Lib:FindTaxiByNodeID(data.nodeID)
					ZGV:Debug("LibTaxi: TakeTaxiNode proxy, flying to %s (nodeID %d)",data.name,data.nodeID)
				else
					Lib.LastTaxi.node = Lib:FindTaxiByTag(Lib:GetCurrentMapContinent(),data.taxitag)
					ZGV:Debug("LibTaxi: TakeTaxiNode proxy, flying to %s (taxitag %d)",data.name,data.taxitag)
				end
				if Lib.LastTaxi.node then
					Lib.LastTaxi.name,Lib.LastTaxi.zone = Lib.LastTaxi.node.name,ZGV.GetMapNameByID(Lib.LastTaxi.node.m)
					--Lib.LastTaxi.name,Lib.LastTaxi.zone = Lib.LastTaxi.node.name,(Lib.LastTaxi.node.m and ZGV.GetMapNameByID(Lib.LastTaxi.node.m) or ("(bad map in '"..Lib.LastTaxi.name.."')")) -- just in case? or was it a bad update that broke in here?
				else
					Lib.LastTaxi.name,Lib.LastTaxi.zone = Lib.LastTaxi.fullname:match("(.*), (.*)")
				end
				local route = {}
				local time=0
				for routeIndex = 1, GetNumRoutes(destIndex) do
					local src = TaxiGetNodeSlot(destIndex, routeIndex, true)
					local src_data = taxidata_slots[src]
					local dst = TaxiGetNodeSlot(destIndex, routeIndex, false)
					local dst_data = taxidata_slots[dst]
					if not src_data or not dst_data then route={} time=0 break end
					if #route==0 then tinsert(route,src_data) end
					tinsert(route,dst_data)
					if Lib.IsClassic then
						time=time+Lib:GetTaxiTripTime(src_data.taxitag,dst_data.taxitag)
					else
						time=time+Lib:GetTaxiTripTime(src_data.nodeID,dst_data.nodeID)
					end
					if routeIndex>1 then time=time-3 end  -- deduct something for taxis passed on a multi-hop path
				end

				Lib.LastTaxi.route = route
				Lib.LastTaxi.eta = time
				Lib.LastTaxi.departure = GetTime()
			end
		end)
		Saved_TakeTaxiNode(destIndex,"",true)
	end

	local function __genOrderedIndex( t )
	    local orderedIndex = {}
	    for key in pairs(t) do
		table.insert( orderedIndex, key )
	    end
	    table.sort( orderedIndex )
	    return orderedIndex
	end

	local function orderedNext(t, state)
		-- Equivalent of the next function, but returns the keys in the alphabetic
		-- order. We use a temporary ordered key table that is stored in the
		-- table being iterated.

		--print("orderedNext: state = "..tostring(state) )
		local key
		if state == nil then
			-- the first time, generate the index
			t.__orderedIndex = __genOrderedIndex( t )
			key = t.__orderedIndex[1]
			return key, t[key]
		end
		-- fetch the next value
		for i = 1,table.getn(t.__orderedIndex) do
			if t.__orderedIndex[i] == state then
				key = t.__orderedIndex[i+1]
			end
		end

		if key then
			return key, t[key]
		end

		-- no more value to return, cleanup
		t.__orderedIndex = nil
		return
	end

	local function ordered_pairs(t)
	    -- Equivalent of the pairs() function on tables. Allows to iterate
	    -- in order
	    return orderedNext, t, nil
	end

	function Lib:DEV_FindNodeIDs(operator)
		local continent = Lib:GetCurrentMapContinent()
		local taxidata = C_TaxiMap.GetAllTaxiNodes(continent)
		local count_ided=0
		local count_alreadyided=0
		local count_failed=0
		local failed={}
		print("Grabbing nodeIDs for continent ",continent)

		-- find IDs for nodes that don't have them yet
		for i,taxi in ipairs(taxidata) do

			local found={}
			for ti,taxicost in ipairs(Lib.flightcost[continent]) do
				if taxicost.name==taxi.name and (taxicost.taxioperator==operator) and not is_enemy(taxicost.faction,playerF) then
					found[#found+1]=taxicost
				end
			end
			if #found==0 then print(taxi.name," - NOT FOUND") count_failed=count_failed+1 failed[#failed+1]=taxi.name
			elseif #found>=2 then print(taxi.name," - FOUND MANY:") for ti,foundt in ipairs(found) do print(foundt.tag) end count_failed=count_failed+1 failed[#failed+1]=taxi.name
			elseif found[1].nodeID then
				count_alreadyided=count_alreadyided+1
			else
				-- 1 found
				--print(taxi.name," - found ",found[1].tag)
				found[1].nodeID=tonumber(taxi.nodeID)
				count_ided=count_ided+1
			end
		end

		-- count remaining
		local remain={}
		local count_remainall=0
		for cont,taxicont in pairs(Lib.flightcost) do
			for ti,taxi in ipairs(taxicont) do
				if not taxi.nodeID then count_remainall=count_remainall+1 end
				if cont==continent and not is_enemy(taxi.faction,playerF) and not taxi.nodeID then
					tinsert(remain,taxi)
				end
			end
		end

		print("FAILED: ")  for i,fname in ipairs(failed) do print(fname) end
		print("REMAIN: ",#remain)  for i,taxi in ipairs(remain) do print(taxi.name)  if i>=10 then print("...") break end end
		print(#taxidata," nodes visible, ",count_alreadyided," nodes already IDed, ",count_ided," nodes IDed now, ",count_failed," failed. ",#remain," remain for this continent. ",count_remainall," remain in total.")
		Lib:DEV_DumpFlightCosts(continent)
	end

	function Lib:DEV_ConvertCostsToNodeID()

		local count_converted=0
		local count_unknown=0
		local count_nonodeid=0
		local count_already=0
		local unique_unknown={}
		local unique_unknown_num=0
		local unique_nonodeid={}
		local unique_nonodeid_num=0

		for contnum,contdata in pairs(self.flightcost) do
			for i,taxi in ipairs(contdata) do
				local new_neighbors={}

				local count_connections_before=0
				local total_cost_before=0
				for tag,cost in pairs(taxi.neighbors or {}) do  total_cost_before=total_cost_before+cost  count_connections_before=count_connections_before+1  end

				for tag,cost in pairs(taxi.neighbors or {}) do
					
					if tonumber(tag) and self.fc_by_nodeID[tag] then
						count_already=count_already+1
						new_neighbors[tag]=cost -- keep it
					else
						local neigh = self.fc_by_tag[contnum][tag]
						if not neigh then
							--print(taxi.name,"has unknown neighbor",tag)
							new_neighbors[tag]=cost -- keep it
							count_unknown=count_unknown+1
							if not unique_unknown[tag] then
								unique_unknown[tag]=cost
								unique_unknown_num=unique_unknown_num+1
							end
						elseif not neigh.nodeID then
							--print(taxi.name,"'s neighbor",tag,"has no nodeID")
							new_neighbors[tag]=cost -- keep it
							count_nonodeid=count_nonodeid+1
							if not unique_nonodeid[tag] then
								unique_nonodeid[tag]=tag.." "..neigh.name
								unique_nonodeid_num=unique_nonodeid_num+1
							end
						else
							new_neighbors[neigh.nodeID]=cost
							count_converted=count_converted+1
						end
					end
				end

				local count_connections_after=0
				local total_cost_after=0
				for tag,cost in pairs(taxi.neighbors or {}) do  total_cost_after=total_cost_after+cost  count_connections_after=count_connections_after+1  end

				if count_connections_before~=count_connections_after then print("|cffff0000ERROR! ",taxi.tag,taxi.name,"had",count_connections_before,"connections, now has",count_connections_after) end
				if total_cost_before~=total_cost_after then print("|cffff0000ERROR! ",taxi.tag,taxi.name,"had",total_cost_before,"costs, now has",total_cost_after) end

				taxi.neighbors=new_neighbors
			end
		end

		local nonodeids = ""
		for tag,tagname in pairs(unique_nonodeid) do nonodeids=nonodeids.." "..tagname.."," end

		print("Converted costs from tag to node ID: ",count_already,"already good,",count_converted,"converted,\n",unique_nonodeid_num,"(",count_nonodeid,") missing nodeID:",nonodeids,"\n",unique_unknown_num,"(",count_unknown,") orphaned:",table.concat(ZGV.TableKeys(unique_unknown),", "))
	end

	function Lib:DEV_FixByDupes()
		-- fix missing dupes
		for contnum,contdata in pairs(Lib.flightcost) do  repeat
			for i,taxi in ipairs(contdata) do
				if taxi.neighbors then
					for id,cost in pairs(taxi.neighbors) do
						if cost==0 and Lib.fc_by_nodeID[id] and Lib.fc_by_nodeID[id].neighbors and Lib.fc_by_nodeID[id].neighbors[taxi.nodeID] and Lib.fc_by_nodeID[id].neighbors[taxi.nodeID]>0 then
							print("fixed",taxi.nodeID,"to",id)
							taxi.neighbors[id]=Lib.fc_by_nodeID[id].neighbors[taxi.nodeID]
						end
					end
				end
			end
		until true end
	end

	-- /run LibTaxi:DumpFlightCosts()
	function Lib:DEV_DumpFlightCosts(onlycont)
		if onlycont==true or not IsShiftKeyDown() then onlycont=Lib:GetCurrentMapContinent() end

		local s=""
		if not onlycont then s="data.flightcost = {\n" end

		for contnum,contdata in ZGV.OrderedPairs(Lib.flightcost) do  repeat
			if onlycont and contnum~=onlycont then break end  --continue

			s=s.."	["..contnum.."]={\n"
			
			local function tagsort(a,b) return a.nodeID and b.nodeID and a.nodeID<b.nodeID end
			table.sort(contdata,tagsort)

			for i,data in ipairs(contdata) do
				s=s.."		{\n"
				
				if data.tag then s=s.."			tag = \""..data.tag.."\",\n" end
				if data.nodeID then s=s.."			nodeID = "..data.nodeID..",\n" end
				s=s.."			name = \""..data.name.."\",\n"
				
				if data.taxioperator then s=s.."			taxioperator = \""..data.taxioperator.."\",\n" end
				if data.faction then s=s.."			faction = \""..data.faction.."\",\n" end
				if data.comment then s=s.."			comment = \""..data.comment.."\",\n" end

				for k,v in pairs(data) do if k~="taxioperator" and k~="faction" and k~="comment" and k~="name" and k~="neighbors" and k~="tag" and k~="nodeID" then print("Odd data key",k) end end
				
				if data.neighbors then
					s=s.."			neighbors = {\n"

					local sorted_neighs={}
					for ntag,cost in pairs(data.neighbors) do tinsert(sorted_neighs,ntag) end
					table.sort(sorted_neighs,ZGV.NumericSafeSort)

					for j,ntag in ipairs(sorted_neighs) do
						local cost = data.neighbors[ntag]
						local name = self.fcnames_by_nodeID[ntag] or self.fcnames_by_tag[contnum][ntag]
						s = s .. "				["..(tonumber(ntag) and ntag or "\""..ntag.."\"").."] = "..cost..", -- " .. (name or "?") .. "\n"
					end
					s=s.."			},\n"
				end
				s=s.."		},\n"
			end
			s=s.."	},\n"
		until true end
		if not onlycont then  s=s.."}\n"  end
		ZGV:ShowDump(s,"Paste into LibTaxi/data.lua"..(onlycont and " WHERE APPROPRIATE" or ""))
	end

	--[[ unused?
		function Lib:MergeTags__()  --unused?
			if not LibRover.data.flightcost then return end  -- shouldn't be any anyway
			for contnum,contdata in ipairs(LibRover.data.flightcost) do
				for tag,taxidata in pairs(contdata) do
					local taxinode = Lib:FindTaxi(taxidata.Name, "trim")
					if not taxinode then
						if ZGV.DEV then print("WHOA. Taxi node not found: ",taxidata.Name) end   -- DEVed prints at 2014-11-12
					else
						taxinode.taxitag = tag
						taxinode.pre_costs = taxidata.Neighbors
					end
				end
			end
		end
	--]]

	-- unused for now, but workable and fun!
	local function table_dig_pairs(tab,depth,func,keys)
		keys=keys or {}
		if depth==1 then
			for k,v in pairs(tab) do
				table.insert(keys,k)
				table.insert(keys,v)
				func(unpack(keys))
				table.remove(keys)
				table.remove(keys)
			end
		else
			for k,v in pairs(tab) do
				table.insert(keys,k)
				table_dig_pairs(v,depth-1,func,keys)
				table.remove(keys)
			end
		end
	end


	-- Pull "flightcost" data into taxipoints.
	function Lib:MergeData()
		local FC=Lib.flightcost
		if not FC then print("Need flightcosts data") return end

		-- for each taxi NPC find its nodeID and tag.
		for c,z,ni,node in ZGV.CoroPairs(Lib.taxipoints,IterateCZNN) do repeat
			local found
			for fi,fcdata in pairs(FC[c]) do
				if (node.taxinodeID and node.taxinodeID==fcdata.nodeID) -- perfect match by nodeID
				or (not node.taxinodeID -- don't match nodeID-ed nodes by name!
				and fcdata.name:find(node.name,0,true)
				and fcdata.taxioperator==node.taxioperator
				and not is_enemy(fcdata.faction,node.faction))
				then
					found=1
					--if node.taxinodeID then tinsert(Lib.errors,"|cffff8888"..node.name.." got nodeID "..node.taxinodeID.." already! Why reassign to "..fcdata.nodeID.."??") end
					node.taxinodeID = fcdata.nodeID
					node.taxitag = fcdata.tag
					break
				end
			end

			if not found then tinsert(Lib.errors,"|cffffff00"..node.name.." ".." ("..z..") (faction:"..(node.faction or "-")..") ["..(node.taxioperator or "").."] didn't get a taxitag, no match found by name in LibTaxi.flightcost") end   -- DEVed prints at 2014-11-12
		until true end

		Lib:CacheTaxiTags()

		-- for each taxi NPC assign neighbors by tag. LibRover Node uses this for cost calc.
		for c,cont in pairs(Lib.taxipoints) do repeat
			for z,zone in pairs(cont) do
				for ni,node in pairs(zone) do repeat
					if is_enemy(node.faction,playerF) then break end
					if not (node.taxinodeID or node.taxitag) then tinsert(Lib.errors,"Why did "..node.name.." not get a nodeID or tag?") break end
					local fcdata = (node.taxinodeID and Lib.fc_by_nodeID[node.taxinodeID]) or (node.taxitag and Lib.fc_by_tag[c][node.taxitag]) 
					if not fcdata then tinsert(Lib.errors,"taxi "..node.name.." "..(node.taxinodeID or node.taxitag).." has no fcdata?") break end -- shouldn't happen, if the node has a tag...
					if not fcdata.neighbors then break end

					node.taxicosts = {}
					for neighborid_or_tag,cost in pairs(fcdata.neighbors) do
						local neighbor = Lib.fnode_by_tag[c][neighborid_or_tag] or Lib.fnode_by_nodeID[neighborid_or_tag]
						if neighbor then
							node.taxicosts[neighbor] = cost
						else
							node.taxicosts[neighborid_or_tag] = cost -- won't be used, but let's keep it just for debugging
						end
					end
				until true end
			end
		until true end
	end

	function Lib:TranslateData()
		local LOCALE = GetLocale()
		Lib.master.translation = Lib.master.translation or {}
		Lib.master.translation[LOCALE] = Lib.master.translation[LOCALE] or {}
		Lib.translation = Lib.master.translation[LOCALE]

		for cont,cd in pairs(self.taxipoints) do
			local nodes = C_TaxiMap.GetTaxiNodesForMap(cont)
			for i,bliznode in ipairs(nodes) do
				local taxinode = self:FindTaxiByNodeID(bliznode.nodeID)
				if taxinode and bliznode.name~=taxinode.name then
					bliznode.name = bliznode.name:gsub(", .*","")  -- trim zone names (in european languages, at least)
					taxinode.localname=bliznode.name
				end
			end
		end
	end

	--[[ UNUSED? not even for DEV!
		function Lib:DumpNeighborFlights()

			local s = ""

			for i=1,NumTaxiNodes() do
				x,y=TaxiNodePosition(i)
				x,y=floor(x*1000),floor(y*1000)
				if x < 100 then x = "0"..x end
				if y < 100 then y = "0"..y end
				name=TaxiNodeName(i)

				if GetNumRoutes(i)==1 then
					s= s..("		[\""..x..":"..y.."\"]".." = time, --"..name.."\n")
				elseif GetNumRoutes(i)==0 then
					s=("--[\""..x..":"..y.."\"]".." = time, --"..name.."\n".."[\""..x..":"..y.."\"]".." = {\n	[\"name\"] = \""..name.."\",\n	[\"neighbors\"] = {\n")..s
				end
			end
			s=s.."	},\n},"
			ZGV:ShowDump(s,"Paste these into LibTaxi data.lua into data.flightcost")
		end
	--]]

	--[[ UNUSED? not even for DEV!
		function Lib:DumpAllFlights()

			local s = ""

			for i=1,NumTaxiNodes() do
				x,y=TaxiNodePosition(i)
				x,y=floor(x*1000),floor(y*1000)
				if x < 100 then x = "0"..x end
				if y < 100 then y = "0"..x end
				name=TaxiNodeName(i)

				s=s..("--[\""..x..":"..y.."\"]".." = time, --"..name.."\n".."[\""..x..":"..y.."\"]".." = {\n	[\"name\"] = \""..name.."\",\n	[\"neighbors\"] = {\n").."},\n},\n"
			end
			ZGV:ShowDump(s)
		end
	--]]

	function Lib:GetTaxiByTarget()
		local id = UnitGUID("target")
		--print("Finding taxi by target: "..tostring(id)) -- DEBUGTAXITARGET
		if not id then return end
		id = id:match("Creature%-%d+%-%d+%-%d+%-%d+%-(%d+)")  if not id then return end
		id=tonumber(id)
		--print("NPC ID: "..tostring(id)) -- DEBUGTAXITARGET
		for c,cont in pairs(Lib.taxipoints) do
			for z,zone in pairs(cont) do
				for ni,node in pairs(zone) do
					if node.npcid==id then return node end
				end
			end
		end
	end

	function Lib:DumpTaxiByTarget()  -- DEV
		local node = self:GetTaxiByTarget()
		if node then
			print("You're recognized at: "..node.name..", "..(node.known and "a 'known'" or "an 'unknown'").." taxi.")
		else
			print("I have no idea what taxi point you're at.")
		end
	end

	function Lib:LearnTaxi(node,learn)
		node.known=learn
		if node.taxinodeID then Lib.master[node.taxinodeID]=learn end
		if Lib.IsClassic then
			Lib.master[node.name]=learn
			if node.taxinodeID then Lib.master[node.taxinodeID]=learn end
			if node.taxitag then Lib.master[node.taxitag]=learn end
		end
	end
	
	function Lib:LearnCurrentTaxi(if_unlearn)
		local learn=true  if if_unlearn==false then learn=false end
		local node = self:GetTaxiByTarget()
		if node then
			self:LearnTaxi(node,learn)
			self:Debug("%slearned by node, %s",(learn and "" or "un"),node.name)
			return node
		end

		-- NPC not found? try by name (why would this ever happen!?)
		local name = GetMinimapZoneText()
		name = Lib.TaxiNames_English[name]
		if not name then
			self:Debug("|cffff8888Taxi Error: Unknown zone "..GetMinimapZoneText().."|r")
			return
		end
		name = minimap_exceptions[name] or name
		node=self:FindTaxi(name)
		if node then
			self:LearnTaxi(node,learn)
			self:Debug("%slearned by map, node %s, map %s",(learn and "" or "un"),node.name,GetMinimapZoneText())
			return node
		end
		
		self:Debug("Something failed, map is %s, target is %s, but can't find a taxi here",UnitGUID("target"),GetMinimapZoneText())
	end

	function Lib:MarkNeightboursUnknown(node)
		if not node then
			self:Debug("MarkNeightboursUnknown got no node")
			return
		end

		if not node.n then 
			self:Debug("MarkNeightboursUnknown node has no neighbours")
			return
		end

		for _,neigh in pairs(node.n) do
			if neigh[1] and (neigh[1].taxitag or neigh[1].taxinodeID) then
				Lib:LearnTaxi(neigh[1],false)
			else
			end
		end
		if not Lib.IsRetail then Lib:MarkContinentSeen(node.c,node.operator) end
	end


	function Lib:TestAllFlights()
		local s = ""

		local BZ = LibStub("LibBabble-SubZone-3.0")
		local BZL,BZR = BZ:GetUnstrictLookupTable(),BZ:GetReverseLookupTable()

		for i=1,NumTaxiNodes() do
			local x,y=TaxiNodePosition(i)
			x,y=floor(x*1000),floor(y*1000)
			if x < 100 then x = "0"..x end
			if y < 100 then y = "0"..y end
			local name=TaxiNodeName(i)
			local ttag = x..":"..y


			local tagmatch = Lib:FindTaxiByTag(Lib:GetCurrentMapContinent(),ttag)

			if not tagmatch then
				s = s.."\n"..ttag.." - No tag match - "..i
			end

		end
		ZGV:ShowDump(s)
	end

	function Lib:Debug(s,...)
		if ZGV and ZGV.db then ZGV:Debug("&LibTaxi "..s,...) end
	end


	function Lib:SetupTaxiTooltips()
		do return end
		-- dev function disabled, broken on classic

		if not ZGV.DEV then return end
		if not self.taxi_tooltip_timer then self.taxi_tooltip_timer = ZGV:ScheduleRepeatingTimer(function() self:OnTimer() end,0.02) end
	end

	local last_mousePin
	function Lib:OnTimer()
		if FlightMapFrame and FlightMapFrame:IsShown() then
			local flightProvider
			for v,tr in pairs(FlightMapFrame.dataProviders) do  if v.AddFlightNode then flightProvider=v break end  end
			if not flightProvider then print("no provider") return end

			local slotIndexToPin = flightProvider.slotIndexToPin
			local currentPin
			local mousePin
			local maxSlot = NumTaxiNodes()
			for i=1,maxSlot do
				local pin = slotIndexToPin[i]
				if pin then
					if pin.taxiNodeData and pin.taxiNodeData.state==Enum.FlightPathState.Current then currentPin=pin end
					if pin:IsMouseOver() and pin:IsShown() then mousePin=pin end
				end
			end
			if not currentPin then ZGV:Print("Can't find current taxi :(") return end
			if last_mousePin==mousePin then return end
			last_mousePin=mousePin
			if not mousePin then return end

			local currentNodeData = self:FindTaxiByNodeID(currentPin.taxiNodeData.nodeID)
			if not currentNodeData then ZGV:Print("Can't find current taxi data :( node id "..currentPin.taxiNodeData.nodeID) return end
			local mouseNodeData = self:FindTaxiByNodeID(mousePin.taxiNodeData.nodeID)
			if not mouseNodeData then ZGV:Print("Can't find mouse taxi data :( node id "..mousePin.taxiNodeData.nodeID) return end

			local route

			local slotIndex = mousePin.taxiNodeData.slotIndex
			local hops = {}
			local totaltime = 0
			for routeIndex = 1, GetNumRoutes(slotIndex) do
				local sourceSlotIndex = TaxiGetNodeSlot(slotIndex, routeIndex, true)
				local destinationSlotIndex = TaxiGetNodeSlot(slotIndex, routeIndex, false)

				local startPin = slotIndexToPin[sourceSlotIndex]
				local destinationPin = slotIndexToPin[destinationSlotIndex]

				if hops[#hops]~=startPin.taxiNodeData.nodeID then tinsert(hops,startPin.taxiNodeData.nodeID) end
				tinsert(hops,destinationPin.taxiNodeData.nodeID)

				local startNode = self:FindTaxiByNodeID(startPin.taxiNodeData.nodeID)
				local endNode = self:FindTaxiByNodeID(destinationPin.taxiNodeData.nodeID)
				if not startNode then print("What? No start node "..startPin.taxiNodeData.nodeID) return end
				if not endNode then print("What? No end node "..destinationPin.taxiNodeData.nodeID) return end
				if not startNode.taxicosts then print("What? No start node taxicosts? "..startPin.taxiNodeData.nodeID) return end

				local time = startNode.taxicosts[endNode]
				if not time or time==0 then
					if ZGV.db.profile.taxi_print_unknowntimes then print((routeIndex==1 and "|cffffdd00" or "|cffff0000").."Unknown time ["..routeIndex.."]: "..startNode.name.." to "..endNode.name) end

					local lineContainer = flightProvider.backgroundLinePool:Acquire();
					lineContainer.Fill:SetStartPoint("CENTER", startPin);
					lineContainer.Fill:SetEndPoint("CENTER", destinationPin);
					lineContainer.Fill:SetThickness(300)
					lineContainer:Show();
				else
					totaltime = totaltime + time
				end
			end
			if totaltime>0 and GameTooltip:IsShown() then
				GameTooltip:AddLine(("Estimated time: |cffffffff%d:%02d"):format(totaltime/60,totaltime%60))
			end
			GameTooltip:AddLine(("Node ID: %d"):format(mousePin.taxiNodeData.nodeID))
			local mouseNode = self:FindTaxiByNodeID(mousePin.taxiNodeData.nodeID)
			if mouseNode then
				local missingtimes=0
				if mouseNode.taxicosts then for ni,nt in pairs(mouseNode.taxicosts) do if nt==0 then missingtimes=missingtimes+1 end end end
				if missingtimes>0 then GameTooltip:AddLine(("Missing times: %d"):format(missingtimes)) end
			end
			GameTooltip:Show()
			--[[
					local nodeID = v.taxiNodeData.nodeID
					local pointedNodeData = self:FindTaxiByNodeID(nodeID)
					local time = currentNodeData.taxicosts[pointedNodeData]
					if time then ZGV:Print(("Flight time: %d s"):format(time)) else ZGV:Print("Flight time unknown!") end
				end
			end
			--]]
		elseif TaxiFrame and TaxiFrame:IsShown() then
			local mousePin,currentPin
			
			local num_nodes = NumTaxiNodes()
			for i=1,num_nodes do
				local button=_G['TaxiButton'..i]
				if button:IsMouseOver() and button:IsShown() then mousePin=button end
				if TaxiNodeGetType(i)=="CURRENT" then currentPin=button end
			end
			if not currentPin then print("no current") return end

			if last_mousePin==mousePin then return end
			last_mousePin=mousePin
			if not mousePin then return end

			local taxis,taxislots = self:GetTaxiDataBySlot()
			currentPin.taxiNodeData=taxislots[currentPin:GetID()]
			mousePin.taxiNodeData=taxislots[mousePin:GetID()]
			
			if not currentPin.taxiNodeData then ZGV:Print("Can't find current taxi :(") return end
			if not mousePin.taxiNodeData then return end

			local route

			local slotIndex = mousePin.taxiNodeData.slotIndex
			local hops = {}
			local totaltime = 0
			for routeIndex = 1, GetNumRoutes(slotIndex) do
				local sourceSlotIndex = TaxiGetNodeSlot(slotIndex, routeIndex, true)
				local destinationSlotIndex = TaxiGetNodeSlot(slotIndex, routeIndex, false)

				if hops[#hops]~=currentPin.taxiNodeData.taxitag then tinsert(hops,currentPin.taxiNodeData.taxitag) end
				tinsert(hops,taxislots[destinationSlotIndex].taxitag)

				local cont=Lib:GetCurrentMapContinent()

				local startNode = self:FindTaxiByTag(cont,taxislots[sourceSlotIndex].taxitag)
				local endNode = self:FindTaxiByTag(cont,taxislots[destinationSlotIndex].taxitag)
				--if not startNode then print("What? No start node "..(taxislots[sourceSlotIndex].taxitag or "?")) return end
				--if not endNode then print("What? No end node "..(taxislots[destinationSlotIndex].taxitag or "?")) return end

				local time = startNode.taxicosts[endNode]
				if not time or time==0 then
					if ZGV.db.profile.taxi_print_unknowntimes then print((routeIndex==1 and "|cffffdd00" or "|cffff0000").."Unknown time ["..routeIndex.."]: "..startNode.name.." to "..endNode.name) end

					--[[
					local lineContainer = flightProvider.backgroundLinePool:Acquire();
					lineContainer.Fill:SetStartPoint("CENTER", startPin);
					lineContainer.Fill:SetEndPoint("CENTER", destinationPin);
					lineContainer.Fill:SetThickness(300)
					lineContainer:Show();
					--]]
				else
					totaltime = totaltime + time
				end
			end
			if totaltime>0 and GameTooltip:IsShown() then
				GameTooltip:AddLine(("Estimated time: |cffffffff%d:%02d"):format(totaltime/60,totaltime%60))
			end
			GameTooltip:AddLine(("Node tag: %s"):format(mousePin.taxiNodeData.taxitag or "?"))
			GameTooltip:Show()
			--[[
					local nodeID = v.taxiNodeData.nodeID
					local pointedNodeData = self:FindTaxiByNodeID(nodeID)
					local time = currentNodeData.taxicosts[pointedNodeData]
					if time then ZGV:Print(("Flight time: %d s"):format(time)) else ZGV:Print("Flight time unknown!") end
				end
			end
			--]]
		else
			last_mousePin=nil
		end
	end

	function Lib:ImportTaxiTimesFromSV()
		if not ZGV.db.global.taxitimes then return end
		local loaded=0
		for k,v in pairs(ZGV.db.global.taxitimes) do  if v>0 then
			local id1,id2 = strsplit("_",k)
			id1,id2=tonumber(id1),tonumber(id2)
			if Lib.fc_by_nodeID[id1] and Lib.fc_by_nodeID[id2] then
				if (Lib.fc_by_nodeID[id1].neighbors[id2] or 0)==0 then
					Lib.fc_by_nodeID[id1].neighbors[id2]=v
					loaded=loaded+1
				end
				id1,id2=id2,id1
				if (Lib.fc_by_nodeID[id1].neighbors[id2] or 0)==0 then
					Lib.fc_by_nodeID[id1].neighbors[id2]=v
					loaded=loaded+1
				end
			end
		end end
		--ZGV:Print(("DEV: %d taxi trip times are still in SVs, waiting to be saved!"):format(loaded))
	end



	--[[
	function Lib:ConvertTag(typ,a,b,c)
		if typ=="raw" then
			return tonumber(("%d:%0d:%0d"):format(a,math.ceil(b*100),math.ceil(c*100)))
		elseif typ=="fme" then
			return a
		end
	end
	--]]

	--[[
	function Lib:TestCurrent()
		for node=1,NumTaxiNodes() do
			local typ=TaxiNodeGetType(node)
			if typ=="CURRENT" then
				local x,y = TaxiNodePosition(node)
				x=Math.floor(
		end
	end
	--]]

	_G['LibTaxi']=Lib



end