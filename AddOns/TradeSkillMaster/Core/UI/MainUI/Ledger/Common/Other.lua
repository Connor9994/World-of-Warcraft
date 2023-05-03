-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Other = TSM.MainUI.Ledger.Common:NewPackage("Other")
local L = TSM.Include("Locale").GetTable()
local Table = TSM.Include("Util.Table")
local Money = TSM.Include("Util.Money")
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
	recordType = nil,
	timeFrameFilter = 30 * SECONDS_PER_DAY,
}
local TIME_LIST = { L["All Time"], L["Last 3 Days"], L["Last 7 Days"], L["Last 14 Days"], L["Last 30 Days"], L["Last 60 Days"] }
local TIME_KEYS = { 0, 3 * SECONDS_PER_DAY, 7 * SECONDS_PER_DAY, 14 * SECONDS_PER_DAY, 30 * SECONDS_PER_DAY, 60 * SECONDS_PER_DAY }
local TYPE_LIST = {
	expense = { L["Money Transfer"], L["Postage"], L["Repair Bill"] },
	income = { L["Money Transfer"], L["Garrison"] },
}
local TYPE_KEYS = {
	expense = { "Money Transfer", "Postage", "Repair Bill" },
	income = { "Money Transfer", "Garrison" },
}
local TYPE_STR_LOOKUP = {}
do
	-- populate lookup table
	assert(#TYPE_LIST.expense == #TYPE_KEYS.expense)
	for i = 1, #TYPE_LIST.expense do
		TYPE_STR_LOOKUP[TYPE_KEYS.expense[i]] = TYPE_LIST.expense[i]
	end
	assert(#TYPE_LIST.income == #TYPE_KEYS.income)
	for i = 1, #TYPE_LIST.income do
		TYPE_STR_LOOKUP[TYPE_KEYS.income[i]] = TYPE_LIST.income[i]
	end
end



-- ============================================================================
-- Module Functions
-- ============================================================================

function Other.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "mainUIContext", "ledgerOtherScrollingTable")
	TSM.MainUI.Ledger.Expenses.RegisterPage(OTHER, private.DrawOtherExpensesPage)
	TSM.MainUI.Ledger.Revenue.RegisterPage(OTHER, private.DrawOtherRevenuePage)
end



-- ============================================================================
-- Other UIs
-- ============================================================================

function private.DrawOtherExpensesPage()
	UIUtils.AnalyticsRecordPathChange("main", "ledger", "expenses", "other")
	return private.DrawOtherPage("expense")
end

function private.DrawOtherRevenuePage()
	UIUtils.AnalyticsRecordPathChange("main", "ledger", "revenue", "other")
	return private.DrawOtherPage("income")
end

function private.DrawOtherPage(recordType)
	wipe(private.characters)
	for _, character in TSM.Accounting.Money.CharacterIterator(recordType) do
		tinsert(private.characters, character)
		private.characterFilter[character] = true
	end
	wipe(private.typeFilter)
	for _, key in ipairs(TYPE_KEYS[recordType]) do
		private.typeFilter[key] = true
	end

	if not private.query then
		private.query = TSM.Accounting.Money.CreateQuery()
			:OrderBy("time", false)
	end
	private.recordType = recordType
	private.UpdateQuery()

	return UIElements.New("Frame", "content")
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("Frame", "row2")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(8)
			:AddChild(UIElements.New("MultiselectionDropdown", "type")
				:SetMargin(0, 8, 0, 0)
				:SetItems(TYPE_LIST[recordType], TYPE_KEYS[recordType])
				:SetSettingInfo(private, "typeFilter")
				:SetSelectionText(L["No Types"], L["%d Types"], L["All Types"])
				:SetScript("OnSelectionChanged", private.DropdownChangedCommon)
			)
			:AddChild(UIElements.New("MultiselectionDropdown", "character")
				:SetMargin(0, 8, 0, 0)
				:SetItems(private.characters, private.characters)
				:SetSettingInfo(private, "characterFilter")
				:SetSelectionText(L["No Characters"], L["%d Characters"], L["All Characters"])
				:SetScript("OnSelectionChanged", private.DropdownChangedCommon)
			)
			:AddChild(UIElements.New("SelectionDropdown", "time")
				:SetItems(TIME_LIST, TIME_KEYS)
				:SetSelectedItemByKey(private.timeFrameFilter)
				:SetSettingInfo(private, "timeFrameFilter")
				:SetScript("OnSelectionChanged", private.DropdownChangedCommon)
			)
		)
		:AddChild(UIElements.New("QueryScrollingTable", "table")
			:SetSettingsContext(private.settings, "ledgerOtherScrollingTable")
			:GetScrollingTableInfo()
				:NewColumn("type")
					:SetTitle(L["Type"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo("type", private.TableGetTypeText)
					:SetSortInfo("type")
					:Commit()
				:NewColumn("character")
					:SetTitle(L["Character"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo("player")
					:SetSortInfo("player")
					:Commit()
				:NewColumn("otherCharacter")
					:SetTitle(L["Other Character"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo("otherPlayer")
					:SetSortInfo("otherPlayer")
					:Commit()
				:NewColumn("amount")
					:SetTitle(L["Amount"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("RIGHT")
					:SetTextInfo("amount", private.TableGetAmountText)
					:SetSortInfo("amount")
					:Commit()
				:NewColumn("time")
					:SetTitle(L["Time Frame"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo("time", private.TableGetTimeText)
					:SetSortInfo("time")
					:Commit()
				:Commit()
			:SetQuery(private.query)
			:SetSelectionDisabled(true)
		)
end



-- ============================================================================
-- Scrolling Table Helper Functions
-- ============================================================================

function private.TableGetTypeText(typeValue)
	return TYPE_STR_LOOKUP[typeValue]
end

function private.TableGetAmountText(amount)
	return Money.ToString(amount, nil, "OPT_RETAIL_ROUND")
end

function private.TableGetTimeText(timeValue)
	return SecondsToTime(time() - timeValue)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.DropdownChangedCommon(dropdown)
	private.UpdateQuery()
	dropdown:GetElement("__parent.__parent.table"):UpdateData(true)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.UpdateQuery()
	private.query:ResetFilters()
		:Equal("recordType", private.recordType)
	if Table.Count(private.typeFilter) ~= #TYPE_KEYS[private.recordType] then
		private.query:InTable("type", private.typeFilter)
	end
	if Table.Count(private.characterFilter) ~= #private.characters then
		private.query:InTable("player", private.characterFilter)
	end
	if private.timeFrameFilter ~= 0 then
		private.query:GreaterThan("time", time() - private.timeFrameFilter)
	end
end
