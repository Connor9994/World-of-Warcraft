-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Vendoring = TSM.MainUI.Settings:NewPackage("Vendoring")
local L = TSM.Include("Locale").GetTable()
local ItemInfo = TSM.Include("Service.ItemInfo")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {}


-- ============================================================================
-- Module Functions
-- ============================================================================

function Vendoring.OnInitialize()
	TSM.MainUI.Settings.RegisterSettingPage(L["Vendoring"], "middle", private.GetVendoringSettingsFrame)
end



-- ============================================================================
-- Vendoring Settings UI
-- ============================================================================

function private.GetVendoringSettingsFrame()
	UIUtils.AnalyticsRecordPathChange("main", "settings", "vendoring")
	return UIElements.New("ScrollFrame", "vendoringSettings")
		:SetPadding(8, 8, 8, 0)
		:AddChild(TSM.MainUI.Settings.CreateExpandableSection("Vendoring", "general", L["General Options"], "")
			:AddChild(UIElements.New("Frame", "content")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("Checkbox", "checkbox")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetSettingInfo(TSM.db.global.vendoringOptions, "displayMoneyCollected")
					:SetText(L["Display total money received in chat"])
				)
				:AddChild(UIElements.New("Spacer", "spacer"))
			)
			:AddChild(TSM.MainUI.Settings.CreateInputWithReset("qsMarketValueSourceField", L["Market Value Price Source"], "global.vendoringOptions.qsMarketValue"))
		)
		:AddChild(TSM.MainUI.Settings.CreateExpandableSection("Vendoring", "ignore", L["Ignored Items"], "Use this list to manage what items you'd like TSM to ignore from vendoring.")
			:AddChild(UIElements.New("QueryScrollingTable", "items")
				:SetHeight(326)
				:GetScrollingTableInfo()
					:NewColumn("item")
						:SetTitle(L["Item"])
						:SetFont("ITEM_BODY3")
						:SetJustifyH("LEFT")
						:SetIconSize(12)
						:SetTextInfo("itemString", UIUtils.GetDisplayItemName)
						:SetIconInfo("itemString", ItemInfo.GetTexture)
						:SetTooltipInfo("itemString")
						:SetSortInfo("name")
						:DisableHiding()
						:Commit()
					:Commit()
				:SetQuery(TSM.Vendoring.Sell.CreateIgnoreQuery())
				:SetAutoReleaseQuery(true)
				:SetSelectionDisabled(true)
				:SetScript("OnRowClick", private.IgnoredItemsOnRowClick)
			)
		)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.IgnoredItemsOnRowClick(_, row, mouseButton)
	if mouseButton ~= "LeftButton" then
		return
	end
	TSM.Vendoring.Sell.ForgetIgnoreItemPermanent(row:GetField("itemString"))
end
