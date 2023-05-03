-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Buyback = TSM.UI.VendoringUI:NewPackage("Buyback")
local L = TSM.Include("Locale").GetTable()
local Money = TSM.Include("Util.Money")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	query = nil,
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Buyback.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "vendoringUIContext", "buybackScrollingTable")
	TSM.UI.VendoringUI.RegisterTopLevelPage(BUYBACK, private.GetFrame)
end



-- ============================================================================
-- Buy UI
-- ============================================================================

function private.GetFrame()
	UIUtils.AnalyticsRecordPathChange("vendoring", "buyback")
	private.query = private.query or TSM.Vendoring.Buyback.CreateQuery()
	private.query:ResetOrderBy()
	private.query:OrderBy("name", true)

	return UIElements.New("Frame", "buy")
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("QueryScrollingTable", "items")
			:SetMargin(0, 0, -2, 0)
			:SetSettingsContext(private.settings, "buybackScrollingTable")
			:GetScrollingTableInfo()
				:NewColumn("qty")
					:SetTitle(L["Qty"])
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("RIGHT")
					:SetTextInfo("quantity")
					:SetSortInfo("quantity")
					:Commit()
				:NewColumn("item")
					:SetTitle(L["Item"])
					:SetIconSize(12)
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo("itemString", private.GetItemText)
					:SetIconInfo("itemString", ItemInfo.GetTexture)
					:SetTooltipInfo("itemString")
					:SetSortInfo("name")
					:SetTooltipLinkingDisabled(true)
					:DisableHiding()
					:Commit()
				:NewColumn("cost")
					:SetTitle(L["Cost"])
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("RIGHT")
					:SetTextInfo("price", private.GetCostPriceText)
					:SetSortInfo("price")
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
			:AddChild(UIElements.New("ActionButton", "buybackAllBtn")
				:SetText(L["Buyback All"])
				:SetScript("OnClick", private.BuybackAllBtnOnClick)
			)
		)
end

function private.GetItemText(itemString)
	return UIUtils.GetDisplayItemName(itemString) or "?"
end

function private.GetCostPriceText(value)
	return Money.ToString(value, nil, "OPT_RETAIL_ROUND")
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.RowOnClick(_, row, mouseButton)
	if mouseButton == "RightButton" then
		TSM.Vendoring.Buyback.BuybackItem(row:GetField("index"))
	end
end

function private.BuybackAllBtnOnClick(button)
	for _, row in private.query:Iterator() do
		TSM.Vendoring.Buyback.BuybackItem(row:GetField("index"))
	end
end
