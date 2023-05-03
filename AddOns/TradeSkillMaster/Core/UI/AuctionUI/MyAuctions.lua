-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local MyAuctions = TSM.UI.AuctionUI:NewPackage("MyAuctions")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local FSM = TSM.Include("Util.FSM")
local Money = TSM.Include("Util.Money")
local String = TSM.Include("Util.String")
local Math = TSM.Include("Util.Math")
local TempTable = TSM.Include("Util.TempTable")
local ItemString = TSM.Include("Util.ItemString")
local Theme = TSM.Include("Util.Theme")
local ItemInfo = TSM.Include("Service.ItemInfo")
local Settings = TSM.Include("Service.Settings")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	fsm = nil,
	frame = nil,
	query = nil,
}
local DURATION_LIST = {
	L["None"],
	AUCTION_TIME_LEFT1_DETAIL,
	AUCTION_TIME_LEFT2_DETAIL,
	AUCTION_TIME_LEFT3_DETAIL,
	AUCTION_TIME_LEFT4_DETAIL,
}
local SECONDS_PER_MIN = 60
local SECONDS_PER_HOUR = 60 * SECONDS_PER_MIN



-- ============================================================================
-- Module Functions
-- ============================================================================

function MyAuctions.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "auctionUIContext", "myAuctionsScrollingTable")
	private.FSMCreate()
	TSM.UI.AuctionUI.RegisterTopLevelPage(L["My Auctions"], private.GetMyAuctionsFrame, private.OnItemLinked)
end



-- ============================================================================
-- MyAuctions UI
-- ============================================================================

function private.GetMyAuctionsFrame()
	UIUtils.AnalyticsRecordPathChange("auction", "my_auctions")
	private.query = private.query or TSM.MyAuctions.CreateQuery()
	local frame = UIElements.New("Frame", "myAuctions")
		:SetLayout("VERTICAL")
		:SetBackgroundColor("PRIMARY_BG_ALT")
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("VERTICAL")
			:SetHeight(72)
			:SetPadding(8)
			:AddChild(UIElements.New("Frame", "filters")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, 0, 8)
				:AddChild(UIElements.New("SelectionDropdown", "duration")
					:SetWidth(232)
					:SetItems(DURATION_LIST)
					:SetHintText(L["Filter by duration"])
					:SetScript("OnSelectionChanged", private.DurationFilterChanged)
				)
				:AddChild(UIElements.New("GroupSelector", "group")
					:SetWidth(232)
					:SetMargin(8, 8, 0, 0)
					:SetHintText(L["Filter by groups"])
					:SetScript("OnSelectionChanged", private.FilterChanged)
				)
				:AddChild(UIElements.New("Input", "keyword")
					:SetIconTexture("iconPack.18x18/Search")
					:AllowItemInsert(false)
					:SetClearButtonEnabled(true)
					:SetHintText(L["Filter by keyword"])
					:SetScript("OnValueChanged", private.FilterChanged)
				)
			)
			:AddChild(UIElements.New("Frame", "buttons")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:AddChild(UIElements.New("Checkbox", "ignoreBid")
					:SetWidth("AUTO")
					:SetText(L["Hide auctions with bids"])
					:SetScript("OnValueChanged", private.ToggleFilterChanged)
				)
				:AddChild(UIElements.New("Checkbox", "onlyBid")
					:SetMargin(16, 0, 0, 0)
					:SetWidth("AUTO")
					:SetText(L["Show only auctions with bids"])
					:SetScript("OnValueChanged", private.ToggleFilterChanged)
				)
				:AddChild(UIElements.New("Checkbox", "onlySold")
					:SetMargin(16, 0, 0, 0)
					:SetWidth("AUTO")
					:SetText(L["Only show sold auctions"])
					:SetScript("OnValueChanged", private.ToggleFilterChanged)
				)
				:AddChild(UIElements.New("Spacer"))
				:AddChild(UIElements.New("ActionButton", "clearfilter")
					:SetSize(142, 24)
					:SetText(L["Clear Filters"])
					:SetScript("OnClick", private.ClearFilterOnClick)
				)
			)
		)
	if Environment.IsRetail() then
		frame:AddChild(UIElements.New("MyAuctionsScrollingTable", "auctions")
			:SetSettingsContext(private.settings, "myAuctionsScrollingTable")
			:GetScrollingTableInfo()
				:NewColumn("item")
					:SetTitle(L["Item Name"])
					:SetIconSize(12)
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo(nil, private.AuctionsGetItemText)
					:SetIconInfo("itemString", ItemInfo.GetTexture)
					:SetTooltipInfo("itemString", private.AuctionsGetItemTooltip)
					:SetActionIconInfo(1, 12, private.AuctionsGetSoldIcon)
					:SetSortInfo("itemName")
					:DisableHiding()
					:Commit()
				:NewColumn("stackSize")
					:SetTitle(L["Qty"])
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("RIGHT")
					:SetTextInfo(nil, private.AuctionsGetStackSizeText)
					:SetSortInfo("stackSize")
					:Commit()
				:NewColumn("timeLeft")
					:SetTitleIcon("iconPack.14x14/Clock")
					:SetFont("BODY_BODY3")
					:SetJustifyH("CENTER")
					:SetTextInfo(nil, private.AuctionsGetTimeLeftText)
					:SetSortInfo("duration")
					:Commit()
				:NewColumn("group")
					:SetTitle(GROUP)
					:SetFont("BODY_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo(nil, private.AuctionsGetGroupNameText)
					:SetSortInfo("group")
					:Commit()
				:NewColumn("currentBid")
					:SetTitle(BID)
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("RIGHT")
					:SetTextInfo(nil, private.AuctionsGetCurrentBidText)
					:SetSortInfo("currentBid")
					:Commit()
				:NewColumn("buyout")
					:SetTitle(BUYOUT)
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("RIGHT")
					:SetTextInfo(nil, private.AuctionsGetCurrentBuyoutText)
					:SetSortInfo("buyout")
					:Commit()
				:Commit()
			:SetQuery(private.query)
			:SetSelectionValidator(private.AuctionsValidateSelection)
			:SetScript("OnSelectionChanged", private.AuctionsOnSelectionChanged)
			:SetScript("OnDataUpdated", private.AuctionsOnDataUpdated)
		)
	else
		frame:AddChild(UIElements.New("MyAuctionsScrollingTable", "auctions")
			:SetSettingsContext(private.settings, "myAuctionsScrollingTable")
			:GetScrollingTableInfo()
				:NewColumn("item")
					:SetTitle(L["Item Name"])
					:SetIconSize(12)
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo(nil, private.AuctionsGetItemText)
					:SetIconInfo("itemString", ItemInfo.GetTexture)
					:SetTooltipInfo("itemString", private.AuctionsGetItemTooltip)
					:SetActionIconInfo(1, 12, private.AuctionsGetSoldIcon)
					:DisableHiding()
					:Commit()
				:NewColumn("stackSize")
					:SetTitle(L["Qty"])
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("RIGHT")
					:SetTextInfo(nil, private.AuctionsGetStackSizeText)
					:Commit()
				:NewColumn("timeLeft")
					:SetTitleIcon("iconPack.14x14/Clock")
					:SetFont("BODY_BODY3")
					:SetJustifyH("CENTER")
					:SetTextInfo(nil, private.AuctionsGetTimeLeftText)
					:Commit()
				:NewColumn("highbidder")
					:SetTitle(L["High Bidder"])
					:SetFont("BODY_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo(nil, private.AuctionsGetHighBidderText)
					:Commit()
				:NewColumn("group")
					:SetTitle(GROUP)
					:SetFont("BODY_BODY3")
					:SetJustifyH("LEFT")
					:SetTextInfo(nil, private.AuctionsGetGroupNameText)
					:Commit()
				:NewColumn("currentBid")
					:SetTitle(BID)
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("RIGHT")
					:SetTextInfo(nil, private.AuctionsGetCurrentBidText)
					:Commit()
				:NewColumn("buyout")
					:SetTitle(BUYOUT)
					:SetFont("TABLE_TABLE1")
					:SetJustifyH("RIGHT")
					:SetTextInfo(nil, private.AuctionsGetCurrentBuyoutText)
					:Commit()
				:Commit()
			:SetQuery(private.query)
			:SetSelectionValidator(private.AuctionsValidateSelection)
			:SetScript("OnSelectionChanged", private.AuctionsOnSelectionChanged)
			:SetScript("OnDataUpdated", private.AuctionsOnDataUpdated)
		)
	end
	frame:AddChild(UIElements.New("HorizontalLine", "line"))
		:AddChild(UIElements.New("Frame", "bottom")
			:SetLayout("VERTICAL")
			:SetHeight(68)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("Frame", "row1")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 8)
				:AddChild(UIElements.New("Text", "sold")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY3_MEDIUM")
				)
				:AddChild(UIElements.New("Text", "soldValue")
					:SetWidth("AUTO")
					:SetFont("TABLE_TABLE1")
				)
				:AddChild(UIElements.New("Texture", "vline")
					:SetWidth(1)
					:SetMargin(8, 8, 0, 0)
					:SetColor("ACTIVE_BG_ALT")
				)
				:AddChild(UIElements.New("Text", "posted")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY3_MEDIUM")
				)
				:AddChild(UIElements.New("Text", "postedValue")
					:SetWidth("AUTO")
					:SetFont("TABLE_TABLE1")
				)
				:AddChild(UIElements.New("Spacer", "spacer"))
			)
			:AddChild(UIElements.New("Frame", "row2")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:AddChild(UIElements.New("ProgressBar", "progressBar")
					:SetMargin(0, 8, 0, 0)
					:SetProgress(0)
				)
				:AddChild(UIElements.NewNamed("ActionButton", "cancelBtn", "TSMCancelAuctionBtn")
					:SetSize(110, 24)
					:SetMargin(0, 8, 0, 0)
					:SetText(CANCEL)
					:SetDisabled(true)
					:DisableClickCooldown(true)
					:SetScript("OnClick", private.CancelButtonOnClick)
				)
				:AddChild(UIElements.New("ActionButton", "skipBtn")
					:SetSize(110, 24)
					:SetText(L["Skip"])
					:SetDisabled(true)
					:DisableClickCooldown(true)
					:SetScript("OnClick", private.SkipButtonOnClick)
				)
			)
		)
		:SetScript("OnUpdate", private.FrameOnUpdate)
		:SetScript("OnHide", private.FrameOnHide)
	private.frame = frame
	return frame
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.OnItemLinked(name)
	private.frame:GetElement("header.filters.keyword")
		:SetValue(name)
		:Draw()
	private.FilterChanged()
	return true
end

function private.FrameOnUpdate(frame)
	frame:SetScript("OnUpdate", nil)
	private.fsm:ProcessEvent("EV_FRAME_SHOWN", frame)
end

function private.FrameOnHide(frame)
	assert(frame == private.frame)
	private.frame = nil
	private.fsm:ProcessEvent("EV_FRAME_HIDDEN")
end

function private.ToggleFilterChanged(toggle)
	local ignoreBidToggle = toggle:GetElement("__parent.ignoreBid")
	local onlyBidToggle = toggle:GetElement("__parent.onlyBid")
	local onlySoldToggle = toggle:GetElement("__parent.onlySold")
	if ignoreBidToggle:IsChecked() and onlyBidToggle:IsChecked() then
		-- uncheck the other toggle in the pair of "bid" toggles
		if toggle == ignoreBidToggle then
			onlyBidToggle:SetChecked(false, true)
				:Draw()
		else
			ignoreBidToggle:SetChecked(false, true)
				:Draw()
		end
	end
	if onlyBidToggle:IsChecked() and onlySoldToggle:IsChecked() then
		-- uncheck the other toggle in the pair of "only" toggles
		if toggle == onlyBidToggle then
			onlySoldToggle:SetChecked(false, true)
				:Draw()
		else
			onlyBidToggle:SetChecked(false, true)
				:Draw()
		end
	end
	private.FilterChanged()
end

function private.DurationFilterChanged(dropdown)
	if dropdown:GetSelectedItemKey() == 1 then
		-- none
		dropdown:SetSelectedItem(nil, true)
	end
	private.FilterChanged()
end

function private.FilterChanged()
	private.fsm:ProcessEvent("EV_FILTER_UPDATED")
end

function private.ClearFilterOnClick(button)
	button:GetElement("__parent.__parent.filters.duration")
		:SetOpen(false)
		:SetSelectedItem()
	button:GetElement("__parent.__parent.filters.group")
		:ClearSelectedGroups()
	button:GetElement("__parent.__parent.filters.keyword")
		:SetValue("")
		:SetFocused(false)
	button:GetElement("__parent.ignoreBid")
		:SetChecked(false, true)
	button:GetElement("__parent.onlyBid")
		:SetChecked(false, true)
	button:GetElement("__parent.onlySold")
		:SetChecked(false, true)
	button:GetParentElement():GetParentElement():Draw()
	private.fsm:ProcessEvent("EV_FILTER_UPDATED")
end

function private.AuctionsValidateSelection(_, row)
	return row:GetField("saleStatus") == 0
end

function private.AuctionsOnSelectionChanged()
	private.fsm:ProcessEvent("EV_SELECTION_CHANGED")
end

function private.AuctionsOnDataUpdated()
	if not private.frame then
		return
	end

	private.fsm:SetLoggingEnabled(false)
	private.fsm:ProcessEvent("EV_DATA_UPDATED")
	private.fsm:SetLoggingEnabled(true)
end

function private.CancelButtonOnClick(button)
	private.fsm:ProcessEvent("EV_CANCEL_CLICKED")
end

function private.SkipButtonOnClick(button)
	private.fsm:ProcessEvent("EV_SKIP_CLICKED")
end



-- ============================================================================
-- FSM
-- ============================================================================

function private.FSMCreate()
	local fsmContext = {
		frame = nil,
		durationFilter = nil,
		keywordFilter = nil,
		groupFilter = {},
		bidFilter = nil,
		soldFilter = false,
		filterChanged = false,
	}
	local function UpdateFrame(context)
		if not context.frame then
			return
		end

		local auctions = context.frame:GetElement("auctions")
		if context.filterChanged then
			context.filterChanged = false
			private.query:ResetFilters()
			if context.durationFilter then
				if Environment.IsRetail() then
					if context.durationFilter == 1 then
						private.query:LessThan("duration", time() + (30 * SECONDS_PER_MIN))
					elseif context.durationFilter == 2 then
						private.query:LessThan("duration", time() + (2 * SECONDS_PER_HOUR))
					elseif context.durationFilter == 3 then
						private.query:LessThanOrEqual("duration", time() + (12 * SECONDS_PER_HOUR))
					else
						private.query:GreaterThan("duration", time() + (12 * SECONDS_PER_HOUR))
					end
				else
					private.query:Equal("duration", context.durationFilter)
				end
			end
			if context.keywordFilter then
				private.query:Matches("itemName", context.keywordFilter)
			end
			if next(context.groupFilter) then
				private.query:InTable("group", context.groupFilter)
			end
			if context.bidFilter ~= nil then
				if context.bidFilter then
					private.query:NotEqual("highBidder", "")
				else
					private.query:Equal("highBidder", "")
				end
			end
			if context.soldFilter then
				private.query:Equal("saleStatus", 1)
			end
			auctions:SetQuery(private.query, true)
		end
		local selectedRow = auctions:GetSelection()
		local hasFilter = context.durationFilter or context.keywordFilter or next(context.groupFilter) or context.bidFilter ~= nil or context.soldFilter
		context.frame:GetElement("header.buttons.clearfilter")
			:SetDisabled(not hasFilter)
			:Draw()

		local numPending = TSM.MyAuctions.GetNumPending()
		local progressText = nil
		if numPending > 0 then
			progressText = format(L["Canceling %d Auctions..."], numPending)
		elseif selectedRow then
			progressText = L["Ready to Cancel"]
		else
			progressText = L["Select Auction to Cancel"]
		end
		local row2 = context.frame:GetElement("bottom.row2")
		row2:GetElement("cancelBtn")
			:SetDisabled(not selectedRow or (Environment.IsRetail() and numPending > 0) or (Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) and C_AuctionHouse.GetCancelCost(selectedRow:GetField("auctionId")) > GetMoney()))
		row2:GetElement("skipBtn")
			:SetDisabled(not selectedRow)
		row2:GetElement("progressBar")
			:SetProgressIconHidden(numPending == 0)
			:SetText(progressText)
		row2:Draw()
		local numPosted, numSold, postedGold, soldGold = 0, 0, 0, 0
		for _, row in private.query:Iterator() do
			local itemString, saleStatus, buyout, currentBid, stackSize = row:GetFields("itemString", "saleStatus", "buyout", "currentBid", "stackSize")
			if saleStatus == 1 then
				numSold = numSold + 1
				-- if somebody did a buyout, then bid will be equal to buyout, otherwise it'll be the winning bid
				soldGold = soldGold + currentBid
			else
				numPosted = numPosted + 1
				if ItemInfo.IsCommodity(itemString) then
					postedGold = postedGold + (buyout * stackSize)
				else
					postedGold = postedGold + buyout
				end
			end
		end
		local row1 = context.frame:GetElement("bottom.row1")
		row1:GetElement("sold")
			:SetFormattedText((hasFilter and L["%s Sold Auctions (Filtered)"] or L["%s Sold Auctions"])..":", Theme.GetColor("INDICATOR"):ColorText(numSold))
		row1:GetElement("soldValue")
			:SetText(Money.ToString(soldGold, nil, "OPT_RETAIL_ROUND"))
		row1:GetElement("posted")
			:SetFormattedText((hasFilter and L["%s Posted Auctions (Filtered)"] or L["%s Posted Auctions"])..":", Theme.GetColor("INDICATOR_ALT"):ColorText(numPosted))
		row1:GetElement("postedValue")
			:SetText(Money.ToString(postedGold, nil, "OPT_RETAIL_ROUND"))
		row1:Draw()
	end
	private.fsm = FSM.New("MY_AUCTIONS")
		:AddState(FSM.NewState("ST_HIDDEN")
			:SetOnEnter(function(context)
				context.frame = nil
				context.durationFilter = nil
				context.keywordFilter = nil
				wipe(context.groupFilter)
				context.bidFilter = nil
				context.soldFilter = false
			end)
			:AddTransition("ST_HIDDEN")
			:AddTransition("ST_SHOWNING")
			:AddEventTransition("EV_FRAME_SHOWN", "ST_SHOWNING")
		)
		:AddState(FSM.NewState("ST_SHOWNING")
			:SetOnEnter(function(context, frame)
				context.frame = frame
				context.filterChanged = true
				return "ST_SHOWN"
			end)
			:AddTransition("ST_SHOWN")
		)
		:AddState(FSM.NewState("ST_SHOWN")
			:SetOnEnter(function(context)
				UpdateFrame(context)
			end)
			:AddTransition("ST_HIDDEN")
			:AddTransition("ST_SHOWN")
			:AddTransition("ST_CANCELING")
			:AddEventTransition("EV_CANCEL_CLICKED", "ST_CANCELING")
			:AddEventTransition("EV_SELECTION_CHANGED", "ST_SHOWN")
			:AddEventTransition("EV_DATA_UPDATED", "ST_SHOWN")
			:AddEvent("EV_SKIP_CLICKED", function(context)
				context.frame:GetElement("auctions"):SelectNextRow()
				return "ST_SHOWN"
			end)
			:AddEvent("EV_FILTER_UPDATED", function(context)
				local didChange = false
				local durationFilter = context.frame:GetElement("header.filters.duration"):GetSelectedItemKey()
				durationFilter = durationFilter and (durationFilter - 1) or nil
				if durationFilter ~= context.durationFilter then
					context.durationFilter = durationFilter
					didChange = true
				end
				local keywordFilter = context.frame:GetElement("header.filters.keyword"):GetValue()
				keywordFilter = keywordFilter ~= "" and String.Escape(keywordFilter) or nil
				if keywordFilter ~= context.keywordFilter then
					context.keywordFilter = keywordFilter
					didChange = true
				end
				local newGroupFilter = TempTable.Acquire()
				for groupPath in context.frame:GetElement("header.filters.group"):SelectedGroupIterator() do
					newGroupFilter[groupPath] = true
				end
				if Math.CalculateHash(newGroupFilter) ~= Math.CalculateHash(context.groupFilter) then
					didChange = true
					wipe(context.groupFilter)
					for groupPath in pairs(newGroupFilter) do
						context.groupFilter[groupPath] = true
					end
				end
				TempTable.Release(newGroupFilter)
				local bidFilter = nil
				if context.frame:GetElement("header.buttons.ignoreBid"):IsChecked() then
					bidFilter = false
				elseif context.frame:GetElement("header.buttons.onlyBid"):IsChecked() then
					bidFilter = true
				end
				if bidFilter ~= context.bidFilter then
					context.bidFilter = bidFilter
					didChange = true
				end
				local soldFilter = context.frame:GetElement("header.buttons.onlySold"):IsChecked()
				if soldFilter ~= context.soldFilter then
					context.soldFilter = soldFilter
					didChange = true
				end
				if didChange then
					context.filterChanged = true
					return "ST_SHOWN"
				end
			end)
		)
		:AddState(FSM.NewState("ST_CANCELING")
			:SetOnEnter(function(context)
				local buttonsFrame = context.frame:GetElement("bottom")
				buttonsFrame:GetElement("row2.cancelBtn"):SetDisabled(true)
				buttonsFrame:GetElement("row2.skipBtn"):SetDisabled(true)
				buttonsFrame:Draw()
				local auctionId = context.frame:GetElement("auctions"):GetSelection():GetField("auctionId")
				if TSM.MyAuctions.CanCancel(auctionId) then
					TSM.MyAuctions.CancelAuction(auctionId)
				end
				return "ST_SHOWN"
			end)
			:AddTransition("ST_HIDDEN")
			:AddTransition("ST_SHOWN")
		)
		:AddDefaultEventTransition("EV_FRAME_HIDDEN", "ST_HIDDEN")
		:Init("ST_HIDDEN", fsmContext)
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.AuctionsGetItemText(row)
	if row:GetField("saleStatus") == 1 then
		return Theme.GetColor("INDICATOR"):ColorText(row:GetField("itemName"))
	else
		return UIUtils.GetQualityColoredText(row:GetField("itemName"), row:GetField("itemQuality"))
	end
end

function private.AuctionsGetItemTooltip(itemString)
	return itemString ~= ItemString.GetPetCage() and itemString or nil
end

function private.AuctionsGetSoldIcon(self, data, iconIndex)
	assert(iconIndex == 1)
	local row = private.query:GetResultRowByUUID(data)
	if row:GetField("saleStatus") ~= 1 then
		return
	end
	return true, "iconPack.12x12/Bid", true
end

function private.AuctionsGetStackSizeText(row)
	if row:GetField("saleStatus") == 1 then
		return Theme.GetColor("INDICATOR"):ColorText(row:GetField("stackSize"))
	else
		return row:GetField("stackSize")
	end
end

function private.AuctionsGetTimeLeftText(row)
	local saleStatus, duration, isPending = row:GetFields("saleStatus", "duration", "isPending")
	if saleStatus == 0 and isPending then
		return "..."
	elseif saleStatus == 1 or Environment.IsRetail() then
		local timeLeft = duration - time()
		local color = nil
		if saleStatus == 0 then
			if timeLeft <= 2 * SECONDS_PER_HOUR then
				color = Theme.GetColor("FEEDBACK_RED")
			elseif timeLeft <= (Environment.IsRetail() and 24 or 8) * SECONDS_PER_HOUR then
				color = Theme.GetColor("FEEDBACK_YELLOW")
			else
				color = Theme.GetColor("FEEDBACK_GREEN")
			end
		else
			color = Theme.GetColor("INDICATOR")
		end
		local str = nil
		if timeLeft < SECONDS_PER_MIN then
			str = timeLeft.."s"
		elseif timeLeft < SECONDS_PER_HOUR then
			str = floor(timeLeft / SECONDS_PER_MIN).."m"
		else
			str = floor(timeLeft / SECONDS_PER_HOUR).."h"
		end
		return color and color:ColorText(str) or str
	else
		return UIUtils.GetTimeLeftString(duration)
	end
end

function private.AuctionsGetHighBidderText(row)
	if row:GetField("saleStatus") == 1 then
		return Theme.GetColor("INDICATOR"):ColorText(row:GetField("highBidder"))
	else
		return row:GetField("highBidder")
	end
end

function private.AuctionsGetGroupNameText(row)
	local groupPath = row:GetField("group")
	local groupName = TSM.Groups.Path.GetName(groupPath)
	local level = select('#', strsplit(TSM.CONST.GROUP_SEP, groupPath))
	return Theme.GetGroupColor(level):ColorText(groupName)
end

function private.AuctionsGetCurrentBidText(row)
	if row:GetField("saleStatus") == 1 then
		return Theme.GetColor("INDICATOR"):ColorText(L["Sold for:"])
	elseif Environment.IsRetail() and row:GetField("highBidder") ~= "" then
		return Money.ToString(row:GetField("currentBid"), Theme.GetColor("INDICATOR"):GetTextColorPrefix(), "OPT_RETAIL_ROUND")
	else
		return Money.ToString(row:GetField("currentBid"), nil, "OPT_RETAIL_ROUND")
	end
end

function private.AuctionsGetCurrentBuyoutText(row)
	return Money.ToString(row:GetField(row:GetField("saleStatus") == 1 and "currentBid" or "buyout"), nil, "OPT_RETAIL_ROUND")
end
