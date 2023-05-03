-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local CustomPrice = TSM.Init("Service.CustomPrice") ---@class Service.CustomPrice
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local DisenchantInfo = TSM.Include("Data.DisenchantInfo")
local TempTable = TSM.Include("Util.TempTable")
local Math = TSM.Include("Util.Math")
local Money = TSM.Include("Util.Money")
local String = TSM.Include("Util.String")
local Log = TSM.Include("Util.Log")
local Theme = TSM.Include("Util.Theme")
local ItemString = TSM.Include("Util.ItemString")
local SmartMap = TSM.Include("Util.SmartMap")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Settings = TSM.Include("Service.Settings")
local Conversions = TSM.Include("Service.Conversions")
local private = {
	context = {},
	priceSourceKeys = {},
	priceSourceInfo = {},
	customPriceCache = {},
	proxyData = {},
	settings = nil,
	sanitizeCache = {},
	customSourceCallbacks = {},
}
local ITEM_STRING_PATTERN = "[ip]:[0-9:%-]+"
local MONEY_PATTERNS = {
	"[^%.]([0-9]+g[ ]*[0-9]+s[ ]*[0-9]+c)", -- g/s/c
	"[^%.]([0-9]+g[ ]*[0-9]+s)", -- g/s
	"[^%.]([0-9]+g[ ]*[0-9]+c)", -- g/c
	"[^%.]([0-9]+s[ ]*[0-9]+c)", -- s/c
	"[^%.]([0-9]+g)", -- g
	"[^%.]([0-9]+s)", -- s
	"[^%.]([0-9]+c)", -- c
}
local MATH_FUNCTIONS = {
	["avg"] = "self._avg",
	["min"] = "self._min",
	["max"] = "self._max",
	["first"] = "self._first",
	["check"] = "self._check",
	["ifgt"] = "self._ifgt",
	["ifgte"] = "self._ifgte",
	["iflt"] = "self._iflt",
	["iflte"] = "self._iflte",
	["ifeq"] = "self._ifeq",
	["round"] = "self._round",
	["roundup"] = "self._roundup",
	["rounddown"] = "self._rounddown",
}
local CUSTOM_PRICE_FUNC_TEMPLATE = [[
	return function(self, _item, _baseitem)
		local isTop
		local context = self.globalContext
		if not context.num then
			context.num = 0
			isTop = true
		end
		context.num = context.num + 1
		if context.num > 100 then
			if (context.lastPrint or 0) + 1 < time() then
				context.lastPrint = time()
				self.loopError(self.origStr)
			end
			return
		end

		local result = floor((%s) + 0.5)
		if context.num then
			context.num = context.num - 1
		end
		if isTop then
			context.num = nil
		end
		if not result or self.IsInvalid(result) or result <= 0 then return end
		return result
	end
]]
local function IsInvalid(num)
	-- We want to treat math.huge/-math.huge/NAN as invalid.
	return num == math.huge or num == -math.huge or Math.IsNan(num)
end
-- Make sure our IsInvalid function continues to work as expected
assert(IsInvalid(Math.GetNan()) and IsInvalid(math.huge) and IsInvalid(math.huge) and not IsInvalid(0) and not IsInvalid(1000))
local COMPARISONS = {
	["gt"] = 1,
	["gte"] = 2,
	["lt"] = 3,
	["lte"] = 4,
	["eq"] = 5,
}



-- ============================================================================
-- Module Loading
-- ============================================================================

CustomPrice:OnSettingsLoad(function()
	private.settings = Settings.NewView()
		:AddKey("global", "userData", "customPriceSources")

	for name, str in pairs(private.settings.customPriceSources) do
		if CustomPrice.ValidateName(name, true) then
			str = private.SanitizeCustomPriceString(str)
			private.settings.customPriceSources[name] = str
			for _, data in pairs(private.proxyData) do
				if data.origStr == str then
					data.customPriceSourceNames[name] = true
				end
			end
		else
			Log.PrintfUser(L["Removed custom price source (%s) which has an invalid name."], name)
			CustomPrice.DeleteCustomPriceSource(name)
		end
	end
end)



-- ============================================================================
-- Module Functions
-- ============================================================================

---Register a built-in price source.
---@param moduleName string The name of the module which provides this source
---@param key string The key for this price source (i.e. DBMarket)
---@param label string The label which describes this price source for display to the user
---@param callback function The price source callback
---@param fullLink boolean Whether or not the full itemLink is required instead of just the itemString
---@param arg? any An additional argument which is passed to the callback
---@param isVolatile? booolean Should be set if the price source may change without CustomPrice.OnSourceChange being called
function CustomPrice.RegisterSource(moduleName, key, label, callback, fullLink, arg, isVolatile)
	tinsert(private.priceSourceKeys, strlower(key))
	private.priceSourceInfo[strlower(key)] = {
		moduleName = moduleName,
		key = key,
		label = label,
		callback = callback,
		takeItemString = not fullLink,
		arg = arg,
		isVolatile = isVolatile,
		cache = {},
	}
end

---Register a callback when custom sources change.
---@param callback function The callback function
function CustomPrice.RegisterCustomSourceCallback(callback)
	tinsert(private.customSourceCallbacks, callback)
end

---Create a new custom price source.
---@param name string The name of the custom price source
---@param value string The value of the custom price source
function CustomPrice.CreateCustomPriceSource(name, value)
	assert(name ~= "")
	assert(gsub(name, "([a-z]+)", "") == "")
	assert(not private.settings.customPriceSources[name])
	value = private.SanitizeCustomPriceString(value)
	private.settings.customPriceSources[name] = value
	for _, data in pairs(private.proxyData) do
		if data.origStr == value then
			data.customPriceSourceNames[name] = true
		end
	end
	wipe(private.customPriceCache)
	private.CallCustomSourceCallbacks()
end

---Rename a custom price source.
---@param oldName string The old name of the custom price source
---@param newName string The new name of the custom price source
function CustomPrice.RenameCustomPriceSource(oldName, newName)
	if oldName == newName then
		return
	end
	local value = private.settings.customPriceSources[oldName]
	assert(value)
	private.settings.customPriceSources[newName] = value
	private.settings.customPriceSources[oldName] = nil
	for _, data in pairs(private.proxyData) do
		data.customPriceSourceNames[oldName] = nil
		if data.origStr == value then
			data.customPriceSourceNames[newName] = true
		end
	end
	wipe(private.customPriceCache)
	CustomPrice.OnSourceChange(oldName)
	CustomPrice.OnSourceChange(newName)
	private.CallCustomSourceCallbacks()
end

---Delete a custom price source.
---@param name string The name of the custom price source
function CustomPrice.DeleteCustomPriceSource(name)
	assert(private.settings.customPriceSources[name])
	private.settings.customPriceSources[name] = nil
	for _, data in pairs(private.proxyData) do
		data.customPriceSourceNames[name] = nil
	end
	wipe(private.customPriceCache)
	CustomPrice.OnSourceChange(name)
	private.CallCustomSourceCallbacks()
end

---Sets the value of a custom price source.
---@param name string The name of the custom price source
---@param value string The value of the custom price source
function CustomPrice.SetCustomPriceSource(name, value)
	assert(private.settings.customPriceSources[name])
	value = private.SanitizeCustomPriceString(value)
	private.settings.customPriceSources[name] = value
	for _, data in pairs(private.proxyData) do
		data.customPriceSourceNames[name] = data.origStr == value or nil
	end
	wipe(private.customPriceCache)
	CustomPrice.OnSourceChange(name)
end

---Bulk creates custom price sources from a group import.
---@param customSources table<string, string> The custom sources to impor
---@param replaceExisting boolean Whether or not existing sources should be replaced
function CustomPrice.BulkCreateCustomPriceSourcesFromImport(customSources, replaceExisting)
	for name, value in pairs(customSources) do
		value = private.SanitizeCustomPriceString(value)
		assert(not private.settings.customPriceSources[name] or replaceExisting)
		if private.settings.customPriceSources[name] then
			CustomPrice.SetCustomPriceSource(name, value)
		else
			CustomPrice.CreateCustomPriceSource(name, value)
		end
	end
end

---Print built-in price sources to chat.
function CustomPrice.PrintSources()
	Log.PrintUser(L["Below is a list of all available price sources, along with a brief description of what they represent."])
	local moduleList = TempTable.Acquire()

	for _, info in pairs(private.priceSourceInfo) do
		if not tContains(moduleList, info.moduleName) then
			tinsert(moduleList, info.moduleName)
		end
	end
	sort(moduleList, private.ModuleSortFunc)

	for _, module in ipairs(moduleList) do
		Log.PrintUserRaw("|cffffff00"..module..":|r")
		local lines = TempTable.Acquire()
		for _, info in pairs(private.priceSourceInfo) do
			if info.moduleName == module then
				tinsert(lines, format("  %s (%s)", Log.ColorUserAccentText(info.key), info.label))
			end
		end
		sort(lines)
		for _, line in ipairs(lines) do
			Log.PrintfUserRaw(line)
		end
		TempTable.Release(lines)
	end

	TempTable.Release(moduleList)
end

---Gets the description of a price source.
---@param key string The custom price source
---@return string?
function CustomPrice.GetDescription(key)
	local info = private.priceSourceInfo[key]
	return info and info.label or nil
end

---Validate a custom price name.
---@param customPriceName string The custom price name
---@param ignoreExistingCustomPriceSources boolean Whether or not to ignore existing custom price sources
---@return boolean @Whether or not the custom price name is valid
function CustomPrice.ValidateName(customPriceName, ignoreExistingCustomPriceSources)
	-- custom price names must be lowercase
	if strlower(customPriceName) ~= customPriceName then
		return false, L["Custom price names can only contain lowercase letters."]
	end
	-- User defined price sources
	if not ignoreExistingCustomPriceSources and private.settings.customPriceSources[customPriceName] then
		return false, format(L["Custom price name %s already exists."], Theme.GetColor("INDICATOR"):ColorText(customPriceName))
	end
	-- TSM defined price sources
	for _, source in ipairs(private.priceSourceKeys) do
		if strlower(source) == strlower(customPriceName) then
			return false, format(L["Custom price name %s is a reserved word which cannot be used."], Theme.GetColor("INDICATOR"):ColorText(customPriceName))
		end
	end
	-- Math Functions
	for mathFunction in pairs(MATH_FUNCTIONS) do
		if strlower(mathFunction) == strlower(customPriceName) then
			return false, format(L["Custom price name %s is a reserved word which cannot be used."], Theme.GetColor("INDICATOR"):ColorText(customPriceName))
		end
	end
	-- Comparisons
	for comparison in pairs(COMPARISONS) do
		if strlower(comparison) == strlower(customPriceName) then
			return false, format(L["Custom price name %s is a reserved word which cannot be used."], Theme.GetColor("INDICATOR"):ColorText(customPriceName))
		end
	end
	return true
end

---Validate a custom price string.
---@param customPriceStr string The custom price string
---@param badPriceSources? table A table of price sources (as keys) which aren't allowed to be used
---@return boolean @Whether or not the custom price string is valid
---@return string? @The error message if the custom price string was invalid
function CustomPrice.Validate(customPriceStr, badPriceSources)
	local proxy, err = private.ParseCustomPrice(customPriceStr, badPriceSources)
	return proxy and true or false, err
end

---Evaulates a custom price source for an item.
---@param customPriceStr string The custom price string
---@param itemString string The item to evaluate the custom price string for
---@param allowZero boolean If true, allows the result to be 0
---@return number? @The resulting value or nil if the custom price string is invalid
---@return string? @The error message if the custom price string was invalid
function CustomPrice.GetValue(customPriceStr, itemString, allowZero)
	local proxy, err = private.ParseCustomPrice(customPriceStr)
	if not proxy then
		return nil, err
	end
	local value = nil
	local mapReader = private.proxyData[proxy].mapReader
	if mapReader then
		value = mapReader[itemString]
	else
		value = proxy(itemString)
	end
	if not value or value < 0 or (not allowZero and value == 0) then
		return nil, L["No value was returned by the custom price for the specified item."]
	end
	return value
end

---Gets a built-in price source's value for an item.
---@param itemString string The item to evaluate the price source for
---@param key string The key of the price source
---@return number? @The resulting value or nil if no price was found for the item
function CustomPrice.GetItemPrice(itemString, key)
	itemString = ItemString.Get(itemString)
	if not itemString then
		return
	end

	local info = private.priceSourceInfo[strlower(key)]
	if not info then
		return
	end
	local cachedValue = info.cache[itemString]
	if cachedValue ~= nil then
		assert(not info.isVolatile)
		return cachedValue or nil
	end
	if not info.takeItemString then
		-- this price source does not take an itemString, so pass it an itemLink instead
		itemString = ItemInfo.GetLink(itemString)
		if not itemString then
			return
		end
	end
	local value = info.callback(itemString, info.arg)
	value = type(value) == "number" and value or nil
	if not info.isVolatile then
		info.cache[itemString] = value or false
	end
	return value
end

---Gets the conversion value for an item.
---@param itemString string
---@param customPrice any
---@param method any
---@return number
---@return table
function CustomPrice.GetConversionsValue(itemString, customPrice, method)
	if not customPrice then
		return
	end

	-- Calculate disenchant value first
	if (not method or method == Conversions.METHOD.DISENCHANT) and ItemInfo.IsDisenchantable(itemString) then
		local classId = ItemInfo.GetClassId(itemString)
		local quality = ItemInfo.GetQuality(itemString)
		local itemLevel = Environment.IsRetail() and ItemInfo.GetItemLevel(itemString) or ItemInfo.GetItemLevel(ItemString.GetBase(itemString))
		local expansion = Environment.IsRetail() and ItemInfo.GetExpansion(itemString) or nil
		local value = 0
		if quality and itemLevel and classId then
			for targetItemString in DisenchantInfo.TargetItemIterator() do
				local amountOfMats = DisenchantInfo.GetTargetItemSourceInfo(targetItemString, classId, quality, itemLevel, expansion)
				if amountOfMats then
					local matValue = CustomPrice.GetValue(customPrice, targetItemString)
					if not matValue or matValue == 0 then
						return
					end
					value = value + matValue * amountOfMats
				end
			end
		end

		value = floor(value)
		if value > 0 then
			return value, Conversions.METHOD.DISENCHANT
		end
	end

	-- Calculate other conversion values
	local value = 0
	for targetItemString, rate, _, _, _, _, targetItemMethod in Conversions.TargetItemsByMethodIterator(itemString, method) do
		method = method or targetItemMethod
		local matValue = CustomPrice.GetValue(customPrice, targetItemString)
		value = value + (matValue or 0) * rate
	end

	value = Math.Round(value)
	return value > 0 and value or nil, method
end

---Iterate over the price sources.
---@return any @An iterator which provides the following fields: `index, key, moduleName, label`
function CustomPrice.Iterator()
	return private.IteratorHelper, nil, 0
end

---Returns whether or not a key is a math function.
---@param key string The key to check
---@return boolean
function CustomPrice.IsMathFunction(key)
	return MATH_FUNCTIONS[strlower(key)] and true or false
end

---Returns whether or not a key is a source.
---@param key string The key to check
---@return boolean
function CustomPrice.IsSource(key)
	key = strlower(key)
	return (private.priceSourceInfo[key] or key == "convert") and true or false
end

---Returns whether or not a key is a custom source.
---@param key string The key to check
---@return boolean
function CustomPrice.IsCustomSource(key)
	return private.settings.customPriceSources[strlower(key)] and true or false
end

---Should be called when the value of a registered source changes.
---@param key string The key of the price source
---@param itemString? string The item which the source changed for or nil if it changed for all items
function CustomPrice.OnSourceChange(key, itemString)
	key = strlower(key)
	if private.priceSourceInfo[key] then
		if itemString then
			private.priceSourceInfo[key].cache[itemString] = nil
		else
			wipe(private.priceSourceInfo[key].cache)
		end
	end
	local isSpecificItem = itemString ~= ItemString.GetBase(itemString) or not ItemString.HasNonBase(itemString)
	for _, data in pairs(private.proxyData) do
		if data.map then
			local clearAll, clearItem, clearBaseItem = false, false, false
			if data.dependantPriceSources[key] then
				if not itemString then
					-- clear all items
					clearAll = true
				else
					for dependantItemString in pairs(data.dependantPriceSources[key]) do
						if dependantItemString == "_item" then
							if isSpecificItem then
								-- just clear the specific item
								clearItem = true
							else
								-- clear all items which have a matching baseItemString
								clearBaseItem = true
							end
						elseif dependantItemString == "_baseitem" then
							if not isSpecificItem then
								-- just clear the item which was passed (and was a base item)
								clearItem = true
							end
						else
							if dependantItemString == (isSpecificItem and itemString or ItemString.GetBase(dependantItemString)) then
								-- clear all items
								clearAll = true
							end
						end
					end
				end
			end

			if data.dependantPriceSources._convertPriceSource == key then
				-- TODO: could optimize this to only clear the items which have the specified item as a source item, but this should be pretty rare
				clearAll = true
			end

			data.map:SetCallbacksPaused(true)
			if clearAll then
				data.map:Invalidate()
				for name in pairs(data.customPriceSourceNames) do
					CustomPrice.OnSourceChange(name)
				end
			elseif clearBaseItem then
				for mapItemString in data.map:Iterator() do
					if ItemString.GetBase(mapItemString) == itemString then
						data.map:ValueChanged(mapItemString)
						for name in pairs(data.customPriceSourceNames) do
							CustomPrice.OnSourceChange(name, mapItemString)
						end
					end
				end
			end
			if not clearAll and clearItem then
				data.map:ValueChanged(itemString)
				for name in pairs(data.customPriceSourceNames) do
					CustomPrice.OnSourceChange(name, itemString)
				end
			end
			data.map:SetCallbacksPaused(false)
		end
	end
end

---Iterates over the custom sources which a string depends on.
---@param str string The custom string
---@return fun():number, string, string @An iterator with fields: `index`, `name`, `customSourceStr`
function CustomPrice.DependantCustomSourceIterator(str)
	local result = TempTable.Acquire()
	local proxy = private.ParseCustomPrice(str)
	if proxy then
		local data = private.proxyData[proxy]
		for name, customSourceStr in pairs(private.settings.customPriceSources) do
			if data.dependantPriceSources[name] then
				tinsert(result, name)
				tinsert(result, customSourceStr)
			end
		end
	end
	return TempTable.Iterator(result, 2)
end



-- ============================================================================
-- Helper Functions
-- ============================================================================

private.customPriceFunctions = {
	IsInvalid = IsInvalid,
	loopError = function(str)
		Log.PrintUser(L["Loop detected in the following custom price:"].." "..Log.ColorUserAccentText(str))
	end,
	_avg = function(...)
		local total, count = 0, 0
		for i = 1, select('#', ...) do
			local num = select(i, ...)
			if type(num) == "number" and not IsInvalid(num) then
				total = total + num
				count = count + 1
			end
		end
		return count == 0 and Math.GetNan() or (total / count)
	end,
	_min = function(...)
		local minVal = nil
		for i = 1, select('#', ...) do
			local num = select(i, ...)
			if type(num) == "number" and not IsInvalid(num) and (not minVal or num < minVal) then
				minVal = num
			end
		end
		return minVal or Math.GetNan()
	end,
	_max = function(...)
		local maxVal = nil
		for i = 1, select('#', ...) do
			local num = select(i, ...)
			if type(num) == "number" and not IsInvalid(num) and (not maxVal or num > maxVal) then
				maxVal = num
			end
		end
		return maxVal or Math.GetNan()
	end,
	_first = function(...)
		for i = 1, select('#', ...) do
			local num = select(i, ...)
			if type(num) == "number" and not IsInvalid(num) then
				return num
			end
		end
		return Math.GetNan()
	end,
	_check = function(check, ...)
		return private.RunComparison(COMPARISONS.gt, check, 0, ...)
	end,
	_ifgt = function(...)
		return private.RunComparison(COMPARISONS.gt, ...)
	end,
	_ifgte = function(...)
		return private.RunComparison(COMPARISONS.gte, ...)
	end,
	_iflt = function(...)
		return private.RunComparison(COMPARISONS.lt, ...)
	end,
	_iflte = function(...)
		return private.RunComparison(COMPARISONS.lte, ...)
	end,
	_ifeq = function(...)
		return private.RunComparison(COMPARISONS.eq, ...)
	end,
	_round = function(...)
		if select('#', ...) < 1 or select('#', ...) > 2 then return Math.GetNan() end
		return Math.Round(...)
	end,
	_roundup = function(...)
		if select('#', ...) < 1 or select('#', ...) > 2 then return Math.GetNan() end
		return Math.Ceil(...)
	end,
	_rounddown = function(...)
		if select('#', ...) < 1 or select('#', ...) > 2 then return Math.GetNan() end
		return Math.Floor(...)
	end,
	_priceHelper = function(itemString, key, extraParam)
		itemString = ItemString.Get(itemString)
		if not itemString then
			return Math.GetNan()
		end
		if key == "convert" then
			local conversions = Conversions.GetSourceItems(itemString)
			if not conversions then
				return Math.GetNan()
			end
			local minPrice = nil
			for sourceItemString, rate in pairs(conversions) do
				local price = CustomPrice.GetItemPrice(sourceItemString, extraParam)
				if price then
					price = price / rate
					minPrice = min(minPrice or price, price)
				end
			end
			return minPrice or Math.GetNan()
		elseif extraParam == "custom" then
			local customPriceSourceStr = private.settings.customPriceSources[key]
			if not customPriceSourceStr then
				-- custom price source has since been deleted
				return Math.GetNan()
			end
			return CustomPrice.GetValue(customPriceSourceStr, itemString) or Math.GetNan()
		else
			return CustomPrice.GetItemPrice(itemString, key) or Math.GetNan()
		end
	end,
}
local PROXY_MT = {
	__index = function(self, index)
		local data = private.proxyData[self]
		if private.customPriceFunctions[index] then
			return private.customPriceFunctions[index]
		elseif index == "globalContext" or index == "origStr" then
			-- these keys can always be accessed
			return data[index]
		end
		if not data.isUnlocked then
			error("Attempt to access a hidden table", 2)
		end
		return data[index]
	end,
	__newindex = function(self, index, value)
		local data = private.proxyData[self]
		if not data.isUnlocked then
			error("Attempt to modify a hidden table", 2)
		end
		data[index] = value
	end,
	__call = function(self, item)
		local data = private.proxyData[self]
		data.isUnlocked = true
		local result = data.func(self, item, ItemString.GetBase(item)) or 0
		data.isUnlocked = false
		return result
	end,
	__metatable = false,
}

function private.RunComparison(comparison, ...)
	if select('#', ...) > 4 then return Math.GetNan() end

	local leftCheck, rightCheck, ifValue, elseValue = ...
	leftCheck = leftCheck or Math.GetNan()
	rightCheck = rightCheck or Math.GetNan()
	ifValue = ifValue or Math.GetNan()
	elseValue = elseValue or Math.GetNan()

	if IsInvalid(leftCheck) or IsInvalid(rightCheck) then
		return Math.GetNan()
	elseif comparison == COMPARISONS.gt then
		return leftCheck > rightCheck and ifValue or elseValue
	elseif comparison == COMPARISONS.gte then
		return leftCheck >= rightCheck and ifValue or elseValue
	elseif comparison == COMPARISONS.lt then
		return leftCheck < rightCheck and ifValue or elseValue
	elseif comparison == COMPARISONS.lte then
		return leftCheck <= rightCheck and ifValue or elseValue
	elseif comparison == COMPARISONS.eq then
		return leftCheck == rightCheck and ifValue or elseValue
	else
		error("Error in custom price comparison")
	end
end

function private.CreateCustomPriceObj(func, origStr, dependantPriceSources, canCache)
	local customPriceSourceNames = {}
	for name, str in pairs(private.settings.customPriceSources) do
		if str == origStr then
			customPriceSourceNames[name] = true
		end
	end
	local proxy = newproxy(true)
	private.proxyData[proxy] = {
		isUnlocked = false,
		globalContext = private.context,
		origStr = origStr,
		customPriceSourceNames = customPriceSourceNames,
		func = func,
		dependantPriceSources = dependantPriceSources,
		map = nil,
		mapReader = nil,
	}
	local mt = getmetatable(proxy)
	for key, value in pairs(PROXY_MT) do
		mt[key] = value
	end
	if canCache then
		local map = SmartMap.New("string", "number", proxy)
		private.proxyData[proxy].map = map
		private.proxyData[proxy].mapReader = map:CreateReader()
	end
	return proxy
end

function private.ParsePriceString(str, badPriceSources)
	if tonumber(str) then
		return private.CreateCustomPriceObj(function() return Math.Round(tonumber(str)) end, str, {}, true)
	end

	local origStr = str
	-- put a space at the start and end
	str = " "..str.." "
	-- remove any colors around gold/silver/copper
	while true do
		local num1, num2, num3
		str, num1 = gsub(str, "\124cff[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]g\124r", "g")
		str, num2 = gsub(str, "\124cff[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]s\124r", "s")
		str, num3 = gsub(str, "\124cff[0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F][0-9a-fA-F]c\124r", "c")
		if num1 + num2 + num3 == 0 then break end
	end
	-- replace old itemStrings with the new format
	str = gsub(str, "([^h]i)tem:([0-9:%-]+)", "%1:%2")

	-- replace all formatted gold amount with their copper value
	local start = 1
	local goldAmountContinue = true
	while goldAmountContinue do
		goldAmountContinue = false
		local minFindStart, minFindEnd, minFindSub = nil, nil, nil
		for _, pattern in ipairs(MONEY_PATTERNS) do
			local s, e, sub = strfind(str, pattern, start)
			if s and (not minFindStart or minFindStart > s + 1) then
				minFindStart = s + 1
				minFindEnd = e
				minFindSub = sub
			end
		end
		if minFindStart then
			if strmatch(strsub(str, minFindStart-1, minFindStart-1), "[0-9a-zA-Z]") or strmatch(strsub(str, minFindEnd+1, minFindEnd+1), "[0-9a-zA-Z]") then
				return nil, L["Invalid gold value."]
			end
			local value = Money.FromString(minFindSub)
			if not value then
				-- sanity check
				return nil, L["Invalid function."]
			end
			local preStr = strsub(str, 1, minFindStart - 1)
			local postStr = strsub(str, minFindEnd + 1)
			str = preStr .. value .. postStr
			start = #str - #postStr + 1
			goldAmountContinue = true
		end
	end

	-- remove up to 1 occurance of convert(priceSource[, item])
	local convertPriceSource, convertItem
	local convertParams = strmatch(str, "[^a-z]convert%((.-)%)")
	if convertParams then
		local convertItemLink = strmatch(convertParams, "\124c.-\124r")
		local convertItemString = strmatch(convertParams, ITEM_STRING_PATTERN)
		if convertItemLink then -- check for itemLink in convert params
			convertItem = ItemString.Get(convertItemLink)
			if not convertItem then
				return nil, L["Invalid item link."] -- there's an invalid item link in the convertParams
			end
			convertPriceSource = strmatch(convertParams, "^ *(.-) *,")
		elseif convertItemString then -- check for itemString in convert params
			convertItem = convertItemString
			convertPriceSource = strmatch(convertParams, "^ *(.-) *,")
		else
			convertPriceSource = gsub(convertParams, ", *$", "")
			convertPriceSource = strtrim(convertPriceSource)
		end
		if convertPriceSource and ((badPriceSources and badPriceSources[convertPriceSource]) or convertPriceSource == "matprice") then
			return nil, format(L["You cannot use %s within convert() as part of this custom price."], convertPriceSource)
		end

		-- can't allow custom price sources in convert, so just check regular ones
		if not private.priceSourceInfo[convertPriceSource] then
			return nil, L["Invalid price source in convert."]
		end
		local num = 0
		str, num = gsub(str, "([^a-z])convert%(.-%)", "%1~convert~")
		if num > 1 then
			return nil, L["A maximum of 1 convert() function is allowed."]
		end
	end

	while true do
		local itemLink = strmatch(str, "\124c.*\124r")
		if not itemLink then break end
		local _, endIndex = strfind(itemLink, "\124r")
		itemLink = strsub(itemLink, 1, endIndex)
		local itemString = ItemString.Get(itemLink)
		if not itemString then
			-- there's an invalid item link in the str
			return nil, L["Invalid item link."]
		end
		str = gsub(str, String.Escape(itemLink), itemString)
	end

	-- make sure there's spaces on either side of math operators
	str = gsub(str, "[%-%+%/%*%^]", " %1 ")
	-- make sure there's a space to the right of % signs
	str = gsub(str, "[%%]", "%1 ")
	-- convert percentages to decimal numbers
	str = gsub(str, "([0-9%.]+)[ ]*%%", "( %1 / 100 ) *")
	-- ensure a space on either side of item strings and remove parentheses around them
	str = gsub(str, "%([ ]*("..ITEM_STRING_PATTERN..")[ ]*%)", " %1 ")
	-- ensure a space on either side of baseitem arguments and remove parentheses around them
	str = gsub(str, "%([ ]*(baseitem)[ ]*%)", " ~baseitem~ ")
	-- ensure a space on either side of parentheses and commas
	str = gsub(str, "[%(%),]", " %1 ")
	-- convert all whitespace characters to spaces
	str = gsub(str, "%s", " ")
	-- remove any occurances of more than one consecutive space
	str = gsub(str, " [ ]+", " ")

	-- ensure equal number of left/right parenthesis
	if select(2, gsub(str, "%(", "")) ~= select(2, gsub(str, "%)", "")) then
		return nil, L["Unbalanced parentheses."]
	end

	-- validate all words in the string
	local parts = String.SafeSplit(strtrim(str), " ")
	local i = 1
	while i <= #parts do
		local word = parts[i]
		if strmatch(word, "^[%-%+%/%*%^]$") then
			if i == #parts then
				return nil, L["Invalid operator at end of custom price."]
			end
			-- valid math operator
		elseif badPriceSources and badPriceSources[word] then
			-- price source that's explicitly invalid
			return nil, format(L["You cannot use %s as part of this custom price."], word)
		elseif private.priceSourceInfo[word] or private.settings.customPriceSources[word] then
			-- make sure we're not trying to take the price source of a number
			if parts[i+1] == "(" and type(parts[i+2]) == "string" and not strfind(parts[i+2], "^[ip].*:") then
				return nil, L["Invalid parameter to price source."]
			end
			-- valid price source
		elseif tonumber(word) then
			-- make sure it's not an itemID (incorrect)
			if i > 2 and parts[i-1] == "(" and (private.priceSourceInfo[parts[i-2]] or private.settings.customPriceSources[parts[i-2]]) then
				return nil, L["Invalid parameter to price source."]
			end
			-- valid number
		elseif strmatch(word, "^"..ITEM_STRING_PATTERN.."$") or word == "~baseitem~" then
			-- make sure previous word was a price source
			if i > 1 and (private.priceSourceInfo[parts[i-1]] or private.settings.customPriceSources[parts[i-1]]) then
				-- valid item parameter
			else
				return nil, L["Item links may only be used as parameters to price sources."]
			end
		elseif word == "(" then
			-- empty parenthesis are not allowed
			if not parts[i+1] or parts[i+1] == ")" then
				return nil, L["Empty parentheses are not allowed"]
			end
			-- should never have ") ("
			if i > 1 and parts[i-1] == ")" then
				return nil, L["Missing operator between sets of parenthesis"]
			end
		elseif word == ")" then
			-- valid parenthesis
		elseif word == "," then
			if not parts[i+1] or parts[i+1] == ")" then
				return nil, L["Misplaced comma"]
			else
				-- we're hoping this is a valid comma within a function, will be caught by loadstring otherwise
			end
		elseif MATH_FUNCTIONS[word] then
			if not parts[i+1] or parts[i+1] ~= "(" then
				return nil, format(L["Invalid word: '%s'"], word)
			end
			-- valid math function
		elseif word == "~convert~" then
			-- valid convert statement
		elseif strtrim(word) == "" then
			-- harmless extra spaces
		else
			if strfind(word, "^%^1%^t%^") then
				-- this is an operation export that they tried to use as a custom price
				return nil, L["This looks like an exported operation and not a custom price."]
			elseif strfind(word, "global") then
				-- this is an old global price
				return nil, L["It looks like you're trying to reference an old global price source which no longer exists."]
			end
			return nil, format(L["Invalid word: '%s'"], word)
		end
		i = i + 1
	end

	local canCache = true
	local dependantPriceSources = {}
	for key, value in pairs(private.settings.customPriceSources) do
		key = strlower(key)
		local usedKey = nil
		str, usedKey = private.PriceSourceParsingHelper(str, key, "custom", dependantPriceSources)
		if usedKey then
			local customPriceProxy, errMsg = private.ParseCustomPrice(value, badPriceSources)
			if not customPriceProxy then
				return nil, format(L["The '%s' custom price source is invalid."], key).." "..errMsg
			end
			canCache = canCache and private.proxyData[customPriceProxy].map
		end
	end

	for key, info in pairs(private.priceSourceInfo) do
		local usedKey = nil
		str, usedKey = private.PriceSourceParsingHelper(str, key, nil, dependantPriceSources)
		canCache = canCache and (not usedKey or not info.isVolatile)
	end

	-- replace "~convert~" appropriately
	if convertPriceSource then
		canCache = canCache and not private.priceSourceInfo[convertPriceSource].isVolatile
		dependantPriceSources._convertPriceSource = convertPriceSource
		convertItem = convertItem and ('"'..convertItem..'"') or "_item"
		str = gsub(str, "~convert~", format("self._priceHelper(%s, \"convert\", \"%s\")", convertItem, convertPriceSource))
	end

	-- replace math functions with special custom function names
	for word, funcName in pairs(MATH_FUNCTIONS) do
		str = gsub(str, " "..word.." ", " "..funcName.." ")
	end

	-- finally, create and return the function
	local func, loadErr = loadstring(format(CUSTOM_PRICE_FUNC_TEMPLATE, str), "TSMCustomPrice: "..origStr)
	if loadErr then
		loadErr = gsub(strtrim(loadErr), "([^:]+):.", "")
		return nil, L["Invalid function."].." "..L["Details"]..": "..loadErr
	end
	local success = nil
	success, func = pcall(func)
	if not success then
		return nil, L["Invalid function."]
	end
	return private.CreateCustomPriceObj(func, origStr, dependantPriceSources, canCache)
end

function private.PriceSourceParsingHelper(str, key, extraArg, dependantPriceSources)
	extraArg = extraArg and (",\""..extraArg.."\"") or ""
	local numReplacements, usedKey = nil, false
	-- replace all "<priceSource> <itemString>" occurances with the proper parameters (with the itemString)
	str, numReplacements = gsub(str, format(" %s (%s) ", key, ITEM_STRING_PATTERN), format(" self._priceHelper(\"%%1\",\"%s\"%s) ", key, extraArg))
	if numReplacements > 0 then
		for itemString in gmatch(str, " self%._priceHelper%(\"("..ITEM_STRING_PATTERN..")\",\""..key.."\""..String.Escape(extraArg).."%) ") do
			-- add all the items used for this key
			dependantPriceSources[key] = dependantPriceSources[key] or {}
			dependantPriceSources[key][itemString] = true
		end
		usedKey = true
	end
	-- replace all "<priceSource> baseitem" occurances with the proper parameters (with _baseitem for the item)
	str, numReplacements = gsub(str, format(" %s ~baseitem~ ", key), format(" self._priceHelper(_baseitem,\"%s\"%s) ", key, extraArg))
	if numReplacements > 0 then
		dependantPriceSources[key] = dependantPriceSources[key] or {}
		dependantPriceSources[key]._baseitem = true
		usedKey = true
	end
	-- replace all "<priceSource>" occurances with the proper parameters (with _item for the item)
	str, numReplacements = gsub(str, format(" %s ", key), format(" self._priceHelper(_item,\"%s\"%s) ", key, extraArg))
	if numReplacements > 0 then
		dependantPriceSources[key] = dependantPriceSources[key] or {}
		dependantPriceSources[key]._item = true
		usedKey = true
	end
	return str, usedKey
end

function private.ParseCustomPrice(customPriceStr, badPriceSources)
	customPriceStr = private.SanitizeCustomPriceString(customPriceStr)
	if not customPriceStr or customPriceStr == "" then
		return nil, L["Empty price string."]
	end

	if badPriceSources then
		return private.ParsePriceString(customPriceStr, badPriceSources)
	end

	if not private.customPriceCache[customPriceStr] then
		private.customPriceCache[customPriceStr] = {private.ParsePriceString(customPriceStr)}
	end
	return unpack(private.customPriceCache[customPriceStr])
end

function private.ModuleSortFunc(a, b)
	if a == "TSM" then
		return true
	elseif b == "TSM" then
		return false
	else
		return a < b
	end
end

function private.SanitizeCustomPriceString(customPriceStr)
	assert(customPriceStr)
	local result = private.sanitizeCache[customPriceStr]
	if not result then
		result = strlower(strtrim(tostring(customPriceStr)))
		result = Money.FromString(result) and gsub(result, String.Escape(LARGE_NUMBER_SEPERATOR), "") or result
		private.sanitizeCache[customPriceStr] = result
	end
	return result
end

function private.CallCustomSourceCallbacks()
	for _, callback in ipairs(private.customSourceCallbacks) do
		callback()
	end
end

function private.IteratorHelper(_, index)
	index = index + 1
	local key = private.priceSourceKeys[index]
	if not key then
		return
	end
	local info = private.priceSourceInfo[key]
	return index, info.key, info.moduleName, info.label
end
