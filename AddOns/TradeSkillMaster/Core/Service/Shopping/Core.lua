-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
TSM:NewPackage("Shopping")
local Threading = TSM.Include("Service.Threading")
local ShoppingSearchContext = TSM.Include("LibTSMClass").DefineClass("ShoppingSearchContext")
TSM.Shopping.ShoppingSearchContext = ShoppingSearchContext



-- ============================================================================
-- ShoppingSearchContext - Public Class Methods
-- ============================================================================

function ShoppingSearchContext.__init(self, threadId, marketValueFunc, gatheringResultsFunction)
	assert(threadId and marketValueFunc)
	self._threadId = threadId
	self._marketValueFunc = marketValueFunc
	self._gatheringResultsFunction = gatheringResultsFunction
	self._name = nil
	self._filterInfo = nil
	self._postContext = nil
	self._buyCallback = nil
	self._stateCallback = nil
	self._pctTooltip = nil
end

function ShoppingSearchContext.SetScanContext(self, name, filterInfo, postContext, pctTooltip)
	assert(name)
	self._name = name
	self._filterInfo = filterInfo
	self._postContext = postContext
	-- clear the callbacks when the scan context changes
	self._buyCallback = nil
	self._stateCallback = nil
	self._pctTooltip = pctTooltip
	return self
end

function ShoppingSearchContext.SetCallbacks(self, buyCallback, stateCallback)
	self._buyCallback = buyCallback
	self._stateCallback = stateCallback
	return self
end

function ShoppingSearchContext.StartThread(self, callback, auctionScan)
	Threading.SetCallback(self._threadId, callback)
	Threading.Start(self._threadId, auctionScan, self._filterInfo, self._postContext)
end

function ShoppingSearchContext.KillThread(self)
	Threading.Kill(self._threadId)
end

function ShoppingSearchContext.GetMarketValueFunc(self)
	return self._marketValueFunc
end

function ShoppingSearchContext.GetGatheringResultsFunc(self)
	return self._gatheringResultsFunction
end

function ShoppingSearchContext.GetPctTooltip(self)
	return self._pctTooltip
end

function ShoppingSearchContext.GetMaxCanBuy(self, itemString)
	return nil
end

function ShoppingSearchContext.OnBuy(self, itemString, quantity)
	if self._buyCallback then
		self._buyCallback(itemString, quantity)
	end
end

function ShoppingSearchContext.OnStateChanged(self, state)
	if self._stateCallback then
		self._stateCallback(state)
	end
end

function ShoppingSearchContext.GetName(self)
	return self._name
end

function ShoppingSearchContext.GetPostContext(self)
	return self._postContext
end
