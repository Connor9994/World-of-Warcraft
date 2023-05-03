-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Sniper = TSM.UI.AuctionUI:NewPackage("Sniper")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Delay = TSM.Include("Util.Delay")
local Event = TSM.Include("Util.Event")
local FSM = TSM.Include("Util.FSM")
local Sound = TSM.Include("Util.Sound")
local Money = TSM.Include("Util.Money")
local Log = TSM.Include("Util.Log")
local ItemString = TSM.Include("Util.ItemString")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local DefaultUI = TSM.Include("Service.DefaultUI")
local ItemInfo = TSM.Include("Service.ItemInfo")
local AuctionScan = TSM.Include("Service.AuctionScan")
local MailTracking = TSM.Include("Service.MailTracking")
local Settings = TSM.Include("Service.Settings")
local AuctionHouseWrapper = TSM.Include("Service.AuctionHouseWrapper")
local PlayerInfo = TSM.Include("Service.PlayerInfo")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	hasBidSnipping = nil,
	settings = nil,
	fsm = nil,
	selectionFrame = nil,
	hasLastScan = nil,
	contentPath = "selection",
	phaseTimer = nil,
	rescanTimer = nil,
}
local PHASED_TIME = 60
local RETAIL_RESCAN_DELAY = 30



-- ============================================================================
-- Module Functions
-- ============================================================================

function Sniper.OnInitialize()
	private.hasBidSnipping = not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE)
	private.settings = Settings.NewView()
		:AddKey("global", "auctionUIContext", "sniperScrollingTable")
		:AddKey("global", "sniperOptions", "sniperSound")
	private.phaseTimer = Delay.CreateTimer("SNIPER_PHASE", private.FSMPhasedCallback)
	private.rescanTimer = Delay.CreateTimer("SNIPER_RESCAN", private.FSMRescanDelayed)
	TSM.UI.AuctionUI.RegisterTopLevelPage(L["Sniper"], private.GetSniperFrame, private.OnItemLinked)
	private.FSMCreate()
end



-- ============================================================================
-- Sniper UI
-- ============================================================================

function private.GetSniperFrame()
	UIUtils.AnalyticsRecordPathChange("auction", "sniper")
	if not private.hasLastScan then
		private.contentPath = "selection"
	end
	return UIElements.New("ViewContainer", "sniper")
		:SetNavCallback(private.GetSniperContentFrame)
		:AddPath("selection")
		:AddPath("scan")
		:SetPath(private.contentPath)
end

function private.GetSniperContentFrame(viewContainer, path)
	private.contentPath = path
	if path == "selection" then
		return private.GetSelectionFrame()
	elseif path == "scan" then
		return private.GetScanFrame()
	else
		error("Unexpected path: "..tostring(path))
	end
end

function private.GetSelectionFrame()
	UIUtils.AnalyticsRecordPathChange("auction", "sniper", "selection")
	local frame = UIElements.New("Frame", "selection")
		:SetLayout("VERTICAL")
		:SetBackgroundColor("PRIMARY_BG_ALT")
		:AddChildIf(private.hasBidSnipping, UIElements.New("Text", "text")
			:SetHeight(20)
			:SetMargin(8, 8, 12, 0)
			:SetFont("BODY_BODY2_MEDIUM")
			:SetJustifyH("CENTER")
			:SetText(L["Start either a 'Buyout' or 'Bid' sniper using the buttons above."])
		)
		:AddChild(UIElements.New("Frame", "buttons")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(8, 8, 12, 12)
			:AddChild(UIElements.New("ActionButton", "buyoutScanBtn")
				:SetMargin(0, private.hasBidSnipping and 8 or 0, 0, 0)
				:SetText(L["Run Buyout Sniper"])
				:SetScript("OnClick", private.BuyoutScanButtonOnClick)
			)
			:AddChildIf(private.hasBidSnipping, UIElements.New("ActionButton", "bidScanBtn")
				:SetText(L["Run Bid Sniper"])
				:SetScript("OnClick", private.BidScanButtonOnClick)
			)
		)
		:AddChild(UIElements.New("SniperScrollingTable", "auctions")
			:SetSettingsContext(private.settings, "sniperScrollingTable")
		)
		:SetScript("OnHide", private.SelectionFrameOnHide)
	private.selectionFrame = frame
	return frame
end

function private.GetScanFrame()
	UIUtils.AnalyticsRecordPathChange("auction", "sniper", "scan")
	return UIElements.New("Frame", "scan")
		:SetLayout("VERTICAL")
		:SetBackgroundColor("PRIMARY_BG_ALT")
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(48)
			:SetPadding(8, 8, 14, 14)
			:AddChild(UIElements.New("ActionButton", "backBtn")
				:SetSize(64, 24)
				:SetMargin(0, 16, 0, 0)
				:SetText(TextureAtlas.GetTextureLink(TextureAtlas.GetFlippedHorizontallyKey("iconPack.14x14/Chevron/Right"))..BACK)
				:SetScript("OnClick", private.BackButtonOnClick)
			)
			:AddChild(UIElements.New("Text", "title")
				:SetFont("BODY_BODY2_MEDIUM")
				:SetJustifyH("CENTER")
			)
			:AddChild(UIElements.New("ActionButton", "restartBtn")
				:SetSize(80, 24)
				:SetText(L["Restart"])
				:SetScript("OnClick", private.RestartButtonOnClick)
			)
		)
		:AddChild(UIElements.New("SniperScrollingTable", "auctions")
			:SetSettingsContext(private.settings, "sniperScrollingTable")
			:SetScript("OnSelectionChanged", private.AuctionsOnSelectionChanged)
			:SetScript("OnRowRemoved", private.AuctionsOnRowRemoved)
		)
		:AddChild(UIElements.New("HorizontalLine", "line"))
		:AddChild(UIElements.New("Frame", "bottom")
			:SetLayout("HORIZONTAL")
			:SetHeight(40)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("ActionButton", "pauseResumeBtn")
				:SetSize(24, 24)
				:SetMargin(0, 8, 0, 0)
				:SetText(TextureAtlas.GetTextureLink("iconPack.18x18/PlayPause"))
				:SetScript("OnClick", private.PauseResumeBtnOnClick)
			)
			:AddChild(UIElements.New("ProgressBar", "progressBar")
				:SetHeight(24)
				:SetMargin(0, 8, 0, 0)
				:SetProgress(0)
				:SetText(L["Starting Scan..."])
			)
			:AddChild(UIElements.NewNamed("ActionButton", "actionBtn", "TSMSniperBtn")
				:SetSize(165, 24)
				:SetText(BID)
				:SetDisabled(true)
				:DisableClickCooldown(true)
				:SetScript("OnClick", private.ActionButtonOnClick)
			)
		)
		:SetScript("OnUpdate", private.ScanFrameOnUpdate)
		:SetScript("OnHide", private.ScanFrameOnHide)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.OnItemLinked(name, itemLink)
	if private.selectionFrame then
		return false
	end
	private.fsm:ProcessEvent("EV_STOP_CLICKED")
	TSM.UI.AuctionUI.SetOpenPage(L["Browse"])
	TSM.UI.AuctionUI.Shopping.StartItemSearch(itemLink)
	return true
end

function private.SelectionFrameOnHide(frame)
	assert(frame == private.selectionFrame)
	private.selectionFrame = nil
end

function private.StartScanHelper(viewContainer, searchContext)
	if not TSM.UI.AuctionUI.StartingScan(L["Sniper"]) then
		return
	end
	viewContainer:SetPath("scan", true)
	private.fsm:ProcessEvent("EV_START_SCAN", searchContext)
end

function private.BuyoutScanButtonOnClick(button)
	local viewContainer = button:GetParentElement():GetParentElement():GetParentElement()
	local searchContext = TSM.Sniper.BuyoutSearch.GetSearchContext()
	private.StartScanHelper(viewContainer, searchContext)
end

function private.BidScanButtonOnClick(button)
	local viewContainer = button:GetParentElement():GetParentElement():GetParentElement()
	local searchContext = TSM.Sniper.BidSearch.GetSearchContext()
	private.StartScanHelper(viewContainer, searchContext)
end

function private.AuctionsOnSelectionChanged()
	private.fsm:ProcessEvent("EV_AUCTION_SELECTION_CHANGED")
end

function private.AuctionsOnRowRemoved(_, row)
	private.fsm:ProcessEvent("EV_AUCTION_ROW_REMOVED", row)
end

function private.BackButtonOnClick()
	private.fsm:ProcessEvent("EV_STOP_CLICKED")
end

function private.PauseResumeBtnOnClick(button)
	private.fsm:ProcessEvent("EV_PAUSE_RESUME_CLICKED")
end

function private.ActionButtonOnClick(button)
	private.fsm:ProcessEvent("EV_ACTION_CLICKED")
end

function private.RestartButtonOnClick(button)
	if not TSM.UI.AuctionUI.StartingScan(L["Sniper"]) then
		return
	end
	local lastScanType = private.hasLastScan
	local sniperFrame = button:GetParentElement():GetParentElement():GetParentElement()
	private.fsm:ProcessEvent("EV_STOP_CLICKED")
	if lastScanType == "bid" then
		sniperFrame:GetElement("selection.buttons.bidScanBtn"):Click()
	elseif lastScanType == "buyout" then
		sniperFrame:GetElement("selection.buttons.buyoutScanBtn"):Click()
	else
		error("Invalid last scan type: "..tostring(lastScanType))
	end
end

function private.ScanFrameOnUpdate(frame)
	frame:SetScript("OnUpdate", nil)
	private.fsm:ProcessEvent("EV_SCAN_FRAME_SHOWN", frame)
end

function private.ScanFrameOnHide(frame)
	private.fsm:ProcessEvent("EV_SCAN_FRAME_HIDDEN")
end



-- ============================================================================
-- FSM
-- ============================================================================

function private.FSMCreate()
	local fsmContext = {
		scanFrame = nil,
		auctionScan = nil,
		query = nil,
		progress = 0,
		progressText = L["Running Sniper Scan"],
		buttonsDisabled = true,
		findHash = nil,
		findAuction = nil,
		findResult = nil,
		numFound = 0,
		maxQuantity = 0,
		numActioned = 0,
		lastBuyQuantity = 0,
		numConfirmed = 0,
		searchContext = nil,
		scanPaused = false,
		scanDone = false,
	}
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		Event.Register("AUCTION_HOUSE_SHOW_NOTIFICATION", private.FSMMessageEventHandler)
		Event.Register("AUCTION_HOUSE_SHOW_FORMATTED_NOTIFICATION", private.FSMMessageEventHandler)
		Event.Register("AUCTION_HOUSE_SHOW_ERROR", private.FSMMessageErrorEventHandler)
		Event.Register("COMMODITY_PURCHASE_SUCCEEDED", private.FSMBuyoutSuccess)
	else
		Event.Register("CHAT_MSG_SYSTEM", private.FSMMessageEventHandler)
		Event.Register("UI_ERROR_MESSAGE", private.FSMMessageEventHandler)
	end
	DefaultUI.RegisterAuctionHouseVisibleCallback(function() private.fsm:ProcessEvent("EV_AUCTION_HOUSE_CLOSED") end, false)
	AuctionHouseWrapper.RegisterAuctionIdUpdateCallback(function(...)
		private.fsm:ProcessEvent("EV_AUCTION_ID_UPDATE", ...)
	end)
	local function UpdateScanFrame(context)
		if not context.scanFrame or not context.searchContext then
			return
		end
		local actionText = nil
		if context.searchContext:IsBuyoutScan() then
			actionText = BUYOUT
		elseif context.searchContext:IsBidScan() then
			actionText = BID
		else
			error("Invalid scan type")
		end
		local bottom = context.scanFrame:GetElement("bottom")
		bottom:GetElement("actionBtn")
			:SetText(actionText)
			:SetDisabled(context.buttonsDisabled)
		bottom:GetElement("progressBar")
			:SetProgress(context.progress)
			:SetText(context.progressText or "")
		local auctionList = context.scanFrame:GetElement("auctions")
			:SetContext(context.auctionScan)
			:SetAuctionScan(context.auctionScan)
			:SetMarketValueFunction(context.searchContext:GetMarketValueFunc())
		if context.findAuction and not auctionList:GetSelection() then
			auctionList:SetSelection(context.findAuction)
		end
		local title = context.scanFrame:GetElement("header.title")
		if context.scanPaused or auctionList:GetSelection() then
			if context.searchContext:IsBuyoutScan() then
				title:SetText(L["Buyout Sniper Paused"])
			elseif context.searchContext:IsBidScan() then
				title:SetText(L["Bid Sniper Paused"])
			else
				error("Invalid scan type")
			end
		else
			if context.searchContext:IsBuyoutScan() then
				title:SetText(L["Buyout Sniper Running"])
			elseif context.searchContext:IsBidScan() then
				title:SetText(L["Bid Sniper Running"])
			else
				error("Invalid scan type")
			end
		end
		context.scanFrame:Draw()
	end
	local function ScanOnFilterDone(self, filter, numNewResults)
		if numNewResults > 0 then
			Sound.PlaySound(private.settings.sniperSound)
		end
	end
	private.fsm = FSM.New("SNIPER")
		:AddState(FSM.NewState("ST_INIT")
			:SetOnEnter(function(context, searchContext)
				private.hasLastScan = nil
				if context.searchContext then
					context.searchContext:KillThread()
					context.searchContext = nil
				end
				context.progress = 0
				context.progressText = L["Running Sniper Scan"]
				context.scanPaused = false
				context.buttonsDisabled = true
				context.findHash = nil
				context.findAuction = nil
				context.findResult = nil
				context.numFound = 0
				context.numActioned = 0
				context.lastBuyQuantity = 0
				context.numConfirmed = 0
				if context.auctionScan then
					context.auctionScan:Release()
					context.auctionScan = nil
				end
				if searchContext then
					context.searchContext = searchContext
					return "ST_RUNNING_SCAN"
				elseif context.scanFrame then
					context.scanFrame:GetParentElement():SetPath("selection", true)
					context.scanFrame = nil
				end
				TSM.UI.AuctionUI.EndedScan(L["Sniper"])
			end)
			:AddTransition("ST_INIT")
			:AddTransition("ST_RUNNING_SCAN")
			:AddEventTransition("EV_START_SCAN", "ST_INIT")
		)
		:AddState(FSM.NewState("ST_RUNNING_SCAN")
			:SetOnEnter(function(context)
				context.scanDone = false
				if not context.searchContext then
					private.hasLastScan = nil
				elseif context.searchContext:IsBuyoutScan() then
					private.hasLastScan = "buyout"
				elseif context.searchContext:IsBidScan() then
					private.hasLastScan = "bid"
				else
					error("Invalid scan type")
				end
				if not context.auctionScan then
					context.auctionScan = AuctionScan.GetManager()
						:SetResolveSellers(false)
						:SetScript("OnQueryDone", ScanOnFilterDone)
				end
				if context.scanFrame then
					context.scanFrame:GetElement("bottom.progressBar"):SetProgressIconHidden(false)
				end
				UpdateScanFrame(context)
				context.searchContext:StartThread(private.FSMScanCallback, context.auctionScan)
				if not Environment.IsRetail() then
					private.phaseTimer:RunForTime(PHASED_TIME)
				end
			end)
			:SetOnExit(function(context)
				private.phaseTimer:Cancel()
			end)
			:AddTransition("ST_RESULTS")
			:AddTransition("ST_PAUSED_SCAN")
			:AddTransition("ST_FINDING_AUCTION")
			:AddTransition("ST_INIT")
			:AddEvent("EV_PAUSE_RESUME_CLICKED", function(context)
				context.scanPaused = true
				context.auctionScan:SetPaused(true)
				return "ST_PAUSED_SCAN"
			end)
			:AddEvent("EV_SCAN_COMPLETE", function(context)
				local selection = context.scanFrame and context.scanFrame:GetElement("auctions"):GetSelection()
				if selection and selection:IsSubRow() then
					return "ST_FINDING_AUCTION"
				else
					if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
						-- wait 30 seconds before rescanning to avoid spamming the server with API calls
						context.scanDone = true
						private.rescanTimer:RunForTime(RETAIL_RESCAN_DELAY)
					else
						return "ST_RESULTS"
					end
				end
			end)
			:AddEventTransition("EV_RESCAN_DELAYED", "ST_RESULTS")
			:AddEventTransition("EV_SCAN_FAILED", "ST_INIT")
			:AddEvent("EV_PHASED", function()
				Log.PrintUser(L["You've been phased which has caused the AH to stop working due to a bug on Blizzard's end. Please close and reopen the AH and restart Sniper."])
				return "ST_INIT"
			end)
			:AddEvent("EV_AUCTION_SELECTION_CHANGED", function(context)
				assert(context.scanFrame)
				if context.scanFrame:GetElement("auctions"):GetSelection() then
					if context.scanDone then
						return "ST_RESULTS"
					else
						-- the user selected something, so cancel the current scan
						context.scanPaused = true
						context.auctionScan:Cancel()
					end
				end
			end)
		)
		:AddState(FSM.NewState("ST_PAUSED_SCAN")
			:SetOnEnter(function(context)
				context.progressText = L["Scan Paused"]
				if context.scanFrame then
					context.scanFrame:GetElement("bottom.progressBar"):SetProgressIconHidden(true)
				end
				UpdateScanFrame(context)
			end)
			:SetOnExit(function(context)
				context.progressText = L["Running Sniper Scan"]
				if context.scanFrame then
					context.scanFrame:GetElement("bottom.progressBar"):SetProgressIconHidden(false)
				end
				UpdateScanFrame(context)
			end)
			:AddEvent("EV_AUCTION_SELECTION_CHANGED", function(context)
				assert(context.scanFrame)
				local selection = context.scanFrame and context.scanFrame:GetElement("auctions"):GetSelection()
				if selection and selection:IsSubRow() then
					return "ST_FINDING_AUCTION"
				else
					return "ST_RESULTS"
				end
			end)
			:AddEvent("EV_PAUSE_RESUME_CLICKED", function(context)
				context.scanPaused = false
				context.auctionScan:SetPaused(false)
				return "ST_RESULTS"
			end)
			:AddTransition("ST_FINDING_AUCTION")
			:AddTransition("ST_RESULTS")
			:AddTransition("ST_INIT")
		)
		:AddState(FSM.NewState("ST_RESULTS")
			:SetOnEnter(function(context)
				context.searchContext:KillThread()
				context.findAuction = nil
				context.findResult = nil
				context.numFound = 0
				context.numActioned = 0
				context.lastBuyQuantity = 0
				context.numConfirmed = 0
				context.progress = 0
				context.progressText = L["Running Sniper Scan"]
				context.buttonsDisabled = true
				UpdateScanFrame(context)
				local selection = context.scanFrame and context.scanFrame:GetElement("auctions"):GetSelection()
				if selection and selection:IsSubRow() then
					return "ST_FINDING_AUCTION"
				else
					return "ST_RUNNING_SCAN"
				end
			end)
			:AddTransition("ST_RUNNING_SCAN")
			:AddTransition("ST_AUCTION_FOUND")
			:AddTransition("ST_FINDING_AUCTION")
			:AddTransition("ST_INIT")
		)
		:AddState(FSM.NewState("ST_FINDING_AUCTION")
			:SetOnEnter(function(context)
				assert(context.scanFrame)
				context.findAuction = context.scanFrame:GetElement("auctions"):GetSelection()
				assert(context.findAuction:IsSubRow())
				context.findHash = context.findAuction:GetHashes()
				context.progress = 0
				context.progressText = L["Finding Selected Auction"]
				context.buttonsDisabled = true
				if context.scanFrame then
					context.scanFrame:GetElement("bottom.progressBar"):SetProgressIconHidden(false)
				end
				UpdateScanFrame(context)
				TSM.Shopping.SearchCommon.StartFindAuction(context.auctionScan, context.findAuction, private.FSMFindAuctionCallback, true)
			end)
			:SetOnExit(function(context)
				TSM.Shopping.SearchCommon.StopFindAuction()
			end)
			:AddTransition("ST_RESULTS")
			:AddTransition("ST_FINDING_AUCTION")
			:AddTransition("ST_AUCTION_FOUND")
			:AddTransition("ST_AUCTION_NOT_FOUND")
			:AddTransition("ST_INIT")
			:AddEventTransition("EV_AUCTION_FOUND", "ST_AUCTION_FOUND")
			:AddEventTransition("EV_AUCTION_NOT_FOUND", "ST_AUCTION_NOT_FOUND")
			:AddEvent("EV_AUCTION_SELECTION_CHANGED", function(context)
				assert(context.scanFrame)
				local selection = context.scanFrame and context.scanFrame:GetElement("auctions"):GetSelection()
				if selection and selection:IsSubRow() then
					return "ST_FINDING_AUCTION"
				else
					return "ST_RESULTS"
				end
			end)
			:AddEvent("EV_AUCTION_ROW_REMOVED", function(context, row)
				if not row:IsSubRow() then
					return
				end
				local removingFindAuction = context.findAuction == row
				row:GetResultRow():RemoveSubRow(row)
				context.scanFrame:GetElement("auctions"):UpdateData(true)
				if removingFindAuction then
					return "ST_RESULTS"
				end
			end)
			:AddEvent("EV_SCAN_FRAME_HIDDEN", function(context)
				context.scanFrame = nil
				context.findAuction = nil
				return "ST_RESULTS"
			end)
		)
		:AddState(FSM.NewState("ST_AUCTION_FOUND")
			:SetOnEnter(function(context, result)
				local selection = context.scanFrame:GetElement("auctions"):GetSelection()
				-- update the selection in case the result rows changed
				if context.findHash == selection:GetHashes() then
					context.findAuction = selection
				end
				if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
					local maxCommodity = context.findAuction:IsCommodity() and context.findAuction:GetResultRow():GetMaxQuantities()
					local numCanBuy = maxCommodity or result
					context.findResult = numCanBuy > 0
					context.numFound = numCanBuy
					context.maxQuantity = maxCommodity or 1
				else
					context.findResult = result
					context.numFound = #result
					context.maxQuantity = #result
				end
				assert(context.numActioned == 0 and context.numConfirmed == 0)
				return "ST_BIDDING_BUYING"
			end)
			:AddTransition("ST_BIDDING_BUYING")
		)
		:AddState(FSM.NewState("ST_AUCTION_NOT_FOUND")
			:SetOnEnter(function(context)
				local _, rawLink = context.findAuction:GetLinks()
				context.findAuction:GetResultRow():RemoveSubRow(context.findAuction)
				Log.PrintfUser(L["Failed to find auction for %s, so removing it from the results."], rawLink)
				return "ST_RESULTS"
			end)
			:AddTransition("ST_RESULTS")
		)
		:AddState(FSM.NewState("ST_BIDDING_BUYING")
			:SetOnEnter(function(context, numToRemove)
				if numToRemove then
					-- remove the one we just bought
					context.findAuction:DecrementQuantity(numToRemove)
					context.scanFrame:GetElement("auctions"):UpdateData()
					context.findAuction = context.scanFrame and context.scanFrame:GetElement("auctions"):GetSelection()
					if context.findAuction and not context.findAuction:IsSubRow() then
						context.findAuction = nil
					end
				end
				local selection = context.scanFrame and context.scanFrame:GetElement("auctions"):GetSelection()
				if selection and not selection:IsSubRow() then
					selection = nil
				end
				local isPlayer, isHighBidder = false, false
				if selection then
					assert(selection:IsSubRow())
					local ownerStr = selection and selection:GetOwnerInfo() or nil
					isPlayer = PlayerInfo.IsPlayer(ownerStr, true, true, true)
					isHighBidder = select(4, selection:GetBidInfo())
				end
				local auctionSelected = selection and context.findHash == selection:GetHashes()
				local numCanAction = not auctionSelected and 0 or (context.numFound - context.numActioned)
				local numConfirming = context.numActioned - context.numConfirmed
				local progressText = nil
				local actionFormatStr = nil
				if context.searchContext:IsBuyoutScan() then
					actionFormatStr = L["Buy %d / %d"]
				elseif context.searchContext:IsBidScan() then
					actionFormatStr = L["Bid %d / %d"]
				else
					error("Invalid scan type")
				end
				if numConfirming == 0 and numCanAction == 0 then
					-- we're done bidding/buying and confirming this batch
					return "ST_RESULTS"
				elseif numConfirming == 0 then
					-- we can still bid/buy more
					progressText = format(actionFormatStr, context.numActioned + 1, context.numFound)
				elseif numCanAction == 0 then
					-- we're just confirming
					progressText = format(L["Confirming %d / %d"], context.numConfirmed + 1, context.numFound)
				else
					-- we can bid/buy more while confirming
					progressText = format(actionFormatStr.." ("..L["Confirming %d / %d"]..")", context.numActioned + 1, context.numFound, context.numConfirmed + 1, context.numFound)
				end
				context.progress = context.numConfirmed / context.numFound
				context.progressText = L["Scan Paused"].." - "..progressText
				if numCanAction == 0 or isPlayer or numConfirming > 0 then
					context.buttonsDisabled = true
				else
					if context.searchContext:IsBuyoutScan() then
						context.buttonsDisabled = not AuctionScan.CanBuyout(selection, context.auctionScan)
					elseif context.searchContext:IsBidScan() then
						context.buttonsDisabled = not AuctionScan.CanBid(selection)
					else
						error("Invalid scan type")
					end
				end
				if context.scanFrame then
					context.scanFrame:GetElement("bottom.progressBar")
						:SetProgressIconHidden(context.numConfirmed == context.numActioned)
					context.scanFrame:GetElement("bottom.actionBtn")
						:SetDisabled(isPlayer or (isHighBidder and context.searchContext:IsBidScan()))
						:Draw()
				end
				UpdateScanFrame(context)
			end)
			:AddTransition("ST_BID_BUY_CONFIRMATION")
			:AddTransition("ST_BIDDING_BUYING")
			:AddTransition("ST_PLACING_BID_BUY")
			:AddTransition("ST_CONFIRMING_BID_BUY")
			:AddTransition("ST_RESULTS")
			:AddTransition("ST_INIT")
			:AddEvent("EV_PAUSE_RESUME_CLICKED", function(context)
				context.scanFrame:GetElement("auctions"):SetSelection(nil)
				context.scanPaused = false
				context.auctionScan:SetPaused(false)
				return "ST_RESULTS"
			end)
			:AddEventTransition("EV_AUCTION_SELECTION_CHANGED", "ST_RESULTS")
			:AddEventTransition("EV_ACTION_CLICKED", "ST_BID_BUY_CONFIRMATION")
			:AddEvent("EV_CONFIRMED", function(context, isBuy, quantity)
				assert(isBuy == context.searchContext:IsBuyoutScan())
				return "ST_PLACING_BID_BUY", quantity
			end)
			:AddEvent("EV_MSG", function(context, msg)
				if not context.findAuction then
					return
				end
				if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
					assert(not context.searchContext:IsBidScan())
					if context.searchContext:IsBuyoutScan() and msg == Enum.AuctionHouseNotification.AuctionWon then
						-- bought an auction
						return "ST_CONFIRMING_BID_BUY", true
					end
				else
					local _, rawLink = context.findAuction:GetLinks()
					if msg == LE_GAME_ERR_AUCTION_DATABASE_ERROR or msg == LE_GAME_ERR_AUCTION_HIGHER_BID or msg == LE_GAME_ERR_ITEM_NOT_FOUND or msg == LE_GAME_ERR_AUCTION_BID_OWN or msg == LE_GAME_ERR_NOT_ENOUGH_MONEY or msg == LE_GAME_ERR_ITEM_MAX_COUNT then
						-- failed to bid/buy an auction
						return "ST_CONFIRMING_BID_BUY", false
					elseif context.searchContext:IsBidScan() and msg == ERR_AUCTION_BID_PLACED then
						-- bid on an auction
						return "ST_CONFIRMING_BID_BUY", true
					elseif context.searchContext:IsBuyoutScan() and msg == format(ERR_AUCTION_WON_S, ItemInfo.GetName(rawLink)) then
						-- bought an auction
						return "ST_CONFIRMING_BID_BUY", true
					end
				end
			end)
			:AddEvent("EV_ERROR_MSG", function(context, msg)
				if not context.findAuction then
					return
				end
				return "ST_CONFIRMING_BID_BUY", false
			end)
			:AddEvent("EV_BUYOUT_SUCCESS", function(context)
				return "ST_CONFIRMING_BID_BUY", true
			end)
			:AddEvent("EV_AUCTION_ID_UPDATE", function(context, oldAuctionId, newAuctionId, newResultInfo)
				if not context.findAuction or select(2, context.findAuction:GetListingInfo()) ~= oldAuctionId then
					return
				end
				context.findAuction:UpdateResultInfo(newAuctionId, newResultInfo)
				context.findHash = context.findAuction:GetHashes()
			end)
		)
		:AddState(FSM.NewState("ST_BID_BUY_CONFIRMATION")
			:SetOnEnter(function(context)
				local selection = context.scanFrame:GetElement("auctions"):GetSelection()
				local index = not Environment.IsRetail() and context.findResult[#context.findResult] or nil
				if TSM.UI.AuctionUI.BuyUtil.ShowConfirmation(context.scanFrame, selection, context.searchContext:IsBuyoutScan(), context.numConfirmed + 1, context.numFound, context.maxQuantity, private.FSMConfirmationCallback, context.auctionScan, index, true, context.searchContext) then
					return "ST_BIDDING_BUYING"
				else
					local quantity = selection:GetQuantities()
					return "ST_PLACING_BID_BUY", quantity
				end
			end)
			:AddTransition("ST_PLACING_BID_BUY")
			:AddTransition("ST_BIDDING_BUYING")
		)
		:AddState(FSM.NewState("ST_PLACING_BID_BUY")
			:SetOnEnter(function(context, quantity)
				local index = not Environment.IsRetail() and tremove(context.findResult, #context.findResult) or nil
				assert(Environment.IsRetail() or index)
				local bidBuyout = nil
				if context.searchContext:IsBuyoutScan() then
					bidBuyout = context.findAuction:GetBuyouts()
				elseif context.searchContext:IsBidScan() then
					bidBuyout = context.findAuction:GetRequiredBid()
				else
					error("Invalid scan type")
				end
				local result = context.auctionScan:PlaceBidOrBuyout(index, bidBuyout, context.findAuction, quantity)
				if result then
					MailTracking.RecordAuctionBuyout(ItemString.ToLevel(context.findAuction:GetItemString()), quantity)
					context.numActioned = context.numActioned + (Environment.HasFeature(Environment.FEATURES.AH_STACKS) and 1 or quantity)
					context.lastBuyQuantity = quantity
				else
					local _, rawLink = context.findAuction:GetLinks()
					if context.searchContext:IsBuyoutScan() then
						Log.PrintfUser(L["Failed to buy auction of %s (x%s) for %s."], rawLink, quantity, Money.ToString(bidBuyout, nil, "OPT_83_NO_COPPER"))
					elseif context.searchContext:IsBidScan() then
						Log.PrintfUser(L["Failed to bid on auction of %s (x%s) for %s."], rawLink, quantity, Money.ToString(bidBuyout, nil, "OPT_83_NO_COPPER"))
					else
						error("Invalid scan type")
					end
				end
				return "ST_BIDDING_BUYING"
			end)
			:AddTransition("ST_BIDDING_BUYING")
		)
		:AddState(FSM.NewState("ST_CONFIRMING_BID_BUY")
			:SetOnEnter(function(context, success)
				if not success then
					local _, rawLink = context.findAuction:GetLinks()
					local quantity = context.findAuction:GetQuantities()
					local bidBuyout = nil
					if context.searchContext:IsBuyoutScan() then
						bidBuyout = context.findAuction:GetBuyouts()
					elseif context.searchContext:IsBidScan() then
						bidBuyout = context.findAuction:GetRequiredBid()
					else
						error("Invalid scan type")
					end
					if context.searchContext:IsBuyoutScan() then
						Log.PrintfUser(L["Failed to buy auction of %s (x%s) for %s."], rawLink, quantity, Money.ToString(bidBuyout, nil, "OPT_83_NO_COPPER"))
					elseif context.searchContext:IsBidScan() then
						Log.PrintfUser(L["Failed to bid on auction of %s (x%s) for %s."], rawLink, quantity, Money.ToString(bidBuyout, nil, "OPT_83_NO_COPPER"))
					else
						error("Invalid scan type")
					end
				end
				context.numConfirmed = context.numConfirmed + (Environment.HasFeature(Environment.FEATURES.AH_STACKS) and 1 or context.lastBuyQuantity)
				context.findAuction = context.scanFrame and context.scanFrame:GetElement("auctions"):GetSelection()
				return "ST_BIDDING_BUYING", success and context.lastBuyQuantity or nil
			end)
			:AddTransition("ST_BIDDING_BUYING")
		)
		:AddDefaultEvent("EV_SCAN_FRAME_SHOWN", function(context, scanFrame)
			context.scanFrame = scanFrame
			if context.scanPaused then
				context.progressText = L["Scan Paused"]
				context.buttonsDisabled = true
				context.scanFrame:GetElement("bottom.progressBar"):SetProgressIconHidden(context.scanPaused)
			end
			UpdateScanFrame(context)
		end)
		:AddDefaultEvent("EV_SCAN_FRAME_HIDDEN", function(context)
			context.scanFrame = nil
			context.findAuction = nil
		end)
		:AddDefaultEventTransition("EV_AUCTION_HOUSE_CLOSED", "ST_INIT")
		:AddDefaultEventTransition("EV_STOP_CLICKED", "ST_INIT")
		:AddDefaultEvent("EV_AUCTION_ROW_REMOVED", function(context, row)
			if not row:IsSubRow() then
				return
			end
			row:GetResultRow():RemoveSubRow(row)
			context.scanFrame:GetElement("auctions"):UpdateData(true)
		end)
		:Init("ST_INIT", fsmContext)
end

function private.FSMMessageEventHandler(_, msg)
	private.fsm:SetLoggingEnabled(false)
	private.fsm:ProcessEvent("EV_MSG", msg)
	private.fsm:SetLoggingEnabled(true)
end

function private.FSMMessageErrorEventHandler(_, msg)
	private.fsm:SetLoggingEnabled(false)
	private.fsm:ProcessEvent("EV_ERROR_MSG", msg)
	private.fsm:SetLoggingEnabled(true)
end

function private.FSMBuyoutSuccess()
	private.fsm:ProcessEvent("EV_BUYOUT_SUCCESS")
end

function private.FSMRescanDelayed()
	private.fsm:ProcessEvent("EV_RESCAN_DELAYED")
end

function private.FSMScanCallback(success)
	if success then
		private.fsm:ProcessEvent("EV_SCAN_COMPLETE")
	else
		private.fsm:ProcessEvent("EV_SCAN_FAILED")
	end
end

function private.FSMPhasedCallback()
	private.fsm:ProcessEvent("EV_PHASED")
end

function private.FSMFindAuctionCallback(result)
	if result then
		private.fsm:ProcessEvent("EV_AUCTION_FOUND", result)
	else
		private.fsm:ProcessEvent("EV_AUCTION_NOT_FOUND")
	end
end

function private.FSMConfirmationCallback(isBuy, quantity)
	private.fsm:ProcessEvent("EV_CONFIRMED", isBuy, quantity)
end
