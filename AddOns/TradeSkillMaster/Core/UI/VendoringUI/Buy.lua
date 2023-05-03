-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Buy = TSM.UI.VendoringUI:NewPackage("Buy")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Money = TSM.Include("Util.Money")
local String = TSM.Include("Util.String")
local Log = TSM.Include("Util.Log")
local TempTable = TSM.Include("Util.TempTable")
local Theme = TSM.Include("Util.Theme")
local ItemString = TSM.Include("Util.ItemString")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	query = nil,
	filterText = "",
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Buy.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "vendoringUIContext", "buyScrollingTable")
	TSM.UI.VendoringUI.RegisterTopLevelPage(L["Buy"], private.GetFrame)
end

function Buy.UpdateCurrency(frame)
	if not GetMerchantCurrencies() or frame:GetSelectedNavButton() ~= L["Buy"] then
		return
	end
	frame:GetElement("content.buy.footer.altCost")
		:SetText(private.GetCurrencyText())
	frame:GetElement("content.buy.footer")
		:Draw()
end



-- ============================================================================
-- Buy UI
-- ============================================================================

function private.GetFrame()
	UIUtils.AnalyticsRecordPathChange("vendoring", "buy")
	private.filterText = ""
	if not private.query then
		private.query = TSM.Vendoring.Buy.CreateMerchantQuery()
			:VirtualField("name", "string", ItemInfo.GetName, "itemString", "?")
	end
	private.query:ResetFilters()
	private.query:NotEqual("numAvailable", 0)
	private.query:ResetOrderBy()
	private.query:OrderBy("name", true)

	local altCost = Environment.IsRetail() and GetMerchantCurrencies()
	local frame = UIElements.New("Frame", "buy")
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("Frame", "filters")
			:SetLayout("HORIZONTAL")
			:SetHeight(40)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("Input", "searchInput")
				:SetMargin(0, 8, 0, 0)
				:SetIconTexture("iconPack.18x18/Search")
				:SetClearButtonEnabled(true)
				:AllowItemInsert()
				:SetHintText(L["Search Vendor"])
				:SetScript("OnValueChanged", private.InputOnValueChanged)
			)
			:AddChild(UIElements.New("Button", "filterBtn")
				:SetWidth("AUTO")
				:SetMargin(0, 4, 0, 0)
				:SetFont("BODY_BODY3_MEDIUM")
				:SetText(FILTERS)
				-- TODO
				-- :SetScript("OnClick", private.FilterButtonOnClick)
			)
			:AddChild(UIElements.New("Button", "filterBtnIcon")
				:SetBackgroundAndSize("iconPack.14x14/Filter")
				-- TODO
				-- :SetScript("OnClick", private.FilterButtonOnClick)
			)
		)
		:AddChild(UIElements.New("QueryScrollingTable", "items")
			:SetSettingsContext(private.settings, "buyScrollingTable")
			:GetScrollingTableInfo()
				:NewColumn("qty")
					:SetTitle(L["Qty"])
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("RIGHT")
					:SetTextInfo("stackSize")
					:SetSortInfo("stackSize")
					:Commit()
				:NewColumn("item")
					:SetTitle(L["Item"])
					:SetIconSize(12)
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo(nil, private.GetItemText)
					:SetIconInfo("itemString", ItemInfo.GetTexture)
					:SetTooltipInfo("itemString")
					:SetSortInfo("name")
					:SetTooltipLinkingDisabled(true)
					:DisableHiding()
					:Commit()
				:NewColumn("ilvl")
					:SetTitle(L["ilvl"])
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("RIGHT")
					:SetTextInfo("itemString", ItemInfo.GetItemLevel)
					:Commit()
				:NewColumn("cost")
					:SetTitle(L["Cost"])
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("RIGHT")
					:SetTextInfo(nil, private.GetCostText)
					:SetTooltipInfo("firstCostItemString", private.GetCostTooltip)
					:SetSortInfo("price")
					:SetTooltipLinkingDisabled(true)
					:Commit()
				:SetCursor("BUY_CURSOR")
				:Commit()
			:SetQuery(private.query)
			:SetScript("OnRowClick", private.RowOnClick)
		)
		:AddChild(UIElements.New("HorizontalLine", "line"))
		:AddChild(UIElements.New("Frame", "footer")
			:SetLayout("HORIZONTAL")
			:SetHeight(40)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("Frame", "gold")
				:SetLayout("HORIZONTAL")
				:SetWidth(166)
				:SetMargin(0, 8, 0, 0)
				:SetPadding(4)
				:AddChild(TSM.UI.Views.PlayerGoldText.New("text"))
			)
			:AddChild(UIElements.New("VerticalLine", "line")
				:SetHeight(22)
				:SetMargin(0, 8, 0, 0)
			)
			:AddChild(UIElements.New("Button", "altCost")
				:SetWidth("AUTO")
				:SetMargin(0, 16, 0, 0)
				:SetFont("TABLE_TABLE1")
				:SetText(private.GetCurrencyText())
				:SetTooltip(altCost and "currency:"..altCost or nil)
			)
			:AddChild(UIElements.New("ActionButton", "repairBtn")
				:SetDisabled(not TSM.Vendoring.Buy.NeedsRepair())
				:SetText(L["Repair"])
				:SetModifierText(L["Repair from Guild Bank"], "ALT")
				:SetTooltip(private.GetRepairTooltip)
				:SetScript("OnClick", private.RepairOnClick)
			)
		)
	if not altCost then
		frame:GetElement("footer.line")
			:Hide()
		frame:GetElement("footer.altCost")
			:Hide()
	end
	return frame
end

function private.GetItemText(row)
	local itemString, numAvailable = row:GetFields("itemString", "numAvailable")
	local itemName = UIUtils.GetDisplayItemName(itemString) or "?"
	if numAvailable == -1 then
		return itemName
	elseif numAvailable > 0 then
		return itemName..Theme.GetColor("FEEDBACK_RED"):ColorText(" ("..numAvailable..")")
	else
		error("Invalid numAvailable: "..numAvailable)
	end
end

function private.GetCostText(row)
	local index, costItemsText, price, stackSize = row:GetFields("index", "costItemsText", "price", "stackSize")
	local color = TSM.Vendoring.Buy.GetMaxCanAfford(index) < stackSize and Theme.GetColor("FEEDBACK_RED"):GetTextColorPrefix()
	if costItemsText == "" then
		-- just a price
		return Money.ToString(price, color, "OPT_RETAIL_ROUND")
	elseif price == 0 then
		-- just an extended cost string
		return costItemsText
	else
		-- both
		return Money.ToString(price, color, "OPT_RETAIL_ROUND").." "..costItemsText
	end
end

function private.GetCostTooltip(itemString)
	return itemString ~= "" and itemString or nil
end

function private.GetRepairTooltip()
	local tooltipLines = TempTable.Acquire()
	local repairAllCost, canRepair = GetRepairAllCost()
	if canRepair and repairAllCost > 0 then
		tinsert(tooltipLines, REPAIR_ALL_ITEMS)
		if IsAltKeyDown() then
			local amount = GetGuildBankWithdrawMoney()
			local guildBankMoney = GetGuildBankMoney()
			if amount == -1 then
				amount = guildBankMoney
			else
				amount = min(amount, guildBankMoney)
			end
			tinsert(tooltipLines, GUILDBANK_REPAIR)
			tinsert(tooltipLines, Money.ToString(amount, nil, "OPT_RETAIL_ROUND"))
			if repairAllCost > amount then
				local personalAmount = repairAllCost - amount
				local personalMoney = GetMoney()
				if personalMoney >= personalAmount then
					tinsert(tooltipLines, GUILDBANK_REPAIR_PERSONAL)
					tinsert(tooltipLines, Money.ToString(personalAmount, nil, "OPT_RETAIL_ROUND"))
				else
					tinsert(tooltipLines, Theme.GetColor("FEEDBACK_RED"):ColorText(GUILDBANK_REPAIR_INSUFFICIENT_FUNDS))
				end
			end
		else
			tinsert(tooltipLines, Money.ToString(repairAllCost, nil, "OPT_RETAIL_ROUND"))
			local personalMoney = GetMoney()
			if repairAllCost > personalMoney then
				tinsert(tooltipLines, Theme.GetColor("FEEDBACK_RED"):ColorText(GUILDBANK_REPAIR_INSUFFICIENT_FUNDS))
			end
			tinsert(tooltipLines, L["Hold ALT to repair from the guild bank."])
		end
	end
	return strjoin("\n", TempTable.UnpackAndRelease(tooltipLines))
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.InputOnValueChanged(input)
	local text = input:GetValue()
	if text == private.filterText then
		return
	end
	private.filterText = text

	private.query:ResetFilters()
	private.query:NotEqual("numAvailable", 0)
	if text ~= "" then
		private.query:Matches("name", String.Escape(text))
	end
	input:GetElement("__parent.__parent.items"):UpdateData(true)
end

function private.RowOnClick(scrollingTable, row, mouseButton)
	if IsShiftKeyDown() then
		local itemString = row:GetField("itemString")
		local dialogFrame = UIElements.New("Frame", "frame")
			:SetLayout("VERTICAL")
			:SetSize(328, 214)
			:SetPadding(12)
			:AddAnchor("CENTER")
			:SetContext(row)
			:SetMouseEnabled(true)
			:SetBackgroundColor("FRAME_BG", true)
			:AddChild(UIElements.New("Frame", "header")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, -4, 10)
				:AddChild(UIElements.New("Spacer", "spacer")
					:SetWidth(20)
				)
				:AddChild(UIElements.New("Text", "title")
					:SetJustifyH("CENTER")
					:SetFont("BODY_BODY1_BOLD")
					:SetText(L["Purchase Item"])
				)
				:AddChild(UIElements.New("Button", "closeBtn")
					:SetMargin(0, -4, 0, 0)
					:SetBackgroundAndSize("iconPack.24x24/Close/Default")
					:SetScript("OnClick", private.PurchaseCloseBtnOnClick)
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
					:SetBackground(ItemInfo.GetTexture(itemString))
					:SetTooltip(itemString)
				)
				:AddChild(UIElements.New("Text", "name")
					:SetHeight(36)
					:SetFont("ITEM_BODY1")
					:SetText(UIUtils.GetDisplayItemName(itemString))
				)
			)
			:AddChild(UIElements.New("Frame", "qty")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, 0, 16)
				:AddChild(UIElements.New("Text", "text")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(L["Quantity"]..":")
				)
				:AddChild(UIElements.New("Input", "input")
					:SetWidth(156)
					:SetMargin(12, 8, 0, 0)
					:SetBackgroundColor("PRIMARY_BG_ALT")
					:SetJustifyH("CENTER")
					:SetSubAddEnabled(true)
					:SetValidateFunc("NUMBER", "1:99999")
					:SetValue(1)
					:SetScript("OnValidationChanged", private.InputQtyOnValidationChanged)
					:SetScript("OnValueChanged", private.InputQtyOnValueChanged)
					:SetScript("OnEnterPressed", private.InputQtyOnEnterPressed)
				)
				:AddChild(UIElements.New("ActionButton", "max")
					:SetText(L["Max"])
					:SetScript("OnClick", private.MaxBtnOnClick)
				)
			)
			:AddChild(UIElements.New("Frame", "cost")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 16)
				:AddChild(UIElements.New("Spacer", "spacer"))
				:AddChild(UIElements.New("Text", "label")
					:SetWidth("AUTO")
					:SetMargin(0, 8, 0, 0)
					:SetJustifyH("RIGHT")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(L["Current Price"]..":")
				)
				:AddChild(UIElements.New("Button", "text")
					:SetWidth("AUTO")
					:SetJustifyH("RIGHT")
					:SetFont("TABLE_TABLE1")
					:SetText(private.GetAltCostText(row, 1))
					:SetTooltip(private.GetAltCostTooltip(row))
				)
			)
			:AddChild(UIElements.New("ActionButton", "purchaseBtn")
				:SetHeight(24)
				:SetText(L["Purchase"])
				:SetDisabled(TSM.Vendoring.Buy.GetMaxCanAfford(row:GetField("index")) < 1)
				:SetScript("OnClick", private.PurchaseBtnOnClick)
			)
		scrollingTable:GetBaseElement():ShowDialogFrame(dialogFrame)
		dialogFrame:GetElement("qty.input"):SetFocused(true)
	elseif mouseButton == "RightButton" then
		TSM.Vendoring.Buy.BuyItemIndex(row:GetFields("index", "stackSize"))
	end
end

function private.PurchaseCloseBtnOnClick(button)
	button:GetBaseElement():HideDialog()
end

function private.InputQtyOnValidationChanged(input)
	local row = input:GetElement("__parent.__parent"):GetContext()
	if input:IsValid() and tonumber(input:GetValue()) <= TSM.Vendoring.Buy.GetMaxCanAfford(row:GetField("index")) then
		input:GetElement("__parent.__parent.purchaseBtn")
			:SetDisabled(false)
			:Draw()
	else
		input:GetElement("__parent.__parent.purchaseBtn")
			:SetDisabled(true)
			:Draw()
	end
end

function private.InputQtyOnValueChanged(input)
	local row = input:GetElement("__parent.__parent"):GetContext()
	local value = tonumber(input:GetValue())
	input:GetElement("__parent.__parent.cost.text")
		:SetText(private.GetAltCostText(row, value))
	input:GetElement("__parent.__parent.cost")
		:Draw()
	if input:IsValid() and value <= TSM.Vendoring.Buy.GetMaxCanAfford(row:GetField("index")) then
		input:GetElement("__parent.__parent.purchaseBtn")
			:SetDisabled(false)
			:Draw()
	else
		input:GetElement("__parent.__parent.purchaseBtn")
			:SetDisabled(true)
			:Draw()
	end
end

function private.InputQtyOnEnterPressed(input)
	input:GetElement("__parent.__parent.purchaseBtn"):Click()
end

function private.MaxBtnOnClick(button)
	local row = button:GetElement("__parent.__parent"):GetContext()
	local value = max(1, min(TSM.Vendoring.Buy.GetMaxCanAfford(row:GetField("index")), ItemInfo.GetMaxStack(row:GetField("itemString")) * CalculateTotalNumberOfFreeBagSlots()))
	button:GetElement("__parent.input")
		:SetValue(value)
		:Draw()
	private.InputQtyOnValidationChanged(button:GetElement("__parent.input"))
	button:GetElement("__parent.__parent.cost.text")
		:SetText(private.GetAltCostText(row, tonumber(value)))
	button:GetElement("__parent.__parent.cost")
		:Draw()
end

function private.GetAltCostText(row, quantity)
	local index, costItemsText, price, stackSize = row:GetFields("index", "costItemsText", "price", "stackSize")
	local color = TSM.Vendoring.Buy.GetMaxCanAfford(index) < quantity and Theme.GetColor("FEEDBACK_RED"):GetTextColorPrefix()
	price = price * quantity / stackSize
	if costItemsText == "" then
		-- just a price
		return Money.ToString(price, color, "OPT_RETAIL_ROUND")
	elseif price == 0 then
		-- just an extended cost string
		return private.GetItemAltCostText(row, quantity)
	else
		-- both
		return Money.ToString(price, color, "OPT_RETAIL_ROUND").." "..private.GetItemAltCostText(row, quantity)
	end
end

function private.GetAltCostTooltip(row)
	return row:GetField("firstCostItemString") or nil
end

function private.GetItemAltCostText(row, quantity)
	local index = row:GetField("index")
	local _, _, _, stackSize, _, _, _, extendedCost = GetMerchantItemInfo(index)
	local numAltCurrencies = GetMerchantItemCostInfo(index)
	-- bug with big keech vendor returning extendedCost = true for gold only items
	if numAltCurrencies == 0 then
		extendedCost = false
	end
	local costItemsText = ""
	if extendedCost then
		assert(numAltCurrencies > 0)
		local costItems = TempTable.Acquire()
		for j = 1, numAltCurrencies do
			local _, costNum, costItemLink = GetMerchantItemCostItem(index, j)
			costNum = costNum * quantity / stackSize
			local costItemString = ItemString.Get(costItemLink)
			local texture = nil
			if costItemString then
				texture = ItemInfo.GetTexture(costItemString)
			elseif not Environment.IsVanillaClassic() and strmatch(costItemLink, "currency:") then
				texture = C_CurrencyInfo.GetCurrencyInfoFromLink(costItemLink).iconFileID
			else
				error(format("Unknown item cost (%d, %d, %s)", index, costNum, tostring(costItemLink)))
			end
			if TSM.Vendoring.Buy.GetMaxCanAfford(index) < quantity then
				costNum = Theme.GetColor("FEEDBACK_RED"):ColorText(costNum)
			end
			tinsert(costItems, costNum.." |T"..(texture or "")..":12|t")
		end
		costItemsText = table.concat(costItems, " ")
		TempTable.Release(costItems)
	end
	return costItemsText
end

function private.PurchaseBtnOnClick(button)
	local row = button:GetElement("__parent"):GetContext()
	TSM.Vendoring.Buy.BuyItemIndex(row:GetField("index"), button:GetElement("__parent.qty.input"):GetValue())
	button:GetBaseElement():HideDialog()
end

function private.GetCurrencyText()
	local name, amount, texturePath = "", nil, nil
	if Environment.IsRetail() then
		local firstCurrency = GetMerchantCurrencies()
		if firstCurrency then
			local info = C_CurrencyInfo.GetCurrencyInfo(firstCurrency)
			name = info.name
			amount = info.quantity
			texturePath = info.iconFileID
		end
	end
	local text = ""
	if name ~= "" and amount and texturePath then
		text = amount.." |T"..texturePath..":12|t"
	end
	return text
end

function private.RepairOnClick(button)
	PlaySound(SOUNDKIT.ITEM_REPAIR)
	button:SetDisabled(true)

	if IsAltKeyDown() then
		if not TSM.Vendoring.Buy.CanGuildRepair() then
			Log.PrintfUser(L["Cannot repair from the guild bank!"])
			return
		end
		TSM.Vendoring.Buy.DoGuildRepair()
	else
		TSM.Vendoring.Buy.DoRepair()
	end
end
