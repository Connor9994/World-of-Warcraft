-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Resale = TSM.MainUI.Ledger.Revenue:NewPackage("Resale")
local L = TSM.Include("Locale").GetTable()
local Table = TSM.Include("Util.Table")
local Money = TSM.Include("Util.Money")
local Theme = TSM.Include("Util.Theme")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local SECONDS_PER_DAY = 24 * 60 * 60
local private = {
	settings = nil,
	summaryQuery = nil,
	characters = {},
	characterFilter = {},
	typeFilter = {},
	rarityList = {},
	rarityFilter = {},
	groupFilter = {},
	searchFilter = "",
	timeFrameFilter = 30 * SECONDS_PER_DAY
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

function Resale.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "mainUIContext", "ledgerResaleScrollingTable")
	TSM.MainUI.Ledger.Revenue.RegisterPage(L["Resale"], private.DrawResalePage)
end



-- ============================================================================
-- Resale UI
-- ============================================================================

function private.DrawResalePage()
	UIUtils.AnalyticsRecordPathChange("main", "ledger", "revenue", "resale")
	wipe(private.characters)
	TSM.Accounting.Transactions.GetCharacters(private.characters)
	for _, character in ipairs(private.characters) do
		private.characterFilter[character] = true
	end

	private.summaryQuery = private.summaryQuery or TSM.Accounting.Transactions.CreateSummaryQuery()
		:VirtualField("name", "string", ItemInfo.GetName, "itemString", "?")
		:VirtualField("quality", "number", ItemInfo.GetQuality, "itemString", 0)
		:OrderBy("name", true)
	private.UpdateQuery()
	local totalProfit = 0
	local numItems = 0
	for _, row in private.summaryQuery:Iterator() do
		totalProfit = totalProfit + row:GetField("totalProfit")
		numItems = numItems + min(row:GetFields("sold", "bought"))
	end

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
				:SetScript("OnSelectionChanged", private.FilterChangedCommon)
			)
			:AddChild(UIElements.New("MultiselectionDropdown", "rarity")
				:SetMargin(0, 8, 0, 0)
				:SetItems(private.rarityList)
				:SetSettingInfo(private, "rarityFilter")
				:SetSelectionText(L["No Rarities"], L["%d Rarities"], L["All Rarities"])
				:SetScript("OnSelectionChanged", private.FilterChangedCommon)
			)
			:AddChild(UIElements.New("MultiselectionDropdown", "character")
				:SetMargin(0, 8, 0, 0)
				:SetItems(private.characters, private.characters)
				:SetSettingInfo(private, "characterFilter")
				:SetSelectionText(L["No Characters"], L["%d Characters"], L["All Characters"])
				:SetScript("OnSelectionChanged", private.FilterChangedCommon)
			)
			:AddChild(UIElements.New("SelectionDropdown", "time")
				:SetItems(TIME_LIST, TIME_KEYS)
				:SetSelectedItemByKey(private.timeFrameFilter)
				:SetSettingInfo(private, "timeFrameFilter")
				:SetScript("OnSelectionChanged", private.FilterChangedCommon)
			)
		)
		:AddChild(UIElements.New("QueryScrollingTable", "scrollingTable")
			:SetSettingsContext(private.settings, "ledgerResaleScrollingTable")
			:GetScrollingTableInfo()
				:NewColumn("item")
					:SetTitle(L["Item"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo("itemString", UIUtils.GetDisplayItemName)
					:SetSortInfo("name")
					:SetTooltipInfo("itemString")
					:DisableHiding()
					:Commit()
				:NewColumn("bought")
					:SetTitle(L["Bought"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("bought")
					:SetSortInfo("bought")
					:Commit()
				:NewColumn("avgBuyPrice")
					:SetTitle(L["Avg Buy Price"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("avgBuyPrice", private.GetMoneyText)
					:SetSortInfo("avgBuyPrice")
					:Commit()
				:NewColumn("sold")
					:SetTitle(L["Sold"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("sold")
					:SetSortInfo("sold")
					:Commit()
				:NewColumn("avgSellPrice")
					:SetTitle(L["Avg Sell Price"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("avgSellPrice", private.GetMoneyText)
					:SetSortInfo("avgSellPrice")
					:Commit()
				:NewColumn("avgProfit")
					:SetTitle(L["Avg Profit"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("avgProfit", private.GetColoredMoneyText)
					:SetSortInfo("avgProfit")
					:Commit()
				:NewColumn("totalProfit")
					:SetTitle(L["Total Profit"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("totalProfit", private.GetColoredMoneyText)
					:SetSortInfo("totalProfit")
					:Commit()
				:NewColumn("profitPct")
					:SetTitle("%")
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("profitPct", private.GetPctText)
					:SetSortInfo("profitPct")
					:Commit()
				:Commit()
			:SetQuery(private.summaryQuery)
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
				:SetText(format(L["%s Items Resold"], Theme.GetColor("INDICATOR"):ColorText(FormatLargeNumber(numItems))))
			)
			:AddChild(UIElements.New("VerticalLine", "line")
				:SetMargin(4, 8, 0, 0)
			)
			:AddChild(UIElements.New("Text", "profit")
				:SetWidth("AUTO")
				:SetFont("BODY_BODY2_MEDIUM")
				:SetText(format(L["%s Total Profit"], Money.ToString(totalProfit, nil, "OPT_RETAIL_ROUND")))
			)
			:AddChild(UIElements.New("Spacer", "spacer"))
		)
end



-- ============================================================================
-- Scrolling Table Helper Functions
-- ============================================================================

function private.GetMoneyText(value)
	return Money.ToString(value, nil, "OPT_RETAIL_ROUND")
end

function private.GetColoredMoneyText(value)
	return Money.ToString(value, Theme.GetColor(value >= 0 and "FEEDBACK_GREEN" or "FEEDBACK_RED"):GetTextColorPrefix(), "OPT_RETAIL_ROUND")
end

function private.GetPctText(value)
	return Theme.GetColor(value >= 0 and "FEEDBACK_GREEN" or "FEEDBACK_RED"):ColorText(value.."%")
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.FilterChangedCommon(dropdown)
	private.UpdateQuery()
	local totalProfit = 0
	local numItems = 0
	for _, row in private.summaryQuery:Iterator() do
		totalProfit = totalProfit + row:GetField("totalProfit")
		numItems = numItems + min(row:GetFields("sold", "bought"))
	end
	dropdown:GetElement("__parent.__parent.scrollingTable"):UpdateData(true)
	local footer = dropdown:GetElement("__parent.__parent.footer")
	footer:GetElement("num"):SetText(format(L["%s Items Resold"], Theme.GetColor("INDICATOR"):ColorText(FormatLargeNumber(numItems))))
	footer:GetElement("profit"):SetText(format(L["%s Total Profit"], Money.ToString(totalProfit, nil, "OPT_RETAIL_ROUND")))
	footer:Draw()
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
-- Private Helper Functions
-- ============================================================================

function private.UpdateQuery()
	private.summaryQuery:ResetFilters()
	local groupFilter = next(private.groupFilter) and private.groupFilter or nil
	local searchFilter = private.searchFilter ~= "" and private.searchFilter or nil
	local typeFilter = Table.Count(private.typeFilter) ~= #TYPE_KEYS and private.typeFilter or nil
	local characterFilter = Table.Count(private.characterFilter) ~= #private.characters and private.characterFilter or nil
	local minTime = private.timeFrameFilter ~= 0 and (time() - private.timeFrameFilter) or nil
	TSM.Accounting.Transactions.UpdateSummaryData(groupFilter, searchFilter, typeFilter, characterFilter, minTime)
	if Table.Count(private.rarityFilter) ~= #private.rarityList then
		private.summaryQuery:InTable("quality", private.rarityFilter)
	end
end

function private.TableSelectionChanged(scrollingTable, row)
	TSM.MainUI.Ledger.ShowItemDetail(scrollingTable:GetParentElement():GetParentElement(), row:GetField("itemString"), "sale")
end
