local name,ZGV = ...

local HBD=ZGV.HBD
local pins=ZGV.HBDPins
local mapData=HBD.mapData

function HBD:FixPhasedContinents()
	--[[ bfa alpha change
	mapData[1037].C = 8
	--]]
	
	-- Teldrassil isn't reported as being in Kalimdor#12's children anymore.
	HBD.processMap(57,C_Map.GetMapInfo(57))
	HBD.processMapChildrenRecursive(57)
end

local PI2 = math.pi * 2

local instanceRemaps = {
	[1616]=1220,  -- Azsuna Mage Hunter scenario
}

function pins:GetDirectionToIcon( icon )
	-- TODO : rework to use real values
	local data = pins.minimapPins[icon];
	if ( data ) then
		local oX, oY, instanceID = HBD:GetPlayerWorldPosition()
		local remap = instanceRemaps[instanceID]  if remap then instanceID=remap end
		if instanceID~=data.instanceID then return end
		return HBD:GetWorldVector(instanceID, oX, oY, data.x, data.y)
	end
end

function pins:GetDistanceToIcon( icon )
	local data = pins.minimapPins[icon];
	if ( data ) then
		local oX, oY, instanceID = HBD:GetPlayerWorldPosition()
		if not oX then return end
		local remap = instanceRemaps[instanceID]  if remap then instanceID=remap end
		if instanceID~=data.instanceID then return end
		local dist, detalx, deltay = HBD:GetWorldDistance(instanceID, oX, oY, data.x, data.y)
		return dist, detalx, deltay
	end
end

--- Bug fixing
-- Maelstorm dimensions
-- for i=1,4 do mapData[751][i]=mapData[737][i] end
