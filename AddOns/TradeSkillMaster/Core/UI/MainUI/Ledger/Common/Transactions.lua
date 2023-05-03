-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Transactions = TSM.MainUI.Ledger.Common:NewPackage("Transactions")
local L = TSM.Include("Locale").GetTable()
local Money = TSM.Include("Util.Money")
local String = TSM.Include("Util.String")
local Table = TSM.Include("Util.Table")
local Theme = TSM.Include("Util.Theme")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local SECONDS_PER_DAY = 24 * 60 * 60
local private = {
	settings = nil,
	query = nil,
	characters = {},
	characterFilter = {},
	typeFilter = {},
	searchFilter = "",
	groupFilter = {},
	rarityList = {},
	rarityFilter = {},
	timeFrameFilter = 30 * SECONDS_PER_DAY,
	type = nil
}
local TYPE_LIST = { L["Auction"], COD, TRADE, L["Vendor"] }
local TYPE_KEYS = { "Auction", "COD", "Trade", "Vendor" }
do
	for _, key in ipairs(TYPE_KEYS) do
		private.typeFilter[key] = true
	end
	for i = 0, 5 do
		tinsert(private.rarityList, _G[format("ITEM_QUALITY%d_DESC", i)])
		private.rarityFilter[i] = true
	end
end
local TIME_LIST = { L["All Time"], L["Last 3 Days"], L["Last 7 Days"], L["Last 14 Days"], L["Last 30 Days"], L["Last 60 Days"] }
local TIME_KEYS = { 0, 3 * SECONDS_PER_DAY, 7 * SECONDS_PER_DAY, 14 * SECONDS_PER_DAY, 30 * SECONDS_PER_DAY, 60 * SECONDS_PER_DAY }



-- ============================================================================
-- Module Functions
-- ============================================================================

function Transactions.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "mainUIContext", "ledgerTransactionsScrollingTable")
	TSM.MainUI.Ledger.Expenses.RegisterPage(L["Purchases"], private.DrawPurchasesPage)
	TSM.MainUI.Ledger.Revenue.RegisterPage(L["Sales"], private.DrawSalesPage)
end



-- ============================================================================
-- Transactions UIs
-- ============================================================================

function private.DrawPurchasesPage()
	UIUtils.AnalyticsRecordPathChange("main", "ledger", "expenses", "purchases")
	private.type = "buy"
	return private.DrawTransactionPage()
end

function private.DrawSalesPage()
	UIUtils.AnalyticsRecordPathChange("main", "ledger", "revenue", "sales")
	private.type = "sale"
	return private.DrawTransactionPage()
end

function private.DrawTransactionPage()
	private.query = private.query or TSM.Accounting.Transactions.CreateQuery()

	private.query:Reset()
		:Equal("type", private.type)
		:Distinct("player")
		:Select("player")
	wipe(private.characters)
	for _, character in private.query:Iterator() do
		tinsert(private.characters, character)
		private.characterFilter[character] = true
	end

	private.query:Reset()
		:VirtualField("name", "string", ItemInfo.GetName, "itemString", "?")
		:VirtualField("quality", "number", ItemInfo.GetQuality, "itemString", 0)
		:LeftJoin(TSM.Groups.GetItemDBForJoin(), "itemString")
		:VirtualField("total", "number", private.GetTotal)
		:VirtualField("auctions", "number", private.GetAuctions)
		:OrderBy("time", false)
	private.UpdateQuery()
	local numItems = private.query:Sum("quantity")
	local total = private.query:Sum("total")

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
			:AddChild(UIElements.New("MultiselectionDropdown", "type")
				:SetMargin(0, 8, 0, 0)
				:SetItems(TYPE_LIST, TYPE_KEYS)
				:SetSettingInfo(private, "typeFilter")
				:SetSelectionText(L["No Types"], L["%d Types"], L["All Types"])
				:SetScript("OnSelectionChanged", private.DropdownCommonOnSelectionChanged)
			)
			:AddChild(UIElements.New("MultiselectionDropdown", "rarity")
				:SetMargin(0, 8, 0, 0)
				:SetItems(private.rarityList)
				:SetSettingInfo(private, "rarityFilter")
				:SetSelectionText(L["No Rarities"], L["%d Rarities"], L["All Rarities"])
				:SetScript("OnSelectionChanged", private.DropdownCommonOnSelectionChanged)
			)
			:AddChild(UIElements.New("MultiselectionDropdown", "character")
				:SetMargin(0, 8, 0, 0)
				:SetItems(private.characters, private.characters)
				:SetSettingInfo(private, "characterFilter")
				:SetSelectionText(L["No Characters"], L["%d Characters"], L["All Characters"])
				:SetScript("OnSelectionChanged", private.DropdownCommonOnSelectionChanged)
			)
			:AddChild(UIElements.New("SelectionDropdown", "time")
				:SetItems(TIME_LIST, TIME_KEYS)
				:SetSelectedItemByKey(private.timeFrameFilter)
				:SetSettingInfo(private, "timeFrameFilter")
				:SetScript("OnSelectionChanged", private.DropdownCommonOnSelectionChanged)
			)
		)
		:AddChild(UIElements.New("QueryScrollingTable", "scrollingTable")
			:SetSettingsContext(private.settings, "ledgerTransactionsScrollingTable")
			:GetScrollingTableInfo()
				:NewColumn("item")
					:SetTitle(L["Item"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo("itemString", UIUtils.GetDisplayItemName)
					:SetTooltipInfo("itemString")
					:SetSortInfo("name")
					:DisableHiding()
					:Commit()
				:NewColumn("player")
					:SetTitle(PLAYER)
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo("otherPlayer")
					:SetSortInfo("otherPlayer")
					:Commit()
				:NewColumn("type")
					:SetTitle(L["Type"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo("source")
					:SetSortInfo("source")
					:Commit()
				:NewColumn("stack")
					:SetTitle(L["Stack"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("stackSize")
					:SetSortInfo("stackSize")
					:Commit()
				:NewColumn("auctions")
					:SetTitle(L["Auctions"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("auctions")
					:SetSortInfo("auctions")
					:Commit()
				:NewColumn("perItem")
					:SetTitle(L["Per Item"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("price", private.TableGetPriceText)
					:SetSortInfo("price")
					:Commit()
				:NewColumn("total")
					:SetTitle(L["Total"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("total", private.TableGetPriceText)
					:SetSortInfo("total")
					:Commit()
				:NewColumn("time")
					:SetTitle(L["Time Frame"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("time", private.TableGetTimeframeText)
					:SetSortInfo("time")
					:Commit()
				:Commit()
			:SetQuery(private.query)
			:SetScript("OnRowClick", private.TableSelectionChanged)
		)
		:AddChild(UIElements.New("HorizontalLine", "line"))
		:AddChild(UIElements.New("Frame", "footer")
			:SetLayout("HORIZONTAL")
			:SetHeight(40)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("Text", "num")
				:SetWidth("AUTO")
				:SetFont("BODY_BODY2_MEDIUM")
				:SetText(format(private.type == "sale" and L["%s Items Sold"] or L["%s Items Bought"], Theme.GetColor("INDICATOR"):ColorText(FormatLargeNumber(numItems))))
			)
			:AddChild(UIElements.New("VerticalLine", "line")
				:SetMargin(4, 8, 0, 0)
			)
			:AddChild(UIElements.New("Text", "profit")
				:SetWidth("AUTO")
				:SetFont("BODY_BODY2_MEDIUM")
				:SetText(format(L["%s Total"], Money.ToString(total, nil, "OPT_RETAIL_ROUND")))
			)
			:AddChild(UIElements.New("Spacer", "spacer"))
		)
end



-- ============================================================================
-- Scrolling Table Helper Functions
-- ============================================================================

function private.TableGetPriceText(price)
	return Money.ToString(price, nil, "OPT_RETAIL_ROUND")
end

function private.TableGetTimeframeText(record)
	return SecondsToTime(time() - record)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.DropdownCommonOnSelectionChanged(dropdown)
	private.UpdateQuery()
	local numItems = private.query:Sum("quantity")
	local total = private.query:Sum("total")
	dropdown:GetElement("__parent.__parent.scrollingTable")
		:UpdateData(true)
	local footer = dropdown:GetElement("__parent.__parent.footer")
	footer:GetElement("num"):SetText(format(private.type == "sale" and L["%s Items Sold"] or L["%s Items Bought"], Theme.GetColor("INDICATOR"):ColorText(FormatLargeNumber(numItems))))
	footer:GetElement("profit"):SetText(format(L["%s Total"], Money.ToString(total, nil, "OPT_RETAIL_ROUND")))
	footer:Draw()
end

function private.SearchFilterChanged(input)
	private.searchFilter = input:GetValue()
	private.DropdownCommonOnSelectionChanged(input)
end

function private.GroupFilterChanged(groupSelector)
	wipe(private.groupFilter)
	for groupPath in groupSelector:SelectedGroupIterator() do
		private.groupFilter[groupPath] = true
	end
	private.DropdownCommonOnSelectionChanged(groupSelector)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.GetTotal(row)
	return row:GetField("price") * row:GetField("quantity")
end

function private.GetAuctions(row)
	return row:GetField("quantity") / row:GetField("stackSize")
end

function private.UpdateQuery()
	private.query:ResetFilters()
		:Equal("type", private.type)
	if private.searchFilter ~= "" then
		private.query:Matches("name", String.Escape(private.searchFilter))
	end
	if Table.Count(private.typeFilter) ~= #TYPE_KEYS then
		private.query:InTable("source", private.typeFilter)
	end
	if Table.Count(private.rarityFilter) ~= #private.rarityList then
		private.query:InTable("quality", private.rarityFilter)
	end
	if Table.Count(private.characterFilter) ~= #private.characters then
		private.query:InTable("player", private.characterFilter)
	end
	if private.timeFrameFilter ~= 0 then
		private.query:GreaterThan("time", time() - private.timeFrameFilter)
	end
	if next(private.groupFilter) then
		private.query:InTable("groupPath", private.groupFilter)
	end
end

function private.TableSelectionChanged(scrollingTable, row)
	TSM.MainUI.Ledger.ShowItemDetail(scrollingTable:GetParentElement():GetParentElement(), row:GetField("itemString"), private.type)
end
