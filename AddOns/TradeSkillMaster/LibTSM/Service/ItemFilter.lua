-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ItemFilter = TSM.Init("Service.ItemFilter") ---@class ItemFilter
local Environment = TSM.Include("Environment")
local LibTSMClass = TSM.Include("LibTSMClass")
local L = TSM.Include("Locale").GetTable()
local Filter = LibTSMClass.DefineClass("ItemFilter")
local ItemClass = TSM.Include("Data.ItemClass")
local Money = TSM.Include("Util.Money")
local String = TSM.Include("Util.String")
local Log = TSM.Include("Util.Log")
local ItemInfo = TSM.Include("Service.ItemInfo")
local private = {}



-- ============================================================================
-- Module Functions
-- ============================================================================

function ItemFilter.New()
	return Filter()
end



-- ============================================================================
-- Filter Class
-- ============================================================================

function Filter.__init(self)
	self._isValid = false
	self._str = nil
	self._escapedStr = nil
	self._class = nil
	self._subClass = nil
	self._invSlotId = nil
	self._minQuality = nil
	self._maxQuality = nil
	self._minLevel = nil
	self._maxLevel = nil
	self._minItemLevel = nil
	self._maxItemLevel = nil
	self._minPrice = nil
	self._maxPrice = nil
	self._maxQuantity = nil
	self._uncollected = nil
	self._usable = nil
	self._upgrades = nil
	self._unlearned = nil
	self._canlearn = nil
	self._exactOnly = nil
	self._crafting = nil
	self._disenchant = nil
	self._item = nil
	self._callbacks = {}

	self:_Reset()
end

function Filter._Reset(self)
	self._isValid = false
	self._str = ""
	self._escapedStr = ""
	self._class = nil
	self._subClass = nil
	self._invSlotId = nil
	self._minQuality = -math.huge
	self._maxQuality = math.huge
	self._minLevel = 0
	self._maxLevel = math.huge
	self._minItemLevel = 0
	self._maxItemLevel = math.huge
	self._minPrice = 0
	self._maxPrice = math.huge
	self._maxQuantity = math.huge
	self._uncollected = nil
	self._usable = nil
	self._upgrades = nil
	self._unlearned = nil
	self._canlearn = nil
	self._exactOnly = nil
	self._crafting = nil
	self._disenchant = nil
	self._item = nil
end

function Filter.RegisterCallback(self, callback)
	self._callbacks[callback] = true
end

function Filter.UnregisterCallback(self, callback)
	self._callbacks[callback] = nil
end

function Filter.ValidateStr(self, str)
	local class = nil
	local uncollected = nil
	local usable = nil
	local upgrades = nil
	local unlearned = nil
	local canlearn = nil
	local exactOnly = nil
	local crafting = nil
	local disenchant = nil
	local numLevelParts, numItemLevelParts, numPriceParts, numQualityParts = 0, 0, 0, 0
	local hasNonCraftingPart = false
	for part in String.SplitIterator(strtrim(str), "/") do
		if strmatch(part, "^[ip]:[0-9]+") then
			-- Request item info in case we fail due to not having it (for next time)
			ItemInfo.FetchInfo(part)
		end
	end
	local isFirstPart = true
	for part in String.SplitIterator(strtrim(str), "/", true) do
		part = strtrim(part)
		if isFirstPart then
			isFirstPart = false
			-- first part must be a filter string or an item
			if strmatch(part, "^[ip]:[0-9]+") then
				local name = ItemInfo.GetName(part)
				local level = ItemInfo.GetMinLevel(part)
				local quality = ItemInfo.GetQuality(part)
				if not name or not level or not quality then
					return false, L["The specified item was not found."]
				else
					exactOnly = true
					class = ItemInfo.GetClassId(part) or 0
				end
			end
		elseif part == "" then
			-- ignore an empty part
		elseif tonumber(part) then
			if numLevelParts >= 2 then
				-- already have min / max level
				return false, L["The same filter was specified multiple times."]
			end
			numLevelParts = numLevelParts + 1
			hasNonCraftingPart = true
		elseif tonumber(strmatch(part, "^i(%d+)$")) then
			if numItemLevelParts >= 2 then
				-- already have min / max item level
				return false, L["The same filter was specified multiple times."]
			end
			numItemLevelParts = numItemLevelParts + 1
			hasNonCraftingPart = true
		elseif ItemClass.GetClassIdFromClassString(part) then
			class = ItemClass.GetClassIdFromClassString(part)
			hasNonCraftingPart = true
		elseif class and ItemClass.GetSubClassIdFromSubClassString(part, class) then
			hasNonCraftingPart = true
		elseif ItemClass.GetInventorySlotIdFromInventorySlotString(part) then
			hasNonCraftingPart = true
		elseif private.ItemQualityToIndex(part) then
			if numQualityParts >= 2 then
				-- already have min / max quality
				return false, L["The same filter was specified multiple times."]
			end
			numQualityParts = numQualityParts + 1
			hasNonCraftingPart = true
		elseif Money.FromString(part) then
			if numPriceParts >= 2 then
				-- already have min / max price
				return false, L["The same filter was specified multiple times."]
			end
			numPriceParts = numPriceParts + 1
			hasNonCraftingPart = true
		elseif Environment.HasFeature(Environment.FEATURES.AH_UNCOLLECTED_FILTER) and strlower(part) == "uncollected" then
			if uncollected then
				return false, L["The same filter was specified multiple times."]
			end
			uncollected = true
			hasNonCraftingPart = true
		elseif strlower(part) == "usable" then
			if usable then
				return false, L["The same filter was specified multiple times."]
			end
			usable = true
			hasNonCraftingPart = true
		elseif Environment.HasFeature(Environment.FEATURES.AH_UPGRADES_FILTER) and strlower(part) == "upgrades" then
			if upgrades then
				return false, L["The same filter was specified multiple times."]
			end
			upgrades = true
			hasNonCraftingPart = true
		elseif strlower(part) == "unlearned" then
			if unlearned then
				return false, L["The same filter was specified multiple times."]
			end
			if CanIMogIt and CanIMogIt.PlayerKnowsTransmog then
				unlearned = true
			else
				Log.PrintUser(L["The unlearned filter was ignored because the CanIMogIt addon was not found."])
			end
			hasNonCraftingPart = true
		elseif strlower(part) == "canlearn" then
			if canlearn then
				return false, L["The same filter was specified multiple times."]
			end
			if CanIMogIt and CanIMogIt.CharacterCanLearnTransmog then
				canlearn = true
			else
				Log.PrintUser(L["The canlearn filter was ignored because the CanIMogIt addon was not found."])
			end
			hasNonCraftingPart = true
		elseif strlower(part) == "exact" then
			if exactOnly then
				return false, L["The same filter was specified multiple times."]
			end
			exactOnly = true
			hasNonCraftingPart = true
		elseif tonumber(strmatch(part, "^x(%d+)$")) then
			if tonumber(strmatch(part, "^x(%d+)$")) == 0 then
				return false, L["The max quantity cannot be zero."]
			end
		elseif strlower(part) == "crafting" then
			if crafting or disenchant then
				return false, L["The same filter was specified multiple times."]
			end
			crafting = true
		elseif strlower(part) == "disenchant" then
			if disenchant or crafting then
				return false, L["The same filter was specified multiple times."]
			end
			disenchant = true
		else
			-- invalid part
			return false, format(L["Unknown word (%s)."], part)
		end
	end

	if (crafting or disenchant) and hasNonCraftingPart then
		return false, L["Cannot use additional filters with /crafting or /disenchant."]
	end

	return true, nil
end

function Filter.ParseStr(self, str)
	self:_Reset()
	self._isValid = false
	local numLevelParts, numItemLevelParts, numPriceParts, numQualityParts = 0, 0, 0, 0
	local hasNonCraftingPart = false
	for part in String.SplitIterator(strtrim(str), "/") do
		if strmatch(part, "^[ip]:[0-9]+") then
			-- Request item info in case we fail due to not having it (for next time)
			ItemInfo.FetchInfo(part)
		end
	end
	local isFirstPart = true
	for part in String.SplitIterator(strtrim(str), "/", true) do
		part = strtrim(part)
		if isFirstPart then
			isFirstPart = false
			-- first part must be a filter string or an item
			if strmatch(part, "^[ip]:[0-9]+") then
				local name = ItemInfo.GetName(part)
				local level = ItemInfo.GetMinLevel(part)
				local quality = ItemInfo.GetQuality(part)
				if not name or not level or not quality then
					return false, L["The specified item was not found."]
				else
					self._exactOnly = true
					self._item = part
					self._str = strlower(name)
					self._escapedStr = String.Escape(self._str)
					self._minQuality = quality
					self._maxQuality = quality
					self._minLevel = level
					self._maxLevel = level
					self._class = ItemInfo.GetClassId(self._item) or 0
					self._subClass = ItemInfo.GetSubClassId(self._item) or 0
				end
			else
				self._str = strlower(part)
				self._escapedStr = String.Escape(self._str)
			end
		elseif part == "" then
			-- ignore an empty part
		elseif tonumber(part) then
			if numLevelParts == 0 then
				self._minLevel = tonumber(part)
			elseif numLevelParts == 1 then
				self._maxLevel = tonumber(part)
			else
				-- already have min / max level
				return false, L["The same filter was specified multiple times."]
			end
			numLevelParts = numLevelParts + 1
			hasNonCraftingPart = true
		elseif tonumber(strmatch(part, "^i(%d+)$")) then
			if numItemLevelParts == 0 then
				self._minItemLevel = tonumber(strmatch(part, "^i(%d+)$"))
			elseif numItemLevelParts == 1 then
				self._maxItemLevel = tonumber(strmatch(part, "^i(%d+)$"))
			else
				-- already have min / max item level
				return false, L["The same filter was specified multiple times."]
			end
			numItemLevelParts = numItemLevelParts + 1
			hasNonCraftingPart = true
		elseif ItemClass.GetClassIdFromClassString(part) then
			self._class = ItemClass.GetClassIdFromClassString(part)
			hasNonCraftingPart = true
		elseif self._class and ItemClass.GetSubClassIdFromSubClassString(part, self._class) then
			self._subClass = ItemClass.GetSubClassIdFromSubClassString(part, self._class)
			hasNonCraftingPart = true
		elseif ItemClass.GetInventorySlotIdFromInventorySlotString(part) then
			self._invSlotId = ItemClass.GetInventorySlotIdFromInventorySlotString(part)
			hasNonCraftingPart = true
		elseif private.ItemQualityToIndex(part) then
			if numQualityParts == 0 then
				self._minQuality = private.ItemQualityToIndex(part)
			elseif numQualityParts == 1 then
				self._maxQuality = private.ItemQualityToIndex(part)
			else
				-- already have min / max quality
				return false, L["The same filter was specified multiple times."]
			end
			numQualityParts = numQualityParts + 1
			hasNonCraftingPart = true
		elseif Money.FromString(part) then
			if numPriceParts == 0 then
				self._maxPrice = Money.FromString(part)
			elseif numPriceParts == 1 then
				self._minPrice = self._maxPrice
				self._maxPrice = Money.FromString(part)
			else
				-- already have min / max price
				return false, L["The same filter was specified multiple times."]
			end
			numPriceParts = numPriceParts + 1
			hasNonCraftingPart = true
		elseif Environment.HasFeature(Environment.FEATURES.AH_UNCOLLECTED_FILTER) and strlower(part) == "uncollected" then
			if self._uncollected then
				return false, L["The same filter was specified multiple times."]
			end
			self._uncollected = true
			hasNonCraftingPart = true
		elseif strlower(part) == "usable" then
			if self._usable then
				return false, L["The same filter was specified multiple times."]
			end
			self._usable = true
			hasNonCraftingPart = true
		elseif Environment.HasFeature(Environment.FEATURES.AH_UPGRADES_FILTER) and strlower(part) == "upgrades" then
			if self._upgrades then
				return false, L["The same filter was specified multiple times."]
			end
			self._upgrades = true
			hasNonCraftingPart = true
		elseif strlower(part) == "unlearned" then
			if self._unlearned then
				return false, L["The same filter was specified multiple times."]
			end
			if CanIMogIt and CanIMogIt.PlayerKnowsTransmog then
				self._unlearned = true
			else
				Log.PrintUser(L["The unlearned filter was ignored because the CanIMogIt addon was not found."])
			end
			hasNonCraftingPart = true
		elseif strlower(part) == "canlearn" then
			if self._canlearn then
				return false, L["The same filter was specified multiple times."]
			end
			if CanIMogIt and CanIMogIt.CharacterCanLearnTransmog then
				self._canlearn = true
			else
				Log.PrintUser(L["The canlearn filter was ignored because the CanIMogIt addon was not found."])
			end
			hasNonCraftingPart = true
		elseif strlower(part) == "exact" then
			if self._exactOnly then
				return false, L["The same filter was specified multiple times."]
			end
			self._exactOnly = true
			hasNonCraftingPart = true
		elseif tonumber(strmatch(part, "^x(%d+)$")) then
			self._maxQuantity = tonumber(strmatch(part, "^x(%d+)$"))
			if self._maxQuantity == 0 then
				return false, L["The max quantity cannot be zero."]
			end
		elseif strlower(part) == "crafting" then
			if self._crafting or self._disenchant then
				return false, L["The same filter was specified multiple times."]
			end
			self._crafting = true
		elseif strlower(part) == "disenchant" then
			if self._disenchant or self._crafting then
				return false, L["The same filter was specified multiple times."]
			end
			self._disenchant = true
		else
			-- invalid part
			return false, format(L["Unknown word (%s)."], part)
		end
	end

	if (self._crafting or self._disenchant) and hasNonCraftingPart then
		return false, L["Cannot use additional filters with /crafting or /disenchant."]
	end

	self._isValid = true
	for callback in pairs(self._callbacks) do
		callback()
	end
	return true, nil
end

function Filter.GetStr(self)
	return self._str ~= "" and self._str or nil
end

function Filter.GetItem(self)
	return self._item
end

function Filter.GetMinQuality(self)
	return self._minQuality ~= -math.huge and self._minQuality or nil
end

function Filter.GetMaxQuality(self)
	return self._maxQuality ~= math.huge and self._maxQuality or nil
end

function Filter.GetClass(self)
	return self._class
end

function Filter.GetSubClass(self)
	return self._subClass
end

function Filter.GetInvSlotId(self)
	return self._invSlotId
end

function Filter.GetMinLevel(self)
	return self._minLevel ~= 0 and self._minLevel or nil
end

function Filter.GetMaxLevel(self)
	return self._maxLevel ~= math.huge and self._maxLevel or nil
end

function Filter.GetMinItemLevel(self)
	return self._minItemLevel ~= 0 and self._minItemLevel or nil
end

function Filter.GetMaxItemLevel(self)
	return self._maxItemLevel ~= math.huge and self._maxItemLevel or nil
end

function Filter.GetUncollected(self)
	return self._uncollected
end

function Filter.GetUsableOnly(self)
	return self._usable
end

function Filter.GetUpgrades(self)
	return self._upgrades
end

function Filter.GetUnlearned(self)
	return self._unlearned
end

function Filter.GetCanLearn(self)
	return self._canlearn
end

function Filter.GetExactOnly(self)
	return self._exactOnly
end

function Filter.GetMaxQuantity(self)
	return self._maxQuantity ~= math.huge and self._maxQuantity or nil
end

function Filter.GetMinPrice(self)
	return self._minPrice ~= 0 and self._minPrice or nil
end

function Filter.GetMaxPrice(self)
	return self._maxPrice ~= math.huge and self._maxPrice or nil
end

function Filter.GetCrafting(self)
	return self._crafting
end

function Filter.GetDisenchant(self)
	return self._disenchant
end

function Filter.Matches(self, item, price)
	if not self._isValid then
		return false
	end

	-- check the name
	local name = ItemInfo.GetName(item)
	name = name and strlower(name) or ""
	if not strfind(name, self._escapedStr) or (self._exactOnly and name ~= self._str) then
		return false
	end

	-- check the quality
	local quality = ItemInfo.GetQuality(item) or -1
	if quality < self._minQuality or quality > self._maxQuality then
		return false
	end

	-- check the item level
	local itemLevel = ItemInfo.GetItemLevel(item) or 0
	if itemLevel < self._minItemLevel or itemLevel > self._maxItemLevel then
		return false
	end

	-- check the required level
	local level = ItemInfo.GetMinLevel(item) or 0
	if level < self._minLevel or level > self._maxLevel then
		return false
	end

	-- check the item class
	if self._class and ItemInfo.GetClassId(item) ~= self._class then
		return false
	end

	-- check the item subclass
	if self._subClass and ItemInfo.GetSubClassId(item) ~= self._subClass then
		return false
	end

	-- check the inventory slot
	if self._invSlotId and ItemInfo.GetInvSlotId(item) ~= self._invSlotId then
		return false
	end

	-- check unlearned
	if self._unlearned and CanIMogIt:PlayerKnowsTransmog(ItemInfo.GetLink(item)) then
		return false
	end

	-- check canlearn
	if self._canlearn and CanIMogIt:CharacterCanLearnTransmog(ItemInfo.GetLink(item)) then
		return false
	end

	-- check the price
	price = price or 0
	if price < self._minPrice or price > self._maxPrice then
		return false
	end

	-- it passed!
	return true
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.ItemQualityToIndex(str)
	for i = 0, 7 do
		local text =  _G["ITEM_QUALITY"..i.."_DESC"]
		if strlower(str) == strlower(text) then
			return i
		end
	end
end
