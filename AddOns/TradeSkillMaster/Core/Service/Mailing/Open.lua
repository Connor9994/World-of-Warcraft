-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Open = TSM.Mailing:NewPackage("Open")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Delay = TSM.Include("Util.Delay")
local String = TSM.Include("Util.String")
local Money = TSM.Include("Util.Money")
local Log = TSM.Include("Util.Log")
local ItemString = TSM.Include("Util.ItemString")
local Theme = TSM.Include("Util.Theme")
local DefaultUI = TSM.Include("Service.DefaultUI")
local Threading = TSM.Include("Service.Threading")
local ItemInfo = TSM.Include("Service.ItemInfo")
local MailTracking = TSM.Include("Service.MailTracking")
local Settings = TSM.Include("Service.Settings")
local private = {
	settings = nil,
	thread = nil,
	isOpening = false,
	lastCheck = nil,
	moneyCollected = 0,
	checkInboxTimer = nil,
}
local INBOX_SIZE = Environment.IsRetail() and 100 or 50
local MAIL_REFRESH_TIME = Environment.IsRetail() and 15 or 60



-- ============================================================================
-- Module Functions
-- ============================================================================

function Open.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "mailingOptions", "inboxMessages")
		:AddKey("global", "mailingOptions", "keepMailSpace")
	private.thread = Threading.New("MAIL_OPENING", private.OpenMailThread)
	private.checkInboxTimer = Delay.CreateTimer("MAILING_OPEN_CHECK_INBOX", private.CheckInbox)
	DefaultUI.RegisterMailVisibleCallback(private.FrameVisibleCallback)
end

function Open.KillThread()
	Threading.Kill(private.thread)

	private.PrintMoneyCollected()
	private.isOpening = false
end

function Open.StartOpening(callback, autoRefresh, keepMoney, filterText, filterType)
	Threading.Kill(private.thread)

	private.isOpening = true
	private.moneyCollected = 0

	Threading.SetCallback(private.thread, callback)
	Threading.Start(private.thread, autoRefresh, keepMoney, filterText, filterType)
end

function Open.GetLastCheckTime()
	return private.lastCheck
end



-- ============================================================================
-- Mail Opening Thread
-- ============================================================================

function private.OpenMailThread(autoRefresh, keepMoney, filterText, filterType)
	local isLastLoop = false
	while true do
		local query = TSM.Mailing.Inbox.CreateQuery()
		query:ResetOrderBy()
			:OrderBy("index", false)
			:Or()
				:Matches("itemList", filterText)
				:Matches("subject", filterText)
			:End()
			:Select("index")

		if filterType then
			query:Equal("icon", filterType)
		end

		local mails = Threading.AcquireSafeTempTable()
		for _, index in query:Iterator() do
			tinsert(mails, index)
		end
		query:Release()

		private.OpenMails(mails, keepMoney, filterType)
		Threading.ReleaseSafeTempTable(mails)

		if not autoRefresh or isLastLoop then
			break
		end

		local numLeftMail, totalLeftMail = GetInboxNumItems()
		if totalLeftMail == numLeftMail or numLeftMail == INBOX_SIZE then
			isLastLoop = true
		end

		CheckInbox()
		Threading.Sleep(1)
	end

	private.PrintMoneyCollected()
	private.isOpening = false
end

function private.CanOpenMail()
	return not C_Mail.IsCommandPending()
end

function private.OpenMails(mails, keepMoney, filterType)
	for i = 1, #mails do
		local index = mails[i]
		Threading.WaitForFunction(private.CanOpenMail)

		local mailType = MailTracking.GetMailType(index)
		local matchesFilter = (not filterType and mailType) or (filterType and filterType == mailType)
		local hasBagSpace = not MailTracking.GetInboxItemLink(index) or CalculateTotalNumberOfFreeBagSlots() > private.settings.keepMailSpace
		if matchesFilter and hasBagSpace then
			local _, _, _, _, money = GetInboxHeaderInfo(index)
			if not keepMoney or (keepMoney and money <= 0) then
				-- marks the mail as read
				GetInboxText(index)
				AutoLootMailItem(index)
				private.moneyCollected = private.moneyCollected + money

				if Threading.WaitForEvent("CLOSE_INBOX_ITEM", "MAIL_FAILED") ~= "MAIL_FAILED" and private.settings.inboxMessages then
					private.PrintOpenMailMessage(index)
				end
			end
		end
	end
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.FrameVisibleCallback(visible)
	if visible then
		private.ScheduleCheck()
	else
		private.checkInboxTimer:Cancel()
	end
end

function private.CheckInbox()
	if private.isOpening then
		private.ScheduleCheck()
		return
	end

	if not TSM.UI.MailingUI.Inbox.IsMailOpened() then
		CheckInbox()
	end
	private.ScheduleCheck()
end

function private.PrintMoneyCollected()
	if private.settings.inboxMessages and private.moneyCollected > 0 then
		Log.PrintfUser(L["Total Gold Collected: %s"], Money.ToString(private.moneyCollected))
	end
	private.moneyCollected = 0
end

function private.PrintOpenMailMessage(index)
	local _, _, sender, subject, money, cod, _, hasItem = GetInboxHeaderInfo(index)
	sender = sender or "?"
	local _, _, _, _, isInvoice = GetInboxText(index)
	if isInvoice then
		-- it's an invoice
		local invoiceType, itemName, playerName, bid, _, _, ahcut, _, _, _, quantity = GetInboxInvoiceInfo(index)
		playerName = playerName or (invoiceType == "buyer" and AUCTION_HOUSE_MAIL_MULTIPLE_SELLERS or AUCTION_HOUSE_MAIL_MULTIPLE_BUYERS)
		if invoiceType == "buyer" then
			local itemLink = MailTracking.GetInboxItemLink(index) or "["..itemName.."]"
			Log.PrintfUser(L["Bought %sx%d for %s from %s"], itemLink, quantity, Money.ToString(bid, Theme.GetColor("FEEDBACK_RED"):GetTextColorPrefix()), playerName)
		elseif invoiceType == "seller" then
			Log.PrintfUser(L["Sold [%s]x%d for %s to %s"], itemName, quantity, Money.ToString(bid - ahcut, Theme.GetColor("FEEDBACK_GREEN"):GetTextColorPrefix()), playerName)
		end
	elseif hasItem then
		local itemLink
		local quantity = 0
		for i = 1, hasItem do
			local link = GetInboxItemLink(index, i)
			itemLink = itemLink or link
			quantity = quantity + (select(4, GetInboxItem(index, i)) or 0)
			if ItemString.Get(itemLink) ~= ItemString.Get(link) then
				itemLink = L["Multiple Items"]
				quantity = -1
				break
			end
		end
		if hasItem == 1 then
			itemLink = MailTracking.GetInboxItemLink(index) or itemLink
		end
		local itemName = ItemInfo.GetName(itemLink) or "?"
		local itemDesc = (quantity > 0 and format("%sx%d", itemLink, quantity)) or (quantity == -1 and "Multiple Items") or "?"
		if hasItem == 1 and itemLink and strfind(subject, "^" .. String.Escape(format(AUCTION_EXPIRED_MAIL_SUBJECT, itemName))) then
			Log.PrintfUser(L["Your auction of %s expired"], itemDesc)
		elseif hasItem == 1 and quantity > 0 and (subject == format(AUCTION_REMOVED_MAIL_SUBJECT.."x%d", itemName, quantity) or subject == format(AUCTION_REMOVED_MAIL_SUBJECT, itemName)) then
			Log.PrintfUser(L["Cancelled auction of %sx%d"], itemLink, quantity)
		elseif cod > 0 then
			Log.PrintfUser(L["%s sent you a COD of %s for %s"], sender, Money.ToString(cod, Theme.GetColor("FEEDBACK_RED"):GetTextColorPrefix()), itemDesc)
		elseif money > 0 then
			Log.PrintfUser(L["%s sent you %s and %s"], sender, itemDesc, Money.ToString(money, Theme.GetColor("FEEDBACK_GREEN"):GetTextColorPrefix()))
		else
			Log.PrintfUser(L["%s sent you %s"], sender, itemDesc)
		end
	elseif money > 0 then
		Log.PrintfUser(L["%s sent you %s"], sender, Money.ToString(money, Theme.GetColor("FEEDBACK_GREEN"):GetTextColorPrefix()))
	elseif subject then
		Log.PrintfUser(L["%s sent you a message: %s"], sender, subject)
	end
end


-- ============================================================================
-- Event Handlers
-- ============================================================================

function private.ScheduleCheck()
	if not private.lastCheck or time() - private.lastCheck > (MAIL_REFRESH_TIME - 1) then
		private.lastCheck = time()
		private.checkInboxTimer:RunForTime(MAIL_REFRESH_TIME)
	else
		local nextUpdate = MAIL_REFRESH_TIME - (time() - private.lastCheck)
		private.checkInboxTimer:RunForTime(nextUpdate)
	end
end
