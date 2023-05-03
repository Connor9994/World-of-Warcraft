-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Send = TSM.UI.MailingUI:NewPackage("Send")
local L = TSM.Include("Locale").GetTable()
local Delay = TSM.Include("Util.Delay")
local Money = TSM.Include("Util.Money")
local FSM = TSM.Include("Util.FSM")
local Database = TSM.Include("Util.Database")
local String = TSM.Include("Util.String")
local Event = TSM.Include("Util.Event")
local ItemString = TSM.Include("Util.ItemString")
local Theme = TSM.Include("Util.Theme")
local ItemInfo = TSM.Include("Service.ItemInfo")
local InventoryInfo = TSM.Include("Service.InventoryInfo")
local BagTracking = TSM.Include("Service.BagTracking")
local PlayerInfo = TSM.Include("Service.PlayerInfo")
local DefaultUI = TSM.Include("Service.DefaultUI")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	fsm = nil,
	frame = nil,
	db = nil,
	query = nil,
	recipient = "",
	subject = "",
	body = "",
	money = 0,
	isMoney = true,
	isCOD = false,
	mailShowingTimer = nil,
}
local PLAYER_NAME = UnitName("player")
local PLAYER_NAME_REALM = gsub(PLAYER_NAME.."-"..GetRealmName(), "%s+", "")
local MAX_COD_AMOUNT = 10000 * COPPER_PER_GOLD



-- ============================================================================
-- Module Functions
-- ============================================================================

function Send.OnInitialize()
	private.mailShowingTimer = Delay.CreateTimer("MAILING_SEND_MAIL_SHOWING", function() SetSendMailShowing(true) end)
	private.FSMCreate()
	TSM.UI.MailingUI.RegisterTopLevelPage(L["Send"], private.GetSendFrame)

	private.db = Database.NewSchema("MAILTRACKING_SEND_INFO")
		:AddStringField("itemString")
		:AddNumberField("quantity")
		:Commit()
	private.query = private.db:NewQuery()
end

function Send.SetSendRecipient(recipient)
	private.recipient = recipient
end



-- ============================================================================
-- Send UI
-- ============================================================================

function private.GetSendFrame()
	UIUtils.AnalyticsRecordPathChange("mailing", "send")
	local frame = UIElements.New("Frame", "send")
		:SetLayout("VERTICAL")
		:AddChild(UIElements.New("Frame", "container")
			:SetLayout("VERTICAL")
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("Text", "recipient")
				:SetMargin(8, 8, 8, 8)
				:SetHeight(24)
				:SetFont("BODY_BODY1_BOLD")
				:SetText(L["Recipient"])
			)
			:AddChild(UIElements.New("Frame", "name")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(8, 8, 0, 8)
				:AddChild(UIElements.New("Input", "input")
					:SetHintText(L["Enter recipient name"])
					:SetAutoComplete(PlayerInfo.GetConnectedAlts())
					:SetClearButtonEnabled(true)
					:SetValue(private.recipient)
					:SetScript("OnValueChanged", private.RecipientOnValueChanged)
				)
				:AddChild(UIElements.New("ActionButton", "contacts")
					:SetWidth(152)
					:SetMargin(8, 0, 0, 0)
					:SetFont("BODY_BODY2_MEDIUM")
					:SetText(L["Contacts"])
					:SetScript("OnClick", private.ContactsBtnOnClick)
				)
			)
			:AddChild(UIElements.New("Frame", "subject")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(8, 8, 0, 16)
				:AddChild(UIElements.New("Button", "icon")
					:SetMargin(4, 4, 0, 0)
					:SetBackgroundAndSize("iconPack.12x12/Add/Circle")
					:SetScript("OnClick", private.SubjectBtnOnClick)
				)
				:AddChild(UIElements.New("Button", "text")
					:SetWidth("AUTO")
					:SetText(L["Add subject & description (optional)"])
					:SetFont("BODY_BODY2")
					:SetScript("OnClick", private.SubjectBtnOnClick)
				)
				:AddChild(UIElements.New("Button", "button")
					:SetWidth("AUTO")
					:SetMargin(8, 0, 0, 0)
					:SetFont("BODY_BODY2")
					:SetTextColor("INDICATOR")
					:SetText(L["Edit"])
					:SetScript("OnClick", private.SubjectBtnOnClick)
				)
				:AddChild(UIElements.New("Spacer", "spacer"))
			)
			:AddChild(UIElements.New("Frame", "header")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(8, 8, 0, 4)
				:AddChild(UIElements.New("Text", "items")
					:SetFont("BODY_BODY1_BOLD")
					:SetText(L["Select Items to Attach"])
				)
			)
			:AddChild(UIElements.New("Frame", "dragBox")
				:SetLayout("VERTICAL")
				:SetBackgroundColor("PRIMARY_BG")
				:RegisterForDrag("LeftButton")
				:SetScript("OnReceiveDrag", private.DragBoxOnItemRecieve)
				:SetScript("OnMouseUp", private.DragBoxOnItemRecieve)
				:AddChild(UIElements.New("QueryScrollingTable", "items")
					:GetScrollingTableInfo()
						:NewColumn("item")
							:SetTitle(L["Items"])
							:SetFont("ITEM_BODY3")
							:SetJustifyH("LEFT")
							:SetIconSize(12)
							:SetTextInfo("itemString", UIUtils.GetDisplayItemName)
							:SetIconInfo("itemString", ItemInfo.GetTexture)
							:SetTooltipInfo("itemString")
							:SetTooltipLinkingDisabled(true)
							:DisableHiding()
							:Commit()
						:NewColumn("quantity")
							:SetTitle(L["Amount"])
							:SetWidth(60)
							:SetFont("TABLE_TABLE1")
							:SetJustifyH("LEFT")
							:SetTextInfo("quantity")
							:DisableHiding()
							:Commit()
						:Commit()
					:SetQuery(private.query)
					:SetScript("OnRowClick", private.QueryOnRowClick)
					:SetScript("OnDataUpdated", private.SendOnDataUpdated)
				)
				:AddChild(UIElements.New("HorizontalLine", "line"))
				:AddChild(UIElements.New("Frame", "footer")
					:SetLayout("HORIZONTAL")
					:SetHeight(26)
					:SetPadding(8, 8, 3, 3)
					:AddChild(UIElements.New("Spacer", "spacer"))
					:AddChild(UIElements.New("Text", "items")
						:SetWidth(144)
						:SetFont("BODY_BODY2_MEDIUM")
						:SetJustifyH("RIGHT")
						:Hide()
					)
					:AddChild(UIElements.New("Texture", "vline")
						:SetWidth(1)
						:SetMargin(8, 8, 3, 3)
						:SetColor("ACTIVE_BG_ALT")
						:Hide()
					)
					:AddChild(UIElements.New("Text", "postage")
						:SetWidth(150)
						:SetFont("BODY_BODY2_MEDIUM")
						:SetJustifyH("RIGHT")
						:SetText(L["Total Postage"]..": "..Money.ToString(30))
					)
				)
			)
			:AddChild(UIElements.New("HorizontalLine", "line"))
			:AddChild(UIElements.New("Frame", "check")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(8, 0, 8, 6)
				:AddChild(UIElements.New("Checkbox", "sendCheck")
					:SetWidth("AUTO")
					:SetMargin(0, 0, 1, 0)
					:SetFont("BODY_BODY2")
					:SetChecked(private.isMoney)
					:SetText(L["Send Money"])
					:SetScript("OnValueChanged", private.SendOnValueChanged)
				)
				:AddChild(UIElements.New("Spacer", "spacer"))
			)
			:AddChild(UIElements.New("Frame", "checkbox")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(8, 8, 0, 8)
				:AddChild(UIElements.New("Checkbox", "cod")
					:SetSize("AUTO", 20)
					:SetFont("BODY_BODY2")
					:SetChecked(private.isCOD)
					:SetText(L["Make Cash On Delivery?"])
					:SetDisabled(true)
					:SetScript("OnValueChanged", private.CODOnValueChanged)
				)
				:AddChild(UIElements.New("Text", "amountText")
					:SetHeight(20)
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2_MEDIUM")
					:SetJustifyH("RIGHT")
					:SetText(L["Amount"]..":")
				)
				:AddChild(UIElements.New("Input", "moneyInput")
					:SetWidth(160)
					:SetBackgroundColor("ACTIVE_BG")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetValidateFunc(private.MoneyValidateFunc)
					:SetJustifyH("RIGHT")
					:SetValue(Money.ToString(private.money))
					:SetScript("OnValueChanged", private.MoneyOnValueChanged)
				)
			)
		)
		:AddChild(UIElements.New("HorizontalLine", "line"))
		:AddChild(UIElements.New("Frame", "footer")
			:SetLayout("HORIZONTAL")
			:SetHeight(40)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("ActionButton", "sendMail")
				:SetHeight(24)
				:SetText(L["Send Mail"])
				:SetScript("OnClick", private.SendMail)
				:SetDisabled(private.recipient == "")
			)
			:AddChild(UIElements.New("Button", "clear")
				:SetWidth("AUTO")
				:SetHeight(24)
				:SetMargin(16, 10, 0, 0)
				:SetFont("BODY_BODY3_MEDIUM")
				:SetJustifyH("LEFT")
				:SetText(L["Clear All"])
				:SetScript("OnClick", private.ClearOnClick)
			)
		)
		:SetScript("OnUpdate", private.SendFrameOnUpdate)
		:SetScript("OnHide", private.SendFrameOnHide)

	private.frame = frame

	return frame
end

function private.SubjectBtnOnClick(button)
	button:GetBaseElement():ShowDialogFrame(UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetSize(478, 314)
		:SetPadding(12)
		:AddAnchor("CENTER")
		:SetBackgroundColor("FRAME_BG", true)
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, -4, 14)
			:AddChild(UIElements.New("Spacer", "spacer")
				:SetWidth(20)
			)
			:AddChild(UIElements.New("Text", "title")
				:SetFont("BODY_BODY1_BOLD")
				:SetJustifyH("CENTER")
				:SetText(L["Add Subject / Description"])
			)
			:AddChild(UIElements.New("Button", "closeBtn")
				:SetMargin(0, -4, 0, 0)
				:SetBackgroundAndSize("iconPack.24x24/Close/Default")
				:SetScript("OnClick", private.CloseDialog)
			)
		)
		:AddChild(UIElements.New("Text", "subjectText")
			:SetMargin(0, 0, 0, 4)
			:SetHeight(20)
			:SetFont("BODY_BODY2_MEDIUM")
			:SetText(L["Subject"])
		)
		:AddChild(UIElements.New("Input", "subjectInput")
			:SetHeight(24)
			:SetMargin(0, 0, 0, 8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:SetMaxLetters(64)
			:SetClearButtonEnabled(true)
			:SetValue(private.subject)
			:SetTabPaths("__parent.descriptionInput", "__parent.descriptionInput")
			:SetScript("OnValueChanged", private.SubjectOnValueChanged)
		)
		:AddChild(UIElements.New("Text", "descriptionText")
			:SetHeight(20)
			:SetMargin(0, 0, 0, 4)
			:SetFont("BODY_BODY2_MEDIUM")
			:SetText(DESCRIPTION)
		)
		:AddChild(UIElements.New("MultiLineInput", "descriptionInput")
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:SetIgnoreEnter()
			:SetMaxLetters(500)
			:SetValue(private.body)
			:SetTabPaths("__parent.subjectInput", "__parent.subjectInput")
			:SetScript("OnValueChanged", private.DesciptionOnValueChanged)
		)
		:AddChild(UIElements.New("Frame", "footer")
			:SetLayout("HORIZONTAL")
			:SetMargin(0, 0, 4, 12)
			:AddChild(UIElements.New("Text", "title")
				:SetHeight(20)
				:SetMargin(0, 4, 0, 0)
				:SetFont("BODY_BODY3")
				:SetJustifyH("RIGHT")
				:SetText(format(L["(%d/500 Characters)"], #private.body))
			)
			:AddChild(UIElements.New("Button", "clearAll")
				:SetSize("AUTO", 20)
				:SetFont("BODY_BODY3_MEDIUM")
				:SetJustifyH("LEFT")
				:SetText(L["Clear All"])
				:SetDisabled(private.subject == "" and private.body == "")
				:SetScript("OnClick", private.SubjectClearAllBtnOnClick)
			)
		)
		:AddChild(UIElements.New("ActionButton", "addMailBtn")
			:SetHeight(24)
			:SetText(L["Add to Mail"])
			:SetScript("OnClick", private.CloseDialog)
			:SetDisabled(private.subject == "" and private.body == "")
		)
		:SetScript("OnHide", private.DialogOnHide)
	)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.SendFrameOnUpdate(frame)
	frame:SetScript("OnUpdate", nil)
	private.fsm:ProcessEvent("EV_FRAME_SHOW", frame)
end

function private.SendFrameOnHide(frame)
	assert(frame == private.frame)
	private.frame = nil

	private.fsm:ProcessEvent("EV_FRAME_HIDE")
end

function private.ClearOnClick(button)
	private.fsm:ProcessEvent("EV_MAIL_CLEAR", true)
end

function private.CloseDialog(button)
	button:GetBaseElement():HideDialog()

	private.fsm:ProcessEvent("EV_DIALOG_HIDDEN")
end

function private.DialogOnHide(button)
	private.fsm:ProcessEvent("EV_DIALOG_HIDDEN")
end

function private.ContactsBtnOnClick(button)
	TSM.UI.Util.Contacts.ShowDialog(button, button:GetElement("__parent.input"), private.RecipientOnValueChanged)
end

function private.DragBoxOnItemRecieve(frame, button)
	if not CursorHasItem() then
		ClearCursor()
		return
	end

	if private.query:Count() >= 12 then
		ClearCursor()
		UIErrorsFrame:AddMessage(ERR_MAIL_INVALID_ATTACHMENT_SLOT, 1.0, 0.1, 0.1, 1.0)
		return
	end

	local _, _, subType = GetCursorInfo()
	local itemString = ItemString.Get(subType)
	local stackSize = nil
	local query = BagTracking.CreateQueryBags()
		:OrderBy("slotId", true)
		:Select("bag", "slot", "quantity")
		:Equal("isBoP", false)
		:Equal("itemString", itemString)
	for _, bag, slot, quantity in query:Iterator() do
		if InventoryInfo.IsBagSlotLocked(bag, slot) then
			stackSize = quantity
		end
	end
	query:Release()
	ClearCursor()
	if not stackSize then
		return
	end

	private.DatabaseNewRow(itemString, stackSize)
end

function private.QueryOnRowClick(scrollingTable, row, button)
	if button == "RightButton" then
		private.db:DeleteRow(row)
	end
end

function private.SendOnDataUpdated()
	private.fsm:ProcessEvent("EV_MAIL_DATA_UPDATED")
end

function private.SubjectClearAllBtnOnClick(button)
	private.subject = ""
	private.body = ""

	button:GetElement("__parent.__parent.subjectInput")
		:SetFocused(false)
		:SetValue(private.subject)
		:Draw()
	button:GetElement("__parent.__parent.descriptionInput")
		:SetFocused(false)
		:SetValue(private.body)
		:Draw()
	button:GetElement("__parent.title")
		:SetText(format(L["(%d/500 Characters)"], 0))
		:Draw()
	button:SetDisabled(true)
		:Draw()
	button:GetElement("__parent.__parent.addMailBtn")
		:SetDisabled(true)
		:Draw()
end

function private.RecipientOnValueChanged(input)
	local value = input:GetValue()
	if value == private.recipient then
		return
	end
	private.recipient = value
	private.UpdateSendFrame()
end

function private.SubjectOnValueChanged(input)
	local value = input:GetValue()
	if value == private.subject then
		return
	end
	private.subject = value
	input:GetElement("__parent.footer.clearAll")
		:SetDisabled(private.subject == "" and private.body == "")
		:Draw()
	input:GetElement("__parent.addMailBtn")
		:SetDisabled(private.subject == "" and private.body == "")
		:Draw()
end

function private.DesciptionOnValueChanged(input)
	local text = input:GetValue()
	if text == private.body then
		return
	end
	private.body = text
	input:GetElement("__parent.footer.title")
		:SetText(format(L["(%d/500 Characters)"], #private.body))
		:Draw()
	input:GetElement("__parent.footer.clearAll")
		:SetDisabled(private.subject == "" and private.body == "")
		:Draw()
	input:GetElement("__parent.addMailBtn")
		:SetDisabled(private.subject == "" and private.body == "")
		:Draw()
end

function private.SendOnValueChanged(checkbox)
	if checkbox:IsChecked() then
		checkbox:GetElement("__parent.__parent.checkbox.cod"):SetChecked(false)
			:Draw()

		private.isMoney = true
		private.isCOD = false
	else
		private.isMoney = false
	end
end

function private.CODOnValueChanged(checkbox)
	if checkbox:IsChecked() then
		checkbox:GetElement("__parent.__parent.check.sendCheck"):SetChecked(false)
			:Draw()

		local input = checkbox:GetElement("__parent.moneyInput")
		local value = private.ConvertMoneyValue(input:GetValue())
		private.money = private.isCOD and min(value, MAX_COD_AMOUNT) or value
		input:SetValue(Money.ToString(private.money))
			:Draw()

		private.isMoney = false
		private.isCOD = true
	else
		private.isCOD = false
	end
end

function private.ConvertMoneyValue(value)
	value = gsub(value, String.Escape(LARGE_NUMBER_SEPERATOR), "")
	value = tonumber(value) or Money.FromString(value)
	if not value then
		return nil
	end
	local maxVal = private.isCOD and MAX_COD_AMOUNT or MAXIMUM_BID_PRICE
	return value >= 0 and value <= maxVal and value or nil
end

function private.MoneyValidateFunc(_, value)
	return private.ConvertMoneyValue(value) and true or false
end

function private.MoneyOnValueChanged(input)
	local value = private.ConvertMoneyValue(input:GetValue())
	assert(value)
	if value == private.money then
		return
	end
	private.money = value
	input:SetValue(Money.ToString(value))
		:Draw()
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.SendMail(button)
	local money = 0
	if private.money > 0 and private.isMoney then
		money = private.money
	elseif private.money > 0 and private.isCOD then
		money = private.money * -1
	end

	button:GetElement("__parent.__parent.container.name.input"):SetFocused(false)
	private.UpdateRecentlyMailed(private.recipient)

	if private.query:Count() > 0 then
		local items = {}
		for _, row in private.query:Iterator() do
			local itemString = row:GetField("itemString")
			local quantity = row:GetField("quantity")
			if items[itemString] then
				items[itemString] = items[itemString] + quantity
			else
				items[itemString] = quantity
			end
		end

		private.fsm:ProcessEvent("EV_BUTTON_CLICKED", IsShiftKeyDown(), private.recipient, private.subject, private.body, money, items)
	else
		private.fsm:ProcessEvent("EV_BUTTON_CLICKED", IsShiftKeyDown(), private.recipient, private.subject, private.body, money)
	end
end

function private.UpdateRecentlyMailed(recipient)
	if recipient == UnitName("player") or recipient == PLAYER_NAME_REALM then
		return
	end

	local size = 0
	local oldestName = nil
	local oldestTime = nil
	for k, v in pairs(TSM.db.global.mailingOptions.recentlyMailedList) do
		size = size + 1
		if not oldestName or not oldestTime or oldestTime > v then
			oldestName = k
			oldestTime = v
		end
	end

	if size >= 20 then
		TSM.db.global.mailingOptions.recentlyMailedList[oldestName] = nil
	end

	TSM.db.global.mailingOptions.recentlyMailedList[recipient] = time()
end

function private.UpdateSendFrame()
	if not private.frame then
		return
	end

	local sendMail = private.frame:GetElement("footer.sendMail")
	if private.recipient ~= "" then
		sendMail:SetDisabled(false)
	else
		sendMail:SetDisabled(true)
	end
	sendMail:Draw()
end

function private.DatabaseNewRow(itemString, stackSize)
	private.db:NewRow()
		:SetField("itemString", itemString)
		:SetField("quantity", stackSize)
		:Create()
end



-- ============================================================================
-- FSM
-- ============================================================================

function private.FSMCreate()
	DefaultUI.RegisterMailVisibleCallback(function() private.fsm:ProcessEvent("EV_MAIL_CLEAR") end, false)
	Event.Register("MAIL_SEND_INFO_UPDATE", function()
		private.fsm:ProcessEvent("EV_MAIL_INFO_UPDATE")
	end)
	Event.Register("MAIL_FAILED", function()
		private.fsm:ProcessEvent("EV_SENDING_DONE")
	end)

	local fsmContext = {
		frame = nil,
		sending = false,
		keepInfo = false
	}

	local function UpdateFrame(context)
		if not context.frame then
			return
		end

		local subject = context.frame:GetElement("container.subject")
		if private.subject == "" and private.body == "" then
			subject:GetElement("icon")
				:SetBackgroundAndSize("iconPack.12x12/Add/Circle")
				:Draw()
			subject:GetElement("text")
				:SetText(L["Add subject & description (optional)"])
				:Draw()
			subject:GetElement("button")
				:Hide()
		else
			subject:GetElement("icon")
				:SetBackgroundAndSize("iconPack.12x12/Checkmark/Default")
				:Draw()
			subject:GetElement("text")
				:SetText(L["Subject & Description added"])
				:Draw()
			subject:GetElement("button")
				:Show()
		end
		subject:Draw()

		local items = context.frame:GetElement("container.dragBox.footer.items")
		local line = context.frame:GetElement("container.dragBox.footer.vline")
		local postage = context.frame:GetElement("container.dragBox.footer.postage")
		local send = context.frame:GetElement("container.check.sendCheck")
		local cod = context.frame:GetElement("container.checkbox.cod")

		local size = private.query:Count()
		if size > 0 then
			postage:SetText(L["Total Postage"]..": "..Money.ToString(30 * size))
				:Draw()
			items:SetText(format(L["%s Items Selected"], Theme.GetColor("FEEDBACK_GREEN"):ColorText(size.."/"..ATTACHMENTS_MAX_SEND)))
				:Show()
				:Draw()
			line:Show()
			cod:SetDisabled(false)
				:Draw()
		else
			postage:SetText(L["Total Postage"]..": "..Money.ToString(30))
				:Draw()
			items:Hide()
			line:Hide()
			cod:SetDisabled(true)
				:Draw()
			send:SetChecked(true)
				:SetDisabled(false)
				:Draw()
		end
	end

	local function UpdateButton(context)
		context.frame:GetElement("footer.sendMail")
			:SetText(context.sending and L["Sending..."] or L["Send Mail"])
			:SetPressed(context.sending)
			:Draw()
	end

	local function UpdateSendMailInfo(context)
		if private.query:Count() >= 12 then
			UIErrorsFrame:AddMessage(ERR_MAIL_INVALID_ATTACHMENT_SLOT, 1.0, 0.1, 0.1, 1.0)
		else
			for i = 1, ATTACHMENTS_MAX_SEND do
				local itemName, _, _, stackCount = GetSendMailItem(i)
				if itemName and stackCount then
					local itemLink = GetSendMailItemLink(i)
					local itemString = ItemString.Get(itemLink)

					private.DatabaseNewRow(itemString, stackCount)

					break
				end
			end
		end

		ClearSendMail()
	end

	local function ClearMail(context, keepInfo, redraw)
		if not keepInfo then
			private.recipient = ""
		end
		private.subject = ""
		private.body = ""
		private.money = 0
		private.isMoney = true
		private.isCOD = false

		private.db:Truncate()

		if redraw and context.frame then
			context.frame:GetElement("container.name.input")
				:SetValue(private.recipient)
				:Draw()
			context.frame:GetElement("container.checkbox.moneyInput")
				:SetValue(Money.ToString(private.money))
				:Draw()
			if not keepInfo then
				context.frame:GetElement("footer.sendMail")
					:SetDisabled(true)
					:Draw()
			end
		end

		UpdateFrame(context)
	end

	private.fsm = FSM.New("MAILING_SEND")
		:AddState(FSM.NewState("ST_HIDDEN")
			:SetOnEnter(function(context)
				TSM.Mailing.Send.KillThread()
				SetSendMailShowing(false)
				context.frame = nil
			end)
			:AddTransition("ST_SHOWN")
			:AddTransition("ST_HIDDEN")
			:AddEventTransition("EV_FRAME_SHOW", "ST_SHOWN")
		)
		:AddState(FSM.NewState("ST_SHOWN")
			:SetOnEnter(function(context, frame)
				if not context.frame then
					context.frame = frame
					UpdateFrame(context)
					private.mailShowingTimer:RunForFrames(2)
				end
				UpdateButton(context)
			end)
			:AddTransition("ST_HIDDEN")
			:AddTransition("ST_SENDING_START")
			:AddEvent("EV_DIALOG_HIDDEN", function(context)
				UpdateFrame(context)
			end)
			:AddEvent("EV_MAIL_INFO_UPDATE", function(context)
				UpdateSendMailInfo(context)
				UpdateFrame(context)
			end)
			:AddEvent("EV_MAIL_DATA_UPDATED", function(context)
				UpdateFrame(context)
			end)
			:AddEvent("EV_MAIL_CLEAR", function(context, redraw)
				ClearMail(context, IsShiftKeyDown(), redraw)
			end)
			:AddEventTransition("EV_BUTTON_CLICKED", "ST_SENDING_START")
		)
		:AddState(FSM.NewState("ST_SENDING_START")
			:SetOnEnter(function(context, keepInfo, recipient, subject, body, money, items)
				context.sending = true
				context.keepInfo = keepInfo
				private.db:SetQueryUpdatesPaused(true)
				TSM.Mailing.Send.StartSending(private.FSMSendCallback, recipient, subject, body, money, items)
				UpdateButton(context)
			end)
			:SetOnExit(function(context)
				context.sending = false
				private.db:SetQueryUpdatesPaused(false)
				ClearMail(context, context.keepInfo, true)
				UpdateFrame(context)
			end)
			:AddTransition("ST_SHOWN")
			:AddTransition("ST_HIDDEN")
			:AddEventTransition("EV_SENDING_DONE", "ST_SHOWN")
		)
		:AddDefaultEvent("EV_FRAME_HIDE", function(context)
			context.frame = nil
			return "ST_HIDDEN"
		end)
		:Init("ST_HIDDEN", fsmContext)
end

function private.FSMSendCallback()
	private.fsm:ProcessEvent("EV_SENDING_DONE")
end
