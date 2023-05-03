-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Destroying = TSM.MainUI.Settings:NewPackage("Destroying")
local L = TSM.Include("Locale").GetTable()
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {}
local ITEM_QUALITY_DESCS = { ITEM_QUALITY2_DESC, ITEM_QUALITY3_DESC, ITEM_QUALITY4_DESC }
local ITEM_QUALITY_KEYS = { 2, 3, 4 }



-- ============================================================================
-- Module Functions
-- ============================================================================

function Destroying.OnInitialize()
	TSM.MainUI.Settings.RegisterSettingPage("Destroying", "middle", private.GetDestroyingSettingsFrame)
end



-- ============================================================================
-- Destroying Settings UI
-- ============================================================================

function private.GetDestroyingSettingsFrame()
	UIUtils.AnalyticsRecordPathChange("main", "settings", "destroying")
	return UIElements.New("ScrollFrame", "destroyingSettings")
		:SetPadding(8, 8, 8, 0)
		:AddChild(TSM.MainUI.Settings.CreateExpandableSection("Destroying", "general", L["General Options"], "")
			:AddChild(UIElements.New("Frame", "check1")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("Checkbox", "autoStackCheckbox")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(L["Enable automatic stack combination"])
					:SetSettingInfo(TSM.db.global.destroyingOptions, "autoStack")
				)
				:AddChild(UIElements.New("Spacer", "spacer"))
			)
			:AddChild(UIElements.New("Frame", "check2")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("Checkbox", "autoShowCheckbox")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(L["Show destroying frame automatically"])
					:SetSettingInfo(TSM.db.global.destroyingOptions, "autoShow")
				)
				:AddChild(UIElements.New("Spacer", "spacer"))
			)
			:AddChild(UIElements.New("Frame", "check3")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:AddChild(UIElements.New("Checkbox", "includeSoulboundCheckbox")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(L["Include soulbound items"])
					:SetSettingInfo(TSM.db.global.destroyingOptions, "includeSoulbound")
				)
				:AddChild(UIElements.New("Spacer", "spacer"))
			)
		)
		:AddChild(TSM.MainUI.Settings.CreateExpandableSection("Destroying", "disenchanting", L["Disenchanting Options"], "")
			:AddChild(UIElements.New("Text", "label")
				:SetHeight(18)
				:SetMargin(0, 0, 0, 4)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetText(L["Maximum disenchant quality"])
			)
			:AddChild(UIElements.New("SelectionDropdown", "maxQualityDropDown")
				:SetHeight(26)
				:SetMargin(0, 0, 0, 12)
				:SetItems(ITEM_QUALITY_DESCS, ITEM_QUALITY_KEYS)
				:SetSettingInfo(TSM.db.global.destroyingOptions, "deMaxQuality")
			)
			:AddChild(TSM.MainUI.Settings.CreateInputWithReset("deDisenchantPriceField", L["Only show items with disenchant values above this price"], "global.destroyingOptions.deAbovePrice"))
		)
		:AddChild(TSM.MainUI.Settings.CreateExpandableSection("Destroying", "ignore", L["Ignored Items"], L["Use this list to manage what items you'd like TSM to ignore from destroying."])
			:AddChild(UIElements.New("QueryScrollingTable", "items")
				:SetHeight(136)
				:GetScrollingTableInfo()
					:NewColumn("item")
						:SetTitle(L["Item"])
						:SetFont("ITEM_BODY3")
						:SetJustifyH("LEFT")
						:SetIconSize(12)
						:SetTextInfo("itemString", UIUtils.GetDisplayItemName)
						:SetIconInfo("texture")
						:SetTooltipInfo("itemString")
						:SetSortInfo("name")
						:DisableHiding()
						:Commit()
					:Commit()
				:SetQuery(TSM.Destroying.CreateIgnoreQuery())
				:SetAutoReleaseQuery(true)
				:SetSelectionDisabled(true)
				:SetScript("OnRowClick", private.IgnoredItemsOnRowClick)
			)
		)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.IgnoredItemsOnRowClick(_, record, mouseButton)
	if mouseButton ~= "LeftButton" then
		return
	end
	TSM.Destroying.ForgetIgnoreItemPermanent(record:GetField("itemString"))
end
