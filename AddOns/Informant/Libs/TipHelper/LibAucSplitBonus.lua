--[=[
	LibAucSplitBonus.lua
		Provides resources for splitting out BonusIDs from itemLinks
		by brykrys
		This code is hereby released into the Public Domain without warranty.

		Implemented as an embeddable sub-library to allow easier sharing between AddOns.

		Designed for the Auctioneer suite

	Exports:
		lib.ParseToBonusIDString(bonuscount, tail) - extract bonusIDs to a single string

		lib.BONUSIDPATTERNS - a table containing match patterns for use in inline code; see Typical Usage below

		lib.ParseToBonusIDTable(BonusIDCount, Tail, useTable, asnumber) - parse BonusIDs into a table, with options
		lib.QuickToBonusIDTable(BonusIDCount, Tail) - parse BonusIDs into a table, quicker but without options

	Typical Usage:

		Assume the caller will perform the split of the itemlink.
		Usually the caller needs to split the link to work with the other fields; we don't want to split it more than once
		It should be split as follows:

			local head,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,bonuscount,tail = strsplit(":", link, 15)

		(Note the third parameter limits the number of results from split)

		bonuscount will contain the number of bonusIDs
		tail will contain the rest of the itemlink, starting with the block of bonusIDs
		head may be tested to ensure link is an "item" link

		The following code snippet will usually chop out the string containing the bonusIDs:

			local pattern = lib.BONUSIDPATTERNS[bonuscount] -- Note bonuscount must be a string (do not tonumber it)
			if pattern then
				bonuses = tail:match(pattern)
			end

		This snippet may fail if there are too many bonusIDs, in which case use lib.ParseToBonusIDString

	Requires:
		LibStub. See http://www.wowwiki.com/LibStub for more info.

--]=]

local LIBRARY_VERSION_MAJOR = "LibAucSplitBonus"
local LIBRARY_VERSION_MINOR = 1

local lib, oldminor = LibStub:NewLibrary(LIBRARY_VERSION_MAJOR, LIBRARY_VERSION_MINOR)
if not lib then return end
if lib._deactivate then lib._deactivate() end

--[[ Constants ]]--

local tonumber = tonumber

local bonusIDPatterns = {
	["1"] = "%d+",
	["2"] = "%d+:%d+",
	["3"] = "%d+:%d+:%d+",
	["4"] = "%d+:%d+:%d+:%d+",
}

--[[ Setup ]]--

-- previous version, if there was one, will be in 'oldminor'
-- check to see if any special upgrading action is needed
-- e.g. if oldminor and oldminor < X then do something

--[[ Working Code ]]--

local function parsetail_string(BonusIDCount, Tail)
	-- search for the end of the bonusIDs section within Tail
	-- count off the ':' separators until we find the <BonusIDCount>'th
	-- chop out everything up to that mark, as a single string
	local count = tonumber(BonusIDCount)
	if not count then -- probably an incomplete or invalid link
		return
	end

	local found = 0
	for i = 1, count do
		found = Tail:find(":", found + 1)
		if not found then break end
	end
	if found and found > 0 then
		return Tail:sub(1, found - 1)
	else
		-- fallback: grabs all of Tail up to but not including '|' separator
		return Tail:match("([^|]+)") -- todo: consider if we should really use this; at this stage it's looking like an incomplete link?
	end
end

local function parsetail_table(BonusIDCount, Tail, useTable, asnumber)
	-- chop out each bonusID and insert into table,
	-- BonusIDCount tells us when to stop
	local count = tonumber(BonusIDCount)
	if not count then -- probably an incomplete or invalid link
		return
	end

	useTable = useTable or {}

	local from = 1
	for i = 1, count do
		local start, finish, value = Tail:find("(%d+)", from)
		if not start then
			from = nil -- signal failure
			break
		end
		if asnumber then
			value = tonumber(value)
		end
		tinsert(useTable, value)
		from = finish + 2 -- increment by 2 to jump over the ':'
	end

	if from then
		return useTable
	end
end

local function quicktail_table(BonusIDCount, Tail)
	-- construct a table containing the bonusIDs
	-- in most cases should be faster than parsetail_table, but without the options to provide a table or convert to number
	-- creates a table size BonusIDCount + 1, with the last entry being nil; therefore slightly memory inefficient
	local count = tonumber(BonusIDCount)
	if not count then -- probably an incomplete or invalid link
		return
	end
	count = count + 1

	local value = {Tail:Split(":", count)} -- splits into BonusIDCount+1 parts; the last part is the rest of the tail after bonusIDs
	if not value[count] then
		return
	end
	value[count] = nil -- delete the non-bonusID tail chunk
	return value
end

--[[ Example
local function OverallProcess(link)
	local head,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,bonuscount,tail = strsplit(":", link, 15) -- third param limits number of returns
	local lType = head:sub(-4)
	if lType ~= "item" then return end -- must be an item link
	if tail and tail ~= "" and bonuscount ~= "" and bonuscount ~= 0 then -- check we have values for bonuscount & tail
		local pattern = bonusIDPatterns[bonuscount] -- use patterns for small numbers of bonusIDs
		if pattern then
			local bonuses = tail:match(pattern)
			if bonuses then
				return bonuses
			end
		end

		-- not found from pattern, user parser instead
		return parsetail_string(bonuscount, tail)
	end
end
--]]

--[[ Exports ]]--

lib.ParseToBonusIDString = parsetail_string
lib.ParseToBonusIDTable = parsetail_table
lib.QuickToBonusIDTable = quicktail_table

-- export the lookup table to allow modules to implement the lookup inline
-- inline code can be used where speed is required, but we only need 1 instance of the table
lib.BONUSIDPATTERNS = bonusIDPatterns

--[[ Internal ]]--

function lib._deactivate()
	-- placeholder in case future versions has something to deactivate
end
