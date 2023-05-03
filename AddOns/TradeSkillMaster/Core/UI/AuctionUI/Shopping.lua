-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local Shopping = TSM.UI.AuctionUI:NewPackage("Shopping")
local Environment = TSM.Include("Environment")
local ItemClass = TSM.Include("Data.ItemClass")
local L = TSM.Include("Locale").GetTable()
local Container = TSM.Include("Util.Container")
local FSM = TSM.Include("Util.FSM")
local TempTable = TSM.Include("Util.TempTable")
local Table = TSM.Include("Util.Table")
local Money = TSM.Include("Util.Money")
local Log = TSM.Include("Util.Log")
local Math = TSM.Include("Util.Math")
local ItemString = TSM.Include("Util.ItemString")
local Delay = TSM.Include("Util.Delay")
local TextureAtlas = TSM.Include("Util.TextureAtlas")
local DefaultUI = TSM.Include("Service.DefaultUI")
local ItemInfo = TSM.Include("Service.ItemInfo")
local CustomPrice = TSM.Include("Service.CustomPrice")
local AuctionTracking = TSM.Include("Service.AuctionTracking")
local BagTracking = TSM.Include("Service.BagTracking")
local AuctionHouseWrapper = TSM.Include("Service.AuctionHouseWrapper")
local AuctionScan = TSM.Include("Service.AuctionScan")
local MailTracking = TSM.Include("Service.MailTracking")
local Settings = TSM.Include("Service.Settings")
local PlayerInfo = TSM.Include("Service.PlayerInfo")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local private = {
	maxLevel = nil,
	settings = nil,
	fsm = nil,
	rarityList = nil,
	frame = nil,
	hasLastScan = false,
	contentPath = "selection",
	selectedGroups = {},
	groupSearch = "",
	filterText = "",
	searchName = "",
	postContext = {
		itemString = nil,
		seller = nil,
		stackSize = nil,
		displayedBid = nil,
		itemDisplayedBid = nil,
		buyout = nil,
	},
	itemString = nil,
	postStack = nil,
	postQuantity = nil,
	postTimeStr = nil,
	perItem = true,
	updateCallbacks = {},
	itemLocation = ItemLocation:CreateEmpty(),
	selectionChangedTimer = nil,
}
local MAX_ITEM_LEVEL = 500
local PLAYER_NAME = UnitName("player")
local ARMOR_TYPES = {
	[GetItemSubClassInfo(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Plate)] = true,
	[GetItemSubClassInfo(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Mail)] = true,
	[GetItemSubClassInfo(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Leather)] = true,
	[GetItemSubClassInfo(Enum.ItemClass.Armor, Enum.ItemArmorSubclass.Cloth)] = true,
}
local INVENTORY_TYPES = {
	GetItemInventorySlotInfo(Enum.InventoryType.IndexHeadType),
	GetItemInventorySlotInfo(Enum.InventoryType.IndexShoulderType),
	GetItemInventorySlotInfo(Enum.InventoryType.IndexChestType),
	GetItemInventorySlotInfo(Enum.InventoryType.IndexWaistType),
	GetItemInventorySlotInfo(Enum.InventoryType.IndexLegsType),
	GetItemInventorySlotInfo(Enum.InventoryType.IndexFeetType),
	GetItemInventorySlotInfo(Enum.InventoryType.IndexWristType),
	GetItemInventorySlotInfo(Enum.InventoryType.IndexHandType),
}
local GENERIC_TYPES = {
	GetItemInventorySlotInfo(Enum.InventoryType.IndexNeckType),
	GetItemInventorySlotInfo(Enum.InventoryType.IndexCloakType),
	GetItemInventorySlotInfo(Enum.InventoryType.IndexFingerType),
	GetItemInventorySlotInfo(Enum.InventoryType.IndexTrinketType),
	GetItemInventorySlotInfo(Enum.InventoryType.IndexHoldableType),
	GetItemInventorySlotInfo(Enum.InventoryType.IndexBodyType),
}



-- ============================================================================
-- Module Functions
-- ============================================================================

function Shopping.OnInitialize()
	if Environment.IsWrathClassic() then
		private.maxLevel = 80
	elseif Environment.IsVanillaClassic() then
		private.maxLevel = 60
	elseif Environment.IsRetail() then
		private.maxLevel = 70
	else
		error("Invalid game version")
	end
	private.settings = Settings.NewView()
		:AddKey("global", "auctionUIContext", "shoppingSelectionDividedContainer")
		:AddKey("global", "auctionUIContext", "shoppingAuctionScrollingTable")
		:AddKey("global", "auctionUIContext", "shoppingSearchesTabGroup")
		:AddKey("global", "shoppingOptions", "searchAutoFocus")
		:AddKey("char", "auctionUIContext", "shoppingGroupTree")
	private.postTimeStr = TSM.CONST.AUCTION_DURATIONS[2]
	private.selectionChangedTimer = Delay.CreateTimer("SHOPPING_SELECTION_CHANGED", private.AuctionsOnSelectionChangedDelayed)
	TSM.UI.AuctionUI.RegisterTopLevelPage(L["Browse"], private.GetShoppingFrame, private.OnItemLinked)
	private.FSMCreate()
end

function Shopping.StartGatheringSearch(items, stateCallback, buyCallback, mode)
	assert(Shopping.IsVisible())
	private.frame:SetPath("selection")
	private.StartGatheringSearchHelper(private.frame, items, stateCallback, buyCallback, mode)
end

function Shopping.StartItemSearch(item)
	private.OnItemLinked(ItemInfo.GetName(item), item, true)
end

function Shopping.IsVisible()
	return TSM.UI.AuctionUI.IsPageOpen(L["Browse"])
end

function Shopping.RegisterUpdateCallback(callback)
	tinsert(private.updateCallbacks, callback)
end



-- ============================================================================
-- Shopping UI
-- ============================================================================

function private.GetShoppingFrame()
	UIUtils.AnalyticsRecordPathChange("auction", "shopping")
	if not private.hasLastScan then
		private.contentPath = "selection"
	end
	local frame = UIElements.New("ViewContainer", "shopping")
		:SetNavCallback(private.GetShoppingContentFrame)
		:AddPath("selection")
		:AddPath("scan")
		:SetPath(private.contentPath)
		:SetScript("OnHide", private.FrameOnHide)
	private.frame = frame
	for _, callback in ipairs(private.updateCallbacks) do
		callback()
	end
	return frame
end

function private.GetShoppingContentFrame(viewContainer, path)
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
	UIUtils.AnalyticsRecordPathChange("auction", "shopping", "selection")
	local frame = UIElements.New("DividedContainer", "selection")
		:SetSettingsContext(private.settings, "shoppingSelectionDividedContainer")
		:SetMinWidth(220, 350)
		:SetBackgroundColor("PRIMARY_BG")
		:SetLeftChild(UIElements.New("Frame", "groupSelection")
			:SetLayout("VERTICAL")
			:SetPadding(0, 0, 8, 0)
			:AddChild(UIElements.New("Frame", "title")
				:SetLayout("HORIZONTAL")
				:SetMargin(8, 8, 0, 8)
				:SetHeight(24)
				:AddChild(UIElements.New("Input", "search")
					:SetIconTexture("iconPack.18x18/Search")
					:AllowItemInsert(true)
					:SetClearButtonEnabled(true)
					:SetValue(private.groupSearch)
					:SetHintText(L["Search Groups"])
					:SetScript("OnValueChanged", private.GroupSearchOnValueChanged)
				)
				:AddChild(UIElements.New("Button", "expandAllBtn")
					:SetSize(24, 24)
					:SetMargin(8, 4, 0, 0)
					:SetBackground("iconPack.18x18/Expand All")
					:SetScript("OnClick", private.ExpandAllGroupsOnClick)
					:SetTooltip(L["Expand / Collapse All Groups"])
				)
				:AddChild(UIElements.New("Button", "selectAllBtn")
					:SetSize(24, 24)
					:SetBackground("iconPack.18x18/Select All")
					:SetScript("OnClick", private.SelectAllGroupsOnClick)
					:SetTooltip(L["Select / Deselect All Groups"])
				)
			)
			:AddChild(UIElements.New("HorizontalLine", "line"))
			:AddChild(UIElements.New("ApplicationGroupTree", "groupTree")
				:SetSettingsContext(private.settings, "shoppingGroupTree")
				:SetQuery(TSM.Groups.CreateQuery(), "Shopping")
				:SetSearchString(private.groupSearch)
				:SetScript("OnGroupSelectionChanged", private.GroupTreeOnGroupSelectionChanged)
			)
			:AddChild(UIElements.New("HorizontalLine", "line2"))
			:AddChild(UIElements.New("Frame", "bottom")
				:SetLayout("VERTICAL")
				:SetHeight(40)
				:SetBackgroundColor("PRIMARY_BG_ALT")
				:AddChild(UIElements.New("ActionButton", "scanBtn")
					:SetHeight(24)
					:SetMargin(8)
					:SetText(L["Run Shopping Scan"])
					:SetDisabled(true)
					:SetScript("OnClick", private.ScanButtonOnClick)
				)
			)
		)
		:SetRightChild(UIElements.New("ViewContainer", "content")
			:SetNavCallback(private.GetSelectionContent)
			:AddPath("search", true)
			:AddPath("advanced")
		)
		:SetScript("OnUpdate", private.SelectionFrameOnUpdate)

	return frame
end

function private.SelectionFrameOnUpdate(frame)
	frame:SetScript("OnUpdate", nil)
	frame:GetElement("groupSelection.bottom.scanBtn"):SetDisabled(frame:GetElement("groupSelection.groupTree"):IsSelectionCleared(true)):Draw()
end

function private.GetSelectionContent(viewContainer, path)
	if path == "search" then
		return private.GetSelectionSearchFrame()
	elseif path == "advanced" then
		return private.GetAdvancedFrame()
	else
		error("Unexpected path: "..tostring(path))
	end
end

function private.GetSelectionSearchFrame()
	return UIElements.New("Frame", "search")
		:SetLayout("VERTICAL")
		:SetPadding(8, 8, 8, 0)
		:SetBackgroundColor("PRIMARY_BG_ALT")
		:AddChild(UIElements.New("Frame", "header")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 0, 20)
			:AddChild(UIElements.New("Input", "filterInput")
				:SetIconTexture("iconPack.18x18/Search")
				:SetClearButtonEnabled(true)
				:SetFocused(private.settings.searchAutoFocus)
				:SetHintText(L["Search the auction house"])
				:SetScript("OnValueChanged", private.FilterInputOnValueChanged)
				:SetScript("OnEnterPressed", private.FilterInputOnEnterPressed)
			)
			:AddChild(UIElements.New("ActionButton", "search")
				:SetWidth(90)
				:SetMargin(8, 0, 0, 0)
				:SetDisabled(not Environment.IsRetail())
				:SetText(L["Search"])
				:SetScript("OnClick", private.SearchButtonOnClick)
			)
		)
		:AddChild(UIElements.New("Frame", "buttonsLine1")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 0, 10)
			:AddChild(UIElements.New("ActionButton", "advSearchBtn")
				:SetMargin(0, 8, 0, 0)
				:SetText(L["Advanced Item Search"])
				:SetScript("OnClick", private.AdvancedButtonOnClick)
			)
			:AddChild(UIElements.New("ActionButton", "vendorBtn")
				:SetText(L["Vendor Search"])
				:SetScript("OnClick", private.VendorButtonOnClick)
			)
		)
		:AddChild(UIElements.New("Frame", "buttonsLine2")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:AddChild(UIElements.New("ActionButton", "disenchantBtn")
				:SetMargin(0, 8, 0, 0)
				:SetText(L["Disenchant Search"])
				:SetScript("OnClick", private.DisenchantButtonOnClick)
			)
			:AddChild(UIElements.New("ActionButton", "dealsBtn")
				:SetText(L["Great Deals Search"])
				:SetDisabled(not TSM.Shopping.GreatDealsSearch.GetFilter())
				:SetScript("OnClick", private.DealsButtonOnClick)
			)
		)
		:AddChild(UIElements.New("TabGroup", "buttons")
			:SetMargin(-8, -8, 21, 0)
			:SetNavCallback(private.GetSearchesElement)
			:SetSettingsContext(private.settings, "shoppingSearchesTabGroup")
			:AddPath(L["Recent Searches"])
			:AddPath(L["Favorite Searches"])
		)
end

function private.GetAdvancedFrame()
	if not private.rarityList then
		private.rarityList = {}
		for i = 1, 7 do
			tinsert(private.rarityList, _G["ITEM_QUALITY"..i.."_DESC"])
		end
	end
	return UIElements.New("Frame", "advanced")
		:SetLayout("VERTICAL")
		:SetBackgroundColor("PRIMARY_BG_ALT")
		:AddChild(UIElements.New("ScrollFrame", "search")
			:AddChild(UIElements.New("Frame", "header")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(8)
				:AddChild(UIElements.New("ActionButton", "backBtn")
					:SetWidth(64)
					:SetText(TextureAtlas.GetTextureLink(TextureAtlas.GetFlippedHorizontallyKey("iconPack.14x14/Chevron/Right"))..BACK)
					:SetScript("OnClick", private.AdvancedBackButtonOnClick)
				)
				:AddChild(UIElements.New("Input", "keyword")
					:SetMargin(8, 0, 0, 0)
					:SetIconTexture("iconPack.18x18/Search")
					:SetClearButtonEnabled(true)
					:SetHintText(L["Filter by Keyword"])
				)
			)
			:AddChild(UIElements.New("Frame", "body")
				:SetLayout("VERTICAL")
				:SetPadding(8, 8, 0, 0)
				:AddChild(UIElements.New("Frame", "classAndSubClassLabels")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:SetMargin(0, 0, 16, 0)
					:AddChild(UIElements.New("Text", "classLabel")
						:SetFont("BODY_BODY2_MEDIUM")
						:SetText(L["Item Class"])
					)
					:AddChild(UIElements.New("Text", "subClassLabel")
						:SetMargin(20, 0, 0, 0)
						:SetFont("BODY_BODY2_MEDIUM")
						:SetText(L["Item Subclass"])
					)
				)
				:AddChild(UIElements.New("Frame", "classAndSubClass")
					:SetLayout("HORIZONTAL")
					:SetHeight(24)
					:SetMargin(0, 0, 4, 0)
					:AddChild(UIElements.New("SelectionDropdown", "classDropdown")
						:SetMargin(0, 20, 0, 0)
						:SetItems(ItemClass.GetClasses())
						:SetScript("OnSelectionChanged", private.ClassDropdownOnSelectionChanged)
						:SetHintText(L["All Item Classes"])
					)
					:AddChild(UIElements.New("SelectionDropdown", "subClassDropdown")
						:SetDisabled(true)
						:SetScript("OnSelectionChanged", private.SubClassDropdownOnSelectionChanged)
						:SetHintText(L["All Subclasses"])
					)
				)
				:AddChild(UIElements.New("Frame", "itemSlot")
					:SetLayout("VERTICAL")
					:SetMargin(0, 0, 16, 0)
					:AddChild(UIElements.New("Text", "label")
						:SetHeight(20)
						:SetMargin(0, 0, 0, 4)
						:SetFont("BODY_BODY2_MEDIUM")
						:SetText(L["Item Slot"])
					)
					:AddChild(UIElements.New("Frame", "frame")
						:SetLayout("HORIZONTAL")
						:SetHeight(24)
						:AddChild(UIElements.New("SelectionDropdown", "dropdown")
							:SetWidth(238)
							:SetDisabled(true)
							:SetHintText(L["All Slots"])
						)
						:AddChild(UIElements.New("Spacer", "spacer"))
					)
				)
				:AddChild(UIElements.New("Frame", "frame")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:SetMargin(0, 0, 16, 0)
					:AddChild(UIElements.New("Text", "label")
						:SetFont("BODY_BODY2_MEDIUM")
						:SetText(L["Required Level Range"])
					)
				)
				:AddChild(UIElements.New("Frame", "level")
					:SetLayout("HORIZONTAL")
					:SetHeight(24)
					:SetMargin(0, 0, 2, 0)
					:AddChild(UIElements.New("RangeInput", "slider")
						:SetRange(0, private.maxLevel)
					)
				)
				:AddChild(UIElements.New("Frame", "frame")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:SetMargin(0, 0, 18, 0)
					:AddChild(UIElements.New("Text", "label")
						:SetFont("BODY_BODY2_MEDIUM")
						:SetText(L["Item Level Range"])
					)
				)
				:AddChild(UIElements.New("Frame", "itemLevel")
					:SetLayout("HORIZONTAL")
					:SetHeight(24)
					:SetMargin(0, 0, 2, 0)
					:AddChild(UIElements.New("RangeInput", "slider")
						:SetRange(0, MAX_ITEM_LEVEL)
					)
				)
				:AddChild(UIElements.New("Frame", "content")
					:SetLayout("HORIZONTAL")
					:SetHeight(48)
					:SetMargin(0, 0, 18, 0)
					:AddChild(UIElements.New("Frame", "frame")
						:SetLayout("VERTICAL")
						:SetWidth(254)
						:AddChild(UIElements.New("Text", "label")
							:SetFont("BODY_BODY2_MEDIUM")
							:SetText(L["Maximum Quantity to Buy"])
						)
						:AddChild(UIElements.New("Frame", "maxQty")
							:SetLayout("HORIZONTAL")
							:SetHeight(24)
							:SetMargin(0, 0, 4, 0)
							:AddChild(UIElements.New("Input", "input")
								:SetWidth(178)
								:SetMargin(0, 4, 0, 0)
								:SetBackgroundColor("ACTIVE_BG")
								:SetValidateFunc("NUMBER", "0:2000")
								:SetValue(0)
							)
							:AddChild(UIElements.New("Text", "label")
								:SetWidth(100)
								:SetFont("BODY_BODY3_MEDIUM")
								:SetFormattedText("(%d - %d)", 0, 2000)
							)
						)
					)
					:AddChild(UIElements.New("Frame", "minRarity")
						:SetLayout("VERTICAL")
						:AddChild(UIElements.New("Text", "label")
							:SetFont("BODY_BODY2_MEDIUM")
							:SetText(L["Minimum Rarity"])
						)
						:AddChild(UIElements.New("SelectionDropdown", "dropdown")
							:SetHeight(24)
							:SetMargin(0, 0, 4, 0)
							:SetItems(private.rarityList)
							:SetHintText(L["All"])
						)
					)
				)
				:AddChild(UIElements.New("Frame", "filters")
					:SetLayout("HORIZONTAL")
					:SetMargin(0, 0, 16, 8)
					:AddChildIf(Environment.HasFeature(Environment.FEATURES.AH_UNCOLLECTED_FILTER), UIElements.New("Frame", "uncollected")
						:SetLayout("HORIZONTAL")
						:SetHeight(20)
						:AddChild(UIElements.New("Checkbox", "checkbox")
							:SetText(L["Uncollected Only"])
						)
					)
					:AddChildIf(Environment.HasFeature(Environment.FEATURES.AH_UPGRADES_FILTER), UIElements.New("Frame", "upgrades")
						:SetLayout("HORIZONTAL")
						:SetHeight(20)
						:AddChild(UIElements.New("Checkbox", "checkbox")
							:SetText(L["Upgrades Only"])
						)
					)
					:AddChild(UIElements.New("Frame", "usable")
						:SetLayout("HORIZONTAL")
						:SetHeight(20)
						:AddChild(UIElements.New("Checkbox", "checkbox")
							:SetText(L["Usable Only"])
						)
					)
				)
				:AddChild(UIElements.New("Frame", "filters2")
					:SetLayout("HORIZONTAL")
					:SetHeight(20)
					:AddChild(UIElements.New("Checkbox", "exact")
						:SetText(L["Exact Match"])
					)
					:AddChild(UIElements.New("Checkbox", "crafting")
						:SetText(L["Crafting Mode"])
					)
					:AddChild(UIElements.New("Spacer", "spacer"))
				)
			)
		)
		:AddChild(UIElements.New("HorizontalLine", "line"))
		:AddChild(UIElements.New("Frame", "buttons")
			:SetLayout("HORIZONTAL")
			:SetHeight(40)
			:SetPadding(8)
			:SetBackgroundColor("PRIMARY_BG_ALT")
			:AddChild(UIElements.New("ActionButton", "startBtn")
				:SetHeight(24)
				:SetMargin(0, 8, 0, 0)
				:SetText(L["Run Advanced Item Search"])
				:SetScript("OnClick", private.AdvancedStartOnClick)
			)
			:AddChild(UIElements.New("Button", "resetBtn")
				:SetSize("AUTO", 24)
				:SetFont("BODY_BODY3_MEDIUM")
				:SetText(L["Reset All Filters"])
				:SetScript("OnClick", private.ResetButtonOnClick)
			)
		)
end

function private.GetSearchesElement(self, button)
	if button == L["Recent Searches"] then
		return UIElements.New("SearchList", "list")
			:SetQuery(TSM.Shopping.SavedSearches.CreateRecentSearchesQuery())
			:SetEditButtonHidden(true)
			:SetScript("OnFavoriteChanged", private.SearchListOnFavoriteChanged)
			:SetScript("OnDelete", private.SearchListOnDelete)
			:SetScript("OnRowClick", private.SearchListOnRowClick)
	elseif button == L["Favorite Searches"] then
		return UIElements.New("SearchList", "list")
			:SetQuery(TSM.Shopping.SavedSearches.CreateFavoriteSearchesQuery())
			:SetScript("OnFavoriteChanged", private.SearchListOnFavoriteChanged)
			:SetScript("OnEditClick", private.SearchListOnEditClick)
			:SetScript("OnDelete", private.SearchListOnDelete)
			:SetScript("OnRowClick", private.SearchListOnRowClick)
	else
		error("Unexpected button: "..tostring(button))
	end
end

function private.GetScanFrame()
	UIUtils.AnalyticsRecordPathChange("auction", "shopping", "scan")
	local frame = UIElements.New("Frame", "scan")
		:SetLayout("VERTICAL")
		:SetBackgroundColor("PRIMARY_BG_ALT")
		:AddChild(UIElements.New("Frame", "searchFrame")
			:SetLayout("HORIZONTAL")
			:SetHeight(40)
			:SetPadding(8)
			:AddChild(UIElements.New("Frame", "back")
				:SetLayout("HORIZONTAL")
				:SetHeight(24)
				:SetMargin(0, 8, 0, 0)
				:AddChild(UIElements.New("ActionButton", "button")
					:SetWidth(64)
					:SetText(TextureAtlas.GetTextureLink(TextureAtlas.GetFlippedHorizontallyKey("iconPack.14x14/Chevron/Right"))..BACK)
					:SetScript("OnClick", private.ScanBackButtonOnClick)
				)
			)
			:AddChild(UIElements.New("Input", "filterInput")
				:SetIconTexture("iconPack.18x18/Search")
				:SetClearButtonEnabled(true)
				:SetHintText(L["Enter Filter"])
				:SetValue(private.searchName)
				:SetScript("OnEnterPressed", private.ScanFilterInputOnEnterPressed)
			)
			:AddChild(UIElements.New("ActionButton", "rescanBtn")
				:SetWidth(140)
				:SetMargin(8, 0, 0, 0)
				:SetText(L["Rescan"])
				:SetScript("OnClick", private.RescanBtnOnClick)
			)
		)
		:AddChild(UIElements.New("AuctionScrollingTable", "auctions")
			:SetSettingsContext(private.settings, "shoppingAuctionScrollingTable")
			:SetBrowseResultsVisible(true)
			:SetScript("OnSelectionChanged", private.AuctionsOnSelectionChanged)
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
				:SetScript("OnClick", private.PauseResumeOnClick)
			)
			:AddChild(UIElements.New("ProgressBar", "progressBar")
				:SetHeight(24)
				:SetMargin(0, 8, 0, 0)
				:SetProgress(0)
				:SetProgressIconHidden(false)
				:SetText(L["Starting Scan..."])
			)
			:AddChild(UIElements.New("ActionButton", "postBtn")
				:SetSize(107, 24)
				:SetMargin(0, 8, 0, 0)
				:SetText(L["Post"])
				:SetDisabled(true)
				:SetScript("OnClick", private.AuctionsOnPostButtonClick)
			)
			:AddChild(UIElements.New("VerticalLine", "line")
				:SetHeight(24)
				:SetMargin(0, 8, 0, 0)
			)
			:AddChild(UIElements.New("ActionButton", "bidBtn")
				:SetSize(107, 24)
				:SetMargin(0, 8, 0, 0)
				:SetText(BID)
				:SetDisabled(true)
				:SetScript("OnClick", private.BidBtnOnClick)
			)
			:AddChild(UIElements.NewNamed("ActionButton", "buyoutBtn", "TSMShoppingBuyoutBtn")
				:SetSize(107, 24)
				:SetText(BUYOUT)
				:SetDisabled(true)
				:DisableClickCooldown(true)
				:SetScript("OnClick", private.BuyoutBtnOnClick)
			)
			:AddChild(UIElements.New("ActionButton", "cancelBtn")
				:SetSize(107, 24)
				:SetText(CANCEL)
				:SetDisabled(true)
				:DisableClickCooldown(true)
				:SetScript("OnClick", private.CancelBtnOnClick)
			)
		)
		:SetScript("OnUpdate", private.ScanFrameOnUpdate)
		:SetScript("OnHide", private.ScanFrameOnHide)
	frame:GetElement("bottom.cancelBtn"):Hide()
	return frame
end

function private.BidBtnOnClick(button)
	private.fsm:ProcessEvent("EV_BID_CLICKED")
end

function private.BuyoutBtnOnClick(button)
	private.fsm:ProcessEvent("EV_BUYOUT_CLICKED")
end

function private.CancelBtnOnClick(button)
	private.fsm:ProcessEvent("EV_CANCEL_CLICKED")
end

function private.PostDialogShow(baseFrame, row)
	baseFrame:ShowDialogFrame(UIElements.New("Frame", "frame")
		:SetLayout("VERTICAL")
		:SetSize(326, Environment.IsRetail() and 344 or 380)
		:SetPadding(12)
		:AddAnchor("CENTER")
		:SetBackgroundColor("FRAME_BG", true)
		:SetMouseEnabled(true)
		:AddChild(UIElements.New("ViewContainer", "view")
			:SetNavCallback(private.GetViewContentFrame)
			:SetContext(row)
			:AddPath("posting", true)
			:AddPath("selection")
		)
		:SetScript("OnHide", private.PostDialogOnHide)
	)
end

function private.PostDialogOnHide(frame)
	private.itemString = nil
end

function private.GetViewContentFrame(_, path)
	if path == "posting" then
		return private.GetPostingFrame()
	elseif path == "selection" then
		return private.GetPostSelectionFrame()
	else
		error("Unexpected path: "..tostring(path))
	end
end

function private.GetPostingFrame()
	return UIElements.New("Frame", "posting")
		:SetLayout("VERTICAL")
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
				:SetText(L["Post from Shopping Scan"])
			)
			:AddChild(UIElements.New("Button", "closeBtn")
				:SetMargin(0, -4, 0, 0)
				:SetBackgroundAndSize("iconPack.24x24/Close/Default")
				:SetScript("OnClick", private.PostDialogCloseBtnOnClick)
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
			)
			:AddChild(UIElements.New("Text", "name")
				:SetHeight(36)
				:SetFont("ITEM_BODY1")
			)
			:AddChild(UIElements.New("Button", "editBtn")
				:SetMargin(8, 0, 0, 0)
				:SetBackgroundAndSize("iconPack.18x18/Edit")
				:SetScript("OnClick", private.ItemBtnOnClick)
			)
		)
		:AddChildIf(Environment.HasFeature(Environment.FEATURES.AH_STACKS), UIElements.New("Frame", "numStacks")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 0, 12)
			:AddChild(UIElements.New("Text", "desc")
				:SetFont("BODY_BODY2")
				:SetText(L["Stack(s)"]..":")
			)
			:AddChild(UIElements.New("Input", "input")
				:SetWidth(140)
				:SetMargin(0, 8, 0, 0)
				:SetBackgroundColor("PRIMARY_BG_ALT")
				:SetJustifyH("RIGHT")
				:SetValidateFunc("NUMBER", "0:5000")
				:SetValue(1)
				:SetScript("OnValueChanged", private.StackNumInputOnValueChanged)
			)
			:AddChild(UIElements.New("ActionButton", "maxBtn")
				:SetWidth(64)
				:SetText(L["Max"])
				:SetScript("OnClick", private.MaxStackNumBtnOnClick)
			)
		)
		:AddChild(UIElements.New("Frame", "quantity")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 0, 12)
			:AddChild(UIElements.New("Text", "desc")
				:SetFont("BODY_BODY2")
				:SetText(L["Quantity"]..":")
			)
			:AddChild(UIElements.New("Input", "input")
				:SetWidth(140)
				:SetMargin(0, 8, 0, 0)
				:SetBackgroundColor("PRIMARY_BG_ALT")
				:SetJustifyH("RIGHT")
				:SetValidateFunc("NUMBER", "0:5000")
				:SetScript("OnValueChanged", private.QuantityInputOnValueChanged)
			)
			:AddChild(UIElements.New("ActionButton", "maxBtn")
				:SetWidth(64)
				:SetText(L["Max"])
				:SetScript("OnClick", private.MaxQuantityBtnOnClick)
			)
		)
		:AddChild(UIElements.New("Frame", "duration")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 0, 8)
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
				:SetOption(private.postTimeStr)
				:SetScript("OnValueChanged", private.DurationOnValueChanged)
			)
		)
		:AddChild(UIElements.New("Spacer", "spacer"))
		:AddChild(UIElements.New("Frame", "per")
			:SetLayout("HORIZONTAL")
			:SetHeight(20)
			:SetMargin(0, 0, 0, 8)
			:AddChild(UIElements.New("Spacer", "spacer"))
			:AddChild(UIElements.New("Button", "item")
				:SetWidth("AUTO")
				:SetMargin(0, 8, 0, 0)
				:SetFont("BODY_BODY2_MEDIUM")
				:SetJustifyH("RIGHT")
				:SetTextColor("INDICATOR")
				:SetText(L["Per Item"])
				:SetScript("OnClick", Environment.HasFeature(Environment.FEATURES.AH_STACKS) and private.PerItemOnClick or nil)
			)
			:AddChildIf(Environment.HasFeature(Environment.FEATURES.AH_STACKS), UIElements.New("Button", "stack")
				:SetWidth("AUTO")
				:SetJustifyH("RIGHT")
				:SetFont("BODY_BODY2_MEDIUM")
				:SetTextColor("TEXT")
				:SetText(L["Per Stack"])
				:SetScript("OnClick", Environment.HasFeature(Environment.FEATURES.AH_STACKS) and private.PerStackOnClick or nil)
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
				:SetContext("bid")
				:SetJustifyH("RIGHT")
				:SetTabPaths("__parent.__parent.quantity.input", "__parent.__parent.buyout.input")
				:SetScript("OnValidationChanged", private.BidBuyoutOnValidationChanged)
				:SetScript("OnValueChanged", private.BidBuyoutInputOnValueChanged)
				:SetScript("OnEnterPressed", private.BidBuyoutInputOnEnterPressed)
			)
		)
		:AddChild(UIElements.New("Frame", "buyout")
			:SetLayout("HORIZONTAL")
			:SetHeight(24)
			:SetMargin(0, 0, 0, 10)
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
				:SetContext("buyout")
				:SetJustifyH("RIGHT")
				:SetTabPaths("__parent.__parent.bid.input", "__parent.__parent.quantity.input")
				:SetScript("OnValidationChanged", private.BidBuyoutOnValidationChanged)
				:SetScript("OnValueChanged", private.BidBuyoutInputOnValueChanged)
				:SetScript("OnEnterPressed", private.BidBuyoutInputOnEnterPressed)
			)
		)
		:AddChild(UIElements.New("Frame", "deposit")
			:SetLayout("HORIZONTAL")
			:SetHeight(20)
			:SetMargin(0, 0, 0, 15)
			:AddChild(UIElements.New("Text", "desc")
				:SetWidth("AUTO")
				:SetFont("BODY_BODY2")
				:SetText(L["Deposit Cost"]..":")
			)
			:AddChild(UIElements.New("Text", "text")
				:SetFont("TABLE_TABLE1")
				:SetJustifyH("RIGHT")
			)
		)
		:AddChild(UIElements.New("ActionButton", "confirmBtn")
			:SetHeight(26)
			:SetText(L["Post Auction"])
			:SetScript("OnClick", private.PostButtonOnClick)
		)
		:SetScript("OnUpdate", private.PostingFrameOnUpdate)
end

function private.GetPostSelectionFrame()
	local query = BagTracking.CreateQueryBagsItemAuctionable(ItemString.GetBase(private.itemString))
	local frame = UIElements.New("Frame", "selection")
		:SetLayout("VERTICAL")
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
				:SetText(L["Item Selection"])
			)
			:AddChild(UIElements.New("Button", "closeBtn")
				:SetMargin(0, -4, 0, 0)
				:SetBackgroundAndSize("iconPack.24x24/Close/Default")
				:SetScript("OnClick", private.PostDialogCloseBtnOnClick)
			)
		)
		:AddChild(UIElements.New("QueryScrollingTable", "items")
			:SetHeaderHidden(true)
			:GetScrollingTableInfo()
				:NewColumn("item")
					:SetTitle(L["Item"])
					:SetFont("ITEM_BODY3")
					:SetJustifyH("LEFT")
					:SetIconSize(14)
					:SetTextInfo("itemString", UIUtils.GetDisplayItemName)
					:SetIconInfo("itemString", ItemInfo.GetTexture)
					:SetTooltipInfo("itemString")
					:DisableHiding()
					:Commit()
				:Commit()
			:SetQuery(query)
			:SetAutoReleaseQuery(true)
			:SetScript("OnRowClick", private.ItemQueryOnRowClick)
		)
		:AddChild(UIElements.New("ActionButton", "backBtn")
			:SetMargin(0, 0, 9, 0)
			:SetHeight(26)
			:SetText(BACK)
			:SetScript("OnClick", private.ViewBackButtonOnClick)
		)

	return frame
end

function private.PostingFrameOnUpdate(frame)
	frame:SetScript("OnUpdate", nil)

	local postContext = frame:GetParentElement():GetContext()
	if not private.itemString then
		assert(postContext.itemString)
		local foundItem = false
		local backupItemString = nil
		local query = BagTracking.CreateQueryBagsAuctionable()
			:OrderBy("slotId", true)
			:Select("itemString")
		for _, itemString in query:Iterator() do
			if itemString == postContext.itemString then
				foundItem = true
			elseif not backupItemString and ItemString.GetBase(itemString) == postContext.baseItemString then
				backupItemString = itemString
			end
		end
		query:Release()
		private.itemString = foundItem and postContext.itemString or backupItemString

		if not private.itemString then
			frame:GetBaseElement():HideDialog()
			Log.PrintfUser(L["Failed to post %sx%d as the item no longer exists in your bags."], ItemInfo.GetName(postContext.itemString), postContext.quantity)
			private.frame:GetElement("scan.bottom.postBtn")
				:SetDisabled(true)
				:Draw()
			return
		end
	end
	local undercut = PlayerInfo.IsPlayer(postContext.ownerStr, true, true, true) and 0 or 1
	local bid = postContext.itemDisplayedBid - undercut
	if not Environment.HasFeature(Environment.FEATURES.AH_COPPER) then
		bid = Math.Round(bid, COPPER_PER_SILVER)
	end
	if bid <= 0 then
		bid = 1
	elseif bid > MAXIMUM_BID_PRICE then
		bid = MAXIMUM_BID_PRICE
	end
	local buyout = nil
	if Environment.HasFeature(Environment.FEATURES.AH_COPPER) then
		buyout = postContext.itemBuyout - undercut
	else
		buyout = Math.Round(postContext.itemBuyout - undercut, COPPER_PER_SILVER)
	end
	if buyout < 0 then
		buyout = 0
	elseif buyout > MAXIMUM_BID_PRICE then
		buyout = MAXIMUM_BID_PRICE
	end

	private.perItem = true
	private.postStack = nil
	private.postQuantity = nil

	frame:GetElement("item.icon")
		:SetBackground(ItemInfo.GetTexture(private.itemString))
		:SetTooltip(private.itemString)
	frame:GetElement("item.name")
		:SetText(UIUtils.GetDisplayItemName(private.itemString))
	local maxPostStack = private.GetMaxPostStack(private.itemString)
	local isCommodity = ItemInfo.IsCommodity(private.itemString)
	frame:GetElement("quantity.input")
		:SetValidateFunc("NUMBER", "0:"..maxPostStack)
		:SetValue(min(postContext.quantity, maxPostStack, 5000))
	frame:GetElement("bid.input")
		:SetDisabled(isCommodity)
		:SetValue(Money.ToString(bid, nil, "OPT_83_NO_COPPER", isCommodity and "OPT_DISABLE" or nil))
	frame:GetElement("buyout.input")
		:SetValue(Money.ToString(buyout, nil, "OPT_83_NO_COPPER"))
	frame:GetElement("confirmBtn")
		:SetContext(private.itemString)

	frame:Draw()

	private.UpdateDepositCostAndPostButton(frame)
end

function private.ItemQueryOnRowClick(scrollingtable, row)
	private.itemString = row:GetField("itemString")
	scrollingtable:GetElement("__parent.__parent"):SetPath("posting", true)
end

function private.ViewBackButtonOnClick(button)
	button:GetElement("__parent.__parent"):SetPath("posting", true)
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.OnItemLinked(name, itemLink, forceSearch)
	local itemString = ItemString.Get(itemLink)
	local baseItemString = ItemString.GetBase(itemString)
	local baseName = ItemInfo.GetName(baseItemString)
	if itemString == baseItemString then
		baseName = baseName.."/exact"
	end
	if not forceSearch and private.frame:GetPath() == "selection" and private.frame:GetElement("selection.content"):GetPath() == "advanced" then
		-- they are on the advanced search UI, so just populate the filter dialog instead of starting a search
		private.frame:GetElement("selection.content.advanced.search.header.keyword")
			:SetValue(baseName)
			:Draw()
		return
	end
	private.frame:SetPath("selection")

	local price = CustomPrice.GetValue("first(dbmarket, 100g)", itemString)
	local postContext = private.postContext
	wipe(postContext)
	postContext.baseItemString = baseItemString
	postContext.itemString = itemString
	postContext.ownerStr = PLAYER_NAME
	postContext.currentBid = 0
	postContext.displayedBid = price
	postContext.itemDisplayedBid = price
	postContext.buyout = price
	postContext.itemBuyout = price
	postContext.quantity = 1
	private.frame:GetBaseElement():HideDialog()
	private.StartFilterSearchHelper(private.frame, baseName, nil, postContext)
	return true
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
	local scanBtn = groupTree:GetElement("__parent.bottom.scanBtn")
	scanBtn:SetDisabled(groupTree:IsSelectionCleared())
	scanBtn:Draw()
end

function private.FrameOnHide(frame)
	assert(frame == private.frame)
	private.frame = nil
	for _, callback in ipairs(private.updateCallbacks) do
		callback()
	end
end

function private.ScanButtonOnClick(button)
	wipe(private.selectedGroups)
	for _, groupPath in button:GetElement("__parent.__parent.groupTree"):SelectedGroupsIterator() do
		if groupPath ~= "" and not strmatch(groupPath, "^`") then
			tinsert(private.selectedGroups, groupPath)
		end
	end
	local viewContainer = button:GetParentElement():GetParentElement():GetParentElement():GetParentElement()
	local searchContext = TSM.Shopping.GroupSearch.GetSearchContext(private.selectedGroups)
	assert(searchContext)
	private.StartSearchHelper(viewContainer, searchContext)
end

function private.SearchListOnFavoriteChanged(_, dbRow, isFavorite)
	TSM.Shopping.SavedSearches.SetSearchIsFavorite(dbRow, isFavorite)
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
	TSM.Shopping.SavedSearches.RenameSearch(dbRow, name)
end

function private.DialogCloseBtnOnClick(button)
	private.RenameInputOnEnterPressed(button:GetElement("__parent.__parent.nameInput"))
end

function private.SearchListOnDelete(_, dbRow)
	TSM.Shopping.SavedSearches.DeleteSearch(dbRow)
end

function private.SearchListOnRowClick(searchList, dbRow)
	local viewContainer = searchList:GetParentElement():GetParentElement():GetParentElement():GetParentElement():GetParentElement()
	private.StartFilterSearchHelper(viewContainer, dbRow:GetField("filter"))
end

function private.AdvancedButtonOnClick(button)
	button:GetParentElement():GetParentElement():GetParentElement():SetPath("advanced", true)
end

function private.AdvancedBackButtonOnClick(button)
	button:GetParentElement():GetParentElement():GetParentElement():GetParentElement():SetPath("search", true)
end

function private.ClassDropdownOnSelectionChanged(dropdown)
	local subClassDropdown = dropdown:GetElement("__parent.subClassDropdown")
	local selection = dropdown:GetSelectedItem()
	if selection then
		local subClasses = TempTable.Acquire()
		for _, v in pairs(ItemClass.GetSubClasses(selection)) do
			tinsert(subClasses, v)
		end
		if dropdown:GetSelectedItem() == GetItemClassInfo(Enum.ItemClass.Armor) then
			for _, v in pairs(GENERIC_TYPES) do
				tinsert(subClasses, v)
			end
		end
		subClassDropdown:SetItems(subClasses)
		subClassDropdown:SetDisabled(false)
		subClassDropdown:SetSelectedItem(nil)
			:Draw()

		TempTable.Release(subClasses)
	else
		subClassDropdown:SetDisabled(true)
		subClassDropdown:SetSelectedItem(nil)
			:Draw()
	end
end

function private.SubClassDropdownOnSelectionChanged(dropdown)
	local classDropdown = dropdown:GetElement("__parent.classDropdown")
	local itemSlotDropdown = dropdown:GetElement("__parent.__parent.itemSlot.frame.dropdown")
	local selection = dropdown:GetSelectedItem()
	if selection and classDropdown:GetSelectedItem() == GetItemClassInfo(Enum.ItemClass.Armor) and ARMOR_TYPES[selection] then
		itemSlotDropdown:SetItems(INVENTORY_TYPES)
		itemSlotDropdown:SetDisabled(false)
		itemSlotDropdown:SetSelectedItem(nil)
			:Draw()
	else
		itemSlotDropdown:SetDisabled(true)
		itemSlotDropdown:SetSelectedItem(nil)
			:Draw()
	end
end

function private.ResetButtonOnClick(button)
	local headerFrame = button:GetElement("__parent.__parent.search.header")
	headerFrame:GetElement("keyword"):SetValue("")
	headerFrame:Draw()
	local searchFrame = button:GetElement("__parent.__parent.search.body")
	searchFrame:GetElement("level.slider"):SetValue(0, private.maxLevel)
	searchFrame:GetElement("itemLevel.slider"):SetValue(0, MAX_ITEM_LEVEL)
	searchFrame:GetElement("classAndSubClass.classDropdown"):SetSelectedItem(nil)
	searchFrame:GetElement("classAndSubClass.subClassDropdown"):SetSelectedItem(nil):SetDisabled(true)
	searchFrame:GetElement("itemSlot.frame.dropdown"):SetSelectedItem(nil):SetDisabled(true)
	searchFrame:GetElement("content.minRarity.dropdown"):SetSelectedItem(nil)
	searchFrame:GetElement("content.frame.maxQty.input"):SetValue(0)
	searchFrame:GetElement("filters.uncollected.checkbox"):SetChecked(false)
	searchFrame:GetElement("filters.upgrades.checkbox"):SetChecked(false)
	searchFrame:GetElement("filters.usable.checkbox"):SetChecked(false)
	searchFrame:GetElement("filters2.exact"):SetChecked(false)
	searchFrame:GetElement("filters2.crafting"):SetChecked(false)
	searchFrame:Draw()
end

function private.AdvancedStartOnClick(button)
	local headerFrame = button:GetElement("__parent.__parent.search.header")
	local searchFrame = button:GetElement("__parent.__parent.search.body")
	local filterParts = TempTable.Acquire()

	tinsert(filterParts, strtrim(headerFrame:GetElement("keyword"):GetValue()))

	local levelMin, levelMax = searchFrame:GetElement("level.slider"):GetValue()
	if levelMin ~= 0 or levelMax ~= private.maxLevel then
		tinsert(filterParts, levelMin)
		tinsert(filterParts, levelMax)
	end

	local itemLevelMin, itemLevelMax = searchFrame:GetElement("itemLevel.slider"):GetValue()
	if itemLevelMin ~= 0 or itemLevelMax ~= MAX_ITEM_LEVEL then
		tinsert(filterParts, "i"..itemLevelMin)
		tinsert(filterParts, "i"..itemLevelMax)
	end

	local class = searchFrame:GetElement("classAndSubClass.classDropdown"):GetSelectedItem()
	if class then
		tinsert(filterParts, class)
	end

	local subClass = searchFrame:GetElement("classAndSubClass.subClassDropdown"):GetSelectedItem()
	if subClass then
		tinsert(filterParts, subClass)
	end

	local itemSlot = searchFrame:GetElement("itemSlot.frame.dropdown"):GetSelectedItem()
	if itemSlot then
		tinsert(filterParts, itemSlot)
	end

	local rarity = searchFrame:GetElement("content.minRarity.dropdown"):GetSelectedItem()
	if rarity then
		tinsert(filterParts, rarity)
	end

	local quantity = tonumber(searchFrame:GetElement("content.frame.maxQty.input"):GetValue())
	if quantity > 0 then
		tinsert(filterParts, "x"..quantity)
	end

	if Environment.HasFeature(Environment.FEATURES.AH_UNCOLLECTED_FILTER) and searchFrame:GetElement("filters.uncollected.checkbox"):IsChecked() then
		tinsert(filterParts, "uncollected")
	end

	if Environment.HasFeature(Environment.FEATURES.AH_UPGRADES_FILTER) and searchFrame:GetElement("filters.upgrades.checkbox"):IsChecked() then
		tinsert(filterParts, "upgrades")
	end

	if searchFrame:GetElement("filters.usable.checkbox"):IsChecked() then
		tinsert(filterParts, "usable")
	end

	if searchFrame:GetElement("filters2.exact"):IsChecked() then
		tinsert(filterParts, "exact")
	end

	if searchFrame:GetElement("filters2.crafting"):IsChecked() then
		tinsert(filterParts, "crafting")
	end

	local filter = table.concat(filterParts, "/")
	TempTable.Release(filterParts)
	local viewContainer = searchFrame:GetParentElement():GetParentElement():GetParentElement():GetParentElement():GetParentElement()
	private.StartFilterSearchHelper(viewContainer, filter)
end

function private.FilterInputOnValueChanged(input)
	local text = input:GetValue()
	if text == private.filterText then
		return
	end
	private.filterText = text
	input:GetElement("__parent.search"):SetDisabled(not Environment.IsRetail() and text == "")
		:Draw()
end

function private.FilterInputOnEnterPressed(input)
	local filter = input:GetValue()
	if not Environment.IsRetail() and filter == "" then
		return
	end
	local viewContainer = input:GetElement("__parent.__parent.__parent.__parent.__parent")
	private.StartFilterSearchHelper(viewContainer, filter)
end

function private.SearchButtonOnClick(button)
	private.FilterInputOnEnterPressed(button:GetElement("__parent.filterInput"))
end

function private.StartSearchHelper(viewContainer, searchContext, filter, errMsg)
	if not TSM.UI.AuctionUI.StartingScan(L["Browse"]) then
		return
	end
	if searchContext then
		viewContainer:SetPath("scan", true)
		local name = searchContext:GetName()
		assert(name)
		private.searchName = name
		viewContainer:GetElement("scan.searchFrame.filterInput")
			:SetValue(name)
		viewContainer:GetElement("scan.searchFrame.rescanBtn")
			:SetDisabled(name == L["Gathering Search"])
		private.fsm:ProcessEvent("EV_START_SCAN", searchContext)
	else
		viewContainer:SetPath("selection", true)
		if type(filter) == "string" then
			Log.PrintUser(format(L["Invalid search filter (%s)."], filter).." "..errMsg)
		end
	end
end

function private.StartFilterSearchHelper(viewContainer, filter, isGreatDeals, postContext)
	local searchContext, errMsg = nil, nil
	if isGreatDeals then
		searchContext = TSM.Shopping.FilterSearch.GetGreatDealsSearchContext(filter)
	else
		searchContext, errMsg = TSM.Shopping.FilterSearch.GetSearchContext(filter, postContext)
	end
	private.StartSearchHelper(viewContainer, searchContext, filter, errMsg)
end

function private.StartGatheringSearchHelper(viewContainer, items, stateCallback, buyCallback, mode)
	local filterList = TempTable.Acquire()
	for itemString, quantity in pairs(items) do
		tinsert(filterList, itemString.."/x"..quantity)
	end
	local filter = table.concat(filterList, ";")
	TempTable.Release(filterList)
	local searchContext = TSM.Shopping.FilterSearch.GetGatheringSearchContext(filter, mode)
	assert(searchContext)
	searchContext:SetCallbacks(buyCallback, stateCallback)
	private.StartSearchHelper(viewContainer, searchContext, filter)
end

function private.DealsButtonOnClick(button)
	local viewContainer = button:GetParentElement():GetParentElement():GetParentElement():GetParentElement():GetParentElement()
	private.StartFilterSearchHelper(viewContainer, TSM.Shopping.GreatDealsSearch.GetFilter(), true)
end

function private.VendorButtonOnClick(button)
	local viewContainer = button:GetParentElement():GetParentElement():GetParentElement():GetParentElement():GetParentElement()
	local searchContext = TSM.Shopping.VendorSearch.GetSearchContext()
	assert(searchContext)
	private.StartSearchHelper(viewContainer, searchContext)
end

function private.DisenchantButtonOnClick(button)
	local viewContainer = button:GetParentElement():GetParentElement():GetParentElement():GetParentElement():GetParentElement()
	local searchContext = TSM.Shopping.DisenchantSearch.GetSearchContext()
	assert(searchContext)
	private.StartSearchHelper(viewContainer, searchContext)
end

function private.ScanBackButtonOnClick(button)
	private.searchName = ""
	button:GetElement("__parent.__parent.__parent.__parent"):SetPath("selection", true)
	private.fsm:ProcessEvent("EV_SCAN_BACK_BUTTON_CLICKED")
end

function private.AuctionsOnSelectionChanged()
	private.selectionChangedTimer:RunForFrames(1)
end

function private.AuctionsOnSelectionChangedDelayed()
	private.fsm:ProcessEvent("EV_AUCTION_SELECTION_CHANGED")
end

function private.PauseResumeOnClick()
	private.fsm:ProcessEvent("EV_PAUSE_RESUME_CLICKED")
end

function private.AuctionsOnPostButtonClick()
	private.fsm:ProcessEvent("EV_POST_BUTTON_CLICK")
end

function private.ScanFrameOnUpdate(frame)
	frame:SetScript("OnUpdate", nil)
	private.fsm:ProcessEvent("EV_SCAN_FRAME_SHOWN", frame)
end

function private.ScanFrameOnHide(frame)
	private.fsm:ProcessEvent("EV_SCAN_FRAME_HIDDEN")
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

	local frame = button:GetElement("__parent.__parent")
	local postContext = frame:GetElement("__parent"):GetContext()
	local undercut = (Environment.IsRetail() or PlayerInfo.IsPlayer(postContext.ownerStr, true, true, true)) and 0 or 1
	local bidInput = frame:GetElement("bid.input")
	local buyoutInput = frame:GetElement("buyout.input")
	buyoutInput:SetFocused(false)
	bidInput:SetFocused(false)
	local numStacksInput = frame:GetElement("numStacks.input")
	numStacksInput:SetFocused(false)
	local quantityInput = frame:GetElement("quantity.input")
	quantityInput:SetFocused(false)
	local stackSizeEdit = tonumber(quantityInput:GetValue())
	local isCommodity = ItemInfo.IsCommodity(private.itemString)
	if postContext.quantity == stackSizeEdit then
		local newBid = TSM.UI.AuctionUI.ParseBid(bidInput:GetValue())
		newBid = newBid + undercut == postContext.displayedBid and floor(postContext.displayedBid / postContext.quantity) - undercut or floor(newBid / postContext.quantity)
		local newBuyout = TSM.UI.AuctionUI.ParseBuyout(buyoutInput:GetValue(), isCommodity)
		newBuyout = newBuyout + undercut == postContext.buyout and postContext.itemBuyout - undercut or floor(newBuyout / postContext.quantity)
		buyoutInput:SetValue(Money.ToString(newBuyout, nil, "OPT_83_NO_COPPER"))
		bidInput:SetValue(Money.ToString(newBid, nil, "OPT_83_NO_COPPER", isCommodity and "OPT_DISABLE" or nil))
	else
		local newBid = TSM.UI.AuctionUI.ParseBid(bidInput:GetValue())
		newBid = newBid + undercut == postContext.displayedBid and floor(postContext.displayedBid / stackSizeEdit) - undercut or floor(newBid / stackSizeEdit)
		local newBuyout = TSM.UI.AuctionUI.ParseBuyout(buyoutInput:GetValue(), isCommodity)
		newBuyout = newBuyout + undercut == postContext.buyout and postContext.itemBuyout - undercut or floor(newBuyout / stackSizeEdit)
		buyoutInput:SetValue(Money.ToString(newBuyout, nil, "OPT_83_NO_COPPER"))
		bidInput:SetValue(Money.ToString(newBid, nil, "OPT_83_NO_COPPER", isCommodity and "OPT_DISABLE" or nil))
	end
	frame:Draw()
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

	local frame = button:GetElement("__parent.__parent")
	local postContext = frame:GetElement("__parent"):GetContext()
	local undercut = (Environment.IsRetail() or PlayerInfo.IsPlayer(postContext.ownerStr, true, true, true)) and 0 or 1
	local bidInput = frame:GetElement("bid.input")
	local buyoutInput = frame:GetElement("buyout.input")
	buyoutInput:SetFocused(false)
	bidInput:SetFocused(false)
	local numStacksInput = frame:GetElement("numStacks.input")
	numStacksInput:SetFocused(false)
	local quantityInput = frame:GetElement("quantity.input")
	quantityInput:SetFocused(false)
	local stackSizeEdit = tonumber(quantityInput:GetValue())
	local newBuyout, newBid = nil, nil
	local isCommodity = ItemInfo.IsCommodity(private.itemString)
	if postContext.quantity == stackSizeEdit then
		newBid = TSM.UI.AuctionUI.ParseBid(bidInput:GetValue())
		newBid = ((newBid + undercut) * postContext.quantity) == postContext.displayedBid and (postContext.displayedBid - undercut) or (newBid * postContext.quantity)
		newBuyout = TSM.UI.AuctionUI.ParseBuyout(buyoutInput:GetValue(), isCommodity)
		newBuyout = ((newBuyout + undercut) * postContext.quantity) == postContext.buyout and (postContext.buyout - undercut) or (newBuyout * postContext.quantity)
	else
		newBid = TSM.UI.AuctionUI.ParseBid(bidInput:GetValue())
		newBid = ((newBid + undercut) * postContext.quantity) == postContext.displayedBid and floor(postContext.displayedBid / postContext.quantity) * stackSizeEdit - undercut or newBid * stackSizeEdit
		newBuyout = TSM.UI.AuctionUI.ParseBuyout(buyoutInput:GetValue(), isCommodity)
		newBuyout = ((newBuyout + undercut) * postContext.quantity) == postContext.buyout and postContext.itemBuyout * stackSizeEdit - undercut or newBuyout * stackSizeEdit
	end
	buyoutInput:SetValue(Money.ToString(newBuyout, nil, "OPT_83_NO_COPPER"))
	bidInput:SetValue(Money.ToString(newBid, nil, "OPT_83_NO_COPPER", isCommodity and "OPT_DISABLE" or nil))
	frame:Draw()
end

function private.BidBuyoutValidateFunc(input, value)
	local errMsg = nil
	if input:GetContext() == "bid" then
		value, errMsg = TSM.UI.AuctionUI.ParseBid(value)
	else
		value, errMsg = TSM.UI.AuctionUI.ParseBuyout(value, ItemInfo.IsCommodity(private.itemString))
	end
	if not value then
		return false, L["Invalid price."].." "..errMsg
	end
	return true
end

function private.BidBuyoutOnValidationChanged(input)
	private.UpdateDepositCostAndPostButton(input:GetElement("__parent.__parent"))
end

function private.BidBuyoutInputOnValueChanged(input)
	local frame = input:GetElement("__parent.__parent")
	local itemString = frame:GetElement("confirmBtn"):GetContext()
	local bidInput = frame:GetElement("bid.input")
	local buyoutInput = frame:GetElement("buyout.input")
	local bid = TSM.UI.AuctionUI.ParseBid(bidInput:GetValue())
	local buyout = TSM.UI.AuctionUI.ParseBuyout(buyoutInput:GetValue(), ItemInfo.IsCommodity(private.itemString))
	if input == buyoutInput and Environment.IsRetail() and ItemInfo.IsCommodity(itemString) then
		-- update the bid to match
		bidInput:SetValue(Money.ToString(buyout, nil, "OPT_83_NO_COPPER", "OPT_DISABLE"))
			:Draw()
	elseif input == bidInput and buyout > 0 and bid > buyout then
		-- update the buyout to match
		buyoutInput:SetValue(Money.ToString(bid, nil, "OPT_83_NO_COPPER"))
			:Draw()
	end
	private.UpdateDepositCostAndPostButton(frame)
end

function private.BidBuyoutInputOnEnterPressed(input)
	local frame = input:GetElement("__parent.__parent")
	local bidInput = frame:GetElement("bid.input")
	local buyoutInput = frame:GetElement("buyout.input")
	local bid = TSM.UI.AuctionUI.ParseBid(bidInput:GetValue())
	local buyout = TSM.UI.AuctionUI.ParseBuyout(buyoutInput:GetValue(), ItemInfo.IsCommodity(private.itemString))
	local value = input:GetContext() == "bid" and bid or buyout
	input:SetValue(Money.ToString(value, nil, "OPT_83_NO_COPPER"))
	input:Draw()
	if input == buyoutInput and buyout > 0 and buyout < bid then
		-- update the bid to match
		bidInput:SetValue(Money.ToString(value, nil, "OPT_83_NO_COPPER"))
			:Draw()
	end
	private.UpdateDepositCostAndPostButton(frame)
end

function private.ItemBtnOnClick(button)
	button:GetElement("__parent.__parent.__parent"):SetPath("selection", true)
end

function private.StackNumInputOnValueChanged(input)
	local value = tonumber(input:GetValue())
	assert(value)
	if value == private.postStack then
		return
	end
	private.postStack = value
	private.UpdateDepositCostAndPostButton(input:GetParentElement():GetParentElement())
end

function private.QuantityInputOnValueChanged(input)
	local value = tonumber(input:GetValue())
	if value == private.postQuantity then
		return
	end
	private.postQuantity = value
	private.UpdateDepositCostAndPostButton(input:GetParentElement():GetParentElement())

	if private.perItem then
		return
	end

	local frame = input:GetElement("__parent.__parent")
	local postContext = frame:GetElement("__parent"):GetContext()
	local undercut = (Environment.IsRetail() or PlayerInfo.IsPlayer(postContext.ownerStr, true, true, true)) and 0 or 1
	local bidInput = frame:GetElement("bid.input")
	local buyoutInput = frame:GetElement("buyout.input")
	local stackSizeEdit = tonumber(frame:GetElement("quantity.input"):GetValue())
	stackSizeEdit = tonumber(stackSizeEdit)
	local newBuyout, newBid = nil, nil
	if postContext.quantity == stackSizeEdit then
		newBuyout = postContext.buyout - undercut
		newBid = postContext.displayedBid - undercut
	else
		newBuyout = postContext.itemBuyout * stackSizeEdit - undercut
		newBid = floor(postContext.displayedBid / postContext.quantity) * stackSizeEdit - undercut
	end
	buyoutInput:SetValue(Money.ToString(newBuyout, nil, "OPT_83_NO_COPPER"))
	bidInput:SetValue(Money.ToString(newBid, nil, "OPT_83_NO_COPPER", ItemInfo.IsCommodity(private.itemString) and "OPT_DISABLE" or nil))
	frame:Draw()
end

function private.GetBagQuantity(itemString, useSpecificItem)
	return BagTracking.CreateQueryBagsItemAuctionable(useSpecificItem and itemString or ItemString.GetBase(itemString))
		:SumAndRelease("quantity")
end

function private.GetMaxPostStack(itemString)
	local numHave = private.GetBagQuantity(itemString, Environment.IsRetail())
	if Environment.IsRetail() then
		return numHave
	else
		return min(ItemInfo.GetMaxStack(itemString), numHave)
	end
end

function private.MaxStackNumBtnOnClick(button)
	button:GetElement("__parent.__parent.quantity.input"):SetFocused(false)
	button:GetElement("__parent.input"):SetFocused(false)
	local itemString = button:GetElement("__parent.__parent.confirmBtn"):GetContext()
	local stackSize = tonumber(button:GetElement("__parent.__parent.quantity.input"):GetValue())
	local num = min(floor(private.GetBagQuantity(itemString) / stackSize), 5000)
	if num == 0 then
		return
	end
	button:GetElement("__parent.input")
		:SetValue(num)
		:Draw()
	private.StackNumInputOnValueChanged(button:GetElement("__parent.input"))
end

function private.MaxQuantityBtnOnClick(button)
	if Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
		button:GetElement("__parent.__parent.numStacks.input"):SetFocused(false)
	end
	button:GetElement("__parent.input"):SetFocused(false)
	local itemString = button:GetElement("__parent.__parent.confirmBtn"):GetContext()
	local numHave = private.GetBagQuantity(itemString)
	local stackSize = min(private.GetMaxPostStack(itemString), 5000)
	assert(stackSize > 0)
	button:GetElement("__parent.input")
		:SetValue(stackSize)
		:Draw()
	if Environment.HasFeature(Environment.FEATURES.AH_STACKS) then
		local numStacks = tonumber(button:GetElement("__parent.__parent.numStacks.input"):GetValue())
		local newStackSize = min(floor(numHave / stackSize), 5000)
		if numStacks > newStackSize then
			button:GetElement("__parent.__parent.numStacks.input")
				:SetValue(newStackSize)
				:Draw()
			private.StackNumInputOnValueChanged(button:GetElement("__parent.__parent.numStacks.input"))
		end
	end
	private.QuantityInputOnValueChanged(button:GetElement("__parent.input"))
end

function private.DurationOnValueChanged(toggle)
	private.UpdateDepositCostAndPostButton(toggle:GetParentElement():GetParentElement())
end

function private.UpdateDepositCostAndPostButton(frame)
	local itemString = frame:GetElement("confirmBtn"):GetContext()
	if not itemString then
		return
	end

	local bidInput = frame:GetElement("bid.input")
	local buyoutInput = frame:GetElement("buyout.input")
	local bid = TSM.UI.AuctionUI.ParseBid(bidInput:GetValue())
	local buyout = TSM.UI.AuctionUI.ParseBuyout(buyoutInput:GetValue(), ItemInfo.IsCommodity(private.itemString))
	local stackSize = tonumber(frame:GetElement("quantity.input"):GetValue())
	local numAuctions = Environment.HasFeature(Environment.FEATURES.AH_STACKS) and tonumber(frame:GetElement("numStacks.input"):GetValue()) or 1
	if (buyout > 0 and bid > buyout) or not bidInput:IsValid() or not buyoutInput:IsValid() or (stackSize * numAuctions) > private.GetBagQuantity(itemString) then
		frame:GetElement("deposit.text")
			:SetText(Money.ToString(0, nil, "OPT_83_NO_COPPER"))
			:Draw()
		frame:GetElement("confirmBtn")
			:SetDisabled(true)
			:Draw()
		return
	end

	local postBag, postSlot = BagTracking.CreateQueryBagsAuctionable()
		:OrderBy("slotId", true)
		:Select("bag", "slot")
		:Equal("itemString", itemString)
		:GetFirstResultAndRelease()
	if not postBag or not postSlot then
		frame:GetElement("deposit.text")
			:SetText(Money.ToString(0, nil, "OPT_83_NO_COPPER"))
			:Draw()
		frame:GetElement("confirmBtn")
			:SetDisabled(true)
			:Draw()
		return
	end

	private.postTimeStr = frame:GetElement("duration.toggle"):GetValue()
	local postTime = Table.GetDistinctKey(TSM.CONST.AUCTION_DURATIONS, private.postTimeStr)
	local depositCost = nil
	if Environment.IsRetail() then
		local isCommodity = ItemInfo.IsCommodity(itemString)
		depositCost = max(floor(0.15 * (ItemInfo.GetVendorSell(itemString) or 0) * (isCommodity and stackSize or 1) * (postTime == 3 and 4 or postTime)), 100) * (isCommodity and 1 or stackSize)
	else
		if private.perItem then
			bid = bid * stackSize
			buyout = buyout * stackSize
		end
		ClearCursor()
		Container.PickupItem(postBag, postSlot)
		ClickAuctionSellItemButton(AuctionsItemButton, "LeftButton")
		ClearCursor()
		depositCost = GetAuctionDeposit(postTime, bid, buyout, stackSize, numAuctions)
		ClearCursor()
		ClickAuctionSellItemButton(AuctionsItemButton, "LeftButton")
		ClearCursor()
	end

	local noMoney = depositCost > GetMoney()
	frame:GetElement("deposit.text")
		:SetText(Money.ToString(depositCost))
		:Draw()
	frame:GetElement("confirmBtn")
		:SetText(noMoney and L["Not Enough Money"] or L["Post Auction"])
		:SetDisabled(noMoney)
		:Draw()
end

function private.PostButtonOnClick(button)
	local frame = button:GetParentElement()
	local stackSize = tonumber(frame:GetElement("quantity.input"):GetValue())
	local bid = TSM.UI.AuctionUI.ParseBid(frame:GetElement("bid.input"):GetValue())
	local buyout = TSM.UI.AuctionUI.ParseBuyout(frame:GetElement("buyout.input"):GetValue(), ItemInfo.IsCommodity(private.itemString))
	local itemString = button:GetContext()
	local postBag, postSlot = BagTracking.CreateQueryBagsAuctionable()
		:OrderBy("slotId", true)
		:Select("bag", "slot")
		:Equal("itemString", itemString)
		:GetFirstResultAndRelease()
	if not postBag or not postSlot then
		frame:GetBaseElement():HideDialog()
		return
	end
	local postTime = Table.GetDistinctKey(TSM.CONST.AUCTION_DURATIONS, frame:GetElement("duration.toggle"):GetValue())
	local num = Environment.HasFeature(Environment.FEATURES.AH_STACKS) and tonumber(frame:GetElement("numStacks.input"):GetValue()) or 1
	frame:GetBaseElement():HideDialog()
	private.fsm:ProcessEvent("EV_DO_POST", itemString, postBag, postSlot, postTime, stackSize, bid, buyout, num)
end

function private.PostDialogCloseBtnOnClick(button)
	button:GetBaseElement():HideDialog()
end

function private.ScanFilterInputOnEnterPressed(input)
	local filter = input:GetValue()
	if not Environment.IsRetail() and filter == "" then
		return
	end
	local viewContainer = input:GetParentElement():GetParentElement():GetParentElement()
	viewContainer:SetPath("selection")
	private.StartFilterSearchHelper(viewContainer, filter)
end

function private.RescanBtnOnClick(button)
	if not TSM.UI.AuctionUI.StartingScan(L["Browse"]) then
		return
	end
	private.fsm:ProcessEvent("EV_RESCAN_CLICKED")
end



-- ============================================================================
-- FSM
-- ============================================================================

function private.FSMCreate()
	local fsmContext = {
		scanFrame = nil,
		auctionScan = nil,
		progress = 0,
		progressText = L["Starting Scan..."],
		progressPaused = false,
		postDisabled = true,
		bidDisabled = true,
		buyoutDisabled = true,
		cancelShown = false,
		findHash = nil,
		findAuction = nil,
		findResult = nil,
		numFound = 0,
		maxQuantity = 0,
		defaultBuyQuantity = 0,
		numBought = 0,
		lastBuyQuantity = 0,
		lastBuyIndex = nil,
		numBid = 0,
		numConfirmed = 0,
		searchContext = nil,
		postContextTemp = {},
		pausePending = nil,
		pendingFuture = nil,
		canSendAuctionQuery = true,
	}
	DefaultUI.RegisterAuctionHouseVisibleCallback(function() private.fsm:ProcessEvent("EV_AUCTION_HOUSE_CLOSED") end, false)
	BagTracking.RegisterCallback(function()
		private.fsm:ProcessEvent("EV_BAG_UPDATE_DELAYED")
	end)
	AuctionHouseWrapper.RegisterAuctionIdUpdateCallback(function(...)
		private.fsm:ProcessEvent("EV_AUCTION_ID_UPDATE", ...)
	end)
	if not Environment.IsRetail() then
		AuctionHouseWrapper.RegisterCanSendAuctionQueryCallback(function(...)
			private.fsm:ProcessEvent("EV_CAN_SEND_AUCTION_QUERY_UPDATE", ...)
		end)
	end
	local function UpdateScanFrame(context)
		if not context.scanFrame then
			return
		end
		local bottom = context.scanFrame:GetElement("bottom")
		bottom:GetElement("postBtn"):SetDisabled(context.pendingFuture or context.postDisabled or not context.canSendAuctionQuery)
		bottom:GetElement("bidBtn"):SetDisabled(context.pendingFuture or context.bidDisabled or not context.canSendAuctionQuery)
		bottom:GetElement("buyoutBtn"):SetDisabled(context.pendingFuture or context.buyoutDisabled or not context.canSendAuctionQuery)
		if context.cancelShown then
			assert(context.buyoutDisabled)
			bottom:GetElement("buyoutBtn"):Hide()
			bottom:GetElement("cancelBtn")
				:SetDisabled(context.pendingFuture or not context.canSendAuctionQuery)
				:Show()
		else
			bottom:GetElement("buyoutBtn"):Show()
			bottom:GetElement("cancelBtn")
				:SetDisabled(true)
				:Hide()
		end
		local progress, isPaused = context.auctionScan:GetProgress()
		bottom:GetElement("pauseResumeBtn")
			:SetDisabled((not isPaused and progress == 1) or context.pausePending ~= nil)
			:SetHighlightLocked(context.pausePending ~= nil)
		local processIconHidden = context.progress == 1 or (context.findResult and context.numBought + context.numBid == context.numConfirmed) or context.progressPaused
		bottom:GetElement("progressBar"):SetProgress(context.progress)
			:SetText((processIconHidden and not context.canSendAuctionQuery and L["Preparing..."]) or (context.pendingFuture and L["Confirming..."]) or context.progressText or "")
			:SetProgressIconHidden(context.canSendAuctionQuery and processIconHidden)
		local auctionList = context.scanFrame:GetElement("auctions")
			:SetContext(context.auctionScan)
			:SetAuctionScan(context.auctionScan)
			:SetMarketValueFunction(context.searchContext:GetMarketValueFunc())
			:SetSelectionDisabled(context.numBought + context.numBid ~= context.numConfirmed)
			:SetPctTooltip(context.searchContext:GetPctTooltip())
		if context.findAuction and not auctionList:GetSelection() then
			auctionList:SetSelection(context.findAuction)
		end
		context.scanFrame:Draw()
	end
	private.fsm = FSM.New("SHOPPING")
		:AddState(FSM.NewState("ST_INIT")
			:SetOnEnter(function(context, searchContext)
				private.hasLastScan = false
				if context.searchContext then
					context.searchContext:KillThread()
					context.searchContext:OnStateChanged("DONE")
					context.searchContext = nil
				end
				if context.pendingFuture then
					context.pendingFuture:Cancel()
					context.pendingFuture = nil
				end
				context.progress = 0
				context.progressText = L["Starting Scan..."]
				context.progressPaused = false
				context.pausePending = nil
				context.postDisabled = true
				context.bidDisabled = true
				context.buyoutDisabled = true
				context.cancelShown = false
				context.findHash = nil
				context.findAuction = nil
				context.findResult = nil
				context.numFound = 0
				context.maxQuantity = 0
				context.defaultBuyQuantity = 0
				context.numBought = 0
				context.lastBuyQuantity = 0
				context.lastBuyIndex = nil
				context.numBid = 0
				context.numConfirmed = 0
				if context.auctionScan then
					context.auctionScan:Release()
					context.auctionScan = nil
				end
				if searchContext then
					return "ST_STARTING_SCAN", searchContext
				elseif context.scanFrame then
					context.scanFrame:GetParentElement():SetPath("selection", true)
					context.scanFrame = nil
				end
				TSM.UI.AuctionUI.EndedScan(L["Browse"])
			end)
			:AddTransition("ST_INIT")
			:AddTransition("ST_STARTING_SCAN")
		)
		:AddState(FSM.NewState("ST_STARTING_SCAN")
			:SetOnEnter(function(context, searchContext)
				context.searchContext = searchContext
				private.hasLastScan = true
				context.auctionScan = AuctionScan.GetManager()
					:SetResolveSellers(not Environment.IsRetail())
					:SetScript("OnProgressUpdate", private.FSMAuctionScanOnProgressUpdate)
				UpdateScanFrame(context)
				context.searchContext:StartThread(private.FSMScanCallback, context.auctionScan)
				context.searchContext:OnStateChanged("SCANNING")
				return "ST_SCANNING"
			end)
			:AddTransition("ST_SCANNING")
		)
		:AddState(FSM.NewState("ST_SCANNING")
			:SetOnEnter(function(context)
				UpdateScanFrame(context)
				local selection = context.scanFrame and context.scanFrame:GetElement("auctions"):GetSelection()
				if context.pausePending == nil and selection and selection:IsSubRow() then
					-- pause the scan so the selected auction can be bought
					context.pausePending = true
					context.auctionScan:SetPaused(true)
					return "ST_UPDATING_SCAN_PROGRESS"
				end
			end)
			:AddTransition("ST_UPDATING_SCAN_PROGRESS")
			:AddTransition("ST_RESULTS")
			:AddTransition("ST_INIT")
			:AddEventTransition("EV_SCAN_PROGRESS_UPDATE", "ST_UPDATING_SCAN_PROGRESS")
			:AddEvent("EV_SCAN_COMPLETE", function(context)
				TSM.UI.AuctionUI.EndedScan(L["Browse"])
				if context.scanFrame then
					context.scanFrame:GetElement("auctions"):ExpandSingleResult()
				end
				context.searchContext:OnStateChanged("RESULTS")
				return "ST_RESULTS"
			end)
			:AddEvent("EV_SCAN_FAILED", function(context)
				context.searchContext:OnStateChanged("RESULTS")
				return "ST_RESULTS"
			end)
			:AddEvent("EV_RESCAN_CLICKED", function(context)
				if context.scanFrame then
					local viewContainer = context.scanFrame:GetParentElement()
					viewContainer:SetPath("selection", true)
					viewContainer:SetPath("scan", true)
					context.scanFrame = viewContainer:GetElement("scan")
					local name = context.searchContext:GetName()
					assert(name)
					context.scanFrame:GetElement("searchFrame.filterInput")
						:SetValue(name)
					context.scanFrame:GetElement("searchFrame.rescanBtn")
						:SetDisabled(name == L["Gathering Search"])
				end
				return "ST_INIT", context.searchContext
			end)
			:AddEvent("EV_PAUSE_RESUME_CLICKED", function(context)
				assert(context.pausePending == nil)
				context.pausePending = true
				context.auctionScan:SetPaused(true)
				return "ST_UPDATING_SCAN_PROGRESS"
			end)
			:AddEvent("EV_AUCTION_SELECTION_CHANGED", function(context)
				if context.pausePending ~= nil then
					return
				end
				local selection = context.scanFrame:GetElement("auctions"):GetSelection()
				if selection and selection:IsSubRow() then
					-- pause the scan so the selected auction can be bought
					assert(context.pausePending == nil)
					context.pausePending = true
					context.auctionScan:SetPaused(true)
					return "ST_UPDATING_SCAN_PROGRESS"
				end
			end)
		)
		:AddState(FSM.NewState("ST_UPDATING_SCAN_PROGRESS")
			:SetOnEnter(function(context)
				local progress, isPaused = context.auctionScan:GetProgress()
				local text, progressPaused = nil, false
				if context.pausePending ~= nil and context.pausePending == isPaused then
					context.pausePending = nil
				end
				if context.pausePending == true then
					text = L["Pausing Scan..."]
				elseif context.pausePending == false then
					text = L["Resuming Scan..."]
				elseif isPaused then
					text = L["Scan Paused"]
					progressPaused = true
				elseif progress == 1 then
					text = L["Done Scanning"]
				else
					local numItems = context.auctionScan:GetNumItems()
					text = numItems and format(L["Scanning (%d Items)"], numItems) or L["Scanning"]
				end
				context.progress = progress
				context.progressText = text
				context.progressPaused = progressPaused
				UpdateScanFrame(context)
				if isPaused then
					return "ST_RESULTS"
				else
					return "ST_SCANNING"
				end
			end)
			:AddTransition("ST_SCANNING")
			:AddTransition("ST_RESULTS")
		)
		:AddState(FSM.NewState("ST_RESULTS")
			:SetOnEnter(function(context, didBuy)
				TSM.UI.AuctionUI.EndedScan(L["Browse"])
				local _, isPaused = context.auctionScan:GetProgress()
				if not isPaused then
					context.searchContext:KillThread()
					context.progress = 1
				end
				context.progressText = isPaused and L["Scan Paused"] or L["Done Scanning"]
				context.progressPaused = isPaused
				context.findAuction = nil
				context.findResult = nil
				context.numFound = 0
				context.defaultBuyQuantity = 0
				context.numBought = 0
				context.lastBuyQuantity = 0
				context.lastBuyIndex = nil
				context.numBid = 0
				context.numConfirmed = 0
				local postContext = context.searchContext:GetPostContext()
				if postContext then
					for _, query in context.auctionScan:QueryIterator() do
						for _, subRow in query:ItemSubRowIterator(postContext.itemString) do
							local buyout, itemBuyout = subRow:GetBuyouts()
							if itemBuyout > 0 and itemBuyout < postContext.itemBuyout then
								postContext.ownerStr = subRow:GetOwnerInfo()
								local _, _, currentBid = subRow:GetBidInfo()
								postContext.currentBid = currentBid
								postContext.displayedBid, postContext.itemDisplayedBid = subRow:GetDisplayedBids()
								postContext.buyout = buyout
								postContext.itemBuyout = itemBuyout
							end
						end
					end
				end
				context.postDisabled = not postContext or private.GetBagQuantity(postContext.itemString) == 0
				context.bidDisabled = true
				context.buyoutDisabled = true
				context.cancelShown = false
				UpdateScanFrame(context)
				local selection = context.scanFrame and context.scanFrame:GetElement("auctions"):GetSelection() or nil
				if selection and selection:IsSubRow() then
					if TSM.UI.AuctionUI.StartingScan(L["Browse"]) then
						return "ST_FINDING_AUCTION"
					end
				elseif selection and isPaused and context.pausePending == nil then
					-- resume the scan to search for the item
					context.pausePending = false
					context.auctionScan:SetPaused(false)
					return "ST_UPDATING_SCAN_PROGRESS"
				elseif didBuy and not selection and isPaused and context.pausePending == nil then
					-- we bought something and should now resume the scan
					context.pausePending = false
					context.auctionScan:SetPaused(false)
					return "ST_UPDATING_SCAN_PROGRESS"
				end
			end)
			:AddTransition("ST_UPDATING_SCAN_PROGRESS")
			:AddTransition("ST_FINDING_AUCTION")
			:AddTransition("ST_POSTING")
			:AddTransition("ST_INIT")
			:AddEventTransition("EV_SCAN_PROGRESS_UPDATE", "ST_UPDATING_SCAN_PROGRESS")
			:AddEventTransition("EV_DO_POST", "ST_POSTING")
			:AddEvent("EV_AUCTION_SELECTION_CHANGED", function(context)
				assert(context.scanFrame)
				local selection = context.scanFrame:GetElement("auctions"):GetSelection()
				if not selection then
					return
				end
				if selection:IsSubRow() then
					if TSM.UI.AuctionUI.StartingScan(L["Browse"]) then
						-- find the auction
						return "ST_FINDING_AUCTION"
					end
				elseif select(2, context.auctionScan:GetProgress()) then
					-- resume the scan to search for the item
					assert(context.pausePending == nil)
					context.pausePending = false
					context.auctionScan:SetPaused(false)
					return "ST_UPDATING_SCAN_PROGRESS"
				end
			end)
			:AddEvent("EV_POST_BUTTON_CLICK", function(context)
				local postContext = nil
				local selection = context.scanFrame:GetElement("auctions"):GetSelection()
				if selection then
					wipe(context.postContextTemp)
					private.PopulatePostContextFromRow(context.postContextTemp, selection)
					postContext = context.postContextTemp
				else
					postContext = context.searchContext:GetPostContext()
				end
				private.PostDialogShow(context.scanFrame:GetBaseElement(), postContext)
			end)
			:AddEvent("EV_BAG_UPDATE_DELAYED", function(context)
				if not context.scanFrame then
					return
				end
				local postContext = context.searchContext:GetPostContext()
				context.postDisabled = not postContext or private.GetBagQuantity(postContext.itemString) == 0
				context.scanFrame:GetElement("bottom.postBtn")
					:SetDisabled(context.postDisabled)
					:Draw()
			end)
			:AddEvent("EV_RESCAN_CLICKED", function(context)
				if context.scanFrame then
					local viewContainer = context.scanFrame:GetParentElement()
					viewContainer:SetPath("selection", true)
					viewContainer:SetPath("scan", true)
					context.scanFrame = viewContainer:GetElement("scan")
					local name = context.searchContext:GetName()
					assert(name)
					context.scanFrame:GetElement("searchFrame.filterInput")
						:SetValue(name)
					context.scanFrame:GetElement("searchFrame.rescanBtn")
						:SetDisabled(name == L["Gathering Search"])
				end
				return "ST_INIT", context.searchContext
			end)
			:AddEvent("EV_PAUSE_RESUME_CLICKED", function(context)
				assert(context.pausePending == nil)
				context.pausePending = false
				context.auctionScan:SetPaused(false)
				return "ST_UPDATING_SCAN_PROGRESS"
			end)
		)
		:AddState(FSM.NewState("ST_FINDING_AUCTION")
			:SetOnEnter(function(context)
				assert(context.scanFrame)
				context.findAuction = context.scanFrame:GetElement("auctions"):GetSelection()
				assert(context.findAuction and context.findAuction:IsSubRow())
				context.findHash = context.findAuction:GetHashes()
				context.progress = 0
				context.progressText = L["Finding Selected Auction"]
				context.progressPaused = false
				context.postDisabled = true
				context.bidDisabled = true
				context.buyoutDisabled = true
				context.cancelShown = false
				UpdateScanFrame(context)
				TSM.Shopping.SearchCommon.StartFindAuction(context.auctionScan, context.findAuction, private.FSMFindAuctionCallback, false)
			end)
			:SetOnExit(function(context)
				context.auctionScan:Cancel()
				TSM.Shopping.SearchCommon.StopFindAuction(true)
			end)
			:AddTransition("ST_FINDING_AUCTION")
			:AddTransition("ST_RESULTS")
			:AddTransition("ST_UPDATING_SCAN_PROGRESS")
			:AddTransition("ST_AUCTION_FOUND")
			:AddTransition("ST_AUCTION_NOT_FOUND")
			:AddTransition("ST_POSTING")
			:AddTransition("ST_INIT")
			:AddEventTransition("EV_AUCTION_FOUND", "ST_AUCTION_FOUND")
			:AddEventTransition("EV_AUCTION_NOT_FOUND", "ST_AUCTION_NOT_FOUND")
			:AddEventTransition("EV_DO_POST", "ST_POSTING")
			:AddEvent("EV_AUCTION_SELECTION_CHANGED", function(context)
				assert(context.scanFrame)
				local selection = context.scanFrame:GetElement("auctions"):GetSelection()
				if not selection then
					return
				end
				if selection:IsSubRow() then
					if TSM.UI.AuctionUI.StartingScan(L["Browse"]) then
						return "ST_FINDING_AUCTION"
					end
				elseif select(2, context.auctionScan:GetProgress()) then
					-- resume the scan to search for the item
					assert(context.pausePending == nil)
					context.pausePending = false
					context.auctionScan:SetPaused(false)
					return "ST_UPDATING_SCAN_PROGRESS"
				else
					return "ST_RESULTS"
				end
			end)
			:AddEvent("EV_POST_BUTTON_CLICK", function(context)
				wipe(context.postContextTemp)
				private.PopulatePostContextFromRow(context.postContextTemp, context.scanFrame:GetElement("auctions"):GetSelection())
				private.PostDialogShow(context.scanFrame:GetBaseElement(), context.postContextTemp)
			end)
			:AddEvent("EV_RESCAN_CLICKED", function(context)
				if context.scanFrame then
					local viewContainer = context.scanFrame:GetParentElement()
					viewContainer:SetPath("selection", true)
					viewContainer:SetPath("scan", true)
					context.scanFrame = viewContainer:GetElement("scan")
					local name = context.searchContext:GetName()
					assert(name)
					context.scanFrame:GetElement("searchFrame.filterInput")
						:SetValue(name)
					context.scanFrame:GetElement("searchFrame.rescanBtn")
						:SetDisabled(name == L["Gathering Search"])
				end
				return "ST_INIT", context.searchContext
			end)
			:AddEvent("EV_SCAN_FRAME_HIDDEN", function(context)
				context.scanFrame = nil
				context.findAuction = nil
				return "ST_RESULTS"
			end)
			:AddEvent("EV_PAUSE_RESUME_CLICKED", function(context)
				context.findAuction = nil
				context.scanFrame:GetElement("auctions"):SetSelection(nil)
				return "ST_RESULTS"
			end)
		)
		:AddState(FSM.NewState("ST_AUCTION_FOUND")
			:SetOnEnter(function(context, result)
				TSM.UI.AuctionUI.EndedScan(L["Browse"])
				local selection = context.scanFrame:GetElement("auctions"):GetSelection()
				-- update the selection in case the result rows changed
				if context.findHash == selection:GetHashes() then
					context.findAuction = selection
				end
				local itemString = context.findAuction:GetItemString()
				local maxQuantity = context.searchContext:GetMaxCanBuy(itemString)
				if Environment.IsRetail() then
					local maxCommodity = context.findAuction:IsCommodity() and context.findAuction:GetResultRow():GetMaxQuantities()
					local numCanBuy = min(maxCommodity or result, maxQuantity or math.huge)
					context.findResult = numCanBuy > 0
					context.numFound = numCanBuy
					context.maxQuantity = maxCommodity or 1
					context.defaultBuyQuantity = maxQuantity and min(numCanBuy, maxQuantity) or 1
				else
					context.findResult = result
					context.numFound = min(#result, maxQuantity and Math.Ceil(maxQuantity / context.findAuction:GetQuantities()) or math.huge)
					context.maxQuantity = maxQuantity or 1
					context.defaultBuyQuantity = context.numFound
				end
				assert(context.numBought == 0 and context.numBid == 0 and context.numConfirmed == 0)
				return "ST_BUYING"
			end)
			:AddTransition("ST_BUYING")
		)
		:AddState(FSM.NewState("ST_AUCTION_NOT_FOUND")
			:SetOnEnter(function(context)
				context.scanFrame:GetBaseElement():HideDialog()
				TSM.UI.AuctionUI.EndedScan(L["Browse"])
				local selection = context.scanFrame:GetElement("auctions"):GetSelection()
				if not selection or not selection:IsSubRow() then
					return "ST_RESULTS"
				end
				-- update the selection in case the result rows changed
				if context.findHash == selection:GetHashes() then
					context.findAuction = selection
				end
				local _, rawLink = context.findAuction:GetLinks()
				context.findAuction:GetResultRow():RemoveSubRow(context.findAuction)
				context.scanFrame:GetElement("auctions"):UpdateData()
				Log.PrintfUser(L["Failed to find auction for %s, so removing it from the results."], rawLink)
				return "ST_RESULTS"
			end)
			:AddTransition("ST_RESULTS")
		)
		:AddState(FSM.NewState("ST_BUYING")
			:SetOnEnter(function(context, numToRemove)
				if numToRemove then
					-- remove the one we just bought
					local itemString = context.findAuction:GetItemString()
					assert(itemString)
					context.findAuction:DecrementQuantity(numToRemove)
					context.searchContext:OnBuy(itemString, context.lastBuyQuantity)
					context.scanFrame:GetElement("auctions"):UpdateData()
					context.findAuction = context.scanFrame and context.scanFrame:GetElement("auctions"):GetSelection()
					if context.findAuction and not context.findAuction:IsSubRow() then
						context.findAuction = nil
					else
						local maxQuantity = context.searchContext:GetMaxCanBuy(itemString)
						if maxQuantity then
							if Environment.HasFeature(Environment.FEATURES.AH_STACKS) and context.findAuction then
								maxQuantity = maxQuantity / context.findAuction:GetQuantities()
							end
							context.defaultBuyQuantity = min(context.defaultBuyQuantity, maxQuantity)
						end
					end
				end
				local selection = context.scanFrame and context.scanFrame:GetElement("auctions"):GetSelection()
				if selection and not selection:IsSubRow() then
					selection = nil
				end
				local itemString, isPlayer, isAltPlayer = nil, false, false
				if selection then
					assert(selection:IsSubRow())
					itemString = selection:GetItemString()
					local ownerStr = selection and selection:GetOwnerInfo() or nil
					isPlayer = PlayerInfo.IsPlayer(ownerStr)
					isAltPlayer = PlayerInfo.IsPlayer(ownerStr, true, true, true)
				end
				local auctionSelected = selection and context.findHash == selection:GetHashes()
				local numCanBuy = not auctionSelected and 0 or (context.numFound - context.numBought - context.numBid)
				local numConfirming = context.numBought + context.numBid - context.numConfirmed
				local canPost = selection and private.GetBagQuantity(itemString) > 0 and numConfirming == 0
				local progressText = nil
				if numConfirming == 0 and (numCanBuy == 0 and (not isAltPlayer or context.scanFrame:GetElement("auctions"):GetSelection() ~= context.findAuction)) then
					-- we're done buying and confirming this batch
					return "ST_RESULTS", true
				elseif isAltPlayer and canPost then
					progressText = Environment.IsRetail() and isPlayer and L["Cancel or Post"] or L["Post"]
				elseif isPlayer then
					progressText = Environment.IsRetail() and L["Cancel Auction"] or L["Select an Auction to Buy"]
				elseif numConfirming == 0 then
					-- we can still buy more
					progressText = format(isAltPlayer and Environment.IsRetail() and L["Cancel %d / %d"] or L["Buy %d / %d"], context.numBought + context.numBid + 1, context.numFound)
				elseif numCanBuy == 0 then
					-- we're just confirming
					progressText = format(L["Confirming %d / %d"], context.numConfirmed + 1, context.numFound)
				else
					-- we can buy more while confirming
					progressText = format(L["Buy %d / %d (Confirming %d / %d)"], context.numBought + context.numBid + 1, context.numFound, context.numConfirmed + 1, context.numFound)
				end
				local _, isPaused = context.auctionScan:GetProgress()
				if isPaused then
					progressText = L["Scan Paused"].." | "..progressText
				end
				context.progress = context.numConfirmed / (context.numFound > 0 and context.numFound or 1)
				context.progressText = progressText
				context.progressPaused = false
				context.postDisabled = not canPost
				if numCanBuy == 0 or isAltPlayer or numConfirming > 0 then
					context.bidDisabled = true
					context.buyoutDisabled = true
					context.cancelShown = isPlayer and Environment.IsRetail()
					if context.cancelShown then
						AuctionTracking.QueryOwnedAuctions()
					end
				else
					context.bidDisabled = not selection or not AuctionScan.CanBid(selection)
					context.buyoutDisabled = not selection or not AuctionScan.CanBuyout(selection, context.auctionScan)
					context.cancelShown = false
				end
				UpdateScanFrame(context)
			end)
			:AddTransition("ST_BUYING")
			:AddTransition("ST_UPDATING_SCAN_PROGRESS")
			:AddTransition("ST_BUY_CONFIRMATION")
			:AddTransition("ST_BID_CONFIRMATION")
			:AddTransition("ST_CANCELING")
			:AddTransition("ST_POSTING")
			:AddTransition("ST_PLACING_BUY")
			:AddTransition("ST_PLACING_BID")
			:AddTransition("ST_RESULTS")
			:AddTransition("ST_INIT")
			:AddEventTransition("EV_AUCTION_SELECTION_CHANGED", "ST_BUYING")
			:AddEventTransition("EV_BUYOUT_CLICKED", "ST_BUY_CONFIRMATION")
			:AddEventTransition("EV_BID_CLICKED", "ST_BID_CONFIRMATION")
			:AddEventTransition("EV_CANCEL_CLICKED", "ST_CANCELING")
			:AddEventTransition("EV_DO_POST", "ST_POSTING")
			:AddEvent("EV_CONFIRMED", function(context, isBuy, quantity)
				return isBuy and "ST_PLACING_BUY" or "ST_PLACING_BID", quantity
			end)
			:AddEvent("EV_POST_BUTTON_CLICK", function(context)
				wipe(context.postContextTemp)
				private.PopulatePostContextFromRow(context.postContextTemp, context.scanFrame:GetElement("auctions"):GetSelection())
				private.PostDialogShow(context.scanFrame:GetBaseElement(), context.postContextTemp)
			end)
			:AddEvent("EV_RESCAN_CLICKED", function(context)
				if context.scanFrame then
					local viewContainer = context.scanFrame:GetParentElement()
					viewContainer:SetPath("selection", true)
					viewContainer:SetPath("scan", true)
					context.scanFrame = viewContainer:GetElement("scan")
					local name = context.searchContext:GetName()
					assert(name)
					context.scanFrame:GetElement("searchFrame.filterInput")
						:SetValue(name)
					context.scanFrame:GetElement("searchFrame.rescanBtn")
						:SetDisabled(name == L["Gathering Search"])
				end
				return "ST_INIT", context.searchContext
			end)
			:AddEvent("EV_SCAN_FRAME_HIDDEN", function(context)
				context.scanFrame = nil
				context.findAuction = nil
				return "ST_RESULTS"
			end)
			:AddEvent("EV_PAUSE_RESUME_CLICKED", function(context)
				context.scanFrame:GetElement("auctions"):SetSelection(nil)
				context.findAuction = nil
				assert(context.pausePending == nil)
				context.pausePending = false
				context.auctionScan:SetPaused(false)
				return "ST_UPDATING_SCAN_PROGRESS"
			end)
			:AddEvent("EV_AUCTION_ID_UPDATE", function(context, oldAuctionId, newAuctionId, newResultInfo)
				if not context.findAuction or select(2, context.findAuction:GetListingInfo()) ~= oldAuctionId then
					return
				end
				context.findAuction:UpdateResultInfo(newAuctionId, newResultInfo)
				context.findHash = context.findAuction:GetHashes()
			end)
			:AddEvent("EV_BAG_UPDATE_DELAYED", function(context)
				local postContext = nil
				local selection = context.scanFrame:GetElement("auctions"):GetSelection()
				if selection then
					wipe(context.postContextTemp)
					private.PopulatePostContextFromRow(context.postContextTemp, selection)
					postContext = context.postContextTemp
				else
					postContext = context.searchContext:GetPostContext()
				end
				local prevDisabled = context.postDisabled
				context.postDisabled = not postContext or private.GetBagQuantity(postContext.itemString) == 0
				context.scanFrame:GetElement("bottom.postBtn")
					:SetDisabled(context.postDisabled)
					:Draw()
				if not prevDisabled and context.postDisabled then
					-- hide any visible dialog in case the post dialog is visible
					context.scanFrame:GetBaseElement():HideDialog()
				end
			end)
		)
		:AddState(FSM.NewState("ST_BUY_CONFIRMATION")
			:SetOnEnter(function(context)
				local selection = context.scanFrame:GetElement("auctions"):GetSelection()
				local index = not Environment.IsRetail() and context.findResult[#context.findResult] or nil
				if TSM.UI.AuctionUI.BuyUtil.ShowConfirmation(context.scanFrame, selection, true, context.numConfirmed + 1, context.defaultBuyQuantity, context.maxQuantity, private.FSMConfirmationCallback, context.auctionScan, index, false, context.searchContext) then
					return "ST_BUYING"
				else
					return "ST_PLACING_BUY", selection:GetQuantities()
				end
			end)
			:AddTransition("ST_PLACING_BUY")
			:AddTransition("ST_BUYING")
		)
		:AddState(FSM.NewState("ST_BID_CONFIRMATION")
			:SetOnEnter(function(context)
				local selection = context.scanFrame:GetElement("auctions"):GetSelection()
				local index = not Environment.IsRetail() and context.findResult[#context.findResult] or nil
				if TSM.UI.AuctionUI.BuyUtil.ShowConfirmation(context.scanFrame, selection, false, context.numConfirmed + 1, context.defaultBuyQuantity, context.maxQuantity, private.FSMConfirmationCallback, context.auctionScan, index, false, context.searchContext) then
					return "ST_BUYING"
				else
					local quantity = selection:GetQuantities()
					return "ST_PLACING_BID", quantity
				end
			end)
			:AddTransition("ST_PLACING_BID")
			:AddTransition("ST_BUYING")
		)
		:AddState(FSM.NewState("ST_PLACING_BUY")
			:SetOnEnter(function(context, quantity)
				local index = not Environment.IsRetail() and tremove(context.findResult, #context.findResult) or nil
				assert(Environment.IsRetail() or index)
				-- buy the auction
				local buyout = context.findAuction:GetBuyouts()
				if not Environment.IsRetail() and buyout ~= select(10, GetAuctionItemInfo("list", index)) then
					-- The list of auctions changed, so rescan
					local _, rawLink = context.findAuction:GetLinks()
					Log.PrintfUser(L["Failed to buy auction of %s."], rawLink)
					return "ST_RESULTS"
				end
				local future = context.auctionScan:PlaceBidOrBuyout(index, buyout, context.findAuction, quantity)
				if future then
					future:SetScript("OnDone", private.FSMFutureOnDone)
					assert(not context.pendingFuture)
					context.pendingFuture = future
					context.lastBuyQuantity = quantity
					context.lastBuyIndex = index
					context.numBought = context.numBought + (Environment.HasFeature(Environment.FEATURES.AH_STACKS) and 1 or quantity)
					UpdateScanFrame(context)
				else
					local _, rawLink = context.findAuction:GetLinks()
					Log.PrintfUser(L["Failed to buy auction of %s."], rawLink)
					return "ST_BUYING"
				end
			end)
			:AddTransition("ST_BUYING")
			:AddTransition("ST_RESULTS")
			:AddTransition("ST_INIT")
			:AddEvent("EV_FUTURE_DONE", function(context)
				assert(context.pendingFuture)
				local result = context.pendingFuture:GetValue()
				context.pendingFuture = nil
				if result then
					MailTracking.RecordAuctionBuyout(ItemString.ToLevel(context.findAuction:GetItemString()), context.lastBuyQuantity)
					context.numConfirmed = context.numConfirmed + (Environment.HasFeature(Environment.FEATURES.AH_STACKS) and 1 or context.lastBuyQuantity)
					return "ST_BUYING", context.lastBuyQuantity
				else
					local _, rawLink = context.findAuction:GetLinks()
					Log.PrintfUser(L["Failed to buy auction of %s."], rawLink)
					context.numBought = context.numBought - (Environment.HasFeature(Environment.FEATURES.AH_STACKS) and 1 or context.lastBuyQuantity)
					if not Environment.IsRetail() then
						tinsert(context.findResult, context.lastBuyIndex)
					end
					context.lastBuyQuantity = nil
					context.lastBuyIndex = nil
					return "ST_BUYING"
				end
			end)
		)
		:AddState(FSM.NewState("ST_PLACING_BID")
			:SetOnEnter(function(context, quantity)
				local index = not Environment.IsRetail() and tremove(context.findResult, #context.findResult) or nil
				assert(Environment.IsRetail() or index)
				-- bid on the auction
				local result, future = context.auctionScan:PrepareForBidOrBuyout(index, context.findAuction, false, quantity)
				assert(not future)
				future = result and context.auctionScan:PlaceBidOrBuyout(index, context.findAuction:GetRequiredBid(), context.findAuction, quantity)
				if future then
					future:SetScript("OnDone", private.FSMFutureOnDone)
					assert(not context.pendingFuture)
					context.pendingFuture = future
					context.lastBuyQuantity = quantity
					context.lastBuyIndex = index
					context.numBid = context.numBid + (Environment.HasFeature(Environment.FEATURES.AH_STACKS) and 1 or quantity)
					UpdateScanFrame(context)
				else
					local _, rawLink = context.findAuction:GetLinks()
					Log.PrintfUser(L["Failed to bid on auction of %s."], rawLink)
					return "ST_BUYING"
				end
			end)
			:AddTransition("ST_BUYING")
			:AddTransition("ST_INIT")
			:AddEvent("EV_FUTURE_DONE", function(context)
				assert(context.pendingFuture)
				local result = context.pendingFuture:GetValue()
				context.pendingFuture = nil
				if result then
					MailTracking.RecordAuctionBuyout(ItemString.ToLevel(context.findAuction:GetItemString()), context.lastBuyQuantity)
					context.numConfirmed = context.numConfirmed + (Environment.HasFeature(Environment.FEATURES.AH_STACKS) and 1 or context.lastBuyQuantity)
					return "ST_BUYING", context.lastBuyQuantity
				else
					local _, rawLink = context.findAuction:GetLinks()
					Log.PrintfUser(L["Failed to buy auction of %s."], rawLink)
					context.numBid = context.numBid - (Environment.HasFeature(Environment.FEATURES.AH_STACKS) and 1 or context.lastBuyQuantity)
					if not Environment.IsRetail() then
						tinsert(context.findResult, context.lastBuyIndex)
					end
					context.lastBuyQuantity = nil
					context.lastBuyIndex = nil
					return "ST_BUYING"
				end
			end)
		)
		:AddState(FSM.NewState("ST_CANCELING")
			:SetOnEnter(function(context)
				assert(Environment.IsRetail() and context.findAuction and context.findAuction:IsSubRow())
				local _, auctionId = context.findAuction:GetListingInfo()
				Log.Info("Canceling (auctionId=%d)", auctionId)
				local future = AuctionHouseWrapper.CancelAuction(auctionId)
				if future then
					future:SetScript("OnDone", private.FSMFutureOnDone)
					assert(not context.pendingFuture)
					context.pendingFuture = future
					UpdateScanFrame(context)
				else
					Log.PrintUser(L["Failed to cancel auction due to the auction house being busy. Ensure no other addons are scanning the AH and try again."])
					return "ST_BUYING"
				end
			end)
			:AddTransition("ST_BUYING")
			:AddTransition("ST_INIT")
			:AddEvent("EV_FUTURE_DONE", function(context)
				assert(context.pendingFuture)
				local result = context.pendingFuture:GetValue()
				context.pendingFuture = nil
				if result then
					context.findAuction:GetResultRow():RemoveSubRow(context.findAuction)
					context.scanFrame:GetElement("auctions"):UpdateData()
				else
					Log.PrintUser(L["Failed to cancel auction due to the auction house being busy. Ensure no other addons are scanning the AH and try again."])
				end
				return "ST_BUYING"
			end)
		)
		:AddState(FSM.NewState("ST_POSTING")
			:SetOnEnter(function(context, itemString, postBag, postSlot, postTime, stackSize, bid, buyout, num)
				local future = nil
				if Environment.IsRetail() then
					bid = Math.Round(bid, COPPER_PER_SILVER)
					buyout = Math.Round(buyout, COPPER_PER_SILVER)
					private.itemLocation:Clear()
					private.itemLocation:SetBagAndSlot(postBag, postSlot)
					local commodityStatus = C_AuctionHouse.GetItemCommodityStatus(private.itemLocation)
					if commodityStatus == Enum.ItemCommodityStatus.Item then
						future = AuctionHouseWrapper.PostItem(private.itemLocation, postTime, stackSize, (buyout == 0 or bid < buyout) and bid or nil, buyout > 0 and buyout or nil)
					elseif commodityStatus == Enum.ItemCommodityStatus.Commodity then
						future = AuctionHouseWrapper.PostCommodity(private.itemLocation, postTime, stackSize, buyout)
					else
						error("Unknown commodity status: "..tostring(itemString))
					end
				else
					if ItemString.IsPet(itemString) then
						stackSize = 1
						num = 1
					end
					if private.perItem then
						bid = bid * stackSize
						buyout = buyout * stackSize
					end
					future = AuctionHouseWrapper.PostAuction(postBag, postSlot, bid, buyout, postTime, stackSize, num)
				end
				if future then
					future:SetScript("OnDone", private.FSMFutureOnDone)
					assert(not context.pendingFuture)
					context.pendingFuture = future
					UpdateScanFrame(context)
				else
					Log.PrintUser(L["Failed to post auction due to the auction house being busy. Ensure no other addons are scanning the AH and try again."])
					return "ST_RESULTS"
				end
			end)
			:AddTransition("ST_RESULTS")
			:AddTransition("ST_INIT")
			:AddEvent("EV_FUTURE_DONE", function(context)
				assert(context.pendingFuture)
				local result = context.pendingFuture:GetValue()
				context.pendingFuture = nil
				if result then
					AuctionTracking.QueryOwnedAuctions()
				else
					Log.PrintUser(L["Failed to post auction due to the auction house being busy. Ensure no other addons are scanning the AH and try again."])
				end
				return "ST_RESULTS"
			end)
		)
		:AddDefaultEvent("EV_START_SCAN", function(context, searchContext)
			return "ST_INIT", searchContext
		end)
		:AddDefaultEvent("EV_SCAN_FRAME_SHOWN", function(context, scanFrame)
			context.scanFrame = scanFrame
			UpdateScanFrame(context)
			context.scanFrame:GetElement("auctions")
				:UpdateData(true)
				:ExpandSingleResult()
		end)
		:AddDefaultEvent("EV_SCAN_FRAME_HIDDEN", function(context)
			context.scanFrame = nil
			context.findAuction = nil
		end)
		:AddDefaultEvent("EV_CAN_SEND_AUCTION_QUERY_UPDATE", function(context, canSendAuctionQuery)
			context.canSendAuctionQuery = canSendAuctionQuery
			if context.scanFrame then
				UpdateScanFrame(context)
			end
		end)
		:AddDefaultEventTransition("EV_AUCTION_HOUSE_CLOSED", "ST_INIT")
		:AddDefaultEventTransition("EV_SCAN_BACK_BUTTON_CLICKED", "ST_INIT")
		:Init("ST_INIT", fsmContext)
end

function private.FSMAuctionScanOnProgressUpdate(auctionScan)
	private.fsm:ProcessEvent("EV_SCAN_PROGRESS_UPDATE")
end

function private.FSMScanCallback(success)
	if success then
		private.fsm:ProcessEvent("EV_SCAN_COMPLETE")
	else
		private.fsm:ProcessEvent("EV_SCAN_FAILED")
	end
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

function private.PopulatePostContextFromRow(postContext, row)
	postContext.baseItemString = row:GetBaseItemString()
	postContext.itemString = row:GetItemString()
	postContext.ownerStr = row:GetOwnerInfo()
	local _, _, currentBid = row:GetBidInfo()
	postContext.currentBid = currentBid
	postContext.displayedBid, postContext.itemDisplayedBid = row:GetDisplayedBids()
	postContext.buyout, postContext.itemBuyout = row:GetBuyouts()
	postContext.quantity = row:GetQuantities()
end

function private.FSMFutureOnDone()
	private.fsm:ProcessEvent("EV_FUTURE_DONE")
end
