-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ItemInfo = TSM.Init("Service.ItemInfo") ---@class Service.ItemInfo
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local ItemClass = TSM.Include("Data.ItemClass")
local VendorSell = TSM.Include("Data.VendorSell")
local ItemString = TSM.Include("Util.ItemString")
local Analytics = TSM.Include("Util.Analytics")
local Database = TSM.Include("Util.Database")
local Event = TSM.Include("Util.Event")
local Delay = TSM.Include("Util.Delay")
local TempTable = TSM.Include("Util.TempTable")
local Math = TSM.Include("Util.Math")
local String = TSM.Include("Util.String")
local Log = TSM.Include("Util.Log")
local Table = TSM.Include("Util.Table")
local Reactive = TSM.Include("Util.Reactive")
local DefaultUI = TSM.Include("Service.DefaultUI")
local Settings = TSM.Include("Service.Settings")
local private = {
	db = nil,
	pendingItems = {},
	priorityPendingItems = {},
	priorityPendingTime = 0,
	numRequests = {},
	availableItems = {},
	rebuildStage = nil,
	settings = nil,
	hasChanged = false,
	lastDebugLog = 0,
	stream = nil,
	processInfoTimer = nil,
	processAvailableTimer = nil,
	merchantTimer = nil,
	deferredSetSingleField = {},
	deferredSetSingleFieldTimer = nil,
}
local ITEM_MAX_ID = 999999
local SEP_CHAR = "\002"
local ITEM_INFO_INTERVAL = 0.05
local MAX_REQUESTED_ITEM_INFO = 50
local MAX_REQUESTS_PER_ITEM = 5
local UNKNOWN_ITEM_NAME = L["Unknown Item"]
local PLACEHOLDER_ITEM_NAME = L["Example Item"]
local UNKNOWN_ITEM_TEXTURE = 136254
local DB_VERSION = 13
local ENCODING_NUM_BITS = 6
local ENCODING_NUM_VALUES = 2 ^ ENCODING_NUM_BITS
local ENCODING_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
assert(#ENCODING_ALPHABET == ENCODING_NUM_VALUES)
local ENCODING_TABLE = {}
local ENCODING_TABLE_2 = {}
local DECODING_TABLE = {}
local DECODING_TABLE_1 = {}
local DECODED_NIL_VALUE = ENCODING_NUM_VALUES - 1
for i = 0, ENCODING_NUM_VALUES - 1 do
	local encodedValue = strbyte(ENCODING_ALPHABET, i + 1, i + 1)
	ENCODING_TABLE[i] = encodedValue
	DECODING_TABLE[encodedValue] = i
	if i == DECODED_NIL_VALUE then
		DECODING_TABLE_1[encodedValue] = -1
	else
		DECODING_TABLE_1[encodedValue] = i
	end
end
for i = 0, ENCODING_NUM_VALUES ^ 2 - 1 do
	local value = i
	local charValue0 = value % 2 ^ ENCODING_NUM_BITS
	value = (value - charValue0) / 2 ^ ENCODING_NUM_BITS
	local charValue1 = value % 2 ^ ENCODING_NUM_BITS
	value = (value - charValue1) / 2 ^ ENCODING_NUM_BITS
	ENCODING_TABLE_2[i] = { ENCODING_TABLE[charValue0], ENCODING_TABLE[charValue1] }
	assert(value == 0)
end
local ENCODED_NIL_CHAR = ENCODING_TABLE[DECODED_NIL_VALUE]
local RECORD_DATA_LENGTH_CHARS = 24
local FIELD_INFO = {
	itemLevel = { numBits = 12 },
	minLevel = { numBits = 12 },
	vendorSell = { numBits = 30 },
	maxStack = { numBits = 12 },
	invSlotId = { numBits = 6 },
	texture = { numBits = 30 },
	classId = { numBits = 6 },
	subClassId = { numBits = 6 },
	quality = { numBits = 6 },
	isBOP = { numBits = 6 },
	isCraftingReagent = { numBits = 6 },
	expansionId = { numBits = 6 },
	craftedQuality = { numBits = 6 },
}
do
	local totalLengthChars = 0
	for _, info in pairs(FIELD_INFO) do
		assert(info.numBits % ENCODING_NUM_BITS == 0)
		info.numChars = info.numBits / ENCODING_NUM_BITS
		totalLengthChars = totalLengthChars + info.numChars
		info.nilValue = 2 ^ info.numBits - 1
		info.maxValue = 2 ^ info.numBits - 2
	end
	assert(totalLengthChars == RECORD_DATA_LENGTH_CHARS)
end
local PENDING_STATE_NEW = newproxy()
local PENDING_STATE_CREATED = newproxy()
local ITEM_QUALITY_BY_HEX_LOOKUP = {}
for quality, info in pairs(ITEM_QUALITY_COLORS) do
	ITEM_QUALITY_BY_HEX_LOOKUP[info.hex] = quality
end
-- URLs for non-disenchantable items:
-- 	http://www.wowhead.com/items=2?filter=qu=2%3A3%3A4%3Bcr=8%3A2%3Bcrs=2%3A2%3Bcrv=0%3A0
-- 	http://www.wowhead.com/items=4?filter=qu=2%3A3%3A4%3Bcr=8%3A2%3Bcrs=2%3A2%3Bcrv=0%3A0
local NON_DISENCHANTABLE_ITEMS = {
	["i:11287"] = true,
	["i:11288"] = true,
	["i:11289"] = true,
	["i:11290"] = true,
	["i:20406"] = true,
	["i:20407"] = true,
	["i:20408"] = true,
	["i:21766"] = true,
	["i:52252"] = true,
	["i:52485"] = true,
	["i:52486"] = true,
	["i:52487"] = true,
	["i:52488"] = true,
	["i:60223"] = true,
	["i:75274"] = true,
	["i:84661"] = true,
	["i:89586"] = true,
	["i:97826"] = true,
	["i:97827"] = true,
	["i:97828"] = true,
	["i:97829"] = true,
	["i:97830"] = true,
	["i:97831"] = true,
	["i:97832"] = true,
	["i:109262"] = true,
	["i:186056"] = true,
	["i:186058"] = true,
	["i:186163"] = true,
}
local REBUILD_MSG_THRESHOLD = 5000
local REBUILD_STAGE = {
	IDLE = 1,
	TRIGGERED = 2,
	NOTIFIED = 3,
}



-- ============================================================================
-- Module Loading
-- ============================================================================

ItemInfo:OnModuleLoad(function()
	private.rebuildStage = REBUILD_STAGE.IDLE
	private.stream = Reactive.CreateStream()
	private.processAvailableTimer = Delay.CreateTimer("ITEM_INFO_PROCESS_AVAILABLE", private.ProcessAvailableItems)
	private.processInfoTimer = Delay.CreateTimer("ITEM_INFO_PROCESS_INFO", private.ProcessItemInfo)
	private.merchantTimer = Delay.CreateTimer("ITEM_INFO_SCAN_MERCHANT", private.ScanMerchant)
	private.deferredSetSingleFieldTimer = Delay.CreateTimer("ITEM_INFO_DEFERRED_SET_SINGLE_FIELD", private.HandleDeferredSetSingleField)
end)

ItemInfo:OnSettingsLoad(function()
	private.settings = Settings.NewView()
		:AddKey("global", "internalData", "vendorItems")

	Event.Register("GET_ITEM_INFO_RECEIVED", function(_, itemId, success)
		if not success or itemId <= 0 or itemId > ITEM_MAX_ID or private.numRequests[itemId] == math.huge then
			return
		end
		private.availableItems[itemId] = true
		private.processAvailableTimer:RunForTime(0)
	end)

	-- load the item info database
	local names, itemStrings = nil, nil
	local build, revision = GetBuildInfo()
	local isValid = true
	if not TSMItemInfoDB or TSMItemInfoDB.version ~= DB_VERSION or TSMItemInfoDB.locale ~= GetLocale() or TSMItemInfoDB.build ~= build or TSMItemInfoDB.revision ~= revision then
		isValid = false
	elseif #TSMItemInfoDB.data % RECORD_DATA_LENGTH_CHARS ~= 0 then
		Analytics.Action("CORRUPTED_ITEM_INFO", "DATA", #TSMItemInfoDB.data)
		isValid = false
	else
		names = private.LoadLongString(TSMItemInfoDB.names)
		itemStrings = private.LoadLongString(TSMItemInfoDB.itemStrings)
		if #names ~= #itemStrings then
			Analytics.Action("CORRUPTED_ITEM_INFO", "NAMES_ITEM_STRINGS", #names, #itemStrings)
			isValid = false
			names = nil
			itemStrings = nil
		end
	end
	if not isValid then
		TSMItemInfoDB = {
			names = nil,
			itemStrings = nil,
			data = "",
		}
		private.hasChanged = true
		wipe(private.settings.vendorItems)
	end

	-- load hard-coded vendor costs
	for itemString, cost in VendorSell.Iterator() do
		private.settings.vendorItems[itemString] = private.settings.vendorItems[itemString] or cost
	end

	names = names or {}
	itemStrings = itemStrings or {}
	assert(#names == #itemStrings)
	local numItemsLoaded = #names
	Log.Info("Imported %d items worth of data", numItemsLoaded)
	if not Table.IsSorted(names, private.NameSortHelper) then
		-- we'll sort our data on logout to make ItemInfo.MatchItemFilter a bit more efficient
		private.hasChanged = true
	end

	-- The following code for populating our database is highly optimized as we're processing an excessive amount of data here
	private.db = Database.NewSchema("ITEM_INFO")
		:AddUniqueStringField("itemString")
		:AddStringField("name")
		:AddNumberField("itemLevel")
		:AddNumberField("minLevel")
		:AddNumberField("maxStack")
		:AddNumberField("vendorSell")
		:AddNumberField("invSlotId")
		:AddNumberField("texture")
		:AddNumberField("classId")
		:AddNumberField("subClassId")
		:AddNumberField("quality")
		:AddNumberField("isBOP")
		:AddNumberField("isCraftingReagent")
		:AddNumberField("expansionId")
		:AddNumberField("craftedQuality")
		:AddTrigramIndex("name")
		:Commit()
	private.db:BulkInsertStart()
	for i = 1, numItemsLoaded do
		local itemString = itemStrings[i]
		-- check the itemString
		if ItemString.Get(itemString) == itemString then
			-- load all the fields from the string
			local dataOffset = (i - 1) * RECORD_DATA_LENGTH_CHARS + 1
			local b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20, b21, b22, b23, bExtra = strbyte(TSMItemInfoDB.data, dataOffset, dataOffset + RECORD_DATA_LENGTH_CHARS - 1)
			assert(b23 and not bExtra)

			-- load the fields
			local itemLevel = (b0 == ENCODED_NIL_CHAR and b1 == ENCODED_NIL_CHAR) and -1 or (DECODING_TABLE[b0] + DECODING_TABLE[b1] * 2 ^ ENCODING_NUM_BITS)
			local minLevel = (b2 == ENCODED_NIL_CHAR and b3 == ENCODED_NIL_CHAR) and -1 or (DECODING_TABLE[b2] + DECODING_TABLE[b3] * 2 ^ ENCODING_NUM_BITS)
			local vendorSell = nil
			if b4 == ENCODED_NIL_CHAR and b5 == ENCODED_NIL_CHAR and b6 == ENCODED_NIL_CHAR and b7 == ENCODED_NIL_CHAR and b8 == ENCODED_NIL_CHAR then
				vendorSell = -1
			else
				vendorSell = DECODING_TABLE[b4] + DECODING_TABLE[b5] * 2 ^ ENCODING_NUM_BITS + DECODING_TABLE[b6] * 2 ^ (ENCODING_NUM_BITS * 2) + DECODING_TABLE[b7] * 2 ^ (ENCODING_NUM_BITS * 3) + DECODING_TABLE[b8] * 2 ^ (ENCODING_NUM_BITS * 4)
			end
			local maxStack = (b9 == ENCODED_NIL_CHAR and b10 == ENCODED_NIL_CHAR) and -1 or (DECODING_TABLE[b9] + DECODING_TABLE[b10] * 2 ^ ENCODING_NUM_BITS)
			local invSlotId = DECODING_TABLE_1[b11]
			local texture = nil
			if b12 == ENCODED_NIL_CHAR and b13 == ENCODED_NIL_CHAR and b14 == ENCODED_NIL_CHAR and b15 == ENCODED_NIL_CHAR and b16 == ENCODED_NIL_CHAR then
				texture = -1
			else
				texture = DECODING_TABLE[b12] + DECODING_TABLE[b13] * 2 ^ ENCODING_NUM_BITS + DECODING_TABLE[b14] * 2 ^ (ENCODING_NUM_BITS * 2) + DECODING_TABLE[b15] * 2 ^ (ENCODING_NUM_BITS * 3) + DECODING_TABLE[b16] * 2 ^ (ENCODING_NUM_BITS * 4)
			end
			local classId = DECODING_TABLE_1[b17]
			local subClassId = DECODING_TABLE_1[b18]
			local quality = DECODING_TABLE_1[b19]
			local isBOP = DECODING_TABLE_1[b20]
			local isCraftingReagent = DECODING_TABLE_1[b21]
			local expansionId = DECODING_TABLE_1[b22]
			local craftedQuality = DECODING_TABLE_1[b23]

			-- store in the DB
			local name = names[i]
			private.db:BulkInsertNewRowFast15(itemString, name, itemLevel, minLevel, maxStack, vendorSell, invSlotId, texture, classId, subClassId, quality, isBOP, isCraftingReagent, expansionId, craftedQuality)
		end
	end
	private.db:BulkInsertEnd()
	private.stream:Send(nil)

	-- process pending item info every 0.05 seconds
	private.processInfoTimer:RunForTime(0)
	-- scan the merchant when the goods are shown
	DefaultUI.RegisterMerchantVisibleCallback(private.ScanMerchant, true)
	Event.Register("MERCHANT_UPDATE", function()
		private.merchantTimer:RunForTime(0.1)
	end)
end)

ItemInfo:OnModuleUnload(function()
	-- save the DB
	if not TSMItemInfoDB or not private.hasChanged then
		-- bailing if TSMItemInfoDB doesn't exist gives us an easy way to wipe the DB via "/run TSMItemInfoDB = nil"
		return
	end
	local names = {}
	local itemStrings = {}
	local dataParts = {}
	local rawData = private.db:GetRawData()
	local numFields = private.db:GetNumStoredFields()
	for i = 1, private.db:GetNumRows() do
		local startOffset = (i - 1) * numFields + 1
		local itemString, name, itemLevel, minLevel, maxStack, vendorSell, invSlotId, texture, classId, subClassId, quality, isBOP, isCraftingReagent, expansionId, craftedQuality = unpack(rawData, startOffset, startOffset + numFields - 1)
		local b0, b1, b2, b3, b4, b5, b6, b7, b8, b9 = ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR
		local b10, b11, b12, b13, b14, b15, b16, b17, b18, b19 = ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR
		local b20, b21, b22, b23 = ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR, ENCODED_NIL_CHAR
		if itemLevel ~= -1 then
			local chars = ENCODING_TABLE_2[itemLevel]
			b0 = chars[1]
			b1 = chars[2]
		end
		if minLevel ~= -1 then
			local chars = ENCODING_TABLE_2[minLevel]
			b2 = chars[1]
			b3 = chars[2]
		end
		if vendorSell ~= -1 then
			local charValue0 = vendorSell % 2 ^ ENCODING_NUM_BITS
			vendorSell = (vendorSell - charValue0) / 2 ^ ENCODING_NUM_BITS
			local charValue1 = vendorSell % 2 ^ ENCODING_NUM_BITS
			vendorSell = (vendorSell - charValue1) / 2 ^ ENCODING_NUM_BITS
			local charValue2 = vendorSell % 2 ^ ENCODING_NUM_BITS
			vendorSell = (vendorSell - charValue2) / 2 ^ ENCODING_NUM_BITS
			local charValue3 = vendorSell % 2 ^ ENCODING_NUM_BITS
			vendorSell = (vendorSell - charValue3) / 2 ^ ENCODING_NUM_BITS
			local charValue4 = vendorSell % 2 ^ ENCODING_NUM_BITS
			vendorSell = (vendorSell - charValue4) / 2 ^ ENCODING_NUM_BITS
			if vendorSell ~= 0 then
				error("Invalid remainder")
			end
			b4 = ENCODING_TABLE[charValue0]
			b5 = ENCODING_TABLE[charValue1]
			b6 = ENCODING_TABLE[charValue2]
			b7 = ENCODING_TABLE[charValue3]
			b8 = ENCODING_TABLE[charValue4]
		end
		if maxStack ~= -1 then
			local chars = ENCODING_TABLE_2[maxStack]
			b9 = chars[1]
			b10 = chars[2]
		end
		if invSlotId ~= -1 then
			b11 = ENCODING_TABLE[invSlotId]
		end
		if texture ~= -1 then
			local charValue0 = texture % 2 ^ ENCODING_NUM_BITS
			texture = (texture - charValue0) / 2 ^ ENCODING_NUM_BITS
			local charValue1 = texture % 2 ^ ENCODING_NUM_BITS
			texture = (texture - charValue1) / 2 ^ ENCODING_NUM_BITS
			local charValue2 = texture % 2 ^ ENCODING_NUM_BITS
			texture = (texture - charValue2) / 2 ^ ENCODING_NUM_BITS
			local charValue3 = texture % 2 ^ ENCODING_NUM_BITS
			texture = (texture - charValue3) / 2 ^ ENCODING_NUM_BITS
			local charValue4 = texture % 2 ^ ENCODING_NUM_BITS
			texture = (texture - charValue4) / 2 ^ ENCODING_NUM_BITS
			if texture ~= 0 then
				error("Invalid remainder")
			end
			b12 = ENCODING_TABLE[charValue0]
			b13 = ENCODING_TABLE[charValue1]
			b14 = ENCODING_TABLE[charValue2]
			b15 = ENCODING_TABLE[charValue3]
			b16 = ENCODING_TABLE[charValue4]
		end
		if classId ~= -1 then
			b17 = ENCODING_TABLE[classId]
		end
		if subClassId ~= -1 then
			b18 = ENCODING_TABLE[subClassId]
		end
		if quality ~= -1 then
			b19 = ENCODING_TABLE[quality]
		end
		if isBOP ~= -1 then
			b20 = ENCODING_TABLE[isBOP]
		end
		if isCraftingReagent ~= -1 then
			b21 = ENCODING_TABLE[isCraftingReagent]
		end
		if expansionId ~= -1 then
			b22 = ENCODING_TABLE[expansionId]
		end
		if craftedQuality ~= -1 then
			b23 = ENCODING_TABLE[craftedQuality]
		end

		names[i] = name
		itemStrings[i] = itemString
		dataParts[i] = strchar(b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20, b21, b22, b23)

		if #dataParts[i] ~= RECORD_DATA_LENGTH_CHARS then
			names[i] = nil
			itemStrings[i] = nil
			dataParts[i] = nil
		end
	end
	if not Table.IsSorted(names, private.NameSortHelper) then
		-- sort all the data by the name to make ItemInfo.MatchItemFilter a bit more efficient in the future
		local lowerNames = {}
		local sortedIndexes = {}
		for i = 1, #names do
			if names[i] ~= nil then
				tinsert(sortedIndexes, i)
				lowerNames[i] = strlower(names[i])
			end
		end
		Table.SortWithValueLookup(sortedIndexes, lowerNames)
		local newNames = {}
		local newItemStrings = {}
		local newDataParts = {}
		for i, oldIndex in ipairs(sortedIndexes) do
			newNames[i] = names[oldIndex]
			newItemStrings[i] = itemStrings[oldIndex]
			newDataParts[i] = dataParts[oldIndex]
		end
		names = newNames
		itemStrings = newItemStrings
		dataParts = newDataParts
	end
	TSMItemInfoDB.names = private.StoreLongString(names)
	TSMItemInfoDB.itemStrings = private.StoreLongString(itemStrings)
	TSMItemInfoDB.data = table.concat(dataParts)

	if #TSMItemInfoDB.data % RECORD_DATA_LENGTH_CHARS ~= 0 then
		TSMItemInfoDB = nil
		return
	end

	local build, revision = GetBuildInfo()
	TSMItemInfoDB.version = DB_VERSION
	TSMItemInfoDB.locale = GetLocale()
	TSMItemInfoDB.build = build
	TSMItemInfoDB.revision = revision
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

function ItemInfo.ClearDB()
	TSMItemInfoDB = nil
	ReloadUI()
end

---Gets a publisher for item info changes.
---@return ReactivePublisher
function ItemInfo.GetPublisher()
	return private.stream:Publisher()
end

---Sets whether or not query updates are paused on the item info DB
---@param paused boolean Whether or not query updates are paused
function ItemInfo.SetQueryUpdatesPaused(paused)
	private.db:SetQueryUpdatesPaused(paused)
end

---Store the name of an item.
-- This function is used to opportunistically populate the item cache with item names.
---@param itemString string The itemString
---@param name string The item name
function ItemInfo.StoreItemName(itemString, name)
	assert(not ItemString.ParseLevel(itemString))
	private.DeferSetSingleField(itemString, "name", name)
end

---Store information about an item from its link.
---This function is used to opportunistically populate the item cache with item info.
---@param itemLink string The item link
function ItemInfo.StoreItemInfoByLink(itemLink)
	-- see if we can extract the quality and name from the link
	local colorHex, name = strmatch(itemLink, "^(\124cff[0-9a-z]+)\124[Hh].+\124h%[(.+)%]\124h\124r$")
	if name then
		name = gsub(name, " \124A:.+\124a", "")
	end
	if name == "" or name == UNKNOWN_ITEM_NAME or name == PLACEHOLDER_ITEM_NAME then
		name = nil
	end
	local quality = ITEM_QUALITY_BY_HEX_LOOKUP[colorHex]
	local itemString = ItemString.Get(itemLink)
	if not itemString then
		return nil
	end
	assert(not ItemString.ParseLevel(itemString))
	if name then
		private.DeferSetSingleField(itemString, "name", name)
	end
	if quality then
		private.DeferSetSingleField(itemString, "quality", quality)
	end
end

---Get the itemString from an item name.
---This API will return the base itemString when there are multiple variants with the same name and will return nil if
---there are multiple distinct items with the same name.
---@param name string The item name
---@return string?
function ItemInfo.ItemNameToItemString(name)
	local result = nil
	local query = private.db:NewQuery()
		:Select("itemString")
		:Equal("name", name)
	for _, itemString in query:Iterator() do
		if not result then
			result = itemString
		elseif result ~= ItemString.GetUnknown() then
			-- multiple matching items
			if ItemString.GetBase(itemString) == ItemString.GetBase(result) then
				result = ItemString.GetBase(itemString)
			else
				result = ItemString.GetUnknown()
			end
		end
	end
	query:Release()
	return result
end

---Get the name.
---@param item string The item
---@return string?
function ItemInfo.GetName(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif itemString == ItemString.GetUnknown() then
		return UNKNOWN_ITEM_NAME
	elseif itemString == ItemString.GetPlaceholder() then
		return PLACEHOLDER_ITEM_NAME
	end
	if ItemString.ParseLevel(itemString) then
		itemString = ItemString.GetBaseFast(itemString)
	end
	local name = private.GetField(itemString, "name")
	if not name then
		-- we can fetch info instantly for pets, so try again afterwards
		ItemInfo.FetchInfo(itemString)
		name = private.GetField(itemString, "name")
	end
	if not name then
		-- if we got passed an item link, we can maybe extract the name from it
		name = strmatch(item, "^\124cff[0-9a-z]+\124[Hh].+\124h%[(.+)%]\124h\124r$")
		if name then
			name = gsub(name, " \124A:.+\124a", "")
		end
		if name == "" or name == UNKNOWN_ITEM_NAME or name == PLACEHOLDER_ITEM_NAME then
			name = nil
		end
		if name then
			private.DeferSetSingleField(itemString, "name", name)
		end
	end
	return name
end

---Get the link (or an "Unknown Item" link).
---@param item string The item
---@return string?
function ItemInfo.GetLink(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	end
	local link = nil
	local itemStringType, speciesId, level, quality, health, power, speed, petId = strsplit(":", itemString)
	local name = ItemInfo.GetName(item) or UNKNOWN_ITEM_NAME
	local wowItemString = nil
	if itemStringType == "p" then
		quality = tonumber(quality) or 0
		wowItemString = strjoin(":", "battlepet", speciesId, level or "", quality or "", health or "", power or "", speed or "", petId or "")
	else
		quality = ItemInfo.GetQuality(item)
		wowItemString = ItemString.ToWow(itemString)
	end
	local qualityColor = ITEM_QUALITY_COLORS[quality] and ITEM_QUALITY_COLORS[quality].hex or "|cffff0000"
	link = qualityColor.."|H"..wowItemString.."|h["..name.."]|h|r"
	return link
end

---Get the expansion id.
---@param item string The item
---@return number?
function ItemInfo.GetExpansion(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif ItemString.ParseLevel(itemString) then
		itemString = ItemString.GetBaseFast(itemString)
	end
	local expansionId = private.GetFieldValueHelper(itemString, "expansionId", true, true, 0)
	return expansionId
end

---Gets the crafted quality.
---@param item string The item
---@return number?
function ItemInfo.GetCraftedQuality(item)
	if not Environment.HasFeature(Environment.FEATURES.CRAFTING_QUALITY) then
		return nil
	end
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif itemString == ItemString.GetUnknown() or itemString == ItemString.GetPlaceholder() then
		return nil
	elseif ItemString.ParseLevel(itemString) then
		itemString = ItemString.GetBaseFast(itemString)
	end
	local craftedQuality = private.GetFieldValueHelper(itemString, "craftedQuality", false, false, 0)
	return (craftedQuality or 0) > 0 and craftedQuality or nil
end

---Get the quality.
---@param item string The item
---@return number?
function ItemInfo.GetQuality(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif ItemString.ParseLevel(itemString) then
		itemString = ItemString.GetBaseFast(itemString)
	end
	local itemType, _, randOrLevel, bonusOrQuality = strsplit(":", itemString)
	randOrLevel = tonumber(randOrLevel)
	bonusOrQuality = tonumber(bonusOrQuality)
	local petDefault = itemType == "p" and (bonusOrQuality or 0) or nil
	local quality = private.GetFieldValueHelper(itemString, "quality", false, false, petDefault)
	if quality then
		return quality
	end
	if itemType == "i" and randOrLevel and not bonusOrQuality then
		-- there is a random enchant, but no bonusIds, so the quality is the same as the base item
		quality = ItemInfo.GetQuality(ItemString.GetBase(itemString))
	elseif itemType == "i" and bonusOrQuality then
		-- this item has bonusIds
		local classId = ItemInfo.GetClassId(itemString)
		if classId and classId ~= Enum.ItemClass.Weapon and classId ~= Enum.ItemClass.Armor then
			-- the bonusId does not affect the quality of this item
			quality = ItemInfo.GetQuality(ItemString.GetBase(itemString))
		end
	end
	if quality then
		private.DeferSetSingleField(itemString, "quality", quality)
	else
		ItemInfo.FetchInfo(itemString)
	end
	return quality
end

---Get the quality color.
---@param item string The item
---@return string?
function ItemInfo.GetQualityColor(item)
	local itemString = ItemString.Get(item)
	if itemString == ItemString.GetUnknown() then
		return "|cffff0000"
	elseif itemString == ItemString.GetPlaceholder() then
		return "|cffffffff"
	end
	local quality = ItemInfo.GetQuality(itemString)
	return quality and ITEM_QUALITY_COLORS[quality] and ITEM_QUALITY_COLORS[quality].hex or nil
end

---Get the item level.
---@param item string The item
---@return number?
function ItemInfo.GetItemLevel(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	end
	local itemStringLevel, itemStringLevelIsAbs = ItemString.ParseLevel(itemString)
	if itemStringLevel then
		if itemStringLevelIsAbs then
			return itemStringLevel
		else
			-- level is relative to the base item
			local baseItemLevel = ItemInfo.GetItemLevel(ItemString.GetBaseFast(itemString))
			if not baseItemLevel then
				return nil
			end
			return baseItemLevel + itemStringLevel
		end
	end
	local itemLevel = private.GetField(itemString, "itemLevel")
	if itemLevel then
		return itemLevel
	end
	local itemType, _, randOrLevel, bonusOrQuality = strsplit(":", itemString)
	randOrLevel = tonumber(randOrLevel)
	bonusOrQuality = tonumber(bonusOrQuality)
	if itemType == "p" then
		-- we can fetch info instantly for pets so try again
		ItemInfo.FetchInfo(itemString)
		itemLevel = private.GetField(itemString, "itemLevel")
		if not itemLevel then
			-- just get the level from the item string
			itemLevel = randOrLevel or 0
			private.DeferSetSingleField(itemString, "itemLevel", itemLevel)
		end
	elseif itemType == "i" then
		if randOrLevel and not bonusOrQuality then
			-- there is a random enchant, but no bonusIds, so the itemLevel is the same as the base item
			itemLevel = ItemInfo.GetItemLevel(ItemString.GetBaseFast(itemString))
		end
		if itemLevel then
			private.DeferSetSingleField(itemString, "itemLevel", itemLevel)
		end
		ItemInfo.FetchInfo(itemString)
	else
		error("Invalid item: "..tostring(itemString))
	end
	return itemLevel
end

---Get the min level.
---@param item string The item
---@return number?
function ItemInfo.GetMinLevel(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif ItemString.ParseLevel(itemString) then
		-- Create a fake itemString with the same itemLevel and look up that.
		itemString = ItemString.Get(ItemString.ToWow(itemString))
		assert(itemString)
	end
	-- if there is a random enchant, but no bonusIds, so the itemLevel is the same as the base item
	local baseIsSame = strmatch(itemString, "^i:[0-9]+:[%-0-9]+$") and true or false
	local minLevel = private.GetFieldValueHelper(itemString, "minLevel", baseIsSame, true, 0)
	if not minLevel and ItemString.IsItem(itemString) then
		local baseItemString = ItemString.GetBase(itemString)
		local canHaveVariations = ItemInfo.CanHaveVariations(itemString)
		if itemString ~= baseItemString and canHaveVariations == false then
			-- the bonusId does not affect the minLevel of this item
			minLevel = ItemInfo.GetMinLevel(baseItemString)
			if minLevel then
				private.DeferSetSingleField(itemString, "minLevel", minLevel)
			end
		end
	end
	return minLevel
end

---Get the max stack size.
---@param item string The item
---@return number?
function ItemInfo.GetMaxStack(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif ItemString.ParseLevel(itemString) then
		itemString = ItemString.GetBaseFast(itemString)
	end
	local maxStack = private.GetFieldValueHelper(itemString, "maxStack", true, true, 1)
	if not maxStack and ItemString.IsItem(itemString) then
		-- we might be able to deduce the maxStack based on the classId and subClassId
		local classId = ItemInfo.GetClassId(item)
		local subClassId = ItemInfo.GetSubClassId(item)
		if classId and subClassId then
			if classId == 1 then
				maxStack = 1
			elseif classId == 2 then
				maxStack = 1
			elseif classId == 4 then
				if subClassId > 0 then
					maxStack = 1
				end
			elseif classId == 15 then
				if subClassId == 5 then
					maxStack = 1
				end
			elseif classId == 16 then
				maxStack = 20
			elseif classId == 17 then
				maxStack = 1
			elseif classId == 18 then
				maxStack = 1
			end
		end
		if maxStack then
			private.DeferSetSingleField(itemString, "maxStack", maxStack)
		end
	end
	return maxStack
end

---Get the inventory slot id.
---@param item string The item
---@return number?
function ItemInfo.GetInvSlotId(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif ItemString.ParseLevel(itemString) then
		itemString = ItemString.GetBaseFast(itemString)
	end
	local invSlotId = private.GetFieldValueHelper(itemString, "invSlotId", true, true, 0)
	return invSlotId
end

---Get the texture.
---@param item string The item
---@return number?
function ItemInfo.GetTexture(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif itemString == ItemString.GetUnknown() then
		return UNKNOWN_ITEM_TEXTURE
	elseif ItemString.ParseLevel(itemString) then
		itemString = ItemString.GetBaseFast(itemString)
	end
	local texture = private.GetFieldValueHelper(itemString, "texture", true, false, nil)
	if texture then
		return texture
	end
	private.StoreGetItemInfoInstant(itemString)
	return private.GetField(itemString, "texture")
end

---Get the vendor sell price.
---@param item string The item
---@return number?
function ItemInfo.GetVendorSell(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif ItemString.ParseLevel(itemString) then
		-- The vendorSell price does seem to scale linearly with item level, but at a different
		-- rate for different items, so there's no easy way to figure this out directly. Instead,
		-- we create a fake itemString with the same itemLevel and look up that.
		itemString = ItemString.Get(ItemString.ToWow(itemString))
		assert(itemString)
	end
	local vendorSell = private.GetFieldValueHelper(itemString, "vendorSell", false, false, 0)
	return (vendorSell or 0) > 0 and vendorSell or nil
end

---Get the class id.
---@param item string The item
---@return number?
function ItemInfo.GetClassId(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif ItemString.ParseLevel(itemString) then
		itemString = ItemString.GetBaseFast(itemString)
	end
	local classId = private.GetFieldValueHelper(itemString, "classId", true, true, Enum.ItemClass.Battlepet)
	if classId then
		return classId
	end
	private.StoreGetItemInfoInstant(itemString)
	return private.GetField(itemString, "classId")
end

---Get the sub-class id.
---@param item string The item
---@return number?
function ItemInfo.GetSubClassId(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif ItemString.ParseLevel(itemString) then
		itemString = ItemString.GetBaseFast(itemString)
	end
	local subClassId = private.GetFieldValueHelper(itemString, "subClassId", true, true, nil)
	if subClassId then
		return subClassId
	end
	private.StoreGetItemInfoInstant(itemString)
	return private.GetField(itemString, "subClassId")
end


---Get whether or not the item is bind on pickup.
---@param item string The item
---@return boolean?
function ItemInfo.IsSoulbound(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif ItemString.ParseLevel(itemString) then
		itemString = ItemString.GetBaseFast(itemString)
	end
	local isBOP = private.GetFieldValueHelper(itemString, "isBOP", true, true, false)
	if type(isBOP) == "number" then
		isBOP = isBOP == 1
	end
	return isBOP
end

---Get whether or not the item is a crafting reagent.
---@param item string The item
---@return boolean?
function ItemInfo.IsCraftingReagent(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif ItemString.ParseLevel(itemString) then
		itemString = ItemString.GetBaseFast(itemString)
	end
	local isCraftingReagent = private.GetFieldValueHelper(itemString, "isCraftingReagent", true, true, false)
	if type(isCraftingReagent) == "number" then
		isCraftingReagent = isCraftingReagent == 1
	end
	return isCraftingReagent
end

---Get the vendor buy price.
---@param item string The item
---@return number?
function ItemInfo.GetVendorBuy(item)
	local itemString = ItemString.Get(item)
	if not itemString or ItemString.ParseLevel(itemString) then
		return nil
	end
	return private.settings.vendorItems[itemString]
end

---Get whether or not the item is disenchantable.
---@param item string The item
---@return boolean?
function ItemInfo.IsDisenchantable(item)
	local itemString = ItemString.Get(item)
	if not itemString then
		return nil
	elseif ItemString.ParseLevel(itemString) then
		itemString = ItemString.GetBaseFast(itemString)
	end
	local invSlotId = ItemInfo.GetInvSlotId(itemString)
	if invSlotId == Enum.InventoryType.IndexBodyType or invSlotId == Enum.InventoryType.IndexTabardType or NON_DISENCHANTABLE_ITEMS[itemString] then
		return nil
	end
	local quality = ItemInfo.GetQuality(itemString)
	local classId = ItemInfo.GetClassId(itemString)
	if not quality or not classId then
		return nil
	end
	return quality >= (Enum.ItemQuality.Good or Enum.ItemQuality.Uncommon) and quality < Enum.ItemQuality.Legendary and (classId == Enum.ItemClass.Armor or classId == Enum.ItemClass.Weapon)
end

---Get whether or not the item is a commodity in WoW 8.3 (and above).
---@param item string The item
---@return number?
function ItemInfo.IsCommodity(item)
	if not Environment.HasFeature(Environment.FEATURES.COMMODITY_ITEMS) then
		return false
	end
	local stackSize = ItemInfo.GetMaxStack(item)
	if not stackSize then
		return nil
	end
	return stackSize > 1
end

---Get whether or not the item can have variations.
---@param item string The item
---@return boolean?
function ItemInfo.CanHaveVariations(item)
	local classId = ItemInfo.GetClassId(item)
	if not classId then
		return nil
	end
	if classId == Enum.ItemClass.Armor or classId == Enum.ItemClass.Weapon or classId == Enum.ItemClass.Battlepet then
		return true
	elseif classId == Enum.ItemClass.Gem then
		local subClassId = ItemInfo.GetSubClassId(item)
		if not subClassId then
			return nil
		end
		return subClassId == Enum.ItemGemSubclass.Artifactrelic
	else
		return false
	end
end

---Fetch info for the item.
---This function can be called ahead of time for items which we know we need to have info cached for.
---@param item? string The item
function ItemInfo.FetchInfo(item)
	if item == ItemString.GetUnknown() or item == ItemString.GetPlaceholder() or ItemString.ParseLevel(item) then
		return
	end
	local itemString = ItemString.Get(item)
	if not itemString then return end
	if ItemString.IsPet(itemString) then
		if not private.GetField(itemString, "name") then
			private.StoreGetItemInfoInstant(itemString)
		end
		return
	end
	private.pendingItems[itemString] = private.pendingItems[itemString] or PENDING_STATE_NEW
	if private.priorityPendingTime ~= time() then
		wipe(private.priorityPendingItems)
		private.priorityPendingTime = time()
	end
	private.priorityPendingItems[itemString] = true

	private.processInfoTimer:RunForTime(0)
end

---Generalize an item link.
---@param itemLink string The item link
---@return string?
function ItemInfo.GeneralizeLink(itemLink)
	local itemString = ItemString.Get(itemLink)
	if not itemString then return end
	if ItemString.IsItem(itemString) and not strmatch(itemString, "i:[0-9]+:[0-9%-]*:[0-9]*") then
		-- swap out the itemString part of the link
		local leader, quality, _, name, trailer, trailer2, extra = strsplit("\124", itemLink)
		if trailer2 and not extra then
			return strjoin("\124", leader, quality, "H"..ItemString.ToWow(itemString), name, trailer, trailer2)
		end
	end
	return ItemInfo.GetLink(itemString)
end

---Creates a query which matches the specified item filter.
---@param itemFilter ItemFilter The item filter
---@param query? DatabaseQuery Optionally, an existing query to reset and reuse
---@return DatabaseQuery
function ItemInfo.MatchItemFilterQuery(itemFilter, query)
	if query then
		query:Reset()
	else
		query = private.db:NewQuery()
	end

	local str = itemFilter:GetStr()
	if str then
		if itemFilter:GetExactOnly() then
			query:Equal("name", str)
		else
			query:Contains("name", str)
		end
	end
	local minQuality = itemFilter:GetMinQuality()
	if minQuality then
		query:GreaterThanOrEqual("quality", minQuality)
	end
	local maxQuality = itemFilter:GetMaxQuality()
	if maxQuality then
		query:LessThanOrEqual("quality", maxQuality)
	end
	local minLevel = itemFilter:GetMinLevel()
	if minLevel then
		query:GreaterThanOrEqual("minLevel", minLevel)
	end
	local maxLevel = itemFilter:GetMaxLevel()
	if maxLevel then
		query:LessThanOrEqual("minLevel", maxLevel)
	end
	local minItemLevel = itemFilter:GetMinItemLevel()
	if minItemLevel then
		query:GreaterThanOrEqual("itemLevel", minItemLevel)
	end
	local maxItemLevel = itemFilter:GetMaxItemLevel()
	if maxItemLevel then
		query:LessThanOrEqual("itemLevel", maxItemLevel)
	end
	local classId = itemFilter:GetClass()
	if classId then
		query:Equal("classId", classId)
	end
	local subClassId = itemFilter:GetSubClass()
	if subClassId then
		query:Equal("subClassId", subClassId)
	end
	local invSlotId = itemFilter:GetInvSlotId()
	if invSlotId then
		query:Equal("invSlotId", invSlotId)
	end

	return query
end



-- ============================================================================
-- Helper Functions
-- ============================================================================

function private.GetFieldValueHelper(itemString, field, baseIsSame, storeBaseValue, petDefaultValue)
	local value = private.GetField(itemString, field)
	if value ~= nil then
		return value
	end
	ItemInfo.FetchInfo(itemString)
	if ItemString.IsPet(itemString) then
		-- We can fetch info instantly for pets so try again
		value = private.GetField(itemString, field)
		if value == nil and petDefaultValue ~= nil then
			value = petDefaultValue
			private.DeferSetSingleField(itemString, field, value)
		end
	end
	if value == nil and baseIsSame then
		-- The value is the same for the base item
		local baseItemString = ItemString.GetBase(itemString)
		if baseItemString ~= itemString then
			value = private.GetFieldValueHelper(baseItemString, field)
			if value ~= nil and storeBaseValue then
				private.DeferSetSingleField(itemString, field, value)
			end
		end
	end
	return value
end

function private.ProcessPendingItemInfo(itemString)
	local name = private.GetField(itemString, "name")
	local quality = private.GetField(itemString, "quality")
	local itemLevel = private.GetField(itemString, "itemLevel")
	if (private.numRequests[itemString] or 0) > MAX_REQUESTS_PER_ITEM then
		-- give up on this item
		if private.numRequests[itemString] ~= math.huge then
			private.numRequests[itemString] = math.huge
			local itemId = ItemString.IsItem(itemString) and ItemString.ToId(itemString) or nil
			if Environment.IsRetail() then
				Log.Err("Giving up on item info for %s", itemString)
			end
			if itemId and itemString == ItemString.GetBaseFast(itemString) then
				private.numRequests[itemId] = math.huge
			end
		end
		private.pendingItems[itemString] = nil
		private.priorityPendingItems[itemString] = nil
	elseif name and name ~= "" and quality and quality >= 0 and itemLevel and itemLevel >= 0 then
		-- we have info for this item
		private.pendingItems[itemString] = nil
		private.priorityPendingItems[itemString] = nil
		private.numRequests[itemString] = nil
	else
		-- request info for this item
		if not private.StoreGetItemInfo(itemString) then
			private.numRequests[itemString] = (private.numRequests[itemString] or 0) + 1
			return true
		end
	end
	return false
end

function private.ProcessItemInfo()
	private.processInfoTimer:RunForTime(ITEM_INFO_INTERVAL)
	if InCombatLockdown() then
		return
	end
	local startTime = GetTimePreciseSec()
	private.db:SetQueryUpdatesPaused(true)

	-- create rows for items which don't exist at all in the DB in bulk
	private.db:BulkInsertStart()
	local priorityPendingItems = TempTable.Acquire()
	local pendingItems = TempTable.Acquire()
	for itemString, state in pairs(private.pendingItems) do
		if state == PENDING_STATE_NEW then
			local baseItemString = ItemString.GetBase(itemString)
			private.CreateDBRowIfNotExists(itemString, true)
			if baseItemString ~= itemString then
				private.CreateDBRowIfNotExists(baseItemString, true)
			end
			private.pendingItems[itemString] = PENDING_STATE_CREATED
		end
		if private.priorityPendingItems[itemString] then
			tinsert(priorityPendingItems, itemString)
		else
			tinsert(pendingItems, itemString)
		end
	end
	private.db:BulkInsertEnd()

	-- throttle the max number of item info requests based on the frame rate
	local framerate = GetFramerate()
	local maxRequests = nil
	if framerate < 30 then
		maxRequests = MAX_REQUESTED_ITEM_INFO / 5
	elseif framerate < 60 then
		maxRequests = MAX_REQUESTED_ITEM_INFO / 3
	elseif framerate < 100 then
		maxRequests = MAX_REQUESTED_ITEM_INFO / 2
	else
		maxRequests = MAX_REQUESTED_ITEM_INFO
	end

	local shouldStop = false
	local numRequested = 0
	-- do the priority items first
	for i = 1, #priorityPendingItems do
		if private.ProcessPendingItemInfo(priorityPendingItems[i]) then
			numRequested = numRequested + 1
			if numRequested >= maxRequests then
				shouldStop = true
				break
			end
		end
		if (GetTimePreciseSec() - startTime) > ITEM_INFO_INTERVAL / 5 and numRequested >= maxRequests / 2 then
			-- bail early since we've already used a good number of CPU cycles this frame
			shouldStop = true
			break
		end
	end
	if not shouldStop then
		for i = 1, #pendingItems do
			if private.ProcessPendingItemInfo(pendingItems[i]) then
				numRequested = numRequested + 1
				if numRequested >= maxRequests then
					shouldStop = true
					break
				end
			end
			if (GetTimePreciseSec() - startTime) > ITEM_INFO_INTERVAL / 5 and numRequested >= maxRequests / 2 then
				-- bail early since we've already used a good number of CPU cycles this frame
				shouldStop = true
				break
			end
		end
	end
	if #pendingItems > 0 and GetTime() - private.lastDebugLog > 5 then
		private.lastDebugLog = GetTime()
		Log.Info("%d/%d pending items (just requested %d)", #pendingItems, #priorityPendingItems, numRequested)
	end
	TempTable.Release(pendingItems)
	TempTable.Release(priorityPendingItems)

	if private.rebuildStage == REBUILD_STAGE.IDLE and numRequested >= maxRequests / 2 and Table.Count(private.pendingItems) >= REBUILD_MSG_THRESHOLD then
		private.rebuildStage = REBUILD_STAGE.TRIGGERED
		-- delay this message to make it more likely to be seen and make sure we're actually rebuilding
		local timer = Delay.CreateTimer("ITEM_INFO_REBUILD_MESSAGE", private.ShowRebuildMessage)
		timer:RunForTime(1)
	end
	if not next(private.pendingItems) then
		if private.rebuildStage == REBUILD_STAGE.NOTIFIED then
			Log.PrintUser(L["Done rebuilding item cache."])
			private.rebuildStage = REBUILD_STAGE.IDLE
		end
		private.processInfoTimer:Cancel()
	end

	private.db:SetQueryUpdatesPaused(false)
end

function private.ShowRebuildMessage()
	if Table.Count(private.pendingItems) < REBUILD_MSG_THRESHOLD then
		-- no longer rebuilding
		private.rebuildStage = REBUILD_STAGE.IDLE
		return
	end
	Log.PrintUser(L["TSM is currently rebuilding its item cache which may cause FPS drops and result in TSM not being fully functional until this process is complete. This is normal and typically takes a few minutes."])
	private.rebuildStage = REBUILD_STAGE.NOTIFIED
end

function private.ScanMerchant()
	for i = 1, GetMerchantNumItems() do
		local itemString = ItemString.Get(GetMerchantItemLink(i))
		if itemString then
			local currentValue = private.settings.vendorItems[itemString]
			local newValue = nil
			local _, _, price, quantity, numAvailable, _, _, extendedCost = GetMerchantItemInfo(i)
			-- only store vendor prices for unlimited quantity items
			if numAvailable == -1 then
				-- bug with big keech vendor returning extendedCost = true for gold only items so need to check GetMerchantItemCostInfo
				if price > 0 and (not extendedCost or GetMerchantItemCostInfo(i) == 0) then
					newValue = Math.Round(price / quantity)
				end
				if newValue ~= currentValue then
					private.settings.vendorItems[itemString] = newValue
					private.stream:Send(itemString)
				end
			end
		end
	end
end

function private.CheckFieldValue(key, value)
	if value == -1 then
		return
	end
	assert(value >= 0 and value <= FIELD_INFO[key].maxValue)
end

function private.GetField(itemString, key)
	local value = private.db:GetUniqueRowField("itemString", itemString, key)
	if value == -1 or value == "" then
		return nil
	end
	return value
end

function private.CreateDBRowIfNotExists(itemString, isBulkInsert)
	if private.db:HasUniqueRow("itemString", itemString) then
		return
	end
	if isBulkInsert then
		private.db:BulkInsertNewRow(itemString, "", -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1)
	else
		private.db:NewRow()
			:SetField("itemString", itemString)
			:SetField("name", "")
			:SetField("minLevel", -1)
			:SetField("itemLevel", -1)
			:SetField("maxStack", -1)
			:SetField("vendorSell", -1)
			:SetField("quality", -1)
			:SetField("isBOP", -1)
			:SetField("isCraftingReagent", -1)
			:SetField("texture", -1)
			:SetField("classId", -1)
			:SetField("subClassId", -1)
			:SetField("invSlotId", -1)
			:SetField("expansionId", -1)
			:SetField("craftedQuality", -1)
			:Create()
	end
	private.hasChanged = true
end

function private.DeferSetSingleField(itemString, key, value)
	if type(value) == "boolean" then
		value = value and 1 or 0
	end
	if key ~= "name" then
		private.CheckFieldValue(key, value)
	end
	Table.InsertMultiple(private.deferredSetSingleField, itemString, key, value)
	private.deferredSetSingleFieldTimer:RunForFrames(0)
end

function private.HandleDeferredSetSingleField()
	for _, itemString, key, value in Table.StrideIterator(private.deferredSetSingleField, 3) do
		-- Make sure it actually changed
		if private.db:GetUniqueRowField("itemString", itemString, key) ~= value then
			private.CreateDBRowIfNotExists(itemString)
			private.db:SetUniqueRowField("itemString", itemString, key, value)
			private.hasChanged = true
			private.stream:Send(itemString)
		end
	end
end

function private.SetItemInfoInstantFields(itemString, texture, classId, subClassId, invSlotId)
	private.CheckFieldValue("texture", texture)
	private.CheckFieldValue("classId", classId)
	private.CheckFieldValue("subClassId", subClassId)
	private.CheckFieldValue("invSlotId", invSlotId)
	private.CreateDBRowIfNotExists(itemString)
	private.db:SetUniqueRowField("itemString", itemString, "texture", texture)
	private.db:SetUniqueRowField("itemString", itemString, "classId", classId)
	private.db:SetUniqueRowField("itemString", itemString, "subClassId", subClassId)
	private.db:SetUniqueRowField("itemString", itemString, "invSlotId", invSlotId)
	private.hasChanged = true
	private.stream:Send(itemString)
end

function private.StoreGetItemInfoInstant(itemString)
	local itemStringType, id, extra1, extra2 = strmatch(itemString, "^([pi]):([0-9]+):?([0-9]*):?([0-9]*)")
	id = tonumber(id)
	if private.GetField(itemString, "texture") and private.GetField(itemString, "invSlotId") then
		-- we already have info cached for this item
		return
	end
	extra1 = tonumber(extra1)
	extra2 = tonumber(extra2)

	if itemStringType == "i" then
		local _, classStr, subClassStr, equipSlot, texture, classId, subClassId = GetItemInfoInstant(id)
		equipSlot = equipSlot and equipSlot ~= "" and _G[equipSlot] or nil
		if not texture then
			return
		end
		-- some items (such as i:37445) give a classId of -1 for some reason in which case we can look up the classId
		if classId < 0 then
			classId = ItemClass.GetClassIdFromClassString(classStr)
			if not classId and not Environment.IsRetail() then
				-- this can happen for items which don't yet exist in classic (i.e. WoW Tokens)
				return
			end
			assert(subClassStr == "")
			subClassId = 0
		end
		local invSlotId = equipSlot and ItemClass.GetInventorySlotIdFromInventorySlotString(equipSlot) or 0
		private.SetItemInfoInstantFields(itemString, texture, classId, subClassId, invSlotId)
		local baseItemString = ItemString.GetBase(itemString)
		if baseItemString ~= itemString then
			private.SetItemInfoInstantFields(baseItemString, texture, classId, subClassId, invSlotId)
		end
	elseif itemStringType == "p" then
		if not Environment.HasFeature(Environment.FEATURES.BATTLE_PETS) then
			return
		end
		local name, texture, petTypeId = C_PetJournal.GetPetInfoBySpeciesID(id)
		if not texture then
			return
		end
		-- we can now store all the info for this pet
		local classId = Enum.ItemClass.Battlepet
		local subClassId = petTypeId - 1
		local invSlotId = 0
		local minLevel = extra1 or 0
		local itemLevel = extra1 or 0
		local quality = extra2 or 0
		local maxStack = 1
		local vendorSell = 0
		local isBOP = 0
		local isCraftingReagent = 0
		local expansionId = -1
		local craftedQuality = -1
		private.SetItemInfoInstantFields(itemString, texture, classId, subClassId, invSlotId)
		private.SetGetItemInfoFields(itemString, name, minLevel, itemLevel, maxStack, vendorSell, quality, isBOP, isCraftingReagent, expansionId, craftedQuality)
		local baseItemString = ItemString.GetBase(itemString)
		if baseItemString ~= itemString then
			minLevel = 0
			itemLevel = 0
			quality = 0
			private.SetItemInfoInstantFields(baseItemString, texture, classId, subClassId, invSlotId)
			private.SetGetItemInfoFields(baseItemString, name, minLevel, itemLevel, maxStack, vendorSell, quality, isBOP, isCraftingReagent, expansionId, craftedQuality)
		end
	else
		assert("Invalid itemString: "..itemString)
	end
end

function private.SetGetItemInfoFields(itemString, name, minLevel, itemLevel, maxStack, vendorSell, quality, isBOP, isCraftingReagent, expansionId, craftedQuality)
	private.CheckFieldValue("minLevel", minLevel)
	private.CheckFieldValue("itemLevel", itemLevel)
	private.CheckFieldValue("maxStack", maxStack)
	private.CheckFieldValue("vendorSell", vendorSell)
	private.CheckFieldValue("quality", quality)
	private.CheckFieldValue("isBOP", isBOP)
	private.CheckFieldValue("isCraftingReagent", isCraftingReagent)
	private.CheckFieldValue("expansionId", expansionId)
	private.CheckFieldValue("craftedQuality", craftedQuality)
	private.CreateDBRowIfNotExists(itemString)
	private.db:SetUniqueRowField("itemString", itemString, "name", name)
	private.db:SetUniqueRowField("itemString", itemString, "minLevel", minLevel)
	private.db:SetUniqueRowField("itemString", itemString, "itemLevel", itemLevel)
	private.db:SetUniqueRowField("itemString", itemString, "maxStack", maxStack)
	private.db:SetUniqueRowField("itemString", itemString, "vendorSell", vendorSell)
	private.db:SetUniqueRowField("itemString", itemString, "quality", quality)
	private.db:SetUniqueRowField("itemString", itemString, "isBOP", isBOP)
	private.db:SetUniqueRowField("itemString", itemString, "isCraftingReagent", isCraftingReagent)
	private.db:SetUniqueRowField("itemString", itemString, "expansionId", expansionId)
	private.db:SetUniqueRowField("itemString", itemString, "craftedQuality", craftedQuality)
	private.hasChanged = true
	private.stream:Send(itemString)
end

function private.StoreGetItemInfo(itemString)
	private.StoreGetItemInfoInstant(itemString)
	assert(ItemString.IsItem(itemString))
	local wowItemString = ItemString.ToWow(itemString)
	local baseItemString = ItemString.GetBase(itemString)
	local baseWowItemString = ItemString.ToWow(baseItemString)

	local name, link, quality, itemLevel, minLevel, _, _, maxStack, _, _, vendorSell, _, _, bindType, expansionId, _, isCraftingReagent = GetItemInfo(baseWowItemString)
	local craftedQuality = nil
	if not Environment.HasFeature(Environment.FEATURES.CRAFTING_QUALITY) then
		expansionId = -1
		craftedQuality = -1
	elseif link then
		craftedQuality = strmatch(link, "\124A:Professions%-ChatIcon%-Quality%-Tier([0-9]+)")
		craftedQuality = tonumber(craftedQuality) or -1
	end
	local isBOP = (bindType == LE_ITEM_BIND_ON_ACQUIRE or bindType == LE_ITEM_BIND_QUEST) and 1 or 0
	isCraftingReagent = isCraftingReagent and 1 or 0
	-- some items (i.e. "i:40752" produce a very high max stack, so cap it)
	maxStack = maxStack and min(maxStack, FIELD_INFO.maxStack.maxValue) or nil
	-- some items (i.e. "i:117356::1:573") produce an negative min level
	minLevel = minLevel and max(minLevel, 0) or nil

	-- store info for the base item
	if name and quality and craftedQuality then
		private.SetGetItemInfoFields(baseItemString, name, minLevel, itemLevel, maxStack, vendorSell, quality, isBOP, isCraftingReagent, expansionId, craftedQuality)
	end
	local gotInfo = true
	if not name or name == "" or not quality or quality < 0 or not itemLevel or itemLevel < 0 or not craftedQuality then
		gotInfo = false
	end

	-- store info for the specific item if it's different
	if itemString ~= baseItemString then
		-- get new values of the fields which can change from the base item
		local baseVendorSell = vendorSell
		name, _, quality, _, minLevel, _, _, _, _, _, vendorSell = GetItemInfo(wowItemString)
		-- some items (i.e. "i:130064::2:196:1812") produce a negative vendor sell, so just use the base one
		if vendorSell and vendorSell < 0 then
			vendorSell = baseVendorSell
		end
		-- some items (i.e. "i:117356::1:573") produce an negative min level
		minLevel = minLevel and max(minLevel, 0) or nil
		itemLevel = GetDetailedItemLevelInfo(wowItemString)
		if name or quality or itemLevel or maxStack then
			if not name then
				name = ""
				minLevel = -1
			end
			quality = quality or -1
			itemLevel = itemLevel or -1
			expansionId = expansionId or -1
			if not maxStack then
				maxStack = -1
				vendorSell = -1
				isBOP = -1
				isCraftingReagent = -1
			end
			craftedQuality = -1
			private.SetGetItemInfoFields(itemString, name, minLevel, itemLevel, maxStack, vendorSell, quality, isBOP, isCraftingReagent, expansionId, craftedQuality)
		end
		if not name or name == "" or not quality or quality < 0 or not itemLevel or itemLevel < 0 then
			gotInfo = false
		end
	end

	return gotInfo
end

function private.ProcessAvailableItems()
	private.db:SetQueryUpdatesPaused(true)

	-- bulk insert items we didn't previously know about
	private.db:BulkInsertStart()
	for itemId in pairs(private.availableItems) do
		local itemString = "i:"..itemId
		private.CreateDBRowIfNotExists(itemString, true)
	end
	private.db:BulkInsertEnd()

	-- remove the items we process after processing them all because GET_ITEM_INFO_RECEIVED events may fire as we do this
	local processedItems = TempTable.Acquire()
	for itemId in pairs(private.availableItems) do
		processedItems[itemId] = true
		local itemString = "i:"..itemId
		if private.StoreGetItemInfo(itemString) then
			private.pendingItems[itemString] = nil
			private.priorityPendingItems[itemString] = nil
		end
	end
	for itemId in pairs(processedItems) do
		private.availableItems[itemId] = nil
	end
	TempTable.Release(processedItems)

	private.db:SetQueryUpdatesPaused(false)
end

function private.NameSortHelper(a, b)
	return strlower(a) < strlower(b)
end

function private.LoadLongString(value)
	local result = {}
	if type(value) == "string" then
		String.SafeSplit(value, SEP_CHAR, result)
	elseif type(value) == "table" then
		for _, part in ipairs(value) do
			String.SafeSplit(part, SEP_CHAR, result)
		end
	else
		assert(value == nil)
	end
	return result
end

function private.StoreLongString(values)
	assert(type(values) == "table")
	-- store no more than 1000 values per string
	if #values == 0 then
		return nil
	elseif #values <= 1000 then
		return table.concat(values, SEP_CHAR)
	else
		local result = {}
		for i = 1, #values, 1000 do
			tinsert(result, table.concat(values, SEP_CHAR, i, min(i + 1000 - 1, #values)))
		end
		return result
	end
end
