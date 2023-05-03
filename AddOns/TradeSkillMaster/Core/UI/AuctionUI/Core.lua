-- ------------------------------------------------------------------------------ --
--                                TradeSkillMaster                                --
--                          https://tradeskillmaster.com                          --
--    All Rights Reserved - Detailed license information included with addon.     --
-- ------------------------------------------------------------------------------ --

local TSM = select(2, ...) ---@type TSM
local AuctionUI = TSM.UI:NewPackage("AuctionUI")
local Environment = TSM.Include("Environment")
local L = TSM.Include("Locale").GetTable()
local Delay = TSM.Include("Util.Delay")
local Log = TSM.Include("Util.Log")
local Money = TSM.Include("Util.Money")
local ScriptWrapper = TSM.Include("Util.ScriptWrapper")
local Theme = TSM.Include("Util.Theme")
local Settings = TSM.Include("Service.Settings")
local ItemLinked = TSM.Include("Service.ItemLinked")
local DefaultUI = TSM.Include("Service.DefaultUI")
local UIElements = TSM.Include("UI.UIElements")
local UIUtils = TSM.Include("UI.UIUtils")
local LibAHTab = LibStub("LibAHTab-1-0")
local private = {
	settings = nil,
	topLevelPages = {},
	frame = nil,
	hasShown = false,
	isSwitching = false,
	scanningPage = nil,
	updateCallbacks = {},
	defaultFrame = nil,
}
local MIN_FRAME_SIZE = { width = 750, height = 450 }
local AH_TAB_ID = "TSM_AH_TAB"



-- ============================================================================
-- Module Functions
-- ============================================================================

function AuctionUI.OnInitialize()
	private.settings = Settings.NewView()
		:AddKey("global", "auctionUIContext", "showDefault")
		:AddKey("global", "auctionUIContext", "frame")
		:AddKey("global", "coreOptions", "protectAuctionHouse")
	UIParent:UnregisterEvent("AUCTION_HOUSE_SHOW")
	DefaultUI.RegisterAuctionHouseVisibleCallback(private.AuctionFrameInit, true)
	DefaultUI.RegisterAuctionHouseVisibleCallback(private.HideAuctionFrame, false)
	ItemLinked.RegisterCallback(private.ItemLinkedCallback, true)
	local loadTimer = Delay.CreateTimer("AUCTION_UI_LOAD_BLIZZ", function() LoadAddOn(Environment.IsRetail() and "Blizzard_AuctionHouseUI" or "Blizzard_AuctionUI") end)
	loadTimer:RunForTime(1)
end

function AuctionUI.OnDisable()
	if private.frame then
		-- hide the frame
		private.frame:Hide()
		assert(not private.frame)
	end
end

function AuctionUI.RegisterTopLevelPage(name, callback, itemLinkedHandler)
	tinsert(private.topLevelPages, { name = name, callback = callback, itemLinkedHandler = itemLinkedHandler })
end

function AuctionUI.StartingScan(pageName)
	if private.scanningPage and private.scanningPage ~= pageName then
		Log.PrintfUser(L["A scan is already in progress. Please stop that scan before starting another one."])
		return false
	end
	private.scanningPage = pageName
	Log.Info("Starting scan %s", pageName)
	if private.frame then
		private.frame:SetPulsingNavButton(private.scanningPage)
	end
	for _, callback in ipairs(private.updateCallbacks) do
		callback()
	end
	return true
end

function AuctionUI.EndedScan(pageName)
	if private.scanningPage == pageName then
		Log.Info("Ended scan %s", pageName)
		private.scanningPage = nil
		if private.frame then
			private.frame:SetPulsingNavButton()
		end
		for _, callback in ipairs(private.updateCallbacks) do
			callback()
		end
	end
end

function AuctionUI.SetOpenPage(name)
	private.frame:SetSelectedNavButton(name, true)
end

function AuctionUI.IsPageOpen(name)
	if not private.frame then
		return false
	end
	return private.frame:GetSelectedNavButton() == name
end

function AuctionUI.IsScanning()
	return private.scanningPage and true or false
end

function AuctionUI.RegisterUpdateCallback(callback)
	tinsert(private.updateCallbacks, callback)
end

function AuctionUI.IsVisible()
	return private.frame and true or false
end

function AuctionUI.ParseBid(value)
	local wasRawNumber = tonumber(value) and true or false
	value = Money.FromString(value) or tonumber(value)
	if not value then
		return nil, L["The price must contain g/s/c labels. For example '1g 2s' means 1 gold and 2 silver."]
	end
	if not Environment.HasFeature(Environment.FEATURES.AH_COPPER) and value % COPPER_PER_SILVER ~= 0 then
		if wasRawNumber then
			return nil, L["The price must contain g/s/c labels. For example '1g 2s' means 1 gold and 2 silver."]
		else
			return nil, L["The AH does not support specifying a copper value (only gold and silver)."]
		end
	end
	if value <= 0 then
		return nil, L["The value must be greater than 0."]
	end
	if value > MAXIMUM_BID_PRICE then
		return nil, L["The value was greater than the maximum allowed auction house price."]
	end
	return value
end

function AuctionUI.ParseBuyout(value, isCommodity)
	local wasRawNumber = tonumber(value) and true or false
	value = Money.FromString(value) or tonumber(value)
	if not value then
		return nil, L["The price must contain g/s/c labels. For example '1g 2s' means 1 gold and 2 silver."]
	end
	if not Environment.HasFeature(Environment.FEATURES.AH_COPPER) and value % COPPER_PER_SILVER ~= 0 then
		if wasRawNumber then
			return nil, L["The price must contain g/s/c labels. For example '1g 2s' means 1 gold and 2 silver."]
		else
			return nil, L["The AH does not support specifying a copper value (only gold and silver)."]
		end
	end
	if isCommodity then
		if value <= 0 then
			return nil, L["The value must be greater than 0."]
		end
	else
		if value < 0 then
			return nil, L["The value must be greater than or equal of 0."]
		end
	end
	if value > MAXIMUM_BID_PRICE then
		return nil, L["The value was greater than the maximum allowed auction house price."]
	end
	return value
end



-- ============================================================================
-- Main Frame
-- ============================================================================

local function NoOp()
	-- do nothing - what did you expect?
end

function private.AuctionFrameInit()
	if GameLimitedMode_IsActive() then
		return
	end
	local tabTemplateName = nil
	if Environment.IsRetail() then
		private.defaultFrame = AuctionHouseFrame
		tabTemplateName = "AuctionHouseFrameTabTemplate"
	else
		private.defaultFrame = AuctionFrame
		tabTemplateName = "AuctionTabTemplate"
	end
	if not private.hasShown then
		private.hasShown = true
		if Environment.IsRetail() then
			LibAHTab:CreateTab(AH_TAB_ID, CreateFrame("Frame"), Theme.GetColor("INDICATOR_ALT"):ColorText("TSM"))
			ScriptWrapper.Set(LibAHTab:GetButton(AH_TAB_ID), "OnClick", private.TSMTabOnClick)
			AuctionHouseFrame:HookScript("OnShow", function(self)
				self:UnregisterEvent("AUCTION_HOUSE_AUCTION_CREATED")
				self:UnregisterEvent("AUCTION_HOUSE_SHOW_NOTIFICATION")
				self:UnregisterEvent("AUCTION_HOUSE_SHOW_FORMATTED_NOTIFICATION")
				self:UnregisterEvent("AUCTION_HOUSE_SHOW_COMMODITY_WON_NOTIFICATION")
			end)
		else
			local tabId = private.defaultFrame.numTabs + 1
			local tab = CreateFrame("Button", "AuctionFrameTab"..tabId, private.defaultFrame, tabTemplateName)
			tab:Hide()
			tab:SetID(tabId)
			tab:SetText(Theme.GetColor("INDICATOR_ALT"):ColorText("TSM"))
			tab:SetNormalFontObject(GameFontHighlightSmall)
			tab:SetPoint("LEFT", _G["AuctionFrameTab"..tabId - 1], "RIGHT", -8, 0)
			tab:Show()
			PanelTemplates_SetNumTabs(private.defaultFrame, tabId)
			PanelTemplates_EnableTab(private.defaultFrame, tabId)
			ScriptWrapper.Set(tab, "OnClick", private.TSMTabOnClick)
		end
	end
	if private.settings.showDefault then
		if not Environment.IsRetail() then
			UIParent_OnEvent(UIParent, "AUCTION_HOUSE_SHOW")
		end
	else
		if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
			local origCloseAuctionHouse = C_AuctionHouse.CloseAuctionHouse
			C_AuctionHouse.CloseAuctionHouse = NoOp
			HideUIPanel(private.defaultFrame)
			C_AuctionHouse.CloseAuctionHouse = origCloseAuctionHouse
		end
		PlaySound(SOUNDKIT.AUCTION_WINDOW_OPEN)
		private.ShowAuctionFrame()
	end
end

function private.ShowAuctionFrame()
	if private.frame then
		return
	end
	private.frame = private.CreateMainFrame()
	private.frame:Show()
	private.frame:Draw()
	for _, callback in ipairs(private.updateCallbacks) do
		callback()
	end
end

function private.HideAuctionFrame()
	if not private.frame then
		return
	end
	private.frame:Hide()
	assert(not private.frame)
	for _, callback in ipairs(private.updateCallbacks) do
		callback()
	end
end

function private.CreateMainFrame()
	UIUtils.AnalyticsRecordPathChange("auction")
	local frame = UIElements.New("LargeApplicationFrame", "base")
		:SetParent(UIParent)
		:SetSettingsContext(private.settings, "frame")
		:SetMinResize(MIN_FRAME_SIZE.width, MIN_FRAME_SIZE.height)
		:SetStrata("HIGH")
		:SetProtected(private.settings.protectAuctionHouse)
		:AddPlayerGold()
		:AddAppStatusIcon()
		:AddSwitchButton(private.SwitchBtnOnClick)
		:SetScript("OnHide", private.BaseFrameOnHide)
	for _, info in ipairs(private.topLevelPages) do
		frame:AddNavButton(info.name, info.callback)
	end
	local whatsNewDialog = TSM.UI.WhatsNew.GetDialog()
	if whatsNewDialog then
		frame:ShowDialogFrame(whatsNewDialog)
	end
	return frame
end



-- ============================================================================
-- Local Script Handlers
-- ============================================================================

function private.BaseFrameOnHide(frame)
	assert(frame == private.frame)
	frame:Release()
	private.frame = nil
	if not private.isSwitching then
		PlaySound(SOUNDKIT.AUCTION_WINDOW_CLOSE)
		if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
			C_AuctionHouse.CloseAuctionHouse()
		else
			CloseAuctionHouse()
		end
	end
	UIUtils.AnalyticsRecordClose("auction")
end

function private.SwitchBtnOnClick(button)
	private.isSwitching = true
	private.settings.showDefault = true
	private.HideAuctionFrame()
	UIParent_OnEvent(UIParent, "AUCTION_HOUSE_SHOW")
	private.isSwitching = false
end

function private.TSMTabOnClick()
	private.settings.showDefault = false
	if not Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		ClearCursor()
		ClickAuctionSellItemButton(AuctionsItemButton, "LeftButton")
	end
	ClearCursor()
	-- Replace CloseAuctionHouse() with a no-op while hiding the AH frame so we don't stop interacting with the AH NPC
	if Environment.HasFeature(Environment.FEATURES.C_AUCTION_HOUSE) then
		local origCloseAuctionHouse = C_AuctionHouse.CloseAuctionHouse
		C_AuctionHouse.CloseAuctionHouse = NoOp
		HideUIPanel(private.defaultFrame)
		C_AuctionHouse.CloseAuctionHouse = origCloseAuctionHouse
	else
		local origCloseAuctionHouse = CloseAuctionHouse
		CloseAuctionHouse = NoOp
		AuctionFrame_Hide()
		CloseAuctionHouse = origCloseAuctionHouse
	end
	private.ShowAuctionFrame()
end

function private.ItemLinkedCallback(name, itemLink)
	if not private.frame then
		return
	end
	local path = private.frame:GetSelectedNavButton()
	for _, info in ipairs(private.topLevelPages) do
		if info.name == path then
			if info.itemLinkedHandler(name, itemLink) then
				return true
			else
				return
			end
		end
	end
	error("Invalid frame path")
end
