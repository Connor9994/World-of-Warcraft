-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Util = TSM.Auctioning:NewPackage("Util")
local Environment = TSM.Include("Environment")
local TempTable = TSM.Include("Util.TempTable")
local String = TSM.Include("Util.String")
local Math = TSM.Include("Util.Math")
local CustomPrice = TSM.Include("Service.CustomPrice")
local PlayerInfo = TSM.Include("Service.PlayerInfo")
local private = {
	priceCache = {},
}
local INVALID_PRICE = {}
local VALID_PRICE_KEYS = {
	minPrice = true,
	normalPrice = true,
	maxPrice = true,
	undercut = true,
	cancelRepostThreshold = true,
	priceReset = true,
	aboveMax = true,
	postCap = true,
	stackSize = true,
	keepQuantity = true,
	maxExpires = true,
}
local IS_GOLD_PRICE_KEY = {
	minPrice = true,
	normalPrice = true,
	maxPrice = true,
	undercut = not Environment.IsRetail(),
	priceReset = true,
	aboveMax = true,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Util.GetPrice(key, operation, itemString)
	assert(VALID_PRICE_KEYS[key])
	local cacheKey = key..tostring(operation)..itemString
	if private.priceCache.updateTime ~= GetTime() then
		wipe(private.priceCache)
		private.priceCache.updateTime = GetTime()
	end
	if not private.priceCache[cacheKey] then
		local value = nil
		if key == "aboveMax" or key == "priceReset" then
			-- redirect to the selected price (if applicable)
			local priceKey = operation[key]
			if VALID_PRICE_KEYS[priceKey] then
				value = Util.GetPrice(priceKey, operation, itemString)
			end
		else
			value = CustomPrice.GetValue(operation[key], itemString, not IS_GOLD_PRICE_KEY[key])
		end
		if not Environment.HasFeature(Environment.FEATURES.AH_COPPER) and IS_GOLD_PRICE_KEY[key] then
			value = value and Math.Ceil(value, COPPER_PER_SILVER) or nil
		else
			value = value and Math.Round(value) or nil
		end
		local minValue, maxValue = TSM.Operations.Auctioning.GetMinMaxValues(key)
		private.priceCache[cacheKey] = (value and value >= minValue and value <= maxValue) and value or INVALID_PRICE
	end
	if private.priceCache[cacheKey] == INVALID_PRICE then
		return nil
	end
	return private.priceCache[cacheKey]
end

function Util.GetLowestAuction(subRows, itemString, operationSettings, resultTbl)
	if Environment.IsRetail() then
		local foundLowest = false
		for _, subRow in ipairs(subRows) do
			local _, itemBuyout = subRow:GetBuyouts()
			local quantity = subRow:GetQuantities()
			local timeLeft = subRow:GetListingInfo()
			if not foundLowest and not Util.IsFiltered(itemString, operationSettings, itemBuyout, quantity, timeLeft) then
				local ownerStr, numOwnerAuctions = subRow:GetOwnerInfo()
				local _, auctionId = subRow:GetListingInfo()
				local _, itemMinBid = subRow:GetBidInfo()
				local firstSeller = strsplit(",", ownerStr) or (numOwnerAuctions > 0 and UnitName("player")) or "?"
				resultTbl.buyout = itemBuyout
				resultTbl.bid = itemMinBid
				resultTbl.seller = firstSeller
				resultTbl.auctionId = auctionId
				resultTbl.isWhitelist = false
				resultTbl.isBlacklist = false
				resultTbl.isPlayer = numOwnerAuctions > 0
				foundLowest = true
			end
		end
		return foundLowest
	else
		local hasInvalidSeller = nil
		local ignoreWhitelist = nil
		local lowestItemBuyout = nil
		local lowestAuction = nil
		for _, subRow in ipairs(subRows) do
			local _, itemBuyout = subRow:GetBuyouts()
			local quantity = subRow:GetQuantities()
			local timeLeft = subRow:GetListingInfo()
			if not Util.IsFiltered(itemString, operationSettings, itemBuyout, quantity, timeLeft) then
				assert(itemBuyout and itemBuyout > 0)
				lowestItemBuyout = lowestItemBuyout or itemBuyout
				if itemBuyout == lowestItemBuyout then
					local ownerStr = subRow:GetOwnerInfo()
					local _, auctionId = subRow:GetListingInfo()
					local _, itemMinBid = subRow:GetBidInfo()
					local temp = TempTable.Acquire()
					temp.buyout = itemBuyout
					temp.bid = itemMinBid
					temp.seller = ownerStr
					temp.auctionId = auctionId
					temp.isWhitelist = TSM.db.factionrealm.auctioningOptions.whitelist[strlower(ownerStr)] and true or false
					temp.isBlacklist = String.SeparatedContains(strlower(operationSettings.blacklist), ",", strlower(ownerStr))
					temp.isPlayer = PlayerInfo.IsPlayer(ownerStr, true, true, true)
					if not temp.isWhitelist and not temp.isPlayer then
						-- there is a non-whitelisted competitor, so we don't care if a whitelisted competitor also posts at this price
						ignoreWhitelist = true
					end
					if not subRow:HasOwners() and next(TSM.db.factionrealm.auctioningOptions.whitelist) then
						hasInvalidSeller = true
					end
					if not lowestAuction then
						lowestAuction = temp
					elseif private.LowestAuctionCompare(temp, lowestAuction) then
						TempTable.Release(lowestAuction)
						lowestAuction = temp
					else
						TempTable.Release(temp)
					end
				end
			end
		end
		if not lowestAuction then
			return false
		end
		for k, v in pairs(lowestAuction) do
			resultTbl[k] = v
		end
		TempTable.Release(lowestAuction)
		if resultTbl.isWhitelist and ignoreWhitelist then
			resultTbl.isWhitelist = false
		end
		resultTbl.hasInvalidSeller = hasInvalidSeller
		return true
	end
end

function Util.GetPlayerAuctionCount(subRows, itemString, operationSettings, findBid, findBuyout, findStackSize)
	local playerQuantity = 0
	for _, subRow in ipairs(subRows) do
		local _, itemBuyout = subRow:GetBuyouts()
		local quantity = subRow:GetQuantities()
		local timeLeft = subRow:GetListingInfo()
		if not Util.IsFiltered(itemString, operationSettings, itemBuyout, quantity, timeLeft) then
			local _, itemMinBid = subRow:GetBidInfo()
			if itemMinBid == findBid and itemBuyout == findBuyout and (Environment.IsRetail() or quantity == findStackSize) then
				local count = private.GetPlayerAuctionCount(subRow)
				if Environment.IsRetail() and count == 0 and playerQuantity > 0 then
					-- there's another player's auction after ours, so stop counting
					break
				end
				playerQuantity = playerQuantity + count
			end
		end
	end
	return playerQuantity
end

function Util.GetPlayerLowestBuyout(subRows, itemString, operationSettings)
	local lowestItemBuyout, lowestItemAuctionId = nil, nil
	for _, subRow in ipairs(subRows) do
		local _, itemBuyout = subRow:GetBuyouts()
		local quantity = subRow:GetQuantities()
		local timeLeft, auctionId = subRow:GetListingInfo()
		if not lowestItemBuyout and not Util.IsFiltered(itemString, operationSettings, itemBuyout, quantity, timeLeft) and private.GetPlayerAuctionCount(subRow) > 0 then
			lowestItemBuyout = itemBuyout
			lowestItemAuctionId = auctionId
		end
	end
	return lowestItemBuyout, lowestItemAuctionId
end

function Util.GetLowestNonPlayerAuctionId(subRows, itemString, operationSettings, lowestItemBuyout)
	local lowestItemAuctionId = nil
	for _, subRow in ipairs(subRows) do
		local _, itemBuyout = subRow:GetBuyouts()
		local quantity = subRow:GetQuantities()
		local timeLeft, auctionId = subRow:GetListingInfo()
		if not lowestItemAuctionId and not Util.IsFiltered(itemString, operationSettings, itemBuyout, quantity, timeLeft) and private.GetPlayerAuctionCount(subRow) == 0 and itemBuyout == lowestItemBuyout then
			lowestItemAuctionId = auctionId
		end
	end
	return lowestItemAuctionId
end

function Util.IsPlayerOnlySeller(subRows, itemString, operationSettings)
	local isOnly = true
	for _, subRow in ipairs(subRows) do
		local _, itemBuyout = subRow:GetBuyouts()
		local quantity = subRow:GetQuantities()
		local timeLeft = subRow:GetListingInfo()
		if isOnly and not Util.IsFiltered(itemString, operationSettings, itemBuyout, quantity, timeLeft) and private.GetPlayerAuctionCount(subRow) < (Environment.IsRetail() and quantity or 1) then
			isOnly = false
		end
	end
	return isOnly
end

function Util.GetNextLowestItemBuyout(subRows, itemString, lowestAuction, operationSettings)
	local nextLowestItemBuyout = nil
	for _, subRow in ipairs(subRows) do
		local _, itemBuyout = subRow:GetBuyouts()
		local quantity = subRow:GetQuantities()
		local timeLeft, auctionId = subRow:GetListingInfo()
		local isLower = itemBuyout > lowestAuction.buyout or (itemBuyout == lowestAuction.buyout and auctionId < lowestAuction.auctionId)
		if not nextLowestItemBuyout and not Util.IsFiltered(itemString, operationSettings, itemBuyout, quantity, timeLeft) and isLower then
			nextLowestItemBuyout = itemBuyout
		end
	end
	return nextLowestItemBuyout
end

function Util.GetQueueStatus(query)
	local numProcessed, numConfirmed, numFailed, totalNum = 0, 0, 0, 0
	query:OrderBy("auctionId", true)
	for _, row in query:Iterator() do
		local rowNumStacks, rowNumProcessed, rowNumConfirmed, rowNumFailed = row:GetFields("numStacks", "numProcessed", "numConfirmed", "numFailed")
		totalNum = totalNum + rowNumStacks
		numProcessed = numProcessed + rowNumProcessed
		numConfirmed = numConfirmed + rowNumConfirmed
		numFailed = numFailed + rowNumFailed
	end
	query:Release()
	return numProcessed, numConfirmed, numFailed, totalNum
end

function Util.IsFiltered(itemString, operationSettings, itemBuyout, quantity, timeLeft)
	if timeLeft <= operationSettings.ignoreLowDuration then
		-- ignoring low duration
		return true
	elseif Environment.HasFeature(Environment.FEATURES.AH_STACKS) and operationSettings.matchStackSize and quantity ~= Util.GetPrice("stackSize", operationSettings, itemString) then
		-- matching stack size
		return true
	elseif operationSettings.priceReset == "ignore" then
		local minPrice = Util.GetPrice("minPrice", operationSettings, itemString)
		local undercut = Util.GetPrice("undercut", operationSettings, itemString)
		if minPrice and itemBuyout - undercut < minPrice then
			-- ignoring auctions below threshold
			return true
		end
	end
	return false
end

function Util.GetFilteredSubRows(query, itemString, operationSettings, result)
	for _, subRow in query:ItemSubRowIterator(itemString) do
		local _, itemBuyout = subRow:GetBuyouts()
		local quantity = subRow:GetQuantities()
		local timeLeft = subRow:GetListingInfo()
		if not Util.IsFiltered(itemString, operationSettings, itemBuyout, quantity, timeLeft) then
			tinsert(result, subRow)
		end
	end
	sort(result, private.SubRowSortHelper)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.SubRowSortHelper(a, b)
	local _, aItemBuyout = a:GetBuyouts()
	local _, bItemBuyout = b:GetBuyouts()
	if aItemBuyout ~= bItemBuyout then
		return aItemBuyout < bItemBuyout
	end
	local _, aAuctionId = a:GetListingInfo()
	local _, bAuctionId = b:GetListingInfo()
	return aAuctionId > bAuctionId
end

function private.LowestAuctionCompare(a, b)
	if a.isBlacklist ~= b.isBlacklist then
		return a.isBlacklist
	end
	if a.isWhitelist ~= b.isWhitelist then
		return a.isWhitelist
	end
	if a.auctionId ~= b.auctionId then
		return a.auctionId > b.auctionId
	end
	if a.isPlayer ~= b.isPlayer then
		return b.isPlayer
	end
	return tostring(a) < tostring(b)
end

function private.GetPlayerAuctionCount(subRow)
	local ownerStr, numOwnerItems = subRow:GetOwnerInfo()
	if Environment.IsRetail() then
		return numOwnerItems
	else
		return PlayerInfo.IsPlayer(ownerStr, true, true, true) and select(2, subRow:GetQuantities()) or 0
	end
end
