--[=[
	LibAucItemCache.lua
		Provides caching of GetItemInfo returns
		by brykrys
		This code is hereby released into the Public Domain without warranty.

		Implemented as an embedded library to allow easier sharing between AddOns.

		Designed for the Auctioneer suite http://auctioneeraddon.com/

	Usage:
		-- *** Note these use '.' not ':' ***

		lib.GetItemInfoCache(item [, select [, mode]])
			item : itemlink, itemID, as supported by GetItemInfo
			select: skips some of the return values;
				e.g. select=3 will skip the first two return values, and will return the 3rd value onward
			mode: cache override modes, to be implemented

		lib.CacheFlush() -- immediately clear the cache
		lib.CacheControl(...) -- to be implemented
		lib.GetVersion() -- get minor version

	Requires:
		LibStub. See http://www.wowwiki.com/LibStub for more info.
		LibAucSplitBonus

--]=]


local LIBRARY_VERSION_MAJOR = "LibAucItemCache"
local LIBRARY_VERSION_MINOR = 1

local lib, oldminor = LibStub:NewLibrary(LIBRARY_VERSION_MAJOR, LIBRARY_VERSION_MINOR)
if not lib then return end
if lib._deactivate then lib._deactivate() end

-- Load sub-lib
local libASB = LibStub("LibAucSplitBonus")

-- Constants

local type, unpack = type, unpack

local NUM_RETURNS = 17 -- number of returns from GetItemInfo

local bonusIDPatterns, ParseToBonusIDString = libASB.BONUSIDPATTERNS, libASB.ParseToBonusIDString

local WEAKVALUEMETA = {__mode="v"}


--[[ Setup ]]--

-- previous version, if there was one, will be in 'oldminor'
-- check to see if any special upgrading action is needed
-- e.g. if oldminor and oldminor < X then do something

local function resetCache()
	lib._cache = {
		basic = {},
		bonus = setmetatable({}, WEAKVALUEMETA),
	}
end
resetCache()
lib._version = LIBRARY_VERSION_MINOR

local Monitor = { -- performance #monitor
	total = 0,
	lastitem = 0,
	basic_hit = 0,
	bonus_hit = 0,
	called = 0,
	returned = 0,
}

--[[ Public Interface ]]--

local lastItem, lastCached
function lib.GetItemInfoCache(item, sel, mode) -- *** Note this uses '.' not ':' ***
	local usecache, cachekey, bonuses, values

	sel = sel or 1
	Monitor.total = Monitor.total + 1 -- #monitor

	if item == lastItem then
		Monitor.lastitem = Monitor.lastitem + 1 -- #monitor
		return unpack(lastCached, sel, NUM_RETURNS)
	end



	local t = type(item)
	if t == "number" then
		cachekey = tostring(item)
	elseif t == "string" then
		local header,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14 = strsplit(":", item, 15)
		local lType = header:sub(-4) -- get last 4 letters of link type
		if lType == "item" then

			cachekey = s1
			if s7 and s7 ~= "" and s7 ~= "0" then
				cachekey = cachekey .. ":" .. s7
			end
			-- bonusID code from LibAucSplitBonus and nTipHelper
			-- extract bonusID string from s14
			if s14 and s14 ~= "" and s13 ~= "" and s13 ~= "0" then
				local pattern = bonusIDPatterns[s13]
				if pattern then -- for small numbers of bonusIDs we can look up a pattern to save time
					bonuses = s14:match(pattern)
				end
				if not bonuses then
					bonuses = ParseToBonusIDString(s13, s14)
				end
			end
		end
	else
		return
	end

	if bonuses then
		usecache = lib._cache.bonus
		cachekey = cachekey .. "." .. bonuses
	else
		usecache = lib._cache.basic
	end

	values = usecache[cachekey]
	if values then
		--[
		if bonuses then
			Monitor.bonus_hit = Monitor.bonus_hit + 1 -- #monitor
		else
			Monitor.basic_hit = Monitor.basic_hit + 1 -- #monitor
		end
		--]]
		lastItem, lastCached = item, values
		return unpack(values, sel, NUM_RETURNS)
	end

	Monitor.called = Monitor.called + 1 -- #monitor
	values = {GetItemInfo(item)}
	if not values[1] then -- nil return from GetItemInfo
		return
	end
	Monitor.returned = Monitor.returned + 1 -- #monitor
	
	-- ### Temporary Fix - do not cache items with bonusIDs ###
	if bonuses then
		return unpack(values, sel, NUM_RETURNS)
	end
	-- ### end fix

	if cachekey then
		usecache[cachekey] = values
	end

	lastItem, lastCached = item, values
	return unpack(values, sel, NUM_RETURNS)
end

function lib.CacheFlush()
	resetCache()
end

function lib.CacheControl()
	-- return nil to signal unsupported mode
end

function lib.GetVersion()
	return lib._version
end

function lib.GetPerformance(asstring) -- #monitor
	if not Monitor then return end
	if asstring then
		local combined = Monitor.lastitem + Monitor.basic_hit + Monitor.bonus_hit -- all cache hits
		-- precalc these to check for division by 0
		local combinedpercent = 0
		if Monitor.total > 0 then combinedpercent = floor(100 * combined / Monitor.total + .5) end
		local returnedpercent = 0
		if Monitor.called > 0 then returnedpercent = floor(100 * Monitor.returned / Monitor.called + .5) end
		return format("LibAucItemCache performance Total=%d\nHits Last=%d Basic=%d Bonus=%d Combined=%d (%d%%)\nGetItemInfo Called=%d Returned=%d (%d%%)",
			Monitor.total,
			Monitor.lastitem, Monitor.basic_hit, Monitor.bonus_hit, combined, combinedpercent,
			Monitor.called, Monitor.returned, returnedpercent)
	else
		return Monitor
	end
end




--[[ Internal ]]--


function lib._deactivate()
	lib._cache = nil
end
