-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Auctions = TSM.MainUI.Ledger.Common:NewPackage("Auctions")
local L = TSM.Include("Locale").GetTable()
local Table = TSM.Include("Util.Table")
local String = TSM.Include("Util.String")
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
	searchFilter = "",
	groupFilter = {},
	rarityList = {},
	rarityFilter = {},
	timeFrameFilter = 30 * SECONDS_PER_DAY,
	type = nil
}
do
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

function Auctions.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "mainUIContext", "ledgerAuctionsScrollingTable")
	TSM.MainUI.Ledger.FailedAuctions.RegisterPage(L["Expired"], private.DrawExpiredPage)
	TSM.MainUI.Ledger.FailedAuctions.RegisterPage(L["Cancelled"], private.DrawCancelledPage)
end



-- ============================================================================
-- Auctions UIs
-- ============================================================================

function private.DrawExpiredPage()
	UIUtils.AnalyticsRecordPathChange("main", "ledger", "failed_auctions", "expired")
	private.type = "expire"
	return private.DrawAuctionsPage()
end

function private.DrawCancelledPage()
	UIUtils.AnalyticsRecordPathChange("main", "ledger", "failed_auctions", "cancelled")
	private.type = "cancel"
	return private.DrawAuctionsPage()
end

function private.DrawAuctionsPage()
	private.query = private.query or TSM.Accounting.Auctions.CreateQuery()

	private.query:Reset()
		:Equal("type", "cancel")
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
		:OrderBy("time", false)
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
			:AddChild(UIElements.New("MultiselectionDropdown", "rarity")
				:SetMargin(0, 8, 0, 0)
				:SetItems(private.rarityList)
				:SetSettingInfo(private, "rarityFilter")
				:SetSelectionText(L["No Rarities"], L["%d Rarities"], L["All Rarites"])
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
			:SetSettingsContext(private.settings, "ledgerAuctionsScrollingTable")
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
					:SetTextInfo("player")
					:SetSortInfo("player")
					:Commit()
				:NewColumn("stackSize")
					:SetTitle(L["Stack"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("stackSize")
					:SetSortInfo("stackSize")
					:Commit()
				:NewColumn("quantity")
					:SetTitle(L["Auctions"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo(nil, private.FormatAuctions)
					:SetSortInfo("quantity")
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
				:SetText(format(private.type == "expire" and L["%s Items Expired"] or L["%s Items Cancelled"], Theme.GetColor("INDICATOR"):ColorText(FormatLargeNumber(private.query:Sum("quantity")))))
			)
			:AddChild(UIElements.New("Spacer", "spacer"))
		)
end



-- ============================================================================
-- Scrolling Table Helper Functions
-- ============================================================================

function private.TableGetTimeframeText(record)
	return SecondsToTime(time() - record)
end

function private.FormatAuctions(row)
	return row:GetField("quantity") / row:GetField("stackSize")
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.DropdownCommonOnSelectionChanged(dropdown)
	private.UpdateQuery()
	dropdown:GetElement("__parent.__parent.scrollingTable")
		:UpdateData(true)
	local footer = dropdown:GetElement("__parent.__parent.footer")
	footer:GetElement("num"):SetText(format(private.type == "expire" and L["%s Items Expired"] or L["%s Items Cancelled"], Theme.GetColor("INDICATOR"):ColorText(FormatLargeNumber(private.query:Sum("quantity")))))
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

function private.UpdateQuery()
	private.query:ResetFilters()
		:Equal("type", private.type)
	if private.searchFilter ~= "" then
		private.query:Matches("name", String.Escape(private.searchFilter))
	end
	if Table.Count(private.rarityFilter) ~= #private.rarityList then
		private.query:InTable("quality", private.rarityFilter)
	end
	if Table.Count(private.characterFilter) ~= #private.characters then
		private.query:InTable("player", private.characterFilter)
	end
	if private.timeFrameFilter ~= 0 then
		private.query:GreaterThanOrEqual("time", time() - private.timeFrameFilter)
	end
	if next(private.groupFilter) then
		private.query:InTable("groupPath", private.groupFilter)
	end
end

function private.TableSelectionChanged(scrollingTable, row)
	TSM.MainUI.Ledger.ShowItemDetail(scrollingTable:GetParentElement():GetParentElement(), row:GetField("itemString"), "sale")
end
