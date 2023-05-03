-- GLOBAL LibRover,LibRover_Node,LibRover_Region

LibRover_Region = {}

local Region=LibRover_Region


local Lib

local BZ = LibStub("LibBabble-SubZone-3.0")
local BZL = BZ:GetUnstrictLookupTable()
local BZR = setmetatable({_table=BZ:GetReverseLookupTable()},{__index=function(t,k) return t._table[k] or k end})

function Region:New(data)
	local region=data
	setmetatable(region,{__index=self})

	self = region

	if self[1]=="REGION" then tremove(self,1) end

	local m1,f1,x1,y1,id1,dat1 = LibRover_Node:Parse(self.center)   self.center=nil
	self.centernode = self.centernode or ( x1 and LibRover_Node:New{c=ZGV.GetMapContinent(m1),m=m1,f=f1,x=x1,y=y1,id=id1,type="misc"} ) or Lib.nodes.id[self.centernodeid] or Lib.nodes.id[id1]
	if self.greenborders then
		for ni,n in ipairs(self.greenborders) do
			local f
			if type(n) == "table" then
				f = n[2]
				n = n[1]
			end
			local id = Lib.data.MapIDsByName[n]
			if id then self.greenborders[id]=f or true end
		end
	end

	if self.zonematch then
		local zone,realzone,subzone,minizone=self.zonematch:match("^(.-)/(.-)/(.-)/(.-)$")
		local function verify(z)
			if z=="*" then return nil end
			return z
		end
		if zone then
			local err
			self.zone,err = verify(zone)  if err then return nil,err end
			self.realzone,err = verify(realzone)  if err then return nil,err end
			self.subzone,err = verify(subzone)  if err then return nil,err end
			self.minizone,err = verify(minizone)  if err then return nil,err end
		end
	end
	for _,boo in ipairs{"indoors","nofly","in_flight","submerged"} do if self[boo]~=nil then self[boo]=(self[boo]==1 or self[boo]==true) end end
	
	if type(self.mapzone)=="string" then self.mapzone = LibRover:GetMapByNameFloor(self.mapzone) end

	return region
end

function Region:Contains(node,debug)
	--Lib:Debug(getdist(self.centernode,node))
	if self.name==node.region then
		return true,debug and "already in"  -- that's a no-brainer
	elseif node.region then
		return false,debug and "already in diff region: "..node.region  -- in different region
	else
		local flyspeed_in_zone = LibRover.maxspeedinzone[node.m][3]
		if flyspeed_in_zone>0 and not self.indoors and not self.in_flight then return false,debug and "player can fly" end
		if not self.centernode and not self.zonematch then return false,debug and "no center nor zone" end  -- no conditions? it must be a very special region... die. indoors doesn't matter at this point,
		if self.centernode then
			local centermatch = self.centernode.m==node.m and Lib.GetDist(self.centernode,node)<self.radius
			if not centermatch then return false,debug and "center mismatch" end
		end
		if self.zonematch then
			-- if any map name is specified, then it needs to match
			local zonematch = (not self.mapzone or node.m==self.mapzone)
				and (not self.zone or node.zone==self.zone)
				and (not self.realzone or node.realzone==self.realzone)
				and (not self.subzone or node.subzone==self.subzone)
				and (not self.minizone or node.minizone==self.minizone)
			if not zonematch then return false,debug and "zonematch mismatch" end
		end
		if self.indoors~=nil and node.indoors~=self.indoors then return false,debug and "indoors mismatch" end
		if self.submerged~=nil and node.submerged~=self.submerged then return false,debug and "submerged mismatch" end
		if self.cond_fun then
			local ok,result = pcall(self.cond_fun)
			if not ok or not result then return false,debug and "cond_fun fail" end
		end
		return true  -- passed both
	end
end

function Region:HasGreenBorder(mapid)
	return self.greenborders and self.greenborders[mapid]
end

function Region:tostring()
	return self.name
end


-- unused, might come in handy.
local function pointInPoly(x,y,...)
	local pts = select("#",...)
	print("pts",pts)
	local odd=false
	local p1x,p1y,p2x,p2y
	for i=1,pts,2 do
		p1x = p2x or select(i,...)
		p1y = p2y or select(i+1,...)
		p2x = select(i+2,...) or select(1,...)
		p2y = select(i+3,...) or select(2,...)
		print("i",i,"p1",p1x,p1y,"p2",p2x,p2y)
		if (((p1y<y and p2y>=y)
		or (p2y<y and p1y>=y))
		and (p1x<=x or p2x<=x)) then
			if (p1x+(y-p1y)/(p2y-p1y)*(p2x-p1x)<x) then
				odd=not odd
			end
		end
	end
	return odd
end


function Region:InterfaceWithLib(lib)
	Lib=lib
end
