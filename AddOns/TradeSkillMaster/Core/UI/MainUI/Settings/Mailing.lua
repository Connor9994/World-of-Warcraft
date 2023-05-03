-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Mailing = TSM.MainUI.Settings:NewPackage("Mailing")
local L = TSM.Include("Locale").GetTable()
local Sound = TSM.Include("Util.Sound")
local Math = TSM.Include("Util.Math")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	sounds = {},
	soundkeys = {},
}
local ITEM_QUALITY_DESCS = { ITEM_QUALITY2_DESC, ITEM_QUALITY3_DESC, ITEM_QUALITY4_DESC }
local ITEM_QUALITY_KEYS = { 2, 3, 4 }



-- ============================================================================
-- Module Functions
-- ============================================================================

function Mailing.OnInitialize()
	TSM.MainUI.Settings.RegisterSettingPage(L["Mailing"], "middle", private.GetMailingSettingsFrame)
	for key, name in Sound.Iterator() do
		tinsert(private.sounds, name)
		tinsert(private.soundkeys, key)
	end
end



-- ============================================================================
-- Mailing Settings UI
-- ============================================================================

function private.GetMailingSettingsFrame()
	UIUtils.AnalyticsRecordPathChange("main", "settings", "mailing")
	return UIElements.New("ScrollFrame", "mailingSettings")
		:SetPadding(8, 8, 8, 0)
		:AddChild(TSM.MainUI.Settings.CreateExpandableSection("Mailing", "inbox", L["Inbox Settings"], "")
			:AddChild(UIElements.New("Frame", "content")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("Checkbox", "inboxMessagesCheckbox")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(L["Enable inbox chat messages"])
					:SetSettingInfo(TSM.db.global.mailingOptions, "inboxMessages")
				)
				:AddChild(UIElements.New("Spacer", "spacer"))
			)
			:AddChild(UIElements.New("Text", "label")
				:SetHeight(18)
				:SetMargin(0, 0, 0, 4)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetText(L["Amount of bag space to keep free"])
			)
			:AddChild(UIElements.New("Frame", "freeSpaceFrame")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, 0, 8)
				:AddChild(UIElements.New("Input", "keepMailInput")
					:SetMargin(0, 8, 0, 0)
					:SetBackgroundColor("ACTIVE_BG")
					:SetValidateFunc("NUMBER", "0:20")
					:SetSettingInfo(TSM.db.global.mailingOptions, "keepMailSpace")
				)
				:AddChild(UIElements.New("Text", "label")
					:SetSize("AUTO", 16)
					:SetFont("BODY_BODY3")
					:SetText(L["Min 0 - Max 20"])
				)
			)
			:AddChild(UIElements.New("Text", "label")
				:SetHeight(18)
				:SetMargin(0, 0, 0, 4)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetText(L["Open mail complete sound"])
			)
			:AddChild(UIElements.New("SelectionDropdown", "soundDropdown")
				:SetHeight(24)
				:SetItems(private.sounds, private.soundkeys)
				:SetSettingInfo(TSM.db.global.mailingOptions, "openMailSound")
				:SetScript("OnSelectionChanged", private.SoundOnSelectionChanged)
			)
		)
		:AddChild(TSM.MainUI.Settings.CreateExpandableSection("Mailing", "send", L["Sending Settings"], "")
			:AddChild(UIElements.New("Frame", "check1")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("Checkbox", "sendMessagesCheckbox")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(L["Enable sending chat messages"])
					:SetSettingInfo(TSM.db.global.mailingOptions, "sendMessages")
				)
				:AddChild(UIElements.New("Spacer", "spacer"))
			)
			:AddChild(UIElements.New("Frame", "check2")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 22)
				:AddChild(UIElements.New("Checkbox", "sendItemsCheckbox")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(L["Send grouped items individually"])
					:SetSettingInfo(TSM.db.global.mailingOptions, "sendItemsIndividually")
				)
				:AddChild(UIElements.New("Spacer", "spacer"))
			)
			:AddChild(UIElements.New("Text", "label")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 4)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetText(L["Restart delay (minutes)"])
			)
			:AddChild(UIElements.New("Frame", "restartDelayFrame")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, 0, 12)
				:AddChild(UIElements.New("Input", "restartDelay")
					:SetMargin(0, 8, 0, 0)
					:SetBackgroundColor("ACTIVE_BG")
					:SetValidateFunc("NUMBER", "0.5:10")
					:SetValue(TSM.db.global.mailingOptions.resendDelay)
					:SetScript("OnValueChanged", private.RestartDelayOnValueChanged)
				)
				:AddChild(UIElements.New("Text", "label")
					:SetSize("AUTO", 16)
					:SetFont("BODY_BODY3")
					:SetText(L["Min 0.5 - Max 10"])
				)
			)
			:AddChild(UIElements.New("Text", "label")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 4)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetText(L["Mail disenchantables max quality"])
			)
			:AddChild(UIElements.New("SelectionDropdown", "mailPageDropdown")
				:SetHeight(26)
				:SetItems(ITEM_QUALITY_DESCS, ITEM_QUALITY_KEYS)
				:SetSettingInfo(TSM.db.global.mailingOptions, "deMaxQuality")
			)
		)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.SoundOnSelectionChanged(self, selection)
	Sound.PlaySound(TSM.db.global.mailingOptions.openMailSound)
end

function private.RestartDelayOnValueChanged(input)
	local value = Math.Round(tonumber(input:GetValue()), 0.5)
	TSM.db.global.mailingOptions.resendDelay = value
end
