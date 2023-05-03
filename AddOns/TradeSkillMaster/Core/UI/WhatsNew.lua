-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

--- "What's New" Dialog
-- @module WhatsNew

local TSM = select(2, ...) ---@type TSM
local WhatsNew = TSM.UI:NewPackage("WhatsNew")
local L = TSM.Include("Locale").GetTable()
local Theme = TSM.Include("Util.Theme")
local Analytics = TSM.Include("Util.Analytics")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local private = {
	settings = nil,
	showTime = nil,
}
local WHATS_NEW_VERSION = 3
local CONTENT_LINES = {
	Theme.GetColor("INDICATOR"):ColorText(L["Custom String Editing UI."]).." "..L["The experience of editing Custom Strings has been supercharged with IDE-style syntax highlighting and formatting."],
	Theme.GetColor("INDICATOR"):ColorText(L["New Crafting UI."]).." "..L["To support the upcoming Dragonflight Profession changes, the Crafting UI has been revamped."],
	Theme.GetColor("INDICATOR"):ColorText(L["New DBRecent Price Source"]).." "..L["This Price Source uses the same approach for 'AuctionDB Market Value' however it is only applied to the auctions contained in the most recent pricing snapshot."],
	Theme.GetColor("INDICATOR"):ColorText(L["Trend Indicators."]).." "..L["New trend indicators have been added to tooltips alongside AuctionDB Market Value and AuctionDB Region Market Value which show how they are changing against the Historical Price."],
	Theme.GetColor("INDICATOR"):ColorText(L["Improvements to Region Sale Data."]).." "..L["Both Region Sale Rate and Region Sold Per Day have been given another decimal point to give more visibility on items that sell infrequently."],
	Theme.GetColor("INDICATOR"):ColorText(L["Retail Scanning Improvements."]).." "..L["Due to outstanding issues on Blizzard's end with the Auction House on retail, TSM's dependance on seller information for posted auctions has been reduced as much as possible, which should improve scanning performance. As a result, the 'blacklist' and 'whitelist' features have been retired on Retail."],
	Theme.GetColor("INDICATOR"):ColorText(L["Cross-Faction Support in Retail"]).." "..L["Support has been added for cross-faction alts across the addon, from inventory tracking, to Ledger, to the Dashboard."],
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function WhatsNew.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "internalData", "whatsNewVersion")
end

function WhatsNew.GetDialog()
	if private.settings.whatsNewVersion == WHATS_NEW_VERSION then
		return
	end
	private.showTime = GetTime()
	return UIElements.New("Frame", "whatsnew")
		:SetLayout("VERTICAL")
		:SetSize(650, 390)
		:SetPadding(12, 12, 0, 12)
		:AddAnchor("CENTER")
		:SetBackgroundColor("FRAME_BG", true)
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 8, 16)
			:AddChild(UIElements.New("Spacer", "spacer")
				:SetWidth(20)
			)
			:AddChild(UIElements.New("Text", "title")
				:SetJustifyH("CENTER")
				:SetFont("BODY_BODY1_BOLD")
				:SetFormattedText(L["TSM %s: What's new"], "4.12")
			)
			:AddChild(UIElements.New("Button", "closeBtn")
				:SetMargin(0, -4, 0, 0)
				:SetBackgroundAndSize("iconPack.24x24/Close/Default")
				:SetScript("OnClick", private.DialogCloseBtnOnClick)
			)
		)
		:AddChild(UIElements.New("ScrollFrame", "body")
			:AddChild(UIElements.New("Text", "content1")
				:SetHeight(500)
				:SetFont("BODY_BODY2")
				:SetText(table.concat(CONTENT_LINES, "\n\n"))
			)
		)
		:AddChild(UIElements.New("Text", "footer1")
			:SetHeight(20)
			:SetMargin(0, 0, 12, 0)
			:SetFont("BODY_BODY3")
			:SetFormattedText(L["For more info, visit %s. For help, join us in Discord: %s."], Theme.GetColor("INDICATOR_ALT"):ColorText("blog.tradeskillmaster.com"), Theme.GetColor("INDICATOR_ALT"):ColorText("discord.gg/woweconomy"))
		)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.DialogCloseBtnOnClick(button)
	private.settings.whatsNewVersion = WHATS_NEW_VERSION
	button:GetBaseElement():HideDialog()
	Analytics.Action("WHATS_NEW_TIME", floor((GetTime() - private.showTime) * 1000), WHATS_NEW_VERSION)
end
