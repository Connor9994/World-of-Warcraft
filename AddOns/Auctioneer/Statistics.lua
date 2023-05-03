local Statistics = Auctioneer:Boot("Statistics")

local Point = {
	--[[

	A Point is used in Stat.points to indicate a data point.

	price
		This is the only required field and is the price that the point has.

	count
		The number of items on the AH at this point.

	timeslice
		A timeslice is the hour that the point was scanned in. This number may be
		decimal if you support sub-hour scan resolutions.
		You can get the current timeslice from Auctioner:Timeslice().

	weight
		An optional weight for this statistic.
		If not provided the weight defaults to 1.

	]]
}

local Points = {}

local Stat = {
	--[[

	The following fields are supported, provide whichever of them you support, and
	the engine will do it's best to accomodate you:

	name
		The name of the statistic, will be used in the tooltip, so keep it concise.

	points
		A Points array of all the Point objects you used to caclulate the numbers
		if you have them available.
		If you supply them they will be used to calculate percentiles.

	number
		The number of points used to calculate the statistic values.
		If not provided this will be assumed to be 1.

	count
		The typical (average) volume of these items listed on the AH.

	average
		Average of all data points (sum of points / number)

	median
		Median of all data points (50th percentile - middle value when sorted)

	max
		Maximum of all data points (100th percentile)

	min
		Minimum of all data points (0th percentile)

	spark
		A spark line of price fluctuations over time.
		Must be an array of 20 values, supply null if you don't have a value for a
		given point.
		Will be used to draw a spark graphic of price over time.

	]]
}

-- Returns the number of data points used to calculate the statistics.
function Stat:Number()
	if self.number then
		return self.number
	end

	if self.points then
		return #self.points
	end

	return 1
end

-- Returns the best price according to user preferences. (Currently fixed as
-- median as there are no user preferences yet).
function Stat:Best()
	local type, price

	if self.median then
		type = "median"
		price = self.median
	elseif self.average then
		type = "average"
		price = self.average
	elseif self.min then
		type = "minimum"
		price = self.min
	elseif self.max then
		type = "maximum"
		price = self.max
	elseif self.points then
		local n = #self.points
		if n == 0 then
			type = "none"
		elseif n == 1 then
			type = "only"
			price = self.points[1].price
		elseif n == 2 then
			type = "minimum"
			price = self.points[1].price
		else
			local point = self.points:Median()
			if point then
				type = "median"
				price = point.price
			end
		end
	end

	if not price then
		return nil, self:Number(), "none"
	end

	return price, self:Number(), type
end

-- Returns the minimum price among all the statistics or the next best thing.
function Stat:Minimum()
	local exact = self.min
	local price = exact or self.median or self.average
	if price then
		if self.median and self.median > price then
			price = self.median
		end
		if self.average and self.average > price then
			price = self.average
		end
	end

	if not price and self.points then
		local point = self.points:Minimum()
		if point then
			price = point.price
			exact = price
		end
	end

	return price, exact
end

-- Returns the maximum value among all the statistics or the next best thing.
function Stat:Maximum()
	local exact = self.max
	local price = exact or self.median or self.average
	if price then
		if self.median and self.median > price then
			price = self.median
		end
		if self.average and self.average > price then
			price = self.average
		end
	end

	if not price and self.points then
		local point = self.points:Maximum()
		if point then
			price = point.price
			exact = price
		end
	end

	return price, exact
end

function Stat:Median(options)
	return self:Percentile(50, options)
end

-- Return the given percentile (range 0...100).
function Stat:Percentile(p, options)
	if not self.points then
		return nil
	end

	local point = self.points:Percentile(p, options)
	if point then
		return point.price
	end
end

-- Return a subset of the stat's points that are greater than the supplied
-- timestamp as a new stat.
function Stat:Since(timeslice)
	if not self.points then
		return nil, self:Number()
	end

	local subPoints = Auctioneer:Points()
	for _, point in ipairs(self.points) do
		if point.timeslice >= timeslice then
			tinsert(subPoints, point)
		end
	end

	if #subPoints == 0 then
		subPoints = nil
	end

	return self:From(subPoints)
end

-- Create a new copy of this stat from the given Points.
function Stat:From(points)
	return Auctioneer:Stat{
		name = self.name,
		points = points,
	}
end

local statMeta = {__index = Stat}
function Statistics:NewStat(n)
	n = n or {}
	if getmetatable(n) then
		error("Auctioneer: New Stat object already has metatable")
	end
	setmetatable(n, statMeta)

	if n.points then
		-- Sort them by price if they exist as that's what the pricing methods
		-- will expect them to be sorted by.
		n.points = n.points:SortBy("price", true)
	end

	return n
end

local cmp = {
	point = function(a, b)
		if a == b then return false end
		if not a then return true end
		if not b then return false end
		return nil
	end,

	price = function(a, b)
		local av = a.price or 0
		local bv = b.price or 0
		if av == bv then return nil end
		return av < bv
	end,

	timeslice = function(a, b)
		local av = a.timeslice or 0
		local bv = b.timeslice or 0
		if av == bv then return nil end
		return av < bv
	end,

	count = function(a, b)
		local av = a.count or 0
		local bv = b.count or 0
		if av == bv then return nil end
		return av < bv
	end,

	weight = function(a, b)
		local av = a.count or 0
		local bv = b.count or 0
		if av == bv then return nil end
		return av < bv
	end,
}

local comparisons = {
	price = { cmp.point, cmp.price, cmp.weight, cmp.timeslice, cmp.count },
	weight = { cmp.point, cmp.weight, cmp.price, cmp.timeslice, cmp.count },
	count = { cmp.point, cmp.count, cmp.weight, cmp.price, cmp.timeslice },
	timeslice = { cmp.point, cmp.timeslice, cmp.price, cmp.weight, cmp.count },
}


local pointMeta = {__index = Point}
function Statistics:NewPoint(n)
	n = n or {}
	if getmetatable(n) then
		error("Auctioneer: New Point object already has metatable")
	end
	setmetatable(n, pointMeta)
	return n
end

-- Adds a new Point to the Points array.
function Points:Add(price, count, timeslice, weight)
	local point = Auctioneer:Point{
		price = price,
		count = count,
		timeslice = timeslice,
		weight = weight,

	}
	tinsert(self, point)
end

-- Returns a copy of this Points array.
function Points:Copy()
	local c = Auctioneer:Points{}
	for i, p in ipairs(self) do
		c[i] = p
	end
	return c
end

-- Returns a copy of this Points array sorted by price.
function Points:SortBy(comparison, asc)
	local steps = comparisons[comparison]
	local copy = self:Copy()
	sort(copy, function(a, b)
		for _, step in ipairs(steps) do
			local c = step(a, b)
			if c ~= nil then
				if asc then return c end
				return not c
			end
		end
		return false
	end)
	return copy
end

function Points:Minimum()
	return self[1]
end

function Points:Maximum()
	return self[#self]
end

function Points:Median(options)
	return self:Percentile(50, options)
end

function Points:Percentile(percentile, options)
	if percentile < 0 then percentile = 0 end
	if percentile > 100 then percentile = 100 end

	options = options or {}

	local weighted = options and options.weighted
	local before = options and options.before
	local after =  options and options.after

	if weighted == nil then
		weighted = true
	end

	local n = #self
	if n < 3 then
		return self[1]
	end

	local weight = 0

	if weighted then
		for _, point in ipairs(self) do
			local ts = point.timeslice or 0
			if (not before or ts < before) and (not after or ts >= after) then
				weight = weight + (point.weight or 1)
			end
		end
	end

	local target = weight * percentile / 100
	for _, point in ipairs(self) do
		local ts = point.timeslice or 0
		if (not before or ts < before) and (not after or ts >= after) then
			target = target - (point.weight or 1)
			if target <= 0 then
				return point
			end
		end
	end

	return point[1]
end

local pointsMeta = {__index = Points}
function Statistics:NewPoints(n)
	n = n or {}
	if getmetatable(n) then
		error("Auctioneer: New Points object already has metatable")
	end
	setmetatable(n, pointsMeta)
	return n
end

-- Get the passed item's statistics.
function Statistics:Stats(id)
	local auctionKey = Auctioneer:AuctionKey()
	options = options or {}

	-- We need an Auctioneer stat id key, so we need to convert whatever we're
	-- passed to one of those.

	local t = type(id)
	if t == "number" then
		-- We have been passed the itemID as a number, convert to the string.
		id = tostring(number)
	elseif t == "table" then
		-- We have been passed a table, expect it to be an itemKey:
		--  {itemID, itemLevel, itemSuffix, battlePetSpeciesID}
		id = Auctioneer:ItemKeyKey(id)
	elseif t ~= "string" then
		error("Auctioneer: Statistics method supplied with unexpected id type")
	end

	if not id then
		error("Auctioneer: Statistics method supplied with unknown id")
	end

	local stats = {}
	for _, module in ipairs(Statistics._.Internal.modules) do
		if module.Stats then
			local stat = module:Stats(auctionKey, id)
			--[[
				stat = Auctioneer.Stat{
					name,    -- The name of the statistic
					points,  -- Number of data points used to calculate the numbers
					count,   -- Volume of items usually available on the AH
					average, -- Average of all data points
					median,  -- Median of all data points
					max,     -- Maximum of all data points
					min,     -- Minimum of all data points
					spark,   -- A spark line of price fluctuations over time
				}
			]]

			if stat then
				if not stat.name then
					stat.name = module.name
				end
				stats[module.name] = stat
				tinsert(stats, stat)
			end
		end
	end
	return stats
end
