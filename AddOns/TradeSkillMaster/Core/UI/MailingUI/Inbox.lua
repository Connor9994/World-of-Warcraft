-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Inbox = TSM.UI.MailingUI:NewPackage("Inbox")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Delay = TSM.Include("Util.Delay")
local Event = TSM.Include("Util.Event")
local Money = TSM.Include("Util.Money")
local Sound = TSM.Include("Util.Sound")
local FSM = TSM.Include("Util.FSM")
local Math = TSM.Include("Util.Math")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local ItemInfo = TSM.Include("Service.ItemInfo")
local MailTracking = TSM.Include("Service.MailTracking")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	fsm = nil,
	frame = nil,
	view = nil,
	inboxQuery = nil,
	itemsQuery = nil,
	selectedMail = nil,
	nextUpdate = nil,
	filterText = "",
	updateCounterTimer = nil,
}
local PLAYER_NAME = UnitName("player")
local MAIL_REFRESH_TIME = Environment.IsRetail() and 15 or 60



-- ============================================================================
-- Module Functions
-- ============================================================================

function Inbox.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "mailingUIContext", "mailsScrollingTable")
		:AddKey("global", "mailingOptions", "openMailSound")
	private.updateCounterTimer = Delay.CreateTimer("INBOX_UPDATE_COUNTER", private.UpdateCountDown)
	private.FSMCreate()
	TSM.UI.MailingUI.RegisterTopLevelPage(INBOX, private.GetInboxFrame)
end

function Inbox.IsMailOpened()
	if not private.view or not private.view:HasChildById("view") then
		return
	end

	return private.view:GetElement("view"):GetPath() == "items"
end



-- ============================================================================
-- Inbox UI
-- ============================================================================

function private.GetInboxFrame()
	UIUtils.AnalyticsRecordPathChange("mailing", "inbox")
	local frame = UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("ViewContainer", "view")
			:SetNavCallback(private.GetViewContentFrame)
			:AddPath("mails", true)
			:AddPath("items")
		)

	private.view = frame

	return frame
end

function private.GetViewContentFrame(viewContainer, path)
	if path == "mails" then
		private.selectedMail = nil
		return private.GetInboxMailsFrame()
	elseif path == "items" then
		return private.GetInboxItemsFrame()
	else
		error("Unexpected path: "..tostring(path))
	end
end

function private.GetInboxMailsFrame()
	private.inboxQuery = private.inboxQuery or TSM.Mailing.Inbox.CreateQuery()
	private.inboxQuery:ResetFilters()
	private.inboxQuery:ResetOrderBy()
	private.inboxQuery:OrderBy("index", true)

	private.filterText = ""

	local frame = UIElements.New("Frame", "inbox")
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("Frame", "top")
			:SetLayout("HORIZONTAL")
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("Input", "filterInput")
				:SetHeight(24)
				:SetMargin(0, 8, 0, 0)
				:AllowItemInsert()
				:SetIconTexture("iconPack.18x18/Search")
				:SetClearButtonEnabled(true)
				:SetHintText(L["Search items in mailbox"])
				:SetDisabled(false)
				:SetScript("OnValueChanged", private.SearchOnValueChanged)
			)
			:AddChild(UIElements.New("ActionButton", "reload")
				:SetSize(110, 24)
				:SetFormattedText(L["Reload UI (%d)"], MAIL_REFRESH_TIME)
				:SetScript("OnClick", ReloadUI)
			)
		)
		:AddChild(UIElements.New("QueryScrollingTable", "mails")
			:SetSettingsContext(private.settings, "mailsScrollingTable")
			:GetScrollingTableInfo()
				:NewColumn("items")
					:SetTitle(L["Items"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo(nil, private.FormatItem)
					:SetTooltipInfo("itemString")
					:SetActionIconInfo(1, 12, private.GetMailTypeIcon)
					:SetTooltipLinkingDisabled(true)
					:DisableHiding()
					:Commit()
				:NewColumn("sender")
					:SetTitle(L["Sender"])
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("LEFT")
					:SetTextInfo("sender")
					:Commit()
				:NewColumn("expires")
					:SetTitle(L["Expires"])
					:SetFont("BODY_BODY3_MEDIUM")
					:SetJustifyH("RIGHT")
					:SetTextInfo("expires", private.FormatDaysLeft)
					:Commit()
				:NewColumn("money")
					:SetTitle(L["Gold"])
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("RIGHT")
					:SetTextInfo(nil, private.FormatMoney)
					:Commit()
				:Commit()
			:SetQuery(private.inboxQuery)
			:SetSelectionDisabled(true)
			:SetScript("OnRowClick", private.QueryOnRowClick)
			:SetScript("OnDataUpdated", private.InboxOnDataUpdated)
		)
		:AddChild(UIElements.New("HorizontalLine", "line"))
		:AddChild(UIElements.New("Frame", "footer")
			:SetLayout("HORIZONTAL")
			:SetHeight(26)
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("Spacer", "spacer"))
			:AddChild(UIElements.New("Text", "mailNum")
				:SetWidth(200)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetJustifyH("RIGHT")
			)
			:AddChild(UIElements.New("Texture", "vline")
				:SetWidth(1)
				:SetMargin(8, 8, 3, 3)
				:SetColor("ACTIVE_BG_ALT")
			)
			:AddChild(UIElements.New("Text", "itemNum")
				:SetWidth(130)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetJustifyH("RIGHT")
				:SetText(format(L["%s Items Total"], Theme.GetColor("FEEDBACK_GREEN"):ColorText(0)))
			)
			:AddChild(UIElements.New("Texture", "vline")
				:SetWidth(1)
				:SetMargin(8, 8, 3, 3)
				:SetColor("ACTIVE_BG_ALT")
			)
			:AddChild(UIElements.New("Frame", "content")
				:SetLayout("HORIZONTAL")
				:SetWidth(190)
				:AddChild(UIElements.New("Spacer", "spacer"))
				:AddChild(UIElements.New("Text", "totalText")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetJustifyH("RIGHT")
					:SetText(L["Total Gold"]..": ")
				)
				:AddChild(UIElements.New("Text", "gold")
					:SetWidth("AUTO")
					:SetMargin(0, 8, 0, 0)
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("RIGHT")
					:SetText(Money.ToString(0, nil, "OPT_RETAIL_ROUND"))
				)
			)
		)
		:AddChild(UIElements.New("HorizontalLine", "line"))
	if Environment.IsRetail() then
		frame:AddChild(UIElements.New("Frame", "bottom")
			:SetLayout("VERTICAL")
			:SetHeight(74)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("ActionButton", "openAllMail")
				:SetHeight(26)
				:SetText(L["Open All Mail"])
				:SetScript("OnClick", private.OpenBtnOnClick)
				:SetModifierText(L["Open Mail"], "SHIFT")
				:SetModifierText(L["Open All Mail Without Money"], "CTRL")
				:SetModifierText(L["Open Mail Without Money"], "SHIFT", "CTRL")
				:SetTooltip(L["Hold SHIFT to not continue after the inbox refreshes and CTRL to not open mail with money attached."])
			)
			:AddChild(UIElements.New("Frame", "buttons")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, 8, 0)
				:AddChild(UIElements.New("ActionButton", "openAllSales")
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2")
					:SetText(L["All Sold"])
					:SetContext("SALE")
					:SetScript("OnClick", private.OpenBtnOnClick)
					:SetModifierText(L["Sold"], "SHIFT")
					:SetTooltip(L["Hold SHIFT to not continue after the inbox refreshes"])
				)
				:AddChild(UIElements.New("ActionButton", "openAllBuys")
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2")
					:SetText(L["All Bought"])
					:SetContext("BUY")
					:SetScript("OnClick", private.OpenBtnOnClick)
					:SetModifierText(L["Bought"], "SHIFT")
					:SetTooltip(L["Hold SHIFT to not continue after the inbox refreshes"])
				)
				:AddChild(UIElements.New("ActionButton", "openAllCancels")
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2")
					:SetText(L["All Cancelled"])
					:SetContext("CANCEL")
					:SetScript("OnClick", private.OpenBtnOnClick)
					:SetModifierText(L["Cancelled"], "SHIFT")
					:SetTooltip(L["Hold SHIFT to not continue after the inbox refreshes"])
				)
				:AddChild(UIElements.New("ActionButton", "openAllExpires")
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2")
					:SetText(L["All Expired"])
					:SetContext("EXPIRE")
					:SetScript("OnClick", private.OpenBtnOnClick)
					:SetModifierText(L["Expired"], "SHIFT")
					:SetTooltip(L["Hold SHIFT to not continue after the inbox refreshes"])
				)
				:AddChild(UIElements.New("ActionButton", "openAllOthers")
					:SetFont("BODY_BODY2")
					:SetText(L["All Other"])
					:SetContext("OTHER")
					:SetScript("OnClick", private.OpenBtnOnClick)
					:SetModifierText(L["Other"], "SHIFT")
					:SetTooltip(L["Hold SHIFT to not continue after the inbox refreshes"])
				)
			)
		)
	else
		frame:AddChild(UIElements.New("Frame", "bottom")
			:SetLayout("VERTICAL")
			:SetHeight(74)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("ActionButton", "openAllMail")
				:SetHeight(26)
				:SetText(L["Open Mail"])
				:SetScript("OnClick", private.OpenBtnOnClick)
				:SetModifierText(L["Open All Mail"], "SHIFT")
				:SetModifierText(L["Open Mail Without Money"], "CTRL")
				:SetModifierText(L["Open All Mail Without Money"], "SHIFT", "CTRL")
				:SetTooltip(L["Hold SHIFT to continue after the inbox refreshes and CTRL to not open mail with money attached."])
			)
			:AddChild(UIElements.New("Frame", "buttons")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, 8, 0)
				:AddChild(UIElements.New("ActionButton", "openAllSales")
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2")
					:SetText(L["Sold"])
					:SetContext("SALE")
					:SetScript("OnClick", private.OpenBtnOnClick)
					:SetModifierText(L["All Sold"], "SHIFT")
					:SetTooltip(L["Hold SHIFT to continue after the inbox refreshes"])
				)
				:AddChild(UIElements.New("ActionButton", "openAllBuys")
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2")
					:SetText(L["Bought"])
					:SetContext("BUY")
					:SetScript("OnClick", private.OpenBtnOnClick)
					:SetModifierText(L["All Bought"], "SHIFT")
					:SetTooltip(L["Hold SHIFT to continue after the inbox refreshes"])
				)
				:AddChild(UIElements.New("ActionButton", "openAllCancels")
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2")
					:SetText(L["Cancelled"])
					:SetContext("CANCEL")
					:SetScript("OnClick", private.OpenBtnOnClick)
					:SetModifierText(L["All Cancelled"], "SHIFT")
					:SetTooltip(L["Hold SHIFT to continue after the inbox refreshes"])
				)
				:AddChild(UIElements.New("ActionButton", "openAllExpires")
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2")
					:SetText(L["Expired"])
					:SetContext("EXPIRE")
					:SetScript("OnClick", private.OpenBtnOnClick)
					:SetModifierText(L["All Expired"], "SHIFT")
					:SetTooltip(L["Hold SHIFT to continue after the inbox refreshes"])
				)
				:AddChild(UIElements.New("ActionButton", "openAllOthers")
					:SetFont("BODY_BODY2")
					:SetText(L["Other"])
					:SetContext("OTHER")
					:SetScript("OnClick", private.OpenBtnOnClick)
					:SetModifierText(L["All Other"], "SHIFT")
					:SetTooltip(L["Hold SHIFT to continue after the inbox refreshes"])
				)
			)
		)
	end
	frame:SetScript("OnUpdate", private.InboxFrameOnUpdate)
	frame:SetScript("OnHide", private.InboxFrameOnHide)

	private.frame = frame

	return frame
end

function private.GetInboxItemsFrame()
	private.itemsQuery = private.itemsQuery or MailTracking.CreateMailItemQuery()
	private.itemsQuery:ResetFilters()
		:Equal("index", private.selectedMail)
		:OrderBy("itemIndex", true)

	local _, _, _, isTakeable = GetInboxText(private.selectedMail)
	local _, _, _, _, _, _, _, _, _, _, textCreated = GetInboxHeaderInfo(private.selectedMail)
	local frame = UIElements.New("Frame", "items")
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("Frame", "content")
			:SetLayout("VERTICAL")
			:SetBackgroundColor("PRIMARY_BG")
			:AddChild(UIElements.New("Frame", "top")
				:SetLayout("HORIZONTAL")
				:SetHeight(40)
				:SetPadding(8)
				:SetBackgroundColor("PRIMARY_BG_ALT")
				:AddChild(UIElements.New("Frame", "back")
					:SetLayout("VERTICAL")
					:SetWidth(100)
					:AddChild(UIElements.New("ActionButton", "button")
						:SetWidth(64)
						:SetMargin(0, 36, 0, 0)
						:SetText(TextureAtlas.GetTextureLink(TextureAtlas.GetFlippedHorizontallyKey("iconPack.14x14/Chevron/Right"))..BACK)
						:SetScript("OnClick", private.ViewBackButtonOnClick)
					)
				)
				:AddChild(UIElements.New("Text", "title")
					:SetFont("BODY_BODY1_BOLD")
					:SetJustifyH("CENTER")
					:SetText(L["Open Mail"])
				)
				:AddChild(UIElements.New("Frame", "copy")
					:SetLayout("VERTICAL")
					:SetWidth(100)
					:AddChild(UIElements.New("Button", "button")
						:SetFont("BODY_BODY2_MEDIUM")
						:SetIcon("iconPack.14x14/Duplicate", "LEFT")
						:SetText(L["Copy Letter"])
						:SetDisabled(not isTakeable or textCreated)
						:SetScript("OnClick", private.CopyLetterButtonOnClick)
					)
				)
			)
			:AddChild(UIElements.New("Frame", "header")
				:SetLayout("VERTICAL")
				:SetPadding(12, 12, 4, 6)
				:SetBackgroundColor("PRIMARY_BG_ALT")
				:AddChild(UIElements.New("Frame", "top")
					:SetLayout("VERTICAL")
					:SetHeight(20)
					:SetMargin(0, 0, 0, 6)
					:AddChild(UIElements.New("Frame", "left")
						:SetLayout("HORIZONTAL")
						:AddChild(UIElements.New("Text", "label")
							:SetWidth("AUTO")
							:SetFont("BODY_BODY2_MEDIUM")
							:SetText(L["From"]..": ")
						)
						:AddChild(UIElements.New("Text", "sender")
							:SetFont("BODY_BODY2")
						)
						:AddChild(UIElements.New("Spacer", "spacer"))
						:AddChild(UIElements.New("ActionButton", "report")
							:SetSize(124, 20)
							:SetFont("BODY_BODY2_MEDIUM")
							:SetText(L["Report Spam"])
							:SetScript("OnClick", private.ReportSpamOnClick)
						)
					)
				)
				:AddChild(UIElements.New("Frame", "bottom")
					:SetLayout("VERTICAL")
					:SetHeight(20)
					:AddChild(UIElements.New("Frame", "left")
						:SetLayout("HORIZONTAL")
						:AddChild(UIElements.New("Text", "label")
							:SetWidth("AUTO")
							:SetFont("BODY_BODY2_MEDIUM")
							:SetText(L["Subject"]..": ")
						)
						:AddChild(UIElements.New("Text", "subject")
							:SetFont("BODY_BODY2")
						)
					)
				)
			)
			:AddChild(UIElements.New("HorizontalLine", "line"))
			:AddChild(UIElements.New("Frame", "body")
				:SetLayout("VERTICAL")
				:SetPadding(4, 4, 8, 12)
				:AddChild(UIElements.New("MultiLineInput", "input")
					:SetBackgroundColor("PRIMARY_BG")
					:SetFont("BODY_BODY2")
					:SetValue("")
				)
			)
			:AddChild(UIElements.New("Frame", "attachments")
				:SetLayout("VERTICAL")
				:SetHeight(144)
				:SetPadding(12, 12, 0, 8)
				:SetBackgroundColor("PRIMARY_BG")
				:AddChild(UIElements.New("Frame", "header")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:AddChild(UIElements.New("Text", "text")
						:SetWidth("AUTO")
						:SetFont("BODY_BODY2_MEDIUM")
						:SetText(L["Attachments"])
					)
					:AddChild(UIElements.New("Button", "takeAll")
						:SetWidth("AUTO")
						:SetMargin(8, 0, 0, 0)
						:SetFont("BODY_BODY3")
						:SetTextColor("INDICATOR")
						:SetText(L["Move all to Bags"])
						:SetScript("OnClick", private.TakeAllOnClick)
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Text", "cod")
						:SetMargin(0, 5, 0, 0)
						:SetFont("BODY_BODY3_MEDIUM")
						:SetJustifyH("RIGHT")
						:SetText(L["COD"]..":")
					)
					:AddChild(UIElements.New("Text", "codAmount")
						:SetWidth("AUTO")
						:SetMargin(0, 8, 0, 0)
						:SetFont("ITEM_BODY2")
						:SetJustifyH("RIGHT")
					)
				)
				:AddChild(UIElements.New("QueryScrollingTable", "items")
					:SetHeaderHidden(true)
					:GetScrollingTableInfo()
						:NewColumn("items")
							:SetFont("ITEM_BODY3")
							:SetJustifyH("LEFT")
							:SetTextInfo(nil, private.FormatInboxItem)
							:SetIconSize(12)
							:SetIconInfo("itemLink", ItemInfo.GetTexture)
							:SetTooltipInfo(nil, private.GetInboxItemsTooltip)
							:SetTooltipLinkingDisabled(true)
							:Commit()
						:Commit()
					:SetQuery(private.itemsQuery)
					:SetSelectionDisabled(true)
					:SetScript("OnRowClick", private.ItemQueryOnRowClick)
				)
			)
		)
		:AddChild(UIElements.New("HorizontalLine", "line"))
		:AddChild(UIElements.New("Frame", "footer")
			:SetLayout("HORIZONTAL")
			:SetHeight(42)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("ActionButton", "reply")
				:SetMargin(0, 8, 0, 0)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetText(L["Reply"])
				:SetScript("OnClick", private.ReplyOnClick)
			)
			:AddChild(UIElements.New("ActionButton", "return/send")
				:SetWidth(144)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetText(MAIL_RETURN)
				:SetScript("OnClick", private.DeleteMailOnClick)
			)
		)

	private.UpdateInboxItemsFrame(frame)

	return frame
end

function private.ViewBackButtonOnClick(button)
	private.filterText = ""
	button:GetElement("__parent.__parent.__parent.__parent.__parent"):SetPath("mails", true)
end

function private.CopyLetterButtonOnClick(button)
	TakeInboxTextItem(private.selectedMail)
	button:SetDisabled(true)
		:Draw()
end

function private.GetMailTypeIcon(_, data, iconIndex, isMouseOver)
	if iconIndex == 1 then
		local mailType = private.inboxQuery:GetResultRowByUUID(data):GetField("icon")
		local icon = ""
		if mailType == "SALE" then
			icon = "iconPack.12x12/Bid"
		elseif mailType == "BUY" then
			icon = "iconPack.12x12/Shopping"
		elseif mailType == "CANCEL" then
			icon = "iconPack.12x12/Close/Circle"
		elseif mailType == "EXPIRE" then
			icon = "iconPack.12x12/Clock"
		elseif mailType == "OTHER" then
			icon = "iconPack.12x12/Mailing"
		else
			assert(mailType == "")
		end
		return true, icon, true
	else
		error("Invalid index: "..tostring(iconIndex))
	end
end

function private.ItemQueryOnRowClick(scrollingTable, row)
	local index = row:GetField("index")
	local _, _, _, _, _, cod = GetInboxHeaderInfo(index)
	if cod > 0 then
		scrollingTable:GetBaseElement():ShowConfirmationDialog(L["Accept COD?"], format(L["Accepting this item will cost: %s"], Money.ToString(cod)), private.TakeInboxItem, scrollingTable, row)
		return
	end

	private.TakeInboxItem(scrollingTable, row)
end

function private.TakeInboxItem(scrollingTable, row)
	local index = row:GetField("index")
	local itemIndex = row:GetField("itemIndex")
	if private.itemsQuery:Count() == 1 then
		if itemIndex == 0 then
			TakeInboxMoney(index)
		else
			TakeInboxItem(index, row:GetField("itemIndex"))
		end
		scrollingTable:GetElement("__parent.__parent.__parent.__parent"):SetPath("mails", true)
	else
		if itemIndex == 0 then
			TakeInboxMoney(index)
		else
			TakeInboxItem(index, row:GetField("itemIndex"))
		end
	end
end

function private.ReportSpamOnClick(button)
	if not CanComplainInboxItem(private.selectedMail) then
		return
	end
	local _, _, sender = GetInboxHeaderInfo(private.selectedMail)
	local dialog = StaticPopup_Show("CONFIRM_REPORT_SPAM_MAIL", sender)
	if dialog then
		dialog.data = private.selectedMail
	end
end

function private.TakeAllOnClick(button)
	local _, _, _, _, _, cod = GetInboxHeaderInfo(private.selectedMail)
	if cod > 0 then
		button:GetBaseElement():ShowConfirmationDialog(L["Accept COD?"], format(L["Accepting this item will cost: %s"], Money.ToString(cod)), private.AutoLootMailItem, button)
	else
		private.AutoLootMailItem(button)
	end
end

function private.AutoLootMailItem(button)
	-- marks the mail as read
	GetInboxText(private.selectedMail)
	AutoLootMailItem(private.selectedMail)
	button:GetElement("__parent.__parent.__parent.__parent.__parent"):SetPath("mails", true)
end

function private.ReplyOnClick(button)
	local _, _, sender = GetInboxHeaderInfo(private.selectedMail)
	TSM.UI.MailingUI.Send.SetSendRecipient(sender)
	TSM.UI.MailingUI.SetSelectedTab(L["Send"], true)
end

function private.DeleteMailOnClick(button)
	local _, _, _, _, money, _, _, itemCount = GetInboxHeaderInfo(private.selectedMail)
	if InboxItemCanDelete(private.selectedMail) then
		if itemCount and itemCount > 0 then
			return
		elseif money and money > 0 then
			return
		else
			DeleteInboxItem(private.selectedMail)
		end
	else
		ReturnInboxItem(private.selectedMail)
	end
	button:GetElement("__parent.__parent.__parent"):SetPath("mails", true)
end

function private.UpdateInboxItemsFrame(frame)
	local _, _, sender, subject, money, cod, _, itemCount, _, _, _, canReply, isGM = GetInboxHeaderInfo(private.selectedMail)
	frame:GetElement("content.header.top.left.sender"):SetText(sender or UNKNOWN)
	frame:GetElement("content.header.bottom.left.subject"):SetText(subject)

	if isGM then
		frame:GetElement("content.header.top.left.sender"):SetTextColor("BLIZZARD_GM")
			:Draw()
	else
		frame:GetElement("content.header.top.left.sender"):SetTextColor("TEXT_ALT")
			:Draw()
	end

	if CanComplainInboxItem(private.selectedMail) then
		frame:GetElement("content.header.top.left.report"):Show()
	else
		frame:GetElement("content.header.top.left.report"):Hide()
	end

	if cod and cod > 0 then
		frame:GetElement("content.attachments.header.cod"):Show()
		frame:GetElement("content.attachments.header.codAmount"):SetText(Money.ToString(cod, Theme.GetColor("FEEDBACK_RED"):GetTextColorPrefix()))
		frame:GetElement("content.attachments.header.codAmount"):Show()
	else
		frame:GetElement("content.attachments.header.cod"):Hide()
		frame:GetElement("content.attachments.header.codAmount"):Hide()
	end

	if itemCount and itemCount > 0 then
		frame:GetElement("content.attachments.header.takeAll"):Show()
	else
		frame:GetElement("content.attachments.header.takeAll"):Hide()
	end

	if not sender or not canReply or sender == PLAYER_NAME then
		frame:GetElement("footer.reply"):SetDisabled(true)
	else
		frame:GetElement("footer.reply"):SetDisabled(false)
	end

	if InboxItemCanDelete(private.selectedMail) then
		frame:GetElement("footer.return/send"):SetText(DELETE)
		if (itemCount and itemCount > 0) or (money and money > 0) then
			frame:GetElement("footer.return/send"):SetDisabled(true)
		else
			frame:GetElement("footer.return/send"):SetDisabled(false)
		end
	else
		frame:GetElement("footer.return/send"):SetText(MAIL_RETURN)
		frame:GetElement("footer.return/send"):SetDisabled(false)
	end

	local body, _, _, _, isInvoice = GetInboxText(private.selectedMail)
	if isInvoice then
		local invoiceType, itemName, playerName, bid, buyout, deposit, consignment, _, etaHour, etaMin = GetInboxInvoiceInfo(private.selectedMail)
		playerName = playerName or (invoiceType == "buyer" and AUCTION_HOUSE_MAIL_MULTIPLE_SELLERS or AUCTION_HOUSE_MAIL_MULTIPLE_BUYERS)
		local purchaseType = bid == buyout and BUYOUT or HIGH_BIDDER
		if invoiceType == "buyer" then
			body = ITEM_PURCHASED_COLON.." "..itemName.."\n"..SOLD_BY_COLON.." "..playerName.." ("..purchaseType..")".."\n\n"..AMOUNT_PAID_COLON.." "..Money.ToString(bid)
		elseif invoiceType == "seller" then
			body = ITEM_SOLD_COLON.." "..itemName.."\n"..PURCHASED_BY_COLON.." "..playerName.." ("..purchaseType..")".."\n\n"..L["Sale Price"]..": "..Money.ToString(bid).."\n"..L["Deposit"]..": +"..Money.ToString(deposit).."\n"..L["Auction House Cut"]..": -"..Money.ToString(consignment, Theme.GetColor("FEEDBACK_RED"):GetTextColorPrefix()).."\n\n"..AMOUNT_RECEIVED_COLON.." "..Money.ToString(bid + deposit - consignment)
		elseif invoiceType == "seller_temp_invoice" then
			body = ITEM_SOLD_COLON.." "..itemName.."\n"..PURCHASED_BY_COLON.." "..playerName.." ("..purchaseType..")".."\n\n"..AUCTION_INVOICE_PENDING_FUNDS_COLON.." "..Money.ToString(bid + deposit - consignment).."\n"..L["Estimated deliver time"]..": "..GameTime_GetFormattedTime(etaHour, etaMin, true)
		end
	end
	frame:GetElement("content.body.input")
		:SetValue(body or "")
		:Draw()

	if not body then
		frame:GetElement("content.body.input"):Hide()
		frame:GetElement("content.attachments.header.text"):SetText(L["Attachments"])
		frame:GetElement("content.attachments")
			:SetHeight(nil)
			:Draw()
	elseif private.itemsQuery:Count() == 0 then
		frame:GetElement("content.body.input"):Show()
		frame:GetElement("content.attachments.header.text"):SetText(L["No Attachments"])
		frame:GetElement("content.attachments")
			:SetHeight(48)
			:Draw()
	else
		frame:GetElement("content.body.input"):Show()
		frame:GetElement("content.attachments.header.text"):SetText(L["Attachments"])
		frame:GetElement("content.attachments")
			:SetHeight(144)
			:Draw()
	end
end

function private.FormatInboxItem(row)
	local itemIndex = row:GetField("itemIndex")
	if itemIndex == 0 then
		return L["Gold"]..": "..Money.ToString(row:GetField("itemLink"), Theme.GetColor("FEEDBACK_GREEN"):GetTextColorPrefix())
	end

	local coloredItem = UIUtils.GetDisplayItemName(row:GetField("itemLink")) or ""
	local quantity = row:GetField("quantity")

	local item = ""
	if quantity > 1 then
		item = coloredItem..Theme.GetColor("FEEDBACK_YELLOW"):ColorText(" (x"..quantity..")")
	else
		item = coloredItem
	end

	return item
end


function private.GetInboxItemsTooltip(row)
	return row:GetField("itemIndex") ~= 0 and row:GetField("itemLink") or nil
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.InboxFrameOnUpdate(frame)
	frame:SetScript("OnUpdate", nil)
	private.UpdateCountDown(true)
	private.updateCounterTimer:RunForTime(0)
	private.fsm:ProcessEvent("EV_FRAME_SHOW", frame, private.filterText)
end

function private.InboxFrameOnHide(frame)
	assert(frame == private.frame)
	private.frame = nil

	private.fsm:ProcessEvent("EV_FRAME_HIDE")
end

function private.InboxOnDataUpdated()
	if not private.frame then
		return
	end

	private.fsm:ProcessEvent("EV_MAIL_DATA_UPDATED", private.filterText)
end

function private.OpenBtnOnClick(button)
	local filterType = button:GetContext()
	button:SetPressed(true)
	local openAll = nil
	if Environment.IsRetail() then
		openAll = not IsShiftKeyDown()
	else
		openAll = IsShiftKeyDown()
	end
	private.fsm:ProcessEvent("EV_BUTTON_CLICKED", openAll, not filterType and IsControlKeyDown(), private.filterText, filterType)
end

function private.QueryOnRowClick(scrollingTable, row, button)
	if button ~= "LeftButton" then
		return
	end

	if IsShiftKeyDown() then
		local index = row:GetField("index")
		local _, _, _, _, _, cod = GetInboxHeaderInfo(index)
		if cod <= 0 then
			-- marks the mail as read
			GetInboxText(index)
			AutoLootMailItem(index)
		end
	else
		TSM.Mailing.Open.KillThread()
		private.selectedMail = row:GetField("index")
		scrollingTable:GetElement("__parent.__parent"):SetPath("items", true)
	end
end

function private.SearchOnValueChanged(input)
	local text = input:GetValue()
	if text == private.filterText then
		return
	end
	private.filterText = text

	private.inboxQuery:ResetFilters()
		:Or()
			:Matches("itemList", private.filterText)
			:Matches("subject", private.filterText)
		:End()

	input:GetElement("__parent.__parent.mails"):UpdateData(true)
end

function private.FormatItem(row)
	private.itemsQuery = private.itemsQuery or MailTracking.CreateMailItemQuery()

	private.itemsQuery:ResetFilters()
		:Equal("index", row:GetField("index"))
		:GreaterThan("itemIndex", 0)
		:ResetOrderBy()
		:OrderBy("itemIndex", true)

	local items = ""
	local item = nil
	local same = true
	local qty = 0
	for _, itemsRow in private.itemsQuery:Iterator() do
		local coloredItem = UIUtils.GetDisplayItemName(itemsRow:GetField("itemLink")) or ""
		local quantity = itemsRow:GetField("quantity")

		if not item then
			item = coloredItem
		end

		if quantity > 1 then
			items = items..coloredItem..Theme.GetColor("FEEDBACK_YELLOW"):ColorText(" (x"..quantity..")")..", "
		else
			items = items..coloredItem..", "
		end

		if item == coloredItem then
			qty = qty + quantity
		else
			same = false
		end
	end
	items = strtrim(items, ", ")

	if same and item then
		if qty > 1 then
			items = item..Theme.GetColor("FEEDBACK_YELLOW"):ColorText(" (x"..qty..")")
		else
			items = item
		end
	end

	if not items or items == "" then
		local subject = row:GetField("subject")
		if subject ~= "" then
			items = gsub(row:GetField("subject"), strtrim(AUCTION_SOLD_MAIL_SUBJECT, "%s.*"), "") or "--"
		else
			local _, _, sender = GetInboxHeaderInfo(row:GetField("index"))
			items = sender or UNKNOWN
		end
	end

	return items
end

function private.FormatDaysLeft(timeLeft)
	local color = nil
	if timeLeft >= 1 then
		if timeLeft <= 5 then
			color = Theme.GetColor("FEEDBACK_YELLOW")
			timeLeft = floor(timeLeft).." "..DAYS
		else
			color = Theme.GetColor("FEEDBACK_GREEN")
			timeLeft = floor(timeLeft).." "..DAYS
		end
	else
		color = Theme.GetColor("FEEDBACK_RED")
		local hoursLeft = floor(timeLeft * 24)
		if hoursLeft > 1 then
			timeLeft = hoursLeft.." "..L["Hrs"]
		elseif hoursLeft == 1 then
			timeLeft = hoursLeft.." "..L["Hr"]
		else
			timeLeft = floor(hoursLeft / 60).." "..L["Min"]
		end
	end
	return color:ColorText(timeLeft)
end

function private.FormatMoney(row)
	local money = row:GetField("money")
	local cod = row:GetField("cod")

	local gold = nil
	if cod > 0 then
		gold = Money.ToString(cod, Theme.GetColor("FEEDBACK_RED"):GetTextColorPrefix(), "OPT_RETAIL_ROUND")
	elseif money > 0 then
		gold = Money.ToString(money, Theme.GetColor("FEEDBACK_GREEN"):GetTextColorPrefix(), "OPT_RETAIL_ROUND")
	end

	return gold or "--"
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.UpdateCountDown(force)
	if not force then
		private.updateCounterTimer:RunForTime(1)
	end
	if not private.frame then
		return
	end

	local nextUpdate = MAIL_REFRESH_TIME - (time() - TSM.Mailing.Open.GetLastCheckTime())
	if nextUpdate <= 0 then
		nextUpdate = MAIL_REFRESH_TIME
	end

	if nextUpdate ~= private.nextUpdate or force then
		private.frame:GetElement("top.reload"):SetFormattedText(L["Reload UI (%02d)"], Math.Round(nextUpdate))
			:Draw()
		private.nextUpdate = nextUpdate
	end
end



-- ============================================================================
-- FSM
-- ============================================================================

function private.FSMCreate()
	local fsmContext = {
		frame = nil,
		opening = false
	}

	Event.Register("PLAYER_REPORT_SUBMITTED", function()
		if not private.view or not private.view:HasChildById("view") then
			return
		end
		private.view:GetElement("view"):SetPath("mails", true)
	end)

	local function UpdateText(context, filterText)
		local text = nil
		local numMail, totalMail = GetInboxNumItems()
		if filterText == "" then
			if totalMail > numMail then
				text = L["Showing %s of %d Mails"]
			elseif (numMail == 0 and totalMail == 0) or (numMail == 1 and totalMail == 1) then
				text = L["Showing %s Mail"]
			else
				text = L["Showing all %s Mails"]
			end
		else
			numMail = private.inboxQuery:Count()
			if (numMail == 0 and totalMail == 0) or (numMail == 1 and totalMail == 1) then
				text = L["Showing %s of %d Mail"]
			else
				text = L["Showing %s of %d Mails"]
			end
		end

		local totalItems, totalGold = 0, 0
		for _, row in private.inboxQuery:Iterator() do
			totalItems = totalItems + row:GetField("itemCount")
			totalGold = totalGold + row:GetField("money")
		end

		context.frame:GetElement("footer.mailNum")
			:SetText(format(text, Theme.GetColor("FEEDBACK_GREEN"):ColorText(tostring(numMail)), totalMail))
			:Draw()
		context.frame:GetElement("footer.itemNum")
			:SetText(format(L["%s Items Total"], Theme.GetColor("FEEDBACK_GREEN"):ColorText(totalItems)))
		context.frame:GetElement("footer.content.gold")
			:SetText(Money.ToString(totalGold, nil, "OPT_RETAIL_ROUND"))

		context.frame:GetElement("footer")
			:Draw()
	end

	local function UpdateButtons(context)
		if not context.frame or not context.frame:HasChildById("top") then
			return
		end

		if context.opening then
			context.frame:GetElement("bottom.openAllMail")
				:SetDisabled(true)
			context.frame:GetElement("bottom.buttons.openAllSales")
				:SetDisabled(true)
			context.frame:GetElement("bottom.buttons.openAllBuys")
				:SetDisabled(true)
			context.frame:GetElement("bottom.buttons.openAllCancels")
				:SetDisabled(true)
			context.frame:GetElement("bottom.buttons.openAllExpires")
				:SetDisabled(true)
			context.frame:GetElement("bottom.buttons.openAllOthers")
				:SetDisabled(true)

			context.frame:GetElement("bottom")
				:Draw()
		else
			local all, sales, buys, cancels, expires, other = 0, 0, 0, 0, 0, 0
			for _, row in private.inboxQuery:Iterator() do
				local iconType = row:GetField("icon")
				all = all + 1
				if iconType == "SALE" then
					sales = sales + 1
				elseif iconType == "BUY" then
					buys = buys + 1
				elseif iconType == "CANCEL" then
					cancels = cancels + 1
				elseif iconType == "EXPIRE" then
					expires = expires + 1
				elseif iconType == "OTHER" then
					other = other + 1
				end
			end

			context.frame:GetElement("bottom.openAllMail")
				:SetDisabled(all == 0)
				:SetPressed(false)
			context.frame:GetElement("bottom.buttons.openAllSales")
				:SetDisabled(sales == 0)
				:SetPressed(false)
			context.frame:GetElement("bottom.buttons.openAllBuys")
				:SetDisabled(buys == 0)
				:SetPressed(false)
			context.frame:GetElement("bottom.buttons.openAllCancels")
				:SetDisabled(cancels == 0)
				:SetPressed(false)
			context.frame:GetElement("bottom.buttons.openAllExpires")
				:SetDisabled(expires == 0)
				:SetPressed(false)
			context.frame:GetElement("bottom.buttons.openAllOthers")
				:SetDisabled(other == 0)
				:SetPressed(false)

			context.frame:GetElement("bottom")
				:Draw()
		end
	end

	private.fsm = FSM.New("MAILING_INBOX")
		:AddState(FSM.NewState("ST_HIDDEN")
			:SetOnEnter(function(context)
				TSM.Mailing.Open.KillThread()
				private.updateCounterTimer:Cancel()
				context.frame = nil
			end)
			:AddTransition("ST_SHOWN")
			:AddTransition("ST_HIDDEN")
			:AddEventTransition("EV_FRAME_SHOW", "ST_SHOWN")
		)
		:AddState(FSM.NewState("ST_SHOWN")
			:SetOnEnter(function(context, frame, filterText)
				if not context.frame then
					context.frame = frame
					UpdateText(context, filterText)
					UpdateButtons(context)
				end
			end)
			:AddTransition("ST_HIDDEN")
			:AddTransition("ST_OPENING_START")
			:AddEvent("EV_MAIL_DATA_UPDATED", function(context, filterText)
				UpdateText(context, filterText)
				UpdateButtons(context)
			end)
			:AddEventTransition("EV_BUTTON_CLICKED", "ST_OPENING_START")
		)
		:AddState(FSM.NewState("ST_OPENING_START")
			:SetOnEnter(function(context, autoRefresh, keepMoney, filterText, filterType)
				context.opening = true
				UpdateButtons(context)
				TSM.Mailing.Open.StartOpening(private.FSMOpenCallback, autoRefresh, keepMoney, filterText, filterType)
			end)
			:SetOnExit(function(context)
				context.opening = false
				UpdateButtons(context)
			end)
			:AddTransition("ST_SHOWN")
			:AddTransition("ST_HIDDEN")
			:AddEvent("EV_MAIL_DATA_UPDATED", function(context, filterText)
				UpdateText(context, filterText)
			end)
			:AddEventTransition("EV_OPENING_DONE", "ST_SHOWN")
		)
		:AddDefaultEventTransition("EV_FRAME_HIDE", "ST_HIDDEN")
		:Init("ST_HIDDEN", fsmContext)
end

function private.FSMOpenCallback()
	private.fsm:ProcessEvent("EV_OPENING_DONE")

	Sound.PlaySound(private.settings.openMailSound)
end
