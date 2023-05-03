if not Auctioneer then return end

-- Create a new Auctioneer module.
local Module = Auctioneer:Module("Stats:OverTime")
local Const = Auctioneer.Const()

-- Hook our methods
function Module:Boot(hook)
	hook(Const.ScannerItemsPush, Module.ScannerItemsPush)
end

if not AuctioneerStatsOverTimeData then
	AuctioneerStatsOverTimeData = {}
end

function Module:ScannerItemsPush(items)
	local auctionKey = Auctioneer:AuctionKey()

	local d = AuctioneerStatsOverTimeData[auctionKey]
	if not d then
		d = {}
		AuctioneerStatsOverTimeData[auctionKey] = d
	end

	local timeslice = floor(Auctioneer:Timeslice())
	for k,_ in pairs(d) do
		if k < timeslice - 24*7 then
			d[k] = nil
		end
	end

	local dd = d[timeslice]
	if not dd then
		dd = {}
		dd.count = {}
		dd.price = {}
		d[timeslice] = dd
	end

	--[[
		stat = {
			id: string,
			itemKey: { itemID, itemLevel, itemSuffix, battlePetSpeciesID },
			itemInfo: { itemName, battlePetLink, quality, iconFileID, isPet, isCommodity, isEquipment },
			itemData: { itemKey, appearanceLink, totalQuantity, minPrice, containsOwnerItem },
		}
	]]

	for _, item in ipairs(items) do
		local id = item.id
		local count, price

		local existing = dd.count[id]
		local current = item.itemData.totalQuantity
		if not existing or current > existing then
			dd.count[id] = current
		end

		existing = dd.price[id]
		current = item.itemData.minPrice
		if not existing or current < existing then
			dd.price[id] = current
		end
	end
end

function Module:Stats(auctionKey, id)
	local d = AuctioneerStatsOverTimeData[auctionKey]
	if not d then
		return
	end

	local points = Auctioneer:Points{}

	local now = Auctioneer:Timeslice()

	for timeslice, dd in pairs(d) do
		local weight = nil
		local delta = now - timeslice
		if delta <= 1 then
			weight = 5
		elseif delta <= 24 then
			weight = 2
		elseif delta <= 3 then
			weight = 1.5
		end

		local price = dd.price[id]
		if price then
			local count = dd.count[id]
			points:Add(price, count, timeslice, weight)
		end
	end

	if #points == 0 then
		return
	end

	local stat = Auctioneer:Stat{
		name = "Over time",
		points = points,
	}

	return stat
end

-- GetServerKeyList()
-- Returns a list of every ServerKey known to this module
-- This will be a table containing a list of strings
-- Note: the caller shall not modify the return table
-- Note: If the caller needs to store the results, it shall make a copy
-- Note: This function is not expected to be called often; considering the requirements of ChangeServerKey, it is probably not worth caching it
function Module:GetServerKeyList()
	if not AuctioneerStatsOverTimeData then return end
	local list = {}
	for serverKey in pairs(AuctioneerStatsOverTimeData) do
		tinsert(list, serverKey)
	end
	return list
end

-- ChangeServerKey(oldKey[, newKey])
-- Expected to only be called from Auctioneer server-handling core
-- Called during PLAYER_ENTERING_WORLD; ensure saved variables are created before then

-- Instructs this module to move or merge the contents of ServerKey oldKey into newKey
-- After this call, oldKey should not exist, and should not be returned by GetServerKeyList
-- Where newKey did not previously exist, the contents of oldKey should be copied into newKey, and newKey should be returned by GetServerKeyList
-- Where newKey existed previously the module may either attempt to merge the results, or simply delete oldKey, depending on implementation
-- Where newKey is nil, oldKey should just be deleted

-- Returns <errortext> - if any error is encountered
-- Returns nil - if no error encountered

function Module:ChangeServerKey(oldKey, newKey)
	if type(self) ~= "table" or type(oldKey) ~= "string" or (newKey ~= nil and type(newKey) ~= "string") then
		-- quick check that the parameters all look valid (even though we don't actually use 'self')
		return "Invalid parameters"
	end
	if not AuctioneerStatsOverTimeData then
		return "Data not loaded"
	end
	local oldData = AuctioneerStatsOverTimeData[oldKey]
	AuctioneerStatsOverTimeData[oldKey] = nil
	if oldData and newKey then
		-- Store oldData under newKey, but NOT if data already exists for newKey
		if not AuctioneerStatsOverTimeData[newKey] then
			AuctioneerStatsOverTimeData[newKey] = oldData
		end
		-- If data does exist for newKey we could attempt a merge instead (not implemented yet)
	end
end
