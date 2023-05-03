-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local ResultSubRow = TSM.Init("Service.AuctionScanClasses.ResultSubRow") ---@class Service.AuctionScanClasses.ResultSubRow
local Environment = TSM.Include("Environment")
local ItemString = TSM.Include("Util.ItemString")
local ObjectPool = TSM.Include("Util.ObjectPool")
local Math = TSM.Include("Util.Math")
local ItemInfo = TSM.Include("Service.ItemInfo")
local LibTSMClass = TSM.Include("LibTSMClass")
local Util = TSM.Include("Service.AuctionScanClasses.Util")
local ResultSubRowWrapper = LibTSMClass.DefineClass("ResultSubRowWrapper")
local private = {
	objectPool = ObjectPool.New("AUCTION_SCAN_RESULT_SUB_ROW", ResultSubRowWrapper),
	ownersTemp = {},
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function ResultSubRow.Get(resultRow)
	local subRow = private.objectPool:Get()
	subRow:_Acquire(resultRow)
	return subRow
end



-- ============================================================================
-- ResultSubRowWrapper - Meta Class Methods
-- ============================================================================

function ResultSubRowWrapper.__init(self)
	self._resultRow = nil
	self._itemLink = nil
	self._buyout = nil
	self._minBid = nil
	self._currentBid = nil
	self._minIncrement = nil
	self._isHighBidder = nil
	self._quantity = nil
	self._timeLeft = nil
	self._ownerStr = nil
	self._hasOwners = false
	self._numOwnerItems = nil
	self._auctionId = nil
	self._hash = nil
	self._hashNoSeller = nil
	self._browseId = nil
	self._numAuctions = 1
end

function ResultSubRowWrapper._Acquire(self, resultRow)
	self._resultRow = resultRow
end



-- ============================================================================
-- ResultSubRowWrapper - Public Class Methods
-- ============================================================================

function ResultSubRowWrapper.Merge(self, other)
	if Environment.IsRetail() then
		if self:IsCommodity() then
			self._quantity = self._quantity + other._quantity
			self._numOwnerItems = self._numOwnerItems + other._numOwnerItems
		else
			self._numAuctions = self._numAuctions + other._numAuctions
		end
	else
		self._numAuctions = self._numAuctions + other._numAuctions
	end
end

function ResultSubRowWrapper.Release(self)
	self._resultRow = nil
	self._numAuctions = 1
	self:_SetRawData(nil)
	private.objectPool:Recycle(self)
end

function ResultSubRowWrapper.IsSubRow(self)
	return true
end

function ResultSubRowWrapper.HasRawData(self)
	return self._timeLeft and true or false
end

function ResultSubRowWrapper.HasOwners(self)
	return self._hasOwners
end

function ResultSubRowWrapper.HasItemString(self)
	assert(self:HasRawData())
	local itemString = ItemString.Get(self._itemLink)
	if not Util.HasItemInfo(itemString) then
		return false
	end
	return true
end

function ResultSubRowWrapper.IsCommodity(self)
	return self._resultRow:IsCommodity()
end

function ResultSubRowWrapper.GetResultRow(self)
	return self._resultRow
end

function ResultSubRowWrapper.GetBaseItemString(self)
	return self._resultRow:GetBaseItemString()
end

function ResultSubRowWrapper.GetItemString(self)
	assert(self:HasRawData())
	local itemString = ItemString.Get(self._itemLink)
	return itemString or self._resultRow:GetItemString()
end

function ResultSubRowWrapper.GetItemInfo(self)
	assert(self:HasItemString())
	local itemString = ItemString.Get(self._itemLink)
	local itemName = ItemInfo.GetName(itemString)
	local quality = ItemInfo.GetQuality(itemString)
	local itemLevel = ItemInfo.GetItemLevel(itemString)
	assert(itemName and quality and itemLevel)
	return itemName, quality, itemLevel, nil
end

function ResultSubRowWrapper.GetBuyouts(self)
	assert(self:HasRawData())
	return self._buyout, floor(self._buyout / self._quantity), nil
end

function ResultSubRowWrapper.GetBidInfo(self)
	assert(self:HasRawData())
	local itemMinBid = Math.Floor(self._minBid / self._quantity, Environment.HasFeature(Environment.FEATURES.AH_COPPER) and 1 or COPPER_PER_SILVER)
	return self._minBid, itemMinBid, self._currentBid, self._isHighBidder, self._minIncrement
end

function ResultSubRowWrapper.GetRequiredBid(self)
	local requiredBid = nil
	if Environment.IsRetail() then
		requiredBid = self._minBid
	else
		requiredBid = self._currentBid == 0 and self._minBid or (self._currentBid + self._minIncrement)
	end
	return requiredBid
end

function ResultSubRowWrapper.GetDisplayedBids(self)
	local displayedBid = self._currentBid == 0 and self._minBid or self._currentBid
	local itemDisplayedBid = Math.Floor(displayedBid / self._quantity, Environment.HasFeature(Environment.FEATURES.AH_COPPER) and 1 or COPPER_PER_SILVER)
	return displayedBid, itemDisplayedBid
end

function ResultSubRowWrapper.GetLinks(self)
	assert(self:HasRawData())
	local rawLink = self._itemLink
	local itemLink = ItemInfo.GeneralizeLink(rawLink)
	return itemLink, rawLink
end

function ResultSubRowWrapper.GetListingInfo(self)
	assert(self:HasRawData())
	return self._timeLeft, self._auctionId, self._browseId
end

function ResultSubRowWrapper.GetQuantities(self)
	assert(self:HasRawData())
	return self._quantity, self._numAuctions
end

function ResultSubRowWrapper.GetOwnerInfo(self)
	assert(self:HasRawData())
	return self._ownerStr, self._numOwnerItems
end

function ResultSubRowWrapper.GetHashes(self)
	if not self._hash then
		assert(self:HasRawData())
		if Environment.IsRetail() then
			local baseItemString = self:GetBaseItemString()
			local itemMinBid = Math.Floor(self._minBid / self._quantity, COPPER_PER_SILVER)
			local itemBuyout = floor(self._buyout / self._quantity)
			local itemKeyId, itemKeySpeciesId = nil, nil
			if ItemString.IsPet(baseItemString) then
				itemKeyId = ItemString.ToId(ItemString.GetPetCage())
				itemKeySpeciesId = ItemString.ToId(baseItemString)
			elseif ItemString.IsItem(baseItemString) then
				itemKeyId = ItemString.ToId(baseItemString)
				itemKeySpeciesId = 0
			else
				error("Invalid baseItemString: "..tostring(baseItemString))
			end
			if self:IsCommodity() then
				self._hash = strjoin("~", tostringall(itemKeyId, itemBuyout, self._auctionId, self._ownerStr))
				self._hashNoSeller = strjoin("~", tostringall(itemKeyId, itemBuyout, self._auctionId))
			else
				self._hash = strjoin("~", tostringall(itemKeyId, itemKeySpeciesId, self._itemLink, itemMinBid, itemBuyout, self._currentBid, self._quantity, self._isHighBidder, self._ownerStr, self._auctionId))
				self._hashNoSeller = strjoin("~", tostringall(itemKeyId, itemKeySpeciesId, self._itemLink, itemMinBid, itemBuyout, self._currentBid, self._quantity, self._isHighBidder, self._auctionId))
			end
		else
			self._hash = strjoin("~", tostringall(self._itemLink, self._minBid, self._minIncrement, self._buyout, self._currentBid, self._ownerStr, self._timeLeft, self._quantity, self._isHighBidder))
			self._hashNoSeller = strjoin("~", tostringall(self._itemLink, self._minBid, self._minIncrement, self._buyout, self._currentBid, self._timeLeft, self._quantity, self._isHighBidder))
		end
	end
	return self._hash, self._hashNoSeller
end

function ResultSubRowWrapper.EqualsIndex(self, index, noSeller)
	assert(not Environment.IsRetail())
	local _, _, stackSize, _, _, _, _, minBid, minIncrement, buyout, bid, isHighBidder, _, seller, sellerFull = GetAuctionItemInfo("list", index)
	seller = Util.FixSellerName(seller, sellerFull) or "?"
	-- this is to get around a bug in Blizzard's code where the minIncrement value will be inconsistent for auctions where the player is the highest bidder
	minIncrement = isHighBidder and 0 or minIncrement
	if minBid ~= self._minBid or minIncrement ~= self._minIncrement or buyout ~= self._buyout or bid ~= self._currentBid or stackSize == self._quantity and isHighBidder ~= self._isHighBidder then
		return false
	elseif not noSeller and seller ~= self._ownerStr then
		return false
	elseif GetAuctionItemLink("list", index) ~= self._itemLink then
		return false
	elseif GetAuctionItemTimeLeft("list", index) ~= self._timeLeft then
		return false
	end
	return true
end

function ResultSubRowWrapper.DecrementQuantity(self, amount)
	if Environment.IsRetail() then
		if self:IsCommodity() then
			self._resultRow:DecrementQuantity(amount)
		else
			assert(amount == 1 and amount == self._quantity)
			self._numAuctions = self._numAuctions - 1
			assert(self._numOwnerItems <= self._numAuctions)
			if self._numAuctions == 0 then
				self._resultRow:RemoveSubRow(self)
			end
		end
	else
		assert(amount == self._quantity)
		self._numAuctions = self._numAuctions - 1
		if self._numAuctions == 0 then
			self._resultRow:RemoveSubRow(self)
		end
	end
end

function ResultSubRowWrapper.UpdateResultInfo(self, newAuctionId, newResultInfo)
	if newResultInfo then
		self:_SetRawData(newResultInfo, self._browseId)
	else
		self._auctionId = newAuctionId
		self._hash = nil
		self._hashNoSeller = nil
	end
end



-- ============================================================================
-- ResultRowWrapper - Private Class Methods
-- ============================================================================

function ResultSubRowWrapper._SetRawData(self, data, browseId, itemLink)
	self._hash = nil
	self._hashNoSeller = nil
	self._browseId = browseId
	if data then
		if Environment.IsRetail() then
			if self._resultRow:IsCommodity() then
				local baseItemString = self._resultRow:GetBaseItemString()
				self._itemLink = ItemInfo.GetLink(baseItemString)
			else
				self._itemLink = data.itemLink
			end

			if self:IsCommodity() then
				self._quantity = data.quantity
				self._buyout = data.unitPrice * data.quantity
				self._minBid = self._buyout
				self._currentBid = 0
				self._minIncrement = 0
				self._isHighBidder = data.bidder and data.bidder == UnitGUID("player") or false
				self._numOwnerItems = data.numOwnerItems or 0
				-- convert the timeLeftSeconds to regular timeLeft
				if data.timeLeftSeconds < 60 * 60 then
					self._timeLeft = 1
				elseif data.timeLeftSeconds < 2 * 60 * 60 then
					self._timeLeft = 2
				elseif data.timeLeftSeconds < 12 * 60 * 60 then
					self._timeLeft = 3
				else
					self._timeLeft = 4
				end
			else
				self._quantity = 1
				self._numAuctions = data.quantity
				self._buyout = data.buyoutAmount or 0
				self._minBid = data.minBid or data.buyoutAmount
				self._currentBid = data.bidAmount or 0
				self._minIncrement = 0
				self._isHighBidder = false
				self._numOwnerItems = data.containsAccountItem and data.quantity or 0
				self._timeLeft = data.timeLeft + 1
			end

			self._hasOwners = #data.owners > 0
			assert(#private.ownersTemp == 0)
			for _, owner in ipairs(data.owners) do
				if owner == "player" then
					owner = UnitName("player")
				elseif owner == "" then
					owner = "?"
					self._hasOwners = false
				end
				tinsert(private.ownersTemp, owner)
			end
			self._ownerStr = table.concat(private.ownersTemp, ",")
			wipe(private.ownersTemp)
			self._auctionId = data.auctionID
		else
			local _, _, stackSize, _, _, _, _, minBid, minIncrement, buyout, bid, isHighBidder, _, seller, sellerFull = GetAuctionItemInfo("list", data)
			seller = Util.FixSellerName(seller, sellerFull)
			-- this is to get around a bug in Blizzard's code where the minIncrement value will be inconsistent for auctions where the player is the highest bidder
			minIncrement = isHighBidder and 0 or minIncrement
			self._itemLink = itemLink
			self._buyout = buyout
			self._minBid = minBid
			self._currentBid = bid
			self._minIncrement = minIncrement
			self._isHighBidder = isHighBidder
			self._quantity = stackSize
			self._timeLeft = GetAuctionItemTimeLeft("list", data)
			self._ownerStr = seller or "?"
			self._hasOwners = seller and true or false
			self._numOwnerItems = 0
			self._auctionId = 0
		end
		assert(self._itemLink and self._quantity and self._buyout and self._minBid and self._currentBid and self._numOwnerItems and self._timeLeft and self._ownerStr and self._auctionId)
	else
		self._itemLink = nil
		self._buyout = nil
		self._minBid = nil
		self._currentBid = nil
		self._minIncrement = nil
		self._isHighBidder = nil
		self._quantity = nil
		self._timeLeft = nil
		self._ownerStr = nil
		self._hasOwners = false
		self._numOwnerItems = nil
		self._auctionId = nil
	end
end
