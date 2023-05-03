-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local BuyUtil = TSM.UI.AuctionUI:NewPackage("BuyUtil")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Delay = TSM.Include("Util.Delay")
local Money = TSM.Include("Util.Money")
local Log = TSM.Include("Util.Log")
local Math = TSM.Include("Util.Math")
local Theme = TSM.Include("Util.Theme")
local ItemInfo = TSM.Include("Service.ItemInfo")
local CustomPrice = TSM.Include("Service.CustomPrice")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	commodityQuoteTimer = nil,
	totalBuyout = nil,
	isBuy = nil,
	auctionScan = nil,
	subRow = nil,
	index = nil,
	noSeller = nil,
	baseFrame = nil,
	dialogFrame = nil,
	future = nil,
	prepareQuantity = nil,
	prepareSuccess = false,
	marketValueFunc = nil,
	itemString = nil,
	isCommodity = nil,
	quantity = nil,
	defaultQuantity = nil,
	maxQuantity = nil,
	auctionNum = nil,
	numFound = nil,
	callback = nil,
	displayItemBuyout = nil,
	displayTotalBuyout = nil,
	marketTreshold = nil,
	alertThreshold = nil,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function BuyUtil.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "shoppingOptions", "buyoutConfirm")
		:AddKey("global", "shoppingOptions", "buyoutAlertSource")
	private.commodityQuoteTimer = Delay.CreateTimer("COMMODITY_QUOTE_TIMER", private.OnQuoteTick)
end

function BuyUtil.ShowConfirmation(baseFrame, subRow, isBuy, auctionNum, numFound, maxQuantity, callback, auctionScan, index, noSeller, searchContext)
	auctionNum = min(auctionNum, numFound)
	local buyout = subRow:GetBuyouts()
	if not isBuy then
		buyout = subRow:GetRequiredBid(subRow)
	end
	local quantity = subRow:GetQuantities()
	local itemString = subRow:GetItemString()
	local _, _, _, isHighBidder = subRow:GetBidInfo()
	local isCommodity = Environment.IsRetail() and subRow:IsCommodity()
	local shouldConfirm = false
	if isCommodity then
		shouldConfirm = true
	elseif isBuy and isHighBidder then
		shouldConfirm = true
	elseif private.settings.buyoutConfirm then
		shouldConfirm = ceil(buyout / quantity) >= (CustomPrice.GetValue(private.settings.buyoutAlertSource, itemString) or 0)
	end
	if not shouldConfirm then
		return false
	end

	private.isBuy = isBuy
	private.auctionScan = auctionScan
	private.subRow = subRow
	private.index = index
	private.noSeller = noSeller
	private.baseFrame = baseFrame:GetBaseElement()
	private.itemString = itemString
	private.isCommodity = isCommodity
	private.quantity = quantity
	private.maxQuantity = maxQuantity
	private.auctionNum = auctionNum
	private.numFound = numFound
	private.callback = callback
	private.marketValueFunc = searchContext:GetMarketValueFunc()

	private.defaultQuantity = isCommodity and numFound or 1
	local gatheringResultsFunction = searchContext:GetGatheringResultsFunc()
	if gatheringResultsFunction then
		private.defaultQuantity = gatheringResultsFunction(auctionScan, private.marketValueFunc, itemString, private.defaultQuantity, maxQuantity)
	end
	assert(not isCommodity or isBuy)

	private.marketTreshold = gatheringResultsFunction and (private.marketValueFunc(private.subRow) or 0) or math.huge
	private.alertThreshold = private.settings.buyoutConfirm and (CustomPrice.GetValue(private.settings.buyoutAlertSource, itemString) or 0) or math.huge

	private.displayItemBuyout = nil
	private.displayTotalBuyout = nil
	if isCommodity then
		private.displayTotalBuyout = private.CommodityResultsByQuantity(itemString, private.defaultQuantity)
		private.displayItemBuyout = Math.Ceil(private.displayTotalBuyout / private.defaultQuantity, COPPER_PER_SILVER)
	else
		private.displayItemBuyout = ceil(buyout / quantity)
		private.displayTotalBuyout = Environment.HasFeature(Environment.FEATURES.AH_STACKS) and buyout or ceil(buyout / quantity)
	end


	if private.dialogFrame then
		return true
	end

	private.dialogFrame = private.GetBuyUtilFrame()
	private.baseFrame:ShowDialogFrame(private.dialogFrame)
	private.prepareQuantity = nil
	private.Prepare(private.defaultQuantity)

	return true
end



-- ============================================================================
-- BuyUtil UI
-- ============================================================================

function private.GetBuyUtilFrame()
	return UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetSize(private.isCommodity and 600 or 340, private.isCommodity and 272 or 262)
		:SetPadding(12)
		:AddAnchor("CENTER")
		:SetContext(private.callback)
		:SetMouseEnabled(true)
		:SetBackgroundColor("FRAME_BG", true)
		:SetScript("OnHide", private.DialogOnHide)
		:AddChild(UIElements.New("ViewContainer", "view")
			:SetNavCallback(private.GetViewContentFrame)
			:AddPath("details", true)
			:AddPath("confirm")
		)
end

function private.GetViewContentFrame(viewContainer, path)
	if path == "details" then
		return private.GetDetailsFrame()
	elseif path == "confirm" then
		return private.GetConfirmFrame()
	else
		error("Unexpected path: "..tostring(path))
	end
end

function private.GetDetailsFrame()
	return UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, -4, 10)
			:AddChild(UIElements.New("Spacer", "spacer")
			)
			:AddChild(UIElements.New("Text", "title")
				:SetWidth(240)
				:SetMargin(24, 0, 0, 0)
				:SetJustifyH("CENTER")
				:SetFont("BODY_BODY1_BOLD")
				:SetText(private.isCommodity and L["Order Confirmation"] or L["Buyout"])
			)
			:AddChild(UIElements.New("Spacer", "spacer")
			)
			:AddChild(UIElements.New("Button", "closeBtn")
				:SetMargin(0, -4, 0, 0)
				:SetBackgroundAndSize("iconPack.24x24/Close/Default")
				:SetScript("OnClick", private.BuyoutConfirmCloseBtnOnClick)
			)
		)
		:AddChild(UIElements.New("Frame", "content")
			:SetLayout("HORIZONTAL")
			:AddChild(UIElements.New("Frame", "left")
				:SetLayout("VERTICAL")
				:AddChild(UIElements.New("Frame", "item")
					:SetLayout("HORIZONTAL")
					:SetPadding(6)
					:SetMargin(0, 0, 0, 16)
					:SetBackgroundColor("PRIMARY_BG_ALT", true)
					:AddChild(UIElements.New("Button", "icon")
						:SetSize(36, 36)
						:SetMargin(0, 8, 0, 0)
						:SetBackground(ItemInfo.GetTexture(private.itemString))
						:SetTooltip(private.itemString)
					)
					:AddChild(UIElements.New("Text", "name")
						:SetHeight(36)
						:SetFont("ITEM_BODY1")
						:SetText(UIUtils.GetDisplayItemName(private.itemString))
					)
				)
				:AddChildIf(private.isCommodity, UIElements.New("Frame", "quantity")
					:SetLayout("HORIZONTAL")
					:SetHeight(24)
					:SetMargin(0, 0, 0, 16)
					:AddChild(UIElements.New("Text", "desc")
						:SetFont("BODY_BODY2")
						:SetText(L["Quantity"]..":")
					)
					:AddChild(UIElements.New("Input", "input")
						:SetWidth(140)
						:SetJustifyH("RIGHT")
						:SetBackgroundColor("PRIMARY_BG_ALT")
						:SetValidateFunc("NUMBER", "1:"..private.maxQuantity)
						:SetValue(tostring(private.defaultQuantity))
						:SetContext(private.maxQuantity)
						:SetScript("OnValueChanged", private.InputQtyOnValueChanged)
					)
				)
				:AddChildIf(not private.isCommodity, UIElements.New("Frame", "stacks")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:SetMargin(0, 0, 0, 16)
					:AddChild(UIElements.New("Text", "desc")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY2")
						:SetText(private.isBuy and L["Purchasing Auction"]..":" or L["Bidding Auction"]..":")
					)
					:AddChild(UIElements.New("Text", "number")
						:SetJustifyH("RIGHT")
						:SetFont("TABLE_TABLE1")
						:SetText(private.auctionNum.."/"..private.numFound)
					)
				)
				:AddChild(UIElements.New("Frame", "price")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:SetMargin(0, 0, 0, 16)
					:AddChild(UIElements.New("Text", "desc")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY2")
						:SetText(L["Unit Price"]..":")
					)
					:AddChild(UIElements.New("Text", "money")
						:SetJustifyH("RIGHT")
						:SetFont("TABLE_TABLE1")
						:SetContext(private.displayItemBuyout)
						:SetText(private.GetUnitPriceMoneyStr(private.displayItemBuyout))
					)
				)
				:AddChild(UIElements.New("Frame", "total")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:AddChild(UIElements.New("Text", "desc")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY2")
						:SetText(L["Total Price"]..":")
					)
					:AddChild(UIElements.New("Text", "money")
						:SetJustifyH("RIGHT")
						:SetFont("TABLE_TABLE1")
						:SetText(Money.ToString(private.displayTotalBuyout, nil, "OPT_83_NO_COPPER"))
					)
				)
				:AddChild(UIElements.New("Spacer", "spacer")
				)
				:AddChild(UIElements.New("Text", "warning")
					:SetHeight(20)
					:SetMargin(0, 0, 0, 6)
					:SetFont("BODY_BODY3")
					:SetJustifyH("CENTER")
					:SetTextColor("FEEDBACK_YELLOW")
					:SetText("")
				)
				:AddChild(UIElements.NewNamed("ActionButton", "confirmBtn", "TSMBidBuyConfirmBtn")
					:SetHeight(24)
					:SetText(private.isCommodity and (C_AuctionHouse.GetQuoteDurationRemaining() <= 10 and format(L["Buy Commodity (%02d)"], C_AuctionHouse.GetQuoteDurationRemaining()) or L["Buy Commodity"]) or (private.isBuy and L["Buy Auction"] or L["Bid Auction"]))
					:SetContext(not private.isCommodity and private.quantity or nil)
					:SetDisabled(private.future and true or false)
					:SetScript("OnClick", private.BuyoutBtnOnClick)
				)
			)
			:AddChildIf(private.isCommodity, UIElements.New("Frame", "item")
				:SetLayout("HORIZONTAL")
				:SetWidth(266)
				:SetMargin(12, 0, 0, 0)
				:SetPadding(4, 4, 8, 8)
				:SetBackgroundColor("PRIMARY_BG_ALT", true)
				:AddChild(UIElements.New("CommodityList", "items")
					:SetBackgroundColor("PRIMARY_BG_ALT")
					:SetData(private.subRow:GetResultRow())
					:SetMarketValueFunction(private.marketValueFunc)
					:SetMarketThreshold(private.marketTreshold)
					:SetAlertThreshold(private.alertThreshold)
					:SelectQuantity(private.defaultQuantity)
					:SetScript("OnRowClick", private.CommodityOnRowClick)
				)
			)
		)
end

function private.GetConfirmFrame()
	assert(private.isCommodity)
	private.displayTotalBuyout = private.CommodityResultsByQuantity(private.itemString, private.defaultQuantity)
	private.displayItemBuyout = Math.Ceil(private.displayTotalBuyout / private.defaultQuantity, COPPER_PER_SILVER)
	return UIElements.New("Frame", "content")
		:SetLayout("VERTICAL")
		:SetMargin(0, 0, -4, 10)
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 0, 10)
			:AddChild(UIElements.New("Spacer", "spacer")
			)
			:AddChild(UIElements.New("Text", "title")
				:SetWidth(240)
				:SetJustifyH("CENTER")
				:SetFont("BODY_BODY1_BOLD")
				:SetText(L["Buyout Above Threshold"])
			)
			:AddChild(UIElements.New("Spacer", "spacer")
			)
			:AddChild(UIElements.New("Button", "closeBtn")
				:SetMargin(0, -4, 0, 0)
				:SetBackgroundAndSize("iconPack.24x24/Close/Default")
				:SetScript("OnClick", private.BuyoutConfirmCloseBtnOnClick)
			)
		)
		:AddChild(UIElements.New("Frame", "item")
			:SetLayout("HORIZONTAL")
			:SetPadding(6)
			:SetMargin(0, 0, 0, 16)
			:SetBackgroundColor("PRIMARY_BG_ALT", true)
			:AddChild(UIElements.New("Button", "icon")
				:SetSize(36, 36)
				:SetMargin(0, 8, 0, 0)
				:SetBackground(ItemInfo.GetTexture(private.itemString))
				:SetTooltip(private.itemString)
			)
			:AddChild(UIElements.New("Text", "name")
				:SetHeight(36)
				:SetFont("ITEM_BODY1")
				:SetText(UIUtils.GetDisplayItemName(private.itemString))
			)
		)
		:AddChild(UIElements.New("Frame", "quantity")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 0, 16)
			:AddChild(UIElements.New("Text", "desc")
				:SetFont("BODY_BODY2")
				:SetText(L["Quantity"]..":")
			)
			:AddChild(UIElements.New("Spacer", "spacer")
			)
			:AddChild(UIElements.New("Text", "text")
				:SetJustifyH("RIGHT")
				:SetFont("TABLE_TABLE1")
				:SetText(private.defaultQuantity)
			)
		)
		:AddChild(UIElements.New("Frame", "price")
			:SetLayout("HORIZONTAL")
			:SetHeight(20)
			:SetMargin(0, 0, 0, 16)
			:AddChild(UIElements.New("Text", "desc")
				:SetFont("BODY_BODY2")
				:SetText(L["Unit Price"]..":")
			)
			:AddChild(UIElements.New("Spacer", "spacer")
			)
			:AddChild(UIElements.New("Text", "text")
				:SetJustifyH("RIGHT")
				:SetFont("TABLE_TABLE1")
				:SetText(private.GetUnitPriceMoneyStr(private.displayItemBuyout))
			)
		)
		:AddChild(UIElements.New("Frame", "total")
			:SetLayout("HORIZONTAL")
			:SetHeight(20)
			:SetMargin(0, 0, 0, 34)
			:AddChild(UIElements.New("Text", "desc")
				:SetFont("BODY_BODY2")
				:SetText(L["Total Price"]..":")
			)
			:AddChild(UIElements.New("Spacer", "spacer")
			)
			:AddChild(UIElements.New("Text", "text")
				:SetJustifyH("RIGHT")
				:SetFont("TABLE_TABLE1")
				:SetText(Money.ToString(private.displayTotalBuyout, nil, "OPT_83_NO_COPPER"))
			)
		)
		:AddChild(UIElements.New("Frame", "footer")
			:SetLayout("HORIZONTAL")
			:SetMargin(0, 0, 0, 16)
			:AddChild(UIElements.New("ActionButton", "cancelBtn")
				:SetSize(298, 24)
				:SetMargin(0, 8, 0, 0)
				:SetText(L["No, cancel"])
				:SetScript("OnClick", private.ViewCancelBtnOnClick)
			)
			:AddChild(UIElements.NewNamed("ActionButton", "confirmBtn", "TSMBidBuyConfirmBtn")
				:SetHeight(24)
				:SetText(C_AuctionHouse.GetQuoteDurationRemaining() <= 10 and format(L["Yes, I'm sure (%02d)"], C_AuctionHouse.GetQuoteDurationRemaining()) or L["Yes, I'm sure"])
				:SetContext(not private.isCommodity and private.defaultQuantity or nil)
				:SetDisabled(private.future and true or false)
				:SetScript("OnClick", private.TriggerBuyoutBtnOnClick)
			)
		)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.DialogOnHide()
	if private.future then
		private.future:Cancel()
		private.future = nil
	end
	private.commodityQuoteTimer:Cancel()
	private.baseFrame = nil
	private.dialogFrame = nil
	private.isBuy = nil
	private.auctionScan = nil
	private.subRow = nil
	private.index = nil
	private.noSeller = nil
end

function private.BuyoutConfirmCloseBtnOnClick(button)
	button:GetBaseElement():HideDialog()
end

function private.ViewCancelBtnOnClick(button)
	private.dialogFrame:GetElement("view")
		:SetPath("details", true)
	private.InputQtyOnValueChanged(private.dialogFrame:GetElement("view.frame.content.left.quantity.input"), true)
end

function private.EnableFutureOnDone()
	local result = private.future:GetValue()
	private.future = nil
	if not result or result ~= (private.subRow:IsCommodity() and private.totalBuyout or select(2, private.subRow:GetBuyouts())) then
		-- the unit price changed
		Log.PrintUser(L["Failed to buy auction."])
		private.baseFrame:HideDialog()
		return
	end
	local input = private.dialogFrame:GetElement("view.frame.content.left.quantity.input")
	private.prepareSuccess = tonumber(input:GetValue()) == private.prepareQuantity
	private.UpdateConfirmButton()
end

function private.OnQuoteTick()
	if not private.isCommodity then
		return
	end
	local duration = C_AuctionHouse.GetQuoteDurationRemaining()
	if duration <= 0 then
		local view = private.dialogFrame:GetElement("view")
		if view:GetPath() ~= "details" then
			view:SetPath("details", true)
		end
		private.prepareSuccess = false
		private.prepareQuantity = nil
		private.UpdateConfirmButton()
		Log.Info("Commodity quote timed out")
	else
		if duration <= 10 then
			if private.dialogFrame:GetElement("view"):GetPath() == "details" then
				private.dialogFrame:GetElement("view.frame.content.left.confirmBtn"):SetFormattedText(L["Buy Commodity (%02d)"], duration)
					:Draw()
			else
				private.dialogFrame:GetElement("view.content.footer.confirmBtn"):SetFormattedText(L["Yes, I'm sure (%02d)"], duration)
					:Draw()
			end
		end
		private.commodityQuoteTimer:RunForTime(1)
	end
end

function private.GetUnitPriceMoneyStr(itemBuyout)
	local priceStr = Money.ToString(itemBuyout, nil, "OPT_83_NO_COPPER")
	local marketValueStr = nil
	local marketValue = private.marketValueFunc(private.subRow)
	local pct = marketValue and marketValue > 0 and itemBuyout > 0 and Math.Round(100 * itemBuyout / marketValue) or nil
	if pct then
		local pctColor = Theme.GetAuctionPercentColor(pct)
		if pct > 999 then
			marketValueStr = pctColor:ColorText(">999%")
		else
			marketValueStr = pctColor:ColorText(pct.."%")
		end
	else
		marketValueStr = "---"
	end
	return format("%s (%s)", priceStr, marketValueStr)
end

function private.CommodityResultsByQuantity(itemString, quantity)
	local remainingQuantity = quantity
	local totalPrice, maxPrice = 0, 0
	for _, query in private.auctionScan:QueryIterator() do
		for _, subRow in query:ItemSubRowIterator(itemString) do
			if remainingQuantity > 0 then
				local _, itemBuyout = subRow:GetBuyouts()
				local _, numOwnerItems = subRow:GetOwnerInfo()
				local quantityAvailable = subRow:GetQuantities() - numOwnerItems
				local quantityToBuy = min(quantityAvailable, remainingQuantity)
				totalPrice = totalPrice + (itemBuyout * quantityToBuy)
				remainingQuantity = remainingQuantity - quantityToBuy
				maxPrice = max(maxPrice, itemBuyout)
			end
		end
	end
	return totalPrice, maxPrice, maxPrice >= private.marketTreshold and L["Contains auctions above your material value!"] or L["Contains auctions above your alert threshold!"]
end

function private.InputQtyOnValueChanged(input, noListUpdate)
	local quantity = tonumber(input:GetValue())
	input:SetValue(quantity)
	local totalBuyout = private.subRow:IsCommodity() and private.CommodityResultsByQuantity(private.subRow:GetItemString(), quantity) or input:GetElement("__parent.__parent.price.money"):GetContext() * quantity
	local itemBuyout = quantity > 0 and Math.Ceil(totalBuyout / quantity, COPPER_PER_SILVER) or 0
	input:GetElement("__parent.__parent.price.money")
		:SetContext(itemBuyout)
		:SetText(private.GetUnitPriceMoneyStr(itemBuyout))
		:Draw()
	input:GetElement("__parent.__parent.total.money")
		:SetText(Money.ToString(totalBuyout, nil, "OPT_83_NO_COPPER"))
		:Draw()
	if not noListUpdate then
		input:GetElement("__parent.__parent.__parent.item.items")
			:SelectQuantity(quantity)
	end
	if quantity ~= private.prepareQuantity then
		private.prepareSuccess = false
		private.prepareQuantity = nil
	end
	private.defaultQuantity = quantity
	private.UpdateConfirmButton()
end

function private.CommodityOnRowClick(list, index)
	local input = list:GetElement("__parent.__parent.left.quantity.input")
	input:SetValue(list:GetTotalQuantity(index))
		:Draw()
	private.Prepare(tonumber(input:GetValue()))
	private.InputQtyOnValueChanged(input, true)
end

function private.BuyoutBtnOnClick(button)
	local inputQuantity = nil
	if Environment.IsRetail() and private.subRow:IsCommodity() then
		local input = private.dialogFrame:GetElement("view.frame.content.left.quantity.input")
		inputQuantity = tonumber(input:GetValue())
		if not private.prepareSuccess then
			-- this is a prepare click
			private.Prepare(inputQuantity)
			return
		end
		assert(private.prepareQuantity == inputQuantity)
	end

	if Environment.IsRetail() and private.subRow:IsCommodity() then
		local itemString = private.subRow:GetItemString()
		local _, maxCost = private.CommodityResultsByQuantity(itemString, inputQuantity)
		if maxCost >= private.marketTreshold or maxCost >= private.alertThreshold then
			button:GetElement("__parent.__parent.__parent.__parent")
				:SetPath("confirm", true)
			return
		end
	end

	local isBuy = private.isBuy
	local callbackQuantity = button:GetContext()
	if callbackQuantity == nil then
		assert(inputQuantity)
		callbackQuantity = inputQuantity
	end
	local callback = button:GetElement("__parent.__parent.__parent.__parent.__parent"):GetContext()
	button:GetBaseElement():HideDialog()
	callback(isBuy, callbackQuantity)
end

function private.TriggerBuyoutBtnOnClick(button)
	local isBuy = private.isBuy
	local callbackQuantity = button:GetContext()
	if callbackQuantity == nil then
		assert(private.defaultQuantity)
		callbackQuantity = private.defaultQuantity
	end
	local callback = button:GetElement("__parent.__parent.__parent.__parent"):GetContext()
	button:GetBaseElement():HideDialog()
	callback(isBuy, callbackQuantity)
end

function private.UpdateConfirmButton()
	local confirmBtn = private.dialogFrame:GetElement("view.frame.content.left.confirmBtn")
	local text, disabled, requireManualClick = nil, false, false
	if Environment.IsRetail() and private.subRow:IsCommodity() then
		local input = confirmBtn:GetElement("__parent.quantity.input")
		local inputQuantity = tonumber(input:GetValue())
		local minQuantity = 1
		local maxQuantity = confirmBtn:GetElement("__parent.quantity.input"):GetContext()
		local itemString = private.subRow:GetItemString()
		local totalCost, maxCost, reason = private.CommodityResultsByQuantity(itemString, inputQuantity)
		if maxCost >= private.marketTreshold or maxCost >= private.alertThreshold then
			requireManualClick = true
		end
		confirmBtn:GetElement("__parent.warning")
			:SetText(requireManualClick and reason or "")
			:Draw()

		if GetMoney() < totalCost then
			text = L["Not Enough Money"]
			disabled = true
		elseif totalCost <= 0 or inputQuantity < minQuantity or inputQuantity > maxQuantity then
			text = L["Invalid Quantity"]
			disabled = true
		elseif private.prepareSuccess then
			text = C_AuctionHouse.GetQuoteDurationRemaining() <= 10 and format(L["Buy Commodity (%02d)"], C_AuctionHouse.GetQuoteDurationRemaining()) or L["Buy Commodity"]
			disabled = false
		elseif private.prepareQuantity then
			text = L["Preparing..."]
			disabled = true
		else
			text = private.isBuy and L["Prepare Buy"] or L["Prepare Bid"]
			disabled = false
		end
		if private.prepareSuccess then
			private.commodityQuoteTimer:RunForTime(20)
		else
			private.commodityQuoteTimer:Cancel()
		end
	else
		if GetMoney() < confirmBtn:GetElement("__parent.price.money"):GetContext() then
			text = L["Not Enough Money"]
			disabled = true
		else
			text = private.isBuy and L["Buy Auction"] or L["Bid Auction"]
			disabled = false
		end
	end
	confirmBtn:SetText(text)
		:SetDisabled(disabled)
		:SetRequireManualClick(requireManualClick)
		:Draw()
end

function private.Prepare(quantity)
	if quantity == private.prepareQuantity then
		return
	end
	if private.future then
		private.future:Cancel()
		private.future = nil
	end
	private.prepareQuantity = quantity
	private.prepareSuccess = false
	local totalBuyout = Environment.IsRetail() and private.subRow:IsCommodity() and private.CommodityResultsByQuantity(private.subRow:GetItemString(), quantity) or (select(2, private.subRow:GetBuyouts()))
	private.totalBuyout = totalBuyout
	local itemBuyout = quantity > 0 and Math.Ceil(totalBuyout / quantity, COPPER_PER_SILVER)
	local result, future = private.auctionScan:PrepareForBidOrBuyout(private.index, private.subRow, private.noSeller, quantity, itemBuyout)
	if not result then
		private.prepareQuantity = nil
		return
	elseif future then
		private.future = future
		future:SetScript("OnDone", private.EnableFutureOnDone)
	end
	private.UpdateConfirmButton()
end
