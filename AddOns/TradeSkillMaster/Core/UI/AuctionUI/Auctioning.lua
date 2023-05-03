-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Auctioning = TSM.UI.AuctionUI:NewPackage("Auctioning")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local FSM = TSM.Include("Util.FSM")
local Container = TSM.Include("Util.Container")
local Table = TSM.Include("Util.Table")
local Sound = TSM.Include("Util.Sound")
local Money = TSM.Include("Util.Money")
local Log = TSM.Include("Util.Log")
local Theme = TSM.Include("Util.Theme")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local ItemString = TSM.Include("Util.ItemString")
local Threading = TSM.Include("Service.Threading")
local ItemInfo = TSM.Include("Service.ItemInfo")
local CustomPrice = TSM.Include("Service.CustomPrice")
local BagTracking = TSM.Include("Service.BagTracking")
local AuctionTracking = TSM.Include("Service.AuctionTracking")
local AuctionScan = TSM.Include("Service.AuctionScan")
local Settings = TSM.Include("Service.Settings")
local DefaultUI = TSM.Include("Service.DefaultUI")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	settings = nil,
	contentPath = "selection",
	hasLastScan = false,
	fsm = nil,
	scanContext = {},
	auctionScan = nil,
	groupSearch = "",
	selectionFrame = nil,
	logQuery = nil,
	perItem = true,
	canStartNewScan = false,
}
local SECONDS_PER_MIN = 60
local SECONDS_PER_HOUR = 60 * SECONDS_PER_MIN
local SECONDS_PER_DAY = 24 * SECONDS_PER_HOUR



-- ============================================================================
-- Module Functions
-- ============================================================================

function Auctioning.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "auctionUIContext", "auctioningSelectionDividedContainer")
		:AddKey("global", "auctionUIContext", "auctioningSelectionVerticalDividedContainer")
		:AddKey("global", "auctionUIContext", "auctioningBagScrollingTable")
		:AddKey("global", "auctionUIContext", "auctioningLogScrollingTable")
		:AddKey("global", "auctionUIContext", "auctioningAuctionScrollingTable")
		:AddKey("global", "auctionUIContext", "auctioningTabGroup")
		:AddKey("char", "auctionUIContext", "auctioningGroupTree")
		:AddKey("global", "auctioningOptions", "scanCompleteSound")
		:AddKey("global", "auctioningOptions", "confirmCompleteSound")
	TSM.UI.AuctionUI.RegisterTopLevelPage(L["Auctioning"], private.GetAuctioningFrame, private.OnItemLinked)
	private.FSMCreate()
end



-- ============================================================================
-- Auctioning UI
-- ============================================================================

function private.GetAuctioningFrame()
	UIUtils.AnalyticsRecordPathChange("auction", "auctioning")
	if not private.hasLastScan then
		private.contentPath = "selection"
	end
	return UIElements.New("ViewContainer", "auctioning")
		:SetNavCallback(private.GetAuctioningContentFrame)
		:AddPath("selection")
		:AddPath("scan")
		:SetPath(private.contentPath)
end

function private.GetAuctioningContentFrame(_, path)
	private.contentPath = path
	if path == "selection" then
		return private.GetAuctioningSelectionFrame()
	elseif path == "scan" then
		return private.GetAuctioningScanFrame()
	else
		error("Unexpected path: "..tostring(path))
	end
end

function private.GetAuctioningSelectionFrame()
	UIUtils.AnalyticsRecordPathChange("auction", "auctioning", "selection")
	local frame = UIElements.New("DividedContainer", "selection")
		:SetSettingsContext(private.settings, "auctioningSelectionDividedContainer")
		:SetMinWidth(220, 250)
		:SetBackgroundColor("PRIMARY_BG")
		:SetLeftChild(UIElements.New("Frame", "groupSelection")
			:SetLayout("VERTICAL")
			:SetPadding(0, 0, 8, 0)
			:AddChild(UIElements.New("Frame", "title")
				:SetLayout("HORIZONTAL")
				:SetMargin(0, 0, 0, 8)
				:SetHeight(24)
				:AddChild(UIElements.New("Input", "search")
					:SetMargin(8, 8, 0, 0)
					:SetIconTexture("iconPack.18x18/Search")
					:SetClearButtonEnabled(true)
					:AllowItemInsert(true)
					:SetHintText(L["Search Groups"])
					:SetValue(private.groupSearch)
					:SetScript("OnValueChanged", private.GroupSearchOnValueChanged)
				)
				:AddChild(UIElements.New("Button", "expandAllBtn")
					:SetSize(24, 24)
					:SetMargin(0, 4, 0, 0)
					:SetBackground("iconPack.18x18/Expand All")
					:SetScript("OnClick", private.ExpandAllGroupsOnClick)
					:SetTooltip(L["Expand / Collapse All Groups"])
				)
				:AddChild(UIElements.New("Button", "selectAllBtn")
					:SetSize(24, 24)
					:SetMargin(0, 8, 0, 0)
					:SetBackground("iconPack.18x18/Select All")
					:SetScript("OnClick", private.SelectAllGroupsOnClick)
					:SetTooltip(L["Select / Deselect All Groups"])
				)
			)
			:AddChild(UIElements.New("HorizontalLine", "line"))
			:AddChild(UIElements.New("ApplicationGroupTree", "groupTree")
				:SetSettingsContext(private.settings, "auctioningGroupTree")
				:SetQuery(TSM.Groups.CreateQuery(), "Auctioning")
				:SetSearchString(private.groupSearch)
				:SetScript("OnGroupSelectionChanged", private.GroupTreeOnGroupSelectionChanged)
			)
			:AddChild(UIElements.New("Frame", "bottom")
				:SetLayout("VERTICAL")
				:SetHeight(74)
				:SetBackgroundColor("PRIMARY_BG_ALT")
				:AddChild(UIElements.New("HorizontalLine", "line"))
				:AddChild(UIElements.New("ActionButton", "postScanBtn")
					:SetHeight(24)
					:SetMargin(8)
					:SetText(L["Run Post Scan"])
					:SetScript("OnClick", private.RunPostButtonOnclick)
				)
				:AddChild(UIElements.New("ActionButton", "cancelScanBtn")
					:SetHeight(24)
					:SetMargin(8, 8, 0, 8)
					:SetText(L["Run Cancel Scan"])
					:SetScript("OnClick", private.RunCancelButtonOnclick)
				)
			)
		)
		:SetRightChild(UIElements.New("DividedContainer", "content")
			:SetVertical()
			:SetMargin(0, 0, 6, 0)
			:SetSettingsContext(private.settings, "auctioningSelectionVerticalDividedContainer")
			:SetMinWidth(50, 100)
			:SetBackgroundColor("PRIMARY_BG")
			:SetTopChild(UIElements.New("Frame", "content")
				:SetLayout("VERTICAL")
				:AddChild(UIElements.New("TabGroup", "buttons")
					:SetNavCallback(private.GetScansElement)
					:SetSettingsContext(private.settings, "auctioningTabGroup")
					:AddPath(L["Recent Scans"])
					:AddPath(L["Favorite Scans"])
				)
			)
			:SetBottomChild(UIElements.New("Frame", "content")
				:SetLayout("VERTICAL")
				:AddChild(UIElements.New("Frame", "bottom")
					:SetLayout("VERTICAL")
					:SetHeight(37)
					:SetBackgroundColor("PRIMARY_BG_ALT")
					:AddChild(UIElements.New("Text", "label")
						:SetHeight(24)
						:SetMargin(4, 0, 6, 6)
						:SetFont("BODY_BODY1_BOLD")
						:SetText(L["Post Items from Bags"])
					)
				)
				:AddChild(UIElements.New("SelectionScrollingTable", "bagScrollingTable")
					:SetSettingsContext(private.settings, "auctioningBagScrollingTable")
					:GetScrollingTableInfo()
						:NewColumn("item")
							:SetTitle(L["Item"])
							:SetHeaderIndent(18)
							:SetFont("ITEM_BODY3")
							:SetJustifyH("LEFT")
							:SetIconSize(12)
							:SetTextInfo("autoBaseItemString", UIUtils.GetDisplayItemName)
							:SetIconInfo("itemTexture")
							:SetTooltipInfo("autoBaseItemString")
							:SetSortInfo("name")
							:DisableHiding()
							:Commit()
						:NewColumn("operation")
							:SetTitle(L["Auctioning Operation"])
							:SetFont("BODY_BODY3_MEDIUM")
							:SetJustifyH("LEFT")
							:SetTextInfo("firstOperation", private.BagGetOperationText)
							:SetSortInfo("firstOperation")
							:Commit()
						:Commit()
					:SetQuery(TSM.Auctioning.PostScan.CreateBagsQuery())
					:SetAutoReleaseQuery(true)
					:SetSelectionValidator(private.BagScrollingTableIsSelectionEnabled)
					:SetScript("OnSelectionChanged", private.BagOnSelectionChanged)
				)
				:AddChild(UIElements.New("HorizontalLine", "line"))
				:AddChild(UIElements.New("Frame", "button")
					:SetLayout("HORIZONTAL")
					:SetHeight(40)
					:SetPadding(8)
					:SetBackgroundColor("PRIMARY_BG_ALT")
					:AddChild(UIElements.New("ActionButton", "postSelected")
						:SetHeight(24)
						:SetMargin(0, 8, 0, 0)
						:SetDisabled(true)
						:SetText(L["Post Selected"])
						:SetScript("OnClick", private.RunPostBagsButtonOnClick)
					)
					:AddChild(UIElements.New("Button", "selectAll")
						:SetSize("AUTO", 20)
						:SetMargin(0, 8, 0, 0)
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Select All"])
						:SetScript("OnClick", private.SelectAllOnClick)
					)
					:AddChild(UIElements.New("VerticalLine", "line")
						:SetHeight(20)
						:SetMargin(0, 8, 0, 0)
					)
					:AddChild(UIElements.New("Button", "clearAll")
						:SetSize("AUTO", 20)
						:SetFont("BODY_BODY3_MEDIUM")
						:SetText(L["Clear All"])
						:SetDisabled(true)
						:SetScript("OnClick", private.ClearAllOnClick)
					)
				)
			)
		)
		:SetScript("OnHide", private.SelectionOnHide)
	local noGroupSelected = frame:GetElement("groupSelection.groupTree"):IsSelectionCleared(true)
	frame:GetElement("groupSelection.bottom.postScanBtn"):SetDisabled(noGroupSelected)
	frame:GetElement("groupSelection.bottom.cancelScanBtn"):SetDisabled(noGroupSelected)
	private.selectionFrame = frame
	return frame
end

function private.GetScansElement(_, button)
	if button == L["Recent Scans"] then
		return UIElements.New("SearchList", "list")
			:SetQuery(TSM.Auctioning.SavedSearches.CreateRecentSearchesQuery())
			:SetEditButtonHidden(true)
			:SetScript("OnFavoriteChanged", private.SearchListOnFavoriteChanged)
			:SetScript("OnDelete", private.SearchListOnDelete)
			:SetScript("OnRowClick", private.SearchListOnRowClick)
	elseif button == L["Favorite Scans"] then
		return UIElements.New("SearchList", "list")
			:SetQuery(TSM.Auctioning.SavedSearches.CreateFavoriteSearchesQuery())
			:SetScript("OnFavoriteChanged", private.SearchListOnFavoriteChanged)
			:SetScript("OnEditClick", private.SearchListOnEditClick)
			:SetScript("OnDelete", private.SearchListOnDelete)
			:SetScript("OnRowClick", private.SearchListOnRowClick)
	else
		error("Unexpected button: "..tostring(button))
	end
end

function private.GetAuctioningScanFrame()
	UIUtils.AnalyticsRecordPathChange("auction", "auctioning", "scan")
	return UIElements.New("Frame", "scan")
		:SetLayout("VERTICAL")
		:SetBackgroundColor("PRIMARY_BG")
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetPadding(8)
			:SetHeight(92)
			:AddChild(UIElements.New("Frame", "back")
				:SetLayout("VERTICAL")
				:SetWidth(54)
				:SetHeight(76)
				:SetMargin(0, 8, 0, 0)
				:SetPadding(0, 0, 4, 0)
				:SetBackgroundColor("PRIMARY_BG_ALT", true)
				:AddChild(UIElements.New("Button", "backBtn")
					:SetMargin(0, 0, 2, 0)
					:SetSize(28, 28)
					:SetBackground("iconPack.24x24/Close/Default")
					:SetScript("OnEnter", private.ExitScanButtonOnEnter)
					:SetScript("OnLeave", private.ExitScanButtonOnLeave)
					:SetScript("OnClick", private.ExitScanButtonOnClick)
				)
				:AddChild(UIElements.New("Text", "text")
					:SetHeight(18)
					:SetFont("BODY_BODY3_MEDIUM")
					:SetJustifyH("CENTER")
					:SetText(L["Exit"])
				)
				:AddChild(UIElements.New("Text", "text")
					:SetHeight(18)
					:SetFont("BODY_BODY3_MEDIUM")
					:SetJustifyH("CENTER")
					:SetText(L["Scan"])
				)
				:SetScript("OnEnter", private.ExitScanFrameOnEnter)
				:SetScript("OnLeave", private.ExitScanFrameOnLeave)
				:SetScript("OnMouseUp", private.ExitScanButtonOnClick)
			)
			:AddChild(UIElements.New("Frame", "content")
				:SetLayout("HORIZONTAL")
				:SetPadding(8, 8, 4, 4)
				:SetBackgroundColor("PRIMARY_BG_ALT", true)
				:AddChild(UIElements.New("Frame", "item")
					:SetLayout("VERTICAL")
					:AddChild(UIElements.New("Frame", "content")
						:SetLayout("HORIZONTAL")
						:SetHeight(24)
						:SetMargin(0, 0, 0, 4)
						:AddChild(UIElements.New("Button", "icon")
							:SetSize(18, 18)
						)
						:AddChild(UIElements.New("Button", "text")
							:SetMargin(4, 0, 0, 0)
							:SetFont("ITEM_BODY1")
							:SetJustifyH("LEFT")
						)
					)
					:AddChild(UIElements.New("Frame", "cost")
						:SetLayout("HORIZONTAL")
						:SetHeight(20)
						:AddChild(UIElements.New("Text", "desc")
							:SetWidth("AUTO")
							:SetFont("BODY_BODY3_MEDIUM")
							:SetText(L["Deposit Cost"]..":")
						)
						:AddChild(UIElements.New("Text", "text")
							:SetMargin(4, 0, 0, 0)
							:SetFont("TABLE_TABLE1")
						)
					)
					:AddChild(UIElements.New("Frame", "operation")
						:SetLayout("HORIZONTAL")
						:SetHeight(20)
						:AddChild(UIElements.New("Text", "desc")
							:SetWidth("AUTO")
							:SetFont("BODY_BODY3_MEDIUM")
							:SetText(L["Operation"]..":")
						)
						:AddChild(UIElements.New("Text", "text")
							:SetMargin(4, 0, 0, 0)
							:SetFont("BODY_BODY3_MEDIUM")
						)
					)
				)
				:AddChild(UIElements.New("Frame", "details")
					:SetLayout("VERTICAL")
					:SetWidth(371)
					:SetMargin(16, 0, 0, 0)
					:AddChild(UIElements.New("Frame", "header")
						:SetLayout("HORIZONTAL")
						:SetHeight(24)
						:AddChild(UIElements.New("Text", "text")
							:SetMargin(0, 10, 0, 0)
							:SetSize("AUTO", 16)
							:SetFont("BODY_BODY1")
							:SetText(L["Auctioning Details"])
						)
						:AddChild(UIElements.New("ActionButton", "editBtn")
							:SetHeight(16)
							:SetFont("BODY_BODY3_MEDIUM")
							:SetText(L["Edit Post"])
							:SetScript("OnClick", private.EditButtonOnClick)
						)
					)
					:AddChild(UIElements.New("Frame", "details")
						:SetLayout("HORIZONTAL")
						:SetMargin(0, 0, 4, 0)
						:AddChild(UIElements.New("Frame", "details1")
							:SetLayout("VERTICAL")
							:SetWidth(200)
							:SetMargin(0, 8, 0, 0)
							:AddChild(UIElements.New("Frame", "bid")
								:SetLayout("HORIZONTAL")
								:SetHeight(20)
								:AddChild(UIElements.New("Text", "desc")
									:SetWidth("AUTO")
									:SetFont("BODY_BODY3_MEDIUM")
									:SetText(L["Bid Price"]..":")
								)
								:AddChild(UIElements.New("Text", "text")
									:SetMargin(4, 0, 0, 0)
									:SetFont("TABLE_TABLE1")
								)
							)
							:AddChild(UIElements.New("Frame", "buyout")
								:SetLayout("HORIZONTAL")
								:SetHeight(20)
								:AddChild(UIElements.New("Text", "desc")
									:SetWidth("AUTO")
									:SetFont("BODY_BODY3_MEDIUM")
									:SetText(L["Buyout Price"]..":")
								)
								:AddChild(UIElements.New("Text", "text")
									:SetMargin(4, 0, 0, 0)
									:SetFont("TABLE_TABLE1")
								)
							)
						)
						:AddChild(UIElements.New("Frame", "details2")
							:SetLayout("VERTICAL")
							:AddChild(UIElements.New("Frame", "quantity")
								:SetLayout("HORIZONTAL")
								:SetHeight(20)
								:AddChild(UIElements.New("Text", "desc")
									:SetWidth("AUTO")
									:SetFont("BODY_BODY3_MEDIUM")
									:SetText((Environment.HasFeature(Environment.FEATURES.AH_STACKS) and L["Stack / Quantity"] or L["Quantity"])..":")
								)
								:AddChild(UIElements.New("Text", "text")
									:SetMargin(4, 0, 0, 0)
									:SetFont("TABLE_TABLE1")
								)
							)
							:AddChild(UIElements.New("Frame", "duration")
								:SetLayout("HORIZONTAL")
								:SetHeight(20)
								:AddChild(UIElements.New("Text", "desc")
									:SetWidth("AUTO")
									:SetFont("BODY_BODY3_MEDIUM")
									:SetText(L["Duration"]..":")
								)
								:AddChild(UIElements.New("Text", "text")
									:SetMargin(4, 0, 0, 0)
									:SetFont("TABLE_TABLE1")
								)
							)
						)
					)
				)
			)
		)
		:AddChild(UIElements.New("TabGroup", "tabs")
			:SetTheme("SIMPLE")
			:SetNavCallback(private.ScanNavCallback)
			:AddPath(L["Auctioning Log"], true)
			:AddPath(L["All Auctions"])
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
				:SetProgressIconHidden(false)
				:SetText(L["Starting Scan..."])
			)
			:AddChild(UIElements.NewNamed("ActionButton", "processBtn", "TSMAuctioningBtn")
				:SetSize(160, 24)
				:SetMargin(0, 8, 0, 0)
				:SetText(L["Post"])
				:SetDisabled(true)
				:DisableClickCooldown(true)
				:SetScript("OnClick", private.ProcessButtonOnClick)
			)
			:AddChild(UIElements.New("ActionButton", "skipBtn")
				:SetSize(160, 24)
				:SetText(L["Skip"])
				:SetDisabled(true)
				:DisableClickCooldown(true)
				:SetScript("OnClick", private.SkipButtonOnClick)
			)
		)
		:SetScript("OnUpdate", private.ScanFrameOnUpdate)
		:SetScript("OnHide", private.ScanFrameOnHide)
end

function private.ScanNavCallback(_, path)
	if path == L["Auctioning Log"] then
		UIUtils.AnalyticsRecordPathChange("auction", "auctioning", "scan", "log")
		private.logQuery = private.logQuery or TSM.Auctioning.Log.CreateQuery()
		return UIElements.New("Frame", "logFrame")
			:SetLayout("VERTICAL")
			:AddChild(UIElements.New("QueryScrollingTable", "log")
				:SetSettingsContext(private.settings, "auctioningLogScrollingTable")
				:GetScrollingTableInfo()
					:NewColumn("index")
						:SetTitleIcon("iconPack.14x14/Attention")
						:SetIconSize(12)
						:SetFont("ITEM_BODY3")
						:SetJustifyH("CENTER")
						:SetIconInfo(nil, private.LogGetIndexIcon)
						:SetSortInfo("index")
						:Commit()
					:NewColumn("item")
						:SetTitle(L["Item"])
						:SetFont("ITEM_BODY3")
						:SetJustifyH("LEFT")
						:SetIconSize(12)
						:SetTextInfo("itemString", UIUtils.GetDisplayItemName)
						:SetIconInfo("itemString", ItemInfo.GetTexture)
						:SetTooltipInfo("itemString")
						:SetSortInfo("name")
						:Commit()
					:NewColumn("buyout")
						:SetTitle(L["Your Buyout"])
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("RIGHT")
						:SetTextInfo("buyout", private.LogGetBuyoutText)
						:SetSortInfo("buyout")
						:Commit()
					:NewColumn("operation")
						:SetTitle(L["Operation"])
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("LEFT")
						:SetTextInfo("operation")
						:SetSortInfo("operation")
						:Commit()
					:NewColumn("seller")
						:SetTitle(L["Seller"])
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("LEFT")
						:SetTextInfo("seller")
						:SetSortInfo("seller")
						:Commit()
					:NewColumn("info")
						:SetTitle(INFO)
						:SetFont("TABLE_TABLE1")
						:SetJustifyH("LEFT")
						:SetTextInfo(nil, TSM.Auctioning.Log.GetInfoStr)
						:SetSortInfo("reasonStr")
						:Commit()
					:Commit()
				:SetQuery(private.logQuery)
				:SetSelectionDisabled(true)
			)
	elseif path == L["All Auctions"] then
		UIUtils.AnalyticsRecordPathChange("auction", "auctioning", "scan", "auctions")
		return UIElements.New("Frame", "auctionsFrame")
			:SetLayout("VERTICAL")
			:AddChild(UIElements.New("AuctionScrollingTable", "auctions")
				:SetSettingsContext(private.settings, "auctioningAuctionScrollingTable")
				:SetBrowseResultsVisible(true)
				:SetMarketValueFunction(private.MarketValueFunction)
				:SetAuctionScan(private.auctionScan)
			)
	else
		error("Unexpected path: "..tostring(path))
	end
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.OnItemLinked(_, itemLink)
	if private.selectionFrame then
		if not TSM.UI.AuctionUI.StartingScan(L["Auctioning"]) then
			return false
		end
		wipe(private.scanContext)
		private.scanContext.isItems = true
		tinsert(private.scanContext, TSM.Groups.TranslateItemString(ItemString.Get(itemLink)))
		private.selectionFrame:GetParentElement():SetPath("scan", true)
		private.fsm:ProcessEvent("EV_START_SCAN", "POST", private.scanContext)
		return true
	else
		if not private.canStartNewScan then
			return false
		end
		wipe(private.scanContext)
		private.scanContext.isItems = true
		tinsert(private.scanContext, TSM.Groups.TranslateItemString(ItemString.Get(itemLink)))
		private.fsm:ProcessEvent("EV_START_SCAN", "POST", private.scanContext)
		return true
	end
end

function private.SelectionOnHide(frame)
	assert(frame == private.selectionFrame)
	private.selectionFrame = nil
end

function private.GroupSearchOnValueChanged(input)
	private.groupSearch = strlower(input:GetValue())
	input:GetElement("__parent.__parent.groupTree")
		:SetSearchString(private.groupSearch)
		:Draw()
end

function private.ExpandAllGroupsOnClick(button)
	button:GetElement("__parent.__parent.groupTree")
		:ToggleExpandAll()
end

function private.SelectAllGroupsOnClick(button)
	button:GetElement("__parent.__parent.groupTree")
		:ToggleSelectAll()
end

function private.GroupTreeOnGroupSelectionChanged(groupTree)
	local postScanBtn = groupTree:GetElement("__parent.bottom.postScanBtn")
	postScanBtn:SetDisabled(groupTree:IsSelectionCleared())
	postScanBtn:Draw()
	local cancelScanBtn = groupTree:GetElement("__parent.bottom.cancelScanBtn")
	cancelScanBtn:SetDisabled(groupTree:IsSelectionCleared())
	cancelScanBtn:Draw()
end

function private.RunPostButtonOnclick(button)
	if not TSM.UI.AuctionUI.StartingScan(L["Auctioning"]) then
		return
	end
	wipe(private.scanContext)
	for _, groupPath in button:GetElement("__parent.__parent.groupTree"):SelectedGroupsIterator() do
		tinsert(private.scanContext, groupPath)
	end
	button:GetElement("__parent.__parent.__parent.__parent"):SetPath("scan", true)
	private.fsm:ProcessEvent("EV_START_SCAN", "POST", private.scanContext)
end

function private.RunCancelButtonOnclick(button)
	if not TSM.UI.AuctionUI.StartingScan(L["Auctioning"]) then
		return
	end
	wipe(private.scanContext)
	for _, groupPath in button:GetElement("__parent.__parent.groupTree"):SelectedGroupsIterator() do
		tinsert(private.scanContext, groupPath)
	end
	button:GetElement("__parent.__parent.__parent.__parent"):SetPath("scan", true)
	private.fsm:ProcessEvent("EV_START_SCAN", "CANCEL", private.scanContext)
end

function private.SearchListOnFavoriteChanged(_, dbRow, isFavorite)
	TSM.Auctioning.SavedSearches.SetSearchIsFavorite(dbRow, isFavorite)
end

function private.SearchListOnEditClick(searchList, dbRow)
	local dialog = UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetSize(600, 187)
		:AddAnchor("CENTER")
		:SetBackgroundColor("FRAME_BG")
		:SetBorderColor("ACTIVE_BG")
		:AddChild(UIElements.New("Text", "title")
			:SetHeight(44)
			:SetMargin(16, 16, 24, 16)
			:SetFont("BODY_BODY1_BOLD")
			:SetJustifyH("CENTER")
			:SetText(L["Rename Search"])
		)
		:AddChild(UIElements.New("Input", "nameInput")
			:SetHeight(26)
			:SetMargin(16, 16, 0, 25)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AllowItemInsert(true)
			:SetContext(dbRow)
			:SetValue(dbRow:GetField("name"))
			:SetScript("OnEnterPressed", private.RenameInputOnEnterPressed)
		)
		:AddChild(UIElements.New("Frame", "buttons")
			:SetLayout("HORIZONTAL")
			:SetMargin(16, 16, 0, 16)
			:AddChild(UIElements.New("Spacer", "spacer"))
			:AddChild(UIElements.New("ActionButton", "closeBtn")
				:SetSize(126, 26)
				:SetText(CLOSE)
				:SetScript("OnClick", private.DialogCloseBtnOnClick)
			)
		)
	searchList:GetBaseElement():ShowDialogFrame(dialog)
	dialog:GetElement("nameInput"):SetFocused(true)
end

function private.RenameInputOnEnterPressed(input)
	local name = input:GetValue()
	if name == "" then
		return
	end
	local dbRow = input:GetContext()
	local baseElement = input:GetBaseElement()
	baseElement:HideDialog()
	TSM.Auctioning.SavedSearches.RenameSearch(dbRow, name)
end

function private.DialogCloseBtnOnClick(button)
	button:GetBaseElement():HideDialog()
end

function private.SearchListOnDelete(_, dbRow)
	TSM.Auctioning.SavedSearches.DeleteSearch(dbRow)
end

function private.SearchListOnRowClick(searchList, dbRow)
	if not TSM.UI.AuctionUI.StartingScan(L["Auctioning"]) then
		return
	end
	local scanType = dbRow:GetField("searchType")
	wipe(private.scanContext)
	private.scanContext.isItems = scanType == "postItems" or nil
	TSM.Auctioning.SavedSearches.FiltersToTable(dbRow, private.scanContext)
	searchList:GetParentElement():GetParentElement():GetParentElement():GetParentElement():GetParentElement():SetPath("scan", true)
	private.fsm:ProcessEvent("EV_START_SCAN", scanType == "cancelGroups" and "CANCEL" or "POST", private.scanContext)
end

function private.PauseResumeBtnOnClick(button)
	private.fsm:ProcessEvent("EV_PAUSE_RESUME_CLICKED")
end

function private.ProcessButtonOnClick(button)
	private.fsm:ProcessEvent("EV_PROCESS_CLICKED")
end

function private.SkipButtonOnClick(button)
	private.fsm:ProcessEvent("EV_SKIP_CLICKED")
end

function private.ScanFrameOnUpdate(frame)
	frame:SetScript("OnUpdate", nil)
	private.fsm:ProcessEvent("EV_SCAN_FRAME_SHOWN", frame)
end

function private.ScanFrameOnHide(frame)
	private.fsm:ProcessEvent("EV_SCAN_FRAME_HIDDEN")
end

function private.BagOnSelectionChanged(scrollingTable)
	local selectionCleared = scrollingTable:IsSelectionCleared()
	scrollingTable:GetElement("__parent.button.postSelected"):SetDisabled(selectionCleared)
		:Draw()
	scrollingTable:GetElement("__parent.button.selectAll"):SetDisabled(scrollingTable:IsAllSelected())
		:Draw()
	scrollingTable:GetElement("__parent.button.clearAll"):SetDisabled(selectionCleared)
		:Draw()
end

function private.SelectAllOnClick(button)
	button:GetElement("__parent.__parent.bagScrollingTable"):SelectAll()
end

function private.ClearAllOnClick(button)
	button:GetElement("__parent.__parent.bagScrollingTable"):ClearSelection()
end

function private.RunPostBagsButtonOnClick(button)
	if not TSM.UI.AuctionUI.StartingScan(L["Auctioning"]) then
		return
	end
	wipe(private.scanContext)
	private.scanContext.isItems = true
	for _, row in button:GetElement("__parent.__parent.bagScrollingTable"):SelectionIterator() do
		local autoBaseItemString, operation = row:GetFields("autoBaseItemString", "firstOperation")
		if operation then
			tinsert(private.scanContext, autoBaseItemString)
		end
	end
	button:GetParentElement():GetParentElement():GetParentElement():GetParentElement():GetParentElement():SetPath("scan", true)
	private.fsm:ProcessEvent("EV_START_SCAN", "POST", private.scanContext)
end

function private.ExitScanButtonOnEnter(button)
	private.ExitScanFrameOnEnter(button:GetParentElement())
end

function private.ExitScanButtonOnLeave(button)
	private.ExitScanFrameOnLeave(button:GetParentElement())
end

function private.ExitScanFrameOnEnter(frame)
	frame:SetBackgroundColor("PRIMARY_BG_ALT+HOVER", true)
		:Draw()
end

function private.ExitScanFrameOnLeave(frame)
	frame:SetBackgroundColor("PRIMARY_BG_ALT", true)
		:Draw()
end

function private.ExitScanButtonOnClick()
	if not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		ClearCursor()
		ClickAuctionSellItemButton(AuctionsItemButton, "LeftButton")
		ClearCursor()
	end
	private.fsm:ProcessEvent("EV_BACK_BUTTON_CLICKED")
end

function private.EditButtonOnClick(button)
	private.fsm:ProcessEvent("EV_EDIT_BUTTON_CLICKED")
end



-- ============================================================================
-- FSM
-- ============================================================================

function private.FSMCreate()
	local fsmContext = {
		itemString = nil,
		scanFrame = nil,
		scanThreadId = nil,
		scanType = nil,
		auctionScan = nil,
		pausePending = nil,
		isScanning = false,
		pendingFuture = nil,
	}
	DefaultUI.RegisterAuctionHouseVisibleCallback(function() private.fsm:ProcessEvent("EV_AUCTION_HOUSE_CLOSED") end, false)
	local fsmPrivate = {}
	function fsmPrivate.UpdateDepositCost(context)
		if context.scanType ~= "POST" then
			return
		end

		local header = context.scanFrame:GetElement("header")
		local detailsHeader1 = header:GetElement("content.details.details.details1")

		local currentRow = TSM.Auctioning.PostScan.GetCurrentRow()
		if not currentRow then
			return
		end

		local itemString = currentRow:GetField("itemString")
		local postBag, postSlot = BagTracking.CreateQueryBagsAuctionable()
			:OrderBy("slotId", true)
			:Select("bag", "slot")
			:Equal("baseItemString", ItemString.GetBaseFast(itemString))
			:VirtualField("autoBaseItemString", "string", TSM.Groups.TranslateItemString, "itemString")
			:Equal("autoBaseItemString", itemString)
			:GetFirstResultAndRelease()
		local postTime = currentRow:GetField("postTime")
		local stackSize = currentRow:GetField("stackSize")
		local depositCost = 0
		if postBag and postSlot then
			if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
				local isCommodity = ItemInfo.IsCommodity(itemString)
				depositCost = max(floor(0.15 * (ItemInfo.GetVendorSell(itemString) or 0) * (isCommodity and stackSize or 1) * (postTime == 3 and 4 or postTime)), 100) * (isCommodity and 1 or stackSize)
			else
				ClearCursor()
				Container.PickupItem(postBag, postSlot)
				ClickAuctionSellItemButton(AuctionsItemButton, "LeftButton")
				ClearCursor()
				local bid = Money.FromString(detailsHeader1:GetElement("bid.text"):GetText())
				local buyout = Money.FromString(detailsHeader1:GetElement("buyout.text"):GetText())
				depositCost = GetAuctionDeposit(postTime, bid, buyout, stackSize, 1)
				ClearCursor()
				ClickAuctionSellItemButton(AuctionsItemButton, "LeftButton")
				ClearCursor()
			end
		end

		header:GetElement("content.item.cost.text"):SetText(Money.ToString(depositCost))
			:Draw()
	end
	function fsmPrivate.UpdateScanFrame(context)
		if not context.scanFrame then
			return
		end

		local header = context.scanFrame:GetElement("header")
		local currentRow, numProcessed, numConfirmed, _, totalNum = nil, nil, nil, nil, nil
		if context.scanType == "POST" then
			currentRow = TSM.Auctioning.PostScan.GetCurrentRow()
			numProcessed, numConfirmed, _, totalNum = TSM.Auctioning.PostScan.GetStatus()
			header:GetElement("content.item.cost")
				:Show()
				:Draw()
		elseif context.scanType == "CANCEL" then
			currentRow = TSM.Auctioning.CancelScan.GetCurrentRow()
			numProcessed, numConfirmed, _, totalNum = TSM.Auctioning.CancelScan.GetStatus()
			header:GetElement("content.item.cost")
				:Hide()
				:Draw()
		else
			error("Invalid scan type: "..tostring(context.scanType))
		end
		local itemContent = header:GetElement("content.item.content")
		local detailsHeader1 = header:GetElement("content.details.details.details1")
		local detailsHeader2 = header:GetElement("content.details.details.details2")
		if currentRow then
			local selectedRow = nil
			for _, row in private.logQuery:Iterator() do
				if currentRow:GetField("auctionId") == row:GetField("index") then
					selectedRow = row
				end
			end
			if selectedRow and context.scanFrame:GetElement("tabs"):GetPath() == L["Auctioning Log"] then
				context.scanFrame:GetElement("tabs.logFrame.log")
					:SetSelection(selectedRow:GetUUID())
					:Draw()
			end

			local itemString = currentRow:GetField("itemString")
			local rowStacksRemaining = currentRow:GetField("numStacks") - currentRow:GetField("numProcessed")
			itemContent:GetElement("icon")
				:SetBackground(ItemInfo.GetTexture(itemString))
				:SetTooltip(itemString)
				:Draw()
			itemContent:GetElement("text")
				:SetText(UIUtils.GetDisplayItemName(itemString))
				:SetTooltip(itemString)
				:Draw()
			header:GetElement("content.item.operation.text")
				:SetText(currentRow:GetField("operationName"))
				:Draw()
			detailsHeader1:GetElement("bid.text")
				:SetText(Money.ToString(currentRow:GetField(ItemInfo.IsCommodity(itemString) and "itemBuyout" or "bid"), nil, "OPT_83_NO_COPPER"))
				:Draw()
			detailsHeader1:GetElement("buyout.text")
				:SetText(Money.ToString(currentRow:GetField(ItemInfo.IsCommodity(itemString) and "itemBuyout" or "buyout"), nil, "OPT_83_NO_COPPER"))
				:Draw()
			detailsHeader2:GetElement("quantity.text")
				:SetText(Environment.HasFeature(Environment.FEATURES.AH_STACKS) and format(L["%d of %d"], rowStacksRemaining, currentRow:GetField("stackSize")) or currentRow:GetField("stackSize"))
				:Draw()
			local duration = nil
			if context.scanType == "POST" then
				duration = TSM.CONST.AUCTION_DURATIONS[currentRow:GetField("postTime")]
			elseif context.scanType == "CANCEL" then
				if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
					duration = currentRow:GetField("duration") - time()
					if duration < SECONDS_PER_MIN then
						duration = duration.."s"
					elseif duration < SECONDS_PER_HOUR then
						duration = floor(duration / SECONDS_PER_MIN).."m"
					elseif duration < SECONDS_PER_DAY then
						duration = floor(duration / SECONDS_PER_HOUR).."h"
					else
						duration = floor(duration / SECONDS_PER_DAY).."d"
					end
				else
					duration = _G["AUCTION_TIME_LEFT"..currentRow:GetField("duration")]
				end
			else
				error("Invalid scanType: "..tostring(context.scanType))
			end
			detailsHeader2:GetElement("duration.text")
				:SetText(duration)
				:Draw()
			if context.scanType == "POST" and context.itemString ~= itemString then
				fsmPrivate.UpdateDepositCost(context)
				context.itemString = itemString
			end
			header:GetElement("content.details.header.editBtn")
				:SetDisabled(context.scanType ~= "POST")
				:Draw()
		else
			itemContent:GetElement("icon")
				:SetBackground(nil)
				:SetTooltip(nil)
				:Draw()
			itemContent:GetElement("text")
				:SetText("-")
				:SetTooltip(nil)
				:Draw()
			header:GetElement("content.item.cost.text")
				:SetText("-")
				:Draw()
			header:GetElement("content.item.operation.text")
				:SetText("-")
				:Draw()
			detailsHeader1:GetElement("bid.text")
				:SetText("-")
				:Draw()
			detailsHeader1:GetElement("buyout.text")
				:SetText("-")
				:Draw()
			detailsHeader2:GetElement("quantity.text")
				:SetText("-")
				:Draw()
			detailsHeader2:GetElement("duration.text")
				:SetText("-")
				:Draw()
			if context.scanFrame:GetElement("tabs"):GetPath() == L["Auctioning Log"] then
				context.scanFrame:GetElement("tabs.logFrame.log")
					:SetSelection(nil)
					:Draw()
			end
			header:GetElement("content.details.header.editBtn")
				:SetDisabled(true)
				:Draw()
		end

		local processText = nil
		if context.scanType == "POST" then
			processText = L["Post"]
		elseif context.scanType == "CANCEL" then
			processText = CANCEL
		else
			error("Invalid scan type: "..tostring(context.scanType))
		end
		local bottom = context.scanFrame:GetElement("bottom")
		bottom:GetElement("processBtn")
			:SetText(processText)
		local progress, isPaused = context.auctionScan:GetProgress()
		local scanDone = progress == 1 and not context.isScanning
		local isPausePending = context.pausePending ~= nil
		if not isPausePending and (scanDone or isPaused) then
			-- we're done (or paused) scanning so start Posting/Canceling
			local doneStr, progressFmtStr = nil, nil
			if context.scanType == "POST" then
				doneStr = L["Done Posting"]
				progressFmtStr = (isPaused and (L["Scan Paused"].." | ") or "")..L["Posting %d / %d"]
			elseif context.scanType == "CANCEL" then
				doneStr = L["Done Canceling"]
				progressFmtStr = (isPaused and (L["Scan Paused"].." | ") or "")..L["Canceling %d / %d"]
			else
				error("Invalid scan type: "..tostring(context.scanType))
			end
			local progressText, iconHidden = nil, false
			if numConfirmed == totalNum then
				progressText = doneStr
				iconHidden = true
			elseif numProcessed == totalNum then
				progressText = format(L["Confirming %d / %d"], numConfirmed + 1, totalNum)
			elseif numProcessed == numConfirmed then
				progressText = format(progressFmtStr, numProcessed + 1, totalNum)
				iconHidden = true
			else
				progressText = format(progressFmtStr.." ("..L["Confirming %d / %d"]..")", numProcessed + 1, totalNum, numConfirmed + 1, totalNum)
			end
			bottom:GetElement("progressBar")
				:SetProgress(totalNum > 0 and (numProcessed / totalNum) or 1)
				:SetProgressIconHidden(iconHidden)
				:SetText(progressText)
			local deposit = context.scanType == "POST" and Money.FromString(header:GetElement("content.item.cost.text"):GetText())
			bottom:GetElement("processBtn"):SetDisabled(numProcessed == totalNum or (deposit and deposit > GetMoney()) or context.pendingFuture)
			bottom:GetElement("skipBtn"):SetDisabled(numProcessed == totalNum)
			bottom:GetElement("pauseResumeBtn")
				:SetDisabled(numProcessed ~= numConfirmed or scanDone)
				:SetHighlightLocked(false)
		else
			-- we're scanning or pausing
			local text = nil
			if isPausePending then
				text = isPaused and L["Resuming Scan..."] or L["Pausing Scan..."]
			else
				local numItems = context.auctionScan:GetNumItems()
				text = numItems and format(L["Scanning (%d Items)"], numItems) or L["Scanning"]
			end
			bottom:GetElement("progressBar")
				:SetProgress(progress)
				:SetProgressIconHidden(false)
				:SetText(text)
			bottom:GetElement("processBtn"):SetDisabled(true)
			bottom:GetElement("skipBtn"):SetDisabled(true)
			bottom:GetElement("pauseResumeBtn")
				:SetDisabled(isPausePending or numProcessed == totalNum)
				:SetHighlightLocked(isPausePending)
		end
		bottom:Draw()
	end
	function fsmPrivate.ShowEditDialog(context)
		if context.scanType ~= "POST" then
			return
		end
		local currentRow = TSM.Auctioning.PostScan.GetCurrentRow()
		local itemString = currentRow:GetField("itemString")
		local isCommodity = ItemInfo.IsCommodity(itemString)
		local bid = currentRow:GetField("itemBid")
		local buyout = currentRow:GetField("itemBuyout")

		private.perItem = true

		context.scanFrame:GetBaseElement():ShowDialogFrame(UIElements.New("Frame", "frame")
			:SetLayout("VERTICAL")
			:SetSize(328, 328)
			:SetPadding(12)
			:AddAnchor("CENTER")
			:SetBackgroundColor("FRAME_BG", true)
			:SetMouseEnabled(true)
			:AddChild(UIElements.New("Frame", "header")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, -4, 10)
				:AddChild(UIElements.New("Spacer", "spacer")
					:SetWidth(24)
				)
				:AddChild(UIElements.New("Text", "title")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetJustifyH("CENTER")
					:SetText(L["Edit Post"])
				)
				:AddChild(UIElements.New("Button", "closeBtn")
					:SetMargin(0, -4, 0, 0)
					:SetBackgroundAndSize("iconPack.24x24/Close/Default")
					:SetScript("OnClick", private.EditDialogCloseBtnOnClick)
				)
			)
			:AddChild(UIElements.New("Frame", "item")
				:SetLayout("HORIZONTAL")
				:SetPadding(6)
				:SetMargin(0, 0, 0, 16)
				:SetBackgroundColor("PRIMARY_BG_ALT", true)
				:AddChild(UIElements.New("Button", "icon")
					:SetSize(36, 36)
					:SetMargin(0, 8, 0, 0)
					:SetBackground(ItemInfo.GetTexture(itemString))
					:SetTooltip(itemString)
				)
				:AddChild(UIElements.New("Text", "name")
					:SetHeight(36)
					:SetFont("ITEM_BODY1")
					:SetText(UIUtils.GetDisplayItemName(itemString))
				)
			)
			-- TODO: implement editing stack sizes
			:AddChild(UIElements.New("Frame", "stacksFrame")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 16)
				:AddChild(UIElements.New("Text", "stacksText")
					:SetWidth("AUTO")
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2")
					:SetText(L["Stack(s)"]..":")
				)
				:AddChild(UIElements.New("Input", "stacksInput")
					:SetSize(62, 24)
					:SetMargin(0, 16, 0, 0)
					:SetBackgroundColor("PRIMARY_BG_ALT")
					:SetValidateFunc("NUMBER", "1:5000")
					:SetDisabled(true)
					:SetValue(currentRow:GetField("numStacks"))
				)
				:AddChild(UIElements.New("Text", "quantityText")
					:SetWidth("AUTO")
					:SetMargin(0, 8, 0, 0)
					:SetFont("BODY_BODY2")
					:SetText(L["Quantity"]..":")
				)
				:AddChild(UIElements.New("Input", "quantityInput")
					:SetSize(62, 24)
					:SetBackgroundColor("PRIMARY_BG_ALT")
					:SetValidateFunc("NUMBER", "1:5000")
					:SetDisabled(true)
					:SetValue(currentRow:GetField("stackSize"))
				)
			)
			:AddChild(UIElements.New("Frame", "duration")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, 0, 24)
				:AddChild(UIElements.New("Text", "desc")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY2")
					:SetText(L["Duration"]..":")
				)
				:AddChild(UIElements.New("Toggle", "toggle")
					:SetMargin(0, 48, 0, 0)
					:AddOption(TSM.CONST.AUCTION_DURATIONS[1])
					:AddOption(TSM.CONST.AUCTION_DURATIONS[2])
					:AddOption(TSM.CONST.AUCTION_DURATIONS[3])
					:SetOption(TSM.CONST.AUCTION_DURATIONS[currentRow:GetField("postTime")])
				)
			)
			:AddChild(UIElements.New("Frame", "per")
				:SetLayout("HORIZONTAL")
				:SetHeight(20)
				:SetMargin(0, 0, 0, 8)
				:AddChild(UIElements.New("Spacer", "spacer"))
				:AddChild(UIElements.New("Button", "item")
					:SetWidth("AUTO")
					:SetMargin(0, 8, 0, 0)
					:SetTextColor("INDICATOR")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetJustifyH("RIGHT")
					:SetText(L["Per Item"])
					:SetScript("OnClick", Environment.HasFeature(Environment.FEATURES.AH_STACKS) and private.PerItemOnClick)
				)
				:AddChildIf(Environment.HasFeature(Environment.FEATURES.AH_STACKS), UIElements.New("Button", "stack")
					:SetWidth("AUTO")
					:SetTextColor("TEXT")
					:SetFont("BODY_BODY2_MEDIUM")
					:SetJustifyH("RIGHT")
					:SetText(L["Per Stack"])
					:SetScript("OnClick", Environment.HasFeature(Environment.FEATURES.AH_STACKS) and private.PerStackOnClick)
				)
			)
			:AddChild(UIElements.New("Frame", "bid")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, 0, 10)
				:AddChild(UIElements.New("Text", "desc")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY2")
					:SetText(L["Bid Price"]..":")
				)
				:AddChild(UIElements.New("Spacer", "spacer"))
				:AddChild(UIElements.New("Input", "input")
					:SetWidth(132)
					:SetBackgroundColor("PRIMARY_BG_ALT")
					:SetFont("TABLE_TABLE1")
					:SetValidateFunc(private.BidBuyoutValidateFunc)
					:SetJustifyH("RIGHT")
					:SetDisabled(isCommodity)
					:SetTabPaths("__parent.__parent.buyout.input", "__parent.__parent.buyout.input")
					:SetContext("bid")
					:SetValue(Money.ToString(bid, nil, "OPT_83_NO_COPPER"))
					:SetScript("OnValidationChanged", private.BidBuyoutOnValidationChanged)
					:SetScript("OnValueChanged", private.BidBuyoutInputOnValueChanged)
					:SetScript("OnEnterPressed", private.BidBuyoutInputOnEnterPressed)
				)
			)
			:AddChild(UIElements.New("Frame", "buyout")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 0, 0, 16)
				:AddChild(UIElements.New("Text", "desc")
					:SetWidth("AUTO")
					:SetFont("BODY_BODY2")
					:SetText(L["Buyout Price"]..":")
				)
				:AddChild(UIElements.New("Spacer", "spacer"))
				:AddChild(UIElements.New("Input", "input")
					:SetWidth(132)
					:SetBackgroundColor("PRIMARY_BG_ALT")
					:SetFont("TABLE_TABLE1")
					:SetValidateFunc(private.BidBuyoutValidateFunc)
					:SetJustifyH("RIGHT")
					:SetContext(isCommodity and "itemBuyout" or "buyout")
					:SetTabPaths("__parent.__parent.bid.input", "__parent.__parent.bid.input")
					:SetValue(Money.ToString(buyout, nil, "OPT_83_NO_COPPER"))
					:SetScript("OnValidationChanged", private.BidBuyoutOnValidationChanged)
					:SetScript("OnValueChanged", private.BidBuyoutInputOnValueChanged)
					:SetScript("OnEnterPressed", private.BidBuyoutInputOnEnterPressed)
				)
			)
			:AddChild(UIElements.New("ActionButton", "saveBtn")
				:SetHeight(24)
				:SetText(SAVE)
				:SetContext(context)
				:SetScript("OnClick", fsmPrivate.EditPostingDetailsSaveOnClick)
			)
		)
	end
	function fsmPrivate.EditPostingDetailsSaveOnClick(button)
		local context = button:GetContext()
		assert(context.scanType == "POST")
		local currentRow = TSM.Auctioning.PostScan.GetCurrentRow()

		local isCommodity = ItemInfo.IsCommodity(context.itemString)
		local bid = TSM.UI.AuctionUI.ParseBid(button:GetElement("__parent.bid.input"):GetValue())
		local buyout = TSM.UI.AuctionUI.ParseBuyout(button:GetElement("__parent.buyout.input"):GetValue(), isCommodity)
		if buyout > 0 then
			bid = min(bid, buyout)
		end
		if Environment.IsRetail() and isCommodity and bid ~= buyout then
			Log.PrintUser(L["Did not change prices due to an invalid bid or buyout value."])
		else
			local duration = Table.KeyByValue(TSM.CONST.AUCTION_DURATIONS, button:GetElement("__parent.duration.toggle"):GetValue())
			if duration ~= currentRow:GetField("postTime") then
				TSM.Auctioning.PostScan.ChangePostDetail("postTime", duration)
			end

			-- update buyout first since doing so may change the bid
			if buyout ~= currentRow:GetField(private.perItem and "itemBuyout" or "buyout") then
				TSM.Auctioning.PostScan.ChangePostDetail(private.perItem and "itemBuyout" or "buyout", buyout)
			end

			if not ItemInfo.IsCommodity(context.itemString) and bid ~= currentRow:GetField(private.perItem and "itemBid" or "bid") then
				TSM.Auctioning.PostScan.ChangePostDetail(private.perItem and "itemBid" or "bid", bid)
			end
		end

		fsmPrivate.UpdateDepositCost(context)
		fsmPrivate.UpdateScanFrame(context)
		button:GetBaseElement():HideDialog()
	end
	private.fsm = FSM.New("AUCTIONING")
		:AddState(FSM.NewState("ST_INIT")
			:SetOnEnter(function(context, scanType, scanContext)
				private.hasLastScan = false
				TSM.Auctioning.Log.Truncate()
				TSM.Auctioning.PostScan.Reset()
				TSM.Auctioning.CancelScan.Reset()

				if context.scanThreadId then
					Threading.Kill(context.scanThreadId)
					context.scanThreadId = nil
				end
				context.pausePending = nil
				context.itemString = nil
				context.isScanning = false
				if context.auctionScan then
					context.auctionScan:Release()
					context.auctionScan = nil
					private.auctionScan = context.auctionScan
				end
				if context.pendingFuture then
					context.pendingFuture:Cancel()
					context.pendingFuture = nil
				end

				if scanType then
					return "ST_STARTING_SCAN", scanType, scanContext
				elseif context.scanFrame then
					context.scanFrame:GetParentElement():SetPath("selection", true)
					context.scanFrame = nil
				end
				TSM.UI.AuctionUI.EndedScan(L["Auctioning"])
			end)
			:AddTransition("ST_INIT")
			:AddTransition("ST_STARTING_SCAN")
		)
		:AddState(FSM.NewState("ST_STARTING_SCAN")
			:SetOnEnter(function(context, scanType, scanContext)
				private.hasLastScan = true
				context.scanType = scanType
				if context.scanType == "POST" then
					context.scanThreadId = TSM.Auctioning.PostScan.Prepare()
					private.logQuery:ResetOrderBy()
					private.logQuery:OrderBy("index", true)
				elseif context.scanType == "CANCEL" then
					context.scanThreadId = TSM.Auctioning.CancelScan.Prepare()
					private.logQuery:ResetOrderBy()
					private.logQuery:OrderBy("index", false)
				else
					error("Invalid scan type: "..tostring(context.scanType))
				end
				context.auctionScan = AuctionScan.GetManager()
					:SetResolveSellers(not Environment.IsRetail())
					:SetScript("OnProgressUpdate", private.FSMAuctionScanOnProgressUpdate)
				private.auctionScan = context.auctionScan
				fsmPrivate.UpdateScanFrame(context)
				Threading.SetCallback(context.scanThreadId, private.FSMScanCallback)
				Threading.Start(context.scanThreadId, context.auctionScan, scanContext)
				return "ST_SCANNING"
			end)
			:AddTransition("ST_SCANNING")
		)
		:AddState(FSM.NewState("ST_SCANNING")
			:SetOnEnter(function(context)
				context.isScanning = true
				fsmPrivate.UpdateScanFrame(context)
			end)
			:SetOnExit(function(context)
				context.isScanning = false
			end)
			:AddTransition("ST_RESULTS")
			:AddTransition("ST_INIT")
			:AddEvent("EV_SCAN_PROGRESS_UPDATE", function(context)
				local _, isPaused = context.auctionScan:GetProgress()
				if context.pausePending == isPaused then
					context.pausePending = nil
				end
				if isPaused and context.pausePending == nil then
					return "ST_RESULTS"
				else
					fsmPrivate.UpdateScanFrame(context)
				end
			end)
			:AddEvent("EV_SCAN_COMPLETE", function(context)
				Sound.PlaySound(private.settings.scanCompleteSound)
				return "ST_RESULTS"
			end)
			:AddEvent("EV_PAUSE_RESUME_CLICKED", function(context)
				assert(context.pausePending == nil)
				context.pausePending = true
				context.auctionScan:SetPaused(true)
				fsmPrivate.UpdateScanFrame(context)
			end)
			:AddEvent("EV_EDIT_BUTTON_CLICKED", function(context)
				fsmPrivate.ShowEditDialog(context)
			end)
		)
		:AddState(FSM.NewState("ST_HANDLING_CONFIRM")
			:SetOnEnter(function(context, success, canRetry)
				local isDone = false
				if context.scanType == "POST" then
					TSM.Auctioning.PostScan.HandleConfirm(success, canRetry)
					local _, numConfirmed, numFailed, totalNum = TSM.Auctioning.PostScan.GetStatus()
					if numConfirmed == totalNum then
						if numFailed > 0 then
							-- TODO: need to wait for the player's bags to settle
							Log.PrintfUser(L["Retrying %d auction(s) which failed."], numFailed)
							TSM.Auctioning.PostScan.PrepareFailedPosts()
						else
							isDone = true
						end
					end
				elseif context.scanType == "CANCEL" then
					TSM.Auctioning.CancelScan.HandleConfirm(success, canRetry)
					local _, numConfirmed, numFailed, totalNum = TSM.Auctioning.CancelScan.GetStatus()
					if numConfirmed == totalNum then
						if numFailed > 0 then
							-- TODO: need to wait for the player's auctions to settle
							Log.PrintfUser(L["Retrying %d auction(s) which failed."], numFailed)
							TSM.Auctioning.CancelScan.PrepareFailedCancels()
						else
							isDone = true
						end
					end
				else
					error("Invalid scan type: "..tostring(context.scanType))
				end
				local _, isPaused = context.auctionScan:GetProgress()
				if not isDone then
					return "ST_RESULTS"
				elseif isPaused then
					-- unpause the scan now that we're done
					assert(context.pausePending == nil)
					context.pausePending = false
					context.auctionScan:SetPaused(false)
					return "ST_SCANNING"
				else
					return "ST_DONE"
				end
			end)
			:AddTransition("ST_SCANNING")
			:AddTransition("ST_RESULTS")
			:AddTransition("ST_DONE")
		)
		:AddState(FSM.NewState("ST_RESULTS")
			:SetOnEnter(function(context)
				local _, isPaused = context.auctionScan:GetProgress()
				if not isPaused then
					TSM.UI.AuctionUI.EndedScan(L["Auctioning"])
					Threading.Kill(context.scanThreadId)
				end
				fsmPrivate.UpdateScanFrame(context)
			end)
			:AddTransition("ST_INIT")
			:AddTransition("ST_HANDLING_CONFIRM")
			:AddTransition("ST_SCANNING")
			:AddTransition("ST_DONE")
			:AddEvent("EV_PROCESS_CLICKED", function(context)
				context.scanFrame:GetBaseElement():HideDialog()
				local result, noRetry = nil, nil
				if context.scanType == "POST" then
					result, noRetry = TSM.Auctioning.PostScan.DoProcess()
				elseif context.scanType == "CANCEL" then
					result, noRetry = TSM.Auctioning.CancelScan.DoProcess()
				else
					error("Invalid scan type: "..tostring(context.scanType))
				end
				if not result then
					-- we failed to post / cancel
					return "ST_HANDLING_CONFIRM", false, not noRetry
				end
				context.pendingFuture = result
				context.pendingFuture:SetScript("OnDone", private.FSMPendingFutureOneDone)
				fsmPrivate.UpdateScanFrame(context)
			end)
			:AddEvent("EV_SKIP_CLICKED", function(context)
				local isDone = nil
				if context.scanType == "POST" then
					TSM.Auctioning.PostScan.DoSkip()
					local _, numConfirmed, numFailed, totalNum = TSM.Auctioning.PostScan.GetStatus()
					isDone = numConfirmed == totalNum and numFailed == 0
				elseif context.scanType == "CANCEL" then
					TSM.Auctioning.CancelScan.DoSkip()
					local _, numConfirmed, numFailed, totalNum = TSM.Auctioning.CancelScan.GetStatus()
					isDone = numConfirmed == totalNum and numFailed == 0
				else
					error("Invalid scan type: "..tostring(context.scanType))
				end
				fsmPrivate.UpdateScanFrame(context)
				local _, isPaused = context.auctionScan:GetProgress()
				if isDone and isPaused then
					-- unpause the scan now that we're done
					assert(context.pausePending == nil)
					context.pausePending = false
					context.auctionScan:SetPaused(false)
					return "ST_SCANNING"
				elseif isDone then
					return "ST_DONE"
				end
			end)
			:AddEvent("EV_PENDING_FUTURE_DONE", function(context)
				assert(context.pendingFuture:IsDone())
				local value = context.pendingFuture:GetValue()
				context.pendingFuture = nil
				if value == true then
					return "ST_HANDLING_CONFIRM", true, false
				elseif value == false then
					return "ST_HANDLING_CONFIRM", false, true
				elseif value == nil then
					return "ST_HANDLING_CONFIRM", false, false
				else
					error("Invalid value: "..tostring(value))
				end
			end)
			:AddEvent("EV_PAUSE_RESUME_CLICKED", function(context)
				assert(context.pausePending == nil)
				context.pausePending = false
				context.auctionScan:SetPaused(false)
				return "ST_SCANNING"
			end)
			:AddEvent("EV_EDIT_BUTTON_CLICKED", function(context)
				fsmPrivate.ShowEditDialog(context)
			end)
		)
		:AddState(FSM.NewState("ST_DONE")
			:SetOnEnter(function(context)
				private.canStartNewScan = true
				AuctionTracking.QueryOwnedAuctions()
				Sound.PlaySound(private.settings.confirmCompleteSound)
				fsmPrivate.UpdateScanFrame(context)
			end)
			:SetOnExit(function(context)
				private.canStartNewScan = false
			end)
			:AddTransition("ST_INIT")
		)
		:AddDefaultEvent("EV_START_SCAN", function(context, scanType, scanContext)
			return "ST_INIT", scanType, scanContext
		end)
		:AddDefaultEvent("EV_SCAN_FRAME_SHOWN", function(context, scanFrame)
			context.scanFrame = scanFrame
			fsmPrivate.UpdateScanFrame(context)
		end)
		:AddDefaultEvent("EV_SCAN_FRAME_HIDDEN", function(context)
			context.scanFrame = nil
			context.itemString = nil
		end)
		:AddDefaultEventTransition("EV_BACK_BUTTON_CLICKED", "ST_INIT")
		:AddDefaultEventTransition("EV_AUCTION_HOUSE_CLOSED", "ST_INIT")
		:AddDefaultEvent("EV_PENDING_FUTURE_DONE", function(context)
			error("Unexpected pending future done event")
		end)
		:Init("ST_INIT", fsmContext)
end

function private.FSMAuctionScanOnProgressUpdate(auctionScan)
	-- this even is very spammy while we scan, so silence the FSM logging
	private.fsm:SetLoggingEnabled(false)
	private.fsm:ProcessEvent("EV_SCAN_PROGRESS_UPDATE")
	private.fsm:SetLoggingEnabled(true)
end

function private.FSMScanCallback()
	private.fsm:ProcessEvent("EV_SCAN_COMPLETE")
end

function private.FSMPendingFutureOneDone(value)
	private.fsm:ProcessEvent("EV_PENDING_FUTURE_DONE")
end



-- ============================================================================
-- Private Helper Functions
-- ============================================================================

function private.BagScrollingTableIsSelectionEnabled(_, record)
	return record:GetField("firstOperation") and true or false
end

function private.BagGetOperationText(firstOperation)
	return firstOperation or Theme.GetColor("FEEDBACK_RED"):ColorText(L["Skipped: No assigned operation"])
end

function private.LogGetBuyoutText(buyout)
	return buyout == 0 and "-" or Money.ToString(buyout, nil, "OPT_83_NO_COPPER")
end

function private.LogGetIndexIcon(row)
	if row:GetField("state") == "PENDING" then
		-- color the circle icon to match the color of the text
		return TextureAtlas.GetColoredKey("iconPack.12x12/Circle", TSM.Auctioning.Log.GetColorFromReasonKey(row:GetField("reasonKey")))
	else
		return "iconPack.12x12/Checkmark/Default"
	end
end

function private.MarketValueFunction(row)
	return CustomPrice.GetValue("dbmarket", row:GetItemString() or row:GetBaseItemString())
end

function private.EditDialogCloseBtnOnClick(button)
	button:GetBaseElement():HideDialog()
end

function private.PerItemOnClick(button)
	if private.perItem then
		return
	end

	private.perItem = true
	button:GetElement("__parent.stack")
		:SetTextColor("TEXT")
		:Draw()
	button:SetTextColor("INDICATOR")
		:Draw()

	local row = TSM.Auctioning.PostScan.GetCurrentRow()
	local bidInput = button:GetElement("__parent.__parent.bid.input")
	local buyoutInput = button:GetElement("__parent.__parent.buyout.input")
	local bid = TSM.UI.AuctionUI.ParseBid(bidInput:GetValue())
	local buyout = TSM.UI.AuctionUI.ParseBuyout(buyoutInput:GetValue(), ItemInfo.IsCommodity(row:GetField("itemString")))
	local stackSize = row:GetField("stackSize")
	buyoutInput:SetFocused(false)
		:SetValue(Money.ToString(buyout / stackSize))
		:Draw()
	bidInput:SetFocused(false)
		:SetValue(Money.ToString(bid / stackSize))
		:Draw()
end

function private.PerStackOnClick(button)
	if not private.perItem then
		return
	end

	private.perItem = false
	button:GetElement("__parent.item")
		:SetTextColor("TEXT")
		:Draw()
	button:SetTextColor("INDICATOR")
		:Draw()

	local row = TSM.Auctioning.PostScan.GetCurrentRow()
	local bidInput = button:GetElement("__parent.__parent.bid.input")
	local buyoutInput = button:GetElement("__parent.__parent.buyout.input")
	local bid = TSM.UI.AuctionUI.ParseBid(bidInput:GetValue())
	local buyout = TSM.UI.AuctionUI.ParseBuyout(buyoutInput:GetValue(), ItemInfo.IsCommodity(row:GetField("itemString")))
	local stackSize = row:GetField("stackSize")
	buyoutInput:SetFocused(false)
		:SetValue(Money.ToString(buyout * stackSize))
		:Draw()
	bidInput:SetFocused(false)
		:SetValue(Money.ToString(bid * stackSize))
		:Draw()
end

function private.UpdateSaveButtonState(frame)
	local context = frame:GetElement("saveBtn"):GetContext()
	local isCommodity = ItemInfo.IsCommodity(context.itemString)
	local bidInput = frame:GetElement("bid.input")
	local buyoutInput = frame:GetElement("buyout.input")
	local bid = TSM.UI.AuctionUI.ParseBid(bidInput:GetValue())
	local buyout = TSM.UI.AuctionUI.ParseBuyout(buyoutInput:GetValue(), isCommodity)
	frame:GetElement("saveBtn")
		:SetDisabled((buyout > 0 and bid > buyout) or not bidInput:IsValid() or not buyoutInput:IsValid())
		:Draw()
end

function private.BidBuyoutOnValidationChanged(input)
	private.UpdateSaveButtonState(input:GetElement("__parent.__parent"))
end

function private.BidBuyoutInputOnValueChanged(input)
	local frame = input:GetElement("__parent.__parent")
	local context = frame:GetElement("saveBtn"):GetContext()
	local isCommodity = ItemInfo.IsCommodity(context.itemString)
	local bidInput = frame:GetElement("bid.input")
	local buyoutInput = frame:GetElement("buyout.input")
	local bid = TSM.UI.AuctionUI.ParseBid(bidInput:GetValue())
	local buyout = TSM.UI.AuctionUI.ParseBuyout(buyoutInput:GetValue(), isCommodity)
	if input == buyoutInput and Environment.IsRetail() and isCommodity then
		-- update the bid to match
		bidInput:SetValue(Money.ToString(buyout, nil, "OPT_83_NO_COPPER", "OPT_DISABLE"))
			:Draw()
	elseif input == bidInput and buyout > 0 and bid > buyout then
		-- update the buyout to match
		buyoutInput:SetValue(Money.ToString(bid, nil, "OPT_83_NO_COPPER"))
			:Draw()
	end
	private.UpdateSaveButtonState(frame)
end

function private.BidBuyoutInputOnEnterPressed(input)
	local frame = input:GetElement("__parent.__parent")
	local context = frame:GetElement("saveBtn"):GetContext()
	local isCommodity = ItemInfo.IsCommodity(context.itemString)
	local bidInput = frame:GetElement("bid.input")
	local buyoutInput = frame:GetElement("buyout.input")
	local bid = TSM.UI.AuctionUI.ParseBid(bidInput:GetValue())
	local buyout = TSM.UI.AuctionUI.ParseBuyout(buyoutInput:GetValue(), isCommodity)
	local value = input:GetContext() == "bid" and bid or buyout
	input:SetValue(Money.ToString(value, nil, "OPT_83_NO_COPPER"))
	input:Draw()
	if input == buyoutInput and buyout > 0 and buyout < bid then
		-- update the bid to match
		bidInput:SetValue(Money.ToString(value, nil, "OPT_83_NO_COPPER"))
			:Draw()
	end
	private.UpdateSaveButtonState(frame)
end

function private.BidBuyoutValidateFunc(input, value)
	local errMsg = nil
	local context = input:GetContext()
	if context == "bid" then
		value, errMsg = TSM.UI.AuctionUI.ParseBid(value)
	else
		local isCommodity = context == "itemBuyout"
		value, errMsg = TSM.UI.AuctionUI.ParseBuyout(value, isCommodity)
	end
	if not value then
		return false, L["Invalid price."].." "..errMsg
	end
	return true
end
