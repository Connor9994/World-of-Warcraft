-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Inventory = TSM.MainUI.Ledger:NewPackage("Inventory")
local L = TSM.Include("Locale").GetTable()
local TempTable = TSM.Include("Util.TempTable")
local Money = TSM.Include("Util.Money")
local String = TSM.Include("Util.String")
local Math = TSM.Include("Util.Math")
local Database = TSM.Include("Util.Database")
local ItemInfo = TSM.Include("Service.ItemInfo")
local CustomPrice = TSM.Include("Service.CustomPrice")
local BagTracking = TSM.Include("Service.BagTracking")
local AuctionTracking = TSM.Include("Service.AuctionTracking")
local MailTracking = TSM.Include("Service.MailTracking")
local AltTracking = TSM.Include("Service.AltTracking")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	db = nil,
	query = nil,
	searchFilter = "",
	groupFilter = {},
	valuePriceSource = "dbmarket", -- luacheck: ignore 1005 - hidden modify via SetSettingInfo()
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Inventory.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "mainUIContext", "ledgerInventoryScrollingTable")
	TSM.MainUI.Ledger.RegisterPage(L["Inventory"], private.DrawInventoryPage)
end

function Inventory.OnEnable()
	private.db = Database.NewSchema("LEDGER_INVENTORY")
		:AddUniqueStringField("levelItemString")
		:AddNumberField("bagQuantity")
		:AddNumberField("bankQuantity")
		:AddNumberField("reagentBankQuantity")
		:AddNumberField("auctionQuantity")
		:AddNumberField("mailQuantity")
		:AddNumberField("altQuantity")
		:AddNumberField("guildQuantity")
		:AddNumberField("totalBankQuantity")
		:AddNumberField("totalQuantity")
		:Commit()
	private.query = private.db:NewQuery()
		:VirtualField("totalValue", "number", private.TotalValueVirtualField)
		:VirtualField("name", "string", ItemInfo.GetName, "levelItemString", "")
		:VirtualField("groupPath", "string", TSM.Groups.GetPathByItem, "levelItemString")
		:OrderBy("name", true)
		:NotEqual("name", "")
end



-- ============================================================================
-- Inventory UI
-- ============================================================================

function private.DrawInventoryPage()
	UIUtils.AnalyticsRecordPathChange("main", "ledger", "inventory")
	local items = TempTable.Acquire()
	local bagQuantityLookup = TempTable.Acquire()
	local bankQuantityLookup = TempTable.Acquire()
	local reagentBankQuantityLookup = TempTable.Acquire()
	local auctionQuantityLookup = TempTable.Acquire()
	local mailQuantityLookup = TempTable.Acquire()
	local altQuantityLookup = TempTable.Acquire()
	local guildQuantityLookup = TempTable.Acquire()
	for _, levelItemString, bagQuantity, bankQuantity, reagentBankQuantity in BagTracking.QuantityIterator() do
		items[levelItemString] = true
		bagQuantityLookup[levelItemString] = bagQuantity
		bankQuantityLookup[levelItemString] = bankQuantity
		reagentBankQuantityLookup[levelItemString] = reagentBankQuantity
	end
	for _, levelItemString, auctionQuantity in AuctionTracking.QuantityIterator() do
		items[levelItemString] = true
		auctionQuantityLookup[levelItemString] = auctionQuantity
	end
	for _, levelItemString, mailQuantity in MailTracking.QuantityIterator() do
		items[levelItemString] = true
		mailQuantityLookup[levelItemString] = mailQuantity
	end
	for _, levelItemString, altQuantity in AltTracking.QuantityIterator() do
		items[levelItemString] = true
		altQuantityLookup[levelItemString] = altQuantity
	end
	AltTracking.GetGuildItems(guildQuantityLookup)
	for levelItemString in pairs(guildQuantityLookup) do
		items[levelItemString] = true
	end
	private.db:TruncateAndBulkInsertStart()
	for levelItemString in pairs(items) do
		local bagQuantity = bagQuantityLookup[levelItemString] or 0
		local bankQuantity = bankQuantityLookup[levelItemString] or 0
		local reagentBankQuantity = reagentBankQuantityLookup[levelItemString] or 0
		local auctionQuantity = auctionQuantityLookup[levelItemString] or 0
		local mailQuantity = mailQuantityLookup[levelItemString] or 0
		local altQuantity = altQuantityLookup[levelItemString] or 0
		local guildQuantity = guildQuantityLookup[levelItemString] or 0
		local totalBankQuantity = bankQuantity + reagentBankQuantity
		local totalQuantity = bagQuantity + totalBankQuantity + guildQuantity + auctionQuantity + mailQuantity + altQuantity
		private.db:BulkInsertNewRow(levelItemString, bagQuantity, bankQuantity, reagentBankQuantity, auctionQuantity, mailQuantity, altQuantity, guildQuantity, totalBankQuantity, totalQuantity)
	end
	private.db:BulkInsertEnd()
	TempTable.Release(items)
	TempTable.Release(bagQuantityLookup)
	TempTable.Release(bankQuantityLookup)
	TempTable.Release(reagentBankQuantityLookup)
	TempTable.Release(auctionQuantityLookup)
	TempTable.Release(mailQuantityLookup)
	TempTable.Release(altQuantityLookup)
	private.UpdateQuery()

	return UIElements.New("Frame", "content")
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("Frame", "row1")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(8)
			:AddChild(UIElements.New("Input", "filter")
				:SetMargin(0, 8, 0, 0)
				:SetIconTexture("iconPack.18x18/Search")
				:SetClearButtonEnabled(true)
				:AllowItemInsert()
				:SetHintText(L["Filter by keyword"])
				:SetValue(private.searchFilter)
				:SetScript("OnValueChanged", private.SearchFilterChanged)
			)
			:AddChild(UIElements.New("GroupSelector", "group")
				:SetWidth(240)
				:SetHintText(L["Filter by groups"])
				:SetScript("OnSelectionChanged", private.GroupFilterChanged)
			)
		)
		:AddChild(UIElements.New("Frame", "row2")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(8, 8, 0, 8)
			:AddChild(UIElements.New("Text", "label")
				:SetWidth("AUTO")
				:SetFont("BODY_BODY3")
				:SetText(L["Value Price Source"])
			)
			:AddChild(UIElements.New("Input", "input")
				:SetMargin(4, 8, 0, 0)
				:SetBackgroundColor("PRIMARY_BG_ALT")
				:SetBorderColor("ACTIVE_BG")
				:SetFont("TABLE_TABLE1")
				:SetValidateFunc("CUSTOM_PRICE")
				:SetSettingInfo(private, "valuePriceSource")
				:SetScript("OnValueChanged", private.FilterChangedCommon)
			)
			:AddChild(UIElements.New("Frame", "value")
				:SetLayout("HORIZONTAL")
				:SetWidth(240)
				:AddChild(UIElements.New("Spacer", "spacer"))
				:AddChild(UIElements.New("Text", "label")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY3")
					:SetMargin(0, 4, 0, 0)
					:SetText(L["Total Value"]..":")
				)
				:AddChild(UIElements.New("Text", "value")
					:SetWidth("AUTO")
					:SetFont("TABLE_TABLE1")
					:SetText(Money.ToString(private.GetTotalValue(), nil, "OPT_RETAIL_ROUND"))
				)
			)
		)
		:AddChild(UIElements.New("Frame", "accountingScrollingTableFrame")
			:SetLayout("VERTICAL")
			:AddChild(UIElements.New("QueryScrollingTable", "scrollingTable")
				:SetSettingsContext(private.settings, "ledgerInventoryScrollingTable")
				:GetScrollingTableInfo()
					:NewColumn("item")
						:SetTitle(L["Item"])
						:SetFont("ITEM_BODY3")
						:SetJustifyH("LEFT")
						:SetTextInfo("levelItemString", UIUtils.GetDisplayItemName)
						:SetTooltipInfo("levelItemString")
						:SetSortInfo("name")
						:DisableHiding()
						:Commit()
					:NewColumn("totalItems")
						:SetTitle(L["Total"])
						:SetFont("ITEM_BODY3")
						:SetJustifyH("RIGHT")
						:SetTextInfo("totalQuantity")
						:SetSortInfo("totalQuantity")
						:Commit()
					:NewColumn("bags")
						:SetTitle(L["Bags"])
						:SetFont("ITEM_BODY3")
						:SetJustifyH("RIGHT")
						:SetTextInfo("bagQuantity")
						:SetSortInfo("bagQuantity")
						:Commit()
					:NewColumn("banks")
						:SetTitle(L["Banks"])
						:SetFont("ITEM_BODY3")
						:SetJustifyH("RIGHT")
						:SetTextInfo("totalBankQuantity")
						:SetSortInfo("totalBankQuantity")
						:Commit()
					:NewColumn("mail")
						:SetTitle(L["Mail"])
						:SetFont("ITEM_BODY3")
						:SetJustifyH("RIGHT")
						:SetTextInfo("mailQuantity")
						:SetSortInfo("mailQuantity")
						:Commit()
					:NewColumn("alts")
						:SetTitle(L["Alts"])
						:SetFont("ITEM_BODY3")
						:SetJustifyH("RIGHT")
						:SetTextInfo("altQuantity")
						:SetSortInfo("altQuantity")
						:Commit()
					:NewColumn("guildVault")
						:SetTitle(L["GVault"])
						:SetFont("ITEM_BODY3")
						:SetJustifyH("RIGHT")
						:SetTextInfo("guildQuantity")
						:SetSortInfo("guildQuantity")
						:Commit()
					:NewColumn("auctionHouse")
						:SetTitle(L["AH"])
						:SetFont("ITEM_BODY3")
						:SetJustifyH("RIGHT")
						:SetTextInfo("auctionQuantity")
						:SetSortInfo("auctionQuantity")
						:Commit()
					:NewColumn("totalValue")
						:SetTitle(L["Value"])
						:SetFont("ITEM_BODY3")
						:SetJustifyH("RIGHT")
						:SetTextInfo("totalValue", private.TableGetTotalValueText)
						:SetSortInfo("totalValue")
						:Commit()
					:Commit()
				:SetSelectionDisabled(true)
				:SetQuery(private.query)
			)
		)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.FilterChangedCommon(element)
	private.UpdateQuery()
	element:GetElement("__parent.__parent.accountingScrollingTableFrame.scrollingTable")
		:SetQuery(private.query, true)
	element:GetElement("__parent.__parent.row2.value.value")
		:SetText(Money.ToString(private.GetTotalValue(), nil, "OPT_RETAIL_ROUND"))
		:Draw()
end

function private.SearchFilterChanged(input)
	private.searchFilter = input:GetValue()
	private.FilterChangedCommon(input)
end

function private.GroupFilterChanged(groupSelector)
	wipe(private.groupFilter)
	for groupPath in groupSelector:SelectedGroupIterator() do
		private.groupFilter[groupPath] = true
	end
	private.FilterChangedCommon(groupSelector)
end



-- ============================================================================
-- Scrolling Table Helper Functions
-- ============================================================================

function private.TableGetTotalValueText(totalValue)
	return Math.IsNan(totalValue) and "" or Money.ToString(totalValue, nil, "OPT_RETAIL_ROUND")
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.TotalValueVirtualField(row)
	local levelItemString, totalQuantity = row:GetFields("levelItemString", "totalQuantity")
	local price = CustomPrice.GetValue(private.valuePriceSource, levelItemString)
	if not price then
		return Math.GetNan()
	end
	return price * totalQuantity
end

function private.GetTotalValue()
	-- can't lookup the value of items while the query is iteratoring, so grab the list of items first
	local itemQuantities = TempTable.Acquire()
	for _, row in private.query:Iterator() do
		local levelItemString, total = row:GetFields("levelItemString", "totalQuantity")
		itemQuantities[levelItemString] = total
	end
	local totalValue = 0
	for levelItemString, total in pairs(itemQuantities) do
		local price = CustomPrice.GetValue(private.valuePriceSource, levelItemString)
		if price then
			totalValue = totalValue + price * total
		end
	end
	TempTable.Release(itemQuantities)
	return totalValue
end

function private.UpdateQuery()
	private.query:ResetFilters()
	private.query:NotEqual("name", "")
	if private.searchFilter ~= "" then
		private.query:Matches("name", String.Escape(private.searchFilter))
	end
	if next(private.groupFilter) then
		private.query:InTable("groupPath", private.groupFilter)
	end
end
